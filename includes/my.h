
/*
** EPITECH PROJECT, 2017
** my.h
** File description:
** ...
*/

#ifndef MY_H
	#define MY_H
	#include <unistd.h>
	#include <sys/types.h>
	#include <sys/stat.h>
	#include <fcntl.h>
	#include <stdlib.h>
	int get_nbr(char const *str, int nbr, int signe, int start);
	int get_size_line(char *str, int line_nbr);
	int my_getnbr(char const *str);
	int my_strlen(char const *str);
	void my_putstr(char *str);
	char **get_file(char *path, int *lines_nbr);
	void get_bsq(char *str[], int line_nbr, int values[5]);
	void load_x(char *str[], int values[3]);
	char **split_into_lines(char *buff, int *nbr_lig);
	void check_valid_input(char *buff, int *lines_nbr);
	void check_line_length(char *str[], int *line_nbr);
	void check_str(char *str[], int col_nbr, int _bool);
	void display_str(char *str[], int lines_nbr);
#endif