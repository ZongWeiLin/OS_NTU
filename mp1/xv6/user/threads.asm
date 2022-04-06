
user/_threads:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <thread_create>:
// static jmp_buf env_tmp;
int key=0;
// TODO: necessary declares, if any


struct thread *thread_create(void (*f)(void *), void *arg){
       0:	7179                	addi	sp,sp,-48
       2:	f406                	sd	ra,40(sp)
       4:	f022                	sd	s0,32(sp)
       6:	ec26                	sd	s1,24(sp)
       8:	e84a                	sd	s2,16(sp)
       a:	e44e                	sd	s3,8(sp)
       c:	1800                	addi	s0,sp,48
       e:	89aa                	mv	s3,a0
      10:	892e                	mv	s2,a1
    struct thread *t = (struct thread*) malloc(sizeof(struct thread));
      12:	0b800513          	li	a0,184
      16:	00001097          	auipc	ra,0x1
      1a:	f6a080e7          	jalr	-150(ra) # f80 <malloc>
      1e:	84aa                	mv	s1,a0
    //unsigned long stack_p = 0;
    unsigned long new_stack_p;
    unsigned long new_stack;
    new_stack = (unsigned long) malloc(sizeof(unsigned long)*0x100);
      20:	6505                	lui	a0,0x1
      22:	80050513          	addi	a0,a0,-2048 # 800 <memcmp+0x64>
      26:	00001097          	auipc	ra,0x1
      2a:	f5a080e7          	jalr	-166(ra) # f80 <malloc>
    new_stack_p = new_stack +0x100*8-0x2*8;
    t->fp = f;
      2e:	0134b023          	sd	s3,0(s1)
    t->arg = arg;
      32:	0124b423          	sd	s2,8(s1)
    t->ID  = id;
      36:	00001717          	auipc	a4,0x1
      3a:	11e70713          	addi	a4,a4,286 # 1154 <id>
      3e:	431c                	lw	a5,0(a4)
      40:	08f4a823          	sw	a5,144(s1)
    t->buf_set = 0;
      44:	0804ac23          	sw	zero,152(s1)
    t->stack = (void*) new_stack;
      48:	e888                	sd	a0,16(s1)
    new_stack_p = new_stack +0x100*8-0x2*8;
      4a:	7f050513          	addi	a0,a0,2032
    t->stack_p = (void*) new_stack_p;
      4e:	ec88                	sd	a0,24(s1)
    id++;
      50:	2785                	addiw	a5,a5,1
      52:	c31c                	sw	a5,0(a4)
    return t;
}
      54:	8526                	mv	a0,s1
      56:	70a2                	ld	ra,40(sp)
      58:	7402                	ld	s0,32(sp)
      5a:	64e2                	ld	s1,24(sp)
      5c:	6942                	ld	s2,16(sp)
      5e:	69a2                	ld	s3,8(sp)
      60:	6145                	addi	sp,sp,48
      62:	8082                	ret

0000000000000064 <thread_add_runqueue>:
void thread_add_runqueue(struct thread *t){
      64:	1101                	addi	sp,sp,-32
      66:	ec06                	sd	ra,24(sp)
      68:	e822                	sd	s0,16(sp)
      6a:	e426                	sd	s1,8(sp)
      6c:	1000                	addi	s0,sp,32
      6e:	84aa                	mv	s1,a0
    if(current_thread == NULL){//如果current
      70:	00001797          	auipc	a5,0x1
      74:	1007b783          	ld	a5,256(a5) # 1170 <current_thread>
      78:	cf99                	beqz	a5,96 <thread_add_runqueue+0x32>
        printf("thread1  ID:%d\n",root_thread->ID);
        #endif
    }
    else{
        // TODO
        if (current_thread->left!=NULL&&current_thread->right!=NULL)//thread左右都滿了，代表之前insert過了
      7a:	73d8                	ld	a4,160(a5)
      7c:	cf05                	beqz	a4,b4 <thread_add_runqueue+0x50>
      7e:	77d8                	ld	a4,168(a5)
      80:	cf05                	beqz	a4,b8 <thread_add_runqueue+0x54>
        {
            free(t);//所以free掉
      82:	00001097          	auipc	ra,0x1
      86:	d5c080e7          	jalr	-676(ra) # dde <free>
            free(t->stack_p);
      8a:	6c88                	ld	a0,24(s1)
      8c:	00001097          	auipc	ra,0x1
      90:	d52080e7          	jalr	-686(ra) # dde <free>
      94:	a805                	j	c4 <thread_add_runqueue+0x60>
        t->parent=NULL;
      96:	0a053823          	sd	zero,176(a0)
        t->right=NULL;
      9a:	0a053423          	sd	zero,168(a0)
        t->left=NULL;
      9e:	0a053023          	sd	zero,160(a0)
        current_thread=t;
      a2:	00001797          	auipc	a5,0x1
      a6:	0ca7b723          	sd	a0,206(a5) # 1170 <current_thread>
        root_thread=t;
      aa:	00001797          	auipc	a5,0x1
      ae:	0aa7bf23          	sd	a0,190(a5) # 1168 <root_thread>
      b2:	a809                	j	c4 <thread_add_runqueue+0x60>
        }
        else
        {
            if(current_thread->left==NULL)
            {
                current_thread->left=t;
      b4:	f3c8                	sd	a0,160(a5)
      b6:	a011                	j	ba <thread_add_runqueue+0x56>
                printf("thread1  left  ID:%d\n",t->ID);
                #endif
            }
            else 
            {
                current_thread->right=t;
      b8:	f7c8                	sd	a0,168(a5)
                #endif
            }
            #if(debug==1)
            printf("parent  ID:%d\n",current_thread->ID);
            #endif
            t->parent=current_thread;
      ba:	f8dc                	sd	a5,176(s1)
            t->right=NULL;
      bc:	0a04b423          	sd	zero,168(s1)
            t->left=NULL;
      c0:	0a04b023          	sd	zero,160(s1)
        }
        
       
        
    }
}
      c4:	60e2                	ld	ra,24(sp)
      c6:	6442                	ld	s0,16(sp)
      c8:	64a2                	ld	s1,8(sp)
      ca:	6105                	addi	sp,sp,32
      cc:	8082                	ret

00000000000000ce <dispatch>:
        schedule();
        dispatch(); }
    else //long jump回來繼續執行function
    return;
}
void dispatch(void){
      ce:	1141                	addi	sp,sp,-16
      d0:	e406                	sd	ra,8(sp)
      d2:	e022                	sd	s0,0(sp)
      d4:	0800                	addi	s0,sp,16
    // TODO
    if(current_thread->buf_set==0){//只有第一次dispatch會進來
      d6:	00001517          	auipc	a0,0x1
      da:	09a53503          	ld	a0,154(a0) # 1170 <current_thread>
      de:	09852783          	lw	a5,152(a0)
      e2:	eba1                	bnez	a5,132 <dispatch+0x64>

    int ret=setjmp(current_thread->env);//第一次call setjmp會return 0
      e4:	02050513          	addi	a0,a0,32
      e8:	00001097          	auipc	ra,0x1
      ec:	fd6080e7          	jalr	-42(ra) # 10be <setjmp>
    if (ret==0)
      f0:	e90d                	bnez	a0,122 <dispatch+0x54>
    {   
        current_thread->env->sp=(unsigned long)current_thread->stack_p;//初始化stack位置
      f2:	00001797          	auipc	a5,0x1
      f6:	07e7b783          	ld	a5,126(a5) # 1170 <current_thread>
      fa:	6f98                	ld	a4,24(a5)
      fc:	e7d8                	sd	a4,136(a5)
        
        current_thread->buf_set=1;//第一次執行，所以要設1
      fe:	4705                	li	a4,1
     100:	08e7ac23          	sw	a4,152(a5)
    }
    else
    {  
        current_thread->fp(current_thread->arg);//設定function pointer
    }
    longjmp(current_thread->env,1);
     104:	4585                	li	a1,1
     106:	00001517          	auipc	a0,0x1
     10a:	06a53503          	ld	a0,106(a0) # 1170 <current_thread>
     10e:	02050513          	addi	a0,a0,32
     112:	00001097          	auipc	ra,0x1
     116:	fe4080e7          	jalr	-28(ra) # 10f6 <longjmp>
    }
    else
    longjmp(current_thread->env,1);//long jump 回去yield
}
     11a:	60a2                	ld	ra,8(sp)
     11c:	6402                	ld	s0,0(sp)
     11e:	0141                	addi	sp,sp,16
     120:	8082                	ret
        current_thread->fp(current_thread->arg);//設定function pointer
     122:	00001797          	auipc	a5,0x1
     126:	04e7b783          	ld	a5,78(a5) # 1170 <current_thread>
     12a:	6398                	ld	a4,0(a5)
     12c:	6788                	ld	a0,8(a5)
     12e:	9702                	jalr	a4
     130:	bfd1                	j	104 <dispatch+0x36>
    longjmp(current_thread->env,1);//long jump 回去yield
     132:	4585                	li	a1,1
     134:	02050513          	addi	a0,a0,32
     138:	00001097          	auipc	ra,0x1
     13c:	fbe080e7          	jalr	-66(ra) # 10f6 <longjmp>
}
     140:	bfe9                	j	11a <dispatch+0x4c>

0000000000000142 <preorder_sch>:




void preorder_sch(struct thread* root){
    if (root!=NULL)
     142:	c149                	beqz	a0,1c4 <preorder_sch+0x82>
void preorder_sch(struct thread* root){
     144:	1101                	addi	sp,sp,-32
     146:	ec06                	sd	ra,24(sp)
     148:	e822                	sd	s0,16(sp)
     14a:	e426                	sd	s1,8(sp)
     14c:	1000                	addi	s0,sp,32
     14e:	84aa                	mv	s1,a0
    {   if(current_thread!=pre_thread){
     150:	00001797          	auipc	a5,0x1
     154:	0207b783          	ld	a5,32(a5) # 1170 <current_thread>
     158:	00001717          	auipc	a4,0x1
     15c:	00873703          	ld	a4,8(a4) # 1160 <pre_thread>
     160:	04e78963          	beq	a5,a4,1b2 <preorder_sch+0x70>
        /* code */
        if (current_thread==root)key=1;//當遞迴到root=current，把key設為1
     164:	02a78863          	beq	a5,a0,194 <preorder_sch+0x52>
        else if (key==1){//current_thread往下遞迴看誰先拿到key
     168:	00001717          	auipc	a4,0x1
     16c:	ff072703          	lw	a4,-16(a4) # 1158 <key>
     170:	4785                	li	a5,1
     172:	02f70763          	beq	a4,a5,1a0 <preorder_sch+0x5e>
            current_thread=root;//拿到的就是下一個要執行的thread
            key=0;//把key設成0
            return;//跳出遞迴的部份，往其他地方traversal
        }
        preorder_sch(root->left);
     176:	70c8                	ld	a0,160(s1)
     178:	00000097          	auipc	ra,0x0
     17c:	fca080e7          	jalr	-54(ra) # 142 <preorder_sch>
        preorder_sch(root->right);}
     180:	74c8                	ld	a0,168(s1)
     182:	00000097          	auipc	ra,0x0
     186:	fc0080e7          	jalr	-64(ra) # 142 <preorder_sch>
        else{
        current_thread=root_thread;//current thread為最後一個thread，跳至root
        return;}
    }
}
     18a:	60e2                	ld	ra,24(sp)
     18c:	6442                	ld	s0,16(sp)
     18e:	64a2                	ld	s1,8(sp)
     190:	6105                	addi	sp,sp,32
     192:	8082                	ret
        if (current_thread==root)key=1;//當遞迴到root=current，把key設為1
     194:	4785                	li	a5,1
     196:	00001717          	auipc	a4,0x1
     19a:	fcf72123          	sw	a5,-62(a4) # 1158 <key>
     19e:	bfe1                	j	176 <preorder_sch+0x34>
            current_thread=root;//拿到的就是下一個要執行的thread
     1a0:	00001797          	auipc	a5,0x1
     1a4:	fca7b823          	sd	a0,-48(a5) # 1170 <current_thread>
            key=0;//把key設成0
     1a8:	00001797          	auipc	a5,0x1
     1ac:	fa07a823          	sw	zero,-80(a5) # 1158 <key>
            return;//跳出遞迴的部份，往其他地方traversal
     1b0:	bfe9                	j	18a <preorder_sch+0x48>
        current_thread=root_thread;//current thread為最後一個thread，跳至root
     1b2:	00001797          	auipc	a5,0x1
     1b6:	fb67b783          	ld	a5,-74(a5) # 1168 <root_thread>
     1ba:	00001717          	auipc	a4,0x1
     1be:	faf73b23          	sd	a5,-74(a4) # 1170 <current_thread>
        return;}
     1c2:	b7e1                	j	18a <preorder_sch+0x48>
     1c4:	8082                	ret

00000000000001c6 <find_preorder>:




void find_preorder(struct thread* t){
    if (t!=NULL)
     1c6:	c915                	beqz	a0,1fa <find_preorder+0x34>
void find_preorder(struct thread* t){
     1c8:	1101                	addi	sp,sp,-32
     1ca:	ec06                	sd	ra,24(sp)
     1cc:	e822                	sd	s0,16(sp)
     1ce:	e426                	sd	s1,8(sp)
     1d0:	1000                	addi	s0,sp,32
     1d2:	84aa                	mv	s1,a0
    {   pre_thread=t;//traversal的最後一個值就是preorder的thread
     1d4:	00001797          	auipc	a5,0x1
     1d8:	f8a7b623          	sd	a0,-116(a5) # 1160 <pre_thread>
        /* code */
        find_preorder(t->left);
     1dc:	7148                	ld	a0,160(a0)
     1de:	00000097          	auipc	ra,0x0
     1e2:	fe8080e7          	jalr	-24(ra) # 1c6 <find_preorder>
        find_preorder(t->right);
     1e6:	74c8                	ld	a0,168(s1)
     1e8:	00000097          	auipc	ra,0x0
     1ec:	fde080e7          	jalr	-34(ra) # 1c6 <find_preorder>
    }   
}
     1f0:	60e2                	ld	ra,24(sp)
     1f2:	6442                	ld	s0,16(sp)
     1f4:	64a2                	ld	s1,8(sp)
     1f6:	6105                	addi	sp,sp,32
     1f8:	8082                	ret
     1fa:	8082                	ret

00000000000001fc <schedule>:
void schedule(void){
     1fc:	1101                	addi	sp,sp,-32
     1fe:	ec06                	sd	ra,24(sp)
     200:	e822                	sd	s0,16(sp)
     202:	e426                	sd	s1,8(sp)
     204:	1000                	addi	s0,sp,32
    find_preorder(root_thread);//先找出當下的preorder的thread
     206:	00001497          	auipc	s1,0x1
     20a:	f624b483          	ld	s1,-158(s1) # 1168 <root_thread>
     20e:	8526                	mv	a0,s1
     210:	00000097          	auipc	ra,0x0
     214:	fb6080e7          	jalr	-74(ra) # 1c6 <find_preorder>
    preorder_sch(root_thread);
     218:	8526                	mv	a0,s1
     21a:	00000097          	auipc	ra,0x0
     21e:	f28080e7          	jalr	-216(ra) # 142 <preorder_sch>
}
     222:	60e2                	ld	ra,24(sp)
     224:	6442                	ld	s0,16(sp)
     226:	64a2                	ld	s1,8(sp)
     228:	6105                	addi	sp,sp,32
     22a:	8082                	ret

000000000000022c <thread_yield>:
void thread_yield(void){
     22c:	1141                	addi	sp,sp,-16
     22e:	e406                	sd	ra,8(sp)
     230:	e022                	sd	s0,0(sp)
     232:	0800                	addi	s0,sp,16
    if(setjmp(current_thread->env)==0)//初始化setjmp，讓它卡在yield那邊
     234:	00001517          	auipc	a0,0x1
     238:	f3c53503          	ld	a0,-196(a0) # 1170 <current_thread>
     23c:	02050513          	addi	a0,a0,32
     240:	00001097          	auipc	ra,0x1
     244:	e7e080e7          	jalr	-386(ra) # 10be <setjmp>
     248:	c509                	beqz	a0,252 <thread_yield+0x26>
}
     24a:	60a2                	ld	ra,8(sp)
     24c:	6402                	ld	s0,0(sp)
     24e:	0141                	addi	sp,sp,16
     250:	8082                	ret
        schedule();
     252:	00000097          	auipc	ra,0x0
     256:	faa080e7          	jalr	-86(ra) # 1fc <schedule>
        dispatch(); }
     25a:	00000097          	auipc	ra,0x0
     25e:	e74080e7          	jalr	-396(ra) # ce <dispatch>
     262:	b7e5                	j	24a <thread_yield+0x1e>

0000000000000264 <thread_exit>:
void thread_exit(void){
     264:	1101                	addi	sp,sp,-32
     266:	ec06                	sd	ra,24(sp)
     268:	e822                	sd	s0,16(sp)
     26a:	e426                	sd	s1,8(sp)
     26c:	e04a                	sd	s2,0(sp)
     26e:	1000                	addi	s0,sp,32
    if(current_thread == root_thread && current_thread->left == NULL && current_thread->right == NULL){
     270:	00001497          	auipc	s1,0x1
     274:	f004b483          	ld	s1,-256(s1) # 1170 <current_thread>
     278:	00001917          	auipc	s2,0x1
     27c:	ef093903          	ld	s2,-272(s2) # 1168 <root_thread>
     280:	09248263          	beq	s1,s2,304 <thread_exit+0xa0>
        find_preorder(current_thread);
     284:	8526                	mv	a0,s1
     286:	00000097          	auipc	ra,0x0
     28a:	f40080e7          	jalr	-192(ra) # 1c6 <find_preorder>
        if (current_thread->left!=NULL||current_thread->right!=NULL)//要跳出去的thread下面還有child
     28e:	70dc                	ld	a5,160(s1)
     290:	c7d5                	beqz	a5,33c <thread_exit+0xd8>
            schedule();//先找好下一個要跳的thread
     292:	00000097          	auipc	ra,0x0
     296:	f6a080e7          	jalr	-150(ra) # 1fc <schedule>
            if(pre_thread==pre_thread->parent->left)pre_thread->parent->left=NULL;
     29a:	00001797          	auipc	a5,0x1
     29e:	ec67b783          	ld	a5,-314(a5) # 1160 <pre_thread>
     2a2:	7bd8                	ld	a4,176(a5)
     2a4:	7354                	ld	a3,160(a4)
     2a6:	0cd78663          	beq	a5,a3,372 <thread_exit+0x10e>
            else pre_thread->parent->right=NULL;
     2aa:	0a073423          	sd	zero,168(a4)
           if(current->left==pre_thread)pre_thread->left=NULL; 
     2ae:	70d8                	ld	a4,160(s1)
     2b0:	0ce78463          	beq	a5,a4,378 <thread_exit+0x114>
     2b4:	f3d8                	sd	a4,160(a5)
           if(current->right==pre_thread)pre_thread->right=NULL;
     2b6:	74d8                	ld	a4,168(s1)
     2b8:	0ce78263          	beq	a5,a4,37c <thread_exit+0x118>
     2bc:	f7d8                	sd	a4,168(a5)
            if(current==root_thread){
     2be:	0d248163          	beq	s1,s2,380 <thread_exit+0x11c>
            if(current==current->parent->left)current->parent->left=pre_thread;
     2c2:	78d8                	ld	a4,176(s1)
     2c4:	7354                	ld	a3,160(a4)
     2c6:	0cd48a63          	beq	s1,a3,39a <thread_exit+0x136>
            else current->parent->right=pre_thread;
     2ca:	f75c                	sd	a5,168(a4)
            if (current->left!=NULL)current->left->parent=pre_thread;
     2cc:	70d8                	ld	a4,160(s1)
     2ce:	c311                	beqz	a4,2d2 <thread_exit+0x6e>
     2d0:	fb5c                	sd	a5,176(a4)
            if (current->right!=NULL)current->right->parent=pre_thread;
     2d2:	74d8                	ld	a4,168(s1)
     2d4:	c311                	beqz	a4,2d8 <thread_exit+0x74>
     2d6:	fb5c                	sd	a5,176(a4)
            pre_thread->parent=current->parent;}
     2d8:	78d8                	ld	a4,176(s1)
     2da:	fbd8                	sd	a4,176(a5)
           free(current);
     2dc:	8526                	mv	a0,s1
     2de:	00001097          	auipc	ra,0x1
     2e2:	b00080e7          	jalr	-1280(ra) # dde <free>
           free(current->stack);
     2e6:	6888                	ld	a0,16(s1)
     2e8:	00001097          	auipc	ra,0x1
     2ec:	af6080e7          	jalr	-1290(ra) # dde <free>
            dispatch();
     2f0:	00000097          	auipc	ra,0x0
     2f4:	dde080e7          	jalr	-546(ra) # ce <dispatch>
}
     2f8:	60e2                	ld	ra,24(sp)
     2fa:	6442                	ld	s0,16(sp)
     2fc:	64a2                	ld	s1,8(sp)
     2fe:	6902                	ld	s2,0(sp)
     300:	6105                	addi	sp,sp,32
     302:	8082                	ret
    if(current_thread == root_thread && current_thread->left == NULL && current_thread->right == NULL){
     304:	70dc                	ld	a5,160(s1)
     306:	ffbd                	bnez	a5,284 <thread_exit+0x20>
     308:	74dc                	ld	a5,168(s1)
     30a:	ffad                	bnez	a5,284 <thread_exit+0x20>
        free(current_thread);
     30c:	8526                	mv	a0,s1
     30e:	00001097          	auipc	ra,0x1
     312:	ad0080e7          	jalr	-1328(ra) # dde <free>
        free(current_thread->stack);
     316:	00001797          	auipc	a5,0x1
     31a:	e5a7b783          	ld	a5,-422(a5) # 1170 <current_thread>
     31e:	6b88                	ld	a0,16(a5)
     320:	00001097          	auipc	ra,0x1
     324:	abe080e7          	jalr	-1346(ra) # dde <free>
        longjmp(env_st,1);//跳回main function
     328:	4585                	li	a1,1
     32a:	00001517          	auipc	a0,0x1
     32e:	e4e50513          	addi	a0,a0,-434 # 1178 <env_st>
     332:	00001097          	auipc	ra,0x1
     336:	dc4080e7          	jalr	-572(ra) # 10f6 <longjmp>
     33a:	bf7d                	j	2f8 <thread_exit+0x94>
        if (current_thread->left!=NULL||current_thread->right!=NULL)//要跳出去的thread下面還有child
     33c:	74dc                	ld	a5,168(s1)
     33e:	fbb1                	bnez	a5,292 <thread_exit+0x2e>
        schedule();//先看下一個要跳到哪個thread
     340:	00000097          	auipc	ra,0x0
     344:	ebc080e7          	jalr	-324(ra) # 1fc <schedule>
         if (current==current->parent->left)current->parent->left=NULL;
     348:	78dc                	ld	a5,176(s1)
     34a:	73d8                	ld	a4,160(a5)
     34c:	04e48963          	beq	s1,a4,39e <thread_exit+0x13a>
         else current->parent->right=NULL;
     350:	0a07b423          	sd	zero,168(a5)
        free(current);
     354:	8526                	mv	a0,s1
     356:	00001097          	auipc	ra,0x1
     35a:	a88080e7          	jalr	-1400(ra) # dde <free>
        free(current->stack);
     35e:	6888                	ld	a0,16(s1)
     360:	00001097          	auipc	ra,0x1
     364:	a7e080e7          	jalr	-1410(ra) # dde <free>
        dispatch();}
     368:	00000097          	auipc	ra,0x0
     36c:	d66080e7          	jalr	-666(ra) # ce <dispatch>
}
     370:	b761                	j	2f8 <thread_exit+0x94>
            if(pre_thread==pre_thread->parent->left)pre_thread->parent->left=NULL;
     372:	0a073023          	sd	zero,160(a4)
     376:	bf25                	j	2ae <thread_exit+0x4a>
           if(current->left==pre_thread)pre_thread->left=NULL; 
     378:	4701                	li	a4,0
     37a:	bf2d                	j	2b4 <thread_exit+0x50>
           if(current->right==pre_thread)pre_thread->right=NULL;
     37c:	4701                	li	a4,0
     37e:	bf3d                	j	2bc <thread_exit+0x58>
               pre_thread->parent=NULL;
     380:	0a07b823          	sd	zero,176(a5)
               if (current->left!=NULL)current->left->parent=pre_thread;
     384:	70d8                	ld	a4,160(s1)
     386:	c311                	beqz	a4,38a <thread_exit+0x126>
     388:	fb5c                	sd	a5,176(a4)
               if (current->right!=NULL)current->right->parent=pre_thread;
     38a:	74d8                	ld	a4,168(s1)
     38c:	c311                	beqz	a4,390 <thread_exit+0x12c>
     38e:	fb5c                	sd	a5,176(a4)
               root_thread=pre_thread;
     390:	00001717          	auipc	a4,0x1
     394:	dcf73c23          	sd	a5,-552(a4) # 1168 <root_thread>
     398:	b791                	j	2dc <thread_exit+0x78>
            if(current==current->parent->left)current->parent->left=pre_thread;
     39a:	f35c                	sd	a5,160(a4)
     39c:	bf05                	j	2cc <thread_exit+0x68>
         if (current==current->parent->left)current->parent->left=NULL;
     39e:	0a07b023          	sd	zero,160(a5)
     3a2:	bf4d                	j	354 <thread_exit+0xf0>

00000000000003a4 <thread_start_threading>:





void thread_start_threading(void){
     3a4:	1141                	addi	sp,sp,-16
     3a6:	e406                	sd	ra,8(sp)
     3a8:	e022                	sd	s0,0(sp)
     3aa:	0800                	addi	s0,sp,16
    // TODO
    if(setjmp(env_st)==0){
     3ac:	00001517          	auipc	a0,0x1
     3b0:	dcc50513          	addi	a0,a0,-564 # 1178 <env_st>
     3b4:	00001097          	auipc	ra,0x1
     3b8:	d0a080e7          	jalr	-758(ra) # 10be <setjmp>
     3bc:	c509                	beqz	a0,3c6 <thread_start_threading+0x22>
    dispatch();  }
    else
    return;
     3be:	60a2                	ld	ra,8(sp)
     3c0:	6402                	ld	s0,0(sp)
     3c2:	0141                	addi	sp,sp,16
     3c4:	8082                	ret
    dispatch();  }
     3c6:	00000097          	auipc	ra,0x0
     3ca:	d08080e7          	jalr	-760(ra) # ce <dispatch>
     3ce:	bfc5                	j	3be <thread_start_threading+0x1a>

00000000000003d0 <strcpy>:
     3d0:	7179                	addi	sp,sp,-48
     3d2:	f422                	sd	s0,40(sp)
     3d4:	1800                	addi	s0,sp,48
     3d6:	fca43c23          	sd	a0,-40(s0)
     3da:	fcb43823          	sd	a1,-48(s0)
     3de:	fd843783          	ld	a5,-40(s0)
     3e2:	fef43423          	sd	a5,-24(s0)
     3e6:	0001                	nop
     3e8:	fd043703          	ld	a4,-48(s0)
     3ec:	00170793          	addi	a5,a4,1
     3f0:	fcf43823          	sd	a5,-48(s0)
     3f4:	fd843783          	ld	a5,-40(s0)
     3f8:	00178693          	addi	a3,a5,1
     3fc:	fcd43c23          	sd	a3,-40(s0)
     400:	00074703          	lbu	a4,0(a4)
     404:	00e78023          	sb	a4,0(a5)
     408:	0007c783          	lbu	a5,0(a5)
     40c:	fff1                	bnez	a5,3e8 <strcpy+0x18>
     40e:	fe843783          	ld	a5,-24(s0)
     412:	853e                	mv	a0,a5
     414:	7422                	ld	s0,40(sp)
     416:	6145                	addi	sp,sp,48
     418:	8082                	ret

000000000000041a <strcmp>:
     41a:	1101                	addi	sp,sp,-32
     41c:	ec22                	sd	s0,24(sp)
     41e:	1000                	addi	s0,sp,32
     420:	fea43423          	sd	a0,-24(s0)
     424:	feb43023          	sd	a1,-32(s0)
     428:	a819                	j	43e <strcmp+0x24>
     42a:	fe843783          	ld	a5,-24(s0)
     42e:	0785                	addi	a5,a5,1
     430:	fef43423          	sd	a5,-24(s0)
     434:	fe043783          	ld	a5,-32(s0)
     438:	0785                	addi	a5,a5,1
     43a:	fef43023          	sd	a5,-32(s0)
     43e:	fe843783          	ld	a5,-24(s0)
     442:	0007c783          	lbu	a5,0(a5)
     446:	cb99                	beqz	a5,45c <strcmp+0x42>
     448:	fe843783          	ld	a5,-24(s0)
     44c:	0007c703          	lbu	a4,0(a5)
     450:	fe043783          	ld	a5,-32(s0)
     454:	0007c783          	lbu	a5,0(a5)
     458:	fcf709e3          	beq	a4,a5,42a <strcmp+0x10>
     45c:	fe843783          	ld	a5,-24(s0)
     460:	0007c783          	lbu	a5,0(a5)
     464:	0007871b          	sext.w	a4,a5
     468:	fe043783          	ld	a5,-32(s0)
     46c:	0007c783          	lbu	a5,0(a5)
     470:	2781                	sext.w	a5,a5
     472:	40f707bb          	subw	a5,a4,a5
     476:	2781                	sext.w	a5,a5
     478:	853e                	mv	a0,a5
     47a:	6462                	ld	s0,24(sp)
     47c:	6105                	addi	sp,sp,32
     47e:	8082                	ret

0000000000000480 <strlen>:
     480:	7179                	addi	sp,sp,-48
     482:	f422                	sd	s0,40(sp)
     484:	1800                	addi	s0,sp,48
     486:	fca43c23          	sd	a0,-40(s0)
     48a:	fe042623          	sw	zero,-20(s0)
     48e:	a031                	j	49a <strlen+0x1a>
     490:	fec42783          	lw	a5,-20(s0)
     494:	2785                	addiw	a5,a5,1
     496:	fef42623          	sw	a5,-20(s0)
     49a:	fec42783          	lw	a5,-20(s0)
     49e:	fd843703          	ld	a4,-40(s0)
     4a2:	97ba                	add	a5,a5,a4
     4a4:	0007c783          	lbu	a5,0(a5)
     4a8:	f7e5                	bnez	a5,490 <strlen+0x10>
     4aa:	fec42783          	lw	a5,-20(s0)
     4ae:	853e                	mv	a0,a5
     4b0:	7422                	ld	s0,40(sp)
     4b2:	6145                	addi	sp,sp,48
     4b4:	8082                	ret

00000000000004b6 <memset>:
     4b6:	7179                	addi	sp,sp,-48
     4b8:	f422                	sd	s0,40(sp)
     4ba:	1800                	addi	s0,sp,48
     4bc:	fca43c23          	sd	a0,-40(s0)
     4c0:	87ae                	mv	a5,a1
     4c2:	8732                	mv	a4,a2
     4c4:	fcf42a23          	sw	a5,-44(s0)
     4c8:	87ba                	mv	a5,a4
     4ca:	fcf42823          	sw	a5,-48(s0)
     4ce:	fd843783          	ld	a5,-40(s0)
     4d2:	fef43023          	sd	a5,-32(s0)
     4d6:	fe042623          	sw	zero,-20(s0)
     4da:	a00d                	j	4fc <memset+0x46>
     4dc:	fec42783          	lw	a5,-20(s0)
     4e0:	fe043703          	ld	a4,-32(s0)
     4e4:	97ba                	add	a5,a5,a4
     4e6:	fd442703          	lw	a4,-44(s0)
     4ea:	0ff77713          	andi	a4,a4,255
     4ee:	00e78023          	sb	a4,0(a5)
     4f2:	fec42783          	lw	a5,-20(s0)
     4f6:	2785                	addiw	a5,a5,1
     4f8:	fef42623          	sw	a5,-20(s0)
     4fc:	fec42703          	lw	a4,-20(s0)
     500:	fd042783          	lw	a5,-48(s0)
     504:	2781                	sext.w	a5,a5
     506:	fcf76be3          	bltu	a4,a5,4dc <memset+0x26>
     50a:	fd843783          	ld	a5,-40(s0)
     50e:	853e                	mv	a0,a5
     510:	7422                	ld	s0,40(sp)
     512:	6145                	addi	sp,sp,48
     514:	8082                	ret

0000000000000516 <strchr>:
     516:	1101                	addi	sp,sp,-32
     518:	ec22                	sd	s0,24(sp)
     51a:	1000                	addi	s0,sp,32
     51c:	fea43423          	sd	a0,-24(s0)
     520:	87ae                	mv	a5,a1
     522:	fef403a3          	sb	a5,-25(s0)
     526:	a01d                	j	54c <strchr+0x36>
     528:	fe843783          	ld	a5,-24(s0)
     52c:	0007c703          	lbu	a4,0(a5)
     530:	fe744783          	lbu	a5,-25(s0)
     534:	0ff7f793          	andi	a5,a5,255
     538:	00e79563          	bne	a5,a4,542 <strchr+0x2c>
     53c:	fe843783          	ld	a5,-24(s0)
     540:	a821                	j	558 <strchr+0x42>
     542:	fe843783          	ld	a5,-24(s0)
     546:	0785                	addi	a5,a5,1
     548:	fef43423          	sd	a5,-24(s0)
     54c:	fe843783          	ld	a5,-24(s0)
     550:	0007c783          	lbu	a5,0(a5)
     554:	fbf1                	bnez	a5,528 <strchr+0x12>
     556:	4781                	li	a5,0
     558:	853e                	mv	a0,a5
     55a:	6462                	ld	s0,24(sp)
     55c:	6105                	addi	sp,sp,32
     55e:	8082                	ret

0000000000000560 <gets>:
     560:	7179                	addi	sp,sp,-48
     562:	f406                	sd	ra,40(sp)
     564:	f022                	sd	s0,32(sp)
     566:	1800                	addi	s0,sp,48
     568:	fca43c23          	sd	a0,-40(s0)
     56c:	87ae                	mv	a5,a1
     56e:	fcf42a23          	sw	a5,-44(s0)
     572:	fe042623          	sw	zero,-20(s0)
     576:	a8a1                	j	5ce <gets+0x6e>
     578:	fe740793          	addi	a5,s0,-25
     57c:	4605                	li	a2,1
     57e:	85be                	mv	a1,a5
     580:	4501                	li	a0,0
     582:	00000097          	auipc	ra,0x0
     586:	2f6080e7          	jalr	758(ra) # 878 <read>
     58a:	87aa                	mv	a5,a0
     58c:	fef42423          	sw	a5,-24(s0)
     590:	fe842783          	lw	a5,-24(s0)
     594:	2781                	sext.w	a5,a5
     596:	04f05763          	blez	a5,5e4 <gets+0x84>
     59a:	fec42783          	lw	a5,-20(s0)
     59e:	0017871b          	addiw	a4,a5,1
     5a2:	fee42623          	sw	a4,-20(s0)
     5a6:	873e                	mv	a4,a5
     5a8:	fd843783          	ld	a5,-40(s0)
     5ac:	97ba                	add	a5,a5,a4
     5ae:	fe744703          	lbu	a4,-25(s0)
     5b2:	00e78023          	sb	a4,0(a5)
     5b6:	fe744783          	lbu	a5,-25(s0)
     5ba:	873e                	mv	a4,a5
     5bc:	47a9                	li	a5,10
     5be:	02f70463          	beq	a4,a5,5e6 <gets+0x86>
     5c2:	fe744783          	lbu	a5,-25(s0)
     5c6:	873e                	mv	a4,a5
     5c8:	47b5                	li	a5,13
     5ca:	00f70e63          	beq	a4,a5,5e6 <gets+0x86>
     5ce:	fec42783          	lw	a5,-20(s0)
     5d2:	2785                	addiw	a5,a5,1
     5d4:	0007871b          	sext.w	a4,a5
     5d8:	fd442783          	lw	a5,-44(s0)
     5dc:	2781                	sext.w	a5,a5
     5de:	f8f74de3          	blt	a4,a5,578 <gets+0x18>
     5e2:	a011                	j	5e6 <gets+0x86>
     5e4:	0001                	nop
     5e6:	fec42783          	lw	a5,-20(s0)
     5ea:	fd843703          	ld	a4,-40(s0)
     5ee:	97ba                	add	a5,a5,a4
     5f0:	00078023          	sb	zero,0(a5)
     5f4:	fd843783          	ld	a5,-40(s0)
     5f8:	853e                	mv	a0,a5
     5fa:	70a2                	ld	ra,40(sp)
     5fc:	7402                	ld	s0,32(sp)
     5fe:	6145                	addi	sp,sp,48
     600:	8082                	ret

0000000000000602 <stat>:
     602:	7179                	addi	sp,sp,-48
     604:	f406                	sd	ra,40(sp)
     606:	f022                	sd	s0,32(sp)
     608:	1800                	addi	s0,sp,48
     60a:	fca43c23          	sd	a0,-40(s0)
     60e:	fcb43823          	sd	a1,-48(s0)
     612:	4581                	li	a1,0
     614:	fd843503          	ld	a0,-40(s0)
     618:	00000097          	auipc	ra,0x0
     61c:	288080e7          	jalr	648(ra) # 8a0 <open>
     620:	87aa                	mv	a5,a0
     622:	fef42623          	sw	a5,-20(s0)
     626:	fec42783          	lw	a5,-20(s0)
     62a:	2781                	sext.w	a5,a5
     62c:	0007d463          	bgez	a5,634 <stat+0x32>
     630:	57fd                	li	a5,-1
     632:	a035                	j	65e <stat+0x5c>
     634:	fec42783          	lw	a5,-20(s0)
     638:	fd043583          	ld	a1,-48(s0)
     63c:	853e                	mv	a0,a5
     63e:	00000097          	auipc	ra,0x0
     642:	27a080e7          	jalr	634(ra) # 8b8 <fstat>
     646:	87aa                	mv	a5,a0
     648:	fef42423          	sw	a5,-24(s0)
     64c:	fec42783          	lw	a5,-20(s0)
     650:	853e                	mv	a0,a5
     652:	00000097          	auipc	ra,0x0
     656:	236080e7          	jalr	566(ra) # 888 <close>
     65a:	fe842783          	lw	a5,-24(s0)
     65e:	853e                	mv	a0,a5
     660:	70a2                	ld	ra,40(sp)
     662:	7402                	ld	s0,32(sp)
     664:	6145                	addi	sp,sp,48
     666:	8082                	ret

0000000000000668 <atoi>:
     668:	7179                	addi	sp,sp,-48
     66a:	f422                	sd	s0,40(sp)
     66c:	1800                	addi	s0,sp,48
     66e:	fca43c23          	sd	a0,-40(s0)
     672:	fe042623          	sw	zero,-20(s0)
     676:	a815                	j	6aa <atoi+0x42>
     678:	fec42703          	lw	a4,-20(s0)
     67c:	87ba                	mv	a5,a4
     67e:	0027979b          	slliw	a5,a5,0x2
     682:	9fb9                	addw	a5,a5,a4
     684:	0017979b          	slliw	a5,a5,0x1
     688:	0007871b          	sext.w	a4,a5
     68c:	fd843783          	ld	a5,-40(s0)
     690:	00178693          	addi	a3,a5,1
     694:	fcd43c23          	sd	a3,-40(s0)
     698:	0007c783          	lbu	a5,0(a5)
     69c:	2781                	sext.w	a5,a5
     69e:	9fb9                	addw	a5,a5,a4
     6a0:	2781                	sext.w	a5,a5
     6a2:	fd07879b          	addiw	a5,a5,-48
     6a6:	fef42623          	sw	a5,-20(s0)
     6aa:	fd843783          	ld	a5,-40(s0)
     6ae:	0007c783          	lbu	a5,0(a5)
     6b2:	873e                	mv	a4,a5
     6b4:	02f00793          	li	a5,47
     6b8:	00e7fb63          	bgeu	a5,a4,6ce <atoi+0x66>
     6bc:	fd843783          	ld	a5,-40(s0)
     6c0:	0007c783          	lbu	a5,0(a5)
     6c4:	873e                	mv	a4,a5
     6c6:	03900793          	li	a5,57
     6ca:	fae7f7e3          	bgeu	a5,a4,678 <atoi+0x10>
     6ce:	fec42783          	lw	a5,-20(s0)
     6d2:	853e                	mv	a0,a5
     6d4:	7422                	ld	s0,40(sp)
     6d6:	6145                	addi	sp,sp,48
     6d8:	8082                	ret

00000000000006da <memmove>:
     6da:	7139                	addi	sp,sp,-64
     6dc:	fc22                	sd	s0,56(sp)
     6de:	0080                	addi	s0,sp,64
     6e0:	fca43c23          	sd	a0,-40(s0)
     6e4:	fcb43823          	sd	a1,-48(s0)
     6e8:	87b2                	mv	a5,a2
     6ea:	fcf42623          	sw	a5,-52(s0)
     6ee:	fd843783          	ld	a5,-40(s0)
     6f2:	fef43423          	sd	a5,-24(s0)
     6f6:	fd043783          	ld	a5,-48(s0)
     6fa:	fef43023          	sd	a5,-32(s0)
     6fe:	fe043703          	ld	a4,-32(s0)
     702:	fe843783          	ld	a5,-24(s0)
     706:	02e7fc63          	bgeu	a5,a4,73e <memmove+0x64>
     70a:	a00d                	j	72c <memmove+0x52>
     70c:	fe043703          	ld	a4,-32(s0)
     710:	00170793          	addi	a5,a4,1
     714:	fef43023          	sd	a5,-32(s0)
     718:	fe843783          	ld	a5,-24(s0)
     71c:	00178693          	addi	a3,a5,1
     720:	fed43423          	sd	a3,-24(s0)
     724:	00074703          	lbu	a4,0(a4)
     728:	00e78023          	sb	a4,0(a5)
     72c:	fcc42783          	lw	a5,-52(s0)
     730:	fff7871b          	addiw	a4,a5,-1
     734:	fce42623          	sw	a4,-52(s0)
     738:	fcf04ae3          	bgtz	a5,70c <memmove+0x32>
     73c:	a891                	j	790 <memmove+0xb6>
     73e:	fcc42783          	lw	a5,-52(s0)
     742:	fe843703          	ld	a4,-24(s0)
     746:	97ba                	add	a5,a5,a4
     748:	fef43423          	sd	a5,-24(s0)
     74c:	fcc42783          	lw	a5,-52(s0)
     750:	fe043703          	ld	a4,-32(s0)
     754:	97ba                	add	a5,a5,a4
     756:	fef43023          	sd	a5,-32(s0)
     75a:	a01d                	j	780 <memmove+0xa6>
     75c:	fe043783          	ld	a5,-32(s0)
     760:	17fd                	addi	a5,a5,-1
     762:	fef43023          	sd	a5,-32(s0)
     766:	fe843783          	ld	a5,-24(s0)
     76a:	17fd                	addi	a5,a5,-1
     76c:	fef43423          	sd	a5,-24(s0)
     770:	fe043783          	ld	a5,-32(s0)
     774:	0007c703          	lbu	a4,0(a5)
     778:	fe843783          	ld	a5,-24(s0)
     77c:	00e78023          	sb	a4,0(a5)
     780:	fcc42783          	lw	a5,-52(s0)
     784:	fff7871b          	addiw	a4,a5,-1
     788:	fce42623          	sw	a4,-52(s0)
     78c:	fcf048e3          	bgtz	a5,75c <memmove+0x82>
     790:	fd843783          	ld	a5,-40(s0)
     794:	853e                	mv	a0,a5
     796:	7462                	ld	s0,56(sp)
     798:	6121                	addi	sp,sp,64
     79a:	8082                	ret

000000000000079c <memcmp>:
     79c:	7139                	addi	sp,sp,-64
     79e:	fc22                	sd	s0,56(sp)
     7a0:	0080                	addi	s0,sp,64
     7a2:	fca43c23          	sd	a0,-40(s0)
     7a6:	fcb43823          	sd	a1,-48(s0)
     7aa:	87b2                	mv	a5,a2
     7ac:	fcf42623          	sw	a5,-52(s0)
     7b0:	fd843783          	ld	a5,-40(s0)
     7b4:	fef43423          	sd	a5,-24(s0)
     7b8:	fd043783          	ld	a5,-48(s0)
     7bc:	fef43023          	sd	a5,-32(s0)
     7c0:	a0a1                	j	808 <memcmp+0x6c>
     7c2:	fe843783          	ld	a5,-24(s0)
     7c6:	0007c703          	lbu	a4,0(a5)
     7ca:	fe043783          	ld	a5,-32(s0)
     7ce:	0007c783          	lbu	a5,0(a5)
     7d2:	02f70163          	beq	a4,a5,7f4 <memcmp+0x58>
     7d6:	fe843783          	ld	a5,-24(s0)
     7da:	0007c783          	lbu	a5,0(a5)
     7de:	0007871b          	sext.w	a4,a5
     7e2:	fe043783          	ld	a5,-32(s0)
     7e6:	0007c783          	lbu	a5,0(a5)
     7ea:	2781                	sext.w	a5,a5
     7ec:	40f707bb          	subw	a5,a4,a5
     7f0:	2781                	sext.w	a5,a5
     7f2:	a01d                	j	818 <memcmp+0x7c>
     7f4:	fe843783          	ld	a5,-24(s0)
     7f8:	0785                	addi	a5,a5,1
     7fa:	fef43423          	sd	a5,-24(s0)
     7fe:	fe043783          	ld	a5,-32(s0)
     802:	0785                	addi	a5,a5,1
     804:	fef43023          	sd	a5,-32(s0)
     808:	fcc42783          	lw	a5,-52(s0)
     80c:	fff7871b          	addiw	a4,a5,-1
     810:	fce42623          	sw	a4,-52(s0)
     814:	f7dd                	bnez	a5,7c2 <memcmp+0x26>
     816:	4781                	li	a5,0
     818:	853e                	mv	a0,a5
     81a:	7462                	ld	s0,56(sp)
     81c:	6121                	addi	sp,sp,64
     81e:	8082                	ret

0000000000000820 <memcpy>:
     820:	7179                	addi	sp,sp,-48
     822:	f406                	sd	ra,40(sp)
     824:	f022                	sd	s0,32(sp)
     826:	1800                	addi	s0,sp,48
     828:	fea43423          	sd	a0,-24(s0)
     82c:	feb43023          	sd	a1,-32(s0)
     830:	87b2                	mv	a5,a2
     832:	fcf42e23          	sw	a5,-36(s0)
     836:	fdc42783          	lw	a5,-36(s0)
     83a:	863e                	mv	a2,a5
     83c:	fe043583          	ld	a1,-32(s0)
     840:	fe843503          	ld	a0,-24(s0)
     844:	00000097          	auipc	ra,0x0
     848:	e96080e7          	jalr	-362(ra) # 6da <memmove>
     84c:	87aa                	mv	a5,a0
     84e:	853e                	mv	a0,a5
     850:	70a2                	ld	ra,40(sp)
     852:	7402                	ld	s0,32(sp)
     854:	6145                	addi	sp,sp,48
     856:	8082                	ret

0000000000000858 <fork>:
     858:	4885                	li	a7,1
     85a:	00000073          	ecall
     85e:	8082                	ret

0000000000000860 <exit>:
     860:	4889                	li	a7,2
     862:	00000073          	ecall
     866:	8082                	ret

0000000000000868 <wait>:
     868:	488d                	li	a7,3
     86a:	00000073          	ecall
     86e:	8082                	ret

0000000000000870 <pipe>:
     870:	4891                	li	a7,4
     872:	00000073          	ecall
     876:	8082                	ret

0000000000000878 <read>:
     878:	4895                	li	a7,5
     87a:	00000073          	ecall
     87e:	8082                	ret

0000000000000880 <write>:
     880:	48c1                	li	a7,16
     882:	00000073          	ecall
     886:	8082                	ret

0000000000000888 <close>:
     888:	48d5                	li	a7,21
     88a:	00000073          	ecall
     88e:	8082                	ret

0000000000000890 <kill>:
     890:	4899                	li	a7,6
     892:	00000073          	ecall
     896:	8082                	ret

0000000000000898 <exec>:
     898:	489d                	li	a7,7
     89a:	00000073          	ecall
     89e:	8082                	ret

00000000000008a0 <open>:
     8a0:	48bd                	li	a7,15
     8a2:	00000073          	ecall
     8a6:	8082                	ret

00000000000008a8 <mknod>:
     8a8:	48c5                	li	a7,17
     8aa:	00000073          	ecall
     8ae:	8082                	ret

00000000000008b0 <unlink>:
     8b0:	48c9                	li	a7,18
     8b2:	00000073          	ecall
     8b6:	8082                	ret

00000000000008b8 <fstat>:
     8b8:	48a1                	li	a7,8
     8ba:	00000073          	ecall
     8be:	8082                	ret

00000000000008c0 <link>:
     8c0:	48cd                	li	a7,19
     8c2:	00000073          	ecall
     8c6:	8082                	ret

00000000000008c8 <mkdir>:
     8c8:	48d1                	li	a7,20
     8ca:	00000073          	ecall
     8ce:	8082                	ret

00000000000008d0 <chdir>:
     8d0:	48a5                	li	a7,9
     8d2:	00000073          	ecall
     8d6:	8082                	ret

00000000000008d8 <dup>:
     8d8:	48a9                	li	a7,10
     8da:	00000073          	ecall
     8de:	8082                	ret

00000000000008e0 <getpid>:
     8e0:	48ad                	li	a7,11
     8e2:	00000073          	ecall
     8e6:	8082                	ret

00000000000008e8 <sbrk>:
     8e8:	48b1                	li	a7,12
     8ea:	00000073          	ecall
     8ee:	8082                	ret

00000000000008f0 <sleep>:
     8f0:	48b5                	li	a7,13
     8f2:	00000073          	ecall
     8f6:	8082                	ret

00000000000008f8 <uptime>:
     8f8:	48b9                	li	a7,14
     8fa:	00000073          	ecall
     8fe:	8082                	ret

0000000000000900 <putc>:
     900:	1101                	addi	sp,sp,-32
     902:	ec06                	sd	ra,24(sp)
     904:	e822                	sd	s0,16(sp)
     906:	1000                	addi	s0,sp,32
     908:	87aa                	mv	a5,a0
     90a:	872e                	mv	a4,a1
     90c:	fef42623          	sw	a5,-20(s0)
     910:	87ba                	mv	a5,a4
     912:	fef405a3          	sb	a5,-21(s0)
     916:	feb40713          	addi	a4,s0,-21
     91a:	fec42783          	lw	a5,-20(s0)
     91e:	4605                	li	a2,1
     920:	85ba                	mv	a1,a4
     922:	853e                	mv	a0,a5
     924:	00000097          	auipc	ra,0x0
     928:	f5c080e7          	jalr	-164(ra) # 880 <write>
     92c:	0001                	nop
     92e:	60e2                	ld	ra,24(sp)
     930:	6442                	ld	s0,16(sp)
     932:	6105                	addi	sp,sp,32
     934:	8082                	ret

0000000000000936 <printint>:
     936:	7139                	addi	sp,sp,-64
     938:	fc06                	sd	ra,56(sp)
     93a:	f822                	sd	s0,48(sp)
     93c:	0080                	addi	s0,sp,64
     93e:	87aa                	mv	a5,a0
     940:	8736                	mv	a4,a3
     942:	fcf42623          	sw	a5,-52(s0)
     946:	87ae                	mv	a5,a1
     948:	fcf42423          	sw	a5,-56(s0)
     94c:	87b2                	mv	a5,a2
     94e:	fcf42223          	sw	a5,-60(s0)
     952:	87ba                	mv	a5,a4
     954:	fcf42023          	sw	a5,-64(s0)
     958:	fe042423          	sw	zero,-24(s0)
     95c:	fc042783          	lw	a5,-64(s0)
     960:	2781                	sext.w	a5,a5
     962:	c38d                	beqz	a5,984 <printint+0x4e>
     964:	fc842783          	lw	a5,-56(s0)
     968:	2781                	sext.w	a5,a5
     96a:	0007dd63          	bgez	a5,984 <printint+0x4e>
     96e:	4785                	li	a5,1
     970:	fef42423          	sw	a5,-24(s0)
     974:	fc842783          	lw	a5,-56(s0)
     978:	40f007bb          	negw	a5,a5
     97c:	2781                	sext.w	a5,a5
     97e:	fef42223          	sw	a5,-28(s0)
     982:	a029                	j	98c <printint+0x56>
     984:	fc842783          	lw	a5,-56(s0)
     988:	fef42223          	sw	a5,-28(s0)
     98c:	fe042623          	sw	zero,-20(s0)
     990:	fc442783          	lw	a5,-60(s0)
     994:	fe442703          	lw	a4,-28(s0)
     998:	02f777bb          	remuw	a5,a4,a5
     99c:	0007861b          	sext.w	a2,a5
     9a0:	fec42783          	lw	a5,-20(s0)
     9a4:	0017871b          	addiw	a4,a5,1
     9a8:	fee42623          	sw	a4,-20(s0)
     9ac:	00000697          	auipc	a3,0x0
     9b0:	79468693          	addi	a3,a3,1940 # 1140 <digits>
     9b4:	02061713          	slli	a4,a2,0x20
     9b8:	9301                	srli	a4,a4,0x20
     9ba:	9736                	add	a4,a4,a3
     9bc:	00074703          	lbu	a4,0(a4)
     9c0:	ff040693          	addi	a3,s0,-16
     9c4:	97b6                	add	a5,a5,a3
     9c6:	fee78023          	sb	a4,-32(a5)
     9ca:	fc442783          	lw	a5,-60(s0)
     9ce:	fe442703          	lw	a4,-28(s0)
     9d2:	02f757bb          	divuw	a5,a4,a5
     9d6:	fef42223          	sw	a5,-28(s0)
     9da:	fe442783          	lw	a5,-28(s0)
     9de:	2781                	sext.w	a5,a5
     9e0:	fbc5                	bnez	a5,990 <printint+0x5a>
     9e2:	fe842783          	lw	a5,-24(s0)
     9e6:	2781                	sext.w	a5,a5
     9e8:	cf95                	beqz	a5,a24 <printint+0xee>
     9ea:	fec42783          	lw	a5,-20(s0)
     9ee:	0017871b          	addiw	a4,a5,1
     9f2:	fee42623          	sw	a4,-20(s0)
     9f6:	ff040713          	addi	a4,s0,-16
     9fa:	97ba                	add	a5,a5,a4
     9fc:	02d00713          	li	a4,45
     a00:	fee78023          	sb	a4,-32(a5)
     a04:	a005                	j	a24 <printint+0xee>
     a06:	fec42783          	lw	a5,-20(s0)
     a0a:	ff040713          	addi	a4,s0,-16
     a0e:	97ba                	add	a5,a5,a4
     a10:	fe07c703          	lbu	a4,-32(a5)
     a14:	fcc42783          	lw	a5,-52(s0)
     a18:	85ba                	mv	a1,a4
     a1a:	853e                	mv	a0,a5
     a1c:	00000097          	auipc	ra,0x0
     a20:	ee4080e7          	jalr	-284(ra) # 900 <putc>
     a24:	fec42783          	lw	a5,-20(s0)
     a28:	37fd                	addiw	a5,a5,-1
     a2a:	fef42623          	sw	a5,-20(s0)
     a2e:	fec42783          	lw	a5,-20(s0)
     a32:	2781                	sext.w	a5,a5
     a34:	fc07d9e3          	bgez	a5,a06 <printint+0xd0>
     a38:	0001                	nop
     a3a:	0001                	nop
     a3c:	70e2                	ld	ra,56(sp)
     a3e:	7442                	ld	s0,48(sp)
     a40:	6121                	addi	sp,sp,64
     a42:	8082                	ret

0000000000000a44 <printptr>:
     a44:	7179                	addi	sp,sp,-48
     a46:	f406                	sd	ra,40(sp)
     a48:	f022                	sd	s0,32(sp)
     a4a:	1800                	addi	s0,sp,48
     a4c:	87aa                	mv	a5,a0
     a4e:	fcb43823          	sd	a1,-48(s0)
     a52:	fcf42e23          	sw	a5,-36(s0)
     a56:	fdc42783          	lw	a5,-36(s0)
     a5a:	03000593          	li	a1,48
     a5e:	853e                	mv	a0,a5
     a60:	00000097          	auipc	ra,0x0
     a64:	ea0080e7          	jalr	-352(ra) # 900 <putc>
     a68:	fdc42783          	lw	a5,-36(s0)
     a6c:	07800593          	li	a1,120
     a70:	853e                	mv	a0,a5
     a72:	00000097          	auipc	ra,0x0
     a76:	e8e080e7          	jalr	-370(ra) # 900 <putc>
     a7a:	fe042623          	sw	zero,-20(s0)
     a7e:	a82d                	j	ab8 <printptr+0x74>
     a80:	fd043783          	ld	a5,-48(s0)
     a84:	93f1                	srli	a5,a5,0x3c
     a86:	00000717          	auipc	a4,0x0
     a8a:	6ba70713          	addi	a4,a4,1722 # 1140 <digits>
     a8e:	97ba                	add	a5,a5,a4
     a90:	0007c703          	lbu	a4,0(a5)
     a94:	fdc42783          	lw	a5,-36(s0)
     a98:	85ba                	mv	a1,a4
     a9a:	853e                	mv	a0,a5
     a9c:	00000097          	auipc	ra,0x0
     aa0:	e64080e7          	jalr	-412(ra) # 900 <putc>
     aa4:	fec42783          	lw	a5,-20(s0)
     aa8:	2785                	addiw	a5,a5,1
     aaa:	fef42623          	sw	a5,-20(s0)
     aae:	fd043783          	ld	a5,-48(s0)
     ab2:	0792                	slli	a5,a5,0x4
     ab4:	fcf43823          	sd	a5,-48(s0)
     ab8:	fec42783          	lw	a5,-20(s0)
     abc:	873e                	mv	a4,a5
     abe:	47bd                	li	a5,15
     ac0:	fce7f0e3          	bgeu	a5,a4,a80 <printptr+0x3c>
     ac4:	0001                	nop
     ac6:	0001                	nop
     ac8:	70a2                	ld	ra,40(sp)
     aca:	7402                	ld	s0,32(sp)
     acc:	6145                	addi	sp,sp,48
     ace:	8082                	ret

0000000000000ad0 <vprintf>:
     ad0:	715d                	addi	sp,sp,-80
     ad2:	e486                	sd	ra,72(sp)
     ad4:	e0a2                	sd	s0,64(sp)
     ad6:	0880                	addi	s0,sp,80
     ad8:	87aa                	mv	a5,a0
     ada:	fcb43023          	sd	a1,-64(s0)
     ade:	fac43c23          	sd	a2,-72(s0)
     ae2:	fcf42623          	sw	a5,-52(s0)
     ae6:	fe042023          	sw	zero,-32(s0)
     aea:	fe042223          	sw	zero,-28(s0)
     aee:	a42d                	j	d18 <vprintf+0x248>
     af0:	fe442783          	lw	a5,-28(s0)
     af4:	fc043703          	ld	a4,-64(s0)
     af8:	97ba                	add	a5,a5,a4
     afa:	0007c783          	lbu	a5,0(a5)
     afe:	fcf42e23          	sw	a5,-36(s0)
     b02:	fe042783          	lw	a5,-32(s0)
     b06:	2781                	sext.w	a5,a5
     b08:	eb9d                	bnez	a5,b3e <vprintf+0x6e>
     b0a:	fdc42783          	lw	a5,-36(s0)
     b0e:	0007871b          	sext.w	a4,a5
     b12:	02500793          	li	a5,37
     b16:	00f71763          	bne	a4,a5,b24 <vprintf+0x54>
     b1a:	02500793          	li	a5,37
     b1e:	fef42023          	sw	a5,-32(s0)
     b22:	a2f5                	j	d0e <vprintf+0x23e>
     b24:	fdc42783          	lw	a5,-36(s0)
     b28:	0ff7f713          	andi	a4,a5,255
     b2c:	fcc42783          	lw	a5,-52(s0)
     b30:	85ba                	mv	a1,a4
     b32:	853e                	mv	a0,a5
     b34:	00000097          	auipc	ra,0x0
     b38:	dcc080e7          	jalr	-564(ra) # 900 <putc>
     b3c:	aac9                	j	d0e <vprintf+0x23e>
     b3e:	fe042783          	lw	a5,-32(s0)
     b42:	0007871b          	sext.w	a4,a5
     b46:	02500793          	li	a5,37
     b4a:	1cf71263          	bne	a4,a5,d0e <vprintf+0x23e>
     b4e:	fdc42783          	lw	a5,-36(s0)
     b52:	0007871b          	sext.w	a4,a5
     b56:	06400793          	li	a5,100
     b5a:	02f71463          	bne	a4,a5,b82 <vprintf+0xb2>
     b5e:	fb843783          	ld	a5,-72(s0)
     b62:	00878713          	addi	a4,a5,8
     b66:	fae43c23          	sd	a4,-72(s0)
     b6a:	4398                	lw	a4,0(a5)
     b6c:	fcc42783          	lw	a5,-52(s0)
     b70:	4685                	li	a3,1
     b72:	4629                	li	a2,10
     b74:	85ba                	mv	a1,a4
     b76:	853e                	mv	a0,a5
     b78:	00000097          	auipc	ra,0x0
     b7c:	dbe080e7          	jalr	-578(ra) # 936 <printint>
     b80:	a269                	j	d0a <vprintf+0x23a>
     b82:	fdc42783          	lw	a5,-36(s0)
     b86:	0007871b          	sext.w	a4,a5
     b8a:	06c00793          	li	a5,108
     b8e:	02f71663          	bne	a4,a5,bba <vprintf+0xea>
     b92:	fb843783          	ld	a5,-72(s0)
     b96:	00878713          	addi	a4,a5,8
     b9a:	fae43c23          	sd	a4,-72(s0)
     b9e:	639c                	ld	a5,0(a5)
     ba0:	0007871b          	sext.w	a4,a5
     ba4:	fcc42783          	lw	a5,-52(s0)
     ba8:	4681                	li	a3,0
     baa:	4629                	li	a2,10
     bac:	85ba                	mv	a1,a4
     bae:	853e                	mv	a0,a5
     bb0:	00000097          	auipc	ra,0x0
     bb4:	d86080e7          	jalr	-634(ra) # 936 <printint>
     bb8:	aa89                	j	d0a <vprintf+0x23a>
     bba:	fdc42783          	lw	a5,-36(s0)
     bbe:	0007871b          	sext.w	a4,a5
     bc2:	07800793          	li	a5,120
     bc6:	02f71463          	bne	a4,a5,bee <vprintf+0x11e>
     bca:	fb843783          	ld	a5,-72(s0)
     bce:	00878713          	addi	a4,a5,8
     bd2:	fae43c23          	sd	a4,-72(s0)
     bd6:	4398                	lw	a4,0(a5)
     bd8:	fcc42783          	lw	a5,-52(s0)
     bdc:	4681                	li	a3,0
     bde:	4641                	li	a2,16
     be0:	85ba                	mv	a1,a4
     be2:	853e                	mv	a0,a5
     be4:	00000097          	auipc	ra,0x0
     be8:	d52080e7          	jalr	-686(ra) # 936 <printint>
     bec:	aa39                	j	d0a <vprintf+0x23a>
     bee:	fdc42783          	lw	a5,-36(s0)
     bf2:	0007871b          	sext.w	a4,a5
     bf6:	07000793          	li	a5,112
     bfa:	02f71263          	bne	a4,a5,c1e <vprintf+0x14e>
     bfe:	fb843783          	ld	a5,-72(s0)
     c02:	00878713          	addi	a4,a5,8
     c06:	fae43c23          	sd	a4,-72(s0)
     c0a:	6398                	ld	a4,0(a5)
     c0c:	fcc42783          	lw	a5,-52(s0)
     c10:	85ba                	mv	a1,a4
     c12:	853e                	mv	a0,a5
     c14:	00000097          	auipc	ra,0x0
     c18:	e30080e7          	jalr	-464(ra) # a44 <printptr>
     c1c:	a0fd                	j	d0a <vprintf+0x23a>
     c1e:	fdc42783          	lw	a5,-36(s0)
     c22:	0007871b          	sext.w	a4,a5
     c26:	07300793          	li	a5,115
     c2a:	04f71c63          	bne	a4,a5,c82 <vprintf+0x1b2>
     c2e:	fb843783          	ld	a5,-72(s0)
     c32:	00878713          	addi	a4,a5,8
     c36:	fae43c23          	sd	a4,-72(s0)
     c3a:	639c                	ld	a5,0(a5)
     c3c:	fef43423          	sd	a5,-24(s0)
     c40:	fe843783          	ld	a5,-24(s0)
     c44:	eb8d                	bnez	a5,c76 <vprintf+0x1a6>
     c46:	00000797          	auipc	a5,0x0
     c4a:	4f278793          	addi	a5,a5,1266 # 1138 <longjmp_1+0x8>
     c4e:	fef43423          	sd	a5,-24(s0)
     c52:	a015                	j	c76 <vprintf+0x1a6>
     c54:	fe843783          	ld	a5,-24(s0)
     c58:	0007c703          	lbu	a4,0(a5)
     c5c:	fcc42783          	lw	a5,-52(s0)
     c60:	85ba                	mv	a1,a4
     c62:	853e                	mv	a0,a5
     c64:	00000097          	auipc	ra,0x0
     c68:	c9c080e7          	jalr	-868(ra) # 900 <putc>
     c6c:	fe843783          	ld	a5,-24(s0)
     c70:	0785                	addi	a5,a5,1
     c72:	fef43423          	sd	a5,-24(s0)
     c76:	fe843783          	ld	a5,-24(s0)
     c7a:	0007c783          	lbu	a5,0(a5)
     c7e:	fbf9                	bnez	a5,c54 <vprintf+0x184>
     c80:	a069                	j	d0a <vprintf+0x23a>
     c82:	fdc42783          	lw	a5,-36(s0)
     c86:	0007871b          	sext.w	a4,a5
     c8a:	06300793          	li	a5,99
     c8e:	02f71463          	bne	a4,a5,cb6 <vprintf+0x1e6>
     c92:	fb843783          	ld	a5,-72(s0)
     c96:	00878713          	addi	a4,a5,8
     c9a:	fae43c23          	sd	a4,-72(s0)
     c9e:	439c                	lw	a5,0(a5)
     ca0:	0ff7f713          	andi	a4,a5,255
     ca4:	fcc42783          	lw	a5,-52(s0)
     ca8:	85ba                	mv	a1,a4
     caa:	853e                	mv	a0,a5
     cac:	00000097          	auipc	ra,0x0
     cb0:	c54080e7          	jalr	-940(ra) # 900 <putc>
     cb4:	a899                	j	d0a <vprintf+0x23a>
     cb6:	fdc42783          	lw	a5,-36(s0)
     cba:	0007871b          	sext.w	a4,a5
     cbe:	02500793          	li	a5,37
     cc2:	00f71f63          	bne	a4,a5,ce0 <vprintf+0x210>
     cc6:	fdc42783          	lw	a5,-36(s0)
     cca:	0ff7f713          	andi	a4,a5,255
     cce:	fcc42783          	lw	a5,-52(s0)
     cd2:	85ba                	mv	a1,a4
     cd4:	853e                	mv	a0,a5
     cd6:	00000097          	auipc	ra,0x0
     cda:	c2a080e7          	jalr	-982(ra) # 900 <putc>
     cde:	a035                	j	d0a <vprintf+0x23a>
     ce0:	fcc42783          	lw	a5,-52(s0)
     ce4:	02500593          	li	a1,37
     ce8:	853e                	mv	a0,a5
     cea:	00000097          	auipc	ra,0x0
     cee:	c16080e7          	jalr	-1002(ra) # 900 <putc>
     cf2:	fdc42783          	lw	a5,-36(s0)
     cf6:	0ff7f713          	andi	a4,a5,255
     cfa:	fcc42783          	lw	a5,-52(s0)
     cfe:	85ba                	mv	a1,a4
     d00:	853e                	mv	a0,a5
     d02:	00000097          	auipc	ra,0x0
     d06:	bfe080e7          	jalr	-1026(ra) # 900 <putc>
     d0a:	fe042023          	sw	zero,-32(s0)
     d0e:	fe442783          	lw	a5,-28(s0)
     d12:	2785                	addiw	a5,a5,1
     d14:	fef42223          	sw	a5,-28(s0)
     d18:	fe442783          	lw	a5,-28(s0)
     d1c:	fc043703          	ld	a4,-64(s0)
     d20:	97ba                	add	a5,a5,a4
     d22:	0007c783          	lbu	a5,0(a5)
     d26:	dc0795e3          	bnez	a5,af0 <vprintf+0x20>
     d2a:	0001                	nop
     d2c:	0001                	nop
     d2e:	60a6                	ld	ra,72(sp)
     d30:	6406                	ld	s0,64(sp)
     d32:	6161                	addi	sp,sp,80
     d34:	8082                	ret

0000000000000d36 <fprintf>:
     d36:	7159                	addi	sp,sp,-112
     d38:	fc06                	sd	ra,56(sp)
     d3a:	f822                	sd	s0,48(sp)
     d3c:	0080                	addi	s0,sp,64
     d3e:	fcb43823          	sd	a1,-48(s0)
     d42:	e010                	sd	a2,0(s0)
     d44:	e414                	sd	a3,8(s0)
     d46:	e818                	sd	a4,16(s0)
     d48:	ec1c                	sd	a5,24(s0)
     d4a:	03043023          	sd	a6,32(s0)
     d4e:	03143423          	sd	a7,40(s0)
     d52:	87aa                	mv	a5,a0
     d54:	fcf42e23          	sw	a5,-36(s0)
     d58:	03040793          	addi	a5,s0,48
     d5c:	fcf43423          	sd	a5,-56(s0)
     d60:	fc843783          	ld	a5,-56(s0)
     d64:	fd078793          	addi	a5,a5,-48
     d68:	fef43423          	sd	a5,-24(s0)
     d6c:	fe843703          	ld	a4,-24(s0)
     d70:	fdc42783          	lw	a5,-36(s0)
     d74:	863a                	mv	a2,a4
     d76:	fd043583          	ld	a1,-48(s0)
     d7a:	853e                	mv	a0,a5
     d7c:	00000097          	auipc	ra,0x0
     d80:	d54080e7          	jalr	-684(ra) # ad0 <vprintf>
     d84:	0001                	nop
     d86:	70e2                	ld	ra,56(sp)
     d88:	7442                	ld	s0,48(sp)
     d8a:	6165                	addi	sp,sp,112
     d8c:	8082                	ret

0000000000000d8e <printf>:
     d8e:	7159                	addi	sp,sp,-112
     d90:	f406                	sd	ra,40(sp)
     d92:	f022                	sd	s0,32(sp)
     d94:	1800                	addi	s0,sp,48
     d96:	fca43c23          	sd	a0,-40(s0)
     d9a:	e40c                	sd	a1,8(s0)
     d9c:	e810                	sd	a2,16(s0)
     d9e:	ec14                	sd	a3,24(s0)
     da0:	f018                	sd	a4,32(s0)
     da2:	f41c                	sd	a5,40(s0)
     da4:	03043823          	sd	a6,48(s0)
     da8:	03143c23          	sd	a7,56(s0)
     dac:	04040793          	addi	a5,s0,64
     db0:	fcf43823          	sd	a5,-48(s0)
     db4:	fd043783          	ld	a5,-48(s0)
     db8:	fc878793          	addi	a5,a5,-56
     dbc:	fef43423          	sd	a5,-24(s0)
     dc0:	fe843783          	ld	a5,-24(s0)
     dc4:	863e                	mv	a2,a5
     dc6:	fd843583          	ld	a1,-40(s0)
     dca:	4505                	li	a0,1
     dcc:	00000097          	auipc	ra,0x0
     dd0:	d04080e7          	jalr	-764(ra) # ad0 <vprintf>
     dd4:	0001                	nop
     dd6:	70a2                	ld	ra,40(sp)
     dd8:	7402                	ld	s0,32(sp)
     dda:	6165                	addi	sp,sp,112
     ddc:	8082                	ret

0000000000000dde <free>:
     dde:	7179                	addi	sp,sp,-48
     de0:	f422                	sd	s0,40(sp)
     de2:	1800                	addi	s0,sp,48
     de4:	fca43c23          	sd	a0,-40(s0)
     de8:	fd843783          	ld	a5,-40(s0)
     dec:	17c1                	addi	a5,a5,-16
     dee:	fef43023          	sd	a5,-32(s0)
     df2:	00000797          	auipc	a5,0x0
     df6:	40678793          	addi	a5,a5,1030 # 11f8 <freep>
     dfa:	639c                	ld	a5,0(a5)
     dfc:	fef43423          	sd	a5,-24(s0)
     e00:	a815                	j	e34 <free+0x56>
     e02:	fe843783          	ld	a5,-24(s0)
     e06:	639c                	ld	a5,0(a5)
     e08:	fe843703          	ld	a4,-24(s0)
     e0c:	00f76f63          	bltu	a4,a5,e2a <free+0x4c>
     e10:	fe043703          	ld	a4,-32(s0)
     e14:	fe843783          	ld	a5,-24(s0)
     e18:	02e7eb63          	bltu	a5,a4,e4e <free+0x70>
     e1c:	fe843783          	ld	a5,-24(s0)
     e20:	639c                	ld	a5,0(a5)
     e22:	fe043703          	ld	a4,-32(s0)
     e26:	02f76463          	bltu	a4,a5,e4e <free+0x70>
     e2a:	fe843783          	ld	a5,-24(s0)
     e2e:	639c                	ld	a5,0(a5)
     e30:	fef43423          	sd	a5,-24(s0)
     e34:	fe043703          	ld	a4,-32(s0)
     e38:	fe843783          	ld	a5,-24(s0)
     e3c:	fce7f3e3          	bgeu	a5,a4,e02 <free+0x24>
     e40:	fe843783          	ld	a5,-24(s0)
     e44:	639c                	ld	a5,0(a5)
     e46:	fe043703          	ld	a4,-32(s0)
     e4a:	faf77ce3          	bgeu	a4,a5,e02 <free+0x24>
     e4e:	fe043783          	ld	a5,-32(s0)
     e52:	479c                	lw	a5,8(a5)
     e54:	1782                	slli	a5,a5,0x20
     e56:	9381                	srli	a5,a5,0x20
     e58:	0792                	slli	a5,a5,0x4
     e5a:	fe043703          	ld	a4,-32(s0)
     e5e:	973e                	add	a4,a4,a5
     e60:	fe843783          	ld	a5,-24(s0)
     e64:	639c                	ld	a5,0(a5)
     e66:	02f71763          	bne	a4,a5,e94 <free+0xb6>
     e6a:	fe043783          	ld	a5,-32(s0)
     e6e:	4798                	lw	a4,8(a5)
     e70:	fe843783          	ld	a5,-24(s0)
     e74:	639c                	ld	a5,0(a5)
     e76:	479c                	lw	a5,8(a5)
     e78:	9fb9                	addw	a5,a5,a4
     e7a:	0007871b          	sext.w	a4,a5
     e7e:	fe043783          	ld	a5,-32(s0)
     e82:	c798                	sw	a4,8(a5)
     e84:	fe843783          	ld	a5,-24(s0)
     e88:	639c                	ld	a5,0(a5)
     e8a:	6398                	ld	a4,0(a5)
     e8c:	fe043783          	ld	a5,-32(s0)
     e90:	e398                	sd	a4,0(a5)
     e92:	a039                	j	ea0 <free+0xc2>
     e94:	fe843783          	ld	a5,-24(s0)
     e98:	6398                	ld	a4,0(a5)
     e9a:	fe043783          	ld	a5,-32(s0)
     e9e:	e398                	sd	a4,0(a5)
     ea0:	fe843783          	ld	a5,-24(s0)
     ea4:	479c                	lw	a5,8(a5)
     ea6:	1782                	slli	a5,a5,0x20
     ea8:	9381                	srli	a5,a5,0x20
     eaa:	0792                	slli	a5,a5,0x4
     eac:	fe843703          	ld	a4,-24(s0)
     eb0:	97ba                	add	a5,a5,a4
     eb2:	fe043703          	ld	a4,-32(s0)
     eb6:	02f71563          	bne	a4,a5,ee0 <free+0x102>
     eba:	fe843783          	ld	a5,-24(s0)
     ebe:	4798                	lw	a4,8(a5)
     ec0:	fe043783          	ld	a5,-32(s0)
     ec4:	479c                	lw	a5,8(a5)
     ec6:	9fb9                	addw	a5,a5,a4
     ec8:	0007871b          	sext.w	a4,a5
     ecc:	fe843783          	ld	a5,-24(s0)
     ed0:	c798                	sw	a4,8(a5)
     ed2:	fe043783          	ld	a5,-32(s0)
     ed6:	6398                	ld	a4,0(a5)
     ed8:	fe843783          	ld	a5,-24(s0)
     edc:	e398                	sd	a4,0(a5)
     ede:	a031                	j	eea <free+0x10c>
     ee0:	fe843783          	ld	a5,-24(s0)
     ee4:	fe043703          	ld	a4,-32(s0)
     ee8:	e398                	sd	a4,0(a5)
     eea:	00000797          	auipc	a5,0x0
     eee:	30e78793          	addi	a5,a5,782 # 11f8 <freep>
     ef2:	fe843703          	ld	a4,-24(s0)
     ef6:	e398                	sd	a4,0(a5)
     ef8:	0001                	nop
     efa:	7422                	ld	s0,40(sp)
     efc:	6145                	addi	sp,sp,48
     efe:	8082                	ret

0000000000000f00 <morecore>:
     f00:	7179                	addi	sp,sp,-48
     f02:	f406                	sd	ra,40(sp)
     f04:	f022                	sd	s0,32(sp)
     f06:	1800                	addi	s0,sp,48
     f08:	87aa                	mv	a5,a0
     f0a:	fcf42e23          	sw	a5,-36(s0)
     f0e:	fdc42783          	lw	a5,-36(s0)
     f12:	0007871b          	sext.w	a4,a5
     f16:	6785                	lui	a5,0x1
     f18:	00f77563          	bgeu	a4,a5,f22 <morecore+0x22>
     f1c:	6785                	lui	a5,0x1
     f1e:	fcf42e23          	sw	a5,-36(s0)
     f22:	fdc42783          	lw	a5,-36(s0)
     f26:	0047979b          	slliw	a5,a5,0x4
     f2a:	2781                	sext.w	a5,a5
     f2c:	2781                	sext.w	a5,a5
     f2e:	853e                	mv	a0,a5
     f30:	00000097          	auipc	ra,0x0
     f34:	9b8080e7          	jalr	-1608(ra) # 8e8 <sbrk>
     f38:	fea43423          	sd	a0,-24(s0)
     f3c:	fe843703          	ld	a4,-24(s0)
     f40:	57fd                	li	a5,-1
     f42:	00f71463          	bne	a4,a5,f4a <morecore+0x4a>
     f46:	4781                	li	a5,0
     f48:	a03d                	j	f76 <morecore+0x76>
     f4a:	fe843783          	ld	a5,-24(s0)
     f4e:	fef43023          	sd	a5,-32(s0)
     f52:	fe043783          	ld	a5,-32(s0)
     f56:	fdc42703          	lw	a4,-36(s0)
     f5a:	c798                	sw	a4,8(a5)
     f5c:	fe043783          	ld	a5,-32(s0)
     f60:	07c1                	addi	a5,a5,16
     f62:	853e                	mv	a0,a5
     f64:	00000097          	auipc	ra,0x0
     f68:	e7a080e7          	jalr	-390(ra) # dde <free>
     f6c:	00000797          	auipc	a5,0x0
     f70:	28c78793          	addi	a5,a5,652 # 11f8 <freep>
     f74:	639c                	ld	a5,0(a5)
     f76:	853e                	mv	a0,a5
     f78:	70a2                	ld	ra,40(sp)
     f7a:	7402                	ld	s0,32(sp)
     f7c:	6145                	addi	sp,sp,48
     f7e:	8082                	ret

0000000000000f80 <malloc>:
     f80:	7139                	addi	sp,sp,-64
     f82:	fc06                	sd	ra,56(sp)
     f84:	f822                	sd	s0,48(sp)
     f86:	0080                	addi	s0,sp,64
     f88:	87aa                	mv	a5,a0
     f8a:	fcf42623          	sw	a5,-52(s0)
     f8e:	fcc46783          	lwu	a5,-52(s0)
     f92:	07bd                	addi	a5,a5,15
     f94:	8391                	srli	a5,a5,0x4
     f96:	2781                	sext.w	a5,a5
     f98:	2785                	addiw	a5,a5,1
     f9a:	fcf42e23          	sw	a5,-36(s0)
     f9e:	00000797          	auipc	a5,0x0
     fa2:	25a78793          	addi	a5,a5,602 # 11f8 <freep>
     fa6:	639c                	ld	a5,0(a5)
     fa8:	fef43023          	sd	a5,-32(s0)
     fac:	fe043783          	ld	a5,-32(s0)
     fb0:	ef95                	bnez	a5,fec <malloc+0x6c>
     fb2:	00000797          	auipc	a5,0x0
     fb6:	23678793          	addi	a5,a5,566 # 11e8 <base>
     fba:	fef43023          	sd	a5,-32(s0)
     fbe:	00000797          	auipc	a5,0x0
     fc2:	23a78793          	addi	a5,a5,570 # 11f8 <freep>
     fc6:	fe043703          	ld	a4,-32(s0)
     fca:	e398                	sd	a4,0(a5)
     fcc:	00000797          	auipc	a5,0x0
     fd0:	22c78793          	addi	a5,a5,556 # 11f8 <freep>
     fd4:	6398                	ld	a4,0(a5)
     fd6:	00000797          	auipc	a5,0x0
     fda:	21278793          	addi	a5,a5,530 # 11e8 <base>
     fde:	e398                	sd	a4,0(a5)
     fe0:	00000797          	auipc	a5,0x0
     fe4:	20878793          	addi	a5,a5,520 # 11e8 <base>
     fe8:	0007a423          	sw	zero,8(a5)
     fec:	fe043783          	ld	a5,-32(s0)
     ff0:	639c                	ld	a5,0(a5)
     ff2:	fef43423          	sd	a5,-24(s0)
     ff6:	fe843783          	ld	a5,-24(s0)
     ffa:	4798                	lw	a4,8(a5)
     ffc:	fdc42783          	lw	a5,-36(s0)
    1000:	2781                	sext.w	a5,a5
    1002:	06f76863          	bltu	a4,a5,1072 <malloc+0xf2>
    1006:	fe843783          	ld	a5,-24(s0)
    100a:	4798                	lw	a4,8(a5)
    100c:	fdc42783          	lw	a5,-36(s0)
    1010:	2781                	sext.w	a5,a5
    1012:	00e79963          	bne	a5,a4,1024 <malloc+0xa4>
    1016:	fe843783          	ld	a5,-24(s0)
    101a:	6398                	ld	a4,0(a5)
    101c:	fe043783          	ld	a5,-32(s0)
    1020:	e398                	sd	a4,0(a5)
    1022:	a82d                	j	105c <malloc+0xdc>
    1024:	fe843783          	ld	a5,-24(s0)
    1028:	4798                	lw	a4,8(a5)
    102a:	fdc42783          	lw	a5,-36(s0)
    102e:	40f707bb          	subw	a5,a4,a5
    1032:	0007871b          	sext.w	a4,a5
    1036:	fe843783          	ld	a5,-24(s0)
    103a:	c798                	sw	a4,8(a5)
    103c:	fe843783          	ld	a5,-24(s0)
    1040:	479c                	lw	a5,8(a5)
    1042:	1782                	slli	a5,a5,0x20
    1044:	9381                	srli	a5,a5,0x20
    1046:	0792                	slli	a5,a5,0x4
    1048:	fe843703          	ld	a4,-24(s0)
    104c:	97ba                	add	a5,a5,a4
    104e:	fef43423          	sd	a5,-24(s0)
    1052:	fe843783          	ld	a5,-24(s0)
    1056:	fdc42703          	lw	a4,-36(s0)
    105a:	c798                	sw	a4,8(a5)
    105c:	00000797          	auipc	a5,0x0
    1060:	19c78793          	addi	a5,a5,412 # 11f8 <freep>
    1064:	fe043703          	ld	a4,-32(s0)
    1068:	e398                	sd	a4,0(a5)
    106a:	fe843783          	ld	a5,-24(s0)
    106e:	07c1                	addi	a5,a5,16
    1070:	a091                	j	10b4 <malloc+0x134>
    1072:	00000797          	auipc	a5,0x0
    1076:	18678793          	addi	a5,a5,390 # 11f8 <freep>
    107a:	639c                	ld	a5,0(a5)
    107c:	fe843703          	ld	a4,-24(s0)
    1080:	02f71063          	bne	a4,a5,10a0 <malloc+0x120>
    1084:	fdc42783          	lw	a5,-36(s0)
    1088:	853e                	mv	a0,a5
    108a:	00000097          	auipc	ra,0x0
    108e:	e76080e7          	jalr	-394(ra) # f00 <morecore>
    1092:	fea43423          	sd	a0,-24(s0)
    1096:	fe843783          	ld	a5,-24(s0)
    109a:	e399                	bnez	a5,10a0 <malloc+0x120>
    109c:	4781                	li	a5,0
    109e:	a819                	j	10b4 <malloc+0x134>
    10a0:	fe843783          	ld	a5,-24(s0)
    10a4:	fef43023          	sd	a5,-32(s0)
    10a8:	fe843783          	ld	a5,-24(s0)
    10ac:	639c                	ld	a5,0(a5)
    10ae:	fef43423          	sd	a5,-24(s0)
    10b2:	b791                	j	ff6 <malloc+0x76>
    10b4:	853e                	mv	a0,a5
    10b6:	70e2                	ld	ra,56(sp)
    10b8:	7442                	ld	s0,48(sp)
    10ba:	6121                	addi	sp,sp,64
    10bc:	8082                	ret

00000000000010be <setjmp>:
    10be:	e100                	sd	s0,0(a0)
    10c0:	e504                	sd	s1,8(a0)
    10c2:	01253823          	sd	s2,16(a0)
    10c6:	01353c23          	sd	s3,24(a0)
    10ca:	03453023          	sd	s4,32(a0)
    10ce:	03553423          	sd	s5,40(a0)
    10d2:	03653823          	sd	s6,48(a0)
    10d6:	03753c23          	sd	s7,56(a0)
    10da:	05853023          	sd	s8,64(a0)
    10de:	05953423          	sd	s9,72(a0)
    10e2:	05a53823          	sd	s10,80(a0)
    10e6:	05b53c23          	sd	s11,88(a0)
    10ea:	06153023          	sd	ra,96(a0)
    10ee:	06253423          	sd	sp,104(a0)
    10f2:	4501                	li	a0,0
    10f4:	8082                	ret

00000000000010f6 <longjmp>:
    10f6:	6100                	ld	s0,0(a0)
    10f8:	6504                	ld	s1,8(a0)
    10fa:	01053903          	ld	s2,16(a0)
    10fe:	01853983          	ld	s3,24(a0)
    1102:	02053a03          	ld	s4,32(a0)
    1106:	02853a83          	ld	s5,40(a0)
    110a:	03053b03          	ld	s6,48(a0)
    110e:	03853b83          	ld	s7,56(a0)
    1112:	04053c03          	ld	s8,64(a0)
    1116:	04853c83          	ld	s9,72(a0)
    111a:	05053d03          	ld	s10,80(a0)
    111e:	05853d83          	ld	s11,88(a0)
    1122:	06053083          	ld	ra,96(a0)
    1126:	06853103          	ld	sp,104(a0)
    112a:	c199                	beqz	a1,1130 <longjmp_1>
    112c:	852e                	mv	a0,a1
    112e:	8082                	ret

0000000000001130 <longjmp_1>:
    1130:	4505                	li	a0,1
    1132:	8082                	ret
