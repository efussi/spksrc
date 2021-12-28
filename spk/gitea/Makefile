SPK_NAME = gitea
SPK_VERS = 1.15.8
SPK_REV = 2
SPK_ICON = src/logo.png

DEPENDS = cross/$(SPK_NAME)
UNSUPPORTED_ARCHS = $(PPC_ARCHS)

MAINTAINER = efussi
DESCRIPTION = Git with a cup of tea, painless self-hosted git service
DISPLAY_NAME = Gitea
HELPURL = https://github.com/go-gitea/gitea/issues
LICENSE = MIT
CHANGELOG = "First Version"

GROUP = synocommunity

STARTABLE = yes
SERVICE_USER = auto
SERVICE_SETUP = src/service-setup.sh
SERVICE_PORT = 3000
ADMIN_PORT = $(SERVICE_PORT)
SERVICE_PORT_TITLE = $(DISPLAY_NAME)

include ../../mk/spksrc.spk.mk
