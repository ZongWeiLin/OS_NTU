
user/_sh:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <runcmd>:
       0:	715d                	addi	sp,sp,-80
       2:	e486                	sd	ra,72(sp)
       4:	e0a2                	sd	s0,64(sp)
       6:	0880                	addi	s0,sp,80
       8:	faa43c23          	sd	a0,-72(s0)
       c:	fb843783          	ld	a5,-72(s0)
      10:	e791                	bnez	a5,1c <runcmd+0x1c>
      12:	4505                	li	a0,1
      14:	00001097          	auipc	ra,0x1
      18:	3d8080e7          	jalr	984(ra) # 13ec <exit>
      1c:	fb843783          	ld	a5,-72(s0)
      20:	439c                	lw	a5,0(a5)
      22:	86be                	mv	a3,a5
      24:	4715                	li	a4,5
      26:	02d76263          	bltu	a4,a3,4a <runcmd+0x4a>
      2a:	00279713          	slli	a4,a5,0x2
      2e:	00002797          	auipc	a5,0x2
      32:	cc278793          	addi	a5,a5,-830 # 1cf0 <longjmp_1+0x34>
      36:	97ba                	add	a5,a5,a4
      38:	439c                	lw	a5,0(a5)
      3a:	0007871b          	sext.w	a4,a5
      3e:	00002797          	auipc	a5,0x2
      42:	cb278793          	addi	a5,a5,-846 # 1cf0 <longjmp_1+0x34>
      46:	97ba                	add	a5,a5,a4
      48:	8782                	jr	a5
      4a:	00002517          	auipc	a0,0x2
      4e:	c7650513          	addi	a0,a0,-906 # 1cc0 <longjmp_1+0x4>
      52:	00000097          	auipc	ra,0x0
      56:	3d8080e7          	jalr	984(ra) # 42a <panic>
      5a:	fb843783          	ld	a5,-72(s0)
      5e:	fcf43423          	sd	a5,-56(s0)
      62:	fc843783          	ld	a5,-56(s0)
      66:	679c                	ld	a5,8(a5)
      68:	e791                	bnez	a5,74 <runcmd+0x74>
      6a:	4505                	li	a0,1
      6c:	00001097          	auipc	ra,0x1
      70:	380080e7          	jalr	896(ra) # 13ec <exit>
      74:	fc843783          	ld	a5,-56(s0)
      78:	6798                	ld	a4,8(a5)
      7a:	fc843783          	ld	a5,-56(s0)
      7e:	07a1                	addi	a5,a5,8
      80:	85be                	mv	a1,a5
      82:	853a                	mv	a0,a4
      84:	00001097          	auipc	ra,0x1
      88:	3a0080e7          	jalr	928(ra) # 1424 <exec>
      8c:	fc843783          	ld	a5,-56(s0)
      90:	679c                	ld	a5,8(a5)
      92:	863e                	mv	a2,a5
      94:	00002597          	auipc	a1,0x2
      98:	c3458593          	addi	a1,a1,-972 # 1cc8 <longjmp_1+0xc>
      9c:	4509                	li	a0,2
      9e:	00002097          	auipc	ra,0x2
      a2:	824080e7          	jalr	-2012(ra) # 18c2 <fprintf>
      a6:	aac9                	j	278 <runcmd+0x278>
      a8:	fb843783          	ld	a5,-72(s0)
      ac:	fcf43823          	sd	a5,-48(s0)
      b0:	fd043783          	ld	a5,-48(s0)
      b4:	53dc                	lw	a5,36(a5)
      b6:	853e                	mv	a0,a5
      b8:	00001097          	auipc	ra,0x1
      bc:	35c080e7          	jalr	860(ra) # 1414 <close>
      c0:	fd043783          	ld	a5,-48(s0)
      c4:	6b98                	ld	a4,16(a5)
      c6:	fd043783          	ld	a5,-48(s0)
      ca:	539c                	lw	a5,32(a5)
      cc:	85be                	mv	a1,a5
      ce:	853a                	mv	a0,a4
      d0:	00001097          	auipc	ra,0x1
      d4:	35c080e7          	jalr	860(ra) # 142c <open>
      d8:	87aa                	mv	a5,a0
      da:	0207d463          	bgez	a5,102 <runcmd+0x102>
      de:	fd043783          	ld	a5,-48(s0)
      e2:	6b9c                	ld	a5,16(a5)
      e4:	863e                	mv	a2,a5
      e6:	00002597          	auipc	a1,0x2
      ea:	bf258593          	addi	a1,a1,-1038 # 1cd8 <longjmp_1+0x1c>
      ee:	4509                	li	a0,2
      f0:	00001097          	auipc	ra,0x1
      f4:	7d2080e7          	jalr	2002(ra) # 18c2 <fprintf>
      f8:	4505                	li	a0,1
      fa:	00001097          	auipc	ra,0x1
      fe:	2f2080e7          	jalr	754(ra) # 13ec <exit>
     102:	fd043783          	ld	a5,-48(s0)
     106:	679c                	ld	a5,8(a5)
     108:	853e                	mv	a0,a5
     10a:	00000097          	auipc	ra,0x0
     10e:	ef6080e7          	jalr	-266(ra) # 0 <runcmd>
     112:	a29d                	j	278 <runcmd+0x278>
     114:	fb843783          	ld	a5,-72(s0)
     118:	fef43023          	sd	a5,-32(s0)
     11c:	00000097          	auipc	ra,0x0
     120:	33a080e7          	jalr	826(ra) # 456 <fork1>
     124:	87aa                	mv	a5,a0
     126:	eb89                	bnez	a5,138 <runcmd+0x138>
     128:	fe043783          	ld	a5,-32(s0)
     12c:	679c                	ld	a5,8(a5)
     12e:	853e                	mv	a0,a5
     130:	00000097          	auipc	ra,0x0
     134:	ed0080e7          	jalr	-304(ra) # 0 <runcmd>
     138:	4501                	li	a0,0
     13a:	00001097          	auipc	ra,0x1
     13e:	2ba080e7          	jalr	698(ra) # 13f4 <wait>
     142:	fe043783          	ld	a5,-32(s0)
     146:	6b9c                	ld	a5,16(a5)
     148:	853e                	mv	a0,a5
     14a:	00000097          	auipc	ra,0x0
     14e:	eb6080e7          	jalr	-330(ra) # 0 <runcmd>
     152:	a21d                	j	278 <runcmd+0x278>
     154:	fb843783          	ld	a5,-72(s0)
     158:	fcf43c23          	sd	a5,-40(s0)
     15c:	fc040793          	addi	a5,s0,-64
     160:	853e                	mv	a0,a5
     162:	00001097          	auipc	ra,0x1
     166:	29a080e7          	jalr	666(ra) # 13fc <pipe>
     16a:	87aa                	mv	a5,a0
     16c:	0007da63          	bgez	a5,180 <runcmd+0x180>
     170:	00002517          	auipc	a0,0x2
     174:	b7850513          	addi	a0,a0,-1160 # 1ce8 <longjmp_1+0x2c>
     178:	00000097          	auipc	ra,0x0
     17c:	2b2080e7          	jalr	690(ra) # 42a <panic>
     180:	00000097          	auipc	ra,0x0
     184:	2d6080e7          	jalr	726(ra) # 456 <fork1>
     188:	87aa                	mv	a5,a0
     18a:	e3b9                	bnez	a5,1d0 <runcmd+0x1d0>
     18c:	4505                	li	a0,1
     18e:	00001097          	auipc	ra,0x1
     192:	286080e7          	jalr	646(ra) # 1414 <close>
     196:	fc442783          	lw	a5,-60(s0)
     19a:	853e                	mv	a0,a5
     19c:	00001097          	auipc	ra,0x1
     1a0:	2c8080e7          	jalr	712(ra) # 1464 <dup>
     1a4:	fc042783          	lw	a5,-64(s0)
     1a8:	853e                	mv	a0,a5
     1aa:	00001097          	auipc	ra,0x1
     1ae:	26a080e7          	jalr	618(ra) # 1414 <close>
     1b2:	fc442783          	lw	a5,-60(s0)
     1b6:	853e                	mv	a0,a5
     1b8:	00001097          	auipc	ra,0x1
     1bc:	25c080e7          	jalr	604(ra) # 1414 <close>
     1c0:	fd843783          	ld	a5,-40(s0)
     1c4:	679c                	ld	a5,8(a5)
     1c6:	853e                	mv	a0,a5
     1c8:	00000097          	auipc	ra,0x0
     1cc:	e38080e7          	jalr	-456(ra) # 0 <runcmd>
     1d0:	00000097          	auipc	ra,0x0
     1d4:	286080e7          	jalr	646(ra) # 456 <fork1>
     1d8:	87aa                	mv	a5,a0
     1da:	e3b9                	bnez	a5,220 <runcmd+0x220>
     1dc:	4501                	li	a0,0
     1de:	00001097          	auipc	ra,0x1
     1e2:	236080e7          	jalr	566(ra) # 1414 <close>
     1e6:	fc042783          	lw	a5,-64(s0)
     1ea:	853e                	mv	a0,a5
     1ec:	00001097          	auipc	ra,0x1
     1f0:	278080e7          	jalr	632(ra) # 1464 <dup>
     1f4:	fc042783          	lw	a5,-64(s0)
     1f8:	853e                	mv	a0,a5
     1fa:	00001097          	auipc	ra,0x1
     1fe:	21a080e7          	jalr	538(ra) # 1414 <close>
     202:	fc442783          	lw	a5,-60(s0)
     206:	853e                	mv	a0,a5
     208:	00001097          	auipc	ra,0x1
     20c:	20c080e7          	jalr	524(ra) # 1414 <close>
     210:	fd843783          	ld	a5,-40(s0)
     214:	6b9c                	ld	a5,16(a5)
     216:	853e                	mv	a0,a5
     218:	00000097          	auipc	ra,0x0
     21c:	de8080e7          	jalr	-536(ra) # 0 <runcmd>
     220:	fc042783          	lw	a5,-64(s0)
     224:	853e                	mv	a0,a5
     226:	00001097          	auipc	ra,0x1
     22a:	1ee080e7          	jalr	494(ra) # 1414 <close>
     22e:	fc442783          	lw	a5,-60(s0)
     232:	853e                	mv	a0,a5
     234:	00001097          	auipc	ra,0x1
     238:	1e0080e7          	jalr	480(ra) # 1414 <close>
     23c:	4501                	li	a0,0
     23e:	00001097          	auipc	ra,0x1
     242:	1b6080e7          	jalr	438(ra) # 13f4 <wait>
     246:	4501                	li	a0,0
     248:	00001097          	auipc	ra,0x1
     24c:	1ac080e7          	jalr	428(ra) # 13f4 <wait>
     250:	a025                	j	278 <runcmd+0x278>
     252:	fb843783          	ld	a5,-72(s0)
     256:	fef43423          	sd	a5,-24(s0)
     25a:	00000097          	auipc	ra,0x0
     25e:	1fc080e7          	jalr	508(ra) # 456 <fork1>
     262:	87aa                	mv	a5,a0
     264:	eb89                	bnez	a5,276 <runcmd+0x276>
     266:	fe843783          	ld	a5,-24(s0)
     26a:	679c                	ld	a5,8(a5)
     26c:	853e                	mv	a0,a5
     26e:	00000097          	auipc	ra,0x0
     272:	d92080e7          	jalr	-622(ra) # 0 <runcmd>
     276:	0001                	nop
     278:	4501                	li	a0,0
     27a:	00001097          	auipc	ra,0x1
     27e:	172080e7          	jalr	370(ra) # 13ec <exit>

0000000000000282 <getcmd>:
     282:	1101                	addi	sp,sp,-32
     284:	ec06                	sd	ra,24(sp)
     286:	e822                	sd	s0,16(sp)
     288:	1000                	addi	s0,sp,32
     28a:	fea43423          	sd	a0,-24(s0)
     28e:	87ae                	mv	a5,a1
     290:	fef42223          	sw	a5,-28(s0)
     294:	00002597          	auipc	a1,0x2
     298:	a7458593          	addi	a1,a1,-1420 # 1d08 <longjmp_1+0x4c>
     29c:	4509                	li	a0,2
     29e:	00001097          	auipc	ra,0x1
     2a2:	624080e7          	jalr	1572(ra) # 18c2 <fprintf>
     2a6:	fe442783          	lw	a5,-28(s0)
     2aa:	863e                	mv	a2,a5
     2ac:	4581                	li	a1,0
     2ae:	fe843503          	ld	a0,-24(s0)
     2b2:	00001097          	auipc	ra,0x1
     2b6:	d90080e7          	jalr	-624(ra) # 1042 <memset>
     2ba:	fe442783          	lw	a5,-28(s0)
     2be:	85be                	mv	a1,a5
     2c0:	fe843503          	ld	a0,-24(s0)
     2c4:	00001097          	auipc	ra,0x1
     2c8:	e28080e7          	jalr	-472(ra) # 10ec <gets>
     2cc:	fe843783          	ld	a5,-24(s0)
     2d0:	0007c783          	lbu	a5,0(a5)
     2d4:	e399                	bnez	a5,2da <getcmd+0x58>
     2d6:	57fd                	li	a5,-1
     2d8:	a011                	j	2dc <getcmd+0x5a>
     2da:	4781                	li	a5,0
     2dc:	853e                	mv	a0,a5
     2de:	60e2                	ld	ra,24(sp)
     2e0:	6442                	ld	s0,16(sp)
     2e2:	6105                	addi	sp,sp,32
     2e4:	8082                	ret

00000000000002e6 <main>:
     2e6:	1101                	addi	sp,sp,-32
     2e8:	ec06                	sd	ra,24(sp)
     2ea:	e822                	sd	s0,16(sp)
     2ec:	1000                	addi	s0,sp,32
     2ee:	a005                	j	30e <main+0x28>
     2f0:	fec42783          	lw	a5,-20(s0)
     2f4:	0007871b          	sext.w	a4,a5
     2f8:	4789                	li	a5,2
     2fa:	00e7da63          	bge	a5,a4,30e <main+0x28>
     2fe:	fec42783          	lw	a5,-20(s0)
     302:	853e                	mv	a0,a5
     304:	00001097          	auipc	ra,0x1
     308:	110080e7          	jalr	272(ra) # 1414 <close>
     30c:	a015                	j	330 <main+0x4a>
     30e:	4589                	li	a1,2
     310:	00002517          	auipc	a0,0x2
     314:	a0050513          	addi	a0,a0,-1536 # 1d10 <longjmp_1+0x54>
     318:	00001097          	auipc	ra,0x1
     31c:	114080e7          	jalr	276(ra) # 142c <open>
     320:	87aa                	mv	a5,a0
     322:	fef42623          	sw	a5,-20(s0)
     326:	fec42783          	lw	a5,-20(s0)
     32a:	2781                	sext.w	a5,a5
     32c:	fc07d2e3          	bgez	a5,2f0 <main+0xa>
     330:	a8d9                	j	406 <main+0x120>
     332:	00002797          	auipc	a5,0x2
     336:	afe78793          	addi	a5,a5,-1282 # 1e30 <buf.0>
     33a:	0007c783          	lbu	a5,0(a5)
     33e:	873e                	mv	a4,a5
     340:	06300793          	li	a5,99
     344:	08f71863          	bne	a4,a5,3d4 <main+0xee>
     348:	00002797          	auipc	a5,0x2
     34c:	ae878793          	addi	a5,a5,-1304 # 1e30 <buf.0>
     350:	0017c783          	lbu	a5,1(a5)
     354:	873e                	mv	a4,a5
     356:	06400793          	li	a5,100
     35a:	06f71d63          	bne	a4,a5,3d4 <main+0xee>
     35e:	00002797          	auipc	a5,0x2
     362:	ad278793          	addi	a5,a5,-1326 # 1e30 <buf.0>
     366:	0027c783          	lbu	a5,2(a5)
     36a:	873e                	mv	a4,a5
     36c:	02000793          	li	a5,32
     370:	06f71263          	bne	a4,a5,3d4 <main+0xee>
     374:	00002517          	auipc	a0,0x2
     378:	abc50513          	addi	a0,a0,-1348 # 1e30 <buf.0>
     37c:	00001097          	auipc	ra,0x1
     380:	c90080e7          	jalr	-880(ra) # 100c <strlen>
     384:	87aa                	mv	a5,a0
     386:	2781                	sext.w	a5,a5
     388:	37fd                	addiw	a5,a5,-1
     38a:	2781                	sext.w	a5,a5
     38c:	00002717          	auipc	a4,0x2
     390:	aa470713          	addi	a4,a4,-1372 # 1e30 <buf.0>
     394:	1782                	slli	a5,a5,0x20
     396:	9381                	srli	a5,a5,0x20
     398:	97ba                	add	a5,a5,a4
     39a:	00078023          	sb	zero,0(a5)
     39e:	00002797          	auipc	a5,0x2
     3a2:	a9578793          	addi	a5,a5,-1387 # 1e33 <buf.0+0x3>
     3a6:	853e                	mv	a0,a5
     3a8:	00001097          	auipc	ra,0x1
     3ac:	0b4080e7          	jalr	180(ra) # 145c <chdir>
     3b0:	87aa                	mv	a5,a0
     3b2:	0407da63          	bgez	a5,406 <main+0x120>
     3b6:	00002797          	auipc	a5,0x2
     3ba:	a7d78793          	addi	a5,a5,-1411 # 1e33 <buf.0+0x3>
     3be:	863e                	mv	a2,a5
     3c0:	00002597          	auipc	a1,0x2
     3c4:	95858593          	addi	a1,a1,-1704 # 1d18 <longjmp_1+0x5c>
     3c8:	4509                	li	a0,2
     3ca:	00001097          	auipc	ra,0x1
     3ce:	4f8080e7          	jalr	1272(ra) # 18c2 <fprintf>
     3d2:	a815                	j	406 <main+0x120>
     3d4:	00000097          	auipc	ra,0x0
     3d8:	082080e7          	jalr	130(ra) # 456 <fork1>
     3dc:	87aa                	mv	a5,a0
     3de:	ef99                	bnez	a5,3fc <main+0x116>
     3e0:	00002517          	auipc	a0,0x2
     3e4:	a5050513          	addi	a0,a0,-1456 # 1e30 <buf.0>
     3e8:	00000097          	auipc	ra,0x0
     3ec:	4e2080e7          	jalr	1250(ra) # 8ca <parsecmd>
     3f0:	87aa                	mv	a5,a0
     3f2:	853e                	mv	a0,a5
     3f4:	00000097          	auipc	ra,0x0
     3f8:	c0c080e7          	jalr	-1012(ra) # 0 <runcmd>
     3fc:	4501                	li	a0,0
     3fe:	00001097          	auipc	ra,0x1
     402:	ff6080e7          	jalr	-10(ra) # 13f4 <wait>
     406:	06400593          	li	a1,100
     40a:	00002517          	auipc	a0,0x2
     40e:	a2650513          	addi	a0,a0,-1498 # 1e30 <buf.0>
     412:	00000097          	auipc	ra,0x0
     416:	e70080e7          	jalr	-400(ra) # 282 <getcmd>
     41a:	87aa                	mv	a5,a0
     41c:	f007dbe3          	bgez	a5,332 <main+0x4c>
     420:	4501                	li	a0,0
     422:	00001097          	auipc	ra,0x1
     426:	fca080e7          	jalr	-54(ra) # 13ec <exit>

000000000000042a <panic>:
     42a:	1101                	addi	sp,sp,-32
     42c:	ec06                	sd	ra,24(sp)
     42e:	e822                	sd	s0,16(sp)
     430:	1000                	addi	s0,sp,32
     432:	fea43423          	sd	a0,-24(s0)
     436:	fe843603          	ld	a2,-24(s0)
     43a:	00002597          	auipc	a1,0x2
     43e:	8ee58593          	addi	a1,a1,-1810 # 1d28 <longjmp_1+0x6c>
     442:	4509                	li	a0,2
     444:	00001097          	auipc	ra,0x1
     448:	47e080e7          	jalr	1150(ra) # 18c2 <fprintf>
     44c:	4505                	li	a0,1
     44e:	00001097          	auipc	ra,0x1
     452:	f9e080e7          	jalr	-98(ra) # 13ec <exit>

0000000000000456 <fork1>:
     456:	1101                	addi	sp,sp,-32
     458:	ec06                	sd	ra,24(sp)
     45a:	e822                	sd	s0,16(sp)
     45c:	1000                	addi	s0,sp,32
     45e:	00001097          	auipc	ra,0x1
     462:	f86080e7          	jalr	-122(ra) # 13e4 <fork>
     466:	87aa                	mv	a5,a0
     468:	fef42623          	sw	a5,-20(s0)
     46c:	fec42783          	lw	a5,-20(s0)
     470:	0007871b          	sext.w	a4,a5
     474:	57fd                	li	a5,-1
     476:	00f71a63          	bne	a4,a5,48a <fork1+0x34>
     47a:	00002517          	auipc	a0,0x2
     47e:	8b650513          	addi	a0,a0,-1866 # 1d30 <longjmp_1+0x74>
     482:	00000097          	auipc	ra,0x0
     486:	fa8080e7          	jalr	-88(ra) # 42a <panic>
     48a:	fec42783          	lw	a5,-20(s0)
     48e:	853e                	mv	a0,a5
     490:	60e2                	ld	ra,24(sp)
     492:	6442                	ld	s0,16(sp)
     494:	6105                	addi	sp,sp,32
     496:	8082                	ret

0000000000000498 <execcmd>:
     498:	1101                	addi	sp,sp,-32
     49a:	ec06                	sd	ra,24(sp)
     49c:	e822                	sd	s0,16(sp)
     49e:	1000                	addi	s0,sp,32
     4a0:	0a800513          	li	a0,168
     4a4:	00001097          	auipc	ra,0x1
     4a8:	668080e7          	jalr	1640(ra) # 1b0c <malloc>
     4ac:	fea43423          	sd	a0,-24(s0)
     4b0:	0a800613          	li	a2,168
     4b4:	4581                	li	a1,0
     4b6:	fe843503          	ld	a0,-24(s0)
     4ba:	00001097          	auipc	ra,0x1
     4be:	b88080e7          	jalr	-1144(ra) # 1042 <memset>
     4c2:	fe843783          	ld	a5,-24(s0)
     4c6:	4705                	li	a4,1
     4c8:	c398                	sw	a4,0(a5)
     4ca:	fe843783          	ld	a5,-24(s0)
     4ce:	853e                	mv	a0,a5
     4d0:	60e2                	ld	ra,24(sp)
     4d2:	6442                	ld	s0,16(sp)
     4d4:	6105                	addi	sp,sp,32
     4d6:	8082                	ret

00000000000004d8 <redircmd>:
     4d8:	7139                	addi	sp,sp,-64
     4da:	fc06                	sd	ra,56(sp)
     4dc:	f822                	sd	s0,48(sp)
     4de:	0080                	addi	s0,sp,64
     4e0:	fca43c23          	sd	a0,-40(s0)
     4e4:	fcb43823          	sd	a1,-48(s0)
     4e8:	fcc43423          	sd	a2,-56(s0)
     4ec:	87b6                	mv	a5,a3
     4ee:	fcf42223          	sw	a5,-60(s0)
     4f2:	87ba                	mv	a5,a4
     4f4:	fcf42023          	sw	a5,-64(s0)
     4f8:	02800513          	li	a0,40
     4fc:	00001097          	auipc	ra,0x1
     500:	610080e7          	jalr	1552(ra) # 1b0c <malloc>
     504:	fea43423          	sd	a0,-24(s0)
     508:	02800613          	li	a2,40
     50c:	4581                	li	a1,0
     50e:	fe843503          	ld	a0,-24(s0)
     512:	00001097          	auipc	ra,0x1
     516:	b30080e7          	jalr	-1232(ra) # 1042 <memset>
     51a:	fe843783          	ld	a5,-24(s0)
     51e:	4709                	li	a4,2
     520:	c398                	sw	a4,0(a5)
     522:	fe843783          	ld	a5,-24(s0)
     526:	fd843703          	ld	a4,-40(s0)
     52a:	e798                	sd	a4,8(a5)
     52c:	fe843783          	ld	a5,-24(s0)
     530:	fd043703          	ld	a4,-48(s0)
     534:	eb98                	sd	a4,16(a5)
     536:	fe843783          	ld	a5,-24(s0)
     53a:	fc843703          	ld	a4,-56(s0)
     53e:	ef98                	sd	a4,24(a5)
     540:	fe843783          	ld	a5,-24(s0)
     544:	fc442703          	lw	a4,-60(s0)
     548:	d398                	sw	a4,32(a5)
     54a:	fe843783          	ld	a5,-24(s0)
     54e:	fc042703          	lw	a4,-64(s0)
     552:	d3d8                	sw	a4,36(a5)
     554:	fe843783          	ld	a5,-24(s0)
     558:	853e                	mv	a0,a5
     55a:	70e2                	ld	ra,56(sp)
     55c:	7442                	ld	s0,48(sp)
     55e:	6121                	addi	sp,sp,64
     560:	8082                	ret

0000000000000562 <pipecmd>:
     562:	7179                	addi	sp,sp,-48
     564:	f406                	sd	ra,40(sp)
     566:	f022                	sd	s0,32(sp)
     568:	1800                	addi	s0,sp,48
     56a:	fca43c23          	sd	a0,-40(s0)
     56e:	fcb43823          	sd	a1,-48(s0)
     572:	4561                	li	a0,24
     574:	00001097          	auipc	ra,0x1
     578:	598080e7          	jalr	1432(ra) # 1b0c <malloc>
     57c:	fea43423          	sd	a0,-24(s0)
     580:	4661                	li	a2,24
     582:	4581                	li	a1,0
     584:	fe843503          	ld	a0,-24(s0)
     588:	00001097          	auipc	ra,0x1
     58c:	aba080e7          	jalr	-1350(ra) # 1042 <memset>
     590:	fe843783          	ld	a5,-24(s0)
     594:	470d                	li	a4,3
     596:	c398                	sw	a4,0(a5)
     598:	fe843783          	ld	a5,-24(s0)
     59c:	fd843703          	ld	a4,-40(s0)
     5a0:	e798                	sd	a4,8(a5)
     5a2:	fe843783          	ld	a5,-24(s0)
     5a6:	fd043703          	ld	a4,-48(s0)
     5aa:	eb98                	sd	a4,16(a5)
     5ac:	fe843783          	ld	a5,-24(s0)
     5b0:	853e                	mv	a0,a5
     5b2:	70a2                	ld	ra,40(sp)
     5b4:	7402                	ld	s0,32(sp)
     5b6:	6145                	addi	sp,sp,48
     5b8:	8082                	ret

00000000000005ba <listcmd>:
     5ba:	7179                	addi	sp,sp,-48
     5bc:	f406                	sd	ra,40(sp)
     5be:	f022                	sd	s0,32(sp)
     5c0:	1800                	addi	s0,sp,48
     5c2:	fca43c23          	sd	a0,-40(s0)
     5c6:	fcb43823          	sd	a1,-48(s0)
     5ca:	4561                	li	a0,24
     5cc:	00001097          	auipc	ra,0x1
     5d0:	540080e7          	jalr	1344(ra) # 1b0c <malloc>
     5d4:	fea43423          	sd	a0,-24(s0)
     5d8:	4661                	li	a2,24
     5da:	4581                	li	a1,0
     5dc:	fe843503          	ld	a0,-24(s0)
     5e0:	00001097          	auipc	ra,0x1
     5e4:	a62080e7          	jalr	-1438(ra) # 1042 <memset>
     5e8:	fe843783          	ld	a5,-24(s0)
     5ec:	4711                	li	a4,4
     5ee:	c398                	sw	a4,0(a5)
     5f0:	fe843783          	ld	a5,-24(s0)
     5f4:	fd843703          	ld	a4,-40(s0)
     5f8:	e798                	sd	a4,8(a5)
     5fa:	fe843783          	ld	a5,-24(s0)
     5fe:	fd043703          	ld	a4,-48(s0)
     602:	eb98                	sd	a4,16(a5)
     604:	fe843783          	ld	a5,-24(s0)
     608:	853e                	mv	a0,a5
     60a:	70a2                	ld	ra,40(sp)
     60c:	7402                	ld	s0,32(sp)
     60e:	6145                	addi	sp,sp,48
     610:	8082                	ret

0000000000000612 <backcmd>:
     612:	7179                	addi	sp,sp,-48
     614:	f406                	sd	ra,40(sp)
     616:	f022                	sd	s0,32(sp)
     618:	1800                	addi	s0,sp,48
     61a:	fca43c23          	sd	a0,-40(s0)
     61e:	4541                	li	a0,16
     620:	00001097          	auipc	ra,0x1
     624:	4ec080e7          	jalr	1260(ra) # 1b0c <malloc>
     628:	fea43423          	sd	a0,-24(s0)
     62c:	4641                	li	a2,16
     62e:	4581                	li	a1,0
     630:	fe843503          	ld	a0,-24(s0)
     634:	00001097          	auipc	ra,0x1
     638:	a0e080e7          	jalr	-1522(ra) # 1042 <memset>
     63c:	fe843783          	ld	a5,-24(s0)
     640:	4715                	li	a4,5
     642:	c398                	sw	a4,0(a5)
     644:	fe843783          	ld	a5,-24(s0)
     648:	fd843703          	ld	a4,-40(s0)
     64c:	e798                	sd	a4,8(a5)
     64e:	fe843783          	ld	a5,-24(s0)
     652:	853e                	mv	a0,a5
     654:	70a2                	ld	ra,40(sp)
     656:	7402                	ld	s0,32(sp)
     658:	6145                	addi	sp,sp,48
     65a:	8082                	ret

000000000000065c <gettoken>:
     65c:	7139                	addi	sp,sp,-64
     65e:	fc06                	sd	ra,56(sp)
     660:	f822                	sd	s0,48(sp)
     662:	0080                	addi	s0,sp,64
     664:	fca43c23          	sd	a0,-40(s0)
     668:	fcb43823          	sd	a1,-48(s0)
     66c:	fcc43423          	sd	a2,-56(s0)
     670:	fcd43023          	sd	a3,-64(s0)
     674:	fd843783          	ld	a5,-40(s0)
     678:	639c                	ld	a5,0(a5)
     67a:	fef43423          	sd	a5,-24(s0)
     67e:	a031                	j	68a <gettoken+0x2e>
     680:	fe843783          	ld	a5,-24(s0)
     684:	0785                	addi	a5,a5,1
     686:	fef43423          	sd	a5,-24(s0)
     68a:	fe843703          	ld	a4,-24(s0)
     68e:	fd043783          	ld	a5,-48(s0)
     692:	02f77163          	bgeu	a4,a5,6b4 <gettoken+0x58>
     696:	fe843783          	ld	a5,-24(s0)
     69a:	0007c783          	lbu	a5,0(a5)
     69e:	85be                	mv	a1,a5
     6a0:	00001517          	auipc	a0,0x1
     6a4:	78050513          	addi	a0,a0,1920 # 1e20 <whitespace>
     6a8:	00001097          	auipc	ra,0x1
     6ac:	9fa080e7          	jalr	-1542(ra) # 10a2 <strchr>
     6b0:	87aa                	mv	a5,a0
     6b2:	f7f9                	bnez	a5,680 <gettoken+0x24>
     6b4:	fc843783          	ld	a5,-56(s0)
     6b8:	c791                	beqz	a5,6c4 <gettoken+0x68>
     6ba:	fc843783          	ld	a5,-56(s0)
     6be:	fe843703          	ld	a4,-24(s0)
     6c2:	e398                	sd	a4,0(a5)
     6c4:	fe843783          	ld	a5,-24(s0)
     6c8:	0007c783          	lbu	a5,0(a5)
     6cc:	fef42223          	sw	a5,-28(s0)
     6d0:	fe843783          	ld	a5,-24(s0)
     6d4:	0007c783          	lbu	a5,0(a5)
     6d8:	2781                	sext.w	a5,a5
     6da:	86be                	mv	a3,a5
     6dc:	07c00713          	li	a4,124
     6e0:	04e68b63          	beq	a3,a4,736 <gettoken+0xda>
     6e4:	86be                	mv	a3,a5
     6e6:	07c00713          	li	a4,124
     6ea:	08d74463          	blt	a4,a3,772 <gettoken+0x116>
     6ee:	86be                	mv	a3,a5
     6f0:	03e00713          	li	a4,62
     6f4:	04e68763          	beq	a3,a4,742 <gettoken+0xe6>
     6f8:	86be                	mv	a3,a5
     6fa:	03e00713          	li	a4,62
     6fe:	06d74a63          	blt	a4,a3,772 <gettoken+0x116>
     702:	86be                	mv	a3,a5
     704:	03c00713          	li	a4,60
     708:	06d74563          	blt	a4,a3,772 <gettoken+0x116>
     70c:	86be                	mv	a3,a5
     70e:	03b00713          	li	a4,59
     712:	02e6d263          	bge	a3,a4,736 <gettoken+0xda>
     716:	86be                	mv	a3,a5
     718:	02900713          	li	a4,41
     71c:	04d74b63          	blt	a4,a3,772 <gettoken+0x116>
     720:	86be                	mv	a3,a5
     722:	02800713          	li	a4,40
     726:	00e6d863          	bge	a3,a4,736 <gettoken+0xda>
     72a:	c3dd                	beqz	a5,7d0 <gettoken+0x174>
     72c:	873e                	mv	a4,a5
     72e:	02600793          	li	a5,38
     732:	04f71063          	bne	a4,a5,772 <gettoken+0x116>
     736:	fe843783          	ld	a5,-24(s0)
     73a:	0785                	addi	a5,a5,1
     73c:	fef43423          	sd	a5,-24(s0)
     740:	a869                	j	7da <gettoken+0x17e>
     742:	fe843783          	ld	a5,-24(s0)
     746:	0785                	addi	a5,a5,1
     748:	fef43423          	sd	a5,-24(s0)
     74c:	fe843783          	ld	a5,-24(s0)
     750:	0007c783          	lbu	a5,0(a5)
     754:	873e                	mv	a4,a5
     756:	03e00793          	li	a5,62
     75a:	06f71d63          	bne	a4,a5,7d4 <gettoken+0x178>
     75e:	02b00793          	li	a5,43
     762:	fef42223          	sw	a5,-28(s0)
     766:	fe843783          	ld	a5,-24(s0)
     76a:	0785                	addi	a5,a5,1
     76c:	fef43423          	sd	a5,-24(s0)
     770:	a095                	j	7d4 <gettoken+0x178>
     772:	06100793          	li	a5,97
     776:	fef42223          	sw	a5,-28(s0)
     77a:	a031                	j	786 <gettoken+0x12a>
     77c:	fe843783          	ld	a5,-24(s0)
     780:	0785                	addi	a5,a5,1
     782:	fef43423          	sd	a5,-24(s0)
     786:	fe843703          	ld	a4,-24(s0)
     78a:	fd043783          	ld	a5,-48(s0)
     78e:	04f77563          	bgeu	a4,a5,7d8 <gettoken+0x17c>
     792:	fe843783          	ld	a5,-24(s0)
     796:	0007c783          	lbu	a5,0(a5)
     79a:	85be                	mv	a1,a5
     79c:	00001517          	auipc	a0,0x1
     7a0:	68450513          	addi	a0,a0,1668 # 1e20 <whitespace>
     7a4:	00001097          	auipc	ra,0x1
     7a8:	8fe080e7          	jalr	-1794(ra) # 10a2 <strchr>
     7ac:	87aa                	mv	a5,a0
     7ae:	e78d                	bnez	a5,7d8 <gettoken+0x17c>
     7b0:	fe843783          	ld	a5,-24(s0)
     7b4:	0007c783          	lbu	a5,0(a5)
     7b8:	85be                	mv	a1,a5
     7ba:	00001517          	auipc	a0,0x1
     7be:	66e50513          	addi	a0,a0,1646 # 1e28 <symbols>
     7c2:	00001097          	auipc	ra,0x1
     7c6:	8e0080e7          	jalr	-1824(ra) # 10a2 <strchr>
     7ca:	87aa                	mv	a5,a0
     7cc:	dbc5                	beqz	a5,77c <gettoken+0x120>
     7ce:	a029                	j	7d8 <gettoken+0x17c>
     7d0:	0001                	nop
     7d2:	a021                	j	7da <gettoken+0x17e>
     7d4:	0001                	nop
     7d6:	a011                	j	7da <gettoken+0x17e>
     7d8:	0001                	nop
     7da:	fc043783          	ld	a5,-64(s0)
     7de:	cf81                	beqz	a5,7f6 <gettoken+0x19a>
     7e0:	fc043783          	ld	a5,-64(s0)
     7e4:	fe843703          	ld	a4,-24(s0)
     7e8:	e398                	sd	a4,0(a5)
     7ea:	a031                	j	7f6 <gettoken+0x19a>
     7ec:	fe843783          	ld	a5,-24(s0)
     7f0:	0785                	addi	a5,a5,1
     7f2:	fef43423          	sd	a5,-24(s0)
     7f6:	fe843703          	ld	a4,-24(s0)
     7fa:	fd043783          	ld	a5,-48(s0)
     7fe:	02f77163          	bgeu	a4,a5,820 <gettoken+0x1c4>
     802:	fe843783          	ld	a5,-24(s0)
     806:	0007c783          	lbu	a5,0(a5)
     80a:	85be                	mv	a1,a5
     80c:	00001517          	auipc	a0,0x1
     810:	61450513          	addi	a0,a0,1556 # 1e20 <whitespace>
     814:	00001097          	auipc	ra,0x1
     818:	88e080e7          	jalr	-1906(ra) # 10a2 <strchr>
     81c:	87aa                	mv	a5,a0
     81e:	f7f9                	bnez	a5,7ec <gettoken+0x190>
     820:	fd843783          	ld	a5,-40(s0)
     824:	fe843703          	ld	a4,-24(s0)
     828:	e398                	sd	a4,0(a5)
     82a:	fe442783          	lw	a5,-28(s0)
     82e:	853e                	mv	a0,a5
     830:	70e2                	ld	ra,56(sp)
     832:	7442                	ld	s0,48(sp)
     834:	6121                	addi	sp,sp,64
     836:	8082                	ret

0000000000000838 <peek>:
     838:	7139                	addi	sp,sp,-64
     83a:	fc06                	sd	ra,56(sp)
     83c:	f822                	sd	s0,48(sp)
     83e:	0080                	addi	s0,sp,64
     840:	fca43c23          	sd	a0,-40(s0)
     844:	fcb43823          	sd	a1,-48(s0)
     848:	fcc43423          	sd	a2,-56(s0)
     84c:	fd843783          	ld	a5,-40(s0)
     850:	639c                	ld	a5,0(a5)
     852:	fef43423          	sd	a5,-24(s0)
     856:	a031                	j	862 <peek+0x2a>
     858:	fe843783          	ld	a5,-24(s0)
     85c:	0785                	addi	a5,a5,1
     85e:	fef43423          	sd	a5,-24(s0)
     862:	fe843703          	ld	a4,-24(s0)
     866:	fd043783          	ld	a5,-48(s0)
     86a:	02f77163          	bgeu	a4,a5,88c <peek+0x54>
     86e:	fe843783          	ld	a5,-24(s0)
     872:	0007c783          	lbu	a5,0(a5)
     876:	85be                	mv	a1,a5
     878:	00001517          	auipc	a0,0x1
     87c:	5a850513          	addi	a0,a0,1448 # 1e20 <whitespace>
     880:	00001097          	auipc	ra,0x1
     884:	822080e7          	jalr	-2014(ra) # 10a2 <strchr>
     888:	87aa                	mv	a5,a0
     88a:	f7f9                	bnez	a5,858 <peek+0x20>
     88c:	fd843783          	ld	a5,-40(s0)
     890:	fe843703          	ld	a4,-24(s0)
     894:	e398                	sd	a4,0(a5)
     896:	fe843783          	ld	a5,-24(s0)
     89a:	0007c783          	lbu	a5,0(a5)
     89e:	c385                	beqz	a5,8be <peek+0x86>
     8a0:	fe843783          	ld	a5,-24(s0)
     8a4:	0007c783          	lbu	a5,0(a5)
     8a8:	85be                	mv	a1,a5
     8aa:	fc843503          	ld	a0,-56(s0)
     8ae:	00000097          	auipc	ra,0x0
     8b2:	7f4080e7          	jalr	2036(ra) # 10a2 <strchr>
     8b6:	87aa                	mv	a5,a0
     8b8:	c399                	beqz	a5,8be <peek+0x86>
     8ba:	4785                	li	a5,1
     8bc:	a011                	j	8c0 <peek+0x88>
     8be:	4781                	li	a5,0
     8c0:	853e                	mv	a0,a5
     8c2:	70e2                	ld	ra,56(sp)
     8c4:	7442                	ld	s0,48(sp)
     8c6:	6121                	addi	sp,sp,64
     8c8:	8082                	ret

00000000000008ca <parsecmd>:
     8ca:	7139                	addi	sp,sp,-64
     8cc:	fc06                	sd	ra,56(sp)
     8ce:	f822                	sd	s0,48(sp)
     8d0:	f426                	sd	s1,40(sp)
     8d2:	0080                	addi	s0,sp,64
     8d4:	fca43423          	sd	a0,-56(s0)
     8d8:	fc843483          	ld	s1,-56(s0)
     8dc:	fc843783          	ld	a5,-56(s0)
     8e0:	853e                	mv	a0,a5
     8e2:	00000097          	auipc	ra,0x0
     8e6:	72a080e7          	jalr	1834(ra) # 100c <strlen>
     8ea:	87aa                	mv	a5,a0
     8ec:	2781                	sext.w	a5,a5
     8ee:	1782                	slli	a5,a5,0x20
     8f0:	9381                	srli	a5,a5,0x20
     8f2:	97a6                	add	a5,a5,s1
     8f4:	fcf43c23          	sd	a5,-40(s0)
     8f8:	fc840793          	addi	a5,s0,-56
     8fc:	fd843583          	ld	a1,-40(s0)
     900:	853e                	mv	a0,a5
     902:	00000097          	auipc	ra,0x0
     906:	076080e7          	jalr	118(ra) # 978 <parseline>
     90a:	fca43823          	sd	a0,-48(s0)
     90e:	fc840793          	addi	a5,s0,-56
     912:	00001617          	auipc	a2,0x1
     916:	42660613          	addi	a2,a2,1062 # 1d38 <longjmp_1+0x7c>
     91a:	fd843583          	ld	a1,-40(s0)
     91e:	853e                	mv	a0,a5
     920:	00000097          	auipc	ra,0x0
     924:	f18080e7          	jalr	-232(ra) # 838 <peek>
     928:	fc843783          	ld	a5,-56(s0)
     92c:	fd843703          	ld	a4,-40(s0)
     930:	02f70663          	beq	a4,a5,95c <parsecmd+0x92>
     934:	fc843783          	ld	a5,-56(s0)
     938:	863e                	mv	a2,a5
     93a:	00001597          	auipc	a1,0x1
     93e:	40658593          	addi	a1,a1,1030 # 1d40 <longjmp_1+0x84>
     942:	4509                	li	a0,2
     944:	00001097          	auipc	ra,0x1
     948:	f7e080e7          	jalr	-130(ra) # 18c2 <fprintf>
     94c:	00001517          	auipc	a0,0x1
     950:	40450513          	addi	a0,a0,1028 # 1d50 <longjmp_1+0x94>
     954:	00000097          	auipc	ra,0x0
     958:	ad6080e7          	jalr	-1322(ra) # 42a <panic>
     95c:	fd043503          	ld	a0,-48(s0)
     960:	00000097          	auipc	ra,0x0
     964:	4da080e7          	jalr	1242(ra) # e3a <nulterminate>
     968:	fd043783          	ld	a5,-48(s0)
     96c:	853e                	mv	a0,a5
     96e:	70e2                	ld	ra,56(sp)
     970:	7442                	ld	s0,48(sp)
     972:	74a2                	ld	s1,40(sp)
     974:	6121                	addi	sp,sp,64
     976:	8082                	ret

0000000000000978 <parseline>:
     978:	7179                	addi	sp,sp,-48
     97a:	f406                	sd	ra,40(sp)
     97c:	f022                	sd	s0,32(sp)
     97e:	1800                	addi	s0,sp,48
     980:	fca43c23          	sd	a0,-40(s0)
     984:	fcb43823          	sd	a1,-48(s0)
     988:	fd043583          	ld	a1,-48(s0)
     98c:	fd843503          	ld	a0,-40(s0)
     990:	00000097          	auipc	ra,0x0
     994:	0b0080e7          	jalr	176(ra) # a40 <parsepipe>
     998:	fea43423          	sd	a0,-24(s0)
     99c:	a01d                	j	9c2 <parseline+0x4a>
     99e:	4681                	li	a3,0
     9a0:	4601                	li	a2,0
     9a2:	fd043583          	ld	a1,-48(s0)
     9a6:	fd843503          	ld	a0,-40(s0)
     9aa:	00000097          	auipc	ra,0x0
     9ae:	cb2080e7          	jalr	-846(ra) # 65c <gettoken>
     9b2:	fe843503          	ld	a0,-24(s0)
     9b6:	00000097          	auipc	ra,0x0
     9ba:	c5c080e7          	jalr	-932(ra) # 612 <backcmd>
     9be:	fea43423          	sd	a0,-24(s0)
     9c2:	00001617          	auipc	a2,0x1
     9c6:	39660613          	addi	a2,a2,918 # 1d58 <longjmp_1+0x9c>
     9ca:	fd043583          	ld	a1,-48(s0)
     9ce:	fd843503          	ld	a0,-40(s0)
     9d2:	00000097          	auipc	ra,0x0
     9d6:	e66080e7          	jalr	-410(ra) # 838 <peek>
     9da:	87aa                	mv	a5,a0
     9dc:	f3e9                	bnez	a5,99e <parseline+0x26>
     9de:	00001617          	auipc	a2,0x1
     9e2:	38260613          	addi	a2,a2,898 # 1d60 <longjmp_1+0xa4>
     9e6:	fd043583          	ld	a1,-48(s0)
     9ea:	fd843503          	ld	a0,-40(s0)
     9ee:	00000097          	auipc	ra,0x0
     9f2:	e4a080e7          	jalr	-438(ra) # 838 <peek>
     9f6:	87aa                	mv	a5,a0
     9f8:	cf8d                	beqz	a5,a32 <parseline+0xba>
     9fa:	4681                	li	a3,0
     9fc:	4601                	li	a2,0
     9fe:	fd043583          	ld	a1,-48(s0)
     a02:	fd843503          	ld	a0,-40(s0)
     a06:	00000097          	auipc	ra,0x0
     a0a:	c56080e7          	jalr	-938(ra) # 65c <gettoken>
     a0e:	fd043583          	ld	a1,-48(s0)
     a12:	fd843503          	ld	a0,-40(s0)
     a16:	00000097          	auipc	ra,0x0
     a1a:	f62080e7          	jalr	-158(ra) # 978 <parseline>
     a1e:	87aa                	mv	a5,a0
     a20:	85be                	mv	a1,a5
     a22:	fe843503          	ld	a0,-24(s0)
     a26:	00000097          	auipc	ra,0x0
     a2a:	b94080e7          	jalr	-1132(ra) # 5ba <listcmd>
     a2e:	fea43423          	sd	a0,-24(s0)
     a32:	fe843783          	ld	a5,-24(s0)
     a36:	853e                	mv	a0,a5
     a38:	70a2                	ld	ra,40(sp)
     a3a:	7402                	ld	s0,32(sp)
     a3c:	6145                	addi	sp,sp,48
     a3e:	8082                	ret

0000000000000a40 <parsepipe>:
     a40:	7179                	addi	sp,sp,-48
     a42:	f406                	sd	ra,40(sp)
     a44:	f022                	sd	s0,32(sp)
     a46:	1800                	addi	s0,sp,48
     a48:	fca43c23          	sd	a0,-40(s0)
     a4c:	fcb43823          	sd	a1,-48(s0)
     a50:	fd043583          	ld	a1,-48(s0)
     a54:	fd843503          	ld	a0,-40(s0)
     a58:	00000097          	auipc	ra,0x0
     a5c:	270080e7          	jalr	624(ra) # cc8 <parseexec>
     a60:	fea43423          	sd	a0,-24(s0)
     a64:	00001617          	auipc	a2,0x1
     a68:	30460613          	addi	a2,a2,772 # 1d68 <longjmp_1+0xac>
     a6c:	fd043583          	ld	a1,-48(s0)
     a70:	fd843503          	ld	a0,-40(s0)
     a74:	00000097          	auipc	ra,0x0
     a78:	dc4080e7          	jalr	-572(ra) # 838 <peek>
     a7c:	87aa                	mv	a5,a0
     a7e:	cf8d                	beqz	a5,ab8 <parsepipe+0x78>
     a80:	4681                	li	a3,0
     a82:	4601                	li	a2,0
     a84:	fd043583          	ld	a1,-48(s0)
     a88:	fd843503          	ld	a0,-40(s0)
     a8c:	00000097          	auipc	ra,0x0
     a90:	bd0080e7          	jalr	-1072(ra) # 65c <gettoken>
     a94:	fd043583          	ld	a1,-48(s0)
     a98:	fd843503          	ld	a0,-40(s0)
     a9c:	00000097          	auipc	ra,0x0
     aa0:	fa4080e7          	jalr	-92(ra) # a40 <parsepipe>
     aa4:	87aa                	mv	a5,a0
     aa6:	85be                	mv	a1,a5
     aa8:	fe843503          	ld	a0,-24(s0)
     aac:	00000097          	auipc	ra,0x0
     ab0:	ab6080e7          	jalr	-1354(ra) # 562 <pipecmd>
     ab4:	fea43423          	sd	a0,-24(s0)
     ab8:	fe843783          	ld	a5,-24(s0)
     abc:	853e                	mv	a0,a5
     abe:	70a2                	ld	ra,40(sp)
     ac0:	7402                	ld	s0,32(sp)
     ac2:	6145                	addi	sp,sp,48
     ac4:	8082                	ret

0000000000000ac6 <parseredirs>:
     ac6:	715d                	addi	sp,sp,-80
     ac8:	e486                	sd	ra,72(sp)
     aca:	e0a2                	sd	s0,64(sp)
     acc:	0880                	addi	s0,sp,80
     ace:	fca43423          	sd	a0,-56(s0)
     ad2:	fcb43023          	sd	a1,-64(s0)
     ad6:	fac43c23          	sd	a2,-72(s0)
     ada:	a8e5                	j	bd2 <parseredirs+0x10c>
     adc:	4681                	li	a3,0
     ade:	4601                	li	a2,0
     ae0:	fb843583          	ld	a1,-72(s0)
     ae4:	fc043503          	ld	a0,-64(s0)
     ae8:	00000097          	auipc	ra,0x0
     aec:	b74080e7          	jalr	-1164(ra) # 65c <gettoken>
     af0:	87aa                	mv	a5,a0
     af2:	fef42623          	sw	a5,-20(s0)
     af6:	fd840713          	addi	a4,s0,-40
     afa:	fe040793          	addi	a5,s0,-32
     afe:	86ba                	mv	a3,a4
     b00:	863e                	mv	a2,a5
     b02:	fb843583          	ld	a1,-72(s0)
     b06:	fc043503          	ld	a0,-64(s0)
     b0a:	00000097          	auipc	ra,0x0
     b0e:	b52080e7          	jalr	-1198(ra) # 65c <gettoken>
     b12:	87aa                	mv	a5,a0
     b14:	873e                	mv	a4,a5
     b16:	06100793          	li	a5,97
     b1a:	00f70a63          	beq	a4,a5,b2e <parseredirs+0x68>
     b1e:	00001517          	auipc	a0,0x1
     b22:	25250513          	addi	a0,a0,594 # 1d70 <longjmp_1+0xb4>
     b26:	00000097          	auipc	ra,0x0
     b2a:	904080e7          	jalr	-1788(ra) # 42a <panic>
     b2e:	fec42783          	lw	a5,-20(s0)
     b32:	0007871b          	sext.w	a4,a5
     b36:	03e00793          	li	a5,62
     b3a:	04f70a63          	beq	a4,a5,b8e <parseredirs+0xc8>
     b3e:	fec42783          	lw	a5,-20(s0)
     b42:	0007871b          	sext.w	a4,a5
     b46:	03e00793          	li	a5,62
     b4a:	08e7c463          	blt	a5,a4,bd2 <parseredirs+0x10c>
     b4e:	fec42783          	lw	a5,-20(s0)
     b52:	0007871b          	sext.w	a4,a5
     b56:	02b00793          	li	a5,43
     b5a:	04f70b63          	beq	a4,a5,bb0 <parseredirs+0xea>
     b5e:	fec42783          	lw	a5,-20(s0)
     b62:	0007871b          	sext.w	a4,a5
     b66:	03c00793          	li	a5,60
     b6a:	06f71463          	bne	a4,a5,bd2 <parseredirs+0x10c>
     b6e:	fe043783          	ld	a5,-32(s0)
     b72:	fd843603          	ld	a2,-40(s0)
     b76:	4701                	li	a4,0
     b78:	4681                	li	a3,0
     b7a:	85be                	mv	a1,a5
     b7c:	fc843503          	ld	a0,-56(s0)
     b80:	00000097          	auipc	ra,0x0
     b84:	958080e7          	jalr	-1704(ra) # 4d8 <redircmd>
     b88:	fca43423          	sd	a0,-56(s0)
     b8c:	a099                	j	bd2 <parseredirs+0x10c>
     b8e:	fe043783          	ld	a5,-32(s0)
     b92:	fd843603          	ld	a2,-40(s0)
     b96:	4705                	li	a4,1
     b98:	60100693          	li	a3,1537
     b9c:	85be                	mv	a1,a5
     b9e:	fc843503          	ld	a0,-56(s0)
     ba2:	00000097          	auipc	ra,0x0
     ba6:	936080e7          	jalr	-1738(ra) # 4d8 <redircmd>
     baa:	fca43423          	sd	a0,-56(s0)
     bae:	a015                	j	bd2 <parseredirs+0x10c>
     bb0:	fe043783          	ld	a5,-32(s0)
     bb4:	fd843603          	ld	a2,-40(s0)
     bb8:	4705                	li	a4,1
     bba:	20100693          	li	a3,513
     bbe:	85be                	mv	a1,a5
     bc0:	fc843503          	ld	a0,-56(s0)
     bc4:	00000097          	auipc	ra,0x0
     bc8:	914080e7          	jalr	-1772(ra) # 4d8 <redircmd>
     bcc:	fca43423          	sd	a0,-56(s0)
     bd0:	0001                	nop
     bd2:	00001617          	auipc	a2,0x1
     bd6:	1be60613          	addi	a2,a2,446 # 1d90 <longjmp_1+0xd4>
     bda:	fb843583          	ld	a1,-72(s0)
     bde:	fc043503          	ld	a0,-64(s0)
     be2:	00000097          	auipc	ra,0x0
     be6:	c56080e7          	jalr	-938(ra) # 838 <peek>
     bea:	87aa                	mv	a5,a0
     bec:	ee0798e3          	bnez	a5,adc <parseredirs+0x16>
     bf0:	fc843783          	ld	a5,-56(s0)
     bf4:	853e                	mv	a0,a5
     bf6:	60a6                	ld	ra,72(sp)
     bf8:	6406                	ld	s0,64(sp)
     bfa:	6161                	addi	sp,sp,80
     bfc:	8082                	ret

0000000000000bfe <parseblock>:
     bfe:	7179                	addi	sp,sp,-48
     c00:	f406                	sd	ra,40(sp)
     c02:	f022                	sd	s0,32(sp)
     c04:	1800                	addi	s0,sp,48
     c06:	fca43c23          	sd	a0,-40(s0)
     c0a:	fcb43823          	sd	a1,-48(s0)
     c0e:	00001617          	auipc	a2,0x1
     c12:	18a60613          	addi	a2,a2,394 # 1d98 <longjmp_1+0xdc>
     c16:	fd043583          	ld	a1,-48(s0)
     c1a:	fd843503          	ld	a0,-40(s0)
     c1e:	00000097          	auipc	ra,0x0
     c22:	c1a080e7          	jalr	-998(ra) # 838 <peek>
     c26:	87aa                	mv	a5,a0
     c28:	eb89                	bnez	a5,c3a <parseblock+0x3c>
     c2a:	00001517          	auipc	a0,0x1
     c2e:	17650513          	addi	a0,a0,374 # 1da0 <longjmp_1+0xe4>
     c32:	fffff097          	auipc	ra,0xfffff
     c36:	7f8080e7          	jalr	2040(ra) # 42a <panic>
     c3a:	4681                	li	a3,0
     c3c:	4601                	li	a2,0
     c3e:	fd043583          	ld	a1,-48(s0)
     c42:	fd843503          	ld	a0,-40(s0)
     c46:	00000097          	auipc	ra,0x0
     c4a:	a16080e7          	jalr	-1514(ra) # 65c <gettoken>
     c4e:	fd043583          	ld	a1,-48(s0)
     c52:	fd843503          	ld	a0,-40(s0)
     c56:	00000097          	auipc	ra,0x0
     c5a:	d22080e7          	jalr	-734(ra) # 978 <parseline>
     c5e:	fea43423          	sd	a0,-24(s0)
     c62:	00001617          	auipc	a2,0x1
     c66:	14e60613          	addi	a2,a2,334 # 1db0 <longjmp_1+0xf4>
     c6a:	fd043583          	ld	a1,-48(s0)
     c6e:	fd843503          	ld	a0,-40(s0)
     c72:	00000097          	auipc	ra,0x0
     c76:	bc6080e7          	jalr	-1082(ra) # 838 <peek>
     c7a:	87aa                	mv	a5,a0
     c7c:	eb89                	bnez	a5,c8e <parseblock+0x90>
     c7e:	00001517          	auipc	a0,0x1
     c82:	13a50513          	addi	a0,a0,314 # 1db8 <longjmp_1+0xfc>
     c86:	fffff097          	auipc	ra,0xfffff
     c8a:	7a4080e7          	jalr	1956(ra) # 42a <panic>
     c8e:	4681                	li	a3,0
     c90:	4601                	li	a2,0
     c92:	fd043583          	ld	a1,-48(s0)
     c96:	fd843503          	ld	a0,-40(s0)
     c9a:	00000097          	auipc	ra,0x0
     c9e:	9c2080e7          	jalr	-1598(ra) # 65c <gettoken>
     ca2:	fd043603          	ld	a2,-48(s0)
     ca6:	fd843583          	ld	a1,-40(s0)
     caa:	fe843503          	ld	a0,-24(s0)
     cae:	00000097          	auipc	ra,0x0
     cb2:	e18080e7          	jalr	-488(ra) # ac6 <parseredirs>
     cb6:	fea43423          	sd	a0,-24(s0)
     cba:	fe843783          	ld	a5,-24(s0)
     cbe:	853e                	mv	a0,a5
     cc0:	70a2                	ld	ra,40(sp)
     cc2:	7402                	ld	s0,32(sp)
     cc4:	6145                	addi	sp,sp,48
     cc6:	8082                	ret

0000000000000cc8 <parseexec>:
     cc8:	715d                	addi	sp,sp,-80
     cca:	e486                	sd	ra,72(sp)
     ccc:	e0a2                	sd	s0,64(sp)
     cce:	0880                	addi	s0,sp,80
     cd0:	faa43c23          	sd	a0,-72(s0)
     cd4:	fab43823          	sd	a1,-80(s0)
     cd8:	00001617          	auipc	a2,0x1
     cdc:	0c060613          	addi	a2,a2,192 # 1d98 <longjmp_1+0xdc>
     ce0:	fb043583          	ld	a1,-80(s0)
     ce4:	fb843503          	ld	a0,-72(s0)
     ce8:	00000097          	auipc	ra,0x0
     cec:	b50080e7          	jalr	-1200(ra) # 838 <peek>
     cf0:	87aa                	mv	a5,a0
     cf2:	cb99                	beqz	a5,d08 <parseexec+0x40>
     cf4:	fb043583          	ld	a1,-80(s0)
     cf8:	fb843503          	ld	a0,-72(s0)
     cfc:	00000097          	auipc	ra,0x0
     d00:	f02080e7          	jalr	-254(ra) # bfe <parseblock>
     d04:	87aa                	mv	a5,a0
     d06:	a22d                	j	e30 <parseexec+0x168>
     d08:	fffff097          	auipc	ra,0xfffff
     d0c:	790080e7          	jalr	1936(ra) # 498 <execcmd>
     d10:	fea43023          	sd	a0,-32(s0)
     d14:	fe043783          	ld	a5,-32(s0)
     d18:	fcf43c23          	sd	a5,-40(s0)
     d1c:	fe042623          	sw	zero,-20(s0)
     d20:	fb043603          	ld	a2,-80(s0)
     d24:	fb843583          	ld	a1,-72(s0)
     d28:	fe043503          	ld	a0,-32(s0)
     d2c:	00000097          	auipc	ra,0x0
     d30:	d9a080e7          	jalr	-614(ra) # ac6 <parseredirs>
     d34:	fea43023          	sd	a0,-32(s0)
     d38:	a84d                	j	dea <parseexec+0x122>
     d3a:	fc040713          	addi	a4,s0,-64
     d3e:	fc840793          	addi	a5,s0,-56
     d42:	86ba                	mv	a3,a4
     d44:	863e                	mv	a2,a5
     d46:	fb043583          	ld	a1,-80(s0)
     d4a:	fb843503          	ld	a0,-72(s0)
     d4e:	00000097          	auipc	ra,0x0
     d52:	90e080e7          	jalr	-1778(ra) # 65c <gettoken>
     d56:	87aa                	mv	a5,a0
     d58:	fcf42a23          	sw	a5,-44(s0)
     d5c:	fd442783          	lw	a5,-44(s0)
     d60:	2781                	sext.w	a5,a5
     d62:	c3dd                	beqz	a5,e08 <parseexec+0x140>
     d64:	fd442783          	lw	a5,-44(s0)
     d68:	0007871b          	sext.w	a4,a5
     d6c:	06100793          	li	a5,97
     d70:	00f70a63          	beq	a4,a5,d84 <parseexec+0xbc>
     d74:	00001517          	auipc	a0,0x1
     d78:	fdc50513          	addi	a0,a0,-36 # 1d50 <longjmp_1+0x94>
     d7c:	fffff097          	auipc	ra,0xfffff
     d80:	6ae080e7          	jalr	1710(ra) # 42a <panic>
     d84:	fc843703          	ld	a4,-56(s0)
     d88:	fd843683          	ld	a3,-40(s0)
     d8c:	fec42783          	lw	a5,-20(s0)
     d90:	078e                	slli	a5,a5,0x3
     d92:	97b6                	add	a5,a5,a3
     d94:	e798                	sd	a4,8(a5)
     d96:	fc043703          	ld	a4,-64(s0)
     d9a:	fd843683          	ld	a3,-40(s0)
     d9e:	fec42783          	lw	a5,-20(s0)
     da2:	07a9                	addi	a5,a5,10
     da4:	078e                	slli	a5,a5,0x3
     da6:	97b6                	add	a5,a5,a3
     da8:	e798                	sd	a4,8(a5)
     daa:	fec42783          	lw	a5,-20(s0)
     dae:	2785                	addiw	a5,a5,1
     db0:	fef42623          	sw	a5,-20(s0)
     db4:	fec42783          	lw	a5,-20(s0)
     db8:	0007871b          	sext.w	a4,a5
     dbc:	47a5                	li	a5,9
     dbe:	00e7da63          	bge	a5,a4,dd2 <parseexec+0x10a>
     dc2:	00001517          	auipc	a0,0x1
     dc6:	00e50513          	addi	a0,a0,14 # 1dd0 <longjmp_1+0x114>
     dca:	fffff097          	auipc	ra,0xfffff
     dce:	660080e7          	jalr	1632(ra) # 42a <panic>
     dd2:	fb043603          	ld	a2,-80(s0)
     dd6:	fb843583          	ld	a1,-72(s0)
     dda:	fe043503          	ld	a0,-32(s0)
     dde:	00000097          	auipc	ra,0x0
     de2:	ce8080e7          	jalr	-792(ra) # ac6 <parseredirs>
     de6:	fea43023          	sd	a0,-32(s0)
     dea:	00001617          	auipc	a2,0x1
     dee:	ff660613          	addi	a2,a2,-10 # 1de0 <longjmp_1+0x124>
     df2:	fb043583          	ld	a1,-80(s0)
     df6:	fb843503          	ld	a0,-72(s0)
     dfa:	00000097          	auipc	ra,0x0
     dfe:	a3e080e7          	jalr	-1474(ra) # 838 <peek>
     e02:	87aa                	mv	a5,a0
     e04:	db9d                	beqz	a5,d3a <parseexec+0x72>
     e06:	a011                	j	e0a <parseexec+0x142>
     e08:	0001                	nop
     e0a:	fd843703          	ld	a4,-40(s0)
     e0e:	fec42783          	lw	a5,-20(s0)
     e12:	078e                	slli	a5,a5,0x3
     e14:	97ba                	add	a5,a5,a4
     e16:	0007b423          	sd	zero,8(a5)
     e1a:	fd843703          	ld	a4,-40(s0)
     e1e:	fec42783          	lw	a5,-20(s0)
     e22:	07a9                	addi	a5,a5,10
     e24:	078e                	slli	a5,a5,0x3
     e26:	97ba                	add	a5,a5,a4
     e28:	0007b423          	sd	zero,8(a5)
     e2c:	fe043783          	ld	a5,-32(s0)
     e30:	853e                	mv	a0,a5
     e32:	60a6                	ld	ra,72(sp)
     e34:	6406                	ld	s0,64(sp)
     e36:	6161                	addi	sp,sp,80
     e38:	8082                	ret

0000000000000e3a <nulterminate>:
     e3a:	715d                	addi	sp,sp,-80
     e3c:	e486                	sd	ra,72(sp)
     e3e:	e0a2                	sd	s0,64(sp)
     e40:	0880                	addi	s0,sp,80
     e42:	faa43c23          	sd	a0,-72(s0)
     e46:	fb843783          	ld	a5,-72(s0)
     e4a:	e399                	bnez	a5,e50 <nulterminate+0x16>
     e4c:	4781                	li	a5,0
     e4e:	a211                	j	f52 <nulterminate+0x118>
     e50:	fb843783          	ld	a5,-72(s0)
     e54:	439c                	lw	a5,0(a5)
     e56:	86be                	mv	a3,a5
     e58:	4715                	li	a4,5
     e5a:	0ed76a63          	bltu	a4,a3,f4e <nulterminate+0x114>
     e5e:	00279713          	slli	a4,a5,0x2
     e62:	00001797          	auipc	a5,0x1
     e66:	f8678793          	addi	a5,a5,-122 # 1de8 <longjmp_1+0x12c>
     e6a:	97ba                	add	a5,a5,a4
     e6c:	439c                	lw	a5,0(a5)
     e6e:	0007871b          	sext.w	a4,a5
     e72:	00001797          	auipc	a5,0x1
     e76:	f7678793          	addi	a5,a5,-138 # 1de8 <longjmp_1+0x12c>
     e7a:	97ba                	add	a5,a5,a4
     e7c:	8782                	jr	a5
     e7e:	fb843783          	ld	a5,-72(s0)
     e82:	fcf43023          	sd	a5,-64(s0)
     e86:	fe042623          	sw	zero,-20(s0)
     e8a:	a005                	j	eaa <nulterminate+0x70>
     e8c:	fc043703          	ld	a4,-64(s0)
     e90:	fec42783          	lw	a5,-20(s0)
     e94:	07a9                	addi	a5,a5,10
     e96:	078e                	slli	a5,a5,0x3
     e98:	97ba                	add	a5,a5,a4
     e9a:	679c                	ld	a5,8(a5)
     e9c:	00078023          	sb	zero,0(a5)
     ea0:	fec42783          	lw	a5,-20(s0)
     ea4:	2785                	addiw	a5,a5,1
     ea6:	fef42623          	sw	a5,-20(s0)
     eaa:	fc043703          	ld	a4,-64(s0)
     eae:	fec42783          	lw	a5,-20(s0)
     eb2:	078e                	slli	a5,a5,0x3
     eb4:	97ba                	add	a5,a5,a4
     eb6:	679c                	ld	a5,8(a5)
     eb8:	fbf1                	bnez	a5,e8c <nulterminate+0x52>
     eba:	a851                	j	f4e <nulterminate+0x114>
     ebc:	fb843783          	ld	a5,-72(s0)
     ec0:	fcf43423          	sd	a5,-56(s0)
     ec4:	fc843783          	ld	a5,-56(s0)
     ec8:	679c                	ld	a5,8(a5)
     eca:	853e                	mv	a0,a5
     ecc:	00000097          	auipc	ra,0x0
     ed0:	f6e080e7          	jalr	-146(ra) # e3a <nulterminate>
     ed4:	fc843783          	ld	a5,-56(s0)
     ed8:	6f9c                	ld	a5,24(a5)
     eda:	00078023          	sb	zero,0(a5)
     ede:	a885                	j	f4e <nulterminate+0x114>
     ee0:	fb843783          	ld	a5,-72(s0)
     ee4:	fcf43823          	sd	a5,-48(s0)
     ee8:	fd043783          	ld	a5,-48(s0)
     eec:	679c                	ld	a5,8(a5)
     eee:	853e                	mv	a0,a5
     ef0:	00000097          	auipc	ra,0x0
     ef4:	f4a080e7          	jalr	-182(ra) # e3a <nulterminate>
     ef8:	fd043783          	ld	a5,-48(s0)
     efc:	6b9c                	ld	a5,16(a5)
     efe:	853e                	mv	a0,a5
     f00:	00000097          	auipc	ra,0x0
     f04:	f3a080e7          	jalr	-198(ra) # e3a <nulterminate>
     f08:	a099                	j	f4e <nulterminate+0x114>
     f0a:	fb843783          	ld	a5,-72(s0)
     f0e:	fcf43c23          	sd	a5,-40(s0)
     f12:	fd843783          	ld	a5,-40(s0)
     f16:	679c                	ld	a5,8(a5)
     f18:	853e                	mv	a0,a5
     f1a:	00000097          	auipc	ra,0x0
     f1e:	f20080e7          	jalr	-224(ra) # e3a <nulterminate>
     f22:	fd843783          	ld	a5,-40(s0)
     f26:	6b9c                	ld	a5,16(a5)
     f28:	853e                	mv	a0,a5
     f2a:	00000097          	auipc	ra,0x0
     f2e:	f10080e7          	jalr	-240(ra) # e3a <nulterminate>
     f32:	a831                	j	f4e <nulterminate+0x114>
     f34:	fb843783          	ld	a5,-72(s0)
     f38:	fef43023          	sd	a5,-32(s0)
     f3c:	fe043783          	ld	a5,-32(s0)
     f40:	679c                	ld	a5,8(a5)
     f42:	853e                	mv	a0,a5
     f44:	00000097          	auipc	ra,0x0
     f48:	ef6080e7          	jalr	-266(ra) # e3a <nulterminate>
     f4c:	0001                	nop
     f4e:	fb843783          	ld	a5,-72(s0)
     f52:	853e                	mv	a0,a5
     f54:	60a6                	ld	ra,72(sp)
     f56:	6406                	ld	s0,64(sp)
     f58:	6161                	addi	sp,sp,80
     f5a:	8082                	ret

0000000000000f5c <strcpy>:
     f5c:	7179                	addi	sp,sp,-48
     f5e:	f422                	sd	s0,40(sp)
     f60:	1800                	addi	s0,sp,48
     f62:	fca43c23          	sd	a0,-40(s0)
     f66:	fcb43823          	sd	a1,-48(s0)
     f6a:	fd843783          	ld	a5,-40(s0)
     f6e:	fef43423          	sd	a5,-24(s0)
     f72:	0001                	nop
     f74:	fd043703          	ld	a4,-48(s0)
     f78:	00170793          	addi	a5,a4,1
     f7c:	fcf43823          	sd	a5,-48(s0)
     f80:	fd843783          	ld	a5,-40(s0)
     f84:	00178693          	addi	a3,a5,1
     f88:	fcd43c23          	sd	a3,-40(s0)
     f8c:	00074703          	lbu	a4,0(a4)
     f90:	00e78023          	sb	a4,0(a5)
     f94:	0007c783          	lbu	a5,0(a5)
     f98:	fff1                	bnez	a5,f74 <strcpy+0x18>
     f9a:	fe843783          	ld	a5,-24(s0)
     f9e:	853e                	mv	a0,a5
     fa0:	7422                	ld	s0,40(sp)
     fa2:	6145                	addi	sp,sp,48
     fa4:	8082                	ret

0000000000000fa6 <strcmp>:
     fa6:	1101                	addi	sp,sp,-32
     fa8:	ec22                	sd	s0,24(sp)
     faa:	1000                	addi	s0,sp,32
     fac:	fea43423          	sd	a0,-24(s0)
     fb0:	feb43023          	sd	a1,-32(s0)
     fb4:	a819                	j	fca <strcmp+0x24>
     fb6:	fe843783          	ld	a5,-24(s0)
     fba:	0785                	addi	a5,a5,1
     fbc:	fef43423          	sd	a5,-24(s0)
     fc0:	fe043783          	ld	a5,-32(s0)
     fc4:	0785                	addi	a5,a5,1
     fc6:	fef43023          	sd	a5,-32(s0)
     fca:	fe843783          	ld	a5,-24(s0)
     fce:	0007c783          	lbu	a5,0(a5)
     fd2:	cb99                	beqz	a5,fe8 <strcmp+0x42>
     fd4:	fe843783          	ld	a5,-24(s0)
     fd8:	0007c703          	lbu	a4,0(a5)
     fdc:	fe043783          	ld	a5,-32(s0)
     fe0:	0007c783          	lbu	a5,0(a5)
     fe4:	fcf709e3          	beq	a4,a5,fb6 <strcmp+0x10>
     fe8:	fe843783          	ld	a5,-24(s0)
     fec:	0007c783          	lbu	a5,0(a5)
     ff0:	0007871b          	sext.w	a4,a5
     ff4:	fe043783          	ld	a5,-32(s0)
     ff8:	0007c783          	lbu	a5,0(a5)
     ffc:	2781                	sext.w	a5,a5
     ffe:	40f707bb          	subw	a5,a4,a5
    1002:	2781                	sext.w	a5,a5
    1004:	853e                	mv	a0,a5
    1006:	6462                	ld	s0,24(sp)
    1008:	6105                	addi	sp,sp,32
    100a:	8082                	ret

000000000000100c <strlen>:
    100c:	7179                	addi	sp,sp,-48
    100e:	f422                	sd	s0,40(sp)
    1010:	1800                	addi	s0,sp,48
    1012:	fca43c23          	sd	a0,-40(s0)
    1016:	fe042623          	sw	zero,-20(s0)
    101a:	a031                	j	1026 <strlen+0x1a>
    101c:	fec42783          	lw	a5,-20(s0)
    1020:	2785                	addiw	a5,a5,1
    1022:	fef42623          	sw	a5,-20(s0)
    1026:	fec42783          	lw	a5,-20(s0)
    102a:	fd843703          	ld	a4,-40(s0)
    102e:	97ba                	add	a5,a5,a4
    1030:	0007c783          	lbu	a5,0(a5)
    1034:	f7e5                	bnez	a5,101c <strlen+0x10>
    1036:	fec42783          	lw	a5,-20(s0)
    103a:	853e                	mv	a0,a5
    103c:	7422                	ld	s0,40(sp)
    103e:	6145                	addi	sp,sp,48
    1040:	8082                	ret

0000000000001042 <memset>:
    1042:	7179                	addi	sp,sp,-48
    1044:	f422                	sd	s0,40(sp)
    1046:	1800                	addi	s0,sp,48
    1048:	fca43c23          	sd	a0,-40(s0)
    104c:	87ae                	mv	a5,a1
    104e:	8732                	mv	a4,a2
    1050:	fcf42a23          	sw	a5,-44(s0)
    1054:	87ba                	mv	a5,a4
    1056:	fcf42823          	sw	a5,-48(s0)
    105a:	fd843783          	ld	a5,-40(s0)
    105e:	fef43023          	sd	a5,-32(s0)
    1062:	fe042623          	sw	zero,-20(s0)
    1066:	a00d                	j	1088 <memset+0x46>
    1068:	fec42783          	lw	a5,-20(s0)
    106c:	fe043703          	ld	a4,-32(s0)
    1070:	97ba                	add	a5,a5,a4
    1072:	fd442703          	lw	a4,-44(s0)
    1076:	0ff77713          	andi	a4,a4,255
    107a:	00e78023          	sb	a4,0(a5)
    107e:	fec42783          	lw	a5,-20(s0)
    1082:	2785                	addiw	a5,a5,1
    1084:	fef42623          	sw	a5,-20(s0)
    1088:	fec42703          	lw	a4,-20(s0)
    108c:	fd042783          	lw	a5,-48(s0)
    1090:	2781                	sext.w	a5,a5
    1092:	fcf76be3          	bltu	a4,a5,1068 <memset+0x26>
    1096:	fd843783          	ld	a5,-40(s0)
    109a:	853e                	mv	a0,a5
    109c:	7422                	ld	s0,40(sp)
    109e:	6145                	addi	sp,sp,48
    10a0:	8082                	ret

00000000000010a2 <strchr>:
    10a2:	1101                	addi	sp,sp,-32
    10a4:	ec22                	sd	s0,24(sp)
    10a6:	1000                	addi	s0,sp,32
    10a8:	fea43423          	sd	a0,-24(s0)
    10ac:	87ae                	mv	a5,a1
    10ae:	fef403a3          	sb	a5,-25(s0)
    10b2:	a01d                	j	10d8 <strchr+0x36>
    10b4:	fe843783          	ld	a5,-24(s0)
    10b8:	0007c703          	lbu	a4,0(a5)
    10bc:	fe744783          	lbu	a5,-25(s0)
    10c0:	0ff7f793          	andi	a5,a5,255
    10c4:	00e79563          	bne	a5,a4,10ce <strchr+0x2c>
    10c8:	fe843783          	ld	a5,-24(s0)
    10cc:	a821                	j	10e4 <strchr+0x42>
    10ce:	fe843783          	ld	a5,-24(s0)
    10d2:	0785                	addi	a5,a5,1
    10d4:	fef43423          	sd	a5,-24(s0)
    10d8:	fe843783          	ld	a5,-24(s0)
    10dc:	0007c783          	lbu	a5,0(a5)
    10e0:	fbf1                	bnez	a5,10b4 <strchr+0x12>
    10e2:	4781                	li	a5,0
    10e4:	853e                	mv	a0,a5
    10e6:	6462                	ld	s0,24(sp)
    10e8:	6105                	addi	sp,sp,32
    10ea:	8082                	ret

00000000000010ec <gets>:
    10ec:	7179                	addi	sp,sp,-48
    10ee:	f406                	sd	ra,40(sp)
    10f0:	f022                	sd	s0,32(sp)
    10f2:	1800                	addi	s0,sp,48
    10f4:	fca43c23          	sd	a0,-40(s0)
    10f8:	87ae                	mv	a5,a1
    10fa:	fcf42a23          	sw	a5,-44(s0)
    10fe:	fe042623          	sw	zero,-20(s0)
    1102:	a8a1                	j	115a <gets+0x6e>
    1104:	fe740793          	addi	a5,s0,-25
    1108:	4605                	li	a2,1
    110a:	85be                	mv	a1,a5
    110c:	4501                	li	a0,0
    110e:	00000097          	auipc	ra,0x0
    1112:	2f6080e7          	jalr	758(ra) # 1404 <read>
    1116:	87aa                	mv	a5,a0
    1118:	fef42423          	sw	a5,-24(s0)
    111c:	fe842783          	lw	a5,-24(s0)
    1120:	2781                	sext.w	a5,a5
    1122:	04f05763          	blez	a5,1170 <gets+0x84>
    1126:	fec42783          	lw	a5,-20(s0)
    112a:	0017871b          	addiw	a4,a5,1
    112e:	fee42623          	sw	a4,-20(s0)
    1132:	873e                	mv	a4,a5
    1134:	fd843783          	ld	a5,-40(s0)
    1138:	97ba                	add	a5,a5,a4
    113a:	fe744703          	lbu	a4,-25(s0)
    113e:	00e78023          	sb	a4,0(a5)
    1142:	fe744783          	lbu	a5,-25(s0)
    1146:	873e                	mv	a4,a5
    1148:	47a9                	li	a5,10
    114a:	02f70463          	beq	a4,a5,1172 <gets+0x86>
    114e:	fe744783          	lbu	a5,-25(s0)
    1152:	873e                	mv	a4,a5
    1154:	47b5                	li	a5,13
    1156:	00f70e63          	beq	a4,a5,1172 <gets+0x86>
    115a:	fec42783          	lw	a5,-20(s0)
    115e:	2785                	addiw	a5,a5,1
    1160:	0007871b          	sext.w	a4,a5
    1164:	fd442783          	lw	a5,-44(s0)
    1168:	2781                	sext.w	a5,a5
    116a:	f8f74de3          	blt	a4,a5,1104 <gets+0x18>
    116e:	a011                	j	1172 <gets+0x86>
    1170:	0001                	nop
    1172:	fec42783          	lw	a5,-20(s0)
    1176:	fd843703          	ld	a4,-40(s0)
    117a:	97ba                	add	a5,a5,a4
    117c:	00078023          	sb	zero,0(a5)
    1180:	fd843783          	ld	a5,-40(s0)
    1184:	853e                	mv	a0,a5
    1186:	70a2                	ld	ra,40(sp)
    1188:	7402                	ld	s0,32(sp)
    118a:	6145                	addi	sp,sp,48
    118c:	8082                	ret

000000000000118e <stat>:
    118e:	7179                	addi	sp,sp,-48
    1190:	f406                	sd	ra,40(sp)
    1192:	f022                	sd	s0,32(sp)
    1194:	1800                	addi	s0,sp,48
    1196:	fca43c23          	sd	a0,-40(s0)
    119a:	fcb43823          	sd	a1,-48(s0)
    119e:	4581                	li	a1,0
    11a0:	fd843503          	ld	a0,-40(s0)
    11a4:	00000097          	auipc	ra,0x0
    11a8:	288080e7          	jalr	648(ra) # 142c <open>
    11ac:	87aa                	mv	a5,a0
    11ae:	fef42623          	sw	a5,-20(s0)
    11b2:	fec42783          	lw	a5,-20(s0)
    11b6:	2781                	sext.w	a5,a5
    11b8:	0007d463          	bgez	a5,11c0 <stat+0x32>
    11bc:	57fd                	li	a5,-1
    11be:	a035                	j	11ea <stat+0x5c>
    11c0:	fec42783          	lw	a5,-20(s0)
    11c4:	fd043583          	ld	a1,-48(s0)
    11c8:	853e                	mv	a0,a5
    11ca:	00000097          	auipc	ra,0x0
    11ce:	27a080e7          	jalr	634(ra) # 1444 <fstat>
    11d2:	87aa                	mv	a5,a0
    11d4:	fef42423          	sw	a5,-24(s0)
    11d8:	fec42783          	lw	a5,-20(s0)
    11dc:	853e                	mv	a0,a5
    11de:	00000097          	auipc	ra,0x0
    11e2:	236080e7          	jalr	566(ra) # 1414 <close>
    11e6:	fe842783          	lw	a5,-24(s0)
    11ea:	853e                	mv	a0,a5
    11ec:	70a2                	ld	ra,40(sp)
    11ee:	7402                	ld	s0,32(sp)
    11f0:	6145                	addi	sp,sp,48
    11f2:	8082                	ret

00000000000011f4 <atoi>:
    11f4:	7179                	addi	sp,sp,-48
    11f6:	f422                	sd	s0,40(sp)
    11f8:	1800                	addi	s0,sp,48
    11fa:	fca43c23          	sd	a0,-40(s0)
    11fe:	fe042623          	sw	zero,-20(s0)
    1202:	a815                	j	1236 <atoi+0x42>
    1204:	fec42703          	lw	a4,-20(s0)
    1208:	87ba                	mv	a5,a4
    120a:	0027979b          	slliw	a5,a5,0x2
    120e:	9fb9                	addw	a5,a5,a4
    1210:	0017979b          	slliw	a5,a5,0x1
    1214:	0007871b          	sext.w	a4,a5
    1218:	fd843783          	ld	a5,-40(s0)
    121c:	00178693          	addi	a3,a5,1
    1220:	fcd43c23          	sd	a3,-40(s0)
    1224:	0007c783          	lbu	a5,0(a5)
    1228:	2781                	sext.w	a5,a5
    122a:	9fb9                	addw	a5,a5,a4
    122c:	2781                	sext.w	a5,a5
    122e:	fd07879b          	addiw	a5,a5,-48
    1232:	fef42623          	sw	a5,-20(s0)
    1236:	fd843783          	ld	a5,-40(s0)
    123a:	0007c783          	lbu	a5,0(a5)
    123e:	873e                	mv	a4,a5
    1240:	02f00793          	li	a5,47
    1244:	00e7fb63          	bgeu	a5,a4,125a <atoi+0x66>
    1248:	fd843783          	ld	a5,-40(s0)
    124c:	0007c783          	lbu	a5,0(a5)
    1250:	873e                	mv	a4,a5
    1252:	03900793          	li	a5,57
    1256:	fae7f7e3          	bgeu	a5,a4,1204 <atoi+0x10>
    125a:	fec42783          	lw	a5,-20(s0)
    125e:	853e                	mv	a0,a5
    1260:	7422                	ld	s0,40(sp)
    1262:	6145                	addi	sp,sp,48
    1264:	8082                	ret

0000000000001266 <memmove>:
    1266:	7139                	addi	sp,sp,-64
    1268:	fc22                	sd	s0,56(sp)
    126a:	0080                	addi	s0,sp,64
    126c:	fca43c23          	sd	a0,-40(s0)
    1270:	fcb43823          	sd	a1,-48(s0)
    1274:	87b2                	mv	a5,a2
    1276:	fcf42623          	sw	a5,-52(s0)
    127a:	fd843783          	ld	a5,-40(s0)
    127e:	fef43423          	sd	a5,-24(s0)
    1282:	fd043783          	ld	a5,-48(s0)
    1286:	fef43023          	sd	a5,-32(s0)
    128a:	fe043703          	ld	a4,-32(s0)
    128e:	fe843783          	ld	a5,-24(s0)
    1292:	02e7fc63          	bgeu	a5,a4,12ca <memmove+0x64>
    1296:	a00d                	j	12b8 <memmove+0x52>
    1298:	fe043703          	ld	a4,-32(s0)
    129c:	00170793          	addi	a5,a4,1
    12a0:	fef43023          	sd	a5,-32(s0)
    12a4:	fe843783          	ld	a5,-24(s0)
    12a8:	00178693          	addi	a3,a5,1
    12ac:	fed43423          	sd	a3,-24(s0)
    12b0:	00074703          	lbu	a4,0(a4)
    12b4:	00e78023          	sb	a4,0(a5)
    12b8:	fcc42783          	lw	a5,-52(s0)
    12bc:	fff7871b          	addiw	a4,a5,-1
    12c0:	fce42623          	sw	a4,-52(s0)
    12c4:	fcf04ae3          	bgtz	a5,1298 <memmove+0x32>
    12c8:	a891                	j	131c <memmove+0xb6>
    12ca:	fcc42783          	lw	a5,-52(s0)
    12ce:	fe843703          	ld	a4,-24(s0)
    12d2:	97ba                	add	a5,a5,a4
    12d4:	fef43423          	sd	a5,-24(s0)
    12d8:	fcc42783          	lw	a5,-52(s0)
    12dc:	fe043703          	ld	a4,-32(s0)
    12e0:	97ba                	add	a5,a5,a4
    12e2:	fef43023          	sd	a5,-32(s0)
    12e6:	a01d                	j	130c <memmove+0xa6>
    12e8:	fe043783          	ld	a5,-32(s0)
    12ec:	17fd                	addi	a5,a5,-1
    12ee:	fef43023          	sd	a5,-32(s0)
    12f2:	fe843783          	ld	a5,-24(s0)
    12f6:	17fd                	addi	a5,a5,-1
    12f8:	fef43423          	sd	a5,-24(s0)
    12fc:	fe043783          	ld	a5,-32(s0)
    1300:	0007c703          	lbu	a4,0(a5)
    1304:	fe843783          	ld	a5,-24(s0)
    1308:	00e78023          	sb	a4,0(a5)
    130c:	fcc42783          	lw	a5,-52(s0)
    1310:	fff7871b          	addiw	a4,a5,-1
    1314:	fce42623          	sw	a4,-52(s0)
    1318:	fcf048e3          	bgtz	a5,12e8 <memmove+0x82>
    131c:	fd843783          	ld	a5,-40(s0)
    1320:	853e                	mv	a0,a5
    1322:	7462                	ld	s0,56(sp)
    1324:	6121                	addi	sp,sp,64
    1326:	8082                	ret

0000000000001328 <memcmp>:
    1328:	7139                	addi	sp,sp,-64
    132a:	fc22                	sd	s0,56(sp)
    132c:	0080                	addi	s0,sp,64
    132e:	fca43c23          	sd	a0,-40(s0)
    1332:	fcb43823          	sd	a1,-48(s0)
    1336:	87b2                	mv	a5,a2
    1338:	fcf42623          	sw	a5,-52(s0)
    133c:	fd843783          	ld	a5,-40(s0)
    1340:	fef43423          	sd	a5,-24(s0)
    1344:	fd043783          	ld	a5,-48(s0)
    1348:	fef43023          	sd	a5,-32(s0)
    134c:	a0a1                	j	1394 <memcmp+0x6c>
    134e:	fe843783          	ld	a5,-24(s0)
    1352:	0007c703          	lbu	a4,0(a5)
    1356:	fe043783          	ld	a5,-32(s0)
    135a:	0007c783          	lbu	a5,0(a5)
    135e:	02f70163          	beq	a4,a5,1380 <memcmp+0x58>
    1362:	fe843783          	ld	a5,-24(s0)
    1366:	0007c783          	lbu	a5,0(a5)
    136a:	0007871b          	sext.w	a4,a5
    136e:	fe043783          	ld	a5,-32(s0)
    1372:	0007c783          	lbu	a5,0(a5)
    1376:	2781                	sext.w	a5,a5
    1378:	40f707bb          	subw	a5,a4,a5
    137c:	2781                	sext.w	a5,a5
    137e:	a01d                	j	13a4 <memcmp+0x7c>
    1380:	fe843783          	ld	a5,-24(s0)
    1384:	0785                	addi	a5,a5,1
    1386:	fef43423          	sd	a5,-24(s0)
    138a:	fe043783          	ld	a5,-32(s0)
    138e:	0785                	addi	a5,a5,1
    1390:	fef43023          	sd	a5,-32(s0)
    1394:	fcc42783          	lw	a5,-52(s0)
    1398:	fff7871b          	addiw	a4,a5,-1
    139c:	fce42623          	sw	a4,-52(s0)
    13a0:	f7dd                	bnez	a5,134e <memcmp+0x26>
    13a2:	4781                	li	a5,0
    13a4:	853e                	mv	a0,a5
    13a6:	7462                	ld	s0,56(sp)
    13a8:	6121                	addi	sp,sp,64
    13aa:	8082                	ret

00000000000013ac <memcpy>:
    13ac:	7179                	addi	sp,sp,-48
    13ae:	f406                	sd	ra,40(sp)
    13b0:	f022                	sd	s0,32(sp)
    13b2:	1800                	addi	s0,sp,48
    13b4:	fea43423          	sd	a0,-24(s0)
    13b8:	feb43023          	sd	a1,-32(s0)
    13bc:	87b2                	mv	a5,a2
    13be:	fcf42e23          	sw	a5,-36(s0)
    13c2:	fdc42783          	lw	a5,-36(s0)
    13c6:	863e                	mv	a2,a5
    13c8:	fe043583          	ld	a1,-32(s0)
    13cc:	fe843503          	ld	a0,-24(s0)
    13d0:	00000097          	auipc	ra,0x0
    13d4:	e96080e7          	jalr	-362(ra) # 1266 <memmove>
    13d8:	87aa                	mv	a5,a0
    13da:	853e                	mv	a0,a5
    13dc:	70a2                	ld	ra,40(sp)
    13de:	7402                	ld	s0,32(sp)
    13e0:	6145                	addi	sp,sp,48
    13e2:	8082                	ret

00000000000013e4 <fork>:
    13e4:	4885                	li	a7,1
    13e6:	00000073          	ecall
    13ea:	8082                	ret

00000000000013ec <exit>:
    13ec:	4889                	li	a7,2
    13ee:	00000073          	ecall
    13f2:	8082                	ret

00000000000013f4 <wait>:
    13f4:	488d                	li	a7,3
    13f6:	00000073          	ecall
    13fa:	8082                	ret

00000000000013fc <pipe>:
    13fc:	4891                	li	a7,4
    13fe:	00000073          	ecall
    1402:	8082                	ret

0000000000001404 <read>:
    1404:	4895                	li	a7,5
    1406:	00000073          	ecall
    140a:	8082                	ret

000000000000140c <write>:
    140c:	48c1                	li	a7,16
    140e:	00000073          	ecall
    1412:	8082                	ret

0000000000001414 <close>:
    1414:	48d5                	li	a7,21
    1416:	00000073          	ecall
    141a:	8082                	ret

000000000000141c <kill>:
    141c:	4899                	li	a7,6
    141e:	00000073          	ecall
    1422:	8082                	ret

0000000000001424 <exec>:
    1424:	489d                	li	a7,7
    1426:	00000073          	ecall
    142a:	8082                	ret

000000000000142c <open>:
    142c:	48bd                	li	a7,15
    142e:	00000073          	ecall
    1432:	8082                	ret

0000000000001434 <mknod>:
    1434:	48c5                	li	a7,17
    1436:	00000073          	ecall
    143a:	8082                	ret

000000000000143c <unlink>:
    143c:	48c9                	li	a7,18
    143e:	00000073          	ecall
    1442:	8082                	ret

0000000000001444 <fstat>:
    1444:	48a1                	li	a7,8
    1446:	00000073          	ecall
    144a:	8082                	ret

000000000000144c <link>:
    144c:	48cd                	li	a7,19
    144e:	00000073          	ecall
    1452:	8082                	ret

0000000000001454 <mkdir>:
    1454:	48d1                	li	a7,20
    1456:	00000073          	ecall
    145a:	8082                	ret

000000000000145c <chdir>:
    145c:	48a5                	li	a7,9
    145e:	00000073          	ecall
    1462:	8082                	ret

0000000000001464 <dup>:
    1464:	48a9                	li	a7,10
    1466:	00000073          	ecall
    146a:	8082                	ret

000000000000146c <getpid>:
    146c:	48ad                	li	a7,11
    146e:	00000073          	ecall
    1472:	8082                	ret

0000000000001474 <sbrk>:
    1474:	48b1                	li	a7,12
    1476:	00000073          	ecall
    147a:	8082                	ret

000000000000147c <sleep>:
    147c:	48b5                	li	a7,13
    147e:	00000073          	ecall
    1482:	8082                	ret

0000000000001484 <uptime>:
    1484:	48b9                	li	a7,14
    1486:	00000073          	ecall
    148a:	8082                	ret

000000000000148c <putc>:
    148c:	1101                	addi	sp,sp,-32
    148e:	ec06                	sd	ra,24(sp)
    1490:	e822                	sd	s0,16(sp)
    1492:	1000                	addi	s0,sp,32
    1494:	87aa                	mv	a5,a0
    1496:	872e                	mv	a4,a1
    1498:	fef42623          	sw	a5,-20(s0)
    149c:	87ba                	mv	a5,a4
    149e:	fef405a3          	sb	a5,-21(s0)
    14a2:	feb40713          	addi	a4,s0,-21
    14a6:	fec42783          	lw	a5,-20(s0)
    14aa:	4605                	li	a2,1
    14ac:	85ba                	mv	a1,a4
    14ae:	853e                	mv	a0,a5
    14b0:	00000097          	auipc	ra,0x0
    14b4:	f5c080e7          	jalr	-164(ra) # 140c <write>
    14b8:	0001                	nop
    14ba:	60e2                	ld	ra,24(sp)
    14bc:	6442                	ld	s0,16(sp)
    14be:	6105                	addi	sp,sp,32
    14c0:	8082                	ret

00000000000014c2 <printint>:
    14c2:	7139                	addi	sp,sp,-64
    14c4:	fc06                	sd	ra,56(sp)
    14c6:	f822                	sd	s0,48(sp)
    14c8:	0080                	addi	s0,sp,64
    14ca:	87aa                	mv	a5,a0
    14cc:	8736                	mv	a4,a3
    14ce:	fcf42623          	sw	a5,-52(s0)
    14d2:	87ae                	mv	a5,a1
    14d4:	fcf42423          	sw	a5,-56(s0)
    14d8:	87b2                	mv	a5,a2
    14da:	fcf42223          	sw	a5,-60(s0)
    14de:	87ba                	mv	a5,a4
    14e0:	fcf42023          	sw	a5,-64(s0)
    14e4:	fe042423          	sw	zero,-24(s0)
    14e8:	fc042783          	lw	a5,-64(s0)
    14ec:	2781                	sext.w	a5,a5
    14ee:	c38d                	beqz	a5,1510 <printint+0x4e>
    14f0:	fc842783          	lw	a5,-56(s0)
    14f4:	2781                	sext.w	a5,a5
    14f6:	0007dd63          	bgez	a5,1510 <printint+0x4e>
    14fa:	4785                	li	a5,1
    14fc:	fef42423          	sw	a5,-24(s0)
    1500:	fc842783          	lw	a5,-56(s0)
    1504:	40f007bb          	negw	a5,a5
    1508:	2781                	sext.w	a5,a5
    150a:	fef42223          	sw	a5,-28(s0)
    150e:	a029                	j	1518 <printint+0x56>
    1510:	fc842783          	lw	a5,-56(s0)
    1514:	fef42223          	sw	a5,-28(s0)
    1518:	fe042623          	sw	zero,-20(s0)
    151c:	fc442783          	lw	a5,-60(s0)
    1520:	fe442703          	lw	a4,-28(s0)
    1524:	02f777bb          	remuw	a5,a4,a5
    1528:	0007861b          	sext.w	a2,a5
    152c:	fec42783          	lw	a5,-20(s0)
    1530:	0017871b          	addiw	a4,a5,1
    1534:	fee42623          	sw	a4,-20(s0)
    1538:	00001697          	auipc	a3,0x1
    153c:	8d068693          	addi	a3,a3,-1840 # 1e08 <digits>
    1540:	02061713          	slli	a4,a2,0x20
    1544:	9301                	srli	a4,a4,0x20
    1546:	9736                	add	a4,a4,a3
    1548:	00074703          	lbu	a4,0(a4)
    154c:	ff040693          	addi	a3,s0,-16
    1550:	97b6                	add	a5,a5,a3
    1552:	fee78023          	sb	a4,-32(a5)
    1556:	fc442783          	lw	a5,-60(s0)
    155a:	fe442703          	lw	a4,-28(s0)
    155e:	02f757bb          	divuw	a5,a4,a5
    1562:	fef42223          	sw	a5,-28(s0)
    1566:	fe442783          	lw	a5,-28(s0)
    156a:	2781                	sext.w	a5,a5
    156c:	fbc5                	bnez	a5,151c <printint+0x5a>
    156e:	fe842783          	lw	a5,-24(s0)
    1572:	2781                	sext.w	a5,a5
    1574:	cf95                	beqz	a5,15b0 <printint+0xee>
    1576:	fec42783          	lw	a5,-20(s0)
    157a:	0017871b          	addiw	a4,a5,1
    157e:	fee42623          	sw	a4,-20(s0)
    1582:	ff040713          	addi	a4,s0,-16
    1586:	97ba                	add	a5,a5,a4
    1588:	02d00713          	li	a4,45
    158c:	fee78023          	sb	a4,-32(a5)
    1590:	a005                	j	15b0 <printint+0xee>
    1592:	fec42783          	lw	a5,-20(s0)
    1596:	ff040713          	addi	a4,s0,-16
    159a:	97ba                	add	a5,a5,a4
    159c:	fe07c703          	lbu	a4,-32(a5)
    15a0:	fcc42783          	lw	a5,-52(s0)
    15a4:	85ba                	mv	a1,a4
    15a6:	853e                	mv	a0,a5
    15a8:	00000097          	auipc	ra,0x0
    15ac:	ee4080e7          	jalr	-284(ra) # 148c <putc>
    15b0:	fec42783          	lw	a5,-20(s0)
    15b4:	37fd                	addiw	a5,a5,-1
    15b6:	fef42623          	sw	a5,-20(s0)
    15ba:	fec42783          	lw	a5,-20(s0)
    15be:	2781                	sext.w	a5,a5
    15c0:	fc07d9e3          	bgez	a5,1592 <printint+0xd0>
    15c4:	0001                	nop
    15c6:	0001                	nop
    15c8:	70e2                	ld	ra,56(sp)
    15ca:	7442                	ld	s0,48(sp)
    15cc:	6121                	addi	sp,sp,64
    15ce:	8082                	ret

00000000000015d0 <printptr>:
    15d0:	7179                	addi	sp,sp,-48
    15d2:	f406                	sd	ra,40(sp)
    15d4:	f022                	sd	s0,32(sp)
    15d6:	1800                	addi	s0,sp,48
    15d8:	87aa                	mv	a5,a0
    15da:	fcb43823          	sd	a1,-48(s0)
    15de:	fcf42e23          	sw	a5,-36(s0)
    15e2:	fdc42783          	lw	a5,-36(s0)
    15e6:	03000593          	li	a1,48
    15ea:	853e                	mv	a0,a5
    15ec:	00000097          	auipc	ra,0x0
    15f0:	ea0080e7          	jalr	-352(ra) # 148c <putc>
    15f4:	fdc42783          	lw	a5,-36(s0)
    15f8:	07800593          	li	a1,120
    15fc:	853e                	mv	a0,a5
    15fe:	00000097          	auipc	ra,0x0
    1602:	e8e080e7          	jalr	-370(ra) # 148c <putc>
    1606:	fe042623          	sw	zero,-20(s0)
    160a:	a82d                	j	1644 <printptr+0x74>
    160c:	fd043783          	ld	a5,-48(s0)
    1610:	93f1                	srli	a5,a5,0x3c
    1612:	00000717          	auipc	a4,0x0
    1616:	7f670713          	addi	a4,a4,2038 # 1e08 <digits>
    161a:	97ba                	add	a5,a5,a4
    161c:	0007c703          	lbu	a4,0(a5)
    1620:	fdc42783          	lw	a5,-36(s0)
    1624:	85ba                	mv	a1,a4
    1626:	853e                	mv	a0,a5
    1628:	00000097          	auipc	ra,0x0
    162c:	e64080e7          	jalr	-412(ra) # 148c <putc>
    1630:	fec42783          	lw	a5,-20(s0)
    1634:	2785                	addiw	a5,a5,1
    1636:	fef42623          	sw	a5,-20(s0)
    163a:	fd043783          	ld	a5,-48(s0)
    163e:	0792                	slli	a5,a5,0x4
    1640:	fcf43823          	sd	a5,-48(s0)
    1644:	fec42783          	lw	a5,-20(s0)
    1648:	873e                	mv	a4,a5
    164a:	47bd                	li	a5,15
    164c:	fce7f0e3          	bgeu	a5,a4,160c <printptr+0x3c>
    1650:	0001                	nop
    1652:	0001                	nop
    1654:	70a2                	ld	ra,40(sp)
    1656:	7402                	ld	s0,32(sp)
    1658:	6145                	addi	sp,sp,48
    165a:	8082                	ret

000000000000165c <vprintf>:
    165c:	715d                	addi	sp,sp,-80
    165e:	e486                	sd	ra,72(sp)
    1660:	e0a2                	sd	s0,64(sp)
    1662:	0880                	addi	s0,sp,80
    1664:	87aa                	mv	a5,a0
    1666:	fcb43023          	sd	a1,-64(s0)
    166a:	fac43c23          	sd	a2,-72(s0)
    166e:	fcf42623          	sw	a5,-52(s0)
    1672:	fe042023          	sw	zero,-32(s0)
    1676:	fe042223          	sw	zero,-28(s0)
    167a:	a42d                	j	18a4 <vprintf+0x248>
    167c:	fe442783          	lw	a5,-28(s0)
    1680:	fc043703          	ld	a4,-64(s0)
    1684:	97ba                	add	a5,a5,a4
    1686:	0007c783          	lbu	a5,0(a5)
    168a:	fcf42e23          	sw	a5,-36(s0)
    168e:	fe042783          	lw	a5,-32(s0)
    1692:	2781                	sext.w	a5,a5
    1694:	eb9d                	bnez	a5,16ca <vprintf+0x6e>
    1696:	fdc42783          	lw	a5,-36(s0)
    169a:	0007871b          	sext.w	a4,a5
    169e:	02500793          	li	a5,37
    16a2:	00f71763          	bne	a4,a5,16b0 <vprintf+0x54>
    16a6:	02500793          	li	a5,37
    16aa:	fef42023          	sw	a5,-32(s0)
    16ae:	a2f5                	j	189a <vprintf+0x23e>
    16b0:	fdc42783          	lw	a5,-36(s0)
    16b4:	0ff7f713          	andi	a4,a5,255
    16b8:	fcc42783          	lw	a5,-52(s0)
    16bc:	85ba                	mv	a1,a4
    16be:	853e                	mv	a0,a5
    16c0:	00000097          	auipc	ra,0x0
    16c4:	dcc080e7          	jalr	-564(ra) # 148c <putc>
    16c8:	aac9                	j	189a <vprintf+0x23e>
    16ca:	fe042783          	lw	a5,-32(s0)
    16ce:	0007871b          	sext.w	a4,a5
    16d2:	02500793          	li	a5,37
    16d6:	1cf71263          	bne	a4,a5,189a <vprintf+0x23e>
    16da:	fdc42783          	lw	a5,-36(s0)
    16de:	0007871b          	sext.w	a4,a5
    16e2:	06400793          	li	a5,100
    16e6:	02f71463          	bne	a4,a5,170e <vprintf+0xb2>
    16ea:	fb843783          	ld	a5,-72(s0)
    16ee:	00878713          	addi	a4,a5,8
    16f2:	fae43c23          	sd	a4,-72(s0)
    16f6:	4398                	lw	a4,0(a5)
    16f8:	fcc42783          	lw	a5,-52(s0)
    16fc:	4685                	li	a3,1
    16fe:	4629                	li	a2,10
    1700:	85ba                	mv	a1,a4
    1702:	853e                	mv	a0,a5
    1704:	00000097          	auipc	ra,0x0
    1708:	dbe080e7          	jalr	-578(ra) # 14c2 <printint>
    170c:	a269                	j	1896 <vprintf+0x23a>
    170e:	fdc42783          	lw	a5,-36(s0)
    1712:	0007871b          	sext.w	a4,a5
    1716:	06c00793          	li	a5,108
    171a:	02f71663          	bne	a4,a5,1746 <vprintf+0xea>
    171e:	fb843783          	ld	a5,-72(s0)
    1722:	00878713          	addi	a4,a5,8
    1726:	fae43c23          	sd	a4,-72(s0)
    172a:	639c                	ld	a5,0(a5)
    172c:	0007871b          	sext.w	a4,a5
    1730:	fcc42783          	lw	a5,-52(s0)
    1734:	4681                	li	a3,0
    1736:	4629                	li	a2,10
    1738:	85ba                	mv	a1,a4
    173a:	853e                	mv	a0,a5
    173c:	00000097          	auipc	ra,0x0
    1740:	d86080e7          	jalr	-634(ra) # 14c2 <printint>
    1744:	aa89                	j	1896 <vprintf+0x23a>
    1746:	fdc42783          	lw	a5,-36(s0)
    174a:	0007871b          	sext.w	a4,a5
    174e:	07800793          	li	a5,120
    1752:	02f71463          	bne	a4,a5,177a <vprintf+0x11e>
    1756:	fb843783          	ld	a5,-72(s0)
    175a:	00878713          	addi	a4,a5,8
    175e:	fae43c23          	sd	a4,-72(s0)
    1762:	4398                	lw	a4,0(a5)
    1764:	fcc42783          	lw	a5,-52(s0)
    1768:	4681                	li	a3,0
    176a:	4641                	li	a2,16
    176c:	85ba                	mv	a1,a4
    176e:	853e                	mv	a0,a5
    1770:	00000097          	auipc	ra,0x0
    1774:	d52080e7          	jalr	-686(ra) # 14c2 <printint>
    1778:	aa39                	j	1896 <vprintf+0x23a>
    177a:	fdc42783          	lw	a5,-36(s0)
    177e:	0007871b          	sext.w	a4,a5
    1782:	07000793          	li	a5,112
    1786:	02f71263          	bne	a4,a5,17aa <vprintf+0x14e>
    178a:	fb843783          	ld	a5,-72(s0)
    178e:	00878713          	addi	a4,a5,8
    1792:	fae43c23          	sd	a4,-72(s0)
    1796:	6398                	ld	a4,0(a5)
    1798:	fcc42783          	lw	a5,-52(s0)
    179c:	85ba                	mv	a1,a4
    179e:	853e                	mv	a0,a5
    17a0:	00000097          	auipc	ra,0x0
    17a4:	e30080e7          	jalr	-464(ra) # 15d0 <printptr>
    17a8:	a0fd                	j	1896 <vprintf+0x23a>
    17aa:	fdc42783          	lw	a5,-36(s0)
    17ae:	0007871b          	sext.w	a4,a5
    17b2:	07300793          	li	a5,115
    17b6:	04f71c63          	bne	a4,a5,180e <vprintf+0x1b2>
    17ba:	fb843783          	ld	a5,-72(s0)
    17be:	00878713          	addi	a4,a5,8
    17c2:	fae43c23          	sd	a4,-72(s0)
    17c6:	639c                	ld	a5,0(a5)
    17c8:	fef43423          	sd	a5,-24(s0)
    17cc:	fe843783          	ld	a5,-24(s0)
    17d0:	eb8d                	bnez	a5,1802 <vprintf+0x1a6>
    17d2:	00000797          	auipc	a5,0x0
    17d6:	62e78793          	addi	a5,a5,1582 # 1e00 <longjmp_1+0x144>
    17da:	fef43423          	sd	a5,-24(s0)
    17de:	a015                	j	1802 <vprintf+0x1a6>
    17e0:	fe843783          	ld	a5,-24(s0)
    17e4:	0007c703          	lbu	a4,0(a5)
    17e8:	fcc42783          	lw	a5,-52(s0)
    17ec:	85ba                	mv	a1,a4
    17ee:	853e                	mv	a0,a5
    17f0:	00000097          	auipc	ra,0x0
    17f4:	c9c080e7          	jalr	-868(ra) # 148c <putc>
    17f8:	fe843783          	ld	a5,-24(s0)
    17fc:	0785                	addi	a5,a5,1
    17fe:	fef43423          	sd	a5,-24(s0)
    1802:	fe843783          	ld	a5,-24(s0)
    1806:	0007c783          	lbu	a5,0(a5)
    180a:	fbf9                	bnez	a5,17e0 <vprintf+0x184>
    180c:	a069                	j	1896 <vprintf+0x23a>
    180e:	fdc42783          	lw	a5,-36(s0)
    1812:	0007871b          	sext.w	a4,a5
    1816:	06300793          	li	a5,99
    181a:	02f71463          	bne	a4,a5,1842 <vprintf+0x1e6>
    181e:	fb843783          	ld	a5,-72(s0)
    1822:	00878713          	addi	a4,a5,8
    1826:	fae43c23          	sd	a4,-72(s0)
    182a:	439c                	lw	a5,0(a5)
    182c:	0ff7f713          	andi	a4,a5,255
    1830:	fcc42783          	lw	a5,-52(s0)
    1834:	85ba                	mv	a1,a4
    1836:	853e                	mv	a0,a5
    1838:	00000097          	auipc	ra,0x0
    183c:	c54080e7          	jalr	-940(ra) # 148c <putc>
    1840:	a899                	j	1896 <vprintf+0x23a>
    1842:	fdc42783          	lw	a5,-36(s0)
    1846:	0007871b          	sext.w	a4,a5
    184a:	02500793          	li	a5,37
    184e:	00f71f63          	bne	a4,a5,186c <vprintf+0x210>
    1852:	fdc42783          	lw	a5,-36(s0)
    1856:	0ff7f713          	andi	a4,a5,255
    185a:	fcc42783          	lw	a5,-52(s0)
    185e:	85ba                	mv	a1,a4
    1860:	853e                	mv	a0,a5
    1862:	00000097          	auipc	ra,0x0
    1866:	c2a080e7          	jalr	-982(ra) # 148c <putc>
    186a:	a035                	j	1896 <vprintf+0x23a>
    186c:	fcc42783          	lw	a5,-52(s0)
    1870:	02500593          	li	a1,37
    1874:	853e                	mv	a0,a5
    1876:	00000097          	auipc	ra,0x0
    187a:	c16080e7          	jalr	-1002(ra) # 148c <putc>
    187e:	fdc42783          	lw	a5,-36(s0)
    1882:	0ff7f713          	andi	a4,a5,255
    1886:	fcc42783          	lw	a5,-52(s0)
    188a:	85ba                	mv	a1,a4
    188c:	853e                	mv	a0,a5
    188e:	00000097          	auipc	ra,0x0
    1892:	bfe080e7          	jalr	-1026(ra) # 148c <putc>
    1896:	fe042023          	sw	zero,-32(s0)
    189a:	fe442783          	lw	a5,-28(s0)
    189e:	2785                	addiw	a5,a5,1
    18a0:	fef42223          	sw	a5,-28(s0)
    18a4:	fe442783          	lw	a5,-28(s0)
    18a8:	fc043703          	ld	a4,-64(s0)
    18ac:	97ba                	add	a5,a5,a4
    18ae:	0007c783          	lbu	a5,0(a5)
    18b2:	dc0795e3          	bnez	a5,167c <vprintf+0x20>
    18b6:	0001                	nop
    18b8:	0001                	nop
    18ba:	60a6                	ld	ra,72(sp)
    18bc:	6406                	ld	s0,64(sp)
    18be:	6161                	addi	sp,sp,80
    18c0:	8082                	ret

00000000000018c2 <fprintf>:
    18c2:	7159                	addi	sp,sp,-112
    18c4:	fc06                	sd	ra,56(sp)
    18c6:	f822                	sd	s0,48(sp)
    18c8:	0080                	addi	s0,sp,64
    18ca:	fcb43823          	sd	a1,-48(s0)
    18ce:	e010                	sd	a2,0(s0)
    18d0:	e414                	sd	a3,8(s0)
    18d2:	e818                	sd	a4,16(s0)
    18d4:	ec1c                	sd	a5,24(s0)
    18d6:	03043023          	sd	a6,32(s0)
    18da:	03143423          	sd	a7,40(s0)
    18de:	87aa                	mv	a5,a0
    18e0:	fcf42e23          	sw	a5,-36(s0)
    18e4:	03040793          	addi	a5,s0,48
    18e8:	fcf43423          	sd	a5,-56(s0)
    18ec:	fc843783          	ld	a5,-56(s0)
    18f0:	fd078793          	addi	a5,a5,-48
    18f4:	fef43423          	sd	a5,-24(s0)
    18f8:	fe843703          	ld	a4,-24(s0)
    18fc:	fdc42783          	lw	a5,-36(s0)
    1900:	863a                	mv	a2,a4
    1902:	fd043583          	ld	a1,-48(s0)
    1906:	853e                	mv	a0,a5
    1908:	00000097          	auipc	ra,0x0
    190c:	d54080e7          	jalr	-684(ra) # 165c <vprintf>
    1910:	0001                	nop
    1912:	70e2                	ld	ra,56(sp)
    1914:	7442                	ld	s0,48(sp)
    1916:	6165                	addi	sp,sp,112
    1918:	8082                	ret

000000000000191a <printf>:
    191a:	7159                	addi	sp,sp,-112
    191c:	f406                	sd	ra,40(sp)
    191e:	f022                	sd	s0,32(sp)
    1920:	1800                	addi	s0,sp,48
    1922:	fca43c23          	sd	a0,-40(s0)
    1926:	e40c                	sd	a1,8(s0)
    1928:	e810                	sd	a2,16(s0)
    192a:	ec14                	sd	a3,24(s0)
    192c:	f018                	sd	a4,32(s0)
    192e:	f41c                	sd	a5,40(s0)
    1930:	03043823          	sd	a6,48(s0)
    1934:	03143c23          	sd	a7,56(s0)
    1938:	04040793          	addi	a5,s0,64
    193c:	fcf43823          	sd	a5,-48(s0)
    1940:	fd043783          	ld	a5,-48(s0)
    1944:	fc878793          	addi	a5,a5,-56
    1948:	fef43423          	sd	a5,-24(s0)
    194c:	fe843783          	ld	a5,-24(s0)
    1950:	863e                	mv	a2,a5
    1952:	fd843583          	ld	a1,-40(s0)
    1956:	4505                	li	a0,1
    1958:	00000097          	auipc	ra,0x0
    195c:	d04080e7          	jalr	-764(ra) # 165c <vprintf>
    1960:	0001                	nop
    1962:	70a2                	ld	ra,40(sp)
    1964:	7402                	ld	s0,32(sp)
    1966:	6165                	addi	sp,sp,112
    1968:	8082                	ret

000000000000196a <free>:
    196a:	7179                	addi	sp,sp,-48
    196c:	f422                	sd	s0,40(sp)
    196e:	1800                	addi	s0,sp,48
    1970:	fca43c23          	sd	a0,-40(s0)
    1974:	fd843783          	ld	a5,-40(s0)
    1978:	17c1                	addi	a5,a5,-16
    197a:	fef43023          	sd	a5,-32(s0)
    197e:	00000797          	auipc	a5,0x0
    1982:	52a78793          	addi	a5,a5,1322 # 1ea8 <freep>
    1986:	639c                	ld	a5,0(a5)
    1988:	fef43423          	sd	a5,-24(s0)
    198c:	a815                	j	19c0 <free+0x56>
    198e:	fe843783          	ld	a5,-24(s0)
    1992:	639c                	ld	a5,0(a5)
    1994:	fe843703          	ld	a4,-24(s0)
    1998:	00f76f63          	bltu	a4,a5,19b6 <free+0x4c>
    199c:	fe043703          	ld	a4,-32(s0)
    19a0:	fe843783          	ld	a5,-24(s0)
    19a4:	02e7eb63          	bltu	a5,a4,19da <free+0x70>
    19a8:	fe843783          	ld	a5,-24(s0)
    19ac:	639c                	ld	a5,0(a5)
    19ae:	fe043703          	ld	a4,-32(s0)
    19b2:	02f76463          	bltu	a4,a5,19da <free+0x70>
    19b6:	fe843783          	ld	a5,-24(s0)
    19ba:	639c                	ld	a5,0(a5)
    19bc:	fef43423          	sd	a5,-24(s0)
    19c0:	fe043703          	ld	a4,-32(s0)
    19c4:	fe843783          	ld	a5,-24(s0)
    19c8:	fce7f3e3          	bgeu	a5,a4,198e <free+0x24>
    19cc:	fe843783          	ld	a5,-24(s0)
    19d0:	639c                	ld	a5,0(a5)
    19d2:	fe043703          	ld	a4,-32(s0)
    19d6:	faf77ce3          	bgeu	a4,a5,198e <free+0x24>
    19da:	fe043783          	ld	a5,-32(s0)
    19de:	479c                	lw	a5,8(a5)
    19e0:	1782                	slli	a5,a5,0x20
    19e2:	9381                	srli	a5,a5,0x20
    19e4:	0792                	slli	a5,a5,0x4
    19e6:	fe043703          	ld	a4,-32(s0)
    19ea:	973e                	add	a4,a4,a5
    19ec:	fe843783          	ld	a5,-24(s0)
    19f0:	639c                	ld	a5,0(a5)
    19f2:	02f71763          	bne	a4,a5,1a20 <free+0xb6>
    19f6:	fe043783          	ld	a5,-32(s0)
    19fa:	4798                	lw	a4,8(a5)
    19fc:	fe843783          	ld	a5,-24(s0)
    1a00:	639c                	ld	a5,0(a5)
    1a02:	479c                	lw	a5,8(a5)
    1a04:	9fb9                	addw	a5,a5,a4
    1a06:	0007871b          	sext.w	a4,a5
    1a0a:	fe043783          	ld	a5,-32(s0)
    1a0e:	c798                	sw	a4,8(a5)
    1a10:	fe843783          	ld	a5,-24(s0)
    1a14:	639c                	ld	a5,0(a5)
    1a16:	6398                	ld	a4,0(a5)
    1a18:	fe043783          	ld	a5,-32(s0)
    1a1c:	e398                	sd	a4,0(a5)
    1a1e:	a039                	j	1a2c <free+0xc2>
    1a20:	fe843783          	ld	a5,-24(s0)
    1a24:	6398                	ld	a4,0(a5)
    1a26:	fe043783          	ld	a5,-32(s0)
    1a2a:	e398                	sd	a4,0(a5)
    1a2c:	fe843783          	ld	a5,-24(s0)
    1a30:	479c                	lw	a5,8(a5)
    1a32:	1782                	slli	a5,a5,0x20
    1a34:	9381                	srli	a5,a5,0x20
    1a36:	0792                	slli	a5,a5,0x4
    1a38:	fe843703          	ld	a4,-24(s0)
    1a3c:	97ba                	add	a5,a5,a4
    1a3e:	fe043703          	ld	a4,-32(s0)
    1a42:	02f71563          	bne	a4,a5,1a6c <free+0x102>
    1a46:	fe843783          	ld	a5,-24(s0)
    1a4a:	4798                	lw	a4,8(a5)
    1a4c:	fe043783          	ld	a5,-32(s0)
    1a50:	479c                	lw	a5,8(a5)
    1a52:	9fb9                	addw	a5,a5,a4
    1a54:	0007871b          	sext.w	a4,a5
    1a58:	fe843783          	ld	a5,-24(s0)
    1a5c:	c798                	sw	a4,8(a5)
    1a5e:	fe043783          	ld	a5,-32(s0)
    1a62:	6398                	ld	a4,0(a5)
    1a64:	fe843783          	ld	a5,-24(s0)
    1a68:	e398                	sd	a4,0(a5)
    1a6a:	a031                	j	1a76 <free+0x10c>
    1a6c:	fe843783          	ld	a5,-24(s0)
    1a70:	fe043703          	ld	a4,-32(s0)
    1a74:	e398                	sd	a4,0(a5)
    1a76:	00000797          	auipc	a5,0x0
    1a7a:	43278793          	addi	a5,a5,1074 # 1ea8 <freep>
    1a7e:	fe843703          	ld	a4,-24(s0)
    1a82:	e398                	sd	a4,0(a5)
    1a84:	0001                	nop
    1a86:	7422                	ld	s0,40(sp)
    1a88:	6145                	addi	sp,sp,48
    1a8a:	8082                	ret

0000000000001a8c <morecore>:
    1a8c:	7179                	addi	sp,sp,-48
    1a8e:	f406                	sd	ra,40(sp)
    1a90:	f022                	sd	s0,32(sp)
    1a92:	1800                	addi	s0,sp,48
    1a94:	87aa                	mv	a5,a0
    1a96:	fcf42e23          	sw	a5,-36(s0)
    1a9a:	fdc42783          	lw	a5,-36(s0)
    1a9e:	0007871b          	sext.w	a4,a5
    1aa2:	6785                	lui	a5,0x1
    1aa4:	00f77563          	bgeu	a4,a5,1aae <morecore+0x22>
    1aa8:	6785                	lui	a5,0x1
    1aaa:	fcf42e23          	sw	a5,-36(s0)
    1aae:	fdc42783          	lw	a5,-36(s0)
    1ab2:	0047979b          	slliw	a5,a5,0x4
    1ab6:	2781                	sext.w	a5,a5
    1ab8:	2781                	sext.w	a5,a5
    1aba:	853e                	mv	a0,a5
    1abc:	00000097          	auipc	ra,0x0
    1ac0:	9b8080e7          	jalr	-1608(ra) # 1474 <sbrk>
    1ac4:	fea43423          	sd	a0,-24(s0)
    1ac8:	fe843703          	ld	a4,-24(s0)
    1acc:	57fd                	li	a5,-1
    1ace:	00f71463          	bne	a4,a5,1ad6 <morecore+0x4a>
    1ad2:	4781                	li	a5,0
    1ad4:	a03d                	j	1b02 <morecore+0x76>
    1ad6:	fe843783          	ld	a5,-24(s0)
    1ada:	fef43023          	sd	a5,-32(s0)
    1ade:	fe043783          	ld	a5,-32(s0)
    1ae2:	fdc42703          	lw	a4,-36(s0)
    1ae6:	c798                	sw	a4,8(a5)
    1ae8:	fe043783          	ld	a5,-32(s0)
    1aec:	07c1                	addi	a5,a5,16
    1aee:	853e                	mv	a0,a5
    1af0:	00000097          	auipc	ra,0x0
    1af4:	e7a080e7          	jalr	-390(ra) # 196a <free>
    1af8:	00000797          	auipc	a5,0x0
    1afc:	3b078793          	addi	a5,a5,944 # 1ea8 <freep>
    1b00:	639c                	ld	a5,0(a5)
    1b02:	853e                	mv	a0,a5
    1b04:	70a2                	ld	ra,40(sp)
    1b06:	7402                	ld	s0,32(sp)
    1b08:	6145                	addi	sp,sp,48
    1b0a:	8082                	ret

0000000000001b0c <malloc>:
    1b0c:	7139                	addi	sp,sp,-64
    1b0e:	fc06                	sd	ra,56(sp)
    1b10:	f822                	sd	s0,48(sp)
    1b12:	0080                	addi	s0,sp,64
    1b14:	87aa                	mv	a5,a0
    1b16:	fcf42623          	sw	a5,-52(s0)
    1b1a:	fcc46783          	lwu	a5,-52(s0)
    1b1e:	07bd                	addi	a5,a5,15
    1b20:	8391                	srli	a5,a5,0x4
    1b22:	2781                	sext.w	a5,a5
    1b24:	2785                	addiw	a5,a5,1
    1b26:	fcf42e23          	sw	a5,-36(s0)
    1b2a:	00000797          	auipc	a5,0x0
    1b2e:	37e78793          	addi	a5,a5,894 # 1ea8 <freep>
    1b32:	639c                	ld	a5,0(a5)
    1b34:	fef43023          	sd	a5,-32(s0)
    1b38:	fe043783          	ld	a5,-32(s0)
    1b3c:	ef95                	bnez	a5,1b78 <malloc+0x6c>
    1b3e:	00000797          	auipc	a5,0x0
    1b42:	35a78793          	addi	a5,a5,858 # 1e98 <base>
    1b46:	fef43023          	sd	a5,-32(s0)
    1b4a:	00000797          	auipc	a5,0x0
    1b4e:	35e78793          	addi	a5,a5,862 # 1ea8 <freep>
    1b52:	fe043703          	ld	a4,-32(s0)
    1b56:	e398                	sd	a4,0(a5)
    1b58:	00000797          	auipc	a5,0x0
    1b5c:	35078793          	addi	a5,a5,848 # 1ea8 <freep>
    1b60:	6398                	ld	a4,0(a5)
    1b62:	00000797          	auipc	a5,0x0
    1b66:	33678793          	addi	a5,a5,822 # 1e98 <base>
    1b6a:	e398                	sd	a4,0(a5)
    1b6c:	00000797          	auipc	a5,0x0
    1b70:	32c78793          	addi	a5,a5,812 # 1e98 <base>
    1b74:	0007a423          	sw	zero,8(a5)
    1b78:	fe043783          	ld	a5,-32(s0)
    1b7c:	639c                	ld	a5,0(a5)
    1b7e:	fef43423          	sd	a5,-24(s0)
    1b82:	fe843783          	ld	a5,-24(s0)
    1b86:	4798                	lw	a4,8(a5)
    1b88:	fdc42783          	lw	a5,-36(s0)
    1b8c:	2781                	sext.w	a5,a5
    1b8e:	06f76863          	bltu	a4,a5,1bfe <malloc+0xf2>
    1b92:	fe843783          	ld	a5,-24(s0)
    1b96:	4798                	lw	a4,8(a5)
    1b98:	fdc42783          	lw	a5,-36(s0)
    1b9c:	2781                	sext.w	a5,a5
    1b9e:	00e79963          	bne	a5,a4,1bb0 <malloc+0xa4>
    1ba2:	fe843783          	ld	a5,-24(s0)
    1ba6:	6398                	ld	a4,0(a5)
    1ba8:	fe043783          	ld	a5,-32(s0)
    1bac:	e398                	sd	a4,0(a5)
    1bae:	a82d                	j	1be8 <malloc+0xdc>
    1bb0:	fe843783          	ld	a5,-24(s0)
    1bb4:	4798                	lw	a4,8(a5)
    1bb6:	fdc42783          	lw	a5,-36(s0)
    1bba:	40f707bb          	subw	a5,a4,a5
    1bbe:	0007871b          	sext.w	a4,a5
    1bc2:	fe843783          	ld	a5,-24(s0)
    1bc6:	c798                	sw	a4,8(a5)
    1bc8:	fe843783          	ld	a5,-24(s0)
    1bcc:	479c                	lw	a5,8(a5)
    1bce:	1782                	slli	a5,a5,0x20
    1bd0:	9381                	srli	a5,a5,0x20
    1bd2:	0792                	slli	a5,a5,0x4
    1bd4:	fe843703          	ld	a4,-24(s0)
    1bd8:	97ba                	add	a5,a5,a4
    1bda:	fef43423          	sd	a5,-24(s0)
    1bde:	fe843783          	ld	a5,-24(s0)
    1be2:	fdc42703          	lw	a4,-36(s0)
    1be6:	c798                	sw	a4,8(a5)
    1be8:	00000797          	auipc	a5,0x0
    1bec:	2c078793          	addi	a5,a5,704 # 1ea8 <freep>
    1bf0:	fe043703          	ld	a4,-32(s0)
    1bf4:	e398                	sd	a4,0(a5)
    1bf6:	fe843783          	ld	a5,-24(s0)
    1bfa:	07c1                	addi	a5,a5,16
    1bfc:	a091                	j	1c40 <malloc+0x134>
    1bfe:	00000797          	auipc	a5,0x0
    1c02:	2aa78793          	addi	a5,a5,682 # 1ea8 <freep>
    1c06:	639c                	ld	a5,0(a5)
    1c08:	fe843703          	ld	a4,-24(s0)
    1c0c:	02f71063          	bne	a4,a5,1c2c <malloc+0x120>
    1c10:	fdc42783          	lw	a5,-36(s0)
    1c14:	853e                	mv	a0,a5
    1c16:	00000097          	auipc	ra,0x0
    1c1a:	e76080e7          	jalr	-394(ra) # 1a8c <morecore>
    1c1e:	fea43423          	sd	a0,-24(s0)
    1c22:	fe843783          	ld	a5,-24(s0)
    1c26:	e399                	bnez	a5,1c2c <malloc+0x120>
    1c28:	4781                	li	a5,0
    1c2a:	a819                	j	1c40 <malloc+0x134>
    1c2c:	fe843783          	ld	a5,-24(s0)
    1c30:	fef43023          	sd	a5,-32(s0)
    1c34:	fe843783          	ld	a5,-24(s0)
    1c38:	639c                	ld	a5,0(a5)
    1c3a:	fef43423          	sd	a5,-24(s0)
    1c3e:	b791                	j	1b82 <malloc+0x76>
    1c40:	853e                	mv	a0,a5
    1c42:	70e2                	ld	ra,56(sp)
    1c44:	7442                	ld	s0,48(sp)
    1c46:	6121                	addi	sp,sp,64
    1c48:	8082                	ret

0000000000001c4a <setjmp>:
    1c4a:	e100                	sd	s0,0(a0)
    1c4c:	e504                	sd	s1,8(a0)
    1c4e:	01253823          	sd	s2,16(a0)
    1c52:	01353c23          	sd	s3,24(a0)
    1c56:	03453023          	sd	s4,32(a0)
    1c5a:	03553423          	sd	s5,40(a0)
    1c5e:	03653823          	sd	s6,48(a0)
    1c62:	03753c23          	sd	s7,56(a0)
    1c66:	05853023          	sd	s8,64(a0)
    1c6a:	05953423          	sd	s9,72(a0)
    1c6e:	05a53823          	sd	s10,80(a0)
    1c72:	05b53c23          	sd	s11,88(a0)
    1c76:	06153023          	sd	ra,96(a0)
    1c7a:	06253423          	sd	sp,104(a0)
    1c7e:	4501                	li	a0,0
    1c80:	8082                	ret

0000000000001c82 <longjmp>:
    1c82:	6100                	ld	s0,0(a0)
    1c84:	6504                	ld	s1,8(a0)
    1c86:	01053903          	ld	s2,16(a0)
    1c8a:	01853983          	ld	s3,24(a0)
    1c8e:	02053a03          	ld	s4,32(a0)
    1c92:	02853a83          	ld	s5,40(a0)
    1c96:	03053b03          	ld	s6,48(a0)
    1c9a:	03853b83          	ld	s7,56(a0)
    1c9e:	04053c03          	ld	s8,64(a0)
    1ca2:	04853c83          	ld	s9,72(a0)
    1ca6:	05053d03          	ld	s10,80(a0)
    1caa:	05853d83          	ld	s11,88(a0)
    1cae:	06053083          	ld	ra,96(a0)
    1cb2:	06853103          	ld	sp,104(a0)
    1cb6:	c199                	beqz	a1,1cbc <longjmp_1>
    1cb8:	852e                	mv	a0,a1
    1cba:	8082                	ret

0000000000001cbc <longjmp_1>:
    1cbc:	4505                	li	a0,1
    1cbe:	8082                	ret
