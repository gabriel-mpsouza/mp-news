	.text
	.file	"shell.cpp"
	.globl	_Z13handle_siginti              # -- Begin function _Z13handle_siginti
	.p2align	4, 0x90
	.type	_Z13handle_siginti,@function
_Z13handle_siginti:                     # @_Z13handle_siginti
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str(%rip), %rsi
	movl	$43, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_5
# %bb.1:
	cmpb	$0, 56(%rbx)
	je	.LBB0_3
# %bb.2:
	movb	67(%rbx), %al
	jmp	.LBB0_4
.LBB0_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB0_4:
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movl	$2, %edi
	xorl	%esi, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	signal@PLT                      # TAILCALL
.LBB0_5:
	.cfi_def_cfa_offset 16
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end0:
	.size	_Z13handle_siginti, .Lfunc_end0-_Z13handle_siginti
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	_Z13handle_siginti(%rip), %rsi
	movl	$2, %edi
	callq	signal@PLT
	movq	%rsp, %rdi
	callq	_ZN18ServerControlShellC2Ev
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18ServerControlShellC2Ev,"axG",@progbits,_ZN18ServerControlShellC2Ev,comdat
	.weak	_ZN18ServerControlShellC2Ev     # -- Begin function _ZN18ServerControlShellC2Ev
	.p2align	4, 0x90
	.type	_ZN18ServerControlShellC2Ev,@function
_ZN18ServerControlShellC2Ev:            # @_ZN18ServerControlShellC2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movq	_ZSt4cout@GOTPCREL(%rip), %r12
	leaq	.L.str.1(%rip), %rsi
	movl	$61, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.2(%rip), %rsi
	movl	$66, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.3(%rip), %rsi
	movl	$44, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.4(%rip), %rsi
	movl	$95, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	24(%rsp), %r14
	leaq	.L.str.5(%rip), %r15
	movq	_ZSt3cin@GOTPCREL(%rip), %rbx
	leaq	8(%rsp), %r13
	jmp	.LBB2_1
	.p2align	4, 0x90
.LBB2_48:                               #   in Loop: Header=BB2_1 Depth=1
	testb	%bpl, %bpl
	jne	.LBB2_49
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, 24(%rsp)
.Ltmp0:
	movl	$23, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp1:
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB2_3
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	cmpb	$0, 56(%rbp)
	je	.LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_1 Depth=1
	movzbl	67(%rbp), %eax
	jmp	.LBB2_9
	.p2align	4, 0x90
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp2:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp3:
# %bb.8:                                #   in Loop: Header=BB2_1 Depth=1
	movq	(%rbp), %rax
.Ltmp4:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp5:
.LBB2_9:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp6:
	movsbl	%al, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
.Ltmp7:
# %bb.10:                               #   in Loop: Header=BB2_1 Depth=1
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movb	$1, %bpl
	testb	$2, 32(%rbx,%rax)
	jne	.LBB2_46
# %bb.11:                               #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, 16(%rsp)
	je	.LBB2_45
# %bb.12:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_14
# %bb.13:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.7(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_14
# %bb.20:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_21
# %bb.22:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.9(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_23
# %bb.24:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.10(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_25
# %bb.26:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_27
# %bb.28:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.12(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_29
# %bb.30:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_31
# %bb.32:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.14(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_33
# %bb.34:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.15(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_35
# %bb.36:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.16(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_37
# %bb.38:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.17(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_39
# %bb.40:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.18(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_41
# %bb.42:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r13, %rdi
	leaq	.L.str.19(%rip), %rsi
	callq	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc@PLT
	testl	%eax, %eax
	je	.LBB2_43
# %bb.44:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp8:
	movl	$75, %edx
	movq	%r12, %rdi
	leaq	.L.str.21(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp9:
	jmp	.LBB2_45
.LBB2_14:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp34:
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZN18ServerControlShell11displayHelpEv
.Ltmp35:
.LBB2_45:                               #   in Loop: Header=BB2_1 Depth=1
	xorl	%ebp, %ebp
.LBB2_46:                               #   in Loop: Header=BB2_1 Depth=1
	movq	8(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB2_48
# %bb.47:                               #   in Loop: Header=BB2_1 Depth=1
	callq	_ZdlPv@PLT
	jmp	.LBB2_48
.LBB2_21:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp32:
	leaq	.L.str.35(%rip), %rdi
	callq	system@PLT
.Ltmp33:
	jmp	.LBB2_45
.LBB2_23:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp30:
	leaq	.L.str.36(%rip), %rdi
	callq	system@PLT
.Ltmp31:
	jmp	.LBB2_45
.LBB2_25:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp28:
	leaq	.L.str.37(%rip), %rdi
	callq	system@PLT
.Ltmp29:
	jmp	.LBB2_45
.LBB2_27:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp26:
	leaq	.L.str.38(%rip), %rdi
	callq	system@PLT
.Ltmp27:
	jmp	.LBB2_45
.LBB2_29:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp24:
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZN18ServerControlShell20configureVirtualHostEv
.Ltmp25:
	jmp	.LBB2_45
.LBB2_31:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp22:
	leaq	.L.str.53(%rip), %rdi
	callq	system@PLT
.Ltmp23:
	jmp	.LBB2_45
.LBB2_33:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp20:
	leaq	.L.str.54(%rip), %rdi
	callq	system@PLT
.Ltmp21:
	jmp	.LBB2_45
.LBB2_35:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp18:
	leaq	.L.str.55(%rip), %rdi
	callq	system@PLT
.Ltmp19:
	jmp	.LBB2_45
.LBB2_37:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp16:
	leaq	.L.str.56(%rip), %rdi
	callq	system@PLT
.Ltmp17:
	jmp	.LBB2_45
.LBB2_39:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp14:
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZN18ServerControlShell14createDatabaseEv
.Ltmp15:
	jmp	.LBB2_45
.LBB2_41:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp12:
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZN18ServerControlShell10createUserEv
.Ltmp13:
	jmp	.LBB2_45
.LBB2_43:                               #   in Loop: Header=BB2_1 Depth=1
.Ltmp10:
	movl	$9, %edx
	movq	%r12, %rdi
	leaq	.L.str.20(%rip), %rsi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp11:
	jmp	.LBB2_46
.LBB2_49:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB2_3:
	.cfi_def_cfa_offset 96
.Ltmp37:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp38:
# %bb.4:
.LBB2_16:
.Ltmp39:
	jmp	.LBB2_17
.LBB2_15:
.Ltmp36:
.LBB2_17:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB2_19
# %bb.18:
	callq	_ZdlPv@PLT
.LBB2_19:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end2:
	.size	_ZN18ServerControlShellC2Ev, .Lfunc_end2-_ZN18ServerControlShellC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18ServerControlShellC2Ev,"aG",@progbits,_ZN18ServerControlShellC2Ev,comdat
	.p2align	2
GCC_except_table2:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp11-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp11
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Lfunc_end2-.Ltmp38            #   Call between .Ltmp38 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.section	.text._ZN18ServerControlShell11displayHelpEv,"axG",@progbits,_ZN18ServerControlShell11displayHelpEv,comdat
	.weak	_ZN18ServerControlShell11displayHelpEv # -- Begin function _ZN18ServerControlShell11displayHelpEv
	.p2align	4, 0x90
	.type	_ZN18ServerControlShell11displayHelpEv,@function
_ZN18ServerControlShell11displayHelpEv: # @_ZN18ServerControlShell11displayHelpEv
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str.22(%rip), %rsi
	movl	$23, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.23(%rip), %rsi
	movl	$51, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.24(%rip), %rsi
	movl	$49, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.25(%rip), %rsi
	movl	$53, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.26(%rip), %rsi
	movl	$63, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.27(%rip), %rsi
	movl	$69, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.28(%rip), %rsi
	movl	$50, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.29(%rip), %rsi
	movl	$48, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.30(%rip), %rsi
	movl	$52, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.31(%rip), %rsi
	movl	$62, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.32(%rip), %rsi
	movl	$60, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.33(%rip), %rsi
	movl	$57, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.L.str.34(%rip), %rsi
	movl	$39, %edx
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT # TAILCALL
.Lfunc_end3:
	.size	_ZN18ServerControlShell11displayHelpEv, .Lfunc_end3-_ZN18ServerControlShell11displayHelpEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18ServerControlShell20configureVirtualHostEv,"axG",@progbits,_ZN18ServerControlShell20configureVirtualHostEv,comdat
	.weak	_ZN18ServerControlShell20configureVirtualHostEv # -- Begin function _ZN18ServerControlShell20configureVirtualHostEv
	.p2align	4, 0x90
	.type	_ZN18ServerControlShell20configureVirtualHostEv,@function
_ZN18ServerControlShell20configureVirtualHostEv: # @_ZN18ServerControlShell20configureVirtualHostEv
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$640, %rsp                      # imm = 0x280
	.cfi_def_cfa_offset 688
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	leaq	16(%rsp), %r15
	movq	%r15, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, 16(%rsp)
	leaq	48(%rsp), %r12
	movq	%r12, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, 48(%rsp)
.Ltmp40:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.39(%rip), %rsi
	movl	$47, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp41:
# %bb.1:
	movq	_ZSt3cin@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	movq	240(%rax,%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB4_50
# %bb.2:
	cmpb	$0, 56(%rbx)
	je	.LBB4_4
# %bb.3:
	movb	67(%rbx), %al
	jmp	.LBB4_6
.LBB4_4:
.Ltmp42:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp43:
# %bb.5:
	movq	(%rbx), %rax
.Ltmp44:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp45:
.LBB4_6:
.Ltmp46:
	movsbl	%al, %edx
	movq	_ZSt3cin@GOTPCREL(%rip), %rbx
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	callq	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
.Ltmp47:
# %bb.7:
.Ltmp48:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.40(%rip), %rsi
	movl	$58, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp49:
# %bb.8:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_52
# %bb.9:
	cmpb	$0, 56(%rbx)
	je	.LBB4_11
# %bb.10:
	movb	67(%rbx), %al
	jmp	.LBB4_13
.LBB4_11:
.Ltmp50:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp51:
# %bb.12:
	movq	(%rbx), %rax
.Ltmp52:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp53:
.LBB4_13:
.Ltmp54:
	movsbl	%al, %edx
	movq	_ZSt3cin@GOTPCREL(%rip), %rdi
	leaq	32(%rsp), %rsi
	callq	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
.Ltmp55:
# %bb.14:
.Ltmp56:
	leaq	.L.str.41(%rip), %rsi
	leaq	128(%rsp), %rdi
	movq	%rsp, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp57:
# %bb.15:
	movabsq	$-4611686018427387899, %rax     # imm = 0xC000000000000005
	addq	136(%rsp), %rax
	cmpq	$4, %rax
	jbe	.LBB4_54
# %bb.16:
.Ltmp59:
	leaq	.L.str.42(%rip), %rsi
	leaq	128(%rsp), %rdi
	movl	$5, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.Ltmp60:
# %bb.17:
	movq	%rax, %rbx
	leaq	80(%rsp), %r14
	movq	%r14, 64(%rsp)
	movq	(%rax), %rsi
	movq	%rax, %r13
	addq	$16, %r13
	cmpq	%r13, %rsi
	je	.LBB4_19
# %bb.18:
	movq	%rsi, 64(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 80(%rsp)
	jmp	.LBB4_21
.LBB4_19:
	movq	8(%rbx), %rdx
	incq	%rdx
	je	.LBB4_21
# %bb.20:
	movq	%r14, %rdi
	callq	memcpy@PLT
.LBB4_21:
	movq	8(%rbx), %rax
	movq	%rax, 72(%rsp)
	movq	%r13, (%rbx)
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	movq	128(%rsp), %rdi
	leaq	144(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB4_23
# %bb.22:
	callq	_ZdlPv@PLT
.LBB4_23:
.Ltmp61:
	leaq	128(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movl	$16, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp62:
# %bb.24:
.Ltmp64:
	leaq	.L.str.43(%rip), %rsi
	leaq	128(%rsp), %rdi
	movl	$19, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp65:
# %bb.25:
.Ltmp66:
	leaq	.L.str.44(%rip), %rsi
	leaq	128(%rsp), %rdi
	movl	$15, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp67:
# %bb.26:
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdx
.Ltmp68:
	leaq	128(%rsp), %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp69:
# %bb.27:
.Ltmp70:
	leaq	.L.str.45(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp71:
# %bb.28:
.Ltmp72:
	leaq	.L.str.46(%rip), %rsi
	leaq	128(%rsp), %rdi
	movl	$17, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp73:
# %bb.29:
	movq	32(%rsp), %rsi
	movq	40(%rsp), %rdx
.Ltmp74:
	leaq	128(%rsp), %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp75:
# %bb.30:
.Ltmp76:
	leaq	.L.str.45(%rip), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp77:
# %bb.31:
.Ltmp78:
	leaq	.L.str.47(%rip), %rsi
	leaq	128(%rsp), %rdi
	movl	$15, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp79:
# %bb.32:
	leaq	136(%rsp), %rbx
.Ltmp80:
	movq	%rbx, %rdi
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.Ltmp81:
# %bb.33:
	testq	%rax, %rax
	jne	.LBB4_35
# %bb.34:
	movq	128(%rsp), %rax
	movq	-24(%rax), %rax
	leaq	(%rsp,%rax), %rdi
	addq	$128, %rdi
	movl	160(%rsp,%rax), %esi
	orl	$4, %esi
.Ltmp82:
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.Ltmp83:
.LBB4_35:
.Ltmp84:
	leaq	.L.str.48(%rip), %rsi
	leaq	96(%rsp), %rdi
	movq	%rsp, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp85:
# %bb.36:
	movq	96(%rsp), %rdi
.Ltmp87:
	callq	system@PLT
.Ltmp88:
# %bb.37:
	movq	96(%rsp), %rdi
	leaq	112(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB4_39
# %bb.38:
	callq	_ZdlPv@PLT
.LBB4_39:
.Ltmp90:
	leaq	.L.str.49(%rip), %rdi
	callq	system@PLT
.Ltmp91:
# %bb.40:
.Ltmp92:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.50(%rip), %rsi
	movl	$18, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp93:
# %bb.41:
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdx
.Ltmp94:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp95:
# %bb.42:
.Ltmp96:
	leaq	.L.str.51(%rip), %rsi
	movl	$26, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp97:
# %bb.43:
	movq	_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	24(%rax), %rax
	movq	%rcx, 128(%rsp)
	movq	-24(%rcx), %rcx
	movq	%rax, 128(%rsp,%rcx)
	movq	%rbx, %rdi
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev@PLT
	leaq	376(%rsp), %rdi
	callq	_ZNSt8ios_baseD2Ev@PLT
	movq	64(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB4_45
# %bb.44:
	callq	_ZdlPv@PLT
.LBB4_45:
	movq	32(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB4_47
# %bb.46:
	callq	_ZdlPv@PLT
.LBB4_47:
	movq	(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB4_49
# %bb.48:
	callq	_ZdlPv@PLT
.LBB4_49:
	addq	$640, %rsp                      # imm = 0x280
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB4_50:
	.cfi_def_cfa_offset 688
.Ltmp104:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp105:
# %bb.51:
.LBB4_52:
.Ltmp102:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp103:
# %bb.53:
.LBB4_54:
.Ltmp99:
	leaq	.L.str.52(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp100:
# %bb.55:
.LBB4_56:
.Ltmp89:
	movq	%rax, %rbx
	movq	96(%rsp), %rdi
	leaq	112(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB4_65
# %bb.57:
	callq	_ZdlPv@PLT
	jmp	.LBB4_65
.LBB4_58:
.Ltmp86:
	jmp	.LBB4_64
.LBB4_59:
.Ltmp63:
	movq	%rax, %rbx
	jmp	.LBB4_66
.LBB4_60:
.Ltmp58:
	movq	%rax, %rbx
	jmp	.LBB4_68
.LBB4_61:
.Ltmp101:
	movq	%rax, %rbx
	movq	128(%rsp), %rdi
	leaq	144(%rsp), %rax
	cmpq	%rax, %rdi
	jne	.LBB4_67
	jmp	.LBB4_68
.LBB4_62:
.Ltmp106:
	movq	%rax, %rbx
	jmp	.LBB4_68
.LBB4_63:
.Ltmp98:
.LBB4_64:
	movq	%rax, %rbx
.LBB4_65:
	leaq	128(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB4_66:
	movq	64(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB4_68
.LBB4_67:
	callq	_ZdlPv@PLT
.LBB4_68:
	movq	32(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB4_70
# %bb.69:
	callq	_ZdlPv@PLT
.LBB4_70:
	movq	(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB4_72
# %bb.71:
	callq	_ZdlPv@PLT
.LBB4_72:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	_ZN18ServerControlShell20configureVirtualHostEv, .Lfunc_end4-_ZN18ServerControlShell20configureVirtualHostEv
	.cfi_endproc
	.section	.gcc_except_table._ZN18ServerControlShell20configureVirtualHostEv,"aG",@progbits,_ZN18ServerControlShell20configureVirtualHostEv,comdat
	.p2align	2
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp55-.Ltmp40                #   Call between .Ltmp40 and .Ltmp55
	.uleb128 .Ltmp106-.Lfunc_begin1         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin1          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp101-.Lfunc_begin1         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin1          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp83-.Ltmp64                #   Call between .Ltmp64 and .Ltmp83
	.uleb128 .Ltmp98-.Lfunc_begin1          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin1          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin1          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp97-.Ltmp90                #   Call between .Ltmp90 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin1          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp103-.Ltmp104              #   Call between .Ltmp104 and .Ltmp103
	.uleb128 .Ltmp106-.Lfunc_begin1         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin1         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Lfunc_end4-.Ltmp100           #   Call between .Ltmp100 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.section	.text._ZN18ServerControlShell14createDatabaseEv,"axG",@progbits,_ZN18ServerControlShell14createDatabaseEv,comdat
	.weak	_ZN18ServerControlShell14createDatabaseEv # -- Begin function _ZN18ServerControlShell14createDatabaseEv
	.p2align	4, 0x90
	.type	_ZN18ServerControlShell14createDatabaseEv,@function
_ZN18ServerControlShell14createDatabaseEv: # @_ZN18ServerControlShell14createDatabaseEv
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$104, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	leaq	24(%rsp), %r12
	movq	%r12, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, 24(%rsp)
.Ltmp107:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.57(%rip), %rsi
	movl	$33, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp108:
# %bb.1:
	movq	_ZSt3cin@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	movq	240(%rax,%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB5_25
# %bb.2:
	cmpb	$0, 56(%rbx)
	je	.LBB5_4
# %bb.3:
	movb	67(%rbx), %al
	jmp	.LBB5_6
.LBB5_4:
.Ltmp109:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp110:
# %bb.5:
	movq	(%rbx), %rax
.Ltmp111:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp112:
.LBB5_6:
.Ltmp113:
	movsbl	%al, %edx
	movq	_ZSt3cin@GOTPCREL(%rip), %rdi
	leaq	8(%rsp), %rsi
	callq	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
.Ltmp114:
# %bb.7:
.Ltmp115:
	leaq	.L.str.58(%rip), %rsi
	leaq	72(%rsp), %rdi
	leaq	8(%rsp), %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp116:
# %bb.8:
	movq	80(%rsp), %rax
	shrq	%rax
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	je	.LBB5_27
# %bb.9:
.Ltmp118:
	leaq	.L.str.59(%rip), %rsi
	leaq	72(%rsp), %rdi
	movl	$2, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.Ltmp119:
# %bb.10:
	movq	%rax, %rbx
	leaq	56(%rsp), %r15
	movq	%r15, 40(%rsp)
	movq	(%rax), %rsi
	movq	%rax, %r14
	addq	$16, %r14
	cmpq	%r14, %rsi
	je	.LBB5_12
# %bb.11:
	movq	%rsi, 40(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB5_14
.LBB5_12:
	movq	8(%rbx), %rdx
	incq	%rdx
	je	.LBB5_14
# %bb.13:
	movq	%r15, %rdi
	callq	memcpy@PLT
.LBB5_14:
	movq	8(%rbx), %rax
	movq	%rax, 48(%rsp)
	movq	%r14, (%rbx)
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	movq	40(%rsp), %rdi
.Ltmp120:
	callq	system@PLT
.Ltmp121:
# %bb.15:
	movq	40(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB5_17
# %bb.16:
	callq	_ZdlPv@PLT
.LBB5_17:
	movq	72(%rsp), %rdi
	leaq	88(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB5_19
# %bb.18:
	callq	_ZdlPv@PLT
.LBB5_19:
.Ltmp123:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.60(%rip), %rsi
	movl	$15, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp124:
# %bb.20:
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdx
.Ltmp125:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp126:
# %bb.21:
.Ltmp127:
	leaq	.L.str.61(%rip), %rsi
	movl	$21, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp128:
# %bb.22:
	movq	8(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB5_24
# %bb.23:
	callq	_ZdlPv@PLT
.LBB5_24:
	addq	$104, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB5_25:
	.cfi_def_cfa_offset 144
.Ltmp132:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp133:
# %bb.26:
.LBB5_27:
.Ltmp129:
	leaq	.L.str.52(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp130:
# %bb.28:
.LBB5_29:
.Ltmp122:
	movq	%rax, %r14
	movq	40(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB5_33
# %bb.30:
	callq	_ZdlPv@PLT
	jmp	.LBB5_33
.LBB5_31:
.Ltmp117:
	jmp	.LBB5_36
.LBB5_32:
.Ltmp131:
	movq	%rax, %r14
.LBB5_33:
	movq	72(%rsp), %rdi
	leaq	88(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB5_37
# %bb.34:
	callq	_ZdlPv@PLT
	jmp	.LBB5_37
.LBB5_35:
.Ltmp134:
.LBB5_36:
	movq	%rax, %r14
.LBB5_37:
	movq	8(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB5_39
# %bb.38:
	callq	_ZdlPv@PLT
.LBB5_39:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end5:
	.size	_ZN18ServerControlShell14createDatabaseEv, .Lfunc_end5-_ZN18ServerControlShell14createDatabaseEv
	.cfi_endproc
	.section	.gcc_except_table._ZN18ServerControlShell14createDatabaseEv,"aG",@progbits,_ZN18ServerControlShell14createDatabaseEv,comdat
	.p2align	2
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp107-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp114-.Ltmp107              #   Call between .Ltmp107 and .Ltmp114
	.uleb128 .Ltmp134-.Lfunc_begin2         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin2         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp131-.Lfunc_begin2         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin2         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp133-.Ltmp123              #   Call between .Ltmp123 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin2         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin2         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Lfunc_end5-.Ltmp130           #   Call between .Ltmp130 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
                                        # -- End function
	.section	.text._ZN18ServerControlShell10createUserEv,"axG",@progbits,_ZN18ServerControlShell10createUserEv,comdat
	.weak	_ZN18ServerControlShell10createUserEv # -- Begin function _ZN18ServerControlShell10createUserEv
	.p2align	4, 0x90
	.type	_ZN18ServerControlShell10createUserEv,@function
_ZN18ServerControlShell10createUserEv:  # @_ZN18ServerControlShell10createUserEv
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	leaq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, 24(%rsp)
	leaq	120(%rsp), %r15
	movq	%r15, 104(%rsp)
	movq	$0, 112(%rsp)
	movb	$0, 120(%rsp)
.Ltmp135:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.62(%rip), %rsi
	movl	$27, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp136:
# %bb.1:
	movq	_ZSt3cin@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	movq	240(%rax,%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB6_50
# %bb.2:
	cmpb	$0, 56(%rbx)
	je	.LBB6_4
# %bb.3:
	movb	67(%rbx), %al
	jmp	.LBB6_6
.LBB6_4:
.Ltmp137:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp138:
# %bb.5:
	movq	(%rbx), %rax
.Ltmp139:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp140:
.LBB6_6:
.Ltmp141:
	movsbl	%al, %edx
	movq	_ZSt3cin@GOTPCREL(%rip), %rbx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
.Ltmp142:
# %bb.7:
.Ltmp143:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.63(%rip), %rsi
	movl	$16, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp144:
# %bb.8:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_52
# %bb.9:
	cmpb	$0, 56(%rbx)
	je	.LBB6_11
# %bb.10:
	movb	67(%rbx), %al
	jmp	.LBB6_13
.LBB6_11:
.Ltmp145:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp146:
# %bb.12:
	movq	(%rbx), %rax
.Ltmp147:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp148:
.LBB6_13:
.Ltmp149:
	movsbl	%al, %edx
	movq	_ZSt3cin@GOTPCREL(%rip), %rdi
	leaq	104(%rsp), %rsi
	callq	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_@PLT
.Ltmp150:
# %bb.14:
.Ltmp151:
	leaq	.L.str.64(%rip), %rsi
	leaq	168(%rsp), %rdi
	leaq	8(%rsp), %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp152:
# %bb.15:
	movabsq	$-4611686018427387901, %r13     # imm = 0xC000000000000003
	movq	176(%rsp), %rax
	addq	%r13, %rax
	addq	$26, %rax
	cmpq	$28, %rax
	jbe	.LBB6_54
# %bb.16:
.Ltmp154:
	leaq	.L.str.65(%rip), %rsi
	leaq	168(%rsp), %rdi
	movl	$29, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.Ltmp155:
# %bb.17:
	movq	%rax, %rbx
	leaq	56(%rsp), %r14
	movq	%r14, 40(%rsp)
	movq	(%rax), %rsi
	movq	%rax, %rbp
	addq	$16, %rbp
	cmpq	%rbp, %rsi
	je	.LBB6_19
# %bb.18:
	movq	%rsi, 40(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB6_21
.LBB6_19:
	movq	8(%rbx), %rdx
	incq	%rdx
	je	.LBB6_21
# %bb.20:
	movq	%r14, %rdi
	callq	memcpy@PLT
.LBB6_21:
	movq	8(%rbx), %rax
	movq	%rax, 48(%rsp)
	movq	%rbp, (%rbx)
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	movq	112(%rsp), %rdx
	movabsq	$4611686018427387903, %rax      # imm = 0x3FFFFFFFFFFFFFFF
	subq	48(%rsp), %rax
	cmpq	%rdx, %rax
	jb	.LBB6_56
# %bb.22:
	movq	104(%rsp), %rsi
.Ltmp156:
	leaq	40(%rsp), %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.Ltmp157:
# %bb.23:
	movq	%rax, %rbx
	leaq	88(%rsp), %r12
	movq	%r12, 72(%rsp)
	movq	(%rax), %rsi
	movq	%rax, %rbp
	addq	$16, %rbp
	cmpq	%rbp, %rsi
	je	.LBB6_25
# %bb.24:
	movq	%rsi, 72(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 88(%rsp)
	jmp	.LBB6_27
.LBB6_25:
	movq	8(%rbx), %rdx
	incq	%rdx
	je	.LBB6_27
# %bb.26:
	movq	%r12, %rdi
	callq	memcpy@PLT
.LBB6_27:
	movq	8(%rbx), %rax
	movq	%rax, 80(%rsp)
	movq	%rbp, (%rbx)
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	addq	80(%rsp), %r13
	cmpq	$2, %r13
	jbe	.LBB6_58
# %bb.28:
.Ltmp158:
	leaq	.L.str.66(%rip), %rsi
	leaq	72(%rsp), %rdi
	movl	$3, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.Ltmp159:
# %bb.29:
	movq	%rax, %rbx
	leaq	152(%rsp), %r13
	movq	%r13, 136(%rsp)
	movq	(%rax), %rsi
	movq	%rax, %rbp
	addq	$16, %rbp
	cmpq	%rbp, %rsi
	je	.LBB6_31
# %bb.30:
	movq	%rsi, 136(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 152(%rsp)
	jmp	.LBB6_33
.LBB6_31:
	movq	8(%rbx), %rdx
	incq	%rdx
	je	.LBB6_33
# %bb.32:
	movq	%r13, %rdi
	callq	memcpy@PLT
.LBB6_33:
	movq	8(%rbx), %rax
	movq	%rax, 144(%rsp)
	movq	%rbp, (%rbx)
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	movq	136(%rsp), %rdi
.Ltmp160:
	callq	system@PLT
.Ltmp161:
# %bb.34:
	movq	136(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB6_36
# %bb.35:
	callq	_ZdlPv@PLT
.LBB6_36:
	movq	72(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB6_38
# %bb.37:
	callq	_ZdlPv@PLT
.LBB6_38:
	movq	40(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB6_40
# %bb.39:
	callq	_ZdlPv@PLT
.LBB6_40:
	movq	168(%rsp), %rdi
	leaq	184(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB6_42
# %bb.41:
	callq	_ZdlPv@PLT
.LBB6_42:
.Ltmp163:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.67(%rip), %rsi
	movl	$9, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp164:
# %bb.43:
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdx
.Ltmp165:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp166:
# %bb.44:
.Ltmp167:
	leaq	.L.str.61(%rip), %rsi
	movl	$21, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp168:
# %bb.45:
	movq	104(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB6_47
# %bb.46:
	callq	_ZdlPv@PLT
.LBB6_47:
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB6_49
# %bb.48:
	callq	_ZdlPv@PLT
.LBB6_49:
	addq	$200, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB6_50:
	.cfi_def_cfa_offset 256
.Ltmp180:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp181:
# %bb.51:
.LBB6_52:
.Ltmp178:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp179:
# %bb.53:
.LBB6_54:
.Ltmp175:
	leaq	.L.str.52(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp176:
# %bb.55:
.LBB6_56:
.Ltmp172:
	leaq	.L.str.52(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp173:
# %bb.57:
.LBB6_58:
.Ltmp169:
	leaq	.L.str.52(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp170:
# %bb.59:
.LBB6_60:
.Ltmp162:
	movq	%rax, %rbx
	movq	136(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB6_64
# %bb.61:
	callq	_ZdlPv@PLT
	jmp	.LBB6_64
.LBB6_62:
.Ltmp153:
	jmp	.LBB6_73
.LBB6_63:
.Ltmp171:
	movq	%rax, %rbx
.LBB6_64:
	movq	72(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB6_67
# %bb.65:
	callq	_ZdlPv@PLT
	jmp	.LBB6_67
.LBB6_66:
.Ltmp174:
	movq	%rax, %rbx
.LBB6_67:
	movq	40(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB6_70
# %bb.68:
	callq	_ZdlPv@PLT
	jmp	.LBB6_70
.LBB6_69:
.Ltmp177:
	movq	%rax, %rbx
.LBB6_70:
	movq	168(%rsp), %rdi
	leaq	184(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB6_74
# %bb.71:
	callq	_ZdlPv@PLT
	jmp	.LBB6_74
.LBB6_72:
.Ltmp182:
.LBB6_73:
	movq	%rax, %rbx
.LBB6_74:
	movq	104(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB6_76
# %bb.75:
	callq	_ZdlPv@PLT
.LBB6_76:
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB6_78
# %bb.77:
	callq	_ZdlPv@PLT
.LBB6_78:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end6:
	.size	_ZN18ServerControlShell10createUserEv, .Lfunc_end6-_ZN18ServerControlShell10createUserEv
	.cfi_endproc
	.section	.gcc_except_table._ZN18ServerControlShell10createUserEv,"aG",@progbits,_ZN18ServerControlShell10createUserEv,comdat
	.p2align	2
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp135-.Lfunc_begin3         # >> Call Site 1 <<
	.uleb128 .Ltmp150-.Ltmp135              #   Call between .Ltmp135 and .Ltmp150
	.uleb128 .Ltmp182-.Lfunc_begin3         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin3         #     jumps to .Ltmp153
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp177-.Lfunc_begin3         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp174-.Lfunc_begin3         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp171-.Lfunc_begin3         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin3         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp179-.Ltmp163              #   Call between .Ltmp163 and .Ltmp179
	.uleb128 .Ltmp182-.Lfunc_begin3         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin3         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin3         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin3         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Lfunc_end6-.Ltmp170           #   Call between .Ltmp170 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2
                                        # -- End function
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ # -- Begin function _ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.p2align	4, 0x90
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,@function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: # @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	strlen@PLT
	movq	%rax, %r12
	leaq	16(%rbx), %r13
	movq	%r13, (%rbx)
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	movq	8(%r14), %rsi
	addq	%rax, %rsi
.Ltmp183:
	movq	%rbx, %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm@PLT
.Ltmp184:
# %bb.1:
	movabsq	$4611686018427387903, %rbp      # imm = 0x3FFFFFFFFFFFFFFF
	movq	%rbp, %rax
	subq	8(%rbx), %rax
	cmpq	%r12, %rax
	jb	.LBB7_2
# %bb.4:
.Ltmp185:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.Ltmp186:
# %bb.5:
	movq	8(%r14), %rdx
	subq	8(%rbx), %rbp
	cmpq	%rdx, %rbp
	jb	.LBB7_6
# %bb.11:
	movq	(%r14), %rsi
.Ltmp187:
	movq	%rbx, %rdi
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.Ltmp188:
# %bb.12:
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB7_2:
	.cfi_def_cfa_offset 64
.Ltmp191:
	leaq	.L.str.52(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp192:
# %bb.3:
.LBB7_6:
.Ltmp189:
	leaq	.L.str.52(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp190:
# %bb.7:
.LBB7_8:
.Ltmp193:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	cmpq	%r13, %rdi
	je	.LBB7_10
# %bb.9:
	callq	_ZdlPv@PLT
.LBB7_10:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end7:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, .Lfunc_end7-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.cfi_endproc
	.section	.gcc_except_table._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,"aG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,comdat
	.p2align	2
GCC_except_table7:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp183-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp190-.Ltmp183              #   Call between .Ltmp183 and .Ltmp190
	.uleb128 .Ltmp193-.Lfunc_begin4         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Lfunc_end7-.Ltmp190           #   Call between .Ltmp190 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_shell.cpp
	.type	_GLOBAL__sub_I_shell.cpp,@function
_GLOBAL__sub_I_shell.cpp:               # @_GLOBAL__sub_I_shell.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	movq	%rbx, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT                # TAILCALL
.Lfunc_end8:
	.size	_GLOBAL__sub_I_shell.cpp, .Lfunc_end8-_GLOBAL__sub_I_shell.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nCaught SIGINT. Press Ctrl+C again to exit."
	.size	.L.str, 44

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\033[1mCopyright (C) Escola de Refer\303\252ncia Maciel Pinheiro 2024\n"
	.size	.L.str.1, 62

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SGSMP Vers\303\243o 3.2, desenvolvido por Gabriel Moura Passos de Souza\n"
	.size	.L.str.2, 67

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Software distribu\303\255do sobre Licen\303\247a MP/GM\n\n"
	.size	.L.str.3, 45

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Bem-vindo ao shell de controle do servidor.\n\nDigite 'help' ou '?' para listar os comandos.\n\033[0m"
	.size	.L.str.4, 96

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\nServidor ([CONTROL])> "
	.size	.L.str.5, 24

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"help"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"?"
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"start apache"
	.size	.L.str.8, 13

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"stop apache"
	.size	.L.str.9, 12

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"restart apache"
	.size	.L.str.10, 15

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"status apache"
	.size	.L.str.11, 14

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"configure virtual host"
	.size	.L.str.12, 23

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"start mysql"
	.size	.L.str.13, 12

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"stop mysql"
	.size	.L.str.14, 11

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"restart mysql"
	.size	.L.str.15, 14

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"status mysql"
	.size	.L.str.16, 13

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"create database"
	.size	.L.str.17, 16

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"create user"
	.size	.L.str.18, 12

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"exit"
	.size	.L.str.19, 5

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\033[1mBye!\n"
	.size	.L.str.20, 10

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Comando n\303\243o reconhecido. Digite 'help' para ver os comandos dispon\303\255veis.\n"
	.size	.L.str.21, 76

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Comandos dispon\303\255veis:\n"
	.size	.L.str.22, 24

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"  start apache         - Iniciar o servi\303\247o Apache\n"
	.size	.L.str.23, 52

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"  stop apache          - Parar o servi\303\247o Apache\n"
	.size	.L.str.24, 50

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"  restart apache       - Reiniciar o servi\303\247o Apache\n"
	.size	.L.str.25, 54

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"  status apache        - Verificar o status do servi\303\247o Apache\n"
	.size	.L.str.26, 64

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"  configure virtual host - Configurar um novo virtual host no Apache\n"
	.size	.L.str.27, 70

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"  start mysql          - Iniciar o servi\303\247o MySQL\n"
	.size	.L.str.28, 51

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"  stop mysql           - Parar o servi\303\247o MySQL\n"
	.size	.L.str.29, 49

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"  restart mysql        - Reiniciar o servi\303\247o MySQL\n"
	.size	.L.str.30, 53

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"  status mysql         - Verificar o status do servi\303\247o MySQL\n"
	.size	.L.str.31, 63

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"  create database      - Criar um novo banco de dados MySQL\n"
	.size	.L.str.32, 61

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"  create user          - Criar um novo usu\303\241rio no MySQL\n"
	.size	.L.str.33, 58

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"  exit                 - Sair do shell\n"
	.size	.L.str.34, 40

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"sudo systemctl start apache2"
	.size	.L.str.35, 29

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"sudo systemctl stop apache2"
	.size	.L.str.36, 28

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"sudo systemctl restart apache2"
	.size	.L.str.37, 31

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"sudo systemctl status apache2"
	.size	.L.str.38, 30

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Digite o nome de dom\303\255nio para o virtual host: "
	.size	.L.str.39, 48

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Digite o caminho absoluto para o diret\303\263rio raiz do site: "
	.size	.L.str.40, 59

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"/etc/apache2/sites-available/"
	.size	.L.str.41, 30

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	".conf"
	.size	.L.str.42, 6

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"<VirtualHost *:80>\n"
	.size	.L.str.43, 20

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"    ServerName "
	.size	.L.str.44, 16

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"\n"
	.size	.L.str.45, 2

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"    DocumentRoot "
	.size	.L.str.46, 18

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"</VirtualHost>\n"
	.size	.L.str.47, 16

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"sudo a2ensite "
	.size	.L.str.48, 15

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"sudo systemctl reload apache2"
	.size	.L.str.49, 30

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Virtual host para "
	.size	.L.str.50, 19

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	" configurado com sucesso.\n"
	.size	.L.str.51, 27

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"basic_string::append"
	.size	.L.str.52, 21

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"sudo systemctl start mysql"
	.size	.L.str.53, 27

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"sudo systemctl stop mysql"
	.size	.L.str.54, 26

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"sudo systemctl restart mysql"
	.size	.L.str.55, 29

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"sudo systemctl status mysql"
	.size	.L.str.56, 28

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"Digite o nome do banco de dados: "
	.size	.L.str.57, 34

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"mysql -e 'CREATE DATABASE "
	.size	.L.str.58, 27

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	";'"
	.size	.L.str.59, 3

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"Banco de dados "
	.size	.L.str.60, 16

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	" criado com sucesso.\n"
	.size	.L.str.61, 22

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"Digite o nome de usu\303\241rio: "
	.size	.L.str.62, 28

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"Digite a senha: "
	.size	.L.str.63, 17

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"mysql -e \"CREATE USER '"
	.size	.L.str.64, 24

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"'@'localhost' IDENTIFIED BY '"
	.size	.L.str.65, 30

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"';\""
	.size	.L.str.66, 4

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"Usu\303\241rio "
	.size	.L.str.67, 10

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_shell.cpp
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"Debian clang version 14.0.6"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z13handle_siginti
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_shell.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZSt3cin
