
user/_ln:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	1101                	addi	sp,sp,-32
   2:	ec06                	sd	ra,24(sp)
   4:	e822                	sd	s0,16(sp)
   6:	1000                	addi	s0,sp,32
   8:	87aa                	mv	a5,a0
   a:	feb43023          	sd	a1,-32(s0)
   e:	fef42623          	sw	a5,-20(s0)
  12:	fec42783          	lw	a5,-20(s0)
  16:	0007871b          	sext.w	a4,a5
  1a:	478d                	li	a5,3
  1c:	02f70063          	beq	a4,a5,3c <main+0x3c>
  20:	00001597          	auipc	a1,0x1
  24:	dd858593          	addi	a1,a1,-552 # df8 <longjmp_1+0xa>
  28:	4509                	li	a0,2
  2a:	00001097          	auipc	ra,0x1
  2e:	9ca080e7          	jalr	-1590(ra) # 9f4 <fprintf>
  32:	4505                	li	a0,1
  34:	00000097          	auipc	ra,0x0
  38:	4ea080e7          	jalr	1258(ra) # 51e <exit>
  3c:	fe043783          	ld	a5,-32(s0)
  40:	07a1                	addi	a5,a5,8
  42:	6398                	ld	a4,0(a5)
  44:	fe043783          	ld	a5,-32(s0)
  48:	07c1                	addi	a5,a5,16
  4a:	639c                	ld	a5,0(a5)
  4c:	85be                	mv	a1,a5
  4e:	853a                	mv	a0,a4
  50:	00000097          	auipc	ra,0x0
  54:	52e080e7          	jalr	1326(ra) # 57e <link>
  58:	87aa                	mv	a5,a0
  5a:	0207d563          	bgez	a5,84 <main+0x84>
  5e:	fe043783          	ld	a5,-32(s0)
  62:	07a1                	addi	a5,a5,8
  64:	6398                	ld	a4,0(a5)
  66:	fe043783          	ld	a5,-32(s0)
  6a:	07c1                	addi	a5,a5,16
  6c:	639c                	ld	a5,0(a5)
  6e:	86be                	mv	a3,a5
  70:	863a                	mv	a2,a4
  72:	00001597          	auipc	a1,0x1
  76:	d9e58593          	addi	a1,a1,-610 # e10 <longjmp_1+0x22>
  7a:	4509                	li	a0,2
  7c:	00001097          	auipc	ra,0x1
  80:	978080e7          	jalr	-1672(ra) # 9f4 <fprintf>
  84:	4501                	li	a0,0
  86:	00000097          	auipc	ra,0x0
  8a:	498080e7          	jalr	1176(ra) # 51e <exit>

000000000000008e <strcpy>:
  8e:	7179                	addi	sp,sp,-48
  90:	f422                	sd	s0,40(sp)
  92:	1800                	addi	s0,sp,48
  94:	fca43c23          	sd	a0,-40(s0)
  98:	fcb43823          	sd	a1,-48(s0)
  9c:	fd843783          	ld	a5,-40(s0)
  a0:	fef43423          	sd	a5,-24(s0)
  a4:	0001                	nop
  a6:	fd043703          	ld	a4,-48(s0)
  aa:	00170793          	addi	a5,a4,1
  ae:	fcf43823          	sd	a5,-48(s0)
  b2:	fd843783          	ld	a5,-40(s0)
  b6:	00178693          	addi	a3,a5,1
  ba:	fcd43c23          	sd	a3,-40(s0)
  be:	00074703          	lbu	a4,0(a4)
  c2:	00e78023          	sb	a4,0(a5)
  c6:	0007c783          	lbu	a5,0(a5)
  ca:	fff1                	bnez	a5,a6 <strcpy+0x18>
  cc:	fe843783          	ld	a5,-24(s0)
  d0:	853e                	mv	a0,a5
  d2:	7422                	ld	s0,40(sp)
  d4:	6145                	addi	sp,sp,48
  d6:	8082                	ret

00000000000000d8 <strcmp>:
  d8:	1101                	addi	sp,sp,-32
  da:	ec22                	sd	s0,24(sp)
  dc:	1000                	addi	s0,sp,32
  de:	fea43423          	sd	a0,-24(s0)
  e2:	feb43023          	sd	a1,-32(s0)
  e6:	a819                	j	fc <strcmp+0x24>
  e8:	fe843783          	ld	a5,-24(s0)
  ec:	0785                	addi	a5,a5,1
  ee:	fef43423          	sd	a5,-24(s0)
  f2:	fe043783          	ld	a5,-32(s0)
  f6:	0785                	addi	a5,a5,1
  f8:	fef43023          	sd	a5,-32(s0)
  fc:	fe843783          	ld	a5,-24(s0)
 100:	0007c783          	lbu	a5,0(a5)
 104:	cb99                	beqz	a5,11a <strcmp+0x42>
 106:	fe843783          	ld	a5,-24(s0)
 10a:	0007c703          	lbu	a4,0(a5)
 10e:	fe043783          	ld	a5,-32(s0)
 112:	0007c783          	lbu	a5,0(a5)
 116:	fcf709e3          	beq	a4,a5,e8 <strcmp+0x10>
 11a:	fe843783          	ld	a5,-24(s0)
 11e:	0007c783          	lbu	a5,0(a5)
 122:	0007871b          	sext.w	a4,a5
 126:	fe043783          	ld	a5,-32(s0)
 12a:	0007c783          	lbu	a5,0(a5)
 12e:	2781                	sext.w	a5,a5
 130:	40f707bb          	subw	a5,a4,a5
 134:	2781                	sext.w	a5,a5
 136:	853e                	mv	a0,a5
 138:	6462                	ld	s0,24(sp)
 13a:	6105                	addi	sp,sp,32
 13c:	8082                	ret

000000000000013e <strlen>:
 13e:	7179                	addi	sp,sp,-48
 140:	f422                	sd	s0,40(sp)
 142:	1800                	addi	s0,sp,48
 144:	fca43c23          	sd	a0,-40(s0)
 148:	fe042623          	sw	zero,-20(s0)
 14c:	a031                	j	158 <strlen+0x1a>
 14e:	fec42783          	lw	a5,-20(s0)
 152:	2785                	addiw	a5,a5,1
 154:	fef42623          	sw	a5,-20(s0)
 158:	fec42783          	lw	a5,-20(s0)
 15c:	fd843703          	ld	a4,-40(s0)
 160:	97ba                	add	a5,a5,a4
 162:	0007c783          	lbu	a5,0(a5)
 166:	f7e5                	bnez	a5,14e <strlen+0x10>
 168:	fec42783          	lw	a5,-20(s0)
 16c:	853e                	mv	a0,a5
 16e:	7422                	ld	s0,40(sp)
 170:	6145                	addi	sp,sp,48
 172:	8082                	ret

0000000000000174 <memset>:
 174:	7179                	addi	sp,sp,-48
 176:	f422                	sd	s0,40(sp)
 178:	1800                	addi	s0,sp,48
 17a:	fca43c23          	sd	a0,-40(s0)
 17e:	87ae                	mv	a5,a1
 180:	8732                	mv	a4,a2
 182:	fcf42a23          	sw	a5,-44(s0)
 186:	87ba                	mv	a5,a4
 188:	fcf42823          	sw	a5,-48(s0)
 18c:	fd843783          	ld	a5,-40(s0)
 190:	fef43023          	sd	a5,-32(s0)
 194:	fe042623          	sw	zero,-20(s0)
 198:	a00d                	j	1ba <memset+0x46>
 19a:	fec42783          	lw	a5,-20(s0)
 19e:	fe043703          	ld	a4,-32(s0)
 1a2:	97ba                	add	a5,a5,a4
 1a4:	fd442703          	lw	a4,-44(s0)
 1a8:	0ff77713          	andi	a4,a4,255
 1ac:	00e78023          	sb	a4,0(a5)
 1b0:	fec42783          	lw	a5,-20(s0)
 1b4:	2785                	addiw	a5,a5,1
 1b6:	fef42623          	sw	a5,-20(s0)
 1ba:	fec42703          	lw	a4,-20(s0)
 1be:	fd042783          	lw	a5,-48(s0)
 1c2:	2781                	sext.w	a5,a5
 1c4:	fcf76be3          	bltu	a4,a5,19a <memset+0x26>
 1c8:	fd843783          	ld	a5,-40(s0)
 1cc:	853e                	mv	a0,a5
 1ce:	7422                	ld	s0,40(sp)
 1d0:	6145                	addi	sp,sp,48
 1d2:	8082                	ret

00000000000001d4 <strchr>:
 1d4:	1101                	addi	sp,sp,-32
 1d6:	ec22                	sd	s0,24(sp)
 1d8:	1000                	addi	s0,sp,32
 1da:	fea43423          	sd	a0,-24(s0)
 1de:	87ae                	mv	a5,a1
 1e0:	fef403a3          	sb	a5,-25(s0)
 1e4:	a01d                	j	20a <strchr+0x36>
 1e6:	fe843783          	ld	a5,-24(s0)
 1ea:	0007c703          	lbu	a4,0(a5)
 1ee:	fe744783          	lbu	a5,-25(s0)
 1f2:	0ff7f793          	andi	a5,a5,255
 1f6:	00e79563          	bne	a5,a4,200 <strchr+0x2c>
 1fa:	fe843783          	ld	a5,-24(s0)
 1fe:	a821                	j	216 <strchr+0x42>
 200:	fe843783          	ld	a5,-24(s0)
 204:	0785                	addi	a5,a5,1
 206:	fef43423          	sd	a5,-24(s0)
 20a:	fe843783          	ld	a5,-24(s0)
 20e:	0007c783          	lbu	a5,0(a5)
 212:	fbf1                	bnez	a5,1e6 <strchr+0x12>
 214:	4781                	li	a5,0
 216:	853e                	mv	a0,a5
 218:	6462                	ld	s0,24(sp)
 21a:	6105                	addi	sp,sp,32
 21c:	8082                	ret

000000000000021e <gets>:
 21e:	7179                	addi	sp,sp,-48
 220:	f406                	sd	ra,40(sp)
 222:	f022                	sd	s0,32(sp)
 224:	1800                	addi	s0,sp,48
 226:	fca43c23          	sd	a0,-40(s0)
 22a:	87ae                	mv	a5,a1
 22c:	fcf42a23          	sw	a5,-44(s0)
 230:	fe042623          	sw	zero,-20(s0)
 234:	a8a1                	j	28c <gets+0x6e>
 236:	fe740793          	addi	a5,s0,-25
 23a:	4605                	li	a2,1
 23c:	85be                	mv	a1,a5
 23e:	4501                	li	a0,0
 240:	00000097          	auipc	ra,0x0
 244:	2f6080e7          	jalr	758(ra) # 536 <read>
 248:	87aa                	mv	a5,a0
 24a:	fef42423          	sw	a5,-24(s0)
 24e:	fe842783          	lw	a5,-24(s0)
 252:	2781                	sext.w	a5,a5
 254:	04f05763          	blez	a5,2a2 <gets+0x84>
 258:	fec42783          	lw	a5,-20(s0)
 25c:	0017871b          	addiw	a4,a5,1
 260:	fee42623          	sw	a4,-20(s0)
 264:	873e                	mv	a4,a5
 266:	fd843783          	ld	a5,-40(s0)
 26a:	97ba                	add	a5,a5,a4
 26c:	fe744703          	lbu	a4,-25(s0)
 270:	00e78023          	sb	a4,0(a5)
 274:	fe744783          	lbu	a5,-25(s0)
 278:	873e                	mv	a4,a5
 27a:	47a9                	li	a5,10
 27c:	02f70463          	beq	a4,a5,2a4 <gets+0x86>
 280:	fe744783          	lbu	a5,-25(s0)
 284:	873e                	mv	a4,a5
 286:	47b5                	li	a5,13
 288:	00f70e63          	beq	a4,a5,2a4 <gets+0x86>
 28c:	fec42783          	lw	a5,-20(s0)
 290:	2785                	addiw	a5,a5,1
 292:	0007871b          	sext.w	a4,a5
 296:	fd442783          	lw	a5,-44(s0)
 29a:	2781                	sext.w	a5,a5
 29c:	f8f74de3          	blt	a4,a5,236 <gets+0x18>
 2a0:	a011                	j	2a4 <gets+0x86>
 2a2:	0001                	nop
 2a4:	fec42783          	lw	a5,-20(s0)
 2a8:	fd843703          	ld	a4,-40(s0)
 2ac:	97ba                	add	a5,a5,a4
 2ae:	00078023          	sb	zero,0(a5)
 2b2:	fd843783          	ld	a5,-40(s0)
 2b6:	853e                	mv	a0,a5
 2b8:	70a2                	ld	ra,40(sp)
 2ba:	7402                	ld	s0,32(sp)
 2bc:	6145                	addi	sp,sp,48
 2be:	8082                	ret

00000000000002c0 <stat>:
 2c0:	7179                	addi	sp,sp,-48
 2c2:	f406                	sd	ra,40(sp)
 2c4:	f022                	sd	s0,32(sp)
 2c6:	1800                	addi	s0,sp,48
 2c8:	fca43c23          	sd	a0,-40(s0)
 2cc:	fcb43823          	sd	a1,-48(s0)
 2d0:	4581                	li	a1,0
 2d2:	fd843503          	ld	a0,-40(s0)
 2d6:	00000097          	auipc	ra,0x0
 2da:	288080e7          	jalr	648(ra) # 55e <open>
 2de:	87aa                	mv	a5,a0
 2e0:	fef42623          	sw	a5,-20(s0)
 2e4:	fec42783          	lw	a5,-20(s0)
 2e8:	2781                	sext.w	a5,a5
 2ea:	0007d463          	bgez	a5,2f2 <stat+0x32>
 2ee:	57fd                	li	a5,-1
 2f0:	a035                	j	31c <stat+0x5c>
 2f2:	fec42783          	lw	a5,-20(s0)
 2f6:	fd043583          	ld	a1,-48(s0)
 2fa:	853e                	mv	a0,a5
 2fc:	00000097          	auipc	ra,0x0
 300:	27a080e7          	jalr	634(ra) # 576 <fstat>
 304:	87aa                	mv	a5,a0
 306:	fef42423          	sw	a5,-24(s0)
 30a:	fec42783          	lw	a5,-20(s0)
 30e:	853e                	mv	a0,a5
 310:	00000097          	auipc	ra,0x0
 314:	236080e7          	jalr	566(ra) # 546 <close>
 318:	fe842783          	lw	a5,-24(s0)
 31c:	853e                	mv	a0,a5
 31e:	70a2                	ld	ra,40(sp)
 320:	7402                	ld	s0,32(sp)
 322:	6145                	addi	sp,sp,48
 324:	8082                	ret

0000000000000326 <atoi>:
 326:	7179                	addi	sp,sp,-48
 328:	f422                	sd	s0,40(sp)
 32a:	1800                	addi	s0,sp,48
 32c:	fca43c23          	sd	a0,-40(s0)
 330:	fe042623          	sw	zero,-20(s0)
 334:	a815                	j	368 <atoi+0x42>
 336:	fec42703          	lw	a4,-20(s0)
 33a:	87ba                	mv	a5,a4
 33c:	0027979b          	slliw	a5,a5,0x2
 340:	9fb9                	addw	a5,a5,a4
 342:	0017979b          	slliw	a5,a5,0x1
 346:	0007871b          	sext.w	a4,a5
 34a:	fd843783          	ld	a5,-40(s0)
 34e:	00178693          	addi	a3,a5,1
 352:	fcd43c23          	sd	a3,-40(s0)
 356:	0007c783          	lbu	a5,0(a5)
 35a:	2781                	sext.w	a5,a5
 35c:	9fb9                	addw	a5,a5,a4
 35e:	2781                	sext.w	a5,a5
 360:	fd07879b          	addiw	a5,a5,-48
 364:	fef42623          	sw	a5,-20(s0)
 368:	fd843783          	ld	a5,-40(s0)
 36c:	0007c783          	lbu	a5,0(a5)
 370:	873e                	mv	a4,a5
 372:	02f00793          	li	a5,47
 376:	00e7fb63          	bgeu	a5,a4,38c <atoi+0x66>
 37a:	fd843783          	ld	a5,-40(s0)
 37e:	0007c783          	lbu	a5,0(a5)
 382:	873e                	mv	a4,a5
 384:	03900793          	li	a5,57
 388:	fae7f7e3          	bgeu	a5,a4,336 <atoi+0x10>
 38c:	fec42783          	lw	a5,-20(s0)
 390:	853e                	mv	a0,a5
 392:	7422                	ld	s0,40(sp)
 394:	6145                	addi	sp,sp,48
 396:	8082                	ret

0000000000000398 <memmove>:
 398:	7139                	addi	sp,sp,-64
 39a:	fc22                	sd	s0,56(sp)
 39c:	0080                	addi	s0,sp,64
 39e:	fca43c23          	sd	a0,-40(s0)
 3a2:	fcb43823          	sd	a1,-48(s0)
 3a6:	87b2                	mv	a5,a2
 3a8:	fcf42623          	sw	a5,-52(s0)
 3ac:	fd843783          	ld	a5,-40(s0)
 3b0:	fef43423          	sd	a5,-24(s0)
 3b4:	fd043783          	ld	a5,-48(s0)
 3b8:	fef43023          	sd	a5,-32(s0)
 3bc:	fe043703          	ld	a4,-32(s0)
 3c0:	fe843783          	ld	a5,-24(s0)
 3c4:	02e7fc63          	bgeu	a5,a4,3fc <memmove+0x64>
 3c8:	a00d                	j	3ea <memmove+0x52>
 3ca:	fe043703          	ld	a4,-32(s0)
 3ce:	00170793          	addi	a5,a4,1
 3d2:	fef43023          	sd	a5,-32(s0)
 3d6:	fe843783          	ld	a5,-24(s0)
 3da:	00178693          	addi	a3,a5,1
 3de:	fed43423          	sd	a3,-24(s0)
 3e2:	00074703          	lbu	a4,0(a4)
 3e6:	00e78023          	sb	a4,0(a5)
 3ea:	fcc42783          	lw	a5,-52(s0)
 3ee:	fff7871b          	addiw	a4,a5,-1
 3f2:	fce42623          	sw	a4,-52(s0)
 3f6:	fcf04ae3          	bgtz	a5,3ca <memmove+0x32>
 3fa:	a891                	j	44e <memmove+0xb6>
 3fc:	fcc42783          	lw	a5,-52(s0)
 400:	fe843703          	ld	a4,-24(s0)
 404:	97ba                	add	a5,a5,a4
 406:	fef43423          	sd	a5,-24(s0)
 40a:	fcc42783          	lw	a5,-52(s0)
 40e:	fe043703          	ld	a4,-32(s0)
 412:	97ba                	add	a5,a5,a4
 414:	fef43023          	sd	a5,-32(s0)
 418:	a01d                	j	43e <memmove+0xa6>
 41a:	fe043783          	ld	a5,-32(s0)
 41e:	17fd                	addi	a5,a5,-1
 420:	fef43023          	sd	a5,-32(s0)
 424:	fe843783          	ld	a5,-24(s0)
 428:	17fd                	addi	a5,a5,-1
 42a:	fef43423          	sd	a5,-24(s0)
 42e:	fe043783          	ld	a5,-32(s0)
 432:	0007c703          	lbu	a4,0(a5)
 436:	fe843783          	ld	a5,-24(s0)
 43a:	00e78023          	sb	a4,0(a5)
 43e:	fcc42783          	lw	a5,-52(s0)
 442:	fff7871b          	addiw	a4,a5,-1
 446:	fce42623          	sw	a4,-52(s0)
 44a:	fcf048e3          	bgtz	a5,41a <memmove+0x82>
 44e:	fd843783          	ld	a5,-40(s0)
 452:	853e                	mv	a0,a5
 454:	7462                	ld	s0,56(sp)
 456:	6121                	addi	sp,sp,64
 458:	8082                	ret

000000000000045a <memcmp>:
 45a:	7139                	addi	sp,sp,-64
 45c:	fc22                	sd	s0,56(sp)
 45e:	0080                	addi	s0,sp,64
 460:	fca43c23          	sd	a0,-40(s0)
 464:	fcb43823          	sd	a1,-48(s0)
 468:	87b2                	mv	a5,a2
 46a:	fcf42623          	sw	a5,-52(s0)
 46e:	fd843783          	ld	a5,-40(s0)
 472:	fef43423          	sd	a5,-24(s0)
 476:	fd043783          	ld	a5,-48(s0)
 47a:	fef43023          	sd	a5,-32(s0)
 47e:	a0a1                	j	4c6 <memcmp+0x6c>
 480:	fe843783          	ld	a5,-24(s0)
 484:	0007c703          	lbu	a4,0(a5)
 488:	fe043783          	ld	a5,-32(s0)
 48c:	0007c783          	lbu	a5,0(a5)
 490:	02f70163          	beq	a4,a5,4b2 <memcmp+0x58>
 494:	fe843783          	ld	a5,-24(s0)
 498:	0007c783          	lbu	a5,0(a5)
 49c:	0007871b          	sext.w	a4,a5
 4a0:	fe043783          	ld	a5,-32(s0)
 4a4:	0007c783          	lbu	a5,0(a5)
 4a8:	2781                	sext.w	a5,a5
 4aa:	40f707bb          	subw	a5,a4,a5
 4ae:	2781                	sext.w	a5,a5
 4b0:	a01d                	j	4d6 <memcmp+0x7c>
 4b2:	fe843783          	ld	a5,-24(s0)
 4b6:	0785                	addi	a5,a5,1
 4b8:	fef43423          	sd	a5,-24(s0)
 4bc:	fe043783          	ld	a5,-32(s0)
 4c0:	0785                	addi	a5,a5,1
 4c2:	fef43023          	sd	a5,-32(s0)
 4c6:	fcc42783          	lw	a5,-52(s0)
 4ca:	fff7871b          	addiw	a4,a5,-1
 4ce:	fce42623          	sw	a4,-52(s0)
 4d2:	f7dd                	bnez	a5,480 <memcmp+0x26>
 4d4:	4781                	li	a5,0
 4d6:	853e                	mv	a0,a5
 4d8:	7462                	ld	s0,56(sp)
 4da:	6121                	addi	sp,sp,64
 4dc:	8082                	ret

00000000000004de <memcpy>:
 4de:	7179                	addi	sp,sp,-48
 4e0:	f406                	sd	ra,40(sp)
 4e2:	f022                	sd	s0,32(sp)
 4e4:	1800                	addi	s0,sp,48
 4e6:	fea43423          	sd	a0,-24(s0)
 4ea:	feb43023          	sd	a1,-32(s0)
 4ee:	87b2                	mv	a5,a2
 4f0:	fcf42e23          	sw	a5,-36(s0)
 4f4:	fdc42783          	lw	a5,-36(s0)
 4f8:	863e                	mv	a2,a5
 4fa:	fe043583          	ld	a1,-32(s0)
 4fe:	fe843503          	ld	a0,-24(s0)
 502:	00000097          	auipc	ra,0x0
 506:	e96080e7          	jalr	-362(ra) # 398 <memmove>
 50a:	87aa                	mv	a5,a0
 50c:	853e                	mv	a0,a5
 50e:	70a2                	ld	ra,40(sp)
 510:	7402                	ld	s0,32(sp)
 512:	6145                	addi	sp,sp,48
 514:	8082                	ret

0000000000000516 <fork>:
 516:	4885                	li	a7,1
 518:	00000073          	ecall
 51c:	8082                	ret

000000000000051e <exit>:
 51e:	4889                	li	a7,2
 520:	00000073          	ecall
 524:	8082                	ret

0000000000000526 <wait>:
 526:	488d                	li	a7,3
 528:	00000073          	ecall
 52c:	8082                	ret

000000000000052e <pipe>:
 52e:	4891                	li	a7,4
 530:	00000073          	ecall
 534:	8082                	ret

0000000000000536 <read>:
 536:	4895                	li	a7,5
 538:	00000073          	ecall
 53c:	8082                	ret

000000000000053e <write>:
 53e:	48c1                	li	a7,16
 540:	00000073          	ecall
 544:	8082                	ret

0000000000000546 <close>:
 546:	48d5                	li	a7,21
 548:	00000073          	ecall
 54c:	8082                	ret

000000000000054e <kill>:
 54e:	4899                	li	a7,6
 550:	00000073          	ecall
 554:	8082                	ret

0000000000000556 <exec>:
 556:	489d                	li	a7,7
 558:	00000073          	ecall
 55c:	8082                	ret

000000000000055e <open>:
 55e:	48bd                	li	a7,15
 560:	00000073          	ecall
 564:	8082                	ret

0000000000000566 <mknod>:
 566:	48c5                	li	a7,17
 568:	00000073          	ecall
 56c:	8082                	ret

000000000000056e <unlink>:
 56e:	48c9                	li	a7,18
 570:	00000073          	ecall
 574:	8082                	ret

0000000000000576 <fstat>:
 576:	48a1                	li	a7,8
 578:	00000073          	ecall
 57c:	8082                	ret

000000000000057e <link>:
 57e:	48cd                	li	a7,19
 580:	00000073          	ecall
 584:	8082                	ret

0000000000000586 <mkdir>:
 586:	48d1                	li	a7,20
 588:	00000073          	ecall
 58c:	8082                	ret

000000000000058e <chdir>:
 58e:	48a5                	li	a7,9
 590:	00000073          	ecall
 594:	8082                	ret

0000000000000596 <dup>:
 596:	48a9                	li	a7,10
 598:	00000073          	ecall
 59c:	8082                	ret

000000000000059e <getpid>:
 59e:	48ad                	li	a7,11
 5a0:	00000073          	ecall
 5a4:	8082                	ret

00000000000005a6 <sbrk>:
 5a6:	48b1                	li	a7,12
 5a8:	00000073          	ecall
 5ac:	8082                	ret

00000000000005ae <sleep>:
 5ae:	48b5                	li	a7,13
 5b0:	00000073          	ecall
 5b4:	8082                	ret

00000000000005b6 <uptime>:
 5b6:	48b9                	li	a7,14
 5b8:	00000073          	ecall
 5bc:	8082                	ret

00000000000005be <putc>:
 5be:	1101                	addi	sp,sp,-32
 5c0:	ec06                	sd	ra,24(sp)
 5c2:	e822                	sd	s0,16(sp)
 5c4:	1000                	addi	s0,sp,32
 5c6:	87aa                	mv	a5,a0
 5c8:	872e                	mv	a4,a1
 5ca:	fef42623          	sw	a5,-20(s0)
 5ce:	87ba                	mv	a5,a4
 5d0:	fef405a3          	sb	a5,-21(s0)
 5d4:	feb40713          	addi	a4,s0,-21
 5d8:	fec42783          	lw	a5,-20(s0)
 5dc:	4605                	li	a2,1
 5de:	85ba                	mv	a1,a4
 5e0:	853e                	mv	a0,a5
 5e2:	00000097          	auipc	ra,0x0
 5e6:	f5c080e7          	jalr	-164(ra) # 53e <write>
 5ea:	0001                	nop
 5ec:	60e2                	ld	ra,24(sp)
 5ee:	6442                	ld	s0,16(sp)
 5f0:	6105                	addi	sp,sp,32
 5f2:	8082                	ret

00000000000005f4 <printint>:
 5f4:	7139                	addi	sp,sp,-64
 5f6:	fc06                	sd	ra,56(sp)
 5f8:	f822                	sd	s0,48(sp)
 5fa:	0080                	addi	s0,sp,64
 5fc:	87aa                	mv	a5,a0
 5fe:	8736                	mv	a4,a3
 600:	fcf42623          	sw	a5,-52(s0)
 604:	87ae                	mv	a5,a1
 606:	fcf42423          	sw	a5,-56(s0)
 60a:	87b2                	mv	a5,a2
 60c:	fcf42223          	sw	a5,-60(s0)
 610:	87ba                	mv	a5,a4
 612:	fcf42023          	sw	a5,-64(s0)
 616:	fe042423          	sw	zero,-24(s0)
 61a:	fc042783          	lw	a5,-64(s0)
 61e:	2781                	sext.w	a5,a5
 620:	c38d                	beqz	a5,642 <printint+0x4e>
 622:	fc842783          	lw	a5,-56(s0)
 626:	2781                	sext.w	a5,a5
 628:	0007dd63          	bgez	a5,642 <printint+0x4e>
 62c:	4785                	li	a5,1
 62e:	fef42423          	sw	a5,-24(s0)
 632:	fc842783          	lw	a5,-56(s0)
 636:	40f007bb          	negw	a5,a5
 63a:	2781                	sext.w	a5,a5
 63c:	fef42223          	sw	a5,-28(s0)
 640:	a029                	j	64a <printint+0x56>
 642:	fc842783          	lw	a5,-56(s0)
 646:	fef42223          	sw	a5,-28(s0)
 64a:	fe042623          	sw	zero,-20(s0)
 64e:	fc442783          	lw	a5,-60(s0)
 652:	fe442703          	lw	a4,-28(s0)
 656:	02f777bb          	remuw	a5,a4,a5
 65a:	0007861b          	sext.w	a2,a5
 65e:	fec42783          	lw	a5,-20(s0)
 662:	0017871b          	addiw	a4,a5,1
 666:	fee42623          	sw	a4,-20(s0)
 66a:	00000697          	auipc	a3,0x0
 66e:	7c668693          	addi	a3,a3,1990 # e30 <digits>
 672:	02061713          	slli	a4,a2,0x20
 676:	9301                	srli	a4,a4,0x20
 678:	9736                	add	a4,a4,a3
 67a:	00074703          	lbu	a4,0(a4)
 67e:	ff040693          	addi	a3,s0,-16
 682:	97b6                	add	a5,a5,a3
 684:	fee78023          	sb	a4,-32(a5)
 688:	fc442783          	lw	a5,-60(s0)
 68c:	fe442703          	lw	a4,-28(s0)
 690:	02f757bb          	divuw	a5,a4,a5
 694:	fef42223          	sw	a5,-28(s0)
 698:	fe442783          	lw	a5,-28(s0)
 69c:	2781                	sext.w	a5,a5
 69e:	fbc5                	bnez	a5,64e <printint+0x5a>
 6a0:	fe842783          	lw	a5,-24(s0)
 6a4:	2781                	sext.w	a5,a5
 6a6:	cf95                	beqz	a5,6e2 <printint+0xee>
 6a8:	fec42783          	lw	a5,-20(s0)
 6ac:	0017871b          	addiw	a4,a5,1
 6b0:	fee42623          	sw	a4,-20(s0)
 6b4:	ff040713          	addi	a4,s0,-16
 6b8:	97ba                	add	a5,a5,a4
 6ba:	02d00713          	li	a4,45
 6be:	fee78023          	sb	a4,-32(a5)
 6c2:	a005                	j	6e2 <printint+0xee>
 6c4:	fec42783          	lw	a5,-20(s0)
 6c8:	ff040713          	addi	a4,s0,-16
 6cc:	97ba                	add	a5,a5,a4
 6ce:	fe07c703          	lbu	a4,-32(a5)
 6d2:	fcc42783          	lw	a5,-52(s0)
 6d6:	85ba                	mv	a1,a4
 6d8:	853e                	mv	a0,a5
 6da:	00000097          	auipc	ra,0x0
 6de:	ee4080e7          	jalr	-284(ra) # 5be <putc>
 6e2:	fec42783          	lw	a5,-20(s0)
 6e6:	37fd                	addiw	a5,a5,-1
 6e8:	fef42623          	sw	a5,-20(s0)
 6ec:	fec42783          	lw	a5,-20(s0)
 6f0:	2781                	sext.w	a5,a5
 6f2:	fc07d9e3          	bgez	a5,6c4 <printint+0xd0>
 6f6:	0001                	nop
 6f8:	0001                	nop
 6fa:	70e2                	ld	ra,56(sp)
 6fc:	7442                	ld	s0,48(sp)
 6fe:	6121                	addi	sp,sp,64
 700:	8082                	ret

0000000000000702 <printptr>:
 702:	7179                	addi	sp,sp,-48
 704:	f406                	sd	ra,40(sp)
 706:	f022                	sd	s0,32(sp)
 708:	1800                	addi	s0,sp,48
 70a:	87aa                	mv	a5,a0
 70c:	fcb43823          	sd	a1,-48(s0)
 710:	fcf42e23          	sw	a5,-36(s0)
 714:	fdc42783          	lw	a5,-36(s0)
 718:	03000593          	li	a1,48
 71c:	853e                	mv	a0,a5
 71e:	00000097          	auipc	ra,0x0
 722:	ea0080e7          	jalr	-352(ra) # 5be <putc>
 726:	fdc42783          	lw	a5,-36(s0)
 72a:	07800593          	li	a1,120
 72e:	853e                	mv	a0,a5
 730:	00000097          	auipc	ra,0x0
 734:	e8e080e7          	jalr	-370(ra) # 5be <putc>
 738:	fe042623          	sw	zero,-20(s0)
 73c:	a82d                	j	776 <printptr+0x74>
 73e:	fd043783          	ld	a5,-48(s0)
 742:	93f1                	srli	a5,a5,0x3c
 744:	00000717          	auipc	a4,0x0
 748:	6ec70713          	addi	a4,a4,1772 # e30 <digits>
 74c:	97ba                	add	a5,a5,a4
 74e:	0007c703          	lbu	a4,0(a5)
 752:	fdc42783          	lw	a5,-36(s0)
 756:	85ba                	mv	a1,a4
 758:	853e                	mv	a0,a5
 75a:	00000097          	auipc	ra,0x0
 75e:	e64080e7          	jalr	-412(ra) # 5be <putc>
 762:	fec42783          	lw	a5,-20(s0)
 766:	2785                	addiw	a5,a5,1
 768:	fef42623          	sw	a5,-20(s0)
 76c:	fd043783          	ld	a5,-48(s0)
 770:	0792                	slli	a5,a5,0x4
 772:	fcf43823          	sd	a5,-48(s0)
 776:	fec42783          	lw	a5,-20(s0)
 77a:	873e                	mv	a4,a5
 77c:	47bd                	li	a5,15
 77e:	fce7f0e3          	bgeu	a5,a4,73e <printptr+0x3c>
 782:	0001                	nop
 784:	0001                	nop
 786:	70a2                	ld	ra,40(sp)
 788:	7402                	ld	s0,32(sp)
 78a:	6145                	addi	sp,sp,48
 78c:	8082                	ret

000000000000078e <vprintf>:
 78e:	715d                	addi	sp,sp,-80
 790:	e486                	sd	ra,72(sp)
 792:	e0a2                	sd	s0,64(sp)
 794:	0880                	addi	s0,sp,80
 796:	87aa                	mv	a5,a0
 798:	fcb43023          	sd	a1,-64(s0)
 79c:	fac43c23          	sd	a2,-72(s0)
 7a0:	fcf42623          	sw	a5,-52(s0)
 7a4:	fe042023          	sw	zero,-32(s0)
 7a8:	fe042223          	sw	zero,-28(s0)
 7ac:	a42d                	j	9d6 <vprintf+0x248>
 7ae:	fe442783          	lw	a5,-28(s0)
 7b2:	fc043703          	ld	a4,-64(s0)
 7b6:	97ba                	add	a5,a5,a4
 7b8:	0007c783          	lbu	a5,0(a5)
 7bc:	fcf42e23          	sw	a5,-36(s0)
 7c0:	fe042783          	lw	a5,-32(s0)
 7c4:	2781                	sext.w	a5,a5
 7c6:	eb9d                	bnez	a5,7fc <vprintf+0x6e>
 7c8:	fdc42783          	lw	a5,-36(s0)
 7cc:	0007871b          	sext.w	a4,a5
 7d0:	02500793          	li	a5,37
 7d4:	00f71763          	bne	a4,a5,7e2 <vprintf+0x54>
 7d8:	02500793          	li	a5,37
 7dc:	fef42023          	sw	a5,-32(s0)
 7e0:	a2f5                	j	9cc <vprintf+0x23e>
 7e2:	fdc42783          	lw	a5,-36(s0)
 7e6:	0ff7f713          	andi	a4,a5,255
 7ea:	fcc42783          	lw	a5,-52(s0)
 7ee:	85ba                	mv	a1,a4
 7f0:	853e                	mv	a0,a5
 7f2:	00000097          	auipc	ra,0x0
 7f6:	dcc080e7          	jalr	-564(ra) # 5be <putc>
 7fa:	aac9                	j	9cc <vprintf+0x23e>
 7fc:	fe042783          	lw	a5,-32(s0)
 800:	0007871b          	sext.w	a4,a5
 804:	02500793          	li	a5,37
 808:	1cf71263          	bne	a4,a5,9cc <vprintf+0x23e>
 80c:	fdc42783          	lw	a5,-36(s0)
 810:	0007871b          	sext.w	a4,a5
 814:	06400793          	li	a5,100
 818:	02f71463          	bne	a4,a5,840 <vprintf+0xb2>
 81c:	fb843783          	ld	a5,-72(s0)
 820:	00878713          	addi	a4,a5,8
 824:	fae43c23          	sd	a4,-72(s0)
 828:	4398                	lw	a4,0(a5)
 82a:	fcc42783          	lw	a5,-52(s0)
 82e:	4685                	li	a3,1
 830:	4629                	li	a2,10
 832:	85ba                	mv	a1,a4
 834:	853e                	mv	a0,a5
 836:	00000097          	auipc	ra,0x0
 83a:	dbe080e7          	jalr	-578(ra) # 5f4 <printint>
 83e:	a269                	j	9c8 <vprintf+0x23a>
 840:	fdc42783          	lw	a5,-36(s0)
 844:	0007871b          	sext.w	a4,a5
 848:	06c00793          	li	a5,108
 84c:	02f71663          	bne	a4,a5,878 <vprintf+0xea>
 850:	fb843783          	ld	a5,-72(s0)
 854:	00878713          	addi	a4,a5,8
 858:	fae43c23          	sd	a4,-72(s0)
 85c:	639c                	ld	a5,0(a5)
 85e:	0007871b          	sext.w	a4,a5
 862:	fcc42783          	lw	a5,-52(s0)
 866:	4681                	li	a3,0
 868:	4629                	li	a2,10
 86a:	85ba                	mv	a1,a4
 86c:	853e                	mv	a0,a5
 86e:	00000097          	auipc	ra,0x0
 872:	d86080e7          	jalr	-634(ra) # 5f4 <printint>
 876:	aa89                	j	9c8 <vprintf+0x23a>
 878:	fdc42783          	lw	a5,-36(s0)
 87c:	0007871b          	sext.w	a4,a5
 880:	07800793          	li	a5,120
 884:	02f71463          	bne	a4,a5,8ac <vprintf+0x11e>
 888:	fb843783          	ld	a5,-72(s0)
 88c:	00878713          	addi	a4,a5,8
 890:	fae43c23          	sd	a4,-72(s0)
 894:	4398                	lw	a4,0(a5)
 896:	fcc42783          	lw	a5,-52(s0)
 89a:	4681                	li	a3,0
 89c:	4641                	li	a2,16
 89e:	85ba                	mv	a1,a4
 8a0:	853e                	mv	a0,a5
 8a2:	00000097          	auipc	ra,0x0
 8a6:	d52080e7          	jalr	-686(ra) # 5f4 <printint>
 8aa:	aa39                	j	9c8 <vprintf+0x23a>
 8ac:	fdc42783          	lw	a5,-36(s0)
 8b0:	0007871b          	sext.w	a4,a5
 8b4:	07000793          	li	a5,112
 8b8:	02f71263          	bne	a4,a5,8dc <vprintf+0x14e>
 8bc:	fb843783          	ld	a5,-72(s0)
 8c0:	00878713          	addi	a4,a5,8
 8c4:	fae43c23          	sd	a4,-72(s0)
 8c8:	6398                	ld	a4,0(a5)
 8ca:	fcc42783          	lw	a5,-52(s0)
 8ce:	85ba                	mv	a1,a4
 8d0:	853e                	mv	a0,a5
 8d2:	00000097          	auipc	ra,0x0
 8d6:	e30080e7          	jalr	-464(ra) # 702 <printptr>
 8da:	a0fd                	j	9c8 <vprintf+0x23a>
 8dc:	fdc42783          	lw	a5,-36(s0)
 8e0:	0007871b          	sext.w	a4,a5
 8e4:	07300793          	li	a5,115
 8e8:	04f71c63          	bne	a4,a5,940 <vprintf+0x1b2>
 8ec:	fb843783          	ld	a5,-72(s0)
 8f0:	00878713          	addi	a4,a5,8
 8f4:	fae43c23          	sd	a4,-72(s0)
 8f8:	639c                	ld	a5,0(a5)
 8fa:	fef43423          	sd	a5,-24(s0)
 8fe:	fe843783          	ld	a5,-24(s0)
 902:	eb8d                	bnez	a5,934 <vprintf+0x1a6>
 904:	00000797          	auipc	a5,0x0
 908:	52478793          	addi	a5,a5,1316 # e28 <longjmp_1+0x3a>
 90c:	fef43423          	sd	a5,-24(s0)
 910:	a015                	j	934 <vprintf+0x1a6>
 912:	fe843783          	ld	a5,-24(s0)
 916:	0007c703          	lbu	a4,0(a5)
 91a:	fcc42783          	lw	a5,-52(s0)
 91e:	85ba                	mv	a1,a4
 920:	853e                	mv	a0,a5
 922:	00000097          	auipc	ra,0x0
 926:	c9c080e7          	jalr	-868(ra) # 5be <putc>
 92a:	fe843783          	ld	a5,-24(s0)
 92e:	0785                	addi	a5,a5,1
 930:	fef43423          	sd	a5,-24(s0)
 934:	fe843783          	ld	a5,-24(s0)
 938:	0007c783          	lbu	a5,0(a5)
 93c:	fbf9                	bnez	a5,912 <vprintf+0x184>
 93e:	a069                	j	9c8 <vprintf+0x23a>
 940:	fdc42783          	lw	a5,-36(s0)
 944:	0007871b          	sext.w	a4,a5
 948:	06300793          	li	a5,99
 94c:	02f71463          	bne	a4,a5,974 <vprintf+0x1e6>
 950:	fb843783          	ld	a5,-72(s0)
 954:	00878713          	addi	a4,a5,8
 958:	fae43c23          	sd	a4,-72(s0)
 95c:	439c                	lw	a5,0(a5)
 95e:	0ff7f713          	andi	a4,a5,255
 962:	fcc42783          	lw	a5,-52(s0)
 966:	85ba                	mv	a1,a4
 968:	853e                	mv	a0,a5
 96a:	00000097          	auipc	ra,0x0
 96e:	c54080e7          	jalr	-940(ra) # 5be <putc>
 972:	a899                	j	9c8 <vprintf+0x23a>
 974:	fdc42783          	lw	a5,-36(s0)
 978:	0007871b          	sext.w	a4,a5
 97c:	02500793          	li	a5,37
 980:	00f71f63          	bne	a4,a5,99e <vprintf+0x210>
 984:	fdc42783          	lw	a5,-36(s0)
 988:	0ff7f713          	andi	a4,a5,255
 98c:	fcc42783          	lw	a5,-52(s0)
 990:	85ba                	mv	a1,a4
 992:	853e                	mv	a0,a5
 994:	00000097          	auipc	ra,0x0
 998:	c2a080e7          	jalr	-982(ra) # 5be <putc>
 99c:	a035                	j	9c8 <vprintf+0x23a>
 99e:	fcc42783          	lw	a5,-52(s0)
 9a2:	02500593          	li	a1,37
 9a6:	853e                	mv	a0,a5
 9a8:	00000097          	auipc	ra,0x0
 9ac:	c16080e7          	jalr	-1002(ra) # 5be <putc>
 9b0:	fdc42783          	lw	a5,-36(s0)
 9b4:	0ff7f713          	andi	a4,a5,255
 9b8:	fcc42783          	lw	a5,-52(s0)
 9bc:	85ba                	mv	a1,a4
 9be:	853e                	mv	a0,a5
 9c0:	00000097          	auipc	ra,0x0
 9c4:	bfe080e7          	jalr	-1026(ra) # 5be <putc>
 9c8:	fe042023          	sw	zero,-32(s0)
 9cc:	fe442783          	lw	a5,-28(s0)
 9d0:	2785                	addiw	a5,a5,1
 9d2:	fef42223          	sw	a5,-28(s0)
 9d6:	fe442783          	lw	a5,-28(s0)
 9da:	fc043703          	ld	a4,-64(s0)
 9de:	97ba                	add	a5,a5,a4
 9e0:	0007c783          	lbu	a5,0(a5)
 9e4:	dc0795e3          	bnez	a5,7ae <vprintf+0x20>
 9e8:	0001                	nop
 9ea:	0001                	nop
 9ec:	60a6                	ld	ra,72(sp)
 9ee:	6406                	ld	s0,64(sp)
 9f0:	6161                	addi	sp,sp,80
 9f2:	8082                	ret

00000000000009f4 <fprintf>:
 9f4:	7159                	addi	sp,sp,-112
 9f6:	fc06                	sd	ra,56(sp)
 9f8:	f822                	sd	s0,48(sp)
 9fa:	0080                	addi	s0,sp,64
 9fc:	fcb43823          	sd	a1,-48(s0)
 a00:	e010                	sd	a2,0(s0)
 a02:	e414                	sd	a3,8(s0)
 a04:	e818                	sd	a4,16(s0)
 a06:	ec1c                	sd	a5,24(s0)
 a08:	03043023          	sd	a6,32(s0)
 a0c:	03143423          	sd	a7,40(s0)
 a10:	87aa                	mv	a5,a0
 a12:	fcf42e23          	sw	a5,-36(s0)
 a16:	03040793          	addi	a5,s0,48
 a1a:	fcf43423          	sd	a5,-56(s0)
 a1e:	fc843783          	ld	a5,-56(s0)
 a22:	fd078793          	addi	a5,a5,-48
 a26:	fef43423          	sd	a5,-24(s0)
 a2a:	fe843703          	ld	a4,-24(s0)
 a2e:	fdc42783          	lw	a5,-36(s0)
 a32:	863a                	mv	a2,a4
 a34:	fd043583          	ld	a1,-48(s0)
 a38:	853e                	mv	a0,a5
 a3a:	00000097          	auipc	ra,0x0
 a3e:	d54080e7          	jalr	-684(ra) # 78e <vprintf>
 a42:	0001                	nop
 a44:	70e2                	ld	ra,56(sp)
 a46:	7442                	ld	s0,48(sp)
 a48:	6165                	addi	sp,sp,112
 a4a:	8082                	ret

0000000000000a4c <printf>:
 a4c:	7159                	addi	sp,sp,-112
 a4e:	f406                	sd	ra,40(sp)
 a50:	f022                	sd	s0,32(sp)
 a52:	1800                	addi	s0,sp,48
 a54:	fca43c23          	sd	a0,-40(s0)
 a58:	e40c                	sd	a1,8(s0)
 a5a:	e810                	sd	a2,16(s0)
 a5c:	ec14                	sd	a3,24(s0)
 a5e:	f018                	sd	a4,32(s0)
 a60:	f41c                	sd	a5,40(s0)
 a62:	03043823          	sd	a6,48(s0)
 a66:	03143c23          	sd	a7,56(s0)
 a6a:	04040793          	addi	a5,s0,64
 a6e:	fcf43823          	sd	a5,-48(s0)
 a72:	fd043783          	ld	a5,-48(s0)
 a76:	fc878793          	addi	a5,a5,-56
 a7a:	fef43423          	sd	a5,-24(s0)
 a7e:	fe843783          	ld	a5,-24(s0)
 a82:	863e                	mv	a2,a5
 a84:	fd843583          	ld	a1,-40(s0)
 a88:	4505                	li	a0,1
 a8a:	00000097          	auipc	ra,0x0
 a8e:	d04080e7          	jalr	-764(ra) # 78e <vprintf>
 a92:	0001                	nop
 a94:	70a2                	ld	ra,40(sp)
 a96:	7402                	ld	s0,32(sp)
 a98:	6165                	addi	sp,sp,112
 a9a:	8082                	ret

0000000000000a9c <free>:
 a9c:	7179                	addi	sp,sp,-48
 a9e:	f422                	sd	s0,40(sp)
 aa0:	1800                	addi	s0,sp,48
 aa2:	fca43c23          	sd	a0,-40(s0)
 aa6:	fd843783          	ld	a5,-40(s0)
 aaa:	17c1                	addi	a5,a5,-16
 aac:	fef43023          	sd	a5,-32(s0)
 ab0:	00000797          	auipc	a5,0x0
 ab4:	3a878793          	addi	a5,a5,936 # e58 <freep>
 ab8:	639c                	ld	a5,0(a5)
 aba:	fef43423          	sd	a5,-24(s0)
 abe:	a815                	j	af2 <free+0x56>
 ac0:	fe843783          	ld	a5,-24(s0)
 ac4:	639c                	ld	a5,0(a5)
 ac6:	fe843703          	ld	a4,-24(s0)
 aca:	00f76f63          	bltu	a4,a5,ae8 <free+0x4c>
 ace:	fe043703          	ld	a4,-32(s0)
 ad2:	fe843783          	ld	a5,-24(s0)
 ad6:	02e7eb63          	bltu	a5,a4,b0c <free+0x70>
 ada:	fe843783          	ld	a5,-24(s0)
 ade:	639c                	ld	a5,0(a5)
 ae0:	fe043703          	ld	a4,-32(s0)
 ae4:	02f76463          	bltu	a4,a5,b0c <free+0x70>
 ae8:	fe843783          	ld	a5,-24(s0)
 aec:	639c                	ld	a5,0(a5)
 aee:	fef43423          	sd	a5,-24(s0)
 af2:	fe043703          	ld	a4,-32(s0)
 af6:	fe843783          	ld	a5,-24(s0)
 afa:	fce7f3e3          	bgeu	a5,a4,ac0 <free+0x24>
 afe:	fe843783          	ld	a5,-24(s0)
 b02:	639c                	ld	a5,0(a5)
 b04:	fe043703          	ld	a4,-32(s0)
 b08:	faf77ce3          	bgeu	a4,a5,ac0 <free+0x24>
 b0c:	fe043783          	ld	a5,-32(s0)
 b10:	479c                	lw	a5,8(a5)
 b12:	1782                	slli	a5,a5,0x20
 b14:	9381                	srli	a5,a5,0x20
 b16:	0792                	slli	a5,a5,0x4
 b18:	fe043703          	ld	a4,-32(s0)
 b1c:	973e                	add	a4,a4,a5
 b1e:	fe843783          	ld	a5,-24(s0)
 b22:	639c                	ld	a5,0(a5)
 b24:	02f71763          	bne	a4,a5,b52 <free+0xb6>
 b28:	fe043783          	ld	a5,-32(s0)
 b2c:	4798                	lw	a4,8(a5)
 b2e:	fe843783          	ld	a5,-24(s0)
 b32:	639c                	ld	a5,0(a5)
 b34:	479c                	lw	a5,8(a5)
 b36:	9fb9                	addw	a5,a5,a4
 b38:	0007871b          	sext.w	a4,a5
 b3c:	fe043783          	ld	a5,-32(s0)
 b40:	c798                	sw	a4,8(a5)
 b42:	fe843783          	ld	a5,-24(s0)
 b46:	639c                	ld	a5,0(a5)
 b48:	6398                	ld	a4,0(a5)
 b4a:	fe043783          	ld	a5,-32(s0)
 b4e:	e398                	sd	a4,0(a5)
 b50:	a039                	j	b5e <free+0xc2>
 b52:	fe843783          	ld	a5,-24(s0)
 b56:	6398                	ld	a4,0(a5)
 b58:	fe043783          	ld	a5,-32(s0)
 b5c:	e398                	sd	a4,0(a5)
 b5e:	fe843783          	ld	a5,-24(s0)
 b62:	479c                	lw	a5,8(a5)
 b64:	1782                	slli	a5,a5,0x20
 b66:	9381                	srli	a5,a5,0x20
 b68:	0792                	slli	a5,a5,0x4
 b6a:	fe843703          	ld	a4,-24(s0)
 b6e:	97ba                	add	a5,a5,a4
 b70:	fe043703          	ld	a4,-32(s0)
 b74:	02f71563          	bne	a4,a5,b9e <free+0x102>
 b78:	fe843783          	ld	a5,-24(s0)
 b7c:	4798                	lw	a4,8(a5)
 b7e:	fe043783          	ld	a5,-32(s0)
 b82:	479c                	lw	a5,8(a5)
 b84:	9fb9                	addw	a5,a5,a4
 b86:	0007871b          	sext.w	a4,a5
 b8a:	fe843783          	ld	a5,-24(s0)
 b8e:	c798                	sw	a4,8(a5)
 b90:	fe043783          	ld	a5,-32(s0)
 b94:	6398                	ld	a4,0(a5)
 b96:	fe843783          	ld	a5,-24(s0)
 b9a:	e398                	sd	a4,0(a5)
 b9c:	a031                	j	ba8 <free+0x10c>
 b9e:	fe843783          	ld	a5,-24(s0)
 ba2:	fe043703          	ld	a4,-32(s0)
 ba6:	e398                	sd	a4,0(a5)
 ba8:	00000797          	auipc	a5,0x0
 bac:	2b078793          	addi	a5,a5,688 # e58 <freep>
 bb0:	fe843703          	ld	a4,-24(s0)
 bb4:	e398                	sd	a4,0(a5)
 bb6:	0001                	nop
 bb8:	7422                	ld	s0,40(sp)
 bba:	6145                	addi	sp,sp,48
 bbc:	8082                	ret

0000000000000bbe <morecore>:
 bbe:	7179                	addi	sp,sp,-48
 bc0:	f406                	sd	ra,40(sp)
 bc2:	f022                	sd	s0,32(sp)
 bc4:	1800                	addi	s0,sp,48
 bc6:	87aa                	mv	a5,a0
 bc8:	fcf42e23          	sw	a5,-36(s0)
 bcc:	fdc42783          	lw	a5,-36(s0)
 bd0:	0007871b          	sext.w	a4,a5
 bd4:	6785                	lui	a5,0x1
 bd6:	00f77563          	bgeu	a4,a5,be0 <morecore+0x22>
 bda:	6785                	lui	a5,0x1
 bdc:	fcf42e23          	sw	a5,-36(s0)
 be0:	fdc42783          	lw	a5,-36(s0)
 be4:	0047979b          	slliw	a5,a5,0x4
 be8:	2781                	sext.w	a5,a5
 bea:	2781                	sext.w	a5,a5
 bec:	853e                	mv	a0,a5
 bee:	00000097          	auipc	ra,0x0
 bf2:	9b8080e7          	jalr	-1608(ra) # 5a6 <sbrk>
 bf6:	fea43423          	sd	a0,-24(s0)
 bfa:	fe843703          	ld	a4,-24(s0)
 bfe:	57fd                	li	a5,-1
 c00:	00f71463          	bne	a4,a5,c08 <morecore+0x4a>
 c04:	4781                	li	a5,0
 c06:	a03d                	j	c34 <morecore+0x76>
 c08:	fe843783          	ld	a5,-24(s0)
 c0c:	fef43023          	sd	a5,-32(s0)
 c10:	fe043783          	ld	a5,-32(s0)
 c14:	fdc42703          	lw	a4,-36(s0)
 c18:	c798                	sw	a4,8(a5)
 c1a:	fe043783          	ld	a5,-32(s0)
 c1e:	07c1                	addi	a5,a5,16
 c20:	853e                	mv	a0,a5
 c22:	00000097          	auipc	ra,0x0
 c26:	e7a080e7          	jalr	-390(ra) # a9c <free>
 c2a:	00000797          	auipc	a5,0x0
 c2e:	22e78793          	addi	a5,a5,558 # e58 <freep>
 c32:	639c                	ld	a5,0(a5)
 c34:	853e                	mv	a0,a5
 c36:	70a2                	ld	ra,40(sp)
 c38:	7402                	ld	s0,32(sp)
 c3a:	6145                	addi	sp,sp,48
 c3c:	8082                	ret

0000000000000c3e <malloc>:
 c3e:	7139                	addi	sp,sp,-64
 c40:	fc06                	sd	ra,56(sp)
 c42:	f822                	sd	s0,48(sp)
 c44:	0080                	addi	s0,sp,64
 c46:	87aa                	mv	a5,a0
 c48:	fcf42623          	sw	a5,-52(s0)
 c4c:	fcc46783          	lwu	a5,-52(s0)
 c50:	07bd                	addi	a5,a5,15
 c52:	8391                	srli	a5,a5,0x4
 c54:	2781                	sext.w	a5,a5
 c56:	2785                	addiw	a5,a5,1
 c58:	fcf42e23          	sw	a5,-36(s0)
 c5c:	00000797          	auipc	a5,0x0
 c60:	1fc78793          	addi	a5,a5,508 # e58 <freep>
 c64:	639c                	ld	a5,0(a5)
 c66:	fef43023          	sd	a5,-32(s0)
 c6a:	fe043783          	ld	a5,-32(s0)
 c6e:	ef95                	bnez	a5,caa <malloc+0x6c>
 c70:	00000797          	auipc	a5,0x0
 c74:	1d878793          	addi	a5,a5,472 # e48 <base>
 c78:	fef43023          	sd	a5,-32(s0)
 c7c:	00000797          	auipc	a5,0x0
 c80:	1dc78793          	addi	a5,a5,476 # e58 <freep>
 c84:	fe043703          	ld	a4,-32(s0)
 c88:	e398                	sd	a4,0(a5)
 c8a:	00000797          	auipc	a5,0x0
 c8e:	1ce78793          	addi	a5,a5,462 # e58 <freep>
 c92:	6398                	ld	a4,0(a5)
 c94:	00000797          	auipc	a5,0x0
 c98:	1b478793          	addi	a5,a5,436 # e48 <base>
 c9c:	e398                	sd	a4,0(a5)
 c9e:	00000797          	auipc	a5,0x0
 ca2:	1aa78793          	addi	a5,a5,426 # e48 <base>
 ca6:	0007a423          	sw	zero,8(a5)
 caa:	fe043783          	ld	a5,-32(s0)
 cae:	639c                	ld	a5,0(a5)
 cb0:	fef43423          	sd	a5,-24(s0)
 cb4:	fe843783          	ld	a5,-24(s0)
 cb8:	4798                	lw	a4,8(a5)
 cba:	fdc42783          	lw	a5,-36(s0)
 cbe:	2781                	sext.w	a5,a5
 cc0:	06f76863          	bltu	a4,a5,d30 <malloc+0xf2>
 cc4:	fe843783          	ld	a5,-24(s0)
 cc8:	4798                	lw	a4,8(a5)
 cca:	fdc42783          	lw	a5,-36(s0)
 cce:	2781                	sext.w	a5,a5
 cd0:	00e79963          	bne	a5,a4,ce2 <malloc+0xa4>
 cd4:	fe843783          	ld	a5,-24(s0)
 cd8:	6398                	ld	a4,0(a5)
 cda:	fe043783          	ld	a5,-32(s0)
 cde:	e398                	sd	a4,0(a5)
 ce0:	a82d                	j	d1a <malloc+0xdc>
 ce2:	fe843783          	ld	a5,-24(s0)
 ce6:	4798                	lw	a4,8(a5)
 ce8:	fdc42783          	lw	a5,-36(s0)
 cec:	40f707bb          	subw	a5,a4,a5
 cf0:	0007871b          	sext.w	a4,a5
 cf4:	fe843783          	ld	a5,-24(s0)
 cf8:	c798                	sw	a4,8(a5)
 cfa:	fe843783          	ld	a5,-24(s0)
 cfe:	479c                	lw	a5,8(a5)
 d00:	1782                	slli	a5,a5,0x20
 d02:	9381                	srli	a5,a5,0x20
 d04:	0792                	slli	a5,a5,0x4
 d06:	fe843703          	ld	a4,-24(s0)
 d0a:	97ba                	add	a5,a5,a4
 d0c:	fef43423          	sd	a5,-24(s0)
 d10:	fe843783          	ld	a5,-24(s0)
 d14:	fdc42703          	lw	a4,-36(s0)
 d18:	c798                	sw	a4,8(a5)
 d1a:	00000797          	auipc	a5,0x0
 d1e:	13e78793          	addi	a5,a5,318 # e58 <freep>
 d22:	fe043703          	ld	a4,-32(s0)
 d26:	e398                	sd	a4,0(a5)
 d28:	fe843783          	ld	a5,-24(s0)
 d2c:	07c1                	addi	a5,a5,16
 d2e:	a091                	j	d72 <malloc+0x134>
 d30:	00000797          	auipc	a5,0x0
 d34:	12878793          	addi	a5,a5,296 # e58 <freep>
 d38:	639c                	ld	a5,0(a5)
 d3a:	fe843703          	ld	a4,-24(s0)
 d3e:	02f71063          	bne	a4,a5,d5e <malloc+0x120>
 d42:	fdc42783          	lw	a5,-36(s0)
 d46:	853e                	mv	a0,a5
 d48:	00000097          	auipc	ra,0x0
 d4c:	e76080e7          	jalr	-394(ra) # bbe <morecore>
 d50:	fea43423          	sd	a0,-24(s0)
 d54:	fe843783          	ld	a5,-24(s0)
 d58:	e399                	bnez	a5,d5e <malloc+0x120>
 d5a:	4781                	li	a5,0
 d5c:	a819                	j	d72 <malloc+0x134>
 d5e:	fe843783          	ld	a5,-24(s0)
 d62:	fef43023          	sd	a5,-32(s0)
 d66:	fe843783          	ld	a5,-24(s0)
 d6a:	639c                	ld	a5,0(a5)
 d6c:	fef43423          	sd	a5,-24(s0)
 d70:	b791                	j	cb4 <malloc+0x76>
 d72:	853e                	mv	a0,a5
 d74:	70e2                	ld	ra,56(sp)
 d76:	7442                	ld	s0,48(sp)
 d78:	6121                	addi	sp,sp,64
 d7a:	8082                	ret

0000000000000d7c <setjmp>:
 d7c:	e100                	sd	s0,0(a0)
 d7e:	e504                	sd	s1,8(a0)
 d80:	01253823          	sd	s2,16(a0)
 d84:	01353c23          	sd	s3,24(a0)
 d88:	03453023          	sd	s4,32(a0)
 d8c:	03553423          	sd	s5,40(a0)
 d90:	03653823          	sd	s6,48(a0)
 d94:	03753c23          	sd	s7,56(a0)
 d98:	05853023          	sd	s8,64(a0)
 d9c:	05953423          	sd	s9,72(a0)
 da0:	05a53823          	sd	s10,80(a0)
 da4:	05b53c23          	sd	s11,88(a0)
 da8:	06153023          	sd	ra,96(a0)
 dac:	06253423          	sd	sp,104(a0)
 db0:	4501                	li	a0,0
 db2:	8082                	ret

0000000000000db4 <longjmp>:
 db4:	6100                	ld	s0,0(a0)
 db6:	6504                	ld	s1,8(a0)
 db8:	01053903          	ld	s2,16(a0)
 dbc:	01853983          	ld	s3,24(a0)
 dc0:	02053a03          	ld	s4,32(a0)
 dc4:	02853a83          	ld	s5,40(a0)
 dc8:	03053b03          	ld	s6,48(a0)
 dcc:	03853b83          	ld	s7,56(a0)
 dd0:	04053c03          	ld	s8,64(a0)
 dd4:	04853c83          	ld	s9,72(a0)
 dd8:	05053d03          	ld	s10,80(a0)
 ddc:	05853d83          	ld	s11,88(a0)
 de0:	06053083          	ld	ra,96(a0)
 de4:	06853103          	ld	sp,104(a0)
 de8:	c199                	beqz	a1,dee <longjmp_1>
 dea:	852e                	mv	a0,a1
 dec:	8082                	ret

0000000000000dee <longjmp_1>:
 dee:	4505                	li	a0,1
 df0:	8082                	ret
