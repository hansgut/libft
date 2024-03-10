/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jcielesz <jcielesz@student.42warsaw.pl>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/27 00:18:52 by jcielesz          #+#    #+#             */
/*   Updated: 2024/03/10 18:37:02 by jcielesz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
	void	*dest_p;

	dest_p = dst;
	if (!dst && !src)
		return (dest_p);
	while (n)
	{
		*(char *)dst = *(char *)src;
		dst++;
		src++;
		n--;
	}
	return (dest_p);
}
