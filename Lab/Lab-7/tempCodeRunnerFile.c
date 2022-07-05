if (fork() == 0)
    {
        printf("\nP_id: %d \t PP_id: %d\n", getpid(), getppid());
    }