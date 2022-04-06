
user/_stressfs:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	dc010113          	addi	sp,sp,-576
   4:	22113c23          	sd	ra,568(sp)
   8:	22813823          	sd	s0,560(sp)
   c:	0480                	addi	s0,sp,576
   e:	87aa                	mv	a5,a0
  10:	dcb43023          	sd	a1,-576(s0)
  14:	dcf42623          	sw	a5,-564(s0)
  18:	00001797          	auipc	a5,0x1
  1c:	f0878793          	addi	a5,a5,-248 # f20 <longjmp_1+0x36>
  20:	6398                	ld	a4,0(a5)
  22:	fce43c23          	sd	a4,-40(s0)
  26:	0087d783          	lhu	a5,8(a5)
  2a:	fef41023          	sh	a5,-32(s0)
  2e:	00001517          	auipc	a0,0x1
  32:	ec250513          	addi	a0,a0,-318 # ef0 <longjmp_1+0x6>
  36:	00001097          	auipc	ra,0x1
  3a:	b12080e7          	jalr	-1262(ra) # b48 <printf>
  3e:	dd840793          	addi	a5,s0,-552
  42:	20000613          	li	a2,512
  46:	06100593          	li	a1,97
  4a:	853e                	mv	a0,a5
  4c:	00000097          	auipc	ra,0x0
  50:	224080e7          	jalr	548(ra) # 270 <memset>
  54:	fe042623          	sw	zero,-20(s0)
  58:	a829                	j	72 <main+0x72>
  5a:	00000097          	auipc	ra,0x0
  5e:	5b8080e7          	jalr	1464(ra) # 612 <fork>
  62:	87aa                	mv	a5,a0
  64:	00f04f63          	bgtz	a5,82 <main+0x82>
  68:	fec42783          	lw	a5,-20(s0)
  6c:	2785                	addiw	a5,a5,1
  6e:	fef42623          	sw	a5,-20(s0)
  72:	fec42783          	lw	a5,-20(s0)
  76:	0007871b          	sext.w	a4,a5
  7a:	478d                	li	a5,3
  7c:	fce7dfe3          	bge	a5,a4,5a <main+0x5a>
  80:	a011                	j	84 <main+0x84>
  82:	0001                	nop
  84:	fec42783          	lw	a5,-20(s0)
  88:	85be                	mv	a1,a5
  8a:	00001517          	auipc	a0,0x1
  8e:	e7e50513          	addi	a0,a0,-386 # f08 <longjmp_1+0x1e>
  92:	00001097          	auipc	ra,0x1
  96:	ab6080e7          	jalr	-1354(ra) # b48 <printf>
  9a:	fe044703          	lbu	a4,-32(s0)
  9e:	fec42783          	lw	a5,-20(s0)
  a2:	0ff7f793          	andi	a5,a5,255
  a6:	9fb9                	addw	a5,a5,a4
  a8:	0ff7f793          	andi	a5,a5,255
  ac:	fef40023          	sb	a5,-32(s0)
  b0:	fd840793          	addi	a5,s0,-40
  b4:	20200593          	li	a1,514
  b8:	853e                	mv	a0,a5
  ba:	00000097          	auipc	ra,0x0
  be:	5a0080e7          	jalr	1440(ra) # 65a <open>
  c2:	87aa                	mv	a5,a0
  c4:	fef42423          	sw	a5,-24(s0)
  c8:	fe042623          	sw	zero,-20(s0)
  cc:	a015                	j	f0 <main+0xf0>
  ce:	dd840713          	addi	a4,s0,-552
  d2:	fe842783          	lw	a5,-24(s0)
  d6:	20000613          	li	a2,512
  da:	85ba                	mv	a1,a4
  dc:	853e                	mv	a0,a5
  de:	00000097          	auipc	ra,0x0
  e2:	55c080e7          	jalr	1372(ra) # 63a <write>
  e6:	fec42783          	lw	a5,-20(s0)
  ea:	2785                	addiw	a5,a5,1
  ec:	fef42623          	sw	a5,-20(s0)
  f0:	fec42783          	lw	a5,-20(s0)
  f4:	0007871b          	sext.w	a4,a5
  f8:	47cd                	li	a5,19
  fa:	fce7dae3          	bge	a5,a4,ce <main+0xce>
  fe:	fe842783          	lw	a5,-24(s0)
 102:	853e                	mv	a0,a5
 104:	00000097          	auipc	ra,0x0
 108:	53e080e7          	jalr	1342(ra) # 642 <close>
 10c:	00001517          	auipc	a0,0x1
 110:	e0c50513          	addi	a0,a0,-500 # f18 <longjmp_1+0x2e>
 114:	00001097          	auipc	ra,0x1
 118:	a34080e7          	jalr	-1484(ra) # b48 <printf>
 11c:	fd840793          	addi	a5,s0,-40
 120:	4581                	li	a1,0
 122:	853e                	mv	a0,a5
 124:	00000097          	auipc	ra,0x0
 128:	536080e7          	jalr	1334(ra) # 65a <open>
 12c:	87aa                	mv	a5,a0
 12e:	fef42423          	sw	a5,-24(s0)
 132:	fe042623          	sw	zero,-20(s0)
 136:	a015                	j	15a <main+0x15a>
 138:	dd840713          	addi	a4,s0,-552
 13c:	fe842783          	lw	a5,-24(s0)
 140:	20000613          	li	a2,512
 144:	85ba                	mv	a1,a4
 146:	853e                	mv	a0,a5
 148:	00000097          	auipc	ra,0x0
 14c:	4ea080e7          	jalr	1258(ra) # 632 <read>
 150:	fec42783          	lw	a5,-20(s0)
 154:	2785                	addiw	a5,a5,1
 156:	fef42623          	sw	a5,-20(s0)
 15a:	fec42783          	lw	a5,-20(s0)
 15e:	0007871b          	sext.w	a4,a5
 162:	47cd                	li	a5,19
 164:	fce7dae3          	bge	a5,a4,138 <main+0x138>
 168:	fe842783          	lw	a5,-24(s0)
 16c:	853e                	mv	a0,a5
 16e:	00000097          	auipc	ra,0x0
 172:	4d4080e7          	jalr	1236(ra) # 642 <close>
 176:	4501                	li	a0,0
 178:	00000097          	auipc	ra,0x0
 17c:	4aa080e7          	jalr	1194(ra) # 622 <wait>
 180:	4501                	li	a0,0
 182:	00000097          	auipc	ra,0x0
 186:	498080e7          	jalr	1176(ra) # 61a <exit>

000000000000018a <strcpy>:
 18a:	7179                	addi	sp,sp,-48
 18c:	f422                	sd	s0,40(sp)
 18e:	1800                	addi	s0,sp,48
 190:	fca43c23          	sd	a0,-40(s0)
 194:	fcb43823          	sd	a1,-48(s0)
 198:	fd843783          	ld	a5,-40(s0)
 19c:	fef43423          	sd	a5,-24(s0)
 1a0:	0001                	nop
 1a2:	fd043703          	ld	a4,-48(s0)
 1a6:	00170793          	addi	a5,a4,1
 1aa:	fcf43823          	sd	a5,-48(s0)
 1ae:	fd843783          	ld	a5,-40(s0)
 1b2:	00178693          	addi	a3,a5,1
 1b6:	fcd43c23          	sd	a3,-40(s0)
 1ba:	00074703          	lbu	a4,0(a4)
 1be:	00e78023          	sb	a4,0(a5)
 1c2:	0007c783          	lbu	a5,0(a5)
 1c6:	fff1                	bnez	a5,1a2 <strcpy+0x18>
 1c8:	fe843783          	ld	a5,-24(s0)
 1cc:	853e                	mv	a0,a5
 1ce:	7422                	ld	s0,40(sp)
 1d0:	6145                	addi	sp,sp,48
 1d2:	8082                	ret

00000000000001d4 <strcmp>:
 1d4:	1101                	addi	sp,sp,-32
 1d6:	ec22                	sd	s0,24(sp)
 1d8:	1000                	addi	s0,sp,32
 1da:	fea43423          	sd	a0,-24(s0)
 1de:	feb43023          	sd	a1,-32(s0)
 1e2:	a819                	j	1f8 <strcmp+0x24>
 1e4:	fe843783          	ld	a5,-24(s0)
 1e8:	0785                	addi	a5,a5,1
 1ea:	fef43423          	sd	a5,-24(s0)
 1ee:	fe043783          	ld	a5,-32(s0)
 1f2:	0785                	addi	a5,a5,1
 1f4:	fef43023          	sd	a5,-32(s0)
 1f8:	fe843783          	ld	a5,-24(s0)
 1fc:	0007c783          	lbu	a5,0(a5)
 200:	cb99                	beqz	a5,216 <strcmp+0x42>
 202:	fe843783          	ld	a5,-24(s0)
 206:	0007c703          	lbu	a4,0(a5)
 20a:	fe043783          	ld	a5,-32(s0)
 20e:	0007c783          	lbu	a5,0(a5)
 212:	fcf709e3          	beq	a4,a5,1e4 <strcmp+0x10>
 216:	fe843783          	ld	a5,-24(s0)
 21a:	0007c783          	lbu	a5,0(a5)
 21e:	0007871b          	sext.w	a4,a5
 222:	fe043783          	ld	a5,-32(s0)
 226:	0007c783          	lbu	a5,0(a5)
 22a:	2781                	sext.w	a5,a5
 22c:	40f707bb          	subw	a5,a4,a5
 230:	2781                	sext.w	a5,a5
 232:	853e                	mv	a0,a5
 234:	6462                	ld	s0,24(sp)
 236:	6105                	addi	sp,sp,32
 238:	8082                	ret

000000000000023a <strlen>:
 23a:	7179                	addi	sp,sp,-48
 23c:	f422                	sd	s0,40(sp)
 23e:	1800                	addi	s0,sp,48
 240:	fca43c23          	sd	a0,-40(s0)
 244:	fe042623          	sw	zero,-20(s0)
 248:	a031                	j	254 <strlen+0x1a>
 24a:	fec42783          	lw	a5,-20(s0)
 24e:	2785                	addiw	a5,a5,1
 250:	fef42623          	sw	a5,-20(s0)
 254:	fec42783          	lw	a5,-20(s0)
 258:	fd843703          	ld	a4,-40(s0)
 25c:	97ba                	add	a5,a5,a4
 25e:	0007c783          	lbu	a5,0(a5)
 262:	f7e5                	bnez	a5,24a <strlen+0x10>
 264:	fec42783          	lw	a5,-20(s0)
 268:	853e                	mv	a0,a5
 26a:	7422                	ld	s0,40(sp)
 26c:	6145                	addi	sp,sp,48
 26e:	8082                	ret

0000000000000270 <memset>:
 270:	7179                	addi	sp,sp,-48
 272:	f422                	sd	s0,40(sp)
 274:	1800                	addi	s0,sp,48
 276:	fca43c23          	sd	a0,-40(s0)
 27a:	87ae                	mv	a5,a1
 27c:	8732                	mv	a4,a2
 27e:	fcf42a23          	sw	a5,-44(s0)
 282:	87ba                	mv	a5,a4
 284:	fcf42823          	sw	a5,-48(s0)
 288:	fd843783          	ld	a5,-40(s0)
 28c:	fef43023          	sd	a5,-32(s0)
 290:	fe042623          	sw	zero,-20(s0)
 294:	a00d                	j	2b6 <memset+0x46>
 296:	fec42783          	lw	a5,-20(s0)
 29a:	fe043703          	ld	a4,-32(s0)
 29e:	97ba                	add	a5,a5,a4
 2a0:	fd442703          	lw	a4,-44(s0)
 2a4:	0ff77713          	andi	a4,a4,255
 2a8:	00e78023          	sb	a4,0(a5)
 2ac:	fec42783          	lw	a5,-20(s0)
 2b0:	2785                	addiw	a5,a5,1
 2b2:	fef42623          	sw	a5,-20(s0)
 2b6:	fec42703          	lw	a4,-20(s0)
 2ba:	fd042783          	lw	a5,-48(s0)
 2be:	2781                	sext.w	a5,a5
 2c0:	fcf76be3          	bltu	a4,a5,296 <memset+0x26>
 2c4:	fd843783          	ld	a5,-40(s0)
 2c8:	853e                	mv	a0,a5
 2ca:	7422                	ld	s0,40(sp)
 2cc:	6145                	addi	sp,sp,48
 2ce:	8082                	ret

00000000000002d0 <strchr>:
 2d0:	1101                	addi	sp,sp,-32
 2d2:	ec22                	sd	s0,24(sp)
 2d4:	1000                	addi	s0,sp,32
 2d6:	fea43423          	sd	a0,-24(s0)
 2da:	87ae                	mv	a5,a1
 2dc:	fef403a3          	sb	a5,-25(s0)
 2e0:	a01d                	j	306 <strchr+0x36>
 2e2:	fe843783          	ld	a5,-24(s0)
 2e6:	0007c703          	lbu	a4,0(a5)
 2ea:	fe744783          	lbu	a5,-25(s0)
 2ee:	0ff7f793          	andi	a5,a5,255
 2f2:	00e79563          	bne	a5,a4,2fc <strchr+0x2c>
 2f6:	fe843783          	ld	a5,-24(s0)
 2fa:	a821                	j	312 <strchr+0x42>
 2fc:	fe843783          	ld	a5,-24(s0)
 300:	0785                	addi	a5,a5,1
 302:	fef43423          	sd	a5,-24(s0)
 306:	fe843783          	ld	a5,-24(s0)
 30a:	0007c783          	lbu	a5,0(a5)
 30e:	fbf1                	bnez	a5,2e2 <strchr+0x12>
 310:	4781                	li	a5,0
 312:	853e                	mv	a0,a5
 314:	6462                	ld	s0,24(sp)
 316:	6105                	addi	sp,sp,32
 318:	8082                	ret

000000000000031a <gets>:
 31a:	7179                	addi	sp,sp,-48
 31c:	f406                	sd	ra,40(sp)
 31e:	f022                	sd	s0,32(sp)
 320:	1800                	addi	s0,sp,48
 322:	fca43c23          	sd	a0,-40(s0)
 326:	87ae                	mv	a5,a1
 328:	fcf42a23          	sw	a5,-44(s0)
 32c:	fe042623          	sw	zero,-20(s0)
 330:	a8a1                	j	388 <gets+0x6e>
 332:	fe740793          	addi	a5,s0,-25
 336:	4605                	li	a2,1
 338:	85be                	mv	a1,a5
 33a:	4501                	li	a0,0
 33c:	00000097          	auipc	ra,0x0
 340:	2f6080e7          	jalr	758(ra) # 632 <read>
 344:	87aa                	mv	a5,a0
 346:	fef42423          	sw	a5,-24(s0)
 34a:	fe842783          	lw	a5,-24(s0)
 34e:	2781                	sext.w	a5,a5
 350:	04f05763          	blez	a5,39e <gets+0x84>
 354:	fec42783          	lw	a5,-20(s0)
 358:	0017871b          	addiw	a4,a5,1
 35c:	fee42623          	sw	a4,-20(s0)
 360:	873e                	mv	a4,a5
 362:	fd843783          	ld	a5,-40(s0)
 366:	97ba                	add	a5,a5,a4
 368:	fe744703          	lbu	a4,-25(s0)
 36c:	00e78023          	sb	a4,0(a5)
 370:	fe744783          	lbu	a5,-25(s0)
 374:	873e                	mv	a4,a5
 376:	47a9                	li	a5,10
 378:	02f70463          	beq	a4,a5,3a0 <gets+0x86>
 37c:	fe744783          	lbu	a5,-25(s0)
 380:	873e                	mv	a4,a5
 382:	47b5                	li	a5,13
 384:	00f70e63          	beq	a4,a5,3a0 <gets+0x86>
 388:	fec42783          	lw	a5,-20(s0)
 38c:	2785                	addiw	a5,a5,1
 38e:	0007871b          	sext.w	a4,a5
 392:	fd442783          	lw	a5,-44(s0)
 396:	2781                	sext.w	a5,a5
 398:	f8f74de3          	blt	a4,a5,332 <gets+0x18>
 39c:	a011                	j	3a0 <gets+0x86>
 39e:	0001                	nop
 3a0:	fec42783          	lw	a5,-20(s0)
 3a4:	fd843703          	ld	a4,-40(s0)
 3a8:	97ba                	add	a5,a5,a4
 3aa:	00078023          	sb	zero,0(a5)
 3ae:	fd843783          	ld	a5,-40(s0)
 3b2:	853e                	mv	a0,a5
 3b4:	70a2                	ld	ra,40(sp)
 3b6:	7402                	ld	s0,32(sp)
 3b8:	6145                	addi	sp,sp,48
 3ba:	8082                	ret

00000000000003bc <stat>:
 3bc:	7179                	addi	sp,sp,-48
 3be:	f406                	sd	ra,40(sp)
 3c0:	f022                	sd	s0,32(sp)
 3c2:	1800                	addi	s0,sp,48
 3c4:	fca43c23          	sd	a0,-40(s0)
 3c8:	fcb43823          	sd	a1,-48(s0)
 3cc:	4581                	li	a1,0
 3ce:	fd843503          	ld	a0,-40(s0)
 3d2:	00000097          	auipc	ra,0x0
 3d6:	288080e7          	jalr	648(ra) # 65a <open>
 3da:	87aa                	mv	a5,a0
 3dc:	fef42623          	sw	a5,-20(s0)
 3e0:	fec42783          	lw	a5,-20(s0)
 3e4:	2781                	sext.w	a5,a5
 3e6:	0007d463          	bgez	a5,3ee <stat+0x32>
 3ea:	57fd                	li	a5,-1
 3ec:	a035                	j	418 <stat+0x5c>
 3ee:	fec42783          	lw	a5,-20(s0)
 3f2:	fd043583          	ld	a1,-48(s0)
 3f6:	853e                	mv	a0,a5
 3f8:	00000097          	auipc	ra,0x0
 3fc:	27a080e7          	jalr	634(ra) # 672 <fstat>
 400:	87aa                	mv	a5,a0
 402:	fef42423          	sw	a5,-24(s0)
 406:	fec42783          	lw	a5,-20(s0)
 40a:	853e                	mv	a0,a5
 40c:	00000097          	auipc	ra,0x0
 410:	236080e7          	jalr	566(ra) # 642 <close>
 414:	fe842783          	lw	a5,-24(s0)
 418:	853e                	mv	a0,a5
 41a:	70a2                	ld	ra,40(sp)
 41c:	7402                	ld	s0,32(sp)
 41e:	6145                	addi	sp,sp,48
 420:	8082                	ret

0000000000000422 <atoi>:
 422:	7179                	addi	sp,sp,-48
 424:	f422                	sd	s0,40(sp)
 426:	1800                	addi	s0,sp,48
 428:	fca43c23          	sd	a0,-40(s0)
 42c:	fe042623          	sw	zero,-20(s0)
 430:	a815                	j	464 <atoi+0x42>
 432:	fec42703          	lw	a4,-20(s0)
 436:	87ba                	mv	a5,a4
 438:	0027979b          	slliw	a5,a5,0x2
 43c:	9fb9                	addw	a5,a5,a4
 43e:	0017979b          	slliw	a5,a5,0x1
 442:	0007871b          	sext.w	a4,a5
 446:	fd843783          	ld	a5,-40(s0)
 44a:	00178693          	addi	a3,a5,1
 44e:	fcd43c23          	sd	a3,-40(s0)
 452:	0007c783          	lbu	a5,0(a5)
 456:	2781                	sext.w	a5,a5
 458:	9fb9                	addw	a5,a5,a4
 45a:	2781                	sext.w	a5,a5
 45c:	fd07879b          	addiw	a5,a5,-48
 460:	fef42623          	sw	a5,-20(s0)
 464:	fd843783          	ld	a5,-40(s0)
 468:	0007c783          	lbu	a5,0(a5)
 46c:	873e                	mv	a4,a5
 46e:	02f00793          	li	a5,47
 472:	00e7fb63          	bgeu	a5,a4,488 <atoi+0x66>
 476:	fd843783          	ld	a5,-40(s0)
 47a:	0007c783          	lbu	a5,0(a5)
 47e:	873e                	mv	a4,a5
 480:	03900793          	li	a5,57
 484:	fae7f7e3          	bgeu	a5,a4,432 <atoi+0x10>
 488:	fec42783          	lw	a5,-20(s0)
 48c:	853e                	mv	a0,a5
 48e:	7422                	ld	s0,40(sp)
 490:	6145                	addi	sp,sp,48
 492:	8082                	ret

0000000000000494 <memmove>:
 494:	7139                	addi	sp,sp,-64
 496:	fc22                	sd	s0,56(sp)
 498:	0080                	addi	s0,sp,64
 49a:	fca43c23          	sd	a0,-40(s0)
 49e:	fcb43823          	sd	a1,-48(s0)
 4a2:	87b2                	mv	a5,a2
 4a4:	fcf42623          	sw	a5,-52(s0)
 4a8:	fd843783          	ld	a5,-40(s0)
 4ac:	fef43423          	sd	a5,-24(s0)
 4b0:	fd043783          	ld	a5,-48(s0)
 4b4:	fef43023          	sd	a5,-32(s0)
 4b8:	fe043703          	ld	a4,-32(s0)
 4bc:	fe843783          	ld	a5,-24(s0)
 4c0:	02e7fc63          	bgeu	a5,a4,4f8 <memmove+0x64>
 4c4:	a00d                	j	4e6 <memmove+0x52>
 4c6:	fe043703          	ld	a4,-32(s0)
 4ca:	00170793          	addi	a5,a4,1
 4ce:	fef43023          	sd	a5,-32(s0)
 4d2:	fe843783          	ld	a5,-24(s0)
 4d6:	00178693          	addi	a3,a5,1
 4da:	fed43423          	sd	a3,-24(s0)
 4de:	00074703          	lbu	a4,0(a4)
 4e2:	00e78023          	sb	a4,0(a5)
 4e6:	fcc42783          	lw	a5,-52(s0)
 4ea:	fff7871b          	addiw	a4,a5,-1
 4ee:	fce42623          	sw	a4,-52(s0)
 4f2:	fcf04ae3          	bgtz	a5,4c6 <memmove+0x32>
 4f6:	a891                	j	54a <memmove+0xb6>
 4f8:	fcc42783          	lw	a5,-52(s0)
 4fc:	fe843703          	ld	a4,-24(s0)
 500:	97ba                	add	a5,a5,a4
 502:	fef43423          	sd	a5,-24(s0)
 506:	fcc42783          	lw	a5,-52(s0)
 50a:	fe043703          	ld	a4,-32(s0)
 50e:	97ba                	add	a5,a5,a4
 510:	fef43023          	sd	a5,-32(s0)
 514:	a01d                	j	53a <memmove+0xa6>
 516:	fe043783          	ld	a5,-32(s0)
 51a:	17fd                	addi	a5,a5,-1
 51c:	fef43023          	sd	a5,-32(s0)
 520:	fe843783          	ld	a5,-24(s0)
 524:	17fd                	addi	a5,a5,-1
 526:	fef43423          	sd	a5,-24(s0)
 52a:	fe043783          	ld	a5,-32(s0)
 52e:	0007c703          	lbu	a4,0(a5)
 532:	fe843783          	ld	a5,-24(s0)
 536:	00e78023          	sb	a4,0(a5)
 53a:	fcc42783          	lw	a5,-52(s0)
 53e:	fff7871b          	addiw	a4,a5,-1
 542:	fce42623          	sw	a4,-52(s0)
 546:	fcf048e3          	bgtz	a5,516 <memmove+0x82>
 54a:	fd843783          	ld	a5,-40(s0)
 54e:	853e                	mv	a0,a5
 550:	7462                	ld	s0,56(sp)
 552:	6121                	addi	sp,sp,64
 554:	8082                	ret

0000000000000556 <memcmp>:
 556:	7139                	addi	sp,sp,-64
 558:	fc22                	sd	s0,56(sp)
 55a:	0080                	addi	s0,sp,64
 55c:	fca43c23          	sd	a0,-40(s0)
 560:	fcb43823          	sd	a1,-48(s0)
 564:	87b2                	mv	a5,a2
 566:	fcf42623          	sw	a5,-52(s0)
 56a:	fd843783          	ld	a5,-40(s0)
 56e:	fef43423          	sd	a5,-24(s0)
 572:	fd043783          	ld	a5,-48(s0)
 576:	fef43023          	sd	a5,-32(s0)
 57a:	a0a1                	j	5c2 <memcmp+0x6c>
 57c:	fe843783          	ld	a5,-24(s0)
 580:	0007c703          	lbu	a4,0(a5)
 584:	fe043783          	ld	a5,-32(s0)
 588:	0007c783          	lbu	a5,0(a5)
 58c:	02f70163          	beq	a4,a5,5ae <memcmp+0x58>
 590:	fe843783          	ld	a5,-24(s0)
 594:	0007c783          	lbu	a5,0(a5)
 598:	0007871b          	sext.w	a4,a5
 59c:	fe043783          	ld	a5,-32(s0)
 5a0:	0007c783          	lbu	a5,0(a5)
 5a4:	2781                	sext.w	a5,a5
 5a6:	40f707bb          	subw	a5,a4,a5
 5aa:	2781                	sext.w	a5,a5
 5ac:	a01d                	j	5d2 <memcmp+0x7c>
 5ae:	fe843783          	ld	a5,-24(s0)
 5b2:	0785                	addi	a5,a5,1
 5b4:	fef43423          	sd	a5,-24(s0)
 5b8:	fe043783          	ld	a5,-32(s0)
 5bc:	0785                	addi	a5,a5,1
 5be:	fef43023          	sd	a5,-32(s0)
 5c2:	fcc42783          	lw	a5,-52(s0)
 5c6:	fff7871b          	addiw	a4,a5,-1
 5ca:	fce42623          	sw	a4,-52(s0)
 5ce:	f7dd                	bnez	a5,57c <memcmp+0x26>
 5d0:	4781                	li	a5,0
 5d2:	853e                	mv	a0,a5
 5d4:	7462                	ld	s0,56(sp)
 5d6:	6121                	addi	sp,sp,64
 5d8:	8082                	ret

00000000000005da <memcpy>:
 5da:	7179                	addi	sp,sp,-48
 5dc:	f406                	sd	ra,40(sp)
 5de:	f022                	sd	s0,32(sp)
 5e0:	1800                	addi	s0,sp,48
 5e2:	fea43423          	sd	a0,-24(s0)
 5e6:	feb43023          	sd	a1,-32(s0)
 5ea:	87b2                	mv	a5,a2
 5ec:	fcf42e23          	sw	a5,-36(s0)
 5f0:	fdc42783          	lw	a5,-36(s0)
 5f4:	863e                	mv	a2,a5
 5f6:	fe043583          	ld	a1,-32(s0)
 5fa:	fe843503          	ld	a0,-24(s0)
 5fe:	00000097          	auipc	ra,0x0
 602:	e96080e7          	jalr	-362(ra) # 494 <memmove>
 606:	87aa                	mv	a5,a0
 608:	853e                	mv	a0,a5
 60a:	70a2                	ld	ra,40(sp)
 60c:	7402                	ld	s0,32(sp)
 60e:	6145                	addi	sp,sp,48
 610:	8082                	ret

0000000000000612 <fork>:
 612:	4885                	li	a7,1
 614:	00000073          	ecall
 618:	8082                	ret

000000000000061a <exit>:
 61a:	4889                	li	a7,2
 61c:	00000073          	ecall
 620:	8082                	ret

0000000000000622 <wait>:
 622:	488d                	li	a7,3
 624:	00000073          	ecall
 628:	8082                	ret

000000000000062a <pipe>:
 62a:	4891                	li	a7,4
 62c:	00000073          	ecall
 630:	8082                	ret

0000000000000632 <read>:
 632:	4895                	li	a7,5
 634:	00000073          	ecall
 638:	8082                	ret

000000000000063a <write>:
 63a:	48c1                	li	a7,16
 63c:	00000073          	ecall
 640:	8082                	ret

0000000000000642 <close>:
 642:	48d5                	li	a7,21
 644:	00000073          	ecall
 648:	8082                	ret

000000000000064a <kill>:
 64a:	4899                	li	a7,6
 64c:	00000073          	ecall
 650:	8082                	ret

0000000000000652 <exec>:
 652:	489d                	li	a7,7
 654:	00000073          	ecall
 658:	8082                	ret

000000000000065a <open>:
 65a:	48bd                	li	a7,15
 65c:	00000073          	ecall
 660:	8082                	ret

0000000000000662 <mknod>:
 662:	48c5                	li	a7,17
 664:	00000073          	ecall
 668:	8082                	ret

000000000000066a <unlink>:
 66a:	48c9                	li	a7,18
 66c:	00000073          	ecall
 670:	8082                	ret

0000000000000672 <fstat>:
 672:	48a1                	li	a7,8
 674:	00000073          	ecall
 678:	8082                	ret

000000000000067a <link>:
 67a:	48cd                	li	a7,19
 67c:	00000073          	ecall
 680:	8082                	ret

0000000000000682 <mkdir>:
 682:	48d1                	li	a7,20
 684:	00000073          	ecall
 688:	8082                	ret

000000000000068a <chdir>:
 68a:	48a5                	li	a7,9
 68c:	00000073          	ecall
 690:	8082                	ret

0000000000000692 <dup>:
 692:	48a9                	li	a7,10
 694:	00000073          	ecall
 698:	8082                	ret

000000000000069a <getpid>:
 69a:	48ad                	li	a7,11
 69c:	00000073          	ecall
 6a0:	8082                	ret

00000000000006a2 <sbrk>:
 6a2:	48b1                	li	a7,12
 6a4:	00000073          	ecall
 6a8:	8082                	ret

00000000000006aa <sleep>:
 6aa:	48b5                	li	a7,13
 6ac:	00000073          	ecall
 6b0:	8082                	ret

00000000000006b2 <uptime>:
 6b2:	48b9                	li	a7,14
 6b4:	00000073          	ecall
 6b8:	8082                	ret

00000000000006ba <putc>:
 6ba:	1101                	addi	sp,sp,-32
 6bc:	ec06                	sd	ra,24(sp)
 6be:	e822                	sd	s0,16(sp)
 6c0:	1000                	addi	s0,sp,32
 6c2:	87aa                	mv	a5,a0
 6c4:	872e                	mv	a4,a1
 6c6:	fef42623          	sw	a5,-20(s0)
 6ca:	87ba                	mv	a5,a4
 6cc:	fef405a3          	sb	a5,-21(s0)
 6d0:	feb40713          	addi	a4,s0,-21
 6d4:	fec42783          	lw	a5,-20(s0)
 6d8:	4605                	li	a2,1
 6da:	85ba                	mv	a1,a4
 6dc:	853e                	mv	a0,a5
 6de:	00000097          	auipc	ra,0x0
 6e2:	f5c080e7          	jalr	-164(ra) # 63a <write>
 6e6:	0001                	nop
 6e8:	60e2                	ld	ra,24(sp)
 6ea:	6442                	ld	s0,16(sp)
 6ec:	6105                	addi	sp,sp,32
 6ee:	8082                	ret

00000000000006f0 <printint>:
 6f0:	7139                	addi	sp,sp,-64
 6f2:	fc06                	sd	ra,56(sp)
 6f4:	f822                	sd	s0,48(sp)
 6f6:	0080                	addi	s0,sp,64
 6f8:	87aa                	mv	a5,a0
 6fa:	8736                	mv	a4,a3
 6fc:	fcf42623          	sw	a5,-52(s0)
 700:	87ae                	mv	a5,a1
 702:	fcf42423          	sw	a5,-56(s0)
 706:	87b2                	mv	a5,a2
 708:	fcf42223          	sw	a5,-60(s0)
 70c:	87ba                	mv	a5,a4
 70e:	fcf42023          	sw	a5,-64(s0)
 712:	fe042423          	sw	zero,-24(s0)
 716:	fc042783          	lw	a5,-64(s0)
 71a:	2781                	sext.w	a5,a5
 71c:	c38d                	beqz	a5,73e <printint+0x4e>
 71e:	fc842783          	lw	a5,-56(s0)
 722:	2781                	sext.w	a5,a5
 724:	0007dd63          	bgez	a5,73e <printint+0x4e>
 728:	4785                	li	a5,1
 72a:	fef42423          	sw	a5,-24(s0)
 72e:	fc842783          	lw	a5,-56(s0)
 732:	40f007bb          	negw	a5,a5
 736:	2781                	sext.w	a5,a5
 738:	fef42223          	sw	a5,-28(s0)
 73c:	a029                	j	746 <printint+0x56>
 73e:	fc842783          	lw	a5,-56(s0)
 742:	fef42223          	sw	a5,-28(s0)
 746:	fe042623          	sw	zero,-20(s0)
 74a:	fc442783          	lw	a5,-60(s0)
 74e:	fe442703          	lw	a4,-28(s0)
 752:	02f777bb          	remuw	a5,a4,a5
 756:	0007861b          	sext.w	a2,a5
 75a:	fec42783          	lw	a5,-20(s0)
 75e:	0017871b          	addiw	a4,a5,1
 762:	fee42623          	sw	a4,-20(s0)
 766:	00000697          	auipc	a3,0x0
 76a:	7d268693          	addi	a3,a3,2002 # f38 <digits>
 76e:	02061713          	slli	a4,a2,0x20
 772:	9301                	srli	a4,a4,0x20
 774:	9736                	add	a4,a4,a3
 776:	00074703          	lbu	a4,0(a4)
 77a:	ff040693          	addi	a3,s0,-16
 77e:	97b6                	add	a5,a5,a3
 780:	fee78023          	sb	a4,-32(a5)
 784:	fc442783          	lw	a5,-60(s0)
 788:	fe442703          	lw	a4,-28(s0)
 78c:	02f757bb          	divuw	a5,a4,a5
 790:	fef42223          	sw	a5,-28(s0)
 794:	fe442783          	lw	a5,-28(s0)
 798:	2781                	sext.w	a5,a5
 79a:	fbc5                	bnez	a5,74a <printint+0x5a>
 79c:	fe842783          	lw	a5,-24(s0)
 7a0:	2781                	sext.w	a5,a5
 7a2:	cf95                	beqz	a5,7de <printint+0xee>
 7a4:	fec42783          	lw	a5,-20(s0)
 7a8:	0017871b          	addiw	a4,a5,1
 7ac:	fee42623          	sw	a4,-20(s0)
 7b0:	ff040713          	addi	a4,s0,-16
 7b4:	97ba                	add	a5,a5,a4
 7b6:	02d00713          	li	a4,45
 7ba:	fee78023          	sb	a4,-32(a5)
 7be:	a005                	j	7de <printint+0xee>
 7c0:	fec42783          	lw	a5,-20(s0)
 7c4:	ff040713          	addi	a4,s0,-16
 7c8:	97ba                	add	a5,a5,a4
 7ca:	fe07c703          	lbu	a4,-32(a5)
 7ce:	fcc42783          	lw	a5,-52(s0)
 7d2:	85ba                	mv	a1,a4
 7d4:	853e                	mv	a0,a5
 7d6:	00000097          	auipc	ra,0x0
 7da:	ee4080e7          	jalr	-284(ra) # 6ba <putc>
 7de:	fec42783          	lw	a5,-20(s0)
 7e2:	37fd                	addiw	a5,a5,-1
 7e4:	fef42623          	sw	a5,-20(s0)
 7e8:	fec42783          	lw	a5,-20(s0)
 7ec:	2781                	sext.w	a5,a5
 7ee:	fc07d9e3          	bgez	a5,7c0 <printint+0xd0>
 7f2:	0001                	nop
 7f4:	0001                	nop
 7f6:	70e2                	ld	ra,56(sp)
 7f8:	7442                	ld	s0,48(sp)
 7fa:	6121                	addi	sp,sp,64
 7fc:	8082                	ret

00000000000007fe <printptr>:
 7fe:	7179                	addi	sp,sp,-48
 800:	f406                	sd	ra,40(sp)
 802:	f022                	sd	s0,32(sp)
 804:	1800                	addi	s0,sp,48
 806:	87aa                	mv	a5,a0
 808:	fcb43823          	sd	a1,-48(s0)
 80c:	fcf42e23          	sw	a5,-36(s0)
 810:	fdc42783          	lw	a5,-36(s0)
 814:	03000593          	li	a1,48
 818:	853e                	mv	a0,a5
 81a:	00000097          	auipc	ra,0x0
 81e:	ea0080e7          	jalr	-352(ra) # 6ba <putc>
 822:	fdc42783          	lw	a5,-36(s0)
 826:	07800593          	li	a1,120
 82a:	853e                	mv	a0,a5
 82c:	00000097          	auipc	ra,0x0
 830:	e8e080e7          	jalr	-370(ra) # 6ba <putc>
 834:	fe042623          	sw	zero,-20(s0)
 838:	a82d                	j	872 <printptr+0x74>
 83a:	fd043783          	ld	a5,-48(s0)
 83e:	93f1                	srli	a5,a5,0x3c
 840:	00000717          	auipc	a4,0x0
 844:	6f870713          	addi	a4,a4,1784 # f38 <digits>
 848:	97ba                	add	a5,a5,a4
 84a:	0007c703          	lbu	a4,0(a5)
 84e:	fdc42783          	lw	a5,-36(s0)
 852:	85ba                	mv	a1,a4
 854:	853e                	mv	a0,a5
 856:	00000097          	auipc	ra,0x0
 85a:	e64080e7          	jalr	-412(ra) # 6ba <putc>
 85e:	fec42783          	lw	a5,-20(s0)
 862:	2785                	addiw	a5,a5,1
 864:	fef42623          	sw	a5,-20(s0)
 868:	fd043783          	ld	a5,-48(s0)
 86c:	0792                	slli	a5,a5,0x4
 86e:	fcf43823          	sd	a5,-48(s0)
 872:	fec42783          	lw	a5,-20(s0)
 876:	873e                	mv	a4,a5
 878:	47bd                	li	a5,15
 87a:	fce7f0e3          	bgeu	a5,a4,83a <printptr+0x3c>
 87e:	0001                	nop
 880:	0001                	nop
 882:	70a2                	ld	ra,40(sp)
 884:	7402                	ld	s0,32(sp)
 886:	6145                	addi	sp,sp,48
 888:	8082                	ret

000000000000088a <vprintf>:
 88a:	715d                	addi	sp,sp,-80
 88c:	e486                	sd	ra,72(sp)
 88e:	e0a2                	sd	s0,64(sp)
 890:	0880                	addi	s0,sp,80
 892:	87aa                	mv	a5,a0
 894:	fcb43023          	sd	a1,-64(s0)
 898:	fac43c23          	sd	a2,-72(s0)
 89c:	fcf42623          	sw	a5,-52(s0)
 8a0:	fe042023          	sw	zero,-32(s0)
 8a4:	fe042223          	sw	zero,-28(s0)
 8a8:	a42d                	j	ad2 <vprintf+0x248>
 8aa:	fe442783          	lw	a5,-28(s0)
 8ae:	fc043703          	ld	a4,-64(s0)
 8b2:	97ba                	add	a5,a5,a4
 8b4:	0007c783          	lbu	a5,0(a5)
 8b8:	fcf42e23          	sw	a5,-36(s0)
 8bc:	fe042783          	lw	a5,-32(s0)
 8c0:	2781                	sext.w	a5,a5
 8c2:	eb9d                	bnez	a5,8f8 <vprintf+0x6e>
 8c4:	fdc42783          	lw	a5,-36(s0)
 8c8:	0007871b          	sext.w	a4,a5
 8cc:	02500793          	li	a5,37
 8d0:	00f71763          	bne	a4,a5,8de <vprintf+0x54>
 8d4:	02500793          	li	a5,37
 8d8:	fef42023          	sw	a5,-32(s0)
 8dc:	a2f5                	j	ac8 <vprintf+0x23e>
 8de:	fdc42783          	lw	a5,-36(s0)
 8e2:	0ff7f713          	andi	a4,a5,255
 8e6:	fcc42783          	lw	a5,-52(s0)
 8ea:	85ba                	mv	a1,a4
 8ec:	853e                	mv	a0,a5
 8ee:	00000097          	auipc	ra,0x0
 8f2:	dcc080e7          	jalr	-564(ra) # 6ba <putc>
 8f6:	aac9                	j	ac8 <vprintf+0x23e>
 8f8:	fe042783          	lw	a5,-32(s0)
 8fc:	0007871b          	sext.w	a4,a5
 900:	02500793          	li	a5,37
 904:	1cf71263          	bne	a4,a5,ac8 <vprintf+0x23e>
 908:	fdc42783          	lw	a5,-36(s0)
 90c:	0007871b          	sext.w	a4,a5
 910:	06400793          	li	a5,100
 914:	02f71463          	bne	a4,a5,93c <vprintf+0xb2>
 918:	fb843783          	ld	a5,-72(s0)
 91c:	00878713          	addi	a4,a5,8
 920:	fae43c23          	sd	a4,-72(s0)
 924:	4398                	lw	a4,0(a5)
 926:	fcc42783          	lw	a5,-52(s0)
 92a:	4685                	li	a3,1
 92c:	4629                	li	a2,10
 92e:	85ba                	mv	a1,a4
 930:	853e                	mv	a0,a5
 932:	00000097          	auipc	ra,0x0
 936:	dbe080e7          	jalr	-578(ra) # 6f0 <printint>
 93a:	a269                	j	ac4 <vprintf+0x23a>
 93c:	fdc42783          	lw	a5,-36(s0)
 940:	0007871b          	sext.w	a4,a5
 944:	06c00793          	li	a5,108
 948:	02f71663          	bne	a4,a5,974 <vprintf+0xea>
 94c:	fb843783          	ld	a5,-72(s0)
 950:	00878713          	addi	a4,a5,8
 954:	fae43c23          	sd	a4,-72(s0)
 958:	639c                	ld	a5,0(a5)
 95a:	0007871b          	sext.w	a4,a5
 95e:	fcc42783          	lw	a5,-52(s0)
 962:	4681                	li	a3,0
 964:	4629                	li	a2,10
 966:	85ba                	mv	a1,a4
 968:	853e                	mv	a0,a5
 96a:	00000097          	auipc	ra,0x0
 96e:	d86080e7          	jalr	-634(ra) # 6f0 <printint>
 972:	aa89                	j	ac4 <vprintf+0x23a>
 974:	fdc42783          	lw	a5,-36(s0)
 978:	0007871b          	sext.w	a4,a5
 97c:	07800793          	li	a5,120
 980:	02f71463          	bne	a4,a5,9a8 <vprintf+0x11e>
 984:	fb843783          	ld	a5,-72(s0)
 988:	00878713          	addi	a4,a5,8
 98c:	fae43c23          	sd	a4,-72(s0)
 990:	4398                	lw	a4,0(a5)
 992:	fcc42783          	lw	a5,-52(s0)
 996:	4681                	li	a3,0
 998:	4641                	li	a2,16
 99a:	85ba                	mv	a1,a4
 99c:	853e                	mv	a0,a5
 99e:	00000097          	auipc	ra,0x0
 9a2:	d52080e7          	jalr	-686(ra) # 6f0 <printint>
 9a6:	aa39                	j	ac4 <vprintf+0x23a>
 9a8:	fdc42783          	lw	a5,-36(s0)
 9ac:	0007871b          	sext.w	a4,a5
 9b0:	07000793          	li	a5,112
 9b4:	02f71263          	bne	a4,a5,9d8 <vprintf+0x14e>
 9b8:	fb843783          	ld	a5,-72(s0)
 9bc:	00878713          	addi	a4,a5,8
 9c0:	fae43c23          	sd	a4,-72(s0)
 9c4:	6398                	ld	a4,0(a5)
 9c6:	fcc42783          	lw	a5,-52(s0)
 9ca:	85ba                	mv	a1,a4
 9cc:	853e                	mv	a0,a5
 9ce:	00000097          	auipc	ra,0x0
 9d2:	e30080e7          	jalr	-464(ra) # 7fe <printptr>
 9d6:	a0fd                	j	ac4 <vprintf+0x23a>
 9d8:	fdc42783          	lw	a5,-36(s0)
 9dc:	0007871b          	sext.w	a4,a5
 9e0:	07300793          	li	a5,115
 9e4:	04f71c63          	bne	a4,a5,a3c <vprintf+0x1b2>
 9e8:	fb843783          	ld	a5,-72(s0)
 9ec:	00878713          	addi	a4,a5,8
 9f0:	fae43c23          	sd	a4,-72(s0)
 9f4:	639c                	ld	a5,0(a5)
 9f6:	fef43423          	sd	a5,-24(s0)
 9fa:	fe843783          	ld	a5,-24(s0)
 9fe:	eb8d                	bnez	a5,a30 <vprintf+0x1a6>
 a00:	00000797          	auipc	a5,0x0
 a04:	53078793          	addi	a5,a5,1328 # f30 <longjmp_1+0x46>
 a08:	fef43423          	sd	a5,-24(s0)
 a0c:	a015                	j	a30 <vprintf+0x1a6>
 a0e:	fe843783          	ld	a5,-24(s0)
 a12:	0007c703          	lbu	a4,0(a5)
 a16:	fcc42783          	lw	a5,-52(s0)
 a1a:	85ba                	mv	a1,a4
 a1c:	853e                	mv	a0,a5
 a1e:	00000097          	auipc	ra,0x0
 a22:	c9c080e7          	jalr	-868(ra) # 6ba <putc>
 a26:	fe843783          	ld	a5,-24(s0)
 a2a:	0785                	addi	a5,a5,1
 a2c:	fef43423          	sd	a5,-24(s0)
 a30:	fe843783          	ld	a5,-24(s0)
 a34:	0007c783          	lbu	a5,0(a5)
 a38:	fbf9                	bnez	a5,a0e <vprintf+0x184>
 a3a:	a069                	j	ac4 <vprintf+0x23a>
 a3c:	fdc42783          	lw	a5,-36(s0)
 a40:	0007871b          	sext.w	a4,a5
 a44:	06300793          	li	a5,99
 a48:	02f71463          	bne	a4,a5,a70 <vprintf+0x1e6>
 a4c:	fb843783          	ld	a5,-72(s0)
 a50:	00878713          	addi	a4,a5,8
 a54:	fae43c23          	sd	a4,-72(s0)
 a58:	439c                	lw	a5,0(a5)
 a5a:	0ff7f713          	andi	a4,a5,255
 a5e:	fcc42783          	lw	a5,-52(s0)
 a62:	85ba                	mv	a1,a4
 a64:	853e                	mv	a0,a5
 a66:	00000097          	auipc	ra,0x0
 a6a:	c54080e7          	jalr	-940(ra) # 6ba <putc>
 a6e:	a899                	j	ac4 <vprintf+0x23a>
 a70:	fdc42783          	lw	a5,-36(s0)
 a74:	0007871b          	sext.w	a4,a5
 a78:	02500793          	li	a5,37
 a7c:	00f71f63          	bne	a4,a5,a9a <vprintf+0x210>
 a80:	fdc42783          	lw	a5,-36(s0)
 a84:	0ff7f713          	andi	a4,a5,255
 a88:	fcc42783          	lw	a5,-52(s0)
 a8c:	85ba                	mv	a1,a4
 a8e:	853e                	mv	a0,a5
 a90:	00000097          	auipc	ra,0x0
 a94:	c2a080e7          	jalr	-982(ra) # 6ba <putc>
 a98:	a035                	j	ac4 <vprintf+0x23a>
 a9a:	fcc42783          	lw	a5,-52(s0)
 a9e:	02500593          	li	a1,37
 aa2:	853e                	mv	a0,a5
 aa4:	00000097          	auipc	ra,0x0
 aa8:	c16080e7          	jalr	-1002(ra) # 6ba <putc>
 aac:	fdc42783          	lw	a5,-36(s0)
 ab0:	0ff7f713          	andi	a4,a5,255
 ab4:	fcc42783          	lw	a5,-52(s0)
 ab8:	85ba                	mv	a1,a4
 aba:	853e                	mv	a0,a5
 abc:	00000097          	auipc	ra,0x0
 ac0:	bfe080e7          	jalr	-1026(ra) # 6ba <putc>
 ac4:	fe042023          	sw	zero,-32(s0)
 ac8:	fe442783          	lw	a5,-28(s0)
 acc:	2785                	addiw	a5,a5,1
 ace:	fef42223          	sw	a5,-28(s0)
 ad2:	fe442783          	lw	a5,-28(s0)
 ad6:	fc043703          	ld	a4,-64(s0)
 ada:	97ba                	add	a5,a5,a4
 adc:	0007c783          	lbu	a5,0(a5)
 ae0:	dc0795e3          	bnez	a5,8aa <vprintf+0x20>
 ae4:	0001                	nop
 ae6:	0001                	nop
 ae8:	60a6                	ld	ra,72(sp)
 aea:	6406                	ld	s0,64(sp)
 aec:	6161                	addi	sp,sp,80
 aee:	8082                	ret

0000000000000af0 <fprintf>:
 af0:	7159                	addi	sp,sp,-112
 af2:	fc06                	sd	ra,56(sp)
 af4:	f822                	sd	s0,48(sp)
 af6:	0080                	addi	s0,sp,64
 af8:	fcb43823          	sd	a1,-48(s0)
 afc:	e010                	sd	a2,0(s0)
 afe:	e414                	sd	a3,8(s0)
 b00:	e818                	sd	a4,16(s0)
 b02:	ec1c                	sd	a5,24(s0)
 b04:	03043023          	sd	a6,32(s0)
 b08:	03143423          	sd	a7,40(s0)
 b0c:	87aa                	mv	a5,a0
 b0e:	fcf42e23          	sw	a5,-36(s0)
 b12:	03040793          	addi	a5,s0,48
 b16:	fcf43423          	sd	a5,-56(s0)
 b1a:	fc843783          	ld	a5,-56(s0)
 b1e:	fd078793          	addi	a5,a5,-48
 b22:	fef43423          	sd	a5,-24(s0)
 b26:	fe843703          	ld	a4,-24(s0)
 b2a:	fdc42783          	lw	a5,-36(s0)
 b2e:	863a                	mv	a2,a4
 b30:	fd043583          	ld	a1,-48(s0)
 b34:	853e                	mv	a0,a5
 b36:	00000097          	auipc	ra,0x0
 b3a:	d54080e7          	jalr	-684(ra) # 88a <vprintf>
 b3e:	0001                	nop
 b40:	70e2                	ld	ra,56(sp)
 b42:	7442                	ld	s0,48(sp)
 b44:	6165                	addi	sp,sp,112
 b46:	8082                	ret

0000000000000b48 <printf>:
 b48:	7159                	addi	sp,sp,-112
 b4a:	f406                	sd	ra,40(sp)
 b4c:	f022                	sd	s0,32(sp)
 b4e:	1800                	addi	s0,sp,48
 b50:	fca43c23          	sd	a0,-40(s0)
 b54:	e40c                	sd	a1,8(s0)
 b56:	e810                	sd	a2,16(s0)
 b58:	ec14                	sd	a3,24(s0)
 b5a:	f018                	sd	a4,32(s0)
 b5c:	f41c                	sd	a5,40(s0)
 b5e:	03043823          	sd	a6,48(s0)
 b62:	03143c23          	sd	a7,56(s0)
 b66:	04040793          	addi	a5,s0,64
 b6a:	fcf43823          	sd	a5,-48(s0)
 b6e:	fd043783          	ld	a5,-48(s0)
 b72:	fc878793          	addi	a5,a5,-56
 b76:	fef43423          	sd	a5,-24(s0)
 b7a:	fe843783          	ld	a5,-24(s0)
 b7e:	863e                	mv	a2,a5
 b80:	fd843583          	ld	a1,-40(s0)
 b84:	4505                	li	a0,1
 b86:	00000097          	auipc	ra,0x0
 b8a:	d04080e7          	jalr	-764(ra) # 88a <vprintf>
 b8e:	0001                	nop
 b90:	70a2                	ld	ra,40(sp)
 b92:	7402                	ld	s0,32(sp)
 b94:	6165                	addi	sp,sp,112
 b96:	8082                	ret

0000000000000b98 <free>:
 b98:	7179                	addi	sp,sp,-48
 b9a:	f422                	sd	s0,40(sp)
 b9c:	1800                	addi	s0,sp,48
 b9e:	fca43c23          	sd	a0,-40(s0)
 ba2:	fd843783          	ld	a5,-40(s0)
 ba6:	17c1                	addi	a5,a5,-16
 ba8:	fef43023          	sd	a5,-32(s0)
 bac:	00000797          	auipc	a5,0x0
 bb0:	3b478793          	addi	a5,a5,948 # f60 <freep>
 bb4:	639c                	ld	a5,0(a5)
 bb6:	fef43423          	sd	a5,-24(s0)
 bba:	a815                	j	bee <free+0x56>
 bbc:	fe843783          	ld	a5,-24(s0)
 bc0:	639c                	ld	a5,0(a5)
 bc2:	fe843703          	ld	a4,-24(s0)
 bc6:	00f76f63          	bltu	a4,a5,be4 <free+0x4c>
 bca:	fe043703          	ld	a4,-32(s0)
 bce:	fe843783          	ld	a5,-24(s0)
 bd2:	02e7eb63          	bltu	a5,a4,c08 <free+0x70>
 bd6:	fe843783          	ld	a5,-24(s0)
 bda:	639c                	ld	a5,0(a5)
 bdc:	fe043703          	ld	a4,-32(s0)
 be0:	02f76463          	bltu	a4,a5,c08 <free+0x70>
 be4:	fe843783          	ld	a5,-24(s0)
 be8:	639c                	ld	a5,0(a5)
 bea:	fef43423          	sd	a5,-24(s0)
 bee:	fe043703          	ld	a4,-32(s0)
 bf2:	fe843783          	ld	a5,-24(s0)
 bf6:	fce7f3e3          	bgeu	a5,a4,bbc <free+0x24>
 bfa:	fe843783          	ld	a5,-24(s0)
 bfe:	639c                	ld	a5,0(a5)
 c00:	fe043703          	ld	a4,-32(s0)
 c04:	faf77ce3          	bgeu	a4,a5,bbc <free+0x24>
 c08:	fe043783          	ld	a5,-32(s0)
 c0c:	479c                	lw	a5,8(a5)
 c0e:	1782                	slli	a5,a5,0x20
 c10:	9381                	srli	a5,a5,0x20
 c12:	0792                	slli	a5,a5,0x4
 c14:	fe043703          	ld	a4,-32(s0)
 c18:	973e                	add	a4,a4,a5
 c1a:	fe843783          	ld	a5,-24(s0)
 c1e:	639c                	ld	a5,0(a5)
 c20:	02f71763          	bne	a4,a5,c4e <free+0xb6>
 c24:	fe043783          	ld	a5,-32(s0)
 c28:	4798                	lw	a4,8(a5)
 c2a:	fe843783          	ld	a5,-24(s0)
 c2e:	639c                	ld	a5,0(a5)
 c30:	479c                	lw	a5,8(a5)
 c32:	9fb9                	addw	a5,a5,a4
 c34:	0007871b          	sext.w	a4,a5
 c38:	fe043783          	ld	a5,-32(s0)
 c3c:	c798                	sw	a4,8(a5)
 c3e:	fe843783          	ld	a5,-24(s0)
 c42:	639c                	ld	a5,0(a5)
 c44:	6398                	ld	a4,0(a5)
 c46:	fe043783          	ld	a5,-32(s0)
 c4a:	e398                	sd	a4,0(a5)
 c4c:	a039                	j	c5a <free+0xc2>
 c4e:	fe843783          	ld	a5,-24(s0)
 c52:	6398                	ld	a4,0(a5)
 c54:	fe043783          	ld	a5,-32(s0)
 c58:	e398                	sd	a4,0(a5)
 c5a:	fe843783          	ld	a5,-24(s0)
 c5e:	479c                	lw	a5,8(a5)
 c60:	1782                	slli	a5,a5,0x20
 c62:	9381                	srli	a5,a5,0x20
 c64:	0792                	slli	a5,a5,0x4
 c66:	fe843703          	ld	a4,-24(s0)
 c6a:	97ba                	add	a5,a5,a4
 c6c:	fe043703          	ld	a4,-32(s0)
 c70:	02f71563          	bne	a4,a5,c9a <free+0x102>
 c74:	fe843783          	ld	a5,-24(s0)
 c78:	4798                	lw	a4,8(a5)
 c7a:	fe043783          	ld	a5,-32(s0)
 c7e:	479c                	lw	a5,8(a5)
 c80:	9fb9                	addw	a5,a5,a4
 c82:	0007871b          	sext.w	a4,a5
 c86:	fe843783          	ld	a5,-24(s0)
 c8a:	c798                	sw	a4,8(a5)
 c8c:	fe043783          	ld	a5,-32(s0)
 c90:	6398                	ld	a4,0(a5)
 c92:	fe843783          	ld	a5,-24(s0)
 c96:	e398                	sd	a4,0(a5)
 c98:	a031                	j	ca4 <free+0x10c>
 c9a:	fe843783          	ld	a5,-24(s0)
 c9e:	fe043703          	ld	a4,-32(s0)
 ca2:	e398                	sd	a4,0(a5)
 ca4:	00000797          	auipc	a5,0x0
 ca8:	2bc78793          	addi	a5,a5,700 # f60 <freep>
 cac:	fe843703          	ld	a4,-24(s0)
 cb0:	e398                	sd	a4,0(a5)
 cb2:	0001                	nop
 cb4:	7422                	ld	s0,40(sp)
 cb6:	6145                	addi	sp,sp,48
 cb8:	8082                	ret

0000000000000cba <morecore>:
 cba:	7179                	addi	sp,sp,-48
 cbc:	f406                	sd	ra,40(sp)
 cbe:	f022                	sd	s0,32(sp)
 cc0:	1800                	addi	s0,sp,48
 cc2:	87aa                	mv	a5,a0
 cc4:	fcf42e23          	sw	a5,-36(s0)
 cc8:	fdc42783          	lw	a5,-36(s0)
 ccc:	0007871b          	sext.w	a4,a5
 cd0:	6785                	lui	a5,0x1
 cd2:	00f77563          	bgeu	a4,a5,cdc <morecore+0x22>
 cd6:	6785                	lui	a5,0x1
 cd8:	fcf42e23          	sw	a5,-36(s0)
 cdc:	fdc42783          	lw	a5,-36(s0)
 ce0:	0047979b          	slliw	a5,a5,0x4
 ce4:	2781                	sext.w	a5,a5
 ce6:	2781                	sext.w	a5,a5
 ce8:	853e                	mv	a0,a5
 cea:	00000097          	auipc	ra,0x0
 cee:	9b8080e7          	jalr	-1608(ra) # 6a2 <sbrk>
 cf2:	fea43423          	sd	a0,-24(s0)
 cf6:	fe843703          	ld	a4,-24(s0)
 cfa:	57fd                	li	a5,-1
 cfc:	00f71463          	bne	a4,a5,d04 <morecore+0x4a>
 d00:	4781                	li	a5,0
 d02:	a03d                	j	d30 <morecore+0x76>
 d04:	fe843783          	ld	a5,-24(s0)
 d08:	fef43023          	sd	a5,-32(s0)
 d0c:	fe043783          	ld	a5,-32(s0)
 d10:	fdc42703          	lw	a4,-36(s0)
 d14:	c798                	sw	a4,8(a5)
 d16:	fe043783          	ld	a5,-32(s0)
 d1a:	07c1                	addi	a5,a5,16
 d1c:	853e                	mv	a0,a5
 d1e:	00000097          	auipc	ra,0x0
 d22:	e7a080e7          	jalr	-390(ra) # b98 <free>
 d26:	00000797          	auipc	a5,0x0
 d2a:	23a78793          	addi	a5,a5,570 # f60 <freep>
 d2e:	639c                	ld	a5,0(a5)
 d30:	853e                	mv	a0,a5
 d32:	70a2                	ld	ra,40(sp)
 d34:	7402                	ld	s0,32(sp)
 d36:	6145                	addi	sp,sp,48
 d38:	8082                	ret

0000000000000d3a <malloc>:
 d3a:	7139                	addi	sp,sp,-64
 d3c:	fc06                	sd	ra,56(sp)
 d3e:	f822                	sd	s0,48(sp)
 d40:	0080                	addi	s0,sp,64
 d42:	87aa                	mv	a5,a0
 d44:	fcf42623          	sw	a5,-52(s0)
 d48:	fcc46783          	lwu	a5,-52(s0)
 d4c:	07bd                	addi	a5,a5,15
 d4e:	8391                	srli	a5,a5,0x4
 d50:	2781                	sext.w	a5,a5
 d52:	2785                	addiw	a5,a5,1
 d54:	fcf42e23          	sw	a5,-36(s0)
 d58:	00000797          	auipc	a5,0x0
 d5c:	20878793          	addi	a5,a5,520 # f60 <freep>
 d60:	639c                	ld	a5,0(a5)
 d62:	fef43023          	sd	a5,-32(s0)
 d66:	fe043783          	ld	a5,-32(s0)
 d6a:	ef95                	bnez	a5,da6 <malloc+0x6c>
 d6c:	00000797          	auipc	a5,0x0
 d70:	1e478793          	addi	a5,a5,484 # f50 <base>
 d74:	fef43023          	sd	a5,-32(s0)
 d78:	00000797          	auipc	a5,0x0
 d7c:	1e878793          	addi	a5,a5,488 # f60 <freep>
 d80:	fe043703          	ld	a4,-32(s0)
 d84:	e398                	sd	a4,0(a5)
 d86:	00000797          	auipc	a5,0x0
 d8a:	1da78793          	addi	a5,a5,474 # f60 <freep>
 d8e:	6398                	ld	a4,0(a5)
 d90:	00000797          	auipc	a5,0x0
 d94:	1c078793          	addi	a5,a5,448 # f50 <base>
 d98:	e398                	sd	a4,0(a5)
 d9a:	00000797          	auipc	a5,0x0
 d9e:	1b678793          	addi	a5,a5,438 # f50 <base>
 da2:	0007a423          	sw	zero,8(a5)
 da6:	fe043783          	ld	a5,-32(s0)
 daa:	639c                	ld	a5,0(a5)
 dac:	fef43423          	sd	a5,-24(s0)
 db0:	fe843783          	ld	a5,-24(s0)
 db4:	4798                	lw	a4,8(a5)
 db6:	fdc42783          	lw	a5,-36(s0)
 dba:	2781                	sext.w	a5,a5
 dbc:	06f76863          	bltu	a4,a5,e2c <malloc+0xf2>
 dc0:	fe843783          	ld	a5,-24(s0)
 dc4:	4798                	lw	a4,8(a5)
 dc6:	fdc42783          	lw	a5,-36(s0)
 dca:	2781                	sext.w	a5,a5
 dcc:	00e79963          	bne	a5,a4,dde <malloc+0xa4>
 dd0:	fe843783          	ld	a5,-24(s0)
 dd4:	6398                	ld	a4,0(a5)
 dd6:	fe043783          	ld	a5,-32(s0)
 dda:	e398                	sd	a4,0(a5)
 ddc:	a82d                	j	e16 <malloc+0xdc>
 dde:	fe843783          	ld	a5,-24(s0)
 de2:	4798                	lw	a4,8(a5)
 de4:	fdc42783          	lw	a5,-36(s0)
 de8:	40f707bb          	subw	a5,a4,a5
 dec:	0007871b          	sext.w	a4,a5
 df0:	fe843783          	ld	a5,-24(s0)
 df4:	c798                	sw	a4,8(a5)
 df6:	fe843783          	ld	a5,-24(s0)
 dfa:	479c                	lw	a5,8(a5)
 dfc:	1782                	slli	a5,a5,0x20
 dfe:	9381                	srli	a5,a5,0x20
 e00:	0792                	slli	a5,a5,0x4
 e02:	fe843703          	ld	a4,-24(s0)
 e06:	97ba                	add	a5,a5,a4
 e08:	fef43423          	sd	a5,-24(s0)
 e0c:	fe843783          	ld	a5,-24(s0)
 e10:	fdc42703          	lw	a4,-36(s0)
 e14:	c798                	sw	a4,8(a5)
 e16:	00000797          	auipc	a5,0x0
 e1a:	14a78793          	addi	a5,a5,330 # f60 <freep>
 e1e:	fe043703          	ld	a4,-32(s0)
 e22:	e398                	sd	a4,0(a5)
 e24:	fe843783          	ld	a5,-24(s0)
 e28:	07c1                	addi	a5,a5,16
 e2a:	a091                	j	e6e <malloc+0x134>
 e2c:	00000797          	auipc	a5,0x0
 e30:	13478793          	addi	a5,a5,308 # f60 <freep>
 e34:	639c                	ld	a5,0(a5)
 e36:	fe843703          	ld	a4,-24(s0)
 e3a:	02f71063          	bne	a4,a5,e5a <malloc+0x120>
 e3e:	fdc42783          	lw	a5,-36(s0)
 e42:	853e                	mv	a0,a5
 e44:	00000097          	auipc	ra,0x0
 e48:	e76080e7          	jalr	-394(ra) # cba <morecore>
 e4c:	fea43423          	sd	a0,-24(s0)
 e50:	fe843783          	ld	a5,-24(s0)
 e54:	e399                	bnez	a5,e5a <malloc+0x120>
 e56:	4781                	li	a5,0
 e58:	a819                	j	e6e <malloc+0x134>
 e5a:	fe843783          	ld	a5,-24(s0)
 e5e:	fef43023          	sd	a5,-32(s0)
 e62:	fe843783          	ld	a5,-24(s0)
 e66:	639c                	ld	a5,0(a5)
 e68:	fef43423          	sd	a5,-24(s0)
 e6c:	b791                	j	db0 <malloc+0x76>
 e6e:	853e                	mv	a0,a5
 e70:	70e2                	ld	ra,56(sp)
 e72:	7442                	ld	s0,48(sp)
 e74:	6121                	addi	sp,sp,64
 e76:	8082                	ret

0000000000000e78 <setjmp>:
 e78:	e100                	sd	s0,0(a0)
 e7a:	e504                	sd	s1,8(a0)
 e7c:	01253823          	sd	s2,16(a0)
 e80:	01353c23          	sd	s3,24(a0)
 e84:	03453023          	sd	s4,32(a0)
 e88:	03553423          	sd	s5,40(a0)
 e8c:	03653823          	sd	s6,48(a0)
 e90:	03753c23          	sd	s7,56(a0)
 e94:	05853023          	sd	s8,64(a0)
 e98:	05953423          	sd	s9,72(a0)
 e9c:	05a53823          	sd	s10,80(a0)
 ea0:	05b53c23          	sd	s11,88(a0)
 ea4:	06153023          	sd	ra,96(a0)
 ea8:	06253423          	sd	sp,104(a0)
 eac:	4501                	li	a0,0
 eae:	8082                	ret

0000000000000eb0 <longjmp>:
 eb0:	6100                	ld	s0,0(a0)
 eb2:	6504                	ld	s1,8(a0)
 eb4:	01053903          	ld	s2,16(a0)
 eb8:	01853983          	ld	s3,24(a0)
 ebc:	02053a03          	ld	s4,32(a0)
 ec0:	02853a83          	ld	s5,40(a0)
 ec4:	03053b03          	ld	s6,48(a0)
 ec8:	03853b83          	ld	s7,56(a0)
 ecc:	04053c03          	ld	s8,64(a0)
 ed0:	04853c83          	ld	s9,72(a0)
 ed4:	05053d03          	ld	s10,80(a0)
 ed8:	05853d83          	ld	s11,88(a0)
 edc:	06053083          	ld	ra,96(a0)
 ee0:	06853103          	ld	sp,104(a0)
 ee4:	c199                	beqz	a1,eea <longjmp_1>
 ee6:	852e                	mv	a0,a1
 ee8:	8082                	ret

0000000000000eea <longjmp_1>:
 eea:	4505                	li	a0,1
 eec:	8082                	ret
