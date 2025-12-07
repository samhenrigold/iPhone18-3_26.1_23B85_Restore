void sub_1003B463C()
{
  v1 = v0;
  v2 = sub_10076D39C();
  v95 = *(v2 - 8);
  v96 = v2;
  __chkstk_darwin(v2);
  v93 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v4 - 8);
  v94 = &v93 - v5;
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for QuoteView(0);
  v100.receiver = v0;
  v100.super_class = v10;
  objc_msgSendSuper2(&v100, "layoutSubviews");
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_leadingQuote];
  [v11 sizeToFit];
  sub_10076422C();
  MinY = CGRectGetMinY(v101);
  if (qword_1009402D8 != -1)
  {
    swift_once();
  }

  v97 = sub_10076D9AC();
  sub_10000A61C(v97, qword_10099F568);
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteLabel];
  sub_10076D17C();
  v14 = [v13 traitCollection];
  sub_10076D97C();
  v16 = v15;

  [v13 firstBaselineFromTop];
  v18 = v17;
  v98 = *(v7 + 8);
  v99 = v6;
  v98(v9, v6);
  v19 = MinY + v16 - v18;
  [v11 frame];
  Width = CGRectGetWidth(v102);
  v21 = &v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs];
  v22 = Width + *&v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs + 56] + *&v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs + 40];
  sub_10076422C();
  v24 = v23 - v22;
  [v13 sizeThatFits:{v23 - v22, 1.79769313e308}];
  v26 = v25;
  v28 = v27;
  v29 = *(v21 + 4);
  sub_10076422C();
  if (v29 == 1)
  {
    [v13 setFrame:{CGRectGetMaxX(*&v30) - v26 - v22, v19, v26, v28}];
    sub_10076422C();
    v34 = CGRectGetMaxX(v103) - *(v21 + 5);
    [v11 frame];
    v35 = v34 - CGRectGetWidth(v104);
  }

  else
  {
    [v13 setFrame:{v22 + CGRectGetMinX(*&v30), v19, v26, v28}];
    sub_10076422C();
    v35 = v36 + *(v21 + 5);
  }

  [v13 frame];
  v38 = v37 + *(v21 + 6);
  [v11 frame];
  [v11 setFrame:{v35, v38}];
  [v13 frame];
  MaxY = CGRectGetMaxY(v105);
  if (qword_1009402E0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v97, qword_10099F580);
  sub_10076D17C();
  v40 = [v13 traitCollection];
  sub_10076D97C();
  v42 = v41;

  [v13 lastBaselineFromBottom];
  v44 = v43;
  v98(v9, v99);
  v45 = MaxY + v42 - v44;
  v46 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_creditLabel];
  if (v46)
  {
    v47 = v46;
    [v47 sizeThatFits:{v24, 1.79769313e308}];
    v49 = v48;
    v51 = v50;
    v52 = *(v21 + 4);
    [v13 frame];
    if (v52 == 1)
    {
      MinX = CGRectGetMaxX(*&v53) - v49;
    }

    else
    {
      MinX = CGRectGetMinX(*&v53);
    }

    v58 = v97;
    v60 = v99;
    v59 = &selRef_initWithTabBarSystemItem_tag_;
    v97 = v10;
    if (qword_1009402E8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v58, qword_10099F598);
    sub_10076D17C();
    v61 = [v47 traitCollection];
    sub_10076D97C();
    v63 = v62;

    [v47 firstBaselineFromTop];
    v65 = v64;
    v66 = v98;
    v98(v9, v60);
    [v47 setFrame:{MinX, v45 + v63 - v65, v49, v51}];

    [v47 frame];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    v106.origin.x = v68;
    v106.origin.y = v70;
    v106.size.width = v72;
    v106.size.height = v74;
    CGRectGetMaxY(v106);
    if (qword_1009402F0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v58, qword_10099F5B0);
    sub_10076D17C();
    v75 = [v47 traitCollection];
    sub_10076D97C();

    [v47 lastBaselineFromBottom];
    v66(v9, v60);
  }

  else
  {
    v58 = v97;
    v59 = &selRef_initWithTabBarSystemItem_tag_;
  }

  v76 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView;
  if (([*&v1[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] isHidden] & 1) == 0)
  {
    v77 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork;
    if (v1[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork] == 1)
    {
      [v1 frame];
    }

    else
    {
      sub_10076422C();
    }

    CGRectGetMinX(*&v78);
    if (qword_1009402F8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v58, qword_10099F5C8);
    v82 = [v1 v59[274]];
    sub_10076D17C();
    sub_10076D97C();

    v98(v9, v99);
    if (v1[v77] == 1)
    {
      [v1 frame];
    }

    else
    {
      sub_10076422C();
    }

    v88 = v95;
    v87 = v96;
    v89 = v94;
    CGRectGetWidth(*&v83);
    v90 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_1003911F0(&v1[v90], v89);
    if ((*(v88 + 48))(v89, 1, v87))
    {
      sub_10023DEE4(v89);
      sub_10076422C();
      CGRectGetHeight(v107);
    }

    else
    {
      v91 = v93;
      (*(v88 + 16))(v93, v89, v87);
      sub_10023DEE4(v89);
      sub_10076D36C();
      (*(v88 + 8))(v91, v87);
    }

    v92 = *&v1[v76];
    sub_10075FC8C();
  }
}

id sub_1003B4F88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for QuoteView(uint64_t a1)
{
  result = qword_100955760;
  if (!qword_100955760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B50C8(uint64_t a1)
{
  sub_1003B518C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003B518C(uint64_t a1)
{
  if (!qword_100955770)
  {
    sub_10076D39C();
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_100955770);
    }
  }
}

uint64_t sub_1003B51E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1003B522C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003B5290(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100882228;
  v6._object = a2;
  v4 = sub_10077160C(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

UIImage *sub_1003B52DC(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSFontAttributeName;
  v4 = qword_1009402B8;
  v5 = NSFontAttributeName;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_1009556D8;
  v7 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  v8 = qword_1009402C0;
  v9 = v6;
  v10 = NSForegroundColorAttributeName;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_1009556E0;
  *(inited + 104) = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  *(inited + 80) = v11;
  v12 = v11;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
  swift_arrayDestroy();
  v13 = *(a1 + 32);
  v14 = objc_allocWithZone(NSAttributedString);
  v15 = sub_10076FF6C();
  type metadata accessor for Key(0);
  sub_1001E4F38();
  isa = sub_10076FE3C().super.isa;

  v17 = [v14 initWithString:v15 attributes:isa];

  [v2 setAttributedText:v17];
  v18 = v2;
  [v18 sizeToFit];
  [v18 frame];
  v19 = CGRectGetWidth(v32) + *(a1 + 64);
  if (v13 == 1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = *(a1 + 64);
  }

  [v18 frame];
  Height = CGRectGetHeight(v33);
  v22 = [objc_opt_self() mainScreen];
  [v22 scale];
  v24 = v23;

  v31.width = v19;
  v31.height = Height;
  UIGraphicsBeginImageContextWithOptions(v31, 0, v24);
  [v18 frame];
  v26 = v25;
  v28 = v27;

  [v18 drawTextInRect:{v20, 0.0, v26, v28}];
  v29 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v29;
}

id sub_1003B5644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

void *sub_1003B5688(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v3 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
    v16 = 0.0;
    v18 = 0.0;
  }

  v19 = [v3 layoutAttributesForElementsInRect:{v12, v14, v16, v18}];
  if (v19)
  {
    v20 = v19;
    sub_1000DE4D0();
    v21 = sub_1007701BC();

    if (v21 >> 62)
    {
LABEL_26:
      v22 = sub_10077158C();
      if (v22)
      {
LABEL_7:
        v34 = v4;
        v4 = 0;
        v33 = (v5 + 8);
        v5 = _swiftEmptyArrayStorage;
        do
        {
          v23 = v4;
          while (1)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v24 = sub_10077149C();
            }

            else
            {
              if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v24 = *(v21 + 8 * v23 + 32);
            }

            v25 = v24;
            v4 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            if (![v24 representedElementCategory])
            {
              break;
            }

            ++v23;
            if (v4 == v22)
            {
              goto LABEL_28;
            }
          }

          v26 = [v25 indexPath];
          sub_10075E06C();

          v32 = sub_10075E0AC();
          (*v33)(v8, v34);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10049E22C(0, *(v5 + 2) + 1, 1, v5);
          }

          v28 = *(v5 + 2);
          v27 = *(v5 + 3);
          if (v28 >= v27 >> 1)
          {
            v5 = sub_10049E22C((v27 > 1), v28 + 1, 1, v5);
          }

          *(v5 + 2) = v28 + 1;
          *&v5[8 * v28 + 32] = v32;
        }

        while (v4 != v22);
        goto LABEL_28;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_7;
      }
    }

    v5 = _swiftEmptyArrayStorage;
LABEL_28:

    v29 = sub_100223D40(v5);

    return v29;
  }

  return _swiftEmptySetSingleton;
}

char *sub_1003B59A0(void *a1, uint64_t a2)
{
  v25 = a1;
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding];

  v8 = [v25 indexPath];
  sub_10075E06C();

  LOBYTE(v8) = sub_100693374(v6, v7);

  (*(v4 + 8))(v6, v3);
  if (v8)
  {
    v9 = [v2 collectionView];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for BaseCollectionViewLayoutAttributes();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        v13 = v25;
        v14 = v10;
        [v14 contentOffset];
        v16 = v15;
        v17 = -v15;
        if (v15 > 0.0)
        {
          v17 = 0.0;
        }

        *&v12[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance] = v17;
        v18 = v13;
        [v12 frame];
        [v12 setFrame:?];
        [v12 frame];
        [v12 setFrame:?];
        v12[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding] = v16 < 0.0;
        if (v16 <= 0.0)
        {

          *&v12[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY] = 0;
        }

        else
        {
          [v14 contentOffset];
          v20 = v19;

          v21 = v20 * 0.28;
          if (v20 * 0.28 < 0.0)
          {
            v21 = 0.0;
          }

          *&v12[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY] = v21;
        }

        return v12;
      }
    }
  }

  v22 = v25;

  return v22;
}

_OWORD *sub_1003B5C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for BaseCollectionViewLayoutAttributes();
  v9.receiver = v2;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "copyWithZone:", a1);
  sub_10077123C();
  swift_unknownObjectRelease();
  sub_10000CD08(v10, v8);
  if (!swift_dynamicCast())
  {
    return sub_10000CD64(v10, a2);
  }

  *(v7 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY) = *&v2[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY];
  *(v7 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance) = *&v2[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance];
  *(v7 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding) = v2[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding];
  *(a2 + 24) = v5;
  *a2 = v7;
  return sub_10000CD74(v10);
}

BOOL sub_1003B5D94(uint64_t a1)
{
  sub_10003F0D4(a1, v18);
  v3 = v19;
  if (v19)
  {
    v4 = sub_10000CF78(v18, v19);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_10077165C();
    (*(v5 + 8))(v8, v3);
    sub_10000CD74(v18);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for BaseCollectionViewLayoutAttributes();
  v17.receiver = v1;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, "isEqual:", v9);
  swift_unknownObjectRelease();
  if (!v11)
  {
    return 0;
  }

  sub_10003F0D4(a1, v18);
  if (!v19)
  {
    sub_1000258C0(v18);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY] != *&v16[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY] || v1[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding] != v16[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding])
  {

    return 0;
  }

  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance];
  v14 = *&v16[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance];

  return v13 == v14;
}

id sub_1003B60D4(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding] = _swiftEmptySetSingleton;
  v5 = &v3[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
  *v5 = 0;
  *(v5 + 1) = 0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002BAFEC;
  aBlock[3] = &unk_100893578;
  v6 = _Block_copy(aBlock);

  v39.receiver = v3;
  v39.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  v7 = objc_msgSendSuper2(&v39, "initWithSectionProvider:configuration:", v6, a3);
  _Block_release(v6);
  type metadata accessor for GradientSectionBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v7;
  sub_1007708EC();
  v10 = sub_10076FF6C();

  [v9 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v10];

  type metadata accessor for MaterialGradientSectionBackgroundView();
  v11 = swift_getObjCClassFromMetadata();
  sub_1007708EC();
  v12 = sub_10076FF6C();

  [v9 registerClass:v11 forDecorationViewOfKind:v12];

  type metadata accessor for ArtworkSectionBackgroundView();
  v13 = swift_getObjCClassFromMetadata();
  sub_1007708EC();
  v14 = sub_10076FF6C();

  [v9 registerClass:v13 forDecorationViewOfKind:v14];

  type metadata accessor for InteractiveSectionBackgroundView(0);
  v15 = swift_getObjCClassFromMetadata();
  sub_1007708EC();
  v16 = sub_10076FF6C();

  [v9 registerClass:v15 forDecorationViewOfKind:v16];

  type metadata accessor for EditorsChoiceBackgroundView();
  v17 = swift_getObjCClassFromMetadata();
  sub_1007708EC();
  v18 = sub_10076FF6C();

  [v9 registerClass:v17 forDecorationViewOfKind:v18];

  v19 = ASKBuildTypeGetCurrent();
  v20 = sub_10076FF9C();
  v22 = v21;
  if (v20 == sub_10076FF9C() && v22 == v23)
  {
    goto LABEL_3;
  }

  v24 = sub_10077167C();

  if (v24)
  {
    goto LABEL_5;
  }

  v28 = sub_10076FF9C();
  v30 = v29;
  if (v28 == sub_10076FF9C() && v30 == v31)
  {
LABEL_3:

    goto LABEL_6;
  }

  v32 = sub_10077167C();

  if (v32)
  {
LABEL_5:

    goto LABEL_6;
  }

  v33 = sub_10076FF9C();
  v35 = v34;
  if (v33 == sub_10076FF9C() && v35 == v36)
  {
  }

  else
  {
    v37 = sub_10077167C();

    if ((v37 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  sub_10076F73C();
  sub_10076F72C();
  if (qword_1009414D0 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000A61C(v38, qword_1009A3248);
  sub_10076F41C();

  if (LOBYTE(aBlock[0]) == 2 || (aBlock[0] & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_6:
  type metadata accessor for TodayDebugSectionBackgroundView();
  v25 = swift_getObjCClassFromMetadata();
  sub_1007708EC();
  v26 = sub_10076FF6C();

  [v9 registerClass:v25 forDecorationViewOfKind:v26];

LABEL_7:

LABEL_8:

  return v9;
}

void *sub_1003B66AC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v20.receiver = v5;
  v20.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  result = objc_msgSendSuper2(&v20, "layoutAttributesForElementsInRect:", a2, a3, a4, a5);
  if (result)
  {
    v11 = result;
    sub_1000DE4D0();
    v12 = sub_1007701BC();

    if (v12 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
    {
      v19 = _swiftEmptyArrayStorage;
      v14 = v5;
      v5 = &v19;
      result = sub_1007714EC();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v15 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = sub_10077149C();
          goto LABEL_7;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v16 = *(v12 + 8 * v15 + 32);
LABEL_7:
        v18 = v16;
        ++v15;
        sub_1003B59A0(v16, v17);

        sub_1007714CC();
        sub_1007714FC();
        sub_10077150C();
        v5 = &v19;
        sub_1007714DC();
        if (i == v15)
        {

          return v19;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_1003B6A84(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v12 = a3;
  v13 = a1;
  isa = sub_10075E02C().super.isa;
  v15 = type metadata accessor for BaseCollectionCompositionalLayout();
  v20.receiver = v13;
  v20.super_class = v15;
  v16 = objc_msgSendSuper2(&v20, *a5, v12, isa);

  if (v16)
  {
    v18 = sub_1003B59A0(v16, v17);

    v13 = v16;
  }

  else
  {
    v18 = 0;
  }

  (*(v9 + 8))(v11, v8);

  return v18;
}

uint64_t sub_1003B6C9C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = [v4 collectionView];
  if (!v10)
  {
    v30.receiver = v4;
    v30.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
    return objc_msgSendSuper2(&v30, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding] = _swiftEmptySetSingleton;

  if ([v11 delegate])
  {
    ObjectType = swift_getObjectType();
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = (*(v14 + 8))(v11, ObjectType, v14);
      v16 = v11;
      v17 = sub_1003B7984(v15, v16);
      swift_unknownObjectRelease();

      *&v4[v12] = v17;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v19 = [v4 collectionView];
  if (v19)
  {
    v20 = v19;
    [v19 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;

    if (v24 != a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v22 = 0.0;
    v26 = 0.0;
    if (a3 != 0.0)
    {
      goto LABEL_18;
    }
  }

  if (v26 == a4 && (!*(*&v5[v12] + 16) || v22 == a2))
  {
    v29.receiver = v5;
    v29.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
    v28 = objc_msgSendSuper2(&v29, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);

    return v28;
  }

LABEL_18:

  return 1;
}

id sub_1003B6F34(double a1, double a2, double a3, double a4)
{
  v9 = [v4 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  if (v12 == a3 && v14 == a4)
  {
    v16 = OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding;
    if (*(*(v4 + OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding) + 16))
    {
      v17 = [objc_allocWithZone(UICollectionViewLayoutInvalidationContext) init];
      v18 = *(v4 + v16);
      v19 = *(v18 + 16);
      if (!v19 || (v4 = sub_10049EF00(*(v18 + 16), 0), v20 = *(sub_10075E11C() - 8), sub_10061F108(&v28, v4 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19, v18), v22 = v21, v23 = v28, , sub_100178640(v23), v22 == v19))
      {
        sub_10075E11C();
        isa = sub_1007701AC().super.isa;

        [v17 invalidateItemsAtIndexPaths:isa];

        return v17;
      }

      __break(1u);
    }
  }

  v24 = type metadata accessor for BaseCollectionCompositionalLayout();
  v29.receiver = v4;
  v29.super_class = v24;
  v25 = objc_msgSendSuper2(&v29, "invalidationContextForBoundsChange:", a1, a2, a3, a4);

  return v25;
}

id sub_1003B72C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t *sub_1003B7370(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1003B7700(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_1003B7408(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_10075E11C();
  v8 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10000A5D4(&qword_10094B0E8, &qword_100790F88);
  result = sub_10077144C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v34 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v35 = *(v8 + 72);
    v19 = (*(v8 + 16))(v36, v18 + v35 * (v15 | (v13 << 6)), v37);
    sub_1003B7D2C(v19, v20);
    result = sub_10076FEAC();
    v21 = -1 << *(v10 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v10 + 48) + v24 * v35, v36, v37);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v12 = v34;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v34 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1003B7700(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = a2;
  v30 = a1;
  v6 = sub_10075E11C();
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v11 = 0;
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v16 = (v13 + 63) >> 6;
  v36 = v7;
  v34 = (v7 + 8);
  v35 = v7 + 16;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v20 = v17 | (v11 << 6);
    v21 = *(a3 + 48);
    v22 = *(v36 + 72);
    v33 = v20;
    (*(v36 + 16))(v10, v21 + v22 * v20, v6, v8);
    v23 = [a4 numberOfSections];
    if (sub_10075E0AC() >= v23)
    {
      (*v34)(v10, v6);
    }

    else
    {
      v32 = [a4 numberOfItemsInSection:sub_10075E0AC()];
      v24 = a4;
      v25 = a3;
      v26 = sub_10075E09C();
      (*v34)(v10, v6);
      v27 = v26 < v32;
      a3 = v25;
      a4 = v24;
      if (v27)
      {
        *(v30 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_18:

          sub_1003B7408(v30, v29, v31, a3);
          return;
        }
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_18;
    }

    v19 = *(v12 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1003B7984(uint64_t a1, void *a2)
{
  v3 = v2;
  v38 = sub_10075E11C();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  LOBYTE(v7) = *(a1 + 32);
  LODWORD(a1) = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = a2;
  if (a1 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v37 = v11;
    v30 = v9;
    v31 = v3;
    v29 = &v29;
    __chkstk_darwin(v11);
    v32 = &v29 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v10);
    v10 = 0;
    v12 = v38;
    v3 = v39 + 56;
    v13 = 1 << *(v39 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v39 + 56);
    v9 = (v13 + 63) >> 6;
    v35 = v6 + 16;
    v36 = v6;
    v33 = 0;
    v34 = (v6 + 8);
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v6 = v16 | (v10 << 6);
      (*(v36 + 16))(v8, *(v39 + 48) + *(v36 + 72) * v6, v12);
      v19 = v37;
      v20 = [v37 numberOfSections];
      if (sub_10075E0AC() >= v20)
      {
        v11 = (*v34)(v8, v12);
      }

      else
      {
        v21 = [v19 numberOfItemsInSection:sub_10075E0AC()];
        v22 = sub_10075E09C();
        v11 = (*v34)(v8, v38);
        v12 = v38;
        if (v22 < v21)
        {
          *&v32[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
LABEL_18:
            v24 = sub_1003B7408(v32, v30, v33, v39);

            return v24;
          }
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_18;
      }

      v18 = *(v3 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    v26 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v11 = v26;
  }

  v27 = swift_slowAlloc();
  v28 = v26;
  v24 = sub_1003B7370(v27, v9, v39, v28);

  return v24;
}

unint64_t sub_1003B7D2C(uint64_t a1, uint64_t a2)
{
  result = qword_10094E860;
  if (!qword_10094E860)
  {
    sub_10075E11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094E860);
  }

  return result;
}

uint64_t sub_1003B7D84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1003B7DBC()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

double sub_1003B7DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003B7E14(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = sub_10076E12C();
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_100955A10, qword_1007A0438);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_10076D4EC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  __chkstk_darwin(v19);
  v21 = &v28 - v20;
  sub_10076D58C();
  sub_1003BB74C(&qword_100955A38, &type metadata accessor for DisjointStack, &protocol conformance descriptor for DisjointStack);
  v34 = a1;
  sub_10076D91C();
  v28 = v21;
  v29 = v13;
  (*(v13 + 16))(v15, v21, v12);
  sub_1003BB74C(&qword_100955A40, &type metadata accessor for DisjointStack.Placements, &protocol conformance descriptor for DisjointStack.Placements);
  sub_10077016C();
  sub_1003BB74C(&qword_100955A48, &type metadata accessor for DisjointStack.Placements, &protocol conformance descriptor for DisjointStack.Placements);
  sub_1007711CC();
  v22 = v35;
  v23 = v35 + 48;
  v24 = *(v35 + 48);
  if (v24(v11, 1, v6) != 1)
  {
    v25 = *(v22 + 32);
    v35 = v22 + 32;
    v30 = (v22 + 8);
    v31 = v25;
    v32 = v11;
    v33 = v23;
    do
    {
      v31(v8, v11, v6);
      sub_10076E10C();
      sub_10000CF78(v36, v36[3]);
      sub_10076E11C();
      [v34 layoutDirection];
      sub_100770A5C();
      v11 = v32;
      sub_10076E0EC();
      (*v30)(v8, v6);
      sub_10000CD74(v36);
      sub_1007711CC();
    }

    while (v24(v11, 1, v6) != 1);
  }

  v26 = *(v29 + 8);
  v26(v18, v12);
  return (v26)(v28, v12);
}

uint64_t sub_1003B82BC(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = sub_10076E12C();
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_100955A10, qword_1007A0438);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_10076D59C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  __chkstk_darwin(v19);
  v21 = &v28 - v20;
  sub_10076D65C();
  sub_1003BB74C(&qword_100955A18, &type metadata accessor for VerticalStack, &protocol conformance descriptor for VerticalStack);
  v34 = a1;
  sub_10076D91C();
  v28 = v21;
  v29 = v13;
  (*(v13 + 16))(v15, v21, v12);
  sub_1003BB74C(&qword_100955A20, &type metadata accessor for VerticalStack.Placements, &protocol conformance descriptor for VerticalStack.Placements);
  sub_10077016C();
  sub_1003BB74C(&qword_100955A28, &type metadata accessor for VerticalStack.Placements, &protocol conformance descriptor for VerticalStack.Placements);
  sub_1007711CC();
  v22 = v35;
  v23 = v35 + 48;
  v24 = *(v35 + 48);
  if (v24(v11, 1, v6) != 1)
  {
    v25 = *(v22 + 32);
    v35 = v22 + 32;
    v30 = (v22 + 8);
    v31 = v25;
    v32 = v11;
    v33 = v23;
    do
    {
      v31(v8, v11, v6);
      sub_10076E10C();
      sub_10000CF78(v36, v36[3]);
      sub_10076E11C();
      [v34 layoutDirection];
      sub_100770A5C();
      v11 = v32;
      sub_10076E0EC();
      (*v30)(v8, v6);
      sub_10000CD74(v36);
      sub_1007711CC();
    }

    while (v24(v11, 1, v6) != 1);
  }

  v26 = *(v29 + 8);
  v26(v18, v12);
  return (v26)(v28, v12);
}

uint64_t sub_1003B8764()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_100955870);
  sub_10000A61C(v4, qword_100955870);
  if (qword_100941110 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A2128);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003B893C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_100955888);
  sub_10000A61C(v4, qword_100955888);
  if (qword_100941118 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A2140);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003B8B10()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009558A0);
  sub_10000A61C(v4, qword_1009558A0);
  if (qword_100941128 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A2170);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003B8CE4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009558B8);
  sub_10000A61C(v4, qword_1009558B8);
  if (qword_100941128 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A2170);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

void sub_1003B8EB8(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v84 - v10;
  v12 = sub_100766FCC();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10076702C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100766F4C();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_100766FBC();
  sub_100766F5C();
  v21 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_materialBackground;
  *&v4[v21] = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork;
  type metadata accessor for CollectionLockupArtwork();
  *&v4[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v26 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel;
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = sub_10076FF6C();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_chevronView;
    v30 = [objc_allocWithZone(UIImageView) initWithImage:v28];

    *&v4[v29] = v30;
    v31 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
    *&v4[v31] = [objc_allocWithZone(UITapGestureRecognizer) init];
    v32 = &v4[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_selectionHandler];
    v33 = type metadata accessor for CarouselItemCollectionLockupOverlay(0);
    *v32 = 0;
    *(v32 + 1) = 0;
    v90.receiver = v4;
    v90.super_class = v33;
    v34 = objc_msgSendSuper2(&v90, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v38 = v34;
    [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v38 setOverrideUserInterfaceStyle:2];
    [v38 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v87 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_materialBackground;
    v39 = *&v38[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_materialBackground];
    sub_1003E4478(26.0);

    v40 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel;
    v41 = qword_100941110;
    v42 = *&v38[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel];
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_10076D3DC();
    v44 = sub_10000A61C(v43, qword_1009A2128);
    v45 = *(v43 - 8);
    v46 = *(v45 + 16);
    v46(v11, v44, v43);
    v47 = *(v45 + 56);
    v47(v11, 0, 1, v43);
    sub_1007625DC();

    [*&v38[v40] setNumberOfLines:1];
    v48 = *&v38[v40];
    v49 = objc_opt_self();
    v50 = v48;
    v89 = v49;
    v51 = [v49 secondaryLabelColor];
    v52 = v40;
    v53 = v51;
    [v50 setTextColor:v51];

    v88 = v52;
    v54 = [*&v38[v52] layer];
    v86 = kCAFilterPlusL;
    [v54 setCompositingFilter:?];

    v55 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel;
    v56 = qword_100941118;
    v57 = *&v38[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel];
    if (v56 != -1)
    {
      swift_once();
    }

    v58 = sub_10000A61C(v43, qword_1009A2140);
    v46(v11, v58, v43);
    v47(v11, 0, 1, v43);
    sub_1007625DC();

    [*&v38[v55] setNumberOfLines:1];
    v59 = *&v38[v55];
    v60 = [v89 labelColor];
    [v59 setTextColor:v60];

    v61 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel;
    v62 = *&v38[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel];
    v85 = v55;
    v63 = qword_100941128;
    v64 = v62;
    if (v63 != -1)
    {
      swift_once();
    }

    v65 = sub_10000A61C(v43, qword_1009A2170);
    v46(v11, v65, v43);
    v47(v11, 0, 1, v43);
    sub_1007625DC();

    [*&v38[v61] setNumberOfLines:1];
    v66 = *&v38[v61];
    v67 = v89;
    v68 = [v89 secondaryLabelColor];
    [v66 setTextColor:v68];

    v69 = [*&v38[v61] layer];
    v70 = v86;
    [v69 setCompositingFilter:v86];

    v71 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_chevronView;
    v72 = *&v38[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_chevronView];
    v73 = objc_opt_self();
    v74 = v72;
    v75 = [v73 configurationWithTextStyle:UIFontTextStyleBody];
    [v74 setPreferredSymbolConfiguration:v75];

    v76 = *&v38[v71];
    v77 = [v67 secondaryLabelColor];
    [v76 setTintColor:v77];

    v78 = [*&v38[v71] layer];
    [v78 setCompositingFilter:v70];

    v79 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
    [*&v38[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer] setEnabled:0];
    v80 = *&v38[v79];
    v81 = v38;
    [v80 addTarget:v81 action:"handleSelection:"];
    v82 = *&v38[v79];
    [v82 setDelegate:v81];

    [v81 addGestureRecognizer:*&v38[v79]];
    [v81 addSubview:*&v38[v87]];
    [v81 addSubview:*&v81[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork]];
    [v81 addSubview:*&v38[v88]];
    [v81 addSubview:*&v38[v85]];
    [v81 addSubview:*&v38[v61]];
    [v81 addSubview:*&v38[v71]];
    sub_1003BA380(v83);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003B9A70@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v75 = a1;
  v77 = a2;
  v68 = sub_10076DDFC();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = &v61 - v6;
  v73 = sub_10076DE2C();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10076D8DC();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = &v61 - v10;
  __chkstk_darwin(v11);
  v64 = &v61 - v12;
  v13 = sub_10076D65C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  __chkstk_darwin(v23);
  v25 = &v61 - v24;
  sub_10076D63C();
  v26 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel);
  v27 = sub_1007626BC();
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v26;
  v28 = v26;
  sub_10076D64C();
  v74 = v14;
  v29 = *(v14 + 8);
  v29(v16, v13);
  sub_10000CD74(&v91);
  v30 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel);
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v30;
  v31 = v30;
  sub_10076D64C();
  v29(v19, v13);
  sub_10000CD74(&v91);
  v32 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel);
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v32;
  v33 = v32;
  v78 = v25;
  sub_10076D64C();
  v34 = v13;
  v76 = v29;
  v29(v22, v13);
  sub_10000CD74(&v91);
  if (v75)
  {
    v35 = v62;
    sub_10076D8AC();
    v36 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork);
    v92 = type metadata accessor for CollectionLockupArtwork();
    v93 = sub_1003BB74C(&qword_100955A68, type metadata accessor for CollectionLockupArtwork, &unk_1007A7EC8);
    v91 = v36;
    v37 = v36;
    v38 = v63;
    sub_10076D8BC();
    v39 = *(v65 + 8);
    v40 = v66;
    v39(v35, v66);
    sub_10000CD74(&v91);
    v92 = v13;
    v93 = &protocol witness table for VerticalStack;
    v41 = sub_10000DB7C(&v91);
    (*(v74 + 16))(v41, v78, v13);
    v42 = v64;
    sub_10076D8BC();
    v39(v38, v40);
    sub_10000CD74(&v91);
    v43 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_chevronView);
    v89 = sub_10007E008();
    v90 = &protocol witness table for UIImageView;
    v88 = v43;
    v92 = v40;
    v93 = &protocol witness table for HorizontalStack;
    sub_10000DB7C(&v91);
    v44 = v43;
    sub_10076D8BC();
    v39(v42, v40);
    sub_10000CD74(&v88);
  }

  else
  {
    v45 = v74;
    (*(v74 + 16))(v22, v78, v13);
    v46 = type metadata accessor for TextLayout(0);
    v47 = swift_allocObject();
    (*(v45 + 32))(v47 + OBJC_IVAR____TtC20ProductPageExtensionP33_37948684BD19837A3AF46FC5B97A3E1B10TextLayout_textStack, v22, v13);
    v92 = v46;
    v93 = sub_1003BB74C(&unk_100955A50, type metadata accessor for TextLayout, &unk_1007A03F4);
    v91 = v47;
    v48 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork);
    v49 = type metadata accessor for CollectionLockupArtwork();
    v90 = &protocol witness table for UIView;
    v89 = v49;
    v88 = v48;
    v86 = &type metadata for CGFloat;
    v87 = &protocol witness table for CGFloat;
    v85 = 0x4024000000000000;
    v50 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
    v51 = *(v67 + 104);
    v52 = v68;
    v51(v69, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v68);
    v53 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_chevronView);
    v83 = sub_10007E008();
    v84 = &protocol witness table for UIView;
    v81 = &protocol witness table for CGFloat;
    v82 = v53;
    v80 = &type metadata for CGFloat;
    v79 = 0x4038000000000000;
    v51(v71, v50, v52);
    v54 = v48;
    v55 = v53;
    v56 = v70;
    sub_10076DE1C();
    sub_1003BB74C(&qword_100955A60, &type metadata accessor for FlankedHorizontalLayout, &protocol conformance descriptor for FlankedHorizontalLayout);
    v57 = v73;
    sub_10076D2DC();
    (*(v72 + 8))(v56, v57);
  }

  sub_10000A570(&v91, &v88);
  v58 = sub_10076E04C();
  v59 = v77;
  v77[3] = v58;
  v59[4] = &protocol witness table for Margins;
  sub_10000DB7C(v59);
  sub_10076E03C();
  v76(v78, v34);
  return sub_10000CD74(&v91);
}

id sub_1003BA380(__n128 a1)
{
  v2 = v1;
  v3 = sub_100766FCC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = sub_10076703C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v35 - v20;
  v36 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel];
  v22 = *(v13 + 16);
  v43 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_displayOptions;
  v44 = v22;
  (v22)(&v35 - v20, &v2[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_displayOptions], v12, v19);
  sub_100766FDC();
  v37 = *(v13 + 8);
  v37(v21, v12);
  v23 = sub_100766F9C();
  v24 = *(v4 + 8);
  v40 = v4 + 8;
  v41 = v3;
  v42 = v24;
  v24(v11, v3);
  if (!v23)
  {
    v23 = [objc_opt_self() secondaryLabelColor];
  }

  [v36 setTextColor:v23];

  v25 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel];
  v44(v17, &v2[v43], v12);
  sub_100766FDC();
  v26 = v17;
  v27 = v37;
  v37(v26, v12);
  v28 = sub_100766FAC();
  v29 = v41;
  v42(v8, v41);
  if (!v28)
  {
    v28 = [objc_opt_self() labelColor];
  }

  [v25 setTextColor:v28];

  v30 = *&v2[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel];
  v31 = v38;
  v44(v38, &v2[v43], v12);
  v32 = v39;
  sub_100766FDC();
  v27(v31, v12);
  v33 = sub_100766F7C();
  v42(v32, v29);
  if (!v33)
  {
    v33 = [objc_opt_self() secondaryLabelColor];
  }

  [v30 setTextColor:v33];

  return [v2 setNeedsLayout];
}

id sub_1003BA83C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemCollectionLockupOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003BA98C(uint64_t a1)
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

double sub_1003BAA40(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10001CE50(a1, a2);
  sub_10001CE50(a1, a2);
  v8 = sub_1000167E0(v6, v7);
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer);
  if (a1)
  {
    v8 = sub_1000167E0(a1, a2);
  }

  [v9 setEnabled:{a1 != 0, v8}];

  return sub_1000167E0(a1, a2);
}

double sub_1003BAAF4(__n128 a1, uint64_t a2, char *a3)
{
  v4 = sub_10076705C();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  sub_1004D5164(v5, a3);

  return result;
}

uint64_t sub_1003BAB64()
{
  sub_10075FD2C();
  sub_1003BB74C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100760BFC();
  sub_100760BFC();
  sub_100760BFC();
  return sub_100760BFC();
}

uint64_t sub_1003BAC5C(__n128 a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtensionP33_37948684BD19837A3AF46FC5B97A3E1B10TextLayout_textStack;
  v3 = sub_10076D65C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_1003BAD20(uint64_t a1, __n128 a2)
{
  result = sub_10076D65C();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003BADB0(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 traitCollection];
  sub_1003B82BC(v9, a2, a3, a4, a5);

  return sub_10076D1BC();
}

double sub_1003BAE5C(void *a1, __n128 a2, double a3)
{
  v4 = sub_10076D59C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  sub_10076DDEC();
  sub_10076D65C();
  sub_1003BB74C(&qword_100955A18, &type metadata accessor for VerticalStack, &protocol conformance descriptor for VerticalStack);
  sub_10076D91C();
  sub_1003BB74C(&qword_100955A30, &type metadata accessor for VerticalStack.Placements, &protocol conformance descriptor for VerticalStack.Placements);
  sub_10076DAFC();
  v11 = v10;

  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t sub_1003BB09C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10076D5EC();
  v6 = sub_10076D60C();
  sub_10076D62C();
  sub_10076D62C();
  if (sub_10076D62C() != v6)
  {
    sub_10076D62C();
  }

  sub_10076D5DC();
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D9AC();
  v8 = sub_10000A61C(v7, a3);
  v11[3] = v7;
  v11[4] = &protocol witness table for StaticDimension;
  v9 = sub_10000DB7C(v11);
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  return sub_10076D5BC();
}

uint64_t sub_1003BB1A4()
{
  sub_10076D5EC();
  sub_10000A5D4(&qword_100955A70, &unk_10078BF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  v1 = sub_10076D60C();
  *(inited + 32) = v1;
  v2 = sub_10076D61C();
  *(inited + 40) = v2;
  sub_10076D62C();
  sub_10076D62C();
  if (sub_10076D62C() != v1)
  {
    sub_10076D62C();
  }

  sub_10076D62C();
  if (sub_10076D62C() != v2)
  {
    sub_10076D62C();
  }

  sub_10076D5DC();
  if (qword_100940310 != -1)
  {
    swift_once();
  }

  v3 = sub_10076D9AC();
  v4 = sub_10000A61C(v3, qword_1009558A0);
  v11 = v3;
  v12 = &protocol witness table for StaticDimension;
  v5 = sub_10000DB7C(v10);
  v6 = *(*(v3 - 8) + 16);
  v6(v5, v4, v3);
  sub_10076D5BC();
  if (qword_100940318 != -1)
  {
    swift_once();
  }

  v7 = sub_10000A61C(v3, qword_1009558B8);
  v11 = v3;
  v12 = &protocol witness table for StaticDimension;
  v8 = sub_10000DB7C(v10);
  v6(v8, v7, v3);
  return sub_10076D5CC();
}

id sub_1003BB3D8(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel];
  sub_1007670AC();
  if (v4)
  {
    v5 = sub_10076FF6C();
  }

  else
  {
    v5 = 0;
  }

  [v3 setText:v5];

  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel];
  sub_1007670BC();
  if (v7)
  {
    v8 = sub_10076FF6C();
  }

  else
  {
    v8 = 0;
  }

  [v6 setText:v8];

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel];
  sub_10076706C();
  if (v10)
  {
    v11 = sub_10076FF6C();
  }

  else
  {
    v11 = 0;
  }

  [v9 setText:v11];

  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork];
  v13 = sub_10076705C();
  if (!v13)
  {
    i = 0;
    goto LABEL_15;
  }

  if (v13 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

LABEL_15:
    v15 = 4;
    if (i < 4)
    {
      v15 = i;
    }

    v16 = OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_iconCount;
    v17 = *&v12[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_iconCount];
    *&v12[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_iconCount] = v15;
    v18 = &off_100911000;
    if (v15 == v17)
    {
      break;
    }

    sub_10000A5D4(&unk_100942870, &qword_100784460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100786040;
    v20 = *&v12[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon1];
    *(inited + 32) = v20;
    v21 = *&v12[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon2];
    *(inited + 40) = v21;
    v22 = *&v12[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon3];
    *(inited + 48) = v22;
    v23 = *&v12[OBJC_IVAR____TtC20ProductPageExtension23CollectionLockupArtwork_icon4];
    *(inited + 56) = v23;
    v24 = inited & 0xC000000000000001;
    v25 = v20;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    if ((inited & 0xC000000000000001) != 0)
    {
      v29 = sub_10077149C();
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v29 = v25;
    }

    v30 = v29;
    [v29 setHidden:*&v12[v16] < 1];

    if (v24)
    {
      v31 = sub_10077149C();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_32;
      }

      v31 = *(inited + 40);
    }

    v32 = v31;
    [v31 setHidden:*&v12[v16] < 2];

    if (v24)
    {
      v33 = sub_10077149C();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_32;
      }

      v33 = *(inited + 48);
    }

    v34 = v33;
    [v33 setHidden:*&v12[v16] < 3];

    if (v24)
    {
      v35 = sub_10077149C();
      goto LABEL_30;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v35 = *(inited + 56);
LABEL_30:
      v36 = v35;
      [v35 setHidden:*&v12[v16] < 4];

      swift_setDeallocating();
      swift_arrayDestroy();
      v18 = &off_100911000;
      [v12 setNeedsLayout];
      return [v2 v18[194]];
    }

LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  return [v2 v18[194]];
}

uint64_t sub_1003BB74C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003BB794(__n128 a1)
{
  v2 = sub_100766FCC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10076702C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766F4C();
  v8 = __chkstk_darwin(v7);
  (*(v10 + 104))(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v8);
  (*(v4 + 104))(v6, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v3);
  sub_100766FBC();
  sub_100766F5C();
  v11 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_materialBackground;
  *(v1 + v11) = [objc_allocWithZone(UIVisualEffectView) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork;
  type metadata accessor for CollectionLockupArtwork();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_badgeLabel;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_titleLabel;
  *(v1 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel;
  *(v1 + v16) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v17 = sub_10076FF6C();
  v18 = [objc_opt_self() systemImageNamed:v17];

  if (!v18)
  {
    __break(1u);
  }

  v19 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_chevronView;
  v20 = [objc_allocWithZone(UIImageView) initWithImage:v18];

  *(v1 + v19) = v20;
  v21 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
  *(v1 + v21) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v22 = (v1 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionLockupOverlay_selectionHandler);
  *v22 = 0;
  v22[1] = 0;
  sub_10077156C();
  __break(1u);
}

id sub_1003BBB08(uint64_t a1)
{
  v57 = a1;
  v1 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v1 - 8);
  v56 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = v45 - v4;
  v5 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v5 - 8);
  v54 = v45 - v6;
  v7 = sub_1007611EC();
  __chkstk_darwin(v7 - 8);
  v50 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v45 - v10;
  v11 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v11 - 8);
  v48 = v45 - v12;
  v13 = sub_10076121C();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v47 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076481C();
  v52 = *(v15 - 8);
  v53 = v15;
  __chkstk_darwin(v15);
  v51 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076B21C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v45 - v22;
  v24 = sub_10076B27C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B28C();
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 != enum case for Uber.AssetType.artwork(_:))
  {
    if (v28 == enum case for Uber.AssetType.video(_:))
    {
      if (sub_10076B25C())
      {
        sub_100762F0C();
        sub_10076F5CC();
        v45[1] = v60[0];
        (*(v46 + 104))(v47, enum case for VideoFillMode.scaleAspectFill(_:), v13);
        sub_10076B84C();
        sub_10076BEFC();
        v31 = v48;
        sub_10076D3AC();

        v32 = sub_10076D39C();
        (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
        sub_10076B7EC();
        sub_10076B82C();
        sub_10076B7FC();
        sub_10076B7DC();
        sub_10076B83C();
        v33 = v51;
        sub_1007647FC();
        sub_10076B7CC();
        v34 = v54;
        sub_10076B85C();
        v35 = sub_10075DB7C();
        (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
        v36 = v55;
        sub_10076B81C();
        v37 = v56;
        sub_10076B80C();
        type metadata accessor for VideoView(0);
        sub_1003BC460(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
        v38 = sub_100762EEC();
        sub_10000CFBC(v37, &unk_10094C030, &unk_10078D680);
        sub_10000CFBC(v36, &unk_10094C030, &unk_10078D680);
        sub_10000CFBC(v34, &unk_1009435D0, &qword_100785850);
        sub_10000CFBC(v60, &qword_100943310, &unk_100784150);
        if (v38)
        {
          v39 = v38;
          sub_10076B84C();
          v40 = sub_10076BE1C();

          [v39 setBackgroundColor:v40];

          (*(v52 + 8))(v33, v53);
        }

        else
        {
          (*(v52 + 8))(v33, v53);
        }

        return v38;
      }
    }

    else if (v28 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v25 + 8))(v27, v24);
    }

    return 0;
  }

  v29 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10076B23C();
  (*(v18 + 104))(v20, enum case for Uber.Style.inline(_:), v17);
  sub_1003BC460(&qword_10094DC28, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
  sub_10077018C();
  sub_10077018C();
  if (v60[0] == v58 && v60[1] == v59)
  {
    v30 = *(v18 + 8);
    v30(v20, v17);
    v30(v23, v17);
  }

  else
  {
    v41 = sub_10077167C();
    v42 = *(v18 + 8);
    v42(v20, v17);
    v42(v23, v17);

    if ((v41 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  [v29 setContentMode:2];
LABEL_11:
  v38 = v29;
  if (!sub_10076B26C() || (v43 = sub_10076BE1C(), , !v43))
  {
    if (sub_10076B20C())
    {
      v43 = sub_10076BE1C();
    }

    else
    {
      v43 = 0;
    }
  }

  [v38 setBackgroundColor:v43];

  return v38;
}

uint64_t sub_1003BC460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003BC4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v83 = a3;
  v10 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v10 - 8);
  v82 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v72 - v13;
  v14 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v14 - 8);
  v80 = &v72 - v15;
  v16 = sub_1007611EC();
  __chkstk_darwin(v16 - 8);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v72 - v20;
  v22 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v22 - 8);
  v24 = &v72 - v23;
  v25 = sub_10076121C();
  v79 = *(v25 - 8);
  __chkstk_darwin(v25);
  v89 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10076481C();
  v84 = *(v27 - 8);
  v85 = v27;
  __chkstk_darwin(v27);
  v90 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10076D39C();
  v30 = *(v29 - 8);
  v87 = v29;
  v88 = v30;
  __chkstk_darwin(v29);
  v78 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10075FF6C();
  v33 = [v32 length];

  v86 = a6;
  if (v33 < 1)
  {
    [*&v7[qword_10094C5D8] setText:0];
    v7[qword_10099D798] = 0;
    [*&v7[qword_10094C5C8] setHidden:1];
  }

  else
  {
    v73 = v25;
    v74 = v24;
    v75 = v21;
    v76 = v18;
    v77 = a1;
    v34 = sub_10075FF6C();
    v35 = [a6 traitCollection];
    v36 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v34];
    v37 = [v34 length];
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = v35;
    *(v38 + 32) = v36;
    *(v38 + 40) = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1000275EC;
    *(v39 + 24) = v38;
    aBlock[4] = sub_1000ACB04;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    aBlock[3] = &unk_100893690;
    v40 = _Block_copy(aBlock);
    v41 = v35;
    v42 = v36;

    [v34 enumerateAttributesInRange:0 options:v37 usingBlock:{0x100000, v40}];

    _Block_release(v40);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      __break(1u);
      return;
    }

    [*&v7[qword_10094C5D8] setAttributedText:v42];
    v7[qword_10099D798] = 1;
    [*&v7[qword_10094C5C8] setHidden:0];

    v24 = v74;
    v25 = v73;
  }

  v43 = *&v7[qword_10094C5D0];
  sub_10075FF7C();
  if (v44)
  {
    v45 = sub_10076FF6C();
  }

  else
  {
    v45 = 0;
  }

  v46 = v86;
  [v43 setText:v45];

  bottom = UIEdgeInsetsZero.bottom;
  if (sub_10075FF4C())
  {
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    [v46 pageMarginInsets];
    left = v50;
    right = v51;
  }

  v52 = v87;
  v53 = [v7 contentView];
  [v53 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (sub_10075FF9C())
  {
    v54 = [v7 contentView];
    sub_1000ACA5C();
    sub_10076422C();

    sub_10076BEFC();
    v55 = v78;
    sub_10076D3AC();
    sub_10076D30C();
    v57 = v56;
    v59 = v58;

    (*(v88 + 8))(v55, v52);
    v60 = &v7[qword_1009A32A8];
    *v60 = v57;
    v60[1] = v59;
  }

  if (sub_10075FF8C())
  {
    (*(v79 + 104))(v89, enum case for VideoFillMode.scaleAspectFill(_:), v25);
    if (sub_10075FF9C())
    {
      sub_10076BEFC();
      sub_10076D3AC();

      v61 = 0;
    }

    else
    {
      v61 = 1;
    }

    (*(v88 + 56))(v24, v61, 1, v52);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v62 = v80;
    sub_10076B85C();
    v63 = sub_10075DB7C();
    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    v64 = v81;
    sub_10076B81C();
    v65 = v82;
    sub_10076B80C();
    type metadata accessor for VideoView(0);
    sub_1003BE180(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v66 = sub_100762EEC();
    sub_10000CFBC(v65, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v64, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v62, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(aBlock, &qword_100943310, &unk_100784150);
    sub_1006D9F88();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v68 = Strong;
      v69 = *&v7[qword_100965200];
      if (v69)
      {
        v70 = *&v7[qword_100965200];
      }

      else
      {
        v70 = [v7 contentView];
        v69 = 0;
      }

      v71 = v69;
      [v70 addSubview:v68];
      [v7 setNeedsLayout];
    }

    else
    {
    }

    (*(v84 + 8))(v90, v85);
  }

  v7[qword_10099D790] = sub_10075FF5C() & 1;
  sub_100027A78();
}

void sub_1003BCFE4(uint64_t a1, uint64_t a2, char a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for VideoView(0);
    sub_1003BE180(&unk_100942840, type metadata accessor for VideoView, &unk_1007B40F8);
    sub_100760BFC();
  }
}

uint64_t sub_1003BD144(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  v10 = sub_10076D39C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10075FF4C() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  if (sub_10075FF9C())
  {
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D36C();
    (*(v11 + 8))(v13, v10);
    sub_10075FF4C();
  }

  v14 = sub_10075FF6C();
  v15 = [v14 length];

  if (v15 >= 1)
  {
    sub_10075FF7C();
    if (v16)
    {
      if (qword_100940F68 != -1)
      {
        swift_once();
      }

      v17 = sub_10076D3DC();
      sub_10000A61C(v17, qword_1009A1C30);
      v18 = sub_10076C04C();
      v39 = v18;
      v40 = sub_1003BE180(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v19 = sub_10000DB7C(aBlock);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
      sub_10076C90C();
      sub_10000CD74(aBlock);
      sub_10076991C();
    }

    v20 = sub_10075FF6C();
    v37[1] = a6;
    v21 = [a6 traitCollection];
    v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
    v23 = [v20 length];
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = v21;
    *(v24 + 32) = v22;
    *(v24 + 40) = 1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100027A88;
    *(v25 + 24) = v24;
    v40 = sub_1003BE1CC;
    v41 = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    v39 = &unk_100893708;
    v26 = _Block_copy(aBlock);
    v27 = v21;
    v28 = v22;

    [v20 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

    _Block_release(v26);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      __break(1u);
    }

    else
    {
      v29 = qword_100940F60;
      v20 = v28;
      if (v29 == -1)
      {
LABEL_12:
        v30 = sub_10076D3DC();
        v31 = sub_10000A61C(v30, qword_1009A1C18);
        v32 = *(v30 - 8);
        (*(v32 + 16))(v9, v31, v30);
        (*(v32 + 56))(v9, 0, 1, v30);
        v33 = sub_10076C04C();
        v39 = v33;
        v40 = sub_1003BE180(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v34 = sub_10000DB7C(aBlock);
        (*(*(v33 - 8) + 104))(v34, enum case for Feature.measurement_with_labelplaceholder(_:), v33);
        sub_10076C90C();
        sub_10000CD74(aBlock);
        sub_10076990C();

        sub_10000CFBC(v9, &unk_100943250, &unk_1007841D0);
        if (qword_10093F990 != -1)
        {
          swift_once();
        }

        v35 = sub_10076D9AC();
        sub_10000A61C(v35, qword_10099D738);
        sub_10076D42C();
        if (qword_10093F998 != -1)
        {
          swift_once();
        }

        sub_10000A61C(v35, qword_10099D750);
        sub_10076D3FC();

        return sub_100770ABC();
      }
    }

    swift_once();
    goto LABEL_12;
  }

  return sub_100770ABC();
}

double sub_1003BD918(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1003BD930(uint64_t a1)
{
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000A570(a1, v10);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10075FFAC();
  if (swift_dynamicCast())
  {
    if (sub_10075FF8C())
    {
      sub_10076B84C();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        sub_10076BEFC();
        sub_10076D3AC();
        sub_10076D31C();
        v8 = *(v3 + 8);
        v8(v5, v2);
        sub_10076BEFC();
        sub_10076D3AC();
        sub_10076D30C();
        v8(v5, v2);
        sub_10076BFCC();
        type metadata accessor for VideoView(0);
        sub_1003BE180(&unk_100942840, type metadata accessor for VideoView, &unk_1007B40F8);
        sub_100760B8C();
      }
    }
  }
}

void sub_1003BDBA4(double a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  v20 = a5;
  v17 = a4;
  v19 = sub_10076D39C();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076B75C();
  v9 = *(v8 + 16);
  v21 = v8 + 32;
  v18 = (v5 + 8);
  v22 = v8;

  v10 = 0;
  v11 = &qword_1009575A0;
  v12 = v19;
  while (1)
  {
    if (v10 == v9)
    {
      v30 = 0;
      v10 = v9;
      v28 = 0u;
      v29 = 0u;
      goto LABEL_8;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v22 + 16))
    {
      goto LABEL_18;
    }

    sub_10000A570(v21 + 40 * v10++, &v28);
LABEL_8:
    v26[0] = v28;
    v26[1] = v29;
    v27 = v30;
    if (!*(&v29 + 1))
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_100012498(v26, v25);
    sub_10000A570(v25, v23);
    sub_10000A5D4(v11, &unk_100784980);
    sub_10075FFAC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
    }

    sub_10000CD74(v25);
    if (v24)
    {
      if (sub_10075FF8C())
      {
        v14 = v11;
        sub_10076B84C();

        v15 = sub_10075FF4C();

        if ((v15 & 1) == 0)
        {
          [v17 pageMarginInsets];
        }

        sub_10076BEFC();
        sub_10076D3AC();
        sub_10076D31C();
        v13 = *v18;
        (*v18)(v7, v12);
        sub_10076BEFC();
        sub_10076D3AC();
        sub_10076D30C();
        v13(v7, v12);
        sub_10076BFCC();
        sub_100760B9C();

        v11 = v14;
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1003BDF1C()
{
  v0 = sub_10076D39C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = ASKDeviceTypeGetCurrent();
  v5 = sub_10076FF9C();
  v7 = v6;
  if (v5 == sub_10076FF9C() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_10077167C();

    if ((v10 & 1) == 0)
    {
      if (qword_100940320 != -1)
      {
        swift_once();
      }

      v11 = qword_10099F608;
      goto LABEL_13;
    }
  }

  if (qword_100940328 != -1)
  {
    swift_once();
  }

  v11 = qword_10099F620;
LABEL_13:
  v12 = sub_10000A61C(v0, v11);
  (*(v1 + 16))(v3, v12, v0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v14 = v13;
  sub_10076D36C();
  v15 = [objc_opt_self() absoluteDimension:v14];
  v16 = sub_1007665BC();

  (*(v1 + 8))(v3, v0);
  return v16;
}

uint64_t sub_1003BE180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003BE1E0()
{
  result = qword_100950A08;
  if (!qword_100950A08)
  {
    type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950A08);
  }

  return result;
}

double sub_1003BE238()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  sub_10076460C();
  v4 = sub_10076461C();
  sub_100356960(v3, v4);
  v6 = v5;

  (*(v1 + 8))(v3, v0);
  return v6;
}

id sub_1003BE3E0()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView];
  v2 = [v0 isHighlighted];
  v3 = OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_isHighlighted;
  v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_isHighlighted] = v2;
  sub_1000325F0();
  if (v2)
  {
    v4 = sub_100770DCC();
  }

  else
  {
    v4 = sub_100770D2C();
  }

  v5 = v4;
  [v1 setBackgroundColor:v4];

  v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_showSeparator] = v1[v3] ^ 1;
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView];

  return [v6 setHidden:?];
}

char *sub_1003BE4AC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SearchHintView()) init];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for SearchHintCollectionViewCell();
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView;
  v12 = *&v10[OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView];
  v13 = v10;
  [v12 setUserInteractionEnabled:0];
  v14 = [v13 contentView];
  [v14 addSubview:*&v10[v11]];

  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v13;
}

id sub_1003BE748(uint64_t a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for SearchHintCollectionViewCell();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView];
  v3[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_showSeparator] = 0;
  [*&v3[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_separatorView] setHidden:1];
  [*&v3[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_titleLabel] setAttributedText:0];
  v4 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension14SearchHintView_iconImage] = 0;

  sub_1006911EC(v5, v6, v7);
  return [v3 setNeedsLayout];
}

id sub_1003BE858(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SearchHintCollectionViewCell();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1003BE8F8(void *a1)
{
  v1 = [a1 navigationItem];
  v2 = [v1 leftBarButtonItems];
  v18 = v1;
  if (v2)
  {
    v3 = v2;
    sub_1001E555C();
    v4 = sub_1007701BC();

    if (v4 >> 62)
    {
LABEL_17:
      v5 = sub_10077158C();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v6 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = sub_10077149C();
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

          if ([v7 isSystemItem])
          {
            v10 = [v8 systemItem];

            if (v10 == 24)
            {
LABEL_33:
              i = 1;
LABEL_35:
              v1 = v18;
              goto LABEL_36;
            }
          }

          else
          {
          }

          ++v6;
        }

        while (v9 != v5);
      }
    }

    v1 = v18;
  }

  i = [v1 rightBarButtonItems];
  if (i)
  {
    sub_1001E555C();
    v12 = sub_1007701BC();

    if (v12 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
    {
      v13 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = sub_10077149C();
        }

        else
        {
          if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v14 = *(v12 + 8 * v13 + 32);
        }

        v15 = v14;
        v1 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if ([v14 isSystemItem])
        {
          v16 = [v15 systemItem];

          if (v16 == 24)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }

        ++v13;
        if (v1 == i)
        {
          i = 0;
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

LABEL_36:
  }

  return i;
}

void sub_1003BEB84(void *a1, void *a2)
{
  if ((sub_1003BE8F8(a1) & 1) == 0)
  {
    v4 = [a1 navigationItem];
    v5 = [v4 rightBarButtonItems];
    if (v5)
    {
      v6 = v5;
      sub_1001E555C();
      v7 = sub_1007701BC();
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    sub_1001E555C();
    v8 = a2;
    v10.value.super.super.isa = a2;
    v10.is_nil = 0;
    sub_10077054C(UIBarButtonSystemItemClose, v10, v11);
    sub_10077019C();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    isa = sub_1007701AC().super.isa;

    [v4 setRightBarButtonItems:isa];
  }
}

uint64_t sub_1003BEDF4()
{
  v1 = sub_10076D1FC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076299C();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for IconGridView(0);
  v14.receiver = v0;
  v14.super_class = v6;
  objc_msgSendSuper2(&v14, "layoutSubviews");
  sub_10076422C();
  sub_1003BF02C(v7, v8, v9, v10);
  sub_10076298C();
  swift_beginAccess();

  sub_10016E274(v11);

  sub_1007629BC();
  swift_allocObject();
  sub_1007629AC();
  sub_10076422C();
  sub_10076296C();

  return (*(v2 + 8))(v4, v1);
}

void sub_1003BF02C(__n128 a1, double a2, double a3, double a4)
{
  v5 = v4;
  v6 = sub_10076299C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007629BC();
  sub_10076298C();
  v10 = sub_10076297C();
  (*(v7 + 8))(v9, v6);
  v11 = OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkViews;
  swift_beginAccess();
  v12 = *&v4[v11];
  if (v12 >> 62)
  {
    if (sub_10077158C() == v10)
    {
      return;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) == v10)
  {
    return;
  }

  v13 = *&v4[v11];
  if (v13 >> 62)
  {
    v14 = sub_10077158C();
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  if (v14 < 1)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v15 = 0;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = sub_10077149C();
    }

    else
    {
      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    ++v15;
    v27 = v16;
    swift_beginAccess();
    sub_10000A5D4(&unk_10094B8B0, &qword_100791B08);
    sub_10076E17C();
    swift_endAccess();
  }

  while (v14 != v15);

LABEL_12:
  *&v4[v11] = _swiftEmptyArrayStorage;

  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  for (; v10; --v10)
  {
    swift_beginAccess();
    sub_10000A5D4(&unk_10094B8B0, &qword_100791B08);
    sub_10076E15C();
    swift_endAccess();
    v18 = v27;
    swift_beginAccess();
    v19 = v18;
    sub_10077019C();
    if (*((*(v5 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    swift_endAccess();
    v20 = [v19 superview];
    if (!v20 || (v21 = v20, sub_1000ACA5C(), v22 = v5, v23 = sub_100770EEC(), v21, v22, (v23 & 1) == 0))
    {
      [v5 addSubview:v19];
    }
  }

  v24 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension12IconGridView_impressionableArtworks);
  if (v24)
  {
    v25 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkLoader);
    if (v25)
    {

      sub_1003BF4A0(v24, v25);
    }
  }
}

uint64_t sub_1003BF46C@<X0>(uint64_t *a1@<X8>)
{
  sub_10075FD2C();
  result = sub_10075FB3C();
  *a1 = result;
  return result;
}

void sub_1003BF4A0(unint64_t a1, uint64_t a2)
{
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  v5 = OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkViews;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_41;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v22 = a1 >> 62;
      v7 = a1 >> 62 ? sub_10077158C() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = *(v2 + v5);
      v8 = v5 >> 62;
      if (!v7)
      {
        break;
      }

      if (v8)
      {
        v9 = sub_10077158C();
      }

      else
      {
        v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v9)
      {
        goto LABEL_34;
      }

      v10 = 0;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      v21 = a1 & 0xC000000000000001;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = sub_10077149C();
        }

        else
        {
          if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v12 = *(v5 + 8 * v10 + 32);
        }

        v13 = v12;
        a1 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v22)
        {
          v14 = sub_10077158C();
        }

        else
        {
          v14 = *(v11 + 16);
        }

        if (!v14)
        {
          goto LABEL_38;
        }

        v15 = v10 % v14;
        if (v21)
        {
          sub_10077149C();
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          if (v15 >= *(v11 + 16))
          {
            goto LABEL_40;
          }
        }

        sub_1007660AC();

        sub_10076BFBC();
        sub_10076BF7C();
        sub_10075FCCC();
        sub_10075FD2C();
        sub_10000D7F8();
        v2 = a2;
        sub_100760B8C();

        ++v10;
        if (a1 == v9)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      if (!sub_10077158C())
      {
        return;
      }
    }

    if (v8)
    {
      v16 = sub_10077158C();
      if (!v16)
      {
        return;
      }
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        return;
      }
    }

    if (v16 >= 1)
    {

      v17 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v18 = sub_10077149C();
        }

        else
        {
          v18 = *(v5 + 8 * v17 + 32);
        }

        v20 = v18;
        ++v17;
        v24.value.super.isa = 0;
        v24.is_nil = 1;
        sub_10075FC5C(v24, v19);
      }

      while (v16 != v17);
LABEL_34:

      return;
    }

    __break(1u);
  }
}

id sub_1003BF814()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconGridView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IconGridView(uint64_t a1)
{
  result = qword_100955B30;
  if (!qword_100955B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003BF948(uint64_t a1)
{
  sub_10018E66C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003BFA1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10076B79C();
  *a1 = result & 1;
  return result;
}

void sub_1003BFA4C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v158 = a2;
  v146 = sub_10076C38C();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v131[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = sub_10076D1AC();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v131[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v163 = *(v5 - 8);
  __chkstk_darwin(v5);
  v143 = &v131[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v157 = &v131[-v8];
  v156 = sub_1007621EC();
  v162 = *(v156 - 8);
  __chkstk_darwin(v156);
  v140 = &v131[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v155 = sub_10000A5D4(&qword_10094E088, &qword_100795D68);
  __chkstk_darwin(v155);
  v165 = &v131[-v10];
  v11 = sub_10000A5D4(&qword_10094E090, &unk_100795D70);
  __chkstk_darwin(v11 - 8);
  v150 = &v131[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v161 = &v131[-v14];
  __chkstk_darwin(v15);
  v159 = &v131[-v16];
  v151 = sub_10076B5BC();
  v160 = *(v151 - 8);
  __chkstk_darwin(v151);
  v141 = &v131[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v142 = &v131[-v19];
  __chkstk_darwin(v20);
  v136 = &v131[-v21];
  v22 = sub_10000A5D4(&qword_100942C28, &unk_1007898E0);
  __chkstk_darwin(v22);
  v24 = &v131[-v23];
  v25 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v25 - 8);
  v154 = &v131[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v153 = &v131[-v28];
  __chkstk_darwin(v29);
  v31 = &v131[-v30];
  __chkstk_darwin(v32);
  v138 = &v131[-v33];
  __chkstk_darwin(v34);
  v137 = &v131[-v35];
  __chkstk_darwin(v36);
  v139 = &v131[-v37];
  __chkstk_darwin(v38);
  v40 = &v131[-v39];
  __chkstk_darwin(v41);
  v43 = &v131[-v42];
  __chkstk_darwin(v44);
  v46 = &v131[-v45];
  v47 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v47 - 8);
  v152 = &v131[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v49);
  v51 = &v131[-v50];
  __chkstk_darwin(v52);
  v54 = &v131[-v53];
  v55 = sub_1007645FC();
  v164 = a1;
  if (v55)
  {
    LODWORD(v152) = 0;
    v56 = v5;
    v57 = v163;
    v58 = v159;
LABEL_12:
    v69 = v161;
    goto LABEL_13;
  }

  sub_10076463C();
  sub_10000CFBC(v40, &qword_1009499A0, &qword_1007848B0);
  sub_10002AB4C(v43, v46);
  v59 = v163;
  v60 = *(v163 + 48);
  v134 = v163 + 48;
  v133 = v60;
  v61 = v60(v46, 1, v5);
  v135 = v5;
  if (v61 == 1)
  {
    sub_10000CFBC(v46, &qword_1009499A0, &qword_1007848B0);
    v62 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_10076F49C();

    (*(v59 + 8))(v46, v5);
    v62 = 0;
  }

  v63 = v160;
  v64 = *(v160 + 56);
  v65 = v151;
  v64(v54, v62, 1, v151);
  (*(v63 + 104))(v51, enum case for Shelf.ContentType.unifiedMessage(_:), v65);
  v64(v51, 0, 1, v65);
  v66 = *(v22 + 48);
  sub_100016E2C(v54, v24, &unk_1009568A0, &qword_100784890);
  sub_100016E2C(v51, &v24[v66], &unk_1009568A0, &qword_100784890);
  v67 = *(v63 + 48);
  if (v67(v24, 1, v65) == 1)
  {
    sub_10000CFBC(v51, &unk_1009568A0, &qword_100784890);
    sub_10000CFBC(v54, &unk_1009568A0, &qword_100784890);
    v68 = v67(&v24[v66], 1, v65);
    v58 = v159;
    if (v68 == 1)
    {
      sub_10000CFBC(v24, &unk_1009568A0, &qword_100784890);
      v56 = v135;
      v69 = v161;
      goto LABEL_40;
    }

LABEL_11:
    sub_10000CFBC(v24, &qword_100942C28, &unk_1007898E0);
    LODWORD(v152) = 1;
    v56 = v135;
    v57 = v163;
    goto LABEL_12;
  }

  v70 = v152;
  sub_100016E2C(v24, v152, &unk_1009568A0, &qword_100784890);
  if (v67(&v24[v66], 1, v65) == 1)
  {
    sub_10000CFBC(v51, &unk_1009568A0, &qword_100784890);
    sub_10000CFBC(v54, &unk_1009568A0, &qword_100784890);
    (*(v160 + 8))(v70, v65);
    v58 = v159;
    goto LABEL_11;
  }

  v122 = v160;
  v123 = v136;
  (*(v160 + 32))(v136, &v24[v66], v65);
  sub_1003C1EA8(&qword_100942C48, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v132 = sub_10076FF1C();
  v124 = *(v122 + 8);
  v124(v123, v65);
  sub_10000CFBC(v51, &unk_1009568A0, &qword_100784890);
  sub_10000CFBC(v54, &unk_1009568A0, &qword_100784890);
  v124(v152, v65);
  sub_10000CFBC(v24, &unk_1009568A0, &qword_100784890);
  v56 = v135;
  v58 = v159;
  v69 = v161;
  if ((v132 & 1) == 0)
  {
    LODWORD(v152) = 1;
    v57 = v163;
    goto LABEL_13;
  }

LABEL_40:
  v125 = v137;
  v126 = v138;
  sub_10076463C();
  sub_10000CFBC(v126, &qword_1009499A0, &qword_1007848B0);
  v127 = v139;
  sub_10002AB4C(v125, v139);
  v128 = v133(v127, 1, v56);
  v57 = v163;
  if (v128 == 1)
  {
    sub_10000CFBC(v127, &qword_1009499A0, &qword_1007848B0);
    v129 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_10076F49C();

    v130 = LOBYTE(v166[0]);
    (*(v57 + 8))(v127, v56);
    v129 = v130 ^ 1;
  }

  LODWORD(v152) = v129;
LABEL_13:
  v71 = v153;
  v72 = v154;
  sub_10076463C();
  sub_10000CFBC(v72, &qword_1009499A0, &qword_1007848B0);
  sub_10002AB4C(v71, v31);
  if ((*(v57 + 48))(v31, 1, v56) == 1)
  {
    sub_10000CFBC(v31, &qword_1009499A0, &qword_1007848B0);
    v73 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_10076F49C();

    (*(v57 + 8))(v31, v56);
    v73 = 0;
  }

  v74 = v162;
  v75 = *(v162 + 56);
  v76 = v156;
  v75(v58, v73, 1, v156);
  (*(v74 + 104))(v69, enum case for ShelfBackground.none(_:), v76);
  v75(v69, 0, 1, v76);
  v77 = *(v155 + 48);
  v78 = v165;
  sub_100016E2C(v58, v165, &qword_10094E090, &unk_100795D70);
  v79 = v78;
  sub_100016E2C(v69, &v78[v77], &qword_10094E090, &unk_100795D70);
  v80 = v74;
  v81 = v69;
  v82 = *(v80 + 48);
  if (v82(v79, 1, v76) == 1)
  {
    sub_10000CFBC(v81, &qword_10094E090, &unk_100795D70);
    v83 = v165;
    sub_10000CFBC(v58, &qword_10094E090, &unk_100795D70);
    if (v82(&v83[v77], 1, v76) == 1)
    {
      sub_10000CFBC(v83, &qword_10094E090, &unk_100795D70);
      v84 = 1;
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v85 = v150;
  sub_100016E2C(v79, v150, &qword_10094E090, &unk_100795D70);
  if (v82((v79 + v77), 1, v76) == 1)
  {
    sub_10000CFBC(v161, &qword_10094E090, &unk_100795D70);
    v83 = v165;
    sub_10000CFBC(v58, &qword_10094E090, &unk_100795D70);
    (*(v162 + 8))(v85, v76);
LABEL_21:
    sub_10000CFBC(v83, &qword_10094E088, &qword_100795D68);
    v84 = 0;
    goto LABEL_23;
  }

  v86 = v85;
  v87 = v162;
  v88 = v79 + v77;
  v89 = v140;
  (*(v162 + 32))(v140, v88, v76);
  sub_1003C1EA8(&qword_100949730, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
  v90 = v79;
  v84 = sub_10076FF1C();
  v91 = *(v87 + 8);
  v91(v89, v76);
  sub_10000CFBC(v161, &qword_10094E090, &unk_100795D70);
  sub_10000CFBC(v159, &qword_10094E090, &unk_100795D70);
  v91(v86, v76);
  sub_10000CFBC(v90, &qword_10094E090, &unk_100795D70);
LABEL_23:
  v92 = v157;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v93 = *(v57 + 8);
  v93(v92, v56);
  v94 = v166[0];
  if (v166[0])
  {
  }

  v95 = sub_10076461C();
  v96 = sub_1007706FC();

  if (!(v152 & 1 | (v94 != 0)))
  {
    if (v96)
    {
      v102 = v147;
      *v147 = UIFontTextStyleBody;
      v103 = v148;
      v104 = v149;
      (*(v148 + 104))(v102, enum case for FontSource.textStyle(_:), v149);
      v105 = sub_10076D9AC();
      v106 = v158;
      v158[3] = v105;
      v106[4] = &protocol witness table for StaticDimension;
      sub_10000DB7C(v106);
      v166[3] = v104;
      v166[4] = &protocol witness table for FontSource;
      v107 = sub_10000DB7C(v166);
      (*(v103 + 16))(v107, v102, v104);
      v108 = UIFontTextStyleBody;
      sub_10076D9BC();
      (*(v103 + 8))(v102, v104);
      return;
    }

    goto LABEL_38;
  }

  if (!(v84 & 1 | (v94 != 0)))
  {
    v109 = v144;
    sub_10076460C();
    sub_10076C23C();
    v111 = v110;
    (*(v145 + 8))(v109, v146);
    v112 = v158;
    v158[3] = &type metadata for CGFloat;
    v112[4] = &protocol witness table for CGFloat;
    *v112 = v111;
    return;
  }

  v97 = v143;
  sub_10076468C();
  swift_getKeyPath();
  v98 = v142;
  sub_10076F49C();

  v93(v97, v56);
  v99 = v141;
  v100 = v151;
  (*(v160 + 104))(v141, enum case for Shelf.ContentType.unifiedMessage(_:), v151);
  sub_1003C1EA8(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v166[0] == v166[5] && v166[1] == v166[6])
  {
    v101 = *(v160 + 8);
    v101(v99, v100);
    v101(v98, v100);
  }

  else
  {
    v113 = sub_10077167C();
    v114 = *(v160 + 8);
    v114(v99, v100);
    v114(v98, v100);

    if ((v113 & 1) == 0)
    {
LABEL_38:
      v121 = v158;
      v158[3] = &type metadata for Double;
      v121[4] = &protocol witness table for Double;
      *v121 = 0;
      return;
    }
  }

  v115 = sub_10076461C();
  v116 = sub_1007706EC();

  if ((v116 & 1) == 0)
  {
    goto LABEL_38;
  }

  if (qword_100941210 != -1)
  {
    swift_once();
  }

  v117 = sub_10076D9AC();
  v118 = sub_10000A61C(v117, qword_1009A23B0);
  v119 = v158;
  v158[3] = v117;
  v119[4] = &protocol witness table for StaticDimension;
  v120 = sub_10000DB7C(v119);
  (*(*(v117 - 8) + 16))(v120, v118, v117);
}

uint64_t sub_1003C0E50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v145 = a2;
  v116 = sub_10076C38C();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10077164C();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_10076D1AC();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = (&v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = sub_1007621EC();
  v141 = *(v146 - 8);
  __chkstk_darwin(v146);
  v123 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v124 = &v114 - v8;
  __chkstk_darwin(v9);
  v138 = &v114 - v10;
  __chkstk_darwin(v11);
  v131 = &v114 - v12;
  v13 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v13 - 8);
  v137 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v136 = &v114 - v16;
  __chkstk_darwin(v17);
  v140 = &v114 - v18;
  __chkstk_darwin(v19);
  v130 = &v114 - v20;
  __chkstk_darwin(v21);
  v128 = (&v114 - v22);
  __chkstk_darwin(v23);
  v25 = &v114 - v24;
  v26 = sub_10076B5BC();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v142 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v143 = &v114 - v30;
  __chkstk_darwin(v31);
  v33 = &v114 - v32;
  __chkstk_darwin(v34);
  v36 = &v114 - v35;
  v37 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v139 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v129 = &v114 - v41;
  __chkstk_darwin(v42);
  v44 = &v114 - v43;
  v150 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v45 = *(v38 + 8);
  v147 = v37;
  v148 = v45;
  v46 = v37;
  v47 = v38 + 8;
  v45(v44, v46);
  v48 = *(v27 + 104);
  v135 = v27 + 104;
  v134 = v48;
  v48(v33, enum case for Shelf.ContentType.todayCard(_:), v26);
  v49 = sub_1003C1EA8(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_10077018C();
  v149 = v26;
  v133 = v49;
  sub_10077018C();
  if (v151 == v154)
  {
    v122 = 1;
  }

  else
  {
    v122 = sub_10077167C();
  }

  v50 = *(v27 + 8);
  v51 = v33;
  v52 = v149;
  v50(v51, v149);
  v132 = v50;
  v50(v36, v52);

  v53 = v128;
  v54 = v130;
  sub_10076463C();
  sub_10000CFBC(v53, &qword_1009499A0, &qword_1007848B0);
  sub_10002AB4C(v54, v25);
  v55 = *(v38 + 48);
  v56 = v147;
  v130 = (v38 + 48);
  v128 = v55;
  v57 = v55(v25, 1, v147);
  v144 = v27 + 8;
  if (v57 == 1)
  {
    sub_10000CFBC(v25, &qword_1009499A0, &qword_1007848B0);
    v117 = 0;
    v58 = v146;
    v59 = v141;
    v60 = v131;
    v61 = v148;
  }

  else
  {
    swift_getKeyPath();
    sub_10076F49C();

    v62 = v151;
    v61 = v148;
    v148(v25, v56);
    v58 = v146;
    v59 = v141;
    v60 = v131;
    if (v62)
    {

      v117 = 1;
    }

    else
    {
      v117 = 0;
    }
  }

  v63 = v129;
  sub_10076468C();
  swift_getKeyPath();
  v64 = v147;
  sub_10076F49C();

  v61(v63, v64);
  v65 = *(v59 + 104);
  v66 = v138;
  LODWORD(v141) = enum case for ShelfBackground.none(_:);
  v131 = v65;
  (v65)(v138);
  v129 = sub_1003C1EA8(&qword_100949730, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
  v121 = sub_10076FF1C();
  v67 = *(v59 + 8);
  v67(v66, v58);
  v67(v60, v58);
  v146 = v47;
  v68 = v136;
  v69 = v137;
  sub_10076463C();
  v70 = v68;
  v71 = v64;
  sub_10000CFBC(v70, &qword_1009499A0, &qword_1007848B0);
  v72 = v140;
  sub_10002AB4C(v69, v140);
  if (v128(v72, 1, v64) == 1)
  {
    sub_10000CFBC(v72, &qword_1009499A0, &qword_1007848B0);
    v73 = 1;
  }

  else
  {
    swift_getKeyPath();
    v74 = v123;
    sub_10076F49C();

    v148(v72, v64);
    v75 = v124;
    (*(v59 + 32))(v124, v74, v58);
    (v131)(v60, v141, v58);
    v73 = sub_10076FF1C();
    v67(v60, v58);
    v67(v75, v58);
  }

  v76 = v143;
  v77 = sub_10076461C();
  v78 = sub_1007706FC();

  v79 = v139;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v148(v79, v71);
  v80 = v142;
  v134(v142, enum case for Shelf.ContentType.unifiedMessage(_:), v149);
  sub_10077018C();
  sub_10077018C();
  if (v151 == v154)
  {
    v81 = v80;
    v82 = v149;
    v83 = v132;
    v132(v81, v149);
    v83(v76, v82);

LABEL_15:
    v87 = v125;
    *v125 = UIFontTextStyleBody;
    v88 = v126;
    v89 = v127;
    (*(v126 + 104))(v87, enum case for FontSource.textStyle(_:), v127);
    v90 = sub_10076D9AC();
    v91 = v145;
    v145[3] = v90;
    v91[4] = &protocol witness table for StaticDimension;
    sub_10000DB7C(v91);
    v152 = v89;
    v153 = &protocol witness table for FontSource;
    v92 = sub_10000DB7C(&v151);
    (*(v88 + 16))(v92, v87, v89);
    v93 = UIFontTextStyleBody;
    sub_10076D9BC();
    return (*(v88 + 8))(v87, v89);
  }

  v84 = sub_10077167C();
  v85 = v149;
  v86 = v132;
  v132(v80, v149);
  v86(v76, v85);

  if (v84)
  {
    goto LABEL_15;
  }

  if ((v122 & 1) == 0)
  {
LABEL_21:
    v99 = sub_10076D9AC();
    v100 = v145;
    v145[3] = v99;
    v100[4] = &protocol witness table for StaticDimension;
    v101 = sub_10000DB7C(v100);
    if (v78)
    {
      if (qword_1009411F8 != -1)
      {
        swift_once();
      }

      v102 = qword_1009A2368;
    }

    else
    {
      if (qword_1009411F0 != -1)
      {
        swift_once();
      }

      v102 = qword_1009A2350;
    }

    v103 = sub_10000A61C(v99, v102);
    return (*(*(v99 - 8) + 16))(v101, v103, v99);
  }

  if (v121 & v73)
  {
    if (v117)
    {
      if (v78)
      {
        v95 = v114;
        sub_10076460C();
        sub_10076C23C();
        v97 = v96;
        result = (*(v115 + 8))(v95, v116);
        v98 = v145;
        v145[3] = &type metadata for CGFloat;
        v98[4] = &protocol witness table for CGFloat;
        *v98 = v97;
      }

      else
      {
        if (qword_100941200 != -1)
        {
          swift_once();
        }

        v110 = sub_10076D9AC();
        v111 = sub_10000A61C(v110, qword_1009A2380);
        v112 = v145;
        v145[3] = v110;
        v112[4] = &protocol witness table for StaticDimension;
        v113 = sub_10000DB7C(v112);
        return (*(*(v110 - 8) + 16))(v113, v111, v110);
      }

      return result;
    }

    goto LABEL_21;
  }

  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v104 = sub_10076D9AC();
  sub_10000A61C(v104, qword_1009A2368);
  v105 = sub_10076461C();
  v106 = v118;
  sub_10076D17C();
  sub_10076D97C();
  v108 = v107;

  result = (*(v119 + 8))(v106, v120);
  v109 = v145;
  v145[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v108 + v108;
  return result;
}

uint64_t sub_1003C1E78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10076B79C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1003C1EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003C1EF0()
{
  sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783C60;
  *(inited + 32) = NSFontAttributeName;
  v2 = *(v0 + 4);
  v3 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  *(inited + 40) = v2;
  *(inited + 64) = v3;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v4 = *(v0 + 5);
  v5 = sub_100016F40(0, &qword_10094D748, NSParagraphStyle_ptr);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = NSBaselineOffsetAttributeName;
  v6 = v0[6];
  v7 = objc_allocWithZone(NSNumber);
  v8 = NSFontAttributeName;
  v9 = v2;
  v10 = NSParagraphStyleAttributeName;
  v11 = v4;
  v12 = NSBaselineOffsetAttributeName;
  v13 = [v7 initWithDouble:v6];
  *(inited + 144) = sub_100016F40(0, &qword_1009492D0, NSNumber_ptr);
  *(inited + 120) = v13;
  v14 = sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
  swift_arrayDestroy();
  return v14;
}

double sub_1003C2078()
{
  v1 = sub_10076771C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v42 - v7;
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitle + 8];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    if (*&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel])
    {
    }

    else
    {
      v17 = v0;
      v18 = qword_100940EF8;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = sub_10076D3DC();
      v20 = sub_10000A61C(v19, qword_1009A1AE0);
      v21 = *(v19 - 8);
      (*(v21 + 16))(v8, v20, v19);
      (*(v21 + 56))(v8, 0, 1, v19);
      (*(v2 + 104))(v4, enum case for DirectionalTextAlignment.none(_:), v1);
      v22 = objc_allocWithZone(sub_1007626BC());
      v23 = sub_1007626AC();
      v0 = v17;
      v24 = *&v17[v12];
      if (v24)
      {
        [v24 removeFromSuperview];
        v25 = *&v17[v12];
      }

      else
      {
        v25 = 0;
      }

      *&v17[v12] = v23;
      v26 = v23;

      v27 = [v17 contentView];
      [v27 addSubview:v26];

      [v17 setNeedsLayout];
    }

    v28 = &v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v29 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    if (v29)
    {
      v44 = v10;
      v30 = *v28;
      v31 = v28[1];
      v32 = v28[2];
      v33 = v28[3];
      v34 = v28[5];
      v35 = v28[6];
      v45 = *v28;
      v46 = v31;
      v47 = v32;
      v48 = v33;
      v49 = v29;
      v50 = v34;
      v51 = v35;
      v36 = *&v0[v12];
      if (v36)
      {
        sub_1003C39B8(v30, v31, v32, v33, v29, v34);
        v43 = v36;
        sub_1003C1EF0();
        v42 = objc_allocWithZone(NSAttributedString);
        v37 = sub_10076FF6C();

        type metadata accessor for Key(0);
        sub_1003C39F8(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
        isa = sub_10076FE3C().super.isa;

        v39 = [v42 initWithString:v37 attributes:isa];

        v40 = v43;
        [v43 setAttributedText:v39];
        sub_1003C353C(v30, v31, v32, v33, v29, v34);
      }

      else
      {
      }
    }

    else
    {

      v41 = *&v0[v12];
      if (v41)
      {
        [v41 setAttributedText:0];
      }
    }
  }

  else
  {
LABEL_7:
    v13 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v0[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v0[v13] = 0;

    [v0 setNeedsLayout];
  }

  return result;
}

void sub_1003C2560()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_mainContentView];
    v3 = v1;
    [v2 frame];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    v8 = CGRectGetWidth(v23) + -40.0;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v9 = CGRectGetHeight(v24);
    v10 = v3;
    [v10 sizeThatFits:{v8, v9}];
    v12 = v11;
    v14 = v13;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinX = CGRectGetMinX(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MidY = CGRectGetMidY(v26);
    if (v8 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v8;
    }

    if (v9 >= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v9;
    }

    [v10 setFrame:{MinX + 20.0, MidY + v14 * -0.5, v16, v17}];
  }

  v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
  if (v18)
  {
    v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_mainContentView];
    v20 = v18;
    [v19 bounds];
    [v20 setFrame:?];
  }
}

double sub_1003C2814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10076C7EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10075DE9C();
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076637C();
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007D4E4(a1, a2, a3);
  sub_10076C7FC();
  sub_10075E54C();
  if (swift_dynamicCastClass())
  {
    v38 = v11;
    v39 = v9;
    v40 = v8;
    v18 = [v4 traitCollection];
    v19 = sub_1007706CC();

    sub_10076C75C();
    sub_10075DE6C();
    sub_1003C37C8(v19 & 1, v17, v14, v42);
    v20 = v43;
    v21 = &v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v22 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v23 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8];
    v24 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16];
    v25 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24];
    v27 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    v26 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40];
    v28 = v42[1];
    *v21 = v42[0];
    *(v21 + 1) = v28;
    *(v21 + 2) = v42[2];
    *(v21 + 6) = v20;
    sub_1003C3950(v42, v41);
    sub_1003C353C(v22, v23, v24, v25, v27, v26);
    [v4 setNeedsLayout];
    sub_1003C3988(v42);
    v29 = sub_10076C81C();
    v30 = &v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
    *v30 = v29;
    v30[1] = v31;

    v32 = sub_1003C2078();
    v33 = *&v4[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v33)
    {
      v34 = v33;
      v35 = v38;
      sub_10076C80C();
      v36 = sub_10076C79C();
      (*(v39 + 8))(v35, v40);
      [v34 setTextColor:v36];
    }

    [v4 setNeedsLayout];
  }

  else
  {
  }

  return result;
}

double sub_1003C2B4C(uint64_t a1, uint64_t a2)
{
  sub_10007E0D4(a1, a2);
  sub_10076C84C();
  sub_1003C39F8(&qword_100947150, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_10076332C();
  if (v8)
  {
    sub_10076C7FC();
    sub_10075E54C();
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      sub_10076338C();

      v3 = sub_1007684FC();

      if (v3)
      {
      }

      else
      {

        sub_10075E2AC();

        v4 = sub_10076BFCC();

        sub_10000A5D4(&unk_100942870, &qword_100784460);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1007841E0;
        *(v5 + 32) = v4;

        v6._rawValue = v5;
        sub_100760BAC(v6);
      }
    }
  }

  return result;
}

id sub_1003C2D44(uint64_t a1, uint64_t a2)
{
  sub_10007D9E0(a1, a2);
  v3 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v2[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v2[v3] = 0;

  return [v2 setNeedsLayout];
}

double sub_1003C2DB0()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_100949638, &unk_10078C1B0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v21[-1] - v4;
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView];
  [v6 setImage:{0, v3}];
  [v6 setBackgroundColor:0];
  sub_10076C7FC();
  sub_10075E54C();
  if (swift_dynamicCastClass())
  {
    v7 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
    v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
    if (v8)
    {
      v9 = *&v8[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v8[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
      v10 = v8;

      sub_1001174F8();
      v11 = v10;
    }

    else
    {
      type metadata accessor for BrandedAppTodayCardNoArtBackgroundView(0);
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v14 = *&v1[v7];
      v15 = v13;
      if (v14)
      {
        [v14 removeFromSuperview];
        v16 = *&v1[v7];
      }

      else
      {
        v16 = 0;
      }

      *&v1[v7] = v13;
      v11 = v13;

      [*&v1[OBJC_IVAR____TtC20ProductPageExtension32BaseTodayBrickCollectionViewCell_mainContentView] insertSubview:v11 atIndex:0];
      [v1 setNeedsLayout];

      v10 = 0;
    }

    v17 = v10;

    sub_10075E2AC();
    sub_10076BF7C();

    v18 = sub_10076BF6C();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    v19 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_style;
    swift_beginAccess();
    sub_1003C357C(v5, &v11[v19]);
    swift_endAccess();
    [v11 setNeedsLayout];
    sub_10000CFBC(v5, &qword_100949638, &unk_10078C1B0);
    sub_10075E2AC();

    sub_10076BFCC();

    v20 = v11;
    type metadata accessor for BrandedAppTodayCardNoArtBackgroundView(0);
    sub_1003C39F8(&qword_100955B80, type metadata accessor for BrandedAppTodayCardNoArtBackgroundView, &protocol conformance descriptor for NSObject);
    sub_10077140C();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100760B7C();

    sub_10000CFBC(v21, &qword_100943310, &unk_100784150);
  }

  else
  {
  }

  return result;
}

void sub_1003C31A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
    if (v8)
    {
      v9 = v8;

      v10 = *&v9[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v9[OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image] = a1;
      v11 = a1;

      v7 = v9;
      sub_1001174F8();
    }
  }
}

void sub_1003C32F8()
{
  sub_1003C353C(*(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics), *(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8), *(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16), *(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24), *(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32), *(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40));

  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
}

uint64_t type metadata accessor for BrandedAppTodayBrickCollectionViewCell(uint64_t a1)
{
  result = qword_100955B70;
  if (!qword_100955B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003C3498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003C34E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1003C353C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
  }
}

uint64_t sub_1003C357C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100949638, &unk_10078C1B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C35EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1003C3630(__n128 a1)
{
  v1 = sub_10076637C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 1.5;
  if ((sub_10075DE3C() & 1) == 0 && (sub_10075DDEC() & 1) == 0 && (sub_10075DE2C() & 1) == 0)
  {
    sub_10076635C();
    sub_1003C39F8(&qword_10094D768, &type metadata accessor for StringCharacteristics, &protocol conformance descriptor for StringCharacteristics);
    v6 = sub_10077124C();
    v7 = *(v2 + 8);
    v7(v4, v1);
    if ((v6 & 1) == 0)
    {
      sub_10076634C();
      v8 = sub_10077124C();
      v7(v4, v1);
      if (v8)
      {
        return 1.5;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v5;
}

double sub_1003C37C8@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  if (a1)
  {
    v9 = 48.0;
  }

  else
  {
    v9 = 30.0;
  }

  v10 = 38.0;
  if (a1)
  {
    v10 = 60.0;
    v11 = -12.0;
  }

  else
  {
    v11 = -8.0;
  }

  v12 = [v8 systemFontOfSize:v10 weight:UIFontWeightBold];
  v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v15 = v9 * sub_1003C3630(v14);
  [v13 setMinimumLineHeight:v15];
  [v13 setMaximumLineHeight:v15];
  v16 = sub_10075DE9C();
  (*(*(v16 - 8) + 8))(a3, v16);
  v17 = sub_10076637C();
  (*(*(v17 - 8) + 8))(a2, v17);
  result = 60.0;
  *a4 = xmmword_1007A0790;
  *(a4 + 16) = xmmword_1007A07A0;
  *(a4 + 32) = v12;
  *(a4 + 40) = v13;
  *(a4 + 48) = v11;
  return result;
}

void sub_1003C39B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    v6 = a5;

    v7 = a6;
  }
}

uint64_t sub_1003C39F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1003C3A40@<Q0>(uint64_t *a1@<X8>)
{
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v12 = *(v1 + 64);
  v13 = *(v1 + 80);
  v8 = *v1;
  v9 = *(v1 + 16);
  if (*(v1 + 240) == 1)
  {
    a1[3] = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    a1[4] = sub_10011E144();
  }

  else
  {
    a1[3] = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    a1[4] = sub_10011E028();
  }

  v3 = swift_allocObject();
  sub_10000A570(v1 + 96, v3 + 112);
  sub_10011E080(v1 + 136, v3 + 152);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = *(v1 + 192);
  sub_10011E080(v1 + 200, v3 + 216);
  *(v3 + 48) = v10;
  *(v3 + 64) = v11;
  *(v3 + 80) = v12;
  *(v3 + 96) = v13;
  result = v8;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(v3 + 192) = v4;
  *(v3 + 200) = v5;
  *(v3 + 208) = v6;
  *a1 = v3;
  return result;
}

__n128 sub_1003C3B54(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

__n128 sub_1003C3BA8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1003C3BF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003C3C3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003C3CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003C3D1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1003C3DA8(uint64_t a1, double a2, double a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 5);
  v31 = *(v3 + 3);
  v32 = v7;
  v33 = v3[7];
  v9 = v3[8];
  v8 = v3[9];
  v10 = v3[10];
  v11 = v3[11];
  sub_10000A570((v3 + 12), v28);
  sub_10011E080((v3 + 17), v29);
  v12 = v3[22];
  v13 = v3[23];
  v14 = *(v3 + 192);
  v19[0] = v4;
  v19[1] = v5;
  v19[2] = v6;
  v20 = v31;
  v21 = v32;
  v22 = v33;
  v23 = v9;
  v24 = v8;
  v25 = v10;
  v26 = v11;
  v27 = 0;
  v29[5] = v12;
  v29[6] = v13;
  v30 = v14;
  if ((v14 & 1) == 0)
  {
    sub_10011E080(v29, &v17);
    sub_10017FE2C(&v17);
  }

  sub_10000CF78(v28, v28[3]);
  sub_10076E0FC();
  sub_1003C4D50(v19);
  sub_10011E080((v3 + 25), &v17);
  if (v18)
  {
    sub_100012498(&v17, v19);
    sub_10000CF78(v19, v20);
    sub_10076E0FC();
    sub_10000CD74(v19);
  }

  else
  {
    sub_10017FE2C(&v17);
  }

  return a2;
}

uint64_t sub_1003C3FAC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  sub_1007708DC();
  v14 = sub_100102A30(a2, a3, a4, a5, v12, v13);
  v16 = v15;
  v52 = v18;
  v53 = v17;
  v19 = *(v5 + 1);
  v78 = *v5;
  v79 = v19;
  v20 = *(v5 + 3);
  v80 = *(v5 + 2);
  v81 = v20;
  v21 = v5[8];
  v22 = *(v5 + 9);
  v77 = *(v5 + 5);
  sub_10000A570((v5 + 12), v64);
  sub_10011E080((v5 + 17), v66);
  v23 = v5[22];
  v24 = v6[23];
  v25 = *(v6 + 192);
  v59[0] = v78;
  v59[1] = v79;
  v59[2] = v80;
  v59[3] = v81;
  v60 = v21;
  v61 = v22;
  v62 = v77;
  v63 = 0;
  *&v66[5] = v23;
  *&v66[6] = v24;
  v26 = 0.0;
  v27 = 0.0;
  v67 = v25;
  if ((v25 & 1) == 0)
  {
    sub_10011E080(v66, v68);
    if (v69 != 0.0)
    {
      v27 = v24;
      v26 = v23;
    }

    sub_10017FE2C(v68);
  }

  if (v26 <= 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v21 + v26;
  }

  sub_10000CF78(v64, v65);
  sub_10076E0FC();
  v33 = v30;
  if (v27 > v30)
  {
    v30 = v27;
  }

  *v68 = v26;
  *&v68[1] = v27;
  v34 = v28 + v29;
  *&v68[2] = v28;
  v69 = v29;
  v70 = v33;
  v71 = v31;
  v72 = v32;
  v73 = v28 + v29;
  v74 = v30;
  v75 = v30;
  v35 = v30;
  v76 = 0;
  sub_10011E080((v6 + 25), v57);
  v36 = v58;
  sub_10017FE2C(v57);
  if (v25)
  {
    v37 = 1;
  }

  else
  {
    sub_10011E080((v6 + 17), v57);
    v37 = v58 == 0;
    sub_10017FE2C(v57);
  }

  sub_10000CF78(v64, v65);
  sub_10076E0FC();
  v39 = v38 >= v33 || v37;
  if (v36 || (v39 & 1) == 0)
  {
    v44 = v34;
    v40 = v14;
    v83.origin.x = v14;
    v41 = v16;
    v83.origin.y = v16;
    v42 = v52;
    v43 = v53;
    v83.size.width = v53;
    v83.size.height = v52;
    MinX = CGRectGetMinX(v83);
    if (v36)
    {
      v84.origin.x = v14;
      v84.origin.y = v41;
      v84.size.width = v53;
      v84.size.height = v52;
      MinY = CGRectGetMinY(v84);
      goto LABEL_22;
    }
  }

  else
  {
    v40 = v14;
    v82.origin.x = v14;
    v41 = v16;
    v82.origin.y = v16;
    v42 = v52;
    v43 = v53;
    v82.size.width = v53;
    v82.size.height = v52;
    v44 = v34;
    MinX = CGRectGetMidX(v82) + v34 * -0.5;
  }

  v85.origin.x = v40;
  v85.origin.y = v41;
  v85.size.width = v43;
  v85.size.height = v42;
  MinY = CGRectGetMidY(v85) + v35 * -0.5;
LABEL_22:
  v54 = MinY;
  sub_1007709CC();
  sub_1003C43E8(a1, v68, v47, v48, v49, v50);
  sub_10011E080((v6 + 25), &v55);
  if (v56)
  {
    sub_100012498(&v55, v57);
    sub_10000CF78(v57, v58);
    sub_10076E0FC();
    v86.origin.x = v40;
    v86.origin.y = v41;
    v86.size.width = v43;
    v86.size.height = v42;
    CGRectGetMinX(v86);
    v87.origin.x = MinX;
    v87.origin.y = v54;
    v87.size.width = v44;
    v87.size.height = v35;
    CGRectGetMaxY(v87);
    v88.origin.x = v40;
    v88.origin.y = v41;
    v88.size.width = v43;
    v88.size.height = v42;
    CGRectGetWidth(v88);
    sub_10000CF78(v57, v58);
    sub_1007709CC();
    sub_10076E0EC();
    sub_1003C4D50(v59);
    return sub_10000CD74(v57);
  }

  else
  {
    sub_1003C4D50(v59);
    return sub_10017FE2C(&v55);
  }
}

void sub_1003C43E8(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = *(v6 + 96) | (*(a2 + 32) < *(a2 + 8) + *(a2 + 8));
  sub_10011E080(v6 + 144, &v20);
  if (v21)
  {
    sub_100012498(&v20, v22);
    v23.origin.x = a3;
    v23.origin.y = a4;
    v23.size.width = a5;
    v23.size.height = a6;
    CGRectGetMinX(v23);
    v12 = a3;
    v13 = a4;
    v14 = a5;
    v15 = a6;
    if (v11)
    {
      CGRectGetMidY(*&v12);
    }

    else
    {
      CGRectGetMinY(*&v12);
    }

    sub_10000CF78(v22, v22[3]);
    sub_1007709CC();
    sub_10076E0EC();
    sub_10000CD74(v22);
  }

  else
  {
    sub_10017FE2C(&v20);
  }

  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  CGRectGetMinX(v24);
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  if (v11)
  {
    CGRectGetMidY(*&v16);
  }

  else
  {
    CGRectGetMinY(*&v16);
  }

  sub_10000CF78((v6 + 104), *(v6 + 128));
  sub_1007709CC();
  sub_10076E0EC();
}

double sub_1003C45E8(uint64_t a1, double a2, double a3)
{
  sub_10011E080(v3 + 200, &v28);
  if (v29)
  {
    sub_100012498(&v28, &v14);
    sub_10000CF78(&v14, *(&v15 + 1));
    sub_10076E0FC();
    sub_10000CD74(&v14);
  }

  else
  {
    sub_10017FE2C(&v28);
  }

  v4 = v3[1];
  v26 = *v3;
  v27 = v4;
  v5 = *(v3 + 8);
  v25 = *(v3 + 72);
  v6 = *(v3 + 11);
  v12 = v3[3];
  v13 = v3[2];
  sub_10000A570((v3 + 6), v22);
  sub_10011E080(v3 + 136, v23);
  v7 = *(v3 + 22);
  v8 = *(v3 + 23);
  v9 = *(v3 + 192);
  v14 = v26;
  v15 = v27;
  v16 = v13;
  v17 = v12;
  v18 = v5;
  v19 = v25;
  v20 = v6;
  v21 = 1;
  v23[5] = v7;
  v23[6] = v8;
  v24 = v9;
  if ((v9 & 1) == 0)
  {
    sub_10011E080(v23, &v28);
    sub_10017FE2C(&v28);
  }

  sub_10000CF78(v22, v22[3]);
  sub_10076E0FC();
  sub_1003C4D50(&v14);
  return a2;
}

uint64_t sub_1003C480C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1007708DC();
  v72.origin.x = sub_100102A30(a2, a3, a4, a5, v11, v12);
  x = v72.origin.x;
  y = v72.origin.y;
  width = v72.size.width;
  height = v72.size.height;
  CGRectGetWidth(v72);
  sub_10011E080(v5 + 200, &v62);
  v42 = y;
  if (v64 == 0.0)
  {
    sub_10017FE2C(&v62);
    v17 = y;
  }

  else
  {
    sub_100012498(&v62, &v43);
    sub_10000CF78(&v43, *(&v44 + 1));
    sub_10076E0FC();
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    CGRectGetMaxX(v73);
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    CGRectGetMidY(v74);
    sub_10000CF78(&v43, *(&v44 + 1));
    sub_1007709CC();
    sub_10076E0EC();
    v17 = y;
    sub_10000CD74(&v43);
  }

  sub_10011E080(v5 + 200, v60);
  v18 = v61;
  sub_10017FE2C(v60);
  v19 = v5[1];
  v56 = *v5;
  v57 = v19;
  v20 = v5[3];
  v58 = v5[2];
  v59 = v20;
  v21 = *(v5 + 8);
  v54 = *(v5 + 72);
  v55 = *(v5 + 11);
  sub_10000A570((v5 + 6), v51);
  sub_10011E080(v5 + 136, v52);
  v22 = *(v5 + 22);
  v23 = *(v5 + 23);
  v24 = *(v5 + 192);
  v43 = v56;
  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v21;
  v48 = v54;
  v49 = v55;
  v50 = 1;
  *&v52[5] = v22;
  *&v52[6] = v23;
  v53 = v24;
  v75.origin.x = x;
  v75.origin.y = v17;
  v75.size.width = width;
  v75.size.height = height;
  CGRectGetHeight(v75);
  v25 = 0.0;
  v26 = 0.0;
  if ((v24 & 1) == 0)
  {
    sub_10011E080(v52, &v62);
    if (v64 != 0.0)
    {
      v26 = v23;
      v25 = v22;
    }

    sub_10017FE2C(&v62);
  }

  if (v25 <= 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v21 + v25;
  }

  sub_10000CF78(v51, v51[3]);
  sub_10076E0FC();
  if (v26 > v29)
  {
    v32 = v26;
  }

  else
  {
    v32 = v29;
  }

  *&v62 = v25;
  *(&v62 + 1) = v26;
  v63 = v27;
  v64 = v28;
  v65 = v29;
  v66 = v30;
  v67 = v31;
  v68 = v27 + v28;
  v69 = v32;
  v70 = v32;
  v71 = 0;
  v33 = x;
  v34 = v42;
  v35 = width;
  v36 = height;
  if (v18)
  {
    CGRectGetMinX(*&v33);
  }

  else
  {
    CGRectGetMidX(*&v33);
  }

  v76.origin.x = x;
  v76.origin.y = v42;
  v76.size.width = width;
  v76.size.height = height;
  CGRectGetMidY(v76);
  sub_1007709CC();
  sub_1003C43E8(a1, &v62, v37, v38, v39, v40);
  return sub_1003C4D50(&v43);
}

double sub_1003C4BFC(uint64_t a1, double a2, double a3)
{
  sub_1003C3A40(v6);
  sub_10000CF78(v6, v7);
  sub_10076E0FC();
  v4 = v3;
  sub_10000CD74(v6);
  return v4;
}

uint64_t sub_1003C4CA0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1003C3A40(v6);
  sub_10000CF78(v6, v7);
  sub_10076E0EC();
  return sub_10000CD74(v6);
}

__n128 sub_1003C4D34@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  a1[2] = *(v1 + 32);
  a1[3] = v2;
  v3 = *(v1 + 80);
  a1[4] = *(v1 + 64);
  a1[5] = v3;
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v5;
  return result;
}

__n128 sub_1003C4D80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1003C4DC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003C4E0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003C4E90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003C4EB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

unint64_t sub_1003C4F18()
{
  result = qword_100955B88;
  if (!qword_100955B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955B88);
  }

  return result;
}

void sub_1003C4F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10075EE9C();
    v9 = sub_10075F27C();

    if (v9)
    {
      v10 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      sub_10076F5AC();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_1000527AC(v6);
      }

      else
      {
        sub_100263BF0(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_1003C5128(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, int *a11)
{
  v117 = a3;
  v118 = a11;
  v14 = sub_10077164C();
  v113 = *(v14 - 8);
  v114 = v14;
  __chkstk_darwin(v14);
  v112 = &v87[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_10076749C();
  v110 = *(v16 - 8);
  v111 = v16;
  __chkstk_darwin(v16);
  v108 = &v87[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = sub_10076997C();
  v106 = *(v123 - 8);
  __chkstk_darwin(v123);
  v105 = &v87[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_10076443C();
  v120 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v87[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v87[-v23];
  v25 = sub_10076747C();
  v121 = *(v25 - 8);
  __chkstk_darwin(v25);
  v107 = &v87[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v87[-v28];
  sub_100770ACC();
  v31 = v30;
  v33 = v32;
  v115 = a1;
  v34 = sub_10075EEAC();
  v35 = sub_10076BB6C();
  v95 = v36;
  v96 = v35;
  v37 = sub_10076BBEC();
  v97 = v38;
  v98 = v37;
  if (sub_10076BB0C())
  {
    v39 = sub_10076518C();

    if (v39)
    {
      v40 = sub_10076C3EC();
      v103 = v41;
      v104 = v40;
    }

    else
    {
      v103 = 0;
      v104 = 0;
    }
  }

  else
  {
    v103 = 0;
    v104 = 0;
  }

  sub_10076286C();
  v42 = [a2 traitCollection];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v43 = sub_10000A61C(v25, qword_1009A0690);
  v100 = *(v121 + 16);
  v101 = v121 + 16;
  v100(v29, v43, v25);
  v44 = sub_10077071C();
  v116 = a2;
  v109 = v34;
  v122 = v25;
  if (v44)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v45 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v45 = qword_100944CA0;
  }

  v46 = v19;
  v47 = sub_10000A61C(v19, v45);
  v48 = v120;
  (*(v120 + 16))(v21, v47, v19);
  (*(v48 + 32))(v24, v21, v19);
  v94 = v42;
  v49 = [v42 preferredContentSizeCategory];
  sub_10077084C();

  sub_1007643EC();
  sub_10076441C();
  sub_10076746C();
  sub_10076745C();
  v50 = sub_10076DDDC();
  swift_allocObject();
  v93 = sub_10076DDBC();
  v51 = objc_opt_self();
  v90 = v51;
  v52 = [v51 preferredFontForTextStyle:UIFontTextStyleBody];
  v53 = sub_10076C04C();
  v92 = v29;
  v54 = v53;
  v160[3] = v53;
  v119 = sub_1003C5D4C(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v160[4] = v119;
  v55 = sub_10000DB7C(v160);
  v56 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v57 = *(v54 - 8);
  v91 = *(v57 + 104);
  v102 = v46;
  v58 = v57 + 104;
  v88 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v91(v55, enum case for Feature.measurement_with_labelplaceholder(_:), v54);
  v89 = v58;
  sub_10076C90C();
  v99 = v24;
  sub_10000CD74(v160);
  v59 = v105;
  sub_10076996C();
  sub_10076994C();
  v60 = *(v106 + 8);
  v60(v59, v123);
  v61 = [v51 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v159[3] = v54;
  v159[4] = v119;
  v62 = sub_10000DB7C(v159);
  v63 = v56;
  v64 = v91;
  v91(v62, v63, v54);
  sub_10076C90C();
  sub_10000CD74(v159);
  sub_10076996C();
  sub_10076994C();
  v60(v59, v123);
  v65 = [v90 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v158[3] = v54;
  v158[4] = v119;
  v66 = sub_10000DB7C(v158);
  v64(v66, v88, v54);
  sub_10076C90C();
  sub_10000CD74(v158);
  sub_10076996C();
  sub_10076994C();
  v60(v59, v123);
  sub_10001D420();
  swift_allocObject();
  v67 = sub_10076DDBC();

  sub_10001D420();
  swift_allocObject();
  v68 = sub_10076DDBC();
  v69 = v92;
  v100(v107, v92, v122);
  v157 = &protocol witness table for LayoutViewPlaceholder;
  v156 = v50;
  v155 = v93;
  v154 = 0;
  *&v152[40] = 0u;
  v153 = 0u;
  sub_10000A570(v160, v152);
  sub_10000A570(v159, &v151);
  v150 = 0;
  v148 = 0u;
  v149 = 0u;
  v147 = 0;
  v145 = 0u;
  v146 = 0u;

  v70 = sub_10076DDCC();
  v144 = &protocol witness table for LayoutViewPlaceholder;
  v143 = v50;
  v142 = v70;
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v132 = 0;
  v131 = 0u;
  *&v130[40] = 0u;
  sub_10000A570(v158, v130);
  v128 = v50;
  v129 = &protocol witness table for LayoutViewPlaceholder;
  v126 = &protocol witness table for LayoutViewPlaceholder;
  v127 = v67;
  v125 = v50;
  v124 = v68;
  v71 = v108;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1007841E0;
  v73 = v94;
  *(v72 + 32) = v94;
  v74 = v73;
  v75 = sub_10076DEEC();
  sub_1003C5D4C(&unk_100958A50, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v76 = v111;
  sub_10076D2AC();
  v78 = v77;

  (*(v110 + 8))(v71, v76);
  sub_10000CD74(v158);
  sub_10000CD74(v159);
  sub_10000CD74(v160);
  (*(v120 + 8))(v99, v102);
  (*(v121 + 8))(v69, v122);
  if (qword_10093FB18 != -1)
  {
    swift_once();
  }

  v79 = qword_10099DBB0;
  sub_10000CF78(qword_10099DB98, qword_10099DBB0);
  v80 = v112;
  sub_1000FF02C(v79);
  v81 = v116;
  sub_10076D40C();
  v83 = v82;
  (*(v113 + 8))(v80, v114);
  v84 = type metadata accessor for AppEventView(0);
  v85 = sub_10075EE9C();
  sub_10069CFD8(v31, v33 - (v78 + v83), v85, v81, v117, v84, v118);

  return a4;
}

uint64_t sub_1003C5D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1003C5D94()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "prepareForReuse");
  v2 = &v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction + 8];
  *v2 = 0;
  *(v2 + 1) = 0;
  v5.n128_f64[0] = sub_1000167E0(v3, v4);
  sub_1003C8578(_swiftEmptyArrayStorage, v5);
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  sub_10075FCEC(v16, v6);
  v7 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  sub_10075FCEC(v17, v8);

  v9 = &v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_initialLongPressLocation];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v10)
  {
    [v10 setEnabled:1];
  }

  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView];
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardView];
  [v11 addSubview:v12];
  v14[0] = 0x3FF0000000000000;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0x3FF0000000000000;
  v14[4] = 0;
  v14[5] = 0;
  [v12 setTransform:v14];
  [v12 setAlpha:1.0];
  return [v12 setHidden:0];
}

uint64_t sub_1003C5EF4()
{
  v0 = sub_10076D39C();
  __chkstk_darwin(v0 - 8);
  v23[2] = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1007640EC();
  sub_10000DB18(v6, qword_10099F660);
  v23[1] = sub_10000A61C(v6, qword_10099F660);
  if (qword_100940B30 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D3DC();
  v8 = sub_10000A61C(v7, qword_1009A0F88);
  v9 = *(v7 - 8);
  v26 = *(v9 + 16);
  v25 = v9 + 16;
  v26(v5, v8, v7);
  v10 = v3[13];
  v24 = enum case for FontSource.useCase(_:);
  v27 = v10;
  v10(v5);
  v11 = sub_10076D9AC();
  v40[3] = v11;
  v40[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v40);
  v38 = v2;
  v39 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v37);
  v13 = v3[2];
  v13(v12, v5, v2);
  sub_10076D9BC();
  v14 = v3[1];
  v14(v5, v2);
  if (qword_100940B38 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v7, qword_1009A0FA0);
  v26(v5, v15, v7);
  v27(v5, v24, v2);
  v38 = v11;
  v39 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v37);
  v35 = v2;
  v36 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v34);
  v13(v16, v5, v2);
  sub_10076D9BC();
  v14(v5, v2);
  if (qword_100940B40 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v7, qword_1009A0FB8);
  v26(v5, v17, v7);
  v18 = v27;
  v27(v5, v24, v2);
  v35 = v11;
  v36 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v34);
  v32 = v2;
  v33 = &protocol witness table for FontSource;
  v19 = sub_10000DB7C(v31);
  v13(v19, v5, v2);
  sub_10076D9BC();
  v14(v5, v2);
  *v5 = UIFontTextStyleBody;
  v18(v5, enum case for FontSource.textStyle(_:), v2);
  v32 = v11;
  v33 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v31);
  v29 = v2;
  v30 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v28);
  v13(v20, v5, v2);
  v21 = UIFontTextStyleBody;
  sub_10076D9BC();
  v14(v5, v2);
  sub_10076D3AC();
  v30 = &protocol witness table for Double;
  v29 = &type metadata for Double;
  v28[0] = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 1;
  return sub_1007640BC();
}

uint64_t sub_1003C6490()
{
  v0 = sub_10076E1EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076E21C();
  sub_10000DB18(v4, qword_10099F678);
  sub_10000A61C(v4, qword_10099F678);
  (*(v1 + 104))(v3, enum case for Separator.Position.top(_:), v0);
  v7[3] = sub_10076D67C();
  v7[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v7);
  sub_10076D66C();
  return sub_10076E1FC();
}

uint64_t sub_1003C65C8()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099F690);
  sub_10000A61C(v0, qword_10099F690);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003C672C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  sub_1007639FC();
  if (qword_100940AF8 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_1009A0EF8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v9 = enum case for FontSource.useCase(_:);
  v10 = v1 + 13;
  v47 = v1[13];
  v47(v3, enum case for FontSource.useCase(_:), v0);
  v43 = sub_10076D9AC();
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v50);
  v12 = v1[2];
  v49 = v1 + 2;
  v42 = v12;
  v12(v11, v3, v0);
  sub_10076D9BC();
  v14 = v1[1];
  v13 = v1 + 1;
  v44 = v14;
  v14(v3, v0);
  sub_1007639DC();
  if (qword_100940B00 != -1)
  {
    swift_once();
  }

  v40 = sub_10000A61C(v4, qword_1009A0F10);
  v7(v3, v40, v4);
  HIDWORD(v39) = v9;
  v15 = v47;
  v47(v3, v9, v0);
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v45 = v10;
  v46 = v8;
  v48 = v7;
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v50);
  v42(v16, v3, v0);
  sub_10076D9BC();
  v41 = v13;
  v44(v3, v0);
  sub_100763AAC();
  v17 = v40;
  v18 = v4;
  v48(v3, v40, v4);
  v19 = HIDWORD(v39);
  v15(v3, HIDWORD(v39), v0);
  v20 = v43;
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v50);
  v22 = v42;
  v42(v21, v3, v0);
  sub_10076D9BC();
  v23 = v44;
  v44(v3, v0);
  sub_100763A7C();
  v48(v3, v17, v18);
  v24 = v19;
  v25 = v19;
  v26 = v47;
  v47(v3, v24, v0);
  v54 = v20;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v50);
  v22(v27, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  sub_100763A6C();
  v28 = v40;
  v40 = v18;
  v48(v3, v28, v18);
  v26(v3, v25, v0);
  v29 = v43;
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v30 = sub_10000DB7C(v50);
  v31 = v42;
  v42(v30, v3, v0);
  sub_10076D9BC();
  v23(v3, v0);
  sub_100763ACC();
  if (qword_100940B08 != -1)
  {
    swift_once();
  }

  v32 = v40;
  v33 = sub_10000A61C(v40, qword_1009A0F28);
  v48(v3, v33, v32);
  v47(v3, v25, v0);
  v54 = v29;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v34 = sub_10000DB7C(v50);
  v31(v34, v3, v0);
  sub_10076D9BC();
  v35 = v44;
  v44(v3, v0);
  sub_100763A2C();
  if (qword_100940B10 != -1)
  {
    swift_once();
  }

  v36 = sub_10000A61C(v32, qword_1009A0F40);
  v48(v3, v36, v32);
  v47(v3, v25, v0);
  v54 = v29;
  v55 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v37 = sub_10000DB7C(v50);
  v31(v37, v3, v0);
  sub_10076D9BC();
  v35(v3, v0);
  sub_100763A3C();
  return sub_100763A1C();
}

void sub_1003C6E9C(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

char *sub_1003C6F64(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v121 = sub_100763ADC();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v113 - v12;
  v116 = sub_10075FEEC();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076771C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v131 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v113 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_itemLayoutContext;
  v21 = sub_10076341C();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_avatarShowcase] = 0;
  v22 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer;
  *&v5[v22] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = &v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer] = 0;
  v24 = &v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_initialLongPressLocation];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_clickAction;
  v26 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  (*(*(v26 - 8) + 56))(&v5[v25], 1, 1, v26);
  v27 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView] = v27;
  v28 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardView] = v28;
  sub_10075FD2C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_artworkView] = sub_10075FB2C();
  if (qword_100940B30 != -1)
  {
    swift_once();
  }

  v29 = sub_10076D3DC();
  v30 = sub_10000A61C(v29, qword_1009A0F88);
  v31 = *(v29 - 8);
  v32 = v31 + 16;
  v33 = *(v31 + 16);
  v33(v19, v30, v29);
  v36 = *(v31 + 56);
  v34 = v31 + 56;
  v35 = v36;
  v36(v19, 0, 1, v29);
  v37 = *(v15 + 104);
  v129 = enum case for DirectionalTextAlignment.none(_:);
  v127 = v15 + 104;
  v128 = v37;
  v37(v131);
  v38 = sub_1007626BC();
  v126 = v14;
  v39 = v38;
  v40 = objc_allocWithZone(v38);
  v132 = v19;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel] = sub_1007626AC();
  if (qword_100940B38 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A61C(v29, qword_1009A0FA0);
  v42 = v132;
  v33(v132, v41, v29);
  v35(v42, 0, 1, v29);
  v128(v131, v129, v126);
  v43 = objc_allocWithZone(v39);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940B40 != -1)
  {
    swift_once();
  }

  v44 = sub_10000A61C(v29, qword_1009A0FB8);
  v45 = v132;
  v123 = v33;
  v124 = v32;
  v33(v132, v44, v29);
  v118 = v29;
  v125 = v34;
  v122 = v35;
  v35(v45, 0, 1, v29);
  v128(v131, v129, v126);
  v46 = objc_allocWithZone(v39);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_subtitleLabel] = sub_1007626AC();
  v47 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView] = sub_10046D7FC(1);
  type metadata accessor for CrossLinkLockupView();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v133.receiver = v5;
  v133.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v133, "initWithFrame:", a1, a2, a3, a4);
  v49 = [v48 contentView];
  [v49 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v50 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel;
  [*(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel) _setTextColorFollowsTintColor:1];
  v51 = *(v48 + v50);
  sub_10076266C();

  v52 = [v48 contentView];
  [v52 addSubview:*(v48 + v50)];

  v53 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_titleLabel;
  v54 = *(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_titleLabel);
  sub_10076266C();

  v55 = [v48 contentView];
  [v55 addSubview:*(v48 + v53)];

  v56 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_subtitleLabel;
  v57 = *(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_subtitleLabel);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v58 = v57;
  v59 = sub_100770D1C();
  [v58 setTextColor:v59];

  v60 = *(v48 + v56);
  sub_10076266C();

  v61 = [v48 contentView];
  [v61 addSubview:*(v48 + v56)];

  v62 = [v48 contentView];
  v63 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView;
  [v62 addSubview:*(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView)];

  v64 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardView;
  [*(v48 + v63) addSubview:*(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardView)];
  [*(v48 + v64) setAccessibilityIgnoresInvertColors:1];
  v131 = v64;
  v65 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_artworkView;
  [*(v48 + v64) addSubview:*(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_artworkView)];
  v66 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView;
  v67 = *(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView);
  v68 = v115;
  v69 = v114;
  v70 = v116;
  (*(v115 + 104))(v114, enum case for CornerStyle.arc(_:), v116);
  v71 = v67;
  sub_10046CC14(v69, 12, 20.0);

  (*(v68 + 8))(v69, v70);
  v72 = *(v48 + v65);
  v73 = sub_1007638CC();

  if (v73)
  {
    [*(v48 + v65) insertSubview:*(v48 + v66) belowSubview:v73];
  }

  else
  {
    [*(v48 + v65) addSubview:*(v48 + v66)];
  }

  sub_1003C7FB8();
  v74 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView;
  v75 = qword_100940340;
  v76 = *(v48 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView);
  if (v75 != -1)
  {
    swift_once();
  }

  v77 = v121;
  v78 = sub_10000A61C(v121, qword_10099F690);
  v79 = v120;
  v80 = *(v120 + 16);
  v81 = v119;
  v80(v119, v78, v77);
  v82 = *&v76[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView];
  v83 = v117;
  v80(v117, v81, v77);
  v84 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v79 + 24))(&v82[v84], v83, v77);
  swift_endAccess();
  [v82 setNeedsLayout];
  v85 = *(v79 + 8);
  v85(v83, v77);
  [v76 setNeedsLayout];

  v85(v81, v77);
  [*(v48 + v74) setLayoutMargins:{0.0, 14.0, 3.0, 14.0}];
  [*(v48 + v74) setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v86 = qword_100940B00;
  v87 = *(*(*(v48 + v74) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  v88 = v74;
  if (v86 != -1)
  {
    swift_once();
  }

  v89 = v118;
  v90 = sub_10000A61C(v118, qword_1009A0F10);
  v91 = v132;
  v92 = v123;
  v123(v132, v90, v89);
  v93 = v122;
  v122(v91, 0, 1, v89);
  sub_1007625DC();

  v94 = qword_100940B08;
  v95 = *(*(*(v48 + v88) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  if (v94 != -1)
  {
    swift_once();
  }

  v96 = sub_10000A61C(v89, qword_1009A0F28);
  v92(v91, v96, v89);
  v93(v91, 0, 1, v89);
  sub_1007625DC();

  v97 = qword_100940B10;
  v98 = *(*(*(v48 + v88) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  if (v97 != -1)
  {
    swift_once();
  }

  v99 = sub_10000A61C(v89, qword_1009A0F40);
  v92(v91, v99, v89);
  v93(v91, 0, 1, v89);
  sub_1007625DC();

  v100 = qword_100940AC0;
  v101 = *(*(v48 + v88) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel);
  if (v100 != -1)
  {
    swift_once();
  }

  v102 = sub_10000A61C(v89, qword_1009A0E50);
  v92(v91, v102, v89);
  v93(v91, 0, 1, v89);
  sub_1007625DC();

  v103 = qword_100940AC8;
  v104 = *(*(v48 + v88) + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel);
  if (v103 != -1)
  {
    swift_once();
  }

  v105 = sub_10000A61C(v89, qword_1009A0E68);
  v92(v91, v105, v89);
  v93(v91, 0, 1, v89);
  sub_1007625DC();

  swift_unknownObjectWeakAssign();
  v106 = *&v131[v48];
  v107 = *(v48 + v88);
  v108 = v48;
  [v106 addSubview:v107];
  v109 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer;
  [*&v108[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer] setDelegate:v108];
  v110 = *&v108[v109];
  [v110 addTarget:v108 action:"handleTapWithGestureRecognizer:"];

  [*(v48 + v88) addGestureRecognizer:*&v108[v109]];
  [*(v48 + v88) setUserInteractionEnabled:1];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_100783DD0;
  *(v111 + 32) = sub_10076E3FC();
  *(v111 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v108;
}

void sub_1003C7FB8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_10077088C();
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView];
    v4 = (v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY);
    *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY) = 0x3FE0000000000000;
    v5 = 0.5;
  }

  else
  {
    v6 = [v0 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LOBYTE(v6) = sub_10077086C();
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView];
    v4 = (v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY);
    if (v6)
    {
      *v4 = 0.45;
      v5 = 0.45;
    }

    else
    {
      *v4 = 0.4;
      v5 = 0.4;
    }
  }

  v8 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView;
  v9 = [*(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startPoint];
  v11 = v10;

  v12 = *v4;
  v13 = [*(v3 + v8) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v12}];

  v14 = [*(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v12}];

  v15 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY) = v5;
  v16 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
  v17 = [*(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startPoint];
  v19 = v18;

  v20 = *(v3 + v15);
  v21 = [*(v3 + v16) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v19, v20}];
}

id sub_1003C833C()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer] removeTarget:v0 action:0];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for EditorialCardCollectionViewCell(uint64_t a1)
{
  result = qword_100955BC0;
  if (!qword_100955BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1003C8578(unint64_t a1, __n128 a2)
{
  v3 = v2;
  if (a1 >> 62)
  {
    v16 = a1;
    v17 = sub_10077158C();
    a1 = v16;
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v4 = a1;
    v5 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView;
    v6 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
    if (!v6)
    {
      v9 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v10 = *&v3[v5];
      if (v10)
      {
        [v10 removeFromSuperview];
        v11 = *&v3[v5];
      }

      else
      {
        v11 = 0;
      }

      *&v3[v5] = v9;
      v12 = v9;

      if (v12)
      {
        v13 = v12[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
        v12[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] = 2;
        sub_1004B413C(v13);
        v14 = [v3 contentView];
        [v14 addSubview:v12];
      }

      [v3 setNeedsLayout];

      v15 = *&v3[v5];
      if (!v15)
      {
        goto LABEL_13;
      }

      *(v15 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_100893CF8;
      swift_unknownObjectWeakAssign();
      v6 = *&v3[v5];
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    [v6 setHidden:{0, a2.n128_f64[0]}];
    v7 = *&v3[v5];
    if (v7)
    {
      v8 = v7;
      sub_1004B1900(v4);
    }

    else
    {
LABEL_13:
    }

    [*&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel] setHidden:1];
    sub_1003C8800([objc_allocWithZone(UILongPressGestureRecognizer) init]);
    goto LABEL_22;
  }

  v18 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v18)
  {
    [v18 setHidden:1];
  }

  [*&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel] setHidden:0];
  v19 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer;
  if (*&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer])
  {
    [*&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView] removeGestureRecognizer:?];
    v20 = *&v3[v19];
  }

  else
  {
    v20 = 0;
  }

  *&v3[v19] = 0;

LABEL_22:

  return [v3 setNeedsLayout];
}

void sub_1003C8800(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer])
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView] removeGestureRecognizer:?];
    v4 = *&v1[v3];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v3] = a1;
  v5 = a1;

  if (a1)
  {
    v6 = v5;
    [v6 addTarget:v1 action:"stateChangedFor:"];
    [v6 setMinimumPressDuration:0.1];
    [v6 setDelegate:v1];

    v7 = [v1 contentView];
    [v7 addGestureRecognizer:v6];
  }
}

uint64_t sub_1003C8924()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v77 = sub_10076443C();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v75 = &v73 - v5;
  v81 = sub_100763ADC();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v73 - v9;
  v78 = sub_10076D1FC();
  v10 = *(v78 - 8);
  __chkstk_darwin(v78);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007640EC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10076410C();
  v82 = *(v83 - 8);
  *&v17 = __chkstk_darwin(v83).n128_u64[0];
  v87 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97.receiver = v1;
  v97.super_class = ObjectType;
  v84 = ObjectType;
  objc_msgSendSuper2(&v97, "layoutSubviews", v17);
  v19 = [v1 contentView];
  v20 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();

  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
  v79 = v7;
  if (v21)
  {
    v22 = v21;
    if (![v22 isHidden])
    {
      goto LABEL_5;
    }
  }

  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel];
LABEL_5:
  v23 = qword_100940330;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v13, qword_10099F660);
  (*(v14 + 16))(v16, v25, v13);
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView];
  v95 = v20;
  v96 = &protocol witness table for UIView;
  v93 = &protocol witness table for UIView;
  v94 = v26;
  v92 = v20;
  v85 = v24;
  v91 = v24;
  v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_titleLabel];
  v89 = sub_1007626BC();
  v90 = &protocol witness table for UILabel;
  v88[5] = v27;
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_subtitleLabel];
  v88[4] = &protocol witness table for UILabel;
  v88[3] = v89;
  v88[0] = v28;
  v29 = v26;
  v30 = v27;
  v31 = v28;
  sub_1007640FC();
  sub_1007640AC();
  (*(v10 + 8))(v12, v78);
  v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardView];
  v33 = [v32 superview];
  if (v33)
  {
    v34 = v33;
    v35 = sub_100770EEC();

    v36 = v80;
    v37 = v79;
    if (v35)
    {
      [v29 bounds];
      [v32 setBounds:{0.0, 0.0}];
      [v29 bounds];
      v39 = v38 * 0.5;
      [v29 bounds];
      [v32 setCenter:{v39, v40 * 0.5}];
    }
  }

  else
  {

    v36 = v80;
    v37 = v79;
  }

  [v29 bounds];
  v42 = v41;
  v44 = v43;
  sub_10075FC8C();
  v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView];
  v46 = v86;
  sub_100353408(v86);
  [v45 layoutMargins];
  v48 = v47;
  v50 = v49;
  v51 = [v45 traitCollection];
  v52 = v81;
  (*(v36 + 16))(v37, v46, v81);
  v53 = sub_100763A4C();
  v55 = v85;
  if ((v56 & 1) == 0 && ((v53 | v54) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v57 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v57 = qword_100944CA0;
    }

    v58 = v77;
    v59 = sub_10000A61C(v77, v57);
    v60 = v76;
    v61 = v74;
    (*(v76 + 16))(v74, v59, v58);
    v62 = v75;
    (*(v60 + 32))(v75, v61, v58);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v60 + 8))(v62, v58);
    v46 = v86;
    v55 = v85;
  }

  sub_10076398C();
  v64 = v63;
  v66 = v65;

  v67 = *(v36 + 8);
  v67(v37, v52);
  v68 = v50 + v48 + v66;
  v67(v46, v52);
  v98.origin.x = 0.0;
  v98.origin.y = 0.0;
  v98.size.width = v42;
  v98.size.height = v44;
  MinX = CGRectGetMinX(v98);
  v99.origin.x = 0.0;
  v99.origin.y = 0.0;
  v99.size.width = v42;
  v99.size.height = v44;
  [v45 setFrame:{MinX, CGRectGetMaxY(v99) - v68, v64, v68}];
  [v45 setNeedsLayout];
  v70 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView];
  v100.origin.x = 0.0;
  v100.origin.y = 0.0;
  v100.size.width = v42;
  v100.size.height = v44;
  Width = CGRectGetWidth(v100);
  v101.origin.x = 0.0;
  v101.origin.y = 0.0;
  v101.size.width = v42;
  v101.size.height = v44;
  [v70 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v101)}];
  sub_1003CB0E0(&qword_100955BD8, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007AAE10);
  sub_1007676CC();

  return (*(v82 + 8))(v87, v83);
}

void sub_1003C92F0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v5 - 8);
  v7 = &v54 - v6;
  v8 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer);
  if (!v16)
  {
    return;
  }

  v56 = v13;
  sub_100016F40(0, &qword_10094D040, NSObject_ptr);
  v57 = v16;
  if ((sub_100770EEC() & 1) == 0)
  {
    goto LABEL_16;
  }

  v54 = ObjectType;
  v55 = v12;
  v17 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView);
  v18 = [v17 superview];
  v19 = [v1 contentView];
  v20 = v19;
  if (v18)
  {
    if (!v19)
    {

      goto LABEL_16;
    }

    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v21 = sub_100770EEC();

    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v19)
  {

    goto LABEL_16;
  }

  v22 = [a1 state];
  if (v22 > 3)
  {
    if ((v22 - 4) >= 2)
    {
      goto LABEL_16;
    }

    v56 = [v17 superview];
    v26 = [v2 contentView];
    if (v56)
    {
      if (!v26)
      {
LABEL_33:

        v25 = v56;
        goto LABEL_17;
      }

      v55 = v26;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v27 = sub_100770EEC();

      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v26)
    {
      goto LABEL_39;
    }

    v37 = objc_opt_self();
    v38 = swift_allocObject();
    *(v38 + 16) = v2;
    *(v38 + 24) = 0x3FF0000000000000;
    v62 = sub_1003CB050;
    v63 = v38;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_10009AEDC;
    v61 = &unk_100893D40;
    v39 = _Block_copy(&aBlock);
    v40 = v2;

    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = v40;
    v62 = sub_1003CB074;
    v63 = v41;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v42 = &unk_100893D90;
LABEL_41:
    v60 = sub_1000513F0;
    v61 = v42;
    v50 = _Block_copy(&aBlock);
    v51 = v40;

    [v37 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v39 options:v50 animations:0.0 completion:1.0];
    _Block_release(v50);
    _Block_release(v39);

    return;
  }

  if (v22 != 1)
  {
    if (v22 == 2)
    {
      [a1 locationInView:v17];
      v34 = v32;
      v35 = v33;
      v36 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_initialLongPressLocation);
      if (v36[2])
      {

        *v36 = v34;
        v36[1] = v35;
        *(v36 + 16) = 0;
        return;
      }

      v43 = sqrt((v33 - v36[1]) * (v33 - v36[1]) + (v32 - *v36) * (v32 - *v36));
      [v57 allowableMovement];
      if (v44 < v43)
      {
        [a1 setEnabled:0];
      }
    }

    else if (v22 == 3)
    {
      v23 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_clickAction;
      swift_beginAccess();
      sub_1003A683C(v2 + v23, v10);
      v24 = v55;
      if ((*(v55 + 6))(v10, 1, v56) == 1)
      {

        sub_10000CFBC(v10, &qword_100952650, &unk_10079B720);
      }

      else
      {
        v24[4](v15, v10, v56);
        sub_100761FEC();
        v61 = v54;
        aBlock = v2;
        v45 = v2;
        sub_10076B88C();

        sub_100761FDC();
        v46 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
        sub_10076F5AC();

        v47 = *(v46 - 8);
        if ((*(v47 + 48))(v7, 1, v46) == 1)
        {
          (v24[1])(v15, v56);

          sub_10000CFBC(v7, &unk_100943200, &unk_100785840);
        }

        else
        {
          v52 = v56;
          sub_100761FEC();
          v53 = sub_100761FDC();
          sub_100263BF0(aBlock, 1, v53, v7);

          (v24[1])(v15, v52);

          (*(v47 + 8))(v7, v46);
        }
      }

      return;
    }

    goto LABEL_16;
  }

  [a1 locationInView:v17];
  v28 = v2 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_initialLongPressLocation;
  *v28 = v29;
  *(v28 + 1) = v30;
  v28[16] = 0;
  v56 = [v17 superview];
  v26 = [v2 contentView];
  if (!v56)
  {
    if (!v26)
    {
LABEL_40:
      v37 = objc_opt_self();
      v48 = swift_allocObject();
      *(v48 + 16) = v2;
      *(v48 + 24) = 0x3FEEB851EB851EB8;
      v62 = sub_1003CB2AC;
      v63 = v48;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_10009AEDC;
      v61 = &unk_100893DE0;
      v39 = _Block_copy(&aBlock);
      v40 = v2;

      v49 = swift_allocObject();
      *(v49 + 16) = 1;
      *(v49 + 24) = v40;
      v62 = sub_1003CB2BC;
      v63 = v49;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v42 = &unk_100893E30;
      goto LABEL_41;
    }

LABEL_39:
    v55 = v26;

    v25 = v55;
    goto LABEL_17;
  }

  if (!v26)
  {
    goto LABEL_33;
  }

  v55 = v26;
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v31 = sub_100770EEC();

  if (v31)
  {
    goto LABEL_40;
  }

LABEL_16:
  v25 = v57;
LABEL_17:
}

id sub_1003C9CA4(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

void sub_1003C9D4C(void *a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  sub_1003C7FB8();
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (!a1 || v3 != v5)
  {
    sub_1003C9E04();
  }
}

void sub_1003C9E04()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView);
  v2 = [v1 traitCollection];
  [v2 userInterfaceStyle];

  sub_10076FF9C();
  v3 = sub_10076FF6C();

  v4 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel] layer];
  [v4 setCompositingFilter:v3];

  v5 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView;
  v6 = [*(*&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v6 setCompositingFilter:v3];

  v7 = [*(*(*&v1[v5] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel) layer];
  [v7 setCompositingFilter:v3];

  v8 = [*(*&v1[v5] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel) layer];
  [v8 setCompositingFilter:v3];
}

BOOL sub_1003CA064(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v37 - v8;
  v10 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v10)
  {
    sub_100016F40(0, &unk_10094F000, UIGestureRecognizer_ptr);
    v11 = a1;
    v12 = v10;
    v13 = sub_100770EEC();

    if (v13)
    {
      v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView];
      [a2 locationInView:v14];
      v16 = v15;
      v18 = v17;
      [v14 bounds];
      v38.x = v16;
      v38.y = v18;
      if (CGRectContainsPoint(v41, v38))
      {
        return 0;
      }

      [a2 locationInView:v3];
      v20 = v19;
      v22 = v21;
      v23 = [v3 hitTest:0 withEvent:?];
      [v3 bounds];
      v39.x = v20;
      v39.y = v22;
      if (CGRectContainsPoint(v42, v39))
      {
        if (!v23 || (objc_opt_self(), v24 = swift_dynamicCastObjCClass(), v23, !v24))
        {
          v25 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_clickAction;
          swift_beginAccess();
          sub_1003A683C(&v3[v25], v9);
          v26 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
          v27 = (*(*(v26 - 8) + 48))(v9, 1, v26) != 1;
          sub_10000CFBC(v9, &qword_100952650, &unk_10079B720);
          return v27;
        }

        return 0;
      }

LABEL_12:

      return 0;
    }
  }

  [a2 locationInView:{v3, v7}];
  v30 = v29;
  v32 = v31;
  v23 = [v3 hitTest:0 withEvent:?];
  [v3 bounds];
  v40.x = v30;
  v40.y = v32;
  if (!CGRectContainsPoint(v43, v40))
  {
    goto LABEL_12;
  }

  if (v23)
  {
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v33 = v23;
    v34 = v3;
    v35 = sub_100770EEC();

    if (v35)
    {

      return 0;
    }

    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();

    if (v36)
    {
      return 0;
    }
  }

  return *&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction] != 0;
}

void sub_1003CA4F4(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    sub_1001D92E0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003CA600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10075FB6C();
  sub_10075FD2C();
  sub_1003CB0E0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100760BFC();
  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView);
  v5 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView;
  v6 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
  sub_10075FB6C();

  v7 = *(v4 + v5);
  sub_100760BFC();
}

void sub_1003CA71C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView);
  if (v1)
  {
    v2 = v1;
    sub_1004B1A0C();
  }
}

double sub_1003CA7E4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView;
  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_cardContainerView) bounds];
  v4 = v3 * 0.5;
  [*(v1 + v2) bounds];
  return v4;
}

void sub_1003CA848(uint64_t a1, uint64_t a2)
{
  v4 = sub_100763ADC();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v55 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076D39C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076BEDC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v51 - v18;
  sub_10000A570(a1, v60);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_100760D5C();
  if (swift_dynamicCast())
  {
    v51[1] = v8;
    v52 = v14;
    v20 = v59;
    v21 = sub_100760D2C();
    v53 = v20;
    v54 = a2;
    if (v21)
    {
      sub_10076BEEC();
      sub_10076BE8C();
      sub_1003CB0E0(&qword_1009441E0, &type metadata accessor for Artwork.Crop, &protocol conformance descriptor for Artwork.Crop);
      v22 = sub_10076FF1C();
      v23 = *(v52 + 8);
      v23(v16, v13);
      if (v22)
      {
        v51[0] = 5;
      }

      else
      {
        v51[0] = sub_10076BE9C();
      }

      v23(v19, v13);
      v24 = v58;
      v25 = [v58 contentView];
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      sub_10076422C();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      if (qword_100940330 != -1)
      {
        swift_once();
      }

      v34 = sub_1007640EC();
      sub_10000A61C(v34, qword_10099F660);
      sub_1007640DC();
      v61.origin.x = v27;
      v61.origin.y = v29;
      v61.size.width = v31;
      v61.size.height = v33;
      CGRectGetWidth(v61);
      v62.origin.x = v27;
      v62.origin.y = v29;
      v62.size.width = v31;
      v62.size.height = v33;
      CGRectGetWidth(v62);
      sub_10076D36C();
      (*(v10 + 8))(v12, v9);
      v35 = v51[0];
      sub_10076BFCC();
      v36 = *&v24[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_artworkView];
      sub_10076BF7C();
      sub_10075FCCC();
      [v36 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();
      [v36 setContentMode:v35];
      sub_10075FD2C();
      sub_1003CB0E0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100760B8C();
    }

    if (sub_100760D1C())
    {
      v37 = sub_10076BB9C();

      if (v37)
      {
        v38 = *&v58[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView];
        v39 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView);
        v40 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
        swift_beginAccess();
        v41 = v56;
        v42 = v39 + v40;
        v43 = v55;
        v44 = v57;
        (*(v56 + 16))(v55, v42, v57);
        sub_1007639AC();
        (*(v41 + 8))(v43, v44);
        sub_10076BEEC();
        sub_10076BE9C();
        v58 = *(v52 + 8);
        (v58)(v16, v13);
        sub_10076BFCC();
        v45 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView;
        v46 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
        sub_10076BF7C();
        sub_10075FCCC();
        [v46 setContentMode:sub_10076BDBC()];
        sub_100764ADC();
        sub_10075FD0C();
        if (!sub_10076BE1C())
        {
          sub_100016F40(0, &qword_100942F10, UIColor_ptr);
          sub_100770D5C();
        }

        sub_10075FB8C();

        v47 = *(v38 + v45);
        sub_10076BEEC();
        v48 = sub_10076BE9C();
        (v58)(v16, v13);
        [v47 setContentMode:v48];

        v49 = *(v38 + v45);
        sub_10075FD2C();
        sub_1003CB0E0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        v50 = v49;
        sub_100760B8C();
      }
    }
  }
}

uint64_t sub_1003CB018()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1003CB05C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003CB078()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1003CB0B0()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *(*(v0 + 24) + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer);
    if (v1)
    {
      [v1 setEnabled:1];
    }
  }
}

uint64_t sub_1003CB0E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003CB128()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_avatarShowcase) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer) = 0;
  v5 = v0 + OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_initialLongPressLocation;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_clickAction;
  v7 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  sub_10077156C();
  __break(1u);
}

void *sub_1003CB30C()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E6BC();
  sub_1003CB5CC(&qword_100942D10, &type metadata accessor for InAppPurchaseShowcase, &protocol conformance descriptor for InAppPurchaseShowcase);
  result = sub_10076332C();
  v9 = v17;
  if (v17)
  {
    v10 = sub_100630CB4();
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    v12 = v11;
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    type metadata accessor for InAppPurchaseShowcaseLockupView();
    sub_100449358(v9, v10, v12, v14);
    if (qword_10093F450 != -1)
    {
      swift_once();
    }

    v15 = sub_10076D9AC();
    sub_10000A61C(v15, qword_1009424A0);
    sub_10076D17C();
    sub_10076D40C();
    swift_unknownObjectRelease();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_1003CB5CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003CB618(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v58 = sub_10076C2DC();
  v62 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v61 = &v45 - v17;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v18 = *(sub_10076C20C() - 8);
  v59 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v51 = v20;
  *(v20 + 16) = xmmword_1007844F0;
  v21 = v20 + v19;
  v22 = a1;
  v63 = a1;
  sub_10001E290();
  sub_10076C29C();
  v63 = 15.0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v56 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v28 = *(v62 + 104);
  v62 += 104;
  v57 = v28;
  v29 = v58;
  (v28)(v6);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  v60 = v15;
  v54 = v12;
  sub_10076C1CC();
  v63 = a1;
  sub_10076C29C();
  v63 = 15.0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v33 = v56;
  v57(v6, v56, v29);
  LOBYTE(v63) = 0;
  v52 = v4;
  sub_10076C29C();
  v63 = 0.0;
  v55 = v9;
  sub_10076C29C();
  v34 = v59;
  v53 = v21;
  top = UIEdgeInsetsZero.top;
  v49 = left;
  v50 = bottom;
  sub_10076C1CC();
  v46 = 2 * v34;
  v63 = v22;
  sub_10076C29C();
  v63 = 20.0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  v47 = vdupq_n_s64(0x4041000000000000uLL);
  v35 = v6;
  *v6 = v47;
  v36 = v33;
  v37 = v33;
  v38 = v57;
  v39 = v58;
  v57(v6, v37, v58);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  v40 = v46;
  v41 = v35;
  sub_10076C1CC();
  v42 = v59;
  v46 = v40 + v59;
  v63 = v22;
  sub_10076C29C();
  v63 = 20.0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  *v41 = v47;
  v38(v41, v36, v39);
  sub_1007704BC();
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  sub_10076C1CC();
  v46 = 4 * v42;
  v63 = v22;
  sub_10076C29C();
  v63 = 24.0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  v47 = vdupq_n_s64(0x404A000000000000uLL);
  *v41 = v47;
  v43 = v58;
  v38(v41, v56, v58);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  sub_10076C1CC();
  v63 = v22;
  sub_10076C29C();
  v63 = 24.0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  *v41 = v47;
  v57(v41, v56, v43);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0.0;
  sub_10076C29C();
  sub_10076C1CC();
  return v51;
}

uint64_t sub_1003CBFEC@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v77 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v77);
  v2 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100763BBC();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100949710, "fc\a");
  __chkstk_darwin(v5 - 8);
  v78 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v59 - v8;
  v9 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v9 - 8);
  v69 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v65 = &v59 - v12;
  v13 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v62 = *(v13 - 8);
  v63 = v13;
  __chkstk_darwin(v13);
  v66 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v64 = &v59 - v16;
  __chkstk_darwin(v17);
  v75 = &v59 - v18;
  v19 = sub_10000A5D4(&unk_10094BB80, &qword_100791CF0);
  __chkstk_darwin(v19 - 8);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v74 = &v59 - v23;
  v24 = sub_10076B5BC();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v59 - v30;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v29 + 8))(v31, v28);
  v67 = v27;
  v68 = v25;
  v32 = *(v25 + 88);
  v70 = v24;
  v33 = v32(v27, v24);
  if (v33 == enum case for Shelf.ContentType.paragraph(_:) || v33 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if (qword_100940898 != -1)
    {
      swift_once();
    }

    v39 = sub_10000A61C(v77, qword_1009A0848);
    return sub_100199C28(v39, v79, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    v34 = sub_10076034C();
    v35 = *(v34 - 8);
    v36 = v74;
    (*(v35 + 56))(v74, 1, 1, v34);
    v37 = sub_100763BAC();
    v59 = *(v37 - 8);
    v60 = v37;
    (*(v59 + 56))(v76, 1, 1);
    sub_100016E2C(v36, v21, &unk_10094BB80, &qword_100791CF0);
    if ((*(v35 + 48))(v21, 1, v34) == 1)
    {
      sub_10000CFBC(v21, &unk_10094BB80, &qword_100791CF0);
      v38 = 0;
    }

    else
    {
      v38 = sub_1007602EC();
      (*(v35 + 8))(v21, v34);
    }

    v41 = v75;
    v61 = v2;
    sub_100286F40(v38, v75);

    if (qword_10093FC50 != -1)
    {
      swift_once();
    }

    v42 = v63;
    v43 = sub_10000A61C(v63, qword_10099DFA0);
    v44 = v65;
    (*(v62 + 56))(v65, 1, 1, v42);
    v45 = v64;
    sub_100199C28(v41, v64, type metadata accessor for TitleHeaderView.TextConfiguration);
    v46 = v66;
    sub_100199C28(v43, v66, type metadata accessor for TitleHeaderView.TextConfiguration);
    v47 = v69;
    sub_100016E2C(v44, v69, &qword_100949718, &unk_10078CE10);
    v48 = v76;
    sub_100016E2C(v76, v78, &qword_100949710, "fc\a");
    v49 = v71;
    v50 = v72;
    v51 = v73;
    (*(v72 + 104))(v71, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v73);
    sub_1000325F0();
    v63 = sub_100770CDC();
    sub_10000CFBC(v48, &qword_100949710, "fc\a");
    sub_10000CFBC(v44, &qword_100949718, &unk_10078CE10);
    sub_10011BAB4(v75, v52);
    sub_10000CFBC(v74, &unk_10094BB80, &qword_100791CF0);
    v53 = v77;
    v54 = v77[8];
    v55 = v61;
    sub_10011BB10(v45, v61, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10011BB10(v46, v55 + v53[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10013B0E8(v47, v55 + v53[6]);
    *(v55 + v53[7]) = 0;
    *(v55 + v54) = 0;
    *(v55 + v53[9]) = 0;
    *(v55 + v53[14]) = 0x4030000000000000;
    *(v55 + v53[12]) = 0;
    *(v55 + v53[13]) = v63;
    v56 = v78;
    (*(v50 + 32))(v55 + v53[11], v49, v51);
    v58 = v59;
    v57 = v60;
    if ((*(v59 + 48))(v56, 1, v60) == 1)
    {
      sub_10000CFBC(v56, &qword_100949710, "fc\a");
      (*(v58 + 104))(v55 + v53[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v57);
    }

    else
    {
      (*(v58 + 32))(v55 + v53[10], v56, v57);
    }

    sub_10011BB10(v55, v79, type metadata accessor for TitleHeaderView.Style);
    return (*(v68 + 8))(v67, v70);
  }
}

char *sub_1003CC978(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_100766FCC();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10076702C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100766F4C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView(0);
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_platterView;
  type metadata accessor for CarouselItemModulePlatterView(0);
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  *&v4[v20] = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v14);
  (*(v11 + 104))(v13, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v10);
  sub_100766FBC();
  sub_100766F5C();
  v21 = &v4[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v27 = [v26 layer];
  [v27 setAllowsGroupOpacity:0];

  v28 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  [*&v26[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer] setEnabled:0];
  [*&v26[v28] addTarget:v26 action:"handleSelection:"];
  v29 = *&v26[v28];
  [v29 setDelegate:v26];

  [v26 addGestureRecognizer:*&v26[v28]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_headerView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_platterView]];

  return v26;
}

uint64_t sub_1003CCDB0@<X0>(uint64_t *a1@<X8>)
{
  v23 = a1;
  v3 = sub_10076D65C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = sub_10076D58C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D55C();
  *(swift_allocObject() + 16) = v2;
  v14 = v2;
  sub_10076D63C();
  v15 = *&v14[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_headerView];
  v26 = type metadata accessor for CarouselItemModuleHeaderView(0);
  v27 = sub_1003CDBF8(&qword_100955DD0, type metadata accessor for CarouselItemModuleHeaderView, &unk_1007AC1F0);
  v25[0] = v15;
  v16 = v15;
  sub_10076D64C();
  v17 = *(v4 + 8);
  v17(v6, v3);
  sub_10000CD74(v25);
  v18 = *&v14[OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_platterView];
  v24[3] = type metadata accessor for CarouselItemModulePlatterView(0);
  v24[4] = sub_1003CDBF8(&qword_100955DD8, type metadata accessor for CarouselItemModulePlatterView, &unk_100796CB8);
  v24[0] = v18;
  v26 = v3;
  v27 = &protocol witness table for VerticalStack;
  sub_10000DB7C(v25);
  v19 = v18;
  sub_10076D64C();
  v17(v9, v3);
  sub_10000CD74(v24);
  v20 = v23;
  v23[3] = v10;
  v20[4] = &protocol witness table for DisjointStack;
  sub_10000DB7C(v20);
  sub_10076D57C();
  (*(v11 + 8))(v13, v10);
  return sub_10000CD74(v25);
}

uint64_t sub_1003CD1E8()
{
  v0 = sub_10076D54C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3[3] = sub_10076D67C();
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  (*(v1 + 104))(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  return sub_10076D4FC();
}

uint64_t sub_1003CD2DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076702C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076703C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_100766FEC();
  (*(v8 + 8))(v10, v7);
  sub_10076700C();
  (*(v4 + 8))(v6, v3);
  return sub_10076D5EC();
}

uint64_t type metadata accessor for CarouselItemCollectionModuleOverlay(uint64_t a1)
{
  result = qword_100955DB8;
  if (!qword_100955DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003CD6B8(uint64_t a1)
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

double sub_1003CD764(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10001CE50(a1, a2);
  sub_10001CE50(a1, a2);
  v8 = sub_1000167E0(v6, v7);
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer);
  if (a1)
  {
    v8 = sub_1000167E0(a1, a2);
  }

  [v9 setEnabled:{a1 != 0, v8}];

  return sub_1000167E0(a1, a2);
}

double sub_1003CD818(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10076705C();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  sub_1005A28C4(v5, a3);

  return result;
}

id sub_1003CD898()
{
  v1 = v0;
  v2 = sub_10076703C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076704C();
  v6 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v3 + 40))(&v1[v6], v5, v2);
  swift_endAccess();
  sub_10023FB60();
  sub_10076704C();
  v7 = sub_1007670AC();
  v9 = v8;
  v10 = sub_10076706C();
  sub_100588A20(v5, v7, v9, v10, v11);

  (*(v3 + 8))(v5, v2);
  return [v1 setNeedsLayout];
}

double sub_1003CDA40()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_platterView) + OBJC_IVAR____TtC20ProductPageExtension29CarouselItemModulePlatterView_lockupCollectionView);
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
      sub_1003CDBF8(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
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

uint64_t sub_1003CDBB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003CDBF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003CDC40(__n128 a1)
{
  v2 = sub_100766FCC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10076702C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766F4C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView(0);
  *(v1 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_platterView;
  type metadata accessor for CarouselItemModulePlatterView(0);
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  *(v1 + v13) = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v8 + 104))(v10, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  (*(v4 + 104))(v6, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v3);
  sub_100766FBC();
  sub_100766F5C();
  v14 = (v1 + OBJC_IVAR____TtC20ProductPageExtension35CarouselItemCollectionModuleOverlay_selectionHandler);
  *v14 = 0;
  v14[1] = 0;
  sub_10077156C();
  __break(1u);
}

double sub_1003CDED4()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_10099F728);
  sub_10000A61C(v0, qword_10099F728);
  sub_10076D3AC();
  return result;
}

uint64_t sub_1003CDF28()
{
  v0 = sub_10000A5D4(&qword_100955E28, qword_1007A0F08);
  __chkstk_darwin(v0 - 8);
  v20 = v19 - v1;
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D39C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10075FD8C();
  sub_10000DB18(v10, qword_10099F740);
  v19[2] = sub_10000A61C(v10, qword_10099F740);
  if (qword_100940348 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v6, qword_10099F728);
  (*(v7 + 16))(v9, v11, v6);
  v19[1] = v9;
  if (qword_100940FF0 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v19[0] = sub_10000A61C(v12, qword_1009A1DC8);
  v13 = *(*(v12 - 8) + 16);
  v13(v5, v19[0], v12);
  v14 = enum case for FontSource.useCase(_:);
  v15 = *(v3 + 104);
  v15(v5, enum case for FontSource.useCase(_:), v2);
  v22[3] = sub_10076D9AC();
  v22[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v22);
  v21[3] = v2;
  v21[4] = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v21);
  (*(v3 + 16))(v16, v5, v2);
  sub_10076D9BC();
  (*(v3 + 8))(v5, v2);
  v17 = v20;
  v13(v20, v19[0], v12);
  v15(v17, v14, v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  return sub_10075FD7C();
}

uint64_t sub_1003CE2CC()
{
  v0 = sub_10000A5D4(&qword_100955E28, qword_1007A0F08);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = sub_10076D39C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075FD8C();
  sub_10000DB18(v7, qword_10099F758);
  sub_10000A61C(v7, qword_10099F758);
  if (qword_100940348 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v3, qword_10099F728);
  (*(v4 + 16))(v6, v8, v3);
  v9 = sub_10076D1AC();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_10075FD7C();
}

char *sub_1003CE4B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_itemLayoutContext;
  v12 = sub_10076341C();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabel] = 0;
  v13 = &v5[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
  sub_10075FD2C();
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_artworkView] = sub_10075FB4C();
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v16 = [v14 contentView];
  [v16 addSubview:*&v14[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_artworkView]];

  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100783DD0;
  *(v17 + 32) = sub_10076E3FC();
  *(v17 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v14;
}

id sub_1003CE7AC()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v30 - v8;
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText + 8];
  if (v10)
  {
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText] & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabel;
      v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabel];
      v14 = &off_100911000;
      if (v13)
      {
      }

      else
      {
        v17 = qword_100940FF0;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = sub_10076D3DC();
        v19 = sub_10000A61C(v18, qword_1009A1DC8);
        v20 = *(v18 - 8);
        (*(v20 + 16))(v9, v19, v18);
        (*(v20 + 56))(v9, 0, 1, v18);
        (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
        v21 = objc_allocWithZone(sub_1007626BC());
        v22 = sub_1007626AC();
        v23 = *&v1[v12];
        if (v23)
        {
          [v23 removeFromSuperview];
          v24 = *&v1[v12];
        }

        else
        {
          v24 = 0;
        }

        v14 = &off_100911000;
        *&v1[v12] = v22;
        v25 = v22;

        v26 = [v1 contentView];
        [v26 addSubview:v25];

        [v1 setNeedsLayout];
        v13 = *&v1[v12];
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      [v13 setHidden:0];
      v27 = *&v1[v12];
      if (v27)
      {
        v28 = v27;
        v29 = sub_10076FF6C();

        [v28 setText:v29];

        return [v1 v14[194]];
      }

LABEL_20:

      return [v1 v14[194]];
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabel];
  if (v15)
  {
    [v15 setHidden:{1, v7}];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1003CEB60()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075FD8C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v33 = sub_10075FDAC();
  v13 = *(v33 - 8);
  *&v14 = __chkstk_darwin(v33).n128_u64[0];
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "layoutSubviews", v14);
  v17 = OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabel;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabel];
  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = v18;
  if ([v19 isHidden])
  {

LABEL_4:
    if (qword_100940358 != -1)
    {
      swift_once();
    }

    v20 = sub_10000A61C(v6, qword_10099F758);
    (*(v7 + 16))(v9, v20, v6);
    v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_artworkView];
    v40 = sub_10075FD2C();
    v41 = &protocol witness table for UIView;
    v39 = v21;
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v22 = v21;
    sub_10075FD9C();
    goto LABEL_13;
  }

  if (qword_100940350 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v6, qword_10099F740);
  (*(v7 + 16))(v12, v23, v6);
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_artworkView];
  v40 = sub_10075FD2C();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = *&v1[v17];
  if (v25)
  {
    v26 = sub_1007626BC();
    v27 = &protocol witness table for UILabel;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    *(&v36 + 1) = 0;
    *&v37 = 0;
  }

  *&v36 = v25;
  *(&v37 + 1) = v26;
  v38 = v27;
  v28 = v24;
  v29 = v25;
  sub_10075FD9C();

LABEL_13:
  v30 = [v1 contentView];
  sub_1000ACA5C();
  sub_10076422C();

  sub_10075FD6C();
  (*(v34 + 8))(v5, v35);
  return (*(v13 + 8))(v16, v33);
}

uint64_t type metadata accessor for BrickCollectionViewCell(uint64_t a1)
{
  result = qword_100955E10;
  if (!qword_100955E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003CF108(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1003CF1C8()
{
  v1 = v0;
  if (qword_100940348 != -1)
  {
    swift_once();
  }

  v2 = sub_10076D39C();
  sub_10000A61C(v2, qword_10099F728);
  v3 = [v0 contentView];
  sub_1000ACA5C();
  sub_10076422C();

  sub_10076D36C();
  v4 = [v1 contentView];
  sub_10076422C();
  v6 = v5;

  return v6;
}

uint64_t sub_1003CF2C0(uint64_t a1, uint64_t a2)
{
  sub_10075FB6C();
  sub_10075FD2C();
  sub_1003CF3B0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_1003CF358(uint64_t a1)
{
  result = sub_1003CF3B0(&qword_100955E20, type metadata accessor for BrickCollectionViewCell, &unk_1007A0EB8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003CF3B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003CF450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076F08C();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076F0CC();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100085204();
  v12 = sub_10077068C();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_1003CFA80;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_100893F78;
  v14 = _Block_copy(aBlock);

  swift_errorRetain();

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003CFA8C(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_1003CF728(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076F50C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100764D5C();
  v7(a2);

  if (a2)
  {
    swift_errorRetain();
    sub_10076FCAC();
  }

  else
  {
    (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
    sub_10076FCBC();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1003CF894(uint64_t a1)
{
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v2 = sub_10076FCEC();
  v3 = objc_opt_self();
  sub_100764D6C();
  v4 = sub_10076FF6C();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v8[4] = sub_1003CFA18;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000DA39C;
  v8[3] = &unk_100893F28;
  v6 = _Block_copy(v8);

  [v3 localApproveRequestWithItemIdentifier:v4 completion:v6];
  _Block_release(v6);

  return v2;
}

uint64_t sub_1003CF9D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1003CFA20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003CFA38()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003CFA8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003CFB30(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D9AC();
  sub_10000DB18(v8, a3);
  sub_10000A61C(v8, a3);
  if (qword_100940360 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_100955E38);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_10076D9BC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003CFD38()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_100955E98);
  sub_10000A61C(v4, qword_100955E98);
  if (qword_100940378 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_100955E80);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003CFF0C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_100955EB0);
  sub_10000A61C(v4, qword_100955EB0);
  *v3 = UIFontTextStyleSubheadline;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleSubheadline;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

id sub_1003D00A4(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AccountDetailCollectionViewCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1003D00FC(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  sub_1003D016C(a3);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for AccountDetailCollectionViewCell(0);
  objc_msgSendSuper2(&v9, *a4, a3);
  sub_1003D0238(a5);
}

id sub_1003D016C(char a1)
{
  v2 = v1;
  v4 = [v2 contentView];
  if (a1)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v5 = sub_100770D7C();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

id sub_1003D0238(SEL *a1)
{
  v2 = v1;
  v3 = [v1 *a1];
  v4 = [v2 contentView];
  if (v3)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v5 = sub_100770D7C();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

char *sub_1003D0310(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076771C();
  v98 = *(v10 - 8);
  __chkstk_darwin(v10);
  *&v97 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v89 - v13;
  v4[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageMarginRight];
  *v15 = 0;
  v15[8] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryView] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessoryView] = 0;
  v16 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessory;
  v17 = type metadata accessor for Accessory(0);
  v18 = *(*(v17 - 8) + 56);
  v18(&v5[v16], 1, 1, v17);
  v18(&v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_secondaryAccessory], 1, 1, v17);
  v19 = &v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryMargin];
  *v19 = 0;
  v19[8] = 1;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorView;
  v21 = type metadata accessor for SeparatorView(0);
  *&v5[v20] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  v23 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorView;
  *&v5[v23] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  v25 = &v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_accessoryAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_backgroundSelectionView;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_isSelectable] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_disabled] = 0;
  v27 = &v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_selectionHandler];
  *v27 = 0;
  v27[1] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100940360 != -1)
  {
    swift_once();
  }

  v28 = sub_10076D3DC();
  v29 = sub_10000A61C(v28, qword_100955E38);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v94 = v29;
  v96 = v31;
  v32 = v30 + 16;
  (v31)(v14);
  v34 = *(v30 + 56);
  v33 = v30 + 56;
  v93 = v34;
  v34(v14, 0, 1, v28);
  v35 = *(v98 + 13);
  v36 = enum case for DirectionalTextAlignment.none(_:);
  v98 = (v98 + 104);
  v92 = v35;
  (v35)(v97);
  v37 = sub_1007626BC();
  v38 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940378 != -1)
  {
    swift_once();
  }

  v39 = sub_10000A61C(v28, qword_100955E80);
  v91 = v32;
  v96(v14, v39, v28);
  v40 = v93;
  v93(v14, 0, 1, v28);
  v41 = v97;
  v42 = v10;
  v89 = v33;
  v90 = v10;
  v43 = v92;
  v92(v97, v36, v42);
  v44 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel] = sub_1007626AC();
  v96(v14, v94, v28);
  v40(v14, 0, 1, v28);
  v43(v41, v36, v90);
  v45 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel] = sub_1007626AC();
  v46 = type metadata accessor for AccountDetailCollectionViewCell(0);
  v100.receiver = v5;
  v100.super_class = v46;
  v98 = v46;
  v47 = objc_msgSendSuper2(&v100, "initWithFrame:", a1, a2, a3, a4);
  sub_1003D3078();
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v48 = [v47 contentView];
  v49 = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v50 = sub_100770D7C();
  [v48 setBackgroundColor:v50];

  v51 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageView;
  v52 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_imageView];
  sub_100770CEC();
  sub_1007638DC();

  v53 = *&v47[v51];
  v54 = [v47 traitCollection];
  sub_10076E20C();

  sub_1007638EC();
  v55 = *&v47[v51];
  v56 = [v47 backgroundColor];

  sub_10075FB8C();
  [*&v47[v51] setContentMode:1];
  v57 = [v47 contentView];
  [v57 addSubview:*&v47[v51]];

  v58 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel;
  [*&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_titleLabel] setLineBreakMode:4];
  v59 = [v47 contentView];
  [v59 addSubview:*&v47[v58]];

  v60 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel;
  v61 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_subtitleLabel];
  *&v97 = v49;
  v62 = sub_100770D1C();
  [v61 setTextColor:v62];

  v63 = [v47 contentView];
  [v63 addSubview:*&v47[v60]];

  v64 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel;
  v65 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_detailLabel];
  v66 = sub_100770D1C();
  [v65 setTextColor:v66];

  v67 = [v47 contentView];
  [v67 addSubview:*&v47[v64]];

  v68 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorView;
  v69 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_topSeparatorView];
  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 separatorColor];
  v73 = *&v71[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor];
  *&v71[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor] = v72;
  v74 = v72;

  [*&v71[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView] setBackgroundColor:v74];
  [*&v47[v68] setHidden:1];
  v75 = [v47 contentView];
  [v75 addSubview:*&v47[v68]];

  v76 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorView;
  v77 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_bottomSeparatorView];
  v78 = [v70 separatorColor];
  v79 = *&v77[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor];
  *&v77[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor] = v78;
  v80 = v78;

  [*&v77[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView] setBackgroundColor:v80];
  [*&v47[v76] setHidden:1];
  v81 = [v47 contentView];
  [v81 addSubview:*&v47[v76]];

  v82 = OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_backgroundSelectionView;
  v83 = *&v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_backgroundSelectionView];
  v84 = sub_100770DCC();
  [v83 setBackgroundColor:v84];

  [*&v47[v82] setOpaque:0];
  [*&v47[v82] setUserInteractionEnabled:0];
  if (v47[OBJC_IVAR____TtC20ProductPageExtension31AccountDetailCollectionViewCell_isSelectable] == 1)
  {
    [v47 setSelectedBackgroundView:*&v47[v82]];
  }

  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v85 = swift_allocObject();
  v97 = xmmword_100783DD0;
  *(v85 + 16) = xmmword_100783DD0;
  *(v85 + 32) = sub_10076E88C();
  *(v85 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v99[3] = v98;
  v99[0] = v47;
  v86 = v47;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v99);
  v87 = swift_allocObject();
  *(v87 + 16) = v97;
  *(v87 + 32) = sub_10076E3FC();
  *(v87 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();
  swift_unknownObjectRelease();

  return v86;
}