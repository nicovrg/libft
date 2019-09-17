# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_printf.mk                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nicolasv <nicolasv@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/17 00:14:02 by nicolasv          #+#    #+#              #
#    Updated: 2019/09/17 02:57:18 by nicolasv         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

PATH_PRINTF =				./ft_printf

SRC_PRINTF =				ft_printf.c\
							parse.c\
							else.c\
							print_per.c\
							print_b.c\
							print_c.c\
							print_s.c\
							print_p.c\
							print_i.c\
							print_o.c\
							print_u.c\
							print_x.c\
							print_f.c\
							print_ff.c\
							width_csp.c\
							width_dioux.c\
							convert_base.c

OBJ_PRINTF =				$(SRC_PRINTF:.c=.o)

PRINTF =					$(addprefix $(PATH_OBJ),$(OBJ_PRINTF))