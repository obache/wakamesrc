# $NetBSD: Makefile,v 1.27 2021/06/07 18:57:58 adam Exp $

DISTNAME=	nettle-3.7.3
CATEGORIES=	devel security
MASTER_SITES=	http://www.lysator.liu.se/~nisse/archive/
MASTER_SITES+=	ftp://ftp.lysator.liu.se/pub/security/lsh/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.lysator.liu.se/~nisse/nettle/
COMMENT=	Cryptographic library
LICENSE=	gnu-lgpl-v2.1

USE_LANGUAGES=		c c99
USE_LIBTOOL=		yes
USE_TOOLS+=		gm4 gmake
GNU_CONFIGURE=		yes
SET_LIBDIR=		yes
CONFIGURE_ARGS+=	--disable-openssl
CONFIGURE_ARGS+=	--disable-shared

.include "../../mk/bsd.prefs.mk"

.if !empty(USE_CROSS_COMPILE:M[yY][eE][sS])
CONFIGURE_ENV+=		CC_FOR_BUILD=${NATIVE_CC:Q}
.endif

INFO_FILES=		yes
TEST_TARGET=		check
PKGCONFIG_OVERRIDE=	hogweed.pc.in
PKGCONFIG_OVERRIDE+=	nettle.pc.in

BUILDLINK_TRANSFORM+=	rm:-ggdb3

BUILDLINK_API_DEPENDS.gmp+=	gmp>=6.0
.include "../../devel/gmp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
