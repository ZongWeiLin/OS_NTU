
user/_mp1-1:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <f5>:
#include "user/threads.h"

#define NULL 0

void f5(void *arg)
{
       0:	7179                	addi	sp,sp,-48
       2:	f406                	sd	ra,40(sp)
       4:	f022                	sd	s0,32(sp)
       6:	ec26                	sd	s1,24(sp)
       8:	e84a                	sd	s2,16(sp)
       a:	e44e                	sd	s3,8(sp)
       c:	e052                	sd	s4,0(sp)
       e:	1800                	addi	s0,sp,48
    int i = 10;
    while(1) {
        printf("thread 5: %d\n", i++);
      10:	45a9                	li	a1,10
      12:	00001517          	auipc	a0,0x1
      16:	3ae50513          	addi	a0,a0,942 # 13c0 <thread_start_threading+0x2e>
      1a:	00001097          	auipc	ra,0x1
      1e:	c2e080e7          	jalr	-978(ra) # c48 <printf>
      22:	44ad                	li	s1,11
      24:	00001a17          	auipc	s4,0x1
      28:	39ca0a13          	addi	s4,s4,924 # 13c0 <thread_start_threading+0x2e>
        if (i == 17) {
      2c:	49c5                	li	s3,17
      2e:	a011                	j	32 <f5+0x32>
        printf("thread 5: %d\n", i++);
      30:	84ca                	mv	s1,s2
            thread_exit();
        }
        thread_yield();
      32:	00001097          	auipc	ra,0x1
      36:	1e8080e7          	jalr	488(ra) # 121a <thread_yield>
        printf("thread 5: %d\n", i++);
      3a:	0014891b          	addiw	s2,s1,1
      3e:	85a6                	mv	a1,s1
      40:	8552                	mv	a0,s4
      42:	00001097          	auipc	ra,0x1
      46:	c06080e7          	jalr	-1018(ra) # c48 <printf>
        if (i == 17) {
      4a:	ff3913e3          	bne	s2,s3,30 <f5+0x30>
            thread_exit();
      4e:	00001097          	auipc	ra,0x1
      52:	204080e7          	jalr	516(ra) # 1252 <thread_exit>
      56:	bfe9                	j	30 <f5+0x30>

0000000000000058 <f4>:
    }
}

void f4(void *arg)
{
      58:	7179                	addi	sp,sp,-48
      5a:	f406                	sd	ra,40(sp)
      5c:	f022                	sd	s0,32(sp)
      5e:	ec26                	sd	s1,24(sp)
      60:	e84a                	sd	s2,16(sp)
      62:	e44e                	sd	s3,8(sp)
      64:	e052                	sd	s4,0(sp)
      66:	1800                	addi	s0,sp,48
    int i = 1000;

    while(1) {
        printf("thread 4: %d\n", i++);
      68:	3e800593          	li	a1,1000
      6c:	00001517          	auipc	a0,0x1
      70:	36450513          	addi	a0,a0,868 # 13d0 <thread_start_threading+0x3e>
      74:	00001097          	auipc	ra,0x1
      78:	bd4080e7          	jalr	-1068(ra) # c48 <printf>
      7c:	3e900493          	li	s1,1001
      80:	00001a17          	auipc	s4,0x1
      84:	350a0a13          	addi	s4,s4,848 # 13d0 <thread_start_threading+0x3e>
        if (i == 1011) {
      88:	3f300993          	li	s3,1011
      8c:	a011                	j	90 <f4+0x38>
        printf("thread 4: %d\n", i++);
      8e:	84ca                	mv	s1,s2
            thread_exit();
        }
        thread_yield();
      90:	00001097          	auipc	ra,0x1
      94:	18a080e7          	jalr	394(ra) # 121a <thread_yield>
        printf("thread 4: %d\n", i++);
      98:	0014891b          	addiw	s2,s1,1
      9c:	85a6                	mv	a1,s1
      9e:	8552                	mv	a0,s4
      a0:	00001097          	auipc	ra,0x1
      a4:	ba8080e7          	jalr	-1112(ra) # c48 <printf>
        if (i == 1011) {
      a8:	ff3913e3          	bne	s2,s3,8e <f4+0x36>
            thread_exit();
      ac:	00001097          	auipc	ra,0x1
      b0:	1a6080e7          	jalr	422(ra) # 1252 <thread_exit>
      b4:	bfe9                	j	8e <f4+0x36>

00000000000000b6 <f2>:
        thread_yield();
    }
}

void f2(void *arg)
{
      b6:	7179                	addi	sp,sp,-48
      b8:	f406                	sd	ra,40(sp)
      ba:	f022                	sd	s0,32(sp)
      bc:	ec26                	sd	s1,24(sp)
      be:	e84a                	sd	s2,16(sp)
      c0:	e44e                	sd	s3,8(sp)
      c2:	e052                	sd	s4,0(sp)
      c4:	1800                	addi	s0,sp,48
    int i = 0;

    while(1) {
        printf("thread 2: %d\n", i++);
      c6:	4581                	li	a1,0
      c8:	00001517          	auipc	a0,0x1
      cc:	31850513          	addi	a0,a0,792 # 13e0 <thread_start_threading+0x4e>
      d0:	00001097          	auipc	ra,0x1
      d4:	b78080e7          	jalr	-1160(ra) # c48 <printf>
      d8:	4485                	li	s1,1
      da:	00001a17          	auipc	s4,0x1
      de:	306a0a13          	addi	s4,s4,774 # 13e0 <thread_start_threading+0x4e>
        if (i == 9) {
      e2:	49a5                	li	s3,9
      e4:	a011                	j	e8 <f2+0x32>
        printf("thread 2: %d\n", i++);
      e6:	84ca                	mv	s1,s2
            thread_exit();
        }
        thread_yield();
      e8:	00001097          	auipc	ra,0x1
      ec:	132080e7          	jalr	306(ra) # 121a <thread_yield>
        printf("thread 2: %d\n", i++);
      f0:	0014891b          	addiw	s2,s1,1
      f4:	85a6                	mv	a1,s1
      f6:	8552                	mv	a0,s4
      f8:	00001097          	auipc	ra,0x1
      fc:	b50080e7          	jalr	-1200(ra) # c48 <printf>
        if (i == 9) {
     100:	ff3913e3          	bne	s2,s3,e6 <f2+0x30>
            thread_exit();
     104:	00001097          	auipc	ra,0x1
     108:	14e080e7          	jalr	334(ra) # 1252 <thread_exit>
     10c:	bfe9                	j	e6 <f2+0x30>

000000000000010e <f3>:
{
     10e:	7179                	addi	sp,sp,-48
     110:	f406                	sd	ra,40(sp)
     112:	f022                	sd	s0,32(sp)
     114:	ec26                	sd	s1,24(sp)
     116:	e84a                	sd	s2,16(sp)
     118:	e44e                	sd	s3,8(sp)
     11a:	e052                	sd	s4,0(sp)
     11c:	1800                	addi	s0,sp,48
    struct thread *t4 = thread_create(f4, NULL);
     11e:	4581                	li	a1,0
     120:	00000517          	auipc	a0,0x0
     124:	f3850513          	addi	a0,a0,-200 # 58 <f4>
     128:	00001097          	auipc	ra,0x1
     12c:	ec6080e7          	jalr	-314(ra) # fee <thread_create>
    thread_add_runqueue(t4);
     130:	00001097          	auipc	ra,0x1
     134:	f22080e7          	jalr	-222(ra) # 1052 <thread_add_runqueue>
    struct thread *t5 = thread_create(f5, NULL);
     138:	4581                	li	a1,0
     13a:	00000517          	auipc	a0,0x0
     13e:	ec650513          	addi	a0,a0,-314 # 0 <f5>
     142:	00001097          	auipc	ra,0x1
     146:	eac080e7          	jalr	-340(ra) # fee <thread_create>
    thread_add_runqueue(t5);
     14a:	00001097          	auipc	ra,0x1
     14e:	f08080e7          	jalr	-248(ra) # 1052 <thread_add_runqueue>
        printf("thread 3: %d\n", i++);
     152:	6489                	lui	s1,0x2
     154:	71048593          	addi	a1,s1,1808 # 2710 <__global_pointer$+0xae0>
     158:	00001517          	auipc	a0,0x1
     15c:	29850513          	addi	a0,a0,664 # 13f0 <thread_start_threading+0x5e>
     160:	00001097          	auipc	ra,0x1
     164:	ae8080e7          	jalr	-1304(ra) # c48 <printf>
     168:	71148493          	addi	s1,s1,1809
     16c:	00001a17          	auipc	s4,0x1
     170:	284a0a13          	addi	s4,s4,644 # 13f0 <thread_start_threading+0x5e>
        if (i == 10003) {
     174:	6989                	lui	s3,0x2
     176:	71398993          	addi	s3,s3,1811 # 2713 <__global_pointer$+0xae3>
     17a:	a011                	j	17e <f3+0x70>
        printf("thread 3: %d\n", i++);
     17c:	84ca                	mv	s1,s2
        thread_yield();
     17e:	00001097          	auipc	ra,0x1
     182:	09c080e7          	jalr	156(ra) # 121a <thread_yield>
        printf("thread 3: %d\n", i++);
     186:	0014891b          	addiw	s2,s1,1
     18a:	85a6                	mv	a1,s1
     18c:	8552                	mv	a0,s4
     18e:	00001097          	auipc	ra,0x1
     192:	aba080e7          	jalr	-1350(ra) # c48 <printf>
        if (i == 10003) {
     196:	ff3913e3          	bne	s2,s3,17c <f3+0x6e>
            thread_exit();
     19a:	00001097          	auipc	ra,0x1
     19e:	0b8080e7          	jalr	184(ra) # 1252 <thread_exit>
     1a2:	bfe9                	j	17c <f3+0x6e>

00000000000001a4 <f1>:
    }
}

void f1(void *arg)
{
     1a4:	7179                	addi	sp,sp,-48
     1a6:	f406                	sd	ra,40(sp)
     1a8:	f022                	sd	s0,32(sp)
     1aa:	ec26                	sd	s1,24(sp)
     1ac:	e84a                	sd	s2,16(sp)
     1ae:	e44e                	sd	s3,8(sp)
     1b0:	e052                	sd	s4,0(sp)
     1b2:	1800                	addi	s0,sp,48
    int i = 100;

    struct thread *t2 = thread_create(f2, NULL);
     1b4:	4581                	li	a1,0
     1b6:	00000517          	auipc	a0,0x0
     1ba:	f0050513          	addi	a0,a0,-256 # b6 <f2>
     1be:	00001097          	auipc	ra,0x1
     1c2:	e30080e7          	jalr	-464(ra) # fee <thread_create>
    thread_add_runqueue(t2);
     1c6:	00001097          	auipc	ra,0x1
     1ca:	e8c080e7          	jalr	-372(ra) # 1052 <thread_add_runqueue>
    struct thread *t3 = thread_create(f3, NULL);
     1ce:	4581                	li	a1,0
     1d0:	00000517          	auipc	a0,0x0
     1d4:	f3e50513          	addi	a0,a0,-194 # 10e <f3>
     1d8:	00001097          	auipc	ra,0x1
     1dc:	e16080e7          	jalr	-490(ra) # fee <thread_create>
    thread_add_runqueue(t3);
     1e0:	00001097          	auipc	ra,0x1
     1e4:	e72080e7          	jalr	-398(ra) # 1052 <thread_add_runqueue>
    
    while(1) {
        printf("thread 1: %d\n", i++);
     1e8:	06400593          	li	a1,100
     1ec:	00001517          	auipc	a0,0x1
     1f0:	21450513          	addi	a0,a0,532 # 1400 <thread_start_threading+0x6e>
     1f4:	00001097          	auipc	ra,0x1
     1f8:	a54080e7          	jalr	-1452(ra) # c48 <printf>
     1fc:	06500493          	li	s1,101
     200:	00001a17          	auipc	s4,0x1
     204:	200a0a13          	addi	s4,s4,512 # 1400 <thread_start_threading+0x6e>
        if (i == 105) {
     208:	06900993          	li	s3,105
     20c:	a011                	j	210 <f1+0x6c>
        printf("thread 1: %d\n", i++);
     20e:	84ca                	mv	s1,s2
            thread_exit();
        }
        thread_yield();
     210:	00001097          	auipc	ra,0x1
     214:	00a080e7          	jalr	10(ra) # 121a <thread_yield>
        printf("thread 1: %d\n", i++);
     218:	0014891b          	addiw	s2,s1,1
     21c:	85a6                	mv	a1,s1
     21e:	8552                	mv	a0,s4
     220:	00001097          	auipc	ra,0x1
     224:	a28080e7          	jalr	-1496(ra) # c48 <printf>
        if (i == 105) {
     228:	ff3913e3          	bne	s2,s3,20e <f1+0x6a>
            thread_exit();
     22c:	00001097          	auipc	ra,0x1
     230:	026080e7          	jalr	38(ra) # 1252 <thread_exit>
     234:	bfe9                	j	20e <f1+0x6a>

0000000000000236 <main>:
    }
}

int main(int argc, char **argv)
{
     236:	1141                	addi	sp,sp,-16
     238:	e406                	sd	ra,8(sp)
     23a:	e022                	sd	s0,0(sp)
     23c:	0800                	addi	s0,sp,16
    printf("mp1-1\n");
     23e:	00001517          	auipc	a0,0x1
     242:	1d250513          	addi	a0,a0,466 # 1410 <thread_start_threading+0x7e>
     246:	00001097          	auipc	ra,0x1
     24a:	a02080e7          	jalr	-1534(ra) # c48 <printf>
    struct thread *t1 = thread_create(f1, NULL);
     24e:	4581                	li	a1,0
     250:	00000517          	auipc	a0,0x0
     254:	f5450513          	addi	a0,a0,-172 # 1a4 <f1>
     258:	00001097          	auipc	ra,0x1
     25c:	d96080e7          	jalr	-618(ra) # fee <thread_create>
    thread_add_runqueue(t1);
     260:	00001097          	auipc	ra,0x1
     264:	df2080e7          	jalr	-526(ra) # 1052 <thread_add_runqueue>
    thread_start_threading();
     268:	00001097          	auipc	ra,0x1
     26c:	12a080e7          	jalr	298(ra) # 1392 <thread_start_threading>
    printf("\nexited\n");
     270:	00001517          	auipc	a0,0x1
     274:	1a850513          	addi	a0,a0,424 # 1418 <thread_start_threading+0x86>
     278:	00001097          	auipc	ra,0x1
     27c:	9d0080e7          	jalr	-1584(ra) # c48 <printf>
    exit(0);
     280:	4501                	li	a0,0
     282:	00000097          	auipc	ra,0x0
     286:	498080e7          	jalr	1176(ra) # 71a <exit>

000000000000028a <strcpy>:
     28a:	7179                	addi	sp,sp,-48
     28c:	f422                	sd	s0,40(sp)
     28e:	1800                	addi	s0,sp,48
     290:	fca43c23          	sd	a0,-40(s0)
     294:	fcb43823          	sd	a1,-48(s0)
     298:	fd843783          	ld	a5,-40(s0)
     29c:	fef43423          	sd	a5,-24(s0)
     2a0:	0001                	nop
     2a2:	fd043703          	ld	a4,-48(s0)
     2a6:	00170793          	addi	a5,a4,1
     2aa:	fcf43823          	sd	a5,-48(s0)
     2ae:	fd843783          	ld	a5,-40(s0)
     2b2:	00178693          	addi	a3,a5,1
     2b6:	fcd43c23          	sd	a3,-40(s0)
     2ba:	00074703          	lbu	a4,0(a4)
     2be:	00e78023          	sb	a4,0(a5)
     2c2:	0007c783          	lbu	a5,0(a5)
     2c6:	fff1                	bnez	a5,2a2 <strcpy+0x18>
     2c8:	fe843783          	ld	a5,-24(s0)
     2cc:	853e                	mv	a0,a5
     2ce:	7422                	ld	s0,40(sp)
     2d0:	6145                	addi	sp,sp,48
     2d2:	8082                	ret

00000000000002d4 <strcmp>:
     2d4:	1101                	addi	sp,sp,-32
     2d6:	ec22                	sd	s0,24(sp)
     2d8:	1000                	addi	s0,sp,32
     2da:	fea43423          	sd	a0,-24(s0)
     2de:	feb43023          	sd	a1,-32(s0)
     2e2:	a819                	j	2f8 <strcmp+0x24>
     2e4:	fe843783          	ld	a5,-24(s0)
     2e8:	0785                	addi	a5,a5,1
     2ea:	fef43423          	sd	a5,-24(s0)
     2ee:	fe043783          	ld	a5,-32(s0)
     2f2:	0785                	addi	a5,a5,1
     2f4:	fef43023          	sd	a5,-32(s0)
     2f8:	fe843783          	ld	a5,-24(s0)
     2fc:	0007c783          	lbu	a5,0(a5)
     300:	cb99                	beqz	a5,316 <strcmp+0x42>
     302:	fe843783          	ld	a5,-24(s0)
     306:	0007c703          	lbu	a4,0(a5)
     30a:	fe043783          	ld	a5,-32(s0)
     30e:	0007c783          	lbu	a5,0(a5)
     312:	fcf709e3          	beq	a4,a5,2e4 <strcmp+0x10>
     316:	fe843783          	ld	a5,-24(s0)
     31a:	0007c783          	lbu	a5,0(a5)
     31e:	0007871b          	sext.w	a4,a5
     322:	fe043783          	ld	a5,-32(s0)
     326:	0007c783          	lbu	a5,0(a5)
     32a:	2781                	sext.w	a5,a5
     32c:	40f707bb          	subw	a5,a4,a5
     330:	2781                	sext.w	a5,a5
     332:	853e                	mv	a0,a5
     334:	6462                	ld	s0,24(sp)
     336:	6105                	addi	sp,sp,32
     338:	8082                	ret

000000000000033a <strlen>:
     33a:	7179                	addi	sp,sp,-48
     33c:	f422                	sd	s0,40(sp)
     33e:	1800                	addi	s0,sp,48
     340:	fca43c23          	sd	a0,-40(s0)
     344:	fe042623          	sw	zero,-20(s0)
     348:	a031                	j	354 <strlen+0x1a>
     34a:	fec42783          	lw	a5,-20(s0)
     34e:	2785                	addiw	a5,a5,1
     350:	fef42623          	sw	a5,-20(s0)
     354:	fec42783          	lw	a5,-20(s0)
     358:	fd843703          	ld	a4,-40(s0)
     35c:	97ba                	add	a5,a5,a4
     35e:	0007c783          	lbu	a5,0(a5)
     362:	f7e5                	bnez	a5,34a <strlen+0x10>
     364:	fec42783          	lw	a5,-20(s0)
     368:	853e                	mv	a0,a5
     36a:	7422                	ld	s0,40(sp)
     36c:	6145                	addi	sp,sp,48
     36e:	8082                	ret

0000000000000370 <memset>:
     370:	7179                	addi	sp,sp,-48
     372:	f422                	sd	s0,40(sp)
     374:	1800                	addi	s0,sp,48
     376:	fca43c23          	sd	a0,-40(s0)
     37a:	87ae                	mv	a5,a1
     37c:	8732                	mv	a4,a2
     37e:	fcf42a23          	sw	a5,-44(s0)
     382:	87ba                	mv	a5,a4
     384:	fcf42823          	sw	a5,-48(s0)
     388:	fd843783          	ld	a5,-40(s0)
     38c:	fef43023          	sd	a5,-32(s0)
     390:	fe042623          	sw	zero,-20(s0)
     394:	a00d                	j	3b6 <memset+0x46>
     396:	fec42783          	lw	a5,-20(s0)
     39a:	fe043703          	ld	a4,-32(s0)
     39e:	97ba                	add	a5,a5,a4
     3a0:	fd442703          	lw	a4,-44(s0)
     3a4:	0ff77713          	andi	a4,a4,255
     3a8:	00e78023          	sb	a4,0(a5)
     3ac:	fec42783          	lw	a5,-20(s0)
     3b0:	2785                	addiw	a5,a5,1
     3b2:	fef42623          	sw	a5,-20(s0)
     3b6:	fec42703          	lw	a4,-20(s0)
     3ba:	fd042783          	lw	a5,-48(s0)
     3be:	2781                	sext.w	a5,a5
     3c0:	fcf76be3          	bltu	a4,a5,396 <memset+0x26>
     3c4:	fd843783          	ld	a5,-40(s0)
     3c8:	853e                	mv	a0,a5
     3ca:	7422                	ld	s0,40(sp)
     3cc:	6145                	addi	sp,sp,48
     3ce:	8082                	ret

00000000000003d0 <strchr>:
     3d0:	1101                	addi	sp,sp,-32
     3d2:	ec22                	sd	s0,24(sp)
     3d4:	1000                	addi	s0,sp,32
     3d6:	fea43423          	sd	a0,-24(s0)
     3da:	87ae                	mv	a5,a1
     3dc:	fef403a3          	sb	a5,-25(s0)
     3e0:	a01d                	j	406 <strchr+0x36>
     3e2:	fe843783          	ld	a5,-24(s0)
     3e6:	0007c703          	lbu	a4,0(a5)
     3ea:	fe744783          	lbu	a5,-25(s0)
     3ee:	0ff7f793          	andi	a5,a5,255
     3f2:	00e79563          	bne	a5,a4,3fc <strchr+0x2c>
     3f6:	fe843783          	ld	a5,-24(s0)
     3fa:	a821                	j	412 <strchr+0x42>
     3fc:	fe843783          	ld	a5,-24(s0)
     400:	0785                	addi	a5,a5,1
     402:	fef43423          	sd	a5,-24(s0)
     406:	fe843783          	ld	a5,-24(s0)
     40a:	0007c783          	lbu	a5,0(a5)
     40e:	fbf1                	bnez	a5,3e2 <strchr+0x12>
     410:	4781                	li	a5,0
     412:	853e                	mv	a0,a5
     414:	6462                	ld	s0,24(sp)
     416:	6105                	addi	sp,sp,32
     418:	8082                	ret

000000000000041a <gets>:
     41a:	7179                	addi	sp,sp,-48
     41c:	f406                	sd	ra,40(sp)
     41e:	f022                	sd	s0,32(sp)
     420:	1800                	addi	s0,sp,48
     422:	fca43c23          	sd	a0,-40(s0)
     426:	87ae                	mv	a5,a1
     428:	fcf42a23          	sw	a5,-44(s0)
     42c:	fe042623          	sw	zero,-20(s0)
     430:	a8a1                	j	488 <gets+0x6e>
     432:	fe740793          	addi	a5,s0,-25
     436:	4605                	li	a2,1
     438:	85be                	mv	a1,a5
     43a:	4501                	li	a0,0
     43c:	00000097          	auipc	ra,0x0
     440:	2f6080e7          	jalr	758(ra) # 732 <read>
     444:	87aa                	mv	a5,a0
     446:	fef42423          	sw	a5,-24(s0)
     44a:	fe842783          	lw	a5,-24(s0)
     44e:	2781                	sext.w	a5,a5
     450:	04f05763          	blez	a5,49e <gets+0x84>
     454:	fec42783          	lw	a5,-20(s0)
     458:	0017871b          	addiw	a4,a5,1
     45c:	fee42623          	sw	a4,-20(s0)
     460:	873e                	mv	a4,a5
     462:	fd843783          	ld	a5,-40(s0)
     466:	97ba                	add	a5,a5,a4
     468:	fe744703          	lbu	a4,-25(s0)
     46c:	00e78023          	sb	a4,0(a5)
     470:	fe744783          	lbu	a5,-25(s0)
     474:	873e                	mv	a4,a5
     476:	47a9                	li	a5,10
     478:	02f70463          	beq	a4,a5,4a0 <gets+0x86>
     47c:	fe744783          	lbu	a5,-25(s0)
     480:	873e                	mv	a4,a5
     482:	47b5                	li	a5,13
     484:	00f70e63          	beq	a4,a5,4a0 <gets+0x86>
     488:	fec42783          	lw	a5,-20(s0)
     48c:	2785                	addiw	a5,a5,1
     48e:	0007871b          	sext.w	a4,a5
     492:	fd442783          	lw	a5,-44(s0)
     496:	2781                	sext.w	a5,a5
     498:	f8f74de3          	blt	a4,a5,432 <gets+0x18>
     49c:	a011                	j	4a0 <gets+0x86>
     49e:	0001                	nop
     4a0:	fec42783          	lw	a5,-20(s0)
     4a4:	fd843703          	ld	a4,-40(s0)
     4a8:	97ba                	add	a5,a5,a4
     4aa:	00078023          	sb	zero,0(a5)
     4ae:	fd843783          	ld	a5,-40(s0)
     4b2:	853e                	mv	a0,a5
     4b4:	70a2                	ld	ra,40(sp)
     4b6:	7402                	ld	s0,32(sp)
     4b8:	6145                	addi	sp,sp,48
     4ba:	8082                	ret

00000000000004bc <stat>:
     4bc:	7179                	addi	sp,sp,-48
     4be:	f406                	sd	ra,40(sp)
     4c0:	f022                	sd	s0,32(sp)
     4c2:	1800                	addi	s0,sp,48
     4c4:	fca43c23          	sd	a0,-40(s0)
     4c8:	fcb43823          	sd	a1,-48(s0)
     4cc:	4581                	li	a1,0
     4ce:	fd843503          	ld	a0,-40(s0)
     4d2:	00000097          	auipc	ra,0x0
     4d6:	288080e7          	jalr	648(ra) # 75a <open>
     4da:	87aa                	mv	a5,a0
     4dc:	fef42623          	sw	a5,-20(s0)
     4e0:	fec42783          	lw	a5,-20(s0)
     4e4:	2781                	sext.w	a5,a5
     4e6:	0007d463          	bgez	a5,4ee <stat+0x32>
     4ea:	57fd                	li	a5,-1
     4ec:	a035                	j	518 <stat+0x5c>
     4ee:	fec42783          	lw	a5,-20(s0)
     4f2:	fd043583          	ld	a1,-48(s0)
     4f6:	853e                	mv	a0,a5
     4f8:	00000097          	auipc	ra,0x0
     4fc:	27a080e7          	jalr	634(ra) # 772 <fstat>
     500:	87aa                	mv	a5,a0
     502:	fef42423          	sw	a5,-24(s0)
     506:	fec42783          	lw	a5,-20(s0)
     50a:	853e                	mv	a0,a5
     50c:	00000097          	auipc	ra,0x0
     510:	236080e7          	jalr	566(ra) # 742 <close>
     514:	fe842783          	lw	a5,-24(s0)
     518:	853e                	mv	a0,a5
     51a:	70a2                	ld	ra,40(sp)
     51c:	7402                	ld	s0,32(sp)
     51e:	6145                	addi	sp,sp,48
     520:	8082                	ret

0000000000000522 <atoi>:
     522:	7179                	addi	sp,sp,-48
     524:	f422                	sd	s0,40(sp)
     526:	1800                	addi	s0,sp,48
     528:	fca43c23          	sd	a0,-40(s0)
     52c:	fe042623          	sw	zero,-20(s0)
     530:	a815                	j	564 <atoi+0x42>
     532:	fec42703          	lw	a4,-20(s0)
     536:	87ba                	mv	a5,a4
     538:	0027979b          	slliw	a5,a5,0x2
     53c:	9fb9                	addw	a5,a5,a4
     53e:	0017979b          	slliw	a5,a5,0x1
     542:	0007871b          	sext.w	a4,a5
     546:	fd843783          	ld	a5,-40(s0)
     54a:	00178693          	addi	a3,a5,1
     54e:	fcd43c23          	sd	a3,-40(s0)
     552:	0007c783          	lbu	a5,0(a5)
     556:	2781                	sext.w	a5,a5
     558:	9fb9                	addw	a5,a5,a4
     55a:	2781                	sext.w	a5,a5
     55c:	fd07879b          	addiw	a5,a5,-48
     560:	fef42623          	sw	a5,-20(s0)
     564:	fd843783          	ld	a5,-40(s0)
     568:	0007c783          	lbu	a5,0(a5)
     56c:	873e                	mv	a4,a5
     56e:	02f00793          	li	a5,47
     572:	00e7fb63          	bgeu	a5,a4,588 <atoi+0x66>
     576:	fd843783          	ld	a5,-40(s0)
     57a:	0007c783          	lbu	a5,0(a5)
     57e:	873e                	mv	a4,a5
     580:	03900793          	li	a5,57
     584:	fae7f7e3          	bgeu	a5,a4,532 <atoi+0x10>
     588:	fec42783          	lw	a5,-20(s0)
     58c:	853e                	mv	a0,a5
     58e:	7422                	ld	s0,40(sp)
     590:	6145                	addi	sp,sp,48
     592:	8082                	ret

0000000000000594 <memmove>:
     594:	7139                	addi	sp,sp,-64
     596:	fc22                	sd	s0,56(sp)
     598:	0080                	addi	s0,sp,64
     59a:	fca43c23          	sd	a0,-40(s0)
     59e:	fcb43823          	sd	a1,-48(s0)
     5a2:	87b2                	mv	a5,a2
     5a4:	fcf42623          	sw	a5,-52(s0)
     5a8:	fd843783          	ld	a5,-40(s0)
     5ac:	fef43423          	sd	a5,-24(s0)
     5b0:	fd043783          	ld	a5,-48(s0)
     5b4:	fef43023          	sd	a5,-32(s0)
     5b8:	fe043703          	ld	a4,-32(s0)
     5bc:	fe843783          	ld	a5,-24(s0)
     5c0:	02e7fc63          	bgeu	a5,a4,5f8 <memmove+0x64>
     5c4:	a00d                	j	5e6 <memmove+0x52>
     5c6:	fe043703          	ld	a4,-32(s0)
     5ca:	00170793          	addi	a5,a4,1
     5ce:	fef43023          	sd	a5,-32(s0)
     5d2:	fe843783          	ld	a5,-24(s0)
     5d6:	00178693          	addi	a3,a5,1
     5da:	fed43423          	sd	a3,-24(s0)
     5de:	00074703          	lbu	a4,0(a4)
     5e2:	00e78023          	sb	a4,0(a5)
     5e6:	fcc42783          	lw	a5,-52(s0)
     5ea:	fff7871b          	addiw	a4,a5,-1
     5ee:	fce42623          	sw	a4,-52(s0)
     5f2:	fcf04ae3          	bgtz	a5,5c6 <memmove+0x32>
     5f6:	a891                	j	64a <memmove+0xb6>
     5f8:	fcc42783          	lw	a5,-52(s0)
     5fc:	fe843703          	ld	a4,-24(s0)
     600:	97ba                	add	a5,a5,a4
     602:	fef43423          	sd	a5,-24(s0)
     606:	fcc42783          	lw	a5,-52(s0)
     60a:	fe043703          	ld	a4,-32(s0)
     60e:	97ba                	add	a5,a5,a4
     610:	fef43023          	sd	a5,-32(s0)
     614:	a01d                	j	63a <memmove+0xa6>
     616:	fe043783          	ld	a5,-32(s0)
     61a:	17fd                	addi	a5,a5,-1
     61c:	fef43023          	sd	a5,-32(s0)
     620:	fe843783          	ld	a5,-24(s0)
     624:	17fd                	addi	a5,a5,-1
     626:	fef43423          	sd	a5,-24(s0)
     62a:	fe043783          	ld	a5,-32(s0)
     62e:	0007c703          	lbu	a4,0(a5)
     632:	fe843783          	ld	a5,-24(s0)
     636:	00e78023          	sb	a4,0(a5)
     63a:	fcc42783          	lw	a5,-52(s0)
     63e:	fff7871b          	addiw	a4,a5,-1
     642:	fce42623          	sw	a4,-52(s0)
     646:	fcf048e3          	bgtz	a5,616 <memmove+0x82>
     64a:	fd843783          	ld	a5,-40(s0)
     64e:	853e                	mv	a0,a5
     650:	7462                	ld	s0,56(sp)
     652:	6121                	addi	sp,sp,64
     654:	8082                	ret

0000000000000656 <memcmp>:
     656:	7139                	addi	sp,sp,-64
     658:	fc22                	sd	s0,56(sp)
     65a:	0080                	addi	s0,sp,64
     65c:	fca43c23          	sd	a0,-40(s0)
     660:	fcb43823          	sd	a1,-48(s0)
     664:	87b2                	mv	a5,a2
     666:	fcf42623          	sw	a5,-52(s0)
     66a:	fd843783          	ld	a5,-40(s0)
     66e:	fef43423          	sd	a5,-24(s0)
     672:	fd043783          	ld	a5,-48(s0)
     676:	fef43023          	sd	a5,-32(s0)
     67a:	a0a1                	j	6c2 <memcmp+0x6c>
     67c:	fe843783          	ld	a5,-24(s0)
     680:	0007c703          	lbu	a4,0(a5)
     684:	fe043783          	ld	a5,-32(s0)
     688:	0007c783          	lbu	a5,0(a5)
     68c:	02f70163          	beq	a4,a5,6ae <memcmp+0x58>
     690:	fe843783          	ld	a5,-24(s0)
     694:	0007c783          	lbu	a5,0(a5)
     698:	0007871b          	sext.w	a4,a5
     69c:	fe043783          	ld	a5,-32(s0)
     6a0:	0007c783          	lbu	a5,0(a5)
     6a4:	2781                	sext.w	a5,a5
     6a6:	40f707bb          	subw	a5,a4,a5
     6aa:	2781                	sext.w	a5,a5
     6ac:	a01d                	j	6d2 <memcmp+0x7c>
     6ae:	fe843783          	ld	a5,-24(s0)
     6b2:	0785                	addi	a5,a5,1
     6b4:	fef43423          	sd	a5,-24(s0)
     6b8:	fe043783          	ld	a5,-32(s0)
     6bc:	0785                	addi	a5,a5,1
     6be:	fef43023          	sd	a5,-32(s0)
     6c2:	fcc42783          	lw	a5,-52(s0)
     6c6:	fff7871b          	addiw	a4,a5,-1
     6ca:	fce42623          	sw	a4,-52(s0)
     6ce:	f7dd                	bnez	a5,67c <memcmp+0x26>
     6d0:	4781                	li	a5,0
     6d2:	853e                	mv	a0,a5
     6d4:	7462                	ld	s0,56(sp)
     6d6:	6121                	addi	sp,sp,64
     6d8:	8082                	ret

00000000000006da <memcpy>:
     6da:	7179                	addi	sp,sp,-48
     6dc:	f406                	sd	ra,40(sp)
     6de:	f022                	sd	s0,32(sp)
     6e0:	1800                	addi	s0,sp,48
     6e2:	fea43423          	sd	a0,-24(s0)
     6e6:	feb43023          	sd	a1,-32(s0)
     6ea:	87b2                	mv	a5,a2
     6ec:	fcf42e23          	sw	a5,-36(s0)
     6f0:	fdc42783          	lw	a5,-36(s0)
     6f4:	863e                	mv	a2,a5
     6f6:	fe043583          	ld	a1,-32(s0)
     6fa:	fe843503          	ld	a0,-24(s0)
     6fe:	00000097          	auipc	ra,0x0
     702:	e96080e7          	jalr	-362(ra) # 594 <memmove>
     706:	87aa                	mv	a5,a0
     708:	853e                	mv	a0,a5
     70a:	70a2                	ld	ra,40(sp)
     70c:	7402                	ld	s0,32(sp)
     70e:	6145                	addi	sp,sp,48
     710:	8082                	ret

0000000000000712 <fork>:
     712:	4885                	li	a7,1
     714:	00000073          	ecall
     718:	8082                	ret

000000000000071a <exit>:
     71a:	4889                	li	a7,2
     71c:	00000073          	ecall
     720:	8082                	ret

0000000000000722 <wait>:
     722:	488d                	li	a7,3
     724:	00000073          	ecall
     728:	8082                	ret

000000000000072a <pipe>:
     72a:	4891                	li	a7,4
     72c:	00000073          	ecall
     730:	8082                	ret

0000000000000732 <read>:
     732:	4895                	li	a7,5
     734:	00000073          	ecall
     738:	8082                	ret

000000000000073a <write>:
     73a:	48c1                	li	a7,16
     73c:	00000073          	ecall
     740:	8082                	ret

0000000000000742 <close>:
     742:	48d5                	li	a7,21
     744:	00000073          	ecall
     748:	8082                	ret

000000000000074a <kill>:
     74a:	4899                	li	a7,6
     74c:	00000073          	ecall
     750:	8082                	ret

0000000000000752 <exec>:
     752:	489d                	li	a7,7
     754:	00000073          	ecall
     758:	8082                	ret

000000000000075a <open>:
     75a:	48bd                	li	a7,15
     75c:	00000073          	ecall
     760:	8082                	ret

0000000000000762 <mknod>:
     762:	48c5                	li	a7,17
     764:	00000073          	ecall
     768:	8082                	ret

000000000000076a <unlink>:
     76a:	48c9                	li	a7,18
     76c:	00000073          	ecall
     770:	8082                	ret

0000000000000772 <fstat>:
     772:	48a1                	li	a7,8
     774:	00000073          	ecall
     778:	8082                	ret

000000000000077a <link>:
     77a:	48cd                	li	a7,19
     77c:	00000073          	ecall
     780:	8082                	ret

0000000000000782 <mkdir>:
     782:	48d1                	li	a7,20
     784:	00000073          	ecall
     788:	8082                	ret

000000000000078a <chdir>:
     78a:	48a5                	li	a7,9
     78c:	00000073          	ecall
     790:	8082                	ret

0000000000000792 <dup>:
     792:	48a9                	li	a7,10
     794:	00000073          	ecall
     798:	8082                	ret

000000000000079a <getpid>:
     79a:	48ad                	li	a7,11
     79c:	00000073          	ecall
     7a0:	8082                	ret

00000000000007a2 <sbrk>:
     7a2:	48b1                	li	a7,12
     7a4:	00000073          	ecall
     7a8:	8082                	ret

00000000000007aa <sleep>:
     7aa:	48b5                	li	a7,13
     7ac:	00000073          	ecall
     7b0:	8082                	ret

00000000000007b2 <uptime>:
     7b2:	48b9                	li	a7,14
     7b4:	00000073          	ecall
     7b8:	8082                	ret

00000000000007ba <putc>:
     7ba:	1101                	addi	sp,sp,-32
     7bc:	ec06                	sd	ra,24(sp)
     7be:	e822                	sd	s0,16(sp)
     7c0:	1000                	addi	s0,sp,32
     7c2:	87aa                	mv	a5,a0
     7c4:	872e                	mv	a4,a1
     7c6:	fef42623          	sw	a5,-20(s0)
     7ca:	87ba                	mv	a5,a4
     7cc:	fef405a3          	sb	a5,-21(s0)
     7d0:	feb40713          	addi	a4,s0,-21
     7d4:	fec42783          	lw	a5,-20(s0)
     7d8:	4605                	li	a2,1
     7da:	85ba                	mv	a1,a4
     7dc:	853e                	mv	a0,a5
     7de:	00000097          	auipc	ra,0x0
     7e2:	f5c080e7          	jalr	-164(ra) # 73a <write>
     7e6:	0001                	nop
     7e8:	60e2                	ld	ra,24(sp)
     7ea:	6442                	ld	s0,16(sp)
     7ec:	6105                	addi	sp,sp,32
     7ee:	8082                	ret

00000000000007f0 <printint>:
     7f0:	7139                	addi	sp,sp,-64
     7f2:	fc06                	sd	ra,56(sp)
     7f4:	f822                	sd	s0,48(sp)
     7f6:	0080                	addi	s0,sp,64
     7f8:	87aa                	mv	a5,a0
     7fa:	8736                	mv	a4,a3
     7fc:	fcf42623          	sw	a5,-52(s0)
     800:	87ae                	mv	a5,a1
     802:	fcf42423          	sw	a5,-56(s0)
     806:	87b2                	mv	a5,a2
     808:	fcf42223          	sw	a5,-60(s0)
     80c:	87ba                	mv	a5,a4
     80e:	fcf42023          	sw	a5,-64(s0)
     812:	fe042423          	sw	zero,-24(s0)
     816:	fc042783          	lw	a5,-64(s0)
     81a:	2781                	sext.w	a5,a5
     81c:	c38d                	beqz	a5,83e <printint+0x4e>
     81e:	fc842783          	lw	a5,-56(s0)
     822:	2781                	sext.w	a5,a5
     824:	0007dd63          	bgez	a5,83e <printint+0x4e>
     828:	4785                	li	a5,1
     82a:	fef42423          	sw	a5,-24(s0)
     82e:	fc842783          	lw	a5,-56(s0)
     832:	40f007bb          	negw	a5,a5
     836:	2781                	sext.w	a5,a5
     838:	fef42223          	sw	a5,-28(s0)
     83c:	a029                	j	846 <printint+0x56>
     83e:	fc842783          	lw	a5,-56(s0)
     842:	fef42223          	sw	a5,-28(s0)
     846:	fe042623          	sw	zero,-20(s0)
     84a:	fc442783          	lw	a5,-60(s0)
     84e:	fe442703          	lw	a4,-28(s0)
     852:	02f777bb          	remuw	a5,a4,a5
     856:	0007861b          	sext.w	a2,a5
     85a:	fec42783          	lw	a5,-20(s0)
     85e:	0017871b          	addiw	a4,a5,1
     862:	fee42623          	sw	a4,-20(s0)
     866:	00001697          	auipc	a3,0x1
     86a:	bca68693          	addi	a3,a3,-1078 # 1430 <digits>
     86e:	02061713          	slli	a4,a2,0x20
     872:	9301                	srli	a4,a4,0x20
     874:	9736                	add	a4,a4,a3
     876:	00074703          	lbu	a4,0(a4)
     87a:	ff040693          	addi	a3,s0,-16
     87e:	97b6                	add	a5,a5,a3
     880:	fee78023          	sb	a4,-32(a5)
     884:	fc442783          	lw	a5,-60(s0)
     888:	fe442703          	lw	a4,-28(s0)
     88c:	02f757bb          	divuw	a5,a4,a5
     890:	fef42223          	sw	a5,-28(s0)
     894:	fe442783          	lw	a5,-28(s0)
     898:	2781                	sext.w	a5,a5
     89a:	fbc5                	bnez	a5,84a <printint+0x5a>
     89c:	fe842783          	lw	a5,-24(s0)
     8a0:	2781                	sext.w	a5,a5
     8a2:	cf95                	beqz	a5,8de <printint+0xee>
     8a4:	fec42783          	lw	a5,-20(s0)
     8a8:	0017871b          	addiw	a4,a5,1
     8ac:	fee42623          	sw	a4,-20(s0)
     8b0:	ff040713          	addi	a4,s0,-16
     8b4:	97ba                	add	a5,a5,a4
     8b6:	02d00713          	li	a4,45
     8ba:	fee78023          	sb	a4,-32(a5)
     8be:	a005                	j	8de <printint+0xee>
     8c0:	fec42783          	lw	a5,-20(s0)
     8c4:	ff040713          	addi	a4,s0,-16
     8c8:	97ba                	add	a5,a5,a4
     8ca:	fe07c703          	lbu	a4,-32(a5)
     8ce:	fcc42783          	lw	a5,-52(s0)
     8d2:	85ba                	mv	a1,a4
     8d4:	853e                	mv	a0,a5
     8d6:	00000097          	auipc	ra,0x0
     8da:	ee4080e7          	jalr	-284(ra) # 7ba <putc>
     8de:	fec42783          	lw	a5,-20(s0)
     8e2:	37fd                	addiw	a5,a5,-1
     8e4:	fef42623          	sw	a5,-20(s0)
     8e8:	fec42783          	lw	a5,-20(s0)
     8ec:	2781                	sext.w	a5,a5
     8ee:	fc07d9e3          	bgez	a5,8c0 <printint+0xd0>
     8f2:	0001                	nop
     8f4:	0001                	nop
     8f6:	70e2                	ld	ra,56(sp)
     8f8:	7442                	ld	s0,48(sp)
     8fa:	6121                	addi	sp,sp,64
     8fc:	8082                	ret

00000000000008fe <printptr>:
     8fe:	7179                	addi	sp,sp,-48
     900:	f406                	sd	ra,40(sp)
     902:	f022                	sd	s0,32(sp)
     904:	1800                	addi	s0,sp,48
     906:	87aa                	mv	a5,a0
     908:	fcb43823          	sd	a1,-48(s0)
     90c:	fcf42e23          	sw	a5,-36(s0)
     910:	fdc42783          	lw	a5,-36(s0)
     914:	03000593          	li	a1,48
     918:	853e                	mv	a0,a5
     91a:	00000097          	auipc	ra,0x0
     91e:	ea0080e7          	jalr	-352(ra) # 7ba <putc>
     922:	fdc42783          	lw	a5,-36(s0)
     926:	07800593          	li	a1,120
     92a:	853e                	mv	a0,a5
     92c:	00000097          	auipc	ra,0x0
     930:	e8e080e7          	jalr	-370(ra) # 7ba <putc>
     934:	fe042623          	sw	zero,-20(s0)
     938:	a82d                	j	972 <printptr+0x74>
     93a:	fd043783          	ld	a5,-48(s0)
     93e:	93f1                	srli	a5,a5,0x3c
     940:	00001717          	auipc	a4,0x1
     944:	af070713          	addi	a4,a4,-1296 # 1430 <digits>
     948:	97ba                	add	a5,a5,a4
     94a:	0007c703          	lbu	a4,0(a5)
     94e:	fdc42783          	lw	a5,-36(s0)
     952:	85ba                	mv	a1,a4
     954:	853e                	mv	a0,a5
     956:	00000097          	auipc	ra,0x0
     95a:	e64080e7          	jalr	-412(ra) # 7ba <putc>
     95e:	fec42783          	lw	a5,-20(s0)
     962:	2785                	addiw	a5,a5,1
     964:	fef42623          	sw	a5,-20(s0)
     968:	fd043783          	ld	a5,-48(s0)
     96c:	0792                	slli	a5,a5,0x4
     96e:	fcf43823          	sd	a5,-48(s0)
     972:	fec42783          	lw	a5,-20(s0)
     976:	873e                	mv	a4,a5
     978:	47bd                	li	a5,15
     97a:	fce7f0e3          	bgeu	a5,a4,93a <printptr+0x3c>
     97e:	0001                	nop
     980:	0001                	nop
     982:	70a2                	ld	ra,40(sp)
     984:	7402                	ld	s0,32(sp)
     986:	6145                	addi	sp,sp,48
     988:	8082                	ret

000000000000098a <vprintf>:
     98a:	715d                	addi	sp,sp,-80
     98c:	e486                	sd	ra,72(sp)
     98e:	e0a2                	sd	s0,64(sp)
     990:	0880                	addi	s0,sp,80
     992:	87aa                	mv	a5,a0
     994:	fcb43023          	sd	a1,-64(s0)
     998:	fac43c23          	sd	a2,-72(s0)
     99c:	fcf42623          	sw	a5,-52(s0)
     9a0:	fe042023          	sw	zero,-32(s0)
     9a4:	fe042223          	sw	zero,-28(s0)
     9a8:	a42d                	j	bd2 <vprintf+0x248>
     9aa:	fe442783          	lw	a5,-28(s0)
     9ae:	fc043703          	ld	a4,-64(s0)
     9b2:	97ba                	add	a5,a5,a4
     9b4:	0007c783          	lbu	a5,0(a5)
     9b8:	fcf42e23          	sw	a5,-36(s0)
     9bc:	fe042783          	lw	a5,-32(s0)
     9c0:	2781                	sext.w	a5,a5
     9c2:	eb9d                	bnez	a5,9f8 <vprintf+0x6e>
     9c4:	fdc42783          	lw	a5,-36(s0)
     9c8:	0007871b          	sext.w	a4,a5
     9cc:	02500793          	li	a5,37
     9d0:	00f71763          	bne	a4,a5,9de <vprintf+0x54>
     9d4:	02500793          	li	a5,37
     9d8:	fef42023          	sw	a5,-32(s0)
     9dc:	a2f5                	j	bc8 <vprintf+0x23e>
     9de:	fdc42783          	lw	a5,-36(s0)
     9e2:	0ff7f713          	andi	a4,a5,255
     9e6:	fcc42783          	lw	a5,-52(s0)
     9ea:	85ba                	mv	a1,a4
     9ec:	853e                	mv	a0,a5
     9ee:	00000097          	auipc	ra,0x0
     9f2:	dcc080e7          	jalr	-564(ra) # 7ba <putc>
     9f6:	aac9                	j	bc8 <vprintf+0x23e>
     9f8:	fe042783          	lw	a5,-32(s0)
     9fc:	0007871b          	sext.w	a4,a5
     a00:	02500793          	li	a5,37
     a04:	1cf71263          	bne	a4,a5,bc8 <vprintf+0x23e>
     a08:	fdc42783          	lw	a5,-36(s0)
     a0c:	0007871b          	sext.w	a4,a5
     a10:	06400793          	li	a5,100
     a14:	02f71463          	bne	a4,a5,a3c <vprintf+0xb2>
     a18:	fb843783          	ld	a5,-72(s0)
     a1c:	00878713          	addi	a4,a5,8
     a20:	fae43c23          	sd	a4,-72(s0)
     a24:	4398                	lw	a4,0(a5)
     a26:	fcc42783          	lw	a5,-52(s0)
     a2a:	4685                	li	a3,1
     a2c:	4629                	li	a2,10
     a2e:	85ba                	mv	a1,a4
     a30:	853e                	mv	a0,a5
     a32:	00000097          	auipc	ra,0x0
     a36:	dbe080e7          	jalr	-578(ra) # 7f0 <printint>
     a3a:	a269                	j	bc4 <vprintf+0x23a>
     a3c:	fdc42783          	lw	a5,-36(s0)
     a40:	0007871b          	sext.w	a4,a5
     a44:	06c00793          	li	a5,108
     a48:	02f71663          	bne	a4,a5,a74 <vprintf+0xea>
     a4c:	fb843783          	ld	a5,-72(s0)
     a50:	00878713          	addi	a4,a5,8
     a54:	fae43c23          	sd	a4,-72(s0)
     a58:	639c                	ld	a5,0(a5)
     a5a:	0007871b          	sext.w	a4,a5
     a5e:	fcc42783          	lw	a5,-52(s0)
     a62:	4681                	li	a3,0
     a64:	4629                	li	a2,10
     a66:	85ba                	mv	a1,a4
     a68:	853e                	mv	a0,a5
     a6a:	00000097          	auipc	ra,0x0
     a6e:	d86080e7          	jalr	-634(ra) # 7f0 <printint>
     a72:	aa89                	j	bc4 <vprintf+0x23a>
     a74:	fdc42783          	lw	a5,-36(s0)
     a78:	0007871b          	sext.w	a4,a5
     a7c:	07800793          	li	a5,120
     a80:	02f71463          	bne	a4,a5,aa8 <vprintf+0x11e>
     a84:	fb843783          	ld	a5,-72(s0)
     a88:	00878713          	addi	a4,a5,8
     a8c:	fae43c23          	sd	a4,-72(s0)
     a90:	4398                	lw	a4,0(a5)
     a92:	fcc42783          	lw	a5,-52(s0)
     a96:	4681                	li	a3,0
     a98:	4641                	li	a2,16
     a9a:	85ba                	mv	a1,a4
     a9c:	853e                	mv	a0,a5
     a9e:	00000097          	auipc	ra,0x0
     aa2:	d52080e7          	jalr	-686(ra) # 7f0 <printint>
     aa6:	aa39                	j	bc4 <vprintf+0x23a>
     aa8:	fdc42783          	lw	a5,-36(s0)
     aac:	0007871b          	sext.w	a4,a5
     ab0:	07000793          	li	a5,112
     ab4:	02f71263          	bne	a4,a5,ad8 <vprintf+0x14e>
     ab8:	fb843783          	ld	a5,-72(s0)
     abc:	00878713          	addi	a4,a5,8
     ac0:	fae43c23          	sd	a4,-72(s0)
     ac4:	6398                	ld	a4,0(a5)
     ac6:	fcc42783          	lw	a5,-52(s0)
     aca:	85ba                	mv	a1,a4
     acc:	853e                	mv	a0,a5
     ace:	00000097          	auipc	ra,0x0
     ad2:	e30080e7          	jalr	-464(ra) # 8fe <printptr>
     ad6:	a0fd                	j	bc4 <vprintf+0x23a>
     ad8:	fdc42783          	lw	a5,-36(s0)
     adc:	0007871b          	sext.w	a4,a5
     ae0:	07300793          	li	a5,115
     ae4:	04f71c63          	bne	a4,a5,b3c <vprintf+0x1b2>
     ae8:	fb843783          	ld	a5,-72(s0)
     aec:	00878713          	addi	a4,a5,8
     af0:	fae43c23          	sd	a4,-72(s0)
     af4:	639c                	ld	a5,0(a5)
     af6:	fef43423          	sd	a5,-24(s0)
     afa:	fe843783          	ld	a5,-24(s0)
     afe:	eb8d                	bnez	a5,b30 <vprintf+0x1a6>
     b00:	00001797          	auipc	a5,0x1
     b04:	92878793          	addi	a5,a5,-1752 # 1428 <thread_start_threading+0x96>
     b08:	fef43423          	sd	a5,-24(s0)
     b0c:	a015                	j	b30 <vprintf+0x1a6>
     b0e:	fe843783          	ld	a5,-24(s0)
     b12:	0007c703          	lbu	a4,0(a5)
     b16:	fcc42783          	lw	a5,-52(s0)
     b1a:	85ba                	mv	a1,a4
     b1c:	853e                	mv	a0,a5
     b1e:	00000097          	auipc	ra,0x0
     b22:	c9c080e7          	jalr	-868(ra) # 7ba <putc>
     b26:	fe843783          	ld	a5,-24(s0)
     b2a:	0785                	addi	a5,a5,1
     b2c:	fef43423          	sd	a5,-24(s0)
     b30:	fe843783          	ld	a5,-24(s0)
     b34:	0007c783          	lbu	a5,0(a5)
     b38:	fbf9                	bnez	a5,b0e <vprintf+0x184>
     b3a:	a069                	j	bc4 <vprintf+0x23a>
     b3c:	fdc42783          	lw	a5,-36(s0)
     b40:	0007871b          	sext.w	a4,a5
     b44:	06300793          	li	a5,99
     b48:	02f71463          	bne	a4,a5,b70 <vprintf+0x1e6>
     b4c:	fb843783          	ld	a5,-72(s0)
     b50:	00878713          	addi	a4,a5,8
     b54:	fae43c23          	sd	a4,-72(s0)
     b58:	439c                	lw	a5,0(a5)
     b5a:	0ff7f713          	andi	a4,a5,255
     b5e:	fcc42783          	lw	a5,-52(s0)
     b62:	85ba                	mv	a1,a4
     b64:	853e                	mv	a0,a5
     b66:	00000097          	auipc	ra,0x0
     b6a:	c54080e7          	jalr	-940(ra) # 7ba <putc>
     b6e:	a899                	j	bc4 <vprintf+0x23a>
     b70:	fdc42783          	lw	a5,-36(s0)
     b74:	0007871b          	sext.w	a4,a5
     b78:	02500793          	li	a5,37
     b7c:	00f71f63          	bne	a4,a5,b9a <vprintf+0x210>
     b80:	fdc42783          	lw	a5,-36(s0)
     b84:	0ff7f713          	andi	a4,a5,255
     b88:	fcc42783          	lw	a5,-52(s0)
     b8c:	85ba                	mv	a1,a4
     b8e:	853e                	mv	a0,a5
     b90:	00000097          	auipc	ra,0x0
     b94:	c2a080e7          	jalr	-982(ra) # 7ba <putc>
     b98:	a035                	j	bc4 <vprintf+0x23a>
     b9a:	fcc42783          	lw	a5,-52(s0)
     b9e:	02500593          	li	a1,37
     ba2:	853e                	mv	a0,a5
     ba4:	00000097          	auipc	ra,0x0
     ba8:	c16080e7          	jalr	-1002(ra) # 7ba <putc>
     bac:	fdc42783          	lw	a5,-36(s0)
     bb0:	0ff7f713          	andi	a4,a5,255
     bb4:	fcc42783          	lw	a5,-52(s0)
     bb8:	85ba                	mv	a1,a4
     bba:	853e                	mv	a0,a5
     bbc:	00000097          	auipc	ra,0x0
     bc0:	bfe080e7          	jalr	-1026(ra) # 7ba <putc>
     bc4:	fe042023          	sw	zero,-32(s0)
     bc8:	fe442783          	lw	a5,-28(s0)
     bcc:	2785                	addiw	a5,a5,1
     bce:	fef42223          	sw	a5,-28(s0)
     bd2:	fe442783          	lw	a5,-28(s0)
     bd6:	fc043703          	ld	a4,-64(s0)
     bda:	97ba                	add	a5,a5,a4
     bdc:	0007c783          	lbu	a5,0(a5)
     be0:	dc0795e3          	bnez	a5,9aa <vprintf+0x20>
     be4:	0001                	nop
     be6:	0001                	nop
     be8:	60a6                	ld	ra,72(sp)
     bea:	6406                	ld	s0,64(sp)
     bec:	6161                	addi	sp,sp,80
     bee:	8082                	ret

0000000000000bf0 <fprintf>:
     bf0:	7159                	addi	sp,sp,-112
     bf2:	fc06                	sd	ra,56(sp)
     bf4:	f822                	sd	s0,48(sp)
     bf6:	0080                	addi	s0,sp,64
     bf8:	fcb43823          	sd	a1,-48(s0)
     bfc:	e010                	sd	a2,0(s0)
     bfe:	e414                	sd	a3,8(s0)
     c00:	e818                	sd	a4,16(s0)
     c02:	ec1c                	sd	a5,24(s0)
     c04:	03043023          	sd	a6,32(s0)
     c08:	03143423          	sd	a7,40(s0)
     c0c:	87aa                	mv	a5,a0
     c0e:	fcf42e23          	sw	a5,-36(s0)
     c12:	03040793          	addi	a5,s0,48
     c16:	fcf43423          	sd	a5,-56(s0)
     c1a:	fc843783          	ld	a5,-56(s0)
     c1e:	fd078793          	addi	a5,a5,-48
     c22:	fef43423          	sd	a5,-24(s0)
     c26:	fe843703          	ld	a4,-24(s0)
     c2a:	fdc42783          	lw	a5,-36(s0)
     c2e:	863a                	mv	a2,a4
     c30:	fd043583          	ld	a1,-48(s0)
     c34:	853e                	mv	a0,a5
     c36:	00000097          	auipc	ra,0x0
     c3a:	d54080e7          	jalr	-684(ra) # 98a <vprintf>
     c3e:	0001                	nop
     c40:	70e2                	ld	ra,56(sp)
     c42:	7442                	ld	s0,48(sp)
     c44:	6165                	addi	sp,sp,112
     c46:	8082                	ret

0000000000000c48 <printf>:
     c48:	7159                	addi	sp,sp,-112
     c4a:	f406                	sd	ra,40(sp)
     c4c:	f022                	sd	s0,32(sp)
     c4e:	1800                	addi	s0,sp,48
     c50:	fca43c23          	sd	a0,-40(s0)
     c54:	e40c                	sd	a1,8(s0)
     c56:	e810                	sd	a2,16(s0)
     c58:	ec14                	sd	a3,24(s0)
     c5a:	f018                	sd	a4,32(s0)
     c5c:	f41c                	sd	a5,40(s0)
     c5e:	03043823          	sd	a6,48(s0)
     c62:	03143c23          	sd	a7,56(s0)
     c66:	04040793          	addi	a5,s0,64
     c6a:	fcf43823          	sd	a5,-48(s0)
     c6e:	fd043783          	ld	a5,-48(s0)
     c72:	fc878793          	addi	a5,a5,-56
     c76:	fef43423          	sd	a5,-24(s0)
     c7a:	fe843783          	ld	a5,-24(s0)
     c7e:	863e                	mv	a2,a5
     c80:	fd843583          	ld	a1,-40(s0)
     c84:	4505                	li	a0,1
     c86:	00000097          	auipc	ra,0x0
     c8a:	d04080e7          	jalr	-764(ra) # 98a <vprintf>
     c8e:	0001                	nop
     c90:	70a2                	ld	ra,40(sp)
     c92:	7402                	ld	s0,32(sp)
     c94:	6165                	addi	sp,sp,112
     c96:	8082                	ret

0000000000000c98 <free>:
     c98:	7179                	addi	sp,sp,-48
     c9a:	f422                	sd	s0,40(sp)
     c9c:	1800                	addi	s0,sp,48
     c9e:	fca43c23          	sd	a0,-40(s0)
     ca2:	fd843783          	ld	a5,-40(s0)
     ca6:	17c1                	addi	a5,a5,-16
     ca8:	fef43023          	sd	a5,-32(s0)
     cac:	00000797          	auipc	a5,0x0
     cb0:	7cc78793          	addi	a5,a5,1996 # 1478 <freep>
     cb4:	639c                	ld	a5,0(a5)
     cb6:	fef43423          	sd	a5,-24(s0)
     cba:	a815                	j	cee <free+0x56>
     cbc:	fe843783          	ld	a5,-24(s0)
     cc0:	639c                	ld	a5,0(a5)
     cc2:	fe843703          	ld	a4,-24(s0)
     cc6:	00f76f63          	bltu	a4,a5,ce4 <free+0x4c>
     cca:	fe043703          	ld	a4,-32(s0)
     cce:	fe843783          	ld	a5,-24(s0)
     cd2:	02e7eb63          	bltu	a5,a4,d08 <free+0x70>
     cd6:	fe843783          	ld	a5,-24(s0)
     cda:	639c                	ld	a5,0(a5)
     cdc:	fe043703          	ld	a4,-32(s0)
     ce0:	02f76463          	bltu	a4,a5,d08 <free+0x70>
     ce4:	fe843783          	ld	a5,-24(s0)
     ce8:	639c                	ld	a5,0(a5)
     cea:	fef43423          	sd	a5,-24(s0)
     cee:	fe043703          	ld	a4,-32(s0)
     cf2:	fe843783          	ld	a5,-24(s0)
     cf6:	fce7f3e3          	bgeu	a5,a4,cbc <free+0x24>
     cfa:	fe843783          	ld	a5,-24(s0)
     cfe:	639c                	ld	a5,0(a5)
     d00:	fe043703          	ld	a4,-32(s0)
     d04:	faf77ce3          	bgeu	a4,a5,cbc <free+0x24>
     d08:	fe043783          	ld	a5,-32(s0)
     d0c:	479c                	lw	a5,8(a5)
     d0e:	1782                	slli	a5,a5,0x20
     d10:	9381                	srli	a5,a5,0x20
     d12:	0792                	slli	a5,a5,0x4
     d14:	fe043703          	ld	a4,-32(s0)
     d18:	973e                	add	a4,a4,a5
     d1a:	fe843783          	ld	a5,-24(s0)
     d1e:	639c                	ld	a5,0(a5)
     d20:	02f71763          	bne	a4,a5,d4e <free+0xb6>
     d24:	fe043783          	ld	a5,-32(s0)
     d28:	4798                	lw	a4,8(a5)
     d2a:	fe843783          	ld	a5,-24(s0)
     d2e:	639c                	ld	a5,0(a5)
     d30:	479c                	lw	a5,8(a5)
     d32:	9fb9                	addw	a5,a5,a4
     d34:	0007871b          	sext.w	a4,a5
     d38:	fe043783          	ld	a5,-32(s0)
     d3c:	c798                	sw	a4,8(a5)
     d3e:	fe843783          	ld	a5,-24(s0)
     d42:	639c                	ld	a5,0(a5)
     d44:	6398                	ld	a4,0(a5)
     d46:	fe043783          	ld	a5,-32(s0)
     d4a:	e398                	sd	a4,0(a5)
     d4c:	a039                	j	d5a <free+0xc2>
     d4e:	fe843783          	ld	a5,-24(s0)
     d52:	6398                	ld	a4,0(a5)
     d54:	fe043783          	ld	a5,-32(s0)
     d58:	e398                	sd	a4,0(a5)
     d5a:	fe843783          	ld	a5,-24(s0)
     d5e:	479c                	lw	a5,8(a5)
     d60:	1782                	slli	a5,a5,0x20
     d62:	9381                	srli	a5,a5,0x20
     d64:	0792                	slli	a5,a5,0x4
     d66:	fe843703          	ld	a4,-24(s0)
     d6a:	97ba                	add	a5,a5,a4
     d6c:	fe043703          	ld	a4,-32(s0)
     d70:	02f71563          	bne	a4,a5,d9a <free+0x102>
     d74:	fe843783          	ld	a5,-24(s0)
     d78:	4798                	lw	a4,8(a5)
     d7a:	fe043783          	ld	a5,-32(s0)
     d7e:	479c                	lw	a5,8(a5)
     d80:	9fb9                	addw	a5,a5,a4
     d82:	0007871b          	sext.w	a4,a5
     d86:	fe843783          	ld	a5,-24(s0)
     d8a:	c798                	sw	a4,8(a5)
     d8c:	fe043783          	ld	a5,-32(s0)
     d90:	6398                	ld	a4,0(a5)
     d92:	fe843783          	ld	a5,-24(s0)
     d96:	e398                	sd	a4,0(a5)
     d98:	a031                	j	da4 <free+0x10c>
     d9a:	fe843783          	ld	a5,-24(s0)
     d9e:	fe043703          	ld	a4,-32(s0)
     da2:	e398                	sd	a4,0(a5)
     da4:	00000797          	auipc	a5,0x0
     da8:	6d478793          	addi	a5,a5,1748 # 1478 <freep>
     dac:	fe843703          	ld	a4,-24(s0)
     db0:	e398                	sd	a4,0(a5)
     db2:	0001                	nop
     db4:	7422                	ld	s0,40(sp)
     db6:	6145                	addi	sp,sp,48
     db8:	8082                	ret

0000000000000dba <morecore>:
     dba:	7179                	addi	sp,sp,-48
     dbc:	f406                	sd	ra,40(sp)
     dbe:	f022                	sd	s0,32(sp)
     dc0:	1800                	addi	s0,sp,48
     dc2:	87aa                	mv	a5,a0
     dc4:	fcf42e23          	sw	a5,-36(s0)
     dc8:	fdc42783          	lw	a5,-36(s0)
     dcc:	0007871b          	sext.w	a4,a5
     dd0:	6785                	lui	a5,0x1
     dd2:	00f77563          	bgeu	a4,a5,ddc <morecore+0x22>
     dd6:	6785                	lui	a5,0x1
     dd8:	fcf42e23          	sw	a5,-36(s0)
     ddc:	fdc42783          	lw	a5,-36(s0)
     de0:	0047979b          	slliw	a5,a5,0x4
     de4:	2781                	sext.w	a5,a5
     de6:	2781                	sext.w	a5,a5
     de8:	853e                	mv	a0,a5
     dea:	00000097          	auipc	ra,0x0
     dee:	9b8080e7          	jalr	-1608(ra) # 7a2 <sbrk>
     df2:	fea43423          	sd	a0,-24(s0)
     df6:	fe843703          	ld	a4,-24(s0)
     dfa:	57fd                	li	a5,-1
     dfc:	00f71463          	bne	a4,a5,e04 <morecore+0x4a>
     e00:	4781                	li	a5,0
     e02:	a03d                	j	e30 <morecore+0x76>
     e04:	fe843783          	ld	a5,-24(s0)
     e08:	fef43023          	sd	a5,-32(s0)
     e0c:	fe043783          	ld	a5,-32(s0)
     e10:	fdc42703          	lw	a4,-36(s0)
     e14:	c798                	sw	a4,8(a5)
     e16:	fe043783          	ld	a5,-32(s0)
     e1a:	07c1                	addi	a5,a5,16
     e1c:	853e                	mv	a0,a5
     e1e:	00000097          	auipc	ra,0x0
     e22:	e7a080e7          	jalr	-390(ra) # c98 <free>
     e26:	00000797          	auipc	a5,0x0
     e2a:	65278793          	addi	a5,a5,1618 # 1478 <freep>
     e2e:	639c                	ld	a5,0(a5)
     e30:	853e                	mv	a0,a5
     e32:	70a2                	ld	ra,40(sp)
     e34:	7402                	ld	s0,32(sp)
     e36:	6145                	addi	sp,sp,48
     e38:	8082                	ret

0000000000000e3a <malloc>:
     e3a:	7139                	addi	sp,sp,-64
     e3c:	fc06                	sd	ra,56(sp)
     e3e:	f822                	sd	s0,48(sp)
     e40:	0080                	addi	s0,sp,64
     e42:	87aa                	mv	a5,a0
     e44:	fcf42623          	sw	a5,-52(s0)
     e48:	fcc46783          	lwu	a5,-52(s0)
     e4c:	07bd                	addi	a5,a5,15
     e4e:	8391                	srli	a5,a5,0x4
     e50:	2781                	sext.w	a5,a5
     e52:	2785                	addiw	a5,a5,1
     e54:	fcf42e23          	sw	a5,-36(s0)
     e58:	00000797          	auipc	a5,0x0
     e5c:	62078793          	addi	a5,a5,1568 # 1478 <freep>
     e60:	639c                	ld	a5,0(a5)
     e62:	fef43023          	sd	a5,-32(s0)
     e66:	fe043783          	ld	a5,-32(s0)
     e6a:	ef95                	bnez	a5,ea6 <malloc+0x6c>
     e6c:	00000797          	auipc	a5,0x0
     e70:	5fc78793          	addi	a5,a5,1532 # 1468 <base>
     e74:	fef43023          	sd	a5,-32(s0)
     e78:	00000797          	auipc	a5,0x0
     e7c:	60078793          	addi	a5,a5,1536 # 1478 <freep>
     e80:	fe043703          	ld	a4,-32(s0)
     e84:	e398                	sd	a4,0(a5)
     e86:	00000797          	auipc	a5,0x0
     e8a:	5f278793          	addi	a5,a5,1522 # 1478 <freep>
     e8e:	6398                	ld	a4,0(a5)
     e90:	00000797          	auipc	a5,0x0
     e94:	5d878793          	addi	a5,a5,1496 # 1468 <base>
     e98:	e398                	sd	a4,0(a5)
     e9a:	00000797          	auipc	a5,0x0
     e9e:	5ce78793          	addi	a5,a5,1486 # 1468 <base>
     ea2:	0007a423          	sw	zero,8(a5)
     ea6:	fe043783          	ld	a5,-32(s0)
     eaa:	639c                	ld	a5,0(a5)
     eac:	fef43423          	sd	a5,-24(s0)
     eb0:	fe843783          	ld	a5,-24(s0)
     eb4:	4798                	lw	a4,8(a5)
     eb6:	fdc42783          	lw	a5,-36(s0)
     eba:	2781                	sext.w	a5,a5
     ebc:	06f76863          	bltu	a4,a5,f2c <malloc+0xf2>
     ec0:	fe843783          	ld	a5,-24(s0)
     ec4:	4798                	lw	a4,8(a5)
     ec6:	fdc42783          	lw	a5,-36(s0)
     eca:	2781                	sext.w	a5,a5
     ecc:	00e79963          	bne	a5,a4,ede <malloc+0xa4>
     ed0:	fe843783          	ld	a5,-24(s0)
     ed4:	6398                	ld	a4,0(a5)
     ed6:	fe043783          	ld	a5,-32(s0)
     eda:	e398                	sd	a4,0(a5)
     edc:	a82d                	j	f16 <malloc+0xdc>
     ede:	fe843783          	ld	a5,-24(s0)
     ee2:	4798                	lw	a4,8(a5)
     ee4:	fdc42783          	lw	a5,-36(s0)
     ee8:	40f707bb          	subw	a5,a4,a5
     eec:	0007871b          	sext.w	a4,a5
     ef0:	fe843783          	ld	a5,-24(s0)
     ef4:	c798                	sw	a4,8(a5)
     ef6:	fe843783          	ld	a5,-24(s0)
     efa:	479c                	lw	a5,8(a5)
     efc:	1782                	slli	a5,a5,0x20
     efe:	9381                	srli	a5,a5,0x20
     f00:	0792                	slli	a5,a5,0x4
     f02:	fe843703          	ld	a4,-24(s0)
     f06:	97ba                	add	a5,a5,a4
     f08:	fef43423          	sd	a5,-24(s0)
     f0c:	fe843783          	ld	a5,-24(s0)
     f10:	fdc42703          	lw	a4,-36(s0)
     f14:	c798                	sw	a4,8(a5)
     f16:	00000797          	auipc	a5,0x0
     f1a:	56278793          	addi	a5,a5,1378 # 1478 <freep>
     f1e:	fe043703          	ld	a4,-32(s0)
     f22:	e398                	sd	a4,0(a5)
     f24:	fe843783          	ld	a5,-24(s0)
     f28:	07c1                	addi	a5,a5,16
     f2a:	a091                	j	f6e <malloc+0x134>
     f2c:	00000797          	auipc	a5,0x0
     f30:	54c78793          	addi	a5,a5,1356 # 1478 <freep>
     f34:	639c                	ld	a5,0(a5)
     f36:	fe843703          	ld	a4,-24(s0)
     f3a:	02f71063          	bne	a4,a5,f5a <malloc+0x120>
     f3e:	fdc42783          	lw	a5,-36(s0)
     f42:	853e                	mv	a0,a5
     f44:	00000097          	auipc	ra,0x0
     f48:	e76080e7          	jalr	-394(ra) # dba <morecore>
     f4c:	fea43423          	sd	a0,-24(s0)
     f50:	fe843783          	ld	a5,-24(s0)
     f54:	e399                	bnez	a5,f5a <malloc+0x120>
     f56:	4781                	li	a5,0
     f58:	a819                	j	f6e <malloc+0x134>
     f5a:	fe843783          	ld	a5,-24(s0)
     f5e:	fef43023          	sd	a5,-32(s0)
     f62:	fe843783          	ld	a5,-24(s0)
     f66:	639c                	ld	a5,0(a5)
     f68:	fef43423          	sd	a5,-24(s0)
     f6c:	b791                	j	eb0 <malloc+0x76>
     f6e:	853e                	mv	a0,a5
     f70:	70e2                	ld	ra,56(sp)
     f72:	7442                	ld	s0,48(sp)
     f74:	6121                	addi	sp,sp,64
     f76:	8082                	ret

0000000000000f78 <setjmp>:
     f78:	e100                	sd	s0,0(a0)
     f7a:	e504                	sd	s1,8(a0)
     f7c:	01253823          	sd	s2,16(a0)
     f80:	01353c23          	sd	s3,24(a0)
     f84:	03453023          	sd	s4,32(a0)
     f88:	03553423          	sd	s5,40(a0)
     f8c:	03653823          	sd	s6,48(a0)
     f90:	03753c23          	sd	s7,56(a0)
     f94:	05853023          	sd	s8,64(a0)
     f98:	05953423          	sd	s9,72(a0)
     f9c:	05a53823          	sd	s10,80(a0)
     fa0:	05b53c23          	sd	s11,88(a0)
     fa4:	06153023          	sd	ra,96(a0)
     fa8:	06253423          	sd	sp,104(a0)
     fac:	4501                	li	a0,0
     fae:	8082                	ret

0000000000000fb0 <longjmp>:
     fb0:	6100                	ld	s0,0(a0)
     fb2:	6504                	ld	s1,8(a0)
     fb4:	01053903          	ld	s2,16(a0)
     fb8:	01853983          	ld	s3,24(a0)
     fbc:	02053a03          	ld	s4,32(a0)
     fc0:	02853a83          	ld	s5,40(a0)
     fc4:	03053b03          	ld	s6,48(a0)
     fc8:	03853b83          	ld	s7,56(a0)
     fcc:	04053c03          	ld	s8,64(a0)
     fd0:	04853c83          	ld	s9,72(a0)
     fd4:	05053d03          	ld	s10,80(a0)
     fd8:	05853d83          	ld	s11,88(a0)
     fdc:	06053083          	ld	ra,96(a0)
     fe0:	06853103          	ld	sp,104(a0)
     fe4:	c199                	beqz	a1,fea <longjmp_1>
     fe6:	852e                	mv	a0,a1
     fe8:	8082                	ret

0000000000000fea <longjmp_1>:
     fea:	4505                	li	a0,1
     fec:	8082                	ret

0000000000000fee <thread_create>:
// static jmp_buf env_tmp;
int key=0;
// TODO: necessary declares, if any


struct thread *thread_create(void (*f)(void *), void *arg){
     fee:	7179                	addi	sp,sp,-48
     ff0:	f406                	sd	ra,40(sp)
     ff2:	f022                	sd	s0,32(sp)
     ff4:	ec26                	sd	s1,24(sp)
     ff6:	e84a                	sd	s2,16(sp)
     ff8:	e44e                	sd	s3,8(sp)
     ffa:	1800                	addi	s0,sp,48
     ffc:	89aa                	mv	s3,a0
     ffe:	892e                	mv	s2,a1
    struct thread *t = (struct thread*) malloc(sizeof(struct thread));
    1000:	0b800513          	li	a0,184
    1004:	00000097          	auipc	ra,0x0
    1008:	e36080e7          	jalr	-458(ra) # e3a <malloc>
    100c:	84aa                	mv	s1,a0
    //unsigned long stack_p = 0;
    unsigned long new_stack_p;
    unsigned long new_stack;
    new_stack = (unsigned long) malloc(sizeof(unsigned long)*0x100);
    100e:	6505                	lui	a0,0x1
    1010:	80050513          	addi	a0,a0,-2048 # 800 <printint+0x10>
    1014:	00000097          	auipc	ra,0x0
    1018:	e26080e7          	jalr	-474(ra) # e3a <malloc>
    new_stack_p = new_stack +0x100*8-0x2*8;
    t->fp = f;
    101c:	0134b023          	sd	s3,0(s1)
    t->arg = arg;
    1020:	0124b423          	sd	s2,8(s1)
    t->ID  = id;
    1024:	00000717          	auipc	a4,0x0
    1028:	42070713          	addi	a4,a4,1056 # 1444 <id>
    102c:	431c                	lw	a5,0(a4)
    102e:	08f4a823          	sw	a5,144(s1)
    t->buf_set = 0;
    1032:	0804ac23          	sw	zero,152(s1)
    t->stack = (void*) new_stack;
    1036:	e888                	sd	a0,16(s1)
    new_stack_p = new_stack +0x100*8-0x2*8;
    1038:	7f050513          	addi	a0,a0,2032
    t->stack_p = (void*) new_stack_p;
    103c:	ec88                	sd	a0,24(s1)
    id++;
    103e:	2785                	addiw	a5,a5,1
    1040:	c31c                	sw	a5,0(a4)
    return t;
}
    1042:	8526                	mv	a0,s1
    1044:	70a2                	ld	ra,40(sp)
    1046:	7402                	ld	s0,32(sp)
    1048:	64e2                	ld	s1,24(sp)
    104a:	6942                	ld	s2,16(sp)
    104c:	69a2                	ld	s3,8(sp)
    104e:	6145                	addi	sp,sp,48
    1050:	8082                	ret

0000000000001052 <thread_add_runqueue>:
void thread_add_runqueue(struct thread *t){
    1052:	1101                	addi	sp,sp,-32
    1054:	ec06                	sd	ra,24(sp)
    1056:	e822                	sd	s0,16(sp)
    1058:	e426                	sd	s1,8(sp)
    105a:	1000                	addi	s0,sp,32
    105c:	84aa                	mv	s1,a0
    if(current_thread == NULL){//如果current
    105e:	00000797          	auipc	a5,0x0
    1062:	4027b783          	ld	a5,1026(a5) # 1460 <current_thread>
    1066:	cf99                	beqz	a5,1084 <thread_add_runqueue+0x32>
        printf("thread1  ID:%d\n",root_thread->ID);
        #endif
    }
    else{
        // TODO
        if (current_thread->left!=NULL&&current_thread->right!=NULL)//thread左右都滿了，代表之前insert過了
    1068:	73d8                	ld	a4,160(a5)
    106a:	cf05                	beqz	a4,10a2 <thread_add_runqueue+0x50>
    106c:	77d8                	ld	a4,168(a5)
    106e:	cf05                	beqz	a4,10a6 <thread_add_runqueue+0x54>
        {
            free(t);//所以free掉
    1070:	00000097          	auipc	ra,0x0
    1074:	c28080e7          	jalr	-984(ra) # c98 <free>
            free(t->stack_p);
    1078:	6c88                	ld	a0,24(s1)
    107a:	00000097          	auipc	ra,0x0
    107e:	c1e080e7          	jalr	-994(ra) # c98 <free>
    1082:	a805                	j	10b2 <thread_add_runqueue+0x60>
        t->parent=NULL;
    1084:	0a053823          	sd	zero,176(a0)
        t->right=NULL;
    1088:	0a053423          	sd	zero,168(a0)
        t->left=NULL;
    108c:	0a053023          	sd	zero,160(a0)
        current_thread=t;
    1090:	00000797          	auipc	a5,0x0
    1094:	3ca7b823          	sd	a0,976(a5) # 1460 <current_thread>
        root_thread=t;
    1098:	00000797          	auipc	a5,0x0
    109c:	3ca7b023          	sd	a0,960(a5) # 1458 <root_thread>
    10a0:	a809                	j	10b2 <thread_add_runqueue+0x60>
        }
        else
        {
            if(current_thread->left==NULL)
            {
                current_thread->left=t;
    10a2:	f3c8                	sd	a0,160(a5)
    10a4:	a011                	j	10a8 <thread_add_runqueue+0x56>
                printf("thread1  left  ID:%d\n",t->ID);
                #endif
            }
            else 
            {
                current_thread->right=t;
    10a6:	f7c8                	sd	a0,168(a5)
                #endif
            }
            #if(debug==1)
            printf("parent  ID:%d\n",current_thread->ID);
            #endif
            t->parent=current_thread;
    10a8:	f8dc                	sd	a5,176(s1)
            t->right=NULL;
    10aa:	0a04b423          	sd	zero,168(s1)
            t->left=NULL;
    10ae:	0a04b023          	sd	zero,160(s1)
        }
        
       
        
    }
}
    10b2:	60e2                	ld	ra,24(sp)
    10b4:	6442                	ld	s0,16(sp)
    10b6:	64a2                	ld	s1,8(sp)
    10b8:	6105                	addi	sp,sp,32
    10ba:	8082                	ret

00000000000010bc <dispatch>:
        schedule();
        dispatch(); }
    else //long jump回來繼續執行function
    return;
}
void dispatch(void){
    10bc:	1141                	addi	sp,sp,-16
    10be:	e406                	sd	ra,8(sp)
    10c0:	e022                	sd	s0,0(sp)
    10c2:	0800                	addi	s0,sp,16
    // TODO
    if(current_thread->buf_set==0){//只有第一次dispatch會進來
    10c4:	00000517          	auipc	a0,0x0
    10c8:	39c53503          	ld	a0,924(a0) # 1460 <current_thread>
    10cc:	09852783          	lw	a5,152(a0)
    10d0:	eba1                	bnez	a5,1120 <dispatch+0x64>

    int ret=setjmp(current_thread->env);//第一次call setjmp會return 0
    10d2:	02050513          	addi	a0,a0,32
    10d6:	00000097          	auipc	ra,0x0
    10da:	ea2080e7          	jalr	-350(ra) # f78 <setjmp>
    if (ret==0)
    10de:	e90d                	bnez	a0,1110 <dispatch+0x54>
    {   
        current_thread->env->sp=(unsigned long)current_thread->stack_p;//初始化stack位置
    10e0:	00000797          	auipc	a5,0x0
    10e4:	3807b783          	ld	a5,896(a5) # 1460 <current_thread>
    10e8:	6f98                	ld	a4,24(a5)
    10ea:	e7d8                	sd	a4,136(a5)
        
        current_thread->buf_set=1;//第一次執行，所以要設1
    10ec:	4705                	li	a4,1
    10ee:	08e7ac23          	sw	a4,152(a5)
    }
    else
    {  
        current_thread->fp(current_thread->arg);//設定function pointer
    }
    longjmp(current_thread->env,1);
    10f2:	4585                	li	a1,1
    10f4:	00000517          	auipc	a0,0x0
    10f8:	36c53503          	ld	a0,876(a0) # 1460 <current_thread>
    10fc:	02050513          	addi	a0,a0,32
    1100:	00000097          	auipc	ra,0x0
    1104:	eb0080e7          	jalr	-336(ra) # fb0 <longjmp>
    }
    else
    longjmp(current_thread->env,1);//long jump 回去yield
}
    1108:	60a2                	ld	ra,8(sp)
    110a:	6402                	ld	s0,0(sp)
    110c:	0141                	addi	sp,sp,16
    110e:	8082                	ret
        current_thread->fp(current_thread->arg);//設定function pointer
    1110:	00000797          	auipc	a5,0x0
    1114:	3507b783          	ld	a5,848(a5) # 1460 <current_thread>
    1118:	6398                	ld	a4,0(a5)
    111a:	6788                	ld	a0,8(a5)
    111c:	9702                	jalr	a4
    111e:	bfd1                	j	10f2 <dispatch+0x36>
    longjmp(current_thread->env,1);//long jump 回去yield
    1120:	4585                	li	a1,1
    1122:	02050513          	addi	a0,a0,32
    1126:	00000097          	auipc	ra,0x0
    112a:	e8a080e7          	jalr	-374(ra) # fb0 <longjmp>
}
    112e:	bfe9                	j	1108 <dispatch+0x4c>

0000000000001130 <preorder_sch>:




void preorder_sch(struct thread* root){
    if (root!=NULL)
    1130:	c149                	beqz	a0,11b2 <preorder_sch+0x82>
void preorder_sch(struct thread* root){
    1132:	1101                	addi	sp,sp,-32
    1134:	ec06                	sd	ra,24(sp)
    1136:	e822                	sd	s0,16(sp)
    1138:	e426                	sd	s1,8(sp)
    113a:	1000                	addi	s0,sp,32
    113c:	84aa                	mv	s1,a0
    {   if(current_thread!=pre_thread){
    113e:	00000797          	auipc	a5,0x0
    1142:	3227b783          	ld	a5,802(a5) # 1460 <current_thread>
    1146:	00000717          	auipc	a4,0x0
    114a:	30a73703          	ld	a4,778(a4) # 1450 <pre_thread>
    114e:	04e78963          	beq	a5,a4,11a0 <preorder_sch+0x70>
        /* code */
        if (current_thread==root)key=1;//當遞迴到root=current，把key設為1
    1152:	02a78863          	beq	a5,a0,1182 <preorder_sch+0x52>
        else if (key==1){//current_thread往下遞迴看誰先拿到key
    1156:	00000717          	auipc	a4,0x0
    115a:	2f272703          	lw	a4,754(a4) # 1448 <key>
    115e:	4785                	li	a5,1
    1160:	02f70763          	beq	a4,a5,118e <preorder_sch+0x5e>
            current_thread=root;//拿到的就是下一個要執行的thread
            key=0;//把key設成0
            return;//跳出遞迴的部份，往其他地方traversal
        }
        preorder_sch(root->left);
    1164:	70c8                	ld	a0,160(s1)
    1166:	00000097          	auipc	ra,0x0
    116a:	fca080e7          	jalr	-54(ra) # 1130 <preorder_sch>
        preorder_sch(root->right);}
    116e:	74c8                	ld	a0,168(s1)
    1170:	00000097          	auipc	ra,0x0
    1174:	fc0080e7          	jalr	-64(ra) # 1130 <preorder_sch>
        else{
        current_thread=root_thread;//current thread為最後一個thread，跳至root
        return;}
    }
}
    1178:	60e2                	ld	ra,24(sp)
    117a:	6442                	ld	s0,16(sp)
    117c:	64a2                	ld	s1,8(sp)
    117e:	6105                	addi	sp,sp,32
    1180:	8082                	ret
        if (current_thread==root)key=1;//當遞迴到root=current，把key設為1
    1182:	4785                	li	a5,1
    1184:	00000717          	auipc	a4,0x0
    1188:	2cf72223          	sw	a5,708(a4) # 1448 <key>
    118c:	bfe1                	j	1164 <preorder_sch+0x34>
            current_thread=root;//拿到的就是下一個要執行的thread
    118e:	00000797          	auipc	a5,0x0
    1192:	2ca7b923          	sd	a0,722(a5) # 1460 <current_thread>
            key=0;//把key設成0
    1196:	00000797          	auipc	a5,0x0
    119a:	2a07a923          	sw	zero,690(a5) # 1448 <key>
            return;//跳出遞迴的部份，往其他地方traversal
    119e:	bfe9                	j	1178 <preorder_sch+0x48>
        current_thread=root_thread;//current thread為最後一個thread，跳至root
    11a0:	00000797          	auipc	a5,0x0
    11a4:	2b87b783          	ld	a5,696(a5) # 1458 <root_thread>
    11a8:	00000717          	auipc	a4,0x0
    11ac:	2af73c23          	sd	a5,696(a4) # 1460 <current_thread>
        return;}
    11b0:	b7e1                	j	1178 <preorder_sch+0x48>
    11b2:	8082                	ret

00000000000011b4 <find_preorder>:




void find_preorder(struct thread* t){
    if (t!=NULL)
    11b4:	c915                	beqz	a0,11e8 <find_preorder+0x34>
void find_preorder(struct thread* t){
    11b6:	1101                	addi	sp,sp,-32
    11b8:	ec06                	sd	ra,24(sp)
    11ba:	e822                	sd	s0,16(sp)
    11bc:	e426                	sd	s1,8(sp)
    11be:	1000                	addi	s0,sp,32
    11c0:	84aa                	mv	s1,a0
    {   pre_thread=t;//traversal的最後一個值就是preorder的thread
    11c2:	00000797          	auipc	a5,0x0
    11c6:	28a7b723          	sd	a0,654(a5) # 1450 <pre_thread>
        /* code */
        find_preorder(t->left);
    11ca:	7148                	ld	a0,160(a0)
    11cc:	00000097          	auipc	ra,0x0
    11d0:	fe8080e7          	jalr	-24(ra) # 11b4 <find_preorder>
        find_preorder(t->right);
    11d4:	74c8                	ld	a0,168(s1)
    11d6:	00000097          	auipc	ra,0x0
    11da:	fde080e7          	jalr	-34(ra) # 11b4 <find_preorder>
    }   
}
    11de:	60e2                	ld	ra,24(sp)
    11e0:	6442                	ld	s0,16(sp)
    11e2:	64a2                	ld	s1,8(sp)
    11e4:	6105                	addi	sp,sp,32
    11e6:	8082                	ret
    11e8:	8082                	ret

00000000000011ea <schedule>:
void schedule(void){
    11ea:	1101                	addi	sp,sp,-32
    11ec:	ec06                	sd	ra,24(sp)
    11ee:	e822                	sd	s0,16(sp)
    11f0:	e426                	sd	s1,8(sp)
    11f2:	1000                	addi	s0,sp,32
    find_preorder(root_thread);//先找出當下的preorder的thread
    11f4:	00000497          	auipc	s1,0x0
    11f8:	2644b483          	ld	s1,612(s1) # 1458 <root_thread>
    11fc:	8526                	mv	a0,s1
    11fe:	00000097          	auipc	ra,0x0
    1202:	fb6080e7          	jalr	-74(ra) # 11b4 <find_preorder>
    preorder_sch(root_thread);
    1206:	8526                	mv	a0,s1
    1208:	00000097          	auipc	ra,0x0
    120c:	f28080e7          	jalr	-216(ra) # 1130 <preorder_sch>
}
    1210:	60e2                	ld	ra,24(sp)
    1212:	6442                	ld	s0,16(sp)
    1214:	64a2                	ld	s1,8(sp)
    1216:	6105                	addi	sp,sp,32
    1218:	8082                	ret

000000000000121a <thread_yield>:
void thread_yield(void){
    121a:	1141                	addi	sp,sp,-16
    121c:	e406                	sd	ra,8(sp)
    121e:	e022                	sd	s0,0(sp)
    1220:	0800                	addi	s0,sp,16
    if(setjmp(current_thread->env)==0)//初始化setjmp，讓它卡在yield那邊
    1222:	00000517          	auipc	a0,0x0
    1226:	23e53503          	ld	a0,574(a0) # 1460 <current_thread>
    122a:	02050513          	addi	a0,a0,32
    122e:	00000097          	auipc	ra,0x0
    1232:	d4a080e7          	jalr	-694(ra) # f78 <setjmp>
    1236:	c509                	beqz	a0,1240 <thread_yield+0x26>
}
    1238:	60a2                	ld	ra,8(sp)
    123a:	6402                	ld	s0,0(sp)
    123c:	0141                	addi	sp,sp,16
    123e:	8082                	ret
        schedule();
    1240:	00000097          	auipc	ra,0x0
    1244:	faa080e7          	jalr	-86(ra) # 11ea <schedule>
        dispatch(); }
    1248:	00000097          	auipc	ra,0x0
    124c:	e74080e7          	jalr	-396(ra) # 10bc <dispatch>
    1250:	b7e5                	j	1238 <thread_yield+0x1e>

0000000000001252 <thread_exit>:
void thread_exit(void){
    1252:	1101                	addi	sp,sp,-32
    1254:	ec06                	sd	ra,24(sp)
    1256:	e822                	sd	s0,16(sp)
    1258:	e426                	sd	s1,8(sp)
    125a:	e04a                	sd	s2,0(sp)
    125c:	1000                	addi	s0,sp,32
    if(current_thread == root_thread && current_thread->left == NULL && current_thread->right == NULL){
    125e:	00000497          	auipc	s1,0x0
    1262:	2024b483          	ld	s1,514(s1) # 1460 <current_thread>
    1266:	00000917          	auipc	s2,0x0
    126a:	1f293903          	ld	s2,498(s2) # 1458 <root_thread>
    126e:	09248263          	beq	s1,s2,12f2 <thread_exit+0xa0>
        find_preorder(current_thread);
    1272:	8526                	mv	a0,s1
    1274:	00000097          	auipc	ra,0x0
    1278:	f40080e7          	jalr	-192(ra) # 11b4 <find_preorder>
        if (current_thread->left!=NULL||current_thread->right!=NULL)//要跳出去的thread下面還有child
    127c:	70dc                	ld	a5,160(s1)
    127e:	c7d5                	beqz	a5,132a <thread_exit+0xd8>
            schedule();//先找好下一個要跳的thread
    1280:	00000097          	auipc	ra,0x0
    1284:	f6a080e7          	jalr	-150(ra) # 11ea <schedule>
            if(pre_thread==pre_thread->parent->left)pre_thread->parent->left=NULL;
    1288:	00000797          	auipc	a5,0x0
    128c:	1c87b783          	ld	a5,456(a5) # 1450 <pre_thread>
    1290:	7bd8                	ld	a4,176(a5)
    1292:	7354                	ld	a3,160(a4)
    1294:	0cd78663          	beq	a5,a3,1360 <thread_exit+0x10e>
            else pre_thread->parent->right=NULL;
    1298:	0a073423          	sd	zero,168(a4)
           if(current->left==pre_thread)pre_thread->left=NULL; 
    129c:	70d8                	ld	a4,160(s1)
    129e:	0ce78463          	beq	a5,a4,1366 <thread_exit+0x114>
    12a2:	f3d8                	sd	a4,160(a5)
           if(current->right==pre_thread)pre_thread->right=NULL;
    12a4:	74d8                	ld	a4,168(s1)
    12a6:	0ce78263          	beq	a5,a4,136a <thread_exit+0x118>
    12aa:	f7d8                	sd	a4,168(a5)
            if(current==root_thread){
    12ac:	0d248163          	beq	s1,s2,136e <thread_exit+0x11c>
            if(current==current->parent->left)current->parent->left=pre_thread;
    12b0:	78d8                	ld	a4,176(s1)
    12b2:	7354                	ld	a3,160(a4)
    12b4:	0cd48a63          	beq	s1,a3,1388 <thread_exit+0x136>
            else current->parent->right=pre_thread;
    12b8:	f75c                	sd	a5,168(a4)
            if (current->left!=NULL)current->left->parent=pre_thread;
    12ba:	70d8                	ld	a4,160(s1)
    12bc:	c311                	beqz	a4,12c0 <thread_exit+0x6e>
    12be:	fb5c                	sd	a5,176(a4)
            if (current->right!=NULL)current->right->parent=pre_thread;
    12c0:	74d8                	ld	a4,168(s1)
    12c2:	c311                	beqz	a4,12c6 <thread_exit+0x74>
    12c4:	fb5c                	sd	a5,176(a4)
            pre_thread->parent=current->parent;}
    12c6:	78d8                	ld	a4,176(s1)
    12c8:	fbd8                	sd	a4,176(a5)
           free(current);
    12ca:	8526                	mv	a0,s1
    12cc:	00000097          	auipc	ra,0x0
    12d0:	9cc080e7          	jalr	-1588(ra) # c98 <free>
           free(current->stack);
    12d4:	6888                	ld	a0,16(s1)
    12d6:	00000097          	auipc	ra,0x0
    12da:	9c2080e7          	jalr	-1598(ra) # c98 <free>
            dispatch();
    12de:	00000097          	auipc	ra,0x0
    12e2:	dde080e7          	jalr	-546(ra) # 10bc <dispatch>
}
    12e6:	60e2                	ld	ra,24(sp)
    12e8:	6442                	ld	s0,16(sp)
    12ea:	64a2                	ld	s1,8(sp)
    12ec:	6902                	ld	s2,0(sp)
    12ee:	6105                	addi	sp,sp,32
    12f0:	8082                	ret
    if(current_thread == root_thread && current_thread->left == NULL && current_thread->right == NULL){
    12f2:	70dc                	ld	a5,160(s1)
    12f4:	ffbd                	bnez	a5,1272 <thread_exit+0x20>
    12f6:	74dc                	ld	a5,168(s1)
    12f8:	ffad                	bnez	a5,1272 <thread_exit+0x20>
        free(current_thread);
    12fa:	8526                	mv	a0,s1
    12fc:	00000097          	auipc	ra,0x0
    1300:	99c080e7          	jalr	-1636(ra) # c98 <free>
        free(current_thread->stack);
    1304:	00000797          	auipc	a5,0x0
    1308:	15c7b783          	ld	a5,348(a5) # 1460 <current_thread>
    130c:	6b88                	ld	a0,16(a5)
    130e:	00000097          	auipc	ra,0x0
    1312:	98a080e7          	jalr	-1654(ra) # c98 <free>
        longjmp(env_st,1);//跳回main function
    1316:	4585                	li	a1,1
    1318:	00000517          	auipc	a0,0x0
    131c:	16850513          	addi	a0,a0,360 # 1480 <env_st>
    1320:	00000097          	auipc	ra,0x0
    1324:	c90080e7          	jalr	-880(ra) # fb0 <longjmp>
    1328:	bf7d                	j	12e6 <thread_exit+0x94>
        if (current_thread->left!=NULL||current_thread->right!=NULL)//要跳出去的thread下面還有child
    132a:	74dc                	ld	a5,168(s1)
    132c:	fbb1                	bnez	a5,1280 <thread_exit+0x2e>
        schedule();//先看下一個要跳到哪個thread
    132e:	00000097          	auipc	ra,0x0
    1332:	ebc080e7          	jalr	-324(ra) # 11ea <schedule>
         if (current==current->parent->left)current->parent->left=NULL;
    1336:	78dc                	ld	a5,176(s1)
    1338:	73d8                	ld	a4,160(a5)
    133a:	04e48963          	beq	s1,a4,138c <thread_exit+0x13a>
         else current->parent->right=NULL;
    133e:	0a07b423          	sd	zero,168(a5)
        free(current);
    1342:	8526                	mv	a0,s1
    1344:	00000097          	auipc	ra,0x0
    1348:	954080e7          	jalr	-1708(ra) # c98 <free>
        free(current->stack);
    134c:	6888                	ld	a0,16(s1)
    134e:	00000097          	auipc	ra,0x0
    1352:	94a080e7          	jalr	-1718(ra) # c98 <free>
        dispatch();}
    1356:	00000097          	auipc	ra,0x0
    135a:	d66080e7          	jalr	-666(ra) # 10bc <dispatch>
}
    135e:	b761                	j	12e6 <thread_exit+0x94>
            if(pre_thread==pre_thread->parent->left)pre_thread->parent->left=NULL;
    1360:	0a073023          	sd	zero,160(a4)
    1364:	bf25                	j	129c <thread_exit+0x4a>
           if(current->left==pre_thread)pre_thread->left=NULL; 
    1366:	4701                	li	a4,0
    1368:	bf2d                	j	12a2 <thread_exit+0x50>
           if(current->right==pre_thread)pre_thread->right=NULL;
    136a:	4701                	li	a4,0
    136c:	bf3d                	j	12aa <thread_exit+0x58>
               pre_thread->parent=NULL;
    136e:	0a07b823          	sd	zero,176(a5)
               if (current->left!=NULL)current->left->parent=pre_thread;
    1372:	70d8                	ld	a4,160(s1)
    1374:	c311                	beqz	a4,1378 <thread_exit+0x126>
    1376:	fb5c                	sd	a5,176(a4)
               if (current->right!=NULL)current->right->parent=pre_thread;
    1378:	74d8                	ld	a4,168(s1)
    137a:	c311                	beqz	a4,137e <thread_exit+0x12c>
    137c:	fb5c                	sd	a5,176(a4)
               root_thread=pre_thread;
    137e:	00000717          	auipc	a4,0x0
    1382:	0cf73d23          	sd	a5,218(a4) # 1458 <root_thread>
    1386:	b791                	j	12ca <thread_exit+0x78>
            if(current==current->parent->left)current->parent->left=pre_thread;
    1388:	f35c                	sd	a5,160(a4)
    138a:	bf05                	j	12ba <thread_exit+0x68>
         if (current==current->parent->left)current->parent->left=NULL;
    138c:	0a07b023          	sd	zero,160(a5)
    1390:	bf4d                	j	1342 <thread_exit+0xf0>

0000000000001392 <thread_start_threading>:





void thread_start_threading(void){
    1392:	1141                	addi	sp,sp,-16
    1394:	e406                	sd	ra,8(sp)
    1396:	e022                	sd	s0,0(sp)
    1398:	0800                	addi	s0,sp,16
    // TODO
    if(setjmp(env_st)==0){
    139a:	00000517          	auipc	a0,0x0
    139e:	0e650513          	addi	a0,a0,230 # 1480 <env_st>
    13a2:	00000097          	auipc	ra,0x0
    13a6:	bd6080e7          	jalr	-1066(ra) # f78 <setjmp>
    13aa:	c509                	beqz	a0,13b4 <thread_start_threading+0x22>
    dispatch();  }
    else
    return;
    13ac:	60a2                	ld	ra,8(sp)
    13ae:	6402                	ld	s0,0(sp)
    13b0:	0141                	addi	sp,sp,16
    13b2:	8082                	ret
    dispatch();  }
    13b4:	00000097          	auipc	ra,0x0
    13b8:	d08080e7          	jalr	-760(ra) # 10bc <dispatch>
    13bc:	bfc5                	j	13ac <thread_start_threading+0x1a>
