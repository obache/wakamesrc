# $NetBSD: Makefile,v 1.24 2021/06/29 08:42:01 nia Exp $

DISTNAME=	numba-0.51.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	math python
MASTER_SITES=	${MASTER_SITE_PYPI:=n/numba/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://numba.pydata.org/
COMMENT=	NumPy aware dynamic Python compiler using LLVM
LICENSE=	2-clause-bsd

DEPENDS+=	${PYPKGPREFIX}-llvmlite>=0.33.0:../../devel/py-llvmlite
DEPENDS+=	${PYPKGPREFIX}-setuptools-[0-9]*:../../devel/py-setuptools

USE_LANGUAGES=	c c++

PYTHON_VERSIONS_INCOMPATIBLE=	27
PYTHON_VERSIONS_INCOMPATIBLE+=	36	# py-numpy

post-install:
.for cmd in numba pycc
	cd ${DESTDIR}${PREFIX}/bin && \
	${MV} ${cmd} ${cmd}-${PYVERSSUFFIX} || ${TRUE}
.endfor

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
