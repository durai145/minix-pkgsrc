/*
   Spawns dirmngr with UID and GID with a specific UID and GID.
   The path for dirmngr is specified by the compiled-in definition
   DIRMNGR_USER, normally passed as a compiler argument:
   
     `-D DIRMNGR_USER=DEFINITION'
     
   The UID and GID are the uid and gid for user DIRMNGR_USER.
   DIRMNGR_USER is normally defined through a compiler argument
   also.
*/


#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <pwd.h>
#include <syslog.h>

#define MAX_ARGS 40
#ifndef         TRUE
#define         TRUE                            1
#endif                          /* TRUE */

#ifndef         FALSE
#define         FALSE                           0
#endif                          /* FALSE */


void error_sys(char *str)

{
    /* Output error message to syslog */
    char msg[1024];
    snprintf(msg, sizeof(msg), "runDirmngr : %s : %s", str, strerror(errno));
    syslog(LOG_ALERT, msg);

}


int obtainUIDandGID(const char *name, uid_t *pw_uid, gid_t *pw_gid)
{
    /* Obtain UID and GID from passwd entry identified by name */
    struct passwd *pw_entry;
    char msg[100];

    if ((pw_entry = getpwnam(name)) == NULL)
    {
        snprintf(msg, sizeof(msg), "failed to get password entry for %s", name);
        error_sys(msg);
        return FALSE;
    }
    else
    {
        *pw_uid = pw_entry->pw_uid;
        *pw_gid = pw_entry->pw_gid;
        return TRUE;

    }
}




int main (int argc, char **argv )

{

    pid_t pid;
    uid_t UID;
    gid_t GID;
    pid_t pidwait;
    int waitstat;

    /* Sanity check */
    if (argc > MAX_ARGS)
    {
        error_sys("arg buffer too small");
        exit(-1);
    }
/*
    if (getpid() != 0)
    {
        error_sys("must be called by root");
        exit(-1);
    }
*/

    /* fork child that will become dirmngr */
    if ((pid = fork()) < 0)

        error_sys("fork error");

    else

    {

        if (pid == 0)

        {

            /* We're the child */

            if (!obtainUIDandGID(DIRMNGR_USER, &UID, &GID))
                exit(-1);

            /* Drop privileges immediately */
            if (setgid(GID) < 0)
            {
                /* It is VERY important to check return
                   value and not continue if setgid fails
                */
                error_sys ("setgid failed");
                exit (-1);
            }

            if (setuid(UID) < 0)
            {
                /* It is VERY important to check return
                   value and not continue if setuid fails
                */
                error_sys ("setuid failed");
                exit (-1);
            }

            /* Build calling argv */
            char *args[MAX_ARGS];
            unsigned int i;
            args[0] = DIRMNGR_PATH;
            for (i=1;i<argc;i++)
            {
                args[i] = argv[i];
            }
            args[i++] = NULL;

            /* Finally transform self into dirmngr */
            if (execvp(DIRMNGR_PATH, args) < 0)
                error_sys("execve error");
            else
                ; /* avoid if-then ambiguity */
        }

        else

        {
            /* We're the parent
               Wait for child to terminate 
            */
            pidwait = waitpid(pid, &waitstat, 0);
            switch (pidwait) {
            case 0: exit(0);
            case -1:
                perror(strerror(errno));
                exit(-1);
            default:
                if (WIFEXITED(waitstat)) {
                    exit(WEXITSTATUS(waitstat));
                }
                else
                {
                    exit(-1);
                }
            }

        }

    }

}
