
kernel/kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	89013103          	ld	sp,-1904(sp) # 8000b890 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	6505                	lui	a0,0x1
    8000000a:	f14025f3          	csrr	a1,mhartid
    8000000e:	0585                	addi	a1,a1,1
    80000010:	02b50533          	mul	a0,a0,a1
    80000014:	912a                	add	sp,sp,a0
    80000016:	170000ef          	jal	ra,80000186 <start>

000000008000001a <spin>:
    8000001a:	a001                	j	8000001a <spin>

000000008000001c <r_mhartid>:
    8000001c:	1101                	addi	sp,sp,-32
    8000001e:	ec22                	sd	s0,24(sp)
    80000020:	1000                	addi	s0,sp,32
    80000022:	f14027f3          	csrr	a5,mhartid
    80000026:	fef43423          	sd	a5,-24(s0)
    8000002a:	fe843783          	ld	a5,-24(s0)
    8000002e:	853e                	mv	a0,a5
    80000030:	6462                	ld	s0,24(sp)
    80000032:	6105                	addi	sp,sp,32
    80000034:	8082                	ret

0000000080000036 <r_mstatus>:
    80000036:	1101                	addi	sp,sp,-32
    80000038:	ec22                	sd	s0,24(sp)
    8000003a:	1000                	addi	s0,sp,32
    8000003c:	300027f3          	csrr	a5,mstatus
    80000040:	fef43423          	sd	a5,-24(s0)
    80000044:	fe843783          	ld	a5,-24(s0)
    80000048:	853e                	mv	a0,a5
    8000004a:	6462                	ld	s0,24(sp)
    8000004c:	6105                	addi	sp,sp,32
    8000004e:	8082                	ret

0000000080000050 <w_mstatus>:
    80000050:	1101                	addi	sp,sp,-32
    80000052:	ec22                	sd	s0,24(sp)
    80000054:	1000                	addi	s0,sp,32
    80000056:	fea43423          	sd	a0,-24(s0)
    8000005a:	fe843783          	ld	a5,-24(s0)
    8000005e:	30079073          	csrw	mstatus,a5
    80000062:	0001                	nop
    80000064:	6462                	ld	s0,24(sp)
    80000066:	6105                	addi	sp,sp,32
    80000068:	8082                	ret

000000008000006a <w_mepc>:
    8000006a:	1101                	addi	sp,sp,-32
    8000006c:	ec22                	sd	s0,24(sp)
    8000006e:	1000                	addi	s0,sp,32
    80000070:	fea43423          	sd	a0,-24(s0)
    80000074:	fe843783          	ld	a5,-24(s0)
    80000078:	34179073          	csrw	mepc,a5
    8000007c:	0001                	nop
    8000007e:	6462                	ld	s0,24(sp)
    80000080:	6105                	addi	sp,sp,32
    80000082:	8082                	ret

0000000080000084 <r_sie>:
    80000084:	1101                	addi	sp,sp,-32
    80000086:	ec22                	sd	s0,24(sp)
    80000088:	1000                	addi	s0,sp,32
    8000008a:	104027f3          	csrr	a5,sie
    8000008e:	fef43423          	sd	a5,-24(s0)
    80000092:	fe843783          	ld	a5,-24(s0)
    80000096:	853e                	mv	a0,a5
    80000098:	6462                	ld	s0,24(sp)
    8000009a:	6105                	addi	sp,sp,32
    8000009c:	8082                	ret

000000008000009e <w_sie>:
    8000009e:	1101                	addi	sp,sp,-32
    800000a0:	ec22                	sd	s0,24(sp)
    800000a2:	1000                	addi	s0,sp,32
    800000a4:	fea43423          	sd	a0,-24(s0)
    800000a8:	fe843783          	ld	a5,-24(s0)
    800000ac:	10479073          	csrw	sie,a5
    800000b0:	0001                	nop
    800000b2:	6462                	ld	s0,24(sp)
    800000b4:	6105                	addi	sp,sp,32
    800000b6:	8082                	ret

00000000800000b8 <r_mie>:
    800000b8:	1101                	addi	sp,sp,-32
    800000ba:	ec22                	sd	s0,24(sp)
    800000bc:	1000                	addi	s0,sp,32
    800000be:	304027f3          	csrr	a5,mie
    800000c2:	fef43423          	sd	a5,-24(s0)
    800000c6:	fe843783          	ld	a5,-24(s0)
    800000ca:	853e                	mv	a0,a5
    800000cc:	6462                	ld	s0,24(sp)
    800000ce:	6105                	addi	sp,sp,32
    800000d0:	8082                	ret

00000000800000d2 <w_mie>:
    800000d2:	1101                	addi	sp,sp,-32
    800000d4:	ec22                	sd	s0,24(sp)
    800000d6:	1000                	addi	s0,sp,32
    800000d8:	fea43423          	sd	a0,-24(s0)
    800000dc:	fe843783          	ld	a5,-24(s0)
    800000e0:	30479073          	csrw	mie,a5
    800000e4:	0001                	nop
    800000e6:	6462                	ld	s0,24(sp)
    800000e8:	6105                	addi	sp,sp,32
    800000ea:	8082                	ret

00000000800000ec <w_medeleg>:
    800000ec:	1101                	addi	sp,sp,-32
    800000ee:	ec22                	sd	s0,24(sp)
    800000f0:	1000                	addi	s0,sp,32
    800000f2:	fea43423          	sd	a0,-24(s0)
    800000f6:	fe843783          	ld	a5,-24(s0)
    800000fa:	30279073          	csrw	medeleg,a5
    800000fe:	0001                	nop
    80000100:	6462                	ld	s0,24(sp)
    80000102:	6105                	addi	sp,sp,32
    80000104:	8082                	ret

0000000080000106 <w_mideleg>:
    80000106:	1101                	addi	sp,sp,-32
    80000108:	ec22                	sd	s0,24(sp)
    8000010a:	1000                	addi	s0,sp,32
    8000010c:	fea43423          	sd	a0,-24(s0)
    80000110:	fe843783          	ld	a5,-24(s0)
    80000114:	30379073          	csrw	mideleg,a5
    80000118:	0001                	nop
    8000011a:	6462                	ld	s0,24(sp)
    8000011c:	6105                	addi	sp,sp,32
    8000011e:	8082                	ret

0000000080000120 <w_mtvec>:
    80000120:	1101                	addi	sp,sp,-32
    80000122:	ec22                	sd	s0,24(sp)
    80000124:	1000                	addi	s0,sp,32
    80000126:	fea43423          	sd	a0,-24(s0)
    8000012a:	fe843783          	ld	a5,-24(s0)
    8000012e:	30579073          	csrw	mtvec,a5
    80000132:	0001                	nop
    80000134:	6462                	ld	s0,24(sp)
    80000136:	6105                	addi	sp,sp,32
    80000138:	8082                	ret

000000008000013a <w_satp>:
    8000013a:	1101                	addi	sp,sp,-32
    8000013c:	ec22                	sd	s0,24(sp)
    8000013e:	1000                	addi	s0,sp,32
    80000140:	fea43423          	sd	a0,-24(s0)
    80000144:	fe843783          	ld	a5,-24(s0)
    80000148:	18079073          	csrw	satp,a5
    8000014c:	0001                	nop
    8000014e:	6462                	ld	s0,24(sp)
    80000150:	6105                	addi	sp,sp,32
    80000152:	8082                	ret

0000000080000154 <w_mscratch>:
    80000154:	1101                	addi	sp,sp,-32
    80000156:	ec22                	sd	s0,24(sp)
    80000158:	1000                	addi	s0,sp,32
    8000015a:	fea43423          	sd	a0,-24(s0)
    8000015e:	fe843783          	ld	a5,-24(s0)
    80000162:	34079073          	csrw	mscratch,a5
    80000166:	0001                	nop
    80000168:	6462                	ld	s0,24(sp)
    8000016a:	6105                	addi	sp,sp,32
    8000016c:	8082                	ret

000000008000016e <w_tp>:
    8000016e:	1101                	addi	sp,sp,-32
    80000170:	ec22                	sd	s0,24(sp)
    80000172:	1000                	addi	s0,sp,32
    80000174:	fea43423          	sd	a0,-24(s0)
    80000178:	fe843783          	ld	a5,-24(s0)
    8000017c:	823e                	mv	tp,a5
    8000017e:	0001                	nop
    80000180:	6462                	ld	s0,24(sp)
    80000182:	6105                	addi	sp,sp,32
    80000184:	8082                	ret

0000000080000186 <start>:
    80000186:	1101                	addi	sp,sp,-32
    80000188:	ec06                	sd	ra,24(sp)
    8000018a:	e822                	sd	s0,16(sp)
    8000018c:	1000                	addi	s0,sp,32
    8000018e:	00000097          	auipc	ra,0x0
    80000192:	ea8080e7          	jalr	-344(ra) # 80000036 <r_mstatus>
    80000196:	fea43423          	sd	a0,-24(s0)
    8000019a:	fe843703          	ld	a4,-24(s0)
    8000019e:	77f9                	lui	a5,0xffffe
    800001a0:	7ff78793          	addi	a5,a5,2047 # ffffffffffffe7ff <end+0xffffffff7ffd57ff>
    800001a4:	8ff9                	and	a5,a5,a4
    800001a6:	fef43423          	sd	a5,-24(s0)
    800001aa:	fe843703          	ld	a4,-24(s0)
    800001ae:	6785                	lui	a5,0x1
    800001b0:	80078793          	addi	a5,a5,-2048 # 800 <_entry-0x7ffff800>
    800001b4:	8fd9                	or	a5,a5,a4
    800001b6:	fef43423          	sd	a5,-24(s0)
    800001ba:	fe843503          	ld	a0,-24(s0)
    800001be:	00000097          	auipc	ra,0x0
    800001c2:	e92080e7          	jalr	-366(ra) # 80000050 <w_mstatus>
    800001c6:	00001797          	auipc	a5,0x1
    800001ca:	63478793          	addi	a5,a5,1588 # 800017fa <main>
    800001ce:	853e                	mv	a0,a5
    800001d0:	00000097          	auipc	ra,0x0
    800001d4:	e9a080e7          	jalr	-358(ra) # 8000006a <w_mepc>
    800001d8:	4501                	li	a0,0
    800001da:	00000097          	auipc	ra,0x0
    800001de:	f60080e7          	jalr	-160(ra) # 8000013a <w_satp>
    800001e2:	67c1                	lui	a5,0x10
    800001e4:	fff78513          	addi	a0,a5,-1 # ffff <_entry-0x7fff0001>
    800001e8:	00000097          	auipc	ra,0x0
    800001ec:	f04080e7          	jalr	-252(ra) # 800000ec <w_medeleg>
    800001f0:	67c1                	lui	a5,0x10
    800001f2:	fff78513          	addi	a0,a5,-1 # ffff <_entry-0x7fff0001>
    800001f6:	00000097          	auipc	ra,0x0
    800001fa:	f10080e7          	jalr	-240(ra) # 80000106 <w_mideleg>
    800001fe:	00000097          	auipc	ra,0x0
    80000202:	e86080e7          	jalr	-378(ra) # 80000084 <r_sie>
    80000206:	87aa                	mv	a5,a0
    80000208:	2227e793          	ori	a5,a5,546
    8000020c:	853e                	mv	a0,a5
    8000020e:	00000097          	auipc	ra,0x0
    80000212:	e90080e7          	jalr	-368(ra) # 8000009e <w_sie>
    80000216:	00000097          	auipc	ra,0x0
    8000021a:	032080e7          	jalr	50(ra) # 80000248 <timerinit>
    8000021e:	00000097          	auipc	ra,0x0
    80000222:	dfe080e7          	jalr	-514(ra) # 8000001c <r_mhartid>
    80000226:	87aa                	mv	a5,a0
    80000228:	fef42223          	sw	a5,-28(s0)
    8000022c:	fe442783          	lw	a5,-28(s0)
    80000230:	853e                	mv	a0,a5
    80000232:	00000097          	auipc	ra,0x0
    80000236:	f3c080e7          	jalr	-196(ra) # 8000016e <w_tp>
    8000023a:	30200073          	mret
    8000023e:	0001                	nop
    80000240:	60e2                	ld	ra,24(sp)
    80000242:	6442                	ld	s0,16(sp)
    80000244:	6105                	addi	sp,sp,32
    80000246:	8082                	ret

0000000080000248 <timerinit>:
    80000248:	1101                	addi	sp,sp,-32
    8000024a:	ec06                	sd	ra,24(sp)
    8000024c:	e822                	sd	s0,16(sp)
    8000024e:	1000                	addi	s0,sp,32
    80000250:	00000097          	auipc	ra,0x0
    80000254:	dcc080e7          	jalr	-564(ra) # 8000001c <r_mhartid>
    80000258:	87aa                	mv	a5,a0
    8000025a:	fef42623          	sw	a5,-20(s0)
    8000025e:	000f47b7          	lui	a5,0xf4
    80000262:	24078793          	addi	a5,a5,576 # f4240 <_entry-0x7ff0bdc0>
    80000266:	fef42423          	sw	a5,-24(s0)
    8000026a:	0200c7b7          	lui	a5,0x200c
    8000026e:	17e1                	addi	a5,a5,-8
    80000270:	6398                	ld	a4,0(a5)
    80000272:	fe842783          	lw	a5,-24(s0)
    80000276:	fec42683          	lw	a3,-20(s0)
    8000027a:	0036969b          	slliw	a3,a3,0x3
    8000027e:	2681                	sext.w	a3,a3
    80000280:	8636                	mv	a2,a3
    80000282:	020046b7          	lui	a3,0x2004
    80000286:	96b2                	add	a3,a3,a2
    80000288:	97ba                	add	a5,a5,a4
    8000028a:	e29c                	sd	a5,0(a3)
    8000028c:	fec42703          	lw	a4,-20(s0)
    80000290:	87ba                	mv	a5,a4
    80000292:	078a                	slli	a5,a5,0x2
    80000294:	97ba                	add	a5,a5,a4
    80000296:	078e                	slli	a5,a5,0x3
    80000298:	00014717          	auipc	a4,0x14
    8000029c:	d9870713          	addi	a4,a4,-616 # 80014030 <timer_scratch>
    800002a0:	97ba                	add	a5,a5,a4
    800002a2:	fef43023          	sd	a5,-32(s0)
    800002a6:	fec42783          	lw	a5,-20(s0)
    800002aa:	0037979b          	slliw	a5,a5,0x3
    800002ae:	2781                	sext.w	a5,a5
    800002b0:	873e                	mv	a4,a5
    800002b2:	020047b7          	lui	a5,0x2004
    800002b6:	973e                	add	a4,a4,a5
    800002b8:	fe043783          	ld	a5,-32(s0)
    800002bc:	07e1                	addi	a5,a5,24
    800002be:	e398                	sd	a4,0(a5)
    800002c0:	fe043783          	ld	a5,-32(s0)
    800002c4:	02078793          	addi	a5,a5,32 # 2004020 <_entry-0x7dffbfe0>
    800002c8:	fe842703          	lw	a4,-24(s0)
    800002cc:	e398                	sd	a4,0(a5)
    800002ce:	fe043783          	ld	a5,-32(s0)
    800002d2:	853e                	mv	a0,a5
    800002d4:	00000097          	auipc	ra,0x0
    800002d8:	e80080e7          	jalr	-384(ra) # 80000154 <w_mscratch>
    800002dc:	00008797          	auipc	a5,0x8
    800002e0:	50478793          	addi	a5,a5,1284 # 800087e0 <timervec>
    800002e4:	853e                	mv	a0,a5
    800002e6:	00000097          	auipc	ra,0x0
    800002ea:	e3a080e7          	jalr	-454(ra) # 80000120 <w_mtvec>
    800002ee:	00000097          	auipc	ra,0x0
    800002f2:	d48080e7          	jalr	-696(ra) # 80000036 <r_mstatus>
    800002f6:	87aa                	mv	a5,a0
    800002f8:	0087e793          	ori	a5,a5,8
    800002fc:	853e                	mv	a0,a5
    800002fe:	00000097          	auipc	ra,0x0
    80000302:	d52080e7          	jalr	-686(ra) # 80000050 <w_mstatus>
    80000306:	00000097          	auipc	ra,0x0
    8000030a:	db2080e7          	jalr	-590(ra) # 800000b8 <r_mie>
    8000030e:	87aa                	mv	a5,a0
    80000310:	0807e793          	ori	a5,a5,128
    80000314:	853e                	mv	a0,a5
    80000316:	00000097          	auipc	ra,0x0
    8000031a:	dbc080e7          	jalr	-580(ra) # 800000d2 <w_mie>
    8000031e:	0001                	nop
    80000320:	60e2                	ld	ra,24(sp)
    80000322:	6442                	ld	s0,16(sp)
    80000324:	6105                	addi	sp,sp,32
    80000326:	8082                	ret

0000000080000328 <consputc>:
    80000328:	1101                	addi	sp,sp,-32
    8000032a:	ec06                	sd	ra,24(sp)
    8000032c:	e822                	sd	s0,16(sp)
    8000032e:	1000                	addi	s0,sp,32
    80000330:	87aa                	mv	a5,a0
    80000332:	fef42623          	sw	a5,-20(s0)
    80000336:	fec42783          	lw	a5,-20(s0)
    8000033a:	0007871b          	sext.w	a4,a5
    8000033e:	10000793          	li	a5,256
    80000342:	02f71363          	bne	a4,a5,80000368 <consputc+0x40>
    80000346:	4521                	li	a0,8
    80000348:	00001097          	auipc	ra,0x1
    8000034c:	af6080e7          	jalr	-1290(ra) # 80000e3e <uartputc_sync>
    80000350:	02000513          	li	a0,32
    80000354:	00001097          	auipc	ra,0x1
    80000358:	aea080e7          	jalr	-1302(ra) # 80000e3e <uartputc_sync>
    8000035c:	4521                	li	a0,8
    8000035e:	00001097          	auipc	ra,0x1
    80000362:	ae0080e7          	jalr	-1312(ra) # 80000e3e <uartputc_sync>
    80000366:	a801                	j	80000376 <consputc+0x4e>
    80000368:	fec42783          	lw	a5,-20(s0)
    8000036c:	853e                	mv	a0,a5
    8000036e:	00001097          	auipc	ra,0x1
    80000372:	ad0080e7          	jalr	-1328(ra) # 80000e3e <uartputc_sync>
    80000376:	0001                	nop
    80000378:	60e2                	ld	ra,24(sp)
    8000037a:	6442                	ld	s0,16(sp)
    8000037c:	6105                	addi	sp,sp,32
    8000037e:	8082                	ret

0000000080000380 <consolewrite>:
    80000380:	7179                	addi	sp,sp,-48
    80000382:	f406                	sd	ra,40(sp)
    80000384:	f022                	sd	s0,32(sp)
    80000386:	1800                	addi	s0,sp,48
    80000388:	87aa                	mv	a5,a0
    8000038a:	fcb43823          	sd	a1,-48(s0)
    8000038e:	8732                	mv	a4,a2
    80000390:	fcf42e23          	sw	a5,-36(s0)
    80000394:	87ba                	mv	a5,a4
    80000396:	fcf42c23          	sw	a5,-40(s0)
    8000039a:	00014517          	auipc	a0,0x14
    8000039e:	dd650513          	addi	a0,a0,-554 # 80014170 <cons>
    800003a2:	00001097          	auipc	ra,0x1
    800003a6:	ede080e7          	jalr	-290(ra) # 80001280 <acquire>
    800003aa:	fe042623          	sw	zero,-20(s0)
    800003ae:	a0a1                	j	800003f6 <consolewrite+0x76>
    800003b0:	fec42703          	lw	a4,-20(s0)
    800003b4:	fd043783          	ld	a5,-48(s0)
    800003b8:	00f70633          	add	a2,a4,a5
    800003bc:	fdc42703          	lw	a4,-36(s0)
    800003c0:	feb40793          	addi	a5,s0,-21
    800003c4:	4685                	li	a3,1
    800003c6:	85ba                	mv	a1,a4
    800003c8:	853e                	mv	a0,a5
    800003ca:	00003097          	auipc	ra,0x3
    800003ce:	27a080e7          	jalr	634(ra) # 80003644 <either_copyin>
    800003d2:	87aa                	mv	a5,a0
    800003d4:	873e                	mv	a4,a5
    800003d6:	57fd                	li	a5,-1
    800003d8:	02f70863          	beq	a4,a5,80000408 <consolewrite+0x88>
    800003dc:	feb44783          	lbu	a5,-21(s0)
    800003e0:	2781                	sext.w	a5,a5
    800003e2:	853e                	mv	a0,a5
    800003e4:	00001097          	auipc	ra,0x1
    800003e8:	970080e7          	jalr	-1680(ra) # 80000d54 <uartputc>
    800003ec:	fec42783          	lw	a5,-20(s0)
    800003f0:	2785                	addiw	a5,a5,1
    800003f2:	fef42623          	sw	a5,-20(s0)
    800003f6:	fec42703          	lw	a4,-20(s0)
    800003fa:	fd842783          	lw	a5,-40(s0)
    800003fe:	2701                	sext.w	a4,a4
    80000400:	2781                	sext.w	a5,a5
    80000402:	faf747e3          	blt	a4,a5,800003b0 <consolewrite+0x30>
    80000406:	a011                	j	8000040a <consolewrite+0x8a>
    80000408:	0001                	nop
    8000040a:	00014517          	auipc	a0,0x14
    8000040e:	d6650513          	addi	a0,a0,-666 # 80014170 <cons>
    80000412:	00001097          	auipc	ra,0x1
    80000416:	ed2080e7          	jalr	-302(ra) # 800012e4 <release>
    8000041a:	fec42783          	lw	a5,-20(s0)
    8000041e:	853e                	mv	a0,a5
    80000420:	70a2                	ld	ra,40(sp)
    80000422:	7402                	ld	s0,32(sp)
    80000424:	6145                	addi	sp,sp,48
    80000426:	8082                	ret

0000000080000428 <consoleread>:
    80000428:	7179                	addi	sp,sp,-48
    8000042a:	f406                	sd	ra,40(sp)
    8000042c:	f022                	sd	s0,32(sp)
    8000042e:	1800                	addi	s0,sp,48
    80000430:	87aa                	mv	a5,a0
    80000432:	fcb43823          	sd	a1,-48(s0)
    80000436:	8732                	mv	a4,a2
    80000438:	fcf42e23          	sw	a5,-36(s0)
    8000043c:	87ba                	mv	a5,a4
    8000043e:	fcf42c23          	sw	a5,-40(s0)
    80000442:	fd842783          	lw	a5,-40(s0)
    80000446:	fef42623          	sw	a5,-20(s0)
    8000044a:	00014517          	auipc	a0,0x14
    8000044e:	d2650513          	addi	a0,a0,-730 # 80014170 <cons>
    80000452:	00001097          	auipc	ra,0x1
    80000456:	e2e080e7          	jalr	-466(ra) # 80001280 <acquire>
    8000045a:	a215                	j	8000057e <consoleread+0x156>
    8000045c:	00002097          	auipc	ra,0x2
    80000460:	38e080e7          	jalr	910(ra) # 800027ea <myproc>
    80000464:	87aa                	mv	a5,a0
    80000466:	5b9c                	lw	a5,48(a5)
    80000468:	cb99                	beqz	a5,8000047e <consoleread+0x56>
    8000046a:	00014517          	auipc	a0,0x14
    8000046e:	d0650513          	addi	a0,a0,-762 # 80014170 <cons>
    80000472:	00001097          	auipc	ra,0x1
    80000476:	e72080e7          	jalr	-398(ra) # 800012e4 <release>
    8000047a:	57fd                	li	a5,-1
    8000047c:	aa25                	j	800005b4 <consoleread+0x18c>
    8000047e:	00014597          	auipc	a1,0x14
    80000482:	cf258593          	addi	a1,a1,-782 # 80014170 <cons>
    80000486:	00014517          	auipc	a0,0x14
    8000048a:	d8250513          	addi	a0,a0,-638 # 80014208 <cons+0x98>
    8000048e:	00003097          	auipc	ra,0x3
    80000492:	f30080e7          	jalr	-208(ra) # 800033be <sleep>
    80000496:	00014797          	auipc	a5,0x14
    8000049a:	cda78793          	addi	a5,a5,-806 # 80014170 <cons>
    8000049e:	0987a703          	lw	a4,152(a5)
    800004a2:	00014797          	auipc	a5,0x14
    800004a6:	cce78793          	addi	a5,a5,-818 # 80014170 <cons>
    800004aa:	09c7a783          	lw	a5,156(a5)
    800004ae:	faf707e3          	beq	a4,a5,8000045c <consoleread+0x34>
    800004b2:	00014797          	auipc	a5,0x14
    800004b6:	cbe78793          	addi	a5,a5,-834 # 80014170 <cons>
    800004ba:	0987a783          	lw	a5,152(a5)
    800004be:	2781                	sext.w	a5,a5
    800004c0:	0017871b          	addiw	a4,a5,1
    800004c4:	0007069b          	sext.w	a3,a4
    800004c8:	00014717          	auipc	a4,0x14
    800004cc:	ca870713          	addi	a4,a4,-856 # 80014170 <cons>
    800004d0:	08d72c23          	sw	a3,152(a4)
    800004d4:	07f7f793          	andi	a5,a5,127
    800004d8:	2781                	sext.w	a5,a5
    800004da:	00014717          	auipc	a4,0x14
    800004de:	c9670713          	addi	a4,a4,-874 # 80014170 <cons>
    800004e2:	1782                	slli	a5,a5,0x20
    800004e4:	9381                	srli	a5,a5,0x20
    800004e6:	97ba                	add	a5,a5,a4
    800004e8:	0187c783          	lbu	a5,24(a5)
    800004ec:	fef42423          	sw	a5,-24(s0)
    800004f0:	fe842783          	lw	a5,-24(s0)
    800004f4:	0007871b          	sext.w	a4,a5
    800004f8:	4791                	li	a5,4
    800004fa:	02f71963          	bne	a4,a5,8000052c <consoleread+0x104>
    800004fe:	fd842703          	lw	a4,-40(s0)
    80000502:	fec42783          	lw	a5,-20(s0)
    80000506:	2781                	sext.w	a5,a5
    80000508:	08f77163          	bgeu	a4,a5,8000058a <consoleread+0x162>
    8000050c:	00014797          	auipc	a5,0x14
    80000510:	c6478793          	addi	a5,a5,-924 # 80014170 <cons>
    80000514:	0987a783          	lw	a5,152(a5)
    80000518:	37fd                	addiw	a5,a5,-1
    8000051a:	0007871b          	sext.w	a4,a5
    8000051e:	00014797          	auipc	a5,0x14
    80000522:	c5278793          	addi	a5,a5,-942 # 80014170 <cons>
    80000526:	08e7ac23          	sw	a4,152(a5)
    8000052a:	a085                	j	8000058a <consoleread+0x162>
    8000052c:	fe842783          	lw	a5,-24(s0)
    80000530:	0ff7f793          	andi	a5,a5,255
    80000534:	fef403a3          	sb	a5,-25(s0)
    80000538:	fe740713          	addi	a4,s0,-25
    8000053c:	fdc42783          	lw	a5,-36(s0)
    80000540:	4685                	li	a3,1
    80000542:	863a                	mv	a2,a4
    80000544:	fd043583          	ld	a1,-48(s0)
    80000548:	853e                	mv	a0,a5
    8000054a:	00003097          	auipc	ra,0x3
    8000054e:	086080e7          	jalr	134(ra) # 800035d0 <either_copyout>
    80000552:	87aa                	mv	a5,a0
    80000554:	873e                	mv	a4,a5
    80000556:	57fd                	li	a5,-1
    80000558:	02f70b63          	beq	a4,a5,8000058e <consoleread+0x166>
    8000055c:	fd043783          	ld	a5,-48(s0)
    80000560:	0785                	addi	a5,a5,1
    80000562:	fcf43823          	sd	a5,-48(s0)
    80000566:	fd842783          	lw	a5,-40(s0)
    8000056a:	37fd                	addiw	a5,a5,-1
    8000056c:	fcf42c23          	sw	a5,-40(s0)
    80000570:	fe842783          	lw	a5,-24(s0)
    80000574:	0007871b          	sext.w	a4,a5
    80000578:	47a9                	li	a5,10
    8000057a:	00f70c63          	beq	a4,a5,80000592 <consoleread+0x16a>
    8000057e:	fd842783          	lw	a5,-40(s0)
    80000582:	2781                	sext.w	a5,a5
    80000584:	f0f049e3          	bgtz	a5,80000496 <consoleread+0x6e>
    80000588:	a031                	j	80000594 <consoleread+0x16c>
    8000058a:	0001                	nop
    8000058c:	a021                	j	80000594 <consoleread+0x16c>
    8000058e:	0001                	nop
    80000590:	a011                	j	80000594 <consoleread+0x16c>
    80000592:	0001                	nop
    80000594:	00014517          	auipc	a0,0x14
    80000598:	bdc50513          	addi	a0,a0,-1060 # 80014170 <cons>
    8000059c:	00001097          	auipc	ra,0x1
    800005a0:	d48080e7          	jalr	-696(ra) # 800012e4 <release>
    800005a4:	fd842783          	lw	a5,-40(s0)
    800005a8:	fec42703          	lw	a4,-20(s0)
    800005ac:	40f707bb          	subw	a5,a4,a5
    800005b0:	2781                	sext.w	a5,a5
    800005b2:	2781                	sext.w	a5,a5
    800005b4:	853e                	mv	a0,a5
    800005b6:	70a2                	ld	ra,40(sp)
    800005b8:	7402                	ld	s0,32(sp)
    800005ba:	6145                	addi	sp,sp,48
    800005bc:	8082                	ret

00000000800005be <consoleintr>:
    800005be:	1101                	addi	sp,sp,-32
    800005c0:	ec06                	sd	ra,24(sp)
    800005c2:	e822                	sd	s0,16(sp)
    800005c4:	1000                	addi	s0,sp,32
    800005c6:	87aa                	mv	a5,a0
    800005c8:	fef42623          	sw	a5,-20(s0)
    800005cc:	00014517          	auipc	a0,0x14
    800005d0:	ba450513          	addi	a0,a0,-1116 # 80014170 <cons>
    800005d4:	00001097          	auipc	ra,0x1
    800005d8:	cac080e7          	jalr	-852(ra) # 80001280 <acquire>
    800005dc:	fec42783          	lw	a5,-20(s0)
    800005e0:	0007871b          	sext.w	a4,a5
    800005e4:	07f00793          	li	a5,127
    800005e8:	0cf70763          	beq	a4,a5,800006b6 <consoleintr+0xf8>
    800005ec:	fec42783          	lw	a5,-20(s0)
    800005f0:	0007871b          	sext.w	a4,a5
    800005f4:	07f00793          	li	a5,127
    800005f8:	10e7c363          	blt	a5,a4,800006fe <consoleintr+0x140>
    800005fc:	fec42783          	lw	a5,-20(s0)
    80000600:	0007871b          	sext.w	a4,a5
    80000604:	47d5                	li	a5,21
    80000606:	06f70163          	beq	a4,a5,80000668 <consoleintr+0xaa>
    8000060a:	fec42783          	lw	a5,-20(s0)
    8000060e:	0007871b          	sext.w	a4,a5
    80000612:	47d5                	li	a5,21
    80000614:	0ee7c563          	blt	a5,a4,800006fe <consoleintr+0x140>
    80000618:	fec42783          	lw	a5,-20(s0)
    8000061c:	0007871b          	sext.w	a4,a5
    80000620:	47a1                	li	a5,8
    80000622:	08f70a63          	beq	a4,a5,800006b6 <consoleintr+0xf8>
    80000626:	fec42783          	lw	a5,-20(s0)
    8000062a:	0007871b          	sext.w	a4,a5
    8000062e:	47c1                	li	a5,16
    80000630:	0cf71763          	bne	a4,a5,800006fe <consoleintr+0x140>
    80000634:	00003097          	auipc	ra,0x3
    80000638:	084080e7          	jalr	132(ra) # 800036b8 <procdump>
    8000063c:	aac1                	j	8000080c <consoleintr+0x24e>
    8000063e:	00014797          	auipc	a5,0x14
    80000642:	b3278793          	addi	a5,a5,-1230 # 80014170 <cons>
    80000646:	0a07a783          	lw	a5,160(a5)
    8000064a:	37fd                	addiw	a5,a5,-1
    8000064c:	0007871b          	sext.w	a4,a5
    80000650:	00014797          	auipc	a5,0x14
    80000654:	b2078793          	addi	a5,a5,-1248 # 80014170 <cons>
    80000658:	0ae7a023          	sw	a4,160(a5)
    8000065c:	10000513          	li	a0,256
    80000660:	00000097          	auipc	ra,0x0
    80000664:	cc8080e7          	jalr	-824(ra) # 80000328 <consputc>
    80000668:	00014797          	auipc	a5,0x14
    8000066c:	b0878793          	addi	a5,a5,-1272 # 80014170 <cons>
    80000670:	0a07a703          	lw	a4,160(a5)
    80000674:	00014797          	auipc	a5,0x14
    80000678:	afc78793          	addi	a5,a5,-1284 # 80014170 <cons>
    8000067c:	09c7a783          	lw	a5,156(a5)
    80000680:	18f70163          	beq	a4,a5,80000802 <consoleintr+0x244>
    80000684:	00014797          	auipc	a5,0x14
    80000688:	aec78793          	addi	a5,a5,-1300 # 80014170 <cons>
    8000068c:	0a07a783          	lw	a5,160(a5)
    80000690:	37fd                	addiw	a5,a5,-1
    80000692:	2781                	sext.w	a5,a5
    80000694:	07f7f793          	andi	a5,a5,127
    80000698:	2781                	sext.w	a5,a5
    8000069a:	00014717          	auipc	a4,0x14
    8000069e:	ad670713          	addi	a4,a4,-1322 # 80014170 <cons>
    800006a2:	1782                	slli	a5,a5,0x20
    800006a4:	9381                	srli	a5,a5,0x20
    800006a6:	97ba                	add	a5,a5,a4
    800006a8:	0187c783          	lbu	a5,24(a5)
    800006ac:	873e                	mv	a4,a5
    800006ae:	47a9                	li	a5,10
    800006b0:	f8f717e3          	bne	a4,a5,8000063e <consoleintr+0x80>
    800006b4:	a2b9                	j	80000802 <consoleintr+0x244>
    800006b6:	00014797          	auipc	a5,0x14
    800006ba:	aba78793          	addi	a5,a5,-1350 # 80014170 <cons>
    800006be:	0a07a703          	lw	a4,160(a5)
    800006c2:	00014797          	auipc	a5,0x14
    800006c6:	aae78793          	addi	a5,a5,-1362 # 80014170 <cons>
    800006ca:	09c7a783          	lw	a5,156(a5)
    800006ce:	12f70c63          	beq	a4,a5,80000806 <consoleintr+0x248>
    800006d2:	00014797          	auipc	a5,0x14
    800006d6:	a9e78793          	addi	a5,a5,-1378 # 80014170 <cons>
    800006da:	0a07a783          	lw	a5,160(a5)
    800006de:	37fd                	addiw	a5,a5,-1
    800006e0:	0007871b          	sext.w	a4,a5
    800006e4:	00014797          	auipc	a5,0x14
    800006e8:	a8c78793          	addi	a5,a5,-1396 # 80014170 <cons>
    800006ec:	0ae7a023          	sw	a4,160(a5)
    800006f0:	10000513          	li	a0,256
    800006f4:	00000097          	auipc	ra,0x0
    800006f8:	c34080e7          	jalr	-972(ra) # 80000328 <consputc>
    800006fc:	a229                	j	80000806 <consoleintr+0x248>
    800006fe:	fec42783          	lw	a5,-20(s0)
    80000702:	2781                	sext.w	a5,a5
    80000704:	10078363          	beqz	a5,8000080a <consoleintr+0x24c>
    80000708:	00014797          	auipc	a5,0x14
    8000070c:	a6878793          	addi	a5,a5,-1432 # 80014170 <cons>
    80000710:	0a07a703          	lw	a4,160(a5)
    80000714:	00014797          	auipc	a5,0x14
    80000718:	a5c78793          	addi	a5,a5,-1444 # 80014170 <cons>
    8000071c:	0987a783          	lw	a5,152(a5)
    80000720:	40f707bb          	subw	a5,a4,a5
    80000724:	2781                	sext.w	a5,a5
    80000726:	873e                	mv	a4,a5
    80000728:	07f00793          	li	a5,127
    8000072c:	0ce7ef63          	bltu	a5,a4,8000080a <consoleintr+0x24c>
    80000730:	fec42783          	lw	a5,-20(s0)
    80000734:	0007871b          	sext.w	a4,a5
    80000738:	47b5                	li	a5,13
    8000073a:	00f70563          	beq	a4,a5,80000744 <consoleintr+0x186>
    8000073e:	fec42783          	lw	a5,-20(s0)
    80000742:	a011                	j	80000746 <consoleintr+0x188>
    80000744:	47a9                	li	a5,10
    80000746:	fef42623          	sw	a5,-20(s0)
    8000074a:	fec42783          	lw	a5,-20(s0)
    8000074e:	853e                	mv	a0,a5
    80000750:	00000097          	auipc	ra,0x0
    80000754:	bd8080e7          	jalr	-1064(ra) # 80000328 <consputc>
    80000758:	00014797          	auipc	a5,0x14
    8000075c:	a1878793          	addi	a5,a5,-1512 # 80014170 <cons>
    80000760:	0a07a783          	lw	a5,160(a5)
    80000764:	2781                	sext.w	a5,a5
    80000766:	0017871b          	addiw	a4,a5,1
    8000076a:	0007069b          	sext.w	a3,a4
    8000076e:	00014717          	auipc	a4,0x14
    80000772:	a0270713          	addi	a4,a4,-1534 # 80014170 <cons>
    80000776:	0ad72023          	sw	a3,160(a4)
    8000077a:	07f7f793          	andi	a5,a5,127
    8000077e:	2781                	sext.w	a5,a5
    80000780:	fec42703          	lw	a4,-20(s0)
    80000784:	0ff77713          	andi	a4,a4,255
    80000788:	00014697          	auipc	a3,0x14
    8000078c:	9e868693          	addi	a3,a3,-1560 # 80014170 <cons>
    80000790:	1782                	slli	a5,a5,0x20
    80000792:	9381                	srli	a5,a5,0x20
    80000794:	97b6                	add	a5,a5,a3
    80000796:	00e78c23          	sb	a4,24(a5)
    8000079a:	fec42783          	lw	a5,-20(s0)
    8000079e:	0007871b          	sext.w	a4,a5
    800007a2:	47a9                	li	a5,10
    800007a4:	02f70a63          	beq	a4,a5,800007d8 <consoleintr+0x21a>
    800007a8:	fec42783          	lw	a5,-20(s0)
    800007ac:	0007871b          	sext.w	a4,a5
    800007b0:	4791                	li	a5,4
    800007b2:	02f70363          	beq	a4,a5,800007d8 <consoleintr+0x21a>
    800007b6:	00014797          	auipc	a5,0x14
    800007ba:	9ba78793          	addi	a5,a5,-1606 # 80014170 <cons>
    800007be:	0a07a703          	lw	a4,160(a5)
    800007c2:	00014797          	auipc	a5,0x14
    800007c6:	9ae78793          	addi	a5,a5,-1618 # 80014170 <cons>
    800007ca:	0987a783          	lw	a5,152(a5)
    800007ce:	0807879b          	addiw	a5,a5,128
    800007d2:	2781                	sext.w	a5,a5
    800007d4:	02f71b63          	bne	a4,a5,8000080a <consoleintr+0x24c>
    800007d8:	00014797          	auipc	a5,0x14
    800007dc:	99878793          	addi	a5,a5,-1640 # 80014170 <cons>
    800007e0:	0a07a703          	lw	a4,160(a5)
    800007e4:	00014797          	auipc	a5,0x14
    800007e8:	98c78793          	addi	a5,a5,-1652 # 80014170 <cons>
    800007ec:	08e7ae23          	sw	a4,156(a5)
    800007f0:	00014517          	auipc	a0,0x14
    800007f4:	a1850513          	addi	a0,a0,-1512 # 80014208 <cons+0x98>
    800007f8:	00003097          	auipc	ra,0x3
    800007fc:	c5a080e7          	jalr	-934(ra) # 80003452 <wakeup>
    80000800:	a029                	j	8000080a <consoleintr+0x24c>
    80000802:	0001                	nop
    80000804:	a021                	j	8000080c <consoleintr+0x24e>
    80000806:	0001                	nop
    80000808:	a011                	j	8000080c <consoleintr+0x24e>
    8000080a:	0001                	nop
    8000080c:	00014517          	auipc	a0,0x14
    80000810:	96450513          	addi	a0,a0,-1692 # 80014170 <cons>
    80000814:	00001097          	auipc	ra,0x1
    80000818:	ad0080e7          	jalr	-1328(ra) # 800012e4 <release>
    8000081c:	0001                	nop
    8000081e:	60e2                	ld	ra,24(sp)
    80000820:	6442                	ld	s0,16(sp)
    80000822:	6105                	addi	sp,sp,32
    80000824:	8082                	ret

0000000080000826 <consoleinit>:
    80000826:	1141                	addi	sp,sp,-16
    80000828:	e406                	sd	ra,8(sp)
    8000082a:	e022                	sd	s0,0(sp)
    8000082c:	0800                	addi	s0,sp,16
    8000082e:	0000a597          	auipc	a1,0xa
    80000832:	7d258593          	addi	a1,a1,2002 # 8000b000 <etext>
    80000836:	00014517          	auipc	a0,0x14
    8000083a:	93a50513          	addi	a0,a0,-1734 # 80014170 <cons>
    8000083e:	00001097          	auipc	ra,0x1
    80000842:	a12080e7          	jalr	-1518(ra) # 80001250 <initlock>
    80000846:	00000097          	auipc	ra,0x0
    8000084a:	494080e7          	jalr	1172(ra) # 80000cda <uartinit>
    8000084e:	00024797          	auipc	a5,0x24
    80000852:	aaa78793          	addi	a5,a5,-1366 # 800242f8 <devsw>
    80000856:	00000717          	auipc	a4,0x0
    8000085a:	bd270713          	addi	a4,a4,-1070 # 80000428 <consoleread>
    8000085e:	eb98                	sd	a4,16(a5)
    80000860:	00024797          	auipc	a5,0x24
    80000864:	a9878793          	addi	a5,a5,-1384 # 800242f8 <devsw>
    80000868:	00000717          	auipc	a4,0x0
    8000086c:	b1870713          	addi	a4,a4,-1256 # 80000380 <consolewrite>
    80000870:	ef98                	sd	a4,24(a5)
    80000872:	0001                	nop
    80000874:	60a2                	ld	ra,8(sp)
    80000876:	6402                	ld	s0,0(sp)
    80000878:	0141                	addi	sp,sp,16
    8000087a:	8082                	ret

000000008000087c <printint>:
    8000087c:	7139                	addi	sp,sp,-64
    8000087e:	fc06                	sd	ra,56(sp)
    80000880:	f822                	sd	s0,48(sp)
    80000882:	0080                	addi	s0,sp,64
    80000884:	87aa                	mv	a5,a0
    80000886:	86ae                	mv	a3,a1
    80000888:	8732                	mv	a4,a2
    8000088a:	fcf42623          	sw	a5,-52(s0)
    8000088e:	87b6                	mv	a5,a3
    80000890:	fcf42423          	sw	a5,-56(s0)
    80000894:	87ba                	mv	a5,a4
    80000896:	fcf42223          	sw	a5,-60(s0)
    8000089a:	fc442783          	lw	a5,-60(s0)
    8000089e:	2781                	sext.w	a5,a5
    800008a0:	c78d                	beqz	a5,800008ca <printint+0x4e>
    800008a2:	fcc42783          	lw	a5,-52(s0)
    800008a6:	01f7d79b          	srliw	a5,a5,0x1f
    800008aa:	0ff7f793          	andi	a5,a5,255
    800008ae:	fcf42223          	sw	a5,-60(s0)
    800008b2:	fc442783          	lw	a5,-60(s0)
    800008b6:	2781                	sext.w	a5,a5
    800008b8:	cb89                	beqz	a5,800008ca <printint+0x4e>
    800008ba:	fcc42783          	lw	a5,-52(s0)
    800008be:	40f007bb          	negw	a5,a5
    800008c2:	2781                	sext.w	a5,a5
    800008c4:	fef42423          	sw	a5,-24(s0)
    800008c8:	a029                	j	800008d2 <printint+0x56>
    800008ca:	fcc42783          	lw	a5,-52(s0)
    800008ce:	fef42423          	sw	a5,-24(s0)
    800008d2:	fe042623          	sw	zero,-20(s0)
    800008d6:	fc842783          	lw	a5,-56(s0)
    800008da:	fe842703          	lw	a4,-24(s0)
    800008de:	02f777bb          	remuw	a5,a4,a5
    800008e2:	0007861b          	sext.w	a2,a5
    800008e6:	fec42783          	lw	a5,-20(s0)
    800008ea:	0017871b          	addiw	a4,a5,1
    800008ee:	fee42623          	sw	a4,-20(s0)
    800008f2:	0000b697          	auipc	a3,0xb
    800008f6:	e6e68693          	addi	a3,a3,-402 # 8000b760 <digits>
    800008fa:	02061713          	slli	a4,a2,0x20
    800008fe:	9301                	srli	a4,a4,0x20
    80000900:	9736                	add	a4,a4,a3
    80000902:	00074703          	lbu	a4,0(a4)
    80000906:	ff040693          	addi	a3,s0,-16
    8000090a:	97b6                	add	a5,a5,a3
    8000090c:	fee78423          	sb	a4,-24(a5)
    80000910:	fc842783          	lw	a5,-56(s0)
    80000914:	fe842703          	lw	a4,-24(s0)
    80000918:	02f757bb          	divuw	a5,a4,a5
    8000091c:	fef42423          	sw	a5,-24(s0)
    80000920:	fe842783          	lw	a5,-24(s0)
    80000924:	2781                	sext.w	a5,a5
    80000926:	fbc5                	bnez	a5,800008d6 <printint+0x5a>
    80000928:	fc442783          	lw	a5,-60(s0)
    8000092c:	2781                	sext.w	a5,a5
    8000092e:	cf85                	beqz	a5,80000966 <printint+0xea>
    80000930:	fec42783          	lw	a5,-20(s0)
    80000934:	0017871b          	addiw	a4,a5,1
    80000938:	fee42623          	sw	a4,-20(s0)
    8000093c:	ff040713          	addi	a4,s0,-16
    80000940:	97ba                	add	a5,a5,a4
    80000942:	02d00713          	li	a4,45
    80000946:	fee78423          	sb	a4,-24(a5)
    8000094a:	a831                	j	80000966 <printint+0xea>
    8000094c:	fec42783          	lw	a5,-20(s0)
    80000950:	ff040713          	addi	a4,s0,-16
    80000954:	97ba                	add	a5,a5,a4
    80000956:	fe87c783          	lbu	a5,-24(a5)
    8000095a:	2781                	sext.w	a5,a5
    8000095c:	853e                	mv	a0,a5
    8000095e:	00000097          	auipc	ra,0x0
    80000962:	9ca080e7          	jalr	-1590(ra) # 80000328 <consputc>
    80000966:	fec42783          	lw	a5,-20(s0)
    8000096a:	37fd                	addiw	a5,a5,-1
    8000096c:	fef42623          	sw	a5,-20(s0)
    80000970:	fec42783          	lw	a5,-20(s0)
    80000974:	2781                	sext.w	a5,a5
    80000976:	fc07dbe3          	bgez	a5,8000094c <printint+0xd0>
    8000097a:	0001                	nop
    8000097c:	0001                	nop
    8000097e:	70e2                	ld	ra,56(sp)
    80000980:	7442                	ld	s0,48(sp)
    80000982:	6121                	addi	sp,sp,64
    80000984:	8082                	ret

0000000080000986 <printptr>:
    80000986:	7179                	addi	sp,sp,-48
    80000988:	f406                	sd	ra,40(sp)
    8000098a:	f022                	sd	s0,32(sp)
    8000098c:	1800                	addi	s0,sp,48
    8000098e:	fca43c23          	sd	a0,-40(s0)
    80000992:	03000513          	li	a0,48
    80000996:	00000097          	auipc	ra,0x0
    8000099a:	992080e7          	jalr	-1646(ra) # 80000328 <consputc>
    8000099e:	07800513          	li	a0,120
    800009a2:	00000097          	auipc	ra,0x0
    800009a6:	986080e7          	jalr	-1658(ra) # 80000328 <consputc>
    800009aa:	fe042623          	sw	zero,-20(s0)
    800009ae:	a81d                	j	800009e4 <printptr+0x5e>
    800009b0:	fd843783          	ld	a5,-40(s0)
    800009b4:	93f1                	srli	a5,a5,0x3c
    800009b6:	0000b717          	auipc	a4,0xb
    800009ba:	daa70713          	addi	a4,a4,-598 # 8000b760 <digits>
    800009be:	97ba                	add	a5,a5,a4
    800009c0:	0007c783          	lbu	a5,0(a5)
    800009c4:	2781                	sext.w	a5,a5
    800009c6:	853e                	mv	a0,a5
    800009c8:	00000097          	auipc	ra,0x0
    800009cc:	960080e7          	jalr	-1696(ra) # 80000328 <consputc>
    800009d0:	fec42783          	lw	a5,-20(s0)
    800009d4:	2785                	addiw	a5,a5,1
    800009d6:	fef42623          	sw	a5,-20(s0)
    800009da:	fd843783          	ld	a5,-40(s0)
    800009de:	0792                	slli	a5,a5,0x4
    800009e0:	fcf43c23          	sd	a5,-40(s0)
    800009e4:	fec42783          	lw	a5,-20(s0)
    800009e8:	873e                	mv	a4,a5
    800009ea:	47bd                	li	a5,15
    800009ec:	fce7f2e3          	bgeu	a5,a4,800009b0 <printptr+0x2a>
    800009f0:	0001                	nop
    800009f2:	0001                	nop
    800009f4:	70a2                	ld	ra,40(sp)
    800009f6:	7402                	ld	s0,32(sp)
    800009f8:	6145                	addi	sp,sp,48
    800009fa:	8082                	ret

00000000800009fc <printf>:
    800009fc:	7119                	addi	sp,sp,-128
    800009fe:	fc06                	sd	ra,56(sp)
    80000a00:	f822                	sd	s0,48(sp)
    80000a02:	0080                	addi	s0,sp,64
    80000a04:	fca43423          	sd	a0,-56(s0)
    80000a08:	e40c                	sd	a1,8(s0)
    80000a0a:	e810                	sd	a2,16(s0)
    80000a0c:	ec14                	sd	a3,24(s0)
    80000a0e:	f018                	sd	a4,32(s0)
    80000a10:	f41c                	sd	a5,40(s0)
    80000a12:	03043823          	sd	a6,48(s0)
    80000a16:	03143c23          	sd	a7,56(s0)
    80000a1a:	00013797          	auipc	a5,0x13
    80000a1e:	7fe78793          	addi	a5,a5,2046 # 80014218 <pr>
    80000a22:	4f9c                	lw	a5,24(a5)
    80000a24:	fcf42e23          	sw	a5,-36(s0)
    80000a28:	fdc42783          	lw	a5,-36(s0)
    80000a2c:	2781                	sext.w	a5,a5
    80000a2e:	cb89                	beqz	a5,80000a40 <printf+0x44>
    80000a30:	00013517          	auipc	a0,0x13
    80000a34:	7e850513          	addi	a0,a0,2024 # 80014218 <pr>
    80000a38:	00001097          	auipc	ra,0x1
    80000a3c:	848080e7          	jalr	-1976(ra) # 80001280 <acquire>
    80000a40:	fc843783          	ld	a5,-56(s0)
    80000a44:	eb89                	bnez	a5,80000a56 <printf+0x5a>
    80000a46:	0000a517          	auipc	a0,0xa
    80000a4a:	5c250513          	addi	a0,a0,1474 # 8000b008 <etext+0x8>
    80000a4e:	00000097          	auipc	ra,0x0
    80000a52:	204080e7          	jalr	516(ra) # 80000c52 <panic>
    80000a56:	04040793          	addi	a5,s0,64
    80000a5a:	fcf43023          	sd	a5,-64(s0)
    80000a5e:	fc043783          	ld	a5,-64(s0)
    80000a62:	fc878793          	addi	a5,a5,-56
    80000a66:	fcf43823          	sd	a5,-48(s0)
    80000a6a:	fe042623          	sw	zero,-20(s0)
    80000a6e:	a24d                	j	80000c10 <printf+0x214>
    80000a70:	fd842783          	lw	a5,-40(s0)
    80000a74:	0007871b          	sext.w	a4,a5
    80000a78:	02500793          	li	a5,37
    80000a7c:	00f70a63          	beq	a4,a5,80000a90 <printf+0x94>
    80000a80:	fd842783          	lw	a5,-40(s0)
    80000a84:	853e                	mv	a0,a5
    80000a86:	00000097          	auipc	ra,0x0
    80000a8a:	8a2080e7          	jalr	-1886(ra) # 80000328 <consputc>
    80000a8e:	aaa5                	j	80000c06 <printf+0x20a>
    80000a90:	fec42783          	lw	a5,-20(s0)
    80000a94:	2785                	addiw	a5,a5,1
    80000a96:	fef42623          	sw	a5,-20(s0)
    80000a9a:	fec42783          	lw	a5,-20(s0)
    80000a9e:	fc843703          	ld	a4,-56(s0)
    80000aa2:	97ba                	add	a5,a5,a4
    80000aa4:	0007c783          	lbu	a5,0(a5)
    80000aa8:	fcf42c23          	sw	a5,-40(s0)
    80000aac:	fd842783          	lw	a5,-40(s0)
    80000ab0:	2781                	sext.w	a5,a5
    80000ab2:	16078e63          	beqz	a5,80000c2e <printf+0x232>
    80000ab6:	fd842783          	lw	a5,-40(s0)
    80000aba:	0007871b          	sext.w	a4,a5
    80000abe:	07800793          	li	a5,120
    80000ac2:	08f70963          	beq	a4,a5,80000b54 <printf+0x158>
    80000ac6:	fd842783          	lw	a5,-40(s0)
    80000aca:	0007871b          	sext.w	a4,a5
    80000ace:	07800793          	li	a5,120
    80000ad2:	10e7cc63          	blt	a5,a4,80000bea <printf+0x1ee>
    80000ad6:	fd842783          	lw	a5,-40(s0)
    80000ada:	0007871b          	sext.w	a4,a5
    80000ade:	07300793          	li	a5,115
    80000ae2:	0af70563          	beq	a4,a5,80000b8c <printf+0x190>
    80000ae6:	fd842783          	lw	a5,-40(s0)
    80000aea:	0007871b          	sext.w	a4,a5
    80000aee:	07300793          	li	a5,115
    80000af2:	0ee7cc63          	blt	a5,a4,80000bea <printf+0x1ee>
    80000af6:	fd842783          	lw	a5,-40(s0)
    80000afa:	0007871b          	sext.w	a4,a5
    80000afe:	07000793          	li	a5,112
    80000b02:	06f70863          	beq	a4,a5,80000b72 <printf+0x176>
    80000b06:	fd842783          	lw	a5,-40(s0)
    80000b0a:	0007871b          	sext.w	a4,a5
    80000b0e:	07000793          	li	a5,112
    80000b12:	0ce7cc63          	blt	a5,a4,80000bea <printf+0x1ee>
    80000b16:	fd842783          	lw	a5,-40(s0)
    80000b1a:	0007871b          	sext.w	a4,a5
    80000b1e:	02500793          	li	a5,37
    80000b22:	0af70d63          	beq	a4,a5,80000bdc <printf+0x1e0>
    80000b26:	fd842783          	lw	a5,-40(s0)
    80000b2a:	0007871b          	sext.w	a4,a5
    80000b2e:	06400793          	li	a5,100
    80000b32:	0af71c63          	bne	a4,a5,80000bea <printf+0x1ee>
    80000b36:	fd043783          	ld	a5,-48(s0)
    80000b3a:	00878713          	addi	a4,a5,8
    80000b3e:	fce43823          	sd	a4,-48(s0)
    80000b42:	439c                	lw	a5,0(a5)
    80000b44:	4605                	li	a2,1
    80000b46:	45a9                	li	a1,10
    80000b48:	853e                	mv	a0,a5
    80000b4a:	00000097          	auipc	ra,0x0
    80000b4e:	d32080e7          	jalr	-718(ra) # 8000087c <printint>
    80000b52:	a855                	j	80000c06 <printf+0x20a>
    80000b54:	fd043783          	ld	a5,-48(s0)
    80000b58:	00878713          	addi	a4,a5,8
    80000b5c:	fce43823          	sd	a4,-48(s0)
    80000b60:	439c                	lw	a5,0(a5)
    80000b62:	4605                	li	a2,1
    80000b64:	45c1                	li	a1,16
    80000b66:	853e                	mv	a0,a5
    80000b68:	00000097          	auipc	ra,0x0
    80000b6c:	d14080e7          	jalr	-748(ra) # 8000087c <printint>
    80000b70:	a859                	j	80000c06 <printf+0x20a>
    80000b72:	fd043783          	ld	a5,-48(s0)
    80000b76:	00878713          	addi	a4,a5,8
    80000b7a:	fce43823          	sd	a4,-48(s0)
    80000b7e:	639c                	ld	a5,0(a5)
    80000b80:	853e                	mv	a0,a5
    80000b82:	00000097          	auipc	ra,0x0
    80000b86:	e04080e7          	jalr	-508(ra) # 80000986 <printptr>
    80000b8a:	a8b5                	j	80000c06 <printf+0x20a>
    80000b8c:	fd043783          	ld	a5,-48(s0)
    80000b90:	00878713          	addi	a4,a5,8
    80000b94:	fce43823          	sd	a4,-48(s0)
    80000b98:	639c                	ld	a5,0(a5)
    80000b9a:	fef43023          	sd	a5,-32(s0)
    80000b9e:	fe043783          	ld	a5,-32(s0)
    80000ba2:	e79d                	bnez	a5,80000bd0 <printf+0x1d4>
    80000ba4:	0000a797          	auipc	a5,0xa
    80000ba8:	47478793          	addi	a5,a5,1140 # 8000b018 <etext+0x18>
    80000bac:	fef43023          	sd	a5,-32(s0)
    80000bb0:	a005                	j	80000bd0 <printf+0x1d4>
    80000bb2:	fe043783          	ld	a5,-32(s0)
    80000bb6:	0007c783          	lbu	a5,0(a5)
    80000bba:	2781                	sext.w	a5,a5
    80000bbc:	853e                	mv	a0,a5
    80000bbe:	fffff097          	auipc	ra,0xfffff
    80000bc2:	76a080e7          	jalr	1898(ra) # 80000328 <consputc>
    80000bc6:	fe043783          	ld	a5,-32(s0)
    80000bca:	0785                	addi	a5,a5,1
    80000bcc:	fef43023          	sd	a5,-32(s0)
    80000bd0:	fe043783          	ld	a5,-32(s0)
    80000bd4:	0007c783          	lbu	a5,0(a5)
    80000bd8:	ffe9                	bnez	a5,80000bb2 <printf+0x1b6>
    80000bda:	a035                	j	80000c06 <printf+0x20a>
    80000bdc:	02500513          	li	a0,37
    80000be0:	fffff097          	auipc	ra,0xfffff
    80000be4:	748080e7          	jalr	1864(ra) # 80000328 <consputc>
    80000be8:	a839                	j	80000c06 <printf+0x20a>
    80000bea:	02500513          	li	a0,37
    80000bee:	fffff097          	auipc	ra,0xfffff
    80000bf2:	73a080e7          	jalr	1850(ra) # 80000328 <consputc>
    80000bf6:	fd842783          	lw	a5,-40(s0)
    80000bfa:	853e                	mv	a0,a5
    80000bfc:	fffff097          	auipc	ra,0xfffff
    80000c00:	72c080e7          	jalr	1836(ra) # 80000328 <consputc>
    80000c04:	0001                	nop
    80000c06:	fec42783          	lw	a5,-20(s0)
    80000c0a:	2785                	addiw	a5,a5,1
    80000c0c:	fef42623          	sw	a5,-20(s0)
    80000c10:	fec42783          	lw	a5,-20(s0)
    80000c14:	fc843703          	ld	a4,-56(s0)
    80000c18:	97ba                	add	a5,a5,a4
    80000c1a:	0007c783          	lbu	a5,0(a5)
    80000c1e:	fcf42c23          	sw	a5,-40(s0)
    80000c22:	fd842783          	lw	a5,-40(s0)
    80000c26:	2781                	sext.w	a5,a5
    80000c28:	e40794e3          	bnez	a5,80000a70 <printf+0x74>
    80000c2c:	a011                	j	80000c30 <printf+0x234>
    80000c2e:	0001                	nop
    80000c30:	fdc42783          	lw	a5,-36(s0)
    80000c34:	2781                	sext.w	a5,a5
    80000c36:	cb89                	beqz	a5,80000c48 <printf+0x24c>
    80000c38:	00013517          	auipc	a0,0x13
    80000c3c:	5e050513          	addi	a0,a0,1504 # 80014218 <pr>
    80000c40:	00000097          	auipc	ra,0x0
    80000c44:	6a4080e7          	jalr	1700(ra) # 800012e4 <release>
    80000c48:	0001                	nop
    80000c4a:	70e2                	ld	ra,56(sp)
    80000c4c:	7442                	ld	s0,48(sp)
    80000c4e:	6109                	addi	sp,sp,128
    80000c50:	8082                	ret

0000000080000c52 <panic>:
    80000c52:	1101                	addi	sp,sp,-32
    80000c54:	ec06                	sd	ra,24(sp)
    80000c56:	e822                	sd	s0,16(sp)
    80000c58:	1000                	addi	s0,sp,32
    80000c5a:	fea43423          	sd	a0,-24(s0)
    80000c5e:	00013797          	auipc	a5,0x13
    80000c62:	5ba78793          	addi	a5,a5,1466 # 80014218 <pr>
    80000c66:	0007ac23          	sw	zero,24(a5)
    80000c6a:	0000a517          	auipc	a0,0xa
    80000c6e:	3b650513          	addi	a0,a0,950 # 8000b020 <etext+0x20>
    80000c72:	00000097          	auipc	ra,0x0
    80000c76:	d8a080e7          	jalr	-630(ra) # 800009fc <printf>
    80000c7a:	fe843503          	ld	a0,-24(s0)
    80000c7e:	00000097          	auipc	ra,0x0
    80000c82:	d7e080e7          	jalr	-642(ra) # 800009fc <printf>
    80000c86:	0000a517          	auipc	a0,0xa
    80000c8a:	3a250513          	addi	a0,a0,930 # 8000b028 <etext+0x28>
    80000c8e:	00000097          	auipc	ra,0x0
    80000c92:	d6e080e7          	jalr	-658(ra) # 800009fc <printf>
    80000c96:	0000b797          	auipc	a5,0xb
    80000c9a:	36a78793          	addi	a5,a5,874 # 8000c000 <panicked>
    80000c9e:	4705                	li	a4,1
    80000ca0:	c398                	sw	a4,0(a5)
    80000ca2:	a001                	j	80000ca2 <panic+0x50>

0000000080000ca4 <printfinit>:
    80000ca4:	1141                	addi	sp,sp,-16
    80000ca6:	e406                	sd	ra,8(sp)
    80000ca8:	e022                	sd	s0,0(sp)
    80000caa:	0800                	addi	s0,sp,16
    80000cac:	0000a597          	auipc	a1,0xa
    80000cb0:	38458593          	addi	a1,a1,900 # 8000b030 <etext+0x30>
    80000cb4:	00013517          	auipc	a0,0x13
    80000cb8:	56450513          	addi	a0,a0,1380 # 80014218 <pr>
    80000cbc:	00000097          	auipc	ra,0x0
    80000cc0:	594080e7          	jalr	1428(ra) # 80001250 <initlock>
    80000cc4:	00013797          	auipc	a5,0x13
    80000cc8:	55478793          	addi	a5,a5,1364 # 80014218 <pr>
    80000ccc:	4705                	li	a4,1
    80000cce:	cf98                	sw	a4,24(a5)
    80000cd0:	0001                	nop
    80000cd2:	60a2                	ld	ra,8(sp)
    80000cd4:	6402                	ld	s0,0(sp)
    80000cd6:	0141                	addi	sp,sp,16
    80000cd8:	8082                	ret

0000000080000cda <uartinit>:
    80000cda:	1141                	addi	sp,sp,-16
    80000cdc:	e406                	sd	ra,8(sp)
    80000cde:	e022                	sd	s0,0(sp)
    80000ce0:	0800                	addi	s0,sp,16
    80000ce2:	100007b7          	lui	a5,0x10000
    80000ce6:	0785                	addi	a5,a5,1
    80000ce8:	00078023          	sb	zero,0(a5) # 10000000 <_entry-0x70000000>
    80000cec:	100007b7          	lui	a5,0x10000
    80000cf0:	078d                	addi	a5,a5,3
    80000cf2:	f8000713          	li	a4,-128
    80000cf6:	00e78023          	sb	a4,0(a5) # 10000000 <_entry-0x70000000>
    80000cfa:	100007b7          	lui	a5,0x10000
    80000cfe:	470d                	li	a4,3
    80000d00:	00e78023          	sb	a4,0(a5) # 10000000 <_entry-0x70000000>
    80000d04:	100007b7          	lui	a5,0x10000
    80000d08:	0785                	addi	a5,a5,1
    80000d0a:	00078023          	sb	zero,0(a5) # 10000000 <_entry-0x70000000>
    80000d0e:	100007b7          	lui	a5,0x10000
    80000d12:	078d                	addi	a5,a5,3
    80000d14:	470d                	li	a4,3
    80000d16:	00e78023          	sb	a4,0(a5) # 10000000 <_entry-0x70000000>
    80000d1a:	100007b7          	lui	a5,0x10000
    80000d1e:	0789                	addi	a5,a5,2
    80000d20:	471d                	li	a4,7
    80000d22:	00e78023          	sb	a4,0(a5) # 10000000 <_entry-0x70000000>
    80000d26:	100007b7          	lui	a5,0x10000
    80000d2a:	0785                	addi	a5,a5,1
    80000d2c:	470d                	li	a4,3
    80000d2e:	00e78023          	sb	a4,0(a5) # 10000000 <_entry-0x70000000>
    80000d32:	0000a597          	auipc	a1,0xa
    80000d36:	30658593          	addi	a1,a1,774 # 8000b038 <etext+0x38>
    80000d3a:	00013517          	auipc	a0,0x13
    80000d3e:	4fe50513          	addi	a0,a0,1278 # 80014238 <uart_tx_lock>
    80000d42:	00000097          	auipc	ra,0x0
    80000d46:	50e080e7          	jalr	1294(ra) # 80001250 <initlock>
    80000d4a:	0001                	nop
    80000d4c:	60a2                	ld	ra,8(sp)
    80000d4e:	6402                	ld	s0,0(sp)
    80000d50:	0141                	addi	sp,sp,16
    80000d52:	8082                	ret

0000000080000d54 <uartputc>:
    80000d54:	1101                	addi	sp,sp,-32
    80000d56:	ec06                	sd	ra,24(sp)
    80000d58:	e822                	sd	s0,16(sp)
    80000d5a:	1000                	addi	s0,sp,32
    80000d5c:	87aa                	mv	a5,a0
    80000d5e:	fef42623          	sw	a5,-20(s0)
    80000d62:	00013517          	auipc	a0,0x13
    80000d66:	4d650513          	addi	a0,a0,1238 # 80014238 <uart_tx_lock>
    80000d6a:	00000097          	auipc	ra,0x0
    80000d6e:	516080e7          	jalr	1302(ra) # 80001280 <acquire>
    80000d72:	0000b797          	auipc	a5,0xb
    80000d76:	28e78793          	addi	a5,a5,654 # 8000c000 <panicked>
    80000d7a:	439c                	lw	a5,0(a5)
    80000d7c:	2781                	sext.w	a5,a5
    80000d7e:	c391                	beqz	a5,80000d82 <uartputc+0x2e>
    80000d80:	a001                	j	80000d80 <uartputc+0x2c>
    80000d82:	0000b797          	auipc	a5,0xb
    80000d86:	28278793          	addi	a5,a5,642 # 8000c004 <uart_tx_w>
    80000d8a:	439c                	lw	a5,0(a5)
    80000d8c:	2785                	addiw	a5,a5,1
    80000d8e:	2781                	sext.w	a5,a5
    80000d90:	873e                	mv	a4,a5
    80000d92:	41f7579b          	sraiw	a5,a4,0x1f
    80000d96:	01b7d79b          	srliw	a5,a5,0x1b
    80000d9a:	9f3d                	addw	a4,a4,a5
    80000d9c:	8b7d                	andi	a4,a4,31
    80000d9e:	40f707bb          	subw	a5,a4,a5
    80000da2:	0007871b          	sext.w	a4,a5
    80000da6:	0000b797          	auipc	a5,0xb
    80000daa:	26278793          	addi	a5,a5,610 # 8000c008 <uart_tx_r>
    80000dae:	439c                	lw	a5,0(a5)
    80000db0:	00f71f63          	bne	a4,a5,80000dce <uartputc+0x7a>
    80000db4:	00013597          	auipc	a1,0x13
    80000db8:	48458593          	addi	a1,a1,1156 # 80014238 <uart_tx_lock>
    80000dbc:	0000b517          	auipc	a0,0xb
    80000dc0:	24c50513          	addi	a0,a0,588 # 8000c008 <uart_tx_r>
    80000dc4:	00002097          	auipc	ra,0x2
    80000dc8:	5fa080e7          	jalr	1530(ra) # 800033be <sleep>
    80000dcc:	bf5d                	j	80000d82 <uartputc+0x2e>
    80000dce:	0000b797          	auipc	a5,0xb
    80000dd2:	23678793          	addi	a5,a5,566 # 8000c004 <uart_tx_w>
    80000dd6:	439c                	lw	a5,0(a5)
    80000dd8:	fec42703          	lw	a4,-20(s0)
    80000ddc:	0ff77713          	andi	a4,a4,255
    80000de0:	00013697          	auipc	a3,0x13
    80000de4:	47068693          	addi	a3,a3,1136 # 80014250 <uart_tx_buf>
    80000de8:	97b6                	add	a5,a5,a3
    80000dea:	00e78023          	sb	a4,0(a5)
    80000dee:	0000b797          	auipc	a5,0xb
    80000df2:	21678793          	addi	a5,a5,534 # 8000c004 <uart_tx_w>
    80000df6:	439c                	lw	a5,0(a5)
    80000df8:	2785                	addiw	a5,a5,1
    80000dfa:	2781                	sext.w	a5,a5
    80000dfc:	873e                	mv	a4,a5
    80000dfe:	41f7579b          	sraiw	a5,a4,0x1f
    80000e02:	01b7d79b          	srliw	a5,a5,0x1b
    80000e06:	9f3d                	addw	a4,a4,a5
    80000e08:	8b7d                	andi	a4,a4,31
    80000e0a:	40f707bb          	subw	a5,a4,a5
    80000e0e:	0007871b          	sext.w	a4,a5
    80000e12:	0000b797          	auipc	a5,0xb
    80000e16:	1f278793          	addi	a5,a5,498 # 8000c004 <uart_tx_w>
    80000e1a:	c398                	sw	a4,0(a5)
    80000e1c:	00000097          	auipc	ra,0x0
    80000e20:	084080e7          	jalr	132(ra) # 80000ea0 <uartstart>
    80000e24:	00013517          	auipc	a0,0x13
    80000e28:	41450513          	addi	a0,a0,1044 # 80014238 <uart_tx_lock>
    80000e2c:	00000097          	auipc	ra,0x0
    80000e30:	4b8080e7          	jalr	1208(ra) # 800012e4 <release>
    80000e34:	0001                	nop
    80000e36:	60e2                	ld	ra,24(sp)
    80000e38:	6442                	ld	s0,16(sp)
    80000e3a:	6105                	addi	sp,sp,32
    80000e3c:	8082                	ret

0000000080000e3e <uartputc_sync>:
    80000e3e:	1101                	addi	sp,sp,-32
    80000e40:	ec06                	sd	ra,24(sp)
    80000e42:	e822                	sd	s0,16(sp)
    80000e44:	1000                	addi	s0,sp,32
    80000e46:	87aa                	mv	a5,a0
    80000e48:	fef42623          	sw	a5,-20(s0)
    80000e4c:	00000097          	auipc	ra,0x0
    80000e50:	532080e7          	jalr	1330(ra) # 8000137e <push_off>
    80000e54:	0000b797          	auipc	a5,0xb
    80000e58:	1ac78793          	addi	a5,a5,428 # 8000c000 <panicked>
    80000e5c:	439c                	lw	a5,0(a5)
    80000e5e:	2781                	sext.w	a5,a5
    80000e60:	c391                	beqz	a5,80000e64 <uartputc_sync+0x26>
    80000e62:	a001                	j	80000e62 <uartputc_sync+0x24>
    80000e64:	0001                	nop
    80000e66:	100007b7          	lui	a5,0x10000
    80000e6a:	0795                	addi	a5,a5,5
    80000e6c:	0007c783          	lbu	a5,0(a5) # 10000000 <_entry-0x70000000>
    80000e70:	0ff7f793          	andi	a5,a5,255
    80000e74:	2781                	sext.w	a5,a5
    80000e76:	0207f793          	andi	a5,a5,32
    80000e7a:	2781                	sext.w	a5,a5
    80000e7c:	d7ed                	beqz	a5,80000e66 <uartputc_sync+0x28>
    80000e7e:	100007b7          	lui	a5,0x10000
    80000e82:	fec42703          	lw	a4,-20(s0)
    80000e86:	0ff77713          	andi	a4,a4,255
    80000e8a:	00e78023          	sb	a4,0(a5) # 10000000 <_entry-0x70000000>
    80000e8e:	00000097          	auipc	ra,0x0
    80000e92:	548080e7          	jalr	1352(ra) # 800013d6 <pop_off>
    80000e96:	0001                	nop
    80000e98:	60e2                	ld	ra,24(sp)
    80000e9a:	6442                	ld	s0,16(sp)
    80000e9c:	6105                	addi	sp,sp,32
    80000e9e:	8082                	ret

0000000080000ea0 <uartstart>:
    80000ea0:	1101                	addi	sp,sp,-32
    80000ea2:	ec06                	sd	ra,24(sp)
    80000ea4:	e822                	sd	s0,16(sp)
    80000ea6:	1000                	addi	s0,sp,32
    80000ea8:	0000b797          	auipc	a5,0xb
    80000eac:	15c78793          	addi	a5,a5,348 # 8000c004 <uart_tx_w>
    80000eb0:	4398                	lw	a4,0(a5)
    80000eb2:	0000b797          	auipc	a5,0xb
    80000eb6:	15678793          	addi	a5,a5,342 # 8000c008 <uart_tx_r>
    80000eba:	439c                	lw	a5,0(a5)
    80000ebc:	08f70463          	beq	a4,a5,80000f44 <uartstart+0xa4>
    80000ec0:	100007b7          	lui	a5,0x10000
    80000ec4:	0795                	addi	a5,a5,5
    80000ec6:	0007c783          	lbu	a5,0(a5) # 10000000 <_entry-0x70000000>
    80000eca:	0ff7f793          	andi	a5,a5,255
    80000ece:	2781                	sext.w	a5,a5
    80000ed0:	0207f793          	andi	a5,a5,32
    80000ed4:	2781                	sext.w	a5,a5
    80000ed6:	cbad                	beqz	a5,80000f48 <uartstart+0xa8>
    80000ed8:	0000b797          	auipc	a5,0xb
    80000edc:	13078793          	addi	a5,a5,304 # 8000c008 <uart_tx_r>
    80000ee0:	439c                	lw	a5,0(a5)
    80000ee2:	00013717          	auipc	a4,0x13
    80000ee6:	36e70713          	addi	a4,a4,878 # 80014250 <uart_tx_buf>
    80000eea:	97ba                	add	a5,a5,a4
    80000eec:	0007c783          	lbu	a5,0(a5)
    80000ef0:	fef42623          	sw	a5,-20(s0)
    80000ef4:	0000b797          	auipc	a5,0xb
    80000ef8:	11478793          	addi	a5,a5,276 # 8000c008 <uart_tx_r>
    80000efc:	439c                	lw	a5,0(a5)
    80000efe:	2785                	addiw	a5,a5,1
    80000f00:	2781                	sext.w	a5,a5
    80000f02:	873e                	mv	a4,a5
    80000f04:	41f7579b          	sraiw	a5,a4,0x1f
    80000f08:	01b7d79b          	srliw	a5,a5,0x1b
    80000f0c:	9f3d                	addw	a4,a4,a5
    80000f0e:	8b7d                	andi	a4,a4,31
    80000f10:	40f707bb          	subw	a5,a4,a5
    80000f14:	0007871b          	sext.w	a4,a5
    80000f18:	0000b797          	auipc	a5,0xb
    80000f1c:	0f078793          	addi	a5,a5,240 # 8000c008 <uart_tx_r>
    80000f20:	c398                	sw	a4,0(a5)
    80000f22:	0000b517          	auipc	a0,0xb
    80000f26:	0e650513          	addi	a0,a0,230 # 8000c008 <uart_tx_r>
    80000f2a:	00002097          	auipc	ra,0x2
    80000f2e:	528080e7          	jalr	1320(ra) # 80003452 <wakeup>
    80000f32:	100007b7          	lui	a5,0x10000
    80000f36:	fec42703          	lw	a4,-20(s0)
    80000f3a:	0ff77713          	andi	a4,a4,255
    80000f3e:	00e78023          	sb	a4,0(a5) # 10000000 <_entry-0x70000000>
    80000f42:	b79d                	j	80000ea8 <uartstart+0x8>
    80000f44:	0001                	nop
    80000f46:	a011                	j	80000f4a <uartstart+0xaa>
    80000f48:	0001                	nop
    80000f4a:	60e2                	ld	ra,24(sp)
    80000f4c:	6442                	ld	s0,16(sp)
    80000f4e:	6105                	addi	sp,sp,32
    80000f50:	8082                	ret

0000000080000f52 <uartgetc>:
    80000f52:	1141                	addi	sp,sp,-16
    80000f54:	e422                	sd	s0,8(sp)
    80000f56:	0800                	addi	s0,sp,16
    80000f58:	100007b7          	lui	a5,0x10000
    80000f5c:	0795                	addi	a5,a5,5
    80000f5e:	0007c783          	lbu	a5,0(a5) # 10000000 <_entry-0x70000000>
    80000f62:	0ff7f793          	andi	a5,a5,255
    80000f66:	2781                	sext.w	a5,a5
    80000f68:	8b85                	andi	a5,a5,1
    80000f6a:	2781                	sext.w	a5,a5
    80000f6c:	cb89                	beqz	a5,80000f7e <uartgetc+0x2c>
    80000f6e:	100007b7          	lui	a5,0x10000
    80000f72:	0007c783          	lbu	a5,0(a5) # 10000000 <_entry-0x70000000>
    80000f76:	0ff7f793          	andi	a5,a5,255
    80000f7a:	2781                	sext.w	a5,a5
    80000f7c:	a011                	j	80000f80 <uartgetc+0x2e>
    80000f7e:	57fd                	li	a5,-1
    80000f80:	853e                	mv	a0,a5
    80000f82:	6422                	ld	s0,8(sp)
    80000f84:	0141                	addi	sp,sp,16
    80000f86:	8082                	ret

0000000080000f88 <uartintr>:
    80000f88:	1101                	addi	sp,sp,-32
    80000f8a:	ec06                	sd	ra,24(sp)
    80000f8c:	e822                	sd	s0,16(sp)
    80000f8e:	1000                	addi	s0,sp,32
    80000f90:	00000097          	auipc	ra,0x0
    80000f94:	fc2080e7          	jalr	-62(ra) # 80000f52 <uartgetc>
    80000f98:	87aa                	mv	a5,a0
    80000f9a:	fef42623          	sw	a5,-20(s0)
    80000f9e:	fec42783          	lw	a5,-20(s0)
    80000fa2:	0007871b          	sext.w	a4,a5
    80000fa6:	57fd                	li	a5,-1
    80000fa8:	00f70a63          	beq	a4,a5,80000fbc <uartintr+0x34>
    80000fac:	fec42783          	lw	a5,-20(s0)
    80000fb0:	853e                	mv	a0,a5
    80000fb2:	fffff097          	auipc	ra,0xfffff
    80000fb6:	60c080e7          	jalr	1548(ra) # 800005be <consoleintr>
    80000fba:	bfd9                	j	80000f90 <uartintr+0x8>
    80000fbc:	0001                	nop
    80000fbe:	00013517          	auipc	a0,0x13
    80000fc2:	27a50513          	addi	a0,a0,634 # 80014238 <uart_tx_lock>
    80000fc6:	00000097          	auipc	ra,0x0
    80000fca:	2ba080e7          	jalr	698(ra) # 80001280 <acquire>
    80000fce:	00000097          	auipc	ra,0x0
    80000fd2:	ed2080e7          	jalr	-302(ra) # 80000ea0 <uartstart>
    80000fd6:	00013517          	auipc	a0,0x13
    80000fda:	26250513          	addi	a0,a0,610 # 80014238 <uart_tx_lock>
    80000fde:	00000097          	auipc	ra,0x0
    80000fe2:	306080e7          	jalr	774(ra) # 800012e4 <release>
    80000fe6:	0001                	nop
    80000fe8:	60e2                	ld	ra,24(sp)
    80000fea:	6442                	ld	s0,16(sp)
    80000fec:	6105                	addi	sp,sp,32
    80000fee:	8082                	ret

0000000080000ff0 <kinit>:
    80000ff0:	1141                	addi	sp,sp,-16
    80000ff2:	e406                	sd	ra,8(sp)
    80000ff4:	e022                	sd	s0,0(sp)
    80000ff6:	0800                	addi	s0,sp,16
    80000ff8:	0000a597          	auipc	a1,0xa
    80000ffc:	04858593          	addi	a1,a1,72 # 8000b040 <etext+0x40>
    80001000:	00013517          	auipc	a0,0x13
    80001004:	27050513          	addi	a0,a0,624 # 80014270 <kmem>
    80001008:	00000097          	auipc	ra,0x0
    8000100c:	248080e7          	jalr	584(ra) # 80001250 <initlock>
    80001010:	47c5                	li	a5,17
    80001012:	01b79593          	slli	a1,a5,0x1b
    80001016:	00028517          	auipc	a0,0x28
    8000101a:	fea50513          	addi	a0,a0,-22 # 80029000 <end>
    8000101e:	00000097          	auipc	ra,0x0
    80001022:	012080e7          	jalr	18(ra) # 80001030 <freerange>
    80001026:	0001                	nop
    80001028:	60a2                	ld	ra,8(sp)
    8000102a:	6402                	ld	s0,0(sp)
    8000102c:	0141                	addi	sp,sp,16
    8000102e:	8082                	ret

0000000080001030 <freerange>:
    80001030:	7179                	addi	sp,sp,-48
    80001032:	f406                	sd	ra,40(sp)
    80001034:	f022                	sd	s0,32(sp)
    80001036:	1800                	addi	s0,sp,48
    80001038:	fca43c23          	sd	a0,-40(s0)
    8000103c:	fcb43823          	sd	a1,-48(s0)
    80001040:	fd843703          	ld	a4,-40(s0)
    80001044:	6785                	lui	a5,0x1
    80001046:	17fd                	addi	a5,a5,-1
    80001048:	973e                	add	a4,a4,a5
    8000104a:	77fd                	lui	a5,0xfffff
    8000104c:	8ff9                	and	a5,a5,a4
    8000104e:	fef43423          	sd	a5,-24(s0)
    80001052:	a829                	j	8000106c <freerange+0x3c>
    80001054:	fe843503          	ld	a0,-24(s0)
    80001058:	00000097          	auipc	ra,0x0
    8000105c:	030080e7          	jalr	48(ra) # 80001088 <kfree>
    80001060:	fe843703          	ld	a4,-24(s0)
    80001064:	6785                	lui	a5,0x1
    80001066:	97ba                	add	a5,a5,a4
    80001068:	fef43423          	sd	a5,-24(s0)
    8000106c:	fe843703          	ld	a4,-24(s0)
    80001070:	6785                	lui	a5,0x1
    80001072:	97ba                	add	a5,a5,a4
    80001074:	fd043703          	ld	a4,-48(s0)
    80001078:	fcf77ee3          	bgeu	a4,a5,80001054 <freerange+0x24>
    8000107c:	0001                	nop
    8000107e:	0001                	nop
    80001080:	70a2                	ld	ra,40(sp)
    80001082:	7402                	ld	s0,32(sp)
    80001084:	6145                	addi	sp,sp,48
    80001086:	8082                	ret

0000000080001088 <kfree>:
    80001088:	7179                	addi	sp,sp,-48
    8000108a:	f406                	sd	ra,40(sp)
    8000108c:	f022                	sd	s0,32(sp)
    8000108e:	1800                	addi	s0,sp,48
    80001090:	fca43c23          	sd	a0,-40(s0)
    80001094:	fd843703          	ld	a4,-40(s0)
    80001098:	6785                	lui	a5,0x1
    8000109a:	17fd                	addi	a5,a5,-1
    8000109c:	8ff9                	and	a5,a5,a4
    8000109e:	ef99                	bnez	a5,800010bc <kfree+0x34>
    800010a0:	fd843703          	ld	a4,-40(s0)
    800010a4:	00028797          	auipc	a5,0x28
    800010a8:	f5c78793          	addi	a5,a5,-164 # 80029000 <end>
    800010ac:	00f76863          	bltu	a4,a5,800010bc <kfree+0x34>
    800010b0:	fd843703          	ld	a4,-40(s0)
    800010b4:	47c5                	li	a5,17
    800010b6:	07ee                	slli	a5,a5,0x1b
    800010b8:	00f76a63          	bltu	a4,a5,800010cc <kfree+0x44>
    800010bc:	0000a517          	auipc	a0,0xa
    800010c0:	f8c50513          	addi	a0,a0,-116 # 8000b048 <etext+0x48>
    800010c4:	00000097          	auipc	ra,0x0
    800010c8:	b8e080e7          	jalr	-1138(ra) # 80000c52 <panic>
    800010cc:	6605                	lui	a2,0x1
    800010ce:	4585                	li	a1,1
    800010d0:	fd843503          	ld	a0,-40(s0)
    800010d4:	00000097          	auipc	ra,0x0
    800010d8:	380080e7          	jalr	896(ra) # 80001454 <memset>
    800010dc:	fd843783          	ld	a5,-40(s0)
    800010e0:	fef43423          	sd	a5,-24(s0)
    800010e4:	00013517          	auipc	a0,0x13
    800010e8:	18c50513          	addi	a0,a0,396 # 80014270 <kmem>
    800010ec:	00000097          	auipc	ra,0x0
    800010f0:	194080e7          	jalr	404(ra) # 80001280 <acquire>
    800010f4:	00013797          	auipc	a5,0x13
    800010f8:	17c78793          	addi	a5,a5,380 # 80014270 <kmem>
    800010fc:	6f98                	ld	a4,24(a5)
    800010fe:	fe843783          	ld	a5,-24(s0)
    80001102:	e398                	sd	a4,0(a5)
    80001104:	00013797          	auipc	a5,0x13
    80001108:	16c78793          	addi	a5,a5,364 # 80014270 <kmem>
    8000110c:	fe843703          	ld	a4,-24(s0)
    80001110:	ef98                	sd	a4,24(a5)
    80001112:	00013517          	auipc	a0,0x13
    80001116:	15e50513          	addi	a0,a0,350 # 80014270 <kmem>
    8000111a:	00000097          	auipc	ra,0x0
    8000111e:	1ca080e7          	jalr	458(ra) # 800012e4 <release>
    80001122:	0001                	nop
    80001124:	70a2                	ld	ra,40(sp)
    80001126:	7402                	ld	s0,32(sp)
    80001128:	6145                	addi	sp,sp,48
    8000112a:	8082                	ret

000000008000112c <kalloc>:
    8000112c:	1101                	addi	sp,sp,-32
    8000112e:	ec06                	sd	ra,24(sp)
    80001130:	e822                	sd	s0,16(sp)
    80001132:	1000                	addi	s0,sp,32
    80001134:	00013517          	auipc	a0,0x13
    80001138:	13c50513          	addi	a0,a0,316 # 80014270 <kmem>
    8000113c:	00000097          	auipc	ra,0x0
    80001140:	144080e7          	jalr	324(ra) # 80001280 <acquire>
    80001144:	00013797          	auipc	a5,0x13
    80001148:	12c78793          	addi	a5,a5,300 # 80014270 <kmem>
    8000114c:	6f9c                	ld	a5,24(a5)
    8000114e:	fef43423          	sd	a5,-24(s0)
    80001152:	fe843783          	ld	a5,-24(s0)
    80001156:	cb89                	beqz	a5,80001168 <kalloc+0x3c>
    80001158:	fe843783          	ld	a5,-24(s0)
    8000115c:	6398                	ld	a4,0(a5)
    8000115e:	00013797          	auipc	a5,0x13
    80001162:	11278793          	addi	a5,a5,274 # 80014270 <kmem>
    80001166:	ef98                	sd	a4,24(a5)
    80001168:	00013517          	auipc	a0,0x13
    8000116c:	10850513          	addi	a0,a0,264 # 80014270 <kmem>
    80001170:	00000097          	auipc	ra,0x0
    80001174:	174080e7          	jalr	372(ra) # 800012e4 <release>
    80001178:	fe843783          	ld	a5,-24(s0)
    8000117c:	cb89                	beqz	a5,8000118e <kalloc+0x62>
    8000117e:	6605                	lui	a2,0x1
    80001180:	4595                	li	a1,5
    80001182:	fe843503          	ld	a0,-24(s0)
    80001186:	00000097          	auipc	ra,0x0
    8000118a:	2ce080e7          	jalr	718(ra) # 80001454 <memset>
    8000118e:	fe843783          	ld	a5,-24(s0)
    80001192:	853e                	mv	a0,a5
    80001194:	60e2                	ld	ra,24(sp)
    80001196:	6442                	ld	s0,16(sp)
    80001198:	6105                	addi	sp,sp,32
    8000119a:	8082                	ret

000000008000119c <r_sstatus>:
    8000119c:	1101                	addi	sp,sp,-32
    8000119e:	ec22                	sd	s0,24(sp)
    800011a0:	1000                	addi	s0,sp,32
    800011a2:	100027f3          	csrr	a5,sstatus
    800011a6:	fef43423          	sd	a5,-24(s0)
    800011aa:	fe843783          	ld	a5,-24(s0)
    800011ae:	853e                	mv	a0,a5
    800011b0:	6462                	ld	s0,24(sp)
    800011b2:	6105                	addi	sp,sp,32
    800011b4:	8082                	ret

00000000800011b6 <w_sstatus>:
    800011b6:	1101                	addi	sp,sp,-32
    800011b8:	ec22                	sd	s0,24(sp)
    800011ba:	1000                	addi	s0,sp,32
    800011bc:	fea43423          	sd	a0,-24(s0)
    800011c0:	fe843783          	ld	a5,-24(s0)
    800011c4:	10079073          	csrw	sstatus,a5
    800011c8:	0001                	nop
    800011ca:	6462                	ld	s0,24(sp)
    800011cc:	6105                	addi	sp,sp,32
    800011ce:	8082                	ret

00000000800011d0 <intr_on>:
    800011d0:	1141                	addi	sp,sp,-16
    800011d2:	e406                	sd	ra,8(sp)
    800011d4:	e022                	sd	s0,0(sp)
    800011d6:	0800                	addi	s0,sp,16
    800011d8:	00000097          	auipc	ra,0x0
    800011dc:	fc4080e7          	jalr	-60(ra) # 8000119c <r_sstatus>
    800011e0:	87aa                	mv	a5,a0
    800011e2:	0027e793          	ori	a5,a5,2
    800011e6:	853e                	mv	a0,a5
    800011e8:	00000097          	auipc	ra,0x0
    800011ec:	fce080e7          	jalr	-50(ra) # 800011b6 <w_sstatus>
    800011f0:	0001                	nop
    800011f2:	60a2                	ld	ra,8(sp)
    800011f4:	6402                	ld	s0,0(sp)
    800011f6:	0141                	addi	sp,sp,16
    800011f8:	8082                	ret

00000000800011fa <intr_off>:
    800011fa:	1141                	addi	sp,sp,-16
    800011fc:	e406                	sd	ra,8(sp)
    800011fe:	e022                	sd	s0,0(sp)
    80001200:	0800                	addi	s0,sp,16
    80001202:	00000097          	auipc	ra,0x0
    80001206:	f9a080e7          	jalr	-102(ra) # 8000119c <r_sstatus>
    8000120a:	87aa                	mv	a5,a0
    8000120c:	9bf5                	andi	a5,a5,-3
    8000120e:	853e                	mv	a0,a5
    80001210:	00000097          	auipc	ra,0x0
    80001214:	fa6080e7          	jalr	-90(ra) # 800011b6 <w_sstatus>
    80001218:	0001                	nop
    8000121a:	60a2                	ld	ra,8(sp)
    8000121c:	6402                	ld	s0,0(sp)
    8000121e:	0141                	addi	sp,sp,16
    80001220:	8082                	ret

0000000080001222 <intr_get>:
    80001222:	1101                	addi	sp,sp,-32
    80001224:	ec06                	sd	ra,24(sp)
    80001226:	e822                	sd	s0,16(sp)
    80001228:	1000                	addi	s0,sp,32
    8000122a:	00000097          	auipc	ra,0x0
    8000122e:	f72080e7          	jalr	-142(ra) # 8000119c <r_sstatus>
    80001232:	fea43423          	sd	a0,-24(s0)
    80001236:	fe843783          	ld	a5,-24(s0)
    8000123a:	8b89                	andi	a5,a5,2
    8000123c:	00f037b3          	snez	a5,a5
    80001240:	0ff7f793          	andi	a5,a5,255
    80001244:	2781                	sext.w	a5,a5
    80001246:	853e                	mv	a0,a5
    80001248:	60e2                	ld	ra,24(sp)
    8000124a:	6442                	ld	s0,16(sp)
    8000124c:	6105                	addi	sp,sp,32
    8000124e:	8082                	ret

0000000080001250 <initlock>:
    80001250:	1101                	addi	sp,sp,-32
    80001252:	ec22                	sd	s0,24(sp)
    80001254:	1000                	addi	s0,sp,32
    80001256:	fea43423          	sd	a0,-24(s0)
    8000125a:	feb43023          	sd	a1,-32(s0)
    8000125e:	fe843783          	ld	a5,-24(s0)
    80001262:	fe043703          	ld	a4,-32(s0)
    80001266:	e798                	sd	a4,8(a5)
    80001268:	fe843783          	ld	a5,-24(s0)
    8000126c:	0007a023          	sw	zero,0(a5)
    80001270:	fe843783          	ld	a5,-24(s0)
    80001274:	0007b823          	sd	zero,16(a5)
    80001278:	0001                	nop
    8000127a:	6462                	ld	s0,24(sp)
    8000127c:	6105                	addi	sp,sp,32
    8000127e:	8082                	ret

0000000080001280 <acquire>:
    80001280:	1101                	addi	sp,sp,-32
    80001282:	ec06                	sd	ra,24(sp)
    80001284:	e822                	sd	s0,16(sp)
    80001286:	1000                	addi	s0,sp,32
    80001288:	fea43423          	sd	a0,-24(s0)
    8000128c:	00000097          	auipc	ra,0x0
    80001290:	0f2080e7          	jalr	242(ra) # 8000137e <push_off>
    80001294:	fe843503          	ld	a0,-24(s0)
    80001298:	00000097          	auipc	ra,0x0
    8000129c:	0a2080e7          	jalr	162(ra) # 8000133a <holding>
    800012a0:	87aa                	mv	a5,a0
    800012a2:	cb89                	beqz	a5,800012b4 <acquire+0x34>
    800012a4:	0000a517          	auipc	a0,0xa
    800012a8:	dac50513          	addi	a0,a0,-596 # 8000b050 <etext+0x50>
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	9a6080e7          	jalr	-1626(ra) # 80000c52 <panic>
    800012b4:	0001                	nop
    800012b6:	fe843783          	ld	a5,-24(s0)
    800012ba:	4705                	li	a4,1
    800012bc:	0ce7a72f          	amoswap.w.aq	a4,a4,(a5)
    800012c0:	0007079b          	sext.w	a5,a4
    800012c4:	fbed                	bnez	a5,800012b6 <acquire+0x36>
    800012c6:	0ff0000f          	fence
    800012ca:	00001097          	auipc	ra,0x1
    800012ce:	4e6080e7          	jalr	1254(ra) # 800027b0 <mycpu>
    800012d2:	872a                	mv	a4,a0
    800012d4:	fe843783          	ld	a5,-24(s0)
    800012d8:	eb98                	sd	a4,16(a5)
    800012da:	0001                	nop
    800012dc:	60e2                	ld	ra,24(sp)
    800012de:	6442                	ld	s0,16(sp)
    800012e0:	6105                	addi	sp,sp,32
    800012e2:	8082                	ret

00000000800012e4 <release>:
    800012e4:	1101                	addi	sp,sp,-32
    800012e6:	ec06                	sd	ra,24(sp)
    800012e8:	e822                	sd	s0,16(sp)
    800012ea:	1000                	addi	s0,sp,32
    800012ec:	fea43423          	sd	a0,-24(s0)
    800012f0:	fe843503          	ld	a0,-24(s0)
    800012f4:	00000097          	auipc	ra,0x0
    800012f8:	046080e7          	jalr	70(ra) # 8000133a <holding>
    800012fc:	87aa                	mv	a5,a0
    800012fe:	eb89                	bnez	a5,80001310 <release+0x2c>
    80001300:	0000a517          	auipc	a0,0xa
    80001304:	d5850513          	addi	a0,a0,-680 # 8000b058 <etext+0x58>
    80001308:	00000097          	auipc	ra,0x0
    8000130c:	94a080e7          	jalr	-1718(ra) # 80000c52 <panic>
    80001310:	fe843783          	ld	a5,-24(s0)
    80001314:	0007b823          	sd	zero,16(a5)
    80001318:	0ff0000f          	fence
    8000131c:	fe843783          	ld	a5,-24(s0)
    80001320:	0f50000f          	fence	iorw,ow
    80001324:	0807a02f          	amoswap.w	zero,zero,(a5)
    80001328:	00000097          	auipc	ra,0x0
    8000132c:	0ae080e7          	jalr	174(ra) # 800013d6 <pop_off>
    80001330:	0001                	nop
    80001332:	60e2                	ld	ra,24(sp)
    80001334:	6442                	ld	s0,16(sp)
    80001336:	6105                	addi	sp,sp,32
    80001338:	8082                	ret

000000008000133a <holding>:
    8000133a:	7139                	addi	sp,sp,-64
    8000133c:	fc06                	sd	ra,56(sp)
    8000133e:	f822                	sd	s0,48(sp)
    80001340:	f426                	sd	s1,40(sp)
    80001342:	0080                	addi	s0,sp,64
    80001344:	fca43423          	sd	a0,-56(s0)
    80001348:	fc843783          	ld	a5,-56(s0)
    8000134c:	439c                	lw	a5,0(a5)
    8000134e:	cf89                	beqz	a5,80001368 <holding+0x2e>
    80001350:	fc843783          	ld	a5,-56(s0)
    80001354:	6b84                	ld	s1,16(a5)
    80001356:	00001097          	auipc	ra,0x1
    8000135a:	45a080e7          	jalr	1114(ra) # 800027b0 <mycpu>
    8000135e:	87aa                	mv	a5,a0
    80001360:	00f49463          	bne	s1,a5,80001368 <holding+0x2e>
    80001364:	4785                	li	a5,1
    80001366:	a011                	j	8000136a <holding+0x30>
    80001368:	4781                	li	a5,0
    8000136a:	fcf42e23          	sw	a5,-36(s0)
    8000136e:	fdc42783          	lw	a5,-36(s0)
    80001372:	853e                	mv	a0,a5
    80001374:	70e2                	ld	ra,56(sp)
    80001376:	7442                	ld	s0,48(sp)
    80001378:	74a2                	ld	s1,40(sp)
    8000137a:	6121                	addi	sp,sp,64
    8000137c:	8082                	ret

000000008000137e <push_off>:
    8000137e:	1101                	addi	sp,sp,-32
    80001380:	ec06                	sd	ra,24(sp)
    80001382:	e822                	sd	s0,16(sp)
    80001384:	1000                	addi	s0,sp,32
    80001386:	00000097          	auipc	ra,0x0
    8000138a:	e9c080e7          	jalr	-356(ra) # 80001222 <intr_get>
    8000138e:	87aa                	mv	a5,a0
    80001390:	fef42623          	sw	a5,-20(s0)
    80001394:	00000097          	auipc	ra,0x0
    80001398:	e66080e7          	jalr	-410(ra) # 800011fa <intr_off>
    8000139c:	00001097          	auipc	ra,0x1
    800013a0:	414080e7          	jalr	1044(ra) # 800027b0 <mycpu>
    800013a4:	87aa                	mv	a5,a0
    800013a6:	5fbc                	lw	a5,120(a5)
    800013a8:	eb89                	bnez	a5,800013ba <push_off+0x3c>
    800013aa:	00001097          	auipc	ra,0x1
    800013ae:	406080e7          	jalr	1030(ra) # 800027b0 <mycpu>
    800013b2:	872a                	mv	a4,a0
    800013b4:	fec42783          	lw	a5,-20(s0)
    800013b8:	df7c                	sw	a5,124(a4)
    800013ba:	00001097          	auipc	ra,0x1
    800013be:	3f6080e7          	jalr	1014(ra) # 800027b0 <mycpu>
    800013c2:	87aa                	mv	a5,a0
    800013c4:	5fb8                	lw	a4,120(a5)
    800013c6:	2705                	addiw	a4,a4,1
    800013c8:	2701                	sext.w	a4,a4
    800013ca:	dfb8                	sw	a4,120(a5)
    800013cc:	0001                	nop
    800013ce:	60e2                	ld	ra,24(sp)
    800013d0:	6442                	ld	s0,16(sp)
    800013d2:	6105                	addi	sp,sp,32
    800013d4:	8082                	ret

00000000800013d6 <pop_off>:
    800013d6:	1101                	addi	sp,sp,-32
    800013d8:	ec06                	sd	ra,24(sp)
    800013da:	e822                	sd	s0,16(sp)
    800013dc:	1000                	addi	s0,sp,32
    800013de:	00001097          	auipc	ra,0x1
    800013e2:	3d2080e7          	jalr	978(ra) # 800027b0 <mycpu>
    800013e6:	fea43423          	sd	a0,-24(s0)
    800013ea:	00000097          	auipc	ra,0x0
    800013ee:	e38080e7          	jalr	-456(ra) # 80001222 <intr_get>
    800013f2:	87aa                	mv	a5,a0
    800013f4:	cb89                	beqz	a5,80001406 <pop_off+0x30>
    800013f6:	0000a517          	auipc	a0,0xa
    800013fa:	c6a50513          	addi	a0,a0,-918 # 8000b060 <etext+0x60>
    800013fe:	00000097          	auipc	ra,0x0
    80001402:	854080e7          	jalr	-1964(ra) # 80000c52 <panic>
    80001406:	fe843783          	ld	a5,-24(s0)
    8000140a:	5fbc                	lw	a5,120(a5)
    8000140c:	00f04a63          	bgtz	a5,80001420 <pop_off+0x4a>
    80001410:	0000a517          	auipc	a0,0xa
    80001414:	c6850513          	addi	a0,a0,-920 # 8000b078 <etext+0x78>
    80001418:	00000097          	auipc	ra,0x0
    8000141c:	83a080e7          	jalr	-1990(ra) # 80000c52 <panic>
    80001420:	fe843783          	ld	a5,-24(s0)
    80001424:	5fbc                	lw	a5,120(a5)
    80001426:	37fd                	addiw	a5,a5,-1
    80001428:	0007871b          	sext.w	a4,a5
    8000142c:	fe843783          	ld	a5,-24(s0)
    80001430:	dfb8                	sw	a4,120(a5)
    80001432:	fe843783          	ld	a5,-24(s0)
    80001436:	5fbc                	lw	a5,120(a5)
    80001438:	eb89                	bnez	a5,8000144a <pop_off+0x74>
    8000143a:	fe843783          	ld	a5,-24(s0)
    8000143e:	5ffc                	lw	a5,124(a5)
    80001440:	c789                	beqz	a5,8000144a <pop_off+0x74>
    80001442:	00000097          	auipc	ra,0x0
    80001446:	d8e080e7          	jalr	-626(ra) # 800011d0 <intr_on>
    8000144a:	0001                	nop
    8000144c:	60e2                	ld	ra,24(sp)
    8000144e:	6442                	ld	s0,16(sp)
    80001450:	6105                	addi	sp,sp,32
    80001452:	8082                	ret

0000000080001454 <memset>:
    80001454:	7179                	addi	sp,sp,-48
    80001456:	f422                	sd	s0,40(sp)
    80001458:	1800                	addi	s0,sp,48
    8000145a:	fca43c23          	sd	a0,-40(s0)
    8000145e:	87ae                	mv	a5,a1
    80001460:	8732                	mv	a4,a2
    80001462:	fcf42a23          	sw	a5,-44(s0)
    80001466:	87ba                	mv	a5,a4
    80001468:	fcf42823          	sw	a5,-48(s0)
    8000146c:	fd843783          	ld	a5,-40(s0)
    80001470:	fef43023          	sd	a5,-32(s0)
    80001474:	fe042623          	sw	zero,-20(s0)
    80001478:	a00d                	j	8000149a <memset+0x46>
    8000147a:	fec42783          	lw	a5,-20(s0)
    8000147e:	fe043703          	ld	a4,-32(s0)
    80001482:	97ba                	add	a5,a5,a4
    80001484:	fd442703          	lw	a4,-44(s0)
    80001488:	0ff77713          	andi	a4,a4,255
    8000148c:	00e78023          	sb	a4,0(a5)
    80001490:	fec42783          	lw	a5,-20(s0)
    80001494:	2785                	addiw	a5,a5,1
    80001496:	fef42623          	sw	a5,-20(s0)
    8000149a:	fec42703          	lw	a4,-20(s0)
    8000149e:	fd042783          	lw	a5,-48(s0)
    800014a2:	2781                	sext.w	a5,a5
    800014a4:	fcf76be3          	bltu	a4,a5,8000147a <memset+0x26>
    800014a8:	fd843783          	ld	a5,-40(s0)
    800014ac:	853e                	mv	a0,a5
    800014ae:	7422                	ld	s0,40(sp)
    800014b0:	6145                	addi	sp,sp,48
    800014b2:	8082                	ret

00000000800014b4 <memcmp>:
    800014b4:	7139                	addi	sp,sp,-64
    800014b6:	fc22                	sd	s0,56(sp)
    800014b8:	0080                	addi	s0,sp,64
    800014ba:	fca43c23          	sd	a0,-40(s0)
    800014be:	fcb43823          	sd	a1,-48(s0)
    800014c2:	87b2                	mv	a5,a2
    800014c4:	fcf42623          	sw	a5,-52(s0)
    800014c8:	fd843783          	ld	a5,-40(s0)
    800014cc:	fef43423          	sd	a5,-24(s0)
    800014d0:	fd043783          	ld	a5,-48(s0)
    800014d4:	fef43023          	sd	a5,-32(s0)
    800014d8:	a0a1                	j	80001520 <memcmp+0x6c>
    800014da:	fe843783          	ld	a5,-24(s0)
    800014de:	0007c703          	lbu	a4,0(a5)
    800014e2:	fe043783          	ld	a5,-32(s0)
    800014e6:	0007c783          	lbu	a5,0(a5)
    800014ea:	02f70163          	beq	a4,a5,8000150c <memcmp+0x58>
    800014ee:	fe843783          	ld	a5,-24(s0)
    800014f2:	0007c783          	lbu	a5,0(a5)
    800014f6:	0007871b          	sext.w	a4,a5
    800014fa:	fe043783          	ld	a5,-32(s0)
    800014fe:	0007c783          	lbu	a5,0(a5)
    80001502:	2781                	sext.w	a5,a5
    80001504:	40f707bb          	subw	a5,a4,a5
    80001508:	2781                	sext.w	a5,a5
    8000150a:	a01d                	j	80001530 <memcmp+0x7c>
    8000150c:	fe843783          	ld	a5,-24(s0)
    80001510:	0785                	addi	a5,a5,1
    80001512:	fef43423          	sd	a5,-24(s0)
    80001516:	fe043783          	ld	a5,-32(s0)
    8000151a:	0785                	addi	a5,a5,1
    8000151c:	fef43023          	sd	a5,-32(s0)
    80001520:	fcc42783          	lw	a5,-52(s0)
    80001524:	fff7871b          	addiw	a4,a5,-1
    80001528:	fce42623          	sw	a4,-52(s0)
    8000152c:	f7dd                	bnez	a5,800014da <memcmp+0x26>
    8000152e:	4781                	li	a5,0
    80001530:	853e                	mv	a0,a5
    80001532:	7462                	ld	s0,56(sp)
    80001534:	6121                	addi	sp,sp,64
    80001536:	8082                	ret

0000000080001538 <memmove>:
    80001538:	7139                	addi	sp,sp,-64
    8000153a:	fc22                	sd	s0,56(sp)
    8000153c:	0080                	addi	s0,sp,64
    8000153e:	fca43c23          	sd	a0,-40(s0)
    80001542:	fcb43823          	sd	a1,-48(s0)
    80001546:	87b2                	mv	a5,a2
    80001548:	fcf42623          	sw	a5,-52(s0)
    8000154c:	fd043783          	ld	a5,-48(s0)
    80001550:	fef43423          	sd	a5,-24(s0)
    80001554:	fd843783          	ld	a5,-40(s0)
    80001558:	fef43023          	sd	a5,-32(s0)
    8000155c:	fe843703          	ld	a4,-24(s0)
    80001560:	fe043783          	ld	a5,-32(s0)
    80001564:	08f77463          	bgeu	a4,a5,800015ec <memmove+0xb4>
    80001568:	fcc46783          	lwu	a5,-52(s0)
    8000156c:	fe843703          	ld	a4,-24(s0)
    80001570:	97ba                	add	a5,a5,a4
    80001572:	fe043703          	ld	a4,-32(s0)
    80001576:	06f77b63          	bgeu	a4,a5,800015ec <memmove+0xb4>
    8000157a:	fcc46783          	lwu	a5,-52(s0)
    8000157e:	fe843703          	ld	a4,-24(s0)
    80001582:	97ba                	add	a5,a5,a4
    80001584:	fef43423          	sd	a5,-24(s0)
    80001588:	fcc46783          	lwu	a5,-52(s0)
    8000158c:	fe043703          	ld	a4,-32(s0)
    80001590:	97ba                	add	a5,a5,a4
    80001592:	fef43023          	sd	a5,-32(s0)
    80001596:	a01d                	j	800015bc <memmove+0x84>
    80001598:	fe843783          	ld	a5,-24(s0)
    8000159c:	17fd                	addi	a5,a5,-1
    8000159e:	fef43423          	sd	a5,-24(s0)
    800015a2:	fe043783          	ld	a5,-32(s0)
    800015a6:	17fd                	addi	a5,a5,-1
    800015a8:	fef43023          	sd	a5,-32(s0)
    800015ac:	fe843783          	ld	a5,-24(s0)
    800015b0:	0007c703          	lbu	a4,0(a5)
    800015b4:	fe043783          	ld	a5,-32(s0)
    800015b8:	00e78023          	sb	a4,0(a5)
    800015bc:	fcc42783          	lw	a5,-52(s0)
    800015c0:	fff7871b          	addiw	a4,a5,-1
    800015c4:	fce42623          	sw	a4,-52(s0)
    800015c8:	fbe1                	bnez	a5,80001598 <memmove+0x60>
    800015ca:	a805                	j	800015fa <memmove+0xc2>
    800015cc:	fe843703          	ld	a4,-24(s0)
    800015d0:	00170793          	addi	a5,a4,1
    800015d4:	fef43423          	sd	a5,-24(s0)
    800015d8:	fe043783          	ld	a5,-32(s0)
    800015dc:	00178693          	addi	a3,a5,1
    800015e0:	fed43023          	sd	a3,-32(s0)
    800015e4:	00074703          	lbu	a4,0(a4)
    800015e8:	00e78023          	sb	a4,0(a5)
    800015ec:	fcc42783          	lw	a5,-52(s0)
    800015f0:	fff7871b          	addiw	a4,a5,-1
    800015f4:	fce42623          	sw	a4,-52(s0)
    800015f8:	fbf1                	bnez	a5,800015cc <memmove+0x94>
    800015fa:	fd843783          	ld	a5,-40(s0)
    800015fe:	853e                	mv	a0,a5
    80001600:	7462                	ld	s0,56(sp)
    80001602:	6121                	addi	sp,sp,64
    80001604:	8082                	ret

0000000080001606 <memcpy>:
    80001606:	7179                	addi	sp,sp,-48
    80001608:	f406                	sd	ra,40(sp)
    8000160a:	f022                	sd	s0,32(sp)
    8000160c:	1800                	addi	s0,sp,48
    8000160e:	fea43423          	sd	a0,-24(s0)
    80001612:	feb43023          	sd	a1,-32(s0)
    80001616:	87b2                	mv	a5,a2
    80001618:	fcf42e23          	sw	a5,-36(s0)
    8000161c:	fdc42783          	lw	a5,-36(s0)
    80001620:	863e                	mv	a2,a5
    80001622:	fe043583          	ld	a1,-32(s0)
    80001626:	fe843503          	ld	a0,-24(s0)
    8000162a:	00000097          	auipc	ra,0x0
    8000162e:	f0e080e7          	jalr	-242(ra) # 80001538 <memmove>
    80001632:	87aa                	mv	a5,a0
    80001634:	853e                	mv	a0,a5
    80001636:	70a2                	ld	ra,40(sp)
    80001638:	7402                	ld	s0,32(sp)
    8000163a:	6145                	addi	sp,sp,48
    8000163c:	8082                	ret

000000008000163e <strncmp>:
    8000163e:	7179                	addi	sp,sp,-48
    80001640:	f422                	sd	s0,40(sp)
    80001642:	1800                	addi	s0,sp,48
    80001644:	fea43423          	sd	a0,-24(s0)
    80001648:	feb43023          	sd	a1,-32(s0)
    8000164c:	87b2                	mv	a5,a2
    8000164e:	fcf42e23          	sw	a5,-36(s0)
    80001652:	a005                	j	80001672 <strncmp+0x34>
    80001654:	fdc42783          	lw	a5,-36(s0)
    80001658:	37fd                	addiw	a5,a5,-1
    8000165a:	fcf42e23          	sw	a5,-36(s0)
    8000165e:	fe843783          	ld	a5,-24(s0)
    80001662:	0785                	addi	a5,a5,1
    80001664:	fef43423          	sd	a5,-24(s0)
    80001668:	fe043783          	ld	a5,-32(s0)
    8000166c:	0785                	addi	a5,a5,1
    8000166e:	fef43023          	sd	a5,-32(s0)
    80001672:	fdc42783          	lw	a5,-36(s0)
    80001676:	2781                	sext.w	a5,a5
    80001678:	c385                	beqz	a5,80001698 <strncmp+0x5a>
    8000167a:	fe843783          	ld	a5,-24(s0)
    8000167e:	0007c783          	lbu	a5,0(a5)
    80001682:	cb99                	beqz	a5,80001698 <strncmp+0x5a>
    80001684:	fe843783          	ld	a5,-24(s0)
    80001688:	0007c703          	lbu	a4,0(a5)
    8000168c:	fe043783          	ld	a5,-32(s0)
    80001690:	0007c783          	lbu	a5,0(a5)
    80001694:	fcf700e3          	beq	a4,a5,80001654 <strncmp+0x16>
    80001698:	fdc42783          	lw	a5,-36(s0)
    8000169c:	2781                	sext.w	a5,a5
    8000169e:	e399                	bnez	a5,800016a4 <strncmp+0x66>
    800016a0:	4781                	li	a5,0
    800016a2:	a839                	j	800016c0 <strncmp+0x82>
    800016a4:	fe843783          	ld	a5,-24(s0)
    800016a8:	0007c783          	lbu	a5,0(a5)
    800016ac:	0007871b          	sext.w	a4,a5
    800016b0:	fe043783          	ld	a5,-32(s0)
    800016b4:	0007c783          	lbu	a5,0(a5)
    800016b8:	2781                	sext.w	a5,a5
    800016ba:	40f707bb          	subw	a5,a4,a5
    800016be:	2781                	sext.w	a5,a5
    800016c0:	853e                	mv	a0,a5
    800016c2:	7422                	ld	s0,40(sp)
    800016c4:	6145                	addi	sp,sp,48
    800016c6:	8082                	ret

00000000800016c8 <strncpy>:
    800016c8:	7139                	addi	sp,sp,-64
    800016ca:	fc22                	sd	s0,56(sp)
    800016cc:	0080                	addi	s0,sp,64
    800016ce:	fca43c23          	sd	a0,-40(s0)
    800016d2:	fcb43823          	sd	a1,-48(s0)
    800016d6:	87b2                	mv	a5,a2
    800016d8:	fcf42623          	sw	a5,-52(s0)
    800016dc:	fd843783          	ld	a5,-40(s0)
    800016e0:	fef43423          	sd	a5,-24(s0)
    800016e4:	0001                	nop
    800016e6:	fcc42783          	lw	a5,-52(s0)
    800016ea:	fff7871b          	addiw	a4,a5,-1
    800016ee:	fce42623          	sw	a4,-52(s0)
    800016f2:	02f05e63          	blez	a5,8000172e <strncpy+0x66>
    800016f6:	fd043703          	ld	a4,-48(s0)
    800016fa:	00170793          	addi	a5,a4,1
    800016fe:	fcf43823          	sd	a5,-48(s0)
    80001702:	fd843783          	ld	a5,-40(s0)
    80001706:	00178693          	addi	a3,a5,1
    8000170a:	fcd43c23          	sd	a3,-40(s0)
    8000170e:	00074703          	lbu	a4,0(a4)
    80001712:	00e78023          	sb	a4,0(a5)
    80001716:	0007c783          	lbu	a5,0(a5)
    8000171a:	f7f1                	bnez	a5,800016e6 <strncpy+0x1e>
    8000171c:	a809                	j	8000172e <strncpy+0x66>
    8000171e:	fd843783          	ld	a5,-40(s0)
    80001722:	00178713          	addi	a4,a5,1
    80001726:	fce43c23          	sd	a4,-40(s0)
    8000172a:	00078023          	sb	zero,0(a5)
    8000172e:	fcc42783          	lw	a5,-52(s0)
    80001732:	fff7871b          	addiw	a4,a5,-1
    80001736:	fce42623          	sw	a4,-52(s0)
    8000173a:	fef042e3          	bgtz	a5,8000171e <strncpy+0x56>
    8000173e:	fe843783          	ld	a5,-24(s0)
    80001742:	853e                	mv	a0,a5
    80001744:	7462                	ld	s0,56(sp)
    80001746:	6121                	addi	sp,sp,64
    80001748:	8082                	ret

000000008000174a <safestrcpy>:
    8000174a:	7139                	addi	sp,sp,-64
    8000174c:	fc22                	sd	s0,56(sp)
    8000174e:	0080                	addi	s0,sp,64
    80001750:	fca43c23          	sd	a0,-40(s0)
    80001754:	fcb43823          	sd	a1,-48(s0)
    80001758:	87b2                	mv	a5,a2
    8000175a:	fcf42623          	sw	a5,-52(s0)
    8000175e:	fd843783          	ld	a5,-40(s0)
    80001762:	fef43423          	sd	a5,-24(s0)
    80001766:	fcc42783          	lw	a5,-52(s0)
    8000176a:	2781                	sext.w	a5,a5
    8000176c:	00f04563          	bgtz	a5,80001776 <safestrcpy+0x2c>
    80001770:	fe843783          	ld	a5,-24(s0)
    80001774:	a0a1                	j	800017bc <safestrcpy+0x72>
    80001776:	fcc42783          	lw	a5,-52(s0)
    8000177a:	37fd                	addiw	a5,a5,-1
    8000177c:	fcf42623          	sw	a5,-52(s0)
    80001780:	fcc42783          	lw	a5,-52(s0)
    80001784:	2781                	sext.w	a5,a5
    80001786:	02f05563          	blez	a5,800017b0 <safestrcpy+0x66>
    8000178a:	fd043703          	ld	a4,-48(s0)
    8000178e:	00170793          	addi	a5,a4,1
    80001792:	fcf43823          	sd	a5,-48(s0)
    80001796:	fd843783          	ld	a5,-40(s0)
    8000179a:	00178693          	addi	a3,a5,1
    8000179e:	fcd43c23          	sd	a3,-40(s0)
    800017a2:	00074703          	lbu	a4,0(a4)
    800017a6:	00e78023          	sb	a4,0(a5)
    800017aa:	0007c783          	lbu	a5,0(a5)
    800017ae:	f7e1                	bnez	a5,80001776 <safestrcpy+0x2c>
    800017b0:	fd843783          	ld	a5,-40(s0)
    800017b4:	00078023          	sb	zero,0(a5)
    800017b8:	fe843783          	ld	a5,-24(s0)
    800017bc:	853e                	mv	a0,a5
    800017be:	7462                	ld	s0,56(sp)
    800017c0:	6121                	addi	sp,sp,64
    800017c2:	8082                	ret

00000000800017c4 <strlen>:
    800017c4:	7179                	addi	sp,sp,-48
    800017c6:	f422                	sd	s0,40(sp)
    800017c8:	1800                	addi	s0,sp,48
    800017ca:	fca43c23          	sd	a0,-40(s0)
    800017ce:	fe042623          	sw	zero,-20(s0)
    800017d2:	a031                	j	800017de <strlen+0x1a>
    800017d4:	fec42783          	lw	a5,-20(s0)
    800017d8:	2785                	addiw	a5,a5,1
    800017da:	fef42623          	sw	a5,-20(s0)
    800017de:	fec42783          	lw	a5,-20(s0)
    800017e2:	fd843703          	ld	a4,-40(s0)
    800017e6:	97ba                	add	a5,a5,a4
    800017e8:	0007c783          	lbu	a5,0(a5)
    800017ec:	f7e5                	bnez	a5,800017d4 <strlen+0x10>
    800017ee:	fec42783          	lw	a5,-20(s0)
    800017f2:	853e                	mv	a0,a5
    800017f4:	7422                	ld	s0,40(sp)
    800017f6:	6145                	addi	sp,sp,48
    800017f8:	8082                	ret

00000000800017fa <main>:
    800017fa:	1141                	addi	sp,sp,-16
    800017fc:	e406                	sd	ra,8(sp)
    800017fe:	e022                	sd	s0,0(sp)
    80001800:	0800                	addi	s0,sp,16
    80001802:	00001097          	auipc	ra,0x1
    80001806:	f8a080e7          	jalr	-118(ra) # 8000278c <cpuid>
    8000180a:	87aa                	mv	a5,a0
    8000180c:	efd5                	bnez	a5,800018c8 <main+0xce>
    8000180e:	fffff097          	auipc	ra,0xfffff
    80001812:	018080e7          	jalr	24(ra) # 80000826 <consoleinit>
    80001816:	fffff097          	auipc	ra,0xfffff
    8000181a:	48e080e7          	jalr	1166(ra) # 80000ca4 <printfinit>
    8000181e:	0000a517          	auipc	a0,0xa
    80001822:	86250513          	addi	a0,a0,-1950 # 8000b080 <etext+0x80>
    80001826:	fffff097          	auipc	ra,0xfffff
    8000182a:	1d6080e7          	jalr	470(ra) # 800009fc <printf>
    8000182e:	0000a517          	auipc	a0,0xa
    80001832:	85a50513          	addi	a0,a0,-1958 # 8000b088 <etext+0x88>
    80001836:	fffff097          	auipc	ra,0xfffff
    8000183a:	1c6080e7          	jalr	454(ra) # 800009fc <printf>
    8000183e:	0000a517          	auipc	a0,0xa
    80001842:	84250513          	addi	a0,a0,-1982 # 8000b080 <etext+0x80>
    80001846:	fffff097          	auipc	ra,0xfffff
    8000184a:	1b6080e7          	jalr	438(ra) # 800009fc <printf>
    8000184e:	fffff097          	auipc	ra,0xfffff
    80001852:	7a2080e7          	jalr	1954(ra) # 80000ff0 <kinit>
    80001856:	00000097          	auipc	ra,0x0
    8000185a:	1f4080e7          	jalr	500(ra) # 80001a4a <kvminit>
    8000185e:	00000097          	auipc	ra,0x0
    80001862:	212080e7          	jalr	530(ra) # 80001a70 <kvminithart>
    80001866:	00001097          	auipc	ra,0x1
    8000186a:	e78080e7          	jalr	-392(ra) # 800026de <procinit>
    8000186e:	00002097          	auipc	ra,0x2
    80001872:	132080e7          	jalr	306(ra) # 800039a0 <trapinit>
    80001876:	00002097          	auipc	ra,0x2
    8000187a:	154080e7          	jalr	340(ra) # 800039ca <trapinithart>
    8000187e:	00007097          	auipc	ra,0x7
    80001882:	f8c080e7          	jalr	-116(ra) # 8000880a <plicinit>
    80001886:	00007097          	auipc	ra,0x7
    8000188a:	fa8080e7          	jalr	-88(ra) # 8000882e <plicinithart>
    8000188e:	00003097          	auipc	ra,0x3
    80001892:	b64080e7          	jalr	-1180(ra) # 800043f2 <binit>
    80001896:	00003097          	auipc	ra,0x3
    8000189a:	3b0080e7          	jalr	944(ra) # 80004c46 <iinit>
    8000189e:	00005097          	auipc	ra,0x5
    800018a2:	d60080e7          	jalr	-672(ra) # 800065fe <fileinit>
    800018a6:	00007097          	auipc	ra,0x7
    800018aa:	05c080e7          	jalr	92(ra) # 80008902 <virtio_disk_init>
    800018ae:	00001097          	auipc	ra,0x1
    800018b2:	2a8080e7          	jalr	680(ra) # 80002b56 <userinit>
    800018b6:	0ff0000f          	fence
    800018ba:	00013797          	auipc	a5,0x13
    800018be:	9d678793          	addi	a5,a5,-1578 # 80014290 <started>
    800018c2:	4705                	li	a4,1
    800018c4:	c398                	sw	a4,0(a5)
    800018c6:	a0a9                	j	80001910 <main+0x116>
    800018c8:	0001                	nop
    800018ca:	00013797          	auipc	a5,0x13
    800018ce:	9c678793          	addi	a5,a5,-1594 # 80014290 <started>
    800018d2:	439c                	lw	a5,0(a5)
    800018d4:	2781                	sext.w	a5,a5
    800018d6:	dbf5                	beqz	a5,800018ca <main+0xd0>
    800018d8:	0ff0000f          	fence
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	eb0080e7          	jalr	-336(ra) # 8000278c <cpuid>
    800018e4:	87aa                	mv	a5,a0
    800018e6:	85be                	mv	a1,a5
    800018e8:	00009517          	auipc	a0,0x9
    800018ec:	7b850513          	addi	a0,a0,1976 # 8000b0a0 <etext+0xa0>
    800018f0:	fffff097          	auipc	ra,0xfffff
    800018f4:	10c080e7          	jalr	268(ra) # 800009fc <printf>
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	178080e7          	jalr	376(ra) # 80001a70 <kvminithart>
    80001900:	00002097          	auipc	ra,0x2
    80001904:	0ca080e7          	jalr	202(ra) # 800039ca <trapinithart>
    80001908:	00007097          	auipc	ra,0x7
    8000190c:	f26080e7          	jalr	-218(ra) # 8000882e <plicinithart>
    80001910:	00002097          	auipc	ra,0x2
    80001914:	882080e7          	jalr	-1918(ra) # 80003192 <scheduler>

0000000080001918 <w_satp>:
    80001918:	1101                	addi	sp,sp,-32
    8000191a:	ec22                	sd	s0,24(sp)
    8000191c:	1000                	addi	s0,sp,32
    8000191e:	fea43423          	sd	a0,-24(s0)
    80001922:	fe843783          	ld	a5,-24(s0)
    80001926:	18079073          	csrw	satp,a5
    8000192a:	0001                	nop
    8000192c:	6462                	ld	s0,24(sp)
    8000192e:	6105                	addi	sp,sp,32
    80001930:	8082                	ret

0000000080001932 <sfence_vma>:
    80001932:	1141                	addi	sp,sp,-16
    80001934:	e422                	sd	s0,8(sp)
    80001936:	0800                	addi	s0,sp,16
    80001938:	12000073          	sfence.vma
    8000193c:	0001                	nop
    8000193e:	6422                	ld	s0,8(sp)
    80001940:	0141                	addi	sp,sp,16
    80001942:	8082                	ret

0000000080001944 <kvmmake>:
    80001944:	1101                	addi	sp,sp,-32
    80001946:	ec06                	sd	ra,24(sp)
    80001948:	e822                	sd	s0,16(sp)
    8000194a:	1000                	addi	s0,sp,32
    8000194c:	fffff097          	auipc	ra,0xfffff
    80001950:	7e0080e7          	jalr	2016(ra) # 8000112c <kalloc>
    80001954:	fea43423          	sd	a0,-24(s0)
    80001958:	6605                	lui	a2,0x1
    8000195a:	4581                	li	a1,0
    8000195c:	fe843503          	ld	a0,-24(s0)
    80001960:	00000097          	auipc	ra,0x0
    80001964:	af4080e7          	jalr	-1292(ra) # 80001454 <memset>
    80001968:	4719                	li	a4,6
    8000196a:	6685                	lui	a3,0x1
    8000196c:	10000637          	lui	a2,0x10000
    80001970:	100005b7          	lui	a1,0x10000
    80001974:	fe843503          	ld	a0,-24(s0)
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	298080e7          	jalr	664(ra) # 80001c10 <kvmmap>
    80001980:	4719                	li	a4,6
    80001982:	6685                	lui	a3,0x1
    80001984:	10001637          	lui	a2,0x10001
    80001988:	100015b7          	lui	a1,0x10001
    8000198c:	fe843503          	ld	a0,-24(s0)
    80001990:	00000097          	auipc	ra,0x0
    80001994:	280080e7          	jalr	640(ra) # 80001c10 <kvmmap>
    80001998:	4719                	li	a4,6
    8000199a:	004006b7          	lui	a3,0x400
    8000199e:	0c000637          	lui	a2,0xc000
    800019a2:	0c0005b7          	lui	a1,0xc000
    800019a6:	fe843503          	ld	a0,-24(s0)
    800019aa:	00000097          	auipc	ra,0x0
    800019ae:	266080e7          	jalr	614(ra) # 80001c10 <kvmmap>
    800019b2:	00009717          	auipc	a4,0x9
    800019b6:	64e70713          	addi	a4,a4,1614 # 8000b000 <etext>
    800019ba:	800007b7          	lui	a5,0x80000
    800019be:	97ba                	add	a5,a5,a4
    800019c0:	4729                	li	a4,10
    800019c2:	86be                	mv	a3,a5
    800019c4:	4785                	li	a5,1
    800019c6:	01f79613          	slli	a2,a5,0x1f
    800019ca:	4785                	li	a5,1
    800019cc:	01f79593          	slli	a1,a5,0x1f
    800019d0:	fe843503          	ld	a0,-24(s0)
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	23c080e7          	jalr	572(ra) # 80001c10 <kvmmap>
    800019dc:	00009597          	auipc	a1,0x9
    800019e0:	62458593          	addi	a1,a1,1572 # 8000b000 <etext>
    800019e4:	00009617          	auipc	a2,0x9
    800019e8:	61c60613          	addi	a2,a2,1564 # 8000b000 <etext>
    800019ec:	00009797          	auipc	a5,0x9
    800019f0:	61478793          	addi	a5,a5,1556 # 8000b000 <etext>
    800019f4:	4745                	li	a4,17
    800019f6:	076e                	slli	a4,a4,0x1b
    800019f8:	40f707b3          	sub	a5,a4,a5
    800019fc:	4719                	li	a4,6
    800019fe:	86be                	mv	a3,a5
    80001a00:	fe843503          	ld	a0,-24(s0)
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	20c080e7          	jalr	524(ra) # 80001c10 <kvmmap>
    80001a0c:	00008797          	auipc	a5,0x8
    80001a10:	5f478793          	addi	a5,a5,1524 # 8000a000 <_trampoline>
    80001a14:	4729                	li	a4,10
    80001a16:	6685                	lui	a3,0x1
    80001a18:	863e                	mv	a2,a5
    80001a1a:	040007b7          	lui	a5,0x4000
    80001a1e:	17fd                	addi	a5,a5,-1
    80001a20:	00c79593          	slli	a1,a5,0xc
    80001a24:	fe843503          	ld	a0,-24(s0)
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	1e8080e7          	jalr	488(ra) # 80001c10 <kvmmap>
    80001a30:	fe843503          	ld	a0,-24(s0)
    80001a34:	00001097          	auipc	ra,0x1
    80001a38:	bee080e7          	jalr	-1042(ra) # 80002622 <proc_mapstacks>
    80001a3c:	fe843783          	ld	a5,-24(s0)
    80001a40:	853e                	mv	a0,a5
    80001a42:	60e2                	ld	ra,24(sp)
    80001a44:	6442                	ld	s0,16(sp)
    80001a46:	6105                	addi	sp,sp,32
    80001a48:	8082                	ret

0000000080001a4a <kvminit>:
    80001a4a:	1141                	addi	sp,sp,-16
    80001a4c:	e406                	sd	ra,8(sp)
    80001a4e:	e022                	sd	s0,0(sp)
    80001a50:	0800                	addi	s0,sp,16
    80001a52:	00000097          	auipc	ra,0x0
    80001a56:	ef2080e7          	jalr	-270(ra) # 80001944 <kvmmake>
    80001a5a:	872a                	mv	a4,a0
    80001a5c:	0000a797          	auipc	a5,0xa
    80001a60:	5b478793          	addi	a5,a5,1460 # 8000c010 <kernel_pagetable>
    80001a64:	e398                	sd	a4,0(a5)
    80001a66:	0001                	nop
    80001a68:	60a2                	ld	ra,8(sp)
    80001a6a:	6402                	ld	s0,0(sp)
    80001a6c:	0141                	addi	sp,sp,16
    80001a6e:	8082                	ret

0000000080001a70 <kvminithart>:
    80001a70:	1141                	addi	sp,sp,-16
    80001a72:	e406                	sd	ra,8(sp)
    80001a74:	e022                	sd	s0,0(sp)
    80001a76:	0800                	addi	s0,sp,16
    80001a78:	0000a797          	auipc	a5,0xa
    80001a7c:	59878793          	addi	a5,a5,1432 # 8000c010 <kernel_pagetable>
    80001a80:	639c                	ld	a5,0(a5)
    80001a82:	00c7d713          	srli	a4,a5,0xc
    80001a86:	57fd                	li	a5,-1
    80001a88:	17fe                	slli	a5,a5,0x3f
    80001a8a:	8fd9                	or	a5,a5,a4
    80001a8c:	853e                	mv	a0,a5
    80001a8e:	00000097          	auipc	ra,0x0
    80001a92:	e8a080e7          	jalr	-374(ra) # 80001918 <w_satp>
    80001a96:	00000097          	auipc	ra,0x0
    80001a9a:	e9c080e7          	jalr	-356(ra) # 80001932 <sfence_vma>
    80001a9e:	0001                	nop
    80001aa0:	60a2                	ld	ra,8(sp)
    80001aa2:	6402                	ld	s0,0(sp)
    80001aa4:	0141                	addi	sp,sp,16
    80001aa6:	8082                	ret

0000000080001aa8 <walk>:
    80001aa8:	7139                	addi	sp,sp,-64
    80001aaa:	fc06                	sd	ra,56(sp)
    80001aac:	f822                	sd	s0,48(sp)
    80001aae:	0080                	addi	s0,sp,64
    80001ab0:	fca43c23          	sd	a0,-40(s0)
    80001ab4:	fcb43823          	sd	a1,-48(s0)
    80001ab8:	87b2                	mv	a5,a2
    80001aba:	fcf42623          	sw	a5,-52(s0)
    80001abe:	fd043703          	ld	a4,-48(s0)
    80001ac2:	57fd                	li	a5,-1
    80001ac4:	83e9                	srli	a5,a5,0x1a
    80001ac6:	00e7fa63          	bgeu	a5,a4,80001ada <walk+0x32>
    80001aca:	00009517          	auipc	a0,0x9
    80001ace:	5ee50513          	addi	a0,a0,1518 # 8000b0b8 <etext+0xb8>
    80001ad2:	fffff097          	auipc	ra,0xfffff
    80001ad6:	180080e7          	jalr	384(ra) # 80000c52 <panic>
    80001ada:	4789                	li	a5,2
    80001adc:	fef42623          	sw	a5,-20(s0)
    80001ae0:	a849                	j	80001b72 <walk+0xca>
    80001ae2:	fec42703          	lw	a4,-20(s0)
    80001ae6:	87ba                	mv	a5,a4
    80001ae8:	0037979b          	slliw	a5,a5,0x3
    80001aec:	9fb9                	addw	a5,a5,a4
    80001aee:	2781                	sext.w	a5,a5
    80001af0:	27b1                	addiw	a5,a5,12
    80001af2:	2781                	sext.w	a5,a5
    80001af4:	873e                	mv	a4,a5
    80001af6:	fd043783          	ld	a5,-48(s0)
    80001afa:	00e7d7b3          	srl	a5,a5,a4
    80001afe:	1ff7f793          	andi	a5,a5,511
    80001b02:	078e                	slli	a5,a5,0x3
    80001b04:	fd843703          	ld	a4,-40(s0)
    80001b08:	97ba                	add	a5,a5,a4
    80001b0a:	fef43023          	sd	a5,-32(s0)
    80001b0e:	fe043783          	ld	a5,-32(s0)
    80001b12:	639c                	ld	a5,0(a5)
    80001b14:	8b85                	andi	a5,a5,1
    80001b16:	cb89                	beqz	a5,80001b28 <walk+0x80>
    80001b18:	fe043783          	ld	a5,-32(s0)
    80001b1c:	639c                	ld	a5,0(a5)
    80001b1e:	83a9                	srli	a5,a5,0xa
    80001b20:	07b2                	slli	a5,a5,0xc
    80001b22:	fcf43c23          	sd	a5,-40(s0)
    80001b26:	a089                	j	80001b68 <walk+0xc0>
    80001b28:	fcc42783          	lw	a5,-52(s0)
    80001b2c:	2781                	sext.w	a5,a5
    80001b2e:	cb91                	beqz	a5,80001b42 <walk+0x9a>
    80001b30:	fffff097          	auipc	ra,0xfffff
    80001b34:	5fc080e7          	jalr	1532(ra) # 8000112c <kalloc>
    80001b38:	fca43c23          	sd	a0,-40(s0)
    80001b3c:	fd843783          	ld	a5,-40(s0)
    80001b40:	e399                	bnez	a5,80001b46 <walk+0x9e>
    80001b42:	4781                	li	a5,0
    80001b44:	a0a9                	j	80001b8e <walk+0xe6>
    80001b46:	6605                	lui	a2,0x1
    80001b48:	4581                	li	a1,0
    80001b4a:	fd843503          	ld	a0,-40(s0)
    80001b4e:	00000097          	auipc	ra,0x0
    80001b52:	906080e7          	jalr	-1786(ra) # 80001454 <memset>
    80001b56:	fd843783          	ld	a5,-40(s0)
    80001b5a:	83b1                	srli	a5,a5,0xc
    80001b5c:	07aa                	slli	a5,a5,0xa
    80001b5e:	0017e713          	ori	a4,a5,1
    80001b62:	fe043783          	ld	a5,-32(s0)
    80001b66:	e398                	sd	a4,0(a5)
    80001b68:	fec42783          	lw	a5,-20(s0)
    80001b6c:	37fd                	addiw	a5,a5,-1
    80001b6e:	fef42623          	sw	a5,-20(s0)
    80001b72:	fec42783          	lw	a5,-20(s0)
    80001b76:	2781                	sext.w	a5,a5
    80001b78:	f6f045e3          	bgtz	a5,80001ae2 <walk+0x3a>
    80001b7c:	fd043783          	ld	a5,-48(s0)
    80001b80:	83b1                	srli	a5,a5,0xc
    80001b82:	1ff7f793          	andi	a5,a5,511
    80001b86:	078e                	slli	a5,a5,0x3
    80001b88:	fd843703          	ld	a4,-40(s0)
    80001b8c:	97ba                	add	a5,a5,a4
    80001b8e:	853e                	mv	a0,a5
    80001b90:	70e2                	ld	ra,56(sp)
    80001b92:	7442                	ld	s0,48(sp)
    80001b94:	6121                	addi	sp,sp,64
    80001b96:	8082                	ret

0000000080001b98 <walkaddr>:
    80001b98:	7179                	addi	sp,sp,-48
    80001b9a:	f406                	sd	ra,40(sp)
    80001b9c:	f022                	sd	s0,32(sp)
    80001b9e:	1800                	addi	s0,sp,48
    80001ba0:	fca43c23          	sd	a0,-40(s0)
    80001ba4:	fcb43823          	sd	a1,-48(s0)
    80001ba8:	fd043703          	ld	a4,-48(s0)
    80001bac:	57fd                	li	a5,-1
    80001bae:	83e9                	srli	a5,a5,0x1a
    80001bb0:	00e7f463          	bgeu	a5,a4,80001bb8 <walkaddr+0x20>
    80001bb4:	4781                	li	a5,0
    80001bb6:	a881                	j	80001c06 <walkaddr+0x6e>
    80001bb8:	4601                	li	a2,0
    80001bba:	fd043583          	ld	a1,-48(s0)
    80001bbe:	fd843503          	ld	a0,-40(s0)
    80001bc2:	00000097          	auipc	ra,0x0
    80001bc6:	ee6080e7          	jalr	-282(ra) # 80001aa8 <walk>
    80001bca:	fea43423          	sd	a0,-24(s0)
    80001bce:	fe843783          	ld	a5,-24(s0)
    80001bd2:	e399                	bnez	a5,80001bd8 <walkaddr+0x40>
    80001bd4:	4781                	li	a5,0
    80001bd6:	a805                	j	80001c06 <walkaddr+0x6e>
    80001bd8:	fe843783          	ld	a5,-24(s0)
    80001bdc:	639c                	ld	a5,0(a5)
    80001bde:	8b85                	andi	a5,a5,1
    80001be0:	e399                	bnez	a5,80001be6 <walkaddr+0x4e>
    80001be2:	4781                	li	a5,0
    80001be4:	a00d                	j	80001c06 <walkaddr+0x6e>
    80001be6:	fe843783          	ld	a5,-24(s0)
    80001bea:	639c                	ld	a5,0(a5)
    80001bec:	8bc1                	andi	a5,a5,16
    80001bee:	e399                	bnez	a5,80001bf4 <walkaddr+0x5c>
    80001bf0:	4781                	li	a5,0
    80001bf2:	a811                	j	80001c06 <walkaddr+0x6e>
    80001bf4:	fe843783          	ld	a5,-24(s0)
    80001bf8:	639c                	ld	a5,0(a5)
    80001bfa:	83a9                	srli	a5,a5,0xa
    80001bfc:	07b2                	slli	a5,a5,0xc
    80001bfe:	fef43023          	sd	a5,-32(s0)
    80001c02:	fe043783          	ld	a5,-32(s0)
    80001c06:	853e                	mv	a0,a5
    80001c08:	70a2                	ld	ra,40(sp)
    80001c0a:	7402                	ld	s0,32(sp)
    80001c0c:	6145                	addi	sp,sp,48
    80001c0e:	8082                	ret

0000000080001c10 <kvmmap>:
    80001c10:	7139                	addi	sp,sp,-64
    80001c12:	fc06                	sd	ra,56(sp)
    80001c14:	f822                	sd	s0,48(sp)
    80001c16:	0080                	addi	s0,sp,64
    80001c18:	fea43423          	sd	a0,-24(s0)
    80001c1c:	feb43023          	sd	a1,-32(s0)
    80001c20:	fcc43c23          	sd	a2,-40(s0)
    80001c24:	fcd43823          	sd	a3,-48(s0)
    80001c28:	87ba                	mv	a5,a4
    80001c2a:	fcf42623          	sw	a5,-52(s0)
    80001c2e:	fcc42783          	lw	a5,-52(s0)
    80001c32:	873e                	mv	a4,a5
    80001c34:	fd843683          	ld	a3,-40(s0)
    80001c38:	fd043603          	ld	a2,-48(s0)
    80001c3c:	fe043583          	ld	a1,-32(s0)
    80001c40:	fe843503          	ld	a0,-24(s0)
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	026080e7          	jalr	38(ra) # 80001c6a <mappages>
    80001c4c:	87aa                	mv	a5,a0
    80001c4e:	cb89                	beqz	a5,80001c60 <kvmmap+0x50>
    80001c50:	00009517          	auipc	a0,0x9
    80001c54:	47050513          	addi	a0,a0,1136 # 8000b0c0 <etext+0xc0>
    80001c58:	fffff097          	auipc	ra,0xfffff
    80001c5c:	ffa080e7          	jalr	-6(ra) # 80000c52 <panic>
    80001c60:	0001                	nop
    80001c62:	70e2                	ld	ra,56(sp)
    80001c64:	7442                	ld	s0,48(sp)
    80001c66:	6121                	addi	sp,sp,64
    80001c68:	8082                	ret

0000000080001c6a <mappages>:
    80001c6a:	711d                	addi	sp,sp,-96
    80001c6c:	ec86                	sd	ra,88(sp)
    80001c6e:	e8a2                	sd	s0,80(sp)
    80001c70:	1080                	addi	s0,sp,96
    80001c72:	fca43423          	sd	a0,-56(s0)
    80001c76:	fcb43023          	sd	a1,-64(s0)
    80001c7a:	fac43c23          	sd	a2,-72(s0)
    80001c7e:	fad43823          	sd	a3,-80(s0)
    80001c82:	87ba                	mv	a5,a4
    80001c84:	faf42623          	sw	a5,-84(s0)
    80001c88:	fc043703          	ld	a4,-64(s0)
    80001c8c:	77fd                	lui	a5,0xfffff
    80001c8e:	8ff9                	and	a5,a5,a4
    80001c90:	fef43423          	sd	a5,-24(s0)
    80001c94:	fc043703          	ld	a4,-64(s0)
    80001c98:	fb843783          	ld	a5,-72(s0)
    80001c9c:	97ba                	add	a5,a5,a4
    80001c9e:	fff78713          	addi	a4,a5,-1 # ffffffffffffefff <end+0xffffffff7ffd5fff>
    80001ca2:	77fd                	lui	a5,0xfffff
    80001ca4:	8ff9                	and	a5,a5,a4
    80001ca6:	fef43023          	sd	a5,-32(s0)
    80001caa:	4605                	li	a2,1
    80001cac:	fe843583          	ld	a1,-24(s0)
    80001cb0:	fc843503          	ld	a0,-56(s0)
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	df4080e7          	jalr	-524(ra) # 80001aa8 <walk>
    80001cbc:	fca43c23          	sd	a0,-40(s0)
    80001cc0:	fd843783          	ld	a5,-40(s0)
    80001cc4:	e399                	bnez	a5,80001cca <mappages+0x60>
    80001cc6:	57fd                	li	a5,-1
    80001cc8:	a085                	j	80001d28 <mappages+0xbe>
    80001cca:	fd843783          	ld	a5,-40(s0)
    80001cce:	639c                	ld	a5,0(a5)
    80001cd0:	8b85                	andi	a5,a5,1
    80001cd2:	cb89                	beqz	a5,80001ce4 <mappages+0x7a>
    80001cd4:	00009517          	auipc	a0,0x9
    80001cd8:	3f450513          	addi	a0,a0,1012 # 8000b0c8 <etext+0xc8>
    80001cdc:	fffff097          	auipc	ra,0xfffff
    80001ce0:	f76080e7          	jalr	-138(ra) # 80000c52 <panic>
    80001ce4:	fb043783          	ld	a5,-80(s0)
    80001ce8:	83b1                	srli	a5,a5,0xc
    80001cea:	00a79713          	slli	a4,a5,0xa
    80001cee:	fac42783          	lw	a5,-84(s0)
    80001cf2:	8fd9                	or	a5,a5,a4
    80001cf4:	0017e713          	ori	a4,a5,1
    80001cf8:	fd843783          	ld	a5,-40(s0)
    80001cfc:	e398                	sd	a4,0(a5)
    80001cfe:	fe843703          	ld	a4,-24(s0)
    80001d02:	fe043783          	ld	a5,-32(s0)
    80001d06:	00f70f63          	beq	a4,a5,80001d24 <mappages+0xba>
    80001d0a:	fe843703          	ld	a4,-24(s0)
    80001d0e:	6785                	lui	a5,0x1
    80001d10:	97ba                	add	a5,a5,a4
    80001d12:	fef43423          	sd	a5,-24(s0)
    80001d16:	fb043703          	ld	a4,-80(s0)
    80001d1a:	6785                	lui	a5,0x1
    80001d1c:	97ba                	add	a5,a5,a4
    80001d1e:	faf43823          	sd	a5,-80(s0)
    80001d22:	b761                	j	80001caa <mappages+0x40>
    80001d24:	0001                	nop
    80001d26:	4781                	li	a5,0
    80001d28:	853e                	mv	a0,a5
    80001d2a:	60e6                	ld	ra,88(sp)
    80001d2c:	6446                	ld	s0,80(sp)
    80001d2e:	6125                	addi	sp,sp,96
    80001d30:	8082                	ret

0000000080001d32 <uvmunmap>:
    80001d32:	715d                	addi	sp,sp,-80
    80001d34:	e486                	sd	ra,72(sp)
    80001d36:	e0a2                	sd	s0,64(sp)
    80001d38:	0880                	addi	s0,sp,80
    80001d3a:	fca43423          	sd	a0,-56(s0)
    80001d3e:	fcb43023          	sd	a1,-64(s0)
    80001d42:	fac43c23          	sd	a2,-72(s0)
    80001d46:	87b6                	mv	a5,a3
    80001d48:	faf42a23          	sw	a5,-76(s0)
    80001d4c:	fc043703          	ld	a4,-64(s0)
    80001d50:	6785                	lui	a5,0x1
    80001d52:	17fd                	addi	a5,a5,-1
    80001d54:	8ff9                	and	a5,a5,a4
    80001d56:	cb89                	beqz	a5,80001d68 <uvmunmap+0x36>
    80001d58:	00009517          	auipc	a0,0x9
    80001d5c:	37850513          	addi	a0,a0,888 # 8000b0d0 <etext+0xd0>
    80001d60:	fffff097          	auipc	ra,0xfffff
    80001d64:	ef2080e7          	jalr	-270(ra) # 80000c52 <panic>
    80001d68:	fc043783          	ld	a5,-64(s0)
    80001d6c:	fef43423          	sd	a5,-24(s0)
    80001d70:	a045                	j	80001e10 <uvmunmap+0xde>
    80001d72:	4601                	li	a2,0
    80001d74:	fe843583          	ld	a1,-24(s0)
    80001d78:	fc843503          	ld	a0,-56(s0)
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	d2c080e7          	jalr	-724(ra) # 80001aa8 <walk>
    80001d84:	fea43023          	sd	a0,-32(s0)
    80001d88:	fe043783          	ld	a5,-32(s0)
    80001d8c:	eb89                	bnez	a5,80001d9e <uvmunmap+0x6c>
    80001d8e:	00009517          	auipc	a0,0x9
    80001d92:	35a50513          	addi	a0,a0,858 # 8000b0e8 <etext+0xe8>
    80001d96:	fffff097          	auipc	ra,0xfffff
    80001d9a:	ebc080e7          	jalr	-324(ra) # 80000c52 <panic>
    80001d9e:	fe043783          	ld	a5,-32(s0)
    80001da2:	639c                	ld	a5,0(a5)
    80001da4:	8b85                	andi	a5,a5,1
    80001da6:	eb89                	bnez	a5,80001db8 <uvmunmap+0x86>
    80001da8:	00009517          	auipc	a0,0x9
    80001dac:	35050513          	addi	a0,a0,848 # 8000b0f8 <etext+0xf8>
    80001db0:	fffff097          	auipc	ra,0xfffff
    80001db4:	ea2080e7          	jalr	-350(ra) # 80000c52 <panic>
    80001db8:	fe043783          	ld	a5,-32(s0)
    80001dbc:	639c                	ld	a5,0(a5)
    80001dbe:	3ff7f713          	andi	a4,a5,1023
    80001dc2:	4785                	li	a5,1
    80001dc4:	00f71a63          	bne	a4,a5,80001dd8 <uvmunmap+0xa6>
    80001dc8:	00009517          	auipc	a0,0x9
    80001dcc:	34850513          	addi	a0,a0,840 # 8000b110 <etext+0x110>
    80001dd0:	fffff097          	auipc	ra,0xfffff
    80001dd4:	e82080e7          	jalr	-382(ra) # 80000c52 <panic>
    80001dd8:	fb442783          	lw	a5,-76(s0)
    80001ddc:	2781                	sext.w	a5,a5
    80001dde:	cf99                	beqz	a5,80001dfc <uvmunmap+0xca>
    80001de0:	fe043783          	ld	a5,-32(s0)
    80001de4:	639c                	ld	a5,0(a5)
    80001de6:	83a9                	srli	a5,a5,0xa
    80001de8:	07b2                	slli	a5,a5,0xc
    80001dea:	fcf43c23          	sd	a5,-40(s0)
    80001dee:	fd843783          	ld	a5,-40(s0)
    80001df2:	853e                	mv	a0,a5
    80001df4:	fffff097          	auipc	ra,0xfffff
    80001df8:	294080e7          	jalr	660(ra) # 80001088 <kfree>
    80001dfc:	fe043783          	ld	a5,-32(s0)
    80001e00:	0007b023          	sd	zero,0(a5) # 1000 <_entry-0x7ffff000>
    80001e04:	fe843703          	ld	a4,-24(s0)
    80001e08:	6785                	lui	a5,0x1
    80001e0a:	97ba                	add	a5,a5,a4
    80001e0c:	fef43423          	sd	a5,-24(s0)
    80001e10:	fb843783          	ld	a5,-72(s0)
    80001e14:	00c79713          	slli	a4,a5,0xc
    80001e18:	fc043783          	ld	a5,-64(s0)
    80001e1c:	97ba                	add	a5,a5,a4
    80001e1e:	fe843703          	ld	a4,-24(s0)
    80001e22:	f4f768e3          	bltu	a4,a5,80001d72 <uvmunmap+0x40>
    80001e26:	0001                	nop
    80001e28:	0001                	nop
    80001e2a:	60a6                	ld	ra,72(sp)
    80001e2c:	6406                	ld	s0,64(sp)
    80001e2e:	6161                	addi	sp,sp,80
    80001e30:	8082                	ret

0000000080001e32 <uvmcreate>:
    80001e32:	1101                	addi	sp,sp,-32
    80001e34:	ec06                	sd	ra,24(sp)
    80001e36:	e822                	sd	s0,16(sp)
    80001e38:	1000                	addi	s0,sp,32
    80001e3a:	fffff097          	auipc	ra,0xfffff
    80001e3e:	2f2080e7          	jalr	754(ra) # 8000112c <kalloc>
    80001e42:	fea43423          	sd	a0,-24(s0)
    80001e46:	fe843783          	ld	a5,-24(s0)
    80001e4a:	e399                	bnez	a5,80001e50 <uvmcreate+0x1e>
    80001e4c:	4781                	li	a5,0
    80001e4e:	a819                	j	80001e64 <uvmcreate+0x32>
    80001e50:	6605                	lui	a2,0x1
    80001e52:	4581                	li	a1,0
    80001e54:	fe843503          	ld	a0,-24(s0)
    80001e58:	fffff097          	auipc	ra,0xfffff
    80001e5c:	5fc080e7          	jalr	1532(ra) # 80001454 <memset>
    80001e60:	fe843783          	ld	a5,-24(s0)
    80001e64:	853e                	mv	a0,a5
    80001e66:	60e2                	ld	ra,24(sp)
    80001e68:	6442                	ld	s0,16(sp)
    80001e6a:	6105                	addi	sp,sp,32
    80001e6c:	8082                	ret

0000000080001e6e <uvminit>:
    80001e6e:	7139                	addi	sp,sp,-64
    80001e70:	fc06                	sd	ra,56(sp)
    80001e72:	f822                	sd	s0,48(sp)
    80001e74:	0080                	addi	s0,sp,64
    80001e76:	fca43c23          	sd	a0,-40(s0)
    80001e7a:	fcb43823          	sd	a1,-48(s0)
    80001e7e:	87b2                	mv	a5,a2
    80001e80:	fcf42623          	sw	a5,-52(s0)
    80001e84:	fcc42783          	lw	a5,-52(s0)
    80001e88:	0007871b          	sext.w	a4,a5
    80001e8c:	6785                	lui	a5,0x1
    80001e8e:	00f76a63          	bltu	a4,a5,80001ea2 <uvminit+0x34>
    80001e92:	00009517          	auipc	a0,0x9
    80001e96:	29650513          	addi	a0,a0,662 # 8000b128 <etext+0x128>
    80001e9a:	fffff097          	auipc	ra,0xfffff
    80001e9e:	db8080e7          	jalr	-584(ra) # 80000c52 <panic>
    80001ea2:	fffff097          	auipc	ra,0xfffff
    80001ea6:	28a080e7          	jalr	650(ra) # 8000112c <kalloc>
    80001eaa:	fea43423          	sd	a0,-24(s0)
    80001eae:	6605                	lui	a2,0x1
    80001eb0:	4581                	li	a1,0
    80001eb2:	fe843503          	ld	a0,-24(s0)
    80001eb6:	fffff097          	auipc	ra,0xfffff
    80001eba:	59e080e7          	jalr	1438(ra) # 80001454 <memset>
    80001ebe:	fe843783          	ld	a5,-24(s0)
    80001ec2:	4779                	li	a4,30
    80001ec4:	86be                	mv	a3,a5
    80001ec6:	6605                	lui	a2,0x1
    80001ec8:	4581                	li	a1,0
    80001eca:	fd843503          	ld	a0,-40(s0)
    80001ece:	00000097          	auipc	ra,0x0
    80001ed2:	d9c080e7          	jalr	-612(ra) # 80001c6a <mappages>
    80001ed6:	fcc42783          	lw	a5,-52(s0)
    80001eda:	863e                	mv	a2,a5
    80001edc:	fd043583          	ld	a1,-48(s0)
    80001ee0:	fe843503          	ld	a0,-24(s0)
    80001ee4:	fffff097          	auipc	ra,0xfffff
    80001ee8:	654080e7          	jalr	1620(ra) # 80001538 <memmove>
    80001eec:	0001                	nop
    80001eee:	70e2                	ld	ra,56(sp)
    80001ef0:	7442                	ld	s0,48(sp)
    80001ef2:	6121                	addi	sp,sp,64
    80001ef4:	8082                	ret

0000000080001ef6 <uvmalloc>:
    80001ef6:	7139                	addi	sp,sp,-64
    80001ef8:	fc06                	sd	ra,56(sp)
    80001efa:	f822                	sd	s0,48(sp)
    80001efc:	0080                	addi	s0,sp,64
    80001efe:	fca43c23          	sd	a0,-40(s0)
    80001f02:	fcb43823          	sd	a1,-48(s0)
    80001f06:	fcc43423          	sd	a2,-56(s0)
    80001f0a:	fc843703          	ld	a4,-56(s0)
    80001f0e:	fd043783          	ld	a5,-48(s0)
    80001f12:	00f77563          	bgeu	a4,a5,80001f1c <uvmalloc+0x26>
    80001f16:	fd043783          	ld	a5,-48(s0)
    80001f1a:	a85d                	j	80001fd0 <uvmalloc+0xda>
    80001f1c:	fd043703          	ld	a4,-48(s0)
    80001f20:	6785                	lui	a5,0x1
    80001f22:	17fd                	addi	a5,a5,-1
    80001f24:	973e                	add	a4,a4,a5
    80001f26:	77fd                	lui	a5,0xfffff
    80001f28:	8ff9                	and	a5,a5,a4
    80001f2a:	fcf43823          	sd	a5,-48(s0)
    80001f2e:	fd043783          	ld	a5,-48(s0)
    80001f32:	fef43423          	sd	a5,-24(s0)
    80001f36:	a069                	j	80001fc0 <uvmalloc+0xca>
    80001f38:	fffff097          	auipc	ra,0xfffff
    80001f3c:	1f4080e7          	jalr	500(ra) # 8000112c <kalloc>
    80001f40:	fea43023          	sd	a0,-32(s0)
    80001f44:	fe043783          	ld	a5,-32(s0)
    80001f48:	ef89                	bnez	a5,80001f62 <uvmalloc+0x6c>
    80001f4a:	fd043603          	ld	a2,-48(s0)
    80001f4e:	fe843583          	ld	a1,-24(s0)
    80001f52:	fd843503          	ld	a0,-40(s0)
    80001f56:	00000097          	auipc	ra,0x0
    80001f5a:	084080e7          	jalr	132(ra) # 80001fda <uvmdealloc>
    80001f5e:	4781                	li	a5,0
    80001f60:	a885                	j	80001fd0 <uvmalloc+0xda>
    80001f62:	6605                	lui	a2,0x1
    80001f64:	4581                	li	a1,0
    80001f66:	fe043503          	ld	a0,-32(s0)
    80001f6a:	fffff097          	auipc	ra,0xfffff
    80001f6e:	4ea080e7          	jalr	1258(ra) # 80001454 <memset>
    80001f72:	fe043783          	ld	a5,-32(s0)
    80001f76:	4779                	li	a4,30
    80001f78:	86be                	mv	a3,a5
    80001f7a:	6605                	lui	a2,0x1
    80001f7c:	fe843583          	ld	a1,-24(s0)
    80001f80:	fd843503          	ld	a0,-40(s0)
    80001f84:	00000097          	auipc	ra,0x0
    80001f88:	ce6080e7          	jalr	-794(ra) # 80001c6a <mappages>
    80001f8c:	87aa                	mv	a5,a0
    80001f8e:	c39d                	beqz	a5,80001fb4 <uvmalloc+0xbe>
    80001f90:	fe043503          	ld	a0,-32(s0)
    80001f94:	fffff097          	auipc	ra,0xfffff
    80001f98:	0f4080e7          	jalr	244(ra) # 80001088 <kfree>
    80001f9c:	fd043603          	ld	a2,-48(s0)
    80001fa0:	fe843583          	ld	a1,-24(s0)
    80001fa4:	fd843503          	ld	a0,-40(s0)
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	032080e7          	jalr	50(ra) # 80001fda <uvmdealloc>
    80001fb0:	4781                	li	a5,0
    80001fb2:	a839                	j	80001fd0 <uvmalloc+0xda>
    80001fb4:	fe843703          	ld	a4,-24(s0)
    80001fb8:	6785                	lui	a5,0x1
    80001fba:	97ba                	add	a5,a5,a4
    80001fbc:	fef43423          	sd	a5,-24(s0)
    80001fc0:	fe843703          	ld	a4,-24(s0)
    80001fc4:	fc843783          	ld	a5,-56(s0)
    80001fc8:	f6f768e3          	bltu	a4,a5,80001f38 <uvmalloc+0x42>
    80001fcc:	fc843783          	ld	a5,-56(s0)
    80001fd0:	853e                	mv	a0,a5
    80001fd2:	70e2                	ld	ra,56(sp)
    80001fd4:	7442                	ld	s0,48(sp)
    80001fd6:	6121                	addi	sp,sp,64
    80001fd8:	8082                	ret

0000000080001fda <uvmdealloc>:
    80001fda:	7139                	addi	sp,sp,-64
    80001fdc:	fc06                	sd	ra,56(sp)
    80001fde:	f822                	sd	s0,48(sp)
    80001fe0:	0080                	addi	s0,sp,64
    80001fe2:	fca43c23          	sd	a0,-40(s0)
    80001fe6:	fcb43823          	sd	a1,-48(s0)
    80001fea:	fcc43423          	sd	a2,-56(s0)
    80001fee:	fc843703          	ld	a4,-56(s0)
    80001ff2:	fd043783          	ld	a5,-48(s0)
    80001ff6:	00f76563          	bltu	a4,a5,80002000 <uvmdealloc+0x26>
    80001ffa:	fd043783          	ld	a5,-48(s0)
    80001ffe:	a885                	j	8000206e <uvmdealloc+0x94>
    80002000:	fc843703          	ld	a4,-56(s0)
    80002004:	6785                	lui	a5,0x1
    80002006:	17fd                	addi	a5,a5,-1
    80002008:	973e                	add	a4,a4,a5
    8000200a:	77fd                	lui	a5,0xfffff
    8000200c:	8f7d                	and	a4,a4,a5
    8000200e:	fd043683          	ld	a3,-48(s0)
    80002012:	6785                	lui	a5,0x1
    80002014:	17fd                	addi	a5,a5,-1
    80002016:	96be                	add	a3,a3,a5
    80002018:	77fd                	lui	a5,0xfffff
    8000201a:	8ff5                	and	a5,a5,a3
    8000201c:	04f77763          	bgeu	a4,a5,8000206a <uvmdealloc+0x90>
    80002020:	fd043703          	ld	a4,-48(s0)
    80002024:	6785                	lui	a5,0x1
    80002026:	17fd                	addi	a5,a5,-1
    80002028:	973e                	add	a4,a4,a5
    8000202a:	77fd                	lui	a5,0xfffff
    8000202c:	8f7d                	and	a4,a4,a5
    8000202e:	fc843683          	ld	a3,-56(s0)
    80002032:	6785                	lui	a5,0x1
    80002034:	17fd                	addi	a5,a5,-1
    80002036:	96be                	add	a3,a3,a5
    80002038:	77fd                	lui	a5,0xfffff
    8000203a:	8ff5                	and	a5,a5,a3
    8000203c:	40f707b3          	sub	a5,a4,a5
    80002040:	83b1                	srli	a5,a5,0xc
    80002042:	fef42623          	sw	a5,-20(s0)
    80002046:	fc843703          	ld	a4,-56(s0)
    8000204a:	6785                	lui	a5,0x1
    8000204c:	17fd                	addi	a5,a5,-1
    8000204e:	973e                	add	a4,a4,a5
    80002050:	77fd                	lui	a5,0xfffff
    80002052:	8ff9                	and	a5,a5,a4
    80002054:	fec42703          	lw	a4,-20(s0)
    80002058:	4685                	li	a3,1
    8000205a:	863a                	mv	a2,a4
    8000205c:	85be                	mv	a1,a5
    8000205e:	fd843503          	ld	a0,-40(s0)
    80002062:	00000097          	auipc	ra,0x0
    80002066:	cd0080e7          	jalr	-816(ra) # 80001d32 <uvmunmap>
    8000206a:	fc843783          	ld	a5,-56(s0)
    8000206e:	853e                	mv	a0,a5
    80002070:	70e2                	ld	ra,56(sp)
    80002072:	7442                	ld	s0,48(sp)
    80002074:	6121                	addi	sp,sp,64
    80002076:	8082                	ret

0000000080002078 <freewalk>:
    80002078:	7139                	addi	sp,sp,-64
    8000207a:	fc06                	sd	ra,56(sp)
    8000207c:	f822                	sd	s0,48(sp)
    8000207e:	0080                	addi	s0,sp,64
    80002080:	fca43423          	sd	a0,-56(s0)
    80002084:	fe042623          	sw	zero,-20(s0)
    80002088:	a88d                	j	800020fa <freewalk+0x82>
    8000208a:	fec42783          	lw	a5,-20(s0)
    8000208e:	078e                	slli	a5,a5,0x3
    80002090:	fc843703          	ld	a4,-56(s0)
    80002094:	97ba                	add	a5,a5,a4
    80002096:	639c                	ld	a5,0(a5)
    80002098:	fef43023          	sd	a5,-32(s0)
    8000209c:	fe043783          	ld	a5,-32(s0)
    800020a0:	8b85                	andi	a5,a5,1
    800020a2:	cb9d                	beqz	a5,800020d8 <freewalk+0x60>
    800020a4:	fe043783          	ld	a5,-32(s0)
    800020a8:	8bb9                	andi	a5,a5,14
    800020aa:	e79d                	bnez	a5,800020d8 <freewalk+0x60>
    800020ac:	fe043783          	ld	a5,-32(s0)
    800020b0:	83a9                	srli	a5,a5,0xa
    800020b2:	07b2                	slli	a5,a5,0xc
    800020b4:	fcf43c23          	sd	a5,-40(s0)
    800020b8:	fd843783          	ld	a5,-40(s0)
    800020bc:	853e                	mv	a0,a5
    800020be:	00000097          	auipc	ra,0x0
    800020c2:	fba080e7          	jalr	-70(ra) # 80002078 <freewalk>
    800020c6:	fec42783          	lw	a5,-20(s0)
    800020ca:	078e                	slli	a5,a5,0x3
    800020cc:	fc843703          	ld	a4,-56(s0)
    800020d0:	97ba                	add	a5,a5,a4
    800020d2:	0007b023          	sd	zero,0(a5) # fffffffffffff000 <end+0xffffffff7ffd6000>
    800020d6:	a829                	j	800020f0 <freewalk+0x78>
    800020d8:	fe043783          	ld	a5,-32(s0)
    800020dc:	8b85                	andi	a5,a5,1
    800020de:	cb89                	beqz	a5,800020f0 <freewalk+0x78>
    800020e0:	00009517          	auipc	a0,0x9
    800020e4:	06850513          	addi	a0,a0,104 # 8000b148 <etext+0x148>
    800020e8:	fffff097          	auipc	ra,0xfffff
    800020ec:	b6a080e7          	jalr	-1174(ra) # 80000c52 <panic>
    800020f0:	fec42783          	lw	a5,-20(s0)
    800020f4:	2785                	addiw	a5,a5,1
    800020f6:	fef42623          	sw	a5,-20(s0)
    800020fa:	fec42783          	lw	a5,-20(s0)
    800020fe:	0007871b          	sext.w	a4,a5
    80002102:	1ff00793          	li	a5,511
    80002106:	f8e7d2e3          	bge	a5,a4,8000208a <freewalk+0x12>
    8000210a:	fc843503          	ld	a0,-56(s0)
    8000210e:	fffff097          	auipc	ra,0xfffff
    80002112:	f7a080e7          	jalr	-134(ra) # 80001088 <kfree>
    80002116:	0001                	nop
    80002118:	70e2                	ld	ra,56(sp)
    8000211a:	7442                	ld	s0,48(sp)
    8000211c:	6121                	addi	sp,sp,64
    8000211e:	8082                	ret

0000000080002120 <uvmfree>:
    80002120:	1101                	addi	sp,sp,-32
    80002122:	ec06                	sd	ra,24(sp)
    80002124:	e822                	sd	s0,16(sp)
    80002126:	1000                	addi	s0,sp,32
    80002128:	fea43423          	sd	a0,-24(s0)
    8000212c:	feb43023          	sd	a1,-32(s0)
    80002130:	fe043783          	ld	a5,-32(s0)
    80002134:	c385                	beqz	a5,80002154 <uvmfree+0x34>
    80002136:	fe043703          	ld	a4,-32(s0)
    8000213a:	6785                	lui	a5,0x1
    8000213c:	17fd                	addi	a5,a5,-1
    8000213e:	97ba                	add	a5,a5,a4
    80002140:	83b1                	srli	a5,a5,0xc
    80002142:	4685                	li	a3,1
    80002144:	863e                	mv	a2,a5
    80002146:	4581                	li	a1,0
    80002148:	fe843503          	ld	a0,-24(s0)
    8000214c:	00000097          	auipc	ra,0x0
    80002150:	be6080e7          	jalr	-1050(ra) # 80001d32 <uvmunmap>
    80002154:	fe843503          	ld	a0,-24(s0)
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	f20080e7          	jalr	-224(ra) # 80002078 <freewalk>
    80002160:	0001                	nop
    80002162:	60e2                	ld	ra,24(sp)
    80002164:	6442                	ld	s0,16(sp)
    80002166:	6105                	addi	sp,sp,32
    80002168:	8082                	ret

000000008000216a <uvmcopy>:
    8000216a:	711d                	addi	sp,sp,-96
    8000216c:	ec86                	sd	ra,88(sp)
    8000216e:	e8a2                	sd	s0,80(sp)
    80002170:	1080                	addi	s0,sp,96
    80002172:	faa43c23          	sd	a0,-72(s0)
    80002176:	fab43823          	sd	a1,-80(s0)
    8000217a:	fac43423          	sd	a2,-88(s0)
    8000217e:	fe043423          	sd	zero,-24(s0)
    80002182:	a0d9                	j	80002248 <uvmcopy+0xde>
    80002184:	4601                	li	a2,0
    80002186:	fe843583          	ld	a1,-24(s0)
    8000218a:	fb843503          	ld	a0,-72(s0)
    8000218e:	00000097          	auipc	ra,0x0
    80002192:	91a080e7          	jalr	-1766(ra) # 80001aa8 <walk>
    80002196:	fea43023          	sd	a0,-32(s0)
    8000219a:	fe043783          	ld	a5,-32(s0)
    8000219e:	eb89                	bnez	a5,800021b0 <uvmcopy+0x46>
    800021a0:	00009517          	auipc	a0,0x9
    800021a4:	fb850513          	addi	a0,a0,-72 # 8000b158 <etext+0x158>
    800021a8:	fffff097          	auipc	ra,0xfffff
    800021ac:	aaa080e7          	jalr	-1366(ra) # 80000c52 <panic>
    800021b0:	fe043783          	ld	a5,-32(s0)
    800021b4:	639c                	ld	a5,0(a5)
    800021b6:	8b85                	andi	a5,a5,1
    800021b8:	eb89                	bnez	a5,800021ca <uvmcopy+0x60>
    800021ba:	00009517          	auipc	a0,0x9
    800021be:	fbe50513          	addi	a0,a0,-66 # 8000b178 <etext+0x178>
    800021c2:	fffff097          	auipc	ra,0xfffff
    800021c6:	a90080e7          	jalr	-1392(ra) # 80000c52 <panic>
    800021ca:	fe043783          	ld	a5,-32(s0)
    800021ce:	639c                	ld	a5,0(a5)
    800021d0:	83a9                	srli	a5,a5,0xa
    800021d2:	07b2                	slli	a5,a5,0xc
    800021d4:	fcf43c23          	sd	a5,-40(s0)
    800021d8:	fe043783          	ld	a5,-32(s0)
    800021dc:	639c                	ld	a5,0(a5)
    800021de:	2781                	sext.w	a5,a5
    800021e0:	3ff7f793          	andi	a5,a5,1023
    800021e4:	fcf42a23          	sw	a5,-44(s0)
    800021e8:	fffff097          	auipc	ra,0xfffff
    800021ec:	f44080e7          	jalr	-188(ra) # 8000112c <kalloc>
    800021f0:	fca43423          	sd	a0,-56(s0)
    800021f4:	fc843783          	ld	a5,-56(s0)
    800021f8:	c3a5                	beqz	a5,80002258 <uvmcopy+0xee>
    800021fa:	fd843783          	ld	a5,-40(s0)
    800021fe:	6605                	lui	a2,0x1
    80002200:	85be                	mv	a1,a5
    80002202:	fc843503          	ld	a0,-56(s0)
    80002206:	fffff097          	auipc	ra,0xfffff
    8000220a:	332080e7          	jalr	818(ra) # 80001538 <memmove>
    8000220e:	fc843783          	ld	a5,-56(s0)
    80002212:	fd442703          	lw	a4,-44(s0)
    80002216:	86be                	mv	a3,a5
    80002218:	6605                	lui	a2,0x1
    8000221a:	fe843583          	ld	a1,-24(s0)
    8000221e:	fb043503          	ld	a0,-80(s0)
    80002222:	00000097          	auipc	ra,0x0
    80002226:	a48080e7          	jalr	-1464(ra) # 80001c6a <mappages>
    8000222a:	87aa                	mv	a5,a0
    8000222c:	cb81                	beqz	a5,8000223c <uvmcopy+0xd2>
    8000222e:	fc843503          	ld	a0,-56(s0)
    80002232:	fffff097          	auipc	ra,0xfffff
    80002236:	e56080e7          	jalr	-426(ra) # 80001088 <kfree>
    8000223a:	a005                	j	8000225a <uvmcopy+0xf0>
    8000223c:	fe843703          	ld	a4,-24(s0)
    80002240:	6785                	lui	a5,0x1
    80002242:	97ba                	add	a5,a5,a4
    80002244:	fef43423          	sd	a5,-24(s0)
    80002248:	fe843703          	ld	a4,-24(s0)
    8000224c:	fa843783          	ld	a5,-88(s0)
    80002250:	f2f76ae3          	bltu	a4,a5,80002184 <uvmcopy+0x1a>
    80002254:	4781                	li	a5,0
    80002256:	a839                	j	80002274 <uvmcopy+0x10a>
    80002258:	0001                	nop
    8000225a:	fe843783          	ld	a5,-24(s0)
    8000225e:	83b1                	srli	a5,a5,0xc
    80002260:	4685                	li	a3,1
    80002262:	863e                	mv	a2,a5
    80002264:	4581                	li	a1,0
    80002266:	fb043503          	ld	a0,-80(s0)
    8000226a:	00000097          	auipc	ra,0x0
    8000226e:	ac8080e7          	jalr	-1336(ra) # 80001d32 <uvmunmap>
    80002272:	57fd                	li	a5,-1
    80002274:	853e                	mv	a0,a5
    80002276:	60e6                	ld	ra,88(sp)
    80002278:	6446                	ld	s0,80(sp)
    8000227a:	6125                	addi	sp,sp,96
    8000227c:	8082                	ret

000000008000227e <uvmclear>:
    8000227e:	7179                	addi	sp,sp,-48
    80002280:	f406                	sd	ra,40(sp)
    80002282:	f022                	sd	s0,32(sp)
    80002284:	1800                	addi	s0,sp,48
    80002286:	fca43c23          	sd	a0,-40(s0)
    8000228a:	fcb43823          	sd	a1,-48(s0)
    8000228e:	4601                	li	a2,0
    80002290:	fd043583          	ld	a1,-48(s0)
    80002294:	fd843503          	ld	a0,-40(s0)
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	810080e7          	jalr	-2032(ra) # 80001aa8 <walk>
    800022a0:	fea43423          	sd	a0,-24(s0)
    800022a4:	fe843783          	ld	a5,-24(s0)
    800022a8:	eb89                	bnez	a5,800022ba <uvmclear+0x3c>
    800022aa:	00009517          	auipc	a0,0x9
    800022ae:	eee50513          	addi	a0,a0,-274 # 8000b198 <etext+0x198>
    800022b2:	fffff097          	auipc	ra,0xfffff
    800022b6:	9a0080e7          	jalr	-1632(ra) # 80000c52 <panic>
    800022ba:	fe843783          	ld	a5,-24(s0)
    800022be:	639c                	ld	a5,0(a5)
    800022c0:	fef7f713          	andi	a4,a5,-17
    800022c4:	fe843783          	ld	a5,-24(s0)
    800022c8:	e398                	sd	a4,0(a5)
    800022ca:	0001                	nop
    800022cc:	70a2                	ld	ra,40(sp)
    800022ce:	7402                	ld	s0,32(sp)
    800022d0:	6145                	addi	sp,sp,48
    800022d2:	8082                	ret

00000000800022d4 <copyout>:
    800022d4:	715d                	addi	sp,sp,-80
    800022d6:	e486                	sd	ra,72(sp)
    800022d8:	e0a2                	sd	s0,64(sp)
    800022da:	0880                	addi	s0,sp,80
    800022dc:	fca43423          	sd	a0,-56(s0)
    800022e0:	fcb43023          	sd	a1,-64(s0)
    800022e4:	fac43c23          	sd	a2,-72(s0)
    800022e8:	fad43823          	sd	a3,-80(s0)
    800022ec:	a055                	j	80002390 <copyout+0xbc>
    800022ee:	fc043703          	ld	a4,-64(s0)
    800022f2:	77fd                	lui	a5,0xfffff
    800022f4:	8ff9                	and	a5,a5,a4
    800022f6:	fef43023          	sd	a5,-32(s0)
    800022fa:	fe043583          	ld	a1,-32(s0)
    800022fe:	fc843503          	ld	a0,-56(s0)
    80002302:	00000097          	auipc	ra,0x0
    80002306:	896080e7          	jalr	-1898(ra) # 80001b98 <walkaddr>
    8000230a:	fca43c23          	sd	a0,-40(s0)
    8000230e:	fd843783          	ld	a5,-40(s0)
    80002312:	e399                	bnez	a5,80002318 <copyout+0x44>
    80002314:	57fd                	li	a5,-1
    80002316:	a049                	j	80002398 <copyout+0xc4>
    80002318:	fe043703          	ld	a4,-32(s0)
    8000231c:	fc043783          	ld	a5,-64(s0)
    80002320:	8f1d                	sub	a4,a4,a5
    80002322:	6785                	lui	a5,0x1
    80002324:	97ba                	add	a5,a5,a4
    80002326:	fef43423          	sd	a5,-24(s0)
    8000232a:	fe843703          	ld	a4,-24(s0)
    8000232e:	fb043783          	ld	a5,-80(s0)
    80002332:	00e7f663          	bgeu	a5,a4,8000233e <copyout+0x6a>
    80002336:	fb043783          	ld	a5,-80(s0)
    8000233a:	fef43423          	sd	a5,-24(s0)
    8000233e:	fc043703          	ld	a4,-64(s0)
    80002342:	fe043783          	ld	a5,-32(s0)
    80002346:	8f1d                	sub	a4,a4,a5
    80002348:	fd843783          	ld	a5,-40(s0)
    8000234c:	97ba                	add	a5,a5,a4
    8000234e:	873e                	mv	a4,a5
    80002350:	fe843783          	ld	a5,-24(s0)
    80002354:	2781                	sext.w	a5,a5
    80002356:	863e                	mv	a2,a5
    80002358:	fb843583          	ld	a1,-72(s0)
    8000235c:	853a                	mv	a0,a4
    8000235e:	fffff097          	auipc	ra,0xfffff
    80002362:	1da080e7          	jalr	474(ra) # 80001538 <memmove>
    80002366:	fb043703          	ld	a4,-80(s0)
    8000236a:	fe843783          	ld	a5,-24(s0)
    8000236e:	40f707b3          	sub	a5,a4,a5
    80002372:	faf43823          	sd	a5,-80(s0)
    80002376:	fb843703          	ld	a4,-72(s0)
    8000237a:	fe843783          	ld	a5,-24(s0)
    8000237e:	97ba                	add	a5,a5,a4
    80002380:	faf43c23          	sd	a5,-72(s0)
    80002384:	fe043703          	ld	a4,-32(s0)
    80002388:	6785                	lui	a5,0x1
    8000238a:	97ba                	add	a5,a5,a4
    8000238c:	fcf43023          	sd	a5,-64(s0)
    80002390:	fb043783          	ld	a5,-80(s0)
    80002394:	ffa9                	bnez	a5,800022ee <copyout+0x1a>
    80002396:	4781                	li	a5,0
    80002398:	853e                	mv	a0,a5
    8000239a:	60a6                	ld	ra,72(sp)
    8000239c:	6406                	ld	s0,64(sp)
    8000239e:	6161                	addi	sp,sp,80
    800023a0:	8082                	ret

00000000800023a2 <copyin>:
    800023a2:	715d                	addi	sp,sp,-80
    800023a4:	e486                	sd	ra,72(sp)
    800023a6:	e0a2                	sd	s0,64(sp)
    800023a8:	0880                	addi	s0,sp,80
    800023aa:	fca43423          	sd	a0,-56(s0)
    800023ae:	fcb43023          	sd	a1,-64(s0)
    800023b2:	fac43c23          	sd	a2,-72(s0)
    800023b6:	fad43823          	sd	a3,-80(s0)
    800023ba:	a055                	j	8000245e <copyin+0xbc>
    800023bc:	fb843703          	ld	a4,-72(s0)
    800023c0:	77fd                	lui	a5,0xfffff
    800023c2:	8ff9                	and	a5,a5,a4
    800023c4:	fef43023          	sd	a5,-32(s0)
    800023c8:	fe043583          	ld	a1,-32(s0)
    800023cc:	fc843503          	ld	a0,-56(s0)
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	7c8080e7          	jalr	1992(ra) # 80001b98 <walkaddr>
    800023d8:	fca43c23          	sd	a0,-40(s0)
    800023dc:	fd843783          	ld	a5,-40(s0)
    800023e0:	e399                	bnez	a5,800023e6 <copyin+0x44>
    800023e2:	57fd                	li	a5,-1
    800023e4:	a049                	j	80002466 <copyin+0xc4>
    800023e6:	fe043703          	ld	a4,-32(s0)
    800023ea:	fb843783          	ld	a5,-72(s0)
    800023ee:	8f1d                	sub	a4,a4,a5
    800023f0:	6785                	lui	a5,0x1
    800023f2:	97ba                	add	a5,a5,a4
    800023f4:	fef43423          	sd	a5,-24(s0)
    800023f8:	fe843703          	ld	a4,-24(s0)
    800023fc:	fb043783          	ld	a5,-80(s0)
    80002400:	00e7f663          	bgeu	a5,a4,8000240c <copyin+0x6a>
    80002404:	fb043783          	ld	a5,-80(s0)
    80002408:	fef43423          	sd	a5,-24(s0)
    8000240c:	fb843703          	ld	a4,-72(s0)
    80002410:	fe043783          	ld	a5,-32(s0)
    80002414:	8f1d                	sub	a4,a4,a5
    80002416:	fd843783          	ld	a5,-40(s0)
    8000241a:	97ba                	add	a5,a5,a4
    8000241c:	873e                	mv	a4,a5
    8000241e:	fe843783          	ld	a5,-24(s0)
    80002422:	2781                	sext.w	a5,a5
    80002424:	863e                	mv	a2,a5
    80002426:	85ba                	mv	a1,a4
    80002428:	fc043503          	ld	a0,-64(s0)
    8000242c:	fffff097          	auipc	ra,0xfffff
    80002430:	10c080e7          	jalr	268(ra) # 80001538 <memmove>
    80002434:	fb043703          	ld	a4,-80(s0)
    80002438:	fe843783          	ld	a5,-24(s0)
    8000243c:	40f707b3          	sub	a5,a4,a5
    80002440:	faf43823          	sd	a5,-80(s0)
    80002444:	fc043703          	ld	a4,-64(s0)
    80002448:	fe843783          	ld	a5,-24(s0)
    8000244c:	97ba                	add	a5,a5,a4
    8000244e:	fcf43023          	sd	a5,-64(s0)
    80002452:	fe043703          	ld	a4,-32(s0)
    80002456:	6785                	lui	a5,0x1
    80002458:	97ba                	add	a5,a5,a4
    8000245a:	faf43c23          	sd	a5,-72(s0)
    8000245e:	fb043783          	ld	a5,-80(s0)
    80002462:	ffa9                	bnez	a5,800023bc <copyin+0x1a>
    80002464:	4781                	li	a5,0
    80002466:	853e                	mv	a0,a5
    80002468:	60a6                	ld	ra,72(sp)
    8000246a:	6406                	ld	s0,64(sp)
    8000246c:	6161                	addi	sp,sp,80
    8000246e:	8082                	ret

0000000080002470 <copyinstr>:
    80002470:	711d                	addi	sp,sp,-96
    80002472:	ec86                	sd	ra,88(sp)
    80002474:	e8a2                	sd	s0,80(sp)
    80002476:	1080                	addi	s0,sp,96
    80002478:	faa43c23          	sd	a0,-72(s0)
    8000247c:	fab43823          	sd	a1,-80(s0)
    80002480:	fac43423          	sd	a2,-88(s0)
    80002484:	fad43023          	sd	a3,-96(s0)
    80002488:	fe042223          	sw	zero,-28(s0)
    8000248c:	a0f1                	j	80002558 <copyinstr+0xe8>
    8000248e:	fa843703          	ld	a4,-88(s0)
    80002492:	77fd                	lui	a5,0xfffff
    80002494:	8ff9                	and	a5,a5,a4
    80002496:	fcf43823          	sd	a5,-48(s0)
    8000249a:	fd043583          	ld	a1,-48(s0)
    8000249e:	fb843503          	ld	a0,-72(s0)
    800024a2:	fffff097          	auipc	ra,0xfffff
    800024a6:	6f6080e7          	jalr	1782(ra) # 80001b98 <walkaddr>
    800024aa:	fca43423          	sd	a0,-56(s0)
    800024ae:	fc843783          	ld	a5,-56(s0)
    800024b2:	e399                	bnez	a5,800024b8 <copyinstr+0x48>
    800024b4:	57fd                	li	a5,-1
    800024b6:	a87d                	j	80002574 <copyinstr+0x104>
    800024b8:	fd043703          	ld	a4,-48(s0)
    800024bc:	fa843783          	ld	a5,-88(s0)
    800024c0:	8f1d                	sub	a4,a4,a5
    800024c2:	6785                	lui	a5,0x1
    800024c4:	97ba                	add	a5,a5,a4
    800024c6:	fef43423          	sd	a5,-24(s0)
    800024ca:	fe843703          	ld	a4,-24(s0)
    800024ce:	fa043783          	ld	a5,-96(s0)
    800024d2:	00e7f663          	bgeu	a5,a4,800024de <copyinstr+0x6e>
    800024d6:	fa043783          	ld	a5,-96(s0)
    800024da:	fef43423          	sd	a5,-24(s0)
    800024de:	fa843703          	ld	a4,-88(s0)
    800024e2:	fd043783          	ld	a5,-48(s0)
    800024e6:	8f1d                	sub	a4,a4,a5
    800024e8:	fc843783          	ld	a5,-56(s0)
    800024ec:	97ba                	add	a5,a5,a4
    800024ee:	fcf43c23          	sd	a5,-40(s0)
    800024f2:	a891                	j	80002546 <copyinstr+0xd6>
    800024f4:	fd843783          	ld	a5,-40(s0)
    800024f8:	0007c783          	lbu	a5,0(a5) # 1000 <_entry-0x7ffff000>
    800024fc:	eb89                	bnez	a5,8000250e <copyinstr+0x9e>
    800024fe:	fb043783          	ld	a5,-80(s0)
    80002502:	00078023          	sb	zero,0(a5)
    80002506:	4785                	li	a5,1
    80002508:	fef42223          	sw	a5,-28(s0)
    8000250c:	a081                	j	8000254c <copyinstr+0xdc>
    8000250e:	fd843783          	ld	a5,-40(s0)
    80002512:	0007c703          	lbu	a4,0(a5)
    80002516:	fb043783          	ld	a5,-80(s0)
    8000251a:	00e78023          	sb	a4,0(a5)
    8000251e:	fe843783          	ld	a5,-24(s0)
    80002522:	17fd                	addi	a5,a5,-1
    80002524:	fef43423          	sd	a5,-24(s0)
    80002528:	fa043783          	ld	a5,-96(s0)
    8000252c:	17fd                	addi	a5,a5,-1
    8000252e:	faf43023          	sd	a5,-96(s0)
    80002532:	fd843783          	ld	a5,-40(s0)
    80002536:	0785                	addi	a5,a5,1
    80002538:	fcf43c23          	sd	a5,-40(s0)
    8000253c:	fb043783          	ld	a5,-80(s0)
    80002540:	0785                	addi	a5,a5,1
    80002542:	faf43823          	sd	a5,-80(s0)
    80002546:	fe843783          	ld	a5,-24(s0)
    8000254a:	f7cd                	bnez	a5,800024f4 <copyinstr+0x84>
    8000254c:	fd043703          	ld	a4,-48(s0)
    80002550:	6785                	lui	a5,0x1
    80002552:	97ba                	add	a5,a5,a4
    80002554:	faf43423          	sd	a5,-88(s0)
    80002558:	fe442783          	lw	a5,-28(s0)
    8000255c:	2781                	sext.w	a5,a5
    8000255e:	e781                	bnez	a5,80002566 <copyinstr+0xf6>
    80002560:	fa043783          	ld	a5,-96(s0)
    80002564:	f78d                	bnez	a5,8000248e <copyinstr+0x1e>
    80002566:	fe442783          	lw	a5,-28(s0)
    8000256a:	2781                	sext.w	a5,a5
    8000256c:	c399                	beqz	a5,80002572 <copyinstr+0x102>
    8000256e:	4781                	li	a5,0
    80002570:	a011                	j	80002574 <copyinstr+0x104>
    80002572:	57fd                	li	a5,-1
    80002574:	853e                	mv	a0,a5
    80002576:	60e6                	ld	ra,88(sp)
    80002578:	6446                	ld	s0,80(sp)
    8000257a:	6125                	addi	sp,sp,96
    8000257c:	8082                	ret

000000008000257e <r_sstatus>:
    8000257e:	1101                	addi	sp,sp,-32
    80002580:	ec22                	sd	s0,24(sp)
    80002582:	1000                	addi	s0,sp,32
    80002584:	100027f3          	csrr	a5,sstatus
    80002588:	fef43423          	sd	a5,-24(s0)
    8000258c:	fe843783          	ld	a5,-24(s0)
    80002590:	853e                	mv	a0,a5
    80002592:	6462                	ld	s0,24(sp)
    80002594:	6105                	addi	sp,sp,32
    80002596:	8082                	ret

0000000080002598 <w_sstatus>:
    80002598:	1101                	addi	sp,sp,-32
    8000259a:	ec22                	sd	s0,24(sp)
    8000259c:	1000                	addi	s0,sp,32
    8000259e:	fea43423          	sd	a0,-24(s0)
    800025a2:	fe843783          	ld	a5,-24(s0)
    800025a6:	10079073          	csrw	sstatus,a5
    800025aa:	0001                	nop
    800025ac:	6462                	ld	s0,24(sp)
    800025ae:	6105                	addi	sp,sp,32
    800025b0:	8082                	ret

00000000800025b2 <intr_on>:
    800025b2:	1141                	addi	sp,sp,-16
    800025b4:	e406                	sd	ra,8(sp)
    800025b6:	e022                	sd	s0,0(sp)
    800025b8:	0800                	addi	s0,sp,16
    800025ba:	00000097          	auipc	ra,0x0
    800025be:	fc4080e7          	jalr	-60(ra) # 8000257e <r_sstatus>
    800025c2:	87aa                	mv	a5,a0
    800025c4:	0027e793          	ori	a5,a5,2
    800025c8:	853e                	mv	a0,a5
    800025ca:	00000097          	auipc	ra,0x0
    800025ce:	fce080e7          	jalr	-50(ra) # 80002598 <w_sstatus>
    800025d2:	0001                	nop
    800025d4:	60a2                	ld	ra,8(sp)
    800025d6:	6402                	ld	s0,0(sp)
    800025d8:	0141                	addi	sp,sp,16
    800025da:	8082                	ret

00000000800025dc <intr_get>:
    800025dc:	1101                	addi	sp,sp,-32
    800025de:	ec06                	sd	ra,24(sp)
    800025e0:	e822                	sd	s0,16(sp)
    800025e2:	1000                	addi	s0,sp,32
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	f9a080e7          	jalr	-102(ra) # 8000257e <r_sstatus>
    800025ec:	fea43423          	sd	a0,-24(s0)
    800025f0:	fe843783          	ld	a5,-24(s0)
    800025f4:	8b89                	andi	a5,a5,2
    800025f6:	00f037b3          	snez	a5,a5
    800025fa:	0ff7f793          	andi	a5,a5,255
    800025fe:	2781                	sext.w	a5,a5
    80002600:	853e                	mv	a0,a5
    80002602:	60e2                	ld	ra,24(sp)
    80002604:	6442                	ld	s0,16(sp)
    80002606:	6105                	addi	sp,sp,32
    80002608:	8082                	ret

000000008000260a <r_tp>:
    8000260a:	1101                	addi	sp,sp,-32
    8000260c:	ec22                	sd	s0,24(sp)
    8000260e:	1000                	addi	s0,sp,32
    80002610:	8792                	mv	a5,tp
    80002612:	fef43423          	sd	a5,-24(s0)
    80002616:	fe843783          	ld	a5,-24(s0)
    8000261a:	853e                	mv	a0,a5
    8000261c:	6462                	ld	s0,24(sp)
    8000261e:	6105                	addi	sp,sp,32
    80002620:	8082                	ret

0000000080002622 <proc_mapstacks>:
    80002622:	7139                	addi	sp,sp,-64
    80002624:	fc06                	sd	ra,56(sp)
    80002626:	f822                	sd	s0,48(sp)
    80002628:	0080                	addi	s0,sp,64
    8000262a:	fca43423          	sd	a0,-56(s0)
    8000262e:	00012797          	auipc	a5,0x12
    80002632:	06a78793          	addi	a5,a5,106 # 80014698 <proc>
    80002636:	fef43423          	sd	a5,-24(s0)
    8000263a:	a061                	j	800026c2 <proc_mapstacks+0xa0>
    8000263c:	fffff097          	auipc	ra,0xfffff
    80002640:	af0080e7          	jalr	-1296(ra) # 8000112c <kalloc>
    80002644:	fea43023          	sd	a0,-32(s0)
    80002648:	fe043783          	ld	a5,-32(s0)
    8000264c:	eb89                	bnez	a5,8000265e <proc_mapstacks+0x3c>
    8000264e:	00009517          	auipc	a0,0x9
    80002652:	b5a50513          	addi	a0,a0,-1190 # 8000b1a8 <etext+0x1a8>
    80002656:	ffffe097          	auipc	ra,0xffffe
    8000265a:	5fc080e7          	jalr	1532(ra) # 80000c52 <panic>
    8000265e:	fe843703          	ld	a4,-24(s0)
    80002662:	00012797          	auipc	a5,0x12
    80002666:	03678793          	addi	a5,a5,54 # 80014698 <proc>
    8000266a:	40f707b3          	sub	a5,a4,a5
    8000266e:	4037d713          	srai	a4,a5,0x3
    80002672:	00009797          	auipc	a5,0x9
    80002676:	c1e78793          	addi	a5,a5,-994 # 8000b290 <etext+0x290>
    8000267a:	639c                	ld	a5,0(a5)
    8000267c:	02f707b3          	mul	a5,a4,a5
    80002680:	2781                	sext.w	a5,a5
    80002682:	2785                	addiw	a5,a5,1
    80002684:	2781                	sext.w	a5,a5
    80002686:	00d7979b          	slliw	a5,a5,0xd
    8000268a:	2781                	sext.w	a5,a5
    8000268c:	873e                	mv	a4,a5
    8000268e:	040007b7          	lui	a5,0x4000
    80002692:	17fd                	addi	a5,a5,-1
    80002694:	07b2                	slli	a5,a5,0xc
    80002696:	8f99                	sub	a5,a5,a4
    80002698:	fcf43c23          	sd	a5,-40(s0)
    8000269c:	fe043783          	ld	a5,-32(s0)
    800026a0:	4719                	li	a4,6
    800026a2:	6685                	lui	a3,0x1
    800026a4:	863e                	mv	a2,a5
    800026a6:	fd843583          	ld	a1,-40(s0)
    800026aa:	fc843503          	ld	a0,-56(s0)
    800026ae:	fffff097          	auipc	ra,0xfffff
    800026b2:	562080e7          	jalr	1378(ra) # 80001c10 <kvmmap>
    800026b6:	fe843783          	ld	a5,-24(s0)
    800026ba:	16878793          	addi	a5,a5,360 # 4000168 <_entry-0x7bfffe98>
    800026be:	fef43423          	sd	a5,-24(s0)
    800026c2:	fe843703          	ld	a4,-24(s0)
    800026c6:	00018797          	auipc	a5,0x18
    800026ca:	9d278793          	addi	a5,a5,-1582 # 8001a098 <pid_lock>
    800026ce:	f6f767e3          	bltu	a4,a5,8000263c <proc_mapstacks+0x1a>
    800026d2:	0001                	nop
    800026d4:	0001                	nop
    800026d6:	70e2                	ld	ra,56(sp)
    800026d8:	7442                	ld	s0,48(sp)
    800026da:	6121                	addi	sp,sp,64
    800026dc:	8082                	ret

00000000800026de <procinit>:
    800026de:	1101                	addi	sp,sp,-32
    800026e0:	ec06                	sd	ra,24(sp)
    800026e2:	e822                	sd	s0,16(sp)
    800026e4:	1000                	addi	s0,sp,32
    800026e6:	00009597          	auipc	a1,0x9
    800026ea:	aca58593          	addi	a1,a1,-1334 # 8000b1b0 <etext+0x1b0>
    800026ee:	00018517          	auipc	a0,0x18
    800026f2:	9aa50513          	addi	a0,a0,-1622 # 8001a098 <pid_lock>
    800026f6:	fffff097          	auipc	ra,0xfffff
    800026fa:	b5a080e7          	jalr	-1190(ra) # 80001250 <initlock>
    800026fe:	00012797          	auipc	a5,0x12
    80002702:	f9a78793          	addi	a5,a5,-102 # 80014698 <proc>
    80002706:	fef43423          	sd	a5,-24(s0)
    8000270a:	a09d                	j	80002770 <procinit+0x92>
    8000270c:	fe843783          	ld	a5,-24(s0)
    80002710:	00009597          	auipc	a1,0x9
    80002714:	aa858593          	addi	a1,a1,-1368 # 8000b1b8 <etext+0x1b8>
    80002718:	853e                	mv	a0,a5
    8000271a:	fffff097          	auipc	ra,0xfffff
    8000271e:	b36080e7          	jalr	-1226(ra) # 80001250 <initlock>
    80002722:	fe843703          	ld	a4,-24(s0)
    80002726:	00012797          	auipc	a5,0x12
    8000272a:	f7278793          	addi	a5,a5,-142 # 80014698 <proc>
    8000272e:	40f707b3          	sub	a5,a4,a5
    80002732:	4037d713          	srai	a4,a5,0x3
    80002736:	00009797          	auipc	a5,0x9
    8000273a:	b5a78793          	addi	a5,a5,-1190 # 8000b290 <etext+0x290>
    8000273e:	639c                	ld	a5,0(a5)
    80002740:	02f707b3          	mul	a5,a4,a5
    80002744:	2781                	sext.w	a5,a5
    80002746:	2785                	addiw	a5,a5,1
    80002748:	2781                	sext.w	a5,a5
    8000274a:	00d7979b          	slliw	a5,a5,0xd
    8000274e:	2781                	sext.w	a5,a5
    80002750:	873e                	mv	a4,a5
    80002752:	040007b7          	lui	a5,0x4000
    80002756:	17fd                	addi	a5,a5,-1
    80002758:	07b2                	slli	a5,a5,0xc
    8000275a:	8f99                	sub	a5,a5,a4
    8000275c:	873e                	mv	a4,a5
    8000275e:	fe843783          	ld	a5,-24(s0)
    80002762:	e3b8                	sd	a4,64(a5)
    80002764:	fe843783          	ld	a5,-24(s0)
    80002768:	16878793          	addi	a5,a5,360 # 4000168 <_entry-0x7bfffe98>
    8000276c:	fef43423          	sd	a5,-24(s0)
    80002770:	fe843703          	ld	a4,-24(s0)
    80002774:	00018797          	auipc	a5,0x18
    80002778:	92478793          	addi	a5,a5,-1756 # 8001a098 <pid_lock>
    8000277c:	f8f768e3          	bltu	a4,a5,8000270c <procinit+0x2e>
    80002780:	0001                	nop
    80002782:	0001                	nop
    80002784:	60e2                	ld	ra,24(sp)
    80002786:	6442                	ld	s0,16(sp)
    80002788:	6105                	addi	sp,sp,32
    8000278a:	8082                	ret

000000008000278c <cpuid>:
    8000278c:	1101                	addi	sp,sp,-32
    8000278e:	ec06                	sd	ra,24(sp)
    80002790:	e822                	sd	s0,16(sp)
    80002792:	1000                	addi	s0,sp,32
    80002794:	00000097          	auipc	ra,0x0
    80002798:	e76080e7          	jalr	-394(ra) # 8000260a <r_tp>
    8000279c:	87aa                	mv	a5,a0
    8000279e:	fef42623          	sw	a5,-20(s0)
    800027a2:	fec42783          	lw	a5,-20(s0)
    800027a6:	853e                	mv	a0,a5
    800027a8:	60e2                	ld	ra,24(sp)
    800027aa:	6442                	ld	s0,16(sp)
    800027ac:	6105                	addi	sp,sp,32
    800027ae:	8082                	ret

00000000800027b0 <mycpu>:
    800027b0:	1101                	addi	sp,sp,-32
    800027b2:	ec06                	sd	ra,24(sp)
    800027b4:	e822                	sd	s0,16(sp)
    800027b6:	1000                	addi	s0,sp,32
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	fd4080e7          	jalr	-44(ra) # 8000278c <cpuid>
    800027c0:	87aa                	mv	a5,a0
    800027c2:	fef42623          	sw	a5,-20(s0)
    800027c6:	fec42783          	lw	a5,-20(s0)
    800027ca:	00779713          	slli	a4,a5,0x7
    800027ce:	00012797          	auipc	a5,0x12
    800027d2:	aca78793          	addi	a5,a5,-1334 # 80014298 <cpus>
    800027d6:	97ba                	add	a5,a5,a4
    800027d8:	fef43023          	sd	a5,-32(s0)
    800027dc:	fe043783          	ld	a5,-32(s0)
    800027e0:	853e                	mv	a0,a5
    800027e2:	60e2                	ld	ra,24(sp)
    800027e4:	6442                	ld	s0,16(sp)
    800027e6:	6105                	addi	sp,sp,32
    800027e8:	8082                	ret

00000000800027ea <myproc>:
    800027ea:	1101                	addi	sp,sp,-32
    800027ec:	ec06                	sd	ra,24(sp)
    800027ee:	e822                	sd	s0,16(sp)
    800027f0:	1000                	addi	s0,sp,32
    800027f2:	fffff097          	auipc	ra,0xfffff
    800027f6:	b8c080e7          	jalr	-1140(ra) # 8000137e <push_off>
    800027fa:	00000097          	auipc	ra,0x0
    800027fe:	fb6080e7          	jalr	-74(ra) # 800027b0 <mycpu>
    80002802:	fea43423          	sd	a0,-24(s0)
    80002806:	fe843783          	ld	a5,-24(s0)
    8000280a:	639c                	ld	a5,0(a5)
    8000280c:	fef43023          	sd	a5,-32(s0)
    80002810:	fffff097          	auipc	ra,0xfffff
    80002814:	bc6080e7          	jalr	-1082(ra) # 800013d6 <pop_off>
    80002818:	fe043783          	ld	a5,-32(s0)
    8000281c:	853e                	mv	a0,a5
    8000281e:	60e2                	ld	ra,24(sp)
    80002820:	6442                	ld	s0,16(sp)
    80002822:	6105                	addi	sp,sp,32
    80002824:	8082                	ret

0000000080002826 <allocpid>:
    80002826:	1101                	addi	sp,sp,-32
    80002828:	ec06                	sd	ra,24(sp)
    8000282a:	e822                	sd	s0,16(sp)
    8000282c:	1000                	addi	s0,sp,32
    8000282e:	00018517          	auipc	a0,0x18
    80002832:	86a50513          	addi	a0,a0,-1942 # 8001a098 <pid_lock>
    80002836:	fffff097          	auipc	ra,0xfffff
    8000283a:	a4a080e7          	jalr	-1462(ra) # 80001280 <acquire>
    8000283e:	00009797          	auipc	a5,0x9
    80002842:	f1278793          	addi	a5,a5,-238 # 8000b750 <nextpid>
    80002846:	439c                	lw	a5,0(a5)
    80002848:	fef42623          	sw	a5,-20(s0)
    8000284c:	00009797          	auipc	a5,0x9
    80002850:	f0478793          	addi	a5,a5,-252 # 8000b750 <nextpid>
    80002854:	439c                	lw	a5,0(a5)
    80002856:	2785                	addiw	a5,a5,1
    80002858:	0007871b          	sext.w	a4,a5
    8000285c:	00009797          	auipc	a5,0x9
    80002860:	ef478793          	addi	a5,a5,-268 # 8000b750 <nextpid>
    80002864:	c398                	sw	a4,0(a5)
    80002866:	00018517          	auipc	a0,0x18
    8000286a:	83250513          	addi	a0,a0,-1998 # 8001a098 <pid_lock>
    8000286e:	fffff097          	auipc	ra,0xfffff
    80002872:	a76080e7          	jalr	-1418(ra) # 800012e4 <release>
    80002876:	fec42783          	lw	a5,-20(s0)
    8000287a:	853e                	mv	a0,a5
    8000287c:	60e2                	ld	ra,24(sp)
    8000287e:	6442                	ld	s0,16(sp)
    80002880:	6105                	addi	sp,sp,32
    80002882:	8082                	ret

0000000080002884 <allocproc>:
    80002884:	1101                	addi	sp,sp,-32
    80002886:	ec06                	sd	ra,24(sp)
    80002888:	e822                	sd	s0,16(sp)
    8000288a:	1000                	addi	s0,sp,32
    8000288c:	00012797          	auipc	a5,0x12
    80002890:	e0c78793          	addi	a5,a5,-500 # 80014698 <proc>
    80002894:	fef43423          	sd	a5,-24(s0)
    80002898:	a80d                	j	800028ca <allocproc+0x46>
    8000289a:	fe843783          	ld	a5,-24(s0)
    8000289e:	853e                	mv	a0,a5
    800028a0:	fffff097          	auipc	ra,0xfffff
    800028a4:	9e0080e7          	jalr	-1568(ra) # 80001280 <acquire>
    800028a8:	fe843783          	ld	a5,-24(s0)
    800028ac:	4f9c                	lw	a5,24(a5)
    800028ae:	cb85                	beqz	a5,800028de <allocproc+0x5a>
    800028b0:	fe843783          	ld	a5,-24(s0)
    800028b4:	853e                	mv	a0,a5
    800028b6:	fffff097          	auipc	ra,0xfffff
    800028ba:	a2e080e7          	jalr	-1490(ra) # 800012e4 <release>
    800028be:	fe843783          	ld	a5,-24(s0)
    800028c2:	16878793          	addi	a5,a5,360
    800028c6:	fef43423          	sd	a5,-24(s0)
    800028ca:	fe843703          	ld	a4,-24(s0)
    800028ce:	00017797          	auipc	a5,0x17
    800028d2:	7ca78793          	addi	a5,a5,1994 # 8001a098 <pid_lock>
    800028d6:	fcf762e3          	bltu	a4,a5,8000289a <allocproc+0x16>
    800028da:	4781                	li	a5,0
    800028dc:	a855                	j	80002990 <allocproc+0x10c>
    800028de:	0001                	nop
    800028e0:	00000097          	auipc	ra,0x0
    800028e4:	f46080e7          	jalr	-186(ra) # 80002826 <allocpid>
    800028e8:	87aa                	mv	a5,a0
    800028ea:	873e                	mv	a4,a5
    800028ec:	fe843783          	ld	a5,-24(s0)
    800028f0:	df98                	sw	a4,56(a5)
    800028f2:	fffff097          	auipc	ra,0xfffff
    800028f6:	83a080e7          	jalr	-1990(ra) # 8000112c <kalloc>
    800028fa:	872a                	mv	a4,a0
    800028fc:	fe843783          	ld	a5,-24(s0)
    80002900:	efb8                	sd	a4,88(a5)
    80002902:	fe843783          	ld	a5,-24(s0)
    80002906:	6fbc                	ld	a5,88(a5)
    80002908:	eb91                	bnez	a5,8000291c <allocproc+0x98>
    8000290a:	fe843783          	ld	a5,-24(s0)
    8000290e:	853e                	mv	a0,a5
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	9d4080e7          	jalr	-1580(ra) # 800012e4 <release>
    80002918:	4781                	li	a5,0
    8000291a:	a89d                	j	80002990 <allocproc+0x10c>
    8000291c:	fe843503          	ld	a0,-24(s0)
    80002920:	00000097          	auipc	ra,0x0
    80002924:	118080e7          	jalr	280(ra) # 80002a38 <proc_pagetable>
    80002928:	872a                	mv	a4,a0
    8000292a:	fe843783          	ld	a5,-24(s0)
    8000292e:	ebb8                	sd	a4,80(a5)
    80002930:	fe843783          	ld	a5,-24(s0)
    80002934:	6bbc                	ld	a5,80(a5)
    80002936:	e385                	bnez	a5,80002956 <allocproc+0xd2>
    80002938:	fe843503          	ld	a0,-24(s0)
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	05e080e7          	jalr	94(ra) # 8000299a <freeproc>
    80002944:	fe843783          	ld	a5,-24(s0)
    80002948:	853e                	mv	a0,a5
    8000294a:	fffff097          	auipc	ra,0xfffff
    8000294e:	99a080e7          	jalr	-1638(ra) # 800012e4 <release>
    80002952:	4781                	li	a5,0
    80002954:	a835                	j	80002990 <allocproc+0x10c>
    80002956:	fe843783          	ld	a5,-24(s0)
    8000295a:	06078793          	addi	a5,a5,96
    8000295e:	07000613          	li	a2,112
    80002962:	4581                	li	a1,0
    80002964:	853e                	mv	a0,a5
    80002966:	fffff097          	auipc	ra,0xfffff
    8000296a:	aee080e7          	jalr	-1298(ra) # 80001454 <memset>
    8000296e:	00001717          	auipc	a4,0x1
    80002972:	a0070713          	addi	a4,a4,-1536 # 8000336e <forkret>
    80002976:	fe843783          	ld	a5,-24(s0)
    8000297a:	f3b8                	sd	a4,96(a5)
    8000297c:	fe843783          	ld	a5,-24(s0)
    80002980:	63b8                	ld	a4,64(a5)
    80002982:	6785                	lui	a5,0x1
    80002984:	973e                	add	a4,a4,a5
    80002986:	fe843783          	ld	a5,-24(s0)
    8000298a:	f7b8                	sd	a4,104(a5)
    8000298c:	fe843783          	ld	a5,-24(s0)
    80002990:	853e                	mv	a0,a5
    80002992:	60e2                	ld	ra,24(sp)
    80002994:	6442                	ld	s0,16(sp)
    80002996:	6105                	addi	sp,sp,32
    80002998:	8082                	ret

000000008000299a <freeproc>:
    8000299a:	1101                	addi	sp,sp,-32
    8000299c:	ec06                	sd	ra,24(sp)
    8000299e:	e822                	sd	s0,16(sp)
    800029a0:	1000                	addi	s0,sp,32
    800029a2:	fea43423          	sd	a0,-24(s0)
    800029a6:	fe843783          	ld	a5,-24(s0)
    800029aa:	6fbc                	ld	a5,88(a5)
    800029ac:	cb89                	beqz	a5,800029be <freeproc+0x24>
    800029ae:	fe843783          	ld	a5,-24(s0)
    800029b2:	6fbc                	ld	a5,88(a5)
    800029b4:	853e                	mv	a0,a5
    800029b6:	ffffe097          	auipc	ra,0xffffe
    800029ba:	6d2080e7          	jalr	1746(ra) # 80001088 <kfree>
    800029be:	fe843783          	ld	a5,-24(s0)
    800029c2:	0407bc23          	sd	zero,88(a5) # 1058 <_entry-0x7fffefa8>
    800029c6:	fe843783          	ld	a5,-24(s0)
    800029ca:	6bbc                	ld	a5,80(a5)
    800029cc:	cf89                	beqz	a5,800029e6 <freeproc+0x4c>
    800029ce:	fe843783          	ld	a5,-24(s0)
    800029d2:	6bb8                	ld	a4,80(a5)
    800029d4:	fe843783          	ld	a5,-24(s0)
    800029d8:	67bc                	ld	a5,72(a5)
    800029da:	85be                	mv	a1,a5
    800029dc:	853a                	mv	a0,a4
    800029de:	00000097          	auipc	ra,0x0
    800029e2:	11a080e7          	jalr	282(ra) # 80002af8 <proc_freepagetable>
    800029e6:	fe843783          	ld	a5,-24(s0)
    800029ea:	0407b823          	sd	zero,80(a5)
    800029ee:	fe843783          	ld	a5,-24(s0)
    800029f2:	0407b423          	sd	zero,72(a5)
    800029f6:	fe843783          	ld	a5,-24(s0)
    800029fa:	0207ac23          	sw	zero,56(a5)
    800029fe:	fe843783          	ld	a5,-24(s0)
    80002a02:	0207b023          	sd	zero,32(a5)
    80002a06:	fe843783          	ld	a5,-24(s0)
    80002a0a:	14078c23          	sb	zero,344(a5)
    80002a0e:	fe843783          	ld	a5,-24(s0)
    80002a12:	0207b423          	sd	zero,40(a5)
    80002a16:	fe843783          	ld	a5,-24(s0)
    80002a1a:	0207a823          	sw	zero,48(a5)
    80002a1e:	fe843783          	ld	a5,-24(s0)
    80002a22:	0207aa23          	sw	zero,52(a5)
    80002a26:	fe843783          	ld	a5,-24(s0)
    80002a2a:	0007ac23          	sw	zero,24(a5)
    80002a2e:	0001                	nop
    80002a30:	60e2                	ld	ra,24(sp)
    80002a32:	6442                	ld	s0,16(sp)
    80002a34:	6105                	addi	sp,sp,32
    80002a36:	8082                	ret

0000000080002a38 <proc_pagetable>:
    80002a38:	7179                	addi	sp,sp,-48
    80002a3a:	f406                	sd	ra,40(sp)
    80002a3c:	f022                	sd	s0,32(sp)
    80002a3e:	1800                	addi	s0,sp,48
    80002a40:	fca43c23          	sd	a0,-40(s0)
    80002a44:	fffff097          	auipc	ra,0xfffff
    80002a48:	3ee080e7          	jalr	1006(ra) # 80001e32 <uvmcreate>
    80002a4c:	fea43423          	sd	a0,-24(s0)
    80002a50:	fe843783          	ld	a5,-24(s0)
    80002a54:	e399                	bnez	a5,80002a5a <proc_pagetable+0x22>
    80002a56:	4781                	li	a5,0
    80002a58:	a859                	j	80002aee <proc_pagetable+0xb6>
    80002a5a:	00007797          	auipc	a5,0x7
    80002a5e:	5a678793          	addi	a5,a5,1446 # 8000a000 <_trampoline>
    80002a62:	4729                	li	a4,10
    80002a64:	86be                	mv	a3,a5
    80002a66:	6605                	lui	a2,0x1
    80002a68:	040007b7          	lui	a5,0x4000
    80002a6c:	17fd                	addi	a5,a5,-1
    80002a6e:	00c79593          	slli	a1,a5,0xc
    80002a72:	fe843503          	ld	a0,-24(s0)
    80002a76:	fffff097          	auipc	ra,0xfffff
    80002a7a:	1f4080e7          	jalr	500(ra) # 80001c6a <mappages>
    80002a7e:	87aa                	mv	a5,a0
    80002a80:	0007db63          	bgez	a5,80002a96 <proc_pagetable+0x5e>
    80002a84:	4581                	li	a1,0
    80002a86:	fe843503          	ld	a0,-24(s0)
    80002a8a:	fffff097          	auipc	ra,0xfffff
    80002a8e:	696080e7          	jalr	1686(ra) # 80002120 <uvmfree>
    80002a92:	4781                	li	a5,0
    80002a94:	a8a9                	j	80002aee <proc_pagetable+0xb6>
    80002a96:	fd843783          	ld	a5,-40(s0)
    80002a9a:	6fbc                	ld	a5,88(a5)
    80002a9c:	4719                	li	a4,6
    80002a9e:	86be                	mv	a3,a5
    80002aa0:	6605                	lui	a2,0x1
    80002aa2:	020007b7          	lui	a5,0x2000
    80002aa6:	17fd                	addi	a5,a5,-1
    80002aa8:	00d79593          	slli	a1,a5,0xd
    80002aac:	fe843503          	ld	a0,-24(s0)
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	1ba080e7          	jalr	442(ra) # 80001c6a <mappages>
    80002ab8:	87aa                	mv	a5,a0
    80002aba:	0207d863          	bgez	a5,80002aea <proc_pagetable+0xb2>
    80002abe:	4681                	li	a3,0
    80002ac0:	4605                	li	a2,1
    80002ac2:	040007b7          	lui	a5,0x4000
    80002ac6:	17fd                	addi	a5,a5,-1
    80002ac8:	00c79593          	slli	a1,a5,0xc
    80002acc:	fe843503          	ld	a0,-24(s0)
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	262080e7          	jalr	610(ra) # 80001d32 <uvmunmap>
    80002ad8:	4581                	li	a1,0
    80002ada:	fe843503          	ld	a0,-24(s0)
    80002ade:	fffff097          	auipc	ra,0xfffff
    80002ae2:	642080e7          	jalr	1602(ra) # 80002120 <uvmfree>
    80002ae6:	4781                	li	a5,0
    80002ae8:	a019                	j	80002aee <proc_pagetable+0xb6>
    80002aea:	fe843783          	ld	a5,-24(s0)
    80002aee:	853e                	mv	a0,a5
    80002af0:	70a2                	ld	ra,40(sp)
    80002af2:	7402                	ld	s0,32(sp)
    80002af4:	6145                	addi	sp,sp,48
    80002af6:	8082                	ret

0000000080002af8 <proc_freepagetable>:
    80002af8:	1101                	addi	sp,sp,-32
    80002afa:	ec06                	sd	ra,24(sp)
    80002afc:	e822                	sd	s0,16(sp)
    80002afe:	1000                	addi	s0,sp,32
    80002b00:	fea43423          	sd	a0,-24(s0)
    80002b04:	feb43023          	sd	a1,-32(s0)
    80002b08:	4681                	li	a3,0
    80002b0a:	4605                	li	a2,1
    80002b0c:	040007b7          	lui	a5,0x4000
    80002b10:	17fd                	addi	a5,a5,-1
    80002b12:	00c79593          	slli	a1,a5,0xc
    80002b16:	fe843503          	ld	a0,-24(s0)
    80002b1a:	fffff097          	auipc	ra,0xfffff
    80002b1e:	218080e7          	jalr	536(ra) # 80001d32 <uvmunmap>
    80002b22:	4681                	li	a3,0
    80002b24:	4605                	li	a2,1
    80002b26:	020007b7          	lui	a5,0x2000
    80002b2a:	17fd                	addi	a5,a5,-1
    80002b2c:	00d79593          	slli	a1,a5,0xd
    80002b30:	fe843503          	ld	a0,-24(s0)
    80002b34:	fffff097          	auipc	ra,0xfffff
    80002b38:	1fe080e7          	jalr	510(ra) # 80001d32 <uvmunmap>
    80002b3c:	fe043583          	ld	a1,-32(s0)
    80002b40:	fe843503          	ld	a0,-24(s0)
    80002b44:	fffff097          	auipc	ra,0xfffff
    80002b48:	5dc080e7          	jalr	1500(ra) # 80002120 <uvmfree>
    80002b4c:	0001                	nop
    80002b4e:	60e2                	ld	ra,24(sp)
    80002b50:	6442                	ld	s0,16(sp)
    80002b52:	6105                	addi	sp,sp,32
    80002b54:	8082                	ret

0000000080002b56 <userinit>:
    80002b56:	1101                	addi	sp,sp,-32
    80002b58:	ec06                	sd	ra,24(sp)
    80002b5a:	e822                	sd	s0,16(sp)
    80002b5c:	1000                	addi	s0,sp,32
    80002b5e:	00000097          	auipc	ra,0x0
    80002b62:	d26080e7          	jalr	-730(ra) # 80002884 <allocproc>
    80002b66:	fea43423          	sd	a0,-24(s0)
    80002b6a:	00009797          	auipc	a5,0x9
    80002b6e:	4ae78793          	addi	a5,a5,1198 # 8000c018 <initproc>
    80002b72:	fe843703          	ld	a4,-24(s0)
    80002b76:	e398                	sd	a4,0(a5)
    80002b78:	fe843783          	ld	a5,-24(s0)
    80002b7c:	6bbc                	ld	a5,80(a5)
    80002b7e:	03400613          	li	a2,52
    80002b82:	00009597          	auipc	a1,0x9
    80002b86:	bf658593          	addi	a1,a1,-1034 # 8000b778 <initcode>
    80002b8a:	853e                	mv	a0,a5
    80002b8c:	fffff097          	auipc	ra,0xfffff
    80002b90:	2e2080e7          	jalr	738(ra) # 80001e6e <uvminit>
    80002b94:	fe843783          	ld	a5,-24(s0)
    80002b98:	6705                	lui	a4,0x1
    80002b9a:	e7b8                	sd	a4,72(a5)
    80002b9c:	fe843783          	ld	a5,-24(s0)
    80002ba0:	6fbc                	ld	a5,88(a5)
    80002ba2:	0007bc23          	sd	zero,24(a5)
    80002ba6:	fe843783          	ld	a5,-24(s0)
    80002baa:	6fbc                	ld	a5,88(a5)
    80002bac:	6705                	lui	a4,0x1
    80002bae:	fb98                	sd	a4,48(a5)
    80002bb0:	fe843783          	ld	a5,-24(s0)
    80002bb4:	15878793          	addi	a5,a5,344
    80002bb8:	4641                	li	a2,16
    80002bba:	00008597          	auipc	a1,0x8
    80002bbe:	60658593          	addi	a1,a1,1542 # 8000b1c0 <etext+0x1c0>
    80002bc2:	853e                	mv	a0,a5
    80002bc4:	fffff097          	auipc	ra,0xfffff
    80002bc8:	b86080e7          	jalr	-1146(ra) # 8000174a <safestrcpy>
    80002bcc:	00008517          	auipc	a0,0x8
    80002bd0:	60450513          	addi	a0,a0,1540 # 8000b1d0 <etext+0x1d0>
    80002bd4:	00003097          	auipc	ra,0x3
    80002bd8:	140080e7          	jalr	320(ra) # 80005d14 <namei>
    80002bdc:	872a                	mv	a4,a0
    80002bde:	fe843783          	ld	a5,-24(s0)
    80002be2:	14e7b823          	sd	a4,336(a5)
    80002be6:	fe843783          	ld	a5,-24(s0)
    80002bea:	4709                	li	a4,2
    80002bec:	cf98                	sw	a4,24(a5)
    80002bee:	fe843783          	ld	a5,-24(s0)
    80002bf2:	853e                	mv	a0,a5
    80002bf4:	ffffe097          	auipc	ra,0xffffe
    80002bf8:	6f0080e7          	jalr	1776(ra) # 800012e4 <release>
    80002bfc:	0001                	nop
    80002bfe:	60e2                	ld	ra,24(sp)
    80002c00:	6442                	ld	s0,16(sp)
    80002c02:	6105                	addi	sp,sp,32
    80002c04:	8082                	ret

0000000080002c06 <growproc>:
    80002c06:	7179                	addi	sp,sp,-48
    80002c08:	f406                	sd	ra,40(sp)
    80002c0a:	f022                	sd	s0,32(sp)
    80002c0c:	1800                	addi	s0,sp,48
    80002c0e:	87aa                	mv	a5,a0
    80002c10:	fcf42e23          	sw	a5,-36(s0)
    80002c14:	00000097          	auipc	ra,0x0
    80002c18:	bd6080e7          	jalr	-1066(ra) # 800027ea <myproc>
    80002c1c:	fea43023          	sd	a0,-32(s0)
    80002c20:	fe043783          	ld	a5,-32(s0)
    80002c24:	67bc                	ld	a5,72(a5)
    80002c26:	fef42623          	sw	a5,-20(s0)
    80002c2a:	fdc42783          	lw	a5,-36(s0)
    80002c2e:	2781                	sext.w	a5,a5
    80002c30:	02f05e63          	blez	a5,80002c6c <growproc+0x66>
    80002c34:	fe043783          	ld	a5,-32(s0)
    80002c38:	6bb4                	ld	a3,80(a5)
    80002c3a:	fec46583          	lwu	a1,-20(s0)
    80002c3e:	fdc42783          	lw	a5,-36(s0)
    80002c42:	fec42703          	lw	a4,-20(s0)
    80002c46:	9fb9                	addw	a5,a5,a4
    80002c48:	2781                	sext.w	a5,a5
    80002c4a:	1782                	slli	a5,a5,0x20
    80002c4c:	9381                	srli	a5,a5,0x20
    80002c4e:	863e                	mv	a2,a5
    80002c50:	8536                	mv	a0,a3
    80002c52:	fffff097          	auipc	ra,0xfffff
    80002c56:	2a4080e7          	jalr	676(ra) # 80001ef6 <uvmalloc>
    80002c5a:	87aa                	mv	a5,a0
    80002c5c:	fef42623          	sw	a5,-20(s0)
    80002c60:	fec42783          	lw	a5,-20(s0)
    80002c64:	2781                	sext.w	a5,a5
    80002c66:	ef95                	bnez	a5,80002ca2 <growproc+0x9c>
    80002c68:	57fd                	li	a5,-1
    80002c6a:	a091                	j	80002cae <growproc+0xa8>
    80002c6c:	fdc42783          	lw	a5,-36(s0)
    80002c70:	2781                	sext.w	a5,a5
    80002c72:	0207d863          	bgez	a5,80002ca2 <growproc+0x9c>
    80002c76:	fe043783          	ld	a5,-32(s0)
    80002c7a:	6bb4                	ld	a3,80(a5)
    80002c7c:	fec46583          	lwu	a1,-20(s0)
    80002c80:	fdc42783          	lw	a5,-36(s0)
    80002c84:	fec42703          	lw	a4,-20(s0)
    80002c88:	9fb9                	addw	a5,a5,a4
    80002c8a:	2781                	sext.w	a5,a5
    80002c8c:	1782                	slli	a5,a5,0x20
    80002c8e:	9381                	srli	a5,a5,0x20
    80002c90:	863e                	mv	a2,a5
    80002c92:	8536                	mv	a0,a3
    80002c94:	fffff097          	auipc	ra,0xfffff
    80002c98:	346080e7          	jalr	838(ra) # 80001fda <uvmdealloc>
    80002c9c:	87aa                	mv	a5,a0
    80002c9e:	fef42623          	sw	a5,-20(s0)
    80002ca2:	fec46703          	lwu	a4,-20(s0)
    80002ca6:	fe043783          	ld	a5,-32(s0)
    80002caa:	e7b8                	sd	a4,72(a5)
    80002cac:	4781                	li	a5,0
    80002cae:	853e                	mv	a0,a5
    80002cb0:	70a2                	ld	ra,40(sp)
    80002cb2:	7402                	ld	s0,32(sp)
    80002cb4:	6145                	addi	sp,sp,48
    80002cb6:	8082                	ret

0000000080002cb8 <fork>:
    80002cb8:	7179                	addi	sp,sp,-48
    80002cba:	f406                	sd	ra,40(sp)
    80002cbc:	f022                	sd	s0,32(sp)
    80002cbe:	1800                	addi	s0,sp,48
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	b2a080e7          	jalr	-1238(ra) # 800027ea <myproc>
    80002cc8:	fea43023          	sd	a0,-32(s0)
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	bb8080e7          	jalr	-1096(ra) # 80002884 <allocproc>
    80002cd4:	fca43c23          	sd	a0,-40(s0)
    80002cd8:	fd843783          	ld	a5,-40(s0)
    80002cdc:	e399                	bnez	a5,80002ce2 <fork+0x2a>
    80002cde:	57fd                	li	a5,-1
    80002ce0:	a281                	j	80002e20 <fork+0x168>
    80002ce2:	fe043783          	ld	a5,-32(s0)
    80002ce6:	6bb8                	ld	a4,80(a5)
    80002ce8:	fd843783          	ld	a5,-40(s0)
    80002cec:	6bb4                	ld	a3,80(a5)
    80002cee:	fe043783          	ld	a5,-32(s0)
    80002cf2:	67bc                	ld	a5,72(a5)
    80002cf4:	863e                	mv	a2,a5
    80002cf6:	85b6                	mv	a1,a3
    80002cf8:	853a                	mv	a0,a4
    80002cfa:	fffff097          	auipc	ra,0xfffff
    80002cfe:	470080e7          	jalr	1136(ra) # 8000216a <uvmcopy>
    80002d02:	87aa                	mv	a5,a0
    80002d04:	0207d163          	bgez	a5,80002d26 <fork+0x6e>
    80002d08:	fd843503          	ld	a0,-40(s0)
    80002d0c:	00000097          	auipc	ra,0x0
    80002d10:	c8e080e7          	jalr	-882(ra) # 8000299a <freeproc>
    80002d14:	fd843783          	ld	a5,-40(s0)
    80002d18:	853e                	mv	a0,a5
    80002d1a:	ffffe097          	auipc	ra,0xffffe
    80002d1e:	5ca080e7          	jalr	1482(ra) # 800012e4 <release>
    80002d22:	57fd                	li	a5,-1
    80002d24:	a8f5                	j	80002e20 <fork+0x168>
    80002d26:	fe043783          	ld	a5,-32(s0)
    80002d2a:	67b8                	ld	a4,72(a5)
    80002d2c:	fd843783          	ld	a5,-40(s0)
    80002d30:	e7b8                	sd	a4,72(a5)
    80002d32:	fd843783          	ld	a5,-40(s0)
    80002d36:	fe043703          	ld	a4,-32(s0)
    80002d3a:	f398                	sd	a4,32(a5)
    80002d3c:	fe043783          	ld	a5,-32(s0)
    80002d40:	6fb8                	ld	a4,88(a5)
    80002d42:	fd843783          	ld	a5,-40(s0)
    80002d46:	6fbc                	ld	a5,88(a5)
    80002d48:	86be                	mv	a3,a5
    80002d4a:	12000793          	li	a5,288
    80002d4e:	863e                	mv	a2,a5
    80002d50:	85ba                	mv	a1,a4
    80002d52:	8536                	mv	a0,a3
    80002d54:	fffff097          	auipc	ra,0xfffff
    80002d58:	8b2080e7          	jalr	-1870(ra) # 80001606 <memcpy>
    80002d5c:	fd843783          	ld	a5,-40(s0)
    80002d60:	6fbc                	ld	a5,88(a5)
    80002d62:	0607b823          	sd	zero,112(a5)
    80002d66:	fe042623          	sw	zero,-20(s0)
    80002d6a:	a0a9                	j	80002db4 <fork+0xfc>
    80002d6c:	fe043703          	ld	a4,-32(s0)
    80002d70:	fec42783          	lw	a5,-20(s0)
    80002d74:	07e9                	addi	a5,a5,26
    80002d76:	078e                	slli	a5,a5,0x3
    80002d78:	97ba                	add	a5,a5,a4
    80002d7a:	639c                	ld	a5,0(a5)
    80002d7c:	c79d                	beqz	a5,80002daa <fork+0xf2>
    80002d7e:	fe043703          	ld	a4,-32(s0)
    80002d82:	fec42783          	lw	a5,-20(s0)
    80002d86:	07e9                	addi	a5,a5,26
    80002d88:	078e                	slli	a5,a5,0x3
    80002d8a:	97ba                	add	a5,a5,a4
    80002d8c:	639c                	ld	a5,0(a5)
    80002d8e:	853e                	mv	a0,a5
    80002d90:	00004097          	auipc	ra,0x4
    80002d94:	91c080e7          	jalr	-1764(ra) # 800066ac <filedup>
    80002d98:	86aa                	mv	a3,a0
    80002d9a:	fd843703          	ld	a4,-40(s0)
    80002d9e:	fec42783          	lw	a5,-20(s0)
    80002da2:	07e9                	addi	a5,a5,26
    80002da4:	078e                	slli	a5,a5,0x3
    80002da6:	97ba                	add	a5,a5,a4
    80002da8:	e394                	sd	a3,0(a5)
    80002daa:	fec42783          	lw	a5,-20(s0)
    80002dae:	2785                	addiw	a5,a5,1
    80002db0:	fef42623          	sw	a5,-20(s0)
    80002db4:	fec42783          	lw	a5,-20(s0)
    80002db8:	0007871b          	sext.w	a4,a5
    80002dbc:	47bd                	li	a5,15
    80002dbe:	fae7d7e3          	bge	a5,a4,80002d6c <fork+0xb4>
    80002dc2:	fe043783          	ld	a5,-32(s0)
    80002dc6:	1507b783          	ld	a5,336(a5)
    80002dca:	853e                	mv	a0,a5
    80002dcc:	00002097          	auipc	ra,0x2
    80002dd0:	1f8080e7          	jalr	504(ra) # 80004fc4 <idup>
    80002dd4:	872a                	mv	a4,a0
    80002dd6:	fd843783          	ld	a5,-40(s0)
    80002dda:	14e7b823          	sd	a4,336(a5)
    80002dde:	fd843783          	ld	a5,-40(s0)
    80002de2:	15878713          	addi	a4,a5,344
    80002de6:	fe043783          	ld	a5,-32(s0)
    80002dea:	15878793          	addi	a5,a5,344
    80002dee:	4641                	li	a2,16
    80002df0:	85be                	mv	a1,a5
    80002df2:	853a                	mv	a0,a4
    80002df4:	fffff097          	auipc	ra,0xfffff
    80002df8:	956080e7          	jalr	-1706(ra) # 8000174a <safestrcpy>
    80002dfc:	fd843783          	ld	a5,-40(s0)
    80002e00:	5f9c                	lw	a5,56(a5)
    80002e02:	fcf42a23          	sw	a5,-44(s0)
    80002e06:	fd843783          	ld	a5,-40(s0)
    80002e0a:	4709                	li	a4,2
    80002e0c:	cf98                	sw	a4,24(a5)
    80002e0e:	fd843783          	ld	a5,-40(s0)
    80002e12:	853e                	mv	a0,a5
    80002e14:	ffffe097          	auipc	ra,0xffffe
    80002e18:	4d0080e7          	jalr	1232(ra) # 800012e4 <release>
    80002e1c:	fd442783          	lw	a5,-44(s0)
    80002e20:	853e                	mv	a0,a5
    80002e22:	70a2                	ld	ra,40(sp)
    80002e24:	7402                	ld	s0,32(sp)
    80002e26:	6145                	addi	sp,sp,48
    80002e28:	8082                	ret

0000000080002e2a <reparent>:
    80002e2a:	7179                	addi	sp,sp,-48
    80002e2c:	f406                	sd	ra,40(sp)
    80002e2e:	f022                	sd	s0,32(sp)
    80002e30:	1800                	addi	s0,sp,48
    80002e32:	fca43c23          	sd	a0,-40(s0)
    80002e36:	00012797          	auipc	a5,0x12
    80002e3a:	86278793          	addi	a5,a5,-1950 # 80014698 <proc>
    80002e3e:	fef43423          	sd	a5,-24(s0)
    80002e42:	a0a1                	j	80002e8a <reparent+0x60>
    80002e44:	fe843783          	ld	a5,-24(s0)
    80002e48:	739c                	ld	a5,32(a5)
    80002e4a:	fd843703          	ld	a4,-40(s0)
    80002e4e:	02f71863          	bne	a4,a5,80002e7e <reparent+0x54>
    80002e52:	fe843783          	ld	a5,-24(s0)
    80002e56:	853e                	mv	a0,a5
    80002e58:	ffffe097          	auipc	ra,0xffffe
    80002e5c:	428080e7          	jalr	1064(ra) # 80001280 <acquire>
    80002e60:	00009797          	auipc	a5,0x9
    80002e64:	1b878793          	addi	a5,a5,440 # 8000c018 <initproc>
    80002e68:	6398                	ld	a4,0(a5)
    80002e6a:	fe843783          	ld	a5,-24(s0)
    80002e6e:	f398                	sd	a4,32(a5)
    80002e70:	fe843783          	ld	a5,-24(s0)
    80002e74:	853e                	mv	a0,a5
    80002e76:	ffffe097          	auipc	ra,0xffffe
    80002e7a:	46e080e7          	jalr	1134(ra) # 800012e4 <release>
    80002e7e:	fe843783          	ld	a5,-24(s0)
    80002e82:	16878793          	addi	a5,a5,360
    80002e86:	fef43423          	sd	a5,-24(s0)
    80002e8a:	fe843703          	ld	a4,-24(s0)
    80002e8e:	00017797          	auipc	a5,0x17
    80002e92:	20a78793          	addi	a5,a5,522 # 8001a098 <pid_lock>
    80002e96:	faf767e3          	bltu	a4,a5,80002e44 <reparent+0x1a>
    80002e9a:	0001                	nop
    80002e9c:	0001                	nop
    80002e9e:	70a2                	ld	ra,40(sp)
    80002ea0:	7402                	ld	s0,32(sp)
    80002ea2:	6145                	addi	sp,sp,48
    80002ea4:	8082                	ret

0000000080002ea6 <exit>:
    80002ea6:	7139                	addi	sp,sp,-64
    80002ea8:	fc06                	sd	ra,56(sp)
    80002eaa:	f822                	sd	s0,48(sp)
    80002eac:	0080                	addi	s0,sp,64
    80002eae:	87aa                	mv	a5,a0
    80002eb0:	fcf42623          	sw	a5,-52(s0)
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	936080e7          	jalr	-1738(ra) # 800027ea <myproc>
    80002ebc:	fea43023          	sd	a0,-32(s0)
    80002ec0:	00009797          	auipc	a5,0x9
    80002ec4:	15878793          	addi	a5,a5,344 # 8000c018 <initproc>
    80002ec8:	639c                	ld	a5,0(a5)
    80002eca:	fe043703          	ld	a4,-32(s0)
    80002ece:	00f71a63          	bne	a4,a5,80002ee2 <exit+0x3c>
    80002ed2:	00008517          	auipc	a0,0x8
    80002ed6:	30650513          	addi	a0,a0,774 # 8000b1d8 <etext+0x1d8>
    80002eda:	ffffe097          	auipc	ra,0xffffe
    80002ede:	d78080e7          	jalr	-648(ra) # 80000c52 <panic>
    80002ee2:	fe042623          	sw	zero,-20(s0)
    80002ee6:	a881                	j	80002f36 <exit+0x90>
    80002ee8:	fe043703          	ld	a4,-32(s0)
    80002eec:	fec42783          	lw	a5,-20(s0)
    80002ef0:	07e9                	addi	a5,a5,26
    80002ef2:	078e                	slli	a5,a5,0x3
    80002ef4:	97ba                	add	a5,a5,a4
    80002ef6:	639c                	ld	a5,0(a5)
    80002ef8:	cb95                	beqz	a5,80002f2c <exit+0x86>
    80002efa:	fe043703          	ld	a4,-32(s0)
    80002efe:	fec42783          	lw	a5,-20(s0)
    80002f02:	07e9                	addi	a5,a5,26
    80002f04:	078e                	slli	a5,a5,0x3
    80002f06:	97ba                	add	a5,a5,a4
    80002f08:	639c                	ld	a5,0(a5)
    80002f0a:	fcf43823          	sd	a5,-48(s0)
    80002f0e:	fd043503          	ld	a0,-48(s0)
    80002f12:	00004097          	auipc	ra,0x4
    80002f16:	800080e7          	jalr	-2048(ra) # 80006712 <fileclose>
    80002f1a:	fe043703          	ld	a4,-32(s0)
    80002f1e:	fec42783          	lw	a5,-20(s0)
    80002f22:	07e9                	addi	a5,a5,26
    80002f24:	078e                	slli	a5,a5,0x3
    80002f26:	97ba                	add	a5,a5,a4
    80002f28:	0007b023          	sd	zero,0(a5)
    80002f2c:	fec42783          	lw	a5,-20(s0)
    80002f30:	2785                	addiw	a5,a5,1
    80002f32:	fef42623          	sw	a5,-20(s0)
    80002f36:	fec42783          	lw	a5,-20(s0)
    80002f3a:	0007871b          	sext.w	a4,a5
    80002f3e:	47bd                	li	a5,15
    80002f40:	fae7d4e3          	bge	a5,a4,80002ee8 <exit+0x42>
    80002f44:	00003097          	auipc	ra,0x3
    80002f48:	134080e7          	jalr	308(ra) # 80006078 <begin_op>
    80002f4c:	fe043783          	ld	a5,-32(s0)
    80002f50:	1507b783          	ld	a5,336(a5)
    80002f54:	853e                	mv	a0,a5
    80002f56:	00002097          	auipc	ra,0x2
    80002f5a:	248080e7          	jalr	584(ra) # 8000519e <iput>
    80002f5e:	00003097          	auipc	ra,0x3
    80002f62:	1dc080e7          	jalr	476(ra) # 8000613a <end_op>
    80002f66:	fe043783          	ld	a5,-32(s0)
    80002f6a:	1407b823          	sd	zero,336(a5)
    80002f6e:	00009797          	auipc	a5,0x9
    80002f72:	0aa78793          	addi	a5,a5,170 # 8000c018 <initproc>
    80002f76:	639c                	ld	a5,0(a5)
    80002f78:	853e                	mv	a0,a5
    80002f7a:	ffffe097          	auipc	ra,0xffffe
    80002f7e:	306080e7          	jalr	774(ra) # 80001280 <acquire>
    80002f82:	00009797          	auipc	a5,0x9
    80002f86:	09678793          	addi	a5,a5,150 # 8000c018 <initproc>
    80002f8a:	639c                	ld	a5,0(a5)
    80002f8c:	853e                	mv	a0,a5
    80002f8e:	00000097          	auipc	ra,0x0
    80002f92:	546080e7          	jalr	1350(ra) # 800034d4 <wakeup1>
    80002f96:	00009797          	auipc	a5,0x9
    80002f9a:	08278793          	addi	a5,a5,130 # 8000c018 <initproc>
    80002f9e:	639c                	ld	a5,0(a5)
    80002fa0:	853e                	mv	a0,a5
    80002fa2:	ffffe097          	auipc	ra,0xffffe
    80002fa6:	342080e7          	jalr	834(ra) # 800012e4 <release>
    80002faa:	fe043783          	ld	a5,-32(s0)
    80002fae:	853e                	mv	a0,a5
    80002fb0:	ffffe097          	auipc	ra,0xffffe
    80002fb4:	2d0080e7          	jalr	720(ra) # 80001280 <acquire>
    80002fb8:	fe043783          	ld	a5,-32(s0)
    80002fbc:	739c                	ld	a5,32(a5)
    80002fbe:	fcf43c23          	sd	a5,-40(s0)
    80002fc2:	fe043783          	ld	a5,-32(s0)
    80002fc6:	853e                	mv	a0,a5
    80002fc8:	ffffe097          	auipc	ra,0xffffe
    80002fcc:	31c080e7          	jalr	796(ra) # 800012e4 <release>
    80002fd0:	fd843783          	ld	a5,-40(s0)
    80002fd4:	853e                	mv	a0,a5
    80002fd6:	ffffe097          	auipc	ra,0xffffe
    80002fda:	2aa080e7          	jalr	682(ra) # 80001280 <acquire>
    80002fde:	fe043783          	ld	a5,-32(s0)
    80002fe2:	853e                	mv	a0,a5
    80002fe4:	ffffe097          	auipc	ra,0xffffe
    80002fe8:	29c080e7          	jalr	668(ra) # 80001280 <acquire>
    80002fec:	fe043503          	ld	a0,-32(s0)
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	e3a080e7          	jalr	-454(ra) # 80002e2a <reparent>
    80002ff8:	fd843503          	ld	a0,-40(s0)
    80002ffc:	00000097          	auipc	ra,0x0
    80003000:	4d8080e7          	jalr	1240(ra) # 800034d4 <wakeup1>
    80003004:	fe043783          	ld	a5,-32(s0)
    80003008:	fcc42703          	lw	a4,-52(s0)
    8000300c:	dbd8                	sw	a4,52(a5)
    8000300e:	fe043783          	ld	a5,-32(s0)
    80003012:	4711                	li	a4,4
    80003014:	cf98                	sw	a4,24(a5)
    80003016:	fd843783          	ld	a5,-40(s0)
    8000301a:	853e                	mv	a0,a5
    8000301c:	ffffe097          	auipc	ra,0xffffe
    80003020:	2c8080e7          	jalr	712(ra) # 800012e4 <release>
    80003024:	00000097          	auipc	ra,0x0
    80003028:	21e080e7          	jalr	542(ra) # 80003242 <sched>
    8000302c:	00008517          	auipc	a0,0x8
    80003030:	1bc50513          	addi	a0,a0,444 # 8000b1e8 <etext+0x1e8>
    80003034:	ffffe097          	auipc	ra,0xffffe
    80003038:	c1e080e7          	jalr	-994(ra) # 80000c52 <panic>

000000008000303c <wait>:
    8000303c:	7139                	addi	sp,sp,-64
    8000303e:	fc06                	sd	ra,56(sp)
    80003040:	f822                	sd	s0,48(sp)
    80003042:	0080                	addi	s0,sp,64
    80003044:	fca43423          	sd	a0,-56(s0)
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	7a2080e7          	jalr	1954(ra) # 800027ea <myproc>
    80003050:	fca43c23          	sd	a0,-40(s0)
    80003054:	fd843783          	ld	a5,-40(s0)
    80003058:	853e                	mv	a0,a5
    8000305a:	ffffe097          	auipc	ra,0xffffe
    8000305e:	226080e7          	jalr	550(ra) # 80001280 <acquire>
    80003062:	fe042223          	sw	zero,-28(s0)
    80003066:	00011797          	auipc	a5,0x11
    8000306a:	63278793          	addi	a5,a5,1586 # 80014698 <proc>
    8000306e:	fef43423          	sd	a5,-24(s0)
    80003072:	a8c1                	j	80003142 <wait+0x106>
    80003074:	fe843783          	ld	a5,-24(s0)
    80003078:	739c                	ld	a5,32(a5)
    8000307a:	fd843703          	ld	a4,-40(s0)
    8000307e:	0af71c63          	bne	a4,a5,80003136 <wait+0xfa>
    80003082:	fe843783          	ld	a5,-24(s0)
    80003086:	853e                	mv	a0,a5
    80003088:	ffffe097          	auipc	ra,0xffffe
    8000308c:	1f8080e7          	jalr	504(ra) # 80001280 <acquire>
    80003090:	4785                	li	a5,1
    80003092:	fef42223          	sw	a5,-28(s0)
    80003096:	fe843783          	ld	a5,-24(s0)
    8000309a:	4f9c                	lw	a5,24(a5)
    8000309c:	873e                	mv	a4,a5
    8000309e:	4791                	li	a5,4
    800030a0:	08f71463          	bne	a4,a5,80003128 <wait+0xec>
    800030a4:	fe843783          	ld	a5,-24(s0)
    800030a8:	5f9c                	lw	a5,56(a5)
    800030aa:	fcf42a23          	sw	a5,-44(s0)
    800030ae:	fc843783          	ld	a5,-56(s0)
    800030b2:	c7a1                	beqz	a5,800030fa <wait+0xbe>
    800030b4:	fd843783          	ld	a5,-40(s0)
    800030b8:	6bb8                	ld	a4,80(a5)
    800030ba:	fe843783          	ld	a5,-24(s0)
    800030be:	03478793          	addi	a5,a5,52
    800030c2:	4691                	li	a3,4
    800030c4:	863e                	mv	a2,a5
    800030c6:	fc843583          	ld	a1,-56(s0)
    800030ca:	853a                	mv	a0,a4
    800030cc:	fffff097          	auipc	ra,0xfffff
    800030d0:	208080e7          	jalr	520(ra) # 800022d4 <copyout>
    800030d4:	87aa                	mv	a5,a0
    800030d6:	0207d263          	bgez	a5,800030fa <wait+0xbe>
    800030da:	fe843783          	ld	a5,-24(s0)
    800030de:	853e                	mv	a0,a5
    800030e0:	ffffe097          	auipc	ra,0xffffe
    800030e4:	204080e7          	jalr	516(ra) # 800012e4 <release>
    800030e8:	fd843783          	ld	a5,-40(s0)
    800030ec:	853e                	mv	a0,a5
    800030ee:	ffffe097          	auipc	ra,0xffffe
    800030f2:	1f6080e7          	jalr	502(ra) # 800012e4 <release>
    800030f6:	57fd                	li	a5,-1
    800030f8:	a841                	j	80003188 <wait+0x14c>
    800030fa:	fe843503          	ld	a0,-24(s0)
    800030fe:	00000097          	auipc	ra,0x0
    80003102:	89c080e7          	jalr	-1892(ra) # 8000299a <freeproc>
    80003106:	fe843783          	ld	a5,-24(s0)
    8000310a:	853e                	mv	a0,a5
    8000310c:	ffffe097          	auipc	ra,0xffffe
    80003110:	1d8080e7          	jalr	472(ra) # 800012e4 <release>
    80003114:	fd843783          	ld	a5,-40(s0)
    80003118:	853e                	mv	a0,a5
    8000311a:	ffffe097          	auipc	ra,0xffffe
    8000311e:	1ca080e7          	jalr	458(ra) # 800012e4 <release>
    80003122:	fd442783          	lw	a5,-44(s0)
    80003126:	a08d                	j	80003188 <wait+0x14c>
    80003128:	fe843783          	ld	a5,-24(s0)
    8000312c:	853e                	mv	a0,a5
    8000312e:	ffffe097          	auipc	ra,0xffffe
    80003132:	1b6080e7          	jalr	438(ra) # 800012e4 <release>
    80003136:	fe843783          	ld	a5,-24(s0)
    8000313a:	16878793          	addi	a5,a5,360
    8000313e:	fef43423          	sd	a5,-24(s0)
    80003142:	fe843703          	ld	a4,-24(s0)
    80003146:	00017797          	auipc	a5,0x17
    8000314a:	f5278793          	addi	a5,a5,-174 # 8001a098 <pid_lock>
    8000314e:	f2f763e3          	bltu	a4,a5,80003074 <wait+0x38>
    80003152:	fe442783          	lw	a5,-28(s0)
    80003156:	2781                	sext.w	a5,a5
    80003158:	c789                	beqz	a5,80003162 <wait+0x126>
    8000315a:	fd843783          	ld	a5,-40(s0)
    8000315e:	5b9c                	lw	a5,48(a5)
    80003160:	cb91                	beqz	a5,80003174 <wait+0x138>
    80003162:	fd843783          	ld	a5,-40(s0)
    80003166:	853e                	mv	a0,a5
    80003168:	ffffe097          	auipc	ra,0xffffe
    8000316c:	17c080e7          	jalr	380(ra) # 800012e4 <release>
    80003170:	57fd                	li	a5,-1
    80003172:	a819                	j	80003188 <wait+0x14c>
    80003174:	fd843783          	ld	a5,-40(s0)
    80003178:	85be                	mv	a1,a5
    8000317a:	fd843503          	ld	a0,-40(s0)
    8000317e:	00000097          	auipc	ra,0x0
    80003182:	240080e7          	jalr	576(ra) # 800033be <sleep>
    80003186:	bdf1                	j	80003062 <wait+0x26>
    80003188:	853e                	mv	a0,a5
    8000318a:	70e2                	ld	ra,56(sp)
    8000318c:	7442                	ld	s0,48(sp)
    8000318e:	6121                	addi	sp,sp,64
    80003190:	8082                	ret

0000000080003192 <scheduler>:
    80003192:	1101                	addi	sp,sp,-32
    80003194:	ec06                	sd	ra,24(sp)
    80003196:	e822                	sd	s0,16(sp)
    80003198:	1000                	addi	s0,sp,32
    8000319a:	fffff097          	auipc	ra,0xfffff
    8000319e:	616080e7          	jalr	1558(ra) # 800027b0 <mycpu>
    800031a2:	fea43023          	sd	a0,-32(s0)
    800031a6:	fe043783          	ld	a5,-32(s0)
    800031aa:	0007b023          	sd	zero,0(a5)
    800031ae:	fffff097          	auipc	ra,0xfffff
    800031b2:	404080e7          	jalr	1028(ra) # 800025b2 <intr_on>
    800031b6:	00011797          	auipc	a5,0x11
    800031ba:	4e278793          	addi	a5,a5,1250 # 80014698 <proc>
    800031be:	fef43423          	sd	a5,-24(s0)
    800031c2:	a0bd                	j	80003230 <scheduler+0x9e>
    800031c4:	fe843783          	ld	a5,-24(s0)
    800031c8:	853e                	mv	a0,a5
    800031ca:	ffffe097          	auipc	ra,0xffffe
    800031ce:	0b6080e7          	jalr	182(ra) # 80001280 <acquire>
    800031d2:	fe843783          	ld	a5,-24(s0)
    800031d6:	4f9c                	lw	a5,24(a5)
    800031d8:	873e                	mv	a4,a5
    800031da:	4789                	li	a5,2
    800031dc:	02f71d63          	bne	a4,a5,80003216 <scheduler+0x84>
    800031e0:	fe843783          	ld	a5,-24(s0)
    800031e4:	470d                	li	a4,3
    800031e6:	cf98                	sw	a4,24(a5)
    800031e8:	fe043783          	ld	a5,-32(s0)
    800031ec:	fe843703          	ld	a4,-24(s0)
    800031f0:	e398                	sd	a4,0(a5)
    800031f2:	fe043783          	ld	a5,-32(s0)
    800031f6:	00878713          	addi	a4,a5,8
    800031fa:	fe843783          	ld	a5,-24(s0)
    800031fe:	06078793          	addi	a5,a5,96
    80003202:	85be                	mv	a1,a5
    80003204:	853a                	mv	a0,a4
    80003206:	00000097          	auipc	ra,0x0
    8000320a:	594080e7          	jalr	1428(ra) # 8000379a <swtch>
    8000320e:	fe043783          	ld	a5,-32(s0)
    80003212:	0007b023          	sd	zero,0(a5)
    80003216:	fe843783          	ld	a5,-24(s0)
    8000321a:	853e                	mv	a0,a5
    8000321c:	ffffe097          	auipc	ra,0xffffe
    80003220:	0c8080e7          	jalr	200(ra) # 800012e4 <release>
    80003224:	fe843783          	ld	a5,-24(s0)
    80003228:	16878793          	addi	a5,a5,360
    8000322c:	fef43423          	sd	a5,-24(s0)
    80003230:	fe843703          	ld	a4,-24(s0)
    80003234:	00017797          	auipc	a5,0x17
    80003238:	e6478793          	addi	a5,a5,-412 # 8001a098 <pid_lock>
    8000323c:	f8f764e3          	bltu	a4,a5,800031c4 <scheduler+0x32>
    80003240:	b7bd                	j	800031ae <scheduler+0x1c>

0000000080003242 <sched>:
    80003242:	7179                	addi	sp,sp,-48
    80003244:	f406                	sd	ra,40(sp)
    80003246:	f022                	sd	s0,32(sp)
    80003248:	ec26                	sd	s1,24(sp)
    8000324a:	1800                	addi	s0,sp,48
    8000324c:	fffff097          	auipc	ra,0xfffff
    80003250:	59e080e7          	jalr	1438(ra) # 800027ea <myproc>
    80003254:	fca43c23          	sd	a0,-40(s0)
    80003258:	fd843783          	ld	a5,-40(s0)
    8000325c:	853e                	mv	a0,a5
    8000325e:	ffffe097          	auipc	ra,0xffffe
    80003262:	0dc080e7          	jalr	220(ra) # 8000133a <holding>
    80003266:	87aa                	mv	a5,a0
    80003268:	eb89                	bnez	a5,8000327a <sched+0x38>
    8000326a:	00008517          	auipc	a0,0x8
    8000326e:	f8e50513          	addi	a0,a0,-114 # 8000b1f8 <etext+0x1f8>
    80003272:	ffffe097          	auipc	ra,0xffffe
    80003276:	9e0080e7          	jalr	-1568(ra) # 80000c52 <panic>
    8000327a:	fffff097          	auipc	ra,0xfffff
    8000327e:	536080e7          	jalr	1334(ra) # 800027b0 <mycpu>
    80003282:	87aa                	mv	a5,a0
    80003284:	5fbc                	lw	a5,120(a5)
    80003286:	873e                	mv	a4,a5
    80003288:	4785                	li	a5,1
    8000328a:	00f70a63          	beq	a4,a5,8000329e <sched+0x5c>
    8000328e:	00008517          	auipc	a0,0x8
    80003292:	f7a50513          	addi	a0,a0,-134 # 8000b208 <etext+0x208>
    80003296:	ffffe097          	auipc	ra,0xffffe
    8000329a:	9bc080e7          	jalr	-1604(ra) # 80000c52 <panic>
    8000329e:	fd843783          	ld	a5,-40(s0)
    800032a2:	4f9c                	lw	a5,24(a5)
    800032a4:	873e                	mv	a4,a5
    800032a6:	478d                	li	a5,3
    800032a8:	00f71a63          	bne	a4,a5,800032bc <sched+0x7a>
    800032ac:	00008517          	auipc	a0,0x8
    800032b0:	f6c50513          	addi	a0,a0,-148 # 8000b218 <etext+0x218>
    800032b4:	ffffe097          	auipc	ra,0xffffe
    800032b8:	99e080e7          	jalr	-1634(ra) # 80000c52 <panic>
    800032bc:	fffff097          	auipc	ra,0xfffff
    800032c0:	320080e7          	jalr	800(ra) # 800025dc <intr_get>
    800032c4:	87aa                	mv	a5,a0
    800032c6:	cb89                	beqz	a5,800032d8 <sched+0x96>
    800032c8:	00008517          	auipc	a0,0x8
    800032cc:	f6050513          	addi	a0,a0,-160 # 8000b228 <etext+0x228>
    800032d0:	ffffe097          	auipc	ra,0xffffe
    800032d4:	982080e7          	jalr	-1662(ra) # 80000c52 <panic>
    800032d8:	fffff097          	auipc	ra,0xfffff
    800032dc:	4d8080e7          	jalr	1240(ra) # 800027b0 <mycpu>
    800032e0:	87aa                	mv	a5,a0
    800032e2:	5ffc                	lw	a5,124(a5)
    800032e4:	fcf42a23          	sw	a5,-44(s0)
    800032e8:	fd843783          	ld	a5,-40(s0)
    800032ec:	06078493          	addi	s1,a5,96
    800032f0:	fffff097          	auipc	ra,0xfffff
    800032f4:	4c0080e7          	jalr	1216(ra) # 800027b0 <mycpu>
    800032f8:	87aa                	mv	a5,a0
    800032fa:	07a1                	addi	a5,a5,8
    800032fc:	85be                	mv	a1,a5
    800032fe:	8526                	mv	a0,s1
    80003300:	00000097          	auipc	ra,0x0
    80003304:	49a080e7          	jalr	1178(ra) # 8000379a <swtch>
    80003308:	fffff097          	auipc	ra,0xfffff
    8000330c:	4a8080e7          	jalr	1192(ra) # 800027b0 <mycpu>
    80003310:	872a                	mv	a4,a0
    80003312:	fd442783          	lw	a5,-44(s0)
    80003316:	df7c                	sw	a5,124(a4)
    80003318:	0001                	nop
    8000331a:	70a2                	ld	ra,40(sp)
    8000331c:	7402                	ld	s0,32(sp)
    8000331e:	64e2                	ld	s1,24(sp)
    80003320:	6145                	addi	sp,sp,48
    80003322:	8082                	ret

0000000080003324 <yield>:
    80003324:	1101                	addi	sp,sp,-32
    80003326:	ec06                	sd	ra,24(sp)
    80003328:	e822                	sd	s0,16(sp)
    8000332a:	1000                	addi	s0,sp,32
    8000332c:	fffff097          	auipc	ra,0xfffff
    80003330:	4be080e7          	jalr	1214(ra) # 800027ea <myproc>
    80003334:	fea43423          	sd	a0,-24(s0)
    80003338:	fe843783          	ld	a5,-24(s0)
    8000333c:	853e                	mv	a0,a5
    8000333e:	ffffe097          	auipc	ra,0xffffe
    80003342:	f42080e7          	jalr	-190(ra) # 80001280 <acquire>
    80003346:	fe843783          	ld	a5,-24(s0)
    8000334a:	4709                	li	a4,2
    8000334c:	cf98                	sw	a4,24(a5)
    8000334e:	00000097          	auipc	ra,0x0
    80003352:	ef4080e7          	jalr	-268(ra) # 80003242 <sched>
    80003356:	fe843783          	ld	a5,-24(s0)
    8000335a:	853e                	mv	a0,a5
    8000335c:	ffffe097          	auipc	ra,0xffffe
    80003360:	f88080e7          	jalr	-120(ra) # 800012e4 <release>
    80003364:	0001                	nop
    80003366:	60e2                	ld	ra,24(sp)
    80003368:	6442                	ld	s0,16(sp)
    8000336a:	6105                	addi	sp,sp,32
    8000336c:	8082                	ret

000000008000336e <forkret>:
    8000336e:	1141                	addi	sp,sp,-16
    80003370:	e406                	sd	ra,8(sp)
    80003372:	e022                	sd	s0,0(sp)
    80003374:	0800                	addi	s0,sp,16
    80003376:	fffff097          	auipc	ra,0xfffff
    8000337a:	474080e7          	jalr	1140(ra) # 800027ea <myproc>
    8000337e:	87aa                	mv	a5,a0
    80003380:	853e                	mv	a0,a5
    80003382:	ffffe097          	auipc	ra,0xffffe
    80003386:	f62080e7          	jalr	-158(ra) # 800012e4 <release>
    8000338a:	00008797          	auipc	a5,0x8
    8000338e:	3ca78793          	addi	a5,a5,970 # 8000b754 <first.1>
    80003392:	439c                	lw	a5,0(a5)
    80003394:	cf81                	beqz	a5,800033ac <forkret+0x3e>
    80003396:	00008797          	auipc	a5,0x8
    8000339a:	3be78793          	addi	a5,a5,958 # 8000b754 <first.1>
    8000339e:	0007a023          	sw	zero,0(a5)
    800033a2:	4505                	li	a0,1
    800033a4:	00001097          	auipc	ra,0x1
    800033a8:	4fa080e7          	jalr	1274(ra) # 8000489e <fsinit>
    800033ac:	00000097          	auipc	ra,0x0
    800033b0:	78c080e7          	jalr	1932(ra) # 80003b38 <usertrapret>
    800033b4:	0001                	nop
    800033b6:	60a2                	ld	ra,8(sp)
    800033b8:	6402                	ld	s0,0(sp)
    800033ba:	0141                	addi	sp,sp,16
    800033bc:	8082                	ret

00000000800033be <sleep>:
    800033be:	7179                	addi	sp,sp,-48
    800033c0:	f406                	sd	ra,40(sp)
    800033c2:	f022                	sd	s0,32(sp)
    800033c4:	1800                	addi	s0,sp,48
    800033c6:	fca43c23          	sd	a0,-40(s0)
    800033ca:	fcb43823          	sd	a1,-48(s0)
    800033ce:	fffff097          	auipc	ra,0xfffff
    800033d2:	41c080e7          	jalr	1052(ra) # 800027ea <myproc>
    800033d6:	fea43423          	sd	a0,-24(s0)
    800033da:	fe843783          	ld	a5,-24(s0)
    800033de:	fd043703          	ld	a4,-48(s0)
    800033e2:	00f70f63          	beq	a4,a5,80003400 <sleep+0x42>
    800033e6:	fe843783          	ld	a5,-24(s0)
    800033ea:	853e                	mv	a0,a5
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	e94080e7          	jalr	-364(ra) # 80001280 <acquire>
    800033f4:	fd043503          	ld	a0,-48(s0)
    800033f8:	ffffe097          	auipc	ra,0xffffe
    800033fc:	eec080e7          	jalr	-276(ra) # 800012e4 <release>
    80003400:	fe843783          	ld	a5,-24(s0)
    80003404:	fd843703          	ld	a4,-40(s0)
    80003408:	f798                	sd	a4,40(a5)
    8000340a:	fe843783          	ld	a5,-24(s0)
    8000340e:	4705                	li	a4,1
    80003410:	cf98                	sw	a4,24(a5)
    80003412:	00000097          	auipc	ra,0x0
    80003416:	e30080e7          	jalr	-464(ra) # 80003242 <sched>
    8000341a:	fe843783          	ld	a5,-24(s0)
    8000341e:	0207b423          	sd	zero,40(a5)
    80003422:	fe843783          	ld	a5,-24(s0)
    80003426:	fd043703          	ld	a4,-48(s0)
    8000342a:	00f70f63          	beq	a4,a5,80003448 <sleep+0x8a>
    8000342e:	fe843783          	ld	a5,-24(s0)
    80003432:	853e                	mv	a0,a5
    80003434:	ffffe097          	auipc	ra,0xffffe
    80003438:	eb0080e7          	jalr	-336(ra) # 800012e4 <release>
    8000343c:	fd043503          	ld	a0,-48(s0)
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	e40080e7          	jalr	-448(ra) # 80001280 <acquire>
    80003448:	0001                	nop
    8000344a:	70a2                	ld	ra,40(sp)
    8000344c:	7402                	ld	s0,32(sp)
    8000344e:	6145                	addi	sp,sp,48
    80003450:	8082                	ret

0000000080003452 <wakeup>:
    80003452:	7179                	addi	sp,sp,-48
    80003454:	f406                	sd	ra,40(sp)
    80003456:	f022                	sd	s0,32(sp)
    80003458:	1800                	addi	s0,sp,48
    8000345a:	fca43c23          	sd	a0,-40(s0)
    8000345e:	00011797          	auipc	a5,0x11
    80003462:	23a78793          	addi	a5,a5,570 # 80014698 <proc>
    80003466:	fef43423          	sd	a5,-24(s0)
    8000346a:	a0b9                	j	800034b8 <wakeup+0x66>
    8000346c:	fe843783          	ld	a5,-24(s0)
    80003470:	853e                	mv	a0,a5
    80003472:	ffffe097          	auipc	ra,0xffffe
    80003476:	e0e080e7          	jalr	-498(ra) # 80001280 <acquire>
    8000347a:	fe843783          	ld	a5,-24(s0)
    8000347e:	4f9c                	lw	a5,24(a5)
    80003480:	873e                	mv	a4,a5
    80003482:	4785                	li	a5,1
    80003484:	00f71d63          	bne	a4,a5,8000349e <wakeup+0x4c>
    80003488:	fe843783          	ld	a5,-24(s0)
    8000348c:	779c                	ld	a5,40(a5)
    8000348e:	fd843703          	ld	a4,-40(s0)
    80003492:	00f71663          	bne	a4,a5,8000349e <wakeup+0x4c>
    80003496:	fe843783          	ld	a5,-24(s0)
    8000349a:	4709                	li	a4,2
    8000349c:	cf98                	sw	a4,24(a5)
    8000349e:	fe843783          	ld	a5,-24(s0)
    800034a2:	853e                	mv	a0,a5
    800034a4:	ffffe097          	auipc	ra,0xffffe
    800034a8:	e40080e7          	jalr	-448(ra) # 800012e4 <release>
    800034ac:	fe843783          	ld	a5,-24(s0)
    800034b0:	16878793          	addi	a5,a5,360
    800034b4:	fef43423          	sd	a5,-24(s0)
    800034b8:	fe843703          	ld	a4,-24(s0)
    800034bc:	00017797          	auipc	a5,0x17
    800034c0:	bdc78793          	addi	a5,a5,-1060 # 8001a098 <pid_lock>
    800034c4:	faf764e3          	bltu	a4,a5,8000346c <wakeup+0x1a>
    800034c8:	0001                	nop
    800034ca:	0001                	nop
    800034cc:	70a2                	ld	ra,40(sp)
    800034ce:	7402                	ld	s0,32(sp)
    800034d0:	6145                	addi	sp,sp,48
    800034d2:	8082                	ret

00000000800034d4 <wakeup1>:
    800034d4:	1101                	addi	sp,sp,-32
    800034d6:	ec06                	sd	ra,24(sp)
    800034d8:	e822                	sd	s0,16(sp)
    800034da:	1000                	addi	s0,sp,32
    800034dc:	fea43423          	sd	a0,-24(s0)
    800034e0:	fe843783          	ld	a5,-24(s0)
    800034e4:	853e                	mv	a0,a5
    800034e6:	ffffe097          	auipc	ra,0xffffe
    800034ea:	e54080e7          	jalr	-428(ra) # 8000133a <holding>
    800034ee:	87aa                	mv	a5,a0
    800034f0:	eb89                	bnez	a5,80003502 <wakeup1+0x2e>
    800034f2:	00008517          	auipc	a0,0x8
    800034f6:	d4e50513          	addi	a0,a0,-690 # 8000b240 <etext+0x240>
    800034fa:	ffffd097          	auipc	ra,0xffffd
    800034fe:	758080e7          	jalr	1880(ra) # 80000c52 <panic>
    80003502:	fe843783          	ld	a5,-24(s0)
    80003506:	779c                	ld	a5,40(a5)
    80003508:	fe843703          	ld	a4,-24(s0)
    8000350c:	00f71d63          	bne	a4,a5,80003526 <wakeup1+0x52>
    80003510:	fe843783          	ld	a5,-24(s0)
    80003514:	4f9c                	lw	a5,24(a5)
    80003516:	873e                	mv	a4,a5
    80003518:	4785                	li	a5,1
    8000351a:	00f71663          	bne	a4,a5,80003526 <wakeup1+0x52>
    8000351e:	fe843783          	ld	a5,-24(s0)
    80003522:	4709                	li	a4,2
    80003524:	cf98                	sw	a4,24(a5)
    80003526:	0001                	nop
    80003528:	60e2                	ld	ra,24(sp)
    8000352a:	6442                	ld	s0,16(sp)
    8000352c:	6105                	addi	sp,sp,32
    8000352e:	8082                	ret

0000000080003530 <kill>:
    80003530:	7179                	addi	sp,sp,-48
    80003532:	f406                	sd	ra,40(sp)
    80003534:	f022                	sd	s0,32(sp)
    80003536:	1800                	addi	s0,sp,48
    80003538:	87aa                	mv	a5,a0
    8000353a:	fcf42e23          	sw	a5,-36(s0)
    8000353e:	00011797          	auipc	a5,0x11
    80003542:	15a78793          	addi	a5,a5,346 # 80014698 <proc>
    80003546:	fef43423          	sd	a5,-24(s0)
    8000354a:	a0ad                	j	800035b4 <kill+0x84>
    8000354c:	fe843783          	ld	a5,-24(s0)
    80003550:	853e                	mv	a0,a5
    80003552:	ffffe097          	auipc	ra,0xffffe
    80003556:	d2e080e7          	jalr	-722(ra) # 80001280 <acquire>
    8000355a:	fe843783          	ld	a5,-24(s0)
    8000355e:	5f98                	lw	a4,56(a5)
    80003560:	fdc42783          	lw	a5,-36(s0)
    80003564:	2781                	sext.w	a5,a5
    80003566:	02e79a63          	bne	a5,a4,8000359a <kill+0x6a>
    8000356a:	fe843783          	ld	a5,-24(s0)
    8000356e:	4705                	li	a4,1
    80003570:	db98                	sw	a4,48(a5)
    80003572:	fe843783          	ld	a5,-24(s0)
    80003576:	4f9c                	lw	a5,24(a5)
    80003578:	873e                	mv	a4,a5
    8000357a:	4785                	li	a5,1
    8000357c:	00f71663          	bne	a4,a5,80003588 <kill+0x58>
    80003580:	fe843783          	ld	a5,-24(s0)
    80003584:	4709                	li	a4,2
    80003586:	cf98                	sw	a4,24(a5)
    80003588:	fe843783          	ld	a5,-24(s0)
    8000358c:	853e                	mv	a0,a5
    8000358e:	ffffe097          	auipc	ra,0xffffe
    80003592:	d56080e7          	jalr	-682(ra) # 800012e4 <release>
    80003596:	4781                	li	a5,0
    80003598:	a03d                	j	800035c6 <kill+0x96>
    8000359a:	fe843783          	ld	a5,-24(s0)
    8000359e:	853e                	mv	a0,a5
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	d44080e7          	jalr	-700(ra) # 800012e4 <release>
    800035a8:	fe843783          	ld	a5,-24(s0)
    800035ac:	16878793          	addi	a5,a5,360
    800035b0:	fef43423          	sd	a5,-24(s0)
    800035b4:	fe843703          	ld	a4,-24(s0)
    800035b8:	00017797          	auipc	a5,0x17
    800035bc:	ae078793          	addi	a5,a5,-1312 # 8001a098 <pid_lock>
    800035c0:	f8f766e3          	bltu	a4,a5,8000354c <kill+0x1c>
    800035c4:	57fd                	li	a5,-1
    800035c6:	853e                	mv	a0,a5
    800035c8:	70a2                	ld	ra,40(sp)
    800035ca:	7402                	ld	s0,32(sp)
    800035cc:	6145                	addi	sp,sp,48
    800035ce:	8082                	ret

00000000800035d0 <either_copyout>:
    800035d0:	7139                	addi	sp,sp,-64
    800035d2:	fc06                	sd	ra,56(sp)
    800035d4:	f822                	sd	s0,48(sp)
    800035d6:	0080                	addi	s0,sp,64
    800035d8:	87aa                	mv	a5,a0
    800035da:	fcb43823          	sd	a1,-48(s0)
    800035de:	fcc43423          	sd	a2,-56(s0)
    800035e2:	fcd43023          	sd	a3,-64(s0)
    800035e6:	fcf42e23          	sw	a5,-36(s0)
    800035ea:	fffff097          	auipc	ra,0xfffff
    800035ee:	200080e7          	jalr	512(ra) # 800027ea <myproc>
    800035f2:	fea43423          	sd	a0,-24(s0)
    800035f6:	fdc42783          	lw	a5,-36(s0)
    800035fa:	2781                	sext.w	a5,a5
    800035fc:	c38d                	beqz	a5,8000361e <either_copyout+0x4e>
    800035fe:	fe843783          	ld	a5,-24(s0)
    80003602:	6bbc                	ld	a5,80(a5)
    80003604:	fc043683          	ld	a3,-64(s0)
    80003608:	fc843603          	ld	a2,-56(s0)
    8000360c:	fd043583          	ld	a1,-48(s0)
    80003610:	853e                	mv	a0,a5
    80003612:	fffff097          	auipc	ra,0xfffff
    80003616:	cc2080e7          	jalr	-830(ra) # 800022d4 <copyout>
    8000361a:	87aa                	mv	a5,a0
    8000361c:	a839                	j	8000363a <either_copyout+0x6a>
    8000361e:	fd043783          	ld	a5,-48(s0)
    80003622:	fc043703          	ld	a4,-64(s0)
    80003626:	2701                	sext.w	a4,a4
    80003628:	863a                	mv	a2,a4
    8000362a:	fc843583          	ld	a1,-56(s0)
    8000362e:	853e                	mv	a0,a5
    80003630:	ffffe097          	auipc	ra,0xffffe
    80003634:	f08080e7          	jalr	-248(ra) # 80001538 <memmove>
    80003638:	4781                	li	a5,0
    8000363a:	853e                	mv	a0,a5
    8000363c:	70e2                	ld	ra,56(sp)
    8000363e:	7442                	ld	s0,48(sp)
    80003640:	6121                	addi	sp,sp,64
    80003642:	8082                	ret

0000000080003644 <either_copyin>:
    80003644:	7139                	addi	sp,sp,-64
    80003646:	fc06                	sd	ra,56(sp)
    80003648:	f822                	sd	s0,48(sp)
    8000364a:	0080                	addi	s0,sp,64
    8000364c:	fca43c23          	sd	a0,-40(s0)
    80003650:	87ae                	mv	a5,a1
    80003652:	fcc43423          	sd	a2,-56(s0)
    80003656:	fcd43023          	sd	a3,-64(s0)
    8000365a:	fcf42a23          	sw	a5,-44(s0)
    8000365e:	fffff097          	auipc	ra,0xfffff
    80003662:	18c080e7          	jalr	396(ra) # 800027ea <myproc>
    80003666:	fea43423          	sd	a0,-24(s0)
    8000366a:	fd442783          	lw	a5,-44(s0)
    8000366e:	2781                	sext.w	a5,a5
    80003670:	c38d                	beqz	a5,80003692 <either_copyin+0x4e>
    80003672:	fe843783          	ld	a5,-24(s0)
    80003676:	6bbc                	ld	a5,80(a5)
    80003678:	fc043683          	ld	a3,-64(s0)
    8000367c:	fc843603          	ld	a2,-56(s0)
    80003680:	fd843583          	ld	a1,-40(s0)
    80003684:	853e                	mv	a0,a5
    80003686:	fffff097          	auipc	ra,0xfffff
    8000368a:	d1c080e7          	jalr	-740(ra) # 800023a2 <copyin>
    8000368e:	87aa                	mv	a5,a0
    80003690:	a839                	j	800036ae <either_copyin+0x6a>
    80003692:	fc843783          	ld	a5,-56(s0)
    80003696:	fc043703          	ld	a4,-64(s0)
    8000369a:	2701                	sext.w	a4,a4
    8000369c:	863a                	mv	a2,a4
    8000369e:	85be                	mv	a1,a5
    800036a0:	fd843503          	ld	a0,-40(s0)
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	e94080e7          	jalr	-364(ra) # 80001538 <memmove>
    800036ac:	4781                	li	a5,0
    800036ae:	853e                	mv	a0,a5
    800036b0:	70e2                	ld	ra,56(sp)
    800036b2:	7442                	ld	s0,48(sp)
    800036b4:	6121                	addi	sp,sp,64
    800036b6:	8082                	ret

00000000800036b8 <procdump>:
    800036b8:	1101                	addi	sp,sp,-32
    800036ba:	ec06                	sd	ra,24(sp)
    800036bc:	e822                	sd	s0,16(sp)
    800036be:	1000                	addi	s0,sp,32
    800036c0:	00008517          	auipc	a0,0x8
    800036c4:	b8850513          	addi	a0,a0,-1144 # 8000b248 <etext+0x248>
    800036c8:	ffffd097          	auipc	ra,0xffffd
    800036cc:	334080e7          	jalr	820(ra) # 800009fc <printf>
    800036d0:	00011797          	auipc	a5,0x11
    800036d4:	fc878793          	addi	a5,a5,-56 # 80014698 <proc>
    800036d8:	fef43423          	sd	a5,-24(s0)
    800036dc:	a04d                	j	8000377e <procdump+0xc6>
    800036de:	fe843783          	ld	a5,-24(s0)
    800036e2:	4f9c                	lw	a5,24(a5)
    800036e4:	c7d1                	beqz	a5,80003770 <procdump+0xb8>
    800036e6:	fe843783          	ld	a5,-24(s0)
    800036ea:	4f9c                	lw	a5,24(a5)
    800036ec:	873e                	mv	a4,a5
    800036ee:	4791                	li	a5,4
    800036f0:	02e7ee63          	bltu	a5,a4,8000372c <procdump+0x74>
    800036f4:	fe843783          	ld	a5,-24(s0)
    800036f8:	4f9c                	lw	a5,24(a5)
    800036fa:	00008717          	auipc	a4,0x8
    800036fe:	0b670713          	addi	a4,a4,182 # 8000b7b0 <states.0>
    80003702:	1782                	slli	a5,a5,0x20
    80003704:	9381                	srli	a5,a5,0x20
    80003706:	078e                	slli	a5,a5,0x3
    80003708:	97ba                	add	a5,a5,a4
    8000370a:	639c                	ld	a5,0(a5)
    8000370c:	c385                	beqz	a5,8000372c <procdump+0x74>
    8000370e:	fe843783          	ld	a5,-24(s0)
    80003712:	4f9c                	lw	a5,24(a5)
    80003714:	00008717          	auipc	a4,0x8
    80003718:	09c70713          	addi	a4,a4,156 # 8000b7b0 <states.0>
    8000371c:	1782                	slli	a5,a5,0x20
    8000371e:	9381                	srli	a5,a5,0x20
    80003720:	078e                	slli	a5,a5,0x3
    80003722:	97ba                	add	a5,a5,a4
    80003724:	639c                	ld	a5,0(a5)
    80003726:	fef43023          	sd	a5,-32(s0)
    8000372a:	a039                	j	80003738 <procdump+0x80>
    8000372c:	00008797          	auipc	a5,0x8
    80003730:	b2478793          	addi	a5,a5,-1244 # 8000b250 <etext+0x250>
    80003734:	fef43023          	sd	a5,-32(s0)
    80003738:	fe843783          	ld	a5,-24(s0)
    8000373c:	5f98                	lw	a4,56(a5)
    8000373e:	fe843783          	ld	a5,-24(s0)
    80003742:	15878793          	addi	a5,a5,344
    80003746:	86be                	mv	a3,a5
    80003748:	fe043603          	ld	a2,-32(s0)
    8000374c:	85ba                	mv	a1,a4
    8000374e:	00008517          	auipc	a0,0x8
    80003752:	b0a50513          	addi	a0,a0,-1270 # 8000b258 <etext+0x258>
    80003756:	ffffd097          	auipc	ra,0xffffd
    8000375a:	2a6080e7          	jalr	678(ra) # 800009fc <printf>
    8000375e:	00008517          	auipc	a0,0x8
    80003762:	aea50513          	addi	a0,a0,-1302 # 8000b248 <etext+0x248>
    80003766:	ffffd097          	auipc	ra,0xffffd
    8000376a:	296080e7          	jalr	662(ra) # 800009fc <printf>
    8000376e:	a011                	j	80003772 <procdump+0xba>
    80003770:	0001                	nop
    80003772:	fe843783          	ld	a5,-24(s0)
    80003776:	16878793          	addi	a5,a5,360
    8000377a:	fef43423          	sd	a5,-24(s0)
    8000377e:	fe843703          	ld	a4,-24(s0)
    80003782:	00017797          	auipc	a5,0x17
    80003786:	91678793          	addi	a5,a5,-1770 # 8001a098 <pid_lock>
    8000378a:	f4f76ae3          	bltu	a4,a5,800036de <procdump+0x26>
    8000378e:	0001                	nop
    80003790:	0001                	nop
    80003792:	60e2                	ld	ra,24(sp)
    80003794:	6442                	ld	s0,16(sp)
    80003796:	6105                	addi	sp,sp,32
    80003798:	8082                	ret

000000008000379a <swtch>:
    8000379a:	00153023          	sd	ra,0(a0)
    8000379e:	00253423          	sd	sp,8(a0)
    800037a2:	e900                	sd	s0,16(a0)
    800037a4:	ed04                	sd	s1,24(a0)
    800037a6:	03253023          	sd	s2,32(a0)
    800037aa:	03353423          	sd	s3,40(a0)
    800037ae:	03453823          	sd	s4,48(a0)
    800037b2:	03553c23          	sd	s5,56(a0)
    800037b6:	05653023          	sd	s6,64(a0)
    800037ba:	05753423          	sd	s7,72(a0)
    800037be:	05853823          	sd	s8,80(a0)
    800037c2:	05953c23          	sd	s9,88(a0)
    800037c6:	07a53023          	sd	s10,96(a0)
    800037ca:	07b53423          	sd	s11,104(a0)
    800037ce:	0005b083          	ld	ra,0(a1)
    800037d2:	0085b103          	ld	sp,8(a1)
    800037d6:	6980                	ld	s0,16(a1)
    800037d8:	6d84                	ld	s1,24(a1)
    800037da:	0205b903          	ld	s2,32(a1)
    800037de:	0285b983          	ld	s3,40(a1)
    800037e2:	0305ba03          	ld	s4,48(a1)
    800037e6:	0385ba83          	ld	s5,56(a1)
    800037ea:	0405bb03          	ld	s6,64(a1)
    800037ee:	0485bb83          	ld	s7,72(a1)
    800037f2:	0505bc03          	ld	s8,80(a1)
    800037f6:	0585bc83          	ld	s9,88(a1)
    800037fa:	0605bd03          	ld	s10,96(a1)
    800037fe:	0685bd83          	ld	s11,104(a1)
    80003802:	8082                	ret

0000000080003804 <r_sstatus>:
    80003804:	1101                	addi	sp,sp,-32
    80003806:	ec22                	sd	s0,24(sp)
    80003808:	1000                	addi	s0,sp,32
    8000380a:	100027f3          	csrr	a5,sstatus
    8000380e:	fef43423          	sd	a5,-24(s0)
    80003812:	fe843783          	ld	a5,-24(s0)
    80003816:	853e                	mv	a0,a5
    80003818:	6462                	ld	s0,24(sp)
    8000381a:	6105                	addi	sp,sp,32
    8000381c:	8082                	ret

000000008000381e <w_sstatus>:
    8000381e:	1101                	addi	sp,sp,-32
    80003820:	ec22                	sd	s0,24(sp)
    80003822:	1000                	addi	s0,sp,32
    80003824:	fea43423          	sd	a0,-24(s0)
    80003828:	fe843783          	ld	a5,-24(s0)
    8000382c:	10079073          	csrw	sstatus,a5
    80003830:	0001                	nop
    80003832:	6462                	ld	s0,24(sp)
    80003834:	6105                	addi	sp,sp,32
    80003836:	8082                	ret

0000000080003838 <r_sip>:
    80003838:	1101                	addi	sp,sp,-32
    8000383a:	ec22                	sd	s0,24(sp)
    8000383c:	1000                	addi	s0,sp,32
    8000383e:	144027f3          	csrr	a5,sip
    80003842:	fef43423          	sd	a5,-24(s0)
    80003846:	fe843783          	ld	a5,-24(s0)
    8000384a:	853e                	mv	a0,a5
    8000384c:	6462                	ld	s0,24(sp)
    8000384e:	6105                	addi	sp,sp,32
    80003850:	8082                	ret

0000000080003852 <w_sip>:
    80003852:	1101                	addi	sp,sp,-32
    80003854:	ec22                	sd	s0,24(sp)
    80003856:	1000                	addi	s0,sp,32
    80003858:	fea43423          	sd	a0,-24(s0)
    8000385c:	fe843783          	ld	a5,-24(s0)
    80003860:	14479073          	csrw	sip,a5
    80003864:	0001                	nop
    80003866:	6462                	ld	s0,24(sp)
    80003868:	6105                	addi	sp,sp,32
    8000386a:	8082                	ret

000000008000386c <w_sepc>:
    8000386c:	1101                	addi	sp,sp,-32
    8000386e:	ec22                	sd	s0,24(sp)
    80003870:	1000                	addi	s0,sp,32
    80003872:	fea43423          	sd	a0,-24(s0)
    80003876:	fe843783          	ld	a5,-24(s0)
    8000387a:	14179073          	csrw	sepc,a5
    8000387e:	0001                	nop
    80003880:	6462                	ld	s0,24(sp)
    80003882:	6105                	addi	sp,sp,32
    80003884:	8082                	ret

0000000080003886 <r_sepc>:
    80003886:	1101                	addi	sp,sp,-32
    80003888:	ec22                	sd	s0,24(sp)
    8000388a:	1000                	addi	s0,sp,32
    8000388c:	141027f3          	csrr	a5,sepc
    80003890:	fef43423          	sd	a5,-24(s0)
    80003894:	fe843783          	ld	a5,-24(s0)
    80003898:	853e                	mv	a0,a5
    8000389a:	6462                	ld	s0,24(sp)
    8000389c:	6105                	addi	sp,sp,32
    8000389e:	8082                	ret

00000000800038a0 <w_stvec>:
    800038a0:	1101                	addi	sp,sp,-32
    800038a2:	ec22                	sd	s0,24(sp)
    800038a4:	1000                	addi	s0,sp,32
    800038a6:	fea43423          	sd	a0,-24(s0)
    800038aa:	fe843783          	ld	a5,-24(s0)
    800038ae:	10579073          	csrw	stvec,a5
    800038b2:	0001                	nop
    800038b4:	6462                	ld	s0,24(sp)
    800038b6:	6105                	addi	sp,sp,32
    800038b8:	8082                	ret

00000000800038ba <r_satp>:
    800038ba:	1101                	addi	sp,sp,-32
    800038bc:	ec22                	sd	s0,24(sp)
    800038be:	1000                	addi	s0,sp,32
    800038c0:	180027f3          	csrr	a5,satp
    800038c4:	fef43423          	sd	a5,-24(s0)
    800038c8:	fe843783          	ld	a5,-24(s0)
    800038cc:	853e                	mv	a0,a5
    800038ce:	6462                	ld	s0,24(sp)
    800038d0:	6105                	addi	sp,sp,32
    800038d2:	8082                	ret

00000000800038d4 <r_scause>:
    800038d4:	1101                	addi	sp,sp,-32
    800038d6:	ec22                	sd	s0,24(sp)
    800038d8:	1000                	addi	s0,sp,32
    800038da:	142027f3          	csrr	a5,scause
    800038de:	fef43423          	sd	a5,-24(s0)
    800038e2:	fe843783          	ld	a5,-24(s0)
    800038e6:	853e                	mv	a0,a5
    800038e8:	6462                	ld	s0,24(sp)
    800038ea:	6105                	addi	sp,sp,32
    800038ec:	8082                	ret

00000000800038ee <r_stval>:
    800038ee:	1101                	addi	sp,sp,-32
    800038f0:	ec22                	sd	s0,24(sp)
    800038f2:	1000                	addi	s0,sp,32
    800038f4:	143027f3          	csrr	a5,stval
    800038f8:	fef43423          	sd	a5,-24(s0)
    800038fc:	fe843783          	ld	a5,-24(s0)
    80003900:	853e                	mv	a0,a5
    80003902:	6462                	ld	s0,24(sp)
    80003904:	6105                	addi	sp,sp,32
    80003906:	8082                	ret

0000000080003908 <intr_on>:
    80003908:	1141                	addi	sp,sp,-16
    8000390a:	e406                	sd	ra,8(sp)
    8000390c:	e022                	sd	s0,0(sp)
    8000390e:	0800                	addi	s0,sp,16
    80003910:	00000097          	auipc	ra,0x0
    80003914:	ef4080e7          	jalr	-268(ra) # 80003804 <r_sstatus>
    80003918:	87aa                	mv	a5,a0
    8000391a:	0027e793          	ori	a5,a5,2
    8000391e:	853e                	mv	a0,a5
    80003920:	00000097          	auipc	ra,0x0
    80003924:	efe080e7          	jalr	-258(ra) # 8000381e <w_sstatus>
    80003928:	0001                	nop
    8000392a:	60a2                	ld	ra,8(sp)
    8000392c:	6402                	ld	s0,0(sp)
    8000392e:	0141                	addi	sp,sp,16
    80003930:	8082                	ret

0000000080003932 <intr_off>:
    80003932:	1141                	addi	sp,sp,-16
    80003934:	e406                	sd	ra,8(sp)
    80003936:	e022                	sd	s0,0(sp)
    80003938:	0800                	addi	s0,sp,16
    8000393a:	00000097          	auipc	ra,0x0
    8000393e:	eca080e7          	jalr	-310(ra) # 80003804 <r_sstatus>
    80003942:	87aa                	mv	a5,a0
    80003944:	9bf5                	andi	a5,a5,-3
    80003946:	853e                	mv	a0,a5
    80003948:	00000097          	auipc	ra,0x0
    8000394c:	ed6080e7          	jalr	-298(ra) # 8000381e <w_sstatus>
    80003950:	0001                	nop
    80003952:	60a2                	ld	ra,8(sp)
    80003954:	6402                	ld	s0,0(sp)
    80003956:	0141                	addi	sp,sp,16
    80003958:	8082                	ret

000000008000395a <intr_get>:
    8000395a:	1101                	addi	sp,sp,-32
    8000395c:	ec06                	sd	ra,24(sp)
    8000395e:	e822                	sd	s0,16(sp)
    80003960:	1000                	addi	s0,sp,32
    80003962:	00000097          	auipc	ra,0x0
    80003966:	ea2080e7          	jalr	-350(ra) # 80003804 <r_sstatus>
    8000396a:	fea43423          	sd	a0,-24(s0)
    8000396e:	fe843783          	ld	a5,-24(s0)
    80003972:	8b89                	andi	a5,a5,2
    80003974:	00f037b3          	snez	a5,a5
    80003978:	0ff7f793          	andi	a5,a5,255
    8000397c:	2781                	sext.w	a5,a5
    8000397e:	853e                	mv	a0,a5
    80003980:	60e2                	ld	ra,24(sp)
    80003982:	6442                	ld	s0,16(sp)
    80003984:	6105                	addi	sp,sp,32
    80003986:	8082                	ret

0000000080003988 <r_tp>:
    80003988:	1101                	addi	sp,sp,-32
    8000398a:	ec22                	sd	s0,24(sp)
    8000398c:	1000                	addi	s0,sp,32
    8000398e:	8792                	mv	a5,tp
    80003990:	fef43423          	sd	a5,-24(s0)
    80003994:	fe843783          	ld	a5,-24(s0)
    80003998:	853e                	mv	a0,a5
    8000399a:	6462                	ld	s0,24(sp)
    8000399c:	6105                	addi	sp,sp,32
    8000399e:	8082                	ret

00000000800039a0 <trapinit>:
    800039a0:	1141                	addi	sp,sp,-16
    800039a2:	e406                	sd	ra,8(sp)
    800039a4:	e022                	sd	s0,0(sp)
    800039a6:	0800                	addi	s0,sp,16
    800039a8:	00008597          	auipc	a1,0x8
    800039ac:	8f058593          	addi	a1,a1,-1808 # 8000b298 <etext+0x298>
    800039b0:	00016517          	auipc	a0,0x16
    800039b4:	70050513          	addi	a0,a0,1792 # 8001a0b0 <tickslock>
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	898080e7          	jalr	-1896(ra) # 80001250 <initlock>
    800039c0:	0001                	nop
    800039c2:	60a2                	ld	ra,8(sp)
    800039c4:	6402                	ld	s0,0(sp)
    800039c6:	0141                	addi	sp,sp,16
    800039c8:	8082                	ret

00000000800039ca <trapinithart>:
    800039ca:	1141                	addi	sp,sp,-16
    800039cc:	e406                	sd	ra,8(sp)
    800039ce:	e022                	sd	s0,0(sp)
    800039d0:	0800                	addi	s0,sp,16
    800039d2:	00005797          	auipc	a5,0x5
    800039d6:	d7e78793          	addi	a5,a5,-642 # 80008750 <kernelvec>
    800039da:	853e                	mv	a0,a5
    800039dc:	00000097          	auipc	ra,0x0
    800039e0:	ec4080e7          	jalr	-316(ra) # 800038a0 <w_stvec>
    800039e4:	0001                	nop
    800039e6:	60a2                	ld	ra,8(sp)
    800039e8:	6402                	ld	s0,0(sp)
    800039ea:	0141                	addi	sp,sp,16
    800039ec:	8082                	ret

00000000800039ee <usertrap>:
    800039ee:	7179                	addi	sp,sp,-48
    800039f0:	f406                	sd	ra,40(sp)
    800039f2:	f022                	sd	s0,32(sp)
    800039f4:	ec26                	sd	s1,24(sp)
    800039f6:	1800                	addi	s0,sp,48
    800039f8:	fc042e23          	sw	zero,-36(s0)
    800039fc:	00000097          	auipc	ra,0x0
    80003a00:	e08080e7          	jalr	-504(ra) # 80003804 <r_sstatus>
    80003a04:	87aa                	mv	a5,a0
    80003a06:	1007f793          	andi	a5,a5,256
    80003a0a:	cb89                	beqz	a5,80003a1c <usertrap+0x2e>
    80003a0c:	00008517          	auipc	a0,0x8
    80003a10:	89450513          	addi	a0,a0,-1900 # 8000b2a0 <etext+0x2a0>
    80003a14:	ffffd097          	auipc	ra,0xffffd
    80003a18:	23e080e7          	jalr	574(ra) # 80000c52 <panic>
    80003a1c:	00005797          	auipc	a5,0x5
    80003a20:	d3478793          	addi	a5,a5,-716 # 80008750 <kernelvec>
    80003a24:	853e                	mv	a0,a5
    80003a26:	00000097          	auipc	ra,0x0
    80003a2a:	e7a080e7          	jalr	-390(ra) # 800038a0 <w_stvec>
    80003a2e:	fffff097          	auipc	ra,0xfffff
    80003a32:	dbc080e7          	jalr	-580(ra) # 800027ea <myproc>
    80003a36:	fca43823          	sd	a0,-48(s0)
    80003a3a:	fd043783          	ld	a5,-48(s0)
    80003a3e:	6fa4                	ld	s1,88(a5)
    80003a40:	00000097          	auipc	ra,0x0
    80003a44:	e46080e7          	jalr	-442(ra) # 80003886 <r_sepc>
    80003a48:	87aa                	mv	a5,a0
    80003a4a:	ec9c                	sd	a5,24(s1)
    80003a4c:	00000097          	auipc	ra,0x0
    80003a50:	e88080e7          	jalr	-376(ra) # 800038d4 <r_scause>
    80003a54:	872a                	mv	a4,a0
    80003a56:	47a1                	li	a5,8
    80003a58:	02f71d63          	bne	a4,a5,80003a92 <usertrap+0xa4>
    80003a5c:	fd043783          	ld	a5,-48(s0)
    80003a60:	5b9c                	lw	a5,48(a5)
    80003a62:	c791                	beqz	a5,80003a6e <usertrap+0x80>
    80003a64:	557d                	li	a0,-1
    80003a66:	fffff097          	auipc	ra,0xfffff
    80003a6a:	440080e7          	jalr	1088(ra) # 80002ea6 <exit>
    80003a6e:	fd043783          	ld	a5,-48(s0)
    80003a72:	6fbc                	ld	a5,88(a5)
    80003a74:	6f98                	ld	a4,24(a5)
    80003a76:	fd043783          	ld	a5,-48(s0)
    80003a7a:	6fbc                	ld	a5,88(a5)
    80003a7c:	0711                	addi	a4,a4,4
    80003a7e:	ef98                	sd	a4,24(a5)
    80003a80:	00000097          	auipc	ra,0x0
    80003a84:	e88080e7          	jalr	-376(ra) # 80003908 <intr_on>
    80003a88:	00000097          	auipc	ra,0x0
    80003a8c:	67e080e7          	jalr	1662(ra) # 80004106 <syscall>
    80003a90:	a0b5                	j	80003afc <usertrap+0x10e>
    80003a92:	00000097          	auipc	ra,0x0
    80003a96:	346080e7          	jalr	838(ra) # 80003dd8 <devintr>
    80003a9a:	87aa                	mv	a5,a0
    80003a9c:	fcf42e23          	sw	a5,-36(s0)
    80003aa0:	fdc42783          	lw	a5,-36(s0)
    80003aa4:	2781                	sext.w	a5,a5
    80003aa6:	ebb9                	bnez	a5,80003afc <usertrap+0x10e>
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	e2c080e7          	jalr	-468(ra) # 800038d4 <r_scause>
    80003ab0:	872a                	mv	a4,a0
    80003ab2:	fd043783          	ld	a5,-48(s0)
    80003ab6:	5f9c                	lw	a5,56(a5)
    80003ab8:	863e                	mv	a2,a5
    80003aba:	85ba                	mv	a1,a4
    80003abc:	00008517          	auipc	a0,0x8
    80003ac0:	80450513          	addi	a0,a0,-2044 # 8000b2c0 <etext+0x2c0>
    80003ac4:	ffffd097          	auipc	ra,0xffffd
    80003ac8:	f38080e7          	jalr	-200(ra) # 800009fc <printf>
    80003acc:	00000097          	auipc	ra,0x0
    80003ad0:	dba080e7          	jalr	-582(ra) # 80003886 <r_sepc>
    80003ad4:	84aa                	mv	s1,a0
    80003ad6:	00000097          	auipc	ra,0x0
    80003ada:	e18080e7          	jalr	-488(ra) # 800038ee <r_stval>
    80003ade:	87aa                	mv	a5,a0
    80003ae0:	863e                	mv	a2,a5
    80003ae2:	85a6                	mv	a1,s1
    80003ae4:	00008517          	auipc	a0,0x8
    80003ae8:	80c50513          	addi	a0,a0,-2036 # 8000b2f0 <etext+0x2f0>
    80003aec:	ffffd097          	auipc	ra,0xffffd
    80003af0:	f10080e7          	jalr	-240(ra) # 800009fc <printf>
    80003af4:	fd043783          	ld	a5,-48(s0)
    80003af8:	4705                	li	a4,1
    80003afa:	db98                	sw	a4,48(a5)
    80003afc:	fd043783          	ld	a5,-48(s0)
    80003b00:	5b9c                	lw	a5,48(a5)
    80003b02:	c791                	beqz	a5,80003b0e <usertrap+0x120>
    80003b04:	557d                	li	a0,-1
    80003b06:	fffff097          	auipc	ra,0xfffff
    80003b0a:	3a0080e7          	jalr	928(ra) # 80002ea6 <exit>
    80003b0e:	fdc42783          	lw	a5,-36(s0)
    80003b12:	0007871b          	sext.w	a4,a5
    80003b16:	4789                	li	a5,2
    80003b18:	00f71663          	bne	a4,a5,80003b24 <usertrap+0x136>
    80003b1c:	00000097          	auipc	ra,0x0
    80003b20:	808080e7          	jalr	-2040(ra) # 80003324 <yield>
    80003b24:	00000097          	auipc	ra,0x0
    80003b28:	014080e7          	jalr	20(ra) # 80003b38 <usertrapret>
    80003b2c:	0001                	nop
    80003b2e:	70a2                	ld	ra,40(sp)
    80003b30:	7402                	ld	s0,32(sp)
    80003b32:	64e2                	ld	s1,24(sp)
    80003b34:	6145                	addi	sp,sp,48
    80003b36:	8082                	ret

0000000080003b38 <usertrapret>:
    80003b38:	7139                	addi	sp,sp,-64
    80003b3a:	fc06                	sd	ra,56(sp)
    80003b3c:	f822                	sd	s0,48(sp)
    80003b3e:	f426                	sd	s1,40(sp)
    80003b40:	0080                	addi	s0,sp,64
    80003b42:	fffff097          	auipc	ra,0xfffff
    80003b46:	ca8080e7          	jalr	-856(ra) # 800027ea <myproc>
    80003b4a:	fca43c23          	sd	a0,-40(s0)
    80003b4e:	00000097          	auipc	ra,0x0
    80003b52:	de4080e7          	jalr	-540(ra) # 80003932 <intr_off>
    80003b56:	00006717          	auipc	a4,0x6
    80003b5a:	4aa70713          	addi	a4,a4,1194 # 8000a000 <_trampoline>
    80003b5e:	00006797          	auipc	a5,0x6
    80003b62:	4a278793          	addi	a5,a5,1186 # 8000a000 <_trampoline>
    80003b66:	8f1d                	sub	a4,a4,a5
    80003b68:	040007b7          	lui	a5,0x4000
    80003b6c:	17fd                	addi	a5,a5,-1
    80003b6e:	07b2                	slli	a5,a5,0xc
    80003b70:	97ba                	add	a5,a5,a4
    80003b72:	853e                	mv	a0,a5
    80003b74:	00000097          	auipc	ra,0x0
    80003b78:	d2c080e7          	jalr	-724(ra) # 800038a0 <w_stvec>
    80003b7c:	fd843783          	ld	a5,-40(s0)
    80003b80:	6fa4                	ld	s1,88(a5)
    80003b82:	00000097          	auipc	ra,0x0
    80003b86:	d38080e7          	jalr	-712(ra) # 800038ba <r_satp>
    80003b8a:	87aa                	mv	a5,a0
    80003b8c:	e09c                	sd	a5,0(s1)
    80003b8e:	fd843783          	ld	a5,-40(s0)
    80003b92:	63b4                	ld	a3,64(a5)
    80003b94:	fd843783          	ld	a5,-40(s0)
    80003b98:	6fbc                	ld	a5,88(a5)
    80003b9a:	6705                	lui	a4,0x1
    80003b9c:	9736                	add	a4,a4,a3
    80003b9e:	e798                	sd	a4,8(a5)
    80003ba0:	fd843783          	ld	a5,-40(s0)
    80003ba4:	6fbc                	ld	a5,88(a5)
    80003ba6:	00000717          	auipc	a4,0x0
    80003baa:	e4870713          	addi	a4,a4,-440 # 800039ee <usertrap>
    80003bae:	eb98                	sd	a4,16(a5)
    80003bb0:	fd843783          	ld	a5,-40(s0)
    80003bb4:	6fa4                	ld	s1,88(a5)
    80003bb6:	00000097          	auipc	ra,0x0
    80003bba:	dd2080e7          	jalr	-558(ra) # 80003988 <r_tp>
    80003bbe:	87aa                	mv	a5,a0
    80003bc0:	f09c                	sd	a5,32(s1)
    80003bc2:	00000097          	auipc	ra,0x0
    80003bc6:	c42080e7          	jalr	-958(ra) # 80003804 <r_sstatus>
    80003bca:	fca43823          	sd	a0,-48(s0)
    80003bce:	fd043783          	ld	a5,-48(s0)
    80003bd2:	eff7f793          	andi	a5,a5,-257
    80003bd6:	fcf43823          	sd	a5,-48(s0)
    80003bda:	fd043783          	ld	a5,-48(s0)
    80003bde:	0207e793          	ori	a5,a5,32
    80003be2:	fcf43823          	sd	a5,-48(s0)
    80003be6:	fd043503          	ld	a0,-48(s0)
    80003bea:	00000097          	auipc	ra,0x0
    80003bee:	c34080e7          	jalr	-972(ra) # 8000381e <w_sstatus>
    80003bf2:	fd843783          	ld	a5,-40(s0)
    80003bf6:	6fbc                	ld	a5,88(a5)
    80003bf8:	6f9c                	ld	a5,24(a5)
    80003bfa:	853e                	mv	a0,a5
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	c70080e7          	jalr	-912(ra) # 8000386c <w_sepc>
    80003c04:	fd843783          	ld	a5,-40(s0)
    80003c08:	6bbc                	ld	a5,80(a5)
    80003c0a:	00c7d713          	srli	a4,a5,0xc
    80003c0e:	57fd                	li	a5,-1
    80003c10:	17fe                	slli	a5,a5,0x3f
    80003c12:	8fd9                	or	a5,a5,a4
    80003c14:	fcf43423          	sd	a5,-56(s0)
    80003c18:	00006717          	auipc	a4,0x6
    80003c1c:	47870713          	addi	a4,a4,1144 # 8000a090 <userret>
    80003c20:	00006797          	auipc	a5,0x6
    80003c24:	3e078793          	addi	a5,a5,992 # 8000a000 <_trampoline>
    80003c28:	8f1d                	sub	a4,a4,a5
    80003c2a:	040007b7          	lui	a5,0x4000
    80003c2e:	17fd                	addi	a5,a5,-1
    80003c30:	07b2                	slli	a5,a5,0xc
    80003c32:	97ba                	add	a5,a5,a4
    80003c34:	fcf43023          	sd	a5,-64(s0)
    80003c38:	fc043703          	ld	a4,-64(s0)
    80003c3c:	fc843583          	ld	a1,-56(s0)
    80003c40:	020007b7          	lui	a5,0x2000
    80003c44:	17fd                	addi	a5,a5,-1
    80003c46:	00d79513          	slli	a0,a5,0xd
    80003c4a:	9702                	jalr	a4
    80003c4c:	0001                	nop
    80003c4e:	70e2                	ld	ra,56(sp)
    80003c50:	7442                	ld	s0,48(sp)
    80003c52:	74a2                	ld	s1,40(sp)
    80003c54:	6121                	addi	sp,sp,64
    80003c56:	8082                	ret

0000000080003c58 <kerneltrap>:
    80003c58:	7139                	addi	sp,sp,-64
    80003c5a:	fc06                	sd	ra,56(sp)
    80003c5c:	f822                	sd	s0,48(sp)
    80003c5e:	f426                	sd	s1,40(sp)
    80003c60:	0080                	addi	s0,sp,64
    80003c62:	fc042e23          	sw	zero,-36(s0)
    80003c66:	00000097          	auipc	ra,0x0
    80003c6a:	c20080e7          	jalr	-992(ra) # 80003886 <r_sepc>
    80003c6e:	fca43823          	sd	a0,-48(s0)
    80003c72:	00000097          	auipc	ra,0x0
    80003c76:	b92080e7          	jalr	-1134(ra) # 80003804 <r_sstatus>
    80003c7a:	fca43423          	sd	a0,-56(s0)
    80003c7e:	00000097          	auipc	ra,0x0
    80003c82:	c56080e7          	jalr	-938(ra) # 800038d4 <r_scause>
    80003c86:	fca43023          	sd	a0,-64(s0)
    80003c8a:	fc843783          	ld	a5,-56(s0)
    80003c8e:	1007f793          	andi	a5,a5,256
    80003c92:	eb89                	bnez	a5,80003ca4 <kerneltrap+0x4c>
    80003c94:	00007517          	auipc	a0,0x7
    80003c98:	67c50513          	addi	a0,a0,1660 # 8000b310 <etext+0x310>
    80003c9c:	ffffd097          	auipc	ra,0xffffd
    80003ca0:	fb6080e7          	jalr	-74(ra) # 80000c52 <panic>
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	cb6080e7          	jalr	-842(ra) # 8000395a <intr_get>
    80003cac:	87aa                	mv	a5,a0
    80003cae:	cb89                	beqz	a5,80003cc0 <kerneltrap+0x68>
    80003cb0:	00007517          	auipc	a0,0x7
    80003cb4:	68850513          	addi	a0,a0,1672 # 8000b338 <etext+0x338>
    80003cb8:	ffffd097          	auipc	ra,0xffffd
    80003cbc:	f9a080e7          	jalr	-102(ra) # 80000c52 <panic>
    80003cc0:	00000097          	auipc	ra,0x0
    80003cc4:	118080e7          	jalr	280(ra) # 80003dd8 <devintr>
    80003cc8:	87aa                	mv	a5,a0
    80003cca:	fcf42e23          	sw	a5,-36(s0)
    80003cce:	fdc42783          	lw	a5,-36(s0)
    80003cd2:	2781                	sext.w	a5,a5
    80003cd4:	e7b9                	bnez	a5,80003d22 <kerneltrap+0xca>
    80003cd6:	fc043583          	ld	a1,-64(s0)
    80003cda:	00007517          	auipc	a0,0x7
    80003cde:	67e50513          	addi	a0,a0,1662 # 8000b358 <etext+0x358>
    80003ce2:	ffffd097          	auipc	ra,0xffffd
    80003ce6:	d1a080e7          	jalr	-742(ra) # 800009fc <printf>
    80003cea:	00000097          	auipc	ra,0x0
    80003cee:	b9c080e7          	jalr	-1124(ra) # 80003886 <r_sepc>
    80003cf2:	84aa                	mv	s1,a0
    80003cf4:	00000097          	auipc	ra,0x0
    80003cf8:	bfa080e7          	jalr	-1030(ra) # 800038ee <r_stval>
    80003cfc:	87aa                	mv	a5,a0
    80003cfe:	863e                	mv	a2,a5
    80003d00:	85a6                	mv	a1,s1
    80003d02:	00007517          	auipc	a0,0x7
    80003d06:	66650513          	addi	a0,a0,1638 # 8000b368 <etext+0x368>
    80003d0a:	ffffd097          	auipc	ra,0xffffd
    80003d0e:	cf2080e7          	jalr	-782(ra) # 800009fc <printf>
    80003d12:	00007517          	auipc	a0,0x7
    80003d16:	66e50513          	addi	a0,a0,1646 # 8000b380 <etext+0x380>
    80003d1a:	ffffd097          	auipc	ra,0xffffd
    80003d1e:	f38080e7          	jalr	-200(ra) # 80000c52 <panic>
    80003d22:	fdc42783          	lw	a5,-36(s0)
    80003d26:	0007871b          	sext.w	a4,a5
    80003d2a:	4789                	li	a5,2
    80003d2c:	02f71663          	bne	a4,a5,80003d58 <kerneltrap+0x100>
    80003d30:	fffff097          	auipc	ra,0xfffff
    80003d34:	aba080e7          	jalr	-1350(ra) # 800027ea <myproc>
    80003d38:	87aa                	mv	a5,a0
    80003d3a:	cf99                	beqz	a5,80003d58 <kerneltrap+0x100>
    80003d3c:	fffff097          	auipc	ra,0xfffff
    80003d40:	aae080e7          	jalr	-1362(ra) # 800027ea <myproc>
    80003d44:	87aa                	mv	a5,a0
    80003d46:	4f9c                	lw	a5,24(a5)
    80003d48:	873e                	mv	a4,a5
    80003d4a:	478d                	li	a5,3
    80003d4c:	00f71663          	bne	a4,a5,80003d58 <kerneltrap+0x100>
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	5d4080e7          	jalr	1492(ra) # 80003324 <yield>
    80003d58:	fd043503          	ld	a0,-48(s0)
    80003d5c:	00000097          	auipc	ra,0x0
    80003d60:	b10080e7          	jalr	-1264(ra) # 8000386c <w_sepc>
    80003d64:	fc843503          	ld	a0,-56(s0)
    80003d68:	00000097          	auipc	ra,0x0
    80003d6c:	ab6080e7          	jalr	-1354(ra) # 8000381e <w_sstatus>
    80003d70:	0001                	nop
    80003d72:	70e2                	ld	ra,56(sp)
    80003d74:	7442                	ld	s0,48(sp)
    80003d76:	74a2                	ld	s1,40(sp)
    80003d78:	6121                	addi	sp,sp,64
    80003d7a:	8082                	ret

0000000080003d7c <clockintr>:
    80003d7c:	1141                	addi	sp,sp,-16
    80003d7e:	e406                	sd	ra,8(sp)
    80003d80:	e022                	sd	s0,0(sp)
    80003d82:	0800                	addi	s0,sp,16
    80003d84:	00016517          	auipc	a0,0x16
    80003d88:	32c50513          	addi	a0,a0,812 # 8001a0b0 <tickslock>
    80003d8c:	ffffd097          	auipc	ra,0xffffd
    80003d90:	4f4080e7          	jalr	1268(ra) # 80001280 <acquire>
    80003d94:	00008797          	auipc	a5,0x8
    80003d98:	28c78793          	addi	a5,a5,652 # 8000c020 <ticks>
    80003d9c:	439c                	lw	a5,0(a5)
    80003d9e:	2785                	addiw	a5,a5,1
    80003da0:	0007871b          	sext.w	a4,a5
    80003da4:	00008797          	auipc	a5,0x8
    80003da8:	27c78793          	addi	a5,a5,636 # 8000c020 <ticks>
    80003dac:	c398                	sw	a4,0(a5)
    80003dae:	00008517          	auipc	a0,0x8
    80003db2:	27250513          	addi	a0,a0,626 # 8000c020 <ticks>
    80003db6:	fffff097          	auipc	ra,0xfffff
    80003dba:	69c080e7          	jalr	1692(ra) # 80003452 <wakeup>
    80003dbe:	00016517          	auipc	a0,0x16
    80003dc2:	2f250513          	addi	a0,a0,754 # 8001a0b0 <tickslock>
    80003dc6:	ffffd097          	auipc	ra,0xffffd
    80003dca:	51e080e7          	jalr	1310(ra) # 800012e4 <release>
    80003dce:	0001                	nop
    80003dd0:	60a2                	ld	ra,8(sp)
    80003dd2:	6402                	ld	s0,0(sp)
    80003dd4:	0141                	addi	sp,sp,16
    80003dd6:	8082                	ret

0000000080003dd8 <devintr>:
    80003dd8:	1101                	addi	sp,sp,-32
    80003dda:	ec06                	sd	ra,24(sp)
    80003ddc:	e822                	sd	s0,16(sp)
    80003dde:	1000                	addi	s0,sp,32
    80003de0:	00000097          	auipc	ra,0x0
    80003de4:	af4080e7          	jalr	-1292(ra) # 800038d4 <r_scause>
    80003de8:	fea43423          	sd	a0,-24(s0)
    80003dec:	fe843783          	ld	a5,-24(s0)
    80003df0:	0807d463          	bgez	a5,80003e78 <devintr+0xa0>
    80003df4:	fe843783          	ld	a5,-24(s0)
    80003df8:	0ff7f713          	andi	a4,a5,255
    80003dfc:	47a5                	li	a5,9
    80003dfe:	06f71d63          	bne	a4,a5,80003e78 <devintr+0xa0>
    80003e02:	00005097          	auipc	ra,0x5
    80003e06:	a80080e7          	jalr	-1408(ra) # 80008882 <plic_claim>
    80003e0a:	87aa                	mv	a5,a0
    80003e0c:	fef42223          	sw	a5,-28(s0)
    80003e10:	fe442783          	lw	a5,-28(s0)
    80003e14:	0007871b          	sext.w	a4,a5
    80003e18:	47a9                	li	a5,10
    80003e1a:	00f71763          	bne	a4,a5,80003e28 <devintr+0x50>
    80003e1e:	ffffd097          	auipc	ra,0xffffd
    80003e22:	16a080e7          	jalr	362(ra) # 80000f88 <uartintr>
    80003e26:	a825                	j	80003e5e <devintr+0x86>
    80003e28:	fe442783          	lw	a5,-28(s0)
    80003e2c:	0007871b          	sext.w	a4,a5
    80003e30:	4785                	li	a5,1
    80003e32:	00f71763          	bne	a4,a5,80003e40 <devintr+0x68>
    80003e36:	00005097          	auipc	ra,0x5
    80003e3a:	360080e7          	jalr	864(ra) # 80009196 <virtio_disk_intr>
    80003e3e:	a005                	j	80003e5e <devintr+0x86>
    80003e40:	fe442783          	lw	a5,-28(s0)
    80003e44:	2781                	sext.w	a5,a5
    80003e46:	cf81                	beqz	a5,80003e5e <devintr+0x86>
    80003e48:	fe442783          	lw	a5,-28(s0)
    80003e4c:	85be                	mv	a1,a5
    80003e4e:	00007517          	auipc	a0,0x7
    80003e52:	54250513          	addi	a0,a0,1346 # 8000b390 <etext+0x390>
    80003e56:	ffffd097          	auipc	ra,0xffffd
    80003e5a:	ba6080e7          	jalr	-1114(ra) # 800009fc <printf>
    80003e5e:	fe442783          	lw	a5,-28(s0)
    80003e62:	2781                	sext.w	a5,a5
    80003e64:	cb81                	beqz	a5,80003e74 <devintr+0x9c>
    80003e66:	fe442783          	lw	a5,-28(s0)
    80003e6a:	853e                	mv	a0,a5
    80003e6c:	00005097          	auipc	ra,0x5
    80003e70:	a54080e7          	jalr	-1452(ra) # 800088c0 <plic_complete>
    80003e74:	4785                	li	a5,1
    80003e76:	a081                	j	80003eb6 <devintr+0xde>
    80003e78:	fe843703          	ld	a4,-24(s0)
    80003e7c:	57fd                	li	a5,-1
    80003e7e:	17fe                	slli	a5,a5,0x3f
    80003e80:	0785                	addi	a5,a5,1
    80003e82:	02f71963          	bne	a4,a5,80003eb4 <devintr+0xdc>
    80003e86:	fffff097          	auipc	ra,0xfffff
    80003e8a:	906080e7          	jalr	-1786(ra) # 8000278c <cpuid>
    80003e8e:	87aa                	mv	a5,a0
    80003e90:	e789                	bnez	a5,80003e9a <devintr+0xc2>
    80003e92:	00000097          	auipc	ra,0x0
    80003e96:	eea080e7          	jalr	-278(ra) # 80003d7c <clockintr>
    80003e9a:	00000097          	auipc	ra,0x0
    80003e9e:	99e080e7          	jalr	-1634(ra) # 80003838 <r_sip>
    80003ea2:	87aa                	mv	a5,a0
    80003ea4:	9bf5                	andi	a5,a5,-3
    80003ea6:	853e                	mv	a0,a5
    80003ea8:	00000097          	auipc	ra,0x0
    80003eac:	9aa080e7          	jalr	-1622(ra) # 80003852 <w_sip>
    80003eb0:	4789                	li	a5,2
    80003eb2:	a011                	j	80003eb6 <devintr+0xde>
    80003eb4:	4781                	li	a5,0
    80003eb6:	853e                	mv	a0,a5
    80003eb8:	60e2                	ld	ra,24(sp)
    80003eba:	6442                	ld	s0,16(sp)
    80003ebc:	6105                	addi	sp,sp,32
    80003ebe:	8082                	ret

0000000080003ec0 <fetchaddr>:
    80003ec0:	7179                	addi	sp,sp,-48
    80003ec2:	f406                	sd	ra,40(sp)
    80003ec4:	f022                	sd	s0,32(sp)
    80003ec6:	1800                	addi	s0,sp,48
    80003ec8:	fca43c23          	sd	a0,-40(s0)
    80003ecc:	fcb43823          	sd	a1,-48(s0)
    80003ed0:	fffff097          	auipc	ra,0xfffff
    80003ed4:	91a080e7          	jalr	-1766(ra) # 800027ea <myproc>
    80003ed8:	fea43423          	sd	a0,-24(s0)
    80003edc:	fe843783          	ld	a5,-24(s0)
    80003ee0:	67bc                	ld	a5,72(a5)
    80003ee2:	fd843703          	ld	a4,-40(s0)
    80003ee6:	00f77b63          	bgeu	a4,a5,80003efc <fetchaddr+0x3c>
    80003eea:	fd843783          	ld	a5,-40(s0)
    80003eee:	00878713          	addi	a4,a5,8
    80003ef2:	fe843783          	ld	a5,-24(s0)
    80003ef6:	67bc                	ld	a5,72(a5)
    80003ef8:	00e7f463          	bgeu	a5,a4,80003f00 <fetchaddr+0x40>
    80003efc:	57fd                	li	a5,-1
    80003efe:	a01d                	j	80003f24 <fetchaddr+0x64>
    80003f00:	fe843783          	ld	a5,-24(s0)
    80003f04:	6bbc                	ld	a5,80(a5)
    80003f06:	46a1                	li	a3,8
    80003f08:	fd843603          	ld	a2,-40(s0)
    80003f0c:	fd043583          	ld	a1,-48(s0)
    80003f10:	853e                	mv	a0,a5
    80003f12:	ffffe097          	auipc	ra,0xffffe
    80003f16:	490080e7          	jalr	1168(ra) # 800023a2 <copyin>
    80003f1a:	87aa                	mv	a5,a0
    80003f1c:	c399                	beqz	a5,80003f22 <fetchaddr+0x62>
    80003f1e:	57fd                	li	a5,-1
    80003f20:	a011                	j	80003f24 <fetchaddr+0x64>
    80003f22:	4781                	li	a5,0
    80003f24:	853e                	mv	a0,a5
    80003f26:	70a2                	ld	ra,40(sp)
    80003f28:	7402                	ld	s0,32(sp)
    80003f2a:	6145                	addi	sp,sp,48
    80003f2c:	8082                	ret

0000000080003f2e <fetchstr>:
    80003f2e:	7139                	addi	sp,sp,-64
    80003f30:	fc06                	sd	ra,56(sp)
    80003f32:	f822                	sd	s0,48(sp)
    80003f34:	0080                	addi	s0,sp,64
    80003f36:	fca43c23          	sd	a0,-40(s0)
    80003f3a:	fcb43823          	sd	a1,-48(s0)
    80003f3e:	87b2                	mv	a5,a2
    80003f40:	fcf42623          	sw	a5,-52(s0)
    80003f44:	fffff097          	auipc	ra,0xfffff
    80003f48:	8a6080e7          	jalr	-1882(ra) # 800027ea <myproc>
    80003f4c:	fea43423          	sd	a0,-24(s0)
    80003f50:	fe843783          	ld	a5,-24(s0)
    80003f54:	6bbc                	ld	a5,80(a5)
    80003f56:	fcc42703          	lw	a4,-52(s0)
    80003f5a:	86ba                	mv	a3,a4
    80003f5c:	fd843603          	ld	a2,-40(s0)
    80003f60:	fd043583          	ld	a1,-48(s0)
    80003f64:	853e                	mv	a0,a5
    80003f66:	ffffe097          	auipc	ra,0xffffe
    80003f6a:	50a080e7          	jalr	1290(ra) # 80002470 <copyinstr>
    80003f6e:	87aa                	mv	a5,a0
    80003f70:	fef42223          	sw	a5,-28(s0)
    80003f74:	fe442783          	lw	a5,-28(s0)
    80003f78:	2781                	sext.w	a5,a5
    80003f7a:	0007d563          	bgez	a5,80003f84 <fetchstr+0x56>
    80003f7e:	fe442783          	lw	a5,-28(s0)
    80003f82:	a801                	j	80003f92 <fetchstr+0x64>
    80003f84:	fd043503          	ld	a0,-48(s0)
    80003f88:	ffffe097          	auipc	ra,0xffffe
    80003f8c:	83c080e7          	jalr	-1988(ra) # 800017c4 <strlen>
    80003f90:	87aa                	mv	a5,a0
    80003f92:	853e                	mv	a0,a5
    80003f94:	70e2                	ld	ra,56(sp)
    80003f96:	7442                	ld	s0,48(sp)
    80003f98:	6121                	addi	sp,sp,64
    80003f9a:	8082                	ret

0000000080003f9c <argraw>:
    80003f9c:	7179                	addi	sp,sp,-48
    80003f9e:	f406                	sd	ra,40(sp)
    80003fa0:	f022                	sd	s0,32(sp)
    80003fa2:	1800                	addi	s0,sp,48
    80003fa4:	87aa                	mv	a5,a0
    80003fa6:	fcf42e23          	sw	a5,-36(s0)
    80003faa:	fffff097          	auipc	ra,0xfffff
    80003fae:	840080e7          	jalr	-1984(ra) # 800027ea <myproc>
    80003fb2:	fea43423          	sd	a0,-24(s0)
    80003fb6:	fdc42783          	lw	a5,-36(s0)
    80003fba:	0007871b          	sext.w	a4,a5
    80003fbe:	4795                	li	a5,5
    80003fc0:	06e7e263          	bltu	a5,a4,80004024 <argraw+0x88>
    80003fc4:	fdc46783          	lwu	a5,-36(s0)
    80003fc8:	00279713          	slli	a4,a5,0x2
    80003fcc:	00007797          	auipc	a5,0x7
    80003fd0:	3ec78793          	addi	a5,a5,1004 # 8000b3b8 <etext+0x3b8>
    80003fd4:	97ba                	add	a5,a5,a4
    80003fd6:	439c                	lw	a5,0(a5)
    80003fd8:	0007871b          	sext.w	a4,a5
    80003fdc:	00007797          	auipc	a5,0x7
    80003fe0:	3dc78793          	addi	a5,a5,988 # 8000b3b8 <etext+0x3b8>
    80003fe4:	97ba                	add	a5,a5,a4
    80003fe6:	8782                	jr	a5
    80003fe8:	fe843783          	ld	a5,-24(s0)
    80003fec:	6fbc                	ld	a5,88(a5)
    80003fee:	7bbc                	ld	a5,112(a5)
    80003ff0:	a091                	j	80004034 <argraw+0x98>
    80003ff2:	fe843783          	ld	a5,-24(s0)
    80003ff6:	6fbc                	ld	a5,88(a5)
    80003ff8:	7fbc                	ld	a5,120(a5)
    80003ffa:	a82d                	j	80004034 <argraw+0x98>
    80003ffc:	fe843783          	ld	a5,-24(s0)
    80004000:	6fbc                	ld	a5,88(a5)
    80004002:	63dc                	ld	a5,128(a5)
    80004004:	a805                	j	80004034 <argraw+0x98>
    80004006:	fe843783          	ld	a5,-24(s0)
    8000400a:	6fbc                	ld	a5,88(a5)
    8000400c:	67dc                	ld	a5,136(a5)
    8000400e:	a01d                	j	80004034 <argraw+0x98>
    80004010:	fe843783          	ld	a5,-24(s0)
    80004014:	6fbc                	ld	a5,88(a5)
    80004016:	6bdc                	ld	a5,144(a5)
    80004018:	a831                	j	80004034 <argraw+0x98>
    8000401a:	fe843783          	ld	a5,-24(s0)
    8000401e:	6fbc                	ld	a5,88(a5)
    80004020:	6fdc                	ld	a5,152(a5)
    80004022:	a809                	j	80004034 <argraw+0x98>
    80004024:	00007517          	auipc	a0,0x7
    80004028:	38c50513          	addi	a0,a0,908 # 8000b3b0 <etext+0x3b0>
    8000402c:	ffffd097          	auipc	ra,0xffffd
    80004030:	c26080e7          	jalr	-986(ra) # 80000c52 <panic>
    80004034:	853e                	mv	a0,a5
    80004036:	70a2                	ld	ra,40(sp)
    80004038:	7402                	ld	s0,32(sp)
    8000403a:	6145                	addi	sp,sp,48
    8000403c:	8082                	ret

000000008000403e <argint>:
    8000403e:	1101                	addi	sp,sp,-32
    80004040:	ec06                	sd	ra,24(sp)
    80004042:	e822                	sd	s0,16(sp)
    80004044:	1000                	addi	s0,sp,32
    80004046:	87aa                	mv	a5,a0
    80004048:	feb43023          	sd	a1,-32(s0)
    8000404c:	fef42623          	sw	a5,-20(s0)
    80004050:	fec42783          	lw	a5,-20(s0)
    80004054:	853e                	mv	a0,a5
    80004056:	00000097          	auipc	ra,0x0
    8000405a:	f46080e7          	jalr	-186(ra) # 80003f9c <argraw>
    8000405e:	87aa                	mv	a5,a0
    80004060:	0007871b          	sext.w	a4,a5
    80004064:	fe043783          	ld	a5,-32(s0)
    80004068:	c398                	sw	a4,0(a5)
    8000406a:	4781                	li	a5,0
    8000406c:	853e                	mv	a0,a5
    8000406e:	60e2                	ld	ra,24(sp)
    80004070:	6442                	ld	s0,16(sp)
    80004072:	6105                	addi	sp,sp,32
    80004074:	8082                	ret

0000000080004076 <argaddr>:
    80004076:	1101                	addi	sp,sp,-32
    80004078:	ec06                	sd	ra,24(sp)
    8000407a:	e822                	sd	s0,16(sp)
    8000407c:	1000                	addi	s0,sp,32
    8000407e:	87aa                	mv	a5,a0
    80004080:	feb43023          	sd	a1,-32(s0)
    80004084:	fef42623          	sw	a5,-20(s0)
    80004088:	fec42783          	lw	a5,-20(s0)
    8000408c:	853e                	mv	a0,a5
    8000408e:	00000097          	auipc	ra,0x0
    80004092:	f0e080e7          	jalr	-242(ra) # 80003f9c <argraw>
    80004096:	872a                	mv	a4,a0
    80004098:	fe043783          	ld	a5,-32(s0)
    8000409c:	e398                	sd	a4,0(a5)
    8000409e:	4781                	li	a5,0
    800040a0:	853e                	mv	a0,a5
    800040a2:	60e2                	ld	ra,24(sp)
    800040a4:	6442                	ld	s0,16(sp)
    800040a6:	6105                	addi	sp,sp,32
    800040a8:	8082                	ret

00000000800040aa <argstr>:
    800040aa:	7179                	addi	sp,sp,-48
    800040ac:	f406                	sd	ra,40(sp)
    800040ae:	f022                	sd	s0,32(sp)
    800040b0:	1800                	addi	s0,sp,48
    800040b2:	87aa                	mv	a5,a0
    800040b4:	fcb43823          	sd	a1,-48(s0)
    800040b8:	8732                	mv	a4,a2
    800040ba:	fcf42e23          	sw	a5,-36(s0)
    800040be:	87ba                	mv	a5,a4
    800040c0:	fcf42c23          	sw	a5,-40(s0)
    800040c4:	fe840713          	addi	a4,s0,-24
    800040c8:	fdc42783          	lw	a5,-36(s0)
    800040cc:	85ba                	mv	a1,a4
    800040ce:	853e                	mv	a0,a5
    800040d0:	00000097          	auipc	ra,0x0
    800040d4:	fa6080e7          	jalr	-90(ra) # 80004076 <argaddr>
    800040d8:	87aa                	mv	a5,a0
    800040da:	0007d463          	bgez	a5,800040e2 <argstr+0x38>
    800040de:	57fd                	li	a5,-1
    800040e0:	a831                	j	800040fc <argstr+0x52>
    800040e2:	fe843783          	ld	a5,-24(s0)
    800040e6:	fd842703          	lw	a4,-40(s0)
    800040ea:	863a                	mv	a2,a4
    800040ec:	fd043583          	ld	a1,-48(s0)
    800040f0:	853e                	mv	a0,a5
    800040f2:	00000097          	auipc	ra,0x0
    800040f6:	e3c080e7          	jalr	-452(ra) # 80003f2e <fetchstr>
    800040fa:	87aa                	mv	a5,a0
    800040fc:	853e                	mv	a0,a5
    800040fe:	70a2                	ld	ra,40(sp)
    80004100:	7402                	ld	s0,32(sp)
    80004102:	6145                	addi	sp,sp,48
    80004104:	8082                	ret

0000000080004106 <syscall>:
    80004106:	7179                	addi	sp,sp,-48
    80004108:	f406                	sd	ra,40(sp)
    8000410a:	f022                	sd	s0,32(sp)
    8000410c:	ec26                	sd	s1,24(sp)
    8000410e:	1800                	addi	s0,sp,48
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	6da080e7          	jalr	1754(ra) # 800027ea <myproc>
    80004118:	fca43c23          	sd	a0,-40(s0)
    8000411c:	fd843783          	ld	a5,-40(s0)
    80004120:	6fbc                	ld	a5,88(a5)
    80004122:	77dc                	ld	a5,168(a5)
    80004124:	fcf42a23          	sw	a5,-44(s0)
    80004128:	fd442783          	lw	a5,-44(s0)
    8000412c:	2781                	sext.w	a5,a5
    8000412e:	04f05263          	blez	a5,80004172 <syscall+0x6c>
    80004132:	fd442783          	lw	a5,-44(s0)
    80004136:	873e                	mv	a4,a5
    80004138:	47d5                	li	a5,21
    8000413a:	02e7ec63          	bltu	a5,a4,80004172 <syscall+0x6c>
    8000413e:	00007717          	auipc	a4,0x7
    80004142:	69a70713          	addi	a4,a4,1690 # 8000b7d8 <syscalls>
    80004146:	fd442783          	lw	a5,-44(s0)
    8000414a:	078e                	slli	a5,a5,0x3
    8000414c:	97ba                	add	a5,a5,a4
    8000414e:	639c                	ld	a5,0(a5)
    80004150:	c38d                	beqz	a5,80004172 <syscall+0x6c>
    80004152:	00007717          	auipc	a4,0x7
    80004156:	68670713          	addi	a4,a4,1670 # 8000b7d8 <syscalls>
    8000415a:	fd442783          	lw	a5,-44(s0)
    8000415e:	078e                	slli	a5,a5,0x3
    80004160:	97ba                	add	a5,a5,a4
    80004162:	6398                	ld	a4,0(a5)
    80004164:	fd843783          	ld	a5,-40(s0)
    80004168:	6fa4                	ld	s1,88(a5)
    8000416a:	9702                	jalr	a4
    8000416c:	87aa                	mv	a5,a0
    8000416e:	f8bc                	sd	a5,112(s1)
    80004170:	a815                	j	800041a4 <syscall+0x9e>
    80004172:	fd843783          	ld	a5,-40(s0)
    80004176:	5f98                	lw	a4,56(a5)
    80004178:	fd843783          	ld	a5,-40(s0)
    8000417c:	15878793          	addi	a5,a5,344
    80004180:	fd442683          	lw	a3,-44(s0)
    80004184:	863e                	mv	a2,a5
    80004186:	85ba                	mv	a1,a4
    80004188:	00007517          	auipc	a0,0x7
    8000418c:	24850513          	addi	a0,a0,584 # 8000b3d0 <etext+0x3d0>
    80004190:	ffffd097          	auipc	ra,0xffffd
    80004194:	86c080e7          	jalr	-1940(ra) # 800009fc <printf>
    80004198:	fd843783          	ld	a5,-40(s0)
    8000419c:	6fbc                	ld	a5,88(a5)
    8000419e:	577d                	li	a4,-1
    800041a0:	fbb8                	sd	a4,112(a5)
    800041a2:	0001                	nop
    800041a4:	0001                	nop
    800041a6:	70a2                	ld	ra,40(sp)
    800041a8:	7402                	ld	s0,32(sp)
    800041aa:	64e2                	ld	s1,24(sp)
    800041ac:	6145                	addi	sp,sp,48
    800041ae:	8082                	ret

00000000800041b0 <sys_exit>:
    800041b0:	1101                	addi	sp,sp,-32
    800041b2:	ec06                	sd	ra,24(sp)
    800041b4:	e822                	sd	s0,16(sp)
    800041b6:	1000                	addi	s0,sp,32
    800041b8:	fec40793          	addi	a5,s0,-20
    800041bc:	85be                	mv	a1,a5
    800041be:	4501                	li	a0,0
    800041c0:	00000097          	auipc	ra,0x0
    800041c4:	e7e080e7          	jalr	-386(ra) # 8000403e <argint>
    800041c8:	87aa                	mv	a5,a0
    800041ca:	0007d463          	bgez	a5,800041d2 <sys_exit+0x22>
    800041ce:	57fd                	li	a5,-1
    800041d0:	a809                	j	800041e2 <sys_exit+0x32>
    800041d2:	fec42783          	lw	a5,-20(s0)
    800041d6:	853e                	mv	a0,a5
    800041d8:	fffff097          	auipc	ra,0xfffff
    800041dc:	cce080e7          	jalr	-818(ra) # 80002ea6 <exit>
    800041e0:	4781                	li	a5,0
    800041e2:	853e                	mv	a0,a5
    800041e4:	60e2                	ld	ra,24(sp)
    800041e6:	6442                	ld	s0,16(sp)
    800041e8:	6105                	addi	sp,sp,32
    800041ea:	8082                	ret

00000000800041ec <sys_getpid>:
    800041ec:	1141                	addi	sp,sp,-16
    800041ee:	e406                	sd	ra,8(sp)
    800041f0:	e022                	sd	s0,0(sp)
    800041f2:	0800                	addi	s0,sp,16
    800041f4:	ffffe097          	auipc	ra,0xffffe
    800041f8:	5f6080e7          	jalr	1526(ra) # 800027ea <myproc>
    800041fc:	87aa                	mv	a5,a0
    800041fe:	5f9c                	lw	a5,56(a5)
    80004200:	853e                	mv	a0,a5
    80004202:	60a2                	ld	ra,8(sp)
    80004204:	6402                	ld	s0,0(sp)
    80004206:	0141                	addi	sp,sp,16
    80004208:	8082                	ret

000000008000420a <sys_fork>:
    8000420a:	1141                	addi	sp,sp,-16
    8000420c:	e406                	sd	ra,8(sp)
    8000420e:	e022                	sd	s0,0(sp)
    80004210:	0800                	addi	s0,sp,16
    80004212:	fffff097          	auipc	ra,0xfffff
    80004216:	aa6080e7          	jalr	-1370(ra) # 80002cb8 <fork>
    8000421a:	87aa                	mv	a5,a0
    8000421c:	853e                	mv	a0,a5
    8000421e:	60a2                	ld	ra,8(sp)
    80004220:	6402                	ld	s0,0(sp)
    80004222:	0141                	addi	sp,sp,16
    80004224:	8082                	ret

0000000080004226 <sys_wait>:
    80004226:	1101                	addi	sp,sp,-32
    80004228:	ec06                	sd	ra,24(sp)
    8000422a:	e822                	sd	s0,16(sp)
    8000422c:	1000                	addi	s0,sp,32
    8000422e:	fe840793          	addi	a5,s0,-24
    80004232:	85be                	mv	a1,a5
    80004234:	4501                	li	a0,0
    80004236:	00000097          	auipc	ra,0x0
    8000423a:	e40080e7          	jalr	-448(ra) # 80004076 <argaddr>
    8000423e:	87aa                	mv	a5,a0
    80004240:	0007d463          	bgez	a5,80004248 <sys_wait+0x22>
    80004244:	57fd                	li	a5,-1
    80004246:	a809                	j	80004258 <sys_wait+0x32>
    80004248:	fe843783          	ld	a5,-24(s0)
    8000424c:	853e                	mv	a0,a5
    8000424e:	fffff097          	auipc	ra,0xfffff
    80004252:	dee080e7          	jalr	-530(ra) # 8000303c <wait>
    80004256:	87aa                	mv	a5,a0
    80004258:	853e                	mv	a0,a5
    8000425a:	60e2                	ld	ra,24(sp)
    8000425c:	6442                	ld	s0,16(sp)
    8000425e:	6105                	addi	sp,sp,32
    80004260:	8082                	ret

0000000080004262 <sys_sbrk>:
    80004262:	1101                	addi	sp,sp,-32
    80004264:	ec06                	sd	ra,24(sp)
    80004266:	e822                	sd	s0,16(sp)
    80004268:	1000                	addi	s0,sp,32
    8000426a:	fe840793          	addi	a5,s0,-24
    8000426e:	85be                	mv	a1,a5
    80004270:	4501                	li	a0,0
    80004272:	00000097          	auipc	ra,0x0
    80004276:	dcc080e7          	jalr	-564(ra) # 8000403e <argint>
    8000427a:	87aa                	mv	a5,a0
    8000427c:	0007d463          	bgez	a5,80004284 <sys_sbrk+0x22>
    80004280:	57fd                	li	a5,-1
    80004282:	a03d                	j	800042b0 <sys_sbrk+0x4e>
    80004284:	ffffe097          	auipc	ra,0xffffe
    80004288:	566080e7          	jalr	1382(ra) # 800027ea <myproc>
    8000428c:	87aa                	mv	a5,a0
    8000428e:	67bc                	ld	a5,72(a5)
    80004290:	fef42623          	sw	a5,-20(s0)
    80004294:	fe842783          	lw	a5,-24(s0)
    80004298:	853e                	mv	a0,a5
    8000429a:	fffff097          	auipc	ra,0xfffff
    8000429e:	96c080e7          	jalr	-1684(ra) # 80002c06 <growproc>
    800042a2:	87aa                	mv	a5,a0
    800042a4:	0007d463          	bgez	a5,800042ac <sys_sbrk+0x4a>
    800042a8:	57fd                	li	a5,-1
    800042aa:	a019                	j	800042b0 <sys_sbrk+0x4e>
    800042ac:	fec42783          	lw	a5,-20(s0)
    800042b0:	853e                	mv	a0,a5
    800042b2:	60e2                	ld	ra,24(sp)
    800042b4:	6442                	ld	s0,16(sp)
    800042b6:	6105                	addi	sp,sp,32
    800042b8:	8082                	ret

00000000800042ba <sys_sleep>:
    800042ba:	1101                	addi	sp,sp,-32
    800042bc:	ec06                	sd	ra,24(sp)
    800042be:	e822                	sd	s0,16(sp)
    800042c0:	1000                	addi	s0,sp,32
    800042c2:	fe840793          	addi	a5,s0,-24
    800042c6:	85be                	mv	a1,a5
    800042c8:	4501                	li	a0,0
    800042ca:	00000097          	auipc	ra,0x0
    800042ce:	d74080e7          	jalr	-652(ra) # 8000403e <argint>
    800042d2:	87aa                	mv	a5,a0
    800042d4:	0007d463          	bgez	a5,800042dc <sys_sleep+0x22>
    800042d8:	57fd                	li	a5,-1
    800042da:	a079                	j	80004368 <sys_sleep+0xae>
    800042dc:	00016517          	auipc	a0,0x16
    800042e0:	dd450513          	addi	a0,a0,-556 # 8001a0b0 <tickslock>
    800042e4:	ffffd097          	auipc	ra,0xffffd
    800042e8:	f9c080e7          	jalr	-100(ra) # 80001280 <acquire>
    800042ec:	00008797          	auipc	a5,0x8
    800042f0:	d3478793          	addi	a5,a5,-716 # 8000c020 <ticks>
    800042f4:	439c                	lw	a5,0(a5)
    800042f6:	fef42623          	sw	a5,-20(s0)
    800042fa:	a835                	j	80004336 <sys_sleep+0x7c>
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	4ee080e7          	jalr	1262(ra) # 800027ea <myproc>
    80004304:	87aa                	mv	a5,a0
    80004306:	5b9c                	lw	a5,48(a5)
    80004308:	cb99                	beqz	a5,8000431e <sys_sleep+0x64>
    8000430a:	00016517          	auipc	a0,0x16
    8000430e:	da650513          	addi	a0,a0,-602 # 8001a0b0 <tickslock>
    80004312:	ffffd097          	auipc	ra,0xffffd
    80004316:	fd2080e7          	jalr	-46(ra) # 800012e4 <release>
    8000431a:	57fd                	li	a5,-1
    8000431c:	a0b1                	j	80004368 <sys_sleep+0xae>
    8000431e:	00016597          	auipc	a1,0x16
    80004322:	d9258593          	addi	a1,a1,-622 # 8001a0b0 <tickslock>
    80004326:	00008517          	auipc	a0,0x8
    8000432a:	cfa50513          	addi	a0,a0,-774 # 8000c020 <ticks>
    8000432e:	fffff097          	auipc	ra,0xfffff
    80004332:	090080e7          	jalr	144(ra) # 800033be <sleep>
    80004336:	00008797          	auipc	a5,0x8
    8000433a:	cea78793          	addi	a5,a5,-790 # 8000c020 <ticks>
    8000433e:	4398                	lw	a4,0(a5)
    80004340:	fec42783          	lw	a5,-20(s0)
    80004344:	40f707bb          	subw	a5,a4,a5
    80004348:	0007871b          	sext.w	a4,a5
    8000434c:	fe842783          	lw	a5,-24(s0)
    80004350:	2781                	sext.w	a5,a5
    80004352:	faf765e3          	bltu	a4,a5,800042fc <sys_sleep+0x42>
    80004356:	00016517          	auipc	a0,0x16
    8000435a:	d5a50513          	addi	a0,a0,-678 # 8001a0b0 <tickslock>
    8000435e:	ffffd097          	auipc	ra,0xffffd
    80004362:	f86080e7          	jalr	-122(ra) # 800012e4 <release>
    80004366:	4781                	li	a5,0
    80004368:	853e                	mv	a0,a5
    8000436a:	60e2                	ld	ra,24(sp)
    8000436c:	6442                	ld	s0,16(sp)
    8000436e:	6105                	addi	sp,sp,32
    80004370:	8082                	ret

0000000080004372 <sys_kill>:
    80004372:	1101                	addi	sp,sp,-32
    80004374:	ec06                	sd	ra,24(sp)
    80004376:	e822                	sd	s0,16(sp)
    80004378:	1000                	addi	s0,sp,32
    8000437a:	fec40793          	addi	a5,s0,-20
    8000437e:	85be                	mv	a1,a5
    80004380:	4501                	li	a0,0
    80004382:	00000097          	auipc	ra,0x0
    80004386:	cbc080e7          	jalr	-836(ra) # 8000403e <argint>
    8000438a:	87aa                	mv	a5,a0
    8000438c:	0007d463          	bgez	a5,80004394 <sys_kill+0x22>
    80004390:	57fd                	li	a5,-1
    80004392:	a809                	j	800043a4 <sys_kill+0x32>
    80004394:	fec42783          	lw	a5,-20(s0)
    80004398:	853e                	mv	a0,a5
    8000439a:	fffff097          	auipc	ra,0xfffff
    8000439e:	196080e7          	jalr	406(ra) # 80003530 <kill>
    800043a2:	87aa                	mv	a5,a0
    800043a4:	853e                	mv	a0,a5
    800043a6:	60e2                	ld	ra,24(sp)
    800043a8:	6442                	ld	s0,16(sp)
    800043aa:	6105                	addi	sp,sp,32
    800043ac:	8082                	ret

00000000800043ae <sys_uptime>:
    800043ae:	1101                	addi	sp,sp,-32
    800043b0:	ec06                	sd	ra,24(sp)
    800043b2:	e822                	sd	s0,16(sp)
    800043b4:	1000                	addi	s0,sp,32
    800043b6:	00016517          	auipc	a0,0x16
    800043ba:	cfa50513          	addi	a0,a0,-774 # 8001a0b0 <tickslock>
    800043be:	ffffd097          	auipc	ra,0xffffd
    800043c2:	ec2080e7          	jalr	-318(ra) # 80001280 <acquire>
    800043c6:	00008797          	auipc	a5,0x8
    800043ca:	c5a78793          	addi	a5,a5,-934 # 8000c020 <ticks>
    800043ce:	439c                	lw	a5,0(a5)
    800043d0:	fef42623          	sw	a5,-20(s0)
    800043d4:	00016517          	auipc	a0,0x16
    800043d8:	cdc50513          	addi	a0,a0,-804 # 8001a0b0 <tickslock>
    800043dc:	ffffd097          	auipc	ra,0xffffd
    800043e0:	f08080e7          	jalr	-248(ra) # 800012e4 <release>
    800043e4:	fec46783          	lwu	a5,-20(s0)
    800043e8:	853e                	mv	a0,a5
    800043ea:	60e2                	ld	ra,24(sp)
    800043ec:	6442                	ld	s0,16(sp)
    800043ee:	6105                	addi	sp,sp,32
    800043f0:	8082                	ret

00000000800043f2 <binit>:
    800043f2:	1101                	addi	sp,sp,-32
    800043f4:	ec06                	sd	ra,24(sp)
    800043f6:	e822                	sd	s0,16(sp)
    800043f8:	1000                	addi	s0,sp,32
    800043fa:	00007597          	auipc	a1,0x7
    800043fe:	ff658593          	addi	a1,a1,-10 # 8000b3f0 <etext+0x3f0>
    80004402:	00016517          	auipc	a0,0x16
    80004406:	cc650513          	addi	a0,a0,-826 # 8001a0c8 <bcache>
    8000440a:	ffffd097          	auipc	ra,0xffffd
    8000440e:	e46080e7          	jalr	-442(ra) # 80001250 <initlock>
    80004412:	00016717          	auipc	a4,0x16
    80004416:	cb670713          	addi	a4,a4,-842 # 8001a0c8 <bcache>
    8000441a:	67a1                	lui	a5,0x8
    8000441c:	97ba                	add	a5,a5,a4
    8000441e:	0001e717          	auipc	a4,0x1e
    80004422:	f1270713          	addi	a4,a4,-238 # 80022330 <bcache+0x8268>
    80004426:	2ae7b823          	sd	a4,688(a5) # 82b0 <_entry-0x7fff7d50>
    8000442a:	00016717          	auipc	a4,0x16
    8000442e:	c9e70713          	addi	a4,a4,-866 # 8001a0c8 <bcache>
    80004432:	67a1                	lui	a5,0x8
    80004434:	97ba                	add	a5,a5,a4
    80004436:	0001e717          	auipc	a4,0x1e
    8000443a:	efa70713          	addi	a4,a4,-262 # 80022330 <bcache+0x8268>
    8000443e:	2ae7bc23          	sd	a4,696(a5) # 82b8 <_entry-0x7fff7d48>
    80004442:	00016797          	auipc	a5,0x16
    80004446:	c9e78793          	addi	a5,a5,-866 # 8001a0e0 <bcache+0x18>
    8000444a:	fef43423          	sd	a5,-24(s0)
    8000444e:	a895                	j	800044c2 <binit+0xd0>
    80004450:	00016717          	auipc	a4,0x16
    80004454:	c7870713          	addi	a4,a4,-904 # 8001a0c8 <bcache>
    80004458:	67a1                	lui	a5,0x8
    8000445a:	97ba                	add	a5,a5,a4
    8000445c:	2b87b703          	ld	a4,696(a5) # 82b8 <_entry-0x7fff7d48>
    80004460:	fe843783          	ld	a5,-24(s0)
    80004464:	ebb8                	sd	a4,80(a5)
    80004466:	fe843783          	ld	a5,-24(s0)
    8000446a:	0001e717          	auipc	a4,0x1e
    8000446e:	ec670713          	addi	a4,a4,-314 # 80022330 <bcache+0x8268>
    80004472:	e7b8                	sd	a4,72(a5)
    80004474:	fe843783          	ld	a5,-24(s0)
    80004478:	07c1                	addi	a5,a5,16
    8000447a:	00007597          	auipc	a1,0x7
    8000447e:	f7e58593          	addi	a1,a1,-130 # 8000b3f8 <etext+0x3f8>
    80004482:	853e                	mv	a0,a5
    80004484:	00002097          	auipc	ra,0x2
    80004488:	006080e7          	jalr	6(ra) # 8000648a <initsleeplock>
    8000448c:	00016717          	auipc	a4,0x16
    80004490:	c3c70713          	addi	a4,a4,-964 # 8001a0c8 <bcache>
    80004494:	67a1                	lui	a5,0x8
    80004496:	97ba                	add	a5,a5,a4
    80004498:	2b87b783          	ld	a5,696(a5) # 82b8 <_entry-0x7fff7d48>
    8000449c:	fe843703          	ld	a4,-24(s0)
    800044a0:	e7b8                	sd	a4,72(a5)
    800044a2:	00016717          	auipc	a4,0x16
    800044a6:	c2670713          	addi	a4,a4,-986 # 8001a0c8 <bcache>
    800044aa:	67a1                	lui	a5,0x8
    800044ac:	97ba                	add	a5,a5,a4
    800044ae:	fe843703          	ld	a4,-24(s0)
    800044b2:	2ae7bc23          	sd	a4,696(a5) # 82b8 <_entry-0x7fff7d48>
    800044b6:	fe843783          	ld	a5,-24(s0)
    800044ba:	45878793          	addi	a5,a5,1112
    800044be:	fef43423          	sd	a5,-24(s0)
    800044c2:	0001e797          	auipc	a5,0x1e
    800044c6:	e6e78793          	addi	a5,a5,-402 # 80022330 <bcache+0x8268>
    800044ca:	fe843703          	ld	a4,-24(s0)
    800044ce:	f8f761e3          	bltu	a4,a5,80004450 <binit+0x5e>
    800044d2:	0001                	nop
    800044d4:	0001                	nop
    800044d6:	60e2                	ld	ra,24(sp)
    800044d8:	6442                	ld	s0,16(sp)
    800044da:	6105                	addi	sp,sp,32
    800044dc:	8082                	ret

00000000800044de <bget>:
    800044de:	7179                	addi	sp,sp,-48
    800044e0:	f406                	sd	ra,40(sp)
    800044e2:	f022                	sd	s0,32(sp)
    800044e4:	1800                	addi	s0,sp,48
    800044e6:	87aa                	mv	a5,a0
    800044e8:	872e                	mv	a4,a1
    800044ea:	fcf42e23          	sw	a5,-36(s0)
    800044ee:	87ba                	mv	a5,a4
    800044f0:	fcf42c23          	sw	a5,-40(s0)
    800044f4:	00016517          	auipc	a0,0x16
    800044f8:	bd450513          	addi	a0,a0,-1068 # 8001a0c8 <bcache>
    800044fc:	ffffd097          	auipc	ra,0xffffd
    80004500:	d84080e7          	jalr	-636(ra) # 80001280 <acquire>
    80004504:	00016717          	auipc	a4,0x16
    80004508:	bc470713          	addi	a4,a4,-1084 # 8001a0c8 <bcache>
    8000450c:	67a1                	lui	a5,0x8
    8000450e:	97ba                	add	a5,a5,a4
    80004510:	2b87b783          	ld	a5,696(a5) # 82b8 <_entry-0x7fff7d48>
    80004514:	fef43423          	sd	a5,-24(s0)
    80004518:	a095                	j	8000457c <bget+0x9e>
    8000451a:	fe843783          	ld	a5,-24(s0)
    8000451e:	4798                	lw	a4,8(a5)
    80004520:	fdc42783          	lw	a5,-36(s0)
    80004524:	2781                	sext.w	a5,a5
    80004526:	04e79663          	bne	a5,a4,80004572 <bget+0x94>
    8000452a:	fe843783          	ld	a5,-24(s0)
    8000452e:	47d8                	lw	a4,12(a5)
    80004530:	fd842783          	lw	a5,-40(s0)
    80004534:	2781                	sext.w	a5,a5
    80004536:	02e79e63          	bne	a5,a4,80004572 <bget+0x94>
    8000453a:	fe843783          	ld	a5,-24(s0)
    8000453e:	43bc                	lw	a5,64(a5)
    80004540:	2785                	addiw	a5,a5,1
    80004542:	0007871b          	sext.w	a4,a5
    80004546:	fe843783          	ld	a5,-24(s0)
    8000454a:	c3b8                	sw	a4,64(a5)
    8000454c:	00016517          	auipc	a0,0x16
    80004550:	b7c50513          	addi	a0,a0,-1156 # 8001a0c8 <bcache>
    80004554:	ffffd097          	auipc	ra,0xffffd
    80004558:	d90080e7          	jalr	-624(ra) # 800012e4 <release>
    8000455c:	fe843783          	ld	a5,-24(s0)
    80004560:	07c1                	addi	a5,a5,16
    80004562:	853e                	mv	a0,a5
    80004564:	00002097          	auipc	ra,0x2
    80004568:	f72080e7          	jalr	-142(ra) # 800064d6 <acquiresleep>
    8000456c:	fe843783          	ld	a5,-24(s0)
    80004570:	a07d                	j	8000461e <bget+0x140>
    80004572:	fe843783          	ld	a5,-24(s0)
    80004576:	6bbc                	ld	a5,80(a5)
    80004578:	fef43423          	sd	a5,-24(s0)
    8000457c:	fe843703          	ld	a4,-24(s0)
    80004580:	0001e797          	auipc	a5,0x1e
    80004584:	db078793          	addi	a5,a5,-592 # 80022330 <bcache+0x8268>
    80004588:	f8f719e3          	bne	a4,a5,8000451a <bget+0x3c>
    8000458c:	00016717          	auipc	a4,0x16
    80004590:	b3c70713          	addi	a4,a4,-1220 # 8001a0c8 <bcache>
    80004594:	67a1                	lui	a5,0x8
    80004596:	97ba                	add	a5,a5,a4
    80004598:	2b07b783          	ld	a5,688(a5) # 82b0 <_entry-0x7fff7d50>
    8000459c:	fef43423          	sd	a5,-24(s0)
    800045a0:	a8b9                	j	800045fe <bget+0x120>
    800045a2:	fe843783          	ld	a5,-24(s0)
    800045a6:	43bc                	lw	a5,64(a5)
    800045a8:	e7b1                	bnez	a5,800045f4 <bget+0x116>
    800045aa:	fe843783          	ld	a5,-24(s0)
    800045ae:	fdc42703          	lw	a4,-36(s0)
    800045b2:	c798                	sw	a4,8(a5)
    800045b4:	fe843783          	ld	a5,-24(s0)
    800045b8:	fd842703          	lw	a4,-40(s0)
    800045bc:	c7d8                	sw	a4,12(a5)
    800045be:	fe843783          	ld	a5,-24(s0)
    800045c2:	0007a023          	sw	zero,0(a5)
    800045c6:	fe843783          	ld	a5,-24(s0)
    800045ca:	4705                	li	a4,1
    800045cc:	c3b8                	sw	a4,64(a5)
    800045ce:	00016517          	auipc	a0,0x16
    800045d2:	afa50513          	addi	a0,a0,-1286 # 8001a0c8 <bcache>
    800045d6:	ffffd097          	auipc	ra,0xffffd
    800045da:	d0e080e7          	jalr	-754(ra) # 800012e4 <release>
    800045de:	fe843783          	ld	a5,-24(s0)
    800045e2:	07c1                	addi	a5,a5,16
    800045e4:	853e                	mv	a0,a5
    800045e6:	00002097          	auipc	ra,0x2
    800045ea:	ef0080e7          	jalr	-272(ra) # 800064d6 <acquiresleep>
    800045ee:	fe843783          	ld	a5,-24(s0)
    800045f2:	a035                	j	8000461e <bget+0x140>
    800045f4:	fe843783          	ld	a5,-24(s0)
    800045f8:	67bc                	ld	a5,72(a5)
    800045fa:	fef43423          	sd	a5,-24(s0)
    800045fe:	fe843703          	ld	a4,-24(s0)
    80004602:	0001e797          	auipc	a5,0x1e
    80004606:	d2e78793          	addi	a5,a5,-722 # 80022330 <bcache+0x8268>
    8000460a:	f8f71ce3          	bne	a4,a5,800045a2 <bget+0xc4>
    8000460e:	00007517          	auipc	a0,0x7
    80004612:	df250513          	addi	a0,a0,-526 # 8000b400 <etext+0x400>
    80004616:	ffffc097          	auipc	ra,0xffffc
    8000461a:	63c080e7          	jalr	1596(ra) # 80000c52 <panic>
    8000461e:	853e                	mv	a0,a5
    80004620:	70a2                	ld	ra,40(sp)
    80004622:	7402                	ld	s0,32(sp)
    80004624:	6145                	addi	sp,sp,48
    80004626:	8082                	ret

0000000080004628 <bread>:
    80004628:	7179                	addi	sp,sp,-48
    8000462a:	f406                	sd	ra,40(sp)
    8000462c:	f022                	sd	s0,32(sp)
    8000462e:	1800                	addi	s0,sp,48
    80004630:	87aa                	mv	a5,a0
    80004632:	872e                	mv	a4,a1
    80004634:	fcf42e23          	sw	a5,-36(s0)
    80004638:	87ba                	mv	a5,a4
    8000463a:	fcf42c23          	sw	a5,-40(s0)
    8000463e:	fd842703          	lw	a4,-40(s0)
    80004642:	fdc42783          	lw	a5,-36(s0)
    80004646:	85ba                	mv	a1,a4
    80004648:	853e                	mv	a0,a5
    8000464a:	00000097          	auipc	ra,0x0
    8000464e:	e94080e7          	jalr	-364(ra) # 800044de <bget>
    80004652:	fea43423          	sd	a0,-24(s0)
    80004656:	fe843783          	ld	a5,-24(s0)
    8000465a:	439c                	lw	a5,0(a5)
    8000465c:	ef81                	bnez	a5,80004674 <bread+0x4c>
    8000465e:	4581                	li	a1,0
    80004660:	fe843503          	ld	a0,-24(s0)
    80004664:	00004097          	auipc	ra,0x4
    80004668:	796080e7          	jalr	1942(ra) # 80008dfa <virtio_disk_rw>
    8000466c:	fe843783          	ld	a5,-24(s0)
    80004670:	4705                	li	a4,1
    80004672:	c398                	sw	a4,0(a5)
    80004674:	fe843783          	ld	a5,-24(s0)
    80004678:	853e                	mv	a0,a5
    8000467a:	70a2                	ld	ra,40(sp)
    8000467c:	7402                	ld	s0,32(sp)
    8000467e:	6145                	addi	sp,sp,48
    80004680:	8082                	ret

0000000080004682 <bwrite>:
    80004682:	1101                	addi	sp,sp,-32
    80004684:	ec06                	sd	ra,24(sp)
    80004686:	e822                	sd	s0,16(sp)
    80004688:	1000                	addi	s0,sp,32
    8000468a:	fea43423          	sd	a0,-24(s0)
    8000468e:	fe843783          	ld	a5,-24(s0)
    80004692:	07c1                	addi	a5,a5,16
    80004694:	853e                	mv	a0,a5
    80004696:	00002097          	auipc	ra,0x2
    8000469a:	f00080e7          	jalr	-256(ra) # 80006596 <holdingsleep>
    8000469e:	87aa                	mv	a5,a0
    800046a0:	eb89                	bnez	a5,800046b2 <bwrite+0x30>
    800046a2:	00007517          	auipc	a0,0x7
    800046a6:	d7650513          	addi	a0,a0,-650 # 8000b418 <etext+0x418>
    800046aa:	ffffc097          	auipc	ra,0xffffc
    800046ae:	5a8080e7          	jalr	1448(ra) # 80000c52 <panic>
    800046b2:	4585                	li	a1,1
    800046b4:	fe843503          	ld	a0,-24(s0)
    800046b8:	00004097          	auipc	ra,0x4
    800046bc:	742080e7          	jalr	1858(ra) # 80008dfa <virtio_disk_rw>
    800046c0:	0001                	nop
    800046c2:	60e2                	ld	ra,24(sp)
    800046c4:	6442                	ld	s0,16(sp)
    800046c6:	6105                	addi	sp,sp,32
    800046c8:	8082                	ret

00000000800046ca <brelse>:
    800046ca:	1101                	addi	sp,sp,-32
    800046cc:	ec06                	sd	ra,24(sp)
    800046ce:	e822                	sd	s0,16(sp)
    800046d0:	1000                	addi	s0,sp,32
    800046d2:	fea43423          	sd	a0,-24(s0)
    800046d6:	fe843783          	ld	a5,-24(s0)
    800046da:	07c1                	addi	a5,a5,16
    800046dc:	853e                	mv	a0,a5
    800046de:	00002097          	auipc	ra,0x2
    800046e2:	eb8080e7          	jalr	-328(ra) # 80006596 <holdingsleep>
    800046e6:	87aa                	mv	a5,a0
    800046e8:	eb89                	bnez	a5,800046fa <brelse+0x30>
    800046ea:	00007517          	auipc	a0,0x7
    800046ee:	d3650513          	addi	a0,a0,-714 # 8000b420 <etext+0x420>
    800046f2:	ffffc097          	auipc	ra,0xffffc
    800046f6:	560080e7          	jalr	1376(ra) # 80000c52 <panic>
    800046fa:	fe843783          	ld	a5,-24(s0)
    800046fe:	07c1                	addi	a5,a5,16
    80004700:	853e                	mv	a0,a5
    80004702:	00002097          	auipc	ra,0x2
    80004706:	e42080e7          	jalr	-446(ra) # 80006544 <releasesleep>
    8000470a:	00016517          	auipc	a0,0x16
    8000470e:	9be50513          	addi	a0,a0,-1602 # 8001a0c8 <bcache>
    80004712:	ffffd097          	auipc	ra,0xffffd
    80004716:	b6e080e7          	jalr	-1170(ra) # 80001280 <acquire>
    8000471a:	fe843783          	ld	a5,-24(s0)
    8000471e:	43bc                	lw	a5,64(a5)
    80004720:	37fd                	addiw	a5,a5,-1
    80004722:	0007871b          	sext.w	a4,a5
    80004726:	fe843783          	ld	a5,-24(s0)
    8000472a:	c3b8                	sw	a4,64(a5)
    8000472c:	fe843783          	ld	a5,-24(s0)
    80004730:	43bc                	lw	a5,64(a5)
    80004732:	e7b5                	bnez	a5,8000479e <brelse+0xd4>
    80004734:	fe843783          	ld	a5,-24(s0)
    80004738:	6bbc                	ld	a5,80(a5)
    8000473a:	fe843703          	ld	a4,-24(s0)
    8000473e:	6738                	ld	a4,72(a4)
    80004740:	e7b8                	sd	a4,72(a5)
    80004742:	fe843783          	ld	a5,-24(s0)
    80004746:	67bc                	ld	a5,72(a5)
    80004748:	fe843703          	ld	a4,-24(s0)
    8000474c:	6b38                	ld	a4,80(a4)
    8000474e:	ebb8                	sd	a4,80(a5)
    80004750:	00016717          	auipc	a4,0x16
    80004754:	97870713          	addi	a4,a4,-1672 # 8001a0c8 <bcache>
    80004758:	67a1                	lui	a5,0x8
    8000475a:	97ba                	add	a5,a5,a4
    8000475c:	2b87b703          	ld	a4,696(a5) # 82b8 <_entry-0x7fff7d48>
    80004760:	fe843783          	ld	a5,-24(s0)
    80004764:	ebb8                	sd	a4,80(a5)
    80004766:	fe843783          	ld	a5,-24(s0)
    8000476a:	0001e717          	auipc	a4,0x1e
    8000476e:	bc670713          	addi	a4,a4,-1082 # 80022330 <bcache+0x8268>
    80004772:	e7b8                	sd	a4,72(a5)
    80004774:	00016717          	auipc	a4,0x16
    80004778:	95470713          	addi	a4,a4,-1708 # 8001a0c8 <bcache>
    8000477c:	67a1                	lui	a5,0x8
    8000477e:	97ba                	add	a5,a5,a4
    80004780:	2b87b783          	ld	a5,696(a5) # 82b8 <_entry-0x7fff7d48>
    80004784:	fe843703          	ld	a4,-24(s0)
    80004788:	e7b8                	sd	a4,72(a5)
    8000478a:	00016717          	auipc	a4,0x16
    8000478e:	93e70713          	addi	a4,a4,-1730 # 8001a0c8 <bcache>
    80004792:	67a1                	lui	a5,0x8
    80004794:	97ba                	add	a5,a5,a4
    80004796:	fe843703          	ld	a4,-24(s0)
    8000479a:	2ae7bc23          	sd	a4,696(a5) # 82b8 <_entry-0x7fff7d48>
    8000479e:	00016517          	auipc	a0,0x16
    800047a2:	92a50513          	addi	a0,a0,-1750 # 8001a0c8 <bcache>
    800047a6:	ffffd097          	auipc	ra,0xffffd
    800047aa:	b3e080e7          	jalr	-1218(ra) # 800012e4 <release>
    800047ae:	0001                	nop
    800047b0:	60e2                	ld	ra,24(sp)
    800047b2:	6442                	ld	s0,16(sp)
    800047b4:	6105                	addi	sp,sp,32
    800047b6:	8082                	ret

00000000800047b8 <bpin>:
    800047b8:	1101                	addi	sp,sp,-32
    800047ba:	ec06                	sd	ra,24(sp)
    800047bc:	e822                	sd	s0,16(sp)
    800047be:	1000                	addi	s0,sp,32
    800047c0:	fea43423          	sd	a0,-24(s0)
    800047c4:	00016517          	auipc	a0,0x16
    800047c8:	90450513          	addi	a0,a0,-1788 # 8001a0c8 <bcache>
    800047cc:	ffffd097          	auipc	ra,0xffffd
    800047d0:	ab4080e7          	jalr	-1356(ra) # 80001280 <acquire>
    800047d4:	fe843783          	ld	a5,-24(s0)
    800047d8:	43bc                	lw	a5,64(a5)
    800047da:	2785                	addiw	a5,a5,1
    800047dc:	0007871b          	sext.w	a4,a5
    800047e0:	fe843783          	ld	a5,-24(s0)
    800047e4:	c3b8                	sw	a4,64(a5)
    800047e6:	00016517          	auipc	a0,0x16
    800047ea:	8e250513          	addi	a0,a0,-1822 # 8001a0c8 <bcache>
    800047ee:	ffffd097          	auipc	ra,0xffffd
    800047f2:	af6080e7          	jalr	-1290(ra) # 800012e4 <release>
    800047f6:	0001                	nop
    800047f8:	60e2                	ld	ra,24(sp)
    800047fa:	6442                	ld	s0,16(sp)
    800047fc:	6105                	addi	sp,sp,32
    800047fe:	8082                	ret

0000000080004800 <bunpin>:
    80004800:	1101                	addi	sp,sp,-32
    80004802:	ec06                	sd	ra,24(sp)
    80004804:	e822                	sd	s0,16(sp)
    80004806:	1000                	addi	s0,sp,32
    80004808:	fea43423          	sd	a0,-24(s0)
    8000480c:	00016517          	auipc	a0,0x16
    80004810:	8bc50513          	addi	a0,a0,-1860 # 8001a0c8 <bcache>
    80004814:	ffffd097          	auipc	ra,0xffffd
    80004818:	a6c080e7          	jalr	-1428(ra) # 80001280 <acquire>
    8000481c:	fe843783          	ld	a5,-24(s0)
    80004820:	43bc                	lw	a5,64(a5)
    80004822:	37fd                	addiw	a5,a5,-1
    80004824:	0007871b          	sext.w	a4,a5
    80004828:	fe843783          	ld	a5,-24(s0)
    8000482c:	c3b8                	sw	a4,64(a5)
    8000482e:	00016517          	auipc	a0,0x16
    80004832:	89a50513          	addi	a0,a0,-1894 # 8001a0c8 <bcache>
    80004836:	ffffd097          	auipc	ra,0xffffd
    8000483a:	aae080e7          	jalr	-1362(ra) # 800012e4 <release>
    8000483e:	0001                	nop
    80004840:	60e2                	ld	ra,24(sp)
    80004842:	6442                	ld	s0,16(sp)
    80004844:	6105                	addi	sp,sp,32
    80004846:	8082                	ret

0000000080004848 <readsb>:
    80004848:	7179                	addi	sp,sp,-48
    8000484a:	f406                	sd	ra,40(sp)
    8000484c:	f022                	sd	s0,32(sp)
    8000484e:	1800                	addi	s0,sp,48
    80004850:	87aa                	mv	a5,a0
    80004852:	fcb43823          	sd	a1,-48(s0)
    80004856:	fcf42e23          	sw	a5,-36(s0)
    8000485a:	fdc42783          	lw	a5,-36(s0)
    8000485e:	4585                	li	a1,1
    80004860:	853e                	mv	a0,a5
    80004862:	00000097          	auipc	ra,0x0
    80004866:	dc6080e7          	jalr	-570(ra) # 80004628 <bread>
    8000486a:	fea43423          	sd	a0,-24(s0)
    8000486e:	fe843783          	ld	a5,-24(s0)
    80004872:	05878793          	addi	a5,a5,88
    80004876:	02000613          	li	a2,32
    8000487a:	85be                	mv	a1,a5
    8000487c:	fd043503          	ld	a0,-48(s0)
    80004880:	ffffd097          	auipc	ra,0xffffd
    80004884:	cb8080e7          	jalr	-840(ra) # 80001538 <memmove>
    80004888:	fe843503          	ld	a0,-24(s0)
    8000488c:	00000097          	auipc	ra,0x0
    80004890:	e3e080e7          	jalr	-450(ra) # 800046ca <brelse>
    80004894:	0001                	nop
    80004896:	70a2                	ld	ra,40(sp)
    80004898:	7402                	ld	s0,32(sp)
    8000489a:	6145                	addi	sp,sp,48
    8000489c:	8082                	ret

000000008000489e <fsinit>:
    8000489e:	1101                	addi	sp,sp,-32
    800048a0:	ec06                	sd	ra,24(sp)
    800048a2:	e822                	sd	s0,16(sp)
    800048a4:	1000                	addi	s0,sp,32
    800048a6:	87aa                	mv	a5,a0
    800048a8:	fef42623          	sw	a5,-20(s0)
    800048ac:	fec42783          	lw	a5,-20(s0)
    800048b0:	0001e597          	auipc	a1,0x1e
    800048b4:	ed858593          	addi	a1,a1,-296 # 80022788 <sb>
    800048b8:	853e                	mv	a0,a5
    800048ba:	00000097          	auipc	ra,0x0
    800048be:	f8e080e7          	jalr	-114(ra) # 80004848 <readsb>
    800048c2:	0001e797          	auipc	a5,0x1e
    800048c6:	ec678793          	addi	a5,a5,-314 # 80022788 <sb>
    800048ca:	439c                	lw	a5,0(a5)
    800048cc:	873e                	mv	a4,a5
    800048ce:	102037b7          	lui	a5,0x10203
    800048d2:	04078793          	addi	a5,a5,64 # 10203040 <_entry-0x6fdfcfc0>
    800048d6:	00f70a63          	beq	a4,a5,800048ea <fsinit+0x4c>
    800048da:	00007517          	auipc	a0,0x7
    800048de:	b4e50513          	addi	a0,a0,-1202 # 8000b428 <etext+0x428>
    800048e2:	ffffc097          	auipc	ra,0xffffc
    800048e6:	370080e7          	jalr	880(ra) # 80000c52 <panic>
    800048ea:	fec42783          	lw	a5,-20(s0)
    800048ee:	0001e597          	auipc	a1,0x1e
    800048f2:	e9a58593          	addi	a1,a1,-358 # 80022788 <sb>
    800048f6:	853e                	mv	a0,a5
    800048f8:	00001097          	auipc	ra,0x1
    800048fc:	476080e7          	jalr	1142(ra) # 80005d6e <initlog>
    80004900:	0001                	nop
    80004902:	60e2                	ld	ra,24(sp)
    80004904:	6442                	ld	s0,16(sp)
    80004906:	6105                	addi	sp,sp,32
    80004908:	8082                	ret

000000008000490a <bzero>:
    8000490a:	7179                	addi	sp,sp,-48
    8000490c:	f406                	sd	ra,40(sp)
    8000490e:	f022                	sd	s0,32(sp)
    80004910:	1800                	addi	s0,sp,48
    80004912:	87aa                	mv	a5,a0
    80004914:	872e                	mv	a4,a1
    80004916:	fcf42e23          	sw	a5,-36(s0)
    8000491a:	87ba                	mv	a5,a4
    8000491c:	fcf42c23          	sw	a5,-40(s0)
    80004920:	fdc42783          	lw	a5,-36(s0)
    80004924:	fd842703          	lw	a4,-40(s0)
    80004928:	85ba                	mv	a1,a4
    8000492a:	853e                	mv	a0,a5
    8000492c:	00000097          	auipc	ra,0x0
    80004930:	cfc080e7          	jalr	-772(ra) # 80004628 <bread>
    80004934:	fea43423          	sd	a0,-24(s0)
    80004938:	fe843783          	ld	a5,-24(s0)
    8000493c:	05878793          	addi	a5,a5,88
    80004940:	40000613          	li	a2,1024
    80004944:	4581                	li	a1,0
    80004946:	853e                	mv	a0,a5
    80004948:	ffffd097          	auipc	ra,0xffffd
    8000494c:	b0c080e7          	jalr	-1268(ra) # 80001454 <memset>
    80004950:	fe843503          	ld	a0,-24(s0)
    80004954:	00002097          	auipc	ra,0x2
    80004958:	a02080e7          	jalr	-1534(ra) # 80006356 <log_write>
    8000495c:	fe843503          	ld	a0,-24(s0)
    80004960:	00000097          	auipc	ra,0x0
    80004964:	d6a080e7          	jalr	-662(ra) # 800046ca <brelse>
    80004968:	0001                	nop
    8000496a:	70a2                	ld	ra,40(sp)
    8000496c:	7402                	ld	s0,32(sp)
    8000496e:	6145                	addi	sp,sp,48
    80004970:	8082                	ret

0000000080004972 <balloc>:
    80004972:	7139                	addi	sp,sp,-64
    80004974:	fc06                	sd	ra,56(sp)
    80004976:	f822                	sd	s0,48(sp)
    80004978:	0080                	addi	s0,sp,64
    8000497a:	87aa                	mv	a5,a0
    8000497c:	fcf42623          	sw	a5,-52(s0)
    80004980:	fe043023          	sd	zero,-32(s0)
    80004984:	fe042623          	sw	zero,-20(s0)
    80004988:	a2b5                	j	80004af4 <balloc+0x182>
    8000498a:	fec42783          	lw	a5,-20(s0)
    8000498e:	41f7d71b          	sraiw	a4,a5,0x1f
    80004992:	0137571b          	srliw	a4,a4,0x13
    80004996:	9fb9                	addw	a5,a5,a4
    80004998:	40d7d79b          	sraiw	a5,a5,0xd
    8000499c:	2781                	sext.w	a5,a5
    8000499e:	0007871b          	sext.w	a4,a5
    800049a2:	0001e797          	auipc	a5,0x1e
    800049a6:	de678793          	addi	a5,a5,-538 # 80022788 <sb>
    800049aa:	4fdc                	lw	a5,28(a5)
    800049ac:	9fb9                	addw	a5,a5,a4
    800049ae:	0007871b          	sext.w	a4,a5
    800049b2:	fcc42783          	lw	a5,-52(s0)
    800049b6:	85ba                	mv	a1,a4
    800049b8:	853e                	mv	a0,a5
    800049ba:	00000097          	auipc	ra,0x0
    800049be:	c6e080e7          	jalr	-914(ra) # 80004628 <bread>
    800049c2:	fea43023          	sd	a0,-32(s0)
    800049c6:	fe042423          	sw	zero,-24(s0)
    800049ca:	a0dd                	j	80004ab0 <balloc+0x13e>
    800049cc:	fe842703          	lw	a4,-24(s0)
    800049d0:	41f7579b          	sraiw	a5,a4,0x1f
    800049d4:	01d7d79b          	srliw	a5,a5,0x1d
    800049d8:	9f3d                	addw	a4,a4,a5
    800049da:	8b1d                	andi	a4,a4,7
    800049dc:	40f707bb          	subw	a5,a4,a5
    800049e0:	2781                	sext.w	a5,a5
    800049e2:	4705                	li	a4,1
    800049e4:	00f717bb          	sllw	a5,a4,a5
    800049e8:	fcf42e23          	sw	a5,-36(s0)
    800049ec:	fe842783          	lw	a5,-24(s0)
    800049f0:	41f7d71b          	sraiw	a4,a5,0x1f
    800049f4:	01d7571b          	srliw	a4,a4,0x1d
    800049f8:	9fb9                	addw	a5,a5,a4
    800049fa:	4037d79b          	sraiw	a5,a5,0x3
    800049fe:	2781                	sext.w	a5,a5
    80004a00:	fe043703          	ld	a4,-32(s0)
    80004a04:	97ba                	add	a5,a5,a4
    80004a06:	0587c783          	lbu	a5,88(a5)
    80004a0a:	0007871b          	sext.w	a4,a5
    80004a0e:	fdc42783          	lw	a5,-36(s0)
    80004a12:	8ff9                	and	a5,a5,a4
    80004a14:	2781                	sext.w	a5,a5
    80004a16:	ebc1                	bnez	a5,80004aa6 <balloc+0x134>
    80004a18:	fe842783          	lw	a5,-24(s0)
    80004a1c:	41f7d71b          	sraiw	a4,a5,0x1f
    80004a20:	01d7571b          	srliw	a4,a4,0x1d
    80004a24:	9fb9                	addw	a5,a5,a4
    80004a26:	4037d79b          	sraiw	a5,a5,0x3
    80004a2a:	2781                	sext.w	a5,a5
    80004a2c:	fe043703          	ld	a4,-32(s0)
    80004a30:	973e                	add	a4,a4,a5
    80004a32:	05874703          	lbu	a4,88(a4)
    80004a36:	0187169b          	slliw	a3,a4,0x18
    80004a3a:	4186d69b          	sraiw	a3,a3,0x18
    80004a3e:	fdc42703          	lw	a4,-36(s0)
    80004a42:	0187171b          	slliw	a4,a4,0x18
    80004a46:	4187571b          	sraiw	a4,a4,0x18
    80004a4a:	8f55                	or	a4,a4,a3
    80004a4c:	0187171b          	slliw	a4,a4,0x18
    80004a50:	4187571b          	sraiw	a4,a4,0x18
    80004a54:	0ff77713          	andi	a4,a4,255
    80004a58:	fe043683          	ld	a3,-32(s0)
    80004a5c:	97b6                	add	a5,a5,a3
    80004a5e:	04e78c23          	sb	a4,88(a5)
    80004a62:	fe043503          	ld	a0,-32(s0)
    80004a66:	00002097          	auipc	ra,0x2
    80004a6a:	8f0080e7          	jalr	-1808(ra) # 80006356 <log_write>
    80004a6e:	fe043503          	ld	a0,-32(s0)
    80004a72:	00000097          	auipc	ra,0x0
    80004a76:	c58080e7          	jalr	-936(ra) # 800046ca <brelse>
    80004a7a:	fcc42683          	lw	a3,-52(s0)
    80004a7e:	fec42703          	lw	a4,-20(s0)
    80004a82:	fe842783          	lw	a5,-24(s0)
    80004a86:	9fb9                	addw	a5,a5,a4
    80004a88:	2781                	sext.w	a5,a5
    80004a8a:	85be                	mv	a1,a5
    80004a8c:	8536                	mv	a0,a3
    80004a8e:	00000097          	auipc	ra,0x0
    80004a92:	e7c080e7          	jalr	-388(ra) # 8000490a <bzero>
    80004a96:	fec42703          	lw	a4,-20(s0)
    80004a9a:	fe842783          	lw	a5,-24(s0)
    80004a9e:	9fb9                	addw	a5,a5,a4
    80004aa0:	2781                	sext.w	a5,a5
    80004aa2:	2781                	sext.w	a5,a5
    80004aa4:	a88d                	j	80004b16 <balloc+0x1a4>
    80004aa6:	fe842783          	lw	a5,-24(s0)
    80004aaa:	2785                	addiw	a5,a5,1
    80004aac:	fef42423          	sw	a5,-24(s0)
    80004ab0:	fe842783          	lw	a5,-24(s0)
    80004ab4:	0007871b          	sext.w	a4,a5
    80004ab8:	6789                	lui	a5,0x2
    80004aba:	02f75163          	bge	a4,a5,80004adc <balloc+0x16a>
    80004abe:	fec42703          	lw	a4,-20(s0)
    80004ac2:	fe842783          	lw	a5,-24(s0)
    80004ac6:	9fb9                	addw	a5,a5,a4
    80004ac8:	2781                	sext.w	a5,a5
    80004aca:	0007871b          	sext.w	a4,a5
    80004ace:	0001e797          	auipc	a5,0x1e
    80004ad2:	cba78793          	addi	a5,a5,-838 # 80022788 <sb>
    80004ad6:	43dc                	lw	a5,4(a5)
    80004ad8:	eef76ae3          	bltu	a4,a5,800049cc <balloc+0x5a>
    80004adc:	fe043503          	ld	a0,-32(s0)
    80004ae0:	00000097          	auipc	ra,0x0
    80004ae4:	bea080e7          	jalr	-1046(ra) # 800046ca <brelse>
    80004ae8:	fec42703          	lw	a4,-20(s0)
    80004aec:	6789                	lui	a5,0x2
    80004aee:	9fb9                	addw	a5,a5,a4
    80004af0:	fef42623          	sw	a5,-20(s0)
    80004af4:	0001e797          	auipc	a5,0x1e
    80004af8:	c9478793          	addi	a5,a5,-876 # 80022788 <sb>
    80004afc:	43d8                	lw	a4,4(a5)
    80004afe:	fec42783          	lw	a5,-20(s0)
    80004b02:	e8e7e4e3          	bltu	a5,a4,8000498a <balloc+0x18>
    80004b06:	00007517          	auipc	a0,0x7
    80004b0a:	93a50513          	addi	a0,a0,-1734 # 8000b440 <etext+0x440>
    80004b0e:	ffffc097          	auipc	ra,0xffffc
    80004b12:	144080e7          	jalr	324(ra) # 80000c52 <panic>
    80004b16:	853e                	mv	a0,a5
    80004b18:	70e2                	ld	ra,56(sp)
    80004b1a:	7442                	ld	s0,48(sp)
    80004b1c:	6121                	addi	sp,sp,64
    80004b1e:	8082                	ret

0000000080004b20 <bfree>:
    80004b20:	7179                	addi	sp,sp,-48
    80004b22:	f406                	sd	ra,40(sp)
    80004b24:	f022                	sd	s0,32(sp)
    80004b26:	1800                	addi	s0,sp,48
    80004b28:	87aa                	mv	a5,a0
    80004b2a:	872e                	mv	a4,a1
    80004b2c:	fcf42e23          	sw	a5,-36(s0)
    80004b30:	87ba                	mv	a5,a4
    80004b32:	fcf42c23          	sw	a5,-40(s0)
    80004b36:	fdc42683          	lw	a3,-36(s0)
    80004b3a:	fd842783          	lw	a5,-40(s0)
    80004b3e:	00d7d79b          	srliw	a5,a5,0xd
    80004b42:	0007871b          	sext.w	a4,a5
    80004b46:	0001e797          	auipc	a5,0x1e
    80004b4a:	c4278793          	addi	a5,a5,-958 # 80022788 <sb>
    80004b4e:	4fdc                	lw	a5,28(a5)
    80004b50:	9fb9                	addw	a5,a5,a4
    80004b52:	2781                	sext.w	a5,a5
    80004b54:	85be                	mv	a1,a5
    80004b56:	8536                	mv	a0,a3
    80004b58:	00000097          	auipc	ra,0x0
    80004b5c:	ad0080e7          	jalr	-1328(ra) # 80004628 <bread>
    80004b60:	fea43423          	sd	a0,-24(s0)
    80004b64:	fd842703          	lw	a4,-40(s0)
    80004b68:	6789                	lui	a5,0x2
    80004b6a:	17fd                	addi	a5,a5,-1
    80004b6c:	8ff9                	and	a5,a5,a4
    80004b6e:	fef42223          	sw	a5,-28(s0)
    80004b72:	fe442703          	lw	a4,-28(s0)
    80004b76:	41f7579b          	sraiw	a5,a4,0x1f
    80004b7a:	01d7d79b          	srliw	a5,a5,0x1d
    80004b7e:	9f3d                	addw	a4,a4,a5
    80004b80:	8b1d                	andi	a4,a4,7
    80004b82:	40f707bb          	subw	a5,a4,a5
    80004b86:	2781                	sext.w	a5,a5
    80004b88:	4705                	li	a4,1
    80004b8a:	00f717bb          	sllw	a5,a4,a5
    80004b8e:	fef42023          	sw	a5,-32(s0)
    80004b92:	fe442783          	lw	a5,-28(s0)
    80004b96:	41f7d71b          	sraiw	a4,a5,0x1f
    80004b9a:	01d7571b          	srliw	a4,a4,0x1d
    80004b9e:	9fb9                	addw	a5,a5,a4
    80004ba0:	4037d79b          	sraiw	a5,a5,0x3
    80004ba4:	2781                	sext.w	a5,a5
    80004ba6:	fe843703          	ld	a4,-24(s0)
    80004baa:	97ba                	add	a5,a5,a4
    80004bac:	0587c783          	lbu	a5,88(a5) # 2058 <_entry-0x7fffdfa8>
    80004bb0:	0007871b          	sext.w	a4,a5
    80004bb4:	fe042783          	lw	a5,-32(s0)
    80004bb8:	8ff9                	and	a5,a5,a4
    80004bba:	2781                	sext.w	a5,a5
    80004bbc:	eb89                	bnez	a5,80004bce <bfree+0xae>
    80004bbe:	00007517          	auipc	a0,0x7
    80004bc2:	89a50513          	addi	a0,a0,-1894 # 8000b458 <etext+0x458>
    80004bc6:	ffffc097          	auipc	ra,0xffffc
    80004bca:	08c080e7          	jalr	140(ra) # 80000c52 <panic>
    80004bce:	fe442783          	lw	a5,-28(s0)
    80004bd2:	41f7d71b          	sraiw	a4,a5,0x1f
    80004bd6:	01d7571b          	srliw	a4,a4,0x1d
    80004bda:	9fb9                	addw	a5,a5,a4
    80004bdc:	4037d79b          	sraiw	a5,a5,0x3
    80004be0:	2781                	sext.w	a5,a5
    80004be2:	fe843703          	ld	a4,-24(s0)
    80004be6:	973e                	add	a4,a4,a5
    80004be8:	05874703          	lbu	a4,88(a4)
    80004bec:	0187169b          	slliw	a3,a4,0x18
    80004bf0:	4186d69b          	sraiw	a3,a3,0x18
    80004bf4:	fe042703          	lw	a4,-32(s0)
    80004bf8:	0187171b          	slliw	a4,a4,0x18
    80004bfc:	4187571b          	sraiw	a4,a4,0x18
    80004c00:	fff74713          	not	a4,a4
    80004c04:	0187171b          	slliw	a4,a4,0x18
    80004c08:	4187571b          	sraiw	a4,a4,0x18
    80004c0c:	8f75                	and	a4,a4,a3
    80004c0e:	0187171b          	slliw	a4,a4,0x18
    80004c12:	4187571b          	sraiw	a4,a4,0x18
    80004c16:	0ff77713          	andi	a4,a4,255
    80004c1a:	fe843683          	ld	a3,-24(s0)
    80004c1e:	97b6                	add	a5,a5,a3
    80004c20:	04e78c23          	sb	a4,88(a5)
    80004c24:	fe843503          	ld	a0,-24(s0)
    80004c28:	00001097          	auipc	ra,0x1
    80004c2c:	72e080e7          	jalr	1838(ra) # 80006356 <log_write>
    80004c30:	fe843503          	ld	a0,-24(s0)
    80004c34:	00000097          	auipc	ra,0x0
    80004c38:	a96080e7          	jalr	-1386(ra) # 800046ca <brelse>
    80004c3c:	0001                	nop
    80004c3e:	70a2                	ld	ra,40(sp)
    80004c40:	7402                	ld	s0,32(sp)
    80004c42:	6145                	addi	sp,sp,48
    80004c44:	8082                	ret

0000000080004c46 <iinit>:
    80004c46:	1101                	addi	sp,sp,-32
    80004c48:	ec06                	sd	ra,24(sp)
    80004c4a:	e822                	sd	s0,16(sp)
    80004c4c:	1000                	addi	s0,sp,32
    80004c4e:	fe042623          	sw	zero,-20(s0)
    80004c52:	00007597          	auipc	a1,0x7
    80004c56:	81e58593          	addi	a1,a1,-2018 # 8000b470 <etext+0x470>
    80004c5a:	0001e517          	auipc	a0,0x1e
    80004c5e:	b4e50513          	addi	a0,a0,-1202 # 800227a8 <icache>
    80004c62:	ffffc097          	auipc	ra,0xffffc
    80004c66:	5ee080e7          	jalr	1518(ra) # 80001250 <initlock>
    80004c6a:	fe042623          	sw	zero,-20(s0)
    80004c6e:	a82d                	j	80004ca8 <iinit+0x62>
    80004c70:	fec42703          	lw	a4,-20(s0)
    80004c74:	87ba                	mv	a5,a4
    80004c76:	0792                	slli	a5,a5,0x4
    80004c78:	97ba                	add	a5,a5,a4
    80004c7a:	078e                	slli	a5,a5,0x3
    80004c7c:	02078713          	addi	a4,a5,32
    80004c80:	0001e797          	auipc	a5,0x1e
    80004c84:	b2878793          	addi	a5,a5,-1240 # 800227a8 <icache>
    80004c88:	97ba                	add	a5,a5,a4
    80004c8a:	07a1                	addi	a5,a5,8
    80004c8c:	00006597          	auipc	a1,0x6
    80004c90:	7ec58593          	addi	a1,a1,2028 # 8000b478 <etext+0x478>
    80004c94:	853e                	mv	a0,a5
    80004c96:	00001097          	auipc	ra,0x1
    80004c9a:	7f4080e7          	jalr	2036(ra) # 8000648a <initsleeplock>
    80004c9e:	fec42783          	lw	a5,-20(s0)
    80004ca2:	2785                	addiw	a5,a5,1
    80004ca4:	fef42623          	sw	a5,-20(s0)
    80004ca8:	fec42783          	lw	a5,-20(s0)
    80004cac:	0007871b          	sext.w	a4,a5
    80004cb0:	03100793          	li	a5,49
    80004cb4:	fae7dee3          	bge	a5,a4,80004c70 <iinit+0x2a>
    80004cb8:	0001                	nop
    80004cba:	0001                	nop
    80004cbc:	60e2                	ld	ra,24(sp)
    80004cbe:	6442                	ld	s0,16(sp)
    80004cc0:	6105                	addi	sp,sp,32
    80004cc2:	8082                	ret

0000000080004cc4 <ialloc>:
    80004cc4:	7139                	addi	sp,sp,-64
    80004cc6:	fc06                	sd	ra,56(sp)
    80004cc8:	f822                	sd	s0,48(sp)
    80004cca:	0080                	addi	s0,sp,64
    80004ccc:	87aa                	mv	a5,a0
    80004cce:	872e                	mv	a4,a1
    80004cd0:	fcf42623          	sw	a5,-52(s0)
    80004cd4:	87ba                	mv	a5,a4
    80004cd6:	fcf41523          	sh	a5,-54(s0)
    80004cda:	4785                	li	a5,1
    80004cdc:	fef42623          	sw	a5,-20(s0)
    80004ce0:	a855                	j	80004d94 <ialloc+0xd0>
    80004ce2:	fec42783          	lw	a5,-20(s0)
    80004ce6:	8391                	srli	a5,a5,0x4
    80004ce8:	0007871b          	sext.w	a4,a5
    80004cec:	0001e797          	auipc	a5,0x1e
    80004cf0:	a9c78793          	addi	a5,a5,-1380 # 80022788 <sb>
    80004cf4:	4f9c                	lw	a5,24(a5)
    80004cf6:	9fb9                	addw	a5,a5,a4
    80004cf8:	0007871b          	sext.w	a4,a5
    80004cfc:	fcc42783          	lw	a5,-52(s0)
    80004d00:	85ba                	mv	a1,a4
    80004d02:	853e                	mv	a0,a5
    80004d04:	00000097          	auipc	ra,0x0
    80004d08:	924080e7          	jalr	-1756(ra) # 80004628 <bread>
    80004d0c:	fea43023          	sd	a0,-32(s0)
    80004d10:	fe043783          	ld	a5,-32(s0)
    80004d14:	05878713          	addi	a4,a5,88
    80004d18:	fec42783          	lw	a5,-20(s0)
    80004d1c:	8bbd                	andi	a5,a5,15
    80004d1e:	079a                	slli	a5,a5,0x6
    80004d20:	97ba                	add	a5,a5,a4
    80004d22:	fcf43c23          	sd	a5,-40(s0)
    80004d26:	fd843783          	ld	a5,-40(s0)
    80004d2a:	00079783          	lh	a5,0(a5)
    80004d2e:	eba1                	bnez	a5,80004d7e <ialloc+0xba>
    80004d30:	04000613          	li	a2,64
    80004d34:	4581                	li	a1,0
    80004d36:	fd843503          	ld	a0,-40(s0)
    80004d3a:	ffffc097          	auipc	ra,0xffffc
    80004d3e:	71a080e7          	jalr	1818(ra) # 80001454 <memset>
    80004d42:	fd843783          	ld	a5,-40(s0)
    80004d46:	fca45703          	lhu	a4,-54(s0)
    80004d4a:	00e79023          	sh	a4,0(a5)
    80004d4e:	fe043503          	ld	a0,-32(s0)
    80004d52:	00001097          	auipc	ra,0x1
    80004d56:	604080e7          	jalr	1540(ra) # 80006356 <log_write>
    80004d5a:	fe043503          	ld	a0,-32(s0)
    80004d5e:	00000097          	auipc	ra,0x0
    80004d62:	96c080e7          	jalr	-1684(ra) # 800046ca <brelse>
    80004d66:	fec42703          	lw	a4,-20(s0)
    80004d6a:	fcc42783          	lw	a5,-52(s0)
    80004d6e:	85ba                	mv	a1,a4
    80004d70:	853e                	mv	a0,a5
    80004d72:	00000097          	auipc	ra,0x0
    80004d76:	136080e7          	jalr	310(ra) # 80004ea8 <iget>
    80004d7a:	87aa                	mv	a5,a0
    80004d7c:	a82d                	j	80004db6 <ialloc+0xf2>
    80004d7e:	fe043503          	ld	a0,-32(s0)
    80004d82:	00000097          	auipc	ra,0x0
    80004d86:	948080e7          	jalr	-1720(ra) # 800046ca <brelse>
    80004d8a:	fec42783          	lw	a5,-20(s0)
    80004d8e:	2785                	addiw	a5,a5,1
    80004d90:	fef42623          	sw	a5,-20(s0)
    80004d94:	0001e797          	auipc	a5,0x1e
    80004d98:	9f478793          	addi	a5,a5,-1548 # 80022788 <sb>
    80004d9c:	47d8                	lw	a4,12(a5)
    80004d9e:	fec42783          	lw	a5,-20(s0)
    80004da2:	f4e7e0e3          	bltu	a5,a4,80004ce2 <ialloc+0x1e>
    80004da6:	00006517          	auipc	a0,0x6
    80004daa:	6da50513          	addi	a0,a0,1754 # 8000b480 <etext+0x480>
    80004dae:	ffffc097          	auipc	ra,0xffffc
    80004db2:	ea4080e7          	jalr	-348(ra) # 80000c52 <panic>
    80004db6:	853e                	mv	a0,a5
    80004db8:	70e2                	ld	ra,56(sp)
    80004dba:	7442                	ld	s0,48(sp)
    80004dbc:	6121                	addi	sp,sp,64
    80004dbe:	8082                	ret

0000000080004dc0 <iupdate>:
    80004dc0:	7179                	addi	sp,sp,-48
    80004dc2:	f406                	sd	ra,40(sp)
    80004dc4:	f022                	sd	s0,32(sp)
    80004dc6:	1800                	addi	s0,sp,48
    80004dc8:	fca43c23          	sd	a0,-40(s0)
    80004dcc:	fd843783          	ld	a5,-40(s0)
    80004dd0:	4394                	lw	a3,0(a5)
    80004dd2:	fd843783          	ld	a5,-40(s0)
    80004dd6:	43dc                	lw	a5,4(a5)
    80004dd8:	0047d79b          	srliw	a5,a5,0x4
    80004ddc:	0007871b          	sext.w	a4,a5
    80004de0:	0001e797          	auipc	a5,0x1e
    80004de4:	9a878793          	addi	a5,a5,-1624 # 80022788 <sb>
    80004de8:	4f9c                	lw	a5,24(a5)
    80004dea:	9fb9                	addw	a5,a5,a4
    80004dec:	2781                	sext.w	a5,a5
    80004dee:	85be                	mv	a1,a5
    80004df0:	8536                	mv	a0,a3
    80004df2:	00000097          	auipc	ra,0x0
    80004df6:	836080e7          	jalr	-1994(ra) # 80004628 <bread>
    80004dfa:	fea43423          	sd	a0,-24(s0)
    80004dfe:	fe843783          	ld	a5,-24(s0)
    80004e02:	05878713          	addi	a4,a5,88
    80004e06:	fd843783          	ld	a5,-40(s0)
    80004e0a:	43dc                	lw	a5,4(a5)
    80004e0c:	1782                	slli	a5,a5,0x20
    80004e0e:	9381                	srli	a5,a5,0x20
    80004e10:	8bbd                	andi	a5,a5,15
    80004e12:	079a                	slli	a5,a5,0x6
    80004e14:	97ba                	add	a5,a5,a4
    80004e16:	fef43023          	sd	a5,-32(s0)
    80004e1a:	fd843783          	ld	a5,-40(s0)
    80004e1e:	04479703          	lh	a4,68(a5)
    80004e22:	fe043783          	ld	a5,-32(s0)
    80004e26:	00e79023          	sh	a4,0(a5)
    80004e2a:	fd843783          	ld	a5,-40(s0)
    80004e2e:	04679703          	lh	a4,70(a5)
    80004e32:	fe043783          	ld	a5,-32(s0)
    80004e36:	00e79123          	sh	a4,2(a5)
    80004e3a:	fd843783          	ld	a5,-40(s0)
    80004e3e:	04879703          	lh	a4,72(a5)
    80004e42:	fe043783          	ld	a5,-32(s0)
    80004e46:	00e79223          	sh	a4,4(a5)
    80004e4a:	fd843783          	ld	a5,-40(s0)
    80004e4e:	04a79703          	lh	a4,74(a5)
    80004e52:	fe043783          	ld	a5,-32(s0)
    80004e56:	00e79323          	sh	a4,6(a5)
    80004e5a:	fd843783          	ld	a5,-40(s0)
    80004e5e:	47f8                	lw	a4,76(a5)
    80004e60:	fe043783          	ld	a5,-32(s0)
    80004e64:	c798                	sw	a4,8(a5)
    80004e66:	fe043783          	ld	a5,-32(s0)
    80004e6a:	00c78713          	addi	a4,a5,12
    80004e6e:	fd843783          	ld	a5,-40(s0)
    80004e72:	05078793          	addi	a5,a5,80
    80004e76:	03400613          	li	a2,52
    80004e7a:	85be                	mv	a1,a5
    80004e7c:	853a                	mv	a0,a4
    80004e7e:	ffffc097          	auipc	ra,0xffffc
    80004e82:	6ba080e7          	jalr	1722(ra) # 80001538 <memmove>
    80004e86:	fe843503          	ld	a0,-24(s0)
    80004e8a:	00001097          	auipc	ra,0x1
    80004e8e:	4cc080e7          	jalr	1228(ra) # 80006356 <log_write>
    80004e92:	fe843503          	ld	a0,-24(s0)
    80004e96:	00000097          	auipc	ra,0x0
    80004e9a:	834080e7          	jalr	-1996(ra) # 800046ca <brelse>
    80004e9e:	0001                	nop
    80004ea0:	70a2                	ld	ra,40(sp)
    80004ea2:	7402                	ld	s0,32(sp)
    80004ea4:	6145                	addi	sp,sp,48
    80004ea6:	8082                	ret

0000000080004ea8 <iget>:
    80004ea8:	7179                	addi	sp,sp,-48
    80004eaa:	f406                	sd	ra,40(sp)
    80004eac:	f022                	sd	s0,32(sp)
    80004eae:	1800                	addi	s0,sp,48
    80004eb0:	87aa                	mv	a5,a0
    80004eb2:	872e                	mv	a4,a1
    80004eb4:	fcf42e23          	sw	a5,-36(s0)
    80004eb8:	87ba                	mv	a5,a4
    80004eba:	fcf42c23          	sw	a5,-40(s0)
    80004ebe:	0001e517          	auipc	a0,0x1e
    80004ec2:	8ea50513          	addi	a0,a0,-1814 # 800227a8 <icache>
    80004ec6:	ffffc097          	auipc	ra,0xffffc
    80004eca:	3ba080e7          	jalr	954(ra) # 80001280 <acquire>
    80004ece:	fe043023          	sd	zero,-32(s0)
    80004ed2:	0001e797          	auipc	a5,0x1e
    80004ed6:	8ee78793          	addi	a5,a5,-1810 # 800227c0 <icache+0x18>
    80004eda:	fef43423          	sd	a5,-24(s0)
    80004ede:	a89d                	j	80004f54 <iget+0xac>
    80004ee0:	fe843783          	ld	a5,-24(s0)
    80004ee4:	479c                	lw	a5,8(a5)
    80004ee6:	04f05663          	blez	a5,80004f32 <iget+0x8a>
    80004eea:	fe843783          	ld	a5,-24(s0)
    80004eee:	4398                	lw	a4,0(a5)
    80004ef0:	fdc42783          	lw	a5,-36(s0)
    80004ef4:	2781                	sext.w	a5,a5
    80004ef6:	02e79e63          	bne	a5,a4,80004f32 <iget+0x8a>
    80004efa:	fe843783          	ld	a5,-24(s0)
    80004efe:	43d8                	lw	a4,4(a5)
    80004f00:	fd842783          	lw	a5,-40(s0)
    80004f04:	2781                	sext.w	a5,a5
    80004f06:	02e79663          	bne	a5,a4,80004f32 <iget+0x8a>
    80004f0a:	fe843783          	ld	a5,-24(s0)
    80004f0e:	479c                	lw	a5,8(a5)
    80004f10:	2785                	addiw	a5,a5,1
    80004f12:	0007871b          	sext.w	a4,a5
    80004f16:	fe843783          	ld	a5,-24(s0)
    80004f1a:	c798                	sw	a4,8(a5)
    80004f1c:	0001e517          	auipc	a0,0x1e
    80004f20:	88c50513          	addi	a0,a0,-1908 # 800227a8 <icache>
    80004f24:	ffffc097          	auipc	ra,0xffffc
    80004f28:	3c0080e7          	jalr	960(ra) # 800012e4 <release>
    80004f2c:	fe843783          	ld	a5,-24(s0)
    80004f30:	a069                	j	80004fba <iget+0x112>
    80004f32:	fe043783          	ld	a5,-32(s0)
    80004f36:	eb89                	bnez	a5,80004f48 <iget+0xa0>
    80004f38:	fe843783          	ld	a5,-24(s0)
    80004f3c:	479c                	lw	a5,8(a5)
    80004f3e:	e789                	bnez	a5,80004f48 <iget+0xa0>
    80004f40:	fe843783          	ld	a5,-24(s0)
    80004f44:	fef43023          	sd	a5,-32(s0)
    80004f48:	fe843783          	ld	a5,-24(s0)
    80004f4c:	08878793          	addi	a5,a5,136
    80004f50:	fef43423          	sd	a5,-24(s0)
    80004f54:	fe843703          	ld	a4,-24(s0)
    80004f58:	0001f797          	auipc	a5,0x1f
    80004f5c:	2f878793          	addi	a5,a5,760 # 80024250 <log>
    80004f60:	f8f760e3          	bltu	a4,a5,80004ee0 <iget+0x38>
    80004f64:	fe043783          	ld	a5,-32(s0)
    80004f68:	eb89                	bnez	a5,80004f7a <iget+0xd2>
    80004f6a:	00006517          	auipc	a0,0x6
    80004f6e:	52e50513          	addi	a0,a0,1326 # 8000b498 <etext+0x498>
    80004f72:	ffffc097          	auipc	ra,0xffffc
    80004f76:	ce0080e7          	jalr	-800(ra) # 80000c52 <panic>
    80004f7a:	fe043783          	ld	a5,-32(s0)
    80004f7e:	fef43423          	sd	a5,-24(s0)
    80004f82:	fe843783          	ld	a5,-24(s0)
    80004f86:	fdc42703          	lw	a4,-36(s0)
    80004f8a:	c398                	sw	a4,0(a5)
    80004f8c:	fe843783          	ld	a5,-24(s0)
    80004f90:	fd842703          	lw	a4,-40(s0)
    80004f94:	c3d8                	sw	a4,4(a5)
    80004f96:	fe843783          	ld	a5,-24(s0)
    80004f9a:	4705                	li	a4,1
    80004f9c:	c798                	sw	a4,8(a5)
    80004f9e:	fe843783          	ld	a5,-24(s0)
    80004fa2:	0407a023          	sw	zero,64(a5)
    80004fa6:	0001e517          	auipc	a0,0x1e
    80004faa:	80250513          	addi	a0,a0,-2046 # 800227a8 <icache>
    80004fae:	ffffc097          	auipc	ra,0xffffc
    80004fb2:	336080e7          	jalr	822(ra) # 800012e4 <release>
    80004fb6:	fe843783          	ld	a5,-24(s0)
    80004fba:	853e                	mv	a0,a5
    80004fbc:	70a2                	ld	ra,40(sp)
    80004fbe:	7402                	ld	s0,32(sp)
    80004fc0:	6145                	addi	sp,sp,48
    80004fc2:	8082                	ret

0000000080004fc4 <idup>:
    80004fc4:	1101                	addi	sp,sp,-32
    80004fc6:	ec06                	sd	ra,24(sp)
    80004fc8:	e822                	sd	s0,16(sp)
    80004fca:	1000                	addi	s0,sp,32
    80004fcc:	fea43423          	sd	a0,-24(s0)
    80004fd0:	0001d517          	auipc	a0,0x1d
    80004fd4:	7d850513          	addi	a0,a0,2008 # 800227a8 <icache>
    80004fd8:	ffffc097          	auipc	ra,0xffffc
    80004fdc:	2a8080e7          	jalr	680(ra) # 80001280 <acquire>
    80004fe0:	fe843783          	ld	a5,-24(s0)
    80004fe4:	479c                	lw	a5,8(a5)
    80004fe6:	2785                	addiw	a5,a5,1
    80004fe8:	0007871b          	sext.w	a4,a5
    80004fec:	fe843783          	ld	a5,-24(s0)
    80004ff0:	c798                	sw	a4,8(a5)
    80004ff2:	0001d517          	auipc	a0,0x1d
    80004ff6:	7b650513          	addi	a0,a0,1974 # 800227a8 <icache>
    80004ffa:	ffffc097          	auipc	ra,0xffffc
    80004ffe:	2ea080e7          	jalr	746(ra) # 800012e4 <release>
    80005002:	fe843783          	ld	a5,-24(s0)
    80005006:	853e                	mv	a0,a5
    80005008:	60e2                	ld	ra,24(sp)
    8000500a:	6442                	ld	s0,16(sp)
    8000500c:	6105                	addi	sp,sp,32
    8000500e:	8082                	ret

0000000080005010 <ilock>:
    80005010:	7179                	addi	sp,sp,-48
    80005012:	f406                	sd	ra,40(sp)
    80005014:	f022                	sd	s0,32(sp)
    80005016:	1800                	addi	s0,sp,48
    80005018:	fca43c23          	sd	a0,-40(s0)
    8000501c:	fd843783          	ld	a5,-40(s0)
    80005020:	c791                	beqz	a5,8000502c <ilock+0x1c>
    80005022:	fd843783          	ld	a5,-40(s0)
    80005026:	479c                	lw	a5,8(a5)
    80005028:	00f04a63          	bgtz	a5,8000503c <ilock+0x2c>
    8000502c:	00006517          	auipc	a0,0x6
    80005030:	47c50513          	addi	a0,a0,1148 # 8000b4a8 <etext+0x4a8>
    80005034:	ffffc097          	auipc	ra,0xffffc
    80005038:	c1e080e7          	jalr	-994(ra) # 80000c52 <panic>
    8000503c:	fd843783          	ld	a5,-40(s0)
    80005040:	07c1                	addi	a5,a5,16
    80005042:	853e                	mv	a0,a5
    80005044:	00001097          	auipc	ra,0x1
    80005048:	492080e7          	jalr	1170(ra) # 800064d6 <acquiresleep>
    8000504c:	fd843783          	ld	a5,-40(s0)
    80005050:	43bc                	lw	a5,64(a5)
    80005052:	e7e5                	bnez	a5,8000513a <ilock+0x12a>
    80005054:	fd843783          	ld	a5,-40(s0)
    80005058:	4394                	lw	a3,0(a5)
    8000505a:	fd843783          	ld	a5,-40(s0)
    8000505e:	43dc                	lw	a5,4(a5)
    80005060:	0047d79b          	srliw	a5,a5,0x4
    80005064:	0007871b          	sext.w	a4,a5
    80005068:	0001d797          	auipc	a5,0x1d
    8000506c:	72078793          	addi	a5,a5,1824 # 80022788 <sb>
    80005070:	4f9c                	lw	a5,24(a5)
    80005072:	9fb9                	addw	a5,a5,a4
    80005074:	2781                	sext.w	a5,a5
    80005076:	85be                	mv	a1,a5
    80005078:	8536                	mv	a0,a3
    8000507a:	fffff097          	auipc	ra,0xfffff
    8000507e:	5ae080e7          	jalr	1454(ra) # 80004628 <bread>
    80005082:	fea43423          	sd	a0,-24(s0)
    80005086:	fe843783          	ld	a5,-24(s0)
    8000508a:	05878713          	addi	a4,a5,88
    8000508e:	fd843783          	ld	a5,-40(s0)
    80005092:	43dc                	lw	a5,4(a5)
    80005094:	1782                	slli	a5,a5,0x20
    80005096:	9381                	srli	a5,a5,0x20
    80005098:	8bbd                	andi	a5,a5,15
    8000509a:	079a                	slli	a5,a5,0x6
    8000509c:	97ba                	add	a5,a5,a4
    8000509e:	fef43023          	sd	a5,-32(s0)
    800050a2:	fe043783          	ld	a5,-32(s0)
    800050a6:	00079703          	lh	a4,0(a5)
    800050aa:	fd843783          	ld	a5,-40(s0)
    800050ae:	04e79223          	sh	a4,68(a5)
    800050b2:	fe043783          	ld	a5,-32(s0)
    800050b6:	00279703          	lh	a4,2(a5)
    800050ba:	fd843783          	ld	a5,-40(s0)
    800050be:	04e79323          	sh	a4,70(a5)
    800050c2:	fe043783          	ld	a5,-32(s0)
    800050c6:	00479703          	lh	a4,4(a5)
    800050ca:	fd843783          	ld	a5,-40(s0)
    800050ce:	04e79423          	sh	a4,72(a5)
    800050d2:	fe043783          	ld	a5,-32(s0)
    800050d6:	00679703          	lh	a4,6(a5)
    800050da:	fd843783          	ld	a5,-40(s0)
    800050de:	04e79523          	sh	a4,74(a5)
    800050e2:	fe043783          	ld	a5,-32(s0)
    800050e6:	4798                	lw	a4,8(a5)
    800050e8:	fd843783          	ld	a5,-40(s0)
    800050ec:	c7f8                	sw	a4,76(a5)
    800050ee:	fd843783          	ld	a5,-40(s0)
    800050f2:	05078713          	addi	a4,a5,80
    800050f6:	fe043783          	ld	a5,-32(s0)
    800050fa:	07b1                	addi	a5,a5,12
    800050fc:	03400613          	li	a2,52
    80005100:	85be                	mv	a1,a5
    80005102:	853a                	mv	a0,a4
    80005104:	ffffc097          	auipc	ra,0xffffc
    80005108:	434080e7          	jalr	1076(ra) # 80001538 <memmove>
    8000510c:	fe843503          	ld	a0,-24(s0)
    80005110:	fffff097          	auipc	ra,0xfffff
    80005114:	5ba080e7          	jalr	1466(ra) # 800046ca <brelse>
    80005118:	fd843783          	ld	a5,-40(s0)
    8000511c:	4705                	li	a4,1
    8000511e:	c3b8                	sw	a4,64(a5)
    80005120:	fd843783          	ld	a5,-40(s0)
    80005124:	04479783          	lh	a5,68(a5)
    80005128:	eb89                	bnez	a5,8000513a <ilock+0x12a>
    8000512a:	00006517          	auipc	a0,0x6
    8000512e:	38650513          	addi	a0,a0,902 # 8000b4b0 <etext+0x4b0>
    80005132:	ffffc097          	auipc	ra,0xffffc
    80005136:	b20080e7          	jalr	-1248(ra) # 80000c52 <panic>
    8000513a:	0001                	nop
    8000513c:	70a2                	ld	ra,40(sp)
    8000513e:	7402                	ld	s0,32(sp)
    80005140:	6145                	addi	sp,sp,48
    80005142:	8082                	ret

0000000080005144 <iunlock>:
    80005144:	1101                	addi	sp,sp,-32
    80005146:	ec06                	sd	ra,24(sp)
    80005148:	e822                	sd	s0,16(sp)
    8000514a:	1000                	addi	s0,sp,32
    8000514c:	fea43423          	sd	a0,-24(s0)
    80005150:	fe843783          	ld	a5,-24(s0)
    80005154:	c385                	beqz	a5,80005174 <iunlock+0x30>
    80005156:	fe843783          	ld	a5,-24(s0)
    8000515a:	07c1                	addi	a5,a5,16
    8000515c:	853e                	mv	a0,a5
    8000515e:	00001097          	auipc	ra,0x1
    80005162:	438080e7          	jalr	1080(ra) # 80006596 <holdingsleep>
    80005166:	87aa                	mv	a5,a0
    80005168:	c791                	beqz	a5,80005174 <iunlock+0x30>
    8000516a:	fe843783          	ld	a5,-24(s0)
    8000516e:	479c                	lw	a5,8(a5)
    80005170:	00f04a63          	bgtz	a5,80005184 <iunlock+0x40>
    80005174:	00006517          	auipc	a0,0x6
    80005178:	34c50513          	addi	a0,a0,844 # 8000b4c0 <etext+0x4c0>
    8000517c:	ffffc097          	auipc	ra,0xffffc
    80005180:	ad6080e7          	jalr	-1322(ra) # 80000c52 <panic>
    80005184:	fe843783          	ld	a5,-24(s0)
    80005188:	07c1                	addi	a5,a5,16
    8000518a:	853e                	mv	a0,a5
    8000518c:	00001097          	auipc	ra,0x1
    80005190:	3b8080e7          	jalr	952(ra) # 80006544 <releasesleep>
    80005194:	0001                	nop
    80005196:	60e2                	ld	ra,24(sp)
    80005198:	6442                	ld	s0,16(sp)
    8000519a:	6105                	addi	sp,sp,32
    8000519c:	8082                	ret

000000008000519e <iput>:
    8000519e:	1101                	addi	sp,sp,-32
    800051a0:	ec06                	sd	ra,24(sp)
    800051a2:	e822                	sd	s0,16(sp)
    800051a4:	1000                	addi	s0,sp,32
    800051a6:	fea43423          	sd	a0,-24(s0)
    800051aa:	0001d517          	auipc	a0,0x1d
    800051ae:	5fe50513          	addi	a0,a0,1534 # 800227a8 <icache>
    800051b2:	ffffc097          	auipc	ra,0xffffc
    800051b6:	0ce080e7          	jalr	206(ra) # 80001280 <acquire>
    800051ba:	fe843783          	ld	a5,-24(s0)
    800051be:	479c                	lw	a5,8(a5)
    800051c0:	873e                	mv	a4,a5
    800051c2:	4785                	li	a5,1
    800051c4:	06f71f63          	bne	a4,a5,80005242 <iput+0xa4>
    800051c8:	fe843783          	ld	a5,-24(s0)
    800051cc:	43bc                	lw	a5,64(a5)
    800051ce:	cbb5                	beqz	a5,80005242 <iput+0xa4>
    800051d0:	fe843783          	ld	a5,-24(s0)
    800051d4:	04a79783          	lh	a5,74(a5)
    800051d8:	e7ad                	bnez	a5,80005242 <iput+0xa4>
    800051da:	fe843783          	ld	a5,-24(s0)
    800051de:	07c1                	addi	a5,a5,16
    800051e0:	853e                	mv	a0,a5
    800051e2:	00001097          	auipc	ra,0x1
    800051e6:	2f4080e7          	jalr	756(ra) # 800064d6 <acquiresleep>
    800051ea:	0001d517          	auipc	a0,0x1d
    800051ee:	5be50513          	addi	a0,a0,1470 # 800227a8 <icache>
    800051f2:	ffffc097          	auipc	ra,0xffffc
    800051f6:	0f2080e7          	jalr	242(ra) # 800012e4 <release>
    800051fa:	fe843503          	ld	a0,-24(s0)
    800051fe:	00000097          	auipc	ra,0x0
    80005202:	1fa080e7          	jalr	506(ra) # 800053f8 <itrunc>
    80005206:	fe843783          	ld	a5,-24(s0)
    8000520a:	04079223          	sh	zero,68(a5)
    8000520e:	fe843503          	ld	a0,-24(s0)
    80005212:	00000097          	auipc	ra,0x0
    80005216:	bae080e7          	jalr	-1106(ra) # 80004dc0 <iupdate>
    8000521a:	fe843783          	ld	a5,-24(s0)
    8000521e:	0407a023          	sw	zero,64(a5)
    80005222:	fe843783          	ld	a5,-24(s0)
    80005226:	07c1                	addi	a5,a5,16
    80005228:	853e                	mv	a0,a5
    8000522a:	00001097          	auipc	ra,0x1
    8000522e:	31a080e7          	jalr	794(ra) # 80006544 <releasesleep>
    80005232:	0001d517          	auipc	a0,0x1d
    80005236:	57650513          	addi	a0,a0,1398 # 800227a8 <icache>
    8000523a:	ffffc097          	auipc	ra,0xffffc
    8000523e:	046080e7          	jalr	70(ra) # 80001280 <acquire>
    80005242:	fe843783          	ld	a5,-24(s0)
    80005246:	479c                	lw	a5,8(a5)
    80005248:	37fd                	addiw	a5,a5,-1
    8000524a:	0007871b          	sext.w	a4,a5
    8000524e:	fe843783          	ld	a5,-24(s0)
    80005252:	c798                	sw	a4,8(a5)
    80005254:	0001d517          	auipc	a0,0x1d
    80005258:	55450513          	addi	a0,a0,1364 # 800227a8 <icache>
    8000525c:	ffffc097          	auipc	ra,0xffffc
    80005260:	088080e7          	jalr	136(ra) # 800012e4 <release>
    80005264:	0001                	nop
    80005266:	60e2                	ld	ra,24(sp)
    80005268:	6442                	ld	s0,16(sp)
    8000526a:	6105                	addi	sp,sp,32
    8000526c:	8082                	ret

000000008000526e <iunlockput>:
    8000526e:	1101                	addi	sp,sp,-32
    80005270:	ec06                	sd	ra,24(sp)
    80005272:	e822                	sd	s0,16(sp)
    80005274:	1000                	addi	s0,sp,32
    80005276:	fea43423          	sd	a0,-24(s0)
    8000527a:	fe843503          	ld	a0,-24(s0)
    8000527e:	00000097          	auipc	ra,0x0
    80005282:	ec6080e7          	jalr	-314(ra) # 80005144 <iunlock>
    80005286:	fe843503          	ld	a0,-24(s0)
    8000528a:	00000097          	auipc	ra,0x0
    8000528e:	f14080e7          	jalr	-236(ra) # 8000519e <iput>
    80005292:	0001                	nop
    80005294:	60e2                	ld	ra,24(sp)
    80005296:	6442                	ld	s0,16(sp)
    80005298:	6105                	addi	sp,sp,32
    8000529a:	8082                	ret

000000008000529c <bmap>:
    8000529c:	7139                	addi	sp,sp,-64
    8000529e:	fc06                	sd	ra,56(sp)
    800052a0:	f822                	sd	s0,48(sp)
    800052a2:	0080                	addi	s0,sp,64
    800052a4:	fca43423          	sd	a0,-56(s0)
    800052a8:	87ae                	mv	a5,a1
    800052aa:	fcf42223          	sw	a5,-60(s0)
    800052ae:	fc442783          	lw	a5,-60(s0)
    800052b2:	0007871b          	sext.w	a4,a5
    800052b6:	47ad                	li	a5,11
    800052b8:	04e7e863          	bltu	a5,a4,80005308 <bmap+0x6c>
    800052bc:	fc843703          	ld	a4,-56(s0)
    800052c0:	fc446783          	lwu	a5,-60(s0)
    800052c4:	07d1                	addi	a5,a5,20
    800052c6:	078a                	slli	a5,a5,0x2
    800052c8:	97ba                	add	a5,a5,a4
    800052ca:	439c                	lw	a5,0(a5)
    800052cc:	fef42623          	sw	a5,-20(s0)
    800052d0:	fec42783          	lw	a5,-20(s0)
    800052d4:	2781                	sext.w	a5,a5
    800052d6:	e795                	bnez	a5,80005302 <bmap+0x66>
    800052d8:	fc843783          	ld	a5,-56(s0)
    800052dc:	439c                	lw	a5,0(a5)
    800052de:	853e                	mv	a0,a5
    800052e0:	fffff097          	auipc	ra,0xfffff
    800052e4:	692080e7          	jalr	1682(ra) # 80004972 <balloc>
    800052e8:	87aa                	mv	a5,a0
    800052ea:	fef42623          	sw	a5,-20(s0)
    800052ee:	fc843703          	ld	a4,-56(s0)
    800052f2:	fc446783          	lwu	a5,-60(s0)
    800052f6:	07d1                	addi	a5,a5,20
    800052f8:	078a                	slli	a5,a5,0x2
    800052fa:	97ba                	add	a5,a5,a4
    800052fc:	fec42703          	lw	a4,-20(s0)
    80005300:	c398                	sw	a4,0(a5)
    80005302:	fec42783          	lw	a5,-20(s0)
    80005306:	a0e5                	j	800053ee <bmap+0x152>
    80005308:	fc442783          	lw	a5,-60(s0)
    8000530c:	37d1                	addiw	a5,a5,-12
    8000530e:	fcf42223          	sw	a5,-60(s0)
    80005312:	fc442783          	lw	a5,-60(s0)
    80005316:	0007871b          	sext.w	a4,a5
    8000531a:	0ff00793          	li	a5,255
    8000531e:	0ce7e063          	bltu	a5,a4,800053de <bmap+0x142>
    80005322:	fc843783          	ld	a5,-56(s0)
    80005326:	0807a783          	lw	a5,128(a5)
    8000532a:	fef42623          	sw	a5,-20(s0)
    8000532e:	fec42783          	lw	a5,-20(s0)
    80005332:	2781                	sext.w	a5,a5
    80005334:	e395                	bnez	a5,80005358 <bmap+0xbc>
    80005336:	fc843783          	ld	a5,-56(s0)
    8000533a:	439c                	lw	a5,0(a5)
    8000533c:	853e                	mv	a0,a5
    8000533e:	fffff097          	auipc	ra,0xfffff
    80005342:	634080e7          	jalr	1588(ra) # 80004972 <balloc>
    80005346:	87aa                	mv	a5,a0
    80005348:	fef42623          	sw	a5,-20(s0)
    8000534c:	fc843783          	ld	a5,-56(s0)
    80005350:	fec42703          	lw	a4,-20(s0)
    80005354:	08e7a023          	sw	a4,128(a5)
    80005358:	fc843783          	ld	a5,-56(s0)
    8000535c:	439c                	lw	a5,0(a5)
    8000535e:	fec42703          	lw	a4,-20(s0)
    80005362:	85ba                	mv	a1,a4
    80005364:	853e                	mv	a0,a5
    80005366:	fffff097          	auipc	ra,0xfffff
    8000536a:	2c2080e7          	jalr	706(ra) # 80004628 <bread>
    8000536e:	fea43023          	sd	a0,-32(s0)
    80005372:	fe043783          	ld	a5,-32(s0)
    80005376:	05878793          	addi	a5,a5,88
    8000537a:	fcf43c23          	sd	a5,-40(s0)
    8000537e:	fc446783          	lwu	a5,-60(s0)
    80005382:	078a                	slli	a5,a5,0x2
    80005384:	fd843703          	ld	a4,-40(s0)
    80005388:	97ba                	add	a5,a5,a4
    8000538a:	439c                	lw	a5,0(a5)
    8000538c:	fef42623          	sw	a5,-20(s0)
    80005390:	fec42783          	lw	a5,-20(s0)
    80005394:	2781                	sext.w	a5,a5
    80005396:	eb9d                	bnez	a5,800053cc <bmap+0x130>
    80005398:	fc843783          	ld	a5,-56(s0)
    8000539c:	439c                	lw	a5,0(a5)
    8000539e:	853e                	mv	a0,a5
    800053a0:	fffff097          	auipc	ra,0xfffff
    800053a4:	5d2080e7          	jalr	1490(ra) # 80004972 <balloc>
    800053a8:	87aa                	mv	a5,a0
    800053aa:	fef42623          	sw	a5,-20(s0)
    800053ae:	fc446783          	lwu	a5,-60(s0)
    800053b2:	078a                	slli	a5,a5,0x2
    800053b4:	fd843703          	ld	a4,-40(s0)
    800053b8:	97ba                	add	a5,a5,a4
    800053ba:	fec42703          	lw	a4,-20(s0)
    800053be:	c398                	sw	a4,0(a5)
    800053c0:	fe043503          	ld	a0,-32(s0)
    800053c4:	00001097          	auipc	ra,0x1
    800053c8:	f92080e7          	jalr	-110(ra) # 80006356 <log_write>
    800053cc:	fe043503          	ld	a0,-32(s0)
    800053d0:	fffff097          	auipc	ra,0xfffff
    800053d4:	2fa080e7          	jalr	762(ra) # 800046ca <brelse>
    800053d8:	fec42783          	lw	a5,-20(s0)
    800053dc:	a809                	j	800053ee <bmap+0x152>
    800053de:	00006517          	auipc	a0,0x6
    800053e2:	0ea50513          	addi	a0,a0,234 # 8000b4c8 <etext+0x4c8>
    800053e6:	ffffc097          	auipc	ra,0xffffc
    800053ea:	86c080e7          	jalr	-1940(ra) # 80000c52 <panic>
    800053ee:	853e                	mv	a0,a5
    800053f0:	70e2                	ld	ra,56(sp)
    800053f2:	7442                	ld	s0,48(sp)
    800053f4:	6121                	addi	sp,sp,64
    800053f6:	8082                	ret

00000000800053f8 <itrunc>:
    800053f8:	7139                	addi	sp,sp,-64
    800053fa:	fc06                	sd	ra,56(sp)
    800053fc:	f822                	sd	s0,48(sp)
    800053fe:	0080                	addi	s0,sp,64
    80005400:	fca43423          	sd	a0,-56(s0)
    80005404:	fe042623          	sw	zero,-20(s0)
    80005408:	a899                	j	8000545e <itrunc+0x66>
    8000540a:	fc843703          	ld	a4,-56(s0)
    8000540e:	fec42783          	lw	a5,-20(s0)
    80005412:	07d1                	addi	a5,a5,20
    80005414:	078a                	slli	a5,a5,0x2
    80005416:	97ba                	add	a5,a5,a4
    80005418:	439c                	lw	a5,0(a5)
    8000541a:	cf8d                	beqz	a5,80005454 <itrunc+0x5c>
    8000541c:	fc843783          	ld	a5,-56(s0)
    80005420:	439c                	lw	a5,0(a5)
    80005422:	0007869b          	sext.w	a3,a5
    80005426:	fc843703          	ld	a4,-56(s0)
    8000542a:	fec42783          	lw	a5,-20(s0)
    8000542e:	07d1                	addi	a5,a5,20
    80005430:	078a                	slli	a5,a5,0x2
    80005432:	97ba                	add	a5,a5,a4
    80005434:	439c                	lw	a5,0(a5)
    80005436:	85be                	mv	a1,a5
    80005438:	8536                	mv	a0,a3
    8000543a:	fffff097          	auipc	ra,0xfffff
    8000543e:	6e6080e7          	jalr	1766(ra) # 80004b20 <bfree>
    80005442:	fc843703          	ld	a4,-56(s0)
    80005446:	fec42783          	lw	a5,-20(s0)
    8000544a:	07d1                	addi	a5,a5,20
    8000544c:	078a                	slli	a5,a5,0x2
    8000544e:	97ba                	add	a5,a5,a4
    80005450:	0007a023          	sw	zero,0(a5)
    80005454:	fec42783          	lw	a5,-20(s0)
    80005458:	2785                	addiw	a5,a5,1
    8000545a:	fef42623          	sw	a5,-20(s0)
    8000545e:	fec42783          	lw	a5,-20(s0)
    80005462:	0007871b          	sext.w	a4,a5
    80005466:	47ad                	li	a5,11
    80005468:	fae7d1e3          	bge	a5,a4,8000540a <itrunc+0x12>
    8000546c:	fc843783          	ld	a5,-56(s0)
    80005470:	0807a783          	lw	a5,128(a5)
    80005474:	cbc5                	beqz	a5,80005524 <itrunc+0x12c>
    80005476:	fc843783          	ld	a5,-56(s0)
    8000547a:	4398                	lw	a4,0(a5)
    8000547c:	fc843783          	ld	a5,-56(s0)
    80005480:	0807a783          	lw	a5,128(a5)
    80005484:	85be                	mv	a1,a5
    80005486:	853a                	mv	a0,a4
    80005488:	fffff097          	auipc	ra,0xfffff
    8000548c:	1a0080e7          	jalr	416(ra) # 80004628 <bread>
    80005490:	fea43023          	sd	a0,-32(s0)
    80005494:	fe043783          	ld	a5,-32(s0)
    80005498:	05878793          	addi	a5,a5,88
    8000549c:	fcf43c23          	sd	a5,-40(s0)
    800054a0:	fe042423          	sw	zero,-24(s0)
    800054a4:	a081                	j	800054e4 <itrunc+0xec>
    800054a6:	fe842783          	lw	a5,-24(s0)
    800054aa:	078a                	slli	a5,a5,0x2
    800054ac:	fd843703          	ld	a4,-40(s0)
    800054b0:	97ba                	add	a5,a5,a4
    800054b2:	439c                	lw	a5,0(a5)
    800054b4:	c39d                	beqz	a5,800054da <itrunc+0xe2>
    800054b6:	fc843783          	ld	a5,-56(s0)
    800054ba:	439c                	lw	a5,0(a5)
    800054bc:	0007869b          	sext.w	a3,a5
    800054c0:	fe842783          	lw	a5,-24(s0)
    800054c4:	078a                	slli	a5,a5,0x2
    800054c6:	fd843703          	ld	a4,-40(s0)
    800054ca:	97ba                	add	a5,a5,a4
    800054cc:	439c                	lw	a5,0(a5)
    800054ce:	85be                	mv	a1,a5
    800054d0:	8536                	mv	a0,a3
    800054d2:	fffff097          	auipc	ra,0xfffff
    800054d6:	64e080e7          	jalr	1614(ra) # 80004b20 <bfree>
    800054da:	fe842783          	lw	a5,-24(s0)
    800054de:	2785                	addiw	a5,a5,1
    800054e0:	fef42423          	sw	a5,-24(s0)
    800054e4:	fe842783          	lw	a5,-24(s0)
    800054e8:	873e                	mv	a4,a5
    800054ea:	0ff00793          	li	a5,255
    800054ee:	fae7fce3          	bgeu	a5,a4,800054a6 <itrunc+0xae>
    800054f2:	fe043503          	ld	a0,-32(s0)
    800054f6:	fffff097          	auipc	ra,0xfffff
    800054fa:	1d4080e7          	jalr	468(ra) # 800046ca <brelse>
    800054fe:	fc843783          	ld	a5,-56(s0)
    80005502:	439c                	lw	a5,0(a5)
    80005504:	0007871b          	sext.w	a4,a5
    80005508:	fc843783          	ld	a5,-56(s0)
    8000550c:	0807a783          	lw	a5,128(a5)
    80005510:	85be                	mv	a1,a5
    80005512:	853a                	mv	a0,a4
    80005514:	fffff097          	auipc	ra,0xfffff
    80005518:	60c080e7          	jalr	1548(ra) # 80004b20 <bfree>
    8000551c:	fc843783          	ld	a5,-56(s0)
    80005520:	0807a023          	sw	zero,128(a5)
    80005524:	fc843783          	ld	a5,-56(s0)
    80005528:	0407a623          	sw	zero,76(a5)
    8000552c:	fc843503          	ld	a0,-56(s0)
    80005530:	00000097          	auipc	ra,0x0
    80005534:	890080e7          	jalr	-1904(ra) # 80004dc0 <iupdate>
    80005538:	0001                	nop
    8000553a:	70e2                	ld	ra,56(sp)
    8000553c:	7442                	ld	s0,48(sp)
    8000553e:	6121                	addi	sp,sp,64
    80005540:	8082                	ret

0000000080005542 <stati>:
    80005542:	1101                	addi	sp,sp,-32
    80005544:	ec22                	sd	s0,24(sp)
    80005546:	1000                	addi	s0,sp,32
    80005548:	fea43423          	sd	a0,-24(s0)
    8000554c:	feb43023          	sd	a1,-32(s0)
    80005550:	fe843783          	ld	a5,-24(s0)
    80005554:	439c                	lw	a5,0(a5)
    80005556:	0007871b          	sext.w	a4,a5
    8000555a:	fe043783          	ld	a5,-32(s0)
    8000555e:	c398                	sw	a4,0(a5)
    80005560:	fe843783          	ld	a5,-24(s0)
    80005564:	43d8                	lw	a4,4(a5)
    80005566:	fe043783          	ld	a5,-32(s0)
    8000556a:	c3d8                	sw	a4,4(a5)
    8000556c:	fe843783          	ld	a5,-24(s0)
    80005570:	04479703          	lh	a4,68(a5)
    80005574:	fe043783          	ld	a5,-32(s0)
    80005578:	00e79423          	sh	a4,8(a5)
    8000557c:	fe843783          	ld	a5,-24(s0)
    80005580:	04a79703          	lh	a4,74(a5)
    80005584:	fe043783          	ld	a5,-32(s0)
    80005588:	00e79523          	sh	a4,10(a5)
    8000558c:	fe843783          	ld	a5,-24(s0)
    80005590:	47fc                	lw	a5,76(a5)
    80005592:	02079713          	slli	a4,a5,0x20
    80005596:	9301                	srli	a4,a4,0x20
    80005598:	fe043783          	ld	a5,-32(s0)
    8000559c:	eb98                	sd	a4,16(a5)
    8000559e:	0001                	nop
    800055a0:	6462                	ld	s0,24(sp)
    800055a2:	6105                	addi	sp,sp,32
    800055a4:	8082                	ret

00000000800055a6 <readi>:
    800055a6:	711d                	addi	sp,sp,-96
    800055a8:	ec86                	sd	ra,88(sp)
    800055aa:	e8a2                	sd	s0,80(sp)
    800055ac:	e4a6                	sd	s1,72(sp)
    800055ae:	1080                	addi	s0,sp,96
    800055b0:	faa43c23          	sd	a0,-72(s0)
    800055b4:	87ae                	mv	a5,a1
    800055b6:	fac43423          	sd	a2,-88(s0)
    800055ba:	faf42a23          	sw	a5,-76(s0)
    800055be:	87b6                	mv	a5,a3
    800055c0:	faf42823          	sw	a5,-80(s0)
    800055c4:	87ba                	mv	a5,a4
    800055c6:	faf42223          	sw	a5,-92(s0)
    800055ca:	fb843783          	ld	a5,-72(s0)
    800055ce:	47f8                	lw	a4,76(a5)
    800055d0:	fb042783          	lw	a5,-80(s0)
    800055d4:	2781                	sext.w	a5,a5
    800055d6:	00f76e63          	bltu	a4,a5,800055f2 <readi+0x4c>
    800055da:	fb042703          	lw	a4,-80(s0)
    800055de:	fa442783          	lw	a5,-92(s0)
    800055e2:	9fb9                	addw	a5,a5,a4
    800055e4:	0007871b          	sext.w	a4,a5
    800055e8:	fb042783          	lw	a5,-80(s0)
    800055ec:	2781                	sext.w	a5,a5
    800055ee:	00f77463          	bgeu	a4,a5,800055f6 <readi+0x50>
    800055f2:	4781                	li	a5,0
    800055f4:	aa05                	j	80005724 <readi+0x17e>
    800055f6:	fb042703          	lw	a4,-80(s0)
    800055fa:	fa442783          	lw	a5,-92(s0)
    800055fe:	9fb9                	addw	a5,a5,a4
    80005600:	0007871b          	sext.w	a4,a5
    80005604:	fb843783          	ld	a5,-72(s0)
    80005608:	47fc                	lw	a5,76(a5)
    8000560a:	00e7fb63          	bgeu	a5,a4,80005620 <readi+0x7a>
    8000560e:	fb843783          	ld	a5,-72(s0)
    80005612:	47f8                	lw	a4,76(a5)
    80005614:	fb042783          	lw	a5,-80(s0)
    80005618:	40f707bb          	subw	a5,a4,a5
    8000561c:	faf42223          	sw	a5,-92(s0)
    80005620:	fc042e23          	sw	zero,-36(s0)
    80005624:	a0f5                	j	80005710 <readi+0x16a>
    80005626:	fb843783          	ld	a5,-72(s0)
    8000562a:	4384                	lw	s1,0(a5)
    8000562c:	fb042783          	lw	a5,-80(s0)
    80005630:	00a7d79b          	srliw	a5,a5,0xa
    80005634:	2781                	sext.w	a5,a5
    80005636:	85be                	mv	a1,a5
    80005638:	fb843503          	ld	a0,-72(s0)
    8000563c:	00000097          	auipc	ra,0x0
    80005640:	c60080e7          	jalr	-928(ra) # 8000529c <bmap>
    80005644:	87aa                	mv	a5,a0
    80005646:	2781                	sext.w	a5,a5
    80005648:	85be                	mv	a1,a5
    8000564a:	8526                	mv	a0,s1
    8000564c:	fffff097          	auipc	ra,0xfffff
    80005650:	fdc080e7          	jalr	-36(ra) # 80004628 <bread>
    80005654:	fca43823          	sd	a0,-48(s0)
    80005658:	fb042783          	lw	a5,-80(s0)
    8000565c:	3ff7f793          	andi	a5,a5,1023
    80005660:	2781                	sext.w	a5,a5
    80005662:	40000713          	li	a4,1024
    80005666:	40f707bb          	subw	a5,a4,a5
    8000566a:	0007869b          	sext.w	a3,a5
    8000566e:	fa442703          	lw	a4,-92(s0)
    80005672:	fdc42783          	lw	a5,-36(s0)
    80005676:	40f707bb          	subw	a5,a4,a5
    8000567a:	2781                	sext.w	a5,a5
    8000567c:	863e                	mv	a2,a5
    8000567e:	87b6                	mv	a5,a3
    80005680:	0007869b          	sext.w	a3,a5
    80005684:	0006071b          	sext.w	a4,a2
    80005688:	00d77363          	bgeu	a4,a3,8000568e <readi+0xe8>
    8000568c:	87b2                	mv	a5,a2
    8000568e:	fcf42623          	sw	a5,-52(s0)
    80005692:	fd043783          	ld	a5,-48(s0)
    80005696:	05878713          	addi	a4,a5,88
    8000569a:	fb046783          	lwu	a5,-80(s0)
    8000569e:	3ff7f793          	andi	a5,a5,1023
    800056a2:	973e                	add	a4,a4,a5
    800056a4:	fcc46683          	lwu	a3,-52(s0)
    800056a8:	fb442783          	lw	a5,-76(s0)
    800056ac:	863a                	mv	a2,a4
    800056ae:	fa843583          	ld	a1,-88(s0)
    800056b2:	853e                	mv	a0,a5
    800056b4:	ffffe097          	auipc	ra,0xffffe
    800056b8:	f1c080e7          	jalr	-228(ra) # 800035d0 <either_copyout>
    800056bc:	87aa                	mv	a5,a0
    800056be:	873e                	mv	a4,a5
    800056c0:	57fd                	li	a5,-1
    800056c2:	00f71c63          	bne	a4,a5,800056da <readi+0x134>
    800056c6:	fd043503          	ld	a0,-48(s0)
    800056ca:	fffff097          	auipc	ra,0xfffff
    800056ce:	000080e7          	jalr	ra # 800046ca <brelse>
    800056d2:	57fd                	li	a5,-1
    800056d4:	fcf42e23          	sw	a5,-36(s0)
    800056d8:	a0a1                	j	80005720 <readi+0x17a>
    800056da:	fd043503          	ld	a0,-48(s0)
    800056de:	fffff097          	auipc	ra,0xfffff
    800056e2:	fec080e7          	jalr	-20(ra) # 800046ca <brelse>
    800056e6:	fdc42703          	lw	a4,-36(s0)
    800056ea:	fcc42783          	lw	a5,-52(s0)
    800056ee:	9fb9                	addw	a5,a5,a4
    800056f0:	fcf42e23          	sw	a5,-36(s0)
    800056f4:	fb042703          	lw	a4,-80(s0)
    800056f8:	fcc42783          	lw	a5,-52(s0)
    800056fc:	9fb9                	addw	a5,a5,a4
    800056fe:	faf42823          	sw	a5,-80(s0)
    80005702:	fcc46783          	lwu	a5,-52(s0)
    80005706:	fa843703          	ld	a4,-88(s0)
    8000570a:	97ba                	add	a5,a5,a4
    8000570c:	faf43423          	sd	a5,-88(s0)
    80005710:	fdc42703          	lw	a4,-36(s0)
    80005714:	fa442783          	lw	a5,-92(s0)
    80005718:	2701                	sext.w	a4,a4
    8000571a:	2781                	sext.w	a5,a5
    8000571c:	f0f765e3          	bltu	a4,a5,80005626 <readi+0x80>
    80005720:	fdc42783          	lw	a5,-36(s0)
    80005724:	853e                	mv	a0,a5
    80005726:	60e6                	ld	ra,88(sp)
    80005728:	6446                	ld	s0,80(sp)
    8000572a:	64a6                	ld	s1,72(sp)
    8000572c:	6125                	addi	sp,sp,96
    8000572e:	8082                	ret

0000000080005730 <writei>:
    80005730:	711d                	addi	sp,sp,-96
    80005732:	ec86                	sd	ra,88(sp)
    80005734:	e8a2                	sd	s0,80(sp)
    80005736:	e4a6                	sd	s1,72(sp)
    80005738:	1080                	addi	s0,sp,96
    8000573a:	faa43c23          	sd	a0,-72(s0)
    8000573e:	87ae                	mv	a5,a1
    80005740:	fac43423          	sd	a2,-88(s0)
    80005744:	faf42a23          	sw	a5,-76(s0)
    80005748:	87b6                	mv	a5,a3
    8000574a:	faf42823          	sw	a5,-80(s0)
    8000574e:	87ba                	mv	a5,a4
    80005750:	faf42223          	sw	a5,-92(s0)
    80005754:	fb843783          	ld	a5,-72(s0)
    80005758:	47f8                	lw	a4,76(a5)
    8000575a:	fb042783          	lw	a5,-80(s0)
    8000575e:	2781                	sext.w	a5,a5
    80005760:	00f76e63          	bltu	a4,a5,8000577c <writei+0x4c>
    80005764:	fb042703          	lw	a4,-80(s0)
    80005768:	fa442783          	lw	a5,-92(s0)
    8000576c:	9fb9                	addw	a5,a5,a4
    8000576e:	0007871b          	sext.w	a4,a5
    80005772:	fb042783          	lw	a5,-80(s0)
    80005776:	2781                	sext.w	a5,a5
    80005778:	00f77463          	bgeu	a4,a5,80005780 <writei+0x50>
    8000577c:	57fd                	li	a5,-1
    8000577e:	aaa9                	j	800058d8 <writei+0x1a8>
    80005780:	fb042703          	lw	a4,-80(s0)
    80005784:	fa442783          	lw	a5,-92(s0)
    80005788:	9fb9                	addw	a5,a5,a4
    8000578a:	2781                	sext.w	a5,a5
    8000578c:	873e                	mv	a4,a5
    8000578e:	000437b7          	lui	a5,0x43
    80005792:	00e7f463          	bgeu	a5,a4,8000579a <writei+0x6a>
    80005796:	57fd                	li	a5,-1
    80005798:	a281                	j	800058d8 <writei+0x1a8>
    8000579a:	fc042e23          	sw	zero,-36(s0)
    8000579e:	a8e5                	j	80005896 <writei+0x166>
    800057a0:	fb843783          	ld	a5,-72(s0)
    800057a4:	4384                	lw	s1,0(a5)
    800057a6:	fb042783          	lw	a5,-80(s0)
    800057aa:	00a7d79b          	srliw	a5,a5,0xa
    800057ae:	2781                	sext.w	a5,a5
    800057b0:	85be                	mv	a1,a5
    800057b2:	fb843503          	ld	a0,-72(s0)
    800057b6:	00000097          	auipc	ra,0x0
    800057ba:	ae6080e7          	jalr	-1306(ra) # 8000529c <bmap>
    800057be:	87aa                	mv	a5,a0
    800057c0:	2781                	sext.w	a5,a5
    800057c2:	85be                	mv	a1,a5
    800057c4:	8526                	mv	a0,s1
    800057c6:	fffff097          	auipc	ra,0xfffff
    800057ca:	e62080e7          	jalr	-414(ra) # 80004628 <bread>
    800057ce:	fca43823          	sd	a0,-48(s0)
    800057d2:	fb042783          	lw	a5,-80(s0)
    800057d6:	3ff7f793          	andi	a5,a5,1023
    800057da:	2781                	sext.w	a5,a5
    800057dc:	40000713          	li	a4,1024
    800057e0:	40f707bb          	subw	a5,a4,a5
    800057e4:	0007869b          	sext.w	a3,a5
    800057e8:	fa442703          	lw	a4,-92(s0)
    800057ec:	fdc42783          	lw	a5,-36(s0)
    800057f0:	40f707bb          	subw	a5,a4,a5
    800057f4:	2781                	sext.w	a5,a5
    800057f6:	863e                	mv	a2,a5
    800057f8:	87b6                	mv	a5,a3
    800057fa:	0007869b          	sext.w	a3,a5
    800057fe:	0006071b          	sext.w	a4,a2
    80005802:	00d77363          	bgeu	a4,a3,80005808 <writei+0xd8>
    80005806:	87b2                	mv	a5,a2
    80005808:	fcf42623          	sw	a5,-52(s0)
    8000580c:	fd043783          	ld	a5,-48(s0)
    80005810:	05878713          	addi	a4,a5,88 # 43058 <_entry-0x7ffbcfa8>
    80005814:	fb046783          	lwu	a5,-80(s0)
    80005818:	3ff7f793          	andi	a5,a5,1023
    8000581c:	97ba                	add	a5,a5,a4
    8000581e:	fcc46683          	lwu	a3,-52(s0)
    80005822:	fb442703          	lw	a4,-76(s0)
    80005826:	fa843603          	ld	a2,-88(s0)
    8000582a:	85ba                	mv	a1,a4
    8000582c:	853e                	mv	a0,a5
    8000582e:	ffffe097          	auipc	ra,0xffffe
    80005832:	e16080e7          	jalr	-490(ra) # 80003644 <either_copyin>
    80005836:	87aa                	mv	a5,a0
    80005838:	873e                	mv	a4,a5
    8000583a:	57fd                	li	a5,-1
    8000583c:	00f71c63          	bne	a4,a5,80005854 <writei+0x124>
    80005840:	fd043503          	ld	a0,-48(s0)
    80005844:	fffff097          	auipc	ra,0xfffff
    80005848:	e86080e7          	jalr	-378(ra) # 800046ca <brelse>
    8000584c:	57fd                	li	a5,-1
    8000584e:	faf42223          	sw	a5,-92(s0)
    80005852:	a891                	j	800058a6 <writei+0x176>
    80005854:	fd043503          	ld	a0,-48(s0)
    80005858:	00001097          	auipc	ra,0x1
    8000585c:	afe080e7          	jalr	-1282(ra) # 80006356 <log_write>
    80005860:	fd043503          	ld	a0,-48(s0)
    80005864:	fffff097          	auipc	ra,0xfffff
    80005868:	e66080e7          	jalr	-410(ra) # 800046ca <brelse>
    8000586c:	fdc42703          	lw	a4,-36(s0)
    80005870:	fcc42783          	lw	a5,-52(s0)
    80005874:	9fb9                	addw	a5,a5,a4
    80005876:	fcf42e23          	sw	a5,-36(s0)
    8000587a:	fb042703          	lw	a4,-80(s0)
    8000587e:	fcc42783          	lw	a5,-52(s0)
    80005882:	9fb9                	addw	a5,a5,a4
    80005884:	faf42823          	sw	a5,-80(s0)
    80005888:	fcc46783          	lwu	a5,-52(s0)
    8000588c:	fa843703          	ld	a4,-88(s0)
    80005890:	97ba                	add	a5,a5,a4
    80005892:	faf43423          	sd	a5,-88(s0)
    80005896:	fdc42703          	lw	a4,-36(s0)
    8000589a:	fa442783          	lw	a5,-92(s0)
    8000589e:	2701                	sext.w	a4,a4
    800058a0:	2781                	sext.w	a5,a5
    800058a2:	eef76fe3          	bltu	a4,a5,800057a0 <writei+0x70>
    800058a6:	fa442783          	lw	a5,-92(s0)
    800058aa:	2781                	sext.w	a5,a5
    800058ac:	c785                	beqz	a5,800058d4 <writei+0x1a4>
    800058ae:	fb843783          	ld	a5,-72(s0)
    800058b2:	47f8                	lw	a4,76(a5)
    800058b4:	fb042783          	lw	a5,-80(s0)
    800058b8:	2781                	sext.w	a5,a5
    800058ba:	00f77763          	bgeu	a4,a5,800058c8 <writei+0x198>
    800058be:	fb843783          	ld	a5,-72(s0)
    800058c2:	fb042703          	lw	a4,-80(s0)
    800058c6:	c7f8                	sw	a4,76(a5)
    800058c8:	fb843503          	ld	a0,-72(s0)
    800058cc:	fffff097          	auipc	ra,0xfffff
    800058d0:	4f4080e7          	jalr	1268(ra) # 80004dc0 <iupdate>
    800058d4:	fa442783          	lw	a5,-92(s0)
    800058d8:	853e                	mv	a0,a5
    800058da:	60e6                	ld	ra,88(sp)
    800058dc:	6446                	ld	s0,80(sp)
    800058de:	64a6                	ld	s1,72(sp)
    800058e0:	6125                	addi	sp,sp,96
    800058e2:	8082                	ret

00000000800058e4 <namecmp>:
    800058e4:	1101                	addi	sp,sp,-32
    800058e6:	ec06                	sd	ra,24(sp)
    800058e8:	e822                	sd	s0,16(sp)
    800058ea:	1000                	addi	s0,sp,32
    800058ec:	fea43423          	sd	a0,-24(s0)
    800058f0:	feb43023          	sd	a1,-32(s0)
    800058f4:	4639                	li	a2,14
    800058f6:	fe043583          	ld	a1,-32(s0)
    800058fa:	fe843503          	ld	a0,-24(s0)
    800058fe:	ffffc097          	auipc	ra,0xffffc
    80005902:	d40080e7          	jalr	-704(ra) # 8000163e <strncmp>
    80005906:	87aa                	mv	a5,a0
    80005908:	853e                	mv	a0,a5
    8000590a:	60e2                	ld	ra,24(sp)
    8000590c:	6442                	ld	s0,16(sp)
    8000590e:	6105                	addi	sp,sp,32
    80005910:	8082                	ret

0000000080005912 <dirlookup>:
    80005912:	715d                	addi	sp,sp,-80
    80005914:	e486                	sd	ra,72(sp)
    80005916:	e0a2                	sd	s0,64(sp)
    80005918:	0880                	addi	s0,sp,80
    8000591a:	fca43423          	sd	a0,-56(s0)
    8000591e:	fcb43023          	sd	a1,-64(s0)
    80005922:	fac43c23          	sd	a2,-72(s0)
    80005926:	fc843783          	ld	a5,-56(s0)
    8000592a:	04479783          	lh	a5,68(a5)
    8000592e:	0007871b          	sext.w	a4,a5
    80005932:	4785                	li	a5,1
    80005934:	00f70a63          	beq	a4,a5,80005948 <dirlookup+0x36>
    80005938:	00006517          	auipc	a0,0x6
    8000593c:	ba850513          	addi	a0,a0,-1112 # 8000b4e0 <etext+0x4e0>
    80005940:	ffffb097          	auipc	ra,0xffffb
    80005944:	312080e7          	jalr	786(ra) # 80000c52 <panic>
    80005948:	fe042623          	sw	zero,-20(s0)
    8000594c:	a849                	j	800059de <dirlookup+0xcc>
    8000594e:	fd840793          	addi	a5,s0,-40
    80005952:	fec42683          	lw	a3,-20(s0)
    80005956:	4741                	li	a4,16
    80005958:	863e                	mv	a2,a5
    8000595a:	4581                	li	a1,0
    8000595c:	fc843503          	ld	a0,-56(s0)
    80005960:	00000097          	auipc	ra,0x0
    80005964:	c46080e7          	jalr	-954(ra) # 800055a6 <readi>
    80005968:	87aa                	mv	a5,a0
    8000596a:	873e                	mv	a4,a5
    8000596c:	47c1                	li	a5,16
    8000596e:	00f70a63          	beq	a4,a5,80005982 <dirlookup+0x70>
    80005972:	00006517          	auipc	a0,0x6
    80005976:	b8650513          	addi	a0,a0,-1146 # 8000b4f8 <etext+0x4f8>
    8000597a:	ffffb097          	auipc	ra,0xffffb
    8000597e:	2d8080e7          	jalr	728(ra) # 80000c52 <panic>
    80005982:	fd845783          	lhu	a5,-40(s0)
    80005986:	c7b1                	beqz	a5,800059d2 <dirlookup+0xc0>
    80005988:	fd840793          	addi	a5,s0,-40
    8000598c:	0789                	addi	a5,a5,2
    8000598e:	85be                	mv	a1,a5
    80005990:	fc043503          	ld	a0,-64(s0)
    80005994:	00000097          	auipc	ra,0x0
    80005998:	f50080e7          	jalr	-176(ra) # 800058e4 <namecmp>
    8000599c:	87aa                	mv	a5,a0
    8000599e:	eb9d                	bnez	a5,800059d4 <dirlookup+0xc2>
    800059a0:	fb843783          	ld	a5,-72(s0)
    800059a4:	c791                	beqz	a5,800059b0 <dirlookup+0x9e>
    800059a6:	fb843783          	ld	a5,-72(s0)
    800059aa:	fec42703          	lw	a4,-20(s0)
    800059ae:	c398                	sw	a4,0(a5)
    800059b0:	fd845783          	lhu	a5,-40(s0)
    800059b4:	fef42423          	sw	a5,-24(s0)
    800059b8:	fc843783          	ld	a5,-56(s0)
    800059bc:	439c                	lw	a5,0(a5)
    800059be:	fe842703          	lw	a4,-24(s0)
    800059c2:	85ba                	mv	a1,a4
    800059c4:	853e                	mv	a0,a5
    800059c6:	fffff097          	auipc	ra,0xfffff
    800059ca:	4e2080e7          	jalr	1250(ra) # 80004ea8 <iget>
    800059ce:	87aa                	mv	a5,a0
    800059d0:	a005                	j	800059f0 <dirlookup+0xde>
    800059d2:	0001                	nop
    800059d4:	fec42783          	lw	a5,-20(s0)
    800059d8:	27c1                	addiw	a5,a5,16
    800059da:	fef42623          	sw	a5,-20(s0)
    800059de:	fc843783          	ld	a5,-56(s0)
    800059e2:	47f8                	lw	a4,76(a5)
    800059e4:	fec42783          	lw	a5,-20(s0)
    800059e8:	2781                	sext.w	a5,a5
    800059ea:	f6e7e2e3          	bltu	a5,a4,8000594e <dirlookup+0x3c>
    800059ee:	4781                	li	a5,0
    800059f0:	853e                	mv	a0,a5
    800059f2:	60a6                	ld	ra,72(sp)
    800059f4:	6406                	ld	s0,64(sp)
    800059f6:	6161                	addi	sp,sp,80
    800059f8:	8082                	ret

00000000800059fa <dirlink>:
    800059fa:	715d                	addi	sp,sp,-80
    800059fc:	e486                	sd	ra,72(sp)
    800059fe:	e0a2                	sd	s0,64(sp)
    80005a00:	0880                	addi	s0,sp,80
    80005a02:	fca43423          	sd	a0,-56(s0)
    80005a06:	fcb43023          	sd	a1,-64(s0)
    80005a0a:	87b2                	mv	a5,a2
    80005a0c:	faf42e23          	sw	a5,-68(s0)
    80005a10:	4601                	li	a2,0
    80005a12:	fc043583          	ld	a1,-64(s0)
    80005a16:	fc843503          	ld	a0,-56(s0)
    80005a1a:	00000097          	auipc	ra,0x0
    80005a1e:	ef8080e7          	jalr	-264(ra) # 80005912 <dirlookup>
    80005a22:	fea43023          	sd	a0,-32(s0)
    80005a26:	fe043783          	ld	a5,-32(s0)
    80005a2a:	cb89                	beqz	a5,80005a3c <dirlink+0x42>
    80005a2c:	fe043503          	ld	a0,-32(s0)
    80005a30:	fffff097          	auipc	ra,0xfffff
    80005a34:	76e080e7          	jalr	1902(ra) # 8000519e <iput>
    80005a38:	57fd                	li	a5,-1
    80005a3a:	a865                	j	80005af2 <dirlink+0xf8>
    80005a3c:	fe042623          	sw	zero,-20(s0)
    80005a40:	a0a1                	j	80005a88 <dirlink+0x8e>
    80005a42:	fd040793          	addi	a5,s0,-48
    80005a46:	fec42683          	lw	a3,-20(s0)
    80005a4a:	4741                	li	a4,16
    80005a4c:	863e                	mv	a2,a5
    80005a4e:	4581                	li	a1,0
    80005a50:	fc843503          	ld	a0,-56(s0)
    80005a54:	00000097          	auipc	ra,0x0
    80005a58:	b52080e7          	jalr	-1198(ra) # 800055a6 <readi>
    80005a5c:	87aa                	mv	a5,a0
    80005a5e:	873e                	mv	a4,a5
    80005a60:	47c1                	li	a5,16
    80005a62:	00f70a63          	beq	a4,a5,80005a76 <dirlink+0x7c>
    80005a66:	00006517          	auipc	a0,0x6
    80005a6a:	aa250513          	addi	a0,a0,-1374 # 8000b508 <etext+0x508>
    80005a6e:	ffffb097          	auipc	ra,0xffffb
    80005a72:	1e4080e7          	jalr	484(ra) # 80000c52 <panic>
    80005a76:	fd045783          	lhu	a5,-48(s0)
    80005a7a:	cf99                	beqz	a5,80005a98 <dirlink+0x9e>
    80005a7c:	fec42783          	lw	a5,-20(s0)
    80005a80:	27c1                	addiw	a5,a5,16
    80005a82:	2781                	sext.w	a5,a5
    80005a84:	fef42623          	sw	a5,-20(s0)
    80005a88:	fc843783          	ld	a5,-56(s0)
    80005a8c:	47f8                	lw	a4,76(a5)
    80005a8e:	fec42783          	lw	a5,-20(s0)
    80005a92:	fae7e8e3          	bltu	a5,a4,80005a42 <dirlink+0x48>
    80005a96:	a011                	j	80005a9a <dirlink+0xa0>
    80005a98:	0001                	nop
    80005a9a:	fd040793          	addi	a5,s0,-48
    80005a9e:	0789                	addi	a5,a5,2
    80005aa0:	4639                	li	a2,14
    80005aa2:	fc043583          	ld	a1,-64(s0)
    80005aa6:	853e                	mv	a0,a5
    80005aa8:	ffffc097          	auipc	ra,0xffffc
    80005aac:	c20080e7          	jalr	-992(ra) # 800016c8 <strncpy>
    80005ab0:	fbc42783          	lw	a5,-68(s0)
    80005ab4:	17c2                	slli	a5,a5,0x30
    80005ab6:	93c1                	srli	a5,a5,0x30
    80005ab8:	fcf41823          	sh	a5,-48(s0)
    80005abc:	fd040793          	addi	a5,s0,-48
    80005ac0:	fec42683          	lw	a3,-20(s0)
    80005ac4:	4741                	li	a4,16
    80005ac6:	863e                	mv	a2,a5
    80005ac8:	4581                	li	a1,0
    80005aca:	fc843503          	ld	a0,-56(s0)
    80005ace:	00000097          	auipc	ra,0x0
    80005ad2:	c62080e7          	jalr	-926(ra) # 80005730 <writei>
    80005ad6:	87aa                	mv	a5,a0
    80005ad8:	873e                	mv	a4,a5
    80005ada:	47c1                	li	a5,16
    80005adc:	00f70a63          	beq	a4,a5,80005af0 <dirlink+0xf6>
    80005ae0:	00006517          	auipc	a0,0x6
    80005ae4:	a3850513          	addi	a0,a0,-1480 # 8000b518 <etext+0x518>
    80005ae8:	ffffb097          	auipc	ra,0xffffb
    80005aec:	16a080e7          	jalr	362(ra) # 80000c52 <panic>
    80005af0:	4781                	li	a5,0
    80005af2:	853e                	mv	a0,a5
    80005af4:	60a6                	ld	ra,72(sp)
    80005af6:	6406                	ld	s0,64(sp)
    80005af8:	6161                	addi	sp,sp,80
    80005afa:	8082                	ret

0000000080005afc <skipelem>:
    80005afc:	7179                	addi	sp,sp,-48
    80005afe:	f406                	sd	ra,40(sp)
    80005b00:	f022                	sd	s0,32(sp)
    80005b02:	1800                	addi	s0,sp,48
    80005b04:	fca43c23          	sd	a0,-40(s0)
    80005b08:	fcb43823          	sd	a1,-48(s0)
    80005b0c:	a031                	j	80005b18 <skipelem+0x1c>
    80005b0e:	fd843783          	ld	a5,-40(s0)
    80005b12:	0785                	addi	a5,a5,1
    80005b14:	fcf43c23          	sd	a5,-40(s0)
    80005b18:	fd843783          	ld	a5,-40(s0)
    80005b1c:	0007c783          	lbu	a5,0(a5)
    80005b20:	873e                	mv	a4,a5
    80005b22:	02f00793          	li	a5,47
    80005b26:	fef704e3          	beq	a4,a5,80005b0e <skipelem+0x12>
    80005b2a:	fd843783          	ld	a5,-40(s0)
    80005b2e:	0007c783          	lbu	a5,0(a5)
    80005b32:	e399                	bnez	a5,80005b38 <skipelem+0x3c>
    80005b34:	4781                	li	a5,0
    80005b36:	a06d                	j	80005be0 <skipelem+0xe4>
    80005b38:	fd843783          	ld	a5,-40(s0)
    80005b3c:	fef43423          	sd	a5,-24(s0)
    80005b40:	a031                	j	80005b4c <skipelem+0x50>
    80005b42:	fd843783          	ld	a5,-40(s0)
    80005b46:	0785                	addi	a5,a5,1
    80005b48:	fcf43c23          	sd	a5,-40(s0)
    80005b4c:	fd843783          	ld	a5,-40(s0)
    80005b50:	0007c783          	lbu	a5,0(a5)
    80005b54:	873e                	mv	a4,a5
    80005b56:	02f00793          	li	a5,47
    80005b5a:	00f70763          	beq	a4,a5,80005b68 <skipelem+0x6c>
    80005b5e:	fd843783          	ld	a5,-40(s0)
    80005b62:	0007c783          	lbu	a5,0(a5)
    80005b66:	fff1                	bnez	a5,80005b42 <skipelem+0x46>
    80005b68:	fd843703          	ld	a4,-40(s0)
    80005b6c:	fe843783          	ld	a5,-24(s0)
    80005b70:	40f707b3          	sub	a5,a4,a5
    80005b74:	fef42223          	sw	a5,-28(s0)
    80005b78:	fe442783          	lw	a5,-28(s0)
    80005b7c:	0007871b          	sext.w	a4,a5
    80005b80:	47b5                	li	a5,13
    80005b82:	00e7dc63          	bge	a5,a4,80005b9a <skipelem+0x9e>
    80005b86:	4639                	li	a2,14
    80005b88:	fe843583          	ld	a1,-24(s0)
    80005b8c:	fd043503          	ld	a0,-48(s0)
    80005b90:	ffffc097          	auipc	ra,0xffffc
    80005b94:	9a8080e7          	jalr	-1624(ra) # 80001538 <memmove>
    80005b98:	a80d                	j	80005bca <skipelem+0xce>
    80005b9a:	fe442783          	lw	a5,-28(s0)
    80005b9e:	863e                	mv	a2,a5
    80005ba0:	fe843583          	ld	a1,-24(s0)
    80005ba4:	fd043503          	ld	a0,-48(s0)
    80005ba8:	ffffc097          	auipc	ra,0xffffc
    80005bac:	990080e7          	jalr	-1648(ra) # 80001538 <memmove>
    80005bb0:	fe442783          	lw	a5,-28(s0)
    80005bb4:	fd043703          	ld	a4,-48(s0)
    80005bb8:	97ba                	add	a5,a5,a4
    80005bba:	00078023          	sb	zero,0(a5)
    80005bbe:	a031                	j	80005bca <skipelem+0xce>
    80005bc0:	fd843783          	ld	a5,-40(s0)
    80005bc4:	0785                	addi	a5,a5,1
    80005bc6:	fcf43c23          	sd	a5,-40(s0)
    80005bca:	fd843783          	ld	a5,-40(s0)
    80005bce:	0007c783          	lbu	a5,0(a5)
    80005bd2:	873e                	mv	a4,a5
    80005bd4:	02f00793          	li	a5,47
    80005bd8:	fef704e3          	beq	a4,a5,80005bc0 <skipelem+0xc4>
    80005bdc:	fd843783          	ld	a5,-40(s0)
    80005be0:	853e                	mv	a0,a5
    80005be2:	70a2                	ld	ra,40(sp)
    80005be4:	7402                	ld	s0,32(sp)
    80005be6:	6145                	addi	sp,sp,48
    80005be8:	8082                	ret

0000000080005bea <namex>:
    80005bea:	7139                	addi	sp,sp,-64
    80005bec:	fc06                	sd	ra,56(sp)
    80005bee:	f822                	sd	s0,48(sp)
    80005bf0:	0080                	addi	s0,sp,64
    80005bf2:	fca43c23          	sd	a0,-40(s0)
    80005bf6:	87ae                	mv	a5,a1
    80005bf8:	fcc43423          	sd	a2,-56(s0)
    80005bfc:	fcf42a23          	sw	a5,-44(s0)
    80005c00:	fd843783          	ld	a5,-40(s0)
    80005c04:	0007c783          	lbu	a5,0(a5)
    80005c08:	873e                	mv	a4,a5
    80005c0a:	02f00793          	li	a5,47
    80005c0e:	00f71b63          	bne	a4,a5,80005c24 <namex+0x3a>
    80005c12:	4585                	li	a1,1
    80005c14:	4505                	li	a0,1
    80005c16:	fffff097          	auipc	ra,0xfffff
    80005c1a:	292080e7          	jalr	658(ra) # 80004ea8 <iget>
    80005c1e:	fea43423          	sd	a0,-24(s0)
    80005c22:	a84d                	j	80005cd4 <namex+0xea>
    80005c24:	ffffd097          	auipc	ra,0xffffd
    80005c28:	bc6080e7          	jalr	-1082(ra) # 800027ea <myproc>
    80005c2c:	87aa                	mv	a5,a0
    80005c2e:	1507b783          	ld	a5,336(a5)
    80005c32:	853e                	mv	a0,a5
    80005c34:	fffff097          	auipc	ra,0xfffff
    80005c38:	390080e7          	jalr	912(ra) # 80004fc4 <idup>
    80005c3c:	fea43423          	sd	a0,-24(s0)
    80005c40:	a851                	j	80005cd4 <namex+0xea>
    80005c42:	fe843503          	ld	a0,-24(s0)
    80005c46:	fffff097          	auipc	ra,0xfffff
    80005c4a:	3ca080e7          	jalr	970(ra) # 80005010 <ilock>
    80005c4e:	fe843783          	ld	a5,-24(s0)
    80005c52:	04479783          	lh	a5,68(a5)
    80005c56:	0007871b          	sext.w	a4,a5
    80005c5a:	4785                	li	a5,1
    80005c5c:	00f70a63          	beq	a4,a5,80005c70 <namex+0x86>
    80005c60:	fe843503          	ld	a0,-24(s0)
    80005c64:	fffff097          	auipc	ra,0xfffff
    80005c68:	60a080e7          	jalr	1546(ra) # 8000526e <iunlockput>
    80005c6c:	4781                	li	a5,0
    80005c6e:	a871                	j	80005d0a <namex+0x120>
    80005c70:	fd442783          	lw	a5,-44(s0)
    80005c74:	2781                	sext.w	a5,a5
    80005c76:	cf99                	beqz	a5,80005c94 <namex+0xaa>
    80005c78:	fd843783          	ld	a5,-40(s0)
    80005c7c:	0007c783          	lbu	a5,0(a5)
    80005c80:	eb91                	bnez	a5,80005c94 <namex+0xaa>
    80005c82:	fe843503          	ld	a0,-24(s0)
    80005c86:	fffff097          	auipc	ra,0xfffff
    80005c8a:	4be080e7          	jalr	1214(ra) # 80005144 <iunlock>
    80005c8e:	fe843783          	ld	a5,-24(s0)
    80005c92:	a8a5                	j	80005d0a <namex+0x120>
    80005c94:	4601                	li	a2,0
    80005c96:	fc843583          	ld	a1,-56(s0)
    80005c9a:	fe843503          	ld	a0,-24(s0)
    80005c9e:	00000097          	auipc	ra,0x0
    80005ca2:	c74080e7          	jalr	-908(ra) # 80005912 <dirlookup>
    80005ca6:	fea43023          	sd	a0,-32(s0)
    80005caa:	fe043783          	ld	a5,-32(s0)
    80005cae:	eb89                	bnez	a5,80005cc0 <namex+0xd6>
    80005cb0:	fe843503          	ld	a0,-24(s0)
    80005cb4:	fffff097          	auipc	ra,0xfffff
    80005cb8:	5ba080e7          	jalr	1466(ra) # 8000526e <iunlockput>
    80005cbc:	4781                	li	a5,0
    80005cbe:	a0b1                	j	80005d0a <namex+0x120>
    80005cc0:	fe843503          	ld	a0,-24(s0)
    80005cc4:	fffff097          	auipc	ra,0xfffff
    80005cc8:	5aa080e7          	jalr	1450(ra) # 8000526e <iunlockput>
    80005ccc:	fe043783          	ld	a5,-32(s0)
    80005cd0:	fef43423          	sd	a5,-24(s0)
    80005cd4:	fc843583          	ld	a1,-56(s0)
    80005cd8:	fd843503          	ld	a0,-40(s0)
    80005cdc:	00000097          	auipc	ra,0x0
    80005ce0:	e20080e7          	jalr	-480(ra) # 80005afc <skipelem>
    80005ce4:	fca43c23          	sd	a0,-40(s0)
    80005ce8:	fd843783          	ld	a5,-40(s0)
    80005cec:	fbb9                	bnez	a5,80005c42 <namex+0x58>
    80005cee:	fd442783          	lw	a5,-44(s0)
    80005cf2:	2781                	sext.w	a5,a5
    80005cf4:	cb89                	beqz	a5,80005d06 <namex+0x11c>
    80005cf6:	fe843503          	ld	a0,-24(s0)
    80005cfa:	fffff097          	auipc	ra,0xfffff
    80005cfe:	4a4080e7          	jalr	1188(ra) # 8000519e <iput>
    80005d02:	4781                	li	a5,0
    80005d04:	a019                	j	80005d0a <namex+0x120>
    80005d06:	fe843783          	ld	a5,-24(s0)
    80005d0a:	853e                	mv	a0,a5
    80005d0c:	70e2                	ld	ra,56(sp)
    80005d0e:	7442                	ld	s0,48(sp)
    80005d10:	6121                	addi	sp,sp,64
    80005d12:	8082                	ret

0000000080005d14 <namei>:
    80005d14:	7179                	addi	sp,sp,-48
    80005d16:	f406                	sd	ra,40(sp)
    80005d18:	f022                	sd	s0,32(sp)
    80005d1a:	1800                	addi	s0,sp,48
    80005d1c:	fca43c23          	sd	a0,-40(s0)
    80005d20:	fe040793          	addi	a5,s0,-32
    80005d24:	863e                	mv	a2,a5
    80005d26:	4581                	li	a1,0
    80005d28:	fd843503          	ld	a0,-40(s0)
    80005d2c:	00000097          	auipc	ra,0x0
    80005d30:	ebe080e7          	jalr	-322(ra) # 80005bea <namex>
    80005d34:	87aa                	mv	a5,a0
    80005d36:	853e                	mv	a0,a5
    80005d38:	70a2                	ld	ra,40(sp)
    80005d3a:	7402                	ld	s0,32(sp)
    80005d3c:	6145                	addi	sp,sp,48
    80005d3e:	8082                	ret

0000000080005d40 <nameiparent>:
    80005d40:	1101                	addi	sp,sp,-32
    80005d42:	ec06                	sd	ra,24(sp)
    80005d44:	e822                	sd	s0,16(sp)
    80005d46:	1000                	addi	s0,sp,32
    80005d48:	fea43423          	sd	a0,-24(s0)
    80005d4c:	feb43023          	sd	a1,-32(s0)
    80005d50:	fe043603          	ld	a2,-32(s0)
    80005d54:	4585                	li	a1,1
    80005d56:	fe843503          	ld	a0,-24(s0)
    80005d5a:	00000097          	auipc	ra,0x0
    80005d5e:	e90080e7          	jalr	-368(ra) # 80005bea <namex>
    80005d62:	87aa                	mv	a5,a0
    80005d64:	853e                	mv	a0,a5
    80005d66:	60e2                	ld	ra,24(sp)
    80005d68:	6442                	ld	s0,16(sp)
    80005d6a:	6105                	addi	sp,sp,32
    80005d6c:	8082                	ret

0000000080005d6e <initlog>:
    80005d6e:	1101                	addi	sp,sp,-32
    80005d70:	ec06                	sd	ra,24(sp)
    80005d72:	e822                	sd	s0,16(sp)
    80005d74:	1000                	addi	s0,sp,32
    80005d76:	87aa                	mv	a5,a0
    80005d78:	feb43023          	sd	a1,-32(s0)
    80005d7c:	fef42623          	sw	a5,-20(s0)
    80005d80:	00005597          	auipc	a1,0x5
    80005d84:	7a058593          	addi	a1,a1,1952 # 8000b520 <etext+0x520>
    80005d88:	0001e517          	auipc	a0,0x1e
    80005d8c:	4c850513          	addi	a0,a0,1224 # 80024250 <log>
    80005d90:	ffffb097          	auipc	ra,0xffffb
    80005d94:	4c0080e7          	jalr	1216(ra) # 80001250 <initlock>
    80005d98:	fe043783          	ld	a5,-32(s0)
    80005d9c:	4bdc                	lw	a5,20(a5)
    80005d9e:	0007871b          	sext.w	a4,a5
    80005da2:	0001e797          	auipc	a5,0x1e
    80005da6:	4ae78793          	addi	a5,a5,1198 # 80024250 <log>
    80005daa:	cf98                	sw	a4,24(a5)
    80005dac:	fe043783          	ld	a5,-32(s0)
    80005db0:	4b9c                	lw	a5,16(a5)
    80005db2:	0007871b          	sext.w	a4,a5
    80005db6:	0001e797          	auipc	a5,0x1e
    80005dba:	49a78793          	addi	a5,a5,1178 # 80024250 <log>
    80005dbe:	cfd8                	sw	a4,28(a5)
    80005dc0:	0001e797          	auipc	a5,0x1e
    80005dc4:	49078793          	addi	a5,a5,1168 # 80024250 <log>
    80005dc8:	fec42703          	lw	a4,-20(s0)
    80005dcc:	d798                	sw	a4,40(a5)
    80005dce:	00000097          	auipc	ra,0x0
    80005dd2:	272080e7          	jalr	626(ra) # 80006040 <recover_from_log>
    80005dd6:	0001                	nop
    80005dd8:	60e2                	ld	ra,24(sp)
    80005dda:	6442                	ld	s0,16(sp)
    80005ddc:	6105                	addi	sp,sp,32
    80005dde:	8082                	ret

0000000080005de0 <install_trans>:
    80005de0:	7139                	addi	sp,sp,-64
    80005de2:	fc06                	sd	ra,56(sp)
    80005de4:	f822                	sd	s0,48(sp)
    80005de6:	0080                	addi	s0,sp,64
    80005de8:	87aa                	mv	a5,a0
    80005dea:	fcf42623          	sw	a5,-52(s0)
    80005dee:	fe042623          	sw	zero,-20(s0)
    80005df2:	a0f9                	j	80005ec0 <install_trans+0xe0>
    80005df4:	0001e797          	auipc	a5,0x1e
    80005df8:	45c78793          	addi	a5,a5,1116 # 80024250 <log>
    80005dfc:	579c                	lw	a5,40(a5)
    80005dfe:	0007869b          	sext.w	a3,a5
    80005e02:	0001e797          	auipc	a5,0x1e
    80005e06:	44e78793          	addi	a5,a5,1102 # 80024250 <log>
    80005e0a:	4f9c                	lw	a5,24(a5)
    80005e0c:	fec42703          	lw	a4,-20(s0)
    80005e10:	9fb9                	addw	a5,a5,a4
    80005e12:	2781                	sext.w	a5,a5
    80005e14:	2785                	addiw	a5,a5,1
    80005e16:	2781                	sext.w	a5,a5
    80005e18:	2781                	sext.w	a5,a5
    80005e1a:	85be                	mv	a1,a5
    80005e1c:	8536                	mv	a0,a3
    80005e1e:	fffff097          	auipc	ra,0xfffff
    80005e22:	80a080e7          	jalr	-2038(ra) # 80004628 <bread>
    80005e26:	fea43023          	sd	a0,-32(s0)
    80005e2a:	0001e797          	auipc	a5,0x1e
    80005e2e:	42678793          	addi	a5,a5,1062 # 80024250 <log>
    80005e32:	579c                	lw	a5,40(a5)
    80005e34:	0007869b          	sext.w	a3,a5
    80005e38:	0001e717          	auipc	a4,0x1e
    80005e3c:	41870713          	addi	a4,a4,1048 # 80024250 <log>
    80005e40:	fec42783          	lw	a5,-20(s0)
    80005e44:	07a1                	addi	a5,a5,8
    80005e46:	078a                	slli	a5,a5,0x2
    80005e48:	97ba                	add	a5,a5,a4
    80005e4a:	4b9c                	lw	a5,16(a5)
    80005e4c:	2781                	sext.w	a5,a5
    80005e4e:	85be                	mv	a1,a5
    80005e50:	8536                	mv	a0,a3
    80005e52:	ffffe097          	auipc	ra,0xffffe
    80005e56:	7d6080e7          	jalr	2006(ra) # 80004628 <bread>
    80005e5a:	fca43c23          	sd	a0,-40(s0)
    80005e5e:	fd843783          	ld	a5,-40(s0)
    80005e62:	05878713          	addi	a4,a5,88
    80005e66:	fe043783          	ld	a5,-32(s0)
    80005e6a:	05878793          	addi	a5,a5,88
    80005e6e:	40000613          	li	a2,1024
    80005e72:	85be                	mv	a1,a5
    80005e74:	853a                	mv	a0,a4
    80005e76:	ffffb097          	auipc	ra,0xffffb
    80005e7a:	6c2080e7          	jalr	1730(ra) # 80001538 <memmove>
    80005e7e:	fd843503          	ld	a0,-40(s0)
    80005e82:	fffff097          	auipc	ra,0xfffff
    80005e86:	800080e7          	jalr	-2048(ra) # 80004682 <bwrite>
    80005e8a:	fcc42783          	lw	a5,-52(s0)
    80005e8e:	2781                	sext.w	a5,a5
    80005e90:	e799                	bnez	a5,80005e9e <install_trans+0xbe>
    80005e92:	fd843503          	ld	a0,-40(s0)
    80005e96:	fffff097          	auipc	ra,0xfffff
    80005e9a:	96a080e7          	jalr	-1686(ra) # 80004800 <bunpin>
    80005e9e:	fe043503          	ld	a0,-32(s0)
    80005ea2:	fffff097          	auipc	ra,0xfffff
    80005ea6:	828080e7          	jalr	-2008(ra) # 800046ca <brelse>
    80005eaa:	fd843503          	ld	a0,-40(s0)
    80005eae:	fffff097          	auipc	ra,0xfffff
    80005eb2:	81c080e7          	jalr	-2020(ra) # 800046ca <brelse>
    80005eb6:	fec42783          	lw	a5,-20(s0)
    80005eba:	2785                	addiw	a5,a5,1
    80005ebc:	fef42623          	sw	a5,-20(s0)
    80005ec0:	0001e797          	auipc	a5,0x1e
    80005ec4:	39078793          	addi	a5,a5,912 # 80024250 <log>
    80005ec8:	57d8                	lw	a4,44(a5)
    80005eca:	fec42783          	lw	a5,-20(s0)
    80005ece:	2781                	sext.w	a5,a5
    80005ed0:	f2e7c2e3          	blt	a5,a4,80005df4 <install_trans+0x14>
    80005ed4:	0001                	nop
    80005ed6:	0001                	nop
    80005ed8:	70e2                	ld	ra,56(sp)
    80005eda:	7442                	ld	s0,48(sp)
    80005edc:	6121                	addi	sp,sp,64
    80005ede:	8082                	ret

0000000080005ee0 <read_head>:
    80005ee0:	7179                	addi	sp,sp,-48
    80005ee2:	f406                	sd	ra,40(sp)
    80005ee4:	f022                	sd	s0,32(sp)
    80005ee6:	1800                	addi	s0,sp,48
    80005ee8:	0001e797          	auipc	a5,0x1e
    80005eec:	36878793          	addi	a5,a5,872 # 80024250 <log>
    80005ef0:	579c                	lw	a5,40(a5)
    80005ef2:	0007871b          	sext.w	a4,a5
    80005ef6:	0001e797          	auipc	a5,0x1e
    80005efa:	35a78793          	addi	a5,a5,858 # 80024250 <log>
    80005efe:	4f9c                	lw	a5,24(a5)
    80005f00:	2781                	sext.w	a5,a5
    80005f02:	85be                	mv	a1,a5
    80005f04:	853a                	mv	a0,a4
    80005f06:	ffffe097          	auipc	ra,0xffffe
    80005f0a:	722080e7          	jalr	1826(ra) # 80004628 <bread>
    80005f0e:	fea43023          	sd	a0,-32(s0)
    80005f12:	fe043783          	ld	a5,-32(s0)
    80005f16:	05878793          	addi	a5,a5,88
    80005f1a:	fcf43c23          	sd	a5,-40(s0)
    80005f1e:	fd843783          	ld	a5,-40(s0)
    80005f22:	4398                	lw	a4,0(a5)
    80005f24:	0001e797          	auipc	a5,0x1e
    80005f28:	32c78793          	addi	a5,a5,812 # 80024250 <log>
    80005f2c:	d7d8                	sw	a4,44(a5)
    80005f2e:	fe042623          	sw	zero,-20(s0)
    80005f32:	a03d                	j	80005f60 <read_head+0x80>
    80005f34:	fd843703          	ld	a4,-40(s0)
    80005f38:	fec42783          	lw	a5,-20(s0)
    80005f3c:	078a                	slli	a5,a5,0x2
    80005f3e:	97ba                	add	a5,a5,a4
    80005f40:	43d8                	lw	a4,4(a5)
    80005f42:	0001e697          	auipc	a3,0x1e
    80005f46:	30e68693          	addi	a3,a3,782 # 80024250 <log>
    80005f4a:	fec42783          	lw	a5,-20(s0)
    80005f4e:	07a1                	addi	a5,a5,8
    80005f50:	078a                	slli	a5,a5,0x2
    80005f52:	97b6                	add	a5,a5,a3
    80005f54:	cb98                	sw	a4,16(a5)
    80005f56:	fec42783          	lw	a5,-20(s0)
    80005f5a:	2785                	addiw	a5,a5,1
    80005f5c:	fef42623          	sw	a5,-20(s0)
    80005f60:	0001e797          	auipc	a5,0x1e
    80005f64:	2f078793          	addi	a5,a5,752 # 80024250 <log>
    80005f68:	57d8                	lw	a4,44(a5)
    80005f6a:	fec42783          	lw	a5,-20(s0)
    80005f6e:	2781                	sext.w	a5,a5
    80005f70:	fce7c2e3          	blt	a5,a4,80005f34 <read_head+0x54>
    80005f74:	fe043503          	ld	a0,-32(s0)
    80005f78:	ffffe097          	auipc	ra,0xffffe
    80005f7c:	752080e7          	jalr	1874(ra) # 800046ca <brelse>
    80005f80:	0001                	nop
    80005f82:	70a2                	ld	ra,40(sp)
    80005f84:	7402                	ld	s0,32(sp)
    80005f86:	6145                	addi	sp,sp,48
    80005f88:	8082                	ret

0000000080005f8a <write_head>:
    80005f8a:	7179                	addi	sp,sp,-48
    80005f8c:	f406                	sd	ra,40(sp)
    80005f8e:	f022                	sd	s0,32(sp)
    80005f90:	1800                	addi	s0,sp,48
    80005f92:	0001e797          	auipc	a5,0x1e
    80005f96:	2be78793          	addi	a5,a5,702 # 80024250 <log>
    80005f9a:	579c                	lw	a5,40(a5)
    80005f9c:	0007871b          	sext.w	a4,a5
    80005fa0:	0001e797          	auipc	a5,0x1e
    80005fa4:	2b078793          	addi	a5,a5,688 # 80024250 <log>
    80005fa8:	4f9c                	lw	a5,24(a5)
    80005faa:	2781                	sext.w	a5,a5
    80005fac:	85be                	mv	a1,a5
    80005fae:	853a                	mv	a0,a4
    80005fb0:	ffffe097          	auipc	ra,0xffffe
    80005fb4:	678080e7          	jalr	1656(ra) # 80004628 <bread>
    80005fb8:	fea43023          	sd	a0,-32(s0)
    80005fbc:	fe043783          	ld	a5,-32(s0)
    80005fc0:	05878793          	addi	a5,a5,88
    80005fc4:	fcf43c23          	sd	a5,-40(s0)
    80005fc8:	0001e797          	auipc	a5,0x1e
    80005fcc:	28878793          	addi	a5,a5,648 # 80024250 <log>
    80005fd0:	57d8                	lw	a4,44(a5)
    80005fd2:	fd843783          	ld	a5,-40(s0)
    80005fd6:	c398                	sw	a4,0(a5)
    80005fd8:	fe042623          	sw	zero,-20(s0)
    80005fdc:	a03d                	j	8000600a <write_head+0x80>
    80005fde:	0001e717          	auipc	a4,0x1e
    80005fe2:	27270713          	addi	a4,a4,626 # 80024250 <log>
    80005fe6:	fec42783          	lw	a5,-20(s0)
    80005fea:	07a1                	addi	a5,a5,8
    80005fec:	078a                	slli	a5,a5,0x2
    80005fee:	97ba                	add	a5,a5,a4
    80005ff0:	4b98                	lw	a4,16(a5)
    80005ff2:	fd843683          	ld	a3,-40(s0)
    80005ff6:	fec42783          	lw	a5,-20(s0)
    80005ffa:	078a                	slli	a5,a5,0x2
    80005ffc:	97b6                	add	a5,a5,a3
    80005ffe:	c3d8                	sw	a4,4(a5)
    80006000:	fec42783          	lw	a5,-20(s0)
    80006004:	2785                	addiw	a5,a5,1
    80006006:	fef42623          	sw	a5,-20(s0)
    8000600a:	0001e797          	auipc	a5,0x1e
    8000600e:	24678793          	addi	a5,a5,582 # 80024250 <log>
    80006012:	57d8                	lw	a4,44(a5)
    80006014:	fec42783          	lw	a5,-20(s0)
    80006018:	2781                	sext.w	a5,a5
    8000601a:	fce7c2e3          	blt	a5,a4,80005fde <write_head+0x54>
    8000601e:	fe043503          	ld	a0,-32(s0)
    80006022:	ffffe097          	auipc	ra,0xffffe
    80006026:	660080e7          	jalr	1632(ra) # 80004682 <bwrite>
    8000602a:	fe043503          	ld	a0,-32(s0)
    8000602e:	ffffe097          	auipc	ra,0xffffe
    80006032:	69c080e7          	jalr	1692(ra) # 800046ca <brelse>
    80006036:	0001                	nop
    80006038:	70a2                	ld	ra,40(sp)
    8000603a:	7402                	ld	s0,32(sp)
    8000603c:	6145                	addi	sp,sp,48
    8000603e:	8082                	ret

0000000080006040 <recover_from_log>:
    80006040:	1141                	addi	sp,sp,-16
    80006042:	e406                	sd	ra,8(sp)
    80006044:	e022                	sd	s0,0(sp)
    80006046:	0800                	addi	s0,sp,16
    80006048:	00000097          	auipc	ra,0x0
    8000604c:	e98080e7          	jalr	-360(ra) # 80005ee0 <read_head>
    80006050:	4505                	li	a0,1
    80006052:	00000097          	auipc	ra,0x0
    80006056:	d8e080e7          	jalr	-626(ra) # 80005de0 <install_trans>
    8000605a:	0001e797          	auipc	a5,0x1e
    8000605e:	1f678793          	addi	a5,a5,502 # 80024250 <log>
    80006062:	0207a623          	sw	zero,44(a5)
    80006066:	00000097          	auipc	ra,0x0
    8000606a:	f24080e7          	jalr	-220(ra) # 80005f8a <write_head>
    8000606e:	0001                	nop
    80006070:	60a2                	ld	ra,8(sp)
    80006072:	6402                	ld	s0,0(sp)
    80006074:	0141                	addi	sp,sp,16
    80006076:	8082                	ret

0000000080006078 <begin_op>:
    80006078:	1141                	addi	sp,sp,-16
    8000607a:	e406                	sd	ra,8(sp)
    8000607c:	e022                	sd	s0,0(sp)
    8000607e:	0800                	addi	s0,sp,16
    80006080:	0001e517          	auipc	a0,0x1e
    80006084:	1d050513          	addi	a0,a0,464 # 80024250 <log>
    80006088:	ffffb097          	auipc	ra,0xffffb
    8000608c:	1f8080e7          	jalr	504(ra) # 80001280 <acquire>
    80006090:	0001e797          	auipc	a5,0x1e
    80006094:	1c078793          	addi	a5,a5,448 # 80024250 <log>
    80006098:	53dc                	lw	a5,36(a5)
    8000609a:	cf91                	beqz	a5,800060b6 <begin_op+0x3e>
    8000609c:	0001e597          	auipc	a1,0x1e
    800060a0:	1b458593          	addi	a1,a1,436 # 80024250 <log>
    800060a4:	0001e517          	auipc	a0,0x1e
    800060a8:	1ac50513          	addi	a0,a0,428 # 80024250 <log>
    800060ac:	ffffd097          	auipc	ra,0xffffd
    800060b0:	312080e7          	jalr	786(ra) # 800033be <sleep>
    800060b4:	bff1                	j	80006090 <begin_op+0x18>
    800060b6:	0001e797          	auipc	a5,0x1e
    800060ba:	19a78793          	addi	a5,a5,410 # 80024250 <log>
    800060be:	57d8                	lw	a4,44(a5)
    800060c0:	0001e797          	auipc	a5,0x1e
    800060c4:	19078793          	addi	a5,a5,400 # 80024250 <log>
    800060c8:	539c                	lw	a5,32(a5)
    800060ca:	2785                	addiw	a5,a5,1
    800060cc:	2781                	sext.w	a5,a5
    800060ce:	86be                	mv	a3,a5
    800060d0:	87b6                	mv	a5,a3
    800060d2:	0027979b          	slliw	a5,a5,0x2
    800060d6:	9fb5                	addw	a5,a5,a3
    800060d8:	0017979b          	slliw	a5,a5,0x1
    800060dc:	2781                	sext.w	a5,a5
    800060de:	9fb9                	addw	a5,a5,a4
    800060e0:	2781                	sext.w	a5,a5
    800060e2:	873e                	mv	a4,a5
    800060e4:	47f9                	li	a5,30
    800060e6:	00e7df63          	bge	a5,a4,80006104 <begin_op+0x8c>
    800060ea:	0001e597          	auipc	a1,0x1e
    800060ee:	16658593          	addi	a1,a1,358 # 80024250 <log>
    800060f2:	0001e517          	auipc	a0,0x1e
    800060f6:	15e50513          	addi	a0,a0,350 # 80024250 <log>
    800060fa:	ffffd097          	auipc	ra,0xffffd
    800060fe:	2c4080e7          	jalr	708(ra) # 800033be <sleep>
    80006102:	b779                	j	80006090 <begin_op+0x18>
    80006104:	0001e797          	auipc	a5,0x1e
    80006108:	14c78793          	addi	a5,a5,332 # 80024250 <log>
    8000610c:	539c                	lw	a5,32(a5)
    8000610e:	2785                	addiw	a5,a5,1
    80006110:	0007871b          	sext.w	a4,a5
    80006114:	0001e797          	auipc	a5,0x1e
    80006118:	13c78793          	addi	a5,a5,316 # 80024250 <log>
    8000611c:	d398                	sw	a4,32(a5)
    8000611e:	0001e517          	auipc	a0,0x1e
    80006122:	13250513          	addi	a0,a0,306 # 80024250 <log>
    80006126:	ffffb097          	auipc	ra,0xffffb
    8000612a:	1be080e7          	jalr	446(ra) # 800012e4 <release>
    8000612e:	0001                	nop
    80006130:	0001                	nop
    80006132:	60a2                	ld	ra,8(sp)
    80006134:	6402                	ld	s0,0(sp)
    80006136:	0141                	addi	sp,sp,16
    80006138:	8082                	ret

000000008000613a <end_op>:
    8000613a:	1101                	addi	sp,sp,-32
    8000613c:	ec06                	sd	ra,24(sp)
    8000613e:	e822                	sd	s0,16(sp)
    80006140:	1000                	addi	s0,sp,32
    80006142:	fe042623          	sw	zero,-20(s0)
    80006146:	0001e517          	auipc	a0,0x1e
    8000614a:	10a50513          	addi	a0,a0,266 # 80024250 <log>
    8000614e:	ffffb097          	auipc	ra,0xffffb
    80006152:	132080e7          	jalr	306(ra) # 80001280 <acquire>
    80006156:	0001e797          	auipc	a5,0x1e
    8000615a:	0fa78793          	addi	a5,a5,250 # 80024250 <log>
    8000615e:	539c                	lw	a5,32(a5)
    80006160:	37fd                	addiw	a5,a5,-1
    80006162:	0007871b          	sext.w	a4,a5
    80006166:	0001e797          	auipc	a5,0x1e
    8000616a:	0ea78793          	addi	a5,a5,234 # 80024250 <log>
    8000616e:	d398                	sw	a4,32(a5)
    80006170:	0001e797          	auipc	a5,0x1e
    80006174:	0e078793          	addi	a5,a5,224 # 80024250 <log>
    80006178:	53dc                	lw	a5,36(a5)
    8000617a:	cb89                	beqz	a5,8000618c <end_op+0x52>
    8000617c:	00005517          	auipc	a0,0x5
    80006180:	3ac50513          	addi	a0,a0,940 # 8000b528 <etext+0x528>
    80006184:	ffffb097          	auipc	ra,0xffffb
    80006188:	ace080e7          	jalr	-1330(ra) # 80000c52 <panic>
    8000618c:	0001e797          	auipc	a5,0x1e
    80006190:	0c478793          	addi	a5,a5,196 # 80024250 <log>
    80006194:	539c                	lw	a5,32(a5)
    80006196:	eb99                	bnez	a5,800061ac <end_op+0x72>
    80006198:	4785                	li	a5,1
    8000619a:	fef42623          	sw	a5,-20(s0)
    8000619e:	0001e797          	auipc	a5,0x1e
    800061a2:	0b278793          	addi	a5,a5,178 # 80024250 <log>
    800061a6:	4705                	li	a4,1
    800061a8:	d3d8                	sw	a4,36(a5)
    800061aa:	a809                	j	800061bc <end_op+0x82>
    800061ac:	0001e517          	auipc	a0,0x1e
    800061b0:	0a450513          	addi	a0,a0,164 # 80024250 <log>
    800061b4:	ffffd097          	auipc	ra,0xffffd
    800061b8:	29e080e7          	jalr	670(ra) # 80003452 <wakeup>
    800061bc:	0001e517          	auipc	a0,0x1e
    800061c0:	09450513          	addi	a0,a0,148 # 80024250 <log>
    800061c4:	ffffb097          	auipc	ra,0xffffb
    800061c8:	120080e7          	jalr	288(ra) # 800012e4 <release>
    800061cc:	fec42783          	lw	a5,-20(s0)
    800061d0:	2781                	sext.w	a5,a5
    800061d2:	c3b9                	beqz	a5,80006218 <end_op+0xde>
    800061d4:	00000097          	auipc	ra,0x0
    800061d8:	134080e7          	jalr	308(ra) # 80006308 <commit>
    800061dc:	0001e517          	auipc	a0,0x1e
    800061e0:	07450513          	addi	a0,a0,116 # 80024250 <log>
    800061e4:	ffffb097          	auipc	ra,0xffffb
    800061e8:	09c080e7          	jalr	156(ra) # 80001280 <acquire>
    800061ec:	0001e797          	auipc	a5,0x1e
    800061f0:	06478793          	addi	a5,a5,100 # 80024250 <log>
    800061f4:	0207a223          	sw	zero,36(a5)
    800061f8:	0001e517          	auipc	a0,0x1e
    800061fc:	05850513          	addi	a0,a0,88 # 80024250 <log>
    80006200:	ffffd097          	auipc	ra,0xffffd
    80006204:	252080e7          	jalr	594(ra) # 80003452 <wakeup>
    80006208:	0001e517          	auipc	a0,0x1e
    8000620c:	04850513          	addi	a0,a0,72 # 80024250 <log>
    80006210:	ffffb097          	auipc	ra,0xffffb
    80006214:	0d4080e7          	jalr	212(ra) # 800012e4 <release>
    80006218:	0001                	nop
    8000621a:	60e2                	ld	ra,24(sp)
    8000621c:	6442                	ld	s0,16(sp)
    8000621e:	6105                	addi	sp,sp,32
    80006220:	8082                	ret

0000000080006222 <write_log>:
    80006222:	7179                	addi	sp,sp,-48
    80006224:	f406                	sd	ra,40(sp)
    80006226:	f022                	sd	s0,32(sp)
    80006228:	1800                	addi	s0,sp,48
    8000622a:	fe042623          	sw	zero,-20(s0)
    8000622e:	a86d                	j	800062e8 <write_log+0xc6>
    80006230:	0001e797          	auipc	a5,0x1e
    80006234:	02078793          	addi	a5,a5,32 # 80024250 <log>
    80006238:	579c                	lw	a5,40(a5)
    8000623a:	0007869b          	sext.w	a3,a5
    8000623e:	0001e797          	auipc	a5,0x1e
    80006242:	01278793          	addi	a5,a5,18 # 80024250 <log>
    80006246:	4f9c                	lw	a5,24(a5)
    80006248:	fec42703          	lw	a4,-20(s0)
    8000624c:	9fb9                	addw	a5,a5,a4
    8000624e:	2781                	sext.w	a5,a5
    80006250:	2785                	addiw	a5,a5,1
    80006252:	2781                	sext.w	a5,a5
    80006254:	2781                	sext.w	a5,a5
    80006256:	85be                	mv	a1,a5
    80006258:	8536                	mv	a0,a3
    8000625a:	ffffe097          	auipc	ra,0xffffe
    8000625e:	3ce080e7          	jalr	974(ra) # 80004628 <bread>
    80006262:	fea43023          	sd	a0,-32(s0)
    80006266:	0001e797          	auipc	a5,0x1e
    8000626a:	fea78793          	addi	a5,a5,-22 # 80024250 <log>
    8000626e:	579c                	lw	a5,40(a5)
    80006270:	0007869b          	sext.w	a3,a5
    80006274:	0001e717          	auipc	a4,0x1e
    80006278:	fdc70713          	addi	a4,a4,-36 # 80024250 <log>
    8000627c:	fec42783          	lw	a5,-20(s0)
    80006280:	07a1                	addi	a5,a5,8
    80006282:	078a                	slli	a5,a5,0x2
    80006284:	97ba                	add	a5,a5,a4
    80006286:	4b9c                	lw	a5,16(a5)
    80006288:	2781                	sext.w	a5,a5
    8000628a:	85be                	mv	a1,a5
    8000628c:	8536                	mv	a0,a3
    8000628e:	ffffe097          	auipc	ra,0xffffe
    80006292:	39a080e7          	jalr	922(ra) # 80004628 <bread>
    80006296:	fca43c23          	sd	a0,-40(s0)
    8000629a:	fe043783          	ld	a5,-32(s0)
    8000629e:	05878713          	addi	a4,a5,88
    800062a2:	fd843783          	ld	a5,-40(s0)
    800062a6:	05878793          	addi	a5,a5,88
    800062aa:	40000613          	li	a2,1024
    800062ae:	85be                	mv	a1,a5
    800062b0:	853a                	mv	a0,a4
    800062b2:	ffffb097          	auipc	ra,0xffffb
    800062b6:	286080e7          	jalr	646(ra) # 80001538 <memmove>
    800062ba:	fe043503          	ld	a0,-32(s0)
    800062be:	ffffe097          	auipc	ra,0xffffe
    800062c2:	3c4080e7          	jalr	964(ra) # 80004682 <bwrite>
    800062c6:	fd843503          	ld	a0,-40(s0)
    800062ca:	ffffe097          	auipc	ra,0xffffe
    800062ce:	400080e7          	jalr	1024(ra) # 800046ca <brelse>
    800062d2:	fe043503          	ld	a0,-32(s0)
    800062d6:	ffffe097          	auipc	ra,0xffffe
    800062da:	3f4080e7          	jalr	1012(ra) # 800046ca <brelse>
    800062de:	fec42783          	lw	a5,-20(s0)
    800062e2:	2785                	addiw	a5,a5,1
    800062e4:	fef42623          	sw	a5,-20(s0)
    800062e8:	0001e797          	auipc	a5,0x1e
    800062ec:	f6878793          	addi	a5,a5,-152 # 80024250 <log>
    800062f0:	57d8                	lw	a4,44(a5)
    800062f2:	fec42783          	lw	a5,-20(s0)
    800062f6:	2781                	sext.w	a5,a5
    800062f8:	f2e7cce3          	blt	a5,a4,80006230 <write_log+0xe>
    800062fc:	0001                	nop
    800062fe:	0001                	nop
    80006300:	70a2                	ld	ra,40(sp)
    80006302:	7402                	ld	s0,32(sp)
    80006304:	6145                	addi	sp,sp,48
    80006306:	8082                	ret

0000000080006308 <commit>:
    80006308:	1141                	addi	sp,sp,-16
    8000630a:	e406                	sd	ra,8(sp)
    8000630c:	e022                	sd	s0,0(sp)
    8000630e:	0800                	addi	s0,sp,16
    80006310:	0001e797          	auipc	a5,0x1e
    80006314:	f4078793          	addi	a5,a5,-192 # 80024250 <log>
    80006318:	57dc                	lw	a5,44(a5)
    8000631a:	02f05963          	blez	a5,8000634c <commit+0x44>
    8000631e:	00000097          	auipc	ra,0x0
    80006322:	f04080e7          	jalr	-252(ra) # 80006222 <write_log>
    80006326:	00000097          	auipc	ra,0x0
    8000632a:	c64080e7          	jalr	-924(ra) # 80005f8a <write_head>
    8000632e:	4501                	li	a0,0
    80006330:	00000097          	auipc	ra,0x0
    80006334:	ab0080e7          	jalr	-1360(ra) # 80005de0 <install_trans>
    80006338:	0001e797          	auipc	a5,0x1e
    8000633c:	f1878793          	addi	a5,a5,-232 # 80024250 <log>
    80006340:	0207a623          	sw	zero,44(a5)
    80006344:	00000097          	auipc	ra,0x0
    80006348:	c46080e7          	jalr	-954(ra) # 80005f8a <write_head>
    8000634c:	0001                	nop
    8000634e:	60a2                	ld	ra,8(sp)
    80006350:	6402                	ld	s0,0(sp)
    80006352:	0141                	addi	sp,sp,16
    80006354:	8082                	ret

0000000080006356 <log_write>:
    80006356:	7179                	addi	sp,sp,-48
    80006358:	f406                	sd	ra,40(sp)
    8000635a:	f022                	sd	s0,32(sp)
    8000635c:	1800                	addi	s0,sp,48
    8000635e:	fca43c23          	sd	a0,-40(s0)
    80006362:	0001e797          	auipc	a5,0x1e
    80006366:	eee78793          	addi	a5,a5,-274 # 80024250 <log>
    8000636a:	57dc                	lw	a5,44(a5)
    8000636c:	873e                	mv	a4,a5
    8000636e:	47f5                	li	a5,29
    80006370:	02e7c063          	blt	a5,a4,80006390 <log_write+0x3a>
    80006374:	0001e797          	auipc	a5,0x1e
    80006378:	edc78793          	addi	a5,a5,-292 # 80024250 <log>
    8000637c:	57d8                	lw	a4,44(a5)
    8000637e:	0001e797          	auipc	a5,0x1e
    80006382:	ed278793          	addi	a5,a5,-302 # 80024250 <log>
    80006386:	4fdc                	lw	a5,28(a5)
    80006388:	37fd                	addiw	a5,a5,-1
    8000638a:	2781                	sext.w	a5,a5
    8000638c:	00f74a63          	blt	a4,a5,800063a0 <log_write+0x4a>
    80006390:	00005517          	auipc	a0,0x5
    80006394:	1a850513          	addi	a0,a0,424 # 8000b538 <etext+0x538>
    80006398:	ffffb097          	auipc	ra,0xffffb
    8000639c:	8ba080e7          	jalr	-1862(ra) # 80000c52 <panic>
    800063a0:	0001e797          	auipc	a5,0x1e
    800063a4:	eb078793          	addi	a5,a5,-336 # 80024250 <log>
    800063a8:	539c                	lw	a5,32(a5)
    800063aa:	00f04a63          	bgtz	a5,800063be <log_write+0x68>
    800063ae:	00005517          	auipc	a0,0x5
    800063b2:	1a250513          	addi	a0,a0,418 # 8000b550 <etext+0x550>
    800063b6:	ffffb097          	auipc	ra,0xffffb
    800063ba:	89c080e7          	jalr	-1892(ra) # 80000c52 <panic>
    800063be:	0001e517          	auipc	a0,0x1e
    800063c2:	e9250513          	addi	a0,a0,-366 # 80024250 <log>
    800063c6:	ffffb097          	auipc	ra,0xffffb
    800063ca:	eba080e7          	jalr	-326(ra) # 80001280 <acquire>
    800063ce:	fe042623          	sw	zero,-20(s0)
    800063d2:	a03d                	j	80006400 <log_write+0xaa>
    800063d4:	0001e717          	auipc	a4,0x1e
    800063d8:	e7c70713          	addi	a4,a4,-388 # 80024250 <log>
    800063dc:	fec42783          	lw	a5,-20(s0)
    800063e0:	07a1                	addi	a5,a5,8
    800063e2:	078a                	slli	a5,a5,0x2
    800063e4:	97ba                	add	a5,a5,a4
    800063e6:	4b9c                	lw	a5,16(a5)
    800063e8:	0007871b          	sext.w	a4,a5
    800063ec:	fd843783          	ld	a5,-40(s0)
    800063f0:	47dc                	lw	a5,12(a5)
    800063f2:	02f70263          	beq	a4,a5,80006416 <log_write+0xc0>
    800063f6:	fec42783          	lw	a5,-20(s0)
    800063fa:	2785                	addiw	a5,a5,1
    800063fc:	fef42623          	sw	a5,-20(s0)
    80006400:	0001e797          	auipc	a5,0x1e
    80006404:	e5078793          	addi	a5,a5,-432 # 80024250 <log>
    80006408:	57d8                	lw	a4,44(a5)
    8000640a:	fec42783          	lw	a5,-20(s0)
    8000640e:	2781                	sext.w	a5,a5
    80006410:	fce7c2e3          	blt	a5,a4,800063d4 <log_write+0x7e>
    80006414:	a011                	j	80006418 <log_write+0xc2>
    80006416:	0001                	nop
    80006418:	fd843783          	ld	a5,-40(s0)
    8000641c:	47dc                	lw	a5,12(a5)
    8000641e:	0007871b          	sext.w	a4,a5
    80006422:	0001e697          	auipc	a3,0x1e
    80006426:	e2e68693          	addi	a3,a3,-466 # 80024250 <log>
    8000642a:	fec42783          	lw	a5,-20(s0)
    8000642e:	07a1                	addi	a5,a5,8
    80006430:	078a                	slli	a5,a5,0x2
    80006432:	97b6                	add	a5,a5,a3
    80006434:	cb98                	sw	a4,16(a5)
    80006436:	0001e797          	auipc	a5,0x1e
    8000643a:	e1a78793          	addi	a5,a5,-486 # 80024250 <log>
    8000643e:	57d8                	lw	a4,44(a5)
    80006440:	fec42783          	lw	a5,-20(s0)
    80006444:	2781                	sext.w	a5,a5
    80006446:	02e79563          	bne	a5,a4,80006470 <log_write+0x11a>
    8000644a:	fd843503          	ld	a0,-40(s0)
    8000644e:	ffffe097          	auipc	ra,0xffffe
    80006452:	36a080e7          	jalr	874(ra) # 800047b8 <bpin>
    80006456:	0001e797          	auipc	a5,0x1e
    8000645a:	dfa78793          	addi	a5,a5,-518 # 80024250 <log>
    8000645e:	57dc                	lw	a5,44(a5)
    80006460:	2785                	addiw	a5,a5,1
    80006462:	0007871b          	sext.w	a4,a5
    80006466:	0001e797          	auipc	a5,0x1e
    8000646a:	dea78793          	addi	a5,a5,-534 # 80024250 <log>
    8000646e:	d7d8                	sw	a4,44(a5)
    80006470:	0001e517          	auipc	a0,0x1e
    80006474:	de050513          	addi	a0,a0,-544 # 80024250 <log>
    80006478:	ffffb097          	auipc	ra,0xffffb
    8000647c:	e6c080e7          	jalr	-404(ra) # 800012e4 <release>
    80006480:	0001                	nop
    80006482:	70a2                	ld	ra,40(sp)
    80006484:	7402                	ld	s0,32(sp)
    80006486:	6145                	addi	sp,sp,48
    80006488:	8082                	ret

000000008000648a <initsleeplock>:
    8000648a:	1101                	addi	sp,sp,-32
    8000648c:	ec06                	sd	ra,24(sp)
    8000648e:	e822                	sd	s0,16(sp)
    80006490:	1000                	addi	s0,sp,32
    80006492:	fea43423          	sd	a0,-24(s0)
    80006496:	feb43023          	sd	a1,-32(s0)
    8000649a:	fe843783          	ld	a5,-24(s0)
    8000649e:	07a1                	addi	a5,a5,8
    800064a0:	00005597          	auipc	a1,0x5
    800064a4:	0d058593          	addi	a1,a1,208 # 8000b570 <etext+0x570>
    800064a8:	853e                	mv	a0,a5
    800064aa:	ffffb097          	auipc	ra,0xffffb
    800064ae:	da6080e7          	jalr	-602(ra) # 80001250 <initlock>
    800064b2:	fe843783          	ld	a5,-24(s0)
    800064b6:	fe043703          	ld	a4,-32(s0)
    800064ba:	f398                	sd	a4,32(a5)
    800064bc:	fe843783          	ld	a5,-24(s0)
    800064c0:	0007a023          	sw	zero,0(a5)
    800064c4:	fe843783          	ld	a5,-24(s0)
    800064c8:	0207a423          	sw	zero,40(a5)
    800064cc:	0001                	nop
    800064ce:	60e2                	ld	ra,24(sp)
    800064d0:	6442                	ld	s0,16(sp)
    800064d2:	6105                	addi	sp,sp,32
    800064d4:	8082                	ret

00000000800064d6 <acquiresleep>:
    800064d6:	1101                	addi	sp,sp,-32
    800064d8:	ec06                	sd	ra,24(sp)
    800064da:	e822                	sd	s0,16(sp)
    800064dc:	1000                	addi	s0,sp,32
    800064de:	fea43423          	sd	a0,-24(s0)
    800064e2:	fe843783          	ld	a5,-24(s0)
    800064e6:	07a1                	addi	a5,a5,8
    800064e8:	853e                	mv	a0,a5
    800064ea:	ffffb097          	auipc	ra,0xffffb
    800064ee:	d96080e7          	jalr	-618(ra) # 80001280 <acquire>
    800064f2:	a819                	j	80006508 <acquiresleep+0x32>
    800064f4:	fe843783          	ld	a5,-24(s0)
    800064f8:	07a1                	addi	a5,a5,8
    800064fa:	85be                	mv	a1,a5
    800064fc:	fe843503          	ld	a0,-24(s0)
    80006500:	ffffd097          	auipc	ra,0xffffd
    80006504:	ebe080e7          	jalr	-322(ra) # 800033be <sleep>
    80006508:	fe843783          	ld	a5,-24(s0)
    8000650c:	439c                	lw	a5,0(a5)
    8000650e:	f3fd                	bnez	a5,800064f4 <acquiresleep+0x1e>
    80006510:	fe843783          	ld	a5,-24(s0)
    80006514:	4705                	li	a4,1
    80006516:	c398                	sw	a4,0(a5)
    80006518:	ffffc097          	auipc	ra,0xffffc
    8000651c:	2d2080e7          	jalr	722(ra) # 800027ea <myproc>
    80006520:	87aa                	mv	a5,a0
    80006522:	5f98                	lw	a4,56(a5)
    80006524:	fe843783          	ld	a5,-24(s0)
    80006528:	d798                	sw	a4,40(a5)
    8000652a:	fe843783          	ld	a5,-24(s0)
    8000652e:	07a1                	addi	a5,a5,8
    80006530:	853e                	mv	a0,a5
    80006532:	ffffb097          	auipc	ra,0xffffb
    80006536:	db2080e7          	jalr	-590(ra) # 800012e4 <release>
    8000653a:	0001                	nop
    8000653c:	60e2                	ld	ra,24(sp)
    8000653e:	6442                	ld	s0,16(sp)
    80006540:	6105                	addi	sp,sp,32
    80006542:	8082                	ret

0000000080006544 <releasesleep>:
    80006544:	1101                	addi	sp,sp,-32
    80006546:	ec06                	sd	ra,24(sp)
    80006548:	e822                	sd	s0,16(sp)
    8000654a:	1000                	addi	s0,sp,32
    8000654c:	fea43423          	sd	a0,-24(s0)
    80006550:	fe843783          	ld	a5,-24(s0)
    80006554:	07a1                	addi	a5,a5,8
    80006556:	853e                	mv	a0,a5
    80006558:	ffffb097          	auipc	ra,0xffffb
    8000655c:	d28080e7          	jalr	-728(ra) # 80001280 <acquire>
    80006560:	fe843783          	ld	a5,-24(s0)
    80006564:	0007a023          	sw	zero,0(a5)
    80006568:	fe843783          	ld	a5,-24(s0)
    8000656c:	0207a423          	sw	zero,40(a5)
    80006570:	fe843503          	ld	a0,-24(s0)
    80006574:	ffffd097          	auipc	ra,0xffffd
    80006578:	ede080e7          	jalr	-290(ra) # 80003452 <wakeup>
    8000657c:	fe843783          	ld	a5,-24(s0)
    80006580:	07a1                	addi	a5,a5,8
    80006582:	853e                	mv	a0,a5
    80006584:	ffffb097          	auipc	ra,0xffffb
    80006588:	d60080e7          	jalr	-672(ra) # 800012e4 <release>
    8000658c:	0001                	nop
    8000658e:	60e2                	ld	ra,24(sp)
    80006590:	6442                	ld	s0,16(sp)
    80006592:	6105                	addi	sp,sp,32
    80006594:	8082                	ret

0000000080006596 <holdingsleep>:
    80006596:	7139                	addi	sp,sp,-64
    80006598:	fc06                	sd	ra,56(sp)
    8000659a:	f822                	sd	s0,48(sp)
    8000659c:	f426                	sd	s1,40(sp)
    8000659e:	0080                	addi	s0,sp,64
    800065a0:	fca43423          	sd	a0,-56(s0)
    800065a4:	fc843783          	ld	a5,-56(s0)
    800065a8:	07a1                	addi	a5,a5,8
    800065aa:	853e                	mv	a0,a5
    800065ac:	ffffb097          	auipc	ra,0xffffb
    800065b0:	cd4080e7          	jalr	-812(ra) # 80001280 <acquire>
    800065b4:	fc843783          	ld	a5,-56(s0)
    800065b8:	439c                	lw	a5,0(a5)
    800065ba:	cf99                	beqz	a5,800065d8 <holdingsleep+0x42>
    800065bc:	fc843783          	ld	a5,-56(s0)
    800065c0:	5784                	lw	s1,40(a5)
    800065c2:	ffffc097          	auipc	ra,0xffffc
    800065c6:	228080e7          	jalr	552(ra) # 800027ea <myproc>
    800065ca:	87aa                	mv	a5,a0
    800065cc:	5f9c                	lw	a5,56(a5)
    800065ce:	8726                	mv	a4,s1
    800065d0:	00f71463          	bne	a4,a5,800065d8 <holdingsleep+0x42>
    800065d4:	4785                	li	a5,1
    800065d6:	a011                	j	800065da <holdingsleep+0x44>
    800065d8:	4781                	li	a5,0
    800065da:	fcf42e23          	sw	a5,-36(s0)
    800065de:	fc843783          	ld	a5,-56(s0)
    800065e2:	07a1                	addi	a5,a5,8
    800065e4:	853e                	mv	a0,a5
    800065e6:	ffffb097          	auipc	ra,0xffffb
    800065ea:	cfe080e7          	jalr	-770(ra) # 800012e4 <release>
    800065ee:	fdc42783          	lw	a5,-36(s0)
    800065f2:	853e                	mv	a0,a5
    800065f4:	70e2                	ld	ra,56(sp)
    800065f6:	7442                	ld	s0,48(sp)
    800065f8:	74a2                	ld	s1,40(sp)
    800065fa:	6121                	addi	sp,sp,64
    800065fc:	8082                	ret

00000000800065fe <fileinit>:
    800065fe:	1141                	addi	sp,sp,-16
    80006600:	e406                	sd	ra,8(sp)
    80006602:	e022                	sd	s0,0(sp)
    80006604:	0800                	addi	s0,sp,16
    80006606:	00005597          	auipc	a1,0x5
    8000660a:	f7a58593          	addi	a1,a1,-134 # 8000b580 <etext+0x580>
    8000660e:	0001e517          	auipc	a0,0x1e
    80006612:	d8a50513          	addi	a0,a0,-630 # 80024398 <ftable>
    80006616:	ffffb097          	auipc	ra,0xffffb
    8000661a:	c3a080e7          	jalr	-966(ra) # 80001250 <initlock>
    8000661e:	0001                	nop
    80006620:	60a2                	ld	ra,8(sp)
    80006622:	6402                	ld	s0,0(sp)
    80006624:	0141                	addi	sp,sp,16
    80006626:	8082                	ret

0000000080006628 <filealloc>:
    80006628:	1101                	addi	sp,sp,-32
    8000662a:	ec06                	sd	ra,24(sp)
    8000662c:	e822                	sd	s0,16(sp)
    8000662e:	1000                	addi	s0,sp,32
    80006630:	0001e517          	auipc	a0,0x1e
    80006634:	d6850513          	addi	a0,a0,-664 # 80024398 <ftable>
    80006638:	ffffb097          	auipc	ra,0xffffb
    8000663c:	c48080e7          	jalr	-952(ra) # 80001280 <acquire>
    80006640:	0001e797          	auipc	a5,0x1e
    80006644:	d7078793          	addi	a5,a5,-656 # 800243b0 <ftable+0x18>
    80006648:	fef43423          	sd	a5,-24(s0)
    8000664c:	a815                	j	80006680 <filealloc+0x58>
    8000664e:	fe843783          	ld	a5,-24(s0)
    80006652:	43dc                	lw	a5,4(a5)
    80006654:	e385                	bnez	a5,80006674 <filealloc+0x4c>
    80006656:	fe843783          	ld	a5,-24(s0)
    8000665a:	4705                	li	a4,1
    8000665c:	c3d8                	sw	a4,4(a5)
    8000665e:	0001e517          	auipc	a0,0x1e
    80006662:	d3a50513          	addi	a0,a0,-710 # 80024398 <ftable>
    80006666:	ffffb097          	auipc	ra,0xffffb
    8000666a:	c7e080e7          	jalr	-898(ra) # 800012e4 <release>
    8000666e:	fe843783          	ld	a5,-24(s0)
    80006672:	a805                	j	800066a2 <filealloc+0x7a>
    80006674:	fe843783          	ld	a5,-24(s0)
    80006678:	02878793          	addi	a5,a5,40
    8000667c:	fef43423          	sd	a5,-24(s0)
    80006680:	0001f797          	auipc	a5,0x1f
    80006684:	cd078793          	addi	a5,a5,-816 # 80025350 <ftable+0xfb8>
    80006688:	fe843703          	ld	a4,-24(s0)
    8000668c:	fcf761e3          	bltu	a4,a5,8000664e <filealloc+0x26>
    80006690:	0001e517          	auipc	a0,0x1e
    80006694:	d0850513          	addi	a0,a0,-760 # 80024398 <ftable>
    80006698:	ffffb097          	auipc	ra,0xffffb
    8000669c:	c4c080e7          	jalr	-948(ra) # 800012e4 <release>
    800066a0:	4781                	li	a5,0
    800066a2:	853e                	mv	a0,a5
    800066a4:	60e2                	ld	ra,24(sp)
    800066a6:	6442                	ld	s0,16(sp)
    800066a8:	6105                	addi	sp,sp,32
    800066aa:	8082                	ret

00000000800066ac <filedup>:
    800066ac:	1101                	addi	sp,sp,-32
    800066ae:	ec06                	sd	ra,24(sp)
    800066b0:	e822                	sd	s0,16(sp)
    800066b2:	1000                	addi	s0,sp,32
    800066b4:	fea43423          	sd	a0,-24(s0)
    800066b8:	0001e517          	auipc	a0,0x1e
    800066bc:	ce050513          	addi	a0,a0,-800 # 80024398 <ftable>
    800066c0:	ffffb097          	auipc	ra,0xffffb
    800066c4:	bc0080e7          	jalr	-1088(ra) # 80001280 <acquire>
    800066c8:	fe843783          	ld	a5,-24(s0)
    800066cc:	43dc                	lw	a5,4(a5)
    800066ce:	00f04a63          	bgtz	a5,800066e2 <filedup+0x36>
    800066d2:	00005517          	auipc	a0,0x5
    800066d6:	eb650513          	addi	a0,a0,-330 # 8000b588 <etext+0x588>
    800066da:	ffffa097          	auipc	ra,0xffffa
    800066de:	578080e7          	jalr	1400(ra) # 80000c52 <panic>
    800066e2:	fe843783          	ld	a5,-24(s0)
    800066e6:	43dc                	lw	a5,4(a5)
    800066e8:	2785                	addiw	a5,a5,1
    800066ea:	0007871b          	sext.w	a4,a5
    800066ee:	fe843783          	ld	a5,-24(s0)
    800066f2:	c3d8                	sw	a4,4(a5)
    800066f4:	0001e517          	auipc	a0,0x1e
    800066f8:	ca450513          	addi	a0,a0,-860 # 80024398 <ftable>
    800066fc:	ffffb097          	auipc	ra,0xffffb
    80006700:	be8080e7          	jalr	-1048(ra) # 800012e4 <release>
    80006704:	fe843783          	ld	a5,-24(s0)
    80006708:	853e                	mv	a0,a5
    8000670a:	60e2                	ld	ra,24(sp)
    8000670c:	6442                	ld	s0,16(sp)
    8000670e:	6105                	addi	sp,sp,32
    80006710:	8082                	ret

0000000080006712 <fileclose>:
    80006712:	715d                	addi	sp,sp,-80
    80006714:	e486                	sd	ra,72(sp)
    80006716:	e0a2                	sd	s0,64(sp)
    80006718:	0880                	addi	s0,sp,80
    8000671a:	faa43c23          	sd	a0,-72(s0)
    8000671e:	0001e517          	auipc	a0,0x1e
    80006722:	c7a50513          	addi	a0,a0,-902 # 80024398 <ftable>
    80006726:	ffffb097          	auipc	ra,0xffffb
    8000672a:	b5a080e7          	jalr	-1190(ra) # 80001280 <acquire>
    8000672e:	fb843783          	ld	a5,-72(s0)
    80006732:	43dc                	lw	a5,4(a5)
    80006734:	00f04a63          	bgtz	a5,80006748 <fileclose+0x36>
    80006738:	00005517          	auipc	a0,0x5
    8000673c:	e5850513          	addi	a0,a0,-424 # 8000b590 <etext+0x590>
    80006740:	ffffa097          	auipc	ra,0xffffa
    80006744:	512080e7          	jalr	1298(ra) # 80000c52 <panic>
    80006748:	fb843783          	ld	a5,-72(s0)
    8000674c:	43dc                	lw	a5,4(a5)
    8000674e:	37fd                	addiw	a5,a5,-1
    80006750:	0007871b          	sext.w	a4,a5
    80006754:	fb843783          	ld	a5,-72(s0)
    80006758:	c3d8                	sw	a4,4(a5)
    8000675a:	fb843783          	ld	a5,-72(s0)
    8000675e:	43dc                	lw	a5,4(a5)
    80006760:	00f05b63          	blez	a5,80006776 <fileclose+0x64>
    80006764:	0001e517          	auipc	a0,0x1e
    80006768:	c3450513          	addi	a0,a0,-972 # 80024398 <ftable>
    8000676c:	ffffb097          	auipc	ra,0xffffb
    80006770:	b78080e7          	jalr	-1160(ra) # 800012e4 <release>
    80006774:	a879                	j	80006812 <fileclose+0x100>
    80006776:	fb843783          	ld	a5,-72(s0)
    8000677a:	638c                	ld	a1,0(a5)
    8000677c:	6790                	ld	a2,8(a5)
    8000677e:	6b94                	ld	a3,16(a5)
    80006780:	6f98                	ld	a4,24(a5)
    80006782:	739c                	ld	a5,32(a5)
    80006784:	fcb43423          	sd	a1,-56(s0)
    80006788:	fcc43823          	sd	a2,-48(s0)
    8000678c:	fcd43c23          	sd	a3,-40(s0)
    80006790:	fee43023          	sd	a4,-32(s0)
    80006794:	fef43423          	sd	a5,-24(s0)
    80006798:	fb843783          	ld	a5,-72(s0)
    8000679c:	0007a223          	sw	zero,4(a5)
    800067a0:	fb843783          	ld	a5,-72(s0)
    800067a4:	0007a023          	sw	zero,0(a5)
    800067a8:	0001e517          	auipc	a0,0x1e
    800067ac:	bf050513          	addi	a0,a0,-1040 # 80024398 <ftable>
    800067b0:	ffffb097          	auipc	ra,0xffffb
    800067b4:	b34080e7          	jalr	-1228(ra) # 800012e4 <release>
    800067b8:	fc842783          	lw	a5,-56(s0)
    800067bc:	873e                	mv	a4,a5
    800067be:	4785                	li	a5,1
    800067c0:	00f71e63          	bne	a4,a5,800067dc <fileclose+0xca>
    800067c4:	fd843783          	ld	a5,-40(s0)
    800067c8:	fd144703          	lbu	a4,-47(s0)
    800067cc:	2701                	sext.w	a4,a4
    800067ce:	85ba                	mv	a1,a4
    800067d0:	853e                	mv	a0,a5
    800067d2:	00000097          	auipc	ra,0x0
    800067d6:	5c4080e7          	jalr	1476(ra) # 80006d96 <pipeclose>
    800067da:	a825                	j	80006812 <fileclose+0x100>
    800067dc:	fc842783          	lw	a5,-56(s0)
    800067e0:	873e                	mv	a4,a5
    800067e2:	4789                	li	a5,2
    800067e4:	00f70863          	beq	a4,a5,800067f4 <fileclose+0xe2>
    800067e8:	fc842783          	lw	a5,-56(s0)
    800067ec:	873e                	mv	a4,a5
    800067ee:	478d                	li	a5,3
    800067f0:	02f71163          	bne	a4,a5,80006812 <fileclose+0x100>
    800067f4:	00000097          	auipc	ra,0x0
    800067f8:	884080e7          	jalr	-1916(ra) # 80006078 <begin_op>
    800067fc:	fe043783          	ld	a5,-32(s0)
    80006800:	853e                	mv	a0,a5
    80006802:	fffff097          	auipc	ra,0xfffff
    80006806:	99c080e7          	jalr	-1636(ra) # 8000519e <iput>
    8000680a:	00000097          	auipc	ra,0x0
    8000680e:	930080e7          	jalr	-1744(ra) # 8000613a <end_op>
    80006812:	60a6                	ld	ra,72(sp)
    80006814:	6406                	ld	s0,64(sp)
    80006816:	6161                	addi	sp,sp,80
    80006818:	8082                	ret

000000008000681a <filestat>:
    8000681a:	7139                	addi	sp,sp,-64
    8000681c:	fc06                	sd	ra,56(sp)
    8000681e:	f822                	sd	s0,48(sp)
    80006820:	0080                	addi	s0,sp,64
    80006822:	fca43423          	sd	a0,-56(s0)
    80006826:	fcb43023          	sd	a1,-64(s0)
    8000682a:	ffffc097          	auipc	ra,0xffffc
    8000682e:	fc0080e7          	jalr	-64(ra) # 800027ea <myproc>
    80006832:	fea43423          	sd	a0,-24(s0)
    80006836:	fc843783          	ld	a5,-56(s0)
    8000683a:	439c                	lw	a5,0(a5)
    8000683c:	873e                	mv	a4,a5
    8000683e:	4789                	li	a5,2
    80006840:	00f70963          	beq	a4,a5,80006852 <filestat+0x38>
    80006844:	fc843783          	ld	a5,-56(s0)
    80006848:	439c                	lw	a5,0(a5)
    8000684a:	873e                	mv	a4,a5
    8000684c:	478d                	li	a5,3
    8000684e:	06f71263          	bne	a4,a5,800068b2 <filestat+0x98>
    80006852:	fc843783          	ld	a5,-56(s0)
    80006856:	6f9c                	ld	a5,24(a5)
    80006858:	853e                	mv	a0,a5
    8000685a:	ffffe097          	auipc	ra,0xffffe
    8000685e:	7b6080e7          	jalr	1974(ra) # 80005010 <ilock>
    80006862:	fc843783          	ld	a5,-56(s0)
    80006866:	6f9c                	ld	a5,24(a5)
    80006868:	fd040713          	addi	a4,s0,-48
    8000686c:	85ba                	mv	a1,a4
    8000686e:	853e                	mv	a0,a5
    80006870:	fffff097          	auipc	ra,0xfffff
    80006874:	cd2080e7          	jalr	-814(ra) # 80005542 <stati>
    80006878:	fc843783          	ld	a5,-56(s0)
    8000687c:	6f9c                	ld	a5,24(a5)
    8000687e:	853e                	mv	a0,a5
    80006880:	fffff097          	auipc	ra,0xfffff
    80006884:	8c4080e7          	jalr	-1852(ra) # 80005144 <iunlock>
    80006888:	fe843783          	ld	a5,-24(s0)
    8000688c:	6bbc                	ld	a5,80(a5)
    8000688e:	fd040713          	addi	a4,s0,-48
    80006892:	46e1                	li	a3,24
    80006894:	863a                	mv	a2,a4
    80006896:	fc043583          	ld	a1,-64(s0)
    8000689a:	853e                	mv	a0,a5
    8000689c:	ffffc097          	auipc	ra,0xffffc
    800068a0:	a38080e7          	jalr	-1480(ra) # 800022d4 <copyout>
    800068a4:	87aa                	mv	a5,a0
    800068a6:	0007d463          	bgez	a5,800068ae <filestat+0x94>
    800068aa:	57fd                	li	a5,-1
    800068ac:	a021                	j	800068b4 <filestat+0x9a>
    800068ae:	4781                	li	a5,0
    800068b0:	a011                	j	800068b4 <filestat+0x9a>
    800068b2:	57fd                	li	a5,-1
    800068b4:	853e                	mv	a0,a5
    800068b6:	70e2                	ld	ra,56(sp)
    800068b8:	7442                	ld	s0,48(sp)
    800068ba:	6121                	addi	sp,sp,64
    800068bc:	8082                	ret

00000000800068be <fileread>:
    800068be:	7139                	addi	sp,sp,-64
    800068c0:	fc06                	sd	ra,56(sp)
    800068c2:	f822                	sd	s0,48(sp)
    800068c4:	0080                	addi	s0,sp,64
    800068c6:	fca43c23          	sd	a0,-40(s0)
    800068ca:	fcb43823          	sd	a1,-48(s0)
    800068ce:	87b2                	mv	a5,a2
    800068d0:	fcf42623          	sw	a5,-52(s0)
    800068d4:	fe042623          	sw	zero,-20(s0)
    800068d8:	fd843783          	ld	a5,-40(s0)
    800068dc:	0087c783          	lbu	a5,8(a5)
    800068e0:	e399                	bnez	a5,800068e6 <fileread+0x28>
    800068e2:	57fd                	li	a5,-1
    800068e4:	aa1d                	j	80006a1a <fileread+0x15c>
    800068e6:	fd843783          	ld	a5,-40(s0)
    800068ea:	439c                	lw	a5,0(a5)
    800068ec:	873e                	mv	a4,a5
    800068ee:	4785                	li	a5,1
    800068f0:	02f71363          	bne	a4,a5,80006916 <fileread+0x58>
    800068f4:	fd843783          	ld	a5,-40(s0)
    800068f8:	6b9c                	ld	a5,16(a5)
    800068fa:	fcc42703          	lw	a4,-52(s0)
    800068fe:	863a                	mv	a2,a4
    80006900:	fd043583          	ld	a1,-48(s0)
    80006904:	853e                	mv	a0,a5
    80006906:	00000097          	auipc	ra,0x0
    8000690a:	680080e7          	jalr	1664(ra) # 80006f86 <piperead>
    8000690e:	87aa                	mv	a5,a0
    80006910:	fef42623          	sw	a5,-20(s0)
    80006914:	a209                	j	80006a16 <fileread+0x158>
    80006916:	fd843783          	ld	a5,-40(s0)
    8000691a:	439c                	lw	a5,0(a5)
    8000691c:	873e                	mv	a4,a5
    8000691e:	478d                	li	a5,3
    80006920:	06f71863          	bne	a4,a5,80006990 <fileread+0xd2>
    80006924:	fd843783          	ld	a5,-40(s0)
    80006928:	02479783          	lh	a5,36(a5)
    8000692c:	2781                	sext.w	a5,a5
    8000692e:	0207c863          	bltz	a5,8000695e <fileread+0xa0>
    80006932:	fd843783          	ld	a5,-40(s0)
    80006936:	02479783          	lh	a5,36(a5)
    8000693a:	0007871b          	sext.w	a4,a5
    8000693e:	47a5                	li	a5,9
    80006940:	00e7cf63          	blt	a5,a4,8000695e <fileread+0xa0>
    80006944:	fd843783          	ld	a5,-40(s0)
    80006948:	02479783          	lh	a5,36(a5)
    8000694c:	2781                	sext.w	a5,a5
    8000694e:	0001e717          	auipc	a4,0x1e
    80006952:	9aa70713          	addi	a4,a4,-1622 # 800242f8 <devsw>
    80006956:	0792                	slli	a5,a5,0x4
    80006958:	97ba                	add	a5,a5,a4
    8000695a:	639c                	ld	a5,0(a5)
    8000695c:	e399                	bnez	a5,80006962 <fileread+0xa4>
    8000695e:	57fd                	li	a5,-1
    80006960:	a86d                	j	80006a1a <fileread+0x15c>
    80006962:	fd843783          	ld	a5,-40(s0)
    80006966:	02479783          	lh	a5,36(a5)
    8000696a:	2781                	sext.w	a5,a5
    8000696c:	0001e717          	auipc	a4,0x1e
    80006970:	98c70713          	addi	a4,a4,-1652 # 800242f8 <devsw>
    80006974:	0792                	slli	a5,a5,0x4
    80006976:	97ba                	add	a5,a5,a4
    80006978:	6398                	ld	a4,0(a5)
    8000697a:	fcc42783          	lw	a5,-52(s0)
    8000697e:	863e                	mv	a2,a5
    80006980:	fd043583          	ld	a1,-48(s0)
    80006984:	4505                	li	a0,1
    80006986:	9702                	jalr	a4
    80006988:	87aa                	mv	a5,a0
    8000698a:	fef42623          	sw	a5,-20(s0)
    8000698e:	a061                	j	80006a16 <fileread+0x158>
    80006990:	fd843783          	ld	a5,-40(s0)
    80006994:	439c                	lw	a5,0(a5)
    80006996:	873e                	mv	a4,a5
    80006998:	4789                	li	a5,2
    8000699a:	06f71663          	bne	a4,a5,80006a06 <fileread+0x148>
    8000699e:	fd843783          	ld	a5,-40(s0)
    800069a2:	6f9c                	ld	a5,24(a5)
    800069a4:	853e                	mv	a0,a5
    800069a6:	ffffe097          	auipc	ra,0xffffe
    800069aa:	66a080e7          	jalr	1642(ra) # 80005010 <ilock>
    800069ae:	fd843783          	ld	a5,-40(s0)
    800069b2:	6f88                	ld	a0,24(a5)
    800069b4:	fd843783          	ld	a5,-40(s0)
    800069b8:	539c                	lw	a5,32(a5)
    800069ba:	fcc42703          	lw	a4,-52(s0)
    800069be:	86be                	mv	a3,a5
    800069c0:	fd043603          	ld	a2,-48(s0)
    800069c4:	4585                	li	a1,1
    800069c6:	fffff097          	auipc	ra,0xfffff
    800069ca:	be0080e7          	jalr	-1056(ra) # 800055a6 <readi>
    800069ce:	87aa                	mv	a5,a0
    800069d0:	fef42623          	sw	a5,-20(s0)
    800069d4:	fec42783          	lw	a5,-20(s0)
    800069d8:	2781                	sext.w	a5,a5
    800069da:	00f05d63          	blez	a5,800069f4 <fileread+0x136>
    800069de:	fd843783          	ld	a5,-40(s0)
    800069e2:	5398                	lw	a4,32(a5)
    800069e4:	fec42783          	lw	a5,-20(s0)
    800069e8:	9fb9                	addw	a5,a5,a4
    800069ea:	0007871b          	sext.w	a4,a5
    800069ee:	fd843783          	ld	a5,-40(s0)
    800069f2:	d398                	sw	a4,32(a5)
    800069f4:	fd843783          	ld	a5,-40(s0)
    800069f8:	6f9c                	ld	a5,24(a5)
    800069fa:	853e                	mv	a0,a5
    800069fc:	ffffe097          	auipc	ra,0xffffe
    80006a00:	748080e7          	jalr	1864(ra) # 80005144 <iunlock>
    80006a04:	a809                	j	80006a16 <fileread+0x158>
    80006a06:	00005517          	auipc	a0,0x5
    80006a0a:	b9a50513          	addi	a0,a0,-1126 # 8000b5a0 <etext+0x5a0>
    80006a0e:	ffffa097          	auipc	ra,0xffffa
    80006a12:	244080e7          	jalr	580(ra) # 80000c52 <panic>
    80006a16:	fec42783          	lw	a5,-20(s0)
    80006a1a:	853e                	mv	a0,a5
    80006a1c:	70e2                	ld	ra,56(sp)
    80006a1e:	7442                	ld	s0,48(sp)
    80006a20:	6121                	addi	sp,sp,64
    80006a22:	8082                	ret

0000000080006a24 <filewrite>:
    80006a24:	715d                	addi	sp,sp,-80
    80006a26:	e486                	sd	ra,72(sp)
    80006a28:	e0a2                	sd	s0,64(sp)
    80006a2a:	0880                	addi	s0,sp,80
    80006a2c:	fca43423          	sd	a0,-56(s0)
    80006a30:	fcb43023          	sd	a1,-64(s0)
    80006a34:	87b2                	mv	a5,a2
    80006a36:	faf42e23          	sw	a5,-68(s0)
    80006a3a:	fe042623          	sw	zero,-20(s0)
    80006a3e:	fc843783          	ld	a5,-56(s0)
    80006a42:	0097c783          	lbu	a5,9(a5)
    80006a46:	e399                	bnez	a5,80006a4c <filewrite+0x28>
    80006a48:	57fd                	li	a5,-1
    80006a4a:	a2fd                	j	80006c38 <filewrite+0x214>
    80006a4c:	fc843783          	ld	a5,-56(s0)
    80006a50:	439c                	lw	a5,0(a5)
    80006a52:	873e                	mv	a4,a5
    80006a54:	4785                	li	a5,1
    80006a56:	02f71363          	bne	a4,a5,80006a7c <filewrite+0x58>
    80006a5a:	fc843783          	ld	a5,-56(s0)
    80006a5e:	6b9c                	ld	a5,16(a5)
    80006a60:	fbc42703          	lw	a4,-68(s0)
    80006a64:	863a                	mv	a2,a4
    80006a66:	fc043583          	ld	a1,-64(s0)
    80006a6a:	853e                	mv	a0,a5
    80006a6c:	00000097          	auipc	ra,0x0
    80006a70:	3d2080e7          	jalr	978(ra) # 80006e3e <pipewrite>
    80006a74:	87aa                	mv	a5,a0
    80006a76:	fef42623          	sw	a5,-20(s0)
    80006a7a:	aa6d                	j	80006c34 <filewrite+0x210>
    80006a7c:	fc843783          	ld	a5,-56(s0)
    80006a80:	439c                	lw	a5,0(a5)
    80006a82:	873e                	mv	a4,a5
    80006a84:	478d                	li	a5,3
    80006a86:	06f71863          	bne	a4,a5,80006af6 <filewrite+0xd2>
    80006a8a:	fc843783          	ld	a5,-56(s0)
    80006a8e:	02479783          	lh	a5,36(a5)
    80006a92:	2781                	sext.w	a5,a5
    80006a94:	0207c863          	bltz	a5,80006ac4 <filewrite+0xa0>
    80006a98:	fc843783          	ld	a5,-56(s0)
    80006a9c:	02479783          	lh	a5,36(a5)
    80006aa0:	0007871b          	sext.w	a4,a5
    80006aa4:	47a5                	li	a5,9
    80006aa6:	00e7cf63          	blt	a5,a4,80006ac4 <filewrite+0xa0>
    80006aaa:	fc843783          	ld	a5,-56(s0)
    80006aae:	02479783          	lh	a5,36(a5)
    80006ab2:	2781                	sext.w	a5,a5
    80006ab4:	0001e717          	auipc	a4,0x1e
    80006ab8:	84470713          	addi	a4,a4,-1980 # 800242f8 <devsw>
    80006abc:	0792                	slli	a5,a5,0x4
    80006abe:	97ba                	add	a5,a5,a4
    80006ac0:	679c                	ld	a5,8(a5)
    80006ac2:	e399                	bnez	a5,80006ac8 <filewrite+0xa4>
    80006ac4:	57fd                	li	a5,-1
    80006ac6:	aa8d                	j	80006c38 <filewrite+0x214>
    80006ac8:	fc843783          	ld	a5,-56(s0)
    80006acc:	02479783          	lh	a5,36(a5)
    80006ad0:	2781                	sext.w	a5,a5
    80006ad2:	0001e717          	auipc	a4,0x1e
    80006ad6:	82670713          	addi	a4,a4,-2010 # 800242f8 <devsw>
    80006ada:	0792                	slli	a5,a5,0x4
    80006adc:	97ba                	add	a5,a5,a4
    80006ade:	6798                	ld	a4,8(a5)
    80006ae0:	fbc42783          	lw	a5,-68(s0)
    80006ae4:	863e                	mv	a2,a5
    80006ae6:	fc043583          	ld	a1,-64(s0)
    80006aea:	4505                	li	a0,1
    80006aec:	9702                	jalr	a4
    80006aee:	87aa                	mv	a5,a0
    80006af0:	fef42623          	sw	a5,-20(s0)
    80006af4:	a281                	j	80006c34 <filewrite+0x210>
    80006af6:	fc843783          	ld	a5,-56(s0)
    80006afa:	439c                	lw	a5,0(a5)
    80006afc:	873e                	mv	a4,a5
    80006afe:	4789                	li	a5,2
    80006b00:	12f71263          	bne	a4,a5,80006c24 <filewrite+0x200>
    80006b04:	6785                	lui	a5,0x1
    80006b06:	c0078793          	addi	a5,a5,-1024 # c00 <_entry-0x7ffff400>
    80006b0a:	fef42023          	sw	a5,-32(s0)
    80006b0e:	fe042423          	sw	zero,-24(s0)
    80006b12:	a0c5                	j	80006bf2 <filewrite+0x1ce>
    80006b14:	fbc42703          	lw	a4,-68(s0)
    80006b18:	fe842783          	lw	a5,-24(s0)
    80006b1c:	40f707bb          	subw	a5,a4,a5
    80006b20:	fef42223          	sw	a5,-28(s0)
    80006b24:	fe442703          	lw	a4,-28(s0)
    80006b28:	fe042783          	lw	a5,-32(s0)
    80006b2c:	2701                	sext.w	a4,a4
    80006b2e:	2781                	sext.w	a5,a5
    80006b30:	00e7d663          	bge	a5,a4,80006b3c <filewrite+0x118>
    80006b34:	fe042783          	lw	a5,-32(s0)
    80006b38:	fef42223          	sw	a5,-28(s0)
    80006b3c:	fffff097          	auipc	ra,0xfffff
    80006b40:	53c080e7          	jalr	1340(ra) # 80006078 <begin_op>
    80006b44:	fc843783          	ld	a5,-56(s0)
    80006b48:	6f9c                	ld	a5,24(a5)
    80006b4a:	853e                	mv	a0,a5
    80006b4c:	ffffe097          	auipc	ra,0xffffe
    80006b50:	4c4080e7          	jalr	1220(ra) # 80005010 <ilock>
    80006b54:	fc843783          	ld	a5,-56(s0)
    80006b58:	6f88                	ld	a0,24(a5)
    80006b5a:	fe842703          	lw	a4,-24(s0)
    80006b5e:	fc043783          	ld	a5,-64(s0)
    80006b62:	00f70633          	add	a2,a4,a5
    80006b66:	fc843783          	ld	a5,-56(s0)
    80006b6a:	539c                	lw	a5,32(a5)
    80006b6c:	fe442703          	lw	a4,-28(s0)
    80006b70:	86be                	mv	a3,a5
    80006b72:	4585                	li	a1,1
    80006b74:	fffff097          	auipc	ra,0xfffff
    80006b78:	bbc080e7          	jalr	-1092(ra) # 80005730 <writei>
    80006b7c:	87aa                	mv	a5,a0
    80006b7e:	fcf42e23          	sw	a5,-36(s0)
    80006b82:	fdc42783          	lw	a5,-36(s0)
    80006b86:	2781                	sext.w	a5,a5
    80006b88:	00f05d63          	blez	a5,80006ba2 <filewrite+0x17e>
    80006b8c:	fc843783          	ld	a5,-56(s0)
    80006b90:	5398                	lw	a4,32(a5)
    80006b92:	fdc42783          	lw	a5,-36(s0)
    80006b96:	9fb9                	addw	a5,a5,a4
    80006b98:	0007871b          	sext.w	a4,a5
    80006b9c:	fc843783          	ld	a5,-56(s0)
    80006ba0:	d398                	sw	a4,32(a5)
    80006ba2:	fc843783          	ld	a5,-56(s0)
    80006ba6:	6f9c                	ld	a5,24(a5)
    80006ba8:	853e                	mv	a0,a5
    80006baa:	ffffe097          	auipc	ra,0xffffe
    80006bae:	59a080e7          	jalr	1434(ra) # 80005144 <iunlock>
    80006bb2:	fffff097          	auipc	ra,0xfffff
    80006bb6:	588080e7          	jalr	1416(ra) # 8000613a <end_op>
    80006bba:	fdc42783          	lw	a5,-36(s0)
    80006bbe:	2781                	sext.w	a5,a5
    80006bc0:	0407c263          	bltz	a5,80006c04 <filewrite+0x1e0>
    80006bc4:	fdc42703          	lw	a4,-36(s0)
    80006bc8:	fe442783          	lw	a5,-28(s0)
    80006bcc:	2701                	sext.w	a4,a4
    80006bce:	2781                	sext.w	a5,a5
    80006bd0:	00f70a63          	beq	a4,a5,80006be4 <filewrite+0x1c0>
    80006bd4:	00005517          	auipc	a0,0x5
    80006bd8:	9dc50513          	addi	a0,a0,-1572 # 8000b5b0 <etext+0x5b0>
    80006bdc:	ffffa097          	auipc	ra,0xffffa
    80006be0:	076080e7          	jalr	118(ra) # 80000c52 <panic>
    80006be4:	fe842703          	lw	a4,-24(s0)
    80006be8:	fdc42783          	lw	a5,-36(s0)
    80006bec:	9fb9                	addw	a5,a5,a4
    80006bee:	fef42423          	sw	a5,-24(s0)
    80006bf2:	fe842703          	lw	a4,-24(s0)
    80006bf6:	fbc42783          	lw	a5,-68(s0)
    80006bfa:	2701                	sext.w	a4,a4
    80006bfc:	2781                	sext.w	a5,a5
    80006bfe:	f0f74be3          	blt	a4,a5,80006b14 <filewrite+0xf0>
    80006c02:	a011                	j	80006c06 <filewrite+0x1e2>
    80006c04:	0001                	nop
    80006c06:	fe842703          	lw	a4,-24(s0)
    80006c0a:	fbc42783          	lw	a5,-68(s0)
    80006c0e:	2701                	sext.w	a4,a4
    80006c10:	2781                	sext.w	a5,a5
    80006c12:	00f71563          	bne	a4,a5,80006c1c <filewrite+0x1f8>
    80006c16:	fbc42783          	lw	a5,-68(s0)
    80006c1a:	a011                	j	80006c1e <filewrite+0x1fa>
    80006c1c:	57fd                	li	a5,-1
    80006c1e:	fef42623          	sw	a5,-20(s0)
    80006c22:	a809                	j	80006c34 <filewrite+0x210>
    80006c24:	00005517          	auipc	a0,0x5
    80006c28:	99c50513          	addi	a0,a0,-1636 # 8000b5c0 <etext+0x5c0>
    80006c2c:	ffffa097          	auipc	ra,0xffffa
    80006c30:	026080e7          	jalr	38(ra) # 80000c52 <panic>
    80006c34:	fec42783          	lw	a5,-20(s0)
    80006c38:	853e                	mv	a0,a5
    80006c3a:	60a6                	ld	ra,72(sp)
    80006c3c:	6406                	ld	s0,64(sp)
    80006c3e:	6161                	addi	sp,sp,80
    80006c40:	8082                	ret

0000000080006c42 <pipealloc>:
    80006c42:	7179                	addi	sp,sp,-48
    80006c44:	f406                	sd	ra,40(sp)
    80006c46:	f022                	sd	s0,32(sp)
    80006c48:	1800                	addi	s0,sp,48
    80006c4a:	fca43c23          	sd	a0,-40(s0)
    80006c4e:	fcb43823          	sd	a1,-48(s0)
    80006c52:	fe043423          	sd	zero,-24(s0)
    80006c56:	fd043783          	ld	a5,-48(s0)
    80006c5a:	0007b023          	sd	zero,0(a5)
    80006c5e:	fd043783          	ld	a5,-48(s0)
    80006c62:	6398                	ld	a4,0(a5)
    80006c64:	fd843783          	ld	a5,-40(s0)
    80006c68:	e398                	sd	a4,0(a5)
    80006c6a:	00000097          	auipc	ra,0x0
    80006c6e:	9be080e7          	jalr	-1602(ra) # 80006628 <filealloc>
    80006c72:	872a                	mv	a4,a0
    80006c74:	fd843783          	ld	a5,-40(s0)
    80006c78:	e398                	sd	a4,0(a5)
    80006c7a:	fd843783          	ld	a5,-40(s0)
    80006c7e:	639c                	ld	a5,0(a5)
    80006c80:	c3e9                	beqz	a5,80006d42 <pipealloc+0x100>
    80006c82:	00000097          	auipc	ra,0x0
    80006c86:	9a6080e7          	jalr	-1626(ra) # 80006628 <filealloc>
    80006c8a:	872a                	mv	a4,a0
    80006c8c:	fd043783          	ld	a5,-48(s0)
    80006c90:	e398                	sd	a4,0(a5)
    80006c92:	fd043783          	ld	a5,-48(s0)
    80006c96:	639c                	ld	a5,0(a5)
    80006c98:	c7cd                	beqz	a5,80006d42 <pipealloc+0x100>
    80006c9a:	ffffa097          	auipc	ra,0xffffa
    80006c9e:	492080e7          	jalr	1170(ra) # 8000112c <kalloc>
    80006ca2:	fea43423          	sd	a0,-24(s0)
    80006ca6:	fe843783          	ld	a5,-24(s0)
    80006caa:	cfd1                	beqz	a5,80006d46 <pipealloc+0x104>
    80006cac:	fe843783          	ld	a5,-24(s0)
    80006cb0:	4705                	li	a4,1
    80006cb2:	22e7a023          	sw	a4,544(a5)
    80006cb6:	fe843783          	ld	a5,-24(s0)
    80006cba:	4705                	li	a4,1
    80006cbc:	22e7a223          	sw	a4,548(a5)
    80006cc0:	fe843783          	ld	a5,-24(s0)
    80006cc4:	2007ae23          	sw	zero,540(a5)
    80006cc8:	fe843783          	ld	a5,-24(s0)
    80006ccc:	2007ac23          	sw	zero,536(a5)
    80006cd0:	fe843783          	ld	a5,-24(s0)
    80006cd4:	00005597          	auipc	a1,0x5
    80006cd8:	8fc58593          	addi	a1,a1,-1796 # 8000b5d0 <etext+0x5d0>
    80006cdc:	853e                	mv	a0,a5
    80006cde:	ffffa097          	auipc	ra,0xffffa
    80006ce2:	572080e7          	jalr	1394(ra) # 80001250 <initlock>
    80006ce6:	fd843783          	ld	a5,-40(s0)
    80006cea:	639c                	ld	a5,0(a5)
    80006cec:	4705                	li	a4,1
    80006cee:	c398                	sw	a4,0(a5)
    80006cf0:	fd843783          	ld	a5,-40(s0)
    80006cf4:	639c                	ld	a5,0(a5)
    80006cf6:	4705                	li	a4,1
    80006cf8:	00e78423          	sb	a4,8(a5)
    80006cfc:	fd843783          	ld	a5,-40(s0)
    80006d00:	639c                	ld	a5,0(a5)
    80006d02:	000784a3          	sb	zero,9(a5)
    80006d06:	fd843783          	ld	a5,-40(s0)
    80006d0a:	639c                	ld	a5,0(a5)
    80006d0c:	fe843703          	ld	a4,-24(s0)
    80006d10:	eb98                	sd	a4,16(a5)
    80006d12:	fd043783          	ld	a5,-48(s0)
    80006d16:	639c                	ld	a5,0(a5)
    80006d18:	4705                	li	a4,1
    80006d1a:	c398                	sw	a4,0(a5)
    80006d1c:	fd043783          	ld	a5,-48(s0)
    80006d20:	639c                	ld	a5,0(a5)
    80006d22:	00078423          	sb	zero,8(a5)
    80006d26:	fd043783          	ld	a5,-48(s0)
    80006d2a:	639c                	ld	a5,0(a5)
    80006d2c:	4705                	li	a4,1
    80006d2e:	00e784a3          	sb	a4,9(a5)
    80006d32:	fd043783          	ld	a5,-48(s0)
    80006d36:	639c                	ld	a5,0(a5)
    80006d38:	fe843703          	ld	a4,-24(s0)
    80006d3c:	eb98                	sd	a4,16(a5)
    80006d3e:	4781                	li	a5,0
    80006d40:	a0b1                	j	80006d8c <pipealloc+0x14a>
    80006d42:	0001                	nop
    80006d44:	a011                	j	80006d48 <pipealloc+0x106>
    80006d46:	0001                	nop
    80006d48:	fe843783          	ld	a5,-24(s0)
    80006d4c:	c799                	beqz	a5,80006d5a <pipealloc+0x118>
    80006d4e:	fe843503          	ld	a0,-24(s0)
    80006d52:	ffffa097          	auipc	ra,0xffffa
    80006d56:	336080e7          	jalr	822(ra) # 80001088 <kfree>
    80006d5a:	fd843783          	ld	a5,-40(s0)
    80006d5e:	639c                	ld	a5,0(a5)
    80006d60:	cb89                	beqz	a5,80006d72 <pipealloc+0x130>
    80006d62:	fd843783          	ld	a5,-40(s0)
    80006d66:	639c                	ld	a5,0(a5)
    80006d68:	853e                	mv	a0,a5
    80006d6a:	00000097          	auipc	ra,0x0
    80006d6e:	9a8080e7          	jalr	-1624(ra) # 80006712 <fileclose>
    80006d72:	fd043783          	ld	a5,-48(s0)
    80006d76:	639c                	ld	a5,0(a5)
    80006d78:	cb89                	beqz	a5,80006d8a <pipealloc+0x148>
    80006d7a:	fd043783          	ld	a5,-48(s0)
    80006d7e:	639c                	ld	a5,0(a5)
    80006d80:	853e                	mv	a0,a5
    80006d82:	00000097          	auipc	ra,0x0
    80006d86:	990080e7          	jalr	-1648(ra) # 80006712 <fileclose>
    80006d8a:	57fd                	li	a5,-1
    80006d8c:	853e                	mv	a0,a5
    80006d8e:	70a2                	ld	ra,40(sp)
    80006d90:	7402                	ld	s0,32(sp)
    80006d92:	6145                	addi	sp,sp,48
    80006d94:	8082                	ret

0000000080006d96 <pipeclose>:
    80006d96:	1101                	addi	sp,sp,-32
    80006d98:	ec06                	sd	ra,24(sp)
    80006d9a:	e822                	sd	s0,16(sp)
    80006d9c:	1000                	addi	s0,sp,32
    80006d9e:	fea43423          	sd	a0,-24(s0)
    80006da2:	87ae                	mv	a5,a1
    80006da4:	fef42223          	sw	a5,-28(s0)
    80006da8:	fe843783          	ld	a5,-24(s0)
    80006dac:	853e                	mv	a0,a5
    80006dae:	ffffa097          	auipc	ra,0xffffa
    80006db2:	4d2080e7          	jalr	1234(ra) # 80001280 <acquire>
    80006db6:	fe442783          	lw	a5,-28(s0)
    80006dba:	2781                	sext.w	a5,a5
    80006dbc:	cf99                	beqz	a5,80006dda <pipeclose+0x44>
    80006dbe:	fe843783          	ld	a5,-24(s0)
    80006dc2:	2207a223          	sw	zero,548(a5)
    80006dc6:	fe843783          	ld	a5,-24(s0)
    80006dca:	21878793          	addi	a5,a5,536
    80006dce:	853e                	mv	a0,a5
    80006dd0:	ffffc097          	auipc	ra,0xffffc
    80006dd4:	682080e7          	jalr	1666(ra) # 80003452 <wakeup>
    80006dd8:	a831                	j	80006df4 <pipeclose+0x5e>
    80006dda:	fe843783          	ld	a5,-24(s0)
    80006dde:	2207a023          	sw	zero,544(a5)
    80006de2:	fe843783          	ld	a5,-24(s0)
    80006de6:	21c78793          	addi	a5,a5,540
    80006dea:	853e                	mv	a0,a5
    80006dec:	ffffc097          	auipc	ra,0xffffc
    80006df0:	666080e7          	jalr	1638(ra) # 80003452 <wakeup>
    80006df4:	fe843783          	ld	a5,-24(s0)
    80006df8:	2207a783          	lw	a5,544(a5)
    80006dfc:	e785                	bnez	a5,80006e24 <pipeclose+0x8e>
    80006dfe:	fe843783          	ld	a5,-24(s0)
    80006e02:	2247a783          	lw	a5,548(a5)
    80006e06:	ef99                	bnez	a5,80006e24 <pipeclose+0x8e>
    80006e08:	fe843783          	ld	a5,-24(s0)
    80006e0c:	853e                	mv	a0,a5
    80006e0e:	ffffa097          	auipc	ra,0xffffa
    80006e12:	4d6080e7          	jalr	1238(ra) # 800012e4 <release>
    80006e16:	fe843503          	ld	a0,-24(s0)
    80006e1a:	ffffa097          	auipc	ra,0xffffa
    80006e1e:	26e080e7          	jalr	622(ra) # 80001088 <kfree>
    80006e22:	a809                	j	80006e34 <pipeclose+0x9e>
    80006e24:	fe843783          	ld	a5,-24(s0)
    80006e28:	853e                	mv	a0,a5
    80006e2a:	ffffa097          	auipc	ra,0xffffa
    80006e2e:	4ba080e7          	jalr	1210(ra) # 800012e4 <release>
    80006e32:	0001                	nop
    80006e34:	0001                	nop
    80006e36:	60e2                	ld	ra,24(sp)
    80006e38:	6442                	ld	s0,16(sp)
    80006e3a:	6105                	addi	sp,sp,32
    80006e3c:	8082                	ret

0000000080006e3e <pipewrite>:
    80006e3e:	715d                	addi	sp,sp,-80
    80006e40:	e486                	sd	ra,72(sp)
    80006e42:	e0a2                	sd	s0,64(sp)
    80006e44:	0880                	addi	s0,sp,80
    80006e46:	fca43423          	sd	a0,-56(s0)
    80006e4a:	fcb43023          	sd	a1,-64(s0)
    80006e4e:	87b2                	mv	a5,a2
    80006e50:	faf42e23          	sw	a5,-68(s0)
    80006e54:	ffffc097          	auipc	ra,0xffffc
    80006e58:	996080e7          	jalr	-1642(ra) # 800027ea <myproc>
    80006e5c:	fea43023          	sd	a0,-32(s0)
    80006e60:	fc843783          	ld	a5,-56(s0)
    80006e64:	853e                	mv	a0,a5
    80006e66:	ffffa097          	auipc	ra,0xffffa
    80006e6a:	41a080e7          	jalr	1050(ra) # 80001280 <acquire>
    80006e6e:	fe042623          	sw	zero,-20(s0)
    80006e72:	a8c9                	j	80006f44 <pipewrite+0x106>
    80006e74:	fc843783          	ld	a5,-56(s0)
    80006e78:	2207a783          	lw	a5,544(a5)
    80006e7c:	c789                	beqz	a5,80006e86 <pipewrite+0x48>
    80006e7e:	fe043783          	ld	a5,-32(s0)
    80006e82:	5b9c                	lw	a5,48(a5)
    80006e84:	cb91                	beqz	a5,80006e98 <pipewrite+0x5a>
    80006e86:	fc843783          	ld	a5,-56(s0)
    80006e8a:	853e                	mv	a0,a5
    80006e8c:	ffffa097          	auipc	ra,0xffffa
    80006e90:	458080e7          	jalr	1112(ra) # 800012e4 <release>
    80006e94:	57fd                	li	a5,-1
    80006e96:	a0dd                	j	80006f7c <pipewrite+0x13e>
    80006e98:	fc843783          	ld	a5,-56(s0)
    80006e9c:	21878793          	addi	a5,a5,536
    80006ea0:	853e                	mv	a0,a5
    80006ea2:	ffffc097          	auipc	ra,0xffffc
    80006ea6:	5b0080e7          	jalr	1456(ra) # 80003452 <wakeup>
    80006eaa:	fc843783          	ld	a5,-56(s0)
    80006eae:	21c78793          	addi	a5,a5,540
    80006eb2:	fc843703          	ld	a4,-56(s0)
    80006eb6:	85ba                	mv	a1,a4
    80006eb8:	853e                	mv	a0,a5
    80006eba:	ffffc097          	auipc	ra,0xffffc
    80006ebe:	504080e7          	jalr	1284(ra) # 800033be <sleep>
    80006ec2:	fc843783          	ld	a5,-56(s0)
    80006ec6:	21c7a703          	lw	a4,540(a5)
    80006eca:	fc843783          	ld	a5,-56(s0)
    80006ece:	2187a783          	lw	a5,536(a5)
    80006ed2:	2007879b          	addiw	a5,a5,512
    80006ed6:	2781                	sext.w	a5,a5
    80006ed8:	f8f70ee3          	beq	a4,a5,80006e74 <pipewrite+0x36>
    80006edc:	fe043783          	ld	a5,-32(s0)
    80006ee0:	6ba8                	ld	a0,80(a5)
    80006ee2:	fec42703          	lw	a4,-20(s0)
    80006ee6:	fc043783          	ld	a5,-64(s0)
    80006eea:	973e                	add	a4,a4,a5
    80006eec:	fdf40793          	addi	a5,s0,-33
    80006ef0:	4685                	li	a3,1
    80006ef2:	863a                	mv	a2,a4
    80006ef4:	85be                	mv	a1,a5
    80006ef6:	ffffb097          	auipc	ra,0xffffb
    80006efa:	4ac080e7          	jalr	1196(ra) # 800023a2 <copyin>
    80006efe:	87aa                	mv	a5,a0
    80006f00:	873e                	mv	a4,a5
    80006f02:	57fd                	li	a5,-1
    80006f04:	04f70963          	beq	a4,a5,80006f56 <pipewrite+0x118>
    80006f08:	fc843783          	ld	a5,-56(s0)
    80006f0c:	21c7a783          	lw	a5,540(a5)
    80006f10:	2781                	sext.w	a5,a5
    80006f12:	0017871b          	addiw	a4,a5,1
    80006f16:	0007069b          	sext.w	a3,a4
    80006f1a:	fc843703          	ld	a4,-56(s0)
    80006f1e:	20d72e23          	sw	a3,540(a4)
    80006f22:	1ff7f793          	andi	a5,a5,511
    80006f26:	2781                	sext.w	a5,a5
    80006f28:	fdf44703          	lbu	a4,-33(s0)
    80006f2c:	fc843683          	ld	a3,-56(s0)
    80006f30:	1782                	slli	a5,a5,0x20
    80006f32:	9381                	srli	a5,a5,0x20
    80006f34:	97b6                	add	a5,a5,a3
    80006f36:	00e78c23          	sb	a4,24(a5)
    80006f3a:	fec42783          	lw	a5,-20(s0)
    80006f3e:	2785                	addiw	a5,a5,1
    80006f40:	fef42623          	sw	a5,-20(s0)
    80006f44:	fec42703          	lw	a4,-20(s0)
    80006f48:	fbc42783          	lw	a5,-68(s0)
    80006f4c:	2701                	sext.w	a4,a4
    80006f4e:	2781                	sext.w	a5,a5
    80006f50:	f6f749e3          	blt	a4,a5,80006ec2 <pipewrite+0x84>
    80006f54:	a011                	j	80006f58 <pipewrite+0x11a>
    80006f56:	0001                	nop
    80006f58:	fc843783          	ld	a5,-56(s0)
    80006f5c:	21878793          	addi	a5,a5,536
    80006f60:	853e                	mv	a0,a5
    80006f62:	ffffc097          	auipc	ra,0xffffc
    80006f66:	4f0080e7          	jalr	1264(ra) # 80003452 <wakeup>
    80006f6a:	fc843783          	ld	a5,-56(s0)
    80006f6e:	853e                	mv	a0,a5
    80006f70:	ffffa097          	auipc	ra,0xffffa
    80006f74:	374080e7          	jalr	884(ra) # 800012e4 <release>
    80006f78:	fec42783          	lw	a5,-20(s0)
    80006f7c:	853e                	mv	a0,a5
    80006f7e:	60a6                	ld	ra,72(sp)
    80006f80:	6406                	ld	s0,64(sp)
    80006f82:	6161                	addi	sp,sp,80
    80006f84:	8082                	ret

0000000080006f86 <piperead>:
    80006f86:	715d                	addi	sp,sp,-80
    80006f88:	e486                	sd	ra,72(sp)
    80006f8a:	e0a2                	sd	s0,64(sp)
    80006f8c:	0880                	addi	s0,sp,80
    80006f8e:	fca43423          	sd	a0,-56(s0)
    80006f92:	fcb43023          	sd	a1,-64(s0)
    80006f96:	87b2                	mv	a5,a2
    80006f98:	faf42e23          	sw	a5,-68(s0)
    80006f9c:	ffffc097          	auipc	ra,0xffffc
    80006fa0:	84e080e7          	jalr	-1970(ra) # 800027ea <myproc>
    80006fa4:	fea43023          	sd	a0,-32(s0)
    80006fa8:	fc843783          	ld	a5,-56(s0)
    80006fac:	853e                	mv	a0,a5
    80006fae:	ffffa097          	auipc	ra,0xffffa
    80006fb2:	2d2080e7          	jalr	722(ra) # 80001280 <acquire>
    80006fb6:	a815                	j	80006fea <piperead+0x64>
    80006fb8:	fe043783          	ld	a5,-32(s0)
    80006fbc:	5b9c                	lw	a5,48(a5)
    80006fbe:	cb91                	beqz	a5,80006fd2 <piperead+0x4c>
    80006fc0:	fc843783          	ld	a5,-56(s0)
    80006fc4:	853e                	mv	a0,a5
    80006fc6:	ffffa097          	auipc	ra,0xffffa
    80006fca:	31e080e7          	jalr	798(ra) # 800012e4 <release>
    80006fce:	57fd                	li	a5,-1
    80006fd0:	a8dd                	j	800070c6 <piperead+0x140>
    80006fd2:	fc843783          	ld	a5,-56(s0)
    80006fd6:	21878793          	addi	a5,a5,536
    80006fda:	fc843703          	ld	a4,-56(s0)
    80006fde:	85ba                	mv	a1,a4
    80006fe0:	853e                	mv	a0,a5
    80006fe2:	ffffc097          	auipc	ra,0xffffc
    80006fe6:	3dc080e7          	jalr	988(ra) # 800033be <sleep>
    80006fea:	fc843783          	ld	a5,-56(s0)
    80006fee:	2187a703          	lw	a4,536(a5)
    80006ff2:	fc843783          	ld	a5,-56(s0)
    80006ff6:	21c7a783          	lw	a5,540(a5)
    80006ffa:	00f71763          	bne	a4,a5,80007008 <piperead+0x82>
    80006ffe:	fc843783          	ld	a5,-56(s0)
    80007002:	2247a783          	lw	a5,548(a5)
    80007006:	fbcd                	bnez	a5,80006fb8 <piperead+0x32>
    80007008:	fe042623          	sw	zero,-20(s0)
    8000700c:	a8bd                	j	8000708a <piperead+0x104>
    8000700e:	fc843783          	ld	a5,-56(s0)
    80007012:	2187a703          	lw	a4,536(a5)
    80007016:	fc843783          	ld	a5,-56(s0)
    8000701a:	21c7a783          	lw	a5,540(a5)
    8000701e:	06f70f63          	beq	a4,a5,8000709c <piperead+0x116>
    80007022:	fc843783          	ld	a5,-56(s0)
    80007026:	2187a783          	lw	a5,536(a5)
    8000702a:	2781                	sext.w	a5,a5
    8000702c:	0017871b          	addiw	a4,a5,1
    80007030:	0007069b          	sext.w	a3,a4
    80007034:	fc843703          	ld	a4,-56(s0)
    80007038:	20d72c23          	sw	a3,536(a4)
    8000703c:	1ff7f793          	andi	a5,a5,511
    80007040:	2781                	sext.w	a5,a5
    80007042:	fc843703          	ld	a4,-56(s0)
    80007046:	1782                	slli	a5,a5,0x20
    80007048:	9381                	srli	a5,a5,0x20
    8000704a:	97ba                	add	a5,a5,a4
    8000704c:	0187c783          	lbu	a5,24(a5)
    80007050:	fcf40fa3          	sb	a5,-33(s0)
    80007054:	fe043783          	ld	a5,-32(s0)
    80007058:	6ba8                	ld	a0,80(a5)
    8000705a:	fec42703          	lw	a4,-20(s0)
    8000705e:	fc043783          	ld	a5,-64(s0)
    80007062:	97ba                	add	a5,a5,a4
    80007064:	fdf40713          	addi	a4,s0,-33
    80007068:	4685                	li	a3,1
    8000706a:	863a                	mv	a2,a4
    8000706c:	85be                	mv	a1,a5
    8000706e:	ffffb097          	auipc	ra,0xffffb
    80007072:	266080e7          	jalr	614(ra) # 800022d4 <copyout>
    80007076:	87aa                	mv	a5,a0
    80007078:	873e                	mv	a4,a5
    8000707a:	57fd                	li	a5,-1
    8000707c:	02f70263          	beq	a4,a5,800070a0 <piperead+0x11a>
    80007080:	fec42783          	lw	a5,-20(s0)
    80007084:	2785                	addiw	a5,a5,1
    80007086:	fef42623          	sw	a5,-20(s0)
    8000708a:	fec42703          	lw	a4,-20(s0)
    8000708e:	fbc42783          	lw	a5,-68(s0)
    80007092:	2701                	sext.w	a4,a4
    80007094:	2781                	sext.w	a5,a5
    80007096:	f6f74ce3          	blt	a4,a5,8000700e <piperead+0x88>
    8000709a:	a021                	j	800070a2 <piperead+0x11c>
    8000709c:	0001                	nop
    8000709e:	a011                	j	800070a2 <piperead+0x11c>
    800070a0:	0001                	nop
    800070a2:	fc843783          	ld	a5,-56(s0)
    800070a6:	21c78793          	addi	a5,a5,540
    800070aa:	853e                	mv	a0,a5
    800070ac:	ffffc097          	auipc	ra,0xffffc
    800070b0:	3a6080e7          	jalr	934(ra) # 80003452 <wakeup>
    800070b4:	fc843783          	ld	a5,-56(s0)
    800070b8:	853e                	mv	a0,a5
    800070ba:	ffffa097          	auipc	ra,0xffffa
    800070be:	22a080e7          	jalr	554(ra) # 800012e4 <release>
    800070c2:	fec42783          	lw	a5,-20(s0)
    800070c6:	853e                	mv	a0,a5
    800070c8:	60a6                	ld	ra,72(sp)
    800070ca:	6406                	ld	s0,64(sp)
    800070cc:	6161                	addi	sp,sp,80
    800070ce:	8082                	ret

00000000800070d0 <exec>:
    800070d0:	de010113          	addi	sp,sp,-544
    800070d4:	20113c23          	sd	ra,536(sp)
    800070d8:	20813823          	sd	s0,528(sp)
    800070dc:	20913423          	sd	s1,520(sp)
    800070e0:	1400                	addi	s0,sp,544
    800070e2:	dea43423          	sd	a0,-536(s0)
    800070e6:	deb43023          	sd	a1,-544(s0)
    800070ea:	fa043c23          	sd	zero,-72(s0)
    800070ee:	fa043023          	sd	zero,-96(s0)
    800070f2:	ffffb097          	auipc	ra,0xffffb
    800070f6:	6f8080e7          	jalr	1784(ra) # 800027ea <myproc>
    800070fa:	f8a43c23          	sd	a0,-104(s0)
    800070fe:	fffff097          	auipc	ra,0xfffff
    80007102:	f7a080e7          	jalr	-134(ra) # 80006078 <begin_op>
    80007106:	de843503          	ld	a0,-536(s0)
    8000710a:	fffff097          	auipc	ra,0xfffff
    8000710e:	c0a080e7          	jalr	-1014(ra) # 80005d14 <namei>
    80007112:	faa43423          	sd	a0,-88(s0)
    80007116:	fa843783          	ld	a5,-88(s0)
    8000711a:	e799                	bnez	a5,80007128 <exec+0x58>
    8000711c:	fffff097          	auipc	ra,0xfffff
    80007120:	01e080e7          	jalr	30(ra) # 8000613a <end_op>
    80007124:	57fd                	li	a5,-1
    80007126:	a90d                	j	80007558 <exec+0x488>
    80007128:	fa843503          	ld	a0,-88(s0)
    8000712c:	ffffe097          	auipc	ra,0xffffe
    80007130:	ee4080e7          	jalr	-284(ra) # 80005010 <ilock>
    80007134:	e2840793          	addi	a5,s0,-472
    80007138:	04000713          	li	a4,64
    8000713c:	4681                	li	a3,0
    8000713e:	863e                	mv	a2,a5
    80007140:	4581                	li	a1,0
    80007142:	fa843503          	ld	a0,-88(s0)
    80007146:	ffffe097          	auipc	ra,0xffffe
    8000714a:	460080e7          	jalr	1120(ra) # 800055a6 <readi>
    8000714e:	87aa                	mv	a5,a0
    80007150:	873e                	mv	a4,a5
    80007152:	04000793          	li	a5,64
    80007156:	38f71b63          	bne	a4,a5,800074ec <exec+0x41c>
    8000715a:	e2842783          	lw	a5,-472(s0)
    8000715e:	873e                	mv	a4,a5
    80007160:	464c47b7          	lui	a5,0x464c4
    80007164:	57f78793          	addi	a5,a5,1407 # 464c457f <_entry-0x39b3ba81>
    80007168:	38f71463          	bne	a4,a5,800074f0 <exec+0x420>
    8000716c:	f9843503          	ld	a0,-104(s0)
    80007170:	ffffc097          	auipc	ra,0xffffc
    80007174:	8c8080e7          	jalr	-1848(ra) # 80002a38 <proc_pagetable>
    80007178:	faa43023          	sd	a0,-96(s0)
    8000717c:	fa043783          	ld	a5,-96(s0)
    80007180:	36078a63          	beqz	a5,800074f4 <exec+0x424>
    80007184:	fc042623          	sw	zero,-52(s0)
    80007188:	e4843783          	ld	a5,-440(s0)
    8000718c:	fcf42423          	sw	a5,-56(s0)
    80007190:	a8e1                	j	80007268 <exec+0x198>
    80007192:	df040793          	addi	a5,s0,-528
    80007196:	fc842683          	lw	a3,-56(s0)
    8000719a:	03800713          	li	a4,56
    8000719e:	863e                	mv	a2,a5
    800071a0:	4581                	li	a1,0
    800071a2:	fa843503          	ld	a0,-88(s0)
    800071a6:	ffffe097          	auipc	ra,0xffffe
    800071aa:	400080e7          	jalr	1024(ra) # 800055a6 <readi>
    800071ae:	87aa                	mv	a5,a0
    800071b0:	873e                	mv	a4,a5
    800071b2:	03800793          	li	a5,56
    800071b6:	34f71163          	bne	a4,a5,800074f8 <exec+0x428>
    800071ba:	df042783          	lw	a5,-528(s0)
    800071be:	873e                	mv	a4,a5
    800071c0:	4785                	li	a5,1
    800071c2:	08f71663          	bne	a4,a5,8000724e <exec+0x17e>
    800071c6:	e1843703          	ld	a4,-488(s0)
    800071ca:	e1043783          	ld	a5,-496(s0)
    800071ce:	32f76763          	bltu	a4,a5,800074fc <exec+0x42c>
    800071d2:	e0043703          	ld	a4,-512(s0)
    800071d6:	e1843783          	ld	a5,-488(s0)
    800071da:	973e                	add	a4,a4,a5
    800071dc:	e0043783          	ld	a5,-512(s0)
    800071e0:	32f76063          	bltu	a4,a5,80007500 <exec+0x430>
    800071e4:	e0043703          	ld	a4,-512(s0)
    800071e8:	e1843783          	ld	a5,-488(s0)
    800071ec:	97ba                	add	a5,a5,a4
    800071ee:	863e                	mv	a2,a5
    800071f0:	fb843583          	ld	a1,-72(s0)
    800071f4:	fa043503          	ld	a0,-96(s0)
    800071f8:	ffffb097          	auipc	ra,0xffffb
    800071fc:	cfe080e7          	jalr	-770(ra) # 80001ef6 <uvmalloc>
    80007200:	f6a43823          	sd	a0,-144(s0)
    80007204:	f7043783          	ld	a5,-144(s0)
    80007208:	2e078e63          	beqz	a5,80007504 <exec+0x434>
    8000720c:	f7043783          	ld	a5,-144(s0)
    80007210:	faf43c23          	sd	a5,-72(s0)
    80007214:	e0043703          	ld	a4,-512(s0)
    80007218:	6785                	lui	a5,0x1
    8000721a:	17fd                	addi	a5,a5,-1
    8000721c:	8ff9                	and	a5,a5,a4
    8000721e:	2e079563          	bnez	a5,80007508 <exec+0x438>
    80007222:	e0043783          	ld	a5,-512(s0)
    80007226:	df843703          	ld	a4,-520(s0)
    8000722a:	0007069b          	sext.w	a3,a4
    8000722e:	e1043703          	ld	a4,-496(s0)
    80007232:	2701                	sext.w	a4,a4
    80007234:	fa843603          	ld	a2,-88(s0)
    80007238:	85be                	mv	a1,a5
    8000723a:	fa043503          	ld	a0,-96(s0)
    8000723e:	00000097          	auipc	ra,0x0
    80007242:	32e080e7          	jalr	814(ra) # 8000756c <loadseg>
    80007246:	87aa                	mv	a5,a0
    80007248:	2c07c263          	bltz	a5,8000750c <exec+0x43c>
    8000724c:	a011                	j	80007250 <exec+0x180>
    8000724e:	0001                	nop
    80007250:	fcc42783          	lw	a5,-52(s0)
    80007254:	2785                	addiw	a5,a5,1
    80007256:	fcf42623          	sw	a5,-52(s0)
    8000725a:	fc842783          	lw	a5,-56(s0)
    8000725e:	0387879b          	addiw	a5,a5,56
    80007262:	2781                	sext.w	a5,a5
    80007264:	fcf42423          	sw	a5,-56(s0)
    80007268:	e6045783          	lhu	a5,-416(s0)
    8000726c:	0007871b          	sext.w	a4,a5
    80007270:	fcc42783          	lw	a5,-52(s0)
    80007274:	2781                	sext.w	a5,a5
    80007276:	f0e7cee3          	blt	a5,a4,80007192 <exec+0xc2>
    8000727a:	fa843503          	ld	a0,-88(s0)
    8000727e:	ffffe097          	auipc	ra,0xffffe
    80007282:	ff0080e7          	jalr	-16(ra) # 8000526e <iunlockput>
    80007286:	fffff097          	auipc	ra,0xfffff
    8000728a:	eb4080e7          	jalr	-332(ra) # 8000613a <end_op>
    8000728e:	fa043423          	sd	zero,-88(s0)
    80007292:	ffffb097          	auipc	ra,0xffffb
    80007296:	558080e7          	jalr	1368(ra) # 800027ea <myproc>
    8000729a:	f8a43c23          	sd	a0,-104(s0)
    8000729e:	f9843783          	ld	a5,-104(s0)
    800072a2:	67bc                	ld	a5,72(a5)
    800072a4:	f8f43823          	sd	a5,-112(s0)
    800072a8:	fb843703          	ld	a4,-72(s0)
    800072ac:	6785                	lui	a5,0x1
    800072ae:	17fd                	addi	a5,a5,-1
    800072b0:	973e                	add	a4,a4,a5
    800072b2:	77fd                	lui	a5,0xfffff
    800072b4:	8ff9                	and	a5,a5,a4
    800072b6:	faf43c23          	sd	a5,-72(s0)
    800072ba:	fb843703          	ld	a4,-72(s0)
    800072be:	6789                	lui	a5,0x2
    800072c0:	97ba                	add	a5,a5,a4
    800072c2:	863e                	mv	a2,a5
    800072c4:	fb843583          	ld	a1,-72(s0)
    800072c8:	fa043503          	ld	a0,-96(s0)
    800072cc:	ffffb097          	auipc	ra,0xffffb
    800072d0:	c2a080e7          	jalr	-982(ra) # 80001ef6 <uvmalloc>
    800072d4:	f8a43423          	sd	a0,-120(s0)
    800072d8:	f8843783          	ld	a5,-120(s0)
    800072dc:	22078a63          	beqz	a5,80007510 <exec+0x440>
    800072e0:	f8843783          	ld	a5,-120(s0)
    800072e4:	faf43c23          	sd	a5,-72(s0)
    800072e8:	fb843703          	ld	a4,-72(s0)
    800072ec:	77f9                	lui	a5,0xffffe
    800072ee:	97ba                	add	a5,a5,a4
    800072f0:	85be                	mv	a1,a5
    800072f2:	fa043503          	ld	a0,-96(s0)
    800072f6:	ffffb097          	auipc	ra,0xffffb
    800072fa:	f88080e7          	jalr	-120(ra) # 8000227e <uvmclear>
    800072fe:	fb843783          	ld	a5,-72(s0)
    80007302:	faf43823          	sd	a5,-80(s0)
    80007306:	fb043703          	ld	a4,-80(s0)
    8000730a:	77fd                	lui	a5,0xfffff
    8000730c:	97ba                	add	a5,a5,a4
    8000730e:	f8f43023          	sd	a5,-128(s0)
    80007312:	fc043023          	sd	zero,-64(s0)
    80007316:	a845                	j	800073c6 <exec+0x2f6>
    80007318:	fc043703          	ld	a4,-64(s0)
    8000731c:	47fd                	li	a5,31
    8000731e:	1ee7eb63          	bltu	a5,a4,80007514 <exec+0x444>
    80007322:	fc043783          	ld	a5,-64(s0)
    80007326:	078e                	slli	a5,a5,0x3
    80007328:	de043703          	ld	a4,-544(s0)
    8000732c:	97ba                	add	a5,a5,a4
    8000732e:	639c                	ld	a5,0(a5)
    80007330:	853e                	mv	a0,a5
    80007332:	ffffa097          	auipc	ra,0xffffa
    80007336:	492080e7          	jalr	1170(ra) # 800017c4 <strlen>
    8000733a:	87aa                	mv	a5,a0
    8000733c:	2785                	addiw	a5,a5,1
    8000733e:	2781                	sext.w	a5,a5
    80007340:	873e                	mv	a4,a5
    80007342:	fb043783          	ld	a5,-80(s0)
    80007346:	8f99                	sub	a5,a5,a4
    80007348:	faf43823          	sd	a5,-80(s0)
    8000734c:	fb043783          	ld	a5,-80(s0)
    80007350:	9bc1                	andi	a5,a5,-16
    80007352:	faf43823          	sd	a5,-80(s0)
    80007356:	fb043703          	ld	a4,-80(s0)
    8000735a:	f8043783          	ld	a5,-128(s0)
    8000735e:	1af76d63          	bltu	a4,a5,80007518 <exec+0x448>
    80007362:	fc043783          	ld	a5,-64(s0)
    80007366:	078e                	slli	a5,a5,0x3
    80007368:	de043703          	ld	a4,-544(s0)
    8000736c:	97ba                	add	a5,a5,a4
    8000736e:	6384                	ld	s1,0(a5)
    80007370:	fc043783          	ld	a5,-64(s0)
    80007374:	078e                	slli	a5,a5,0x3
    80007376:	de043703          	ld	a4,-544(s0)
    8000737a:	97ba                	add	a5,a5,a4
    8000737c:	639c                	ld	a5,0(a5)
    8000737e:	853e                	mv	a0,a5
    80007380:	ffffa097          	auipc	ra,0xffffa
    80007384:	444080e7          	jalr	1092(ra) # 800017c4 <strlen>
    80007388:	87aa                	mv	a5,a0
    8000738a:	2785                	addiw	a5,a5,1
    8000738c:	2781                	sext.w	a5,a5
    8000738e:	86be                	mv	a3,a5
    80007390:	8626                	mv	a2,s1
    80007392:	fb043583          	ld	a1,-80(s0)
    80007396:	fa043503          	ld	a0,-96(s0)
    8000739a:	ffffb097          	auipc	ra,0xffffb
    8000739e:	f3a080e7          	jalr	-198(ra) # 800022d4 <copyout>
    800073a2:	87aa                	mv	a5,a0
    800073a4:	1607cc63          	bltz	a5,8000751c <exec+0x44c>
    800073a8:	fc043783          	ld	a5,-64(s0)
    800073ac:	078e                	slli	a5,a5,0x3
    800073ae:	fe040713          	addi	a4,s0,-32
    800073b2:	97ba                	add	a5,a5,a4
    800073b4:	fb043703          	ld	a4,-80(s0)
    800073b8:	e8e7b423          	sd	a4,-376(a5) # ffffffffffffee88 <end+0xffffffff7ffd5e88>
    800073bc:	fc043783          	ld	a5,-64(s0)
    800073c0:	0785                	addi	a5,a5,1
    800073c2:	fcf43023          	sd	a5,-64(s0)
    800073c6:	fc043783          	ld	a5,-64(s0)
    800073ca:	078e                	slli	a5,a5,0x3
    800073cc:	de043703          	ld	a4,-544(s0)
    800073d0:	97ba                	add	a5,a5,a4
    800073d2:	639c                	ld	a5,0(a5)
    800073d4:	f3b1                	bnez	a5,80007318 <exec+0x248>
    800073d6:	fc043783          	ld	a5,-64(s0)
    800073da:	078e                	slli	a5,a5,0x3
    800073dc:	fe040713          	addi	a4,s0,-32
    800073e0:	97ba                	add	a5,a5,a4
    800073e2:	e807b423          	sd	zero,-376(a5)
    800073e6:	fc043783          	ld	a5,-64(s0)
    800073ea:	0785                	addi	a5,a5,1
    800073ec:	078e                	slli	a5,a5,0x3
    800073ee:	fb043703          	ld	a4,-80(s0)
    800073f2:	40f707b3          	sub	a5,a4,a5
    800073f6:	faf43823          	sd	a5,-80(s0)
    800073fa:	fb043783          	ld	a5,-80(s0)
    800073fe:	9bc1                	andi	a5,a5,-16
    80007400:	faf43823          	sd	a5,-80(s0)
    80007404:	fb043703          	ld	a4,-80(s0)
    80007408:	f8043783          	ld	a5,-128(s0)
    8000740c:	10f76a63          	bltu	a4,a5,80007520 <exec+0x450>
    80007410:	fc043783          	ld	a5,-64(s0)
    80007414:	0785                	addi	a5,a5,1
    80007416:	00379713          	slli	a4,a5,0x3
    8000741a:	e6840793          	addi	a5,s0,-408
    8000741e:	86ba                	mv	a3,a4
    80007420:	863e                	mv	a2,a5
    80007422:	fb043583          	ld	a1,-80(s0)
    80007426:	fa043503          	ld	a0,-96(s0)
    8000742a:	ffffb097          	auipc	ra,0xffffb
    8000742e:	eaa080e7          	jalr	-342(ra) # 800022d4 <copyout>
    80007432:	87aa                	mv	a5,a0
    80007434:	0e07c863          	bltz	a5,80007524 <exec+0x454>
    80007438:	f9843783          	ld	a5,-104(s0)
    8000743c:	6fbc                	ld	a5,88(a5)
    8000743e:	fb043703          	ld	a4,-80(s0)
    80007442:	ffb8                	sd	a4,120(a5)
    80007444:	de843783          	ld	a5,-536(s0)
    80007448:	fcf43c23          	sd	a5,-40(s0)
    8000744c:	fd843783          	ld	a5,-40(s0)
    80007450:	fcf43823          	sd	a5,-48(s0)
    80007454:	a025                	j	8000747c <exec+0x3ac>
    80007456:	fd843783          	ld	a5,-40(s0)
    8000745a:	0007c783          	lbu	a5,0(a5)
    8000745e:	873e                	mv	a4,a5
    80007460:	02f00793          	li	a5,47
    80007464:	00f71763          	bne	a4,a5,80007472 <exec+0x3a2>
    80007468:	fd843783          	ld	a5,-40(s0)
    8000746c:	0785                	addi	a5,a5,1
    8000746e:	fcf43823          	sd	a5,-48(s0)
    80007472:	fd843783          	ld	a5,-40(s0)
    80007476:	0785                	addi	a5,a5,1
    80007478:	fcf43c23          	sd	a5,-40(s0)
    8000747c:	fd843783          	ld	a5,-40(s0)
    80007480:	0007c783          	lbu	a5,0(a5)
    80007484:	fbe9                	bnez	a5,80007456 <exec+0x386>
    80007486:	f9843783          	ld	a5,-104(s0)
    8000748a:	15878793          	addi	a5,a5,344
    8000748e:	4641                	li	a2,16
    80007490:	fd043583          	ld	a1,-48(s0)
    80007494:	853e                	mv	a0,a5
    80007496:	ffffa097          	auipc	ra,0xffffa
    8000749a:	2b4080e7          	jalr	692(ra) # 8000174a <safestrcpy>
    8000749e:	f9843783          	ld	a5,-104(s0)
    800074a2:	6bbc                	ld	a5,80(a5)
    800074a4:	f6f43c23          	sd	a5,-136(s0)
    800074a8:	f9843783          	ld	a5,-104(s0)
    800074ac:	fa043703          	ld	a4,-96(s0)
    800074b0:	ebb8                	sd	a4,80(a5)
    800074b2:	f9843783          	ld	a5,-104(s0)
    800074b6:	fb843703          	ld	a4,-72(s0)
    800074ba:	e7b8                	sd	a4,72(a5)
    800074bc:	f9843783          	ld	a5,-104(s0)
    800074c0:	6fbc                	ld	a5,88(a5)
    800074c2:	e4043703          	ld	a4,-448(s0)
    800074c6:	ef98                	sd	a4,24(a5)
    800074c8:	f9843783          	ld	a5,-104(s0)
    800074cc:	6fbc                	ld	a5,88(a5)
    800074ce:	fb043703          	ld	a4,-80(s0)
    800074d2:	fb98                	sd	a4,48(a5)
    800074d4:	f9043583          	ld	a1,-112(s0)
    800074d8:	f7843503          	ld	a0,-136(s0)
    800074dc:	ffffb097          	auipc	ra,0xffffb
    800074e0:	61c080e7          	jalr	1564(ra) # 80002af8 <proc_freepagetable>
    800074e4:	fc043783          	ld	a5,-64(s0)
    800074e8:	2781                	sext.w	a5,a5
    800074ea:	a0bd                	j	80007558 <exec+0x488>
    800074ec:	0001                	nop
    800074ee:	a825                	j	80007526 <exec+0x456>
    800074f0:	0001                	nop
    800074f2:	a815                	j	80007526 <exec+0x456>
    800074f4:	0001                	nop
    800074f6:	a805                	j	80007526 <exec+0x456>
    800074f8:	0001                	nop
    800074fa:	a035                	j	80007526 <exec+0x456>
    800074fc:	0001                	nop
    800074fe:	a025                	j	80007526 <exec+0x456>
    80007500:	0001                	nop
    80007502:	a015                	j	80007526 <exec+0x456>
    80007504:	0001                	nop
    80007506:	a005                	j	80007526 <exec+0x456>
    80007508:	0001                	nop
    8000750a:	a831                	j	80007526 <exec+0x456>
    8000750c:	0001                	nop
    8000750e:	a821                	j	80007526 <exec+0x456>
    80007510:	0001                	nop
    80007512:	a811                	j	80007526 <exec+0x456>
    80007514:	0001                	nop
    80007516:	a801                	j	80007526 <exec+0x456>
    80007518:	0001                	nop
    8000751a:	a031                	j	80007526 <exec+0x456>
    8000751c:	0001                	nop
    8000751e:	a021                	j	80007526 <exec+0x456>
    80007520:	0001                	nop
    80007522:	a011                	j	80007526 <exec+0x456>
    80007524:	0001                	nop
    80007526:	fa043783          	ld	a5,-96(s0)
    8000752a:	cb89                	beqz	a5,8000753c <exec+0x46c>
    8000752c:	fb843583          	ld	a1,-72(s0)
    80007530:	fa043503          	ld	a0,-96(s0)
    80007534:	ffffb097          	auipc	ra,0xffffb
    80007538:	5c4080e7          	jalr	1476(ra) # 80002af8 <proc_freepagetable>
    8000753c:	fa843783          	ld	a5,-88(s0)
    80007540:	cb99                	beqz	a5,80007556 <exec+0x486>
    80007542:	fa843503          	ld	a0,-88(s0)
    80007546:	ffffe097          	auipc	ra,0xffffe
    8000754a:	d28080e7          	jalr	-728(ra) # 8000526e <iunlockput>
    8000754e:	fffff097          	auipc	ra,0xfffff
    80007552:	bec080e7          	jalr	-1044(ra) # 8000613a <end_op>
    80007556:	57fd                	li	a5,-1
    80007558:	853e                	mv	a0,a5
    8000755a:	21813083          	ld	ra,536(sp)
    8000755e:	21013403          	ld	s0,528(sp)
    80007562:	20813483          	ld	s1,520(sp)
    80007566:	22010113          	addi	sp,sp,544
    8000756a:	8082                	ret

000000008000756c <loadseg>:
    8000756c:	7139                	addi	sp,sp,-64
    8000756e:	fc06                	sd	ra,56(sp)
    80007570:	f822                	sd	s0,48(sp)
    80007572:	0080                	addi	s0,sp,64
    80007574:	fca43c23          	sd	a0,-40(s0)
    80007578:	fcb43823          	sd	a1,-48(s0)
    8000757c:	fcc43423          	sd	a2,-56(s0)
    80007580:	87b6                	mv	a5,a3
    80007582:	fcf42223          	sw	a5,-60(s0)
    80007586:	87ba                	mv	a5,a4
    80007588:	fcf42023          	sw	a5,-64(s0)
    8000758c:	fd043703          	ld	a4,-48(s0)
    80007590:	6785                	lui	a5,0x1
    80007592:	17fd                	addi	a5,a5,-1
    80007594:	8ff9                	and	a5,a5,a4
    80007596:	cb89                	beqz	a5,800075a8 <loadseg+0x3c>
    80007598:	00004517          	auipc	a0,0x4
    8000759c:	04050513          	addi	a0,a0,64 # 8000b5d8 <etext+0x5d8>
    800075a0:	ffff9097          	auipc	ra,0xffff9
    800075a4:	6b2080e7          	jalr	1714(ra) # 80000c52 <panic>
    800075a8:	fe042623          	sw	zero,-20(s0)
    800075ac:	a05d                	j	80007652 <loadseg+0xe6>
    800075ae:	fec46703          	lwu	a4,-20(s0)
    800075b2:	fd043783          	ld	a5,-48(s0)
    800075b6:	97ba                	add	a5,a5,a4
    800075b8:	85be                	mv	a1,a5
    800075ba:	fd843503          	ld	a0,-40(s0)
    800075be:	ffffa097          	auipc	ra,0xffffa
    800075c2:	5da080e7          	jalr	1498(ra) # 80001b98 <walkaddr>
    800075c6:	fea43023          	sd	a0,-32(s0)
    800075ca:	fe043783          	ld	a5,-32(s0)
    800075ce:	eb89                	bnez	a5,800075e0 <loadseg+0x74>
    800075d0:	00004517          	auipc	a0,0x4
    800075d4:	03050513          	addi	a0,a0,48 # 8000b600 <etext+0x600>
    800075d8:	ffff9097          	auipc	ra,0xffff9
    800075dc:	67a080e7          	jalr	1658(ra) # 80000c52 <panic>
    800075e0:	fc042703          	lw	a4,-64(s0)
    800075e4:	fec42783          	lw	a5,-20(s0)
    800075e8:	40f707bb          	subw	a5,a4,a5
    800075ec:	2781                	sext.w	a5,a5
    800075ee:	873e                	mv	a4,a5
    800075f0:	6785                	lui	a5,0x1
    800075f2:	00f77b63          	bgeu	a4,a5,80007608 <loadseg+0x9c>
    800075f6:	fc042703          	lw	a4,-64(s0)
    800075fa:	fec42783          	lw	a5,-20(s0)
    800075fe:	40f707bb          	subw	a5,a4,a5
    80007602:	fef42423          	sw	a5,-24(s0)
    80007606:	a021                	j	8000760e <loadseg+0xa2>
    80007608:	6785                	lui	a5,0x1
    8000760a:	fef42423          	sw	a5,-24(s0)
    8000760e:	fc442703          	lw	a4,-60(s0)
    80007612:	fec42783          	lw	a5,-20(s0)
    80007616:	9fb9                	addw	a5,a5,a4
    80007618:	2781                	sext.w	a5,a5
    8000761a:	fe842703          	lw	a4,-24(s0)
    8000761e:	86be                	mv	a3,a5
    80007620:	fe043603          	ld	a2,-32(s0)
    80007624:	4581                	li	a1,0
    80007626:	fc843503          	ld	a0,-56(s0)
    8000762a:	ffffe097          	auipc	ra,0xffffe
    8000762e:	f7c080e7          	jalr	-132(ra) # 800055a6 <readi>
    80007632:	87aa                	mv	a5,a0
    80007634:	0007871b          	sext.w	a4,a5
    80007638:	fe842783          	lw	a5,-24(s0)
    8000763c:	2781                	sext.w	a5,a5
    8000763e:	00e78463          	beq	a5,a4,80007646 <loadseg+0xda>
    80007642:	57fd                	li	a5,-1
    80007644:	a005                	j	80007664 <loadseg+0xf8>
    80007646:	fec42703          	lw	a4,-20(s0)
    8000764a:	6785                	lui	a5,0x1
    8000764c:	9fb9                	addw	a5,a5,a4
    8000764e:	fef42623          	sw	a5,-20(s0)
    80007652:	fec42703          	lw	a4,-20(s0)
    80007656:	fc042783          	lw	a5,-64(s0)
    8000765a:	2701                	sext.w	a4,a4
    8000765c:	2781                	sext.w	a5,a5
    8000765e:	f4f768e3          	bltu	a4,a5,800075ae <loadseg+0x42>
    80007662:	4781                	li	a5,0
    80007664:	853e                	mv	a0,a5
    80007666:	70e2                	ld	ra,56(sp)
    80007668:	7442                	ld	s0,48(sp)
    8000766a:	6121                	addi	sp,sp,64
    8000766c:	8082                	ret

000000008000766e <argfd>:
    8000766e:	7139                	addi	sp,sp,-64
    80007670:	fc06                	sd	ra,56(sp)
    80007672:	f822                	sd	s0,48(sp)
    80007674:	0080                	addi	s0,sp,64
    80007676:	87aa                	mv	a5,a0
    80007678:	fcb43823          	sd	a1,-48(s0)
    8000767c:	fcc43423          	sd	a2,-56(s0)
    80007680:	fcf42e23          	sw	a5,-36(s0)
    80007684:	fe440713          	addi	a4,s0,-28
    80007688:	fdc42783          	lw	a5,-36(s0)
    8000768c:	85ba                	mv	a1,a4
    8000768e:	853e                	mv	a0,a5
    80007690:	ffffd097          	auipc	ra,0xffffd
    80007694:	9ae080e7          	jalr	-1618(ra) # 8000403e <argint>
    80007698:	87aa                	mv	a5,a0
    8000769a:	0007d463          	bgez	a5,800076a2 <argfd+0x34>
    8000769e:	57fd                	li	a5,-1
    800076a0:	a8b1                	j	800076fc <argfd+0x8e>
    800076a2:	fe442783          	lw	a5,-28(s0)
    800076a6:	0207c863          	bltz	a5,800076d6 <argfd+0x68>
    800076aa:	fe442783          	lw	a5,-28(s0)
    800076ae:	873e                	mv	a4,a5
    800076b0:	47bd                	li	a5,15
    800076b2:	02e7c263          	blt	a5,a4,800076d6 <argfd+0x68>
    800076b6:	ffffb097          	auipc	ra,0xffffb
    800076ba:	134080e7          	jalr	308(ra) # 800027ea <myproc>
    800076be:	872a                	mv	a4,a0
    800076c0:	fe442783          	lw	a5,-28(s0)
    800076c4:	07e9                	addi	a5,a5,26
    800076c6:	078e                	slli	a5,a5,0x3
    800076c8:	97ba                	add	a5,a5,a4
    800076ca:	639c                	ld	a5,0(a5)
    800076cc:	fef43423          	sd	a5,-24(s0)
    800076d0:	fe843783          	ld	a5,-24(s0)
    800076d4:	e399                	bnez	a5,800076da <argfd+0x6c>
    800076d6:	57fd                	li	a5,-1
    800076d8:	a015                	j	800076fc <argfd+0x8e>
    800076da:	fd043783          	ld	a5,-48(s0)
    800076de:	c791                	beqz	a5,800076ea <argfd+0x7c>
    800076e0:	fe442703          	lw	a4,-28(s0)
    800076e4:	fd043783          	ld	a5,-48(s0)
    800076e8:	c398                	sw	a4,0(a5)
    800076ea:	fc843783          	ld	a5,-56(s0)
    800076ee:	c791                	beqz	a5,800076fa <argfd+0x8c>
    800076f0:	fc843783          	ld	a5,-56(s0)
    800076f4:	fe843703          	ld	a4,-24(s0)
    800076f8:	e398                	sd	a4,0(a5)
    800076fa:	4781                	li	a5,0
    800076fc:	853e                	mv	a0,a5
    800076fe:	70e2                	ld	ra,56(sp)
    80007700:	7442                	ld	s0,48(sp)
    80007702:	6121                	addi	sp,sp,64
    80007704:	8082                	ret

0000000080007706 <fdalloc>:
    80007706:	7179                	addi	sp,sp,-48
    80007708:	f406                	sd	ra,40(sp)
    8000770a:	f022                	sd	s0,32(sp)
    8000770c:	1800                	addi	s0,sp,48
    8000770e:	fca43c23          	sd	a0,-40(s0)
    80007712:	ffffb097          	auipc	ra,0xffffb
    80007716:	0d8080e7          	jalr	216(ra) # 800027ea <myproc>
    8000771a:	fea43023          	sd	a0,-32(s0)
    8000771e:	fe042623          	sw	zero,-20(s0)
    80007722:	a825                	j	8000775a <fdalloc+0x54>
    80007724:	fe043703          	ld	a4,-32(s0)
    80007728:	fec42783          	lw	a5,-20(s0)
    8000772c:	07e9                	addi	a5,a5,26
    8000772e:	078e                	slli	a5,a5,0x3
    80007730:	97ba                	add	a5,a5,a4
    80007732:	639c                	ld	a5,0(a5)
    80007734:	ef91                	bnez	a5,80007750 <fdalloc+0x4a>
    80007736:	fe043703          	ld	a4,-32(s0)
    8000773a:	fec42783          	lw	a5,-20(s0)
    8000773e:	07e9                	addi	a5,a5,26
    80007740:	078e                	slli	a5,a5,0x3
    80007742:	97ba                	add	a5,a5,a4
    80007744:	fd843703          	ld	a4,-40(s0)
    80007748:	e398                	sd	a4,0(a5)
    8000774a:	fec42783          	lw	a5,-20(s0)
    8000774e:	a831                	j	8000776a <fdalloc+0x64>
    80007750:	fec42783          	lw	a5,-20(s0)
    80007754:	2785                	addiw	a5,a5,1
    80007756:	fef42623          	sw	a5,-20(s0)
    8000775a:	fec42783          	lw	a5,-20(s0)
    8000775e:	0007871b          	sext.w	a4,a5
    80007762:	47bd                	li	a5,15
    80007764:	fce7d0e3          	bge	a5,a4,80007724 <fdalloc+0x1e>
    80007768:	57fd                	li	a5,-1
    8000776a:	853e                	mv	a0,a5
    8000776c:	70a2                	ld	ra,40(sp)
    8000776e:	7402                	ld	s0,32(sp)
    80007770:	6145                	addi	sp,sp,48
    80007772:	8082                	ret

0000000080007774 <sys_dup>:
    80007774:	1101                	addi	sp,sp,-32
    80007776:	ec06                	sd	ra,24(sp)
    80007778:	e822                	sd	s0,16(sp)
    8000777a:	1000                	addi	s0,sp,32
    8000777c:	fe040793          	addi	a5,s0,-32
    80007780:	863e                	mv	a2,a5
    80007782:	4581                	li	a1,0
    80007784:	4501                	li	a0,0
    80007786:	00000097          	auipc	ra,0x0
    8000778a:	ee8080e7          	jalr	-280(ra) # 8000766e <argfd>
    8000778e:	87aa                	mv	a5,a0
    80007790:	0007d463          	bgez	a5,80007798 <sys_dup+0x24>
    80007794:	57fd                	li	a5,-1
    80007796:	a81d                	j	800077cc <sys_dup+0x58>
    80007798:	fe043783          	ld	a5,-32(s0)
    8000779c:	853e                	mv	a0,a5
    8000779e:	00000097          	auipc	ra,0x0
    800077a2:	f68080e7          	jalr	-152(ra) # 80007706 <fdalloc>
    800077a6:	87aa                	mv	a5,a0
    800077a8:	fef42623          	sw	a5,-20(s0)
    800077ac:	fec42783          	lw	a5,-20(s0)
    800077b0:	2781                	sext.w	a5,a5
    800077b2:	0007d463          	bgez	a5,800077ba <sys_dup+0x46>
    800077b6:	57fd                	li	a5,-1
    800077b8:	a811                	j	800077cc <sys_dup+0x58>
    800077ba:	fe043783          	ld	a5,-32(s0)
    800077be:	853e                	mv	a0,a5
    800077c0:	fffff097          	auipc	ra,0xfffff
    800077c4:	eec080e7          	jalr	-276(ra) # 800066ac <filedup>
    800077c8:	fec42783          	lw	a5,-20(s0)
    800077cc:	853e                	mv	a0,a5
    800077ce:	60e2                	ld	ra,24(sp)
    800077d0:	6442                	ld	s0,16(sp)
    800077d2:	6105                	addi	sp,sp,32
    800077d4:	8082                	ret

00000000800077d6 <sys_read>:
    800077d6:	7179                	addi	sp,sp,-48
    800077d8:	f406                	sd	ra,40(sp)
    800077da:	f022                	sd	s0,32(sp)
    800077dc:	1800                	addi	s0,sp,48
    800077de:	fe840793          	addi	a5,s0,-24
    800077e2:	863e                	mv	a2,a5
    800077e4:	4581                	li	a1,0
    800077e6:	4501                	li	a0,0
    800077e8:	00000097          	auipc	ra,0x0
    800077ec:	e86080e7          	jalr	-378(ra) # 8000766e <argfd>
    800077f0:	87aa                	mv	a5,a0
    800077f2:	0207c863          	bltz	a5,80007822 <sys_read+0x4c>
    800077f6:	fe440793          	addi	a5,s0,-28
    800077fa:	85be                	mv	a1,a5
    800077fc:	4509                	li	a0,2
    800077fe:	ffffd097          	auipc	ra,0xffffd
    80007802:	840080e7          	jalr	-1984(ra) # 8000403e <argint>
    80007806:	87aa                	mv	a5,a0
    80007808:	0007cd63          	bltz	a5,80007822 <sys_read+0x4c>
    8000780c:	fd840793          	addi	a5,s0,-40
    80007810:	85be                	mv	a1,a5
    80007812:	4505                	li	a0,1
    80007814:	ffffd097          	auipc	ra,0xffffd
    80007818:	862080e7          	jalr	-1950(ra) # 80004076 <argaddr>
    8000781c:	87aa                	mv	a5,a0
    8000781e:	0007d463          	bgez	a5,80007826 <sys_read+0x50>
    80007822:	57fd                	li	a5,-1
    80007824:	a839                	j	80007842 <sys_read+0x6c>
    80007826:	fe843783          	ld	a5,-24(s0)
    8000782a:	fd843703          	ld	a4,-40(s0)
    8000782e:	fe442683          	lw	a3,-28(s0)
    80007832:	8636                	mv	a2,a3
    80007834:	85ba                	mv	a1,a4
    80007836:	853e                	mv	a0,a5
    80007838:	fffff097          	auipc	ra,0xfffff
    8000783c:	086080e7          	jalr	134(ra) # 800068be <fileread>
    80007840:	87aa                	mv	a5,a0
    80007842:	853e                	mv	a0,a5
    80007844:	70a2                	ld	ra,40(sp)
    80007846:	7402                	ld	s0,32(sp)
    80007848:	6145                	addi	sp,sp,48
    8000784a:	8082                	ret

000000008000784c <sys_write>:
    8000784c:	7179                	addi	sp,sp,-48
    8000784e:	f406                	sd	ra,40(sp)
    80007850:	f022                	sd	s0,32(sp)
    80007852:	1800                	addi	s0,sp,48
    80007854:	fe840793          	addi	a5,s0,-24
    80007858:	863e                	mv	a2,a5
    8000785a:	4581                	li	a1,0
    8000785c:	4501                	li	a0,0
    8000785e:	00000097          	auipc	ra,0x0
    80007862:	e10080e7          	jalr	-496(ra) # 8000766e <argfd>
    80007866:	87aa                	mv	a5,a0
    80007868:	0207c863          	bltz	a5,80007898 <sys_write+0x4c>
    8000786c:	fe440793          	addi	a5,s0,-28
    80007870:	85be                	mv	a1,a5
    80007872:	4509                	li	a0,2
    80007874:	ffffc097          	auipc	ra,0xffffc
    80007878:	7ca080e7          	jalr	1994(ra) # 8000403e <argint>
    8000787c:	87aa                	mv	a5,a0
    8000787e:	0007cd63          	bltz	a5,80007898 <sys_write+0x4c>
    80007882:	fd840793          	addi	a5,s0,-40
    80007886:	85be                	mv	a1,a5
    80007888:	4505                	li	a0,1
    8000788a:	ffffc097          	auipc	ra,0xffffc
    8000788e:	7ec080e7          	jalr	2028(ra) # 80004076 <argaddr>
    80007892:	87aa                	mv	a5,a0
    80007894:	0007d463          	bgez	a5,8000789c <sys_write+0x50>
    80007898:	57fd                	li	a5,-1
    8000789a:	a839                	j	800078b8 <sys_write+0x6c>
    8000789c:	fe843783          	ld	a5,-24(s0)
    800078a0:	fd843703          	ld	a4,-40(s0)
    800078a4:	fe442683          	lw	a3,-28(s0)
    800078a8:	8636                	mv	a2,a3
    800078aa:	85ba                	mv	a1,a4
    800078ac:	853e                	mv	a0,a5
    800078ae:	fffff097          	auipc	ra,0xfffff
    800078b2:	176080e7          	jalr	374(ra) # 80006a24 <filewrite>
    800078b6:	87aa                	mv	a5,a0
    800078b8:	853e                	mv	a0,a5
    800078ba:	70a2                	ld	ra,40(sp)
    800078bc:	7402                	ld	s0,32(sp)
    800078be:	6145                	addi	sp,sp,48
    800078c0:	8082                	ret

00000000800078c2 <sys_close>:
    800078c2:	1101                	addi	sp,sp,-32
    800078c4:	ec06                	sd	ra,24(sp)
    800078c6:	e822                	sd	s0,16(sp)
    800078c8:	1000                	addi	s0,sp,32
    800078ca:	fe040713          	addi	a4,s0,-32
    800078ce:	fec40793          	addi	a5,s0,-20
    800078d2:	863a                	mv	a2,a4
    800078d4:	85be                	mv	a1,a5
    800078d6:	4501                	li	a0,0
    800078d8:	00000097          	auipc	ra,0x0
    800078dc:	d96080e7          	jalr	-618(ra) # 8000766e <argfd>
    800078e0:	87aa                	mv	a5,a0
    800078e2:	0007d463          	bgez	a5,800078ea <sys_close+0x28>
    800078e6:	57fd                	li	a5,-1
    800078e8:	a02d                	j	80007912 <sys_close+0x50>
    800078ea:	ffffb097          	auipc	ra,0xffffb
    800078ee:	f00080e7          	jalr	-256(ra) # 800027ea <myproc>
    800078f2:	872a                	mv	a4,a0
    800078f4:	fec42783          	lw	a5,-20(s0)
    800078f8:	07e9                	addi	a5,a5,26
    800078fa:	078e                	slli	a5,a5,0x3
    800078fc:	97ba                	add	a5,a5,a4
    800078fe:	0007b023          	sd	zero,0(a5) # 1000 <_entry-0x7ffff000>
    80007902:	fe043783          	ld	a5,-32(s0)
    80007906:	853e                	mv	a0,a5
    80007908:	fffff097          	auipc	ra,0xfffff
    8000790c:	e0a080e7          	jalr	-502(ra) # 80006712 <fileclose>
    80007910:	4781                	li	a5,0
    80007912:	853e                	mv	a0,a5
    80007914:	60e2                	ld	ra,24(sp)
    80007916:	6442                	ld	s0,16(sp)
    80007918:	6105                	addi	sp,sp,32
    8000791a:	8082                	ret

000000008000791c <sys_fstat>:
    8000791c:	1101                	addi	sp,sp,-32
    8000791e:	ec06                	sd	ra,24(sp)
    80007920:	e822                	sd	s0,16(sp)
    80007922:	1000                	addi	s0,sp,32
    80007924:	fe840793          	addi	a5,s0,-24
    80007928:	863e                	mv	a2,a5
    8000792a:	4581                	li	a1,0
    8000792c:	4501                	li	a0,0
    8000792e:	00000097          	auipc	ra,0x0
    80007932:	d40080e7          	jalr	-704(ra) # 8000766e <argfd>
    80007936:	87aa                	mv	a5,a0
    80007938:	0007cd63          	bltz	a5,80007952 <sys_fstat+0x36>
    8000793c:	fe040793          	addi	a5,s0,-32
    80007940:	85be                	mv	a1,a5
    80007942:	4505                	li	a0,1
    80007944:	ffffc097          	auipc	ra,0xffffc
    80007948:	732080e7          	jalr	1842(ra) # 80004076 <argaddr>
    8000794c:	87aa                	mv	a5,a0
    8000794e:	0007d463          	bgez	a5,80007956 <sys_fstat+0x3a>
    80007952:	57fd                	li	a5,-1
    80007954:	a821                	j	8000796c <sys_fstat+0x50>
    80007956:	fe843783          	ld	a5,-24(s0)
    8000795a:	fe043703          	ld	a4,-32(s0)
    8000795e:	85ba                	mv	a1,a4
    80007960:	853e                	mv	a0,a5
    80007962:	fffff097          	auipc	ra,0xfffff
    80007966:	eb8080e7          	jalr	-328(ra) # 8000681a <filestat>
    8000796a:	87aa                	mv	a5,a0
    8000796c:	853e                	mv	a0,a5
    8000796e:	60e2                	ld	ra,24(sp)
    80007970:	6442                	ld	s0,16(sp)
    80007972:	6105                	addi	sp,sp,32
    80007974:	8082                	ret

0000000080007976 <sys_link>:
    80007976:	7169                	addi	sp,sp,-304
    80007978:	f606                	sd	ra,296(sp)
    8000797a:	f222                	sd	s0,288(sp)
    8000797c:	1a00                	addi	s0,sp,304
    8000797e:	ed040793          	addi	a5,s0,-304
    80007982:	08000613          	li	a2,128
    80007986:	85be                	mv	a1,a5
    80007988:	4501                	li	a0,0
    8000798a:	ffffc097          	auipc	ra,0xffffc
    8000798e:	720080e7          	jalr	1824(ra) # 800040aa <argstr>
    80007992:	87aa                	mv	a5,a0
    80007994:	0007cf63          	bltz	a5,800079b2 <sys_link+0x3c>
    80007998:	f5040793          	addi	a5,s0,-176
    8000799c:	08000613          	li	a2,128
    800079a0:	85be                	mv	a1,a5
    800079a2:	4505                	li	a0,1
    800079a4:	ffffc097          	auipc	ra,0xffffc
    800079a8:	706080e7          	jalr	1798(ra) # 800040aa <argstr>
    800079ac:	87aa                	mv	a5,a0
    800079ae:	0007d463          	bgez	a5,800079b6 <sys_link+0x40>
    800079b2:	57fd                	li	a5,-1
    800079b4:	aab5                	j	80007b30 <sys_link+0x1ba>
    800079b6:	ffffe097          	auipc	ra,0xffffe
    800079ba:	6c2080e7          	jalr	1730(ra) # 80006078 <begin_op>
    800079be:	ed040793          	addi	a5,s0,-304
    800079c2:	853e                	mv	a0,a5
    800079c4:	ffffe097          	auipc	ra,0xffffe
    800079c8:	350080e7          	jalr	848(ra) # 80005d14 <namei>
    800079cc:	fea43423          	sd	a0,-24(s0)
    800079d0:	fe843783          	ld	a5,-24(s0)
    800079d4:	e799                	bnez	a5,800079e2 <sys_link+0x6c>
    800079d6:	ffffe097          	auipc	ra,0xffffe
    800079da:	764080e7          	jalr	1892(ra) # 8000613a <end_op>
    800079de:	57fd                	li	a5,-1
    800079e0:	aa81                	j	80007b30 <sys_link+0x1ba>
    800079e2:	fe843503          	ld	a0,-24(s0)
    800079e6:	ffffd097          	auipc	ra,0xffffd
    800079ea:	62a080e7          	jalr	1578(ra) # 80005010 <ilock>
    800079ee:	fe843783          	ld	a5,-24(s0)
    800079f2:	04479783          	lh	a5,68(a5)
    800079f6:	0007871b          	sext.w	a4,a5
    800079fa:	4785                	li	a5,1
    800079fc:	00f71e63          	bne	a4,a5,80007a18 <sys_link+0xa2>
    80007a00:	fe843503          	ld	a0,-24(s0)
    80007a04:	ffffe097          	auipc	ra,0xffffe
    80007a08:	86a080e7          	jalr	-1942(ra) # 8000526e <iunlockput>
    80007a0c:	ffffe097          	auipc	ra,0xffffe
    80007a10:	72e080e7          	jalr	1838(ra) # 8000613a <end_op>
    80007a14:	57fd                	li	a5,-1
    80007a16:	aa29                	j	80007b30 <sys_link+0x1ba>
    80007a18:	fe843783          	ld	a5,-24(s0)
    80007a1c:	04a79783          	lh	a5,74(a5)
    80007a20:	17c2                	slli	a5,a5,0x30
    80007a22:	93c1                	srli	a5,a5,0x30
    80007a24:	2785                	addiw	a5,a5,1
    80007a26:	17c2                	slli	a5,a5,0x30
    80007a28:	93c1                	srli	a5,a5,0x30
    80007a2a:	0107971b          	slliw	a4,a5,0x10
    80007a2e:	4107571b          	sraiw	a4,a4,0x10
    80007a32:	fe843783          	ld	a5,-24(s0)
    80007a36:	04e79523          	sh	a4,74(a5)
    80007a3a:	fe843503          	ld	a0,-24(s0)
    80007a3e:	ffffd097          	auipc	ra,0xffffd
    80007a42:	382080e7          	jalr	898(ra) # 80004dc0 <iupdate>
    80007a46:	fe843503          	ld	a0,-24(s0)
    80007a4a:	ffffd097          	auipc	ra,0xffffd
    80007a4e:	6fa080e7          	jalr	1786(ra) # 80005144 <iunlock>
    80007a52:	fd040713          	addi	a4,s0,-48
    80007a56:	f5040793          	addi	a5,s0,-176
    80007a5a:	85ba                	mv	a1,a4
    80007a5c:	853e                	mv	a0,a5
    80007a5e:	ffffe097          	auipc	ra,0xffffe
    80007a62:	2e2080e7          	jalr	738(ra) # 80005d40 <nameiparent>
    80007a66:	fea43023          	sd	a0,-32(s0)
    80007a6a:	fe043783          	ld	a5,-32(s0)
    80007a6e:	cba5                	beqz	a5,80007ade <sys_link+0x168>
    80007a70:	fe043503          	ld	a0,-32(s0)
    80007a74:	ffffd097          	auipc	ra,0xffffd
    80007a78:	59c080e7          	jalr	1436(ra) # 80005010 <ilock>
    80007a7c:	fe043783          	ld	a5,-32(s0)
    80007a80:	4398                	lw	a4,0(a5)
    80007a82:	fe843783          	ld	a5,-24(s0)
    80007a86:	439c                	lw	a5,0(a5)
    80007a88:	02f71263          	bne	a4,a5,80007aac <sys_link+0x136>
    80007a8c:	fe843783          	ld	a5,-24(s0)
    80007a90:	43d8                	lw	a4,4(a5)
    80007a92:	fd040793          	addi	a5,s0,-48
    80007a96:	863a                	mv	a2,a4
    80007a98:	85be                	mv	a1,a5
    80007a9a:	fe043503          	ld	a0,-32(s0)
    80007a9e:	ffffe097          	auipc	ra,0xffffe
    80007aa2:	f5c080e7          	jalr	-164(ra) # 800059fa <dirlink>
    80007aa6:	87aa                	mv	a5,a0
    80007aa8:	0007d963          	bgez	a5,80007aba <sys_link+0x144>
    80007aac:	fe043503          	ld	a0,-32(s0)
    80007ab0:	ffffd097          	auipc	ra,0xffffd
    80007ab4:	7be080e7          	jalr	1982(ra) # 8000526e <iunlockput>
    80007ab8:	a025                	j	80007ae0 <sys_link+0x16a>
    80007aba:	fe043503          	ld	a0,-32(s0)
    80007abe:	ffffd097          	auipc	ra,0xffffd
    80007ac2:	7b0080e7          	jalr	1968(ra) # 8000526e <iunlockput>
    80007ac6:	fe843503          	ld	a0,-24(s0)
    80007aca:	ffffd097          	auipc	ra,0xffffd
    80007ace:	6d4080e7          	jalr	1748(ra) # 8000519e <iput>
    80007ad2:	ffffe097          	auipc	ra,0xffffe
    80007ad6:	668080e7          	jalr	1640(ra) # 8000613a <end_op>
    80007ada:	4781                	li	a5,0
    80007adc:	a891                	j	80007b30 <sys_link+0x1ba>
    80007ade:	0001                	nop
    80007ae0:	fe843503          	ld	a0,-24(s0)
    80007ae4:	ffffd097          	auipc	ra,0xffffd
    80007ae8:	52c080e7          	jalr	1324(ra) # 80005010 <ilock>
    80007aec:	fe843783          	ld	a5,-24(s0)
    80007af0:	04a79783          	lh	a5,74(a5)
    80007af4:	17c2                	slli	a5,a5,0x30
    80007af6:	93c1                	srli	a5,a5,0x30
    80007af8:	37fd                	addiw	a5,a5,-1
    80007afa:	17c2                	slli	a5,a5,0x30
    80007afc:	93c1                	srli	a5,a5,0x30
    80007afe:	0107971b          	slliw	a4,a5,0x10
    80007b02:	4107571b          	sraiw	a4,a4,0x10
    80007b06:	fe843783          	ld	a5,-24(s0)
    80007b0a:	04e79523          	sh	a4,74(a5)
    80007b0e:	fe843503          	ld	a0,-24(s0)
    80007b12:	ffffd097          	auipc	ra,0xffffd
    80007b16:	2ae080e7          	jalr	686(ra) # 80004dc0 <iupdate>
    80007b1a:	fe843503          	ld	a0,-24(s0)
    80007b1e:	ffffd097          	auipc	ra,0xffffd
    80007b22:	750080e7          	jalr	1872(ra) # 8000526e <iunlockput>
    80007b26:	ffffe097          	auipc	ra,0xffffe
    80007b2a:	614080e7          	jalr	1556(ra) # 8000613a <end_op>
    80007b2e:	57fd                	li	a5,-1
    80007b30:	853e                	mv	a0,a5
    80007b32:	70b2                	ld	ra,296(sp)
    80007b34:	7412                	ld	s0,288(sp)
    80007b36:	6155                	addi	sp,sp,304
    80007b38:	8082                	ret

0000000080007b3a <isdirempty>:
    80007b3a:	7139                	addi	sp,sp,-64
    80007b3c:	fc06                	sd	ra,56(sp)
    80007b3e:	f822                	sd	s0,48(sp)
    80007b40:	0080                	addi	s0,sp,64
    80007b42:	fca43423          	sd	a0,-56(s0)
    80007b46:	02000793          	li	a5,32
    80007b4a:	fef42623          	sw	a5,-20(s0)
    80007b4e:	a0b1                	j	80007b9a <isdirempty+0x60>
    80007b50:	fd840793          	addi	a5,s0,-40
    80007b54:	fec42683          	lw	a3,-20(s0)
    80007b58:	4741                	li	a4,16
    80007b5a:	863e                	mv	a2,a5
    80007b5c:	4581                	li	a1,0
    80007b5e:	fc843503          	ld	a0,-56(s0)
    80007b62:	ffffe097          	auipc	ra,0xffffe
    80007b66:	a44080e7          	jalr	-1468(ra) # 800055a6 <readi>
    80007b6a:	87aa                	mv	a5,a0
    80007b6c:	873e                	mv	a4,a5
    80007b6e:	47c1                	li	a5,16
    80007b70:	00f70a63          	beq	a4,a5,80007b84 <isdirempty+0x4a>
    80007b74:	00004517          	auipc	a0,0x4
    80007b78:	aac50513          	addi	a0,a0,-1364 # 8000b620 <etext+0x620>
    80007b7c:	ffff9097          	auipc	ra,0xffff9
    80007b80:	0d6080e7          	jalr	214(ra) # 80000c52 <panic>
    80007b84:	fd845783          	lhu	a5,-40(s0)
    80007b88:	c399                	beqz	a5,80007b8e <isdirempty+0x54>
    80007b8a:	4781                	li	a5,0
    80007b8c:	a839                	j	80007baa <isdirempty+0x70>
    80007b8e:	fec42783          	lw	a5,-20(s0)
    80007b92:	27c1                	addiw	a5,a5,16
    80007b94:	2781                	sext.w	a5,a5
    80007b96:	fef42623          	sw	a5,-20(s0)
    80007b9a:	fc843783          	ld	a5,-56(s0)
    80007b9e:	47f8                	lw	a4,76(a5)
    80007ba0:	fec42783          	lw	a5,-20(s0)
    80007ba4:	fae7e6e3          	bltu	a5,a4,80007b50 <isdirempty+0x16>
    80007ba8:	4785                	li	a5,1
    80007baa:	853e                	mv	a0,a5
    80007bac:	70e2                	ld	ra,56(sp)
    80007bae:	7442                	ld	s0,48(sp)
    80007bb0:	6121                	addi	sp,sp,64
    80007bb2:	8082                	ret

0000000080007bb4 <sys_unlink>:
    80007bb4:	7155                	addi	sp,sp,-208
    80007bb6:	e586                	sd	ra,200(sp)
    80007bb8:	e1a2                	sd	s0,192(sp)
    80007bba:	0980                	addi	s0,sp,208
    80007bbc:	f4040793          	addi	a5,s0,-192
    80007bc0:	08000613          	li	a2,128
    80007bc4:	85be                	mv	a1,a5
    80007bc6:	4501                	li	a0,0
    80007bc8:	ffffc097          	auipc	ra,0xffffc
    80007bcc:	4e2080e7          	jalr	1250(ra) # 800040aa <argstr>
    80007bd0:	87aa                	mv	a5,a0
    80007bd2:	0007d463          	bgez	a5,80007bda <sys_unlink+0x26>
    80007bd6:	57fd                	li	a5,-1
    80007bd8:	a2ed                	j	80007dc2 <sys_unlink+0x20e>
    80007bda:	ffffe097          	auipc	ra,0xffffe
    80007bde:	49e080e7          	jalr	1182(ra) # 80006078 <begin_op>
    80007be2:	fc040713          	addi	a4,s0,-64
    80007be6:	f4040793          	addi	a5,s0,-192
    80007bea:	85ba                	mv	a1,a4
    80007bec:	853e                	mv	a0,a5
    80007bee:	ffffe097          	auipc	ra,0xffffe
    80007bf2:	152080e7          	jalr	338(ra) # 80005d40 <nameiparent>
    80007bf6:	fea43423          	sd	a0,-24(s0)
    80007bfa:	fe843783          	ld	a5,-24(s0)
    80007bfe:	e799                	bnez	a5,80007c0c <sys_unlink+0x58>
    80007c00:	ffffe097          	auipc	ra,0xffffe
    80007c04:	53a080e7          	jalr	1338(ra) # 8000613a <end_op>
    80007c08:	57fd                	li	a5,-1
    80007c0a:	aa65                	j	80007dc2 <sys_unlink+0x20e>
    80007c0c:	fe843503          	ld	a0,-24(s0)
    80007c10:	ffffd097          	auipc	ra,0xffffd
    80007c14:	400080e7          	jalr	1024(ra) # 80005010 <ilock>
    80007c18:	fc040793          	addi	a5,s0,-64
    80007c1c:	00004597          	auipc	a1,0x4
    80007c20:	a1c58593          	addi	a1,a1,-1508 # 8000b638 <etext+0x638>
    80007c24:	853e                	mv	a0,a5
    80007c26:	ffffe097          	auipc	ra,0xffffe
    80007c2a:	cbe080e7          	jalr	-834(ra) # 800058e4 <namecmp>
    80007c2e:	87aa                	mv	a5,a0
    80007c30:	16078b63          	beqz	a5,80007da6 <sys_unlink+0x1f2>
    80007c34:	fc040793          	addi	a5,s0,-64
    80007c38:	00004597          	auipc	a1,0x4
    80007c3c:	a0858593          	addi	a1,a1,-1528 # 8000b640 <etext+0x640>
    80007c40:	853e                	mv	a0,a5
    80007c42:	ffffe097          	auipc	ra,0xffffe
    80007c46:	ca2080e7          	jalr	-862(ra) # 800058e4 <namecmp>
    80007c4a:	87aa                	mv	a5,a0
    80007c4c:	14078d63          	beqz	a5,80007da6 <sys_unlink+0x1f2>
    80007c50:	f3c40713          	addi	a4,s0,-196
    80007c54:	fc040793          	addi	a5,s0,-64
    80007c58:	863a                	mv	a2,a4
    80007c5a:	85be                	mv	a1,a5
    80007c5c:	fe843503          	ld	a0,-24(s0)
    80007c60:	ffffe097          	auipc	ra,0xffffe
    80007c64:	cb2080e7          	jalr	-846(ra) # 80005912 <dirlookup>
    80007c68:	fea43023          	sd	a0,-32(s0)
    80007c6c:	fe043783          	ld	a5,-32(s0)
    80007c70:	12078d63          	beqz	a5,80007daa <sys_unlink+0x1f6>
    80007c74:	fe043503          	ld	a0,-32(s0)
    80007c78:	ffffd097          	auipc	ra,0xffffd
    80007c7c:	398080e7          	jalr	920(ra) # 80005010 <ilock>
    80007c80:	fe043783          	ld	a5,-32(s0)
    80007c84:	04a79783          	lh	a5,74(a5)
    80007c88:	2781                	sext.w	a5,a5
    80007c8a:	00f04a63          	bgtz	a5,80007c9e <sys_unlink+0xea>
    80007c8e:	00004517          	auipc	a0,0x4
    80007c92:	9ba50513          	addi	a0,a0,-1606 # 8000b648 <etext+0x648>
    80007c96:	ffff9097          	auipc	ra,0xffff9
    80007c9a:	fbc080e7          	jalr	-68(ra) # 80000c52 <panic>
    80007c9e:	fe043783          	ld	a5,-32(s0)
    80007ca2:	04479783          	lh	a5,68(a5)
    80007ca6:	0007871b          	sext.w	a4,a5
    80007caa:	4785                	li	a5,1
    80007cac:	02f71163          	bne	a4,a5,80007cce <sys_unlink+0x11a>
    80007cb0:	fe043503          	ld	a0,-32(s0)
    80007cb4:	00000097          	auipc	ra,0x0
    80007cb8:	e86080e7          	jalr	-378(ra) # 80007b3a <isdirempty>
    80007cbc:	87aa                	mv	a5,a0
    80007cbe:	eb81                	bnez	a5,80007cce <sys_unlink+0x11a>
    80007cc0:	fe043503          	ld	a0,-32(s0)
    80007cc4:	ffffd097          	auipc	ra,0xffffd
    80007cc8:	5aa080e7          	jalr	1450(ra) # 8000526e <iunlockput>
    80007ccc:	a0c5                	j	80007dac <sys_unlink+0x1f8>
    80007cce:	fd040793          	addi	a5,s0,-48
    80007cd2:	4641                	li	a2,16
    80007cd4:	4581                	li	a1,0
    80007cd6:	853e                	mv	a0,a5
    80007cd8:	ffff9097          	auipc	ra,0xffff9
    80007cdc:	77c080e7          	jalr	1916(ra) # 80001454 <memset>
    80007ce0:	fd040793          	addi	a5,s0,-48
    80007ce4:	f3c42683          	lw	a3,-196(s0)
    80007ce8:	4741                	li	a4,16
    80007cea:	863e                	mv	a2,a5
    80007cec:	4581                	li	a1,0
    80007cee:	fe843503          	ld	a0,-24(s0)
    80007cf2:	ffffe097          	auipc	ra,0xffffe
    80007cf6:	a3e080e7          	jalr	-1474(ra) # 80005730 <writei>
    80007cfa:	87aa                	mv	a5,a0
    80007cfc:	873e                	mv	a4,a5
    80007cfe:	47c1                	li	a5,16
    80007d00:	00f70a63          	beq	a4,a5,80007d14 <sys_unlink+0x160>
    80007d04:	00004517          	auipc	a0,0x4
    80007d08:	95c50513          	addi	a0,a0,-1700 # 8000b660 <etext+0x660>
    80007d0c:	ffff9097          	auipc	ra,0xffff9
    80007d10:	f46080e7          	jalr	-186(ra) # 80000c52 <panic>
    80007d14:	fe043783          	ld	a5,-32(s0)
    80007d18:	04479783          	lh	a5,68(a5)
    80007d1c:	0007871b          	sext.w	a4,a5
    80007d20:	4785                	li	a5,1
    80007d22:	02f71963          	bne	a4,a5,80007d54 <sys_unlink+0x1a0>
    80007d26:	fe843783          	ld	a5,-24(s0)
    80007d2a:	04a79783          	lh	a5,74(a5)
    80007d2e:	17c2                	slli	a5,a5,0x30
    80007d30:	93c1                	srli	a5,a5,0x30
    80007d32:	37fd                	addiw	a5,a5,-1
    80007d34:	17c2                	slli	a5,a5,0x30
    80007d36:	93c1                	srli	a5,a5,0x30
    80007d38:	0107971b          	slliw	a4,a5,0x10
    80007d3c:	4107571b          	sraiw	a4,a4,0x10
    80007d40:	fe843783          	ld	a5,-24(s0)
    80007d44:	04e79523          	sh	a4,74(a5)
    80007d48:	fe843503          	ld	a0,-24(s0)
    80007d4c:	ffffd097          	auipc	ra,0xffffd
    80007d50:	074080e7          	jalr	116(ra) # 80004dc0 <iupdate>
    80007d54:	fe843503          	ld	a0,-24(s0)
    80007d58:	ffffd097          	auipc	ra,0xffffd
    80007d5c:	516080e7          	jalr	1302(ra) # 8000526e <iunlockput>
    80007d60:	fe043783          	ld	a5,-32(s0)
    80007d64:	04a79783          	lh	a5,74(a5)
    80007d68:	17c2                	slli	a5,a5,0x30
    80007d6a:	93c1                	srli	a5,a5,0x30
    80007d6c:	37fd                	addiw	a5,a5,-1
    80007d6e:	17c2                	slli	a5,a5,0x30
    80007d70:	93c1                	srli	a5,a5,0x30
    80007d72:	0107971b          	slliw	a4,a5,0x10
    80007d76:	4107571b          	sraiw	a4,a4,0x10
    80007d7a:	fe043783          	ld	a5,-32(s0)
    80007d7e:	04e79523          	sh	a4,74(a5)
    80007d82:	fe043503          	ld	a0,-32(s0)
    80007d86:	ffffd097          	auipc	ra,0xffffd
    80007d8a:	03a080e7          	jalr	58(ra) # 80004dc0 <iupdate>
    80007d8e:	fe043503          	ld	a0,-32(s0)
    80007d92:	ffffd097          	auipc	ra,0xffffd
    80007d96:	4dc080e7          	jalr	1244(ra) # 8000526e <iunlockput>
    80007d9a:	ffffe097          	auipc	ra,0xffffe
    80007d9e:	3a0080e7          	jalr	928(ra) # 8000613a <end_op>
    80007da2:	4781                	li	a5,0
    80007da4:	a839                	j	80007dc2 <sys_unlink+0x20e>
    80007da6:	0001                	nop
    80007da8:	a011                	j	80007dac <sys_unlink+0x1f8>
    80007daa:	0001                	nop
    80007dac:	fe843503          	ld	a0,-24(s0)
    80007db0:	ffffd097          	auipc	ra,0xffffd
    80007db4:	4be080e7          	jalr	1214(ra) # 8000526e <iunlockput>
    80007db8:	ffffe097          	auipc	ra,0xffffe
    80007dbc:	382080e7          	jalr	898(ra) # 8000613a <end_op>
    80007dc0:	57fd                	li	a5,-1
    80007dc2:	853e                	mv	a0,a5
    80007dc4:	60ae                	ld	ra,200(sp)
    80007dc6:	640e                	ld	s0,192(sp)
    80007dc8:	6169                	addi	sp,sp,208
    80007dca:	8082                	ret

0000000080007dcc <create>:
    80007dcc:	7139                	addi	sp,sp,-64
    80007dce:	fc06                	sd	ra,56(sp)
    80007dd0:	f822                	sd	s0,48(sp)
    80007dd2:	0080                	addi	s0,sp,64
    80007dd4:	fca43423          	sd	a0,-56(s0)
    80007dd8:	87ae                	mv	a5,a1
    80007dda:	8736                	mv	a4,a3
    80007ddc:	fcf41323          	sh	a5,-58(s0)
    80007de0:	87b2                	mv	a5,a2
    80007de2:	fcf41223          	sh	a5,-60(s0)
    80007de6:	87ba                	mv	a5,a4
    80007de8:	fcf41123          	sh	a5,-62(s0)
    80007dec:	fd040793          	addi	a5,s0,-48
    80007df0:	85be                	mv	a1,a5
    80007df2:	fc843503          	ld	a0,-56(s0)
    80007df6:	ffffe097          	auipc	ra,0xffffe
    80007dfa:	f4a080e7          	jalr	-182(ra) # 80005d40 <nameiparent>
    80007dfe:	fea43423          	sd	a0,-24(s0)
    80007e02:	fe843783          	ld	a5,-24(s0)
    80007e06:	e399                	bnez	a5,80007e0c <create+0x40>
    80007e08:	4781                	li	a5,0
    80007e0a:	a2d9                	j	80007fd0 <create+0x204>
    80007e0c:	fe843503          	ld	a0,-24(s0)
    80007e10:	ffffd097          	auipc	ra,0xffffd
    80007e14:	200080e7          	jalr	512(ra) # 80005010 <ilock>
    80007e18:	fd040793          	addi	a5,s0,-48
    80007e1c:	4601                	li	a2,0
    80007e1e:	85be                	mv	a1,a5
    80007e20:	fe843503          	ld	a0,-24(s0)
    80007e24:	ffffe097          	auipc	ra,0xffffe
    80007e28:	aee080e7          	jalr	-1298(ra) # 80005912 <dirlookup>
    80007e2c:	fea43023          	sd	a0,-32(s0)
    80007e30:	fe043783          	ld	a5,-32(s0)
    80007e34:	c3ad                	beqz	a5,80007e96 <create+0xca>
    80007e36:	fe843503          	ld	a0,-24(s0)
    80007e3a:	ffffd097          	auipc	ra,0xffffd
    80007e3e:	434080e7          	jalr	1076(ra) # 8000526e <iunlockput>
    80007e42:	fe043503          	ld	a0,-32(s0)
    80007e46:	ffffd097          	auipc	ra,0xffffd
    80007e4a:	1ca080e7          	jalr	458(ra) # 80005010 <ilock>
    80007e4e:	fc641783          	lh	a5,-58(s0)
    80007e52:	0007871b          	sext.w	a4,a5
    80007e56:	4789                	li	a5,2
    80007e58:	02f71763          	bne	a4,a5,80007e86 <create+0xba>
    80007e5c:	fe043783          	ld	a5,-32(s0)
    80007e60:	04479783          	lh	a5,68(a5)
    80007e64:	0007871b          	sext.w	a4,a5
    80007e68:	4789                	li	a5,2
    80007e6a:	00f70b63          	beq	a4,a5,80007e80 <create+0xb4>
    80007e6e:	fe043783          	ld	a5,-32(s0)
    80007e72:	04479783          	lh	a5,68(a5)
    80007e76:	0007871b          	sext.w	a4,a5
    80007e7a:	478d                	li	a5,3
    80007e7c:	00f71563          	bne	a4,a5,80007e86 <create+0xba>
    80007e80:	fe043783          	ld	a5,-32(s0)
    80007e84:	a2b1                	j	80007fd0 <create+0x204>
    80007e86:	fe043503          	ld	a0,-32(s0)
    80007e8a:	ffffd097          	auipc	ra,0xffffd
    80007e8e:	3e4080e7          	jalr	996(ra) # 8000526e <iunlockput>
    80007e92:	4781                	li	a5,0
    80007e94:	aa35                	j	80007fd0 <create+0x204>
    80007e96:	fe843783          	ld	a5,-24(s0)
    80007e9a:	439c                	lw	a5,0(a5)
    80007e9c:	fc641703          	lh	a4,-58(s0)
    80007ea0:	85ba                	mv	a1,a4
    80007ea2:	853e                	mv	a0,a5
    80007ea4:	ffffd097          	auipc	ra,0xffffd
    80007ea8:	e20080e7          	jalr	-480(ra) # 80004cc4 <ialloc>
    80007eac:	fea43023          	sd	a0,-32(s0)
    80007eb0:	fe043783          	ld	a5,-32(s0)
    80007eb4:	eb89                	bnez	a5,80007ec6 <create+0xfa>
    80007eb6:	00003517          	auipc	a0,0x3
    80007eba:	7ba50513          	addi	a0,a0,1978 # 8000b670 <etext+0x670>
    80007ebe:	ffff9097          	auipc	ra,0xffff9
    80007ec2:	d94080e7          	jalr	-620(ra) # 80000c52 <panic>
    80007ec6:	fe043503          	ld	a0,-32(s0)
    80007eca:	ffffd097          	auipc	ra,0xffffd
    80007ece:	146080e7          	jalr	326(ra) # 80005010 <ilock>
    80007ed2:	fe043783          	ld	a5,-32(s0)
    80007ed6:	fc445703          	lhu	a4,-60(s0)
    80007eda:	04e79323          	sh	a4,70(a5)
    80007ede:	fe043783          	ld	a5,-32(s0)
    80007ee2:	fc245703          	lhu	a4,-62(s0)
    80007ee6:	04e79423          	sh	a4,72(a5)
    80007eea:	fe043783          	ld	a5,-32(s0)
    80007eee:	4705                	li	a4,1
    80007ef0:	04e79523          	sh	a4,74(a5)
    80007ef4:	fe043503          	ld	a0,-32(s0)
    80007ef8:	ffffd097          	auipc	ra,0xffffd
    80007efc:	ec8080e7          	jalr	-312(ra) # 80004dc0 <iupdate>
    80007f00:	fc641783          	lh	a5,-58(s0)
    80007f04:	0007871b          	sext.w	a4,a5
    80007f08:	4785                	li	a5,1
    80007f0a:	08f71363          	bne	a4,a5,80007f90 <create+0x1c4>
    80007f0e:	fe843783          	ld	a5,-24(s0)
    80007f12:	04a79783          	lh	a5,74(a5)
    80007f16:	17c2                	slli	a5,a5,0x30
    80007f18:	93c1                	srli	a5,a5,0x30
    80007f1a:	2785                	addiw	a5,a5,1
    80007f1c:	17c2                	slli	a5,a5,0x30
    80007f1e:	93c1                	srli	a5,a5,0x30
    80007f20:	0107971b          	slliw	a4,a5,0x10
    80007f24:	4107571b          	sraiw	a4,a4,0x10
    80007f28:	fe843783          	ld	a5,-24(s0)
    80007f2c:	04e79523          	sh	a4,74(a5)
    80007f30:	fe843503          	ld	a0,-24(s0)
    80007f34:	ffffd097          	auipc	ra,0xffffd
    80007f38:	e8c080e7          	jalr	-372(ra) # 80004dc0 <iupdate>
    80007f3c:	fe043783          	ld	a5,-32(s0)
    80007f40:	43dc                	lw	a5,4(a5)
    80007f42:	863e                	mv	a2,a5
    80007f44:	00003597          	auipc	a1,0x3
    80007f48:	6f458593          	addi	a1,a1,1780 # 8000b638 <etext+0x638>
    80007f4c:	fe043503          	ld	a0,-32(s0)
    80007f50:	ffffe097          	auipc	ra,0xffffe
    80007f54:	aaa080e7          	jalr	-1366(ra) # 800059fa <dirlink>
    80007f58:	87aa                	mv	a5,a0
    80007f5a:	0207c363          	bltz	a5,80007f80 <create+0x1b4>
    80007f5e:	fe843783          	ld	a5,-24(s0)
    80007f62:	43dc                	lw	a5,4(a5)
    80007f64:	863e                	mv	a2,a5
    80007f66:	00003597          	auipc	a1,0x3
    80007f6a:	6da58593          	addi	a1,a1,1754 # 8000b640 <etext+0x640>
    80007f6e:	fe043503          	ld	a0,-32(s0)
    80007f72:	ffffe097          	auipc	ra,0xffffe
    80007f76:	a88080e7          	jalr	-1400(ra) # 800059fa <dirlink>
    80007f7a:	87aa                	mv	a5,a0
    80007f7c:	0007da63          	bgez	a5,80007f90 <create+0x1c4>
    80007f80:	00003517          	auipc	a0,0x3
    80007f84:	70050513          	addi	a0,a0,1792 # 8000b680 <etext+0x680>
    80007f88:	ffff9097          	auipc	ra,0xffff9
    80007f8c:	cca080e7          	jalr	-822(ra) # 80000c52 <panic>
    80007f90:	fe043783          	ld	a5,-32(s0)
    80007f94:	43d8                	lw	a4,4(a5)
    80007f96:	fd040793          	addi	a5,s0,-48
    80007f9a:	863a                	mv	a2,a4
    80007f9c:	85be                	mv	a1,a5
    80007f9e:	fe843503          	ld	a0,-24(s0)
    80007fa2:	ffffe097          	auipc	ra,0xffffe
    80007fa6:	a58080e7          	jalr	-1448(ra) # 800059fa <dirlink>
    80007faa:	87aa                	mv	a5,a0
    80007fac:	0007da63          	bgez	a5,80007fc0 <create+0x1f4>
    80007fb0:	00003517          	auipc	a0,0x3
    80007fb4:	6e050513          	addi	a0,a0,1760 # 8000b690 <etext+0x690>
    80007fb8:	ffff9097          	auipc	ra,0xffff9
    80007fbc:	c9a080e7          	jalr	-870(ra) # 80000c52 <panic>
    80007fc0:	fe843503          	ld	a0,-24(s0)
    80007fc4:	ffffd097          	auipc	ra,0xffffd
    80007fc8:	2aa080e7          	jalr	682(ra) # 8000526e <iunlockput>
    80007fcc:	fe043783          	ld	a5,-32(s0)
    80007fd0:	853e                	mv	a0,a5
    80007fd2:	70e2                	ld	ra,56(sp)
    80007fd4:	7442                	ld	s0,48(sp)
    80007fd6:	6121                	addi	sp,sp,64
    80007fd8:	8082                	ret

0000000080007fda <sys_open>:
    80007fda:	7131                	addi	sp,sp,-192
    80007fdc:	fd06                	sd	ra,184(sp)
    80007fde:	f922                	sd	s0,176(sp)
    80007fe0:	0180                	addi	s0,sp,192
    80007fe2:	f5040793          	addi	a5,s0,-176
    80007fe6:	08000613          	li	a2,128
    80007fea:	85be                	mv	a1,a5
    80007fec:	4501                	li	a0,0
    80007fee:	ffffc097          	auipc	ra,0xffffc
    80007ff2:	0bc080e7          	jalr	188(ra) # 800040aa <argstr>
    80007ff6:	87aa                	mv	a5,a0
    80007ff8:	fef42223          	sw	a5,-28(s0)
    80007ffc:	fe442783          	lw	a5,-28(s0)
    80008000:	2781                	sext.w	a5,a5
    80008002:	0007cd63          	bltz	a5,8000801c <sys_open+0x42>
    80008006:	f4c40793          	addi	a5,s0,-180
    8000800a:	85be                	mv	a1,a5
    8000800c:	4505                	li	a0,1
    8000800e:	ffffc097          	auipc	ra,0xffffc
    80008012:	030080e7          	jalr	48(ra) # 8000403e <argint>
    80008016:	87aa                	mv	a5,a0
    80008018:	0007d463          	bgez	a5,80008020 <sys_open+0x46>
    8000801c:	57fd                	li	a5,-1
    8000801e:	a429                	j	80008228 <sys_open+0x24e>
    80008020:	ffffe097          	auipc	ra,0xffffe
    80008024:	058080e7          	jalr	88(ra) # 80006078 <begin_op>
    80008028:	f4c42783          	lw	a5,-180(s0)
    8000802c:	2007f793          	andi	a5,a5,512
    80008030:	2781                	sext.w	a5,a5
    80008032:	c795                	beqz	a5,8000805e <sys_open+0x84>
    80008034:	f5040793          	addi	a5,s0,-176
    80008038:	4681                	li	a3,0
    8000803a:	4601                	li	a2,0
    8000803c:	4589                	li	a1,2
    8000803e:	853e                	mv	a0,a5
    80008040:	00000097          	auipc	ra,0x0
    80008044:	d8c080e7          	jalr	-628(ra) # 80007dcc <create>
    80008048:	fea43423          	sd	a0,-24(s0)
    8000804c:	fe843783          	ld	a5,-24(s0)
    80008050:	e7bd                	bnez	a5,800080be <sys_open+0xe4>
    80008052:	ffffe097          	auipc	ra,0xffffe
    80008056:	0e8080e7          	jalr	232(ra) # 8000613a <end_op>
    8000805a:	57fd                	li	a5,-1
    8000805c:	a2f1                	j	80008228 <sys_open+0x24e>
    8000805e:	f5040793          	addi	a5,s0,-176
    80008062:	853e                	mv	a0,a5
    80008064:	ffffe097          	auipc	ra,0xffffe
    80008068:	cb0080e7          	jalr	-848(ra) # 80005d14 <namei>
    8000806c:	fea43423          	sd	a0,-24(s0)
    80008070:	fe843783          	ld	a5,-24(s0)
    80008074:	e799                	bnez	a5,80008082 <sys_open+0xa8>
    80008076:	ffffe097          	auipc	ra,0xffffe
    8000807a:	0c4080e7          	jalr	196(ra) # 8000613a <end_op>
    8000807e:	57fd                	li	a5,-1
    80008080:	a265                	j	80008228 <sys_open+0x24e>
    80008082:	fe843503          	ld	a0,-24(s0)
    80008086:	ffffd097          	auipc	ra,0xffffd
    8000808a:	f8a080e7          	jalr	-118(ra) # 80005010 <ilock>
    8000808e:	fe843783          	ld	a5,-24(s0)
    80008092:	04479783          	lh	a5,68(a5)
    80008096:	0007871b          	sext.w	a4,a5
    8000809a:	4785                	li	a5,1
    8000809c:	02f71163          	bne	a4,a5,800080be <sys_open+0xe4>
    800080a0:	f4c42783          	lw	a5,-180(s0)
    800080a4:	cf89                	beqz	a5,800080be <sys_open+0xe4>
    800080a6:	fe843503          	ld	a0,-24(s0)
    800080aa:	ffffd097          	auipc	ra,0xffffd
    800080ae:	1c4080e7          	jalr	452(ra) # 8000526e <iunlockput>
    800080b2:	ffffe097          	auipc	ra,0xffffe
    800080b6:	088080e7          	jalr	136(ra) # 8000613a <end_op>
    800080ba:	57fd                	li	a5,-1
    800080bc:	a2b5                	j	80008228 <sys_open+0x24e>
    800080be:	fe843783          	ld	a5,-24(s0)
    800080c2:	04479783          	lh	a5,68(a5)
    800080c6:	0007871b          	sext.w	a4,a5
    800080ca:	478d                	li	a5,3
    800080cc:	02f71e63          	bne	a4,a5,80008108 <sys_open+0x12e>
    800080d0:	fe843783          	ld	a5,-24(s0)
    800080d4:	04679783          	lh	a5,70(a5)
    800080d8:	2781                	sext.w	a5,a5
    800080da:	0007cb63          	bltz	a5,800080f0 <sys_open+0x116>
    800080de:	fe843783          	ld	a5,-24(s0)
    800080e2:	04679783          	lh	a5,70(a5)
    800080e6:	0007871b          	sext.w	a4,a5
    800080ea:	47a5                	li	a5,9
    800080ec:	00e7de63          	bge	a5,a4,80008108 <sys_open+0x12e>
    800080f0:	fe843503          	ld	a0,-24(s0)
    800080f4:	ffffd097          	auipc	ra,0xffffd
    800080f8:	17a080e7          	jalr	378(ra) # 8000526e <iunlockput>
    800080fc:	ffffe097          	auipc	ra,0xffffe
    80008100:	03e080e7          	jalr	62(ra) # 8000613a <end_op>
    80008104:	57fd                	li	a5,-1
    80008106:	a20d                	j	80008228 <sys_open+0x24e>
    80008108:	ffffe097          	auipc	ra,0xffffe
    8000810c:	520080e7          	jalr	1312(ra) # 80006628 <filealloc>
    80008110:	fca43c23          	sd	a0,-40(s0)
    80008114:	fd843783          	ld	a5,-40(s0)
    80008118:	cf99                	beqz	a5,80008136 <sys_open+0x15c>
    8000811a:	fd843503          	ld	a0,-40(s0)
    8000811e:	fffff097          	auipc	ra,0xfffff
    80008122:	5e8080e7          	jalr	1512(ra) # 80007706 <fdalloc>
    80008126:	87aa                	mv	a5,a0
    80008128:	fcf42a23          	sw	a5,-44(s0)
    8000812c:	fd442783          	lw	a5,-44(s0)
    80008130:	2781                	sext.w	a5,a5
    80008132:	0207d763          	bgez	a5,80008160 <sys_open+0x186>
    80008136:	fd843783          	ld	a5,-40(s0)
    8000813a:	c799                	beqz	a5,80008148 <sys_open+0x16e>
    8000813c:	fd843503          	ld	a0,-40(s0)
    80008140:	ffffe097          	auipc	ra,0xffffe
    80008144:	5d2080e7          	jalr	1490(ra) # 80006712 <fileclose>
    80008148:	fe843503          	ld	a0,-24(s0)
    8000814c:	ffffd097          	auipc	ra,0xffffd
    80008150:	122080e7          	jalr	290(ra) # 8000526e <iunlockput>
    80008154:	ffffe097          	auipc	ra,0xffffe
    80008158:	fe6080e7          	jalr	-26(ra) # 8000613a <end_op>
    8000815c:	57fd                	li	a5,-1
    8000815e:	a0e9                	j	80008228 <sys_open+0x24e>
    80008160:	fe843783          	ld	a5,-24(s0)
    80008164:	04479783          	lh	a5,68(a5)
    80008168:	0007871b          	sext.w	a4,a5
    8000816c:	478d                	li	a5,3
    8000816e:	00f71f63          	bne	a4,a5,8000818c <sys_open+0x1b2>
    80008172:	fd843783          	ld	a5,-40(s0)
    80008176:	470d                	li	a4,3
    80008178:	c398                	sw	a4,0(a5)
    8000817a:	fe843783          	ld	a5,-24(s0)
    8000817e:	04679703          	lh	a4,70(a5)
    80008182:	fd843783          	ld	a5,-40(s0)
    80008186:	02e79223          	sh	a4,36(a5)
    8000818a:	a809                	j	8000819c <sys_open+0x1c2>
    8000818c:	fd843783          	ld	a5,-40(s0)
    80008190:	4709                	li	a4,2
    80008192:	c398                	sw	a4,0(a5)
    80008194:	fd843783          	ld	a5,-40(s0)
    80008198:	0207a023          	sw	zero,32(a5)
    8000819c:	fd843783          	ld	a5,-40(s0)
    800081a0:	fe843703          	ld	a4,-24(s0)
    800081a4:	ef98                	sd	a4,24(a5)
    800081a6:	f4c42783          	lw	a5,-180(s0)
    800081aa:	8b85                	andi	a5,a5,1
    800081ac:	2781                	sext.w	a5,a5
    800081ae:	0017b793          	seqz	a5,a5
    800081b2:	0ff7f793          	andi	a5,a5,255
    800081b6:	873e                	mv	a4,a5
    800081b8:	fd843783          	ld	a5,-40(s0)
    800081bc:	00e78423          	sb	a4,8(a5)
    800081c0:	f4c42783          	lw	a5,-180(s0)
    800081c4:	8b85                	andi	a5,a5,1
    800081c6:	2781                	sext.w	a5,a5
    800081c8:	e791                	bnez	a5,800081d4 <sys_open+0x1fa>
    800081ca:	f4c42783          	lw	a5,-180(s0)
    800081ce:	8b89                	andi	a5,a5,2
    800081d0:	2781                	sext.w	a5,a5
    800081d2:	c399                	beqz	a5,800081d8 <sys_open+0x1fe>
    800081d4:	4785                	li	a5,1
    800081d6:	a011                	j	800081da <sys_open+0x200>
    800081d8:	4781                	li	a5,0
    800081da:	0ff7f713          	andi	a4,a5,255
    800081de:	fd843783          	ld	a5,-40(s0)
    800081e2:	00e784a3          	sb	a4,9(a5)
    800081e6:	f4c42783          	lw	a5,-180(s0)
    800081ea:	4007f793          	andi	a5,a5,1024
    800081ee:	2781                	sext.w	a5,a5
    800081f0:	c385                	beqz	a5,80008210 <sys_open+0x236>
    800081f2:	fe843783          	ld	a5,-24(s0)
    800081f6:	04479783          	lh	a5,68(a5)
    800081fa:	0007871b          	sext.w	a4,a5
    800081fe:	4789                	li	a5,2
    80008200:	00f71863          	bne	a4,a5,80008210 <sys_open+0x236>
    80008204:	fe843503          	ld	a0,-24(s0)
    80008208:	ffffd097          	auipc	ra,0xffffd
    8000820c:	1f0080e7          	jalr	496(ra) # 800053f8 <itrunc>
    80008210:	fe843503          	ld	a0,-24(s0)
    80008214:	ffffd097          	auipc	ra,0xffffd
    80008218:	f30080e7          	jalr	-208(ra) # 80005144 <iunlock>
    8000821c:	ffffe097          	auipc	ra,0xffffe
    80008220:	f1e080e7          	jalr	-226(ra) # 8000613a <end_op>
    80008224:	fd442783          	lw	a5,-44(s0)
    80008228:	853e                	mv	a0,a5
    8000822a:	70ea                	ld	ra,184(sp)
    8000822c:	744a                	ld	s0,176(sp)
    8000822e:	6129                	addi	sp,sp,192
    80008230:	8082                	ret

0000000080008232 <sys_mkdir>:
    80008232:	7135                	addi	sp,sp,-160
    80008234:	ed06                	sd	ra,152(sp)
    80008236:	e922                	sd	s0,144(sp)
    80008238:	1100                	addi	s0,sp,160
    8000823a:	ffffe097          	auipc	ra,0xffffe
    8000823e:	e3e080e7          	jalr	-450(ra) # 80006078 <begin_op>
    80008242:	f6840793          	addi	a5,s0,-152
    80008246:	08000613          	li	a2,128
    8000824a:	85be                	mv	a1,a5
    8000824c:	4501                	li	a0,0
    8000824e:	ffffc097          	auipc	ra,0xffffc
    80008252:	e5c080e7          	jalr	-420(ra) # 800040aa <argstr>
    80008256:	87aa                	mv	a5,a0
    80008258:	0207c163          	bltz	a5,8000827a <sys_mkdir+0x48>
    8000825c:	f6840793          	addi	a5,s0,-152
    80008260:	4681                	li	a3,0
    80008262:	4601                	li	a2,0
    80008264:	4585                	li	a1,1
    80008266:	853e                	mv	a0,a5
    80008268:	00000097          	auipc	ra,0x0
    8000826c:	b64080e7          	jalr	-1180(ra) # 80007dcc <create>
    80008270:	fea43423          	sd	a0,-24(s0)
    80008274:	fe843783          	ld	a5,-24(s0)
    80008278:	e799                	bnez	a5,80008286 <sys_mkdir+0x54>
    8000827a:	ffffe097          	auipc	ra,0xffffe
    8000827e:	ec0080e7          	jalr	-320(ra) # 8000613a <end_op>
    80008282:	57fd                	li	a5,-1
    80008284:	a821                	j	8000829c <sys_mkdir+0x6a>
    80008286:	fe843503          	ld	a0,-24(s0)
    8000828a:	ffffd097          	auipc	ra,0xffffd
    8000828e:	fe4080e7          	jalr	-28(ra) # 8000526e <iunlockput>
    80008292:	ffffe097          	auipc	ra,0xffffe
    80008296:	ea8080e7          	jalr	-344(ra) # 8000613a <end_op>
    8000829a:	4781                	li	a5,0
    8000829c:	853e                	mv	a0,a5
    8000829e:	60ea                	ld	ra,152(sp)
    800082a0:	644a                	ld	s0,144(sp)
    800082a2:	610d                	addi	sp,sp,160
    800082a4:	8082                	ret

00000000800082a6 <sys_mknod>:
    800082a6:	7135                	addi	sp,sp,-160
    800082a8:	ed06                	sd	ra,152(sp)
    800082aa:	e922                	sd	s0,144(sp)
    800082ac:	1100                	addi	s0,sp,160
    800082ae:	ffffe097          	auipc	ra,0xffffe
    800082b2:	dca080e7          	jalr	-566(ra) # 80006078 <begin_op>
    800082b6:	f6840793          	addi	a5,s0,-152
    800082ba:	08000613          	li	a2,128
    800082be:	85be                	mv	a1,a5
    800082c0:	4501                	li	a0,0
    800082c2:	ffffc097          	auipc	ra,0xffffc
    800082c6:	de8080e7          	jalr	-536(ra) # 800040aa <argstr>
    800082ca:	87aa                	mv	a5,a0
    800082cc:	0607c263          	bltz	a5,80008330 <sys_mknod+0x8a>
    800082d0:	f6440793          	addi	a5,s0,-156
    800082d4:	85be                	mv	a1,a5
    800082d6:	4505                	li	a0,1
    800082d8:	ffffc097          	auipc	ra,0xffffc
    800082dc:	d66080e7          	jalr	-666(ra) # 8000403e <argint>
    800082e0:	87aa                	mv	a5,a0
    800082e2:	0407c763          	bltz	a5,80008330 <sys_mknod+0x8a>
    800082e6:	f6040793          	addi	a5,s0,-160
    800082ea:	85be                	mv	a1,a5
    800082ec:	4509                	li	a0,2
    800082ee:	ffffc097          	auipc	ra,0xffffc
    800082f2:	d50080e7          	jalr	-688(ra) # 8000403e <argint>
    800082f6:	87aa                	mv	a5,a0
    800082f8:	0207cc63          	bltz	a5,80008330 <sys_mknod+0x8a>
    800082fc:	f6442783          	lw	a5,-156(s0)
    80008300:	0107971b          	slliw	a4,a5,0x10
    80008304:	4107571b          	sraiw	a4,a4,0x10
    80008308:	f6042783          	lw	a5,-160(s0)
    8000830c:	0107969b          	slliw	a3,a5,0x10
    80008310:	4106d69b          	sraiw	a3,a3,0x10
    80008314:	f6840793          	addi	a5,s0,-152
    80008318:	863a                	mv	a2,a4
    8000831a:	458d                	li	a1,3
    8000831c:	853e                	mv	a0,a5
    8000831e:	00000097          	auipc	ra,0x0
    80008322:	aae080e7          	jalr	-1362(ra) # 80007dcc <create>
    80008326:	fea43423          	sd	a0,-24(s0)
    8000832a:	fe843783          	ld	a5,-24(s0)
    8000832e:	e799                	bnez	a5,8000833c <sys_mknod+0x96>
    80008330:	ffffe097          	auipc	ra,0xffffe
    80008334:	e0a080e7          	jalr	-502(ra) # 8000613a <end_op>
    80008338:	57fd                	li	a5,-1
    8000833a:	a821                	j	80008352 <sys_mknod+0xac>
    8000833c:	fe843503          	ld	a0,-24(s0)
    80008340:	ffffd097          	auipc	ra,0xffffd
    80008344:	f2e080e7          	jalr	-210(ra) # 8000526e <iunlockput>
    80008348:	ffffe097          	auipc	ra,0xffffe
    8000834c:	df2080e7          	jalr	-526(ra) # 8000613a <end_op>
    80008350:	4781                	li	a5,0
    80008352:	853e                	mv	a0,a5
    80008354:	60ea                	ld	ra,152(sp)
    80008356:	644a                	ld	s0,144(sp)
    80008358:	610d                	addi	sp,sp,160
    8000835a:	8082                	ret

000000008000835c <sys_chdir>:
    8000835c:	7135                	addi	sp,sp,-160
    8000835e:	ed06                	sd	ra,152(sp)
    80008360:	e922                	sd	s0,144(sp)
    80008362:	1100                	addi	s0,sp,160
    80008364:	ffffa097          	auipc	ra,0xffffa
    80008368:	486080e7          	jalr	1158(ra) # 800027ea <myproc>
    8000836c:	fea43423          	sd	a0,-24(s0)
    80008370:	ffffe097          	auipc	ra,0xffffe
    80008374:	d08080e7          	jalr	-760(ra) # 80006078 <begin_op>
    80008378:	f6040793          	addi	a5,s0,-160
    8000837c:	08000613          	li	a2,128
    80008380:	85be                	mv	a1,a5
    80008382:	4501                	li	a0,0
    80008384:	ffffc097          	auipc	ra,0xffffc
    80008388:	d26080e7          	jalr	-730(ra) # 800040aa <argstr>
    8000838c:	87aa                	mv	a5,a0
    8000838e:	0007ce63          	bltz	a5,800083aa <sys_chdir+0x4e>
    80008392:	f6040793          	addi	a5,s0,-160
    80008396:	853e                	mv	a0,a5
    80008398:	ffffe097          	auipc	ra,0xffffe
    8000839c:	97c080e7          	jalr	-1668(ra) # 80005d14 <namei>
    800083a0:	fea43023          	sd	a0,-32(s0)
    800083a4:	fe043783          	ld	a5,-32(s0)
    800083a8:	e799                	bnez	a5,800083b6 <sys_chdir+0x5a>
    800083aa:	ffffe097          	auipc	ra,0xffffe
    800083ae:	d90080e7          	jalr	-624(ra) # 8000613a <end_op>
    800083b2:	57fd                	li	a5,-1
    800083b4:	a0b5                	j	80008420 <sys_chdir+0xc4>
    800083b6:	fe043503          	ld	a0,-32(s0)
    800083ba:	ffffd097          	auipc	ra,0xffffd
    800083be:	c56080e7          	jalr	-938(ra) # 80005010 <ilock>
    800083c2:	fe043783          	ld	a5,-32(s0)
    800083c6:	04479783          	lh	a5,68(a5)
    800083ca:	0007871b          	sext.w	a4,a5
    800083ce:	4785                	li	a5,1
    800083d0:	00f70e63          	beq	a4,a5,800083ec <sys_chdir+0x90>
    800083d4:	fe043503          	ld	a0,-32(s0)
    800083d8:	ffffd097          	auipc	ra,0xffffd
    800083dc:	e96080e7          	jalr	-362(ra) # 8000526e <iunlockput>
    800083e0:	ffffe097          	auipc	ra,0xffffe
    800083e4:	d5a080e7          	jalr	-678(ra) # 8000613a <end_op>
    800083e8:	57fd                	li	a5,-1
    800083ea:	a81d                	j	80008420 <sys_chdir+0xc4>
    800083ec:	fe043503          	ld	a0,-32(s0)
    800083f0:	ffffd097          	auipc	ra,0xffffd
    800083f4:	d54080e7          	jalr	-684(ra) # 80005144 <iunlock>
    800083f8:	fe843783          	ld	a5,-24(s0)
    800083fc:	1507b783          	ld	a5,336(a5)
    80008400:	853e                	mv	a0,a5
    80008402:	ffffd097          	auipc	ra,0xffffd
    80008406:	d9c080e7          	jalr	-612(ra) # 8000519e <iput>
    8000840a:	ffffe097          	auipc	ra,0xffffe
    8000840e:	d30080e7          	jalr	-720(ra) # 8000613a <end_op>
    80008412:	fe843783          	ld	a5,-24(s0)
    80008416:	fe043703          	ld	a4,-32(s0)
    8000841a:	14e7b823          	sd	a4,336(a5)
    8000841e:	4781                	li	a5,0
    80008420:	853e                	mv	a0,a5
    80008422:	60ea                	ld	ra,152(sp)
    80008424:	644a                	ld	s0,144(sp)
    80008426:	610d                	addi	sp,sp,160
    80008428:	8082                	ret

000000008000842a <sys_exec>:
    8000842a:	7161                	addi	sp,sp,-432
    8000842c:	f706                	sd	ra,424(sp)
    8000842e:	f322                	sd	s0,416(sp)
    80008430:	1b00                	addi	s0,sp,432
    80008432:	f6840793          	addi	a5,s0,-152
    80008436:	08000613          	li	a2,128
    8000843a:	85be                	mv	a1,a5
    8000843c:	4501                	li	a0,0
    8000843e:	ffffc097          	auipc	ra,0xffffc
    80008442:	c6c080e7          	jalr	-916(ra) # 800040aa <argstr>
    80008446:	87aa                	mv	a5,a0
    80008448:	0007cd63          	bltz	a5,80008462 <sys_exec+0x38>
    8000844c:	e6040793          	addi	a5,s0,-416
    80008450:	85be                	mv	a1,a5
    80008452:	4505                	li	a0,1
    80008454:	ffffc097          	auipc	ra,0xffffc
    80008458:	c22080e7          	jalr	-990(ra) # 80004076 <argaddr>
    8000845c:	87aa                	mv	a5,a0
    8000845e:	0007d463          	bgez	a5,80008466 <sys_exec+0x3c>
    80008462:	57fd                	li	a5,-1
    80008464:	a249                	j	800085e6 <sys_exec+0x1bc>
    80008466:	e6840793          	addi	a5,s0,-408
    8000846a:	10000613          	li	a2,256
    8000846e:	4581                	li	a1,0
    80008470:	853e                	mv	a0,a5
    80008472:	ffff9097          	auipc	ra,0xffff9
    80008476:	fe2080e7          	jalr	-30(ra) # 80001454 <memset>
    8000847a:	fe042623          	sw	zero,-20(s0)
    8000847e:	fec42783          	lw	a5,-20(s0)
    80008482:	873e                	mv	a4,a5
    80008484:	47fd                	li	a5,31
    80008486:	10e7e463          	bltu	a5,a4,8000858e <sys_exec+0x164>
    8000848a:	fec42783          	lw	a5,-20(s0)
    8000848e:	00379713          	slli	a4,a5,0x3
    80008492:	e6043783          	ld	a5,-416(s0)
    80008496:	97ba                	add	a5,a5,a4
    80008498:	e5840713          	addi	a4,s0,-424
    8000849c:	85ba                	mv	a1,a4
    8000849e:	853e                	mv	a0,a5
    800084a0:	ffffc097          	auipc	ra,0xffffc
    800084a4:	a20080e7          	jalr	-1504(ra) # 80003ec0 <fetchaddr>
    800084a8:	87aa                	mv	a5,a0
    800084aa:	0e07c463          	bltz	a5,80008592 <sys_exec+0x168>
    800084ae:	e5843783          	ld	a5,-424(s0)
    800084b2:	eb95                	bnez	a5,800084e6 <sys_exec+0xbc>
    800084b4:	fec42783          	lw	a5,-20(s0)
    800084b8:	078e                	slli	a5,a5,0x3
    800084ba:	ff040713          	addi	a4,s0,-16
    800084be:	97ba                	add	a5,a5,a4
    800084c0:	e607bc23          	sd	zero,-392(a5)
    800084c4:	0001                	nop
    800084c6:	e6840713          	addi	a4,s0,-408
    800084ca:	f6840793          	addi	a5,s0,-152
    800084ce:	85ba                	mv	a1,a4
    800084d0:	853e                	mv	a0,a5
    800084d2:	fffff097          	auipc	ra,0xfffff
    800084d6:	bfe080e7          	jalr	-1026(ra) # 800070d0 <exec>
    800084da:	87aa                	mv	a5,a0
    800084dc:	fef42423          	sw	a5,-24(s0)
    800084e0:	fe042623          	sw	zero,-20(s0)
    800084e4:	a059                	j	8000856a <sys_exec+0x140>
    800084e6:	ffff9097          	auipc	ra,0xffff9
    800084ea:	c46080e7          	jalr	-954(ra) # 8000112c <kalloc>
    800084ee:	872a                	mv	a4,a0
    800084f0:	fec42783          	lw	a5,-20(s0)
    800084f4:	078e                	slli	a5,a5,0x3
    800084f6:	ff040693          	addi	a3,s0,-16
    800084fa:	97b6                	add	a5,a5,a3
    800084fc:	e6e7bc23          	sd	a4,-392(a5)
    80008500:	fec42783          	lw	a5,-20(s0)
    80008504:	078e                	slli	a5,a5,0x3
    80008506:	ff040713          	addi	a4,s0,-16
    8000850a:	97ba                	add	a5,a5,a4
    8000850c:	e787b783          	ld	a5,-392(a5)
    80008510:	c3d9                	beqz	a5,80008596 <sys_exec+0x16c>
    80008512:	e5843703          	ld	a4,-424(s0)
    80008516:	fec42783          	lw	a5,-20(s0)
    8000851a:	078e                	slli	a5,a5,0x3
    8000851c:	ff040693          	addi	a3,s0,-16
    80008520:	97b6                	add	a5,a5,a3
    80008522:	e787b783          	ld	a5,-392(a5)
    80008526:	6605                	lui	a2,0x1
    80008528:	85be                	mv	a1,a5
    8000852a:	853a                	mv	a0,a4
    8000852c:	ffffc097          	auipc	ra,0xffffc
    80008530:	a02080e7          	jalr	-1534(ra) # 80003f2e <fetchstr>
    80008534:	87aa                	mv	a5,a0
    80008536:	0607c263          	bltz	a5,8000859a <sys_exec+0x170>
    8000853a:	fec42783          	lw	a5,-20(s0)
    8000853e:	2785                	addiw	a5,a5,1
    80008540:	fef42623          	sw	a5,-20(s0)
    80008544:	bf2d                	j	8000847e <sys_exec+0x54>
    80008546:	fec42783          	lw	a5,-20(s0)
    8000854a:	078e                	slli	a5,a5,0x3
    8000854c:	ff040713          	addi	a4,s0,-16
    80008550:	97ba                	add	a5,a5,a4
    80008552:	e787b783          	ld	a5,-392(a5)
    80008556:	853e                	mv	a0,a5
    80008558:	ffff9097          	auipc	ra,0xffff9
    8000855c:	b30080e7          	jalr	-1232(ra) # 80001088 <kfree>
    80008560:	fec42783          	lw	a5,-20(s0)
    80008564:	2785                	addiw	a5,a5,1
    80008566:	fef42623          	sw	a5,-20(s0)
    8000856a:	fec42783          	lw	a5,-20(s0)
    8000856e:	873e                	mv	a4,a5
    80008570:	47fd                	li	a5,31
    80008572:	00e7eb63          	bltu	a5,a4,80008588 <sys_exec+0x15e>
    80008576:	fec42783          	lw	a5,-20(s0)
    8000857a:	078e                	slli	a5,a5,0x3
    8000857c:	ff040713          	addi	a4,s0,-16
    80008580:	97ba                	add	a5,a5,a4
    80008582:	e787b783          	ld	a5,-392(a5)
    80008586:	f3e1                	bnez	a5,80008546 <sys_exec+0x11c>
    80008588:	fe842783          	lw	a5,-24(s0)
    8000858c:	a8a9                	j	800085e6 <sys_exec+0x1bc>
    8000858e:	0001                	nop
    80008590:	a031                	j	8000859c <sys_exec+0x172>
    80008592:	0001                	nop
    80008594:	a021                	j	8000859c <sys_exec+0x172>
    80008596:	0001                	nop
    80008598:	a011                	j	8000859c <sys_exec+0x172>
    8000859a:	0001                	nop
    8000859c:	fe042623          	sw	zero,-20(s0)
    800085a0:	a01d                	j	800085c6 <sys_exec+0x19c>
    800085a2:	fec42783          	lw	a5,-20(s0)
    800085a6:	078e                	slli	a5,a5,0x3
    800085a8:	ff040713          	addi	a4,s0,-16
    800085ac:	97ba                	add	a5,a5,a4
    800085ae:	e787b783          	ld	a5,-392(a5)
    800085b2:	853e                	mv	a0,a5
    800085b4:	ffff9097          	auipc	ra,0xffff9
    800085b8:	ad4080e7          	jalr	-1324(ra) # 80001088 <kfree>
    800085bc:	fec42783          	lw	a5,-20(s0)
    800085c0:	2785                	addiw	a5,a5,1
    800085c2:	fef42623          	sw	a5,-20(s0)
    800085c6:	fec42783          	lw	a5,-20(s0)
    800085ca:	873e                	mv	a4,a5
    800085cc:	47fd                	li	a5,31
    800085ce:	00e7eb63          	bltu	a5,a4,800085e4 <sys_exec+0x1ba>
    800085d2:	fec42783          	lw	a5,-20(s0)
    800085d6:	078e                	slli	a5,a5,0x3
    800085d8:	ff040713          	addi	a4,s0,-16
    800085dc:	97ba                	add	a5,a5,a4
    800085de:	e787b783          	ld	a5,-392(a5)
    800085e2:	f3e1                	bnez	a5,800085a2 <sys_exec+0x178>
    800085e4:	57fd                	li	a5,-1
    800085e6:	853e                	mv	a0,a5
    800085e8:	70ba                	ld	ra,424(sp)
    800085ea:	741a                	ld	s0,416(sp)
    800085ec:	615d                	addi	sp,sp,432
    800085ee:	8082                	ret

00000000800085f0 <sys_pipe>:
    800085f0:	7139                	addi	sp,sp,-64
    800085f2:	fc06                	sd	ra,56(sp)
    800085f4:	f822                	sd	s0,48(sp)
    800085f6:	0080                	addi	s0,sp,64
    800085f8:	ffffa097          	auipc	ra,0xffffa
    800085fc:	1f2080e7          	jalr	498(ra) # 800027ea <myproc>
    80008600:	fea43423          	sd	a0,-24(s0)
    80008604:	fe040793          	addi	a5,s0,-32
    80008608:	85be                	mv	a1,a5
    8000860a:	4501                	li	a0,0
    8000860c:	ffffc097          	auipc	ra,0xffffc
    80008610:	a6a080e7          	jalr	-1430(ra) # 80004076 <argaddr>
    80008614:	87aa                	mv	a5,a0
    80008616:	0007d463          	bgez	a5,8000861e <sys_pipe+0x2e>
    8000861a:	57fd                	li	a5,-1
    8000861c:	a215                	j	80008740 <sys_pipe+0x150>
    8000861e:	fd040713          	addi	a4,s0,-48
    80008622:	fd840793          	addi	a5,s0,-40
    80008626:	85ba                	mv	a1,a4
    80008628:	853e                	mv	a0,a5
    8000862a:	ffffe097          	auipc	ra,0xffffe
    8000862e:	618080e7          	jalr	1560(ra) # 80006c42 <pipealloc>
    80008632:	87aa                	mv	a5,a0
    80008634:	0007d463          	bgez	a5,8000863c <sys_pipe+0x4c>
    80008638:	57fd                	li	a5,-1
    8000863a:	a219                	j	80008740 <sys_pipe+0x150>
    8000863c:	57fd                	li	a5,-1
    8000863e:	fcf42623          	sw	a5,-52(s0)
    80008642:	fd843783          	ld	a5,-40(s0)
    80008646:	853e                	mv	a0,a5
    80008648:	fffff097          	auipc	ra,0xfffff
    8000864c:	0be080e7          	jalr	190(ra) # 80007706 <fdalloc>
    80008650:	87aa                	mv	a5,a0
    80008652:	fcf42623          	sw	a5,-52(s0)
    80008656:	fcc42783          	lw	a5,-52(s0)
    8000865a:	0207c063          	bltz	a5,8000867a <sys_pipe+0x8a>
    8000865e:	fd043783          	ld	a5,-48(s0)
    80008662:	853e                	mv	a0,a5
    80008664:	fffff097          	auipc	ra,0xfffff
    80008668:	0a2080e7          	jalr	162(ra) # 80007706 <fdalloc>
    8000866c:	87aa                	mv	a5,a0
    8000866e:	fcf42423          	sw	a5,-56(s0)
    80008672:	fc842783          	lw	a5,-56(s0)
    80008676:	0207df63          	bgez	a5,800086b4 <sys_pipe+0xc4>
    8000867a:	fcc42783          	lw	a5,-52(s0)
    8000867e:	0007cb63          	bltz	a5,80008694 <sys_pipe+0xa4>
    80008682:	fcc42783          	lw	a5,-52(s0)
    80008686:	fe843703          	ld	a4,-24(s0)
    8000868a:	07e9                	addi	a5,a5,26
    8000868c:	078e                	slli	a5,a5,0x3
    8000868e:	97ba                	add	a5,a5,a4
    80008690:	0007b023          	sd	zero,0(a5)
    80008694:	fd843783          	ld	a5,-40(s0)
    80008698:	853e                	mv	a0,a5
    8000869a:	ffffe097          	auipc	ra,0xffffe
    8000869e:	078080e7          	jalr	120(ra) # 80006712 <fileclose>
    800086a2:	fd043783          	ld	a5,-48(s0)
    800086a6:	853e                	mv	a0,a5
    800086a8:	ffffe097          	auipc	ra,0xffffe
    800086ac:	06a080e7          	jalr	106(ra) # 80006712 <fileclose>
    800086b0:	57fd                	li	a5,-1
    800086b2:	a079                	j	80008740 <sys_pipe+0x150>
    800086b4:	fe843783          	ld	a5,-24(s0)
    800086b8:	6bbc                	ld	a5,80(a5)
    800086ba:	fe043703          	ld	a4,-32(s0)
    800086be:	fcc40613          	addi	a2,s0,-52
    800086c2:	4691                	li	a3,4
    800086c4:	85ba                	mv	a1,a4
    800086c6:	853e                	mv	a0,a5
    800086c8:	ffffa097          	auipc	ra,0xffffa
    800086cc:	c0c080e7          	jalr	-1012(ra) # 800022d4 <copyout>
    800086d0:	87aa                	mv	a5,a0
    800086d2:	0207c463          	bltz	a5,800086fa <sys_pipe+0x10a>
    800086d6:	fe843783          	ld	a5,-24(s0)
    800086da:	6bb8                	ld	a4,80(a5)
    800086dc:	fe043783          	ld	a5,-32(s0)
    800086e0:	0791                	addi	a5,a5,4
    800086e2:	fc840613          	addi	a2,s0,-56
    800086e6:	4691                	li	a3,4
    800086e8:	85be                	mv	a1,a5
    800086ea:	853a                	mv	a0,a4
    800086ec:	ffffa097          	auipc	ra,0xffffa
    800086f0:	be8080e7          	jalr	-1048(ra) # 800022d4 <copyout>
    800086f4:	87aa                	mv	a5,a0
    800086f6:	0407d463          	bgez	a5,8000873e <sys_pipe+0x14e>
    800086fa:	fcc42783          	lw	a5,-52(s0)
    800086fe:	fe843703          	ld	a4,-24(s0)
    80008702:	07e9                	addi	a5,a5,26
    80008704:	078e                	slli	a5,a5,0x3
    80008706:	97ba                	add	a5,a5,a4
    80008708:	0007b023          	sd	zero,0(a5)
    8000870c:	fc842783          	lw	a5,-56(s0)
    80008710:	fe843703          	ld	a4,-24(s0)
    80008714:	07e9                	addi	a5,a5,26
    80008716:	078e                	slli	a5,a5,0x3
    80008718:	97ba                	add	a5,a5,a4
    8000871a:	0007b023          	sd	zero,0(a5)
    8000871e:	fd843783          	ld	a5,-40(s0)
    80008722:	853e                	mv	a0,a5
    80008724:	ffffe097          	auipc	ra,0xffffe
    80008728:	fee080e7          	jalr	-18(ra) # 80006712 <fileclose>
    8000872c:	fd043783          	ld	a5,-48(s0)
    80008730:	853e                	mv	a0,a5
    80008732:	ffffe097          	auipc	ra,0xffffe
    80008736:	fe0080e7          	jalr	-32(ra) # 80006712 <fileclose>
    8000873a:	57fd                	li	a5,-1
    8000873c:	a011                	j	80008740 <sys_pipe+0x150>
    8000873e:	4781                	li	a5,0
    80008740:	853e                	mv	a0,a5
    80008742:	70e2                	ld	ra,56(sp)
    80008744:	7442                	ld	s0,48(sp)
    80008746:	6121                	addi	sp,sp,64
    80008748:	8082                	ret
    8000874a:	0000                	unimp
    8000874c:	0000                	unimp
	...

0000000080008750 <kernelvec>:
    80008750:	7111                	addi	sp,sp,-256
    80008752:	e006                	sd	ra,0(sp)
    80008754:	e40a                	sd	sp,8(sp)
    80008756:	e80e                	sd	gp,16(sp)
    80008758:	ec12                	sd	tp,24(sp)
    8000875a:	f016                	sd	t0,32(sp)
    8000875c:	f41a                	sd	t1,40(sp)
    8000875e:	f81e                	sd	t2,48(sp)
    80008760:	fc22                	sd	s0,56(sp)
    80008762:	e0a6                	sd	s1,64(sp)
    80008764:	e4aa                	sd	a0,72(sp)
    80008766:	e8ae                	sd	a1,80(sp)
    80008768:	ecb2                	sd	a2,88(sp)
    8000876a:	f0b6                	sd	a3,96(sp)
    8000876c:	f4ba                	sd	a4,104(sp)
    8000876e:	f8be                	sd	a5,112(sp)
    80008770:	fcc2                	sd	a6,120(sp)
    80008772:	e146                	sd	a7,128(sp)
    80008774:	e54a                	sd	s2,136(sp)
    80008776:	e94e                	sd	s3,144(sp)
    80008778:	ed52                	sd	s4,152(sp)
    8000877a:	f156                	sd	s5,160(sp)
    8000877c:	f55a                	sd	s6,168(sp)
    8000877e:	f95e                	sd	s7,176(sp)
    80008780:	fd62                	sd	s8,184(sp)
    80008782:	e1e6                	sd	s9,192(sp)
    80008784:	e5ea                	sd	s10,200(sp)
    80008786:	e9ee                	sd	s11,208(sp)
    80008788:	edf2                	sd	t3,216(sp)
    8000878a:	f1f6                	sd	t4,224(sp)
    8000878c:	f5fa                	sd	t5,232(sp)
    8000878e:	f9fe                	sd	t6,240(sp)
    80008790:	cc8fb0ef          	jal	ra,80003c58 <kerneltrap>
    80008794:	6082                	ld	ra,0(sp)
    80008796:	6122                	ld	sp,8(sp)
    80008798:	61c2                	ld	gp,16(sp)
    8000879a:	7282                	ld	t0,32(sp)
    8000879c:	7322                	ld	t1,40(sp)
    8000879e:	73c2                	ld	t2,48(sp)
    800087a0:	7462                	ld	s0,56(sp)
    800087a2:	6486                	ld	s1,64(sp)
    800087a4:	6526                	ld	a0,72(sp)
    800087a6:	65c6                	ld	a1,80(sp)
    800087a8:	6666                	ld	a2,88(sp)
    800087aa:	7686                	ld	a3,96(sp)
    800087ac:	7726                	ld	a4,104(sp)
    800087ae:	77c6                	ld	a5,112(sp)
    800087b0:	7866                	ld	a6,120(sp)
    800087b2:	688a                	ld	a7,128(sp)
    800087b4:	692a                	ld	s2,136(sp)
    800087b6:	69ca                	ld	s3,144(sp)
    800087b8:	6a6a                	ld	s4,152(sp)
    800087ba:	7a8a                	ld	s5,160(sp)
    800087bc:	7b2a                	ld	s6,168(sp)
    800087be:	7bca                	ld	s7,176(sp)
    800087c0:	7c6a                	ld	s8,184(sp)
    800087c2:	6c8e                	ld	s9,192(sp)
    800087c4:	6d2e                	ld	s10,200(sp)
    800087c6:	6dce                	ld	s11,208(sp)
    800087c8:	6e6e                	ld	t3,216(sp)
    800087ca:	7e8e                	ld	t4,224(sp)
    800087cc:	7f2e                	ld	t5,232(sp)
    800087ce:	7fce                	ld	t6,240(sp)
    800087d0:	6111                	addi	sp,sp,256
    800087d2:	10200073          	sret
    800087d6:	00000013          	nop
    800087da:	00000013          	nop
    800087de:	0001                	nop

00000000800087e0 <timervec>:
    800087e0:	34051573          	csrrw	a0,mscratch,a0
    800087e4:	e10c                	sd	a1,0(a0)
    800087e6:	e510                	sd	a2,8(a0)
    800087e8:	e914                	sd	a3,16(a0)
    800087ea:	6d0c                	ld	a1,24(a0)
    800087ec:	7110                	ld	a2,32(a0)
    800087ee:	6194                	ld	a3,0(a1)
    800087f0:	96b2                	add	a3,a3,a2
    800087f2:	e194                	sd	a3,0(a1)
    800087f4:	4589                	li	a1,2
    800087f6:	14459073          	csrw	sip,a1
    800087fa:	6914                	ld	a3,16(a0)
    800087fc:	6510                	ld	a2,8(a0)
    800087fe:	610c                	ld	a1,0(a0)
    80008800:	34051573          	csrrw	a0,mscratch,a0
    80008804:	30200073          	mret
	...

000000008000880a <plicinit>:
    8000880a:	1141                	addi	sp,sp,-16
    8000880c:	e422                	sd	s0,8(sp)
    8000880e:	0800                	addi	s0,sp,16
    80008810:	0c0007b7          	lui	a5,0xc000
    80008814:	02878793          	addi	a5,a5,40 # c000028 <_entry-0x73ffffd8>
    80008818:	4705                	li	a4,1
    8000881a:	c398                	sw	a4,0(a5)
    8000881c:	0c0007b7          	lui	a5,0xc000
    80008820:	0791                	addi	a5,a5,4
    80008822:	4705                	li	a4,1
    80008824:	c398                	sw	a4,0(a5)
    80008826:	0001                	nop
    80008828:	6422                	ld	s0,8(sp)
    8000882a:	0141                	addi	sp,sp,16
    8000882c:	8082                	ret

000000008000882e <plicinithart>:
    8000882e:	1101                	addi	sp,sp,-32
    80008830:	ec06                	sd	ra,24(sp)
    80008832:	e822                	sd	s0,16(sp)
    80008834:	1000                	addi	s0,sp,32
    80008836:	ffffa097          	auipc	ra,0xffffa
    8000883a:	f56080e7          	jalr	-170(ra) # 8000278c <cpuid>
    8000883e:	87aa                	mv	a5,a0
    80008840:	fef42623          	sw	a5,-20(s0)
    80008844:	fec42783          	lw	a5,-20(s0)
    80008848:	0087979b          	slliw	a5,a5,0x8
    8000884c:	2781                	sext.w	a5,a5
    8000884e:	873e                	mv	a4,a5
    80008850:	0c0027b7          	lui	a5,0xc002
    80008854:	08078793          	addi	a5,a5,128 # c002080 <_entry-0x73ffdf80>
    80008858:	97ba                	add	a5,a5,a4
    8000885a:	873e                	mv	a4,a5
    8000885c:	40200793          	li	a5,1026
    80008860:	c31c                	sw	a5,0(a4)
    80008862:	fec42783          	lw	a5,-20(s0)
    80008866:	00d7979b          	slliw	a5,a5,0xd
    8000886a:	2781                	sext.w	a5,a5
    8000886c:	873e                	mv	a4,a5
    8000886e:	0c2017b7          	lui	a5,0xc201
    80008872:	97ba                	add	a5,a5,a4
    80008874:	0007a023          	sw	zero,0(a5) # c201000 <_entry-0x73dff000>
    80008878:	0001                	nop
    8000887a:	60e2                	ld	ra,24(sp)
    8000887c:	6442                	ld	s0,16(sp)
    8000887e:	6105                	addi	sp,sp,32
    80008880:	8082                	ret

0000000080008882 <plic_claim>:
    80008882:	1101                	addi	sp,sp,-32
    80008884:	ec06                	sd	ra,24(sp)
    80008886:	e822                	sd	s0,16(sp)
    80008888:	1000                	addi	s0,sp,32
    8000888a:	ffffa097          	auipc	ra,0xffffa
    8000888e:	f02080e7          	jalr	-254(ra) # 8000278c <cpuid>
    80008892:	87aa                	mv	a5,a0
    80008894:	fef42623          	sw	a5,-20(s0)
    80008898:	fec42783          	lw	a5,-20(s0)
    8000889c:	00d7979b          	slliw	a5,a5,0xd
    800088a0:	2781                	sext.w	a5,a5
    800088a2:	873e                	mv	a4,a5
    800088a4:	0c2017b7          	lui	a5,0xc201
    800088a8:	0791                	addi	a5,a5,4
    800088aa:	97ba                	add	a5,a5,a4
    800088ac:	439c                	lw	a5,0(a5)
    800088ae:	fef42423          	sw	a5,-24(s0)
    800088b2:	fe842783          	lw	a5,-24(s0)
    800088b6:	853e                	mv	a0,a5
    800088b8:	60e2                	ld	ra,24(sp)
    800088ba:	6442                	ld	s0,16(sp)
    800088bc:	6105                	addi	sp,sp,32
    800088be:	8082                	ret

00000000800088c0 <plic_complete>:
    800088c0:	7179                	addi	sp,sp,-48
    800088c2:	f406                	sd	ra,40(sp)
    800088c4:	f022                	sd	s0,32(sp)
    800088c6:	1800                	addi	s0,sp,48
    800088c8:	87aa                	mv	a5,a0
    800088ca:	fcf42e23          	sw	a5,-36(s0)
    800088ce:	ffffa097          	auipc	ra,0xffffa
    800088d2:	ebe080e7          	jalr	-322(ra) # 8000278c <cpuid>
    800088d6:	87aa                	mv	a5,a0
    800088d8:	fef42623          	sw	a5,-20(s0)
    800088dc:	fec42783          	lw	a5,-20(s0)
    800088e0:	00d7979b          	slliw	a5,a5,0xd
    800088e4:	2781                	sext.w	a5,a5
    800088e6:	873e                	mv	a4,a5
    800088e8:	0c2017b7          	lui	a5,0xc201
    800088ec:	0791                	addi	a5,a5,4
    800088ee:	97ba                	add	a5,a5,a4
    800088f0:	873e                	mv	a4,a5
    800088f2:	fdc42783          	lw	a5,-36(s0)
    800088f6:	c31c                	sw	a5,0(a4)
    800088f8:	0001                	nop
    800088fa:	70a2                	ld	ra,40(sp)
    800088fc:	7402                	ld	s0,32(sp)
    800088fe:	6145                	addi	sp,sp,48
    80008900:	8082                	ret

0000000080008902 <virtio_disk_init>:
    80008902:	7179                	addi	sp,sp,-48
    80008904:	f406                	sd	ra,40(sp)
    80008906:	f022                	sd	s0,32(sp)
    80008908:	1800                	addi	s0,sp,48
    8000890a:	fe042423          	sw	zero,-24(s0)
    8000890e:	00003597          	auipc	a1,0x3
    80008912:	d9258593          	addi	a1,a1,-622 # 8000b6a0 <etext+0x6a0>
    80008916:	00020517          	auipc	a0,0x20
    8000891a:	81250513          	addi	a0,a0,-2030 # 80028128 <disk+0x2128>
    8000891e:	ffff9097          	auipc	ra,0xffff9
    80008922:	932080e7          	jalr	-1742(ra) # 80001250 <initlock>
    80008926:	100017b7          	lui	a5,0x10001
    8000892a:	439c                	lw	a5,0(a5)
    8000892c:	2781                	sext.w	a5,a5
    8000892e:	873e                	mv	a4,a5
    80008930:	747277b7          	lui	a5,0x74727
    80008934:	97678793          	addi	a5,a5,-1674 # 74726976 <_entry-0xb8d968a>
    80008938:	04f71063          	bne	a4,a5,80008978 <virtio_disk_init+0x76>
    8000893c:	100017b7          	lui	a5,0x10001
    80008940:	0791                	addi	a5,a5,4
    80008942:	439c                	lw	a5,0(a5)
    80008944:	2781                	sext.w	a5,a5
    80008946:	873e                	mv	a4,a5
    80008948:	4785                	li	a5,1
    8000894a:	02f71763          	bne	a4,a5,80008978 <virtio_disk_init+0x76>
    8000894e:	100017b7          	lui	a5,0x10001
    80008952:	07a1                	addi	a5,a5,8
    80008954:	439c                	lw	a5,0(a5)
    80008956:	2781                	sext.w	a5,a5
    80008958:	873e                	mv	a4,a5
    8000895a:	4789                	li	a5,2
    8000895c:	00f71e63          	bne	a4,a5,80008978 <virtio_disk_init+0x76>
    80008960:	100017b7          	lui	a5,0x10001
    80008964:	07b1                	addi	a5,a5,12
    80008966:	439c                	lw	a5,0(a5)
    80008968:	2781                	sext.w	a5,a5
    8000896a:	873e                	mv	a4,a5
    8000896c:	554d47b7          	lui	a5,0x554d4
    80008970:	55178793          	addi	a5,a5,1361 # 554d4551 <_entry-0x2ab2baaf>
    80008974:	00f70a63          	beq	a4,a5,80008988 <virtio_disk_init+0x86>
    80008978:	00003517          	auipc	a0,0x3
    8000897c:	d3850513          	addi	a0,a0,-712 # 8000b6b0 <etext+0x6b0>
    80008980:	ffff8097          	auipc	ra,0xffff8
    80008984:	2d2080e7          	jalr	722(ra) # 80000c52 <panic>
    80008988:	fe842783          	lw	a5,-24(s0)
    8000898c:	0017e793          	ori	a5,a5,1
    80008990:	fef42423          	sw	a5,-24(s0)
    80008994:	100017b7          	lui	a5,0x10001
    80008998:	07078793          	addi	a5,a5,112 # 10001070 <_entry-0x6fffef90>
    8000899c:	fe842703          	lw	a4,-24(s0)
    800089a0:	c398                	sw	a4,0(a5)
    800089a2:	fe842783          	lw	a5,-24(s0)
    800089a6:	0027e793          	ori	a5,a5,2
    800089aa:	fef42423          	sw	a5,-24(s0)
    800089ae:	100017b7          	lui	a5,0x10001
    800089b2:	07078793          	addi	a5,a5,112 # 10001070 <_entry-0x6fffef90>
    800089b6:	fe842703          	lw	a4,-24(s0)
    800089ba:	c398                	sw	a4,0(a5)
    800089bc:	100017b7          	lui	a5,0x10001
    800089c0:	07c1                	addi	a5,a5,16
    800089c2:	439c                	lw	a5,0(a5)
    800089c4:	2781                	sext.w	a5,a5
    800089c6:	1782                	slli	a5,a5,0x20
    800089c8:	9381                	srli	a5,a5,0x20
    800089ca:	fef43023          	sd	a5,-32(s0)
    800089ce:	fe043783          	ld	a5,-32(s0)
    800089d2:	fdf7f793          	andi	a5,a5,-33
    800089d6:	fef43023          	sd	a5,-32(s0)
    800089da:	fe043783          	ld	a5,-32(s0)
    800089de:	f7f7f793          	andi	a5,a5,-129
    800089e2:	fef43023          	sd	a5,-32(s0)
    800089e6:	fe043703          	ld	a4,-32(s0)
    800089ea:	77fd                	lui	a5,0xfffff
    800089ec:	7ff78793          	addi	a5,a5,2047 # fffffffffffff7ff <end+0xffffffff7ffd67ff>
    800089f0:	8ff9                	and	a5,a5,a4
    800089f2:	fef43023          	sd	a5,-32(s0)
    800089f6:	fe043703          	ld	a4,-32(s0)
    800089fa:	77fd                	lui	a5,0xfffff
    800089fc:	17fd                	addi	a5,a5,-1
    800089fe:	8ff9                	and	a5,a5,a4
    80008a00:	fef43023          	sd	a5,-32(s0)
    80008a04:	fe043703          	ld	a4,-32(s0)
    80008a08:	f80007b7          	lui	a5,0xf8000
    80008a0c:	17fd                	addi	a5,a5,-1
    80008a0e:	8ff9                	and	a5,a5,a4
    80008a10:	fef43023          	sd	a5,-32(s0)
    80008a14:	fe043703          	ld	a4,-32(s0)
    80008a18:	e00007b7          	lui	a5,0xe0000
    80008a1c:	17fd                	addi	a5,a5,-1
    80008a1e:	8ff9                	and	a5,a5,a4
    80008a20:	fef43023          	sd	a5,-32(s0)
    80008a24:	fe043703          	ld	a4,-32(s0)
    80008a28:	f00007b7          	lui	a5,0xf0000
    80008a2c:	17fd                	addi	a5,a5,-1
    80008a2e:	8ff9                	and	a5,a5,a4
    80008a30:	fef43023          	sd	a5,-32(s0)
    80008a34:	100017b7          	lui	a5,0x10001
    80008a38:	02078793          	addi	a5,a5,32 # 10001020 <_entry-0x6fffefe0>
    80008a3c:	fe043703          	ld	a4,-32(s0)
    80008a40:	2701                	sext.w	a4,a4
    80008a42:	c398                	sw	a4,0(a5)
    80008a44:	fe842783          	lw	a5,-24(s0)
    80008a48:	0087e793          	ori	a5,a5,8
    80008a4c:	fef42423          	sw	a5,-24(s0)
    80008a50:	100017b7          	lui	a5,0x10001
    80008a54:	07078793          	addi	a5,a5,112 # 10001070 <_entry-0x6fffef90>
    80008a58:	fe842703          	lw	a4,-24(s0)
    80008a5c:	c398                	sw	a4,0(a5)
    80008a5e:	fe842783          	lw	a5,-24(s0)
    80008a62:	0047e793          	ori	a5,a5,4
    80008a66:	fef42423          	sw	a5,-24(s0)
    80008a6a:	100017b7          	lui	a5,0x10001
    80008a6e:	07078793          	addi	a5,a5,112 # 10001070 <_entry-0x6fffef90>
    80008a72:	fe842703          	lw	a4,-24(s0)
    80008a76:	c398                	sw	a4,0(a5)
    80008a78:	100017b7          	lui	a5,0x10001
    80008a7c:	02878793          	addi	a5,a5,40 # 10001028 <_entry-0x6fffefd8>
    80008a80:	6705                	lui	a4,0x1
    80008a82:	c398                	sw	a4,0(a5)
    80008a84:	100017b7          	lui	a5,0x10001
    80008a88:	03078793          	addi	a5,a5,48 # 10001030 <_entry-0x6fffefd0>
    80008a8c:	0007a023          	sw	zero,0(a5)
    80008a90:	100017b7          	lui	a5,0x10001
    80008a94:	03478793          	addi	a5,a5,52 # 10001034 <_entry-0x6fffefcc>
    80008a98:	439c                	lw	a5,0(a5)
    80008a9a:	fcf42e23          	sw	a5,-36(s0)
    80008a9e:	fdc42783          	lw	a5,-36(s0)
    80008aa2:	2781                	sext.w	a5,a5
    80008aa4:	eb89                	bnez	a5,80008ab6 <virtio_disk_init+0x1b4>
    80008aa6:	00003517          	auipc	a0,0x3
    80008aaa:	c2a50513          	addi	a0,a0,-982 # 8000b6d0 <etext+0x6d0>
    80008aae:	ffff8097          	auipc	ra,0xffff8
    80008ab2:	1a4080e7          	jalr	420(ra) # 80000c52 <panic>
    80008ab6:	fdc42783          	lw	a5,-36(s0)
    80008aba:	0007871b          	sext.w	a4,a5
    80008abe:	479d                	li	a5,7
    80008ac0:	00e7ea63          	bltu	a5,a4,80008ad4 <virtio_disk_init+0x1d2>
    80008ac4:	00003517          	auipc	a0,0x3
    80008ac8:	c2c50513          	addi	a0,a0,-980 # 8000b6f0 <etext+0x6f0>
    80008acc:	ffff8097          	auipc	ra,0xffff8
    80008ad0:	186080e7          	jalr	390(ra) # 80000c52 <panic>
    80008ad4:	100017b7          	lui	a5,0x10001
    80008ad8:	03878793          	addi	a5,a5,56 # 10001038 <_entry-0x6fffefc8>
    80008adc:	4721                	li	a4,8
    80008ade:	c398                	sw	a4,0(a5)
    80008ae0:	6609                	lui	a2,0x2
    80008ae2:	4581                	li	a1,0
    80008ae4:	0001d517          	auipc	a0,0x1d
    80008ae8:	51c50513          	addi	a0,a0,1308 # 80026000 <disk>
    80008aec:	ffff9097          	auipc	ra,0xffff9
    80008af0:	968080e7          	jalr	-1688(ra) # 80001454 <memset>
    80008af4:	0001d797          	auipc	a5,0x1d
    80008af8:	50c78793          	addi	a5,a5,1292 # 80026000 <disk>
    80008afc:	00c7d713          	srli	a4,a5,0xc
    80008b00:	100017b7          	lui	a5,0x10001
    80008b04:	04078793          	addi	a5,a5,64 # 10001040 <_entry-0x6fffefc0>
    80008b08:	2701                	sext.w	a4,a4
    80008b0a:	c398                	sw	a4,0(a5)
    80008b0c:	0001d717          	auipc	a4,0x1d
    80008b10:	4f470713          	addi	a4,a4,1268 # 80026000 <disk>
    80008b14:	6789                	lui	a5,0x2
    80008b16:	97ba                	add	a5,a5,a4
    80008b18:	0001d717          	auipc	a4,0x1d
    80008b1c:	4e870713          	addi	a4,a4,1256 # 80026000 <disk>
    80008b20:	e398                	sd	a4,0(a5)
    80008b22:	0001d717          	auipc	a4,0x1d
    80008b26:	55e70713          	addi	a4,a4,1374 # 80026080 <disk+0x80>
    80008b2a:	0001d697          	auipc	a3,0x1d
    80008b2e:	4d668693          	addi	a3,a3,1238 # 80026000 <disk>
    80008b32:	6789                	lui	a5,0x2
    80008b34:	97b6                	add	a5,a5,a3
    80008b36:	e798                	sd	a4,8(a5)
    80008b38:	0001e717          	auipc	a4,0x1e
    80008b3c:	4c870713          	addi	a4,a4,1224 # 80027000 <disk+0x1000>
    80008b40:	0001d697          	auipc	a3,0x1d
    80008b44:	4c068693          	addi	a3,a3,1216 # 80026000 <disk>
    80008b48:	6789                	lui	a5,0x2
    80008b4a:	97b6                	add	a5,a5,a3
    80008b4c:	eb98                	sd	a4,16(a5)
    80008b4e:	fe042623          	sw	zero,-20(s0)
    80008b52:	a015                	j	80008b76 <virtio_disk_init+0x274>
    80008b54:	0001d717          	auipc	a4,0x1d
    80008b58:	4ac70713          	addi	a4,a4,1196 # 80026000 <disk>
    80008b5c:	fec42783          	lw	a5,-20(s0)
    80008b60:	97ba                	add	a5,a5,a4
    80008b62:	6709                	lui	a4,0x2
    80008b64:	97ba                	add	a5,a5,a4
    80008b66:	4705                	li	a4,1
    80008b68:	00e78c23          	sb	a4,24(a5) # 2018 <_entry-0x7fffdfe8>
    80008b6c:	fec42783          	lw	a5,-20(s0)
    80008b70:	2785                	addiw	a5,a5,1
    80008b72:	fef42623          	sw	a5,-20(s0)
    80008b76:	fec42783          	lw	a5,-20(s0)
    80008b7a:	0007871b          	sext.w	a4,a5
    80008b7e:	479d                	li	a5,7
    80008b80:	fce7dae3          	bge	a5,a4,80008b54 <virtio_disk_init+0x252>
    80008b84:	0001                	nop
    80008b86:	0001                	nop
    80008b88:	70a2                	ld	ra,40(sp)
    80008b8a:	7402                	ld	s0,32(sp)
    80008b8c:	6145                	addi	sp,sp,48
    80008b8e:	8082                	ret

0000000080008b90 <alloc_desc>:
    80008b90:	1101                	addi	sp,sp,-32
    80008b92:	ec22                	sd	s0,24(sp)
    80008b94:	1000                	addi	s0,sp,32
    80008b96:	fe042623          	sw	zero,-20(s0)
    80008b9a:	a081                	j	80008bda <alloc_desc+0x4a>
    80008b9c:	0001d717          	auipc	a4,0x1d
    80008ba0:	46470713          	addi	a4,a4,1124 # 80026000 <disk>
    80008ba4:	fec42783          	lw	a5,-20(s0)
    80008ba8:	97ba                	add	a5,a5,a4
    80008baa:	6709                	lui	a4,0x2
    80008bac:	97ba                	add	a5,a5,a4
    80008bae:	0187c783          	lbu	a5,24(a5)
    80008bb2:	cf99                	beqz	a5,80008bd0 <alloc_desc+0x40>
    80008bb4:	0001d717          	auipc	a4,0x1d
    80008bb8:	44c70713          	addi	a4,a4,1100 # 80026000 <disk>
    80008bbc:	fec42783          	lw	a5,-20(s0)
    80008bc0:	97ba                	add	a5,a5,a4
    80008bc2:	6709                	lui	a4,0x2
    80008bc4:	97ba                	add	a5,a5,a4
    80008bc6:	00078c23          	sb	zero,24(a5)
    80008bca:	fec42783          	lw	a5,-20(s0)
    80008bce:	a831                	j	80008bea <alloc_desc+0x5a>
    80008bd0:	fec42783          	lw	a5,-20(s0)
    80008bd4:	2785                	addiw	a5,a5,1
    80008bd6:	fef42623          	sw	a5,-20(s0)
    80008bda:	fec42783          	lw	a5,-20(s0)
    80008bde:	0007871b          	sext.w	a4,a5
    80008be2:	479d                	li	a5,7
    80008be4:	fae7dce3          	bge	a5,a4,80008b9c <alloc_desc+0xc>
    80008be8:	57fd                	li	a5,-1
    80008bea:	853e                	mv	a0,a5
    80008bec:	6462                	ld	s0,24(sp)
    80008bee:	6105                	addi	sp,sp,32
    80008bf0:	8082                	ret

0000000080008bf2 <free_desc>:
    80008bf2:	1101                	addi	sp,sp,-32
    80008bf4:	ec06                	sd	ra,24(sp)
    80008bf6:	e822                	sd	s0,16(sp)
    80008bf8:	1000                	addi	s0,sp,32
    80008bfa:	87aa                	mv	a5,a0
    80008bfc:	fef42623          	sw	a5,-20(s0)
    80008c00:	fec42783          	lw	a5,-20(s0)
    80008c04:	0007871b          	sext.w	a4,a5
    80008c08:	479d                	li	a5,7
    80008c0a:	00e7da63          	bge	a5,a4,80008c1e <free_desc+0x2c>
    80008c0e:	00003517          	auipc	a0,0x3
    80008c12:	b0250513          	addi	a0,a0,-1278 # 8000b710 <etext+0x710>
    80008c16:	ffff8097          	auipc	ra,0xffff8
    80008c1a:	03c080e7          	jalr	60(ra) # 80000c52 <panic>
    80008c1e:	0001d717          	auipc	a4,0x1d
    80008c22:	3e270713          	addi	a4,a4,994 # 80026000 <disk>
    80008c26:	fec42783          	lw	a5,-20(s0)
    80008c2a:	97ba                	add	a5,a5,a4
    80008c2c:	6709                	lui	a4,0x2
    80008c2e:	97ba                	add	a5,a5,a4
    80008c30:	0187c783          	lbu	a5,24(a5)
    80008c34:	cb89                	beqz	a5,80008c46 <free_desc+0x54>
    80008c36:	00003517          	auipc	a0,0x3
    80008c3a:	aea50513          	addi	a0,a0,-1302 # 8000b720 <etext+0x720>
    80008c3e:	ffff8097          	auipc	ra,0xffff8
    80008c42:	014080e7          	jalr	20(ra) # 80000c52 <panic>
    80008c46:	0001d717          	auipc	a4,0x1d
    80008c4a:	3ba70713          	addi	a4,a4,954 # 80026000 <disk>
    80008c4e:	6789                	lui	a5,0x2
    80008c50:	97ba                	add	a5,a5,a4
    80008c52:	6398                	ld	a4,0(a5)
    80008c54:	fec42783          	lw	a5,-20(s0)
    80008c58:	0792                	slli	a5,a5,0x4
    80008c5a:	97ba                	add	a5,a5,a4
    80008c5c:	0007b023          	sd	zero,0(a5) # 2000 <_entry-0x7fffe000>
    80008c60:	0001d717          	auipc	a4,0x1d
    80008c64:	3a070713          	addi	a4,a4,928 # 80026000 <disk>
    80008c68:	6789                	lui	a5,0x2
    80008c6a:	97ba                	add	a5,a5,a4
    80008c6c:	6398                	ld	a4,0(a5)
    80008c6e:	fec42783          	lw	a5,-20(s0)
    80008c72:	0792                	slli	a5,a5,0x4
    80008c74:	97ba                	add	a5,a5,a4
    80008c76:	0007a423          	sw	zero,8(a5) # 2008 <_entry-0x7fffdff8>
    80008c7a:	0001d717          	auipc	a4,0x1d
    80008c7e:	38670713          	addi	a4,a4,902 # 80026000 <disk>
    80008c82:	6789                	lui	a5,0x2
    80008c84:	97ba                	add	a5,a5,a4
    80008c86:	6398                	ld	a4,0(a5)
    80008c88:	fec42783          	lw	a5,-20(s0)
    80008c8c:	0792                	slli	a5,a5,0x4
    80008c8e:	97ba                	add	a5,a5,a4
    80008c90:	00079623          	sh	zero,12(a5) # 200c <_entry-0x7fffdff4>
    80008c94:	0001d717          	auipc	a4,0x1d
    80008c98:	36c70713          	addi	a4,a4,876 # 80026000 <disk>
    80008c9c:	6789                	lui	a5,0x2
    80008c9e:	97ba                	add	a5,a5,a4
    80008ca0:	6398                	ld	a4,0(a5)
    80008ca2:	fec42783          	lw	a5,-20(s0)
    80008ca6:	0792                	slli	a5,a5,0x4
    80008ca8:	97ba                	add	a5,a5,a4
    80008caa:	00079723          	sh	zero,14(a5) # 200e <_entry-0x7fffdff2>
    80008cae:	0001d717          	auipc	a4,0x1d
    80008cb2:	35270713          	addi	a4,a4,850 # 80026000 <disk>
    80008cb6:	fec42783          	lw	a5,-20(s0)
    80008cba:	97ba                	add	a5,a5,a4
    80008cbc:	6709                	lui	a4,0x2
    80008cbe:	97ba                	add	a5,a5,a4
    80008cc0:	4705                	li	a4,1
    80008cc2:	00e78c23          	sb	a4,24(a5)
    80008cc6:	0001f517          	auipc	a0,0x1f
    80008cca:	35250513          	addi	a0,a0,850 # 80028018 <disk+0x2018>
    80008cce:	ffffa097          	auipc	ra,0xffffa
    80008cd2:	784080e7          	jalr	1924(ra) # 80003452 <wakeup>
    80008cd6:	0001                	nop
    80008cd8:	60e2                	ld	ra,24(sp)
    80008cda:	6442                	ld	s0,16(sp)
    80008cdc:	6105                	addi	sp,sp,32
    80008cde:	8082                	ret

0000000080008ce0 <free_chain>:
    80008ce0:	7179                	addi	sp,sp,-48
    80008ce2:	f406                	sd	ra,40(sp)
    80008ce4:	f022                	sd	s0,32(sp)
    80008ce6:	1800                	addi	s0,sp,48
    80008ce8:	87aa                	mv	a5,a0
    80008cea:	fcf42e23          	sw	a5,-36(s0)
    80008cee:	0001d717          	auipc	a4,0x1d
    80008cf2:	31270713          	addi	a4,a4,786 # 80026000 <disk>
    80008cf6:	6789                	lui	a5,0x2
    80008cf8:	97ba                	add	a5,a5,a4
    80008cfa:	6398                	ld	a4,0(a5)
    80008cfc:	fdc42783          	lw	a5,-36(s0)
    80008d00:	0792                	slli	a5,a5,0x4
    80008d02:	97ba                	add	a5,a5,a4
    80008d04:	00c7d783          	lhu	a5,12(a5) # 200c <_entry-0x7fffdff4>
    80008d08:	fef42623          	sw	a5,-20(s0)
    80008d0c:	0001d717          	auipc	a4,0x1d
    80008d10:	2f470713          	addi	a4,a4,756 # 80026000 <disk>
    80008d14:	6789                	lui	a5,0x2
    80008d16:	97ba                	add	a5,a5,a4
    80008d18:	6398                	ld	a4,0(a5)
    80008d1a:	fdc42783          	lw	a5,-36(s0)
    80008d1e:	0792                	slli	a5,a5,0x4
    80008d20:	97ba                	add	a5,a5,a4
    80008d22:	00e7d783          	lhu	a5,14(a5) # 200e <_entry-0x7fffdff2>
    80008d26:	fef42423          	sw	a5,-24(s0)
    80008d2a:	fdc42783          	lw	a5,-36(s0)
    80008d2e:	853e                	mv	a0,a5
    80008d30:	00000097          	auipc	ra,0x0
    80008d34:	ec2080e7          	jalr	-318(ra) # 80008bf2 <free_desc>
    80008d38:	fec42783          	lw	a5,-20(s0)
    80008d3c:	8b85                	andi	a5,a5,1
    80008d3e:	2781                	sext.w	a5,a5
    80008d40:	c791                	beqz	a5,80008d4c <free_chain+0x6c>
    80008d42:	fe842783          	lw	a5,-24(s0)
    80008d46:	fcf42e23          	sw	a5,-36(s0)
    80008d4a:	b755                	j	80008cee <free_chain+0xe>
    80008d4c:	0001                	nop
    80008d4e:	0001                	nop
    80008d50:	70a2                	ld	ra,40(sp)
    80008d52:	7402                	ld	s0,32(sp)
    80008d54:	6145                	addi	sp,sp,48
    80008d56:	8082                	ret

0000000080008d58 <alloc3_desc>:
    80008d58:	7139                	addi	sp,sp,-64
    80008d5a:	fc06                	sd	ra,56(sp)
    80008d5c:	f822                	sd	s0,48(sp)
    80008d5e:	f426                	sd	s1,40(sp)
    80008d60:	0080                	addi	s0,sp,64
    80008d62:	fca43423          	sd	a0,-56(s0)
    80008d66:	fc042e23          	sw	zero,-36(s0)
    80008d6a:	a895                	j	80008dde <alloc3_desc+0x86>
    80008d6c:	fdc42783          	lw	a5,-36(s0)
    80008d70:	078a                	slli	a5,a5,0x2
    80008d72:	fc843703          	ld	a4,-56(s0)
    80008d76:	00f704b3          	add	s1,a4,a5
    80008d7a:	00000097          	auipc	ra,0x0
    80008d7e:	e16080e7          	jalr	-490(ra) # 80008b90 <alloc_desc>
    80008d82:	87aa                	mv	a5,a0
    80008d84:	c09c                	sw	a5,0(s1)
    80008d86:	fdc42783          	lw	a5,-36(s0)
    80008d8a:	078a                	slli	a5,a5,0x2
    80008d8c:	fc843703          	ld	a4,-56(s0)
    80008d90:	97ba                	add	a5,a5,a4
    80008d92:	439c                	lw	a5,0(a5)
    80008d94:	0407d063          	bgez	a5,80008dd4 <alloc3_desc+0x7c>
    80008d98:	fc042c23          	sw	zero,-40(s0)
    80008d9c:	a015                	j	80008dc0 <alloc3_desc+0x68>
    80008d9e:	fd842783          	lw	a5,-40(s0)
    80008da2:	078a                	slli	a5,a5,0x2
    80008da4:	fc843703          	ld	a4,-56(s0)
    80008da8:	97ba                	add	a5,a5,a4
    80008daa:	439c                	lw	a5,0(a5)
    80008dac:	853e                	mv	a0,a5
    80008dae:	00000097          	auipc	ra,0x0
    80008db2:	e44080e7          	jalr	-444(ra) # 80008bf2 <free_desc>
    80008db6:	fd842783          	lw	a5,-40(s0)
    80008dba:	2785                	addiw	a5,a5,1
    80008dbc:	fcf42c23          	sw	a5,-40(s0)
    80008dc0:	fd842703          	lw	a4,-40(s0)
    80008dc4:	fdc42783          	lw	a5,-36(s0)
    80008dc8:	2701                	sext.w	a4,a4
    80008dca:	2781                	sext.w	a5,a5
    80008dcc:	fcf749e3          	blt	a4,a5,80008d9e <alloc3_desc+0x46>
    80008dd0:	57fd                	li	a5,-1
    80008dd2:	a831                	j	80008dee <alloc3_desc+0x96>
    80008dd4:	fdc42783          	lw	a5,-36(s0)
    80008dd8:	2785                	addiw	a5,a5,1
    80008dda:	fcf42e23          	sw	a5,-36(s0)
    80008dde:	fdc42783          	lw	a5,-36(s0)
    80008de2:	0007871b          	sext.w	a4,a5
    80008de6:	4789                	li	a5,2
    80008de8:	f8e7d2e3          	bge	a5,a4,80008d6c <alloc3_desc+0x14>
    80008dec:	4781                	li	a5,0
    80008dee:	853e                	mv	a0,a5
    80008df0:	70e2                	ld	ra,56(sp)
    80008df2:	7442                	ld	s0,48(sp)
    80008df4:	74a2                	ld	s1,40(sp)
    80008df6:	6121                	addi	sp,sp,64
    80008df8:	8082                	ret

0000000080008dfa <virtio_disk_rw>:
    80008dfa:	7139                	addi	sp,sp,-64
    80008dfc:	fc06                	sd	ra,56(sp)
    80008dfe:	f822                	sd	s0,48(sp)
    80008e00:	0080                	addi	s0,sp,64
    80008e02:	fca43423          	sd	a0,-56(s0)
    80008e06:	87ae                	mv	a5,a1
    80008e08:	fcf42223          	sw	a5,-60(s0)
    80008e0c:	fc843783          	ld	a5,-56(s0)
    80008e10:	47dc                	lw	a5,12(a5)
    80008e12:	0017979b          	slliw	a5,a5,0x1
    80008e16:	2781                	sext.w	a5,a5
    80008e18:	1782                	slli	a5,a5,0x20
    80008e1a:	9381                	srli	a5,a5,0x20
    80008e1c:	fef43423          	sd	a5,-24(s0)
    80008e20:	0001f517          	auipc	a0,0x1f
    80008e24:	30850513          	addi	a0,a0,776 # 80028128 <disk+0x2128>
    80008e28:	ffff8097          	auipc	ra,0xffff8
    80008e2c:	458080e7          	jalr	1112(ra) # 80001280 <acquire>
    80008e30:	fd040793          	addi	a5,s0,-48
    80008e34:	853e                	mv	a0,a5
    80008e36:	00000097          	auipc	ra,0x0
    80008e3a:	f22080e7          	jalr	-222(ra) # 80008d58 <alloc3_desc>
    80008e3e:	87aa                	mv	a5,a0
    80008e40:	cf91                	beqz	a5,80008e5c <virtio_disk_rw+0x62>
    80008e42:	0001f597          	auipc	a1,0x1f
    80008e46:	2e658593          	addi	a1,a1,742 # 80028128 <disk+0x2128>
    80008e4a:	0001f517          	auipc	a0,0x1f
    80008e4e:	1ce50513          	addi	a0,a0,462 # 80028018 <disk+0x2018>
    80008e52:	ffffa097          	auipc	ra,0xffffa
    80008e56:	56c080e7          	jalr	1388(ra) # 800033be <sleep>
    80008e5a:	bfd9                	j	80008e30 <virtio_disk_rw+0x36>
    80008e5c:	0001                	nop
    80008e5e:	fd042783          	lw	a5,-48(s0)
    80008e62:	20078793          	addi	a5,a5,512
    80008e66:	00479713          	slli	a4,a5,0x4
    80008e6a:	0001d797          	auipc	a5,0x1d
    80008e6e:	19678793          	addi	a5,a5,406 # 80026000 <disk>
    80008e72:	97ba                	add	a5,a5,a4
    80008e74:	0a878793          	addi	a5,a5,168
    80008e78:	fef43023          	sd	a5,-32(s0)
    80008e7c:	fc442783          	lw	a5,-60(s0)
    80008e80:	2781                	sext.w	a5,a5
    80008e82:	c791                	beqz	a5,80008e8e <virtio_disk_rw+0x94>
    80008e84:	fe043783          	ld	a5,-32(s0)
    80008e88:	4705                	li	a4,1
    80008e8a:	c398                	sw	a4,0(a5)
    80008e8c:	a029                	j	80008e96 <virtio_disk_rw+0x9c>
    80008e8e:	fe043783          	ld	a5,-32(s0)
    80008e92:	0007a023          	sw	zero,0(a5)
    80008e96:	fe043783          	ld	a5,-32(s0)
    80008e9a:	0007a223          	sw	zero,4(a5)
    80008e9e:	fe043783          	ld	a5,-32(s0)
    80008ea2:	fe843703          	ld	a4,-24(s0)
    80008ea6:	e798                	sd	a4,8(a5)
    80008ea8:	0001d717          	auipc	a4,0x1d
    80008eac:	15870713          	addi	a4,a4,344 # 80026000 <disk>
    80008eb0:	6789                	lui	a5,0x2
    80008eb2:	97ba                	add	a5,a5,a4
    80008eb4:	6398                	ld	a4,0(a5)
    80008eb6:	fd042783          	lw	a5,-48(s0)
    80008eba:	0792                	slli	a5,a5,0x4
    80008ebc:	97ba                	add	a5,a5,a4
    80008ebe:	fe043703          	ld	a4,-32(s0)
    80008ec2:	e398                	sd	a4,0(a5)
    80008ec4:	0001d717          	auipc	a4,0x1d
    80008ec8:	13c70713          	addi	a4,a4,316 # 80026000 <disk>
    80008ecc:	6789                	lui	a5,0x2
    80008ece:	97ba                	add	a5,a5,a4
    80008ed0:	6398                	ld	a4,0(a5)
    80008ed2:	fd042783          	lw	a5,-48(s0)
    80008ed6:	0792                	slli	a5,a5,0x4
    80008ed8:	97ba                	add	a5,a5,a4
    80008eda:	4741                	li	a4,16
    80008edc:	c798                	sw	a4,8(a5)
    80008ede:	0001d717          	auipc	a4,0x1d
    80008ee2:	12270713          	addi	a4,a4,290 # 80026000 <disk>
    80008ee6:	6789                	lui	a5,0x2
    80008ee8:	97ba                	add	a5,a5,a4
    80008eea:	6398                	ld	a4,0(a5)
    80008eec:	fd042783          	lw	a5,-48(s0)
    80008ef0:	0792                	slli	a5,a5,0x4
    80008ef2:	97ba                	add	a5,a5,a4
    80008ef4:	4705                	li	a4,1
    80008ef6:	00e79623          	sh	a4,12(a5) # 200c <_entry-0x7fffdff4>
    80008efa:	fd442683          	lw	a3,-44(s0)
    80008efe:	0001d717          	auipc	a4,0x1d
    80008f02:	10270713          	addi	a4,a4,258 # 80026000 <disk>
    80008f06:	6789                	lui	a5,0x2
    80008f08:	97ba                	add	a5,a5,a4
    80008f0a:	6398                	ld	a4,0(a5)
    80008f0c:	fd042783          	lw	a5,-48(s0)
    80008f10:	0792                	slli	a5,a5,0x4
    80008f12:	97ba                	add	a5,a5,a4
    80008f14:	03069713          	slli	a4,a3,0x30
    80008f18:	9341                	srli	a4,a4,0x30
    80008f1a:	00e79723          	sh	a4,14(a5) # 200e <_entry-0x7fffdff2>
    80008f1e:	fc843783          	ld	a5,-56(s0)
    80008f22:	05878693          	addi	a3,a5,88
    80008f26:	0001d717          	auipc	a4,0x1d
    80008f2a:	0da70713          	addi	a4,a4,218 # 80026000 <disk>
    80008f2e:	6789                	lui	a5,0x2
    80008f30:	97ba                	add	a5,a5,a4
    80008f32:	6398                	ld	a4,0(a5)
    80008f34:	fd442783          	lw	a5,-44(s0)
    80008f38:	0792                	slli	a5,a5,0x4
    80008f3a:	97ba                	add	a5,a5,a4
    80008f3c:	8736                	mv	a4,a3
    80008f3e:	e398                	sd	a4,0(a5)
    80008f40:	0001d717          	auipc	a4,0x1d
    80008f44:	0c070713          	addi	a4,a4,192 # 80026000 <disk>
    80008f48:	6789                	lui	a5,0x2
    80008f4a:	97ba                	add	a5,a5,a4
    80008f4c:	6398                	ld	a4,0(a5)
    80008f4e:	fd442783          	lw	a5,-44(s0)
    80008f52:	0792                	slli	a5,a5,0x4
    80008f54:	97ba                	add	a5,a5,a4
    80008f56:	40000713          	li	a4,1024
    80008f5a:	c798                	sw	a4,8(a5)
    80008f5c:	fc442783          	lw	a5,-60(s0)
    80008f60:	2781                	sext.w	a5,a5
    80008f62:	cf99                	beqz	a5,80008f80 <virtio_disk_rw+0x186>
    80008f64:	0001d717          	auipc	a4,0x1d
    80008f68:	09c70713          	addi	a4,a4,156 # 80026000 <disk>
    80008f6c:	6789                	lui	a5,0x2
    80008f6e:	97ba                	add	a5,a5,a4
    80008f70:	6398                	ld	a4,0(a5)
    80008f72:	fd442783          	lw	a5,-44(s0)
    80008f76:	0792                	slli	a5,a5,0x4
    80008f78:	97ba                	add	a5,a5,a4
    80008f7a:	00079623          	sh	zero,12(a5) # 200c <_entry-0x7fffdff4>
    80008f7e:	a839                	j	80008f9c <virtio_disk_rw+0x1a2>
    80008f80:	0001d717          	auipc	a4,0x1d
    80008f84:	08070713          	addi	a4,a4,128 # 80026000 <disk>
    80008f88:	6789                	lui	a5,0x2
    80008f8a:	97ba                	add	a5,a5,a4
    80008f8c:	6398                	ld	a4,0(a5)
    80008f8e:	fd442783          	lw	a5,-44(s0)
    80008f92:	0792                	slli	a5,a5,0x4
    80008f94:	97ba                	add	a5,a5,a4
    80008f96:	4709                	li	a4,2
    80008f98:	00e79623          	sh	a4,12(a5) # 200c <_entry-0x7fffdff4>
    80008f9c:	0001d717          	auipc	a4,0x1d
    80008fa0:	06470713          	addi	a4,a4,100 # 80026000 <disk>
    80008fa4:	6789                	lui	a5,0x2
    80008fa6:	97ba                	add	a5,a5,a4
    80008fa8:	6398                	ld	a4,0(a5)
    80008faa:	fd442783          	lw	a5,-44(s0)
    80008fae:	0792                	slli	a5,a5,0x4
    80008fb0:	97ba                	add	a5,a5,a4
    80008fb2:	00c7d703          	lhu	a4,12(a5) # 200c <_entry-0x7fffdff4>
    80008fb6:	0001d697          	auipc	a3,0x1d
    80008fba:	04a68693          	addi	a3,a3,74 # 80026000 <disk>
    80008fbe:	6789                	lui	a5,0x2
    80008fc0:	97b6                	add	a5,a5,a3
    80008fc2:	6394                	ld	a3,0(a5)
    80008fc4:	fd442783          	lw	a5,-44(s0)
    80008fc8:	0792                	slli	a5,a5,0x4
    80008fca:	97b6                	add	a5,a5,a3
    80008fcc:	00176713          	ori	a4,a4,1
    80008fd0:	1742                	slli	a4,a4,0x30
    80008fd2:	9341                	srli	a4,a4,0x30
    80008fd4:	00e79623          	sh	a4,12(a5) # 200c <_entry-0x7fffdff4>
    80008fd8:	fd842683          	lw	a3,-40(s0)
    80008fdc:	0001d717          	auipc	a4,0x1d
    80008fe0:	02470713          	addi	a4,a4,36 # 80026000 <disk>
    80008fe4:	6789                	lui	a5,0x2
    80008fe6:	97ba                	add	a5,a5,a4
    80008fe8:	6398                	ld	a4,0(a5)
    80008fea:	fd442783          	lw	a5,-44(s0)
    80008fee:	0792                	slli	a5,a5,0x4
    80008ff0:	97ba                	add	a5,a5,a4
    80008ff2:	03069713          	slli	a4,a3,0x30
    80008ff6:	9341                	srli	a4,a4,0x30
    80008ff8:	00e79723          	sh	a4,14(a5) # 200e <_entry-0x7fffdff2>
    80008ffc:	fd042783          	lw	a5,-48(s0)
    80009000:	0001d717          	auipc	a4,0x1d
    80009004:	00070713          	mv	a4,a4
    80009008:	20078793          	addi	a5,a5,512
    8000900c:	0792                	slli	a5,a5,0x4
    8000900e:	97ba                	add	a5,a5,a4
    80009010:	577d                	li	a4,-1
    80009012:	02e78823          	sb	a4,48(a5)
    80009016:	fd042783          	lw	a5,-48(s0)
    8000901a:	20078793          	addi	a5,a5,512
    8000901e:	00479713          	slli	a4,a5,0x4
    80009022:	0001d797          	auipc	a5,0x1d
    80009026:	fde78793          	addi	a5,a5,-34 # 80026000 <disk>
    8000902a:	97ba                	add	a5,a5,a4
    8000902c:	03078693          	addi	a3,a5,48
    80009030:	0001d717          	auipc	a4,0x1d
    80009034:	fd070713          	addi	a4,a4,-48 # 80026000 <disk>
    80009038:	6789                	lui	a5,0x2
    8000903a:	97ba                	add	a5,a5,a4
    8000903c:	6398                	ld	a4,0(a5)
    8000903e:	fd842783          	lw	a5,-40(s0)
    80009042:	0792                	slli	a5,a5,0x4
    80009044:	97ba                	add	a5,a5,a4
    80009046:	8736                	mv	a4,a3
    80009048:	e398                	sd	a4,0(a5)
    8000904a:	0001d717          	auipc	a4,0x1d
    8000904e:	fb670713          	addi	a4,a4,-74 # 80026000 <disk>
    80009052:	6789                	lui	a5,0x2
    80009054:	97ba                	add	a5,a5,a4
    80009056:	6398                	ld	a4,0(a5)
    80009058:	fd842783          	lw	a5,-40(s0)
    8000905c:	0792                	slli	a5,a5,0x4
    8000905e:	97ba                	add	a5,a5,a4
    80009060:	4705                	li	a4,1
    80009062:	c798                	sw	a4,8(a5)
    80009064:	0001d717          	auipc	a4,0x1d
    80009068:	f9c70713          	addi	a4,a4,-100 # 80026000 <disk>
    8000906c:	6789                	lui	a5,0x2
    8000906e:	97ba                	add	a5,a5,a4
    80009070:	6398                	ld	a4,0(a5)
    80009072:	fd842783          	lw	a5,-40(s0)
    80009076:	0792                	slli	a5,a5,0x4
    80009078:	97ba                	add	a5,a5,a4
    8000907a:	4709                	li	a4,2
    8000907c:	00e79623          	sh	a4,12(a5) # 200c <_entry-0x7fffdff4>
    80009080:	0001d717          	auipc	a4,0x1d
    80009084:	f8070713          	addi	a4,a4,-128 # 80026000 <disk>
    80009088:	6789                	lui	a5,0x2
    8000908a:	97ba                	add	a5,a5,a4
    8000908c:	6398                	ld	a4,0(a5)
    8000908e:	fd842783          	lw	a5,-40(s0)
    80009092:	0792                	slli	a5,a5,0x4
    80009094:	97ba                	add	a5,a5,a4
    80009096:	00079723          	sh	zero,14(a5) # 200e <_entry-0x7fffdff2>
    8000909a:	fc843783          	ld	a5,-56(s0)
    8000909e:	4705                	li	a4,1
    800090a0:	c3d8                	sw	a4,4(a5)
    800090a2:	fd042783          	lw	a5,-48(s0)
    800090a6:	0001d717          	auipc	a4,0x1d
    800090aa:	f5a70713          	addi	a4,a4,-166 # 80026000 <disk>
    800090ae:	20078793          	addi	a5,a5,512
    800090b2:	0792                	slli	a5,a5,0x4
    800090b4:	97ba                	add	a5,a5,a4
    800090b6:	fc843703          	ld	a4,-56(s0)
    800090ba:	f798                	sd	a4,40(a5)
    800090bc:	fd042603          	lw	a2,-48(s0)
    800090c0:	0001d717          	auipc	a4,0x1d
    800090c4:	f4070713          	addi	a4,a4,-192 # 80026000 <disk>
    800090c8:	6789                	lui	a5,0x2
    800090ca:	97ba                	add	a5,a5,a4
    800090cc:	6794                	ld	a3,8(a5)
    800090ce:	0001d717          	auipc	a4,0x1d
    800090d2:	f3270713          	addi	a4,a4,-206 # 80026000 <disk>
    800090d6:	6789                	lui	a5,0x2
    800090d8:	97ba                	add	a5,a5,a4
    800090da:	679c                	ld	a5,8(a5)
    800090dc:	0027d783          	lhu	a5,2(a5) # 2002 <_entry-0x7fffdffe>
    800090e0:	2781                	sext.w	a5,a5
    800090e2:	8b9d                	andi	a5,a5,7
    800090e4:	2781                	sext.w	a5,a5
    800090e6:	03061713          	slli	a4,a2,0x30
    800090ea:	9341                	srli	a4,a4,0x30
    800090ec:	0786                	slli	a5,a5,0x1
    800090ee:	97b6                	add	a5,a5,a3
    800090f0:	00e79223          	sh	a4,4(a5)
    800090f4:	0ff0000f          	fence
    800090f8:	0001d717          	auipc	a4,0x1d
    800090fc:	f0870713          	addi	a4,a4,-248 # 80026000 <disk>
    80009100:	6789                	lui	a5,0x2
    80009102:	97ba                	add	a5,a5,a4
    80009104:	679c                	ld	a5,8(a5)
    80009106:	0027d703          	lhu	a4,2(a5) # 2002 <_entry-0x7fffdffe>
    8000910a:	0001d697          	auipc	a3,0x1d
    8000910e:	ef668693          	addi	a3,a3,-266 # 80026000 <disk>
    80009112:	6789                	lui	a5,0x2
    80009114:	97b6                	add	a5,a5,a3
    80009116:	679c                	ld	a5,8(a5)
    80009118:	2705                	addiw	a4,a4,1
    8000911a:	1742                	slli	a4,a4,0x30
    8000911c:	9341                	srli	a4,a4,0x30
    8000911e:	00e79123          	sh	a4,2(a5) # 2002 <_entry-0x7fffdffe>
    80009122:	0ff0000f          	fence
    80009126:	100017b7          	lui	a5,0x10001
    8000912a:	05078793          	addi	a5,a5,80 # 10001050 <_entry-0x6fffefb0>
    8000912e:	0007a023          	sw	zero,0(a5)
    80009132:	a819                	j	80009148 <virtio_disk_rw+0x34e>
    80009134:	0001f597          	auipc	a1,0x1f
    80009138:	ff458593          	addi	a1,a1,-12 # 80028128 <disk+0x2128>
    8000913c:	fc843503          	ld	a0,-56(s0)
    80009140:	ffffa097          	auipc	ra,0xffffa
    80009144:	27e080e7          	jalr	638(ra) # 800033be <sleep>
    80009148:	fc843783          	ld	a5,-56(s0)
    8000914c:	43dc                	lw	a5,4(a5)
    8000914e:	873e                	mv	a4,a5
    80009150:	4785                	li	a5,1
    80009152:	fef701e3          	beq	a4,a5,80009134 <virtio_disk_rw+0x33a>
    80009156:	fd042783          	lw	a5,-48(s0)
    8000915a:	0001d717          	auipc	a4,0x1d
    8000915e:	ea670713          	addi	a4,a4,-346 # 80026000 <disk>
    80009162:	20078793          	addi	a5,a5,512
    80009166:	0792                	slli	a5,a5,0x4
    80009168:	97ba                	add	a5,a5,a4
    8000916a:	0207b423          	sd	zero,40(a5)
    8000916e:	fd042783          	lw	a5,-48(s0)
    80009172:	853e                	mv	a0,a5
    80009174:	00000097          	auipc	ra,0x0
    80009178:	b6c080e7          	jalr	-1172(ra) # 80008ce0 <free_chain>
    8000917c:	0001f517          	auipc	a0,0x1f
    80009180:	fac50513          	addi	a0,a0,-84 # 80028128 <disk+0x2128>
    80009184:	ffff8097          	auipc	ra,0xffff8
    80009188:	160080e7          	jalr	352(ra) # 800012e4 <release>
    8000918c:	0001                	nop
    8000918e:	70e2                	ld	ra,56(sp)
    80009190:	7442                	ld	s0,48(sp)
    80009192:	6121                	addi	sp,sp,64
    80009194:	8082                	ret

0000000080009196 <virtio_disk_intr>:
    80009196:	1101                	addi	sp,sp,-32
    80009198:	ec06                	sd	ra,24(sp)
    8000919a:	e822                	sd	s0,16(sp)
    8000919c:	1000                	addi	s0,sp,32
    8000919e:	0001f517          	auipc	a0,0x1f
    800091a2:	f8a50513          	addi	a0,a0,-118 # 80028128 <disk+0x2128>
    800091a6:	ffff8097          	auipc	ra,0xffff8
    800091aa:	0da080e7          	jalr	218(ra) # 80001280 <acquire>
    800091ae:	100017b7          	lui	a5,0x10001
    800091b2:	06078793          	addi	a5,a5,96 # 10001060 <_entry-0x6fffefa0>
    800091b6:	439c                	lw	a5,0(a5)
    800091b8:	0007871b          	sext.w	a4,a5
    800091bc:	100017b7          	lui	a5,0x10001
    800091c0:	06478793          	addi	a5,a5,100 # 10001064 <_entry-0x6fffef9c>
    800091c4:	8b0d                	andi	a4,a4,3
    800091c6:	2701                	sext.w	a4,a4
    800091c8:	c398                	sw	a4,0(a5)
    800091ca:	0ff0000f          	fence
    800091ce:	a855                	j	80009282 <virtio_disk_intr+0xec>
    800091d0:	0ff0000f          	fence
    800091d4:	0001d717          	auipc	a4,0x1d
    800091d8:	e2c70713          	addi	a4,a4,-468 # 80026000 <disk>
    800091dc:	6789                	lui	a5,0x2
    800091de:	97ba                	add	a5,a5,a4
    800091e0:	6b98                	ld	a4,16(a5)
    800091e2:	0001d697          	auipc	a3,0x1d
    800091e6:	e1e68693          	addi	a3,a3,-482 # 80026000 <disk>
    800091ea:	6789                	lui	a5,0x2
    800091ec:	97b6                	add	a5,a5,a3
    800091ee:	0207d783          	lhu	a5,32(a5) # 2020 <_entry-0x7fffdfe0>
    800091f2:	2781                	sext.w	a5,a5
    800091f4:	8b9d                	andi	a5,a5,7
    800091f6:	2781                	sext.w	a5,a5
    800091f8:	078e                	slli	a5,a5,0x3
    800091fa:	97ba                	add	a5,a5,a4
    800091fc:	43dc                	lw	a5,4(a5)
    800091fe:	fef42623          	sw	a5,-20(s0)
    80009202:	0001d717          	auipc	a4,0x1d
    80009206:	dfe70713          	addi	a4,a4,-514 # 80026000 <disk>
    8000920a:	fec42783          	lw	a5,-20(s0)
    8000920e:	20078793          	addi	a5,a5,512
    80009212:	0792                	slli	a5,a5,0x4
    80009214:	97ba                	add	a5,a5,a4
    80009216:	0307c783          	lbu	a5,48(a5)
    8000921a:	cb89                	beqz	a5,8000922c <virtio_disk_intr+0x96>
    8000921c:	00002517          	auipc	a0,0x2
    80009220:	51450513          	addi	a0,a0,1300 # 8000b730 <etext+0x730>
    80009224:	ffff8097          	auipc	ra,0xffff8
    80009228:	a2e080e7          	jalr	-1490(ra) # 80000c52 <panic>
    8000922c:	0001d717          	auipc	a4,0x1d
    80009230:	dd470713          	addi	a4,a4,-556 # 80026000 <disk>
    80009234:	fec42783          	lw	a5,-20(s0)
    80009238:	20078793          	addi	a5,a5,512
    8000923c:	0792                	slli	a5,a5,0x4
    8000923e:	97ba                	add	a5,a5,a4
    80009240:	779c                	ld	a5,40(a5)
    80009242:	fef43023          	sd	a5,-32(s0)
    80009246:	fe043783          	ld	a5,-32(s0)
    8000924a:	0007a223          	sw	zero,4(a5)
    8000924e:	fe043503          	ld	a0,-32(s0)
    80009252:	ffffa097          	auipc	ra,0xffffa
    80009256:	200080e7          	jalr	512(ra) # 80003452 <wakeup>
    8000925a:	0001d717          	auipc	a4,0x1d
    8000925e:	da670713          	addi	a4,a4,-602 # 80026000 <disk>
    80009262:	6789                	lui	a5,0x2
    80009264:	97ba                	add	a5,a5,a4
    80009266:	0207d783          	lhu	a5,32(a5) # 2020 <_entry-0x7fffdfe0>
    8000926a:	2785                	addiw	a5,a5,1
    8000926c:	03079713          	slli	a4,a5,0x30
    80009270:	9341                	srli	a4,a4,0x30
    80009272:	0001d697          	auipc	a3,0x1d
    80009276:	d8e68693          	addi	a3,a3,-626 # 80026000 <disk>
    8000927a:	6789                	lui	a5,0x2
    8000927c:	97b6                	add	a5,a5,a3
    8000927e:	02e79023          	sh	a4,32(a5) # 2020 <_entry-0x7fffdfe0>
    80009282:	0001d717          	auipc	a4,0x1d
    80009286:	d7e70713          	addi	a4,a4,-642 # 80026000 <disk>
    8000928a:	6789                	lui	a5,0x2
    8000928c:	97ba                	add	a5,a5,a4
    8000928e:	0207d683          	lhu	a3,32(a5) # 2020 <_entry-0x7fffdfe0>
    80009292:	0001d717          	auipc	a4,0x1d
    80009296:	d6e70713          	addi	a4,a4,-658 # 80026000 <disk>
    8000929a:	6789                	lui	a5,0x2
    8000929c:	97ba                	add	a5,a5,a4
    8000929e:	6b9c                	ld	a5,16(a5)
    800092a0:	0027d783          	lhu	a5,2(a5) # 2002 <_entry-0x7fffdffe>
    800092a4:	0006871b          	sext.w	a4,a3
    800092a8:	2781                	sext.w	a5,a5
    800092aa:	f2f713e3          	bne	a4,a5,800091d0 <virtio_disk_intr+0x3a>
    800092ae:	0001f517          	auipc	a0,0x1f
    800092b2:	e7a50513          	addi	a0,a0,-390 # 80028128 <disk+0x2128>
    800092b6:	ffff8097          	auipc	ra,0xffff8
    800092ba:	02e080e7          	jalr	46(ra) # 800012e4 <release>
    800092be:	0001                	nop
    800092c0:	60e2                	ld	ra,24(sp)
    800092c2:	6442                	ld	s0,16(sp)
    800092c4:	6105                	addi	sp,sp,32
    800092c6:	8082                	ret
	...

000000008000a000 <_trampoline>:
    8000a000:	14051573          	csrrw	a0,sscratch,a0
    8000a004:	02153423          	sd	ra,40(a0)
    8000a008:	02253823          	sd	sp,48(a0)
    8000a00c:	02353c23          	sd	gp,56(a0)
    8000a010:	04453023          	sd	tp,64(a0)
    8000a014:	04553423          	sd	t0,72(a0)
    8000a018:	04653823          	sd	t1,80(a0)
    8000a01c:	04753c23          	sd	t2,88(a0)
    8000a020:	f120                	sd	s0,96(a0)
    8000a022:	f524                	sd	s1,104(a0)
    8000a024:	fd2c                	sd	a1,120(a0)
    8000a026:	e150                	sd	a2,128(a0)
    8000a028:	e554                	sd	a3,136(a0)
    8000a02a:	e958                	sd	a4,144(a0)
    8000a02c:	ed5c                	sd	a5,152(a0)
    8000a02e:	0b053023          	sd	a6,160(a0)
    8000a032:	0b153423          	sd	a7,168(a0)
    8000a036:	0b253823          	sd	s2,176(a0)
    8000a03a:	0b353c23          	sd	s3,184(a0)
    8000a03e:	0d453023          	sd	s4,192(a0)
    8000a042:	0d553423          	sd	s5,200(a0)
    8000a046:	0d653823          	sd	s6,208(a0)
    8000a04a:	0d753c23          	sd	s7,216(a0)
    8000a04e:	0f853023          	sd	s8,224(a0)
    8000a052:	0f953423          	sd	s9,232(a0)
    8000a056:	0fa53823          	sd	s10,240(a0)
    8000a05a:	0fb53c23          	sd	s11,248(a0)
    8000a05e:	11c53023          	sd	t3,256(a0)
    8000a062:	11d53423          	sd	t4,264(a0)
    8000a066:	11e53823          	sd	t5,272(a0)
    8000a06a:	11f53c23          	sd	t6,280(a0)
    8000a06e:	140022f3          	csrr	t0,sscratch
    8000a072:	06553823          	sd	t0,112(a0)
    8000a076:	00853103          	ld	sp,8(a0)
    8000a07a:	02053203          	ld	tp,32(a0)
    8000a07e:	01053283          	ld	t0,16(a0)
    8000a082:	00053303          	ld	t1,0(a0)
    8000a086:	18031073          	csrw	satp,t1
    8000a08a:	12000073          	sfence.vma
    8000a08e:	8282                	jr	t0

000000008000a090 <userret>:
    8000a090:	18059073          	csrw	satp,a1
    8000a094:	12000073          	sfence.vma
    8000a098:	07053283          	ld	t0,112(a0)
    8000a09c:	14029073          	csrw	sscratch,t0
    8000a0a0:	02853083          	ld	ra,40(a0)
    8000a0a4:	03053103          	ld	sp,48(a0)
    8000a0a8:	03853183          	ld	gp,56(a0)
    8000a0ac:	04053203          	ld	tp,64(a0)
    8000a0b0:	04853283          	ld	t0,72(a0)
    8000a0b4:	05053303          	ld	t1,80(a0)
    8000a0b8:	05853383          	ld	t2,88(a0)
    8000a0bc:	7120                	ld	s0,96(a0)
    8000a0be:	7524                	ld	s1,104(a0)
    8000a0c0:	7d2c                	ld	a1,120(a0)
    8000a0c2:	6150                	ld	a2,128(a0)
    8000a0c4:	6554                	ld	a3,136(a0)
    8000a0c6:	6958                	ld	a4,144(a0)
    8000a0c8:	6d5c                	ld	a5,152(a0)
    8000a0ca:	0a053803          	ld	a6,160(a0)
    8000a0ce:	0a853883          	ld	a7,168(a0)
    8000a0d2:	0b053903          	ld	s2,176(a0)
    8000a0d6:	0b853983          	ld	s3,184(a0)
    8000a0da:	0c053a03          	ld	s4,192(a0)
    8000a0de:	0c853a83          	ld	s5,200(a0)
    8000a0e2:	0d053b03          	ld	s6,208(a0)
    8000a0e6:	0d853b83          	ld	s7,216(a0)
    8000a0ea:	0e053c03          	ld	s8,224(a0)
    8000a0ee:	0e853c83          	ld	s9,232(a0)
    8000a0f2:	0f053d03          	ld	s10,240(a0)
    8000a0f6:	0f853d83          	ld	s11,248(a0)
    8000a0fa:	10053e03          	ld	t3,256(a0)
    8000a0fe:	10853e83          	ld	t4,264(a0)
    8000a102:	11053f03          	ld	t5,272(a0)
    8000a106:	11853f83          	ld	t6,280(a0)
    8000a10a:	14051573          	csrrw	a0,sscratch,a0
    8000a10e:	10200073          	sret
	...
