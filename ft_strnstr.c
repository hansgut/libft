/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jcielesz <jcielesz@student.42warsaw.pl>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/29 23:56:09 by jcielesz          #+#    #+#             */
/*   Updated: 2024/03/05 03:48:36 by jcielesz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(char const *haystack, char const *needle, size_t n)
{
	size_t	j;

	if (!haystack && !n)
		return (NULL);
	if (!*needle)
		return ((char *)haystack);
	while (*haystack && n--)
	{
		j = 0;
		while (haystack[j] == needle[j] && needle[j] && j <= n)
		{
			if (!needle[j + 1])
				return ((char *)haystack);
			j++;
		}
		haystack++;
	}
	return (NULL);
}
