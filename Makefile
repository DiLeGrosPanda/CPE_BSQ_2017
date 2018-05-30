##
## EPITECH PROJECT, 2017
## Makefile
## File description:
## Makefile

NAME		=	bsq

CC		=	gcc

CFLAGS		+=	-I includes -Wall -Wextra

LDFLAGS 	+=

SRCS_PREFIX	=	src/

FILES		=	main.c			\
			get_bsq.c		\
			lib.c			\
			open_parse_file.c	\
			start_prog.c

SRCS		=	$(addprefix $(SRCS_PREFIX), $(FILES))

OBJ		=	$(SRCS:.c=.o)

RED		=	\033[0;31m
GREEN		=	\033[0;32m
NC		=	\033[0m
GREY		=	\033[90m
BLUE		=	\033[0;94m
PURPLE		=	\033[0;95m
BG_COLOR	=	\033[46m####\033[m
IRED		=	\033[0;91m

.PHONY: fclean clean all re

all:	$(NAME)

$(NAME):	$(OBJ)
	@echo -e '${NC}${BG_COLOR}Libs: $(LDFLAGS)${NC}'
	@echo -e '${BG_COLOR}Flags: $(CFLAGS)${NC}'
	@$(CC) $(OBJ) -o $(NAME) $(LDFLAGS) 2>>errors_build.txt\
	&& echo -e '${BLUE}Create${NC}: ${GREY}./$(NAME)${NC}'\
	|| echo -e '${RED}[ FAILED ]${NC}: __Create__${GREY} ./$(NAME)${NC}'

%.o:		%.c
	@-$(CC) -o $@ -c $< $(CFLAGS) 2>>errors_build.txt\
		&& echo -e '${GREEN} [ OK ]${NC} Build $<'\
		|| echo -e '${RED}[ FAILED ]${NC} __Build__ $<'\
		&& echo -ne '${PURPLE}' && grep  $< errors_build.txt |\
		grep warning |cut -d':' -f2- |cut -d'[' -f-1\
		&& echo -ne '${IRED}' && grep  $< errors_build.txt |\
		grep error |cut -d':' -f2-\
		||:


clean:
	@rm -rf $(OBJ)
	@rm -rf $(OBJ_T)
	@rm -rf vgcore.*
	@rm -f gmon.out
	@rm -rf a.out
	@find . -name *.gc* -delete
	@echo -e '${BLUE}Clean${NC} : OK'

fclean:		clean
	@rm -rf errors_build.txt 2>/dev/null
	@rm -rf $(NAME)
	@echo -e '${BLUE}Fclean${NC}: ./$(NAME) removed'

re:	fclean all

test:	re
	$(eval CFLAGS += -D DEBUG)
	cd tests && ./unitest.sh
