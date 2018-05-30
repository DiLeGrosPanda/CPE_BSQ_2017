/*
** EPITECH PROJECT, 2017
** start_prog.c
** File description:
** ...
*/

#include "my.h"

void display_str(char *str[], int lines_nbr)
{
	char *new = malloc(sizeof(char) * my_strlen(str[0]) * lines_nbr + 1);
	int j = 0;
	int k = 0;

	new[my_strlen(str[0]) * lines_nbr] = '\0';
	for (int i = 0; j < lines_nbr; i += 1, k += 1) {
		new[k] = str[j][i];
		if (str[j][i] == '\n') {
			free(str[j]);
			j += 1;
			i = -1;
		}
	}
	my_putstr(new);
	free(new);
}

char **get_file(char *path, int *line_nbr)
{
	struct stat sb;
	int fd;
	char *buff;
	char **str;

	if (stat(path, &sb) == -1) {
		my_putstr("Invalid path\n");
		exit (84);
	}
	buff = malloc(sizeof(char) * ((int) sb.st_size + 1));
	buff[sb.st_size ] = '\0';
	if ((fd = open(path, O_RDONLY)) == -1)
		exit (84);
	read(fd, buff, (int) sb.st_size);
	close(fd);
	*line_nbr = my_getnbr(buff);
	check_valid_input(buff, line_nbr);
	str = split_into_lines(buff + get_size_line(buff, 0), line_nbr);
	free(buff);
	return (str);
}

void check_str(char *str[], int col_n, int _bool)
{
	int i = 0;
	int j = 0;

	if (_bool)
		str[0][0] = 'o';
	while (j < col_n) {
		if (str[j][i] == '.' || str[j][i] == 'x') {
			str[j][i] = 'x';
			return;
		} else if (str[j][i] == '\n') {
			j += 1;
			i = -1;
		}
		i += 1;
	}
	if (_bool)
		str[0][0] = 'o';
}