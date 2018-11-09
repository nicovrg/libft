/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsub.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/11 15:04:56 by nivergne          #+#    #+#             */
/*   Updated: 2018/11/09 11:50:13 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strsub(char const *s, unsigned int start, size_t len)
{
	size_t	index;
	char	*new_str;

	if (s != NULL)
	{
		index = 0;
		new_str = (char *)malloc(sizeof(char) * len + 1);
		if (!new_str)
			return (NULL);
		while (len > 0 && s[index])
		{
			new_str[index] = s[start];
			index++;
			start++;
			len--;
		}
		new_str[index] = '\0';
		return (new_str);
	}
	return (NULL);
}
