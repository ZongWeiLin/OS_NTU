
user/_setjmp:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <setjmp>:
   0:	e100                	sd	s0,0(a0)
   2:	e504                	sd	s1,8(a0)
   4:	01253823          	sd	s2,16(a0)
   8:	01353c23          	sd	s3,24(a0)
   c:	03453023          	sd	s4,32(a0)
  10:	03553423          	sd	s5,40(a0)
  14:	03653823          	sd	s6,48(a0)
  18:	03753c23          	sd	s7,56(a0)
  1c:	05853023          	sd	s8,64(a0)
  20:	05953423          	sd	s9,72(a0)
  24:	05a53823          	sd	s10,80(a0)
  28:	05b53c23          	sd	s11,88(a0)
  2c:	06153023          	sd	ra,96(a0)
  30:	06253423          	sd	sp,104(a0)
  34:	4501                	li	a0,0
  36:	8082                	ret

0000000000000038 <longjmp>:
  38:	6100                	ld	s0,0(a0)
  3a:	6504                	ld	s1,8(a0)
  3c:	01053903          	ld	s2,16(a0)
  40:	01853983          	ld	s3,24(a0)
  44:	02053a03          	ld	s4,32(a0)
  48:	02853a83          	ld	s5,40(a0)
  4c:	03053b03          	ld	s6,48(a0)
  50:	03853b83          	ld	s7,56(a0)
  54:	04053c03          	ld	s8,64(a0)
  58:	04853c83          	ld	s9,72(a0)
  5c:	05053d03          	ld	s10,80(a0)
  60:	05853d83          	ld	s11,88(a0)
  64:	06053083          	ld	ra,96(a0)
  68:	06853103          	ld	sp,104(a0)
  6c:	c199                	beqz	a1,72 <longjmp_1>
  6e:	852e                	mv	a0,a1
  70:	8082                	ret

0000000000000072 <longjmp_1>:
  72:	4505                	li	a0,1
  74:	8082                	ret

0000000000000076 <strcpy>:
  76:	7179                	addi	sp,sp,-48
  78:	f422                	sd	s0,40(sp)
  7a:	1800                	addi	s0,sp,48
  7c:	fca43c23          	sd	a0,-40(s0)
  80:	fcb43823          	sd	a1,-48(s0)
  84:	fd843783          	ld	a5,-40(s0)
  88:	fef43423          	sd	a5,-24(s0)
  8c:	0001                	nop
  8e:	fd043703          	ld	a4,-48(s0)
  92:	00170793          	addi	a5,a4,1
  96:	fcf43823          	sd	a5,-48(s0)
  9a:	fd843783          	ld	a5,-40(s0)
  9e:	00178693          	addi	a3,a5,1
  a2:	fcd43c23          	sd	a3,-40(s0)
  a6:	00074703          	lbu	a4,0(a4)
  aa:	00e78023          	sb	a4,0(a5)
  ae:	0007c783          	lbu	a5,0(a5)
  b2:	fff1                	bnez	a5,8e <strcpy+0x18>
  b4:	fe843783          	ld	a5,-24(s0)
  b8:	853e                	mv	a0,a5
  ba:	7422                	ld	s0,40(sp)
  bc:	6145                	addi	sp,sp,48
  be:	8082                	ret

00000000000000c0 <strcmp>:
  c0:	1101                	addi	sp,sp,-32
  c2:	ec22                	sd	s0,24(sp)
  c4:	1000                	addi	s0,sp,32
  c6:	fea43423          	sd	a0,-24(s0)
  ca:	feb43023          	sd	a1,-32(s0)
  ce:	a819                	j	e4 <strcmp+0x24>
  d0:	fe843783          	ld	a5,-24(s0)
  d4:	0785                	addi	a5,a5,1
  d6:	fef43423          	sd	a5,-24(s0)
  da:	fe043783          	ld	a5,-32(s0)
  de:	0785                	addi	a5,a5,1
  e0:	fef43023          	sd	a5,-32(s0)
  e4:	fe843783          	ld	a5,-24(s0)
  e8:	0007c783          	lbu	a5,0(a5)
  ec:	cb99                	beqz	a5,102 <strcmp+0x42>
  ee:	fe843783          	ld	a5,-24(s0)
  f2:	0007c703          	lbu	a4,0(a5)
  f6:	fe043783          	ld	a5,-32(s0)
  fa:	0007c783          	lbu	a5,0(a5)
  fe:	fcf709e3          	beq	a4,a5,d0 <strcmp+0x10>
 102:	fe843783          	ld	a5,-24(s0)
 106:	0007c783          	lbu	a5,0(a5)
 10a:	0007871b          	sext.w	a4,a5
 10e:	fe043783          	ld	a5,-32(s0)
 112:	0007c783          	lbu	a5,0(a5)
 116:	2781                	sext.w	a5,a5
 118:	40f707bb          	subw	a5,a4,a5
 11c:	2781                	sext.w	a5,a5
 11e:	853e                	mv	a0,a5
 120:	6462                	ld	s0,24(sp)
 122:	6105                	addi	sp,sp,32
 124:	8082                	ret

0000000000000126 <strlen>:
 126:	7179                	addi	sp,sp,-48
 128:	f422                	sd	s0,40(sp)
 12a:	1800                	addi	s0,sp,48
 12c:	fca43c23          	sd	a0,-40(s0)
 130:	fe042623          	sw	zero,-20(s0)
 134:	a031                	j	140 <strlen+0x1a>
 136:	fec42783          	lw	a5,-20(s0)
 13a:	2785                	addiw	a5,a5,1
 13c:	fef42623          	sw	a5,-20(s0)
 140:	fec42783          	lw	a5,-20(s0)
 144:	fd843703          	ld	a4,-40(s0)
 148:	97ba                	add	a5,a5,a4
 14a:	0007c783          	lbu	a5,0(a5)
 14e:	f7e5                	bnez	a5,136 <strlen+0x10>
 150:	fec42783          	lw	a5,-20(s0)
 154:	853e                	mv	a0,a5
 156:	7422                	ld	s0,40(sp)
 158:	6145                	addi	sp,sp,48
 15a:	8082                	ret

000000000000015c <memset>:
 15c:	7179                	addi	sp,sp,-48
 15e:	f422                	sd	s0,40(sp)
 160:	1800                	addi	s0,sp,48
 162:	fca43c23          	sd	a0,-40(s0)
 166:	87ae                	mv	a5,a1
 168:	8732                	mv	a4,a2
 16a:	fcf42a23          	sw	a5,-44(s0)
 16e:	87ba                	mv	a5,a4
 170:	fcf42823          	sw	a5,-48(s0)
 174:	fd843783          	ld	a5,-40(s0)
 178:	fef43023          	sd	a5,-32(s0)
 17c:	fe042623          	sw	zero,-20(s0)
 180:	a00d                	j	1a2 <memset+0x46>
 182:	fec42783          	lw	a5,-20(s0)
 186:	fe043703          	ld	a4,-32(s0)
 18a:	97ba                	add	a5,a5,a4
 18c:	fd442703          	lw	a4,-44(s0)
 190:	0ff77713          	andi	a4,a4,255
 194:	00e78023          	sb	a4,0(a5)
 198:	fec42783          	lw	a5,-20(s0)
 19c:	2785                	addiw	a5,a5,1
 19e:	fef42623          	sw	a5,-20(s0)
 1a2:	fec42703          	lw	a4,-20(s0)
 1a6:	fd042783          	lw	a5,-48(s0)
 1aa:	2781                	sext.w	a5,a5
 1ac:	fcf76be3          	bltu	a4,a5,182 <memset+0x26>
 1b0:	fd843783          	ld	a5,-40(s0)
 1b4:	853e                	mv	a0,a5
 1b6:	7422                	ld	s0,40(sp)
 1b8:	6145                	addi	sp,sp,48
 1ba:	8082                	ret

00000000000001bc <strchr>:
 1bc:	1101                	addi	sp,sp,-32
 1be:	ec22                	sd	s0,24(sp)
 1c0:	1000                	addi	s0,sp,32
 1c2:	fea43423          	sd	a0,-24(s0)
 1c6:	87ae                	mv	a5,a1
 1c8:	fef403a3          	sb	a5,-25(s0)
 1cc:	a01d                	j	1f2 <strchr+0x36>
 1ce:	fe843783          	ld	a5,-24(s0)
 1d2:	0007c703          	lbu	a4,0(a5)
 1d6:	fe744783          	lbu	a5,-25(s0)
 1da:	0ff7f793          	andi	a5,a5,255
 1de:	00e79563          	bne	a5,a4,1e8 <strchr+0x2c>
 1e2:	fe843783          	ld	a5,-24(s0)
 1e6:	a821                	j	1fe <strchr+0x42>
 1e8:	fe843783          	ld	a5,-24(s0)
 1ec:	0785                	addi	a5,a5,1
 1ee:	fef43423          	sd	a5,-24(s0)
 1f2:	fe843783          	ld	a5,-24(s0)
 1f6:	0007c783          	lbu	a5,0(a5)
 1fa:	fbf1                	bnez	a5,1ce <strchr+0x12>
 1fc:	4781                	li	a5,0
 1fe:	853e                	mv	a0,a5
 200:	6462                	ld	s0,24(sp)
 202:	6105                	addi	sp,sp,32
 204:	8082                	ret

0000000000000206 <gets>:
 206:	7179                	addi	sp,sp,-48
 208:	f406                	sd	ra,40(sp)
 20a:	f022                	sd	s0,32(sp)
 20c:	1800                	addi	s0,sp,48
 20e:	fca43c23          	sd	a0,-40(s0)
 212:	87ae                	mv	a5,a1
 214:	fcf42a23          	sw	a5,-44(s0)
 218:	fe042623          	sw	zero,-20(s0)
 21c:	a8a1                	j	274 <gets+0x6e>
 21e:	fe740793          	addi	a5,s0,-25
 222:	4605                	li	a2,1
 224:	85be                	mv	a1,a5
 226:	4501                	li	a0,0
 228:	00000097          	auipc	ra,0x0
 22c:	2f6080e7          	jalr	758(ra) # 51e <read>
 230:	87aa                	mv	a5,a0
 232:	fef42423          	sw	a5,-24(s0)
 236:	fe842783          	lw	a5,-24(s0)
 23a:	2781                	sext.w	a5,a5
 23c:	04f05763          	blez	a5,28a <gets+0x84>
 240:	fec42783          	lw	a5,-20(s0)
 244:	0017871b          	addiw	a4,a5,1
 248:	fee42623          	sw	a4,-20(s0)
 24c:	873e                	mv	a4,a5
 24e:	fd843783          	ld	a5,-40(s0)
 252:	97ba                	add	a5,a5,a4
 254:	fe744703          	lbu	a4,-25(s0)
 258:	00e78023          	sb	a4,0(a5)
 25c:	fe744783          	lbu	a5,-25(s0)
 260:	873e                	mv	a4,a5
 262:	47a9                	li	a5,10
 264:	02f70463          	beq	a4,a5,28c <gets+0x86>
 268:	fe744783          	lbu	a5,-25(s0)
 26c:	873e                	mv	a4,a5
 26e:	47b5                	li	a5,13
 270:	00f70e63          	beq	a4,a5,28c <gets+0x86>
 274:	fec42783          	lw	a5,-20(s0)
 278:	2785                	addiw	a5,a5,1
 27a:	0007871b          	sext.w	a4,a5
 27e:	fd442783          	lw	a5,-44(s0)
 282:	2781                	sext.w	a5,a5
 284:	f8f74de3          	blt	a4,a5,21e <gets+0x18>
 288:	a011                	j	28c <gets+0x86>
 28a:	0001                	nop
 28c:	fec42783          	lw	a5,-20(s0)
 290:	fd843703          	ld	a4,-40(s0)
 294:	97ba                	add	a5,a5,a4
 296:	00078023          	sb	zero,0(a5)
 29a:	fd843783          	ld	a5,-40(s0)
 29e:	853e                	mv	a0,a5
 2a0:	70a2                	ld	ra,40(sp)
 2a2:	7402                	ld	s0,32(sp)
 2a4:	6145                	addi	sp,sp,48
 2a6:	8082                	ret

00000000000002a8 <stat>:
 2a8:	7179                	addi	sp,sp,-48
 2aa:	f406                	sd	ra,40(sp)
 2ac:	f022                	sd	s0,32(sp)
 2ae:	1800                	addi	s0,sp,48
 2b0:	fca43c23          	sd	a0,-40(s0)
 2b4:	fcb43823          	sd	a1,-48(s0)
 2b8:	4581                	li	a1,0
 2ba:	fd843503          	ld	a0,-40(s0)
 2be:	00000097          	auipc	ra,0x0
 2c2:	288080e7          	jalr	648(ra) # 546 <open>
 2c6:	87aa                	mv	a5,a0
 2c8:	fef42623          	sw	a5,-20(s0)
 2cc:	fec42783          	lw	a5,-20(s0)
 2d0:	2781                	sext.w	a5,a5
 2d2:	0007d463          	bgez	a5,2da <stat+0x32>
 2d6:	57fd                	li	a5,-1
 2d8:	a035                	j	304 <stat+0x5c>
 2da:	fec42783          	lw	a5,-20(s0)
 2de:	fd043583          	ld	a1,-48(s0)
 2e2:	853e                	mv	a0,a5
 2e4:	00000097          	auipc	ra,0x0
 2e8:	27a080e7          	jalr	634(ra) # 55e <fstat>
 2ec:	87aa                	mv	a5,a0
 2ee:	fef42423          	sw	a5,-24(s0)
 2f2:	fec42783          	lw	a5,-20(s0)
 2f6:	853e                	mv	a0,a5
 2f8:	00000097          	auipc	ra,0x0
 2fc:	236080e7          	jalr	566(ra) # 52e <close>
 300:	fe842783          	lw	a5,-24(s0)
 304:	853e                	mv	a0,a5
 306:	70a2                	ld	ra,40(sp)
 308:	7402                	ld	s0,32(sp)
 30a:	6145                	addi	sp,sp,48
 30c:	8082                	ret

000000000000030e <atoi>:
 30e:	7179                	addi	sp,sp,-48
 310:	f422                	sd	s0,40(sp)
 312:	1800                	addi	s0,sp,48
 314:	fca43c23          	sd	a0,-40(s0)
 318:	fe042623          	sw	zero,-20(s0)
 31c:	a815                	j	350 <atoi+0x42>
 31e:	fec42703          	lw	a4,-20(s0)
 322:	87ba                	mv	a5,a4
 324:	0027979b          	slliw	a5,a5,0x2
 328:	9fb9                	addw	a5,a5,a4
 32a:	0017979b          	slliw	a5,a5,0x1
 32e:	0007871b          	sext.w	a4,a5
 332:	fd843783          	ld	a5,-40(s0)
 336:	00178693          	addi	a3,a5,1
 33a:	fcd43c23          	sd	a3,-40(s0)
 33e:	0007c783          	lbu	a5,0(a5)
 342:	2781                	sext.w	a5,a5
 344:	9fb9                	addw	a5,a5,a4
 346:	2781                	sext.w	a5,a5
 348:	fd07879b          	addiw	a5,a5,-48
 34c:	fef42623          	sw	a5,-20(s0)
 350:	fd843783          	ld	a5,-40(s0)
 354:	0007c783          	lbu	a5,0(a5)
 358:	873e                	mv	a4,a5
 35a:	02f00793          	li	a5,47
 35e:	00e7fb63          	bgeu	a5,a4,374 <atoi+0x66>
 362:	fd843783          	ld	a5,-40(s0)
 366:	0007c783          	lbu	a5,0(a5)
 36a:	873e                	mv	a4,a5
 36c:	03900793          	li	a5,57
 370:	fae7f7e3          	bgeu	a5,a4,31e <atoi+0x10>
 374:	fec42783          	lw	a5,-20(s0)
 378:	853e                	mv	a0,a5
 37a:	7422                	ld	s0,40(sp)
 37c:	6145                	addi	sp,sp,48
 37e:	8082                	ret

0000000000000380 <memmove>:
 380:	7139                	addi	sp,sp,-64
 382:	fc22                	sd	s0,56(sp)
 384:	0080                	addi	s0,sp,64
 386:	fca43c23          	sd	a0,-40(s0)
 38a:	fcb43823          	sd	a1,-48(s0)
 38e:	87b2                	mv	a5,a2
 390:	fcf42623          	sw	a5,-52(s0)
 394:	fd843783          	ld	a5,-40(s0)
 398:	fef43423          	sd	a5,-24(s0)
 39c:	fd043783          	ld	a5,-48(s0)
 3a0:	fef43023          	sd	a5,-32(s0)
 3a4:	fe043703          	ld	a4,-32(s0)
 3a8:	fe843783          	ld	a5,-24(s0)
 3ac:	02e7fc63          	bgeu	a5,a4,3e4 <memmove+0x64>
 3b0:	a00d                	j	3d2 <memmove+0x52>
 3b2:	fe043703          	ld	a4,-32(s0)
 3b6:	00170793          	addi	a5,a4,1
 3ba:	fef43023          	sd	a5,-32(s0)
 3be:	fe843783          	ld	a5,-24(s0)
 3c2:	00178693          	addi	a3,a5,1
 3c6:	fed43423          	sd	a3,-24(s0)
 3ca:	00074703          	lbu	a4,0(a4)
 3ce:	00e78023          	sb	a4,0(a5)
 3d2:	fcc42783          	lw	a5,-52(s0)
 3d6:	fff7871b          	addiw	a4,a5,-1
 3da:	fce42623          	sw	a4,-52(s0)
 3de:	fcf04ae3          	bgtz	a5,3b2 <memmove+0x32>
 3e2:	a891                	j	436 <memmove+0xb6>
 3e4:	fcc42783          	lw	a5,-52(s0)
 3e8:	fe843703          	ld	a4,-24(s0)
 3ec:	97ba                	add	a5,a5,a4
 3ee:	fef43423          	sd	a5,-24(s0)
 3f2:	fcc42783          	lw	a5,-52(s0)
 3f6:	fe043703          	ld	a4,-32(s0)
 3fa:	97ba                	add	a5,a5,a4
 3fc:	fef43023          	sd	a5,-32(s0)
 400:	a01d                	j	426 <memmove+0xa6>
 402:	fe043783          	ld	a5,-32(s0)
 406:	17fd                	addi	a5,a5,-1
 408:	fef43023          	sd	a5,-32(s0)
 40c:	fe843783          	ld	a5,-24(s0)
 410:	17fd                	addi	a5,a5,-1
 412:	fef43423          	sd	a5,-24(s0)
 416:	fe043783          	ld	a5,-32(s0)
 41a:	0007c703          	lbu	a4,0(a5)
 41e:	fe843783          	ld	a5,-24(s0)
 422:	00e78023          	sb	a4,0(a5)
 426:	fcc42783          	lw	a5,-52(s0)
 42a:	fff7871b          	addiw	a4,a5,-1
 42e:	fce42623          	sw	a4,-52(s0)
 432:	fcf048e3          	bgtz	a5,402 <memmove+0x82>
 436:	fd843783          	ld	a5,-40(s0)
 43a:	853e                	mv	a0,a5
 43c:	7462                	ld	s0,56(sp)
 43e:	6121                	addi	sp,sp,64
 440:	8082                	ret

0000000000000442 <memcmp>:
 442:	7139                	addi	sp,sp,-64
 444:	fc22                	sd	s0,56(sp)
 446:	0080                	addi	s0,sp,64
 448:	fca43c23          	sd	a0,-40(s0)
 44c:	fcb43823          	sd	a1,-48(s0)
 450:	87b2                	mv	a5,a2
 452:	fcf42623          	sw	a5,-52(s0)
 456:	fd843783          	ld	a5,-40(s0)
 45a:	fef43423          	sd	a5,-24(s0)
 45e:	fd043783          	ld	a5,-48(s0)
 462:	fef43023          	sd	a5,-32(s0)
 466:	a0a1                	j	4ae <memcmp+0x6c>
 468:	fe843783          	ld	a5,-24(s0)
 46c:	0007c703          	lbu	a4,0(a5)
 470:	fe043783          	ld	a5,-32(s0)
 474:	0007c783          	lbu	a5,0(a5)
 478:	02f70163          	beq	a4,a5,49a <memcmp+0x58>
 47c:	fe843783          	ld	a5,-24(s0)
 480:	0007c783          	lbu	a5,0(a5)
 484:	0007871b          	sext.w	a4,a5
 488:	fe043783          	ld	a5,-32(s0)
 48c:	0007c783          	lbu	a5,0(a5)
 490:	2781                	sext.w	a5,a5
 492:	40f707bb          	subw	a5,a4,a5
 496:	2781                	sext.w	a5,a5
 498:	a01d                	j	4be <memcmp+0x7c>
 49a:	fe843783          	ld	a5,-24(s0)
 49e:	0785                	addi	a5,a5,1
 4a0:	fef43423          	sd	a5,-24(s0)
 4a4:	fe043783          	ld	a5,-32(s0)
 4a8:	0785                	addi	a5,a5,1
 4aa:	fef43023          	sd	a5,-32(s0)
 4ae:	fcc42783          	lw	a5,-52(s0)
 4b2:	fff7871b          	addiw	a4,a5,-1
 4b6:	fce42623          	sw	a4,-52(s0)
 4ba:	f7dd                	bnez	a5,468 <memcmp+0x26>
 4bc:	4781                	li	a5,0
 4be:	853e                	mv	a0,a5
 4c0:	7462                	ld	s0,56(sp)
 4c2:	6121                	addi	sp,sp,64
 4c4:	8082                	ret

00000000000004c6 <memcpy>:
 4c6:	7179                	addi	sp,sp,-48
 4c8:	f406                	sd	ra,40(sp)
 4ca:	f022                	sd	s0,32(sp)
 4cc:	1800                	addi	s0,sp,48
 4ce:	fea43423          	sd	a0,-24(s0)
 4d2:	feb43023          	sd	a1,-32(s0)
 4d6:	87b2                	mv	a5,a2
 4d8:	fcf42e23          	sw	a5,-36(s0)
 4dc:	fdc42783          	lw	a5,-36(s0)
 4e0:	863e                	mv	a2,a5
 4e2:	fe043583          	ld	a1,-32(s0)
 4e6:	fe843503          	ld	a0,-24(s0)
 4ea:	00000097          	auipc	ra,0x0
 4ee:	e96080e7          	jalr	-362(ra) # 380 <memmove>
 4f2:	87aa                	mv	a5,a0
 4f4:	853e                	mv	a0,a5
 4f6:	70a2                	ld	ra,40(sp)
 4f8:	7402                	ld	s0,32(sp)
 4fa:	6145                	addi	sp,sp,48
 4fc:	8082                	ret

00000000000004fe <fork>:
 4fe:	4885                	li	a7,1
 500:	00000073          	ecall
 504:	8082                	ret

0000000000000506 <exit>:
 506:	4889                	li	a7,2
 508:	00000073          	ecall
 50c:	8082                	ret

000000000000050e <wait>:
 50e:	488d                	li	a7,3
 510:	00000073          	ecall
 514:	8082                	ret

0000000000000516 <pipe>:
 516:	4891                	li	a7,4
 518:	00000073          	ecall
 51c:	8082                	ret

000000000000051e <read>:
 51e:	4895                	li	a7,5
 520:	00000073          	ecall
 524:	8082                	ret

0000000000000526 <write>:
 526:	48c1                	li	a7,16
 528:	00000073          	ecall
 52c:	8082                	ret

000000000000052e <close>:
 52e:	48d5                	li	a7,21
 530:	00000073          	ecall
 534:	8082                	ret

0000000000000536 <kill>:
 536:	4899                	li	a7,6
 538:	00000073          	ecall
 53c:	8082                	ret

000000000000053e <exec>:
 53e:	489d                	li	a7,7
 540:	00000073          	ecall
 544:	8082                	ret

0000000000000546 <open>:
 546:	48bd                	li	a7,15
 548:	00000073          	ecall
 54c:	8082                	ret

000000000000054e <mknod>:
 54e:	48c5                	li	a7,17
 550:	00000073          	ecall
 554:	8082                	ret

0000000000000556 <unlink>:
 556:	48c9                	li	a7,18
 558:	00000073          	ecall
 55c:	8082                	ret

000000000000055e <fstat>:
 55e:	48a1                	li	a7,8
 560:	00000073          	ecall
 564:	8082                	ret

0000000000000566 <link>:
 566:	48cd                	li	a7,19
 568:	00000073          	ecall
 56c:	8082                	ret

000000000000056e <mkdir>:
 56e:	48d1                	li	a7,20
 570:	00000073          	ecall
 574:	8082                	ret

0000000000000576 <chdir>:
 576:	48a5                	li	a7,9
 578:	00000073          	ecall
 57c:	8082                	ret

000000000000057e <dup>:
 57e:	48a9                	li	a7,10
 580:	00000073          	ecall
 584:	8082                	ret

0000000000000586 <getpid>:
 586:	48ad                	li	a7,11
 588:	00000073          	ecall
 58c:	8082                	ret

000000000000058e <sbrk>:
 58e:	48b1                	li	a7,12
 590:	00000073          	ecall
 594:	8082                	ret

0000000000000596 <sleep>:
 596:	48b5                	li	a7,13
 598:	00000073          	ecall
 59c:	8082                	ret

000000000000059e <uptime>:
 59e:	48b9                	li	a7,14
 5a0:	00000073          	ecall
 5a4:	8082                	ret

00000000000005a6 <putc>:
 5a6:	1101                	addi	sp,sp,-32
 5a8:	ec06                	sd	ra,24(sp)
 5aa:	e822                	sd	s0,16(sp)
 5ac:	1000                	addi	s0,sp,32
 5ae:	87aa                	mv	a5,a0
 5b0:	872e                	mv	a4,a1
 5b2:	fef42623          	sw	a5,-20(s0)
 5b6:	87ba                	mv	a5,a4
 5b8:	fef405a3          	sb	a5,-21(s0)
 5bc:	feb40713          	addi	a4,s0,-21
 5c0:	fec42783          	lw	a5,-20(s0)
 5c4:	4605                	li	a2,1
 5c6:	85ba                	mv	a1,a4
 5c8:	853e                	mv	a0,a5
 5ca:	00000097          	auipc	ra,0x0
 5ce:	f5c080e7          	jalr	-164(ra) # 526 <write>
 5d2:	0001                	nop
 5d4:	60e2                	ld	ra,24(sp)
 5d6:	6442                	ld	s0,16(sp)
 5d8:	6105                	addi	sp,sp,32
 5da:	8082                	ret

00000000000005dc <printint>:
 5dc:	7139                	addi	sp,sp,-64
 5de:	fc06                	sd	ra,56(sp)
 5e0:	f822                	sd	s0,48(sp)
 5e2:	0080                	addi	s0,sp,64
 5e4:	87aa                	mv	a5,a0
 5e6:	8736                	mv	a4,a3
 5e8:	fcf42623          	sw	a5,-52(s0)
 5ec:	87ae                	mv	a5,a1
 5ee:	fcf42423          	sw	a5,-56(s0)
 5f2:	87b2                	mv	a5,a2
 5f4:	fcf42223          	sw	a5,-60(s0)
 5f8:	87ba                	mv	a5,a4
 5fa:	fcf42023          	sw	a5,-64(s0)
 5fe:	fe042423          	sw	zero,-24(s0)
 602:	fc042783          	lw	a5,-64(s0)
 606:	2781                	sext.w	a5,a5
 608:	c38d                	beqz	a5,62a <printint+0x4e>
 60a:	fc842783          	lw	a5,-56(s0)
 60e:	2781                	sext.w	a5,a5
 610:	0007dd63          	bgez	a5,62a <printint+0x4e>
 614:	4785                	li	a5,1
 616:	fef42423          	sw	a5,-24(s0)
 61a:	fc842783          	lw	a5,-56(s0)
 61e:	40f007bb          	negw	a5,a5
 622:	2781                	sext.w	a5,a5
 624:	fef42223          	sw	a5,-28(s0)
 628:	a029                	j	632 <printint+0x56>
 62a:	fc842783          	lw	a5,-56(s0)
 62e:	fef42223          	sw	a5,-28(s0)
 632:	fe042623          	sw	zero,-20(s0)
 636:	fc442783          	lw	a5,-60(s0)
 63a:	fe442703          	lw	a4,-28(s0)
 63e:	02f777bb          	remuw	a5,a4,a5
 642:	0007861b          	sext.w	a2,a5
 646:	fec42783          	lw	a5,-20(s0)
 64a:	0017871b          	addiw	a4,a5,1
 64e:	fee42623          	sw	a4,-20(s0)
 652:	00000697          	auipc	a3,0x0
 656:	71e68693          	addi	a3,a3,1822 # d70 <digits>
 65a:	02061713          	slli	a4,a2,0x20
 65e:	9301                	srli	a4,a4,0x20
 660:	9736                	add	a4,a4,a3
 662:	00074703          	lbu	a4,0(a4)
 666:	ff040693          	addi	a3,s0,-16
 66a:	97b6                	add	a5,a5,a3
 66c:	fee78023          	sb	a4,-32(a5)
 670:	fc442783          	lw	a5,-60(s0)
 674:	fe442703          	lw	a4,-28(s0)
 678:	02f757bb          	divuw	a5,a4,a5
 67c:	fef42223          	sw	a5,-28(s0)
 680:	fe442783          	lw	a5,-28(s0)
 684:	2781                	sext.w	a5,a5
 686:	fbc5                	bnez	a5,636 <printint+0x5a>
 688:	fe842783          	lw	a5,-24(s0)
 68c:	2781                	sext.w	a5,a5
 68e:	cf95                	beqz	a5,6ca <printint+0xee>
 690:	fec42783          	lw	a5,-20(s0)
 694:	0017871b          	addiw	a4,a5,1
 698:	fee42623          	sw	a4,-20(s0)
 69c:	ff040713          	addi	a4,s0,-16
 6a0:	97ba                	add	a5,a5,a4
 6a2:	02d00713          	li	a4,45
 6a6:	fee78023          	sb	a4,-32(a5)
 6aa:	a005                	j	6ca <printint+0xee>
 6ac:	fec42783          	lw	a5,-20(s0)
 6b0:	ff040713          	addi	a4,s0,-16
 6b4:	97ba                	add	a5,a5,a4
 6b6:	fe07c703          	lbu	a4,-32(a5)
 6ba:	fcc42783          	lw	a5,-52(s0)
 6be:	85ba                	mv	a1,a4
 6c0:	853e                	mv	a0,a5
 6c2:	00000097          	auipc	ra,0x0
 6c6:	ee4080e7          	jalr	-284(ra) # 5a6 <putc>
 6ca:	fec42783          	lw	a5,-20(s0)
 6ce:	37fd                	addiw	a5,a5,-1
 6d0:	fef42623          	sw	a5,-20(s0)
 6d4:	fec42783          	lw	a5,-20(s0)
 6d8:	2781                	sext.w	a5,a5
 6da:	fc07d9e3          	bgez	a5,6ac <printint+0xd0>
 6de:	0001                	nop
 6e0:	0001                	nop
 6e2:	70e2                	ld	ra,56(sp)
 6e4:	7442                	ld	s0,48(sp)
 6e6:	6121                	addi	sp,sp,64
 6e8:	8082                	ret

00000000000006ea <printptr>:
 6ea:	7179                	addi	sp,sp,-48
 6ec:	f406                	sd	ra,40(sp)
 6ee:	f022                	sd	s0,32(sp)
 6f0:	1800                	addi	s0,sp,48
 6f2:	87aa                	mv	a5,a0
 6f4:	fcb43823          	sd	a1,-48(s0)
 6f8:	fcf42e23          	sw	a5,-36(s0)
 6fc:	fdc42783          	lw	a5,-36(s0)
 700:	03000593          	li	a1,48
 704:	853e                	mv	a0,a5
 706:	00000097          	auipc	ra,0x0
 70a:	ea0080e7          	jalr	-352(ra) # 5a6 <putc>
 70e:	fdc42783          	lw	a5,-36(s0)
 712:	07800593          	li	a1,120
 716:	853e                	mv	a0,a5
 718:	00000097          	auipc	ra,0x0
 71c:	e8e080e7          	jalr	-370(ra) # 5a6 <putc>
 720:	fe042623          	sw	zero,-20(s0)
 724:	a82d                	j	75e <printptr+0x74>
 726:	fd043783          	ld	a5,-48(s0)
 72a:	93f1                	srli	a5,a5,0x3c
 72c:	00000717          	auipc	a4,0x0
 730:	64470713          	addi	a4,a4,1604 # d70 <digits>
 734:	97ba                	add	a5,a5,a4
 736:	0007c703          	lbu	a4,0(a5)
 73a:	fdc42783          	lw	a5,-36(s0)
 73e:	85ba                	mv	a1,a4
 740:	853e                	mv	a0,a5
 742:	00000097          	auipc	ra,0x0
 746:	e64080e7          	jalr	-412(ra) # 5a6 <putc>
 74a:	fec42783          	lw	a5,-20(s0)
 74e:	2785                	addiw	a5,a5,1
 750:	fef42623          	sw	a5,-20(s0)
 754:	fd043783          	ld	a5,-48(s0)
 758:	0792                	slli	a5,a5,0x4
 75a:	fcf43823          	sd	a5,-48(s0)
 75e:	fec42783          	lw	a5,-20(s0)
 762:	873e                	mv	a4,a5
 764:	47bd                	li	a5,15
 766:	fce7f0e3          	bgeu	a5,a4,726 <printptr+0x3c>
 76a:	0001                	nop
 76c:	0001                	nop
 76e:	70a2                	ld	ra,40(sp)
 770:	7402                	ld	s0,32(sp)
 772:	6145                	addi	sp,sp,48
 774:	8082                	ret

0000000000000776 <vprintf>:
 776:	715d                	addi	sp,sp,-80
 778:	e486                	sd	ra,72(sp)
 77a:	e0a2                	sd	s0,64(sp)
 77c:	0880                	addi	s0,sp,80
 77e:	87aa                	mv	a5,a0
 780:	fcb43023          	sd	a1,-64(s0)
 784:	fac43c23          	sd	a2,-72(s0)
 788:	fcf42623          	sw	a5,-52(s0)
 78c:	fe042023          	sw	zero,-32(s0)
 790:	fe042223          	sw	zero,-28(s0)
 794:	a42d                	j	9be <vprintf+0x248>
 796:	fe442783          	lw	a5,-28(s0)
 79a:	fc043703          	ld	a4,-64(s0)
 79e:	97ba                	add	a5,a5,a4
 7a0:	0007c783          	lbu	a5,0(a5)
 7a4:	fcf42e23          	sw	a5,-36(s0)
 7a8:	fe042783          	lw	a5,-32(s0)
 7ac:	2781                	sext.w	a5,a5
 7ae:	eb9d                	bnez	a5,7e4 <vprintf+0x6e>
 7b0:	fdc42783          	lw	a5,-36(s0)
 7b4:	0007871b          	sext.w	a4,a5
 7b8:	02500793          	li	a5,37
 7bc:	00f71763          	bne	a4,a5,7ca <vprintf+0x54>
 7c0:	02500793          	li	a5,37
 7c4:	fef42023          	sw	a5,-32(s0)
 7c8:	a2f5                	j	9b4 <vprintf+0x23e>
 7ca:	fdc42783          	lw	a5,-36(s0)
 7ce:	0ff7f713          	andi	a4,a5,255
 7d2:	fcc42783          	lw	a5,-52(s0)
 7d6:	85ba                	mv	a1,a4
 7d8:	853e                	mv	a0,a5
 7da:	00000097          	auipc	ra,0x0
 7de:	dcc080e7          	jalr	-564(ra) # 5a6 <putc>
 7e2:	aac9                	j	9b4 <vprintf+0x23e>
 7e4:	fe042783          	lw	a5,-32(s0)
 7e8:	0007871b          	sext.w	a4,a5
 7ec:	02500793          	li	a5,37
 7f0:	1cf71263          	bne	a4,a5,9b4 <vprintf+0x23e>
 7f4:	fdc42783          	lw	a5,-36(s0)
 7f8:	0007871b          	sext.w	a4,a5
 7fc:	06400793          	li	a5,100
 800:	02f71463          	bne	a4,a5,828 <vprintf+0xb2>
 804:	fb843783          	ld	a5,-72(s0)
 808:	00878713          	addi	a4,a5,8
 80c:	fae43c23          	sd	a4,-72(s0)
 810:	4398                	lw	a4,0(a5)
 812:	fcc42783          	lw	a5,-52(s0)
 816:	4685                	li	a3,1
 818:	4629                	li	a2,10
 81a:	85ba                	mv	a1,a4
 81c:	853e                	mv	a0,a5
 81e:	00000097          	auipc	ra,0x0
 822:	dbe080e7          	jalr	-578(ra) # 5dc <printint>
 826:	a269                	j	9b0 <vprintf+0x23a>
 828:	fdc42783          	lw	a5,-36(s0)
 82c:	0007871b          	sext.w	a4,a5
 830:	06c00793          	li	a5,108
 834:	02f71663          	bne	a4,a5,860 <vprintf+0xea>
 838:	fb843783          	ld	a5,-72(s0)
 83c:	00878713          	addi	a4,a5,8
 840:	fae43c23          	sd	a4,-72(s0)
 844:	639c                	ld	a5,0(a5)
 846:	0007871b          	sext.w	a4,a5
 84a:	fcc42783          	lw	a5,-52(s0)
 84e:	4681                	li	a3,0
 850:	4629                	li	a2,10
 852:	85ba                	mv	a1,a4
 854:	853e                	mv	a0,a5
 856:	00000097          	auipc	ra,0x0
 85a:	d86080e7          	jalr	-634(ra) # 5dc <printint>
 85e:	aa89                	j	9b0 <vprintf+0x23a>
 860:	fdc42783          	lw	a5,-36(s0)
 864:	0007871b          	sext.w	a4,a5
 868:	07800793          	li	a5,120
 86c:	02f71463          	bne	a4,a5,894 <vprintf+0x11e>
 870:	fb843783          	ld	a5,-72(s0)
 874:	00878713          	addi	a4,a5,8
 878:	fae43c23          	sd	a4,-72(s0)
 87c:	4398                	lw	a4,0(a5)
 87e:	fcc42783          	lw	a5,-52(s0)
 882:	4681                	li	a3,0
 884:	4641                	li	a2,16
 886:	85ba                	mv	a1,a4
 888:	853e                	mv	a0,a5
 88a:	00000097          	auipc	ra,0x0
 88e:	d52080e7          	jalr	-686(ra) # 5dc <printint>
 892:	aa39                	j	9b0 <vprintf+0x23a>
 894:	fdc42783          	lw	a5,-36(s0)
 898:	0007871b          	sext.w	a4,a5
 89c:	07000793          	li	a5,112
 8a0:	02f71263          	bne	a4,a5,8c4 <vprintf+0x14e>
 8a4:	fb843783          	ld	a5,-72(s0)
 8a8:	00878713          	addi	a4,a5,8
 8ac:	fae43c23          	sd	a4,-72(s0)
 8b0:	6398                	ld	a4,0(a5)
 8b2:	fcc42783          	lw	a5,-52(s0)
 8b6:	85ba                	mv	a1,a4
 8b8:	853e                	mv	a0,a5
 8ba:	00000097          	auipc	ra,0x0
 8be:	e30080e7          	jalr	-464(ra) # 6ea <printptr>
 8c2:	a0fd                	j	9b0 <vprintf+0x23a>
 8c4:	fdc42783          	lw	a5,-36(s0)
 8c8:	0007871b          	sext.w	a4,a5
 8cc:	07300793          	li	a5,115
 8d0:	04f71c63          	bne	a4,a5,928 <vprintf+0x1b2>
 8d4:	fb843783          	ld	a5,-72(s0)
 8d8:	00878713          	addi	a4,a5,8
 8dc:	fae43c23          	sd	a4,-72(s0)
 8e0:	639c                	ld	a5,0(a5)
 8e2:	fef43423          	sd	a5,-24(s0)
 8e6:	fe843783          	ld	a5,-24(s0)
 8ea:	eb8d                	bnez	a5,91c <vprintf+0x1a6>
 8ec:	00000797          	auipc	a5,0x0
 8f0:	47c78793          	addi	a5,a5,1148 # d68 <malloc+0x142>
 8f4:	fef43423          	sd	a5,-24(s0)
 8f8:	a015                	j	91c <vprintf+0x1a6>
 8fa:	fe843783          	ld	a5,-24(s0)
 8fe:	0007c703          	lbu	a4,0(a5)
 902:	fcc42783          	lw	a5,-52(s0)
 906:	85ba                	mv	a1,a4
 908:	853e                	mv	a0,a5
 90a:	00000097          	auipc	ra,0x0
 90e:	c9c080e7          	jalr	-868(ra) # 5a6 <putc>
 912:	fe843783          	ld	a5,-24(s0)
 916:	0785                	addi	a5,a5,1
 918:	fef43423          	sd	a5,-24(s0)
 91c:	fe843783          	ld	a5,-24(s0)
 920:	0007c783          	lbu	a5,0(a5)
 924:	fbf9                	bnez	a5,8fa <vprintf+0x184>
 926:	a069                	j	9b0 <vprintf+0x23a>
 928:	fdc42783          	lw	a5,-36(s0)
 92c:	0007871b          	sext.w	a4,a5
 930:	06300793          	li	a5,99
 934:	02f71463          	bne	a4,a5,95c <vprintf+0x1e6>
 938:	fb843783          	ld	a5,-72(s0)
 93c:	00878713          	addi	a4,a5,8
 940:	fae43c23          	sd	a4,-72(s0)
 944:	439c                	lw	a5,0(a5)
 946:	0ff7f713          	andi	a4,a5,255
 94a:	fcc42783          	lw	a5,-52(s0)
 94e:	85ba                	mv	a1,a4
 950:	853e                	mv	a0,a5
 952:	00000097          	auipc	ra,0x0
 956:	c54080e7          	jalr	-940(ra) # 5a6 <putc>
 95a:	a899                	j	9b0 <vprintf+0x23a>
 95c:	fdc42783          	lw	a5,-36(s0)
 960:	0007871b          	sext.w	a4,a5
 964:	02500793          	li	a5,37
 968:	00f71f63          	bne	a4,a5,986 <vprintf+0x210>
 96c:	fdc42783          	lw	a5,-36(s0)
 970:	0ff7f713          	andi	a4,a5,255
 974:	fcc42783          	lw	a5,-52(s0)
 978:	85ba                	mv	a1,a4
 97a:	853e                	mv	a0,a5
 97c:	00000097          	auipc	ra,0x0
 980:	c2a080e7          	jalr	-982(ra) # 5a6 <putc>
 984:	a035                	j	9b0 <vprintf+0x23a>
 986:	fcc42783          	lw	a5,-52(s0)
 98a:	02500593          	li	a1,37
 98e:	853e                	mv	a0,a5
 990:	00000097          	auipc	ra,0x0
 994:	c16080e7          	jalr	-1002(ra) # 5a6 <putc>
 998:	fdc42783          	lw	a5,-36(s0)
 99c:	0ff7f713          	andi	a4,a5,255
 9a0:	fcc42783          	lw	a5,-52(s0)
 9a4:	85ba                	mv	a1,a4
 9a6:	853e                	mv	a0,a5
 9a8:	00000097          	auipc	ra,0x0
 9ac:	bfe080e7          	jalr	-1026(ra) # 5a6 <putc>
 9b0:	fe042023          	sw	zero,-32(s0)
 9b4:	fe442783          	lw	a5,-28(s0)
 9b8:	2785                	addiw	a5,a5,1
 9ba:	fef42223          	sw	a5,-28(s0)
 9be:	fe442783          	lw	a5,-28(s0)
 9c2:	fc043703          	ld	a4,-64(s0)
 9c6:	97ba                	add	a5,a5,a4
 9c8:	0007c783          	lbu	a5,0(a5)
 9cc:	dc0795e3          	bnez	a5,796 <vprintf+0x20>
 9d0:	0001                	nop
 9d2:	0001                	nop
 9d4:	60a6                	ld	ra,72(sp)
 9d6:	6406                	ld	s0,64(sp)
 9d8:	6161                	addi	sp,sp,80
 9da:	8082                	ret

00000000000009dc <fprintf>:
 9dc:	7159                	addi	sp,sp,-112
 9de:	fc06                	sd	ra,56(sp)
 9e0:	f822                	sd	s0,48(sp)
 9e2:	0080                	addi	s0,sp,64
 9e4:	fcb43823          	sd	a1,-48(s0)
 9e8:	e010                	sd	a2,0(s0)
 9ea:	e414                	sd	a3,8(s0)
 9ec:	e818                	sd	a4,16(s0)
 9ee:	ec1c                	sd	a5,24(s0)
 9f0:	03043023          	sd	a6,32(s0)
 9f4:	03143423          	sd	a7,40(s0)
 9f8:	87aa                	mv	a5,a0
 9fa:	fcf42e23          	sw	a5,-36(s0)
 9fe:	03040793          	addi	a5,s0,48
 a02:	fcf43423          	sd	a5,-56(s0)
 a06:	fc843783          	ld	a5,-56(s0)
 a0a:	fd078793          	addi	a5,a5,-48
 a0e:	fef43423          	sd	a5,-24(s0)
 a12:	fe843703          	ld	a4,-24(s0)
 a16:	fdc42783          	lw	a5,-36(s0)
 a1a:	863a                	mv	a2,a4
 a1c:	fd043583          	ld	a1,-48(s0)
 a20:	853e                	mv	a0,a5
 a22:	00000097          	auipc	ra,0x0
 a26:	d54080e7          	jalr	-684(ra) # 776 <vprintf>
 a2a:	0001                	nop
 a2c:	70e2                	ld	ra,56(sp)
 a2e:	7442                	ld	s0,48(sp)
 a30:	6165                	addi	sp,sp,112
 a32:	8082                	ret

0000000000000a34 <printf>:
 a34:	7159                	addi	sp,sp,-112
 a36:	f406                	sd	ra,40(sp)
 a38:	f022                	sd	s0,32(sp)
 a3a:	1800                	addi	s0,sp,48
 a3c:	fca43c23          	sd	a0,-40(s0)
 a40:	e40c                	sd	a1,8(s0)
 a42:	e810                	sd	a2,16(s0)
 a44:	ec14                	sd	a3,24(s0)
 a46:	f018                	sd	a4,32(s0)
 a48:	f41c                	sd	a5,40(s0)
 a4a:	03043823          	sd	a6,48(s0)
 a4e:	03143c23          	sd	a7,56(s0)
 a52:	04040793          	addi	a5,s0,64
 a56:	fcf43823          	sd	a5,-48(s0)
 a5a:	fd043783          	ld	a5,-48(s0)
 a5e:	fc878793          	addi	a5,a5,-56
 a62:	fef43423          	sd	a5,-24(s0)
 a66:	fe843783          	ld	a5,-24(s0)
 a6a:	863e                	mv	a2,a5
 a6c:	fd843583          	ld	a1,-40(s0)
 a70:	4505                	li	a0,1
 a72:	00000097          	auipc	ra,0x0
 a76:	d04080e7          	jalr	-764(ra) # 776 <vprintf>
 a7a:	0001                	nop
 a7c:	70a2                	ld	ra,40(sp)
 a7e:	7402                	ld	s0,32(sp)
 a80:	6165                	addi	sp,sp,112
 a82:	8082                	ret

0000000000000a84 <free>:
 a84:	7179                	addi	sp,sp,-48
 a86:	f422                	sd	s0,40(sp)
 a88:	1800                	addi	s0,sp,48
 a8a:	fca43c23          	sd	a0,-40(s0)
 a8e:	fd843783          	ld	a5,-40(s0)
 a92:	17c1                	addi	a5,a5,-16
 a94:	fef43023          	sd	a5,-32(s0)
 a98:	00000797          	auipc	a5,0x0
 a9c:	30078793          	addi	a5,a5,768 # d98 <freep>
 aa0:	639c                	ld	a5,0(a5)
 aa2:	fef43423          	sd	a5,-24(s0)
 aa6:	a815                	j	ada <free+0x56>
 aa8:	fe843783          	ld	a5,-24(s0)
 aac:	639c                	ld	a5,0(a5)
 aae:	fe843703          	ld	a4,-24(s0)
 ab2:	00f76f63          	bltu	a4,a5,ad0 <free+0x4c>
 ab6:	fe043703          	ld	a4,-32(s0)
 aba:	fe843783          	ld	a5,-24(s0)
 abe:	02e7eb63          	bltu	a5,a4,af4 <free+0x70>
 ac2:	fe843783          	ld	a5,-24(s0)
 ac6:	639c                	ld	a5,0(a5)
 ac8:	fe043703          	ld	a4,-32(s0)
 acc:	02f76463          	bltu	a4,a5,af4 <free+0x70>
 ad0:	fe843783          	ld	a5,-24(s0)
 ad4:	639c                	ld	a5,0(a5)
 ad6:	fef43423          	sd	a5,-24(s0)
 ada:	fe043703          	ld	a4,-32(s0)
 ade:	fe843783          	ld	a5,-24(s0)
 ae2:	fce7f3e3          	bgeu	a5,a4,aa8 <free+0x24>
 ae6:	fe843783          	ld	a5,-24(s0)
 aea:	639c                	ld	a5,0(a5)
 aec:	fe043703          	ld	a4,-32(s0)
 af0:	faf77ce3          	bgeu	a4,a5,aa8 <free+0x24>
 af4:	fe043783          	ld	a5,-32(s0)
 af8:	479c                	lw	a5,8(a5)
 afa:	1782                	slli	a5,a5,0x20
 afc:	9381                	srli	a5,a5,0x20
 afe:	0792                	slli	a5,a5,0x4
 b00:	fe043703          	ld	a4,-32(s0)
 b04:	973e                	add	a4,a4,a5
 b06:	fe843783          	ld	a5,-24(s0)
 b0a:	639c                	ld	a5,0(a5)
 b0c:	02f71763          	bne	a4,a5,b3a <free+0xb6>
 b10:	fe043783          	ld	a5,-32(s0)
 b14:	4798                	lw	a4,8(a5)
 b16:	fe843783          	ld	a5,-24(s0)
 b1a:	639c                	ld	a5,0(a5)
 b1c:	479c                	lw	a5,8(a5)
 b1e:	9fb9                	addw	a5,a5,a4
 b20:	0007871b          	sext.w	a4,a5
 b24:	fe043783          	ld	a5,-32(s0)
 b28:	c798                	sw	a4,8(a5)
 b2a:	fe843783          	ld	a5,-24(s0)
 b2e:	639c                	ld	a5,0(a5)
 b30:	6398                	ld	a4,0(a5)
 b32:	fe043783          	ld	a5,-32(s0)
 b36:	e398                	sd	a4,0(a5)
 b38:	a039                	j	b46 <free+0xc2>
 b3a:	fe843783          	ld	a5,-24(s0)
 b3e:	6398                	ld	a4,0(a5)
 b40:	fe043783          	ld	a5,-32(s0)
 b44:	e398                	sd	a4,0(a5)
 b46:	fe843783          	ld	a5,-24(s0)
 b4a:	479c                	lw	a5,8(a5)
 b4c:	1782                	slli	a5,a5,0x20
 b4e:	9381                	srli	a5,a5,0x20
 b50:	0792                	slli	a5,a5,0x4
 b52:	fe843703          	ld	a4,-24(s0)
 b56:	97ba                	add	a5,a5,a4
 b58:	fe043703          	ld	a4,-32(s0)
 b5c:	02f71563          	bne	a4,a5,b86 <free+0x102>
 b60:	fe843783          	ld	a5,-24(s0)
 b64:	4798                	lw	a4,8(a5)
 b66:	fe043783          	ld	a5,-32(s0)
 b6a:	479c                	lw	a5,8(a5)
 b6c:	9fb9                	addw	a5,a5,a4
 b6e:	0007871b          	sext.w	a4,a5
 b72:	fe843783          	ld	a5,-24(s0)
 b76:	c798                	sw	a4,8(a5)
 b78:	fe043783          	ld	a5,-32(s0)
 b7c:	6398                	ld	a4,0(a5)
 b7e:	fe843783          	ld	a5,-24(s0)
 b82:	e398                	sd	a4,0(a5)
 b84:	a031                	j	b90 <free+0x10c>
 b86:	fe843783          	ld	a5,-24(s0)
 b8a:	fe043703          	ld	a4,-32(s0)
 b8e:	e398                	sd	a4,0(a5)
 b90:	00000797          	auipc	a5,0x0
 b94:	20878793          	addi	a5,a5,520 # d98 <freep>
 b98:	fe843703          	ld	a4,-24(s0)
 b9c:	e398                	sd	a4,0(a5)
 b9e:	0001                	nop
 ba0:	7422                	ld	s0,40(sp)
 ba2:	6145                	addi	sp,sp,48
 ba4:	8082                	ret

0000000000000ba6 <morecore>:
 ba6:	7179                	addi	sp,sp,-48
 ba8:	f406                	sd	ra,40(sp)
 baa:	f022                	sd	s0,32(sp)
 bac:	1800                	addi	s0,sp,48
 bae:	87aa                	mv	a5,a0
 bb0:	fcf42e23          	sw	a5,-36(s0)
 bb4:	fdc42783          	lw	a5,-36(s0)
 bb8:	0007871b          	sext.w	a4,a5
 bbc:	6785                	lui	a5,0x1
 bbe:	00f77563          	bgeu	a4,a5,bc8 <morecore+0x22>
 bc2:	6785                	lui	a5,0x1
 bc4:	fcf42e23          	sw	a5,-36(s0)
 bc8:	fdc42783          	lw	a5,-36(s0)
 bcc:	0047979b          	slliw	a5,a5,0x4
 bd0:	2781                	sext.w	a5,a5
 bd2:	2781                	sext.w	a5,a5
 bd4:	853e                	mv	a0,a5
 bd6:	00000097          	auipc	ra,0x0
 bda:	9b8080e7          	jalr	-1608(ra) # 58e <sbrk>
 bde:	fea43423          	sd	a0,-24(s0)
 be2:	fe843703          	ld	a4,-24(s0)
 be6:	57fd                	li	a5,-1
 be8:	00f71463          	bne	a4,a5,bf0 <morecore+0x4a>
 bec:	4781                	li	a5,0
 bee:	a03d                	j	c1c <morecore+0x76>
 bf0:	fe843783          	ld	a5,-24(s0)
 bf4:	fef43023          	sd	a5,-32(s0)
 bf8:	fe043783          	ld	a5,-32(s0)
 bfc:	fdc42703          	lw	a4,-36(s0)
 c00:	c798                	sw	a4,8(a5)
 c02:	fe043783          	ld	a5,-32(s0)
 c06:	07c1                	addi	a5,a5,16
 c08:	853e                	mv	a0,a5
 c0a:	00000097          	auipc	ra,0x0
 c0e:	e7a080e7          	jalr	-390(ra) # a84 <free>
 c12:	00000797          	auipc	a5,0x0
 c16:	18678793          	addi	a5,a5,390 # d98 <freep>
 c1a:	639c                	ld	a5,0(a5)
 c1c:	853e                	mv	a0,a5
 c1e:	70a2                	ld	ra,40(sp)
 c20:	7402                	ld	s0,32(sp)
 c22:	6145                	addi	sp,sp,48
 c24:	8082                	ret

0000000000000c26 <malloc>:
 c26:	7139                	addi	sp,sp,-64
 c28:	fc06                	sd	ra,56(sp)
 c2a:	f822                	sd	s0,48(sp)
 c2c:	0080                	addi	s0,sp,64
 c2e:	87aa                	mv	a5,a0
 c30:	fcf42623          	sw	a5,-52(s0)
 c34:	fcc46783          	lwu	a5,-52(s0)
 c38:	07bd                	addi	a5,a5,15
 c3a:	8391                	srli	a5,a5,0x4
 c3c:	2781                	sext.w	a5,a5
 c3e:	2785                	addiw	a5,a5,1
 c40:	fcf42e23          	sw	a5,-36(s0)
 c44:	00000797          	auipc	a5,0x0
 c48:	15478793          	addi	a5,a5,340 # d98 <freep>
 c4c:	639c                	ld	a5,0(a5)
 c4e:	fef43023          	sd	a5,-32(s0)
 c52:	fe043783          	ld	a5,-32(s0)
 c56:	ef95                	bnez	a5,c92 <malloc+0x6c>
 c58:	00000797          	auipc	a5,0x0
 c5c:	13078793          	addi	a5,a5,304 # d88 <base>
 c60:	fef43023          	sd	a5,-32(s0)
 c64:	00000797          	auipc	a5,0x0
 c68:	13478793          	addi	a5,a5,308 # d98 <freep>
 c6c:	fe043703          	ld	a4,-32(s0)
 c70:	e398                	sd	a4,0(a5)
 c72:	00000797          	auipc	a5,0x0
 c76:	12678793          	addi	a5,a5,294 # d98 <freep>
 c7a:	6398                	ld	a4,0(a5)
 c7c:	00000797          	auipc	a5,0x0
 c80:	10c78793          	addi	a5,a5,268 # d88 <base>
 c84:	e398                	sd	a4,0(a5)
 c86:	00000797          	auipc	a5,0x0
 c8a:	10278793          	addi	a5,a5,258 # d88 <base>
 c8e:	0007a423          	sw	zero,8(a5)
 c92:	fe043783          	ld	a5,-32(s0)
 c96:	639c                	ld	a5,0(a5)
 c98:	fef43423          	sd	a5,-24(s0)
 c9c:	fe843783          	ld	a5,-24(s0)
 ca0:	4798                	lw	a4,8(a5)
 ca2:	fdc42783          	lw	a5,-36(s0)
 ca6:	2781                	sext.w	a5,a5
 ca8:	06f76863          	bltu	a4,a5,d18 <malloc+0xf2>
 cac:	fe843783          	ld	a5,-24(s0)
 cb0:	4798                	lw	a4,8(a5)
 cb2:	fdc42783          	lw	a5,-36(s0)
 cb6:	2781                	sext.w	a5,a5
 cb8:	00e79963          	bne	a5,a4,cca <malloc+0xa4>
 cbc:	fe843783          	ld	a5,-24(s0)
 cc0:	6398                	ld	a4,0(a5)
 cc2:	fe043783          	ld	a5,-32(s0)
 cc6:	e398                	sd	a4,0(a5)
 cc8:	a82d                	j	d02 <malloc+0xdc>
 cca:	fe843783          	ld	a5,-24(s0)
 cce:	4798                	lw	a4,8(a5)
 cd0:	fdc42783          	lw	a5,-36(s0)
 cd4:	40f707bb          	subw	a5,a4,a5
 cd8:	0007871b          	sext.w	a4,a5
 cdc:	fe843783          	ld	a5,-24(s0)
 ce0:	c798                	sw	a4,8(a5)
 ce2:	fe843783          	ld	a5,-24(s0)
 ce6:	479c                	lw	a5,8(a5)
 ce8:	1782                	slli	a5,a5,0x20
 cea:	9381                	srli	a5,a5,0x20
 cec:	0792                	slli	a5,a5,0x4
 cee:	fe843703          	ld	a4,-24(s0)
 cf2:	97ba                	add	a5,a5,a4
 cf4:	fef43423          	sd	a5,-24(s0)
 cf8:	fe843783          	ld	a5,-24(s0)
 cfc:	fdc42703          	lw	a4,-36(s0)
 d00:	c798                	sw	a4,8(a5)
 d02:	00000797          	auipc	a5,0x0
 d06:	09678793          	addi	a5,a5,150 # d98 <freep>
 d0a:	fe043703          	ld	a4,-32(s0)
 d0e:	e398                	sd	a4,0(a5)
 d10:	fe843783          	ld	a5,-24(s0)
 d14:	07c1                	addi	a5,a5,16
 d16:	a091                	j	d5a <malloc+0x134>
 d18:	00000797          	auipc	a5,0x0
 d1c:	08078793          	addi	a5,a5,128 # d98 <freep>
 d20:	639c                	ld	a5,0(a5)
 d22:	fe843703          	ld	a4,-24(s0)
 d26:	02f71063          	bne	a4,a5,d46 <malloc+0x120>
 d2a:	fdc42783          	lw	a5,-36(s0)
 d2e:	853e                	mv	a0,a5
 d30:	00000097          	auipc	ra,0x0
 d34:	e76080e7          	jalr	-394(ra) # ba6 <morecore>
 d38:	fea43423          	sd	a0,-24(s0)
 d3c:	fe843783          	ld	a5,-24(s0)
 d40:	e399                	bnez	a5,d46 <malloc+0x120>
 d42:	4781                	li	a5,0
 d44:	a819                	j	d5a <malloc+0x134>
 d46:	fe843783          	ld	a5,-24(s0)
 d4a:	fef43023          	sd	a5,-32(s0)
 d4e:	fe843783          	ld	a5,-24(s0)
 d52:	639c                	ld	a5,0(a5)
 d54:	fef43423          	sd	a5,-24(s0)
 d58:	b791                	j	c9c <malloc+0x76>
 d5a:	853e                	mv	a0,a5
 d5c:	70e2                	ld	ra,56(sp)
 d5e:	7442                	ld	s0,48(sp)
 d60:	6121                	addi	sp,sp,64
 d62:	8082                	ret
