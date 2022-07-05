pid_t c1;
c1=fork();
if(c1==0){
printf("child process \n");
printf("getpid: %d, getppid: %d \n", getpid(), getppid());
pid_t c3;
c3=fork();
if(c3==0){
printf("child process \n");
printf("getpid: %d, getppid: %d \n", getpid(), getppid());
}
}

pid_t c2;
c2=fork();
if(c2==0){
printf("child process \n");
printf("getpid: %d, getppid: %d \n", getpid(), getppid());

pid_t c4;
c4=fork();
if(c4==0){
printf("child process \n");
printf("getpid: %d, getppid: %d \n", getpid(), getppid());
}
pid_t c5;
c5=fork();
if(c5==0){
printf("child process \n");
printf("getpid: %d, getppid: %d \n", getpid(), getppid());
}
}
