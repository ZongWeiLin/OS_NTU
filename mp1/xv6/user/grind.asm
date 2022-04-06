
user/_grind:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <do_rand>:
       0:	7139                	addi	sp,sp,-64
       2:	fc22                	sd	s0,56(sp)
       4:	0080                	addi	s0,sp,64
       6:	fca43423          	sd	a0,-56(s0)
       a:	fc843783          	ld	a5,-56(s0)
       e:	6398                	ld	a4,0(a5)
      10:	800007b7          	lui	a5,0x80000
      14:	ffe7c793          	xori	a5,a5,-2
      18:	02f777b3          	remu	a5,a4,a5
      1c:	0785                	addi	a5,a5,1
      1e:	fef43423          	sd	a5,-24(s0)
      22:	fe843703          	ld	a4,-24(s0)
      26:	67fd                	lui	a5,0x1f
      28:	31d78793          	addi	a5,a5,797 # 1f31d <__global_pointer$+0x1cbf5>
      2c:	02f747b3          	div	a5,a4,a5
      30:	fef43023          	sd	a5,-32(s0)
      34:	fe843703          	ld	a4,-24(s0)
      38:	67fd                	lui	a5,0x1f
      3a:	31d78793          	addi	a5,a5,797 # 1f31d <__global_pointer$+0x1cbf5>
      3e:	02f767b3          	rem	a5,a4,a5
      42:	fcf43c23          	sd	a5,-40(s0)
      46:	fd843703          	ld	a4,-40(s0)
      4a:	6791                	lui	a5,0x4
      4c:	1a778793          	addi	a5,a5,423 # 41a7 <__global_pointer$+0x1a7f>
      50:	02f70733          	mul	a4,a4,a5
      54:	fe043683          	ld	a3,-32(s0)
      58:	77fd                	lui	a5,0xfffff
      5a:	4ec78793          	addi	a5,a5,1260 # fffffffffffff4ec <__global_pointer$+0xffffffffffffcdc4>
      5e:	02f687b3          	mul	a5,a3,a5
      62:	97ba                	add	a5,a5,a4
      64:	fef43423          	sd	a5,-24(s0)
      68:	fe843783          	ld	a5,-24(s0)
      6c:	0007db63          	bgez	a5,82 <do_rand+0x82>
      70:	fe843703          	ld	a4,-24(s0)
      74:	800007b7          	lui	a5,0x80000
      78:	fff7c793          	not	a5,a5
      7c:	97ba                	add	a5,a5,a4
      7e:	fef43423          	sd	a5,-24(s0)
      82:	fe843783          	ld	a5,-24(s0)
      86:	17fd                	addi	a5,a5,-1
      88:	fef43423          	sd	a5,-24(s0)
      8c:	fe843703          	ld	a4,-24(s0)
      90:	fc843783          	ld	a5,-56(s0)
      94:	e398                	sd	a4,0(a5)
      96:	fe843783          	ld	a5,-24(s0)
      9a:	2781                	sext.w	a5,a5
      9c:	853e                	mv	a0,a5
      9e:	7462                	ld	s0,56(sp)
      a0:	6121                	addi	sp,sp,64
      a2:	8082                	ret

00000000000000a4 <rand>:
      a4:	1141                	addi	sp,sp,-16
      a6:	e406                	sd	ra,8(sp)
      a8:	e022                	sd	s0,0(sp)
      aa:	0800                	addi	s0,sp,16
      ac:	00002517          	auipc	a0,0x2
      b0:	e9450513          	addi	a0,a0,-364 # 1f40 <rand_next>
      b4:	00000097          	auipc	ra,0x0
      b8:	f4c080e7          	jalr	-180(ra) # 0 <do_rand>
      bc:	87aa                	mv	a5,a0
      be:	853e                	mv	a0,a5
      c0:	60a2                	ld	ra,8(sp)
      c2:	6402                	ld	s0,0(sp)
      c4:	0141                	addi	sp,sp,16
      c6:	8082                	ret

00000000000000c8 <go>:
      c8:	7155                	addi	sp,sp,-208
      ca:	e586                	sd	ra,200(sp)
      cc:	e1a2                	sd	s0,192(sp)
      ce:	0980                	addi	s0,sp,208
      d0:	87aa                	mv	a5,a0
      d2:	f2f42e23          	sw	a5,-196(s0)
      d6:	57fd                	li	a5,-1
      d8:	fef42623          	sw	a5,-20(s0)
      dc:	4501                	li	a0,0
      de:	00001097          	auipc	ra,0x1
      e2:	2f8080e7          	jalr	760(ra) # 13d6 <sbrk>
      e6:	fca43c23          	sd	a0,-40(s0)
      ea:	fe043023          	sd	zero,-32(s0)
      ee:	00002517          	auipc	a0,0x2
      f2:	b3a50513          	addi	a0,a0,-1222 # 1c28 <longjmp_1+0xa>
      f6:	00001097          	auipc	ra,0x1
      fa:	2c0080e7          	jalr	704(ra) # 13b6 <mkdir>
      fe:	00002517          	auipc	a0,0x2
     102:	b2a50513          	addi	a0,a0,-1238 # 1c28 <longjmp_1+0xa>
     106:	00001097          	auipc	ra,0x1
     10a:	2b8080e7          	jalr	696(ra) # 13be <chdir>
     10e:	87aa                	mv	a5,a0
     110:	cf91                	beqz	a5,12c <go+0x64>
     112:	00002517          	auipc	a0,0x2
     116:	b1e50513          	addi	a0,a0,-1250 # 1c30 <longjmp_1+0x12>
     11a:	00001097          	auipc	ra,0x1
     11e:	762080e7          	jalr	1890(ra) # 187c <printf>
     122:	4505                	li	a0,1
     124:	00001097          	auipc	ra,0x1
     128:	22a080e7          	jalr	554(ra) # 134e <exit>
     12c:	00002517          	auipc	a0,0x2
     130:	b2450513          	addi	a0,a0,-1244 # 1c50 <longjmp_1+0x32>
     134:	00001097          	auipc	ra,0x1
     138:	28a080e7          	jalr	650(ra) # 13be <chdir>
     13c:	fe043783          	ld	a5,-32(s0)
     140:	0785                	addi	a5,a5,1
     142:	fef43023          	sd	a5,-32(s0)
     146:	fe043703          	ld	a4,-32(s0)
     14a:	1f400793          	li	a5,500
     14e:	02f777b3          	remu	a5,a4,a5
     152:	e78d                	bnez	a5,17c <go+0xb4>
     154:	f3c42783          	lw	a5,-196(s0)
     158:	2781                	sext.w	a5,a5
     15a:	c791                	beqz	a5,166 <go+0x9e>
     15c:	00002797          	auipc	a5,0x2
     160:	afc78793          	addi	a5,a5,-1284 # 1c58 <longjmp_1+0x3a>
     164:	a029                	j	16e <go+0xa6>
     166:	00002797          	auipc	a5,0x2
     16a:	afa78793          	addi	a5,a5,-1286 # 1c60 <longjmp_1+0x42>
     16e:	4605                	li	a2,1
     170:	85be                	mv	a1,a5
     172:	4505                	li	a0,1
     174:	00001097          	auipc	ra,0x1
     178:	1fa080e7          	jalr	506(ra) # 136e <write>
     17c:	00000097          	auipc	ra,0x0
     180:	f28080e7          	jalr	-216(ra) # a4 <rand>
     184:	87aa                	mv	a5,a0
     186:	873e                	mv	a4,a5
     188:	47dd                	li	a5,23
     18a:	02f767bb          	remw	a5,a4,a5
     18e:	fcf42a23          	sw	a5,-44(s0)
     192:	fd442783          	lw	a5,-44(s0)
     196:	0007871b          	sext.w	a4,a5
     19a:	4785                	li	a5,1
     19c:	02f71363          	bne	a4,a5,1c2 <go+0xfa>
     1a0:	20200593          	li	a1,514
     1a4:	00002517          	auipc	a0,0x2
     1a8:	ac450513          	addi	a0,a0,-1340 # 1c68 <longjmp_1+0x4a>
     1ac:	00001097          	auipc	ra,0x1
     1b0:	1e2080e7          	jalr	482(ra) # 138e <open>
     1b4:	87aa                	mv	a5,a0
     1b6:	853e                	mv	a0,a5
     1b8:	00001097          	auipc	ra,0x1
     1bc:	1be080e7          	jalr	446(ra) # 1376 <close>
     1c0:	bfb5                	j	13c <go+0x74>
     1c2:	fd442783          	lw	a5,-44(s0)
     1c6:	0007871b          	sext.w	a4,a5
     1ca:	4789                	li	a5,2
     1cc:	02f71363          	bne	a4,a5,1f2 <go+0x12a>
     1d0:	20200593          	li	a1,514
     1d4:	00002517          	auipc	a0,0x2
     1d8:	aa450513          	addi	a0,a0,-1372 # 1c78 <longjmp_1+0x5a>
     1dc:	00001097          	auipc	ra,0x1
     1e0:	1b2080e7          	jalr	434(ra) # 138e <open>
     1e4:	87aa                	mv	a5,a0
     1e6:	853e                	mv	a0,a5
     1e8:	00001097          	auipc	ra,0x1
     1ec:	18e080e7          	jalr	398(ra) # 1376 <close>
     1f0:	b7b1                	j	13c <go+0x74>
     1f2:	fd442783          	lw	a5,-44(s0)
     1f6:	0007871b          	sext.w	a4,a5
     1fa:	478d                	li	a5,3
     1fc:	00f71b63          	bne	a4,a5,212 <go+0x14a>
     200:	00002517          	auipc	a0,0x2
     204:	a6850513          	addi	a0,a0,-1432 # 1c68 <longjmp_1+0x4a>
     208:	00001097          	auipc	ra,0x1
     20c:	196080e7          	jalr	406(ra) # 139e <unlink>
     210:	b735                	j	13c <go+0x74>
     212:	fd442783          	lw	a5,-44(s0)
     216:	0007871b          	sext.w	a4,a5
     21a:	4791                	li	a5,4
     21c:	04f71a63          	bne	a4,a5,270 <go+0x1a8>
     220:	00002517          	auipc	a0,0x2
     224:	a0850513          	addi	a0,a0,-1528 # 1c28 <longjmp_1+0xa>
     228:	00001097          	auipc	ra,0x1
     22c:	196080e7          	jalr	406(ra) # 13be <chdir>
     230:	87aa                	mv	a5,a0
     232:	cf91                	beqz	a5,24e <go+0x186>
     234:	00002517          	auipc	a0,0x2
     238:	9fc50513          	addi	a0,a0,-1540 # 1c30 <longjmp_1+0x12>
     23c:	00001097          	auipc	ra,0x1
     240:	640080e7          	jalr	1600(ra) # 187c <printf>
     244:	4505                	li	a0,1
     246:	00001097          	auipc	ra,0x1
     24a:	108080e7          	jalr	264(ra) # 134e <exit>
     24e:	00002517          	auipc	a0,0x2
     252:	a4250513          	addi	a0,a0,-1470 # 1c90 <longjmp_1+0x72>
     256:	00001097          	auipc	ra,0x1
     25a:	148080e7          	jalr	328(ra) # 139e <unlink>
     25e:	00002517          	auipc	a0,0x2
     262:	9f250513          	addi	a0,a0,-1550 # 1c50 <longjmp_1+0x32>
     266:	00001097          	auipc	ra,0x1
     26a:	158080e7          	jalr	344(ra) # 13be <chdir>
     26e:	b5f9                	j	13c <go+0x74>
     270:	fd442783          	lw	a5,-44(s0)
     274:	0007871b          	sext.w	a4,a5
     278:	4795                	li	a5,5
     27a:	02f71763          	bne	a4,a5,2a8 <go+0x1e0>
     27e:	fec42783          	lw	a5,-20(s0)
     282:	853e                	mv	a0,a5
     284:	00001097          	auipc	ra,0x1
     288:	0f2080e7          	jalr	242(ra) # 1376 <close>
     28c:	20200593          	li	a1,514
     290:	00002517          	auipc	a0,0x2
     294:	a0850513          	addi	a0,a0,-1528 # 1c98 <longjmp_1+0x7a>
     298:	00001097          	auipc	ra,0x1
     29c:	0f6080e7          	jalr	246(ra) # 138e <open>
     2a0:	87aa                	mv	a5,a0
     2a2:	fef42623          	sw	a5,-20(s0)
     2a6:	bd59                	j	13c <go+0x74>
     2a8:	fd442783          	lw	a5,-44(s0)
     2ac:	0007871b          	sext.w	a4,a5
     2b0:	4799                	li	a5,6
     2b2:	02f71763          	bne	a4,a5,2e0 <go+0x218>
     2b6:	fec42783          	lw	a5,-20(s0)
     2ba:	853e                	mv	a0,a5
     2bc:	00001097          	auipc	ra,0x1
     2c0:	0ba080e7          	jalr	186(ra) # 1376 <close>
     2c4:	20200593          	li	a1,514
     2c8:	00002517          	auipc	a0,0x2
     2cc:	9e050513          	addi	a0,a0,-1568 # 1ca8 <longjmp_1+0x8a>
     2d0:	00001097          	auipc	ra,0x1
     2d4:	0be080e7          	jalr	190(ra) # 138e <open>
     2d8:	87aa                	mv	a5,a0
     2da:	fef42623          	sw	a5,-20(s0)
     2de:	bdb9                	j	13c <go+0x74>
     2e0:	fd442783          	lw	a5,-44(s0)
     2e4:	0007871b          	sext.w	a4,a5
     2e8:	479d                	li	a5,7
     2ea:	02f71063          	bne	a4,a5,30a <go+0x242>
     2ee:	fec42783          	lw	a5,-20(s0)
     2f2:	3e700613          	li	a2,999
     2f6:	00002597          	auipc	a1,0x2
     2fa:	c5258593          	addi	a1,a1,-942 # 1f48 <buf.0>
     2fe:	853e                	mv	a0,a5
     300:	00001097          	auipc	ra,0x1
     304:	06e080e7          	jalr	110(ra) # 136e <write>
     308:	bd15                	j	13c <go+0x74>
     30a:	fd442783          	lw	a5,-44(s0)
     30e:	0007871b          	sext.w	a4,a5
     312:	47a1                	li	a5,8
     314:	02f71063          	bne	a4,a5,334 <go+0x26c>
     318:	fec42783          	lw	a5,-20(s0)
     31c:	3e700613          	li	a2,999
     320:	00002597          	auipc	a1,0x2
     324:	c2858593          	addi	a1,a1,-984 # 1f48 <buf.0>
     328:	853e                	mv	a0,a5
     32a:	00001097          	auipc	ra,0x1
     32e:	03c080e7          	jalr	60(ra) # 1366 <read>
     332:	b529                	j	13c <go+0x74>
     334:	fd442783          	lw	a5,-44(s0)
     338:	0007871b          	sext.w	a4,a5
     33c:	47a5                	li	a5,9
     33e:	04f71363          	bne	a4,a5,384 <go+0x2bc>
     342:	00002517          	auipc	a0,0x2
     346:	92650513          	addi	a0,a0,-1754 # 1c68 <longjmp_1+0x4a>
     34a:	00001097          	auipc	ra,0x1
     34e:	06c080e7          	jalr	108(ra) # 13b6 <mkdir>
     352:	20200593          	li	a1,514
     356:	00002517          	auipc	a0,0x2
     35a:	96a50513          	addi	a0,a0,-1686 # 1cc0 <longjmp_1+0xa2>
     35e:	00001097          	auipc	ra,0x1
     362:	030080e7          	jalr	48(ra) # 138e <open>
     366:	87aa                	mv	a5,a0
     368:	853e                	mv	a0,a5
     36a:	00001097          	auipc	ra,0x1
     36e:	00c080e7          	jalr	12(ra) # 1376 <close>
     372:	00002517          	auipc	a0,0x2
     376:	95e50513          	addi	a0,a0,-1698 # 1cd0 <longjmp_1+0xb2>
     37a:	00001097          	auipc	ra,0x1
     37e:	024080e7          	jalr	36(ra) # 139e <unlink>
     382:	bb6d                	j	13c <go+0x74>
     384:	fd442783          	lw	a5,-44(s0)
     388:	0007871b          	sext.w	a4,a5
     38c:	47a9                	li	a5,10
     38e:	04f71363          	bne	a4,a5,3d4 <go+0x30c>
     392:	00002517          	auipc	a0,0x2
     396:	94650513          	addi	a0,a0,-1722 # 1cd8 <longjmp_1+0xba>
     39a:	00001097          	auipc	ra,0x1
     39e:	01c080e7          	jalr	28(ra) # 13b6 <mkdir>
     3a2:	20200593          	li	a1,514
     3a6:	00002517          	auipc	a0,0x2
     3aa:	93a50513          	addi	a0,a0,-1734 # 1ce0 <longjmp_1+0xc2>
     3ae:	00001097          	auipc	ra,0x1
     3b2:	fe0080e7          	jalr	-32(ra) # 138e <open>
     3b6:	87aa                	mv	a5,a0
     3b8:	853e                	mv	a0,a5
     3ba:	00001097          	auipc	ra,0x1
     3be:	fbc080e7          	jalr	-68(ra) # 1376 <close>
     3c2:	00002517          	auipc	a0,0x2
     3c6:	92e50513          	addi	a0,a0,-1746 # 1cf0 <longjmp_1+0xd2>
     3ca:	00001097          	auipc	ra,0x1
     3ce:	fd4080e7          	jalr	-44(ra) # 139e <unlink>
     3d2:	b3ad                	j	13c <go+0x74>
     3d4:	fd442783          	lw	a5,-44(s0)
     3d8:	0007871b          	sext.w	a4,a5
     3dc:	47ad                	li	a5,11
     3de:	02f71763          	bne	a4,a5,40c <go+0x344>
     3e2:	00002517          	auipc	a0,0x2
     3e6:	91650513          	addi	a0,a0,-1770 # 1cf8 <longjmp_1+0xda>
     3ea:	00001097          	auipc	ra,0x1
     3ee:	fb4080e7          	jalr	-76(ra) # 139e <unlink>
     3f2:	00002597          	auipc	a1,0x2
     3f6:	89e58593          	addi	a1,a1,-1890 # 1c90 <longjmp_1+0x72>
     3fa:	00002517          	auipc	a0,0x2
     3fe:	90650513          	addi	a0,a0,-1786 # 1d00 <longjmp_1+0xe2>
     402:	00001097          	auipc	ra,0x1
     406:	fac080e7          	jalr	-84(ra) # 13ae <link>
     40a:	bb0d                	j	13c <go+0x74>
     40c:	fd442783          	lw	a5,-44(s0)
     410:	0007871b          	sext.w	a4,a5
     414:	47b1                	li	a5,12
     416:	02f71763          	bne	a4,a5,444 <go+0x37c>
     41a:	00002517          	auipc	a0,0x2
     41e:	8fe50513          	addi	a0,a0,-1794 # 1d18 <longjmp_1+0xfa>
     422:	00001097          	auipc	ra,0x1
     426:	f7c080e7          	jalr	-132(ra) # 139e <unlink>
     42a:	00002597          	auipc	a1,0x2
     42e:	86e58593          	addi	a1,a1,-1938 # 1c98 <longjmp_1+0x7a>
     432:	00002517          	auipc	a0,0x2
     436:	8f650513          	addi	a0,a0,-1802 # 1d28 <longjmp_1+0x10a>
     43a:	00001097          	auipc	ra,0x1
     43e:	f74080e7          	jalr	-140(ra) # 13ae <link>
     442:	b9ed                	j	13c <go+0x74>
     444:	fd442783          	lw	a5,-44(s0)
     448:	0007871b          	sext.w	a4,a5
     44c:	47b5                	li	a5,13
     44e:	04f71a63          	bne	a4,a5,4a2 <go+0x3da>
     452:	00001097          	auipc	ra,0x1
     456:	ef4080e7          	jalr	-268(ra) # 1346 <fork>
     45a:	87aa                	mv	a5,a0
     45c:	faf42823          	sw	a5,-80(s0)
     460:	fb042783          	lw	a5,-80(s0)
     464:	2781                	sext.w	a5,a5
     466:	e791                	bnez	a5,472 <go+0x3aa>
     468:	4501                	li	a0,0
     46a:	00001097          	auipc	ra,0x1
     46e:	ee4080e7          	jalr	-284(ra) # 134e <exit>
     472:	fb042783          	lw	a5,-80(s0)
     476:	2781                	sext.w	a5,a5
     478:	0007df63          	bgez	a5,496 <go+0x3ce>
     47c:	00002517          	auipc	a0,0x2
     480:	8b450513          	addi	a0,a0,-1868 # 1d30 <longjmp_1+0x112>
     484:	00001097          	auipc	ra,0x1
     488:	3f8080e7          	jalr	1016(ra) # 187c <printf>
     48c:	4505                	li	a0,1
     48e:	00001097          	auipc	ra,0x1
     492:	ec0080e7          	jalr	-320(ra) # 134e <exit>
     496:	4501                	li	a0,0
     498:	00001097          	auipc	ra,0x1
     49c:	ebe080e7          	jalr	-322(ra) # 1356 <wait>
     4a0:	b971                	j	13c <go+0x74>
     4a2:	fd442783          	lw	a5,-44(s0)
     4a6:	0007871b          	sext.w	a4,a5
     4aa:	47b9                	li	a5,14
     4ac:	06f71263          	bne	a4,a5,510 <go+0x448>
     4b0:	00001097          	auipc	ra,0x1
     4b4:	e96080e7          	jalr	-362(ra) # 1346 <fork>
     4b8:	87aa                	mv	a5,a0
     4ba:	faf42a23          	sw	a5,-76(s0)
     4be:	fb442783          	lw	a5,-76(s0)
     4c2:	2781                	sext.w	a5,a5
     4c4:	ef91                	bnez	a5,4e0 <go+0x418>
     4c6:	00001097          	auipc	ra,0x1
     4ca:	e80080e7          	jalr	-384(ra) # 1346 <fork>
     4ce:	00001097          	auipc	ra,0x1
     4d2:	e78080e7          	jalr	-392(ra) # 1346 <fork>
     4d6:	4501                	li	a0,0
     4d8:	00001097          	auipc	ra,0x1
     4dc:	e76080e7          	jalr	-394(ra) # 134e <exit>
     4e0:	fb442783          	lw	a5,-76(s0)
     4e4:	2781                	sext.w	a5,a5
     4e6:	0007df63          	bgez	a5,504 <go+0x43c>
     4ea:	00002517          	auipc	a0,0x2
     4ee:	84650513          	addi	a0,a0,-1978 # 1d30 <longjmp_1+0x112>
     4f2:	00001097          	auipc	ra,0x1
     4f6:	38a080e7          	jalr	906(ra) # 187c <printf>
     4fa:	4505                	li	a0,1
     4fc:	00001097          	auipc	ra,0x1
     500:	e52080e7          	jalr	-430(ra) # 134e <exit>
     504:	4501                	li	a0,0
     506:	00001097          	auipc	ra,0x1
     50a:	e50080e7          	jalr	-432(ra) # 1356 <wait>
     50e:	b13d                	j	13c <go+0x74>
     510:	fd442783          	lw	a5,-44(s0)
     514:	0007871b          	sext.w	a4,a5
     518:	47bd                	li	a5,15
     51a:	00f71a63          	bne	a4,a5,52e <go+0x466>
     51e:	6785                	lui	a5,0x1
     520:	77b78513          	addi	a0,a5,1915 # 177b <vprintf+0x1bd>
     524:	00001097          	auipc	ra,0x1
     528:	eb2080e7          	jalr	-334(ra) # 13d6 <sbrk>
     52c:	b901                	j	13c <go+0x74>
     52e:	fd442783          	lw	a5,-44(s0)
     532:	0007871b          	sext.w	a4,a5
     536:	47c1                	li	a5,16
     538:	02f71c63          	bne	a4,a5,570 <go+0x4a8>
     53c:	4501                	li	a0,0
     53e:	00001097          	auipc	ra,0x1
     542:	e98080e7          	jalr	-360(ra) # 13d6 <sbrk>
     546:	872a                	mv	a4,a0
     548:	fd843783          	ld	a5,-40(s0)
     54c:	bee7f8e3          	bgeu	a5,a4,13c <go+0x74>
     550:	4501                	li	a0,0
     552:	00001097          	auipc	ra,0x1
     556:	e84080e7          	jalr	-380(ra) # 13d6 <sbrk>
     55a:	872a                	mv	a4,a0
     55c:	fd843783          	ld	a5,-40(s0)
     560:	8f99                	sub	a5,a5,a4
     562:	2781                	sext.w	a5,a5
     564:	853e                	mv	a0,a5
     566:	00001097          	auipc	ra,0x1
     56a:	e70080e7          	jalr	-400(ra) # 13d6 <sbrk>
     56e:	b6f9                	j	13c <go+0x74>
     570:	fd442783          	lw	a5,-44(s0)
     574:	0007871b          	sext.w	a4,a5
     578:	47c5                	li	a5,17
     57a:	0af71863          	bne	a4,a5,62a <go+0x562>
     57e:	00001097          	auipc	ra,0x1
     582:	dc8080e7          	jalr	-568(ra) # 1346 <fork>
     586:	87aa                	mv	a5,a0
     588:	faf42c23          	sw	a5,-72(s0)
     58c:	fb842783          	lw	a5,-72(s0)
     590:	2781                	sext.w	a5,a5
     592:	e795                	bnez	a5,5be <go+0x4f6>
     594:	20200593          	li	a1,514
     598:	00001517          	auipc	a0,0x1
     59c:	7b050513          	addi	a0,a0,1968 # 1d48 <longjmp_1+0x12a>
     5a0:	00001097          	auipc	ra,0x1
     5a4:	dee080e7          	jalr	-530(ra) # 138e <open>
     5a8:	87aa                	mv	a5,a0
     5aa:	853e                	mv	a0,a5
     5ac:	00001097          	auipc	ra,0x1
     5b0:	dca080e7          	jalr	-566(ra) # 1376 <close>
     5b4:	4501                	li	a0,0
     5b6:	00001097          	auipc	ra,0x1
     5ba:	d98080e7          	jalr	-616(ra) # 134e <exit>
     5be:	fb842783          	lw	a5,-72(s0)
     5c2:	2781                	sext.w	a5,a5
     5c4:	0007df63          	bgez	a5,5e2 <go+0x51a>
     5c8:	00001517          	auipc	a0,0x1
     5cc:	76850513          	addi	a0,a0,1896 # 1d30 <longjmp_1+0x112>
     5d0:	00001097          	auipc	ra,0x1
     5d4:	2ac080e7          	jalr	684(ra) # 187c <printf>
     5d8:	4505                	li	a0,1
     5da:	00001097          	auipc	ra,0x1
     5de:	d74080e7          	jalr	-652(ra) # 134e <exit>
     5e2:	00001517          	auipc	a0,0x1
     5e6:	76e50513          	addi	a0,a0,1902 # 1d50 <longjmp_1+0x132>
     5ea:	00001097          	auipc	ra,0x1
     5ee:	dd4080e7          	jalr	-556(ra) # 13be <chdir>
     5f2:	87aa                	mv	a5,a0
     5f4:	cf91                	beqz	a5,610 <go+0x548>
     5f6:	00001517          	auipc	a0,0x1
     5fa:	76a50513          	addi	a0,a0,1898 # 1d60 <longjmp_1+0x142>
     5fe:	00001097          	auipc	ra,0x1
     602:	27e080e7          	jalr	638(ra) # 187c <printf>
     606:	4505                	li	a0,1
     608:	00001097          	auipc	ra,0x1
     60c:	d46080e7          	jalr	-698(ra) # 134e <exit>
     610:	fb842783          	lw	a5,-72(s0)
     614:	853e                	mv	a0,a5
     616:	00001097          	auipc	ra,0x1
     61a:	d68080e7          	jalr	-664(ra) # 137e <kill>
     61e:	4501                	li	a0,0
     620:	00001097          	auipc	ra,0x1
     624:	d36080e7          	jalr	-714(ra) # 1356 <wait>
     628:	be11                	j	13c <go+0x74>
     62a:	fd442783          	lw	a5,-44(s0)
     62e:	0007871b          	sext.w	a4,a5
     632:	47c9                	li	a5,18
     634:	06f71463          	bne	a4,a5,69c <go+0x5d4>
     638:	00001097          	auipc	ra,0x1
     63c:	d0e080e7          	jalr	-754(ra) # 1346 <fork>
     640:	87aa                	mv	a5,a0
     642:	faf42e23          	sw	a5,-68(s0)
     646:	fbc42783          	lw	a5,-68(s0)
     64a:	2781                	sext.w	a5,a5
     64c:	e385                	bnez	a5,66c <go+0x5a4>
     64e:	00001097          	auipc	ra,0x1
     652:	d80080e7          	jalr	-640(ra) # 13ce <getpid>
     656:	87aa                	mv	a5,a0
     658:	853e                	mv	a0,a5
     65a:	00001097          	auipc	ra,0x1
     65e:	d24080e7          	jalr	-732(ra) # 137e <kill>
     662:	4501                	li	a0,0
     664:	00001097          	auipc	ra,0x1
     668:	cea080e7          	jalr	-790(ra) # 134e <exit>
     66c:	fbc42783          	lw	a5,-68(s0)
     670:	2781                	sext.w	a5,a5
     672:	0007df63          	bgez	a5,690 <go+0x5c8>
     676:	00001517          	auipc	a0,0x1
     67a:	6ba50513          	addi	a0,a0,1722 # 1d30 <longjmp_1+0x112>
     67e:	00001097          	auipc	ra,0x1
     682:	1fe080e7          	jalr	510(ra) # 187c <printf>
     686:	4505                	li	a0,1
     688:	00001097          	auipc	ra,0x1
     68c:	cc6080e7          	jalr	-826(ra) # 134e <exit>
     690:	4501                	li	a0,0
     692:	00001097          	auipc	ra,0x1
     696:	cc4080e7          	jalr	-828(ra) # 1356 <wait>
     69a:	b44d                	j	13c <go+0x74>
     69c:	fd442783          	lw	a5,-44(s0)
     6a0:	0007871b          	sext.w	a4,a5
     6a4:	47cd                	li	a5,19
     6a6:	10f71863          	bne	a4,a5,7b6 <go+0x6ee>
     6aa:	fa840793          	addi	a5,s0,-88
     6ae:	853e                	mv	a0,a5
     6b0:	00001097          	auipc	ra,0x1
     6b4:	cae080e7          	jalr	-850(ra) # 135e <pipe>
     6b8:	87aa                	mv	a5,a0
     6ba:	0007df63          	bgez	a5,6d8 <go+0x610>
     6be:	00001517          	auipc	a0,0x1
     6c2:	6ba50513          	addi	a0,a0,1722 # 1d78 <longjmp_1+0x15a>
     6c6:	00001097          	auipc	ra,0x1
     6ca:	1b6080e7          	jalr	438(ra) # 187c <printf>
     6ce:	4505                	li	a0,1
     6d0:	00001097          	auipc	ra,0x1
     6d4:	c7e080e7          	jalr	-898(ra) # 134e <exit>
     6d8:	00001097          	auipc	ra,0x1
     6dc:	c6e080e7          	jalr	-914(ra) # 1346 <fork>
     6e0:	87aa                	mv	a5,a0
     6e2:	fcf42023          	sw	a5,-64(s0)
     6e6:	fc042783          	lw	a5,-64(s0)
     6ea:	2781                	sext.w	a5,a5
     6ec:	efbd                	bnez	a5,76a <go+0x6a2>
     6ee:	00001097          	auipc	ra,0x1
     6f2:	c58080e7          	jalr	-936(ra) # 1346 <fork>
     6f6:	00001097          	auipc	ra,0x1
     6fa:	c50080e7          	jalr	-944(ra) # 1346 <fork>
     6fe:	fac42783          	lw	a5,-84(s0)
     702:	4605                	li	a2,1
     704:	00001597          	auipc	a1,0x1
     708:	68c58593          	addi	a1,a1,1676 # 1d90 <longjmp_1+0x172>
     70c:	853e                	mv	a0,a5
     70e:	00001097          	auipc	ra,0x1
     712:	c60080e7          	jalr	-928(ra) # 136e <write>
     716:	87aa                	mv	a5,a0
     718:	873e                	mv	a4,a5
     71a:	4785                	li	a5,1
     71c:	00f70a63          	beq	a4,a5,730 <go+0x668>
     720:	00001517          	auipc	a0,0x1
     724:	67850513          	addi	a0,a0,1656 # 1d98 <longjmp_1+0x17a>
     728:	00001097          	auipc	ra,0x1
     72c:	154080e7          	jalr	340(ra) # 187c <printf>
     730:	fa842783          	lw	a5,-88(s0)
     734:	fa740713          	addi	a4,s0,-89
     738:	4605                	li	a2,1
     73a:	85ba                	mv	a1,a4
     73c:	853e                	mv	a0,a5
     73e:	00001097          	auipc	ra,0x1
     742:	c28080e7          	jalr	-984(ra) # 1366 <read>
     746:	87aa                	mv	a5,a0
     748:	873e                	mv	a4,a5
     74a:	4785                	li	a5,1
     74c:	00f70a63          	beq	a4,a5,760 <go+0x698>
     750:	00001517          	auipc	a0,0x1
     754:	66850513          	addi	a0,a0,1640 # 1db8 <longjmp_1+0x19a>
     758:	00001097          	auipc	ra,0x1
     75c:	124080e7          	jalr	292(ra) # 187c <printf>
     760:	4501                	li	a0,0
     762:	00001097          	auipc	ra,0x1
     766:	bec080e7          	jalr	-1044(ra) # 134e <exit>
     76a:	fc042783          	lw	a5,-64(s0)
     76e:	2781                	sext.w	a5,a5
     770:	0007df63          	bgez	a5,78e <go+0x6c6>
     774:	00001517          	auipc	a0,0x1
     778:	5bc50513          	addi	a0,a0,1468 # 1d30 <longjmp_1+0x112>
     77c:	00001097          	auipc	ra,0x1
     780:	100080e7          	jalr	256(ra) # 187c <printf>
     784:	4505                	li	a0,1
     786:	00001097          	auipc	ra,0x1
     78a:	bc8080e7          	jalr	-1080(ra) # 134e <exit>
     78e:	fa842783          	lw	a5,-88(s0)
     792:	853e                	mv	a0,a5
     794:	00001097          	auipc	ra,0x1
     798:	be2080e7          	jalr	-1054(ra) # 1376 <close>
     79c:	fac42783          	lw	a5,-84(s0)
     7a0:	853e                	mv	a0,a5
     7a2:	00001097          	auipc	ra,0x1
     7a6:	bd4080e7          	jalr	-1068(ra) # 1376 <close>
     7aa:	4501                	li	a0,0
     7ac:	00001097          	auipc	ra,0x1
     7b0:	baa080e7          	jalr	-1110(ra) # 1356 <wait>
     7b4:	b261                	j	13c <go+0x74>
     7b6:	fd442783          	lw	a5,-44(s0)
     7ba:	0007871b          	sext.w	a4,a5
     7be:	47d1                	li	a5,20
     7c0:	0af71f63          	bne	a4,a5,87e <go+0x7b6>
     7c4:	00001097          	auipc	ra,0x1
     7c8:	b82080e7          	jalr	-1150(ra) # 1346 <fork>
     7cc:	87aa                	mv	a5,a0
     7ce:	fcf42223          	sw	a5,-60(s0)
     7d2:	fc442783          	lw	a5,-60(s0)
     7d6:	2781                	sext.w	a5,a5
     7d8:	ebbd                	bnez	a5,84e <go+0x786>
     7da:	00001517          	auipc	a0,0x1
     7de:	56e50513          	addi	a0,a0,1390 # 1d48 <longjmp_1+0x12a>
     7e2:	00001097          	auipc	ra,0x1
     7e6:	bbc080e7          	jalr	-1092(ra) # 139e <unlink>
     7ea:	00001517          	auipc	a0,0x1
     7ee:	55e50513          	addi	a0,a0,1374 # 1d48 <longjmp_1+0x12a>
     7f2:	00001097          	auipc	ra,0x1
     7f6:	bc4080e7          	jalr	-1084(ra) # 13b6 <mkdir>
     7fa:	00001517          	auipc	a0,0x1
     7fe:	54e50513          	addi	a0,a0,1358 # 1d48 <longjmp_1+0x12a>
     802:	00001097          	auipc	ra,0x1
     806:	bbc080e7          	jalr	-1092(ra) # 13be <chdir>
     80a:	00001517          	auipc	a0,0x1
     80e:	5ce50513          	addi	a0,a0,1486 # 1dd8 <longjmp_1+0x1ba>
     812:	00001097          	auipc	ra,0x1
     816:	b8c080e7          	jalr	-1140(ra) # 139e <unlink>
     81a:	20200593          	li	a1,514
     81e:	00001517          	auipc	a0,0x1
     822:	57250513          	addi	a0,a0,1394 # 1d90 <longjmp_1+0x172>
     826:	00001097          	auipc	ra,0x1
     82a:	b68080e7          	jalr	-1176(ra) # 138e <open>
     82e:	87aa                	mv	a5,a0
     830:	fef42623          	sw	a5,-20(s0)
     834:	00001517          	auipc	a0,0x1
     838:	55c50513          	addi	a0,a0,1372 # 1d90 <longjmp_1+0x172>
     83c:	00001097          	auipc	ra,0x1
     840:	b62080e7          	jalr	-1182(ra) # 139e <unlink>
     844:	4501                	li	a0,0
     846:	00001097          	auipc	ra,0x1
     84a:	b08080e7          	jalr	-1272(ra) # 134e <exit>
     84e:	fc442783          	lw	a5,-60(s0)
     852:	2781                	sext.w	a5,a5
     854:	0007df63          	bgez	a5,872 <go+0x7aa>
     858:	00001517          	auipc	a0,0x1
     85c:	4d850513          	addi	a0,a0,1240 # 1d30 <longjmp_1+0x112>
     860:	00001097          	auipc	ra,0x1
     864:	01c080e7          	jalr	28(ra) # 187c <printf>
     868:	4505                	li	a0,1
     86a:	00001097          	auipc	ra,0x1
     86e:	ae4080e7          	jalr	-1308(ra) # 134e <exit>
     872:	4501                	li	a0,0
     874:	00001097          	auipc	ra,0x1
     878:	ae2080e7          	jalr	-1310(ra) # 1356 <wait>
     87c:	b0c1                	j	13c <go+0x74>
     87e:	fd442783          	lw	a5,-44(s0)
     882:	0007871b          	sext.w	a4,a5
     886:	47d5                	li	a5,21
     888:	12f71e63          	bne	a4,a5,9c4 <go+0x8fc>
     88c:	00001517          	auipc	a0,0x1
     890:	55450513          	addi	a0,a0,1364 # 1de0 <longjmp_1+0x1c2>
     894:	00001097          	auipc	ra,0x1
     898:	b0a080e7          	jalr	-1270(ra) # 139e <unlink>
     89c:	20200593          	li	a1,514
     8a0:	00001517          	auipc	a0,0x1
     8a4:	54050513          	addi	a0,a0,1344 # 1de0 <longjmp_1+0x1c2>
     8a8:	00001097          	auipc	ra,0x1
     8ac:	ae6080e7          	jalr	-1306(ra) # 138e <open>
     8b0:	87aa                	mv	a5,a0
     8b2:	fcf42423          	sw	a5,-56(s0)
     8b6:	fc842783          	lw	a5,-56(s0)
     8ba:	2781                	sext.w	a5,a5
     8bc:	0007df63          	bgez	a5,8da <go+0x812>
     8c0:	00001517          	auipc	a0,0x1
     8c4:	52850513          	addi	a0,a0,1320 # 1de8 <longjmp_1+0x1ca>
     8c8:	00001097          	auipc	ra,0x1
     8cc:	fb4080e7          	jalr	-76(ra) # 187c <printf>
     8d0:	4505                	li	a0,1
     8d2:	00001097          	auipc	ra,0x1
     8d6:	a7c080e7          	jalr	-1412(ra) # 134e <exit>
     8da:	fc842783          	lw	a5,-56(s0)
     8de:	4605                	li	a2,1
     8e0:	00001597          	auipc	a1,0x1
     8e4:	4b058593          	addi	a1,a1,1200 # 1d90 <longjmp_1+0x172>
     8e8:	853e                	mv	a0,a5
     8ea:	00001097          	auipc	ra,0x1
     8ee:	a84080e7          	jalr	-1404(ra) # 136e <write>
     8f2:	87aa                	mv	a5,a0
     8f4:	873e                	mv	a4,a5
     8f6:	4785                	li	a5,1
     8f8:	00f70f63          	beq	a4,a5,916 <go+0x84e>
     8fc:	00001517          	auipc	a0,0x1
     900:	50450513          	addi	a0,a0,1284 # 1e00 <longjmp_1+0x1e2>
     904:	00001097          	auipc	ra,0x1
     908:	f78080e7          	jalr	-136(ra) # 187c <printf>
     90c:	4505                	li	a0,1
     90e:	00001097          	auipc	ra,0x1
     912:	a40080e7          	jalr	-1472(ra) # 134e <exit>
     916:	f8840713          	addi	a4,s0,-120
     91a:	fc842783          	lw	a5,-56(s0)
     91e:	85ba                	mv	a1,a4
     920:	853e                	mv	a0,a5
     922:	00001097          	auipc	ra,0x1
     926:	a84080e7          	jalr	-1404(ra) # 13a6 <fstat>
     92a:	87aa                	mv	a5,a0
     92c:	cf91                	beqz	a5,948 <go+0x880>
     92e:	00001517          	auipc	a0,0x1
     932:	4ea50513          	addi	a0,a0,1258 # 1e18 <longjmp_1+0x1fa>
     936:	00001097          	auipc	ra,0x1
     93a:	f46080e7          	jalr	-186(ra) # 187c <printf>
     93e:	4505                	li	a0,1
     940:	00001097          	auipc	ra,0x1
     944:	a0e080e7          	jalr	-1522(ra) # 134e <exit>
     948:	f9843703          	ld	a4,-104(s0)
     94c:	4785                	li	a5,1
     94e:	02f70363          	beq	a4,a5,974 <go+0x8ac>
     952:	f9843783          	ld	a5,-104(s0)
     956:	2781                	sext.w	a5,a5
     958:	85be                	mv	a1,a5
     95a:	00001517          	auipc	a0,0x1
     95e:	4d650513          	addi	a0,a0,1238 # 1e30 <longjmp_1+0x212>
     962:	00001097          	auipc	ra,0x1
     966:	f1a080e7          	jalr	-230(ra) # 187c <printf>
     96a:	4505                	li	a0,1
     96c:	00001097          	auipc	ra,0x1
     970:	9e2080e7          	jalr	-1566(ra) # 134e <exit>
     974:	f8c42783          	lw	a5,-116(s0)
     978:	873e                	mv	a4,a5
     97a:	0c800793          	li	a5,200
     97e:	02e7f263          	bgeu	a5,a4,9a2 <go+0x8da>
     982:	f8c42783          	lw	a5,-116(s0)
     986:	85be                	mv	a1,a5
     988:	00001517          	auipc	a0,0x1
     98c:	4d050513          	addi	a0,a0,1232 # 1e58 <longjmp_1+0x23a>
     990:	00001097          	auipc	ra,0x1
     994:	eec080e7          	jalr	-276(ra) # 187c <printf>
     998:	4505                	li	a0,1
     99a:	00001097          	auipc	ra,0x1
     99e:	9b4080e7          	jalr	-1612(ra) # 134e <exit>
     9a2:	fc842783          	lw	a5,-56(s0)
     9a6:	853e                	mv	a0,a5
     9a8:	00001097          	auipc	ra,0x1
     9ac:	9ce080e7          	jalr	-1586(ra) # 1376 <close>
     9b0:	00001517          	auipc	a0,0x1
     9b4:	43050513          	addi	a0,a0,1072 # 1de0 <longjmp_1+0x1c2>
     9b8:	00001097          	auipc	ra,0x1
     9bc:	9e6080e7          	jalr	-1562(ra) # 139e <unlink>
     9c0:	f7cff06f          	j	13c <go+0x74>
     9c4:	fd442783          	lw	a5,-44(s0)
     9c8:	0007871b          	sext.w	a4,a5
     9cc:	47d9                	li	a5,22
     9ce:	f6f71763          	bne	a4,a5,13c <go+0x74>
     9d2:	f8040793          	addi	a5,s0,-128
     9d6:	853e                	mv	a0,a5
     9d8:	00001097          	auipc	ra,0x1
     9dc:	986080e7          	jalr	-1658(ra) # 135e <pipe>
     9e0:	87aa                	mv	a5,a0
     9e2:	0207d063          	bgez	a5,a02 <go+0x93a>
     9e6:	00001597          	auipc	a1,0x1
     9ea:	39258593          	addi	a1,a1,914 # 1d78 <longjmp_1+0x15a>
     9ee:	4509                	li	a0,2
     9f0:	00001097          	auipc	ra,0x1
     9f4:	e34080e7          	jalr	-460(ra) # 1824 <fprintf>
     9f8:	4505                	li	a0,1
     9fa:	00001097          	auipc	ra,0x1
     9fe:	954080e7          	jalr	-1708(ra) # 134e <exit>
     a02:	f7840793          	addi	a5,s0,-136
     a06:	853e                	mv	a0,a5
     a08:	00001097          	auipc	ra,0x1
     a0c:	956080e7          	jalr	-1706(ra) # 135e <pipe>
     a10:	87aa                	mv	a5,a0
     a12:	0207d063          	bgez	a5,a32 <go+0x96a>
     a16:	00001597          	auipc	a1,0x1
     a1a:	36258593          	addi	a1,a1,866 # 1d78 <longjmp_1+0x15a>
     a1e:	4509                	li	a0,2
     a20:	00001097          	auipc	ra,0x1
     a24:	e04080e7          	jalr	-508(ra) # 1824 <fprintf>
     a28:	4505                	li	a0,1
     a2a:	00001097          	auipc	ra,0x1
     a2e:	924080e7          	jalr	-1756(ra) # 134e <exit>
     a32:	00001097          	auipc	ra,0x1
     a36:	914080e7          	jalr	-1772(ra) # 1346 <fork>
     a3a:	87aa                	mv	a5,a0
     a3c:	fcf42823          	sw	a5,-48(s0)
     a40:	fd042783          	lw	a5,-48(s0)
     a44:	2781                	sext.w	a5,a5
     a46:	e3f9                	bnez	a5,b0c <go+0xa44>
     a48:	f7842783          	lw	a5,-136(s0)
     a4c:	853e                	mv	a0,a5
     a4e:	00001097          	auipc	ra,0x1
     a52:	928080e7          	jalr	-1752(ra) # 1376 <close>
     a56:	f7c42783          	lw	a5,-132(s0)
     a5a:	853e                	mv	a0,a5
     a5c:	00001097          	auipc	ra,0x1
     a60:	91a080e7          	jalr	-1766(ra) # 1376 <close>
     a64:	f8042783          	lw	a5,-128(s0)
     a68:	853e                	mv	a0,a5
     a6a:	00001097          	auipc	ra,0x1
     a6e:	90c080e7          	jalr	-1780(ra) # 1376 <close>
     a72:	4505                	li	a0,1
     a74:	00001097          	auipc	ra,0x1
     a78:	902080e7          	jalr	-1790(ra) # 1376 <close>
     a7c:	f8442783          	lw	a5,-124(s0)
     a80:	853e                	mv	a0,a5
     a82:	00001097          	auipc	ra,0x1
     a86:	944080e7          	jalr	-1724(ra) # 13c6 <dup>
     a8a:	87aa                	mv	a5,a0
     a8c:	873e                	mv	a4,a5
     a8e:	4785                	li	a5,1
     a90:	02f70063          	beq	a4,a5,ab0 <go+0x9e8>
     a94:	00001597          	auipc	a1,0x1
     a98:	3ec58593          	addi	a1,a1,1004 # 1e80 <longjmp_1+0x262>
     a9c:	4509                	li	a0,2
     a9e:	00001097          	auipc	ra,0x1
     aa2:	d86080e7          	jalr	-634(ra) # 1824 <fprintf>
     aa6:	4505                	li	a0,1
     aa8:	00001097          	auipc	ra,0x1
     aac:	8a6080e7          	jalr	-1882(ra) # 134e <exit>
     ab0:	f8442783          	lw	a5,-124(s0)
     ab4:	853e                	mv	a0,a5
     ab6:	00001097          	auipc	ra,0x1
     aba:	8c0080e7          	jalr	-1856(ra) # 1376 <close>
     abe:	00001797          	auipc	a5,0x1
     ac2:	3da78793          	addi	a5,a5,986 # 1e98 <longjmp_1+0x27a>
     ac6:	f4f43823          	sd	a5,-176(s0)
     aca:	00001797          	auipc	a5,0x1
     ace:	3d678793          	addi	a5,a5,982 # 1ea0 <longjmp_1+0x282>
     ad2:	f4f43c23          	sd	a5,-168(s0)
     ad6:	f6043023          	sd	zero,-160(s0)
     ada:	f5040793          	addi	a5,s0,-176
     ade:	85be                	mv	a1,a5
     ae0:	00001517          	auipc	a0,0x1
     ae4:	3c850513          	addi	a0,a0,968 # 1ea8 <longjmp_1+0x28a>
     ae8:	00001097          	auipc	ra,0x1
     aec:	89e080e7          	jalr	-1890(ra) # 1386 <exec>
     af0:	00001597          	auipc	a1,0x1
     af4:	3c858593          	addi	a1,a1,968 # 1eb8 <longjmp_1+0x29a>
     af8:	4509                	li	a0,2
     afa:	00001097          	auipc	ra,0x1
     afe:	d2a080e7          	jalr	-726(ra) # 1824 <fprintf>
     b02:	4509                	li	a0,2
     b04:	00001097          	auipc	ra,0x1
     b08:	84a080e7          	jalr	-1974(ra) # 134e <exit>
     b0c:	fd042783          	lw	a5,-48(s0)
     b10:	2781                	sext.w	a5,a5
     b12:	0207d063          	bgez	a5,b32 <go+0xa6a>
     b16:	00001597          	auipc	a1,0x1
     b1a:	21a58593          	addi	a1,a1,538 # 1d30 <longjmp_1+0x112>
     b1e:	4509                	li	a0,2
     b20:	00001097          	auipc	ra,0x1
     b24:	d04080e7          	jalr	-764(ra) # 1824 <fprintf>
     b28:	450d                	li	a0,3
     b2a:	00001097          	auipc	ra,0x1
     b2e:	824080e7          	jalr	-2012(ra) # 134e <exit>
     b32:	00001097          	auipc	ra,0x1
     b36:	814080e7          	jalr	-2028(ra) # 1346 <fork>
     b3a:	87aa                	mv	a5,a0
     b3c:	fcf42623          	sw	a5,-52(s0)
     b40:	fcc42783          	lw	a5,-52(s0)
     b44:	2781                	sext.w	a5,a5
     b46:	ebed                	bnez	a5,c38 <go+0xb70>
     b48:	f8442783          	lw	a5,-124(s0)
     b4c:	853e                	mv	a0,a5
     b4e:	00001097          	auipc	ra,0x1
     b52:	828080e7          	jalr	-2008(ra) # 1376 <close>
     b56:	f7842783          	lw	a5,-136(s0)
     b5a:	853e                	mv	a0,a5
     b5c:	00001097          	auipc	ra,0x1
     b60:	81a080e7          	jalr	-2022(ra) # 1376 <close>
     b64:	4501                	li	a0,0
     b66:	00001097          	auipc	ra,0x1
     b6a:	810080e7          	jalr	-2032(ra) # 1376 <close>
     b6e:	f8042783          	lw	a5,-128(s0)
     b72:	853e                	mv	a0,a5
     b74:	00001097          	auipc	ra,0x1
     b78:	852080e7          	jalr	-1966(ra) # 13c6 <dup>
     b7c:	87aa                	mv	a5,a0
     b7e:	cf99                	beqz	a5,b9c <go+0xad4>
     b80:	00001597          	auipc	a1,0x1
     b84:	30058593          	addi	a1,a1,768 # 1e80 <longjmp_1+0x262>
     b88:	4509                	li	a0,2
     b8a:	00001097          	auipc	ra,0x1
     b8e:	c9a080e7          	jalr	-870(ra) # 1824 <fprintf>
     b92:	4511                	li	a0,4
     b94:	00000097          	auipc	ra,0x0
     b98:	7ba080e7          	jalr	1978(ra) # 134e <exit>
     b9c:	f8042783          	lw	a5,-128(s0)
     ba0:	853e                	mv	a0,a5
     ba2:	00000097          	auipc	ra,0x0
     ba6:	7d4080e7          	jalr	2004(ra) # 1376 <close>
     baa:	4505                	li	a0,1
     bac:	00000097          	auipc	ra,0x0
     bb0:	7ca080e7          	jalr	1994(ra) # 1376 <close>
     bb4:	f7c42783          	lw	a5,-132(s0)
     bb8:	853e                	mv	a0,a5
     bba:	00001097          	auipc	ra,0x1
     bbe:	80c080e7          	jalr	-2036(ra) # 13c6 <dup>
     bc2:	87aa                	mv	a5,a0
     bc4:	873e                	mv	a4,a5
     bc6:	4785                	li	a5,1
     bc8:	02f70063          	beq	a4,a5,be8 <go+0xb20>
     bcc:	00001597          	auipc	a1,0x1
     bd0:	2b458593          	addi	a1,a1,692 # 1e80 <longjmp_1+0x262>
     bd4:	4509                	li	a0,2
     bd6:	00001097          	auipc	ra,0x1
     bda:	c4e080e7          	jalr	-946(ra) # 1824 <fprintf>
     bde:	4515                	li	a0,5
     be0:	00000097          	auipc	ra,0x0
     be4:	76e080e7          	jalr	1902(ra) # 134e <exit>
     be8:	f7c42783          	lw	a5,-132(s0)
     bec:	853e                	mv	a0,a5
     bee:	00000097          	auipc	ra,0x0
     bf2:	788080e7          	jalr	1928(ra) # 1376 <close>
     bf6:	00001797          	auipc	a5,0x1
     bfa:	2da78793          	addi	a5,a5,730 # 1ed0 <longjmp_1+0x2b2>
     bfe:	f4f43023          	sd	a5,-192(s0)
     c02:	f4043423          	sd	zero,-184(s0)
     c06:	f4040793          	addi	a5,s0,-192
     c0a:	85be                	mv	a1,a5
     c0c:	00001517          	auipc	a0,0x1
     c10:	2cc50513          	addi	a0,a0,716 # 1ed8 <longjmp_1+0x2ba>
     c14:	00000097          	auipc	ra,0x0
     c18:	772080e7          	jalr	1906(ra) # 1386 <exec>
     c1c:	00001597          	auipc	a1,0x1
     c20:	2c458593          	addi	a1,a1,708 # 1ee0 <longjmp_1+0x2c2>
     c24:	4509                	li	a0,2
     c26:	00001097          	auipc	ra,0x1
     c2a:	bfe080e7          	jalr	-1026(ra) # 1824 <fprintf>
     c2e:	4519                	li	a0,6
     c30:	00000097          	auipc	ra,0x0
     c34:	71e080e7          	jalr	1822(ra) # 134e <exit>
     c38:	fcc42783          	lw	a5,-52(s0)
     c3c:	2781                	sext.w	a5,a5
     c3e:	0207d063          	bgez	a5,c5e <go+0xb96>
     c42:	00001597          	auipc	a1,0x1
     c46:	0ee58593          	addi	a1,a1,238 # 1d30 <longjmp_1+0x112>
     c4a:	4509                	li	a0,2
     c4c:	00001097          	auipc	ra,0x1
     c50:	bd8080e7          	jalr	-1064(ra) # 1824 <fprintf>
     c54:	451d                	li	a0,7
     c56:	00000097          	auipc	ra,0x0
     c5a:	6f8080e7          	jalr	1784(ra) # 134e <exit>
     c5e:	f8042783          	lw	a5,-128(s0)
     c62:	853e                	mv	a0,a5
     c64:	00000097          	auipc	ra,0x0
     c68:	712080e7          	jalr	1810(ra) # 1376 <close>
     c6c:	f8442783          	lw	a5,-124(s0)
     c70:	853e                	mv	a0,a5
     c72:	00000097          	auipc	ra,0x0
     c76:	704080e7          	jalr	1796(ra) # 1376 <close>
     c7a:	f7c42783          	lw	a5,-132(s0)
     c7e:	853e                	mv	a0,a5
     c80:	00000097          	auipc	ra,0x0
     c84:	6f6080e7          	jalr	1782(ra) # 1376 <close>
     c88:	f6041823          	sh	zero,-144(s0)
     c8c:	f6040923          	sb	zero,-142(s0)
     c90:	f7842783          	lw	a5,-136(s0)
     c94:	f7040713          	addi	a4,s0,-144
     c98:	4605                	li	a2,1
     c9a:	85ba                	mv	a1,a4
     c9c:	853e                	mv	a0,a5
     c9e:	00000097          	auipc	ra,0x0
     ca2:	6c8080e7          	jalr	1736(ra) # 1366 <read>
     ca6:	f7842703          	lw	a4,-136(s0)
     caa:	f7040793          	addi	a5,s0,-144
     cae:	0785                	addi	a5,a5,1
     cb0:	4605                	li	a2,1
     cb2:	85be                	mv	a1,a5
     cb4:	853a                	mv	a0,a4
     cb6:	00000097          	auipc	ra,0x0
     cba:	6b0080e7          	jalr	1712(ra) # 1366 <read>
     cbe:	f7842783          	lw	a5,-136(s0)
     cc2:	853e                	mv	a0,a5
     cc4:	00000097          	auipc	ra,0x0
     cc8:	6b2080e7          	jalr	1714(ra) # 1376 <close>
     ccc:	f6c40793          	addi	a5,s0,-148
     cd0:	853e                	mv	a0,a5
     cd2:	00000097          	auipc	ra,0x0
     cd6:	684080e7          	jalr	1668(ra) # 1356 <wait>
     cda:	f6840793          	addi	a5,s0,-152
     cde:	853e                	mv	a0,a5
     ce0:	00000097          	auipc	ra,0x0
     ce4:	676080e7          	jalr	1654(ra) # 1356 <wait>
     ce8:	f6c42783          	lw	a5,-148(s0)
     cec:	e395                	bnez	a5,d10 <go+0xc48>
     cee:	f6842783          	lw	a5,-152(s0)
     cf2:	ef99                	bnez	a5,d10 <go+0xc48>
     cf4:	f7040793          	addi	a5,s0,-144
     cf8:	00001597          	auipc	a1,0x1
     cfc:	1a858593          	addi	a1,a1,424 # 1ea0 <longjmp_1+0x282>
     d00:	853e                	mv	a0,a5
     d02:	00000097          	auipc	ra,0x0
     d06:	206080e7          	jalr	518(ra) # f08 <strcmp>
     d0a:	87aa                	mv	a5,a0
     d0c:	c2078863          	beqz	a5,13c <go+0x74>
     d10:	f6c42783          	lw	a5,-148(s0)
     d14:	f6842703          	lw	a4,-152(s0)
     d18:	f7040693          	addi	a3,s0,-144
     d1c:	863a                	mv	a2,a4
     d1e:	85be                	mv	a1,a5
     d20:	00001517          	auipc	a0,0x1
     d24:	1d850513          	addi	a0,a0,472 # 1ef8 <longjmp_1+0x2da>
     d28:	00001097          	auipc	ra,0x1
     d2c:	b54080e7          	jalr	-1196(ra) # 187c <printf>
     d30:	4505                	li	a0,1
     d32:	00000097          	auipc	ra,0x0
     d36:	61c080e7          	jalr	1564(ra) # 134e <exit>

0000000000000d3a <iter>:
     d3a:	1101                	addi	sp,sp,-32
     d3c:	ec06                	sd	ra,24(sp)
     d3e:	e822                	sd	s0,16(sp)
     d40:	1000                	addi	s0,sp,32
     d42:	00001517          	auipc	a0,0x1
     d46:	00650513          	addi	a0,a0,6 # 1d48 <longjmp_1+0x12a>
     d4a:	00000097          	auipc	ra,0x0
     d4e:	654080e7          	jalr	1620(ra) # 139e <unlink>
     d52:	00001517          	auipc	a0,0x1
     d56:	fa650513          	addi	a0,a0,-90 # 1cf8 <longjmp_1+0xda>
     d5a:	00000097          	auipc	ra,0x0
     d5e:	644080e7          	jalr	1604(ra) # 139e <unlink>
     d62:	00000097          	auipc	ra,0x0
     d66:	5e4080e7          	jalr	1508(ra) # 1346 <fork>
     d6a:	87aa                	mv	a5,a0
     d6c:	fef42623          	sw	a5,-20(s0)
     d70:	fec42783          	lw	a5,-20(s0)
     d74:	2781                	sext.w	a5,a5
     d76:	0007df63          	bgez	a5,d94 <iter+0x5a>
     d7a:	00001517          	auipc	a0,0x1
     d7e:	fb650513          	addi	a0,a0,-74 # 1d30 <longjmp_1+0x112>
     d82:	00001097          	auipc	ra,0x1
     d86:	afa080e7          	jalr	-1286(ra) # 187c <printf>
     d8a:	4505                	li	a0,1
     d8c:	00000097          	auipc	ra,0x0
     d90:	5c2080e7          	jalr	1474(ra) # 134e <exit>
     d94:	fec42783          	lw	a5,-20(s0)
     d98:	2781                	sext.w	a5,a5
     d9a:	e38d                	bnez	a5,dbc <iter+0x82>
     d9c:	00001797          	auipc	a5,0x1
     da0:	1a478793          	addi	a5,a5,420 # 1f40 <rand_next>
     da4:	477d                	li	a4,31
     da6:	e398                	sd	a4,0(a5)
     da8:	4501                	li	a0,0
     daa:	fffff097          	auipc	ra,0xfffff
     dae:	31e080e7          	jalr	798(ra) # c8 <go>
     db2:	4501                	li	a0,0
     db4:	00000097          	auipc	ra,0x0
     db8:	59a080e7          	jalr	1434(ra) # 134e <exit>
     dbc:	00000097          	auipc	ra,0x0
     dc0:	58a080e7          	jalr	1418(ra) # 1346 <fork>
     dc4:	87aa                	mv	a5,a0
     dc6:	fef42423          	sw	a5,-24(s0)
     dca:	fe842783          	lw	a5,-24(s0)
     dce:	2781                	sext.w	a5,a5
     dd0:	0007df63          	bgez	a5,dee <iter+0xb4>
     dd4:	00001517          	auipc	a0,0x1
     dd8:	f5c50513          	addi	a0,a0,-164 # 1d30 <longjmp_1+0x112>
     ddc:	00001097          	auipc	ra,0x1
     de0:	aa0080e7          	jalr	-1376(ra) # 187c <printf>
     de4:	4505                	li	a0,1
     de6:	00000097          	auipc	ra,0x0
     dea:	568080e7          	jalr	1384(ra) # 134e <exit>
     dee:	fe842783          	lw	a5,-24(s0)
     df2:	2781                	sext.w	a5,a5
     df4:	e39d                	bnez	a5,e1a <iter+0xe0>
     df6:	00001797          	auipc	a5,0x1
     dfa:	14a78793          	addi	a5,a5,330 # 1f40 <rand_next>
     dfe:	6709                	lui	a4,0x2
     e00:	c0970713          	addi	a4,a4,-1015 # 1c09 <longjmp+0x25>
     e04:	e398                	sd	a4,0(a5)
     e06:	4505                	li	a0,1
     e08:	fffff097          	auipc	ra,0xfffff
     e0c:	2c0080e7          	jalr	704(ra) # c8 <go>
     e10:	4501                	li	a0,0
     e12:	00000097          	auipc	ra,0x0
     e16:	53c080e7          	jalr	1340(ra) # 134e <exit>
     e1a:	57fd                	li	a5,-1
     e1c:	fef42223          	sw	a5,-28(s0)
     e20:	fe440793          	addi	a5,s0,-28
     e24:	853e                	mv	a0,a5
     e26:	00000097          	auipc	ra,0x0
     e2a:	530080e7          	jalr	1328(ra) # 1356 <wait>
     e2e:	fe442783          	lw	a5,-28(s0)
     e32:	cf99                	beqz	a5,e50 <iter+0x116>
     e34:	fec42783          	lw	a5,-20(s0)
     e38:	853e                	mv	a0,a5
     e3a:	00000097          	auipc	ra,0x0
     e3e:	544080e7          	jalr	1348(ra) # 137e <kill>
     e42:	fe842783          	lw	a5,-24(s0)
     e46:	853e                	mv	a0,a5
     e48:	00000097          	auipc	ra,0x0
     e4c:	536080e7          	jalr	1334(ra) # 137e <kill>
     e50:	57fd                	li	a5,-1
     e52:	fef42023          	sw	a5,-32(s0)
     e56:	fe040793          	addi	a5,s0,-32
     e5a:	853e                	mv	a0,a5
     e5c:	00000097          	auipc	ra,0x0
     e60:	4fa080e7          	jalr	1274(ra) # 1356 <wait>
     e64:	4501                	li	a0,0
     e66:	00000097          	auipc	ra,0x0
     e6a:	4e8080e7          	jalr	1256(ra) # 134e <exit>

0000000000000e6e <main>:
     e6e:	1101                	addi	sp,sp,-32
     e70:	ec06                	sd	ra,24(sp)
     e72:	e822                	sd	s0,16(sp)
     e74:	1000                	addi	s0,sp,32
     e76:	00000097          	auipc	ra,0x0
     e7a:	4d0080e7          	jalr	1232(ra) # 1346 <fork>
     e7e:	87aa                	mv	a5,a0
     e80:	fef42623          	sw	a5,-20(s0)
     e84:	fec42783          	lw	a5,-20(s0)
     e88:	2781                	sext.w	a5,a5
     e8a:	eb91                	bnez	a5,e9e <main+0x30>
     e8c:	00000097          	auipc	ra,0x0
     e90:	eae080e7          	jalr	-338(ra) # d3a <iter>
     e94:	4501                	li	a0,0
     e96:	00000097          	auipc	ra,0x0
     e9a:	4b8080e7          	jalr	1208(ra) # 134e <exit>
     e9e:	fec42783          	lw	a5,-20(s0)
     ea2:	2781                	sext.w	a5,a5
     ea4:	00f05763          	blez	a5,eb2 <main+0x44>
     ea8:	4501                	li	a0,0
     eaa:	00000097          	auipc	ra,0x0
     eae:	4ac080e7          	jalr	1196(ra) # 1356 <wait>
     eb2:	4551                	li	a0,20
     eb4:	00000097          	auipc	ra,0x0
     eb8:	52a080e7          	jalr	1322(ra) # 13de <sleep>
     ebc:	bf6d                	j	e76 <main+0x8>

0000000000000ebe <strcpy>:
     ebe:	7179                	addi	sp,sp,-48
     ec0:	f422                	sd	s0,40(sp)
     ec2:	1800                	addi	s0,sp,48
     ec4:	fca43c23          	sd	a0,-40(s0)
     ec8:	fcb43823          	sd	a1,-48(s0)
     ecc:	fd843783          	ld	a5,-40(s0)
     ed0:	fef43423          	sd	a5,-24(s0)
     ed4:	0001                	nop
     ed6:	fd043703          	ld	a4,-48(s0)
     eda:	00170793          	addi	a5,a4,1
     ede:	fcf43823          	sd	a5,-48(s0)
     ee2:	fd843783          	ld	a5,-40(s0)
     ee6:	00178693          	addi	a3,a5,1
     eea:	fcd43c23          	sd	a3,-40(s0)
     eee:	00074703          	lbu	a4,0(a4)
     ef2:	00e78023          	sb	a4,0(a5)
     ef6:	0007c783          	lbu	a5,0(a5)
     efa:	fff1                	bnez	a5,ed6 <strcpy+0x18>
     efc:	fe843783          	ld	a5,-24(s0)
     f00:	853e                	mv	a0,a5
     f02:	7422                	ld	s0,40(sp)
     f04:	6145                	addi	sp,sp,48
     f06:	8082                	ret

0000000000000f08 <strcmp>:
     f08:	1101                	addi	sp,sp,-32
     f0a:	ec22                	sd	s0,24(sp)
     f0c:	1000                	addi	s0,sp,32
     f0e:	fea43423          	sd	a0,-24(s0)
     f12:	feb43023          	sd	a1,-32(s0)
     f16:	a819                	j	f2c <strcmp+0x24>
     f18:	fe843783          	ld	a5,-24(s0)
     f1c:	0785                	addi	a5,a5,1
     f1e:	fef43423          	sd	a5,-24(s0)
     f22:	fe043783          	ld	a5,-32(s0)
     f26:	0785                	addi	a5,a5,1
     f28:	fef43023          	sd	a5,-32(s0)
     f2c:	fe843783          	ld	a5,-24(s0)
     f30:	0007c783          	lbu	a5,0(a5)
     f34:	cb99                	beqz	a5,f4a <strcmp+0x42>
     f36:	fe843783          	ld	a5,-24(s0)
     f3a:	0007c703          	lbu	a4,0(a5)
     f3e:	fe043783          	ld	a5,-32(s0)
     f42:	0007c783          	lbu	a5,0(a5)
     f46:	fcf709e3          	beq	a4,a5,f18 <strcmp+0x10>
     f4a:	fe843783          	ld	a5,-24(s0)
     f4e:	0007c783          	lbu	a5,0(a5)
     f52:	0007871b          	sext.w	a4,a5
     f56:	fe043783          	ld	a5,-32(s0)
     f5a:	0007c783          	lbu	a5,0(a5)
     f5e:	2781                	sext.w	a5,a5
     f60:	40f707bb          	subw	a5,a4,a5
     f64:	2781                	sext.w	a5,a5
     f66:	853e                	mv	a0,a5
     f68:	6462                	ld	s0,24(sp)
     f6a:	6105                	addi	sp,sp,32
     f6c:	8082                	ret

0000000000000f6e <strlen>:
     f6e:	7179                	addi	sp,sp,-48
     f70:	f422                	sd	s0,40(sp)
     f72:	1800                	addi	s0,sp,48
     f74:	fca43c23          	sd	a0,-40(s0)
     f78:	fe042623          	sw	zero,-20(s0)
     f7c:	a031                	j	f88 <strlen+0x1a>
     f7e:	fec42783          	lw	a5,-20(s0)
     f82:	2785                	addiw	a5,a5,1
     f84:	fef42623          	sw	a5,-20(s0)
     f88:	fec42783          	lw	a5,-20(s0)
     f8c:	fd843703          	ld	a4,-40(s0)
     f90:	97ba                	add	a5,a5,a4
     f92:	0007c783          	lbu	a5,0(a5)
     f96:	f7e5                	bnez	a5,f7e <strlen+0x10>
     f98:	fec42783          	lw	a5,-20(s0)
     f9c:	853e                	mv	a0,a5
     f9e:	7422                	ld	s0,40(sp)
     fa0:	6145                	addi	sp,sp,48
     fa2:	8082                	ret

0000000000000fa4 <memset>:
     fa4:	7179                	addi	sp,sp,-48
     fa6:	f422                	sd	s0,40(sp)
     fa8:	1800                	addi	s0,sp,48
     faa:	fca43c23          	sd	a0,-40(s0)
     fae:	87ae                	mv	a5,a1
     fb0:	8732                	mv	a4,a2
     fb2:	fcf42a23          	sw	a5,-44(s0)
     fb6:	87ba                	mv	a5,a4
     fb8:	fcf42823          	sw	a5,-48(s0)
     fbc:	fd843783          	ld	a5,-40(s0)
     fc0:	fef43023          	sd	a5,-32(s0)
     fc4:	fe042623          	sw	zero,-20(s0)
     fc8:	a00d                	j	fea <memset+0x46>
     fca:	fec42783          	lw	a5,-20(s0)
     fce:	fe043703          	ld	a4,-32(s0)
     fd2:	97ba                	add	a5,a5,a4
     fd4:	fd442703          	lw	a4,-44(s0)
     fd8:	0ff77713          	andi	a4,a4,255
     fdc:	00e78023          	sb	a4,0(a5)
     fe0:	fec42783          	lw	a5,-20(s0)
     fe4:	2785                	addiw	a5,a5,1
     fe6:	fef42623          	sw	a5,-20(s0)
     fea:	fec42703          	lw	a4,-20(s0)
     fee:	fd042783          	lw	a5,-48(s0)
     ff2:	2781                	sext.w	a5,a5
     ff4:	fcf76be3          	bltu	a4,a5,fca <memset+0x26>
     ff8:	fd843783          	ld	a5,-40(s0)
     ffc:	853e                	mv	a0,a5
     ffe:	7422                	ld	s0,40(sp)
    1000:	6145                	addi	sp,sp,48
    1002:	8082                	ret

0000000000001004 <strchr>:
    1004:	1101                	addi	sp,sp,-32
    1006:	ec22                	sd	s0,24(sp)
    1008:	1000                	addi	s0,sp,32
    100a:	fea43423          	sd	a0,-24(s0)
    100e:	87ae                	mv	a5,a1
    1010:	fef403a3          	sb	a5,-25(s0)
    1014:	a01d                	j	103a <strchr+0x36>
    1016:	fe843783          	ld	a5,-24(s0)
    101a:	0007c703          	lbu	a4,0(a5)
    101e:	fe744783          	lbu	a5,-25(s0)
    1022:	0ff7f793          	andi	a5,a5,255
    1026:	00e79563          	bne	a5,a4,1030 <strchr+0x2c>
    102a:	fe843783          	ld	a5,-24(s0)
    102e:	a821                	j	1046 <strchr+0x42>
    1030:	fe843783          	ld	a5,-24(s0)
    1034:	0785                	addi	a5,a5,1
    1036:	fef43423          	sd	a5,-24(s0)
    103a:	fe843783          	ld	a5,-24(s0)
    103e:	0007c783          	lbu	a5,0(a5)
    1042:	fbf1                	bnez	a5,1016 <strchr+0x12>
    1044:	4781                	li	a5,0
    1046:	853e                	mv	a0,a5
    1048:	6462                	ld	s0,24(sp)
    104a:	6105                	addi	sp,sp,32
    104c:	8082                	ret

000000000000104e <gets>:
    104e:	7179                	addi	sp,sp,-48
    1050:	f406                	sd	ra,40(sp)
    1052:	f022                	sd	s0,32(sp)
    1054:	1800                	addi	s0,sp,48
    1056:	fca43c23          	sd	a0,-40(s0)
    105a:	87ae                	mv	a5,a1
    105c:	fcf42a23          	sw	a5,-44(s0)
    1060:	fe042623          	sw	zero,-20(s0)
    1064:	a8a1                	j	10bc <gets+0x6e>
    1066:	fe740793          	addi	a5,s0,-25
    106a:	4605                	li	a2,1
    106c:	85be                	mv	a1,a5
    106e:	4501                	li	a0,0
    1070:	00000097          	auipc	ra,0x0
    1074:	2f6080e7          	jalr	758(ra) # 1366 <read>
    1078:	87aa                	mv	a5,a0
    107a:	fef42423          	sw	a5,-24(s0)
    107e:	fe842783          	lw	a5,-24(s0)
    1082:	2781                	sext.w	a5,a5
    1084:	04f05763          	blez	a5,10d2 <gets+0x84>
    1088:	fec42783          	lw	a5,-20(s0)
    108c:	0017871b          	addiw	a4,a5,1
    1090:	fee42623          	sw	a4,-20(s0)
    1094:	873e                	mv	a4,a5
    1096:	fd843783          	ld	a5,-40(s0)
    109a:	97ba                	add	a5,a5,a4
    109c:	fe744703          	lbu	a4,-25(s0)
    10a0:	00e78023          	sb	a4,0(a5)
    10a4:	fe744783          	lbu	a5,-25(s0)
    10a8:	873e                	mv	a4,a5
    10aa:	47a9                	li	a5,10
    10ac:	02f70463          	beq	a4,a5,10d4 <gets+0x86>
    10b0:	fe744783          	lbu	a5,-25(s0)
    10b4:	873e                	mv	a4,a5
    10b6:	47b5                	li	a5,13
    10b8:	00f70e63          	beq	a4,a5,10d4 <gets+0x86>
    10bc:	fec42783          	lw	a5,-20(s0)
    10c0:	2785                	addiw	a5,a5,1
    10c2:	0007871b          	sext.w	a4,a5
    10c6:	fd442783          	lw	a5,-44(s0)
    10ca:	2781                	sext.w	a5,a5
    10cc:	f8f74de3          	blt	a4,a5,1066 <gets+0x18>
    10d0:	a011                	j	10d4 <gets+0x86>
    10d2:	0001                	nop
    10d4:	fec42783          	lw	a5,-20(s0)
    10d8:	fd843703          	ld	a4,-40(s0)
    10dc:	97ba                	add	a5,a5,a4
    10de:	00078023          	sb	zero,0(a5)
    10e2:	fd843783          	ld	a5,-40(s0)
    10e6:	853e                	mv	a0,a5
    10e8:	70a2                	ld	ra,40(sp)
    10ea:	7402                	ld	s0,32(sp)
    10ec:	6145                	addi	sp,sp,48
    10ee:	8082                	ret

00000000000010f0 <stat>:
    10f0:	7179                	addi	sp,sp,-48
    10f2:	f406                	sd	ra,40(sp)
    10f4:	f022                	sd	s0,32(sp)
    10f6:	1800                	addi	s0,sp,48
    10f8:	fca43c23          	sd	a0,-40(s0)
    10fc:	fcb43823          	sd	a1,-48(s0)
    1100:	4581                	li	a1,0
    1102:	fd843503          	ld	a0,-40(s0)
    1106:	00000097          	auipc	ra,0x0
    110a:	288080e7          	jalr	648(ra) # 138e <open>
    110e:	87aa                	mv	a5,a0
    1110:	fef42623          	sw	a5,-20(s0)
    1114:	fec42783          	lw	a5,-20(s0)
    1118:	2781                	sext.w	a5,a5
    111a:	0007d463          	bgez	a5,1122 <stat+0x32>
    111e:	57fd                	li	a5,-1
    1120:	a035                	j	114c <stat+0x5c>
    1122:	fec42783          	lw	a5,-20(s0)
    1126:	fd043583          	ld	a1,-48(s0)
    112a:	853e                	mv	a0,a5
    112c:	00000097          	auipc	ra,0x0
    1130:	27a080e7          	jalr	634(ra) # 13a6 <fstat>
    1134:	87aa                	mv	a5,a0
    1136:	fef42423          	sw	a5,-24(s0)
    113a:	fec42783          	lw	a5,-20(s0)
    113e:	853e                	mv	a0,a5
    1140:	00000097          	auipc	ra,0x0
    1144:	236080e7          	jalr	566(ra) # 1376 <close>
    1148:	fe842783          	lw	a5,-24(s0)
    114c:	853e                	mv	a0,a5
    114e:	70a2                	ld	ra,40(sp)
    1150:	7402                	ld	s0,32(sp)
    1152:	6145                	addi	sp,sp,48
    1154:	8082                	ret

0000000000001156 <atoi>:
    1156:	7179                	addi	sp,sp,-48
    1158:	f422                	sd	s0,40(sp)
    115a:	1800                	addi	s0,sp,48
    115c:	fca43c23          	sd	a0,-40(s0)
    1160:	fe042623          	sw	zero,-20(s0)
    1164:	a815                	j	1198 <atoi+0x42>
    1166:	fec42703          	lw	a4,-20(s0)
    116a:	87ba                	mv	a5,a4
    116c:	0027979b          	slliw	a5,a5,0x2
    1170:	9fb9                	addw	a5,a5,a4
    1172:	0017979b          	slliw	a5,a5,0x1
    1176:	0007871b          	sext.w	a4,a5
    117a:	fd843783          	ld	a5,-40(s0)
    117e:	00178693          	addi	a3,a5,1
    1182:	fcd43c23          	sd	a3,-40(s0)
    1186:	0007c783          	lbu	a5,0(a5)
    118a:	2781                	sext.w	a5,a5
    118c:	9fb9                	addw	a5,a5,a4
    118e:	2781                	sext.w	a5,a5
    1190:	fd07879b          	addiw	a5,a5,-48
    1194:	fef42623          	sw	a5,-20(s0)
    1198:	fd843783          	ld	a5,-40(s0)
    119c:	0007c783          	lbu	a5,0(a5)
    11a0:	873e                	mv	a4,a5
    11a2:	02f00793          	li	a5,47
    11a6:	00e7fb63          	bgeu	a5,a4,11bc <atoi+0x66>
    11aa:	fd843783          	ld	a5,-40(s0)
    11ae:	0007c783          	lbu	a5,0(a5)
    11b2:	873e                	mv	a4,a5
    11b4:	03900793          	li	a5,57
    11b8:	fae7f7e3          	bgeu	a5,a4,1166 <atoi+0x10>
    11bc:	fec42783          	lw	a5,-20(s0)
    11c0:	853e                	mv	a0,a5
    11c2:	7422                	ld	s0,40(sp)
    11c4:	6145                	addi	sp,sp,48
    11c6:	8082                	ret

00000000000011c8 <memmove>:
    11c8:	7139                	addi	sp,sp,-64
    11ca:	fc22                	sd	s0,56(sp)
    11cc:	0080                	addi	s0,sp,64
    11ce:	fca43c23          	sd	a0,-40(s0)
    11d2:	fcb43823          	sd	a1,-48(s0)
    11d6:	87b2                	mv	a5,a2
    11d8:	fcf42623          	sw	a5,-52(s0)
    11dc:	fd843783          	ld	a5,-40(s0)
    11e0:	fef43423          	sd	a5,-24(s0)
    11e4:	fd043783          	ld	a5,-48(s0)
    11e8:	fef43023          	sd	a5,-32(s0)
    11ec:	fe043703          	ld	a4,-32(s0)
    11f0:	fe843783          	ld	a5,-24(s0)
    11f4:	02e7fc63          	bgeu	a5,a4,122c <memmove+0x64>
    11f8:	a00d                	j	121a <memmove+0x52>
    11fa:	fe043703          	ld	a4,-32(s0)
    11fe:	00170793          	addi	a5,a4,1
    1202:	fef43023          	sd	a5,-32(s0)
    1206:	fe843783          	ld	a5,-24(s0)
    120a:	00178693          	addi	a3,a5,1
    120e:	fed43423          	sd	a3,-24(s0)
    1212:	00074703          	lbu	a4,0(a4)
    1216:	00e78023          	sb	a4,0(a5)
    121a:	fcc42783          	lw	a5,-52(s0)
    121e:	fff7871b          	addiw	a4,a5,-1
    1222:	fce42623          	sw	a4,-52(s0)
    1226:	fcf04ae3          	bgtz	a5,11fa <memmove+0x32>
    122a:	a891                	j	127e <memmove+0xb6>
    122c:	fcc42783          	lw	a5,-52(s0)
    1230:	fe843703          	ld	a4,-24(s0)
    1234:	97ba                	add	a5,a5,a4
    1236:	fef43423          	sd	a5,-24(s0)
    123a:	fcc42783          	lw	a5,-52(s0)
    123e:	fe043703          	ld	a4,-32(s0)
    1242:	97ba                	add	a5,a5,a4
    1244:	fef43023          	sd	a5,-32(s0)
    1248:	a01d                	j	126e <memmove+0xa6>
    124a:	fe043783          	ld	a5,-32(s0)
    124e:	17fd                	addi	a5,a5,-1
    1250:	fef43023          	sd	a5,-32(s0)
    1254:	fe843783          	ld	a5,-24(s0)
    1258:	17fd                	addi	a5,a5,-1
    125a:	fef43423          	sd	a5,-24(s0)
    125e:	fe043783          	ld	a5,-32(s0)
    1262:	0007c703          	lbu	a4,0(a5)
    1266:	fe843783          	ld	a5,-24(s0)
    126a:	00e78023          	sb	a4,0(a5)
    126e:	fcc42783          	lw	a5,-52(s0)
    1272:	fff7871b          	addiw	a4,a5,-1
    1276:	fce42623          	sw	a4,-52(s0)
    127a:	fcf048e3          	bgtz	a5,124a <memmove+0x82>
    127e:	fd843783          	ld	a5,-40(s0)
    1282:	853e                	mv	a0,a5
    1284:	7462                	ld	s0,56(sp)
    1286:	6121                	addi	sp,sp,64
    1288:	8082                	ret

000000000000128a <memcmp>:
    128a:	7139                	addi	sp,sp,-64
    128c:	fc22                	sd	s0,56(sp)
    128e:	0080                	addi	s0,sp,64
    1290:	fca43c23          	sd	a0,-40(s0)
    1294:	fcb43823          	sd	a1,-48(s0)
    1298:	87b2                	mv	a5,a2
    129a:	fcf42623          	sw	a5,-52(s0)
    129e:	fd843783          	ld	a5,-40(s0)
    12a2:	fef43423          	sd	a5,-24(s0)
    12a6:	fd043783          	ld	a5,-48(s0)
    12aa:	fef43023          	sd	a5,-32(s0)
    12ae:	a0a1                	j	12f6 <memcmp+0x6c>
    12b0:	fe843783          	ld	a5,-24(s0)
    12b4:	0007c703          	lbu	a4,0(a5)
    12b8:	fe043783          	ld	a5,-32(s0)
    12bc:	0007c783          	lbu	a5,0(a5)
    12c0:	02f70163          	beq	a4,a5,12e2 <memcmp+0x58>
    12c4:	fe843783          	ld	a5,-24(s0)
    12c8:	0007c783          	lbu	a5,0(a5)
    12cc:	0007871b          	sext.w	a4,a5
    12d0:	fe043783          	ld	a5,-32(s0)
    12d4:	0007c783          	lbu	a5,0(a5)
    12d8:	2781                	sext.w	a5,a5
    12da:	40f707bb          	subw	a5,a4,a5
    12de:	2781                	sext.w	a5,a5
    12e0:	a01d                	j	1306 <memcmp+0x7c>
    12e2:	fe843783          	ld	a5,-24(s0)
    12e6:	0785                	addi	a5,a5,1
    12e8:	fef43423          	sd	a5,-24(s0)
    12ec:	fe043783          	ld	a5,-32(s0)
    12f0:	0785                	addi	a5,a5,1
    12f2:	fef43023          	sd	a5,-32(s0)
    12f6:	fcc42783          	lw	a5,-52(s0)
    12fa:	fff7871b          	addiw	a4,a5,-1
    12fe:	fce42623          	sw	a4,-52(s0)
    1302:	f7dd                	bnez	a5,12b0 <memcmp+0x26>
    1304:	4781                	li	a5,0
    1306:	853e                	mv	a0,a5
    1308:	7462                	ld	s0,56(sp)
    130a:	6121                	addi	sp,sp,64
    130c:	8082                	ret

000000000000130e <memcpy>:
    130e:	7179                	addi	sp,sp,-48
    1310:	f406                	sd	ra,40(sp)
    1312:	f022                	sd	s0,32(sp)
    1314:	1800                	addi	s0,sp,48
    1316:	fea43423          	sd	a0,-24(s0)
    131a:	feb43023          	sd	a1,-32(s0)
    131e:	87b2                	mv	a5,a2
    1320:	fcf42e23          	sw	a5,-36(s0)
    1324:	fdc42783          	lw	a5,-36(s0)
    1328:	863e                	mv	a2,a5
    132a:	fe043583          	ld	a1,-32(s0)
    132e:	fe843503          	ld	a0,-24(s0)
    1332:	00000097          	auipc	ra,0x0
    1336:	e96080e7          	jalr	-362(ra) # 11c8 <memmove>
    133a:	87aa                	mv	a5,a0
    133c:	853e                	mv	a0,a5
    133e:	70a2                	ld	ra,40(sp)
    1340:	7402                	ld	s0,32(sp)
    1342:	6145                	addi	sp,sp,48
    1344:	8082                	ret

0000000000001346 <fork>:
    1346:	4885                	li	a7,1
    1348:	00000073          	ecall
    134c:	8082                	ret

000000000000134e <exit>:
    134e:	4889                	li	a7,2
    1350:	00000073          	ecall
    1354:	8082                	ret

0000000000001356 <wait>:
    1356:	488d                	li	a7,3
    1358:	00000073          	ecall
    135c:	8082                	ret

000000000000135e <pipe>:
    135e:	4891                	li	a7,4
    1360:	00000073          	ecall
    1364:	8082                	ret

0000000000001366 <read>:
    1366:	4895                	li	a7,5
    1368:	00000073          	ecall
    136c:	8082                	ret

000000000000136e <write>:
    136e:	48c1                	li	a7,16
    1370:	00000073          	ecall
    1374:	8082                	ret

0000000000001376 <close>:
    1376:	48d5                	li	a7,21
    1378:	00000073          	ecall
    137c:	8082                	ret

000000000000137e <kill>:
    137e:	4899                	li	a7,6
    1380:	00000073          	ecall
    1384:	8082                	ret

0000000000001386 <exec>:
    1386:	489d                	li	a7,7
    1388:	00000073          	ecall
    138c:	8082                	ret

000000000000138e <open>:
    138e:	48bd                	li	a7,15
    1390:	00000073          	ecall
    1394:	8082                	ret

0000000000001396 <mknod>:
    1396:	48c5                	li	a7,17
    1398:	00000073          	ecall
    139c:	8082                	ret

000000000000139e <unlink>:
    139e:	48c9                	li	a7,18
    13a0:	00000073          	ecall
    13a4:	8082                	ret

00000000000013a6 <fstat>:
    13a6:	48a1                	li	a7,8
    13a8:	00000073          	ecall
    13ac:	8082                	ret

00000000000013ae <link>:
    13ae:	48cd                	li	a7,19
    13b0:	00000073          	ecall
    13b4:	8082                	ret

00000000000013b6 <mkdir>:
    13b6:	48d1                	li	a7,20
    13b8:	00000073          	ecall
    13bc:	8082                	ret

00000000000013be <chdir>:
    13be:	48a5                	li	a7,9
    13c0:	00000073          	ecall
    13c4:	8082                	ret

00000000000013c6 <dup>:
    13c6:	48a9                	li	a7,10
    13c8:	00000073          	ecall
    13cc:	8082                	ret

00000000000013ce <getpid>:
    13ce:	48ad                	li	a7,11
    13d0:	00000073          	ecall
    13d4:	8082                	ret

00000000000013d6 <sbrk>:
    13d6:	48b1                	li	a7,12
    13d8:	00000073          	ecall
    13dc:	8082                	ret

00000000000013de <sleep>:
    13de:	48b5                	li	a7,13
    13e0:	00000073          	ecall
    13e4:	8082                	ret

00000000000013e6 <uptime>:
    13e6:	48b9                	li	a7,14
    13e8:	00000073          	ecall
    13ec:	8082                	ret

00000000000013ee <putc>:
    13ee:	1101                	addi	sp,sp,-32
    13f0:	ec06                	sd	ra,24(sp)
    13f2:	e822                	sd	s0,16(sp)
    13f4:	1000                	addi	s0,sp,32
    13f6:	87aa                	mv	a5,a0
    13f8:	872e                	mv	a4,a1
    13fa:	fef42623          	sw	a5,-20(s0)
    13fe:	87ba                	mv	a5,a4
    1400:	fef405a3          	sb	a5,-21(s0)
    1404:	feb40713          	addi	a4,s0,-21
    1408:	fec42783          	lw	a5,-20(s0)
    140c:	4605                	li	a2,1
    140e:	85ba                	mv	a1,a4
    1410:	853e                	mv	a0,a5
    1412:	00000097          	auipc	ra,0x0
    1416:	f5c080e7          	jalr	-164(ra) # 136e <write>
    141a:	0001                	nop
    141c:	60e2                	ld	ra,24(sp)
    141e:	6442                	ld	s0,16(sp)
    1420:	6105                	addi	sp,sp,32
    1422:	8082                	ret

0000000000001424 <printint>:
    1424:	7139                	addi	sp,sp,-64
    1426:	fc06                	sd	ra,56(sp)
    1428:	f822                	sd	s0,48(sp)
    142a:	0080                	addi	s0,sp,64
    142c:	87aa                	mv	a5,a0
    142e:	8736                	mv	a4,a3
    1430:	fcf42623          	sw	a5,-52(s0)
    1434:	87ae                	mv	a5,a1
    1436:	fcf42423          	sw	a5,-56(s0)
    143a:	87b2                	mv	a5,a2
    143c:	fcf42223          	sw	a5,-60(s0)
    1440:	87ba                	mv	a5,a4
    1442:	fcf42023          	sw	a5,-64(s0)
    1446:	fe042423          	sw	zero,-24(s0)
    144a:	fc042783          	lw	a5,-64(s0)
    144e:	2781                	sext.w	a5,a5
    1450:	c38d                	beqz	a5,1472 <printint+0x4e>
    1452:	fc842783          	lw	a5,-56(s0)
    1456:	2781                	sext.w	a5,a5
    1458:	0007dd63          	bgez	a5,1472 <printint+0x4e>
    145c:	4785                	li	a5,1
    145e:	fef42423          	sw	a5,-24(s0)
    1462:	fc842783          	lw	a5,-56(s0)
    1466:	40f007bb          	negw	a5,a5
    146a:	2781                	sext.w	a5,a5
    146c:	fef42223          	sw	a5,-28(s0)
    1470:	a029                	j	147a <printint+0x56>
    1472:	fc842783          	lw	a5,-56(s0)
    1476:	fef42223          	sw	a5,-28(s0)
    147a:	fe042623          	sw	zero,-20(s0)
    147e:	fc442783          	lw	a5,-60(s0)
    1482:	fe442703          	lw	a4,-28(s0)
    1486:	02f777bb          	remuw	a5,a4,a5
    148a:	0007861b          	sext.w	a2,a5
    148e:	fec42783          	lw	a5,-20(s0)
    1492:	0017871b          	addiw	a4,a5,1
    1496:	fee42623          	sw	a4,-20(s0)
    149a:	00001697          	auipc	a3,0x1
    149e:	a8e68693          	addi	a3,a3,-1394 # 1f28 <digits>
    14a2:	02061713          	slli	a4,a2,0x20
    14a6:	9301                	srli	a4,a4,0x20
    14a8:	9736                	add	a4,a4,a3
    14aa:	00074703          	lbu	a4,0(a4)
    14ae:	ff040693          	addi	a3,s0,-16
    14b2:	97b6                	add	a5,a5,a3
    14b4:	fee78023          	sb	a4,-32(a5)
    14b8:	fc442783          	lw	a5,-60(s0)
    14bc:	fe442703          	lw	a4,-28(s0)
    14c0:	02f757bb          	divuw	a5,a4,a5
    14c4:	fef42223          	sw	a5,-28(s0)
    14c8:	fe442783          	lw	a5,-28(s0)
    14cc:	2781                	sext.w	a5,a5
    14ce:	fbc5                	bnez	a5,147e <printint+0x5a>
    14d0:	fe842783          	lw	a5,-24(s0)
    14d4:	2781                	sext.w	a5,a5
    14d6:	cf95                	beqz	a5,1512 <printint+0xee>
    14d8:	fec42783          	lw	a5,-20(s0)
    14dc:	0017871b          	addiw	a4,a5,1
    14e0:	fee42623          	sw	a4,-20(s0)
    14e4:	ff040713          	addi	a4,s0,-16
    14e8:	97ba                	add	a5,a5,a4
    14ea:	02d00713          	li	a4,45
    14ee:	fee78023          	sb	a4,-32(a5)
    14f2:	a005                	j	1512 <printint+0xee>
    14f4:	fec42783          	lw	a5,-20(s0)
    14f8:	ff040713          	addi	a4,s0,-16
    14fc:	97ba                	add	a5,a5,a4
    14fe:	fe07c703          	lbu	a4,-32(a5)
    1502:	fcc42783          	lw	a5,-52(s0)
    1506:	85ba                	mv	a1,a4
    1508:	853e                	mv	a0,a5
    150a:	00000097          	auipc	ra,0x0
    150e:	ee4080e7          	jalr	-284(ra) # 13ee <putc>
    1512:	fec42783          	lw	a5,-20(s0)
    1516:	37fd                	addiw	a5,a5,-1
    1518:	fef42623          	sw	a5,-20(s0)
    151c:	fec42783          	lw	a5,-20(s0)
    1520:	2781                	sext.w	a5,a5
    1522:	fc07d9e3          	bgez	a5,14f4 <printint+0xd0>
    1526:	0001                	nop
    1528:	0001                	nop
    152a:	70e2                	ld	ra,56(sp)
    152c:	7442                	ld	s0,48(sp)
    152e:	6121                	addi	sp,sp,64
    1530:	8082                	ret

0000000000001532 <printptr>:
    1532:	7179                	addi	sp,sp,-48
    1534:	f406                	sd	ra,40(sp)
    1536:	f022                	sd	s0,32(sp)
    1538:	1800                	addi	s0,sp,48
    153a:	87aa                	mv	a5,a0
    153c:	fcb43823          	sd	a1,-48(s0)
    1540:	fcf42e23          	sw	a5,-36(s0)
    1544:	fdc42783          	lw	a5,-36(s0)
    1548:	03000593          	li	a1,48
    154c:	853e                	mv	a0,a5
    154e:	00000097          	auipc	ra,0x0
    1552:	ea0080e7          	jalr	-352(ra) # 13ee <putc>
    1556:	fdc42783          	lw	a5,-36(s0)
    155a:	07800593          	li	a1,120
    155e:	853e                	mv	a0,a5
    1560:	00000097          	auipc	ra,0x0
    1564:	e8e080e7          	jalr	-370(ra) # 13ee <putc>
    1568:	fe042623          	sw	zero,-20(s0)
    156c:	a82d                	j	15a6 <printptr+0x74>
    156e:	fd043783          	ld	a5,-48(s0)
    1572:	93f1                	srli	a5,a5,0x3c
    1574:	00001717          	auipc	a4,0x1
    1578:	9b470713          	addi	a4,a4,-1612 # 1f28 <digits>
    157c:	97ba                	add	a5,a5,a4
    157e:	0007c703          	lbu	a4,0(a5)
    1582:	fdc42783          	lw	a5,-36(s0)
    1586:	85ba                	mv	a1,a4
    1588:	853e                	mv	a0,a5
    158a:	00000097          	auipc	ra,0x0
    158e:	e64080e7          	jalr	-412(ra) # 13ee <putc>
    1592:	fec42783          	lw	a5,-20(s0)
    1596:	2785                	addiw	a5,a5,1
    1598:	fef42623          	sw	a5,-20(s0)
    159c:	fd043783          	ld	a5,-48(s0)
    15a0:	0792                	slli	a5,a5,0x4
    15a2:	fcf43823          	sd	a5,-48(s0)
    15a6:	fec42783          	lw	a5,-20(s0)
    15aa:	873e                	mv	a4,a5
    15ac:	47bd                	li	a5,15
    15ae:	fce7f0e3          	bgeu	a5,a4,156e <printptr+0x3c>
    15b2:	0001                	nop
    15b4:	0001                	nop
    15b6:	70a2                	ld	ra,40(sp)
    15b8:	7402                	ld	s0,32(sp)
    15ba:	6145                	addi	sp,sp,48
    15bc:	8082                	ret

00000000000015be <vprintf>:
    15be:	715d                	addi	sp,sp,-80
    15c0:	e486                	sd	ra,72(sp)
    15c2:	e0a2                	sd	s0,64(sp)
    15c4:	0880                	addi	s0,sp,80
    15c6:	87aa                	mv	a5,a0
    15c8:	fcb43023          	sd	a1,-64(s0)
    15cc:	fac43c23          	sd	a2,-72(s0)
    15d0:	fcf42623          	sw	a5,-52(s0)
    15d4:	fe042023          	sw	zero,-32(s0)
    15d8:	fe042223          	sw	zero,-28(s0)
    15dc:	a42d                	j	1806 <vprintf+0x248>
    15de:	fe442783          	lw	a5,-28(s0)
    15e2:	fc043703          	ld	a4,-64(s0)
    15e6:	97ba                	add	a5,a5,a4
    15e8:	0007c783          	lbu	a5,0(a5)
    15ec:	fcf42e23          	sw	a5,-36(s0)
    15f0:	fe042783          	lw	a5,-32(s0)
    15f4:	2781                	sext.w	a5,a5
    15f6:	eb9d                	bnez	a5,162c <vprintf+0x6e>
    15f8:	fdc42783          	lw	a5,-36(s0)
    15fc:	0007871b          	sext.w	a4,a5
    1600:	02500793          	li	a5,37
    1604:	00f71763          	bne	a4,a5,1612 <vprintf+0x54>
    1608:	02500793          	li	a5,37
    160c:	fef42023          	sw	a5,-32(s0)
    1610:	a2f5                	j	17fc <vprintf+0x23e>
    1612:	fdc42783          	lw	a5,-36(s0)
    1616:	0ff7f713          	andi	a4,a5,255
    161a:	fcc42783          	lw	a5,-52(s0)
    161e:	85ba                	mv	a1,a4
    1620:	853e                	mv	a0,a5
    1622:	00000097          	auipc	ra,0x0
    1626:	dcc080e7          	jalr	-564(ra) # 13ee <putc>
    162a:	aac9                	j	17fc <vprintf+0x23e>
    162c:	fe042783          	lw	a5,-32(s0)
    1630:	0007871b          	sext.w	a4,a5
    1634:	02500793          	li	a5,37
    1638:	1cf71263          	bne	a4,a5,17fc <vprintf+0x23e>
    163c:	fdc42783          	lw	a5,-36(s0)
    1640:	0007871b          	sext.w	a4,a5
    1644:	06400793          	li	a5,100
    1648:	02f71463          	bne	a4,a5,1670 <vprintf+0xb2>
    164c:	fb843783          	ld	a5,-72(s0)
    1650:	00878713          	addi	a4,a5,8
    1654:	fae43c23          	sd	a4,-72(s0)
    1658:	4398                	lw	a4,0(a5)
    165a:	fcc42783          	lw	a5,-52(s0)
    165e:	4685                	li	a3,1
    1660:	4629                	li	a2,10
    1662:	85ba                	mv	a1,a4
    1664:	853e                	mv	a0,a5
    1666:	00000097          	auipc	ra,0x0
    166a:	dbe080e7          	jalr	-578(ra) # 1424 <printint>
    166e:	a269                	j	17f8 <vprintf+0x23a>
    1670:	fdc42783          	lw	a5,-36(s0)
    1674:	0007871b          	sext.w	a4,a5
    1678:	06c00793          	li	a5,108
    167c:	02f71663          	bne	a4,a5,16a8 <vprintf+0xea>
    1680:	fb843783          	ld	a5,-72(s0)
    1684:	00878713          	addi	a4,a5,8
    1688:	fae43c23          	sd	a4,-72(s0)
    168c:	639c                	ld	a5,0(a5)
    168e:	0007871b          	sext.w	a4,a5
    1692:	fcc42783          	lw	a5,-52(s0)
    1696:	4681                	li	a3,0
    1698:	4629                	li	a2,10
    169a:	85ba                	mv	a1,a4
    169c:	853e                	mv	a0,a5
    169e:	00000097          	auipc	ra,0x0
    16a2:	d86080e7          	jalr	-634(ra) # 1424 <printint>
    16a6:	aa89                	j	17f8 <vprintf+0x23a>
    16a8:	fdc42783          	lw	a5,-36(s0)
    16ac:	0007871b          	sext.w	a4,a5
    16b0:	07800793          	li	a5,120
    16b4:	02f71463          	bne	a4,a5,16dc <vprintf+0x11e>
    16b8:	fb843783          	ld	a5,-72(s0)
    16bc:	00878713          	addi	a4,a5,8
    16c0:	fae43c23          	sd	a4,-72(s0)
    16c4:	4398                	lw	a4,0(a5)
    16c6:	fcc42783          	lw	a5,-52(s0)
    16ca:	4681                	li	a3,0
    16cc:	4641                	li	a2,16
    16ce:	85ba                	mv	a1,a4
    16d0:	853e                	mv	a0,a5
    16d2:	00000097          	auipc	ra,0x0
    16d6:	d52080e7          	jalr	-686(ra) # 1424 <printint>
    16da:	aa39                	j	17f8 <vprintf+0x23a>
    16dc:	fdc42783          	lw	a5,-36(s0)
    16e0:	0007871b          	sext.w	a4,a5
    16e4:	07000793          	li	a5,112
    16e8:	02f71263          	bne	a4,a5,170c <vprintf+0x14e>
    16ec:	fb843783          	ld	a5,-72(s0)
    16f0:	00878713          	addi	a4,a5,8
    16f4:	fae43c23          	sd	a4,-72(s0)
    16f8:	6398                	ld	a4,0(a5)
    16fa:	fcc42783          	lw	a5,-52(s0)
    16fe:	85ba                	mv	a1,a4
    1700:	853e                	mv	a0,a5
    1702:	00000097          	auipc	ra,0x0
    1706:	e30080e7          	jalr	-464(ra) # 1532 <printptr>
    170a:	a0fd                	j	17f8 <vprintf+0x23a>
    170c:	fdc42783          	lw	a5,-36(s0)
    1710:	0007871b          	sext.w	a4,a5
    1714:	07300793          	li	a5,115
    1718:	04f71c63          	bne	a4,a5,1770 <vprintf+0x1b2>
    171c:	fb843783          	ld	a5,-72(s0)
    1720:	00878713          	addi	a4,a5,8
    1724:	fae43c23          	sd	a4,-72(s0)
    1728:	639c                	ld	a5,0(a5)
    172a:	fef43423          	sd	a5,-24(s0)
    172e:	fe843783          	ld	a5,-24(s0)
    1732:	eb8d                	bnez	a5,1764 <vprintf+0x1a6>
    1734:	00000797          	auipc	a5,0x0
    1738:	7ec78793          	addi	a5,a5,2028 # 1f20 <longjmp_1+0x302>
    173c:	fef43423          	sd	a5,-24(s0)
    1740:	a015                	j	1764 <vprintf+0x1a6>
    1742:	fe843783          	ld	a5,-24(s0)
    1746:	0007c703          	lbu	a4,0(a5)
    174a:	fcc42783          	lw	a5,-52(s0)
    174e:	85ba                	mv	a1,a4
    1750:	853e                	mv	a0,a5
    1752:	00000097          	auipc	ra,0x0
    1756:	c9c080e7          	jalr	-868(ra) # 13ee <putc>
    175a:	fe843783          	ld	a5,-24(s0)
    175e:	0785                	addi	a5,a5,1
    1760:	fef43423          	sd	a5,-24(s0)
    1764:	fe843783          	ld	a5,-24(s0)
    1768:	0007c783          	lbu	a5,0(a5)
    176c:	fbf9                	bnez	a5,1742 <vprintf+0x184>
    176e:	a069                	j	17f8 <vprintf+0x23a>
    1770:	fdc42783          	lw	a5,-36(s0)
    1774:	0007871b          	sext.w	a4,a5
    1778:	06300793          	li	a5,99
    177c:	02f71463          	bne	a4,a5,17a4 <vprintf+0x1e6>
    1780:	fb843783          	ld	a5,-72(s0)
    1784:	00878713          	addi	a4,a5,8
    1788:	fae43c23          	sd	a4,-72(s0)
    178c:	439c                	lw	a5,0(a5)
    178e:	0ff7f713          	andi	a4,a5,255
    1792:	fcc42783          	lw	a5,-52(s0)
    1796:	85ba                	mv	a1,a4
    1798:	853e                	mv	a0,a5
    179a:	00000097          	auipc	ra,0x0
    179e:	c54080e7          	jalr	-940(ra) # 13ee <putc>
    17a2:	a899                	j	17f8 <vprintf+0x23a>
    17a4:	fdc42783          	lw	a5,-36(s0)
    17a8:	0007871b          	sext.w	a4,a5
    17ac:	02500793          	li	a5,37
    17b0:	00f71f63          	bne	a4,a5,17ce <vprintf+0x210>
    17b4:	fdc42783          	lw	a5,-36(s0)
    17b8:	0ff7f713          	andi	a4,a5,255
    17bc:	fcc42783          	lw	a5,-52(s0)
    17c0:	85ba                	mv	a1,a4
    17c2:	853e                	mv	a0,a5
    17c4:	00000097          	auipc	ra,0x0
    17c8:	c2a080e7          	jalr	-982(ra) # 13ee <putc>
    17cc:	a035                	j	17f8 <vprintf+0x23a>
    17ce:	fcc42783          	lw	a5,-52(s0)
    17d2:	02500593          	li	a1,37
    17d6:	853e                	mv	a0,a5
    17d8:	00000097          	auipc	ra,0x0
    17dc:	c16080e7          	jalr	-1002(ra) # 13ee <putc>
    17e0:	fdc42783          	lw	a5,-36(s0)
    17e4:	0ff7f713          	andi	a4,a5,255
    17e8:	fcc42783          	lw	a5,-52(s0)
    17ec:	85ba                	mv	a1,a4
    17ee:	853e                	mv	a0,a5
    17f0:	00000097          	auipc	ra,0x0
    17f4:	bfe080e7          	jalr	-1026(ra) # 13ee <putc>
    17f8:	fe042023          	sw	zero,-32(s0)
    17fc:	fe442783          	lw	a5,-28(s0)
    1800:	2785                	addiw	a5,a5,1
    1802:	fef42223          	sw	a5,-28(s0)
    1806:	fe442783          	lw	a5,-28(s0)
    180a:	fc043703          	ld	a4,-64(s0)
    180e:	97ba                	add	a5,a5,a4
    1810:	0007c783          	lbu	a5,0(a5)
    1814:	dc0795e3          	bnez	a5,15de <vprintf+0x20>
    1818:	0001                	nop
    181a:	0001                	nop
    181c:	60a6                	ld	ra,72(sp)
    181e:	6406                	ld	s0,64(sp)
    1820:	6161                	addi	sp,sp,80
    1822:	8082                	ret

0000000000001824 <fprintf>:
    1824:	7159                	addi	sp,sp,-112
    1826:	fc06                	sd	ra,56(sp)
    1828:	f822                	sd	s0,48(sp)
    182a:	0080                	addi	s0,sp,64
    182c:	fcb43823          	sd	a1,-48(s0)
    1830:	e010                	sd	a2,0(s0)
    1832:	e414                	sd	a3,8(s0)
    1834:	e818                	sd	a4,16(s0)
    1836:	ec1c                	sd	a5,24(s0)
    1838:	03043023          	sd	a6,32(s0)
    183c:	03143423          	sd	a7,40(s0)
    1840:	87aa                	mv	a5,a0
    1842:	fcf42e23          	sw	a5,-36(s0)
    1846:	03040793          	addi	a5,s0,48
    184a:	fcf43423          	sd	a5,-56(s0)
    184e:	fc843783          	ld	a5,-56(s0)
    1852:	fd078793          	addi	a5,a5,-48
    1856:	fef43423          	sd	a5,-24(s0)
    185a:	fe843703          	ld	a4,-24(s0)
    185e:	fdc42783          	lw	a5,-36(s0)
    1862:	863a                	mv	a2,a4
    1864:	fd043583          	ld	a1,-48(s0)
    1868:	853e                	mv	a0,a5
    186a:	00000097          	auipc	ra,0x0
    186e:	d54080e7          	jalr	-684(ra) # 15be <vprintf>
    1872:	0001                	nop
    1874:	70e2                	ld	ra,56(sp)
    1876:	7442                	ld	s0,48(sp)
    1878:	6165                	addi	sp,sp,112
    187a:	8082                	ret

000000000000187c <printf>:
    187c:	7159                	addi	sp,sp,-112
    187e:	f406                	sd	ra,40(sp)
    1880:	f022                	sd	s0,32(sp)
    1882:	1800                	addi	s0,sp,48
    1884:	fca43c23          	sd	a0,-40(s0)
    1888:	e40c                	sd	a1,8(s0)
    188a:	e810                	sd	a2,16(s0)
    188c:	ec14                	sd	a3,24(s0)
    188e:	f018                	sd	a4,32(s0)
    1890:	f41c                	sd	a5,40(s0)
    1892:	03043823          	sd	a6,48(s0)
    1896:	03143c23          	sd	a7,56(s0)
    189a:	04040793          	addi	a5,s0,64
    189e:	fcf43823          	sd	a5,-48(s0)
    18a2:	fd043783          	ld	a5,-48(s0)
    18a6:	fc878793          	addi	a5,a5,-56
    18aa:	fef43423          	sd	a5,-24(s0)
    18ae:	fe843783          	ld	a5,-24(s0)
    18b2:	863e                	mv	a2,a5
    18b4:	fd843583          	ld	a1,-40(s0)
    18b8:	4505                	li	a0,1
    18ba:	00000097          	auipc	ra,0x0
    18be:	d04080e7          	jalr	-764(ra) # 15be <vprintf>
    18c2:	0001                	nop
    18c4:	70a2                	ld	ra,40(sp)
    18c6:	7402                	ld	s0,32(sp)
    18c8:	6165                	addi	sp,sp,112
    18ca:	8082                	ret

00000000000018cc <free>:
    18cc:	7179                	addi	sp,sp,-48
    18ce:	f422                	sd	s0,40(sp)
    18d0:	1800                	addi	s0,sp,48
    18d2:	fca43c23          	sd	a0,-40(s0)
    18d6:	fd843783          	ld	a5,-40(s0)
    18da:	17c1                	addi	a5,a5,-16
    18dc:	fef43023          	sd	a5,-32(s0)
    18e0:	00001797          	auipc	a5,0x1
    18e4:	a6078793          	addi	a5,a5,-1440 # 2340 <freep>
    18e8:	639c                	ld	a5,0(a5)
    18ea:	fef43423          	sd	a5,-24(s0)
    18ee:	a815                	j	1922 <free+0x56>
    18f0:	fe843783          	ld	a5,-24(s0)
    18f4:	639c                	ld	a5,0(a5)
    18f6:	fe843703          	ld	a4,-24(s0)
    18fa:	00f76f63          	bltu	a4,a5,1918 <free+0x4c>
    18fe:	fe043703          	ld	a4,-32(s0)
    1902:	fe843783          	ld	a5,-24(s0)
    1906:	02e7eb63          	bltu	a5,a4,193c <free+0x70>
    190a:	fe843783          	ld	a5,-24(s0)
    190e:	639c                	ld	a5,0(a5)
    1910:	fe043703          	ld	a4,-32(s0)
    1914:	02f76463          	bltu	a4,a5,193c <free+0x70>
    1918:	fe843783          	ld	a5,-24(s0)
    191c:	639c                	ld	a5,0(a5)
    191e:	fef43423          	sd	a5,-24(s0)
    1922:	fe043703          	ld	a4,-32(s0)
    1926:	fe843783          	ld	a5,-24(s0)
    192a:	fce7f3e3          	bgeu	a5,a4,18f0 <free+0x24>
    192e:	fe843783          	ld	a5,-24(s0)
    1932:	639c                	ld	a5,0(a5)
    1934:	fe043703          	ld	a4,-32(s0)
    1938:	faf77ce3          	bgeu	a4,a5,18f0 <free+0x24>
    193c:	fe043783          	ld	a5,-32(s0)
    1940:	479c                	lw	a5,8(a5)
    1942:	1782                	slli	a5,a5,0x20
    1944:	9381                	srli	a5,a5,0x20
    1946:	0792                	slli	a5,a5,0x4
    1948:	fe043703          	ld	a4,-32(s0)
    194c:	973e                	add	a4,a4,a5
    194e:	fe843783          	ld	a5,-24(s0)
    1952:	639c                	ld	a5,0(a5)
    1954:	02f71763          	bne	a4,a5,1982 <free+0xb6>
    1958:	fe043783          	ld	a5,-32(s0)
    195c:	4798                	lw	a4,8(a5)
    195e:	fe843783          	ld	a5,-24(s0)
    1962:	639c                	ld	a5,0(a5)
    1964:	479c                	lw	a5,8(a5)
    1966:	9fb9                	addw	a5,a5,a4
    1968:	0007871b          	sext.w	a4,a5
    196c:	fe043783          	ld	a5,-32(s0)
    1970:	c798                	sw	a4,8(a5)
    1972:	fe843783          	ld	a5,-24(s0)
    1976:	639c                	ld	a5,0(a5)
    1978:	6398                	ld	a4,0(a5)
    197a:	fe043783          	ld	a5,-32(s0)
    197e:	e398                	sd	a4,0(a5)
    1980:	a039                	j	198e <free+0xc2>
    1982:	fe843783          	ld	a5,-24(s0)
    1986:	6398                	ld	a4,0(a5)
    1988:	fe043783          	ld	a5,-32(s0)
    198c:	e398                	sd	a4,0(a5)
    198e:	fe843783          	ld	a5,-24(s0)
    1992:	479c                	lw	a5,8(a5)
    1994:	1782                	slli	a5,a5,0x20
    1996:	9381                	srli	a5,a5,0x20
    1998:	0792                	slli	a5,a5,0x4
    199a:	fe843703          	ld	a4,-24(s0)
    199e:	97ba                	add	a5,a5,a4
    19a0:	fe043703          	ld	a4,-32(s0)
    19a4:	02f71563          	bne	a4,a5,19ce <free+0x102>
    19a8:	fe843783          	ld	a5,-24(s0)
    19ac:	4798                	lw	a4,8(a5)
    19ae:	fe043783          	ld	a5,-32(s0)
    19b2:	479c                	lw	a5,8(a5)
    19b4:	9fb9                	addw	a5,a5,a4
    19b6:	0007871b          	sext.w	a4,a5
    19ba:	fe843783          	ld	a5,-24(s0)
    19be:	c798                	sw	a4,8(a5)
    19c0:	fe043783          	ld	a5,-32(s0)
    19c4:	6398                	ld	a4,0(a5)
    19c6:	fe843783          	ld	a5,-24(s0)
    19ca:	e398                	sd	a4,0(a5)
    19cc:	a031                	j	19d8 <free+0x10c>
    19ce:	fe843783          	ld	a5,-24(s0)
    19d2:	fe043703          	ld	a4,-32(s0)
    19d6:	e398                	sd	a4,0(a5)
    19d8:	00001797          	auipc	a5,0x1
    19dc:	96878793          	addi	a5,a5,-1688 # 2340 <freep>
    19e0:	fe843703          	ld	a4,-24(s0)
    19e4:	e398                	sd	a4,0(a5)
    19e6:	0001                	nop
    19e8:	7422                	ld	s0,40(sp)
    19ea:	6145                	addi	sp,sp,48
    19ec:	8082                	ret

00000000000019ee <morecore>:
    19ee:	7179                	addi	sp,sp,-48
    19f0:	f406                	sd	ra,40(sp)
    19f2:	f022                	sd	s0,32(sp)
    19f4:	1800                	addi	s0,sp,48
    19f6:	87aa                	mv	a5,a0
    19f8:	fcf42e23          	sw	a5,-36(s0)
    19fc:	fdc42783          	lw	a5,-36(s0)
    1a00:	0007871b          	sext.w	a4,a5
    1a04:	6785                	lui	a5,0x1
    1a06:	00f77563          	bgeu	a4,a5,1a10 <morecore+0x22>
    1a0a:	6785                	lui	a5,0x1
    1a0c:	fcf42e23          	sw	a5,-36(s0)
    1a10:	fdc42783          	lw	a5,-36(s0)
    1a14:	0047979b          	slliw	a5,a5,0x4
    1a18:	2781                	sext.w	a5,a5
    1a1a:	2781                	sext.w	a5,a5
    1a1c:	853e                	mv	a0,a5
    1a1e:	00000097          	auipc	ra,0x0
    1a22:	9b8080e7          	jalr	-1608(ra) # 13d6 <sbrk>
    1a26:	fea43423          	sd	a0,-24(s0)
    1a2a:	fe843703          	ld	a4,-24(s0)
    1a2e:	57fd                	li	a5,-1
    1a30:	00f71463          	bne	a4,a5,1a38 <morecore+0x4a>
    1a34:	4781                	li	a5,0
    1a36:	a03d                	j	1a64 <morecore+0x76>
    1a38:	fe843783          	ld	a5,-24(s0)
    1a3c:	fef43023          	sd	a5,-32(s0)
    1a40:	fe043783          	ld	a5,-32(s0)
    1a44:	fdc42703          	lw	a4,-36(s0)
    1a48:	c798                	sw	a4,8(a5)
    1a4a:	fe043783          	ld	a5,-32(s0)
    1a4e:	07c1                	addi	a5,a5,16
    1a50:	853e                	mv	a0,a5
    1a52:	00000097          	auipc	ra,0x0
    1a56:	e7a080e7          	jalr	-390(ra) # 18cc <free>
    1a5a:	00001797          	auipc	a5,0x1
    1a5e:	8e678793          	addi	a5,a5,-1818 # 2340 <freep>
    1a62:	639c                	ld	a5,0(a5)
    1a64:	853e                	mv	a0,a5
    1a66:	70a2                	ld	ra,40(sp)
    1a68:	7402                	ld	s0,32(sp)
    1a6a:	6145                	addi	sp,sp,48
    1a6c:	8082                	ret

0000000000001a6e <malloc>:
    1a6e:	7139                	addi	sp,sp,-64
    1a70:	fc06                	sd	ra,56(sp)
    1a72:	f822                	sd	s0,48(sp)
    1a74:	0080                	addi	s0,sp,64
    1a76:	87aa                	mv	a5,a0
    1a78:	fcf42623          	sw	a5,-52(s0)
    1a7c:	fcc46783          	lwu	a5,-52(s0)
    1a80:	07bd                	addi	a5,a5,15
    1a82:	8391                	srli	a5,a5,0x4
    1a84:	2781                	sext.w	a5,a5
    1a86:	2785                	addiw	a5,a5,1
    1a88:	fcf42e23          	sw	a5,-36(s0)
    1a8c:	00001797          	auipc	a5,0x1
    1a90:	8b478793          	addi	a5,a5,-1868 # 2340 <freep>
    1a94:	639c                	ld	a5,0(a5)
    1a96:	fef43023          	sd	a5,-32(s0)
    1a9a:	fe043783          	ld	a5,-32(s0)
    1a9e:	ef95                	bnez	a5,1ada <malloc+0x6c>
    1aa0:	00001797          	auipc	a5,0x1
    1aa4:	89078793          	addi	a5,a5,-1904 # 2330 <base>
    1aa8:	fef43023          	sd	a5,-32(s0)
    1aac:	00001797          	auipc	a5,0x1
    1ab0:	89478793          	addi	a5,a5,-1900 # 2340 <freep>
    1ab4:	fe043703          	ld	a4,-32(s0)
    1ab8:	e398                	sd	a4,0(a5)
    1aba:	00001797          	auipc	a5,0x1
    1abe:	88678793          	addi	a5,a5,-1914 # 2340 <freep>
    1ac2:	6398                	ld	a4,0(a5)
    1ac4:	00001797          	auipc	a5,0x1
    1ac8:	86c78793          	addi	a5,a5,-1940 # 2330 <base>
    1acc:	e398                	sd	a4,0(a5)
    1ace:	00001797          	auipc	a5,0x1
    1ad2:	86278793          	addi	a5,a5,-1950 # 2330 <base>
    1ad6:	0007a423          	sw	zero,8(a5)
    1ada:	fe043783          	ld	a5,-32(s0)
    1ade:	639c                	ld	a5,0(a5)
    1ae0:	fef43423          	sd	a5,-24(s0)
    1ae4:	fe843783          	ld	a5,-24(s0)
    1ae8:	4798                	lw	a4,8(a5)
    1aea:	fdc42783          	lw	a5,-36(s0)
    1aee:	2781                	sext.w	a5,a5
    1af0:	06f76863          	bltu	a4,a5,1b60 <malloc+0xf2>
    1af4:	fe843783          	ld	a5,-24(s0)
    1af8:	4798                	lw	a4,8(a5)
    1afa:	fdc42783          	lw	a5,-36(s0)
    1afe:	2781                	sext.w	a5,a5
    1b00:	00e79963          	bne	a5,a4,1b12 <malloc+0xa4>
    1b04:	fe843783          	ld	a5,-24(s0)
    1b08:	6398                	ld	a4,0(a5)
    1b0a:	fe043783          	ld	a5,-32(s0)
    1b0e:	e398                	sd	a4,0(a5)
    1b10:	a82d                	j	1b4a <malloc+0xdc>
    1b12:	fe843783          	ld	a5,-24(s0)
    1b16:	4798                	lw	a4,8(a5)
    1b18:	fdc42783          	lw	a5,-36(s0)
    1b1c:	40f707bb          	subw	a5,a4,a5
    1b20:	0007871b          	sext.w	a4,a5
    1b24:	fe843783          	ld	a5,-24(s0)
    1b28:	c798                	sw	a4,8(a5)
    1b2a:	fe843783          	ld	a5,-24(s0)
    1b2e:	479c                	lw	a5,8(a5)
    1b30:	1782                	slli	a5,a5,0x20
    1b32:	9381                	srli	a5,a5,0x20
    1b34:	0792                	slli	a5,a5,0x4
    1b36:	fe843703          	ld	a4,-24(s0)
    1b3a:	97ba                	add	a5,a5,a4
    1b3c:	fef43423          	sd	a5,-24(s0)
    1b40:	fe843783          	ld	a5,-24(s0)
    1b44:	fdc42703          	lw	a4,-36(s0)
    1b48:	c798                	sw	a4,8(a5)
    1b4a:	00000797          	auipc	a5,0x0
    1b4e:	7f678793          	addi	a5,a5,2038 # 2340 <freep>
    1b52:	fe043703          	ld	a4,-32(s0)
    1b56:	e398                	sd	a4,0(a5)
    1b58:	fe843783          	ld	a5,-24(s0)
    1b5c:	07c1                	addi	a5,a5,16
    1b5e:	a091                	j	1ba2 <malloc+0x134>
    1b60:	00000797          	auipc	a5,0x0
    1b64:	7e078793          	addi	a5,a5,2016 # 2340 <freep>
    1b68:	639c                	ld	a5,0(a5)
    1b6a:	fe843703          	ld	a4,-24(s0)
    1b6e:	02f71063          	bne	a4,a5,1b8e <malloc+0x120>
    1b72:	fdc42783          	lw	a5,-36(s0)
    1b76:	853e                	mv	a0,a5
    1b78:	00000097          	auipc	ra,0x0
    1b7c:	e76080e7          	jalr	-394(ra) # 19ee <morecore>
    1b80:	fea43423          	sd	a0,-24(s0)
    1b84:	fe843783          	ld	a5,-24(s0)
    1b88:	e399                	bnez	a5,1b8e <malloc+0x120>
    1b8a:	4781                	li	a5,0
    1b8c:	a819                	j	1ba2 <malloc+0x134>
    1b8e:	fe843783          	ld	a5,-24(s0)
    1b92:	fef43023          	sd	a5,-32(s0)
    1b96:	fe843783          	ld	a5,-24(s0)
    1b9a:	639c                	ld	a5,0(a5)
    1b9c:	fef43423          	sd	a5,-24(s0)
    1ba0:	b791                	j	1ae4 <malloc+0x76>
    1ba2:	853e                	mv	a0,a5
    1ba4:	70e2                	ld	ra,56(sp)
    1ba6:	7442                	ld	s0,48(sp)
    1ba8:	6121                	addi	sp,sp,64
    1baa:	8082                	ret

0000000000001bac <setjmp>:
    1bac:	e100                	sd	s0,0(a0)
    1bae:	e504                	sd	s1,8(a0)
    1bb0:	01253823          	sd	s2,16(a0)
    1bb4:	01353c23          	sd	s3,24(a0)
    1bb8:	03453023          	sd	s4,32(a0)
    1bbc:	03553423          	sd	s5,40(a0)
    1bc0:	03653823          	sd	s6,48(a0)
    1bc4:	03753c23          	sd	s7,56(a0)
    1bc8:	05853023          	sd	s8,64(a0)
    1bcc:	05953423          	sd	s9,72(a0)
    1bd0:	05a53823          	sd	s10,80(a0)
    1bd4:	05b53c23          	sd	s11,88(a0)
    1bd8:	06153023          	sd	ra,96(a0)
    1bdc:	06253423          	sd	sp,104(a0)
    1be0:	4501                	li	a0,0
    1be2:	8082                	ret

0000000000001be4 <longjmp>:
    1be4:	6100                	ld	s0,0(a0)
    1be6:	6504                	ld	s1,8(a0)
    1be8:	01053903          	ld	s2,16(a0)
    1bec:	01853983          	ld	s3,24(a0)
    1bf0:	02053a03          	ld	s4,32(a0)
    1bf4:	02853a83          	ld	s5,40(a0)
    1bf8:	03053b03          	ld	s6,48(a0)
    1bfc:	03853b83          	ld	s7,56(a0)
    1c00:	04053c03          	ld	s8,64(a0)
    1c04:	04853c83          	ld	s9,72(a0)
    1c08:	05053d03          	ld	s10,80(a0)
    1c0c:	05853d83          	ld	s11,88(a0)
    1c10:	06053083          	ld	ra,96(a0)
    1c14:	06853103          	ld	sp,104(a0)
    1c18:	c199                	beqz	a1,1c1e <longjmp_1>
    1c1a:	852e                	mv	a0,a1
    1c1c:	8082                	ret

0000000000001c1e <longjmp_1>:
    1c1e:	4505                	li	a0,1
    1c20:	8082                	ret
