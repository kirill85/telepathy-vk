/**
 * telepathy-vk
 * Copyright (C) 2013 Igor Gnatenko
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#ifndef __VK_CONNECTION_MANAGER_H__
#define __VK_CONNECTION_MANAGER_H__

#include <glib-object.h>
#include <telepathy-glib/base-connection-manager.h>

G_BEGIN_DECLS

typedef struct _VkConnectionManager VkConnectionManager;
typedef struct _VkConnectionManagerClass VkConnectionManagerClass;

struct _VkConnectionManagerClass
{
	TpBaseConnectionManagerClass parent_class;
};

struct _VkConnectionManager
{
	TpBaseConnection parent;
};

GType vk_connection_manager_get_type(void);

/* TYPE MACROS */
#define VK_TYPE_CONNECTION_MANAGER \
	(vk_connection_manager_get_type())

#define VK_CONNECTION_MANAGER(obj) \
	(G_TYPE_CHECK_INSTANCE_CAST((obj), VK_TYPE_CONNECTION_MANAGER, VkConnectionManager))

#define VK_CONNECTION_MANAGER_CLASS(klass) \
	(G_TYPE_CHECK_CLASS_CAST((klass), VK_TYPE_CONNECTION_MANAGER, VkConnectionManagerClass))

#define VK_IS_CONNECTION_MANAGER(obj) \
	(G_TYPE_CHECK_INSTANCE_TYPE((obj), VK_TYPE_CONNECTION_MANAGER))

#define VK_IS_CONNECTION_MANAGER_CLASS(klass) \
	(G_TYPE_CHECK_CLASS_TYPE((klass), VK_TYPE_CONNECTION_MANAGER))

#define VK_CONNECTION_MANAGER_GET_CLASS(obj) \
	(G_TYPE_INSTANCE_GET_CLASS((obj), VK_TYPE_CONNECTION_MANAGER, VkConnectionManagerClass))

G_END_DECLS

#endif /* #ifndef __VK_CONNECTION_MANAGER_H__*/
