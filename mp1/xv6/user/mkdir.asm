
user/_mkdir:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	7179                	addi	sp,sp,-48
   2:	f406                	sd	ra,40(sp)
   4:	f022                	sd	s0,32(sp)
   6:	1800                	addi	s0,sp,48
   8:	87aa                	mv	a5,a0
   a:	fcb43823          	sd	a1,-48(s0)
   e:	fcf42e23          	sw	a5,-36(s0)
  12:	fdc42783          	lw	a5,-36(s0)
  16:	0007871b          	sext.w	a4,a5
  1a:	4785                	li	a5,1
  1c:	02e7c063          	blt	a5,a4,3c <main+0x3c>
  20:	00001597          	auipc	a1,0x1
  24:	df058593          	addi	a1,a1,-528 # e10 <longjmp_1+0x6>
  28:	4509                	li	a0,2
  2a:	00001097          	auipc	ra,0x1
  2e:	9e6080e7          	jalr	-1562(ra) # a10 <fprintf>
  32:	4505                	li	a0,1
  34:	00000097          	auipc	ra,0x0
  38:	506080e7          	jalr	1286(ra) # 53a <exit>
  3c:	4785                	li	a5,1
  3e:	fef42623          	sw	a5,-20(s0)
  42:	a0b9                	j	90 <main+0x90>
  44:	fec42783          	lw	a5,-20(s0)
  48:	078e                	slli	a5,a5,0x3
  4a:	fd043703          	ld	a4,-48(s0)
  4e:	97ba                	add	a5,a5,a4
  50:	639c                	ld	a5,0(a5)
  52:	853e                	mv	a0,a5
  54:	00000097          	auipc	ra,0x0
  58:	54e080e7          	jalr	1358(ra) # 5a2 <mkdir>
  5c:	87aa                	mv	a5,a0
  5e:	0207d463          	bgez	a5,86 <main+0x86>
  62:	fec42783          	lw	a5,-20(s0)
  66:	078e                	slli	a5,a5,0x3
  68:	fd043703          	ld	a4,-48(s0)
  6c:	97ba                	add	a5,a5,a4
  6e:	639c                	ld	a5,0(a5)
  70:	863e                	mv	a2,a5
  72:	00001597          	auipc	a1,0x1
  76:	db658593          	addi	a1,a1,-586 # e28 <longjmp_1+0x1e>
  7a:	4509                	li	a0,2
  7c:	00001097          	auipc	ra,0x1
  80:	994080e7          	jalr	-1644(ra) # a10 <fprintf>
  84:	a831                	j	a0 <main+0xa0>
  86:	fec42783          	lw	a5,-20(s0)
  8a:	2785                	addiw	a5,a5,1
  8c:	fef42623          	sw	a5,-20(s0)
  90:	fec42703          	lw	a4,-20(s0)
  94:	fdc42783          	lw	a5,-36(s0)
  98:	2701                	sext.w	a4,a4
  9a:	2781                	sext.w	a5,a5
  9c:	faf744e3          	blt	a4,a5,44 <main+0x44>
  a0:	4501                	li	a0,0
  a2:	00000097          	auipc	ra,0x0
  a6:	498080e7          	jalr	1176(ra) # 53a <exit>

00000000000000aa <strcpy>:
  aa:	7179                	addi	sp,sp,-48
  ac:	f422                	sd	s0,40(sp)
  ae:	1800                	addi	s0,sp,48
  b0:	fca43c23          	sd	a0,-40(s0)
  b4:	fcb43823          	sd	a1,-48(s0)
  b8:	fd843783          	ld	a5,-40(s0)
  bc:	fef43423          	sd	a5,-24(s0)
  c0:	0001                	nop
  c2:	fd043703          	ld	a4,-48(s0)
  c6:	00170793          	addi	a5,a4,1
  ca:	fcf43823          	sd	a5,-48(s0)
  ce:	fd843783          	ld	a5,-40(s0)
  d2:	00178693          	addi	a3,a5,1
  d6:	fcd43c23          	sd	a3,-40(s0)
  da:	00074703          	lbu	a4,0(a4)
  de:	00e78023          	sb	a4,0(a5)
  e2:	0007c783          	lbu	a5,0(a5)
  e6:	fff1                	bnez	a5,c2 <strcpy+0x18>
  e8:	fe843783          	ld	a5,-24(s0)
  ec:	853e                	mv	a0,a5
  ee:	7422                	ld	s0,40(sp)
  f0:	6145                	addi	sp,sp,48
  f2:	8082                	ret

00000000000000f4 <strcmp>:
  f4:	1101                	addi	sp,sp,-32
  f6:	ec22                	sd	s0,24(sp)
  f8:	1000                	addi	s0,sp,32
  fa:	fea43423          	sd	a0,-24(s0)
  fe:	feb43023          	sd	a1,-32(s0)
 102:	a819                	j	118 <strcmp+0x24>
 104:	fe843783          	ld	a5,-24(s0)
 108:	0785                	addi	a5,a5,1
 10a:	fef43423          	sd	a5,-24(s0)
 10e:	fe043783          	ld	a5,-32(s0)
 112:	0785                	addi	a5,a5,1
 114:	fef43023          	sd	a5,-32(s0)
 118:	fe843783          	ld	a5,-24(s0)
 11c:	0007c783          	lbu	a5,0(a5)
 120:	cb99                	beqz	a5,136 <strcmp+0x42>
 122:	fe843783          	ld	a5,-24(s0)
 126:	0007c703          	lbu	a4,0(a5)
 12a:	fe043783          	ld	a5,-32(s0)
 12e:	0007c783          	lbu	a5,0(a5)
 132:	fcf709e3          	beq	a4,a5,104 <strcmp+0x10>
 136:	fe843783          	ld	a5,-24(s0)
 13a:	0007c783          	lbu	a5,0(a5)
 13e:	0007871b          	sext.w	a4,a5
 142:	fe043783          	ld	a5,-32(s0)
 146:	0007c783          	lbu	a5,0(a5)
 14a:	2781                	sext.w	a5,a5
 14c:	40f707bb          	subw	a5,a4,a5
 150:	2781                	sext.w	a5,a5
 152:	853e                	mv	a0,a5
 154:	6462                	ld	s0,24(sp)
 156:	6105                	addi	sp,sp,32
 158:	8082                	ret

000000000000015a <strlen>:
 15a:	7179                	addi	sp,sp,-48
 15c:	f422                	sd	s0,40(sp)
 15e:	1800                	addi	s0,sp,48
 160:	fca43c23          	sd	a0,-40(s0)
 164:	fe042623          	sw	zero,-20(s0)
 168:	a031                	j	174 <strlen+0x1a>
 16a:	fec42783          	lw	a5,-20(s0)
 16e:	2785                	addiw	a5,a5,1
 170:	fef42623          	sw	a5,-20(s0)
 174:	fec42783          	lw	a5,-20(s0)
 178:	fd843703          	ld	a4,-40(s0)
 17c:	97ba                	add	a5,a5,a4
 17e:	0007c783          	lbu	a5,0(a5)
 182:	f7e5                	bnez	a5,16a <strlen+0x10>
 184:	fec42783          	lw	a5,-20(s0)
 188:	853e                	mv	a0,a5
 18a:	7422                	ld	s0,40(sp)
 18c:	6145                	addi	sp,sp,48
 18e:	8082                	ret

0000000000000190 <memset>:
 190:	7179                	addi	sp,sp,-48
 192:	f422                	sd	s0,40(sp)
 194:	1800                	addi	s0,sp,48
 196:	fca43c23          	sd	a0,-40(s0)
 19a:	87ae                	mv	a5,a1
 19c:	8732                	mv	a4,a2
 19e:	fcf42a23          	sw	a5,-44(s0)
 1a2:	87ba                	mv	a5,a4
 1a4:	fcf42823          	sw	a5,-48(s0)
 1a8:	fd843783          	ld	a5,-40(s0)
 1ac:	fef43023          	sd	a5,-32(s0)
 1b0:	fe042623          	sw	zero,-20(s0)
 1b4:	a00d                	j	1d6 <memset+0x46>
 1b6:	fec42783          	lw	a5,-20(s0)
 1ba:	fe043703          	ld	a4,-32(s0)
 1be:	97ba                	add	a5,a5,a4
 1c0:	fd442703          	lw	a4,-44(s0)
 1c4:	0ff77713          	andi	a4,a4,255
 1c8:	00e78023          	sb	a4,0(a5)
 1cc:	fec42783          	lw	a5,-20(s0)
 1d0:	2785                	addiw	a5,a5,1
 1d2:	fef42623          	sw	a5,-20(s0)
 1d6:	fec42703          	lw	a4,-20(s0)
 1da:	fd042783          	lw	a5,-48(s0)
 1de:	2781                	sext.w	a5,a5
 1e0:	fcf76be3          	bltu	a4,a5,1b6 <memset+0x26>
 1e4:	fd843783          	ld	a5,-40(s0)
 1e8:	853e                	mv	a0,a5
 1ea:	7422                	ld	s0,40(sp)
 1ec:	6145                	addi	sp,sp,48
 1ee:	8082                	ret

00000000000001f0 <strchr>:
 1f0:	1101                	addi	sp,sp,-32
 1f2:	ec22                	sd	s0,24(sp)
 1f4:	1000                	addi	s0,sp,32
 1f6:	fea43423          	sd	a0,-24(s0)
 1fa:	87ae                	mv	a5,a1
 1fc:	fef403a3          	sb	a5,-25(s0)
 200:	a01d                	j	226 <strchr+0x36>
 202:	fe843783          	ld	a5,-24(s0)
 206:	0007c703          	lbu	a4,0(a5)
 20a:	fe744783          	lbu	a5,-25(s0)
 20e:	0ff7f793          	andi	a5,a5,255
 212:	00e79563          	bne	a5,a4,21c <strchr+0x2c>
 216:	fe843783          	ld	a5,-24(s0)
 21a:	a821                	j	232 <strchr+0x42>
 21c:	fe843783          	ld	a5,-24(s0)
 220:	0785                	addi	a5,a5,1
 222:	fef43423          	sd	a5,-24(s0)
 226:	fe843783          	ld	a5,-24(s0)
 22a:	0007c783          	lbu	a5,0(a5)
 22e:	fbf1                	bnez	a5,202 <strchr+0x12>
 230:	4781                	li	a5,0
 232:	853e                	mv	a0,a5
 234:	6462                	ld	s0,24(sp)
 236:	6105                	addi	sp,sp,32
 238:	8082                	ret

000000000000023a <gets>:
 23a:	7179                	addi	sp,sp,-48
 23c:	f406                	sd	ra,40(sp)
 23e:	f022                	sd	s0,32(sp)
 240:	1800                	addi	s0,sp,48
 242:	fca43c23          	sd	a0,-40(s0)
 246:	87ae                	mv	a5,a1
 248:	fcf42a23          	sw	a5,-44(s0)
 24c:	fe042623          	sw	zero,-20(s0)
 250:	a8a1                	j	2a8 <gets+0x6e>
 252:	fe740793          	addi	a5,s0,-25
 256:	4605                	li	a2,1
 258:	85be                	mv	a1,a5
 25a:	4501                	li	a0,0
 25c:	00000097          	auipc	ra,0x0
 260:	2f6080e7          	jalr	758(ra) # 552 <read>
 264:	87aa                	mv	a5,a0
 266:	fef42423          	sw	a5,-24(s0)
 26a:	fe842783          	lw	a5,-24(s0)
 26e:	2781                	sext.w	a5,a5
 270:	04f05763          	blez	a5,2be <gets+0x84>
 274:	fec42783          	lw	a5,-20(s0)
 278:	0017871b          	addiw	a4,a5,1
 27c:	fee42623          	sw	a4,-20(s0)
 280:	873e                	mv	a4,a5
 282:	fd843783          	ld	a5,-40(s0)
 286:	97ba                	add	a5,a5,a4
 288:	fe744703          	lbu	a4,-25(s0)
 28c:	00e78023          	sb	a4,0(a5)
 290:	fe744783          	lbu	a5,-25(s0)
 294:	873e                	mv	a4,a5
 296:	47a9                	li	a5,10
 298:	02f70463          	beq	a4,a5,2c0 <gets+0x86>
 29c:	fe744783          	lbu	a5,-25(s0)
 2a0:	873e                	mv	a4,a5
 2a2:	47b5                	li	a5,13
 2a4:	00f70e63          	beq	a4,a5,2c0 <gets+0x86>
 2a8:	fec42783          	lw	a5,-20(s0)
 2ac:	2785                	addiw	a5,a5,1
 2ae:	0007871b          	sext.w	a4,a5
 2b2:	fd442783          	lw	a5,-44(s0)
 2b6:	2781                	sext.w	a5,a5
 2b8:	f8f74de3          	blt	a4,a5,252 <gets+0x18>
 2bc:	a011                	j	2c0 <gets+0x86>
 2be:	0001                	nop
 2c0:	fec42783          	lw	a5,-20(s0)
 2c4:	fd843703          	ld	a4,-40(s0)
 2c8:	97ba                	add	a5,a5,a4
 2ca:	00078023          	sb	zero,0(a5)
 2ce:	fd843783          	ld	a5,-40(s0)
 2d2:	853e                	mv	a0,a5
 2d4:	70a2                	ld	ra,40(sp)
 2d6:	7402                	ld	s0,32(sp)
 2d8:	6145                	addi	sp,sp,48
 2da:	8082                	ret

00000000000002dc <stat>:
 2dc:	7179                	addi	sp,sp,-48
 2de:	f406                	sd	ra,40(sp)
 2e0:	f022                	sd	s0,32(sp)
 2e2:	1800                	addi	s0,sp,48
 2e4:	fca43c23          	sd	a0,-40(s0)
 2e8:	fcb43823          	sd	a1,-48(s0)
 2ec:	4581                	li	a1,0
 2ee:	fd843503          	ld	a0,-40(s0)
 2f2:	00000097          	auipc	ra,0x0
 2f6:	288080e7          	jalr	648(ra) # 57a <open>
 2fa:	87aa                	mv	a5,a0
 2fc:	fef42623          	sw	a5,-20(s0)
 300:	fec42783          	lw	a5,-20(s0)
 304:	2781                	sext.w	a5,a5
 306:	0007d463          	bgez	a5,30e <stat+0x32>
 30a:	57fd                	li	a5,-1
 30c:	a035                	j	338 <stat+0x5c>
 30e:	fec42783          	lw	a5,-20(s0)
 312:	fd043583          	ld	a1,-48(s0)
 316:	853e                	mv	a0,a5
 318:	00000097          	auipc	ra,0x0
 31c:	27a080e7          	jalr	634(ra) # 592 <fstat>
 320:	87aa                	mv	a5,a0
 322:	fef42423          	sw	a5,-24(s0)
 326:	fec42783          	lw	a5,-20(s0)
 32a:	853e                	mv	a0,a5
 32c:	00000097          	auipc	ra,0x0
 330:	236080e7          	jalr	566(ra) # 562 <close>
 334:	fe842783          	lw	a5,-24(s0)
 338:	853e                	mv	a0,a5
 33a:	70a2                	ld	ra,40(sp)
 33c:	7402                	ld	s0,32(sp)
 33e:	6145                	addi	sp,sp,48
 340:	8082                	ret

0000000000000342 <atoi>:
 342:	7179                	addi	sp,sp,-48
 344:	f422                	sd	s0,40(sp)
 346:	1800                	addi	s0,sp,48
 348:	fca43c23          	sd	a0,-40(s0)
 34c:	fe042623          	sw	zero,-20(s0)
 350:	a815                	j	384 <atoi+0x42>
 352:	fec42703          	lw	a4,-20(s0)
 356:	87ba                	mv	a5,a4
 358:	0027979b          	slliw	a5,a5,0x2
 35c:	9fb9                	addw	a5,a5,a4
 35e:	0017979b          	slliw	a5,a5,0x1
 362:	0007871b          	sext.w	a4,a5
 366:	fd843783          	ld	a5,-40(s0)
 36a:	00178693          	addi	a3,a5,1
 36e:	fcd43c23          	sd	a3,-40(s0)
 372:	0007c783          	lbu	a5,0(a5)
 376:	2781                	sext.w	a5,a5
 378:	9fb9                	addw	a5,a5,a4
 37a:	2781                	sext.w	a5,a5
 37c:	fd07879b          	addiw	a5,a5,-48
 380:	fef42623          	sw	a5,-20(s0)
 384:	fd843783          	ld	a5,-40(s0)
 388:	0007c783          	lbu	a5,0(a5)
 38c:	873e                	mv	a4,a5
 38e:	02f00793          	li	a5,47
 392:	00e7fb63          	bgeu	a5,a4,3a8 <atoi+0x66>
 396:	fd843783          	ld	a5,-40(s0)
 39a:	0007c783          	lbu	a5,0(a5)
 39e:	873e                	mv	a4,a5
 3a0:	03900793          	li	a5,57
 3a4:	fae7f7e3          	bgeu	a5,a4,352 <atoi+0x10>
 3a8:	fec42783          	lw	a5,-20(s0)
 3ac:	853e                	mv	a0,a5
 3ae:	7422                	ld	s0,40(sp)
 3b0:	6145                	addi	sp,sp,48
 3b2:	8082                	ret

00000000000003b4 <memmove>:
 3b4:	7139                	addi	sp,sp,-64
 3b6:	fc22                	sd	s0,56(sp)
 3b8:	0080                	addi	s0,sp,64
 3ba:	fca43c23          	sd	a0,-40(s0)
 3be:	fcb43823          	sd	a1,-48(s0)
 3c2:	87b2                	mv	a5,a2
 3c4:	fcf42623          	sw	a5,-52(s0)
 3c8:	fd843783          	ld	a5,-40(s0)
 3cc:	fef43423          	sd	a5,-24(s0)
 3d0:	fd043783          	ld	a5,-48(s0)
 3d4:	fef43023          	sd	a5,-32(s0)
 3d8:	fe043703          	ld	a4,-32(s0)
 3dc:	fe843783          	ld	a5,-24(s0)
 3e0:	02e7fc63          	bgeu	a5,a4,418 <memmove+0x64>
 3e4:	a00d                	j	406 <memmove+0x52>
 3e6:	fe043703          	ld	a4,-32(s0)
 3ea:	00170793          	addi	a5,a4,1
 3ee:	fef43023          	sd	a5,-32(s0)
 3f2:	fe843783          	ld	a5,-24(s0)
 3f6:	00178693          	addi	a3,a5,1
 3fa:	fed43423          	sd	a3,-24(s0)
 3fe:	00074703          	lbu	a4,0(a4)
 402:	00e78023          	sb	a4,0(a5)
 406:	fcc42783          	lw	a5,-52(s0)
 40a:	fff7871b          	addiw	a4,a5,-1
 40e:	fce42623          	sw	a4,-52(s0)
 412:	fcf04ae3          	bgtz	a5,3e6 <memmove+0x32>
 416:	a891                	j	46a <memmove+0xb6>
 418:	fcc42783          	lw	a5,-52(s0)
 41c:	fe843703          	ld	a4,-24(s0)
 420:	97ba                	add	a5,a5,a4
 422:	fef43423          	sd	a5,-24(s0)
 426:	fcc42783          	lw	a5,-52(s0)
 42a:	fe043703          	ld	a4,-32(s0)
 42e:	97ba                	add	a5,a5,a4
 430:	fef43023          	sd	a5,-32(s0)
 434:	a01d                	j	45a <memmove+0xa6>
 436:	fe043783          	ld	a5,-32(s0)
 43a:	17fd                	addi	a5,a5,-1
 43c:	fef43023          	sd	a5,-32(s0)
 440:	fe843783          	ld	a5,-24(s0)
 444:	17fd                	addi	a5,a5,-1
 446:	fef43423          	sd	a5,-24(s0)
 44a:	fe043783          	ld	a5,-32(s0)
 44e:	0007c703          	lbu	a4,0(a5)
 452:	fe843783          	ld	a5,-24(s0)
 456:	00e78023          	sb	a4,0(a5)
 45a:	fcc42783          	lw	a5,-52(s0)
 45e:	fff7871b          	addiw	a4,a5,-1
 462:	fce42623          	sw	a4,-52(s0)
 466:	fcf048e3          	bgtz	a5,436 <memmove+0x82>
 46a:	fd843783          	ld	a5,-40(s0)
 46e:	853e                	mv	a0,a5
 470:	7462                	ld	s0,56(sp)
 472:	6121                	addi	sp,sp,64
 474:	8082                	ret

0000000000000476 <memcmp>:
 476:	7139                	addi	sp,sp,-64
 478:	fc22                	sd	s0,56(sp)
 47a:	0080                	addi	s0,sp,64
 47c:	fca43c23          	sd	a0,-40(s0)
 480:	fcb43823          	sd	a1,-48(s0)
 484:	87b2                	mv	a5,a2
 486:	fcf42623          	sw	a5,-52(s0)
 48a:	fd843783          	ld	a5,-40(s0)
 48e:	fef43423          	sd	a5,-24(s0)
 492:	fd043783          	ld	a5,-48(s0)
 496:	fef43023          	sd	a5,-32(s0)
 49a:	a0a1                	j	4e2 <memcmp+0x6c>
 49c:	fe843783          	ld	a5,-24(s0)
 4a0:	0007c703          	lbu	a4,0(a5)
 4a4:	fe043783          	ld	a5,-32(s0)
 4a8:	0007c783          	lbu	a5,0(a5)
 4ac:	02f70163          	beq	a4,a5,4ce <memcmp+0x58>
 4b0:	fe843783          	ld	a5,-24(s0)
 4b4:	0007c783          	lbu	a5,0(a5)
 4b8:	0007871b          	sext.w	a4,a5
 4bc:	fe043783          	ld	a5,-32(s0)
 4c0:	0007c783          	lbu	a5,0(a5)
 4c4:	2781                	sext.w	a5,a5
 4c6:	40f707bb          	subw	a5,a4,a5
 4ca:	2781                	sext.w	a5,a5
 4cc:	a01d                	j	4f2 <memcmp+0x7c>
 4ce:	fe843783          	ld	a5,-24(s0)
 4d2:	0785                	addi	a5,a5,1
 4d4:	fef43423          	sd	a5,-24(s0)
 4d8:	fe043783          	ld	a5,-32(s0)
 4dc:	0785                	addi	a5,a5,1
 4de:	fef43023          	sd	a5,-32(s0)
 4e2:	fcc42783          	lw	a5,-52(s0)
 4e6:	fff7871b          	addiw	a4,a5,-1
 4ea:	fce42623          	sw	a4,-52(s0)
 4ee:	f7dd                	bnez	a5,49c <memcmp+0x26>
 4f0:	4781                	li	a5,0
 4f2:	853e                	mv	a0,a5
 4f4:	7462                	ld	s0,56(sp)
 4f6:	6121                	addi	sp,sp,64
 4f8:	8082                	ret

00000000000004fa <memcpy>:
 4fa:	7179                	addi	sp,sp,-48
 4fc:	f406                	sd	ra,40(sp)
 4fe:	f022                	sd	s0,32(sp)
 500:	1800                	addi	s0,sp,48
 502:	fea43423          	sd	a0,-24(s0)
 506:	feb43023          	sd	a1,-32(s0)
 50a:	87b2                	mv	a5,a2
 50c:	fcf42e23          	sw	a5,-36(s0)
 510:	fdc42783          	lw	a5,-36(s0)
 514:	863e                	mv	a2,a5
 516:	fe043583          	ld	a1,-32(s0)
 51a:	fe843503          	ld	a0,-24(s0)
 51e:	00000097          	auipc	ra,0x0
 522:	e96080e7          	jalr	-362(ra) # 3b4 <memmove>
 526:	87aa                	mv	a5,a0
 528:	853e                	mv	a0,a5
 52a:	70a2                	ld	ra,40(sp)
 52c:	7402                	ld	s0,32(sp)
 52e:	6145                	addi	sp,sp,48
 530:	8082                	ret

0000000000000532 <fork>:
 532:	4885                	li	a7,1
 534:	00000073          	ecall
 538:	8082                	ret

000000000000053a <exit>:
 53a:	4889                	li	a7,2
 53c:	00000073          	ecall
 540:	8082                	ret

0000000000000542 <wait>:
 542:	488d                	li	a7,3
 544:	00000073          	ecall
 548:	8082                	ret

000000000000054a <pipe>:
 54a:	4891                	li	a7,4
 54c:	00000073          	ecall
 550:	8082                	ret

0000000000000552 <read>:
 552:	4895                	li	a7,5
 554:	00000073          	ecall
 558:	8082                	ret

000000000000055a <write>:
 55a:	48c1                	li	a7,16
 55c:	00000073          	ecall
 560:	8082                	ret

0000000000000562 <close>:
 562:	48d5                	li	a7,21
 564:	00000073          	ecall
 568:	8082                	ret

000000000000056a <kill>:
 56a:	4899                	li	a7,6
 56c:	00000073          	ecall
 570:	8082                	ret

0000000000000572 <exec>:
 572:	489d                	li	a7,7
 574:	00000073          	ecall
 578:	8082                	ret

000000000000057a <open>:
 57a:	48bd                	li	a7,15
 57c:	00000073          	ecall
 580:	8082                	ret

0000000000000582 <mknod>:
 582:	48c5                	li	a7,17
 584:	00000073          	ecall
 588:	8082                	ret

000000000000058a <unlink>:
 58a:	48c9                	li	a7,18
 58c:	00000073          	ecall
 590:	8082                	ret

0000000000000592 <fstat>:
 592:	48a1                	li	a7,8
 594:	00000073          	ecall
 598:	8082                	ret

000000000000059a <link>:
 59a:	48cd                	li	a7,19
 59c:	00000073          	ecall
 5a0:	8082                	ret

00000000000005a2 <mkdir>:
 5a2:	48d1                	li	a7,20
 5a4:	00000073          	ecall
 5a8:	8082                	ret

00000000000005aa <chdir>:
 5aa:	48a5                	li	a7,9
 5ac:	00000073          	ecall
 5b0:	8082                	ret

00000000000005b2 <dup>:
 5b2:	48a9                	li	a7,10
 5b4:	00000073          	ecall
 5b8:	8082                	ret

00000000000005ba <getpid>:
 5ba:	48ad                	li	a7,11
 5bc:	00000073          	ecall
 5c0:	8082                	ret

00000000000005c2 <sbrk>:
 5c2:	48b1                	li	a7,12
 5c4:	00000073          	ecall
 5c8:	8082                	ret

00000000000005ca <sleep>:
 5ca:	48b5                	li	a7,13
 5cc:	00000073          	ecall
 5d0:	8082                	ret

00000000000005d2 <uptime>:
 5d2:	48b9                	li	a7,14
 5d4:	00000073          	ecall
 5d8:	8082                	ret

00000000000005da <putc>:
 5da:	1101                	addi	sp,sp,-32
 5dc:	ec06                	sd	ra,24(sp)
 5de:	e822                	sd	s0,16(sp)
 5e0:	1000                	addi	s0,sp,32
 5e2:	87aa                	mv	a5,a0
 5e4:	872e                	mv	a4,a1
 5e6:	fef42623          	sw	a5,-20(s0)
 5ea:	87ba                	mv	a5,a4
 5ec:	fef405a3          	sb	a5,-21(s0)
 5f0:	feb40713          	addi	a4,s0,-21
 5f4:	fec42783          	lw	a5,-20(s0)
 5f8:	4605                	li	a2,1
 5fa:	85ba                	mv	a1,a4
 5fc:	853e                	mv	a0,a5
 5fe:	00000097          	auipc	ra,0x0
 602:	f5c080e7          	jalr	-164(ra) # 55a <write>
 606:	0001                	nop
 608:	60e2                	ld	ra,24(sp)
 60a:	6442                	ld	s0,16(sp)
 60c:	6105                	addi	sp,sp,32
 60e:	8082                	ret

0000000000000610 <printint>:
 610:	7139                	addi	sp,sp,-64
 612:	fc06                	sd	ra,56(sp)
 614:	f822                	sd	s0,48(sp)
 616:	0080                	addi	s0,sp,64
 618:	87aa                	mv	a5,a0
 61a:	8736                	mv	a4,a3
 61c:	fcf42623          	sw	a5,-52(s0)
 620:	87ae                	mv	a5,a1
 622:	fcf42423          	sw	a5,-56(s0)
 626:	87b2                	mv	a5,a2
 628:	fcf42223          	sw	a5,-60(s0)
 62c:	87ba                	mv	a5,a4
 62e:	fcf42023          	sw	a5,-64(s0)
 632:	fe042423          	sw	zero,-24(s0)
 636:	fc042783          	lw	a5,-64(s0)
 63a:	2781                	sext.w	a5,a5
 63c:	c38d                	beqz	a5,65e <printint+0x4e>
 63e:	fc842783          	lw	a5,-56(s0)
 642:	2781                	sext.w	a5,a5
 644:	0007dd63          	bgez	a5,65e <printint+0x4e>
 648:	4785                	li	a5,1
 64a:	fef42423          	sw	a5,-24(s0)
 64e:	fc842783          	lw	a5,-56(s0)
 652:	40f007bb          	negw	a5,a5
 656:	2781                	sext.w	a5,a5
 658:	fef42223          	sw	a5,-28(s0)
 65c:	a029                	j	666 <printint+0x56>
 65e:	fc842783          	lw	a5,-56(s0)
 662:	fef42223          	sw	a5,-28(s0)
 666:	fe042623          	sw	zero,-20(s0)
 66a:	fc442783          	lw	a5,-60(s0)
 66e:	fe442703          	lw	a4,-28(s0)
 672:	02f777bb          	remuw	a5,a4,a5
 676:	0007861b          	sext.w	a2,a5
 67a:	fec42783          	lw	a5,-20(s0)
 67e:	0017871b          	addiw	a4,a5,1
 682:	fee42623          	sw	a4,-20(s0)
 686:	00000697          	auipc	a3,0x0
 68a:	7ca68693          	addi	a3,a3,1994 # e50 <digits>
 68e:	02061713          	slli	a4,a2,0x20
 692:	9301                	srli	a4,a4,0x20
 694:	9736                	add	a4,a4,a3
 696:	00074703          	lbu	a4,0(a4)
 69a:	ff040693          	addi	a3,s0,-16
 69e:	97b6                	add	a5,a5,a3
 6a0:	fee78023          	sb	a4,-32(a5)
 6a4:	fc442783          	lw	a5,-60(s0)
 6a8:	fe442703          	lw	a4,-28(s0)
 6ac:	02f757bb          	divuw	a5,a4,a5
 6b0:	fef42223          	sw	a5,-28(s0)
 6b4:	fe442783          	lw	a5,-28(s0)
 6b8:	2781                	sext.w	a5,a5
 6ba:	fbc5                	bnez	a5,66a <printint+0x5a>
 6bc:	fe842783          	lw	a5,-24(s0)
 6c0:	2781                	sext.w	a5,a5
 6c2:	cf95                	beqz	a5,6fe <printint+0xee>
 6c4:	fec42783          	lw	a5,-20(s0)
 6c8:	0017871b          	addiw	a4,a5,1
 6cc:	fee42623          	sw	a4,-20(s0)
 6d0:	ff040713          	addi	a4,s0,-16
 6d4:	97ba                	add	a5,a5,a4
 6d6:	02d00713          	li	a4,45
 6da:	fee78023          	sb	a4,-32(a5)
 6de:	a005                	j	6fe <printint+0xee>
 6e0:	fec42783          	lw	a5,-20(s0)
 6e4:	ff040713          	addi	a4,s0,-16
 6e8:	97ba                	add	a5,a5,a4
 6ea:	fe07c703          	lbu	a4,-32(a5)
 6ee:	fcc42783          	lw	a5,-52(s0)
 6f2:	85ba                	mv	a1,a4
 6f4:	853e                	mv	a0,a5
 6f6:	00000097          	auipc	ra,0x0
 6fa:	ee4080e7          	jalr	-284(ra) # 5da <putc>
 6fe:	fec42783          	lw	a5,-20(s0)
 702:	37fd                	addiw	a5,a5,-1
 704:	fef42623          	sw	a5,-20(s0)
 708:	fec42783          	lw	a5,-20(s0)
 70c:	2781                	sext.w	a5,a5
 70e:	fc07d9e3          	bgez	a5,6e0 <printint+0xd0>
 712:	0001                	nop
 714:	0001                	nop
 716:	70e2                	ld	ra,56(sp)
 718:	7442                	ld	s0,48(sp)
 71a:	6121                	addi	sp,sp,64
 71c:	8082                	ret

000000000000071e <printptr>:
 71e:	7179                	addi	sp,sp,-48
 720:	f406                	sd	ra,40(sp)
 722:	f022                	sd	s0,32(sp)
 724:	1800                	addi	s0,sp,48
 726:	87aa                	mv	a5,a0
 728:	fcb43823          	sd	a1,-48(s0)
 72c:	fcf42e23          	sw	a5,-36(s0)
 730:	fdc42783          	lw	a5,-36(s0)
 734:	03000593          	li	a1,48
 738:	853e                	mv	a0,a5
 73a:	00000097          	auipc	ra,0x0
 73e:	ea0080e7          	jalr	-352(ra) # 5da <putc>
 742:	fdc42783          	lw	a5,-36(s0)
 746:	07800593          	li	a1,120
 74a:	853e                	mv	a0,a5
 74c:	00000097          	auipc	ra,0x0
 750:	e8e080e7          	jalr	-370(ra) # 5da <putc>
 754:	fe042623          	sw	zero,-20(s0)
 758:	a82d                	j	792 <printptr+0x74>
 75a:	fd043783          	ld	a5,-48(s0)
 75e:	93f1                	srli	a5,a5,0x3c
 760:	00000717          	auipc	a4,0x0
 764:	6f070713          	addi	a4,a4,1776 # e50 <digits>
 768:	97ba                	add	a5,a5,a4
 76a:	0007c703          	lbu	a4,0(a5)
 76e:	fdc42783          	lw	a5,-36(s0)
 772:	85ba                	mv	a1,a4
 774:	853e                	mv	a0,a5
 776:	00000097          	auipc	ra,0x0
 77a:	e64080e7          	jalr	-412(ra) # 5da <putc>
 77e:	fec42783          	lw	a5,-20(s0)
 782:	2785                	addiw	a5,a5,1
 784:	fef42623          	sw	a5,-20(s0)
 788:	fd043783          	ld	a5,-48(s0)
 78c:	0792                	slli	a5,a5,0x4
 78e:	fcf43823          	sd	a5,-48(s0)
 792:	fec42783          	lw	a5,-20(s0)
 796:	873e                	mv	a4,a5
 798:	47bd                	li	a5,15
 79a:	fce7f0e3          	bgeu	a5,a4,75a <printptr+0x3c>
 79e:	0001                	nop
 7a0:	0001                	nop
 7a2:	70a2                	ld	ra,40(sp)
 7a4:	7402                	ld	s0,32(sp)
 7a6:	6145                	addi	sp,sp,48
 7a8:	8082                	ret

00000000000007aa <vprintf>:
 7aa:	715d                	addi	sp,sp,-80
 7ac:	e486                	sd	ra,72(sp)
 7ae:	e0a2                	sd	s0,64(sp)
 7b0:	0880                	addi	s0,sp,80
 7b2:	87aa                	mv	a5,a0
 7b4:	fcb43023          	sd	a1,-64(s0)
 7b8:	fac43c23          	sd	a2,-72(s0)
 7bc:	fcf42623          	sw	a5,-52(s0)
 7c0:	fe042023          	sw	zero,-32(s0)
 7c4:	fe042223          	sw	zero,-28(s0)
 7c8:	a42d                	j	9f2 <vprintf+0x248>
 7ca:	fe442783          	lw	a5,-28(s0)
 7ce:	fc043703          	ld	a4,-64(s0)
 7d2:	97ba                	add	a5,a5,a4
 7d4:	0007c783          	lbu	a5,0(a5)
 7d8:	fcf42e23          	sw	a5,-36(s0)
 7dc:	fe042783          	lw	a5,-32(s0)
 7e0:	2781                	sext.w	a5,a5
 7e2:	eb9d                	bnez	a5,818 <vprintf+0x6e>
 7e4:	fdc42783          	lw	a5,-36(s0)
 7e8:	0007871b          	sext.w	a4,a5
 7ec:	02500793          	li	a5,37
 7f0:	00f71763          	bne	a4,a5,7fe <vprintf+0x54>
 7f4:	02500793          	li	a5,37
 7f8:	fef42023          	sw	a5,-32(s0)
 7fc:	a2f5                	j	9e8 <vprintf+0x23e>
 7fe:	fdc42783          	lw	a5,-36(s0)
 802:	0ff7f713          	andi	a4,a5,255
 806:	fcc42783          	lw	a5,-52(s0)
 80a:	85ba                	mv	a1,a4
 80c:	853e                	mv	a0,a5
 80e:	00000097          	auipc	ra,0x0
 812:	dcc080e7          	jalr	-564(ra) # 5da <putc>
 816:	aac9                	j	9e8 <vprintf+0x23e>
 818:	fe042783          	lw	a5,-32(s0)
 81c:	0007871b          	sext.w	a4,a5
 820:	02500793          	li	a5,37
 824:	1cf71263          	bne	a4,a5,9e8 <vprintf+0x23e>
 828:	fdc42783          	lw	a5,-36(s0)
 82c:	0007871b          	sext.w	a4,a5
 830:	06400793          	li	a5,100
 834:	02f71463          	bne	a4,a5,85c <vprintf+0xb2>
 838:	fb843783          	ld	a5,-72(s0)
 83c:	00878713          	addi	a4,a5,8
 840:	fae43c23          	sd	a4,-72(s0)
 844:	4398                	lw	a4,0(a5)
 846:	fcc42783          	lw	a5,-52(s0)
 84a:	4685                	li	a3,1
 84c:	4629                	li	a2,10
 84e:	85ba                	mv	a1,a4
 850:	853e                	mv	a0,a5
 852:	00000097          	auipc	ra,0x0
 856:	dbe080e7          	jalr	-578(ra) # 610 <printint>
 85a:	a269                	j	9e4 <vprintf+0x23a>
 85c:	fdc42783          	lw	a5,-36(s0)
 860:	0007871b          	sext.w	a4,a5
 864:	06c00793          	li	a5,108
 868:	02f71663          	bne	a4,a5,894 <vprintf+0xea>
 86c:	fb843783          	ld	a5,-72(s0)
 870:	00878713          	addi	a4,a5,8
 874:	fae43c23          	sd	a4,-72(s0)
 878:	639c                	ld	a5,0(a5)
 87a:	0007871b          	sext.w	a4,a5
 87e:	fcc42783          	lw	a5,-52(s0)
 882:	4681                	li	a3,0
 884:	4629                	li	a2,10
 886:	85ba                	mv	a1,a4
 888:	853e                	mv	a0,a5
 88a:	00000097          	auipc	ra,0x0
 88e:	d86080e7          	jalr	-634(ra) # 610 <printint>
 892:	aa89                	j	9e4 <vprintf+0x23a>
 894:	fdc42783          	lw	a5,-36(s0)
 898:	0007871b          	sext.w	a4,a5
 89c:	07800793          	li	a5,120
 8a0:	02f71463          	bne	a4,a5,8c8 <vprintf+0x11e>
 8a4:	fb843783          	ld	a5,-72(s0)
 8a8:	00878713          	addi	a4,a5,8
 8ac:	fae43c23          	sd	a4,-72(s0)
 8b0:	4398                	lw	a4,0(a5)
 8b2:	fcc42783          	lw	a5,-52(s0)
 8b6:	4681                	li	a3,0
 8b8:	4641                	li	a2,16
 8ba:	85ba                	mv	a1,a4
 8bc:	853e                	mv	a0,a5
 8be:	00000097          	auipc	ra,0x0
 8c2:	d52080e7          	jalr	-686(ra) # 610 <printint>
 8c6:	aa39                	j	9e4 <vprintf+0x23a>
 8c8:	fdc42783          	lw	a5,-36(s0)
 8cc:	0007871b          	sext.w	a4,a5
 8d0:	07000793          	li	a5,112
 8d4:	02f71263          	bne	a4,a5,8f8 <vprintf+0x14e>
 8d8:	fb843783          	ld	a5,-72(s0)
 8dc:	00878713          	addi	a4,a5,8
 8e0:	fae43c23          	sd	a4,-72(s0)
 8e4:	6398                	ld	a4,0(a5)
 8e6:	fcc42783          	lw	a5,-52(s0)
 8ea:	85ba                	mv	a1,a4
 8ec:	853e                	mv	a0,a5
 8ee:	00000097          	auipc	ra,0x0
 8f2:	e30080e7          	jalr	-464(ra) # 71e <printptr>
 8f6:	a0fd                	j	9e4 <vprintf+0x23a>
 8f8:	fdc42783          	lw	a5,-36(s0)
 8fc:	0007871b          	sext.w	a4,a5
 900:	07300793          	li	a5,115
 904:	04f71c63          	bne	a4,a5,95c <vprintf+0x1b2>
 908:	fb843783          	ld	a5,-72(s0)
 90c:	00878713          	addi	a4,a5,8
 910:	fae43c23          	sd	a4,-72(s0)
 914:	639c                	ld	a5,0(a5)
 916:	fef43423          	sd	a5,-24(s0)
 91a:	fe843783          	ld	a5,-24(s0)
 91e:	eb8d                	bnez	a5,950 <vprintf+0x1a6>
 920:	00000797          	auipc	a5,0x0
 924:	52878793          	addi	a5,a5,1320 # e48 <longjmp_1+0x3e>
 928:	fef43423          	sd	a5,-24(s0)
 92c:	a015                	j	950 <vprintf+0x1a6>
 92e:	fe843783          	ld	a5,-24(s0)
 932:	0007c703          	lbu	a4,0(a5)
 936:	fcc42783          	lw	a5,-52(s0)
 93a:	85ba                	mv	a1,a4
 93c:	853e                	mv	a0,a5
 93e:	00000097          	auipc	ra,0x0
 942:	c9c080e7          	jalr	-868(ra) # 5da <putc>
 946:	fe843783          	ld	a5,-24(s0)
 94a:	0785                	addi	a5,a5,1
 94c:	fef43423          	sd	a5,-24(s0)
 950:	fe843783          	ld	a5,-24(s0)
 954:	0007c783          	lbu	a5,0(a5)
 958:	fbf9                	bnez	a5,92e <vprintf+0x184>
 95a:	a069                	j	9e4 <vprintf+0x23a>
 95c:	fdc42783          	lw	a5,-36(s0)
 960:	0007871b          	sext.w	a4,a5
 964:	06300793          	li	a5,99
 968:	02f71463          	bne	a4,a5,990 <vprintf+0x1e6>
 96c:	fb843783          	ld	a5,-72(s0)
 970:	00878713          	addi	a4,a5,8
 974:	fae43c23          	sd	a4,-72(s0)
 978:	439c                	lw	a5,0(a5)
 97a:	0ff7f713          	andi	a4,a5,255
 97e:	fcc42783          	lw	a5,-52(s0)
 982:	85ba                	mv	a1,a4
 984:	853e                	mv	a0,a5
 986:	00000097          	auipc	ra,0x0
 98a:	c54080e7          	jalr	-940(ra) # 5da <putc>
 98e:	a899                	j	9e4 <vprintf+0x23a>
 990:	fdc42783          	lw	a5,-36(s0)
 994:	0007871b          	sext.w	a4,a5
 998:	02500793          	li	a5,37
 99c:	00f71f63          	bne	a4,a5,9ba <vprintf+0x210>
 9a0:	fdc42783          	lw	a5,-36(s0)
 9a4:	0ff7f713          	andi	a4,a5,255
 9a8:	fcc42783          	lw	a5,-52(s0)
 9ac:	85ba                	mv	a1,a4
 9ae:	853e                	mv	a0,a5
 9b0:	00000097          	auipc	ra,0x0
 9b4:	c2a080e7          	jalr	-982(ra) # 5da <putc>
 9b8:	a035                	j	9e4 <vprintf+0x23a>
 9ba:	fcc42783          	lw	a5,-52(s0)
 9be:	02500593          	li	a1,37
 9c2:	853e                	mv	a0,a5
 9c4:	00000097          	auipc	ra,0x0
 9c8:	c16080e7          	jalr	-1002(ra) # 5da <putc>
 9cc:	fdc42783          	lw	a5,-36(s0)
 9d0:	0ff7f713          	andi	a4,a5,255
 9d4:	fcc42783          	lw	a5,-52(s0)
 9d8:	85ba                	mv	a1,a4
 9da:	853e                	mv	a0,a5
 9dc:	00000097          	auipc	ra,0x0
 9e0:	bfe080e7          	jalr	-1026(ra) # 5da <putc>
 9e4:	fe042023          	sw	zero,-32(s0)
 9e8:	fe442783          	lw	a5,-28(s0)
 9ec:	2785                	addiw	a5,a5,1
 9ee:	fef42223          	sw	a5,-28(s0)
 9f2:	fe442783          	lw	a5,-28(s0)
 9f6:	fc043703          	ld	a4,-64(s0)
 9fa:	97ba                	add	a5,a5,a4
 9fc:	0007c783          	lbu	a5,0(a5)
 a00:	dc0795e3          	bnez	a5,7ca <vprintf+0x20>
 a04:	0001                	nop
 a06:	0001                	nop
 a08:	60a6                	ld	ra,72(sp)
 a0a:	6406                	ld	s0,64(sp)
 a0c:	6161                	addi	sp,sp,80
 a0e:	8082                	ret

0000000000000a10 <fprintf>:
 a10:	7159                	addi	sp,sp,-112
 a12:	fc06                	sd	ra,56(sp)
 a14:	f822                	sd	s0,48(sp)
 a16:	0080                	addi	s0,sp,64
 a18:	fcb43823          	sd	a1,-48(s0)
 a1c:	e010                	sd	a2,0(s0)
 a1e:	e414                	sd	a3,8(s0)
 a20:	e818                	sd	a4,16(s0)
 a22:	ec1c                	sd	a5,24(s0)
 a24:	03043023          	sd	a6,32(s0)
 a28:	03143423          	sd	a7,40(s0)
 a2c:	87aa                	mv	a5,a0
 a2e:	fcf42e23          	sw	a5,-36(s0)
 a32:	03040793          	addi	a5,s0,48
 a36:	fcf43423          	sd	a5,-56(s0)
 a3a:	fc843783          	ld	a5,-56(s0)
 a3e:	fd078793          	addi	a5,a5,-48
 a42:	fef43423          	sd	a5,-24(s0)
 a46:	fe843703          	ld	a4,-24(s0)
 a4a:	fdc42783          	lw	a5,-36(s0)
 a4e:	863a                	mv	a2,a4
 a50:	fd043583          	ld	a1,-48(s0)
 a54:	853e                	mv	a0,a5
 a56:	00000097          	auipc	ra,0x0
 a5a:	d54080e7          	jalr	-684(ra) # 7aa <vprintf>
 a5e:	0001                	nop
 a60:	70e2                	ld	ra,56(sp)
 a62:	7442                	ld	s0,48(sp)
 a64:	6165                	addi	sp,sp,112
 a66:	8082                	ret

0000000000000a68 <printf>:
 a68:	7159                	addi	sp,sp,-112
 a6a:	f406                	sd	ra,40(sp)
 a6c:	f022                	sd	s0,32(sp)
 a6e:	1800                	addi	s0,sp,48
 a70:	fca43c23          	sd	a0,-40(s0)
 a74:	e40c                	sd	a1,8(s0)
 a76:	e810                	sd	a2,16(s0)
 a78:	ec14                	sd	a3,24(s0)
 a7a:	f018                	sd	a4,32(s0)
 a7c:	f41c                	sd	a5,40(s0)
 a7e:	03043823          	sd	a6,48(s0)
 a82:	03143c23          	sd	a7,56(s0)
 a86:	04040793          	addi	a5,s0,64
 a8a:	fcf43823          	sd	a5,-48(s0)
 a8e:	fd043783          	ld	a5,-48(s0)
 a92:	fc878793          	addi	a5,a5,-56
 a96:	fef43423          	sd	a5,-24(s0)
 a9a:	fe843783          	ld	a5,-24(s0)
 a9e:	863e                	mv	a2,a5
 aa0:	fd843583          	ld	a1,-40(s0)
 aa4:	4505                	li	a0,1
 aa6:	00000097          	auipc	ra,0x0
 aaa:	d04080e7          	jalr	-764(ra) # 7aa <vprintf>
 aae:	0001                	nop
 ab0:	70a2                	ld	ra,40(sp)
 ab2:	7402                	ld	s0,32(sp)
 ab4:	6165                	addi	sp,sp,112
 ab6:	8082                	ret

0000000000000ab8 <free>:
 ab8:	7179                	addi	sp,sp,-48
 aba:	f422                	sd	s0,40(sp)
 abc:	1800                	addi	s0,sp,48
 abe:	fca43c23          	sd	a0,-40(s0)
 ac2:	fd843783          	ld	a5,-40(s0)
 ac6:	17c1                	addi	a5,a5,-16
 ac8:	fef43023          	sd	a5,-32(s0)
 acc:	00000797          	auipc	a5,0x0
 ad0:	3ac78793          	addi	a5,a5,940 # e78 <freep>
 ad4:	639c                	ld	a5,0(a5)
 ad6:	fef43423          	sd	a5,-24(s0)
 ada:	a815                	j	b0e <free+0x56>
 adc:	fe843783          	ld	a5,-24(s0)
 ae0:	639c                	ld	a5,0(a5)
 ae2:	fe843703          	ld	a4,-24(s0)
 ae6:	00f76f63          	bltu	a4,a5,b04 <free+0x4c>
 aea:	fe043703          	ld	a4,-32(s0)
 aee:	fe843783          	ld	a5,-24(s0)
 af2:	02e7eb63          	bltu	a5,a4,b28 <free+0x70>
 af6:	fe843783          	ld	a5,-24(s0)
 afa:	639c                	ld	a5,0(a5)
 afc:	fe043703          	ld	a4,-32(s0)
 b00:	02f76463          	bltu	a4,a5,b28 <free+0x70>
 b04:	fe843783          	ld	a5,-24(s0)
 b08:	639c                	ld	a5,0(a5)
 b0a:	fef43423          	sd	a5,-24(s0)
 b0e:	fe043703          	ld	a4,-32(s0)
 b12:	fe843783          	ld	a5,-24(s0)
 b16:	fce7f3e3          	bgeu	a5,a4,adc <free+0x24>
 b1a:	fe843783          	ld	a5,-24(s0)
 b1e:	639c                	ld	a5,0(a5)
 b20:	fe043703          	ld	a4,-32(s0)
 b24:	faf77ce3          	bgeu	a4,a5,adc <free+0x24>
 b28:	fe043783          	ld	a5,-32(s0)
 b2c:	479c                	lw	a5,8(a5)
 b2e:	1782                	slli	a5,a5,0x20
 b30:	9381                	srli	a5,a5,0x20
 b32:	0792                	slli	a5,a5,0x4
 b34:	fe043703          	ld	a4,-32(s0)
 b38:	973e                	add	a4,a4,a5
 b3a:	fe843783          	ld	a5,-24(s0)
 b3e:	639c                	ld	a5,0(a5)
 b40:	02f71763          	bne	a4,a5,b6e <free+0xb6>
 b44:	fe043783          	ld	a5,-32(s0)
 b48:	4798                	lw	a4,8(a5)
 b4a:	fe843783          	ld	a5,-24(s0)
 b4e:	639c                	ld	a5,0(a5)
 b50:	479c                	lw	a5,8(a5)
 b52:	9fb9                	addw	a5,a5,a4
 b54:	0007871b          	sext.w	a4,a5
 b58:	fe043783          	ld	a5,-32(s0)
 b5c:	c798                	sw	a4,8(a5)
 b5e:	fe843783          	ld	a5,-24(s0)
 b62:	639c                	ld	a5,0(a5)
 b64:	6398                	ld	a4,0(a5)
 b66:	fe043783          	ld	a5,-32(s0)
 b6a:	e398                	sd	a4,0(a5)
 b6c:	a039                	j	b7a <free+0xc2>
 b6e:	fe843783          	ld	a5,-24(s0)
 b72:	6398                	ld	a4,0(a5)
 b74:	fe043783          	ld	a5,-32(s0)
 b78:	e398                	sd	a4,0(a5)
 b7a:	fe843783          	ld	a5,-24(s0)
 b7e:	479c                	lw	a5,8(a5)
 b80:	1782                	slli	a5,a5,0x20
 b82:	9381                	srli	a5,a5,0x20
 b84:	0792                	slli	a5,a5,0x4
 b86:	fe843703          	ld	a4,-24(s0)
 b8a:	97ba                	add	a5,a5,a4
 b8c:	fe043703          	ld	a4,-32(s0)
 b90:	02f71563          	bne	a4,a5,bba <free+0x102>
 b94:	fe843783          	ld	a5,-24(s0)
 b98:	4798                	lw	a4,8(a5)
 b9a:	fe043783          	ld	a5,-32(s0)
 b9e:	479c                	lw	a5,8(a5)
 ba0:	9fb9                	addw	a5,a5,a4
 ba2:	0007871b          	sext.w	a4,a5
 ba6:	fe843783          	ld	a5,-24(s0)
 baa:	c798                	sw	a4,8(a5)
 bac:	fe043783          	ld	a5,-32(s0)
 bb0:	6398                	ld	a4,0(a5)
 bb2:	fe843783          	ld	a5,-24(s0)
 bb6:	e398                	sd	a4,0(a5)
 bb8:	a031                	j	bc4 <free+0x10c>
 bba:	fe843783          	ld	a5,-24(s0)
 bbe:	fe043703          	ld	a4,-32(s0)
 bc2:	e398                	sd	a4,0(a5)
 bc4:	00000797          	auipc	a5,0x0
 bc8:	2b478793          	addi	a5,a5,692 # e78 <freep>
 bcc:	fe843703          	ld	a4,-24(s0)
 bd0:	e398                	sd	a4,0(a5)
 bd2:	0001                	nop
 bd4:	7422                	ld	s0,40(sp)
 bd6:	6145                	addi	sp,sp,48
 bd8:	8082                	ret

0000000000000bda <morecore>:
 bda:	7179                	addi	sp,sp,-48
 bdc:	f406                	sd	ra,40(sp)
 bde:	f022                	sd	s0,32(sp)
 be0:	1800                	addi	s0,sp,48
 be2:	87aa                	mv	a5,a0
 be4:	fcf42e23          	sw	a5,-36(s0)
 be8:	fdc42783          	lw	a5,-36(s0)
 bec:	0007871b          	sext.w	a4,a5
 bf0:	6785                	lui	a5,0x1
 bf2:	00f77563          	bgeu	a4,a5,bfc <morecore+0x22>
 bf6:	6785                	lui	a5,0x1
 bf8:	fcf42e23          	sw	a5,-36(s0)
 bfc:	fdc42783          	lw	a5,-36(s0)
 c00:	0047979b          	slliw	a5,a5,0x4
 c04:	2781                	sext.w	a5,a5
 c06:	2781                	sext.w	a5,a5
 c08:	853e                	mv	a0,a5
 c0a:	00000097          	auipc	ra,0x0
 c0e:	9b8080e7          	jalr	-1608(ra) # 5c2 <sbrk>
 c12:	fea43423          	sd	a0,-24(s0)
 c16:	fe843703          	ld	a4,-24(s0)
 c1a:	57fd                	li	a5,-1
 c1c:	00f71463          	bne	a4,a5,c24 <morecore+0x4a>
 c20:	4781                	li	a5,0
 c22:	a03d                	j	c50 <morecore+0x76>
 c24:	fe843783          	ld	a5,-24(s0)
 c28:	fef43023          	sd	a5,-32(s0)
 c2c:	fe043783          	ld	a5,-32(s0)
 c30:	fdc42703          	lw	a4,-36(s0)
 c34:	c798                	sw	a4,8(a5)
 c36:	fe043783          	ld	a5,-32(s0)
 c3a:	07c1                	addi	a5,a5,16
 c3c:	853e                	mv	a0,a5
 c3e:	00000097          	auipc	ra,0x0
 c42:	e7a080e7          	jalr	-390(ra) # ab8 <free>
 c46:	00000797          	auipc	a5,0x0
 c4a:	23278793          	addi	a5,a5,562 # e78 <freep>
 c4e:	639c                	ld	a5,0(a5)
 c50:	853e                	mv	a0,a5
 c52:	70a2                	ld	ra,40(sp)
 c54:	7402                	ld	s0,32(sp)
 c56:	6145                	addi	sp,sp,48
 c58:	8082                	ret

0000000000000c5a <malloc>:
 c5a:	7139                	addi	sp,sp,-64
 c5c:	fc06                	sd	ra,56(sp)
 c5e:	f822                	sd	s0,48(sp)
 c60:	0080                	addi	s0,sp,64
 c62:	87aa                	mv	a5,a0
 c64:	fcf42623          	sw	a5,-52(s0)
 c68:	fcc46783          	lwu	a5,-52(s0)
 c6c:	07bd                	addi	a5,a5,15
 c6e:	8391                	srli	a5,a5,0x4
 c70:	2781                	sext.w	a5,a5
 c72:	2785                	addiw	a5,a5,1
 c74:	fcf42e23          	sw	a5,-36(s0)
 c78:	00000797          	auipc	a5,0x0
 c7c:	20078793          	addi	a5,a5,512 # e78 <freep>
 c80:	639c                	ld	a5,0(a5)
 c82:	fef43023          	sd	a5,-32(s0)
 c86:	fe043783          	ld	a5,-32(s0)
 c8a:	ef95                	bnez	a5,cc6 <malloc+0x6c>
 c8c:	00000797          	auipc	a5,0x0
 c90:	1dc78793          	addi	a5,a5,476 # e68 <base>
 c94:	fef43023          	sd	a5,-32(s0)
 c98:	00000797          	auipc	a5,0x0
 c9c:	1e078793          	addi	a5,a5,480 # e78 <freep>
 ca0:	fe043703          	ld	a4,-32(s0)
 ca4:	e398                	sd	a4,0(a5)
 ca6:	00000797          	auipc	a5,0x0
 caa:	1d278793          	addi	a5,a5,466 # e78 <freep>
 cae:	6398                	ld	a4,0(a5)
 cb0:	00000797          	auipc	a5,0x0
 cb4:	1b878793          	addi	a5,a5,440 # e68 <base>
 cb8:	e398                	sd	a4,0(a5)
 cba:	00000797          	auipc	a5,0x0
 cbe:	1ae78793          	addi	a5,a5,430 # e68 <base>
 cc2:	0007a423          	sw	zero,8(a5)
 cc6:	fe043783          	ld	a5,-32(s0)
 cca:	639c                	ld	a5,0(a5)
 ccc:	fef43423          	sd	a5,-24(s0)
 cd0:	fe843783          	ld	a5,-24(s0)
 cd4:	4798                	lw	a4,8(a5)
 cd6:	fdc42783          	lw	a5,-36(s0)
 cda:	2781                	sext.w	a5,a5
 cdc:	06f76863          	bltu	a4,a5,d4c <malloc+0xf2>
 ce0:	fe843783          	ld	a5,-24(s0)
 ce4:	4798                	lw	a4,8(a5)
 ce6:	fdc42783          	lw	a5,-36(s0)
 cea:	2781                	sext.w	a5,a5
 cec:	00e79963          	bne	a5,a4,cfe <malloc+0xa4>
 cf0:	fe843783          	ld	a5,-24(s0)
 cf4:	6398                	ld	a4,0(a5)
 cf6:	fe043783          	ld	a5,-32(s0)
 cfa:	e398                	sd	a4,0(a5)
 cfc:	a82d                	j	d36 <malloc+0xdc>
 cfe:	fe843783          	ld	a5,-24(s0)
 d02:	4798                	lw	a4,8(a5)
 d04:	fdc42783          	lw	a5,-36(s0)
 d08:	40f707bb          	subw	a5,a4,a5
 d0c:	0007871b          	sext.w	a4,a5
 d10:	fe843783          	ld	a5,-24(s0)
 d14:	c798                	sw	a4,8(a5)
 d16:	fe843783          	ld	a5,-24(s0)
 d1a:	479c                	lw	a5,8(a5)
 d1c:	1782                	slli	a5,a5,0x20
 d1e:	9381                	srli	a5,a5,0x20
 d20:	0792                	slli	a5,a5,0x4
 d22:	fe843703          	ld	a4,-24(s0)
 d26:	97ba                	add	a5,a5,a4
 d28:	fef43423          	sd	a5,-24(s0)
 d2c:	fe843783          	ld	a5,-24(s0)
 d30:	fdc42703          	lw	a4,-36(s0)
 d34:	c798                	sw	a4,8(a5)
 d36:	00000797          	auipc	a5,0x0
 d3a:	14278793          	addi	a5,a5,322 # e78 <freep>
 d3e:	fe043703          	ld	a4,-32(s0)
 d42:	e398                	sd	a4,0(a5)
 d44:	fe843783          	ld	a5,-24(s0)
 d48:	07c1                	addi	a5,a5,16
 d4a:	a091                	j	d8e <malloc+0x134>
 d4c:	00000797          	auipc	a5,0x0
 d50:	12c78793          	addi	a5,a5,300 # e78 <freep>
 d54:	639c                	ld	a5,0(a5)
 d56:	fe843703          	ld	a4,-24(s0)
 d5a:	02f71063          	bne	a4,a5,d7a <malloc+0x120>
 d5e:	fdc42783          	lw	a5,-36(s0)
 d62:	853e                	mv	a0,a5
 d64:	00000097          	auipc	ra,0x0
 d68:	e76080e7          	jalr	-394(ra) # bda <morecore>
 d6c:	fea43423          	sd	a0,-24(s0)
 d70:	fe843783          	ld	a5,-24(s0)
 d74:	e399                	bnez	a5,d7a <malloc+0x120>
 d76:	4781                	li	a5,0
 d78:	a819                	j	d8e <malloc+0x134>
 d7a:	fe843783          	ld	a5,-24(s0)
 d7e:	fef43023          	sd	a5,-32(s0)
 d82:	fe843783          	ld	a5,-24(s0)
 d86:	639c                	ld	a5,0(a5)
 d88:	fef43423          	sd	a5,-24(s0)
 d8c:	b791                	j	cd0 <malloc+0x76>
 d8e:	853e                	mv	a0,a5
 d90:	70e2                	ld	ra,56(sp)
 d92:	7442                	ld	s0,48(sp)
 d94:	6121                	addi	sp,sp,64
 d96:	8082                	ret

0000000000000d98 <setjmp>:
 d98:	e100                	sd	s0,0(a0)
 d9a:	e504                	sd	s1,8(a0)
 d9c:	01253823          	sd	s2,16(a0)
 da0:	01353c23          	sd	s3,24(a0)
 da4:	03453023          	sd	s4,32(a0)
 da8:	03553423          	sd	s5,40(a0)
 dac:	03653823          	sd	s6,48(a0)
 db0:	03753c23          	sd	s7,56(a0)
 db4:	05853023          	sd	s8,64(a0)
 db8:	05953423          	sd	s9,72(a0)
 dbc:	05a53823          	sd	s10,80(a0)
 dc0:	05b53c23          	sd	s11,88(a0)
 dc4:	06153023          	sd	ra,96(a0)
 dc8:	06253423          	sd	sp,104(a0)
 dcc:	4501                	li	a0,0
 dce:	8082                	ret

0000000000000dd0 <longjmp>:
 dd0:	6100                	ld	s0,0(a0)
 dd2:	6504                	ld	s1,8(a0)
 dd4:	01053903          	ld	s2,16(a0)
 dd8:	01853983          	ld	s3,24(a0)
 ddc:	02053a03          	ld	s4,32(a0)
 de0:	02853a83          	ld	s5,40(a0)
 de4:	03053b03          	ld	s6,48(a0)
 de8:	03853b83          	ld	s7,56(a0)
 dec:	04053c03          	ld	s8,64(a0)
 df0:	04853c83          	ld	s9,72(a0)
 df4:	05053d03          	ld	s10,80(a0)
 df8:	05853d83          	ld	s11,88(a0)
 dfc:	06053083          	ld	ra,96(a0)
 e00:	06853103          	ld	sp,104(a0)
 e04:	c199                	beqz	a1,e0a <longjmp_1>
 e06:	852e                	mv	a0,a1
 e08:	8082                	ret

0000000000000e0a <longjmp_1>:
 e0a:	4505                	li	a0,1
 e0c:	8082                	ret
