# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/20 12:42:57 by nivergne          #+#    #+#              #
#    Updated: 2019/09/20 02:08:06 by nivergne         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

include mk/libft.mk
include mk/colors.mk

PATH_INC := include
PATH_LIB := libft
PATH_OBJ := obj

SRC_DIR_LIBFT := $(shell find $(PATH_LIB) -type d -depth 1)
OBJ_DIR_LIBFT := $(subst $(PATH_LIB),$(PATH_OBJ),$(SRC_DIR_LIBFT))

SRC_LIBFT := $(addprefix $(PATH_LIB)/, $(SRC_LIBFT))
OBJ_LIBFT := $(addprefix $(PATH_OBJ)/, $(OBJ_LIBFT))

# SRC_DIR_LIBFT := $(shell find $(PATH_LIB) -type d -depth 1)
# OBJ_DIR_LIBFT :=

CC =						gcc
CFLAGS =					-Wall -Wextra -Werror
CPPFLAGS =					-MMD -MP -I $(PATH_INC)
DEPS =						$(subst .o,.d,$(OBJ))

all: $(NAME)

$(NAME): $(OBJ_LIBFT)
	@ar rcs $(NAME) $(OBJ_LIBFT)
	@echo "$(BOLD)$(CYAN)$(BOLD)LIBFT			$(BLUE)$(BOLD)compile		$(GREEN)[OK]$(END)"

$(PATH_OBJ)/%.o: $(PATH_LIB)/%.c
	@mkdir -p $(OBJ_DIR_LIBFT)
	@echo "$(BOLD)$(CYAN)pre-compile libft	$(BLUE)$(patsubst obj/%, %, $(basename $@))$(END)"
	@printf "\033[A"
	@$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -c $<
	@printf "\33[2K"

debug:
	@echo "SRC_LIBFT"
	@echo "$(SRC_LIBFT)"
	@echo
	@echo
	@echo
	@echo "OBJ_LIBFT"
	@echo "$(OBJ_LIBFT)"
	@echo
	@echo
	@echo 
	@echo "OBJ_DIR_LIBFT"
	@echo "$(OBJ_DIR_LIBFT)"
	
#@echo "OBJ_MATH"
#@echo "$(OBJ_MATH)"
#@echo
#@echo "OBJ_LIBFT"
#@echo "$(OBJ_LIBFT)"
#@echo
#@echo "PATH_OBJ"
#@echo "$(PATH_OBJ)"
	
clean:
	@rm -rf $(OBJ_LIBFT) $(OBJ_PRINTF)
	@echo "$(BOLD)$(CYAN)LIBFT$(BLUE)			obj		$(END)$(RED)[delete]$(END)"
	@echo "$(BOLD)$(CYAN)PRINTF$(BLUE)			obj		$(END)$(RED)[delete]$(END)"

fclean: clean
	@rm -rf ./obj $(NAME)
	@echo "$(BOLD)$(CYAN)LIBFT$(BLUE)			arc		$(END)$(RED)[delete]$(END)"
	
re: fclean all

.PHONY: all clean fclean re norme

-include $(DEPS)

#TODO: order only dependency (| makelib)
