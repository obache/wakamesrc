# $NetBSD: buildlink3.mk,v 1.48 2021/04/21 11:40:25 adam Exp $

BUILDLINK_TREE+=	libksane

.if !defined(LIBKSANE_BUILDLINK3_MK)
LIBKSANE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libksane+=	libksane>=17.12.1
BUILDLINK_ABI_DEPENDS.libksane?=		libksane>=20.12.3nb1
BUILDLINK_PKGSRCDIR.libksane?=		../../graphics/libksane

.include "../../security/kwallet/buildlink3.mk"
.include "../../x11/ktextwidgets/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.endif	# LIBKSANE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libksane
