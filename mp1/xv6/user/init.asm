
user/_init:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	1101                	addi	sp,sp,-32
   2:	ec06                	sd	ra,24(sp)
   4:	e822                	sd	s0,16(sp)
   6:	1000                	addi	s0,sp,32
   8:	4589                	li	a1,2
   a:	00001517          	auipc	a0,0x1
   e:	e8650513          	addi	a0,a0,-378 # e90 <longjmp_1+0x12>
  12:	00000097          	auipc	ra,0x0
  16:	5dc080e7          	jalr	1500(ra) # 5ee <open>
  1a:	87aa                	mv	a5,a0
  1c:	0207d563          	bgez	a5,46 <main+0x46>
  20:	4601                	li	a2,0
  22:	4585                	li	a1,1
  24:	00001517          	auipc	a0,0x1
  28:	e6c50513          	addi	a0,a0,-404 # e90 <longjmp_1+0x12>
  2c:	00000097          	auipc	ra,0x0
  30:	5ca080e7          	jalr	1482(ra) # 5f6 <mknod>
  34:	4589                	li	a1,2
  36:	00001517          	auipc	a0,0x1
  3a:	e5a50513          	addi	a0,a0,-422 # e90 <longjmp_1+0x12>
  3e:	00000097          	auipc	ra,0x0
  42:	5b0080e7          	jalr	1456(ra) # 5ee <open>
  46:	4501                	li	a0,0
  48:	00000097          	auipc	ra,0x0
  4c:	5de080e7          	jalr	1502(ra) # 626 <dup>
  50:	4501                	li	a0,0
  52:	00000097          	auipc	ra,0x0
  56:	5d4080e7          	jalr	1492(ra) # 626 <dup>
  5a:	00001517          	auipc	a0,0x1
  5e:	e3e50513          	addi	a0,a0,-450 # e98 <longjmp_1+0x1a>
  62:	00001097          	auipc	ra,0x1
  66:	a7a080e7          	jalr	-1414(ra) # adc <printf>
  6a:	00000097          	auipc	ra,0x0
  6e:	53c080e7          	jalr	1340(ra) # 5a6 <fork>
  72:	87aa                	mv	a5,a0
  74:	fef42623          	sw	a5,-20(s0)
  78:	fec42783          	lw	a5,-20(s0)
  7c:	2781                	sext.w	a5,a5
  7e:	0007df63          	bgez	a5,9c <main+0x9c>
  82:	00001517          	auipc	a0,0x1
  86:	e2e50513          	addi	a0,a0,-466 # eb0 <longjmp_1+0x32>
  8a:	00001097          	auipc	ra,0x1
  8e:	a52080e7          	jalr	-1454(ra) # adc <printf>
  92:	4505                	li	a0,1
  94:	00000097          	auipc	ra,0x0
  98:	51a080e7          	jalr	1306(ra) # 5ae <exit>
  9c:	fec42783          	lw	a5,-20(s0)
  a0:	2781                	sext.w	a5,a5
  a2:	eb95                	bnez	a5,d6 <main+0xd6>
  a4:	00001597          	auipc	a1,0x1
  a8:	e6458593          	addi	a1,a1,-412 # f08 <argv>
  ac:	00001517          	auipc	a0,0x1
  b0:	ddc50513          	addi	a0,a0,-548 # e88 <longjmp_1+0xa>
  b4:	00000097          	auipc	ra,0x0
  b8:	532080e7          	jalr	1330(ra) # 5e6 <exec>
  bc:	00001517          	auipc	a0,0x1
  c0:	e0c50513          	addi	a0,a0,-500 # ec8 <longjmp_1+0x4a>
  c4:	00001097          	auipc	ra,0x1
  c8:	a18080e7          	jalr	-1512(ra) # adc <printf>
  cc:	4505                	li	a0,1
  ce:	00000097          	auipc	ra,0x0
  d2:	4e0080e7          	jalr	1248(ra) # 5ae <exit>
  d6:	4501                	li	a0,0
  d8:	00000097          	auipc	ra,0x0
  dc:	4de080e7          	jalr	1246(ra) # 5b6 <wait>
  e0:	87aa                	mv	a5,a0
  e2:	fef42423          	sw	a5,-24(s0)
  e6:	fe842703          	lw	a4,-24(s0)
  ea:	fec42783          	lw	a5,-20(s0)
  ee:	2701                	sext.w	a4,a4
  f0:	2781                	sext.w	a5,a5
  f2:	02f70463          	beq	a4,a5,11a <main+0x11a>
  f6:	fe842783          	lw	a5,-24(s0)
  fa:	2781                	sext.w	a5,a5
  fc:	fc07dde3          	bgez	a5,d6 <main+0xd6>
 100:	00001517          	auipc	a0,0x1
 104:	de050513          	addi	a0,a0,-544 # ee0 <longjmp_1+0x62>
 108:	00001097          	auipc	ra,0x1
 10c:	9d4080e7          	jalr	-1580(ra) # adc <printf>
 110:	4505                	li	a0,1
 112:	00000097          	auipc	ra,0x0
 116:	49c080e7          	jalr	1180(ra) # 5ae <exit>
 11a:	0001                	nop
 11c:	bf3d                	j	5a <main+0x5a>

000000000000011e <strcpy>:
 11e:	7179                	addi	sp,sp,-48
 120:	f422                	sd	s0,40(sp)
 122:	1800                	addi	s0,sp,48
 124:	fca43c23          	sd	a0,-40(s0)
 128:	fcb43823          	sd	a1,-48(s0)
 12c:	fd843783          	ld	a5,-40(s0)
 130:	fef43423          	sd	a5,-24(s0)
 134:	0001                	nop
 136:	fd043703          	ld	a4,-48(s0)
 13a:	00170793          	addi	a5,a4,1
 13e:	fcf43823          	sd	a5,-48(s0)
 142:	fd843783          	ld	a5,-40(s0)
 146:	00178693          	addi	a3,a5,1
 14a:	fcd43c23          	sd	a3,-40(s0)
 14e:	00074703          	lbu	a4,0(a4)
 152:	00e78023          	sb	a4,0(a5)
 156:	0007c783          	lbu	a5,0(a5)
 15a:	fff1                	bnez	a5,136 <strcpy+0x18>
 15c:	fe843783          	ld	a5,-24(s0)
 160:	853e                	mv	a0,a5
 162:	7422                	ld	s0,40(sp)
 164:	6145                	addi	sp,sp,48
 166:	8082                	ret

0000000000000168 <strcmp>:
 168:	1101                	addi	sp,sp,-32
 16a:	ec22                	sd	s0,24(sp)
 16c:	1000                	addi	s0,sp,32
 16e:	fea43423          	sd	a0,-24(s0)
 172:	feb43023          	sd	a1,-32(s0)
 176:	a819                	j	18c <strcmp+0x24>
 178:	fe843783          	ld	a5,-24(s0)
 17c:	0785                	addi	a5,a5,1
 17e:	fef43423          	sd	a5,-24(s0)
 182:	fe043783          	ld	a5,-32(s0)
 186:	0785                	addi	a5,a5,1
 188:	fef43023          	sd	a5,-32(s0)
 18c:	fe843783          	ld	a5,-24(s0)
 190:	0007c783          	lbu	a5,0(a5)
 194:	cb99                	beqz	a5,1aa <strcmp+0x42>
 196:	fe843783          	ld	a5,-24(s0)
 19a:	0007c703          	lbu	a4,0(a5)
 19e:	fe043783          	ld	a5,-32(s0)
 1a2:	0007c783          	lbu	a5,0(a5)
 1a6:	fcf709e3          	beq	a4,a5,178 <strcmp+0x10>
 1aa:	fe843783          	ld	a5,-24(s0)
 1ae:	0007c783          	lbu	a5,0(a5)
 1b2:	0007871b          	sext.w	a4,a5
 1b6:	fe043783          	ld	a5,-32(s0)
 1ba:	0007c783          	lbu	a5,0(a5)
 1be:	2781                	sext.w	a5,a5
 1c0:	40f707bb          	subw	a5,a4,a5
 1c4:	2781                	sext.w	a5,a5
 1c6:	853e                	mv	a0,a5
 1c8:	6462                	ld	s0,24(sp)
 1ca:	6105                	addi	sp,sp,32
 1cc:	8082                	ret

00000000000001ce <strlen>:
 1ce:	7179                	addi	sp,sp,-48
 1d0:	f422                	sd	s0,40(sp)
 1d2:	1800                	addi	s0,sp,48
 1d4:	fca43c23          	sd	a0,-40(s0)
 1d8:	fe042623          	sw	zero,-20(s0)
 1dc:	a031                	j	1e8 <strlen+0x1a>
 1de:	fec42783          	lw	a5,-20(s0)
 1e2:	2785                	addiw	a5,a5,1
 1e4:	fef42623          	sw	a5,-20(s0)
 1e8:	fec42783          	lw	a5,-20(s0)
 1ec:	fd843703          	ld	a4,-40(s0)
 1f0:	97ba                	add	a5,a5,a4
 1f2:	0007c783          	lbu	a5,0(a5)
 1f6:	f7e5                	bnez	a5,1de <strlen+0x10>
 1f8:	fec42783          	lw	a5,-20(s0)
 1fc:	853e                	mv	a0,a5
 1fe:	7422                	ld	s0,40(sp)
 200:	6145                	addi	sp,sp,48
 202:	8082                	ret

0000000000000204 <memset>:
 204:	7179                	addi	sp,sp,-48
 206:	f422                	sd	s0,40(sp)
 208:	1800                	addi	s0,sp,48
 20a:	fca43c23          	sd	a0,-40(s0)
 20e:	87ae                	mv	a5,a1
 210:	8732                	mv	a4,a2
 212:	fcf42a23          	sw	a5,-44(s0)
 216:	87ba                	mv	a5,a4
 218:	fcf42823          	sw	a5,-48(s0)
 21c:	fd843783          	ld	a5,-40(s0)
 220:	fef43023          	sd	a5,-32(s0)
 224:	fe042623          	sw	zero,-20(s0)
 228:	a00d                	j	24a <memset+0x46>
 22a:	fec42783          	lw	a5,-20(s0)
 22e:	fe043703          	ld	a4,-32(s0)
 232:	97ba                	add	a5,a5,a4
 234:	fd442703          	lw	a4,-44(s0)
 238:	0ff77713          	andi	a4,a4,255
 23c:	00e78023          	sb	a4,0(a5)
 240:	fec42783          	lw	a5,-20(s0)
 244:	2785                	addiw	a5,a5,1
 246:	fef42623          	sw	a5,-20(s0)
 24a:	fec42703          	lw	a4,-20(s0)
 24e:	fd042783          	lw	a5,-48(s0)
 252:	2781                	sext.w	a5,a5
 254:	fcf76be3          	bltu	a4,a5,22a <memset+0x26>
 258:	fd843783          	ld	a5,-40(s0)
 25c:	853e                	mv	a0,a5
 25e:	7422                	ld	s0,40(sp)
 260:	6145                	addi	sp,sp,48
 262:	8082                	ret

0000000000000264 <strchr>:
 264:	1101                	addi	sp,sp,-32
 266:	ec22                	sd	s0,24(sp)
 268:	1000                	addi	s0,sp,32
 26a:	fea43423          	sd	a0,-24(s0)
 26e:	87ae                	mv	a5,a1
 270:	fef403a3          	sb	a5,-25(s0)
 274:	a01d                	j	29a <strchr+0x36>
 276:	fe843783          	ld	a5,-24(s0)
 27a:	0007c703          	lbu	a4,0(a5)
 27e:	fe744783          	lbu	a5,-25(s0)
 282:	0ff7f793          	andi	a5,a5,255
 286:	00e79563          	bne	a5,a4,290 <strchr+0x2c>
 28a:	fe843783          	ld	a5,-24(s0)
 28e:	a821                	j	2a6 <strchr+0x42>
 290:	fe843783          	ld	a5,-24(s0)
 294:	0785                	addi	a5,a5,1
 296:	fef43423          	sd	a5,-24(s0)
 29a:	fe843783          	ld	a5,-24(s0)
 29e:	0007c783          	lbu	a5,0(a5)
 2a2:	fbf1                	bnez	a5,276 <strchr+0x12>
 2a4:	4781                	li	a5,0
 2a6:	853e                	mv	a0,a5
 2a8:	6462                	ld	s0,24(sp)
 2aa:	6105                	addi	sp,sp,32
 2ac:	8082                	ret

00000000000002ae <gets>:
 2ae:	7179                	addi	sp,sp,-48
 2b0:	f406                	sd	ra,40(sp)
 2b2:	f022                	sd	s0,32(sp)
 2b4:	1800                	addi	s0,sp,48
 2b6:	fca43c23          	sd	a0,-40(s0)
 2ba:	87ae                	mv	a5,a1
 2bc:	fcf42a23          	sw	a5,-44(s0)
 2c0:	fe042623          	sw	zero,-20(s0)
 2c4:	a8a1                	j	31c <gets+0x6e>
 2c6:	fe740793          	addi	a5,s0,-25
 2ca:	4605                	li	a2,1
 2cc:	85be                	mv	a1,a5
 2ce:	4501                	li	a0,0
 2d0:	00000097          	auipc	ra,0x0
 2d4:	2f6080e7          	jalr	758(ra) # 5c6 <read>
 2d8:	87aa                	mv	a5,a0
 2da:	fef42423          	sw	a5,-24(s0)
 2de:	fe842783          	lw	a5,-24(s0)
 2e2:	2781                	sext.w	a5,a5
 2e4:	04f05763          	blez	a5,332 <gets+0x84>
 2e8:	fec42783          	lw	a5,-20(s0)
 2ec:	0017871b          	addiw	a4,a5,1
 2f0:	fee42623          	sw	a4,-20(s0)
 2f4:	873e                	mv	a4,a5
 2f6:	fd843783          	ld	a5,-40(s0)
 2fa:	97ba                	add	a5,a5,a4
 2fc:	fe744703          	lbu	a4,-25(s0)
 300:	00e78023          	sb	a4,0(a5)
 304:	fe744783          	lbu	a5,-25(s0)
 308:	873e                	mv	a4,a5
 30a:	47a9                	li	a5,10
 30c:	02f70463          	beq	a4,a5,334 <gets+0x86>
 310:	fe744783          	lbu	a5,-25(s0)
 314:	873e                	mv	a4,a5
 316:	47b5                	li	a5,13
 318:	00f70e63          	beq	a4,a5,334 <gets+0x86>
 31c:	fec42783          	lw	a5,-20(s0)
 320:	2785                	addiw	a5,a5,1
 322:	0007871b          	sext.w	a4,a5
 326:	fd442783          	lw	a5,-44(s0)
 32a:	2781                	sext.w	a5,a5
 32c:	f8f74de3          	blt	a4,a5,2c6 <gets+0x18>
 330:	a011                	j	334 <gets+0x86>
 332:	0001                	nop
 334:	fec42783          	lw	a5,-20(s0)
 338:	fd843703          	ld	a4,-40(s0)
 33c:	97ba                	add	a5,a5,a4
 33e:	00078023          	sb	zero,0(a5)
 342:	fd843783          	ld	a5,-40(s0)
 346:	853e                	mv	a0,a5
 348:	70a2                	ld	ra,40(sp)
 34a:	7402                	ld	s0,32(sp)
 34c:	6145                	addi	sp,sp,48
 34e:	8082                	ret

0000000000000350 <stat>:
 350:	7179                	addi	sp,sp,-48
 352:	f406                	sd	ra,40(sp)
 354:	f022                	sd	s0,32(sp)
 356:	1800                	addi	s0,sp,48
 358:	fca43c23          	sd	a0,-40(s0)
 35c:	fcb43823          	sd	a1,-48(s0)
 360:	4581                	li	a1,0
 362:	fd843503          	ld	a0,-40(s0)
 366:	00000097          	auipc	ra,0x0
 36a:	288080e7          	jalr	648(ra) # 5ee <open>
 36e:	87aa                	mv	a5,a0
 370:	fef42623          	sw	a5,-20(s0)
 374:	fec42783          	lw	a5,-20(s0)
 378:	2781                	sext.w	a5,a5
 37a:	0007d463          	bgez	a5,382 <stat+0x32>
 37e:	57fd                	li	a5,-1
 380:	a035                	j	3ac <stat+0x5c>
 382:	fec42783          	lw	a5,-20(s0)
 386:	fd043583          	ld	a1,-48(s0)
 38a:	853e                	mv	a0,a5
 38c:	00000097          	auipc	ra,0x0
 390:	27a080e7          	jalr	634(ra) # 606 <fstat>
 394:	87aa                	mv	a5,a0
 396:	fef42423          	sw	a5,-24(s0)
 39a:	fec42783          	lw	a5,-20(s0)
 39e:	853e                	mv	a0,a5
 3a0:	00000097          	auipc	ra,0x0
 3a4:	236080e7          	jalr	566(ra) # 5d6 <close>
 3a8:	fe842783          	lw	a5,-24(s0)
 3ac:	853e                	mv	a0,a5
 3ae:	70a2                	ld	ra,40(sp)
 3b0:	7402                	ld	s0,32(sp)
 3b2:	6145                	addi	sp,sp,48
 3b4:	8082                	ret

00000000000003b6 <atoi>:
 3b6:	7179                	addi	sp,sp,-48
 3b8:	f422                	sd	s0,40(sp)
 3ba:	1800                	addi	s0,sp,48
 3bc:	fca43c23          	sd	a0,-40(s0)
 3c0:	fe042623          	sw	zero,-20(s0)
 3c4:	a815                	j	3f8 <atoi+0x42>
 3c6:	fec42703          	lw	a4,-20(s0)
 3ca:	87ba                	mv	a5,a4
 3cc:	0027979b          	slliw	a5,a5,0x2
 3d0:	9fb9                	addw	a5,a5,a4
 3d2:	0017979b          	slliw	a5,a5,0x1
 3d6:	0007871b          	sext.w	a4,a5
 3da:	fd843783          	ld	a5,-40(s0)
 3de:	00178693          	addi	a3,a5,1
 3e2:	fcd43c23          	sd	a3,-40(s0)
 3e6:	0007c783          	lbu	a5,0(a5)
 3ea:	2781                	sext.w	a5,a5
 3ec:	9fb9                	addw	a5,a5,a4
 3ee:	2781                	sext.w	a5,a5
 3f0:	fd07879b          	addiw	a5,a5,-48
 3f4:	fef42623          	sw	a5,-20(s0)
 3f8:	fd843783          	ld	a5,-40(s0)
 3fc:	0007c783          	lbu	a5,0(a5)
 400:	873e                	mv	a4,a5
 402:	02f00793          	li	a5,47
 406:	00e7fb63          	bgeu	a5,a4,41c <atoi+0x66>
 40a:	fd843783          	ld	a5,-40(s0)
 40e:	0007c783          	lbu	a5,0(a5)
 412:	873e                	mv	a4,a5
 414:	03900793          	li	a5,57
 418:	fae7f7e3          	bgeu	a5,a4,3c6 <atoi+0x10>
 41c:	fec42783          	lw	a5,-20(s0)
 420:	853e                	mv	a0,a5
 422:	7422                	ld	s0,40(sp)
 424:	6145                	addi	sp,sp,48
 426:	8082                	ret

0000000000000428 <memmove>:
 428:	7139                	addi	sp,sp,-64
 42a:	fc22                	sd	s0,56(sp)
 42c:	0080                	addi	s0,sp,64
 42e:	fca43c23          	sd	a0,-40(s0)
 432:	fcb43823          	sd	a1,-48(s0)
 436:	87b2                	mv	a5,a2
 438:	fcf42623          	sw	a5,-52(s0)
 43c:	fd843783          	ld	a5,-40(s0)
 440:	fef43423          	sd	a5,-24(s0)
 444:	fd043783          	ld	a5,-48(s0)
 448:	fef43023          	sd	a5,-32(s0)
 44c:	fe043703          	ld	a4,-32(s0)
 450:	fe843783          	ld	a5,-24(s0)
 454:	02e7fc63          	bgeu	a5,a4,48c <memmove+0x64>
 458:	a00d                	j	47a <memmove+0x52>
 45a:	fe043703          	ld	a4,-32(s0)
 45e:	00170793          	addi	a5,a4,1
 462:	fef43023          	sd	a5,-32(s0)
 466:	fe843783          	ld	a5,-24(s0)
 46a:	00178693          	addi	a3,a5,1
 46e:	fed43423          	sd	a3,-24(s0)
 472:	00074703          	lbu	a4,0(a4)
 476:	00e78023          	sb	a4,0(a5)
 47a:	fcc42783          	lw	a5,-52(s0)
 47e:	fff7871b          	addiw	a4,a5,-1
 482:	fce42623          	sw	a4,-52(s0)
 486:	fcf04ae3          	bgtz	a5,45a <memmove+0x32>
 48a:	a891                	j	4de <memmove+0xb6>
 48c:	fcc42783          	lw	a5,-52(s0)
 490:	fe843703          	ld	a4,-24(s0)
 494:	97ba                	add	a5,a5,a4
 496:	fef43423          	sd	a5,-24(s0)
 49a:	fcc42783          	lw	a5,-52(s0)
 49e:	fe043703          	ld	a4,-32(s0)
 4a2:	97ba                	add	a5,a5,a4
 4a4:	fef43023          	sd	a5,-32(s0)
 4a8:	a01d                	j	4ce <memmove+0xa6>
 4aa:	fe043783          	ld	a5,-32(s0)
 4ae:	17fd                	addi	a5,a5,-1
 4b0:	fef43023          	sd	a5,-32(s0)
 4b4:	fe843783          	ld	a5,-24(s0)
 4b8:	17fd                	addi	a5,a5,-1
 4ba:	fef43423          	sd	a5,-24(s0)
 4be:	fe043783          	ld	a5,-32(s0)
 4c2:	0007c703          	lbu	a4,0(a5)
 4c6:	fe843783          	ld	a5,-24(s0)
 4ca:	00e78023          	sb	a4,0(a5)
 4ce:	fcc42783          	lw	a5,-52(s0)
 4d2:	fff7871b          	addiw	a4,a5,-1
 4d6:	fce42623          	sw	a4,-52(s0)
 4da:	fcf048e3          	bgtz	a5,4aa <memmove+0x82>
 4de:	fd843783          	ld	a5,-40(s0)
 4e2:	853e                	mv	a0,a5
 4e4:	7462                	ld	s0,56(sp)
 4e6:	6121                	addi	sp,sp,64
 4e8:	8082                	ret

00000000000004ea <memcmp>:
 4ea:	7139                	addi	sp,sp,-64
 4ec:	fc22                	sd	s0,56(sp)
 4ee:	0080                	addi	s0,sp,64
 4f0:	fca43c23          	sd	a0,-40(s0)
 4f4:	fcb43823          	sd	a1,-48(s0)
 4f8:	87b2                	mv	a5,a2
 4fa:	fcf42623          	sw	a5,-52(s0)
 4fe:	fd843783          	ld	a5,-40(s0)
 502:	fef43423          	sd	a5,-24(s0)
 506:	fd043783          	ld	a5,-48(s0)
 50a:	fef43023          	sd	a5,-32(s0)
 50e:	a0a1                	j	556 <memcmp+0x6c>
 510:	fe843783          	ld	a5,-24(s0)
 514:	0007c703          	lbu	a4,0(a5)
 518:	fe043783          	ld	a5,-32(s0)
 51c:	0007c783          	lbu	a5,0(a5)
 520:	02f70163          	beq	a4,a5,542 <memcmp+0x58>
 524:	fe843783          	ld	a5,-24(s0)
 528:	0007c783          	lbu	a5,0(a5)
 52c:	0007871b          	sext.w	a4,a5
 530:	fe043783          	ld	a5,-32(s0)
 534:	0007c783          	lbu	a5,0(a5)
 538:	2781                	sext.w	a5,a5
 53a:	40f707bb          	subw	a5,a4,a5
 53e:	2781                	sext.w	a5,a5
 540:	a01d                	j	566 <memcmp+0x7c>
 542:	fe843783          	ld	a5,-24(s0)
 546:	0785                	addi	a5,a5,1
 548:	fef43423          	sd	a5,-24(s0)
 54c:	fe043783          	ld	a5,-32(s0)
 550:	0785                	addi	a5,a5,1
 552:	fef43023          	sd	a5,-32(s0)
 556:	fcc42783          	lw	a5,-52(s0)
 55a:	fff7871b          	addiw	a4,a5,-1
 55e:	fce42623          	sw	a4,-52(s0)
 562:	f7dd                	bnez	a5,510 <memcmp+0x26>
 564:	4781                	li	a5,0
 566:	853e                	mv	a0,a5
 568:	7462                	ld	s0,56(sp)
 56a:	6121                	addi	sp,sp,64
 56c:	8082                	ret

000000000000056e <memcpy>:
 56e:	7179                	addi	sp,sp,-48
 570:	f406                	sd	ra,40(sp)
 572:	f022                	sd	s0,32(sp)
 574:	1800                	addi	s0,sp,48
 576:	fea43423          	sd	a0,-24(s0)
 57a:	feb43023          	sd	a1,-32(s0)
 57e:	87b2                	mv	a5,a2
 580:	fcf42e23          	sw	a5,-36(s0)
 584:	fdc42783          	lw	a5,-36(s0)
 588:	863e                	mv	a2,a5
 58a:	fe043583          	ld	a1,-32(s0)
 58e:	fe843503          	ld	a0,-24(s0)
 592:	00000097          	auipc	ra,0x0
 596:	e96080e7          	jalr	-362(ra) # 428 <memmove>
 59a:	87aa                	mv	a5,a0
 59c:	853e                	mv	a0,a5
 59e:	70a2                	ld	ra,40(sp)
 5a0:	7402                	ld	s0,32(sp)
 5a2:	6145                	addi	sp,sp,48
 5a4:	8082                	ret

00000000000005a6 <fork>:
 5a6:	4885                	li	a7,1
 5a8:	00000073          	ecall
 5ac:	8082                	ret

00000000000005ae <exit>:
 5ae:	4889                	li	a7,2
 5b0:	00000073          	ecall
 5b4:	8082                	ret

00000000000005b6 <wait>:
 5b6:	488d                	li	a7,3
 5b8:	00000073          	ecall
 5bc:	8082                	ret

00000000000005be <pipe>:
 5be:	4891                	li	a7,4
 5c0:	00000073          	ecall
 5c4:	8082                	ret

00000000000005c6 <read>:
 5c6:	4895                	li	a7,5
 5c8:	00000073          	ecall
 5cc:	8082                	ret

00000000000005ce <write>:
 5ce:	48c1                	li	a7,16
 5d0:	00000073          	ecall
 5d4:	8082                	ret

00000000000005d6 <close>:
 5d6:	48d5                	li	a7,21
 5d8:	00000073          	ecall
 5dc:	8082                	ret

00000000000005de <kill>:
 5de:	4899                	li	a7,6
 5e0:	00000073          	ecall
 5e4:	8082                	ret

00000000000005e6 <exec>:
 5e6:	489d                	li	a7,7
 5e8:	00000073          	ecall
 5ec:	8082                	ret

00000000000005ee <open>:
 5ee:	48bd                	li	a7,15
 5f0:	00000073          	ecall
 5f4:	8082                	ret

00000000000005f6 <mknod>:
 5f6:	48c5                	li	a7,17
 5f8:	00000073          	ecall
 5fc:	8082                	ret

00000000000005fe <unlink>:
 5fe:	48c9                	li	a7,18
 600:	00000073          	ecall
 604:	8082                	ret

0000000000000606 <fstat>:
 606:	48a1                	li	a7,8
 608:	00000073          	ecall
 60c:	8082                	ret

000000000000060e <link>:
 60e:	48cd                	li	a7,19
 610:	00000073          	ecall
 614:	8082                	ret

0000000000000616 <mkdir>:
 616:	48d1                	li	a7,20
 618:	00000073          	ecall
 61c:	8082                	ret

000000000000061e <chdir>:
 61e:	48a5                	li	a7,9
 620:	00000073          	ecall
 624:	8082                	ret

0000000000000626 <dup>:
 626:	48a9                	li	a7,10
 628:	00000073          	ecall
 62c:	8082                	ret

000000000000062e <getpid>:
 62e:	48ad                	li	a7,11
 630:	00000073          	ecall
 634:	8082                	ret

0000000000000636 <sbrk>:
 636:	48b1                	li	a7,12
 638:	00000073          	ecall
 63c:	8082                	ret

000000000000063e <sleep>:
 63e:	48b5                	li	a7,13
 640:	00000073          	ecall
 644:	8082                	ret

0000000000000646 <uptime>:
 646:	48b9                	li	a7,14
 648:	00000073          	ecall
 64c:	8082                	ret

000000000000064e <putc>:
 64e:	1101                	addi	sp,sp,-32
 650:	ec06                	sd	ra,24(sp)
 652:	e822                	sd	s0,16(sp)
 654:	1000                	addi	s0,sp,32
 656:	87aa                	mv	a5,a0
 658:	872e                	mv	a4,a1
 65a:	fef42623          	sw	a5,-20(s0)
 65e:	87ba                	mv	a5,a4
 660:	fef405a3          	sb	a5,-21(s0)
 664:	feb40713          	addi	a4,s0,-21
 668:	fec42783          	lw	a5,-20(s0)
 66c:	4605                	li	a2,1
 66e:	85ba                	mv	a1,a4
 670:	853e                	mv	a0,a5
 672:	00000097          	auipc	ra,0x0
 676:	f5c080e7          	jalr	-164(ra) # 5ce <write>
 67a:	0001                	nop
 67c:	60e2                	ld	ra,24(sp)
 67e:	6442                	ld	s0,16(sp)
 680:	6105                	addi	sp,sp,32
 682:	8082                	ret

0000000000000684 <printint>:
 684:	7139                	addi	sp,sp,-64
 686:	fc06                	sd	ra,56(sp)
 688:	f822                	sd	s0,48(sp)
 68a:	0080                	addi	s0,sp,64
 68c:	87aa                	mv	a5,a0
 68e:	8736                	mv	a4,a3
 690:	fcf42623          	sw	a5,-52(s0)
 694:	87ae                	mv	a5,a1
 696:	fcf42423          	sw	a5,-56(s0)
 69a:	87b2                	mv	a5,a2
 69c:	fcf42223          	sw	a5,-60(s0)
 6a0:	87ba                	mv	a5,a4
 6a2:	fcf42023          	sw	a5,-64(s0)
 6a6:	fe042423          	sw	zero,-24(s0)
 6aa:	fc042783          	lw	a5,-64(s0)
 6ae:	2781                	sext.w	a5,a5
 6b0:	c38d                	beqz	a5,6d2 <printint+0x4e>
 6b2:	fc842783          	lw	a5,-56(s0)
 6b6:	2781                	sext.w	a5,a5
 6b8:	0007dd63          	bgez	a5,6d2 <printint+0x4e>
 6bc:	4785                	li	a5,1
 6be:	fef42423          	sw	a5,-24(s0)
 6c2:	fc842783          	lw	a5,-56(s0)
 6c6:	40f007bb          	negw	a5,a5
 6ca:	2781                	sext.w	a5,a5
 6cc:	fef42223          	sw	a5,-28(s0)
 6d0:	a029                	j	6da <printint+0x56>
 6d2:	fc842783          	lw	a5,-56(s0)
 6d6:	fef42223          	sw	a5,-28(s0)
 6da:	fe042623          	sw	zero,-20(s0)
 6de:	fc442783          	lw	a5,-60(s0)
 6e2:	fe442703          	lw	a4,-28(s0)
 6e6:	02f777bb          	remuw	a5,a4,a5
 6ea:	0007861b          	sext.w	a2,a5
 6ee:	fec42783          	lw	a5,-20(s0)
 6f2:	0017871b          	addiw	a4,a5,1
 6f6:	fee42623          	sw	a4,-20(s0)
 6fa:	00001697          	auipc	a3,0x1
 6fe:	81e68693          	addi	a3,a3,-2018 # f18 <digits>
 702:	02061713          	slli	a4,a2,0x20
 706:	9301                	srli	a4,a4,0x20
 708:	9736                	add	a4,a4,a3
 70a:	00074703          	lbu	a4,0(a4)
 70e:	ff040693          	addi	a3,s0,-16
 712:	97b6                	add	a5,a5,a3
 714:	fee78023          	sb	a4,-32(a5)
 718:	fc442783          	lw	a5,-60(s0)
 71c:	fe442703          	lw	a4,-28(s0)
 720:	02f757bb          	divuw	a5,a4,a5
 724:	fef42223          	sw	a5,-28(s0)
 728:	fe442783          	lw	a5,-28(s0)
 72c:	2781                	sext.w	a5,a5
 72e:	fbc5                	bnez	a5,6de <printint+0x5a>
 730:	fe842783          	lw	a5,-24(s0)
 734:	2781                	sext.w	a5,a5
 736:	cf95                	beqz	a5,772 <printint+0xee>
 738:	fec42783          	lw	a5,-20(s0)
 73c:	0017871b          	addiw	a4,a5,1
 740:	fee42623          	sw	a4,-20(s0)
 744:	ff040713          	addi	a4,s0,-16
 748:	97ba                	add	a5,a5,a4
 74a:	02d00713          	li	a4,45
 74e:	fee78023          	sb	a4,-32(a5)
 752:	a005                	j	772 <printint+0xee>
 754:	fec42783          	lw	a5,-20(s0)
 758:	ff040713          	addi	a4,s0,-16
 75c:	97ba                	add	a5,a5,a4
 75e:	fe07c703          	lbu	a4,-32(a5)
 762:	fcc42783          	lw	a5,-52(s0)
 766:	85ba                	mv	a1,a4
 768:	853e                	mv	a0,a5
 76a:	00000097          	auipc	ra,0x0
 76e:	ee4080e7          	jalr	-284(ra) # 64e <putc>
 772:	fec42783          	lw	a5,-20(s0)
 776:	37fd                	addiw	a5,a5,-1
 778:	fef42623          	sw	a5,-20(s0)
 77c:	fec42783          	lw	a5,-20(s0)
 780:	2781                	sext.w	a5,a5
 782:	fc07d9e3          	bgez	a5,754 <printint+0xd0>
 786:	0001                	nop
 788:	0001                	nop
 78a:	70e2                	ld	ra,56(sp)
 78c:	7442                	ld	s0,48(sp)
 78e:	6121                	addi	sp,sp,64
 790:	8082                	ret

0000000000000792 <printptr>:
 792:	7179                	addi	sp,sp,-48
 794:	f406                	sd	ra,40(sp)
 796:	f022                	sd	s0,32(sp)
 798:	1800                	addi	s0,sp,48
 79a:	87aa                	mv	a5,a0
 79c:	fcb43823          	sd	a1,-48(s0)
 7a0:	fcf42e23          	sw	a5,-36(s0)
 7a4:	fdc42783          	lw	a5,-36(s0)
 7a8:	03000593          	li	a1,48
 7ac:	853e                	mv	a0,a5
 7ae:	00000097          	auipc	ra,0x0
 7b2:	ea0080e7          	jalr	-352(ra) # 64e <putc>
 7b6:	fdc42783          	lw	a5,-36(s0)
 7ba:	07800593          	li	a1,120
 7be:	853e                	mv	a0,a5
 7c0:	00000097          	auipc	ra,0x0
 7c4:	e8e080e7          	jalr	-370(ra) # 64e <putc>
 7c8:	fe042623          	sw	zero,-20(s0)
 7cc:	a82d                	j	806 <printptr+0x74>
 7ce:	fd043783          	ld	a5,-48(s0)
 7d2:	93f1                	srli	a5,a5,0x3c
 7d4:	00000717          	auipc	a4,0x0
 7d8:	74470713          	addi	a4,a4,1860 # f18 <digits>
 7dc:	97ba                	add	a5,a5,a4
 7de:	0007c703          	lbu	a4,0(a5)
 7e2:	fdc42783          	lw	a5,-36(s0)
 7e6:	85ba                	mv	a1,a4
 7e8:	853e                	mv	a0,a5
 7ea:	00000097          	auipc	ra,0x0
 7ee:	e64080e7          	jalr	-412(ra) # 64e <putc>
 7f2:	fec42783          	lw	a5,-20(s0)
 7f6:	2785                	addiw	a5,a5,1
 7f8:	fef42623          	sw	a5,-20(s0)
 7fc:	fd043783          	ld	a5,-48(s0)
 800:	0792                	slli	a5,a5,0x4
 802:	fcf43823          	sd	a5,-48(s0)
 806:	fec42783          	lw	a5,-20(s0)
 80a:	873e                	mv	a4,a5
 80c:	47bd                	li	a5,15
 80e:	fce7f0e3          	bgeu	a5,a4,7ce <printptr+0x3c>
 812:	0001                	nop
 814:	0001                	nop
 816:	70a2                	ld	ra,40(sp)
 818:	7402                	ld	s0,32(sp)
 81a:	6145                	addi	sp,sp,48
 81c:	8082                	ret

000000000000081e <vprintf>:
 81e:	715d                	addi	sp,sp,-80
 820:	e486                	sd	ra,72(sp)
 822:	e0a2                	sd	s0,64(sp)
 824:	0880                	addi	s0,sp,80
 826:	87aa                	mv	a5,a0
 828:	fcb43023          	sd	a1,-64(s0)
 82c:	fac43c23          	sd	a2,-72(s0)
 830:	fcf42623          	sw	a5,-52(s0)
 834:	fe042023          	sw	zero,-32(s0)
 838:	fe042223          	sw	zero,-28(s0)
 83c:	a42d                	j	a66 <vprintf+0x248>
 83e:	fe442783          	lw	a5,-28(s0)
 842:	fc043703          	ld	a4,-64(s0)
 846:	97ba                	add	a5,a5,a4
 848:	0007c783          	lbu	a5,0(a5)
 84c:	fcf42e23          	sw	a5,-36(s0)
 850:	fe042783          	lw	a5,-32(s0)
 854:	2781                	sext.w	a5,a5
 856:	eb9d                	bnez	a5,88c <vprintf+0x6e>
 858:	fdc42783          	lw	a5,-36(s0)
 85c:	0007871b          	sext.w	a4,a5
 860:	02500793          	li	a5,37
 864:	00f71763          	bne	a4,a5,872 <vprintf+0x54>
 868:	02500793          	li	a5,37
 86c:	fef42023          	sw	a5,-32(s0)
 870:	a2f5                	j	a5c <vprintf+0x23e>
 872:	fdc42783          	lw	a5,-36(s0)
 876:	0ff7f713          	andi	a4,a5,255
 87a:	fcc42783          	lw	a5,-52(s0)
 87e:	85ba                	mv	a1,a4
 880:	853e                	mv	a0,a5
 882:	00000097          	auipc	ra,0x0
 886:	dcc080e7          	jalr	-564(ra) # 64e <putc>
 88a:	aac9                	j	a5c <vprintf+0x23e>
 88c:	fe042783          	lw	a5,-32(s0)
 890:	0007871b          	sext.w	a4,a5
 894:	02500793          	li	a5,37
 898:	1cf71263          	bne	a4,a5,a5c <vprintf+0x23e>
 89c:	fdc42783          	lw	a5,-36(s0)
 8a0:	0007871b          	sext.w	a4,a5
 8a4:	06400793          	li	a5,100
 8a8:	02f71463          	bne	a4,a5,8d0 <vprintf+0xb2>
 8ac:	fb843783          	ld	a5,-72(s0)
 8b0:	00878713          	addi	a4,a5,8
 8b4:	fae43c23          	sd	a4,-72(s0)
 8b8:	4398                	lw	a4,0(a5)
 8ba:	fcc42783          	lw	a5,-52(s0)
 8be:	4685                	li	a3,1
 8c0:	4629                	li	a2,10
 8c2:	85ba                	mv	a1,a4
 8c4:	853e                	mv	a0,a5
 8c6:	00000097          	auipc	ra,0x0
 8ca:	dbe080e7          	jalr	-578(ra) # 684 <printint>
 8ce:	a269                	j	a58 <vprintf+0x23a>
 8d0:	fdc42783          	lw	a5,-36(s0)
 8d4:	0007871b          	sext.w	a4,a5
 8d8:	06c00793          	li	a5,108
 8dc:	02f71663          	bne	a4,a5,908 <vprintf+0xea>
 8e0:	fb843783          	ld	a5,-72(s0)
 8e4:	00878713          	addi	a4,a5,8
 8e8:	fae43c23          	sd	a4,-72(s0)
 8ec:	639c                	ld	a5,0(a5)
 8ee:	0007871b          	sext.w	a4,a5
 8f2:	fcc42783          	lw	a5,-52(s0)
 8f6:	4681                	li	a3,0
 8f8:	4629                	li	a2,10
 8fa:	85ba                	mv	a1,a4
 8fc:	853e                	mv	a0,a5
 8fe:	00000097          	auipc	ra,0x0
 902:	d86080e7          	jalr	-634(ra) # 684 <printint>
 906:	aa89                	j	a58 <vprintf+0x23a>
 908:	fdc42783          	lw	a5,-36(s0)
 90c:	0007871b          	sext.w	a4,a5
 910:	07800793          	li	a5,120
 914:	02f71463          	bne	a4,a5,93c <vprintf+0x11e>
 918:	fb843783          	ld	a5,-72(s0)
 91c:	00878713          	addi	a4,a5,8
 920:	fae43c23          	sd	a4,-72(s0)
 924:	4398                	lw	a4,0(a5)
 926:	fcc42783          	lw	a5,-52(s0)
 92a:	4681                	li	a3,0
 92c:	4641                	li	a2,16
 92e:	85ba                	mv	a1,a4
 930:	853e                	mv	a0,a5
 932:	00000097          	auipc	ra,0x0
 936:	d52080e7          	jalr	-686(ra) # 684 <printint>
 93a:	aa39                	j	a58 <vprintf+0x23a>
 93c:	fdc42783          	lw	a5,-36(s0)
 940:	0007871b          	sext.w	a4,a5
 944:	07000793          	li	a5,112
 948:	02f71263          	bne	a4,a5,96c <vprintf+0x14e>
 94c:	fb843783          	ld	a5,-72(s0)
 950:	00878713          	addi	a4,a5,8
 954:	fae43c23          	sd	a4,-72(s0)
 958:	6398                	ld	a4,0(a5)
 95a:	fcc42783          	lw	a5,-52(s0)
 95e:	85ba                	mv	a1,a4
 960:	853e                	mv	a0,a5
 962:	00000097          	auipc	ra,0x0
 966:	e30080e7          	jalr	-464(ra) # 792 <printptr>
 96a:	a0fd                	j	a58 <vprintf+0x23a>
 96c:	fdc42783          	lw	a5,-36(s0)
 970:	0007871b          	sext.w	a4,a5
 974:	07300793          	li	a5,115
 978:	04f71c63          	bne	a4,a5,9d0 <vprintf+0x1b2>
 97c:	fb843783          	ld	a5,-72(s0)
 980:	00878713          	addi	a4,a5,8
 984:	fae43c23          	sd	a4,-72(s0)
 988:	639c                	ld	a5,0(a5)
 98a:	fef43423          	sd	a5,-24(s0)
 98e:	fe843783          	ld	a5,-24(s0)
 992:	eb8d                	bnez	a5,9c4 <vprintf+0x1a6>
 994:	00000797          	auipc	a5,0x0
 998:	56c78793          	addi	a5,a5,1388 # f00 <longjmp_1+0x82>
 99c:	fef43423          	sd	a5,-24(s0)
 9a0:	a015                	j	9c4 <vprintf+0x1a6>
 9a2:	fe843783          	ld	a5,-24(s0)
 9a6:	0007c703          	lbu	a4,0(a5)
 9aa:	fcc42783          	lw	a5,-52(s0)
 9ae:	85ba                	mv	a1,a4
 9b0:	853e                	mv	a0,a5
 9b2:	00000097          	auipc	ra,0x0
 9b6:	c9c080e7          	jalr	-868(ra) # 64e <putc>
 9ba:	fe843783          	ld	a5,-24(s0)
 9be:	0785                	addi	a5,a5,1
 9c0:	fef43423          	sd	a5,-24(s0)
 9c4:	fe843783          	ld	a5,-24(s0)
 9c8:	0007c783          	lbu	a5,0(a5)
 9cc:	fbf9                	bnez	a5,9a2 <vprintf+0x184>
 9ce:	a069                	j	a58 <vprintf+0x23a>
 9d0:	fdc42783          	lw	a5,-36(s0)
 9d4:	0007871b          	sext.w	a4,a5
 9d8:	06300793          	li	a5,99
 9dc:	02f71463          	bne	a4,a5,a04 <vprintf+0x1e6>
 9e0:	fb843783          	ld	a5,-72(s0)
 9e4:	00878713          	addi	a4,a5,8
 9e8:	fae43c23          	sd	a4,-72(s0)
 9ec:	439c                	lw	a5,0(a5)
 9ee:	0ff7f713          	andi	a4,a5,255
 9f2:	fcc42783          	lw	a5,-52(s0)
 9f6:	85ba                	mv	a1,a4
 9f8:	853e                	mv	a0,a5
 9fa:	00000097          	auipc	ra,0x0
 9fe:	c54080e7          	jalr	-940(ra) # 64e <putc>
 a02:	a899                	j	a58 <vprintf+0x23a>
 a04:	fdc42783          	lw	a5,-36(s0)
 a08:	0007871b          	sext.w	a4,a5
 a0c:	02500793          	li	a5,37
 a10:	00f71f63          	bne	a4,a5,a2e <vprintf+0x210>
 a14:	fdc42783          	lw	a5,-36(s0)
 a18:	0ff7f713          	andi	a4,a5,255
 a1c:	fcc42783          	lw	a5,-52(s0)
 a20:	85ba                	mv	a1,a4
 a22:	853e                	mv	a0,a5
 a24:	00000097          	auipc	ra,0x0
 a28:	c2a080e7          	jalr	-982(ra) # 64e <putc>
 a2c:	a035                	j	a58 <vprintf+0x23a>
 a2e:	fcc42783          	lw	a5,-52(s0)
 a32:	02500593          	li	a1,37
 a36:	853e                	mv	a0,a5
 a38:	00000097          	auipc	ra,0x0
 a3c:	c16080e7          	jalr	-1002(ra) # 64e <putc>
 a40:	fdc42783          	lw	a5,-36(s0)
 a44:	0ff7f713          	andi	a4,a5,255
 a48:	fcc42783          	lw	a5,-52(s0)
 a4c:	85ba                	mv	a1,a4
 a4e:	853e                	mv	a0,a5
 a50:	00000097          	auipc	ra,0x0
 a54:	bfe080e7          	jalr	-1026(ra) # 64e <putc>
 a58:	fe042023          	sw	zero,-32(s0)
 a5c:	fe442783          	lw	a5,-28(s0)
 a60:	2785                	addiw	a5,a5,1
 a62:	fef42223          	sw	a5,-28(s0)
 a66:	fe442783          	lw	a5,-28(s0)
 a6a:	fc043703          	ld	a4,-64(s0)
 a6e:	97ba                	add	a5,a5,a4
 a70:	0007c783          	lbu	a5,0(a5)
 a74:	dc0795e3          	bnez	a5,83e <vprintf+0x20>
 a78:	0001                	nop
 a7a:	0001                	nop
 a7c:	60a6                	ld	ra,72(sp)
 a7e:	6406                	ld	s0,64(sp)
 a80:	6161                	addi	sp,sp,80
 a82:	8082                	ret

0000000000000a84 <fprintf>:
 a84:	7159                	addi	sp,sp,-112
 a86:	fc06                	sd	ra,56(sp)
 a88:	f822                	sd	s0,48(sp)
 a8a:	0080                	addi	s0,sp,64
 a8c:	fcb43823          	sd	a1,-48(s0)
 a90:	e010                	sd	a2,0(s0)
 a92:	e414                	sd	a3,8(s0)
 a94:	e818                	sd	a4,16(s0)
 a96:	ec1c                	sd	a5,24(s0)
 a98:	03043023          	sd	a6,32(s0)
 a9c:	03143423          	sd	a7,40(s0)
 aa0:	87aa                	mv	a5,a0
 aa2:	fcf42e23          	sw	a5,-36(s0)
 aa6:	03040793          	addi	a5,s0,48
 aaa:	fcf43423          	sd	a5,-56(s0)
 aae:	fc843783          	ld	a5,-56(s0)
 ab2:	fd078793          	addi	a5,a5,-48
 ab6:	fef43423          	sd	a5,-24(s0)
 aba:	fe843703          	ld	a4,-24(s0)
 abe:	fdc42783          	lw	a5,-36(s0)
 ac2:	863a                	mv	a2,a4
 ac4:	fd043583          	ld	a1,-48(s0)
 ac8:	853e                	mv	a0,a5
 aca:	00000097          	auipc	ra,0x0
 ace:	d54080e7          	jalr	-684(ra) # 81e <vprintf>
 ad2:	0001                	nop
 ad4:	70e2                	ld	ra,56(sp)
 ad6:	7442                	ld	s0,48(sp)
 ad8:	6165                	addi	sp,sp,112
 ada:	8082                	ret

0000000000000adc <printf>:
 adc:	7159                	addi	sp,sp,-112
 ade:	f406                	sd	ra,40(sp)
 ae0:	f022                	sd	s0,32(sp)
 ae2:	1800                	addi	s0,sp,48
 ae4:	fca43c23          	sd	a0,-40(s0)
 ae8:	e40c                	sd	a1,8(s0)
 aea:	e810                	sd	a2,16(s0)
 aec:	ec14                	sd	a3,24(s0)
 aee:	f018                	sd	a4,32(s0)
 af0:	f41c                	sd	a5,40(s0)
 af2:	03043823          	sd	a6,48(s0)
 af6:	03143c23          	sd	a7,56(s0)
 afa:	04040793          	addi	a5,s0,64
 afe:	fcf43823          	sd	a5,-48(s0)
 b02:	fd043783          	ld	a5,-48(s0)
 b06:	fc878793          	addi	a5,a5,-56
 b0a:	fef43423          	sd	a5,-24(s0)
 b0e:	fe843783          	ld	a5,-24(s0)
 b12:	863e                	mv	a2,a5
 b14:	fd843583          	ld	a1,-40(s0)
 b18:	4505                	li	a0,1
 b1a:	00000097          	auipc	ra,0x0
 b1e:	d04080e7          	jalr	-764(ra) # 81e <vprintf>
 b22:	0001                	nop
 b24:	70a2                	ld	ra,40(sp)
 b26:	7402                	ld	s0,32(sp)
 b28:	6165                	addi	sp,sp,112
 b2a:	8082                	ret

0000000000000b2c <free>:
 b2c:	7179                	addi	sp,sp,-48
 b2e:	f422                	sd	s0,40(sp)
 b30:	1800                	addi	s0,sp,48
 b32:	fca43c23          	sd	a0,-40(s0)
 b36:	fd843783          	ld	a5,-40(s0)
 b3a:	17c1                	addi	a5,a5,-16
 b3c:	fef43023          	sd	a5,-32(s0)
 b40:	00000797          	auipc	a5,0x0
 b44:	40078793          	addi	a5,a5,1024 # f40 <freep>
 b48:	639c                	ld	a5,0(a5)
 b4a:	fef43423          	sd	a5,-24(s0)
 b4e:	a815                	j	b82 <free+0x56>
 b50:	fe843783          	ld	a5,-24(s0)
 b54:	639c                	ld	a5,0(a5)
 b56:	fe843703          	ld	a4,-24(s0)
 b5a:	00f76f63          	bltu	a4,a5,b78 <free+0x4c>
 b5e:	fe043703          	ld	a4,-32(s0)
 b62:	fe843783          	ld	a5,-24(s0)
 b66:	02e7eb63          	bltu	a5,a4,b9c <free+0x70>
 b6a:	fe843783          	ld	a5,-24(s0)
 b6e:	639c                	ld	a5,0(a5)
 b70:	fe043703          	ld	a4,-32(s0)
 b74:	02f76463          	bltu	a4,a5,b9c <free+0x70>
 b78:	fe843783          	ld	a5,-24(s0)
 b7c:	639c                	ld	a5,0(a5)
 b7e:	fef43423          	sd	a5,-24(s0)
 b82:	fe043703          	ld	a4,-32(s0)
 b86:	fe843783          	ld	a5,-24(s0)
 b8a:	fce7f3e3          	bgeu	a5,a4,b50 <free+0x24>
 b8e:	fe843783          	ld	a5,-24(s0)
 b92:	639c                	ld	a5,0(a5)
 b94:	fe043703          	ld	a4,-32(s0)
 b98:	faf77ce3          	bgeu	a4,a5,b50 <free+0x24>
 b9c:	fe043783          	ld	a5,-32(s0)
 ba0:	479c                	lw	a5,8(a5)
 ba2:	1782                	slli	a5,a5,0x20
 ba4:	9381                	srli	a5,a5,0x20
 ba6:	0792                	slli	a5,a5,0x4
 ba8:	fe043703          	ld	a4,-32(s0)
 bac:	973e                	add	a4,a4,a5
 bae:	fe843783          	ld	a5,-24(s0)
 bb2:	639c                	ld	a5,0(a5)
 bb4:	02f71763          	bne	a4,a5,be2 <free+0xb6>
 bb8:	fe043783          	ld	a5,-32(s0)
 bbc:	4798                	lw	a4,8(a5)
 bbe:	fe843783          	ld	a5,-24(s0)
 bc2:	639c                	ld	a5,0(a5)
 bc4:	479c                	lw	a5,8(a5)
 bc6:	9fb9                	addw	a5,a5,a4
 bc8:	0007871b          	sext.w	a4,a5
 bcc:	fe043783          	ld	a5,-32(s0)
 bd0:	c798                	sw	a4,8(a5)
 bd2:	fe843783          	ld	a5,-24(s0)
 bd6:	639c                	ld	a5,0(a5)
 bd8:	6398                	ld	a4,0(a5)
 bda:	fe043783          	ld	a5,-32(s0)
 bde:	e398                	sd	a4,0(a5)
 be0:	a039                	j	bee <free+0xc2>
 be2:	fe843783          	ld	a5,-24(s0)
 be6:	6398                	ld	a4,0(a5)
 be8:	fe043783          	ld	a5,-32(s0)
 bec:	e398                	sd	a4,0(a5)
 bee:	fe843783          	ld	a5,-24(s0)
 bf2:	479c                	lw	a5,8(a5)
 bf4:	1782                	slli	a5,a5,0x20
 bf6:	9381                	srli	a5,a5,0x20
 bf8:	0792                	slli	a5,a5,0x4
 bfa:	fe843703          	ld	a4,-24(s0)
 bfe:	97ba                	add	a5,a5,a4
 c00:	fe043703          	ld	a4,-32(s0)
 c04:	02f71563          	bne	a4,a5,c2e <free+0x102>
 c08:	fe843783          	ld	a5,-24(s0)
 c0c:	4798                	lw	a4,8(a5)
 c0e:	fe043783          	ld	a5,-32(s0)
 c12:	479c                	lw	a5,8(a5)
 c14:	9fb9                	addw	a5,a5,a4
 c16:	0007871b          	sext.w	a4,a5
 c1a:	fe843783          	ld	a5,-24(s0)
 c1e:	c798                	sw	a4,8(a5)
 c20:	fe043783          	ld	a5,-32(s0)
 c24:	6398                	ld	a4,0(a5)
 c26:	fe843783          	ld	a5,-24(s0)
 c2a:	e398                	sd	a4,0(a5)
 c2c:	a031                	j	c38 <free+0x10c>
 c2e:	fe843783          	ld	a5,-24(s0)
 c32:	fe043703          	ld	a4,-32(s0)
 c36:	e398                	sd	a4,0(a5)
 c38:	00000797          	auipc	a5,0x0
 c3c:	30878793          	addi	a5,a5,776 # f40 <freep>
 c40:	fe843703          	ld	a4,-24(s0)
 c44:	e398                	sd	a4,0(a5)
 c46:	0001                	nop
 c48:	7422                	ld	s0,40(sp)
 c4a:	6145                	addi	sp,sp,48
 c4c:	8082                	ret

0000000000000c4e <morecore>:
 c4e:	7179                	addi	sp,sp,-48
 c50:	f406                	sd	ra,40(sp)
 c52:	f022                	sd	s0,32(sp)
 c54:	1800                	addi	s0,sp,48
 c56:	87aa                	mv	a5,a0
 c58:	fcf42e23          	sw	a5,-36(s0)
 c5c:	fdc42783          	lw	a5,-36(s0)
 c60:	0007871b          	sext.w	a4,a5
 c64:	6785                	lui	a5,0x1
 c66:	00f77563          	bgeu	a4,a5,c70 <morecore+0x22>
 c6a:	6785                	lui	a5,0x1
 c6c:	fcf42e23          	sw	a5,-36(s0)
 c70:	fdc42783          	lw	a5,-36(s0)
 c74:	0047979b          	slliw	a5,a5,0x4
 c78:	2781                	sext.w	a5,a5
 c7a:	2781                	sext.w	a5,a5
 c7c:	853e                	mv	a0,a5
 c7e:	00000097          	auipc	ra,0x0
 c82:	9b8080e7          	jalr	-1608(ra) # 636 <sbrk>
 c86:	fea43423          	sd	a0,-24(s0)
 c8a:	fe843703          	ld	a4,-24(s0)
 c8e:	57fd                	li	a5,-1
 c90:	00f71463          	bne	a4,a5,c98 <morecore+0x4a>
 c94:	4781                	li	a5,0
 c96:	a03d                	j	cc4 <morecore+0x76>
 c98:	fe843783          	ld	a5,-24(s0)
 c9c:	fef43023          	sd	a5,-32(s0)
 ca0:	fe043783          	ld	a5,-32(s0)
 ca4:	fdc42703          	lw	a4,-36(s0)
 ca8:	c798                	sw	a4,8(a5)
 caa:	fe043783          	ld	a5,-32(s0)
 cae:	07c1                	addi	a5,a5,16
 cb0:	853e                	mv	a0,a5
 cb2:	00000097          	auipc	ra,0x0
 cb6:	e7a080e7          	jalr	-390(ra) # b2c <free>
 cba:	00000797          	auipc	a5,0x0
 cbe:	28678793          	addi	a5,a5,646 # f40 <freep>
 cc2:	639c                	ld	a5,0(a5)
 cc4:	853e                	mv	a0,a5
 cc6:	70a2                	ld	ra,40(sp)
 cc8:	7402                	ld	s0,32(sp)
 cca:	6145                	addi	sp,sp,48
 ccc:	8082                	ret

0000000000000cce <malloc>:
 cce:	7139                	addi	sp,sp,-64
 cd0:	fc06                	sd	ra,56(sp)
 cd2:	f822                	sd	s0,48(sp)
 cd4:	0080                	addi	s0,sp,64
 cd6:	87aa                	mv	a5,a0
 cd8:	fcf42623          	sw	a5,-52(s0)
 cdc:	fcc46783          	lwu	a5,-52(s0)
 ce0:	07bd                	addi	a5,a5,15
 ce2:	8391                	srli	a5,a5,0x4
 ce4:	2781                	sext.w	a5,a5
 ce6:	2785                	addiw	a5,a5,1
 ce8:	fcf42e23          	sw	a5,-36(s0)
 cec:	00000797          	auipc	a5,0x0
 cf0:	25478793          	addi	a5,a5,596 # f40 <freep>
 cf4:	639c                	ld	a5,0(a5)
 cf6:	fef43023          	sd	a5,-32(s0)
 cfa:	fe043783          	ld	a5,-32(s0)
 cfe:	ef95                	bnez	a5,d3a <malloc+0x6c>
 d00:	00000797          	auipc	a5,0x0
 d04:	23078793          	addi	a5,a5,560 # f30 <base>
 d08:	fef43023          	sd	a5,-32(s0)
 d0c:	00000797          	auipc	a5,0x0
 d10:	23478793          	addi	a5,a5,564 # f40 <freep>
 d14:	fe043703          	ld	a4,-32(s0)
 d18:	e398                	sd	a4,0(a5)
 d1a:	00000797          	auipc	a5,0x0
 d1e:	22678793          	addi	a5,a5,550 # f40 <freep>
 d22:	6398                	ld	a4,0(a5)
 d24:	00000797          	auipc	a5,0x0
 d28:	20c78793          	addi	a5,a5,524 # f30 <base>
 d2c:	e398                	sd	a4,0(a5)
 d2e:	00000797          	auipc	a5,0x0
 d32:	20278793          	addi	a5,a5,514 # f30 <base>
 d36:	0007a423          	sw	zero,8(a5)
 d3a:	fe043783          	ld	a5,-32(s0)
 d3e:	639c                	ld	a5,0(a5)
 d40:	fef43423          	sd	a5,-24(s0)
 d44:	fe843783          	ld	a5,-24(s0)
 d48:	4798                	lw	a4,8(a5)
 d4a:	fdc42783          	lw	a5,-36(s0)
 d4e:	2781                	sext.w	a5,a5
 d50:	06f76863          	bltu	a4,a5,dc0 <malloc+0xf2>
 d54:	fe843783          	ld	a5,-24(s0)
 d58:	4798                	lw	a4,8(a5)
 d5a:	fdc42783          	lw	a5,-36(s0)
 d5e:	2781                	sext.w	a5,a5
 d60:	00e79963          	bne	a5,a4,d72 <malloc+0xa4>
 d64:	fe843783          	ld	a5,-24(s0)
 d68:	6398                	ld	a4,0(a5)
 d6a:	fe043783          	ld	a5,-32(s0)
 d6e:	e398                	sd	a4,0(a5)
 d70:	a82d                	j	daa <malloc+0xdc>
 d72:	fe843783          	ld	a5,-24(s0)
 d76:	4798                	lw	a4,8(a5)
 d78:	fdc42783          	lw	a5,-36(s0)
 d7c:	40f707bb          	subw	a5,a4,a5
 d80:	0007871b          	sext.w	a4,a5
 d84:	fe843783          	ld	a5,-24(s0)
 d88:	c798                	sw	a4,8(a5)
 d8a:	fe843783          	ld	a5,-24(s0)
 d8e:	479c                	lw	a5,8(a5)
 d90:	1782                	slli	a5,a5,0x20
 d92:	9381                	srli	a5,a5,0x20
 d94:	0792                	slli	a5,a5,0x4
 d96:	fe843703          	ld	a4,-24(s0)
 d9a:	97ba                	add	a5,a5,a4
 d9c:	fef43423          	sd	a5,-24(s0)
 da0:	fe843783          	ld	a5,-24(s0)
 da4:	fdc42703          	lw	a4,-36(s0)
 da8:	c798                	sw	a4,8(a5)
 daa:	00000797          	auipc	a5,0x0
 dae:	19678793          	addi	a5,a5,406 # f40 <freep>
 db2:	fe043703          	ld	a4,-32(s0)
 db6:	e398                	sd	a4,0(a5)
 db8:	fe843783          	ld	a5,-24(s0)
 dbc:	07c1                	addi	a5,a5,16
 dbe:	a091                	j	e02 <malloc+0x134>
 dc0:	00000797          	auipc	a5,0x0
 dc4:	18078793          	addi	a5,a5,384 # f40 <freep>
 dc8:	639c                	ld	a5,0(a5)
 dca:	fe843703          	ld	a4,-24(s0)
 dce:	02f71063          	bne	a4,a5,dee <malloc+0x120>
 dd2:	fdc42783          	lw	a5,-36(s0)
 dd6:	853e                	mv	a0,a5
 dd8:	00000097          	auipc	ra,0x0
 ddc:	e76080e7          	jalr	-394(ra) # c4e <morecore>
 de0:	fea43423          	sd	a0,-24(s0)
 de4:	fe843783          	ld	a5,-24(s0)
 de8:	e399                	bnez	a5,dee <malloc+0x120>
 dea:	4781                	li	a5,0
 dec:	a819                	j	e02 <malloc+0x134>
 dee:	fe843783          	ld	a5,-24(s0)
 df2:	fef43023          	sd	a5,-32(s0)
 df6:	fe843783          	ld	a5,-24(s0)
 dfa:	639c                	ld	a5,0(a5)
 dfc:	fef43423          	sd	a5,-24(s0)
 e00:	b791                	j	d44 <malloc+0x76>
 e02:	853e                	mv	a0,a5
 e04:	70e2                	ld	ra,56(sp)
 e06:	7442                	ld	s0,48(sp)
 e08:	6121                	addi	sp,sp,64
 e0a:	8082                	ret

0000000000000e0c <setjmp>:
 e0c:	e100                	sd	s0,0(a0)
 e0e:	e504                	sd	s1,8(a0)
 e10:	01253823          	sd	s2,16(a0)
 e14:	01353c23          	sd	s3,24(a0)
 e18:	03453023          	sd	s4,32(a0)
 e1c:	03553423          	sd	s5,40(a0)
 e20:	03653823          	sd	s6,48(a0)
 e24:	03753c23          	sd	s7,56(a0)
 e28:	05853023          	sd	s8,64(a0)
 e2c:	05953423          	sd	s9,72(a0)
 e30:	05a53823          	sd	s10,80(a0)
 e34:	05b53c23          	sd	s11,88(a0)
 e38:	06153023          	sd	ra,96(a0)
 e3c:	06253423          	sd	sp,104(a0)
 e40:	4501                	li	a0,0
 e42:	8082                	ret

0000000000000e44 <longjmp>:
 e44:	6100                	ld	s0,0(a0)
 e46:	6504                	ld	s1,8(a0)
 e48:	01053903          	ld	s2,16(a0)
 e4c:	01853983          	ld	s3,24(a0)
 e50:	02053a03          	ld	s4,32(a0)
 e54:	02853a83          	ld	s5,40(a0)
 e58:	03053b03          	ld	s6,48(a0)
 e5c:	03853b83          	ld	s7,56(a0)
 e60:	04053c03          	ld	s8,64(a0)
 e64:	04853c83          	ld	s9,72(a0)
 e68:	05053d03          	ld	s10,80(a0)
 e6c:	05853d83          	ld	s11,88(a0)
 e70:	06053083          	ld	ra,96(a0)
 e74:	06853103          	ld	sp,104(a0)
 e78:	c199                	beqz	a1,e7e <longjmp_1>
 e7a:	852e                	mv	a0,a1
 e7c:	8082                	ret

0000000000000e7e <longjmp_1>:
 e7e:	4505                	li	a0,1
 e80:	8082                	ret
