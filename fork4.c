#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
int main()
{
    pid_t p1, p2, p3, p4, p5, p6;
    p1 = fork();
    if (p1 == 0)
    {
        p4 = fork();
        if (p4 == 0)
        {
            printf("\nC4 ID:%d PID: %d\n", getpid(), getppid());
        }
        else
        {

            wait(NULL);
            printf("C1 ID:%d PID: %d\n", getpid(), getppid());
        }
    }
    else
    {

        wait(NULL);
        p2 = fork();
        if (p2 == 0)
        {
            p5 = fork();
            if (p5 == 0)
            {
                printf("C5 ID:%d PID: %d\n", getpid(), getppid());
            }
            else
            {

                wait(NULL);
                printf("C2 ID:%d PID: %d\n", getpid(), getppid());
            }
        }
        else
        {

            wait(NULL);
            p3 = fork();
            if (p3 == 0)
            {
                p6 = fork();
                if (p6 == 0)
                {
                    printf("C6 ID:%d PID: %d\n", getpid(), getppid());
                }
                else
                {
                    wait(NULL);
                    printf("C3 ID:%d PID: %d\n", getpid(), getppid());
                }
            }
            else
            {

                wait(NULL);
                printf("I am parent. PID: %d\n", getpid());
            }
        }
    }
}
