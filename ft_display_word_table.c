/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_display_word_table.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nivergne <nivergne@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/12 16:53:07 by nivergne          #+#    #+#             */
/*   Updated: 2019/02/13 17:49:53 by nivergne         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

static void	ft_display_words_tables(char **tab)
{
	int i;

	i = 0;
	while (tab[i] != '\0')
	{
		ft_putstr(tab[i]);
		ft_putchar('\n');
		i++;
	}
}

/*
** DESCRIPTION
** Display each word of ft_split return followed by a \n
*/
