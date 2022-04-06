// pingpong.c
#include "kernel/types.h"
#include "kernel/stat.h"
#include "user/user.h"

int main(int argc, char **argv) {
	//初始化pipe
	int pp2c[2],pc2p[2];
	//[1]為寫入用,[0]為讀取用
	pipe(pp2c);//parent to child 的pipe
	pipe(pc2p);//child to parent 的pipe
	if(fork()!=0){
		write(pp2c[1],"s",sizeof(char));
		write(pp2c[1],"1",sizeof(char));
		//parent 先寫入child
		char buf;
		//由child to parent process的pipe讀到資料
		read(pc2p[0],&buf,sizeof(char));
		//確認讀到後印出process id
		printf("parent process id:%d\n",getpid());
		printf("%d:receive pong\n",getpid());
		wait(0);
	}
	else{
		char buf;
		read(pp2c[0],&buf,sizeof(char));
		printf("write from parent data is <%c>\n",buf);
		//child 由buffer讀到寫入資料
		read(pp2c[0],&buf,sizeof(char));
		printf("write from parent data is <%c>\n",buf);
		//寫入的data的順序是依照waiting queue(應該是fifo)


		printf("child process id:%d\n",getpid());
		printf("%d:receive ping\n",getpid());
		//確認讀到後印初child process的process id;
		write(pc2p[1],"1",sizeof(char));
		//寫入child to parent process 的pipe
	}
	exit(0);
}