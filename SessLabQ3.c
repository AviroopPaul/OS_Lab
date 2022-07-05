#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main()
{
    pid_t p2_1136, p3_1136, p4_1136, p5_1136, p6_1136, p7_1136, p8_1136, p9_1136, p10_1136, p11_1136, p12_113, p13_1136, p14_1136, p15_1136;
    p2_1136 = fork();
    if (p2_1136 == 0)
    {
        p4_1136 = fork();
        if (p4_1136 == 0)
        {
            printf("\nI am child 4, ID:%d PID:%d\n", getpid(), getppid());
        }
        else
        {
            wait(NULL);

            p7_1136 = fork();
            if (p7_1136 == 0)
            {
                printf("\nI am child 7, ID:%d PID:%d\n", getpid(), getppid());
            }
            else
            {
                wait(NULL);

                printf("\nI am child 2, ID:%d PID:%d\n", getpid(), getppid());
            }
        }
    }
    else
    {
        wait(NULL);

        p3_1136 = fork();
        if (p3_1136 == 0)
        {
            p5_1136 = fork();
            if (p5_1136 == 0)
            {
                p8_1136 = fork();
                if (p8_1136 == 0)
                {
                    p12_113 = fork();
                    if (p12_113 == 0)
                    {
                        printf("\nI am child 12, ID:%d PID:%d\n", getpid(), getppid());
                    }

                    else
                    {
                        wait(NULL);

                        printf("\nI am child 8, ID:%d PID:%d\n", getpid(), getppid());
                    }
                }
                else
                {
                    wait(NULL);

                    printf("\nI am child 5, ID:%d PID:%d\n", getpid(), getppid());
                }
            }
            else
            {
                wait(NULL);

                p6_1136 = fork();
                if (p6_1136 == 0)
                {
                    p9_1136 = fork();
                    if (p9_1136 == 0)
                    {
                        p13_1136 = fork();
                        if (p13_1136 == 0)
                        {
                            printf("\nI am child 13, ID:%d PID:%d\n", getpid(), getppid());
                        }

                        else
                        {
                            wait(NULL);

                            printf("\nI am child 9, ID:%d PID:%d\n", getpid(), getppid());
                        }
                    }

                    else
                    {
                        wait(NULL);
                        p10_1136 = fork();
                        if (p10_1136 == 0)
                        {
                            printf("\nI am child 10, ID:%d PID:%d\n", getpid(), getppid());
                        }
                        else
                        {
                            wait(NULL);
                            p11_1136 = fork();
                            if (p11_1136 == 0)
                            {
                                p15_1136 = fork();
                                if (p15_1136 == 0)
                                {
                                    printf("\nI am child 15, ID:%d PID:%d\n", getpid(), getppid());
                                }
                                else
                                {
                                    wait(NULL);
                                    printf("\nI am child 11, ID:%d PID:%d\n", getpid(), getppid());
                                }
                            }
                            else
                            {
                                wait(NULL);
                                printf("\nI am child 6, ID:%d PID:%d\n", getpid(), getppid());
                            }
                        }
                    }
                }
                else
                {
                    wait(NULL);
                    printf("\nI am child 3, ID:%d PID:%d\n", getpid(), getppid());
                }
            }
        }
        else
        {
            wait(NULL);
            printf("\nI am Parent, ID:%d PID:%d\n", getpid(), getppid());
        }
    }
}