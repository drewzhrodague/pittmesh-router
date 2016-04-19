#
# Copyright (C) 2016 metamesh/pittmesh
#
#

include $(TOPDIR)/rules.mk

PKG_NAME:=pittmesh-autoconf
PKG_RELEASE=$(PKG_SOURCE_VERSION)

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=git://github.com/pittmesh/pittmesh-autoconf
PKG_SOURCE_SUBDIR:=$(PKG_NAME)
PKG_SOURCE:=$(PKG_NAME)

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

define Package/pittmesh-autoconf
  SECTION:=Utils
  CATEGORY:=Utils
  SUBMENU:=Utils
  TITLE:=auto-configuration utility used for pittmesh
  DEPENDS:=
endef

define Package/pittmesh-autoconf/description
  A shellscript based wizard to simplify the setup of a typical mesh node (e.g. for Freifunk.net)
endef

define Build/Prepare
        mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/pittmesh-autoconf/install
        $(CP) ./files/* $(1)/
endef


