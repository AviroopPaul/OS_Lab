#include<stdio.h>
#include<stdlib.h>
#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
int main() {

    for (int i = 0; i < 3; i++)
    {
        if(fork() == 0)
        {
            printf("child my pid is %d ppid is %d\n", getpid(),getppid());
            if(fork() == 0) 
            {
                printf("child my pid is %d ppid is %d\n", getpid(),getppid());
                exit(0);
            }
            exit(0);
        }
    }

return 0;
}