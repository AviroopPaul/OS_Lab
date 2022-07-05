#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

int main()
{

    int n;
    printf("Enter n:\n");
    scanf("%d", &n);

    printf("Parent process \n");
    printf("getpid: %d, getppid: %d \n", getpid(), getppid());

    // for (int i = 0; i < n; i++)
    // {

    //     if (fork() == 0)
    //     {
    //         printf("child process \n");
    //         printf("getpid: %d, getppid: %d \n", getpid(), getppid());
    //         exit(0);
    //     }
    // }

    if (fork() == 0)
    {
        printf("child process \n");
        printf("getpid: %d, getppid: %d \n", getpid(), getppid());
        exit(0);
    }
    if (fork() == 0)
    {
        printf("child process \n");
        printf("getpid: %d, getppid: %d \n", getpid(), getppid());
        exit(0);
    }
    if (fork() == 0)
    {
        printf("child process \n");
        printf("getpid: %d, getppid: %d \n", getpid(), getppid());
        exit(0);
    }
    if (fork() == 0)
    {
        printf("child process \n");
        printf("getpid: %d, getppid: %d \n", getpid(), getppid());
        exit(0);
    }

    sleep(n);
    return (0);
}
