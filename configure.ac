AC_PREREQ([2.59])

# Making releases:
#   set the new version number:
#     odd minor -> development series
#     even minor -> stable series
#     increment micro for each release within a series
#   set nano_version to 0
#   make the release, tag it
#   set nano_version to 1

m4_define([vk_major_version], [0])
m4_define([vk_minor_version], [1])
m4_define([vk_micro_version], [1])
m4_define([vk_nano_version], [1])

m4_define([vk_base_version],
          [vk_major_version.vk_minor_version.vk_micro_version])
m4_define([vk_version],
          [m4_if(vk_nano_version, 0,
                 [vk_base_version],
                 [vk_base_version].[vk_nano_version])])

AC_INIT([telepathy-vk], [vk_version],
        [https://bugs.freedesktop.org/enter_bug.cgi?product=Telepathy&component=vk])

AC_CONFIG_MACRO_DIR([m4])

# Enable silent build rules by default, requires at least
# Automake-1.11. Disable by either passing --disable-silent-rules to
# configure or passing V=1 to make
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

AM_INIT_AUTOMAKE([1.9 -Wno-portability])

AM_PROG_LIBTOOL
AM_CONFIG_HEADER(config.h)
AC_PROG_MKDIR_P

dnl check for tools
AC_PROG_CC
AC_PROG_CC_STDC
AM_PROG_AS

# these aren't really error flags but they serve a similar purpose for us -
# making the toolchain stricter
if test "x$enable_fatal_warnings" = xyes; then
  TP_ADD_LINKER_FLAG([ERROR_LDFLAGS], [-Wl,--no-copy-dt-needed-entries])
fi

AC_HEADER_STDC([])
AC_C_INLINE

AC_DEFINE(GLIB_VERSION_MIN_REQUIRED, GLIB_VERSION_2_28, [Ignore post 2.28 deprecations])
AC_DEFINE(GLIB_VERSION_MAX_ALLOWED, GLIB_VERSION_2_32, [Prevent post 2.32 APIs])

PKG_CHECK_MODULES([GLIB],
  [glib-2.0 >= 2.32.0, gobject-2.0 >= 2.32.0, gio-2.0 >= 2.32.0 ])

PKG_CHECK_MODULES([DBUS], [dbus-1 >= 0.51, dbus-glib-1 >= 0.51])

AC_DEFINE(TP_VERSION_MIN_REQUIRED, TP_VERSION_0_18, [Ignore post 0.18 deprecations])
AC_DEFINE(TP_VERSION_MAX_ALLOWED, TP_VERSION_0_20, [Prevent post 0.20 APIs])
PKG_CHECK_MODULES([TELEPATHY], [telepathy-glib >= 0.20])

AS_AC_EXPAND(DATADIR, $datadir)
DBUS_SERVICES_DIR="$DATADIR/dbus-1/services"
AC_SUBST(DBUS_SERVICES_DIR)
AC_DEFINE_UNQUOTED(DBUS_SERVICES_DIR, "$DBUS_SERVICES_DIR", [DBus services directory])

AC_CHECK_FUNCS(strnlen)

AC_OUTPUT( Makefile \
					 data/Makefile \
           m4/Makefile \
)
