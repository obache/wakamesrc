# $NetBSD: Makefile,v 1.27 2021/06/06 12:18:55 bsiegert Exp $

DISTNAME=		go-dnstap-0.4.0
PKGREVISION=		2
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_GITHUB:=dnstap/}
GITHUB_PROJECT=		golang-dnstap
GITHUB_TAG=		v${PKGVERSION_NOREV}

HOMEPAGE=		https://${GO_SRCPATH}
COMMENT=		Go language implementation of framestream protocol
LICENSE=		apache-2.0

GO_BUILD_PATTERN=	./dnstap

INSTALLATION_DIRS=	man/man8

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/.gopath/bin/dnstap ${DESTDIR}${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/dnstap/dnstap.8 ${DESTDIR}${PREFIX}/man/man8/

.include "go-modules.mk"

.include "../../lang/go/go-module.mk"
.include "../../mk/bsd.pkg.mk"
