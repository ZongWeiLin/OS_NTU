#include "kernel/types.h"
#include "user/setjmp.h"
#include "user/threads.h"
#include "user/user.h"
jmp_buf buff;
jmp_buf buff2;

int fun_a(int x){
    int v=x*2-1;
    int i=0;
    int ret=setjmp(buff2);
    v+=ret;
    i++;
    printf("%d\n",i);
    printf("v:%d\n",v);
    if(ret==0)
    {longjmp(buff2,2);}
    else
    return v;
}

int fun_b(int x){
    int v=fun_a(x)+10;
    if(v>25){
        longjmp(buff,1);
    }
    else{
    longjmp(buff2,1);
    return v;}
}


int main(int argc, char **argv) 
{ int ret=setjmp(buff);
  if (ret==2)
  {
    printf("function_a error\n");
  }
  else if (ret==1)
  {
    printf("function_b error\n");
  }
  else
  {int value;
   value=fun_b(3); 
    printf("function_a=%d\n",value);
  }
    exit(0);
} 