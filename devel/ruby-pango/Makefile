# $NetBSD: Makefile,v 1.5 2020/08/17 20:17:25 leot Exp $
#

DISTNAME=		pango-${VERSION}
COMMENT=		Ruby binding of pango-1.x
PKGREVISION=		1
CATEGORIES=		devel fonts

MAINTAINER=		tsutsui@NetBSD.org

CONFLICTS+=		${RUBY_PKGPREFIX}-gnome2-pango>=3.0.7nb1
SUPERSEDES+=		${RUBY_PKGPREFIX}-gnome2-pango>=3.0.7nb1

DEPENDS+=		${RUBY_PKGPREFIX}-cairo-gobject>=${VERSION}:../../graphics/ruby-cairo-gobject

BUILDLINK_API_DEPENDS.pango+=	pango>=1.44.0
.include "../../devel/pango/buildlink3.mk"
.include "../../devel/ruby-gobject-introspection/buildlink3.mk"
.include "../../graphics/ruby-cairo/buildlink3.mk"
.include "../../meta-pkgs/ruby-gnome/Makefile.common"
.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
