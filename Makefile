# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/09 16:29:08 by nivergne          #+#    #+#              #
#    Updated: 2019/02/18 21:57:32 by nivergne         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS =	ft_atoi.c\
		ft_isprint.c\
		ft_lstmap.c\
		ft_memcpy.c\
		ft_putendl.c\
		ft_strcat.c\
		ft_strdup.c\
		ft_strlen.c\
		ft_strnequ.c\
		ft_strsub.c\
		ft_bzero.c\
		ft_itoa.c\
		ft_lstnew.c\
		ft_memdel.c\
		ft_putendl_fd.c\
		ft_strchr.c\
		ft_strequ.c\
		ft_strmap.c\
		ft_strnew.c\
		ft_strtrim.c\
		ft_isalnum.c\
		ft_lstadd.c\
		ft_memalloc.c\
		ft_memmove.c\
		ft_putnbr.c\
		ft_sqrt.c\
		ft_strclr.c\
		ft_striter.c\
		ft_strmapi.c\
		ft_strrchr.c\
		ft_swap.c\
		ft_isalpha.c\
		ft_lstdel.c\
		ft_memccpy.c\
		ft_memset.c\
		ft_putnbr_fd.c\
		ft_strcmp.c\
		ft_striteri.c\
		ft_strncat.c\
		ft_strrev.c\
		ft_tolower.c\
		ft_isascii.c\
		ft_lstdelone.c\
		ft_memchr.c\
		ft_putchar.c\
		ft_putstr.c\
		ft_strcpy.c\
		ft_strjoin.c\
		ft_strncmp.c\
		ft_strnstr.c\
		ft_strsplit.c\
		ft_toupper.c\
		ft_isdigit.c\
		ft_lstiter.c\
		ft_memcmp.c\
		ft_putchar_fd.c\
		ft_putstr_fd.c\
		ft_strdel.c\
		ft_strlcat.c\
		ft_strncpy.c\
		ft_strstr.c\
        ft_factorial.c\
        ft_is_prime.c\
        ft_find_next_prime.c\
		get_next_line.c

GRN = \033[0;32m
BLU = \033[1;34m
RED = \x1b[31m
PUR = \x1b[35m
CYAN = \x1b[36m
IGREY = \x1b[40m
UNDER = \x1b[4m
REV = \x1b[7m
BOLD = \x1b[1m
END = \x1b[0m

CC = gcc
CFLAGS = -Wall -Werror -Wextra
HEADER = -I.
OBJECTS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJECTS)
	@echo "$(GRN)$(BOLD)libft [OK]$(END)"
	@ar rcs $(NAME) $(OBJECTS)

%.o: %.c
	@echo "pre-compile $(BLU)$(basename $@)$(END)"
	@printf "\033[A"
	@$(CC) -c $(CFLAGS) $< -o $@
	@printf "\33[2K"
	
clean:
	@echo "$(RED)delete obj [OK]$(END)"
	@rm -f $(OBJECTS)

fclean: clean
	@echo "$(RED)delete binary [OK]$(END)"
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean

#test: coucou
#	echo $< # coucou = c'est la dependance
#	echo $@ # test = c'est la regle
#	%.o: %.c = regle implicite, crée tous les .o a partir des .c

