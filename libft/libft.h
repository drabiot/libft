/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tchartie <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/11 18:05:39 by tchartie          #+#    #+#             */
/*   Updated: 2023/09/11 18:05:39 by tchartie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

#include <string.h>

size_t  ft_strlen(const char *str);

int     ft_isalpha(int character);
int     ft_idigit(int character);
int     ft_isalnum(int character);
int     ft_isascii(int character);
int     ft_isprint(int character);
int     ft_toupper(int character);
int     ft_tolower(int character);

#endif //LIBFT_H