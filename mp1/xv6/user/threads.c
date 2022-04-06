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
    if(current_thread == NULL){//�p�Gcurrent
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
        if (current_thread->left!=NULL&&current_thread->right!=NULL)//thread���k�����F�A�N���einsert�L�F
        {
            free(t);//�ҥHfree��
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
    if(setjmp(current_thread->env)==0)//��l��setjmp�A�����d�byield����
    {
        schedule();
        dispatch(); }
    else //long jump�^���~�����function
    return;
}
void dispatch(void){
    // TODO
    if(current_thread->buf_set==0){//�u���Ĥ@��dispatch�|�i�Ӫ�l��

    int ret=setjmp(current_thread->env);//�Ĥ@��call setjmp�|return 0
    if (ret==0)
    {   
        current_thread->env->sp=(unsigned long)current_thread->stack_p;//��l��stack��m
        
        current_thread->buf_set=1;//�Ĥ@������A�ҥH�n�]1
    }
    else
    {  
        current_thread->fp(current_thread->arg);//�]�wfunction pointer
    }
    longjmp(current_thread->env,1);
    }
    else
    longjmp(current_thread->env,1);//long jump �^�hthread yield
}

void schedule(void){
    // TODO

    find_preorder(root_thread);//����X��U��preorder��thread
    preorder_sch(root_thread);
    
}




void preorder_sch(struct thread* root){
    if (root!=NULL)
    {   if(current_thread!=pre_thread){
        /* code */
        if (current_thread==root)key=1;//���j��root=current�A��key�]��1
        else if (key==1){//current_thread���U���j�ݽ֥�����key
            current_thread=root;//���쪺�N�O�U�@�ӭn���檺thread
            key=0;//��key�]��0
            return;//���X���j�������A����L�a��traversal
        }
        preorder_sch(root->left);
        preorder_sch(root->right);}
        else{
        current_thread=root_thread;//current thread���̫�@��thread�A����root
        return;}
    }
}




void thread_exit(void){
    if(current_thread == root_thread && current_thread->left == NULL && current_thread->right == NULL){
        // TODO
        // Hint: No more thread to execute
        free(current_thread);
        free(current_thread->stack);
        longjmp(env_st,1);//���^main function
    }
    else{
        find_preorder(current_thread);
        struct thread *current;
        current=current_thread;
        if (current_thread->left!=NULL||current_thread->right!=NULL)//�n���X�h��thread�U���٦�child
        {
           /* code */
           #if (debug1==1)
            printf("root thread ID:%d\n",root_thread->ID);
            printf("current thread ID:%d\n",current_thread->ID);
            printf("preorder thread ID:%d\n",pre_thread->ID);
            #endif

            schedule();//����n�U�@�ӭn����thread

            //�����preorder thread��point�]��NULL
            if(pre_thread==pre_thread->parent->left)pre_thread->parent->left=NULL;
            else pre_thread->parent->right=NULL;

            //�ΨӽT�{current�O�_��������pre-thread�A�p�G��������N�ncurrent�O����ۤv�A�N�����ۤv����V�]��Null
           //�p�G�S������current�쥻�������node
           if(current->left==pre_thread)pre_thread->left=NULL; 
           else pre_thread->left=current->left;
           
           //�P�W�A�u�O�����k��
           if(current->right==pre_thread)pre_thread->right=NULL;
           else pre_thread->right=current->right;

            //�n����thread��root
            if(current==root_thread){
                //pre_thread�Q������root�ҥH�L��parent��NULL
               pre_thread->parent=NULL;
               //��쥻current�U������thread��paraent�A��������W�Ӫ�prethread
               if (current->left!=NULL)current->left->parent=pre_thread;
               if (current->right!=NULL)current->right->parent=pre_thread;
               root_thread=pre_thread;
            //    printf("root change flag=%d\n",1);
            }
            //�n���X��thread���Oroot
            else{
            //�ΨӧP�_parent�O�����Ӥ�V��current�A�ñN�쥻����current�����Ч令����pre_thread
            if(current==current->parent->left)current->parent->left=pre_thread;
            else current->parent->right=pre_thread;

            //��쥻current�U������thread��parent�A���촣���W�Ӫ�prethread
            if (current->left!=NULL)current->left->parent=pre_thread;
            if (current->right!=NULL)current->right->parent=pre_thread;
            //�N�쥻����pre_thread�����Ы���NULL
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
        else//�n���X�h��thread�U���S��child
        {
        #if (debug1==1)
        printf("current thread ID:%d\n",current_thread->ID);
        printf("prorder thread ID:%d\n",current->ID);
        #endif
        schedule();//���ݤU�@�ӭn�������thread
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
    {   pre_thread=t;//traversal���̫�@�ӭȴN�Opreorder��thread
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