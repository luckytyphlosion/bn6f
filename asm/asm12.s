.include "asm/asm12.inc"

	thumb_func_start sub_806D8F8
sub_806D8F8:
	push {r4-r7,lr}
	mov r7, r10
	ldr r0, off_806D950 // =off_806D6B0 
	ldr r1, [r7,#oToolkit_Unk2011bb0_Ptr]
	ldrb r2, [r5,#5]
	lsl r4, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1,#0x14]
	bl sub_806DA58
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_803037C
	ldrb r0, [r5,#4]
	ldrb r1, [r5,#5]
	bl sub_8030AA4
	ldr r0, [r5,#0x24]
	ldr r1, [r5,#0x28]
	ldr r2, [r5,#0x2c]
	ldrb r3, [r5,#4]
	ldrb r4, [r5,#5]
	bl sub_802FF4C
	bl sub_8030472
	ldr r0, off_806D954 // =unk_2037800 
	bl sub_80028D4
	ldrb r1, [r5,#5]
	lsl r1, r1, #2
	ldr r0, off_806D958 // =off_806D95C 
	ldr r0, [r0,r1]
	bl sub_8002906
	bl chatbox_uncomp_803FD08 // () -> int
	bl sub_806DCD4
	bl sub_8034FB8
	pop {r4-r7,pc}
off_806D950: .word off_806D6B0
off_806D954: .word unk_2037800
off_806D958: .word off_806D95C
off_806D95C: .word dword_806D99C
	.word 0x806D9A2, 0x806D9A6, 0x806D9B0, 0x806D9B8, 0x806D9BC
	.word 0x806D9C2, 0x806D9CA, 0x806D9D2, 0x806D9D6, 0x806D9DC
	.word 0x806D9E0, 0x806D9E6, 0x806D9EC, 0x806D9F2, 0x806D9F8
dword_806D99C: .word 0x121C061C, 0x61CFFFF, 0x1B1CFFFF, 0x61C1C1C, 0xFFFF121C
	.word 0x61C291C, 0xFFFF121C, 0xFFFF061C, 0x121C061C, 0x291CFFFF
	.word 0x121C061C, 0x5E1CFFFF, 0x121C061C, 0x61CFFFF, 0x5C1CFFFF
	.word 0xFFFF061C, 0xFFFF061C, 0x61C5C1C, 0x5C1CFFFF, 0xFFFF061C
	.word 0x61C5C1C, 0x5C1CFFFF, 0xFFFF061C, 0xFFFF061C
	thumb_func_end sub_806D8F8

	thumb_func_start sub_806D9FC
sub_806D9FC:
	push {lr}
	lsl r1, r1, #2
	ldr r0, off_806DA0C // =off_806DA10 
	ldr r0, [r0,r1]
	bl sub_8002354
	pop {pc}
	.balign 4, 0x00
off_806DA0C: .word off_806DA10
off_806DA10: .word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
	.word off_806DA50
off_806DA50: .word byte_806D820
	.word 0xFFFFFFFF
	thumb_func_end sub_806D9FC

	thumb_func_start sub_806DA58
sub_806DA58:
	push {r4-r7,lr}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #4
	ldr r7, off_806DA8C // =off_806DA90 
	add r7, r7, r1
	ldr r0, [r7]
	ldr r1, [r7,#4]
	ldr r2, [r7,#8]
	bl sub_800195C
	bl sub_8001780
	ldr r1, [r7,#0xc]
	orr r0, r1
	bl sub_8001778
	ldr r0, off_806DB90 // =off_806DB94 
	ldrb r1, [r5,#oGameState_MapNumber]
	lsl r1, r1, #2
	ldr r0, [r0,r1]
	bl sub_80304E8
	pop {r4-r7,pc}
	.balign 4, 0x00
off_806DA8C: .word off_806DA90
off_806DA90: .word nullsub_39+1
	.word sub_80019D0+1
	.word 0x3005CD9, 0x800, 0x8001AB5, 0x80019D1, 0x3005CD9
	.word 0x800, 0x8001AB5, 0x80019D1, 0x3005CD9, 0x800
	.word 0x8001AB5, 0x80019D1, 0x3005CD9, 0x800, 0x8001AB5
	.word 0x80019D1, 0x3005CD9, 0x800, 0x8001AB5, 0x80019D1
	.word 0x3005CD9, 0x800, 0x8001AB5, 0x80019D1, 0x3005CD9
	.word 0x800, 0x8001AB5, 0x80019D1, 0x3005CD9, 0x800
	.word 0x8001AB5, 0x80019D1, 0x3005CD9, 0x800, 0x8001AB5
	.word 0x80019D1, 0x3005CD9, 0x800, 0x8001AB5, 0x80019D1
	.word 0x3005CD9, 0x800, 0x8001AB5, 0x80019D1, 0x3005CD9
	.word 0x800, 0x8001AB5, 0x80019D1, 0x3005CD9, 0x800
	.word 0x8001AB5, 0x80019D1, 0x3005CD9, 0x800, 0x8001AB5
	.word 0x80019D1, 0x3005CD9, 0x800, 0x8001AB5, 0x80019D1
	.word 0x3005CD9, 0x800
off_806DB90: .word off_806DB94
off_806DB94: .word off_806DBD4
	.word off_806DBF0
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBF0
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBD4
	.word off_806DBF0
off_806DBD4: .word off_8616598
	.word 0x6008020, 0x8616634, 0x1800, 0x8616760, 0x3001960
	.word 0x20
off_806DBF0: .word off_8616598
	.word 0x6008020, 0x8616634, 0x1800, 0x8616EC4, 0x3001960
	.word 0x20
	thumb_func_end sub_806DA58

	thumb_func_start sub_806DC0C
sub_806DC0C:
	push {r4-r7,lr}
	push {r0,r1}
	mov r0, #0
	mov r1, #0x8e
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	mov r0, #0
	mov r1, #0x8f
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {r0,r1}
	mov r5, r10
	ldr r5, [r5,#oToolkit_GameStatePtr]
	ldrb r6, [r5,#oGameState_MapNumber]
	lsl r6, r6, #2
	ldr r7, off_806DC34 // =off_806DC38 
	ldr r7, [r7,r6]
	mov lr, pc
	bx r7
	pop {r4-r7,pc}
off_806DC34: .word off_806DC38
off_806DC38: .word nullsub_70+1
	.word sub_806DC7A+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word sub_806DC98+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word nullsub_70+1
	.word sub_806DCB6+1
	thumb_func_end sub_806DC0C

	thumb_local_start
nullsub_70:
	mov pc, lr
	thumb_func_end nullsub_70

	thumb_local_start
sub_806DC7A:
	push {lr}
	cmp r0, #2
	bne loc_806DC86
	cmp r1, #9
	bne loc_806DC86
	pop {pc}
loc_806DC86:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0x8f
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {pc}
	thumb_func_end sub_806DC7A

	thumb_local_start
sub_806DC98:
	push {lr}
	cmp r0, #4
	bne loc_806DCA4
	cmp r1, #0
	bne loc_806DCA4
	pop {pc}
loc_806DCA4:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0x8f
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {pc}
	thumb_func_end sub_806DC98

	thumb_local_start
sub_806DCB6:
	push {lr}
	cmp r0, #5
	bne loc_806DCC2
	cmp r1, #0
	bne loc_806DCC2
	pop {pc}
loc_806DCC2:
	mov r0, #0
	mov r1, #0x8e
	bl ClearEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	// entryIdx
	mov r0, #0
	// byteFlagIdx
	mov r1, #0x8f
	bl SetEventFlagFromImmediate // (u8 entryIdx, u8 byteFlagIdx) -> void
	pop {pc}
	thumb_func_end sub_806DCB6

	thumb_func_start sub_806DCD4
sub_806DCD4:
	push {lr}
	mov r0, r10
	ldr r0, [r0,#oToolkit_GameStatePtr]
	ldrb r0, [r0,#oGameState_MapNumber]
	lsl r0, r0, #2
	ldr r1, off_806DCE8 // =pt_806DCEC 
	ldr r0, [r1,r0]
	bl sub_8003570
	pop {pc}
off_806DCE8: .word pt_806DCEC
pt_806DCEC:
	// <endpool> <endfile>
	.word dword_806DD2C
	.word dword_806DD44
	.word dword_806DD84
	.word dword_806DD9C
	.word dword_806DDB4
	.word dword_806DDCC
	.word dword_806DDE4
	.word dword_806DDFC
	.word dword_806DE3C
	.word dword_806DE54
	.word dword_806DE80
	.word dword_806DEC0
	.word dword_806DEEC
	.word dword_806DF18
	.word dword_806DF44
	.word dword_806DF70
	thumb_func_end sub_806DCD4

/*For debugging purposes, connect comment at any range!*/
