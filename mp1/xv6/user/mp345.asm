
user/_mp345:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <thread_create>:
       0:	7139                	addi	sp,sp,-64
       2:	fc06                	sd	ra,56(sp)
       4:	f822                	sd	s0,48(sp)
       6:	0080                	addi	s0,sp,64
       8:	fca43423          	sd	a0,-56(s0)
       c:	fcb43023          	sd	a1,-64(s0)
      10:	0b800513          	li	a0,184
      14:	00001097          	auipc	ra,0x1
      18:	412080e7          	jalr	1042(ra) # 1426 <malloc>
      1c:	fea43423          	sd	a0,-24(s0)
      20:	6785                	lui	a5,0x1
      22:	80078513          	addi	a0,a5,-2048 # 800 <f1+0x88>
      26:	00001097          	auipc	ra,0x1
      2a:	400080e7          	jalr	1024(ra) # 1426 <malloc>
      2e:	87aa                	mv	a5,a0
      30:	fef43023          	sd	a5,-32(s0)
      34:	fe043783          	ld	a5,-32(s0)
      38:	7f078793          	addi	a5,a5,2032
      3c:	fcf43c23          	sd	a5,-40(s0)
      40:	fe843783          	ld	a5,-24(s0)
      44:	fc843703          	ld	a4,-56(s0)
      48:	e398                	sd	a4,0(a5)
      4a:	fe843783          	ld	a5,-24(s0)
      4e:	fc043703          	ld	a4,-64(s0)
      52:	e798                	sd	a4,8(a5)
      54:	00001797          	auipc	a5,0x1
      58:	5f078793          	addi	a5,a5,1520 # 1644 <id>
      5c:	4398                	lw	a4,0(a5)
      5e:	fe843783          	ld	a5,-24(s0)
      62:	08e7a823          	sw	a4,144(a5)
      66:	fe843783          	ld	a5,-24(s0)
      6a:	0807ac23          	sw	zero,152(a5)
      6e:	fe043703          	ld	a4,-32(s0)
      72:	fe843783          	ld	a5,-24(s0)
      76:	eb98                	sd	a4,16(a5)
      78:	fd843703          	ld	a4,-40(s0)
      7c:	fe843783          	ld	a5,-24(s0)
      80:	ef98                	sd	a4,24(a5)
      82:	00001797          	auipc	a5,0x1
      86:	5c278793          	addi	a5,a5,1474 # 1644 <id>
      8a:	439c                	lw	a5,0(a5)
      8c:	2785                	addiw	a5,a5,1
      8e:	0007871b          	sext.w	a4,a5
      92:	00001797          	auipc	a5,0x1
      96:	5b278793          	addi	a5,a5,1458 # 1644 <id>
      9a:	c398                	sw	a4,0(a5)
      9c:	fe843783          	ld	a5,-24(s0)
      a0:	853e                	mv	a0,a5
      a2:	70e2                	ld	ra,56(sp)
      a4:	7442                	ld	s0,48(sp)
      a6:	6121                	addi	sp,sp,64
      a8:	8082                	ret

00000000000000aa <thread_add_runqueue>:
      aa:	1101                	addi	sp,sp,-32
      ac:	ec06                	sd	ra,24(sp)
      ae:	e822                	sd	s0,16(sp)
      b0:	1000                	addi	s0,sp,32
      b2:	fea43423          	sd	a0,-24(s0)
      b6:	00001797          	auipc	a5,0x1
      ba:	59a78793          	addi	a5,a5,1434 # 1650 <current_thread>
      be:	639c                	ld	a5,0(a5)
      c0:	ef85                	bnez	a5,f8 <thread_add_runqueue+0x4e>
      c2:	fe843783          	ld	a5,-24(s0)
      c6:	0a07b823          	sd	zero,176(a5)
      ca:	fe843783          	ld	a5,-24(s0)
      ce:	0a07b423          	sd	zero,168(a5)
      d2:	fe843783          	ld	a5,-24(s0)
      d6:	0a07b023          	sd	zero,160(a5)
      da:	00001797          	auipc	a5,0x1
      de:	57678793          	addi	a5,a5,1398 # 1650 <current_thread>
      e2:	fe843703          	ld	a4,-24(s0)
      e6:	e398                	sd	a4,0(a5)
      e8:	00001797          	auipc	a5,0x1
      ec:	57078793          	addi	a5,a5,1392 # 1658 <root_thread>
      f0:	fe843703          	ld	a4,-24(s0)
      f4:	e398                	sd	a4,0(a5)
      f6:	a071                	j	182 <thread_add_runqueue+0xd8>
      f8:	00001797          	auipc	a5,0x1
      fc:	55878793          	addi	a5,a5,1368 # 1650 <current_thread>
     100:	639c                	ld	a5,0(a5)
     102:	73dc                	ld	a5,160(a5)
     104:	c79d                	beqz	a5,132 <thread_add_runqueue+0x88>
     106:	00001797          	auipc	a5,0x1
     10a:	54a78793          	addi	a5,a5,1354 # 1650 <current_thread>
     10e:	639c                	ld	a5,0(a5)
     110:	77dc                	ld	a5,168(a5)
     112:	c385                	beqz	a5,132 <thread_add_runqueue+0x88>
     114:	fe843503          	ld	a0,-24(s0)
     118:	00001097          	auipc	ra,0x1
     11c:	16c080e7          	jalr	364(ra) # 1284 <free>
     120:	fe843783          	ld	a5,-24(s0)
     124:	6f9c                	ld	a5,24(a5)
     126:	853e                	mv	a0,a5
     128:	00001097          	auipc	ra,0x1
     12c:	15c080e7          	jalr	348(ra) # 1284 <free>
     130:	a889                	j	182 <thread_add_runqueue+0xd8>
     132:	00001797          	auipc	a5,0x1
     136:	51e78793          	addi	a5,a5,1310 # 1650 <current_thread>
     13a:	639c                	ld	a5,0(a5)
     13c:	73dc                	ld	a5,160(a5)
     13e:	eb91                	bnez	a5,152 <thread_add_runqueue+0xa8>
     140:	00001797          	auipc	a5,0x1
     144:	51078793          	addi	a5,a5,1296 # 1650 <current_thread>
     148:	639c                	ld	a5,0(a5)
     14a:	fe843703          	ld	a4,-24(s0)
     14e:	f3d8                	sd	a4,160(a5)
     150:	a809                	j	162 <thread_add_runqueue+0xb8>
     152:	00001797          	auipc	a5,0x1
     156:	4fe78793          	addi	a5,a5,1278 # 1650 <current_thread>
     15a:	639c                	ld	a5,0(a5)
     15c:	fe843703          	ld	a4,-24(s0)
     160:	f7d8                	sd	a4,168(a5)
     162:	00001797          	auipc	a5,0x1
     166:	4ee78793          	addi	a5,a5,1262 # 1650 <current_thread>
     16a:	6398                	ld	a4,0(a5)
     16c:	fe843783          	ld	a5,-24(s0)
     170:	fbd8                	sd	a4,176(a5)
     172:	fe843783          	ld	a5,-24(s0)
     176:	0a07b423          	sd	zero,168(a5)
     17a:	fe843783          	ld	a5,-24(s0)
     17e:	0a07b023          	sd	zero,160(a5)
     182:	0001                	nop
     184:	60e2                	ld	ra,24(sp)
     186:	6442                	ld	s0,16(sp)
     188:	6105                	addi	sp,sp,32
     18a:	8082                	ret

000000000000018c <thread_yield>:
     18c:	1141                	addi	sp,sp,-16
     18e:	e406                	sd	ra,8(sp)
     190:	e022                	sd	s0,0(sp)
     192:	0800                	addi	s0,sp,16
     194:	00001797          	auipc	a5,0x1
     198:	4bc78793          	addi	a5,a5,1212 # 1650 <current_thread>
     19c:	639c                	ld	a5,0(a5)
     19e:	02078793          	addi	a5,a5,32
     1a2:	853e                	mv	a0,a5
     1a4:	00001097          	auipc	ra,0x1
     1a8:	3c0080e7          	jalr	960(ra) # 1564 <setjmp>
     1ac:	87aa                	mv	a5,a0
     1ae:	eb91                	bnez	a5,1c2 <thread_yield+0x36>
     1b0:	00000097          	auipc	ra,0x0
     1b4:	0e0080e7          	jalr	224(ra) # 290 <schedule>
     1b8:	00000097          	auipc	ra,0x0
     1bc:	014080e7          	jalr	20(ra) # 1cc <dispatch>
     1c0:	a011                	j	1c4 <thread_yield+0x38>
     1c2:	0001                	nop
     1c4:	60a2                	ld	ra,8(sp)
     1c6:	6402                	ld	s0,0(sp)
     1c8:	0141                	addi	sp,sp,16
     1ca:	8082                	ret

00000000000001cc <dispatch>:
     1cc:	1101                	addi	sp,sp,-32
     1ce:	ec06                	sd	ra,24(sp)
     1d0:	e822                	sd	s0,16(sp)
     1d2:	1000                	addi	s0,sp,32
     1d4:	00001797          	auipc	a5,0x1
     1d8:	47c78793          	addi	a5,a5,1148 # 1650 <current_thread>
     1dc:	639c                	ld	a5,0(a5)
     1de:	0987a783          	lw	a5,152(a5)
     1e2:	e7c9                	bnez	a5,26c <dispatch+0xa0>
     1e4:	00001797          	auipc	a5,0x1
     1e8:	46c78793          	addi	a5,a5,1132 # 1650 <current_thread>
     1ec:	639c                	ld	a5,0(a5)
     1ee:	02078793          	addi	a5,a5,32
     1f2:	853e                	mv	a0,a5
     1f4:	00001097          	auipc	ra,0x1
     1f8:	370080e7          	jalr	880(ra) # 1564 <setjmp>
     1fc:	87aa                	mv	a5,a0
     1fe:	fef42623          	sw	a5,-20(s0)
     202:	fec42783          	lw	a5,-20(s0)
     206:	2781                	sext.w	a5,a5
     208:	e795                	bnez	a5,234 <dispatch+0x68>
     20a:	00001797          	auipc	a5,0x1
     20e:	44678793          	addi	a5,a5,1094 # 1650 <current_thread>
     212:	639c                	ld	a5,0(a5)
     214:	6f98                	ld	a4,24(a5)
     216:	00001797          	auipc	a5,0x1
     21a:	43a78793          	addi	a5,a5,1082 # 1650 <current_thread>
     21e:	639c                	ld	a5,0(a5)
     220:	e7d8                	sd	a4,136(a5)
     222:	00001797          	auipc	a5,0x1
     226:	42e78793          	addi	a5,a5,1070 # 1650 <current_thread>
     22a:	639c                	ld	a5,0(a5)
     22c:	4705                	li	a4,1
     22e:	08e7ac23          	sw	a4,152(a5)
     232:	a839                	j	250 <dispatch+0x84>
     234:	00001797          	auipc	a5,0x1
     238:	41c78793          	addi	a5,a5,1052 # 1650 <current_thread>
     23c:	639c                	ld	a5,0(a5)
     23e:	6398                	ld	a4,0(a5)
     240:	00001797          	auipc	a5,0x1
     244:	41078793          	addi	a5,a5,1040 # 1650 <current_thread>
     248:	639c                	ld	a5,0(a5)
     24a:	679c                	ld	a5,8(a5)
     24c:	853e                	mv	a0,a5
     24e:	9702                	jalr	a4
     250:	00001797          	auipc	a5,0x1
     254:	40078793          	addi	a5,a5,1024 # 1650 <current_thread>
     258:	639c                	ld	a5,0(a5)
     25a:	02078793          	addi	a5,a5,32
     25e:	4585                	li	a1,1
     260:	853e                	mv	a0,a5
     262:	00001097          	auipc	ra,0x1
     266:	33a080e7          	jalr	826(ra) # 159c <longjmp>
     26a:	a831                	j	286 <dispatch+0xba>
     26c:	00001797          	auipc	a5,0x1
     270:	3e478793          	addi	a5,a5,996 # 1650 <current_thread>
     274:	639c                	ld	a5,0(a5)
     276:	02078793          	addi	a5,a5,32
     27a:	4585                	li	a1,1
     27c:	853e                	mv	a0,a5
     27e:	00001097          	auipc	ra,0x1
     282:	31e080e7          	jalr	798(ra) # 159c <longjmp>
     286:	0001                	nop
     288:	60e2                	ld	ra,24(sp)
     28a:	6442                	ld	s0,16(sp)
     28c:	6105                	addi	sp,sp,32
     28e:	8082                	ret

0000000000000290 <schedule>:
     290:	1141                	addi	sp,sp,-16
     292:	e406                	sd	ra,8(sp)
     294:	e022                	sd	s0,0(sp)
     296:	0800                	addi	s0,sp,16
     298:	00001797          	auipc	a5,0x1
     29c:	3c078793          	addi	a5,a5,960 # 1658 <root_thread>
     2a0:	639c                	ld	a5,0(a5)
     2a2:	853e                	mv	a0,a5
     2a4:	00000097          	auipc	ra,0x0
     2a8:	3b4080e7          	jalr	948(ra) # 658 <find_preorder>
     2ac:	00001797          	auipc	a5,0x1
     2b0:	3ac78793          	addi	a5,a5,940 # 1658 <root_thread>
     2b4:	639c                	ld	a5,0(a5)
     2b6:	853e                	mv	a0,a5
     2b8:	00000097          	auipc	ra,0x0
     2bc:	012080e7          	jalr	18(ra) # 2ca <preorder_sch>
     2c0:	0001                	nop
     2c2:	60a2                	ld	ra,8(sp)
     2c4:	6402                	ld	s0,0(sp)
     2c6:	0141                	addi	sp,sp,16
     2c8:	8082                	ret

00000000000002ca <preorder_sch>:
     2ca:	1101                	addi	sp,sp,-32
     2cc:	ec06                	sd	ra,24(sp)
     2ce:	e822                	sd	s0,16(sp)
     2d0:	1000                	addi	s0,sp,32
     2d2:	fea43423          	sd	a0,-24(s0)
     2d6:	fe843783          	ld	a5,-24(s0)
     2da:	c3c5                	beqz	a5,37a <preorder_sch+0xb0>
     2dc:	00001797          	auipc	a5,0x1
     2e0:	37478793          	addi	a5,a5,884 # 1650 <current_thread>
     2e4:	6398                	ld	a4,0(a5)
     2e6:	00001797          	auipc	a5,0x1
     2ea:	37a78793          	addi	a5,a5,890 # 1660 <pre_thread>
     2ee:	639c                	ld	a5,0(a5)
     2f0:	06f70a63          	beq	a4,a5,364 <preorder_sch+0x9a>
     2f4:	00001797          	auipc	a5,0x1
     2f8:	35c78793          	addi	a5,a5,860 # 1650 <current_thread>
     2fc:	639c                	ld	a5,0(a5)
     2fe:	fe843703          	ld	a4,-24(s0)
     302:	00f71963          	bne	a4,a5,314 <preorder_sch+0x4a>
     306:	00001797          	auipc	a5,0x1
     30a:	34278793          	addi	a5,a5,834 # 1648 <key>
     30e:	4705                	li	a4,1
     310:	c398                	sw	a4,0(a5)
     312:	a805                	j	342 <preorder_sch+0x78>
     314:	00001797          	auipc	a5,0x1
     318:	33478793          	addi	a5,a5,820 # 1648 <key>
     31c:	439c                	lw	a5,0(a5)
     31e:	873e                	mv	a4,a5
     320:	4785                	li	a5,1
     322:	02f71063          	bne	a4,a5,342 <preorder_sch+0x78>
     326:	00001797          	auipc	a5,0x1
     32a:	32a78793          	addi	a5,a5,810 # 1650 <current_thread>
     32e:	fe843703          	ld	a4,-24(s0)
     332:	e398                	sd	a4,0(a5)
     334:	00001797          	auipc	a5,0x1
     338:	31478793          	addi	a5,a5,788 # 1648 <key>
     33c:	0007a023          	sw	zero,0(a5)
     340:	a82d                	j	37a <preorder_sch+0xb0>
     342:	fe843783          	ld	a5,-24(s0)
     346:	73dc                	ld	a5,160(a5)
     348:	853e                	mv	a0,a5
     34a:	00000097          	auipc	ra,0x0
     34e:	f80080e7          	jalr	-128(ra) # 2ca <preorder_sch>
     352:	fe843783          	ld	a5,-24(s0)
     356:	77dc                	ld	a5,168(a5)
     358:	853e                	mv	a0,a5
     35a:	00000097          	auipc	ra,0x0
     35e:	f70080e7          	jalr	-144(ra) # 2ca <preorder_sch>
     362:	a821                	j	37a <preorder_sch+0xb0>
     364:	00001797          	auipc	a5,0x1
     368:	2f478793          	addi	a5,a5,756 # 1658 <root_thread>
     36c:	6398                	ld	a4,0(a5)
     36e:	00001797          	auipc	a5,0x1
     372:	2e278793          	addi	a5,a5,738 # 1650 <current_thread>
     376:	e398                	sd	a4,0(a5)
     378:	0001                	nop
     37a:	60e2                	ld	ra,24(sp)
     37c:	6442                	ld	s0,16(sp)
     37e:	6105                	addi	sp,sp,32
     380:	8082                	ret

0000000000000382 <thread_exit>:
     382:	1101                	addi	sp,sp,-32
     384:	ec06                	sd	ra,24(sp)
     386:	e822                	sd	s0,16(sp)
     388:	1000                	addi	s0,sp,32
     38a:	00001797          	auipc	a5,0x1
     38e:	2c678793          	addi	a5,a5,710 # 1650 <current_thread>
     392:	6398                	ld	a4,0(a5)
     394:	00001797          	auipc	a5,0x1
     398:	2c478793          	addi	a5,a5,708 # 1658 <root_thread>
     39c:	639c                	ld	a5,0(a5)
     39e:	04f71f63          	bne	a4,a5,3fc <thread_exit+0x7a>
     3a2:	00001797          	auipc	a5,0x1
     3a6:	2ae78793          	addi	a5,a5,686 # 1650 <current_thread>
     3aa:	639c                	ld	a5,0(a5)
     3ac:	73dc                	ld	a5,160(a5)
     3ae:	e7b9                	bnez	a5,3fc <thread_exit+0x7a>
     3b0:	00001797          	auipc	a5,0x1
     3b4:	2a078793          	addi	a5,a5,672 # 1650 <current_thread>
     3b8:	639c                	ld	a5,0(a5)
     3ba:	77dc                	ld	a5,168(a5)
     3bc:	e3a1                	bnez	a5,3fc <thread_exit+0x7a>
     3be:	00001797          	auipc	a5,0x1
     3c2:	29278793          	addi	a5,a5,658 # 1650 <current_thread>
     3c6:	639c                	ld	a5,0(a5)
     3c8:	853e                	mv	a0,a5
     3ca:	00001097          	auipc	ra,0x1
     3ce:	eba080e7          	jalr	-326(ra) # 1284 <free>
     3d2:	00001797          	auipc	a5,0x1
     3d6:	27e78793          	addi	a5,a5,638 # 1650 <current_thread>
     3da:	639c                	ld	a5,0(a5)
     3dc:	6b9c                	ld	a5,16(a5)
     3de:	853e                	mv	a0,a5
     3e0:	00001097          	auipc	ra,0x1
     3e4:	ea4080e7          	jalr	-348(ra) # 1284 <free>
     3e8:	4585                	li	a1,1
     3ea:	00001517          	auipc	a0,0x1
     3ee:	27e50513          	addi	a0,a0,638 # 1668 <env_st>
     3f2:	00001097          	auipc	ra,0x1
     3f6:	1aa080e7          	jalr	426(ra) # 159c <longjmp>
     3fa:	ac91                	j	64e <thread_exit+0x2cc>
     3fc:	00001797          	auipc	a5,0x1
     400:	25478793          	addi	a5,a5,596 # 1650 <current_thread>
     404:	639c                	ld	a5,0(a5)
     406:	853e                	mv	a0,a5
     408:	00000097          	auipc	ra,0x0
     40c:	250080e7          	jalr	592(ra) # 658 <find_preorder>
     410:	00001797          	auipc	a5,0x1
     414:	24078793          	addi	a5,a5,576 # 1650 <current_thread>
     418:	639c                	ld	a5,0(a5)
     41a:	fef43423          	sd	a5,-24(s0)
     41e:	00001797          	auipc	a5,0x1
     422:	23278793          	addi	a5,a5,562 # 1650 <current_thread>
     426:	639c                	ld	a5,0(a5)
     428:	73dc                	ld	a5,160(a5)
     42a:	eb89                	bnez	a5,43c <thread_exit+0xba>
     42c:	00001797          	auipc	a5,0x1
     430:	22478793          	addi	a5,a5,548 # 1650 <current_thread>
     434:	639c                	ld	a5,0(a5)
     436:	77dc                	ld	a5,168(a5)
     438:	1c078163          	beqz	a5,5fa <thread_exit+0x278>
     43c:	00000097          	auipc	ra,0x0
     440:	e54080e7          	jalr	-428(ra) # 290 <schedule>
     444:	00001797          	auipc	a5,0x1
     448:	21c78793          	addi	a5,a5,540 # 1660 <pre_thread>
     44c:	639c                	ld	a5,0(a5)
     44e:	7bdc                	ld	a5,176(a5)
     450:	73d8                	ld	a4,160(a5)
     452:	00001797          	auipc	a5,0x1
     456:	20e78793          	addi	a5,a5,526 # 1660 <pre_thread>
     45a:	639c                	ld	a5,0(a5)
     45c:	00f71b63          	bne	a4,a5,472 <thread_exit+0xf0>
     460:	00001797          	auipc	a5,0x1
     464:	20078793          	addi	a5,a5,512 # 1660 <pre_thread>
     468:	639c                	ld	a5,0(a5)
     46a:	7bdc                	ld	a5,176(a5)
     46c:	0a07b023          	sd	zero,160(a5)
     470:	a809                	j	482 <thread_exit+0x100>
     472:	00001797          	auipc	a5,0x1
     476:	1ee78793          	addi	a5,a5,494 # 1660 <pre_thread>
     47a:	639c                	ld	a5,0(a5)
     47c:	7bdc                	ld	a5,176(a5)
     47e:	0a07b423          	sd	zero,168(a5)
     482:	fe843783          	ld	a5,-24(s0)
     486:	73d8                	ld	a4,160(a5)
     488:	00001797          	auipc	a5,0x1
     48c:	1d878793          	addi	a5,a5,472 # 1660 <pre_thread>
     490:	639c                	ld	a5,0(a5)
     492:	00f71a63          	bne	a4,a5,4a6 <thread_exit+0x124>
     496:	00001797          	auipc	a5,0x1
     49a:	1ca78793          	addi	a5,a5,458 # 1660 <pre_thread>
     49e:	639c                	ld	a5,0(a5)
     4a0:	0a07b023          	sd	zero,160(a5)
     4a4:	a811                	j	4b8 <thread_exit+0x136>
     4a6:	00001797          	auipc	a5,0x1
     4aa:	1ba78793          	addi	a5,a5,442 # 1660 <pre_thread>
     4ae:	639c                	ld	a5,0(a5)
     4b0:	fe843703          	ld	a4,-24(s0)
     4b4:	7358                	ld	a4,160(a4)
     4b6:	f3d8                	sd	a4,160(a5)
     4b8:	fe843783          	ld	a5,-24(s0)
     4bc:	77d8                	ld	a4,168(a5)
     4be:	00001797          	auipc	a5,0x1
     4c2:	1a278793          	addi	a5,a5,418 # 1660 <pre_thread>
     4c6:	639c                	ld	a5,0(a5)
     4c8:	00f71a63          	bne	a4,a5,4dc <thread_exit+0x15a>
     4cc:	00001797          	auipc	a5,0x1
     4d0:	19478793          	addi	a5,a5,404 # 1660 <pre_thread>
     4d4:	639c                	ld	a5,0(a5)
     4d6:	0a07b423          	sd	zero,168(a5)
     4da:	a811                	j	4ee <thread_exit+0x16c>
     4dc:	00001797          	auipc	a5,0x1
     4e0:	18478793          	addi	a5,a5,388 # 1660 <pre_thread>
     4e4:	639c                	ld	a5,0(a5)
     4e6:	fe843703          	ld	a4,-24(s0)
     4ea:	7758                	ld	a4,168(a4)
     4ec:	f7d8                	sd	a4,168(a5)
     4ee:	00001797          	auipc	a5,0x1
     4f2:	16a78793          	addi	a5,a5,362 # 1658 <root_thread>
     4f6:	639c                	ld	a5,0(a5)
     4f8:	fe843703          	ld	a4,-24(s0)
     4fc:	04f71e63          	bne	a4,a5,558 <thread_exit+0x1d6>
     500:	00001797          	auipc	a5,0x1
     504:	16078793          	addi	a5,a5,352 # 1660 <pre_thread>
     508:	639c                	ld	a5,0(a5)
     50a:	0a07b823          	sd	zero,176(a5)
     50e:	fe843783          	ld	a5,-24(s0)
     512:	73dc                	ld	a5,160(a5)
     514:	cb91                	beqz	a5,528 <thread_exit+0x1a6>
     516:	fe843783          	ld	a5,-24(s0)
     51a:	73dc                	ld	a5,160(a5)
     51c:	00001717          	auipc	a4,0x1
     520:	14470713          	addi	a4,a4,324 # 1660 <pre_thread>
     524:	6318                	ld	a4,0(a4)
     526:	fbd8                	sd	a4,176(a5)
     528:	fe843783          	ld	a5,-24(s0)
     52c:	77dc                	ld	a5,168(a5)
     52e:	cb91                	beqz	a5,542 <thread_exit+0x1c0>
     530:	fe843783          	ld	a5,-24(s0)
     534:	77dc                	ld	a5,168(a5)
     536:	00001717          	auipc	a4,0x1
     53a:	12a70713          	addi	a4,a4,298 # 1660 <pre_thread>
     53e:	6318                	ld	a4,0(a4)
     540:	fbd8                	sd	a4,176(a5)
     542:	00001797          	auipc	a5,0x1
     546:	11e78793          	addi	a5,a5,286 # 1660 <pre_thread>
     54a:	6398                	ld	a4,0(a5)
     54c:	00001797          	auipc	a5,0x1
     550:	10c78793          	addi	a5,a5,268 # 1658 <root_thread>
     554:	e398                	sd	a4,0(a5)
     556:	a8bd                	j	5d4 <thread_exit+0x252>
     558:	fe843783          	ld	a5,-24(s0)
     55c:	7bdc                	ld	a5,176(a5)
     55e:	73dc                	ld	a5,160(a5)
     560:	fe843703          	ld	a4,-24(s0)
     564:	00f71c63          	bne	a4,a5,57c <thread_exit+0x1fa>
     568:	fe843783          	ld	a5,-24(s0)
     56c:	7bdc                	ld	a5,176(a5)
     56e:	00001717          	auipc	a4,0x1
     572:	0f270713          	addi	a4,a4,242 # 1660 <pre_thread>
     576:	6318                	ld	a4,0(a4)
     578:	f3d8                	sd	a4,160(a5)
     57a:	a811                	j	58e <thread_exit+0x20c>
     57c:	fe843783          	ld	a5,-24(s0)
     580:	7bdc                	ld	a5,176(a5)
     582:	00001717          	auipc	a4,0x1
     586:	0de70713          	addi	a4,a4,222 # 1660 <pre_thread>
     58a:	6318                	ld	a4,0(a4)
     58c:	f7d8                	sd	a4,168(a5)
     58e:	fe843783          	ld	a5,-24(s0)
     592:	73dc                	ld	a5,160(a5)
     594:	cb91                	beqz	a5,5a8 <thread_exit+0x226>
     596:	fe843783          	ld	a5,-24(s0)
     59a:	73dc                	ld	a5,160(a5)
     59c:	00001717          	auipc	a4,0x1
     5a0:	0c470713          	addi	a4,a4,196 # 1660 <pre_thread>
     5a4:	6318                	ld	a4,0(a4)
     5a6:	fbd8                	sd	a4,176(a5)
     5a8:	fe843783          	ld	a5,-24(s0)
     5ac:	77dc                	ld	a5,168(a5)
     5ae:	cb91                	beqz	a5,5c2 <thread_exit+0x240>
     5b0:	fe843783          	ld	a5,-24(s0)
     5b4:	77dc                	ld	a5,168(a5)
     5b6:	00001717          	auipc	a4,0x1
     5ba:	0aa70713          	addi	a4,a4,170 # 1660 <pre_thread>
     5be:	6318                	ld	a4,0(a4)
     5c0:	fbd8                	sd	a4,176(a5)
     5c2:	00001797          	auipc	a5,0x1
     5c6:	09e78793          	addi	a5,a5,158 # 1660 <pre_thread>
     5ca:	639c                	ld	a5,0(a5)
     5cc:	fe843703          	ld	a4,-24(s0)
     5d0:	7b58                	ld	a4,176(a4)
     5d2:	fbd8                	sd	a4,176(a5)
     5d4:	fe843503          	ld	a0,-24(s0)
     5d8:	00001097          	auipc	ra,0x1
     5dc:	cac080e7          	jalr	-852(ra) # 1284 <free>
     5e0:	fe843783          	ld	a5,-24(s0)
     5e4:	6b9c                	ld	a5,16(a5)
     5e6:	853e                	mv	a0,a5
     5e8:	00001097          	auipc	ra,0x1
     5ec:	c9c080e7          	jalr	-868(ra) # 1284 <free>
     5f0:	00000097          	auipc	ra,0x0
     5f4:	bdc080e7          	jalr	-1060(ra) # 1cc <dispatch>
     5f8:	a899                	j	64e <thread_exit+0x2cc>
     5fa:	00000097          	auipc	ra,0x0
     5fe:	c96080e7          	jalr	-874(ra) # 290 <schedule>
     602:	fe843783          	ld	a5,-24(s0)
     606:	7bdc                	ld	a5,176(a5)
     608:	73dc                	ld	a5,160(a5)
     60a:	fe843703          	ld	a4,-24(s0)
     60e:	00f71863          	bne	a4,a5,61e <thread_exit+0x29c>
     612:	fe843783          	ld	a5,-24(s0)
     616:	7bdc                	ld	a5,176(a5)
     618:	0a07b023          	sd	zero,160(a5)
     61c:	a031                	j	628 <thread_exit+0x2a6>
     61e:	fe843783          	ld	a5,-24(s0)
     622:	7bdc                	ld	a5,176(a5)
     624:	0a07b423          	sd	zero,168(a5)
     628:	fe843503          	ld	a0,-24(s0)
     62c:	00001097          	auipc	ra,0x1
     630:	c58080e7          	jalr	-936(ra) # 1284 <free>
     634:	fe843783          	ld	a5,-24(s0)
     638:	6b9c                	ld	a5,16(a5)
     63a:	853e                	mv	a0,a5
     63c:	00001097          	auipc	ra,0x1
     640:	c48080e7          	jalr	-952(ra) # 1284 <free>
     644:	00000097          	auipc	ra,0x0
     648:	b88080e7          	jalr	-1144(ra) # 1cc <dispatch>
     64c:	0001                	nop
     64e:	0001                	nop
     650:	60e2                	ld	ra,24(sp)
     652:	6442                	ld	s0,16(sp)
     654:	6105                	addi	sp,sp,32
     656:	8082                	ret

0000000000000658 <find_preorder>:
     658:	1101                	addi	sp,sp,-32
     65a:	ec06                	sd	ra,24(sp)
     65c:	e822                	sd	s0,16(sp)
     65e:	1000                	addi	s0,sp,32
     660:	fea43423          	sd	a0,-24(s0)
     664:	fe843783          	ld	a5,-24(s0)
     668:	cb85                	beqz	a5,698 <find_preorder+0x40>
     66a:	00001797          	auipc	a5,0x1
     66e:	ff678793          	addi	a5,a5,-10 # 1660 <pre_thread>
     672:	fe843703          	ld	a4,-24(s0)
     676:	e398                	sd	a4,0(a5)
     678:	fe843783          	ld	a5,-24(s0)
     67c:	73dc                	ld	a5,160(a5)
     67e:	853e                	mv	a0,a5
     680:	00000097          	auipc	ra,0x0
     684:	fd8080e7          	jalr	-40(ra) # 658 <find_preorder>
     688:	fe843783          	ld	a5,-24(s0)
     68c:	77dc                	ld	a5,168(a5)
     68e:	853e                	mv	a0,a5
     690:	00000097          	auipc	ra,0x0
     694:	fc8080e7          	jalr	-56(ra) # 658 <find_preorder>
     698:	0001                	nop
     69a:	60e2                	ld	ra,24(sp)
     69c:	6442                	ld	s0,16(sp)
     69e:	6105                	addi	sp,sp,32
     6a0:	8082                	ret

00000000000006a2 <thread_start_threading>:
     6a2:	1141                	addi	sp,sp,-16
     6a4:	e406                	sd	ra,8(sp)
     6a6:	e022                	sd	s0,0(sp)
     6a8:	0800                	addi	s0,sp,16
     6aa:	00001517          	auipc	a0,0x1
     6ae:	fbe50513          	addi	a0,a0,-66 # 1668 <env_st>
     6b2:	00001097          	auipc	ra,0x1
     6b6:	eb2080e7          	jalr	-334(ra) # 1564 <setjmp>
     6ba:	87aa                	mv	a5,a0
     6bc:	e791                	bnez	a5,6c8 <thread_start_threading+0x26>
     6be:	00000097          	auipc	ra,0x0
     6c2:	b0e080e7          	jalr	-1266(ra) # 1cc <dispatch>
     6c6:	a011                	j	6ca <thread_start_threading+0x28>
     6c8:	0001                	nop
     6ca:	60a2                	ld	ra,8(sp)
     6cc:	6402                	ld	s0,0(sp)
     6ce:	0141                	addi	sp,sp,16
     6d0:	8082                	ret

00000000000006d2 <f3>:
     6d2:	7179                	addi	sp,sp,-48
     6d4:	f406                	sd	ra,40(sp)
     6d6:	f022                	sd	s0,32(sp)
     6d8:	1800                	addi	s0,sp,48
     6da:	fca43c23          	sd	a0,-40(s0)
     6de:	6789                	lui	a5,0x2
     6e0:	71078793          	addi	a5,a5,1808 # 2710 <__global_pointer$+0x8e0>
     6e4:	fef42623          	sw	a5,-20(s0)
     6e8:	fec42783          	lw	a5,-20(s0)
     6ec:	0017871b          	addiw	a4,a5,1
     6f0:	fee42623          	sw	a4,-20(s0)
     6f4:	85be                	mv	a1,a5
     6f6:	00001517          	auipc	a0,0x1
     6fa:	eea50513          	addi	a0,a0,-278 # 15e0 <longjmp_1+0xa>
     6fe:	00001097          	auipc	ra,0x1
     702:	b36080e7          	jalr	-1226(ra) # 1234 <printf>
     706:	fec42783          	lw	a5,-20(s0)
     70a:	0007871b          	sext.w	a4,a5
     70e:	6789                	lui	a5,0x2
     710:	71578793          	addi	a5,a5,1813 # 2715 <__global_pointer$+0x8e5>
     714:	00f71663          	bne	a4,a5,720 <f3+0x4e>
     718:	00000097          	auipc	ra,0x0
     71c:	c6a080e7          	jalr	-918(ra) # 382 <thread_exit>
     720:	00000097          	auipc	ra,0x0
     724:	a6c080e7          	jalr	-1428(ra) # 18c <thread_yield>
     728:	b7c1                	j	6e8 <f3+0x16>

000000000000072a <f2>:
     72a:	7179                	addi	sp,sp,-48
     72c:	f406                	sd	ra,40(sp)
     72e:	f022                	sd	s0,32(sp)
     730:	1800                	addi	s0,sp,48
     732:	fca43c23          	sd	a0,-40(s0)
     736:	fe042623          	sw	zero,-20(s0)
     73a:	fec42783          	lw	a5,-20(s0)
     73e:	0017871b          	addiw	a4,a5,1
     742:	fee42623          	sw	a4,-20(s0)
     746:	85be                	mv	a1,a5
     748:	00001517          	auipc	a0,0x1
     74c:	ea850513          	addi	a0,a0,-344 # 15f0 <longjmp_1+0x1a>
     750:	00001097          	auipc	ra,0x1
     754:	ae4080e7          	jalr	-1308(ra) # 1234 <printf>
     758:	fec42783          	lw	a5,-20(s0)
     75c:	0007871b          	sext.w	a4,a5
     760:	47a9                	li	a5,10
     762:	00f71663          	bne	a4,a5,76e <f2+0x44>
     766:	00000097          	auipc	ra,0x0
     76a:	c1c080e7          	jalr	-996(ra) # 382 <thread_exit>
     76e:	00000097          	auipc	ra,0x0
     772:	a1e080e7          	jalr	-1506(ra) # 18c <thread_yield>
     776:	b7d1                	j	73a <f2+0x10>

0000000000000778 <f1>:
     778:	7139                	addi	sp,sp,-64
     77a:	fc06                	sd	ra,56(sp)
     77c:	f822                	sd	s0,48(sp)
     77e:	0080                	addi	s0,sp,64
     780:	fca43423          	sd	a0,-56(s0)
     784:	06400793          	li	a5,100
     788:	fef42623          	sw	a5,-20(s0)
     78c:	4581                	li	a1,0
     78e:	00000517          	auipc	a0,0x0
     792:	f9c50513          	addi	a0,a0,-100 # 72a <f2>
     796:	00000097          	auipc	ra,0x0
     79a:	86a080e7          	jalr	-1942(ra) # 0 <thread_create>
     79e:	fea43023          	sd	a0,-32(s0)
     7a2:	fe043503          	ld	a0,-32(s0)
     7a6:	00000097          	auipc	ra,0x0
     7aa:	904080e7          	jalr	-1788(ra) # aa <thread_add_runqueue>
     7ae:	4581                	li	a1,0
     7b0:	00000517          	auipc	a0,0x0
     7b4:	f2250513          	addi	a0,a0,-222 # 6d2 <f3>
     7b8:	00000097          	auipc	ra,0x0
     7bc:	848080e7          	jalr	-1976(ra) # 0 <thread_create>
     7c0:	fca43c23          	sd	a0,-40(s0)
     7c4:	fd843503          	ld	a0,-40(s0)
     7c8:	00000097          	auipc	ra,0x0
     7cc:	8e2080e7          	jalr	-1822(ra) # aa <thread_add_runqueue>
     7d0:	fec42783          	lw	a5,-20(s0)
     7d4:	0017871b          	addiw	a4,a5,1
     7d8:	fee42623          	sw	a4,-20(s0)
     7dc:	85be                	mv	a1,a5
     7de:	00001517          	auipc	a0,0x1
     7e2:	e2250513          	addi	a0,a0,-478 # 1600 <longjmp_1+0x2a>
     7e6:	00001097          	auipc	ra,0x1
     7ea:	a4e080e7          	jalr	-1458(ra) # 1234 <printf>
     7ee:	fec42783          	lw	a5,-20(s0)
     7f2:	0007871b          	sext.w	a4,a5
     7f6:	06e00793          	li	a5,110
     7fa:	00f71663          	bne	a4,a5,806 <f1+0x8e>
     7fe:	00000097          	auipc	ra,0x0
     802:	b84080e7          	jalr	-1148(ra) # 382 <thread_exit>
     806:	00000097          	auipc	ra,0x0
     80a:	986080e7          	jalr	-1658(ra) # 18c <thread_yield>
     80e:	b7c9                	j	7d0 <f1+0x58>

0000000000000810 <main>:
     810:	7179                	addi	sp,sp,-48
     812:	f406                	sd	ra,40(sp)
     814:	f022                	sd	s0,32(sp)
     816:	1800                	addi	s0,sp,48
     818:	87aa                	mv	a5,a0
     81a:	fcb43823          	sd	a1,-48(s0)
     81e:	fcf42e23          	sw	a5,-36(s0)
     822:	00001517          	auipc	a0,0x1
     826:	dee50513          	addi	a0,a0,-530 # 1610 <longjmp_1+0x3a>
     82a:	00001097          	auipc	ra,0x1
     82e:	a0a080e7          	jalr	-1526(ra) # 1234 <printf>
     832:	4581                	li	a1,0
     834:	00000517          	auipc	a0,0x0
     838:	f4450513          	addi	a0,a0,-188 # 778 <f1>
     83c:	fffff097          	auipc	ra,0xfffff
     840:	7c4080e7          	jalr	1988(ra) # 0 <thread_create>
     844:	fea43423          	sd	a0,-24(s0)
     848:	fe843503          	ld	a0,-24(s0)
     84c:	00000097          	auipc	ra,0x0
     850:	85e080e7          	jalr	-1954(ra) # aa <thread_add_runqueue>
     854:	00000097          	auipc	ra,0x0
     858:	e4e080e7          	jalr	-434(ra) # 6a2 <thread_start_threading>
     85c:	00001517          	auipc	a0,0x1
     860:	dbc50513          	addi	a0,a0,-580 # 1618 <longjmp_1+0x42>
     864:	00001097          	auipc	ra,0x1
     868:	9d0080e7          	jalr	-1584(ra) # 1234 <printf>
     86c:	4501                	li	a0,0
     86e:	00000097          	auipc	ra,0x0
     872:	498080e7          	jalr	1176(ra) # d06 <exit>

0000000000000876 <strcpy>:
     876:	7179                	addi	sp,sp,-48
     878:	f422                	sd	s0,40(sp)
     87a:	1800                	addi	s0,sp,48
     87c:	fca43c23          	sd	a0,-40(s0)
     880:	fcb43823          	sd	a1,-48(s0)
     884:	fd843783          	ld	a5,-40(s0)
     888:	fef43423          	sd	a5,-24(s0)
     88c:	0001                	nop
     88e:	fd043703          	ld	a4,-48(s0)
     892:	00170793          	addi	a5,a4,1
     896:	fcf43823          	sd	a5,-48(s0)
     89a:	fd843783          	ld	a5,-40(s0)
     89e:	00178693          	addi	a3,a5,1
     8a2:	fcd43c23          	sd	a3,-40(s0)
     8a6:	00074703          	lbu	a4,0(a4)
     8aa:	00e78023          	sb	a4,0(a5)
     8ae:	0007c783          	lbu	a5,0(a5)
     8b2:	fff1                	bnez	a5,88e <strcpy+0x18>
     8b4:	fe843783          	ld	a5,-24(s0)
     8b8:	853e                	mv	a0,a5
     8ba:	7422                	ld	s0,40(sp)
     8bc:	6145                	addi	sp,sp,48
     8be:	8082                	ret

00000000000008c0 <strcmp>:
     8c0:	1101                	addi	sp,sp,-32
     8c2:	ec22                	sd	s0,24(sp)
     8c4:	1000                	addi	s0,sp,32
     8c6:	fea43423          	sd	a0,-24(s0)
     8ca:	feb43023          	sd	a1,-32(s0)
     8ce:	a819                	j	8e4 <strcmp+0x24>
     8d0:	fe843783          	ld	a5,-24(s0)
     8d4:	0785                	addi	a5,a5,1
     8d6:	fef43423          	sd	a5,-24(s0)
     8da:	fe043783          	ld	a5,-32(s0)
     8de:	0785                	addi	a5,a5,1
     8e0:	fef43023          	sd	a5,-32(s0)
     8e4:	fe843783          	ld	a5,-24(s0)
     8e8:	0007c783          	lbu	a5,0(a5)
     8ec:	cb99                	beqz	a5,902 <strcmp+0x42>
     8ee:	fe843783          	ld	a5,-24(s0)
     8f2:	0007c703          	lbu	a4,0(a5)
     8f6:	fe043783          	ld	a5,-32(s0)
     8fa:	0007c783          	lbu	a5,0(a5)
     8fe:	fcf709e3          	beq	a4,a5,8d0 <strcmp+0x10>
     902:	fe843783          	ld	a5,-24(s0)
     906:	0007c783          	lbu	a5,0(a5)
     90a:	0007871b          	sext.w	a4,a5
     90e:	fe043783          	ld	a5,-32(s0)
     912:	0007c783          	lbu	a5,0(a5)
     916:	2781                	sext.w	a5,a5
     918:	40f707bb          	subw	a5,a4,a5
     91c:	2781                	sext.w	a5,a5
     91e:	853e                	mv	a0,a5
     920:	6462                	ld	s0,24(sp)
     922:	6105                	addi	sp,sp,32
     924:	8082                	ret

0000000000000926 <strlen>:
     926:	7179                	addi	sp,sp,-48
     928:	f422                	sd	s0,40(sp)
     92a:	1800                	addi	s0,sp,48
     92c:	fca43c23          	sd	a0,-40(s0)
     930:	fe042623          	sw	zero,-20(s0)
     934:	a031                	j	940 <strlen+0x1a>
     936:	fec42783          	lw	a5,-20(s0)
     93a:	2785                	addiw	a5,a5,1
     93c:	fef42623          	sw	a5,-20(s0)
     940:	fec42783          	lw	a5,-20(s0)
     944:	fd843703          	ld	a4,-40(s0)
     948:	97ba                	add	a5,a5,a4
     94a:	0007c783          	lbu	a5,0(a5)
     94e:	f7e5                	bnez	a5,936 <strlen+0x10>
     950:	fec42783          	lw	a5,-20(s0)
     954:	853e                	mv	a0,a5
     956:	7422                	ld	s0,40(sp)
     958:	6145                	addi	sp,sp,48
     95a:	8082                	ret

000000000000095c <memset>:
     95c:	7179                	addi	sp,sp,-48
     95e:	f422                	sd	s0,40(sp)
     960:	1800                	addi	s0,sp,48
     962:	fca43c23          	sd	a0,-40(s0)
     966:	87ae                	mv	a5,a1
     968:	8732                	mv	a4,a2
     96a:	fcf42a23          	sw	a5,-44(s0)
     96e:	87ba                	mv	a5,a4
     970:	fcf42823          	sw	a5,-48(s0)
     974:	fd843783          	ld	a5,-40(s0)
     978:	fef43023          	sd	a5,-32(s0)
     97c:	fe042623          	sw	zero,-20(s0)
     980:	a00d                	j	9a2 <memset+0x46>
     982:	fec42783          	lw	a5,-20(s0)
     986:	fe043703          	ld	a4,-32(s0)
     98a:	97ba                	add	a5,a5,a4
     98c:	fd442703          	lw	a4,-44(s0)
     990:	0ff77713          	andi	a4,a4,255
     994:	00e78023          	sb	a4,0(a5)
     998:	fec42783          	lw	a5,-20(s0)
     99c:	2785                	addiw	a5,a5,1
     99e:	fef42623          	sw	a5,-20(s0)
     9a2:	fec42703          	lw	a4,-20(s0)
     9a6:	fd042783          	lw	a5,-48(s0)
     9aa:	2781                	sext.w	a5,a5
     9ac:	fcf76be3          	bltu	a4,a5,982 <memset+0x26>
     9b0:	fd843783          	ld	a5,-40(s0)
     9b4:	853e                	mv	a0,a5
     9b6:	7422                	ld	s0,40(sp)
     9b8:	6145                	addi	sp,sp,48
     9ba:	8082                	ret

00000000000009bc <strchr>:
     9bc:	1101                	addi	sp,sp,-32
     9be:	ec22                	sd	s0,24(sp)
     9c0:	1000                	addi	s0,sp,32
     9c2:	fea43423          	sd	a0,-24(s0)
     9c6:	87ae                	mv	a5,a1
     9c8:	fef403a3          	sb	a5,-25(s0)
     9cc:	a01d                	j	9f2 <strchr+0x36>
     9ce:	fe843783          	ld	a5,-24(s0)
     9d2:	0007c703          	lbu	a4,0(a5)
     9d6:	fe744783          	lbu	a5,-25(s0)
     9da:	0ff7f793          	andi	a5,a5,255
     9de:	00e79563          	bne	a5,a4,9e8 <strchr+0x2c>
     9e2:	fe843783          	ld	a5,-24(s0)
     9e6:	a821                	j	9fe <strchr+0x42>
     9e8:	fe843783          	ld	a5,-24(s0)
     9ec:	0785                	addi	a5,a5,1
     9ee:	fef43423          	sd	a5,-24(s0)
     9f2:	fe843783          	ld	a5,-24(s0)
     9f6:	0007c783          	lbu	a5,0(a5)
     9fa:	fbf1                	bnez	a5,9ce <strchr+0x12>
     9fc:	4781                	li	a5,0
     9fe:	853e                	mv	a0,a5
     a00:	6462                	ld	s0,24(sp)
     a02:	6105                	addi	sp,sp,32
     a04:	8082                	ret

0000000000000a06 <gets>:
     a06:	7179                	addi	sp,sp,-48
     a08:	f406                	sd	ra,40(sp)
     a0a:	f022                	sd	s0,32(sp)
     a0c:	1800                	addi	s0,sp,48
     a0e:	fca43c23          	sd	a0,-40(s0)
     a12:	87ae                	mv	a5,a1
     a14:	fcf42a23          	sw	a5,-44(s0)
     a18:	fe042623          	sw	zero,-20(s0)
     a1c:	a8a1                	j	a74 <gets+0x6e>
     a1e:	fe740793          	addi	a5,s0,-25
     a22:	4605                	li	a2,1
     a24:	85be                	mv	a1,a5
     a26:	4501                	li	a0,0
     a28:	00000097          	auipc	ra,0x0
     a2c:	2f6080e7          	jalr	758(ra) # d1e <read>
     a30:	87aa                	mv	a5,a0
     a32:	fef42423          	sw	a5,-24(s0)
     a36:	fe842783          	lw	a5,-24(s0)
     a3a:	2781                	sext.w	a5,a5
     a3c:	04f05763          	blez	a5,a8a <gets+0x84>
     a40:	fec42783          	lw	a5,-20(s0)
     a44:	0017871b          	addiw	a4,a5,1
     a48:	fee42623          	sw	a4,-20(s0)
     a4c:	873e                	mv	a4,a5
     a4e:	fd843783          	ld	a5,-40(s0)
     a52:	97ba                	add	a5,a5,a4
     a54:	fe744703          	lbu	a4,-25(s0)
     a58:	00e78023          	sb	a4,0(a5)
     a5c:	fe744783          	lbu	a5,-25(s0)
     a60:	873e                	mv	a4,a5
     a62:	47a9                	li	a5,10
     a64:	02f70463          	beq	a4,a5,a8c <gets+0x86>
     a68:	fe744783          	lbu	a5,-25(s0)
     a6c:	873e                	mv	a4,a5
     a6e:	47b5                	li	a5,13
     a70:	00f70e63          	beq	a4,a5,a8c <gets+0x86>
     a74:	fec42783          	lw	a5,-20(s0)
     a78:	2785                	addiw	a5,a5,1
     a7a:	0007871b          	sext.w	a4,a5
     a7e:	fd442783          	lw	a5,-44(s0)
     a82:	2781                	sext.w	a5,a5
     a84:	f8f74de3          	blt	a4,a5,a1e <gets+0x18>
     a88:	a011                	j	a8c <gets+0x86>
     a8a:	0001                	nop
     a8c:	fec42783          	lw	a5,-20(s0)
     a90:	fd843703          	ld	a4,-40(s0)
     a94:	97ba                	add	a5,a5,a4
     a96:	00078023          	sb	zero,0(a5)
     a9a:	fd843783          	ld	a5,-40(s0)
     a9e:	853e                	mv	a0,a5
     aa0:	70a2                	ld	ra,40(sp)
     aa2:	7402                	ld	s0,32(sp)
     aa4:	6145                	addi	sp,sp,48
     aa6:	8082                	ret

0000000000000aa8 <stat>:
     aa8:	7179                	addi	sp,sp,-48
     aaa:	f406                	sd	ra,40(sp)
     aac:	f022                	sd	s0,32(sp)
     aae:	1800                	addi	s0,sp,48
     ab0:	fca43c23          	sd	a0,-40(s0)
     ab4:	fcb43823          	sd	a1,-48(s0)
     ab8:	4581                	li	a1,0
     aba:	fd843503          	ld	a0,-40(s0)
     abe:	00000097          	auipc	ra,0x0
     ac2:	288080e7          	jalr	648(ra) # d46 <open>
     ac6:	87aa                	mv	a5,a0
     ac8:	fef42623          	sw	a5,-20(s0)
     acc:	fec42783          	lw	a5,-20(s0)
     ad0:	2781                	sext.w	a5,a5
     ad2:	0007d463          	bgez	a5,ada <stat+0x32>
     ad6:	57fd                	li	a5,-1
     ad8:	a035                	j	b04 <stat+0x5c>
     ada:	fec42783          	lw	a5,-20(s0)
     ade:	fd043583          	ld	a1,-48(s0)
     ae2:	853e                	mv	a0,a5
     ae4:	00000097          	auipc	ra,0x0
     ae8:	27a080e7          	jalr	634(ra) # d5e <fstat>
     aec:	87aa                	mv	a5,a0
     aee:	fef42423          	sw	a5,-24(s0)
     af2:	fec42783          	lw	a5,-20(s0)
     af6:	853e                	mv	a0,a5
     af8:	00000097          	auipc	ra,0x0
     afc:	236080e7          	jalr	566(ra) # d2e <close>
     b00:	fe842783          	lw	a5,-24(s0)
     b04:	853e                	mv	a0,a5
     b06:	70a2                	ld	ra,40(sp)
     b08:	7402                	ld	s0,32(sp)
     b0a:	6145                	addi	sp,sp,48
     b0c:	8082                	ret

0000000000000b0e <atoi>:
     b0e:	7179                	addi	sp,sp,-48
     b10:	f422                	sd	s0,40(sp)
     b12:	1800                	addi	s0,sp,48
     b14:	fca43c23          	sd	a0,-40(s0)
     b18:	fe042623          	sw	zero,-20(s0)
     b1c:	a815                	j	b50 <atoi+0x42>
     b1e:	fec42703          	lw	a4,-20(s0)
     b22:	87ba                	mv	a5,a4
     b24:	0027979b          	slliw	a5,a5,0x2
     b28:	9fb9                	addw	a5,a5,a4
     b2a:	0017979b          	slliw	a5,a5,0x1
     b2e:	0007871b          	sext.w	a4,a5
     b32:	fd843783          	ld	a5,-40(s0)
     b36:	00178693          	addi	a3,a5,1
     b3a:	fcd43c23          	sd	a3,-40(s0)
     b3e:	0007c783          	lbu	a5,0(a5)
     b42:	2781                	sext.w	a5,a5
     b44:	9fb9                	addw	a5,a5,a4
     b46:	2781                	sext.w	a5,a5
     b48:	fd07879b          	addiw	a5,a5,-48
     b4c:	fef42623          	sw	a5,-20(s0)
     b50:	fd843783          	ld	a5,-40(s0)
     b54:	0007c783          	lbu	a5,0(a5)
     b58:	873e                	mv	a4,a5
     b5a:	02f00793          	li	a5,47
     b5e:	00e7fb63          	bgeu	a5,a4,b74 <atoi+0x66>
     b62:	fd843783          	ld	a5,-40(s0)
     b66:	0007c783          	lbu	a5,0(a5)
     b6a:	873e                	mv	a4,a5
     b6c:	03900793          	li	a5,57
     b70:	fae7f7e3          	bgeu	a5,a4,b1e <atoi+0x10>
     b74:	fec42783          	lw	a5,-20(s0)
     b78:	853e                	mv	a0,a5
     b7a:	7422                	ld	s0,40(sp)
     b7c:	6145                	addi	sp,sp,48
     b7e:	8082                	ret

0000000000000b80 <memmove>:
     b80:	7139                	addi	sp,sp,-64
     b82:	fc22                	sd	s0,56(sp)
     b84:	0080                	addi	s0,sp,64
     b86:	fca43c23          	sd	a0,-40(s0)
     b8a:	fcb43823          	sd	a1,-48(s0)
     b8e:	87b2                	mv	a5,a2
     b90:	fcf42623          	sw	a5,-52(s0)
     b94:	fd843783          	ld	a5,-40(s0)
     b98:	fef43423          	sd	a5,-24(s0)
     b9c:	fd043783          	ld	a5,-48(s0)
     ba0:	fef43023          	sd	a5,-32(s0)
     ba4:	fe043703          	ld	a4,-32(s0)
     ba8:	fe843783          	ld	a5,-24(s0)
     bac:	02e7fc63          	bgeu	a5,a4,be4 <memmove+0x64>
     bb0:	a00d                	j	bd2 <memmove+0x52>
     bb2:	fe043703          	ld	a4,-32(s0)
     bb6:	00170793          	addi	a5,a4,1
     bba:	fef43023          	sd	a5,-32(s0)
     bbe:	fe843783          	ld	a5,-24(s0)
     bc2:	00178693          	addi	a3,a5,1
     bc6:	fed43423          	sd	a3,-24(s0)
     bca:	00074703          	lbu	a4,0(a4)
     bce:	00e78023          	sb	a4,0(a5)
     bd2:	fcc42783          	lw	a5,-52(s0)
     bd6:	fff7871b          	addiw	a4,a5,-1
     bda:	fce42623          	sw	a4,-52(s0)
     bde:	fcf04ae3          	bgtz	a5,bb2 <memmove+0x32>
     be2:	a891                	j	c36 <memmove+0xb6>
     be4:	fcc42783          	lw	a5,-52(s0)
     be8:	fe843703          	ld	a4,-24(s0)
     bec:	97ba                	add	a5,a5,a4
     bee:	fef43423          	sd	a5,-24(s0)
     bf2:	fcc42783          	lw	a5,-52(s0)
     bf6:	fe043703          	ld	a4,-32(s0)
     bfa:	97ba                	add	a5,a5,a4
     bfc:	fef43023          	sd	a5,-32(s0)
     c00:	a01d                	j	c26 <memmove+0xa6>
     c02:	fe043783          	ld	a5,-32(s0)
     c06:	17fd                	addi	a5,a5,-1
     c08:	fef43023          	sd	a5,-32(s0)
     c0c:	fe843783          	ld	a5,-24(s0)
     c10:	17fd                	addi	a5,a5,-1
     c12:	fef43423          	sd	a5,-24(s0)
     c16:	fe043783          	ld	a5,-32(s0)
     c1a:	0007c703          	lbu	a4,0(a5)
     c1e:	fe843783          	ld	a5,-24(s0)
     c22:	00e78023          	sb	a4,0(a5)
     c26:	fcc42783          	lw	a5,-52(s0)
     c2a:	fff7871b          	addiw	a4,a5,-1
     c2e:	fce42623          	sw	a4,-52(s0)
     c32:	fcf048e3          	bgtz	a5,c02 <memmove+0x82>
     c36:	fd843783          	ld	a5,-40(s0)
     c3a:	853e                	mv	a0,a5
     c3c:	7462                	ld	s0,56(sp)
     c3e:	6121                	addi	sp,sp,64
     c40:	8082                	ret

0000000000000c42 <memcmp>:
     c42:	7139                	addi	sp,sp,-64
     c44:	fc22                	sd	s0,56(sp)
     c46:	0080                	addi	s0,sp,64
     c48:	fca43c23          	sd	a0,-40(s0)
     c4c:	fcb43823          	sd	a1,-48(s0)
     c50:	87b2                	mv	a5,a2
     c52:	fcf42623          	sw	a5,-52(s0)
     c56:	fd843783          	ld	a5,-40(s0)
     c5a:	fef43423          	sd	a5,-24(s0)
     c5e:	fd043783          	ld	a5,-48(s0)
     c62:	fef43023          	sd	a5,-32(s0)
     c66:	a0a1                	j	cae <memcmp+0x6c>
     c68:	fe843783          	ld	a5,-24(s0)
     c6c:	0007c703          	lbu	a4,0(a5)
     c70:	fe043783          	ld	a5,-32(s0)
     c74:	0007c783          	lbu	a5,0(a5)
     c78:	02f70163          	beq	a4,a5,c9a <memcmp+0x58>
     c7c:	fe843783          	ld	a5,-24(s0)
     c80:	0007c783          	lbu	a5,0(a5)
     c84:	0007871b          	sext.w	a4,a5
     c88:	fe043783          	ld	a5,-32(s0)
     c8c:	0007c783          	lbu	a5,0(a5)
     c90:	2781                	sext.w	a5,a5
     c92:	40f707bb          	subw	a5,a4,a5
     c96:	2781                	sext.w	a5,a5
     c98:	a01d                	j	cbe <memcmp+0x7c>
     c9a:	fe843783          	ld	a5,-24(s0)
     c9e:	0785                	addi	a5,a5,1
     ca0:	fef43423          	sd	a5,-24(s0)
     ca4:	fe043783          	ld	a5,-32(s0)
     ca8:	0785                	addi	a5,a5,1
     caa:	fef43023          	sd	a5,-32(s0)
     cae:	fcc42783          	lw	a5,-52(s0)
     cb2:	fff7871b          	addiw	a4,a5,-1
     cb6:	fce42623          	sw	a4,-52(s0)
     cba:	f7dd                	bnez	a5,c68 <memcmp+0x26>
     cbc:	4781                	li	a5,0
     cbe:	853e                	mv	a0,a5
     cc0:	7462                	ld	s0,56(sp)
     cc2:	6121                	addi	sp,sp,64
     cc4:	8082                	ret

0000000000000cc6 <memcpy>:
     cc6:	7179                	addi	sp,sp,-48
     cc8:	f406                	sd	ra,40(sp)
     cca:	f022                	sd	s0,32(sp)
     ccc:	1800                	addi	s0,sp,48
     cce:	fea43423          	sd	a0,-24(s0)
     cd2:	feb43023          	sd	a1,-32(s0)
     cd6:	87b2                	mv	a5,a2
     cd8:	fcf42e23          	sw	a5,-36(s0)
     cdc:	fdc42783          	lw	a5,-36(s0)
     ce0:	863e                	mv	a2,a5
     ce2:	fe043583          	ld	a1,-32(s0)
     ce6:	fe843503          	ld	a0,-24(s0)
     cea:	00000097          	auipc	ra,0x0
     cee:	e96080e7          	jalr	-362(ra) # b80 <memmove>
     cf2:	87aa                	mv	a5,a0
     cf4:	853e                	mv	a0,a5
     cf6:	70a2                	ld	ra,40(sp)
     cf8:	7402                	ld	s0,32(sp)
     cfa:	6145                	addi	sp,sp,48
     cfc:	8082                	ret

0000000000000cfe <fork>:
     cfe:	4885                	li	a7,1
     d00:	00000073          	ecall
     d04:	8082                	ret

0000000000000d06 <exit>:
     d06:	4889                	li	a7,2
     d08:	00000073          	ecall
     d0c:	8082                	ret

0000000000000d0e <wait>:
     d0e:	488d                	li	a7,3
     d10:	00000073          	ecall
     d14:	8082                	ret

0000000000000d16 <pipe>:
     d16:	4891                	li	a7,4
     d18:	00000073          	ecall
     d1c:	8082                	ret

0000000000000d1e <read>:
     d1e:	4895                	li	a7,5
     d20:	00000073          	ecall
     d24:	8082                	ret

0000000000000d26 <write>:
     d26:	48c1                	li	a7,16
     d28:	00000073          	ecall
     d2c:	8082                	ret

0000000000000d2e <close>:
     d2e:	48d5                	li	a7,21
     d30:	00000073          	ecall
     d34:	8082                	ret

0000000000000d36 <kill>:
     d36:	4899                	li	a7,6
     d38:	00000073          	ecall
     d3c:	8082                	ret

0000000000000d3e <exec>:
     d3e:	489d                	li	a7,7
     d40:	00000073          	ecall
     d44:	8082                	ret

0000000000000d46 <open>:
     d46:	48bd                	li	a7,15
     d48:	00000073          	ecall
     d4c:	8082                	ret

0000000000000d4e <mknod>:
     d4e:	48c5                	li	a7,17
     d50:	00000073          	ecall
     d54:	8082                	ret

0000000000000d56 <unlink>:
     d56:	48c9                	li	a7,18
     d58:	00000073          	ecall
     d5c:	8082                	ret

0000000000000d5e <fstat>:
     d5e:	48a1                	li	a7,8
     d60:	00000073          	ecall
     d64:	8082                	ret

0000000000000d66 <link>:
     d66:	48cd                	li	a7,19
     d68:	00000073          	ecall
     d6c:	8082                	ret

0000000000000d6e <mkdir>:
     d6e:	48d1                	li	a7,20
     d70:	00000073          	ecall
     d74:	8082                	ret

0000000000000d76 <chdir>:
     d76:	48a5                	li	a7,9
     d78:	00000073          	ecall
     d7c:	8082                	ret

0000000000000d7e <dup>:
     d7e:	48a9                	li	a7,10
     d80:	00000073          	ecall
     d84:	8082                	ret

0000000000000d86 <getpid>:
     d86:	48ad                	li	a7,11
     d88:	00000073          	ecall
     d8c:	8082                	ret

0000000000000d8e <sbrk>:
     d8e:	48b1                	li	a7,12
     d90:	00000073          	ecall
     d94:	8082                	ret

0000000000000d96 <sleep>:
     d96:	48b5                	li	a7,13
     d98:	00000073          	ecall
     d9c:	8082                	ret

0000000000000d9e <uptime>:
     d9e:	48b9                	li	a7,14
     da0:	00000073          	ecall
     da4:	8082                	ret

0000000000000da6 <putc>:
     da6:	1101                	addi	sp,sp,-32
     da8:	ec06                	sd	ra,24(sp)
     daa:	e822                	sd	s0,16(sp)
     dac:	1000                	addi	s0,sp,32
     dae:	87aa                	mv	a5,a0
     db0:	872e                	mv	a4,a1
     db2:	fef42623          	sw	a5,-20(s0)
     db6:	87ba                	mv	a5,a4
     db8:	fef405a3          	sb	a5,-21(s0)
     dbc:	feb40713          	addi	a4,s0,-21
     dc0:	fec42783          	lw	a5,-20(s0)
     dc4:	4605                	li	a2,1
     dc6:	85ba                	mv	a1,a4
     dc8:	853e                	mv	a0,a5
     dca:	00000097          	auipc	ra,0x0
     dce:	f5c080e7          	jalr	-164(ra) # d26 <write>
     dd2:	0001                	nop
     dd4:	60e2                	ld	ra,24(sp)
     dd6:	6442                	ld	s0,16(sp)
     dd8:	6105                	addi	sp,sp,32
     dda:	8082                	ret

0000000000000ddc <printint>:
     ddc:	7139                	addi	sp,sp,-64
     dde:	fc06                	sd	ra,56(sp)
     de0:	f822                	sd	s0,48(sp)
     de2:	0080                	addi	s0,sp,64
     de4:	87aa                	mv	a5,a0
     de6:	8736                	mv	a4,a3
     de8:	fcf42623          	sw	a5,-52(s0)
     dec:	87ae                	mv	a5,a1
     dee:	fcf42423          	sw	a5,-56(s0)
     df2:	87b2                	mv	a5,a2
     df4:	fcf42223          	sw	a5,-60(s0)
     df8:	87ba                	mv	a5,a4
     dfa:	fcf42023          	sw	a5,-64(s0)
     dfe:	fe042423          	sw	zero,-24(s0)
     e02:	fc042783          	lw	a5,-64(s0)
     e06:	2781                	sext.w	a5,a5
     e08:	c38d                	beqz	a5,e2a <printint+0x4e>
     e0a:	fc842783          	lw	a5,-56(s0)
     e0e:	2781                	sext.w	a5,a5
     e10:	0007dd63          	bgez	a5,e2a <printint+0x4e>
     e14:	4785                	li	a5,1
     e16:	fef42423          	sw	a5,-24(s0)
     e1a:	fc842783          	lw	a5,-56(s0)
     e1e:	40f007bb          	negw	a5,a5
     e22:	2781                	sext.w	a5,a5
     e24:	fef42223          	sw	a5,-28(s0)
     e28:	a029                	j	e32 <printint+0x56>
     e2a:	fc842783          	lw	a5,-56(s0)
     e2e:	fef42223          	sw	a5,-28(s0)
     e32:	fe042623          	sw	zero,-20(s0)
     e36:	fc442783          	lw	a5,-60(s0)
     e3a:	fe442703          	lw	a4,-28(s0)
     e3e:	02f777bb          	remuw	a5,a4,a5
     e42:	0007861b          	sext.w	a2,a5
     e46:	fec42783          	lw	a5,-20(s0)
     e4a:	0017871b          	addiw	a4,a5,1
     e4e:	fee42623          	sw	a4,-20(s0)
     e52:	00000697          	auipc	a3,0x0
     e56:	7de68693          	addi	a3,a3,2014 # 1630 <digits>
     e5a:	02061713          	slli	a4,a2,0x20
     e5e:	9301                	srli	a4,a4,0x20
     e60:	9736                	add	a4,a4,a3
     e62:	00074703          	lbu	a4,0(a4)
     e66:	ff040693          	addi	a3,s0,-16
     e6a:	97b6                	add	a5,a5,a3
     e6c:	fee78023          	sb	a4,-32(a5)
     e70:	fc442783          	lw	a5,-60(s0)
     e74:	fe442703          	lw	a4,-28(s0)
     e78:	02f757bb          	divuw	a5,a4,a5
     e7c:	fef42223          	sw	a5,-28(s0)
     e80:	fe442783          	lw	a5,-28(s0)
     e84:	2781                	sext.w	a5,a5
     e86:	fbc5                	bnez	a5,e36 <printint+0x5a>
     e88:	fe842783          	lw	a5,-24(s0)
     e8c:	2781                	sext.w	a5,a5
     e8e:	cf95                	beqz	a5,eca <printint+0xee>
     e90:	fec42783          	lw	a5,-20(s0)
     e94:	0017871b          	addiw	a4,a5,1
     e98:	fee42623          	sw	a4,-20(s0)
     e9c:	ff040713          	addi	a4,s0,-16
     ea0:	97ba                	add	a5,a5,a4
     ea2:	02d00713          	li	a4,45
     ea6:	fee78023          	sb	a4,-32(a5)
     eaa:	a005                	j	eca <printint+0xee>
     eac:	fec42783          	lw	a5,-20(s0)
     eb0:	ff040713          	addi	a4,s0,-16
     eb4:	97ba                	add	a5,a5,a4
     eb6:	fe07c703          	lbu	a4,-32(a5)
     eba:	fcc42783          	lw	a5,-52(s0)
     ebe:	85ba                	mv	a1,a4
     ec0:	853e                	mv	a0,a5
     ec2:	00000097          	auipc	ra,0x0
     ec6:	ee4080e7          	jalr	-284(ra) # da6 <putc>
     eca:	fec42783          	lw	a5,-20(s0)
     ece:	37fd                	addiw	a5,a5,-1
     ed0:	fef42623          	sw	a5,-20(s0)
     ed4:	fec42783          	lw	a5,-20(s0)
     ed8:	2781                	sext.w	a5,a5
     eda:	fc07d9e3          	bgez	a5,eac <printint+0xd0>
     ede:	0001                	nop
     ee0:	0001                	nop
     ee2:	70e2                	ld	ra,56(sp)
     ee4:	7442                	ld	s0,48(sp)
     ee6:	6121                	addi	sp,sp,64
     ee8:	8082                	ret

0000000000000eea <printptr>:
     eea:	7179                	addi	sp,sp,-48
     eec:	f406                	sd	ra,40(sp)
     eee:	f022                	sd	s0,32(sp)
     ef0:	1800                	addi	s0,sp,48
     ef2:	87aa                	mv	a5,a0
     ef4:	fcb43823          	sd	a1,-48(s0)
     ef8:	fcf42e23          	sw	a5,-36(s0)
     efc:	fdc42783          	lw	a5,-36(s0)
     f00:	03000593          	li	a1,48
     f04:	853e                	mv	a0,a5
     f06:	00000097          	auipc	ra,0x0
     f0a:	ea0080e7          	jalr	-352(ra) # da6 <putc>
     f0e:	fdc42783          	lw	a5,-36(s0)
     f12:	07800593          	li	a1,120
     f16:	853e                	mv	a0,a5
     f18:	00000097          	auipc	ra,0x0
     f1c:	e8e080e7          	jalr	-370(ra) # da6 <putc>
     f20:	fe042623          	sw	zero,-20(s0)
     f24:	a82d                	j	f5e <printptr+0x74>
     f26:	fd043783          	ld	a5,-48(s0)
     f2a:	93f1                	srli	a5,a5,0x3c
     f2c:	00000717          	auipc	a4,0x0
     f30:	70470713          	addi	a4,a4,1796 # 1630 <digits>
     f34:	97ba                	add	a5,a5,a4
     f36:	0007c703          	lbu	a4,0(a5)
     f3a:	fdc42783          	lw	a5,-36(s0)
     f3e:	85ba                	mv	a1,a4
     f40:	853e                	mv	a0,a5
     f42:	00000097          	auipc	ra,0x0
     f46:	e64080e7          	jalr	-412(ra) # da6 <putc>
     f4a:	fec42783          	lw	a5,-20(s0)
     f4e:	2785                	addiw	a5,a5,1
     f50:	fef42623          	sw	a5,-20(s0)
     f54:	fd043783          	ld	a5,-48(s0)
     f58:	0792                	slli	a5,a5,0x4
     f5a:	fcf43823          	sd	a5,-48(s0)
     f5e:	fec42783          	lw	a5,-20(s0)
     f62:	873e                	mv	a4,a5
     f64:	47bd                	li	a5,15
     f66:	fce7f0e3          	bgeu	a5,a4,f26 <printptr+0x3c>
     f6a:	0001                	nop
     f6c:	0001                	nop
     f6e:	70a2                	ld	ra,40(sp)
     f70:	7402                	ld	s0,32(sp)
     f72:	6145                	addi	sp,sp,48
     f74:	8082                	ret

0000000000000f76 <vprintf>:
     f76:	715d                	addi	sp,sp,-80
     f78:	e486                	sd	ra,72(sp)
     f7a:	e0a2                	sd	s0,64(sp)
     f7c:	0880                	addi	s0,sp,80
     f7e:	87aa                	mv	a5,a0
     f80:	fcb43023          	sd	a1,-64(s0)
     f84:	fac43c23          	sd	a2,-72(s0)
     f88:	fcf42623          	sw	a5,-52(s0)
     f8c:	fe042023          	sw	zero,-32(s0)
     f90:	fe042223          	sw	zero,-28(s0)
     f94:	a42d                	j	11be <vprintf+0x248>
     f96:	fe442783          	lw	a5,-28(s0)
     f9a:	fc043703          	ld	a4,-64(s0)
     f9e:	97ba                	add	a5,a5,a4
     fa0:	0007c783          	lbu	a5,0(a5)
     fa4:	fcf42e23          	sw	a5,-36(s0)
     fa8:	fe042783          	lw	a5,-32(s0)
     fac:	2781                	sext.w	a5,a5
     fae:	eb9d                	bnez	a5,fe4 <vprintf+0x6e>
     fb0:	fdc42783          	lw	a5,-36(s0)
     fb4:	0007871b          	sext.w	a4,a5
     fb8:	02500793          	li	a5,37
     fbc:	00f71763          	bne	a4,a5,fca <vprintf+0x54>
     fc0:	02500793          	li	a5,37
     fc4:	fef42023          	sw	a5,-32(s0)
     fc8:	a2f5                	j	11b4 <vprintf+0x23e>
     fca:	fdc42783          	lw	a5,-36(s0)
     fce:	0ff7f713          	andi	a4,a5,255
     fd2:	fcc42783          	lw	a5,-52(s0)
     fd6:	85ba                	mv	a1,a4
     fd8:	853e                	mv	a0,a5
     fda:	00000097          	auipc	ra,0x0
     fde:	dcc080e7          	jalr	-564(ra) # da6 <putc>
     fe2:	aac9                	j	11b4 <vprintf+0x23e>
     fe4:	fe042783          	lw	a5,-32(s0)
     fe8:	0007871b          	sext.w	a4,a5
     fec:	02500793          	li	a5,37
     ff0:	1cf71263          	bne	a4,a5,11b4 <vprintf+0x23e>
     ff4:	fdc42783          	lw	a5,-36(s0)
     ff8:	0007871b          	sext.w	a4,a5
     ffc:	06400793          	li	a5,100
    1000:	02f71463          	bne	a4,a5,1028 <vprintf+0xb2>
    1004:	fb843783          	ld	a5,-72(s0)
    1008:	00878713          	addi	a4,a5,8
    100c:	fae43c23          	sd	a4,-72(s0)
    1010:	4398                	lw	a4,0(a5)
    1012:	fcc42783          	lw	a5,-52(s0)
    1016:	4685                	li	a3,1
    1018:	4629                	li	a2,10
    101a:	85ba                	mv	a1,a4
    101c:	853e                	mv	a0,a5
    101e:	00000097          	auipc	ra,0x0
    1022:	dbe080e7          	jalr	-578(ra) # ddc <printint>
    1026:	a269                	j	11b0 <vprintf+0x23a>
    1028:	fdc42783          	lw	a5,-36(s0)
    102c:	0007871b          	sext.w	a4,a5
    1030:	06c00793          	li	a5,108
    1034:	02f71663          	bne	a4,a5,1060 <vprintf+0xea>
    1038:	fb843783          	ld	a5,-72(s0)
    103c:	00878713          	addi	a4,a5,8
    1040:	fae43c23          	sd	a4,-72(s0)
    1044:	639c                	ld	a5,0(a5)
    1046:	0007871b          	sext.w	a4,a5
    104a:	fcc42783          	lw	a5,-52(s0)
    104e:	4681                	li	a3,0
    1050:	4629                	li	a2,10
    1052:	85ba                	mv	a1,a4
    1054:	853e                	mv	a0,a5
    1056:	00000097          	auipc	ra,0x0
    105a:	d86080e7          	jalr	-634(ra) # ddc <printint>
    105e:	aa89                	j	11b0 <vprintf+0x23a>
    1060:	fdc42783          	lw	a5,-36(s0)
    1064:	0007871b          	sext.w	a4,a5
    1068:	07800793          	li	a5,120
    106c:	02f71463          	bne	a4,a5,1094 <vprintf+0x11e>
    1070:	fb843783          	ld	a5,-72(s0)
    1074:	00878713          	addi	a4,a5,8
    1078:	fae43c23          	sd	a4,-72(s0)
    107c:	4398                	lw	a4,0(a5)
    107e:	fcc42783          	lw	a5,-52(s0)
    1082:	4681                	li	a3,0
    1084:	4641                	li	a2,16
    1086:	85ba                	mv	a1,a4
    1088:	853e                	mv	a0,a5
    108a:	00000097          	auipc	ra,0x0
    108e:	d52080e7          	jalr	-686(ra) # ddc <printint>
    1092:	aa39                	j	11b0 <vprintf+0x23a>
    1094:	fdc42783          	lw	a5,-36(s0)
    1098:	0007871b          	sext.w	a4,a5
    109c:	07000793          	li	a5,112
    10a0:	02f71263          	bne	a4,a5,10c4 <vprintf+0x14e>
    10a4:	fb843783          	ld	a5,-72(s0)
    10a8:	00878713          	addi	a4,a5,8
    10ac:	fae43c23          	sd	a4,-72(s0)
    10b0:	6398                	ld	a4,0(a5)
    10b2:	fcc42783          	lw	a5,-52(s0)
    10b6:	85ba                	mv	a1,a4
    10b8:	853e                	mv	a0,a5
    10ba:	00000097          	auipc	ra,0x0
    10be:	e30080e7          	jalr	-464(ra) # eea <printptr>
    10c2:	a0fd                	j	11b0 <vprintf+0x23a>
    10c4:	fdc42783          	lw	a5,-36(s0)
    10c8:	0007871b          	sext.w	a4,a5
    10cc:	07300793          	li	a5,115
    10d0:	04f71c63          	bne	a4,a5,1128 <vprintf+0x1b2>
    10d4:	fb843783          	ld	a5,-72(s0)
    10d8:	00878713          	addi	a4,a5,8
    10dc:	fae43c23          	sd	a4,-72(s0)
    10e0:	639c                	ld	a5,0(a5)
    10e2:	fef43423          	sd	a5,-24(s0)
    10e6:	fe843783          	ld	a5,-24(s0)
    10ea:	eb8d                	bnez	a5,111c <vprintf+0x1a6>
    10ec:	00000797          	auipc	a5,0x0
    10f0:	53c78793          	addi	a5,a5,1340 # 1628 <longjmp_1+0x52>
    10f4:	fef43423          	sd	a5,-24(s0)
    10f8:	a015                	j	111c <vprintf+0x1a6>
    10fa:	fe843783          	ld	a5,-24(s0)
    10fe:	0007c703          	lbu	a4,0(a5)
    1102:	fcc42783          	lw	a5,-52(s0)
    1106:	85ba                	mv	a1,a4
    1108:	853e                	mv	a0,a5
    110a:	00000097          	auipc	ra,0x0
    110e:	c9c080e7          	jalr	-868(ra) # da6 <putc>
    1112:	fe843783          	ld	a5,-24(s0)
    1116:	0785                	addi	a5,a5,1
    1118:	fef43423          	sd	a5,-24(s0)
    111c:	fe843783          	ld	a5,-24(s0)
    1120:	0007c783          	lbu	a5,0(a5)
    1124:	fbf9                	bnez	a5,10fa <vprintf+0x184>
    1126:	a069                	j	11b0 <vprintf+0x23a>
    1128:	fdc42783          	lw	a5,-36(s0)
    112c:	0007871b          	sext.w	a4,a5
    1130:	06300793          	li	a5,99
    1134:	02f71463          	bne	a4,a5,115c <vprintf+0x1e6>
    1138:	fb843783          	ld	a5,-72(s0)
    113c:	00878713          	addi	a4,a5,8
    1140:	fae43c23          	sd	a4,-72(s0)
    1144:	439c                	lw	a5,0(a5)
    1146:	0ff7f713          	andi	a4,a5,255
    114a:	fcc42783          	lw	a5,-52(s0)
    114e:	85ba                	mv	a1,a4
    1150:	853e                	mv	a0,a5
    1152:	00000097          	auipc	ra,0x0
    1156:	c54080e7          	jalr	-940(ra) # da6 <putc>
    115a:	a899                	j	11b0 <vprintf+0x23a>
    115c:	fdc42783          	lw	a5,-36(s0)
    1160:	0007871b          	sext.w	a4,a5
    1164:	02500793          	li	a5,37
    1168:	00f71f63          	bne	a4,a5,1186 <vprintf+0x210>
    116c:	fdc42783          	lw	a5,-36(s0)
    1170:	0ff7f713          	andi	a4,a5,255
    1174:	fcc42783          	lw	a5,-52(s0)
    1178:	85ba                	mv	a1,a4
    117a:	853e                	mv	a0,a5
    117c:	00000097          	auipc	ra,0x0
    1180:	c2a080e7          	jalr	-982(ra) # da6 <putc>
    1184:	a035                	j	11b0 <vprintf+0x23a>
    1186:	fcc42783          	lw	a5,-52(s0)
    118a:	02500593          	li	a1,37
    118e:	853e                	mv	a0,a5
    1190:	00000097          	auipc	ra,0x0
    1194:	c16080e7          	jalr	-1002(ra) # da6 <putc>
    1198:	fdc42783          	lw	a5,-36(s0)
    119c:	0ff7f713          	andi	a4,a5,255
    11a0:	fcc42783          	lw	a5,-52(s0)
    11a4:	85ba                	mv	a1,a4
    11a6:	853e                	mv	a0,a5
    11a8:	00000097          	auipc	ra,0x0
    11ac:	bfe080e7          	jalr	-1026(ra) # da6 <putc>
    11b0:	fe042023          	sw	zero,-32(s0)
    11b4:	fe442783          	lw	a5,-28(s0)
    11b8:	2785                	addiw	a5,a5,1
    11ba:	fef42223          	sw	a5,-28(s0)
    11be:	fe442783          	lw	a5,-28(s0)
    11c2:	fc043703          	ld	a4,-64(s0)
    11c6:	97ba                	add	a5,a5,a4
    11c8:	0007c783          	lbu	a5,0(a5)
    11cc:	dc0795e3          	bnez	a5,f96 <vprintf+0x20>
    11d0:	0001                	nop
    11d2:	0001                	nop
    11d4:	60a6                	ld	ra,72(sp)
    11d6:	6406                	ld	s0,64(sp)
    11d8:	6161                	addi	sp,sp,80
    11da:	8082                	ret

00000000000011dc <fprintf>:
    11dc:	7159                	addi	sp,sp,-112
    11de:	fc06                	sd	ra,56(sp)
    11e0:	f822                	sd	s0,48(sp)
    11e2:	0080                	addi	s0,sp,64
    11e4:	fcb43823          	sd	a1,-48(s0)
    11e8:	e010                	sd	a2,0(s0)
    11ea:	e414                	sd	a3,8(s0)
    11ec:	e818                	sd	a4,16(s0)
    11ee:	ec1c                	sd	a5,24(s0)
    11f0:	03043023          	sd	a6,32(s0)
    11f4:	03143423          	sd	a7,40(s0)
    11f8:	87aa                	mv	a5,a0
    11fa:	fcf42e23          	sw	a5,-36(s0)
    11fe:	03040793          	addi	a5,s0,48
    1202:	fcf43423          	sd	a5,-56(s0)
    1206:	fc843783          	ld	a5,-56(s0)
    120a:	fd078793          	addi	a5,a5,-48
    120e:	fef43423          	sd	a5,-24(s0)
    1212:	fe843703          	ld	a4,-24(s0)
    1216:	fdc42783          	lw	a5,-36(s0)
    121a:	863a                	mv	a2,a4
    121c:	fd043583          	ld	a1,-48(s0)
    1220:	853e                	mv	a0,a5
    1222:	00000097          	auipc	ra,0x0
    1226:	d54080e7          	jalr	-684(ra) # f76 <vprintf>
    122a:	0001                	nop
    122c:	70e2                	ld	ra,56(sp)
    122e:	7442                	ld	s0,48(sp)
    1230:	6165                	addi	sp,sp,112
    1232:	8082                	ret

0000000000001234 <printf>:
    1234:	7159                	addi	sp,sp,-112
    1236:	f406                	sd	ra,40(sp)
    1238:	f022                	sd	s0,32(sp)
    123a:	1800                	addi	s0,sp,48
    123c:	fca43c23          	sd	a0,-40(s0)
    1240:	e40c                	sd	a1,8(s0)
    1242:	e810                	sd	a2,16(s0)
    1244:	ec14                	sd	a3,24(s0)
    1246:	f018                	sd	a4,32(s0)
    1248:	f41c                	sd	a5,40(s0)
    124a:	03043823          	sd	a6,48(s0)
    124e:	03143c23          	sd	a7,56(s0)
    1252:	04040793          	addi	a5,s0,64
    1256:	fcf43823          	sd	a5,-48(s0)
    125a:	fd043783          	ld	a5,-48(s0)
    125e:	fc878793          	addi	a5,a5,-56
    1262:	fef43423          	sd	a5,-24(s0)
    1266:	fe843783          	ld	a5,-24(s0)
    126a:	863e                	mv	a2,a5
    126c:	fd843583          	ld	a1,-40(s0)
    1270:	4505                	li	a0,1
    1272:	00000097          	auipc	ra,0x0
    1276:	d04080e7          	jalr	-764(ra) # f76 <vprintf>
    127a:	0001                	nop
    127c:	70a2                	ld	ra,40(sp)
    127e:	7402                	ld	s0,32(sp)
    1280:	6165                	addi	sp,sp,112
    1282:	8082                	ret

0000000000001284 <free>:
    1284:	7179                	addi	sp,sp,-48
    1286:	f422                	sd	s0,40(sp)
    1288:	1800                	addi	s0,sp,48
    128a:	fca43c23          	sd	a0,-40(s0)
    128e:	fd843783          	ld	a5,-40(s0)
    1292:	17c1                	addi	a5,a5,-16
    1294:	fef43023          	sd	a5,-32(s0)
    1298:	00000797          	auipc	a5,0x0
    129c:	45078793          	addi	a5,a5,1104 # 16e8 <freep>
    12a0:	639c                	ld	a5,0(a5)
    12a2:	fef43423          	sd	a5,-24(s0)
    12a6:	a815                	j	12da <free+0x56>
    12a8:	fe843783          	ld	a5,-24(s0)
    12ac:	639c                	ld	a5,0(a5)
    12ae:	fe843703          	ld	a4,-24(s0)
    12b2:	00f76f63          	bltu	a4,a5,12d0 <free+0x4c>
    12b6:	fe043703          	ld	a4,-32(s0)
    12ba:	fe843783          	ld	a5,-24(s0)
    12be:	02e7eb63          	bltu	a5,a4,12f4 <free+0x70>
    12c2:	fe843783          	ld	a5,-24(s0)
    12c6:	639c                	ld	a5,0(a5)
    12c8:	fe043703          	ld	a4,-32(s0)
    12cc:	02f76463          	bltu	a4,a5,12f4 <free+0x70>
    12d0:	fe843783          	ld	a5,-24(s0)
    12d4:	639c                	ld	a5,0(a5)
    12d6:	fef43423          	sd	a5,-24(s0)
    12da:	fe043703          	ld	a4,-32(s0)
    12de:	fe843783          	ld	a5,-24(s0)
    12e2:	fce7f3e3          	bgeu	a5,a4,12a8 <free+0x24>
    12e6:	fe843783          	ld	a5,-24(s0)
    12ea:	639c                	ld	a5,0(a5)
    12ec:	fe043703          	ld	a4,-32(s0)
    12f0:	faf77ce3          	bgeu	a4,a5,12a8 <free+0x24>
    12f4:	fe043783          	ld	a5,-32(s0)
    12f8:	479c                	lw	a5,8(a5)
    12fa:	1782                	slli	a5,a5,0x20
    12fc:	9381                	srli	a5,a5,0x20
    12fe:	0792                	slli	a5,a5,0x4
    1300:	fe043703          	ld	a4,-32(s0)
    1304:	973e                	add	a4,a4,a5
    1306:	fe843783          	ld	a5,-24(s0)
    130a:	639c                	ld	a5,0(a5)
    130c:	02f71763          	bne	a4,a5,133a <free+0xb6>
    1310:	fe043783          	ld	a5,-32(s0)
    1314:	4798                	lw	a4,8(a5)
    1316:	fe843783          	ld	a5,-24(s0)
    131a:	639c                	ld	a5,0(a5)
    131c:	479c                	lw	a5,8(a5)
    131e:	9fb9                	addw	a5,a5,a4
    1320:	0007871b          	sext.w	a4,a5
    1324:	fe043783          	ld	a5,-32(s0)
    1328:	c798                	sw	a4,8(a5)
    132a:	fe843783          	ld	a5,-24(s0)
    132e:	639c                	ld	a5,0(a5)
    1330:	6398                	ld	a4,0(a5)
    1332:	fe043783          	ld	a5,-32(s0)
    1336:	e398                	sd	a4,0(a5)
    1338:	a039                	j	1346 <free+0xc2>
    133a:	fe843783          	ld	a5,-24(s0)
    133e:	6398                	ld	a4,0(a5)
    1340:	fe043783          	ld	a5,-32(s0)
    1344:	e398                	sd	a4,0(a5)
    1346:	fe843783          	ld	a5,-24(s0)
    134a:	479c                	lw	a5,8(a5)
    134c:	1782                	slli	a5,a5,0x20
    134e:	9381                	srli	a5,a5,0x20
    1350:	0792                	slli	a5,a5,0x4
    1352:	fe843703          	ld	a4,-24(s0)
    1356:	97ba                	add	a5,a5,a4
    1358:	fe043703          	ld	a4,-32(s0)
    135c:	02f71563          	bne	a4,a5,1386 <free+0x102>
    1360:	fe843783          	ld	a5,-24(s0)
    1364:	4798                	lw	a4,8(a5)
    1366:	fe043783          	ld	a5,-32(s0)
    136a:	479c                	lw	a5,8(a5)
    136c:	9fb9                	addw	a5,a5,a4
    136e:	0007871b          	sext.w	a4,a5
    1372:	fe843783          	ld	a5,-24(s0)
    1376:	c798                	sw	a4,8(a5)
    1378:	fe043783          	ld	a5,-32(s0)
    137c:	6398                	ld	a4,0(a5)
    137e:	fe843783          	ld	a5,-24(s0)
    1382:	e398                	sd	a4,0(a5)
    1384:	a031                	j	1390 <free+0x10c>
    1386:	fe843783          	ld	a5,-24(s0)
    138a:	fe043703          	ld	a4,-32(s0)
    138e:	e398                	sd	a4,0(a5)
    1390:	00000797          	auipc	a5,0x0
    1394:	35878793          	addi	a5,a5,856 # 16e8 <freep>
    1398:	fe843703          	ld	a4,-24(s0)
    139c:	e398                	sd	a4,0(a5)
    139e:	0001                	nop
    13a0:	7422                	ld	s0,40(sp)
    13a2:	6145                	addi	sp,sp,48
    13a4:	8082                	ret

00000000000013a6 <morecore>:
    13a6:	7179                	addi	sp,sp,-48
    13a8:	f406                	sd	ra,40(sp)
    13aa:	f022                	sd	s0,32(sp)
    13ac:	1800                	addi	s0,sp,48
    13ae:	87aa                	mv	a5,a0
    13b0:	fcf42e23          	sw	a5,-36(s0)
    13b4:	fdc42783          	lw	a5,-36(s0)
    13b8:	0007871b          	sext.w	a4,a5
    13bc:	6785                	lui	a5,0x1
    13be:	00f77563          	bgeu	a4,a5,13c8 <morecore+0x22>
    13c2:	6785                	lui	a5,0x1
    13c4:	fcf42e23          	sw	a5,-36(s0)
    13c8:	fdc42783          	lw	a5,-36(s0)
    13cc:	0047979b          	slliw	a5,a5,0x4
    13d0:	2781                	sext.w	a5,a5
    13d2:	2781                	sext.w	a5,a5
    13d4:	853e                	mv	a0,a5
    13d6:	00000097          	auipc	ra,0x0
    13da:	9b8080e7          	jalr	-1608(ra) # d8e <sbrk>
    13de:	fea43423          	sd	a0,-24(s0)
    13e2:	fe843703          	ld	a4,-24(s0)
    13e6:	57fd                	li	a5,-1
    13e8:	00f71463          	bne	a4,a5,13f0 <morecore+0x4a>
    13ec:	4781                	li	a5,0
    13ee:	a03d                	j	141c <morecore+0x76>
    13f0:	fe843783          	ld	a5,-24(s0)
    13f4:	fef43023          	sd	a5,-32(s0)
    13f8:	fe043783          	ld	a5,-32(s0)
    13fc:	fdc42703          	lw	a4,-36(s0)
    1400:	c798                	sw	a4,8(a5)
    1402:	fe043783          	ld	a5,-32(s0)
    1406:	07c1                	addi	a5,a5,16
    1408:	853e                	mv	a0,a5
    140a:	00000097          	auipc	ra,0x0
    140e:	e7a080e7          	jalr	-390(ra) # 1284 <free>
    1412:	00000797          	auipc	a5,0x0
    1416:	2d678793          	addi	a5,a5,726 # 16e8 <freep>
    141a:	639c                	ld	a5,0(a5)
    141c:	853e                	mv	a0,a5
    141e:	70a2                	ld	ra,40(sp)
    1420:	7402                	ld	s0,32(sp)
    1422:	6145                	addi	sp,sp,48
    1424:	8082                	ret

0000000000001426 <malloc>:
    1426:	7139                	addi	sp,sp,-64
    1428:	fc06                	sd	ra,56(sp)
    142a:	f822                	sd	s0,48(sp)
    142c:	0080                	addi	s0,sp,64
    142e:	87aa                	mv	a5,a0
    1430:	fcf42623          	sw	a5,-52(s0)
    1434:	fcc46783          	lwu	a5,-52(s0)
    1438:	07bd                	addi	a5,a5,15
    143a:	8391                	srli	a5,a5,0x4
    143c:	2781                	sext.w	a5,a5
    143e:	2785                	addiw	a5,a5,1
    1440:	fcf42e23          	sw	a5,-36(s0)
    1444:	00000797          	auipc	a5,0x0
    1448:	2a478793          	addi	a5,a5,676 # 16e8 <freep>
    144c:	639c                	ld	a5,0(a5)
    144e:	fef43023          	sd	a5,-32(s0)
    1452:	fe043783          	ld	a5,-32(s0)
    1456:	ef95                	bnez	a5,1492 <malloc+0x6c>
    1458:	00000797          	auipc	a5,0x0
    145c:	28078793          	addi	a5,a5,640 # 16d8 <base>
    1460:	fef43023          	sd	a5,-32(s0)
    1464:	00000797          	auipc	a5,0x0
    1468:	28478793          	addi	a5,a5,644 # 16e8 <freep>
    146c:	fe043703          	ld	a4,-32(s0)
    1470:	e398                	sd	a4,0(a5)
    1472:	00000797          	auipc	a5,0x0
    1476:	27678793          	addi	a5,a5,630 # 16e8 <freep>
    147a:	6398                	ld	a4,0(a5)
    147c:	00000797          	auipc	a5,0x0
    1480:	25c78793          	addi	a5,a5,604 # 16d8 <base>
    1484:	e398                	sd	a4,0(a5)
    1486:	00000797          	auipc	a5,0x0
    148a:	25278793          	addi	a5,a5,594 # 16d8 <base>
    148e:	0007a423          	sw	zero,8(a5)
    1492:	fe043783          	ld	a5,-32(s0)
    1496:	639c                	ld	a5,0(a5)
    1498:	fef43423          	sd	a5,-24(s0)
    149c:	fe843783          	ld	a5,-24(s0)
    14a0:	4798                	lw	a4,8(a5)
    14a2:	fdc42783          	lw	a5,-36(s0)
    14a6:	2781                	sext.w	a5,a5
    14a8:	06f76863          	bltu	a4,a5,1518 <malloc+0xf2>
    14ac:	fe843783          	ld	a5,-24(s0)
    14b0:	4798                	lw	a4,8(a5)
    14b2:	fdc42783          	lw	a5,-36(s0)
    14b6:	2781                	sext.w	a5,a5
    14b8:	00e79963          	bne	a5,a4,14ca <malloc+0xa4>
    14bc:	fe843783          	ld	a5,-24(s0)
    14c0:	6398                	ld	a4,0(a5)
    14c2:	fe043783          	ld	a5,-32(s0)
    14c6:	e398                	sd	a4,0(a5)
    14c8:	a82d                	j	1502 <malloc+0xdc>
    14ca:	fe843783          	ld	a5,-24(s0)
    14ce:	4798                	lw	a4,8(a5)
    14d0:	fdc42783          	lw	a5,-36(s0)
    14d4:	40f707bb          	subw	a5,a4,a5
    14d8:	0007871b          	sext.w	a4,a5
    14dc:	fe843783          	ld	a5,-24(s0)
    14e0:	c798                	sw	a4,8(a5)
    14e2:	fe843783          	ld	a5,-24(s0)
    14e6:	479c                	lw	a5,8(a5)
    14e8:	1782                	slli	a5,a5,0x20
    14ea:	9381                	srli	a5,a5,0x20
    14ec:	0792                	slli	a5,a5,0x4
    14ee:	fe843703          	ld	a4,-24(s0)
    14f2:	97ba                	add	a5,a5,a4
    14f4:	fef43423          	sd	a5,-24(s0)
    14f8:	fe843783          	ld	a5,-24(s0)
    14fc:	fdc42703          	lw	a4,-36(s0)
    1500:	c798                	sw	a4,8(a5)
    1502:	00000797          	auipc	a5,0x0
    1506:	1e678793          	addi	a5,a5,486 # 16e8 <freep>
    150a:	fe043703          	ld	a4,-32(s0)
    150e:	e398                	sd	a4,0(a5)
    1510:	fe843783          	ld	a5,-24(s0)
    1514:	07c1                	addi	a5,a5,16
    1516:	a091                	j	155a <malloc+0x134>
    1518:	00000797          	auipc	a5,0x0
    151c:	1d078793          	addi	a5,a5,464 # 16e8 <freep>
    1520:	639c                	ld	a5,0(a5)
    1522:	fe843703          	ld	a4,-24(s0)
    1526:	02f71063          	bne	a4,a5,1546 <malloc+0x120>
    152a:	fdc42783          	lw	a5,-36(s0)
    152e:	853e                	mv	a0,a5
    1530:	00000097          	auipc	ra,0x0
    1534:	e76080e7          	jalr	-394(ra) # 13a6 <morecore>
    1538:	fea43423          	sd	a0,-24(s0)
    153c:	fe843783          	ld	a5,-24(s0)
    1540:	e399                	bnez	a5,1546 <malloc+0x120>
    1542:	4781                	li	a5,0
    1544:	a819                	j	155a <malloc+0x134>
    1546:	fe843783          	ld	a5,-24(s0)
    154a:	fef43023          	sd	a5,-32(s0)
    154e:	fe843783          	ld	a5,-24(s0)
    1552:	639c                	ld	a5,0(a5)
    1554:	fef43423          	sd	a5,-24(s0)
    1558:	b791                	j	149c <malloc+0x76>
    155a:	853e                	mv	a0,a5
    155c:	70e2                	ld	ra,56(sp)
    155e:	7442                	ld	s0,48(sp)
    1560:	6121                	addi	sp,sp,64
    1562:	8082                	ret

0000000000001564 <setjmp>:
    1564:	e100                	sd	s0,0(a0)
    1566:	e504                	sd	s1,8(a0)
    1568:	01253823          	sd	s2,16(a0)
    156c:	01353c23          	sd	s3,24(a0)
    1570:	03453023          	sd	s4,32(a0)
    1574:	03553423          	sd	s5,40(a0)
    1578:	03653823          	sd	s6,48(a0)
    157c:	03753c23          	sd	s7,56(a0)
    1580:	05853023          	sd	s8,64(a0)
    1584:	05953423          	sd	s9,72(a0)
    1588:	05a53823          	sd	s10,80(a0)
    158c:	05b53c23          	sd	s11,88(a0)
    1590:	06153023          	sd	ra,96(a0)
    1594:	06253423          	sd	sp,104(a0)
    1598:	4501                	li	a0,0
    159a:	8082                	ret

000000000000159c <longjmp>:
    159c:	6100                	ld	s0,0(a0)
    159e:	6504                	ld	s1,8(a0)
    15a0:	01053903          	ld	s2,16(a0)
    15a4:	01853983          	ld	s3,24(a0)
    15a8:	02053a03          	ld	s4,32(a0)
    15ac:	02853a83          	ld	s5,40(a0)
    15b0:	03053b03          	ld	s6,48(a0)
    15b4:	03853b83          	ld	s7,56(a0)
    15b8:	04053c03          	ld	s8,64(a0)
    15bc:	04853c83          	ld	s9,72(a0)
    15c0:	05053d03          	ld	s10,80(a0)
    15c4:	05853d83          	ld	s11,88(a0)
    15c8:	06053083          	ld	ra,96(a0)
    15cc:	06853103          	ld	sp,104(a0)
    15d0:	c199                	beqz	a1,15d6 <longjmp_1>
    15d2:	852e                	mv	a0,a1
    15d4:	8082                	ret

00000000000015d6 <longjmp_1>:
    15d6:	4505                	li	a0,1
    15d8:	8082                	ret
