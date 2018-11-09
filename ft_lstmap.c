/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/26 15:26:46 by nivergne          #+#    #+#             */
/*   Updated: 2018/11/07 19:48:18 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, t_list *(*f)(t_list *elem))
{
	t_list	*new_lst;

	if (lst && f)
	{
		new_lst = f(lst);
		new_lst->next = ft_lstmap(lst->next, f);
		return (new_lst);
	}
	return (NULL);
}

/*
** Au dessus version hervé, bien comprise
** En dessous ma version, pas compris pourquoi ça fonctionne pas
**
** t_list 	*ft_lstmap(t_list *lst, t_list * (*f)(t_list *elem))
** {
**	t_list	*new_lst;
**
**	new_lst = NULL;
**	if (lst != NULL && f != NULL)
**	{
**		while (lst)
**		{
**			f(lst);
**			lst = lst->next;
**		}
**	}
**	else
**		new_lst = NULL;
**	return (new_lst);
** }
*/
