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

#include "config.h"

#include "protocol.h"

#include <string.h>

#include <telepathy-glib/telepathy-glib.h>
#include <dbus/dbus-protocol.h>
#include <dbus/dbus-glib.h>

#define PROTOCOL_NAME "vk"
#define API_VERSION 5.0
#define ICON_NAME "im-" PROTOCOL_NAME
#define VCARD_FIELD_NAME "x-" PROTOCOL_NAME
#define ENGLISH_NAME "VK"

G_DEFINE_TYPE (VkProtocol,
               vk_protocol,
               TP_TYPE_BASE_PROTOCOL)

static const TpCMParamSpec vk_params[] =
{
  { "autoupdate", "u", G_TYPE_UINT,
    TP_CONN_MGR_PARAM_FLAG_REQUIRED,
    GUINT_TO_POINTER (0), /* default */
    G_STRUCT_OFFSET (VkParams, autoupdate), /* struct offset */
    NULL, /* filter */
    NULL, /* filter data */
    NULL /* setter data */ },
  { "name", "s", G_TYPE_STRING,
    TP_CONN_MGR_PARAM_FLAG_REQUIRED | TP_CONN_MGR_PARAM_FLAG_REGISTER,
    NULL, /* default */
    G_STRUCT_OFFSET (VkParams, name), /* struct offset */
    tp_cm_param_filter_string_nonempty, /* filter */
    NULL, /* filter data */
    NULL /* setter data */ },
  { NULL }
};

static void vk_protocol_init (VkProtocol *self)
{
}

static const TpCMParamSpec *
get_parameters (TpBaseProtocol *self G_GNUC_UNUSED)
{
  return vk_params;
}

static TpBaseConnection *
new_connection(TpBaseConnectionManager *self,
               const gchar *proto,
               TpIntSet* params_present,
               void* parsed_params,
               GError** error)
{
  VkParams* params = parsed_params;
  VkConnection* conn = g_object_new(VK_TYPE_CONNECTION,
                                    "name", params->name,
                                    "autoupdate", params->autoupdate,
                                    "protocol", proto,
                                    NULL);

  return TP_BASE_CONNECTION(conn);
}

static TpBaseConnection *
new_connection (TpBaseProtocol *protocol G_GNUC_UNUSED,
                GHashTable *params,
                GError **error G_GNUC_UNUSED)
{
  return g_object_new (VK_TYPE_CONNECTION,
      "protocol", PROTOCOL_NAME,
      "api-version", API_VERSION,
      "password", tp_asv_get_string (params, "password"),
      "username", tp_asv_get_string (params, "username"),
      NULL);
}

static void
vk_contact_class_init(VkContactClass* klass)
{
  TpBaseProtocolClass *base_class = (TpBaseProtocolClass *) klass;

  base_class->get_parameters = get_parameters;
  base_class->new_connection = new_connection;
  base_class->identify_account = identify_account;
  base_class->get_connection_details = get_connection_details;
}

TpBaseProtocol *
idle_protocol_new (void)
{
  return g_object_new (IDLE_TYPE_PROTOCOL,
      "name", PROTOCOL_NAME,
      NULL);
}
