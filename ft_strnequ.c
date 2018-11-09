/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnequ.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/10 17:14:26 by nivergne          #+#    #+#             */
/*   Updated: 2018/11/07 17:35:05 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_strnequ(char const *s1, char const *s2, size_t n)
{
	size_t		i;

	if (s1 != NULL && s2 != NULL)
	{
		i = 0;
		while (i < n && s1[i] && s2[i] && s1[i] == s2[i])
			i++;
		if ((s1[i] == '\0' && s2[i] == '\0') || i == n)
			return (1);
		return (0);
	}
	return (0);
}
