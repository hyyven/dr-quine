#include <stdio.h>
#define STR "#include <stdio.h>%1$c#define STR %2$c%3$s%2$c%1$c#define RETURN return (0);%1$c#define FT_MAIN() int main() {FILE *f = fopen(%2$cGrace_kid.c%2$c, %2$cw%2$c); if (!f) {return (1);} fprintf(f, STR, 10, 34, STR); fclose(f); RETURN}%1$c%1$c// comment%1$c%1$cFT_MAIN()"
#define RETURN return (0);
#define FT_MAIN() int main() {FILE *f = fopen("Grace_kid.c", "w"); if (!f) {return (1);} fprintf(f, STR, 10, 34, STR); fclose(f); RETURN}

// comment

FT_MAIN()