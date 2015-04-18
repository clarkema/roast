# Unicode normalization tests, generated from NormalizationTests.txt in the
# Unicode database by S15-normalization/test-gen.p6.

use Test;

plan 500;

ok Uni.new(0x1E0A).NFD.list ~~ (0x0044, 0x0307,), '1E0A -> 0044 0307';
ok Uni.new(0x1E0C).NFD.list ~~ (0x0044, 0x0323,), '1E0C -> 0044 0323';
ok Uni.new(0x1E0A, 0x0323).NFD.list ~~ (0x0044, 0x0323, 0x0307,), '1E0A 0323 -> 0044 0323 0307';
ok Uni.new(0x1E0C, 0x0307).NFD.list ~~ (0x0044, 0x0323, 0x0307,), '1E0C 0307 -> 0044 0323 0307';
ok Uni.new(0x0044, 0x0307, 0x0323).NFD.list ~~ (0x0044, 0x0323, 0x0307,), '0044 0307 0323 -> 0044 0323 0307';
ok Uni.new(0x0044, 0x0323, 0x0307).NFD.list ~~ (0x0044, 0x0323, 0x0307,), '0044 0323 0307 -> 0044 0323 0307';
ok Uni.new(0x1E0A, 0x031B).NFD.list ~~ (0x0044, 0x031B, 0x0307,), '1E0A 031B -> 0044 031B 0307';
ok Uni.new(0x1E0C, 0x031B).NFD.list ~~ (0x0044, 0x031B, 0x0323,), '1E0C 031B -> 0044 031B 0323';
ok Uni.new(0x1E0A, 0x031B, 0x0323).NFD.list ~~ (0x0044, 0x031B, 0x0323, 0x0307,), '1E0A 031B 0323 -> 0044 031B 0323 0307';
ok Uni.new(0x1E0C, 0x031B, 0x0307).NFD.list ~~ (0x0044, 0x031B, 0x0323, 0x0307,), '1E0C 031B 0307 -> 0044 031B 0323 0307';
ok Uni.new(0x0044, 0x031B, 0x0307, 0x0323).NFD.list ~~ (0x0044, 0x031B, 0x0323, 0x0307,), '0044 031B 0307 0323 -> 0044 031B 0323 0307';
ok Uni.new(0x0044, 0x031B, 0x0323, 0x0307).NFD.list ~~ (0x0044, 0x031B, 0x0323, 0x0307,), '0044 031B 0323 0307 -> 0044 031B 0323 0307';
ok Uni.new(0x00C8).NFD.list ~~ (0x0045, 0x0300,), '00C8 -> 0045 0300';
ok Uni.new(0x0112).NFD.list ~~ (0x0045, 0x0304,), '0112 -> 0045 0304';
ok Uni.new(0x0045, 0x0300).NFD.list ~~ (0x0045, 0x0300,), '0045 0300 -> 0045 0300';
ok Uni.new(0x0045, 0x0304).NFD.list ~~ (0x0045, 0x0304,), '0045 0304 -> 0045 0304';
ok Uni.new(0x1E14).NFD.list ~~ (0x0045, 0x0304, 0x0300,), '1E14 -> 0045 0304 0300';
ok Uni.new(0x0112, 0x0300).NFD.list ~~ (0x0045, 0x0304, 0x0300,), '0112 0300 -> 0045 0304 0300';
ok Uni.new(0x1E14, 0x0304).NFD.list ~~ (0x0045, 0x0304, 0x0300, 0x0304,), '1E14 0304 -> 0045 0304 0300 0304';
ok Uni.new(0x0045, 0x0304, 0x0300).NFD.list ~~ (0x0045, 0x0304, 0x0300,), '0045 0304 0300 -> 0045 0304 0300';
ok Uni.new(0x05B8, 0x05B9, 0x05B1, 0x0591, 0x05C3, 0x05B0, 0x05AC, 0x059F).NFD.list ~~ (0x05B1, 0x05B8, 0x05B9, 0x0591, 0x05C3, 0x05B0, 0x05AC, 0x059F,), '05B8 05B9 05B1 0591 05C3 05B0 05AC 059F -> 05B1 05B8 05B9 0591 05C3 05B0 05AC 059F';
ok Uni.new(0x0592, 0x05B7, 0x05BC, 0x05A5, 0x05B0, 0x05C0, 0x05C4, 0x05AD).NFD.list ~~ (0x05B0, 0x05B7, 0x05BC, 0x05A5, 0x0592, 0x05C0, 0x05AD, 0x05C4,), '0592 05B7 05BC 05A5 05B0 05C0 05C4 05AD -> 05B0 05B7 05BC 05A5 0592 05C0 05AD 05C4';
ok Uni.new(0x00C0).NFD.list ~~ (0x0041, 0x0300,), '00C0 -> 0041 0300';
ok Uni.new(0x00C1).NFD.list ~~ (0x0041, 0x0301,), '00C1 -> 0041 0301';
ok Uni.new(0x00C2).NFD.list ~~ (0x0041, 0x0302,), '00C2 -> 0041 0302';
ok Uni.new(0x00C3).NFD.list ~~ (0x0041, 0x0303,), '00C3 -> 0041 0303';
ok Uni.new(0x00C4).NFD.list ~~ (0x0041, 0x0308,), '00C4 -> 0041 0308';
ok Uni.new(0x00C5).NFD.list ~~ (0x0041, 0x030A,), '00C5 -> 0041 030A';
ok Uni.new(0x00C7).NFD.list ~~ (0x0043, 0x0327,), '00C7 -> 0043 0327';
ok Uni.new(0x00C8).NFD.list ~~ (0x0045, 0x0300,), '00C8 -> 0045 0300';
ok Uni.new(0x00C9).NFD.list ~~ (0x0045, 0x0301,), '00C9 -> 0045 0301';
ok Uni.new(0x00CA).NFD.list ~~ (0x0045, 0x0302,), '00CA -> 0045 0302';
ok Uni.new(0x00CB).NFD.list ~~ (0x0045, 0x0308,), '00CB -> 0045 0308';
ok Uni.new(0x00CC).NFD.list ~~ (0x0049, 0x0300,), '00CC -> 0049 0300';
ok Uni.new(0x00CD).NFD.list ~~ (0x0049, 0x0301,), '00CD -> 0049 0301';
ok Uni.new(0x00CE).NFD.list ~~ (0x0049, 0x0302,), '00CE -> 0049 0302';
ok Uni.new(0x00CF).NFD.list ~~ (0x0049, 0x0308,), '00CF -> 0049 0308';
ok Uni.new(0x00D1).NFD.list ~~ (0x004E, 0x0303,), '00D1 -> 004E 0303';
ok Uni.new(0x00D2).NFD.list ~~ (0x004F, 0x0300,), '00D2 -> 004F 0300';
ok Uni.new(0x00D3).NFD.list ~~ (0x004F, 0x0301,), '00D3 -> 004F 0301';
ok Uni.new(0x00D4).NFD.list ~~ (0x004F, 0x0302,), '00D4 -> 004F 0302';
ok Uni.new(0x00D5).NFD.list ~~ (0x004F, 0x0303,), '00D5 -> 004F 0303';
ok Uni.new(0x00D6).NFD.list ~~ (0x004F, 0x0308,), '00D6 -> 004F 0308';
ok Uni.new(0x00D9).NFD.list ~~ (0x0055, 0x0300,), '00D9 -> 0055 0300';
ok Uni.new(0x00DA).NFD.list ~~ (0x0055, 0x0301,), '00DA -> 0055 0301';
ok Uni.new(0x00DB).NFD.list ~~ (0x0055, 0x0302,), '00DB -> 0055 0302';
ok Uni.new(0x00DC).NFD.list ~~ (0x0055, 0x0308,), '00DC -> 0055 0308';
ok Uni.new(0x00DD).NFD.list ~~ (0x0059, 0x0301,), '00DD -> 0059 0301';
ok Uni.new(0x00E0).NFD.list ~~ (0x0061, 0x0300,), '00E0 -> 0061 0300';
ok Uni.new(0x00E1).NFD.list ~~ (0x0061, 0x0301,), '00E1 -> 0061 0301';
ok Uni.new(0x00E2).NFD.list ~~ (0x0061, 0x0302,), '00E2 -> 0061 0302';
ok Uni.new(0x00E3).NFD.list ~~ (0x0061, 0x0303,), '00E3 -> 0061 0303';
ok Uni.new(0x00E4).NFD.list ~~ (0x0061, 0x0308,), '00E4 -> 0061 0308';
ok Uni.new(0x00E5).NFD.list ~~ (0x0061, 0x030A,), '00E5 -> 0061 030A';
ok Uni.new(0x00E7).NFD.list ~~ (0x0063, 0x0327,), '00E7 -> 0063 0327';
ok Uni.new(0x00E8).NFD.list ~~ (0x0065, 0x0300,), '00E8 -> 0065 0300';
ok Uni.new(0x00E9).NFD.list ~~ (0x0065, 0x0301,), '00E9 -> 0065 0301';
ok Uni.new(0x00EA).NFD.list ~~ (0x0065, 0x0302,), '00EA -> 0065 0302';
ok Uni.new(0x00EB).NFD.list ~~ (0x0065, 0x0308,), '00EB -> 0065 0308';
ok Uni.new(0x00EC).NFD.list ~~ (0x0069, 0x0300,), '00EC -> 0069 0300';
ok Uni.new(0x00ED).NFD.list ~~ (0x0069, 0x0301,), '00ED -> 0069 0301';
ok Uni.new(0x00EE).NFD.list ~~ (0x0069, 0x0302,), '00EE -> 0069 0302';
ok Uni.new(0x00EF).NFD.list ~~ (0x0069, 0x0308,), '00EF -> 0069 0308';
ok Uni.new(0x00F1).NFD.list ~~ (0x006E, 0x0303,), '00F1 -> 006E 0303';
ok Uni.new(0x00F2).NFD.list ~~ (0x006F, 0x0300,), '00F2 -> 006F 0300';
ok Uni.new(0x00F3).NFD.list ~~ (0x006F, 0x0301,), '00F3 -> 006F 0301';
ok Uni.new(0x00F4).NFD.list ~~ (0x006F, 0x0302,), '00F4 -> 006F 0302';
ok Uni.new(0x00F5).NFD.list ~~ (0x006F, 0x0303,), '00F5 -> 006F 0303';
ok Uni.new(0x00F6).NFD.list ~~ (0x006F, 0x0308,), '00F6 -> 006F 0308';
ok Uni.new(0x00F9).NFD.list ~~ (0x0075, 0x0300,), '00F9 -> 0075 0300';
ok Uni.new(0x00FA).NFD.list ~~ (0x0075, 0x0301,), '00FA -> 0075 0301';
ok Uni.new(0x00FB).NFD.list ~~ (0x0075, 0x0302,), '00FB -> 0075 0302';
ok Uni.new(0x00FC).NFD.list ~~ (0x0075, 0x0308,), '00FC -> 0075 0308';
ok Uni.new(0x00FD).NFD.list ~~ (0x0079, 0x0301,), '00FD -> 0079 0301';
ok Uni.new(0x00FF).NFD.list ~~ (0x0079, 0x0308,), '00FF -> 0079 0308';
ok Uni.new(0x0100).NFD.list ~~ (0x0041, 0x0304,), '0100 -> 0041 0304';
ok Uni.new(0x0101).NFD.list ~~ (0x0061, 0x0304,), '0101 -> 0061 0304';
ok Uni.new(0x0102).NFD.list ~~ (0x0041, 0x0306,), '0102 -> 0041 0306';
ok Uni.new(0x0103).NFD.list ~~ (0x0061, 0x0306,), '0103 -> 0061 0306';
ok Uni.new(0x0104).NFD.list ~~ (0x0041, 0x0328,), '0104 -> 0041 0328';
ok Uni.new(0x0105).NFD.list ~~ (0x0061, 0x0328,), '0105 -> 0061 0328';
ok Uni.new(0x0106).NFD.list ~~ (0x0043, 0x0301,), '0106 -> 0043 0301';
ok Uni.new(0x0107).NFD.list ~~ (0x0063, 0x0301,), '0107 -> 0063 0301';
ok Uni.new(0x0108).NFD.list ~~ (0x0043, 0x0302,), '0108 -> 0043 0302';
ok Uni.new(0x0109).NFD.list ~~ (0x0063, 0x0302,), '0109 -> 0063 0302';
ok Uni.new(0x010A).NFD.list ~~ (0x0043, 0x0307,), '010A -> 0043 0307';
ok Uni.new(0x010B).NFD.list ~~ (0x0063, 0x0307,), '010B -> 0063 0307';
ok Uni.new(0x010C).NFD.list ~~ (0x0043, 0x030C,), '010C -> 0043 030C';
ok Uni.new(0x010D).NFD.list ~~ (0x0063, 0x030C,), '010D -> 0063 030C';
ok Uni.new(0x010E).NFD.list ~~ (0x0044, 0x030C,), '010E -> 0044 030C';
ok Uni.new(0x010F).NFD.list ~~ (0x0064, 0x030C,), '010F -> 0064 030C';
ok Uni.new(0x0112).NFD.list ~~ (0x0045, 0x0304,), '0112 -> 0045 0304';
ok Uni.new(0x0113).NFD.list ~~ (0x0065, 0x0304,), '0113 -> 0065 0304';
ok Uni.new(0x0114).NFD.list ~~ (0x0045, 0x0306,), '0114 -> 0045 0306';
ok Uni.new(0x0115).NFD.list ~~ (0x0065, 0x0306,), '0115 -> 0065 0306';
ok Uni.new(0x0116).NFD.list ~~ (0x0045, 0x0307,), '0116 -> 0045 0307';
ok Uni.new(0x0117).NFD.list ~~ (0x0065, 0x0307,), '0117 -> 0065 0307';
ok Uni.new(0x0118).NFD.list ~~ (0x0045, 0x0328,), '0118 -> 0045 0328';
ok Uni.new(0x0119).NFD.list ~~ (0x0065, 0x0328,), '0119 -> 0065 0328';
ok Uni.new(0x011A).NFD.list ~~ (0x0045, 0x030C,), '011A -> 0045 030C';
ok Uni.new(0x011B).NFD.list ~~ (0x0065, 0x030C,), '011B -> 0065 030C';
ok Uni.new(0x011C).NFD.list ~~ (0x0047, 0x0302,), '011C -> 0047 0302';
ok Uni.new(0x011D).NFD.list ~~ (0x0067, 0x0302,), '011D -> 0067 0302';
ok Uni.new(0x011E).NFD.list ~~ (0x0047, 0x0306,), '011E -> 0047 0306';
ok Uni.new(0x011F).NFD.list ~~ (0x0067, 0x0306,), '011F -> 0067 0306';
ok Uni.new(0x0120).NFD.list ~~ (0x0047, 0x0307,), '0120 -> 0047 0307';
ok Uni.new(0x0121).NFD.list ~~ (0x0067, 0x0307,), '0121 -> 0067 0307';
ok Uni.new(0x0122).NFD.list ~~ (0x0047, 0x0327,), '0122 -> 0047 0327';
ok Uni.new(0x0123).NFD.list ~~ (0x0067, 0x0327,), '0123 -> 0067 0327';
ok Uni.new(0x0124).NFD.list ~~ (0x0048, 0x0302,), '0124 -> 0048 0302';
ok Uni.new(0x0125).NFD.list ~~ (0x0068, 0x0302,), '0125 -> 0068 0302';
ok Uni.new(0x0128).NFD.list ~~ (0x0049, 0x0303,), '0128 -> 0049 0303';
ok Uni.new(0x0129).NFD.list ~~ (0x0069, 0x0303,), '0129 -> 0069 0303';
ok Uni.new(0x012A).NFD.list ~~ (0x0049, 0x0304,), '012A -> 0049 0304';
ok Uni.new(0x012B).NFD.list ~~ (0x0069, 0x0304,), '012B -> 0069 0304';
ok Uni.new(0x012C).NFD.list ~~ (0x0049, 0x0306,), '012C -> 0049 0306';
ok Uni.new(0x012D).NFD.list ~~ (0x0069, 0x0306,), '012D -> 0069 0306';
ok Uni.new(0x012E).NFD.list ~~ (0x0049, 0x0328,), '012E -> 0049 0328';
ok Uni.new(0x012F).NFD.list ~~ (0x0069, 0x0328,), '012F -> 0069 0328';
ok Uni.new(0x0130).NFD.list ~~ (0x0049, 0x0307,), '0130 -> 0049 0307';
ok Uni.new(0x0132).NFD.list ~~ (0x0132,), '0132 -> 0132';
ok Uni.new(0x0133).NFD.list ~~ (0x0133,), '0133 -> 0133';
ok Uni.new(0x0134).NFD.list ~~ (0x004A, 0x0302,), '0134 -> 004A 0302';
ok Uni.new(0x0135).NFD.list ~~ (0x006A, 0x0302,), '0135 -> 006A 0302';
ok Uni.new(0x0136).NFD.list ~~ (0x004B, 0x0327,), '0136 -> 004B 0327';
ok Uni.new(0x0137).NFD.list ~~ (0x006B, 0x0327,), '0137 -> 006B 0327';
ok Uni.new(0x0139).NFD.list ~~ (0x004C, 0x0301,), '0139 -> 004C 0301';
ok Uni.new(0x013A).NFD.list ~~ (0x006C, 0x0301,), '013A -> 006C 0301';
ok Uni.new(0x013B).NFD.list ~~ (0x004C, 0x0327,), '013B -> 004C 0327';
ok Uni.new(0x013C).NFD.list ~~ (0x006C, 0x0327,), '013C -> 006C 0327';
ok Uni.new(0x013D).NFD.list ~~ (0x004C, 0x030C,), '013D -> 004C 030C';
ok Uni.new(0x013E).NFD.list ~~ (0x006C, 0x030C,), '013E -> 006C 030C';
ok Uni.new(0x013F).NFD.list ~~ (0x013F,), '013F -> 013F';
ok Uni.new(0x0140).NFD.list ~~ (0x0140,), '0140 -> 0140';
ok Uni.new(0x0143).NFD.list ~~ (0x004E, 0x0301,), '0143 -> 004E 0301';
ok Uni.new(0x0144).NFD.list ~~ (0x006E, 0x0301,), '0144 -> 006E 0301';
ok Uni.new(0x0145).NFD.list ~~ (0x004E, 0x0327,), '0145 -> 004E 0327';
ok Uni.new(0x0146).NFD.list ~~ (0x006E, 0x0327,), '0146 -> 006E 0327';
ok Uni.new(0x0147).NFD.list ~~ (0x004E, 0x030C,), '0147 -> 004E 030C';
ok Uni.new(0x0148).NFD.list ~~ (0x006E, 0x030C,), '0148 -> 006E 030C';
ok Uni.new(0x0149).NFD.list ~~ (0x0149,), '0149 -> 0149';
ok Uni.new(0x014C).NFD.list ~~ (0x004F, 0x0304,), '014C -> 004F 0304';
ok Uni.new(0x014D).NFD.list ~~ (0x006F, 0x0304,), '014D -> 006F 0304';
ok Uni.new(0x014E).NFD.list ~~ (0x004F, 0x0306,), '014E -> 004F 0306';
ok Uni.new(0x014F).NFD.list ~~ (0x006F, 0x0306,), '014F -> 006F 0306';
ok Uni.new(0x0150).NFD.list ~~ (0x004F, 0x030B,), '0150 -> 004F 030B';
ok Uni.new(0x0151).NFD.list ~~ (0x006F, 0x030B,), '0151 -> 006F 030B';
ok Uni.new(0x0154).NFD.list ~~ (0x0052, 0x0301,), '0154 -> 0052 0301';
ok Uni.new(0x0155).NFD.list ~~ (0x0072, 0x0301,), '0155 -> 0072 0301';
ok Uni.new(0x0156).NFD.list ~~ (0x0052, 0x0327,), '0156 -> 0052 0327';
ok Uni.new(0x0157).NFD.list ~~ (0x0072, 0x0327,), '0157 -> 0072 0327';
ok Uni.new(0x0158).NFD.list ~~ (0x0052, 0x030C,), '0158 -> 0052 030C';
ok Uni.new(0x0159).NFD.list ~~ (0x0072, 0x030C,), '0159 -> 0072 030C';
ok Uni.new(0x015A).NFD.list ~~ (0x0053, 0x0301,), '015A -> 0053 0301';
ok Uni.new(0x015B).NFD.list ~~ (0x0073, 0x0301,), '015B -> 0073 0301';
ok Uni.new(0x015C).NFD.list ~~ (0x0053, 0x0302,), '015C -> 0053 0302';
ok Uni.new(0x015D).NFD.list ~~ (0x0073, 0x0302,), '015D -> 0073 0302';
ok Uni.new(0x015E).NFD.list ~~ (0x0053, 0x0327,), '015E -> 0053 0327';
ok Uni.new(0x015F).NFD.list ~~ (0x0073, 0x0327,), '015F -> 0073 0327';
ok Uni.new(0x0160).NFD.list ~~ (0x0053, 0x030C,), '0160 -> 0053 030C';
ok Uni.new(0x0161).NFD.list ~~ (0x0073, 0x030C,), '0161 -> 0073 030C';
ok Uni.new(0x0162).NFD.list ~~ (0x0054, 0x0327,), '0162 -> 0054 0327';
ok Uni.new(0x0163).NFD.list ~~ (0x0074, 0x0327,), '0163 -> 0074 0327';
ok Uni.new(0x0164).NFD.list ~~ (0x0054, 0x030C,), '0164 -> 0054 030C';
ok Uni.new(0x0165).NFD.list ~~ (0x0074, 0x030C,), '0165 -> 0074 030C';
ok Uni.new(0x0168).NFD.list ~~ (0x0055, 0x0303,), '0168 -> 0055 0303';
ok Uni.new(0x0169).NFD.list ~~ (0x0075, 0x0303,), '0169 -> 0075 0303';
ok Uni.new(0x016A).NFD.list ~~ (0x0055, 0x0304,), '016A -> 0055 0304';
ok Uni.new(0x016B).NFD.list ~~ (0x0075, 0x0304,), '016B -> 0075 0304';
ok Uni.new(0x016C).NFD.list ~~ (0x0055, 0x0306,), '016C -> 0055 0306';
ok Uni.new(0x016D).NFD.list ~~ (0x0075, 0x0306,), '016D -> 0075 0306';
ok Uni.new(0x016E).NFD.list ~~ (0x0055, 0x030A,), '016E -> 0055 030A';
ok Uni.new(0x016F).NFD.list ~~ (0x0075, 0x030A,), '016F -> 0075 030A';
ok Uni.new(0x0170).NFD.list ~~ (0x0055, 0x030B,), '0170 -> 0055 030B';
ok Uni.new(0x0171).NFD.list ~~ (0x0075, 0x030B,), '0171 -> 0075 030B';
ok Uni.new(0x0172).NFD.list ~~ (0x0055, 0x0328,), '0172 -> 0055 0328';
ok Uni.new(0x0173).NFD.list ~~ (0x0075, 0x0328,), '0173 -> 0075 0328';
ok Uni.new(0x0174).NFD.list ~~ (0x0057, 0x0302,), '0174 -> 0057 0302';
ok Uni.new(0x0175).NFD.list ~~ (0x0077, 0x0302,), '0175 -> 0077 0302';
ok Uni.new(0x0176).NFD.list ~~ (0x0059, 0x0302,), '0176 -> 0059 0302';
ok Uni.new(0x0177).NFD.list ~~ (0x0079, 0x0302,), '0177 -> 0079 0302';
ok Uni.new(0x0178).NFD.list ~~ (0x0059, 0x0308,), '0178 -> 0059 0308';
ok Uni.new(0x0179).NFD.list ~~ (0x005A, 0x0301,), '0179 -> 005A 0301';
ok Uni.new(0x017A).NFD.list ~~ (0x007A, 0x0301,), '017A -> 007A 0301';
ok Uni.new(0x017B).NFD.list ~~ (0x005A, 0x0307,), '017B -> 005A 0307';
ok Uni.new(0x017C).NFD.list ~~ (0x007A, 0x0307,), '017C -> 007A 0307';
ok Uni.new(0x017D).NFD.list ~~ (0x005A, 0x030C,), '017D -> 005A 030C';
ok Uni.new(0x017E).NFD.list ~~ (0x007A, 0x030C,), '017E -> 007A 030C';
ok Uni.new(0x017F).NFD.list ~~ (0x017F,), '017F -> 017F';
ok Uni.new(0x01A0).NFD.list ~~ (0x004F, 0x031B,), '01A0 -> 004F 031B';
ok Uni.new(0x01A1).NFD.list ~~ (0x006F, 0x031B,), '01A1 -> 006F 031B';
ok Uni.new(0x01AF).NFD.list ~~ (0x0055, 0x031B,), '01AF -> 0055 031B';
ok Uni.new(0x01B0).NFD.list ~~ (0x0075, 0x031B,), '01B0 -> 0075 031B';
ok Uni.new(0x01C4).NFD.list ~~ (0x01C4,), '01C4 -> 01C4';
ok Uni.new(0x01C5).NFD.list ~~ (0x01C5,), '01C5 -> 01C5';
ok Uni.new(0x01C6).NFD.list ~~ (0x01C6,), '01C6 -> 01C6';
ok Uni.new(0x01C7).NFD.list ~~ (0x01C7,), '01C7 -> 01C7';
ok Uni.new(0x01C8).NFD.list ~~ (0x01C8,), '01C8 -> 01C8';
ok Uni.new(0x01C9).NFD.list ~~ (0x01C9,), '01C9 -> 01C9';
ok Uni.new(0x01CA).NFD.list ~~ (0x01CA,), '01CA -> 01CA';
ok Uni.new(0x01CB).NFD.list ~~ (0x01CB,), '01CB -> 01CB';
ok Uni.new(0x01CC).NFD.list ~~ (0x01CC,), '01CC -> 01CC';
ok Uni.new(0x01CD).NFD.list ~~ (0x0041, 0x030C,), '01CD -> 0041 030C';
ok Uni.new(0x01CE).NFD.list ~~ (0x0061, 0x030C,), '01CE -> 0061 030C';
ok Uni.new(0x01CF).NFD.list ~~ (0x0049, 0x030C,), '01CF -> 0049 030C';
ok Uni.new(0x01D0).NFD.list ~~ (0x0069, 0x030C,), '01D0 -> 0069 030C';
ok Uni.new(0x01D1).NFD.list ~~ (0x004F, 0x030C,), '01D1 -> 004F 030C';
ok Uni.new(0x01D2).NFD.list ~~ (0x006F, 0x030C,), '01D2 -> 006F 030C';
ok Uni.new(0x01D3).NFD.list ~~ (0x0055, 0x030C,), '01D3 -> 0055 030C';
ok Uni.new(0x01D4).NFD.list ~~ (0x0075, 0x030C,), '01D4 -> 0075 030C';
ok Uni.new(0x01D5).NFD.list ~~ (0x0055, 0x0308, 0x0304,), '01D5 -> 0055 0308 0304';
ok Uni.new(0x01D6).NFD.list ~~ (0x0075, 0x0308, 0x0304,), '01D6 -> 0075 0308 0304';
ok Uni.new(0x01D7).NFD.list ~~ (0x0055, 0x0308, 0x0301,), '01D7 -> 0055 0308 0301';
ok Uni.new(0x01D8).NFD.list ~~ (0x0075, 0x0308, 0x0301,), '01D8 -> 0075 0308 0301';
ok Uni.new(0x01D9).NFD.list ~~ (0x0055, 0x0308, 0x030C,), '01D9 -> 0055 0308 030C';
ok Uni.new(0x01DA).NFD.list ~~ (0x0075, 0x0308, 0x030C,), '01DA -> 0075 0308 030C';
ok Uni.new(0x01DB).NFD.list ~~ (0x0055, 0x0308, 0x0300,), '01DB -> 0055 0308 0300';
ok Uni.new(0x01DC).NFD.list ~~ (0x0075, 0x0308, 0x0300,), '01DC -> 0075 0308 0300';
ok Uni.new(0x01DE).NFD.list ~~ (0x0041, 0x0308, 0x0304,), '01DE -> 0041 0308 0304';
ok Uni.new(0x01DF).NFD.list ~~ (0x0061, 0x0308, 0x0304,), '01DF -> 0061 0308 0304';
ok Uni.new(0x01E0).NFD.list ~~ (0x0041, 0x0307, 0x0304,), '01E0 -> 0041 0307 0304';
ok Uni.new(0x01E1).NFD.list ~~ (0x0061, 0x0307, 0x0304,), '01E1 -> 0061 0307 0304';
ok Uni.new(0x01E2).NFD.list ~~ (0x00C6, 0x0304,), '01E2 -> 00C6 0304';
ok Uni.new(0x01E3).NFD.list ~~ (0x00E6, 0x0304,), '01E3 -> 00E6 0304';
ok Uni.new(0x01E6).NFD.list ~~ (0x0047, 0x030C,), '01E6 -> 0047 030C';
ok Uni.new(0x01E7).NFD.list ~~ (0x0067, 0x030C,), '01E7 -> 0067 030C';
ok Uni.new(0x01E8).NFD.list ~~ (0x004B, 0x030C,), '01E8 -> 004B 030C';
ok Uni.new(0x01E9).NFD.list ~~ (0x006B, 0x030C,), '01E9 -> 006B 030C';
ok Uni.new(0x01EA).NFD.list ~~ (0x004F, 0x0328,), '01EA -> 004F 0328';
ok Uni.new(0x01EB).NFD.list ~~ (0x006F, 0x0328,), '01EB -> 006F 0328';
ok Uni.new(0x01EC).NFD.list ~~ (0x004F, 0x0328, 0x0304,), '01EC -> 004F 0328 0304';
ok Uni.new(0x01ED).NFD.list ~~ (0x006F, 0x0328, 0x0304,), '01ED -> 006F 0328 0304';
ok Uni.new(0x01EE).NFD.list ~~ (0x01B7, 0x030C,), '01EE -> 01B7 030C';
ok Uni.new(0x01EF).NFD.list ~~ (0x0292, 0x030C,), '01EF -> 0292 030C';
ok Uni.new(0x01F0).NFD.list ~~ (0x006A, 0x030C,), '01F0 -> 006A 030C';
ok Uni.new(0x01F1).NFD.list ~~ (0x01F1,), '01F1 -> 01F1';
ok Uni.new(0x01F2).NFD.list ~~ (0x01F2,), '01F2 -> 01F2';
ok Uni.new(0x01F3).NFD.list ~~ (0x01F3,), '01F3 -> 01F3';
ok Uni.new(0x01F4).NFD.list ~~ (0x0047, 0x0301,), '01F4 -> 0047 0301';
ok Uni.new(0x01F5).NFD.list ~~ (0x0067, 0x0301,), '01F5 -> 0067 0301';
ok Uni.new(0x01F8).NFD.list ~~ (0x004E, 0x0300,), '01F8 -> 004E 0300';
ok Uni.new(0x01F9).NFD.list ~~ (0x006E, 0x0300,), '01F9 -> 006E 0300';
ok Uni.new(0x01FA).NFD.list ~~ (0x0041, 0x030A, 0x0301,), '01FA -> 0041 030A 0301';
ok Uni.new(0x01FB).NFD.list ~~ (0x0061, 0x030A, 0x0301,), '01FB -> 0061 030A 0301';
ok Uni.new(0x01FC).NFD.list ~~ (0x00C6, 0x0301,), '01FC -> 00C6 0301';
ok Uni.new(0x01FD).NFD.list ~~ (0x00E6, 0x0301,), '01FD -> 00E6 0301';
ok Uni.new(0x01FE).NFD.list ~~ (0x00D8, 0x0301,), '01FE -> 00D8 0301';
ok Uni.new(0x01FF).NFD.list ~~ (0x00F8, 0x0301,), '01FF -> 00F8 0301';
ok Uni.new(0x0200).NFD.list ~~ (0x0041, 0x030F,), '0200 -> 0041 030F';
ok Uni.new(0x0201).NFD.list ~~ (0x0061, 0x030F,), '0201 -> 0061 030F';
ok Uni.new(0x0202).NFD.list ~~ (0x0041, 0x0311,), '0202 -> 0041 0311';
ok Uni.new(0x0203).NFD.list ~~ (0x0061, 0x0311,), '0203 -> 0061 0311';
ok Uni.new(0x0204).NFD.list ~~ (0x0045, 0x030F,), '0204 -> 0045 030F';
ok Uni.new(0x0205).NFD.list ~~ (0x0065, 0x030F,), '0205 -> 0065 030F';
ok Uni.new(0x0206).NFD.list ~~ (0x0045, 0x0311,), '0206 -> 0045 0311';
ok Uni.new(0x0207).NFD.list ~~ (0x0065, 0x0311,), '0207 -> 0065 0311';
ok Uni.new(0x0208).NFD.list ~~ (0x0049, 0x030F,), '0208 -> 0049 030F';
ok Uni.new(0x0209).NFD.list ~~ (0x0069, 0x030F,), '0209 -> 0069 030F';
ok Uni.new(0x020A).NFD.list ~~ (0x0049, 0x0311,), '020A -> 0049 0311';
ok Uni.new(0x020B).NFD.list ~~ (0x0069, 0x0311,), '020B -> 0069 0311';
ok Uni.new(0x020C).NFD.list ~~ (0x004F, 0x030F,), '020C -> 004F 030F';
ok Uni.new(0x020D).NFD.list ~~ (0x006F, 0x030F,), '020D -> 006F 030F';
ok Uni.new(0x020E).NFD.list ~~ (0x004F, 0x0311,), '020E -> 004F 0311';
ok Uni.new(0x020F).NFD.list ~~ (0x006F, 0x0311,), '020F -> 006F 0311';
ok Uni.new(0x0210).NFD.list ~~ (0x0052, 0x030F,), '0210 -> 0052 030F';
ok Uni.new(0x0211).NFD.list ~~ (0x0072, 0x030F,), '0211 -> 0072 030F';
ok Uni.new(0x0212).NFD.list ~~ (0x0052, 0x0311,), '0212 -> 0052 0311';
ok Uni.new(0x0213).NFD.list ~~ (0x0072, 0x0311,), '0213 -> 0072 0311';
ok Uni.new(0x0214).NFD.list ~~ (0x0055, 0x030F,), '0214 -> 0055 030F';
ok Uni.new(0x0215).NFD.list ~~ (0x0075, 0x030F,), '0215 -> 0075 030F';
ok Uni.new(0x0216).NFD.list ~~ (0x0055, 0x0311,), '0216 -> 0055 0311';
ok Uni.new(0x0217).NFD.list ~~ (0x0075, 0x0311,), '0217 -> 0075 0311';
ok Uni.new(0x0218).NFD.list ~~ (0x0053, 0x0326,), '0218 -> 0053 0326';
ok Uni.new(0x0219).NFD.list ~~ (0x0073, 0x0326,), '0219 -> 0073 0326';
ok Uni.new(0x021A).NFD.list ~~ (0x0054, 0x0326,), '021A -> 0054 0326';
ok Uni.new(0x021B).NFD.list ~~ (0x0074, 0x0326,), '021B -> 0074 0326';
ok Uni.new(0x021E).NFD.list ~~ (0x0048, 0x030C,), '021E -> 0048 030C';
ok Uni.new(0x021F).NFD.list ~~ (0x0068, 0x030C,), '021F -> 0068 030C';
ok Uni.new(0x0226).NFD.list ~~ (0x0041, 0x0307,), '0226 -> 0041 0307';
ok Uni.new(0x0227).NFD.list ~~ (0x0061, 0x0307,), '0227 -> 0061 0307';
ok Uni.new(0x0228).NFD.list ~~ (0x0045, 0x0327,), '0228 -> 0045 0327';
ok Uni.new(0x0229).NFD.list ~~ (0x0065, 0x0327,), '0229 -> 0065 0327';
ok Uni.new(0x022A).NFD.list ~~ (0x004F, 0x0308, 0x0304,), '022A -> 004F 0308 0304';
ok Uni.new(0x022B).NFD.list ~~ (0x006F, 0x0308, 0x0304,), '022B -> 006F 0308 0304';
ok Uni.new(0x022C).NFD.list ~~ (0x004F, 0x0303, 0x0304,), '022C -> 004F 0303 0304';
ok Uni.new(0x022D).NFD.list ~~ (0x006F, 0x0303, 0x0304,), '022D -> 006F 0303 0304';
ok Uni.new(0x022E).NFD.list ~~ (0x004F, 0x0307,), '022E -> 004F 0307';
ok Uni.new(0x022F).NFD.list ~~ (0x006F, 0x0307,), '022F -> 006F 0307';
ok Uni.new(0x0230).NFD.list ~~ (0x004F, 0x0307, 0x0304,), '0230 -> 004F 0307 0304';
ok Uni.new(0x0231).NFD.list ~~ (0x006F, 0x0307, 0x0304,), '0231 -> 006F 0307 0304';
ok Uni.new(0x0232).NFD.list ~~ (0x0059, 0x0304,), '0232 -> 0059 0304';
ok Uni.new(0x0233).NFD.list ~~ (0x0079, 0x0304,), '0233 -> 0079 0304';
ok Uni.new(0x02B0).NFD.list ~~ (0x02B0,), '02B0 -> 02B0';
ok Uni.new(0x02B1).NFD.list ~~ (0x02B1,), '02B1 -> 02B1';
ok Uni.new(0x02B2).NFD.list ~~ (0x02B2,), '02B2 -> 02B2';
ok Uni.new(0x02B3).NFD.list ~~ (0x02B3,), '02B3 -> 02B3';
ok Uni.new(0x02B4).NFD.list ~~ (0x02B4,), '02B4 -> 02B4';
ok Uni.new(0x02B5).NFD.list ~~ (0x02B5,), '02B5 -> 02B5';
ok Uni.new(0x02B6).NFD.list ~~ (0x02B6,), '02B6 -> 02B6';
ok Uni.new(0x02B7).NFD.list ~~ (0x02B7,), '02B7 -> 02B7';
ok Uni.new(0x02B8).NFD.list ~~ (0x02B8,), '02B8 -> 02B8';
ok Uni.new(0x02D8).NFD.list ~~ (0x02D8,), '02D8 -> 02D8';
ok Uni.new(0x02D9).NFD.list ~~ (0x02D9,), '02D9 -> 02D9';
ok Uni.new(0x02DA).NFD.list ~~ (0x02DA,), '02DA -> 02DA';
ok Uni.new(0x02DB).NFD.list ~~ (0x02DB,), '02DB -> 02DB';
ok Uni.new(0x02DC).NFD.list ~~ (0x02DC,), '02DC -> 02DC';
ok Uni.new(0x02DD).NFD.list ~~ (0x02DD,), '02DD -> 02DD';
ok Uni.new(0x02E0).NFD.list ~~ (0x02E0,), '02E0 -> 02E0';
ok Uni.new(0x02E1).NFD.list ~~ (0x02E1,), '02E1 -> 02E1';
ok Uni.new(0x02E2).NFD.list ~~ (0x02E2,), '02E2 -> 02E2';
ok Uni.new(0x02E3).NFD.list ~~ (0x02E3,), '02E3 -> 02E3';
ok Uni.new(0x02E4).NFD.list ~~ (0x02E4,), '02E4 -> 02E4';
ok Uni.new(0x0340).NFD.list ~~ (0x0300,), '0340 -> 0300';
ok Uni.new(0x0341).NFD.list ~~ (0x0301,), '0341 -> 0301';
ok Uni.new(0x0343).NFD.list ~~ (0x0313,), '0343 -> 0313';
ok Uni.new(0x0344).NFD.list ~~ (0x0308, 0x0301,), '0344 -> 0308 0301';
ok Uni.new(0x0374).NFD.list ~~ (0x02B9,), '0374 -> 02B9';
ok Uni.new(0x037A).NFD.list ~~ (0x037A,), '037A -> 037A';
ok Uni.new(0x037E).NFD.list ~~ (0x003B,), '037E -> 003B';
ok Uni.new(0x0384).NFD.list ~~ (0x0384,), '0384 -> 0384';
ok Uni.new(0x0385).NFD.list ~~ (0x00A8, 0x0301,), '0385 -> 00A8 0301';
ok Uni.new(0x0386).NFD.list ~~ (0x0391, 0x0301,), '0386 -> 0391 0301';
ok Uni.new(0x0387).NFD.list ~~ (0x00B7,), '0387 -> 00B7';
ok Uni.new(0x0388).NFD.list ~~ (0x0395, 0x0301,), '0388 -> 0395 0301';
ok Uni.new(0x0389).NFD.list ~~ (0x0397, 0x0301,), '0389 -> 0397 0301';
ok Uni.new(0x038A).NFD.list ~~ (0x0399, 0x0301,), '038A -> 0399 0301';
ok Uni.new(0x038C).NFD.list ~~ (0x039F, 0x0301,), '038C -> 039F 0301';
ok Uni.new(0x038E).NFD.list ~~ (0x03A5, 0x0301,), '038E -> 03A5 0301';
ok Uni.new(0x038F).NFD.list ~~ (0x03A9, 0x0301,), '038F -> 03A9 0301';
ok Uni.new(0x0390).NFD.list ~~ (0x03B9, 0x0308, 0x0301,), '0390 -> 03B9 0308 0301';
ok Uni.new(0x03AA).NFD.list ~~ (0x0399, 0x0308,), '03AA -> 0399 0308';
ok Uni.new(0x03AB).NFD.list ~~ (0x03A5, 0x0308,), '03AB -> 03A5 0308';
ok Uni.new(0x03AC).NFD.list ~~ (0x03B1, 0x0301,), '03AC -> 03B1 0301';
ok Uni.new(0x03AD).NFD.list ~~ (0x03B5, 0x0301,), '03AD -> 03B5 0301';
ok Uni.new(0x03AE).NFD.list ~~ (0x03B7, 0x0301,), '03AE -> 03B7 0301';
ok Uni.new(0x03AF).NFD.list ~~ (0x03B9, 0x0301,), '03AF -> 03B9 0301';
ok Uni.new(0x03B0).NFD.list ~~ (0x03C5, 0x0308, 0x0301,), '03B0 -> 03C5 0308 0301';
ok Uni.new(0x03CA).NFD.list ~~ (0x03B9, 0x0308,), '03CA -> 03B9 0308';
ok Uni.new(0x03CB).NFD.list ~~ (0x03C5, 0x0308,), '03CB -> 03C5 0308';
ok Uni.new(0x03CC).NFD.list ~~ (0x03BF, 0x0301,), '03CC -> 03BF 0301';
ok Uni.new(0x03CD).NFD.list ~~ (0x03C5, 0x0301,), '03CD -> 03C5 0301';
ok Uni.new(0x03CE).NFD.list ~~ (0x03C9, 0x0301,), '03CE -> 03C9 0301';
ok Uni.new(0x03D0).NFD.list ~~ (0x03D0,), '03D0 -> 03D0';
ok Uni.new(0x03D1).NFD.list ~~ (0x03D1,), '03D1 -> 03D1';
ok Uni.new(0x03D2).NFD.list ~~ (0x03D2,), '03D2 -> 03D2';
ok Uni.new(0x03D3).NFD.list ~~ (0x03D2, 0x0301,), '03D3 -> 03D2 0301';
ok Uni.new(0x03D4).NFD.list ~~ (0x03D2, 0x0308,), '03D4 -> 03D2 0308';
ok Uni.new(0x03D5).NFD.list ~~ (0x03D5,), '03D5 -> 03D5';
ok Uni.new(0x03D6).NFD.list ~~ (0x03D6,), '03D6 -> 03D6';
ok Uni.new(0x03F0).NFD.list ~~ (0x03F0,), '03F0 -> 03F0';
ok Uni.new(0x03F1).NFD.list ~~ (0x03F1,), '03F1 -> 03F1';
ok Uni.new(0x03F2).NFD.list ~~ (0x03F2,), '03F2 -> 03F2';
ok Uni.new(0x03F4).NFD.list ~~ (0x03F4,), '03F4 -> 03F4';
ok Uni.new(0x03F5).NFD.list ~~ (0x03F5,), '03F5 -> 03F5';
ok Uni.new(0x03F9).NFD.list ~~ (0x03F9,), '03F9 -> 03F9';
ok Uni.new(0x0400).NFD.list ~~ (0x0415, 0x0300,), '0400 -> 0415 0300';
ok Uni.new(0x0401).NFD.list ~~ (0x0415, 0x0308,), '0401 -> 0415 0308';
ok Uni.new(0x0403).NFD.list ~~ (0x0413, 0x0301,), '0403 -> 0413 0301';
ok Uni.new(0x0407).NFD.list ~~ (0x0406, 0x0308,), '0407 -> 0406 0308';
ok Uni.new(0x040C).NFD.list ~~ (0x041A, 0x0301,), '040C -> 041A 0301';
ok Uni.new(0x040D).NFD.list ~~ (0x0418, 0x0300,), '040D -> 0418 0300';
ok Uni.new(0x040E).NFD.list ~~ (0x0423, 0x0306,), '040E -> 0423 0306';
ok Uni.new(0x0419).NFD.list ~~ (0x0418, 0x0306,), '0419 -> 0418 0306';
ok Uni.new(0x0439).NFD.list ~~ (0x0438, 0x0306,), '0439 -> 0438 0306';
ok Uni.new(0x0450).NFD.list ~~ (0x0435, 0x0300,), '0450 -> 0435 0300';
ok Uni.new(0x0451).NFD.list ~~ (0x0435, 0x0308,), '0451 -> 0435 0308';
ok Uni.new(0x0453).NFD.list ~~ (0x0433, 0x0301,), '0453 -> 0433 0301';
ok Uni.new(0x0457).NFD.list ~~ (0x0456, 0x0308,), '0457 -> 0456 0308';
ok Uni.new(0x045C).NFD.list ~~ (0x043A, 0x0301,), '045C -> 043A 0301';
ok Uni.new(0x045D).NFD.list ~~ (0x0438, 0x0300,), '045D -> 0438 0300';
ok Uni.new(0x045E).NFD.list ~~ (0x0443, 0x0306,), '045E -> 0443 0306';
ok Uni.new(0x0476).NFD.list ~~ (0x0474, 0x030F,), '0476 -> 0474 030F';
ok Uni.new(0x0477).NFD.list ~~ (0x0475, 0x030F,), '0477 -> 0475 030F';
ok Uni.new(0x04C1).NFD.list ~~ (0x0416, 0x0306,), '04C1 -> 0416 0306';
ok Uni.new(0x04C2).NFD.list ~~ (0x0436, 0x0306,), '04C2 -> 0436 0306';
ok Uni.new(0x04D0).NFD.list ~~ (0x0410, 0x0306,), '04D0 -> 0410 0306';
ok Uni.new(0x04D1).NFD.list ~~ (0x0430, 0x0306,), '04D1 -> 0430 0306';
ok Uni.new(0x04D2).NFD.list ~~ (0x0410, 0x0308,), '04D2 -> 0410 0308';
ok Uni.new(0x04D3).NFD.list ~~ (0x0430, 0x0308,), '04D3 -> 0430 0308';
ok Uni.new(0x04D6).NFD.list ~~ (0x0415, 0x0306,), '04D6 -> 0415 0306';
ok Uni.new(0x04D7).NFD.list ~~ (0x0435, 0x0306,), '04D7 -> 0435 0306';
ok Uni.new(0x04DA).NFD.list ~~ (0x04D8, 0x0308,), '04DA -> 04D8 0308';
ok Uni.new(0x04DB).NFD.list ~~ (0x04D9, 0x0308,), '04DB -> 04D9 0308';
ok Uni.new(0x04DC).NFD.list ~~ (0x0416, 0x0308,), '04DC -> 0416 0308';
ok Uni.new(0x04DD).NFD.list ~~ (0x0436, 0x0308,), '04DD -> 0436 0308';
ok Uni.new(0x04DE).NFD.list ~~ (0x0417, 0x0308,), '04DE -> 0417 0308';
ok Uni.new(0x04DF).NFD.list ~~ (0x0437, 0x0308,), '04DF -> 0437 0308';
ok Uni.new(0x04E2).NFD.list ~~ (0x0418, 0x0304,), '04E2 -> 0418 0304';
ok Uni.new(0x04E3).NFD.list ~~ (0x0438, 0x0304,), '04E3 -> 0438 0304';
ok Uni.new(0x04E4).NFD.list ~~ (0x0418, 0x0308,), '04E4 -> 0418 0308';
ok Uni.new(0x04E5).NFD.list ~~ (0x0438, 0x0308,), '04E5 -> 0438 0308';
ok Uni.new(0x04E6).NFD.list ~~ (0x041E, 0x0308,), '04E6 -> 041E 0308';
ok Uni.new(0x04E7).NFD.list ~~ (0x043E, 0x0308,), '04E7 -> 043E 0308';
ok Uni.new(0x04EA).NFD.list ~~ (0x04E8, 0x0308,), '04EA -> 04E8 0308';
ok Uni.new(0x04EB).NFD.list ~~ (0x04E9, 0x0308,), '04EB -> 04E9 0308';
ok Uni.new(0x04EC).NFD.list ~~ (0x042D, 0x0308,), '04EC -> 042D 0308';
ok Uni.new(0x04ED).NFD.list ~~ (0x044D, 0x0308,), '04ED -> 044D 0308';
ok Uni.new(0x04EE).NFD.list ~~ (0x0423, 0x0304,), '04EE -> 0423 0304';
ok Uni.new(0x04EF).NFD.list ~~ (0x0443, 0x0304,), '04EF -> 0443 0304';
ok Uni.new(0x04F0).NFD.list ~~ (0x0423, 0x0308,), '04F0 -> 0423 0308';
ok Uni.new(0x04F1).NFD.list ~~ (0x0443, 0x0308,), '04F1 -> 0443 0308';
ok Uni.new(0x04F2).NFD.list ~~ (0x0423, 0x030B,), '04F2 -> 0423 030B';
ok Uni.new(0x04F3).NFD.list ~~ (0x0443, 0x030B,), '04F3 -> 0443 030B';
ok Uni.new(0x04F4).NFD.list ~~ (0x0427, 0x0308,), '04F4 -> 0427 0308';
ok Uni.new(0x04F5).NFD.list ~~ (0x0447, 0x0308,), '04F5 -> 0447 0308';
ok Uni.new(0x04F8).NFD.list ~~ (0x042B, 0x0308,), '04F8 -> 042B 0308';
ok Uni.new(0x04F9).NFD.list ~~ (0x044B, 0x0308,), '04F9 -> 044B 0308';
ok Uni.new(0x0587).NFD.list ~~ (0x0587,), '0587 -> 0587';
ok Uni.new(0x0622).NFD.list ~~ (0x0627, 0x0653,), '0622 -> 0627 0653';
ok Uni.new(0x0623).NFD.list ~~ (0x0627, 0x0654,), '0623 -> 0627 0654';
ok Uni.new(0x0624).NFD.list ~~ (0x0648, 0x0654,), '0624 -> 0648 0654';
ok Uni.new(0x0625).NFD.list ~~ (0x0627, 0x0655,), '0625 -> 0627 0655';
ok Uni.new(0x0626).NFD.list ~~ (0x064A, 0x0654,), '0626 -> 064A 0654';
ok Uni.new(0x0675).NFD.list ~~ (0x0675,), '0675 -> 0675';
ok Uni.new(0x0676).NFD.list ~~ (0x0676,), '0676 -> 0676';
ok Uni.new(0x0677).NFD.list ~~ (0x0677,), '0677 -> 0677';
ok Uni.new(0x0678).NFD.list ~~ (0x0678,), '0678 -> 0678';
ok Uni.new(0x06C0).NFD.list ~~ (0x06D5, 0x0654,), '06C0 -> 06D5 0654';
ok Uni.new(0x06C2).NFD.list ~~ (0x06C1, 0x0654,), '06C2 -> 06C1 0654';
ok Uni.new(0x06D3).NFD.list ~~ (0x06D2, 0x0654,), '06D3 -> 06D2 0654';
ok Uni.new(0x0929).NFD.list ~~ (0x0928, 0x093C,), '0929 -> 0928 093C';
ok Uni.new(0x0931).NFD.list ~~ (0x0930, 0x093C,), '0931 -> 0930 093C';
ok Uni.new(0x0934).NFD.list ~~ (0x0933, 0x093C,), '0934 -> 0933 093C';
ok Uni.new(0x0958).NFD.list ~~ (0x0915, 0x093C,), '0958 -> 0915 093C';
ok Uni.new(0x0959).NFD.list ~~ (0x0916, 0x093C,), '0959 -> 0916 093C';
ok Uni.new(0x095A).NFD.list ~~ (0x0917, 0x093C,), '095A -> 0917 093C';
ok Uni.new(0x095B).NFD.list ~~ (0x091C, 0x093C,), '095B -> 091C 093C';
ok Uni.new(0x095C).NFD.list ~~ (0x0921, 0x093C,), '095C -> 0921 093C';
ok Uni.new(0x095D).NFD.list ~~ (0x0922, 0x093C,), '095D -> 0922 093C';
ok Uni.new(0x095E).NFD.list ~~ (0x092B, 0x093C,), '095E -> 092B 093C';
ok Uni.new(0x095F).NFD.list ~~ (0x092F, 0x093C,), '095F -> 092F 093C';
ok Uni.new(0x09CB).NFD.list ~~ (0x09C7, 0x09BE,), '09CB -> 09C7 09BE';
ok Uni.new(0x09CC).NFD.list ~~ (0x09C7, 0x09D7,), '09CC -> 09C7 09D7';
ok Uni.new(0x09DC).NFD.list ~~ (0x09A1, 0x09BC,), '09DC -> 09A1 09BC';
ok Uni.new(0x09DD).NFD.list ~~ (0x09A2, 0x09BC,), '09DD -> 09A2 09BC';
ok Uni.new(0x09DF).NFD.list ~~ (0x09AF, 0x09BC,), '09DF -> 09AF 09BC';
ok Uni.new(0x0A33).NFD.list ~~ (0x0A32, 0x0A3C,), '0A33 -> 0A32 0A3C';
ok Uni.new(0x0A36).NFD.list ~~ (0x0A38, 0x0A3C,), '0A36 -> 0A38 0A3C';
ok Uni.new(0x0A59).NFD.list ~~ (0x0A16, 0x0A3C,), '0A59 -> 0A16 0A3C';
ok Uni.new(0x0A5A).NFD.list ~~ (0x0A17, 0x0A3C,), '0A5A -> 0A17 0A3C';
ok Uni.new(0x0A5B).NFD.list ~~ (0x0A1C, 0x0A3C,), '0A5B -> 0A1C 0A3C';
ok Uni.new(0x0A5E).NFD.list ~~ (0x0A2B, 0x0A3C,), '0A5E -> 0A2B 0A3C';
ok Uni.new(0x0B48).NFD.list ~~ (0x0B47, 0x0B56,), '0B48 -> 0B47 0B56';
ok Uni.new(0x0B4B).NFD.list ~~ (0x0B47, 0x0B3E,), '0B4B -> 0B47 0B3E';
ok Uni.new(0x0B4C).NFD.list ~~ (0x0B47, 0x0B57,), '0B4C -> 0B47 0B57';
ok Uni.new(0x0B5C).NFD.list ~~ (0x0B21, 0x0B3C,), '0B5C -> 0B21 0B3C';
ok Uni.new(0x0B5D).NFD.list ~~ (0x0B22, 0x0B3C,), '0B5D -> 0B22 0B3C';
ok Uni.new(0x0B94).NFD.list ~~ (0x0B92, 0x0BD7,), '0B94 -> 0B92 0BD7';
ok Uni.new(0x0BCA).NFD.list ~~ (0x0BC6, 0x0BBE,), '0BCA -> 0BC6 0BBE';
ok Uni.new(0x0BCB).NFD.list ~~ (0x0BC7, 0x0BBE,), '0BCB -> 0BC7 0BBE';
ok Uni.new(0x0BCC).NFD.list ~~ (0x0BC6, 0x0BD7,), '0BCC -> 0BC6 0BD7';
ok Uni.new(0x0C48).NFD.list ~~ (0x0C46, 0x0C56,), '0C48 -> 0C46 0C56';
ok Uni.new(0x0CC0).NFD.list ~~ (0x0CBF, 0x0CD5,), '0CC0 -> 0CBF 0CD5';
ok Uni.new(0x0CC7).NFD.list ~~ (0x0CC6, 0x0CD5,), '0CC7 -> 0CC6 0CD5';
ok Uni.new(0x0CC8).NFD.list ~~ (0x0CC6, 0x0CD6,), '0CC8 -> 0CC6 0CD6';
ok Uni.new(0x0CCA).NFD.list ~~ (0x0CC6, 0x0CC2,), '0CCA -> 0CC6 0CC2';
ok Uni.new(0x0CCB).NFD.list ~~ (0x0CC6, 0x0CC2, 0x0CD5,), '0CCB -> 0CC6 0CC2 0CD5';
ok Uni.new(0x0D4A).NFD.list ~~ (0x0D46, 0x0D3E,), '0D4A -> 0D46 0D3E';
ok Uni.new(0x0D4B).NFD.list ~~ (0x0D47, 0x0D3E,), '0D4B -> 0D47 0D3E';
ok Uni.new(0x0D4C).NFD.list ~~ (0x0D46, 0x0D57,), '0D4C -> 0D46 0D57';
ok Uni.new(0x0DDA).NFD.list ~~ (0x0DD9, 0x0DCA,), '0DDA -> 0DD9 0DCA';
ok Uni.new(0x0DDC).NFD.list ~~ (0x0DD9, 0x0DCF,), '0DDC -> 0DD9 0DCF';
ok Uni.new(0x0DDD).NFD.list ~~ (0x0DD9, 0x0DCF, 0x0DCA,), '0DDD -> 0DD9 0DCF 0DCA';
ok Uni.new(0x0DDE).NFD.list ~~ (0x0DD9, 0x0DDF,), '0DDE -> 0DD9 0DDF';
ok Uni.new(0x0E33).NFD.list ~~ (0x0E33,), '0E33 -> 0E33';
ok Uni.new(0x0EB3).NFD.list ~~ (0x0EB3,), '0EB3 -> 0EB3';
ok Uni.new(0x0EDC).NFD.list ~~ (0x0EDC,), '0EDC -> 0EDC';
ok Uni.new(0x0EDD).NFD.list ~~ (0x0EDD,), '0EDD -> 0EDD';
ok Uni.new(0x0F0C).NFD.list ~~ (0x0F0C,), '0F0C -> 0F0C';
ok Uni.new(0x0F43).NFD.list ~~ (0x0F42, 0x0FB7,), '0F43 -> 0F42 0FB7';
ok Uni.new(0x0F4D).NFD.list ~~ (0x0F4C, 0x0FB7,), '0F4D -> 0F4C 0FB7';
ok Uni.new(0x0F52).NFD.list ~~ (0x0F51, 0x0FB7,), '0F52 -> 0F51 0FB7';
ok Uni.new(0x0F57).NFD.list ~~ (0x0F56, 0x0FB7,), '0F57 -> 0F56 0FB7';
ok Uni.new(0x0F5C).NFD.list ~~ (0x0F5B, 0x0FB7,), '0F5C -> 0F5B 0FB7';
ok Uni.new(0x0F69).NFD.list ~~ (0x0F40, 0x0FB5,), '0F69 -> 0F40 0FB5';
ok Uni.new(0x0F73).NFD.list ~~ (0x0F71, 0x0F72,), '0F73 -> 0F71 0F72';
ok Uni.new(0x0F75).NFD.list ~~ (0x0F71, 0x0F74,), '0F75 -> 0F71 0F74';
ok Uni.new(0x0F76).NFD.list ~~ (0x0FB2, 0x0F80,), '0F76 -> 0FB2 0F80';
ok Uni.new(0x0F77).NFD.list ~~ (0x0F77,), '0F77 -> 0F77';
ok Uni.new(0x0F78).NFD.list ~~ (0x0FB3, 0x0F80,), '0F78 -> 0FB3 0F80';
ok Uni.new(0x0F79).NFD.list ~~ (0x0F79,), '0F79 -> 0F79';
ok Uni.new(0x0F81).NFD.list ~~ (0x0F71, 0x0F80,), '0F81 -> 0F71 0F80';
ok Uni.new(0x0F93).NFD.list ~~ (0x0F92, 0x0FB7,), '0F93 -> 0F92 0FB7';
ok Uni.new(0x0F9D).NFD.list ~~ (0x0F9C, 0x0FB7,), '0F9D -> 0F9C 0FB7';
ok Uni.new(0x0FA2).NFD.list ~~ (0x0FA1, 0x0FB7,), '0FA2 -> 0FA1 0FB7';
ok Uni.new(0x0FA7).NFD.list ~~ (0x0FA6, 0x0FB7,), '0FA7 -> 0FA6 0FB7';
ok Uni.new(0x0FAC).NFD.list ~~ (0x0FAB, 0x0FB7,), '0FAC -> 0FAB 0FB7';
ok Uni.new(0x0FB9).NFD.list ~~ (0x0F90, 0x0FB5,), '0FB9 -> 0F90 0FB5';
ok Uni.new(0x1026).NFD.list ~~ (0x1025, 0x102E,), '1026 -> 1025 102E';
ok Uni.new(0x10FC).NFD.list ~~ (0x10FC,), '10FC -> 10FC';
ok Uni.new(0x1B06).NFD.list ~~ (0x1B05, 0x1B35,), '1B06 -> 1B05 1B35';
ok Uni.new(0x1B08).NFD.list ~~ (0x1B07, 0x1B35,), '1B08 -> 1B07 1B35';
ok Uni.new(0x1B0A).NFD.list ~~ (0x1B09, 0x1B35,), '1B0A -> 1B09 1B35';
ok Uni.new(0x1B0C).NFD.list ~~ (0x1B0B, 0x1B35,), '1B0C -> 1B0B 1B35';
ok Uni.new(0x1B0E).NFD.list ~~ (0x1B0D, 0x1B35,), '1B0E -> 1B0D 1B35';
ok Uni.new(0x1B12).NFD.list ~~ (0x1B11, 0x1B35,), '1B12 -> 1B11 1B35';
ok Uni.new(0x1B3B).NFD.list ~~ (0x1B3A, 0x1B35,), '1B3B -> 1B3A 1B35';
ok Uni.new(0x1B3D).NFD.list ~~ (0x1B3C, 0x1B35,), '1B3D -> 1B3C 1B35';
ok Uni.new(0x1B40).NFD.list ~~ (0x1B3E, 0x1B35,), '1B40 -> 1B3E 1B35';
ok Uni.new(0x1B41).NFD.list ~~ (0x1B3F, 0x1B35,), '1B41 -> 1B3F 1B35';
