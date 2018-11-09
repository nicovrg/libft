/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/03 18:30:37 by nivergne          #+#    #+#             */
/*   Updated: 2018/11/08 14:55:19 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(const char *haystack, const char *needle, size_t len)
{
	size_t	i;
	size_t	j;
	char	*h_cpy;
	char	*n_cpy;

	i = 0;
	h_cpy = (char *)haystack;
	n_cpy = (char *)needle;
	if (n_cpy[0] == '\0')
		return (h_cpy);
	while (h_cpy[i] && i + ft_strlen(n_cpy) <= len)
	{
		j = 0;
		while (h_cpy[i + j] && h_cpy[i + j] == n_cpy[j] && j < len)
		{
			if (n_cpy[j + 1] == '\0')
				return (h_cpy + i);
			j++;
		}
		i++;
	}
	return (NULL);
}
