/*
** EPITECH PROJECT, 2017
** main.c
** File description:
** ...
*/

#include "my.h"

static int usage(void)
{
	my_putstr("Usage: ./bsq map_path\n");
	return (84);
}

int main(int ac, char *av[])
{
	int ligne_nbr;
	char **str;
	int _bool;
	int values[3] = {0, 0, 0};

	if (ac != 2)
		return (usage());
	str = get_file(av[1], &ligne_nbr);
	_bool = str[0][0] == 'o' ? 1 : 0;
	get_bsq(str, ligne_nbr, values);
	load_x(str, values);
	if (values[0] == 0 && values[1] == 0 && values[2] == 0)
		check_str(str, ligne_nbr, _bool);
	display_str(str, ligne_nbr);
	free(str);
	return (0);
}