char *sub_10022B97C(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY];
    result = *(*&v1[OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v5 = *&result[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
    *&result[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = v4;
    if (v4 != v5)
    {
      return [result setNeedsLayout];
    }
  }

  return result;
}

uint64_t type metadata accessor for LargeHeroBreakoutCollectionViewCell(uint64_t a1)
{
  result = qword_10094E368;
  if (!qword_10094E368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10022BBE0(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    sub_10076A1BC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10022BCD4()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

uint64_t (*sub_10022BD48(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_10022B048(v2);
  return sub_100019A4C;
}

CGFloat sub_10022BDBC()
{
  [v0 bounds];

  return CGRectGetMaxY(*&v1);
}

uint64_t sub_10022BDF0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10022C198(&unk_10094E3B0, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_1007963F0);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10022BE64(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10022C198(&unk_10094E3B0, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_1007963F0);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10022BEF0(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_10022C198(&unk_10094E3B0, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_1007963F0);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10022BFAC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_10022C128(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094E398, &unk_100796440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022C198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10022C1E0(__n128 a1)
{
  v2 = v1;
  v29 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_itemLayoutContext;
  v9 = sub_10076341C();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = type metadata accessor for MediaView();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v11[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v11[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v11[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v11[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v12 = type metadata accessor for UberContentContainer();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v13[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v14 = &v13[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v13[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  *&v13[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v31.receiver = v13;
  v31.super_class = v12;
  v16 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v17 = v16;
  if (*&v16[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v16 addSubview:?];
  }

  v18 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer;
  *&v11[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v17;
  v30.receiver = v11;
  v30.super_class = v10;
  v19 = objc_msgSendSuper2(&v30, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v19 setClipsToBounds:1];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *(v1 + v18) = v19;
  v20 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v2 + v20) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v21 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailsView;
  if (qword_1009413B8 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A61C(v29, qword_1009A27B0);
  sub_1000A9194(v22, v4, v23);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FE0C();
  v24 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v2 + v21) = sub_1006389FC(v7);
  v25 = OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_detailPosition;
  v26 = enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:);
  v27 = sub_10076A1BC();
  (*(*(v27 - 8) + 104))(v2 + v25, v26, v27);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_pageTraits) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden) = 1;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden) = 1;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10022C600@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10076D1AC();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v29 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v12 + 8))(v14, v11);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v15 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
  {
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v17 = sub_10076D9AC();
    v18 = v17;
    v19 = qword_1009A2350;
    goto LABEL_9;
  }

  if (v15 == enum case for Shelf.ContentType.singleColumnList(_:) || v15 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    if (qword_100941370 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v15 == enum case for Shelf.ContentType.scrollablePill(_:))
  {
    if (qword_100941370 == -1)
    {
LABEL_19:
      v24 = qword_1009A2720;
      *v6 = qword_1009A2720;
      v26 = v30;
      v25 = v31;
      (*(v30 + 104))(v6, enum case for FontSource.textStyle(_:), v31);
      a2[3] = sub_10076D9AC();
      a2[4] = &protocol witness table for StaticDimension;
      sub_10000DB7C(a2);
      v32[3] = v25;
      v32[4] = &protocol witness table for FontSource;
      v27 = sub_10000DB7C(v32);
      (*(v26 + 16))(v27, v6, v25);
      v28 = v24;
      sub_10076D9BC();
      return (*(v26 + 8))(v6, v25);
    }

LABEL_25:
    swift_once();
    goto LABEL_19;
  }

  if (v15 == enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    if (qword_100941210 != -1)
    {
      swift_once();
    }

    v17 = sub_10076D9AC();
    v18 = v17;
    v19 = qword_1009A23B0;
LABEL_9:
    v20 = sub_10000A61C(v17, v19);
    a2[3] = v18;
    a2[4] = &protocol witness table for StaticDimension;
    v21 = sub_10000DB7C(a2);
    return (*(*(v18 - 8) + 16))(v21, v20, v18);
  }

  sub_100642F38(v29, a2);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10022CB3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v122 = a2;
  v116 = sub_10076D1AC();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = (&v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v4 - 8);
  v108 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v99 - v7;
  __chkstk_darwin(v8);
  v10 = &v99 - v9;
  __chkstk_darwin(v11);
  v109 = &v99 - v12;
  __chkstk_darwin(v13);
  v15 = &v99 - v14;
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v117 = sub_10076B5BC();
  v119 = *(v117 - 8);
  __chkstk_darwin(v117);
  v105 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v106 = &v99 - v21;
  __chkstk_darwin(v22);
  v103 = &v99 - v23;
  __chkstk_darwin(v24);
  v104 = &v99 - v25;
  __chkstk_darwin(v26);
  v110 = &v99 - v27;
  __chkstk_darwin(v28);
  v111 = &v99 - v29;
  __chkstk_darwin(v30);
  v118 = &v99 - v31;
  v32 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v107 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v99 - v36;
  __chkstk_darwin(v38);
  v113 = &v99 - v39;
  __chkstk_darwin(v40);
  v42 = &v99 - v41;
  __chkstk_darwin(v43);
  v45 = &v99 - v44;
  v121 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v46 = *(v33 + 8);
  v120 = v32;
  v46(v45, v32);
  if (!*(v123 + 16))
  {

    v127 = 0u;
    v128 = 0u;
    v129 = 0;
    goto LABEL_10;
  }

  v102 = v46;
  sub_10000A570(v123 + 32, &v124);

  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10000A5D4(&unk_1009520F0, &qword_100799AA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    goto LABEL_10;
  }

  if (!*(&v128 + 1))
  {
LABEL_10:
    result = sub_10000CFBC(&v127, &qword_10094D3E8, &qword_100796560);
LABEL_11:
    v55 = v122;
    v122[3] = &type metadata for Double;
    v55[4] = &protocol witness table for Double;
    *v55 = 0;
    return result;
  }

  sub_100012498(&v127, v130);
  sub_10000CF78(v130, v130[3]);
  if ((sub_10076968C() & 1) == 0)
  {
    result = sub_10000CD74(v130);
    goto LABEL_11;
  }

  v100 = v37;
  sub_10076468C();
  swift_getKeyPath();
  v47 = v118;
  v48 = v120;
  sub_10076F49C();

  v49 = v42;
  v50 = v48;
  v101 = v33 + 8;
  v102(v49, v48);
  v51 = v119;
  v52 = v117;
  v53 = (*(v119 + 88))(v47, v117);
  if (v53 != enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:))
  {
    v56 = (v33 + 48);
    if (v53 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
    {
      v57 = v109;
      sub_10076463C();
      sub_10000CFBC(v10, &qword_1009499A0, &qword_1007848B0);
      if ((*v56)(v57, 1, v50) == 1)
      {
        sub_10000CFBC(v57, &qword_1009499A0, &qword_1007848B0);
        goto LABEL_31;
      }

      v58 = v100;
      (*(v33 + 32))(v100, v57, v50);
      swift_getKeyPath();
      v67 = v104;
      sub_10076F49C();

      v68 = v103;
      (*(v51 + 104))(v103, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
      sub_10022DD04();
      sub_10077018C();
      sub_10077018C();
      if (v127 == v124)
      {
        v69 = *(v51 + 8);
        v69(v68, v52);
        v69(v67, v52);
      }

      else
      {
        v74 = v51;
        v75 = sub_10077167C();
        v76 = *(v74 + 8);
        v76(v68, v52);
        v76(v67, v52);
        v50 = v120;

        if ((v75 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      swift_getKeyPath();
      sub_10076F49C();

      if ((v127 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_30:
      v102(v58, v50);
      goto LABEL_31;
    }

    v62 = v112;
    v63 = v108;
    sub_10076463C();
    sub_10000CFBC(v63, &qword_1009499A0, &qword_1007848B0);
    if ((*v56)(v62, 1, v50) == 1)
    {
      sub_10000CFBC(v62, &qword_1009499A0, &qword_1007848B0);
LABEL_40:
      v94 = v114;
      *v114 = UIFontTextStyleBody;
      v95 = v115;
      v96 = v116;
      (*(v115 + 104))(v94, enum case for FontSource.textStyle(_:), v116);
      v125 = sub_10076D9AC();
      v126 = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v124);
      *(&v128 + 1) = v96;
      v129 = &protocol witness table for FontSource;
      v97 = sub_10000DB7C(&v127);
      (*(v95 + 16))(v97, v94, v96);
      v98 = UIFontTextStyleBody;
      sub_10076D9BC();
      (*(v95 + 8))(v94, v96);
      goto LABEL_41;
    }

    v70 = v107;
    (*(v33 + 32))(v107, v62, v50);
    swift_getKeyPath();
    v71 = v106;
    sub_10076F49C();

    v72 = v105;
    (*(v51 + 104))(v105, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
    sub_10022DD04();
    sub_10077018C();
    sub_10077018C();
    if (v127 == v124)
    {
      v73 = *(v51 + 8);
      v73(v72, v52);
      v73(v71, v52);
    }

    else
    {
      v82 = v51;
      v83 = sub_10077167C();
      v84 = *(v82 + 8);
      v84(v72, v52);
      v84(v71, v52);

      if ((v83 & 1) == 0)
      {
        v86 = v70;
        v87 = v120;
LABEL_39:
        v102(v86, v87);
        goto LABEL_40;
      }
    }

    swift_getKeyPath();
    v85 = v120;
    sub_10076F49C();

    if ((v127 & 1) == 0)
    {
      v125 = &type metadata for CGFloat;
      v126 = &protocol witness table for CGFloat;
      *&v124 = 0x4020000000000000;
      v102(v70, v85);
LABEL_41:
      sub_100012498(&v124, &v127);
      (*(v119 + 8))(v118, v52);
      goto LABEL_42;
    }

    v86 = v70;
    v87 = v85;
    goto LABEL_39;
  }

  sub_10076463C();
  sub_10000CFBC(v15, &qword_1009499A0, &qword_1007848B0);
  if ((*(v33 + 48))(v18, 1, v50) != 1)
  {
    v58 = v113;
    (*(v33 + 32))(v113, v18, v50);
    swift_getKeyPath();
    v59 = v111;
    sub_10076F49C();

    v60 = v110;
    (*(v51 + 104))(v110, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
    sub_10022DD04();
    sub_10077018C();
    sub_10077018C();
    if (v127 == v124)
    {
      v61 = *(v51 + 8);
      v61(v60, v52);
      v61(v59, v52);

      goto LABEL_21;
    }

    v64 = v51;
    v65 = sub_10077167C();
    v66 = *(v64 + 8);
    v66(v60, v52);
    v66(v59, v52);
    v50 = v120;

    if (v65)
    {
LABEL_21:
      swift_getKeyPath();
      sub_10076F49C();

      if (v127)
      {
        goto LABEL_30;
      }

LABEL_36:
      v88 = v114;
      *v114 = UIFontTextStyleBody;
      v89 = v50;
      v90 = v115;
      v91 = v116;
      (*(v115 + 104))(v88, enum case for FontSource.textStyle(_:), v116);
      v125 = sub_10076D9AC();
      v126 = &protocol witness table for StaticDimension;
      sub_10000DB7C(&v124);
      *(&v128 + 1) = v91;
      v129 = &protocol witness table for FontSource;
      v92 = sub_10000DB7C(&v127);
      (*(v90 + 16))(v92, v88, v91);
      v93 = UIFontTextStyleBody;
      sub_10076D9BC();
      (*(v90 + 8))(v88, v91);
      v102(v58, v89);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  sub_10000CFBC(v18, &qword_1009499A0, &qword_1007848B0);
LABEL_31:
  v77 = v114;
  *v114 = UIFontTextStyleBody;
  v78 = v115;
  v79 = v116;
  (*(v115 + 104))(v77, enum case for FontSource.textStyle(_:), v116);
  v125 = sub_10076D9AC();
  v126 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v124);
  *(&v128 + 1) = v79;
  v129 = &protocol witness table for FontSource;
  v80 = sub_10000DB7C(&v127);
  (*(v78 + 16))(v80, v77, v79);
  v81 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v78 + 8))(v77, v79);
LABEL_32:
  sub_100012498(&v124, &v127);
LABEL_42:
  sub_100012498(&v127, v122);
  return sub_10000CD74(v130);
}

unint64_t sub_10022DD04()
{
  result = qword_10094C660;
  if (!qword_10094C660)
  {
    sub_10076B5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C660);
  }

  return result;
}

uint64_t sub_10022DD60@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_10076D1AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1AC8);
  v7 = *(v5 - 8);
  v22 = *(v7 + 16);
  v21 = v7 + 16;
  v22(v4, v6, v5);
  v8 = v2[13];
  v20 = enum case for FontSource.useCase(_:);
  v19 = v8;
  v8(v4);
  v9 = sub_10076D9AC();
  v30[3] = v9;
  v30[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v30);
  v28 = v1;
  v29 = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v27);
  v11 = v2[2];
  v11(v10, v4, v1);
  sub_10076D9BC();
  v12 = v2[1];
  v12(v4, v1);
  if (qword_100940EF8 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v5, qword_1009A1AE0);
  v22(v4, v13, v5);
  v19(v4, v20, v1);
  v28 = v9;
  v29 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v27);
  v25 = v1;
  v26 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v24);
  v11(v14, v4, v1);
  sub_10076D9BC();
  v12(v4, v1);
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v5, qword_1009A1B58);
  v22(v4, v15, v5);
  v19(v4, v20, v1);
  v25 = v9;
  v26 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v24);
  v23[3] = v1;
  v23[4] = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v23);
  v11(v16, v4, v1);
  sub_10076D9BC();
  v12(v4, v1);
  return sub_10076773C();
}

void sub_10022E214(uint64_t a1, void *a2, id *a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v8 = a3;
    swift_once();
    a3 = v8;
  }

  v6 = *a3;
  v7 = [v6 colorWithAlphaComponent:0.8];

  *a4 = v7;
}

char *sub_10022E2D8(double a1, double a2, double a3, double a4)
{
  v9 = sub_10075FEEC();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v100 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  __chkstk_darwin(v11 - 8);
  v99 = v93 - v12;
  v13 = sub_10076D3DC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v106 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076771C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v95 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v109 = v93 - v20;
  v21 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v21 - 8);
  v23 = v93 - v22;
  v24 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v25 = sub_10076341C();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_artworkView;
  v98 = sub_10075FD2C();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v108 = v4;
  *&v4[v26] = v27;
  v28 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v13, qword_1009A1AC8);
  v30 = v14 + 16;
  v105 = *(v14 + 16);
  v105(v23, v29, v13);
  v97 = v14;
  v31 = v14 + 56;
  v104 = *(v14 + 56);
  v104(v23, 0, 1, v13);
  v32 = enum case for DirectionalTextAlignment.leading(_:);
  v96 = v17;
  v103 = *(v17 + 104);
  v103(v109, enum case for DirectionalTextAlignment.leading(_:), v16);
  v33 = sub_1007626BC();
  v107 = v16;
  v34 = v33;
  v35 = objc_allocWithZone(v33);
  *&v108[v28] = sub_1007626AC();
  v36 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_100940EF8 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A61C(v13, qword_1009A1AE0);
  v105(v23, v37, v13);
  v104(v23, 0, 1, v13);
  v103(v109, v32, v107);
  v38 = objc_allocWithZone(v34);
  *&v108[v36] = sub_1007626AC();
  v94 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel;
  v93[2] = v31;
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v39 = sub_10000A61C(v13, qword_1009A1B58);
  v40 = v105;
  v41 = v106;
  v105(v106, v39, v13);
  v42 = v107;
  v43 = v13;
  v93[0] = v13;
  v44 = v103;
  v103(v109, v32, v107);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
  *&v45[qword_10095A0D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v40(v23, v41, v43);
  v93[1] = v30;
  v46 = v104;
  v104(v23, 0, 1, v43);
  v47 = v95;
  v44(v95, enum case for DirectionalTextAlignment.none(_:), v42);
  v48 = UIContentSizeCategoryExtraExtraExtraLarge;
  v49 = sub_1007626AC();
  v50 = v106;
  v51 = v93[0];
  v40(v23, v106, v93[0]);
  v46(v23, 0, 1, v51);
  v52 = v49;
  sub_1007625DC();
  v53 = v50;
  sub_1007625BC();
  [v52 setNumberOfLines:0];
  v54 = v96;
  v55 = v109;
  v56 = v107;
  (*(v96 + 16))(v47, v109, v107);
  sub_10076262C();

  (*(v54 + 8))(v55, v56);
  (*(v97 + 8))(v53, v51);
  v57 = v108;
  *&v108[v94] = v52;
  *&v57[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_pageTraits] = 0;
  v58 = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  v110.receiver = v57;
  v110.super_class = v58;
  v59 = objc_msgSendSuper2(&v110, "initWithFrame:", a1, a2, a3, a4);
  [v59 setClipsToBounds:0];
  v60 = [v59 contentView];
  [v60 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v61 = [v59 contentView];
  [v61 setClipsToBounds:0];

  v62 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_artworkView;
  [*&v59[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_artworkView] setContentMode:2];
  v63 = qword_10093F888;
  v64 = *&v59[v62];
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = sub_10076BCFC();
  v66 = sub_10000A61C(v65, qword_10099D438);
  v67 = *(v65 - 8);
  v68 = v99;
  (*(v67 + 16))(v99, v66, v65);
  (*(v67 + 56))(v68, 0, 1, v65);
  sub_10075FCDC();

  v69 = *&v59[v62];
  v71 = v100;
  v70 = v101;
  v72 = v102;
  (*(v101 + 104))(v100, enum case for CornerStyle.arc(_:), v102);
  v73 = v69;
  sub_10075FD1C();

  (*(v70 + 8))(v71, v72);
  v74 = *&v59[v62];
  sub_10075FB9C();
  sub_1007638DC();

  v75 = *&v59[v62];
  sub_10075FBAC();
  sub_1007638EC();

  v76 = [v59 contentView];
  [v76 addSubview:*&v59[v62]];

  v77 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel;
  v78 = qword_10093FB40;
  v79 = *&v59[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel];
  if (v78 != -1)
  {
    swift_once();
  }

  [v79 setTextColor:qword_10099DC38];

  v80 = [v59 contentView];
  [v80 addSubview:*&v59[v77]];

  v81 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel;
  v82 = qword_10093FB48;
  v83 = *&v59[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel];
  if (v82 != -1)
  {
    swift_once();
  }

  v84 = qword_10099DC40;
  [v83 setTextColor:qword_10099DC40];

  v85 = [v59 contentView];
  [v85 addSubview:*&v59[v81]];

  v86 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel;
  [*&v59[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel] setTextColor:v84];
  v87 = [v59 contentView];
  [v87 addSubview:*&v59[v86]];

  v88 = objc_opt_self();
  v89 = [v88 clearColor];
  [v59 setBackgroundColor:v89];

  v90 = [v59 contentView];
  v91 = [v88 clearColor];
  [v90 setBackgroundColor:v91];

  return v59;
}

id sub_10022EEE4()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076774C();
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10076776C();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10077164C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  v37.receiver = v1;
  v37.super_class = v15;
  result = objc_msgSendSuper2(&v37, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_pageTraits])
  {
    v27 = v3;
    v28 = v2;
    swift_unknownObjectRetain();
    [v1 bounds];
    CGRectGetWidth(v38);
    [v1 bounds];
    CGRectGetHeight(v39);
    if (qword_100941200 != -1)
    {
      swift_once();
    }

    v17 = sub_10076D9AC();
    sub_10000A61C(v17, qword_1009A2380);
    sub_10076D17C();
    sub_10076D40C();
    (*(v12 + 8))(v14, v11);
    sub_10022DD60(v8);
    v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_artworkView];
    v35 = sub_10075FD2C();
    v36 = &protocol witness table for UIView;
    v34 = v18;
    v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel];
    v32 = sub_1007626BC();
    v33 = &protocol witness table for UILabel;
    v31[9] = &protocol witness table for UILabel;
    v31[10] = v19;
    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel];
    v31[8] = v32;
    v31[5] = v20;
    v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel];
    v31[4] = &protocol witness table for UILabel;
    v31[3] = v32;
    v31[0] = v21;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    sub_10076775C();
    sub_10076772C();
    swift_unknownObjectRelease();
    (*(v27 + 8))(v5, v28);
    return (*(v29 + 8))(v10, v30);
  }

  return result;
}

id sub_10022F35C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_10075FCAC();
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel] setText:0];
}

id sub_10022F448()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EditorialStoryCardCollectionViewCell(uint64_t a1)
{
  result = qword_10094E3E8;
  if (!qword_10094E3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10022F560(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10022F61C()
{
  v1 = sub_10076D3DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10076771C();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v13 = sub_10076341C();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_artworkView;
  sub_10075FD2C();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v62 = v0;
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_100940EF0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v1, qword_1009A1AC8);
  v18 = v2 + 16;
  v59 = *(v2 + 16);
  v59(v11, v17, v1);
  v57 = v2;
  v20 = *(v2 + 56);
  v19 = v2 + 56;
  v60 = v20;
  v20(v11, 0, 1, v1);
  v21 = enum case for DirectionalTextAlignment.leading(_:);
  v56 = v4;
  v23 = *(v4 + 104);
  v22 = v4 + 104;
  v58 = v23;
  v23(v8, enum case for DirectionalTextAlignment.leading(_:), v63);
  v24 = sub_1007626BC();
  v25 = objc_allocWithZone(v24);
  *(v62 + v16) = sub_1007626AC();
  v26 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_100940EF8 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A61C(v1, qword_1009A1AE0);
  v59(v11, v27, v1);
  v54 = v19;
  v60(v11, 0, 1, v1);
  v51 = v22;
  v58(v8, v21, v63);
  v28 = objc_allocWithZone(v24);
  *(v62 + v26) = sub_1007626AC();
  v53 = OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_descriptionLabel;
  if (qword_100940F20 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v1, qword_1009A1B58);
  v30 = v61;
  v31 = v59;
  v59(v61, v29, v1);
  v32 = v8;
  v52 = v8;
  v33 = v63;
  v34 = v58;
  v58(v32, v21, v63);
  v35 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
  *&v35[qword_10095A0D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v31(v11, v30, v1);
  v36 = v1;
  v49 = v1;
  v50 = v18;
  v37 = v60;
  v60(v11, 0, 1, v36);
  v38 = v55;
  v34(v55, enum case for DirectionalTextAlignment.none(_:), v33);
  v39 = UIContentSizeCategoryExtraExtraExtraLarge;
  v40 = sub_1007626AC();
  v41 = v61;
  v42 = v49;
  v31(v11, v61, v49);
  v37(v11, 0, 1, v42);
  v43 = v40;
  sub_1007625DC();
  sub_1007625BC();
  [v43 setNumberOfLines:0];
  v44 = v56;
  v45 = v52;
  v46 = v63;
  (*(v56 + 16))(v38, v52, v63);
  sub_10076262C();

  (*(v44 + 8))(v45, v46);
  (*(v57 + 8))(v41, v42);
  v47 = v62;
  *(v62 + v53) = v43;
  *(v47 + OBJC_IVAR____TtC20ProductPageExtension36EditorialStoryCardCollectionViewCell_pageTraits) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10022FC8C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton);
  sub_10003F0D4(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_10000CF78(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_10077165C();
    (*(v7 + 8))(v10, v5);
    sub_10000CD74(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 addTarget:v11 action:a2 forControlEvents:64];
  return swift_unknownObjectRelease();
}

uint64_t sub_10022FDE4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton);
  sub_10003F0D4(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = sub_10000CF78(v11, v12);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_10077165C();
    (*(v5 + 8))(v8, v3);
    sub_10000CD74(v11);
  }

  else
  {
    v9 = 0;
  }

  [v2 removeTarget:v9 action:0 forControlEvents:64];
  return swift_unknownObjectRelease();
}

id sub_10022FF30(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_progressView;
  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_progressView];
  if (v5)
  {
    goto LABEL_2;
  }

  v10 = [objc_allocWithZone(type metadata accessor for InstallProgressView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = *&v2[v4];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v2[v4];
  }

  else
  {
    v12 = 0;
  }

  *&v2[v4] = v10;
  v13 = v10;

  if (v13)
  {
    [v2 addSubview:v13];
  }

  [v2 setNeedsLayout];

  v14 = *&v2[v4];
  if (v14)
  {
    v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_animationCompletionHandler];
    v16 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_animationCompletionHandler + 8];
    v17 = &v14[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_completionHandler];
    v18 = *&v14[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_completionHandler];
    v19 = *&v14[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_completionHandler + 8];
    *v17 = v15;
    v17[1] = v16;
    v20 = v14;
    sub_10001CE50(v15, v16);
    sub_1000167E0(v18, v19);

    v21 = *&v2[v4];
    if (v21)
    {
      [v21 setClipsToBounds:1];
      v5 = *&v2[v4];
      if (v5)
      {
LABEL_2:
        v6 = v5;
        sub_10076390C();
        [v6 _setCornerRadius:?];

        v7 = *&v2[v4];
        if (v7)
        {
          v8 = *&v7[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progress];
          *&v7[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_progress] = a1;
          v9 = v7;
          sub_1005CA4D4(v8);
        }
      }
    }
  }

  return [v2 setNeedsLayout];
}

void sub_1002300FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_animationCompletionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_animationCompletionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_animationCompletionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_1000167E0(v4, v5);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_progressView);
  if (v6)
  {
    v7 = *v3;
    v8 = v3[1];
    v9 = &v6[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_completionHandler];
    v10 = *&v6[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_completionHandler];
    v11 = *&v6[OBJC_IVAR____TtC20ProductPageExtension19InstallProgressView_completionHandler + 8];
    *v9 = v7;
    v9[1] = v8;
    v12 = v6;
    sub_10001CE50(v7, v8);
    sub_1000167E0(v10, v11);
  }
}

uint64_t sub_1002301BC@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  __chkstk_darwin(v1 - 8);
  v47 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v37[-v4];
  __chkstk_darwin(v6);
  v8 = &v37[-v7];
  v9 = sub_10076D1AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10076443C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v46 = &v37[-v18];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v19 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v19 = qword_100944CA0;
  }

  v20 = v10;
  v48 = v5;
  v21 = sub_10000A61C(v13, v19);
  (*(v14 + 16))(v16, v21, v13);
  v40 = v14;
  v41 = v13;
  (*(v14 + 32))(v46, v16, v13);
  v68[13] = &type metadata for Double;
  v68[14] = &protocol witness table for Double;
  v68[9] = &protocol witness table for Double;
  v68[10] = 0x4024000000000000;
  v68[8] = &type metadata for Double;
  v68[5] = 0x4000000000000000;
  if (qword_100940E20 != -1)
  {
    swift_once();
  }

  v22 = sub_10076D3DC();
  v23 = sub_10000A61C(v22, qword_1009A1858);
  v39 = *(v22 - 8);
  v45 = *(v39 + 16);
  v45(v12, v23, v22);
  v24 = *(v10 + 104);
  v25 = enum case for FontSource.useCase(_:);
  v50 = v20 + 104;
  v54 = v24;
  v24(v12);
  v53 = sub_10076D9AC();
  v68[3] = v53;
  v68[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v68);
  v66 = v9;
  v67 = &protocol witness table for FontSource;
  v26 = sub_10000DB7C(v65);
  v51 = *(v20 + 16);
  v52 = v20 + 16;
  v51(v26, v12, v9);
  sub_10076D9BC();
  v49 = *(v20 + 8);
  v44 = v20 + 8;
  v49(v12, v9);
  v65[0] = 0x405C000000000000;
  v62[0] = 0x4044000000000000;
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  v42 = v8;
  sub_10075FDEC();
  if (qword_100940E28 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A61C(v22, qword_1009A1870);
  v45(v12, v27, v22);
  v54(v12, v25, v9);
  v66 = v53;
  v67 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v65);
  v63 = v9;
  v64 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(v62);
  v51(v28, v12, v9);
  sub_10076D9BC();
  v49(v12, v9);
  v62[0] = 0x405C000000000000;
  v59[0] = 0x4044000000000000;
  sub_10075FDEC();
  if (qword_100940E10 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v22, qword_1009A1828);
  v45(v12, v29, v22);
  v54(v12, v25, v9);
  v63 = v53;
  v64 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v62);
  v60 = v9;
  v61 = &protocol witness table for FontSource;
  v30 = sub_10000DB7C(v59);
  v51(v30, v12, v9);
  sub_10076D9BC();
  v49(v12, v9);
  v59[0] = 0x4052000000000000;
  v56[0] = 0x4034000000000000;
  v38 = v25;
  sub_10075FDEC();
  *v12 = UIFontTextStyleBody;
  *(v12 + 2) = 0;
  LODWORD(v45) = enum case for FontUseCase.preferredFont(_:);
  v39 = *(v39 + 104);
  (v39)(v12);
  v54(v12, v25, v9);
  v60 = v53;
  v61 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v59);
  v57 = v9;
  v58 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v56);
  v51(v31, v12, v9);
  v32 = UIFontTextStyleBody;
  sub_10076D9BC();
  v33 = v49;
  v49(v12, v9);
  v34 = v46;
  sub_1007643EC();
  sub_10076441C();
  *v12 = v32;
  *(v12 + 2) = 0;
  (v39)(v12, v45, v22);
  v54(v12, v38, v9);
  v57 = v53;
  v58 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v56);
  v55[3] = v9;
  v55[4] = &protocol witness table for FontSource;
  v35 = sub_10000DB7C(v55);
  v51(v35, v12, v9);
  sub_10076D9BC();
  v33(v12, v9);
  sub_100769FAC();
  return (*(v40 + 8))(v34, v41);
}

char *sub_100230ACC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - v15;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_progressView] = 0;
  v17 = &v4[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_animationCompletionHandler];
  sub_10075FD2C();
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_iconView] = sub_10075FB3C();
  if (qword_100940E20 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A1858);
  v20 = *(v18 - 8);
  v51 = *(v20 + 16);
  v51(v16, v19, v18);
  v50 = *(v20 + 56);
  v50(v16, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v49 = *(v11 + 104);
  v49(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = sub_1007626BC();
  v48 = v10;
  v23 = v22;
  v24 = objc_allocWithZone(v22);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_titleLabel] = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_ageRatingView] = [objc_allocWithZone(type metadata accessor for AgeRatingBadgeView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100940E28 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v18, qword_1009A1870);
  v51(v16, v25, v18);
  v50(v16, 0, 1, v18);
  v49(v13, v21, v48);
  v26 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_subtitleLabel] = sub_1007626AC();
  if (qword_100940E10 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A61C(v18, qword_1009A1828);
  v51(v16, v27, v18);
  v50(v16, 0, 1, v18);
  v49(v13, v21, v48);
  v28 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_descriptionLabel] = sub_1007626AC();
  v29 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton] = sub_1001E89B8(0);
  v52.receiver = v5;
  v52.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v34 = v30;
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v34 setScrollEnabled:1];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_descriptionLabel;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_descriptionLabel] setTextAlignment:1];
  v36 = OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_titleLabel;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_titleLabel] setTextAlignment:1];
  v37 = OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_subtitleLabel;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_subtitleLabel] setTextAlignment:1];
  v38 = *&v34[v35];
  sub_1000325F0();
  v39 = v38;
  v40 = sub_100770D1C();
  [v39 setTextColor:v40];

  v41 = *&v34[v36];
  v42 = sub_100770CFC();
  [v41 setTextColor:v42];

  v43 = *&v34[v37];
  v44 = sub_100770D0C();
  [v43 setTextColor:v44];

  [v34 addSubview:*&v34[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_iconView]];
  [v34 addSubview:*&v34[v35]];
  [v34 addSubview:*&v34[v36]];
  [v34 addSubview:*&v34[v37]];
  [v34 addSubview:*&v34[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton]];
  [v34 addSubview:*&v34[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_ageRatingView]];

  return v34;
}

double sub_1002311E0(double a1, double a2)
{
  v3 = sub_100769FCC();
  __chkstk_darwin(v3 - 8);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100769FEC();
  v33 = *(v6 - 8);
  v34 = v6;
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v32[0] = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 traitCollection];
  v32[1] = v5;
  sub_1002301BC(v5);

  v10 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_iconView];
  v56 = sub_10075FD2C();
  v57 = &protocol witness table for UIView;
  v55 = v10;
  v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_progressView];
  if (v11)
  {
    v12 = type metadata accessor for InstallProgressView();
    v13 = &protocol witness table for UIView;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v51 = 0;
    v52 = 0;
  }

  v50 = v11;
  v53 = v12;
  v54 = v13;
  v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_titleLabel];
  v48 = sub_1007626BC();
  v49 = &protocol witness table for UILabel;
  v46 = &protocol witness table for UILabel;
  v47 = v14;
  v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_subtitleLabel];
  v45 = v48;
  v43 = &protocol witness table for UILabel;
  v44 = v15;
  v16 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_descriptionLabel];
  v42 = v48;
  v41 = v16;
  v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_ageRatingView];
  v39 = type metadata accessor for AgeRatingBadgeView(0);
  v40 = &protocol witness table for UIView;
  v38 = v17;
  v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton];
  v36 = type metadata accessor for OfferButton();
  v37 = &protocol witness table for UIView;
  v35 = v18;
  v19 = v10;
  v20 = v11;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v32[0];
  sub_100769FDC();
  sub_10023198C(v27);
  v28 = v34;
  sub_10076D2AC();
  v30 = v29;
  (*(v33 + 8))(v26, v28);
  return v30;
}

uint64_t sub_1002314E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100769FCC();
  __chkstk_darwin(v5 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100769FEC();
  v33 = *(v8 - 8);
  v34 = v8;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v32[0] = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61.receiver = v1;
  v61.super_class = ObjectType;
  v32[2] = ObjectType;
  objc_msgSendSuper2(&v61, "layoutSubviews", v9);
  v11 = [v1 traitCollection];
  v32[1] = v7;
  sub_1002301BC(v7);

  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_iconView];
  v59 = sub_10075FD2C();
  v60 = &protocol witness table for UIView;
  v58 = v12;
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_progressView];
  if (v13)
  {
    v14 = type metadata accessor for InstallProgressView();
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v54 = 0;
    v55 = 0;
  }

  v53 = v13;
  v56 = v14;
  v57 = v15;
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_titleLabel];
  v51 = sub_1007626BC();
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v16;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_subtitleLabel];
  v48 = v51;
  v46 = &protocol witness table for UILabel;
  v47 = v17;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_descriptionLabel];
  v45 = v51;
  v44 = v18;
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_ageRatingView];
  v42 = type metadata accessor for AgeRatingBadgeView(0);
  v43 = &protocol witness table for UIView;
  v41 = v19;
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_offerButton];
  v39 = type metadata accessor for OfferButton();
  v40 = &protocol witness table for UIView;
  v38 = v20;
  v21 = v12;
  v22 = v13;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v32[0];
  sub_100769FDC();
  sub_10076422C();
  v29 = v35;
  sub_100769F9C();
  [v1 frame];
  Width = CGRectGetWidth(v62);
  sub_10076D1DC();
  [v1 setContentSize:Width];
  (*(v36 + 8))(v29, v37);
  return (*(v33 + 8))(v28, v34);
}

unint64_t sub_10023198C(__n128 a1)
{
  result = qword_10094E470;
  if (!qword_10094E470)
  {
    sub_100769FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094E470);
  }

  return result;
}

uint64_t sub_1002319E8(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100231A20(uint64_t a1, uint64_t a2, objc_class *a3, char a4)
{
  v43 = a1;
  v44 = sub_10076D1AC();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075D9EC();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000A5D4(&qword_100942698, &qword_10079DCB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_100770F9C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a3;
  if (a4)
  {
    sub_10077108C();
  }

  else
  {
    sub_1007710CC();
    v17 = [(objc_class *)a3 userInterfaceStyle];
    v18 = objc_opt_self();
    v19 = &selRef_systemGray3Color;
    if (v17 != 2)
    {
      v19 = &selRef_systemGray5Color;
    }

    v20 = [v18 *v19];
    v21 = sub_100770F5C();
    v40 = v13;
    v22 = v7;
    v23 = a3;
    v24 = v21;
    sub_10076E42C();
    v24(v45, 0);
    v25 = v23;
    v7 = v22;
    v13 = v40;
    [(objc_class *)v25 displayScale];
    v26 = sub_100770F5C();
    sub_10076E43C();
    v26(v45, 0);
  }

  (*(v14 + 104))(v16, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v13);
  sub_100770FAC();
  sub_10077102C();
  if (a2)
  {
    sub_10000A5D4(&unk_10094E7E0, qword_100785360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = NSFontAttributeName;
    v28 = qword_100940EE0;

    v29 = NSFontAttributeName;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = sub_10076D3DC();
    v31 = sub_10000A61C(v30, qword_1009A1A98);
    v32 = v41;
    (*(*(v30 - 8) + 16))(v41, v31, v30);
    v33 = v44;
    (*(v7 + 104))(v32, enum case for FontSource.useCase(_:), v44);
    v34.super.isa = v42;
    isa = sub_10076D19C(v34).super.isa;
    (*(v7 + 8))(v32, v33);
    *(inited + 64) = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
    *(inited + 40) = isa;
    sub_1000FC5F4(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &unk_100948B10, &unk_10078B4F0);
    sub_10075DA0C();
    sub_10075D9AC();
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = sub_10075D99C();
  (*(*(v37 - 8) + 56))(v12, v36, 1, v37);
  return sub_10077101C();
}

NSString sub_100231F3C()
{
  result = sub_10076FF6C();
  qword_10094E478 = result;
  return result;
}

double sub_100231F7C()
{
  v0 = sub_10000A5D4(&qword_10094E548, &qword_100796800);
  __chkstk_darwin(v0);
  v1 = sub_10000A5D4(&qword_10094E540, &qword_1007A6DC0);
  sub_10000DB18(v1, qword_10094E480);
  sub_10000A61C(v1, qword_10094E480);
  sub_100016F40(0, &qword_100947240, UIButton_ptr);
  sub_10076D4CC();
  sub_100071820(&qword_10094E550, &qword_10094E548, &qword_100796800, &protocol conformance descriptor for ViewRecycler<A>);
  sub_10076E18C();
  return result;
}

uint64_t sub_1002320A0()
{
  v0 = sub_10076FD4C();
  sub_10000DB18(v0, qword_10094E498);
  v1 = sub_10000A61C(v0, qword_10094E498);
  if (qword_1009412F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A2618);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_100232168(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_10076321C();
    sub_100563DC4(v5, 1, v4);
  }

  return result;
}

void sub_1002321F0(__n128 a1, uint64_t a2, char a3, uint64_t a4, objc_class *a5)
{
  v7 = sub_10076E3AC();
  __chkstk_darwin(v7);
  v8 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_10076322C();
  sub_100231A20(v11, v12, a5, a3 & 1);

  v13 = sub_10077111C();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  sub_10077114C();
  v14 = [(objc_class *)a5 preferredContentSizeCategory];
  v15 = sub_1005C52E4(v14);
  v16 = v15;

  if (v15)
  {
    v17 = v16;
    sub_100770C0C();
    sub_10076E37C();
    sub_100770C1C();
  }

  else
  {
    sub_10076E88C();
    sub_100770C0C();
    sub_10076E39C();
    sub_100770C1C();
  }
}

char *sub_1002323E8(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_topSeparator;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = [v11 separatorColor];
  [v10 setBackgroundColor:v12];

  *&v4[v9] = v10;
  v13 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_bottomSeparator;
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = [v11 separatorColor];
  [v15 setBackgroundColor:v16];

  *&v4[v14] = v15;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_guidedSearchResult] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsCalculator] = 0;
  v17 = &v4[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsUpdateBlock];
  v18 = type metadata accessor for GuidedSearchResultContentView();
  *v17 = 0;
  *(v17 + 1) = 0;
  v29.receiver = v4;
  v29.super_class = v18;
  v19 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v20 = *&v19[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_topSeparator];
  v21 = v19;
  [v21 addSubview:v20];
  v22 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title;
  [v21 addSubview:*&v21[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title]];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_bottomSeparator]];
  v23 = *&v21[v22];
  v24 = objc_opt_self();
  v25 = v23;
  result = [v24 _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  if (result)
  {
    v27 = result;
    [v25 setFont:result];

    [*&v21[v22] setNumberOfLines:0];
    sub_10000A5D4(&unk_100945BF0, &qword_100786810);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100784500;
    *(v28 + 32) = sub_10076E88C();
    *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v28 + 48) = sub_10076E3FC();
    *(v28 + 56) = &protocol witness table for UITraitLegibilityWeight;
    sub_100770C6C();

    swift_unknownObjectRelease();

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100232764()
{
  v1 = v0;
  v2 = sub_10076F08C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F0CC();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  *(v9 + 16) = *&v1[v10];
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    swift_beginAccess();
    sub_1002362DC((v9 + 16), 0x74696E696564, 0xE600000000000000, v12);
    swift_endAccess();
  }

  else
  {
    sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
    v20 = sub_10077068C();
    aBlock[4] = sub_100236B08;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_10088DBD8;
    v19 = _Block_copy(aBlock);

    sub_10076F0AC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100236B10(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v18 = v6;
    sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
    sub_100071820(&qword_100945170, &unk_10094E1C0, &qword_100785D50, &protocol conformance descriptor for [A]);
    sub_1007712CC();
    v14 = v19;
    v13 = v20;
    sub_10077069C();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v21 + 8))(v8, v18);
  }

  v15 = type metadata accessor for GuidedSearchResultContentView();
  v22.receiver = v1;
  v22.super_class = v15;
  return objc_msgSendSuper2(&v22, "dealloc");
}

uint64_t sub_100232B2C(uint64_t a1)
{
  swift_beginAccess();
  sub_1002362DC((a1 + 16), 0x74696E696564, 0xE600000000000000, v2);
  return swift_endAccess();
}

void sub_100232C50(__n128 a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v58 = sub_10076F13C();
  v4 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = (v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10076414C();
  sub_100236B10(&qword_10094E558, 255, &type metadata accessor for GuidedSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  v7 = aBlock[0];
  if (aBlock[0])
  {
    v48 = v4;
    *&v3[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_guidedSearchResult] = aBlock[0];

    v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title];
    sub_10076412C();
    v59 = v3;
    if (v9)
    {
      v10 = sub_10076FF6C();
    }

    else
    {
      v10 = 0;
    }

    [v8 setText:v10];

    v11 = sub_10076413C();
    v46 = byte_10094DD10;
    swift_getKeyPath();
    sub_10076338C();

    v56 = v67;
    v12 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills;
    v13 = v59;
    swift_beginAccess();
    v44 = v12;
    sub_1002362DC(&v13[v12], 0xD000000000000017, 0x80000001007DAD70, v14);
    if (qword_10093FB60 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v15 = sub_10076FD4C();
      sub_10000A61C(v15, qword_10094E498);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100785C70;
      v62 = sub_10000A5D4(&qword_10094E538, &qword_1007967F8);
      aBlock[0] = &type metadata for GuidedSearchTokenPill;
      sub_10076F30C();
      sub_10000CFBC(aBlock, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      if (v11 >> 62)
      {
        v16 = sub_10077158C();
      }

      else
      {
        v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = &type metadata for Int;
      aBlock[0] = v16;
      sub_10076F30C();
      sub_10000CFBC(aBlock, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      if (qword_10093FB58 != -1)
      {
        swift_once();
      }

      v17 = sub_10000A5D4(&qword_10094E540, &qword_1007A6DC0);
      v18 = sub_10000A61C(v17, qword_10094E480);
      swift_beginAccess();
      v62 = v17;
      v19 = sub_10000DB7C(aBlock);
      v20 = *(*(v17 - 8) + 16);
      v53 = v18;
      v54 = v17;
      v20(v19, v18, v17);
      sub_10076F30C();
      sub_10000CFBC(aBlock, &unk_1009434C0, &qword_100783F60);
      sub_10076FBCC();

      if (!v16)
      {
        break;
      }

      v21 = v16;
      v66 = _swiftEmptyArrayStorage;
      sub_1007714EC();
      if (v16 < 0)
      {
        __break(1u);
        return;
      }

      v43[1] = v7;
      v52 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
      v47 = sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
      v22 = 0;
      v55 = v11;
      v51 = v11 & 0xC000000000000001;
      v50 = enum case for DispatchPredicate.onQueue(_:);
      v49 = (v48 + 13);
      ++v48;
      v46 &= 1u;
      v45 = &v61;
      while (1)
      {
        if (v51)
        {
          v23 = sub_10077149C();
        }

        else
        {
          v23 = *(v55 + 8 * v22 + 32);
        }

        *v6 = sub_10077068C();
        v24 = v58;
        (*v49)(v6, v50, v58);
        v25 = sub_10076F16C();
        (*v48)(v6, v24);
        if ((v25 & 1) == 0)
        {
          break;
        }

        v11 = v21;
        if (qword_10093FB50 != -1)
        {
          swift_once();
        }

        v26 = qword_10094E478;
        v27 = swift_allocObject();
        swift_weakInit();
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        *(v28 + 24) = v23;
        v29 = v26;

        v7 = sub_100770F1C();
        swift_beginAccess();
        sub_10076E16C();
        swift_endAccess();
        v30 = v65;
        if (v65)
        {
          [v65 removeActionForIdentifier:v29 forControlEvents:0x2000];
          [v30 addAction:v7 forControlEvents:0x2000];
          v31 = v30;
        }

        else
        {
          sub_100016F40(0, &qword_100947240, UIButton_ptr);
          v32 = v7;
          v68.value.super.super.isa = v7;
          v31 = sub_10077115C(UIButtonTypeSystem, v68).super.super.super.super.isa;
          v30 = 0;
        }

        v33 = swift_allocObject();
        *(v33 + 16) = v46;
        v34 = v56;
        *(v33 + 24) = v23;
        *(v33 + 32) = v34;
        v63 = sub_100236908;
        v64 = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v61 = sub_100177EA0;
        v62 = &unk_10088DB88;
        v35 = _Block_copy(aBlock);

        v36 = v34;
        v37 = v30;

        [(objc_class *)v31 setConfigurationUpdateHandler:v35];

        _Block_release(v35);
        v38 = [(objc_class *)v31 superview];
        v39 = v59;
        if (!v38 || (v7 = v38, sub_100016F40(0, &qword_1009441F0, UIView_ptr), v40 = v39, v41 = sub_100770EEC(), v7, v40, (v41 & 1) == 0))
        {
          [v39 addSubview:v31];
        }

        ++v22;
        sub_1007714CC();
        sub_1007714FC();
        sub_10077150C();
        sub_1007714DC();
        v21 = v11;
        if (v11 == v22)
        {

          v42 = v66;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      swift_once();
    }

    v42 = _swiftEmptyArrayStorage;
    v39 = v59;
LABEL_29:
    *&v39[v44] = v42;
    swift_endAccess();

    [v39 setNeedsLayout];
  }
}

void sub_100233670(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_10076F7FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_guidedSearchResult);
    if (v11 && (swift_beginAccess(), (v12 = swift_weakLoadStrong()) != 0))
    {
      v13 = v12;
      v14 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills;
      swift_beginAccess();
      v15 = *&v10[v14];

      v51 = sub_10076413C();
      v42 = v10;
      v40 = v11;
      if (v15 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
      {
        v49 = v15 & 0xFFFFFFFFFFFFFF8;
        v50 = v15 & 0xC000000000000001;
        v17 = v51 & 0xFFFFFFFFFFFFFF8;
        v52 = v51 & 0xFFFFFFFFFFFFFF8;
        if (v51 < 0)
        {
          v17 = v51;
        }

        v39 = v17;
        v47 = v51 & 0xC000000000000001;
        v45 = (v6 + 48);
        v44 = (v6 + 32);
        v43 = (v6 + 8);
        v18 = 4;
        v48 = v51 >> 62;
        v46 = i;
        v41 = v4;
        while (1)
        {
          v19 = v18 - 4;
          if (v50)
          {
            v20 = sub_10077149C();
          }

          else
          {
            if (v19 >= *(v49 + 16))
            {
              goto LABEL_34;
            }

            v20 = *(v15 + 8 * v18);
          }

          v21 = v20;
          v22 = v18 - 3;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v48)
          {
            if (v19 == sub_10077158C())
            {
LABEL_30:

              goto LABEL_31;
            }
          }

          else if (v19 == *(v52 + 16))
          {
            goto LABEL_30;
          }

          if (v47)
          {
            v6 = sub_10077149C();
          }

          else
          {
            if (v19 >= *(v52 + 16))
            {
              goto LABEL_35;
            }

            v6 = *(v51 + 8 * v18);
          }

          sub_10076323C();
          if ((*v45)(v4, 1, v5) == 1)
          {

            sub_10000CFBC(v4, &qword_1009492E0, &qword_1007893A0);
          }

          else
          {
            (*v44)(v8, v4, v5);
            v23 = v21;
            if ([v23 isHidden])
            {
            }

            else
            {
              [v23 frame];
              v25 = v24;
              v27 = v26;
              v29 = v28;
              v31 = v30;

              v32 = v13;
              v33 = v15;
              v34 = v5;
              v35 = v8;
              v36 = v42;
              v37 = [v42 superview];
              v38 = v36;
              v8 = v35;
              v5 = v34;
              v15 = v33;
              v13 = v32;
              v4 = v41;
              [v38 convertRect:v37 toView:{v25, v27, v29, v31}];

              sub_1007660EC();
            }

            (*v43)(v8, v5);
          }

          ++v18;
          if (v22 == v46)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        ;
      }

LABEL_31:
    }

    else
    {
    }
  }
}

void sub_100233B6C(uint64_t a1)
{
  v2 = v1;
  v60.receiver = v1;
  v60.super_class = type metadata accessor for GuidedSearchResultContentView();
  objc_msgSendSuper2(&v60, "layoutSubviews");
  sub_10076422C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v1 traitCollection];
  [v11 displayScale];
  if (v12 != 3.0)
  {

    goto LABEL_5;
  }

  v13 = sub_10077071C();

  if (v13)
  {
LABEL_5:
    v14 = 1.0;
    goto LABEL_6;
  }

  v14 = 0.666666667;
LABEL_6:
  [v2 effectiveUserInterfaceLayoutDirection];
  v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_topSeparator];
  v61.origin.x = v4;
  v61.origin.y = v6;
  v61.size.width = v8;
  v61.size.height = v10;
  MinX = CGRectGetMinX(v61);
  v62.origin.x = v4;
  v62.origin.y = v6;
  v62.size.width = v8;
  v62.size.height = v10;
  v59 = v14;
  [v15 setFrame:{MinX, 0.0, CGRectGetWidth(v62), v14}];
  v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title];
  v63.origin.x = v4;
  v63.origin.y = v6;
  v63.size.width = v8;
  v63.size.height = v10;
  CGRectGetMinX(v63);
  [v15 frame];
  CGRectGetMaxY(v64);
  [v17 sizeThatFits:{v8, v10}];
  [v2 bounds];
  sub_1007709DC();
  [v17 setFrame:?];
  v65.origin.x = v4;
  v65.origin.y = v6;
  v65.size.width = v8;
  v65.size.height = v10;
  v18 = CGRectGetMinX(v65);
  [v17 frame];
  MaxY = CGRectGetMaxY(v66);
  [v2 bounds];
  v20 = CGRectGetMaxY(v67);
  v21 = [v2 traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  v23 = sub_10076FF9C();
  v25 = v24;
  if (v23 == sub_10076FF9C() && v25 == v26)
  {

    goto LABEL_10;
  }

  v27 = sub_10077167C();

  if (v27)
  {
LABEL_10:
    v28 = sub_10077088C();

    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v30 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills;
    swift_beginAccess();
    v31 = *&v2[v30];
    if (v31 >> 62)
    {
LABEL_39:
      v32 = sub_10077158C();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v32 != 0;
    v68.origin.x = v4;
    v68.origin.y = v6;
    v68.size.width = v8;
    v68.size.height = v10;
    Width = CGRectGetWidth(v68);
    v35 = *&v2[v30];
    v58 = v2;
    if (v35 >> 62)
    {
      v36 = sub_10077158C();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v36)
    {
      goto LABEL_36;
    }

    v37 = 0;
    v52 = v20 - v59 + -12.0;
    v53 = MaxY + 16.0;
    v2 = (v35 & 0xC000000000000001);
    v20 = 1.79769313e308;
    while (2)
    {
      v30 = v33;
      while (2)
      {
        v38 = v37;
        while (1)
        {
          if (v2)
          {
            v39 = sub_10077149C();
          }

          else
          {
            if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v39 = *(v35 + 8 * v38 + 32);
          }

          v40 = v39;
          v37 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v29 >= v30)
          {
            break;
          }

          [v39 setHidden:1];

          ++v38;
          if (v37 == v36)
          {
            goto LABEL_36;
          }
        }

        v54 = v20;
        v55 = Width;
        [v39 sizeThatFits:{Width, v20}];
        v42 = v41;
        MaxY = v43;
        v44 = v18;
        v45 = v18 + v41;
        v69.size.width = v8;
        v56 = v6;
        v57 = v4;
        v69.origin.x = v4;
        v69.size.height = v10;
        v69.origin.y = v6;
        if (CGRectGetMaxX(v69) >= v45)
        {
          v33 = v30;
          v46 = v44;
          v47 = v53;
          v48 = 8.0;
        }

        else
        {
          v33 = v30 + 1;
          if (v29 <= v30)
          {
            [v40 setHidden:1];

            ++v30;
            v18 = v44;
            Width = v55;
            v20 = v54;
            if (v37 != v36)
            {
              continue;
            }

LABEL_36:

            v49 = *&v58[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_bottomSeparator];
            v72.origin.x = v4;
            v72.origin.y = v6;
            v72.size.width = v8;
            v72.size.height = v10;
            v50 = CGRectGetMinX(v72);
            [v58 bounds];
            v51 = CGRectGetMaxY(v73) - v59;
            v74.origin.x = v4;
            v74.origin.y = v6;
            v74.size.width = v8;
            v74.size.height = v10;
            [v49 setFrame:{v50, v51, CGRectGetWidth(v74), v59}];
            return;
          }

          v70.origin.y = v6;
          v70.origin.x = v4;
          v70.size.width = v8;
          v70.size.height = v10;
          v46 = CGRectGetMinX(v70);
          v48 = 8.0;
          v47 = v53 + MaxY + 8.0;
        }

        break;
      }

      [v58 bounds];
      v53 = v47;
      sub_1007709DC();
      [v40 setFrame:?];
      v18 = v42 + v48 + v46;
      [v40 frame];
      [v40 setHidden:v52 < CGRectGetMaxY(v71)];

      Width = v55;
      v6 = v56;
      v4 = v57;
      v20 = v54;
      if (v37 != v36)
      {
        continue;
      }

      goto LABEL_36;
    }
  }

  __break(1u);
}

id sub_1002341FC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  result = [v0 setNumberOfLines:0];
  qword_10094E4B0 = v0;
  return result;
}

id sub_10023424C()
{
  result = [objc_opt_self() buttonWithType:1];
  qword_10094E4B8 = result;
  return result;
}

uint64_t sub_10023428C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1002342D0()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_guidedSearchResult) = 0;

  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title) setText:0];
  v1 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  sub_1002362DC((v0 + v1), 0x4665726170657270, 0xEF6573756552726FLL, v2);
  return swift_endAccess();
}

double sub_100234374()
{
  swift_beginAccess();

  return result;
}

double sub_1002343BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100234474()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_1002344D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

void (*sub_100234590())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_1002368A4;
}

uint64_t sub_100234684(uint64_t a1, uint64_t a2, double a3)
{
  *(a1 + 8) = sub_100236B10(&qword_10094E528, a2, type metadata accessor for GuidedSearchResultContentView, &unk_10079670C);
  result = sub_100236B10(&qword_10094E530, v4, type metadata accessor for GuidedSearchResultContentView, &unk_10079673C);
  *(a1 + 16) = result;
  return result;
}

void sub_100234708(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10000A5D4(&qword_10094E578, &qword_1007968E0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1002347E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1002348EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100234A00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_10000A5D4(&qword_10094E570, &unk_1007A5DE0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000A5D4(&qword_10094E560, &qword_1007968C8);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100234B14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10000A5D4(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_100234CB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      sub_10000A5D4(&qword_10094E580, &qword_1007968E8);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

id sub_100234D88(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title];
  result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  if (result)
  {
    v4 = result;
    [v2 setFont:result];

    return [a1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100234E2C(uint64_t a1, char a2, char *a3, double a4, double a5)
{
  LOBYTE(v6) = a2;
  v89 = sub_10076D1AC();
  v10 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10075D9EC();
  __chkstk_darwin(v12 - 8);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&qword_100942698, &qword_10079DCB0);
  __chkstk_darwin(v14 - 8);
  v86 = &v79 - v15;
  v16 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v16 - 8);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v79 - v20;
  if (qword_10093FB70 != -1)
  {
LABEL_45:
    swift_once();
  }

  v22 = qword_10094E4B8;
  v90 = a3;
  sub_100231A20(0, 0, a3, v6 & 1);
  v23 = sub_10077111C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v97 = v23;
  v25(v21, 0, 1);
  sub_10077114C();
  sub_10000A5D4(&qword_10094E560, &qword_1007968C8);
  v26 = swift_allocObject();
  v81 = xmmword_100783DD0;
  *(v26 + 16) = xmmword_100783DD0;
  *(v26 + 32) = _swiftEmptyArrayStorage;
  v27 = *(a1 + 16);
  if (v27)
  {
    v91 = v21;
    v21 = 0;
    v96 = (v24 + 48);
    v85 = (v10 + 104);
    v84 = NSFontAttributeName;
    v83 = (v10 + 8);
    v82 = enum case for FontSource.useCase(_:);
    v28 = a1 + 40;
    v98 = v22;
    v94 = v18;
    v95 = v27;
    v80 = a1 + 40;
    do
    {
      v29 = (v26 + 24);
      a3 = v21;
      v30 = a4;
      v6 = (v28 + 16 * v21);
      v93 = v26;
      while (1)
      {
        if (a3 >= v27)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v21 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          goto LABEL_41;
        }

        v31 = *(v6 - 1);
        a1 = *v6;

        sub_10077113C();
        v32 = (*v96)(v18, 1, v97);
        v99 = a3 + 1;
        if (v32)
        {
          v33 = v18;
          v10 = &unk_10095B400;
          v21 = v29;
          v34 = v26;
          v35 = v18;
          v18 = &unk_100783F80;
          sub_100016E2C(v33, v91, &unk_10095B400, &unk_100783F80);
          sub_10077114C();
          v36 = v35;
          v26 = v34;
          v29 = v21;
          sub_10000CFBC(v36, &unk_10095B400, &unk_100783F80);
        }

        else
        {
          v92 = v31;
          v37 = v84;
          v102[0] = v84;
          v38 = qword_100940EE0;

          v39 = v37;
          if (v38 != -1)
          {
            swift_once();
          }

          v40 = sub_10076D3DC();
          v41 = sub_10000A61C(v40, qword_1009A1A98);
          v42 = v88;
          (*(*(v40 - 8) + 16))(v88, v41, v40);
          v43 = v89;
          (*v85)(v42, v82, v89);
          v44.super.isa = v90;
          isa = sub_10076D19C(v44).super.isa;
          (*v83)(v42, v43);
          v102[4] = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
          v102[1] = isa;
          sub_10000A5D4(&unk_10094E800, &qword_10078B4E8);
          v46 = sub_1007715DC();

          sub_100016E2C(v102, &v100, &unk_100948B10, &unk_10078B4F0);
          v10 = v100;
          v47 = sub_1006113DC();
          if (v48)
          {
            goto LABEL_43;
          }

          v46[(v47 >> 6) + 8] |= 1 << v47;
          *(v46[6] + 8 * v47) = v10;
          sub_10000CD64(&v101, (v46[7] + 32 * v47));
          v49 = v46[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_44;
          }

          v46[2] = v51;

          sub_10000CFBC(v102, &unk_100948B10, &unk_10078B4F0);
          sub_10075DA0C();
          v52 = v86;
          sub_10075D9AC();
          v53 = sub_10075D99C();
          (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
          sub_10077101C();
          v22 = v98;
          sub_10077114C();
        }

        [v22 sizeThatFits:{a5, 1.79769313e308}];
        v55 = v54;
        v57 = v56;
        if (v30 + v54 > a5)
        {
          break;
        }

        v10 = *(v26 + 16);
        if (!v10)
        {
          goto LABEL_42;
        }

        v58 = *&v29[8 * v10];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v29[8 * v10] = v58;
        v18 = v94;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = sub_10049E358(0, *(v58 + 2) + 1, 1, v58);
          *&v29[8 * v10] = v58;
        }

        v61 = *(v58 + 2);
        v60 = *(v58 + 3);
        if (v61 >= v60 >> 1)
        {
          *&v29[8 * v10] = sub_10049E358((v60 > 1), v61 + 1, 1, v58);
        }

        v30 = v30 + v55 + 8.0;

        v62 = *&v29[8 * v10];
        *(v62 + 16) = v61 + 1;
        v63 = v62 + 16 * v61;
        *(v63 + 32) = v55;
        *(v63 + 40) = v57;
        ++a3;
        v6 += 2;
        v27 = v95;
        v26 = v93;
        v22 = v98;
        if (v99 == v95)
        {
          goto LABEL_25;
        }
      }

      sub_10000A5D4(&qword_10094E568, &unk_1007968D0);
      v64 = swift_allocObject();
      *(v64 + 16) = v81;
      *(v64 + 32) = v55;
      *(v64 + 40) = v57;
      v66 = *(v26 + 16);
      v65 = *(v26 + 24);
      if (v66 >= v65 >> 1)
      {
        v26 = sub_10049E45C((v65 > 1), v66 + 1, 1, v26);
      }

      v18 = v94;
      v21 = v99;

      *(v26 + 16) = v66 + 1;
      *(v26 + 8 * v66 + 32) = v64;
      v27 = v95;
      v28 = v80;
    }

    while (v21 != v95);
  }

LABEL_25:
  v67 = [(objc_class *)v90 preferredContentSizeCategory];
  v68 = sub_10076FF9C();
  v70 = v69;
  if (v68 == sub_10076FF9C() && v70 == v71)
  {
  }

  else
  {
    v72 = sub_10077167C();

    if ((v72 & 1) == 0)
    {
      __break(1u);
      return;
    }
  }

  v73 = sub_10077088C();

  v74 = 2;
  if (v73)
  {
    v74 = 3;
  }

  if (*(v26 + 16) >= v74)
  {
    v75 = v74;
  }

  else
  {
    v75 = *(v26 + 16);
  }

  sub_10077169C();
  swift_unknownObjectRetain_n();
  v76 = swift_dynamicCastClass();
  if (!v76)
  {
    swift_unknownObjectRelease();
    v76 = _swiftEmptyArrayStorage;
  }

  v77 = v76[2];

  if (v77 == v75)
  {
    v78 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v78)
    {
      return;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_100234A00(v26, v26 + 32, 0, (2 * v75) | 1);
  }

  swift_unknownObjectRelease();
}

void sub_10023582C(uint64_t a1, char a2, char *a3, double a4)
{
  sub_100234E2C(a1, a2 & 1, a3, 0.0, a4);
  v5 = v4;
  v6 = *(v4 + 16);
  if (!v6)
  {
LABEL_20:

    return;
  }

  v7 = 0;
  v20 = v4 + 32;
  v8 = -8.0;
  while (v7 < *(v5 + 16))
  {
    v9 = *(v20 + 8 * v7);
    v10 = *(v9 + 16);
    if (v10)
    {

      sub_1004BBAA4(0, v10, 0);
      v11 = _swiftEmptyArrayStorage;
      v12 = _swiftEmptyArrayStorage[2];
      v13 = (v9 + 40);
      do
      {
        v14 = *v13;
        v21 = v11;
        v15 = *(v11 + 3);
        v16 = v12 + 1;
        if (v12 >= v15 >> 1)
        {
          sub_1004BBAA4((v15 > 1), v12 + 1, 1);
          v11 = v21;
        }

        *(v11 + 2) = v16;
        v11[v12 + 4] = v14;
        v13 += 2;
        ++v12;
        --v10;
      }

      while (v10);
LABEL_13:
      v17 = v11[4];
      v18 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 5;
        do
        {
          if (v17 < v11[v19])
          {
            v17 = v11[v19];
          }

          ++v19;
          --v18;
        }

        while (v18);
      }

      goto LABEL_4;
    }

    v16 = _swiftEmptyArrayStorage[2];

    v11 = _swiftEmptyArrayStorage;
    if (v16)
    {
      goto LABEL_13;
    }

    v17 = 0.0;
LABEL_4:
    ++v7;
    v8 = v8 + v17 + 8.0;
    if (v7 == v6)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

id sub_1002359F8(void *a1)
{
  v1 = sub_10076207C();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v65 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v59 - v5;
  v64 = sub_10076C36C();
  v7 = *(v64 - 8);
  __chkstk_darwin(v64);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v59 - v11;
  v13 = sub_10076C38C();
  v60 = *(v13 - 8);
  v61 = v13;
  __chkstk_darwin(v13);
  v68 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v18 = v6;
  v19 = v64;
  (*(v4 + 8))(v18, v3);
  v20 = v17;
  v21 = v65;
  v22 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v71)
  {
    v22 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v7 + 104))(v12, *v22, v19);
  sub_10076C24C();
  v63 = v23;
  sub_10076C26C();
  v62 = v24;
  sub_10076C25C();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076203C();
  (*(v7 + 16))(v9, v12, v19);
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  v25 = v68;
  sub_10076C33C();
  (*(v66 + 8))(v21, v67);
  (*(v7 + 8))(v12, v19);
  sub_10076414C();
  sub_100236B10(&qword_10094E558, 255, &type metadata accessor for GuidedSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  v26 = v71;
  swift_getKeyPath();
  sub_10076338C();

  v27 = v70;
  [v70 displayScale];
  if (v28 == 3.0)
  {
    v29 = sub_10077071C();

    if ((v29 & 1) == 0)
    {
      v30 = 0.666666667;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v30 = 1.0;
LABEL_10:
  sub_10076C2FC();
  sub_10076C2EC();
  sub_100770ACC();
  v32 = v31;
  swift_getKeyPath();
  sub_10076338C();

  v33 = v70;
  if (v26)
  {
    LODWORD(v67) = byte_10094DD10;
    v34 = v30 + 20.0;

    v35 = sub_10076412C();
    v59 = v20;
    if (!v36)
    {
      goto LABEL_20;
    }

    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (!v37)
    {

      goto LABEL_20;
    }

    if (qword_10093FB68 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v38 = qword_10094E4B0;
      result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
      if (!result)
      {
        break;
      }

      v40 = result;
      [v38 setFont:result];

      v41 = sub_10076FF6C();
      [v38 setText:v41];

      [v38 sizeThatFits:{v32, 1.79769313e308}];
      v43 = v42;

      v34 = v34 + v43 + 16.0;
LABEL_20:
      v46 = sub_10076413C();
      v47 = v46;
      if (v46 >> 62)
      {
        v48 = sub_10077158C();
        if (!v48)
        {
LABEL_32:

          v50 = _swiftEmptyArrayStorage;
LABEL_33:
          sub_10023582C(v50, v67 & 1, v33, v32);

          v57 = v61;
          v58 = *(v60 + 8);
          v58(v68, v61);
          return (v58)(v59, v57);
        }
      }

      else
      {
        v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v48)
        {
          goto LABEL_32;
        }
      }

      v69 = _swiftEmptyArrayStorage;
      sub_1004BBB24(0, v48 & ~(v48 >> 63), 0);
      if ((v48 & 0x8000000000000000) == 0)
      {
        v65 = v33;
        v66 = v26;
        v49 = 0;
        v50 = v69;
        do
        {
          if ((v47 & 0xC000000000000001) != 0)
          {
            sub_10077149C();
          }

          else
          {
          }

          v51 = sub_10076322C();
          v53 = v52;

          v69 = v50;
          v55 = v50[2];
          v54 = v50[3];
          if (v55 >= v54 >> 1)
          {
            sub_1004BBB24((v54 > 1), v55 + 1, 1);
            v50 = v69;
          }

          ++v49;
          v50[2] = v55 + 1;
          v56 = &v50[2 * v55];
          v56[4] = v51;
          v56[5] = v53;
        }

        while (v48 != v49);

        v33 = v65;
        goto LABEL_33;
      }

      __break(1u);
LABEL_35:
      swift_once();
    }

    __break(1u);
  }

  else
  {

    v44 = v61;
    v45 = *(v60 + 8);
    v45(v25, v61);
    return (v45)(v20, v44);
  }

  return result;
}

void sub_1002362DC(unint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_10076F13C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  *v10 = sub_10077068C();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = sub_10076F16C();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v28 = a2;
    if (qword_10093FB60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_10076FD4C();
  sub_10000A61C(v12, qword_10094E498);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100785C70;
  v32 = sub_10000A5D4(&qword_10094E538, &qword_1007967F8);
  v31[0] = &type metadata for GuidedSearchTokenPill;
  sub_10076F30C();
  sub_10000CFBC(v31, &unk_1009434C0, &qword_100783F60);
  sub_10076F27C();
  v13 = *a1;
  v29 = *a1 >> 62;
  v27 = a1;
  if (v29)
  {
    v14 = sub_10077158C();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = &type metadata for Int;
  v31[0] = v14;
  sub_10076F30C();
  sub_10000CFBC(v31, &unk_1009434C0, &qword_100783F60);
  sub_10076F27C();
  v32 = &type metadata for String;
  v31[0] = v28;
  v31[1] = a3;

  sub_10076F30C();
  sub_10000CFBC(v31, &unk_1009434C0, &qword_100783F60);
  sub_10076FBCC();

  if (v29)
  {
    v16 = sub_10077158C();
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  if (v16 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    v25 = sub_10077158C();
    if ((v25 & 0x8000000000000000) == 0)
    {
LABEL_35:
      v22 = v25;
      goto LABEL_21;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = 0;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v18 = sub_10077149C();
    }

    else
    {
      v18 = *(v13 + 8 * v17 + 32);
    }

    v19 = v18;
    if (qword_10093FB58 != -1)
    {
      swift_once();
    }

    ++v17;
    v20 = sub_10000A5D4(&qword_10094E540, &qword_1007A6DC0);
    sub_10000A61C(v20, qword_10094E480);
    v30 = v19;
    swift_beginAccess();
    sub_10076E17C();
    swift_endAccess();
  }

  while (v16 != v17);
LABEL_17:
  v21 = v27;
  if (!v29 && (swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) != 0)
  {
    if (!(*v21 >> 62))
    {
      v22 = *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
      sub_10061BE9C(0, v22);
      return;
    }

    goto LABEL_32;
  }

  if (*v21 >> 62)
  {
    v24 = sub_10077158C();
    v25 = sub_10077158C();
    if (v25 < 0)
    {
      goto LABEL_34;
    }

    v26 = sub_10077158C();
    if (v24 < 0 || v26 < v24)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  v23 = sub_1004A01D4(v15);

  *v21 = v23;
}

uint64_t sub_100236830()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100236868()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002368C8()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100236914(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10023692C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_topSeparator;
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = objc_opt_self();
  v4 = [v3 separatorColor];
  [v2 setBackgroundColor:v4];

  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_title;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_pills) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_bottomSeparator;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = [v3 separatorColor];
  [v7 setBackgroundColor:v8];

  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_guidedSearchResult) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsCalculator) = 0;
  v9 = (v0 + OBJC_IVAR____TtC20ProductPageExtension29GuidedSearchResultContentView_impressionsUpdateBlock);
  *v9 = 0;
  v9[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100236AD0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100236B10(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100236B7C()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_10099DC78);
  sub_10000A61C(v0, qword_10099DC78);
  sub_10076D3AC();
  return result;
}

uint64_t sub_100236BD0()
{
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  result = sub_100770D9C();
  qword_10099DC90 = result;
  return result;
}

uint64_t sub_100236C14()
{
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  result = sub_100770D5C();
  qword_10099DC98 = result;
  return result;
}

uint64_t sub_100236CDC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099DCE8);
  sub_10000A61C(v4, qword_10099DCE8);
  if (qword_10093FB90 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_10099DCA0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100236EB0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099DD00);
  sub_10000A61C(v4, qword_10099DD00);
  if (qword_10093FB98 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_10099DCB8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100237084()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099DD18);
  sub_10000A61C(v4, qword_10099DD18);
  if (qword_10093FBA0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_10099DCD0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

id sub_100237258(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialTypeLabel];
  if (a2)
  {
    v5 = sub_10076FF6C();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  [v4 setHidden:a2 == 0];
  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_subtitleLabel];
  if ([v4 isHidden])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setNumberOfLines:v7];

  return [v2 setNeedsLayout];
}

id sub_10023733C()
{
  v1 = sub_10076048C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  }

  else
  {
    (*(v2 + 104))(v5, enum case for SystemImage.appstore(_:), v1, v3);
    sub_100016F40(0, &qword_100942F00, UIFont_ptr);
    if (qword_10093FB90 != -1)
    {
      swift_once();
    }

    v9 = sub_10076D3DC();
    sub_10000A61C(v9, qword_10099DCA0);
    v10 = [v0 traitCollection];
    v11 = v0;
    v12 = sub_100770B3C();

    v13 = [objc_opt_self() configurationWithFont:v12];
    v14 = sub_10076046C();

    (*(v2 + 8))(v5, v1);
    v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];

    v16 = *&v11[v6];
    *&v11[v6] = v15;
    v8 = v15;

    v7 = 0;
  }

  v17 = v7;
  return v8;
}

void (*sub_100237564(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1002375B8;
}

void sub_1002375B8(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_10023D684(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v10 = v4;
        v11 = sub_100770EEC();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_10023D684(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v16 = v4;
      v17 = sub_100770EEC();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [v20 addSubview:v19];
  }

  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

char *sub_100237874(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v14 - 8);
  v16 = v46 - v15;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_showEditorialIcon] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView] = 0;
  if (qword_10093FB90 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D3DC();
  v18 = sub_10000A61C(v17, qword_10099DCA0);
  v19 = *(v17 - 8);
  v48 = *(v19 + 16);
  v48(v16, v18, v17);
  v47 = *(v19 + 56);
  v47(v16, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v21 = *(v11 + 104);
  v46[1] = v11 + 104;
  v21(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = sub_1007626BC();
  v23 = objc_allocWithZone(v22);
  v46[0] = v10;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialTypeLabel] = sub_1007626AC();
  if (qword_10093FB98 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v17, qword_10099DCB8);
  v48(v16, v24, v17);
  v47(v16, 0, 1, v17);
  v21(v13, v20, v46[0]);
  v25 = objc_allocWithZone(v22);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_titleLabel] = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_subtitleLabel] = sub_10076269C();
  v26 = type metadata accessor for EditorialSearchResultContentView();
  v49.receiver = v5;
  v49.super_class = v26;
  v27 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v32 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_subtitleLabel;
  v33 = qword_10093FBA0;
  v34 = *&v31[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_subtitleLabel];
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A61C(v17, qword_10099DCD0);
  v48(v16, v35, v17);
  v47(v16, 0, 1, v17);
  sub_1007625DC();

  [*&v31[v32] setLineBreakMode:4];
  v36 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialTypeLabel;
  [v31 addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialTypeLabel]];
  v37 = sub_10023733C();
  [v31 addSubview:v37];

  [v31 addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_titleLabel]];
  [v31 addSubview:*&v31[v32]];
  v38 = *&v31[v36];
  v39 = [v31 tintColor];
  [v38 setTextColor:v39];

  v40 = *&v31[v32];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v41 = v40;
  v42 = sub_100770D1C();
  [v41 setTextColor:v42];

  v43 = *&v31[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  v44 = [v31 tintColor];

  [v43 setTintColor:v44];
  return v31;
}

void sub_100237ED0()
{
  v1 = v0;
  v152 = sub_10077164C();
  v144 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3 = COERCE_DOUBLE(sub_10076D9AC());
  v146 = *(v3 - 8);
  __chkstk_darwin(v3);
  v153 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100948208, &qword_10078A938);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v141 = (&v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v155 = &v139 - v9;
  __chkstk_darwin(v10);
  v12 = (&v139 - v11);
  __chkstk_darwin(v13);
  v150 = (&v139 - v14);
  __chkstk_darwin(v15);
  v17 = &v139 - v16;
  v18 = type metadata accessor for EditorialSearchResultContentView();
  v163.receiver = v0;
  v163.super_class = v18;
  v157 = v18;
  objc_msgSendSuper2(&v163, "layoutSubviews");
  sub_10000A5D4(&qword_100948210, qword_10078A940);
  v19 = *(v6 + 72);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v147 = v20;
  v148 = v21;
  v22 = v21 + v20;
  v23 = *(v5 + 48);
  v142 = v1;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialTypeLabel];
  *(v21 + v20) = v24;
  v25 = qword_10093FBA8;
  v149 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v3, qword_10099DCE8);
  v159 = *(v146 + 16);
  (*&v159)(v22 + v23, v26, v3);
  *&v160 = *(v5 + 48);
  v27 = *&v142[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_titleLabel];
  *(v22 + v19) = v27;
  v28 = v5;
  v29 = qword_10093FBB0;
  v30 = v27;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v3, qword_10099DD00);
  (*&v159)(v22 + v19 + *&v160, v31, v3);
  v154 = v19;
  v32 = (v22 + 2 * v19);
  v156 = v28;
  v33 = *(v28 + 48);
  v34 = *&v142[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_subtitleLabel];
  *v32 = v34;
  v35 = qword_10093FBB8;
  v36 = v34;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A61C(v3, qword_10099DD18);
  v160 = *&v3;
  (*&v159)(&v32[v33], v37, v3);
  *&v159 = v146 + 8;
  v38 = _swiftEmptyArrayStorage;
  v39 = 3;
  v145 = v22;
  v40 = v22;
  v41 = v154;
  do
  {
    sub_1000E96E4(v40, v17);
    sub_1000E96E4(v17, v12);
    v42 = *v12;
    v43 = *(v156 + 48);
    v44 = [*v12 isHidden];

    v158 = **&v159;
    (*&v158)(v12 + v43, *&v160);
    if (v44)
    {
      sub_10000CFBC(v17, &qword_100948208, &qword_10078A938);
    }

    else
    {
      sub_1000E9754(v17, v155);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v162[0] = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004BBBA8(0, v38[2] + 1, 1);
        v38 = v162[0];
      }

      v47 = v38[2];
      v46 = v38[3];
      if (v47 >= v46 >> 1)
      {
        sub_1004BBBA8((v46 > 1), v47 + 1, 1);
        v38 = v162[0];
      }

      v38[2] = v47 + 1;
      sub_1000E9754(v155, v147 + v38 + v47 * v41);
    }

    v40 += v41;
    --v39;
  }

  while (v39);
  swift_setDeallocating();
  v48 = v156;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v49 = v38[2];
  v50 = v142;
  if (v49)
  {
    v155 = *(v48 + 48);
    v51 = sub_100016F40(0, &qword_10094D040, NSObject_ptr);
    v143 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon;
    v52 = v147 + v38;
    v147 = (v146 + 32);
    v148 = v51;
    v145 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_showEditorialIcon;
    v146 = *&v144 + 8;
    v53 = 0.0;
    v139 = v52;
    v140 = v49;
    v54 = *&v160;
    v55 = v153;
    do
    {
      v57 = v150;
      sub_1000E96E4(v52, v150);
      v58 = *v57;
      (*v147)(v55, v57 + v155, v54);
      v59 = v58;
      sub_10076422C();
      [v59 sizeThatFits:{v60, v61}];
      v63 = v62;
      v65 = v64;
      sub_10076422C();
      if (v63 >= v66)
      {
        v67 = v66;
      }

      else
      {
        v67 = v63;
      }

      v68 = [v50 traitCollection];
      v69 = v151;
      sub_10076D17C();
      sub_10076D97C();
      v71 = v70;

      (*v146)(v69, v152);
      sub_10076422C();
      v72 = v53 + CGRectGetMinY(v165);
      [v59 firstBaselineFromTop];
      v74 = v72 + v71 - v73;
      if ((sub_100770EEC() & 1) != 0 && v50[v145] == 1)
      {
        v75 = sub_10023733C();
        [v75 bounds];
        v77 = v76;
        v144 = v67;
        v79 = v78;

        sub_10076422C();
        MinX = CGRectGetMinX(v166);
        v81 = *&v50[v143];
        sub_10076422C();
        sub_100770A4C();
        [v81 setFrame:?];

        v167.origin.x = MinX;
        v167.origin.y = v65 * 0.5 + v74 - v79 * 0.5;
        v167.size.width = v77;
        v167.size.height = v79;
        CGRectGetMaxX(v167);
      }

      else
      {
        sub_10076422C();
        CGRectGetMinX(v164);
      }

      v56 = v154;
      sub_10076422C();
      sub_100770A4C();
      [v59 setFrame:?];

      v55 = v153;
      v54 = *&v160;
      (*&v158)(v153, *&v160);
      v53 = v53 + v71;
      v52 += v56;
      --v49;
    }

    while (v49);
    if (v140 > v38[2])
    {
      __break(1u);
      return;
    }

    v82 = v141;
    sub_1000E96E4(v139 + (v140 - 1) * v56, v141);

    v83 = *v82;
    v84 = *(v156 + 48);
    [*v82 frame];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;

    v168.origin.x = v86;
    v168.origin.y = v88;
    v168.size.width = v90;
    v168.size.height = v92;
    MaxY = CGRectGetMaxY(v168);
    (*&v158)(v82 + v84, v54);
  }

  else
  {

    MaxY = 0.0;
    v54 = *&v160;
  }

  sub_10076422C();
  v94 = MaxY + CGRectGetMinY(v169);
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v54, qword_1009A2350);
  v95 = [v50 traitCollection];
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1007841E0;
  *(v96 + 32) = v95;
  v97 = v95;
  v98 = sub_10076DEEC();
  sub_10076D3EC();
  v100 = v99;

  v101 = v94 + v100;
  sub_10076422C();
  v102 = CGRectGetMinX(v170);
  sub_10076422C();
  v103 = CGRectGetMaxY(v171) - v101;
  if (qword_10093FB78 != -1)
  {
    swift_once();
  }

  v104 = sub_10076D39C();
  sub_10000A61C(v104, qword_10099DC78);
  sub_10076D35C();
  v106 = v105;
  sub_10076422C();
  Width = CGRectGetWidth(v172);
  sub_10076D36C();
  if (Width < v106)
  {
    v106 = Width;
    v103 = v108;
  }

  v109 = *&v50[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView];
  if (v109)
  {
    v110 = v109;
    sub_10076422C();
    sub_100770A4C();
    sub_10075FC8C();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v112 = Strong;
    sub_10076422C();
    sub_100770A4C();
    [v112 setFrame:?];
  }

  v113 = *&v50[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid];
  if (v113)
  {
    v114 = v113;
    sub_10076422C();
    sub_100770A4C();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v123 = type metadata accessor for ArtworkGrid();
    v161.receiver = v114;
    v161.super_class = v123;
    objc_msgSendSuper2(&v161, "setFrame:", v116, v118, v120, v122);
    sub_10070ED18();
    [v114 setNeedsLayout];
  }

  v124 = *&v50[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView];
  if (v124)
  {
    v125 = *&v50[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView];
    if (v125)
    {
      v126 = v124;
      v127 = v125;
      [v127 setFrame:{v102, v101, v106, v103}];
      [v127 bounds];
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;
      sub_10075FCFC();
      v159 = v102;
      v160 = v101;
      v173.origin.x = v129;
      v173.origin.y = v131;
      v173.size.width = v133;
      v173.size.height = v135;
      CGRectGetMidX(v173);
      v158 = v106;
      v174.origin.x = v129;
      v174.origin.y = v131;
      v174.size.width = v133;
      v174.size.height = v135;
      CGRectGetMidY(v174);
      sub_10076422C();
      v106 = v158;
      v102 = v159;
      v101 = v160;
      sub_100770A4C();
      sub_10075FC8C();

      v50 = v142;
    }
  }

  v136 = *&v50[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
  if (v136)
  {
    v137 = v136;
    sub_1004B67D8(v162);
    sub_1004B8E04(v50, v162, v106, v103);
    sub_10005AE58(v162);
    v175.origin.x = v102;
    v175.origin.y = v101;
    v175.size.width = v106;
    v175.size.height = v103;
    CGRectGetMinX(v175);
    v176.size.width = v106;
    v176.origin.x = v102;
    v176.origin.y = v101;
    v176.size.height = v103;
    CGRectGetMinY(v176);
    v138 = v137;
    sub_10076422C();
    sub_100770A4C();
    [v138 setFrame:?];
  }
}

id sub_100238D00()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  [v1 setNeedsLayout];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10023D684(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v7 = [v6 superview];
    if (!v7)
    {
LABEL_9:

      goto LABEL_10;
    }

    v8 = v7;
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v9 = v1;
    v10 = sub_100770EEC();

    if (v10)
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v6 = v11;
        [v11 removeFromSuperview];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  swift_unknownObjectWeakAssign();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    [v1 addSubview:v12];
  }

  [v1 setNeedsLayout];
  sub_10023D130(0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid];
  if (v15)
  {
    [v15 removeFromSuperview];
    v16 = *&v1[v14];
  }

  else
  {
    v16 = 0;
  }

  *&v1[v14] = 0;

  [v1 setNeedsLayout];
  v17 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
  if (v18)
  {
    [v18 removeFromSuperview];
    v19 = *&v1[v17];
  }

  else
  {
    v19 = 0;
  }

  *&v1[v17] = 0;

  return [v1 setNeedsLayout];
}

double sub_100238F10(id a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for EditorialSearchResultContentView();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    v12 = sub_10023733C();
    sub_100016F40(0, &qword_100942F00, UIFont_ptr);
    if (qword_10093FB90 != -1)
    {
      swift_once();
    }

    v13 = sub_10076D3DC();
    sub_10000A61C(v13, qword_10099DCA0);
    v14 = [v1 traitCollection];
    v15 = sub_100770B3C();

    v16 = [objc_opt_self() configurationWithFont:v15];
    [v12 setPreferredSymbolConfiguration:v16];

    return result;
  }

  v5 = sub_10076FF9C();
  v7 = v6;
  if (v5 == sub_10076FF9C() && v7 == v8)
  {

    return result;
  }

  v10 = sub_10077167C();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_1002391D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076361C();
  v182 = *(v3 - 8);
  __chkstk_darwin(v3);
  v181 = v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076BF6C();
  __chkstk_darwin(v5 - 8);
  v180 = v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_10076BEDC();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v177 = v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v8 - 8);
  v193 = v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v192 = v174 - v11;
  v12 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v12 - 8);
  v191 = v174 - v13;
  v14 = sub_1007611EC();
  __chkstk_darwin(v14 - 8);
  v190 = v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v189 = v174 - v17;
  v18 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v18 - 8);
  v188 = v174 - v19;
  v187 = sub_10076121C();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v185 = v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076481C();
  v194 = *(v21 - 8);
  __chkstk_darwin(v21);
  v199 = v174 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_10076B96C();
  v208 = *(v213 - 8);
  __chkstk_darwin(v213);
  v212 = v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000A5D4(&qword_10094A430, &qword_100796AF0);
  __chkstk_darwin(v24 - 8);
  v197 = v174 - v25;
  v201 = sub_100761D4C();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v183 = v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v196 = v174 - v28;
  v29 = sub_100767FDC();
  v210 = *(v29 - 8);
  v211 = v29;
  __chkstk_darwin(v29);
  v207 = v174 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v203 = v174 - v32;
  __chkstk_darwin(v33);
  v35 = v174 - v34;
  v206 = sub_10076D39C();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v37 = v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10076DBBC();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100765F5C();
  sub_10023D684(&qword_10095A440, 255, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (!*&v215[0])
  {
    return;
  }

  v176 = v21;
  v202 = *&v215[0];
  v175 = v3;
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v204 = *&v215[0];
  sub_100763EEC();
  v195 = a2;
  sub_10076F63C();
  v42 = *&v215[0];
  v43 = v209;
  if (*&v215[0])
  {
    *&v214 = v209;
    type metadata accessor for EditorialSearchResultContentView();
    sub_10023D684(&qword_10094E640, v44, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);

    v45 = v43;
    sub_10077140C();
    sub_100763EDC();

    sub_100016C74(v215);
  }

  v198 = v42;
  v174[1] = type metadata accessor for EditorialSearchResultContentView();
  sub_10076422C();
  swift_getKeyPath();
  sub_10076338C();

  v46 = *&v215[0];
  if (qword_10093FB78 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v47 = v206;
    v48 = sub_10000A61C(v206, qword_10099DC78);
    v205[2](v37, v48, v47);
    sub_10076DBCC();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1007841E0;
    *(v49 + 32) = v46;
    v50 = v46;
    v51 = sub_10076DEEC();
    sub_10076D2AC();
    v53 = v52;
    v55 = v54;

    (*(v39 + 8))(v41, v38);
    v38 = v202;
    sub_100765F1C();
    v56 = (*(v210 + 88))(v35, v211);
    v57 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_showEditorialIcon;
    v184 = enum case for EditorialSearchResultType.appEventStory(_:);
    if (v56 == enum case for EditorialSearchResultType.category(_:) || v56 == enum case for EditorialSearchResultType.collection(_:) || v56 == enum case for EditorialSearchResultType.story(_:) || v56 == enum case for EditorialSearchResultType.appEventStory(_:))
    {
      v43[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_showEditorialIcon] = 1;
      v59 = sub_10023733C();
      [v59 setHidden:(v43[v57] & 1) == 0];

      [v43 setNeedsLayout];
    }

    else
    {
      v43[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_showEditorialIcon] = 0;
      v58 = sub_10023733C();
      [v58 setHidden:(v43[v57] & 1) == 0];

      [v43 setNeedsLayout];
      (*(v210 + 8))(v35, v211);
    }

    v60 = sub_100765ECC();
    sub_100237258(v60, v61);
    sub_100765F2C();
    v63 = v62;
    v64 = *&v43[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_titleLabel];
    v65 = v62 ? sub_10076FF6C() : 0;
    [v64 setText:v65];

    [v64 setHidden:v63 == 0];
    [v43 setNeedsLayout];
    sub_100765F3C();
    v67 = v66;
    v68 = *&v43[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_subtitleLabel];
    v69 = v66 ? sub_10076FF6C() : 0;
    [v68 setText:v69];

    [v68 setHidden:v67 == 0];
    [v43 setNeedsLayout];
    v70 = sub_100765EEC();
    if (!v70)
    {
      break;
    }

    v71 = v70;
    v72 = v197;
    sub_100765EBC();
    v73 = v200;
    v46 = v201;
    if ((*(v200 + 48))(v72, 1, v201) == 1)
    {

      sub_10000CFBC(v72, &qword_10094A430, &qword_100796AF0);
      break;
    }

    v93 = v196;
    (*(v73 + 32))(v196, v72, v46);
    v94 = v183;
    (*(v73 + 16))(v183, v93, v46);
    v95 = (*(v73 + 88))(v94, v46);
    if (v95 == enum case for ArtworkGridType.small(_:))
    {
      goto LABEL_32;
    }

    if (v95 == enum case for ArtworkGridType.large(_:))
    {
      v96 = 1;
    }

    else if (v95 == enum case for ArtworkGridType.extraLarge(_:))
    {
      v96 = 2;
    }

    else
    {
      if (v95 != enum case for ArtworkGridType.mixed(_:))
      {
        (*(v73 + 8))(v94, v46);
LABEL_32:
        v96 = 0;
        goto LABEL_50;
      }

      v96 = 3;
    }

LABEL_50:
    v109 = objc_allocWithZone(type metadata accessor for ArtworkGrid());
    v110 = sub_10070F0AC(v96, 0.0, 0.0, 0.0, 0.0);
    sub_1004470F8();
    v111 = v110[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType];
    v112.f64[0] = v53;
    v113 = sub_10070E7C0(v111, v112, v55);
    v35 = *(v71 + 2);
    if (v113 < v35)
    {
      v114.f64[0] = v53;
      v115 = sub_10070E7C0(v111, v114, v55);
      if ((v115 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v35 >= v115)
      {
        if (v35 == v115)
        {
LABEL_67:
          v41 = v71;
        }

        else
        {
          v199 = v110;
          sub_1002349D8(v71, &v71[(*(v208 + 80) + 32) & ~*(v208 + 80)], 0, (2 * v115) | 1);
          v41 = v116;
LABEL_55:

          v43 = v209;
          v110 = v199;
        }

        *&v110[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = *(v41 + 2);
        sub_10070EEE8();
        if (v198)
        {
          v121 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v122 = swift_allocObject();
          v122[2] = v110;
          v122[3] = v121;
          v123 = v204;
          v122[4] = v204;
          v124 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v125 = swift_allocObject();
          v125[2] = v110;
          v125[3] = v124;
          v125[4] = v123;
          *&v215[0] = v43;
          sub_10023D684(&qword_10094E640, v126, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);
          v127 = v43;
          v128 = v110;
          swift_retain_n();

          v129 = v127;
          v130 = v128;
          sub_10077140C();
          sub_100763EBC();

          sub_10000CFBC(&v214, &qword_100943310, &unk_100784150);
        }

        else
        {

          v216 = 0;
          memset(v215, 0, sizeof(v215));
        }

        v101 = v203;
        sub_10000CFBC(v215, &qword_100943310, &unk_100784150);
        v131 = v110;
        sub_10023D2F8(v110);

        (*(v200 + 8))(v196, v201);
        goto LABEL_72;
      }

      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    if (v113 <= v35)
    {
      goto LABEL_67;
    }

    v206 = v113 - v35;
    if (v113 - v35 < 0)
    {
      goto LABEL_108;
    }

    if (v35)
    {
      v199 = v110;

      v41 = v71;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_60;
      }

      goto LABEL_110;
    }

LABEL_109:
    __break(1u);
LABEL_110:
    v41 = sub_10049DDF4(0, (v35 + 1), 1, v71);
LABEL_60:
    v117 = 0;
    v39 = (*(v208 + 80) + 32) & ~*(v208 + 80);
    v205 = &v71[v39];
    v43 = (v208 + 16);
    v37 = (v208 + 32);
    while (1)
    {
      v118 = v117 % v35;
      if (v117 % v35 < 0)
      {
        break;
      }

      if (v118 >= *(v71 + 2))
      {
        goto LABEL_103;
      }

      v46 = v71;
      v119 = *(v208 + 72);
      (*(v208 + 16))(v212, v205 + v119 * v118, v213);
      v38 = *(v41 + 2);
      v120 = *(v41 + 3);
      if (v38 >= v120 >> 1)
      {
        v41 = sub_10049DDF4((v120 > 1), v38 + 1, 1, v41);
      }

      ++v117;
      *(v41 + 2) = v38 + 1;
      (*v37)(&v41[v39 + v38 * v119], v212, v213);
      v71 = v46;
      if (v206 == v117)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    swift_once();
  }

  if (sub_100765EAC())
  {
    (*(v186 + 104))(v185, enum case for VideoFillMode.scaleAspectFill(_:), v187);
    sub_10076B84C();
    sub_10076BEFC();
    v74 = v188;
    sub_10076D3AC();

    (v205[7])(v74, 0, 1, v206);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v75 = v191;
    sub_10076B85C();
    v76 = sub_10075DB7C();
    (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
    v77 = v192;
    sub_10076B81C();
    v78 = v193;
    sub_10076B80C();
    v79 = type metadata accessor for VideoView(0);
    sub_10023D684(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v213 = v79;
    v80 = sub_100762EEC();
    sub_10000CFBC(v78, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v77, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v75, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v215, &qword_100943310, &unk_100784150);
    v81 = v209;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v83 = Strong;
      v84 = [Strong superview];
      if (!v84)
      {
        goto LABEL_26;
      }

      v85 = v84;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v86 = v81;
      v87 = sub_100770EEC();

      if (v87)
      {
        v88 = swift_unknownObjectWeakLoadStrong();
        if (v88)
        {
          v83 = v88;
          [v88 removeFromSuperview];
LABEL_26:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v89 = swift_unknownObjectWeakLoadStrong();
    if (v89)
    {
      v90 = v89;
      [v81 addSubview:v89];
    }

    [v81 setNeedsLayout];

    v91 = swift_unknownObjectWeakLoadStrong();
    if (v91)
    {
      v92 = v91;
      sub_10076B84C();
      sub_10076BFCC();

      sub_10023D684(&unk_100942840, 255, type metadata accessor for VideoView, &unk_1007B40F8);
      sub_100760B8C();

      (*(v194 + 8))(v199, v176);
    }

    else
    {
      (*(v194 + 8))(v199, v176);
    }

    v101 = v203;
  }

  else if (sub_100765EDC())
  {
    sub_10075FD2C();
    v97 = sub_10075FB2C();
    [v97 setContentMode:2];
    sub_10076BFBC();
    sub_10023D684(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100760B8C();
    v98 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView;
    v99 = v209;
    v100 = *&v209[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView];
    v101 = v203;
    v102 = v97;
    if (v100)
    {
      [v100 removeFromSuperview];
      v103 = *&v99[v98];
    }

    else
    {
      v103 = 0;
    }

    *&v99[v98] = v97;
    v108 = v97;

    [v99 addSubview:v108];
    [v99 setNeedsLayout];
  }

  else
  {
    v104 = sub_100765E9C();
    v101 = v203;
    if (v104)
    {
      v105 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_10076BEFC();
      sub_10076D3AC();
      sub_10076D31C();
      (v205[1])(v37, v206);
      v106 = v177;
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v178 + 8))(v106, v179);
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v105 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_10023D684(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100760B8C();
      v107 = v105;
      sub_10023D130(v105);
    }
  }

LABEL_72:
  sub_100765F1C();
  (*(v210 + 104))(v207, v184, v211);
  sub_10023D684(&qword_10094A440, 255, &type metadata accessor for EditorialSearchResultType, &protocol conformance descriptor for EditorialSearchResultType);
  sub_10077018C();
  sub_10077018C();
  if (v215[0] == v214)
  {
    v132 = v211;
    v133 = *(v210 + 8);
    v133(v207, v211);
    v133(v101, v132);

LABEL_75:
    v138 = sub_100765F0C();
    if (v138 >> 62)
    {
      v139 = sub_10077158C();
    }

    else
    {
      v139 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v137 = v209;
    if (v139)
    {
      v140 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView;
      v141 = *&v209[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
      if (v141)
      {
        goto LABEL_79;
      }

      v151 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v152 = *&v137[v140];
      if (v152)
      {
        [v152 removeFromSuperview];
        v153 = *&v137[v140];
      }

      else
      {
        v153 = 0;
      }

      *&v137[v140] = v151;
      v164 = v151;

      if (v164)
      {
        v165 = v164[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
        v164[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] = 6;
        sub_1004B413C(v165);
        [v137 addSubview:v164];
      }

      [v137 setNeedsLayout];

      v166 = *&v137[v140];
      if (v166)
      {
        type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
        v167 = v166;
        sub_10076F63C();
        v168 = *&v215[0];
        v169 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
        v170 = *&v167[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        v171 = v170;
        sub_1004B57F0(v168);
        v172 = *&v167[v169];
        *&v167[v169] = v168;
        v173 = v168;

        sub_1004B5954(v170);
        v141 = *&v137[v140];
        if (v141)
        {
LABEL_79:
          v142 = v141;
          [v137 bringSubviewToFront:v142];
          v143 = sub_100765F0C();
          sub_1004B1900(v143);
        }
      }
    }

    v144 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView;
    v145 = *&v137[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
    if (v145)
    {
      v146 = v145;
      v147 = sub_100765F4C();
      v148 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
      swift_beginAccess();
      v149 = *&v146[v148];
      if (v149)
      {
        v150 = v149;
        [v150 setBackgroundColor:v147];
      }

      else
      {

        v146 = v147;
      }

      v154 = *&v137[v144];
      if (v154)
      {
        v155 = v154;
        v156 = v181;
        sub_100765EFC();
        v157 = sub_1007635FC();
        (*(v182 + 8))(v156, v175);
        [v155 setOverrideUserInterfaceStyle:v157];
      }
    }

    v158 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView;
    v159 = *&v137[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView];
    if (v159)
    {
      v160 = v159;
      sub_1007638EC();

      v161 = *&v137[v158];
      if (v161)
      {
        v162 = v161;
        if (!sub_100765F4C())
        {
          v163 = [objc_opt_self() clearColor];
        }

        sub_1007638DC();
      }
    }
  }

  else
  {
    v134 = sub_10077167C();
    v135 = v211;
    v136 = *(v210 + 8);
    v136(v207, v211);
    v136(v101, v135);

    v137 = v209;
    if (v134)
    {
      goto LABEL_75;
    }
  }

  [v137 setNeedsLayout];
}

void sub_10023B0A8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v17 = sub_10076BEDC();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_beginAccess();
    v10 = (a1 + 40);
    do
    {
      v11 = *v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;

        sub_10076BEEC();
        sub_10076BE9C();
        (*(v6 + 8))(v8, v17);
        sub_10076BFCC();
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = v11;
        v15 = a2;
        sub_100760B7C();

        sub_10000CFBC(v20, &qword_100943310, &unk_100784150);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

void sub_10023B2C8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v72 = a2;
  v8 = sub_10076BF6C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10076BEDC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10076B96C();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D39C();
  v73 = *(v13 - 8);
  v74 = v13;
  __chkstk_darwin(v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076DBBC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v79);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_100765F5C();
  if (!swift_dynamicCast())
  {
    return;
  }

  v67 = v10;
  v68 = v9;
  v20 = v78;
  sub_100763EEC();
  sub_10076F63C();
  v70 = v6;
  v71 = *&v79[0];
  v21 = [v6 traitCollection];
  if (qword_10093FB78 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v22 = v74;
    v23 = sub_10000A61C(v74, qword_10099DC78);
    (*(v73 + 2))(v15, v23, v22);
    sub_10076DBCC();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1007841E0;
    *(v24 + 32) = v21;
    v25 = v21;
    v26 = sub_10076DEEC();
    sub_10076D2AC();
    v28 = v27;
    v30 = v29;

    (*(v17 + 8))(v19, v16);
    v31 = sub_100765EEC();
    v33 = v70;
    if (!v31)
    {
      goto LABEL_11;
    }

    v17 = v31;
    v34 = *&v70[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid];
    if (!v34)
    {

LABEL_11:
      if (sub_100765EAC())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v45 = Strong;
          sub_10076B84C();
          sub_10076BFCC();

          type metadata accessor for VideoView(0);
          v46 = &unk_100942840;
          v47 = type metadata accessor for VideoView;
          v48 = &unk_1007B40F8;
LABEL_40:
          sub_10023D684(v46, 255, v47, v48);
          sub_100760B8C();

          goto LABEL_41;
        }
      }

      if (sub_100765EDC())
      {
        v55 = *&v33[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView];
        if (v55)
        {
          v56 = v55;
          [v56 setContentMode:2];
          sub_10076BFBC();
          sub_10075FD2C();
          sub_10023D684(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
          sub_100760B8C();

          goto LABEL_41;
        }
      }

      if (!sub_100765E9C())
      {
LABEL_42:

        return;
      }

      v65 = *&v33[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView];
      if (v65)
      {
        v45 = v65;
        sub_10076BEFC();
        sub_10076D3AC();
        sub_10076D31C();
        (*(v73 + 1))(v15, v74);
        v66 = v69;
        sub_10076BEEC();
        sub_10076BE9C();
        (*(v67 + 8))(v66, v68);
        sub_10076BFCC();
        sub_10076BF7C();
        sub_10075FCCC();
        [v45 setContentMode:sub_10076BDBC()];
        sub_100764ADC();
        sub_10075FD0C();
        if (!sub_10076BE1C())
        {
          sub_100016F40(0, &qword_100942F10, UIColor_ptr);
          sub_100770D5C();
        }

        sub_10075FB8C();
        sub_10075FD2C();
        v46 = &qword_100941820;
        v47 = &type metadata accessor for ArtworkView;
        v48 = &protocol conformance descriptor for ArtworkView;
        goto LABEL_40;
      }

LABEL_41:

      goto LABEL_42;
    }

    v35 = v34[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType];
    v32.f64[0] = v28;
    v36 = sub_10070E7C0(v35, v32, v30);
    v19 = *(v17 + 16);
    if (v36 < v19)
    {
      break;
    }

    v40 = v71;
    v39 = v72;
    if (v36 <= v19)
    {
      goto LABEL_25;
    }

    v74 = v36 - v19;
    if (v36 - v19 < 0)
    {
      goto LABEL_49;
    }

    if (v19)
    {
      v69 = v20;
      v68 = v34;
      v49 = v34;

      v42 = v17;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      goto LABEL_51;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v42 = sub_10049DDF4(0, v19 + 1, 1, v17);
LABEL_18:
    v50 = 0;
    v15 = ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v73 = &v15[v17];
    v21 = (v75 + 16);
    v20 = (v75 + 32);
    while (1)
    {
      v51 = v50 % v19;
      if (v50 % v19 < 0)
      {
        break;
      }

      if (v51 >= *(v17 + 16))
      {
        goto LABEL_45;
      }

      v52 = *(v75 + 72);
      (*(v75 + 16))(v76, &v73[v52 * v51], v77);
      v16 = *(v42 + 16);
      v53 = *(v42 + 24);
      if (v16 >= v53 >> 1)
      {
        v42 = sub_10049DDF4((v53 > 1), v16 + 1, 1, v42);
      }

      ++v50;
      *(v42 + 16) = v16 + 1;
      (*v20)(&v15[v42 + v16 * v52], v76, v77);
      if (v74 == v50)
      {

        v40 = v71;
        v39 = v72;
        v33 = v70;
        v34 = v68;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v37.f64[0] = v28;
  v38 = sub_10070E7C0(v35, v37, v30);
  v40 = v71;
  v39 = v72;
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  if (v19 < v38)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v19 == v38)
  {
LABEL_25:
    v54 = v34;
    v42 = v17;
  }

  else
  {
    sub_1002349D8(v17, v17 + ((*(v75 + 80) + 32) & ~*(v75 + 80)), 0, (2 * v38) | 1);
    v42 = v41;
    v43 = v34;
  }

LABEL_30:
  *&v34[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = *(v42 + 16);
  sub_10070EEE8();
  if (v40)
  {
    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = swift_allocObject();
    v58[2] = v34;
    v58[3] = v57;
    v58[4] = v39;
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = swift_allocObject();
    v60[2] = v34;
    v60[3] = v59;
    v60[4] = v39;
    *&v79[0] = v33;
    type metadata accessor for EditorialSearchResultContentView();
    sub_10023D684(&qword_10094E640, v61, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);
    v62 = v34;
    swift_retain_n();
    v63 = v62;

    v64 = v33;
    sub_10077140C();
    sub_100763EBC();

    sub_10000CFBC(&v78, &qword_100943310, &unk_100784150);
  }

  else
  {

    v80 = 0;
    memset(v79, 0, sizeof(v79));
  }

  sub_10000CFBC(v79, &qword_100943310, &unk_100784150);
}

id sub_10023BE34(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditorialSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10023BF78(void *a1)
{
  sub_10023CECC();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 addSubview:Strong];
  }

  [v1 setNeedsLayout];
}

uint64_t (*sub_10023C004(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100237564(v2);
  return sub_100019A4C;
}

uint64_t sub_10023C078(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10023C0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10023C138(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10023C2F8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10023D684(&qword_10094E630, a2, type metadata accessor for EditorialSearchResultContentView, &unk_100796A20);
  result = sub_10023D684(&qword_10094E638, v3, type metadata accessor for EditorialSearchResultContentView, &unk_100796A50);
  *(a1 + 16) = result;
  return result;
}

void *sub_10023C37C()
{
  v0 = sub_10077164C();
  v40 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076D9AC();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D3DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076469C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10076C38C();
  v38 = *(v10 - 8);
  v39 = v10;
  __chkstk_darwin(v10);
  v46 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100765F5C();
  sub_10023D684(&qword_10095A440, 255, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_10076332C();
  v45 = v47[0];
  if (v47[0])
  {
    sub_1007632FC();
    if (qword_100940540 != -1)
    {
      swift_once();
    }

    v36 = v0;

    sub_10076C32C();
    v35[2] = sub_100765ECC();
    v42 = v13;
    v35[0] = sub_100765F2C();
    v15 = v14;
    v35[1] = sub_100765F3C();
    v43 = v16;
    v17 = sub_100630CB4();
    sub_10076C2FC();
    sub_100770ACC();
    if (qword_10093FB98 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v6, qword_10099DCB8);
    if (qword_10093FBB0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v3, qword_10099DD00);
    v41 = v15;
    if (v15)
    {
      v18 = sub_10076C04C();
      v48 = v18;
      v49 = sub_10023D684(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v19 = sub_10000DB7C(v47);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
      sub_10076C90C();
      sub_10000CD74(v47);
      sub_10076991C();
      sub_10076D42C();
    }

    v20 = v43;
    v21 = v37;
    if (qword_10093FBA0 != -1)
    {
      swift_once();
    }

    v22 = sub_10000A61C(v6, qword_10099DCD0);
    (*(v7 + 16))(v44, v22, v6);
    if (qword_10093FBB8 != -1)
    {
      swift_once();
    }

    v23 = sub_10000A61C(v3, qword_10099DD18);
    (*(v21 + 16))(v5, v23, v3);
    if (v20)
    {
      v24 = sub_10076C04C();
      v48 = v24;
      v49 = sub_10023D684(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v25 = sub_10000DB7C(v47);
      (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
      sub_10076C90C();
      sub_10000CD74(v47);
      v26 = v44;
      sub_10076991C();
      sub_10076D42C();
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v26, v6);
    }

    else
    {
      (*(v21 + 8))(v5, v3);
      (*(v7 + 8))(v44, v6);
    }

    if (qword_10093FB90 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v6, qword_10099DCA0);
    v27 = v42;
    if (qword_10093FBA8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v3, qword_10099DCE8);
    if (v27)
    {
      v28 = sub_10076C04C();
      v48 = v28;
      v49 = sub_10023D684(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v29 = sub_10000DB7C(v47);
      (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
      sub_10076C90C();
      sub_10000CD74(v47);
      sub_10076991C();
      sub_10076D42C();
    }

    v30 = [v17 traitCollection];
    sub_10076D17C();
    sub_100016F40(0, &qword_100942F00, UIFont_ptr);
    v31 = sub_100770B3C();
    sub_10076D97C();
    sub_100770B4C();

    v32 = *(v40 + 8);
    v33 = v36;
    v32(v2, v36);
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v3, qword_1009A2350);
    sub_10076D17C();
    sub_10076D40C();
    v32(v2, v33);
    if (qword_10093FB78 != -1)
    {
      swift_once();
    }

    v34 = sub_10076D39C();
    sub_10000A61C(v34, qword_10099DC78);
    sub_10076D35C();
    sub_10076D36C();
    swift_unknownObjectRelease();

    return (*(v38 + 8))(v46, v39);
  }

  return result;
}

void sub_10023CECC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_10023D684(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v4 = v0;
      v5 = sub_100770EEC();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }
}

id sub_10023D004(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = v6;
    [v7 setClipsToBounds:1];
    if (qword_10093FB88 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_10099DC98];

    [v1 addSubview:v7];
    v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView];
    if (v8)
    {
      v9 = v8;
      [v1 addSubview:v9];
    }
  }

  return [v1 setNeedsLayout];
}

id sub_10023D130(void *a1)
{
  v2 = v1;
  v4 = sub_10075FEEC();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView];
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *&v2[v9];
  }

  else
  {
    v11 = 0;
  }

  *&v2[v9] = a1;
  v12 = a1;

  if (a1)
  {
    sub_10076394C();
    (*(v5 + 104))(v8, enum case for CornerStyle.arc(_:), v4);
    v13 = sub_10076393C();
    sub_10023D004(v13);

    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView];
    if (v14)
    {
      v15 = v14;
      [v15 addSubview:v12];
    }
  }

  else
  {
    v16 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView;
    v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView];
    if (v17)
    {
      [v17 removeFromSuperview];
      v18 = *&v2[v16];
    }

    else
    {
      v18 = 0;
    }

    *&v2[v16] = 0;

    [v2 setNeedsLayout];
  }

  return [v2 setNeedsLayout];
}

id sub_10023D2F8(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v6[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_showBorder] = 1;
    [*&v6[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_imageBorderView] setHidden:0];
    v7 = v6;
    [v7 _setCornerRadius:20.0];
    [v7 setNeedsLayout];
    if (qword_10093FB80 != -1)
    {
      swift_once();
    }

    [v7 setBackgroundColor:qword_10099DC90];

    [v1 addSubview:v7];
  }

  return [v1 setNeedsLayout];
}

void sub_10023D434()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_showEditorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_editorialArtworkView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_iconBackingView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView) = 0;
  sub_10077156C();
  __break(1u);
}

double sub_10023D4F8(uint64_t a1)
{
  sub_100763EEC();
  sub_10076F63C();
  if (v7[0])
  {
    type metadata accessor for EditorialSearchResultContentView();
    sub_10023D684(&qword_10094E640, v2, type metadata accessor for EditorialSearchResultContentView, &protocol conformance descriptor for NSObject);

    v3 = v1;
    sub_10077140C();
    sub_100763EDC();

    sub_100016C74(v7);
  }

  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialSearchResultContentView_artworkGrid];
  if (v4)
  {
    v5 = v4;
    sub_1004470F8();
  }

  return result;
}

uint64_t sub_10023D600()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023D648()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10023D684(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10023D728(uint64_t a1)
{
  v2 = sub_10076C38C();
  v55 = *(v2 - 8);
  __chkstk_darwin(v2);
  v54 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076B66C();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v6 = *(v49 - 8);
  __chkstk_darwin(v49);
  v8 = &v42 - v7;
  v9 = sub_1007658FC();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = sub_10076D39C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v50 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v42 - v21;
  sub_100762A6C();
  sub_10023DE9C(&qword_100945AD0, &type metadata accessor for ProductMediaItem, &protocol conformance descriptor for ProductMediaItem);
  result = sub_10076332C();
  if (v57)
  {
    v44 = a1;
    if (sub_100762A4C())
    {
      sub_10076BEFC();
      sub_10076D3AC();

      v23 = *(v18 + 56);
      v23(v13, 0, 1, v17);
      (*(v18 + 32))(v16, v13, v17);
      v23(v16, 0, 1, v17);
      v24 = (*(v18 + 48))(v16, 1, v17);
    }

    else
    {
      v43 = v6;
      v45 = v2;
      v25 = *(v18 + 56);
      v26 = 1;
      v25(v13, 1, 1, v17);
      if (sub_100762A5C())
      {
        sub_10076B84C();

        sub_10076BEFC();
        sub_10076D3AC();

        v26 = 0;
      }

      v25(v16, v26, 1, v17);
      v27 = *(v18 + 48);
      if (v27(v13, 1, v17) != 1)
      {
        sub_10023DEE4(v13);
      }

      v2 = v45;
      v6 = v43;
      v24 = v27(v16, 1, v17);
    }

    if (v24 == 1)
    {

      return sub_10023DEE4(v16);
    }

    v45 = v2;
    (*(v18 + 32))(v56, v16, v17);
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    v28 = v51;
    v29 = v49;
    sub_10076F49C();

    (*(v6 + 8))(v8, v29);
    v31 = v52;
    v30 = v53;
    if ((*(v52 + 88))(v28, v53) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v31 + 96))(v28, v30);
      v32 = v46;
      v33 = v47;
      v34 = v28;
      v35 = v48;
      (*(v47 + 32))(v46, v34, v48);
      v36 = sub_10076589C();
      (*(v33 + 8))(v32, v35);
      v37 = v50;
      v38 = v56;
      v39 = v45;
      if ((v36 & 1) != 0 && (sub_10076D2EC() & 1) == 0)
      {
        sub_10076D32C();
LABEL_18:
        swift_getKeyPath();
        v40 = v54;
        sub_10076338C();

        sub_10076C22C();
        (*(v55 + 8))(v40, v39);
        sub_10076D36C();

        v41 = *(v18 + 8);
        v41(v37, v17);
        return (v41)(v38, v17);
      }
    }

    else
    {
      (*(v31 + 8))(v28, v30);
      v37 = v50;
      v38 = v56;
      v39 = v45;
    }

    (*(v18 + 16))(v37, v38, v17);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_10023DE9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10023DEE4(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10023DF58()
{
  sub_1000325F0();
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.929411765 green:0.964705882 blue:1.0 alpha:1.0];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.11372549 green:0.137254902 blue:0.176470588 alpha:1.0];
  v2.super.isa = v0;
  qword_10099DD30 = sub_100770DEC(v2, v1).super.isa;
}

void sub_10023DFFC()
{
  sub_1000325F0();
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.07];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.05];

  v5.super.isa = v2;
  v6.super.isa = v4;
  qword_10099DD38 = sub_100770DEC(v5, v6).super.isa;
}

uint64_t sub_10023E0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10076182C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076E4AC();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6, v12);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 != enum case for ItemBackground.ad(_:))
  {
    if (v15 != enum case for ItemBackground.insetAd(_:))
    {
      if (v15 == enum case for ItemBackground.clearAdWithSeparator(_:))
      {
        (*(v11 + 56))(a3, 1, 1, v10);
        return (*(v7 + 8))(v9, v6);
      }

      goto LABEL_12;
    }

LABEL_5:
    (*(v7 + 8))(v9, v6);
    sub_10076E49C();
    if (qword_10093FBC0 != -1)
    {
      swift_once();
    }

    v17 = qword_10099DD30;
    sub_10076E46C();
    sub_10076E46C();
    if (qword_10093FBC8 != -1)
    {
      swift_once();
    }

    v18 = qword_10099DD38;
    sub_10076E42C();
    sub_10076E43C();
    sub_10076E44C();
    goto LABEL_15;
  }

  sub_10076C21C();
  if (v16 > 1.0)
  {
    goto LABEL_5;
  }

LABEL_12:
  sub_10076E49C();
  if (qword_10093FBC0 != -1)
  {
    swift_once();
  }

  v20 = qword_10099DD30;
  sub_10076E46C();
  (*(v7 + 8))(v9, v6);
LABEL_15:
  sub_10023E590(a1, a2);
  sub_10076E47C();
  (*(v11 + 32))(a3, v14, v10);
  return (*(v11 + 56))(a3, 0, 1, v10);
}

uint64_t sub_10023E464(uint64_t a1)
{
  sub_10076E49C();
  if (qword_10093FBC0 != -1)
  {
    swift_once();
  }

  v1 = qword_10099DD30;
  sub_10076E46C();
  sub_10076E46C();
  if (qword_10093FBC8 != -1)
  {
    swift_once();
  }

  v2 = qword_10099DD38;
  sub_10076E42C();
  sub_10076E43C();
  sub_10076E44C();
  return sub_10076E47C();
}

double sub_10023E590(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076182C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C21C();
  if (v7 <= 1.0)
  {
    (*(v4 + 16))(v6, a2, v3);
    if ((*(v4 + 88))(v6, v3) == enum case for ItemBackground.insetAd(_:))
    {
      return -10.0;
    }

    else
    {
      sub_10076C23C();
      v9 = v10 * -0.5;
      sub_10076C2EC();
      sub_10076C23C();
      sub_10076C2EC();
      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    sub_10076C23C();
    v9 = v8 * -0.5;
    sub_10076C2BC();
    sub_10076C23C();
    sub_10076C2BC();
  }

  return v9;
}

char *sub_10023E738(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_100766FCC();
  __chkstk_darwin(v9 - 8);
  v45 = sub_10076702C();
  v10 = *(v45 - 8);
  __chkstk_darwin(v45);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100766F4C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_lockupCollectionView;
  v17 = type metadata accessor for CarouselItemLockupCollectionView(0);
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews] = _swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v20 = sub_10000A5D4(&unk_10094B8B0, &qword_100791B08);
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  *&v18[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_minNumberOfArtworks] = 2;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_maxNumberOfArtworks] = 5;
  v49.receiver = v18;
  v49.super_class = v17;
  v21 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v25 = v44;
  *&v4[v44] = v21;
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v13);
  (*(v10 + 104))(v12, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v45);
  sub_100766FBC();
  sub_100766F5C();
  v26 = &v4[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_selectionHandler];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = *&v4[v25];
  v28 = objc_allocWithZone(UIVisualEffect);
  v29 = v27;
  v30 = [v28 init];
  v31 = type metadata accessor for VisualEffectContainerView();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC20ProductPageExtension25VisualEffectContainerView_embeddedView] = v29;
  v48.receiver = v32;
  v48.super_class = v31;
  v33 = v29;
  v34 = objc_msgSendSuper2(&v48, "initWithEffect:", v30);
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v35 = [v34 contentView];
  [v35 addSubview:v33];

  *&v4[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_materialbackground] = v34;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  [v36 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v36 setOverrideUserInterfaceStyle:2];
  [v36 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v37 = [*&v36[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_lockupCollectionView] layer];
  [v37 setAllowsGroupBlending:0];

  v38 = OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_materialbackground;
  v39 = *&v36[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_materialbackground];
  sub_1003E4478(20.0);

  v40 = [*&v36[v38] contentView];
  v41 = [v40 layer];

  [v41 setAllowsGroupBlending:0];
  [v36 addSubview:*&v36[v38]];

  return v36;
}

uint64_t sub_10023ECD4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D58C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v18[-1] - v9;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "layoutSubviews", v8);
  *(swift_allocObject() + 16) = v1;
  v11 = v1;
  sub_10076D55C();
  v12 = *&v11[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_materialbackground];
  v18[3] = type metadata accessor for VisualEffectContainerView();
  v18[4] = sub_10023FED4(&unk_10094E6A0, type metadata accessor for VisualEffectContainerView, &unk_10079EC7C);
  v18[0] = v12;
  v13 = v12;
  sub_10076D57C();
  v14 = *(v4 + 8);
  v14(v6, v3);
  sub_10000CD74(v18);
  sub_10076422C();
  v15 = [v11 traitCollection];
  sub_10076E0EC();

  return (v14)(v10, v3);
}

uint64_t sub_10023EF70(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = sub_10076D54C();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10076702C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076703C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_displayOptions;
  swift_beginAccess();
  (*(v11 + 16))(v13, a2 + v14, v10);
  sub_100766FEC();
  (*(v11 + 8))(v13, v10);
  result = (*(v7 + 88))(v9, v6);
  if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
    v5[3] = sub_10076D67C();
    v5[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v5);
    sub_10076D66C();
    (*(v3 + 104))(v5, enum case for DisjointStack.EdgePosition.anchored(_:), v19);
    return sub_10076D50C();
  }

  else
  {
    v16 = v3;
    v17 = v19;
    if (result != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
    {
      if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
      {
        v5[3] = sub_10076D67C();
        v5[4] = &protocol witness table for ZeroDimension;
        sub_10000DB7C(v5);
        sub_10076D66C();
        (*(v16 + 104))(v5, enum case for DisjointStack.EdgePosition.anchored(_:), v17);
        return sub_10076D51C();
      }

      else
      {
        return (*(v7 + 8))(v9, v6);
      }
    }
  }

  return result;
}

double sub_10023F2A8(double a1, double a2)
{
  v5 = sub_10076D58C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19[-1] - v10;
  *(swift_allocObject() + 16) = v2;
  v12 = v2;
  sub_10076D55C();
  v13 = *&v12[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_materialbackground];
  v19[3] = type metadata accessor for VisualEffectContainerView();
  v19[4] = sub_10023FED4(&unk_10094E6A0, type metadata accessor for VisualEffectContainerView, &unk_10079EC7C);
  v19[0] = v13;
  v14 = v13;
  sub_10076D57C();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_10000CD74(v19);
  v16 = sub_10023F754(v11, v12, a1, a2);
  v15(v11, v5);
  return v16;
}

uint64_t type metadata accessor for CarouselItemModulePlatterView(uint64_t a1)
{
  result = qword_10094E690;
  if (!qword_10094E690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10023F5E8(uint64_t a1)
{
  result = sub_10076703C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_10023F690(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_selectionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_selectionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000167E0(v4, v5);
}

double sub_10023F6B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076705C();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1005A28C4(v4, a2);

  return result;
}

double sub_10023F754(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = sub_10076DFEC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v41[-v12];
  __chkstk_darwin(v14);
  v16 = &v41[-v15];
  __chkstk_darwin(v17);
  v19 = &v41[-v18];
  v20 = sub_10076D58C();
  v47[3] = v20;
  v47[4] = &protocol witness table for DisjointStack;
  v21 = sub_10000DB7C(v47);
  (*(*(v20 - 8) + 16))(v21, a1, v20);
  sub_10010F998();
  v23 = v22;
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_10000A570(v47, v43);
    *(v19 + 3) = &type metadata for CGFloat;
    *(v19 + 4) = &protocol witness table for CGFloat;
    *v19 = v26;
    v35 = *(v8 + 104);
    v35(v19, enum case for Resize.Rule.replaced(_:), v7);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v16, enum case for Resize.Rule.unchanged(_:), v7);
    v35(v13, v36, v7);
    v35(v10, v36, v7);
    v45 = sub_10076DFFC();
    v46 = &protocol witness table for Resize;
    sub_10000DB7C(v44);
    sub_10076E00C();
  }

  else
  {
    sub_10076DACC();
    v28 = v27;
    v30 = v29;
    sub_10000A570(v47, v43);
    sub_10076DACC();
    v32 = v31;
    v34 = v33;
    v45 = sub_10076E0CC();
    v46 = &protocol witness table for Constrain;
    sub_10000DB7C(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    sub_10076E0DC();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    sub_10076DAEC();
  }

  sub_10000CF78(v44, v45);
  v37 = [a2 traitCollection];
  sub_10076E0FC();
  v39 = v38;

  sub_10000CD74(v44);
  sub_10000CD74(v47);
  return v39;
}

id sub_10023FB60()
{
  v1 = v0;
  v2 = sub_10076703C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_lockupCollectionView];
  v7 = sub_10076705C();
  if (v7)
  {
    if (v7 >> 62)
    {
      v8 = sub_10077158C();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks;
    v10 = *&v6[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks];
    *&v6[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks] = v8;
    if (v8 != v10)
    {
      if (v8 > 5)
      {
        *&v6[v9] = 5;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v11 = *&v6[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks];
    *&v6[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
    if (v11)
    {
LABEL_8:
      sub_1005A2F84();
      [v6 setNeedsLayout];
    }
  }

  sub_10076704C();
  v12 = OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_displayOptions;
  swift_beginAccess();
  (*(v3 + 40))(&v1[v12], v5, v2);
  swift_endAccess();
  return [v1 setNeedsLayout];
}

double sub_10023FD28()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_lockupCollectionView);
  v2 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_10075FD2C();
      sub_10023FED4(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100760BFC();

      ++v5;
      if (v8 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  return result;
}

uint64_t sub_10023FE94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023FED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10023FF1C(__n128 a1)
{
  v2 = sub_100766FCC();
  __chkstk_darwin(v2 - 8);
  v17 = sub_10076702C();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100766F4C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_lockupCollectionView;
  v10 = type metadata accessor for CarouselItemLockupCollectionView(0);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v13 = sub_10000A5D4(&unk_10094B8B0, &qword_100791B08);
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  *&v11[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
  *&v11[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_minNumberOfArtworks] = 2;
  *&v11[OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_maxNumberOfArtworks] = 5;
  v18.receiver = v11;
  v18.super_class = v10;
  v14 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  *(v1 + v16) = v14;
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v17);
  sub_100766FBC();
  sub_100766F5C();
  v15 = (v1 + OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_selectionHandler);
  *v15 = 0;
  v15[1] = 0;
  sub_10077156C();
  __break(1u);
}

void sub_100240254(uint64_t a1, char a2)
{
  *(v2 + qword_100952DA8) = a2 & 1;
  sub_10033E3F8();
  sub_10076D9DC();
  v46 = v2;
  v3 = *(v2 + qword_100952D80);
  sub_10076C0AC();
  v5 = v4;
  v6 = objc_allocWithZone(NSNumber);
  LODWORD(v7) = v5;
  v47.value.super.super.isa = [v6 initWithFloat:v7];
  isa = v47.value.super.super.isa;
  v47.is_nil = 1;
  sub_10076858C(v47, v9);
  v11 = v10;

  if (!v11)
  {
    sub_10076C0AC();
    sub_10077037C();
  }

  sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  *(inited + 32) = NSKernAttributeName;
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 64) = &type metadata for CGFloat;
  *(inited + 40) = 0xC010000000000000;
  v13 = NSKernAttributeName;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_1001E4F90(inited + 32);
  v14 = objc_allocWithZone(NSAttributedString);
  v15 = sub_10076FF6C();

  type metadata accessor for Key(0);
  sub_1001E4F38();
  v16 = sub_10076FE3C().super.isa;

  v17 = [v14 initWithString:v15 attributes:v16];

  [v3 setAttributedText:v17];
  sub_10076C0AC();
  sub_100062020(v18);
  v19 = *(v46 + qword_100952D98);
  v20 = sub_10076C08C();
  v48._object = 0x80000001007D1550;
  v48._countAndFlagsBits = 0xD000000000000013;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_100767D6C(v48, v20, v49);
  v21 = sub_10076FF6C();

  [v19 setText:v21];

  v22 = sub_10076C09C();
  if (!v22)
  {
    goto LABEL_30;
  }

  v23 = v22;
  v24 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    goto LABEL_26;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) != 5)
  {
    goto LABEL_29;
  }

  v45 = 5;
  while (2)
  {
    v25 = 4;
    v26 = qword_100952DA0;
    while (1)
    {
      v29 = v25 - 4;
      if ((v23 & 0xC000000000000001) != 0)
      {
        v30 = sub_10077149C();
      }

      else
      {
        if (v29 >= *(v24 + 16))
        {
          goto LABEL_24;
        }

        v30 = *(v23 + 8 * v25);
      }

      v31 = v30;
      v32 = v25 - 3;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = *(v46 + v26);
      [v30 floatValue];
      v35 = v34;
      v36 = sub_10076C08C();
      v37 = OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_barViews;
      v38 = *(v33 + OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_barViews);
      if (v38 >> 62)
      {
        if (v29 >= sub_10077158C())
        {
          goto LABEL_10;
        }
      }

      else if (v29 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      v39 = *(v33 + v37);
      if ((v39 & 0xC000000000000001) != 0)
      {
        v27 = sub_10077149C();
      }

      else
      {
        if (v29 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v27 = *(v39 + 8 * v25);
      }

      v28 = v27;
      *&v27[OBJC_IVAR____TtC20ProductPageExtensionP33_95941BD34515C691DC8D8E2915DD56D934ProductRatingsHistogramProgressBar_progress] = v35 / v36;
      [v27 setNeedsLayout];

LABEL_10:
      ++v25;
      if (v32 == v45)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (sub_10077158C() == 5)
    {
      v45 = sub_10077158C();
      if (!v45)
      {
LABEL_28:

        goto LABEL_39;
      }

      continue;
    }

    break;
  }

LABEL_29:

LABEL_30:
  v40 = *(*(v46 + qword_100952DA0) + OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_barViews);
  if (v40 >> 62)
  {
    v41 = sub_10077158C();
    if (!v41)
    {
      goto LABEL_39;
    }

LABEL_32:
    if (v41 >= 1)
    {
      v42 = 0;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v43 = sub_10077149C();
        }

        else
        {
          v43 = *(v40 + 8 * v42 + 32);
        }

        v44 = v43;
        ++v42;
        *&v43[OBJC_IVAR____TtC20ProductPageExtensionP33_95941BD34515C691DC8D8E2915DD56D934ProductRatingsHistogramProgressBar_progress] = 0;
        [v43 setNeedsLayout];
      }

      while (v41 != v42);
      goto LABEL_39;
    }

    __break(1u);
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_32;
    }

LABEL_39:
    sub_10076D9DC();
  }
}

void sub_100240728(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100243C28(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView];
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v8 = v7;
    v9 = sub_100770EEC();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_1002409BC()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppEventView(uint64_t a1)
{
  result = qword_10094E6F0;
  if (!qword_10094E6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_100240B5C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100240BC0;
}

void sub_100240BC0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_10015ADA4();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_10015ADA4();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_100240CE8()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_10076422C();
  if (!CGRectIsEmpty(v17))
  {
    v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView];
    sub_10076422C();
    v3 = v2;
    v5 = v4;
    sub_1004B67D8(v15);
    sub_1004B8E04(v0, v15, v3, v5);
    sub_10005AE58(v15);
    sub_10076422C();
    CGRectGetMinX(v18);
    sub_10076422C();
    CGRectGetMinY(v19);
    sub_10076422C();
    sub_100770A4C();
    [v1 setFrame:?];
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView];
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v9 = v0;
      v10 = sub_100770EEC();

      if (v10)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v20);
        sub_10076422C();
        v12 = CGRectGetHeight(v21) - MaxY;
        sub_10076422C();
        [v6 setBounds:{0.0, 0.0, CGRectGetWidth(v22), v12}];
        [v1 frame];
        v13 = CGRectGetMaxY(v23);
        sub_10076422C();
        v14 = CGRectGetHeight(v24) - v13;
        [v9 bounds];
        [v6 setCenter:{CGRectGetWidth(v25) * 0.5, v13 + v14 * 0.5}];
      }
    }
  }
}

void sub_100241090(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = v61 - v5;
  v7 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v7 - 8);
  v9 = v61 - v8;
  v10 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v61 - v12;
  sub_100016F40(0, &qword_10094D040, NSObject_ptr);
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer];
  if ((sub_100770EEC() & 1) == 0)
  {
    return;
  }

  v62 = *&v1[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView];
  v15 = [v62 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v18 = v2;
  v61[1] = v17;
  LOBYTE(v17) = sub_100770EEC();

  if ((v17 & 1) == 0)
  {
    return;
  }

  v19 = [a1 state];
  if (v19 > 3)
  {
    if ((v19 - 4) >= 2)
    {
      return;
    }

    v24 = [v62 superview];
    if (!v24)
    {
      return;
    }

    v25 = v24;
    v26 = v18;
    v27 = sub_100770EEC();

    if ((v27 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = 0x3FF0000000000000;
    v68 = sub_100244044;
    v69 = v29;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_10009AEDC;
    v67 = &unk_10088DF10;
    v30 = _Block_copy(&aBlock);
    v31 = v26;

    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = v31;
    v68 = sub_10024405C;
    v69 = v32;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_10088DF60;
LABEL_30:
    v66 = sub_1000513F0;
    v67 = v33;
    v59 = _Block_copy(&aBlock);
    v60 = v31;

    [v28 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v30 options:v59 animations:0.0 completion:1.0];
    _Block_release(v59);
    _Block_release(v30);
    return;
  }

  if (v19 == 1)
  {
    v34 = v62;
    [a1 locationInView:v62];
    v35 = v18 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation;
    *v35 = v36;
    *(v35 + 1) = v37;
    v35[16] = 0;
    v38 = [v34 superview];
    if (!v38)
    {
      return;
    }

    v39 = v38;
    v40 = v18;
    v41 = sub_100770EEC();

    if ((v41 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = 0x3FEEB851EB851EB8;
    v68 = sub_100244044;
    v69 = v42;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_10009AEDC;
    v67 = &unk_10088DFB0;
    v30 = _Block_copy(&aBlock);
    v31 = v40;

    v43 = swift_allocObject();
    *(v43 + 16) = 1;
    *(v43 + 24) = v31;
    v68 = sub_10024405C;
    v69 = v43;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_10088E000;
    goto LABEL_30;
  }

  if (v19 == 2)
  {
    [a1 locationInView:v62];
    v46 = (v18 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation + 16))
    {
      *v46 = v44;
      v46[1] = v45;
      *(v46 + 16) = 0;
    }

    else
    {
      v47 = sqrt((v45 - v46[1]) * (v45 - v46[1]) + (v44 - *v46) * (v44 - *v46));
      [v14 allowableMovement];
      if (v48 < v47)
      {

        [a1 setEnabled:0];
      }
    }

    return;
  }

  if (v19 != 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_clickAction;
  swift_beginAccess();
  sub_100016E2C(v18 + v20, v9, &qword_100952650, &unk_10079B720);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_100952650;
    v22 = &unk_10079B720;
    v23 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_100761FEC();
    v67 = ObjectType;
    aBlock = v18;
    v49 = v18;
    sub_10076B88C();

    sub_100761FDC();
    v50 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();

    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v6, 1, v50) != 1)
    {
      sub_100761FEC();
      v52 = sub_100761FDC();
      sub_100263BF0(aBlock, 1, v52, v6);

      (*(v11 + 8))(v13, v10);

      (*(v51 + 8))(v6, v50);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_100943200;
    v22 = &unk_100785840;
    v23 = v6;
  }

  sub_10000CFBC(v23, v21, v22);
LABEL_27:
  v53 = [v62 superview];
  if (v53)
  {
    v54 = v53;
    v55 = v18;
    v56 = sub_100770EEC();

    if (v56)
    {
      v28 = objc_opt_self();
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = 0x3FF0000000000000;
      v68 = sub_100243CA8;
      v69 = v57;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10009AEDC;
      v67 = &unk_10088DE70;
      v30 = _Block_copy(&aBlock);
      v31 = v55;

      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      *(v58 + 24) = v31;
      v68 = sub_100243CCC;
      v69 = v58;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v33 = &unk_10088DEC0;
      goto LABEL_30;
    }
  }
}

id sub_100241A88(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

BOOL sub_100241AE8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  sub_100016F40(0, &qword_10094D040, NSObject_ptr);
  if ((sub_100770EEC() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView];
  v9 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView)];
  v12 = *(v8 + v9);
  if (v12)
  {
    v13 = v10;
    v14 = v11;
    [v12 bounds];
    v32.x = v13;
    v32.y = v14;
    if (CGRectContainsPoint(v35, v32))
    {
      return 0;
    }
  }

  v15 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButton;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_notifyMeButton)];
  v18 = *(v8 + v15);
  if (v18)
  {
    v19 = v16;
    v20 = v17;
    [v18 bounds];
    v33.x = v19;
    v33.y = v20;
    if (CGRectContainsPoint(v36, v33))
    {
      return 0;
    }
  }

  [a2 locationInView:v2];
  v22 = v21;
  v24 = v23;
  v25 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v34.x = v22;
  v34.y = v24;
  if (CGRectContainsPoint(v37, v34))
  {
    if (v25)
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();

      if (v26)
      {
        return 0;
      }
    }

    v28 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_clickAction;
    swift_beginAccess();
    sub_100016E2C(&v3[v28], v7, &qword_100952650, &unk_10079B720);
    v29 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    v30 = (*(*(v29 - 8) + 48))(v7, 1, v29) != 1;
    sub_10000CFBC(v7, &qword_100952650, &unk_10079B720);
    return v30;
  }

  else
  {

    return 0;
  }
}

void sub_100241E18(uint64_t a1)
{
  sub_1001D92E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_100241EE8(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100240B5C(v2);
  return sub_100019A4C;
}

double sub_100241F6C(uint64_t a1)
{
  [*(*v1 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v3);
  sub_10076422C();
  CGRectGetHeight(v4);
  sub_10076422C();
  CGRectGetWidth(v5);
  return 0.0;
}

CGFloat sub_100241FE4(uint64_t a1)
{
  v2 = *v1;
  [*&v2[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v4);
  sub_10076422C();
  CGRectGetHeight(v5);
  [v2 bounds];
  return CGRectGetWidth(v6) * 0.5;
}

uint64_t sub_1002420A4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100243C28(&unk_10094E710, type metadata accessor for AppEventView, &unk_100796DE8);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100242118(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100243C28(&unk_10094E710, type metadata accessor for AppEventView, &unk_100796DE8);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1002421A4(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_100243C28(&unk_10094E710, type metadata accessor for AppEventView, &unk_100796DE8);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_100242260(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView);
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

double sub_1002423E4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v25 = a2;
  v26 = sub_10076DEBC();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D93C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D95C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for StackMeasurable.Axis.vertical(_:), v8, v14);
  sub_10000A5D4(&unk_10094D050, &unk_1007A6E40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100784500;
  sub_10000A570(a1, v33);
  v18 = sub_10076DE7C();
  *(v17 + 56) = v18;
  *(v17 + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C((v17 + 32));
  sub_10076DE8C();
  sub_10000A570(a1 + 40, v33);
  *(v17 + 96) = v18;
  *(v17 + 104) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C((v17 + 72));
  sub_10076DE8C();
  sub_10076D94C();
  v33[3] = v12;
  v33[4] = &protocol witness table for StackMeasurable;
  v19 = sub_10000DB7C(v33);
  (*(v13 + 16))(v19, v16, v12);
  v20 = *(a1 + 136);
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  v30 = v20;
  v21 = *(a1 + 152);
  v28 = &type metadata for CGFloat;
  v29 = &protocol witness table for CGFloat;
  v27 = v21;
  sub_10076DEAC();
  sub_10076DE9C();
  v23 = v22;
  (*(v5 + 8))(v7, v26);
  (*(v13 + 8))(v16, v12);
  return v23;
}

void sub_100242754(void *a1, void *a2, double a3, double a4)
{
  v86 = sub_10077164C();
  v90 = *(v86 - 8);
  __chkstk_darwin(v86);
  v89 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10076D93C();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10076D95C();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10076DE7C();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10076443C();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v73 = &v67 - v14;
  v15 = sub_100763ADC();
  v78 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppEventCardLayout(0);
  sub_100016E2C(a2 + v18[18], &v93, &unk_10094DA00, &qword_100783FA0);
  v19 = v94;
  sub_10000CFBC(&v93, &unk_10094DA00, &qword_100783FA0);
  v20 = [a1 traitCollection];
  v21 = [v20 preferredContentSizeCategory];
  v22 = sub_10077087C();

  if (v22)
  {
    v67 = v19;
    v87 = a2;
    v24 = v18[13];
    v25 = v18[14];
    v26 = v18[16];
    v70 = v18[15];
    v71 = v26;
    if (qword_10093F848 != -1)
    {
      swift_once();
    }

    v68 = (v87 + v24);
    v69 = (v87 + v25);
    v27 = sub_10000A61C(v15, qword_10099D298);
    v88 = type metadata accessor for AppEventCardLayout.Metrics(0);
    sub_10076D36C();
    v29 = v28;
    v30 = [a1 traitCollection];
    v31 = v78;
    (*(v78 + 16))(v17, v27, v15);
    v32 = sub_100763A4C();
    v34 = v79;
    if ((v35 & 1) == 0 && ((v32 | v33) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_10077071C())
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v36 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v36 = qword_100944CA0;
      }

      v37 = v75;
      v38 = sub_10000A61C(v75, v36);
      v39 = v74;
      v40 = v72;
      (*(v74 + 16))(v72, v38, v37);
      v41 = v73;
      (*(v39 + 32))(v73, v40, v37);
      sub_1007643EC();
      sub_10076441C();
      sub_100763A5C();
      (*(v39 + 8))(v41, v37);
    }

    sub_10076398C();
    v43 = v42;

    (*(v31 + 8))(v17, v15);
    *&v91 = _swiftEmptyArrayStorage;
    sub_10000A5D4(&unk_10094D050, &unk_1007A6E40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    v94 = &type metadata for CGFloat;
    v95 = &protocol witness table for CGFloat;
    *&v93 = v29;
    *(inited + 56) = v34;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000DB7C((inited + 32));
    sub_10076DE8C();
    sub_1000F9168(inited);
    v45 = v87;
    v46 = v86;
    if (v67)
    {
      v94 = &type metadata for CGFloat;
      v95 = &protocol witness table for CGFloat;
      *&v93 = ceil(v43 + 16.0 + 16.0);
      v47 = v76;
      sub_10076DE8C();
      v48 = v91;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_10049CD5C(0, v48[2] + 1, 1, v48);
      }

      v50 = v48[2];
      v49 = v48[3];
      if (v50 >= v49 >> 1)
      {
        v48 = sub_10049CD5C((v49 > 1), v50 + 1, 1, v48);
      }

      v94 = v34;
      v95 = &protocol witness table for VerticalSpaceMeasurable;
      v51 = sub_10000DB7C(&v93);
      v52 = v77;
      (*(v77 + 16))(v51, v47, v34);
      v48[2] = v50 + 1;
      sub_100012498(&v93, &v48[5 * v50 + 4]);
      (*(v52 + 8))(v47, v34);
      *&v91 = v48;
    }

    (*(v83 + 104))(v81, enum case for StackMeasurable.Axis.vertical(_:), v85);
    v53 = v80;
    sub_10076D94C();
    sub_10076D92C();
    (*(v82 + 8))(v53, v84);
    v54 = v45[3];
    sub_10000CF78(v45, v54);
    v55 = v89;
    sub_1000FF02C(v54);
    sub_10076D40C();
    v56 = *(v90 + 8);
    v90 += 8;
    v56(v55, v46);
    sub_100770ACC();
    sub_10000CF78(v68, v68[3]);
    sub_10076D2AC();
    v58 = v57;
    v59 = v88;
    sub_10000CF78((v45 + v88[7]), *(v45 + v88[7] + 24));
    sub_10076D42C();
    *&v93 = v58;
    sub_10076D3FC();
    sub_10000CF78(v69, v69[3]);
    sub_10076D2AC();
    v61 = v60;
    sub_10000CF78((v45 + v59[8]), *(v45 + v59[8] + 24));
    sub_10076D42C();
    *&v93 = v61;
    sub_10076D3FC();
    sub_100016E2C(v45 + v70, &v91, &qword_10094BB30, qword_100796E40);
    if (v92)
    {
      sub_100012498(&v91, &v93);
      sub_10000CF78(&v93, v94);
      if (sub_10076D20C())
      {
        sub_10000CF78(&v93, v94);
        sub_10076D2AC();
        v63 = v62;
        sub_10000CF78((v45 + v88[9]), *(v45 + v88[9] + 24));
        sub_10076D42C();
        *&v91 = v63;
        sub_10076D3FC();
      }

      sub_10000CD74(&v93);
    }

    else
    {
      sub_10000CFBC(&v91, &qword_10094BB30, qword_100796E40);
    }

    v64 = (v45 + v88[10]);
    v65 = v64[3];
    sub_10000CF78(v64, v65);
    v66 = v89;
    sub_1000FF02C(v65);
    sub_10076D40C();
    v56(v66, v46);
    sub_100016E2C(v45 + v71, &v91, &unk_10094DA00, &qword_100783FA0);
    if (v92)
    {
      sub_100012498(&v91, &v93);
      sub_10000CF78(&v93, v94);
      if ((sub_10076D24C() & 1) == 0)
      {
        sub_10000CF78(&v93, v94);
        sub_10076D2AC();
      }

      sub_10000CD74(&v93);
    }

    else
    {
      sub_10000CFBC(&v91, &unk_10094DA00, &qword_100783FA0);
    }
  }

  else
  {
    v23.n128_f64[0] = a3;
    sub_1002434FC(v23, a4, a2, v19 != 0, a1);
  }
}

double sub_1002434FC(__n128 a1, double a2, uint64_t a3, int a4, void *a5)
{
  v47 = a4;
  v52 = sub_10076D93C();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10076D95C();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10076DE7C();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076443C();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_100763ADC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F840 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v16, qword_10099D280);
  type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10076D36C();
  v22 = v21;
  v54 = a5;
  v23 = [a5 traitCollection];
  (*(v17 + 16))(v19, v20, v16);
  v24 = sub_100763A4C();
  if ((v26 & 1) == 0 && ((v24 | v25) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v27 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v27 = qword_100944CA0;
    }

    v28 = sub_10000A61C(v10, v27);
    v29 = v44;
    (*(v44 + 16))(v12, v28, v10);
    (*(v29 + 32))(v15, v12, v10);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v29 + 8))(v15, v10);
  }

  sub_10076398C();
  v31 = v30;

  (*(v17 + 8))(v19, v16);
  v58 = _swiftEmptyArrayStorage;
  sub_10000A5D4(&unk_10094D050, &unk_1007A6E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  v56 = &type metadata for CGFloat;
  v57 = &protocol witness table for CGFloat;
  *&v55 = v22;
  v33 = v48;
  *(inited + 56) = v48;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C((inited + 32));
  sub_10076DE8C();
  sub_1000F9168(inited);
  if (v47)
  {
    v56 = &type metadata for CGFloat;
    v57 = &protocol witness table for CGFloat;
    *&v55 = ceil(v31 + 4.0 + 4.0);
    v34 = v45;
    sub_10076DE8C();
    v35 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_10049CD5C(0, v35[2] + 1, 1, v35);
    }

    v37 = v35[2];
    v36 = v35[3];
    if (v37 >= v36 >> 1)
    {
      v35 = sub_10049CD5C((v36 > 1), v37 + 1, 1, v35);
    }

    v56 = v33;
    v57 = &protocol witness table for VerticalSpaceMeasurable;
    v38 = sub_10000DB7C(&v55);
    v39 = v46;
    (*(v46 + 16))(v38, v34, v33);
    v35[2] = v37 + 1;
    sub_100012498(&v55, &v35[5 * v37 + 4]);
    (*(v39 + 8))(v34, v33);
    v58 = v35;
  }

  (*(v50 + 104))(v49, enum case for StackMeasurable.Axis.vertical(_:), v52);
  sub_10076D94C();
  sub_10076D92C();
  v41 = v40;
  (*(v51 + 8))(v8, v53);
  return v41;
}

uint64_t sub_100243C28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100243C70()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100243CB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100243CD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100243D08()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

char *sub_100243D34()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_clickAction;
  v3 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView] = [objc_allocWithZone(type metadata accessor for AppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer] = v5;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  v11 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView;
  *(*&v10[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_formattedDateView] + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_10088DDF8;
  swift_unknownObjectWeakAssign();
  [v10 addSubview:*&v10[v11]];
  v12 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_appEventCardView]];
  v13 = OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC20ProductPageExtension12AppEventView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v13] setMinimumPressDuration:0.1];
  [*&v10[v13] setDelegate:v10];
  [*&v10[v12] addGestureRecognizer:*&v10[v13]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100783DD0;
  *(v14 + 32) = sub_10076E3FC();
  *(v14 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v10;
}

uint64_t type metadata accessor for DynamicTypeLinkedTextView(uint64_t a1)
{
  result = qword_10094E730;
  if (!qword_10094E730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100244104(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_10077158C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = sub_10077149C();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

double sub_100244228@<D0>(uint64_t (*a1)(void *, __n128)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v16 = a1;
  v4 = *(a2 + 16);
  if (v4)
  {
    v14 = a3;
    v5 = (a2 + 72);
    while (1)
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      v15[0] = v6;
      v15[1] = v7;
      v15[2] = v8;
      v15[3] = v9;
      v15[4] = v10;
      v15[5] = v11;

      v12 = v16(v15);
      if (v3)
      {
        break;
      }

      if (v12)
      {
        goto LABEL_7;
      }

      v5 += 6;

      if (!--v4)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
LABEL_7:
        a3 = v14;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_9:
    *a3 = v6;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v10;
    a3[5] = v11;
  }

  return result;
}

void *sub_100244374(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

id sub_100244488()
{
  [v0 setAttributedText:0];
  *&v0[qword_10094E728] = 0;

  v1 = qword_10094E720;
  *&v0[qword_10094E720] = _swiftEmptyArrayStorage;

  if (*(*&v0[v1] + 16))
  {
    v2 = &UIAccessibilityTraitLink;
  }

  else
  {
    v2 = &UIAccessibilityTraitStaticText;
  }

  [v0 setAccessibilityTraits:*v2];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;

  return [v0 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
}

uint64_t sub_100244548(char *a1)
{
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  sub_100764C2C();
  v9 = sub_100764C3C();
  v9();
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_100764C3C();
  v11 = v10(v5);
  (v9)(v11);
  sub_10024E518(&unk_10094E890, &type metadata accessor for DirectionalTextAlignment, &protocol conformance descriptor for DirectionalTextAlignment);
  v12 = sub_10076FF1C();
  v13 = *(v3 + 8);
  v13(v5, v2);
  if ((v12 & 1) == 0)
  {
    sub_1002448C4();
  }

  v13(a1, v2);
  return (v13)(v8, v2);
}

id sub_100244750(void *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "textColor");

  return v1;
}

void sub_1002447A8(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v6 = a1;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v15, "textColor");
  v14.receiver = v6;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "setTextColor:", v7);
  v13.receiver = v6;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, "textColor");
  if (v9)
  {
    v10 = v9;
    if (v8)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v11 = v8;
      v12 = sub_100770EEC();

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (!v8)
  {
    goto LABEL_10;
  }

  sub_1002448C4();
  v11 = v8;
LABEL_9:

LABEL_10:
}

void sub_1002448C4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v63 - v3;
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100764BAC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CFBC(v4, &unk_100943250, &unk_1007841D0);
    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = *&v0[qword_10094E728];
  if (v9)
  {
    v67 = v6;
    v68 = v5;
    v10 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);

    v11 = sub_100764C1C();
    v66 = v8;
    v12 = sub_100770B3C();

    v13 = *&v0[qword_10094E720];
    v87.receiver = v0;
    v87.super_class = ObjectType;
    v73 = v13;

    v14 = objc_msgSendSuper2(&v87, "textAlignment");
    v15 = sub_100764BCC();
    v69 = v0;
    v86.receiver = v0;
    v86.super_class = ObjectType;
    v72 = ObjectType;
    v16 = objc_msgSendSuper2(&v86, "textColor");
    if (v16)
    {
      v17 = v16;
      v18 = [objc_allocWithZone(NSMutableParagraphStyle) init];
      [v18 setAlignment:v14];
      [v18 setLineBreakMode:v15];
      sub_10000A5D4(&unk_10094E7E0, qword_100785360);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100784500;
      *(inited + 32) = NSParagraphStyleAttributeName;
      v20 = sub_100016F40(0, &unk_10095D790, NSMutableParagraphStyle_ptr);
      *(inited + 40) = v18;
      *(inited + 64) = v20;
      *(inited + 72) = NSFontAttributeName;
      *(inited + 104) = v10;
      *(inited + 80) = v12;
      v21 = NSParagraphStyleAttributeName;
      v22 = v18;
      v23 = NSFontAttributeName;
      v24 = v12;
      v25 = sub_1000FC5F4(inited);
      swift_setDeallocating();
      sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
      swift_arrayDestroy();
      v80 = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      *&aBlock = v17;
      sub_10000CD64(&aBlock, v84);
      v64 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v25;
      sub_10024A2F4(v84, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
      v85 = v83;

      sub_100016F40(0, &unk_10094E7F0, NSMutableAttributedString_ptr);
      v71 = v24;
      v65 = v9;
      v27 = sub_10075F9DC();
      v28 = v85;

      v29.super.isa = v27;
      v30._rawValue = v28;
      isa = sub_10077079C(v29, v30).super.isa;
      v32 = v22;
      v33 = isa;
      v34 = [(objc_class *)v33 fullRange];
      [(objc_class *)v33 addAttribute:v21 value:v32 range:v34, v35];
      v63 = v32;

      v70 = swift_allocObject();
      *(v70 + 16) = 0;
      *&v84[0] = 0;
      v36 = *(v73 + 16);
      v75 = NSLinkAttributeName;
      if (v36)
      {
        v74 = NSUnderlineStyleAttributeName;
        v37 = v73 + 72;
        do
        {
          v38 = *(v37 - 24);
          v76 = *(v37 - 8);

          v77 = v38;

          v39 = sub_100245D94(v84, v33);
          v40 = sub_10076FF6C();
          v41 = [v39 rangeOfString:v40 options:4];
          v43 = v42;

          if (v41 != sub_10075D75C())
          {
            v44 = sub_10076FF6C();
            [(objc_class *)v33 addAttribute:v75 value:v44 range:v41, v43];

            if (UIAccessibilityButtonShapesEnabled())
            {
              v45 = sub_1007703CC().super.super.isa;
              [(objc_class *)v33 addAttribute:v74 value:v45 range:v41, v43];
            }
          }

          v37 += 48;

          --v36;
        }

        while (v36);
      }

      v46 = [(objc_class *)v33 fullRange];
      v48 = v47;
      v49 = v33;
      v50 = swift_allocObject();
      v51 = v73;
      v50[2] = v72;
      v50[3] = v51;
      v52 = v71;
      v50[4] = v70;
      v50[5] = v52;
      v50[6] = &v85;
      v50[7] = v49;
      v53 = swift_allocObject();
      *(v53 + 16) = sub_1000F41BC;
      *(v53 + 24) = v50;
      v81 = sub_10024DF90;
      v82 = v53;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v79 = sub_1002464A8;
      v80 = &unk_10088E128;
      v54 = _Block_copy(&aBlock);
      v55 = v52;

      [(objc_class *)v49 enumerateAttribute:v75 inRange:v46 options:v48 usingBlock:0, v54];
      _Block_release(v54);
      LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

      if ((v54 & 1) == 0)
      {
        v56 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v49];

        v57 = *&v84[0];

        v58 = v69;
        [v69 setAttributedText:v56];

        sub_10075F9CC();
        sub_10077009C();
        v60 = v59;
        v62 = v61;

        [v58 setTextContainerInset:{v60, 0.0, v62, 0.0}];

        (*(v67 + 8))(v66, v68);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }
}

id sub_1002451D8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "textAlignment");
}

void sub_100245218(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, "textAlignment");
  v9.receiver = v6;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setTextAlignment:", a3);
  v8.receiver = v6;
  v8.super_class = ObjectType;
  if (objc_msgSendSuper2(&v8, "textAlignment") != v7)
  {
    sub_1002448C4();
  }
}

uint64_t sub_1002452B8()
{
  sub_100764C2C();
  v0 = sub_100764C3C();

  return v0();
}

void (*sub_100245310(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_10076771C();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  sub_100764C2C();
  v9 = sub_100764C3C();
  v9();
  return sub_10024543C;
}

void sub_10024543C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_100244548(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_100244548(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1002454F0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  sub_1002448C4();
}

void sub_100245548(uint64_t a1, uint64_t a2)
{
  *&v2[qword_10094E728] = a1;

  v4 = qword_10094E720;
  *&v2[qword_10094E720] = a2;

  if (*(*&v2[v4] + 16))
  {
    v5 = &UIAccessibilityTraitLink;
  }

  else
  {
    v5 = &UIAccessibilityTraitStaticText;
  }

  [v2 setAccessibilityTraits:*v5];

  sub_1002448C4();
}

void sub_100245600(void *a1)
{
  v1 = a1;
  sub_1002448C4();
}

void sub_100245648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + qword_10094E720);
    v9 = Strong;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(Strong);
  *(&v16 - 2) = a2;
  sub_100244228(sub_10024E564, v8, &v17);

  v10 = v18;
  if (v18)
  {
    v11 = v17;
    v13 = v19;
    v12 = v20;
    v14 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      v22 = v11;
      v23 = v10;
      sub_1000B8AFC(&v22);

      v24 = v21;
      sub_1000B8AFC(&v24);
      sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100263BF0(v13, 1, v12, v6);
      v22 = v11;
      v23 = v10;
      sub_1000B8AFC(&v22);

      v24 = v21;
      sub_1000B8AFC(&v24);

      (*(v15 + 8))(v6, v14);
    }
  }
}

id sub_1002458B4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_10024E054(v9, v10);

  return v12;
}

BOOL sub_100245948()
{
  v1 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + qword_10094E720);
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[6];
    v7 = v4[7];
    v8 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);

    sub_10076F5AC();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {

      sub_10000CFBC(v3, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100263BF0(v6, 1, v7, v3);

      (*(v9 + 8))(v3, v8);
    }
  }

  return v5 != 0;
}

BOOL sub_100245B18(void *a1)
{
  v1 = a1;
  v2 = sub_100245948();

  return v2;
}

uint64_t sub_100245B4C()
{
  sub_10076B8DC();
  v0 = sub_1007713CC();
  v2 = v1;
  sub_100016C74(v7);
  v3 = sub_10075DB4C();
  if (v4)
  {
    if (v0 == v3 && v4 == v2)
    {

      v5 = 1;
    }

    else
    {
      v5 = sub_10077167C();
    }
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100245C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v14 = 0x2F3A6E6F69746361;
  v15 = 0xE90000000000002FLL;

  sub_10076B8DC();
  v16._countAndFlagsBits = sub_1007713CC();
  sub_1007700CC(v16);

  result = sub_100016C74(v13);
  v11 = v14;
  v12 = v15;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v11;
  a5[5] = v12;
  return result;
}

id sub_100245CF0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v5 = [objc_opt_self() configurationWithFont:a2 scale:1];
    swift_beginAccess();
    v6 = *v3;
    *v3 = v5;
    v4 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v4;
}

id sub_100245D94(void **a1, id a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v5 = [a2 string];
    if (!v5)
    {
      sub_10076FF9C();
      v5 = sub_10076FF6C();
    }

    v6 = [objc_allocWithZone(NSString) initWithString:v5];

    swift_beginAccess();
    v7 = *a1;
    *a1 = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100245E68(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, id a10)
{
  v16 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v16 - 8);
  v18 = v48 - v17;
  v19 = sub_10075DB7C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003F0D4(a1, &v56);
  if (!v59)
  {
    sub_10000CFBC(&v56, &unk_1009434C0, &qword_100783F60);
    return;
  }

  v51 = a3;
  if (swift_dynamicCast())
  {
    sub_10075DB6C();

    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_10000CFBC(v18, &unk_1009435D0, &qword_100785850);
      return;
    }

    v23 = (*(v20 + 32))(v22, v18, v19);
    __chkstk_darwin(v23);
    v48[-2] = v22;
    v24.n128_f64[0] = sub_100244228(sub_10024DFD0, a6, &v56);
    if (!v57)
    {
      goto LABEL_19;
    }

    v49 = a2;
    v50 = v57;
    v25 = v56;
    v26 = v58;
    v27 = v59;
    v28 = sub_10076B8FC();
    if (v28)
    {
      v29 = v28;
      v48[0] = v25;
      v48[1] = v26;
      v48[2] = v27;

      v30 = sub_100245CF0(a7, a8);
      if (sub_10076BE0C())
      {
        v31 = sub_10076044C();
        v32 = v49;
      }

      else
      {
        v33 = sub_10076BDFC();
        v32 = v49;
        if ((v33 & 1) == 0)
        {
          *&v53[0] = v48[0];
          *(&v53[0] + 1) = v50;
          sub_1000B8AFC(v53);

          v54 = v60;
          sub_1000B8AFC(&v54);

          goto LABEL_19;
        }

        v31 = sub_1005A6008(v29, v30);
      }

      if (v31)
      {
        v34 = v31;
        v35 = *a9;
        v61[0] = v60;
        v55 = &type metadata for String;
        v54 = v60;
        sub_10000CD64(&v54, v53);

        sub_1000B8A4C(v61, &v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v35;
        sub_10024A2F4(v53, NSLinkAttributeName, isUniquelyReferenced_nonNull_native);
        v37 = objc_allocWithZone(NSMutableAttributedString);
        v38 = sub_10076FF6C();
        v39 = [v37 initWithString:v38];

        v40 = [objc_opt_self() textAttachmentWithImage:v34];
        v41 = [objc_opt_self() attributedStringWithAttachment:v40];

        [v39 appendAttributedString:v41];
        type metadata accessor for Key(0);
        sub_10024E518(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
        isa = sub_10076FE3C().super.isa;

        v43 = [v39 fullRange];
        [v39 addAttributes:isa range:{v43, v44}];

        v45 = __OFADD__(v32, v51);
        v46 = v32 + v51;
        v47 = v48[0];
        if (v45)
        {
          __break(1u);
          return;
        }

        [a10 insertAttributedString:v39 atIndex:v46];

        *&v54 = v47;
        *(&v54 + 1) = v50;
        sub_1000B8AFC(&v54);

        sub_1000B8AFC(v61);

        goto LABEL_19;
      }

      *&v53[0] = v48[0];
      *(&v53[0] + 1) = v50;
      sub_1000B8AFC(v53);
    }

    else
    {
      *&v53[0] = v25;
      *(&v53[0] + 1) = v50;
      sub_1000B8AFC(v53);
    }

    v54 = v60;
    sub_1000B8AFC(&v54);
LABEL_19:
    (*(v20 + 8))(v22, v19, v24);
  }
}

uint64_t sub_1002464A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_10000CD64(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_10000CFBC(v13, &unk_1009434C0, &qword_100783F60);
}

double sub_100246584()
{

  return result;
}

double sub_1002465C4(uint64_t a1)
{

  return result;
}

uint64_t sub_100246618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100246660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}