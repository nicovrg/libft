/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/02 19:18:09 by nivergne          #+#    #+#             */
/*   Updated: 2018/11/07 17:40:05 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t dst_size)
{
	size_t	i;
	size_t	dst_len;
	size_t	store;

	i = 0;
	dst_len = ft_strlen(dst);
	if (dst_size + ft_strlen(src) <= ft_strlen(src) + dst_len)
		return (ft_strlen(src) + dst_size);
	store = dst_len + ft_strlen(src);
	dst_size = dst_size - dst_len - 1;
	while (src[i] != '\0' && i < dst_size)
	{
		dst[i + dst_len] = src[i];
		i++;
	}
	dst[i + dst_len] = '\0';
	return (store);
}
