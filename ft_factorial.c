/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_factorial.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/12 15:39:40 by nivergne          #+#    #+#             */
/*   Updated: 2018/11/13 11:17:51 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_factorial(int nb)
{
	int i;
	int result;

	i = 1;
	result = 1;
	if (nb < 0 || nb > 12)
		return (0);
	if (nb == 0)
		return (1);
	while (i <= nb)
	{
		result = result * i;
		i++;
	}
	return (result);
}

/*
** DESCRIPTION
** Return the factorial of the parameter
*/
