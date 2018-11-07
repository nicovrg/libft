/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdel.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/20 15:02:06 by nivergne          #+#    #+#             */
/*   Updated: 2018/11/07 14:48:22 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstdel(t_list **alst, void (*del)(void *, size_t))
{
	if (alst != NULL)
	{
		t_list	*lst_del;
		t_list	*lst_next_del;

		lst_del = *alst;
		while (lst_del)
		{
			lst_next_del = lst_del->next;
			del(lst_del->content, lst_del->content_size);
			free(lst_del);
			lst_del = lst_next_del;
		}
		*alst = NULL;
	}
}
