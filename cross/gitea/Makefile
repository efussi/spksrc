PKG_NAME = gitea
PKG_VERS = 1.15.8
PKG_EXT = tar.gz
# use source package with pre-built frontend files, see https://docs.gitea.io/en-us/install-from-source/#build
PKG_DIST_NAME = $(PKG_NAME)-src-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/go-gitea/$(PKG_NAME)/releases/download/v$(PKG_VERS)
PKG_DIST_FILE = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = native/go

HOMEPAGE = https://github.com/go-gitea/gitea
COMMENT  = Git with a cup of tea, painless self-hosted git service
LICENSE  = MIT

EXTRACT_PATH = $(WORK_DIR)/$(PKG_DIR)
COMPILE_TARGET = gitea_build

GO_SRC_DIR = $(WORK_DIR)/$(PKG_NAME)-$(PKG_VERS)
GO_BIN_DIR = $(GO_SRC_DIR)/$(PKG_NAME)

include ../../mk/spksrc.cross-go.mk

# unset cc's LD_FLAGS
# TAGS per https://docs.gitea.io/en-us/install-from-source/#build
.PHONY: gitea_build
gitea_build:
	$(RUN) env -u LDFLAGS TAGS="bindata" $(MAKE) build
