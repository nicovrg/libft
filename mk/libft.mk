# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    libft.mk                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nicolasv <nicolasv@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/17 04:34:13 by nicolasv          #+#    #+#              #
#    Updated: 2019/09/17 16:31:14 by nicolasv         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_MATH =					ft_sqrt.c\
							ft_power.c\
							ft_is_prime.c\
							ft_find_next_prime.c\
							ft_factorial.c

SRC_MATH := $(addprefix math/, $(SRC_MATH))
OBJ_MATH := $(addprefix math/, $(addsuffix .o, $(basename $(notdir $(SRC_MATH)))))

SRC_STRING =				ft_atoi.c\
							ft_itoa.c\
							ft_isalnum.c\
							ft_isalpha.c\
							ft_isascii.c\
							ft_isdigit.c\
							ft_isprint.c\
							ft_strncat.c\
							ft_strrchr.c\
							ft_strchr.c\
							ft_strcpy.c\
							ft_strdup.c\
							ft_strequ.c\
							ft_striter.c\
							ft_striteri.c\
							ft_strlen.c\
							ft_strmap.c\
							ft_strmapi.c\
							ft_strcat.c\
							ft_strcmp.c\
							ft_strncpy.c\
							ft_strnequ.c\
							ft_strnstr.c\
							ft_strstr.c\
							ft_strncmp.c\
							ft_strlcat.c\
							ft_strnew.c\
							ft_strdel.c\
							ft_strclr.c\
							ft_strsub.c\
							ft_strjoin.c\
							ft_strtrim.c\
							ft_strsplit.c\
							ft_tolower.c\
							ft_toupper.c

SRC_STRING := $(addprefix string/, $(SRC_STRING))
OBJ_STRING := $(addprefix string/, $(addsuffix .o, $(basename $(notdir $(SRC_STRING)))))

SRC_MEMORY =				ft_bzero.c\
							ft_memset.c\
							ft_memcpy.c\
							ft_memccpy.c\
							ft_memmove.c\
							ft_memchr.c\
							ft_memcmp.c\
							ft_memalloc.c\
							ft_memdel.c
		
SRC_MEMORY := $(addprefix memory/, $(SRC_MEMORY))
OBJ_MEMORY := $(addprefix memory/, $(addsuffix .o, $(basename $(notdir $(SRC_MEMORY)))))

SRC_LIST =					ft_lstnew.c\
							ft_lstdelone.c\
							ft_lstdel.c\
							ft_lstadd.c\
							ft_lstiter.c\
							ft_lstmap.c

SRC_LIST := $(addprefix list/, $(SRC_LIST))
OBJ_LIST := $(addprefix list/, $(addsuffix .o, $(basename $(notdir $(SRC_LIST)))))

SRC_WRITE = 				ft_putchar.c\
							ft_putchar_fd.c\
							ft_putendl.c\
							ft_putendl_fd.c\
							ft_putnbr.c\
							ft_putnbr_fd.c\
							ft_putstr.c\
							ft_putstr_fd.c

SRC_WRITE := $(addprefix write/, $(SRC_WRITE))
OBJ_WRITE := $(addprefix write/, $(addsuffix .o, $(basename $(notdir $(SRC_WRITE)))))

SRC_READ =					get_next_line.c

SRC_READ := $(addprefix read/, $(SRC_READ))
OBJ_READ := $(addprefix read/, $(addsuffix .o, $(basename $(notdir $(SRC_READ)))))

SRC_LIBFT := $(addprefix $(SRC_PATH), $(SRC_MATH))
SRC_LIBFT += $(addprefix $(SRC_PATH), $(SRC_STRING))
SRC_LIBFT += $(addprefix $(SRC_PATH), $(SRC_MEMORY))
SRC_LIBFT += $(addprefix $(SRC_PATH), $(SRC_LIST))
SRC_LIBFT += $(addprefix $(SRC_PATH), $(SRC_WRITE))
SRC_LIBFT += $(addprefix $(SRC_PATH), $(SRC_READ))

OBJ_LIBFT := $(addprefix $(OBJ_PATH), $(OBJ_MATH))
OBJ_LIBFT += $(addprefix $(OBJ_PATH), $(OBJ_STRING))
OBJ_LIBFT += $(addprefix $(OBJ_PATH), $(OBJ_MEMORY))
OBJ_LIBFT += $(addprefix $(OBJ_PATH), $(OBJ_LIST))
OBJ_LIBFT += $(addprefix $(OBJ_PATH), $(OBJ_WRITE))
OBJ_LIBFT += $(addprefix $(OBJ_PATH), $(OBJ_READ))
