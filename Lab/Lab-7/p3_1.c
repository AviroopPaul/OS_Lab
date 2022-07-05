#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main()
{
    printf("Parent process\n Process ID: %d", getpid());
    for (int i = 0; i < 2; i++)
    {
        if (i == 1)
        {
            if (fork() == 0)
            {
                printf("\nchild process C2 \n");
                printf("getpid: %d, getppid: %d \n", getpid(), getppid());
                exit(0);
            }
            for (int i = 0; i < 2; i++)
            {
                if (fork() == 0)
                {
                    sleep(3);
                    printf("\nchild process C%d \n", 4 + i);
                    printf("getpid: %d, getppid: %d \n", getpid(), getppid());
                    exit(0);
                }
            }
        }
    }
    if (fork() == 0)
    {
        printf("\nchild process C1 \n");
        printf("getpid: %d, getppid: %d \n", getpid(), getppid());
        exit(0);
        if (fork() == 0)
        {
            sleep(2);
            printf("\nchild process C3 \n");
            printf("getpid: %d, getppid: %d \n", getpid(), getppid());
            exit(0);
        }
    }

    sleep(5);
}