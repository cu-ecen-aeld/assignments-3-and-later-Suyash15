#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>

int main(int argc, char* argv[]){

        openlog(NULL,0,LOG_USER);
	if (argc!=3){
		syslog(LOG_ERR,"Not enough arguments");
		return 1;
	}

	char* filepath=argv[1];
	char* filestring=argv[2];
        
	syslog(LOG_DEBUG,"Writing %s to %s",filestring, filepath); 

	FILE *f = fopen(filepath, "w");
	fputs(filestring, f);
	fclose(f);
	closelog();
	return 0;
}

