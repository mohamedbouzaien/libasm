/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbouzaie <mbouzaie@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/16 15:46:38 by mbouzaie          #+#    #+#             */
/*   Updated: 2021/04/17 19:49:19 by mbouzaie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H

# define LIBASM_H

#include <unistd.h>

size_t  ft_strlen(const char *str);
int		ft_strcmp(char const *s1, char const *s2);
char	*ft_strcpy(char *dst, char const *src);
ssize_t	ft_write(int fd, void const *buf, size_t nbyte);
ssize_t	ft_read(int fd, void *buf, size_t nbyte);
char	*ft_strdup(char const *s1);
#endif