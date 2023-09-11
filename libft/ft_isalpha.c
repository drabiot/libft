/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tchartie <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/11 20:02:00 by tchartie          #+#    #+#             */
/*   Updated: 2023/09/11 20:02:00 by tchartie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int ft_isalpha(int character)
{
    if ((character >= 'A' && character <= 'Z') 
        || (character >= 'a' && character <= 'z'))
        return (1);
    return (0);
}