import ctypes

rhd_rhs_regex = r"^(r[0-9]|r1[0-2]|sp|lr|pc), *(r[0-9]|r1[0-2]|sp|lr|pc)(?!,)$"
rd_rs_regex = r"^(r[0-7]), *(r[0-7])(?!,)$"
rd_rs_imm_regex = r"^(r[0-7]), *(r[0-7]), *(#[^,]+)(?!,)$"
rd_rs_rn_regex = r"^(r[0-7]), *(r[0-7]), *(r[0-7])$"
rd_imm_regex = r"^(r[0-7]), *(#[^,]+)(?!,)$"
rd_sp_imm_regex = r"^(r[0-7]), *sp, *(#[^,]+)(?!,)$"
sp_or_sp_sp_imm_regex = r"^(sp, *){1,2}(#[^,]+)(?!,)$"
rhs_regex = r"^(r[0-9]|r1[0-2]|sp|lr|pc)$"
rd_label_regex = r"^(r[0-7]), *([^,]+)(?!,)$"
rd_pool_regex = r"^(r[0-7]), *([^,]+)(?!,)$"
rd_deref_rb_ro_regex = r"^(r[0-7]), *\[ *(r[0-7]), *(r[0-7])\]$"
rd_deref_rb_imm_regex = r"^(r[0-7]), *\[ *(r[0-7]), *(#[^\]]+)\]$"
rd_deref_sp_imm_regex = r"^(r[0-7]), *\[ *sp, *(#[^\]]+)\]$"
rlist_regex = r"^({[^}]+})$"
rb_excl_rlist_regex = r"^(r[0-7])!, *({[^}]+})$"
label_or_imm_regex = r"^(.+)$"

def assert_valid_datatype(datatype, fileline):
    if not (datatype1.type == DataType.UNKNOWN or datatype1.type == DataType.PRIMITIVE or datatype1.type == DataType.POINTER):
        fileline_error("Invalid DataType constant of %s!" % datatype.type, fileline)
    return
    
def assert_valid_datatypes(datatype1, datatype2, fileline):
    if not ((datatype1.type == DataType.UNKNOWN or datatype1.type == DataType.PRIMITIVE or datatype1.type == DataType.POINTER) and (datatype2.type == DataType.UNKNOWN or datatype2.type == DataType.PRIMITIVE or datatype1.type == DataType.POINTER)):
       fileline_error("Invalid DataType constant found! (1: %s, 2: %s)" % (datatype1.type, datatype2.type), fileline)
    return
        
def fileline_error(error_msg, fileline):
    raise RuntimeError("%s:%s: %s" % fileline.filename, fileline.line_num, error_msg)

def evaluate_reg_or_imm_require_primitive(registers, reg_or_imm, fileline):
    if reg_or_imm.startswith("#"):
        imm_value = evaluate_sym_or_num_error_if_undefined(reg_or_imm[1:], fileline)
        return Primitive(Size.BYTE, imm_value).wrap()
    else:
        datatype = registers[reg_or_imm][-1]
        if datatype.type == DataType.UNKNOWN:
            datatype.ref = Primitive(Size.WORD)
        elif datatype.type != DataType.PRIMITIVE:
            fileline_error("Expected register of primitive type, got register of type \"%s\" instead!" % datatype.type, fileline)
        return datatype
        
def evaluate_reg_or_imm(registers, reg_or_imm, fileline):
    if reg_or_imm.startswith("#"):
        imm_value = evaluate_sym_or_num_error_if_undefined(reg_or_imm[1:], fileline)
        return Primitive(Size.BYTE, imm_value).wrap()
    else:
        return registers[reg_or_imm][-1]

def evaluate_imm_sym_or_num_error_if_undefined(imm_sym_or_num, fileline):
    if not reg_or_imm.startswith("#"):
        fileline_error("Immediate argument \"%s\" is not prefixed with #!" % imm_sym_or_num, fileline)
    
    return evaluate_sym_or_num_error_if_undefined(imm_sym_or_num[1:], fileline)

def evaluate_sym_or_num_error_if_undefined(sym_or_num, fileline):
    try:
        sym_value = evaluate_sym_or_num(sym_or_num)
    except KeyError:
        fileline_error("Could not evaluate undefined symbol \"%s\"!" % sym_or_num, fileline)
    return sym_value

def evaluate_sym_or_num(sym_or_num):
    global syms    
    try:
        return int(sym_or_num, 0)
    except ValueError:
        return syms[sym_or_num].value

def order_datatypes(datatype1, datatype2):
    if datatype1.type < datatype2.type:
        datatype_weak = datatype1
        datatype_strong = datatype2
    else:
        datatype_weak = datatype2
        datatype_strong = datatype1
    
    return (datatype_weak, datatype_strong)

def read_ordered_and_unordered_alu_args(opcode_params, funcstate):
    dest_datatype = funcstate.regs[opcode_params[0]][-1]
    source_datatype = funcstate.regs[opcode_params[1]][-1]
    return order_datatypes(dest_datatype, source_datatype) + (dest_datatype, source_datatype)

def read_ordered_alu_args(opcode_params, funcstate):
    dest_datatype = funcstate.regs[opcode_params[0]][-1]
    source_datatype = funcstate.regs[opcode_params[1]][-1]
    return order_datatypes(dest_datatype, source_datatype)

def read_alu_args(opcode_params, funcstate):
    dest_datatype = funcstate.regs[opcode_params[0]][-1]
    source_datatype = funcstate.regs[opcode_params[1]][-1]
    return dest_datatype, source_datatype

def lsl_imm_opcode_function(opcode_params, funcstate, fileline):
    do_triple_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], lambda a, b: a << b, fileline)
    return True

def lsl_reg_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a << b, fileline)
    return True
    
def lsr_imm_opcode_function(opcode_params, funcstate, fileline):
    do_triple_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], lambda a, b: a >> b, fileline)
    return True

def lsr_reg_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a >> b, fileline)
    return True

def asr_imm_opcode_function(opcode_params, funcstate, fileline):
    do_triple_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], lambda val, shift: ctypes.c_uint32(ctypes.c_int32(val).value >> shift).value, fileline)
    return True

def asr_reg_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda val, shift: ctypes.c_uint32(ctypes.c_int32(val).value >> shift).value, fileline)
    return True

def do_double_arg_numeric_operation(registers, dest_reg, source_reg, callback, fileline):
    do_triple_arg_numeric_operation(registers, dest_reg, dest_reg, source_reg, callback, fileline)

def do_triple_arg_numeric_operation(registers, dest_reg, source_reg, operand_reg_or_imm, callback, fileline):
    source_datatype = registers[source_reg][-1]
    if source_datatype.type == DataType.UNKNOWN:
        source_datatype.ref = Primitive(Size.WORD)
    elif source_datatype.type == DataType.POINTER:
        fileline_error("Tried performing numeric operation on pointer!", fileline)

    immediate_value = evaluate_reg_or_imm_require_primitive(registers, operand_reg_or_imm, fileline)

    try:
        new_value = callback(source_datatype.ref.value, immediate_value.ref.value)
    except TypeError:
        new_value = NaN

    new_dest_datatype = Primitive(Size.UNKNOWN, new_value)
    registers[dest_reg].append(RegisterInfo(new_dest_datatype, fileline))

def add_rd_rs_rn_opcode_function(opcode_params, funcstate, fileline):
    do_triple_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], add_datatypes, fileline)
    return True

def add_rd_rs_imm_opcode_function(opcode_params, funcstate, fileline):
    do_triple_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], add_datatypes, fileline)
    return True

def add_rd_imm_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], add_datatypes, fileline)
    return True

def add_rd_rs_opcode_function(opcode_params, funcstate, fileline):
    if opcode_params[1] == "sp":
        fileline_error("Found instance of add rHS, sp", fileline)
    do_double_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], add_datatypes, fileline)
    return True

def add_rd_sp_imm_opcode_function(opcode_params, funcstate, fileline):
    immediate_value = evaluate_imm_sym_or_num_error_if_undefined(opcode_params[2], fileline)
    new_sp = copy.deepcopy(funcstate.regs["sp"][-1])
    new_sp.ref.add_offset(immediate_value)
    funcstate.regs[opcode_params[0]].append(RegisterInfo(new_sp, fileline))
    return True

def add_sp_opcode_function(opcode_params, funcstate, fileline):
    sp_offset = evaluate_imm_sym_or_num_error_if_undefined(opcode_params[2], fileline)
    add_offset_to_sp(funcstate.regs, sp_offset, fileline)
    return True

def sub_rd_rs_rn_opcode_function(opcode_params, funcstate, fileline):
    do_triple_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], subtract_datatypes, fileline)
    return True

def sub_rd_rs_imm_opcode_function(opcode_params, funcstate, fileline):
    do_triple_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], opcode_params[2], subtract_datatypes, fileline)
    return True

def sub_rd_imm_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], subtract_datatypes, fileline)
    return True

def sub_rd_rs_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_operation(funcstate.regs, opcode_params[0], opcode_params[1], subtract_datatypes, fileline)
    return True

def sub_sp_opcode_function(opcode_params, funcstate, fileline):
    sp_offset = evaluate_imm_sym_or_num_error_if_undefined(opcode_params[2], fileline) * -1
    add_offset_to_sp(funcstate.regs, sp_offset, fileline)
    return True

def add_offset_to_sp(registers, sp_offset, fileline):
    new_sp = copy.deepcopy(registers["sp"][-1])
    new_sp.ref.add_offset(sp_offset)
    registers["sp"].append(RegisterInfo(new_sp, fileline))
    return

def mov_imm_opcode_function(opcode_params, funcstate, fileline):
    imm_value = evaluate_imm_sym_or_num_error_if_undefined(opcode_params[1], fileline)
    new_dest_reg = Primitive(Size.BYTE, imm_value).wrap()
    funcstate.regs[opcode_params[0]].append(RegisterInfo(new_dest_reg, fileline))
    return True

def mov_reg_opcode_function(opcode_params, funcstate, fileline):
    new_dest_reg = copy.deepcopy(funcstate.regs[opcode_params[1]][-1])
    funcstate.regs[opcode_params[0]].append(RegisterInfo(new_dest_reg, fileline))
    return True

def cmp_imm_opcode_function(opcode_params, funcstate, fileline):
    dest_datatype = funcstate.regs[opcode_params[1]][-1]

    assert_valid_datatype(dest_datatype, fileline)

    if dest_datatype.type == DataType.UNKNOWN:
        dest_datatype.ref = Primitive(Size.WORD)
    elif dest_datatype.type == DataType.POINTER:
        fileline_error("Context information: cmp pointer, #imm", fileline)
    return True

def cmp_reg_opcode_function(opcode_params, funcstate, fileline):
    do_tst_or_cmp_reg_opcode(opcode_params, funcstate, "cmp", fileline)
    return True

def and_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a & b, fileline)
    return True

def eor_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a ^ b, fileline)
    return True

def adc_opcode_function(opcode_params, funcstate, fileline):
    fileline_error("adc not implemented!", fileline)
    return True

def sbc_opcode_function(opcode_params, funcstate, fileline):
    fileline_error("sbc not implemented!", fileline)
    return True

def ror_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda val, rotate: ((val & MAX_UINT32) >> (rotate & 31)) | ((val << (32 - (rotate & 31))) & MAX_UINT32), fileline)
    return True

def tst_opcode_function(opcode_params, funcstate, fileline):
    do_tst_or_cmp_reg_opcode(opcode_params, funcstate, "tst", fileline)
    return True

def do_tst_or_cmp_reg_opcode(opcode_params, funcstate, opcode_name, fileline):
    datatype_weak, datatype_strong, dest_datatype, source_datatype = read_ordered_and_unordered_alu_args(opcode_params, funcstate)

    assert_valid_datatypes(dest_datatype, source_datatype, fileline)

    if datatype_weak.type == DataType.UNKNOWN:
        if datatype_strong.type == DataType.PRIMITIVE:
            datatype_weak.ref = Primitive(Size.WORD)
        elif datatype_strong.type == DataType.POINTER:
            if dest_datatype.type == DataType.POINTER:
                fileline_error("Context information: %s pointer, unknown" % opcode_name, fileline)
            else:
                fileline_error("Context information: %s unknown, pointer" % opcode_name, fileline)
    elif datatype_weak.type == DataType.PRIMITIVE:
        if datatype_strong.type == DataType.POINTER:
            if dest_datatype.type == DataType.POINTER:
                fileline_error("Impossible comparison found! (%s pointer, primitive)" % opcode_name, fileline)
            else:
                fileline_error("Impossible comparison found! (%s primitive, pointer)" % opcode_name, fileline)

    return True

def neg_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: (-b) & 0xffffffff, fileline)
    return True

def cmn_opcode_function(opcode_params, funcstate, fileline):
    fileline_error("cmn not implemented!", fileline)
    return True

def orr_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a | b, fileline)
    return True

def mul_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a * b, fileline)
    return True

def bic_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: a & ~b, fileline)
    return True

def mvn_opcode_function(opcode_params, funcstate, fileline):
    do_double_arg_numeric_operation(funcstate.regs, opcode_params[0], opcode_params[1], lambda a, b: (~b) & 0xffffffff, fileline)
    return True

def bx_opcode_function(opcode_params, funcstate, fileline):
    # TODO
    bx_reg = funcstate.regs[opcode_params[0]]
    
    funcstate.regs["pc"][-1]
    return True

def ldr_label_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldr_pool_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldr_rb_ro_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldr_rb_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldr_sp_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def str_rb_ro_opcode_function(opcode_params, funcstate, fileline):
    return True

def str_rb_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def str_sp_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldrb_rb_ro_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldrb_rb_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def strb_rb_ro_opcode_function(opcode_params, funcstate, fileline):
    return True

def strb_rb_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldrh_rb_ro_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldrh_rb_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def strh_rb_ro_opcode_function(opcode_params, funcstate, fileline):
    return True

def strh_rb_imm_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldrsb_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldrsh_opcode_function(opcode_params, funcstate, fileline):
    return True

def adr_opcode_function(opcode_params, funcstate, fileline):
    return True

def push_opcode_function(opcode_params, funcstate, fileline):
    return True

def pop_opcode_function(opcode_params, funcstate, fileline):
    return True

def stmia_opcode_function(opcode_params, funcstate, fileline):
    return True

def ldmia_opcode_function(opcode_params, funcstate, fileline):
    return True

def beq_opcode_function(opcode_params, funcstate, fileline):
    return True

def bne_opcode_function(opcode_params, funcstate, fileline):
    return True

def bcs_opcode_function(opcode_params, funcstate, fileline):
    return True

def bcc_opcode_function(opcode_params, funcstate, fileline):
    return True

def bmi_opcode_function(opcode_params, funcstate, fileline):
    return True

def bpl_opcode_function(opcode_params, funcstate, fileline):
    return True

def bvs_opcode_function(opcode_params, funcstate, fileline):
    return True

def bvc_opcode_function(opcode_params, funcstate, fileline):
    return True

def bhi_opcode_function(opcode_params, funcstate, fileline):
    return True

def bls_opcode_function(opcode_params, funcstate, fileline):
    return True

def bge_opcode_function(opcode_params, funcstate, fileline):
    return True

def blt_opcode_function(opcode_params, funcstate, fileline):
    return True

def bgt_opcode_function(opcode_params, funcstate, fileline):
    return True

def ble_opcode_function(opcode_params, funcstate, fileline):
    return True

def swi_opcode_function(opcode_params, funcstate, fileline):
    return True

def swi_opcode_function(opcode_params, funcstate, fileline):
    return True

def b_opcode_function(opcode_params, funcstate, fileline):
    return True

def bl_opcode_function(opcode_params, funcstate, fileline):
    return True

class Opcode:
    def __init__(self, regex, function):
        self.regex = regex
        self.function = function
        self.callbacks = []
    
    def run_function(self, opcode_params, funcstate, fileline):
        do_main_function = True
        for callback in self.callbacks:
            do_main_function &= callback(opcode_params, funcstate, fileline)
        
        if do_main_function:
            self.function(opcode_params, funcstate, fileline)
    
    def append_callback(self, callback):
        self.callbacks.append(callback)

lsl_imm_opcode = Opcode(rd_rs_imm_regex, lsl_imm_opcode_function)
lsl_reg_opcode = Opcode(rd_rs_regex, lsl_reg_opcode_function)
lsr_imm_opcode = Opcode(rd_rs_imm_regex, lsr_imm_opcode_function)
lsr_reg_opcode = Opcode(rd_rs_regex, lsr_reg_opcode_function)
asr_imm_opcode = Opcode(rd_rs_imm_regex, asr_imm_opcode_function)
asr_reg_opcode = Opcode(rd_rs_regex, asr_reg_opcode_function)
add_rd_rs_rn_opcode = Opcode(rd_rs_rn_regex, add_rd_rs_rn_opcode_function)
add_rd_rs_imm_opcode = Opcode(rd_rs_imm_regex, add_rd_rs_imm_opcode_function)
add_rd_imm_opcode = Opcode(rd_imm_regex, add_rd_imm_opcode_function)
add_rd_rs_opcode = Opcode(rd_rs_regex, add_rd_rs_opcode_function)
add_rd_sp_imm_opcode = Opcode(rd_sp_imm_regex, add_rd_sp_imm_opcode_function)
add_sp_opcode = Opcode(sp_or_sp_sp_imm_regex, add_sp_opcode_function)
sub_rd_rs_rn_opcode = Opcode(rd_rs_rn_regex, sub_rd_rs_rn_opcode_function)
sub_rd_rs_imm_opcode = Opcode(rd_rs_imm_regex, sub_rd_rs_imm_opcode_function)
sub_rd_imm_opcode = Opcode(rd_imm_regex, sub_rd_imm_opcode_function)
sub_rd_rs_opcode = Opcode(rd_rs_regex, sub_rd_rs_opcode_function)
sub_sp_opcode = Opcode(sp_or_sp_sp_imm_regex, sub_sp_opcode_function)
mov_imm_opcode = Opcode(rd_imm_regex, mov_imm_opcode_function)
mov_reg_opcode = Opcode(rd_rs_regex, mov_reg_opcode_function)
cmp_imm_opcode = Opcode(rd_imm_regex, cmp_imm_opcode_function)
cmp_reg_opcode = Opcode(rd_rs_regex, cmp_reg_opcode_function)
and_opcode = Opcode(rd_rs_regex, and_opcode_function)
eor_opcode = Opcode(rd_rs_regex, eor_opcode_function)
adc_opcode = Opcode(rd_rs_regex, adc_opcode_function)
sbc_opcode = Opcode(rd_rs_regex, sbc_opcode_function)
ror_opcode = Opcode(rd_rs_regex, ror_opcode_function)
tst_opcode = Opcode(rd_rs_regex, tst_opcode_function)
neg_opcode = Opcode(rd_rs_regex, neg_opcode_function)
cmn_opcode = Opcode(rd_rs_regex, cmn_opcode_function)
orr_opcode = Opcode(rd_rs_regex, orr_opcode_function)
mul_opcode = Opcode(rd_rs_regex, mul_opcode_function)
bic_opcode = Opcode(rd_rs_regex, bic_opcode_function)
mvn_opcode = Opcode(rd_rs_regex, mvn_opcode_function)
bx_opcode = Opcode(rhs_regex, bx_opcode_function)
ldr_label_opcode = Opcode(rd_label_regex, ldr_label_opcode_function)
ldr_pool_opcode = Opcode(rd_pool_regex, ldr_pool_opcode_function)
ldr_rb_ro_opcode = Opcode(rd_deref_rb_ro_regex, ldr_rb_ro_opcode_function)
ldr_rb_imm_opcode = Opcode(rd_deref_rb_imm_regex, ldr_rb_imm_opcode_function)
ldr_sp_imm_opcode = Opcode(rd_deref_sp_imm_regex, ldr_sp_imm_opcode_function)
str_rb_ro_opcode = Opcode(rd_deref_rb_ro_regex, str_rb_ro_opcode_function)
str_rb_imm_opcode = Opcode(rd_deref_rb_imm_regex, str_rb_imm_opcode_function)
str_sp_imm_opcode = Opcode(rd_deref_sp_imm_regex, str_sp_imm_opcode_function)
ldrb_rb_ro_opcode = Opcode(rd_deref_rb_ro_regex, ldrb_rb_ro_opcode_function)
ldrb_rb_imm_opcode = Opcode(rd_deref_rb_imm_regex, ldrb_rb_imm_opcode_function)
strb_rb_ro_opcode = Opcode(rd_deref_rb_ro_regex, strb_rb_ro_opcode_function)
strb_rb_imm_opcode = Opcode(rd_deref_rb_imm_regex, strb_rb_imm_opcode_function)
ldrh_rb_ro_opcode = Opcode(rd_deref_rb_ro_regex, ldrh_rb_ro_opcode_function)
ldrh_rb_imm_opcode = Opcode(rd_deref_rb_imm_regex, ldrh_rb_imm_opcode_function)
strh_rb_ro_opcode = Opcode(rd_deref_rb_ro_regex, strh_rb_ro_opcode_function)
strh_rb_imm_opcode = Opcode(rd_deref_rb_imm_regex, strh_rb_imm_opcode_function)
ldrsb_opcode = Opcode(rd_deref_rb_ro_regex, ldrsb_opcode_function)
ldrsh_opcode = Opcode(rd_deref_rb_ro_regex, ldrsh_opcode_function)
adr_opcode = Opcode(rd_label_regex, adr_opcode_function)
push_opcode = Opcode(rlist_regex, push_opcode_function)
pop_opcode = Opcode(rlist_regex, pop_opcode_function)
stmia_opcode = Opcode(rb_excl_rlist_regex, stmia_opcode_function)
ldmia_opcode = Opcode(rb_excl_rlist_regex, ldmia_opcode_function)
beq_opcode = Opcode(label_or_imm_regex, beq_opcode_function)
bne_opcode = Opcode(label_or_imm_regex, bne_opcode_function)
bcs_opcode = Opcode(label_or_imm_regex, bcs_opcode_function)
bcc_opcode = Opcode(label_or_imm_regex, bcc_opcode_function)
bmi_opcode = Opcode(label_or_imm_regex, bmi_opcode_function)
bpl_opcode = Opcode(label_or_imm_regex, bpl_opcode_function)
bvs_opcode = Opcode(label_or_imm_regex, bvs_opcode_function)
bvc_opcode = Opcode(label_or_imm_regex, bvc_opcode_function)
bhi_opcode = Opcode(label_or_imm_regex, bhi_opcode_function)
bls_opcode = Opcode(label_or_imm_regex, bls_opcode_function)
bge_opcode = Opcode(label_or_imm_regex, bge_opcode_function)
blt_opcode = Opcode(label_or_imm_regex, blt_opcode_function)
bgt_opcode = Opcode(label_or_imm_regex, bgt_opcode_function)
ble_opcode = Opcode(label_or_imm_regex, ble_opcode_function)
swi_opcode = Opcode(label_or_imm_regex, swi_opcode_function)
swi_opcode = Opcode(label_or_imm_regex, swi_opcode_function)
b_opcode = Opcode(label_or_imm_regex, b_opcode_function)
bl_opcode = Opcode(label_or_imm_regex, bl_opcode_function)

opcodes = {
    "lsl": (
        lsl_imm_opcode,
        lsl_reg_opcode,
    ),
    "lsr": (
        lsr_imm_opcode,
        lsr_reg_opcode,
    ),
    "asr": (
        asr_imm_opcode,
        asr_reg_opcode,
    ),
    "add": (
        add_rd_rs_rn_opcode,
        add_rd_rs_imm_opcode,
        add_rd_imm_opcode,
        add_rd_rs_opcode,
        add_rd_sp_imm_opcode,
        add_sp_opcode
    ),
    "sub": (
        sub_rd_rs_rn_opcode,
        sub_rd_rs_imm_opcode,
        sub_rd_imm_opcode,
        sub_rd_rs_opcode,
        sub_sp_opcode,
    ),
    "mov": (
        mov_imm_opcode,
        mov_reg_opcode,
    ),
    "cmp": (
        cmp_imm_opcode,
        cmp_reg_opcode,
    ),
    "and": (
        and_opcode,
    ),
    "eor": (
        eor_opcode,
    ),
    "adc": (
        adc_opcode,
    ),
    "sbc": (
        sbc_opcode,
    ),
    "ror": (
        ror_opcode,
    ),
    "tst": (
        tst_opcode,
    ),
    "neg": (
        neg_opcode,
    ),
    "cmn": (
        cmn_opcode,
    ),
    "orr": (
        orr_opcode,
    ),
    "mul": (
        mul_opcode,
    ),
    "bic": (
        bic_opcode,
    ),
    "mvn": (
        mvn_opcode,
    ),
    "bx": (
        bx_opcode,
    ),
    "ldr": (
        ldr_label_opcode,
        ldr_pool_opcode,
        ldr_rb_ro_opcode,
        ldr_rb_imm_opcode,
        ldr_sp_imm_opcode,
    ),
    "str": (
        str_rb_ro_opcode,
        str_rb_imm_opcode,
        str_sp_imm_opcode,
    ),
    "ldrb": (
        ldrb_rb_ro_opcode,
        ldrb_rb_imm_opcode,
    ),
    "strb": (
        strb_rb_ro_opcode,
        strb_rb_imm_opcode,
    ),
    "ldrh": (
        ldrh_rb_ro_opcode,
        ldrh_rb_imm_opcode,
    ),
    "strh": (
        strh_rb_ro_opcode,
        strh_rb_imm_opcode,
    ),
    "ldrsb": (
        ldrsb_opcode,
    ),
    "ldrsh": (
        ldrsh_opcode,
    ),
    "adr": (
        adr_opcode,
    ),
    "push": (
        push_opcode,
    ),
    "pop": (
        pop_opcode,
    ),
    "stmia": (
        stmia_opcode,
    ),
    "ldmia": (
        ldmia_opcode,
    ),
    "beq": (
        beq_opcode,
    ),
    "bne": (
        bne_opcode,
    ),
    "bcs": (
        bcs_opcode,
    ),
    "bcc": (
        bcc_opcode,
    ),
    "bmi": (
        bmi_opcode,
    ),
    "bpl": (
        bpl_opcode,
    ),
    "bvs": (
        bvs_opcode,
    ),
    "bvc": (
        bvc_opcode,
    ),
    "bhi": (
        bhi_opcode,
    ),
    "bls": (
        bls_opcode,
    ),
    "bge": (
        bge_opcode,
    ),
    "blt": (
        blt_opcode,
    ),
    "bgt": (
        bgt_opcode,
    ),
    "ble": (
        ble_opcode,
    ),
    "svc": (
        swi_opcode,
    ),
    "swi": (
        swi_opcode,
    ),
    "b": (
        b_opcode,
    ),
    "bl": (
        bl_opcode,
    )
}

def do_double_arg_operation(registers, dest_reg, source_reg, callback, fileline):
    do_triple_arg_operation(registers, dest_reg, dest_reg, source_reg, callback, fileline)

def do_triple_arg_operation(registers, dest_reg, source_reg, operand_reg_or_imm, callback, fileline):
    source_datatype = registers[source_reg][-1]
    operand_datatype = evaluate_reg_or_imm(registers, operand_reg_or_imm, fileline)
    assert_valid_datatypes(source_datatype, operand_datatype, fileline)
    result_datatype = callback(source_datatype, operand_datatype, fileline)
    registers[dest_reg].append(RegisterInfo(result_datatype, fileline))

def add_datatypes(source_datatype, operand_datatype):
    datatype_weak, datatype_strong = order_datatypes(source_datatype, operand_datatype)

    if datatype_weak.type == DataType.UNKNOWN:
        if datatype_strong.type == DataType.UNKNOWN:
            return UnknownDataType()
        elif datatype_strong.type == DataType.PRIMITIVE:
            return UnknownDataType()
        elif datatype_strong.type == DataType.POINTER:
            # if the operation is pointer + unk, then we know (assume) that unk is a primitive
            datatype_weak.ref = Primitive(Size.WORD)
            print("Context information: unk + pointer")
            result_datatype = copy.deepcopy(datatype_strong)
            result_datatype.ref.add_offset(NaN)
            return result_datatype
        else:
            fileline_error("Invalid DataType constant of %s!" % datatype_strong.type, fileline)
    elif datatype_weak.type == DataType.PRIMITIVE:
        if datatype_strong.type == DataType.PRIMITIVE:
            return Primitive(Size.UNKNOWN, source_datatype.ref.value + operand_datatype.ref.value)
        elif datatype_strong.type == DataType.POINTER:
            result_datatype = copy.deepcopy(datatype_strong)
            result_datatype.ref.add_offset(datatype_weak.ref.value)
            return result_datatype
        else:
            fileline_error("Invalid DataType constant of %s!" % datatype_strong.type, fileline)
    elif datatype_weak == DataType.POINTER and datatype_strong == DataType.POINTER:
        fileline_error("Impossible add operation found! (pointer + pointer)", fileline)
    else:
        fileline_error("Invalid DataType constant of %s!" % datatype_weak.type, fileline)

def subtract_datatypes(source_datatype, operand_datatype):
    datatype_weak, datatype_strong = order_datatypes(source_datatype, operand_datatype)

    if datatype_weak.type == DataType.UNKNOWN:
        if datatype_strong.type == DataType.UNKNOWN:
            return UnknownDataType()
        elif datatype_strong.type == DataType.PRIMITIVE:
            return UnknownDataType()
        elif datatype_strong.type == DataType.POINTER:
            # if the operand datatype is the pointer, then it is an error
            if source_datatype.type == DataType.POINTER:
                operand_datatype.ref = Primitive(Size.WORD)
                print("Context information: pointer - unk")
                result_datatype = copy.deepcopy(source_datatype)
                result_datatype.ref.add_offset(NaN)
                return result_datatype
            else:
                fileline_error("Impossible sub operation found! (unk - pointer)", fileline)
        else:
            fileline_error("Invalid DataType constant of %s!" % datatype_strong.type, fileline)
    elif datatype_weak.type == DataType.PRIMITIVE:
        if datatype_strong.type == DataType.PRIMITIVE:
            return Primitive(Size.UNKNOWN, source_datatype.ref.value - operand_datatype.ref.value)
        elif datatype_strong.type == DataType.POINTER:
            if source_datatype.type == DataType.POINTER:
                result_datatype = copy.deepcopy(source_datatype)
                result_datatype.ref.add_offset(-operand_datatype.ref.value)
                return result_datatype
            else:
                fileline_error("Impossible sub operation found! (num - pointer)", fileline)
    elif datatype_weak == DataType.POINTER and datatype_strong == DataType.POINTER:
        fileline_error("Context information: pointer - pointer", fileline)
    else:
        fileline_error("Invalid DataType constant of %s!" % datatype_weak.type, fileline)

def add_datatypes_for_dereference(datatype1, datatype2):
    pass

def read_opcode(line, funcstate, fileline):
    line = line.strip()
    opcode_parts = line.split(None, 1)
    opcode_subsyntaxes = opcodes[opcode_parts[0]]
    
    for subsyntax in opcode_syntaxes:
        regex_groups = re.findall(subsyntax.regex, opcode_parts[1])
        if len(regex_groups) == 1:
            subsyntax.function(regex_groups[0], funcstate, fileline)
            break
    else:
        raise RuntimeError("Unknown opcode \"%s\"!" % line)

