# source file to test assembly of MIPS DSP ASE for MIPS64 instructions

	.set noreorder
	.set nomacro
	.set noat

	.text
text_label:

	absq_s.pw	$0,$1
	absq_s.qh	$30,$31
	addq.pw		$5,$6,$7
	addq_s.pw	$6,$7,$8
	addq.qh		$2,$3,$4
	addq_s.qh	$3,$4,$5
	addu.ob		$9,$10,$11
	addu_s.ob	$10,$11,$12
	bposge64	text_label
	nop
	cmp.eq.pw	$20,$21
	cmp.lt.pw	$21,$22
	cmp.le.pw	$22,$23
	cmp.eq.qh	$17,$18
	cmp.lt.qh	$18,$19
	cmp.le.qh	$19,$20
	cmpu.eq.ob	$14,$15
	cmpu.lt.ob	$15,$16
	cmpu.le.ob	$16,$17
	cmpgu.eq.ob	$8,$9,$10
	cmpgu.lt.ob	$9,$10,$11
	cmpgu.le.ob	$10,$11,$12
	dextpdp		$31,$ac3,0
	dextpdp		$31,$ac3,1
	dextpdp		$31,$ac3,31
	dextpdpv	$0,$ac0,$1
	dextp		$29,$ac1,0
	dextp		$29,$ac1,1
	dextp		$29,$ac1,31
	dextpv		$30,$ac2,$31
	dextr.l		$3,$ac3,0
	dextr.l		$3,$ac3,1
	dextr.l		$3,$ac3,31
	dextr_r.l	$4,$ac0,0
	dextr_r.l	$4,$ac0,1
	dextr_r.l	$4,$ac0,31
	dextr_rs.l	$5,$ac1,0
	dextr_rs.l	$5,$ac1,1
	dextr_rs.l	$5,$ac1,31
	dextr_r.w	$1,$ac1,0
	dextr_r.w	$1,$ac1,1
	dextr_r.w	$1,$ac1,31
	dextr_rs.w	$2,$ac2,0
	dextr_rs.w	$2,$ac2,1
	dextr_rs.w	$2,$ac2,31
	dextr_s.h	$2,$ac2,0
	dextr_s.h	$2,$ac2,1
	dextr_s.h	$2,$ac2,31
	dextr.w		$0,$ac0,0
	dextr.w		$0,$ac0,1
	dextr.w		$0,$ac0,31
	dextrv.w	$11,$ac3,$12
	dextrv_r.w	$12,$ac0,$13
	dextrv_rs.w	$13,$ac1,$14
	dextrv.l	$14,$ac2,$15
	dextrv_r.l	$15,$ac3,$16
	dextrv_rs.l	$16,$ac0,$17
	dinsv		$26,$27
	dmadd		$ac1,$20,$21
	dmaddu		$ac2,$21,$22
	dmsub		$ac3,$22,$23
	dmsubu		$ac0,$23,$24
	dmthlip		$4,$ac2
	dpaq_sa.l.pw	$ac1,$0,$1
	dpaq_s.w.qh	$ac2,$21,$22
	dpau.h.obl	$ac0,$15,$16
	dpau.h.obr	$ac1,$16,$17
	dpsq_sa.l.pw	$ac0,$3,$4
	dpsq_s.w.qh	$ac1,$24,$25
	dpsu.h.obl	$ac2,$17,$18
	dpsu.h.obr	$ac3,$18,$19
	dshilo		$ac3,-64
	dshilo		$ac3,63
	dshilov		$ac0,$2
	ldx		$16,$17($18)
	maq_sa.w.qhll	$ac3,$10,$11
	maq_sa.w.qhlr	$ac0,$11,$12
	maq_sa.w.qhrl	$ac1,$12,$13
	maq_sa.w.qhrr	$ac2,$13,$14
	maq_s.l.pwl	$ac1,$16,$17
	maq_s.l.pwr	$ac2,$17,$18
	maq_s.w.qhll	$ac3,$10,$11
	maq_s.w.qhlr	$ac0,$11,$12
	maq_s.w.qhrl	$ac1,$12,$13
	maq_s.w.qhrr	$ac2,$13,$14
	muleq_s.pw.qhl	$11,$12,$13
	muleq_s.pw.qhr	$12,$13,$14
	muleu_s.qh.obl	$4,$5,$6
	muleu_s.qh.obr	$5,$6,$7
	mulq_rs.ph	$6,$7,$8
	mulq_rs.qh	$8,$9,$10
	mulsaq_s.w.qh	$ac0,$27,$28
	mulsaq_s.l.pw	$ac2,$29,$30
	packrl.pw	$28,$29,$30
	pick.ob		$25,$26,$27
	pick.qh		$26,$27,$28
	pick.pw		$27,$28,$29
	preceq.pw.qhl	$14,$15
	preceq.pw.qhr	$15,$16
	preceq.pw.qhla	$16,$17
	preceq.pw.qhra	$17,$18
	preceq.s.l.pwl	$18,$19
	preceq.s.l.pwr	$19,$20
	precequ.pw.qhl	$24,$25
	precequ.pw.qhr	$25,$26
	precequ.pw.qhla	$26,$27
	precequ.pw.qhra	$27,$28
	preceu.qh.obl	$28,$29
	preceu.qh.obr	$29,$30
	preceu.qh.obla	$30,$31
	preceu.qh.obra	$31,$0
	precrq.ob.qh	$4,$5,$6
	precrq.pw.l	$7,$8,$9
	precrq.qh.pw	$5,$6,$7
	precrq_rs.qh.pw	$6,$7,$8
	precrqu_s.ob.qh	$9,$10,$11
	raddu.l.ob	$26,$27
	repl.ob		$29,0
	repl.ob		$29,255
	replv.ob	$30,$31
	repl.qh		$1,-512
	repl.qh		$1,511
	replv.qh	$2,$3
	repl.pw		$3,-512
	repl.pw		$3,511
	replv.pw	$4,$5
	shll.ob		$2,$3,0
	shll.ob		$2,$3,7
	shllv.ob	$3,$4,$5
	shll.qh		$8,$9,0
	shll.qh		$8,$9,15
	shllv.qh	$9,$10,$11
	shll_s.qh	$10,$11,0
	shll_s.qh	$10,$11,15
	shllv_s.qh	$11,$12,$13
	shll.pw		$14,$15,0
	shll.pw		$14,$15,31
	shllv.pw	$15,$16,$17
	shll_s.pw	$16,$17,0
	shll_s.pw	$16,$17,31
	shllv_s.pw	$17,$18,$19
	shra.qh		$28,$29,0
	shra.qh		$28,$29,15
	shrav.qh	$29,$30,$31
	shra_r.qh	$30,$31,0
	shra_r.qh	$30,$31,15
	shrav_r.qh	$31,$0,$1
	shra.pw		$0,$1,0
	shra.pw		$0,$1,31
	shrav.pw	$1,$2,$3
	shra_r.pw	$2,$3,0
	shra_r.pw	$2,$3,31
	shrav_r.pw	$3,$4,$5
	shrl.ob		$20,$21,0
	shrl.ob		$20,$21,7
	shrlv.ob	$21,$22,$23
	subq.qh		$16,$17,$18
	subq_s.qh	$17,$18,$19
	subq.pw		$18,$19,$20
	subq_s.pw	$19,$20,$21
	subu.ob		$20,$21,$22
	subu_s.ob	$21,$22,$23

# Force at least 8 (non-delay-slot) zero bytes, to make 'objdump' print ...
	.space	8