#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

/**
 * while_infinite - run an infinity while loop
 *
 * Return: nothing
 */
int while_infinite(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}

/**
 * main - create five zombie processes
 *
 * Return: nothing
 */
int main(void)
{
    pid_t pid;
    char i = 0;

    while (i < 5)
    {
        pid = fork();
        if (pid > 0)
        {
            printf("Zombie process created: %d\n", pid);
            sleep(1);
            i++;
        }
        else
            exit(0);
    }

    while_infinite();

    return (0);
}
