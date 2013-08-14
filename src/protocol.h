/*
 * protocol.h - VkProtocol
 * Copyright © 2013 Collabora Ltd.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

#ifndef VK_PROTOCOL_H
#define VK_PROTOCOL_H

#include <glib-object.h>
#include <telepathy-glib/base-protocol.h>

G_BEGIN_DECLS

typedef struct _VkProtocol VkProtocol;
typedef struct _VkProtocolPrivate VkProtocolPrivate;
typedef struct _VkProtocolClass VkProtocolClass;
typedef struct _VkProtocolClassPrivate VkProtocolClassPrivate;

struct _VkProtocolClass {
    TpBaseProtocolClass parent_class;

    VkProtocolClassPrivate *priv;
};

struct _VkProtocol {
    TpBaseProtocol parent;

    VkProtocolPrivate *priv;
};

GType vk_protocol_get_type (void);

#define VK_TYPE_PROTOCOL \
    (vk_protocol_get_type ())
#define VK_PROTOCOL(obj) \
    (G_TYPE_CHECK_INSTANCE_CAST ((obj), \
        VK_TYPE_PROTOCOL, \
        VkProtocol))
#define VK_PROTOCOL_CLASS(klass) \
    (G_TYPE_CHECK_CLASS_CAST ((klass), \
        VK_TYPE_PROTOCOL, \
        VkProtocolClass))
#define VK_IS_PROTOCOL_CLASS(klass) \
    (G_TYPE_CHECK_CLASS_TYPE ((klass), \
        VK_TYPE_PROTOCOL))
#define VK_PROTOCOL_GET_CLASS(klass) \
    (G_TYPE_INSTANCE_GET_CLASS ((obj), \
        VK_TYPE_PROTOCOL, \
        VkProtocolClass))

TpBaseProtocol *vk_protocol_new (void);

G_END_DECLS

#endif
