# New ports collection Makefile for:»·devel/git-repo
# Date created:        17 Sept 2012
# Whom:                ndwns
#
# $FreeBSD$

PORTNAME= git-repo
PORTVERSION= 1.17
CATEGORIES= devel
MASTER_SITES= ${MASTER_SITE_GOOGLE_CODE}
DISTNAME= repo-${PORTVERSION}
NO_BUILD= yes
EXTRACT_SUFX=""
NO_WRKSUBDIR = yes
USE_PYTHON= yes
RUN_DEPENDS= git:${PORTSDIR}/devel/git

MAINTAINER= ian@ubalo.com
COMMENT= Repo helps to manage many Git repositories.

PLIST_FILES= bin/repo

do-extract:
	@${RM} -rf ${WRKDIR}
	@${MKDIR} ${WRKDIR}
	@(cp -a ${DISTDIR}/${DISTNAME} ${WRKDIR})

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/${DISTNAME} ${PREFIX}/bin/repo

.include <bsd.port.mk>
