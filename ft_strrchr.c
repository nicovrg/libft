/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/03 17:52:49 by nivergne          #+#    #+#             */
/*   Updated: 2018/11/07 17:34:56 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	size_t		s_len;

	s_len = ft_strlen((char *)s);
	while (s_len && s[s_len] != (char)c)
		s_len--;
	if (s[s_len] == (char)c)
		return ((char *)&s[s_len]);
	return (NULL);
}
