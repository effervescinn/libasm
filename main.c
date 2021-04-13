#include <stdio.h>

int main()
{
    char *line = "123456789";
    extern int ft_strlen(char *line);
    printf("%d\n", ft_strlen(line));
    return 0;
}
