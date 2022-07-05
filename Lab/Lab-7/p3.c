#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
int main()
{
    printf("Parent process ID: %d", getpid());
    if (fork() == 0)
    {
        printf("\nP_id: %d \t PP_id: %d\n", getpid(), getppid());
        // if (fork() == 0)
        // {
        //     printf("\nP_id: %d \t PP_id: %d\n", getpid(), getppid());
        // }
        exit(0);
    }
    if (fork() == 0)
    {
        printf("\nP_id: %d \t PP_id: %d\n", getpid(), getppid());
        exit(0);
    }

    sleep(2);
    return 0;
}
