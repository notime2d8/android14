	.text
	.file	"hyp-constants.c"
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	//APP

	.ascii	"->STRUCT_HYP_PAGE_SIZE 4 sizeof(struct hyp_page)"
	//NO_APP
	//APP

	.ascii	"->PKVM_HYP_VM_SIZE 4448 sizeof(struct pkvm_hyp_vm)"
	//NO_APP
	//APP

	.ascii	"->PKVM_HYP_VCPU_SIZE 9712 sizeof(struct pkvm_hyp_vcpu)"
	//NO_APP
	mov	w0, wzr
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.ident	"Android (10087095, +pgo, +bolt, +lto, -mlgo, based on r487747c) clang version 17.0.2 (https://android.googlesource.com/toolchain/llvm-project d9f89f4d16663d5012e5c09495f3b30ece3d2362)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
