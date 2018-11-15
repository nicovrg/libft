/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/30 19:22:42 by nivergne          #+#    #+#             */
/*   Updated: 2018/11/13 15:53:16 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
	size_t			i;
	unsigned char	*dst_cpy;
	unsigned char	*src_cpy;

	i = 0;
	dst_cpy = (unsigned char *)dst;
	src_cpy = (unsigned char *)src;
	while (i < n)
	{
		dst_cpy[i] = src_cpy[i];
		i++;
	}
	return (dst);
}
/*
** DESCRIPTION
** Memcpy function copies n bytes from memory area src to memory area dst.
** If dst and src overlap, behavior is undefined.
** Applications in which dst and src might overlap should use memmove instead.
**
** RETURN VALUES
** The memcpy() function returns the original value of dst.
*/
