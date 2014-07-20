use v6;

use Test;

=begin pod

This file was derived from the perl5 CPAN module Perl6::Rules,
version 0.3 (12 Apr 2004), file t/litvar.t.

It has (hopefully) been, and should continue to be, updated to
be valid perl6.

=end pod

plan 24;

# L<S05/Variable (non-)interpolation/The default way in which the engine handles a scalar>

my $var = "a*b";
my @var = <a b ab c>;
my $aref = \@var;


# SCALARS

# just document ticket test below
ok($var ~~ m/$var/, 'Simple scalar interpolation');
ok("zzzzzz{$var}zzzzzz" ~~ m/$var/, 'Nested scalar interpolation');
ok(!( "aaaaab" ~~ m/$var/ ), 'Rulish scalar interpolation');

ok(!('a0' ~~ m/$aref[0]/), 'Array ref stringifies before matching'); #OK
#?niecza todo
ok('a b ab c0' ~~ m/$aref[0]/, 'Array ref stringifies before matching'); #OK
ok('a0' ~~ m/@$aref[0]/, 'Array deref ignores 0');                 #OK
ok('bx0' ~~ m/@$aref.[0]/, 'Array deref ignores dot 0');           #OK
ok('c0' ~~ m/@var[0]/, 'Array ignores 0');                         #OK


# ARRAYS
# L<S05/Variable (non-)interpolation/An interpolated array:>

ok("a" ~~ m/@var/, 'Simple array interpolation (a)');
ok("b" ~~ m/@var/, 'Simple array interpolation (b)');
ok("c" ~~ m/@var/, 'Simple array interpolation (c)');
ok(!( "d" ~~ m/@var/ ), 'Simple array interpolation (d)');
ok("ddddaddddd" ~~ m/@var/, 'Nested array interpolation (a)');

ok("abca" ~~ m/^@var+$/, 'Multiple array matching');
ok(!( "abcad" ~~ m/^@var+$/ ), 'Multiple array non-matching');

is("abc" ~~ m/ @var /,     'ab', 'Array using implicit junctive semantics');
is("abc" ~~ m/ | @var /,   'ab', 'Array using explicit junctive semantics');
#?niecza todo "sequential semantics NYI"
is("abc" ~~ m/ || @var /,  'a',  'Array using explicit sequential semantics');

# contextializer $( )

# RT 115298
ok 'foobar' ~~ /$( $_ )/, '$( $_ ) will match';
is $/, 'foobar', '... $( $_ ) matched entire string';
is 'foobar' ~~ /$( $_.substr(3) )/, 'bar', 'Contextualizer with functions calls';
is 'foobar' ~~ /@( <a b c o> )+/,   'ooba', '@( <a b c o> )+';

# RT #117091
{
    my $rex = 'rex';
    ok 'Rex' ~~ m:i/$rex/, 'can case-insensitive match against interpolated var';
    ok 'Rex' ~~ m:i/<$rex>/, 'can case-insensitive match against var in assertion';
}

done;

# vim: ft=perl6
