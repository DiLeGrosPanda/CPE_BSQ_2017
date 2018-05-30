/*
** EPITECH PROJECT, 2017
** lib.c
** File description:
** ...
*/

#include "my.h"

int my_strlen(char const *str)
{
	char const *keep = str;

	if (!str || !*str)
		return (0);
	while (*++str);
	return (str - keep);
}

int get_size_line(char *str, int line_nbr)
{
	int i = 0;

	for (; str[i] != '\n'; i += 1);
	i  = (i) * line_nbr;
	str = str + i;
	for (i = 0; str[i] && str[i] != '\n'; i += 1);
	return (i + 1);
}

int get_nb_next(char const *str, int nb, int s, int start)
{
	if ((*str == '\0') || ((*str > 57 || *str < 48) && start == 0))
		return (nb * s);
	else if (*str >= '0' && *str <= '9')
		return (get_nbr(str + 1, (nb * 10 + *str - 48), s, 0));
	else
		return (get_nbr(str ++, nb, s, start));
}

int get_nbr(char const *str, int nb, int s, int start)
{
	if (!*str || *str == '\n') {
		return (nb * s);
	} else if (*str == '-' && start == 1 && (*(str + 1) > 48 || *(str + 1)
		<= 57 || *(str + 1) == '-')) {
		return (get_nbr(str + 1, nb, -s, 1));
	} else {
		return (get_nb_next(str, nb, s, start));
	}
}

int my_getnbr(char const *str)
{
	return ((get_nbr(str, 0, 1, 1)));
}

void my_putstr(char *str)
{
	write(1, str, my_strlen(str));
}