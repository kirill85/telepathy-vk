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

#ifndef _VK_ROSTER
#define _VK_ROSTER

#include <glib-object.h>
#include <telepathy-glib/base-connection.h>
#include <telepathy-glib/presence-mixin.h>

#include "vk-contact.h"

G_BEGIN_DECLS

#define VK_TYPE_ROSTER vk_roster_get_type()

#define VK_ROSTER(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST ((obj), VK_TYPE_ROSTER, VkRoster))

#define VK_ROSTER_CLASS(klass) \
  (G_TYPE_CHECK_CLASS_CAST ((klass), VK_TYPE_ROSTER, VkRosterClass))

#define VK_IS_ROSTER(obj) \
  (G_TYPE_CHECK_INSTANCE_TYPE ((obj), VK_TYPE_ROSTER))

#define VK_IS_ROSTER_CLASS(klass) \
  (G_TYPE_CHECK_CLASS_TYPE ((klass), VK_TYPE_ROSTER))

#define VK_ROSTER_GET_CLASS(obj) \
  (G_TYPE_INSTANCE_GET_CLASS ((obj), VK_TYPE_ROSTER, VkRosterClass))

typedef struct _VkRosterPrivate VkRosterPrivate;

typedef struct
{
  GObject parent;
  VkRosterPrivate* priv;
} VkRoster;

typedef struct
{
  GObjectClass parent_class;
} VkRosterClass;

GType vk_roster_get_type (void);

VkRoster* vk_roster_new (TpBaseConnection* conn);

typedef enum {
  INVALID,
  CL_PUBLISH,
  CL_SUBSCRIBE,
  CL_STORED,
  CL_NUM
} VkContactListHandle;

const gchar** vk_roster_get_contact_lists(void);

VkContact* vk_roster_get_contact(VkRoster* self, TpHandle h);
TpHandle vk_roster_get_contact_handle(VkRoster* self, VkContact* con);
G_END_DECLS

#endif /* _VK_ROSTER */

