
user/_ls:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <fmtname>:
       0:	7139                	addi	sp,sp,-64
       2:	fc06                	sd	ra,56(sp)
       4:	f822                	sd	s0,48(sp)
       6:	f426                	sd	s1,40(sp)
       8:	0080                	addi	s0,sp,64
       a:	fca43423          	sd	a0,-56(s0)
       e:	fc843503          	ld	a0,-56(s0)
      12:	00000097          	auipc	ra,0x0
      16:	42e080e7          	jalr	1070(ra) # 440 <strlen>
      1a:	87aa                	mv	a5,a0
      1c:	2781                	sext.w	a5,a5
      1e:	1782                	slli	a5,a5,0x20
      20:	9381                	srli	a5,a5,0x20
      22:	fc843703          	ld	a4,-56(s0)
      26:	97ba                	add	a5,a5,a4
      28:	fcf43c23          	sd	a5,-40(s0)
      2c:	a031                	j	38 <fmtname+0x38>
      2e:	fd843783          	ld	a5,-40(s0)
      32:	17fd                	addi	a5,a5,-1
      34:	fcf43c23          	sd	a5,-40(s0)
      38:	fd843703          	ld	a4,-40(s0)
      3c:	fc843783          	ld	a5,-56(s0)
      40:	00f76b63          	bltu	a4,a5,56 <fmtname+0x56>
      44:	fd843783          	ld	a5,-40(s0)
      48:	0007c783          	lbu	a5,0(a5)
      4c:	873e                	mv	a4,a5
      4e:	02f00793          	li	a5,47
      52:	fcf71ee3          	bne	a4,a5,2e <fmtname+0x2e>
      56:	fd843783          	ld	a5,-40(s0)
      5a:	0785                	addi	a5,a5,1
      5c:	fcf43c23          	sd	a5,-40(s0)
      60:	fd843503          	ld	a0,-40(s0)
      64:	00000097          	auipc	ra,0x0
      68:	3dc080e7          	jalr	988(ra) # 440 <strlen>
      6c:	87aa                	mv	a5,a0
      6e:	2781                	sext.w	a5,a5
      70:	873e                	mv	a4,a5
      72:	47b5                	li	a5,13
      74:	00e7f563          	bgeu	a5,a4,7e <fmtname+0x7e>
      78:	fd843783          	ld	a5,-40(s0)
      7c:	a8b5                	j	f8 <fmtname+0xf8>
      7e:	fd843503          	ld	a0,-40(s0)
      82:	00000097          	auipc	ra,0x0
      86:	3be080e7          	jalr	958(ra) # 440 <strlen>
      8a:	87aa                	mv	a5,a0
      8c:	2781                	sext.w	a5,a5
      8e:	2781                	sext.w	a5,a5
      90:	863e                	mv	a2,a5
      92:	fd843583          	ld	a1,-40(s0)
      96:	00001517          	auipc	a0,0x1
      9a:	0f250513          	addi	a0,a0,242 # 1188 <buf.0>
      9e:	00000097          	auipc	ra,0x0
      a2:	5fc080e7          	jalr	1532(ra) # 69a <memmove>
      a6:	fd843503          	ld	a0,-40(s0)
      aa:	00000097          	auipc	ra,0x0
      ae:	396080e7          	jalr	918(ra) # 440 <strlen>
      b2:	87aa                	mv	a5,a0
      b4:	2781                	sext.w	a5,a5
      b6:	02079713          	slli	a4,a5,0x20
      ba:	9301                	srli	a4,a4,0x20
      bc:	00001797          	auipc	a5,0x1
      c0:	0cc78793          	addi	a5,a5,204 # 1188 <buf.0>
      c4:	00f704b3          	add	s1,a4,a5
      c8:	fd843503          	ld	a0,-40(s0)
      cc:	00000097          	auipc	ra,0x0
      d0:	374080e7          	jalr	884(ra) # 440 <strlen>
      d4:	87aa                	mv	a5,a0
      d6:	2781                	sext.w	a5,a5
      d8:	4739                	li	a4,14
      da:	40f707bb          	subw	a5,a4,a5
      de:	2781                	sext.w	a5,a5
      e0:	863e                	mv	a2,a5
      e2:	02000593          	li	a1,32
      e6:	8526                	mv	a0,s1
      e8:	00000097          	auipc	ra,0x0
      ec:	38e080e7          	jalr	910(ra) # 476 <memset>
      f0:	00001797          	auipc	a5,0x1
      f4:	09878793          	addi	a5,a5,152 # 1188 <buf.0>
      f8:	853e                	mv	a0,a5
      fa:	70e2                	ld	ra,56(sp)
      fc:	7442                	ld	s0,48(sp)
      fe:	74a2                	ld	s1,40(sp)
     100:	6121                	addi	sp,sp,64
     102:	8082                	ret

0000000000000104 <ls>:
     104:	da010113          	addi	sp,sp,-608
     108:	24113c23          	sd	ra,600(sp)
     10c:	24813823          	sd	s0,592(sp)
     110:	1480                	addi	s0,sp,608
     112:	daa43423          	sd	a0,-600(s0)
     116:	4581                	li	a1,0
     118:	da843503          	ld	a0,-600(s0)
     11c:	00000097          	auipc	ra,0x0
     120:	744080e7          	jalr	1860(ra) # 860 <open>
     124:	87aa                	mv	a5,a0
     126:	fef42623          	sw	a5,-20(s0)
     12a:	fec42783          	lw	a5,-20(s0)
     12e:	2781                	sext.w	a5,a5
     130:	0007de63          	bgez	a5,14c <ls+0x48>
     134:	da843603          	ld	a2,-600(s0)
     138:	00001597          	auipc	a1,0x1
     13c:	fc058593          	addi	a1,a1,-64 # 10f8 <longjmp_1+0x8>
     140:	4509                	li	a0,2
     142:	00001097          	auipc	ra,0x1
     146:	bb4080e7          	jalr	-1100(ra) # cf6 <fprintf>
     14a:	aa6d                	j	304 <ls+0x200>
     14c:	db840713          	addi	a4,s0,-584
     150:	fec42783          	lw	a5,-20(s0)
     154:	85ba                	mv	a1,a4
     156:	853e                	mv	a0,a5
     158:	00000097          	auipc	ra,0x0
     15c:	720080e7          	jalr	1824(ra) # 878 <fstat>
     160:	87aa                	mv	a5,a0
     162:	0207d563          	bgez	a5,18c <ls+0x88>
     166:	da843603          	ld	a2,-600(s0)
     16a:	00001597          	auipc	a1,0x1
     16e:	fa658593          	addi	a1,a1,-90 # 1110 <longjmp_1+0x20>
     172:	4509                	li	a0,2
     174:	00001097          	auipc	ra,0x1
     178:	b82080e7          	jalr	-1150(ra) # cf6 <fprintf>
     17c:	fec42783          	lw	a5,-20(s0)
     180:	853e                	mv	a0,a5
     182:	00000097          	auipc	ra,0x0
     186:	6c6080e7          	jalr	1734(ra) # 848 <close>
     18a:	aaad                	j	304 <ls+0x200>
     18c:	dc041783          	lh	a5,-576(s0)
     190:	0007871b          	sext.w	a4,a5
     194:	86ba                	mv	a3,a4
     196:	4785                	li	a5,1
     198:	02f68d63          	beq	a3,a5,1d2 <ls+0xce>
     19c:	4789                	li	a5,2
     19e:	14f71c63          	bne	a4,a5,2f6 <ls+0x1f2>
     1a2:	da843503          	ld	a0,-600(s0)
     1a6:	00000097          	auipc	ra,0x0
     1aa:	e5a080e7          	jalr	-422(ra) # 0 <fmtname>
     1ae:	85aa                	mv	a1,a0
     1b0:	dc041783          	lh	a5,-576(s0)
     1b4:	2781                	sext.w	a5,a5
     1b6:	dbc42683          	lw	a3,-580(s0)
     1ba:	dc843703          	ld	a4,-568(s0)
     1be:	863e                	mv	a2,a5
     1c0:	00001517          	auipc	a0,0x1
     1c4:	f6850513          	addi	a0,a0,-152 # 1128 <longjmp_1+0x38>
     1c8:	00001097          	auipc	ra,0x1
     1cc:	b86080e7          	jalr	-1146(ra) # d4e <printf>
     1d0:	a21d                	j	2f6 <ls+0x1f2>
     1d2:	da843503          	ld	a0,-600(s0)
     1d6:	00000097          	auipc	ra,0x0
     1da:	26a080e7          	jalr	618(ra) # 440 <strlen>
     1de:	87aa                	mv	a5,a0
     1e0:	2781                	sext.w	a5,a5
     1e2:	27c1                	addiw	a5,a5,16
     1e4:	2781                	sext.w	a5,a5
     1e6:	873e                	mv	a4,a5
     1e8:	20000793          	li	a5,512
     1ec:	00e7fb63          	bgeu	a5,a4,202 <ls+0xfe>
     1f0:	00001517          	auipc	a0,0x1
     1f4:	f4850513          	addi	a0,a0,-184 # 1138 <longjmp_1+0x48>
     1f8:	00001097          	auipc	ra,0x1
     1fc:	b56080e7          	jalr	-1194(ra) # d4e <printf>
     200:	a8dd                	j	2f6 <ls+0x1f2>
     202:	de040793          	addi	a5,s0,-544
     206:	da843583          	ld	a1,-600(s0)
     20a:	853e                	mv	a0,a5
     20c:	00000097          	auipc	ra,0x0
     210:	184080e7          	jalr	388(ra) # 390 <strcpy>
     214:	de040793          	addi	a5,s0,-544
     218:	853e                	mv	a0,a5
     21a:	00000097          	auipc	ra,0x0
     21e:	226080e7          	jalr	550(ra) # 440 <strlen>
     222:	87aa                	mv	a5,a0
     224:	2781                	sext.w	a5,a5
     226:	1782                	slli	a5,a5,0x20
     228:	9381                	srli	a5,a5,0x20
     22a:	de040713          	addi	a4,s0,-544
     22e:	97ba                	add	a5,a5,a4
     230:	fef43023          	sd	a5,-32(s0)
     234:	fe043783          	ld	a5,-32(s0)
     238:	00178713          	addi	a4,a5,1
     23c:	fee43023          	sd	a4,-32(s0)
     240:	02f00713          	li	a4,47
     244:	00e78023          	sb	a4,0(a5)
     248:	a071                	j	2d4 <ls+0x1d0>
     24a:	dd045783          	lhu	a5,-560(s0)
     24e:	e391                	bnez	a5,252 <ls+0x14e>
     250:	a051                	j	2d4 <ls+0x1d0>
     252:	dd040793          	addi	a5,s0,-560
     256:	0789                	addi	a5,a5,2
     258:	4639                	li	a2,14
     25a:	85be                	mv	a1,a5
     25c:	fe043503          	ld	a0,-32(s0)
     260:	00000097          	auipc	ra,0x0
     264:	43a080e7          	jalr	1082(ra) # 69a <memmove>
     268:	fe043783          	ld	a5,-32(s0)
     26c:	07b9                	addi	a5,a5,14
     26e:	00078023          	sb	zero,0(a5)
     272:	db840713          	addi	a4,s0,-584
     276:	de040793          	addi	a5,s0,-544
     27a:	85ba                	mv	a1,a4
     27c:	853e                	mv	a0,a5
     27e:	00000097          	auipc	ra,0x0
     282:	344080e7          	jalr	836(ra) # 5c2 <stat>
     286:	87aa                	mv	a5,a0
     288:	0007de63          	bgez	a5,2a4 <ls+0x1a0>
     28c:	de040793          	addi	a5,s0,-544
     290:	85be                	mv	a1,a5
     292:	00001517          	auipc	a0,0x1
     296:	e7e50513          	addi	a0,a0,-386 # 1110 <longjmp_1+0x20>
     29a:	00001097          	auipc	ra,0x1
     29e:	ab4080e7          	jalr	-1356(ra) # d4e <printf>
     2a2:	a80d                	j	2d4 <ls+0x1d0>
     2a4:	de040793          	addi	a5,s0,-544
     2a8:	853e                	mv	a0,a5
     2aa:	00000097          	auipc	ra,0x0
     2ae:	d56080e7          	jalr	-682(ra) # 0 <fmtname>
     2b2:	85aa                	mv	a1,a0
     2b4:	dc041783          	lh	a5,-576(s0)
     2b8:	2781                	sext.w	a5,a5
     2ba:	dbc42683          	lw	a3,-580(s0)
     2be:	dc843703          	ld	a4,-568(s0)
     2c2:	863e                	mv	a2,a5
     2c4:	00001517          	auipc	a0,0x1
     2c8:	e8c50513          	addi	a0,a0,-372 # 1150 <longjmp_1+0x60>
     2cc:	00001097          	auipc	ra,0x1
     2d0:	a82080e7          	jalr	-1406(ra) # d4e <printf>
     2d4:	dd040713          	addi	a4,s0,-560
     2d8:	fec42783          	lw	a5,-20(s0)
     2dc:	4641                	li	a2,16
     2de:	85ba                	mv	a1,a4
     2e0:	853e                	mv	a0,a5
     2e2:	00000097          	auipc	ra,0x0
     2e6:	556080e7          	jalr	1366(ra) # 838 <read>
     2ea:	87aa                	mv	a5,a0
     2ec:	873e                	mv	a4,a5
     2ee:	47c1                	li	a5,16
     2f0:	f4f70de3          	beq	a4,a5,24a <ls+0x146>
     2f4:	0001                	nop
     2f6:	fec42783          	lw	a5,-20(s0)
     2fa:	853e                	mv	a0,a5
     2fc:	00000097          	auipc	ra,0x0
     300:	54c080e7          	jalr	1356(ra) # 848 <close>
     304:	25813083          	ld	ra,600(sp)
     308:	25013403          	ld	s0,592(sp)
     30c:	26010113          	addi	sp,sp,608
     310:	8082                	ret

0000000000000312 <main>:
     312:	7179                	addi	sp,sp,-48
     314:	f406                	sd	ra,40(sp)
     316:	f022                	sd	s0,32(sp)
     318:	1800                	addi	s0,sp,48
     31a:	87aa                	mv	a5,a0
     31c:	fcb43823          	sd	a1,-48(s0)
     320:	fcf42e23          	sw	a5,-36(s0)
     324:	fdc42783          	lw	a5,-36(s0)
     328:	0007871b          	sext.w	a4,a5
     32c:	4785                	li	a5,1
     32e:	00e7cf63          	blt	a5,a4,34c <main+0x3a>
     332:	00001517          	auipc	a0,0x1
     336:	e2e50513          	addi	a0,a0,-466 # 1160 <longjmp_1+0x70>
     33a:	00000097          	auipc	ra,0x0
     33e:	dca080e7          	jalr	-566(ra) # 104 <ls>
     342:	4501                	li	a0,0
     344:	00000097          	auipc	ra,0x0
     348:	4dc080e7          	jalr	1244(ra) # 820 <exit>
     34c:	4785                	li	a5,1
     34e:	fef42623          	sw	a5,-20(s0)
     352:	a015                	j	376 <main+0x64>
     354:	fec42783          	lw	a5,-20(s0)
     358:	078e                	slli	a5,a5,0x3
     35a:	fd043703          	ld	a4,-48(s0)
     35e:	97ba                	add	a5,a5,a4
     360:	639c                	ld	a5,0(a5)
     362:	853e                	mv	a0,a5
     364:	00000097          	auipc	ra,0x0
     368:	da0080e7          	jalr	-608(ra) # 104 <ls>
     36c:	fec42783          	lw	a5,-20(s0)
     370:	2785                	addiw	a5,a5,1
     372:	fef42623          	sw	a5,-20(s0)
     376:	fec42703          	lw	a4,-20(s0)
     37a:	fdc42783          	lw	a5,-36(s0)
     37e:	2701                	sext.w	a4,a4
     380:	2781                	sext.w	a5,a5
     382:	fcf749e3          	blt	a4,a5,354 <main+0x42>
     386:	4501                	li	a0,0
     388:	00000097          	auipc	ra,0x0
     38c:	498080e7          	jalr	1176(ra) # 820 <exit>

0000000000000390 <strcpy>:
     390:	7179                	addi	sp,sp,-48
     392:	f422                	sd	s0,40(sp)
     394:	1800                	addi	s0,sp,48
     396:	fca43c23          	sd	a0,-40(s0)
     39a:	fcb43823          	sd	a1,-48(s0)
     39e:	fd843783          	ld	a5,-40(s0)
     3a2:	fef43423          	sd	a5,-24(s0)
     3a6:	0001                	nop
     3a8:	fd043703          	ld	a4,-48(s0)
     3ac:	00170793          	addi	a5,a4,1
     3b0:	fcf43823          	sd	a5,-48(s0)
     3b4:	fd843783          	ld	a5,-40(s0)
     3b8:	00178693          	addi	a3,a5,1
     3bc:	fcd43c23          	sd	a3,-40(s0)
     3c0:	00074703          	lbu	a4,0(a4)
     3c4:	00e78023          	sb	a4,0(a5)
     3c8:	0007c783          	lbu	a5,0(a5)
     3cc:	fff1                	bnez	a5,3a8 <strcpy+0x18>
     3ce:	fe843783          	ld	a5,-24(s0)
     3d2:	853e                	mv	a0,a5
     3d4:	7422                	ld	s0,40(sp)
     3d6:	6145                	addi	sp,sp,48
     3d8:	8082                	ret

00000000000003da <strcmp>:
     3da:	1101                	addi	sp,sp,-32
     3dc:	ec22                	sd	s0,24(sp)
     3de:	1000                	addi	s0,sp,32
     3e0:	fea43423          	sd	a0,-24(s0)
     3e4:	feb43023          	sd	a1,-32(s0)
     3e8:	a819                	j	3fe <strcmp+0x24>
     3ea:	fe843783          	ld	a5,-24(s0)
     3ee:	0785                	addi	a5,a5,1
     3f0:	fef43423          	sd	a5,-24(s0)
     3f4:	fe043783          	ld	a5,-32(s0)
     3f8:	0785                	addi	a5,a5,1
     3fa:	fef43023          	sd	a5,-32(s0)
     3fe:	fe843783          	ld	a5,-24(s0)
     402:	0007c783          	lbu	a5,0(a5)
     406:	cb99                	beqz	a5,41c <strcmp+0x42>
     408:	fe843783          	ld	a5,-24(s0)
     40c:	0007c703          	lbu	a4,0(a5)
     410:	fe043783          	ld	a5,-32(s0)
     414:	0007c783          	lbu	a5,0(a5)
     418:	fcf709e3          	beq	a4,a5,3ea <strcmp+0x10>
     41c:	fe843783          	ld	a5,-24(s0)
     420:	0007c783          	lbu	a5,0(a5)
     424:	0007871b          	sext.w	a4,a5
     428:	fe043783          	ld	a5,-32(s0)
     42c:	0007c783          	lbu	a5,0(a5)
     430:	2781                	sext.w	a5,a5
     432:	40f707bb          	subw	a5,a4,a5
     436:	2781                	sext.w	a5,a5
     438:	853e                	mv	a0,a5
     43a:	6462                	ld	s0,24(sp)
     43c:	6105                	addi	sp,sp,32
     43e:	8082                	ret

0000000000000440 <strlen>:
     440:	7179                	addi	sp,sp,-48
     442:	f422                	sd	s0,40(sp)
     444:	1800                	addi	s0,sp,48
     446:	fca43c23          	sd	a0,-40(s0)
     44a:	fe042623          	sw	zero,-20(s0)
     44e:	a031                	j	45a <strlen+0x1a>
     450:	fec42783          	lw	a5,-20(s0)
     454:	2785                	addiw	a5,a5,1
     456:	fef42623          	sw	a5,-20(s0)
     45a:	fec42783          	lw	a5,-20(s0)
     45e:	fd843703          	ld	a4,-40(s0)
     462:	97ba                	add	a5,a5,a4
     464:	0007c783          	lbu	a5,0(a5)
     468:	f7e5                	bnez	a5,450 <strlen+0x10>
     46a:	fec42783          	lw	a5,-20(s0)
     46e:	853e                	mv	a0,a5
     470:	7422                	ld	s0,40(sp)
     472:	6145                	addi	sp,sp,48
     474:	8082                	ret

0000000000000476 <memset>:
     476:	7179                	addi	sp,sp,-48
     478:	f422                	sd	s0,40(sp)
     47a:	1800                	addi	s0,sp,48
     47c:	fca43c23          	sd	a0,-40(s0)
     480:	87ae                	mv	a5,a1
     482:	8732                	mv	a4,a2
     484:	fcf42a23          	sw	a5,-44(s0)
     488:	87ba                	mv	a5,a4
     48a:	fcf42823          	sw	a5,-48(s0)
     48e:	fd843783          	ld	a5,-40(s0)
     492:	fef43023          	sd	a5,-32(s0)
     496:	fe042623          	sw	zero,-20(s0)
     49a:	a00d                	j	4bc <memset+0x46>
     49c:	fec42783          	lw	a5,-20(s0)
     4a0:	fe043703          	ld	a4,-32(s0)
     4a4:	97ba                	add	a5,a5,a4
     4a6:	fd442703          	lw	a4,-44(s0)
     4aa:	0ff77713          	andi	a4,a4,255
     4ae:	00e78023          	sb	a4,0(a5)
     4b2:	fec42783          	lw	a5,-20(s0)
     4b6:	2785                	addiw	a5,a5,1
     4b8:	fef42623          	sw	a5,-20(s0)
     4bc:	fec42703          	lw	a4,-20(s0)
     4c0:	fd042783          	lw	a5,-48(s0)
     4c4:	2781                	sext.w	a5,a5
     4c6:	fcf76be3          	bltu	a4,a5,49c <memset+0x26>
     4ca:	fd843783          	ld	a5,-40(s0)
     4ce:	853e                	mv	a0,a5
     4d0:	7422                	ld	s0,40(sp)
     4d2:	6145                	addi	sp,sp,48
     4d4:	8082                	ret

00000000000004d6 <strchr>:
     4d6:	1101                	addi	sp,sp,-32
     4d8:	ec22                	sd	s0,24(sp)
     4da:	1000                	addi	s0,sp,32
     4dc:	fea43423          	sd	a0,-24(s0)
     4e0:	87ae                	mv	a5,a1
     4e2:	fef403a3          	sb	a5,-25(s0)
     4e6:	a01d                	j	50c <strchr+0x36>
     4e8:	fe843783          	ld	a5,-24(s0)
     4ec:	0007c703          	lbu	a4,0(a5)
     4f0:	fe744783          	lbu	a5,-25(s0)
     4f4:	0ff7f793          	andi	a5,a5,255
     4f8:	00e79563          	bne	a5,a4,502 <strchr+0x2c>
     4fc:	fe843783          	ld	a5,-24(s0)
     500:	a821                	j	518 <strchr+0x42>
     502:	fe843783          	ld	a5,-24(s0)
     506:	0785                	addi	a5,a5,1
     508:	fef43423          	sd	a5,-24(s0)
     50c:	fe843783          	ld	a5,-24(s0)
     510:	0007c783          	lbu	a5,0(a5)
     514:	fbf1                	bnez	a5,4e8 <strchr+0x12>
     516:	4781                	li	a5,0
     518:	853e                	mv	a0,a5
     51a:	6462                	ld	s0,24(sp)
     51c:	6105                	addi	sp,sp,32
     51e:	8082                	ret

0000000000000520 <gets>:
     520:	7179                	addi	sp,sp,-48
     522:	f406                	sd	ra,40(sp)
     524:	f022                	sd	s0,32(sp)
     526:	1800                	addi	s0,sp,48
     528:	fca43c23          	sd	a0,-40(s0)
     52c:	87ae                	mv	a5,a1
     52e:	fcf42a23          	sw	a5,-44(s0)
     532:	fe042623          	sw	zero,-20(s0)
     536:	a8a1                	j	58e <gets+0x6e>
     538:	fe740793          	addi	a5,s0,-25
     53c:	4605                	li	a2,1
     53e:	85be                	mv	a1,a5
     540:	4501                	li	a0,0
     542:	00000097          	auipc	ra,0x0
     546:	2f6080e7          	jalr	758(ra) # 838 <read>
     54a:	87aa                	mv	a5,a0
     54c:	fef42423          	sw	a5,-24(s0)
     550:	fe842783          	lw	a5,-24(s0)
     554:	2781                	sext.w	a5,a5
     556:	04f05763          	blez	a5,5a4 <gets+0x84>
     55a:	fec42783          	lw	a5,-20(s0)
     55e:	0017871b          	addiw	a4,a5,1
     562:	fee42623          	sw	a4,-20(s0)
     566:	873e                	mv	a4,a5
     568:	fd843783          	ld	a5,-40(s0)
     56c:	97ba                	add	a5,a5,a4
     56e:	fe744703          	lbu	a4,-25(s0)
     572:	00e78023          	sb	a4,0(a5)
     576:	fe744783          	lbu	a5,-25(s0)
     57a:	873e                	mv	a4,a5
     57c:	47a9                	li	a5,10
     57e:	02f70463          	beq	a4,a5,5a6 <gets+0x86>
     582:	fe744783          	lbu	a5,-25(s0)
     586:	873e                	mv	a4,a5
     588:	47b5                	li	a5,13
     58a:	00f70e63          	beq	a4,a5,5a6 <gets+0x86>
     58e:	fec42783          	lw	a5,-20(s0)
     592:	2785                	addiw	a5,a5,1
     594:	0007871b          	sext.w	a4,a5
     598:	fd442783          	lw	a5,-44(s0)
     59c:	2781                	sext.w	a5,a5
     59e:	f8f74de3          	blt	a4,a5,538 <gets+0x18>
     5a2:	a011                	j	5a6 <gets+0x86>
     5a4:	0001                	nop
     5a6:	fec42783          	lw	a5,-20(s0)
     5aa:	fd843703          	ld	a4,-40(s0)
     5ae:	97ba                	add	a5,a5,a4
     5b0:	00078023          	sb	zero,0(a5)
     5b4:	fd843783          	ld	a5,-40(s0)
     5b8:	853e                	mv	a0,a5
     5ba:	70a2                	ld	ra,40(sp)
     5bc:	7402                	ld	s0,32(sp)
     5be:	6145                	addi	sp,sp,48
     5c0:	8082                	ret

00000000000005c2 <stat>:
     5c2:	7179                	addi	sp,sp,-48
     5c4:	f406                	sd	ra,40(sp)
     5c6:	f022                	sd	s0,32(sp)
     5c8:	1800                	addi	s0,sp,48
     5ca:	fca43c23          	sd	a0,-40(s0)
     5ce:	fcb43823          	sd	a1,-48(s0)
     5d2:	4581                	li	a1,0
     5d4:	fd843503          	ld	a0,-40(s0)
     5d8:	00000097          	auipc	ra,0x0
     5dc:	288080e7          	jalr	648(ra) # 860 <open>
     5e0:	87aa                	mv	a5,a0
     5e2:	fef42623          	sw	a5,-20(s0)
     5e6:	fec42783          	lw	a5,-20(s0)
     5ea:	2781                	sext.w	a5,a5
     5ec:	0007d463          	bgez	a5,5f4 <stat+0x32>
     5f0:	57fd                	li	a5,-1
     5f2:	a035                	j	61e <stat+0x5c>
     5f4:	fec42783          	lw	a5,-20(s0)
     5f8:	fd043583          	ld	a1,-48(s0)
     5fc:	853e                	mv	a0,a5
     5fe:	00000097          	auipc	ra,0x0
     602:	27a080e7          	jalr	634(ra) # 878 <fstat>
     606:	87aa                	mv	a5,a0
     608:	fef42423          	sw	a5,-24(s0)
     60c:	fec42783          	lw	a5,-20(s0)
     610:	853e                	mv	a0,a5
     612:	00000097          	auipc	ra,0x0
     616:	236080e7          	jalr	566(ra) # 848 <close>
     61a:	fe842783          	lw	a5,-24(s0)
     61e:	853e                	mv	a0,a5
     620:	70a2                	ld	ra,40(sp)
     622:	7402                	ld	s0,32(sp)
     624:	6145                	addi	sp,sp,48
     626:	8082                	ret

0000000000000628 <atoi>:
     628:	7179                	addi	sp,sp,-48
     62a:	f422                	sd	s0,40(sp)
     62c:	1800                	addi	s0,sp,48
     62e:	fca43c23          	sd	a0,-40(s0)
     632:	fe042623          	sw	zero,-20(s0)
     636:	a815                	j	66a <atoi+0x42>
     638:	fec42703          	lw	a4,-20(s0)
     63c:	87ba                	mv	a5,a4
     63e:	0027979b          	slliw	a5,a5,0x2
     642:	9fb9                	addw	a5,a5,a4
     644:	0017979b          	slliw	a5,a5,0x1
     648:	0007871b          	sext.w	a4,a5
     64c:	fd843783          	ld	a5,-40(s0)
     650:	00178693          	addi	a3,a5,1
     654:	fcd43c23          	sd	a3,-40(s0)
     658:	0007c783          	lbu	a5,0(a5)
     65c:	2781                	sext.w	a5,a5
     65e:	9fb9                	addw	a5,a5,a4
     660:	2781                	sext.w	a5,a5
     662:	fd07879b          	addiw	a5,a5,-48
     666:	fef42623          	sw	a5,-20(s0)
     66a:	fd843783          	ld	a5,-40(s0)
     66e:	0007c783          	lbu	a5,0(a5)
     672:	873e                	mv	a4,a5
     674:	02f00793          	li	a5,47
     678:	00e7fb63          	bgeu	a5,a4,68e <atoi+0x66>
     67c:	fd843783          	ld	a5,-40(s0)
     680:	0007c783          	lbu	a5,0(a5)
     684:	873e                	mv	a4,a5
     686:	03900793          	li	a5,57
     68a:	fae7f7e3          	bgeu	a5,a4,638 <atoi+0x10>
     68e:	fec42783          	lw	a5,-20(s0)
     692:	853e                	mv	a0,a5
     694:	7422                	ld	s0,40(sp)
     696:	6145                	addi	sp,sp,48
     698:	8082                	ret

000000000000069a <memmove>:
     69a:	7139                	addi	sp,sp,-64
     69c:	fc22                	sd	s0,56(sp)
     69e:	0080                	addi	s0,sp,64
     6a0:	fca43c23          	sd	a0,-40(s0)
     6a4:	fcb43823          	sd	a1,-48(s0)
     6a8:	87b2                	mv	a5,a2
     6aa:	fcf42623          	sw	a5,-52(s0)
     6ae:	fd843783          	ld	a5,-40(s0)
     6b2:	fef43423          	sd	a5,-24(s0)
     6b6:	fd043783          	ld	a5,-48(s0)
     6ba:	fef43023          	sd	a5,-32(s0)
     6be:	fe043703          	ld	a4,-32(s0)
     6c2:	fe843783          	ld	a5,-24(s0)
     6c6:	02e7fc63          	bgeu	a5,a4,6fe <memmove+0x64>
     6ca:	a00d                	j	6ec <memmove+0x52>
     6cc:	fe043703          	ld	a4,-32(s0)
     6d0:	00170793          	addi	a5,a4,1
     6d4:	fef43023          	sd	a5,-32(s0)
     6d8:	fe843783          	ld	a5,-24(s0)
     6dc:	00178693          	addi	a3,a5,1
     6e0:	fed43423          	sd	a3,-24(s0)
     6e4:	00074703          	lbu	a4,0(a4)
     6e8:	00e78023          	sb	a4,0(a5)
     6ec:	fcc42783          	lw	a5,-52(s0)
     6f0:	fff7871b          	addiw	a4,a5,-1
     6f4:	fce42623          	sw	a4,-52(s0)
     6f8:	fcf04ae3          	bgtz	a5,6cc <memmove+0x32>
     6fc:	a891                	j	750 <memmove+0xb6>
     6fe:	fcc42783          	lw	a5,-52(s0)
     702:	fe843703          	ld	a4,-24(s0)
     706:	97ba                	add	a5,a5,a4
     708:	fef43423          	sd	a5,-24(s0)
     70c:	fcc42783          	lw	a5,-52(s0)
     710:	fe043703          	ld	a4,-32(s0)
     714:	97ba                	add	a5,a5,a4
     716:	fef43023          	sd	a5,-32(s0)
     71a:	a01d                	j	740 <memmove+0xa6>
     71c:	fe043783          	ld	a5,-32(s0)
     720:	17fd                	addi	a5,a5,-1
     722:	fef43023          	sd	a5,-32(s0)
     726:	fe843783          	ld	a5,-24(s0)
     72a:	17fd                	addi	a5,a5,-1
     72c:	fef43423          	sd	a5,-24(s0)
     730:	fe043783          	ld	a5,-32(s0)
     734:	0007c703          	lbu	a4,0(a5)
     738:	fe843783          	ld	a5,-24(s0)
     73c:	00e78023          	sb	a4,0(a5)
     740:	fcc42783          	lw	a5,-52(s0)
     744:	fff7871b          	addiw	a4,a5,-1
     748:	fce42623          	sw	a4,-52(s0)
     74c:	fcf048e3          	bgtz	a5,71c <memmove+0x82>
     750:	fd843783          	ld	a5,-40(s0)
     754:	853e                	mv	a0,a5
     756:	7462                	ld	s0,56(sp)
     758:	6121                	addi	sp,sp,64
     75a:	8082                	ret

000000000000075c <memcmp>:
     75c:	7139                	addi	sp,sp,-64
     75e:	fc22                	sd	s0,56(sp)
     760:	0080                	addi	s0,sp,64
     762:	fca43c23          	sd	a0,-40(s0)
     766:	fcb43823          	sd	a1,-48(s0)
     76a:	87b2                	mv	a5,a2
     76c:	fcf42623          	sw	a5,-52(s0)
     770:	fd843783          	ld	a5,-40(s0)
     774:	fef43423          	sd	a5,-24(s0)
     778:	fd043783          	ld	a5,-48(s0)
     77c:	fef43023          	sd	a5,-32(s0)
     780:	a0a1                	j	7c8 <memcmp+0x6c>
     782:	fe843783          	ld	a5,-24(s0)
     786:	0007c703          	lbu	a4,0(a5)
     78a:	fe043783          	ld	a5,-32(s0)
     78e:	0007c783          	lbu	a5,0(a5)
     792:	02f70163          	beq	a4,a5,7b4 <memcmp+0x58>
     796:	fe843783          	ld	a5,-24(s0)
     79a:	0007c783          	lbu	a5,0(a5)
     79e:	0007871b          	sext.w	a4,a5
     7a2:	fe043783          	ld	a5,-32(s0)
     7a6:	0007c783          	lbu	a5,0(a5)
     7aa:	2781                	sext.w	a5,a5
     7ac:	40f707bb          	subw	a5,a4,a5
     7b0:	2781                	sext.w	a5,a5
     7b2:	a01d                	j	7d8 <memcmp+0x7c>
     7b4:	fe843783          	ld	a5,-24(s0)
     7b8:	0785                	addi	a5,a5,1
     7ba:	fef43423          	sd	a5,-24(s0)
     7be:	fe043783          	ld	a5,-32(s0)
     7c2:	0785                	addi	a5,a5,1
     7c4:	fef43023          	sd	a5,-32(s0)
     7c8:	fcc42783          	lw	a5,-52(s0)
     7cc:	fff7871b          	addiw	a4,a5,-1
     7d0:	fce42623          	sw	a4,-52(s0)
     7d4:	f7dd                	bnez	a5,782 <memcmp+0x26>
     7d6:	4781                	li	a5,0
     7d8:	853e                	mv	a0,a5
     7da:	7462                	ld	s0,56(sp)
     7dc:	6121                	addi	sp,sp,64
     7de:	8082                	ret

00000000000007e0 <memcpy>:
     7e0:	7179                	addi	sp,sp,-48
     7e2:	f406                	sd	ra,40(sp)
     7e4:	f022                	sd	s0,32(sp)
     7e6:	1800                	addi	s0,sp,48
     7e8:	fea43423          	sd	a0,-24(s0)
     7ec:	feb43023          	sd	a1,-32(s0)
     7f0:	87b2                	mv	a5,a2
     7f2:	fcf42e23          	sw	a5,-36(s0)
     7f6:	fdc42783          	lw	a5,-36(s0)
     7fa:	863e                	mv	a2,a5
     7fc:	fe043583          	ld	a1,-32(s0)
     800:	fe843503          	ld	a0,-24(s0)
     804:	00000097          	auipc	ra,0x0
     808:	e96080e7          	jalr	-362(ra) # 69a <memmove>
     80c:	87aa                	mv	a5,a0
     80e:	853e                	mv	a0,a5
     810:	70a2                	ld	ra,40(sp)
     812:	7402                	ld	s0,32(sp)
     814:	6145                	addi	sp,sp,48
     816:	8082                	ret

0000000000000818 <fork>:
     818:	4885                	li	a7,1
     81a:	00000073          	ecall
     81e:	8082                	ret

0000000000000820 <exit>:
     820:	4889                	li	a7,2
     822:	00000073          	ecall
     826:	8082                	ret

0000000000000828 <wait>:
     828:	488d                	li	a7,3
     82a:	00000073          	ecall
     82e:	8082                	ret

0000000000000830 <pipe>:
     830:	4891                	li	a7,4
     832:	00000073          	ecall
     836:	8082                	ret

0000000000000838 <read>:
     838:	4895                	li	a7,5
     83a:	00000073          	ecall
     83e:	8082                	ret

0000000000000840 <write>:
     840:	48c1                	li	a7,16
     842:	00000073          	ecall
     846:	8082                	ret

0000000000000848 <close>:
     848:	48d5                	li	a7,21
     84a:	00000073          	ecall
     84e:	8082                	ret

0000000000000850 <kill>:
     850:	4899                	li	a7,6
     852:	00000073          	ecall
     856:	8082                	ret

0000000000000858 <exec>:
     858:	489d                	li	a7,7
     85a:	00000073          	ecall
     85e:	8082                	ret

0000000000000860 <open>:
     860:	48bd                	li	a7,15
     862:	00000073          	ecall
     866:	8082                	ret

0000000000000868 <mknod>:
     868:	48c5                	li	a7,17
     86a:	00000073          	ecall
     86e:	8082                	ret

0000000000000870 <unlink>:
     870:	48c9                	li	a7,18
     872:	00000073          	ecall
     876:	8082                	ret

0000000000000878 <fstat>:
     878:	48a1                	li	a7,8
     87a:	00000073          	ecall
     87e:	8082                	ret

0000000000000880 <link>:
     880:	48cd                	li	a7,19
     882:	00000073          	ecall
     886:	8082                	ret

0000000000000888 <mkdir>:
     888:	48d1                	li	a7,20
     88a:	00000073          	ecall
     88e:	8082                	ret

0000000000000890 <chdir>:
     890:	48a5                	li	a7,9
     892:	00000073          	ecall
     896:	8082                	ret

0000000000000898 <dup>:
     898:	48a9                	li	a7,10
     89a:	00000073          	ecall
     89e:	8082                	ret

00000000000008a0 <getpid>:
     8a0:	48ad                	li	a7,11
     8a2:	00000073          	ecall
     8a6:	8082                	ret

00000000000008a8 <sbrk>:
     8a8:	48b1                	li	a7,12
     8aa:	00000073          	ecall
     8ae:	8082                	ret

00000000000008b0 <sleep>:
     8b0:	48b5                	li	a7,13
     8b2:	00000073          	ecall
     8b6:	8082                	ret

00000000000008b8 <uptime>:
     8b8:	48b9                	li	a7,14
     8ba:	00000073          	ecall
     8be:	8082                	ret

00000000000008c0 <putc>:
     8c0:	1101                	addi	sp,sp,-32
     8c2:	ec06                	sd	ra,24(sp)
     8c4:	e822                	sd	s0,16(sp)
     8c6:	1000                	addi	s0,sp,32
     8c8:	87aa                	mv	a5,a0
     8ca:	872e                	mv	a4,a1
     8cc:	fef42623          	sw	a5,-20(s0)
     8d0:	87ba                	mv	a5,a4
     8d2:	fef405a3          	sb	a5,-21(s0)
     8d6:	feb40713          	addi	a4,s0,-21
     8da:	fec42783          	lw	a5,-20(s0)
     8de:	4605                	li	a2,1
     8e0:	85ba                	mv	a1,a4
     8e2:	853e                	mv	a0,a5
     8e4:	00000097          	auipc	ra,0x0
     8e8:	f5c080e7          	jalr	-164(ra) # 840 <write>
     8ec:	0001                	nop
     8ee:	60e2                	ld	ra,24(sp)
     8f0:	6442                	ld	s0,16(sp)
     8f2:	6105                	addi	sp,sp,32
     8f4:	8082                	ret

00000000000008f6 <printint>:
     8f6:	7139                	addi	sp,sp,-64
     8f8:	fc06                	sd	ra,56(sp)
     8fa:	f822                	sd	s0,48(sp)
     8fc:	0080                	addi	s0,sp,64
     8fe:	87aa                	mv	a5,a0
     900:	8736                	mv	a4,a3
     902:	fcf42623          	sw	a5,-52(s0)
     906:	87ae                	mv	a5,a1
     908:	fcf42423          	sw	a5,-56(s0)
     90c:	87b2                	mv	a5,a2
     90e:	fcf42223          	sw	a5,-60(s0)
     912:	87ba                	mv	a5,a4
     914:	fcf42023          	sw	a5,-64(s0)
     918:	fe042423          	sw	zero,-24(s0)
     91c:	fc042783          	lw	a5,-64(s0)
     920:	2781                	sext.w	a5,a5
     922:	c38d                	beqz	a5,944 <printint+0x4e>
     924:	fc842783          	lw	a5,-56(s0)
     928:	2781                	sext.w	a5,a5
     92a:	0007dd63          	bgez	a5,944 <printint+0x4e>
     92e:	4785                	li	a5,1
     930:	fef42423          	sw	a5,-24(s0)
     934:	fc842783          	lw	a5,-56(s0)
     938:	40f007bb          	negw	a5,a5
     93c:	2781                	sext.w	a5,a5
     93e:	fef42223          	sw	a5,-28(s0)
     942:	a029                	j	94c <printint+0x56>
     944:	fc842783          	lw	a5,-56(s0)
     948:	fef42223          	sw	a5,-28(s0)
     94c:	fe042623          	sw	zero,-20(s0)
     950:	fc442783          	lw	a5,-60(s0)
     954:	fe442703          	lw	a4,-28(s0)
     958:	02f777bb          	remuw	a5,a4,a5
     95c:	0007861b          	sext.w	a2,a5
     960:	fec42783          	lw	a5,-20(s0)
     964:	0017871b          	addiw	a4,a5,1
     968:	fee42623          	sw	a4,-20(s0)
     96c:	00001697          	auipc	a3,0x1
     970:	80468693          	addi	a3,a3,-2044 # 1170 <digits>
     974:	02061713          	slli	a4,a2,0x20
     978:	9301                	srli	a4,a4,0x20
     97a:	9736                	add	a4,a4,a3
     97c:	00074703          	lbu	a4,0(a4)
     980:	ff040693          	addi	a3,s0,-16
     984:	97b6                	add	a5,a5,a3
     986:	fee78023          	sb	a4,-32(a5)
     98a:	fc442783          	lw	a5,-60(s0)
     98e:	fe442703          	lw	a4,-28(s0)
     992:	02f757bb          	divuw	a5,a4,a5
     996:	fef42223          	sw	a5,-28(s0)
     99a:	fe442783          	lw	a5,-28(s0)
     99e:	2781                	sext.w	a5,a5
     9a0:	fbc5                	bnez	a5,950 <printint+0x5a>
     9a2:	fe842783          	lw	a5,-24(s0)
     9a6:	2781                	sext.w	a5,a5
     9a8:	cf95                	beqz	a5,9e4 <printint+0xee>
     9aa:	fec42783          	lw	a5,-20(s0)
     9ae:	0017871b          	addiw	a4,a5,1
     9b2:	fee42623          	sw	a4,-20(s0)
     9b6:	ff040713          	addi	a4,s0,-16
     9ba:	97ba                	add	a5,a5,a4
     9bc:	02d00713          	li	a4,45
     9c0:	fee78023          	sb	a4,-32(a5)
     9c4:	a005                	j	9e4 <printint+0xee>
     9c6:	fec42783          	lw	a5,-20(s0)
     9ca:	ff040713          	addi	a4,s0,-16
     9ce:	97ba                	add	a5,a5,a4
     9d0:	fe07c703          	lbu	a4,-32(a5)
     9d4:	fcc42783          	lw	a5,-52(s0)
     9d8:	85ba                	mv	a1,a4
     9da:	853e                	mv	a0,a5
     9dc:	00000097          	auipc	ra,0x0
     9e0:	ee4080e7          	jalr	-284(ra) # 8c0 <putc>
     9e4:	fec42783          	lw	a5,-20(s0)
     9e8:	37fd                	addiw	a5,a5,-1
     9ea:	fef42623          	sw	a5,-20(s0)
     9ee:	fec42783          	lw	a5,-20(s0)
     9f2:	2781                	sext.w	a5,a5
     9f4:	fc07d9e3          	bgez	a5,9c6 <printint+0xd0>
     9f8:	0001                	nop
     9fa:	0001                	nop
     9fc:	70e2                	ld	ra,56(sp)
     9fe:	7442                	ld	s0,48(sp)
     a00:	6121                	addi	sp,sp,64
     a02:	8082                	ret

0000000000000a04 <printptr>:
     a04:	7179                	addi	sp,sp,-48
     a06:	f406                	sd	ra,40(sp)
     a08:	f022                	sd	s0,32(sp)
     a0a:	1800                	addi	s0,sp,48
     a0c:	87aa                	mv	a5,a0
     a0e:	fcb43823          	sd	a1,-48(s0)
     a12:	fcf42e23          	sw	a5,-36(s0)
     a16:	fdc42783          	lw	a5,-36(s0)
     a1a:	03000593          	li	a1,48
     a1e:	853e                	mv	a0,a5
     a20:	00000097          	auipc	ra,0x0
     a24:	ea0080e7          	jalr	-352(ra) # 8c0 <putc>
     a28:	fdc42783          	lw	a5,-36(s0)
     a2c:	07800593          	li	a1,120
     a30:	853e                	mv	a0,a5
     a32:	00000097          	auipc	ra,0x0
     a36:	e8e080e7          	jalr	-370(ra) # 8c0 <putc>
     a3a:	fe042623          	sw	zero,-20(s0)
     a3e:	a82d                	j	a78 <printptr+0x74>
     a40:	fd043783          	ld	a5,-48(s0)
     a44:	93f1                	srli	a5,a5,0x3c
     a46:	00000717          	auipc	a4,0x0
     a4a:	72a70713          	addi	a4,a4,1834 # 1170 <digits>
     a4e:	97ba                	add	a5,a5,a4
     a50:	0007c703          	lbu	a4,0(a5)
     a54:	fdc42783          	lw	a5,-36(s0)
     a58:	85ba                	mv	a1,a4
     a5a:	853e                	mv	a0,a5
     a5c:	00000097          	auipc	ra,0x0
     a60:	e64080e7          	jalr	-412(ra) # 8c0 <putc>
     a64:	fec42783          	lw	a5,-20(s0)
     a68:	2785                	addiw	a5,a5,1
     a6a:	fef42623          	sw	a5,-20(s0)
     a6e:	fd043783          	ld	a5,-48(s0)
     a72:	0792                	slli	a5,a5,0x4
     a74:	fcf43823          	sd	a5,-48(s0)
     a78:	fec42783          	lw	a5,-20(s0)
     a7c:	873e                	mv	a4,a5
     a7e:	47bd                	li	a5,15
     a80:	fce7f0e3          	bgeu	a5,a4,a40 <printptr+0x3c>
     a84:	0001                	nop
     a86:	0001                	nop
     a88:	70a2                	ld	ra,40(sp)
     a8a:	7402                	ld	s0,32(sp)
     a8c:	6145                	addi	sp,sp,48
     a8e:	8082                	ret

0000000000000a90 <vprintf>:
     a90:	715d                	addi	sp,sp,-80
     a92:	e486                	sd	ra,72(sp)
     a94:	e0a2                	sd	s0,64(sp)
     a96:	0880                	addi	s0,sp,80
     a98:	87aa                	mv	a5,a0
     a9a:	fcb43023          	sd	a1,-64(s0)
     a9e:	fac43c23          	sd	a2,-72(s0)
     aa2:	fcf42623          	sw	a5,-52(s0)
     aa6:	fe042023          	sw	zero,-32(s0)
     aaa:	fe042223          	sw	zero,-28(s0)
     aae:	a42d                	j	cd8 <vprintf+0x248>
     ab0:	fe442783          	lw	a5,-28(s0)
     ab4:	fc043703          	ld	a4,-64(s0)
     ab8:	97ba                	add	a5,a5,a4
     aba:	0007c783          	lbu	a5,0(a5)
     abe:	fcf42e23          	sw	a5,-36(s0)
     ac2:	fe042783          	lw	a5,-32(s0)
     ac6:	2781                	sext.w	a5,a5
     ac8:	eb9d                	bnez	a5,afe <vprintf+0x6e>
     aca:	fdc42783          	lw	a5,-36(s0)
     ace:	0007871b          	sext.w	a4,a5
     ad2:	02500793          	li	a5,37
     ad6:	00f71763          	bne	a4,a5,ae4 <vprintf+0x54>
     ada:	02500793          	li	a5,37
     ade:	fef42023          	sw	a5,-32(s0)
     ae2:	a2f5                	j	cce <vprintf+0x23e>
     ae4:	fdc42783          	lw	a5,-36(s0)
     ae8:	0ff7f713          	andi	a4,a5,255
     aec:	fcc42783          	lw	a5,-52(s0)
     af0:	85ba                	mv	a1,a4
     af2:	853e                	mv	a0,a5
     af4:	00000097          	auipc	ra,0x0
     af8:	dcc080e7          	jalr	-564(ra) # 8c0 <putc>
     afc:	aac9                	j	cce <vprintf+0x23e>
     afe:	fe042783          	lw	a5,-32(s0)
     b02:	0007871b          	sext.w	a4,a5
     b06:	02500793          	li	a5,37
     b0a:	1cf71263          	bne	a4,a5,cce <vprintf+0x23e>
     b0e:	fdc42783          	lw	a5,-36(s0)
     b12:	0007871b          	sext.w	a4,a5
     b16:	06400793          	li	a5,100
     b1a:	02f71463          	bne	a4,a5,b42 <vprintf+0xb2>
     b1e:	fb843783          	ld	a5,-72(s0)
     b22:	00878713          	addi	a4,a5,8
     b26:	fae43c23          	sd	a4,-72(s0)
     b2a:	4398                	lw	a4,0(a5)
     b2c:	fcc42783          	lw	a5,-52(s0)
     b30:	4685                	li	a3,1
     b32:	4629                	li	a2,10
     b34:	85ba                	mv	a1,a4
     b36:	853e                	mv	a0,a5
     b38:	00000097          	auipc	ra,0x0
     b3c:	dbe080e7          	jalr	-578(ra) # 8f6 <printint>
     b40:	a269                	j	cca <vprintf+0x23a>
     b42:	fdc42783          	lw	a5,-36(s0)
     b46:	0007871b          	sext.w	a4,a5
     b4a:	06c00793          	li	a5,108
     b4e:	02f71663          	bne	a4,a5,b7a <vprintf+0xea>
     b52:	fb843783          	ld	a5,-72(s0)
     b56:	00878713          	addi	a4,a5,8
     b5a:	fae43c23          	sd	a4,-72(s0)
     b5e:	639c                	ld	a5,0(a5)
     b60:	0007871b          	sext.w	a4,a5
     b64:	fcc42783          	lw	a5,-52(s0)
     b68:	4681                	li	a3,0
     b6a:	4629                	li	a2,10
     b6c:	85ba                	mv	a1,a4
     b6e:	853e                	mv	a0,a5
     b70:	00000097          	auipc	ra,0x0
     b74:	d86080e7          	jalr	-634(ra) # 8f6 <printint>
     b78:	aa89                	j	cca <vprintf+0x23a>
     b7a:	fdc42783          	lw	a5,-36(s0)
     b7e:	0007871b          	sext.w	a4,a5
     b82:	07800793          	li	a5,120
     b86:	02f71463          	bne	a4,a5,bae <vprintf+0x11e>
     b8a:	fb843783          	ld	a5,-72(s0)
     b8e:	00878713          	addi	a4,a5,8
     b92:	fae43c23          	sd	a4,-72(s0)
     b96:	4398                	lw	a4,0(a5)
     b98:	fcc42783          	lw	a5,-52(s0)
     b9c:	4681                	li	a3,0
     b9e:	4641                	li	a2,16
     ba0:	85ba                	mv	a1,a4
     ba2:	853e                	mv	a0,a5
     ba4:	00000097          	auipc	ra,0x0
     ba8:	d52080e7          	jalr	-686(ra) # 8f6 <printint>
     bac:	aa39                	j	cca <vprintf+0x23a>
     bae:	fdc42783          	lw	a5,-36(s0)
     bb2:	0007871b          	sext.w	a4,a5
     bb6:	07000793          	li	a5,112
     bba:	02f71263          	bne	a4,a5,bde <vprintf+0x14e>
     bbe:	fb843783          	ld	a5,-72(s0)
     bc2:	00878713          	addi	a4,a5,8
     bc6:	fae43c23          	sd	a4,-72(s0)
     bca:	6398                	ld	a4,0(a5)
     bcc:	fcc42783          	lw	a5,-52(s0)
     bd0:	85ba                	mv	a1,a4
     bd2:	853e                	mv	a0,a5
     bd4:	00000097          	auipc	ra,0x0
     bd8:	e30080e7          	jalr	-464(ra) # a04 <printptr>
     bdc:	a0fd                	j	cca <vprintf+0x23a>
     bde:	fdc42783          	lw	a5,-36(s0)
     be2:	0007871b          	sext.w	a4,a5
     be6:	07300793          	li	a5,115
     bea:	04f71c63          	bne	a4,a5,c42 <vprintf+0x1b2>
     bee:	fb843783          	ld	a5,-72(s0)
     bf2:	00878713          	addi	a4,a5,8
     bf6:	fae43c23          	sd	a4,-72(s0)
     bfa:	639c                	ld	a5,0(a5)
     bfc:	fef43423          	sd	a5,-24(s0)
     c00:	fe843783          	ld	a5,-24(s0)
     c04:	eb8d                	bnez	a5,c36 <vprintf+0x1a6>
     c06:	00000797          	auipc	a5,0x0
     c0a:	56278793          	addi	a5,a5,1378 # 1168 <longjmp_1+0x78>
     c0e:	fef43423          	sd	a5,-24(s0)
     c12:	a015                	j	c36 <vprintf+0x1a6>
     c14:	fe843783          	ld	a5,-24(s0)
     c18:	0007c703          	lbu	a4,0(a5)
     c1c:	fcc42783          	lw	a5,-52(s0)
     c20:	85ba                	mv	a1,a4
     c22:	853e                	mv	a0,a5
     c24:	00000097          	auipc	ra,0x0
     c28:	c9c080e7          	jalr	-868(ra) # 8c0 <putc>
     c2c:	fe843783          	ld	a5,-24(s0)
     c30:	0785                	addi	a5,a5,1
     c32:	fef43423          	sd	a5,-24(s0)
     c36:	fe843783          	ld	a5,-24(s0)
     c3a:	0007c783          	lbu	a5,0(a5)
     c3e:	fbf9                	bnez	a5,c14 <vprintf+0x184>
     c40:	a069                	j	cca <vprintf+0x23a>
     c42:	fdc42783          	lw	a5,-36(s0)
     c46:	0007871b          	sext.w	a4,a5
     c4a:	06300793          	li	a5,99
     c4e:	02f71463          	bne	a4,a5,c76 <vprintf+0x1e6>
     c52:	fb843783          	ld	a5,-72(s0)
     c56:	00878713          	addi	a4,a5,8
     c5a:	fae43c23          	sd	a4,-72(s0)
     c5e:	439c                	lw	a5,0(a5)
     c60:	0ff7f713          	andi	a4,a5,255
     c64:	fcc42783          	lw	a5,-52(s0)
     c68:	85ba                	mv	a1,a4
     c6a:	853e                	mv	a0,a5
     c6c:	00000097          	auipc	ra,0x0
     c70:	c54080e7          	jalr	-940(ra) # 8c0 <putc>
     c74:	a899                	j	cca <vprintf+0x23a>
     c76:	fdc42783          	lw	a5,-36(s0)
     c7a:	0007871b          	sext.w	a4,a5
     c7e:	02500793          	li	a5,37
     c82:	00f71f63          	bne	a4,a5,ca0 <vprintf+0x210>
     c86:	fdc42783          	lw	a5,-36(s0)
     c8a:	0ff7f713          	andi	a4,a5,255
     c8e:	fcc42783          	lw	a5,-52(s0)
     c92:	85ba                	mv	a1,a4
     c94:	853e                	mv	a0,a5
     c96:	00000097          	auipc	ra,0x0
     c9a:	c2a080e7          	jalr	-982(ra) # 8c0 <putc>
     c9e:	a035                	j	cca <vprintf+0x23a>
     ca0:	fcc42783          	lw	a5,-52(s0)
     ca4:	02500593          	li	a1,37
     ca8:	853e                	mv	a0,a5
     caa:	00000097          	auipc	ra,0x0
     cae:	c16080e7          	jalr	-1002(ra) # 8c0 <putc>
     cb2:	fdc42783          	lw	a5,-36(s0)
     cb6:	0ff7f713          	andi	a4,a5,255
     cba:	fcc42783          	lw	a5,-52(s0)
     cbe:	85ba                	mv	a1,a4
     cc0:	853e                	mv	a0,a5
     cc2:	00000097          	auipc	ra,0x0
     cc6:	bfe080e7          	jalr	-1026(ra) # 8c0 <putc>
     cca:	fe042023          	sw	zero,-32(s0)
     cce:	fe442783          	lw	a5,-28(s0)
     cd2:	2785                	addiw	a5,a5,1
     cd4:	fef42223          	sw	a5,-28(s0)
     cd8:	fe442783          	lw	a5,-28(s0)
     cdc:	fc043703          	ld	a4,-64(s0)
     ce0:	97ba                	add	a5,a5,a4
     ce2:	0007c783          	lbu	a5,0(a5)
     ce6:	dc0795e3          	bnez	a5,ab0 <vprintf+0x20>
     cea:	0001                	nop
     cec:	0001                	nop
     cee:	60a6                	ld	ra,72(sp)
     cf0:	6406                	ld	s0,64(sp)
     cf2:	6161                	addi	sp,sp,80
     cf4:	8082                	ret

0000000000000cf6 <fprintf>:
     cf6:	7159                	addi	sp,sp,-112
     cf8:	fc06                	sd	ra,56(sp)
     cfa:	f822                	sd	s0,48(sp)
     cfc:	0080                	addi	s0,sp,64
     cfe:	fcb43823          	sd	a1,-48(s0)
     d02:	e010                	sd	a2,0(s0)
     d04:	e414                	sd	a3,8(s0)
     d06:	e818                	sd	a4,16(s0)
     d08:	ec1c                	sd	a5,24(s0)
     d0a:	03043023          	sd	a6,32(s0)
     d0e:	03143423          	sd	a7,40(s0)
     d12:	87aa                	mv	a5,a0
     d14:	fcf42e23          	sw	a5,-36(s0)
     d18:	03040793          	addi	a5,s0,48
     d1c:	fcf43423          	sd	a5,-56(s0)
     d20:	fc843783          	ld	a5,-56(s0)
     d24:	fd078793          	addi	a5,a5,-48
     d28:	fef43423          	sd	a5,-24(s0)
     d2c:	fe843703          	ld	a4,-24(s0)
     d30:	fdc42783          	lw	a5,-36(s0)
     d34:	863a                	mv	a2,a4
     d36:	fd043583          	ld	a1,-48(s0)
     d3a:	853e                	mv	a0,a5
     d3c:	00000097          	auipc	ra,0x0
     d40:	d54080e7          	jalr	-684(ra) # a90 <vprintf>
     d44:	0001                	nop
     d46:	70e2                	ld	ra,56(sp)
     d48:	7442                	ld	s0,48(sp)
     d4a:	6165                	addi	sp,sp,112
     d4c:	8082                	ret

0000000000000d4e <printf>:
     d4e:	7159                	addi	sp,sp,-112
     d50:	f406                	sd	ra,40(sp)
     d52:	f022                	sd	s0,32(sp)
     d54:	1800                	addi	s0,sp,48
     d56:	fca43c23          	sd	a0,-40(s0)
     d5a:	e40c                	sd	a1,8(s0)
     d5c:	e810                	sd	a2,16(s0)
     d5e:	ec14                	sd	a3,24(s0)
     d60:	f018                	sd	a4,32(s0)
     d62:	f41c                	sd	a5,40(s0)
     d64:	03043823          	sd	a6,48(s0)
     d68:	03143c23          	sd	a7,56(s0)
     d6c:	04040793          	addi	a5,s0,64
     d70:	fcf43823          	sd	a5,-48(s0)
     d74:	fd043783          	ld	a5,-48(s0)
     d78:	fc878793          	addi	a5,a5,-56
     d7c:	fef43423          	sd	a5,-24(s0)
     d80:	fe843783          	ld	a5,-24(s0)
     d84:	863e                	mv	a2,a5
     d86:	fd843583          	ld	a1,-40(s0)
     d8a:	4505                	li	a0,1
     d8c:	00000097          	auipc	ra,0x0
     d90:	d04080e7          	jalr	-764(ra) # a90 <vprintf>
     d94:	0001                	nop
     d96:	70a2                	ld	ra,40(sp)
     d98:	7402                	ld	s0,32(sp)
     d9a:	6165                	addi	sp,sp,112
     d9c:	8082                	ret

0000000000000d9e <free>:
     d9e:	7179                	addi	sp,sp,-48
     da0:	f422                	sd	s0,40(sp)
     da2:	1800                	addi	s0,sp,48
     da4:	fca43c23          	sd	a0,-40(s0)
     da8:	fd843783          	ld	a5,-40(s0)
     dac:	17c1                	addi	a5,a5,-16
     dae:	fef43023          	sd	a5,-32(s0)
     db2:	00000797          	auipc	a5,0x0
     db6:	3f678793          	addi	a5,a5,1014 # 11a8 <freep>
     dba:	639c                	ld	a5,0(a5)
     dbc:	fef43423          	sd	a5,-24(s0)
     dc0:	a815                	j	df4 <free+0x56>
     dc2:	fe843783          	ld	a5,-24(s0)
     dc6:	639c                	ld	a5,0(a5)
     dc8:	fe843703          	ld	a4,-24(s0)
     dcc:	00f76f63          	bltu	a4,a5,dea <free+0x4c>
     dd0:	fe043703          	ld	a4,-32(s0)
     dd4:	fe843783          	ld	a5,-24(s0)
     dd8:	02e7eb63          	bltu	a5,a4,e0e <free+0x70>
     ddc:	fe843783          	ld	a5,-24(s0)
     de0:	639c                	ld	a5,0(a5)
     de2:	fe043703          	ld	a4,-32(s0)
     de6:	02f76463          	bltu	a4,a5,e0e <free+0x70>
     dea:	fe843783          	ld	a5,-24(s0)
     dee:	639c                	ld	a5,0(a5)
     df0:	fef43423          	sd	a5,-24(s0)
     df4:	fe043703          	ld	a4,-32(s0)
     df8:	fe843783          	ld	a5,-24(s0)
     dfc:	fce7f3e3          	bgeu	a5,a4,dc2 <free+0x24>
     e00:	fe843783          	ld	a5,-24(s0)
     e04:	639c                	ld	a5,0(a5)
     e06:	fe043703          	ld	a4,-32(s0)
     e0a:	faf77ce3          	bgeu	a4,a5,dc2 <free+0x24>
     e0e:	fe043783          	ld	a5,-32(s0)
     e12:	479c                	lw	a5,8(a5)
     e14:	1782                	slli	a5,a5,0x20
     e16:	9381                	srli	a5,a5,0x20
     e18:	0792                	slli	a5,a5,0x4
     e1a:	fe043703          	ld	a4,-32(s0)
     e1e:	973e                	add	a4,a4,a5
     e20:	fe843783          	ld	a5,-24(s0)
     e24:	639c                	ld	a5,0(a5)
     e26:	02f71763          	bne	a4,a5,e54 <free+0xb6>
     e2a:	fe043783          	ld	a5,-32(s0)
     e2e:	4798                	lw	a4,8(a5)
     e30:	fe843783          	ld	a5,-24(s0)
     e34:	639c                	ld	a5,0(a5)
     e36:	479c                	lw	a5,8(a5)
     e38:	9fb9                	addw	a5,a5,a4
     e3a:	0007871b          	sext.w	a4,a5
     e3e:	fe043783          	ld	a5,-32(s0)
     e42:	c798                	sw	a4,8(a5)
     e44:	fe843783          	ld	a5,-24(s0)
     e48:	639c                	ld	a5,0(a5)
     e4a:	6398                	ld	a4,0(a5)
     e4c:	fe043783          	ld	a5,-32(s0)
     e50:	e398                	sd	a4,0(a5)
     e52:	a039                	j	e60 <free+0xc2>
     e54:	fe843783          	ld	a5,-24(s0)
     e58:	6398                	ld	a4,0(a5)
     e5a:	fe043783          	ld	a5,-32(s0)
     e5e:	e398                	sd	a4,0(a5)
     e60:	fe843783          	ld	a5,-24(s0)
     e64:	479c                	lw	a5,8(a5)
     e66:	1782                	slli	a5,a5,0x20
     e68:	9381                	srli	a5,a5,0x20
     e6a:	0792                	slli	a5,a5,0x4
     e6c:	fe843703          	ld	a4,-24(s0)
     e70:	97ba                	add	a5,a5,a4
     e72:	fe043703          	ld	a4,-32(s0)
     e76:	02f71563          	bne	a4,a5,ea0 <free+0x102>
     e7a:	fe843783          	ld	a5,-24(s0)
     e7e:	4798                	lw	a4,8(a5)
     e80:	fe043783          	ld	a5,-32(s0)
     e84:	479c                	lw	a5,8(a5)
     e86:	9fb9                	addw	a5,a5,a4
     e88:	0007871b          	sext.w	a4,a5
     e8c:	fe843783          	ld	a5,-24(s0)
     e90:	c798                	sw	a4,8(a5)
     e92:	fe043783          	ld	a5,-32(s0)
     e96:	6398                	ld	a4,0(a5)
     e98:	fe843783          	ld	a5,-24(s0)
     e9c:	e398                	sd	a4,0(a5)
     e9e:	a031                	j	eaa <free+0x10c>
     ea0:	fe843783          	ld	a5,-24(s0)
     ea4:	fe043703          	ld	a4,-32(s0)
     ea8:	e398                	sd	a4,0(a5)
     eaa:	00000797          	auipc	a5,0x0
     eae:	2fe78793          	addi	a5,a5,766 # 11a8 <freep>
     eb2:	fe843703          	ld	a4,-24(s0)
     eb6:	e398                	sd	a4,0(a5)
     eb8:	0001                	nop
     eba:	7422                	ld	s0,40(sp)
     ebc:	6145                	addi	sp,sp,48
     ebe:	8082                	ret

0000000000000ec0 <morecore>:
     ec0:	7179                	addi	sp,sp,-48
     ec2:	f406                	sd	ra,40(sp)
     ec4:	f022                	sd	s0,32(sp)
     ec6:	1800                	addi	s0,sp,48
     ec8:	87aa                	mv	a5,a0
     eca:	fcf42e23          	sw	a5,-36(s0)
     ece:	fdc42783          	lw	a5,-36(s0)
     ed2:	0007871b          	sext.w	a4,a5
     ed6:	6785                	lui	a5,0x1
     ed8:	00f77563          	bgeu	a4,a5,ee2 <morecore+0x22>
     edc:	6785                	lui	a5,0x1
     ede:	fcf42e23          	sw	a5,-36(s0)
     ee2:	fdc42783          	lw	a5,-36(s0)
     ee6:	0047979b          	slliw	a5,a5,0x4
     eea:	2781                	sext.w	a5,a5
     eec:	2781                	sext.w	a5,a5
     eee:	853e                	mv	a0,a5
     ef0:	00000097          	auipc	ra,0x0
     ef4:	9b8080e7          	jalr	-1608(ra) # 8a8 <sbrk>
     ef8:	fea43423          	sd	a0,-24(s0)
     efc:	fe843703          	ld	a4,-24(s0)
     f00:	57fd                	li	a5,-1
     f02:	00f71463          	bne	a4,a5,f0a <morecore+0x4a>
     f06:	4781                	li	a5,0
     f08:	a03d                	j	f36 <morecore+0x76>
     f0a:	fe843783          	ld	a5,-24(s0)
     f0e:	fef43023          	sd	a5,-32(s0)
     f12:	fe043783          	ld	a5,-32(s0)
     f16:	fdc42703          	lw	a4,-36(s0)
     f1a:	c798                	sw	a4,8(a5)
     f1c:	fe043783          	ld	a5,-32(s0)
     f20:	07c1                	addi	a5,a5,16
     f22:	853e                	mv	a0,a5
     f24:	00000097          	auipc	ra,0x0
     f28:	e7a080e7          	jalr	-390(ra) # d9e <free>
     f2c:	00000797          	auipc	a5,0x0
     f30:	27c78793          	addi	a5,a5,636 # 11a8 <freep>
     f34:	639c                	ld	a5,0(a5)
     f36:	853e                	mv	a0,a5
     f38:	70a2                	ld	ra,40(sp)
     f3a:	7402                	ld	s0,32(sp)
     f3c:	6145                	addi	sp,sp,48
     f3e:	8082                	ret

0000000000000f40 <malloc>:
     f40:	7139                	addi	sp,sp,-64
     f42:	fc06                	sd	ra,56(sp)
     f44:	f822                	sd	s0,48(sp)
     f46:	0080                	addi	s0,sp,64
     f48:	87aa                	mv	a5,a0
     f4a:	fcf42623          	sw	a5,-52(s0)
     f4e:	fcc46783          	lwu	a5,-52(s0)
     f52:	07bd                	addi	a5,a5,15
     f54:	8391                	srli	a5,a5,0x4
     f56:	2781                	sext.w	a5,a5
     f58:	2785                	addiw	a5,a5,1
     f5a:	fcf42e23          	sw	a5,-36(s0)
     f5e:	00000797          	auipc	a5,0x0
     f62:	24a78793          	addi	a5,a5,586 # 11a8 <freep>
     f66:	639c                	ld	a5,0(a5)
     f68:	fef43023          	sd	a5,-32(s0)
     f6c:	fe043783          	ld	a5,-32(s0)
     f70:	ef95                	bnez	a5,fac <malloc+0x6c>
     f72:	00000797          	auipc	a5,0x0
     f76:	22678793          	addi	a5,a5,550 # 1198 <base>
     f7a:	fef43023          	sd	a5,-32(s0)
     f7e:	00000797          	auipc	a5,0x0
     f82:	22a78793          	addi	a5,a5,554 # 11a8 <freep>
     f86:	fe043703          	ld	a4,-32(s0)
     f8a:	e398                	sd	a4,0(a5)
     f8c:	00000797          	auipc	a5,0x0
     f90:	21c78793          	addi	a5,a5,540 # 11a8 <freep>
     f94:	6398                	ld	a4,0(a5)
     f96:	00000797          	auipc	a5,0x0
     f9a:	20278793          	addi	a5,a5,514 # 1198 <base>
     f9e:	e398                	sd	a4,0(a5)
     fa0:	00000797          	auipc	a5,0x0
     fa4:	1f878793          	addi	a5,a5,504 # 1198 <base>
     fa8:	0007a423          	sw	zero,8(a5)
     fac:	fe043783          	ld	a5,-32(s0)
     fb0:	639c                	ld	a5,0(a5)
     fb2:	fef43423          	sd	a5,-24(s0)
     fb6:	fe843783          	ld	a5,-24(s0)
     fba:	4798                	lw	a4,8(a5)
     fbc:	fdc42783          	lw	a5,-36(s0)
     fc0:	2781                	sext.w	a5,a5
     fc2:	06f76863          	bltu	a4,a5,1032 <malloc+0xf2>
     fc6:	fe843783          	ld	a5,-24(s0)
     fca:	4798                	lw	a4,8(a5)
     fcc:	fdc42783          	lw	a5,-36(s0)
     fd0:	2781                	sext.w	a5,a5
     fd2:	00e79963          	bne	a5,a4,fe4 <malloc+0xa4>
     fd6:	fe843783          	ld	a5,-24(s0)
     fda:	6398                	ld	a4,0(a5)
     fdc:	fe043783          	ld	a5,-32(s0)
     fe0:	e398                	sd	a4,0(a5)
     fe2:	a82d                	j	101c <malloc+0xdc>
     fe4:	fe843783          	ld	a5,-24(s0)
     fe8:	4798                	lw	a4,8(a5)
     fea:	fdc42783          	lw	a5,-36(s0)
     fee:	40f707bb          	subw	a5,a4,a5
     ff2:	0007871b          	sext.w	a4,a5
     ff6:	fe843783          	ld	a5,-24(s0)
     ffa:	c798                	sw	a4,8(a5)
     ffc:	fe843783          	ld	a5,-24(s0)
    1000:	479c                	lw	a5,8(a5)
    1002:	1782                	slli	a5,a5,0x20
    1004:	9381                	srli	a5,a5,0x20
    1006:	0792                	slli	a5,a5,0x4
    1008:	fe843703          	ld	a4,-24(s0)
    100c:	97ba                	add	a5,a5,a4
    100e:	fef43423          	sd	a5,-24(s0)
    1012:	fe843783          	ld	a5,-24(s0)
    1016:	fdc42703          	lw	a4,-36(s0)
    101a:	c798                	sw	a4,8(a5)
    101c:	00000797          	auipc	a5,0x0
    1020:	18c78793          	addi	a5,a5,396 # 11a8 <freep>
    1024:	fe043703          	ld	a4,-32(s0)
    1028:	e398                	sd	a4,0(a5)
    102a:	fe843783          	ld	a5,-24(s0)
    102e:	07c1                	addi	a5,a5,16
    1030:	a091                	j	1074 <malloc+0x134>
    1032:	00000797          	auipc	a5,0x0
    1036:	17678793          	addi	a5,a5,374 # 11a8 <freep>
    103a:	639c                	ld	a5,0(a5)
    103c:	fe843703          	ld	a4,-24(s0)
    1040:	02f71063          	bne	a4,a5,1060 <malloc+0x120>
    1044:	fdc42783          	lw	a5,-36(s0)
    1048:	853e                	mv	a0,a5
    104a:	00000097          	auipc	ra,0x0
    104e:	e76080e7          	jalr	-394(ra) # ec0 <morecore>
    1052:	fea43423          	sd	a0,-24(s0)
    1056:	fe843783          	ld	a5,-24(s0)
    105a:	e399                	bnez	a5,1060 <malloc+0x120>
    105c:	4781                	li	a5,0
    105e:	a819                	j	1074 <malloc+0x134>
    1060:	fe843783          	ld	a5,-24(s0)
    1064:	fef43023          	sd	a5,-32(s0)
    1068:	fe843783          	ld	a5,-24(s0)
    106c:	639c                	ld	a5,0(a5)
    106e:	fef43423          	sd	a5,-24(s0)
    1072:	b791                	j	fb6 <malloc+0x76>
    1074:	853e                	mv	a0,a5
    1076:	70e2                	ld	ra,56(sp)
    1078:	7442                	ld	s0,48(sp)
    107a:	6121                	addi	sp,sp,64
    107c:	8082                	ret

000000000000107e <setjmp>:
    107e:	e100                	sd	s0,0(a0)
    1080:	e504                	sd	s1,8(a0)
    1082:	01253823          	sd	s2,16(a0)
    1086:	01353c23          	sd	s3,24(a0)
    108a:	03453023          	sd	s4,32(a0)
    108e:	03553423          	sd	s5,40(a0)
    1092:	03653823          	sd	s6,48(a0)
    1096:	03753c23          	sd	s7,56(a0)
    109a:	05853023          	sd	s8,64(a0)
    109e:	05953423          	sd	s9,72(a0)
    10a2:	05a53823          	sd	s10,80(a0)
    10a6:	05b53c23          	sd	s11,88(a0)
    10aa:	06153023          	sd	ra,96(a0)
    10ae:	06253423          	sd	sp,104(a0)
    10b2:	4501                	li	a0,0
    10b4:	8082                	ret

00000000000010b6 <longjmp>:
    10b6:	6100                	ld	s0,0(a0)
    10b8:	6504                	ld	s1,8(a0)
    10ba:	01053903          	ld	s2,16(a0)
    10be:	01853983          	ld	s3,24(a0)
    10c2:	02053a03          	ld	s4,32(a0)
    10c6:	02853a83          	ld	s5,40(a0)
    10ca:	03053b03          	ld	s6,48(a0)
    10ce:	03853b83          	ld	s7,56(a0)
    10d2:	04053c03          	ld	s8,64(a0)
    10d6:	04853c83          	ld	s9,72(a0)
    10da:	05053d03          	ld	s10,80(a0)
    10de:	05853d83          	ld	s11,88(a0)
    10e2:	06053083          	ld	ra,96(a0)
    10e6:	06853103          	ld	sp,104(a0)
    10ea:	c199                	beqz	a1,10f0 <longjmp_1>
    10ec:	852e                	mv	a0,a1
    10ee:	8082                	ret

00000000000010f0 <longjmp_1>:
    10f0:	4505                	li	a0,1
    10f2:	8082                	ret
