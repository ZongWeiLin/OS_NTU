#include "kernel/types.h"

#include "kernel/fcntl.h"
#include "kernel/stat.h"
#include "user/user.h"
void mkfile(char *filename) {
    int fd = open(filename, O_CREATE | O_RDWR);
    write(fd, "hi", 3);
    close(fd);
}

void mkd(char *dirname) {
    if (mkdir(dirname) < 0) {
        fprintf(2, "mkdir %s failed.", dirname);
        exit(1);
    }
}
void test0() {
    mkd("os2022");

    mkd("os2022/d1");
    mkd("os2022/d2");
    mkd("os2022/d3");
    mkfile("os2022/d4");

    mkd("os2022/d2/a");
    mkd("os2022/d2/b");
    mkfile("os2022/d2/c");

    // mkd("os2022/d1/a");
    // mkd("os2022/d1/b");


    mkd("os2022/d3/a");
    mkfile("os2022/d3/b");
    // mkd("os2022/d3/c");

    // mkd("os2022/d3/c/c1");
    // mkd("os2022/d3/c/c1/c2");
    // mkd("os2022/d3/c/c1/c2/c3");

    // mkd("os2022/d2/a/a2");
    // mkfile("os2022/d2/a/a2/a1");

    // mkd("os2022/d1/a/c");
    // mkfile("os2022/d1/b/d");

    // mkd("os2022/d1/a/c/d");
    // mkd("os2022/d1/b/d/a");

}

void test1() {
    mkd("a");
    mkd("a/0");
    mkd("a/1");
    mkd("a/2");
    mkd("a/3");
    mkd("a/4");
    mkd("a/5");
    mkd("a/6");
    mkd("a/7");
    mkd("a/8");
    mkd("a/9");
    mkd("a/10");
}

int main(int argc, char *argv[]) {
    test0();
    test1();
    exit(0);
}
