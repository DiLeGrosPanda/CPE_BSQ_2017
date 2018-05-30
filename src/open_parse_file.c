/*
** EPITECH PROJECT, 2017
** open_parse_file.c
** File description:
** ...
*/

#include "my.h"

void check_valid_map(char *buffer, int i)
{
	int j = get_size_line(buffer, 0);

	buffer += j;
	for (j += 1; buffer[j] && j < i; j += 1)
		if (buffer[j] != '.' && buffer[j] != 'o' && buffer[j] != '\n')
			exit(84);
}

void check_valid_nbr(char *buff, int lines_nbr)
{
	int i = 0;
	int line_nbr = 0;

	for (; buff[i]; i += 1)
		if (buff[i] == '\n')
			line_nbr += 1;
	if (lines_nbr <= 0 || lines_nbr + 1 != line_nbr)
		exit(84);
}

void check_valid_input(char *buff, int *lines_nbr)
{
	check_valid_nbr(buff, *lines_nbr);
	check_valid_map(buff, *lines_nbr);
}

char **split_into_lines(char *buff, int *nbr_lig)
{
	int k = get_size_line(buff, 0) + 6;
	char **str = malloc(sizeof(char) * k * (*nbr_lig));
	int i = 0;
	int iter;

	for (; i < *nbr_lig; i++) {
		str[i] = malloc(sizeof(char) * k);
		str[i][2] = '\0';
		for (iter = 0; *buff != '\n'; buff += 1, iter += 1)
			str[i][iter] = *buff;
		str[i][iter] = *buff;
		iter += 1;
		buff += 1;
		str[i][iter] = '\0';
	}
	return (str);
}