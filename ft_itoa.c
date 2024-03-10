/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jcielesz <jcielesz@student.42warsaw.pl>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/04 23:53:24 by jcielesz          #+#    #+#             */
/*   Updated: 2024/03/05 03:31:31 by jcielesz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_itoa(int n)
{
	char	*c;

	if (n == -2147483648)
		return (ft_strdup("-2147483648"));
	if (n < 0)
		return (ft_strjoin("-", ft_itoa(-n)));
	c = ft_strdup("0");
	if (!c)
		return (NULL);
	*c = *c + (n % 10);
	if (n >= 0 && n <= 9)
		return (ft_strdup(c));
	else
		return (ft_strjoin(ft_itoa(n / 10), c));
	return (0);
}
