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

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk


define Package/pittmesh-autoconf
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=auto-configuration utility used for pittmesh
  DEPENDS:=
  Maintainer:=drew@zhrodague.net for Pittmesh
endef

define Package/$(PKG_NAME)/description
  A suite of files making mesh networking and management easier - pittmesh
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/$(PKG_NAME) $(1)/usr/bin
endef


