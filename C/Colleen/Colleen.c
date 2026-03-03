#include <stdio.h>

// outside comment

char	*colleen()
{
	return ("#include <stdio.h>%1$c%1$c// outside comment%1$c%1$cchar	*colleen()%1$c{%1$c	return (%2$c%3$s%2$c);%1$c}%1$c%1$cint	main()%1$c{%1$c	// inside comment%1$c	char	*str;%1$c%1$c	str = colleen();%1$c	printf(str, 10, 34, str);%1$c	return (0);%1$c}");
}

int	main()
{
	// inside comment
	char	*str;

	str = colleen();
	printf(str, 10, 34, str);
	return (0);
}