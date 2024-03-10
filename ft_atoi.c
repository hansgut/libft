/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jcielesz <jcielesz@student.42warsaw.pl>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/01 00:01:06 by jcielesz          #+#    #+#             */
/*   Updated: 2024/03/05 03:27:22 by jcielesz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_atoi(const char *str)
{
	int		signal;
	long	num;

	num = 0;
	signal = 1;
	while (*str <= 32 && *str > 0)
	{
		if (*str == '\e')
			return (0);
		++str;
	}
	if (*str == '-' || *str == '+')
	{
		if (*str == '-')
			signal *= -1;
		++str;
	}
	while ((*str >= '0') && (*str <= '9'))
	{
		num *= 10;
		num += (*str - 48);
		++str;
	}
	num *= signal;
	return (num);
}
