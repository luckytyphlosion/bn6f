
	.macro navi_stats_struct, label:req, struct_entry=label_struct_entry, set_struct_start_address=set_struct_start_address
    // type: struct NaviStats
	\set_struct_start_address \label
	set_struct_label \struct_entry, \label
	u8 Unk_00 // loc=0x0
	u8 Attack // loc=0x1
	u8 Speed // loc=0x2
	u8 Charge // loc=0x3
	u8 NormalShot // loc=0x4
	u8 ChargeShot // loc=0x5
	u8 FstBarr // loc=0x6
	u8 BLeftAbility // loc=0x7
	u8 Unk_08 // loc=0x8
	u8 RegUP // loc=0x9
	u8 CustomLevel // loc=0xa
	u8 MegaLevel // loc=0xb
	u8 GigaLevel // loc=0xc
	u8 Unk_0d // loc=0xd
	u8 Mood // loc=0xe
	struct_org 0x12
	u8 Unk_12 // loc=0x12
	struct_org 0x18
	u8 Unk_18 // loc=0x18
	u8 Unk_19 // loc=0x19
	struct_org 0x1b
	u8 FloatShoes // loc=0x1b
	u8 AirShoes // loc=0x1c
	u8 UnderSht // loc=0x1d
	struct_org 0x20
	u8 Unk_20 // loc=0x20
	u8 BeastOutCounter // loc=0x21
	struct_org 0x23
	u8 SuperArmor // loc=0x23
	struct_org 0x25
	u8 Humor // loc=0x25
	u8 Unk_26 // loc=0x26
	u8 Unk_27 // loc=0x27
	u8 Unk_28 // loc=0x28
	u8 NaviIndex // loc=0x29
	struct_org 0x2c
	u8 Transformation // loc=0x2c
	u8 Unk_2d // loc=0x2d
	u8 Folder1Reg // loc=0x2e
	u8 Folder2Reg // loc=0x2f
	u8 Folder3Reg // loc=0x30
	u8 ProcessingBug // loc=0x31
	struct_org 0x39
	u8 Unk_39 // loc=0x39
	struct_org 0x3e
	u16 MaxBaseHP // loc=0x3e
	u16 CurHP // loc=0x40
	u16 MaxHP // loc=0x42
	struct_org 0x46
	u16 Unk_46 // loc=0x46
	u16 Unk_48 // loc=0x48
	u16 Unk_4a // loc=0x4a
	u8 Unk_4c // loc=0x4c
	struct_org 0x50
	u16 ChipRecovery // loc=0x50
	struct_org 0x56
	u8 Folder1Tag1 // loc=0x56
	u8 Folder1Tag2 // loc=0x57
	u8 Folder2Tag1 // loc=0x58
	u8 Folder2Tag2 // loc=0x59
	u8 Folder3Tag1 // loc=0x5a
	u8 Folder3Tag2 // loc=0x5b
	struct_org 0x5f
	u8 Poem // loc=0x5f
	u8 ChipShuffle // loc=0x60
	struct_org 0x63
	u8 TurnsUntilCustBugActivates // loc=0x63
	u0 Size // loc=0x64
	u0 End // loc=0x64
	restore_struct_label
	.endm

	def_struct_offsets navi_stats_struct, oNaviStats
