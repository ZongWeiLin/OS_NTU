
user/_test:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <fun_a>:
   0:	7179                	addi	sp,sp,-48
   2:	f406                	sd	ra,40(sp)
   4:	f022                	sd	s0,32(sp)
   6:	1800                	addi	s0,sp,48
   8:	87aa                	mv	a5,a0
   a:	fcf42e23          	sw	a5,-36(s0)
   e:	fdc42783          	lw	a5,-36(s0)
  12:	0017979b          	slliw	a5,a5,0x1
  16:	2781                	sext.w	a5,a5
  18:	37fd                	addiw	a5,a5,-1
  1a:	fef42623          	sw	a5,-20(s0)
  1e:	fe042423          	sw	zero,-24(s0)
  22:	00001517          	auipc	a0,0x1
  26:	fc650513          	addi	a0,a0,-58 # fe8 <buff2>
  2a:	00001097          	auipc	ra,0x1
  2e:	e68080e7          	jalr	-408(ra) # e92 <setjmp>
  32:	87aa                	mv	a5,a0
  34:	fef42223          	sw	a5,-28(s0)
  38:	fec42703          	lw	a4,-20(s0)
  3c:	fe442783          	lw	a5,-28(s0)
  40:	9fb9                	addw	a5,a5,a4
  42:	fef42623          	sw	a5,-20(s0)
  46:	fe842783          	lw	a5,-24(s0)
  4a:	2785                	addiw	a5,a5,1
  4c:	fef42423          	sw	a5,-24(s0)
  50:	fe842783          	lw	a5,-24(s0)
  54:	85be                	mv	a1,a5
  56:	00001517          	auipc	a0,0x1
  5a:	eb250513          	addi	a0,a0,-334 # f08 <longjmp_1+0x4>
  5e:	00001097          	auipc	ra,0x1
  62:	b04080e7          	jalr	-1276(ra) # b62 <printf>
  66:	fec42783          	lw	a5,-20(s0)
  6a:	85be                	mv	a1,a5
  6c:	00001517          	auipc	a0,0x1
  70:	ea450513          	addi	a0,a0,-348 # f10 <longjmp_1+0xc>
  74:	00001097          	auipc	ra,0x1
  78:	aee080e7          	jalr	-1298(ra) # b62 <printf>
  7c:	fe442783          	lw	a5,-28(s0)
  80:	2781                	sext.w	a5,a5
  82:	eb99                	bnez	a5,98 <fun_a+0x98>
  84:	4589                	li	a1,2
  86:	00001517          	auipc	a0,0x1
  8a:	f6250513          	addi	a0,a0,-158 # fe8 <buff2>
  8e:	00001097          	auipc	ra,0x1
  92:	e3c080e7          	jalr	-452(ra) # eca <longjmp>
  96:	a019                	j	9c <fun_a+0x9c>
  98:	fec42783          	lw	a5,-20(s0)
  9c:	853e                	mv	a0,a5
  9e:	70a2                	ld	ra,40(sp)
  a0:	7402                	ld	s0,32(sp)
  a2:	6145                	addi	sp,sp,48
  a4:	8082                	ret

00000000000000a6 <fun_b>:
  a6:	7179                	addi	sp,sp,-48
  a8:	f406                	sd	ra,40(sp)
  aa:	f022                	sd	s0,32(sp)
  ac:	1800                	addi	s0,sp,48
  ae:	87aa                	mv	a5,a0
  b0:	fcf42e23          	sw	a5,-36(s0)
  b4:	fdc42783          	lw	a5,-36(s0)
  b8:	853e                	mv	a0,a5
  ba:	00000097          	auipc	ra,0x0
  be:	f46080e7          	jalr	-186(ra) # 0 <fun_a>
  c2:	87aa                	mv	a5,a0
  c4:	27a9                	addiw	a5,a5,10
  c6:	fef42623          	sw	a5,-20(s0)
  ca:	fec42783          	lw	a5,-20(s0)
  ce:	0007871b          	sext.w	a4,a5
  d2:	47e5                	li	a5,25
  d4:	00e7dc63          	bge	a5,a4,ec <fun_b+0x46>
  d8:	4585                	li	a1,1
  da:	00001517          	auipc	a0,0x1
  de:	e9e50513          	addi	a0,a0,-354 # f78 <buff>
  e2:	00001097          	auipc	ra,0x1
  e6:	de8080e7          	jalr	-536(ra) # eca <longjmp>
  ea:	a821                	j	102 <fun_b+0x5c>
  ec:	4585                	li	a1,1
  ee:	00001517          	auipc	a0,0x1
  f2:	efa50513          	addi	a0,a0,-262 # fe8 <buff2>
  f6:	00001097          	auipc	ra,0x1
  fa:	dd4080e7          	jalr	-556(ra) # eca <longjmp>
  fe:	fec42783          	lw	a5,-20(s0)
 102:	853e                	mv	a0,a5
 104:	70a2                	ld	ra,40(sp)
 106:	7402                	ld	s0,32(sp)
 108:	6145                	addi	sp,sp,48
 10a:	8082                	ret

000000000000010c <main>:
 10c:	7179                	addi	sp,sp,-48
 10e:	f406                	sd	ra,40(sp)
 110:	f022                	sd	s0,32(sp)
 112:	1800                	addi	s0,sp,48
 114:	87aa                	mv	a5,a0
 116:	fcb43823          	sd	a1,-48(s0)
 11a:	fcf42e23          	sw	a5,-36(s0)
 11e:	00001517          	auipc	a0,0x1
 122:	e5a50513          	addi	a0,a0,-422 # f78 <buff>
 126:	00001097          	auipc	ra,0x1
 12a:	d6c080e7          	jalr	-660(ra) # e92 <setjmp>
 12e:	87aa                	mv	a5,a0
 130:	fef42623          	sw	a5,-20(s0)
 134:	fec42783          	lw	a5,-20(s0)
 138:	0007871b          	sext.w	a4,a5
 13c:	4789                	li	a5,2
 13e:	00f71b63          	bne	a4,a5,154 <main+0x48>
 142:	00001517          	auipc	a0,0x1
 146:	dd650513          	addi	a0,a0,-554 # f18 <longjmp_1+0x14>
 14a:	00001097          	auipc	ra,0x1
 14e:	a18080e7          	jalr	-1512(ra) # b62 <printf>
 152:	a0a1                	j	19a <main+0x8e>
 154:	fec42783          	lw	a5,-20(s0)
 158:	0007871b          	sext.w	a4,a5
 15c:	4785                	li	a5,1
 15e:	00f71b63          	bne	a4,a5,174 <main+0x68>
 162:	00001517          	auipc	a0,0x1
 166:	dce50513          	addi	a0,a0,-562 # f30 <longjmp_1+0x2c>
 16a:	00001097          	auipc	ra,0x1
 16e:	9f8080e7          	jalr	-1544(ra) # b62 <printf>
 172:	a025                	j	19a <main+0x8e>
 174:	450d                	li	a0,3
 176:	00000097          	auipc	ra,0x0
 17a:	f30080e7          	jalr	-208(ra) # a6 <fun_b>
 17e:	87aa                	mv	a5,a0
 180:	fef42423          	sw	a5,-24(s0)
 184:	fe842783          	lw	a5,-24(s0)
 188:	85be                	mv	a1,a5
 18a:	00001517          	auipc	a0,0x1
 18e:	dbe50513          	addi	a0,a0,-578 # f48 <longjmp_1+0x44>
 192:	00001097          	auipc	ra,0x1
 196:	9d0080e7          	jalr	-1584(ra) # b62 <printf>
 19a:	4501                	li	a0,0
 19c:	00000097          	auipc	ra,0x0
 1a0:	498080e7          	jalr	1176(ra) # 634 <exit>

00000000000001a4 <strcpy>:
 1a4:	7179                	addi	sp,sp,-48
 1a6:	f422                	sd	s0,40(sp)
 1a8:	1800                	addi	s0,sp,48
 1aa:	fca43c23          	sd	a0,-40(s0)
 1ae:	fcb43823          	sd	a1,-48(s0)
 1b2:	fd843783          	ld	a5,-40(s0)
 1b6:	fef43423          	sd	a5,-24(s0)
 1ba:	0001                	nop
 1bc:	fd043703          	ld	a4,-48(s0)
 1c0:	00170793          	addi	a5,a4,1
 1c4:	fcf43823          	sd	a5,-48(s0)
 1c8:	fd843783          	ld	a5,-40(s0)
 1cc:	00178693          	addi	a3,a5,1
 1d0:	fcd43c23          	sd	a3,-40(s0)
 1d4:	00074703          	lbu	a4,0(a4)
 1d8:	00e78023          	sb	a4,0(a5)
 1dc:	0007c783          	lbu	a5,0(a5)
 1e0:	fff1                	bnez	a5,1bc <strcpy+0x18>
 1e2:	fe843783          	ld	a5,-24(s0)
 1e6:	853e                	mv	a0,a5
 1e8:	7422                	ld	s0,40(sp)
 1ea:	6145                	addi	sp,sp,48
 1ec:	8082                	ret

00000000000001ee <strcmp>:
 1ee:	1101                	addi	sp,sp,-32
 1f0:	ec22                	sd	s0,24(sp)
 1f2:	1000                	addi	s0,sp,32
 1f4:	fea43423          	sd	a0,-24(s0)
 1f8:	feb43023          	sd	a1,-32(s0)
 1fc:	a819                	j	212 <strcmp+0x24>
 1fe:	fe843783          	ld	a5,-24(s0)
 202:	0785                	addi	a5,a5,1
 204:	fef43423          	sd	a5,-24(s0)
 208:	fe043783          	ld	a5,-32(s0)
 20c:	0785                	addi	a5,a5,1
 20e:	fef43023          	sd	a5,-32(s0)
 212:	fe843783          	ld	a5,-24(s0)
 216:	0007c783          	lbu	a5,0(a5)
 21a:	cb99                	beqz	a5,230 <strcmp+0x42>
 21c:	fe843783          	ld	a5,-24(s0)
 220:	0007c703          	lbu	a4,0(a5)
 224:	fe043783          	ld	a5,-32(s0)
 228:	0007c783          	lbu	a5,0(a5)
 22c:	fcf709e3          	beq	a4,a5,1fe <strcmp+0x10>
 230:	fe843783          	ld	a5,-24(s0)
 234:	0007c783          	lbu	a5,0(a5)
 238:	0007871b          	sext.w	a4,a5
 23c:	fe043783          	ld	a5,-32(s0)
 240:	0007c783          	lbu	a5,0(a5)
 244:	2781                	sext.w	a5,a5
 246:	40f707bb          	subw	a5,a4,a5
 24a:	2781                	sext.w	a5,a5
 24c:	853e                	mv	a0,a5
 24e:	6462                	ld	s0,24(sp)
 250:	6105                	addi	sp,sp,32
 252:	8082                	ret

0000000000000254 <strlen>:
 254:	7179                	addi	sp,sp,-48
 256:	f422                	sd	s0,40(sp)
 258:	1800                	addi	s0,sp,48
 25a:	fca43c23          	sd	a0,-40(s0)
 25e:	fe042623          	sw	zero,-20(s0)
 262:	a031                	j	26e <strlen+0x1a>
 264:	fec42783          	lw	a5,-20(s0)
 268:	2785                	addiw	a5,a5,1
 26a:	fef42623          	sw	a5,-20(s0)
 26e:	fec42783          	lw	a5,-20(s0)
 272:	fd843703          	ld	a4,-40(s0)
 276:	97ba                	add	a5,a5,a4
 278:	0007c783          	lbu	a5,0(a5)
 27c:	f7e5                	bnez	a5,264 <strlen+0x10>
 27e:	fec42783          	lw	a5,-20(s0)
 282:	853e                	mv	a0,a5
 284:	7422                	ld	s0,40(sp)
 286:	6145                	addi	sp,sp,48
 288:	8082                	ret

000000000000028a <memset>:
 28a:	7179                	addi	sp,sp,-48
 28c:	f422                	sd	s0,40(sp)
 28e:	1800                	addi	s0,sp,48
 290:	fca43c23          	sd	a0,-40(s0)
 294:	87ae                	mv	a5,a1
 296:	8732                	mv	a4,a2
 298:	fcf42a23          	sw	a5,-44(s0)
 29c:	87ba                	mv	a5,a4
 29e:	fcf42823          	sw	a5,-48(s0)
 2a2:	fd843783          	ld	a5,-40(s0)
 2a6:	fef43023          	sd	a5,-32(s0)
 2aa:	fe042623          	sw	zero,-20(s0)
 2ae:	a00d                	j	2d0 <memset+0x46>
 2b0:	fec42783          	lw	a5,-20(s0)
 2b4:	fe043703          	ld	a4,-32(s0)
 2b8:	97ba                	add	a5,a5,a4
 2ba:	fd442703          	lw	a4,-44(s0)
 2be:	0ff77713          	andi	a4,a4,255
 2c2:	00e78023          	sb	a4,0(a5)
 2c6:	fec42783          	lw	a5,-20(s0)
 2ca:	2785                	addiw	a5,a5,1
 2cc:	fef42623          	sw	a5,-20(s0)
 2d0:	fec42703          	lw	a4,-20(s0)
 2d4:	fd042783          	lw	a5,-48(s0)
 2d8:	2781                	sext.w	a5,a5
 2da:	fcf76be3          	bltu	a4,a5,2b0 <memset+0x26>
 2de:	fd843783          	ld	a5,-40(s0)
 2e2:	853e                	mv	a0,a5
 2e4:	7422                	ld	s0,40(sp)
 2e6:	6145                	addi	sp,sp,48
 2e8:	8082                	ret

00000000000002ea <strchr>:
 2ea:	1101                	addi	sp,sp,-32
 2ec:	ec22                	sd	s0,24(sp)
 2ee:	1000                	addi	s0,sp,32
 2f0:	fea43423          	sd	a0,-24(s0)
 2f4:	87ae                	mv	a5,a1
 2f6:	fef403a3          	sb	a5,-25(s0)
 2fa:	a01d                	j	320 <strchr+0x36>
 2fc:	fe843783          	ld	a5,-24(s0)
 300:	0007c703          	lbu	a4,0(a5)
 304:	fe744783          	lbu	a5,-25(s0)
 308:	0ff7f793          	andi	a5,a5,255
 30c:	00e79563          	bne	a5,a4,316 <strchr+0x2c>
 310:	fe843783          	ld	a5,-24(s0)
 314:	a821                	j	32c <strchr+0x42>
 316:	fe843783          	ld	a5,-24(s0)
 31a:	0785                	addi	a5,a5,1
 31c:	fef43423          	sd	a5,-24(s0)
 320:	fe843783          	ld	a5,-24(s0)
 324:	0007c783          	lbu	a5,0(a5)
 328:	fbf1                	bnez	a5,2fc <strchr+0x12>
 32a:	4781                	li	a5,0
 32c:	853e                	mv	a0,a5
 32e:	6462                	ld	s0,24(sp)
 330:	6105                	addi	sp,sp,32
 332:	8082                	ret

0000000000000334 <gets>:
 334:	7179                	addi	sp,sp,-48
 336:	f406                	sd	ra,40(sp)
 338:	f022                	sd	s0,32(sp)
 33a:	1800                	addi	s0,sp,48
 33c:	fca43c23          	sd	a0,-40(s0)
 340:	87ae                	mv	a5,a1
 342:	fcf42a23          	sw	a5,-44(s0)
 346:	fe042623          	sw	zero,-20(s0)
 34a:	a8a1                	j	3a2 <gets+0x6e>
 34c:	fe740793          	addi	a5,s0,-25
 350:	4605                	li	a2,1
 352:	85be                	mv	a1,a5
 354:	4501                	li	a0,0
 356:	00000097          	auipc	ra,0x0
 35a:	2f6080e7          	jalr	758(ra) # 64c <read>
 35e:	87aa                	mv	a5,a0
 360:	fef42423          	sw	a5,-24(s0)
 364:	fe842783          	lw	a5,-24(s0)
 368:	2781                	sext.w	a5,a5
 36a:	04f05763          	blez	a5,3b8 <gets+0x84>
 36e:	fec42783          	lw	a5,-20(s0)
 372:	0017871b          	addiw	a4,a5,1
 376:	fee42623          	sw	a4,-20(s0)
 37a:	873e                	mv	a4,a5
 37c:	fd843783          	ld	a5,-40(s0)
 380:	97ba                	add	a5,a5,a4
 382:	fe744703          	lbu	a4,-25(s0)
 386:	00e78023          	sb	a4,0(a5)
 38a:	fe744783          	lbu	a5,-25(s0)
 38e:	873e                	mv	a4,a5
 390:	47a9                	li	a5,10
 392:	02f70463          	beq	a4,a5,3ba <gets+0x86>
 396:	fe744783          	lbu	a5,-25(s0)
 39a:	873e                	mv	a4,a5
 39c:	47b5                	li	a5,13
 39e:	00f70e63          	beq	a4,a5,3ba <gets+0x86>
 3a2:	fec42783          	lw	a5,-20(s0)
 3a6:	2785                	addiw	a5,a5,1
 3a8:	0007871b          	sext.w	a4,a5
 3ac:	fd442783          	lw	a5,-44(s0)
 3b0:	2781                	sext.w	a5,a5
 3b2:	f8f74de3          	blt	a4,a5,34c <gets+0x18>
 3b6:	a011                	j	3ba <gets+0x86>
 3b8:	0001                	nop
 3ba:	fec42783          	lw	a5,-20(s0)
 3be:	fd843703          	ld	a4,-40(s0)
 3c2:	97ba                	add	a5,a5,a4
 3c4:	00078023          	sb	zero,0(a5)
 3c8:	fd843783          	ld	a5,-40(s0)
 3cc:	853e                	mv	a0,a5
 3ce:	70a2                	ld	ra,40(sp)
 3d0:	7402                	ld	s0,32(sp)
 3d2:	6145                	addi	sp,sp,48
 3d4:	8082                	ret

00000000000003d6 <stat>:
 3d6:	7179                	addi	sp,sp,-48
 3d8:	f406                	sd	ra,40(sp)
 3da:	f022                	sd	s0,32(sp)
 3dc:	1800                	addi	s0,sp,48
 3de:	fca43c23          	sd	a0,-40(s0)
 3e2:	fcb43823          	sd	a1,-48(s0)
 3e6:	4581                	li	a1,0
 3e8:	fd843503          	ld	a0,-40(s0)
 3ec:	00000097          	auipc	ra,0x0
 3f0:	288080e7          	jalr	648(ra) # 674 <open>
 3f4:	87aa                	mv	a5,a0
 3f6:	fef42623          	sw	a5,-20(s0)
 3fa:	fec42783          	lw	a5,-20(s0)
 3fe:	2781                	sext.w	a5,a5
 400:	0007d463          	bgez	a5,408 <stat+0x32>
 404:	57fd                	li	a5,-1
 406:	a035                	j	432 <stat+0x5c>
 408:	fec42783          	lw	a5,-20(s0)
 40c:	fd043583          	ld	a1,-48(s0)
 410:	853e                	mv	a0,a5
 412:	00000097          	auipc	ra,0x0
 416:	27a080e7          	jalr	634(ra) # 68c <fstat>
 41a:	87aa                	mv	a5,a0
 41c:	fef42423          	sw	a5,-24(s0)
 420:	fec42783          	lw	a5,-20(s0)
 424:	853e                	mv	a0,a5
 426:	00000097          	auipc	ra,0x0
 42a:	236080e7          	jalr	566(ra) # 65c <close>
 42e:	fe842783          	lw	a5,-24(s0)
 432:	853e                	mv	a0,a5
 434:	70a2                	ld	ra,40(sp)
 436:	7402                	ld	s0,32(sp)
 438:	6145                	addi	sp,sp,48
 43a:	8082                	ret

000000000000043c <atoi>:
 43c:	7179                	addi	sp,sp,-48
 43e:	f422                	sd	s0,40(sp)
 440:	1800                	addi	s0,sp,48
 442:	fca43c23          	sd	a0,-40(s0)
 446:	fe042623          	sw	zero,-20(s0)
 44a:	a815                	j	47e <atoi+0x42>
 44c:	fec42703          	lw	a4,-20(s0)
 450:	87ba                	mv	a5,a4
 452:	0027979b          	slliw	a5,a5,0x2
 456:	9fb9                	addw	a5,a5,a4
 458:	0017979b          	slliw	a5,a5,0x1
 45c:	0007871b          	sext.w	a4,a5
 460:	fd843783          	ld	a5,-40(s0)
 464:	00178693          	addi	a3,a5,1
 468:	fcd43c23          	sd	a3,-40(s0)
 46c:	0007c783          	lbu	a5,0(a5)
 470:	2781                	sext.w	a5,a5
 472:	9fb9                	addw	a5,a5,a4
 474:	2781                	sext.w	a5,a5
 476:	fd07879b          	addiw	a5,a5,-48
 47a:	fef42623          	sw	a5,-20(s0)
 47e:	fd843783          	ld	a5,-40(s0)
 482:	0007c783          	lbu	a5,0(a5)
 486:	873e                	mv	a4,a5
 488:	02f00793          	li	a5,47
 48c:	00e7fb63          	bgeu	a5,a4,4a2 <atoi+0x66>
 490:	fd843783          	ld	a5,-40(s0)
 494:	0007c783          	lbu	a5,0(a5)
 498:	873e                	mv	a4,a5
 49a:	03900793          	li	a5,57
 49e:	fae7f7e3          	bgeu	a5,a4,44c <atoi+0x10>
 4a2:	fec42783          	lw	a5,-20(s0)
 4a6:	853e                	mv	a0,a5
 4a8:	7422                	ld	s0,40(sp)
 4aa:	6145                	addi	sp,sp,48
 4ac:	8082                	ret

00000000000004ae <memmove>:
 4ae:	7139                	addi	sp,sp,-64
 4b0:	fc22                	sd	s0,56(sp)
 4b2:	0080                	addi	s0,sp,64
 4b4:	fca43c23          	sd	a0,-40(s0)
 4b8:	fcb43823          	sd	a1,-48(s0)
 4bc:	87b2                	mv	a5,a2
 4be:	fcf42623          	sw	a5,-52(s0)
 4c2:	fd843783          	ld	a5,-40(s0)
 4c6:	fef43423          	sd	a5,-24(s0)
 4ca:	fd043783          	ld	a5,-48(s0)
 4ce:	fef43023          	sd	a5,-32(s0)
 4d2:	fe043703          	ld	a4,-32(s0)
 4d6:	fe843783          	ld	a5,-24(s0)
 4da:	02e7fc63          	bgeu	a5,a4,512 <memmove+0x64>
 4de:	a00d                	j	500 <memmove+0x52>
 4e0:	fe043703          	ld	a4,-32(s0)
 4e4:	00170793          	addi	a5,a4,1
 4e8:	fef43023          	sd	a5,-32(s0)
 4ec:	fe843783          	ld	a5,-24(s0)
 4f0:	00178693          	addi	a3,a5,1
 4f4:	fed43423          	sd	a3,-24(s0)
 4f8:	00074703          	lbu	a4,0(a4)
 4fc:	00e78023          	sb	a4,0(a5)
 500:	fcc42783          	lw	a5,-52(s0)
 504:	fff7871b          	addiw	a4,a5,-1
 508:	fce42623          	sw	a4,-52(s0)
 50c:	fcf04ae3          	bgtz	a5,4e0 <memmove+0x32>
 510:	a891                	j	564 <memmove+0xb6>
 512:	fcc42783          	lw	a5,-52(s0)
 516:	fe843703          	ld	a4,-24(s0)
 51a:	97ba                	add	a5,a5,a4
 51c:	fef43423          	sd	a5,-24(s0)
 520:	fcc42783          	lw	a5,-52(s0)
 524:	fe043703          	ld	a4,-32(s0)
 528:	97ba                	add	a5,a5,a4
 52a:	fef43023          	sd	a5,-32(s0)
 52e:	a01d                	j	554 <memmove+0xa6>
 530:	fe043783          	ld	a5,-32(s0)
 534:	17fd                	addi	a5,a5,-1
 536:	fef43023          	sd	a5,-32(s0)
 53a:	fe843783          	ld	a5,-24(s0)
 53e:	17fd                	addi	a5,a5,-1
 540:	fef43423          	sd	a5,-24(s0)
 544:	fe043783          	ld	a5,-32(s0)
 548:	0007c703          	lbu	a4,0(a5)
 54c:	fe843783          	ld	a5,-24(s0)
 550:	00e78023          	sb	a4,0(a5)
 554:	fcc42783          	lw	a5,-52(s0)
 558:	fff7871b          	addiw	a4,a5,-1
 55c:	fce42623          	sw	a4,-52(s0)
 560:	fcf048e3          	bgtz	a5,530 <memmove+0x82>
 564:	fd843783          	ld	a5,-40(s0)
 568:	853e                	mv	a0,a5
 56a:	7462                	ld	s0,56(sp)
 56c:	6121                	addi	sp,sp,64
 56e:	8082                	ret

0000000000000570 <memcmp>:
 570:	7139                	addi	sp,sp,-64
 572:	fc22                	sd	s0,56(sp)
 574:	0080                	addi	s0,sp,64
 576:	fca43c23          	sd	a0,-40(s0)
 57a:	fcb43823          	sd	a1,-48(s0)
 57e:	87b2                	mv	a5,a2
 580:	fcf42623          	sw	a5,-52(s0)
 584:	fd843783          	ld	a5,-40(s0)
 588:	fef43423          	sd	a5,-24(s0)
 58c:	fd043783          	ld	a5,-48(s0)
 590:	fef43023          	sd	a5,-32(s0)
 594:	a0a1                	j	5dc <memcmp+0x6c>
 596:	fe843783          	ld	a5,-24(s0)
 59a:	0007c703          	lbu	a4,0(a5)
 59e:	fe043783          	ld	a5,-32(s0)
 5a2:	0007c783          	lbu	a5,0(a5)
 5a6:	02f70163          	beq	a4,a5,5c8 <memcmp+0x58>
 5aa:	fe843783          	ld	a5,-24(s0)
 5ae:	0007c783          	lbu	a5,0(a5)
 5b2:	0007871b          	sext.w	a4,a5
 5b6:	fe043783          	ld	a5,-32(s0)
 5ba:	0007c783          	lbu	a5,0(a5)
 5be:	2781                	sext.w	a5,a5
 5c0:	40f707bb          	subw	a5,a4,a5
 5c4:	2781                	sext.w	a5,a5
 5c6:	a01d                	j	5ec <memcmp+0x7c>
 5c8:	fe843783          	ld	a5,-24(s0)
 5cc:	0785                	addi	a5,a5,1
 5ce:	fef43423          	sd	a5,-24(s0)
 5d2:	fe043783          	ld	a5,-32(s0)
 5d6:	0785                	addi	a5,a5,1
 5d8:	fef43023          	sd	a5,-32(s0)
 5dc:	fcc42783          	lw	a5,-52(s0)
 5e0:	fff7871b          	addiw	a4,a5,-1
 5e4:	fce42623          	sw	a4,-52(s0)
 5e8:	f7dd                	bnez	a5,596 <memcmp+0x26>
 5ea:	4781                	li	a5,0
 5ec:	853e                	mv	a0,a5
 5ee:	7462                	ld	s0,56(sp)
 5f0:	6121                	addi	sp,sp,64
 5f2:	8082                	ret

00000000000005f4 <memcpy>:
 5f4:	7179                	addi	sp,sp,-48
 5f6:	f406                	sd	ra,40(sp)
 5f8:	f022                	sd	s0,32(sp)
 5fa:	1800                	addi	s0,sp,48
 5fc:	fea43423          	sd	a0,-24(s0)
 600:	feb43023          	sd	a1,-32(s0)
 604:	87b2                	mv	a5,a2
 606:	fcf42e23          	sw	a5,-36(s0)
 60a:	fdc42783          	lw	a5,-36(s0)
 60e:	863e                	mv	a2,a5
 610:	fe043583          	ld	a1,-32(s0)
 614:	fe843503          	ld	a0,-24(s0)
 618:	00000097          	auipc	ra,0x0
 61c:	e96080e7          	jalr	-362(ra) # 4ae <memmove>
 620:	87aa                	mv	a5,a0
 622:	853e                	mv	a0,a5
 624:	70a2                	ld	ra,40(sp)
 626:	7402                	ld	s0,32(sp)
 628:	6145                	addi	sp,sp,48
 62a:	8082                	ret

000000000000062c <fork>:
 62c:	4885                	li	a7,1
 62e:	00000073          	ecall
 632:	8082                	ret

0000000000000634 <exit>:
 634:	4889                	li	a7,2
 636:	00000073          	ecall
 63a:	8082                	ret

000000000000063c <wait>:
 63c:	488d                	li	a7,3
 63e:	00000073          	ecall
 642:	8082                	ret

0000000000000644 <pipe>:
 644:	4891                	li	a7,4
 646:	00000073          	ecall
 64a:	8082                	ret

000000000000064c <read>:
 64c:	4895                	li	a7,5
 64e:	00000073          	ecall
 652:	8082                	ret

0000000000000654 <write>:
 654:	48c1                	li	a7,16
 656:	00000073          	ecall
 65a:	8082                	ret

000000000000065c <close>:
 65c:	48d5                	li	a7,21
 65e:	00000073          	ecall
 662:	8082                	ret

0000000000000664 <kill>:
 664:	4899                	li	a7,6
 666:	00000073          	ecall
 66a:	8082                	ret

000000000000066c <exec>:
 66c:	489d                	li	a7,7
 66e:	00000073          	ecall
 672:	8082                	ret

0000000000000674 <open>:
 674:	48bd                	li	a7,15
 676:	00000073          	ecall
 67a:	8082                	ret

000000000000067c <mknod>:
 67c:	48c5                	li	a7,17
 67e:	00000073          	ecall
 682:	8082                	ret

0000000000000684 <unlink>:
 684:	48c9                	li	a7,18
 686:	00000073          	ecall
 68a:	8082                	ret

000000000000068c <fstat>:
 68c:	48a1                	li	a7,8
 68e:	00000073          	ecall
 692:	8082                	ret

0000000000000694 <link>:
 694:	48cd                	li	a7,19
 696:	00000073          	ecall
 69a:	8082                	ret

000000000000069c <mkdir>:
 69c:	48d1                	li	a7,20
 69e:	00000073          	ecall
 6a2:	8082                	ret

00000000000006a4 <chdir>:
 6a4:	48a5                	li	a7,9
 6a6:	00000073          	ecall
 6aa:	8082                	ret

00000000000006ac <dup>:
 6ac:	48a9                	li	a7,10
 6ae:	00000073          	ecall
 6b2:	8082                	ret

00000000000006b4 <getpid>:
 6b4:	48ad                	li	a7,11
 6b6:	00000073          	ecall
 6ba:	8082                	ret

00000000000006bc <sbrk>:
 6bc:	48b1                	li	a7,12
 6be:	00000073          	ecall
 6c2:	8082                	ret

00000000000006c4 <sleep>:
 6c4:	48b5                	li	a7,13
 6c6:	00000073          	ecall
 6ca:	8082                	ret

00000000000006cc <uptime>:
 6cc:	48b9                	li	a7,14
 6ce:	00000073          	ecall
 6d2:	8082                	ret

00000000000006d4 <putc>:
 6d4:	1101                	addi	sp,sp,-32
 6d6:	ec06                	sd	ra,24(sp)
 6d8:	e822                	sd	s0,16(sp)
 6da:	1000                	addi	s0,sp,32
 6dc:	87aa                	mv	a5,a0
 6de:	872e                	mv	a4,a1
 6e0:	fef42623          	sw	a5,-20(s0)
 6e4:	87ba                	mv	a5,a4
 6e6:	fef405a3          	sb	a5,-21(s0)
 6ea:	feb40713          	addi	a4,s0,-21
 6ee:	fec42783          	lw	a5,-20(s0)
 6f2:	4605                	li	a2,1
 6f4:	85ba                	mv	a1,a4
 6f6:	853e                	mv	a0,a5
 6f8:	00000097          	auipc	ra,0x0
 6fc:	f5c080e7          	jalr	-164(ra) # 654 <write>
 700:	0001                	nop
 702:	60e2                	ld	ra,24(sp)
 704:	6442                	ld	s0,16(sp)
 706:	6105                	addi	sp,sp,32
 708:	8082                	ret

000000000000070a <printint>:
 70a:	7139                	addi	sp,sp,-64
 70c:	fc06                	sd	ra,56(sp)
 70e:	f822                	sd	s0,48(sp)
 710:	0080                	addi	s0,sp,64
 712:	87aa                	mv	a5,a0
 714:	8736                	mv	a4,a3
 716:	fcf42623          	sw	a5,-52(s0)
 71a:	87ae                	mv	a5,a1
 71c:	fcf42423          	sw	a5,-56(s0)
 720:	87b2                	mv	a5,a2
 722:	fcf42223          	sw	a5,-60(s0)
 726:	87ba                	mv	a5,a4
 728:	fcf42023          	sw	a5,-64(s0)
 72c:	fe042423          	sw	zero,-24(s0)
 730:	fc042783          	lw	a5,-64(s0)
 734:	2781                	sext.w	a5,a5
 736:	c38d                	beqz	a5,758 <printint+0x4e>
 738:	fc842783          	lw	a5,-56(s0)
 73c:	2781                	sext.w	a5,a5
 73e:	0007dd63          	bgez	a5,758 <printint+0x4e>
 742:	4785                	li	a5,1
 744:	fef42423          	sw	a5,-24(s0)
 748:	fc842783          	lw	a5,-56(s0)
 74c:	40f007bb          	negw	a5,a5
 750:	2781                	sext.w	a5,a5
 752:	fef42223          	sw	a5,-28(s0)
 756:	a029                	j	760 <printint+0x56>
 758:	fc842783          	lw	a5,-56(s0)
 75c:	fef42223          	sw	a5,-28(s0)
 760:	fe042623          	sw	zero,-20(s0)
 764:	fc442783          	lw	a5,-60(s0)
 768:	fe442703          	lw	a4,-28(s0)
 76c:	02f777bb          	remuw	a5,a4,a5
 770:	0007861b          	sext.w	a2,a5
 774:	fec42783          	lw	a5,-20(s0)
 778:	0017871b          	addiw	a4,a5,1
 77c:	fee42623          	sw	a4,-20(s0)
 780:	00000697          	auipc	a3,0x0
 784:	7e068693          	addi	a3,a3,2016 # f60 <digits>
 788:	02061713          	slli	a4,a2,0x20
 78c:	9301                	srli	a4,a4,0x20
 78e:	9736                	add	a4,a4,a3
 790:	00074703          	lbu	a4,0(a4)
 794:	ff040693          	addi	a3,s0,-16
 798:	97b6                	add	a5,a5,a3
 79a:	fee78023          	sb	a4,-32(a5)
 79e:	fc442783          	lw	a5,-60(s0)
 7a2:	fe442703          	lw	a4,-28(s0)
 7a6:	02f757bb          	divuw	a5,a4,a5
 7aa:	fef42223          	sw	a5,-28(s0)
 7ae:	fe442783          	lw	a5,-28(s0)
 7b2:	2781                	sext.w	a5,a5
 7b4:	fbc5                	bnez	a5,764 <printint+0x5a>
 7b6:	fe842783          	lw	a5,-24(s0)
 7ba:	2781                	sext.w	a5,a5
 7bc:	cf95                	beqz	a5,7f8 <printint+0xee>
 7be:	fec42783          	lw	a5,-20(s0)
 7c2:	0017871b          	addiw	a4,a5,1
 7c6:	fee42623          	sw	a4,-20(s0)
 7ca:	ff040713          	addi	a4,s0,-16
 7ce:	97ba                	add	a5,a5,a4
 7d0:	02d00713          	li	a4,45
 7d4:	fee78023          	sb	a4,-32(a5)
 7d8:	a005                	j	7f8 <printint+0xee>
 7da:	fec42783          	lw	a5,-20(s0)
 7de:	ff040713          	addi	a4,s0,-16
 7e2:	97ba                	add	a5,a5,a4
 7e4:	fe07c703          	lbu	a4,-32(a5)
 7e8:	fcc42783          	lw	a5,-52(s0)
 7ec:	85ba                	mv	a1,a4
 7ee:	853e                	mv	a0,a5
 7f0:	00000097          	auipc	ra,0x0
 7f4:	ee4080e7          	jalr	-284(ra) # 6d4 <putc>
 7f8:	fec42783          	lw	a5,-20(s0)
 7fc:	37fd                	addiw	a5,a5,-1
 7fe:	fef42623          	sw	a5,-20(s0)
 802:	fec42783          	lw	a5,-20(s0)
 806:	2781                	sext.w	a5,a5
 808:	fc07d9e3          	bgez	a5,7da <printint+0xd0>
 80c:	0001                	nop
 80e:	0001                	nop
 810:	70e2                	ld	ra,56(sp)
 812:	7442                	ld	s0,48(sp)
 814:	6121                	addi	sp,sp,64
 816:	8082                	ret

0000000000000818 <printptr>:
 818:	7179                	addi	sp,sp,-48
 81a:	f406                	sd	ra,40(sp)
 81c:	f022                	sd	s0,32(sp)
 81e:	1800                	addi	s0,sp,48
 820:	87aa                	mv	a5,a0
 822:	fcb43823          	sd	a1,-48(s0)
 826:	fcf42e23          	sw	a5,-36(s0)
 82a:	fdc42783          	lw	a5,-36(s0)
 82e:	03000593          	li	a1,48
 832:	853e                	mv	a0,a5
 834:	00000097          	auipc	ra,0x0
 838:	ea0080e7          	jalr	-352(ra) # 6d4 <putc>
 83c:	fdc42783          	lw	a5,-36(s0)
 840:	07800593          	li	a1,120
 844:	853e                	mv	a0,a5
 846:	00000097          	auipc	ra,0x0
 84a:	e8e080e7          	jalr	-370(ra) # 6d4 <putc>
 84e:	fe042623          	sw	zero,-20(s0)
 852:	a82d                	j	88c <printptr+0x74>
 854:	fd043783          	ld	a5,-48(s0)
 858:	93f1                	srli	a5,a5,0x3c
 85a:	00000717          	auipc	a4,0x0
 85e:	70670713          	addi	a4,a4,1798 # f60 <digits>
 862:	97ba                	add	a5,a5,a4
 864:	0007c703          	lbu	a4,0(a5)
 868:	fdc42783          	lw	a5,-36(s0)
 86c:	85ba                	mv	a1,a4
 86e:	853e                	mv	a0,a5
 870:	00000097          	auipc	ra,0x0
 874:	e64080e7          	jalr	-412(ra) # 6d4 <putc>
 878:	fec42783          	lw	a5,-20(s0)
 87c:	2785                	addiw	a5,a5,1
 87e:	fef42623          	sw	a5,-20(s0)
 882:	fd043783          	ld	a5,-48(s0)
 886:	0792                	slli	a5,a5,0x4
 888:	fcf43823          	sd	a5,-48(s0)
 88c:	fec42783          	lw	a5,-20(s0)
 890:	873e                	mv	a4,a5
 892:	47bd                	li	a5,15
 894:	fce7f0e3          	bgeu	a5,a4,854 <printptr+0x3c>
 898:	0001                	nop
 89a:	0001                	nop
 89c:	70a2                	ld	ra,40(sp)
 89e:	7402                	ld	s0,32(sp)
 8a0:	6145                	addi	sp,sp,48
 8a2:	8082                	ret

00000000000008a4 <vprintf>:
 8a4:	715d                	addi	sp,sp,-80
 8a6:	e486                	sd	ra,72(sp)
 8a8:	e0a2                	sd	s0,64(sp)
 8aa:	0880                	addi	s0,sp,80
 8ac:	87aa                	mv	a5,a0
 8ae:	fcb43023          	sd	a1,-64(s0)
 8b2:	fac43c23          	sd	a2,-72(s0)
 8b6:	fcf42623          	sw	a5,-52(s0)
 8ba:	fe042023          	sw	zero,-32(s0)
 8be:	fe042223          	sw	zero,-28(s0)
 8c2:	a42d                	j	aec <vprintf+0x248>
 8c4:	fe442783          	lw	a5,-28(s0)
 8c8:	fc043703          	ld	a4,-64(s0)
 8cc:	97ba                	add	a5,a5,a4
 8ce:	0007c783          	lbu	a5,0(a5)
 8d2:	fcf42e23          	sw	a5,-36(s0)
 8d6:	fe042783          	lw	a5,-32(s0)
 8da:	2781                	sext.w	a5,a5
 8dc:	eb9d                	bnez	a5,912 <vprintf+0x6e>
 8de:	fdc42783          	lw	a5,-36(s0)
 8e2:	0007871b          	sext.w	a4,a5
 8e6:	02500793          	li	a5,37
 8ea:	00f71763          	bne	a4,a5,8f8 <vprintf+0x54>
 8ee:	02500793          	li	a5,37
 8f2:	fef42023          	sw	a5,-32(s0)
 8f6:	a2f5                	j	ae2 <vprintf+0x23e>
 8f8:	fdc42783          	lw	a5,-36(s0)
 8fc:	0ff7f713          	andi	a4,a5,255
 900:	fcc42783          	lw	a5,-52(s0)
 904:	85ba                	mv	a1,a4
 906:	853e                	mv	a0,a5
 908:	00000097          	auipc	ra,0x0
 90c:	dcc080e7          	jalr	-564(ra) # 6d4 <putc>
 910:	aac9                	j	ae2 <vprintf+0x23e>
 912:	fe042783          	lw	a5,-32(s0)
 916:	0007871b          	sext.w	a4,a5
 91a:	02500793          	li	a5,37
 91e:	1cf71263          	bne	a4,a5,ae2 <vprintf+0x23e>
 922:	fdc42783          	lw	a5,-36(s0)
 926:	0007871b          	sext.w	a4,a5
 92a:	06400793          	li	a5,100
 92e:	02f71463          	bne	a4,a5,956 <vprintf+0xb2>
 932:	fb843783          	ld	a5,-72(s0)
 936:	00878713          	addi	a4,a5,8
 93a:	fae43c23          	sd	a4,-72(s0)
 93e:	4398                	lw	a4,0(a5)
 940:	fcc42783          	lw	a5,-52(s0)
 944:	4685                	li	a3,1
 946:	4629                	li	a2,10
 948:	85ba                	mv	a1,a4
 94a:	853e                	mv	a0,a5
 94c:	00000097          	auipc	ra,0x0
 950:	dbe080e7          	jalr	-578(ra) # 70a <printint>
 954:	a269                	j	ade <vprintf+0x23a>
 956:	fdc42783          	lw	a5,-36(s0)
 95a:	0007871b          	sext.w	a4,a5
 95e:	06c00793          	li	a5,108
 962:	02f71663          	bne	a4,a5,98e <vprintf+0xea>
 966:	fb843783          	ld	a5,-72(s0)
 96a:	00878713          	addi	a4,a5,8
 96e:	fae43c23          	sd	a4,-72(s0)
 972:	639c                	ld	a5,0(a5)
 974:	0007871b          	sext.w	a4,a5
 978:	fcc42783          	lw	a5,-52(s0)
 97c:	4681                	li	a3,0
 97e:	4629                	li	a2,10
 980:	85ba                	mv	a1,a4
 982:	853e                	mv	a0,a5
 984:	00000097          	auipc	ra,0x0
 988:	d86080e7          	jalr	-634(ra) # 70a <printint>
 98c:	aa89                	j	ade <vprintf+0x23a>
 98e:	fdc42783          	lw	a5,-36(s0)
 992:	0007871b          	sext.w	a4,a5
 996:	07800793          	li	a5,120
 99a:	02f71463          	bne	a4,a5,9c2 <vprintf+0x11e>
 99e:	fb843783          	ld	a5,-72(s0)
 9a2:	00878713          	addi	a4,a5,8
 9a6:	fae43c23          	sd	a4,-72(s0)
 9aa:	4398                	lw	a4,0(a5)
 9ac:	fcc42783          	lw	a5,-52(s0)
 9b0:	4681                	li	a3,0
 9b2:	4641                	li	a2,16
 9b4:	85ba                	mv	a1,a4
 9b6:	853e                	mv	a0,a5
 9b8:	00000097          	auipc	ra,0x0
 9bc:	d52080e7          	jalr	-686(ra) # 70a <printint>
 9c0:	aa39                	j	ade <vprintf+0x23a>
 9c2:	fdc42783          	lw	a5,-36(s0)
 9c6:	0007871b          	sext.w	a4,a5
 9ca:	07000793          	li	a5,112
 9ce:	02f71263          	bne	a4,a5,9f2 <vprintf+0x14e>
 9d2:	fb843783          	ld	a5,-72(s0)
 9d6:	00878713          	addi	a4,a5,8
 9da:	fae43c23          	sd	a4,-72(s0)
 9de:	6398                	ld	a4,0(a5)
 9e0:	fcc42783          	lw	a5,-52(s0)
 9e4:	85ba                	mv	a1,a4
 9e6:	853e                	mv	a0,a5
 9e8:	00000097          	auipc	ra,0x0
 9ec:	e30080e7          	jalr	-464(ra) # 818 <printptr>
 9f0:	a0fd                	j	ade <vprintf+0x23a>
 9f2:	fdc42783          	lw	a5,-36(s0)
 9f6:	0007871b          	sext.w	a4,a5
 9fa:	07300793          	li	a5,115
 9fe:	04f71c63          	bne	a4,a5,a56 <vprintf+0x1b2>
 a02:	fb843783          	ld	a5,-72(s0)
 a06:	00878713          	addi	a4,a5,8
 a0a:	fae43c23          	sd	a4,-72(s0)
 a0e:	639c                	ld	a5,0(a5)
 a10:	fef43423          	sd	a5,-24(s0)
 a14:	fe843783          	ld	a5,-24(s0)
 a18:	eb8d                	bnez	a5,a4a <vprintf+0x1a6>
 a1a:	00000797          	auipc	a5,0x0
 a1e:	53e78793          	addi	a5,a5,1342 # f58 <longjmp_1+0x54>
 a22:	fef43423          	sd	a5,-24(s0)
 a26:	a015                	j	a4a <vprintf+0x1a6>
 a28:	fe843783          	ld	a5,-24(s0)
 a2c:	0007c703          	lbu	a4,0(a5)
 a30:	fcc42783          	lw	a5,-52(s0)
 a34:	85ba                	mv	a1,a4
 a36:	853e                	mv	a0,a5
 a38:	00000097          	auipc	ra,0x0
 a3c:	c9c080e7          	jalr	-868(ra) # 6d4 <putc>
 a40:	fe843783          	ld	a5,-24(s0)
 a44:	0785                	addi	a5,a5,1
 a46:	fef43423          	sd	a5,-24(s0)
 a4a:	fe843783          	ld	a5,-24(s0)
 a4e:	0007c783          	lbu	a5,0(a5)
 a52:	fbf9                	bnez	a5,a28 <vprintf+0x184>
 a54:	a069                	j	ade <vprintf+0x23a>
 a56:	fdc42783          	lw	a5,-36(s0)
 a5a:	0007871b          	sext.w	a4,a5
 a5e:	06300793          	li	a5,99
 a62:	02f71463          	bne	a4,a5,a8a <vprintf+0x1e6>
 a66:	fb843783          	ld	a5,-72(s0)
 a6a:	00878713          	addi	a4,a5,8
 a6e:	fae43c23          	sd	a4,-72(s0)
 a72:	439c                	lw	a5,0(a5)
 a74:	0ff7f713          	andi	a4,a5,255
 a78:	fcc42783          	lw	a5,-52(s0)
 a7c:	85ba                	mv	a1,a4
 a7e:	853e                	mv	a0,a5
 a80:	00000097          	auipc	ra,0x0
 a84:	c54080e7          	jalr	-940(ra) # 6d4 <putc>
 a88:	a899                	j	ade <vprintf+0x23a>
 a8a:	fdc42783          	lw	a5,-36(s0)
 a8e:	0007871b          	sext.w	a4,a5
 a92:	02500793          	li	a5,37
 a96:	00f71f63          	bne	a4,a5,ab4 <vprintf+0x210>
 a9a:	fdc42783          	lw	a5,-36(s0)
 a9e:	0ff7f713          	andi	a4,a5,255
 aa2:	fcc42783          	lw	a5,-52(s0)
 aa6:	85ba                	mv	a1,a4
 aa8:	853e                	mv	a0,a5
 aaa:	00000097          	auipc	ra,0x0
 aae:	c2a080e7          	jalr	-982(ra) # 6d4 <putc>
 ab2:	a035                	j	ade <vprintf+0x23a>
 ab4:	fcc42783          	lw	a5,-52(s0)
 ab8:	02500593          	li	a1,37
 abc:	853e                	mv	a0,a5
 abe:	00000097          	auipc	ra,0x0
 ac2:	c16080e7          	jalr	-1002(ra) # 6d4 <putc>
 ac6:	fdc42783          	lw	a5,-36(s0)
 aca:	0ff7f713          	andi	a4,a5,255
 ace:	fcc42783          	lw	a5,-52(s0)
 ad2:	85ba                	mv	a1,a4
 ad4:	853e                	mv	a0,a5
 ad6:	00000097          	auipc	ra,0x0
 ada:	bfe080e7          	jalr	-1026(ra) # 6d4 <putc>
 ade:	fe042023          	sw	zero,-32(s0)
 ae2:	fe442783          	lw	a5,-28(s0)
 ae6:	2785                	addiw	a5,a5,1
 ae8:	fef42223          	sw	a5,-28(s0)
 aec:	fe442783          	lw	a5,-28(s0)
 af0:	fc043703          	ld	a4,-64(s0)
 af4:	97ba                	add	a5,a5,a4
 af6:	0007c783          	lbu	a5,0(a5)
 afa:	dc0795e3          	bnez	a5,8c4 <vprintf+0x20>
 afe:	0001                	nop
 b00:	0001                	nop
 b02:	60a6                	ld	ra,72(sp)
 b04:	6406                	ld	s0,64(sp)
 b06:	6161                	addi	sp,sp,80
 b08:	8082                	ret

0000000000000b0a <fprintf>:
 b0a:	7159                	addi	sp,sp,-112
 b0c:	fc06                	sd	ra,56(sp)
 b0e:	f822                	sd	s0,48(sp)
 b10:	0080                	addi	s0,sp,64
 b12:	fcb43823          	sd	a1,-48(s0)
 b16:	e010                	sd	a2,0(s0)
 b18:	e414                	sd	a3,8(s0)
 b1a:	e818                	sd	a4,16(s0)
 b1c:	ec1c                	sd	a5,24(s0)
 b1e:	03043023          	sd	a6,32(s0)
 b22:	03143423          	sd	a7,40(s0)
 b26:	87aa                	mv	a5,a0
 b28:	fcf42e23          	sw	a5,-36(s0)
 b2c:	03040793          	addi	a5,s0,48
 b30:	fcf43423          	sd	a5,-56(s0)
 b34:	fc843783          	ld	a5,-56(s0)
 b38:	fd078793          	addi	a5,a5,-48
 b3c:	fef43423          	sd	a5,-24(s0)
 b40:	fe843703          	ld	a4,-24(s0)
 b44:	fdc42783          	lw	a5,-36(s0)
 b48:	863a                	mv	a2,a4
 b4a:	fd043583          	ld	a1,-48(s0)
 b4e:	853e                	mv	a0,a5
 b50:	00000097          	auipc	ra,0x0
 b54:	d54080e7          	jalr	-684(ra) # 8a4 <vprintf>
 b58:	0001                	nop
 b5a:	70e2                	ld	ra,56(sp)
 b5c:	7442                	ld	s0,48(sp)
 b5e:	6165                	addi	sp,sp,112
 b60:	8082                	ret

0000000000000b62 <printf>:
 b62:	7159                	addi	sp,sp,-112
 b64:	f406                	sd	ra,40(sp)
 b66:	f022                	sd	s0,32(sp)
 b68:	1800                	addi	s0,sp,48
 b6a:	fca43c23          	sd	a0,-40(s0)
 b6e:	e40c                	sd	a1,8(s0)
 b70:	e810                	sd	a2,16(s0)
 b72:	ec14                	sd	a3,24(s0)
 b74:	f018                	sd	a4,32(s0)
 b76:	f41c                	sd	a5,40(s0)
 b78:	03043823          	sd	a6,48(s0)
 b7c:	03143c23          	sd	a7,56(s0)
 b80:	04040793          	addi	a5,s0,64
 b84:	fcf43823          	sd	a5,-48(s0)
 b88:	fd043783          	ld	a5,-48(s0)
 b8c:	fc878793          	addi	a5,a5,-56
 b90:	fef43423          	sd	a5,-24(s0)
 b94:	fe843783          	ld	a5,-24(s0)
 b98:	863e                	mv	a2,a5
 b9a:	fd843583          	ld	a1,-40(s0)
 b9e:	4505                	li	a0,1
 ba0:	00000097          	auipc	ra,0x0
 ba4:	d04080e7          	jalr	-764(ra) # 8a4 <vprintf>
 ba8:	0001                	nop
 baa:	70a2                	ld	ra,40(sp)
 bac:	7402                	ld	s0,32(sp)
 bae:	6165                	addi	sp,sp,112
 bb0:	8082                	ret

0000000000000bb2 <free>:
 bb2:	7179                	addi	sp,sp,-48
 bb4:	f422                	sd	s0,40(sp)
 bb6:	1800                	addi	s0,sp,48
 bb8:	fca43c23          	sd	a0,-40(s0)
 bbc:	fd843783          	ld	a5,-40(s0)
 bc0:	17c1                	addi	a5,a5,-16
 bc2:	fef43023          	sd	a5,-32(s0)
 bc6:	00000797          	auipc	a5,0x0
 bca:	4a278793          	addi	a5,a5,1186 # 1068 <freep>
 bce:	639c                	ld	a5,0(a5)
 bd0:	fef43423          	sd	a5,-24(s0)
 bd4:	a815                	j	c08 <free+0x56>
 bd6:	fe843783          	ld	a5,-24(s0)
 bda:	639c                	ld	a5,0(a5)
 bdc:	fe843703          	ld	a4,-24(s0)
 be0:	00f76f63          	bltu	a4,a5,bfe <free+0x4c>
 be4:	fe043703          	ld	a4,-32(s0)
 be8:	fe843783          	ld	a5,-24(s0)
 bec:	02e7eb63          	bltu	a5,a4,c22 <free+0x70>
 bf0:	fe843783          	ld	a5,-24(s0)
 bf4:	639c                	ld	a5,0(a5)
 bf6:	fe043703          	ld	a4,-32(s0)
 bfa:	02f76463          	bltu	a4,a5,c22 <free+0x70>
 bfe:	fe843783          	ld	a5,-24(s0)
 c02:	639c                	ld	a5,0(a5)
 c04:	fef43423          	sd	a5,-24(s0)
 c08:	fe043703          	ld	a4,-32(s0)
 c0c:	fe843783          	ld	a5,-24(s0)
 c10:	fce7f3e3          	bgeu	a5,a4,bd6 <free+0x24>
 c14:	fe843783          	ld	a5,-24(s0)
 c18:	639c                	ld	a5,0(a5)
 c1a:	fe043703          	ld	a4,-32(s0)
 c1e:	faf77ce3          	bgeu	a4,a5,bd6 <free+0x24>
 c22:	fe043783          	ld	a5,-32(s0)
 c26:	479c                	lw	a5,8(a5)
 c28:	1782                	slli	a5,a5,0x20
 c2a:	9381                	srli	a5,a5,0x20
 c2c:	0792                	slli	a5,a5,0x4
 c2e:	fe043703          	ld	a4,-32(s0)
 c32:	973e                	add	a4,a4,a5
 c34:	fe843783          	ld	a5,-24(s0)
 c38:	639c                	ld	a5,0(a5)
 c3a:	02f71763          	bne	a4,a5,c68 <free+0xb6>
 c3e:	fe043783          	ld	a5,-32(s0)
 c42:	4798                	lw	a4,8(a5)
 c44:	fe843783          	ld	a5,-24(s0)
 c48:	639c                	ld	a5,0(a5)
 c4a:	479c                	lw	a5,8(a5)
 c4c:	9fb9                	addw	a5,a5,a4
 c4e:	0007871b          	sext.w	a4,a5
 c52:	fe043783          	ld	a5,-32(s0)
 c56:	c798                	sw	a4,8(a5)
 c58:	fe843783          	ld	a5,-24(s0)
 c5c:	639c                	ld	a5,0(a5)
 c5e:	6398                	ld	a4,0(a5)
 c60:	fe043783          	ld	a5,-32(s0)
 c64:	e398                	sd	a4,0(a5)
 c66:	a039                	j	c74 <free+0xc2>
 c68:	fe843783          	ld	a5,-24(s0)
 c6c:	6398                	ld	a4,0(a5)
 c6e:	fe043783          	ld	a5,-32(s0)
 c72:	e398                	sd	a4,0(a5)
 c74:	fe843783          	ld	a5,-24(s0)
 c78:	479c                	lw	a5,8(a5)
 c7a:	1782                	slli	a5,a5,0x20
 c7c:	9381                	srli	a5,a5,0x20
 c7e:	0792                	slli	a5,a5,0x4
 c80:	fe843703          	ld	a4,-24(s0)
 c84:	97ba                	add	a5,a5,a4
 c86:	fe043703          	ld	a4,-32(s0)
 c8a:	02f71563          	bne	a4,a5,cb4 <free+0x102>
 c8e:	fe843783          	ld	a5,-24(s0)
 c92:	4798                	lw	a4,8(a5)
 c94:	fe043783          	ld	a5,-32(s0)
 c98:	479c                	lw	a5,8(a5)
 c9a:	9fb9                	addw	a5,a5,a4
 c9c:	0007871b          	sext.w	a4,a5
 ca0:	fe843783          	ld	a5,-24(s0)
 ca4:	c798                	sw	a4,8(a5)
 ca6:	fe043783          	ld	a5,-32(s0)
 caa:	6398                	ld	a4,0(a5)
 cac:	fe843783          	ld	a5,-24(s0)
 cb0:	e398                	sd	a4,0(a5)
 cb2:	a031                	j	cbe <free+0x10c>
 cb4:	fe843783          	ld	a5,-24(s0)
 cb8:	fe043703          	ld	a4,-32(s0)
 cbc:	e398                	sd	a4,0(a5)
 cbe:	00000797          	auipc	a5,0x0
 cc2:	3aa78793          	addi	a5,a5,938 # 1068 <freep>
 cc6:	fe843703          	ld	a4,-24(s0)
 cca:	e398                	sd	a4,0(a5)
 ccc:	0001                	nop
 cce:	7422                	ld	s0,40(sp)
 cd0:	6145                	addi	sp,sp,48
 cd2:	8082                	ret

0000000000000cd4 <morecore>:
 cd4:	7179                	addi	sp,sp,-48
 cd6:	f406                	sd	ra,40(sp)
 cd8:	f022                	sd	s0,32(sp)
 cda:	1800                	addi	s0,sp,48
 cdc:	87aa                	mv	a5,a0
 cde:	fcf42e23          	sw	a5,-36(s0)
 ce2:	fdc42783          	lw	a5,-36(s0)
 ce6:	0007871b          	sext.w	a4,a5
 cea:	6785                	lui	a5,0x1
 cec:	00f77563          	bgeu	a4,a5,cf6 <morecore+0x22>
 cf0:	6785                	lui	a5,0x1
 cf2:	fcf42e23          	sw	a5,-36(s0)
 cf6:	fdc42783          	lw	a5,-36(s0)
 cfa:	0047979b          	slliw	a5,a5,0x4
 cfe:	2781                	sext.w	a5,a5
 d00:	2781                	sext.w	a5,a5
 d02:	853e                	mv	a0,a5
 d04:	00000097          	auipc	ra,0x0
 d08:	9b8080e7          	jalr	-1608(ra) # 6bc <sbrk>
 d0c:	fea43423          	sd	a0,-24(s0)
 d10:	fe843703          	ld	a4,-24(s0)
 d14:	57fd                	li	a5,-1
 d16:	00f71463          	bne	a4,a5,d1e <morecore+0x4a>
 d1a:	4781                	li	a5,0
 d1c:	a03d                	j	d4a <morecore+0x76>
 d1e:	fe843783          	ld	a5,-24(s0)
 d22:	fef43023          	sd	a5,-32(s0)
 d26:	fe043783          	ld	a5,-32(s0)
 d2a:	fdc42703          	lw	a4,-36(s0)
 d2e:	c798                	sw	a4,8(a5)
 d30:	fe043783          	ld	a5,-32(s0)
 d34:	07c1                	addi	a5,a5,16
 d36:	853e                	mv	a0,a5
 d38:	00000097          	auipc	ra,0x0
 d3c:	e7a080e7          	jalr	-390(ra) # bb2 <free>
 d40:	00000797          	auipc	a5,0x0
 d44:	32878793          	addi	a5,a5,808 # 1068 <freep>
 d48:	639c                	ld	a5,0(a5)
 d4a:	853e                	mv	a0,a5
 d4c:	70a2                	ld	ra,40(sp)
 d4e:	7402                	ld	s0,32(sp)
 d50:	6145                	addi	sp,sp,48
 d52:	8082                	ret

0000000000000d54 <malloc>:
 d54:	7139                	addi	sp,sp,-64
 d56:	fc06                	sd	ra,56(sp)
 d58:	f822                	sd	s0,48(sp)
 d5a:	0080                	addi	s0,sp,64
 d5c:	87aa                	mv	a5,a0
 d5e:	fcf42623          	sw	a5,-52(s0)
 d62:	fcc46783          	lwu	a5,-52(s0)
 d66:	07bd                	addi	a5,a5,15
 d68:	8391                	srli	a5,a5,0x4
 d6a:	2781                	sext.w	a5,a5
 d6c:	2785                	addiw	a5,a5,1
 d6e:	fcf42e23          	sw	a5,-36(s0)
 d72:	00000797          	auipc	a5,0x0
 d76:	2f678793          	addi	a5,a5,758 # 1068 <freep>
 d7a:	639c                	ld	a5,0(a5)
 d7c:	fef43023          	sd	a5,-32(s0)
 d80:	fe043783          	ld	a5,-32(s0)
 d84:	ef95                	bnez	a5,dc0 <malloc+0x6c>
 d86:	00000797          	auipc	a5,0x0
 d8a:	2d278793          	addi	a5,a5,722 # 1058 <base>
 d8e:	fef43023          	sd	a5,-32(s0)
 d92:	00000797          	auipc	a5,0x0
 d96:	2d678793          	addi	a5,a5,726 # 1068 <freep>
 d9a:	fe043703          	ld	a4,-32(s0)
 d9e:	e398                	sd	a4,0(a5)
 da0:	00000797          	auipc	a5,0x0
 da4:	2c878793          	addi	a5,a5,712 # 1068 <freep>
 da8:	6398                	ld	a4,0(a5)
 daa:	00000797          	auipc	a5,0x0
 dae:	2ae78793          	addi	a5,a5,686 # 1058 <base>
 db2:	e398                	sd	a4,0(a5)
 db4:	00000797          	auipc	a5,0x0
 db8:	2a478793          	addi	a5,a5,676 # 1058 <base>
 dbc:	0007a423          	sw	zero,8(a5)
 dc0:	fe043783          	ld	a5,-32(s0)
 dc4:	639c                	ld	a5,0(a5)
 dc6:	fef43423          	sd	a5,-24(s0)
 dca:	fe843783          	ld	a5,-24(s0)
 dce:	4798                	lw	a4,8(a5)
 dd0:	fdc42783          	lw	a5,-36(s0)
 dd4:	2781                	sext.w	a5,a5
 dd6:	06f76863          	bltu	a4,a5,e46 <malloc+0xf2>
 dda:	fe843783          	ld	a5,-24(s0)
 dde:	4798                	lw	a4,8(a5)
 de0:	fdc42783          	lw	a5,-36(s0)
 de4:	2781                	sext.w	a5,a5
 de6:	00e79963          	bne	a5,a4,df8 <malloc+0xa4>
 dea:	fe843783          	ld	a5,-24(s0)
 dee:	6398                	ld	a4,0(a5)
 df0:	fe043783          	ld	a5,-32(s0)
 df4:	e398                	sd	a4,0(a5)
 df6:	a82d                	j	e30 <malloc+0xdc>
 df8:	fe843783          	ld	a5,-24(s0)
 dfc:	4798                	lw	a4,8(a5)
 dfe:	fdc42783          	lw	a5,-36(s0)
 e02:	40f707bb          	subw	a5,a4,a5
 e06:	0007871b          	sext.w	a4,a5
 e0a:	fe843783          	ld	a5,-24(s0)
 e0e:	c798                	sw	a4,8(a5)
 e10:	fe843783          	ld	a5,-24(s0)
 e14:	479c                	lw	a5,8(a5)
 e16:	1782                	slli	a5,a5,0x20
 e18:	9381                	srli	a5,a5,0x20
 e1a:	0792                	slli	a5,a5,0x4
 e1c:	fe843703          	ld	a4,-24(s0)
 e20:	97ba                	add	a5,a5,a4
 e22:	fef43423          	sd	a5,-24(s0)
 e26:	fe843783          	ld	a5,-24(s0)
 e2a:	fdc42703          	lw	a4,-36(s0)
 e2e:	c798                	sw	a4,8(a5)
 e30:	00000797          	auipc	a5,0x0
 e34:	23878793          	addi	a5,a5,568 # 1068 <freep>
 e38:	fe043703          	ld	a4,-32(s0)
 e3c:	e398                	sd	a4,0(a5)
 e3e:	fe843783          	ld	a5,-24(s0)
 e42:	07c1                	addi	a5,a5,16
 e44:	a091                	j	e88 <malloc+0x134>
 e46:	00000797          	auipc	a5,0x0
 e4a:	22278793          	addi	a5,a5,546 # 1068 <freep>
 e4e:	639c                	ld	a5,0(a5)
 e50:	fe843703          	ld	a4,-24(s0)
 e54:	02f71063          	bne	a4,a5,e74 <malloc+0x120>
 e58:	fdc42783          	lw	a5,-36(s0)
 e5c:	853e                	mv	a0,a5
 e5e:	00000097          	auipc	ra,0x0
 e62:	e76080e7          	jalr	-394(ra) # cd4 <morecore>
 e66:	fea43423          	sd	a0,-24(s0)
 e6a:	fe843783          	ld	a5,-24(s0)
 e6e:	e399                	bnez	a5,e74 <malloc+0x120>
 e70:	4781                	li	a5,0
 e72:	a819                	j	e88 <malloc+0x134>
 e74:	fe843783          	ld	a5,-24(s0)
 e78:	fef43023          	sd	a5,-32(s0)
 e7c:	fe843783          	ld	a5,-24(s0)
 e80:	639c                	ld	a5,0(a5)
 e82:	fef43423          	sd	a5,-24(s0)
 e86:	b791                	j	dca <malloc+0x76>
 e88:	853e                	mv	a0,a5
 e8a:	70e2                	ld	ra,56(sp)
 e8c:	7442                	ld	s0,48(sp)
 e8e:	6121                	addi	sp,sp,64
 e90:	8082                	ret

0000000000000e92 <setjmp>:
 e92:	e100                	sd	s0,0(a0)
 e94:	e504                	sd	s1,8(a0)
 e96:	01253823          	sd	s2,16(a0)
 e9a:	01353c23          	sd	s3,24(a0)
 e9e:	03453023          	sd	s4,32(a0)
 ea2:	03553423          	sd	s5,40(a0)
 ea6:	03653823          	sd	s6,48(a0)
 eaa:	03753c23          	sd	s7,56(a0)
 eae:	05853023          	sd	s8,64(a0)
 eb2:	05953423          	sd	s9,72(a0)
 eb6:	05a53823          	sd	s10,80(a0)
 eba:	05b53c23          	sd	s11,88(a0)
 ebe:	06153023          	sd	ra,96(a0)
 ec2:	06253423          	sd	sp,104(a0)
 ec6:	4501                	li	a0,0
 ec8:	8082                	ret

0000000000000eca <longjmp>:
 eca:	6100                	ld	s0,0(a0)
 ecc:	6504                	ld	s1,8(a0)
 ece:	01053903          	ld	s2,16(a0)
 ed2:	01853983          	ld	s3,24(a0)
 ed6:	02053a03          	ld	s4,32(a0)
 eda:	02853a83          	ld	s5,40(a0)
 ede:	03053b03          	ld	s6,48(a0)
 ee2:	03853b83          	ld	s7,56(a0)
 ee6:	04053c03          	ld	s8,64(a0)
 eea:	04853c83          	ld	s9,72(a0)
 eee:	05053d03          	ld	s10,80(a0)
 ef2:	05853d83          	ld	s11,88(a0)
 ef6:	06053083          	ld	ra,96(a0)
 efa:	06853103          	ld	sp,104(a0)
 efe:	c199                	beqz	a1,f04 <longjmp_1>
 f00:	852e                	mv	a0,a1
 f02:	8082                	ret

0000000000000f04 <longjmp_1>:
 f04:	4505                	li	a0,1
 f06:	8082                	ret
