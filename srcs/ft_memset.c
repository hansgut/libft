/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jcielesz <jcielesz@student.42warsaw.pl>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/27 00:18:59 by jcielesz          #+#    #+#             */
/*   Updated: 2024/03/05 03:42:12 by jcielesz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memset(void *b, int c, size_t len)
{
	void	*str_p;

	str_p = b;
	while (len)
	{
		*(unsigned char *)b = (unsigned char)c;
		b++;
		len--;
	}
	return (str_p);
}
