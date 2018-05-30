/*
** EPITECH PROJECT, 2017
** get_bsq.c
** File description:
** ..
*/

#include "my.h"

void load_x(char *str[], int values[3])
{
	int y = 0;

	for (; y <= values[0]; y += 1)
		for (int x = 0; x <= values[0]; x += 1)
			str[values[2] + y][values[1] + x] = 'x';
}

static int check_valid_square(char *str[], int x, int y, int side)
{
	int i;

	for (i = 0; i <= side; i += 1) {
		if (str[y + side][x + i] == 'o')
			return (1);
	}
	for (i = 0; i <= side; i += 1) {
		if (str[y + i][x + side] == 'o')
			return (1);
	}
	return (0);
}

/* Get the size of actual's square giving coordonates. If the square is bigger:
** update. */
static void get_size_square(char *str[], int x, int y, int values[3], int lines_nbr)
{
	int side = 0;

	if (str[y][x] == 'o')
		return;
	while (y + side < lines_nbr && str[y + side][x + side] != '\n') {
		if (check_valid_square(str, x, y, side)) {
			return;
		} else if (side > values[0]) {
			values[0] = side;
			values[1] = x;
			values[2] = y;
		}
		side += 1;
	}
}

/* For each point set the biggest square
** find by calling get_size_square.
** We test evry lines, then colume, then add another line at bot + right, etc
*/
void get_bsq(char *str[], int line_nbr, int values[3])
{
	int x = 0;
	int y = 0;

	for (; y < line_nbr; y += 1)
		for (x = 0; str[y][x] != '\n'; x += 1)
			get_size_square(str, x, y, values, line_nbr);
}