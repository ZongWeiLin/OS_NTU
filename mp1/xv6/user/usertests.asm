
user/_usertests:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <r_sp>:
       0:	1101                	addi	sp,sp,-32
       2:	ec22                	sd	s0,24(sp)
       4:	1000                	addi	s0,sp,32
       6:	878a                	mv	a5,sp
       8:	fef43423          	sd	a5,-24(s0)
       c:	fe843783          	ld	a5,-24(s0)
      10:	853e                	mv	a0,a5
      12:	6462                	ld	s0,24(sp)
      14:	6105                	addi	sp,sp,32
      16:	8082                	ret

0000000000000018 <copyin>:
      18:	715d                	addi	sp,sp,-80
      1a:	e486                	sd	ra,72(sp)
      1c:	e0a2                	sd	s0,64(sp)
      1e:	0880                	addi	s0,sp,80
      20:	faa43c23          	sd	a0,-72(s0)
      24:	4785                	li	a5,1
      26:	07fe                	slli	a5,a5,0x1f
      28:	fcf43423          	sd	a5,-56(s0)
      2c:	57fd                	li	a5,-1
      2e:	fcf43823          	sd	a5,-48(s0)
      32:	fe042623          	sw	zero,-20(s0)
      36:	a245                	j	1d6 <copyin+0x1be>
      38:	fec42783          	lw	a5,-20(s0)
      3c:	078e                	slli	a5,a5,0x3
      3e:	ff040713          	addi	a4,s0,-16
      42:	97ba                	add	a5,a5,a4
      44:	fd87b783          	ld	a5,-40(a5)
      48:	fef43023          	sd	a5,-32(s0)
      4c:	20100593          	li	a1,513
      50:	00008517          	auipc	a0,0x8
      54:	c2050513          	addi	a0,a0,-992 # 7c70 <longjmp_1+0x328>
      58:	00007097          	auipc	ra,0x7
      5c:	060080e7          	jalr	96(ra) # 70b8 <open>
      60:	87aa                	mv	a5,a0
      62:	fcf42e23          	sw	a5,-36(s0)
      66:	fdc42783          	lw	a5,-36(s0)
      6a:	2781                	sext.w	a5,a5
      6c:	0007df63          	bgez	a5,8a <copyin+0x72>
      70:	00008517          	auipc	a0,0x8
      74:	c0850513          	addi	a0,a0,-1016 # 7c78 <longjmp_1+0x330>
      78:	00007097          	auipc	ra,0x7
      7c:	52e080e7          	jalr	1326(ra) # 75a6 <printf>
      80:	4505                	li	a0,1
      82:	00007097          	auipc	ra,0x7
      86:	ff6080e7          	jalr	-10(ra) # 7078 <exit>
      8a:	fe043703          	ld	a4,-32(s0)
      8e:	fdc42783          	lw	a5,-36(s0)
      92:	6609                	lui	a2,0x2
      94:	85ba                	mv	a1,a4
      96:	853e                	mv	a0,a5
      98:	00007097          	auipc	ra,0x7
      9c:	000080e7          	jalr	ra # 7098 <write>
      a0:	87aa                	mv	a5,a0
      a2:	fcf42c23          	sw	a5,-40(s0)
      a6:	fd842783          	lw	a5,-40(s0)
      aa:	2781                	sext.w	a5,a5
      ac:	0207c463          	bltz	a5,d4 <copyin+0xbc>
      b0:	fd842783          	lw	a5,-40(s0)
      b4:	863e                	mv	a2,a5
      b6:	fe043583          	ld	a1,-32(s0)
      ba:	00008517          	auipc	a0,0x8
      be:	bd650513          	addi	a0,a0,-1066 # 7c90 <longjmp_1+0x348>
      c2:	00007097          	auipc	ra,0x7
      c6:	4e4080e7          	jalr	1252(ra) # 75a6 <printf>
      ca:	4505                	li	a0,1
      cc:	00007097          	auipc	ra,0x7
      d0:	fac080e7          	jalr	-84(ra) # 7078 <exit>
      d4:	fdc42783          	lw	a5,-36(s0)
      d8:	853e                	mv	a0,a5
      da:	00007097          	auipc	ra,0x7
      de:	fc6080e7          	jalr	-58(ra) # 70a0 <close>
      e2:	00008517          	auipc	a0,0x8
      e6:	b8e50513          	addi	a0,a0,-1138 # 7c70 <longjmp_1+0x328>
      ea:	00007097          	auipc	ra,0x7
      ee:	fde080e7          	jalr	-34(ra) # 70c8 <unlink>
      f2:	fe043783          	ld	a5,-32(s0)
      f6:	6609                	lui	a2,0x2
      f8:	85be                	mv	a1,a5
      fa:	4505                	li	a0,1
      fc:	00007097          	auipc	ra,0x7
     100:	f9c080e7          	jalr	-100(ra) # 7098 <write>
     104:	87aa                	mv	a5,a0
     106:	fcf42c23          	sw	a5,-40(s0)
     10a:	fd842783          	lw	a5,-40(s0)
     10e:	2781                	sext.w	a5,a5
     110:	02f05463          	blez	a5,138 <copyin+0x120>
     114:	fd842783          	lw	a5,-40(s0)
     118:	863e                	mv	a2,a5
     11a:	fe043583          	ld	a1,-32(s0)
     11e:	00008517          	auipc	a0,0x8
     122:	ba250513          	addi	a0,a0,-1118 # 7cc0 <longjmp_1+0x378>
     126:	00007097          	auipc	ra,0x7
     12a:	480080e7          	jalr	1152(ra) # 75a6 <printf>
     12e:	4505                	li	a0,1
     130:	00007097          	auipc	ra,0x7
     134:	f48080e7          	jalr	-184(ra) # 7078 <exit>
     138:	fc040793          	addi	a5,s0,-64
     13c:	853e                	mv	a0,a5
     13e:	00007097          	auipc	ra,0x7
     142:	f4a080e7          	jalr	-182(ra) # 7088 <pipe>
     146:	87aa                	mv	a5,a0
     148:	0007df63          	bgez	a5,166 <copyin+0x14e>
     14c:	00008517          	auipc	a0,0x8
     150:	ba450513          	addi	a0,a0,-1116 # 7cf0 <longjmp_1+0x3a8>
     154:	00007097          	auipc	ra,0x7
     158:	452080e7          	jalr	1106(ra) # 75a6 <printf>
     15c:	4505                	li	a0,1
     15e:	00007097          	auipc	ra,0x7
     162:	f1a080e7          	jalr	-230(ra) # 7078 <exit>
     166:	fc442783          	lw	a5,-60(s0)
     16a:	fe043703          	ld	a4,-32(s0)
     16e:	6609                	lui	a2,0x2
     170:	85ba                	mv	a1,a4
     172:	853e                	mv	a0,a5
     174:	00007097          	auipc	ra,0x7
     178:	f24080e7          	jalr	-220(ra) # 7098 <write>
     17c:	87aa                	mv	a5,a0
     17e:	fcf42c23          	sw	a5,-40(s0)
     182:	fd842783          	lw	a5,-40(s0)
     186:	2781                	sext.w	a5,a5
     188:	02f05463          	blez	a5,1b0 <copyin+0x198>
     18c:	fd842783          	lw	a5,-40(s0)
     190:	863e                	mv	a2,a5
     192:	fe043583          	ld	a1,-32(s0)
     196:	00008517          	auipc	a0,0x8
     19a:	b6a50513          	addi	a0,a0,-1174 # 7d00 <longjmp_1+0x3b8>
     19e:	00007097          	auipc	ra,0x7
     1a2:	408080e7          	jalr	1032(ra) # 75a6 <printf>
     1a6:	4505                	li	a0,1
     1a8:	00007097          	auipc	ra,0x7
     1ac:	ed0080e7          	jalr	-304(ra) # 7078 <exit>
     1b0:	fc042783          	lw	a5,-64(s0)
     1b4:	853e                	mv	a0,a5
     1b6:	00007097          	auipc	ra,0x7
     1ba:	eea080e7          	jalr	-278(ra) # 70a0 <close>
     1be:	fc442783          	lw	a5,-60(s0)
     1c2:	853e                	mv	a0,a5
     1c4:	00007097          	auipc	ra,0x7
     1c8:	edc080e7          	jalr	-292(ra) # 70a0 <close>
     1cc:	fec42783          	lw	a5,-20(s0)
     1d0:	2785                	addiw	a5,a5,1
     1d2:	fef42623          	sw	a5,-20(s0)
     1d6:	fec42783          	lw	a5,-20(s0)
     1da:	0007871b          	sext.w	a4,a5
     1de:	4785                	li	a5,1
     1e0:	e4e7dce3          	bge	a5,a4,38 <copyin+0x20>
     1e4:	0001                	nop
     1e6:	0001                	nop
     1e8:	60a6                	ld	ra,72(sp)
     1ea:	6406                	ld	s0,64(sp)
     1ec:	6161                	addi	sp,sp,80
     1ee:	8082                	ret

00000000000001f0 <copyout>:
     1f0:	715d                	addi	sp,sp,-80
     1f2:	e486                	sd	ra,72(sp)
     1f4:	e0a2                	sd	s0,64(sp)
     1f6:	0880                	addi	s0,sp,80
     1f8:	faa43c23          	sd	a0,-72(s0)
     1fc:	4785                	li	a5,1
     1fe:	07fe                	slli	a5,a5,0x1f
     200:	fcf43423          	sd	a5,-56(s0)
     204:	57fd                	li	a5,-1
     206:	fcf43823          	sd	a5,-48(s0)
     20a:	fe042623          	sw	zero,-20(s0)
     20e:	a279                	j	39c <copyout+0x1ac>
     210:	fec42783          	lw	a5,-20(s0)
     214:	078e                	slli	a5,a5,0x3
     216:	ff040713          	addi	a4,s0,-16
     21a:	97ba                	add	a5,a5,a4
     21c:	fd87b783          	ld	a5,-40(a5)
     220:	fef43023          	sd	a5,-32(s0)
     224:	4581                	li	a1,0
     226:	00008517          	auipc	a0,0x8
     22a:	b0a50513          	addi	a0,a0,-1270 # 7d30 <longjmp_1+0x3e8>
     22e:	00007097          	auipc	ra,0x7
     232:	e8a080e7          	jalr	-374(ra) # 70b8 <open>
     236:	87aa                	mv	a5,a0
     238:	fcf42e23          	sw	a5,-36(s0)
     23c:	fdc42783          	lw	a5,-36(s0)
     240:	2781                	sext.w	a5,a5
     242:	0007df63          	bgez	a5,260 <copyout+0x70>
     246:	00008517          	auipc	a0,0x8
     24a:	af250513          	addi	a0,a0,-1294 # 7d38 <longjmp_1+0x3f0>
     24e:	00007097          	auipc	ra,0x7
     252:	358080e7          	jalr	856(ra) # 75a6 <printf>
     256:	4505                	li	a0,1
     258:	00007097          	auipc	ra,0x7
     25c:	e20080e7          	jalr	-480(ra) # 7078 <exit>
     260:	fe043703          	ld	a4,-32(s0)
     264:	fdc42783          	lw	a5,-36(s0)
     268:	6609                	lui	a2,0x2
     26a:	85ba                	mv	a1,a4
     26c:	853e                	mv	a0,a5
     26e:	00007097          	auipc	ra,0x7
     272:	e22080e7          	jalr	-478(ra) # 7090 <read>
     276:	87aa                	mv	a5,a0
     278:	fcf42c23          	sw	a5,-40(s0)
     27c:	fd842783          	lw	a5,-40(s0)
     280:	2781                	sext.w	a5,a5
     282:	02f05463          	blez	a5,2aa <copyout+0xba>
     286:	fd842783          	lw	a5,-40(s0)
     28a:	863e                	mv	a2,a5
     28c:	fe043583          	ld	a1,-32(s0)
     290:	00008517          	auipc	a0,0x8
     294:	ac050513          	addi	a0,a0,-1344 # 7d50 <longjmp_1+0x408>
     298:	00007097          	auipc	ra,0x7
     29c:	30e080e7          	jalr	782(ra) # 75a6 <printf>
     2a0:	4505                	li	a0,1
     2a2:	00007097          	auipc	ra,0x7
     2a6:	dd6080e7          	jalr	-554(ra) # 7078 <exit>
     2aa:	fdc42783          	lw	a5,-36(s0)
     2ae:	853e                	mv	a0,a5
     2b0:	00007097          	auipc	ra,0x7
     2b4:	df0080e7          	jalr	-528(ra) # 70a0 <close>
     2b8:	fc040793          	addi	a5,s0,-64
     2bc:	853e                	mv	a0,a5
     2be:	00007097          	auipc	ra,0x7
     2c2:	dca080e7          	jalr	-566(ra) # 7088 <pipe>
     2c6:	87aa                	mv	a5,a0
     2c8:	0007df63          	bgez	a5,2e6 <copyout+0xf6>
     2cc:	00008517          	auipc	a0,0x8
     2d0:	a2450513          	addi	a0,a0,-1500 # 7cf0 <longjmp_1+0x3a8>
     2d4:	00007097          	auipc	ra,0x7
     2d8:	2d2080e7          	jalr	722(ra) # 75a6 <printf>
     2dc:	4505                	li	a0,1
     2de:	00007097          	auipc	ra,0x7
     2e2:	d9a080e7          	jalr	-614(ra) # 7078 <exit>
     2e6:	fc442783          	lw	a5,-60(s0)
     2ea:	4605                	li	a2,1
     2ec:	00008597          	auipc	a1,0x8
     2f0:	a9458593          	addi	a1,a1,-1388 # 7d80 <longjmp_1+0x438>
     2f4:	853e                	mv	a0,a5
     2f6:	00007097          	auipc	ra,0x7
     2fa:	da2080e7          	jalr	-606(ra) # 7098 <write>
     2fe:	87aa                	mv	a5,a0
     300:	fcf42c23          	sw	a5,-40(s0)
     304:	fd842783          	lw	a5,-40(s0)
     308:	0007871b          	sext.w	a4,a5
     30c:	4785                	li	a5,1
     30e:	00f70f63          	beq	a4,a5,32c <copyout+0x13c>
     312:	00008517          	auipc	a0,0x8
     316:	a7650513          	addi	a0,a0,-1418 # 7d88 <longjmp_1+0x440>
     31a:	00007097          	auipc	ra,0x7
     31e:	28c080e7          	jalr	652(ra) # 75a6 <printf>
     322:	4505                	li	a0,1
     324:	00007097          	auipc	ra,0x7
     328:	d54080e7          	jalr	-684(ra) # 7078 <exit>
     32c:	fc042783          	lw	a5,-64(s0)
     330:	fe043703          	ld	a4,-32(s0)
     334:	6609                	lui	a2,0x2
     336:	85ba                	mv	a1,a4
     338:	853e                	mv	a0,a5
     33a:	00007097          	auipc	ra,0x7
     33e:	d56080e7          	jalr	-682(ra) # 7090 <read>
     342:	87aa                	mv	a5,a0
     344:	fcf42c23          	sw	a5,-40(s0)
     348:	fd842783          	lw	a5,-40(s0)
     34c:	2781                	sext.w	a5,a5
     34e:	02f05463          	blez	a5,376 <copyout+0x186>
     352:	fd842783          	lw	a5,-40(s0)
     356:	863e                	mv	a2,a5
     358:	fe043583          	ld	a1,-32(s0)
     35c:	00008517          	auipc	a0,0x8
     360:	a4450513          	addi	a0,a0,-1468 # 7da0 <longjmp_1+0x458>
     364:	00007097          	auipc	ra,0x7
     368:	242080e7          	jalr	578(ra) # 75a6 <printf>
     36c:	4505                	li	a0,1
     36e:	00007097          	auipc	ra,0x7
     372:	d0a080e7          	jalr	-758(ra) # 7078 <exit>
     376:	fc042783          	lw	a5,-64(s0)
     37a:	853e                	mv	a0,a5
     37c:	00007097          	auipc	ra,0x7
     380:	d24080e7          	jalr	-732(ra) # 70a0 <close>
     384:	fc442783          	lw	a5,-60(s0)
     388:	853e                	mv	a0,a5
     38a:	00007097          	auipc	ra,0x7
     38e:	d16080e7          	jalr	-746(ra) # 70a0 <close>
     392:	fec42783          	lw	a5,-20(s0)
     396:	2785                	addiw	a5,a5,1
     398:	fef42623          	sw	a5,-20(s0)
     39c:	fec42783          	lw	a5,-20(s0)
     3a0:	0007871b          	sext.w	a4,a5
     3a4:	4785                	li	a5,1
     3a6:	e6e7d5e3          	bge	a5,a4,210 <copyout+0x20>
     3aa:	0001                	nop
     3ac:	0001                	nop
     3ae:	60a6                	ld	ra,72(sp)
     3b0:	6406                	ld	s0,64(sp)
     3b2:	6161                	addi	sp,sp,80
     3b4:	8082                	ret

00000000000003b6 <copyinstr1>:
     3b6:	715d                	addi	sp,sp,-80
     3b8:	e486                	sd	ra,72(sp)
     3ba:	e0a2                	sd	s0,64(sp)
     3bc:	0880                	addi	s0,sp,80
     3be:	faa43c23          	sd	a0,-72(s0)
     3c2:	4785                	li	a5,1
     3c4:	07fe                	slli	a5,a5,0x1f
     3c6:	fcf43423          	sd	a5,-56(s0)
     3ca:	57fd                	li	a5,-1
     3cc:	fcf43823          	sd	a5,-48(s0)
     3d0:	fe042623          	sw	zero,-20(s0)
     3d4:	a09d                	j	43a <copyinstr1+0x84>
     3d6:	fec42783          	lw	a5,-20(s0)
     3da:	078e                	slli	a5,a5,0x3
     3dc:	ff040713          	addi	a4,s0,-16
     3e0:	97ba                	add	a5,a5,a4
     3e2:	fd87b783          	ld	a5,-40(a5)
     3e6:	fef43023          	sd	a5,-32(s0)
     3ea:	fe043783          	ld	a5,-32(s0)
     3ee:	20100593          	li	a1,513
     3f2:	853e                	mv	a0,a5
     3f4:	00007097          	auipc	ra,0x7
     3f8:	cc4080e7          	jalr	-828(ra) # 70b8 <open>
     3fc:	87aa                	mv	a5,a0
     3fe:	fcf42e23          	sw	a5,-36(s0)
     402:	fdc42783          	lw	a5,-36(s0)
     406:	2781                	sext.w	a5,a5
     408:	0207c463          	bltz	a5,430 <copyinstr1+0x7a>
     40c:	fdc42783          	lw	a5,-36(s0)
     410:	863e                	mv	a2,a5
     412:	fe043583          	ld	a1,-32(s0)
     416:	00008517          	auipc	a0,0x8
     41a:	9ba50513          	addi	a0,a0,-1606 # 7dd0 <longjmp_1+0x488>
     41e:	00007097          	auipc	ra,0x7
     422:	188080e7          	jalr	392(ra) # 75a6 <printf>
     426:	4505                	li	a0,1
     428:	00007097          	auipc	ra,0x7
     42c:	c50080e7          	jalr	-944(ra) # 7078 <exit>
     430:	fec42783          	lw	a5,-20(s0)
     434:	2785                	addiw	a5,a5,1
     436:	fef42623          	sw	a5,-20(s0)
     43a:	fec42783          	lw	a5,-20(s0)
     43e:	0007871b          	sext.w	a4,a5
     442:	4785                	li	a5,1
     444:	f8e7d9e3          	bge	a5,a4,3d6 <copyinstr1+0x20>
     448:	0001                	nop
     44a:	0001                	nop
     44c:	60a6                	ld	ra,72(sp)
     44e:	6406                	ld	s0,64(sp)
     450:	6161                	addi	sp,sp,80
     452:	8082                	ret

0000000000000454 <copyinstr2>:
     454:	7151                	addi	sp,sp,-240
     456:	f586                	sd	ra,232(sp)
     458:	f1a2                	sd	s0,224(sp)
     45a:	1980                	addi	s0,sp,240
     45c:	f0a43c23          	sd	a0,-232(s0)
     460:	fe042623          	sw	zero,-20(s0)
     464:	a839                	j	482 <copyinstr2+0x2e>
     466:	fec42783          	lw	a5,-20(s0)
     46a:	ff040713          	addi	a4,s0,-16
     46e:	97ba                	add	a5,a5,a4
     470:	07800713          	li	a4,120
     474:	f6e78423          	sb	a4,-152(a5)
     478:	fec42783          	lw	a5,-20(s0)
     47c:	2785                	addiw	a5,a5,1
     47e:	fef42623          	sw	a5,-20(s0)
     482:	fec42783          	lw	a5,-20(s0)
     486:	0007871b          	sext.w	a4,a5
     48a:	07f00793          	li	a5,127
     48e:	fce7dce3          	bge	a5,a4,466 <copyinstr2+0x12>
     492:	fc040c23          	sb	zero,-40(s0)
     496:	f5840793          	addi	a5,s0,-168
     49a:	853e                	mv	a0,a5
     49c:	00007097          	auipc	ra,0x7
     4a0:	c2c080e7          	jalr	-980(ra) # 70c8 <unlink>
     4a4:	87aa                	mv	a5,a0
     4a6:	fef42223          	sw	a5,-28(s0)
     4aa:	fe442783          	lw	a5,-28(s0)
     4ae:	0007871b          	sext.w	a4,a5
     4b2:	57fd                	li	a5,-1
     4b4:	02f70563          	beq	a4,a5,4de <copyinstr2+0x8a>
     4b8:	fe442703          	lw	a4,-28(s0)
     4bc:	f5840793          	addi	a5,s0,-168
     4c0:	863a                	mv	a2,a4
     4c2:	85be                	mv	a1,a5
     4c4:	00008517          	auipc	a0,0x8
     4c8:	92c50513          	addi	a0,a0,-1748 # 7df0 <longjmp_1+0x4a8>
     4cc:	00007097          	auipc	ra,0x7
     4d0:	0da080e7          	jalr	218(ra) # 75a6 <printf>
     4d4:	4505                	li	a0,1
     4d6:	00007097          	auipc	ra,0x7
     4da:	ba2080e7          	jalr	-1118(ra) # 7078 <exit>
     4de:	f5840793          	addi	a5,s0,-168
     4e2:	20100593          	li	a1,513
     4e6:	853e                	mv	a0,a5
     4e8:	00007097          	auipc	ra,0x7
     4ec:	bd0080e7          	jalr	-1072(ra) # 70b8 <open>
     4f0:	87aa                	mv	a5,a0
     4f2:	fef42023          	sw	a5,-32(s0)
     4f6:	fe042783          	lw	a5,-32(s0)
     4fa:	0007871b          	sext.w	a4,a5
     4fe:	57fd                	li	a5,-1
     500:	02f70563          	beq	a4,a5,52a <copyinstr2+0xd6>
     504:	fe042703          	lw	a4,-32(s0)
     508:	f5840793          	addi	a5,s0,-168
     50c:	863a                	mv	a2,a4
     50e:	85be                	mv	a1,a5
     510:	00008517          	auipc	a0,0x8
     514:	90050513          	addi	a0,a0,-1792 # 7e10 <longjmp_1+0x4c8>
     518:	00007097          	auipc	ra,0x7
     51c:	08e080e7          	jalr	142(ra) # 75a6 <printf>
     520:	4505                	li	a0,1
     522:	00007097          	auipc	ra,0x7
     526:	b56080e7          	jalr	-1194(ra) # 7078 <exit>
     52a:	f5840713          	addi	a4,s0,-168
     52e:	f5840793          	addi	a5,s0,-168
     532:	85ba                	mv	a1,a4
     534:	853e                	mv	a0,a5
     536:	00007097          	auipc	ra,0x7
     53a:	ba2080e7          	jalr	-1118(ra) # 70d8 <link>
     53e:	87aa                	mv	a5,a0
     540:	fef42223          	sw	a5,-28(s0)
     544:	fe442783          	lw	a5,-28(s0)
     548:	0007871b          	sext.w	a4,a5
     54c:	57fd                	li	a5,-1
     54e:	02f70763          	beq	a4,a5,57c <copyinstr2+0x128>
     552:	fe442683          	lw	a3,-28(s0)
     556:	f5840713          	addi	a4,s0,-168
     55a:	f5840793          	addi	a5,s0,-168
     55e:	863a                	mv	a2,a4
     560:	85be                	mv	a1,a5
     562:	00008517          	auipc	a0,0x8
     566:	8ce50513          	addi	a0,a0,-1842 # 7e30 <longjmp_1+0x4e8>
     56a:	00007097          	auipc	ra,0x7
     56e:	03c080e7          	jalr	60(ra) # 75a6 <printf>
     572:	4505                	li	a0,1
     574:	00007097          	auipc	ra,0x7
     578:	b04080e7          	jalr	-1276(ra) # 7078 <exit>
     57c:	00008797          	auipc	a5,0x8
     580:	8dc78793          	addi	a5,a5,-1828 # 7e58 <longjmp_1+0x510>
     584:	f4f43423          	sd	a5,-184(s0)
     588:	f4043823          	sd	zero,-176(s0)
     58c:	f4840713          	addi	a4,s0,-184
     590:	f5840793          	addi	a5,s0,-168
     594:	85ba                	mv	a1,a4
     596:	853e                	mv	a0,a5
     598:	00007097          	auipc	ra,0x7
     59c:	b18080e7          	jalr	-1256(ra) # 70b0 <exec>
     5a0:	87aa                	mv	a5,a0
     5a2:	fef42223          	sw	a5,-28(s0)
     5a6:	fe442783          	lw	a5,-28(s0)
     5aa:	0007871b          	sext.w	a4,a5
     5ae:	57fd                	li	a5,-1
     5b0:	02f70563          	beq	a4,a5,5da <copyinstr2+0x186>
     5b4:	fe042703          	lw	a4,-32(s0)
     5b8:	f5840793          	addi	a5,s0,-168
     5bc:	863a                	mv	a2,a4
     5be:	85be                	mv	a1,a5
     5c0:	00008517          	auipc	a0,0x8
     5c4:	8a050513          	addi	a0,a0,-1888 # 7e60 <longjmp_1+0x518>
     5c8:	00007097          	auipc	ra,0x7
     5cc:	fde080e7          	jalr	-34(ra) # 75a6 <printf>
     5d0:	4505                	li	a0,1
     5d2:	00007097          	auipc	ra,0x7
     5d6:	aa6080e7          	jalr	-1370(ra) # 7078 <exit>
     5da:	00007097          	auipc	ra,0x7
     5de:	a96080e7          	jalr	-1386(ra) # 7070 <fork>
     5e2:	87aa                	mv	a5,a0
     5e4:	fcf42e23          	sw	a5,-36(s0)
     5e8:	fdc42783          	lw	a5,-36(s0)
     5ec:	2781                	sext.w	a5,a5
     5ee:	0007df63          	bgez	a5,60c <copyinstr2+0x1b8>
     5f2:	00008517          	auipc	a0,0x8
     5f6:	88e50513          	addi	a0,a0,-1906 # 7e80 <longjmp_1+0x538>
     5fa:	00007097          	auipc	ra,0x7
     5fe:	fac080e7          	jalr	-84(ra) # 75a6 <printf>
     602:	4505                	li	a0,1
     604:	00007097          	auipc	ra,0x7
     608:	a74080e7          	jalr	-1420(ra) # 7078 <exit>
     60c:	fdc42783          	lw	a5,-36(s0)
     610:	2781                	sext.w	a5,a5
     612:	efd5                	bnez	a5,6ce <copyinstr2+0x27a>
     614:	fe042423          	sw	zero,-24(s0)
     618:	a00d                	j	63a <copyinstr2+0x1e6>
     61a:	0000f717          	auipc	a4,0xf
     61e:	1ee70713          	addi	a4,a4,494 # f808 <big.0>
     622:	fe842783          	lw	a5,-24(s0)
     626:	97ba                	add	a5,a5,a4
     628:	07800713          	li	a4,120
     62c:	00e78023          	sb	a4,0(a5)
     630:	fe842783          	lw	a5,-24(s0)
     634:	2785                	addiw	a5,a5,1
     636:	fef42423          	sw	a5,-24(s0)
     63a:	fe842783          	lw	a5,-24(s0)
     63e:	0007871b          	sext.w	a4,a5
     642:	6785                	lui	a5,0x1
     644:	fcf74be3          	blt	a4,a5,61a <copyinstr2+0x1c6>
     648:	0000f717          	auipc	a4,0xf
     64c:	1c070713          	addi	a4,a4,448 # f808 <big.0>
     650:	6785                	lui	a5,0x1
     652:	97ba                	add	a5,a5,a4
     654:	00078023          	sb	zero,0(a5) # 1000 <truncate3+0x1aa>
     658:	00008797          	auipc	a5,0x8
     65c:	89878793          	addi	a5,a5,-1896 # 7ef0 <longjmp_1+0x5a8>
     660:	6390                	ld	a2,0(a5)
     662:	6794                	ld	a3,8(a5)
     664:	6b98                	ld	a4,16(a5)
     666:	6f9c                	ld	a5,24(a5)
     668:	f2c43023          	sd	a2,-224(s0)
     66c:	f2d43423          	sd	a3,-216(s0)
     670:	f2e43823          	sd	a4,-208(s0)
     674:	f2f43c23          	sd	a5,-200(s0)
     678:	f2040793          	addi	a5,s0,-224
     67c:	85be                	mv	a1,a5
     67e:	00008517          	auipc	a0,0x8
     682:	81250513          	addi	a0,a0,-2030 # 7e90 <longjmp_1+0x548>
     686:	00007097          	auipc	ra,0x7
     68a:	a2a080e7          	jalr	-1494(ra) # 70b0 <exec>
     68e:	87aa                	mv	a5,a0
     690:	fef42223          	sw	a5,-28(s0)
     694:	fe442783          	lw	a5,-28(s0)
     698:	0007871b          	sext.w	a4,a5
     69c:	57fd                	li	a5,-1
     69e:	02f70263          	beq	a4,a5,6c2 <copyinstr2+0x26e>
     6a2:	fe042783          	lw	a5,-32(s0)
     6a6:	85be                	mv	a1,a5
     6a8:	00007517          	auipc	a0,0x7
     6ac:	7f050513          	addi	a0,a0,2032 # 7e98 <longjmp_1+0x550>
     6b0:	00007097          	auipc	ra,0x7
     6b4:	ef6080e7          	jalr	-266(ra) # 75a6 <printf>
     6b8:	4505                	li	a0,1
     6ba:	00007097          	auipc	ra,0x7
     6be:	9be080e7          	jalr	-1602(ra) # 7078 <exit>
     6c2:	2eb00513          	li	a0,747
     6c6:	00007097          	auipc	ra,0x7
     6ca:	9b2080e7          	jalr	-1614(ra) # 7078 <exit>
     6ce:	f4042223          	sw	zero,-188(s0)
     6d2:	f4440793          	addi	a5,s0,-188
     6d6:	853e                	mv	a0,a5
     6d8:	00007097          	auipc	ra,0x7
     6dc:	9a8080e7          	jalr	-1624(ra) # 7080 <wait>
     6e0:	f4442783          	lw	a5,-188(s0)
     6e4:	873e                	mv	a4,a5
     6e6:	2eb00793          	li	a5,747
     6ea:	00f70f63          	beq	a4,a5,708 <copyinstr2+0x2b4>
     6ee:	00007517          	auipc	a0,0x7
     6f2:	7d250513          	addi	a0,a0,2002 # 7ec0 <longjmp_1+0x578>
     6f6:	00007097          	auipc	ra,0x7
     6fa:	eb0080e7          	jalr	-336(ra) # 75a6 <printf>
     6fe:	4505                	li	a0,1
     700:	00007097          	auipc	ra,0x7
     704:	978080e7          	jalr	-1672(ra) # 7078 <exit>
     708:	0001                	nop
     70a:	70ae                	ld	ra,232(sp)
     70c:	740e                	ld	s0,224(sp)
     70e:	616d                	addi	sp,sp,240
     710:	8082                	ret

0000000000000712 <copyinstr3>:
     712:	715d                	addi	sp,sp,-80
     714:	e486                	sd	ra,72(sp)
     716:	e0a2                	sd	s0,64(sp)
     718:	0880                	addi	s0,sp,80
     71a:	faa43c23          	sd	a0,-72(s0)
     71e:	6509                	lui	a0,0x2
     720:	00007097          	auipc	ra,0x7
     724:	9e0080e7          	jalr	-1568(ra) # 7100 <sbrk>
     728:	4501                	li	a0,0
     72a:	00007097          	auipc	ra,0x7
     72e:	9d6080e7          	jalr	-1578(ra) # 7100 <sbrk>
     732:	87aa                	mv	a5,a0
     734:	fef43423          	sd	a5,-24(s0)
     738:	fe843703          	ld	a4,-24(s0)
     73c:	6785                	lui	a5,0x1
     73e:	17fd                	addi	a5,a5,-1
     740:	8ff9                	and	a5,a5,a4
     742:	c39d                	beqz	a5,768 <copyinstr3+0x56>
     744:	fe843783          	ld	a5,-24(s0)
     748:	2781                	sext.w	a5,a5
     74a:	873e                	mv	a4,a5
     74c:	6785                	lui	a5,0x1
     74e:	17fd                	addi	a5,a5,-1
     750:	8ff9                	and	a5,a5,a4
     752:	2781                	sext.w	a5,a5
     754:	6705                	lui	a4,0x1
     756:	40f707bb          	subw	a5,a4,a5
     75a:	2781                	sext.w	a5,a5
     75c:	2781                	sext.w	a5,a5
     75e:	853e                	mv	a0,a5
     760:	00007097          	auipc	ra,0x7
     764:	9a0080e7          	jalr	-1632(ra) # 7100 <sbrk>
     768:	4501                	li	a0,0
     76a:	00007097          	auipc	ra,0x7
     76e:	996080e7          	jalr	-1642(ra) # 7100 <sbrk>
     772:	87aa                	mv	a5,a0
     774:	fef43423          	sd	a5,-24(s0)
     778:	fe843703          	ld	a4,-24(s0)
     77c:	6785                	lui	a5,0x1
     77e:	17fd                	addi	a5,a5,-1
     780:	8ff9                	and	a5,a5,a4
     782:	cf91                	beqz	a5,79e <copyinstr3+0x8c>
     784:	00007517          	auipc	a0,0x7
     788:	78c50513          	addi	a0,a0,1932 # 7f10 <longjmp_1+0x5c8>
     78c:	00007097          	auipc	ra,0x7
     790:	e1a080e7          	jalr	-486(ra) # 75a6 <printf>
     794:	4505                	li	a0,1
     796:	00007097          	auipc	ra,0x7
     79a:	8e2080e7          	jalr	-1822(ra) # 7078 <exit>
     79e:	fe843783          	ld	a5,-24(s0)
     7a2:	17fd                	addi	a5,a5,-1
     7a4:	fef43023          	sd	a5,-32(s0)
     7a8:	fe043783          	ld	a5,-32(s0)
     7ac:	07800713          	li	a4,120
     7b0:	00e78023          	sb	a4,0(a5) # 1000 <truncate3+0x1aa>
     7b4:	fe043503          	ld	a0,-32(s0)
     7b8:	00007097          	auipc	ra,0x7
     7bc:	910080e7          	jalr	-1776(ra) # 70c8 <unlink>
     7c0:	87aa                	mv	a5,a0
     7c2:	fcf42e23          	sw	a5,-36(s0)
     7c6:	fdc42783          	lw	a5,-36(s0)
     7ca:	0007871b          	sext.w	a4,a5
     7ce:	57fd                	li	a5,-1
     7d0:	02f70463          	beq	a4,a5,7f8 <copyinstr3+0xe6>
     7d4:	fdc42783          	lw	a5,-36(s0)
     7d8:	863e                	mv	a2,a5
     7da:	fe043583          	ld	a1,-32(s0)
     7de:	00007517          	auipc	a0,0x7
     7e2:	61250513          	addi	a0,a0,1554 # 7df0 <longjmp_1+0x4a8>
     7e6:	00007097          	auipc	ra,0x7
     7ea:	dc0080e7          	jalr	-576(ra) # 75a6 <printf>
     7ee:	4505                	li	a0,1
     7f0:	00007097          	auipc	ra,0x7
     7f4:	888080e7          	jalr	-1912(ra) # 7078 <exit>
     7f8:	20100593          	li	a1,513
     7fc:	fe043503          	ld	a0,-32(s0)
     800:	00007097          	auipc	ra,0x7
     804:	8b8080e7          	jalr	-1864(ra) # 70b8 <open>
     808:	87aa                	mv	a5,a0
     80a:	fcf42c23          	sw	a5,-40(s0)
     80e:	fd842783          	lw	a5,-40(s0)
     812:	0007871b          	sext.w	a4,a5
     816:	57fd                	li	a5,-1
     818:	02f70463          	beq	a4,a5,840 <copyinstr3+0x12e>
     81c:	fd842783          	lw	a5,-40(s0)
     820:	863e                	mv	a2,a5
     822:	fe043583          	ld	a1,-32(s0)
     826:	00007517          	auipc	a0,0x7
     82a:	5ea50513          	addi	a0,a0,1514 # 7e10 <longjmp_1+0x4c8>
     82e:	00007097          	auipc	ra,0x7
     832:	d78080e7          	jalr	-648(ra) # 75a6 <printf>
     836:	4505                	li	a0,1
     838:	00007097          	auipc	ra,0x7
     83c:	840080e7          	jalr	-1984(ra) # 7078 <exit>
     840:	fe043583          	ld	a1,-32(s0)
     844:	fe043503          	ld	a0,-32(s0)
     848:	00007097          	auipc	ra,0x7
     84c:	890080e7          	jalr	-1904(ra) # 70d8 <link>
     850:	87aa                	mv	a5,a0
     852:	fcf42e23          	sw	a5,-36(s0)
     856:	fdc42783          	lw	a5,-36(s0)
     85a:	0007871b          	sext.w	a4,a5
     85e:	57fd                	li	a5,-1
     860:	02f70663          	beq	a4,a5,88c <copyinstr3+0x17a>
     864:	fdc42783          	lw	a5,-36(s0)
     868:	86be                	mv	a3,a5
     86a:	fe043603          	ld	a2,-32(s0)
     86e:	fe043583          	ld	a1,-32(s0)
     872:	00007517          	auipc	a0,0x7
     876:	5be50513          	addi	a0,a0,1470 # 7e30 <longjmp_1+0x4e8>
     87a:	00007097          	auipc	ra,0x7
     87e:	d2c080e7          	jalr	-724(ra) # 75a6 <printf>
     882:	4505                	li	a0,1
     884:	00006097          	auipc	ra,0x6
     888:	7f4080e7          	jalr	2036(ra) # 7078 <exit>
     88c:	00007797          	auipc	a5,0x7
     890:	5cc78793          	addi	a5,a5,1484 # 7e58 <longjmp_1+0x510>
     894:	fcf43423          	sd	a5,-56(s0)
     898:	fc043823          	sd	zero,-48(s0)
     89c:	fc840793          	addi	a5,s0,-56
     8a0:	85be                	mv	a1,a5
     8a2:	fe043503          	ld	a0,-32(s0)
     8a6:	00007097          	auipc	ra,0x7
     8aa:	80a080e7          	jalr	-2038(ra) # 70b0 <exec>
     8ae:	87aa                	mv	a5,a0
     8b0:	fcf42e23          	sw	a5,-36(s0)
     8b4:	fdc42783          	lw	a5,-36(s0)
     8b8:	0007871b          	sext.w	a4,a5
     8bc:	57fd                	li	a5,-1
     8be:	02f70463          	beq	a4,a5,8e6 <copyinstr3+0x1d4>
     8c2:	fd842783          	lw	a5,-40(s0)
     8c6:	863e                	mv	a2,a5
     8c8:	fe043583          	ld	a1,-32(s0)
     8cc:	00007517          	auipc	a0,0x7
     8d0:	59450513          	addi	a0,a0,1428 # 7e60 <longjmp_1+0x518>
     8d4:	00007097          	auipc	ra,0x7
     8d8:	cd2080e7          	jalr	-814(ra) # 75a6 <printf>
     8dc:	4505                	li	a0,1
     8de:	00006097          	auipc	ra,0x6
     8e2:	79a080e7          	jalr	1946(ra) # 7078 <exit>
     8e6:	0001                	nop
     8e8:	60a6                	ld	ra,72(sp)
     8ea:	6406                	ld	s0,64(sp)
     8ec:	6161                	addi	sp,sp,80
     8ee:	8082                	ret

00000000000008f0 <rwsbrk>:
     8f0:	1101                	addi	sp,sp,-32
     8f2:	ec06                	sd	ra,24(sp)
     8f4:	e822                	sd	s0,16(sp)
     8f6:	1000                	addi	s0,sp,32
     8f8:	6509                	lui	a0,0x2
     8fa:	00007097          	auipc	ra,0x7
     8fe:	806080e7          	jalr	-2042(ra) # 7100 <sbrk>
     902:	87aa                	mv	a5,a0
     904:	fef43423          	sd	a5,-24(s0)
     908:	fe843703          	ld	a4,-24(s0)
     90c:	57fd                	li	a5,-1
     90e:	00f71f63          	bne	a4,a5,92c <rwsbrk+0x3c>
     912:	00007517          	auipc	a0,0x7
     916:	60650513          	addi	a0,a0,1542 # 7f18 <longjmp_1+0x5d0>
     91a:	00007097          	auipc	ra,0x7
     91e:	c8c080e7          	jalr	-884(ra) # 75a6 <printf>
     922:	4505                	li	a0,1
     924:	00006097          	auipc	ra,0x6
     928:	754080e7          	jalr	1876(ra) # 7078 <exit>
     92c:	7579                	lui	a0,0xffffe
     92e:	00006097          	auipc	ra,0x6
     932:	7d2080e7          	jalr	2002(ra) # 7100 <sbrk>
     936:	872a                	mv	a4,a0
     938:	57fd                	li	a5,-1
     93a:	00f71f63          	bne	a4,a5,958 <rwsbrk+0x68>
     93e:	00007517          	auipc	a0,0x7
     942:	5f250513          	addi	a0,a0,1522 # 7f30 <longjmp_1+0x5e8>
     946:	00007097          	auipc	ra,0x7
     94a:	c60080e7          	jalr	-928(ra) # 75a6 <printf>
     94e:	4505                	li	a0,1
     950:	00006097          	auipc	ra,0x6
     954:	728080e7          	jalr	1832(ra) # 7078 <exit>
     958:	20100593          	li	a1,513
     95c:	00007517          	auipc	a0,0x7
     960:	06c50513          	addi	a0,a0,108 # 79c8 <longjmp_1+0x80>
     964:	00006097          	auipc	ra,0x6
     968:	754080e7          	jalr	1876(ra) # 70b8 <open>
     96c:	87aa                	mv	a5,a0
     96e:	fef42223          	sw	a5,-28(s0)
     972:	fe442783          	lw	a5,-28(s0)
     976:	2781                	sext.w	a5,a5
     978:	0007df63          	bgez	a5,996 <rwsbrk+0xa6>
     97c:	00007517          	auipc	a0,0x7
     980:	5d450513          	addi	a0,a0,1492 # 7f50 <longjmp_1+0x608>
     984:	00007097          	auipc	ra,0x7
     988:	c22080e7          	jalr	-990(ra) # 75a6 <printf>
     98c:	4505                	li	a0,1
     98e:	00006097          	auipc	ra,0x6
     992:	6ea080e7          	jalr	1770(ra) # 7078 <exit>
     996:	fe843703          	ld	a4,-24(s0)
     99a:	6785                	lui	a5,0x1
     99c:	97ba                	add	a5,a5,a4
     99e:	873e                	mv	a4,a5
     9a0:	fe442783          	lw	a5,-28(s0)
     9a4:	40000613          	li	a2,1024
     9a8:	85ba                	mv	a1,a4
     9aa:	853e                	mv	a0,a5
     9ac:	00006097          	auipc	ra,0x6
     9b0:	6ec080e7          	jalr	1772(ra) # 7098 <write>
     9b4:	87aa                	mv	a5,a0
     9b6:	fef42023          	sw	a5,-32(s0)
     9ba:	fe042783          	lw	a5,-32(s0)
     9be:	2781                	sext.w	a5,a5
     9c0:	0207c763          	bltz	a5,9ee <rwsbrk+0xfe>
     9c4:	fe843703          	ld	a4,-24(s0)
     9c8:	6785                	lui	a5,0x1
     9ca:	97ba                	add	a5,a5,a4
     9cc:	fe042703          	lw	a4,-32(s0)
     9d0:	863a                	mv	a2,a4
     9d2:	85be                	mv	a1,a5
     9d4:	00007517          	auipc	a0,0x7
     9d8:	59450513          	addi	a0,a0,1428 # 7f68 <longjmp_1+0x620>
     9dc:	00007097          	auipc	ra,0x7
     9e0:	bca080e7          	jalr	-1078(ra) # 75a6 <printf>
     9e4:	4505                	li	a0,1
     9e6:	00006097          	auipc	ra,0x6
     9ea:	692080e7          	jalr	1682(ra) # 7078 <exit>
     9ee:	fe442783          	lw	a5,-28(s0)
     9f2:	853e                	mv	a0,a5
     9f4:	00006097          	auipc	ra,0x6
     9f8:	6ac080e7          	jalr	1708(ra) # 70a0 <close>
     9fc:	00007517          	auipc	a0,0x7
     a00:	fcc50513          	addi	a0,a0,-52 # 79c8 <longjmp_1+0x80>
     a04:	00006097          	auipc	ra,0x6
     a08:	6c4080e7          	jalr	1732(ra) # 70c8 <unlink>
     a0c:	4581                	li	a1,0
     a0e:	00007517          	auipc	a0,0x7
     a12:	32250513          	addi	a0,a0,802 # 7d30 <longjmp_1+0x3e8>
     a16:	00006097          	auipc	ra,0x6
     a1a:	6a2080e7          	jalr	1698(ra) # 70b8 <open>
     a1e:	87aa                	mv	a5,a0
     a20:	fef42223          	sw	a5,-28(s0)
     a24:	fe442783          	lw	a5,-28(s0)
     a28:	2781                	sext.w	a5,a5
     a2a:	0007df63          	bgez	a5,a48 <rwsbrk+0x158>
     a2e:	00007517          	auipc	a0,0x7
     a32:	52250513          	addi	a0,a0,1314 # 7f50 <longjmp_1+0x608>
     a36:	00007097          	auipc	ra,0x7
     a3a:	b70080e7          	jalr	-1168(ra) # 75a6 <printf>
     a3e:	4505                	li	a0,1
     a40:	00006097          	auipc	ra,0x6
     a44:	638080e7          	jalr	1592(ra) # 7078 <exit>
     a48:	fe843703          	ld	a4,-24(s0)
     a4c:	6785                	lui	a5,0x1
     a4e:	97ba                	add	a5,a5,a4
     a50:	873e                	mv	a4,a5
     a52:	fe442783          	lw	a5,-28(s0)
     a56:	4629                	li	a2,10
     a58:	85ba                	mv	a1,a4
     a5a:	853e                	mv	a0,a5
     a5c:	00006097          	auipc	ra,0x6
     a60:	634080e7          	jalr	1588(ra) # 7090 <read>
     a64:	87aa                	mv	a5,a0
     a66:	fef42023          	sw	a5,-32(s0)
     a6a:	fe042783          	lw	a5,-32(s0)
     a6e:	2781                	sext.w	a5,a5
     a70:	0207c763          	bltz	a5,a9e <rwsbrk+0x1ae>
     a74:	fe843703          	ld	a4,-24(s0)
     a78:	6785                	lui	a5,0x1
     a7a:	97ba                	add	a5,a5,a4
     a7c:	fe042703          	lw	a4,-32(s0)
     a80:	863a                	mv	a2,a4
     a82:	85be                	mv	a1,a5
     a84:	00007517          	auipc	a0,0x7
     a88:	51450513          	addi	a0,a0,1300 # 7f98 <longjmp_1+0x650>
     a8c:	00007097          	auipc	ra,0x7
     a90:	b1a080e7          	jalr	-1254(ra) # 75a6 <printf>
     a94:	4505                	li	a0,1
     a96:	00006097          	auipc	ra,0x6
     a9a:	5e2080e7          	jalr	1506(ra) # 7078 <exit>
     a9e:	fe442783          	lw	a5,-28(s0)
     aa2:	853e                	mv	a0,a5
     aa4:	00006097          	auipc	ra,0x6
     aa8:	5fc080e7          	jalr	1532(ra) # 70a0 <close>
     aac:	4501                	li	a0,0
     aae:	00006097          	auipc	ra,0x6
     ab2:	5ca080e7          	jalr	1482(ra) # 7078 <exit>

0000000000000ab6 <truncate1>:
     ab6:	715d                	addi	sp,sp,-80
     ab8:	e486                	sd	ra,72(sp)
     aba:	e0a2                	sd	s0,64(sp)
     abc:	0880                	addi	s0,sp,80
     abe:	faa43c23          	sd	a0,-72(s0)
     ac2:	00007517          	auipc	a0,0x7
     ac6:	4fe50513          	addi	a0,a0,1278 # 7fc0 <longjmp_1+0x678>
     aca:	00006097          	auipc	ra,0x6
     ace:	5fe080e7          	jalr	1534(ra) # 70c8 <unlink>
     ad2:	60100593          	li	a1,1537
     ad6:	00007517          	auipc	a0,0x7
     ada:	4ea50513          	addi	a0,a0,1258 # 7fc0 <longjmp_1+0x678>
     ade:	00006097          	auipc	ra,0x6
     ae2:	5da080e7          	jalr	1498(ra) # 70b8 <open>
     ae6:	87aa                	mv	a5,a0
     ae8:	fef42623          	sw	a5,-20(s0)
     aec:	fec42783          	lw	a5,-20(s0)
     af0:	4611                	li	a2,4
     af2:	00007597          	auipc	a1,0x7
     af6:	4de58593          	addi	a1,a1,1246 # 7fd0 <longjmp_1+0x688>
     afa:	853e                	mv	a0,a5
     afc:	00006097          	auipc	ra,0x6
     b00:	59c080e7          	jalr	1436(ra) # 7098 <write>
     b04:	fec42783          	lw	a5,-20(s0)
     b08:	853e                	mv	a0,a5
     b0a:	00006097          	auipc	ra,0x6
     b0e:	596080e7          	jalr	1430(ra) # 70a0 <close>
     b12:	4581                	li	a1,0
     b14:	00007517          	auipc	a0,0x7
     b18:	4ac50513          	addi	a0,a0,1196 # 7fc0 <longjmp_1+0x678>
     b1c:	00006097          	auipc	ra,0x6
     b20:	59c080e7          	jalr	1436(ra) # 70b8 <open>
     b24:	87aa                	mv	a5,a0
     b26:	fef42423          	sw	a5,-24(s0)
     b2a:	fc040713          	addi	a4,s0,-64
     b2e:	fe842783          	lw	a5,-24(s0)
     b32:	02000613          	li	a2,32
     b36:	85ba                	mv	a1,a4
     b38:	853e                	mv	a0,a5
     b3a:	00006097          	auipc	ra,0x6
     b3e:	556080e7          	jalr	1366(ra) # 7090 <read>
     b42:	87aa                	mv	a5,a0
     b44:	fef42223          	sw	a5,-28(s0)
     b48:	fe442783          	lw	a5,-28(s0)
     b4c:	0007871b          	sext.w	a4,a5
     b50:	4791                	li	a5,4
     b52:	02f70463          	beq	a4,a5,b7a <truncate1+0xc4>
     b56:	fe442783          	lw	a5,-28(s0)
     b5a:	863e                	mv	a2,a5
     b5c:	fb843583          	ld	a1,-72(s0)
     b60:	00007517          	auipc	a0,0x7
     b64:	47850513          	addi	a0,a0,1144 # 7fd8 <longjmp_1+0x690>
     b68:	00007097          	auipc	ra,0x7
     b6c:	a3e080e7          	jalr	-1474(ra) # 75a6 <printf>
     b70:	4505                	li	a0,1
     b72:	00006097          	auipc	ra,0x6
     b76:	506080e7          	jalr	1286(ra) # 7078 <exit>
     b7a:	40100593          	li	a1,1025
     b7e:	00007517          	auipc	a0,0x7
     b82:	44250513          	addi	a0,a0,1090 # 7fc0 <longjmp_1+0x678>
     b86:	00006097          	auipc	ra,0x6
     b8a:	532080e7          	jalr	1330(ra) # 70b8 <open>
     b8e:	87aa                	mv	a5,a0
     b90:	fef42623          	sw	a5,-20(s0)
     b94:	4581                	li	a1,0
     b96:	00007517          	auipc	a0,0x7
     b9a:	42a50513          	addi	a0,a0,1066 # 7fc0 <longjmp_1+0x678>
     b9e:	00006097          	auipc	ra,0x6
     ba2:	51a080e7          	jalr	1306(ra) # 70b8 <open>
     ba6:	87aa                	mv	a5,a0
     ba8:	fef42023          	sw	a5,-32(s0)
     bac:	fc040713          	addi	a4,s0,-64
     bb0:	fe042783          	lw	a5,-32(s0)
     bb4:	02000613          	li	a2,32
     bb8:	85ba                	mv	a1,a4
     bba:	853e                	mv	a0,a5
     bbc:	00006097          	auipc	ra,0x6
     bc0:	4d4080e7          	jalr	1236(ra) # 7090 <read>
     bc4:	87aa                	mv	a5,a0
     bc6:	fef42223          	sw	a5,-28(s0)
     bca:	fe442783          	lw	a5,-28(s0)
     bce:	2781                	sext.w	a5,a5
     bd0:	cf95                	beqz	a5,c0c <truncate1+0x156>
     bd2:	fe042783          	lw	a5,-32(s0)
     bd6:	85be                	mv	a1,a5
     bd8:	00007517          	auipc	a0,0x7
     bdc:	42050513          	addi	a0,a0,1056 # 7ff8 <longjmp_1+0x6b0>
     be0:	00007097          	auipc	ra,0x7
     be4:	9c6080e7          	jalr	-1594(ra) # 75a6 <printf>
     be8:	fe442783          	lw	a5,-28(s0)
     bec:	863e                	mv	a2,a5
     bee:	fb843583          	ld	a1,-72(s0)
     bf2:	00007517          	auipc	a0,0x7
     bf6:	41650513          	addi	a0,a0,1046 # 8008 <longjmp_1+0x6c0>
     bfa:	00007097          	auipc	ra,0x7
     bfe:	9ac080e7          	jalr	-1620(ra) # 75a6 <printf>
     c02:	4505                	li	a0,1
     c04:	00006097          	auipc	ra,0x6
     c08:	474080e7          	jalr	1140(ra) # 7078 <exit>
     c0c:	fc040713          	addi	a4,s0,-64
     c10:	fe842783          	lw	a5,-24(s0)
     c14:	02000613          	li	a2,32
     c18:	85ba                	mv	a1,a4
     c1a:	853e                	mv	a0,a5
     c1c:	00006097          	auipc	ra,0x6
     c20:	474080e7          	jalr	1140(ra) # 7090 <read>
     c24:	87aa                	mv	a5,a0
     c26:	fef42223          	sw	a5,-28(s0)
     c2a:	fe442783          	lw	a5,-28(s0)
     c2e:	2781                	sext.w	a5,a5
     c30:	cf95                	beqz	a5,c6c <truncate1+0x1b6>
     c32:	fe842783          	lw	a5,-24(s0)
     c36:	85be                	mv	a1,a5
     c38:	00007517          	auipc	a0,0x7
     c3c:	3f050513          	addi	a0,a0,1008 # 8028 <longjmp_1+0x6e0>
     c40:	00007097          	auipc	ra,0x7
     c44:	966080e7          	jalr	-1690(ra) # 75a6 <printf>
     c48:	fe442783          	lw	a5,-28(s0)
     c4c:	863e                	mv	a2,a5
     c4e:	fb843583          	ld	a1,-72(s0)
     c52:	00007517          	auipc	a0,0x7
     c56:	3b650513          	addi	a0,a0,950 # 8008 <longjmp_1+0x6c0>
     c5a:	00007097          	auipc	ra,0x7
     c5e:	94c080e7          	jalr	-1716(ra) # 75a6 <printf>
     c62:	4505                	li	a0,1
     c64:	00006097          	auipc	ra,0x6
     c68:	414080e7          	jalr	1044(ra) # 7078 <exit>
     c6c:	fec42783          	lw	a5,-20(s0)
     c70:	4619                	li	a2,6
     c72:	00007597          	auipc	a1,0x7
     c76:	3c658593          	addi	a1,a1,966 # 8038 <longjmp_1+0x6f0>
     c7a:	853e                	mv	a0,a5
     c7c:	00006097          	auipc	ra,0x6
     c80:	41c080e7          	jalr	1052(ra) # 7098 <write>
     c84:	fc040713          	addi	a4,s0,-64
     c88:	fe042783          	lw	a5,-32(s0)
     c8c:	02000613          	li	a2,32
     c90:	85ba                	mv	a1,a4
     c92:	853e                	mv	a0,a5
     c94:	00006097          	auipc	ra,0x6
     c98:	3fc080e7          	jalr	1020(ra) # 7090 <read>
     c9c:	87aa                	mv	a5,a0
     c9e:	fef42223          	sw	a5,-28(s0)
     ca2:	fe442783          	lw	a5,-28(s0)
     ca6:	0007871b          	sext.w	a4,a5
     caa:	4799                	li	a5,6
     cac:	02f70463          	beq	a4,a5,cd4 <truncate1+0x21e>
     cb0:	fe442783          	lw	a5,-28(s0)
     cb4:	863e                	mv	a2,a5
     cb6:	fb843583          	ld	a1,-72(s0)
     cba:	00007517          	auipc	a0,0x7
     cbe:	38650513          	addi	a0,a0,902 # 8040 <longjmp_1+0x6f8>
     cc2:	00007097          	auipc	ra,0x7
     cc6:	8e4080e7          	jalr	-1820(ra) # 75a6 <printf>
     cca:	4505                	li	a0,1
     ccc:	00006097          	auipc	ra,0x6
     cd0:	3ac080e7          	jalr	940(ra) # 7078 <exit>
     cd4:	fc040713          	addi	a4,s0,-64
     cd8:	fe842783          	lw	a5,-24(s0)
     cdc:	02000613          	li	a2,32
     ce0:	85ba                	mv	a1,a4
     ce2:	853e                	mv	a0,a5
     ce4:	00006097          	auipc	ra,0x6
     ce8:	3ac080e7          	jalr	940(ra) # 7090 <read>
     cec:	87aa                	mv	a5,a0
     cee:	fef42223          	sw	a5,-28(s0)
     cf2:	fe442783          	lw	a5,-28(s0)
     cf6:	0007871b          	sext.w	a4,a5
     cfa:	4789                	li	a5,2
     cfc:	02f70463          	beq	a4,a5,d24 <truncate1+0x26e>
     d00:	fe442783          	lw	a5,-28(s0)
     d04:	863e                	mv	a2,a5
     d06:	fb843583          	ld	a1,-72(s0)
     d0a:	00007517          	auipc	a0,0x7
     d0e:	35650513          	addi	a0,a0,854 # 8060 <longjmp_1+0x718>
     d12:	00007097          	auipc	ra,0x7
     d16:	894080e7          	jalr	-1900(ra) # 75a6 <printf>
     d1a:	4505                	li	a0,1
     d1c:	00006097          	auipc	ra,0x6
     d20:	35c080e7          	jalr	860(ra) # 7078 <exit>
     d24:	00007517          	auipc	a0,0x7
     d28:	29c50513          	addi	a0,a0,668 # 7fc0 <longjmp_1+0x678>
     d2c:	00006097          	auipc	ra,0x6
     d30:	39c080e7          	jalr	924(ra) # 70c8 <unlink>
     d34:	fec42783          	lw	a5,-20(s0)
     d38:	853e                	mv	a0,a5
     d3a:	00006097          	auipc	ra,0x6
     d3e:	366080e7          	jalr	870(ra) # 70a0 <close>
     d42:	fe842783          	lw	a5,-24(s0)
     d46:	853e                	mv	a0,a5
     d48:	00006097          	auipc	ra,0x6
     d4c:	358080e7          	jalr	856(ra) # 70a0 <close>
     d50:	fe042783          	lw	a5,-32(s0)
     d54:	853e                	mv	a0,a5
     d56:	00006097          	auipc	ra,0x6
     d5a:	34a080e7          	jalr	842(ra) # 70a0 <close>
     d5e:	0001                	nop
     d60:	60a6                	ld	ra,72(sp)
     d62:	6406                	ld	s0,64(sp)
     d64:	6161                	addi	sp,sp,80
     d66:	8082                	ret

0000000000000d68 <truncate2>:
     d68:	7179                	addi	sp,sp,-48
     d6a:	f406                	sd	ra,40(sp)
     d6c:	f022                	sd	s0,32(sp)
     d6e:	1800                	addi	s0,sp,48
     d70:	fca43c23          	sd	a0,-40(s0)
     d74:	00007517          	auipc	a0,0x7
     d78:	24c50513          	addi	a0,a0,588 # 7fc0 <longjmp_1+0x678>
     d7c:	00006097          	auipc	ra,0x6
     d80:	34c080e7          	jalr	844(ra) # 70c8 <unlink>
     d84:	60100593          	li	a1,1537
     d88:	00007517          	auipc	a0,0x7
     d8c:	23850513          	addi	a0,a0,568 # 7fc0 <longjmp_1+0x678>
     d90:	00006097          	auipc	ra,0x6
     d94:	328080e7          	jalr	808(ra) # 70b8 <open>
     d98:	87aa                	mv	a5,a0
     d9a:	fef42623          	sw	a5,-20(s0)
     d9e:	fec42783          	lw	a5,-20(s0)
     da2:	4611                	li	a2,4
     da4:	00007597          	auipc	a1,0x7
     da8:	22c58593          	addi	a1,a1,556 # 7fd0 <longjmp_1+0x688>
     dac:	853e                	mv	a0,a5
     dae:	00006097          	auipc	ra,0x6
     db2:	2ea080e7          	jalr	746(ra) # 7098 <write>
     db6:	40100593          	li	a1,1025
     dba:	00007517          	auipc	a0,0x7
     dbe:	20650513          	addi	a0,a0,518 # 7fc0 <longjmp_1+0x678>
     dc2:	00006097          	auipc	ra,0x6
     dc6:	2f6080e7          	jalr	758(ra) # 70b8 <open>
     dca:	87aa                	mv	a5,a0
     dcc:	fef42423          	sw	a5,-24(s0)
     dd0:	fec42783          	lw	a5,-20(s0)
     dd4:	4605                	li	a2,1
     dd6:	00007597          	auipc	a1,0x7
     dda:	faa58593          	addi	a1,a1,-86 # 7d80 <longjmp_1+0x438>
     dde:	853e                	mv	a0,a5
     de0:	00006097          	auipc	ra,0x6
     de4:	2b8080e7          	jalr	696(ra) # 7098 <write>
     de8:	87aa                	mv	a5,a0
     dea:	fef42223          	sw	a5,-28(s0)
     dee:	fe442783          	lw	a5,-28(s0)
     df2:	0007871b          	sext.w	a4,a5
     df6:	57fd                	li	a5,-1
     df8:	02f70463          	beq	a4,a5,e20 <truncate2+0xb8>
     dfc:	fe442783          	lw	a5,-28(s0)
     e00:	863e                	mv	a2,a5
     e02:	fd843583          	ld	a1,-40(s0)
     e06:	00007517          	auipc	a0,0x7
     e0a:	27a50513          	addi	a0,a0,634 # 8080 <longjmp_1+0x738>
     e0e:	00006097          	auipc	ra,0x6
     e12:	798080e7          	jalr	1944(ra) # 75a6 <printf>
     e16:	4505                	li	a0,1
     e18:	00006097          	auipc	ra,0x6
     e1c:	260080e7          	jalr	608(ra) # 7078 <exit>
     e20:	00007517          	auipc	a0,0x7
     e24:	1a050513          	addi	a0,a0,416 # 7fc0 <longjmp_1+0x678>
     e28:	00006097          	auipc	ra,0x6
     e2c:	2a0080e7          	jalr	672(ra) # 70c8 <unlink>
     e30:	fec42783          	lw	a5,-20(s0)
     e34:	853e                	mv	a0,a5
     e36:	00006097          	auipc	ra,0x6
     e3a:	26a080e7          	jalr	618(ra) # 70a0 <close>
     e3e:	fe842783          	lw	a5,-24(s0)
     e42:	853e                	mv	a0,a5
     e44:	00006097          	auipc	ra,0x6
     e48:	25c080e7          	jalr	604(ra) # 70a0 <close>
     e4c:	0001                	nop
     e4e:	70a2                	ld	ra,40(sp)
     e50:	7402                	ld	s0,32(sp)
     e52:	6145                	addi	sp,sp,48
     e54:	8082                	ret

0000000000000e56 <truncate3>:
     e56:	711d                	addi	sp,sp,-96
     e58:	ec86                	sd	ra,88(sp)
     e5a:	e8a2                	sd	s0,80(sp)
     e5c:	1080                	addi	s0,sp,96
     e5e:	faa43423          	sd	a0,-88(s0)
     e62:	60100593          	li	a1,1537
     e66:	00007517          	auipc	a0,0x7
     e6a:	15a50513          	addi	a0,a0,346 # 7fc0 <longjmp_1+0x678>
     e6e:	00006097          	auipc	ra,0x6
     e72:	24a080e7          	jalr	586(ra) # 70b8 <open>
     e76:	87aa                	mv	a5,a0
     e78:	853e                	mv	a0,a5
     e7a:	00006097          	auipc	ra,0x6
     e7e:	226080e7          	jalr	550(ra) # 70a0 <close>
     e82:	00006097          	auipc	ra,0x6
     e86:	1ee080e7          	jalr	494(ra) # 7070 <fork>
     e8a:	87aa                	mv	a5,a0
     e8c:	fef42223          	sw	a5,-28(s0)
     e90:	fe442783          	lw	a5,-28(s0)
     e94:	2781                	sext.w	a5,a5
     e96:	0207d163          	bgez	a5,eb8 <truncate3+0x62>
     e9a:	fa843583          	ld	a1,-88(s0)
     e9e:	00007517          	auipc	a0,0x7
     ea2:	20a50513          	addi	a0,a0,522 # 80a8 <longjmp_1+0x760>
     ea6:	00006097          	auipc	ra,0x6
     eaa:	700080e7          	jalr	1792(ra) # 75a6 <printf>
     eae:	4505                	li	a0,1
     eb0:	00006097          	auipc	ra,0x6
     eb4:	1c8080e7          	jalr	456(ra) # 7078 <exit>
     eb8:	fe442783          	lw	a5,-28(s0)
     ebc:	2781                	sext.w	a5,a5
     ebe:	10079563          	bnez	a5,fc8 <truncate3+0x172>
     ec2:	fe042623          	sw	zero,-20(s0)
     ec6:	a0e5                	j	fae <truncate3+0x158>
     ec8:	4585                	li	a1,1
     eca:	00007517          	auipc	a0,0x7
     ece:	0f650513          	addi	a0,a0,246 # 7fc0 <longjmp_1+0x678>
     ed2:	00006097          	auipc	ra,0x6
     ed6:	1e6080e7          	jalr	486(ra) # 70b8 <open>
     eda:	87aa                	mv	a5,a0
     edc:	fcf42c23          	sw	a5,-40(s0)
     ee0:	fd842783          	lw	a5,-40(s0)
     ee4:	2781                	sext.w	a5,a5
     ee6:	0207d163          	bgez	a5,f08 <truncate3+0xb2>
     eea:	fa843583          	ld	a1,-88(s0)
     eee:	00007517          	auipc	a0,0x7
     ef2:	1d250513          	addi	a0,a0,466 # 80c0 <longjmp_1+0x778>
     ef6:	00006097          	auipc	ra,0x6
     efa:	6b0080e7          	jalr	1712(ra) # 75a6 <printf>
     efe:	4505                	li	a0,1
     f00:	00006097          	auipc	ra,0x6
     f04:	178080e7          	jalr	376(ra) # 7078 <exit>
     f08:	fd842783          	lw	a5,-40(s0)
     f0c:	4629                	li	a2,10
     f0e:	00007597          	auipc	a1,0x7
     f12:	1ca58593          	addi	a1,a1,458 # 80d8 <longjmp_1+0x790>
     f16:	853e                	mv	a0,a5
     f18:	00006097          	auipc	ra,0x6
     f1c:	180080e7          	jalr	384(ra) # 7098 <write>
     f20:	87aa                	mv	a5,a0
     f22:	fcf42a23          	sw	a5,-44(s0)
     f26:	fd442783          	lw	a5,-44(s0)
     f2a:	0007871b          	sext.w	a4,a5
     f2e:	47a9                	li	a5,10
     f30:	02f70463          	beq	a4,a5,f58 <truncate3+0x102>
     f34:	fd442783          	lw	a5,-44(s0)
     f38:	863e                	mv	a2,a5
     f3a:	fa843583          	ld	a1,-88(s0)
     f3e:	00007517          	auipc	a0,0x7
     f42:	1aa50513          	addi	a0,a0,426 # 80e8 <longjmp_1+0x7a0>
     f46:	00006097          	auipc	ra,0x6
     f4a:	660080e7          	jalr	1632(ra) # 75a6 <printf>
     f4e:	4505                	li	a0,1
     f50:	00006097          	auipc	ra,0x6
     f54:	128080e7          	jalr	296(ra) # 7078 <exit>
     f58:	fd842783          	lw	a5,-40(s0)
     f5c:	853e                	mv	a0,a5
     f5e:	00006097          	auipc	ra,0x6
     f62:	142080e7          	jalr	322(ra) # 70a0 <close>
     f66:	4581                	li	a1,0
     f68:	00007517          	auipc	a0,0x7
     f6c:	05850513          	addi	a0,a0,88 # 7fc0 <longjmp_1+0x678>
     f70:	00006097          	auipc	ra,0x6
     f74:	148080e7          	jalr	328(ra) # 70b8 <open>
     f78:	87aa                	mv	a5,a0
     f7a:	fcf42c23          	sw	a5,-40(s0)
     f7e:	fb040713          	addi	a4,s0,-80
     f82:	fd842783          	lw	a5,-40(s0)
     f86:	02000613          	li	a2,32
     f8a:	85ba                	mv	a1,a4
     f8c:	853e                	mv	a0,a5
     f8e:	00006097          	auipc	ra,0x6
     f92:	102080e7          	jalr	258(ra) # 7090 <read>
     f96:	fd842783          	lw	a5,-40(s0)
     f9a:	853e                	mv	a0,a5
     f9c:	00006097          	auipc	ra,0x6
     fa0:	104080e7          	jalr	260(ra) # 70a0 <close>
     fa4:	fec42783          	lw	a5,-20(s0)
     fa8:	2785                	addiw	a5,a5,1
     faa:	fef42623          	sw	a5,-20(s0)
     fae:	fec42783          	lw	a5,-20(s0)
     fb2:	0007871b          	sext.w	a4,a5
     fb6:	06300793          	li	a5,99
     fba:	f0e7d7e3          	bge	a5,a4,ec8 <truncate3+0x72>
     fbe:	4501                	li	a0,0
     fc0:	00006097          	auipc	ra,0x6
     fc4:	0b8080e7          	jalr	184(ra) # 7078 <exit>
     fc8:	fe042423          	sw	zero,-24(s0)
     fcc:	a075                	j	1078 <truncate3+0x222>
     fce:	60100593          	li	a1,1537
     fd2:	00007517          	auipc	a0,0x7
     fd6:	fee50513          	addi	a0,a0,-18 # 7fc0 <longjmp_1+0x678>
     fda:	00006097          	auipc	ra,0x6
     fde:	0de080e7          	jalr	222(ra) # 70b8 <open>
     fe2:	87aa                	mv	a5,a0
     fe4:	fef42023          	sw	a5,-32(s0)
     fe8:	fe042783          	lw	a5,-32(s0)
     fec:	2781                	sext.w	a5,a5
     fee:	0207d163          	bgez	a5,1010 <truncate3+0x1ba>
     ff2:	fa843583          	ld	a1,-88(s0)
     ff6:	00007517          	auipc	a0,0x7
     ffa:	0ca50513          	addi	a0,a0,202 # 80c0 <longjmp_1+0x778>
     ffe:	00006097          	auipc	ra,0x6
    1002:	5a8080e7          	jalr	1448(ra) # 75a6 <printf>
    1006:	4505                	li	a0,1
    1008:	00006097          	auipc	ra,0x6
    100c:	070080e7          	jalr	112(ra) # 7078 <exit>
    1010:	fe042783          	lw	a5,-32(s0)
    1014:	460d                	li	a2,3
    1016:	00007597          	auipc	a1,0x7
    101a:	0f258593          	addi	a1,a1,242 # 8108 <longjmp_1+0x7c0>
    101e:	853e                	mv	a0,a5
    1020:	00006097          	auipc	ra,0x6
    1024:	078080e7          	jalr	120(ra) # 7098 <write>
    1028:	87aa                	mv	a5,a0
    102a:	fcf42e23          	sw	a5,-36(s0)
    102e:	fdc42783          	lw	a5,-36(s0)
    1032:	0007871b          	sext.w	a4,a5
    1036:	478d                	li	a5,3
    1038:	02f70463          	beq	a4,a5,1060 <truncate3+0x20a>
    103c:	fdc42783          	lw	a5,-36(s0)
    1040:	863e                	mv	a2,a5
    1042:	fa843583          	ld	a1,-88(s0)
    1046:	00007517          	auipc	a0,0x7
    104a:	0ca50513          	addi	a0,a0,202 # 8110 <longjmp_1+0x7c8>
    104e:	00006097          	auipc	ra,0x6
    1052:	558080e7          	jalr	1368(ra) # 75a6 <printf>
    1056:	4505                	li	a0,1
    1058:	00006097          	auipc	ra,0x6
    105c:	020080e7          	jalr	32(ra) # 7078 <exit>
    1060:	fe042783          	lw	a5,-32(s0)
    1064:	853e                	mv	a0,a5
    1066:	00006097          	auipc	ra,0x6
    106a:	03a080e7          	jalr	58(ra) # 70a0 <close>
    106e:	fe842783          	lw	a5,-24(s0)
    1072:	2785                	addiw	a5,a5,1
    1074:	fef42423          	sw	a5,-24(s0)
    1078:	fe842783          	lw	a5,-24(s0)
    107c:	0007871b          	sext.w	a4,a5
    1080:	09500793          	li	a5,149
    1084:	f4e7d5e3          	bge	a5,a4,fce <truncate3+0x178>
    1088:	fd040793          	addi	a5,s0,-48
    108c:	853e                	mv	a0,a5
    108e:	00006097          	auipc	ra,0x6
    1092:	ff2080e7          	jalr	-14(ra) # 7080 <wait>
    1096:	00007517          	auipc	a0,0x7
    109a:	f2a50513          	addi	a0,a0,-214 # 7fc0 <longjmp_1+0x678>
    109e:	00006097          	auipc	ra,0x6
    10a2:	02a080e7          	jalr	42(ra) # 70c8 <unlink>
    10a6:	fd042783          	lw	a5,-48(s0)
    10aa:	853e                	mv	a0,a5
    10ac:	00006097          	auipc	ra,0x6
    10b0:	fcc080e7          	jalr	-52(ra) # 7078 <exit>

00000000000010b4 <iputtest>:
    10b4:	1101                	addi	sp,sp,-32
    10b6:	ec06                	sd	ra,24(sp)
    10b8:	e822                	sd	s0,16(sp)
    10ba:	1000                	addi	s0,sp,32
    10bc:	fea43423          	sd	a0,-24(s0)
    10c0:	00007517          	auipc	a0,0x7
    10c4:	07050513          	addi	a0,a0,112 # 8130 <longjmp_1+0x7e8>
    10c8:	00006097          	auipc	ra,0x6
    10cc:	018080e7          	jalr	24(ra) # 70e0 <mkdir>
    10d0:	87aa                	mv	a5,a0
    10d2:	0207d163          	bgez	a5,10f4 <iputtest+0x40>
    10d6:	fe843583          	ld	a1,-24(s0)
    10da:	00007517          	auipc	a0,0x7
    10de:	05e50513          	addi	a0,a0,94 # 8138 <longjmp_1+0x7f0>
    10e2:	00006097          	auipc	ra,0x6
    10e6:	4c4080e7          	jalr	1220(ra) # 75a6 <printf>
    10ea:	4505                	li	a0,1
    10ec:	00006097          	auipc	ra,0x6
    10f0:	f8c080e7          	jalr	-116(ra) # 7078 <exit>
    10f4:	00007517          	auipc	a0,0x7
    10f8:	03c50513          	addi	a0,a0,60 # 8130 <longjmp_1+0x7e8>
    10fc:	00006097          	auipc	ra,0x6
    1100:	fec080e7          	jalr	-20(ra) # 70e8 <chdir>
    1104:	87aa                	mv	a5,a0
    1106:	0207d163          	bgez	a5,1128 <iputtest+0x74>
    110a:	fe843583          	ld	a1,-24(s0)
    110e:	00007517          	auipc	a0,0x7
    1112:	04250513          	addi	a0,a0,66 # 8150 <longjmp_1+0x808>
    1116:	00006097          	auipc	ra,0x6
    111a:	490080e7          	jalr	1168(ra) # 75a6 <printf>
    111e:	4505                	li	a0,1
    1120:	00006097          	auipc	ra,0x6
    1124:	f58080e7          	jalr	-168(ra) # 7078 <exit>
    1128:	00007517          	auipc	a0,0x7
    112c:	04850513          	addi	a0,a0,72 # 8170 <longjmp_1+0x828>
    1130:	00006097          	auipc	ra,0x6
    1134:	f98080e7          	jalr	-104(ra) # 70c8 <unlink>
    1138:	87aa                	mv	a5,a0
    113a:	0207d163          	bgez	a5,115c <iputtest+0xa8>
    113e:	fe843583          	ld	a1,-24(s0)
    1142:	00007517          	auipc	a0,0x7
    1146:	03e50513          	addi	a0,a0,62 # 8180 <longjmp_1+0x838>
    114a:	00006097          	auipc	ra,0x6
    114e:	45c080e7          	jalr	1116(ra) # 75a6 <printf>
    1152:	4505                	li	a0,1
    1154:	00006097          	auipc	ra,0x6
    1158:	f24080e7          	jalr	-220(ra) # 7078 <exit>
    115c:	00007517          	auipc	a0,0x7
    1160:	04450513          	addi	a0,a0,68 # 81a0 <longjmp_1+0x858>
    1164:	00006097          	auipc	ra,0x6
    1168:	f84080e7          	jalr	-124(ra) # 70e8 <chdir>
    116c:	87aa                	mv	a5,a0
    116e:	0207d163          	bgez	a5,1190 <iputtest+0xdc>
    1172:	fe843583          	ld	a1,-24(s0)
    1176:	00007517          	auipc	a0,0x7
    117a:	03250513          	addi	a0,a0,50 # 81a8 <longjmp_1+0x860>
    117e:	00006097          	auipc	ra,0x6
    1182:	428080e7          	jalr	1064(ra) # 75a6 <printf>
    1186:	4505                	li	a0,1
    1188:	00006097          	auipc	ra,0x6
    118c:	ef0080e7          	jalr	-272(ra) # 7078 <exit>
    1190:	0001                	nop
    1192:	60e2                	ld	ra,24(sp)
    1194:	6442                	ld	s0,16(sp)
    1196:	6105                	addi	sp,sp,32
    1198:	8082                	ret

000000000000119a <exitiputtest>:
    119a:	7179                	addi	sp,sp,-48
    119c:	f406                	sd	ra,40(sp)
    119e:	f022                	sd	s0,32(sp)
    11a0:	1800                	addi	s0,sp,48
    11a2:	fca43c23          	sd	a0,-40(s0)
    11a6:	00006097          	auipc	ra,0x6
    11aa:	eca080e7          	jalr	-310(ra) # 7070 <fork>
    11ae:	87aa                	mv	a5,a0
    11b0:	fef42623          	sw	a5,-20(s0)
    11b4:	fec42783          	lw	a5,-20(s0)
    11b8:	2781                	sext.w	a5,a5
    11ba:	0207d163          	bgez	a5,11dc <exitiputtest+0x42>
    11be:	fd843583          	ld	a1,-40(s0)
    11c2:	00007517          	auipc	a0,0x7
    11c6:	ee650513          	addi	a0,a0,-282 # 80a8 <longjmp_1+0x760>
    11ca:	00006097          	auipc	ra,0x6
    11ce:	3dc080e7          	jalr	988(ra) # 75a6 <printf>
    11d2:	4505                	li	a0,1
    11d4:	00006097          	auipc	ra,0x6
    11d8:	ea4080e7          	jalr	-348(ra) # 7078 <exit>
    11dc:	fec42783          	lw	a5,-20(s0)
    11e0:	2781                	sext.w	a5,a5
    11e2:	e7c5                	bnez	a5,128a <exitiputtest+0xf0>
    11e4:	00007517          	auipc	a0,0x7
    11e8:	f4c50513          	addi	a0,a0,-180 # 8130 <longjmp_1+0x7e8>
    11ec:	00006097          	auipc	ra,0x6
    11f0:	ef4080e7          	jalr	-268(ra) # 70e0 <mkdir>
    11f4:	87aa                	mv	a5,a0
    11f6:	0207d163          	bgez	a5,1218 <exitiputtest+0x7e>
    11fa:	fd843583          	ld	a1,-40(s0)
    11fe:	00007517          	auipc	a0,0x7
    1202:	f3a50513          	addi	a0,a0,-198 # 8138 <longjmp_1+0x7f0>
    1206:	00006097          	auipc	ra,0x6
    120a:	3a0080e7          	jalr	928(ra) # 75a6 <printf>
    120e:	4505                	li	a0,1
    1210:	00006097          	auipc	ra,0x6
    1214:	e68080e7          	jalr	-408(ra) # 7078 <exit>
    1218:	00007517          	auipc	a0,0x7
    121c:	f1850513          	addi	a0,a0,-232 # 8130 <longjmp_1+0x7e8>
    1220:	00006097          	auipc	ra,0x6
    1224:	ec8080e7          	jalr	-312(ra) # 70e8 <chdir>
    1228:	87aa                	mv	a5,a0
    122a:	0207d163          	bgez	a5,124c <exitiputtest+0xb2>
    122e:	fd843583          	ld	a1,-40(s0)
    1232:	00007517          	auipc	a0,0x7
    1236:	f8e50513          	addi	a0,a0,-114 # 81c0 <longjmp_1+0x878>
    123a:	00006097          	auipc	ra,0x6
    123e:	36c080e7          	jalr	876(ra) # 75a6 <printf>
    1242:	4505                	li	a0,1
    1244:	00006097          	auipc	ra,0x6
    1248:	e34080e7          	jalr	-460(ra) # 7078 <exit>
    124c:	00007517          	auipc	a0,0x7
    1250:	f2450513          	addi	a0,a0,-220 # 8170 <longjmp_1+0x828>
    1254:	00006097          	auipc	ra,0x6
    1258:	e74080e7          	jalr	-396(ra) # 70c8 <unlink>
    125c:	87aa                	mv	a5,a0
    125e:	0207d163          	bgez	a5,1280 <exitiputtest+0xe6>
    1262:	fd843583          	ld	a1,-40(s0)
    1266:	00007517          	auipc	a0,0x7
    126a:	f1a50513          	addi	a0,a0,-230 # 8180 <longjmp_1+0x838>
    126e:	00006097          	auipc	ra,0x6
    1272:	338080e7          	jalr	824(ra) # 75a6 <printf>
    1276:	4505                	li	a0,1
    1278:	00006097          	auipc	ra,0x6
    127c:	e00080e7          	jalr	-512(ra) # 7078 <exit>
    1280:	4501                	li	a0,0
    1282:	00006097          	auipc	ra,0x6
    1286:	df6080e7          	jalr	-522(ra) # 7078 <exit>
    128a:	fe840793          	addi	a5,s0,-24
    128e:	853e                	mv	a0,a5
    1290:	00006097          	auipc	ra,0x6
    1294:	df0080e7          	jalr	-528(ra) # 7080 <wait>
    1298:	fe842783          	lw	a5,-24(s0)
    129c:	853e                	mv	a0,a5
    129e:	00006097          	auipc	ra,0x6
    12a2:	dda080e7          	jalr	-550(ra) # 7078 <exit>

00000000000012a6 <openiputtest>:
    12a6:	7179                	addi	sp,sp,-48
    12a8:	f406                	sd	ra,40(sp)
    12aa:	f022                	sd	s0,32(sp)
    12ac:	1800                	addi	s0,sp,48
    12ae:	fca43c23          	sd	a0,-40(s0)
    12b2:	00007517          	auipc	a0,0x7
    12b6:	f2650513          	addi	a0,a0,-218 # 81d8 <longjmp_1+0x890>
    12ba:	00006097          	auipc	ra,0x6
    12be:	e26080e7          	jalr	-474(ra) # 70e0 <mkdir>
    12c2:	87aa                	mv	a5,a0
    12c4:	0207d163          	bgez	a5,12e6 <openiputtest+0x40>
    12c8:	fd843583          	ld	a1,-40(s0)
    12cc:	00007517          	auipc	a0,0x7
    12d0:	f1450513          	addi	a0,a0,-236 # 81e0 <longjmp_1+0x898>
    12d4:	00006097          	auipc	ra,0x6
    12d8:	2d2080e7          	jalr	722(ra) # 75a6 <printf>
    12dc:	4505                	li	a0,1
    12de:	00006097          	auipc	ra,0x6
    12e2:	d9a080e7          	jalr	-614(ra) # 7078 <exit>
    12e6:	00006097          	auipc	ra,0x6
    12ea:	d8a080e7          	jalr	-630(ra) # 7070 <fork>
    12ee:	87aa                	mv	a5,a0
    12f0:	fef42623          	sw	a5,-20(s0)
    12f4:	fec42783          	lw	a5,-20(s0)
    12f8:	2781                	sext.w	a5,a5
    12fa:	0207d163          	bgez	a5,131c <openiputtest+0x76>
    12fe:	fd843583          	ld	a1,-40(s0)
    1302:	00007517          	auipc	a0,0x7
    1306:	da650513          	addi	a0,a0,-602 # 80a8 <longjmp_1+0x760>
    130a:	00006097          	auipc	ra,0x6
    130e:	29c080e7          	jalr	668(ra) # 75a6 <printf>
    1312:	4505                	li	a0,1
    1314:	00006097          	auipc	ra,0x6
    1318:	d64080e7          	jalr	-668(ra) # 7078 <exit>
    131c:	fec42783          	lw	a5,-20(s0)
    1320:	2781                	sext.w	a5,a5
    1322:	e7b1                	bnez	a5,136e <openiputtest+0xc8>
    1324:	4589                	li	a1,2
    1326:	00007517          	auipc	a0,0x7
    132a:	eb250513          	addi	a0,a0,-334 # 81d8 <longjmp_1+0x890>
    132e:	00006097          	auipc	ra,0x6
    1332:	d8a080e7          	jalr	-630(ra) # 70b8 <open>
    1336:	87aa                	mv	a5,a0
    1338:	fef42423          	sw	a5,-24(s0)
    133c:	fe842783          	lw	a5,-24(s0)
    1340:	2781                	sext.w	a5,a5
    1342:	0207c163          	bltz	a5,1364 <openiputtest+0xbe>
    1346:	fd843583          	ld	a1,-40(s0)
    134a:	00007517          	auipc	a0,0x7
    134e:	eae50513          	addi	a0,a0,-338 # 81f8 <longjmp_1+0x8b0>
    1352:	00006097          	auipc	ra,0x6
    1356:	254080e7          	jalr	596(ra) # 75a6 <printf>
    135a:	4505                	li	a0,1
    135c:	00006097          	auipc	ra,0x6
    1360:	d1c080e7          	jalr	-740(ra) # 7078 <exit>
    1364:	4501                	li	a0,0
    1366:	00006097          	auipc	ra,0x6
    136a:	d12080e7          	jalr	-750(ra) # 7078 <exit>
    136e:	4505                	li	a0,1
    1370:	00006097          	auipc	ra,0x6
    1374:	d98080e7          	jalr	-616(ra) # 7108 <sleep>
    1378:	00007517          	auipc	a0,0x7
    137c:	e6050513          	addi	a0,a0,-416 # 81d8 <longjmp_1+0x890>
    1380:	00006097          	auipc	ra,0x6
    1384:	d48080e7          	jalr	-696(ra) # 70c8 <unlink>
    1388:	87aa                	mv	a5,a0
    138a:	c385                	beqz	a5,13aa <openiputtest+0x104>
    138c:	fd843583          	ld	a1,-40(s0)
    1390:	00007517          	auipc	a0,0x7
    1394:	e9050513          	addi	a0,a0,-368 # 8220 <longjmp_1+0x8d8>
    1398:	00006097          	auipc	ra,0x6
    139c:	20e080e7          	jalr	526(ra) # 75a6 <printf>
    13a0:	4505                	li	a0,1
    13a2:	00006097          	auipc	ra,0x6
    13a6:	cd6080e7          	jalr	-810(ra) # 7078 <exit>
    13aa:	fe440793          	addi	a5,s0,-28
    13ae:	853e                	mv	a0,a5
    13b0:	00006097          	auipc	ra,0x6
    13b4:	cd0080e7          	jalr	-816(ra) # 7080 <wait>
    13b8:	fe442783          	lw	a5,-28(s0)
    13bc:	853e                	mv	a0,a5
    13be:	00006097          	auipc	ra,0x6
    13c2:	cba080e7          	jalr	-838(ra) # 7078 <exit>

00000000000013c6 <opentest>:
    13c6:	7179                	addi	sp,sp,-48
    13c8:	f406                	sd	ra,40(sp)
    13ca:	f022                	sd	s0,32(sp)
    13cc:	1800                	addi	s0,sp,48
    13ce:	fca43c23          	sd	a0,-40(s0)
    13d2:	4581                	li	a1,0
    13d4:	00007517          	auipc	a0,0x7
    13d8:	abc50513          	addi	a0,a0,-1348 # 7e90 <longjmp_1+0x548>
    13dc:	00006097          	auipc	ra,0x6
    13e0:	cdc080e7          	jalr	-804(ra) # 70b8 <open>
    13e4:	87aa                	mv	a5,a0
    13e6:	fef42623          	sw	a5,-20(s0)
    13ea:	fec42783          	lw	a5,-20(s0)
    13ee:	2781                	sext.w	a5,a5
    13f0:	0207d163          	bgez	a5,1412 <opentest+0x4c>
    13f4:	fd843583          	ld	a1,-40(s0)
    13f8:	00007517          	auipc	a0,0x7
    13fc:	e4050513          	addi	a0,a0,-448 # 8238 <longjmp_1+0x8f0>
    1400:	00006097          	auipc	ra,0x6
    1404:	1a6080e7          	jalr	422(ra) # 75a6 <printf>
    1408:	4505                	li	a0,1
    140a:	00006097          	auipc	ra,0x6
    140e:	c6e080e7          	jalr	-914(ra) # 7078 <exit>
    1412:	fec42783          	lw	a5,-20(s0)
    1416:	853e                	mv	a0,a5
    1418:	00006097          	auipc	ra,0x6
    141c:	c88080e7          	jalr	-888(ra) # 70a0 <close>
    1420:	4581                	li	a1,0
    1422:	00007517          	auipc	a0,0x7
    1426:	e2e50513          	addi	a0,a0,-466 # 8250 <longjmp_1+0x908>
    142a:	00006097          	auipc	ra,0x6
    142e:	c8e080e7          	jalr	-882(ra) # 70b8 <open>
    1432:	87aa                	mv	a5,a0
    1434:	fef42623          	sw	a5,-20(s0)
    1438:	fec42783          	lw	a5,-20(s0)
    143c:	2781                	sext.w	a5,a5
    143e:	0207c163          	bltz	a5,1460 <opentest+0x9a>
    1442:	fd843583          	ld	a1,-40(s0)
    1446:	00007517          	auipc	a0,0x7
    144a:	e1a50513          	addi	a0,a0,-486 # 8260 <longjmp_1+0x918>
    144e:	00006097          	auipc	ra,0x6
    1452:	158080e7          	jalr	344(ra) # 75a6 <printf>
    1456:	4505                	li	a0,1
    1458:	00006097          	auipc	ra,0x6
    145c:	c20080e7          	jalr	-992(ra) # 7078 <exit>
    1460:	0001                	nop
    1462:	70a2                	ld	ra,40(sp)
    1464:	7402                	ld	s0,32(sp)
    1466:	6145                	addi	sp,sp,48
    1468:	8082                	ret

000000000000146a <writetest>:
    146a:	7179                	addi	sp,sp,-48
    146c:	f406                	sd	ra,40(sp)
    146e:	f022                	sd	s0,32(sp)
    1470:	1800                	addi	s0,sp,48
    1472:	fca43c23          	sd	a0,-40(s0)
    1476:	20200593          	li	a1,514
    147a:	00007517          	auipc	a0,0x7
    147e:	e0e50513          	addi	a0,a0,-498 # 8288 <longjmp_1+0x940>
    1482:	00006097          	auipc	ra,0x6
    1486:	c36080e7          	jalr	-970(ra) # 70b8 <open>
    148a:	87aa                	mv	a5,a0
    148c:	fef42423          	sw	a5,-24(s0)
    1490:	fe842783          	lw	a5,-24(s0)
    1494:	2781                	sext.w	a5,a5
    1496:	0207d163          	bgez	a5,14b8 <writetest+0x4e>
    149a:	fd843583          	ld	a1,-40(s0)
    149e:	00007517          	auipc	a0,0x7
    14a2:	df250513          	addi	a0,a0,-526 # 8290 <longjmp_1+0x948>
    14a6:	00006097          	auipc	ra,0x6
    14aa:	100080e7          	jalr	256(ra) # 75a6 <printf>
    14ae:	4505                	li	a0,1
    14b0:	00006097          	auipc	ra,0x6
    14b4:	bc8080e7          	jalr	-1080(ra) # 7078 <exit>
    14b8:	fe042623          	sw	zero,-20(s0)
    14bc:	a861                	j	1554 <writetest+0xea>
    14be:	fe842783          	lw	a5,-24(s0)
    14c2:	4629                	li	a2,10
    14c4:	00007597          	auipc	a1,0x7
    14c8:	dec58593          	addi	a1,a1,-532 # 82b0 <longjmp_1+0x968>
    14cc:	853e                	mv	a0,a5
    14ce:	00006097          	auipc	ra,0x6
    14d2:	bca080e7          	jalr	-1078(ra) # 7098 <write>
    14d6:	87aa                	mv	a5,a0
    14d8:	873e                	mv	a4,a5
    14da:	47a9                	li	a5,10
    14dc:	02f70463          	beq	a4,a5,1504 <writetest+0x9a>
    14e0:	fec42783          	lw	a5,-20(s0)
    14e4:	863e                	mv	a2,a5
    14e6:	fd843583          	ld	a1,-40(s0)
    14ea:	00007517          	auipc	a0,0x7
    14ee:	dd650513          	addi	a0,a0,-554 # 82c0 <longjmp_1+0x978>
    14f2:	00006097          	auipc	ra,0x6
    14f6:	0b4080e7          	jalr	180(ra) # 75a6 <printf>
    14fa:	4505                	li	a0,1
    14fc:	00006097          	auipc	ra,0x6
    1500:	b7c080e7          	jalr	-1156(ra) # 7078 <exit>
    1504:	fe842783          	lw	a5,-24(s0)
    1508:	4629                	li	a2,10
    150a:	00007597          	auipc	a1,0x7
    150e:	dde58593          	addi	a1,a1,-546 # 82e8 <longjmp_1+0x9a0>
    1512:	853e                	mv	a0,a5
    1514:	00006097          	auipc	ra,0x6
    1518:	b84080e7          	jalr	-1148(ra) # 7098 <write>
    151c:	87aa                	mv	a5,a0
    151e:	873e                	mv	a4,a5
    1520:	47a9                	li	a5,10
    1522:	02f70463          	beq	a4,a5,154a <writetest+0xe0>
    1526:	fec42783          	lw	a5,-20(s0)
    152a:	863e                	mv	a2,a5
    152c:	fd843583          	ld	a1,-40(s0)
    1530:	00007517          	auipc	a0,0x7
    1534:	dc850513          	addi	a0,a0,-568 # 82f8 <longjmp_1+0x9b0>
    1538:	00006097          	auipc	ra,0x6
    153c:	06e080e7          	jalr	110(ra) # 75a6 <printf>
    1540:	4505                	li	a0,1
    1542:	00006097          	auipc	ra,0x6
    1546:	b36080e7          	jalr	-1226(ra) # 7078 <exit>
    154a:	fec42783          	lw	a5,-20(s0)
    154e:	2785                	addiw	a5,a5,1
    1550:	fef42623          	sw	a5,-20(s0)
    1554:	fec42783          	lw	a5,-20(s0)
    1558:	0007871b          	sext.w	a4,a5
    155c:	06300793          	li	a5,99
    1560:	f4e7dfe3          	bge	a5,a4,14be <writetest+0x54>
    1564:	fe842783          	lw	a5,-24(s0)
    1568:	853e                	mv	a0,a5
    156a:	00006097          	auipc	ra,0x6
    156e:	b36080e7          	jalr	-1226(ra) # 70a0 <close>
    1572:	4581                	li	a1,0
    1574:	00007517          	auipc	a0,0x7
    1578:	d1450513          	addi	a0,a0,-748 # 8288 <longjmp_1+0x940>
    157c:	00006097          	auipc	ra,0x6
    1580:	b3c080e7          	jalr	-1220(ra) # 70b8 <open>
    1584:	87aa                	mv	a5,a0
    1586:	fef42423          	sw	a5,-24(s0)
    158a:	fe842783          	lw	a5,-24(s0)
    158e:	2781                	sext.w	a5,a5
    1590:	0207d163          	bgez	a5,15b2 <writetest+0x148>
    1594:	fd843583          	ld	a1,-40(s0)
    1598:	00007517          	auipc	a0,0x7
    159c:	d8850513          	addi	a0,a0,-632 # 8320 <longjmp_1+0x9d8>
    15a0:	00006097          	auipc	ra,0x6
    15a4:	006080e7          	jalr	6(ra) # 75a6 <printf>
    15a8:	4505                	li	a0,1
    15aa:	00006097          	auipc	ra,0x6
    15ae:	ace080e7          	jalr	-1330(ra) # 7078 <exit>
    15b2:	fe842783          	lw	a5,-24(s0)
    15b6:	7d000613          	li	a2,2000
    15ba:	00009597          	auipc	a1,0x9
    15be:	b3e58593          	addi	a1,a1,-1218 # a0f8 <buf>
    15c2:	853e                	mv	a0,a5
    15c4:	00006097          	auipc	ra,0x6
    15c8:	acc080e7          	jalr	-1332(ra) # 7090 <read>
    15cc:	87aa                	mv	a5,a0
    15ce:	fef42623          	sw	a5,-20(s0)
    15d2:	fec42783          	lw	a5,-20(s0)
    15d6:	0007871b          	sext.w	a4,a5
    15da:	7d000793          	li	a5,2000
    15de:	02f70163          	beq	a4,a5,1600 <writetest+0x196>
    15e2:	fd843583          	ld	a1,-40(s0)
    15e6:	00007517          	auipc	a0,0x7
    15ea:	d5a50513          	addi	a0,a0,-678 # 8340 <longjmp_1+0x9f8>
    15ee:	00006097          	auipc	ra,0x6
    15f2:	fb8080e7          	jalr	-72(ra) # 75a6 <printf>
    15f6:	4505                	li	a0,1
    15f8:	00006097          	auipc	ra,0x6
    15fc:	a80080e7          	jalr	-1408(ra) # 7078 <exit>
    1600:	fe842783          	lw	a5,-24(s0)
    1604:	853e                	mv	a0,a5
    1606:	00006097          	auipc	ra,0x6
    160a:	a9a080e7          	jalr	-1382(ra) # 70a0 <close>
    160e:	00007517          	auipc	a0,0x7
    1612:	c7a50513          	addi	a0,a0,-902 # 8288 <longjmp_1+0x940>
    1616:	00006097          	auipc	ra,0x6
    161a:	ab2080e7          	jalr	-1358(ra) # 70c8 <unlink>
    161e:	87aa                	mv	a5,a0
    1620:	0207d163          	bgez	a5,1642 <writetest+0x1d8>
    1624:	fd843583          	ld	a1,-40(s0)
    1628:	00007517          	auipc	a0,0x7
    162c:	d3050513          	addi	a0,a0,-720 # 8358 <longjmp_1+0xa10>
    1630:	00006097          	auipc	ra,0x6
    1634:	f76080e7          	jalr	-138(ra) # 75a6 <printf>
    1638:	4505                	li	a0,1
    163a:	00006097          	auipc	ra,0x6
    163e:	a3e080e7          	jalr	-1474(ra) # 7078 <exit>
    1642:	0001                	nop
    1644:	70a2                	ld	ra,40(sp)
    1646:	7402                	ld	s0,32(sp)
    1648:	6145                	addi	sp,sp,48
    164a:	8082                	ret

000000000000164c <writebig>:
    164c:	7179                	addi	sp,sp,-48
    164e:	f406                	sd	ra,40(sp)
    1650:	f022                	sd	s0,32(sp)
    1652:	1800                	addi	s0,sp,48
    1654:	fca43c23          	sd	a0,-40(s0)
    1658:	20200593          	li	a1,514
    165c:	00007517          	auipc	a0,0x7
    1660:	d1c50513          	addi	a0,a0,-740 # 8378 <longjmp_1+0xa30>
    1664:	00006097          	auipc	ra,0x6
    1668:	a54080e7          	jalr	-1452(ra) # 70b8 <open>
    166c:	87aa                	mv	a5,a0
    166e:	fef42223          	sw	a5,-28(s0)
    1672:	fe442783          	lw	a5,-28(s0)
    1676:	2781                	sext.w	a5,a5
    1678:	0207d163          	bgez	a5,169a <writebig+0x4e>
    167c:	fd843583          	ld	a1,-40(s0)
    1680:	00007517          	auipc	a0,0x7
    1684:	d0050513          	addi	a0,a0,-768 # 8380 <longjmp_1+0xa38>
    1688:	00006097          	auipc	ra,0x6
    168c:	f1e080e7          	jalr	-226(ra) # 75a6 <printf>
    1690:	4505                	li	a0,1
    1692:	00006097          	auipc	ra,0x6
    1696:	9e6080e7          	jalr	-1562(ra) # 7078 <exit>
    169a:	fe042623          	sw	zero,-20(s0)
    169e:	a095                	j	1702 <writebig+0xb6>
    16a0:	00009797          	auipc	a5,0x9
    16a4:	a5878793          	addi	a5,a5,-1448 # a0f8 <buf>
    16a8:	fec42703          	lw	a4,-20(s0)
    16ac:	c398                	sw	a4,0(a5)
    16ae:	fe442783          	lw	a5,-28(s0)
    16b2:	40000613          	li	a2,1024
    16b6:	00009597          	auipc	a1,0x9
    16ba:	a4258593          	addi	a1,a1,-1470 # a0f8 <buf>
    16be:	853e                	mv	a0,a5
    16c0:	00006097          	auipc	ra,0x6
    16c4:	9d8080e7          	jalr	-1576(ra) # 7098 <write>
    16c8:	87aa                	mv	a5,a0
    16ca:	873e                	mv	a4,a5
    16cc:	40000793          	li	a5,1024
    16d0:	02f70463          	beq	a4,a5,16f8 <writebig+0xac>
    16d4:	fec42783          	lw	a5,-20(s0)
    16d8:	863e                	mv	a2,a5
    16da:	fd843583          	ld	a1,-40(s0)
    16de:	00007517          	auipc	a0,0x7
    16e2:	cc250513          	addi	a0,a0,-830 # 83a0 <longjmp_1+0xa58>
    16e6:	00006097          	auipc	ra,0x6
    16ea:	ec0080e7          	jalr	-320(ra) # 75a6 <printf>
    16ee:	4505                	li	a0,1
    16f0:	00006097          	auipc	ra,0x6
    16f4:	988080e7          	jalr	-1656(ra) # 7078 <exit>
    16f8:	fec42783          	lw	a5,-20(s0)
    16fc:	2785                	addiw	a5,a5,1
    16fe:	fef42623          	sw	a5,-20(s0)
    1702:	fec42783          	lw	a5,-20(s0)
    1706:	873e                	mv	a4,a5
    1708:	10b00793          	li	a5,267
    170c:	f8e7fae3          	bgeu	a5,a4,16a0 <writebig+0x54>
    1710:	fe442783          	lw	a5,-28(s0)
    1714:	853e                	mv	a0,a5
    1716:	00006097          	auipc	ra,0x6
    171a:	98a080e7          	jalr	-1654(ra) # 70a0 <close>
    171e:	4581                	li	a1,0
    1720:	00007517          	auipc	a0,0x7
    1724:	c5850513          	addi	a0,a0,-936 # 8378 <longjmp_1+0xa30>
    1728:	00006097          	auipc	ra,0x6
    172c:	990080e7          	jalr	-1648(ra) # 70b8 <open>
    1730:	87aa                	mv	a5,a0
    1732:	fef42223          	sw	a5,-28(s0)
    1736:	fe442783          	lw	a5,-28(s0)
    173a:	2781                	sext.w	a5,a5
    173c:	0207d163          	bgez	a5,175e <writebig+0x112>
    1740:	fd843583          	ld	a1,-40(s0)
    1744:	00007517          	auipc	a0,0x7
    1748:	c8450513          	addi	a0,a0,-892 # 83c8 <longjmp_1+0xa80>
    174c:	00006097          	auipc	ra,0x6
    1750:	e5a080e7          	jalr	-422(ra) # 75a6 <printf>
    1754:	4505                	li	a0,1
    1756:	00006097          	auipc	ra,0x6
    175a:	922080e7          	jalr	-1758(ra) # 7078 <exit>
    175e:	fe042423          	sw	zero,-24(s0)
    1762:	fe442783          	lw	a5,-28(s0)
    1766:	40000613          	li	a2,1024
    176a:	00009597          	auipc	a1,0x9
    176e:	98e58593          	addi	a1,a1,-1650 # a0f8 <buf>
    1772:	853e                	mv	a0,a5
    1774:	00006097          	auipc	ra,0x6
    1778:	91c080e7          	jalr	-1764(ra) # 7090 <read>
    177c:	87aa                	mv	a5,a0
    177e:	fef42623          	sw	a5,-20(s0)
    1782:	fec42783          	lw	a5,-20(s0)
    1786:	2781                	sext.w	a5,a5
    1788:	eb9d                	bnez	a5,17be <writebig+0x172>
    178a:	fe842783          	lw	a5,-24(s0)
    178e:	0007871b          	sext.w	a4,a5
    1792:	10b00793          	li	a5,267
    1796:	0af71663          	bne	a4,a5,1842 <writebig+0x1f6>
    179a:	fe842783          	lw	a5,-24(s0)
    179e:	863e                	mv	a2,a5
    17a0:	fd843583          	ld	a1,-40(s0)
    17a4:	00007517          	auipc	a0,0x7
    17a8:	c4450513          	addi	a0,a0,-956 # 83e8 <longjmp_1+0xaa0>
    17ac:	00006097          	auipc	ra,0x6
    17b0:	dfa080e7          	jalr	-518(ra) # 75a6 <printf>
    17b4:	4505                	li	a0,1
    17b6:	00006097          	auipc	ra,0x6
    17ba:	8c2080e7          	jalr	-1854(ra) # 7078 <exit>
    17be:	fec42783          	lw	a5,-20(s0)
    17c2:	0007871b          	sext.w	a4,a5
    17c6:	40000793          	li	a5,1024
    17ca:	02f70463          	beq	a4,a5,17f2 <writebig+0x1a6>
    17ce:	fec42783          	lw	a5,-20(s0)
    17d2:	863e                	mv	a2,a5
    17d4:	fd843583          	ld	a1,-40(s0)
    17d8:	00007517          	auipc	a0,0x7
    17dc:	c3850513          	addi	a0,a0,-968 # 8410 <longjmp_1+0xac8>
    17e0:	00006097          	auipc	ra,0x6
    17e4:	dc6080e7          	jalr	-570(ra) # 75a6 <printf>
    17e8:	4505                	li	a0,1
    17ea:	00006097          	auipc	ra,0x6
    17ee:	88e080e7          	jalr	-1906(ra) # 7078 <exit>
    17f2:	00009797          	auipc	a5,0x9
    17f6:	90678793          	addi	a5,a5,-1786 # a0f8 <buf>
    17fa:	4398                	lw	a4,0(a5)
    17fc:	fe842783          	lw	a5,-24(s0)
    1800:	2781                	sext.w	a5,a5
    1802:	02e78a63          	beq	a5,a4,1836 <writebig+0x1ea>
    1806:	00009797          	auipc	a5,0x9
    180a:	8f278793          	addi	a5,a5,-1806 # a0f8 <buf>
    180e:	4398                	lw	a4,0(a5)
    1810:	fe842783          	lw	a5,-24(s0)
    1814:	86ba                	mv	a3,a4
    1816:	863e                	mv	a2,a5
    1818:	fd843583          	ld	a1,-40(s0)
    181c:	00007517          	auipc	a0,0x7
    1820:	c0c50513          	addi	a0,a0,-1012 # 8428 <longjmp_1+0xae0>
    1824:	00006097          	auipc	ra,0x6
    1828:	d82080e7          	jalr	-638(ra) # 75a6 <printf>
    182c:	4505                	li	a0,1
    182e:	00006097          	auipc	ra,0x6
    1832:	84a080e7          	jalr	-1974(ra) # 7078 <exit>
    1836:	fe842783          	lw	a5,-24(s0)
    183a:	2785                	addiw	a5,a5,1
    183c:	fef42423          	sw	a5,-24(s0)
    1840:	b70d                	j	1762 <writebig+0x116>
    1842:	0001                	nop
    1844:	fe442783          	lw	a5,-28(s0)
    1848:	853e                	mv	a0,a5
    184a:	00006097          	auipc	ra,0x6
    184e:	856080e7          	jalr	-1962(ra) # 70a0 <close>
    1852:	00007517          	auipc	a0,0x7
    1856:	b2650513          	addi	a0,a0,-1242 # 8378 <longjmp_1+0xa30>
    185a:	00006097          	auipc	ra,0x6
    185e:	86e080e7          	jalr	-1938(ra) # 70c8 <unlink>
    1862:	87aa                	mv	a5,a0
    1864:	0207d163          	bgez	a5,1886 <writebig+0x23a>
    1868:	fd843583          	ld	a1,-40(s0)
    186c:	00007517          	auipc	a0,0x7
    1870:	be450513          	addi	a0,a0,-1052 # 8450 <longjmp_1+0xb08>
    1874:	00006097          	auipc	ra,0x6
    1878:	d32080e7          	jalr	-718(ra) # 75a6 <printf>
    187c:	4505                	li	a0,1
    187e:	00005097          	auipc	ra,0x5
    1882:	7fa080e7          	jalr	2042(ra) # 7078 <exit>
    1886:	0001                	nop
    1888:	70a2                	ld	ra,40(sp)
    188a:	7402                	ld	s0,32(sp)
    188c:	6145                	addi	sp,sp,48
    188e:	8082                	ret

0000000000001890 <createtest>:
    1890:	7179                	addi	sp,sp,-48
    1892:	f406                	sd	ra,40(sp)
    1894:	f022                	sd	s0,32(sp)
    1896:	1800                	addi	s0,sp,48
    1898:	fca43c23          	sd	a0,-40(s0)
    189c:	06100793          	li	a5,97
    18a0:	fef40023          	sb	a5,-32(s0)
    18a4:	fe040123          	sb	zero,-30(s0)
    18a8:	fe042623          	sw	zero,-20(s0)
    18ac:	a099                	j	18f2 <createtest+0x62>
    18ae:	fec42783          	lw	a5,-20(s0)
    18b2:	0ff7f793          	andi	a5,a5,255
    18b6:	0307879b          	addiw	a5,a5,48
    18ba:	0ff7f793          	andi	a5,a5,255
    18be:	fef400a3          	sb	a5,-31(s0)
    18c2:	fe040793          	addi	a5,s0,-32
    18c6:	20200593          	li	a1,514
    18ca:	853e                	mv	a0,a5
    18cc:	00005097          	auipc	ra,0x5
    18d0:	7ec080e7          	jalr	2028(ra) # 70b8 <open>
    18d4:	87aa                	mv	a5,a0
    18d6:	fef42423          	sw	a5,-24(s0)
    18da:	fe842783          	lw	a5,-24(s0)
    18de:	853e                	mv	a0,a5
    18e0:	00005097          	auipc	ra,0x5
    18e4:	7c0080e7          	jalr	1984(ra) # 70a0 <close>
    18e8:	fec42783          	lw	a5,-20(s0)
    18ec:	2785                	addiw	a5,a5,1
    18ee:	fef42623          	sw	a5,-20(s0)
    18f2:	fec42783          	lw	a5,-20(s0)
    18f6:	0007871b          	sext.w	a4,a5
    18fa:	03300793          	li	a5,51
    18fe:	fae7d8e3          	bge	a5,a4,18ae <createtest+0x1e>
    1902:	06100793          	li	a5,97
    1906:	fef40023          	sb	a5,-32(s0)
    190a:	fe040123          	sb	zero,-30(s0)
    190e:	fe042623          	sw	zero,-20(s0)
    1912:	a03d                	j	1940 <createtest+0xb0>
    1914:	fec42783          	lw	a5,-20(s0)
    1918:	0ff7f793          	andi	a5,a5,255
    191c:	0307879b          	addiw	a5,a5,48
    1920:	0ff7f793          	andi	a5,a5,255
    1924:	fef400a3          	sb	a5,-31(s0)
    1928:	fe040793          	addi	a5,s0,-32
    192c:	853e                	mv	a0,a5
    192e:	00005097          	auipc	ra,0x5
    1932:	79a080e7          	jalr	1946(ra) # 70c8 <unlink>
    1936:	fec42783          	lw	a5,-20(s0)
    193a:	2785                	addiw	a5,a5,1
    193c:	fef42623          	sw	a5,-20(s0)
    1940:	fec42783          	lw	a5,-20(s0)
    1944:	0007871b          	sext.w	a4,a5
    1948:	03300793          	li	a5,51
    194c:	fce7d4e3          	bge	a5,a4,1914 <createtest+0x84>
    1950:	0001                	nop
    1952:	0001                	nop
    1954:	70a2                	ld	ra,40(sp)
    1956:	7402                	ld	s0,32(sp)
    1958:	6145                	addi	sp,sp,48
    195a:	8082                	ret

000000000000195c <dirtest>:
    195c:	1101                	addi	sp,sp,-32
    195e:	ec06                	sd	ra,24(sp)
    1960:	e822                	sd	s0,16(sp)
    1962:	1000                	addi	s0,sp,32
    1964:	fea43423          	sd	a0,-24(s0)
    1968:	00007517          	auipc	a0,0x7
    196c:	b0050513          	addi	a0,a0,-1280 # 8468 <longjmp_1+0xb20>
    1970:	00005097          	auipc	ra,0x5
    1974:	770080e7          	jalr	1904(ra) # 70e0 <mkdir>
    1978:	87aa                	mv	a5,a0
    197a:	0207d163          	bgez	a5,199c <dirtest+0x40>
    197e:	fe843583          	ld	a1,-24(s0)
    1982:	00006517          	auipc	a0,0x6
    1986:	7b650513          	addi	a0,a0,1974 # 8138 <longjmp_1+0x7f0>
    198a:	00006097          	auipc	ra,0x6
    198e:	c1c080e7          	jalr	-996(ra) # 75a6 <printf>
    1992:	4505                	li	a0,1
    1994:	00005097          	auipc	ra,0x5
    1998:	6e4080e7          	jalr	1764(ra) # 7078 <exit>
    199c:	00007517          	auipc	a0,0x7
    19a0:	acc50513          	addi	a0,a0,-1332 # 8468 <longjmp_1+0xb20>
    19a4:	00005097          	auipc	ra,0x5
    19a8:	744080e7          	jalr	1860(ra) # 70e8 <chdir>
    19ac:	87aa                	mv	a5,a0
    19ae:	0207d163          	bgez	a5,19d0 <dirtest+0x74>
    19b2:	fe843583          	ld	a1,-24(s0)
    19b6:	00007517          	auipc	a0,0x7
    19ba:	aba50513          	addi	a0,a0,-1350 # 8470 <longjmp_1+0xb28>
    19be:	00006097          	auipc	ra,0x6
    19c2:	be8080e7          	jalr	-1048(ra) # 75a6 <printf>
    19c6:	4505                	li	a0,1
    19c8:	00005097          	auipc	ra,0x5
    19cc:	6b0080e7          	jalr	1712(ra) # 7078 <exit>
    19d0:	00007517          	auipc	a0,0x7
    19d4:	ab850513          	addi	a0,a0,-1352 # 8488 <longjmp_1+0xb40>
    19d8:	00005097          	auipc	ra,0x5
    19dc:	710080e7          	jalr	1808(ra) # 70e8 <chdir>
    19e0:	87aa                	mv	a5,a0
    19e2:	0207d163          	bgez	a5,1a04 <dirtest+0xa8>
    19e6:	fe843583          	ld	a1,-24(s0)
    19ea:	00007517          	auipc	a0,0x7
    19ee:	aa650513          	addi	a0,a0,-1370 # 8490 <longjmp_1+0xb48>
    19f2:	00006097          	auipc	ra,0x6
    19f6:	bb4080e7          	jalr	-1100(ra) # 75a6 <printf>
    19fa:	4505                	li	a0,1
    19fc:	00005097          	auipc	ra,0x5
    1a00:	67c080e7          	jalr	1660(ra) # 7078 <exit>
    1a04:	00007517          	auipc	a0,0x7
    1a08:	a6450513          	addi	a0,a0,-1436 # 8468 <longjmp_1+0xb20>
    1a0c:	00005097          	auipc	ra,0x5
    1a10:	6bc080e7          	jalr	1724(ra) # 70c8 <unlink>
    1a14:	87aa                	mv	a5,a0
    1a16:	0207d163          	bgez	a5,1a38 <dirtest+0xdc>
    1a1a:	fe843583          	ld	a1,-24(s0)
    1a1e:	00007517          	auipc	a0,0x7
    1a22:	a8a50513          	addi	a0,a0,-1398 # 84a8 <longjmp_1+0xb60>
    1a26:	00006097          	auipc	ra,0x6
    1a2a:	b80080e7          	jalr	-1152(ra) # 75a6 <printf>
    1a2e:	4505                	li	a0,1
    1a30:	00005097          	auipc	ra,0x5
    1a34:	648080e7          	jalr	1608(ra) # 7078 <exit>
    1a38:	0001                	nop
    1a3a:	60e2                	ld	ra,24(sp)
    1a3c:	6442                	ld	s0,16(sp)
    1a3e:	6105                	addi	sp,sp,32
    1a40:	8082                	ret

0000000000001a42 <exectest>:
    1a42:	715d                	addi	sp,sp,-80
    1a44:	e486                	sd	ra,72(sp)
    1a46:	e0a2                	sd	s0,64(sp)
    1a48:	0880                	addi	s0,sp,80
    1a4a:	faa43c23          	sd	a0,-72(s0)
    1a4e:	00006797          	auipc	a5,0x6
    1a52:	44278793          	addi	a5,a5,1090 # 7e90 <longjmp_1+0x548>
    1a56:	fcf43423          	sd	a5,-56(s0)
    1a5a:	00007797          	auipc	a5,0x7
    1a5e:	a6678793          	addi	a5,a5,-1434 # 84c0 <longjmp_1+0xb78>
    1a62:	fcf43823          	sd	a5,-48(s0)
    1a66:	fc043c23          	sd	zero,-40(s0)
    1a6a:	00007517          	auipc	a0,0x7
    1a6e:	a5e50513          	addi	a0,a0,-1442 # 84c8 <longjmp_1+0xb80>
    1a72:	00005097          	auipc	ra,0x5
    1a76:	656080e7          	jalr	1622(ra) # 70c8 <unlink>
    1a7a:	00005097          	auipc	ra,0x5
    1a7e:	5f6080e7          	jalr	1526(ra) # 7070 <fork>
    1a82:	87aa                	mv	a5,a0
    1a84:	fef42623          	sw	a5,-20(s0)
    1a88:	fec42783          	lw	a5,-20(s0)
    1a8c:	2781                	sext.w	a5,a5
    1a8e:	0207d163          	bgez	a5,1ab0 <exectest+0x6e>
    1a92:	fb843583          	ld	a1,-72(s0)
    1a96:	00006517          	auipc	a0,0x6
    1a9a:	61250513          	addi	a0,a0,1554 # 80a8 <longjmp_1+0x760>
    1a9e:	00006097          	auipc	ra,0x6
    1aa2:	b08080e7          	jalr	-1272(ra) # 75a6 <printf>
    1aa6:	4505                	li	a0,1
    1aa8:	00005097          	auipc	ra,0x5
    1aac:	5d0080e7          	jalr	1488(ra) # 7078 <exit>
    1ab0:	fec42783          	lw	a5,-20(s0)
    1ab4:	2781                	sext.w	a5,a5
    1ab6:	ebd5                	bnez	a5,1b6a <exectest+0x128>
    1ab8:	4505                	li	a0,1
    1aba:	00005097          	auipc	ra,0x5
    1abe:	5e6080e7          	jalr	1510(ra) # 70a0 <close>
    1ac2:	20100593          	li	a1,513
    1ac6:	00007517          	auipc	a0,0x7
    1aca:	a0250513          	addi	a0,a0,-1534 # 84c8 <longjmp_1+0xb80>
    1ace:	00005097          	auipc	ra,0x5
    1ad2:	5ea080e7          	jalr	1514(ra) # 70b8 <open>
    1ad6:	87aa                	mv	a5,a0
    1ad8:	fef42423          	sw	a5,-24(s0)
    1adc:	fe842783          	lw	a5,-24(s0)
    1ae0:	2781                	sext.w	a5,a5
    1ae2:	0207d163          	bgez	a5,1b04 <exectest+0xc2>
    1ae6:	fb843583          	ld	a1,-72(s0)
    1aea:	00007517          	auipc	a0,0x7
    1aee:	9e650513          	addi	a0,a0,-1562 # 84d0 <longjmp_1+0xb88>
    1af2:	00006097          	auipc	ra,0x6
    1af6:	ab4080e7          	jalr	-1356(ra) # 75a6 <printf>
    1afa:	4505                	li	a0,1
    1afc:	00005097          	auipc	ra,0x5
    1b00:	57c080e7          	jalr	1404(ra) # 7078 <exit>
    1b04:	fe842783          	lw	a5,-24(s0)
    1b08:	0007871b          	sext.w	a4,a5
    1b0c:	4785                	li	a5,1
    1b0e:	02f70163          	beq	a4,a5,1b30 <exectest+0xee>
    1b12:	fb843583          	ld	a1,-72(s0)
    1b16:	00007517          	auipc	a0,0x7
    1b1a:	9d250513          	addi	a0,a0,-1582 # 84e8 <longjmp_1+0xba0>
    1b1e:	00006097          	auipc	ra,0x6
    1b22:	a88080e7          	jalr	-1400(ra) # 75a6 <printf>
    1b26:	4505                	li	a0,1
    1b28:	00005097          	auipc	ra,0x5
    1b2c:	550080e7          	jalr	1360(ra) # 7078 <exit>
    1b30:	fc840793          	addi	a5,s0,-56
    1b34:	85be                	mv	a1,a5
    1b36:	00006517          	auipc	a0,0x6
    1b3a:	35a50513          	addi	a0,a0,858 # 7e90 <longjmp_1+0x548>
    1b3e:	00005097          	auipc	ra,0x5
    1b42:	572080e7          	jalr	1394(ra) # 70b0 <exec>
    1b46:	87aa                	mv	a5,a0
    1b48:	0207d163          	bgez	a5,1b6a <exectest+0x128>
    1b4c:	fb843583          	ld	a1,-72(s0)
    1b50:	00007517          	auipc	a0,0x7
    1b54:	9a850513          	addi	a0,a0,-1624 # 84f8 <longjmp_1+0xbb0>
    1b58:	00006097          	auipc	ra,0x6
    1b5c:	a4e080e7          	jalr	-1458(ra) # 75a6 <printf>
    1b60:	4505                	li	a0,1
    1b62:	00005097          	auipc	ra,0x5
    1b66:	516080e7          	jalr	1302(ra) # 7078 <exit>
    1b6a:	fe440793          	addi	a5,s0,-28
    1b6e:	853e                	mv	a0,a5
    1b70:	00005097          	auipc	ra,0x5
    1b74:	510080e7          	jalr	1296(ra) # 7080 <wait>
    1b78:	87aa                	mv	a5,a0
    1b7a:	873e                	mv	a4,a5
    1b7c:	fec42783          	lw	a5,-20(s0)
    1b80:	2781                	sext.w	a5,a5
    1b82:	00e78c63          	beq	a5,a4,1b9a <exectest+0x158>
    1b86:	fb843583          	ld	a1,-72(s0)
    1b8a:	00007517          	auipc	a0,0x7
    1b8e:	98650513          	addi	a0,a0,-1658 # 8510 <longjmp_1+0xbc8>
    1b92:	00006097          	auipc	ra,0x6
    1b96:	a14080e7          	jalr	-1516(ra) # 75a6 <printf>
    1b9a:	fe442783          	lw	a5,-28(s0)
    1b9e:	cb81                	beqz	a5,1bae <exectest+0x16c>
    1ba0:	fe442783          	lw	a5,-28(s0)
    1ba4:	853e                	mv	a0,a5
    1ba6:	00005097          	auipc	ra,0x5
    1baa:	4d2080e7          	jalr	1234(ra) # 7078 <exit>
    1bae:	4581                	li	a1,0
    1bb0:	00007517          	auipc	a0,0x7
    1bb4:	91850513          	addi	a0,a0,-1768 # 84c8 <longjmp_1+0xb80>
    1bb8:	00005097          	auipc	ra,0x5
    1bbc:	500080e7          	jalr	1280(ra) # 70b8 <open>
    1bc0:	87aa                	mv	a5,a0
    1bc2:	fef42423          	sw	a5,-24(s0)
    1bc6:	fe842783          	lw	a5,-24(s0)
    1bca:	2781                	sext.w	a5,a5
    1bcc:	0207d163          	bgez	a5,1bee <exectest+0x1ac>
    1bd0:	fb843583          	ld	a1,-72(s0)
    1bd4:	00006517          	auipc	a0,0x6
    1bd8:	4ec50513          	addi	a0,a0,1260 # 80c0 <longjmp_1+0x778>
    1bdc:	00006097          	auipc	ra,0x6
    1be0:	9ca080e7          	jalr	-1590(ra) # 75a6 <printf>
    1be4:	4505                	li	a0,1
    1be6:	00005097          	auipc	ra,0x5
    1bea:	492080e7          	jalr	1170(ra) # 7078 <exit>
    1bee:	fc040713          	addi	a4,s0,-64
    1bf2:	fe842783          	lw	a5,-24(s0)
    1bf6:	4609                	li	a2,2
    1bf8:	85ba                	mv	a1,a4
    1bfa:	853e                	mv	a0,a5
    1bfc:	00005097          	auipc	ra,0x5
    1c00:	494080e7          	jalr	1172(ra) # 7090 <read>
    1c04:	87aa                	mv	a5,a0
    1c06:	873e                	mv	a4,a5
    1c08:	4789                	li	a5,2
    1c0a:	02f70163          	beq	a4,a5,1c2c <exectest+0x1ea>
    1c0e:	fb843583          	ld	a1,-72(s0)
    1c12:	00006517          	auipc	a0,0x6
    1c16:	72e50513          	addi	a0,a0,1838 # 8340 <longjmp_1+0x9f8>
    1c1a:	00006097          	auipc	ra,0x6
    1c1e:	98c080e7          	jalr	-1652(ra) # 75a6 <printf>
    1c22:	4505                	li	a0,1
    1c24:	00005097          	auipc	ra,0x5
    1c28:	454080e7          	jalr	1108(ra) # 7078 <exit>
    1c2c:	00007517          	auipc	a0,0x7
    1c30:	89c50513          	addi	a0,a0,-1892 # 84c8 <longjmp_1+0xb80>
    1c34:	00005097          	auipc	ra,0x5
    1c38:	494080e7          	jalr	1172(ra) # 70c8 <unlink>
    1c3c:	fc044783          	lbu	a5,-64(s0)
    1c40:	873e                	mv	a4,a5
    1c42:	04f00793          	li	a5,79
    1c46:	00f71e63          	bne	a4,a5,1c62 <exectest+0x220>
    1c4a:	fc144783          	lbu	a5,-63(s0)
    1c4e:	873e                	mv	a4,a5
    1c50:	04b00793          	li	a5,75
    1c54:	00f71763          	bne	a4,a5,1c62 <exectest+0x220>
    1c58:	4501                	li	a0,0
    1c5a:	00005097          	auipc	ra,0x5
    1c5e:	41e080e7          	jalr	1054(ra) # 7078 <exit>
    1c62:	fb843583          	ld	a1,-72(s0)
    1c66:	00007517          	auipc	a0,0x7
    1c6a:	8c250513          	addi	a0,a0,-1854 # 8528 <longjmp_1+0xbe0>
    1c6e:	00006097          	auipc	ra,0x6
    1c72:	938080e7          	jalr	-1736(ra) # 75a6 <printf>
    1c76:	4505                	li	a0,1
    1c78:	00005097          	auipc	ra,0x5
    1c7c:	400080e7          	jalr	1024(ra) # 7078 <exit>

0000000000001c80 <pipe1>:
    1c80:	715d                	addi	sp,sp,-80
    1c82:	e486                	sd	ra,72(sp)
    1c84:	e0a2                	sd	s0,64(sp)
    1c86:	0880                	addi	s0,sp,80
    1c88:	faa43c23          	sd	a0,-72(s0)
    1c8c:	fd040793          	addi	a5,s0,-48
    1c90:	853e                	mv	a0,a5
    1c92:	00005097          	auipc	ra,0x5
    1c96:	3f6080e7          	jalr	1014(ra) # 7088 <pipe>
    1c9a:	87aa                	mv	a5,a0
    1c9c:	c385                	beqz	a5,1cbc <pipe1+0x3c>
    1c9e:	fb843583          	ld	a1,-72(s0)
    1ca2:	00007517          	auipc	a0,0x7
    1ca6:	89e50513          	addi	a0,a0,-1890 # 8540 <longjmp_1+0xbf8>
    1caa:	00006097          	auipc	ra,0x6
    1cae:	8fc080e7          	jalr	-1796(ra) # 75a6 <printf>
    1cb2:	4505                	li	a0,1
    1cb4:	00005097          	auipc	ra,0x5
    1cb8:	3c4080e7          	jalr	964(ra) # 7078 <exit>
    1cbc:	00005097          	auipc	ra,0x5
    1cc0:	3b4080e7          	jalr	948(ra) # 7070 <fork>
    1cc4:	87aa                	mv	a5,a0
    1cc6:	fcf42c23          	sw	a5,-40(s0)
    1cca:	fe042623          	sw	zero,-20(s0)
    1cce:	fd842783          	lw	a5,-40(s0)
    1cd2:	2781                	sext.w	a5,a5
    1cd4:	efdd                	bnez	a5,1d92 <pipe1+0x112>
    1cd6:	fd042783          	lw	a5,-48(s0)
    1cda:	853e                	mv	a0,a5
    1cdc:	00005097          	auipc	ra,0x5
    1ce0:	3c4080e7          	jalr	964(ra) # 70a0 <close>
    1ce4:	fe042223          	sw	zero,-28(s0)
    1ce8:	a849                	j	1d7a <pipe1+0xfa>
    1cea:	fe042423          	sw	zero,-24(s0)
    1cee:	a03d                	j	1d1c <pipe1+0x9c>
    1cf0:	fec42783          	lw	a5,-20(s0)
    1cf4:	0017871b          	addiw	a4,a5,1
    1cf8:	fee42623          	sw	a4,-20(s0)
    1cfc:	0ff7f713          	andi	a4,a5,255
    1d00:	00008697          	auipc	a3,0x8
    1d04:	3f868693          	addi	a3,a3,1016 # a0f8 <buf>
    1d08:	fe842783          	lw	a5,-24(s0)
    1d0c:	97b6                	add	a5,a5,a3
    1d0e:	00e78023          	sb	a4,0(a5)
    1d12:	fe842783          	lw	a5,-24(s0)
    1d16:	2785                	addiw	a5,a5,1
    1d18:	fef42423          	sw	a5,-24(s0)
    1d1c:	fe842783          	lw	a5,-24(s0)
    1d20:	0007871b          	sext.w	a4,a5
    1d24:	40800793          	li	a5,1032
    1d28:	fce7d4e3          	bge	a5,a4,1cf0 <pipe1+0x70>
    1d2c:	fd442783          	lw	a5,-44(s0)
    1d30:	40900613          	li	a2,1033
    1d34:	00008597          	auipc	a1,0x8
    1d38:	3c458593          	addi	a1,a1,964 # a0f8 <buf>
    1d3c:	853e                	mv	a0,a5
    1d3e:	00005097          	auipc	ra,0x5
    1d42:	35a080e7          	jalr	858(ra) # 7098 <write>
    1d46:	87aa                	mv	a5,a0
    1d48:	873e                	mv	a4,a5
    1d4a:	40900793          	li	a5,1033
    1d4e:	02f70163          	beq	a4,a5,1d70 <pipe1+0xf0>
    1d52:	fb843583          	ld	a1,-72(s0)
    1d56:	00007517          	auipc	a0,0x7
    1d5a:	80250513          	addi	a0,a0,-2046 # 8558 <longjmp_1+0xc10>
    1d5e:	00006097          	auipc	ra,0x6
    1d62:	848080e7          	jalr	-1976(ra) # 75a6 <printf>
    1d66:	4505                	li	a0,1
    1d68:	00005097          	auipc	ra,0x5
    1d6c:	310080e7          	jalr	784(ra) # 7078 <exit>
    1d70:	fe442783          	lw	a5,-28(s0)
    1d74:	2785                	addiw	a5,a5,1
    1d76:	fef42223          	sw	a5,-28(s0)
    1d7a:	fe442783          	lw	a5,-28(s0)
    1d7e:	0007871b          	sext.w	a4,a5
    1d82:	4791                	li	a5,4
    1d84:	f6e7d3e3          	bge	a5,a4,1cea <pipe1+0x6a>
    1d88:	4501                	li	a0,0
    1d8a:	00005097          	auipc	ra,0x5
    1d8e:	2ee080e7          	jalr	750(ra) # 7078 <exit>
    1d92:	fd842783          	lw	a5,-40(s0)
    1d96:	2781                	sext.w	a5,a5
    1d98:	12f05b63          	blez	a5,1ece <pipe1+0x24e>
    1d9c:	fd442783          	lw	a5,-44(s0)
    1da0:	853e                	mv	a0,a5
    1da2:	00005097          	auipc	ra,0x5
    1da6:	2fe080e7          	jalr	766(ra) # 70a0 <close>
    1daa:	fc042e23          	sw	zero,-36(s0)
    1dae:	4785                	li	a5,1
    1db0:	fef42023          	sw	a5,-32(s0)
    1db4:	a849                	j	1e46 <pipe1+0x1c6>
    1db6:	fe042423          	sw	zero,-24(s0)
    1dba:	a881                	j	1e0a <pipe1+0x18a>
    1dbc:	00008717          	auipc	a4,0x8
    1dc0:	33c70713          	addi	a4,a4,828 # a0f8 <buf>
    1dc4:	fe842783          	lw	a5,-24(s0)
    1dc8:	97ba                	add	a5,a5,a4
    1dca:	0007c783          	lbu	a5,0(a5)
    1dce:	0007869b          	sext.w	a3,a5
    1dd2:	fec42783          	lw	a5,-20(s0)
    1dd6:	0017871b          	addiw	a4,a5,1
    1dda:	fee42623          	sw	a4,-20(s0)
    1dde:	0ff7f793          	andi	a5,a5,255
    1de2:	2781                	sext.w	a5,a5
    1de4:	8736                	mv	a4,a3
    1de6:	00f70d63          	beq	a4,a5,1e00 <pipe1+0x180>
    1dea:	fb843583          	ld	a1,-72(s0)
    1dee:	00006517          	auipc	a0,0x6
    1df2:	78250513          	addi	a0,a0,1922 # 8570 <longjmp_1+0xc28>
    1df6:	00005097          	auipc	ra,0x5
    1dfa:	7b0080e7          	jalr	1968(ra) # 75a6 <printf>
    1dfe:	a0fd                	j	1eec <pipe1+0x26c>
    1e00:	fe842783          	lw	a5,-24(s0)
    1e04:	2785                	addiw	a5,a5,1
    1e06:	fef42423          	sw	a5,-24(s0)
    1e0a:	fe842703          	lw	a4,-24(s0)
    1e0e:	fe442783          	lw	a5,-28(s0)
    1e12:	2701                	sext.w	a4,a4
    1e14:	2781                	sext.w	a5,a5
    1e16:	faf743e3          	blt	a4,a5,1dbc <pipe1+0x13c>
    1e1a:	fdc42703          	lw	a4,-36(s0)
    1e1e:	fe442783          	lw	a5,-28(s0)
    1e22:	9fb9                	addw	a5,a5,a4
    1e24:	fcf42e23          	sw	a5,-36(s0)
    1e28:	fe042783          	lw	a5,-32(s0)
    1e2c:	0017979b          	slliw	a5,a5,0x1
    1e30:	fef42023          	sw	a5,-32(s0)
    1e34:	fe042783          	lw	a5,-32(s0)
    1e38:	873e                	mv	a4,a5
    1e3a:	678d                	lui	a5,0x3
    1e3c:	00e7f563          	bgeu	a5,a4,1e46 <pipe1+0x1c6>
    1e40:	678d                	lui	a5,0x3
    1e42:	fef42023          	sw	a5,-32(s0)
    1e46:	fd042783          	lw	a5,-48(s0)
    1e4a:	fe042703          	lw	a4,-32(s0)
    1e4e:	863a                	mv	a2,a4
    1e50:	00008597          	auipc	a1,0x8
    1e54:	2a858593          	addi	a1,a1,680 # a0f8 <buf>
    1e58:	853e                	mv	a0,a5
    1e5a:	00005097          	auipc	ra,0x5
    1e5e:	236080e7          	jalr	566(ra) # 7090 <read>
    1e62:	87aa                	mv	a5,a0
    1e64:	fef42223          	sw	a5,-28(s0)
    1e68:	fe442783          	lw	a5,-28(s0)
    1e6c:	2781                	sext.w	a5,a5
    1e6e:	f4f044e3          	bgtz	a5,1db6 <pipe1+0x136>
    1e72:	fdc42783          	lw	a5,-36(s0)
    1e76:	0007871b          	sext.w	a4,a5
    1e7a:	6785                	lui	a5,0x1
    1e7c:	42d78793          	addi	a5,a5,1069 # 142d <opentest+0x67>
    1e80:	02f70263          	beq	a4,a5,1ea4 <pipe1+0x224>
    1e84:	fdc42783          	lw	a5,-36(s0)
    1e88:	85be                	mv	a1,a5
    1e8a:	00006517          	auipc	a0,0x6
    1e8e:	6fe50513          	addi	a0,a0,1790 # 8588 <longjmp_1+0xc40>
    1e92:	00005097          	auipc	ra,0x5
    1e96:	714080e7          	jalr	1812(ra) # 75a6 <printf>
    1e9a:	4505                	li	a0,1
    1e9c:	00005097          	auipc	ra,0x5
    1ea0:	1dc080e7          	jalr	476(ra) # 7078 <exit>
    1ea4:	fd042783          	lw	a5,-48(s0)
    1ea8:	853e                	mv	a0,a5
    1eaa:	00005097          	auipc	ra,0x5
    1eae:	1f6080e7          	jalr	502(ra) # 70a0 <close>
    1eb2:	fcc40793          	addi	a5,s0,-52
    1eb6:	853e                	mv	a0,a5
    1eb8:	00005097          	auipc	ra,0x5
    1ebc:	1c8080e7          	jalr	456(ra) # 7080 <wait>
    1ec0:	fcc42783          	lw	a5,-52(s0)
    1ec4:	853e                	mv	a0,a5
    1ec6:	00005097          	auipc	ra,0x5
    1eca:	1b2080e7          	jalr	434(ra) # 7078 <exit>
    1ece:	fb843583          	ld	a1,-72(s0)
    1ed2:	00006517          	auipc	a0,0x6
    1ed6:	6d650513          	addi	a0,a0,1750 # 85a8 <longjmp_1+0xc60>
    1eda:	00005097          	auipc	ra,0x5
    1ede:	6cc080e7          	jalr	1740(ra) # 75a6 <printf>
    1ee2:	4505                	li	a0,1
    1ee4:	00005097          	auipc	ra,0x5
    1ee8:	194080e7          	jalr	404(ra) # 7078 <exit>
    1eec:	60a6                	ld	ra,72(sp)
    1eee:	6406                	ld	s0,64(sp)
    1ef0:	6161                	addi	sp,sp,80
    1ef2:	8082                	ret

0000000000001ef4 <preempt>:
    1ef4:	7139                	addi	sp,sp,-64
    1ef6:	fc06                	sd	ra,56(sp)
    1ef8:	f822                	sd	s0,48(sp)
    1efa:	0080                	addi	s0,sp,64
    1efc:	fca43423          	sd	a0,-56(s0)
    1f00:	00005097          	auipc	ra,0x5
    1f04:	170080e7          	jalr	368(ra) # 7070 <fork>
    1f08:	87aa                	mv	a5,a0
    1f0a:	fef42623          	sw	a5,-20(s0)
    1f0e:	fec42783          	lw	a5,-20(s0)
    1f12:	2781                	sext.w	a5,a5
    1f14:	0207d163          	bgez	a5,1f36 <preempt+0x42>
    1f18:	fc843583          	ld	a1,-56(s0)
    1f1c:	00006517          	auipc	a0,0x6
    1f20:	6a450513          	addi	a0,a0,1700 # 85c0 <longjmp_1+0xc78>
    1f24:	00005097          	auipc	ra,0x5
    1f28:	682080e7          	jalr	1666(ra) # 75a6 <printf>
    1f2c:	4505                	li	a0,1
    1f2e:	00005097          	auipc	ra,0x5
    1f32:	14a080e7          	jalr	330(ra) # 7078 <exit>
    1f36:	fec42783          	lw	a5,-20(s0)
    1f3a:	2781                	sext.w	a5,a5
    1f3c:	e391                	bnez	a5,1f40 <preempt+0x4c>
    1f3e:	a001                	j	1f3e <preempt+0x4a>
    1f40:	00005097          	auipc	ra,0x5
    1f44:	130080e7          	jalr	304(ra) # 7070 <fork>
    1f48:	87aa                	mv	a5,a0
    1f4a:	fef42423          	sw	a5,-24(s0)
    1f4e:	fe842783          	lw	a5,-24(s0)
    1f52:	2781                	sext.w	a5,a5
    1f54:	0207d163          	bgez	a5,1f76 <preempt+0x82>
    1f58:	fc843583          	ld	a1,-56(s0)
    1f5c:	00006517          	auipc	a0,0x6
    1f60:	14c50513          	addi	a0,a0,332 # 80a8 <longjmp_1+0x760>
    1f64:	00005097          	auipc	ra,0x5
    1f68:	642080e7          	jalr	1602(ra) # 75a6 <printf>
    1f6c:	4505                	li	a0,1
    1f6e:	00005097          	auipc	ra,0x5
    1f72:	10a080e7          	jalr	266(ra) # 7078 <exit>
    1f76:	fe842783          	lw	a5,-24(s0)
    1f7a:	2781                	sext.w	a5,a5
    1f7c:	e391                	bnez	a5,1f80 <preempt+0x8c>
    1f7e:	a001                	j	1f7e <preempt+0x8a>
    1f80:	fd840793          	addi	a5,s0,-40
    1f84:	853e                	mv	a0,a5
    1f86:	00005097          	auipc	ra,0x5
    1f8a:	102080e7          	jalr	258(ra) # 7088 <pipe>
    1f8e:	00005097          	auipc	ra,0x5
    1f92:	0e2080e7          	jalr	226(ra) # 7070 <fork>
    1f96:	87aa                	mv	a5,a0
    1f98:	fef42223          	sw	a5,-28(s0)
    1f9c:	fe442783          	lw	a5,-28(s0)
    1fa0:	2781                	sext.w	a5,a5
    1fa2:	0207d163          	bgez	a5,1fc4 <preempt+0xd0>
    1fa6:	fc843583          	ld	a1,-56(s0)
    1faa:	00006517          	auipc	a0,0x6
    1fae:	0fe50513          	addi	a0,a0,254 # 80a8 <longjmp_1+0x760>
    1fb2:	00005097          	auipc	ra,0x5
    1fb6:	5f4080e7          	jalr	1524(ra) # 75a6 <printf>
    1fba:	4505                	li	a0,1
    1fbc:	00005097          	auipc	ra,0x5
    1fc0:	0bc080e7          	jalr	188(ra) # 7078 <exit>
    1fc4:	fe442783          	lw	a5,-28(s0)
    1fc8:	2781                	sext.w	a5,a5
    1fca:	ebb9                	bnez	a5,2020 <preempt+0x12c>
    1fcc:	fd842783          	lw	a5,-40(s0)
    1fd0:	853e                	mv	a0,a5
    1fd2:	00005097          	auipc	ra,0x5
    1fd6:	0ce080e7          	jalr	206(ra) # 70a0 <close>
    1fda:	fdc42783          	lw	a5,-36(s0)
    1fde:	4605                	li	a2,1
    1fe0:	00006597          	auipc	a1,0x6
    1fe4:	da058593          	addi	a1,a1,-608 # 7d80 <longjmp_1+0x438>
    1fe8:	853e                	mv	a0,a5
    1fea:	00005097          	auipc	ra,0x5
    1fee:	0ae080e7          	jalr	174(ra) # 7098 <write>
    1ff2:	87aa                	mv	a5,a0
    1ff4:	873e                	mv	a4,a5
    1ff6:	4785                	li	a5,1
    1ff8:	00f70c63          	beq	a4,a5,2010 <preempt+0x11c>
    1ffc:	fc843583          	ld	a1,-56(s0)
    2000:	00006517          	auipc	a0,0x6
    2004:	5d050513          	addi	a0,a0,1488 # 85d0 <longjmp_1+0xc88>
    2008:	00005097          	auipc	ra,0x5
    200c:	59e080e7          	jalr	1438(ra) # 75a6 <printf>
    2010:	fdc42783          	lw	a5,-36(s0)
    2014:	853e                	mv	a0,a5
    2016:	00005097          	auipc	ra,0x5
    201a:	08a080e7          	jalr	138(ra) # 70a0 <close>
    201e:	a001                	j	201e <preempt+0x12a>
    2020:	fdc42783          	lw	a5,-36(s0)
    2024:	853e                	mv	a0,a5
    2026:	00005097          	auipc	ra,0x5
    202a:	07a080e7          	jalr	122(ra) # 70a0 <close>
    202e:	fd842783          	lw	a5,-40(s0)
    2032:	660d                	lui	a2,0x3
    2034:	00008597          	auipc	a1,0x8
    2038:	0c458593          	addi	a1,a1,196 # a0f8 <buf>
    203c:	853e                	mv	a0,a5
    203e:	00005097          	auipc	ra,0x5
    2042:	052080e7          	jalr	82(ra) # 7090 <read>
    2046:	87aa                	mv	a5,a0
    2048:	873e                	mv	a4,a5
    204a:	4785                	li	a5,1
    204c:	00f70d63          	beq	a4,a5,2066 <preempt+0x172>
    2050:	fc843583          	ld	a1,-56(s0)
    2054:	00006517          	auipc	a0,0x6
    2058:	59450513          	addi	a0,a0,1428 # 85e8 <longjmp_1+0xca0>
    205c:	00005097          	auipc	ra,0x5
    2060:	54a080e7          	jalr	1354(ra) # 75a6 <printf>
    2064:	a8a5                	j	20dc <preempt+0x1e8>
    2066:	fd842783          	lw	a5,-40(s0)
    206a:	853e                	mv	a0,a5
    206c:	00005097          	auipc	ra,0x5
    2070:	034080e7          	jalr	52(ra) # 70a0 <close>
    2074:	00006517          	auipc	a0,0x6
    2078:	58c50513          	addi	a0,a0,1420 # 8600 <longjmp_1+0xcb8>
    207c:	00005097          	auipc	ra,0x5
    2080:	52a080e7          	jalr	1322(ra) # 75a6 <printf>
    2084:	fec42783          	lw	a5,-20(s0)
    2088:	853e                	mv	a0,a5
    208a:	00005097          	auipc	ra,0x5
    208e:	01e080e7          	jalr	30(ra) # 70a8 <kill>
    2092:	fe842783          	lw	a5,-24(s0)
    2096:	853e                	mv	a0,a5
    2098:	00005097          	auipc	ra,0x5
    209c:	010080e7          	jalr	16(ra) # 70a8 <kill>
    20a0:	fe442783          	lw	a5,-28(s0)
    20a4:	853e                	mv	a0,a5
    20a6:	00005097          	auipc	ra,0x5
    20aa:	002080e7          	jalr	2(ra) # 70a8 <kill>
    20ae:	00006517          	auipc	a0,0x6
    20b2:	56250513          	addi	a0,a0,1378 # 8610 <longjmp_1+0xcc8>
    20b6:	00005097          	auipc	ra,0x5
    20ba:	4f0080e7          	jalr	1264(ra) # 75a6 <printf>
    20be:	4501                	li	a0,0
    20c0:	00005097          	auipc	ra,0x5
    20c4:	fc0080e7          	jalr	-64(ra) # 7080 <wait>
    20c8:	4501                	li	a0,0
    20ca:	00005097          	auipc	ra,0x5
    20ce:	fb6080e7          	jalr	-74(ra) # 7080 <wait>
    20d2:	4501                	li	a0,0
    20d4:	00005097          	auipc	ra,0x5
    20d8:	fac080e7          	jalr	-84(ra) # 7080 <wait>
    20dc:	70e2                	ld	ra,56(sp)
    20de:	7442                	ld	s0,48(sp)
    20e0:	6121                	addi	sp,sp,64
    20e2:	8082                	ret

00000000000020e4 <exitwait>:
    20e4:	7179                	addi	sp,sp,-48
    20e6:	f406                	sd	ra,40(sp)
    20e8:	f022                	sd	s0,32(sp)
    20ea:	1800                	addi	s0,sp,48
    20ec:	fca43c23          	sd	a0,-40(s0)
    20f0:	fe042623          	sw	zero,-20(s0)
    20f4:	a87d                	j	21b2 <exitwait+0xce>
    20f6:	00005097          	auipc	ra,0x5
    20fa:	f7a080e7          	jalr	-134(ra) # 7070 <fork>
    20fe:	87aa                	mv	a5,a0
    2100:	fef42423          	sw	a5,-24(s0)
    2104:	fe842783          	lw	a5,-24(s0)
    2108:	2781                	sext.w	a5,a5
    210a:	0207d163          	bgez	a5,212c <exitwait+0x48>
    210e:	fd843583          	ld	a1,-40(s0)
    2112:	00006517          	auipc	a0,0x6
    2116:	f9650513          	addi	a0,a0,-106 # 80a8 <longjmp_1+0x760>
    211a:	00005097          	auipc	ra,0x5
    211e:	48c080e7          	jalr	1164(ra) # 75a6 <printf>
    2122:	4505                	li	a0,1
    2124:	00005097          	auipc	ra,0x5
    2128:	f54080e7          	jalr	-172(ra) # 7078 <exit>
    212c:	fe842783          	lw	a5,-24(s0)
    2130:	2781                	sext.w	a5,a5
    2132:	c7a5                	beqz	a5,219a <exitwait+0xb6>
    2134:	fe440793          	addi	a5,s0,-28
    2138:	853e                	mv	a0,a5
    213a:	00005097          	auipc	ra,0x5
    213e:	f46080e7          	jalr	-186(ra) # 7080 <wait>
    2142:	87aa                	mv	a5,a0
    2144:	873e                	mv	a4,a5
    2146:	fe842783          	lw	a5,-24(s0)
    214a:	2781                	sext.w	a5,a5
    214c:	02e78163          	beq	a5,a4,216e <exitwait+0x8a>
    2150:	fd843583          	ld	a1,-40(s0)
    2154:	00006517          	auipc	a0,0x6
    2158:	4cc50513          	addi	a0,a0,1228 # 8620 <longjmp_1+0xcd8>
    215c:	00005097          	auipc	ra,0x5
    2160:	44a080e7          	jalr	1098(ra) # 75a6 <printf>
    2164:	4505                	li	a0,1
    2166:	00005097          	auipc	ra,0x5
    216a:	f12080e7          	jalr	-238(ra) # 7078 <exit>
    216e:	fe442703          	lw	a4,-28(s0)
    2172:	fec42783          	lw	a5,-20(s0)
    2176:	2781                	sext.w	a5,a5
    2178:	02e78863          	beq	a5,a4,21a8 <exitwait+0xc4>
    217c:	fd843583          	ld	a1,-40(s0)
    2180:	00006517          	auipc	a0,0x6
    2184:	4b850513          	addi	a0,a0,1208 # 8638 <longjmp_1+0xcf0>
    2188:	00005097          	auipc	ra,0x5
    218c:	41e080e7          	jalr	1054(ra) # 75a6 <printf>
    2190:	4505                	li	a0,1
    2192:	00005097          	auipc	ra,0x5
    2196:	ee6080e7          	jalr	-282(ra) # 7078 <exit>
    219a:	fec42783          	lw	a5,-20(s0)
    219e:	853e                	mv	a0,a5
    21a0:	00005097          	auipc	ra,0x5
    21a4:	ed8080e7          	jalr	-296(ra) # 7078 <exit>
    21a8:	fec42783          	lw	a5,-20(s0)
    21ac:	2785                	addiw	a5,a5,1
    21ae:	fef42623          	sw	a5,-20(s0)
    21b2:	fec42783          	lw	a5,-20(s0)
    21b6:	0007871b          	sext.w	a4,a5
    21ba:	06300793          	li	a5,99
    21be:	f2e7dce3          	bge	a5,a4,20f6 <exitwait+0x12>
    21c2:	0001                	nop
    21c4:	0001                	nop
    21c6:	70a2                	ld	ra,40(sp)
    21c8:	7402                	ld	s0,32(sp)
    21ca:	6145                	addi	sp,sp,48
    21cc:	8082                	ret

00000000000021ce <reparent>:
    21ce:	7179                	addi	sp,sp,-48
    21d0:	f406                	sd	ra,40(sp)
    21d2:	f022                	sd	s0,32(sp)
    21d4:	1800                	addi	s0,sp,48
    21d6:	fca43c23          	sd	a0,-40(s0)
    21da:	00005097          	auipc	ra,0x5
    21de:	f1e080e7          	jalr	-226(ra) # 70f8 <getpid>
    21e2:	87aa                	mv	a5,a0
    21e4:	fef42423          	sw	a5,-24(s0)
    21e8:	fe042623          	sw	zero,-20(s0)
    21ec:	a86d                	j	22a6 <reparent+0xd8>
    21ee:	00005097          	auipc	ra,0x5
    21f2:	e82080e7          	jalr	-382(ra) # 7070 <fork>
    21f6:	87aa                	mv	a5,a0
    21f8:	fef42223          	sw	a5,-28(s0)
    21fc:	fe442783          	lw	a5,-28(s0)
    2200:	2781                	sext.w	a5,a5
    2202:	0207d163          	bgez	a5,2224 <reparent+0x56>
    2206:	fd843583          	ld	a1,-40(s0)
    220a:	00006517          	auipc	a0,0x6
    220e:	e9e50513          	addi	a0,a0,-354 # 80a8 <longjmp_1+0x760>
    2212:	00005097          	auipc	ra,0x5
    2216:	394080e7          	jalr	916(ra) # 75a6 <printf>
    221a:	4505                	li	a0,1
    221c:	00005097          	auipc	ra,0x5
    2220:	e5c080e7          	jalr	-420(ra) # 7078 <exit>
    2224:	fe442783          	lw	a5,-28(s0)
    2228:	2781                	sext.w	a5,a5
    222a:	cf85                	beqz	a5,2262 <reparent+0x94>
    222c:	4501                	li	a0,0
    222e:	00005097          	auipc	ra,0x5
    2232:	e52080e7          	jalr	-430(ra) # 7080 <wait>
    2236:	87aa                	mv	a5,a0
    2238:	873e                	mv	a4,a5
    223a:	fe442783          	lw	a5,-28(s0)
    223e:	2781                	sext.w	a5,a5
    2240:	04e78e63          	beq	a5,a4,229c <reparent+0xce>
    2244:	fd843583          	ld	a1,-40(s0)
    2248:	00006517          	auipc	a0,0x6
    224c:	3d850513          	addi	a0,a0,984 # 8620 <longjmp_1+0xcd8>
    2250:	00005097          	auipc	ra,0x5
    2254:	356080e7          	jalr	854(ra) # 75a6 <printf>
    2258:	4505                	li	a0,1
    225a:	00005097          	auipc	ra,0x5
    225e:	e1e080e7          	jalr	-482(ra) # 7078 <exit>
    2262:	00005097          	auipc	ra,0x5
    2266:	e0e080e7          	jalr	-498(ra) # 7070 <fork>
    226a:	87aa                	mv	a5,a0
    226c:	fef42023          	sw	a5,-32(s0)
    2270:	fe042783          	lw	a5,-32(s0)
    2274:	2781                	sext.w	a5,a5
    2276:	0007de63          	bgez	a5,2292 <reparent+0xc4>
    227a:	fe842783          	lw	a5,-24(s0)
    227e:	853e                	mv	a0,a5
    2280:	00005097          	auipc	ra,0x5
    2284:	e28080e7          	jalr	-472(ra) # 70a8 <kill>
    2288:	4505                	li	a0,1
    228a:	00005097          	auipc	ra,0x5
    228e:	dee080e7          	jalr	-530(ra) # 7078 <exit>
    2292:	4501                	li	a0,0
    2294:	00005097          	auipc	ra,0x5
    2298:	de4080e7          	jalr	-540(ra) # 7078 <exit>
    229c:	fec42783          	lw	a5,-20(s0)
    22a0:	2785                	addiw	a5,a5,1
    22a2:	fef42623          	sw	a5,-20(s0)
    22a6:	fec42783          	lw	a5,-20(s0)
    22aa:	0007871b          	sext.w	a4,a5
    22ae:	0c700793          	li	a5,199
    22b2:	f2e7dee3          	bge	a5,a4,21ee <reparent+0x20>
    22b6:	4501                	li	a0,0
    22b8:	00005097          	auipc	ra,0x5
    22bc:	dc0080e7          	jalr	-576(ra) # 7078 <exit>

00000000000022c0 <twochildren>:
    22c0:	7179                	addi	sp,sp,-48
    22c2:	f406                	sd	ra,40(sp)
    22c4:	f022                	sd	s0,32(sp)
    22c6:	1800                	addi	s0,sp,48
    22c8:	fca43c23          	sd	a0,-40(s0)
    22cc:	fe042623          	sw	zero,-20(s0)
    22d0:	a845                	j	2380 <twochildren+0xc0>
    22d2:	00005097          	auipc	ra,0x5
    22d6:	d9e080e7          	jalr	-610(ra) # 7070 <fork>
    22da:	87aa                	mv	a5,a0
    22dc:	fef42423          	sw	a5,-24(s0)
    22e0:	fe842783          	lw	a5,-24(s0)
    22e4:	2781                	sext.w	a5,a5
    22e6:	0207d163          	bgez	a5,2308 <twochildren+0x48>
    22ea:	fd843583          	ld	a1,-40(s0)
    22ee:	00006517          	auipc	a0,0x6
    22f2:	dba50513          	addi	a0,a0,-582 # 80a8 <longjmp_1+0x760>
    22f6:	00005097          	auipc	ra,0x5
    22fa:	2b0080e7          	jalr	688(ra) # 75a6 <printf>
    22fe:	4505                	li	a0,1
    2300:	00005097          	auipc	ra,0x5
    2304:	d78080e7          	jalr	-648(ra) # 7078 <exit>
    2308:	fe842783          	lw	a5,-24(s0)
    230c:	2781                	sext.w	a5,a5
    230e:	e791                	bnez	a5,231a <twochildren+0x5a>
    2310:	4501                	li	a0,0
    2312:	00005097          	auipc	ra,0x5
    2316:	d66080e7          	jalr	-666(ra) # 7078 <exit>
    231a:	00005097          	auipc	ra,0x5
    231e:	d56080e7          	jalr	-682(ra) # 7070 <fork>
    2322:	87aa                	mv	a5,a0
    2324:	fef42223          	sw	a5,-28(s0)
    2328:	fe442783          	lw	a5,-28(s0)
    232c:	2781                	sext.w	a5,a5
    232e:	0207d163          	bgez	a5,2350 <twochildren+0x90>
    2332:	fd843583          	ld	a1,-40(s0)
    2336:	00006517          	auipc	a0,0x6
    233a:	d7250513          	addi	a0,a0,-654 # 80a8 <longjmp_1+0x760>
    233e:	00005097          	auipc	ra,0x5
    2342:	268080e7          	jalr	616(ra) # 75a6 <printf>
    2346:	4505                	li	a0,1
    2348:	00005097          	auipc	ra,0x5
    234c:	d30080e7          	jalr	-720(ra) # 7078 <exit>
    2350:	fe442783          	lw	a5,-28(s0)
    2354:	2781                	sext.w	a5,a5
    2356:	e791                	bnez	a5,2362 <twochildren+0xa2>
    2358:	4501                	li	a0,0
    235a:	00005097          	auipc	ra,0x5
    235e:	d1e080e7          	jalr	-738(ra) # 7078 <exit>
    2362:	4501                	li	a0,0
    2364:	00005097          	auipc	ra,0x5
    2368:	d1c080e7          	jalr	-740(ra) # 7080 <wait>
    236c:	4501                	li	a0,0
    236e:	00005097          	auipc	ra,0x5
    2372:	d12080e7          	jalr	-750(ra) # 7080 <wait>
    2376:	fec42783          	lw	a5,-20(s0)
    237a:	2785                	addiw	a5,a5,1
    237c:	fef42623          	sw	a5,-20(s0)
    2380:	fec42783          	lw	a5,-20(s0)
    2384:	0007871b          	sext.w	a4,a5
    2388:	3e700793          	li	a5,999
    238c:	f4e7d3e3          	bge	a5,a4,22d2 <twochildren+0x12>
    2390:	0001                	nop
    2392:	0001                	nop
    2394:	70a2                	ld	ra,40(sp)
    2396:	7402                	ld	s0,32(sp)
    2398:	6145                	addi	sp,sp,48
    239a:	8082                	ret

000000000000239c <forkfork>:
    239c:	7139                	addi	sp,sp,-64
    239e:	fc06                	sd	ra,56(sp)
    23a0:	f822                	sd	s0,48(sp)
    23a2:	0080                	addi	s0,sp,64
    23a4:	fca43423          	sd	a0,-56(s0)
    23a8:	fe042623          	sw	zero,-20(s0)
    23ac:	a84d                	j	245e <forkfork+0xc2>
    23ae:	00005097          	auipc	ra,0x5
    23b2:	cc2080e7          	jalr	-830(ra) # 7070 <fork>
    23b6:	87aa                	mv	a5,a0
    23b8:	fef42023          	sw	a5,-32(s0)
    23bc:	fe042783          	lw	a5,-32(s0)
    23c0:	2781                	sext.w	a5,a5
    23c2:	0207d163          	bgez	a5,23e4 <forkfork+0x48>
    23c6:	fc843583          	ld	a1,-56(s0)
    23ca:	00006517          	auipc	a0,0x6
    23ce:	1f650513          	addi	a0,a0,502 # 85c0 <longjmp_1+0xc78>
    23d2:	00005097          	auipc	ra,0x5
    23d6:	1d4080e7          	jalr	468(ra) # 75a6 <printf>
    23da:	4505                	li	a0,1
    23dc:	00005097          	auipc	ra,0x5
    23e0:	c9c080e7          	jalr	-868(ra) # 7078 <exit>
    23e4:	fe042783          	lw	a5,-32(s0)
    23e8:	2781                	sext.w	a5,a5
    23ea:	e7ad                	bnez	a5,2454 <forkfork+0xb8>
    23ec:	fe042423          	sw	zero,-24(s0)
    23f0:	a0a9                	j	243a <forkfork+0x9e>
    23f2:	00005097          	auipc	ra,0x5
    23f6:	c7e080e7          	jalr	-898(ra) # 7070 <fork>
    23fa:	87aa                	mv	a5,a0
    23fc:	fcf42e23          	sw	a5,-36(s0)
    2400:	fdc42783          	lw	a5,-36(s0)
    2404:	2781                	sext.w	a5,a5
    2406:	0007d763          	bgez	a5,2414 <forkfork+0x78>
    240a:	4505                	li	a0,1
    240c:	00005097          	auipc	ra,0x5
    2410:	c6c080e7          	jalr	-916(ra) # 7078 <exit>
    2414:	fdc42783          	lw	a5,-36(s0)
    2418:	2781                	sext.w	a5,a5
    241a:	e791                	bnez	a5,2426 <forkfork+0x8a>
    241c:	4501                	li	a0,0
    241e:	00005097          	auipc	ra,0x5
    2422:	c5a080e7          	jalr	-934(ra) # 7078 <exit>
    2426:	4501                	li	a0,0
    2428:	00005097          	auipc	ra,0x5
    242c:	c58080e7          	jalr	-936(ra) # 7080 <wait>
    2430:	fe842783          	lw	a5,-24(s0)
    2434:	2785                	addiw	a5,a5,1
    2436:	fef42423          	sw	a5,-24(s0)
    243a:	fe842783          	lw	a5,-24(s0)
    243e:	0007871b          	sext.w	a4,a5
    2442:	0c700793          	li	a5,199
    2446:	fae7d6e3          	bge	a5,a4,23f2 <forkfork+0x56>
    244a:	4501                	li	a0,0
    244c:	00005097          	auipc	ra,0x5
    2450:	c2c080e7          	jalr	-980(ra) # 7078 <exit>
    2454:	fec42783          	lw	a5,-20(s0)
    2458:	2785                	addiw	a5,a5,1
    245a:	fef42623          	sw	a5,-20(s0)
    245e:	fec42783          	lw	a5,-20(s0)
    2462:	0007871b          	sext.w	a4,a5
    2466:	4785                	li	a5,1
    2468:	f4e7d3e3          	bge	a5,a4,23ae <forkfork+0x12>
    246c:	fe042223          	sw	zero,-28(s0)
    2470:	a83d                	j	24ae <forkfork+0x112>
    2472:	fd840793          	addi	a5,s0,-40
    2476:	853e                	mv	a0,a5
    2478:	00005097          	auipc	ra,0x5
    247c:	c08080e7          	jalr	-1016(ra) # 7080 <wait>
    2480:	fd842783          	lw	a5,-40(s0)
    2484:	c385                	beqz	a5,24a4 <forkfork+0x108>
    2486:	fc843583          	ld	a1,-56(s0)
    248a:	00006517          	auipc	a0,0x6
    248e:	1ce50513          	addi	a0,a0,462 # 8658 <longjmp_1+0xd10>
    2492:	00005097          	auipc	ra,0x5
    2496:	114080e7          	jalr	276(ra) # 75a6 <printf>
    249a:	4505                	li	a0,1
    249c:	00005097          	auipc	ra,0x5
    24a0:	bdc080e7          	jalr	-1060(ra) # 7078 <exit>
    24a4:	fe442783          	lw	a5,-28(s0)
    24a8:	2785                	addiw	a5,a5,1
    24aa:	fef42223          	sw	a5,-28(s0)
    24ae:	fe442783          	lw	a5,-28(s0)
    24b2:	0007871b          	sext.w	a4,a5
    24b6:	4785                	li	a5,1
    24b8:	fae7dde3          	bge	a5,a4,2472 <forkfork+0xd6>
    24bc:	0001                	nop
    24be:	0001                	nop
    24c0:	70e2                	ld	ra,56(sp)
    24c2:	7442                	ld	s0,48(sp)
    24c4:	6121                	addi	sp,sp,64
    24c6:	8082                	ret

00000000000024c8 <forkforkfork>:
    24c8:	7179                	addi	sp,sp,-48
    24ca:	f406                	sd	ra,40(sp)
    24cc:	f022                	sd	s0,32(sp)
    24ce:	1800                	addi	s0,sp,48
    24d0:	fca43c23          	sd	a0,-40(s0)
    24d4:	00006517          	auipc	a0,0x6
    24d8:	1a450513          	addi	a0,a0,420 # 8678 <longjmp_1+0xd30>
    24dc:	00005097          	auipc	ra,0x5
    24e0:	bec080e7          	jalr	-1044(ra) # 70c8 <unlink>
    24e4:	00005097          	auipc	ra,0x5
    24e8:	b8c080e7          	jalr	-1140(ra) # 7070 <fork>
    24ec:	87aa                	mv	a5,a0
    24ee:	fef42623          	sw	a5,-20(s0)
    24f2:	fec42783          	lw	a5,-20(s0)
    24f6:	2781                	sext.w	a5,a5
    24f8:	0207d163          	bgez	a5,251a <forkforkfork+0x52>
    24fc:	fd843583          	ld	a1,-40(s0)
    2500:	00006517          	auipc	a0,0x6
    2504:	0c050513          	addi	a0,a0,192 # 85c0 <longjmp_1+0xc78>
    2508:	00005097          	auipc	ra,0x5
    250c:	09e080e7          	jalr	158(ra) # 75a6 <printf>
    2510:	4505                	li	a0,1
    2512:	00005097          	auipc	ra,0x5
    2516:	b66080e7          	jalr	-1178(ra) # 7078 <exit>
    251a:	fec42783          	lw	a5,-20(s0)
    251e:	2781                	sext.w	a5,a5
    2520:	efb9                	bnez	a5,257e <forkforkfork+0xb6>
    2522:	4581                	li	a1,0
    2524:	00006517          	auipc	a0,0x6
    2528:	15450513          	addi	a0,a0,340 # 8678 <longjmp_1+0xd30>
    252c:	00005097          	auipc	ra,0x5
    2530:	b8c080e7          	jalr	-1140(ra) # 70b8 <open>
    2534:	87aa                	mv	a5,a0
    2536:	fef42423          	sw	a5,-24(s0)
    253a:	fe842783          	lw	a5,-24(s0)
    253e:	2781                	sext.w	a5,a5
    2540:	0007c763          	bltz	a5,254e <forkforkfork+0x86>
    2544:	4501                	li	a0,0
    2546:	00005097          	auipc	ra,0x5
    254a:	b32080e7          	jalr	-1230(ra) # 7078 <exit>
    254e:	00005097          	auipc	ra,0x5
    2552:	b22080e7          	jalr	-1246(ra) # 7070 <fork>
    2556:	87aa                	mv	a5,a0
    2558:	fc07d5e3          	bgez	a5,2522 <forkforkfork+0x5a>
    255c:	20200593          	li	a1,514
    2560:	00006517          	auipc	a0,0x6
    2564:	11850513          	addi	a0,a0,280 # 8678 <longjmp_1+0xd30>
    2568:	00005097          	auipc	ra,0x5
    256c:	b50080e7          	jalr	-1200(ra) # 70b8 <open>
    2570:	87aa                	mv	a5,a0
    2572:	853e                	mv	a0,a5
    2574:	00005097          	auipc	ra,0x5
    2578:	b2c080e7          	jalr	-1236(ra) # 70a0 <close>
    257c:	b75d                	j	2522 <forkforkfork+0x5a>
    257e:	4551                	li	a0,20
    2580:	00005097          	auipc	ra,0x5
    2584:	b88080e7          	jalr	-1144(ra) # 7108 <sleep>
    2588:	20200593          	li	a1,514
    258c:	00006517          	auipc	a0,0x6
    2590:	0ec50513          	addi	a0,a0,236 # 8678 <longjmp_1+0xd30>
    2594:	00005097          	auipc	ra,0x5
    2598:	b24080e7          	jalr	-1244(ra) # 70b8 <open>
    259c:	87aa                	mv	a5,a0
    259e:	853e                	mv	a0,a5
    25a0:	00005097          	auipc	ra,0x5
    25a4:	b00080e7          	jalr	-1280(ra) # 70a0 <close>
    25a8:	4501                	li	a0,0
    25aa:	00005097          	auipc	ra,0x5
    25ae:	ad6080e7          	jalr	-1322(ra) # 7080 <wait>
    25b2:	4529                	li	a0,10
    25b4:	00005097          	auipc	ra,0x5
    25b8:	b54080e7          	jalr	-1196(ra) # 7108 <sleep>
    25bc:	0001                	nop
    25be:	70a2                	ld	ra,40(sp)
    25c0:	7402                	ld	s0,32(sp)
    25c2:	6145                	addi	sp,sp,48
    25c4:	8082                	ret

00000000000025c6 <reparent2>:
    25c6:	7179                	addi	sp,sp,-48
    25c8:	f406                	sd	ra,40(sp)
    25ca:	f022                	sd	s0,32(sp)
    25cc:	1800                	addi	s0,sp,48
    25ce:	fca43c23          	sd	a0,-40(s0)
    25d2:	fe042623          	sw	zero,-20(s0)
    25d6:	a0ad                	j	2640 <reparent2+0x7a>
    25d8:	00005097          	auipc	ra,0x5
    25dc:	a98080e7          	jalr	-1384(ra) # 7070 <fork>
    25e0:	87aa                	mv	a5,a0
    25e2:	fef42423          	sw	a5,-24(s0)
    25e6:	fe842783          	lw	a5,-24(s0)
    25ea:	2781                	sext.w	a5,a5
    25ec:	0007df63          	bgez	a5,260a <reparent2+0x44>
    25f0:	00006517          	auipc	a0,0x6
    25f4:	89050513          	addi	a0,a0,-1904 # 7e80 <longjmp_1+0x538>
    25f8:	00005097          	auipc	ra,0x5
    25fc:	fae080e7          	jalr	-82(ra) # 75a6 <printf>
    2600:	4505                	li	a0,1
    2602:	00005097          	auipc	ra,0x5
    2606:	a76080e7          	jalr	-1418(ra) # 7078 <exit>
    260a:	fe842783          	lw	a5,-24(s0)
    260e:	2781                	sext.w	a5,a5
    2610:	ef91                	bnez	a5,262c <reparent2+0x66>
    2612:	00005097          	auipc	ra,0x5
    2616:	a5e080e7          	jalr	-1442(ra) # 7070 <fork>
    261a:	00005097          	auipc	ra,0x5
    261e:	a56080e7          	jalr	-1450(ra) # 7070 <fork>
    2622:	4501                	li	a0,0
    2624:	00005097          	auipc	ra,0x5
    2628:	a54080e7          	jalr	-1452(ra) # 7078 <exit>
    262c:	4501                	li	a0,0
    262e:	00005097          	auipc	ra,0x5
    2632:	a52080e7          	jalr	-1454(ra) # 7080 <wait>
    2636:	fec42783          	lw	a5,-20(s0)
    263a:	2785                	addiw	a5,a5,1
    263c:	fef42623          	sw	a5,-20(s0)
    2640:	fec42783          	lw	a5,-20(s0)
    2644:	0007871b          	sext.w	a4,a5
    2648:	31f00793          	li	a5,799
    264c:	f8e7d6e3          	bge	a5,a4,25d8 <reparent2+0x12>
    2650:	4501                	li	a0,0
    2652:	00005097          	auipc	ra,0x5
    2656:	a26080e7          	jalr	-1498(ra) # 7078 <exit>

000000000000265a <mem>:
    265a:	7139                	addi	sp,sp,-64
    265c:	fc06                	sd	ra,56(sp)
    265e:	f822                	sd	s0,48(sp)
    2660:	0080                	addi	s0,sp,64
    2662:	fca43423          	sd	a0,-56(s0)
    2666:	00005097          	auipc	ra,0x5
    266a:	a0a080e7          	jalr	-1526(ra) # 7070 <fork>
    266e:	87aa                	mv	a5,a0
    2670:	fef42223          	sw	a5,-28(s0)
    2674:	fe442783          	lw	a5,-28(s0)
    2678:	2781                	sext.w	a5,a5
    267a:	e3c5                	bnez	a5,271a <mem+0xc0>
    267c:	fe043423          	sd	zero,-24(s0)
    2680:	a811                	j	2694 <mem+0x3a>
    2682:	fd843783          	ld	a5,-40(s0)
    2686:	fe843703          	ld	a4,-24(s0)
    268a:	e398                	sd	a4,0(a5)
    268c:	fd843783          	ld	a5,-40(s0)
    2690:	fef43423          	sd	a5,-24(s0)
    2694:	6789                	lui	a5,0x2
    2696:	71178513          	addi	a0,a5,1809 # 2711 <mem+0xb7>
    269a:	00005097          	auipc	ra,0x5
    269e:	0fe080e7          	jalr	254(ra) # 7798 <malloc>
    26a2:	fca43c23          	sd	a0,-40(s0)
    26a6:	fd843783          	ld	a5,-40(s0)
    26aa:	ffe1                	bnez	a5,2682 <mem+0x28>
    26ac:	a005                	j	26cc <mem+0x72>
    26ae:	fe843783          	ld	a5,-24(s0)
    26b2:	639c                	ld	a5,0(a5)
    26b4:	fcf43c23          	sd	a5,-40(s0)
    26b8:	fe843503          	ld	a0,-24(s0)
    26bc:	00005097          	auipc	ra,0x5
    26c0:	f3a080e7          	jalr	-198(ra) # 75f6 <free>
    26c4:	fd843783          	ld	a5,-40(s0)
    26c8:	fef43423          	sd	a5,-24(s0)
    26cc:	fe843783          	ld	a5,-24(s0)
    26d0:	fff9                	bnez	a5,26ae <mem+0x54>
    26d2:	6515                	lui	a0,0x5
    26d4:	00005097          	auipc	ra,0x5
    26d8:	0c4080e7          	jalr	196(ra) # 7798 <malloc>
    26dc:	fea43423          	sd	a0,-24(s0)
    26e0:	fe843783          	ld	a5,-24(s0)
    26e4:	e385                	bnez	a5,2704 <mem+0xaa>
    26e6:	fc843583          	ld	a1,-56(s0)
    26ea:	00006517          	auipc	a0,0x6
    26ee:	f9e50513          	addi	a0,a0,-98 # 8688 <longjmp_1+0xd40>
    26f2:	00005097          	auipc	ra,0x5
    26f6:	eb4080e7          	jalr	-332(ra) # 75a6 <printf>
    26fa:	4505                	li	a0,1
    26fc:	00005097          	auipc	ra,0x5
    2700:	97c080e7          	jalr	-1668(ra) # 7078 <exit>
    2704:	fe843503          	ld	a0,-24(s0)
    2708:	00005097          	auipc	ra,0x5
    270c:	eee080e7          	jalr	-274(ra) # 75f6 <free>
    2710:	4501                	li	a0,0
    2712:	00005097          	auipc	ra,0x5
    2716:	966080e7          	jalr	-1690(ra) # 7078 <exit>
    271a:	fd440793          	addi	a5,s0,-44
    271e:	853e                	mv	a0,a5
    2720:	00005097          	auipc	ra,0x5
    2724:	960080e7          	jalr	-1696(ra) # 7080 <wait>
    2728:	fd442783          	lw	a5,-44(s0)
    272c:	873e                	mv	a4,a5
    272e:	57fd                	li	a5,-1
    2730:	00f71763          	bne	a4,a5,273e <mem+0xe4>
    2734:	4501                	li	a0,0
    2736:	00005097          	auipc	ra,0x5
    273a:	942080e7          	jalr	-1726(ra) # 7078 <exit>
    273e:	fd442783          	lw	a5,-44(s0)
    2742:	853e                	mv	a0,a5
    2744:	00005097          	auipc	ra,0x5
    2748:	934080e7          	jalr	-1740(ra) # 7078 <exit>

000000000000274c <sharedfd>:
    274c:	715d                	addi	sp,sp,-80
    274e:	e486                	sd	ra,72(sp)
    2750:	e0a2                	sd	s0,64(sp)
    2752:	0880                	addi	s0,sp,80
    2754:	faa43c23          	sd	a0,-72(s0)
    2758:	00005517          	auipc	a0,0x5
    275c:	39050513          	addi	a0,a0,912 # 7ae8 <longjmp_1+0x1a0>
    2760:	00005097          	auipc	ra,0x5
    2764:	968080e7          	jalr	-1688(ra) # 70c8 <unlink>
    2768:	20200593          	li	a1,514
    276c:	00005517          	auipc	a0,0x5
    2770:	37c50513          	addi	a0,a0,892 # 7ae8 <longjmp_1+0x1a0>
    2774:	00005097          	auipc	ra,0x5
    2778:	944080e7          	jalr	-1724(ra) # 70b8 <open>
    277c:	87aa                	mv	a5,a0
    277e:	fef42023          	sw	a5,-32(s0)
    2782:	fe042783          	lw	a5,-32(s0)
    2786:	2781                	sext.w	a5,a5
    2788:	0207d163          	bgez	a5,27aa <sharedfd+0x5e>
    278c:	fb843583          	ld	a1,-72(s0)
    2790:	00006517          	auipc	a0,0x6
    2794:	f1850513          	addi	a0,a0,-232 # 86a8 <longjmp_1+0xd60>
    2798:	00005097          	auipc	ra,0x5
    279c:	e0e080e7          	jalr	-498(ra) # 75a6 <printf>
    27a0:	4505                	li	a0,1
    27a2:	00005097          	auipc	ra,0x5
    27a6:	8d6080e7          	jalr	-1834(ra) # 7078 <exit>
    27aa:	00005097          	auipc	ra,0x5
    27ae:	8c6080e7          	jalr	-1850(ra) # 7070 <fork>
    27b2:	87aa                	mv	a5,a0
    27b4:	fcf42e23          	sw	a5,-36(s0)
    27b8:	fdc42783          	lw	a5,-36(s0)
    27bc:	2781                	sext.w	a5,a5
    27be:	e781                	bnez	a5,27c6 <sharedfd+0x7a>
    27c0:	06300793          	li	a5,99
    27c4:	a019                	j	27ca <sharedfd+0x7e>
    27c6:	07000793          	li	a5,112
    27ca:	fc840713          	addi	a4,s0,-56
    27ce:	4629                	li	a2,10
    27d0:	85be                	mv	a1,a5
    27d2:	853a                	mv	a0,a4
    27d4:	00004097          	auipc	ra,0x4
    27d8:	4fa080e7          	jalr	1274(ra) # 6cce <memset>
    27dc:	fe042623          	sw	zero,-20(s0)
    27e0:	a0a9                	j	282a <sharedfd+0xde>
    27e2:	fc840713          	addi	a4,s0,-56
    27e6:	fe042783          	lw	a5,-32(s0)
    27ea:	4629                	li	a2,10
    27ec:	85ba                	mv	a1,a4
    27ee:	853e                	mv	a0,a5
    27f0:	00005097          	auipc	ra,0x5
    27f4:	8a8080e7          	jalr	-1880(ra) # 7098 <write>
    27f8:	87aa                	mv	a5,a0
    27fa:	873e                	mv	a4,a5
    27fc:	47a9                	li	a5,10
    27fe:	02f70163          	beq	a4,a5,2820 <sharedfd+0xd4>
    2802:	fb843583          	ld	a1,-72(s0)
    2806:	00006517          	auipc	a0,0x6
    280a:	eca50513          	addi	a0,a0,-310 # 86d0 <longjmp_1+0xd88>
    280e:	00005097          	auipc	ra,0x5
    2812:	d98080e7          	jalr	-616(ra) # 75a6 <printf>
    2816:	4505                	li	a0,1
    2818:	00005097          	auipc	ra,0x5
    281c:	860080e7          	jalr	-1952(ra) # 7078 <exit>
    2820:	fec42783          	lw	a5,-20(s0)
    2824:	2785                	addiw	a5,a5,1
    2826:	fef42623          	sw	a5,-20(s0)
    282a:	fec42783          	lw	a5,-20(s0)
    282e:	0007871b          	sext.w	a4,a5
    2832:	3e700793          	li	a5,999
    2836:	fae7d6e3          	bge	a5,a4,27e2 <sharedfd+0x96>
    283a:	fdc42783          	lw	a5,-36(s0)
    283e:	2781                	sext.w	a5,a5
    2840:	e791                	bnez	a5,284c <sharedfd+0x100>
    2842:	4501                	li	a0,0
    2844:	00005097          	auipc	ra,0x5
    2848:	834080e7          	jalr	-1996(ra) # 7078 <exit>
    284c:	fc440793          	addi	a5,s0,-60
    2850:	853e                	mv	a0,a5
    2852:	00005097          	auipc	ra,0x5
    2856:	82e080e7          	jalr	-2002(ra) # 7080 <wait>
    285a:	fc442783          	lw	a5,-60(s0)
    285e:	cb81                	beqz	a5,286e <sharedfd+0x122>
    2860:	fc442783          	lw	a5,-60(s0)
    2864:	853e                	mv	a0,a5
    2866:	00005097          	auipc	ra,0x5
    286a:	812080e7          	jalr	-2030(ra) # 7078 <exit>
    286e:	fe042783          	lw	a5,-32(s0)
    2872:	853e                	mv	a0,a5
    2874:	00005097          	auipc	ra,0x5
    2878:	82c080e7          	jalr	-2004(ra) # 70a0 <close>
    287c:	4581                	li	a1,0
    287e:	00005517          	auipc	a0,0x5
    2882:	26a50513          	addi	a0,a0,618 # 7ae8 <longjmp_1+0x1a0>
    2886:	00005097          	auipc	ra,0x5
    288a:	832080e7          	jalr	-1998(ra) # 70b8 <open>
    288e:	87aa                	mv	a5,a0
    2890:	fef42023          	sw	a5,-32(s0)
    2894:	fe042783          	lw	a5,-32(s0)
    2898:	2781                	sext.w	a5,a5
    289a:	0207d163          	bgez	a5,28bc <sharedfd+0x170>
    289e:	fb843583          	ld	a1,-72(s0)
    28a2:	00006517          	auipc	a0,0x6
    28a6:	e4e50513          	addi	a0,a0,-434 # 86f0 <longjmp_1+0xda8>
    28aa:	00005097          	auipc	ra,0x5
    28ae:	cfc080e7          	jalr	-772(ra) # 75a6 <printf>
    28b2:	4505                	li	a0,1
    28b4:	00004097          	auipc	ra,0x4
    28b8:	7c4080e7          	jalr	1988(ra) # 7078 <exit>
    28bc:	fe042223          	sw	zero,-28(s0)
    28c0:	fe442783          	lw	a5,-28(s0)
    28c4:	fef42423          	sw	a5,-24(s0)
    28c8:	a08d                	j	292a <sharedfd+0x1de>
    28ca:	fe042623          	sw	zero,-20(s0)
    28ce:	a881                	j	291e <sharedfd+0x1d2>
    28d0:	fec42783          	lw	a5,-20(s0)
    28d4:	ff040713          	addi	a4,s0,-16
    28d8:	97ba                	add	a5,a5,a4
    28da:	fd87c783          	lbu	a5,-40(a5)
    28de:	873e                	mv	a4,a5
    28e0:	06300793          	li	a5,99
    28e4:	00f71763          	bne	a4,a5,28f2 <sharedfd+0x1a6>
    28e8:	fe842783          	lw	a5,-24(s0)
    28ec:	2785                	addiw	a5,a5,1
    28ee:	fef42423          	sw	a5,-24(s0)
    28f2:	fec42783          	lw	a5,-20(s0)
    28f6:	ff040713          	addi	a4,s0,-16
    28fa:	97ba                	add	a5,a5,a4
    28fc:	fd87c783          	lbu	a5,-40(a5)
    2900:	873e                	mv	a4,a5
    2902:	07000793          	li	a5,112
    2906:	00f71763          	bne	a4,a5,2914 <sharedfd+0x1c8>
    290a:	fe442783          	lw	a5,-28(s0)
    290e:	2785                	addiw	a5,a5,1
    2910:	fef42223          	sw	a5,-28(s0)
    2914:	fec42783          	lw	a5,-20(s0)
    2918:	2785                	addiw	a5,a5,1
    291a:	fef42623          	sw	a5,-20(s0)
    291e:	fec42783          	lw	a5,-20(s0)
    2922:	873e                	mv	a4,a5
    2924:	47a5                	li	a5,9
    2926:	fae7f5e3          	bgeu	a5,a4,28d0 <sharedfd+0x184>
    292a:	fc840713          	addi	a4,s0,-56
    292e:	fe042783          	lw	a5,-32(s0)
    2932:	4629                	li	a2,10
    2934:	85ba                	mv	a1,a4
    2936:	853e                	mv	a0,a5
    2938:	00004097          	auipc	ra,0x4
    293c:	758080e7          	jalr	1880(ra) # 7090 <read>
    2940:	87aa                	mv	a5,a0
    2942:	fcf42c23          	sw	a5,-40(s0)
    2946:	fd842783          	lw	a5,-40(s0)
    294a:	2781                	sext.w	a5,a5
    294c:	f6f04fe3          	bgtz	a5,28ca <sharedfd+0x17e>
    2950:	fe042783          	lw	a5,-32(s0)
    2954:	853e                	mv	a0,a5
    2956:	00004097          	auipc	ra,0x4
    295a:	74a080e7          	jalr	1866(ra) # 70a0 <close>
    295e:	00005517          	auipc	a0,0x5
    2962:	18a50513          	addi	a0,a0,394 # 7ae8 <longjmp_1+0x1a0>
    2966:	00004097          	auipc	ra,0x4
    296a:	762080e7          	jalr	1890(ra) # 70c8 <unlink>
    296e:	fe842783          	lw	a5,-24(s0)
    2972:	0007871b          	sext.w	a4,a5
    2976:	6789                	lui	a5,0x2
    2978:	71078793          	addi	a5,a5,1808 # 2710 <mem+0xb6>
    297c:	02f71063          	bne	a4,a5,299c <sharedfd+0x250>
    2980:	fe442783          	lw	a5,-28(s0)
    2984:	0007871b          	sext.w	a4,a5
    2988:	6789                	lui	a5,0x2
    298a:	71078793          	addi	a5,a5,1808 # 2710 <mem+0xb6>
    298e:	00f71763          	bne	a4,a5,299c <sharedfd+0x250>
    2992:	4501                	li	a0,0
    2994:	00004097          	auipc	ra,0x4
    2998:	6e4080e7          	jalr	1764(ra) # 7078 <exit>
    299c:	fb843583          	ld	a1,-72(s0)
    29a0:	00006517          	auipc	a0,0x6
    29a4:	d7850513          	addi	a0,a0,-648 # 8718 <longjmp_1+0xdd0>
    29a8:	00005097          	auipc	ra,0x5
    29ac:	bfe080e7          	jalr	-1026(ra) # 75a6 <printf>
    29b0:	4505                	li	a0,1
    29b2:	00004097          	auipc	ra,0x4
    29b6:	6c6080e7          	jalr	1734(ra) # 7078 <exit>

00000000000029ba <fourfiles>:
    29ba:	7159                	addi	sp,sp,-112
    29bc:	f486                	sd	ra,104(sp)
    29be:	f0a2                	sd	s0,96(sp)
    29c0:	1880                	addi	s0,sp,112
    29c2:	f8a43c23          	sd	a0,-104(s0)
    29c6:	00006797          	auipc	a5,0x6
    29ca:	dba78793          	addi	a5,a5,-582 # 8780 <longjmp_1+0xe38>
    29ce:	6390                	ld	a2,0(a5)
    29d0:	6794                	ld	a3,8(a5)
    29d2:	6b98                	ld	a4,16(a5)
    29d4:	6f9c                	ld	a5,24(a5)
    29d6:	fac43423          	sd	a2,-88(s0)
    29da:	fad43823          	sd	a3,-80(s0)
    29de:	fae43c23          	sd	a4,-72(s0)
    29e2:	fcf43023          	sd	a5,-64(s0)
    29e6:	fe042023          	sw	zero,-32(s0)
    29ea:	a281                	j	2b2a <fourfiles+0x170>
    29ec:	fe042783          	lw	a5,-32(s0)
    29f0:	078e                	slli	a5,a5,0x3
    29f2:	ff040713          	addi	a4,s0,-16
    29f6:	97ba                	add	a5,a5,a4
    29f8:	fb87b783          	ld	a5,-72(a5)
    29fc:	fcf43c23          	sd	a5,-40(s0)
    2a00:	fd843503          	ld	a0,-40(s0)
    2a04:	00004097          	auipc	ra,0x4
    2a08:	6c4080e7          	jalr	1732(ra) # 70c8 <unlink>
    2a0c:	00004097          	auipc	ra,0x4
    2a10:	664080e7          	jalr	1636(ra) # 7070 <fork>
    2a14:	87aa                	mv	a5,a0
    2a16:	fcf42623          	sw	a5,-52(s0)
    2a1a:	fcc42783          	lw	a5,-52(s0)
    2a1e:	2781                	sext.w	a5,a5
    2a20:	0207d163          	bgez	a5,2a42 <fourfiles+0x88>
    2a24:	f9843583          	ld	a1,-104(s0)
    2a28:	00005517          	auipc	a0,0x5
    2a2c:	45850513          	addi	a0,a0,1112 # 7e80 <longjmp_1+0x538>
    2a30:	00005097          	auipc	ra,0x5
    2a34:	b76080e7          	jalr	-1162(ra) # 75a6 <printf>
    2a38:	4505                	li	a0,1
    2a3a:	00004097          	auipc	ra,0x4
    2a3e:	63e080e7          	jalr	1598(ra) # 7078 <exit>
    2a42:	fcc42783          	lw	a5,-52(s0)
    2a46:	2781                	sext.w	a5,a5
    2a48:	efe1                	bnez	a5,2b20 <fourfiles+0x166>
    2a4a:	20200593          	li	a1,514
    2a4e:	fd843503          	ld	a0,-40(s0)
    2a52:	00004097          	auipc	ra,0x4
    2a56:	666080e7          	jalr	1638(ra) # 70b8 <open>
    2a5a:	87aa                	mv	a5,a0
    2a5c:	fcf42a23          	sw	a5,-44(s0)
    2a60:	fd442783          	lw	a5,-44(s0)
    2a64:	2781                	sext.w	a5,a5
    2a66:	0207d163          	bgez	a5,2a88 <fourfiles+0xce>
    2a6a:	f9843583          	ld	a1,-104(s0)
    2a6e:	00006517          	auipc	a0,0x6
    2a72:	cc250513          	addi	a0,a0,-830 # 8730 <longjmp_1+0xde8>
    2a76:	00005097          	auipc	ra,0x5
    2a7a:	b30080e7          	jalr	-1232(ra) # 75a6 <printf>
    2a7e:	4505                	li	a0,1
    2a80:	00004097          	auipc	ra,0x4
    2a84:	5f8080e7          	jalr	1528(ra) # 7078 <exit>
    2a88:	fe042783          	lw	a5,-32(s0)
    2a8c:	0307879b          	addiw	a5,a5,48
    2a90:	2781                	sext.w	a5,a5
    2a92:	1f400613          	li	a2,500
    2a96:	85be                	mv	a1,a5
    2a98:	00007517          	auipc	a0,0x7
    2a9c:	66050513          	addi	a0,a0,1632 # a0f8 <buf>
    2aa0:	00004097          	auipc	ra,0x4
    2aa4:	22e080e7          	jalr	558(ra) # 6cce <memset>
    2aa8:	fe042623          	sw	zero,-20(s0)
    2aac:	a8b1                	j	2b08 <fourfiles+0x14e>
    2aae:	fd442783          	lw	a5,-44(s0)
    2ab2:	1f400613          	li	a2,500
    2ab6:	00007597          	auipc	a1,0x7
    2aba:	64258593          	addi	a1,a1,1602 # a0f8 <buf>
    2abe:	853e                	mv	a0,a5
    2ac0:	00004097          	auipc	ra,0x4
    2ac4:	5d8080e7          	jalr	1496(ra) # 7098 <write>
    2ac8:	87aa                	mv	a5,a0
    2aca:	fcf42823          	sw	a5,-48(s0)
    2ace:	fd042783          	lw	a5,-48(s0)
    2ad2:	0007871b          	sext.w	a4,a5
    2ad6:	1f400793          	li	a5,500
    2ada:	02f70263          	beq	a4,a5,2afe <fourfiles+0x144>
    2ade:	fd042783          	lw	a5,-48(s0)
    2ae2:	85be                	mv	a1,a5
    2ae4:	00006517          	auipc	a0,0x6
    2ae8:	c5c50513          	addi	a0,a0,-932 # 8740 <longjmp_1+0xdf8>
    2aec:	00005097          	auipc	ra,0x5
    2af0:	aba080e7          	jalr	-1350(ra) # 75a6 <printf>
    2af4:	4505                	li	a0,1
    2af6:	00004097          	auipc	ra,0x4
    2afa:	582080e7          	jalr	1410(ra) # 7078 <exit>
    2afe:	fec42783          	lw	a5,-20(s0)
    2b02:	2785                	addiw	a5,a5,1
    2b04:	fef42623          	sw	a5,-20(s0)
    2b08:	fec42783          	lw	a5,-20(s0)
    2b0c:	0007871b          	sext.w	a4,a5
    2b10:	47ad                	li	a5,11
    2b12:	f8e7dee3          	bge	a5,a4,2aae <fourfiles+0xf4>
    2b16:	4501                	li	a0,0
    2b18:	00004097          	auipc	ra,0x4
    2b1c:	560080e7          	jalr	1376(ra) # 7078 <exit>
    2b20:	fe042783          	lw	a5,-32(s0)
    2b24:	2785                	addiw	a5,a5,1
    2b26:	fef42023          	sw	a5,-32(s0)
    2b2a:	fe042783          	lw	a5,-32(s0)
    2b2e:	0007871b          	sext.w	a4,a5
    2b32:	478d                	li	a5,3
    2b34:	eae7dce3          	bge	a5,a4,29ec <fourfiles+0x32>
    2b38:	fe042023          	sw	zero,-32(s0)
    2b3c:	a03d                	j	2b6a <fourfiles+0x1b0>
    2b3e:	fa440793          	addi	a5,s0,-92
    2b42:	853e                	mv	a0,a5
    2b44:	00004097          	auipc	ra,0x4
    2b48:	53c080e7          	jalr	1340(ra) # 7080 <wait>
    2b4c:	fa442783          	lw	a5,-92(s0)
    2b50:	cb81                	beqz	a5,2b60 <fourfiles+0x1a6>
    2b52:	fa442783          	lw	a5,-92(s0)
    2b56:	853e                	mv	a0,a5
    2b58:	00004097          	auipc	ra,0x4
    2b5c:	520080e7          	jalr	1312(ra) # 7078 <exit>
    2b60:	fe042783          	lw	a5,-32(s0)
    2b64:	2785                	addiw	a5,a5,1
    2b66:	fef42023          	sw	a5,-32(s0)
    2b6a:	fe042783          	lw	a5,-32(s0)
    2b6e:	0007871b          	sext.w	a4,a5
    2b72:	478d                	li	a5,3
    2b74:	fce7d5e3          	bge	a5,a4,2b3e <fourfiles+0x184>
    2b78:	fe042623          	sw	zero,-20(s0)
    2b7c:	aa39                	j	2c9a <fourfiles+0x2e0>
    2b7e:	fec42783          	lw	a5,-20(s0)
    2b82:	078e                	slli	a5,a5,0x3
    2b84:	ff040713          	addi	a4,s0,-16
    2b88:	97ba                	add	a5,a5,a4
    2b8a:	fb87b783          	ld	a5,-72(a5)
    2b8e:	fcf43c23          	sd	a5,-40(s0)
    2b92:	4581                	li	a1,0
    2b94:	fd843503          	ld	a0,-40(s0)
    2b98:	00004097          	auipc	ra,0x4
    2b9c:	520080e7          	jalr	1312(ra) # 70b8 <open>
    2ba0:	87aa                	mv	a5,a0
    2ba2:	fcf42a23          	sw	a5,-44(s0)
    2ba6:	fe042223          	sw	zero,-28(s0)
    2baa:	a88d                	j	2c1c <fourfiles+0x262>
    2bac:	fe042423          	sw	zero,-24(s0)
    2bb0:	a0b9                	j	2bfe <fourfiles+0x244>
    2bb2:	00007717          	auipc	a4,0x7
    2bb6:	54670713          	addi	a4,a4,1350 # a0f8 <buf>
    2bba:	fe842783          	lw	a5,-24(s0)
    2bbe:	97ba                	add	a5,a5,a4
    2bc0:	0007c783          	lbu	a5,0(a5)
    2bc4:	0007871b          	sext.w	a4,a5
    2bc8:	fec42783          	lw	a5,-20(s0)
    2bcc:	0307879b          	addiw	a5,a5,48
    2bd0:	2781                	sext.w	a5,a5
    2bd2:	02f70163          	beq	a4,a5,2bf4 <fourfiles+0x23a>
    2bd6:	f9843583          	ld	a1,-104(s0)
    2bda:	00006517          	auipc	a0,0x6
    2bde:	b7e50513          	addi	a0,a0,-1154 # 8758 <longjmp_1+0xe10>
    2be2:	00005097          	auipc	ra,0x5
    2be6:	9c4080e7          	jalr	-1596(ra) # 75a6 <printf>
    2bea:	4505                	li	a0,1
    2bec:	00004097          	auipc	ra,0x4
    2bf0:	48c080e7          	jalr	1164(ra) # 7078 <exit>
    2bf4:	fe842783          	lw	a5,-24(s0)
    2bf8:	2785                	addiw	a5,a5,1
    2bfa:	fef42423          	sw	a5,-24(s0)
    2bfe:	fe842703          	lw	a4,-24(s0)
    2c02:	fd042783          	lw	a5,-48(s0)
    2c06:	2701                	sext.w	a4,a4
    2c08:	2781                	sext.w	a5,a5
    2c0a:	faf744e3          	blt	a4,a5,2bb2 <fourfiles+0x1f8>
    2c0e:	fe442703          	lw	a4,-28(s0)
    2c12:	fd042783          	lw	a5,-48(s0)
    2c16:	9fb9                	addw	a5,a5,a4
    2c18:	fef42223          	sw	a5,-28(s0)
    2c1c:	fd442783          	lw	a5,-44(s0)
    2c20:	660d                	lui	a2,0x3
    2c22:	00007597          	auipc	a1,0x7
    2c26:	4d658593          	addi	a1,a1,1238 # a0f8 <buf>
    2c2a:	853e                	mv	a0,a5
    2c2c:	00004097          	auipc	ra,0x4
    2c30:	464080e7          	jalr	1124(ra) # 7090 <read>
    2c34:	87aa                	mv	a5,a0
    2c36:	fcf42823          	sw	a5,-48(s0)
    2c3a:	fd042783          	lw	a5,-48(s0)
    2c3e:	2781                	sext.w	a5,a5
    2c40:	f6f046e3          	bgtz	a5,2bac <fourfiles+0x1f2>
    2c44:	fd442783          	lw	a5,-44(s0)
    2c48:	853e                	mv	a0,a5
    2c4a:	00004097          	auipc	ra,0x4
    2c4e:	456080e7          	jalr	1110(ra) # 70a0 <close>
    2c52:	fe442783          	lw	a5,-28(s0)
    2c56:	0007871b          	sext.w	a4,a5
    2c5a:	6785                	lui	a5,0x1
    2c5c:	77078793          	addi	a5,a5,1904 # 1770 <writebig+0x124>
    2c60:	02f70263          	beq	a4,a5,2c84 <fourfiles+0x2ca>
    2c64:	fe442783          	lw	a5,-28(s0)
    2c68:	85be                	mv	a1,a5
    2c6a:	00006517          	auipc	a0,0x6
    2c6e:	afe50513          	addi	a0,a0,-1282 # 8768 <longjmp_1+0xe20>
    2c72:	00005097          	auipc	ra,0x5
    2c76:	934080e7          	jalr	-1740(ra) # 75a6 <printf>
    2c7a:	4505                	li	a0,1
    2c7c:	00004097          	auipc	ra,0x4
    2c80:	3fc080e7          	jalr	1020(ra) # 7078 <exit>
    2c84:	fd843503          	ld	a0,-40(s0)
    2c88:	00004097          	auipc	ra,0x4
    2c8c:	440080e7          	jalr	1088(ra) # 70c8 <unlink>
    2c90:	fec42783          	lw	a5,-20(s0)
    2c94:	2785                	addiw	a5,a5,1
    2c96:	fef42623          	sw	a5,-20(s0)
    2c9a:	fec42783          	lw	a5,-20(s0)
    2c9e:	0007871b          	sext.w	a4,a5
    2ca2:	478d                	li	a5,3
    2ca4:	ece7dde3          	bge	a5,a4,2b7e <fourfiles+0x1c4>
    2ca8:	0001                	nop
    2caa:	0001                	nop
    2cac:	70a6                	ld	ra,104(sp)
    2cae:	7406                	ld	s0,96(sp)
    2cb0:	6165                	addi	sp,sp,112
    2cb2:	8082                	ret

0000000000002cb4 <createdelete>:
    2cb4:	711d                	addi	sp,sp,-96
    2cb6:	ec86                	sd	ra,88(sp)
    2cb8:	e8a2                	sd	s0,80(sp)
    2cba:	1080                	addi	s0,sp,96
    2cbc:	faa43423          	sd	a0,-88(s0)
    2cc0:	fe042423          	sw	zero,-24(s0)
    2cc4:	aa91                	j	2e18 <createdelete+0x164>
    2cc6:	00004097          	auipc	ra,0x4
    2cca:	3aa080e7          	jalr	938(ra) # 7070 <fork>
    2cce:	87aa                	mv	a5,a0
    2cd0:	fef42023          	sw	a5,-32(s0)
    2cd4:	fe042783          	lw	a5,-32(s0)
    2cd8:	2781                	sext.w	a5,a5
    2cda:	0207d163          	bgez	a5,2cfc <createdelete+0x48>
    2cde:	fa843583          	ld	a1,-88(s0)
    2ce2:	00005517          	auipc	a0,0x5
    2ce6:	19e50513          	addi	a0,a0,414 # 7e80 <longjmp_1+0x538>
    2cea:	00005097          	auipc	ra,0x5
    2cee:	8bc080e7          	jalr	-1860(ra) # 75a6 <printf>
    2cf2:	4505                	li	a0,1
    2cf4:	00004097          	auipc	ra,0x4
    2cf8:	384080e7          	jalr	900(ra) # 7078 <exit>
    2cfc:	fe042783          	lw	a5,-32(s0)
    2d00:	2781                	sext.w	a5,a5
    2d02:	10079663          	bnez	a5,2e0e <createdelete+0x15a>
    2d06:	fe842783          	lw	a5,-24(s0)
    2d0a:	0ff7f793          	andi	a5,a5,255
    2d0e:	0707879b          	addiw	a5,a5,112
    2d12:	0ff7f793          	andi	a5,a5,255
    2d16:	fcf40023          	sb	a5,-64(s0)
    2d1a:	fc040123          	sb	zero,-62(s0)
    2d1e:	fe042623          	sw	zero,-20(s0)
    2d22:	a8d1                	j	2df6 <createdelete+0x142>
    2d24:	fec42783          	lw	a5,-20(s0)
    2d28:	0ff7f793          	andi	a5,a5,255
    2d2c:	0307879b          	addiw	a5,a5,48
    2d30:	0ff7f793          	andi	a5,a5,255
    2d34:	fcf400a3          	sb	a5,-63(s0)
    2d38:	fc040793          	addi	a5,s0,-64
    2d3c:	20200593          	li	a1,514
    2d40:	853e                	mv	a0,a5
    2d42:	00004097          	auipc	ra,0x4
    2d46:	376080e7          	jalr	886(ra) # 70b8 <open>
    2d4a:	87aa                	mv	a5,a0
    2d4c:	fef42223          	sw	a5,-28(s0)
    2d50:	fe442783          	lw	a5,-28(s0)
    2d54:	2781                	sext.w	a5,a5
    2d56:	0207d163          	bgez	a5,2d78 <createdelete+0xc4>
    2d5a:	fa843583          	ld	a1,-88(s0)
    2d5e:	00005517          	auipc	a0,0x5
    2d62:	77250513          	addi	a0,a0,1906 # 84d0 <longjmp_1+0xb88>
    2d66:	00005097          	auipc	ra,0x5
    2d6a:	840080e7          	jalr	-1984(ra) # 75a6 <printf>
    2d6e:	4505                	li	a0,1
    2d70:	00004097          	auipc	ra,0x4
    2d74:	308080e7          	jalr	776(ra) # 7078 <exit>
    2d78:	fe442783          	lw	a5,-28(s0)
    2d7c:	853e                	mv	a0,a5
    2d7e:	00004097          	auipc	ra,0x4
    2d82:	322080e7          	jalr	802(ra) # 70a0 <close>
    2d86:	fec42783          	lw	a5,-20(s0)
    2d8a:	2781                	sext.w	a5,a5
    2d8c:	06f05063          	blez	a5,2dec <createdelete+0x138>
    2d90:	fec42783          	lw	a5,-20(s0)
    2d94:	8b85                	andi	a5,a5,1
    2d96:	2781                	sext.w	a5,a5
    2d98:	ebb1                	bnez	a5,2dec <createdelete+0x138>
    2d9a:	fec42783          	lw	a5,-20(s0)
    2d9e:	01f7d71b          	srliw	a4,a5,0x1f
    2da2:	9fb9                	addw	a5,a5,a4
    2da4:	4017d79b          	sraiw	a5,a5,0x1
    2da8:	2781                	sext.w	a5,a5
    2daa:	0ff7f793          	andi	a5,a5,255
    2dae:	0307879b          	addiw	a5,a5,48
    2db2:	0ff7f793          	andi	a5,a5,255
    2db6:	fcf400a3          	sb	a5,-63(s0)
    2dba:	fc040793          	addi	a5,s0,-64
    2dbe:	853e                	mv	a0,a5
    2dc0:	00004097          	auipc	ra,0x4
    2dc4:	308080e7          	jalr	776(ra) # 70c8 <unlink>
    2dc8:	87aa                	mv	a5,a0
    2dca:	0207d163          	bgez	a5,2dec <createdelete+0x138>
    2dce:	fa843583          	ld	a1,-88(s0)
    2dd2:	00005517          	auipc	a0,0x5
    2dd6:	44e50513          	addi	a0,a0,1102 # 8220 <longjmp_1+0x8d8>
    2dda:	00004097          	auipc	ra,0x4
    2dde:	7cc080e7          	jalr	1996(ra) # 75a6 <printf>
    2de2:	4505                	li	a0,1
    2de4:	00004097          	auipc	ra,0x4
    2de8:	294080e7          	jalr	660(ra) # 7078 <exit>
    2dec:	fec42783          	lw	a5,-20(s0)
    2df0:	2785                	addiw	a5,a5,1
    2df2:	fef42623          	sw	a5,-20(s0)
    2df6:	fec42783          	lw	a5,-20(s0)
    2dfa:	0007871b          	sext.w	a4,a5
    2dfe:	47cd                	li	a5,19
    2e00:	f2e7d2e3          	bge	a5,a4,2d24 <createdelete+0x70>
    2e04:	4501                	li	a0,0
    2e06:	00004097          	auipc	ra,0x4
    2e0a:	272080e7          	jalr	626(ra) # 7078 <exit>
    2e0e:	fe842783          	lw	a5,-24(s0)
    2e12:	2785                	addiw	a5,a5,1
    2e14:	fef42423          	sw	a5,-24(s0)
    2e18:	fe842783          	lw	a5,-24(s0)
    2e1c:	0007871b          	sext.w	a4,a5
    2e20:	478d                	li	a5,3
    2e22:	eae7d2e3          	bge	a5,a4,2cc6 <createdelete+0x12>
    2e26:	fe042423          	sw	zero,-24(s0)
    2e2a:	a02d                	j	2e54 <createdelete+0x1a0>
    2e2c:	fbc40793          	addi	a5,s0,-68
    2e30:	853e                	mv	a0,a5
    2e32:	00004097          	auipc	ra,0x4
    2e36:	24e080e7          	jalr	590(ra) # 7080 <wait>
    2e3a:	fbc42783          	lw	a5,-68(s0)
    2e3e:	c791                	beqz	a5,2e4a <createdelete+0x196>
    2e40:	4505                	li	a0,1
    2e42:	00004097          	auipc	ra,0x4
    2e46:	236080e7          	jalr	566(ra) # 7078 <exit>
    2e4a:	fe842783          	lw	a5,-24(s0)
    2e4e:	2785                	addiw	a5,a5,1
    2e50:	fef42423          	sw	a5,-24(s0)
    2e54:	fe842783          	lw	a5,-24(s0)
    2e58:	0007871b          	sext.w	a4,a5
    2e5c:	478d                	li	a5,3
    2e5e:	fce7d7e3          	bge	a5,a4,2e2c <createdelete+0x178>
    2e62:	fc040123          	sb	zero,-62(s0)
    2e66:	fc244783          	lbu	a5,-62(s0)
    2e6a:	fcf400a3          	sb	a5,-63(s0)
    2e6e:	fc144783          	lbu	a5,-63(s0)
    2e72:	fcf40023          	sb	a5,-64(s0)
    2e76:	fe042623          	sw	zero,-20(s0)
    2e7a:	a229                	j	2f84 <createdelete+0x2d0>
    2e7c:	fe042423          	sw	zero,-24(s0)
    2e80:	a0f5                	j	2f6c <createdelete+0x2b8>
    2e82:	fe842783          	lw	a5,-24(s0)
    2e86:	0ff7f793          	andi	a5,a5,255
    2e8a:	0707879b          	addiw	a5,a5,112
    2e8e:	0ff7f793          	andi	a5,a5,255
    2e92:	fcf40023          	sb	a5,-64(s0)
    2e96:	fec42783          	lw	a5,-20(s0)
    2e9a:	0ff7f793          	andi	a5,a5,255
    2e9e:	0307879b          	addiw	a5,a5,48
    2ea2:	0ff7f793          	andi	a5,a5,255
    2ea6:	fcf400a3          	sb	a5,-63(s0)
    2eaa:	fc040793          	addi	a5,s0,-64
    2eae:	4581                	li	a1,0
    2eb0:	853e                	mv	a0,a5
    2eb2:	00004097          	auipc	ra,0x4
    2eb6:	206080e7          	jalr	518(ra) # 70b8 <open>
    2eba:	87aa                	mv	a5,a0
    2ebc:	fef42223          	sw	a5,-28(s0)
    2ec0:	fec42783          	lw	a5,-20(s0)
    2ec4:	2781                	sext.w	a5,a5
    2ec6:	cb81                	beqz	a5,2ed6 <createdelete+0x222>
    2ec8:	fec42783          	lw	a5,-20(s0)
    2ecc:	0007871b          	sext.w	a4,a5
    2ed0:	47a5                	li	a5,9
    2ed2:	02e7d963          	bge	a5,a4,2f04 <createdelete+0x250>
    2ed6:	fe442783          	lw	a5,-28(s0)
    2eda:	2781                	sext.w	a5,a5
    2edc:	0207d463          	bgez	a5,2f04 <createdelete+0x250>
    2ee0:	fc040793          	addi	a5,s0,-64
    2ee4:	863e                	mv	a2,a5
    2ee6:	fa843583          	ld	a1,-88(s0)
    2eea:	00006517          	auipc	a0,0x6
    2eee:	8b650513          	addi	a0,a0,-1866 # 87a0 <longjmp_1+0xe58>
    2ef2:	00004097          	auipc	ra,0x4
    2ef6:	6b4080e7          	jalr	1716(ra) # 75a6 <printf>
    2efa:	4505                	li	a0,1
    2efc:	00004097          	auipc	ra,0x4
    2f00:	17c080e7          	jalr	380(ra) # 7078 <exit>
    2f04:	fec42783          	lw	a5,-20(s0)
    2f08:	2781                	sext.w	a5,a5
    2f0a:	04f05063          	blez	a5,2f4a <createdelete+0x296>
    2f0e:	fec42783          	lw	a5,-20(s0)
    2f12:	0007871b          	sext.w	a4,a5
    2f16:	47a5                	li	a5,9
    2f18:	02e7c963          	blt	a5,a4,2f4a <createdelete+0x296>
    2f1c:	fe442783          	lw	a5,-28(s0)
    2f20:	2781                	sext.w	a5,a5
    2f22:	0207c463          	bltz	a5,2f4a <createdelete+0x296>
    2f26:	fc040793          	addi	a5,s0,-64
    2f2a:	863e                	mv	a2,a5
    2f2c:	fa843583          	ld	a1,-88(s0)
    2f30:	00006517          	auipc	a0,0x6
    2f34:	89850513          	addi	a0,a0,-1896 # 87c8 <longjmp_1+0xe80>
    2f38:	00004097          	auipc	ra,0x4
    2f3c:	66e080e7          	jalr	1646(ra) # 75a6 <printf>
    2f40:	4505                	li	a0,1
    2f42:	00004097          	auipc	ra,0x4
    2f46:	136080e7          	jalr	310(ra) # 7078 <exit>
    2f4a:	fe442783          	lw	a5,-28(s0)
    2f4e:	2781                	sext.w	a5,a5
    2f50:	0007c963          	bltz	a5,2f62 <createdelete+0x2ae>
    2f54:	fe442783          	lw	a5,-28(s0)
    2f58:	853e                	mv	a0,a5
    2f5a:	00004097          	auipc	ra,0x4
    2f5e:	146080e7          	jalr	326(ra) # 70a0 <close>
    2f62:	fe842783          	lw	a5,-24(s0)
    2f66:	2785                	addiw	a5,a5,1
    2f68:	fef42423          	sw	a5,-24(s0)
    2f6c:	fe842783          	lw	a5,-24(s0)
    2f70:	0007871b          	sext.w	a4,a5
    2f74:	478d                	li	a5,3
    2f76:	f0e7d6e3          	bge	a5,a4,2e82 <createdelete+0x1ce>
    2f7a:	fec42783          	lw	a5,-20(s0)
    2f7e:	2785                	addiw	a5,a5,1
    2f80:	fef42623          	sw	a5,-20(s0)
    2f84:	fec42783          	lw	a5,-20(s0)
    2f88:	0007871b          	sext.w	a4,a5
    2f8c:	47cd                	li	a5,19
    2f8e:	eee7d7e3          	bge	a5,a4,2e7c <createdelete+0x1c8>
    2f92:	fe042623          	sw	zero,-20(s0)
    2f96:	a085                	j	2ff6 <createdelete+0x342>
    2f98:	fe042423          	sw	zero,-24(s0)
    2f9c:	a089                	j	2fde <createdelete+0x32a>
    2f9e:	fec42783          	lw	a5,-20(s0)
    2fa2:	0ff7f793          	andi	a5,a5,255
    2fa6:	0707879b          	addiw	a5,a5,112
    2faa:	0ff7f793          	andi	a5,a5,255
    2fae:	fcf40023          	sb	a5,-64(s0)
    2fb2:	fec42783          	lw	a5,-20(s0)
    2fb6:	0ff7f793          	andi	a5,a5,255
    2fba:	0307879b          	addiw	a5,a5,48
    2fbe:	0ff7f793          	andi	a5,a5,255
    2fc2:	fcf400a3          	sb	a5,-63(s0)
    2fc6:	fc040793          	addi	a5,s0,-64
    2fca:	853e                	mv	a0,a5
    2fcc:	00004097          	auipc	ra,0x4
    2fd0:	0fc080e7          	jalr	252(ra) # 70c8 <unlink>
    2fd4:	fe842783          	lw	a5,-24(s0)
    2fd8:	2785                	addiw	a5,a5,1
    2fda:	fef42423          	sw	a5,-24(s0)
    2fde:	fe842783          	lw	a5,-24(s0)
    2fe2:	0007871b          	sext.w	a4,a5
    2fe6:	478d                	li	a5,3
    2fe8:	fae7dbe3          	bge	a5,a4,2f9e <createdelete+0x2ea>
    2fec:	fec42783          	lw	a5,-20(s0)
    2ff0:	2785                	addiw	a5,a5,1
    2ff2:	fef42623          	sw	a5,-20(s0)
    2ff6:	fec42783          	lw	a5,-20(s0)
    2ffa:	0007871b          	sext.w	a4,a5
    2ffe:	47cd                	li	a5,19
    3000:	f8e7dce3          	bge	a5,a4,2f98 <createdelete+0x2e4>
    3004:	0001                	nop
    3006:	0001                	nop
    3008:	60e6                	ld	ra,88(sp)
    300a:	6446                	ld	s0,80(sp)
    300c:	6125                	addi	sp,sp,96
    300e:	8082                	ret

0000000000003010 <unlinkread>:
    3010:	7179                	addi	sp,sp,-48
    3012:	f406                	sd	ra,40(sp)
    3014:	f022                	sd	s0,32(sp)
    3016:	1800                	addi	s0,sp,48
    3018:	fca43c23          	sd	a0,-40(s0)
    301c:	20200593          	li	a1,514
    3020:	00005517          	auipc	a0,0x5
    3024:	a9050513          	addi	a0,a0,-1392 # 7ab0 <longjmp_1+0x168>
    3028:	00004097          	auipc	ra,0x4
    302c:	090080e7          	jalr	144(ra) # 70b8 <open>
    3030:	87aa                	mv	a5,a0
    3032:	fef42623          	sw	a5,-20(s0)
    3036:	fec42783          	lw	a5,-20(s0)
    303a:	2781                	sext.w	a5,a5
    303c:	0207d163          	bgez	a5,305e <unlinkread+0x4e>
    3040:	fd843583          	ld	a1,-40(s0)
    3044:	00005517          	auipc	a0,0x5
    3048:	7ac50513          	addi	a0,a0,1964 # 87f0 <longjmp_1+0xea8>
    304c:	00004097          	auipc	ra,0x4
    3050:	55a080e7          	jalr	1370(ra) # 75a6 <printf>
    3054:	4505                	li	a0,1
    3056:	00004097          	auipc	ra,0x4
    305a:	022080e7          	jalr	34(ra) # 7078 <exit>
    305e:	fec42783          	lw	a5,-20(s0)
    3062:	4615                	li	a2,5
    3064:	00005597          	auipc	a1,0x5
    3068:	7ac58593          	addi	a1,a1,1964 # 8810 <longjmp_1+0xec8>
    306c:	853e                	mv	a0,a5
    306e:	00004097          	auipc	ra,0x4
    3072:	02a080e7          	jalr	42(ra) # 7098 <write>
    3076:	fec42783          	lw	a5,-20(s0)
    307a:	853e                	mv	a0,a5
    307c:	00004097          	auipc	ra,0x4
    3080:	024080e7          	jalr	36(ra) # 70a0 <close>
    3084:	4589                	li	a1,2
    3086:	00005517          	auipc	a0,0x5
    308a:	a2a50513          	addi	a0,a0,-1494 # 7ab0 <longjmp_1+0x168>
    308e:	00004097          	auipc	ra,0x4
    3092:	02a080e7          	jalr	42(ra) # 70b8 <open>
    3096:	87aa                	mv	a5,a0
    3098:	fef42623          	sw	a5,-20(s0)
    309c:	fec42783          	lw	a5,-20(s0)
    30a0:	2781                	sext.w	a5,a5
    30a2:	0207d163          	bgez	a5,30c4 <unlinkread+0xb4>
    30a6:	fd843583          	ld	a1,-40(s0)
    30aa:	00005517          	auipc	a0,0x5
    30ae:	76e50513          	addi	a0,a0,1902 # 8818 <longjmp_1+0xed0>
    30b2:	00004097          	auipc	ra,0x4
    30b6:	4f4080e7          	jalr	1268(ra) # 75a6 <printf>
    30ba:	4505                	li	a0,1
    30bc:	00004097          	auipc	ra,0x4
    30c0:	fbc080e7          	jalr	-68(ra) # 7078 <exit>
    30c4:	00005517          	auipc	a0,0x5
    30c8:	9ec50513          	addi	a0,a0,-1556 # 7ab0 <longjmp_1+0x168>
    30cc:	00004097          	auipc	ra,0x4
    30d0:	ffc080e7          	jalr	-4(ra) # 70c8 <unlink>
    30d4:	87aa                	mv	a5,a0
    30d6:	c385                	beqz	a5,30f6 <unlinkread+0xe6>
    30d8:	fd843583          	ld	a1,-40(s0)
    30dc:	00005517          	auipc	a0,0x5
    30e0:	75c50513          	addi	a0,a0,1884 # 8838 <longjmp_1+0xef0>
    30e4:	00004097          	auipc	ra,0x4
    30e8:	4c2080e7          	jalr	1218(ra) # 75a6 <printf>
    30ec:	4505                	li	a0,1
    30ee:	00004097          	auipc	ra,0x4
    30f2:	f8a080e7          	jalr	-118(ra) # 7078 <exit>
    30f6:	20200593          	li	a1,514
    30fa:	00005517          	auipc	a0,0x5
    30fe:	9b650513          	addi	a0,a0,-1610 # 7ab0 <longjmp_1+0x168>
    3102:	00004097          	auipc	ra,0x4
    3106:	fb6080e7          	jalr	-74(ra) # 70b8 <open>
    310a:	87aa                	mv	a5,a0
    310c:	fef42423          	sw	a5,-24(s0)
    3110:	fe842783          	lw	a5,-24(s0)
    3114:	460d                	li	a2,3
    3116:	00005597          	auipc	a1,0x5
    311a:	74258593          	addi	a1,a1,1858 # 8858 <longjmp_1+0xf10>
    311e:	853e                	mv	a0,a5
    3120:	00004097          	auipc	ra,0x4
    3124:	f78080e7          	jalr	-136(ra) # 7098 <write>
    3128:	fe842783          	lw	a5,-24(s0)
    312c:	853e                	mv	a0,a5
    312e:	00004097          	auipc	ra,0x4
    3132:	f72080e7          	jalr	-142(ra) # 70a0 <close>
    3136:	fec42783          	lw	a5,-20(s0)
    313a:	660d                	lui	a2,0x3
    313c:	00007597          	auipc	a1,0x7
    3140:	fbc58593          	addi	a1,a1,-68 # a0f8 <buf>
    3144:	853e                	mv	a0,a5
    3146:	00004097          	auipc	ra,0x4
    314a:	f4a080e7          	jalr	-182(ra) # 7090 <read>
    314e:	87aa                	mv	a5,a0
    3150:	873e                	mv	a4,a5
    3152:	4795                	li	a5,5
    3154:	02f70163          	beq	a4,a5,3176 <unlinkread+0x166>
    3158:	fd843583          	ld	a1,-40(s0)
    315c:	00005517          	auipc	a0,0x5
    3160:	70450513          	addi	a0,a0,1796 # 8860 <longjmp_1+0xf18>
    3164:	00004097          	auipc	ra,0x4
    3168:	442080e7          	jalr	1090(ra) # 75a6 <printf>
    316c:	4505                	li	a0,1
    316e:	00004097          	auipc	ra,0x4
    3172:	f0a080e7          	jalr	-246(ra) # 7078 <exit>
    3176:	00007797          	auipc	a5,0x7
    317a:	f8278793          	addi	a5,a5,-126 # a0f8 <buf>
    317e:	0007c783          	lbu	a5,0(a5)
    3182:	873e                	mv	a4,a5
    3184:	06800793          	li	a5,104
    3188:	02f70163          	beq	a4,a5,31aa <unlinkread+0x19a>
    318c:	fd843583          	ld	a1,-40(s0)
    3190:	00005517          	auipc	a0,0x5
    3194:	6f050513          	addi	a0,a0,1776 # 8880 <longjmp_1+0xf38>
    3198:	00004097          	auipc	ra,0x4
    319c:	40e080e7          	jalr	1038(ra) # 75a6 <printf>
    31a0:	4505                	li	a0,1
    31a2:	00004097          	auipc	ra,0x4
    31a6:	ed6080e7          	jalr	-298(ra) # 7078 <exit>
    31aa:	fec42783          	lw	a5,-20(s0)
    31ae:	4629                	li	a2,10
    31b0:	00007597          	auipc	a1,0x7
    31b4:	f4858593          	addi	a1,a1,-184 # a0f8 <buf>
    31b8:	853e                	mv	a0,a5
    31ba:	00004097          	auipc	ra,0x4
    31be:	ede080e7          	jalr	-290(ra) # 7098 <write>
    31c2:	87aa                	mv	a5,a0
    31c4:	873e                	mv	a4,a5
    31c6:	47a9                	li	a5,10
    31c8:	02f70163          	beq	a4,a5,31ea <unlinkread+0x1da>
    31cc:	fd843583          	ld	a1,-40(s0)
    31d0:	00005517          	auipc	a0,0x5
    31d4:	6d050513          	addi	a0,a0,1744 # 88a0 <longjmp_1+0xf58>
    31d8:	00004097          	auipc	ra,0x4
    31dc:	3ce080e7          	jalr	974(ra) # 75a6 <printf>
    31e0:	4505                	li	a0,1
    31e2:	00004097          	auipc	ra,0x4
    31e6:	e96080e7          	jalr	-362(ra) # 7078 <exit>
    31ea:	fec42783          	lw	a5,-20(s0)
    31ee:	853e                	mv	a0,a5
    31f0:	00004097          	auipc	ra,0x4
    31f4:	eb0080e7          	jalr	-336(ra) # 70a0 <close>
    31f8:	00005517          	auipc	a0,0x5
    31fc:	8b850513          	addi	a0,a0,-1864 # 7ab0 <longjmp_1+0x168>
    3200:	00004097          	auipc	ra,0x4
    3204:	ec8080e7          	jalr	-312(ra) # 70c8 <unlink>
    3208:	0001                	nop
    320a:	70a2                	ld	ra,40(sp)
    320c:	7402                	ld	s0,32(sp)
    320e:	6145                	addi	sp,sp,48
    3210:	8082                	ret

0000000000003212 <linktest>:
    3212:	7179                	addi	sp,sp,-48
    3214:	f406                	sd	ra,40(sp)
    3216:	f022                	sd	s0,32(sp)
    3218:	1800                	addi	s0,sp,48
    321a:	fca43c23          	sd	a0,-40(s0)
    321e:	00005517          	auipc	a0,0x5
    3222:	6a250513          	addi	a0,a0,1698 # 88c0 <longjmp_1+0xf78>
    3226:	00004097          	auipc	ra,0x4
    322a:	ea2080e7          	jalr	-350(ra) # 70c8 <unlink>
    322e:	00005517          	auipc	a0,0x5
    3232:	69a50513          	addi	a0,a0,1690 # 88c8 <longjmp_1+0xf80>
    3236:	00004097          	auipc	ra,0x4
    323a:	e92080e7          	jalr	-366(ra) # 70c8 <unlink>
    323e:	20200593          	li	a1,514
    3242:	00005517          	auipc	a0,0x5
    3246:	67e50513          	addi	a0,a0,1662 # 88c0 <longjmp_1+0xf78>
    324a:	00004097          	auipc	ra,0x4
    324e:	e6e080e7          	jalr	-402(ra) # 70b8 <open>
    3252:	87aa                	mv	a5,a0
    3254:	fef42623          	sw	a5,-20(s0)
    3258:	fec42783          	lw	a5,-20(s0)
    325c:	2781                	sext.w	a5,a5
    325e:	0207d163          	bgez	a5,3280 <linktest+0x6e>
    3262:	fd843583          	ld	a1,-40(s0)
    3266:	00005517          	auipc	a0,0x5
    326a:	66a50513          	addi	a0,a0,1642 # 88d0 <longjmp_1+0xf88>
    326e:	00004097          	auipc	ra,0x4
    3272:	338080e7          	jalr	824(ra) # 75a6 <printf>
    3276:	4505                	li	a0,1
    3278:	00004097          	auipc	ra,0x4
    327c:	e00080e7          	jalr	-512(ra) # 7078 <exit>
    3280:	fec42783          	lw	a5,-20(s0)
    3284:	4615                	li	a2,5
    3286:	00005597          	auipc	a1,0x5
    328a:	58a58593          	addi	a1,a1,1418 # 8810 <longjmp_1+0xec8>
    328e:	853e                	mv	a0,a5
    3290:	00004097          	auipc	ra,0x4
    3294:	e08080e7          	jalr	-504(ra) # 7098 <write>
    3298:	87aa                	mv	a5,a0
    329a:	873e                	mv	a4,a5
    329c:	4795                	li	a5,5
    329e:	02f70163          	beq	a4,a5,32c0 <linktest+0xae>
    32a2:	fd843583          	ld	a1,-40(s0)
    32a6:	00005517          	auipc	a0,0x5
    32aa:	64250513          	addi	a0,a0,1602 # 88e8 <longjmp_1+0xfa0>
    32ae:	00004097          	auipc	ra,0x4
    32b2:	2f8080e7          	jalr	760(ra) # 75a6 <printf>
    32b6:	4505                	li	a0,1
    32b8:	00004097          	auipc	ra,0x4
    32bc:	dc0080e7          	jalr	-576(ra) # 7078 <exit>
    32c0:	fec42783          	lw	a5,-20(s0)
    32c4:	853e                	mv	a0,a5
    32c6:	00004097          	auipc	ra,0x4
    32ca:	dda080e7          	jalr	-550(ra) # 70a0 <close>
    32ce:	00005597          	auipc	a1,0x5
    32d2:	5fa58593          	addi	a1,a1,1530 # 88c8 <longjmp_1+0xf80>
    32d6:	00005517          	auipc	a0,0x5
    32da:	5ea50513          	addi	a0,a0,1514 # 88c0 <longjmp_1+0xf78>
    32de:	00004097          	auipc	ra,0x4
    32e2:	dfa080e7          	jalr	-518(ra) # 70d8 <link>
    32e6:	87aa                	mv	a5,a0
    32e8:	0207d163          	bgez	a5,330a <linktest+0xf8>
    32ec:	fd843583          	ld	a1,-40(s0)
    32f0:	00005517          	auipc	a0,0x5
    32f4:	61050513          	addi	a0,a0,1552 # 8900 <longjmp_1+0xfb8>
    32f8:	00004097          	auipc	ra,0x4
    32fc:	2ae080e7          	jalr	686(ra) # 75a6 <printf>
    3300:	4505                	li	a0,1
    3302:	00004097          	auipc	ra,0x4
    3306:	d76080e7          	jalr	-650(ra) # 7078 <exit>
    330a:	00005517          	auipc	a0,0x5
    330e:	5b650513          	addi	a0,a0,1462 # 88c0 <longjmp_1+0xf78>
    3312:	00004097          	auipc	ra,0x4
    3316:	db6080e7          	jalr	-586(ra) # 70c8 <unlink>
    331a:	4581                	li	a1,0
    331c:	00005517          	auipc	a0,0x5
    3320:	5a450513          	addi	a0,a0,1444 # 88c0 <longjmp_1+0xf78>
    3324:	00004097          	auipc	ra,0x4
    3328:	d94080e7          	jalr	-620(ra) # 70b8 <open>
    332c:	87aa                	mv	a5,a0
    332e:	0207c163          	bltz	a5,3350 <linktest+0x13e>
    3332:	fd843583          	ld	a1,-40(s0)
    3336:	00005517          	auipc	a0,0x5
    333a:	5ea50513          	addi	a0,a0,1514 # 8920 <longjmp_1+0xfd8>
    333e:	00004097          	auipc	ra,0x4
    3342:	268080e7          	jalr	616(ra) # 75a6 <printf>
    3346:	4505                	li	a0,1
    3348:	00004097          	auipc	ra,0x4
    334c:	d30080e7          	jalr	-720(ra) # 7078 <exit>
    3350:	4581                	li	a1,0
    3352:	00005517          	auipc	a0,0x5
    3356:	57650513          	addi	a0,a0,1398 # 88c8 <longjmp_1+0xf80>
    335a:	00004097          	auipc	ra,0x4
    335e:	d5e080e7          	jalr	-674(ra) # 70b8 <open>
    3362:	87aa                	mv	a5,a0
    3364:	fef42623          	sw	a5,-20(s0)
    3368:	fec42783          	lw	a5,-20(s0)
    336c:	2781                	sext.w	a5,a5
    336e:	0207d163          	bgez	a5,3390 <linktest+0x17e>
    3372:	fd843583          	ld	a1,-40(s0)
    3376:	00005517          	auipc	a0,0x5
    337a:	5da50513          	addi	a0,a0,1498 # 8950 <longjmp_1+0x1008>
    337e:	00004097          	auipc	ra,0x4
    3382:	228080e7          	jalr	552(ra) # 75a6 <printf>
    3386:	4505                	li	a0,1
    3388:	00004097          	auipc	ra,0x4
    338c:	cf0080e7          	jalr	-784(ra) # 7078 <exit>
    3390:	fec42783          	lw	a5,-20(s0)
    3394:	660d                	lui	a2,0x3
    3396:	00007597          	auipc	a1,0x7
    339a:	d6258593          	addi	a1,a1,-670 # a0f8 <buf>
    339e:	853e                	mv	a0,a5
    33a0:	00004097          	auipc	ra,0x4
    33a4:	cf0080e7          	jalr	-784(ra) # 7090 <read>
    33a8:	87aa                	mv	a5,a0
    33aa:	873e                	mv	a4,a5
    33ac:	4795                	li	a5,5
    33ae:	02f70163          	beq	a4,a5,33d0 <linktest+0x1be>
    33b2:	fd843583          	ld	a1,-40(s0)
    33b6:	00005517          	auipc	a0,0x5
    33ba:	5b250513          	addi	a0,a0,1458 # 8968 <longjmp_1+0x1020>
    33be:	00004097          	auipc	ra,0x4
    33c2:	1e8080e7          	jalr	488(ra) # 75a6 <printf>
    33c6:	4505                	li	a0,1
    33c8:	00004097          	auipc	ra,0x4
    33cc:	cb0080e7          	jalr	-848(ra) # 7078 <exit>
    33d0:	fec42783          	lw	a5,-20(s0)
    33d4:	853e                	mv	a0,a5
    33d6:	00004097          	auipc	ra,0x4
    33da:	cca080e7          	jalr	-822(ra) # 70a0 <close>
    33de:	00005597          	auipc	a1,0x5
    33e2:	4ea58593          	addi	a1,a1,1258 # 88c8 <longjmp_1+0xf80>
    33e6:	00005517          	auipc	a0,0x5
    33ea:	4e250513          	addi	a0,a0,1250 # 88c8 <longjmp_1+0xf80>
    33ee:	00004097          	auipc	ra,0x4
    33f2:	cea080e7          	jalr	-790(ra) # 70d8 <link>
    33f6:	87aa                	mv	a5,a0
    33f8:	0207c163          	bltz	a5,341a <linktest+0x208>
    33fc:	fd843583          	ld	a1,-40(s0)
    3400:	00005517          	auipc	a0,0x5
    3404:	58050513          	addi	a0,a0,1408 # 8980 <longjmp_1+0x1038>
    3408:	00004097          	auipc	ra,0x4
    340c:	19e080e7          	jalr	414(ra) # 75a6 <printf>
    3410:	4505                	li	a0,1
    3412:	00004097          	auipc	ra,0x4
    3416:	c66080e7          	jalr	-922(ra) # 7078 <exit>
    341a:	00005517          	auipc	a0,0x5
    341e:	4ae50513          	addi	a0,a0,1198 # 88c8 <longjmp_1+0xf80>
    3422:	00004097          	auipc	ra,0x4
    3426:	ca6080e7          	jalr	-858(ra) # 70c8 <unlink>
    342a:	00005597          	auipc	a1,0x5
    342e:	49658593          	addi	a1,a1,1174 # 88c0 <longjmp_1+0xf78>
    3432:	00005517          	auipc	a0,0x5
    3436:	49650513          	addi	a0,a0,1174 # 88c8 <longjmp_1+0xf80>
    343a:	00004097          	auipc	ra,0x4
    343e:	c9e080e7          	jalr	-866(ra) # 70d8 <link>
    3442:	87aa                	mv	a5,a0
    3444:	0207c163          	bltz	a5,3466 <linktest+0x254>
    3448:	fd843583          	ld	a1,-40(s0)
    344c:	00005517          	auipc	a0,0x5
    3450:	55c50513          	addi	a0,a0,1372 # 89a8 <longjmp_1+0x1060>
    3454:	00004097          	auipc	ra,0x4
    3458:	152080e7          	jalr	338(ra) # 75a6 <printf>
    345c:	4505                	li	a0,1
    345e:	00004097          	auipc	ra,0x4
    3462:	c1a080e7          	jalr	-998(ra) # 7078 <exit>
    3466:	00005597          	auipc	a1,0x5
    346a:	45a58593          	addi	a1,a1,1114 # 88c0 <longjmp_1+0xf78>
    346e:	00005517          	auipc	a0,0x5
    3472:	56250513          	addi	a0,a0,1378 # 89d0 <longjmp_1+0x1088>
    3476:	00004097          	auipc	ra,0x4
    347a:	c62080e7          	jalr	-926(ra) # 70d8 <link>
    347e:	87aa                	mv	a5,a0
    3480:	0207c163          	bltz	a5,34a2 <linktest+0x290>
    3484:	fd843583          	ld	a1,-40(s0)
    3488:	00005517          	auipc	a0,0x5
    348c:	55050513          	addi	a0,a0,1360 # 89d8 <longjmp_1+0x1090>
    3490:	00004097          	auipc	ra,0x4
    3494:	116080e7          	jalr	278(ra) # 75a6 <printf>
    3498:	4505                	li	a0,1
    349a:	00004097          	auipc	ra,0x4
    349e:	bde080e7          	jalr	-1058(ra) # 7078 <exit>
    34a2:	0001                	nop
    34a4:	70a2                	ld	ra,40(sp)
    34a6:	7402                	ld	s0,32(sp)
    34a8:	6145                	addi	sp,sp,48
    34aa:	8082                	ret

00000000000034ac <concreate>:
    34ac:	7119                	addi	sp,sp,-128
    34ae:	fc86                	sd	ra,120(sp)
    34b0:	f8a2                	sd	s0,112(sp)
    34b2:	0100                	addi	s0,sp,128
    34b4:	f8a43423          	sd	a0,-120(s0)
    34b8:	04300793          	li	a5,67
    34bc:	fcf40c23          	sb	a5,-40(s0)
    34c0:	fc040d23          	sb	zero,-38(s0)
    34c4:	fe042623          	sw	zero,-20(s0)
    34c8:	a215                	j	35ec <concreate+0x140>
    34ca:	fec42783          	lw	a5,-20(s0)
    34ce:	0ff7f793          	andi	a5,a5,255
    34d2:	0307879b          	addiw	a5,a5,48
    34d6:	0ff7f793          	andi	a5,a5,255
    34da:	fcf40ca3          	sb	a5,-39(s0)
    34de:	fd840793          	addi	a5,s0,-40
    34e2:	853e                	mv	a0,a5
    34e4:	00004097          	auipc	ra,0x4
    34e8:	be4080e7          	jalr	-1052(ra) # 70c8 <unlink>
    34ec:	00004097          	auipc	ra,0x4
    34f0:	b84080e7          	jalr	-1148(ra) # 7070 <fork>
    34f4:	87aa                	mv	a5,a0
    34f6:	fef42023          	sw	a5,-32(s0)
    34fa:	fe042783          	lw	a5,-32(s0)
    34fe:	2781                	sext.w	a5,a5
    3500:	c79d                	beqz	a5,352e <concreate+0x82>
    3502:	fec42703          	lw	a4,-20(s0)
    3506:	478d                	li	a5,3
    3508:	02f767bb          	remw	a5,a4,a5
    350c:	2781                	sext.w	a5,a5
    350e:	873e                	mv	a4,a5
    3510:	4785                	li	a5,1
    3512:	00f71e63          	bne	a4,a5,352e <concreate+0x82>
    3516:	fd840793          	addi	a5,s0,-40
    351a:	85be                	mv	a1,a5
    351c:	00005517          	auipc	a0,0x5
    3520:	4dc50513          	addi	a0,a0,1244 # 89f8 <longjmp_1+0x10b0>
    3524:	00004097          	auipc	ra,0x4
    3528:	bb4080e7          	jalr	-1100(ra) # 70d8 <link>
    352c:	a059                	j	35b2 <concreate+0x106>
    352e:	fe042783          	lw	a5,-32(s0)
    3532:	2781                	sext.w	a5,a5
    3534:	e79d                	bnez	a5,3562 <concreate+0xb6>
    3536:	fec42703          	lw	a4,-20(s0)
    353a:	4795                	li	a5,5
    353c:	02f767bb          	remw	a5,a4,a5
    3540:	2781                	sext.w	a5,a5
    3542:	873e                	mv	a4,a5
    3544:	4785                	li	a5,1
    3546:	00f71e63          	bne	a4,a5,3562 <concreate+0xb6>
    354a:	fd840793          	addi	a5,s0,-40
    354e:	85be                	mv	a1,a5
    3550:	00005517          	auipc	a0,0x5
    3554:	4a850513          	addi	a0,a0,1192 # 89f8 <longjmp_1+0x10b0>
    3558:	00004097          	auipc	ra,0x4
    355c:	b80080e7          	jalr	-1152(ra) # 70d8 <link>
    3560:	a889                	j	35b2 <concreate+0x106>
    3562:	fd840793          	addi	a5,s0,-40
    3566:	20200593          	li	a1,514
    356a:	853e                	mv	a0,a5
    356c:	00004097          	auipc	ra,0x4
    3570:	b4c080e7          	jalr	-1204(ra) # 70b8 <open>
    3574:	87aa                	mv	a5,a0
    3576:	fef42223          	sw	a5,-28(s0)
    357a:	fe442783          	lw	a5,-28(s0)
    357e:	2781                	sext.w	a5,a5
    3580:	0207d263          	bgez	a5,35a4 <concreate+0xf8>
    3584:	fd840793          	addi	a5,s0,-40
    3588:	85be                	mv	a1,a5
    358a:	00005517          	auipc	a0,0x5
    358e:	47650513          	addi	a0,a0,1142 # 8a00 <longjmp_1+0x10b8>
    3592:	00004097          	auipc	ra,0x4
    3596:	014080e7          	jalr	20(ra) # 75a6 <printf>
    359a:	4505                	li	a0,1
    359c:	00004097          	auipc	ra,0x4
    35a0:	adc080e7          	jalr	-1316(ra) # 7078 <exit>
    35a4:	fe442783          	lw	a5,-28(s0)
    35a8:	853e                	mv	a0,a5
    35aa:	00004097          	auipc	ra,0x4
    35ae:	af6080e7          	jalr	-1290(ra) # 70a0 <close>
    35b2:	fe042783          	lw	a5,-32(s0)
    35b6:	2781                	sext.w	a5,a5
    35b8:	e791                	bnez	a5,35c4 <concreate+0x118>
    35ba:	4501                	li	a0,0
    35bc:	00004097          	auipc	ra,0x4
    35c0:	abc080e7          	jalr	-1348(ra) # 7078 <exit>
    35c4:	f9c40793          	addi	a5,s0,-100
    35c8:	853e                	mv	a0,a5
    35ca:	00004097          	auipc	ra,0x4
    35ce:	ab6080e7          	jalr	-1354(ra) # 7080 <wait>
    35d2:	f9c42783          	lw	a5,-100(s0)
    35d6:	c791                	beqz	a5,35e2 <concreate+0x136>
    35d8:	4505                	li	a0,1
    35da:	00004097          	auipc	ra,0x4
    35de:	a9e080e7          	jalr	-1378(ra) # 7078 <exit>
    35e2:	fec42783          	lw	a5,-20(s0)
    35e6:	2785                	addiw	a5,a5,1
    35e8:	fef42623          	sw	a5,-20(s0)
    35ec:	fec42783          	lw	a5,-20(s0)
    35f0:	0007871b          	sext.w	a4,a5
    35f4:	02700793          	li	a5,39
    35f8:	ece7d9e3          	bge	a5,a4,34ca <concreate+0x1e>
    35fc:	fb040793          	addi	a5,s0,-80
    3600:	02800613          	li	a2,40
    3604:	4581                	li	a1,0
    3606:	853e                	mv	a0,a5
    3608:	00003097          	auipc	ra,0x3
    360c:	6c6080e7          	jalr	1734(ra) # 6cce <memset>
    3610:	4581                	li	a1,0
    3612:	00005517          	auipc	a0,0x5
    3616:	3be50513          	addi	a0,a0,958 # 89d0 <longjmp_1+0x1088>
    361a:	00004097          	auipc	ra,0x4
    361e:	a9e080e7          	jalr	-1378(ra) # 70b8 <open>
    3622:	87aa                	mv	a5,a0
    3624:	fef42223          	sw	a5,-28(s0)
    3628:	fe042423          	sw	zero,-24(s0)
    362c:	a86d                	j	36e6 <concreate+0x23a>
    362e:	fa045783          	lhu	a5,-96(s0)
    3632:	e391                	bnez	a5,3636 <concreate+0x18a>
    3634:	a84d                	j	36e6 <concreate+0x23a>
    3636:	fa244783          	lbu	a5,-94(s0)
    363a:	873e                	mv	a4,a5
    363c:	04300793          	li	a5,67
    3640:	0af71363          	bne	a4,a5,36e6 <concreate+0x23a>
    3644:	fa444783          	lbu	a5,-92(s0)
    3648:	efd9                	bnez	a5,36e6 <concreate+0x23a>
    364a:	fa344783          	lbu	a5,-93(s0)
    364e:	2781                	sext.w	a5,a5
    3650:	fd07879b          	addiw	a5,a5,-48
    3654:	fef42623          	sw	a5,-20(s0)
    3658:	fec42783          	lw	a5,-20(s0)
    365c:	2781                	sext.w	a5,a5
    365e:	0007c963          	bltz	a5,3670 <concreate+0x1c4>
    3662:	fec42783          	lw	a5,-20(s0)
    3666:	873e                	mv	a4,a5
    3668:	02700793          	li	a5,39
    366c:	02e7f563          	bgeu	a5,a4,3696 <concreate+0x1ea>
    3670:	fa040793          	addi	a5,s0,-96
    3674:	0789                	addi	a5,a5,2
    3676:	863e                	mv	a2,a5
    3678:	f8843583          	ld	a1,-120(s0)
    367c:	00005517          	auipc	a0,0x5
    3680:	3a450513          	addi	a0,a0,932 # 8a20 <longjmp_1+0x10d8>
    3684:	00004097          	auipc	ra,0x4
    3688:	f22080e7          	jalr	-222(ra) # 75a6 <printf>
    368c:	4505                	li	a0,1
    368e:	00004097          	auipc	ra,0x4
    3692:	9ea080e7          	jalr	-1558(ra) # 7078 <exit>
    3696:	fec42783          	lw	a5,-20(s0)
    369a:	ff040713          	addi	a4,s0,-16
    369e:	97ba                	add	a5,a5,a4
    36a0:	fc07c783          	lbu	a5,-64(a5)
    36a4:	c785                	beqz	a5,36cc <concreate+0x220>
    36a6:	fa040793          	addi	a5,s0,-96
    36aa:	0789                	addi	a5,a5,2
    36ac:	863e                	mv	a2,a5
    36ae:	f8843583          	ld	a1,-120(s0)
    36b2:	00005517          	auipc	a0,0x5
    36b6:	38e50513          	addi	a0,a0,910 # 8a40 <longjmp_1+0x10f8>
    36ba:	00004097          	auipc	ra,0x4
    36be:	eec080e7          	jalr	-276(ra) # 75a6 <printf>
    36c2:	4505                	li	a0,1
    36c4:	00004097          	auipc	ra,0x4
    36c8:	9b4080e7          	jalr	-1612(ra) # 7078 <exit>
    36cc:	fec42783          	lw	a5,-20(s0)
    36d0:	ff040713          	addi	a4,s0,-16
    36d4:	97ba                	add	a5,a5,a4
    36d6:	4705                	li	a4,1
    36d8:	fce78023          	sb	a4,-64(a5)
    36dc:	fe842783          	lw	a5,-24(s0)
    36e0:	2785                	addiw	a5,a5,1
    36e2:	fef42423          	sw	a5,-24(s0)
    36e6:	fa040713          	addi	a4,s0,-96
    36ea:	fe442783          	lw	a5,-28(s0)
    36ee:	4641                	li	a2,16
    36f0:	85ba                	mv	a1,a4
    36f2:	853e                	mv	a0,a5
    36f4:	00004097          	auipc	ra,0x4
    36f8:	99c080e7          	jalr	-1636(ra) # 7090 <read>
    36fc:	87aa                	mv	a5,a0
    36fe:	f2f048e3          	bgtz	a5,362e <concreate+0x182>
    3702:	fe442783          	lw	a5,-28(s0)
    3706:	853e                	mv	a0,a5
    3708:	00004097          	auipc	ra,0x4
    370c:	998080e7          	jalr	-1640(ra) # 70a0 <close>
    3710:	fe842783          	lw	a5,-24(s0)
    3714:	0007871b          	sext.w	a4,a5
    3718:	02800793          	li	a5,40
    371c:	02f70163          	beq	a4,a5,373e <concreate+0x292>
    3720:	f8843583          	ld	a1,-120(s0)
    3724:	00005517          	auipc	a0,0x5
    3728:	34450513          	addi	a0,a0,836 # 8a68 <longjmp_1+0x1120>
    372c:	00004097          	auipc	ra,0x4
    3730:	e7a080e7          	jalr	-390(ra) # 75a6 <printf>
    3734:	4505                	li	a0,1
    3736:	00004097          	auipc	ra,0x4
    373a:	942080e7          	jalr	-1726(ra) # 7078 <exit>
    373e:	fe042623          	sw	zero,-20(s0)
    3742:	a24d                	j	38e4 <concreate+0x438>
    3744:	fec42783          	lw	a5,-20(s0)
    3748:	0ff7f793          	andi	a5,a5,255
    374c:	0307879b          	addiw	a5,a5,48
    3750:	0ff7f793          	andi	a5,a5,255
    3754:	fcf40ca3          	sb	a5,-39(s0)
    3758:	00004097          	auipc	ra,0x4
    375c:	918080e7          	jalr	-1768(ra) # 7070 <fork>
    3760:	87aa                	mv	a5,a0
    3762:	fef42023          	sw	a5,-32(s0)
    3766:	fe042783          	lw	a5,-32(s0)
    376a:	2781                	sext.w	a5,a5
    376c:	0207d163          	bgez	a5,378e <concreate+0x2e2>
    3770:	f8843583          	ld	a1,-120(s0)
    3774:	00005517          	auipc	a0,0x5
    3778:	93450513          	addi	a0,a0,-1740 # 80a8 <longjmp_1+0x760>
    377c:	00004097          	auipc	ra,0x4
    3780:	e2a080e7          	jalr	-470(ra) # 75a6 <printf>
    3784:	4505                	li	a0,1
    3786:	00004097          	auipc	ra,0x4
    378a:	8f2080e7          	jalr	-1806(ra) # 7078 <exit>
    378e:	fec42703          	lw	a4,-20(s0)
    3792:	478d                	li	a5,3
    3794:	02f767bb          	remw	a5,a4,a5
    3798:	2781                	sext.w	a5,a5
    379a:	e789                	bnez	a5,37a4 <concreate+0x2f8>
    379c:	fe042783          	lw	a5,-32(s0)
    37a0:	2781                	sext.w	a5,a5
    37a2:	cf99                	beqz	a5,37c0 <concreate+0x314>
    37a4:	fec42703          	lw	a4,-20(s0)
    37a8:	478d                	li	a5,3
    37aa:	02f767bb          	remw	a5,a4,a5
    37ae:	2781                	sext.w	a5,a5
    37b0:	873e                	mv	a4,a5
    37b2:	4785                	li	a5,1
    37b4:	0af71b63          	bne	a4,a5,386a <concreate+0x3be>
    37b8:	fe042783          	lw	a5,-32(s0)
    37bc:	2781                	sext.w	a5,a5
    37be:	c7d5                	beqz	a5,386a <concreate+0x3be>
    37c0:	fd840793          	addi	a5,s0,-40
    37c4:	4581                	li	a1,0
    37c6:	853e                	mv	a0,a5
    37c8:	00004097          	auipc	ra,0x4
    37cc:	8f0080e7          	jalr	-1808(ra) # 70b8 <open>
    37d0:	87aa                	mv	a5,a0
    37d2:	853e                	mv	a0,a5
    37d4:	00004097          	auipc	ra,0x4
    37d8:	8cc080e7          	jalr	-1844(ra) # 70a0 <close>
    37dc:	fd840793          	addi	a5,s0,-40
    37e0:	4581                	li	a1,0
    37e2:	853e                	mv	a0,a5
    37e4:	00004097          	auipc	ra,0x4
    37e8:	8d4080e7          	jalr	-1836(ra) # 70b8 <open>
    37ec:	87aa                	mv	a5,a0
    37ee:	853e                	mv	a0,a5
    37f0:	00004097          	auipc	ra,0x4
    37f4:	8b0080e7          	jalr	-1872(ra) # 70a0 <close>
    37f8:	fd840793          	addi	a5,s0,-40
    37fc:	4581                	li	a1,0
    37fe:	853e                	mv	a0,a5
    3800:	00004097          	auipc	ra,0x4
    3804:	8b8080e7          	jalr	-1864(ra) # 70b8 <open>
    3808:	87aa                	mv	a5,a0
    380a:	853e                	mv	a0,a5
    380c:	00004097          	auipc	ra,0x4
    3810:	894080e7          	jalr	-1900(ra) # 70a0 <close>
    3814:	fd840793          	addi	a5,s0,-40
    3818:	4581                	li	a1,0
    381a:	853e                	mv	a0,a5
    381c:	00004097          	auipc	ra,0x4
    3820:	89c080e7          	jalr	-1892(ra) # 70b8 <open>
    3824:	87aa                	mv	a5,a0
    3826:	853e                	mv	a0,a5
    3828:	00004097          	auipc	ra,0x4
    382c:	878080e7          	jalr	-1928(ra) # 70a0 <close>
    3830:	fd840793          	addi	a5,s0,-40
    3834:	4581                	li	a1,0
    3836:	853e                	mv	a0,a5
    3838:	00004097          	auipc	ra,0x4
    383c:	880080e7          	jalr	-1920(ra) # 70b8 <open>
    3840:	87aa                	mv	a5,a0
    3842:	853e                	mv	a0,a5
    3844:	00004097          	auipc	ra,0x4
    3848:	85c080e7          	jalr	-1956(ra) # 70a0 <close>
    384c:	fd840793          	addi	a5,s0,-40
    3850:	4581                	li	a1,0
    3852:	853e                	mv	a0,a5
    3854:	00004097          	auipc	ra,0x4
    3858:	864080e7          	jalr	-1948(ra) # 70b8 <open>
    385c:	87aa                	mv	a5,a0
    385e:	853e                	mv	a0,a5
    3860:	00004097          	auipc	ra,0x4
    3864:	840080e7          	jalr	-1984(ra) # 70a0 <close>
    3868:	a899                	j	38be <concreate+0x412>
    386a:	fd840793          	addi	a5,s0,-40
    386e:	853e                	mv	a0,a5
    3870:	00004097          	auipc	ra,0x4
    3874:	858080e7          	jalr	-1960(ra) # 70c8 <unlink>
    3878:	fd840793          	addi	a5,s0,-40
    387c:	853e                	mv	a0,a5
    387e:	00004097          	auipc	ra,0x4
    3882:	84a080e7          	jalr	-1974(ra) # 70c8 <unlink>
    3886:	fd840793          	addi	a5,s0,-40
    388a:	853e                	mv	a0,a5
    388c:	00004097          	auipc	ra,0x4
    3890:	83c080e7          	jalr	-1988(ra) # 70c8 <unlink>
    3894:	fd840793          	addi	a5,s0,-40
    3898:	853e                	mv	a0,a5
    389a:	00004097          	auipc	ra,0x4
    389e:	82e080e7          	jalr	-2002(ra) # 70c8 <unlink>
    38a2:	fd840793          	addi	a5,s0,-40
    38a6:	853e                	mv	a0,a5
    38a8:	00004097          	auipc	ra,0x4
    38ac:	820080e7          	jalr	-2016(ra) # 70c8 <unlink>
    38b0:	fd840793          	addi	a5,s0,-40
    38b4:	853e                	mv	a0,a5
    38b6:	00004097          	auipc	ra,0x4
    38ba:	812080e7          	jalr	-2030(ra) # 70c8 <unlink>
    38be:	fe042783          	lw	a5,-32(s0)
    38c2:	2781                	sext.w	a5,a5
    38c4:	e791                	bnez	a5,38d0 <concreate+0x424>
    38c6:	4501                	li	a0,0
    38c8:	00003097          	auipc	ra,0x3
    38cc:	7b0080e7          	jalr	1968(ra) # 7078 <exit>
    38d0:	4501                	li	a0,0
    38d2:	00003097          	auipc	ra,0x3
    38d6:	7ae080e7          	jalr	1966(ra) # 7080 <wait>
    38da:	fec42783          	lw	a5,-20(s0)
    38de:	2785                	addiw	a5,a5,1
    38e0:	fef42623          	sw	a5,-20(s0)
    38e4:	fec42783          	lw	a5,-20(s0)
    38e8:	0007871b          	sext.w	a4,a5
    38ec:	02700793          	li	a5,39
    38f0:	e4e7dae3          	bge	a5,a4,3744 <concreate+0x298>
    38f4:	0001                	nop
    38f6:	0001                	nop
    38f8:	70e6                	ld	ra,120(sp)
    38fa:	7446                	ld	s0,112(sp)
    38fc:	6109                	addi	sp,sp,128
    38fe:	8082                	ret

0000000000003900 <linkunlink>:
    3900:	7179                	addi	sp,sp,-48
    3902:	f406                	sd	ra,40(sp)
    3904:	f022                	sd	s0,32(sp)
    3906:	1800                	addi	s0,sp,48
    3908:	fca43c23          	sd	a0,-40(s0)
    390c:	00004517          	auipc	a0,0x4
    3910:	47450513          	addi	a0,a0,1140 # 7d80 <longjmp_1+0x438>
    3914:	00003097          	auipc	ra,0x3
    3918:	7b4080e7          	jalr	1972(ra) # 70c8 <unlink>
    391c:	00003097          	auipc	ra,0x3
    3920:	754080e7          	jalr	1876(ra) # 7070 <fork>
    3924:	87aa                	mv	a5,a0
    3926:	fef42223          	sw	a5,-28(s0)
    392a:	fe442783          	lw	a5,-28(s0)
    392e:	2781                	sext.w	a5,a5
    3930:	0207d163          	bgez	a5,3952 <linkunlink+0x52>
    3934:	fd843583          	ld	a1,-40(s0)
    3938:	00004517          	auipc	a0,0x4
    393c:	77050513          	addi	a0,a0,1904 # 80a8 <longjmp_1+0x760>
    3940:	00004097          	auipc	ra,0x4
    3944:	c66080e7          	jalr	-922(ra) # 75a6 <printf>
    3948:	4505                	li	a0,1
    394a:	00003097          	auipc	ra,0x3
    394e:	72e080e7          	jalr	1838(ra) # 7078 <exit>
    3952:	fe442783          	lw	a5,-28(s0)
    3956:	2781                	sext.w	a5,a5
    3958:	c399                	beqz	a5,395e <linkunlink+0x5e>
    395a:	4785                	li	a5,1
    395c:	a019                	j	3962 <linkunlink+0x62>
    395e:	06100793          	li	a5,97
    3962:	fef42423          	sw	a5,-24(s0)
    3966:	fe042623          	sw	zero,-20(s0)
    396a:	a869                	j	3a04 <linkunlink+0x104>
    396c:	fe842703          	lw	a4,-24(s0)
    3970:	41c657b7          	lui	a5,0x41c65
    3974:	e6d7879b          	addiw	a5,a5,-403
    3978:	02f707bb          	mulw	a5,a4,a5
    397c:	0007871b          	sext.w	a4,a5
    3980:	678d                	lui	a5,0x3
    3982:	0397879b          	addiw	a5,a5,57
    3986:	9fb9                	addw	a5,a5,a4
    3988:	fef42423          	sw	a5,-24(s0)
    398c:	fe842703          	lw	a4,-24(s0)
    3990:	478d                	li	a5,3
    3992:	02f777bb          	remuw	a5,a4,a5
    3996:	2781                	sext.w	a5,a5
    3998:	e395                	bnez	a5,39bc <linkunlink+0xbc>
    399a:	20200593          	li	a1,514
    399e:	00004517          	auipc	a0,0x4
    39a2:	3e250513          	addi	a0,a0,994 # 7d80 <longjmp_1+0x438>
    39a6:	00003097          	auipc	ra,0x3
    39aa:	712080e7          	jalr	1810(ra) # 70b8 <open>
    39ae:	87aa                	mv	a5,a0
    39b0:	853e                	mv	a0,a5
    39b2:	00003097          	auipc	ra,0x3
    39b6:	6ee080e7          	jalr	1774(ra) # 70a0 <close>
    39ba:	a081                	j	39fa <linkunlink+0xfa>
    39bc:	fe842703          	lw	a4,-24(s0)
    39c0:	478d                	li	a5,3
    39c2:	02f777bb          	remuw	a5,a4,a5
    39c6:	2781                	sext.w	a5,a5
    39c8:	873e                	mv	a4,a5
    39ca:	4785                	li	a5,1
    39cc:	00f71f63          	bne	a4,a5,39ea <linkunlink+0xea>
    39d0:	00004597          	auipc	a1,0x4
    39d4:	3b058593          	addi	a1,a1,944 # 7d80 <longjmp_1+0x438>
    39d8:	00005517          	auipc	a0,0x5
    39dc:	0c850513          	addi	a0,a0,200 # 8aa0 <longjmp_1+0x1158>
    39e0:	00003097          	auipc	ra,0x3
    39e4:	6f8080e7          	jalr	1784(ra) # 70d8 <link>
    39e8:	a809                	j	39fa <linkunlink+0xfa>
    39ea:	00004517          	auipc	a0,0x4
    39ee:	39650513          	addi	a0,a0,918 # 7d80 <longjmp_1+0x438>
    39f2:	00003097          	auipc	ra,0x3
    39f6:	6d6080e7          	jalr	1750(ra) # 70c8 <unlink>
    39fa:	fec42783          	lw	a5,-20(s0)
    39fe:	2785                	addiw	a5,a5,1
    3a00:	fef42623          	sw	a5,-20(s0)
    3a04:	fec42783          	lw	a5,-20(s0)
    3a08:	0007871b          	sext.w	a4,a5
    3a0c:	06300793          	li	a5,99
    3a10:	f4e7dee3          	bge	a5,a4,396c <linkunlink+0x6c>
    3a14:	fe442783          	lw	a5,-28(s0)
    3a18:	2781                	sext.w	a5,a5
    3a1a:	c799                	beqz	a5,3a28 <linkunlink+0x128>
    3a1c:	4501                	li	a0,0
    3a1e:	00003097          	auipc	ra,0x3
    3a22:	662080e7          	jalr	1634(ra) # 7080 <wait>
    3a26:	a031                	j	3a32 <linkunlink+0x132>
    3a28:	4501                	li	a0,0
    3a2a:	00003097          	auipc	ra,0x3
    3a2e:	64e080e7          	jalr	1614(ra) # 7078 <exit>
    3a32:	70a2                	ld	ra,40(sp)
    3a34:	7402                	ld	s0,32(sp)
    3a36:	6145                	addi	sp,sp,48
    3a38:	8082                	ret

0000000000003a3a <bigdir>:
    3a3a:	7139                	addi	sp,sp,-64
    3a3c:	fc06                	sd	ra,56(sp)
    3a3e:	f822                	sd	s0,48(sp)
    3a40:	0080                	addi	s0,sp,64
    3a42:	fca43423          	sd	a0,-56(s0)
    3a46:	00005517          	auipc	a0,0x5
    3a4a:	06250513          	addi	a0,a0,98 # 8aa8 <longjmp_1+0x1160>
    3a4e:	00003097          	auipc	ra,0x3
    3a52:	67a080e7          	jalr	1658(ra) # 70c8 <unlink>
    3a56:	20000593          	li	a1,512
    3a5a:	00005517          	auipc	a0,0x5
    3a5e:	04e50513          	addi	a0,a0,78 # 8aa8 <longjmp_1+0x1160>
    3a62:	00003097          	auipc	ra,0x3
    3a66:	656080e7          	jalr	1622(ra) # 70b8 <open>
    3a6a:	87aa                	mv	a5,a0
    3a6c:	fef42423          	sw	a5,-24(s0)
    3a70:	fe842783          	lw	a5,-24(s0)
    3a74:	2781                	sext.w	a5,a5
    3a76:	0207d163          	bgez	a5,3a98 <bigdir+0x5e>
    3a7a:	fc843583          	ld	a1,-56(s0)
    3a7e:	00005517          	auipc	a0,0x5
    3a82:	03250513          	addi	a0,a0,50 # 8ab0 <longjmp_1+0x1168>
    3a86:	00004097          	auipc	ra,0x4
    3a8a:	b20080e7          	jalr	-1248(ra) # 75a6 <printf>
    3a8e:	4505                	li	a0,1
    3a90:	00003097          	auipc	ra,0x3
    3a94:	5e8080e7          	jalr	1512(ra) # 7078 <exit>
    3a98:	fe842783          	lw	a5,-24(s0)
    3a9c:	853e                	mv	a0,a5
    3a9e:	00003097          	auipc	ra,0x3
    3aa2:	602080e7          	jalr	1538(ra) # 70a0 <close>
    3aa6:	fe042623          	sw	zero,-20(s0)
    3aaa:	a04d                	j	3b4c <bigdir+0x112>
    3aac:	07800793          	li	a5,120
    3ab0:	fcf40c23          	sb	a5,-40(s0)
    3ab4:	fec42783          	lw	a5,-20(s0)
    3ab8:	41f7d71b          	sraiw	a4,a5,0x1f
    3abc:	01a7571b          	srliw	a4,a4,0x1a
    3ac0:	9fb9                	addw	a5,a5,a4
    3ac2:	4067d79b          	sraiw	a5,a5,0x6
    3ac6:	2781                	sext.w	a5,a5
    3ac8:	0ff7f793          	andi	a5,a5,255
    3acc:	0307879b          	addiw	a5,a5,48
    3ad0:	0ff7f793          	andi	a5,a5,255
    3ad4:	fcf40ca3          	sb	a5,-39(s0)
    3ad8:	fec42703          	lw	a4,-20(s0)
    3adc:	41f7579b          	sraiw	a5,a4,0x1f
    3ae0:	01a7d79b          	srliw	a5,a5,0x1a
    3ae4:	9f3d                	addw	a4,a4,a5
    3ae6:	03f77713          	andi	a4,a4,63
    3aea:	40f707bb          	subw	a5,a4,a5
    3aee:	2781                	sext.w	a5,a5
    3af0:	0ff7f793          	andi	a5,a5,255
    3af4:	0307879b          	addiw	a5,a5,48
    3af8:	0ff7f793          	andi	a5,a5,255
    3afc:	fcf40d23          	sb	a5,-38(s0)
    3b00:	fc040da3          	sb	zero,-37(s0)
    3b04:	fd840793          	addi	a5,s0,-40
    3b08:	85be                	mv	a1,a5
    3b0a:	00005517          	auipc	a0,0x5
    3b0e:	f9e50513          	addi	a0,a0,-98 # 8aa8 <longjmp_1+0x1160>
    3b12:	00003097          	auipc	ra,0x3
    3b16:	5c6080e7          	jalr	1478(ra) # 70d8 <link>
    3b1a:	87aa                	mv	a5,a0
    3b1c:	c39d                	beqz	a5,3b42 <bigdir+0x108>
    3b1e:	fd840793          	addi	a5,s0,-40
    3b22:	863e                	mv	a2,a5
    3b24:	fc843583          	ld	a1,-56(s0)
    3b28:	00005517          	auipc	a0,0x5
    3b2c:	fa850513          	addi	a0,a0,-88 # 8ad0 <longjmp_1+0x1188>
    3b30:	00004097          	auipc	ra,0x4
    3b34:	a76080e7          	jalr	-1418(ra) # 75a6 <printf>
    3b38:	4505                	li	a0,1
    3b3a:	00003097          	auipc	ra,0x3
    3b3e:	53e080e7          	jalr	1342(ra) # 7078 <exit>
    3b42:	fec42783          	lw	a5,-20(s0)
    3b46:	2785                	addiw	a5,a5,1
    3b48:	fef42623          	sw	a5,-20(s0)
    3b4c:	fec42783          	lw	a5,-20(s0)
    3b50:	0007871b          	sext.w	a4,a5
    3b54:	1f300793          	li	a5,499
    3b58:	f4e7dae3          	bge	a5,a4,3aac <bigdir+0x72>
    3b5c:	00005517          	auipc	a0,0x5
    3b60:	f4c50513          	addi	a0,a0,-180 # 8aa8 <longjmp_1+0x1160>
    3b64:	00003097          	auipc	ra,0x3
    3b68:	564080e7          	jalr	1380(ra) # 70c8 <unlink>
    3b6c:	fe042623          	sw	zero,-20(s0)
    3b70:	a851                	j	3c04 <bigdir+0x1ca>
    3b72:	07800793          	li	a5,120
    3b76:	fcf40c23          	sb	a5,-40(s0)
    3b7a:	fec42783          	lw	a5,-20(s0)
    3b7e:	41f7d71b          	sraiw	a4,a5,0x1f
    3b82:	01a7571b          	srliw	a4,a4,0x1a
    3b86:	9fb9                	addw	a5,a5,a4
    3b88:	4067d79b          	sraiw	a5,a5,0x6
    3b8c:	2781                	sext.w	a5,a5
    3b8e:	0ff7f793          	andi	a5,a5,255
    3b92:	0307879b          	addiw	a5,a5,48
    3b96:	0ff7f793          	andi	a5,a5,255
    3b9a:	fcf40ca3          	sb	a5,-39(s0)
    3b9e:	fec42703          	lw	a4,-20(s0)
    3ba2:	41f7579b          	sraiw	a5,a4,0x1f
    3ba6:	01a7d79b          	srliw	a5,a5,0x1a
    3baa:	9f3d                	addw	a4,a4,a5
    3bac:	03f77713          	andi	a4,a4,63
    3bb0:	40f707bb          	subw	a5,a4,a5
    3bb4:	2781                	sext.w	a5,a5
    3bb6:	0ff7f793          	andi	a5,a5,255
    3bba:	0307879b          	addiw	a5,a5,48
    3bbe:	0ff7f793          	andi	a5,a5,255
    3bc2:	fcf40d23          	sb	a5,-38(s0)
    3bc6:	fc040da3          	sb	zero,-37(s0)
    3bca:	fd840793          	addi	a5,s0,-40
    3bce:	853e                	mv	a0,a5
    3bd0:	00003097          	auipc	ra,0x3
    3bd4:	4f8080e7          	jalr	1272(ra) # 70c8 <unlink>
    3bd8:	87aa                	mv	a5,a0
    3bda:	c385                	beqz	a5,3bfa <bigdir+0x1c0>
    3bdc:	fc843583          	ld	a1,-56(s0)
    3be0:	00005517          	auipc	a0,0x5
    3be4:	f1050513          	addi	a0,a0,-240 # 8af0 <longjmp_1+0x11a8>
    3be8:	00004097          	auipc	ra,0x4
    3bec:	9be080e7          	jalr	-1602(ra) # 75a6 <printf>
    3bf0:	4505                	li	a0,1
    3bf2:	00003097          	auipc	ra,0x3
    3bf6:	486080e7          	jalr	1158(ra) # 7078 <exit>
    3bfa:	fec42783          	lw	a5,-20(s0)
    3bfe:	2785                	addiw	a5,a5,1
    3c00:	fef42623          	sw	a5,-20(s0)
    3c04:	fec42783          	lw	a5,-20(s0)
    3c08:	0007871b          	sext.w	a4,a5
    3c0c:	1f300793          	li	a5,499
    3c10:	f6e7d1e3          	bge	a5,a4,3b72 <bigdir+0x138>
    3c14:	0001                	nop
    3c16:	0001                	nop
    3c18:	70e2                	ld	ra,56(sp)
    3c1a:	7442                	ld	s0,48(sp)
    3c1c:	6121                	addi	sp,sp,64
    3c1e:	8082                	ret

0000000000003c20 <subdir>:
    3c20:	7179                	addi	sp,sp,-48
    3c22:	f406                	sd	ra,40(sp)
    3c24:	f022                	sd	s0,32(sp)
    3c26:	1800                	addi	s0,sp,48
    3c28:	fca43c23          	sd	a0,-40(s0)
    3c2c:	00005517          	auipc	a0,0x5
    3c30:	ee450513          	addi	a0,a0,-284 # 8b10 <longjmp_1+0x11c8>
    3c34:	00003097          	auipc	ra,0x3
    3c38:	494080e7          	jalr	1172(ra) # 70c8 <unlink>
    3c3c:	00005517          	auipc	a0,0x5
    3c40:	edc50513          	addi	a0,a0,-292 # 8b18 <longjmp_1+0x11d0>
    3c44:	00003097          	auipc	ra,0x3
    3c48:	49c080e7          	jalr	1180(ra) # 70e0 <mkdir>
    3c4c:	87aa                	mv	a5,a0
    3c4e:	c385                	beqz	a5,3c6e <subdir+0x4e>
    3c50:	fd843583          	ld	a1,-40(s0)
    3c54:	00005517          	auipc	a0,0x5
    3c58:	ecc50513          	addi	a0,a0,-308 # 8b20 <longjmp_1+0x11d8>
    3c5c:	00004097          	auipc	ra,0x4
    3c60:	94a080e7          	jalr	-1718(ra) # 75a6 <printf>
    3c64:	4505                	li	a0,1
    3c66:	00003097          	auipc	ra,0x3
    3c6a:	412080e7          	jalr	1042(ra) # 7078 <exit>
    3c6e:	20200593          	li	a1,514
    3c72:	00005517          	auipc	a0,0x5
    3c76:	ec650513          	addi	a0,a0,-314 # 8b38 <longjmp_1+0x11f0>
    3c7a:	00003097          	auipc	ra,0x3
    3c7e:	43e080e7          	jalr	1086(ra) # 70b8 <open>
    3c82:	87aa                	mv	a5,a0
    3c84:	fef42623          	sw	a5,-20(s0)
    3c88:	fec42783          	lw	a5,-20(s0)
    3c8c:	2781                	sext.w	a5,a5
    3c8e:	0207d163          	bgez	a5,3cb0 <subdir+0x90>
    3c92:	fd843583          	ld	a1,-40(s0)
    3c96:	00005517          	auipc	a0,0x5
    3c9a:	eaa50513          	addi	a0,a0,-342 # 8b40 <longjmp_1+0x11f8>
    3c9e:	00004097          	auipc	ra,0x4
    3ca2:	908080e7          	jalr	-1784(ra) # 75a6 <printf>
    3ca6:	4505                	li	a0,1
    3ca8:	00003097          	auipc	ra,0x3
    3cac:	3d0080e7          	jalr	976(ra) # 7078 <exit>
    3cb0:	fec42783          	lw	a5,-20(s0)
    3cb4:	4609                	li	a2,2
    3cb6:	00005597          	auipc	a1,0x5
    3cba:	e5a58593          	addi	a1,a1,-422 # 8b10 <longjmp_1+0x11c8>
    3cbe:	853e                	mv	a0,a5
    3cc0:	00003097          	auipc	ra,0x3
    3cc4:	3d8080e7          	jalr	984(ra) # 7098 <write>
    3cc8:	fec42783          	lw	a5,-20(s0)
    3ccc:	853e                	mv	a0,a5
    3cce:	00003097          	auipc	ra,0x3
    3cd2:	3d2080e7          	jalr	978(ra) # 70a0 <close>
    3cd6:	00005517          	auipc	a0,0x5
    3cda:	e4250513          	addi	a0,a0,-446 # 8b18 <longjmp_1+0x11d0>
    3cde:	00003097          	auipc	ra,0x3
    3ce2:	3ea080e7          	jalr	1002(ra) # 70c8 <unlink>
    3ce6:	87aa                	mv	a5,a0
    3ce8:	0207c163          	bltz	a5,3d0a <subdir+0xea>
    3cec:	fd843583          	ld	a1,-40(s0)
    3cf0:	00005517          	auipc	a0,0x5
    3cf4:	e7050513          	addi	a0,a0,-400 # 8b60 <longjmp_1+0x1218>
    3cf8:	00004097          	auipc	ra,0x4
    3cfc:	8ae080e7          	jalr	-1874(ra) # 75a6 <printf>
    3d00:	4505                	li	a0,1
    3d02:	00003097          	auipc	ra,0x3
    3d06:	376080e7          	jalr	886(ra) # 7078 <exit>
    3d0a:	00005517          	auipc	a0,0x5
    3d0e:	e8650513          	addi	a0,a0,-378 # 8b90 <longjmp_1+0x1248>
    3d12:	00003097          	auipc	ra,0x3
    3d16:	3ce080e7          	jalr	974(ra) # 70e0 <mkdir>
    3d1a:	87aa                	mv	a5,a0
    3d1c:	c385                	beqz	a5,3d3c <subdir+0x11c>
    3d1e:	fd843583          	ld	a1,-40(s0)
    3d22:	00005517          	auipc	a0,0x5
    3d26:	e7650513          	addi	a0,a0,-394 # 8b98 <longjmp_1+0x1250>
    3d2a:	00004097          	auipc	ra,0x4
    3d2e:	87c080e7          	jalr	-1924(ra) # 75a6 <printf>
    3d32:	4505                	li	a0,1
    3d34:	00003097          	auipc	ra,0x3
    3d38:	344080e7          	jalr	836(ra) # 7078 <exit>
    3d3c:	20200593          	li	a1,514
    3d40:	00005517          	auipc	a0,0x5
    3d44:	e7850513          	addi	a0,a0,-392 # 8bb8 <longjmp_1+0x1270>
    3d48:	00003097          	auipc	ra,0x3
    3d4c:	370080e7          	jalr	880(ra) # 70b8 <open>
    3d50:	87aa                	mv	a5,a0
    3d52:	fef42623          	sw	a5,-20(s0)
    3d56:	fec42783          	lw	a5,-20(s0)
    3d5a:	2781                	sext.w	a5,a5
    3d5c:	0207d163          	bgez	a5,3d7e <subdir+0x15e>
    3d60:	fd843583          	ld	a1,-40(s0)
    3d64:	00005517          	auipc	a0,0x5
    3d68:	e6450513          	addi	a0,a0,-412 # 8bc8 <longjmp_1+0x1280>
    3d6c:	00004097          	auipc	ra,0x4
    3d70:	83a080e7          	jalr	-1990(ra) # 75a6 <printf>
    3d74:	4505                	li	a0,1
    3d76:	00003097          	auipc	ra,0x3
    3d7a:	302080e7          	jalr	770(ra) # 7078 <exit>
    3d7e:	fec42783          	lw	a5,-20(s0)
    3d82:	4609                	li	a2,2
    3d84:	00005597          	auipc	a1,0x5
    3d88:	e6458593          	addi	a1,a1,-412 # 8be8 <longjmp_1+0x12a0>
    3d8c:	853e                	mv	a0,a5
    3d8e:	00003097          	auipc	ra,0x3
    3d92:	30a080e7          	jalr	778(ra) # 7098 <write>
    3d96:	fec42783          	lw	a5,-20(s0)
    3d9a:	853e                	mv	a0,a5
    3d9c:	00003097          	auipc	ra,0x3
    3da0:	304080e7          	jalr	772(ra) # 70a0 <close>
    3da4:	4581                	li	a1,0
    3da6:	00005517          	auipc	a0,0x5
    3daa:	e4a50513          	addi	a0,a0,-438 # 8bf0 <longjmp_1+0x12a8>
    3dae:	00003097          	auipc	ra,0x3
    3db2:	30a080e7          	jalr	778(ra) # 70b8 <open>
    3db6:	87aa                	mv	a5,a0
    3db8:	fef42623          	sw	a5,-20(s0)
    3dbc:	fec42783          	lw	a5,-20(s0)
    3dc0:	2781                	sext.w	a5,a5
    3dc2:	0207d163          	bgez	a5,3de4 <subdir+0x1c4>
    3dc6:	fd843583          	ld	a1,-40(s0)
    3dca:	00005517          	auipc	a0,0x5
    3dce:	e3650513          	addi	a0,a0,-458 # 8c00 <longjmp_1+0x12b8>
    3dd2:	00003097          	auipc	ra,0x3
    3dd6:	7d4080e7          	jalr	2004(ra) # 75a6 <printf>
    3dda:	4505                	li	a0,1
    3ddc:	00003097          	auipc	ra,0x3
    3de0:	29c080e7          	jalr	668(ra) # 7078 <exit>
    3de4:	fec42783          	lw	a5,-20(s0)
    3de8:	660d                	lui	a2,0x3
    3dea:	00006597          	auipc	a1,0x6
    3dee:	30e58593          	addi	a1,a1,782 # a0f8 <buf>
    3df2:	853e                	mv	a0,a5
    3df4:	00003097          	auipc	ra,0x3
    3df8:	29c080e7          	jalr	668(ra) # 7090 <read>
    3dfc:	87aa                	mv	a5,a0
    3dfe:	fef42423          	sw	a5,-24(s0)
    3e02:	fe842783          	lw	a5,-24(s0)
    3e06:	0007871b          	sext.w	a4,a5
    3e0a:	4789                	li	a5,2
    3e0c:	00f71d63          	bne	a4,a5,3e26 <subdir+0x206>
    3e10:	00006797          	auipc	a5,0x6
    3e14:	2e878793          	addi	a5,a5,744 # a0f8 <buf>
    3e18:	0007c783          	lbu	a5,0(a5)
    3e1c:	873e                	mv	a4,a5
    3e1e:	06600793          	li	a5,102
    3e22:	02f70163          	beq	a4,a5,3e44 <subdir+0x224>
    3e26:	fd843583          	ld	a1,-40(s0)
    3e2a:	00005517          	auipc	a0,0x5
    3e2e:	df650513          	addi	a0,a0,-522 # 8c20 <longjmp_1+0x12d8>
    3e32:	00003097          	auipc	ra,0x3
    3e36:	774080e7          	jalr	1908(ra) # 75a6 <printf>
    3e3a:	4505                	li	a0,1
    3e3c:	00003097          	auipc	ra,0x3
    3e40:	23c080e7          	jalr	572(ra) # 7078 <exit>
    3e44:	fec42783          	lw	a5,-20(s0)
    3e48:	853e                	mv	a0,a5
    3e4a:	00003097          	auipc	ra,0x3
    3e4e:	256080e7          	jalr	598(ra) # 70a0 <close>
    3e52:	00005597          	auipc	a1,0x5
    3e56:	dee58593          	addi	a1,a1,-530 # 8c40 <longjmp_1+0x12f8>
    3e5a:	00005517          	auipc	a0,0x5
    3e5e:	d5e50513          	addi	a0,a0,-674 # 8bb8 <longjmp_1+0x1270>
    3e62:	00003097          	auipc	ra,0x3
    3e66:	276080e7          	jalr	630(ra) # 70d8 <link>
    3e6a:	87aa                	mv	a5,a0
    3e6c:	c385                	beqz	a5,3e8c <subdir+0x26c>
    3e6e:	fd843583          	ld	a1,-40(s0)
    3e72:	00005517          	auipc	a0,0x5
    3e76:	dde50513          	addi	a0,a0,-546 # 8c50 <longjmp_1+0x1308>
    3e7a:	00003097          	auipc	ra,0x3
    3e7e:	72c080e7          	jalr	1836(ra) # 75a6 <printf>
    3e82:	4505                	li	a0,1
    3e84:	00003097          	auipc	ra,0x3
    3e88:	1f4080e7          	jalr	500(ra) # 7078 <exit>
    3e8c:	00005517          	auipc	a0,0x5
    3e90:	d2c50513          	addi	a0,a0,-724 # 8bb8 <longjmp_1+0x1270>
    3e94:	00003097          	auipc	ra,0x3
    3e98:	234080e7          	jalr	564(ra) # 70c8 <unlink>
    3e9c:	87aa                	mv	a5,a0
    3e9e:	c385                	beqz	a5,3ebe <subdir+0x29e>
    3ea0:	fd843583          	ld	a1,-40(s0)
    3ea4:	00005517          	auipc	a0,0x5
    3ea8:	dd450513          	addi	a0,a0,-556 # 8c78 <longjmp_1+0x1330>
    3eac:	00003097          	auipc	ra,0x3
    3eb0:	6fa080e7          	jalr	1786(ra) # 75a6 <printf>
    3eb4:	4505                	li	a0,1
    3eb6:	00003097          	auipc	ra,0x3
    3eba:	1c2080e7          	jalr	450(ra) # 7078 <exit>
    3ebe:	4581                	li	a1,0
    3ec0:	00005517          	auipc	a0,0x5
    3ec4:	cf850513          	addi	a0,a0,-776 # 8bb8 <longjmp_1+0x1270>
    3ec8:	00003097          	auipc	ra,0x3
    3ecc:	1f0080e7          	jalr	496(ra) # 70b8 <open>
    3ed0:	87aa                	mv	a5,a0
    3ed2:	0207c163          	bltz	a5,3ef4 <subdir+0x2d4>
    3ed6:	fd843583          	ld	a1,-40(s0)
    3eda:	00005517          	auipc	a0,0x5
    3ede:	dbe50513          	addi	a0,a0,-578 # 8c98 <longjmp_1+0x1350>
    3ee2:	00003097          	auipc	ra,0x3
    3ee6:	6c4080e7          	jalr	1732(ra) # 75a6 <printf>
    3eea:	4505                	li	a0,1
    3eec:	00003097          	auipc	ra,0x3
    3ef0:	18c080e7          	jalr	396(ra) # 7078 <exit>
    3ef4:	00005517          	auipc	a0,0x5
    3ef8:	c2450513          	addi	a0,a0,-988 # 8b18 <longjmp_1+0x11d0>
    3efc:	00003097          	auipc	ra,0x3
    3f00:	1ec080e7          	jalr	492(ra) # 70e8 <chdir>
    3f04:	87aa                	mv	a5,a0
    3f06:	c385                	beqz	a5,3f26 <subdir+0x306>
    3f08:	fd843583          	ld	a1,-40(s0)
    3f0c:	00005517          	auipc	a0,0x5
    3f10:	db450513          	addi	a0,a0,-588 # 8cc0 <longjmp_1+0x1378>
    3f14:	00003097          	auipc	ra,0x3
    3f18:	692080e7          	jalr	1682(ra) # 75a6 <printf>
    3f1c:	4505                	li	a0,1
    3f1e:	00003097          	auipc	ra,0x3
    3f22:	15a080e7          	jalr	346(ra) # 7078 <exit>
    3f26:	00005517          	auipc	a0,0x5
    3f2a:	db250513          	addi	a0,a0,-590 # 8cd8 <longjmp_1+0x1390>
    3f2e:	00003097          	auipc	ra,0x3
    3f32:	1ba080e7          	jalr	442(ra) # 70e8 <chdir>
    3f36:	87aa                	mv	a5,a0
    3f38:	c385                	beqz	a5,3f58 <subdir+0x338>
    3f3a:	fd843583          	ld	a1,-40(s0)
    3f3e:	00005517          	auipc	a0,0x5
    3f42:	daa50513          	addi	a0,a0,-598 # 8ce8 <longjmp_1+0x13a0>
    3f46:	00003097          	auipc	ra,0x3
    3f4a:	660080e7          	jalr	1632(ra) # 75a6 <printf>
    3f4e:	4505                	li	a0,1
    3f50:	00003097          	auipc	ra,0x3
    3f54:	128080e7          	jalr	296(ra) # 7078 <exit>
    3f58:	00005517          	auipc	a0,0x5
    3f5c:	db050513          	addi	a0,a0,-592 # 8d08 <longjmp_1+0x13c0>
    3f60:	00003097          	auipc	ra,0x3
    3f64:	188080e7          	jalr	392(ra) # 70e8 <chdir>
    3f68:	87aa                	mv	a5,a0
    3f6a:	c385                	beqz	a5,3f8a <subdir+0x36a>
    3f6c:	fd843583          	ld	a1,-40(s0)
    3f70:	00005517          	auipc	a0,0x5
    3f74:	da850513          	addi	a0,a0,-600 # 8d18 <longjmp_1+0x13d0>
    3f78:	00003097          	auipc	ra,0x3
    3f7c:	62e080e7          	jalr	1582(ra) # 75a6 <printf>
    3f80:	4505                	li	a0,1
    3f82:	00003097          	auipc	ra,0x3
    3f86:	0f6080e7          	jalr	246(ra) # 7078 <exit>
    3f8a:	00005517          	auipc	a0,0x5
    3f8e:	dae50513          	addi	a0,a0,-594 # 8d38 <longjmp_1+0x13f0>
    3f92:	00003097          	auipc	ra,0x3
    3f96:	156080e7          	jalr	342(ra) # 70e8 <chdir>
    3f9a:	87aa                	mv	a5,a0
    3f9c:	c385                	beqz	a5,3fbc <subdir+0x39c>
    3f9e:	fd843583          	ld	a1,-40(s0)
    3fa2:	00005517          	auipc	a0,0x5
    3fa6:	d9e50513          	addi	a0,a0,-610 # 8d40 <longjmp_1+0x13f8>
    3faa:	00003097          	auipc	ra,0x3
    3fae:	5fc080e7          	jalr	1532(ra) # 75a6 <printf>
    3fb2:	4505                	li	a0,1
    3fb4:	00003097          	auipc	ra,0x3
    3fb8:	0c4080e7          	jalr	196(ra) # 7078 <exit>
    3fbc:	4581                	li	a1,0
    3fbe:	00005517          	auipc	a0,0x5
    3fc2:	c8250513          	addi	a0,a0,-894 # 8c40 <longjmp_1+0x12f8>
    3fc6:	00003097          	auipc	ra,0x3
    3fca:	0f2080e7          	jalr	242(ra) # 70b8 <open>
    3fce:	87aa                	mv	a5,a0
    3fd0:	fef42623          	sw	a5,-20(s0)
    3fd4:	fec42783          	lw	a5,-20(s0)
    3fd8:	2781                	sext.w	a5,a5
    3fda:	0207d163          	bgez	a5,3ffc <subdir+0x3dc>
    3fde:	fd843583          	ld	a1,-40(s0)
    3fe2:	00005517          	auipc	a0,0x5
    3fe6:	d7650513          	addi	a0,a0,-650 # 8d58 <longjmp_1+0x1410>
    3fea:	00003097          	auipc	ra,0x3
    3fee:	5bc080e7          	jalr	1468(ra) # 75a6 <printf>
    3ff2:	4505                	li	a0,1
    3ff4:	00003097          	auipc	ra,0x3
    3ff8:	084080e7          	jalr	132(ra) # 7078 <exit>
    3ffc:	fec42783          	lw	a5,-20(s0)
    4000:	660d                	lui	a2,0x3
    4002:	00006597          	auipc	a1,0x6
    4006:	0f658593          	addi	a1,a1,246 # a0f8 <buf>
    400a:	853e                	mv	a0,a5
    400c:	00003097          	auipc	ra,0x3
    4010:	084080e7          	jalr	132(ra) # 7090 <read>
    4014:	87aa                	mv	a5,a0
    4016:	873e                	mv	a4,a5
    4018:	4789                	li	a5,2
    401a:	02f70163          	beq	a4,a5,403c <subdir+0x41c>
    401e:	fd843583          	ld	a1,-40(s0)
    4022:	00005517          	auipc	a0,0x5
    4026:	d5650513          	addi	a0,a0,-682 # 8d78 <longjmp_1+0x1430>
    402a:	00003097          	auipc	ra,0x3
    402e:	57c080e7          	jalr	1404(ra) # 75a6 <printf>
    4032:	4505                	li	a0,1
    4034:	00003097          	auipc	ra,0x3
    4038:	044080e7          	jalr	68(ra) # 7078 <exit>
    403c:	fec42783          	lw	a5,-20(s0)
    4040:	853e                	mv	a0,a5
    4042:	00003097          	auipc	ra,0x3
    4046:	05e080e7          	jalr	94(ra) # 70a0 <close>
    404a:	4581                	li	a1,0
    404c:	00005517          	auipc	a0,0x5
    4050:	b6c50513          	addi	a0,a0,-1172 # 8bb8 <longjmp_1+0x1270>
    4054:	00003097          	auipc	ra,0x3
    4058:	064080e7          	jalr	100(ra) # 70b8 <open>
    405c:	87aa                	mv	a5,a0
    405e:	0207c163          	bltz	a5,4080 <subdir+0x460>
    4062:	fd843583          	ld	a1,-40(s0)
    4066:	00005517          	auipc	a0,0x5
    406a:	d3250513          	addi	a0,a0,-718 # 8d98 <longjmp_1+0x1450>
    406e:	00003097          	auipc	ra,0x3
    4072:	538080e7          	jalr	1336(ra) # 75a6 <printf>
    4076:	4505                	li	a0,1
    4078:	00003097          	auipc	ra,0x3
    407c:	000080e7          	jalr	ra # 7078 <exit>
    4080:	20200593          	li	a1,514
    4084:	00005517          	auipc	a0,0x5
    4088:	d4450513          	addi	a0,a0,-700 # 8dc8 <longjmp_1+0x1480>
    408c:	00003097          	auipc	ra,0x3
    4090:	02c080e7          	jalr	44(ra) # 70b8 <open>
    4094:	87aa                	mv	a5,a0
    4096:	0207c163          	bltz	a5,40b8 <subdir+0x498>
    409a:	fd843583          	ld	a1,-40(s0)
    409e:	00005517          	auipc	a0,0x5
    40a2:	d3a50513          	addi	a0,a0,-710 # 8dd8 <longjmp_1+0x1490>
    40a6:	00003097          	auipc	ra,0x3
    40aa:	500080e7          	jalr	1280(ra) # 75a6 <printf>
    40ae:	4505                	li	a0,1
    40b0:	00003097          	auipc	ra,0x3
    40b4:	fc8080e7          	jalr	-56(ra) # 7078 <exit>
    40b8:	20200593          	li	a1,514
    40bc:	00005517          	auipc	a0,0x5
    40c0:	d3c50513          	addi	a0,a0,-708 # 8df8 <longjmp_1+0x14b0>
    40c4:	00003097          	auipc	ra,0x3
    40c8:	ff4080e7          	jalr	-12(ra) # 70b8 <open>
    40cc:	87aa                	mv	a5,a0
    40ce:	0207c163          	bltz	a5,40f0 <subdir+0x4d0>
    40d2:	fd843583          	ld	a1,-40(s0)
    40d6:	00005517          	auipc	a0,0x5
    40da:	d3250513          	addi	a0,a0,-718 # 8e08 <longjmp_1+0x14c0>
    40de:	00003097          	auipc	ra,0x3
    40e2:	4c8080e7          	jalr	1224(ra) # 75a6 <printf>
    40e6:	4505                	li	a0,1
    40e8:	00003097          	auipc	ra,0x3
    40ec:	f90080e7          	jalr	-112(ra) # 7078 <exit>
    40f0:	20000593          	li	a1,512
    40f4:	00005517          	auipc	a0,0x5
    40f8:	a2450513          	addi	a0,a0,-1500 # 8b18 <longjmp_1+0x11d0>
    40fc:	00003097          	auipc	ra,0x3
    4100:	fbc080e7          	jalr	-68(ra) # 70b8 <open>
    4104:	87aa                	mv	a5,a0
    4106:	0207c163          	bltz	a5,4128 <subdir+0x508>
    410a:	fd843583          	ld	a1,-40(s0)
    410e:	00005517          	auipc	a0,0x5
    4112:	d1a50513          	addi	a0,a0,-742 # 8e28 <longjmp_1+0x14e0>
    4116:	00003097          	auipc	ra,0x3
    411a:	490080e7          	jalr	1168(ra) # 75a6 <printf>
    411e:	4505                	li	a0,1
    4120:	00003097          	auipc	ra,0x3
    4124:	f58080e7          	jalr	-168(ra) # 7078 <exit>
    4128:	4589                	li	a1,2
    412a:	00005517          	auipc	a0,0x5
    412e:	9ee50513          	addi	a0,a0,-1554 # 8b18 <longjmp_1+0x11d0>
    4132:	00003097          	auipc	ra,0x3
    4136:	f86080e7          	jalr	-122(ra) # 70b8 <open>
    413a:	87aa                	mv	a5,a0
    413c:	0207c163          	bltz	a5,415e <subdir+0x53e>
    4140:	fd843583          	ld	a1,-40(s0)
    4144:	00005517          	auipc	a0,0x5
    4148:	d0450513          	addi	a0,a0,-764 # 8e48 <longjmp_1+0x1500>
    414c:	00003097          	auipc	ra,0x3
    4150:	45a080e7          	jalr	1114(ra) # 75a6 <printf>
    4154:	4505                	li	a0,1
    4156:	00003097          	auipc	ra,0x3
    415a:	f22080e7          	jalr	-222(ra) # 7078 <exit>
    415e:	4585                	li	a1,1
    4160:	00005517          	auipc	a0,0x5
    4164:	9b850513          	addi	a0,a0,-1608 # 8b18 <longjmp_1+0x11d0>
    4168:	00003097          	auipc	ra,0x3
    416c:	f50080e7          	jalr	-176(ra) # 70b8 <open>
    4170:	87aa                	mv	a5,a0
    4172:	0207c163          	bltz	a5,4194 <subdir+0x574>
    4176:	fd843583          	ld	a1,-40(s0)
    417a:	00005517          	auipc	a0,0x5
    417e:	cee50513          	addi	a0,a0,-786 # 8e68 <longjmp_1+0x1520>
    4182:	00003097          	auipc	ra,0x3
    4186:	424080e7          	jalr	1060(ra) # 75a6 <printf>
    418a:	4505                	li	a0,1
    418c:	00003097          	auipc	ra,0x3
    4190:	eec080e7          	jalr	-276(ra) # 7078 <exit>
    4194:	00005597          	auipc	a1,0x5
    4198:	cf458593          	addi	a1,a1,-780 # 8e88 <longjmp_1+0x1540>
    419c:	00005517          	auipc	a0,0x5
    41a0:	c2c50513          	addi	a0,a0,-980 # 8dc8 <longjmp_1+0x1480>
    41a4:	00003097          	auipc	ra,0x3
    41a8:	f34080e7          	jalr	-204(ra) # 70d8 <link>
    41ac:	87aa                	mv	a5,a0
    41ae:	e385                	bnez	a5,41ce <subdir+0x5ae>
    41b0:	fd843583          	ld	a1,-40(s0)
    41b4:	00005517          	auipc	a0,0x5
    41b8:	ce450513          	addi	a0,a0,-796 # 8e98 <longjmp_1+0x1550>
    41bc:	00003097          	auipc	ra,0x3
    41c0:	3ea080e7          	jalr	1002(ra) # 75a6 <printf>
    41c4:	4505                	li	a0,1
    41c6:	00003097          	auipc	ra,0x3
    41ca:	eb2080e7          	jalr	-334(ra) # 7078 <exit>
    41ce:	00005597          	auipc	a1,0x5
    41d2:	cba58593          	addi	a1,a1,-838 # 8e88 <longjmp_1+0x1540>
    41d6:	00005517          	auipc	a0,0x5
    41da:	c2250513          	addi	a0,a0,-990 # 8df8 <longjmp_1+0x14b0>
    41de:	00003097          	auipc	ra,0x3
    41e2:	efa080e7          	jalr	-262(ra) # 70d8 <link>
    41e6:	87aa                	mv	a5,a0
    41e8:	e385                	bnez	a5,4208 <subdir+0x5e8>
    41ea:	fd843583          	ld	a1,-40(s0)
    41ee:	00005517          	auipc	a0,0x5
    41f2:	cd250513          	addi	a0,a0,-814 # 8ec0 <longjmp_1+0x1578>
    41f6:	00003097          	auipc	ra,0x3
    41fa:	3b0080e7          	jalr	944(ra) # 75a6 <printf>
    41fe:	4505                	li	a0,1
    4200:	00003097          	auipc	ra,0x3
    4204:	e78080e7          	jalr	-392(ra) # 7078 <exit>
    4208:	00005597          	auipc	a1,0x5
    420c:	a3858593          	addi	a1,a1,-1480 # 8c40 <longjmp_1+0x12f8>
    4210:	00005517          	auipc	a0,0x5
    4214:	92850513          	addi	a0,a0,-1752 # 8b38 <longjmp_1+0x11f0>
    4218:	00003097          	auipc	ra,0x3
    421c:	ec0080e7          	jalr	-320(ra) # 70d8 <link>
    4220:	87aa                	mv	a5,a0
    4222:	e385                	bnez	a5,4242 <subdir+0x622>
    4224:	fd843583          	ld	a1,-40(s0)
    4228:	00005517          	auipc	a0,0x5
    422c:	cc050513          	addi	a0,a0,-832 # 8ee8 <longjmp_1+0x15a0>
    4230:	00003097          	auipc	ra,0x3
    4234:	376080e7          	jalr	886(ra) # 75a6 <printf>
    4238:	4505                	li	a0,1
    423a:	00003097          	auipc	ra,0x3
    423e:	e3e080e7          	jalr	-450(ra) # 7078 <exit>
    4242:	00005517          	auipc	a0,0x5
    4246:	b8650513          	addi	a0,a0,-1146 # 8dc8 <longjmp_1+0x1480>
    424a:	00003097          	auipc	ra,0x3
    424e:	e96080e7          	jalr	-362(ra) # 70e0 <mkdir>
    4252:	87aa                	mv	a5,a0
    4254:	e385                	bnez	a5,4274 <subdir+0x654>
    4256:	fd843583          	ld	a1,-40(s0)
    425a:	00005517          	auipc	a0,0x5
    425e:	cb650513          	addi	a0,a0,-842 # 8f10 <longjmp_1+0x15c8>
    4262:	00003097          	auipc	ra,0x3
    4266:	344080e7          	jalr	836(ra) # 75a6 <printf>
    426a:	4505                	li	a0,1
    426c:	00003097          	auipc	ra,0x3
    4270:	e0c080e7          	jalr	-500(ra) # 7078 <exit>
    4274:	00005517          	auipc	a0,0x5
    4278:	b8450513          	addi	a0,a0,-1148 # 8df8 <longjmp_1+0x14b0>
    427c:	00003097          	auipc	ra,0x3
    4280:	e64080e7          	jalr	-412(ra) # 70e0 <mkdir>
    4284:	87aa                	mv	a5,a0
    4286:	e385                	bnez	a5,42a6 <subdir+0x686>
    4288:	fd843583          	ld	a1,-40(s0)
    428c:	00005517          	auipc	a0,0x5
    4290:	ca450513          	addi	a0,a0,-860 # 8f30 <longjmp_1+0x15e8>
    4294:	00003097          	auipc	ra,0x3
    4298:	312080e7          	jalr	786(ra) # 75a6 <printf>
    429c:	4505                	li	a0,1
    429e:	00003097          	auipc	ra,0x3
    42a2:	dda080e7          	jalr	-550(ra) # 7078 <exit>
    42a6:	00005517          	auipc	a0,0x5
    42aa:	99a50513          	addi	a0,a0,-1638 # 8c40 <longjmp_1+0x12f8>
    42ae:	00003097          	auipc	ra,0x3
    42b2:	e32080e7          	jalr	-462(ra) # 70e0 <mkdir>
    42b6:	87aa                	mv	a5,a0
    42b8:	e385                	bnez	a5,42d8 <subdir+0x6b8>
    42ba:	fd843583          	ld	a1,-40(s0)
    42be:	00005517          	auipc	a0,0x5
    42c2:	c9250513          	addi	a0,a0,-878 # 8f50 <longjmp_1+0x1608>
    42c6:	00003097          	auipc	ra,0x3
    42ca:	2e0080e7          	jalr	736(ra) # 75a6 <printf>
    42ce:	4505                	li	a0,1
    42d0:	00003097          	auipc	ra,0x3
    42d4:	da8080e7          	jalr	-600(ra) # 7078 <exit>
    42d8:	00005517          	auipc	a0,0x5
    42dc:	b2050513          	addi	a0,a0,-1248 # 8df8 <longjmp_1+0x14b0>
    42e0:	00003097          	auipc	ra,0x3
    42e4:	de8080e7          	jalr	-536(ra) # 70c8 <unlink>
    42e8:	87aa                	mv	a5,a0
    42ea:	e385                	bnez	a5,430a <subdir+0x6ea>
    42ec:	fd843583          	ld	a1,-40(s0)
    42f0:	00005517          	auipc	a0,0x5
    42f4:	c8850513          	addi	a0,a0,-888 # 8f78 <longjmp_1+0x1630>
    42f8:	00003097          	auipc	ra,0x3
    42fc:	2ae080e7          	jalr	686(ra) # 75a6 <printf>
    4300:	4505                	li	a0,1
    4302:	00003097          	auipc	ra,0x3
    4306:	d76080e7          	jalr	-650(ra) # 7078 <exit>
    430a:	00005517          	auipc	a0,0x5
    430e:	abe50513          	addi	a0,a0,-1346 # 8dc8 <longjmp_1+0x1480>
    4312:	00003097          	auipc	ra,0x3
    4316:	db6080e7          	jalr	-586(ra) # 70c8 <unlink>
    431a:	87aa                	mv	a5,a0
    431c:	e385                	bnez	a5,433c <subdir+0x71c>
    431e:	fd843583          	ld	a1,-40(s0)
    4322:	00005517          	auipc	a0,0x5
    4326:	c7650513          	addi	a0,a0,-906 # 8f98 <longjmp_1+0x1650>
    432a:	00003097          	auipc	ra,0x3
    432e:	27c080e7          	jalr	636(ra) # 75a6 <printf>
    4332:	4505                	li	a0,1
    4334:	00003097          	auipc	ra,0x3
    4338:	d44080e7          	jalr	-700(ra) # 7078 <exit>
    433c:	00004517          	auipc	a0,0x4
    4340:	7fc50513          	addi	a0,a0,2044 # 8b38 <longjmp_1+0x11f0>
    4344:	00003097          	auipc	ra,0x3
    4348:	da4080e7          	jalr	-604(ra) # 70e8 <chdir>
    434c:	87aa                	mv	a5,a0
    434e:	e385                	bnez	a5,436e <subdir+0x74e>
    4350:	fd843583          	ld	a1,-40(s0)
    4354:	00005517          	auipc	a0,0x5
    4358:	c6450513          	addi	a0,a0,-924 # 8fb8 <longjmp_1+0x1670>
    435c:	00003097          	auipc	ra,0x3
    4360:	24a080e7          	jalr	586(ra) # 75a6 <printf>
    4364:	4505                	li	a0,1
    4366:	00003097          	auipc	ra,0x3
    436a:	d12080e7          	jalr	-750(ra) # 7078 <exit>
    436e:	00005517          	auipc	a0,0x5
    4372:	c6a50513          	addi	a0,a0,-918 # 8fd8 <longjmp_1+0x1690>
    4376:	00003097          	auipc	ra,0x3
    437a:	d72080e7          	jalr	-654(ra) # 70e8 <chdir>
    437e:	87aa                	mv	a5,a0
    4380:	e385                	bnez	a5,43a0 <subdir+0x780>
    4382:	fd843583          	ld	a1,-40(s0)
    4386:	00005517          	auipc	a0,0x5
    438a:	c5a50513          	addi	a0,a0,-934 # 8fe0 <longjmp_1+0x1698>
    438e:	00003097          	auipc	ra,0x3
    4392:	218080e7          	jalr	536(ra) # 75a6 <printf>
    4396:	4505                	li	a0,1
    4398:	00003097          	auipc	ra,0x3
    439c:	ce0080e7          	jalr	-800(ra) # 7078 <exit>
    43a0:	00005517          	auipc	a0,0x5
    43a4:	8a050513          	addi	a0,a0,-1888 # 8c40 <longjmp_1+0x12f8>
    43a8:	00003097          	auipc	ra,0x3
    43ac:	d20080e7          	jalr	-736(ra) # 70c8 <unlink>
    43b0:	87aa                	mv	a5,a0
    43b2:	c385                	beqz	a5,43d2 <subdir+0x7b2>
    43b4:	fd843583          	ld	a1,-40(s0)
    43b8:	00005517          	auipc	a0,0x5
    43bc:	8c050513          	addi	a0,a0,-1856 # 8c78 <longjmp_1+0x1330>
    43c0:	00003097          	auipc	ra,0x3
    43c4:	1e6080e7          	jalr	486(ra) # 75a6 <printf>
    43c8:	4505                	li	a0,1
    43ca:	00003097          	auipc	ra,0x3
    43ce:	cae080e7          	jalr	-850(ra) # 7078 <exit>
    43d2:	00004517          	auipc	a0,0x4
    43d6:	76650513          	addi	a0,a0,1894 # 8b38 <longjmp_1+0x11f0>
    43da:	00003097          	auipc	ra,0x3
    43de:	cee080e7          	jalr	-786(ra) # 70c8 <unlink>
    43e2:	87aa                	mv	a5,a0
    43e4:	c385                	beqz	a5,4404 <subdir+0x7e4>
    43e6:	fd843583          	ld	a1,-40(s0)
    43ea:	00005517          	auipc	a0,0x5
    43ee:	c1650513          	addi	a0,a0,-1002 # 9000 <longjmp_1+0x16b8>
    43f2:	00003097          	auipc	ra,0x3
    43f6:	1b4080e7          	jalr	436(ra) # 75a6 <printf>
    43fa:	4505                	li	a0,1
    43fc:	00003097          	auipc	ra,0x3
    4400:	c7c080e7          	jalr	-900(ra) # 7078 <exit>
    4404:	00004517          	auipc	a0,0x4
    4408:	71450513          	addi	a0,a0,1812 # 8b18 <longjmp_1+0x11d0>
    440c:	00003097          	auipc	ra,0x3
    4410:	cbc080e7          	jalr	-836(ra) # 70c8 <unlink>
    4414:	87aa                	mv	a5,a0
    4416:	e385                	bnez	a5,4436 <subdir+0x816>
    4418:	fd843583          	ld	a1,-40(s0)
    441c:	00005517          	auipc	a0,0x5
    4420:	c0450513          	addi	a0,a0,-1020 # 9020 <longjmp_1+0x16d8>
    4424:	00003097          	auipc	ra,0x3
    4428:	182080e7          	jalr	386(ra) # 75a6 <printf>
    442c:	4505                	li	a0,1
    442e:	00003097          	auipc	ra,0x3
    4432:	c4a080e7          	jalr	-950(ra) # 7078 <exit>
    4436:	00005517          	auipc	a0,0x5
    443a:	c1250513          	addi	a0,a0,-1006 # 9048 <longjmp_1+0x1700>
    443e:	00003097          	auipc	ra,0x3
    4442:	c8a080e7          	jalr	-886(ra) # 70c8 <unlink>
    4446:	87aa                	mv	a5,a0
    4448:	0207d163          	bgez	a5,446a <subdir+0x84a>
    444c:	fd843583          	ld	a1,-40(s0)
    4450:	00005517          	auipc	a0,0x5
    4454:	c0050513          	addi	a0,a0,-1024 # 9050 <longjmp_1+0x1708>
    4458:	00003097          	auipc	ra,0x3
    445c:	14e080e7          	jalr	334(ra) # 75a6 <printf>
    4460:	4505                	li	a0,1
    4462:	00003097          	auipc	ra,0x3
    4466:	c16080e7          	jalr	-1002(ra) # 7078 <exit>
    446a:	00004517          	auipc	a0,0x4
    446e:	6ae50513          	addi	a0,a0,1710 # 8b18 <longjmp_1+0x11d0>
    4472:	00003097          	auipc	ra,0x3
    4476:	c56080e7          	jalr	-938(ra) # 70c8 <unlink>
    447a:	87aa                	mv	a5,a0
    447c:	0207d163          	bgez	a5,449e <subdir+0x87e>
    4480:	fd843583          	ld	a1,-40(s0)
    4484:	00005517          	auipc	a0,0x5
    4488:	bec50513          	addi	a0,a0,-1044 # 9070 <longjmp_1+0x1728>
    448c:	00003097          	auipc	ra,0x3
    4490:	11a080e7          	jalr	282(ra) # 75a6 <printf>
    4494:	4505                	li	a0,1
    4496:	00003097          	auipc	ra,0x3
    449a:	be2080e7          	jalr	-1054(ra) # 7078 <exit>
    449e:	0001                	nop
    44a0:	70a2                	ld	ra,40(sp)
    44a2:	7402                	ld	s0,32(sp)
    44a4:	6145                	addi	sp,sp,48
    44a6:	8082                	ret

00000000000044a8 <bigwrite>:
    44a8:	7179                	addi	sp,sp,-48
    44aa:	f406                	sd	ra,40(sp)
    44ac:	f022                	sd	s0,32(sp)
    44ae:	1800                	addi	s0,sp,48
    44b0:	fca43c23          	sd	a0,-40(s0)
    44b4:	00003517          	auipc	a0,0x3
    44b8:	66c50513          	addi	a0,a0,1644 # 7b20 <longjmp_1+0x1d8>
    44bc:	00003097          	auipc	ra,0x3
    44c0:	c0c080e7          	jalr	-1012(ra) # 70c8 <unlink>
    44c4:	1f300793          	li	a5,499
    44c8:	fef42623          	sw	a5,-20(s0)
    44cc:	a0e5                	j	45b4 <bigwrite+0x10c>
    44ce:	20200593          	li	a1,514
    44d2:	00003517          	auipc	a0,0x3
    44d6:	64e50513          	addi	a0,a0,1614 # 7b20 <longjmp_1+0x1d8>
    44da:	00003097          	auipc	ra,0x3
    44de:	bde080e7          	jalr	-1058(ra) # 70b8 <open>
    44e2:	87aa                	mv	a5,a0
    44e4:	fef42223          	sw	a5,-28(s0)
    44e8:	fe442783          	lw	a5,-28(s0)
    44ec:	2781                	sext.w	a5,a5
    44ee:	0207d163          	bgez	a5,4510 <bigwrite+0x68>
    44f2:	fd843583          	ld	a1,-40(s0)
    44f6:	00005517          	auipc	a0,0x5
    44fa:	b9250513          	addi	a0,a0,-1134 # 9088 <longjmp_1+0x1740>
    44fe:	00003097          	auipc	ra,0x3
    4502:	0a8080e7          	jalr	168(ra) # 75a6 <printf>
    4506:	4505                	li	a0,1
    4508:	00003097          	auipc	ra,0x3
    450c:	b70080e7          	jalr	-1168(ra) # 7078 <exit>
    4510:	fe042423          	sw	zero,-24(s0)
    4514:	a0a5                	j	457c <bigwrite+0xd4>
    4516:	fec42703          	lw	a4,-20(s0)
    451a:	fe442783          	lw	a5,-28(s0)
    451e:	863a                	mv	a2,a4
    4520:	00006597          	auipc	a1,0x6
    4524:	bd858593          	addi	a1,a1,-1064 # a0f8 <buf>
    4528:	853e                	mv	a0,a5
    452a:	00003097          	auipc	ra,0x3
    452e:	b6e080e7          	jalr	-1170(ra) # 7098 <write>
    4532:	87aa                	mv	a5,a0
    4534:	fef42023          	sw	a5,-32(s0)
    4538:	fe042703          	lw	a4,-32(s0)
    453c:	fec42783          	lw	a5,-20(s0)
    4540:	2701                	sext.w	a4,a4
    4542:	2781                	sext.w	a5,a5
    4544:	02f70763          	beq	a4,a5,4572 <bigwrite+0xca>
    4548:	fe042703          	lw	a4,-32(s0)
    454c:	fec42783          	lw	a5,-20(s0)
    4550:	86ba                	mv	a3,a4
    4552:	863e                	mv	a2,a5
    4554:	fd843583          	ld	a1,-40(s0)
    4558:	00005517          	auipc	a0,0x5
    455c:	b5050513          	addi	a0,a0,-1200 # 90a8 <longjmp_1+0x1760>
    4560:	00003097          	auipc	ra,0x3
    4564:	046080e7          	jalr	70(ra) # 75a6 <printf>
    4568:	4505                	li	a0,1
    456a:	00003097          	auipc	ra,0x3
    456e:	b0e080e7          	jalr	-1266(ra) # 7078 <exit>
    4572:	fe842783          	lw	a5,-24(s0)
    4576:	2785                	addiw	a5,a5,1
    4578:	fef42423          	sw	a5,-24(s0)
    457c:	fe842783          	lw	a5,-24(s0)
    4580:	0007871b          	sext.w	a4,a5
    4584:	4785                	li	a5,1
    4586:	f8e7d8e3          	bge	a5,a4,4516 <bigwrite+0x6e>
    458a:	fe442783          	lw	a5,-28(s0)
    458e:	853e                	mv	a0,a5
    4590:	00003097          	auipc	ra,0x3
    4594:	b10080e7          	jalr	-1264(ra) # 70a0 <close>
    4598:	00003517          	auipc	a0,0x3
    459c:	58850513          	addi	a0,a0,1416 # 7b20 <longjmp_1+0x1d8>
    45a0:	00003097          	auipc	ra,0x3
    45a4:	b28080e7          	jalr	-1240(ra) # 70c8 <unlink>
    45a8:	fec42783          	lw	a5,-20(s0)
    45ac:	1d77879b          	addiw	a5,a5,471
    45b0:	fef42623          	sw	a5,-20(s0)
    45b4:	fec42783          	lw	a5,-20(s0)
    45b8:	0007871b          	sext.w	a4,a5
    45bc:	678d                	lui	a5,0x3
    45be:	f0f748e3          	blt	a4,a5,44ce <bigwrite+0x26>
    45c2:	0001                	nop
    45c4:	0001                	nop
    45c6:	70a2                	ld	ra,40(sp)
    45c8:	7402                	ld	s0,32(sp)
    45ca:	6145                	addi	sp,sp,48
    45cc:	8082                	ret

00000000000045ce <manywrites>:
    45ce:	711d                	addi	sp,sp,-96
    45d0:	ec86                	sd	ra,88(sp)
    45d2:	e8a2                	sd	s0,80(sp)
    45d4:	1080                	addi	s0,sp,96
    45d6:	faa43423          	sd	a0,-88(s0)
    45da:	4791                	li	a5,4
    45dc:	fcf42e23          	sw	a5,-36(s0)
    45e0:	47f9                	li	a5,30
    45e2:	fcf42c23          	sw	a5,-40(s0)
    45e6:	fe042623          	sw	zero,-20(s0)
    45ea:	aa49                	j	477c <manywrites+0x1ae>
    45ec:	00003097          	auipc	ra,0x3
    45f0:	a84080e7          	jalr	-1404(ra) # 7070 <fork>
    45f4:	87aa                	mv	a5,a0
    45f6:	fcf42a23          	sw	a5,-44(s0)
    45fa:	fd442783          	lw	a5,-44(s0)
    45fe:	2781                	sext.w	a5,a5
    4600:	0007df63          	bgez	a5,461e <manywrites+0x50>
    4604:	00004517          	auipc	a0,0x4
    4608:	87c50513          	addi	a0,a0,-1924 # 7e80 <longjmp_1+0x538>
    460c:	00003097          	auipc	ra,0x3
    4610:	f9a080e7          	jalr	-102(ra) # 75a6 <printf>
    4614:	4505                	li	a0,1
    4616:	00003097          	auipc	ra,0x3
    461a:	a62080e7          	jalr	-1438(ra) # 7078 <exit>
    461e:	fd442783          	lw	a5,-44(s0)
    4622:	2781                	sext.w	a5,a5
    4624:	14079763          	bnez	a5,4772 <manywrites+0x1a4>
    4628:	06200793          	li	a5,98
    462c:	fcf40023          	sb	a5,-64(s0)
    4630:	fec42783          	lw	a5,-20(s0)
    4634:	0ff7f793          	andi	a5,a5,255
    4638:	0617879b          	addiw	a5,a5,97
    463c:	0ff7f793          	andi	a5,a5,255
    4640:	fcf400a3          	sb	a5,-63(s0)
    4644:	fc040123          	sb	zero,-62(s0)
    4648:	fc040793          	addi	a5,s0,-64
    464c:	853e                	mv	a0,a5
    464e:	00003097          	auipc	ra,0x3
    4652:	a7a080e7          	jalr	-1414(ra) # 70c8 <unlink>
    4656:	fe042423          	sw	zero,-24(s0)
    465a:	a8c5                	j	474a <manywrites+0x17c>
    465c:	fe042223          	sw	zero,-28(s0)
    4660:	a0c9                	j	4722 <manywrites+0x154>
    4662:	fc040793          	addi	a5,s0,-64
    4666:	20200593          	li	a1,514
    466a:	853e                	mv	a0,a5
    466c:	00003097          	auipc	ra,0x3
    4670:	a4c080e7          	jalr	-1460(ra) # 70b8 <open>
    4674:	87aa                	mv	a5,a0
    4676:	fcf42823          	sw	a5,-48(s0)
    467a:	fd042783          	lw	a5,-48(s0)
    467e:	2781                	sext.w	a5,a5
    4680:	0207d463          	bgez	a5,46a8 <manywrites+0xda>
    4684:	fc040793          	addi	a5,s0,-64
    4688:	863e                	mv	a2,a5
    468a:	fa843583          	ld	a1,-88(s0)
    468e:	00005517          	auipc	a0,0x5
    4692:	a3250513          	addi	a0,a0,-1486 # 90c0 <longjmp_1+0x1778>
    4696:	00003097          	auipc	ra,0x3
    469a:	f10080e7          	jalr	-240(ra) # 75a6 <printf>
    469e:	4505                	li	a0,1
    46a0:	00003097          	auipc	ra,0x3
    46a4:	9d8080e7          	jalr	-1576(ra) # 7078 <exit>
    46a8:	678d                	lui	a5,0x3
    46aa:	fcf42623          	sw	a5,-52(s0)
    46ae:	fcc42703          	lw	a4,-52(s0)
    46b2:	fd042783          	lw	a5,-48(s0)
    46b6:	863a                	mv	a2,a4
    46b8:	00006597          	auipc	a1,0x6
    46bc:	a4058593          	addi	a1,a1,-1472 # a0f8 <buf>
    46c0:	853e                	mv	a0,a5
    46c2:	00003097          	auipc	ra,0x3
    46c6:	9d6080e7          	jalr	-1578(ra) # 7098 <write>
    46ca:	87aa                	mv	a5,a0
    46cc:	fcf42423          	sw	a5,-56(s0)
    46d0:	fc842703          	lw	a4,-56(s0)
    46d4:	fcc42783          	lw	a5,-52(s0)
    46d8:	2701                	sext.w	a4,a4
    46da:	2781                	sext.w	a5,a5
    46dc:	02f70763          	beq	a4,a5,470a <manywrites+0x13c>
    46e0:	fc842703          	lw	a4,-56(s0)
    46e4:	fcc42783          	lw	a5,-52(s0)
    46e8:	86ba                	mv	a3,a4
    46ea:	863e                	mv	a2,a5
    46ec:	fa843583          	ld	a1,-88(s0)
    46f0:	00005517          	auipc	a0,0x5
    46f4:	9b850513          	addi	a0,a0,-1608 # 90a8 <longjmp_1+0x1760>
    46f8:	00003097          	auipc	ra,0x3
    46fc:	eae080e7          	jalr	-338(ra) # 75a6 <printf>
    4700:	4505                	li	a0,1
    4702:	00003097          	auipc	ra,0x3
    4706:	976080e7          	jalr	-1674(ra) # 7078 <exit>
    470a:	fd042783          	lw	a5,-48(s0)
    470e:	853e                	mv	a0,a5
    4710:	00003097          	auipc	ra,0x3
    4714:	990080e7          	jalr	-1648(ra) # 70a0 <close>
    4718:	fe442783          	lw	a5,-28(s0)
    471c:	2785                	addiw	a5,a5,1
    471e:	fef42223          	sw	a5,-28(s0)
    4722:	fec42703          	lw	a4,-20(s0)
    4726:	fe442783          	lw	a5,-28(s0)
    472a:	2701                	sext.w	a4,a4
    472c:	2781                	sext.w	a5,a5
    472e:	f2f75ae3          	bge	a4,a5,4662 <manywrites+0x94>
    4732:	fc040793          	addi	a5,s0,-64
    4736:	853e                	mv	a0,a5
    4738:	00003097          	auipc	ra,0x3
    473c:	990080e7          	jalr	-1648(ra) # 70c8 <unlink>
    4740:	fe842783          	lw	a5,-24(s0)
    4744:	2785                	addiw	a5,a5,1
    4746:	fef42423          	sw	a5,-24(s0)
    474a:	fe842703          	lw	a4,-24(s0)
    474e:	fd842783          	lw	a5,-40(s0)
    4752:	2701                	sext.w	a4,a4
    4754:	2781                	sext.w	a5,a5
    4756:	f0f743e3          	blt	a4,a5,465c <manywrites+0x8e>
    475a:	fc040793          	addi	a5,s0,-64
    475e:	853e                	mv	a0,a5
    4760:	00003097          	auipc	ra,0x3
    4764:	968080e7          	jalr	-1688(ra) # 70c8 <unlink>
    4768:	4501                	li	a0,0
    476a:	00003097          	auipc	ra,0x3
    476e:	90e080e7          	jalr	-1778(ra) # 7078 <exit>
    4772:	fec42783          	lw	a5,-20(s0)
    4776:	2785                	addiw	a5,a5,1
    4778:	fef42623          	sw	a5,-20(s0)
    477c:	fec42703          	lw	a4,-20(s0)
    4780:	fdc42783          	lw	a5,-36(s0)
    4784:	2701                	sext.w	a4,a4
    4786:	2781                	sext.w	a5,a5
    4788:	e6f742e3          	blt	a4,a5,45ec <manywrites+0x1e>
    478c:	fe042023          	sw	zero,-32(s0)
    4790:	a80d                	j	47c2 <manywrites+0x1f4>
    4792:	fa042e23          	sw	zero,-68(s0)
    4796:	fbc40793          	addi	a5,s0,-68
    479a:	853e                	mv	a0,a5
    479c:	00003097          	auipc	ra,0x3
    47a0:	8e4080e7          	jalr	-1820(ra) # 7080 <wait>
    47a4:	fbc42783          	lw	a5,-68(s0)
    47a8:	cb81                	beqz	a5,47b8 <manywrites+0x1ea>
    47aa:	fbc42783          	lw	a5,-68(s0)
    47ae:	853e                	mv	a0,a5
    47b0:	00003097          	auipc	ra,0x3
    47b4:	8c8080e7          	jalr	-1848(ra) # 7078 <exit>
    47b8:	fe042783          	lw	a5,-32(s0)
    47bc:	2785                	addiw	a5,a5,1
    47be:	fef42023          	sw	a5,-32(s0)
    47c2:	fe042703          	lw	a4,-32(s0)
    47c6:	fdc42783          	lw	a5,-36(s0)
    47ca:	2701                	sext.w	a4,a4
    47cc:	2781                	sext.w	a5,a5
    47ce:	fcf742e3          	blt	a4,a5,4792 <manywrites+0x1c4>
    47d2:	4501                	li	a0,0
    47d4:	00003097          	auipc	ra,0x3
    47d8:	8a4080e7          	jalr	-1884(ra) # 7078 <exit>

00000000000047dc <bigfile>:
    47dc:	7179                	addi	sp,sp,-48
    47de:	f406                	sd	ra,40(sp)
    47e0:	f022                	sd	s0,32(sp)
    47e2:	1800                	addi	s0,sp,48
    47e4:	fca43c23          	sd	a0,-40(s0)
    47e8:	00005517          	auipc	a0,0x5
    47ec:	8f050513          	addi	a0,a0,-1808 # 90d8 <longjmp_1+0x1790>
    47f0:	00003097          	auipc	ra,0x3
    47f4:	8d8080e7          	jalr	-1832(ra) # 70c8 <unlink>
    47f8:	20200593          	li	a1,514
    47fc:	00005517          	auipc	a0,0x5
    4800:	8dc50513          	addi	a0,a0,-1828 # 90d8 <longjmp_1+0x1790>
    4804:	00003097          	auipc	ra,0x3
    4808:	8b4080e7          	jalr	-1868(ra) # 70b8 <open>
    480c:	87aa                	mv	a5,a0
    480e:	fef42223          	sw	a5,-28(s0)
    4812:	fe442783          	lw	a5,-28(s0)
    4816:	2781                	sext.w	a5,a5
    4818:	0207d163          	bgez	a5,483a <bigfile+0x5e>
    481c:	fd843583          	ld	a1,-40(s0)
    4820:	00005517          	auipc	a0,0x5
    4824:	8c850513          	addi	a0,a0,-1848 # 90e8 <longjmp_1+0x17a0>
    4828:	00003097          	auipc	ra,0x3
    482c:	d7e080e7          	jalr	-642(ra) # 75a6 <printf>
    4830:	4505                	li	a0,1
    4832:	00003097          	auipc	ra,0x3
    4836:	846080e7          	jalr	-1978(ra) # 7078 <exit>
    483a:	fe042623          	sw	zero,-20(s0)
    483e:	a0ad                	j	48a8 <bigfile+0xcc>
    4840:	fec42783          	lw	a5,-20(s0)
    4844:	25800613          	li	a2,600
    4848:	85be                	mv	a1,a5
    484a:	00006517          	auipc	a0,0x6
    484e:	8ae50513          	addi	a0,a0,-1874 # a0f8 <buf>
    4852:	00002097          	auipc	ra,0x2
    4856:	47c080e7          	jalr	1148(ra) # 6cce <memset>
    485a:	fe442783          	lw	a5,-28(s0)
    485e:	25800613          	li	a2,600
    4862:	00006597          	auipc	a1,0x6
    4866:	89658593          	addi	a1,a1,-1898 # a0f8 <buf>
    486a:	853e                	mv	a0,a5
    486c:	00003097          	auipc	ra,0x3
    4870:	82c080e7          	jalr	-2004(ra) # 7098 <write>
    4874:	87aa                	mv	a5,a0
    4876:	873e                	mv	a4,a5
    4878:	25800793          	li	a5,600
    487c:	02f70163          	beq	a4,a5,489e <bigfile+0xc2>
    4880:	fd843583          	ld	a1,-40(s0)
    4884:	00005517          	auipc	a0,0x5
    4888:	88450513          	addi	a0,a0,-1916 # 9108 <longjmp_1+0x17c0>
    488c:	00003097          	auipc	ra,0x3
    4890:	d1a080e7          	jalr	-742(ra) # 75a6 <printf>
    4894:	4505                	li	a0,1
    4896:	00002097          	auipc	ra,0x2
    489a:	7e2080e7          	jalr	2018(ra) # 7078 <exit>
    489e:	fec42783          	lw	a5,-20(s0)
    48a2:	2785                	addiw	a5,a5,1
    48a4:	fef42623          	sw	a5,-20(s0)
    48a8:	fec42783          	lw	a5,-20(s0)
    48ac:	0007871b          	sext.w	a4,a5
    48b0:	47cd                	li	a5,19
    48b2:	f8e7d7e3          	bge	a5,a4,4840 <bigfile+0x64>
    48b6:	fe442783          	lw	a5,-28(s0)
    48ba:	853e                	mv	a0,a5
    48bc:	00002097          	auipc	ra,0x2
    48c0:	7e4080e7          	jalr	2020(ra) # 70a0 <close>
    48c4:	4581                	li	a1,0
    48c6:	00005517          	auipc	a0,0x5
    48ca:	81250513          	addi	a0,a0,-2030 # 90d8 <longjmp_1+0x1790>
    48ce:	00002097          	auipc	ra,0x2
    48d2:	7ea080e7          	jalr	2026(ra) # 70b8 <open>
    48d6:	87aa                	mv	a5,a0
    48d8:	fef42223          	sw	a5,-28(s0)
    48dc:	fe442783          	lw	a5,-28(s0)
    48e0:	2781                	sext.w	a5,a5
    48e2:	0207d163          	bgez	a5,4904 <bigfile+0x128>
    48e6:	fd843583          	ld	a1,-40(s0)
    48ea:	00005517          	auipc	a0,0x5
    48ee:	83e50513          	addi	a0,a0,-1986 # 9128 <longjmp_1+0x17e0>
    48f2:	00003097          	auipc	ra,0x3
    48f6:	cb4080e7          	jalr	-844(ra) # 75a6 <printf>
    48fa:	4505                	li	a0,1
    48fc:	00002097          	auipc	ra,0x2
    4900:	77c080e7          	jalr	1916(ra) # 7078 <exit>
    4904:	fe042423          	sw	zero,-24(s0)
    4908:	fe042623          	sw	zero,-20(s0)
    490c:	fe442783          	lw	a5,-28(s0)
    4910:	12c00613          	li	a2,300
    4914:	00005597          	auipc	a1,0x5
    4918:	7e458593          	addi	a1,a1,2020 # a0f8 <buf>
    491c:	853e                	mv	a0,a5
    491e:	00002097          	auipc	ra,0x2
    4922:	772080e7          	jalr	1906(ra) # 7090 <read>
    4926:	87aa                	mv	a5,a0
    4928:	fef42023          	sw	a5,-32(s0)
    492c:	fe042783          	lw	a5,-32(s0)
    4930:	2781                	sext.w	a5,a5
    4932:	0207d163          	bgez	a5,4954 <bigfile+0x178>
    4936:	fd843583          	ld	a1,-40(s0)
    493a:	00005517          	auipc	a0,0x5
    493e:	80e50513          	addi	a0,a0,-2034 # 9148 <longjmp_1+0x1800>
    4942:	00003097          	auipc	ra,0x3
    4946:	c64080e7          	jalr	-924(ra) # 75a6 <printf>
    494a:	4505                	li	a0,1
    494c:	00002097          	auipc	ra,0x2
    4950:	72c080e7          	jalr	1836(ra) # 7078 <exit>
    4954:	fe042783          	lw	a5,-32(s0)
    4958:	2781                	sext.w	a5,a5
    495a:	cbd5                	beqz	a5,4a0e <bigfile+0x232>
    495c:	fe042783          	lw	a5,-32(s0)
    4960:	0007871b          	sext.w	a4,a5
    4964:	12c00793          	li	a5,300
    4968:	02f70163          	beq	a4,a5,498a <bigfile+0x1ae>
    496c:	fd843583          	ld	a1,-40(s0)
    4970:	00004517          	auipc	a0,0x4
    4974:	7f850513          	addi	a0,a0,2040 # 9168 <longjmp_1+0x1820>
    4978:	00003097          	auipc	ra,0x3
    497c:	c2e080e7          	jalr	-978(ra) # 75a6 <printf>
    4980:	4505                	li	a0,1
    4982:	00002097          	auipc	ra,0x2
    4986:	6f6080e7          	jalr	1782(ra) # 7078 <exit>
    498a:	00005797          	auipc	a5,0x5
    498e:	76e78793          	addi	a5,a5,1902 # a0f8 <buf>
    4992:	0007c783          	lbu	a5,0(a5)
    4996:	0007869b          	sext.w	a3,a5
    499a:	fec42783          	lw	a5,-20(s0)
    499e:	01f7d71b          	srliw	a4,a5,0x1f
    49a2:	9fb9                	addw	a5,a5,a4
    49a4:	4017d79b          	sraiw	a5,a5,0x1
    49a8:	2781                	sext.w	a5,a5
    49aa:	8736                	mv	a4,a3
    49ac:	02f71563          	bne	a4,a5,49d6 <bigfile+0x1fa>
    49b0:	00005797          	auipc	a5,0x5
    49b4:	74878793          	addi	a5,a5,1864 # a0f8 <buf>
    49b8:	12b7c783          	lbu	a5,299(a5)
    49bc:	0007869b          	sext.w	a3,a5
    49c0:	fec42783          	lw	a5,-20(s0)
    49c4:	01f7d71b          	srliw	a4,a5,0x1f
    49c8:	9fb9                	addw	a5,a5,a4
    49ca:	4017d79b          	sraiw	a5,a5,0x1
    49ce:	2781                	sext.w	a5,a5
    49d0:	8736                	mv	a4,a3
    49d2:	02f70163          	beq	a4,a5,49f4 <bigfile+0x218>
    49d6:	fd843583          	ld	a1,-40(s0)
    49da:	00004517          	auipc	a0,0x4
    49de:	7a650513          	addi	a0,a0,1958 # 9180 <longjmp_1+0x1838>
    49e2:	00003097          	auipc	ra,0x3
    49e6:	bc4080e7          	jalr	-1084(ra) # 75a6 <printf>
    49ea:	4505                	li	a0,1
    49ec:	00002097          	auipc	ra,0x2
    49f0:	68c080e7          	jalr	1676(ra) # 7078 <exit>
    49f4:	fe842703          	lw	a4,-24(s0)
    49f8:	fe042783          	lw	a5,-32(s0)
    49fc:	9fb9                	addw	a5,a5,a4
    49fe:	fef42423          	sw	a5,-24(s0)
    4a02:	fec42783          	lw	a5,-20(s0)
    4a06:	2785                	addiw	a5,a5,1
    4a08:	fef42623          	sw	a5,-20(s0)
    4a0c:	b701                	j	490c <bigfile+0x130>
    4a0e:	0001                	nop
    4a10:	fe442783          	lw	a5,-28(s0)
    4a14:	853e                	mv	a0,a5
    4a16:	00002097          	auipc	ra,0x2
    4a1a:	68a080e7          	jalr	1674(ra) # 70a0 <close>
    4a1e:	fe842783          	lw	a5,-24(s0)
    4a22:	0007871b          	sext.w	a4,a5
    4a26:	678d                	lui	a5,0x3
    4a28:	ee078793          	addi	a5,a5,-288 # 2ee0 <createdelete+0x22c>
    4a2c:	02f70163          	beq	a4,a5,4a4e <bigfile+0x272>
    4a30:	fd843583          	ld	a1,-40(s0)
    4a34:	00004517          	auipc	a0,0x4
    4a38:	76c50513          	addi	a0,a0,1900 # 91a0 <longjmp_1+0x1858>
    4a3c:	00003097          	auipc	ra,0x3
    4a40:	b6a080e7          	jalr	-1174(ra) # 75a6 <printf>
    4a44:	4505                	li	a0,1
    4a46:	00002097          	auipc	ra,0x2
    4a4a:	632080e7          	jalr	1586(ra) # 7078 <exit>
    4a4e:	00004517          	auipc	a0,0x4
    4a52:	68a50513          	addi	a0,a0,1674 # 90d8 <longjmp_1+0x1790>
    4a56:	00002097          	auipc	ra,0x2
    4a5a:	672080e7          	jalr	1650(ra) # 70c8 <unlink>
    4a5e:	0001                	nop
    4a60:	70a2                	ld	ra,40(sp)
    4a62:	7402                	ld	s0,32(sp)
    4a64:	6145                	addi	sp,sp,48
    4a66:	8082                	ret

0000000000004a68 <fourteen>:
    4a68:	7179                	addi	sp,sp,-48
    4a6a:	f406                	sd	ra,40(sp)
    4a6c:	f022                	sd	s0,32(sp)
    4a6e:	1800                	addi	s0,sp,48
    4a70:	fca43c23          	sd	a0,-40(s0)
    4a74:	00004517          	auipc	a0,0x4
    4a78:	74c50513          	addi	a0,a0,1868 # 91c0 <longjmp_1+0x1878>
    4a7c:	00002097          	auipc	ra,0x2
    4a80:	664080e7          	jalr	1636(ra) # 70e0 <mkdir>
    4a84:	87aa                	mv	a5,a0
    4a86:	c385                	beqz	a5,4aa6 <fourteen+0x3e>
    4a88:	fd843583          	ld	a1,-40(s0)
    4a8c:	00004517          	auipc	a0,0x4
    4a90:	74450513          	addi	a0,a0,1860 # 91d0 <longjmp_1+0x1888>
    4a94:	00003097          	auipc	ra,0x3
    4a98:	b12080e7          	jalr	-1262(ra) # 75a6 <printf>
    4a9c:	4505                	li	a0,1
    4a9e:	00002097          	auipc	ra,0x2
    4aa2:	5da080e7          	jalr	1498(ra) # 7078 <exit>
    4aa6:	00004517          	auipc	a0,0x4
    4aaa:	75250513          	addi	a0,a0,1874 # 91f8 <longjmp_1+0x18b0>
    4aae:	00002097          	auipc	ra,0x2
    4ab2:	632080e7          	jalr	1586(ra) # 70e0 <mkdir>
    4ab6:	87aa                	mv	a5,a0
    4ab8:	c385                	beqz	a5,4ad8 <fourteen+0x70>
    4aba:	fd843583          	ld	a1,-40(s0)
    4abe:	00004517          	auipc	a0,0x4
    4ac2:	75a50513          	addi	a0,a0,1882 # 9218 <longjmp_1+0x18d0>
    4ac6:	00003097          	auipc	ra,0x3
    4aca:	ae0080e7          	jalr	-1312(ra) # 75a6 <printf>
    4ace:	4505                	li	a0,1
    4ad0:	00002097          	auipc	ra,0x2
    4ad4:	5a8080e7          	jalr	1448(ra) # 7078 <exit>
    4ad8:	20000593          	li	a1,512
    4adc:	00004517          	auipc	a0,0x4
    4ae0:	77450513          	addi	a0,a0,1908 # 9250 <longjmp_1+0x1908>
    4ae4:	00002097          	auipc	ra,0x2
    4ae8:	5d4080e7          	jalr	1492(ra) # 70b8 <open>
    4aec:	87aa                	mv	a5,a0
    4aee:	fef42623          	sw	a5,-20(s0)
    4af2:	fec42783          	lw	a5,-20(s0)
    4af6:	2781                	sext.w	a5,a5
    4af8:	0207d163          	bgez	a5,4b1a <fourteen+0xb2>
    4afc:	fd843583          	ld	a1,-40(s0)
    4b00:	00004517          	auipc	a0,0x4
    4b04:	78050513          	addi	a0,a0,1920 # 9280 <longjmp_1+0x1938>
    4b08:	00003097          	auipc	ra,0x3
    4b0c:	a9e080e7          	jalr	-1378(ra) # 75a6 <printf>
    4b10:	4505                	li	a0,1
    4b12:	00002097          	auipc	ra,0x2
    4b16:	566080e7          	jalr	1382(ra) # 7078 <exit>
    4b1a:	fec42783          	lw	a5,-20(s0)
    4b1e:	853e                	mv	a0,a5
    4b20:	00002097          	auipc	ra,0x2
    4b24:	580080e7          	jalr	1408(ra) # 70a0 <close>
    4b28:	4581                	li	a1,0
    4b2a:	00004517          	auipc	a0,0x4
    4b2e:	79e50513          	addi	a0,a0,1950 # 92c8 <longjmp_1+0x1980>
    4b32:	00002097          	auipc	ra,0x2
    4b36:	586080e7          	jalr	1414(ra) # 70b8 <open>
    4b3a:	87aa                	mv	a5,a0
    4b3c:	fef42623          	sw	a5,-20(s0)
    4b40:	fec42783          	lw	a5,-20(s0)
    4b44:	2781                	sext.w	a5,a5
    4b46:	0207d163          	bgez	a5,4b68 <fourteen+0x100>
    4b4a:	fd843583          	ld	a1,-40(s0)
    4b4e:	00004517          	auipc	a0,0x4
    4b52:	7aa50513          	addi	a0,a0,1962 # 92f8 <longjmp_1+0x19b0>
    4b56:	00003097          	auipc	ra,0x3
    4b5a:	a50080e7          	jalr	-1456(ra) # 75a6 <printf>
    4b5e:	4505                	li	a0,1
    4b60:	00002097          	auipc	ra,0x2
    4b64:	518080e7          	jalr	1304(ra) # 7078 <exit>
    4b68:	fec42783          	lw	a5,-20(s0)
    4b6c:	853e                	mv	a0,a5
    4b6e:	00002097          	auipc	ra,0x2
    4b72:	532080e7          	jalr	1330(ra) # 70a0 <close>
    4b76:	00004517          	auipc	a0,0x4
    4b7a:	7c250513          	addi	a0,a0,1986 # 9338 <longjmp_1+0x19f0>
    4b7e:	00002097          	auipc	ra,0x2
    4b82:	562080e7          	jalr	1378(ra) # 70e0 <mkdir>
    4b86:	87aa                	mv	a5,a0
    4b88:	e385                	bnez	a5,4ba8 <fourteen+0x140>
    4b8a:	fd843583          	ld	a1,-40(s0)
    4b8e:	00004517          	auipc	a0,0x4
    4b92:	7ca50513          	addi	a0,a0,1994 # 9358 <longjmp_1+0x1a10>
    4b96:	00003097          	auipc	ra,0x3
    4b9a:	a10080e7          	jalr	-1520(ra) # 75a6 <printf>
    4b9e:	4505                	li	a0,1
    4ba0:	00002097          	auipc	ra,0x2
    4ba4:	4d8080e7          	jalr	1240(ra) # 7078 <exit>
    4ba8:	00004517          	auipc	a0,0x4
    4bac:	7e850513          	addi	a0,a0,2024 # 9390 <longjmp_1+0x1a48>
    4bb0:	00002097          	auipc	ra,0x2
    4bb4:	530080e7          	jalr	1328(ra) # 70e0 <mkdir>
    4bb8:	87aa                	mv	a5,a0
    4bba:	e385                	bnez	a5,4bda <fourteen+0x172>
    4bbc:	fd843583          	ld	a1,-40(s0)
    4bc0:	00004517          	auipc	a0,0x4
    4bc4:	7f050513          	addi	a0,a0,2032 # 93b0 <longjmp_1+0x1a68>
    4bc8:	00003097          	auipc	ra,0x3
    4bcc:	9de080e7          	jalr	-1570(ra) # 75a6 <printf>
    4bd0:	4505                	li	a0,1
    4bd2:	00002097          	auipc	ra,0x2
    4bd6:	4a6080e7          	jalr	1190(ra) # 7078 <exit>
    4bda:	00004517          	auipc	a0,0x4
    4bde:	7b650513          	addi	a0,a0,1974 # 9390 <longjmp_1+0x1a48>
    4be2:	00002097          	auipc	ra,0x2
    4be6:	4e6080e7          	jalr	1254(ra) # 70c8 <unlink>
    4bea:	00004517          	auipc	a0,0x4
    4bee:	74e50513          	addi	a0,a0,1870 # 9338 <longjmp_1+0x19f0>
    4bf2:	00002097          	auipc	ra,0x2
    4bf6:	4d6080e7          	jalr	1238(ra) # 70c8 <unlink>
    4bfa:	00004517          	auipc	a0,0x4
    4bfe:	6ce50513          	addi	a0,a0,1742 # 92c8 <longjmp_1+0x1980>
    4c02:	00002097          	auipc	ra,0x2
    4c06:	4c6080e7          	jalr	1222(ra) # 70c8 <unlink>
    4c0a:	00004517          	auipc	a0,0x4
    4c0e:	64650513          	addi	a0,a0,1606 # 9250 <longjmp_1+0x1908>
    4c12:	00002097          	auipc	ra,0x2
    4c16:	4b6080e7          	jalr	1206(ra) # 70c8 <unlink>
    4c1a:	00004517          	auipc	a0,0x4
    4c1e:	5de50513          	addi	a0,a0,1502 # 91f8 <longjmp_1+0x18b0>
    4c22:	00002097          	auipc	ra,0x2
    4c26:	4a6080e7          	jalr	1190(ra) # 70c8 <unlink>
    4c2a:	00004517          	auipc	a0,0x4
    4c2e:	59650513          	addi	a0,a0,1430 # 91c0 <longjmp_1+0x1878>
    4c32:	00002097          	auipc	ra,0x2
    4c36:	496080e7          	jalr	1174(ra) # 70c8 <unlink>
    4c3a:	0001                	nop
    4c3c:	70a2                	ld	ra,40(sp)
    4c3e:	7402                	ld	s0,32(sp)
    4c40:	6145                	addi	sp,sp,48
    4c42:	8082                	ret

0000000000004c44 <rmdot>:
    4c44:	1101                	addi	sp,sp,-32
    4c46:	ec06                	sd	ra,24(sp)
    4c48:	e822                	sd	s0,16(sp)
    4c4a:	1000                	addi	s0,sp,32
    4c4c:	fea43423          	sd	a0,-24(s0)
    4c50:	00004517          	auipc	a0,0x4
    4c54:	79850513          	addi	a0,a0,1944 # 93e8 <longjmp_1+0x1aa0>
    4c58:	00002097          	auipc	ra,0x2
    4c5c:	488080e7          	jalr	1160(ra) # 70e0 <mkdir>
    4c60:	87aa                	mv	a5,a0
    4c62:	c385                	beqz	a5,4c82 <rmdot+0x3e>
    4c64:	fe843583          	ld	a1,-24(s0)
    4c68:	00004517          	auipc	a0,0x4
    4c6c:	78850513          	addi	a0,a0,1928 # 93f0 <longjmp_1+0x1aa8>
    4c70:	00003097          	auipc	ra,0x3
    4c74:	936080e7          	jalr	-1738(ra) # 75a6 <printf>
    4c78:	4505                	li	a0,1
    4c7a:	00002097          	auipc	ra,0x2
    4c7e:	3fe080e7          	jalr	1022(ra) # 7078 <exit>
    4c82:	00004517          	auipc	a0,0x4
    4c86:	76650513          	addi	a0,a0,1894 # 93e8 <longjmp_1+0x1aa0>
    4c8a:	00002097          	auipc	ra,0x2
    4c8e:	45e080e7          	jalr	1118(ra) # 70e8 <chdir>
    4c92:	87aa                	mv	a5,a0
    4c94:	c385                	beqz	a5,4cb4 <rmdot+0x70>
    4c96:	fe843583          	ld	a1,-24(s0)
    4c9a:	00004517          	auipc	a0,0x4
    4c9e:	76e50513          	addi	a0,a0,1902 # 9408 <longjmp_1+0x1ac0>
    4ca2:	00003097          	auipc	ra,0x3
    4ca6:	904080e7          	jalr	-1788(ra) # 75a6 <printf>
    4caa:	4505                	li	a0,1
    4cac:	00002097          	auipc	ra,0x2
    4cb0:	3cc080e7          	jalr	972(ra) # 7078 <exit>
    4cb4:	00004517          	auipc	a0,0x4
    4cb8:	d1c50513          	addi	a0,a0,-740 # 89d0 <longjmp_1+0x1088>
    4cbc:	00002097          	auipc	ra,0x2
    4cc0:	40c080e7          	jalr	1036(ra) # 70c8 <unlink>
    4cc4:	87aa                	mv	a5,a0
    4cc6:	e385                	bnez	a5,4ce6 <rmdot+0xa2>
    4cc8:	fe843583          	ld	a1,-24(s0)
    4ccc:	00004517          	auipc	a0,0x4
    4cd0:	75450513          	addi	a0,a0,1876 # 9420 <longjmp_1+0x1ad8>
    4cd4:	00003097          	auipc	ra,0x3
    4cd8:	8d2080e7          	jalr	-1838(ra) # 75a6 <printf>
    4cdc:	4505                	li	a0,1
    4cde:	00002097          	auipc	ra,0x2
    4ce2:	39a080e7          	jalr	922(ra) # 7078 <exit>
    4ce6:	00003517          	auipc	a0,0x3
    4cea:	7a250513          	addi	a0,a0,1954 # 8488 <longjmp_1+0xb40>
    4cee:	00002097          	auipc	ra,0x2
    4cf2:	3da080e7          	jalr	986(ra) # 70c8 <unlink>
    4cf6:	87aa                	mv	a5,a0
    4cf8:	e385                	bnez	a5,4d18 <rmdot+0xd4>
    4cfa:	fe843583          	ld	a1,-24(s0)
    4cfe:	00004517          	auipc	a0,0x4
    4d02:	73a50513          	addi	a0,a0,1850 # 9438 <longjmp_1+0x1af0>
    4d06:	00003097          	auipc	ra,0x3
    4d0a:	8a0080e7          	jalr	-1888(ra) # 75a6 <printf>
    4d0e:	4505                	li	a0,1
    4d10:	00002097          	auipc	ra,0x2
    4d14:	368080e7          	jalr	872(ra) # 7078 <exit>
    4d18:	00003517          	auipc	a0,0x3
    4d1c:	48850513          	addi	a0,a0,1160 # 81a0 <longjmp_1+0x858>
    4d20:	00002097          	auipc	ra,0x2
    4d24:	3c8080e7          	jalr	968(ra) # 70e8 <chdir>
    4d28:	87aa                	mv	a5,a0
    4d2a:	c385                	beqz	a5,4d4a <rmdot+0x106>
    4d2c:	fe843583          	ld	a1,-24(s0)
    4d30:	00003517          	auipc	a0,0x3
    4d34:	47850513          	addi	a0,a0,1144 # 81a8 <longjmp_1+0x860>
    4d38:	00003097          	auipc	ra,0x3
    4d3c:	86e080e7          	jalr	-1938(ra) # 75a6 <printf>
    4d40:	4505                	li	a0,1
    4d42:	00002097          	auipc	ra,0x2
    4d46:	336080e7          	jalr	822(ra) # 7078 <exit>
    4d4a:	00004517          	auipc	a0,0x4
    4d4e:	70650513          	addi	a0,a0,1798 # 9450 <longjmp_1+0x1b08>
    4d52:	00002097          	auipc	ra,0x2
    4d56:	376080e7          	jalr	886(ra) # 70c8 <unlink>
    4d5a:	87aa                	mv	a5,a0
    4d5c:	e385                	bnez	a5,4d7c <rmdot+0x138>
    4d5e:	fe843583          	ld	a1,-24(s0)
    4d62:	00004517          	auipc	a0,0x4
    4d66:	6f650513          	addi	a0,a0,1782 # 9458 <longjmp_1+0x1b10>
    4d6a:	00003097          	auipc	ra,0x3
    4d6e:	83c080e7          	jalr	-1988(ra) # 75a6 <printf>
    4d72:	4505                	li	a0,1
    4d74:	00002097          	auipc	ra,0x2
    4d78:	304080e7          	jalr	772(ra) # 7078 <exit>
    4d7c:	00004517          	auipc	a0,0x4
    4d80:	6fc50513          	addi	a0,a0,1788 # 9478 <longjmp_1+0x1b30>
    4d84:	00002097          	auipc	ra,0x2
    4d88:	344080e7          	jalr	836(ra) # 70c8 <unlink>
    4d8c:	87aa                	mv	a5,a0
    4d8e:	e385                	bnez	a5,4dae <rmdot+0x16a>
    4d90:	fe843583          	ld	a1,-24(s0)
    4d94:	00004517          	auipc	a0,0x4
    4d98:	6ec50513          	addi	a0,a0,1772 # 9480 <longjmp_1+0x1b38>
    4d9c:	00003097          	auipc	ra,0x3
    4da0:	80a080e7          	jalr	-2038(ra) # 75a6 <printf>
    4da4:	4505                	li	a0,1
    4da6:	00002097          	auipc	ra,0x2
    4daa:	2d2080e7          	jalr	722(ra) # 7078 <exit>
    4dae:	00004517          	auipc	a0,0x4
    4db2:	63a50513          	addi	a0,a0,1594 # 93e8 <longjmp_1+0x1aa0>
    4db6:	00002097          	auipc	ra,0x2
    4dba:	312080e7          	jalr	786(ra) # 70c8 <unlink>
    4dbe:	87aa                	mv	a5,a0
    4dc0:	c385                	beqz	a5,4de0 <rmdot+0x19c>
    4dc2:	fe843583          	ld	a1,-24(s0)
    4dc6:	00004517          	auipc	a0,0x4
    4dca:	6da50513          	addi	a0,a0,1754 # 94a0 <longjmp_1+0x1b58>
    4dce:	00002097          	auipc	ra,0x2
    4dd2:	7d8080e7          	jalr	2008(ra) # 75a6 <printf>
    4dd6:	4505                	li	a0,1
    4dd8:	00002097          	auipc	ra,0x2
    4ddc:	2a0080e7          	jalr	672(ra) # 7078 <exit>
    4de0:	0001                	nop
    4de2:	60e2                	ld	ra,24(sp)
    4de4:	6442                	ld	s0,16(sp)
    4de6:	6105                	addi	sp,sp,32
    4de8:	8082                	ret

0000000000004dea <dirfile>:
    4dea:	7179                	addi	sp,sp,-48
    4dec:	f406                	sd	ra,40(sp)
    4dee:	f022                	sd	s0,32(sp)
    4df0:	1800                	addi	s0,sp,48
    4df2:	fca43c23          	sd	a0,-40(s0)
    4df6:	20000593          	li	a1,512
    4dfa:	00003517          	auipc	a0,0x3
    4dfe:	e4e50513          	addi	a0,a0,-434 # 7c48 <longjmp_1+0x300>
    4e02:	00002097          	auipc	ra,0x2
    4e06:	2b6080e7          	jalr	694(ra) # 70b8 <open>
    4e0a:	87aa                	mv	a5,a0
    4e0c:	fef42623          	sw	a5,-20(s0)
    4e10:	fec42783          	lw	a5,-20(s0)
    4e14:	2781                	sext.w	a5,a5
    4e16:	0207d163          	bgez	a5,4e38 <dirfile+0x4e>
    4e1a:	fd843583          	ld	a1,-40(s0)
    4e1e:	00004517          	auipc	a0,0x4
    4e22:	6a250513          	addi	a0,a0,1698 # 94c0 <longjmp_1+0x1b78>
    4e26:	00002097          	auipc	ra,0x2
    4e2a:	780080e7          	jalr	1920(ra) # 75a6 <printf>
    4e2e:	4505                	li	a0,1
    4e30:	00002097          	auipc	ra,0x2
    4e34:	248080e7          	jalr	584(ra) # 7078 <exit>
    4e38:	fec42783          	lw	a5,-20(s0)
    4e3c:	853e                	mv	a0,a5
    4e3e:	00002097          	auipc	ra,0x2
    4e42:	262080e7          	jalr	610(ra) # 70a0 <close>
    4e46:	00003517          	auipc	a0,0x3
    4e4a:	e0250513          	addi	a0,a0,-510 # 7c48 <longjmp_1+0x300>
    4e4e:	00002097          	auipc	ra,0x2
    4e52:	29a080e7          	jalr	666(ra) # 70e8 <chdir>
    4e56:	87aa                	mv	a5,a0
    4e58:	e385                	bnez	a5,4e78 <dirfile+0x8e>
    4e5a:	fd843583          	ld	a1,-40(s0)
    4e5e:	00004517          	auipc	a0,0x4
    4e62:	68250513          	addi	a0,a0,1666 # 94e0 <longjmp_1+0x1b98>
    4e66:	00002097          	auipc	ra,0x2
    4e6a:	740080e7          	jalr	1856(ra) # 75a6 <printf>
    4e6e:	4505                	li	a0,1
    4e70:	00002097          	auipc	ra,0x2
    4e74:	208080e7          	jalr	520(ra) # 7078 <exit>
    4e78:	4581                	li	a1,0
    4e7a:	00004517          	auipc	a0,0x4
    4e7e:	68650513          	addi	a0,a0,1670 # 9500 <longjmp_1+0x1bb8>
    4e82:	00002097          	auipc	ra,0x2
    4e86:	236080e7          	jalr	566(ra) # 70b8 <open>
    4e8a:	87aa                	mv	a5,a0
    4e8c:	fef42623          	sw	a5,-20(s0)
    4e90:	fec42783          	lw	a5,-20(s0)
    4e94:	2781                	sext.w	a5,a5
    4e96:	0207c163          	bltz	a5,4eb8 <dirfile+0xce>
    4e9a:	fd843583          	ld	a1,-40(s0)
    4e9e:	00004517          	auipc	a0,0x4
    4ea2:	67250513          	addi	a0,a0,1650 # 9510 <longjmp_1+0x1bc8>
    4ea6:	00002097          	auipc	ra,0x2
    4eaa:	700080e7          	jalr	1792(ra) # 75a6 <printf>
    4eae:	4505                	li	a0,1
    4eb0:	00002097          	auipc	ra,0x2
    4eb4:	1c8080e7          	jalr	456(ra) # 7078 <exit>
    4eb8:	20000593          	li	a1,512
    4ebc:	00004517          	auipc	a0,0x4
    4ec0:	64450513          	addi	a0,a0,1604 # 9500 <longjmp_1+0x1bb8>
    4ec4:	00002097          	auipc	ra,0x2
    4ec8:	1f4080e7          	jalr	500(ra) # 70b8 <open>
    4ecc:	87aa                	mv	a5,a0
    4ece:	fef42623          	sw	a5,-20(s0)
    4ed2:	fec42783          	lw	a5,-20(s0)
    4ed6:	2781                	sext.w	a5,a5
    4ed8:	0207c163          	bltz	a5,4efa <dirfile+0x110>
    4edc:	fd843583          	ld	a1,-40(s0)
    4ee0:	00004517          	auipc	a0,0x4
    4ee4:	63050513          	addi	a0,a0,1584 # 9510 <longjmp_1+0x1bc8>
    4ee8:	00002097          	auipc	ra,0x2
    4eec:	6be080e7          	jalr	1726(ra) # 75a6 <printf>
    4ef0:	4505                	li	a0,1
    4ef2:	00002097          	auipc	ra,0x2
    4ef6:	186080e7          	jalr	390(ra) # 7078 <exit>
    4efa:	00004517          	auipc	a0,0x4
    4efe:	60650513          	addi	a0,a0,1542 # 9500 <longjmp_1+0x1bb8>
    4f02:	00002097          	auipc	ra,0x2
    4f06:	1de080e7          	jalr	478(ra) # 70e0 <mkdir>
    4f0a:	87aa                	mv	a5,a0
    4f0c:	e385                	bnez	a5,4f2c <dirfile+0x142>
    4f0e:	fd843583          	ld	a1,-40(s0)
    4f12:	00004517          	auipc	a0,0x4
    4f16:	62650513          	addi	a0,a0,1574 # 9538 <longjmp_1+0x1bf0>
    4f1a:	00002097          	auipc	ra,0x2
    4f1e:	68c080e7          	jalr	1676(ra) # 75a6 <printf>
    4f22:	4505                	li	a0,1
    4f24:	00002097          	auipc	ra,0x2
    4f28:	154080e7          	jalr	340(ra) # 7078 <exit>
    4f2c:	00004517          	auipc	a0,0x4
    4f30:	5d450513          	addi	a0,a0,1492 # 9500 <longjmp_1+0x1bb8>
    4f34:	00002097          	auipc	ra,0x2
    4f38:	194080e7          	jalr	404(ra) # 70c8 <unlink>
    4f3c:	87aa                	mv	a5,a0
    4f3e:	e385                	bnez	a5,4f5e <dirfile+0x174>
    4f40:	fd843583          	ld	a1,-40(s0)
    4f44:	00004517          	auipc	a0,0x4
    4f48:	61c50513          	addi	a0,a0,1564 # 9560 <longjmp_1+0x1c18>
    4f4c:	00002097          	auipc	ra,0x2
    4f50:	65a080e7          	jalr	1626(ra) # 75a6 <printf>
    4f54:	4505                	li	a0,1
    4f56:	00002097          	auipc	ra,0x2
    4f5a:	122080e7          	jalr	290(ra) # 7078 <exit>
    4f5e:	00004597          	auipc	a1,0x4
    4f62:	5a258593          	addi	a1,a1,1442 # 9500 <longjmp_1+0x1bb8>
    4f66:	00003517          	auipc	a0,0x3
    4f6a:	dca50513          	addi	a0,a0,-566 # 7d30 <longjmp_1+0x3e8>
    4f6e:	00002097          	auipc	ra,0x2
    4f72:	16a080e7          	jalr	362(ra) # 70d8 <link>
    4f76:	87aa                	mv	a5,a0
    4f78:	e385                	bnez	a5,4f98 <dirfile+0x1ae>
    4f7a:	fd843583          	ld	a1,-40(s0)
    4f7e:	00004517          	auipc	a0,0x4
    4f82:	60a50513          	addi	a0,a0,1546 # 9588 <longjmp_1+0x1c40>
    4f86:	00002097          	auipc	ra,0x2
    4f8a:	620080e7          	jalr	1568(ra) # 75a6 <printf>
    4f8e:	4505                	li	a0,1
    4f90:	00002097          	auipc	ra,0x2
    4f94:	0e8080e7          	jalr	232(ra) # 7078 <exit>
    4f98:	00003517          	auipc	a0,0x3
    4f9c:	cb050513          	addi	a0,a0,-848 # 7c48 <longjmp_1+0x300>
    4fa0:	00002097          	auipc	ra,0x2
    4fa4:	128080e7          	jalr	296(ra) # 70c8 <unlink>
    4fa8:	87aa                	mv	a5,a0
    4faa:	c385                	beqz	a5,4fca <dirfile+0x1e0>
    4fac:	fd843583          	ld	a1,-40(s0)
    4fb0:	00004517          	auipc	a0,0x4
    4fb4:	60050513          	addi	a0,a0,1536 # 95b0 <longjmp_1+0x1c68>
    4fb8:	00002097          	auipc	ra,0x2
    4fbc:	5ee080e7          	jalr	1518(ra) # 75a6 <printf>
    4fc0:	4505                	li	a0,1
    4fc2:	00002097          	auipc	ra,0x2
    4fc6:	0b6080e7          	jalr	182(ra) # 7078 <exit>
    4fca:	4589                	li	a1,2
    4fcc:	00004517          	auipc	a0,0x4
    4fd0:	a0450513          	addi	a0,a0,-1532 # 89d0 <longjmp_1+0x1088>
    4fd4:	00002097          	auipc	ra,0x2
    4fd8:	0e4080e7          	jalr	228(ra) # 70b8 <open>
    4fdc:	87aa                	mv	a5,a0
    4fde:	fef42623          	sw	a5,-20(s0)
    4fe2:	fec42783          	lw	a5,-20(s0)
    4fe6:	2781                	sext.w	a5,a5
    4fe8:	0207c163          	bltz	a5,500a <dirfile+0x220>
    4fec:	fd843583          	ld	a1,-40(s0)
    4ff0:	00004517          	auipc	a0,0x4
    4ff4:	5e050513          	addi	a0,a0,1504 # 95d0 <longjmp_1+0x1c88>
    4ff8:	00002097          	auipc	ra,0x2
    4ffc:	5ae080e7          	jalr	1454(ra) # 75a6 <printf>
    5000:	4505                	li	a0,1
    5002:	00002097          	auipc	ra,0x2
    5006:	076080e7          	jalr	118(ra) # 7078 <exit>
    500a:	4581                	li	a1,0
    500c:	00004517          	auipc	a0,0x4
    5010:	9c450513          	addi	a0,a0,-1596 # 89d0 <longjmp_1+0x1088>
    5014:	00002097          	auipc	ra,0x2
    5018:	0a4080e7          	jalr	164(ra) # 70b8 <open>
    501c:	87aa                	mv	a5,a0
    501e:	fef42623          	sw	a5,-20(s0)
    5022:	fec42783          	lw	a5,-20(s0)
    5026:	4605                	li	a2,1
    5028:	00003597          	auipc	a1,0x3
    502c:	d5858593          	addi	a1,a1,-680 # 7d80 <longjmp_1+0x438>
    5030:	853e                	mv	a0,a5
    5032:	00002097          	auipc	ra,0x2
    5036:	066080e7          	jalr	102(ra) # 7098 <write>
    503a:	87aa                	mv	a5,a0
    503c:	02f05163          	blez	a5,505e <dirfile+0x274>
    5040:	fd843583          	ld	a1,-40(s0)
    5044:	00004517          	auipc	a0,0x4
    5048:	5b450513          	addi	a0,a0,1460 # 95f8 <longjmp_1+0x1cb0>
    504c:	00002097          	auipc	ra,0x2
    5050:	55a080e7          	jalr	1370(ra) # 75a6 <printf>
    5054:	4505                	li	a0,1
    5056:	00002097          	auipc	ra,0x2
    505a:	022080e7          	jalr	34(ra) # 7078 <exit>
    505e:	fec42783          	lw	a5,-20(s0)
    5062:	853e                	mv	a0,a5
    5064:	00002097          	auipc	ra,0x2
    5068:	03c080e7          	jalr	60(ra) # 70a0 <close>
    506c:	0001                	nop
    506e:	70a2                	ld	ra,40(sp)
    5070:	7402                	ld	s0,32(sp)
    5072:	6145                	addi	sp,sp,48
    5074:	8082                	ret

0000000000005076 <iref>:
    5076:	7179                	addi	sp,sp,-48
    5078:	f406                	sd	ra,40(sp)
    507a:	f022                	sd	s0,32(sp)
    507c:	1800                	addi	s0,sp,48
    507e:	fca43c23          	sd	a0,-40(s0)
    5082:	fe042623          	sw	zero,-20(s0)
    5086:	a231                	j	5192 <iref+0x11c>
    5088:	00004517          	auipc	a0,0x4
    508c:	58850513          	addi	a0,a0,1416 # 9610 <longjmp_1+0x1cc8>
    5090:	00002097          	auipc	ra,0x2
    5094:	050080e7          	jalr	80(ra) # 70e0 <mkdir>
    5098:	87aa                	mv	a5,a0
    509a:	c385                	beqz	a5,50ba <iref+0x44>
    509c:	fd843583          	ld	a1,-40(s0)
    50a0:	00004517          	auipc	a0,0x4
    50a4:	57850513          	addi	a0,a0,1400 # 9618 <longjmp_1+0x1cd0>
    50a8:	00002097          	auipc	ra,0x2
    50ac:	4fe080e7          	jalr	1278(ra) # 75a6 <printf>
    50b0:	4505                	li	a0,1
    50b2:	00002097          	auipc	ra,0x2
    50b6:	fc6080e7          	jalr	-58(ra) # 7078 <exit>
    50ba:	00004517          	auipc	a0,0x4
    50be:	55650513          	addi	a0,a0,1366 # 9610 <longjmp_1+0x1cc8>
    50c2:	00002097          	auipc	ra,0x2
    50c6:	026080e7          	jalr	38(ra) # 70e8 <chdir>
    50ca:	87aa                	mv	a5,a0
    50cc:	c385                	beqz	a5,50ec <iref+0x76>
    50ce:	fd843583          	ld	a1,-40(s0)
    50d2:	00004517          	auipc	a0,0x4
    50d6:	55e50513          	addi	a0,a0,1374 # 9630 <longjmp_1+0x1ce8>
    50da:	00002097          	auipc	ra,0x2
    50de:	4cc080e7          	jalr	1228(ra) # 75a6 <printf>
    50e2:	4505                	li	a0,1
    50e4:	00002097          	auipc	ra,0x2
    50e8:	f94080e7          	jalr	-108(ra) # 7078 <exit>
    50ec:	00004517          	auipc	a0,0x4
    50f0:	55c50513          	addi	a0,a0,1372 # 9648 <longjmp_1+0x1d00>
    50f4:	00002097          	auipc	ra,0x2
    50f8:	fec080e7          	jalr	-20(ra) # 70e0 <mkdir>
    50fc:	00004597          	auipc	a1,0x4
    5100:	54c58593          	addi	a1,a1,1356 # 9648 <longjmp_1+0x1d00>
    5104:	00003517          	auipc	a0,0x3
    5108:	c2c50513          	addi	a0,a0,-980 # 7d30 <longjmp_1+0x3e8>
    510c:	00002097          	auipc	ra,0x2
    5110:	fcc080e7          	jalr	-52(ra) # 70d8 <link>
    5114:	20000593          	li	a1,512
    5118:	00004517          	auipc	a0,0x4
    511c:	53050513          	addi	a0,a0,1328 # 9648 <longjmp_1+0x1d00>
    5120:	00002097          	auipc	ra,0x2
    5124:	f98080e7          	jalr	-104(ra) # 70b8 <open>
    5128:	87aa                	mv	a5,a0
    512a:	fef42423          	sw	a5,-24(s0)
    512e:	fe842783          	lw	a5,-24(s0)
    5132:	2781                	sext.w	a5,a5
    5134:	0007c963          	bltz	a5,5146 <iref+0xd0>
    5138:	fe842783          	lw	a5,-24(s0)
    513c:	853e                	mv	a0,a5
    513e:	00002097          	auipc	ra,0x2
    5142:	f62080e7          	jalr	-158(ra) # 70a0 <close>
    5146:	20000593          	li	a1,512
    514a:	00003517          	auipc	a0,0x3
    514e:	d0e50513          	addi	a0,a0,-754 # 7e58 <longjmp_1+0x510>
    5152:	00002097          	auipc	ra,0x2
    5156:	f66080e7          	jalr	-154(ra) # 70b8 <open>
    515a:	87aa                	mv	a5,a0
    515c:	fef42423          	sw	a5,-24(s0)
    5160:	fe842783          	lw	a5,-24(s0)
    5164:	2781                	sext.w	a5,a5
    5166:	0007c963          	bltz	a5,5178 <iref+0x102>
    516a:	fe842783          	lw	a5,-24(s0)
    516e:	853e                	mv	a0,a5
    5170:	00002097          	auipc	ra,0x2
    5174:	f30080e7          	jalr	-208(ra) # 70a0 <close>
    5178:	00003517          	auipc	a0,0x3
    517c:	ce050513          	addi	a0,a0,-800 # 7e58 <longjmp_1+0x510>
    5180:	00002097          	auipc	ra,0x2
    5184:	f48080e7          	jalr	-184(ra) # 70c8 <unlink>
    5188:	fec42783          	lw	a5,-20(s0)
    518c:	2785                	addiw	a5,a5,1
    518e:	fef42623          	sw	a5,-20(s0)
    5192:	fec42783          	lw	a5,-20(s0)
    5196:	0007871b          	sext.w	a4,a5
    519a:	03200793          	li	a5,50
    519e:	eee7d5e3          	bge	a5,a4,5088 <iref+0x12>
    51a2:	fe042623          	sw	zero,-20(s0)
    51a6:	a035                	j	51d2 <iref+0x15c>
    51a8:	00003517          	auipc	a0,0x3
    51ac:	2e050513          	addi	a0,a0,736 # 8488 <longjmp_1+0xb40>
    51b0:	00002097          	auipc	ra,0x2
    51b4:	f38080e7          	jalr	-200(ra) # 70e8 <chdir>
    51b8:	00004517          	auipc	a0,0x4
    51bc:	45850513          	addi	a0,a0,1112 # 9610 <longjmp_1+0x1cc8>
    51c0:	00002097          	auipc	ra,0x2
    51c4:	f08080e7          	jalr	-248(ra) # 70c8 <unlink>
    51c8:	fec42783          	lw	a5,-20(s0)
    51cc:	2785                	addiw	a5,a5,1
    51ce:	fef42623          	sw	a5,-20(s0)
    51d2:	fec42783          	lw	a5,-20(s0)
    51d6:	0007871b          	sext.w	a4,a5
    51da:	03200793          	li	a5,50
    51de:	fce7d5e3          	bge	a5,a4,51a8 <iref+0x132>
    51e2:	00003517          	auipc	a0,0x3
    51e6:	fbe50513          	addi	a0,a0,-66 # 81a0 <longjmp_1+0x858>
    51ea:	00002097          	auipc	ra,0x2
    51ee:	efe080e7          	jalr	-258(ra) # 70e8 <chdir>
    51f2:	0001                	nop
    51f4:	70a2                	ld	ra,40(sp)
    51f6:	7402                	ld	s0,32(sp)
    51f8:	6145                	addi	sp,sp,48
    51fa:	8082                	ret

00000000000051fc <forktest>:
    51fc:	7179                	addi	sp,sp,-48
    51fe:	f406                	sd	ra,40(sp)
    5200:	f022                	sd	s0,32(sp)
    5202:	1800                	addi	s0,sp,48
    5204:	fca43c23          	sd	a0,-40(s0)
    5208:	fe042623          	sw	zero,-20(s0)
    520c:	a81d                	j	5242 <forktest+0x46>
    520e:	00002097          	auipc	ra,0x2
    5212:	e62080e7          	jalr	-414(ra) # 7070 <fork>
    5216:	87aa                	mv	a5,a0
    5218:	fef42423          	sw	a5,-24(s0)
    521c:	fe842783          	lw	a5,-24(s0)
    5220:	2781                	sext.w	a5,a5
    5222:	0207c963          	bltz	a5,5254 <forktest+0x58>
    5226:	fe842783          	lw	a5,-24(s0)
    522a:	2781                	sext.w	a5,a5
    522c:	e791                	bnez	a5,5238 <forktest+0x3c>
    522e:	4501                	li	a0,0
    5230:	00002097          	auipc	ra,0x2
    5234:	e48080e7          	jalr	-440(ra) # 7078 <exit>
    5238:	fec42783          	lw	a5,-20(s0)
    523c:	2785                	addiw	a5,a5,1
    523e:	fef42623          	sw	a5,-20(s0)
    5242:	fec42783          	lw	a5,-20(s0)
    5246:	0007871b          	sext.w	a4,a5
    524a:	3e700793          	li	a5,999
    524e:	fce7d0e3          	bge	a5,a4,520e <forktest+0x12>
    5252:	a011                	j	5256 <forktest+0x5a>
    5254:	0001                	nop
    5256:	fec42783          	lw	a5,-20(s0)
    525a:	2781                	sext.w	a5,a5
    525c:	e385                	bnez	a5,527c <forktest+0x80>
    525e:	fd843583          	ld	a1,-40(s0)
    5262:	00004517          	auipc	a0,0x4
    5266:	3ee50513          	addi	a0,a0,1006 # 9650 <longjmp_1+0x1d08>
    526a:	00002097          	auipc	ra,0x2
    526e:	33c080e7          	jalr	828(ra) # 75a6 <printf>
    5272:	4505                	li	a0,1
    5274:	00002097          	auipc	ra,0x2
    5278:	e04080e7          	jalr	-508(ra) # 7078 <exit>
    527c:	fec42783          	lw	a5,-20(s0)
    5280:	0007871b          	sext.w	a4,a5
    5284:	3e800793          	li	a5,1000
    5288:	04f71d63          	bne	a4,a5,52e2 <forktest+0xe6>
    528c:	fd843583          	ld	a1,-40(s0)
    5290:	00004517          	auipc	a0,0x4
    5294:	3d850513          	addi	a0,a0,984 # 9668 <longjmp_1+0x1d20>
    5298:	00002097          	auipc	ra,0x2
    529c:	30e080e7          	jalr	782(ra) # 75a6 <printf>
    52a0:	4505                	li	a0,1
    52a2:	00002097          	auipc	ra,0x2
    52a6:	dd6080e7          	jalr	-554(ra) # 7078 <exit>
    52aa:	4501                	li	a0,0
    52ac:	00002097          	auipc	ra,0x2
    52b0:	dd4080e7          	jalr	-556(ra) # 7080 <wait>
    52b4:	87aa                	mv	a5,a0
    52b6:	0207d163          	bgez	a5,52d8 <forktest+0xdc>
    52ba:	fd843583          	ld	a1,-40(s0)
    52be:	00004517          	auipc	a0,0x4
    52c2:	3d250513          	addi	a0,a0,978 # 9690 <longjmp_1+0x1d48>
    52c6:	00002097          	auipc	ra,0x2
    52ca:	2e0080e7          	jalr	736(ra) # 75a6 <printf>
    52ce:	4505                	li	a0,1
    52d0:	00002097          	auipc	ra,0x2
    52d4:	da8080e7          	jalr	-600(ra) # 7078 <exit>
    52d8:	fec42783          	lw	a5,-20(s0)
    52dc:	37fd                	addiw	a5,a5,-1
    52de:	fef42623          	sw	a5,-20(s0)
    52e2:	fec42783          	lw	a5,-20(s0)
    52e6:	2781                	sext.w	a5,a5
    52e8:	fcf041e3          	bgtz	a5,52aa <forktest+0xae>
    52ec:	4501                	li	a0,0
    52ee:	00002097          	auipc	ra,0x2
    52f2:	d92080e7          	jalr	-622(ra) # 7080 <wait>
    52f6:	87aa                	mv	a5,a0
    52f8:	873e                	mv	a4,a5
    52fa:	57fd                	li	a5,-1
    52fc:	02f70163          	beq	a4,a5,531e <forktest+0x122>
    5300:	fd843583          	ld	a1,-40(s0)
    5304:	00004517          	auipc	a0,0x4
    5308:	3a450513          	addi	a0,a0,932 # 96a8 <longjmp_1+0x1d60>
    530c:	00002097          	auipc	ra,0x2
    5310:	29a080e7          	jalr	666(ra) # 75a6 <printf>
    5314:	4505                	li	a0,1
    5316:	00002097          	auipc	ra,0x2
    531a:	d62080e7          	jalr	-670(ra) # 7078 <exit>
    531e:	0001                	nop
    5320:	70a2                	ld	ra,40(sp)
    5322:	7402                	ld	s0,32(sp)
    5324:	6145                	addi	sp,sp,48
    5326:	8082                	ret

0000000000005328 <sbrkbasic>:
    5328:	715d                	addi	sp,sp,-80
    532a:	e486                	sd	ra,72(sp)
    532c:	e0a2                	sd	s0,64(sp)
    532e:	0880                	addi	s0,sp,80
    5330:	faa43c23          	sd	a0,-72(s0)
    5334:	00002097          	auipc	ra,0x2
    5338:	d3c080e7          	jalr	-708(ra) # 7070 <fork>
    533c:	87aa                	mv	a5,a0
    533e:	fcf42a23          	sw	a5,-44(s0)
    5342:	fd442783          	lw	a5,-44(s0)
    5346:	2781                	sext.w	a5,a5
    5348:	0007df63          	bgez	a5,5366 <sbrkbasic+0x3e>
    534c:	00004517          	auipc	a0,0x4
    5350:	37450513          	addi	a0,a0,884 # 96c0 <longjmp_1+0x1d78>
    5354:	00002097          	auipc	ra,0x2
    5358:	252080e7          	jalr	594(ra) # 75a6 <printf>
    535c:	4505                	li	a0,1
    535e:	00002097          	auipc	ra,0x2
    5362:	d1a080e7          	jalr	-742(ra) # 7078 <exit>
    5366:	fd442783          	lw	a5,-44(s0)
    536a:	2781                	sext.w	a5,a5
    536c:	e3b5                	bnez	a5,53d0 <sbrkbasic+0xa8>
    536e:	40000537          	lui	a0,0x40000
    5372:	00002097          	auipc	ra,0x2
    5376:	d8e080e7          	jalr	-626(ra) # 7100 <sbrk>
    537a:	fea43023          	sd	a0,-32(s0)
    537e:	fe043703          	ld	a4,-32(s0)
    5382:	57fd                	li	a5,-1
    5384:	00f71763          	bne	a4,a5,5392 <sbrkbasic+0x6a>
    5388:	4501                	li	a0,0
    538a:	00002097          	auipc	ra,0x2
    538e:	cee080e7          	jalr	-786(ra) # 7078 <exit>
    5392:	fe043783          	ld	a5,-32(s0)
    5396:	fcf43c23          	sd	a5,-40(s0)
    539a:	a829                	j	53b4 <sbrkbasic+0x8c>
    539c:	fd843783          	ld	a5,-40(s0)
    53a0:	06300713          	li	a4,99
    53a4:	00e78023          	sb	a4,0(a5)
    53a8:	fd843703          	ld	a4,-40(s0)
    53ac:	6785                	lui	a5,0x1
    53ae:	97ba                	add	a5,a5,a4
    53b0:	fcf43c23          	sd	a5,-40(s0)
    53b4:	fe043703          	ld	a4,-32(s0)
    53b8:	400007b7          	lui	a5,0x40000
    53bc:	97ba                	add	a5,a5,a4
    53be:	fd843703          	ld	a4,-40(s0)
    53c2:	fcf76de3          	bltu	a4,a5,539c <sbrkbasic+0x74>
    53c6:	4505                	li	a0,1
    53c8:	00002097          	auipc	ra,0x2
    53cc:	cb0080e7          	jalr	-848(ra) # 7078 <exit>
    53d0:	fc440793          	addi	a5,s0,-60
    53d4:	853e                	mv	a0,a5
    53d6:	00002097          	auipc	ra,0x2
    53da:	caa080e7          	jalr	-854(ra) # 7080 <wait>
    53de:	fc442783          	lw	a5,-60(s0)
    53e2:	873e                	mv	a4,a5
    53e4:	4785                	li	a5,1
    53e6:	02f71163          	bne	a4,a5,5408 <sbrkbasic+0xe0>
    53ea:	fb843583          	ld	a1,-72(s0)
    53ee:	00004517          	auipc	a0,0x4
    53f2:	2f250513          	addi	a0,a0,754 # 96e0 <longjmp_1+0x1d98>
    53f6:	00002097          	auipc	ra,0x2
    53fa:	1b0080e7          	jalr	432(ra) # 75a6 <printf>
    53fe:	4505                	li	a0,1
    5400:	00002097          	auipc	ra,0x2
    5404:	c78080e7          	jalr	-904(ra) # 7078 <exit>
    5408:	4501                	li	a0,0
    540a:	00002097          	auipc	ra,0x2
    540e:	cf6080e7          	jalr	-778(ra) # 7100 <sbrk>
    5412:	fea43023          	sd	a0,-32(s0)
    5416:	fe042623          	sw	zero,-20(s0)
    541a:	a08d                	j	547c <sbrkbasic+0x154>
    541c:	4505                	li	a0,1
    541e:	00002097          	auipc	ra,0x2
    5422:	ce2080e7          	jalr	-798(ra) # 7100 <sbrk>
    5426:	fca43c23          	sd	a0,-40(s0)
    542a:	fd843703          	ld	a4,-40(s0)
    542e:	fe043783          	ld	a5,-32(s0)
    5432:	02f70663          	beq	a4,a5,545e <sbrkbasic+0x136>
    5436:	fec42783          	lw	a5,-20(s0)
    543a:	fd843683          	ld	a3,-40(s0)
    543e:	fe043603          	ld	a2,-32(s0)
    5442:	85be                	mv	a1,a5
    5444:	00004517          	auipc	a0,0x4
    5448:	2bc50513          	addi	a0,a0,700 # 9700 <longjmp_1+0x1db8>
    544c:	00002097          	auipc	ra,0x2
    5450:	15a080e7          	jalr	346(ra) # 75a6 <printf>
    5454:	4505                	li	a0,1
    5456:	00002097          	auipc	ra,0x2
    545a:	c22080e7          	jalr	-990(ra) # 7078 <exit>
    545e:	fd843783          	ld	a5,-40(s0)
    5462:	4705                	li	a4,1
    5464:	00e78023          	sb	a4,0(a5) # 40000000 <__BSS_END__+0x3ffef6d8>
    5468:	fd843783          	ld	a5,-40(s0)
    546c:	0785                	addi	a5,a5,1
    546e:	fef43023          	sd	a5,-32(s0)
    5472:	fec42783          	lw	a5,-20(s0)
    5476:	2785                	addiw	a5,a5,1
    5478:	fef42623          	sw	a5,-20(s0)
    547c:	fec42783          	lw	a5,-20(s0)
    5480:	0007871b          	sext.w	a4,a5
    5484:	6785                	lui	a5,0x1
    5486:	38778793          	addi	a5,a5,903 # 1387 <openiputtest+0xe1>
    548a:	f8e7d9e3          	bge	a5,a4,541c <sbrkbasic+0xf4>
    548e:	00002097          	auipc	ra,0x2
    5492:	be2080e7          	jalr	-1054(ra) # 7070 <fork>
    5496:	87aa                	mv	a5,a0
    5498:	fcf42a23          	sw	a5,-44(s0)
    549c:	fd442783          	lw	a5,-44(s0)
    54a0:	2781                	sext.w	a5,a5
    54a2:	0207d163          	bgez	a5,54c4 <sbrkbasic+0x19c>
    54a6:	fb843583          	ld	a1,-72(s0)
    54aa:	00004517          	auipc	a0,0x4
    54ae:	27650513          	addi	a0,a0,630 # 9720 <longjmp_1+0x1dd8>
    54b2:	00002097          	auipc	ra,0x2
    54b6:	0f4080e7          	jalr	244(ra) # 75a6 <printf>
    54ba:	4505                	li	a0,1
    54bc:	00002097          	auipc	ra,0x2
    54c0:	bbc080e7          	jalr	-1092(ra) # 7078 <exit>
    54c4:	4505                	li	a0,1
    54c6:	00002097          	auipc	ra,0x2
    54ca:	c3a080e7          	jalr	-966(ra) # 7100 <sbrk>
    54ce:	fca43423          	sd	a0,-56(s0)
    54d2:	4505                	li	a0,1
    54d4:	00002097          	auipc	ra,0x2
    54d8:	c2c080e7          	jalr	-980(ra) # 7100 <sbrk>
    54dc:	fca43423          	sd	a0,-56(s0)
    54e0:	fe043783          	ld	a5,-32(s0)
    54e4:	0785                	addi	a5,a5,1
    54e6:	fc843703          	ld	a4,-56(s0)
    54ea:	02f70163          	beq	a4,a5,550c <sbrkbasic+0x1e4>
    54ee:	fb843583          	ld	a1,-72(s0)
    54f2:	00004517          	auipc	a0,0x4
    54f6:	24e50513          	addi	a0,a0,590 # 9740 <longjmp_1+0x1df8>
    54fa:	00002097          	auipc	ra,0x2
    54fe:	0ac080e7          	jalr	172(ra) # 75a6 <printf>
    5502:	4505                	li	a0,1
    5504:	00002097          	auipc	ra,0x2
    5508:	b74080e7          	jalr	-1164(ra) # 7078 <exit>
    550c:	fd442783          	lw	a5,-44(s0)
    5510:	2781                	sext.w	a5,a5
    5512:	e791                	bnez	a5,551e <sbrkbasic+0x1f6>
    5514:	4501                	li	a0,0
    5516:	00002097          	auipc	ra,0x2
    551a:	b62080e7          	jalr	-1182(ra) # 7078 <exit>
    551e:	fc440793          	addi	a5,s0,-60
    5522:	853e                	mv	a0,a5
    5524:	00002097          	auipc	ra,0x2
    5528:	b5c080e7          	jalr	-1188(ra) # 7080 <wait>
    552c:	fc442783          	lw	a5,-60(s0)
    5530:	853e                	mv	a0,a5
    5532:	00002097          	auipc	ra,0x2
    5536:	b46080e7          	jalr	-1210(ra) # 7078 <exit>

000000000000553a <sbrkmuch>:
    553a:	711d                	addi	sp,sp,-96
    553c:	ec86                	sd	ra,88(sp)
    553e:	e8a2                	sd	s0,80(sp)
    5540:	1080                	addi	s0,sp,96
    5542:	faa43423          	sd	a0,-88(s0)
    5546:	4501                	li	a0,0
    5548:	00002097          	auipc	ra,0x2
    554c:	bb8080e7          	jalr	-1096(ra) # 7100 <sbrk>
    5550:	fea43023          	sd	a0,-32(s0)
    5554:	4501                	li	a0,0
    5556:	00002097          	auipc	ra,0x2
    555a:	baa080e7          	jalr	-1110(ra) # 7100 <sbrk>
    555e:	fca43c23          	sd	a0,-40(s0)
    5562:	fd843783          	ld	a5,-40(s0)
    5566:	06400737          	lui	a4,0x6400
    556a:	40f707b3          	sub	a5,a4,a5
    556e:	fcf43823          	sd	a5,-48(s0)
    5572:	fd043783          	ld	a5,-48(s0)
    5576:	2781                	sext.w	a5,a5
    5578:	853e                	mv	a0,a5
    557a:	00002097          	auipc	ra,0x2
    557e:	b86080e7          	jalr	-1146(ra) # 7100 <sbrk>
    5582:	fca43423          	sd	a0,-56(s0)
    5586:	fc843703          	ld	a4,-56(s0)
    558a:	fd843783          	ld	a5,-40(s0)
    558e:	02f70163          	beq	a4,a5,55b0 <sbrkmuch+0x76>
    5592:	fa843583          	ld	a1,-88(s0)
    5596:	00004517          	auipc	a0,0x4
    559a:	1ca50513          	addi	a0,a0,458 # 9760 <longjmp_1+0x1e18>
    559e:	00002097          	auipc	ra,0x2
    55a2:	008080e7          	jalr	8(ra) # 75a6 <printf>
    55a6:	4505                	li	a0,1
    55a8:	00002097          	auipc	ra,0x2
    55ac:	ad0080e7          	jalr	-1328(ra) # 7078 <exit>
    55b0:	4501                	li	a0,0
    55b2:	00002097          	auipc	ra,0x2
    55b6:	b4e080e7          	jalr	-1202(ra) # 7100 <sbrk>
    55ba:	fca43023          	sd	a0,-64(s0)
    55be:	fd843783          	ld	a5,-40(s0)
    55c2:	fef43423          	sd	a5,-24(s0)
    55c6:	a821                	j	55de <sbrkmuch+0xa4>
    55c8:	fe843783          	ld	a5,-24(s0)
    55cc:	4705                	li	a4,1
    55ce:	00e78023          	sb	a4,0(a5)
    55d2:	fe843703          	ld	a4,-24(s0)
    55d6:	6785                	lui	a5,0x1
    55d8:	97ba                	add	a5,a5,a4
    55da:	fef43423          	sd	a5,-24(s0)
    55de:	fe843703          	ld	a4,-24(s0)
    55e2:	fc043783          	ld	a5,-64(s0)
    55e6:	fef761e3          	bltu	a4,a5,55c8 <sbrkmuch+0x8e>
    55ea:	064007b7          	lui	a5,0x6400
    55ee:	17fd                	addi	a5,a5,-1
    55f0:	faf43c23          	sd	a5,-72(s0)
    55f4:	fb843783          	ld	a5,-72(s0)
    55f8:	06300713          	li	a4,99
    55fc:	00e78023          	sb	a4,0(a5) # 6400000 <__BSS_END__+0x63ef6d8>
    5600:	4501                	li	a0,0
    5602:	00002097          	auipc	ra,0x2
    5606:	afe080e7          	jalr	-1282(ra) # 7100 <sbrk>
    560a:	fca43c23          	sd	a0,-40(s0)
    560e:	757d                	lui	a0,0xfffff
    5610:	00002097          	auipc	ra,0x2
    5614:	af0080e7          	jalr	-1296(ra) # 7100 <sbrk>
    5618:	faa43823          	sd	a0,-80(s0)
    561c:	fb043703          	ld	a4,-80(s0)
    5620:	57fd                	li	a5,-1
    5622:	02f71163          	bne	a4,a5,5644 <sbrkmuch+0x10a>
    5626:	fa843583          	ld	a1,-88(s0)
    562a:	00004517          	auipc	a0,0x4
    562e:	17e50513          	addi	a0,a0,382 # 97a8 <longjmp_1+0x1e60>
    5632:	00002097          	auipc	ra,0x2
    5636:	f74080e7          	jalr	-140(ra) # 75a6 <printf>
    563a:	4505                	li	a0,1
    563c:	00002097          	auipc	ra,0x2
    5640:	a3c080e7          	jalr	-1476(ra) # 7078 <exit>
    5644:	4501                	li	a0,0
    5646:	00002097          	auipc	ra,0x2
    564a:	aba080e7          	jalr	-1350(ra) # 7100 <sbrk>
    564e:	faa43823          	sd	a0,-80(s0)
    5652:	fd843703          	ld	a4,-40(s0)
    5656:	77fd                	lui	a5,0xfffff
    5658:	97ba                	add	a5,a5,a4
    565a:	fb043703          	ld	a4,-80(s0)
    565e:	02f70563          	beq	a4,a5,5688 <sbrkmuch+0x14e>
    5662:	fb043683          	ld	a3,-80(s0)
    5666:	fd843603          	ld	a2,-40(s0)
    566a:	fa843583          	ld	a1,-88(s0)
    566e:	00004517          	auipc	a0,0x4
    5672:	15a50513          	addi	a0,a0,346 # 97c8 <longjmp_1+0x1e80>
    5676:	00002097          	auipc	ra,0x2
    567a:	f30080e7          	jalr	-208(ra) # 75a6 <printf>
    567e:	4505                	li	a0,1
    5680:	00002097          	auipc	ra,0x2
    5684:	9f8080e7          	jalr	-1544(ra) # 7078 <exit>
    5688:	4501                	li	a0,0
    568a:	00002097          	auipc	ra,0x2
    568e:	a76080e7          	jalr	-1418(ra) # 7100 <sbrk>
    5692:	fca43c23          	sd	a0,-40(s0)
    5696:	6505                	lui	a0,0x1
    5698:	00002097          	auipc	ra,0x2
    569c:	a68080e7          	jalr	-1432(ra) # 7100 <sbrk>
    56a0:	faa43823          	sd	a0,-80(s0)
    56a4:	fb043703          	ld	a4,-80(s0)
    56a8:	fd843783          	ld	a5,-40(s0)
    56ac:	00f71e63          	bne	a4,a5,56c8 <sbrkmuch+0x18e>
    56b0:	4501                	li	a0,0
    56b2:	00002097          	auipc	ra,0x2
    56b6:	a4e080e7          	jalr	-1458(ra) # 7100 <sbrk>
    56ba:	86aa                	mv	a3,a0
    56bc:	fd843703          	ld	a4,-40(s0)
    56c0:	6785                	lui	a5,0x1
    56c2:	97ba                	add	a5,a5,a4
    56c4:	02f68563          	beq	a3,a5,56ee <sbrkmuch+0x1b4>
    56c8:	fb043683          	ld	a3,-80(s0)
    56cc:	fd843603          	ld	a2,-40(s0)
    56d0:	fa843583          	ld	a1,-88(s0)
    56d4:	00004517          	auipc	a0,0x4
    56d8:	13450513          	addi	a0,a0,308 # 9808 <longjmp_1+0x1ec0>
    56dc:	00002097          	auipc	ra,0x2
    56e0:	eca080e7          	jalr	-310(ra) # 75a6 <printf>
    56e4:	4505                	li	a0,1
    56e6:	00002097          	auipc	ra,0x2
    56ea:	992080e7          	jalr	-1646(ra) # 7078 <exit>
    56ee:	fb843783          	ld	a5,-72(s0)
    56f2:	0007c783          	lbu	a5,0(a5) # 1000 <truncate3+0x1aa>
    56f6:	873e                	mv	a4,a5
    56f8:	06300793          	li	a5,99
    56fc:	02f71163          	bne	a4,a5,571e <sbrkmuch+0x1e4>
    5700:	fa843583          	ld	a1,-88(s0)
    5704:	00004517          	auipc	a0,0x4
    5708:	13450513          	addi	a0,a0,308 # 9838 <longjmp_1+0x1ef0>
    570c:	00002097          	auipc	ra,0x2
    5710:	e9a080e7          	jalr	-358(ra) # 75a6 <printf>
    5714:	4505                	li	a0,1
    5716:	00002097          	auipc	ra,0x2
    571a:	962080e7          	jalr	-1694(ra) # 7078 <exit>
    571e:	4501                	li	a0,0
    5720:	00002097          	auipc	ra,0x2
    5724:	9e0080e7          	jalr	-1568(ra) # 7100 <sbrk>
    5728:	fca43c23          	sd	a0,-40(s0)
    572c:	4501                	li	a0,0
    572e:	00002097          	auipc	ra,0x2
    5732:	9d2080e7          	jalr	-1582(ra) # 7100 <sbrk>
    5736:	872a                	mv	a4,a0
    5738:	fe043783          	ld	a5,-32(s0)
    573c:	8f99                	sub	a5,a5,a4
    573e:	2781                	sext.w	a5,a5
    5740:	853e                	mv	a0,a5
    5742:	00002097          	auipc	ra,0x2
    5746:	9be080e7          	jalr	-1602(ra) # 7100 <sbrk>
    574a:	faa43823          	sd	a0,-80(s0)
    574e:	fb043703          	ld	a4,-80(s0)
    5752:	fd843783          	ld	a5,-40(s0)
    5756:	02f70563          	beq	a4,a5,5780 <sbrkmuch+0x246>
    575a:	fb043683          	ld	a3,-80(s0)
    575e:	fd843603          	ld	a2,-40(s0)
    5762:	fa843583          	ld	a1,-88(s0)
    5766:	00004517          	auipc	a0,0x4
    576a:	10a50513          	addi	a0,a0,266 # 9870 <longjmp_1+0x1f28>
    576e:	00002097          	auipc	ra,0x2
    5772:	e38080e7          	jalr	-456(ra) # 75a6 <printf>
    5776:	4505                	li	a0,1
    5778:	00002097          	auipc	ra,0x2
    577c:	900080e7          	jalr	-1792(ra) # 7078 <exit>
    5780:	0001                	nop
    5782:	60e6                	ld	ra,88(sp)
    5784:	6446                	ld	s0,80(sp)
    5786:	6125                	addi	sp,sp,96
    5788:	8082                	ret

000000000000578a <kernmem>:
    578a:	7179                	addi	sp,sp,-48
    578c:	f406                	sd	ra,40(sp)
    578e:	f022                	sd	s0,32(sp)
    5790:	1800                	addi	s0,sp,48
    5792:	fca43c23          	sd	a0,-40(s0)
    5796:	4785                	li	a5,1
    5798:	07fe                	slli	a5,a5,0x1f
    579a:	fef43423          	sd	a5,-24(s0)
    579e:	a04d                	j	5840 <kernmem+0xb6>
    57a0:	00002097          	auipc	ra,0x2
    57a4:	8d0080e7          	jalr	-1840(ra) # 7070 <fork>
    57a8:	87aa                	mv	a5,a0
    57aa:	fef42223          	sw	a5,-28(s0)
    57ae:	fe442783          	lw	a5,-28(s0)
    57b2:	2781                	sext.w	a5,a5
    57b4:	0207d163          	bgez	a5,57d6 <kernmem+0x4c>
    57b8:	fd843583          	ld	a1,-40(s0)
    57bc:	00003517          	auipc	a0,0x3
    57c0:	8ec50513          	addi	a0,a0,-1812 # 80a8 <longjmp_1+0x760>
    57c4:	00002097          	auipc	ra,0x2
    57c8:	de2080e7          	jalr	-542(ra) # 75a6 <printf>
    57cc:	4505                	li	a0,1
    57ce:	00002097          	auipc	ra,0x2
    57d2:	8aa080e7          	jalr	-1878(ra) # 7078 <exit>
    57d6:	fe442783          	lw	a5,-28(s0)
    57da:	2781                	sext.w	a5,a5
    57dc:	eb85                	bnez	a5,580c <kernmem+0x82>
    57de:	fe843783          	ld	a5,-24(s0)
    57e2:	0007c783          	lbu	a5,0(a5)
    57e6:	2781                	sext.w	a5,a5
    57e8:	86be                	mv	a3,a5
    57ea:	fe843603          	ld	a2,-24(s0)
    57ee:	fd843583          	ld	a1,-40(s0)
    57f2:	00004517          	auipc	a0,0x4
    57f6:	0a650513          	addi	a0,a0,166 # 9898 <longjmp_1+0x1f50>
    57fa:	00002097          	auipc	ra,0x2
    57fe:	dac080e7          	jalr	-596(ra) # 75a6 <printf>
    5802:	4505                	li	a0,1
    5804:	00002097          	auipc	ra,0x2
    5808:	874080e7          	jalr	-1932(ra) # 7078 <exit>
    580c:	fe040793          	addi	a5,s0,-32
    5810:	853e                	mv	a0,a5
    5812:	00002097          	auipc	ra,0x2
    5816:	86e080e7          	jalr	-1938(ra) # 7080 <wait>
    581a:	fe042783          	lw	a5,-32(s0)
    581e:	873e                	mv	a4,a5
    5820:	57fd                	li	a5,-1
    5822:	00f70763          	beq	a4,a5,5830 <kernmem+0xa6>
    5826:	4505                	li	a0,1
    5828:	00002097          	auipc	ra,0x2
    582c:	850080e7          	jalr	-1968(ra) # 7078 <exit>
    5830:	fe843703          	ld	a4,-24(s0)
    5834:	67b1                	lui	a5,0xc
    5836:	35078793          	addi	a5,a5,848 # c350 <__global_pointer$+0x1a60>
    583a:	97ba                	add	a5,a5,a4
    583c:	fef43423          	sd	a5,-24(s0)
    5840:	fe843703          	ld	a4,-24(s0)
    5844:	1003d7b7          	lui	a5,0x1003d
    5848:	078e                	slli	a5,a5,0x3
    584a:	47f78793          	addi	a5,a5,1151 # 1003d47f <__BSS_END__+0x1002cb57>
    584e:	f4e7f9e3          	bgeu	a5,a4,57a0 <kernmem+0x16>
    5852:	0001                	nop
    5854:	0001                	nop
    5856:	70a2                	ld	ra,40(sp)
    5858:	7402                	ld	s0,32(sp)
    585a:	6145                	addi	sp,sp,48
    585c:	8082                	ret

000000000000585e <sbrkfail>:
    585e:	7119                	addi	sp,sp,-128
    5860:	fc86                	sd	ra,120(sp)
    5862:	f8a2                	sd	s0,112(sp)
    5864:	0100                	addi	s0,sp,128
    5866:	f8a43423          	sd	a0,-120(s0)
    586a:	fc040793          	addi	a5,s0,-64
    586e:	853e                	mv	a0,a5
    5870:	00002097          	auipc	ra,0x2
    5874:	818080e7          	jalr	-2024(ra) # 7088 <pipe>
    5878:	87aa                	mv	a5,a0
    587a:	c385                	beqz	a5,589a <sbrkfail+0x3c>
    587c:	f8843583          	ld	a1,-120(s0)
    5880:	00003517          	auipc	a0,0x3
    5884:	cc050513          	addi	a0,a0,-832 # 8540 <longjmp_1+0xbf8>
    5888:	00002097          	auipc	ra,0x2
    588c:	d1e080e7          	jalr	-738(ra) # 75a6 <printf>
    5890:	4505                	li	a0,1
    5892:	00001097          	auipc	ra,0x1
    5896:	7e6080e7          	jalr	2022(ra) # 7078 <exit>
    589a:	fe042623          	sw	zero,-20(s0)
    589e:	a84d                	j	5950 <sbrkfail+0xf2>
    58a0:	00001097          	auipc	ra,0x1
    58a4:	7d0080e7          	jalr	2000(ra) # 7070 <fork>
    58a8:	87aa                	mv	a5,a0
    58aa:	873e                	mv	a4,a5
    58ac:	fec42783          	lw	a5,-20(s0)
    58b0:	078a                	slli	a5,a5,0x2
    58b2:	ff040693          	addi	a3,s0,-16
    58b6:	97b6                	add	a5,a5,a3
    58b8:	fae7a023          	sw	a4,-96(a5)
    58bc:	fec42783          	lw	a5,-20(s0)
    58c0:	078a                	slli	a5,a5,0x2
    58c2:	ff040713          	addi	a4,s0,-16
    58c6:	97ba                	add	a5,a5,a4
    58c8:	fa07a783          	lw	a5,-96(a5)
    58cc:	e7b1                	bnez	a5,5918 <sbrkfail+0xba>
    58ce:	4501                	li	a0,0
    58d0:	00002097          	auipc	ra,0x2
    58d4:	830080e7          	jalr	-2000(ra) # 7100 <sbrk>
    58d8:	87aa                	mv	a5,a0
    58da:	2781                	sext.w	a5,a5
    58dc:	06400737          	lui	a4,0x6400
    58e0:	40f707bb          	subw	a5,a4,a5
    58e4:	2781                	sext.w	a5,a5
    58e6:	2781                	sext.w	a5,a5
    58e8:	853e                	mv	a0,a5
    58ea:	00002097          	auipc	ra,0x2
    58ee:	816080e7          	jalr	-2026(ra) # 7100 <sbrk>
    58f2:	fc442783          	lw	a5,-60(s0)
    58f6:	4605                	li	a2,1
    58f8:	00002597          	auipc	a1,0x2
    58fc:	48858593          	addi	a1,a1,1160 # 7d80 <longjmp_1+0x438>
    5900:	853e                	mv	a0,a5
    5902:	00001097          	auipc	ra,0x1
    5906:	796080e7          	jalr	1942(ra) # 7098 <write>
    590a:	3e800513          	li	a0,1000
    590e:	00001097          	auipc	ra,0x1
    5912:	7fa080e7          	jalr	2042(ra) # 7108 <sleep>
    5916:	bfd5                	j	590a <sbrkfail+0xac>
    5918:	fec42783          	lw	a5,-20(s0)
    591c:	078a                	slli	a5,a5,0x2
    591e:	ff040713          	addi	a4,s0,-16
    5922:	97ba                	add	a5,a5,a4
    5924:	fa07a783          	lw	a5,-96(a5)
    5928:	873e                	mv	a4,a5
    592a:	57fd                	li	a5,-1
    592c:	00f70d63          	beq	a4,a5,5946 <sbrkfail+0xe8>
    5930:	fc042783          	lw	a5,-64(s0)
    5934:	fbf40713          	addi	a4,s0,-65
    5938:	4605                	li	a2,1
    593a:	85ba                	mv	a1,a4
    593c:	853e                	mv	a0,a5
    593e:	00001097          	auipc	ra,0x1
    5942:	752080e7          	jalr	1874(ra) # 7090 <read>
    5946:	fec42783          	lw	a5,-20(s0)
    594a:	2785                	addiw	a5,a5,1
    594c:	fef42623          	sw	a5,-20(s0)
    5950:	fec42783          	lw	a5,-20(s0)
    5954:	873e                	mv	a4,a5
    5956:	47a5                	li	a5,9
    5958:	f4e7f4e3          	bgeu	a5,a4,58a0 <sbrkfail+0x42>
    595c:	6505                	lui	a0,0x1
    595e:	00001097          	auipc	ra,0x1
    5962:	7a2080e7          	jalr	1954(ra) # 7100 <sbrk>
    5966:	fea43023          	sd	a0,-32(s0)
    596a:	fe042623          	sw	zero,-20(s0)
    596e:	a0b1                	j	59ba <sbrkfail+0x15c>
    5970:	fec42783          	lw	a5,-20(s0)
    5974:	078a                	slli	a5,a5,0x2
    5976:	ff040713          	addi	a4,s0,-16
    597a:	97ba                	add	a5,a5,a4
    597c:	fa07a783          	lw	a5,-96(a5)
    5980:	873e                	mv	a4,a5
    5982:	57fd                	li	a5,-1
    5984:	02f70563          	beq	a4,a5,59ae <sbrkfail+0x150>
    5988:	fec42783          	lw	a5,-20(s0)
    598c:	078a                	slli	a5,a5,0x2
    598e:	ff040713          	addi	a4,s0,-16
    5992:	97ba                	add	a5,a5,a4
    5994:	fa07a783          	lw	a5,-96(a5)
    5998:	853e                	mv	a0,a5
    599a:	00001097          	auipc	ra,0x1
    599e:	70e080e7          	jalr	1806(ra) # 70a8 <kill>
    59a2:	4501                	li	a0,0
    59a4:	00001097          	auipc	ra,0x1
    59a8:	6dc080e7          	jalr	1756(ra) # 7080 <wait>
    59ac:	a011                	j	59b0 <sbrkfail+0x152>
    59ae:	0001                	nop
    59b0:	fec42783          	lw	a5,-20(s0)
    59b4:	2785                	addiw	a5,a5,1
    59b6:	fef42623          	sw	a5,-20(s0)
    59ba:	fec42783          	lw	a5,-20(s0)
    59be:	873e                	mv	a4,a5
    59c0:	47a5                	li	a5,9
    59c2:	fae7f7e3          	bgeu	a5,a4,5970 <sbrkfail+0x112>
    59c6:	fe043703          	ld	a4,-32(s0)
    59ca:	57fd                	li	a5,-1
    59cc:	02f71163          	bne	a4,a5,59ee <sbrkfail+0x190>
    59d0:	f8843583          	ld	a1,-120(s0)
    59d4:	00004517          	auipc	a0,0x4
    59d8:	ee450513          	addi	a0,a0,-284 # 98b8 <longjmp_1+0x1f70>
    59dc:	00002097          	auipc	ra,0x2
    59e0:	bca080e7          	jalr	-1078(ra) # 75a6 <printf>
    59e4:	4505                	li	a0,1
    59e6:	00001097          	auipc	ra,0x1
    59ea:	692080e7          	jalr	1682(ra) # 7078 <exit>
    59ee:	00001097          	auipc	ra,0x1
    59f2:	682080e7          	jalr	1666(ra) # 7070 <fork>
    59f6:	87aa                	mv	a5,a0
    59f8:	fcf42e23          	sw	a5,-36(s0)
    59fc:	fdc42783          	lw	a5,-36(s0)
    5a00:	2781                	sext.w	a5,a5
    5a02:	0207d163          	bgez	a5,5a24 <sbrkfail+0x1c6>
    5a06:	f8843583          	ld	a1,-120(s0)
    5a0a:	00002517          	auipc	a0,0x2
    5a0e:	69e50513          	addi	a0,a0,1694 # 80a8 <longjmp_1+0x760>
    5a12:	00002097          	auipc	ra,0x2
    5a16:	b94080e7          	jalr	-1132(ra) # 75a6 <printf>
    5a1a:	4505                	li	a0,1
    5a1c:	00001097          	auipc	ra,0x1
    5a20:	65c080e7          	jalr	1628(ra) # 7078 <exit>
    5a24:	fdc42783          	lw	a5,-36(s0)
    5a28:	2781                	sext.w	a5,a5
    5a2a:	e3c1                	bnez	a5,5aaa <sbrkfail+0x24c>
    5a2c:	4501                	li	a0,0
    5a2e:	00001097          	auipc	ra,0x1
    5a32:	6d2080e7          	jalr	1746(ra) # 7100 <sbrk>
    5a36:	fca43823          	sd	a0,-48(s0)
    5a3a:	3e800537          	lui	a0,0x3e800
    5a3e:	00001097          	auipc	ra,0x1
    5a42:	6c2080e7          	jalr	1730(ra) # 7100 <sbrk>
    5a46:	fe042423          	sw	zero,-24(s0)
    5a4a:	fe042623          	sw	zero,-20(s0)
    5a4e:	a025                	j	5a76 <sbrkfail+0x218>
    5a50:	fec42783          	lw	a5,-20(s0)
    5a54:	fd043703          	ld	a4,-48(s0)
    5a58:	97ba                	add	a5,a5,a4
    5a5a:	0007c783          	lbu	a5,0(a5)
    5a5e:	2781                	sext.w	a5,a5
    5a60:	fe842703          	lw	a4,-24(s0)
    5a64:	9fb9                	addw	a5,a5,a4
    5a66:	fef42423          	sw	a5,-24(s0)
    5a6a:	fec42703          	lw	a4,-20(s0)
    5a6e:	6785                	lui	a5,0x1
    5a70:	9fb9                	addw	a5,a5,a4
    5a72:	fef42623          	sw	a5,-20(s0)
    5a76:	fec42783          	lw	a5,-20(s0)
    5a7a:	0007871b          	sext.w	a4,a5
    5a7e:	3e8007b7          	lui	a5,0x3e800
    5a82:	fcf747e3          	blt	a4,a5,5a50 <sbrkfail+0x1f2>
    5a86:	fe842783          	lw	a5,-24(s0)
    5a8a:	863e                	mv	a2,a5
    5a8c:	f8843583          	ld	a1,-120(s0)
    5a90:	00004517          	auipc	a0,0x4
    5a94:	e4850513          	addi	a0,a0,-440 # 98d8 <longjmp_1+0x1f90>
    5a98:	00002097          	auipc	ra,0x2
    5a9c:	b0e080e7          	jalr	-1266(ra) # 75a6 <printf>
    5aa0:	4505                	li	a0,1
    5aa2:	00001097          	auipc	ra,0x1
    5aa6:	5d6080e7          	jalr	1494(ra) # 7078 <exit>
    5aaa:	fcc40793          	addi	a5,s0,-52
    5aae:	853e                	mv	a0,a5
    5ab0:	00001097          	auipc	ra,0x1
    5ab4:	5d0080e7          	jalr	1488(ra) # 7080 <wait>
    5ab8:	fcc42783          	lw	a5,-52(s0)
    5abc:	873e                	mv	a4,a5
    5abe:	57fd                	li	a5,-1
    5ac0:	00f70d63          	beq	a4,a5,5ada <sbrkfail+0x27c>
    5ac4:	fcc42783          	lw	a5,-52(s0)
    5ac8:	873e                	mv	a4,a5
    5aca:	4789                	li	a5,2
    5acc:	00f70763          	beq	a4,a5,5ada <sbrkfail+0x27c>
    5ad0:	4505                	li	a0,1
    5ad2:	00001097          	auipc	ra,0x1
    5ad6:	5a6080e7          	jalr	1446(ra) # 7078 <exit>
    5ada:	0001                	nop
    5adc:	70e6                	ld	ra,120(sp)
    5ade:	7446                	ld	s0,112(sp)
    5ae0:	6109                	addi	sp,sp,128
    5ae2:	8082                	ret

0000000000005ae4 <sbrkarg>:
    5ae4:	7179                	addi	sp,sp,-48
    5ae6:	f406                	sd	ra,40(sp)
    5ae8:	f022                	sd	s0,32(sp)
    5aea:	1800                	addi	s0,sp,48
    5aec:	fca43c23          	sd	a0,-40(s0)
    5af0:	6505                	lui	a0,0x1
    5af2:	00001097          	auipc	ra,0x1
    5af6:	60e080e7          	jalr	1550(ra) # 7100 <sbrk>
    5afa:	fea43423          	sd	a0,-24(s0)
    5afe:	20100593          	li	a1,513
    5b02:	00004517          	auipc	a0,0x4
    5b06:	e0650513          	addi	a0,a0,-506 # 9908 <longjmp_1+0x1fc0>
    5b0a:	00001097          	auipc	ra,0x1
    5b0e:	5ae080e7          	jalr	1454(ra) # 70b8 <open>
    5b12:	87aa                	mv	a5,a0
    5b14:	fef42223          	sw	a5,-28(s0)
    5b18:	00004517          	auipc	a0,0x4
    5b1c:	df050513          	addi	a0,a0,-528 # 9908 <longjmp_1+0x1fc0>
    5b20:	00001097          	auipc	ra,0x1
    5b24:	5a8080e7          	jalr	1448(ra) # 70c8 <unlink>
    5b28:	fe442783          	lw	a5,-28(s0)
    5b2c:	2781                	sext.w	a5,a5
    5b2e:	0207d163          	bgez	a5,5b50 <sbrkarg+0x6c>
    5b32:	fd843583          	ld	a1,-40(s0)
    5b36:	00004517          	auipc	a0,0x4
    5b3a:	dda50513          	addi	a0,a0,-550 # 9910 <longjmp_1+0x1fc8>
    5b3e:	00002097          	auipc	ra,0x2
    5b42:	a68080e7          	jalr	-1432(ra) # 75a6 <printf>
    5b46:	4505                	li	a0,1
    5b48:	00001097          	auipc	ra,0x1
    5b4c:	530080e7          	jalr	1328(ra) # 7078 <exit>
    5b50:	fe442783          	lw	a5,-28(s0)
    5b54:	6605                	lui	a2,0x1
    5b56:	fe843583          	ld	a1,-24(s0)
    5b5a:	853e                	mv	a0,a5
    5b5c:	00001097          	auipc	ra,0x1
    5b60:	53c080e7          	jalr	1340(ra) # 7098 <write>
    5b64:	87aa                	mv	a5,a0
    5b66:	fef42023          	sw	a5,-32(s0)
    5b6a:	fe042783          	lw	a5,-32(s0)
    5b6e:	2781                	sext.w	a5,a5
    5b70:	0207d163          	bgez	a5,5b92 <sbrkarg+0xae>
    5b74:	fd843583          	ld	a1,-40(s0)
    5b78:	00004517          	auipc	a0,0x4
    5b7c:	db050513          	addi	a0,a0,-592 # 9928 <longjmp_1+0x1fe0>
    5b80:	00002097          	auipc	ra,0x2
    5b84:	a26080e7          	jalr	-1498(ra) # 75a6 <printf>
    5b88:	4505                	li	a0,1
    5b8a:	00001097          	auipc	ra,0x1
    5b8e:	4ee080e7          	jalr	1262(ra) # 7078 <exit>
    5b92:	fe442783          	lw	a5,-28(s0)
    5b96:	853e                	mv	a0,a5
    5b98:	00001097          	auipc	ra,0x1
    5b9c:	508080e7          	jalr	1288(ra) # 70a0 <close>
    5ba0:	6505                	lui	a0,0x1
    5ba2:	00001097          	auipc	ra,0x1
    5ba6:	55e080e7          	jalr	1374(ra) # 7100 <sbrk>
    5baa:	fea43423          	sd	a0,-24(s0)
    5bae:	fe843503          	ld	a0,-24(s0)
    5bb2:	00001097          	auipc	ra,0x1
    5bb6:	4d6080e7          	jalr	1238(ra) # 7088 <pipe>
    5bba:	87aa                	mv	a5,a0
    5bbc:	c385                	beqz	a5,5bdc <sbrkarg+0xf8>
    5bbe:	fd843583          	ld	a1,-40(s0)
    5bc2:	00003517          	auipc	a0,0x3
    5bc6:	97e50513          	addi	a0,a0,-1666 # 8540 <longjmp_1+0xbf8>
    5bca:	00002097          	auipc	ra,0x2
    5bce:	9dc080e7          	jalr	-1572(ra) # 75a6 <printf>
    5bd2:	4505                	li	a0,1
    5bd4:	00001097          	auipc	ra,0x1
    5bd8:	4a4080e7          	jalr	1188(ra) # 7078 <exit>
    5bdc:	0001                	nop
    5bde:	70a2                	ld	ra,40(sp)
    5be0:	7402                	ld	s0,32(sp)
    5be2:	6145                	addi	sp,sp,48
    5be4:	8082                	ret

0000000000005be6 <validatetest>:
    5be6:	7179                	addi	sp,sp,-48
    5be8:	f406                	sd	ra,40(sp)
    5bea:	f022                	sd	s0,32(sp)
    5bec:	1800                	addi	s0,sp,48
    5bee:	fca43c23          	sd	a0,-40(s0)
    5bf2:	001137b7          	lui	a5,0x113
    5bf6:	fef42223          	sw	a5,-28(s0)
    5bfa:	fe043423          	sd	zero,-24(s0)
    5bfe:	a0b1                	j	5c4a <validatetest+0x64>
    5c00:	fe843783          	ld	a5,-24(s0)
    5c04:	85be                	mv	a1,a5
    5c06:	00004517          	auipc	a0,0x4
    5c0a:	d3a50513          	addi	a0,a0,-710 # 9940 <longjmp_1+0x1ff8>
    5c0e:	00001097          	auipc	ra,0x1
    5c12:	4ca080e7          	jalr	1226(ra) # 70d8 <link>
    5c16:	87aa                	mv	a5,a0
    5c18:	873e                	mv	a4,a5
    5c1a:	57fd                	li	a5,-1
    5c1c:	02f70163          	beq	a4,a5,5c3e <validatetest+0x58>
    5c20:	fd843583          	ld	a1,-40(s0)
    5c24:	00004517          	auipc	a0,0x4
    5c28:	d2c50513          	addi	a0,a0,-724 # 9950 <longjmp_1+0x2008>
    5c2c:	00002097          	auipc	ra,0x2
    5c30:	97a080e7          	jalr	-1670(ra) # 75a6 <printf>
    5c34:	4505                	li	a0,1
    5c36:	00001097          	auipc	ra,0x1
    5c3a:	442080e7          	jalr	1090(ra) # 7078 <exit>
    5c3e:	fe843703          	ld	a4,-24(s0)
    5c42:	6785                	lui	a5,0x1
    5c44:	97ba                	add	a5,a5,a4
    5c46:	fef43423          	sd	a5,-24(s0)
    5c4a:	fe442783          	lw	a5,-28(s0)
    5c4e:	1782                	slli	a5,a5,0x20
    5c50:	9381                	srli	a5,a5,0x20
    5c52:	fe843703          	ld	a4,-24(s0)
    5c56:	fae7f5e3          	bgeu	a5,a4,5c00 <validatetest+0x1a>
    5c5a:	0001                	nop
    5c5c:	0001                	nop
    5c5e:	70a2                	ld	ra,40(sp)
    5c60:	7402                	ld	s0,32(sp)
    5c62:	6145                	addi	sp,sp,48
    5c64:	8082                	ret

0000000000005c66 <bsstest>:
    5c66:	7179                	addi	sp,sp,-48
    5c68:	f406                	sd	ra,40(sp)
    5c6a:	f022                	sd	s0,32(sp)
    5c6c:	1800                	addi	s0,sp,48
    5c6e:	fca43c23          	sd	a0,-40(s0)
    5c72:	fe042623          	sw	zero,-20(s0)
    5c76:	a83d                	j	5cb4 <bsstest+0x4e>
    5c78:	00007717          	auipc	a4,0x7
    5c7c:	48070713          	addi	a4,a4,1152 # d0f8 <uninit>
    5c80:	fec42783          	lw	a5,-20(s0)
    5c84:	97ba                	add	a5,a5,a4
    5c86:	0007c783          	lbu	a5,0(a5) # 1000 <truncate3+0x1aa>
    5c8a:	c385                	beqz	a5,5caa <bsstest+0x44>
    5c8c:	fd843583          	ld	a1,-40(s0)
    5c90:	00004517          	auipc	a0,0x4
    5c94:	ce050513          	addi	a0,a0,-800 # 9970 <longjmp_1+0x2028>
    5c98:	00002097          	auipc	ra,0x2
    5c9c:	90e080e7          	jalr	-1778(ra) # 75a6 <printf>
    5ca0:	4505                	li	a0,1
    5ca2:	00001097          	auipc	ra,0x1
    5ca6:	3d6080e7          	jalr	982(ra) # 7078 <exit>
    5caa:	fec42783          	lw	a5,-20(s0)
    5cae:	2785                	addiw	a5,a5,1
    5cb0:	fef42623          	sw	a5,-20(s0)
    5cb4:	fec42783          	lw	a5,-20(s0)
    5cb8:	873e                	mv	a4,a5
    5cba:	6789                	lui	a5,0x2
    5cbc:	70f78793          	addi	a5,a5,1807 # 270f <mem+0xb5>
    5cc0:	fae7fce3          	bgeu	a5,a4,5c78 <bsstest+0x12>
    5cc4:	0001                	nop
    5cc6:	0001                	nop
    5cc8:	70a2                	ld	ra,40(sp)
    5cca:	7402                	ld	s0,32(sp)
    5ccc:	6145                	addi	sp,sp,48
    5cce:	8082                	ret

0000000000005cd0 <bigargtest>:
    5cd0:	7179                	addi	sp,sp,-48
    5cd2:	f406                	sd	ra,40(sp)
    5cd4:	f022                	sd	s0,32(sp)
    5cd6:	1800                	addi	s0,sp,48
    5cd8:	fca43c23          	sd	a0,-40(s0)
    5cdc:	00004517          	auipc	a0,0x4
    5ce0:	cac50513          	addi	a0,a0,-852 # 9988 <longjmp_1+0x2040>
    5ce4:	00001097          	auipc	ra,0x1
    5ce8:	3e4080e7          	jalr	996(ra) # 70c8 <unlink>
    5cec:	00001097          	auipc	ra,0x1
    5cf0:	384080e7          	jalr	900(ra) # 7070 <fork>
    5cf4:	87aa                	mv	a5,a0
    5cf6:	fef42423          	sw	a5,-24(s0)
    5cfa:	fe842783          	lw	a5,-24(s0)
    5cfe:	2781                	sext.w	a5,a5
    5d00:	ebc1                	bnez	a5,5d90 <bigargtest+0xc0>
    5d02:	fe042623          	sw	zero,-20(s0)
    5d06:	a01d                	j	5d2c <bigargtest+0x5c>
    5d08:	0000b717          	auipc	a4,0xb
    5d0c:	b0870713          	addi	a4,a4,-1272 # 10810 <args.1>
    5d10:	fec42783          	lw	a5,-20(s0)
    5d14:	078e                	slli	a5,a5,0x3
    5d16:	97ba                	add	a5,a5,a4
    5d18:	00004717          	auipc	a4,0x4
    5d1c:	c8070713          	addi	a4,a4,-896 # 9998 <longjmp_1+0x2050>
    5d20:	e398                	sd	a4,0(a5)
    5d22:	fec42783          	lw	a5,-20(s0)
    5d26:	2785                	addiw	a5,a5,1
    5d28:	fef42623          	sw	a5,-20(s0)
    5d2c:	fec42783          	lw	a5,-20(s0)
    5d30:	0007871b          	sext.w	a4,a5
    5d34:	47f9                	li	a5,30
    5d36:	fce7d9e3          	bge	a5,a4,5d08 <bigargtest+0x38>
    5d3a:	0000b797          	auipc	a5,0xb
    5d3e:	ad678793          	addi	a5,a5,-1322 # 10810 <args.1>
    5d42:	0e07bc23          	sd	zero,248(a5)
    5d46:	0000b597          	auipc	a1,0xb
    5d4a:	aca58593          	addi	a1,a1,-1334 # 10810 <args.1>
    5d4e:	00002517          	auipc	a0,0x2
    5d52:	14250513          	addi	a0,a0,322 # 7e90 <longjmp_1+0x548>
    5d56:	00001097          	auipc	ra,0x1
    5d5a:	35a080e7          	jalr	858(ra) # 70b0 <exec>
    5d5e:	20000593          	li	a1,512
    5d62:	00004517          	auipc	a0,0x4
    5d66:	c2650513          	addi	a0,a0,-986 # 9988 <longjmp_1+0x2040>
    5d6a:	00001097          	auipc	ra,0x1
    5d6e:	34e080e7          	jalr	846(ra) # 70b8 <open>
    5d72:	87aa                	mv	a5,a0
    5d74:	fef42223          	sw	a5,-28(s0)
    5d78:	fe442783          	lw	a5,-28(s0)
    5d7c:	853e                	mv	a0,a5
    5d7e:	00001097          	auipc	ra,0x1
    5d82:	322080e7          	jalr	802(ra) # 70a0 <close>
    5d86:	4501                	li	a0,0
    5d88:	00001097          	auipc	ra,0x1
    5d8c:	2f0080e7          	jalr	752(ra) # 7078 <exit>
    5d90:	fe842783          	lw	a5,-24(s0)
    5d94:	2781                	sext.w	a5,a5
    5d96:	0207d163          	bgez	a5,5db8 <bigargtest+0xe8>
    5d9a:	fd843583          	ld	a1,-40(s0)
    5d9e:	00004517          	auipc	a0,0x4
    5da2:	cda50513          	addi	a0,a0,-806 # 9a78 <longjmp_1+0x2130>
    5da6:	00002097          	auipc	ra,0x2
    5daa:	800080e7          	jalr	-2048(ra) # 75a6 <printf>
    5dae:	4505                	li	a0,1
    5db0:	00001097          	auipc	ra,0x1
    5db4:	2c8080e7          	jalr	712(ra) # 7078 <exit>
    5db8:	fe040793          	addi	a5,s0,-32
    5dbc:	853e                	mv	a0,a5
    5dbe:	00001097          	auipc	ra,0x1
    5dc2:	2c2080e7          	jalr	706(ra) # 7080 <wait>
    5dc6:	fe042783          	lw	a5,-32(s0)
    5dca:	cb81                	beqz	a5,5dda <bigargtest+0x10a>
    5dcc:	fe042783          	lw	a5,-32(s0)
    5dd0:	853e                	mv	a0,a5
    5dd2:	00001097          	auipc	ra,0x1
    5dd6:	2a6080e7          	jalr	678(ra) # 7078 <exit>
    5dda:	4581                	li	a1,0
    5ddc:	00004517          	auipc	a0,0x4
    5de0:	bac50513          	addi	a0,a0,-1108 # 9988 <longjmp_1+0x2040>
    5de4:	00001097          	auipc	ra,0x1
    5de8:	2d4080e7          	jalr	724(ra) # 70b8 <open>
    5dec:	87aa                	mv	a5,a0
    5dee:	fef42223          	sw	a5,-28(s0)
    5df2:	fe442783          	lw	a5,-28(s0)
    5df6:	2781                	sext.w	a5,a5
    5df8:	0207d163          	bgez	a5,5e1a <bigargtest+0x14a>
    5dfc:	fd843583          	ld	a1,-40(s0)
    5e00:	00004517          	auipc	a0,0x4
    5e04:	c9850513          	addi	a0,a0,-872 # 9a98 <longjmp_1+0x2150>
    5e08:	00001097          	auipc	ra,0x1
    5e0c:	79e080e7          	jalr	1950(ra) # 75a6 <printf>
    5e10:	4505                	li	a0,1
    5e12:	00001097          	auipc	ra,0x1
    5e16:	266080e7          	jalr	614(ra) # 7078 <exit>
    5e1a:	fe442783          	lw	a5,-28(s0)
    5e1e:	853e                	mv	a0,a5
    5e20:	00001097          	auipc	ra,0x1
    5e24:	280080e7          	jalr	640(ra) # 70a0 <close>
    5e28:	0001                	nop
    5e2a:	70a2                	ld	ra,40(sp)
    5e2c:	7402                	ld	s0,32(sp)
    5e2e:	6145                	addi	sp,sp,48
    5e30:	8082                	ret

0000000000005e32 <fsfull>:
    5e32:	7159                	addi	sp,sp,-112
    5e34:	f486                	sd	ra,104(sp)
    5e36:	f0a2                	sd	s0,96(sp)
    5e38:	1880                	addi	s0,sp,112
    5e3a:	fe042423          	sw	zero,-24(s0)
    5e3e:	00004517          	auipc	a0,0x4
    5e42:	c7a50513          	addi	a0,a0,-902 # 9ab8 <longjmp_1+0x2170>
    5e46:	00001097          	auipc	ra,0x1
    5e4a:	760080e7          	jalr	1888(ra) # 75a6 <printf>
    5e4e:	fe042623          	sw	zero,-20(s0)
    5e52:	06600793          	li	a5,102
    5e56:	f8f40c23          	sb	a5,-104(s0)
    5e5a:	fec42703          	lw	a4,-20(s0)
    5e5e:	3e800793          	li	a5,1000
    5e62:	02f747bb          	divw	a5,a4,a5
    5e66:	2781                	sext.w	a5,a5
    5e68:	0ff7f793          	andi	a5,a5,255
    5e6c:	0307879b          	addiw	a5,a5,48
    5e70:	0ff7f793          	andi	a5,a5,255
    5e74:	f8f40ca3          	sb	a5,-103(s0)
    5e78:	fec42703          	lw	a4,-20(s0)
    5e7c:	3e800793          	li	a5,1000
    5e80:	02f767bb          	remw	a5,a4,a5
    5e84:	2781                	sext.w	a5,a5
    5e86:	873e                	mv	a4,a5
    5e88:	06400793          	li	a5,100
    5e8c:	02f747bb          	divw	a5,a4,a5
    5e90:	2781                	sext.w	a5,a5
    5e92:	0ff7f793          	andi	a5,a5,255
    5e96:	0307879b          	addiw	a5,a5,48
    5e9a:	0ff7f793          	andi	a5,a5,255
    5e9e:	f8f40d23          	sb	a5,-102(s0)
    5ea2:	fec42703          	lw	a4,-20(s0)
    5ea6:	06400793          	li	a5,100
    5eaa:	02f767bb          	remw	a5,a4,a5
    5eae:	2781                	sext.w	a5,a5
    5eb0:	873e                	mv	a4,a5
    5eb2:	47a9                	li	a5,10
    5eb4:	02f747bb          	divw	a5,a4,a5
    5eb8:	2781                	sext.w	a5,a5
    5eba:	0ff7f793          	andi	a5,a5,255
    5ebe:	0307879b          	addiw	a5,a5,48
    5ec2:	0ff7f793          	andi	a5,a5,255
    5ec6:	f8f40da3          	sb	a5,-101(s0)
    5eca:	fec42703          	lw	a4,-20(s0)
    5ece:	47a9                	li	a5,10
    5ed0:	02f767bb          	remw	a5,a4,a5
    5ed4:	2781                	sext.w	a5,a5
    5ed6:	0ff7f793          	andi	a5,a5,255
    5eda:	0307879b          	addiw	a5,a5,48
    5ede:	0ff7f793          	andi	a5,a5,255
    5ee2:	f8f40e23          	sb	a5,-100(s0)
    5ee6:	f8040ea3          	sb	zero,-99(s0)
    5eea:	f9840793          	addi	a5,s0,-104
    5eee:	85be                	mv	a1,a5
    5ef0:	00004517          	auipc	a0,0x4
    5ef4:	bd850513          	addi	a0,a0,-1064 # 9ac8 <longjmp_1+0x2180>
    5ef8:	00001097          	auipc	ra,0x1
    5efc:	6ae080e7          	jalr	1710(ra) # 75a6 <printf>
    5f00:	f9840793          	addi	a5,s0,-104
    5f04:	20200593          	li	a1,514
    5f08:	853e                	mv	a0,a5
    5f0a:	00001097          	auipc	ra,0x1
    5f0e:	1ae080e7          	jalr	430(ra) # 70b8 <open>
    5f12:	87aa                	mv	a5,a0
    5f14:	fef42023          	sw	a5,-32(s0)
    5f18:	fe042783          	lw	a5,-32(s0)
    5f1c:	2781                	sext.w	a5,a5
    5f1e:	0007de63          	bgez	a5,5f3a <fsfull+0x108>
    5f22:	f9840793          	addi	a5,s0,-104
    5f26:	85be                	mv	a1,a5
    5f28:	00004517          	auipc	a0,0x4
    5f2c:	bb050513          	addi	a0,a0,-1104 # 9ad8 <longjmp_1+0x2190>
    5f30:	00001097          	auipc	ra,0x1
    5f34:	676080e7          	jalr	1654(ra) # 75a6 <printf>
    5f38:	a071                	j	5fc4 <fsfull+0x192>
    5f3a:	fe042223          	sw	zero,-28(s0)
    5f3e:	fe042783          	lw	a5,-32(s0)
    5f42:	40000613          	li	a2,1024
    5f46:	00004597          	auipc	a1,0x4
    5f4a:	1b258593          	addi	a1,a1,434 # a0f8 <buf>
    5f4e:	853e                	mv	a0,a5
    5f50:	00001097          	auipc	ra,0x1
    5f54:	148080e7          	jalr	328(ra) # 7098 <write>
    5f58:	87aa                	mv	a5,a0
    5f5a:	fcf42e23          	sw	a5,-36(s0)
    5f5e:	fdc42783          	lw	a5,-36(s0)
    5f62:	0007871b          	sext.w	a4,a5
    5f66:	3ff00793          	li	a5,1023
    5f6a:	00e7df63          	bge	a5,a4,5f88 <fsfull+0x156>
    5f6e:	fe442703          	lw	a4,-28(s0)
    5f72:	fdc42783          	lw	a5,-36(s0)
    5f76:	9fb9                	addw	a5,a5,a4
    5f78:	fef42223          	sw	a5,-28(s0)
    5f7c:	fe842783          	lw	a5,-24(s0)
    5f80:	2785                	addiw	a5,a5,1
    5f82:	fef42423          	sw	a5,-24(s0)
    5f86:	bf65                	j	5f3e <fsfull+0x10c>
    5f88:	0001                	nop
    5f8a:	fe442783          	lw	a5,-28(s0)
    5f8e:	85be                	mv	a1,a5
    5f90:	00004517          	auipc	a0,0x4
    5f94:	b5850513          	addi	a0,a0,-1192 # 9ae8 <longjmp_1+0x21a0>
    5f98:	00001097          	auipc	ra,0x1
    5f9c:	60e080e7          	jalr	1550(ra) # 75a6 <printf>
    5fa0:	fe042783          	lw	a5,-32(s0)
    5fa4:	853e                	mv	a0,a5
    5fa6:	00001097          	auipc	ra,0x1
    5faa:	0fa080e7          	jalr	250(ra) # 70a0 <close>
    5fae:	fe442783          	lw	a5,-28(s0)
    5fb2:	2781                	sext.w	a5,a5
    5fb4:	c799                	beqz	a5,5fc2 <fsfull+0x190>
    5fb6:	fec42783          	lw	a5,-20(s0)
    5fba:	2785                	addiw	a5,a5,1
    5fbc:	fef42623          	sw	a5,-20(s0)
    5fc0:	bd49                	j	5e52 <fsfull+0x20>
    5fc2:	0001                	nop
    5fc4:	a84d                	j	6076 <fsfull+0x244>
    5fc6:	06600793          	li	a5,102
    5fca:	f8f40c23          	sb	a5,-104(s0)
    5fce:	fec42703          	lw	a4,-20(s0)
    5fd2:	3e800793          	li	a5,1000
    5fd6:	02f747bb          	divw	a5,a4,a5
    5fda:	2781                	sext.w	a5,a5
    5fdc:	0ff7f793          	andi	a5,a5,255
    5fe0:	0307879b          	addiw	a5,a5,48
    5fe4:	0ff7f793          	andi	a5,a5,255
    5fe8:	f8f40ca3          	sb	a5,-103(s0)
    5fec:	fec42703          	lw	a4,-20(s0)
    5ff0:	3e800793          	li	a5,1000
    5ff4:	02f767bb          	remw	a5,a4,a5
    5ff8:	2781                	sext.w	a5,a5
    5ffa:	873e                	mv	a4,a5
    5ffc:	06400793          	li	a5,100
    6000:	02f747bb          	divw	a5,a4,a5
    6004:	2781                	sext.w	a5,a5
    6006:	0ff7f793          	andi	a5,a5,255
    600a:	0307879b          	addiw	a5,a5,48
    600e:	0ff7f793          	andi	a5,a5,255
    6012:	f8f40d23          	sb	a5,-102(s0)
    6016:	fec42703          	lw	a4,-20(s0)
    601a:	06400793          	li	a5,100
    601e:	02f767bb          	remw	a5,a4,a5
    6022:	2781                	sext.w	a5,a5
    6024:	873e                	mv	a4,a5
    6026:	47a9                	li	a5,10
    6028:	02f747bb          	divw	a5,a4,a5
    602c:	2781                	sext.w	a5,a5
    602e:	0ff7f793          	andi	a5,a5,255
    6032:	0307879b          	addiw	a5,a5,48
    6036:	0ff7f793          	andi	a5,a5,255
    603a:	f8f40da3          	sb	a5,-101(s0)
    603e:	fec42703          	lw	a4,-20(s0)
    6042:	47a9                	li	a5,10
    6044:	02f767bb          	remw	a5,a4,a5
    6048:	2781                	sext.w	a5,a5
    604a:	0ff7f793          	andi	a5,a5,255
    604e:	0307879b          	addiw	a5,a5,48
    6052:	0ff7f793          	andi	a5,a5,255
    6056:	f8f40e23          	sb	a5,-100(s0)
    605a:	f8040ea3          	sb	zero,-99(s0)
    605e:	f9840793          	addi	a5,s0,-104
    6062:	853e                	mv	a0,a5
    6064:	00001097          	auipc	ra,0x1
    6068:	064080e7          	jalr	100(ra) # 70c8 <unlink>
    606c:	fec42783          	lw	a5,-20(s0)
    6070:	37fd                	addiw	a5,a5,-1
    6072:	fef42623          	sw	a5,-20(s0)
    6076:	fec42783          	lw	a5,-20(s0)
    607a:	2781                	sext.w	a5,a5
    607c:	f407d5e3          	bgez	a5,5fc6 <fsfull+0x194>
    6080:	00004517          	auipc	a0,0x4
    6084:	a7850513          	addi	a0,a0,-1416 # 9af8 <longjmp_1+0x21b0>
    6088:	00001097          	auipc	ra,0x1
    608c:	51e080e7          	jalr	1310(ra) # 75a6 <printf>
    6090:	0001                	nop
    6092:	70a6                	ld	ra,104(sp)
    6094:	7406                	ld	s0,96(sp)
    6096:	6165                	addi	sp,sp,112
    6098:	8082                	ret

000000000000609a <argptest>:
    609a:	7179                	addi	sp,sp,-48
    609c:	f406                	sd	ra,40(sp)
    609e:	f022                	sd	s0,32(sp)
    60a0:	1800                	addi	s0,sp,48
    60a2:	fca43c23          	sd	a0,-40(s0)
    60a6:	4581                	li	a1,0
    60a8:	00004517          	auipc	a0,0x4
    60ac:	a6850513          	addi	a0,a0,-1432 # 9b10 <longjmp_1+0x21c8>
    60b0:	00001097          	auipc	ra,0x1
    60b4:	008080e7          	jalr	8(ra) # 70b8 <open>
    60b8:	87aa                	mv	a5,a0
    60ba:	fef42623          	sw	a5,-20(s0)
    60be:	fec42783          	lw	a5,-20(s0)
    60c2:	2781                	sext.w	a5,a5
    60c4:	0207d163          	bgez	a5,60e6 <argptest+0x4c>
    60c8:	fd843583          	ld	a1,-40(s0)
    60cc:	00002517          	auipc	a0,0x2
    60d0:	ff450513          	addi	a0,a0,-12 # 80c0 <longjmp_1+0x778>
    60d4:	00001097          	auipc	ra,0x1
    60d8:	4d2080e7          	jalr	1234(ra) # 75a6 <printf>
    60dc:	4505                	li	a0,1
    60de:	00001097          	auipc	ra,0x1
    60e2:	f9a080e7          	jalr	-102(ra) # 7078 <exit>
    60e6:	4501                	li	a0,0
    60e8:	00001097          	auipc	ra,0x1
    60ec:	018080e7          	jalr	24(ra) # 7100 <sbrk>
    60f0:	87aa                	mv	a5,a0
    60f2:	fff78713          	addi	a4,a5,-1
    60f6:	fec42783          	lw	a5,-20(s0)
    60fa:	567d                	li	a2,-1
    60fc:	85ba                	mv	a1,a4
    60fe:	853e                	mv	a0,a5
    6100:	00001097          	auipc	ra,0x1
    6104:	f90080e7          	jalr	-112(ra) # 7090 <read>
    6108:	fec42783          	lw	a5,-20(s0)
    610c:	853e                	mv	a0,a5
    610e:	00001097          	auipc	ra,0x1
    6112:	f92080e7          	jalr	-110(ra) # 70a0 <close>
    6116:	0001                	nop
    6118:	70a2                	ld	ra,40(sp)
    611a:	7402                	ld	s0,32(sp)
    611c:	6145                	addi	sp,sp,48
    611e:	8082                	ret

0000000000006120 <rand>:
    6120:	1141                	addi	sp,sp,-16
    6122:	e422                	sd	s0,8(sp)
    6124:	0800                	addi	s0,sp,16
    6126:	00004797          	auipc	a5,0x4
    612a:	fca78793          	addi	a5,a5,-54 # a0f0 <randstate>
    612e:	6398                	ld	a4,0(a5)
    6130:	001967b7          	lui	a5,0x196
    6134:	60d78793          	addi	a5,a5,1549 # 19660d <__BSS_END__+0x185ce5>
    6138:	02f70733          	mul	a4,a4,a5
    613c:	3c6ef7b7          	lui	a5,0x3c6ef
    6140:	35f78793          	addi	a5,a5,863 # 3c6ef35f <__BSS_END__+0x3c6dea37>
    6144:	973e                	add	a4,a4,a5
    6146:	00004797          	auipc	a5,0x4
    614a:	faa78793          	addi	a5,a5,-86 # a0f0 <randstate>
    614e:	e398                	sd	a4,0(a5)
    6150:	00004797          	auipc	a5,0x4
    6154:	fa078793          	addi	a5,a5,-96 # a0f0 <randstate>
    6158:	639c                	ld	a5,0(a5)
    615a:	2781                	sext.w	a5,a5
    615c:	853e                	mv	a0,a5
    615e:	6422                	ld	s0,8(sp)
    6160:	0141                	addi	sp,sp,16
    6162:	8082                	ret

0000000000006164 <stacktest>:
    6164:	7139                	addi	sp,sp,-64
    6166:	fc06                	sd	ra,56(sp)
    6168:	f822                	sd	s0,48(sp)
    616a:	0080                	addi	s0,sp,64
    616c:	fca43423          	sd	a0,-56(s0)
    6170:	00001097          	auipc	ra,0x1
    6174:	f00080e7          	jalr	-256(ra) # 7070 <fork>
    6178:	87aa                	mv	a5,a0
    617a:	fef42623          	sw	a5,-20(s0)
    617e:	fec42783          	lw	a5,-20(s0)
    6182:	2781                	sext.w	a5,a5
    6184:	e3b9                	bnez	a5,61ca <stacktest+0x66>
    6186:	ffffa097          	auipc	ra,0xffffa
    618a:	e7a080e7          	jalr	-390(ra) # 0 <r_sp>
    618e:	87aa                	mv	a5,a0
    6190:	fef43023          	sd	a5,-32(s0)
    6194:	fe043703          	ld	a4,-32(s0)
    6198:	77fd                	lui	a5,0xfffff
    619a:	97ba                	add	a5,a5,a4
    619c:	fef43023          	sd	a5,-32(s0)
    61a0:	fe043783          	ld	a5,-32(s0)
    61a4:	0007c783          	lbu	a5,0(a5) # fffffffffffff000 <__BSS_END__+0xfffffffffffee6d8>
    61a8:	2781                	sext.w	a5,a5
    61aa:	863e                	mv	a2,a5
    61ac:	fc843583          	ld	a1,-56(s0)
    61b0:	00004517          	auipc	a0,0x4
    61b4:	96850513          	addi	a0,a0,-1688 # 9b18 <longjmp_1+0x21d0>
    61b8:	00001097          	auipc	ra,0x1
    61bc:	3ee080e7          	jalr	1006(ra) # 75a6 <printf>
    61c0:	4505                	li	a0,1
    61c2:	00001097          	auipc	ra,0x1
    61c6:	eb6080e7          	jalr	-330(ra) # 7078 <exit>
    61ca:	fec42783          	lw	a5,-20(s0)
    61ce:	2781                	sext.w	a5,a5
    61d0:	0207d163          	bgez	a5,61f2 <stacktest+0x8e>
    61d4:	fc843583          	ld	a1,-56(s0)
    61d8:	00002517          	auipc	a0,0x2
    61dc:	ed050513          	addi	a0,a0,-304 # 80a8 <longjmp_1+0x760>
    61e0:	00001097          	auipc	ra,0x1
    61e4:	3c6080e7          	jalr	966(ra) # 75a6 <printf>
    61e8:	4505                	li	a0,1
    61ea:	00001097          	auipc	ra,0x1
    61ee:	e8e080e7          	jalr	-370(ra) # 7078 <exit>
    61f2:	fdc40793          	addi	a5,s0,-36
    61f6:	853e                	mv	a0,a5
    61f8:	00001097          	auipc	ra,0x1
    61fc:	e88080e7          	jalr	-376(ra) # 7080 <wait>
    6200:	fdc42783          	lw	a5,-36(s0)
    6204:	873e                	mv	a4,a5
    6206:	57fd                	li	a5,-1
    6208:	00f71763          	bne	a4,a5,6216 <stacktest+0xb2>
    620c:	4501                	li	a0,0
    620e:	00001097          	auipc	ra,0x1
    6212:	e6a080e7          	jalr	-406(ra) # 7078 <exit>
    6216:	fdc42783          	lw	a5,-36(s0)
    621a:	853e                	mv	a0,a5
    621c:	00001097          	auipc	ra,0x1
    6220:	e5c080e7          	jalr	-420(ra) # 7078 <exit>

0000000000006224 <pgbug>:
    6224:	7179                	addi	sp,sp,-48
    6226:	f406                	sd	ra,40(sp)
    6228:	f022                	sd	s0,32(sp)
    622a:	1800                	addi	s0,sp,48
    622c:	fca43c23          	sd	a0,-40(s0)
    6230:	fe043423          	sd	zero,-24(s0)
    6234:	fe840713          	addi	a4,s0,-24
    6238:	00004797          	auipc	a5,0x4
    623c:	e9078793          	addi	a5,a5,-368 # a0c8 <longjmp_1+0x2780>
    6240:	639c                	ld	a5,0(a5)
    6242:	85ba                	mv	a1,a4
    6244:	853e                	mv	a0,a5
    6246:	00001097          	auipc	ra,0x1
    624a:	e6a080e7          	jalr	-406(ra) # 70b0 <exec>
    624e:	00004797          	auipc	a5,0x4
    6252:	e7a78793          	addi	a5,a5,-390 # a0c8 <longjmp_1+0x2780>
    6256:	639c                	ld	a5,0(a5)
    6258:	853e                	mv	a0,a5
    625a:	00001097          	auipc	ra,0x1
    625e:	e2e080e7          	jalr	-466(ra) # 7088 <pipe>
    6262:	4501                	li	a0,0
    6264:	00001097          	auipc	ra,0x1
    6268:	e14080e7          	jalr	-492(ra) # 7078 <exit>

000000000000626c <sbrkbugs>:
    626c:	7179                	addi	sp,sp,-48
    626e:	f406                	sd	ra,40(sp)
    6270:	f022                	sd	s0,32(sp)
    6272:	1800                	addi	s0,sp,48
    6274:	fca43c23          	sd	a0,-40(s0)
    6278:	00001097          	auipc	ra,0x1
    627c:	df8080e7          	jalr	-520(ra) # 7070 <fork>
    6280:	87aa                	mv	a5,a0
    6282:	fef42623          	sw	a5,-20(s0)
    6286:	fec42783          	lw	a5,-20(s0)
    628a:	2781                	sext.w	a5,a5
    628c:	0007df63          	bgez	a5,62aa <sbrkbugs+0x3e>
    6290:	00002517          	auipc	a0,0x2
    6294:	bf050513          	addi	a0,a0,-1040 # 7e80 <longjmp_1+0x538>
    6298:	00001097          	auipc	ra,0x1
    629c:	30e080e7          	jalr	782(ra) # 75a6 <printf>
    62a0:	4505                	li	a0,1
    62a2:	00001097          	auipc	ra,0x1
    62a6:	dd6080e7          	jalr	-554(ra) # 7078 <exit>
    62aa:	fec42783          	lw	a5,-20(s0)
    62ae:	2781                	sext.w	a5,a5
    62b0:	eb85                	bnez	a5,62e0 <sbrkbugs+0x74>
    62b2:	4501                	li	a0,0
    62b4:	00001097          	auipc	ra,0x1
    62b8:	e4c080e7          	jalr	-436(ra) # 7100 <sbrk>
    62bc:	87aa                	mv	a5,a0
    62be:	fef42223          	sw	a5,-28(s0)
    62c2:	fe442783          	lw	a5,-28(s0)
    62c6:	40f007bb          	negw	a5,a5
    62ca:	2781                	sext.w	a5,a5
    62cc:	853e                	mv	a0,a5
    62ce:	00001097          	auipc	ra,0x1
    62d2:	e32080e7          	jalr	-462(ra) # 7100 <sbrk>
    62d6:	4501                	li	a0,0
    62d8:	00001097          	auipc	ra,0x1
    62dc:	da0080e7          	jalr	-608(ra) # 7078 <exit>
    62e0:	4501                	li	a0,0
    62e2:	00001097          	auipc	ra,0x1
    62e6:	d9e080e7          	jalr	-610(ra) # 7080 <wait>
    62ea:	00001097          	auipc	ra,0x1
    62ee:	d86080e7          	jalr	-634(ra) # 7070 <fork>
    62f2:	87aa                	mv	a5,a0
    62f4:	fef42623          	sw	a5,-20(s0)
    62f8:	fec42783          	lw	a5,-20(s0)
    62fc:	2781                	sext.w	a5,a5
    62fe:	0007df63          	bgez	a5,631c <sbrkbugs+0xb0>
    6302:	00002517          	auipc	a0,0x2
    6306:	b7e50513          	addi	a0,a0,-1154 # 7e80 <longjmp_1+0x538>
    630a:	00001097          	auipc	ra,0x1
    630e:	29c080e7          	jalr	668(ra) # 75a6 <printf>
    6312:	4505                	li	a0,1
    6314:	00001097          	auipc	ra,0x1
    6318:	d64080e7          	jalr	-668(ra) # 7078 <exit>
    631c:	fec42783          	lw	a5,-20(s0)
    6320:	2781                	sext.w	a5,a5
    6322:	eb9d                	bnez	a5,6358 <sbrkbugs+0xec>
    6324:	4501                	li	a0,0
    6326:	00001097          	auipc	ra,0x1
    632a:	dda080e7          	jalr	-550(ra) # 7100 <sbrk>
    632e:	87aa                	mv	a5,a0
    6330:	fef42423          	sw	a5,-24(s0)
    6334:	6785                	lui	a5,0x1
    6336:	dac7871b          	addiw	a4,a5,-596
    633a:	fe842783          	lw	a5,-24(s0)
    633e:	40f707bb          	subw	a5,a4,a5
    6342:	2781                	sext.w	a5,a5
    6344:	853e                	mv	a0,a5
    6346:	00001097          	auipc	ra,0x1
    634a:	dba080e7          	jalr	-582(ra) # 7100 <sbrk>
    634e:	4501                	li	a0,0
    6350:	00001097          	auipc	ra,0x1
    6354:	d28080e7          	jalr	-728(ra) # 7078 <exit>
    6358:	4501                	li	a0,0
    635a:	00001097          	auipc	ra,0x1
    635e:	d26080e7          	jalr	-730(ra) # 7080 <wait>
    6362:	00001097          	auipc	ra,0x1
    6366:	d0e080e7          	jalr	-754(ra) # 7070 <fork>
    636a:	87aa                	mv	a5,a0
    636c:	fef42623          	sw	a5,-20(s0)
    6370:	fec42783          	lw	a5,-20(s0)
    6374:	2781                	sext.w	a5,a5
    6376:	0007df63          	bgez	a5,6394 <sbrkbugs+0x128>
    637a:	00002517          	auipc	a0,0x2
    637e:	b0650513          	addi	a0,a0,-1274 # 7e80 <longjmp_1+0x538>
    6382:	00001097          	auipc	ra,0x1
    6386:	224080e7          	jalr	548(ra) # 75a6 <printf>
    638a:	4505                	li	a0,1
    638c:	00001097          	auipc	ra,0x1
    6390:	cec080e7          	jalr	-788(ra) # 7078 <exit>
    6394:	fec42783          	lw	a5,-20(s0)
    6398:	2781                	sext.w	a5,a5
    639a:	ef95                	bnez	a5,63d6 <sbrkbugs+0x16a>
    639c:	4501                	li	a0,0
    639e:	00001097          	auipc	ra,0x1
    63a2:	d62080e7          	jalr	-670(ra) # 7100 <sbrk>
    63a6:	87aa                	mv	a5,a0
    63a8:	2781                	sext.w	a5,a5
    63aa:	672d                	lui	a4,0xb
    63ac:	8007071b          	addiw	a4,a4,-2048
    63b0:	40f707bb          	subw	a5,a4,a5
    63b4:	2781                	sext.w	a5,a5
    63b6:	2781                	sext.w	a5,a5
    63b8:	853e                	mv	a0,a5
    63ba:	00001097          	auipc	ra,0x1
    63be:	d46080e7          	jalr	-698(ra) # 7100 <sbrk>
    63c2:	5559                	li	a0,-10
    63c4:	00001097          	auipc	ra,0x1
    63c8:	d3c080e7          	jalr	-708(ra) # 7100 <sbrk>
    63cc:	4501                	li	a0,0
    63ce:	00001097          	auipc	ra,0x1
    63d2:	caa080e7          	jalr	-854(ra) # 7078 <exit>
    63d6:	4501                	li	a0,0
    63d8:	00001097          	auipc	ra,0x1
    63dc:	ca8080e7          	jalr	-856(ra) # 7080 <wait>
    63e0:	4501                	li	a0,0
    63e2:	00001097          	auipc	ra,0x1
    63e6:	c96080e7          	jalr	-874(ra) # 7078 <exit>

00000000000063ea <badwrite>:
    63ea:	7179                	addi	sp,sp,-48
    63ec:	f406                	sd	ra,40(sp)
    63ee:	f022                	sd	s0,32(sp)
    63f0:	1800                	addi	s0,sp,48
    63f2:	fca43c23          	sd	a0,-40(s0)
    63f6:	25800793          	li	a5,600
    63fa:	fef42423          	sw	a5,-24(s0)
    63fe:	00003517          	auipc	a0,0x3
    6402:	74250513          	addi	a0,a0,1858 # 9b40 <longjmp_1+0x21f8>
    6406:	00001097          	auipc	ra,0x1
    640a:	cc2080e7          	jalr	-830(ra) # 70c8 <unlink>
    640e:	fe042623          	sw	zero,-20(s0)
    6412:	a8bd                	j	6490 <badwrite+0xa6>
    6414:	20100593          	li	a1,513
    6418:	00003517          	auipc	a0,0x3
    641c:	72850513          	addi	a0,a0,1832 # 9b40 <longjmp_1+0x21f8>
    6420:	00001097          	auipc	ra,0x1
    6424:	c98080e7          	jalr	-872(ra) # 70b8 <open>
    6428:	87aa                	mv	a5,a0
    642a:	fef42023          	sw	a5,-32(s0)
    642e:	fe042783          	lw	a5,-32(s0)
    6432:	2781                	sext.w	a5,a5
    6434:	0007df63          	bgez	a5,6452 <badwrite+0x68>
    6438:	00003517          	auipc	a0,0x3
    643c:	71050513          	addi	a0,a0,1808 # 9b48 <longjmp_1+0x2200>
    6440:	00001097          	auipc	ra,0x1
    6444:	166080e7          	jalr	358(ra) # 75a6 <printf>
    6448:	4505                	li	a0,1
    644a:	00001097          	auipc	ra,0x1
    644e:	c2e080e7          	jalr	-978(ra) # 7078 <exit>
    6452:	fe042703          	lw	a4,-32(s0)
    6456:	4605                	li	a2,1
    6458:	57fd                	li	a5,-1
    645a:	0187d593          	srli	a1,a5,0x18
    645e:	853a                	mv	a0,a4
    6460:	00001097          	auipc	ra,0x1
    6464:	c38080e7          	jalr	-968(ra) # 7098 <write>
    6468:	fe042783          	lw	a5,-32(s0)
    646c:	853e                	mv	a0,a5
    646e:	00001097          	auipc	ra,0x1
    6472:	c32080e7          	jalr	-974(ra) # 70a0 <close>
    6476:	00003517          	auipc	a0,0x3
    647a:	6ca50513          	addi	a0,a0,1738 # 9b40 <longjmp_1+0x21f8>
    647e:	00001097          	auipc	ra,0x1
    6482:	c4a080e7          	jalr	-950(ra) # 70c8 <unlink>
    6486:	fec42783          	lw	a5,-20(s0)
    648a:	2785                	addiw	a5,a5,1
    648c:	fef42623          	sw	a5,-20(s0)
    6490:	fec42703          	lw	a4,-20(s0)
    6494:	fe842783          	lw	a5,-24(s0)
    6498:	2701                	sext.w	a4,a4
    649a:	2781                	sext.w	a5,a5
    649c:	f6f74ce3          	blt	a4,a5,6414 <badwrite+0x2a>
    64a0:	20100593          	li	a1,513
    64a4:	00003517          	auipc	a0,0x3
    64a8:	69c50513          	addi	a0,a0,1692 # 9b40 <longjmp_1+0x21f8>
    64ac:	00001097          	auipc	ra,0x1
    64b0:	c0c080e7          	jalr	-1012(ra) # 70b8 <open>
    64b4:	87aa                	mv	a5,a0
    64b6:	fef42223          	sw	a5,-28(s0)
    64ba:	fe442783          	lw	a5,-28(s0)
    64be:	2781                	sext.w	a5,a5
    64c0:	0007df63          	bgez	a5,64de <badwrite+0xf4>
    64c4:	00003517          	auipc	a0,0x3
    64c8:	68450513          	addi	a0,a0,1668 # 9b48 <longjmp_1+0x2200>
    64cc:	00001097          	auipc	ra,0x1
    64d0:	0da080e7          	jalr	218(ra) # 75a6 <printf>
    64d4:	4505                	li	a0,1
    64d6:	00001097          	auipc	ra,0x1
    64da:	ba2080e7          	jalr	-1118(ra) # 7078 <exit>
    64de:	fe442783          	lw	a5,-28(s0)
    64e2:	4605                	li	a2,1
    64e4:	00002597          	auipc	a1,0x2
    64e8:	89c58593          	addi	a1,a1,-1892 # 7d80 <longjmp_1+0x438>
    64ec:	853e                	mv	a0,a5
    64ee:	00001097          	auipc	ra,0x1
    64f2:	baa080e7          	jalr	-1110(ra) # 7098 <write>
    64f6:	87aa                	mv	a5,a0
    64f8:	873e                	mv	a4,a5
    64fa:	4785                	li	a5,1
    64fc:	00f70f63          	beq	a4,a5,651a <badwrite+0x130>
    6500:	00003517          	auipc	a0,0x3
    6504:	66050513          	addi	a0,a0,1632 # 9b60 <longjmp_1+0x2218>
    6508:	00001097          	auipc	ra,0x1
    650c:	09e080e7          	jalr	158(ra) # 75a6 <printf>
    6510:	4505                	li	a0,1
    6512:	00001097          	auipc	ra,0x1
    6516:	b66080e7          	jalr	-1178(ra) # 7078 <exit>
    651a:	fe442783          	lw	a5,-28(s0)
    651e:	853e                	mv	a0,a5
    6520:	00001097          	auipc	ra,0x1
    6524:	b80080e7          	jalr	-1152(ra) # 70a0 <close>
    6528:	00003517          	auipc	a0,0x3
    652c:	61850513          	addi	a0,a0,1560 # 9b40 <longjmp_1+0x21f8>
    6530:	00001097          	auipc	ra,0x1
    6534:	b98080e7          	jalr	-1128(ra) # 70c8 <unlink>
    6538:	4501                	li	a0,0
    653a:	00001097          	auipc	ra,0x1
    653e:	b3e080e7          	jalr	-1218(ra) # 7078 <exit>

0000000000006542 <badarg>:
    6542:	7139                	addi	sp,sp,-64
    6544:	fc06                	sd	ra,56(sp)
    6546:	f822                	sd	s0,48(sp)
    6548:	0080                	addi	s0,sp,64
    654a:	fca43423          	sd	a0,-56(s0)
    654e:	fe042623          	sw	zero,-20(s0)
    6552:	a03d                	j	6580 <badarg+0x3e>
    6554:	57fd                	li	a5,-1
    6556:	9381                	srli	a5,a5,0x20
    6558:	fcf43c23          	sd	a5,-40(s0)
    655c:	fe043023          	sd	zero,-32(s0)
    6560:	fd840793          	addi	a5,s0,-40
    6564:	85be                	mv	a1,a5
    6566:	00002517          	auipc	a0,0x2
    656a:	92a50513          	addi	a0,a0,-1750 # 7e90 <longjmp_1+0x548>
    656e:	00001097          	auipc	ra,0x1
    6572:	b42080e7          	jalr	-1214(ra) # 70b0 <exec>
    6576:	fec42783          	lw	a5,-20(s0)
    657a:	2785                	addiw	a5,a5,1
    657c:	fef42623          	sw	a5,-20(s0)
    6580:	fec42783          	lw	a5,-20(s0)
    6584:	0007871b          	sext.w	a4,a5
    6588:	67b1                	lui	a5,0xc
    658a:	34f78793          	addi	a5,a5,847 # c34f <__global_pointer$+0x1a5f>
    658e:	fce7d3e3          	bge	a5,a4,6554 <badarg+0x12>
    6592:	4501                	li	a0,0
    6594:	00001097          	auipc	ra,0x1
    6598:	ae4080e7          	jalr	-1308(ra) # 7078 <exit>

000000000000659c <execout>:
    659c:	715d                	addi	sp,sp,-80
    659e:	e486                	sd	ra,72(sp)
    65a0:	e0a2                	sd	s0,64(sp)
    65a2:	0880                	addi	s0,sp,80
    65a4:	faa43c23          	sd	a0,-72(s0)
    65a8:	fe042623          	sw	zero,-20(s0)
    65ac:	a8c5                	j	669c <execout+0x100>
    65ae:	00001097          	auipc	ra,0x1
    65b2:	ac2080e7          	jalr	-1342(ra) # 7070 <fork>
    65b6:	87aa                	mv	a5,a0
    65b8:	fef42223          	sw	a5,-28(s0)
    65bc:	fe442783          	lw	a5,-28(s0)
    65c0:	2781                	sext.w	a5,a5
    65c2:	0007df63          	bgez	a5,65e0 <execout+0x44>
    65c6:	00002517          	auipc	a0,0x2
    65ca:	8ba50513          	addi	a0,a0,-1862 # 7e80 <longjmp_1+0x538>
    65ce:	00001097          	auipc	ra,0x1
    65d2:	fd8080e7          	jalr	-40(ra) # 75a6 <printf>
    65d6:	4505                	li	a0,1
    65d8:	00001097          	auipc	ra,0x1
    65dc:	aa0080e7          	jalr	-1376(ra) # 7078 <exit>
    65e0:	fe442783          	lw	a5,-28(s0)
    65e4:	2781                	sext.w	a5,a5
    65e6:	e3cd                	bnez	a5,6688 <execout+0xec>
    65e8:	6505                	lui	a0,0x1
    65ea:	00001097          	auipc	ra,0x1
    65ee:	b16080e7          	jalr	-1258(ra) # 7100 <sbrk>
    65f2:	87aa                	mv	a5,a0
    65f4:	fcf43c23          	sd	a5,-40(s0)
    65f8:	fd843703          	ld	a4,-40(s0)
    65fc:	57fd                	li	a5,-1
    65fe:	00f70c63          	beq	a4,a5,6616 <execout+0x7a>
    6602:	fd843703          	ld	a4,-40(s0)
    6606:	6785                	lui	a5,0x1
    6608:	17fd                	addi	a5,a5,-1
    660a:	97ba                	add	a5,a5,a4
    660c:	873e                	mv	a4,a5
    660e:	4785                	li	a5,1
    6610:	00f70023          	sb	a5,0(a4) # b000 <__global_pointer$+0x710>
    6614:	bfd1                	j	65e8 <execout+0x4c>
    6616:	0001                	nop
    6618:	fe042423          	sw	zero,-24(s0)
    661c:	a819                	j	6632 <execout+0x96>
    661e:	757d                	lui	a0,0xfffff
    6620:	00001097          	auipc	ra,0x1
    6624:	ae0080e7          	jalr	-1312(ra) # 7100 <sbrk>
    6628:	fe842783          	lw	a5,-24(s0)
    662c:	2785                	addiw	a5,a5,1
    662e:	fef42423          	sw	a5,-24(s0)
    6632:	fe842703          	lw	a4,-24(s0)
    6636:	fec42783          	lw	a5,-20(s0)
    663a:	2701                	sext.w	a4,a4
    663c:	2781                	sext.w	a5,a5
    663e:	fef740e3          	blt	a4,a5,661e <execout+0x82>
    6642:	4505                	li	a0,1
    6644:	00001097          	auipc	ra,0x1
    6648:	a5c080e7          	jalr	-1444(ra) # 70a0 <close>
    664c:	00002797          	auipc	a5,0x2
    6650:	84478793          	addi	a5,a5,-1980 # 7e90 <longjmp_1+0x548>
    6654:	fcf43023          	sd	a5,-64(s0)
    6658:	00001797          	auipc	a5,0x1
    665c:	72878793          	addi	a5,a5,1832 # 7d80 <longjmp_1+0x438>
    6660:	fcf43423          	sd	a5,-56(s0)
    6664:	fc043823          	sd	zero,-48(s0)
    6668:	fc040793          	addi	a5,s0,-64
    666c:	85be                	mv	a1,a5
    666e:	00002517          	auipc	a0,0x2
    6672:	82250513          	addi	a0,a0,-2014 # 7e90 <longjmp_1+0x548>
    6676:	00001097          	auipc	ra,0x1
    667a:	a3a080e7          	jalr	-1478(ra) # 70b0 <exec>
    667e:	4501                	li	a0,0
    6680:	00001097          	auipc	ra,0x1
    6684:	9f8080e7          	jalr	-1544(ra) # 7078 <exit>
    6688:	4501                	li	a0,0
    668a:	00001097          	auipc	ra,0x1
    668e:	9f6080e7          	jalr	-1546(ra) # 7080 <wait>
    6692:	fec42783          	lw	a5,-20(s0)
    6696:	2785                	addiw	a5,a5,1
    6698:	fef42623          	sw	a5,-20(s0)
    669c:	fec42783          	lw	a5,-20(s0)
    66a0:	0007871b          	sext.w	a4,a5
    66a4:	47b9                	li	a5,14
    66a6:	f0e7d4e3          	bge	a5,a4,65ae <execout+0x12>
    66aa:	4501                	li	a0,0
    66ac:	00001097          	auipc	ra,0x1
    66b0:	9cc080e7          	jalr	-1588(ra) # 7078 <exit>

00000000000066b4 <countfree>:
    66b4:	7139                	addi	sp,sp,-64
    66b6:	fc06                	sd	ra,56(sp)
    66b8:	f822                	sd	s0,48(sp)
    66ba:	0080                	addi	s0,sp,64
    66bc:	fd040793          	addi	a5,s0,-48
    66c0:	853e                	mv	a0,a5
    66c2:	00001097          	auipc	ra,0x1
    66c6:	9c6080e7          	jalr	-1594(ra) # 7088 <pipe>
    66ca:	87aa                	mv	a5,a0
    66cc:	0007df63          	bgez	a5,66ea <countfree+0x36>
    66d0:	00003517          	auipc	a0,0x3
    66d4:	4a050513          	addi	a0,a0,1184 # 9b70 <longjmp_1+0x2228>
    66d8:	00001097          	auipc	ra,0x1
    66dc:	ece080e7          	jalr	-306(ra) # 75a6 <printf>
    66e0:	4505                	li	a0,1
    66e2:	00001097          	auipc	ra,0x1
    66e6:	996080e7          	jalr	-1642(ra) # 7078 <exit>
    66ea:	00001097          	auipc	ra,0x1
    66ee:	986080e7          	jalr	-1658(ra) # 7070 <fork>
    66f2:	87aa                	mv	a5,a0
    66f4:	fef42423          	sw	a5,-24(s0)
    66f8:	fe842783          	lw	a5,-24(s0)
    66fc:	2781                	sext.w	a5,a5
    66fe:	0007df63          	bgez	a5,671c <countfree+0x68>
    6702:	00003517          	auipc	a0,0x3
    6706:	48e50513          	addi	a0,a0,1166 # 9b90 <longjmp_1+0x2248>
    670a:	00001097          	auipc	ra,0x1
    670e:	e9c080e7          	jalr	-356(ra) # 75a6 <printf>
    6712:	4505                	li	a0,1
    6714:	00001097          	auipc	ra,0x1
    6718:	964080e7          	jalr	-1692(ra) # 7078 <exit>
    671c:	fe842783          	lw	a5,-24(s0)
    6720:	2781                	sext.w	a5,a5
    6722:	e3d1                	bnez	a5,67a6 <countfree+0xf2>
    6724:	fd042783          	lw	a5,-48(s0)
    6728:	853e                	mv	a0,a5
    672a:	00001097          	auipc	ra,0x1
    672e:	976080e7          	jalr	-1674(ra) # 70a0 <close>
    6732:	6505                	lui	a0,0x1
    6734:	00001097          	auipc	ra,0x1
    6738:	9cc080e7          	jalr	-1588(ra) # 7100 <sbrk>
    673c:	87aa                	mv	a5,a0
    673e:	fcf43c23          	sd	a5,-40(s0)
    6742:	fd843703          	ld	a4,-40(s0)
    6746:	57fd                	li	a5,-1
    6748:	04f70963          	beq	a4,a5,679a <countfree+0xe6>
    674c:	fd843703          	ld	a4,-40(s0)
    6750:	6785                	lui	a5,0x1
    6752:	17fd                	addi	a5,a5,-1
    6754:	97ba                	add	a5,a5,a4
    6756:	873e                	mv	a4,a5
    6758:	4785                	li	a5,1
    675a:	00f70023          	sb	a5,0(a4)
    675e:	fd442783          	lw	a5,-44(s0)
    6762:	4605                	li	a2,1
    6764:	00001597          	auipc	a1,0x1
    6768:	61c58593          	addi	a1,a1,1564 # 7d80 <longjmp_1+0x438>
    676c:	853e                	mv	a0,a5
    676e:	00001097          	auipc	ra,0x1
    6772:	92a080e7          	jalr	-1750(ra) # 7098 <write>
    6776:	87aa                	mv	a5,a0
    6778:	873e                	mv	a4,a5
    677a:	4785                	li	a5,1
    677c:	faf70be3          	beq	a4,a5,6732 <countfree+0x7e>
    6780:	00003517          	auipc	a0,0x3
    6784:	43050513          	addi	a0,a0,1072 # 9bb0 <longjmp_1+0x2268>
    6788:	00001097          	auipc	ra,0x1
    678c:	e1e080e7          	jalr	-482(ra) # 75a6 <printf>
    6790:	4505                	li	a0,1
    6792:	00001097          	auipc	ra,0x1
    6796:	8e6080e7          	jalr	-1818(ra) # 7078 <exit>
    679a:	0001                	nop
    679c:	4501                	li	a0,0
    679e:	00001097          	auipc	ra,0x1
    67a2:	8da080e7          	jalr	-1830(ra) # 7078 <exit>
    67a6:	fd442783          	lw	a5,-44(s0)
    67aa:	853e                	mv	a0,a5
    67ac:	00001097          	auipc	ra,0x1
    67b0:	8f4080e7          	jalr	-1804(ra) # 70a0 <close>
    67b4:	fe042623          	sw	zero,-20(s0)
    67b8:	fd042783          	lw	a5,-48(s0)
    67bc:	fcf40713          	addi	a4,s0,-49
    67c0:	4605                	li	a2,1
    67c2:	85ba                	mv	a1,a4
    67c4:	853e                	mv	a0,a5
    67c6:	00001097          	auipc	ra,0x1
    67ca:	8ca080e7          	jalr	-1846(ra) # 7090 <read>
    67ce:	87aa                	mv	a5,a0
    67d0:	fef42223          	sw	a5,-28(s0)
    67d4:	fe442783          	lw	a5,-28(s0)
    67d8:	2781                	sext.w	a5,a5
    67da:	0007df63          	bgez	a5,67f8 <countfree+0x144>
    67de:	00003517          	auipc	a0,0x3
    67e2:	3f250513          	addi	a0,a0,1010 # 9bd0 <longjmp_1+0x2288>
    67e6:	00001097          	auipc	ra,0x1
    67ea:	dc0080e7          	jalr	-576(ra) # 75a6 <printf>
    67ee:	4505                	li	a0,1
    67f0:	00001097          	auipc	ra,0x1
    67f4:	888080e7          	jalr	-1912(ra) # 7078 <exit>
    67f8:	fe442783          	lw	a5,-28(s0)
    67fc:	2781                	sext.w	a5,a5
    67fe:	e385                	bnez	a5,681e <countfree+0x16a>
    6800:	fd042783          	lw	a5,-48(s0)
    6804:	853e                	mv	a0,a5
    6806:	00001097          	auipc	ra,0x1
    680a:	89a080e7          	jalr	-1894(ra) # 70a0 <close>
    680e:	4501                	li	a0,0
    6810:	00001097          	auipc	ra,0x1
    6814:	870080e7          	jalr	-1936(ra) # 7080 <wait>
    6818:	fec42783          	lw	a5,-20(s0)
    681c:	a039                	j	682a <countfree+0x176>
    681e:	fec42783          	lw	a5,-20(s0)
    6822:	2785                	addiw	a5,a5,1
    6824:	fef42623          	sw	a5,-20(s0)
    6828:	bf41                	j	67b8 <countfree+0x104>
    682a:	853e                	mv	a0,a5
    682c:	70e2                	ld	ra,56(sp)
    682e:	7442                	ld	s0,48(sp)
    6830:	6121                	addi	sp,sp,64
    6832:	8082                	ret

0000000000006834 <run>:
    6834:	7179                	addi	sp,sp,-48
    6836:	f406                	sd	ra,40(sp)
    6838:	f022                	sd	s0,32(sp)
    683a:	1800                	addi	s0,sp,48
    683c:	fca43c23          	sd	a0,-40(s0)
    6840:	fcb43823          	sd	a1,-48(s0)
    6844:	fd043583          	ld	a1,-48(s0)
    6848:	00003517          	auipc	a0,0x3
    684c:	3a850513          	addi	a0,a0,936 # 9bf0 <longjmp_1+0x22a8>
    6850:	00001097          	auipc	ra,0x1
    6854:	d56080e7          	jalr	-682(ra) # 75a6 <printf>
    6858:	00001097          	auipc	ra,0x1
    685c:	818080e7          	jalr	-2024(ra) # 7070 <fork>
    6860:	87aa                	mv	a5,a0
    6862:	fef42623          	sw	a5,-20(s0)
    6866:	fec42783          	lw	a5,-20(s0)
    686a:	2781                	sext.w	a5,a5
    686c:	0007df63          	bgez	a5,688a <run+0x56>
    6870:	00003517          	auipc	a0,0x3
    6874:	39050513          	addi	a0,a0,912 # 9c00 <longjmp_1+0x22b8>
    6878:	00001097          	auipc	ra,0x1
    687c:	d2e080e7          	jalr	-722(ra) # 75a6 <printf>
    6880:	4505                	li	a0,1
    6882:	00000097          	auipc	ra,0x0
    6886:	7f6080e7          	jalr	2038(ra) # 7078 <exit>
    688a:	fec42783          	lw	a5,-20(s0)
    688e:	2781                	sext.w	a5,a5
    6890:	eb99                	bnez	a5,68a6 <run+0x72>
    6892:	fd843783          	ld	a5,-40(s0)
    6896:	fd043503          	ld	a0,-48(s0)
    689a:	9782                	jalr	a5
    689c:	4501                	li	a0,0
    689e:	00000097          	auipc	ra,0x0
    68a2:	7da080e7          	jalr	2010(ra) # 7078 <exit>
    68a6:	fe840793          	addi	a5,s0,-24
    68aa:	853e                	mv	a0,a5
    68ac:	00000097          	auipc	ra,0x0
    68b0:	7d4080e7          	jalr	2004(ra) # 7080 <wait>
    68b4:	fe842783          	lw	a5,-24(s0)
    68b8:	cb91                	beqz	a5,68cc <run+0x98>
    68ba:	00003517          	auipc	a0,0x3
    68be:	35e50513          	addi	a0,a0,862 # 9c18 <longjmp_1+0x22d0>
    68c2:	00001097          	auipc	ra,0x1
    68c6:	ce4080e7          	jalr	-796(ra) # 75a6 <printf>
    68ca:	a809                	j	68dc <run+0xa8>
    68cc:	00003517          	auipc	a0,0x3
    68d0:	35450513          	addi	a0,a0,852 # 9c20 <longjmp_1+0x22d8>
    68d4:	00001097          	auipc	ra,0x1
    68d8:	cd2080e7          	jalr	-814(ra) # 75a6 <printf>
    68dc:	fe842783          	lw	a5,-24(s0)
    68e0:	0017b793          	seqz	a5,a5
    68e4:	0ff7f793          	andi	a5,a5,255
    68e8:	2781                	sext.w	a5,a5
    68ea:	853e                	mv	a0,a5
    68ec:	70a2                	ld	ra,40(sp)
    68ee:	7402                	ld	s0,32(sp)
    68f0:	6145                	addi	sp,sp,48
    68f2:	8082                	ret

00000000000068f4 <main>:
    68f4:	bf010113          	addi	sp,sp,-1040
    68f8:	40113423          	sd	ra,1032(sp)
    68fc:	40813023          	sd	s0,1024(sp)
    6900:	41010413          	addi	s0,sp,1040
    6904:	87aa                	mv	a5,a0
    6906:	beb43823          	sd	a1,-1040(s0)
    690a:	bef42e23          	sw	a5,-1028(s0)
    690e:	fe042623          	sw	zero,-20(s0)
    6912:	fe043023          	sd	zero,-32(s0)
    6916:	bfc42783          	lw	a5,-1028(s0)
    691a:	0007871b          	sext.w	a4,a5
    691e:	4789                	li	a5,2
    6920:	02f71563          	bne	a4,a5,694a <main+0x56>
    6924:	bf043783          	ld	a5,-1040(s0)
    6928:	07a1                	addi	a5,a5,8
    692a:	639c                	ld	a5,0(a5)
    692c:	00003597          	auipc	a1,0x3
    6930:	2fc58593          	addi	a1,a1,764 # 9c28 <longjmp_1+0x22e0>
    6934:	853e                	mv	a0,a5
    6936:	00000097          	auipc	ra,0x0
    693a:	2fc080e7          	jalr	764(ra) # 6c32 <strcmp>
    693e:	87aa                	mv	a5,a0
    6940:	e789                	bnez	a5,694a <main+0x56>
    6942:	4785                	li	a5,1
    6944:	fef42623          	sw	a5,-20(s0)
    6948:	a079                	j	69d6 <main+0xe2>
    694a:	bfc42783          	lw	a5,-1028(s0)
    694e:	0007871b          	sext.w	a4,a5
    6952:	4789                	li	a5,2
    6954:	02f71563          	bne	a4,a5,697e <main+0x8a>
    6958:	bf043783          	ld	a5,-1040(s0)
    695c:	07a1                	addi	a5,a5,8
    695e:	639c                	ld	a5,0(a5)
    6960:	00003597          	auipc	a1,0x3
    6964:	2d058593          	addi	a1,a1,720 # 9c30 <longjmp_1+0x22e8>
    6968:	853e                	mv	a0,a5
    696a:	00000097          	auipc	ra,0x0
    696e:	2c8080e7          	jalr	712(ra) # 6c32 <strcmp>
    6972:	87aa                	mv	a5,a0
    6974:	e789                	bnez	a5,697e <main+0x8a>
    6976:	4789                	li	a5,2
    6978:	fef42623          	sw	a5,-20(s0)
    697c:	a8a9                	j	69d6 <main+0xe2>
    697e:	bfc42783          	lw	a5,-1028(s0)
    6982:	0007871b          	sext.w	a4,a5
    6986:	4789                	li	a5,2
    6988:	02f71363          	bne	a4,a5,69ae <main+0xba>
    698c:	bf043783          	ld	a5,-1040(s0)
    6990:	07a1                	addi	a5,a5,8
    6992:	639c                	ld	a5,0(a5)
    6994:	0007c783          	lbu	a5,0(a5) # 1000 <truncate3+0x1aa>
    6998:	873e                	mv	a4,a5
    699a:	02d00793          	li	a5,45
    699e:	00f70863          	beq	a4,a5,69ae <main+0xba>
    69a2:	bf043783          	ld	a5,-1040(s0)
    69a6:	679c                	ld	a5,8(a5)
    69a8:	fef43023          	sd	a5,-32(s0)
    69ac:	a02d                	j	69d6 <main+0xe2>
    69ae:	bfc42783          	lw	a5,-1028(s0)
    69b2:	0007871b          	sext.w	a4,a5
    69b6:	4785                	li	a5,1
    69b8:	00e7df63          	bge	a5,a4,69d6 <main+0xe2>
    69bc:	00003517          	auipc	a0,0x3
    69c0:	27c50513          	addi	a0,a0,636 # 9c38 <longjmp_1+0x22f0>
    69c4:	00001097          	auipc	ra,0x1
    69c8:	be2080e7          	jalr	-1054(ra) # 75a6 <printf>
    69cc:	4505                	li	a0,1
    69ce:	00000097          	auipc	ra,0x0
    69d2:	6aa080e7          	jalr	1706(ra) # 7078 <exit>
    69d6:	00003717          	auipc	a4,0x3
    69da:	34270713          	addi	a4,a4,834 # 9d18 <longjmp_1+0x23d0>
    69de:	c0040793          	addi	a5,s0,-1024
    69e2:	86ba                	mv	a3,a4
    69e4:	3b000713          	li	a4,944
    69e8:	863a                	mv	a2,a4
    69ea:	85b6                	mv	a1,a3
    69ec:	853e                	mv	a0,a5
    69ee:	00000097          	auipc	ra,0x0
    69f2:	64a080e7          	jalr	1610(ra) # 7038 <memcpy>
    69f6:	fec42783          	lw	a5,-20(s0)
    69fa:	2781                	sext.w	a5,a5
    69fc:	c7ed                	beqz	a5,6ae6 <main+0x1f2>
    69fe:	00003517          	auipc	a0,0x3
    6a02:	26250513          	addi	a0,a0,610 # 9c60 <longjmp_1+0x2318>
    6a06:	00001097          	auipc	ra,0x1
    6a0a:	ba0080e7          	jalr	-1120(ra) # 75a6 <printf>
    6a0e:	fc042e23          	sw	zero,-36(s0)
    6a12:	00000097          	auipc	ra,0x0
    6a16:	ca2080e7          	jalr	-862(ra) # 66b4 <countfree>
    6a1a:	87aa                	mv	a5,a0
    6a1c:	faf42a23          	sw	a5,-76(s0)
    6a20:	c0040793          	addi	a5,s0,-1024
    6a24:	fcf43823          	sd	a5,-48(s0)
    6a28:	a805                	j	6a58 <main+0x164>
    6a2a:	fd043783          	ld	a5,-48(s0)
    6a2e:	6398                	ld	a4,0(a5)
    6a30:	fd043783          	ld	a5,-48(s0)
    6a34:	679c                	ld	a5,8(a5)
    6a36:	85be                	mv	a1,a5
    6a38:	853a                	mv	a0,a4
    6a3a:	00000097          	auipc	ra,0x0
    6a3e:	dfa080e7          	jalr	-518(ra) # 6834 <run>
    6a42:	87aa                	mv	a5,a0
    6a44:	e789                	bnez	a5,6a4e <main+0x15a>
    6a46:	4785                	li	a5,1
    6a48:	fcf42e23          	sw	a5,-36(s0)
    6a4c:	a811                	j	6a60 <main+0x16c>
    6a4e:	fd043783          	ld	a5,-48(s0)
    6a52:	07c1                	addi	a5,a5,16
    6a54:	fcf43823          	sd	a5,-48(s0)
    6a58:	fd043783          	ld	a5,-48(s0)
    6a5c:	679c                	ld	a5,8(a5)
    6a5e:	f7f1                	bnez	a5,6a2a <main+0x136>
    6a60:	fdc42783          	lw	a5,-36(s0)
    6a64:	2781                	sext.w	a5,a5
    6a66:	c78d                	beqz	a5,6a90 <main+0x19c>
    6a68:	00003517          	auipc	a0,0x3
    6a6c:	21850513          	addi	a0,a0,536 # 9c80 <longjmp_1+0x2338>
    6a70:	00001097          	auipc	ra,0x1
    6a74:	b36080e7          	jalr	-1226(ra) # 75a6 <printf>
    6a78:	fec42783          	lw	a5,-20(s0)
    6a7c:	0007871b          	sext.w	a4,a5
    6a80:	4789                	li	a5,2
    6a82:	00f70763          	beq	a4,a5,6a90 <main+0x19c>
    6a86:	4505                	li	a0,1
    6a88:	00000097          	auipc	ra,0x0
    6a8c:	5f0080e7          	jalr	1520(ra) # 7078 <exit>
    6a90:	00000097          	auipc	ra,0x0
    6a94:	c24080e7          	jalr	-988(ra) # 66b4 <countfree>
    6a98:	87aa                	mv	a5,a0
    6a9a:	faf42823          	sw	a5,-80(s0)
    6a9e:	fb042703          	lw	a4,-80(s0)
    6aa2:	fb442783          	lw	a5,-76(s0)
    6aa6:	2701                	sext.w	a4,a4
    6aa8:	2781                	sext.w	a5,a5
    6aaa:	f6f752e3          	bge	a4,a5,6a0e <main+0x11a>
    6aae:	fb442703          	lw	a4,-76(s0)
    6ab2:	fb042783          	lw	a5,-80(s0)
    6ab6:	40f707bb          	subw	a5,a4,a5
    6aba:	2781                	sext.w	a5,a5
    6abc:	85be                	mv	a1,a5
    6abe:	00003517          	auipc	a0,0x3
    6ac2:	1da50513          	addi	a0,a0,474 # 9c98 <longjmp_1+0x2350>
    6ac6:	00001097          	auipc	ra,0x1
    6aca:	ae0080e7          	jalr	-1312(ra) # 75a6 <printf>
    6ace:	fec42783          	lw	a5,-20(s0)
    6ad2:	0007871b          	sext.w	a4,a5
    6ad6:	4789                	li	a5,2
    6ad8:	f2f70be3          	beq	a4,a5,6a0e <main+0x11a>
    6adc:	4505                	li	a0,1
    6ade:	00000097          	auipc	ra,0x0
    6ae2:	59a080e7          	jalr	1434(ra) # 7078 <exit>
    6ae6:	00003517          	auipc	a0,0x3
    6aea:	1d250513          	addi	a0,a0,466 # 9cb8 <longjmp_1+0x2370>
    6aee:	00001097          	auipc	ra,0x1
    6af2:	ab8080e7          	jalr	-1352(ra) # 75a6 <printf>
    6af6:	00000097          	auipc	ra,0x0
    6afa:	bbe080e7          	jalr	-1090(ra) # 66b4 <countfree>
    6afe:	87aa                	mv	a5,a0
    6b00:	faf42e23          	sw	a5,-68(s0)
    6b04:	fa042c23          	sw	zero,-72(s0)
    6b08:	fc042623          	sw	zero,-52(s0)
    6b0c:	c0040793          	addi	a5,s0,-1024
    6b10:	fcf43023          	sd	a5,-64(s0)
    6b14:	a0b1                	j	6b60 <main+0x26c>
    6b16:	fe043783          	ld	a5,-32(s0)
    6b1a:	cf89                	beqz	a5,6b34 <main+0x240>
    6b1c:	fc043783          	ld	a5,-64(s0)
    6b20:	679c                	ld	a5,8(a5)
    6b22:	fe043583          	ld	a1,-32(s0)
    6b26:	853e                	mv	a0,a5
    6b28:	00000097          	auipc	ra,0x0
    6b2c:	10a080e7          	jalr	266(ra) # 6c32 <strcmp>
    6b30:	87aa                	mv	a5,a0
    6b32:	e395                	bnez	a5,6b56 <main+0x262>
    6b34:	fc043783          	ld	a5,-64(s0)
    6b38:	6398                	ld	a4,0(a5)
    6b3a:	fc043783          	ld	a5,-64(s0)
    6b3e:	679c                	ld	a5,8(a5)
    6b40:	85be                	mv	a1,a5
    6b42:	853a                	mv	a0,a4
    6b44:	00000097          	auipc	ra,0x0
    6b48:	cf0080e7          	jalr	-784(ra) # 6834 <run>
    6b4c:	87aa                	mv	a5,a0
    6b4e:	e781                	bnez	a5,6b56 <main+0x262>
    6b50:	4785                	li	a5,1
    6b52:	fcf42623          	sw	a5,-52(s0)
    6b56:	fc043783          	ld	a5,-64(s0)
    6b5a:	07c1                	addi	a5,a5,16
    6b5c:	fcf43023          	sd	a5,-64(s0)
    6b60:	fc043783          	ld	a5,-64(s0)
    6b64:	679c                	ld	a5,8(a5)
    6b66:	fbc5                	bnez	a5,6b16 <main+0x222>
    6b68:	fcc42783          	lw	a5,-52(s0)
    6b6c:	2781                	sext.w	a5,a5
    6b6e:	cf91                	beqz	a5,6b8a <main+0x296>
    6b70:	00003517          	auipc	a0,0x3
    6b74:	11050513          	addi	a0,a0,272 # 9c80 <longjmp_1+0x2338>
    6b78:	00001097          	auipc	ra,0x1
    6b7c:	a2e080e7          	jalr	-1490(ra) # 75a6 <printf>
    6b80:	4505                	li	a0,1
    6b82:	00000097          	auipc	ra,0x0
    6b86:	4f6080e7          	jalr	1270(ra) # 7078 <exit>
    6b8a:	00000097          	auipc	ra,0x0
    6b8e:	b2a080e7          	jalr	-1238(ra) # 66b4 <countfree>
    6b92:	87aa                	mv	a5,a0
    6b94:	faf42c23          	sw	a5,-72(s0)
    6b98:	fb842703          	lw	a4,-72(s0)
    6b9c:	fbc42783          	lw	a5,-68(s0)
    6ba0:	2701                	sext.w	a4,a4
    6ba2:	2781                	sext.w	a5,a5
    6ba4:	02f75563          	bge	a4,a5,6bce <main+0x2da>
    6ba8:	fbc42703          	lw	a4,-68(s0)
    6bac:	fb842783          	lw	a5,-72(s0)
    6bb0:	863a                	mv	a2,a4
    6bb2:	85be                	mv	a1,a5
    6bb4:	00003517          	auipc	a0,0x3
    6bb8:	11c50513          	addi	a0,a0,284 # 9cd0 <longjmp_1+0x2388>
    6bbc:	00001097          	auipc	ra,0x1
    6bc0:	9ea080e7          	jalr	-1558(ra) # 75a6 <printf>
    6bc4:	4505                	li	a0,1
    6bc6:	00000097          	auipc	ra,0x0
    6bca:	4b2080e7          	jalr	1202(ra) # 7078 <exit>
    6bce:	00003517          	auipc	a0,0x3
    6bd2:	13250513          	addi	a0,a0,306 # 9d00 <longjmp_1+0x23b8>
    6bd6:	00001097          	auipc	ra,0x1
    6bda:	9d0080e7          	jalr	-1584(ra) # 75a6 <printf>
    6bde:	4501                	li	a0,0
    6be0:	00000097          	auipc	ra,0x0
    6be4:	498080e7          	jalr	1176(ra) # 7078 <exit>

0000000000006be8 <strcpy>:
    6be8:	7179                	addi	sp,sp,-48
    6bea:	f422                	sd	s0,40(sp)
    6bec:	1800                	addi	s0,sp,48
    6bee:	fca43c23          	sd	a0,-40(s0)
    6bf2:	fcb43823          	sd	a1,-48(s0)
    6bf6:	fd843783          	ld	a5,-40(s0)
    6bfa:	fef43423          	sd	a5,-24(s0)
    6bfe:	0001                	nop
    6c00:	fd043703          	ld	a4,-48(s0)
    6c04:	00170793          	addi	a5,a4,1
    6c08:	fcf43823          	sd	a5,-48(s0)
    6c0c:	fd843783          	ld	a5,-40(s0)
    6c10:	00178693          	addi	a3,a5,1
    6c14:	fcd43c23          	sd	a3,-40(s0)
    6c18:	00074703          	lbu	a4,0(a4)
    6c1c:	00e78023          	sb	a4,0(a5)
    6c20:	0007c783          	lbu	a5,0(a5)
    6c24:	fff1                	bnez	a5,6c00 <strcpy+0x18>
    6c26:	fe843783          	ld	a5,-24(s0)
    6c2a:	853e                	mv	a0,a5
    6c2c:	7422                	ld	s0,40(sp)
    6c2e:	6145                	addi	sp,sp,48
    6c30:	8082                	ret

0000000000006c32 <strcmp>:
    6c32:	1101                	addi	sp,sp,-32
    6c34:	ec22                	sd	s0,24(sp)
    6c36:	1000                	addi	s0,sp,32
    6c38:	fea43423          	sd	a0,-24(s0)
    6c3c:	feb43023          	sd	a1,-32(s0)
    6c40:	a819                	j	6c56 <strcmp+0x24>
    6c42:	fe843783          	ld	a5,-24(s0)
    6c46:	0785                	addi	a5,a5,1
    6c48:	fef43423          	sd	a5,-24(s0)
    6c4c:	fe043783          	ld	a5,-32(s0)
    6c50:	0785                	addi	a5,a5,1
    6c52:	fef43023          	sd	a5,-32(s0)
    6c56:	fe843783          	ld	a5,-24(s0)
    6c5a:	0007c783          	lbu	a5,0(a5)
    6c5e:	cb99                	beqz	a5,6c74 <strcmp+0x42>
    6c60:	fe843783          	ld	a5,-24(s0)
    6c64:	0007c703          	lbu	a4,0(a5)
    6c68:	fe043783          	ld	a5,-32(s0)
    6c6c:	0007c783          	lbu	a5,0(a5)
    6c70:	fcf709e3          	beq	a4,a5,6c42 <strcmp+0x10>
    6c74:	fe843783          	ld	a5,-24(s0)
    6c78:	0007c783          	lbu	a5,0(a5)
    6c7c:	0007871b          	sext.w	a4,a5
    6c80:	fe043783          	ld	a5,-32(s0)
    6c84:	0007c783          	lbu	a5,0(a5)
    6c88:	2781                	sext.w	a5,a5
    6c8a:	40f707bb          	subw	a5,a4,a5
    6c8e:	2781                	sext.w	a5,a5
    6c90:	853e                	mv	a0,a5
    6c92:	6462                	ld	s0,24(sp)
    6c94:	6105                	addi	sp,sp,32
    6c96:	8082                	ret

0000000000006c98 <strlen>:
    6c98:	7179                	addi	sp,sp,-48
    6c9a:	f422                	sd	s0,40(sp)
    6c9c:	1800                	addi	s0,sp,48
    6c9e:	fca43c23          	sd	a0,-40(s0)
    6ca2:	fe042623          	sw	zero,-20(s0)
    6ca6:	a031                	j	6cb2 <strlen+0x1a>
    6ca8:	fec42783          	lw	a5,-20(s0)
    6cac:	2785                	addiw	a5,a5,1
    6cae:	fef42623          	sw	a5,-20(s0)
    6cb2:	fec42783          	lw	a5,-20(s0)
    6cb6:	fd843703          	ld	a4,-40(s0)
    6cba:	97ba                	add	a5,a5,a4
    6cbc:	0007c783          	lbu	a5,0(a5)
    6cc0:	f7e5                	bnez	a5,6ca8 <strlen+0x10>
    6cc2:	fec42783          	lw	a5,-20(s0)
    6cc6:	853e                	mv	a0,a5
    6cc8:	7422                	ld	s0,40(sp)
    6cca:	6145                	addi	sp,sp,48
    6ccc:	8082                	ret

0000000000006cce <memset>:
    6cce:	7179                	addi	sp,sp,-48
    6cd0:	f422                	sd	s0,40(sp)
    6cd2:	1800                	addi	s0,sp,48
    6cd4:	fca43c23          	sd	a0,-40(s0)
    6cd8:	87ae                	mv	a5,a1
    6cda:	8732                	mv	a4,a2
    6cdc:	fcf42a23          	sw	a5,-44(s0)
    6ce0:	87ba                	mv	a5,a4
    6ce2:	fcf42823          	sw	a5,-48(s0)
    6ce6:	fd843783          	ld	a5,-40(s0)
    6cea:	fef43023          	sd	a5,-32(s0)
    6cee:	fe042623          	sw	zero,-20(s0)
    6cf2:	a00d                	j	6d14 <memset+0x46>
    6cf4:	fec42783          	lw	a5,-20(s0)
    6cf8:	fe043703          	ld	a4,-32(s0)
    6cfc:	97ba                	add	a5,a5,a4
    6cfe:	fd442703          	lw	a4,-44(s0)
    6d02:	0ff77713          	andi	a4,a4,255
    6d06:	00e78023          	sb	a4,0(a5)
    6d0a:	fec42783          	lw	a5,-20(s0)
    6d0e:	2785                	addiw	a5,a5,1
    6d10:	fef42623          	sw	a5,-20(s0)
    6d14:	fec42703          	lw	a4,-20(s0)
    6d18:	fd042783          	lw	a5,-48(s0)
    6d1c:	2781                	sext.w	a5,a5
    6d1e:	fcf76be3          	bltu	a4,a5,6cf4 <memset+0x26>
    6d22:	fd843783          	ld	a5,-40(s0)
    6d26:	853e                	mv	a0,a5
    6d28:	7422                	ld	s0,40(sp)
    6d2a:	6145                	addi	sp,sp,48
    6d2c:	8082                	ret

0000000000006d2e <strchr>:
    6d2e:	1101                	addi	sp,sp,-32
    6d30:	ec22                	sd	s0,24(sp)
    6d32:	1000                	addi	s0,sp,32
    6d34:	fea43423          	sd	a0,-24(s0)
    6d38:	87ae                	mv	a5,a1
    6d3a:	fef403a3          	sb	a5,-25(s0)
    6d3e:	a01d                	j	6d64 <strchr+0x36>
    6d40:	fe843783          	ld	a5,-24(s0)
    6d44:	0007c703          	lbu	a4,0(a5)
    6d48:	fe744783          	lbu	a5,-25(s0)
    6d4c:	0ff7f793          	andi	a5,a5,255
    6d50:	00e79563          	bne	a5,a4,6d5a <strchr+0x2c>
    6d54:	fe843783          	ld	a5,-24(s0)
    6d58:	a821                	j	6d70 <strchr+0x42>
    6d5a:	fe843783          	ld	a5,-24(s0)
    6d5e:	0785                	addi	a5,a5,1
    6d60:	fef43423          	sd	a5,-24(s0)
    6d64:	fe843783          	ld	a5,-24(s0)
    6d68:	0007c783          	lbu	a5,0(a5)
    6d6c:	fbf1                	bnez	a5,6d40 <strchr+0x12>
    6d6e:	4781                	li	a5,0
    6d70:	853e                	mv	a0,a5
    6d72:	6462                	ld	s0,24(sp)
    6d74:	6105                	addi	sp,sp,32
    6d76:	8082                	ret

0000000000006d78 <gets>:
    6d78:	7179                	addi	sp,sp,-48
    6d7a:	f406                	sd	ra,40(sp)
    6d7c:	f022                	sd	s0,32(sp)
    6d7e:	1800                	addi	s0,sp,48
    6d80:	fca43c23          	sd	a0,-40(s0)
    6d84:	87ae                	mv	a5,a1
    6d86:	fcf42a23          	sw	a5,-44(s0)
    6d8a:	fe042623          	sw	zero,-20(s0)
    6d8e:	a8a1                	j	6de6 <gets+0x6e>
    6d90:	fe740793          	addi	a5,s0,-25
    6d94:	4605                	li	a2,1
    6d96:	85be                	mv	a1,a5
    6d98:	4501                	li	a0,0
    6d9a:	00000097          	auipc	ra,0x0
    6d9e:	2f6080e7          	jalr	758(ra) # 7090 <read>
    6da2:	87aa                	mv	a5,a0
    6da4:	fef42423          	sw	a5,-24(s0)
    6da8:	fe842783          	lw	a5,-24(s0)
    6dac:	2781                	sext.w	a5,a5
    6dae:	04f05763          	blez	a5,6dfc <gets+0x84>
    6db2:	fec42783          	lw	a5,-20(s0)
    6db6:	0017871b          	addiw	a4,a5,1
    6dba:	fee42623          	sw	a4,-20(s0)
    6dbe:	873e                	mv	a4,a5
    6dc0:	fd843783          	ld	a5,-40(s0)
    6dc4:	97ba                	add	a5,a5,a4
    6dc6:	fe744703          	lbu	a4,-25(s0)
    6dca:	00e78023          	sb	a4,0(a5)
    6dce:	fe744783          	lbu	a5,-25(s0)
    6dd2:	873e                	mv	a4,a5
    6dd4:	47a9                	li	a5,10
    6dd6:	02f70463          	beq	a4,a5,6dfe <gets+0x86>
    6dda:	fe744783          	lbu	a5,-25(s0)
    6dde:	873e                	mv	a4,a5
    6de0:	47b5                	li	a5,13
    6de2:	00f70e63          	beq	a4,a5,6dfe <gets+0x86>
    6de6:	fec42783          	lw	a5,-20(s0)
    6dea:	2785                	addiw	a5,a5,1
    6dec:	0007871b          	sext.w	a4,a5
    6df0:	fd442783          	lw	a5,-44(s0)
    6df4:	2781                	sext.w	a5,a5
    6df6:	f8f74de3          	blt	a4,a5,6d90 <gets+0x18>
    6dfa:	a011                	j	6dfe <gets+0x86>
    6dfc:	0001                	nop
    6dfe:	fec42783          	lw	a5,-20(s0)
    6e02:	fd843703          	ld	a4,-40(s0)
    6e06:	97ba                	add	a5,a5,a4
    6e08:	00078023          	sb	zero,0(a5)
    6e0c:	fd843783          	ld	a5,-40(s0)
    6e10:	853e                	mv	a0,a5
    6e12:	70a2                	ld	ra,40(sp)
    6e14:	7402                	ld	s0,32(sp)
    6e16:	6145                	addi	sp,sp,48
    6e18:	8082                	ret

0000000000006e1a <stat>:
    6e1a:	7179                	addi	sp,sp,-48
    6e1c:	f406                	sd	ra,40(sp)
    6e1e:	f022                	sd	s0,32(sp)
    6e20:	1800                	addi	s0,sp,48
    6e22:	fca43c23          	sd	a0,-40(s0)
    6e26:	fcb43823          	sd	a1,-48(s0)
    6e2a:	4581                	li	a1,0
    6e2c:	fd843503          	ld	a0,-40(s0)
    6e30:	00000097          	auipc	ra,0x0
    6e34:	288080e7          	jalr	648(ra) # 70b8 <open>
    6e38:	87aa                	mv	a5,a0
    6e3a:	fef42623          	sw	a5,-20(s0)
    6e3e:	fec42783          	lw	a5,-20(s0)
    6e42:	2781                	sext.w	a5,a5
    6e44:	0007d463          	bgez	a5,6e4c <stat+0x32>
    6e48:	57fd                	li	a5,-1
    6e4a:	a035                	j	6e76 <stat+0x5c>
    6e4c:	fec42783          	lw	a5,-20(s0)
    6e50:	fd043583          	ld	a1,-48(s0)
    6e54:	853e                	mv	a0,a5
    6e56:	00000097          	auipc	ra,0x0
    6e5a:	27a080e7          	jalr	634(ra) # 70d0 <fstat>
    6e5e:	87aa                	mv	a5,a0
    6e60:	fef42423          	sw	a5,-24(s0)
    6e64:	fec42783          	lw	a5,-20(s0)
    6e68:	853e                	mv	a0,a5
    6e6a:	00000097          	auipc	ra,0x0
    6e6e:	236080e7          	jalr	566(ra) # 70a0 <close>
    6e72:	fe842783          	lw	a5,-24(s0)
    6e76:	853e                	mv	a0,a5
    6e78:	70a2                	ld	ra,40(sp)
    6e7a:	7402                	ld	s0,32(sp)
    6e7c:	6145                	addi	sp,sp,48
    6e7e:	8082                	ret

0000000000006e80 <atoi>:
    6e80:	7179                	addi	sp,sp,-48
    6e82:	f422                	sd	s0,40(sp)
    6e84:	1800                	addi	s0,sp,48
    6e86:	fca43c23          	sd	a0,-40(s0)
    6e8a:	fe042623          	sw	zero,-20(s0)
    6e8e:	a815                	j	6ec2 <atoi+0x42>
    6e90:	fec42703          	lw	a4,-20(s0)
    6e94:	87ba                	mv	a5,a4
    6e96:	0027979b          	slliw	a5,a5,0x2
    6e9a:	9fb9                	addw	a5,a5,a4
    6e9c:	0017979b          	slliw	a5,a5,0x1
    6ea0:	0007871b          	sext.w	a4,a5
    6ea4:	fd843783          	ld	a5,-40(s0)
    6ea8:	00178693          	addi	a3,a5,1
    6eac:	fcd43c23          	sd	a3,-40(s0)
    6eb0:	0007c783          	lbu	a5,0(a5)
    6eb4:	2781                	sext.w	a5,a5
    6eb6:	9fb9                	addw	a5,a5,a4
    6eb8:	2781                	sext.w	a5,a5
    6eba:	fd07879b          	addiw	a5,a5,-48
    6ebe:	fef42623          	sw	a5,-20(s0)
    6ec2:	fd843783          	ld	a5,-40(s0)
    6ec6:	0007c783          	lbu	a5,0(a5)
    6eca:	873e                	mv	a4,a5
    6ecc:	02f00793          	li	a5,47
    6ed0:	00e7fb63          	bgeu	a5,a4,6ee6 <atoi+0x66>
    6ed4:	fd843783          	ld	a5,-40(s0)
    6ed8:	0007c783          	lbu	a5,0(a5)
    6edc:	873e                	mv	a4,a5
    6ede:	03900793          	li	a5,57
    6ee2:	fae7f7e3          	bgeu	a5,a4,6e90 <atoi+0x10>
    6ee6:	fec42783          	lw	a5,-20(s0)
    6eea:	853e                	mv	a0,a5
    6eec:	7422                	ld	s0,40(sp)
    6eee:	6145                	addi	sp,sp,48
    6ef0:	8082                	ret

0000000000006ef2 <memmove>:
    6ef2:	7139                	addi	sp,sp,-64
    6ef4:	fc22                	sd	s0,56(sp)
    6ef6:	0080                	addi	s0,sp,64
    6ef8:	fca43c23          	sd	a0,-40(s0)
    6efc:	fcb43823          	sd	a1,-48(s0)
    6f00:	87b2                	mv	a5,a2
    6f02:	fcf42623          	sw	a5,-52(s0)
    6f06:	fd843783          	ld	a5,-40(s0)
    6f0a:	fef43423          	sd	a5,-24(s0)
    6f0e:	fd043783          	ld	a5,-48(s0)
    6f12:	fef43023          	sd	a5,-32(s0)
    6f16:	fe043703          	ld	a4,-32(s0)
    6f1a:	fe843783          	ld	a5,-24(s0)
    6f1e:	02e7fc63          	bgeu	a5,a4,6f56 <memmove+0x64>
    6f22:	a00d                	j	6f44 <memmove+0x52>
    6f24:	fe043703          	ld	a4,-32(s0)
    6f28:	00170793          	addi	a5,a4,1
    6f2c:	fef43023          	sd	a5,-32(s0)
    6f30:	fe843783          	ld	a5,-24(s0)
    6f34:	00178693          	addi	a3,a5,1
    6f38:	fed43423          	sd	a3,-24(s0)
    6f3c:	00074703          	lbu	a4,0(a4)
    6f40:	00e78023          	sb	a4,0(a5)
    6f44:	fcc42783          	lw	a5,-52(s0)
    6f48:	fff7871b          	addiw	a4,a5,-1
    6f4c:	fce42623          	sw	a4,-52(s0)
    6f50:	fcf04ae3          	bgtz	a5,6f24 <memmove+0x32>
    6f54:	a891                	j	6fa8 <memmove+0xb6>
    6f56:	fcc42783          	lw	a5,-52(s0)
    6f5a:	fe843703          	ld	a4,-24(s0)
    6f5e:	97ba                	add	a5,a5,a4
    6f60:	fef43423          	sd	a5,-24(s0)
    6f64:	fcc42783          	lw	a5,-52(s0)
    6f68:	fe043703          	ld	a4,-32(s0)
    6f6c:	97ba                	add	a5,a5,a4
    6f6e:	fef43023          	sd	a5,-32(s0)
    6f72:	a01d                	j	6f98 <memmove+0xa6>
    6f74:	fe043783          	ld	a5,-32(s0)
    6f78:	17fd                	addi	a5,a5,-1
    6f7a:	fef43023          	sd	a5,-32(s0)
    6f7e:	fe843783          	ld	a5,-24(s0)
    6f82:	17fd                	addi	a5,a5,-1
    6f84:	fef43423          	sd	a5,-24(s0)
    6f88:	fe043783          	ld	a5,-32(s0)
    6f8c:	0007c703          	lbu	a4,0(a5)
    6f90:	fe843783          	ld	a5,-24(s0)
    6f94:	00e78023          	sb	a4,0(a5)
    6f98:	fcc42783          	lw	a5,-52(s0)
    6f9c:	fff7871b          	addiw	a4,a5,-1
    6fa0:	fce42623          	sw	a4,-52(s0)
    6fa4:	fcf048e3          	bgtz	a5,6f74 <memmove+0x82>
    6fa8:	fd843783          	ld	a5,-40(s0)
    6fac:	853e                	mv	a0,a5
    6fae:	7462                	ld	s0,56(sp)
    6fb0:	6121                	addi	sp,sp,64
    6fb2:	8082                	ret

0000000000006fb4 <memcmp>:
    6fb4:	7139                	addi	sp,sp,-64
    6fb6:	fc22                	sd	s0,56(sp)
    6fb8:	0080                	addi	s0,sp,64
    6fba:	fca43c23          	sd	a0,-40(s0)
    6fbe:	fcb43823          	sd	a1,-48(s0)
    6fc2:	87b2                	mv	a5,a2
    6fc4:	fcf42623          	sw	a5,-52(s0)
    6fc8:	fd843783          	ld	a5,-40(s0)
    6fcc:	fef43423          	sd	a5,-24(s0)
    6fd0:	fd043783          	ld	a5,-48(s0)
    6fd4:	fef43023          	sd	a5,-32(s0)
    6fd8:	a0a1                	j	7020 <memcmp+0x6c>
    6fda:	fe843783          	ld	a5,-24(s0)
    6fde:	0007c703          	lbu	a4,0(a5)
    6fe2:	fe043783          	ld	a5,-32(s0)
    6fe6:	0007c783          	lbu	a5,0(a5)
    6fea:	02f70163          	beq	a4,a5,700c <memcmp+0x58>
    6fee:	fe843783          	ld	a5,-24(s0)
    6ff2:	0007c783          	lbu	a5,0(a5)
    6ff6:	0007871b          	sext.w	a4,a5
    6ffa:	fe043783          	ld	a5,-32(s0)
    6ffe:	0007c783          	lbu	a5,0(a5)
    7002:	2781                	sext.w	a5,a5
    7004:	40f707bb          	subw	a5,a4,a5
    7008:	2781                	sext.w	a5,a5
    700a:	a01d                	j	7030 <memcmp+0x7c>
    700c:	fe843783          	ld	a5,-24(s0)
    7010:	0785                	addi	a5,a5,1
    7012:	fef43423          	sd	a5,-24(s0)
    7016:	fe043783          	ld	a5,-32(s0)
    701a:	0785                	addi	a5,a5,1
    701c:	fef43023          	sd	a5,-32(s0)
    7020:	fcc42783          	lw	a5,-52(s0)
    7024:	fff7871b          	addiw	a4,a5,-1
    7028:	fce42623          	sw	a4,-52(s0)
    702c:	f7dd                	bnez	a5,6fda <memcmp+0x26>
    702e:	4781                	li	a5,0
    7030:	853e                	mv	a0,a5
    7032:	7462                	ld	s0,56(sp)
    7034:	6121                	addi	sp,sp,64
    7036:	8082                	ret

0000000000007038 <memcpy>:
    7038:	7179                	addi	sp,sp,-48
    703a:	f406                	sd	ra,40(sp)
    703c:	f022                	sd	s0,32(sp)
    703e:	1800                	addi	s0,sp,48
    7040:	fea43423          	sd	a0,-24(s0)
    7044:	feb43023          	sd	a1,-32(s0)
    7048:	87b2                	mv	a5,a2
    704a:	fcf42e23          	sw	a5,-36(s0)
    704e:	fdc42783          	lw	a5,-36(s0)
    7052:	863e                	mv	a2,a5
    7054:	fe043583          	ld	a1,-32(s0)
    7058:	fe843503          	ld	a0,-24(s0)
    705c:	00000097          	auipc	ra,0x0
    7060:	e96080e7          	jalr	-362(ra) # 6ef2 <memmove>
    7064:	87aa                	mv	a5,a0
    7066:	853e                	mv	a0,a5
    7068:	70a2                	ld	ra,40(sp)
    706a:	7402                	ld	s0,32(sp)
    706c:	6145                	addi	sp,sp,48
    706e:	8082                	ret

0000000000007070 <fork>:
    7070:	4885                	li	a7,1
    7072:	00000073          	ecall
    7076:	8082                	ret

0000000000007078 <exit>:
    7078:	4889                	li	a7,2
    707a:	00000073          	ecall
    707e:	8082                	ret

0000000000007080 <wait>:
    7080:	488d                	li	a7,3
    7082:	00000073          	ecall
    7086:	8082                	ret

0000000000007088 <pipe>:
    7088:	4891                	li	a7,4
    708a:	00000073          	ecall
    708e:	8082                	ret

0000000000007090 <read>:
    7090:	4895                	li	a7,5
    7092:	00000073          	ecall
    7096:	8082                	ret

0000000000007098 <write>:
    7098:	48c1                	li	a7,16
    709a:	00000073          	ecall
    709e:	8082                	ret

00000000000070a0 <close>:
    70a0:	48d5                	li	a7,21
    70a2:	00000073          	ecall
    70a6:	8082                	ret

00000000000070a8 <kill>:
    70a8:	4899                	li	a7,6
    70aa:	00000073          	ecall
    70ae:	8082                	ret

00000000000070b0 <exec>:
    70b0:	489d                	li	a7,7
    70b2:	00000073          	ecall
    70b6:	8082                	ret

00000000000070b8 <open>:
    70b8:	48bd                	li	a7,15
    70ba:	00000073          	ecall
    70be:	8082                	ret

00000000000070c0 <mknod>:
    70c0:	48c5                	li	a7,17
    70c2:	00000073          	ecall
    70c6:	8082                	ret

00000000000070c8 <unlink>:
    70c8:	48c9                	li	a7,18
    70ca:	00000073          	ecall
    70ce:	8082                	ret

00000000000070d0 <fstat>:
    70d0:	48a1                	li	a7,8
    70d2:	00000073          	ecall
    70d6:	8082                	ret

00000000000070d8 <link>:
    70d8:	48cd                	li	a7,19
    70da:	00000073          	ecall
    70de:	8082                	ret

00000000000070e0 <mkdir>:
    70e0:	48d1                	li	a7,20
    70e2:	00000073          	ecall
    70e6:	8082                	ret

00000000000070e8 <chdir>:
    70e8:	48a5                	li	a7,9
    70ea:	00000073          	ecall
    70ee:	8082                	ret

00000000000070f0 <dup>:
    70f0:	48a9                	li	a7,10
    70f2:	00000073          	ecall
    70f6:	8082                	ret

00000000000070f8 <getpid>:
    70f8:	48ad                	li	a7,11
    70fa:	00000073          	ecall
    70fe:	8082                	ret

0000000000007100 <sbrk>:
    7100:	48b1                	li	a7,12
    7102:	00000073          	ecall
    7106:	8082                	ret

0000000000007108 <sleep>:
    7108:	48b5                	li	a7,13
    710a:	00000073          	ecall
    710e:	8082                	ret

0000000000007110 <uptime>:
    7110:	48b9                	li	a7,14
    7112:	00000073          	ecall
    7116:	8082                	ret

0000000000007118 <putc>:
    7118:	1101                	addi	sp,sp,-32
    711a:	ec06                	sd	ra,24(sp)
    711c:	e822                	sd	s0,16(sp)
    711e:	1000                	addi	s0,sp,32
    7120:	87aa                	mv	a5,a0
    7122:	872e                	mv	a4,a1
    7124:	fef42623          	sw	a5,-20(s0)
    7128:	87ba                	mv	a5,a4
    712a:	fef405a3          	sb	a5,-21(s0)
    712e:	feb40713          	addi	a4,s0,-21
    7132:	fec42783          	lw	a5,-20(s0)
    7136:	4605                	li	a2,1
    7138:	85ba                	mv	a1,a4
    713a:	853e                	mv	a0,a5
    713c:	00000097          	auipc	ra,0x0
    7140:	f5c080e7          	jalr	-164(ra) # 7098 <write>
    7144:	0001                	nop
    7146:	60e2                	ld	ra,24(sp)
    7148:	6442                	ld	s0,16(sp)
    714a:	6105                	addi	sp,sp,32
    714c:	8082                	ret

000000000000714e <printint>:
    714e:	7139                	addi	sp,sp,-64
    7150:	fc06                	sd	ra,56(sp)
    7152:	f822                	sd	s0,48(sp)
    7154:	0080                	addi	s0,sp,64
    7156:	87aa                	mv	a5,a0
    7158:	8736                	mv	a4,a3
    715a:	fcf42623          	sw	a5,-52(s0)
    715e:	87ae                	mv	a5,a1
    7160:	fcf42423          	sw	a5,-56(s0)
    7164:	87b2                	mv	a5,a2
    7166:	fcf42223          	sw	a5,-60(s0)
    716a:	87ba                	mv	a5,a4
    716c:	fcf42023          	sw	a5,-64(s0)
    7170:	fe042423          	sw	zero,-24(s0)
    7174:	fc042783          	lw	a5,-64(s0)
    7178:	2781                	sext.w	a5,a5
    717a:	c38d                	beqz	a5,719c <printint+0x4e>
    717c:	fc842783          	lw	a5,-56(s0)
    7180:	2781                	sext.w	a5,a5
    7182:	0007dd63          	bgez	a5,719c <printint+0x4e>
    7186:	4785                	li	a5,1
    7188:	fef42423          	sw	a5,-24(s0)
    718c:	fc842783          	lw	a5,-56(s0)
    7190:	40f007bb          	negw	a5,a5
    7194:	2781                	sext.w	a5,a5
    7196:	fef42223          	sw	a5,-28(s0)
    719a:	a029                	j	71a4 <printint+0x56>
    719c:	fc842783          	lw	a5,-56(s0)
    71a0:	fef42223          	sw	a5,-28(s0)
    71a4:	fe042623          	sw	zero,-20(s0)
    71a8:	fc442783          	lw	a5,-60(s0)
    71ac:	fe442703          	lw	a4,-28(s0)
    71b0:	02f777bb          	remuw	a5,a4,a5
    71b4:	0007861b          	sext.w	a2,a5
    71b8:	fec42783          	lw	a5,-20(s0)
    71bc:	0017871b          	addiw	a4,a5,1
    71c0:	fee42623          	sw	a4,-20(s0)
    71c4:	00003697          	auipc	a3,0x3
    71c8:	f1468693          	addi	a3,a3,-236 # a0d8 <digits>
    71cc:	02061713          	slli	a4,a2,0x20
    71d0:	9301                	srli	a4,a4,0x20
    71d2:	9736                	add	a4,a4,a3
    71d4:	00074703          	lbu	a4,0(a4)
    71d8:	ff040693          	addi	a3,s0,-16
    71dc:	97b6                	add	a5,a5,a3
    71de:	fee78023          	sb	a4,-32(a5)
    71e2:	fc442783          	lw	a5,-60(s0)
    71e6:	fe442703          	lw	a4,-28(s0)
    71ea:	02f757bb          	divuw	a5,a4,a5
    71ee:	fef42223          	sw	a5,-28(s0)
    71f2:	fe442783          	lw	a5,-28(s0)
    71f6:	2781                	sext.w	a5,a5
    71f8:	fbc5                	bnez	a5,71a8 <printint+0x5a>
    71fa:	fe842783          	lw	a5,-24(s0)
    71fe:	2781                	sext.w	a5,a5
    7200:	cf95                	beqz	a5,723c <printint+0xee>
    7202:	fec42783          	lw	a5,-20(s0)
    7206:	0017871b          	addiw	a4,a5,1
    720a:	fee42623          	sw	a4,-20(s0)
    720e:	ff040713          	addi	a4,s0,-16
    7212:	97ba                	add	a5,a5,a4
    7214:	02d00713          	li	a4,45
    7218:	fee78023          	sb	a4,-32(a5)
    721c:	a005                	j	723c <printint+0xee>
    721e:	fec42783          	lw	a5,-20(s0)
    7222:	ff040713          	addi	a4,s0,-16
    7226:	97ba                	add	a5,a5,a4
    7228:	fe07c703          	lbu	a4,-32(a5)
    722c:	fcc42783          	lw	a5,-52(s0)
    7230:	85ba                	mv	a1,a4
    7232:	853e                	mv	a0,a5
    7234:	00000097          	auipc	ra,0x0
    7238:	ee4080e7          	jalr	-284(ra) # 7118 <putc>
    723c:	fec42783          	lw	a5,-20(s0)
    7240:	37fd                	addiw	a5,a5,-1
    7242:	fef42623          	sw	a5,-20(s0)
    7246:	fec42783          	lw	a5,-20(s0)
    724a:	2781                	sext.w	a5,a5
    724c:	fc07d9e3          	bgez	a5,721e <printint+0xd0>
    7250:	0001                	nop
    7252:	0001                	nop
    7254:	70e2                	ld	ra,56(sp)
    7256:	7442                	ld	s0,48(sp)
    7258:	6121                	addi	sp,sp,64
    725a:	8082                	ret

000000000000725c <printptr>:
    725c:	7179                	addi	sp,sp,-48
    725e:	f406                	sd	ra,40(sp)
    7260:	f022                	sd	s0,32(sp)
    7262:	1800                	addi	s0,sp,48
    7264:	87aa                	mv	a5,a0
    7266:	fcb43823          	sd	a1,-48(s0)
    726a:	fcf42e23          	sw	a5,-36(s0)
    726e:	fdc42783          	lw	a5,-36(s0)
    7272:	03000593          	li	a1,48
    7276:	853e                	mv	a0,a5
    7278:	00000097          	auipc	ra,0x0
    727c:	ea0080e7          	jalr	-352(ra) # 7118 <putc>
    7280:	fdc42783          	lw	a5,-36(s0)
    7284:	07800593          	li	a1,120
    7288:	853e                	mv	a0,a5
    728a:	00000097          	auipc	ra,0x0
    728e:	e8e080e7          	jalr	-370(ra) # 7118 <putc>
    7292:	fe042623          	sw	zero,-20(s0)
    7296:	a82d                	j	72d0 <printptr+0x74>
    7298:	fd043783          	ld	a5,-48(s0)
    729c:	93f1                	srli	a5,a5,0x3c
    729e:	00003717          	auipc	a4,0x3
    72a2:	e3a70713          	addi	a4,a4,-454 # a0d8 <digits>
    72a6:	97ba                	add	a5,a5,a4
    72a8:	0007c703          	lbu	a4,0(a5)
    72ac:	fdc42783          	lw	a5,-36(s0)
    72b0:	85ba                	mv	a1,a4
    72b2:	853e                	mv	a0,a5
    72b4:	00000097          	auipc	ra,0x0
    72b8:	e64080e7          	jalr	-412(ra) # 7118 <putc>
    72bc:	fec42783          	lw	a5,-20(s0)
    72c0:	2785                	addiw	a5,a5,1
    72c2:	fef42623          	sw	a5,-20(s0)
    72c6:	fd043783          	ld	a5,-48(s0)
    72ca:	0792                	slli	a5,a5,0x4
    72cc:	fcf43823          	sd	a5,-48(s0)
    72d0:	fec42783          	lw	a5,-20(s0)
    72d4:	873e                	mv	a4,a5
    72d6:	47bd                	li	a5,15
    72d8:	fce7f0e3          	bgeu	a5,a4,7298 <printptr+0x3c>
    72dc:	0001                	nop
    72de:	0001                	nop
    72e0:	70a2                	ld	ra,40(sp)
    72e2:	7402                	ld	s0,32(sp)
    72e4:	6145                	addi	sp,sp,48
    72e6:	8082                	ret

00000000000072e8 <vprintf>:
    72e8:	715d                	addi	sp,sp,-80
    72ea:	e486                	sd	ra,72(sp)
    72ec:	e0a2                	sd	s0,64(sp)
    72ee:	0880                	addi	s0,sp,80
    72f0:	87aa                	mv	a5,a0
    72f2:	fcb43023          	sd	a1,-64(s0)
    72f6:	fac43c23          	sd	a2,-72(s0)
    72fa:	fcf42623          	sw	a5,-52(s0)
    72fe:	fe042023          	sw	zero,-32(s0)
    7302:	fe042223          	sw	zero,-28(s0)
    7306:	a42d                	j	7530 <vprintf+0x248>
    7308:	fe442783          	lw	a5,-28(s0)
    730c:	fc043703          	ld	a4,-64(s0)
    7310:	97ba                	add	a5,a5,a4
    7312:	0007c783          	lbu	a5,0(a5)
    7316:	fcf42e23          	sw	a5,-36(s0)
    731a:	fe042783          	lw	a5,-32(s0)
    731e:	2781                	sext.w	a5,a5
    7320:	eb9d                	bnez	a5,7356 <vprintf+0x6e>
    7322:	fdc42783          	lw	a5,-36(s0)
    7326:	0007871b          	sext.w	a4,a5
    732a:	02500793          	li	a5,37
    732e:	00f71763          	bne	a4,a5,733c <vprintf+0x54>
    7332:	02500793          	li	a5,37
    7336:	fef42023          	sw	a5,-32(s0)
    733a:	a2f5                	j	7526 <vprintf+0x23e>
    733c:	fdc42783          	lw	a5,-36(s0)
    7340:	0ff7f713          	andi	a4,a5,255
    7344:	fcc42783          	lw	a5,-52(s0)
    7348:	85ba                	mv	a1,a4
    734a:	853e                	mv	a0,a5
    734c:	00000097          	auipc	ra,0x0
    7350:	dcc080e7          	jalr	-564(ra) # 7118 <putc>
    7354:	aac9                	j	7526 <vprintf+0x23e>
    7356:	fe042783          	lw	a5,-32(s0)
    735a:	0007871b          	sext.w	a4,a5
    735e:	02500793          	li	a5,37
    7362:	1cf71263          	bne	a4,a5,7526 <vprintf+0x23e>
    7366:	fdc42783          	lw	a5,-36(s0)
    736a:	0007871b          	sext.w	a4,a5
    736e:	06400793          	li	a5,100
    7372:	02f71463          	bne	a4,a5,739a <vprintf+0xb2>
    7376:	fb843783          	ld	a5,-72(s0)
    737a:	00878713          	addi	a4,a5,8
    737e:	fae43c23          	sd	a4,-72(s0)
    7382:	4398                	lw	a4,0(a5)
    7384:	fcc42783          	lw	a5,-52(s0)
    7388:	4685                	li	a3,1
    738a:	4629                	li	a2,10
    738c:	85ba                	mv	a1,a4
    738e:	853e                	mv	a0,a5
    7390:	00000097          	auipc	ra,0x0
    7394:	dbe080e7          	jalr	-578(ra) # 714e <printint>
    7398:	a269                	j	7522 <vprintf+0x23a>
    739a:	fdc42783          	lw	a5,-36(s0)
    739e:	0007871b          	sext.w	a4,a5
    73a2:	06c00793          	li	a5,108
    73a6:	02f71663          	bne	a4,a5,73d2 <vprintf+0xea>
    73aa:	fb843783          	ld	a5,-72(s0)
    73ae:	00878713          	addi	a4,a5,8
    73b2:	fae43c23          	sd	a4,-72(s0)
    73b6:	639c                	ld	a5,0(a5)
    73b8:	0007871b          	sext.w	a4,a5
    73bc:	fcc42783          	lw	a5,-52(s0)
    73c0:	4681                	li	a3,0
    73c2:	4629                	li	a2,10
    73c4:	85ba                	mv	a1,a4
    73c6:	853e                	mv	a0,a5
    73c8:	00000097          	auipc	ra,0x0
    73cc:	d86080e7          	jalr	-634(ra) # 714e <printint>
    73d0:	aa89                	j	7522 <vprintf+0x23a>
    73d2:	fdc42783          	lw	a5,-36(s0)
    73d6:	0007871b          	sext.w	a4,a5
    73da:	07800793          	li	a5,120
    73de:	02f71463          	bne	a4,a5,7406 <vprintf+0x11e>
    73e2:	fb843783          	ld	a5,-72(s0)
    73e6:	00878713          	addi	a4,a5,8
    73ea:	fae43c23          	sd	a4,-72(s0)
    73ee:	4398                	lw	a4,0(a5)
    73f0:	fcc42783          	lw	a5,-52(s0)
    73f4:	4681                	li	a3,0
    73f6:	4641                	li	a2,16
    73f8:	85ba                	mv	a1,a4
    73fa:	853e                	mv	a0,a5
    73fc:	00000097          	auipc	ra,0x0
    7400:	d52080e7          	jalr	-686(ra) # 714e <printint>
    7404:	aa39                	j	7522 <vprintf+0x23a>
    7406:	fdc42783          	lw	a5,-36(s0)
    740a:	0007871b          	sext.w	a4,a5
    740e:	07000793          	li	a5,112
    7412:	02f71263          	bne	a4,a5,7436 <vprintf+0x14e>
    7416:	fb843783          	ld	a5,-72(s0)
    741a:	00878713          	addi	a4,a5,8
    741e:	fae43c23          	sd	a4,-72(s0)
    7422:	6398                	ld	a4,0(a5)
    7424:	fcc42783          	lw	a5,-52(s0)
    7428:	85ba                	mv	a1,a4
    742a:	853e                	mv	a0,a5
    742c:	00000097          	auipc	ra,0x0
    7430:	e30080e7          	jalr	-464(ra) # 725c <printptr>
    7434:	a0fd                	j	7522 <vprintf+0x23a>
    7436:	fdc42783          	lw	a5,-36(s0)
    743a:	0007871b          	sext.w	a4,a5
    743e:	07300793          	li	a5,115
    7442:	04f71c63          	bne	a4,a5,749a <vprintf+0x1b2>
    7446:	fb843783          	ld	a5,-72(s0)
    744a:	00878713          	addi	a4,a5,8
    744e:	fae43c23          	sd	a4,-72(s0)
    7452:	639c                	ld	a5,0(a5)
    7454:	fef43423          	sd	a5,-24(s0)
    7458:	fe843783          	ld	a5,-24(s0)
    745c:	eb8d                	bnez	a5,748e <vprintf+0x1a6>
    745e:	00003797          	auipc	a5,0x3
    7462:	c7278793          	addi	a5,a5,-910 # a0d0 <longjmp_1+0x2788>
    7466:	fef43423          	sd	a5,-24(s0)
    746a:	a015                	j	748e <vprintf+0x1a6>
    746c:	fe843783          	ld	a5,-24(s0)
    7470:	0007c703          	lbu	a4,0(a5)
    7474:	fcc42783          	lw	a5,-52(s0)
    7478:	85ba                	mv	a1,a4
    747a:	853e                	mv	a0,a5
    747c:	00000097          	auipc	ra,0x0
    7480:	c9c080e7          	jalr	-868(ra) # 7118 <putc>
    7484:	fe843783          	ld	a5,-24(s0)
    7488:	0785                	addi	a5,a5,1
    748a:	fef43423          	sd	a5,-24(s0)
    748e:	fe843783          	ld	a5,-24(s0)
    7492:	0007c783          	lbu	a5,0(a5)
    7496:	fbf9                	bnez	a5,746c <vprintf+0x184>
    7498:	a069                	j	7522 <vprintf+0x23a>
    749a:	fdc42783          	lw	a5,-36(s0)
    749e:	0007871b          	sext.w	a4,a5
    74a2:	06300793          	li	a5,99
    74a6:	02f71463          	bne	a4,a5,74ce <vprintf+0x1e6>
    74aa:	fb843783          	ld	a5,-72(s0)
    74ae:	00878713          	addi	a4,a5,8
    74b2:	fae43c23          	sd	a4,-72(s0)
    74b6:	439c                	lw	a5,0(a5)
    74b8:	0ff7f713          	andi	a4,a5,255
    74bc:	fcc42783          	lw	a5,-52(s0)
    74c0:	85ba                	mv	a1,a4
    74c2:	853e                	mv	a0,a5
    74c4:	00000097          	auipc	ra,0x0
    74c8:	c54080e7          	jalr	-940(ra) # 7118 <putc>
    74cc:	a899                	j	7522 <vprintf+0x23a>
    74ce:	fdc42783          	lw	a5,-36(s0)
    74d2:	0007871b          	sext.w	a4,a5
    74d6:	02500793          	li	a5,37
    74da:	00f71f63          	bne	a4,a5,74f8 <vprintf+0x210>
    74de:	fdc42783          	lw	a5,-36(s0)
    74e2:	0ff7f713          	andi	a4,a5,255
    74e6:	fcc42783          	lw	a5,-52(s0)
    74ea:	85ba                	mv	a1,a4
    74ec:	853e                	mv	a0,a5
    74ee:	00000097          	auipc	ra,0x0
    74f2:	c2a080e7          	jalr	-982(ra) # 7118 <putc>
    74f6:	a035                	j	7522 <vprintf+0x23a>
    74f8:	fcc42783          	lw	a5,-52(s0)
    74fc:	02500593          	li	a1,37
    7500:	853e                	mv	a0,a5
    7502:	00000097          	auipc	ra,0x0
    7506:	c16080e7          	jalr	-1002(ra) # 7118 <putc>
    750a:	fdc42783          	lw	a5,-36(s0)
    750e:	0ff7f713          	andi	a4,a5,255
    7512:	fcc42783          	lw	a5,-52(s0)
    7516:	85ba                	mv	a1,a4
    7518:	853e                	mv	a0,a5
    751a:	00000097          	auipc	ra,0x0
    751e:	bfe080e7          	jalr	-1026(ra) # 7118 <putc>
    7522:	fe042023          	sw	zero,-32(s0)
    7526:	fe442783          	lw	a5,-28(s0)
    752a:	2785                	addiw	a5,a5,1
    752c:	fef42223          	sw	a5,-28(s0)
    7530:	fe442783          	lw	a5,-28(s0)
    7534:	fc043703          	ld	a4,-64(s0)
    7538:	97ba                	add	a5,a5,a4
    753a:	0007c783          	lbu	a5,0(a5)
    753e:	dc0795e3          	bnez	a5,7308 <vprintf+0x20>
    7542:	0001                	nop
    7544:	0001                	nop
    7546:	60a6                	ld	ra,72(sp)
    7548:	6406                	ld	s0,64(sp)
    754a:	6161                	addi	sp,sp,80
    754c:	8082                	ret

000000000000754e <fprintf>:
    754e:	7159                	addi	sp,sp,-112
    7550:	fc06                	sd	ra,56(sp)
    7552:	f822                	sd	s0,48(sp)
    7554:	0080                	addi	s0,sp,64
    7556:	fcb43823          	sd	a1,-48(s0)
    755a:	e010                	sd	a2,0(s0)
    755c:	e414                	sd	a3,8(s0)
    755e:	e818                	sd	a4,16(s0)
    7560:	ec1c                	sd	a5,24(s0)
    7562:	03043023          	sd	a6,32(s0)
    7566:	03143423          	sd	a7,40(s0)
    756a:	87aa                	mv	a5,a0
    756c:	fcf42e23          	sw	a5,-36(s0)
    7570:	03040793          	addi	a5,s0,48
    7574:	fcf43423          	sd	a5,-56(s0)
    7578:	fc843783          	ld	a5,-56(s0)
    757c:	fd078793          	addi	a5,a5,-48
    7580:	fef43423          	sd	a5,-24(s0)
    7584:	fe843703          	ld	a4,-24(s0)
    7588:	fdc42783          	lw	a5,-36(s0)
    758c:	863a                	mv	a2,a4
    758e:	fd043583          	ld	a1,-48(s0)
    7592:	853e                	mv	a0,a5
    7594:	00000097          	auipc	ra,0x0
    7598:	d54080e7          	jalr	-684(ra) # 72e8 <vprintf>
    759c:	0001                	nop
    759e:	70e2                	ld	ra,56(sp)
    75a0:	7442                	ld	s0,48(sp)
    75a2:	6165                	addi	sp,sp,112
    75a4:	8082                	ret

00000000000075a6 <printf>:
    75a6:	7159                	addi	sp,sp,-112
    75a8:	f406                	sd	ra,40(sp)
    75aa:	f022                	sd	s0,32(sp)
    75ac:	1800                	addi	s0,sp,48
    75ae:	fca43c23          	sd	a0,-40(s0)
    75b2:	e40c                	sd	a1,8(s0)
    75b4:	e810                	sd	a2,16(s0)
    75b6:	ec14                	sd	a3,24(s0)
    75b8:	f018                	sd	a4,32(s0)
    75ba:	f41c                	sd	a5,40(s0)
    75bc:	03043823          	sd	a6,48(s0)
    75c0:	03143c23          	sd	a7,56(s0)
    75c4:	04040793          	addi	a5,s0,64
    75c8:	fcf43823          	sd	a5,-48(s0)
    75cc:	fd043783          	ld	a5,-48(s0)
    75d0:	fc878793          	addi	a5,a5,-56
    75d4:	fef43423          	sd	a5,-24(s0)
    75d8:	fe843783          	ld	a5,-24(s0)
    75dc:	863e                	mv	a2,a5
    75de:	fd843583          	ld	a1,-40(s0)
    75e2:	4505                	li	a0,1
    75e4:	00000097          	auipc	ra,0x0
    75e8:	d04080e7          	jalr	-764(ra) # 72e8 <vprintf>
    75ec:	0001                	nop
    75ee:	70a2                	ld	ra,40(sp)
    75f0:	7402                	ld	s0,32(sp)
    75f2:	6165                	addi	sp,sp,112
    75f4:	8082                	ret

00000000000075f6 <free>:
    75f6:	7179                	addi	sp,sp,-48
    75f8:	f422                	sd	s0,40(sp)
    75fa:	1800                	addi	s0,sp,48
    75fc:	fca43c23          	sd	a0,-40(s0)
    7600:	fd843783          	ld	a5,-40(s0)
    7604:	17c1                	addi	a5,a5,-16
    7606:	fef43023          	sd	a5,-32(s0)
    760a:	00009797          	auipc	a5,0x9
    760e:	31678793          	addi	a5,a5,790 # 10920 <freep>
    7612:	639c                	ld	a5,0(a5)
    7614:	fef43423          	sd	a5,-24(s0)
    7618:	a815                	j	764c <free+0x56>
    761a:	fe843783          	ld	a5,-24(s0)
    761e:	639c                	ld	a5,0(a5)
    7620:	fe843703          	ld	a4,-24(s0)
    7624:	00f76f63          	bltu	a4,a5,7642 <free+0x4c>
    7628:	fe043703          	ld	a4,-32(s0)
    762c:	fe843783          	ld	a5,-24(s0)
    7630:	02e7eb63          	bltu	a5,a4,7666 <free+0x70>
    7634:	fe843783          	ld	a5,-24(s0)
    7638:	639c                	ld	a5,0(a5)
    763a:	fe043703          	ld	a4,-32(s0)
    763e:	02f76463          	bltu	a4,a5,7666 <free+0x70>
    7642:	fe843783          	ld	a5,-24(s0)
    7646:	639c                	ld	a5,0(a5)
    7648:	fef43423          	sd	a5,-24(s0)
    764c:	fe043703          	ld	a4,-32(s0)
    7650:	fe843783          	ld	a5,-24(s0)
    7654:	fce7f3e3          	bgeu	a5,a4,761a <free+0x24>
    7658:	fe843783          	ld	a5,-24(s0)
    765c:	639c                	ld	a5,0(a5)
    765e:	fe043703          	ld	a4,-32(s0)
    7662:	faf77ce3          	bgeu	a4,a5,761a <free+0x24>
    7666:	fe043783          	ld	a5,-32(s0)
    766a:	479c                	lw	a5,8(a5)
    766c:	1782                	slli	a5,a5,0x20
    766e:	9381                	srli	a5,a5,0x20
    7670:	0792                	slli	a5,a5,0x4
    7672:	fe043703          	ld	a4,-32(s0)
    7676:	973e                	add	a4,a4,a5
    7678:	fe843783          	ld	a5,-24(s0)
    767c:	639c                	ld	a5,0(a5)
    767e:	02f71763          	bne	a4,a5,76ac <free+0xb6>
    7682:	fe043783          	ld	a5,-32(s0)
    7686:	4798                	lw	a4,8(a5)
    7688:	fe843783          	ld	a5,-24(s0)
    768c:	639c                	ld	a5,0(a5)
    768e:	479c                	lw	a5,8(a5)
    7690:	9fb9                	addw	a5,a5,a4
    7692:	0007871b          	sext.w	a4,a5
    7696:	fe043783          	ld	a5,-32(s0)
    769a:	c798                	sw	a4,8(a5)
    769c:	fe843783          	ld	a5,-24(s0)
    76a0:	639c                	ld	a5,0(a5)
    76a2:	6398                	ld	a4,0(a5)
    76a4:	fe043783          	ld	a5,-32(s0)
    76a8:	e398                	sd	a4,0(a5)
    76aa:	a039                	j	76b8 <free+0xc2>
    76ac:	fe843783          	ld	a5,-24(s0)
    76b0:	6398                	ld	a4,0(a5)
    76b2:	fe043783          	ld	a5,-32(s0)
    76b6:	e398                	sd	a4,0(a5)
    76b8:	fe843783          	ld	a5,-24(s0)
    76bc:	479c                	lw	a5,8(a5)
    76be:	1782                	slli	a5,a5,0x20
    76c0:	9381                	srli	a5,a5,0x20
    76c2:	0792                	slli	a5,a5,0x4
    76c4:	fe843703          	ld	a4,-24(s0)
    76c8:	97ba                	add	a5,a5,a4
    76ca:	fe043703          	ld	a4,-32(s0)
    76ce:	02f71563          	bne	a4,a5,76f8 <free+0x102>
    76d2:	fe843783          	ld	a5,-24(s0)
    76d6:	4798                	lw	a4,8(a5)
    76d8:	fe043783          	ld	a5,-32(s0)
    76dc:	479c                	lw	a5,8(a5)
    76de:	9fb9                	addw	a5,a5,a4
    76e0:	0007871b          	sext.w	a4,a5
    76e4:	fe843783          	ld	a5,-24(s0)
    76e8:	c798                	sw	a4,8(a5)
    76ea:	fe043783          	ld	a5,-32(s0)
    76ee:	6398                	ld	a4,0(a5)
    76f0:	fe843783          	ld	a5,-24(s0)
    76f4:	e398                	sd	a4,0(a5)
    76f6:	a031                	j	7702 <free+0x10c>
    76f8:	fe843783          	ld	a5,-24(s0)
    76fc:	fe043703          	ld	a4,-32(s0)
    7700:	e398                	sd	a4,0(a5)
    7702:	00009797          	auipc	a5,0x9
    7706:	21e78793          	addi	a5,a5,542 # 10920 <freep>
    770a:	fe843703          	ld	a4,-24(s0)
    770e:	e398                	sd	a4,0(a5)
    7710:	0001                	nop
    7712:	7422                	ld	s0,40(sp)
    7714:	6145                	addi	sp,sp,48
    7716:	8082                	ret

0000000000007718 <morecore>:
    7718:	7179                	addi	sp,sp,-48
    771a:	f406                	sd	ra,40(sp)
    771c:	f022                	sd	s0,32(sp)
    771e:	1800                	addi	s0,sp,48
    7720:	87aa                	mv	a5,a0
    7722:	fcf42e23          	sw	a5,-36(s0)
    7726:	fdc42783          	lw	a5,-36(s0)
    772a:	0007871b          	sext.w	a4,a5
    772e:	6785                	lui	a5,0x1
    7730:	00f77563          	bgeu	a4,a5,773a <morecore+0x22>
    7734:	6785                	lui	a5,0x1
    7736:	fcf42e23          	sw	a5,-36(s0)
    773a:	fdc42783          	lw	a5,-36(s0)
    773e:	0047979b          	slliw	a5,a5,0x4
    7742:	2781                	sext.w	a5,a5
    7744:	2781                	sext.w	a5,a5
    7746:	853e                	mv	a0,a5
    7748:	00000097          	auipc	ra,0x0
    774c:	9b8080e7          	jalr	-1608(ra) # 7100 <sbrk>
    7750:	fea43423          	sd	a0,-24(s0)
    7754:	fe843703          	ld	a4,-24(s0)
    7758:	57fd                	li	a5,-1
    775a:	00f71463          	bne	a4,a5,7762 <morecore+0x4a>
    775e:	4781                	li	a5,0
    7760:	a03d                	j	778e <morecore+0x76>
    7762:	fe843783          	ld	a5,-24(s0)
    7766:	fef43023          	sd	a5,-32(s0)
    776a:	fe043783          	ld	a5,-32(s0)
    776e:	fdc42703          	lw	a4,-36(s0)
    7772:	c798                	sw	a4,8(a5)
    7774:	fe043783          	ld	a5,-32(s0)
    7778:	07c1                	addi	a5,a5,16
    777a:	853e                	mv	a0,a5
    777c:	00000097          	auipc	ra,0x0
    7780:	e7a080e7          	jalr	-390(ra) # 75f6 <free>
    7784:	00009797          	auipc	a5,0x9
    7788:	19c78793          	addi	a5,a5,412 # 10920 <freep>
    778c:	639c                	ld	a5,0(a5)
    778e:	853e                	mv	a0,a5
    7790:	70a2                	ld	ra,40(sp)
    7792:	7402                	ld	s0,32(sp)
    7794:	6145                	addi	sp,sp,48
    7796:	8082                	ret

0000000000007798 <malloc>:
    7798:	7139                	addi	sp,sp,-64
    779a:	fc06                	sd	ra,56(sp)
    779c:	f822                	sd	s0,48(sp)
    779e:	0080                	addi	s0,sp,64
    77a0:	87aa                	mv	a5,a0
    77a2:	fcf42623          	sw	a5,-52(s0)
    77a6:	fcc46783          	lwu	a5,-52(s0)
    77aa:	07bd                	addi	a5,a5,15
    77ac:	8391                	srli	a5,a5,0x4
    77ae:	2781                	sext.w	a5,a5
    77b0:	2785                	addiw	a5,a5,1
    77b2:	fcf42e23          	sw	a5,-36(s0)
    77b6:	00009797          	auipc	a5,0x9
    77ba:	16a78793          	addi	a5,a5,362 # 10920 <freep>
    77be:	639c                	ld	a5,0(a5)
    77c0:	fef43023          	sd	a5,-32(s0)
    77c4:	fe043783          	ld	a5,-32(s0)
    77c8:	ef95                	bnez	a5,7804 <malloc+0x6c>
    77ca:	00009797          	auipc	a5,0x9
    77ce:	14678793          	addi	a5,a5,326 # 10910 <base>
    77d2:	fef43023          	sd	a5,-32(s0)
    77d6:	00009797          	auipc	a5,0x9
    77da:	14a78793          	addi	a5,a5,330 # 10920 <freep>
    77de:	fe043703          	ld	a4,-32(s0)
    77e2:	e398                	sd	a4,0(a5)
    77e4:	00009797          	auipc	a5,0x9
    77e8:	13c78793          	addi	a5,a5,316 # 10920 <freep>
    77ec:	6398                	ld	a4,0(a5)
    77ee:	00009797          	auipc	a5,0x9
    77f2:	12278793          	addi	a5,a5,290 # 10910 <base>
    77f6:	e398                	sd	a4,0(a5)
    77f8:	00009797          	auipc	a5,0x9
    77fc:	11878793          	addi	a5,a5,280 # 10910 <base>
    7800:	0007a423          	sw	zero,8(a5)
    7804:	fe043783          	ld	a5,-32(s0)
    7808:	639c                	ld	a5,0(a5)
    780a:	fef43423          	sd	a5,-24(s0)
    780e:	fe843783          	ld	a5,-24(s0)
    7812:	4798                	lw	a4,8(a5)
    7814:	fdc42783          	lw	a5,-36(s0)
    7818:	2781                	sext.w	a5,a5
    781a:	06f76863          	bltu	a4,a5,788a <malloc+0xf2>
    781e:	fe843783          	ld	a5,-24(s0)
    7822:	4798                	lw	a4,8(a5)
    7824:	fdc42783          	lw	a5,-36(s0)
    7828:	2781                	sext.w	a5,a5
    782a:	00e79963          	bne	a5,a4,783c <malloc+0xa4>
    782e:	fe843783          	ld	a5,-24(s0)
    7832:	6398                	ld	a4,0(a5)
    7834:	fe043783          	ld	a5,-32(s0)
    7838:	e398                	sd	a4,0(a5)
    783a:	a82d                	j	7874 <malloc+0xdc>
    783c:	fe843783          	ld	a5,-24(s0)
    7840:	4798                	lw	a4,8(a5)
    7842:	fdc42783          	lw	a5,-36(s0)
    7846:	40f707bb          	subw	a5,a4,a5
    784a:	0007871b          	sext.w	a4,a5
    784e:	fe843783          	ld	a5,-24(s0)
    7852:	c798                	sw	a4,8(a5)
    7854:	fe843783          	ld	a5,-24(s0)
    7858:	479c                	lw	a5,8(a5)
    785a:	1782                	slli	a5,a5,0x20
    785c:	9381                	srli	a5,a5,0x20
    785e:	0792                	slli	a5,a5,0x4
    7860:	fe843703          	ld	a4,-24(s0)
    7864:	97ba                	add	a5,a5,a4
    7866:	fef43423          	sd	a5,-24(s0)
    786a:	fe843783          	ld	a5,-24(s0)
    786e:	fdc42703          	lw	a4,-36(s0)
    7872:	c798                	sw	a4,8(a5)
    7874:	00009797          	auipc	a5,0x9
    7878:	0ac78793          	addi	a5,a5,172 # 10920 <freep>
    787c:	fe043703          	ld	a4,-32(s0)
    7880:	e398                	sd	a4,0(a5)
    7882:	fe843783          	ld	a5,-24(s0)
    7886:	07c1                	addi	a5,a5,16
    7888:	a091                	j	78cc <malloc+0x134>
    788a:	00009797          	auipc	a5,0x9
    788e:	09678793          	addi	a5,a5,150 # 10920 <freep>
    7892:	639c                	ld	a5,0(a5)
    7894:	fe843703          	ld	a4,-24(s0)
    7898:	02f71063          	bne	a4,a5,78b8 <malloc+0x120>
    789c:	fdc42783          	lw	a5,-36(s0)
    78a0:	853e                	mv	a0,a5
    78a2:	00000097          	auipc	ra,0x0
    78a6:	e76080e7          	jalr	-394(ra) # 7718 <morecore>
    78aa:	fea43423          	sd	a0,-24(s0)
    78ae:	fe843783          	ld	a5,-24(s0)
    78b2:	e399                	bnez	a5,78b8 <malloc+0x120>
    78b4:	4781                	li	a5,0
    78b6:	a819                	j	78cc <malloc+0x134>
    78b8:	fe843783          	ld	a5,-24(s0)
    78bc:	fef43023          	sd	a5,-32(s0)
    78c0:	fe843783          	ld	a5,-24(s0)
    78c4:	639c                	ld	a5,0(a5)
    78c6:	fef43423          	sd	a5,-24(s0)
    78ca:	b791                	j	780e <malloc+0x76>
    78cc:	853e                	mv	a0,a5
    78ce:	70e2                	ld	ra,56(sp)
    78d0:	7442                	ld	s0,48(sp)
    78d2:	6121                	addi	sp,sp,64
    78d4:	8082                	ret

00000000000078d6 <setjmp>:
    78d6:	e100                	sd	s0,0(a0)
    78d8:	e504                	sd	s1,8(a0)
    78da:	01253823          	sd	s2,16(a0)
    78de:	01353c23          	sd	s3,24(a0)
    78e2:	03453023          	sd	s4,32(a0)
    78e6:	03553423          	sd	s5,40(a0)
    78ea:	03653823          	sd	s6,48(a0)
    78ee:	03753c23          	sd	s7,56(a0)
    78f2:	05853023          	sd	s8,64(a0)
    78f6:	05953423          	sd	s9,72(a0)
    78fa:	05a53823          	sd	s10,80(a0)
    78fe:	05b53c23          	sd	s11,88(a0)
    7902:	06153023          	sd	ra,96(a0)
    7906:	06253423          	sd	sp,104(a0)
    790a:	4501                	li	a0,0
    790c:	8082                	ret

000000000000790e <longjmp>:
    790e:	6100                	ld	s0,0(a0)
    7910:	6504                	ld	s1,8(a0)
    7912:	01053903          	ld	s2,16(a0)
    7916:	01853983          	ld	s3,24(a0)
    791a:	02053a03          	ld	s4,32(a0)
    791e:	02853a83          	ld	s5,40(a0)
    7922:	03053b03          	ld	s6,48(a0)
    7926:	03853b83          	ld	s7,56(a0)
    792a:	04053c03          	ld	s8,64(a0)
    792e:	04853c83          	ld	s9,72(a0)
    7932:	05053d03          	ld	s10,80(a0)
    7936:	05853d83          	ld	s11,88(a0)
    793a:	06053083          	ld	ra,96(a0)
    793e:	06853103          	ld	sp,104(a0)
    7942:	c199                	beqz	a1,7948 <longjmp_1>
    7944:	852e                	mv	a0,a1
    7946:	8082                	ret

0000000000007948 <longjmp_1>:
    7948:	4505                	li	a0,1
    794a:	8082                	ret
