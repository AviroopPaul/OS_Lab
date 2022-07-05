#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

int main()
{

    printf("Parent process \n");
    printf("Process: %d, Parent: %d \n", getpid(), getppid());

    if (fork() == 0)
    {
        printf("child process \n");
        printf("Process: %d, Parent: %d \n", getpid(), getppid());

        if (fork() == 0)
        {
            printf("child process \n");
            printf("Process: %d, Parent: %d \n", getpid(), getppid());
        }
    }

    sleep(1);
    return 0;
}
