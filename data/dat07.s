.include "data/dat07.inc"

dword_805E01C: .word 0x5, 0xFFEA0000, 0xFF660000, 0x0
	.word 0x72, 0x5, 0x1C0000, 0xFF860000, 0x0
	.word 0xBE, 0x5, 0xFF7A0000, 0xFE960000, 0x900000, 0x67, 0x5
	.word 0xFFFA0000, 0xFE160000, 0x100000, 0x6C, 0x5, 0xFF7A0000, 0xFE960000
	.word 0x900000, 0x8B, 0xFF
dword_805E084: .word 0x5, 0xFF5E0000, 0xA0000, 0x0
	.word 0x13, 0xFF
dword_805E09C: .word 0x5, 0x40000, 0x400000, 0x0
	.word 0x87, 0x5, 0xFFCA0000, 0x160000, 0xFFF80000, 0x84, 0x5
	.word 0xFFBA0000, 0x260000, 0x100000, 0x85, 0x5, 0xFFCA0000, 0x760000
	.word 0xFFF80000, 0x84, 0x5, 0xFFBA0000, 0x860000, 0x100000, 0x85
	.word 0x5, 0xFF960000, 0x4A0000, 0x40000, 0x86, 0xFF
dword_805E118: .word 0x5, 0x60000, 0xFFAC0000, 0x0
	.word 0x88
	.word 0x5, 0x60000, 0x320000, 0x0
	.word 0x88
	.word 0x5, 0x60000, 0xBA0000, 0x0
	.word 0x88
	.word 0xFF
dword_805E158: .word 0xFF
off_805E15C: .word byte_805E248
	.word byte_805E490
	.word dword_805E6B8
	.word byte_805E8E4
	.word byte_805E940
off_805E170: .word off_805E36C
	.word byte_805E5FC
	.word dword_805E804
	.word byte_805E93E
	.word byte_805E952
off_805E184: .word off_805E9AC
	.word off_805EEE4
	.word off_805F3B0
	.word off_805FEBC
	.word off_80600C4
off_805E198: .word dword_805E1AC
	.word dword_805E1BC
	.word dword_805E1CC
	.word dword_805E1DC
	.word dword_805E1EC
dword_805E1AC: .word 0x3020114, 0x7060504, 0xFFFFFFFF, 0xFFFFFFFF
dword_805E1BC: .word 0x3020100, 0x7060504, 0xFFFFFFFF, 0xFFFFFFFF
dword_805E1CC: .word 0x3020100, 0xFFFF0504, 0xFFFFFFFF, 0xFFFFFFFF
dword_805E1DC: .word 0x3020100, 0xFF060504, 0xFFFFFFFF, 0xFFFFFFFF
dword_805E1EC: .word 0xFFFF0100, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
off_805E1FC: .word dword_805E210
	.word dword_805E218
	.word dword_805E220
	.word dword_805E228
	.word byte_805E230
dword_805E210: .word 0xFFFFFF20, 0xFFFFFFFF
dword_805E218: .word 0xFFFFFF0F, 0xFFFFFFFF
dword_805E220: .word 0xFFFFFF0D, 0xFFFFFFFF
dword_805E228: .word 0xFFFFFF1E, 0xFFFFFFFF
byte_805E230: .byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
byte_805E238: .byte 0x8, 0x8, 0x8, 0x8, 0x8
byte_805E23D: .byte 0xC, 0xC, 0xC, 0xC, 0xC
byte_805E242: .byte 0xB, 0xB, 0xB, 0xB, 0xB, 0x0
byte_805E248: .byte 0x1F, 0xFF, 0xF5, 0x16, 0x5, 0xFF, 0x9C, 0xA
	.word byte_805E25E
	.byte 0x2C, 0xF8, 0xD9, 0x8, 0x8, 0x2C, 0x48, 0xDA, 0x8, 0x8
byte_805E25E: .byte 0x5, 0xFF, 0x3A, 0x0, 0x6F, 0xE2, 0x5, 0x8, 0x26, 0xE9, 0xBB
	.byte 0x9, 0x8, 0x0, 0x0, 0x0, 0x0, 0x2, 0x30, 0x3F, 0x7B, 0xE2
	.byte 0x5, 0x8, 0x1, 0x25, 0xE3, 0x5, 0x8, 0x2, 0x33, 0x33, 0x95
	.byte 0xE2, 0x5, 0x8, 0x2, 0x34, 0x34, 0xBC, 0xE2, 0x5, 0x8, 0x2
	.byte 0x35, 0x35
	.word byte_805E2C1
	.byte 0x1, 0x25, 0xE3, 0x5, 0x8, 0x3, 0xFF, 0x79, 0x8, 0xAA, 0xE2
	.byte 0x5, 0x8, 0x29, 0xAC, 0x1E, 0x1, 0x2, 0x2, 0x15, 0x5, 0x8
	.byte 0x1F, 0xFF, 0xF3, 0x16, 0x29, 0xA4, 0x1E, 0x1, 0x2, 0x2, 0x14
	.byte 0x3, 0x8, 0x1F, 0xFF, 0xF1, 0x16, 0x1
	.word byte_805E325
	.byte 0x1, 0x25, 0xE3, 0x5, 0x8
byte_805E2C1: .byte 0x29, 0xB4, 0x1E, 0x1, 0x2, 0x2, 0x1C, 0x1, 0x8, 0x1F, 0xFF
	.byte 0xF5, 0x16, 0x5, 0xFF, 0x77, 0x8, 0x25, 0xE3, 0x5, 0x8, 0x5
	.byte 0xFF, 0x55, 0x8, 0x25, 0xE3, 0x5, 0x8, 0x3, 0xFF, 0x56, 0x8
	.byte 0x25, 0xE3, 0x5, 0x8, 0xB, 0x1
	.word byte_805E313
	.word byte_856E826+0x16F9
	.word dword_878FA4C+0x4D3
	.byte 0x29, 0xB4, 0x1E, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x20, 0xFF, 0xF5
	.byte 0x16, 0x1F, 0xFF, 0xF5, 0x16, 0x26, 0xA0, 0xC1, 0x8, 0x8, 0x0, 0x0
	.byte 0x0, 0x0, 0x1, 0x25, 0xE3, 0x5, 0x8
byte_805E313: .byte 0x20, 0xFF, 0x77, 0x8, 0x26
	.word byte_80990DC
	.byte 0x53, 0x0, 0x7, 0x1, 0x1, 0x25, 0xE3, 0x5, 0x8
byte_805E325: .byte 0x3, 0xFF, 0x19, 0x13, 0x42, 0xE3, 0x5, 0x8, 0x3, 0xFF, 0x1A
	.byte 0x13, 0x42, 0xE3, 0x5, 0x8, 0x3, 0xFF, 0x1B, 0x13, 0x42, 0xE3
	.byte 0x5, 0x8, 0x1, 0x6B, 0xE3, 0x5, 0x8, 0x22, 0x3, 0x19, 0x13
	.byte 0x1E, 0xC, 0xFF, 0xB, 0x1, 0x5D, 0xE3, 0x5, 0x8, 0x26
	.word byte_8099CEC
	.byte 0x41, 0x0, 0x0, 0x0, 0x1, 0x6B, 0xE3, 0x5, 0x8, 0x26, 0xEC, 0x9C
	.byte 0x9, 0x8, 0x42, 0x0, 0x0, 0x0, 0x1, 0x6B, 0xE3, 0x5, 0x8, 0x0
off_805E36C: .word byte_861FF05
	.word byte_805E382
	.byte 0x26, 0xB0, 0xBF, 0x9, 0x8, 0x1, 0x0, 0x0, 0x0, 0x1, 0x4C, 0xE4
	.byte 0x5, 0x8
byte_805E382: .byte 0x5, 0xFF, 0x3, 0x1, 0xB9, 0xE3, 0x5, 0x8, 0x5, 0xFF, 0x49, 0x8
	.byte 0xB9, 0xE3, 0x5, 0x8, 0x3, 0xFF, 0x4A, 0x8, 0xB9, 0xE3, 0x5, 0x8
	.byte 0x1F, 0xFF, 0x4A, 0x8, 0x29, 0xB4, 0x1E, 0x1, 0x2, 0x2, 0x1C, 0x1
	.byte 0x8, 0x1F, 0xFF, 0xF5, 0x16, 0x26
	.word byte_808C248
	.byte 0x0, 0x0, 0x0, 0x0, 0x1, 0x4C, 0xE4, 0x5, 0x8, 0x2, 0x30, 0x3F
	.word byte_805E3C5
	.byte 0x1, 0x4C, 0xE4, 0x5, 0x8
byte_805E3C5: .byte 0x2, 0x31, 0x31
	.word byte_805E3E6
	.byte 0x2, 0x33, 0x33, 0xF, 0xE4, 0x5, 0x8, 0x2, 0x34, 0x34, 0x29
	.byte 0xE4, 0x5, 0x8, 0x2, 0x35, 0x35, 0x2E, 0xE4, 0x5, 0x8, 0x1
	.byte 0x4C, 0xE4, 0x5, 0x8
byte_805E3E6: .byte 0xD, 0x10, 0x0, 0x4C, 0xE4, 0x5, 0x8, 0x5, 0xFF, 0x5, 0x8, 0x4C
	.byte 0xE4, 0x5, 0x8, 0x3, 0xFF, 0x6, 0x8, 0x4C, 0xE4, 0x5, 0x8, 0x1F
	.byte 0xFF, 0x6, 0x8, 0x26, 0xB0, 0xA4, 0x8, 0x8, 0x0, 0x0, 0x0, 0x0
	.byte 0x1, 0x4C, 0xE4, 0x5, 0x8, 0x5, 0xFF, 0x79, 0x8, 0x4C, 0xE4, 0x5
	.byte 0x8, 0x29, 0xAC, 0x1E, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x20, 0xFF
	.byte 0xF3, 0x16, 0x1, 0x4C, 0xE4, 0x5, 0x8, 0x1, 0x4C, 0xE4, 0x5, 0x8
	.byte 0x3, 0xFF, 0x78, 0x8, 0x4C, 0xE4, 0x5, 0x8, 0x5, 0xFF, 0x77, 0x8
	.byte 0x4C, 0xE4, 0x5, 0x8, 0x26, 0xB8, 0x90, 0x9, 0x8, 0x53, 0x0, 0xFF
	.byte 0x1, 0x1
	.word byte_805E44C
byte_805E44C: .byte 0x5, 0xFF, 0x19, 0x13
	.word byte_805E462
	.byte 0x26, 0xB8, 0x90, 0x9, 0x8, 0xE, 0x0, 0xFF, 0x1, 0x1, 0x8E, 0xE4
	.byte 0x5, 0x8
byte_805E462: .byte 0x5, 0xFF, 0x1A, 0x13, 0x78, 0xE4, 0x5, 0x8, 0x26, 0xB8
	.byte 0x90, 0x9, 0x8, 0xF, 0x0, 0xFF, 0x1, 0x1
	.word byte_805E48E
	.byte 0x5, 0xFF, 0x1B, 0x13
	.word byte_805E48E
	.byte 0x26, 0xB8, 0x90, 0x9, 0x8, 0x10, 0x0, 0xFF, 0x1, 0x1, 0x8E
	.byte 0xE4, 0x5, 0x8
byte_805E48E: .byte 0x0, 0x0
byte_805E490: .byte 0x1F, 0xFF, 0xF5, 0x16, 0x2, 0x30, 0x3F, 0xA7, 0xE4
	.byte 0x5, 0x8, 0x2, 0x60, 0x6F, 0xCA, 0xE5, 0x5, 0x8
	.byte 0x1, 0xFB, 0xE5, 0x5, 0x8, 0x2, 0x31, 0x31, 0xC1
	.byte 0xE4, 0x5, 0x8, 0x2, 0x32, 0x32, 0x3F, 0xE5, 0x5
	.byte 0x8, 0x2, 0x33, 0x33
	.word byte_805E598
	.byte 0x1, 0xFB, 0xE5, 0x5, 0x8, 0x3, 0xFF, 0xA, 0x8, 0xD6, 0xE4, 0x5
	.byte 0x8, 0x29, 0xB4, 0x1E, 0x1, 0x2, 0x2, 0x0, 0x5, 0x8, 0x1F, 0xFF
	.byte 0xF5, 0x16, 0x3, 0xFF, 0xC, 0x8, 0xF3, 0xE4, 0x5, 0x8, 0x5, 0xFF
	.byte 0x8, 0x8, 0xF3, 0xE4, 0x5, 0x8, 0x29, 0xA4, 0x1E, 0x1, 0x2, 0x2
	.byte 0x4, 0x1, 0x8, 0x1F, 0xFF, 0xF1, 0x16, 0x29, 0xA8, 0x1E, 0x1, 0x2
	.word byte_8050102
	.byte 0x1F, 0xFF, 0xF2, 0x16, 0x29, 0xB0, 0x1E, 0x1, 0x2, 0x2
	.byte 0x2, 0x3, 0x8, 0x1F, 0xFF, 0xF4, 0x16, 0x5, 0xFF, 0x7
	.byte 0x8, 0xFB, 0xE5, 0x5, 0x8, 0x3, 0xFF, 0x8, 0x8, 0xFB
	.byte 0xE5, 0x5, 0x8, 0x1F, 0xFF, 0x8, 0x8, 0x29, 0xA4, 0x1E
	.byte 0x1, 0x2, 0x2, 0x4, 0x1, 0x8, 0x1F, 0xFF, 0xF1, 0x16
	.byte 0x1E, 0xC, 0xFF, 0x26, 0xBC, 0xA5, 0x8, 0x8, 0x0, 0x0
	.byte 0x0, 0x0, 0x1, 0xFB, 0xE5, 0x5, 0x8, 0x3, 0xFF, 0x70
	.byte 0x8, 0x54, 0xE5, 0x5, 0x8, 0x29, 0xA8, 0x1E, 0x1, 0x2
	.word byte_8050102
	.byte 0x1F, 0xFF, 0xF2, 0x16
	.word byte_86DFF03
	.word byte_805E569
	.byte 0x29, 0xA4, 0x1E, 0x1, 0x2, 0x2, 0x4, 0x1, 0x8, 0x1F, 0xFF, 0xF1
	.byte 0x16
byte_805E569: .byte 0x3, 0xFF, 0x1E, 0x8, 0x86, 0xE5, 0x5, 0x8, 0x5, 0xFF, 0x1C
	.byte 0x8, 0x86, 0xE5, 0x5, 0x8, 0x29, 0xAC, 0x1E, 0x1, 0x2, 0x2
	.byte 0x3, 0x5, 0x8, 0x1F, 0xFF, 0xF3, 0x16, 0x29, 0xB0, 0x1E, 0x1
	.byte 0x2, 0x2, 0x2, 0x3, 0x8, 0x1F, 0xFF, 0xF4, 0x16, 0x1
	.word byte_805E5FB
byte_805E598: .byte 0x29, 0xAC, 0x1E, 0x1, 0x2, 0x2, 0x3, 0x5, 0x8, 0x1F, 0xFF, 0xF3
	.byte 0x16, 0x5, 0xFF, 0x23, 0x8, 0xFB, 0xE5, 0x5, 0x8, 0x3, 0xFF, 0x24
	.byte 0x8, 0xFB, 0xE5, 0x5, 0x8, 0x1F, 0xFF, 0x24, 0x8, 0x1E, 0xC, 0xFF
	.byte 0x26, 0x74, 0xB7, 0x8, 0x8, 0x0, 0x0, 0x0, 0x0, 0x1, 0xFB, 0xE5
	.byte 0x5, 0x8, 0x2, 0x63, 0x64, 0xD6, 0xE5, 0x5, 0x8, 0x1, 0xFB, 0xE5
	.byte 0x5, 0x8, 0x5, 0xFF, 0x8F, 0xE, 0xFB, 0xE5, 0x5, 0x8, 0x3, 0xFF
	.byte 0x90, 0xE, 0xFB, 0xE5, 0x5, 0x8, 0x1F, 0xFF, 0x90, 0xE, 0x1E, 0xC
	.byte 0xFF, 0x26, 0xEC, 0x9C, 0x9, 0x8, 0x66, 0x0, 0x0, 0x0, 0x1, 0xFB
	.byte 0xE5, 0x5, 0x8
byte_805E5FB: .byte 0x0
byte_805E5FC: .byte 0x2, 0x30, 0x3F, 0xF, 0xE6, 0x5, 0x8, 0x2, 0x60, 0x6F, 0x8B
	.byte 0xE6, 0x5, 0x8, 0x1, 0xB5, 0xE6, 0x5, 0x8, 0x2, 0x31, 0x31
	.byte 0x22, 0xE6, 0x5, 0x8, 0x2, 0x32, 0x32, 0x71, 0xE6, 0x5, 0x8
	.byte 0x1, 0xB5, 0xE6, 0x5, 0x8, 0xD, 0x11, 0x0, 0xB5, 0xE6, 0x5
	.byte 0x8, 0x5, 0xFF, 0x74, 0x8, 0xB5, 0xE6, 0x5, 0x8, 0x5, 0xFF
	.byte 0x9, 0x8, 0xB5, 0xE6, 0x5, 0x8, 0x3, 0xFF, 0xA, 0x8, 0xB5
	.byte 0xE6, 0x5, 0x8, 0x1F, 0xFF, 0xA, 0x8, 0x29, 0xAC, 0x1E, 0x1
	.byte 0x2, 0x0, 0x0, 0x0, 0x0, 0x20, 0xFF, 0xF3, 0x16, 0x29, 0xB4
	.byte 0x1E, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x20, 0xFF, 0xF5, 0x16
	.byte 0x1F, 0xFF, 0xF5, 0x16, 0x26
	.word byte_808A6C8
	.byte 0x0, 0x0, 0x0, 0x0, 0x1, 0xB5, 0xE6, 0x5, 0x8, 0x5, 0xFF, 0x70, 0x8
	.byte 0xB5, 0xE6, 0x5, 0x8, 0x29, 0xA8, 0x1E, 0x1, 0x2, 0x0, 0x0, 0x0, 0x0
	.byte 0x20, 0xFF, 0xF2, 0x16, 0x1, 0xB5, 0xE6, 0x5, 0x8, 0x2, 0x63, 0x64, 0x97
	.byte 0xE6, 0x5, 0x8, 0x1, 0xB5, 0xE6, 0x5, 0x8, 0x5, 0xFF, 0x8F, 0xE, 0xB5
	.byte 0xE6, 0x5, 0x8, 0x3, 0xFF, 0x90, 0xE, 0xB5, 0xE6, 0x5, 0x8, 0x26, 0xB8
	.byte 0x90, 0x9, 0x8, 0xA2, 0x0, 0xFF, 0x1, 0x1, 0xB5, 0xE6, 0x5, 0x8, 0x0
	.byte 0x0, 0x0
dword_805E6B8: .word 0x11EAC29, 0x7000202, 0xF3FF1F08, 0x5EFF2016, 0x3F300208
	.word 0x805E6DC, 0xA36F6002, 0x10805E7, 0x805E803, 0xF6313102
	.word 0x20805E6, 0xE7223232, 0x33020805, 0x5E75633, 0xE8030108
	.word 0xFF1F0805, 0xFF0516F2, 0xE803080D, 0xFF030805, 0xE803080E
	.word 0xFF1F0805, 0xC1E080E, 0x63042BFF, 0x8AAA426, 0x8
	.word 0xE8030100, 0xFF030805, 0xE72E081E, 0xFF1F0805, 0xFF0516F2
	.word 0xE8030813, 0xFF030805, 0xE8030814, 0xFF1F0805, 0xC1E0814
	.word 0x63042BFF, 0x8AF0C26, 0x8, 0xE8030100, 0xFF050805
	.word 0xE77B0827, 0xFF030805, 0xE77B0828, 0xFF1F0805, 0xC1E0828
	.word 0xB8B026FF, 0x808, 0x3010000, 0x50805E8, 0x3082FFF
	.word 0x30805E8, 0x30830FF, 0x1F0805E8, 0x1E0830FF, 0x42BFF04
	.word 0xBCD82663, 0x808, 0x3010000, 0x20805E8, 0xE7DE6363
	.word 0x64020805, 0x5E7B664, 0xE8030108, 0xFF050805, 0xE7DE0EC9
	.word 0xFF030805, 0xE7DE0ECA, 0xFF1F0805, 0x1C1E0ECA, 0xC042BFF
	.word 0x9785426, 0x8, 0xE8030100, 0xFF050805, 0xE8030E91
	.word 0xFF030805, 0xE8030E92, 0xFF1F0805, 0xC1E0E92, 0x9CEC26FF
	.word 0x670809, 0x3010000, 0x805E8
dword_805E804: .word 0x85EFF05, 0x805E819, 0x11EAC29, 0x2, 0xF3FF2000, 0x3F300216
	.word 0x805E82C, 0xB76F6002, 0x10805E8, 0x805E8E1, 0x3F313102, 0x20805E8
	.word 0xE88E3232, 0xE1010805, 0xD0805E8, 0xE8700010, 0x4060805, 0xE8700868
	.word 0xFF050805, 0xE870080B, 0xFF030805, 0xE870080C, 0xFF1F0805, 0x2426080C
	.word 0x808A8, 0x1000000, 0x805E8E1, 0x80EFF05, 0x805E8E1, 0x1CF2FF03
	.word 0x805E8E1, 0x98BB826, 0x52021408, 0xE8E10100, 0x110D0805, 0x5E8E100
	.word 0x1FFF0508, 0x5E8E108, 0x20FF0308, 0x5E8E108, 0x20FF1F08, 0xB5DC2608
	.word 0x808, 0xE1010000, 0x20805E8, 0xE8C36463, 0xE1010805, 0x50805E8
	.word 0xE10E91FF, 0x30805E8, 0xE10E92FF, 0x260805E8, 0x80990B8, 0x1FF00A3
	.word 0x5E8E101, 0x8
byte_805E8E4: .byte 0x2, 0x30, 0x3F, 0xF0, 0xE8, 0x5, 0x8, 0x1, 0x3D, 0xE9, 0x5
	.byte 0x8, 0x2, 0x32, 0x32, 0x3, 0xE9, 0x5, 0x8, 0x2, 0x33, 0x33
	.byte 0x2B, 0xE9, 0x5, 0x8, 0x1, 0x3D, 0xE9, 0x5, 0x8, 0x5, 0xFF
	.byte 0x1D, 0x8, 0x3D, 0xE9, 0x5, 0x8, 0x3, 0xFF, 0x1E, 0x8, 0x3D
	.byte 0xE9, 0x5, 0x8, 0x1F, 0xFF, 0x1E, 0x8, 0x1E, 0xC, 0xFF, 0x2B
	.byte 0x4, 0x63, 0x26, 0xF8, 0xB4, 0x8, 0x8, 0x0, 0x0, 0x0, 0x0
	.byte 0x1, 0x3D, 0xE9, 0x5, 0x8, 0x29, 0xA4, 0x1E, 0x1, 0x2, 0x2
	.byte 0x0, 0x1, 0x8, 0x1F, 0xFF, 0xF1, 0x16, 0x1, 0x3D, 0xE9, 0x5
	.byte 0x8, 0x0
byte_805E93E: .byte 0x0, 0x0
byte_805E940: .byte 0x29, 0xA8, 0x1E, 0x1, 0x2, 0x2, 0x0, 0x3, 0x8, 0x1F, 0xFF, 0xF2
	.byte 0x16, 0x20, 0xFF, 0x5E, 0x8, 0x0
byte_805E952: .byte 0x5, 0xFF, 0x5E, 0x8, 0x67, 0xE9, 0x5, 0x8, 0x29, 0xA8, 0x1E
	.byte 0x1, 0x2, 0x0, 0x0, 0x0, 0x0, 0x20, 0xFF, 0xF2, 0x16, 0x2
	.byte 0x30, 0x3F, 0x73, 0xE9, 0x5, 0x8, 0x1, 0xA8, 0xE9, 0x5, 0x8
	.byte 0x2, 0x33, 0x33, 0x7F, 0xE9, 0x5, 0x8, 0x1, 0xA8, 0xE9, 0x5
	.byte 0x8, 0xD, 0x10, 0x0, 0xA8, 0xE9, 0x5, 0x8, 0x5, 0xFF, 0x25
	.byte 0x8, 0xA8, 0xE9, 0x5, 0x8, 0x3, 0xFF, 0x26, 0x8, 0xA8, 0xE9
	.byte 0x5, 0x8, 0x1F, 0xFF, 0x26, 0x8, 0x26, 0x10, 0xB8, 0x8, 0x8
	.byte 0x0, 0x0, 0x0, 0x0, 0x1, 0xA8, 0xE9, 0x5, 0x8, 0x0, 0x0
	.byte 0x0, 0x0
off_805E9AC: .word off_805E9D4
	.word 0x805EA96, 0x805EAB7, 0x805EAE8, 0x805EAFB, 0x805EBA9
	.word 0x805EBDA, 0x805EC98, 0x805ED4A, 0xFF
off_805E9D4: .word off_80E0408
	.word 0x805E9DD, 0xE9E64D03, 0xEA180805, 0x48040805, 0x5EA4A08
	.word 0x9970408
	.word 0x805EA06, 0x4C2217
	.word 0xF6FFFA14
	.word 0x160010FF, 0xF6CC3605, 0x22170809, 0xFA14024C
	.word 0x10FFF6FF
	.word 0x36031600, 0x809F6CC, 0x70085604, 0x40805EA, 0xEA38096F
	.word 0x23170805, 0xFA140A4C, 0x10FFF6FF, 0x36051600, 0x809F6CC
	.word 0xC4C2317, 0xF6FFFA14, 0x160010FF, 0xF6CC3603, 0x22170809
	.word 0xFA14324C, 0x10FFF6FF, 0x10051600, 0x10C0501, 0x805EA55
	.word 0x1100316, 0x60010C04, 0x20805EA, 0x805EA55, 0x3C4C2317
	.word 0xF6FFFA14, 0x160010FF, 0x5011005, 0xEA7B010C, 0x3160805
	.word 0xC040110, 0x5EA8601, 0xEA7B0208, 0x3B080805, 0xEA9F3131
	.word 0x4030805, 0xEAB60806, 0x2C170805, 0x9CFFC014, 0x16000000
	.word 0xF6CC3603, 0x8030809, 0xE71C2804, 0x40805EA, 0xEAC71BE8
	.word 0x5030805, 0xEAE7171D, 0x63040805, 0x5EAE701, 0x4C0F1708
	.word 0xFFC4141E, 0x100158, 0xCC360316, 0x30809F6, 0x4C101708
	.word 0xFF4A1464, 0x164, 0xCC360716, 0x80809F6, 0xA1C3604
	.word 0x40805EB, 0xEB2E115A, 0x603B0805, 0x5EB9662, 0x53513B08
	.word 0x805EB84, 0x6050503B, 0x3B0805EB, 0xEB724640, 0x313B0805
	.word 0x5EB4E33, 0x1D050308, 0x5EBA817, 0x1630408, 0x805EBA8
	.word 0x6E4C0E17, 0xF6FFEE14, 0x160000FE, 0xF6CC3603, 0x1A170809
	.word 0xE8140218, 0xFEF6FF, 0x36031600, 0x809F6CC, 0x28181A17
	.word 0xFA000614, 0x160000FE, 0xF6CC3605, 0x1A170809, 0x6140118
	.word 0xFEFA00, 0x36051600, 0x809F6CC, 0x32181A17, 0xFA000614
	.word 0x160000FE, 0xF6CC3605, 0x1A170809, 0xE8140018, 0xFEF6FF
	.word 0x36031600, 0x809F6CC, 0x15170803, 0xD91C2C04, 0x40805EB
	.word 0xEBBB1BEC, 0x5030805, 0xEBD9171D, 0x63040805, 0x5EBD901
	.word 0x14234C08, 0x102FFC6, 0x3160010, 0x9F6CC36, 0x3B080308
	.word 0xEC826161, 0x603B0805, 0x5EC6D60, 0x50503B08, 0x805EC46
	.word 0x5842403B, 0x3B0805EC, 0xEC343333, 0x323B0805, 0x5EC1F32
	.word 0x31313B08, 0x805EC0D, 0x180D1703, 0xFF401403, 0x52
	.word 0xCC360516, 0x170809F6, 0x140A180D, 0xFFECFF40, 0x3160000
	.word 0x10060338, 0x809F6EC, 0x10180D17, 0x64FF5614, 0x16000000
	.word 0xF6CC3601, 0xD170809, 0x64142A18, 0x30009800, 0x36031600
	.word 0x809F6CC, 0x2180D17, 0x84FF7C14, 0x16000000, 0x6053805
	.word 0x9F71C08, 0x180D1708, 0xFF7C1401, 0x84, 0x5380516
	.word 0xF71C0806, 0xB170809, 0x7C140618, 0x84FF, 0x38051600
	.word 0x1C080605, 0x30809F7, 0x61603B08, 0x805ED37, 0x2553513B
	.word 0x3B0805ED, 0xED015050, 0x403B0805, 0x5ED1346, 0x33333B08
	.word 0x805ECEF, 0xDD32323B, 0x3B0805EC, 0xECCB3131, 0x17030805
	.word 0x14011810, 0xFF82FF28, 0x1160000, 0x9F6CC36, 0x18101708
	.word 0xFF1A140B, 0xFF52, 0xCC360116, 0x170809F6, 0x14111810
	.word 0xFFB4FF7C, 0x3160000, 0x9F6CC36, 0x18101708, 0xFF721429
	.word 0xB0, 0xCC360516, 0x170809F6, 0x14001810, 0xFFACFF46
	.word 0x7160000, 0x9F6CC36, 0x18101708, 0xFF4E1433, 0xFF60
	.word 0xCC360316, 0x170809F6, 0x14021815, 0xFF60FF4E, 0x3160000
	.word 0x9F6CC36, 0x3B080308, 0xEDC16161, 0x513B0805, 0x5EDAC53
	.word 0x33333B08, 0x805ED9A, 0x8832323B, 0x3B0805ED, 0xED6F3131
	.word 0x4030805, 0xEDD3080E, 0xC170805, 0xD4140418, 0x100002FF
	.word 0x36011600, 0x809F6CC, 0xD180C17, 0xB4FFA814, 0x16000000
	.word 0xF6CC3601, 0xC170809, 0xA8141318, 0xB4FF, 0x36011600
	.word 0x809F6CC, 0x34180C17, 0xC8FFEC14, 0x16000000, 0x6053805
	.word 0x9F71C09, 0x18091708, 0xFFC21407, 0x10016A, 0xCC360716
	.word 0x30809F6, 0x805EDE0, 0x805EE37, 0xFF, 0x17271F08
	.word 0x5C1400, 0x3000B4, 0x83F0116, 0x3C051601, 0x83F0208
	.word 0x3C011605, 0x83F0608, 0x13324107, 0x160805EE, 0x8011509
	.word 0x3C091608, 0x33030808, 0x33103144, 0x330E3101, 0x330C3101
	.word 0x330A3101, 0x33083101, 0x33063101, 0x33043101, 0x33023101
	.word 0x8340901, 0x2C17271F, 0x9CFFC014, 0x16000000, 0x3083F03
	.word 0x3150B16, 0x9160308, 0xF080115, 0x83C0116, 0x5083F04
	.word 0x9F6CC36, 0x8, 0x805EE70, 0x805EE94, 0xFF
	.word 0x17271F08, 0xFFFA1400, 0x10000E, 0x83F0716, 0x2A181601
	.word 0x3C0A10C0, 0x83F0208, 0x36071603, 0x809F6CC, 0x17271F08
	.word 0xFFFA1423, 0x10FFF6, 0x83F0316, 0xF6CC3601, 0x809
	.word 0x805EEB8, 0x805EECE, 0xFF, 0x17271F08, 0xFFFA1400
	.word 0x10000E, 0x83F0716, 0xF6CC3601, 0x1F080809, 0x14231727
	.word 0xFFF6FFFA, 0x3160010, 0x3601083F, 0x809F6CC
off_805EEE4: .word dword_805EF00
	.word 0x805F015, 0x805F037, 0x805F06C, 0x805F088, 0x805F0C4
	.word 0xFF
dword_805EF00: .word 0x64633B08, 0x805EFEA, 0xD862603B, 0x3B0805EF, 0xEFC65351
	.word 0x503B0805, 0x5EFA250, 0x46403B08, 0x805EFB4, 0x4533323B
	.word 0x3B0805EF, 0xEF333131, 0x17030805, 0x14051815, 0x880004
	.word 0x7160000, 0x9F7E436, 0x8200408, 0x805EF90, 0x7E081E04
	.word 0x40805EF, 0xEF6C081C, 0x15170805, 0x7C140A18, 0x10FF
	.word 0x36071600, 0x809F6CC, 0x181517, 0x44FFFC14, 0x16000000
	.word 0xF6CC3605, 0x15170809, 0xBE140018, 0x20FF, 0x36031600
	.word 0x809F6CC, 0x11181517, 0x44FF4014, 0x16000000, 0xF6CC3601
	.word 0x15170809, 0xC142818, 0xFFE400, 0x36011600, 0x809F6CC
	.word 0x181517, 0xD4001414, 0x160000FF, 0xF6CC3605, 0x15170809
	.word 0xD4142D18, 0xFFB8FF, 0x36071600, 0x809F6CC, 0x181517
	.word 0xD4001414, 0x160000FF, 0xF6CC3605, 0x43170809, 0x5A141018
	.word 0x26FF, 0x10071600, 0xE900501, 0x805EFF7, 0x131C1725
	.word 0x5A141018, 0x26FF, 0x36011600, 0x809F6CC, 0x303B0803
	.word 0x5F01E32, 0x25130308, 0x3181C55, 0xA4006014, 0x16000000
	.word 0x5011002, 0xF02D0870, 0x8030805, 0x5933333B, 0x3B0805F0
	.word 0xF0473230, 0x17030805, 0x14021819, 0xFFC0FF42, 0x7160000
	.word 0x9F6CC36, 0x18191708, 0xFFDC140F, 0xFFBA, 0xCC360316
	.word 0x30809F6, 0x3B101708, 0xF077FF60, 0x4C030805, 0xFF381432
	.word 0xFFD8, 0xCC360716, 0x30809F6, 0x31313B08, 0x805F091
	.word 0x8740403, 0x805F0AA, 0x6180F17, 0x50FF6A14, 0x16000000
	.word 0xF6CC3607, 0xC040809, 0x5F0C308, 0x180F1708, 0x121407
	.word 0xFFE2, 0xCC360716, 0x30809F6, 0x31313B08, 0x805F0CD
	.word 0x80C0403, 0x805F0ED, 0xED087405, 0x170805F0, 0x1408182D
	.word 0xFFCE0012, 0x5160000, 0x9F6CC36, 0x308, 0x805F108
	.word 0x805F174, 0x805F1A7, 0x805F1F2, 0x805F23C, 0xFF
	.word 0x17271F08, 0xFF281400, 0x44, 0x83F0116, 0x15091601
	.word 0x160E0801, 0x2083C01, 0x1005083F, 0x1509160A, 0x16010805
	.word 0x6083C01, 0x1007083F, 0x1509160A, 0x16010805, 0x8083C01
	.word 0x1609083F, 0x163C1005, 0x807150F, 0x10031601, 0x3F021614
	.word 0x14100D08, 0x83F0316, 0x2A181680, 0x3C0A10C0, 0x83F8108
	.word 0x36031682, 0x809F6CC, 0x17271F09, 0xFF28140F, 0x4C
	.word 0x83F0116, 0x11160809, 0xE100115, 0x83C0116, 0xD083F0A
	.word 0x5150D16, 0x7160208, 0x3F0E083C, 0xCC360F08, 0x80809F6
	.word 0x5525271F, 0xFFF2141C, 0xA6, 0x83F0316, 0x15031603
	.word 0x160E2007, 0x20051502, 0x3F021604, 0x2160508, 0x1080515
	.word 0x83F0216, 0x15021607, 0x16010805, 0xB083F02, 0x163C10
	.word 0x6200115, 0x3150116, 0x83C0E20, 0x1F08030C, 0x1C552527
	.word 0xA6FFF214, 0x16000000, 0x3083F03, 0x3161E10, 0xC200715
	.word 0x5150216, 0x2160420, 0x1605083F, 0x8051502, 0x3F021601
	.word 0x2160708, 0x1080515, 0x83F0216, 0x161E100B, 0x20011500
	.word 0x15011606, 0x30E2003, 0x25271F08, 0xF2141C55, 0xA6FF
	.word 0x3F031600, 0x3C100308, 0x7150316, 0x2160A20, 0x4200515
	.word 0x83C0216, 0x5083F04, 0x5150216, 0x2160108, 0x1607083F
	.word 0x8051502, 0x3F021601, 0x160B08, 0x6200115, 0x3150116
	.word 0x30E20, 0x805F298, 0x805F2FA, 0x805F31F, 0xFF
	.word 0x17271F08, 0xFF7C1400, 0x42, 0x83F0116, 0x2A1A1601
	.word 0x3C1B16C0, 0x83F0208, 0x10011603, 0x1511163C, 0x16051001
	.word 0x4083C01, 0x1605083F, 0x161E1005, 0x805150D, 0x3C051602
	.word 0x83F0608, 0x3C001607, 0x83F0808, 0x15111609, 0x160B1001
	.word 0x10071517, 0x3C01160E, 0x83F0A08, 0xF6CC360B, 0x1F080809
	.word 0x140F1727, 0xFFE20012, 0x4160000, 0x1009083F, 0x3F05165A
	.word 0x7160B08, 0x3F0C083C, 0xCC360D08, 0x80809F6, 0x2D17271F
	.word 0xCE001214, 0x160000FF, 0xD083F05, 0x83C0316, 0xF083F0E
	.word 0x83C0516, 0x11083F10, 0x9F6CC36, 0x8, 0x805F350
	.word 0xFF, 0x17271F09, 0x181400, 0x42, 0x83F0516
	.word 0xF3893201, 0x15160805, 0x6100515, 0x1E100516, 0x83C0116
	.word 0x3083F02, 0xC02A1A16, 0x83C1B16, 0x5083F04, 0x9F6CC36
	.word 0x2310808, 0x4310133, 0x6310133, 0x8310133, 0xA310133
	.word 0xC310133, 0xE310133, 0x10310133, 0x310133, 0x34
off_805F3B0: .word dword_805F3D4
	.word 0x805F471, 0x805F4C8, 0x805F504, 0x805F527, 0x805F565
	.word 0x805F596, 0x805F5CD, 0xFF
dword_805F3D4: .word 0x64633B08, 0x805F446, 0xFD33323B, 0x3B0805F3, 0xF3EB3131
	.word 0x17030805, 0x14001815, 0xFFECFF28, 0x3160000, 0x9F6CC36
	.word 0x8280408, 0x805F436, 0x24081E04, 0x50805F4, 0xF4700814
	.word 0x2D170805, 0xE141418, 0x9800, 0x36031600, 0x809F6CC
	.word 0x14182D17, 0x34FF8E14, 0x16000000, 0xF6CC3607, 0x2D170809
	.word 0x46FFD214, 0x16000000, 0xF6CC3601, 0x43170809, 0xE141018
	.word 0xA200, 0x10071600, 0xE920501, 0x805F453, 0x131C1725
	.word 0xE141018, 0xA200, 0x36021600, 0x809F6CC, 0x513B0803
	.word 0x5F4B453, 0x50503B08, 0x805F4A1, 0x8831313B, 0x30805F4
	.word 0xC7080E04, 0x170805F4, 0x14021810, 0x90FF5A, 0x3160000
	.word 0x9F6CC36, 0x13101708, 0x8D142818, 0x90FF, 0x36051600
	.word 0x809F6CC, 0x18131017, 0xFF7A142D, 0x76, 0xCC360316
	.word 0x30809F6, 0x62603B08, 0x805F4F1, 0xD831313B, 0x30805F4
	.word 0x3080E04, 0x170805F5, 0x14041816, 0xFFF4FF70, 0x3160000
	.word 0x9F6CC36, 0x18161708, 0x101400, 0x9E, 0xCC360716
	.word 0x30809F6, 0x31313B08, 0x805F50D, 0x80E0403, 0x805F526
	.word 0x6180D17, 0xA4FFFA14, 0x16000000, 0xF6CC3607, 0x8030809
	.word 0x3033303B, 0x30805F5, 0x4B081C04, 0x130805F5, 0x181C5525
	.word 0x401416, 0xA4, 0xCC360216, 0x50809F6, 0xF5640828
	.word 0x25130805, 0xE2141C57, 0xA4FF, 0x36001600, 0x809F6CC
	.word 0xFD040803, 0x5F59511, 0x11FB0408, 0x805F575, 0x171D0503
	.word 0x805F595, 0x95016304, 0x170805F5, 0x14144C0F, 0x90FF3A
	.word 0x3160000, 0x9F6CC36, 0x3B080308, 0xF5B95351, 0x503B0805
	.word 0x5F5A650, 0x18170308, 0x14281813, 0x90FF7E, 0x1160000
	.word 0x9F6CC36, 0x13181708, 0x7A143218, 0x8AFF, 0x36071600
	.word 0x809F6CC, 0x29040803, 0x5F5FD1C, 0x1BE90408, 0x805F5DD
	.word 0x171D0503, 0x805F5FD, 0xFD016304, 0x170805F5, 0x14164C0C
	.word 0x98FF52, 0x3160000, 0x9F6CC36, 0x308, 0x805F61C
	.word 0x805F6B9, 0x805F6EE, 0x805F73C, 0x805F797, 0x805F7ED
	.word 0xFF, 0x17271F08, 0xFFAE1400, 0x4C, 0x83F0116
	.word 0x15091601, 0x16010801, 0x2083C01, 0x1603083F, 0x8011509
	.word 0x3C011604, 0x83F0408, 0x3C041605, 0x83F0608, 0x150D1607
	.word 0x16041005, 0x1003150B, 0x150D1603, 0x16051005, 0x1003150B
	.word 0x10031603, 0x60112214, 0x83C21DC, 0xB083F08, 0x13160A10
	.word 0x1080715, 0x83C0316, 0xF083F0C, 0x6CFF8E14, 0x3F000000
	.word 0x2161008, 0x3F11083C, 0x5161408, 0x4165A10, 0x3165A10
	.word 0x1618083F, 0x16781003, 0x16641004, 0x1A083F05, 0x9F6CC36
	.word 0x271F0908, 0xA8142C17, 0x98FF, 0x3F011600, 0x3F080F08
	.word 0x7161208, 0x3F13083C, 0xB161808, 0x1080315, 0x5150D16
	.word 0xF161008, 0xA080715, 0x83C0716, 0x1F080319, 0x142D1727
	.word 0x42FF24, 0x1160000, 0x1614083F, 0x10031513, 0x1511160C
	.word 0x160D1001, 0x15083C07, 0x1616083F, 0x17083C01, 0x1018083F
	.word 0x150F161E, 0x16010803, 0x16641007, 0x807150F, 0x3F051601
	.word 0x7161A08, 0x361B083C, 0x809F6CC, 0x25271F08, 0x44141C55
	.word 0xA200, 0x3F021600, 0x2160708, 0x14200515, 0x7150316
	.word 0x2100120, 0x83F0316, 0x28281009, 0x572500C6, 0x3C032E1C
	.word 0x83F0A08, 0x1503160B, 0x16010807, 0xD083F03, 0x7150316
	.word 0x3160120, 0x3F0E083C, 0x55250F08, 0x3F072E1C, 0xCC361008
	.word 0x80809F6, 0x5525271F, 0xFF24141C, 0x42, 0x83F0316
	.word 0x15011607, 0x160C2003, 0x20011500, 0x3F03160D, 0x14100908
	.word 0x2500C628, 0x32E1C57, 0x160B083F, 0x8071503, 0x3F031601
	.word 0x3160D08, 0x1200715, 0x83C0316, 0xF083F0E, 0x2E1C5525
	.word 0x10083F07, 0x9F6CC36, 0x271F0808, 0x141C5525, 0x42FF24
	.word 0x3160000, 0x1007083F, 0x1501161E, 0x160C2003, 0x20011500
	.word 0x1503160A, 0x16012007, 0x9083F03, 0x2500C628, 0x32E1C57
	.word 0x160B083F, 0x8071503, 0x3F031601, 0x3160D08, 0x1200715
	.word 0x83C0316, 0xF083F0E, 0x2E1C5525, 0x10083F07, 0x9F6CC36
	.word 0x8, 0x805F868, 0x805F8AD, 0x805F8D3, 0x805F921
	.word 0x805F974, 0x805F9B3, 0xFF, 0x17271F08, 0xFFB41400
	.word 0xE, 0x83F0316, 0xFF8E1403, 0x4C, 0x83F0116
	.word 0xFFB41404, 0xE, 0x83F0316, 0xFFA0140D, 0x9C
	.word 0x83F0116, 0x161E100E, 0x163C1003, 0x10083F05, 0x9F6CC36
	.word 0x271F0808, 0xC4140F17, 0xEFF, 0x3F031600, 0xB8140308
	.word 0xEFF, 0x4083F00, 0xEFFC414, 0x3F000000, 0x8030D08
	.word 0x2D17271F, 0xEFFD414, 0x16000000, 0x3083F03, 0xEFFC814
	.word 0x3F000000, 0xD4140408, 0xEFF, 0xD083F00, 0x9CFFB814
	.word 0x16000000, 0xE083F05, 0x3150B16, 0xD160108, 0x12080515
	.word 0x7150F16, 0x83C0808, 0x10083F0F, 0x9F6CC36, 0x271F0808
	.word 0xC4142A17, 0x8CFF, 0x3F071600, 0x11220908, 0x1021DC60
	.word 0xA083D14, 0x805F95C, 0xDC601122, 0x3D1E1021, 0xF95C0A08
	.word 0x1E100805, 0x5C0A083D, 0x20805F9, 0x805F932, 0x160B083C
	.word 0x803150F, 0x163C1002, 0x8031517, 0x15151601, 0x30E0801
	.word 0x25271F09, 0x2C141C55, 0x5AFF, 0x3F011600, 0x16080708
	.word 0x20031501, 0x1500160A, 0x16132001, 0x20071503, 0x3C031603
	.word 0x83F0808, 0x1503160B, 0x10020803, 0x1502163C, 0x3C0E0801
	.word 0x8030C08, 0x6025271F, 0x4141C, 0x40, 0x83F0016
	.word 0x10012E01, 0x10012E20, 0x3C001620, 0x83F0208, 0x10012E05
	.word 0x10012E20, 0x3C001620, 0x83F0608, 0xF6CC3607, 0x809
	.word 0x805FA00, 0x805FA1D, 0x805FA51, 0x805FA8D, 0xFF
	.word 0x17271F09, 0xFF2E1400, 0x48, 0x83F0116, 0x83C0805
	.word 0x7083F06, 0x9F6CC36, 0x271F0808, 0x8E140517, 0x4CFF
	.word 0x3F011600, 0xB160408, 0xB080315, 0x1150916, 0x8030C08
	.word 0x1017271F, 0xEFFC414, 0x16000000, 0x1083F03, 0x9F6CC36
	.word 0x271F0908, 0x141C5525, 0x4CFF28, 0x1160000, 0x803083F
	.word 0x3150116, 0x160B20, 0xD200115, 0x7150316, 0x3160920
	.word 0x83C3C10, 0x15011604, 0x16090803, 0x8011500, 0x5083C0C
	.word 0x271F0803, 0x141C6025, 0x400004, 0x160000, 0x2E01083F
	.word 0x2E201001, 0x16201001, 0x2083C00, 0x9F6CC36, 0x8
	.word 0x805FAD8, 0x805FB18, 0x805FB42, 0x805FB66, 0x805FB81
	.word 0x805FB9C, 0x805FBC9, 0x805FBF8, 0xFF, 0x17271F08
	.word 0xFF8E1400, 0x64, 0x83F0716, 0xFF8A1409, 0x8C
	.word 0x83F0316, 0x165A100A, 0x803150F, 0x3F011601, 0x13160C08
	.word 0x1100315, 0x5151516, 0x17160C10, 0xE100715, 0x30D083C
	.word 0x17271F08, 0xFF8E142D, 0x34, 0x83F0716, 0x3C031601
	.word 0x83F0208, 0x3C051603, 0x83F0408, 0x3C031605, 0x83F0608
	.word 0x1F080309, 0x1C602527, 0x40000414, 0x16000000, 0x7083F00
	.word 0x2010012E, 0x2010012E, 0x83C0016, 0xF6CC3608, 0x1F090809
	.word 0x1C572527, 0x74FF9614, 0x16000000, 0x9083F01, 0xB083F08
	.word 0x9F6CC36, 0x271F0908, 0x141C5725, 0x74FF7E, 0x1160000
	.word 0x809083F, 0x360B083F, 0x809F6CC, 0x25271F09, 0x50141C57
	.word 0xA400, 0x3F021600, 0x2A320A08, 0x160805FC, 0x20051502
	.word 0x15031614, 0x16032007, 0xC083F02, 0x9F6CC36, 0x271F0908
	.word 0x141C5725, 0xA40050
	.word 0x2160000, 0x100A083F, 0xFC2A321E, 0x2160805, 0x14200515
	.word 0x3150116, 0x2160120, 0x360C083F, 0x809F6CC, 0x25271F09
	.word 0x50141C57, 0xA400, 0x3F021600, 0x3C100A08, 0x5FC2A32
	.word 0x15021608, 0x16142005, 0x20071503, 0x3C021601, 0x83F0B08
	.word 0xF6CC360C, 0x31080809, 0x31013302, 0x31013304, 0x31013306
	.word 0x31013308, 0x3101330A, 0x3101330C, 0x3101330E, 0x31013310
	.word 0x3400, 0x805FC68, 0x805FCA0, 0x805FCD8, 0x805FCEF
	.word 0x805FD06, 0xFF, 0x17271F08, 0x201400, 0x60
	.word 0x83F0716, 0x3C051601, 0x83F0208, 0x160A1007, 0x2A011019
	.word 0xB72801, 0x83C022A, 0x47031008, 0x77280063, 0x36C02A00
	.word 0x809F6CC, 0x17271F08, 0xFF84142D, 0x64, 0x83F0316
	.word 0x3C011603, 0x83F0408, 0x15091605, 0x16060801, 0x807150F
	.word 0x15091603, 0x16030801, 0x6083C01, 0x3607083F, 0x809F6CC
	.word 0x25271F08, 0x90141C57, 0x18FF, 0x3F021600, 0xCC360108
	.word 0x80809F6, 0x5725271F, 0xFF68141C, 0x9E, 0x83F0216
	.word 0xF6CC3603, 0x1F080809, 0x1C572527, 0xA4FFE214, 0x16000000
	.word 0x5083F00, 0x9F6CC36, 0x8, 0x805FD4C, 0x805FD67
	.word 0x805FD7D, 0x805FDA6, 0x805FDCB, 0x805FDF0, 0xFF
	.word 0x805FE15, 0x805FE2B, 0x805FE41, 0xFF, 0x17271F08
	.word 0x201400, 0x60, 0x83F1B16, 0x3F041601, 0xCC360308
	.word 0x80809F6, 0x2D17271F, 0x4CFFCC14, 0x16000000, 0x1083F01
	.word 0x9F6CC36, 0x271F0908, 0x28142C17, 0x60FF, 0x3F011600
	.word 0x3F080508, 0xF160708, 0xC080715, 0x5150D16, 0x83C0608
	.word 0xF6CC3608, 0x1F080809, 0x1C572527, 0x18FF9014, 0x16000000
	.word 0x1083F02, 0x25017D28, 0x22E1C55, 0x3F02083C, 0xCC360308
	.word 0x80809F6, 0x5725271F, 0xFF68141C, 0x9E, 0x83F0216
	.word 0x17D2803, 0x2E1C5525, 0x4083C02, 0x3605083F, 0x809F6CC
	.word 0x25271F08, 0xE2141C57, 0xA4FF, 0x3F001600, 0x7D280508
	.word 0x1C552501, 0x83C002E, 0x7083F06, 0x9F6CC36, 0x271F0808
	.word 0xB8141517, 0xEFF, 0x3F031600, 0xCC361008, 0x80809F6
	.word 0x2D17271F, 0x4CFF8E14, 0x16000000, 0x10083F01, 0x9F6CC36
	.word 0x271F0808, 0x141C6025, 0x400004, 0x160000, 0x2E10083F
	.word 0x2E201001, 0x16201001, 0x11083C00, 0x3612083F, 0x809F6CC
	.word 0x805FE78, 0x805FE8E, 0x805FEA4, 0xFF, 0x17271F08
	.word 0xFFD21415, 0x4C, 0x83F0116, 0xF6CC3601, 0x1F090809
	.word 0x14151727, 0x8CFFD2, 0x1160040, 0x3601083F, 0x809F6CC
	.word 0x25271F08, 0x4141C60, 0x4000, 0x1B001600, 0x3610083F
	.word 0x809F6CC
off_805FEBC: .word byte_805FED8
	.word 0x805FF3B, 0x805FF56, 0x805FF8E, 0x805FFB0, 0x805FFD2
	.word 0xFF
byte_805FED8: .byte 0x8, 0x3B, 0x60, 0x62, 0x28, 0xFF, 0x5, 0x8, 0x3B, 0x50
	.byte 0x50, 0xEF, 0xFE, 0x5, 0x8, 0x3B, 0x31, 0x33, 0xF, 0xFF
	.byte 0x5, 0x8, 0x3, 0x4, 0x9, 0xC, 0x3A, 0xFF, 0x5, 0x8
	.byte 0x5, 0xC2, 0xC, 0x3A, 0xFF, 0x5, 0x8, 0x17, 0xD, 0x18
	.byte 0x14
byte_805FF01: .byte 0x14, 0x92, 0xFF, 0x70, 0xFF, 0x0, 0x0, 0x16, 0x7, 0x36
	.byte 0xCC, 0xF6, 0x9, 0x8, 0x5, 0x1E, 0x8, 0x3A, 0xFF, 0x5
	.byte 0x8, 0x17, 0xD, 0x18, 0x0, 0x14, 0xA4, 0xFF, 0x26, 0x0
	.byte 0x0, 0x0, 0x16, 0x3, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x17
	.byte 0xD, 0x18, 0x0, 0x14, 0x92, 0xFF, 0x38, 0x0, 0x0, 0x0
	.byte 0x16, 0x1, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x3, 0x8, 0x3B
	.byte 0x50, 0xFF, 0x44, 0xFF, 0x5, 0x8, 0x3, 0x17, 0x3C, 0x4C
	.byte 0x5, 0x14, 0xCC, 0xFF, 0x7A, 0xFF, 0x0, 0x0, 0x16, 0x1
	.byte 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x8, 0x3B, 0x51, 0x53, 0x78
	.byte 0xFF, 0x5, 0x8, 0x3B, 0x50, 0x50, 0x66, 0xFF, 0x5, 0x8
	.byte 0x3, 0x17, 0xF, 0x18, 0x19, 0x14, 0xA0, 0xFF, 0xBE, 0x0
	.byte 0x0, 0x0, 0x16, 0x1, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x17
	.byte 0xF, 0x18, 0x1E, 0x14, 0xA8, 0xFF, 0x54, 0x0, 0x0, 0x0
	.byte 0x16, 0x3, 0x38, 0x3, 0x6, 0x9, 0xEC, 0xF6, 0x9, 0x8
	.byte 0x3, 0x8, 0x3B, 0x32, 0x33, 0x97, 0xFF, 0x5, 0x8, 0x3
	.byte 0x5, 0x1E, 0x8, 0xAF, 0xFF, 0x5, 0x8, 0x25, 0x62, 0x1C
	.byte 0x14, 0x6, 0x0, 0xBA, 0x0, 0x0, 0x0, 0x16, 0x0, 0x36
	.byte 0xCC, 0xF6, 0x9, 0x8, 0x3, 0x8, 0x3B, 0x32, 0x33, 0xB9
	.byte 0xFF, 0x5, 0x8, 0x3, 0x5, 0x1E, 0x8, 0xD1, 0xFF, 0x5
	.byte 0x8, 0x25, 0x57, 0x1C, 0x14, 0xF0, 0xFF, 0xDA, 0x0, 0x0
	.byte 0x0, 0x2E, 0x3, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x3, 0x8
	.byte 0x3B, 0x32, 0x33, 0xDB, 0xFF, 0x5, 0x8, 0x3, 0x5, 0x1E
	.byte 0x8, 0xF3, 0xFF, 0x5, 0x8, 0x25, 0x57, 0x1C, 0x14, 0xF0
	.byte 0xFF, 0x9A, 0x0, 0x0, 0x0, 0x2E, 0x1, 0x36, 0xCC, 0xF6
	.byte 0x9, 0x8, 0x3, 0xC, 0x0, 0x6, 0x8, 0x4C, 0x0, 0x6
	.byte 0x8, 0x63, 0x0, 0x6, 0x8, 0x79, 0x0, 0x6, 0x8, 0x9B
	.byte 0x0, 0x6, 0x8, 0xFF, 0x0, 0x0, 0x0, 0x8, 0x1F, 0x27
	.byte 0x17, 0x0, 0x14, 0x3C, 0xFF, 0xEE, 0x0, 0x0, 0x0, 0x16
	.byte 0x1, 0x3F, 0x8, 0x1, 0x16, 0x11, 0x15, 0x1, 0x10, 0xD
	.byte 0x16, 0x17, 0x15, 0x7, 0x10, 0x7, 0x16, 0x1, 0x3C, 0x8
	.byte 0x2, 0x3F, 0x8, 0x5, 0x16, 0x7, 0x3C, 0x8, 0x6, 0x3F
	.byte 0x8, 0x7, 0x16, 0x17, 0x15, 0x7, 0x10, 0xE, 0x16, 0x7
	.byte 0x3C, 0x8, 0x8, 0x3F, 0x8, 0x9, 0x36, 0xCC, 0xF6, 0x9
	.byte 0x8, 0x8, 0x1F, 0x27, 0x25, 0x62, 0x1C, 0x14, 0x6, 0x0
	.byte 0xBA, 0x0, 0x0, 0x0, 0x16, 0x0, 0x3F, 0x8, 0x1, 0x36
	.byte 0xCC, 0xF6, 0x9, 0x8, 0x8, 0x1F, 0x27, 0x17, 0xD, 0x14
	.byte 0xA4, 0xFF, 0x26, 0x0, 0x0, 0x0, 0x16, 0x3, 0x3F, 0x8
	.byte 0x1, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x8, 0x1F, 0x27, 0x25
	.byte 0x55, 0x1C, 0x14, 0xF0, 0xFF, 0xDA, 0x0, 0x0, 0x0, 0x16
	.byte 0x3, 0x3F, 0x8, 0x3, 0x28, 0xC6, 0x0, 0x25, 0x57, 0x1C
	.byte 0x2E, 0x3, 0x3F, 0x8, 0x5, 0x36, 0xCC, 0xF6, 0x9, 0x8
	.byte 0x8, 0x1F, 0x27, 0x25, 0x55, 0x1C, 0x14, 0xF0, 0xFF, 0x9A
	.byte 0x0, 0x0, 0x0, 0x16, 0x1, 0x3F, 0x8, 0x3, 0x10, 0xA
	.byte 0x28, 0xC6, 0x0, 0x25, 0x57, 0x1C, 0x2E, 0x1, 0x3C, 0x8
	.byte 0x4, 0x3F, 0x8, 0x5, 0x36, 0xCC, 0xF6, 0x9, 0x8, 0x0
	.byte 0x0
off_80600C4: .word dword_80600D8
	.word 0x8060111, 0x806012C, 0x8060147, 0xFF
dword_80600D8: .word 0x3B191708, 0xE3FF60, 0x5030806, 0x1101120, 0xA4C0806
	.word 0xE4FF4C14, 0x160000FF, 0x5011003, 0xF51122, 0x3E170806
	.word 0x4C140A4C, 0xFFE4FF, 0x36031600, 0x809F6CC, 0x643B0803
	.word 0x6011A64, 0x3170308, 0x1C140018, 0xB400, 0x36051600
	.word 0x809F6CC, 0x64643B08, 0x8060135, 0x181A1703, 0xFFFE1401
	.word 0xB4, 0xCC360116, 0x80809F6, 0x5064643B, 0x3080601
	.word 0x2180D17, 0x94001E14, 0x16000000, 0xF6CC3603, 0x809
	.word 0x806016C, 0xFF, 0x17271F08, 0xFF5C1400, 0x4C
	.word 0x83F0116, 0xF6CC3601, 0x809
off_8060184: .word dword_8060194
	.word dword_80601B4
	.word dword_8060214
	.word dword_8060244
dword_8060194: .word 0x4140000, 0x0, 0x0, 0x0
	.word 0x5200105, 0xFFA80000, 0xDC0000, 0x200000
dword_80601B4: .word 0x7000205, 0xFFB40000, 0x800000, 0x0
	.byte 0x5, 0x3, 0x0, 0x1, 0x0, 0x0, 0x20, 0xFF, 0x0, 0x0, 0x4A, 0xFF, 0x0
	.byte 0x0, 0x20, 0x0, 0x5, 0x0, 0x20, 0x5, 0x0, 0x0, 0x18, 0x0, 0x0, 0x0
	.byte 0xDE, 0xFF, 0x0, 0x0, 0x60, 0x0, 0x5, 0x1, 0x1C, 0x3, 0x0, 0x0, 0xF8
	.byte 0xFE, 0x0, 0x0, 0x68, 0xFF, 0x0, 0x0, 0x80, 0xFF, 0x5, 0x1, 0x1C, 0x3
	.byte 0x0, 0x0, 0xF8, 0xFE, 0x0, 0x0, 0x68, 0xFF, 0x0, 0x0, 0xE0, 0xFF, 0x5
	.byte 0x3, 0x0, 0x7, 0x0, 0x0
byte_806020A: .byte 0xD4, 0xFF, 0x0, 0x0, 0x5E, 0x1, 0x0, 0x0, 0x0, 0x0
dword_8060214: .word 0x3000105, 0x540000, 0xFF580000, 0x600000, 0x51C0305
	.word 0xAE0000, 0xAC0000, 0x200000, 0x31C0305, 0xFFB40000
	.word 0xFEF20000, 0x200000
dword_8060244: .word 0x3000105, 0x540000, 0xFFEC0000, 0xFF800000, 0x51C0205
	.word 0x580000, 0x4C0000, 0x0
	.word 0x31C0205, 0xFF640000, 0xFFA80000, 0x0
	.word 0x5000105, 0xFFF20000, 0xFEDA0000, 0x0
off_8060284: .word unk_3001A20
	.byte 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF, 0xFF, 0x18, 0x43, 0x56
	.byte 0x8, 0x23, 0x0, 0x0, 0x0, 0x38, 0x43, 0x56, 0x8, 0x1E, 0x0
	.byte 0x0, 0x0, 0x1, 0x0, 0x0, 0x0
byte_80602A4: .byte 0x40, 0x1A, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF, 0xFF
	.byte 0x38, 0x9D, 0x56, 0x8, 0x2, 0x0, 0x0, 0x0, 0x58, 0x9D, 0x56, 0x8
	.byte 0x2, 0x0, 0x0, 0x0, 0x78, 0x9D, 0x56, 0x8, 0x2, 0x0, 0x0, 0x0
	.byte 0x1, 0x0, 0x0, 0x0
byte_80602CC: .byte 0x60, 0x1A, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0, 0x0, 0x1, 0xFF, 0xFF
	.byte 0x9C, 0x9D, 0x56, 0x8, 0xD, 0x0, 0x0, 0x0, 0xBC, 0x9D, 0x56, 0x8
	.byte 0xD, 0x0, 0x0, 0x0, 0xDC, 0x9D, 0x56, 0x8, 0xD, 0x0, 0x0, 0x0
	.byte 0xBC, 0x9D, 0x56, 0x8, 0xD, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x0
byte_80602FC: .byte 0xC0, 0x1A, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF, 0xFF
	.byte 0x78, 0xE4, 0x56, 0x8, 0x10, 0x0, 0x0, 0x0, 0x98, 0xE4, 0x56, 0x8
	.byte 0x10, 0x0, 0x0, 0x0, 0xB8, 0xE4, 0x56, 0x8, 0x10, 0x0, 0x0, 0x0
	.byte 0xD8, 0xE4, 0x56, 0x8, 0x10, 0x0, 0x0, 0x0, 0x1, 0x0, 0x0, 0x0
byte_806032C: .byte 0xC0, 0x1A, 0x0, 0x3, 0x20, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF, 0xFF
	.byte 0x2C, 0x2D, 0x57, 0x8, 0x4, 0x0, 0x0, 0x0, 0x4C, 0x2D, 0x57, 0x8
	.byte 0x4, 0x0, 0x0, 0x0, 0x6C, 0x2D, 0x57, 0x8, 0x4, 0x0, 0x0, 0x0
	.byte 0x8C, 0x2D, 0x57, 0x8, 0x4, 0x0, 0x0, 0x0, 0xAC, 0x2D, 0x57, 0x8
	.byte 0x4, 0x0, 0x0, 0x0, 0xCC, 0x2D, 0x57, 0x8, 0x4, 0x0, 0x0, 0x0
	.byte 0x1, 0x0, 0x0, 0x0
/*For debugging purposes, connect comment at any range!*/
