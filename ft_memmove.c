/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/30 23:45:16 by nivergne          #+#    #+#             */
/*   Updated: 2018/11/08 17:43:35 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dst, const void *src, size_t len)
{
	char		*dst_cpy;
	const char	*src_cpy;

	dst_cpy = (char *)dst;
	src_cpy = (const char *)src;
	if (src >= dst)
		dst = ft_memcpy(dst, src, len);
	else
	{
		dst_cpy += len;
		src_cpy += len;
		while (len)
		{
			dst_cpy--;
			src_cpy--;
			len--;
			*dst_cpy = *src_cpy;
		}
	}
	return (dst);
}

/*
**DESCRIPTION
** The memmove() function copies len bytes from string src to string dst.
** The two strings may overlap;
** the copy is always done in a non-destructive manner.
**
** RETURN VALUES
** The memmove() function returns the original value of dst.
**
** Working but moulitest said malloc forbidden, WTF??
**
** void	*ft_memmove(void *dst, const void *src, size_t len)
** {
** void	*tmp;
**
** tmp = ft_memalloc(len);
** if (!tmp)
**	return (NULL);
** tmp = ft_memcpy(tmp, src, len);
**	dst = ft_memcpy(dst, tmp, len);
**	free(tmp);
**	return (dst);
** }
*/
