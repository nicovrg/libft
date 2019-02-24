/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_one_line.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/02/24 16:08:08 by nivergne          #+#    #+#             */
/*   Updated: 2019/02/24 16:20:48 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	find_newline(char *store)
{
	int	i;

	i = 0;
	while (store[i] && store[i] != '\n')
		i++;
	if (store[i] == '\n')
		return (i);
	else
		return (-1);
}

static char	*join_free(char *store, char *buff)
{
	int		i;
	int		j;
	char	*join;

	i = 0;
	j = 0;
	if (store)
		i = ft_strlen(store);
	if (buff)
		j = ft_strlen(buff);
	if (!(join = (char *)malloc(sizeof(char) * (i + j + 1))))
		return (NULL);
	ft_memcpy(join, store, i);
	ft_memcpy(join + i, buff, j);
	join[i + j] = '\0';
	free(store);
	return (join);
}

static int	assign_line(char **store, char **buff, char **line)
{
	int		index;

	*store = join_free(*store, *buff);
	index = find_newline(*store);
	if (index != -1)
	{
		*line = ft_strsub(*store, 0, index);
		free(store);
		return (1);
	}
	return (0);
}

int			get_one_line(int fd, char **line)
{
	int				r_read;
	int				r_assign_line;
	char			*buff;
	char            *store;

	buff = ft_strnew(32);
	if (!line || (r_read = read(fd, buff, 0)) < 0)
		return (-1);
	while ((r_read = read(fd, buff, 32)) > 0)
	{
		r_assign_line = assign_line(&store, &buff, line);
		ft_strdel(&buff);
		if (r_assign_line == 1)
			return (1);
		buff = ft_strnew(32);
	}
	return (0);
}
