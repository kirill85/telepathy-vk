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

#ifndef _VK_CONTACT
#define _VK_CONTACT

#include <glib-object.h>

G_BEGIN_DECLS

#define VK_TYPE_CONTACT vk_contact_get_type()

#define VK_CONTACT(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST ((obj), VK_TYPE_CONTACT, VkContact))

#define VK_CONTACT_CLASS(klass) \
  (G_TYPE_CHECK_CLASS_CAST ((klass), VK_TYPE_CONTACT, VkContactClass))

#define VK_IS_CONTACT(obj) \
  (G_TYPE_CHECK_INSTANCE_TYPE ((obj), VK_TYPE_CONTACT))

#define VK_IS_CONTACT_CLASS(klass) \
  (G_TYPE_CHECK_CLASS_TYPE ((klass), VK_TYPE_CONTACT))

#define VK_CONTACT_GET_CLASS(obj) \
  (G_TYPE_INSTANCE_GET_CLASS ((obj), VK_TYPE_CONTACT, VkContactClass))

typedef struct _VkContactPrivate VkContactPrivate;

typedef struct
{
  GObject parent;
  VkContactPrivate* priv;
} VkContact;

typedef struct
{
  GObjectClass parent_class;
} VkContactClass;

GType vk_contact_get_type(void);

VkContact* vk_contact_new(const gchar* uid, const gchar* first,
                          const gchar* last, const gchar* nick);

void vk_contact_ref(VkContact*);
void vk_contact_unref(VkContact*);

const gchar* vk_contact_get_uid(const VkContact* self);
const gchar* vk_contact_get_first(const VkContact* self);
const gchar* vk_contact_get_last(const VkContact* self);
const gchar* vk_contact_get_nick(const VkContact* self);
gboolean vk_contact_get_online(const VkContact* self);
const gchar* vk_contact_get_avatar_url(const VkContact* self);

G_END_DECLS

#endif /* _VK_CONTACT */

