#include "kernel/types.h"
#include "user/setjmp.h"
#include "user/threads.h"
#include "user/user.h"
#define NULL 0
#define debug 0
#define debug1 0

static struct thread* current_thread = NULL;
static struct thread* root_thread = NULL;
static struct thread* pre_thread = NULL;
static int id = 1;
static jmp_buf env_st;
// static jmp_buf env_tmp;
int key=0;
// TODO: necessary declares, if any


struct thread *thread_create(void (*f)(void *), void *arg){
    struct thread *t = (struct thread*) malloc(sizeof(struct thread));
    //unsigned long stack_p = 0;
    unsigned long new_stack_p;
    unsigned long new_stack;
    new_stack = (unsigned long) malloc(sizeof(unsigned long)*0x100);
    new_stack_p = new_stack +0x100*8-0x2*8;
    t->fp = f;
    t->arg = arg;
    t->ID  = id;
    t->buf_set = 0;
    t->stack = (void*) new_stack;
    t->stack_p = (void*) new_stack_p;
    id++;
    return t;
}
void thread_add_runqueue(struct thread *t){
    if(current_thread == NULL){//如果current
        // TODO
        t->parent=NULL;
        t->right=NULL;
        t->left=NULL;
        current_thread=t;
        root_thread=t;
        #if(debug==1)
        printf("thread1  ID:%d\n",root_thread->ID);
        #endif
    }
    else{
        // TODO
        if (current_thread->left!=NULL&&current_thread->right!=NULL)//thread左右都滿了，代表之前insert過了
        {
            free(t);//所以free掉
            free(t->stack_p);
            #if(debug==1)
            printf("full\n");
            #endif
        }
        else
        {
            if(current_thread->left==NULL)
            {
                current_thread->left=t;
                #if(debug==1)
                printf("thread1  left  ID:%d\n",t->ID);
                #endif
            }
            else 
            {
                current_thread->right=t;
                #if(debug==1)
                printf("thread1  right  ID:%d\n",t->ID);
                #endif
            }
            #if(debug==1)
            printf("parent  ID:%d\n",current_thread->ID);
            #endif
            t->parent=current_thread;
            t->right=NULL;
            t->left=NULL;
        }
        
       
        
    }
}
void thread_yield(void){
    // TODO
    /* code */
    if(setjmp(current_thread->env)==0)//初始化setjmp，讓它卡在yield那邊
    {
        schedule();
        dispatch(); }
    else //long jump回來繼續執行function
    return;
}
void dispatch(void){
    // TODO
    if(current_thread->buf_set==0){//只有第一次dispatch會進來初始化

    int ret=setjmp(current_thread->env);//第一次call setjmp會return 0
    if (ret==0)
    {   
        current_thread->env->sp=(unsigned long)current_thread->stack_p;//初始化stack位置
        
        current_thread->buf_set=1;//第一次執行，所以要設1
    }
    else
    {  
        current_thread->fp(current_thread->arg);//設定function pointer
    }
    longjmp(current_thread->env,1);
    }
    else
    longjmp(current_thread->env,1);//long jump 回去thread yield
}

void schedule(void){
    // TODO

    find_preorder(root_thread);//先找出當下的preorder的thread
    preorder_sch(root_thread);
    
}




void preorder_sch(struct thread* root){
    if (root!=NULL)
    {   if(current_thread!=pre_thread){
        /* code */
        if (current_thread==root)key=1;//當遞迴到root=current，把key設為1
        else if (key==1){//current_thread往下遞迴看誰先拿到key
            current_thread=root;//拿到的就是下一個要執行的thread
            key=0;//把key設成0
            return;//跳出遞迴的部份，往其他地方traversal
        }
        preorder_sch(root->left);
        preorder_sch(root->right);}
        else{
        current_thread=root_thread;//current thread為最後一個thread，跳至root
        return;}
    }
}




void thread_exit(void){
    if(current_thread == root_thread && current_thread->left == NULL && current_thread->right == NULL){
        // TODO
        // Hint: No more thread to execute
        free(current_thread);
        free(current_thread->stack);
        longjmp(env_st,1);//跳回main function
    }
    else{
        find_preorder(current_thread);
        struct thread *current;
        current=current_thread;
        if (current_thread->left!=NULL||current_thread->right!=NULL)//要跳出去的thread下面還有child
        {
           /* code */
           #if (debug1==1)
            printf("root thread ID:%d\n",root_thread->ID);
            printf("current thread ID:%d\n",current_thread->ID);
            printf("preorder thread ID:%d\n",pre_thread->ID);
            #endif

            schedule();//先找好下一個要跳的thread

            //把指到preorder thread的point設為NULL
            if(pre_thread==pre_thread->parent->left)pre_thread->parent->left=NULL;
            else pre_thread->parent->right=NULL;

            //用來確認current是否直接指到pre-thread，如果直接指到就要current是指到自己，就把指到自己的方向設為Null
           //如果沒有指到current原本左邊指的node
           if(current->left==pre_thread)pre_thread->left=NULL; 
           else pre_thread->left=current->left;
           
           //同上，只是換成右邊
           if(current->right==pre_thread)pre_thread->right=NULL;
           else pre_thread->right=current->right;

            //要跳初thread為root
            if(current==root_thread){
                //pre_thread被替換成root所以他的parent為NULL
               pre_thread->parent=NULL;
               //把原本current下面指的thread的paraent，指到替換上來的prethread
               if (current->left!=NULL)current->left->parent=pre_thread;
               if (current->right!=NULL)current->right->parent=pre_thread;
               root_thread=pre_thread;
            //    printf("root change flag=%d\n",1);
            }
            //要跳出的thread不是root
            else{
            //用來判斷parent是指哪個方向到current，並將原本指到current的指標改成指到pre_thread
            if(current==current->parent->left)current->parent->left=pre_thread;
            else current->parent->right=pre_thread;

            //把原本current下面指的thread的parent，指到提換上來的prethread
            if (current->left!=NULL)current->left->parent=pre_thread;
            if (current->right!=NULL)current->right->parent=pre_thread;
            //將原本指到pre_thread的指標指到NULL
            pre_thread->parent=current->parent;}
           

            #if (debug1==1)
            printf("root thread ID:%d\n",root_thread->ID);
            printf("current thread ID:%d\n",current_thread->ID);
            printf("current ID:%d\n",current->ID);
            #endif


           free(current);
           free(current->stack);
           #if (debug1==1)
           printf("root thread ID:%d\n",root_thread->left->ID);
           printf("root thread ID:%d\n",root_thread->right->ID);
           #endif

            dispatch();
        }
        else//要跳出去的thread下面沒有child
        {
        #if (debug1==1)
        printf("current thread ID:%d\n",current_thread->ID);
        printf("prorder thread ID:%d\n",current->ID);
        #endif
        schedule();//先看下一個要跳到哪個thread
        #if (debug1==1)
        printf("current thread ID:%d\n",current_thread->ID);
        printf("preorder thread ID:%d\n",current->ID);
        #endif
         if (current==current->parent->left)current->parent->left=NULL;
         else current->parent->right=NULL;
        free(current);
        free(current->stack);
        dispatch();}
    }

}




void find_preorder(struct thread* t){
    if (t!=NULL)
    {   pre_thread=t;//traversal的最後一個值就是preorder的thread
        /* code */
        find_preorder(t->left);
        find_preorder(t->right);
    }   
}





void thread_start_threading(void){
    // TODO
    if(setjmp(env_st)==0){
    dispatch();  }
    else
    return;
}