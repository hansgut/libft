/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jcielesz <jcielesz@student.42warsaw.pl>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/04 23:13:12 by jcielesz          #+#    #+#             */
/*   Updated: 2024/03/05 03:49:36 by jcielesz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	char	*res;
	size_t	i;
	size_t	j;

	res = (char *)malloc(len + 1);
	if (!s || !res)
		return (0);
	i = start;
	j = 0;
	while (i < ft_strlen(s) && j < len)
		res[j++] = s[i++];
	res[j] = 0;
	return (res);
}
