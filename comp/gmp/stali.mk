ROOT=../..

include $(ROOT)/config.mk

ASMFLAGS = -Wa,--noexecstack
CFLAGS += -std=gnu99 -I. -I. -I.. -O2 -pedantic -m64 -mtune=k8 -fPIC -DPIC
CPPFLAGS += -DHAVE_CONFIG_H  -D__GMP_WITHIN_GMP -DOPERATION_fib_table 
LIB = libgmp.a

OBJS = randmui.o\
	mp_get_fns.o\
	mpn/gcdext_lehmer.o\
	mpn/mul.o\
	mpn/toom53_mul.o\
	mpn/divrem_2.O\
	mpn/fib_table.o\
	mpn/gcd_lehmer.o\
	mpn/get_d.o\
	mpn/dc_divappr_q.o\
	mpn/add_n.O\
	mpn/neg_n.o\
	mpn/toom32_mul.o\
	mpn/sb_div_qr.o\
	mpn/add.o\
	mpn/gcd.o\
	mpn/rootrem.o\
	mpn/scan0.o\
	mpn/toom_interpolate_5pts.o\
	mpn/gcdext.o\
	mpn/pre_mod_1.o\
	mpn/toom22_mul.o\
	mpn/get_str.o\
	mpn/dc_divrem_n.o\
	mpn/scan1.o\
	mpn/hamdist.O\
	mpn/nior_n.O\
	mpn/jacbase.o\
	mpn/addmul_2.O\
	mpn/tdiv_qr.o\
	mpn/toom44_mul.o\
	mpn/popcount.O\
	mpn/perfsqr.o\
	mpn/sqr_basecase.O\
	mpn/lshift.O\
	mpn/mul_n.o\
	mpn/gcdext_subdiv_step.o\
	mpn/divrem_1.O\
	mpn/nand_n.O\
	mpn/sub_1.o\
	mpn/mullow_n.o\
	mpn/set_str.o\
	mpn/toom62_mul.o\
	mpn/redc_2.o\
	mpn/mod_1_2.o\
	mpn/xnor_n.O\
	mpn/random.o\
	mpn/toom42_mul.o\
	mpn/divrem.o\
	mpn/mu_div_q.o\
	mpn/bdivmod.o\
	mpn/invert_limb.O\
	mpn/mod_1.o\
	mpn/pow_1.o\
	mpn/subcnd_n.o\
	mpn/toom33_mul.o\
	mpn/mod_1_1.o\
	mpn/hgcd.o\
	mpn/dc_bdiv_q.o\
	mpn/toom2_sqr.o\
	mpn/matrix22_mul.o\
	mpn/sub_n.O\
	mpn/addmul_1.O\
	mpn/mu_divappr_q.o\
	mpn/toom3_sqr.o\
	mpn/iorn_n.O\
	mpn/powm_sec.o\
	mpn/gcdext_1.o\
	mpn/dc_div_qr.o\
	mpn/powlo.o\
	mpn/mod_34lsub1.O\
	mpn/sublsh1_n.O\
	mpn/fib2_ui.o\
	mpn/submul_1.O\
	mpn/rshift.O\
	mpn/mu_bdiv_q.o\
	mpn/random2.o\
	mpn/mul_2.O\
	mpn/mod_1_3.o\
	mpn/dive_1.O\
	mpn/binvert.o\
	mpn/cmp.o\
	mpn/bdiv_dbm1c.O\
	mpn/sqrtrem.o\
	mpn/mp_bases.o\
	mpn/sub.o\
	mpn/sb_div_q.o\
	mpn/mul_1.O\
	mpn/gcd_1.o\
	mpn/toom4_sqr.o\
	mpn/ior_n.O\
	mpn/andn_n.O\
	mpn/and_n.O\
	mpn/mode1o.O\
	mpn/mu_div_qr.o\
	mpn/diveby3.o\
	mpn/add_1.o\
	mpn/invert.o\
	mpn/sb_bdiv_qr.o\
	mpn/com_n.O\
	mpn/mul_fft.o\
	mpn/copyd.O\
	mpn/dc_bdiv_qr.o\
	mpn/addlsh1_n.O\
	mpn/dump.o\
	mpn/addaddmul_1msb0.O\
	mpn/sb_bdiv_q.o\
	mpn/sb_divappr_q.o\
	mpn/gcd_subdiv_step.o\
	mpn/sb_divrem_mn.o\
	mpn/powm.o\
	mpn/copyi.O\
	mpn/divexact.o\
	mpn/hgcd2.o\
	mpn/rsh1add_n.O\
	mpn/dc_div_q.o\
	mpn/redc_1.O\
	mpn/toom_interpolate_7pts.o\
	mpn/addsub_n.o\
	mpn/mod_1_4.o\
	mpn/divis.o\
	mpn/rsh1sub_n.O\
	mpn/xor_n.O\
	mpn/mu_bdiv_qr.o\
	mpn/mul_basecase.O\
	mpn/mullow_basecase.o\
	randdef.o\
	scanf/scanf.o\
	scanf/fscanf.o\
	scanf/sscanffuns.o\
	scanf/vfscanf.o\
	scanf/fscanffuns.o\
	scanf/vscanf.o\
	scanf/doscan.o\
	scanf/sscanf.o\
	scanf/vsscanf.o\
	rand.o\
	extract-dbl.o\
	randiset.o\
	compat.o\
	mp_clz_tab.o\
	mpz/mul.o\
	mpz/lcm_ui.o\
	mpz/import.o\
	mpz/pow_ui.o\
	mpz/tdiv_r_2exp.o\
	mpz/dive_ui.o\
	mpz/combit.o\
	mpz/clrbit.o\
	mpz/get_d_2exp.o\
	mpz/com.o\
	mpz/get_d.o\
	mpz/cdiv_r.o\
	mpz/fits_sint.o\
	mpz/n_pow_ui.o\
	mpz/fits_ushort.o\
	mpz/add.o\
	mpz/kronzs.o\
	mpz/gcd.o\
	mpz/rootrem.o\
	mpz/set_f.o\
	mpz/realloc2.o\
	mpz/realloc.o\
	mpz/scan0.o\
	mpz/tdiv_q_ui.o\
	mpz/fdiv_r.o\
	mpz/gcdext.o\
	mpz/perfpow.o\
	mpz/tdiv_qr_ui.o\
	mpz/get_ui.o\
	mpz/out_raw.o\
	mpz/fdiv_qr_ui.o\
	mpz/get_str.o\
	mpz/cdiv_q_ui.o\
	mpz/cmpabs_ui.o\
	mpz/cdiv_ui.o\
	mpz/set_q.o\
	mpz/divis_2exp.o\
	mpz/aorsmul_i.o\
	mpz/fdiv_q_ui.o\
	mpz/scan1.o\
	mpz/hamdist.o\
	mpz/iset_si.o\
	mpz/cfdiv_r_2exp.o\
	mpz/set_si.o\
	mpz/init.o\
	mpz/tdiv_qr.o\
	mpz/popcount.o\
	mpz/perfsqr.o\
	mpz/fib_ui.o\
	mpz/fits_ulong.o\
	mpz/gcd_ui.o\
	mpz/sizeinbase.o\
	mpz/millerrabin.o\
	mpz/neg.o\
	mpz/ui_sub.o\
	mpz/cong_ui.o\
	mpz/lucnum_ui.o\
	mpz/fdiv_ui.o\
	mpz/set_str.o\
	mpz/tdiv_ui.o\
	mpz/jacobi.o\
	mpz/divis_ui.o\
	mpz/fdiv_qr.o\
	mpz/ui_pow_ui.o\
	mpz/rrandomb.o\
	mpz/random.o\
	mpz/iset.o\
	mpz/tdiv_q_2exp.o\
	mpz/cmpabs_d.o\
	mpz/divegcd.o\
	mpz/cmpabs.o\
	mpz/mod.o\
	mpz/fdiv_r_ui.o\
	mpz/bin_ui.o\
	mpz/tdiv_r.o\
	mpz/size.o\
	mpz/urandomm.o\
	mpz/swap.o\
	mpz/cmp_ui.o\
	mpz/fdiv_q.o\
	mpz/lucnum2_ui.o\
	mpz/sqrt.o\
	mpz/aorsmul.o\
	mpz/clear.o\
	mpz/tstbit.o\
	mpz/fits_uint.o\
	mpz/array_init.o\
	mpz/get_si.o\
	mpz/kronuz.o\
	mpz/set_ui.o\
	mpz/cdiv_qr_ui.o\
	mpz/fib2_ui.o\
	mpz/bin_uiui.o\
	mpz/ior.o\
	mpz/urandomb.o\
	mpz/random2.o\
	mpz/cong_2exp.o\
	mpz/mul_2exp.o\
	mpz/cmp.o\
	mpz/sqrtrem.o\
	mpz/cdiv_q.o\
	mpz/cdiv_r_ui.o\
	mpz/inp_raw.o\
	mpz/sub.o\
	mpz/lcm.o\
	mpz/cdiv_qr.o\
	mpz/cfdiv_q_2exp.o\
	mpz/tdiv_q.o\
	mpz/iset_str.o\
	mpz/nextprime.o\
	mpz/powm_ui.o\
	mpz/and.o\
	mpz/invert.o\
	mpz/add_ui.o\
	mpz/cmp_d.o\
	mpz/setbit.o\
	mpz/xor.o\
	mpz/set.o\
	mpz/fits_sshort.o\
	mpz/cong.o\
	mpz/mul_ui.o\
	mpz/kronsz.o\
	mpz/remove.o\
	mpz/export.o\
	mpz/pprime_p.o\
	mpz/set_d.o\
	mpz/abs.o\
	mpz/sub_ui.o\
	mpz/dump.o\
	mpz/init2.o\
	mpz/powm.o\
	mpz/fac_ui.o\
	mpz/cmp_si.o\
	mpz/divexact.o\
	mpz/out_str.o\
	mpz/iset_ui.o\
	mpz/inp_str.o\
	mpz/fits_slong.o\
	mpz/getlimbn.o\
	mpz/tdiv_r_ui.o\
	mpz/iset_d.o\
	mpz/root.o\
	mpz/divis.o\
	mpz/mul_si.o\
	mpz/kronzu.o\
	mpq/mul.o\
	mpq/get_d.o\
	mpq/set_f.o\
	mpq/get_str.o\
	mpq/get_num.o\
	mpq/get_den.o\
	mpq/set_den.o\
	mpq/set_si.o\
	mpq/init.o\
	mpq/neg.o\
	mpq/set_str.o\
	mpq/div.o\
	mpq/set_z.o\
	mpq/set_num.o\
	mpq/swap.o\
	mpq/cmp_ui.o\
	mpq/clear.o\
	mpq/equal.o\
	mpq/set_ui.o\
	mpq/canonicalize.o\
	mpq/cmp.o\
	mpq/set.o\
	mpq/set_d.o\
	mpq/abs.o\
	mpq/md_2exp.o\
	mpq/inv.o\
	mpq/cmp_si.o\
	mpq/out_str.o\
	mpq/aors.o\
	mpq/inp_str.o\
	errno.o\
	mp_set_fns.o\
	randsdui.o\
	mp_minv_tab.o\
	randlc2s.o\
	randsd.o\
	randlc2x.o\
	version.o\
	memory.o\
	mp_dv_tab.o\
	tal-reent.o\
	mp_bpl.o\
	randmt.o\
	randmts.o\
	printf/doprnt.o\
	printf/printf.o\
	printf/obvprintf.o\
	printf/vasprintf.o\
	printf/printffuns.o\
	printf/vprintf.o\
	printf/vsprintf.o\
	printf/fprintf.o\
	printf/doprnti.o\
	printf/asprintf.o\
	printf/obprntffuns.o\
	printf/repl-vsnprintf.o\
	printf/snprntffuns.o\
	printf/vsnprintf.o\
	printf/sprintf.o\
	printf/sprintffuns.o\
	printf/snprintf.o\
	printf/obprintf.o\
	printf/doprntf.o\
	printf/asprntffuns.o\
	printf/vfprintf.o\
	assert.o\
	randclr.o\
	mpf/mul.o\
	mpf/pow_ui.o\
	mpf/get_d_2exp.o\
	mpf/get_d.o\
	mpf/fits_sint.o\
	mpf/fits_ushort.o\
	mpf/add.o\
	mpf/ui_div.o\
	mpf/int_p.o\
	mpf/get_ui.o\
	mpf/get_str.o\
	mpf/set_q.o\
	mpf/trunc.o\
	mpf/iset_si.o\
	mpf/set_si.o\
	mpf/init.o\
	mpf/fits_ulong.o\
	mpf/ceilfloor.o\
	mpf/neg.o\
	mpf/ui_sub.o\
	mpf/set_str.o\
	mpf/div.o\
	mpf/set_z.o\
	mpf/iset.o\
	mpf/get_dfl_prec.o\
	mpf/sqrt_ui.o\
	mpf/get_prc.o\
	mpf/size.o\
	mpf/swap.o\
	mpf/cmp_ui.o\
	mpf/sqrt.o\
	mpf/eq.o\
	mpf/clear.o\
	mpf/fits_uint.o\
	mpf/set_prc.o\
	mpf/get_si.o\
	mpf/set_ui.o\
	mpf/div_2exp.o\
	mpf/urandomb.o\
	mpf/random2.o\
	mpf/mul_2exp.o\
	mpf/cmp.o\
	mpf/sub.o\
	mpf/reldiff.o\
	mpf/set_dfl_prec.o\
	mpf/iset_str.o\
	mpf/div_ui.o\
	mpf/add_ui.o\
	mpf/cmp_d.o\
	mpf/set.o\
	mpf/fits_sshort.o\
	mpf/mul_ui.o\
	mpf/set_d.o\
	mpf/abs.o\
	mpf/sub_ui.o\
	mpf/dump.o\
	mpf/init2.o\
	mpf/cmp_si.o\
	mpf/out_str.o\
	mpf/iset_ui.o\
	mpf/inp_str.o\
	mpf/fits_slong.o\
	mpf/iset_d.o\
	mpf/set_prc_raw.o\
	randbui.o\
	invalid.o\
	rands.o
CLEAN_FILES = 

include $(ROOT)/mk/lib.mk

deps: $(CLEAN_FILES)

%.O: %.asm
	@echo ASM $< 
	@cd mpn; $(M4) -DOPERATION_`basename $*` `basename $<` >`basename $*`-tmp.s
	@$(CC) $(CFLAGS) $(CPPFLAGS) $(ASMFLAGS) -c $*-tmp.s -o $@
	@rm -f $*-tmp.s
