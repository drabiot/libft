/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tchartie <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/12 20:32:53 by tchartie          #+#    #+#             */
/*   Updated: 2023/09/12 20:32:53 by tchartie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char *ft_strncpy(char *dest, const char *src, size_t length)
{
    int i;

    i = 0;
    while (src[i] && length > i)
    {
        dest[i] = src[i];
        i++;
    }
    while (length > i)
    {
        dest[i] = '\0';
        i++;
    }
    return (dest);
}