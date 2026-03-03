#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define STR "#include <stdio.h>%1$c#include <string.h>%1$c#include <stdlib.h>%1$c%1$c#define STR %2$c%3$s%2$c%1$c%1$cint main()%1$c{%1$c	int i = %4$d;%1$c	if (i < 0)%1$c		return (0);%1$c	char f_name[100];%1$c	sprintf(f_name, %2$cSully_%%d.c%2$c, i);%1$c	FILE *f = fopen(f_name, %2$cw%2$c);%1$c	if (!f)%1$c		return (1);%1$c	fprintf(f, STR, 10, 34, STR, i - 1);%1$c	fclose(f);%1$c%1$c	char f_exec[100];%1$c	char cmd_compil[100];%1$c	char cmd_run[100];%1$c	sprintf(f_exec, %2$cSully_%%d%2$c, i);%1$c	sprintf(cmd_compil, %2$cclang -o %%s %%s%2$c, f_exec, f_name);%1$c	sprintf(cmd_run, %2$c./%%s%2$c, f_exec);%1$c	system(cmd_compil);%1$c	system(cmd_run);%1$c	return (0);%1$c}"

int main()
{
	int i = 5;
	if (i < 0)
		return (0);
	char f_name[100];
	sprintf(f_name, "Sully_%d.c", i);
	FILE *f = fopen(f_name, "w");
	if (!f)
		return (1);
	fprintf(f, STR, 10, 34, STR, i - 1);
	fclose(f);

	char f_exec[100];
	char cmd_compil[100];
	char cmd_run[100];
	sprintf(f_exec, "Sully_%d", i);
	sprintf(cmd_compil, "clang -o %s %s", f_exec, f_name);
	sprintf(cmd_run, "./%s", f_exec);
	system(cmd_compil);
	system(cmd_run);
	return (0);
}