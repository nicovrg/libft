# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nicolasv <nicolasv@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/20 12:42:57 by nivergne          #+#    #+#              #
#    Updated: 2019/09/17 16:31:00 by nicolasv         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

include mk/libft.mk
include mk/ft_printf.mk
include mk/colors.mk

#INC_PATH := include/
PATH_LIB := libft/
PATH_OBJ := obj/
PATH_OBJ_MATH := obj/math
PATH_OBJ_STRING := obj/string
PATH_OBJ_MEMORY := obj/memory
PATH_OBJ_LIST := obj/list
PATH_OBJ_WRITE := obj/write
PATH_OBJ_READ := obj/read

#INC_LIB = libft.h

#INC_LIB : = $(addprefix include/, $(INC_LIB))

CC =						gcc
CFLAGS =					-Wall -Wextra -Werror
INCLUDE =					-I./include/
PATH_LIBFT =				./libft

LIBFT =						$(addprefix $(PATH_OBJ),$(OBJ_LIBFT))
LIBFT =						$(addprefix $(PATH_OBJ),$(OBJ_LIBFT))


FULL_LIBFT := $(LIBFT)
FULL_LIBFT += $(PRINTF)

#ifeq 
#OBJ_LIBFT := $(dir $(OBJ_LIBFT))
#SRC_LIBFT := $(dir $(SRC_LIBFT))

SRC_LIBFT = libft/math/\
			libft/string/\
			libft/memory/\
			libft/list/\
			libft/write/\
			libft/read/

OBJ_LIBFT = libft/obj/math/\
			libft/obj/string/\
			libft/obj/memory/\
			libft/obj/list/\
			libft/obj/write/\
			libft/obj/read/

all: $(NAME)

$(NAME): $(FULL_LIBFT) 
	@ar rc $(NAME) $(FULL_LIBFT)
	@ranlib $(NAME)
	@echo "$(BOLD)$(CYAN)$(BOLD)LIBFT			$(BLUE)$(BOLD)compile		$(GREEN)[OK]$(END)"
	@echo "$(BOLD)$(CYAN)$(BOLD)PRINTF			$(BLUE)$(BOLD)compile		$(GREEN)[OK]$(END)"

$(OBJ_LIBFT)/%.o: $(SRC_LIBFT)/%.c
	@mkdir $(OBJ_PATH) 2> /dev/null || true
	@mkdir $(OBJ_MATH) 2> /dev/null || true
	@mkdir $(OBJ_STRING) 2> /dev/null || true
	@mkdir $(OBJ_MEMORY) 2> /dev/null || true
	@mkdir $(OBJ_LIST) 2> /dev/null || true
	@mkdir $(OBJ_READ) 2> /dev/null || true
	@mkdir $(OBJ_WRITE) 2> /dev/null || true
	@echo "$(BOLD)$(CYAN)pre-compile libft	$(BLUE)$(patsubst obj/%, %, $(basename $@))$(END)"
	@printf "\033[A"
	@$(CC) $(CFLAGS) -I/libft $(INCLUDE) -o $@ -c $<
	@printf "\33[2K"

$(OBJ_PRINTF)/%.o: $(PATH_PRINTF)/%.c
	@mkdir $(PATH_OBJ) 2> /dev/null || true
	@echo "$(BOLD)$(CYAN)pre-compile printf	$(BLUE)$(patsubst obj/%, %, $(basename $@))$(END)"
	@printf "\033[A"
	@$(CC) $(CFLAGS) -Ofast $(INCLUDE) -o $@ -c $<
	@printf "\33[2K"


debug:
	@echo "OBJ_LIBFT"
	@echo "$(OBJ_LIBFT)"
	@echo
	@echo "OBJ_MATH"
	@echo "$(OBJ_MATH)"
	@echo
	@echo "SRC_LIBFT"
	@echo "$(SRC_LIBFT)"
	@echo
	@echo "OBJ_LIBFT"
	@echo "$(OBJ_LIBFT)"
	@echo
	@echo "PATH_OBJ"
	@echo "$(PATH_OBJ)"
	
clean:
	@rm -rf $(OBJ_LIBFT) $(OBJ_PRINTF)
	@echo "$(BOLD)$(CYAN)LIBFT$(BLUE)			obj		$(END)$(RED)[delete]$(END)"
	@echo "$(BOLD)$(CYAN)PRINTF$(BLUE)			obj		$(END)$(RED)[delete]$(END)"

fclean: clean
	@rm -rf ./obj $(NAME)
	@echo "$(BOLD)$(CYAN)LIBFT$(BLUE)			arc		$(END)$(RED)[delete]$(END)"
	
re: fclean all

.PHONY: all clean fclean re norme
