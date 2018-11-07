/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/03 16:00:12 by nivergne          #+#    #+#             */
/*   Updated: 2018/11/07 19:33:03 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *s, int c)
{
	size_t		i;
	char		chr;
	char		*s_cpy;

	i = 0;
	chr = (char)c;
	s_cpy = (char *)s;
	while (s[i])
	{
		if (s[i] == chr)
			return (s_cpy + i);
		i++;
	}
	if (s[i] == '\0' && chr == '\0')
		return (s_cpy + i);
	else
		return (NULL);
}
