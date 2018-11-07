/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/11 19:13:18 by nivergne          #+#    #+#             */
/*   Updated: 2018/11/07 17:27:24 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strtrim(char const *s)
{
	size_t		i;
	size_t		j;
	char		*cpy;
	char		*result;

	i = 0;
	j = 0;
	if (!(cpy = (char *)malloc(sizeof(char) * ft_strlen(s))))
		return (NULL);
	ft_strncpy(cpy, s, ft_strlen(s));
	while ((cpy[i]) && (cpy[i] == ' ' || cpy[i] == '\t' || cpy[i] == '\n'))
		i++;
	if (i == ft_strlen(cpy))
		return ("");
	cpy = ft_strrev(cpy);
	while (cpy[j] && (cpy[j] == ' ' || cpy[j] == '\t' || cpy[j] == '\n'))
		j++;
	j = ft_strlen(cpy) - (i + j);
	cpy = ft_strrev(cpy);
	if (!(result = (char *)malloc(sizeof(char) * (j))))
		return (NULL);
	result = ft_strncpy(result, &cpy[i], j);
	result[j] = '\0';
	return (result);
}
