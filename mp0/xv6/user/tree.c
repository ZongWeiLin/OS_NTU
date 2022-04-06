#include "kernel/types.h"
#include "kernel/stat.h"
#include "user/user.h"
#include "kernel/fs.h"
#define test 0

int counter=0;//紀錄層數用的
int directory=-1;
int file_num=0;

char*
fmtname(char *path)
{
  static char buf[DIRSIZ+1];//dirisz=14
  char buff[DIRSIZ+1];
  char *p;
  strcpy(buf,buff);
  

  // Find first character after last slash.
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
    ;//path的值為os2022/d?,所以藉由設置p來找到裏面file的第一個字
  p++;

  // Return blank-padded name.
  if(strlen(p) >= DIRSIZ)
    return p;
  memmove(buf,p,strlen(p));
  memset(buf+strlen(p),' ',0);
  return buf;
}

void spacemake(int layer,int pa_check,int parent_last,char *path){
  char buf[25];
  char *p;//找前一個字串的尾巴用的
  p=path;
  //把前一層複製的空格複製到buf
  strcpy(buf,p);
  //用來產生不同layer空白部份的,並且一個產生的空格處串起來

  //第0層直接跳過

  //parent剛好為前一層最後一個,則不印初|
  if (layer>0 && pa_check==parent_last)
  {
    memset(buf+strlen(p),' ',4);
  }
  else if(layer>0)
  { memset(buf+strlen(p),'|',1);
    memset(buf+strlen(p)+1,' ',3);
  }
    
  strcpy(p,buf);

}


void
tree_list(char *path,int parent,int pa_last,char *pre_buf)
{
  char buf[512], *p;

  //用來紀錄當前空白的
  char buf_now[DIRSIZ];
  //用來存之前空白的
  char buf_previos[DIRSIZ];
  strcpy(buf_previos,pre_buf);

  int fd,fd1;
  struct dirent de,de1;//file 的目錄,但裏面沒辦法直接看資料
  struct stat st,st1;//所以得透過stat來把dirent的內容存進去

  //fd1、de1、st1是拿來數每一層有幾個的

  int last=0;//每一層的最後一個
  int parent_check=parent;//用來紀錄現在為哪個parent process的分支,如果parent process為前一層最後一個，則不印出|
  int parent_last=pa_last;//紀錄祖先的last（parent process的寬度）
  int child_check=0;//用來檢查child目前走到第幾個資料的
  


  if((fd = open(path, 0)) < 0){
    // fprintf(2, "ls: cannot open %s\n", path);
    return;
  }

  if((fd1 = open(path, 0)) < 0){
    // fprintf(2, "ls: cannot open %s\n", path);
    return;
  }


  if(fstat(fd, &st) < 0){
    // fprintf(2, "ls: cannot stat %s\n", path);
    // close(fd);
    return;
  }

  if(fstat(fd1, &st1) < 0){
    // fprintf(2, "ls: cannot stat %s\n", path);
    // close(fd1);
    return;
  }

  //用來找這一層最後一個是哪個，類似先BFS看寬度
  switch(st1.type){
    case T_FILE:
    break;
    case T_DIR:
    while(read(fd1, &de1, sizeof(de1)) == sizeof(de1)){
      if(*de1.name!='.')
      last++;
    }
  }
  int layer=0;
  layer=counter;//counter為當前的層數


  switch(st.type){
  case T_FILE:
  if (layer!=0)
  {
    counter--;
  }
  
    break;


  case T_DIR:
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
      printf("ls: path too long\n");
      break;
    }
    strcpy(buf, path);//把os2022 co到buffer
    p = buf+strlen(buf);//pointer指到,目前buffer尾端
    *p++ = '/';//p往後指一格然後讓其為os2022/

    

    while(read(fd, &de, sizeof(de)) == sizeof(de)){//用來判斷讀進來的資料是否是空的,如果還有資料進來
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        // printf("ls: cannot stat %s\n", buf);
        continue;
      }

      //因為file讀的時候第一個為'.',所以要濾掉第一個
      if(*de.name!='.'){
      // if(fork()!=0){
      if(counter==layer)child_check++;
      //複製parent前面印的空格
      strcpy(buf_now,buf_previos);
      //把複製的前面印的，串上這一層要加的空格
      spacemake(layer,parent_check,parent_last,buf_now);

      //test for debug
      #if test
      printf("%sbuf_now length:%d\n",buf_now,strlen(buf_now));
      printf("%sbuf_pre length:%d\n",buf_now,strlen(buf_previos));
      printf("%sparent_check:%d\n",buf_now,parent_check);
      printf("%schild_check:%d\n",buf_now,child_check);
      printf("%slayer:%d\n",buf_now,layer);
      printf("%sparent_last:%d\n",buf_now,parent_last);
      printf("%scurrent_last%d\n",buf_now,last);
      #endif


      printf("%s%c\n",buf_now,124);//藉由parent check檢查是不會是，前一層的最後一個
      printf("%s+-- %s\n",buf_now,fmtname(buf));
      counter++;//往下一層
      tree_list(buf,child_check,last,buf_now);//往下繼續DFS遞迴
      }
    }
    //走到底往後退一層
    counter--;
    break;
  }
  close(fd);
}


//拿來來察看有幾個file級direct
void
findnum(char *path)
{
  char buf[512], *p;
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(path, 0)) < 0){
    return;
  }

  if(fstat(fd, &st) < 0){
    close(fd);
    return;
  }

  switch(st.type){
  case T_FILE:
    file_num++;
    break;

  case T_DIR:
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
      break;
    }
    strcpy(buf, path);
    p = buf+strlen(buf);
    *p++ = '/';
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        continue;
      }
      if (*de.name!='.')
      { 
        findnum(buf);//DFS來traverse
      }
      
    }
    directory++;
    break;
  }
  close(fd);
}



int
main(int argc, char *argv[])
{
  int i;
  int status;

  // for(i=1;i<argc;i++){
  // findnum(argv[i]);}

  // for(i=1; i<argc; i++){
  //   // printffile(argv[i]);
  //   if(file_num>0||directory>0)
  //   printf("%s\n",argv[i]);
  //   else
  //   printf("%s [error opening dir]\n",argv[i]);}


  
  // for(i=1; i<argc; i++){
  //   tree_list(argv[i],0,0,"");}


  // if (directory==-1)
  // {
  //   directory++;
  // }
  
  // printf("\n");
  // printf("%d directories, %d files\n",directory,file_num);





  int pp2c[2],pc2p[2];
  pipe(pc2p);pipe(pp2c);


if(fork()!=0){

  close(pp2c[0]);
  close(pc2p[1]);
  //把用不到的pipe輸入輸出關掉

  for(i=1;i<argc;i++){
    findnum(argv[i]);}

  for(i=1; i<argc; i++){
    // printffile(argv[i]);
    if(file_num>0||directory>0)
    printf("%s\n",argv[i]);
    else
    printf("%s [error opening dir]\n",argv[i]);}
  

  if (directory==-1)
  {
    directory++;
  }
  int buffer[2];
  buffer[0]=directory;buffer[1]=file_num;
  write(pp2c[1],&buffer,2*sizeof(int));

  close(pp2c[1]);
  char buf;
  read(pc2p[0],&buf,sizeof(char));
  close(pc2p[0]);
  wait(&status);}


else{

  close(pp2c[1]);
  close(pc2p[0]);

int buff[2];
read(pp2c[0],&buff,2*sizeof(int));
directory=buff[0];file_num=buff[1];
close(pp2c[0]);


write(pc2p[1],"1",sizeof(char));
close(pc2p[1]);

for(i=1; i<argc; i++){
    tree_list(argv[i],0,0,"");}


printf("\n");
printf("%d directories, %d files\n",directory,file_num);
}
exit(5);
}
