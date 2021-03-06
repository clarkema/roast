use v6;

#BEGIN %*ENV<PERL6_TEST_DIE_ON_FAIL> = 1;
use Test;

# bit/byte widths tested
my @endians = NativeEndian, LittleEndian, BigEndian;
my @byte-widths = 4,8;
my @bit-widths  = @byte-widths.map: * * 8;

# set up method data: byte-width, mask, write-uintX, read-uintX
my @methods = @bit-widths.map: {
    |($_ / 8, 1 +< $_ - 1, "write-num$_","read-num$_")
}

# values that should always yield a positive result with read-intX()
my @values = (
  0e0, 1e0, -1e0, 42e0, -42e0
);

plan (@methods / 4) * 2
   + @byte-widths * @values * 8
;

# run for all possible methods setting / returning unsigned values
for @methods -> $bytes, $mask, $write, $read {
  dies-ok { buf8."$write"(0,42) }, "does buf8 $write 0 42 die";

  subtest {
    plan 2 + @endians * 2;

    dies-ok { buf8.new."$write"(-1,42) },
      "does $write -1 42 die on uninited";
    dies-ok { buf8.new(255)."$write"(-1,42) },
      "does $write -1 42 die on inited";

    for @endians -> $endian {
      dies-ok { buf8.new."$write"(-1,42,$endian) },
        "does $write -1 42 $endian die on uninited";
      dies-ok { buf8.new(255)."$write"(-1,42,$endian) },
        "does $write -1 42 $endian die";
    }
  }, "did all possible negative offsets die";

  # run for a set or predetermined and random values
  for @values -> $value {
    
    # values to test against
    my \existing := buf8.new(0 xx (@byte-widths[*-1] + 8));
    my $elems    := existing.elems;

    # run for all possible offsets wrt 64-bit alignments
    for ^8 -> $offset {

      subtest {
        plan 3 + @endians * 3 + 3 + @endians * 3;

        # tests on existing buf
        is-deeply existing."$write"($offset,$value), Nil,
          "does existing $write $offset $value return Nil";
        is existing.elems, $elems,
          "did existing $write $offset $value not change size";
        is existing."$read"($offset), $value,
          "did existing $read $offset give $value";

        for @endians -> $endian {
          is-deeply existing."$write"($offset,$value,$endian), Nil,
            "does existing $write $offset $value $endian return Nil";
          is existing.elems, $elems,
            "did existing $write $offset $value $endian not change size";
          is existing."$read"($offset,$endian), $value,
            "did existing $read $offset $endian give $value";
        }

        # tests on new buf
        is-deeply (my $buf := buf8.new)."$write"($offset,$value), Nil,
          "does new $write $offset $value return Nil";
        is $buf.elems, $offset + $bytes,
          "did new $write $offset $value set size {$offset + $bytes}";
        is $buf."$read"($offset), $value,
          "did new $read $offset give $value";

        for @endians -> $endian {
          is-deeply (my $buf := buf8.new)."$write"($offset,$value,$endian), Nil,
            "does new $write $offset $value $endian return Nil";
          is $buf.elems, $offset + $bytes,
            "did new $write $offset $value $endian set size {$offset + $bytes}";
          is $buf."$read"($offset,$endian), $value,
            "did new $read $offset $endian give $value";
        }
      }, "did all tests pass for $write $offset $value";
    }
  }
}

# vim: ft=perl6 expandtab sw=4
