uint64_t sub_100399184()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075E93C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075E95C();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultContentView(0);
  v63.receiver = v1;
  v63.super_class = v10;
  objc_msgSendSuper2(&v63, "layoutSubviews");
  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_metrics], v4);
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_offerButton];
  v35[2] = v10;
  sub_10076422C();
  v12 = &v11[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v11[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v13 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v11[v13], v60);
    sub_10000CF78(v60, v61);
    sub_100767A2C();
    v15 = v14;
    v17 = v16;
    sub_10000CD74(v60);
    *v12 = v15;
    *(v12 + 1) = v17;
    v12[16] = 0;
  }

  sub_10075E92C();
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel];
  v19 = sub_1007626BC();
  v35[1] = v7;
  v61 = v19;
  v62 = &protocol witness table for UILabel;
  v60[0] = v18;
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_titleLabel];
  v58 = v19;
  v59 = &protocol witness table for UILabel;
  v57 = v20;
  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_subtitleLabel];
  v55 = v19;
  v56 = &protocol witness table for UILabel;
  v54 = v21;
  v52 = type metadata accessor for OfferButton();
  v53 = &protocol witness table for UIView;
  v51 = v11;
  v35[0] = v11;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_iconView];
  v49 = type metadata accessor for InAppPurchaseView(0);
  v50 = &protocol witness table for UIView;
  v47 = &protocol witness table for UILabel;
  v48 = v22;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppDescription];
  v46 = v19;
  v45 = v23;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_body];
  v43 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v44 = &protocol witness table for UIView;
  v42 = v24;
  v25 = v18;
  v26 = v20;
  v27 = v21;
  v28 = v35[0];
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v36;
  sub_10075E94C();
  sub_10076422C();
  v33 = v39;
  sub_10075E8FC();
  (*(v40 + 8))(v33, v41);
  return (*(v37 + 8))(v32, v38);
}

id sub_1003995E0(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultContentView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100940238 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    sub_10000A61C(v6, qword_100954EA0);
    v7 = v1;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

double sub_100399780(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = sub_10075E57C();
  v72 = *(v66 - 8);
  __chkstk_darwin(v66);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  v10 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v58 - v11;
  v71 = sub_100768FEC();
  v67 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v70 = *(v14 - 8);
  __chkstk_darwin(v14);
  v69 = (&v58 - v15);
  v16 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  sub_10075E7FC();
  sub_10039ABE0(&qword_1009486F8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (v73)
  {
    v64 = v9;
    v65 = v6;
    v20 = sub_10075E7EC();

    sub_100760C4C();
    sub_10076F64C();
    sub_10076FC1C();
    v63 = v73;

    v21 = v20;
    sub_10076BB6C();
    v23 = v22;
    v24 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_titleLabel];
    v61 = v14;
    v62 = a2;
    v60 = v12;
    if (v22)
    {
      v25 = sub_10076FF6C();
    }

    else
    {
      v25 = 0;
    }

    [v24 setText:v25];

    [v24 setHidden:v23 == 0];
    [v3 setNeedsLayout];
    v26 = sub_10075E63C();
    v27 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel];
    v28 = "inAppDescription";
    if (v26)
    {
      v28 = "chase.Subtitle.Format";
      v29._countAndFlagsBits = 0xD00000000000003ALL;
    }

    else
    {
      v29._countAndFlagsBits = 0xD00000000000002DLL;
    }

    v29._object = (v28 | 0x8000000000000000);
    v77._countAndFlagsBits = 0;
    v77._object = 0xE000000000000000;
    sub_1007622EC(v29, v77);
    v30 = sub_10076FF6C();

    [v27 setText:v30];

    sub_10075E66C();
    v31 = sub_10076BB6C();
    v33 = v32;

    if (v33)
    {
      v76._countAndFlagsBits = 0xD000000000000035;
      v76._object = 0x80000001007E22A0;
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      sub_1007622EC(v76, v78);
      sub_10000A5D4(&qword_100966CF0, qword_100795350);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_100783DD0;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_1000A9040();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      sub_10076FFCC();

      v35 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_subtitleLabel];

      v36 = sub_10076FF6C();

      [v35 setText:v36];

      [v35 setHidden:0];
    }

    else
    {
      v37 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_subtitleLabel];
      [v37 setText:0];
      [v37 setHidden:1];
    }

    v38 = v60;
    [v3 setNeedsLayout];
    sub_10075E64C();
    v40 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppDescription];
    if (v39)
    {
      v41 = sub_10076FF6C();
      [v40 setText:v41];

      [v40 setHidden:0];
    }

    else
    {
      [*&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppDescription] setText:0];
      [v40 setHidden:1];
    }

    [v3 setNeedsLayout];
    v42 = sub_10076BB3C();
    v43 = sub_10076BA2C();
    v59 = v21;

    v44 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    (*(*(v44 - 8) + 56))(v18, 1, 1, v44);
    v45 = v67;
    v46 = v71;
    (*(v67 + 104))(v68, enum case for OfferButtonSubtitlePosition.below(_:), v71);
    (*(v45 + 56))(v38, 1, 1, v46);
    sub_10039ABE0(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v47 = v69;
    sub_10076759C();
    sub_1001F12C8(v42, v43, 0, v18, v47, v62, 0, 0);

    v70[1](v47, v61);
    sub_100026190(v18);
    v48 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_iconView];
    v74.value.super.isa = 0;
    v74.is_nil = 0;
    sub_10075FCEC(v74, v49);
    v75.value.super.isa = 0;
    v75.is_nil = 0;
    sub_10075FCEC(v75, v50);
    sub_10075FD2C();
    sub_10039ABE0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v51 = v63;
    sub_100760BFC();
    sub_100760BFC();
    v71 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_bodyBackgroundColor];
    v52 = v64;
    sub_10075E65C();
    v53 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    v54 = v72;
    v55 = v66;
    (*(v72 + 24))(&v48[v53], v52, v66);
    swift_endAccess();
    v69 = *(v54 + 16);
    v56 = v65;
    v69(v65, &v48[v53], v55);
    sub_1005B84F8(v56);
    v70 = v3;
    v57 = *(v54 + 8);
    v57(v56, v55);
    v57(v52, v55);
    [v48 setBackgroundColor:v71];
    sub_1006EC184(93.0, 93.0, v59, v48, v51);
    v69(v52, &v48[v53], v55);
    sub_1005B84F8(v52);
    v57(v52, v55);
    [v48 setNeedsLayout];
    [v70 setNeedsLayout];
  }

  return result;
}

id sub_10039A128()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultContentView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultContentView(uint64_t a1)
{
  result = qword_100954EF0;
  if (!qword_100954EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10039A2A0(uint64_t a1)
{
  result = sub_10075E93C();
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

double sub_10039A350(uint64_t a1, uint64_t a2)
{
  sub_10000A570(a1, v6);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10075E7FC();
  if (swift_dynamicCast())
  {
    v5 = sub_10075E7EC();

    sub_1006EC184(93.0, 93.0, v5, *(v2 + OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_iconView), a2);
  }

  return result;
}

uint64_t sub_10039A40C(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_10075FCEC(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_10075FCEC(v6, v3);
  sub_10075FD2C();
  sub_10039ABE0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100760BFC();
  return sub_100760BFC();
}

double sub_10039A4F8()
{
  sub_10075E7FC();
  sub_10039ABE0(&qword_1009486F8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (v3)
  {
    sub_10075E7EC();
    v1 = sub_1006EC764(93.0, 93.0);

    v2._rawValue = v1;
    sub_100760BAC(v2);
  }

  return result;
}

uint64_t sub_10039A618(uint64_t a1)
{
  *(a1 + 8) = sub_10039ABE0(&qword_100954F08, type metadata accessor for InAppPurchaseSearchResultContentView, &unk_10079EFA4);
  result = sub_10039ABE0(&qword_100954F10, type metadata accessor for InAppPurchaseSearchResultContentView, &unk_10079EFD4);
  *(a1 + 16) = result;
  return result;
}

double sub_10039A69C()
{
  v0 = sub_10076443C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = sub_10075E93C();
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076469C();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10076C38C();
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E7FC();
  sub_10039ABE0(&qword_1009486F8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (!v29)
  {
    return 0.0;
  }

  v25 = v11;
  sub_10075E7EC();

  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C32C();

  sub_10076BB6C();

  sub_10076BBEC();

  v14 = sub_100630CB4();
  sub_10076C2FC();
  sub_100770ACC();
  if (qword_100940928 != -1)
  {
    swift_once();
  }

  v15 = v28;
  v16 = sub_10000A61C(v28, qword_1009A09A0);
  v17 = v27;
  (*(v27 + 16))(v9, v16, v15);
  v18 = [v14 traitCollection];
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

  v21 = sub_10000A61C(v0, v19);
  (*(v1 + 16))(v3, v21, v0);

  (*(v1 + 32))(v6, v3, v0);
  sub_1007643EC();
  sub_10076441C();
  sub_10075E92C();
  sub_10075E90C();
  v20 = v22;

  swift_unknownObjectRelease();
  (*(v1 + 8))(v6, v0);
  (*(v17 + 8))(v9, v28);
  (*(v26 + 8))(v13, v25);
  return v20;
}

uint64_t sub_10039ABE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10039AC2C()
{
  result = qword_100954F18;
  if (!qword_100954F18)
  {
    type metadata accessor for UberHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954F18);
  }

  return result;
}

id sub_10039AC84()
{
  if (!*(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    result = *(v1 + qword_1009602D0);
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }
  }

  return [result image];
}

void sub_10039AD30(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
  v3 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v4 = *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v4)
  {
    v5 = [v4 layer];
    [v5 removeAllAnimations];

    v6 = *(*(v2 + v3) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v6)
    {
      [v6 setAlpha:1.0];
      v7 = *(*(v2 + v3) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      if (v7)
      {
        type metadata accessor for VideoView(0);
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          v9 = *(v8 + qword_1009602D0);
        }

        else
        {
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (!v10)
          {
            goto LABEL_9;
          }

          v9 = v10;
        }

        v11 = v7;
        [v9 setImage:a1];
      }
    }
  }

LABEL_9:
}

void sub_10039AE68(void *a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
  v5 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  if (!*(*(v4 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
  {
    goto LABEL_7;
  }

  type metadata accessor for VideoView(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *(v7 + qword_1009602D0);
  }

  else
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = [v8 image];
  if (!v9 || (v9, (a2 & 1) != 0))
  {
LABEL_7:
    v10 = *(*(v4 + v5) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v10)
    {
      type metadata accessor for VideoView(0);
      if (swift_dynamicCastClass())
      {
        v19 = v10;
        sub_1006D9024(a1, a1 == 0);
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v12 = v11;
          v13 = v10;
          [v12 setAlpha:0.0];
          [v12 setImage:a1];
          sub_10039B1D4();
          v14 = sub_10077089C();
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          aBlock[4] = sub_1000718A0;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10009AEDC;
          aBlock[3] = &unk_100892E40;
          v16 = _Block_copy(aBlock);
          v17 = v13;

          [v14 addAnimations:v16];
          _Block_release(v16);
          [v14 startAnimation];
        }
      }
    }

    return;
  }

  v18 = a1;

  sub_10039AD30(a1);
}

void (*sub_10039B120(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_10039AC84();
  return sub_10039B168;
}

void sub_10039B168(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_10039AD30(v2);
  }

  else
  {
    sub_10039AD30(*a1);
  }
}

unint64_t sub_10039B1D4()
{
  result = qword_100954F20;
  if (!qword_100954F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100954F20);
  }

  return result;
}

uint64_t sub_10039B220()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10039B258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10039B2CC(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v44 = sub_10000A5D4(&qword_100954F80, &unk_10079F1C8);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v35 - v3;
  v45 = sub_1007649CC();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  __chkstk_darwin(v5 - 8);
  v36 = &v35 - v6;
  v47 = sub_10000A5D4(&qword_100954F88, &qword_10079F1D8);
  v38 = *(v47 - 8);
  __chkstk_darwin(v47);
  v37 = &v35 - v7;
  v8 = sub_10000A5D4(&unk_100956700, &unk_10079F180);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = sub_10075F51C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v12 + 8))(v14, v11);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v10, 0, 1, v15);
    (*(v16 + 32))(v21, v10, v15);
    v24 = a1;
    sub_1007633DC();
    v25 = v37;
    sub_10076FDBC();
    v26 = v46;
    sub_10039C8C8();

    sub_10076FD8C();
    sub_1007649EC();

    (*(v16 + 16))(v18, v21, v15);
    v27 = v39;

    v28 = v41;
    v29 = sub_1007649AC();
    v36 = &v35;
    __chkstk_darwin(v29);
    *(&v35 - 4) = v28;
    *(&v35 - 3) = v26;
    *(&v35 - 2) = v24;
    __chkstk_darwin(v30);
    *(&v35 - 4) = sub_10039C920;
    *(&v35 - 3) = v31;
    *(&v35 - 2) = v27;
    *(&v35 - 1) = v26;
    sub_10000A5D4(&qword_100954F90, &qword_10079F1E0);
    sub_10039C938();
    v32 = v40;
    sub_10076EC9C();
    sub_10076ECFC();
    v33 = v44;
    v48[3] = v44;
    v48[4] = sub_100071820(&qword_100954FD0, &qword_100954F80, &unk_10079F1C8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10000DB7C(v48);
    sub_10076EC8C();
    (*(v42 + 8))(v32, v33);
    sub_1007707FC();
    (*(v38 + 8))(v25, v47);
    (*(v16 + 8))(v21, v15);
    return (*(v43 + 8))(v28, v45);
  }

  else
  {
    v23(v10, 1, 1, v15);
    return sub_10039C818(v10);
  }
}

uint64_t sub_10039B97C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = sub_1007649CC();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);

  sub_10076158C();
  sub_10000A5D4(&qword_100954FC0, &qword_10079F200);
  return sub_1007633AC();
}

uint64_t type metadata accessor for AnnotationCollectionViewHostingCell(uint64_t a1)
{
  result = qword_100954F58;
  if (!qword_100954F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10039BD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v46 = a3;
  v4 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  __chkstk_darwin(v4 - 8);
  v38 = &v36 - v5;
  v6 = sub_10000A5D4(&qword_100954F70, &qword_10079F178);
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v40 = &v36 - v7;
  v8 = sub_1007649CC();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100956700, &unk_10079F180);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = sub_10075F51C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  v39 = a1;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v15 + 8))(v17, v14);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  v25 = swift_dynamicCast();
  v26 = *(v19 + 56);
  if (v25)
  {
    v26(v13, 0, 1, v18);
    (*(v19 + 32))(v24, v13, v18);
    v27 = *(v19 + 16);
    v37 = v24;
    v27(v21, v24, v18);

    sub_1007649AC();
    v28 = v10;
    if (sub_1007649BC() & 1) != 0 || (, sub_1007649DC(), , v29 = sub_1007622CC(), , (v29))
    {
      sub_10076336C();
      v30 = v40;
      sub_10076F87C();
      sub_10039C8C8();
      v31 = v42;
      sub_10076F83C();

      sub_1007649EC();

      sub_10000A5D4(&qword_10094AA58, &qword_100790530);
      sub_10076A92C();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100784500;
      sub_10076A91C();
      sub_10076A90C();
      v47 = v32;
      sub_10039C880(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
      sub_10000A5D4(&qword_10094AA68, &qword_10079F190);
      sub_100071820(&qword_10094AA70, &qword_10094AA68, &qword_10079F190, &protocol conformance descriptor for [A]);
      sub_1007712CC();
      (*(v41 + 8))(v30, v31);
    }

    else
    {
      sub_10000A5D4(&qword_10094AA58, &qword_100790530);
      sub_10076A92C();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100784500;
      sub_10076A91C();
      sub_10076A90C();
      v47 = v35;
      sub_10039C880(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
      sub_10000A5D4(&qword_10094AA68, &qword_10079F190);
      sub_100071820(&qword_10094AA70, &qword_10094AA68, &qword_10079F190, &protocol conformance descriptor for [A]);
      sub_1007712CC();
    }

    (*(v44 + 8))(v28, v45);
    return (*(v19 + 8))(v37, v18);
  }

  else
  {
    v26(v13, 1, 1, v18);
    sub_10039C818(v13);
    sub_10000A5D4(&qword_10094AA58, &qword_100790530);
    sub_10076A92C();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100784500;
    sub_10076A91C();
    sub_10076A90C();
    v47 = v33;
    sub_10039C880(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_10000A5D4(&qword_10094AA68, &qword_10079F190);
    sub_100071820(&qword_10094AA70, &qword_10094AA68, &qword_10079F190, &protocol conformance descriptor for [A]);
    return sub_1007712CC();
  }
}

uint64_t sub_10039C638@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100763F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  v6 = v11[1];
  v7 = sub_1007706EC();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_100763FAC();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_100763FDC();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_10039C7C0(uint64_t a1)
{
  result = sub_10039C880(&qword_100954F68, type metadata accessor for AnnotationCollectionViewHostingCell, &unk_10079F12C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10039C818(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100956700, &unk_10079F180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10039C880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10039C8C8()
{
  result = qword_100954F78;
  if (!qword_100954F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954F78);
  }

  return result;
}

unint64_t sub_10039C938()
{
  result = qword_100954F98;
  if (!qword_100954F98)
  {
    sub_10000CE78(&qword_100954F90, &qword_10079F1E0);
    sub_10039C9F0();
    sub_100071820(&qword_100956780, &qword_10094CE18, &qword_10079D510, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954F98);
  }

  return result;
}

unint64_t sub_10039C9F0()
{
  result = qword_100954FA0;
  if (!qword_100954FA0)
  {
    sub_10000CE78(&qword_100954FA8, &qword_10079F1E8);
    sub_10000CE78(&qword_100954FB0, &qword_10079F1F0);
    sub_10000CE78(&qword_100954FB8, &qword_10079F1F8);
    sub_10076F64C();
    sub_10000CE78(&qword_100954FC0, &qword_10079F200);
    sub_100071820(&qword_100954FC8, &qword_100954FC0, &qword_10079F200, &protocol conformance descriptor for IDView<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100071820(&unk_100956770, &qword_10094CE10, &unk_100793670, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954FA0);
  }

  return result;
}

unint64_t sub_10039CBC4()
{
  result = qword_100954FD8;
  if (!qword_100954FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954FD8);
  }

  return result;
}

unint64_t sub_10039CC1C()
{
  result = qword_100954FE0;
  if (!qword_100954FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954FE0);
  }

  return result;
}

double sub_10039CCBC()
{
  v31 = sub_10076C38C();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v1 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10076664C();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v24 - v4;
  v5 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_10076469C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100761D1C();
  sub_10039D180(&qword_100944108, &type metadata accessor for UpsellBreakout, &protocol conformance descriptor for UpsellBreakout);
  sub_10076332C();
  v13 = v33;
  if (!v33)
  {
    return 0.0;
  }

  sub_1007632FC();
  sub_10076468C();
  (*(v10 + 8))(v12, v9);
  swift_getKeyPath();
  sub_10076F49C();

  (*(v6 + 8))(v8, v5);

  sub_10076FCFC();
  sub_10039D180(&qword_10094BFE0, &type metadata accessor for NilState, &protocol conformance descriptor for NilState);
  v14 = v25;
  sub_10076335C();
  v15 = v28;
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v17 = v16;
  v19 = v18;
  (*(v29 + 8))(v1, v31);
  v20 = sub_100630CB4();
  sub_1001A87E4(v17, v19, v13, v20);
  v22 = v21;
  swift_unknownObjectRelease();

  (*(v30 + 8))(v15, v32);
  (*(v26 + 8))(v14, v27);
  return v22;
}

uint64_t sub_10039D180(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TodayCardVideoView(uint64_t a1)
{
  result = qword_100954FE8;
  if (!qword_100954FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_10039D26C(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v96 = a7;
  v94 = a6;
  v97 = a5;
  v98 = a4;
  v99 = a3;
  v100 = a2;
  v89 = sub_10076F9AC();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v11 - 8);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v79 - v15;
  v17 = sub_10076481C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10075DB7C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v79 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v80 = &v79 - v25;
  __chkstk_darwin(v26);
  v28 = &v79 - v27;
  v29 = objc_allocWithZone(v8);
  v29[qword_10099F298] = 7;
  v29[qword_10099F2A0] = 0;
  v91 = a1;
  sub_10008C3EC(a1, v105);
  v92 = v22;
  v30 = *(v22 + 16);
  v93 = v21;
  v81 = v30;
  v30(v28, v100, v21);
  v90 = v18;
  v31 = *(v18 + 16);
  v86 = v20;
  v95 = v17;
  v85 = v18 + 16;
  v84 = v31;
  v31(v20, v99, v17);
  v32 = v16;
  sub_100016E2C(v98, v16, &unk_10094C030, &unk_10078D680);
  sub_100016E2C(v97, v13, &unk_10094C030, &unk_10078D680);
  sub_100016E2C(v94, v104, &unk_100960410, &qword_10079F3D0);
  swift_weakInit();
  *&v29[qword_1009602B8 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_1009602C0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_1009602C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v33 = qword_1009602D0;
  *&v29[v33] = [objc_allocWithZone(UIImageView) init];
  v29[qword_1009602D8] = 0;
  v29[qword_1009602E0] = 0;
  v29[qword_1009602E8] = 0;
  *&v29[qword_1009602F0] = 0;
  *&v29[qword_1009602F8] = 0;
  v34 = qword_100960300;
  sub_10076925C();
  *&v29[v34] = sub_10076924C();
  v35 = qword_100960308;
  *&v29[v35] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v36 = v28;
  v37 = &v29[qword_1009A2508];
  v38 = *&UIEdgeInsetsZero.bottom;
  *v37 = *&UIEdgeInsetsZero.top;
  v37[1] = v38;
  v39 = &v29[qword_1009A2510];
  *v39 = 0;
  *(v39 + 1) = 0;
  v39[16] = 1;
  *&v29[qword_1009A2518] = 1;
  v29[qword_100960310] = 0;
  v40 = &v29[qword_1009A2528];
  *v40 = 0;
  v40[1] = 0;
  *&v29[qword_1009A2538 + 8] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_1009A2540] = 0;
  v29[qword_1009A2548] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_100960318] = 0;
  v29[qword_1009A2560] = 0;
  *&v29[qword_100960320] = 0;
  v29[qword_100960328] = 0;
  swift_beginAccess();
  swift_weakAssign();
  sub_10008C3EC(v105, &v29[qword_1009A2530]);
  v41 = sub_10075DB5C();
  v43 = v42;
  v44 = sub_10076BD6C();
  v83 = v36;
  if (v43)
  {
    if (v41 == v44 && v43 == v45)
    {

      v46 = v93;
    }

    else
    {
      v47 = sub_10077167C();

      v46 = v93;
      if ((v47 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v48 = [objc_opt_self() mainBundle];
    sub_10075DB0C();
    v49 = sub_10076FF6C();

    v50 = [v48 URLForResource:v49 withExtension:0];

    if (v50)
    {
      v51 = v79;
      sub_10075DB3C();

      v52 = *(v92 + 32);
      v53 = v80;
      v52(v80, v51, v46);
      v52(&v29[qword_1009A2520], v53, v46);
      goto LABEL_10;
    }
  }

  else
  {

    v46 = v93;
  }

LABEL_9:
  v81(&v29[qword_1009A2520], v36, v46);
LABEL_10:
  v82 = v32;
  sub_100016E2C(v32, &v29[qword_1009A24F0], &unk_10094C030, &unk_10078D680);
  v54 = v13;
  sub_100016E2C(v13, &v29[qword_1009A24F8], &unk_10094C030, &unk_10078D680);
  v55 = v86;
  v56 = v95;
  v84(&v29[qword_1009A2558], v86, v95);
  sub_100016E2C(v104, &v29[qword_1009A2500], &unk_100960410, &qword_10079F3D0);
  v57 = type metadata accessor for VideoView(0);
  v103.receiver = v29;
  v103.super_class = v57;
  v58 = objc_msgSendSuper2(&v103, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v58 setClipsToBounds:0];
  v59 = qword_1009602D0;
  [*&v58[qword_1009602D0] setUserInteractionEnabled:0];
  [*&v58[v59] setClipsToBounds:1];
  [v58 addSubview:*&v58[v59]];
  v60 = objc_opt_self();
  v61 = [v60 defaultCenter];
  v62 = sub_1007707BC();
  [v61 addObserver:v58 selector:"didChangeAutoPlayVideoSetting" name:v62 object:0];

  v63 = [v60 defaultCenter];
  [v63 addObserver:v58 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v64 = qword_100960308;
  [*&v58[qword_100960308] setHidden:1];
  v65 = *&v58[v64];
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = &v65[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock];
  v68 = *&v65[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock];
  v69 = *&v65[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock + 8];
  *v67 = sub_10039E4D0;
  v67[1] = v66;
  v70 = v65;

  sub_1000167E0(v68, v69);

  memset(v102, 0, sizeof(v102));
  memset(v101, 0, sizeof(v101));
  v71 = v87;
  sub_10076F95C();
  sub_10000CFBC(v101, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v102, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();
  (*(v88 + 8))(v71, v89);
  [v58 addSubview:*&v58[v64]];
  sub_1005F41B0(v72);

  sub_10000CFBC(v104, &unk_100960410, &qword_10079F3D0);
  sub_10000CFBC(v54, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v82, &unk_10094C030, &unk_10078D680);
  v73 = *(v90 + 8);
  v73(v55, v56);
  v74 = *(v92 + 8);
  v75 = v93;
  v74(v83, v93);
  sub_100016C74(v105);
  v76 = v58[qword_1009602E8];
  v58[qword_1009602E8] = 1;
  if (v76)
  {
  }

  else
  {
    v77 = v58;
    sub_1005ED8D0();
  }

  sub_10000CFBC(v94, &unk_100960410, &qword_10079F3D0);
  sub_10000CFBC(v97, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v98, &unk_10094C030, &unk_10078D680);
  v73(v99, v95);
  v74(v100, v75);
  sub_100016C74(v91);
  return v58;
}

void sub_10039DEFC()
{
  v1 = v0;
  v2 = qword_10099F298;
  v3 = *(v0 + qword_10099F298);
  if (v3 == 4)
  {
    v5 = *(v0 + qword_10099F2A0);
    v6 = *(v0 + qword_1009602E8);
    *(v0 + qword_1009602E8) = v5 ^ 1;
    if (v5 & 1) != 0 || (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3 != 7)
  {
    *(v0 + qword_1009602E8) = 0;
    goto LABEL_9;
  }

  v4 = *(v0 + qword_1009602E8);
  *(v0 + qword_1009602E8) = 1;
  if ((v4 & 1) == 0)
  {
LABEL_7:
    sub_1005ED8D0();
  }

LABEL_9:
  v7 = qword_1009602F0;
  v8 = *(v0 + qword_1009602F0);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1007605AC();

    if (v10 & 1) != 0 || (v11 = *(v1 + v7)) != 0 && (v12 = v11, v13 = sub_10076051C(), v12, (v13))
    {
      if ((*(v1 + qword_10099F2A0) & 1) == 0)
      {
        v14 = *(v1 + v2);
        if (v14 == 7 || v14 == 4)
        {
          v16 = *(v1 + v7);
          if (v16)
          {
            v17 = v16;
            if (sub_10076051C())
            {
              [v17 pause];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10039E07C(__n128 a1)
{
  v2 = v1;
  v3 = sub_10076481C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1009A2558;
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v7, v3);
  LOBYTE(v7) = sub_10076477C();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0 || (sub_10076922C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v2 + qword_10099F298);
  if (v8 == 7 || v8 == 4)
  {
    return *(v2 + qword_10099F2A0);
  }

  else
  {
    return 1;
  }
}

void sub_10039E1D8(__n128 a1)
{
  v2 = v1;
  v3 = sub_10076481C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_10099F298;
  v8 = *(v1 + qword_10099F298);
  if (v8 == 4)
  {
    v10 = *(v1 + qword_10099F2A0);
    v11 = *(v1 + qword_1009602E8);
    *(v1 + qword_1009602E8) = v10 ^ 1;
    if (v10 & 1) != 0 || (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v8 != 7)
  {
    *(v1 + qword_1009602E8) = 0;
    goto LABEL_9;
  }

  v9 = *(v1 + qword_1009602E8);
  *(v1 + qword_1009602E8) = 1;
  if ((v9 & 1) == 0)
  {
LABEL_7:
    sub_1005ED8D0();
  }

LABEL_9:
  v12 = qword_10099F2A0;
  if (*(v1 + qword_10099F2A0) == 1 && (v13 = qword_1009A2558, swift_beginAccess(), (*(v4 + 16))(v6, v2 + v13, v3), LOBYTE(v13) = sub_10076477C(), (*(v4 + 8))(v6, v3), (v13 & 1) != 0) && (v14 = sub_10076922C(), (v14 & 1) != 0) && ((v17 = *(v2 + v7), v17 != 7) && v17 != 4 || *(v2 + v12) == 1))
  {
    sub_1005EBFD4(v14, v15, v16);
  }

  else
  {
    v18 = qword_1009602F0;
    v19 = *(v2 + qword_1009602F0);
    if (v19)
    {
      v20 = v19;
      v21 = sub_1007605AC();

      if (v21 & 1) != 0 || (v22 = *(v2 + v18)) != 0 && (v23 = v22, v24 = sub_10076051C(), v23, (v24))
      {
        if ((*(v2 + v12) & 1) == 0)
        {
          v25 = *(v2 + v7);
          if (v25 == 7 || v25 == 4)
          {
            v27 = *(v2 + v18);
            if (v27)
            {
              v28 = v27;
              if (sub_10076051C())
              {
                [v28 pause];
              }
            }
          }
        }
      }
    }
  }
}

void sub_10039E45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + qword_10099F298);
  v5 = v4 == 7 || v4 == 4;
  if (!v5 || *(v3 + qword_10099F2A0) == 1)
  {
    sub_1005EBFD4(a1, a2, a3);
  }
}

uint64_t sub_10039E498()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_10039E524(uint64_t a1)
{
  v2 = sub_10076C38C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v59 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076B66C();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v55 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = sub_1007658FC();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_10076D39C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v56 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v60 = &v46 - v22;
  sub_100762A6C();
  sub_10039ECA4(&qword_100945AD0, &type metadata accessor for ProductMediaItem, &protocol conformance descriptor for ProductMediaItem);
  result = sub_10076332C();
  if (v61)
  {
    v52 = a1;
    if (sub_100762A4C())
    {
      sub_10076BEFC();
      sub_10076D3AC();

      v24 = *(v19 + 56);
      v24(v14, 0, 1, v18);
      (*(v19 + 32))(v17, v14, v18);
      v24(v17, 0, 1, v18);
      v25 = (*(v19 + 48))(v17, 1, v18);
    }

    else
    {
      v47 = v3;
      v48 = v2;
      v26 = *(v19 + 56);
      v27 = 1;
      v26(v14, 1, 1, v18);
      if (sub_100762A5C())
      {
        sub_10076B84C();

        sub_10076BEFC();
        sub_10076D3AC();

        v27 = 0;
      }

      v26(v17, v27, 1, v18);
      v28 = *(v19 + 48);
      if (v28(v14, 1, v18) != 1)
      {
        sub_10023DEE4(v14);
      }

      v3 = v47;
      v2 = v48;
      v25 = v28(v17, 1, v18);
    }

    if (v25 == 1)
    {

      return sub_10023DEE4(v17);
    }

    (*(v19 + 32))(v60, v17, v18);
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    v29 = v54;
    v30 = v55;
    sub_10076F49C();

    (*(v53 + 8))(v9, v29);
    v32 = v57;
    v31 = v58;
    v33 = v3;
    if ((*(v57 + 88))(v30, v58) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v32 + 96))(v30, v31);
      v35 = v49;
      v34 = v50;
      v36 = v30;
      v37 = v51;
      (*(v50 + 32))(v49, v36, v51);
      v38 = sub_10076588C();
      v39 = v56;
      if (v38)
      {
        v40 = v60;
        v41 = sub_10076D2EC();
        v42 = v34;
        v43 = v41;
        (*(v42 + 8))(v35, v37);
        if ((v43 & 1) == 0 && (sub_10076D2EC() & 1) == 0)
        {
          sub_10076D32C();
LABEL_21:
          swift_getKeyPath();
          v44 = v59;
          sub_10076338C();

          sub_10076C22C();
          (*(v33 + 8))(v44, v2);
          sub_10076D36C();

          v45 = *(v19 + 8);
          v45(v39, v18);
          return (v45)(v40, v18);
        }

LABEL_20:
        (*(v19 + 16))(v39, v40, v18);
        goto LABEL_21;
      }

      (*(v34 + 8))(v35, v37);
    }

    else
    {
      (*(v32 + 8))(v30, v31);
      v39 = v56;
    }

    v40 = v60;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10039ECA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10039ECF8(uint64_t a1)
{
  v2 = sub_10075DDBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100785D70;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();

  v7 = sub_1005BF804(0x6D69542074696157, 0xEF29636573282065, sub_10039F4FC, a1, sub_10039EF68, 0);

  *(v6 + 32) = v7;
  swift_allocObject();

  v8 = sub_1005BF804(0xD00000000000001ELL, 0x80000001007E2420, sub_10039FFA0, a1, sub_10039F014, 0);

  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007841E0;
  type metadata accessor for DebugSection();
  v10 = swift_allocObject();
  sub_10075DDAC();
  v11 = sub_10075DD8C();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v10[2] = v11;
  v10[3] = v13;
  v10[4] = 0;
  v10[5] = 0xE000000000000000;
  v10[6] = v6;
  *(v9 + 32) = v10;
  return v9;
}

uint64_t sub_10039EF80(uint64_t a1, uint64_t (*a2)(void *))
{
  sub_10076148C();
  sub_10076F64C();
  v3 = sub_10076FC1C();
  a2(v3);

  return sub_10077163C();
}

unsigned __int8 *sub_10039F02C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_10000A5D4(&unk_10094CE80, qword_100793880);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v41[-v12];
  sub_10076F73C();
  result = a4();
  if (!a3 || ((v15 = HIBYTE(a3) & 0xF, v16 = a2 & 0xFFFFFFFFFFFFLL, (a3 & 0x2000000000000000) != 0) ? (v17 = HIBYTE(a3) & 0xF) : (v17 = a2 & 0xFFFFFFFFFFFFLL), !v17))
  {
    sub_10076F70C();
    v44 = v7;
    v45 = sub_10039FFD0();
    v23 = sub_10000DB7C(&v42);
    (*(v8 + 16))(v23, v13, v7);
    sub_10076F71C();

    (*(v8 + 8))(v13, v7);
    return sub_10000CD74(&v42);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {

    sub_10039F52C(a2, a3, 10);
    v19 = v38;
    v40 = v39;

    if (v40)
    {
      return (*(v8 + 8))(v13, v7);
    }

    goto LABEL_65;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1007714BC();
    }

    v18 = *result;
    if (v18 == 43)
    {
      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_63;
              }

              v29 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_63;
              }

              v19 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_63;
              }

              ++v27;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_72;
    }

    if (v18 != 45)
    {
      if (v16)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v33 = *result - 48;
            if (v33 > 9)
            {
              goto LABEL_63;
            }

            v34 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_63;
            }

            v19 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v16)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v19 = 0;
      LOBYTE(v15) = 1;
LABEL_64:
      v41[0] = v15;
      if (v15)
      {
        return (*(v8 + 8))(v13, v7);
      }

LABEL_65:
      sub_10076F70C();
      (*(v8 + 16))(v10, v13, v7);
      v42 = v19;
      LOBYTE(v43) = 0;
      sub_10076F42C();

      return (*(v8 + 8))(v13, v7);
    }

    if (v16 >= 1)
    {
      v15 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 0;
        if (result)
        {
          v20 = result + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              goto LABEL_63;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_63;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_63;
            }

            ++v20;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v15) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v42 = a2;
  v43 = a3 & 0xFFFFFFFFFFFFFFLL;
  if (a2 != 43)
  {
    if (a2 != 45)
    {
      if (v15)
      {
        v19 = 0;
        v35 = &v42;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          v35 = (v35 + 1);
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v15)
    {
      if (--v15)
      {
        v19 = 0;
        v24 = &v42 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_71;
  }

  if (v15)
  {
    if (--v15)
    {
      v19 = 0;
      v30 = &v42 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v15)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_73:
  __break(1u);
  return result;
}

void sub_10039F52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_10077014C();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10039FAB8(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1007714BC();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_10039FAB8(uint64_t a1, unint64_t a2)
{
  v2 = sub_10077015C();
  v6 = sub_10039FB38(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10039FB38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1007711BC();
    if (!v9 || (v10 = v9, v11 = sub_10039FC90(v9, 0), v12 = sub_10039FD04(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_10077007C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_10077007C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1007714BC();
LABEL_4:

  return sub_10077007C();
}

void *sub_10039FC90(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000A5D4(&qword_100955068, qword_10079F500);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_10039FD04(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10039FF24(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1007700FC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1007714BC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10039FF24(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1007700DC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10039FF24(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10077010C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1007700EC();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10039FFD0()
{
  result = qword_100955060;
  if (!qword_100955060)
  {
    sub_10000CE78(&unk_10094CE80, qword_100793880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955060);
  }

  return result;
}

unint64_t sub_1003A0048()
{
  result = qword_100955070;
  if (!qword_100955070)
  {
    sub_10076935C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955070);
  }

  return result;
}

uint64_t sub_1003A00A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&qword_1009451A0, &unk_100784A30);
  __chkstk_darwin(v3 - 8);
  v5 = &v34[-1] - v4;
  v6 = sub_10076933C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v34[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v10 = sub_10076FCEC();
  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  v11 = v34[0];
  sub_10076934C();
  v12 = (*(v7 + 88))(v9, v6);
  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.messages(_:))
  {
    (*(v7 + 96))(v9, v6);
    v13 = *v9;
    v14 = v9[1];
    v15 = sub_10076FCEC();
    sub_10075F6CC();
    v16 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
    v17 = sub_10077068C();
    v35 = v16;
    v36 = &protocol witness table for OS_dispatch_queue;
    v34[0] = v17;
    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v13;
    v18[4] = v14;
    v18[5] = a2;

    sub_10075F67C();

    sub_10000CD74(v34);
    sub_10076FC4C();

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.player(_:))
  {
    (*(v7 + 96))(v9, v6);
    v19 = *v9;
    v20 = v9[1];
    v21 = sub_1007702EC();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;
    v22[5] = v20;
    v22[6] = v11;
    v22[7] = v10;

    v23 = &unk_10079F5C0;
LABEL_7:
    sub_10016FE40(0, 0, v5, v23, v22);

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.contact(_:))
  {
    (*(v7 + 96))(v9, v6);
    v33 = *v9;
    v24 = v9[2];
    v25 = v9[3];
    v26 = sub_1007702EC();
    (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    *(v22 + 2) = v33;
    v22[6] = v24;
    v22[7] = v25;
    v22[8] = v11;
    v22[9] = v10;

    v23 = &unk_10079F5B0;
    goto LABEL_7;
  }

  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v27 = sub_10076FD4C();
  *&v33 = sub_10000A61C(v27, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBEC();

  v28 = sub_10076FCEC();
  sub_10075F6CC();
  v29 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v30 = sub_10077068C();
  v35 = v29;
  v36 = &protocol witness table for OS_dispatch_queue;
  v34[0] = v30;
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = 0;
  v31[4] = 0;
  v31[5] = a2;

  sub_10075F67C();

  sub_10000CD74(v34);
  sub_10076FC4C();

  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_1003A06B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = sub_10076F50C();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = sub_10075F69C();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003A07D0, 0, 0);
}

uint64_t sub_1003A07D0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[10];
  v4 = v0[11];
  sub_10075F6CC();
  *v1 = v5;
  v1[1] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.player(_:), v3);

  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1003A08CC;
  v7 = v0[19];
  v8 = v0[12];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v7, v8);
}

uint64_t sub_1003A08CC()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003A0B00;
  }

  else
  {
    v5 = sub_1003A0A3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A0A3C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_10076FCBC();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A0B00()
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v1 = sub_10076FD4C();
  sub_10000A61C(v1, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_10000DB7C(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_10076F32C();
  sub_1000258C0((v0 + 2));
  sub_10076FBEC();

  sub_10076FCAC();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003A0D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v9 = sub_10076F50C();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v10 = sub_10075F69C();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_1003A0E54, 0, 0);
}

uint64_t sub_1003A0E54()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  sub_10075F6CC();
  *v1 = v7;
  v1[1] = v6;
  v1[2] = v5;
  v1[3] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.contact(_:), v3);

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_1003A0F68;
  v9 = v0[21];
  v10 = v0[14];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v9, v10);
}

uint64_t sub_1003A0F68()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003A119C;
  }

  else
  {
    v5 = sub_1003A10D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A10D8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_10076FCBC();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A119C()
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v1 = sub_10076FD4C();
  sub_10000A61C(v1, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_10000DB7C(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_10076F32C();
  sub_1000258C0((v0 + 2));
  sub_10076FBEC();

  sub_10076FCAC();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003A13C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    sub_10075F6CC();
    v8 = a1;
    sub_10075F6AC();
    v9 = swift_allocObject();
    *(v9 + 16) = a5;
    *(v9 + 24) = a2;
    v10 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
    swift_retain_n();

    v13[3] = v10;
    v13[4] = &protocol witness table for OS_dispatch_queue;
    v13[0] = sub_10077068C();
    sub_10076FC6C();

    return sub_10000CD74(v13);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v12 = sub_10076FD4C();
    sub_10000A61C(v12, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    sub_1003A1F80();
    swift_allocError();
    sub_10076FCAC();
  }
}

double sub_1003A1674(void **a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = sub_10075F65C();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100765F6C();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100766EDC();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076F4FC();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_10076C15C();
  __chkstk_darwin(v19);
  v21 = *a1;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  (*(v22 + 104))(&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.viewController(_:));
  v23 = sub_10075DB7C();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = sub_10076096C();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v35 = sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
  v34 = v21;
  v25 = v21;
  sub_10076F4DC();
  (*(v9 + 104))(v11, enum case for FlowPresentationContext.infer(_:), v28);
  (*(v6 + 104))(v8, enum case for FlowAnimationBehavior.infer(_:), v29);
  (*(v4 + 104))(v30, enum case for FlowOrigin.inapp(_:), v31);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v26 = sub_10075F5EC();
  sub_100563FF8(v26, 1, v32);
  sub_10076FC4C();

  return result;
}

uint64_t sub_1003A1B60(uint64_t a1)
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v1 = sub_10076FD4C();
  sub_10000A61C(v1, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBEC();

  return sub_10076FCAC();
}

uint64_t sub_1003A1CD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1003A1D28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000257CC;

  return sub_1003A0D28(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1003A1E14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003A1E64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100025A64;

  return sub_1003A06B0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1003A1F38()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1003A1F80()
{
  result = qword_100955078;
  if (!qword_100955078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955078);
  }

  return result;
}

uint64_t sub_1003A1FD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1003A2038()
{
  result = qword_100955080;
  if (!qword_100955080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955080);
  }

  return result;
}

id sub_1003A2094()
{
  sub_10000A5D4(&qword_100955088, &qword_10079F690);
  inited = swift_initStackObject();
  v2 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 16) = xmmword_100784500;
  v3 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 0;
  *(inited + 48) = v3;
  *(inited + 56) = 6;
  v4 = v2;
  v5 = v3;
  v6 = sub_1000FE1FC(inited);
  swift_setDeallocating();
  sub_10000A5D4(&qword_100955090, &qword_10079F698);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  sub_10000A5D4(&qword_100955098, &qword_10079F6A0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_100783DD0;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_10000A5D4(&qword_1009550A0, &qword_10079F6A8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100783DD0;
  *(v9 + 32) = v6;
  *(v8 + 64) = sub_10000A5D4(&qword_1009550A8, qword_10079F6B0);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_1000FE2E8(v8);
  swift_setDeallocating();
  sub_1003A22E4(v8 + 32);
  type metadata accessor for AttributeName(0);
  sub_1003A234C();
  isa = sub_10076FE3C().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  [v0 pointSize];
  v14 = [objc_opt_self() fontWithDescriptor:v12 size:v13];

  return v14;
}

uint64_t sub_1003A22E4(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100948C18, &qword_10078B5E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003A234C()
{
  result = qword_100941C98;
  if (!qword_100941C98)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941C98);
  }

  return result;
}

unint64_t sub_1003A23B8()
{
  result = qword_1009550B0;
  if (!qword_1009550B0)
  {
    sub_1007650DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009550B0);
  }

  return result;
}

uint64_t sub_1003A2418(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = a1;
  v30 = sub_10075F65C();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100765F6C();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766EDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_10076C15C();
  __chkstk_darwin(v18);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  (*(v20 + 104))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reportAConcern(_:));
  v21 = sub_10075DB7C();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = sub_10076096C();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v33 = sub_1007650DC();
  v32 = v28;

  sub_10076F4DC();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.presentModalFormSheet(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v27);
  (*(v2 + 104))(v29, enum case for FlowOrigin.inapp(_:), v30);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v23 = sub_10075F5EC();
  v24 = sub_100563FF8(v23, 1, v31);

  return v24;
}

id sub_1003A28E8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&qword_100955118, &qword_10079F7B0);
  __chkstk_darwin(v10);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViewCount] = 0;
  type metadata accessor for TodayCardChinLockupListIconView(0);
  sub_10076D4CC();
  sub_1003A59A0();
  sub_10076E18C();
  swift_weakInit();
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_impressionsUpdateBlock];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_todayCardStyle;
  v13 = enum case for TodayCard.Style.light(_:);
  v14 = sub_10076C7EC();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_clickActionHandler];
  *v15 = 0;
  v15[1] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_wantsCardConsistentMargins] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100783DD0;
  *(v17 + 32) = sub_10076E88C();
  *(v17 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v19[3] = ObjectType;
  v19[0] = v16;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v19);
  return v16;
}

void sub_1003A2BD0()
{
  v1 = v0;
  v2 = sub_10076C7EC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded] & 1) != 0 || v0[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory] != 6 || (v7 = [v0 traitCollection], v8 = sub_10077071C(), v7, (v8))
  {
    v9 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_todayCardStyle;
    swift_beginAccess();
    (*(v3 + 16))(v6, &v1[v9], v2);
    v10 = sub_100312114(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = [objc_opt_self() clearColor];
  }

  [v1 setBackgroundColor:v10];
}

void sub_1003A2D70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v8 = v6;
  v93 = a6;
  v85 = a2;
  v12 = a5;
  v13 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v13 - 8);
  v96 = v81 - v14;
  v15 = sub_10076BF6C();
  __chkstk_darwin(v15 - 8);
  v92 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10076BEDC();
  v17 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076C7EC();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory);
  *(v8 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory) = a5;
  if (v12 == 7)
  {
    if (v24 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v8 setNeedsLayout];
    goto LABEL_6;
  }

  if (v24 == 7)
  {
    goto LABEL_5;
  }

  switch(v12)
  {
    case 6:
      if (v24 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v24 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v24 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v24 - 7) > 0xFFFFFFFC || v24 != v12)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  (*(v20 + 16))(v23, a4, v19, v21);
  v25 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_todayCardStyle;
  swift_beginAccess();
  (*(v20 + 24))(v8 + v25, v23, v19);
  swift_endAccess();
  sub_1003A2BD0();
  (*(v20 + 8))(v23, v19);
  v26 = a1;
  v27 = sub_100768A9C();
  v28 = v27;
  v29 = v27 & 0xFFFFFFFFFFFFFF8;
  v30 = v27 >> 62;
  if (v27 >> 62)
  {
    while (1)
    {
      if (v28 < 0)
      {
        v26 = v28;
      }

      else
      {
        v26 = v29;
      }

      v79 = sub_10077158C();
      if (sub_10077158C() < 0)
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      if (v79 >= 6)
      {
        v80 = 6;
      }

      else
      {
        v80 = v79;
      }

      if (v79 >= 0)
      {
        v7 = v80;
      }

      else
      {
        v7 = 6;
      }

      if (sub_10077158C() < v7)
      {
        goto LABEL_130;
      }

LABEL_11:
      if ((v28 & 0xC000000000000001) != 0 && v7)
      {
        v26 = sub_10076BC0C();

        sub_10077147C(0);
        if (v7 != 1)
        {
          sub_10077147C(1);
          if (v7 != 2)
          {
            sub_10077147C(2);
            if (v7 != 3)
            {
              sub_10077147C(3);
              if (v7 != 4)
              {
                sub_10077147C(4);
                if (v7 != 5)
                {
                  sub_10077147C(5);
                }
              }
            }
          }
        }
      }

      else
      {
      }

      v95 = v17;

      if (v30)
      {
        v17 = sub_10077159C();
        v97 = v32;
        v30 = v33;
        v26 = v34;

        v7 = v26 >> 1;
      }

      else
      {
        v17 = v28 & 0xFFFFFFFFFFFFFF8;
        v97 = (v28 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      if (__OFSUB__(v7, v30))
      {
        goto LABEL_114;
      }

      sub_1003A3BF4(v7 - v30, v93);
      *(v8 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViewCount) = v7 - v30;
      v26 = [v8 traitCollection];
      [v8 bounds];
      Width = CGRectGetWidth(v100);
      if ((sub_10077071C() & 1) == 0)
      {
        v41 = ASKDeviceTypeGetCurrent();
        v42 = sub_10076FF9C();
        v44 = v43;
        if (v42 != sub_10076FF9C() || v44 != v45)
        {
          sub_10077167C();
        }

        if (sub_10077071C())
        {
          v46 = v30;
          v47 = [v26 preferredContentSizeCategory];
          v30 = UIContentSizeCategoryAccessibilityExtraLarge;
          v48 = UIContentSizeCategoryAccessibilityMedium;
          v49 = UIContentSizeCategoryAccessibilityExtraLarge;
          if (sub_10077088C())
          {
            v30 = v46;
            if (sub_10077087C())
            {
              v50 = sub_10077088C();

              if (v50)
              {
                goto LABEL_62;
              }
            }

            else
            {
            }

            if (qword_100941428 == -1)
            {
LABEL_61:
              floor(sub_100587DD0(v26, &xmmword_1009A2D20, 1));
LABEL_62:
              v82 = sub_1000FC7A8(&off_100882440);

              goto LABEL_71;
            }

LABEL_122:
            swift_once();
            goto LABEL_61;
          }

LABEL_118:
          __break(1u);
        }

        else if (qword_100941428 == -1)
        {
          goto LABEL_62;
        }

        swift_once();
        goto LABEL_62;
      }

      v98 = v30;
      v30 = &off_100911000;
      v36 = [v26 preferredContentSizeCategory];
      v37 = UIContentSizeCategoryAccessibilityMedium;
      v38 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_10077088C() & 1) == 0)
      {
        goto LABEL_115;
      }

      if (sub_10077087C())
      {
        v39 = sub_10077088C();

        v40 = 20.0;
        if (v39)
        {
          if (Width <= 405.0)
          {
            v40 = 10.0;
          }

          else
          {
            v40 = 16.0;
          }
        }
      }

      else
      {

        v40 = 20.0;
      }

      v51 = [v26 preferredContentSizeCategory];
      v52 = v37;
      v53 = v38;
      if ((sub_10077088C() & 1) == 0)
      {
        goto LABEL_116;
      }

      if (sub_10077087C())
      {
        v54 = sub_10077088C();

        if (v54)
        {
          v55 = 1;
          if ((sub_10077071C() & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_55;
        }
      }

      else
      {
      }

      v55 = 2;
      if ((sub_10077071C() & 1) == 0)
      {
LABEL_51:
        if (qword_100941428 != -1)
        {
          swift_once();
        }

        goto LABEL_67;
      }

LABEL_55:
      v56 = [v26 preferredContentSizeCategory];
      v57 = v52;
      v58 = v53;
      if ((sub_10077088C() & 1) == 0)
      {
        __break(1u);
        goto LABEL_122;
      }

      if (sub_10077087C())
      {
        v59 = sub_10077088C();

        if (v59)
        {
          goto LABEL_67;
        }
      }

      else
      {
      }

      if (qword_100941428 != -1)
      {
        swift_once();
      }

      floor((sub_100587DD0(v26, &xmmword_1009A2D20, 1) - v40 * (v55 - 1)) / v55);
LABEL_67:
      v60 = [v26 preferredContentSizeCategory];
      v30 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      v61 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v62 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if ((sub_10077088C() & 1) == 0)
      {
        goto LABEL_117;
      }

      if (sub_10077087C())
      {
        sub_10077088C();
      }

      v82 = sub_1000FC7A8(_swiftEmptyArrayStorage);

      v30 = v98;
LABEL_71:
      v28 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViews;
      swift_beginAccess();
      v84 = v8;
      v63 = *(v8 + v28);

      v83 = v17;
      swift_unknownObjectRetain();
      if (v30 == v7)
      {
LABEL_72:

        swift_unknownObjectRelease();
        v64 = v84;
        sub_1003A2BD0();
        [v64 setNeedsLayout];
        swift_unknownObjectRelease();
        return;
      }

      v65 = 0;
      v8 = (v63 & 0xFFFFFFFFFFFFFF8);
      if (v63 < 0)
      {
        v66 = v63;
      }

      else
      {
        v66 = v63 & 0xFFFFFFFFFFFFFF8;
      }

      v81[1] = v66;
      v86 = v7;
      v87 = (v95 + 8);
      v29 = v63 >> 62;
      v94 = v63 & 0xC000000000000001;
      v95 = v63 >> 62;
      v88 = v63 & 0xFFFFFFFFFFFFFF8;
      v89 = v63;
      while (v30 < v7)
      {
        v17 = *(v97 + 8 * v30);
        if (v95)
        {
          if (v65 == sub_10077158C())
          {
            goto LABEL_72;
          }
        }

        else if (v65 == v8[2])
        {
          goto LABEL_72;
        }

        if (v94)
        {

          v67 = sub_10077149C();
        }

        else
        {
          v29 = v8[2];
          if (v65 >= v29)
          {
            goto LABEL_108;
          }

          v28 = *(v63 + 8 * v65 + 32);

          v67 = v28;
        }

        v68 = v67;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_107;
        }

        v69 = sub_10076BB5C();
        if (v69)
        {
          v28 = v69;
          v98 = v30;
          v70 = sub_10076B9FC();
          v71 = v90;
          sub_10076BEEC();
          sub_10076BE9C();
          (*v87)(v71, v91);
          sub_10076BFCC();
          v72 = *&v68[OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_artworkView];
          sub_10076BF7C();
          sub_10075FCCC();
          [v72 setContentMode:sub_10076BDBC()];
          sub_100764ADC();
          sub_10075FD0C();
          if (!sub_10076BE1C())
          {
            sub_1000325F0();
            sub_100770D5C();
          }

          sub_10075FB8C();
          sub_10075FD2C();
          sub_1003A6730(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
          sub_100760B8C();
          if (v70)
          {
            v99 = v70;
            sub_10076B90C();
            sub_10076F64C();
            sub_1003A6730(&qword_100956710, &type metadata accessor for Action, &protocol conformance descriptor for Action);

            v73 = v96;
            sub_10076F56C();

            v74 = 0;
            v7 = v86;
            v30 = v98;
          }

          else
          {

            v74 = 1;
            v7 = v86;
            v30 = v98;
            v73 = v96;
          }

          v75 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
          (*(*(v75 - 8) + 56))(v73, v74, 1, v75);
          v76 = OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_clickAction;
          swift_beginAccess();
          sub_1002F0390(v73, &v68[v76]);
          swift_endAccess();
          v77 = v68;
          sub_10076BB6C();
          v8 = v88;
          if (v78)
          {
            v68 = sub_10076FF6C();
          }

          else
          {
            v68 = 0;
          }

          [v77 setAccessibilityLabel:v68];

          v63 = v89;
        }

        else
        {
        }

        ++v30;

        ++v65;
        if (v7 == v30)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
    }
  }

  v31 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v31 >= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = v31;
  }

  if (v31 >= v7)
  {
    goto LABEL_11;
  }

LABEL_130:
  __break(1u);
}

void sub_1003A3BF4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    if (sub_10077158C() == a1)
    {
      return;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) == a1)
  {
    return;
  }

  v8 = *&v3[v6];
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v10 = *&v3[v6];
  v11 = v10 >> 62;
  if (v9 >= a1)
  {
    if (!v11)
    {
      v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 - a1;
      if (!__OFSUB__(v15, a1))
      {
        goto LABEL_18;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  else
  {
    if (v11)
    {
      v23 = sub_10077158C();
      v13 = a1 - v23;
      if (!__OFSUB__(a1, v23))
      {
LABEL_10:
        if ((v13 & 0x8000000000000000) == 0)
        {
          for (; v13; --v13)
          {
            swift_beginAccess();
            sub_10000A5D4(&qword_100955218, &qword_10079F8E8);
            sub_10076E15C();
            swift_endAccess();
            [v3 addSubview:v25];
            swift_beginAccess();
            v14 = v25;
            sub_10077019C();
            if (*((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10077021C();
            }

            sub_10077025C();
            swift_endAccess();
          }

          return;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = a1 - v12;
      if (!__OFSUB__(a1, v12))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  v24 = sub_10077158C();
  v16 = v24 - a1;
  if (__OFSUB__(v24, a1))
  {
    goto LABEL_39;
  }

LABEL_18:
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    return;
  }

  for (; v16; --v16)
  {
    swift_beginAccess();
    a1 = *&v3[v6];
    if (a1 >> 62)
    {
      if (!sub_10077158C())
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v9 = sub_10077158C();
        goto LABEL_7;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v3[v6] = a1;
    if (a1 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      a1 = sub_1004BE250(a1);
    }

    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = v18 - 1;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v19 + 0x20);
    *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v19;
    *&v3[v6] = a1;
    swift_endAccess();
    if (a2)
    {
      v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_artworkView];
      sub_10075FD2C();
      sub_1003A6730(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v22 = v21;
      sub_100760BFC();
    }

    [v20 removeFromSuperview];
    v25 = v20;
    swift_beginAccess();
    sub_10000A5D4(&qword_100955218, &qword_10079F8E8);
    sub_10076E17C();
    swift_endAccess();
  }
}

id sub_1003A3FBC@<X0>(void *a1@<X8>)
{
  type metadata accessor for TodayCardChinLockupListIconView(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_1003A3FFC()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_10076D1FC();
  v67 = *(v4 - 8);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v63.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73[0].receiver = v2;
  v73[0].super_class = ObjectType;
  [(objc_super *)v73 layoutSubviews];
  v8 = [v2 traitCollection];
  [v2 bounds];
  Width = CGRectGetWidth(v76);
  v66 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory;
  v10 = v2[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory];
  v65 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded;
  v11 = v2[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded];
  v12 = sub_10077071C();
  v68 = v4;
  if (v12)
  {
    v11 = &off_100911000;
    v13 = [v8 preferredContentSizeCategory];
    LOBYTE(v10) = UIContentSizeCategoryAccessibilityExtraLarge;
    v14 = UIContentSizeCategoryAccessibilityMedium;
    v15 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (sub_10077088C())
    {
      if (sub_10077087C())
      {
        v16 = sub_10077088C();

        v17 = 20.0;
        v18 = 10.0;
        if (Width > 405.0)
        {
          v18 = 16.0;
        }

        if (v16)
        {
          v1 = v18;
        }

        else
        {
          v1 = 20.0;
        }
      }

      else
      {

        v1 = 20.0;
      }

      v31 = [v8 preferredContentSizeCategory];
      v32 = v14;
      v33 = v15;
      if (sub_10077088C())
      {
        if (sub_10077087C())
        {
          v34 = sub_10077088C();

          if (v34)
          {
            v10 = 1;
            if ((sub_10077071C() & 1) == 0)
            {
              goto LABEL_29;
            }

LABEL_33:
            v35 = [v8 preferredContentSizeCategory];
            v36 = v32;
            v37 = v33;
            if (sub_10077088C())
            {
              if (sub_10077087C())
              {
                v38 = sub_10077088C();

                if (v38)
                {
                  if (Width <= 405.0)
                  {
                    v24 = 68.0;
                  }

                  else
                  {
                    v24 = 120.0;
                  }

LABEL_54:
                  v25 = v24;
LABEL_55:
                  v47 = [v8 v11[224]];
                  v48 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
                  v49 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
                  if (sub_10077088C())
                  {
                    if (sub_10077087C())
                    {
                      v50 = sub_10077088C();

                      if (v50)
                      {
                        v44 = 1;
LABEL_61:
                        v43 = sub_1000FC7A8(_swiftEmptyArrayStorage);

                        v46 = v1;
                        v45 = v1;
                        v63 = xmmword_10079F760;
                        v64 = xmmword_10079F760;
                        goto LABEL_62;
                      }
                    }

                    else
                    {
                    }

                    v44 = 0;
                    goto LABEL_61;
                  }

                  goto LABEL_67;
                }
              }

              else
              {
              }

              if (qword_100941428 != -1)
              {
                swift_once();
              }

              v24 = floor((sub_100587DD0(v8, &xmmword_1009A2D20, 1) - v1 * (v10 - 1)) / v10);
              goto LABEL_54;
            }

            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
        }

        v10 = 2;
        if ((sub_10077071C() & 1) == 0)
        {
LABEL_29:
          if (qword_100941428 == -1)
          {
LABEL_30:
            v25 = *(&xmmword_1009A2D20 + 1);
            v24 = *&xmmword_1009A2D20;
            goto LABEL_55;
          }

LABEL_70:
          swift_once();
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v19 = ASKDeviceTypeGetCurrent();
  v20 = sub_10076FF9C();
  v22 = v21;
  if (v20 == sub_10076FF9C() && v22 == v23)
  {

    v1 = 16.0;
    if ((sub_10077071C() & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v27 = [v8 preferredContentSizeCategory];
    v28 = UIContentSizeCategoryAccessibilityMedium;
    v29 = UIContentSizeCategoryAccessibilityExtraLarge;
    if ((sub_10077088C() & 1) == 0)
    {
      __break(1u);
      goto LABEL_70;
    }

    if (sub_10077087C())
    {
      v30 = sub_10077088C();

      if (v30)
      {
        if (Width <= 405.0)
        {
          v24 = 68.0;
        }

        else
        {
          v24 = 120.0;
        }

        goto LABEL_42;
      }
    }

    else
    {
    }

    if (qword_100941428 == -1)
    {
LABEL_41:
      v24 = floor(sub_100587DD0(v8, &xmmword_1009A2D20, 1));
LABEL_42:
      v25 = v24;
      goto LABEL_43;
    }

LABEL_72:
    swift_once();
    goto LABEL_41;
  }

  v26 = sub_10077167C();

  if (v26)
  {
    v1 = 16.0;
  }

  else
  {
    v1 = 10.0;
  }

  if (sub_10077071C())
  {
    goto LABEL_18;
  }

LABEL_12:
  if (qword_100941428 != -1)
  {
LABEL_68:
    swift_once();
  }

  v25 = *(&xmmword_1009A2D20 + 1);
  v24 = *&xmmword_1009A2D20;
LABEL_43:
  if (v10 == 6)
  {
    v39 = v11;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    v40 = -1;
  }

  else
  {
    v40 = 0;
  }

  v41 = vdupq_n_s64(v40);
  v42 = vbslq_s8(v41, xmmword_10079F750, *&UIEdgeInsetsZero.top);
  v63 = vbslq_s8(v41, xmmword_10079F750, *&UIEdgeInsetsZero.bottom);
  v64 = v42;
  v43 = sub_1000FC7A8(&off_100883358);

  v44 = 0;
  v45 = 22.0;
  v46 = 8.0;
  v10 = 1;
LABEL_62:
  swift_beginAccess();

  v52 = sub_10016E7D8(v51);

  v53 = v2[v66];
  v54 = v2[v65];
  *&v69.receiver = v24;
  *&v69.super_class = v25;
  *&v70.receiver = v1;
  *&v70.super_class = v46;
  *&v71.receiver = v45;
  v71.super_class = v10;
  LOBYTE(v72[0]) = v44;
  *(v72 + 1) = v75[0];
  DWORD1(v72[0]) = *(v75 + 3);
  *(&v72[1] + 8) = v63;
  *(v72 + 8) = v64;
  *(&v72[2] + 1) = v43;
  *&v72[3] = v52;
  BYTE8(v72[3]) = v53;
  BYTE9(v72[3]) = v54;
  v73[5] = v72[1];
  v74[0] = v72[2];
  v73[1] = v69;
  v73[2] = v70;
  v73[3] = v71;
  v73[4] = v72[0];
  *(v74 + 10) = *(&v72[2] + 10);
  [v2 bounds];
  sub_1005CCCB8(v2, v55, v56, v57, v58);
  sub_1003A68AC(&v69);
  (*(v67 + 8))(v7, v68);
  v59 = &v2[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_impressionsUpdateBlock];
  swift_beginAccess();
  v60 = *v59;
  if (*v59)
  {
    v61 = *(v59 + 1);

    v60(v62);
    sub_1000167E0(v60, v61);
  }
}

double sub_1003A4884(double a1)
{
  v3 = v1;
  v5 = [v1 traitCollection];
  [v3 bounds];
  Width = CGRectGetWidth(v78);
  v7 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory;
  v8 = v3[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory];
  v9 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded;
  v10 = v3[OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded];
  if (sub_10077071C())
  {
    v8 = &off_100911000;
    v11 = [v5 preferredContentSizeCategory];
    v12 = UIContentSizeCategoryAccessibilityMedium;
    v13 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (sub_10077088C())
    {
      if (sub_10077087C())
      {
        v14 = sub_10077088C();

        v15 = 20.0;
        v16 = 10.0;
        if (Width > 405.0)
        {
          v16 = 16.0;
        }

        if (v14)
        {
          v2 = v16;
        }

        else
        {
          v2 = 20.0;
        }
      }

      else
      {

        v2 = 20.0;
      }

      v30 = [v5 preferredContentSizeCategory];
      v31 = v12;
      v32 = v13;
      if (sub_10077088C())
      {
        if (sub_10077087C())
        {
          v33 = sub_10077088C();

          if (v33)
          {
            v10 = 1;
            if ((sub_10077071C() & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_35:
            v34 = [v5 preferredContentSizeCategory];
            v35 = v31;
            v36 = v32;
            if (sub_10077088C())
            {
              if (sub_10077087C())
              {
                v37 = sub_10077088C();

                if (v37)
                {
                  if (Width <= 405.0)
                  {
                    v24 = 68.0;
                  }

                  else
                  {
                    v24 = 120.0;
                  }

LABEL_56:
                  v25 = v24;
LABEL_57:
                  v45 = [v5 v8[224]];
                  v46 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
                  v47 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
                  if (sub_10077088C())
                  {
                    if (sub_10077087C())
                    {
                      v48 = sub_10077088C();

                      if (v48)
                      {
                        v42 = 1;
LABEL_63:
                        v41 = sub_1000FC7A8(_swiftEmptyArrayStorage);

                        v44 = v2;
                        v43 = v2;
                        v69 = xmmword_10079F760;
                        v70 = xmmword_10079F760;
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                    }

                    v42 = 0;
                    goto LABEL_63;
                  }

                  goto LABEL_73;
                }
              }

              else
              {
              }

              if (qword_100941428 != -1)
              {
                swift_once();
              }

              v24 = floor((sub_100587DD0(v5, &xmmword_1009A2D20, 1) - v2 * (v10 - 1)) / v10);
              goto LABEL_56;
            }

            __break(1u);
            goto LABEL_78;
          }
        }

        else
        {
        }

        v10 = 2;
        if ((sub_10077071C() & 1) == 0)
        {
LABEL_31:
          if (qword_100941428 == -1)
          {
LABEL_32:
            v25 = *(&xmmword_1009A2D20 + 1);
            v24 = *&xmmword_1009A2D20;
            goto LABEL_57;
          }

LABEL_76:
          swift_once();
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v17 = ASKDeviceTypeGetCurrent();
  v18 = sub_10076FF9C();
  v20 = v19;
  if (v18 == sub_10076FF9C() && v20 == v21)
  {

    v2 = 16.0;
    if ((sub_10077071C() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v26 = [v5 preferredContentSizeCategory];
    v27 = UIContentSizeCategoryAccessibilityMedium;
    v28 = UIContentSizeCategoryAccessibilityExtraLarge;
    if ((sub_10077088C() & 1) == 0)
    {
      __break(1u);
      goto LABEL_76;
    }

    if (sub_10077087C())
    {
      v29 = sub_10077088C();

      if (v29)
      {
        if (Width <= 405.0)
        {
          v24 = 68.0;
        }

        else
        {
          v24 = 120.0;
        }

        goto LABEL_44;
      }
    }

    else
    {
    }

    if (qword_100941428 == -1)
    {
LABEL_43:
      v24 = floor(sub_100587DD0(v5, &xmmword_1009A2D20, 1));
LABEL_44:
      v25 = v24;
      goto LABEL_45;
    }

LABEL_78:
    swift_once();
    goto LABEL_43;
  }

  v23 = sub_10077167C();

  if (v23)
  {
    v2 = 16.0;
  }

  else
  {
    v2 = 10.0;
  }

  if (sub_10077071C())
  {
    goto LABEL_20;
  }

LABEL_17:
  if (qword_100941428 != -1)
  {
LABEL_74:
    swift_once();
  }

  v25 = *(&xmmword_1009A2D20 + 1);
  v24 = *&xmmword_1009A2D20;
LABEL_45:
  if (v8 == 6)
  {
    v38 = v10;
  }

  else
  {
    v38 = 1;
  }

  if (v38)
  {
    v39 = -1;
  }

  else
  {
    v39 = 0;
  }

  v40 = vdupq_n_s64(v39);
  v69 = vbslq_s8(v40, xmmword_10079F750, *&UIEdgeInsetsZero.bottom);
  v70 = vbslq_s8(v40, xmmword_10079F750, *&UIEdgeInsetsZero.top);
  v41 = sub_1000FC7A8(&off_1008833F0);

  v42 = 0;
  v43 = 22.0;
  v44 = 8.0;
  v10 = 1;
LABEL_64:
  swift_beginAccess();

  v50 = sub_10016E7D8(v49);

  v51 = v3[v7];
  v52 = v3[v9];
  *&v71 = v24;
  *(&v71 + 1) = v25;
  *&v72 = v2;
  *(&v72 + 1) = v44;
  *&v73 = v43;
  *(&v73 + 1) = v10;
  v74[0] = v42;
  *&v74[1] = v77[0];
  *&v74[4] = *(v77 + 3);
  *&v74[24] = v69;
  *&v74[8] = v70;
  *&v74[40] = v41;
  *&v74[48] = v50;
  v74[56] = v51;
  v74[57] = v52;
  v75[4] = *&v74[16];
  v76[0] = *&v74[32];
  v75[0] = v71;
  v75[1] = v72;
  v75[2] = v73;
  v75[3] = *v74;
  *(v76 + 10) = *&v74[42];
  v53 = [v3 traitCollection];
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  v54 = sub_100587DD0(v53, &xmmword_1009A2D20, 1);
  sub_10077071C();
  sub_1007704EC();
  v56 = v55;
  sub_10077071C();
  sub_1007704EC();
  v58 = v57;

  v59 = [v3 traitCollection];
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1007841E0;
  *(v60 + 32) = v59;
  v61 = v59;
  v62 = sub_10076DEEC();
  sub_1003A6550(v62, v75, a1, v54 + v56 + v58);
  v64 = v63;
  sub_1003A68AC(&v71);

  if (v3[v9] & 1) != 0 || v3[v7] != 6 || (v65 = [v3 traitCollection], v66 = sub_10077071C(), v65, (v66))
  {
    v67 = [v3 traitCollection];
    sub_100587DD0(v67, &xmmword_1009A2D20, 1);
    sub_10077071C();
    sub_1007704EC();
    sub_10077071C();
    sub_1007704EC();
  }

  return v64;
}

void sub_1003A51F0()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_10077158C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {

    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_10077149C();
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_artworkView];
      sub_10075FD2C();
      sub_1003A6730(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v8 = v7;
      sub_100760BFC();
    }

    while (v3 != v4);
  }
}

void sub_1003A5358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (!v13)
  {

    return;
  }

  v14 = v13;
  sub_10000A570(a3, v27);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076C84C();
  if ((swift_dynamicCast() & 1) == 0 || (v15 = sub_10076C83C(), , !v15))
  {

LABEL_18:

    return;
  }

  sub_100768AAC();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_18;
  }

  v16 = sub_100768A9C();
  v17 = v16;
  if (v16 >> 62)
  {
    v21 = v16;
    v18 = sub_10077158C();
    v17 = v21;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_24:

    goto LABEL_18;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_24;
  }

LABEL_8:
  v22[1] = v15;
  v25 = v14;
  if (v18 >= 1)
  {
    v19 = 0;
    v26 = v17 & 0xC000000000000001;
    v23 = (v8 + 8);
    v24 = (v8 + 32);
    do
    {
      v20 = v18;
      if (v26)
      {
        sub_10077149C();
      }

      else
      {
      }

      sub_10076BACC();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_10000CFBC(v6, &qword_1009492E0, &qword_1007893A0);
      }

      else
      {
        (*v24)(v10, v6, v7);
        [v12 frame];
        sub_1007660EC();

        (*v23)(v10, v7);
      }

      ++v19;
      v18 = v20;
    }

    while (v20 != v19);
    goto LABEL_24;
  }

  __break(1u);
}

void sub_1003A5820(uint64_t a1)
{
  sub_1003A5930(319);
  if (v1 <= 0x3F)
  {
    sub_10076C7EC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003A5930(uint64_t a1)
{
  if (!qword_100955110)
  {
    sub_10000CE78(&qword_100955118, &qword_10079F7B0);
    sub_1003A59A0();
    v1 = sub_10076E19C();
    if (!v2)
    {
      atomic_store(v1, &qword_100955110);
    }
  }
}

unint64_t sub_1003A59A0()
{
  result = qword_100955120;
  if (!qword_100955120)
  {
    sub_10000CE78(&qword_100955118, &qword_10079F7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955120);
  }

  return result;
}

double sub_1003A5A2C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_clickActionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_clickActionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000167E0(v4, v5);
}

double sub_1003A5A98(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1003A5AF8(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_1003A5B90()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_1003A5BEC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

void (*sub_1003A5CAC(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_1003A6830;
}

char *sub_1003A5D74(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_artworkView;
  sub_10075FD2C();
  *&v4[v11] = sub_10075FB3C();
  v12 = OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_clickAction;
  v13 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v21.receiver = v5;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_artworkView;
  v16 = *&v14[OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_artworkView];
  v17 = v14;
  [v17 addSubview:v16];
  v18 = *&v14[v15];
  sub_10075FC1C();

  [*&v14[v15] setUserInteractionEnabled:0];
  v19 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v17 action:"handleTap"];
  [v19 setDelaysTouchesBegan:1];
  [v17 addGestureRecognizer:v19];

  return v17;
}

uint64_t sub_1003A6084()
{
  v1 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension31TodayCardChinLockupListIconView_clickAction;
  swift_beginAccess();
  sub_1003A683C(v0 + v11, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_100952650;
    v13 = &unk_10079B720;
    v14 = v6;
    return sub_10000CFBC(v14, v12, v13);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_100761FDC();
  v15 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();

  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v3, 1, v15) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_100943200;
    v13 = &unk_100785840;
    v14 = v3;
    return sub_10000CFBC(v14, v12, v13);
  }

  sub_100761FEC();
  v18 = sub_100761FDC();
  sub_100263BF0(v19, 1, v18, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v16 + 8))(v3, v15);
}

void sub_1003A6468(uint64_t a1)
{
  sub_1001D92E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003A6550(void *a1, uint64_t a2, double a3, double a4)
{
  v6 = [a1 traitCollection];
  sub_1005CCFFC(v7);

  sub_100770ACC();
  v9 = v8;
  v11 = v10;
  v12 = [a1 traitCollection];
  LOBYTE(v6) = sub_10077071C();

  if (v6)
  {
    sub_1005CD158(0, v15, 0.0, 0.0, v9, v11);
  }

  else
  {
    sub_1005CD9E8(0, v15, 0.0, 0.0, v9, v11);
  }

  sub_1003A6900(v15);
  sub_100770AEC();
  v13 = [a1 traitCollection];
  v14 = v13;
  if ((*(a2 + 105) & 1) == 0 && *(a2 + 104) == 6)
  {
    sub_10077071C();
  }

  else
  {
  }
}

uint64_t sub_1003A6730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003A6778()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003A67B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003A67E8()
{

  sub_10000CD74((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1003A683C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1003A6954()
{
  v1 = sub_10000A5D4(&qword_100955118, &qword_10079F7B0);
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_lockupIconViewCount) = 0;
  type metadata accessor for TodayCardChinLockupListIconView(0);
  sub_10076D4CC();
  sub_1003A59A0();
  sub_10076E18C();
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_todayCardStyle;
  v4 = enum case for TodayCard.Style.light(_:);
  v5 = sub_10076C7EC();
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  v6 = (v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_clickActionHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27TodayCardChinLockupListView_wantsCardConsistentMargins) = 0;
  sub_10077156C();
  __break(1u);
}

__n128 sub_1003A6B10(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1003A6B44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003A6B8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003A6C08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003A6C50(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

double sub_1003A6CAC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  sub_10000CF78((v3 + 56), *(v3 + 80));
  sub_10076E0FC();
  sub_10000CF78(v4 + 12, v4[15]);
  sub_10076E0FC();
  sub_10000CF78(v4 + 17, v4[20]);
  sub_10076E0FC();
  sub_10008325C(v3, v7);
  sub_10000CF78(v7, v7[3]);
  sub_10076D41C();
  sub_10000CD74(v7);
  return a2;
}

void sub_1003A6E18(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  sub_10000CF78((v5 + 56), *(v5 + 80));
  sub_10076E0FC();
  v12 = v11 + 4.0;
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  v13 = CGRectGetWidth(v31) - v12 - *(v5 + 40);
  sub_10000CF78(v6 + 12, v6[15]);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectGetHeight(v32);
  sub_10076E0FC();
  v28 = v14;
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectGetHeight(v33);
  v29 = *(v5 + 48);
  sub_10000CF78(v6 + 17, v6[20]);
  sub_10076E0FC();
  v27 = v15;
  v17 = v16;
  v25 = v16;
  v26 = v18;
  v19 = v18;
  sub_10008325C(v5, v30);
  sub_10000CF78(v30, v30[3]);
  sub_10076D41C();
  v21 = v20;
  sub_10000CD74(v30);
  if (v21 <= v28 + v29 + v17 - v19)
  {
    v21 = v28 + v29 + v17 - v19;
  }

  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  CGRectGetMinX(v34);
  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetMinY(v35);
  if (v27 >= v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = v27;
  }

  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  v23 = CGRectGetWidth(v36) - v22;
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  v24 = v26 + v21 + CGRectGetMinY(v37) - v25;
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetWidth(v38);
  v39.origin.x = v23;
  v39.origin.y = v24;
  v39.size.width = v27;
  v39.size.height = v25;
  CGRectGetMinY(v39);
  sub_10000CF78((v5 + 56), *(v5 + 80));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v5 + 136), *(v5 + 160));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v5 + 96), *(v5 + 120));
  sub_1007709CC();
  sub_10076E0EC();
}

uint64_t sub_1003A71AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000832B8();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_1003A7204()
{
  result = qword_100955220;
  if (!qword_100955220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955220);
  }

  return result;
}

unint64_t sub_1003A725C()
{
  result = qword_100955228;
  if (!qword_100955228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100955228);
  }

  return result;
}

double sub_1003A730C(uint64_t a1)
{
  v2 = sub_10076063C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  (*(v7 + 8))(v9, v6);
  sub_100455D90(a1, v5);
  sub_10076462C();
  sub_1007605DC();
  v11 = v10;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  return v11;
}

double sub_1003A7524()
{
  v0 = sub_10076469C();
  v52 = *(v0 - 8);
  v53 = v0;
  __chkstk_darwin(v0);
  v2 = &v48[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10076063C();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v55 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v54 = &v48[-v6];
  __chkstk_darwin(v7);
  v9 = &v48[-v8];
  v10 = sub_10076C38C();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48[-v15];
  sub_10076B90C();
  sub_1003A7C34(&qword_100956710, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  sub_10076332C();
  if (!v59)
  {
    return 0.0;
  }

  v58 = v59;

  sub_10000A5D4(&unk_1009520F0, &qword_100799AA0);
  if (swift_dynamicCast())
  {
    sub_10000CF78(&v59, *(&v60 + 1));
    v49 = sub_10076968C();
    sub_10000CD74(&v59);
  }

  else
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    sub_1001E5E88(&v59);
    v49 = 0;
  }

  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v14 + 8))(v16, v13);
  if (v59 == 1)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    (*(v50 + 8))(v12, v51);
    sub_1007632FC();
    sub_100455D90(v2, v9);
    (*(v52 + 8))(v2, v53);
    v18 = sub_100630CB4();
    swift_getObjectType();
    sub_100293A18(v9, v18);
    v17 = v19;

    swift_unknownObjectRelease();
    (*(v56 + 8))(v9, v57);
  }

  else
  {
    v20 = ASKDeviceTypeGetCurrent();
    v21 = sub_10076FF9C();
    v23 = v22;
    v24 = sub_10076FF9C();
    v26 = v56;
    if (v21 != v24 || v23 != v25)
    {
      sub_10077167C();
    }

    sub_1007632FC();
    v27 = v54;
    sub_100455D90(v2, v54);
    (*(v52 + 8))(v2, v53);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C2FC();
    v29 = v28;
    v31 = v30;
    (*(v50 + 8))(v12, v51);
    v32 = v57;
    (*(v26 + 16))(v55, v27, v57);
    v33 = sub_100630CB4();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v37 = sub_10076B8EC();
    v39 = v38;
    v40 = sub_10076B8FC();
    if (v40)
    {
    }

    v41 = v40 != 0;
    swift_getObjectType();
    v42 = sub_100630CB4();
    swift_getObjectType();
    v43 = sub_10045B094(v42);
    swift_unknownObjectRelease();
    v44 = v55;
    sub_100293124(v55, v33, v37, v39, v41, v43, v49 & 1, v29, v31, UIEdgeInsetsZero.top, left, bottom, right);
    v17 = v45;

    swift_unknownObjectRelease();

    v46 = *(v26 + 8);
    v46(v44, v32);
    v46(v54, v32);
  }

  return v17;
}

uint64_t sub_1003A7C34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1003A7C8C(char a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_isCollapsing) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_isCollapsing) = a1;
  *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView) + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_isCollapsing) = a1;
  [*(v2 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_closeButton) setAlpha:0.0];
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView);

  return [v3 setAlpha:0.0];
}

void sub_1003A7D38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_isCollapsing] = 0;
  v9 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
  v10 = sub_10076F4FC();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_objectGraph] = a2;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_presenter] = a1;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_artworkLoader] = v25;

  sub_100760C5C();

  sub_100760C0C();

  v12 = &v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver];
  *(v12 + 3) = sub_10075F11C();
  *(v12 + 4) = &protocol witness table for BasePresenter;
  *v12 = a1;
  v13 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageView(0));

  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView] = sub_100502A08(a2);
  v14 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate(0));
  v15 = a3;
  v16 = sub_100215438(a3);

  *&v4[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_containerTransitioningDelegate] = v16;
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  sub_100767D5C();
  v18 = v17;
  sub_10076FC1C();
  v19 = v25;
  v20 = v18;
  sub_100767D2C();

  sub_1003ABBD8(&qword_1009552C8, type metadata accessor for AppPromotionDetailPageViewController, &unk_10079FC90);
  sub_10075F10C();
  v21 = [v20 view];

  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = [v20 view];
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v22 setClipsToBounds:0];

  v23 = [v20 view];
  if (v23)
  {
    [v23 addSubview:*&v20[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1003A8204()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  *(*&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView] + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_delegate + 8) = &off_1008932D8;
  swift_unknownObjectWeakAssign();
  return sub_100760C9C();
}

void sub_1003A83D0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_10075F2BC();
  (*(v6 + 8))(v9, v5);
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1003ABBD8(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
  }

  sub_1003ABBD8(&qword_10095B3F0, type metadata accessor for AppPromotionDetailPageView, &unk_1007A8E7C);
  sub_100767D3C();
}

void sub_1003A8690(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075F2AC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1, v11);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_10075F2BC();
  (*(v10 + 8))(v13, v9);
  if (sub_100760C6C())
  {
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v6 + 8))(v8, v5);
    sub_10076367C();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v14 = v15[1];
  sub_100767CDC();
  sub_1005055B8();
}

void sub_1003A89D0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076FAAC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000A5D4(&unk_100946A10, &qword_100789280);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_10075F2AC();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1, v14);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_10075F2BC();
  (*(v13 + 8))(v16, v12);
  if (sub_100760C6C())
  {
    sub_10076FA9C();
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v18 + 8))(v7, v19);
    sub_10076369C();
    v17 = sub_1007636AC();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_10076368C();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

void sub_1003A8DA0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  sub_10075F2BC();
  (*(v6 + 8))(v9, v5);
  sub_1006D6E18(*&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_artworkLoader], 1);
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1003ABBD8(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
  }

  sub_1003ABBD8(&qword_10095B3F0, type metadata accessor for AppPromotionDetailPageView, &unk_1007A8E7C);
  sub_100767CFC();
}

double sub_1003A9114()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();

  return result;
}

double sub_1003A9314()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();

  return result;
}

void sub_1003A9530(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10075F2AC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_10000CF78(&v7[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  sub_10075F2BC();
  (*(v10 + 8))(v13, v9);
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v15 = v16[1];
  a3(v14);
}

id sub_1003A9748()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame:{v5, v7, v9, v11}];
    v12 = sub_1005A5D54();
    v13 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_defaultPageMargin] = v12;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = sub_10077070C();

    if (v3)
    {
      v15 = -*&v1[v13];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003A98CC(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_10077071C() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_10077071C();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_10075F0FC();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_10076FF9C();
  v12 = v11;
  if (v10 == sub_10076FF9C() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = sub_10077167C();

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003A9B70()
{
  v1 = sub_10075F2AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78((v0 + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  sub_10075F2BC();
  (*(v2 + 8))(v4, v1);
  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v5 = v6[1];
  sub_100767CBC();
}

void sub_1003A9E64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  sub_100767F7C();
  if (swift_dynamicCastClass())
  {

    sub_100767F1C();
    v7 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_1003ABB68(v6, &v1[v7]);
    swift_endAccess();
    sub_100767F2C();
    v8 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_1003ABB68(v6, &v1[v8]);
    swift_endAccess();
    sub_100767F4C();
  }

  else
  {
    sub_100764E1C();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_6;
    }

    sub_100764DBC();
    v9 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_1003ABB68(v6, &v1[v9]);
    swift_endAccess();
    sub_100764DCC();
    v10 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_1003ABB68(v6, &v1[v10]);
    swift_endAccess();
    sub_100764DEC();
  }

  v11 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_1003ABB68(v6, &v2[v11]);
  swift_endAccess();
LABEL_6:
  v12 = [v2 traitCollection];
  if (v12)
  {
    v13 = v12;
    if (sub_1007706EC())
    {
      sub_10077071C();
    }
  }

  v14 = [v2 view];
  if (v14)
  {
    v15 = v14;
    [v14 bounds];
    v17 = v16;
    v19 = v18;

    v20 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_artworkLoader];
    v21 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_objectGraph];

    sub_1006D7D00(a1, v20, v21, v17, v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003AA128(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_objectGraph;
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);

  sub_10076F5AC();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000CFBC(v5, &unk_100943200, &unk_100785840);
  }

  v10 = *(v1 + v6);

  sub_100263BF0(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

double sub_1003AA2B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F3C();

  sub_100761F8C();

  sub_100761F4C();

  v6 = sub_10075F0EC();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_objectGraph;
    v9 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);

    sub_10076F5AC();

    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      sub_10000CFBC(v5, &unk_100943200, &unk_100785840);
    }

    else
    {
      v12 = *(a2 + v8);

      sub_100263BF0(v7, 1, v12, v5);

      (*(v10 + 8))(v5, v9);
    }

    sub_100761F8C();
    sub_100761F4C();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1003AA508()
{
  v0 = sub_10076F1BC();
  v17 = *(v0 - 8);
  v18 = v0;
  __chkstk_darwin(v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076FA1C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v16 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  sub_10000A5D4(&qword_1009552D8, &qword_10079FCC8);

  sub_10076F63C();

  v14 = v20[6];
  v15 = v20[5];
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F3C();

  sub_100761F8C();
  v13[3] = sub_100761F9C();

  sub_100761F8C();
  sub_100761F7C();

  v9 = sub_100769A9C();

  sub_10076F63C();

  if (v19[0])
  {
    v10 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[3] = v9;
  v19[4] = v10;
  sub_100761F8C();
  sub_100761F2C();

  sub_10000A5D4(&qword_1009552E0, qword_10079FCD0);

  sub_10076F63C();

  sub_10076FA0C();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10000CFBC(v20, &qword_1009538F8, qword_10079CD98);
  sub_10000CFBC(v19, &qword_1009538F0, &qword_10079CD90);
  (*(v4 + 16))(v16, v8, v3);

  sub_10076F19C();
  v11 = sub_10076F60C();

  (*(v17 + 8))(v2, v18);
  (*(v4 + 8))(v8, v3);
  return v11;
}

uint64_t type metadata accessor for AppPromotionDetailPageViewController(uint64_t a1)
{
  result = qword_1009552A8;
  if (!qword_1009552A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003AABD4(uint64_t a1)
{
  sub_1003AACA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003AACA0(uint64_t a1)
{
  if (!qword_1009552B8)
  {
    sub_10076F4FC();
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1009552B8);
    }
  }
}

CGFloat sub_1003AAD6C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_1003AADD4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_detailPageView) + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

double sub_1003AAE18(__n128 a1)
{
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();

  return result;
}

id sub_1003AAE8C()
{
  v1 = sub_10075F2AC();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v1, v3);
  sub_10075F11C();
  sub_1003ABBD8(&qword_1009552D0, &type metadata accessor for AppPromotionDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  sub_1007657FC();
  (*(v2 + 8))(v5, v1);
  return [v0 dismissViewControllerAnimated:1 completion:0];
}

void sub_1003AB038()
{
  v1 = v0;
  v2 = sub_10075F2AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100761FAC();
  sub_100761F8C();
  v6 = sub_100761F3C();

  (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  sub_10075F11C();
  sub_1003ABBD8(&qword_1009552D0, &type metadata accessor for AppPromotionDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  sub_1007657FC();
  (*(v3 + 8))(v5, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v0;
  aBlock[4] = sub_1003ABB48;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_100893398;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

id sub_1003AB260()
{
  v1 = v0;
  v2 = sub_10075F2AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_10076F4FC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_1003AB714(v1 + v18, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000CFBC(v10, &qword_100956730, &unk_1007ABEA0);
  }

  else
  {
    v26 = v3;
    (*(v12 + 32))(v17, v10, v11);
    v19 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);

    sub_10076F5AC();

    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      (*(v12 + 8))(v17, v11);
      sub_10000CFBC(v7, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_10075FD5C();
      (*(v12 + 16))(v14, v17, v11);
      v21 = sub_10075FD3C();
      v22 = sub_1003AA508();
      sub_100263FC8(v21, 1, v22, v7);
      v25 = v2;

      v2 = v25;

      (*(v12 + 8))(v17, v11);
      (*(v20 + 8))(v7, v19);
    }

    v3 = v26;
  }

  v23 = v27;
  (*(v3 + 104))(v27, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  sub_10075F11C();
  sub_1003ABBD8(&qword_1009552D0, &type metadata accessor for AppPromotionDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  sub_1007657FC();
  (*(v3 + 8))(v23, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1003AB714(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003AB79C(uint64_t *a1)
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_10076F4FC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = *a1;
  swift_beginAccess();
  sub_1003AB714(v1 + v16, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v17 = &qword_100956730;
    v18 = &unk_1007ABEA0;
    v19 = v8;
    return sub_10000CFBC(v19, v17, v18);
  }

  (*(v10 + 32))(v15, v8, v9);
  v20 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);

  sub_10076F5AC();

  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v5, 1, v20) == 1)
  {
    (*(v10 + 8))(v15, v9);
    v17 = &unk_100943200;
    v18 = &unk_100785840;
    v19 = v5;
    return sub_10000CFBC(v19, v17, v18);
  }

  sub_10075FD5C();
  (*(v10 + 16))(v12, v15, v9);
  v23 = sub_10075FD3C();
  v24 = sub_1003AA508();
  sub_100263FC8(v23, 1, v24, v5);

  (*(v10 + 8))(v15, v9);
  return (*(v21 + 8))(v5, v20);
}

uint64_t sub_1003ABB08()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1003ABB50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003ABB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003ABBD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003ABC24@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v66 = sub_100763BBC();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&qword_100949710, "fc\a");
  __chkstk_darwin(v3 - 8);
  v63 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v8 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v8 - 8);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v53 - v11;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v55 = &v53 - v16;
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v20 = sub_10000A5D4(&unk_10094BB80, &qword_100791CF0);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v53 - v24;
  v26 = sub_10076034C();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v25, 1, 1, v26);
  v28 = sub_100763BAC();
  v60 = *(v28 - 8);
  v61 = v28;
  (*(v60 + 56))(v7, 1, 1);
  v56 = v25;
  sub_100016E2C(v25, v22, &unk_10094BB80, &qword_100791CF0);
  if ((*(v27 + 48))(v22, 1, v26) == 1)
  {
    sub_10000CFBC(v22, &unk_10094BB80, &qword_100791CF0);
    v29 = 0;
  }

  else
  {
    v29 = sub_1007602EC();
    (*(v27 + 8))(v22, v26);
  }

  v30 = v19;
  sub_100286F40(v29, v19);

  if (qword_10093FC50 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v12, qword_10099DFA0);
  v32 = v57;
  v33.n128_f64[0] = (*(v13 + 56))(v57, 1, 1, v12);
  v34 = v55;
  sub_10011BA50(v30, v55, v33);
  v35 = v58;
  sub_10011BA50(v31, v58, v36);
  v53 = v30;
  v37 = v59;
  sub_100016E2C(v32, v59, &qword_100949718, &unk_10078CE10);
  v38 = v7;
  v39 = v7;
  v40 = v63;
  sub_100016E2C(v39, v63, &qword_100949710, "fc\a");
  v42 = v64;
  v41 = v65;
  v43 = v66;
  (*(v64 + 104))(v65, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v66);
  sub_1000325F0();
  v54 = sub_100770CDC();
  sub_10000CFBC(v38, &qword_100949710, "fc\a");
  sub_10000CFBC(v32, &qword_100949718, &unk_10078CE10);
  sub_10011BAB4(v53, v44);
  sub_10000CFBC(v56, &unk_10094BB80, &qword_100791CF0);
  v45 = type metadata accessor for TitleHeaderView.Style(0);
  v46 = v45[8];
  v47 = v62;
  sub_10013B084(v34, v62, v48);
  sub_10013B084(v35, v47 + v45[5], v49);
  sub_10013B0E8(v37, v47 + v45[6]);
  *(v47 + v45[7]) = 0;
  *(v47 + v46) = 1;
  *(v47 + v45[9]) = 0;
  *(v47 + v45[14]) = 0x4030000000000000;
  *(v47 + v45[12]) = 0;
  *(v47 + v45[13]) = v54;
  (*(v42 + 32))(v47 + v45[11], v41, v43);
  v51 = v60;
  v50 = v61;
  if ((*(v60 + 48))(v40, 1, v61) != 1)
  {
    return (*(v51 + 32))(v47 + v45[10], v40, v50);
  }

  sub_10000CFBC(v40, &qword_100949710, "fc\a");
  return (*(v51 + 104))(v47 + v45[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v50);
}

uint64_t sub_1003AC354(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D9AC();
  sub_10000DB18(v8, a3);
  sub_10000A61C(v8, a3);
  if (qword_100940240 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_100955470);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_10076D9BC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003AC55C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009554D0);
  sub_10000A61C(v4, qword_1009554D0);
  if (qword_100940258 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009554B8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003AC730()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009554E8);
  sub_10000A61C(v4, qword_1009554E8);
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

id sub_1003AC8C8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DetailCollectionViewCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1003AC920(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  sub_1003AC990(a3);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for DetailCollectionViewCell(0);
  objc_msgSendSuper2(&v9, *a4, a3);
  sub_1003ACA44(a5);
}

id sub_1003AC990(char a1)
{
  v3 = [v1 contentView];
  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v3 setBackgroundColor:v6];

  return [v1 setNeedsDisplay];
}

id sub_1003ACA44(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = [v1 contentView];
  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  if (!v2)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v3 setBackgroundColor:v6];

  return [v1 setNeedsDisplay];
}

char *sub_1003ACB04(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v85 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v85);
  v86 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v87 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v81 - v15;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_previousTitleTextColor] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_previousSubtitleTextColor] = 0;
  v17 = &v4[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageMarginRight];
  *v17 = 0;
  v17[8] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryView] = 0;
  v18 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessory;
  v19 = type metadata accessor for Accessory(0);
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDivider;
  v21 = type metadata accessor for DividerView(0);
  *&v5[v20] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDividerInsets];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showTopDivider] = 0;
  v23 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDivider;
  *&v5[v23] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDividerInsets];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showBottomDivider] = 0;
  v25 = &v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_backgroundSelectionView;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_isSelectable] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_disabled] = 0;
  v27 = &v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_selectionHandler];
  *v27 = 0;
  v27[1] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100940240 != -1)
  {
    swift_once();
  }

  v28 = sub_10076D3DC();
  v29 = sub_10000A61C(v28, qword_100955470);
  v30 = *(v28 - 8);
  v84 = *(v30 + 16);
  v84(v16, v29, v28);
  v83 = *(v30 + 56);
  v83(v16, 0, 1, v28);
  v31 = enum case for DirectionalTextAlignment.none(_:);
  v82 = *(v12 + 104);
  v82(v87, enum case for DirectionalTextAlignment.none(_:), v11);
  v32 = sub_1007626BC();
  v81 = v11;
  v33 = v32;
  v34 = objc_allocWithZone(v32);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940258 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A61C(v28, qword_1009554B8);
  v84(v16, v35, v28);
  v83(v16, 0, 1, v28);
  v82(v87, v31, v81);
  v36 = objc_allocWithZone(v33);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_subtitleLabel] = sub_1007626AC();
  v37 = type metadata accessor for DetailCollectionViewCell(0);
  v88.receiver = v5;
  v88.super_class = v37;
  v38 = objc_msgSendSuper2(&v88, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v42 = v38;
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v43 = [v42 contentView];
  v44 = objc_opt_self();
  v45 = [v44 whiteColor];
  [v43 setBackgroundColor:v45];

  v46 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageView;
  v47 = *&v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageView];
  v48 = [v42 backgroundColor];

  sub_10075FB8C();
  [*&v42[v46] setContentMode:1];
  v49 = [v42 contentView];
  [v49 addSubview:*&v42[v46]];

  v50 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel;
  [*&v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel] setLineBreakMode:4];
  v51 = [v42 contentView];
  [v51 addSubview:*&v42[v50]];

  v52 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_subtitleLabel;
  v53 = *&v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_subtitleLabel];
  v54 = [v44 systemGrayColor];
  [v53 setTextColor:v54];

  v55 = [v42 contentView];
  [v55 addSubview:*&v42[v52]];

  v56 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDivider;
  v57 = qword_100940950;
  v58 = *&v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDivider];
  if (v57 != -1)
  {
    swift_once();
  }

  v59 = sub_10000A61C(v85, qword_1009A0A20);
  v60 = v86;
  sub_100206DD0(v59, v86);
  v61 = &v58[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
  swift_beginAccess();
  sub_100206E34(v60, v61);
  swift_endAccess();
  v62 = &v58[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v63 = *(v61 + 1);
  *v62 = *v61;
  *(v62 + 1) = v63;
  [v58 setNeedsLayout];
  [v58 setNeedsLayout];

  sub_100206E98(v60);
  v64 = *&v42[v56];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v65 = v64;
  v66 = sub_100770CDC();
  [v65 setBackgroundColor:v66];

  [*&v42[v56] setHidden:1];
  v67 = [v42 contentView];
  [v67 addSubview:*&v42[v56]];

  v68 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDivider;
  v69 = *&v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDivider];
  sub_100206DD0(v59, v60);
  v70 = &v69[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
  swift_beginAccess();
  v71 = v69;
  sub_100206E34(v60, v70);
  swift_endAccess();
  v72 = &v71[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v73 = *(v70 + 1);
  *v72 = *v70;
  *(v72 + 1) = v73;
  [v71 setNeedsLayout];
  [v71 setNeedsLayout];

  sub_100206E98(v60);
  v74 = *&v42[v68];
  v75 = sub_100770CDC();
  [v74 setBackgroundColor:v75];

  [*&v42[v68] setHidden:1];
  v76 = [v42 contentView];
  [v76 addSubview:*&v42[v68]];

  v77 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_backgroundSelectionView;
  v78 = *&v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_backgroundSelectionView];
  v79 = sub_100770DCC();
  [v78 setBackgroundColor:v79];

  [*&v42[v77] setOpaque:0];
  [*&v42[v77] setUserInteractionEnabled:0];
  if (v42[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_isSelectable] == 1)
  {
    [v42 setSelectedBackgroundView:*&v42[v77]];
  }

  return v42;
}

void sub_1003AD61C()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  v99 = v2;
  v100 = v3;
  __chkstk_darwin(v2);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailCollectionViewCell(0);
  v101.receiver = v0;
  v101.super_class = v6;
  objc_msgSendSuper2(&v101, "layoutSubviews");
  sub_10076422C();
  v8 = v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryView;
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryView];
  if (v10)
  {
    v11 = [v10 isHidden] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_10075FC9C();
  v13 = v12;
  if (v12)
  {
  }

  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_subtitleLabel];
  v15 = [v14 text];
  v16 = v15;
  if (v15)
  {
  }

  v17 = v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageMarginRight + 8];
  v98 = v16;
  if (v17)
  {
    v18 = 8.0;
    if (v13)
    {
LABEL_10:
      v19 = sub_10075FC9C();
      if (!v19)
      {
        __break(1u);
        goto LABEL_53;
      }

      v20 = v19;
      [v19 size];
      v22 = v21;
      v24 = v23;

      sub_10076422C();
      MinX = CGRectGetMinX(v102);
      sub_10076422C();
      v26 = CGRectGetMidY(v103) + v24 * -0.5;
      sub_10075FC8C();
      v104.origin.x = MinX;
      v104.origin.y = v26;
      v104.size.width = v22;
      v104.size.height = v24;
      v8 = v8 - (v18 + CGRectGetWidth(v104));
      v27 = &qword_100940000;
      if (!v11)
      {
        goto LABEL_25;
      }

LABEL_15:
      v28 = *&v1[v9];
      if (v28)
      {
        v29 = v28;
        sub_10076422C();
        [v29 sizeThatFits:{v30, v31}];
        v33 = v32;
        v35 = v34;

        v36 = *&v1[v9];
        if (v36)
        {
          [v36 lastBaselineFromBottom];
          v38 = v37;
          sub_10076422C();
          v39 = CGRectGetMaxX(v105) - v33;
          if (v98)
          {
            [v1 bounds];
            x = v106.origin.x;
            y = v106.origin.y;
            width = v106.size.width;
            v97 = v33;
            v43 = v35;
            v44 = v8;
            v45 = v39;
            v46 = v18;
            height = v106.size.height;
            CGRectGetMidX(v106);
            v107.origin.x = x;
            v107.origin.y = y;
            v107.size.width = width;
            v107.size.height = height;
            v18 = v46;
            v39 = v45;
            v8 = v44;
            v35 = v43;
            v33 = v97;
            v48 = CGRectGetMidY(v107) + v35 * -0.5;
          }

          else
          {
            sub_10076422C();
            MinY = CGRectGetMinY(v108);
            if (v27[73] != -1)
            {
              swift_once();
            }

            v50 = sub_10076D9AC();
            sub_10000A61C(v50, qword_100955488);
            sub_10076D17C();
            sub_10076D40C();
            v52 = v51;
            (*(v100 + 8))(v5, v99);
            v48 = MinY + v52 - (v35 - v38);
          }

          sub_10076422C();
          v53 = CGRectGetWidth(v109);
          if (v33 >= v53)
          {
            v33 = v53;
          }

          [*&v1[v9] setFrame:{v39, v48, v33, v35}];
          v110.origin.x = v39;
          v110.origin.y = v48;
          v110.size.width = v33;
          v110.size.height = v35;
          v8 = v8 - (CGRectGetWidth(v110) + 16.0);
          goto LABEL_25;
        }

LABEL_54:
        __break(1u);
        return;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageMarginRight];
    if (v13)
    {
      goto LABEL_10;
    }
  }

  sub_10075FC8C();
  v27 = &qword_100940000;
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_25:
  if (v27[73] != -1)
  {
    swift_once();
  }

  v54 = sub_10076D9AC();
  sub_10000A61C(v54, qword_100955488);
  v55 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel];
  sub_10076D17C();
  v56 = [v55 traitCollection];
  sub_10076D97C();
  v58 = v57;

  [v55 firstBaselineFromTop];
  v60 = v59;
  v61 = *(v100 + 8);
  v100 += 8;
  v61(v5, v99);
  v62 = v58 - v60;
  sub_10076422C();
  [v55 sizeThatFits:{v8, CGRectGetHeight(v111)}];
  v65 = v64;
  if (v63 >= v8)
  {
    v66 = v8;
  }

  else
  {
    v66 = v63;
  }

  if (v13)
  {
    sub_10075FC7C();
    v67 = v18 + CGRectGetMaxX(v112);
  }

  else
  {
    sub_10076422C();
    v67 = CGRectGetMinX(v113);
  }

  sub_10076422C();
  [v55 setFrame:{v67, v62 + CGRectGetMinY(v114), v66, v65}];
  if (v98)
  {
    [v14 setHidden:0];
    if (qword_100940260 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v54, qword_1009554D0);
    sub_10076D17C();
    v68 = [v14 traitCollection];
    sub_10076D97C();
    v70 = v69;

    [v14 firstBaselineFromTop];
    v72 = v71;
    v61(v5, v99);
    v73 = v70 - v72;
    sub_10076422C();
    [v14 sizeThatFits:{v8, CGRectGetHeight(v115)}];
    v75 = v74;
    v77 = v76;
    [v55 frame];
    v78 = CGRectGetMinX(v116);
    [v55 lastBaselineMaxY];
    [v14 setFrame:{v78, v73 + v79, v75, v77}];
  }

  else
  {
    [v14 setFrame:{0.0, 0.0, 0.0, 0.0}];
    [v14 setHidden:1];
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showTopDivider] == 1)
  {
    sub_10076422C();
    v80 = CGRectGetMinX(v117);
    [v1 bounds];
    v81 = CGRectGetMinY(v118);
    sub_10076422C();
    v82 = CGRectGetWidth(v119);
    if (qword_100940940 != -1)
    {
      swift_once();
    }

    v83 = *&qword_1009A0A00;
    v84 = &v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDividerInsets];
    if ((v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDividerInsets + 32] & 1) == 0)
    {
      v85 = v84[3];
      v80 = v84[1];
      [v1 bounds];
      v82 = v86 - v80 - v85;
    }

    [*&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDivider] setFrame:{v80, v81, v82, v83}];
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showBottomDivider] == 1)
  {
    sub_10076422C();
    v87 = CGRectGetMinX(v120);
    [v1 bounds];
    MaxY = CGRectGetMaxY(v121);
    if (qword_100940940 != -1)
    {
      v96 = MaxY;
      swift_once();
      MaxY = v96;
    }

    v89 = *&qword_1009A0A00;
    v90 = MaxY - *&qword_1009A0A00;
    sub_10076422C();
    v91 = CGRectGetWidth(v122);
    v92 = &v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDividerInsets];
    if (v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDividerInsets + 32])
    {
      v93 = v91;
    }

    else
    {
      v94 = v92[3];
      v87 = v92[1];
      [v1 bounds];
      v93 = v95 - v87 - v94;
    }

    [*&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDivider] setFrame:{v87, v90, v93, v89}];
  }
}

double sub_1003ADF28(double a1, double a2)
{
  v3 = v2;
  v5 = sub_10076D9AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10077164C();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_10000A5D4(&qword_100943220, qword_10079FE00);
  __chkstk_darwin(v14 - 8);
  v64 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  v19 = sub_10075FC9C();
  v20 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel];
  v21 = [v20 text];
  if (v21)
  {
    v22 = v6;
    v23 = v21;
    v55 = sub_10076FF9C();
    v66 = v24;

    v6 = v22;
  }

  else
  {
    v55 = 0;
    v66 = 0;
  }

  v61 = v6;
  (*(v6 + 56))(v18, 1, 1, v5);
  v67 = [v20 attributedText];
  v25 = [*&v3[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_subtitleLabel] text];
  if (v25)
  {
    v26 = v25;
    sub_10076FF9C();
    v65 = v27;
  }

  else
  {
    v65 = 0;
  }

  v28 = v19;
  v29 = v3[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showBottomDivider];
  v59 = v3[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showTopDivider];
  v60 = v29;
  [v3 layoutMargins];
  if (v19)
  {
    v30 = v19;
    [v30 size];
    [v30 size];
  }

  v31 = [v3 traitCollection];
  v32 = qword_100940240;
  v58 = v31;
  if (v67)
  {
    v33 = v18;
    v34 = v67;
    if (v32 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D3DC();
    v36 = sub_10000A61C(v35, qword_100955470);
    v37 = *(v35 - 8);
    (*(v37 + 16))(v13, v36, v35);
    (*(v37 + 56))(v13, 0, 1, v35);
    v38 = sub_10076C04C();
    v69 = v38;
    v70 = sub_10004C7BC();
    v39 = sub_10000DB7C(v68);
    (*(*(v38 - 8) + 104))(v39, enum case for Feature.measurement_with_labelplaceholder(_:), v38);
    sub_10076C90C();
    sub_10000CD74(v68);
    sub_10076990C();

    sub_10000CFBC(v13, &unk_100943250, &unk_1007841D0);
    v18 = v33;
    v28 = v19;
    v40 = v63;
    v41 = v61;
    v42 = v58;
  }

  else
  {
    v42 = v31;
    if (qword_100940240 != -1)
    {
      swift_once();
    }

    v43 = sub_10076D3DC();
    sub_10000A61C(v43, qword_100955470);
    v44 = sub_10076C04C();
    v69 = v44;
    v70 = sub_10004C7BC();
    v45 = sub_10000DB7C(v68);
    (*(*(v44 - 8) + 104))(v45, enum case for Feature.measurement_with_labelplaceholder(_:), v44);
    sub_10076C90C();
    sub_10000CD74(v68);
    sub_10076991C();
    v40 = v63;
    v41 = v61;
  }

  v57 = v28;
  v46 = v62;
  v47 = v64;
  if (qword_100940248 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v5, qword_100955488);
  sub_10076D42C();
  if (v65)
  {
    if (qword_100940260 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v5, qword_1009554D0);
    sub_10076D17C();
    sub_10076D97C();
    v48 = *(v46 + 8);
    v48(v10, v40);
    if (qword_100940268 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v5, qword_1009554E8);
    sub_10076D17C();
    sub_10076D97C();
    v48(v10, v40);
  }

  else
  {
    sub_1003AF06C(v18, v47);
    v49 = *(v41 + 48);
    if (v49(v47, 1, v5) == 1)
    {
      v50 = v56;
      if (qword_100940250 != -1)
      {
        swift_once();
      }

      v51 = sub_10000A61C(v5, qword_1009554A0);
      (*(v41 + 16))(v50, v51, v5);
      v52 = v64;
      if (v49(v64, 1, v5) != 1)
      {
        sub_10000CFBC(v52, &qword_100943220, qword_10079FE00);
      }
    }

    else
    {
      v50 = v56;
      (*(v41 + 32))(v56, v47, v5);
    }

    sub_10076D17C();
    v42 = v58;
    sub_10076D97C();
    (*(v46 + 8))(v10, v40);
    (*(v41 + 8))(v50, v5);
  }

  v53 = v57;
  if (v59)
  {
    if (qword_100940940 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v60 && qword_100940940 != -1)
  {
LABEL_37:
    swift_once();
  }

LABEL_36:

  sub_10000CFBC(v18, &qword_100943220, qword_10079FE00);
  return a1;
}

double sub_1003AEA88()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for DetailCollectionViewCell(0);
  v21.receiver = v0;
  v21.super_class = v5;
  objc_msgSendSuper2(&v21, "prepareForReuse");
  sub_10075FCAC();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_subtitleLabel];
  [v8 setText:0];
  v9 = type metadata accessor for Accessory(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_100199B50(v4, &v1[v10]);
  swift_endAccess();
  v11 = &v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryAction];
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryAction];
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryAction + 8];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_1000167E0(v12, v13);
  v14 = objc_opt_self();
  v15 = [v14 blackColor];
  [v7 setTextColor:v15];

  v16 = [v14 systemGrayColor];
  [v8 setTextColor:v16];

  v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showTopDivider] = 0;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDivider] setHidden:1];
  v17 = &v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDividerInsets];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showBottomDivider] = 0;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDivider] setHidden:1];
  v18 = &v1[OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDividerInsets];
  result = 0.0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  return result;
}

id sub_1003AED84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DetailCollectionViewCell(uint64_t a1)
{
  result = qword_100955578;
  if (!qword_100955578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003AEF24(uint64_t a1)
{
  sub_1003AF014(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003AF014(uint64_t a1)
{
  if (!qword_10094B950)
  {
    type metadata accessor for Accessory(255);
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_10094B950);
    }
  }
}

uint64_t sub_1003AF06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100943220, qword_10079FE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1003AF0DC()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_previousTitleTextColor) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_previousSubtitleTextColor) = 0;
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDivider;
  v5 = type metadata accessor for DividerView(0);
  *(v0 + v4) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_topDividerInsets;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showTopDivider) = 0;
  v7 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDivider;
  *(v0 + v7) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_bottomDividerInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_showBottomDivider) = 0;
  v9 = (v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_accessoryAction);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v10) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_disabled) = 0;
  v11 = (v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_selectionHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24DetailCollectionViewCell_tapGestureRecognizer) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003AF2E8()
{
  v0 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v0 - 8);
  v12[2] = v12 - v1;
  v2 = sub_10076C2DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v10 = sub_10076C20C();
  sub_10000DB18(v10, qword_10099F340);
  v12[1] = sub_10000A61C(v10, qword_10099F340);
  v13 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v13 = 0x4041000000000000;
  sub_10076C29C();
  v13 = 0x4041000000000000;
  sub_10076C29C();
  *v5 = vdupq_n_s64(0x4041000000000000uLL);
  (*(v3 + 104))(v5, enum case for PageGrid.HorizontalMargins.dynamicCenter(_:), v2);
  LOBYTE(v13) = 0;
  sub_10076C29C();
  v13 = 0;
  sub_10076C29C();
  return sub_10076C1CC();
}

uint64_t sub_1003AF600()
{
  v0 = sub_10076C2DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = sub_10076C20C();
  sub_10000DB18(v7, qword_10099F358);
  sub_10000A61C(v7, qword_10099F358);
  v10 = 0x4074F00000000000;
  sub_10001E290();
  sub_10076C29C();
  v10 = 0x404A000000000000;
  sub_10076C29C();
  v10 = 0x404A000000000000;
  sub_10076C29C();
  *v3 = vdupq_n_s64(0x404A000000000000uLL);
  (*(v1 + 104))(v3, enum case for PageGrid.HorizontalMargins.absolute(_:), v0);
  return sub_10076C1DC();
}

uint64_t sub_1003AF844()
{
  v0 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v0 - 8);
  v38 = v31 - v1;
  v44 = sub_10076C2DC();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = (v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v5 - 8);
  v33 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v37 = sub_10076C20C();
  v10 = *(*(v37 - 8) + 72);
  v43 = *(v37 - 8);
  v11 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v40 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100783DE0;
  v35 = v12;
  v42 = v12 + v11;
  v45 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v45 = 0x4030000000000000;
  sub_10076C29C();
  v45 = 0x4030000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v36 = enum case for PageGrid.HorizontalMargins.dynamicCenter(_:);
  v18 = *(v2 + 104);
  v39 = v2 + 104;
  v18(v4);
  LOBYTE(v45) = 0;
  sub_10076C29C();
  v45 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v45 = 0x3FF0000000000000;
  sub_10076C29C();
  v45 = 0x4030000000000000;
  sub_10076C29C();
  v45 = 0x4030000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v41 = v18;
  (v18)(v4, v36, v44);
  LOBYTE(v45) = 0;
  sub_10076C29C();
  v45 = 0;
  v20 = v40;
  sub_10076C29C();
  v21 = v42;
  sub_10076C1CC();
  v22 = v21 + 2 * v20;
  if (qword_100940270 != -1)
  {
    swift_once();
  }

  v23 = v37;
  v24 = sub_10000A61C(v37, qword_10099F340);
  v25 = *(v43 + 16);
  v43 += 16;
  v34 = v25;
  v25(v22, v24, v23);
  v31[1] = 3 * v20;
  v45 = 0x4000000000000000;
  sub_10076C29C();
  v45 = 0x4041000000000000;
  sub_10076C29C();
  v45 = 0x4041000000000000;
  sub_10076C29C();
  v32 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v32;
  v36 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v41(v4);
  LOBYTE(v45) = 0;
  sub_10076C29C();
  v45 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v45 = 0x4074F00000000000;
  sub_10076C29C();
  v45 = 0x4041000000000000;
  sub_10076C29C();
  v45 = 0x4041000000000000;
  sub_10076C29C();
  *v4 = v32;
  (v41)(v4, v36, v44);
  v26 = v42;
  sub_10076C1DC();
  v45 = 0x4074F00000000000;
  sub_10076C29C();
  v45 = 0x404A000000000000;
  sub_10076C29C();
  v45 = 0x404A000000000000;
  sub_10076C29C();
  *v4 = vdupq_n_s64(0x404A000000000000uLL);
  (v41)(v4, v36, v44);
  sub_10076C1DC();
  if (qword_100940278 != -1)
  {
    swift_once();
  }

  v27 = v26 + 6 * v40;
  v28 = v37;
  v29 = sub_10000A61C(v37, qword_10099F358);
  result = v34(v27, v29, v28);
  qword_100955588 = v35;
  return result;
}

id sub_1003B03B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArtworkCollectionViewCell(uint64_t a1)
{
  result = qword_1009555C0;
  if (!qword_1009555C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B04CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2908(a1, a2, a3, WitnessTable);
}

void sub_1003B0538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2BC0(a1, a2, a3, WitnessTable);
}

unint64_t sub_1003B05A4(uint64_t a1)
{
  result = sub_1003B05CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003B05CC()
{
  result = qword_1009555D0;
  if (!qword_1009555D0)
  {
    type metadata accessor for ArtworkCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009555D0);
  }

  return result;
}

char *sub_1003B0624(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for SearchResultsContextCardView.Style(0);
  __chkstk_darwin(v11);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OBJC_IVAR____TtC20ProductPageExtension42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  if (qword_10093F770 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v11, qword_10099CFD0);
  sub_10033ECF0(v16, v13);
  v17 = objc_allocWithZone(type metadata accessor for SearchResultsContextCardView(0));
  *&v5[OBJC_IVAR____TtC20ProductPageExtension42SearchResultsContextCardCollectionViewCell_content] = sub_1000F1E60(v13);
  v26.receiver = v5;
  v26.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v24 = [v22 contentView];
  [v24 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension42SearchResultsContextCardCollectionViewCell_content]];

  return v22;
}

uint64_t type metadata accessor for SearchResultsContextCardCollectionViewCell(uint64_t a1)
{
  result = qword_100955608;
  if (!qword_100955608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003B0B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1003B0F58(&qword_100950B08, type metadata accessor for SearchResultsContextCardCollectionViewCell, &unk_10079FF38);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_1003B0BC4(uint64_t a1, uint64_t a2)
{
  sub_100767BCC();
  sub_1003B0F58(&qword_100955618, &type metadata accessor for SearchResultsContextCard, &protocol conformance descriptor for SearchResultsContextCard);
  sub_10076332C();
  if (v10)
  {
    v3 = sub_100767BBC();
    v4 = sub_100767BAC();
    if (v4)
    {
      v5 = v4;
      sub_10076B8EC();
      v6 = sub_10076B8FC();
      if (v6)
      {
        v7 = v6;
        if (sub_10076BE0C())
        {
          sub_10076044C();
        }

        else if (sub_10076BDFC())
        {
          sub_1005A6008(v7, 0);
        }
      }

      sub_100259F48();
      v9 = swift_allocObject();
      *(v9 + 16) = a2;
      *(v9 + 24) = v5;

      v8 = sub_100770F1C();
    }

    else
    {
      v8 = 0;
    }

    sub_1000F2654(v3, v8);
  }
}

uint64_t sub_1003B0DB4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1003B0E0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1003B0ECC()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42SearchResultsContextCardCollectionViewCell_content];
  sub_100244488();
  v2 = *(v1 + qword_100948710);
  *(v1 + qword_100948710) = 0;
  sub_1000F238C(v2);
}

uint64_t sub_1003B0F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1003B0FA4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076C38C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100767BCC();
  sub_1003B0F58(&qword_100955618, &type metadata accessor for SearchResultsContextCard, &protocol conformance descriptor for SearchResultsContextCard);
  sub_10076332C();
  if (!v25)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_10076338C();

  v7 = v25;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v9 = v8;
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  v12 = sub_100767BBC();
  v13 = sub_100767BAC();
  if (v13)
  {
    v14 = v13;
    sub_10076B8EC();
    v15 = sub_10076B8FC();
    if (v15)
    {
      v16 = v15;
      if (sub_10076BE0C())
      {
        sub_10076044C();
      }

      else if (sub_10076BDFC())
      {
        sub_1005A6008(v16, 0);
      }
    }

    sub_100259F48();
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = v14;

    v18 = sub_100770F1C();
  }

  else
  {
    v18 = 0;
  }

  if (qword_10093F770 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for SearchResultsContextCardView.Style(0);
  v21 = sub_10000A61C(v20, qword_10099CFD0);
  sub_1000F3380(v7, v9, v11, v12, v18, v21);
  v17 = v22;

  return v17;
}

uint64_t sub_1003B12F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38[-1] - v10;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v9 + 8))(v11, v8);
  if ((v38[0] & 1) == 0)
  {
    sub_10076460C();
    sub_10076C21C();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if (v14 <= 1.0)
    {
      sub_1004C4110(a1);
      return v12;
    }

    sub_1003B1E30(v38);
    v15 = v38[0];
    v16 = v38[1];
    v17 = *&v38[2];
    if (v39)
    {
      v18 = 0;
    }

    else
    {
      v21 = v38[3];
      v20 = v38[4];
      v22 = *&v38[5];
      swift_beginAccess();
      v23 = *(v1 + 16);
      if (*(v23 + 16) && (v24 = sub_100610120(v21, v20, v22), (v25 & 1) != 0))
      {
        v18 = *(*(v23 + 56) + 8 * v24);
      }

      else
      {
        v18 = 0;
      }

      swift_endAccess();
    }

    swift_beginAccess();
    v26 = *(v2 + 16);
    if (*(v26 + 16) && (v27 = sub_100610120(v15, v16, v17), (v28 & 1) != 0))
    {
      v19 = *(*(v26 + 56) + 8 * v27);
      swift_endAccess();

      if (!v18)
      {
LABEL_16:

        goto LABEL_23;
      }
    }

    else
    {
      swift_endAccess();
      sub_1004C4110(a1);
      v19 = v29;
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    v30 = *(v18 + 16);
    if (v30)
    {
      v31 = *(v18 + 8 * v30 + 24);

      if (*(v19 + 16))
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_23:
    v31 = 0;
    if (*(v19 + 16))
    {
LABEL_24:
      v32 = *(v19 + 32);

      if (v31)
      {
        if (!v32)
        {
          goto LABEL_31;
        }

        v33 = sub_1000CCB4C(v31, v32);

        if ((v33 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v32)
      {
LABEL_31:

LABEL_32:
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = *(v2 + 16);
        *(v2 + 16) = 0x8000000000000000;
        sub_10024A170(v19, v15, v16, isUniquelyReferenced_nonNull_native, v17);
        *(v2 + 16) = v37;
        swift_endAccess();
        return v19;
      }

LABEL_30:
      sub_1004C1FE4(v19);
      v19 = v34;
      goto LABEL_31;
    }

LABEL_20:

    if (v31)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return sub_1004C4320(a1);
}

void sub_1003B1704()
{
  v0 = sub_10076469C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007633CC();
  sub_1007632FC();
  v5 = sub_1003B12F0(v3);
  sub_1003B1A8C(v5);
  v7 = v6;

  v8 = *(v7 + 16);
  if (v8)
  {
    if (((v4 % v8) & 0x8000000000000000) == 0)
    {

      (*(v1 + 8))(v3, v0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Int sub_1003B182C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_10077175C();
  sub_10077176C(v1);
  sub_10077176C(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  sub_10077178C(*&v4);
  return sub_1007717AC();
}

void sub_1003B18AC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_10077176C(*v0);
  sub_10077176C(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_10077178C(*&v3);
}

Swift::Int sub_1003B1908(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_10077175C();
  sub_10077176C(v2);
  sub_10077176C(v3);
  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  sub_10077178C(*&v5);
  return sub_1007717AC();
}

uint64_t getEnumTagSinglePayload for TodayCardGridTracker.TrackedSectionKey(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TodayCardGridTracker.TrackedSectionKey(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_1003B1A38()
{
  result = qword_1009556C0;
  if (!qword_1009556C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009556C0);
  }

  return result;
}

void sub_1003B1A8C(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 32;
  v5 = _swiftEmptyArrayStorage;
  v6 = &_swiftEmptyArrayStorage[4];
LABEL_3:
  v8 = *(a1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_29:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(a1 + 16);
        if (v3 == v10)
        {
          goto LABEL_25;
        }

        if (v3 >= v10)
        {
          goto LABEL_29;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + v11 + 32);
        if (!v2)
        {
          v13 = *(v5 + 3);
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_32;
          }

          v26 = *(v9 + v11 + 32);
          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          sub_10000A5D4(&qword_10094E578, &qword_1007968E0);
          v16 = swift_allocObject();
          v17 = 2 * j__malloc_size(v16) - 64;
          *(v16 + 2) = v15;
          *(v16 + 3) = v17;
          v18 = v16 + 32;
          v19 = *(v5 + 3) >> 1;
          if (*(v5 + 2))
          {
            v20 = v5 + 32;
            if (v16 != v5 || v18 >= &v20[v19])
            {
              v21 = v17;
              memmove(v16 + 32, v20, v19);
              v17 = v21;
            }

            *(v5 + 2) = 0;
          }

          v6 = &v18[v19];
          v2 = (v17 >> 1) - v19;

          v5 = v16;
          v12 = v26;
        }

        v22 = __OFSUB__(v2--, 1);
        if (v22)
        {
          goto LABEL_31;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_25:

  v23 = *(v5 + 3);
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v22 = __OFSUB__(v24, v2);
    v25 = v24 - v2;
    if (v22)
    {
LABEL_33:
      __break(1u);
      return;
    }

    *(v5 + 2) = v25;
  }
}

void sub_1003B1C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    v6 = &_swiftEmptyArrayStorage[4];
    while (1)
    {
      *&v21[0] = v3;
      sub_10000CD08(v5, v21 + 8);
      v23 = v21[0];
      v24 = v21[1];
      v25 = v22;
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_10000A5D4(&qword_1009556C8, &qword_1007A0168);
        v10 = swift_allocObject();
        v11 = (j__malloc_size(v10) - 32) / 40;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[5 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 40 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + 40 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v23;
      v17 = v24;
      v6[4] = v25;
      *v6 = v16;
      *(v6 + 1) = v17;
      v6 += 5;
      v5 += 32;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = v2[3];
  if (v18 >= 2)
  {
    v19 = v18 >> 1;
    v15 = __OFSUB__(v19, v4);
    v20 = v19 - v4;
    if (v15)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v2[2] = v20;
  }
}

uint64_t sub_1003B1E30@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v1 - 8);
  v37 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v29 - v4;
  v5 = sub_10076C38C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v34 = sub_10076467C();
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v30 = *(v10 + 8);
  v30(v14, v9);
  v32 = *(v38 + 16);

  sub_10076460C();
  sub_10076C24C();
  v16 = v15;
  v17 = *(v6 + 8);
  v31 = v5;
  v29 = v17;
  v17(v8, v5);
  v18 = v36;
  v19 = v37;
  sub_10076463C();
  sub_1003B2204(v19);
  v20 = (*(v10 + 48))(v18, 1, v9);
  if (v20 == 1)
  {
    result = sub_1003B2204(v18);
    v22 = 0;
    v23 = 0;
    v24 = 0;
LABEL_5:
    v27 = v35;
    v28 = v32;
    *v35 = v34;
    v27[1] = v28;
    v27[2] = v16;
    v27[3] = v22;
    v27[4] = v23;
    v27[5] = v24;
    *(v27 + 48) = v20 == 1;
    return result;
  }

  (*(v10 + 32))(v33, v18, v9);
  result = sub_10076467C();
  v22 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    swift_getKeyPath();
    v25 = v33;
    sub_10076F49C();

    v23 = *(v38 + 16);

    sub_10076460C();
    sub_10076C24C();
    v24 = v26;
    v29(v8, v31);
    result = (v30)(v25, v9);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003B2204(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1003B226C()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DE6C();
  v4 = sub_10075DE0C();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10099F380 = 10329570;
  *(&xmmword_10099F380 + 1) = 0xA300000000000000;
  *&xmmword_10099F390 = 10395106;
  *(&xmmword_10099F390 + 1) = 0xA300000000000000;
  *&xmmword_10099F3A0 = v4;
  *(&xmmword_10099F3A0 + 8) = xmmword_1007A0170;
  *(&xmmword_10099F3B0 + 8) = xmmword_1007A0180;
  result = 5.0;
  unk_10099F3C8 = xmmword_1007905C0;
  return result;
}

double sub_1003B237C()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DE6C();
  v4 = sub_10075DE0C();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10099F3D8 = 10395106;
  *(&xmmword_10099F3D8 + 1) = 0xA300000000000000;
  *&xmmword_10099F3E8 = 10395106;
  *(&xmmword_10099F3E8 + 1) = 0xA300000000000000;
  *&xmmword_10099F3F8 = v4;
  *(&xmmword_10099F3F8 + 8) = xmmword_1007A0170;
  *(&xmmword_10099F408 + 8) = xmmword_1007A0180;
  result = 5.0;
  unk_10099F420 = xmmword_1007905C0;
  return result;
}

double sub_1003B2488()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DE6C();
  v4 = sub_10075DE0C();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10099F430 = 10387682;
  *(&xmmword_10099F430 + 1) = 0xA300000000000000;
  *&xmmword_10099F440 = 10256610;
  *(&xmmword_10099F440 + 1) = 0xA300000000000000;
  *&xmmword_10099F450 = v4;
  *(&xmmword_10099F450 + 8) = xmmword_1007A0190;
  __asm { FMOV            V0.2D, #8.0 }

  *(&xmmword_10099F460 + 8) = _Q0;
  result = 7.0;
  *&algn_10099F470[8] = xmmword_1007A01A0;
  return result;
}

double sub_1003B2594()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DE6C();
  v4 = sub_10075DE0C();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10099F488 = 43970;
  *(&xmmword_10099F488 + 1) = 0xA200000000000000;
  *&xmmword_10099F498 = 48066;
  *(&xmmword_10099F498 + 1) = 0xA200000000000000;
  *&xmmword_10099F4A8 = v4;
  *(&xmmword_10099F4A8 + 8) = xmmword_1007A01B0;
  *(&xmmword_10099F4B8 + 8) = xmmword_1007A01C0;
  result = 7.0;
  unk_10099F4D0 = xmmword_1007A01A0;
  return result;
}

double sub_1003B26A0()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DE6C();
  v4 = sub_10075DE0C();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10099F4E0 = 9208035;
  *(&xmmword_10099F4E0 + 1) = 0xA300000000000000;
  *&xmmword_10099F4F0 = 9273571;
  *(&xmmword_10099F4F0 + 1) = 0xA300000000000000;
  *&xmmword_10099F500 = v4;
  *(&xmmword_10099F500 + 8) = xmmword_1007A01D0;
  *(&xmmword_10099F510 + 8) = xmmword_1007A01E0;
  result = 9.0;
  unk_10099F528 = xmmword_1007A01F0;
  return result;
}

id sub_1003B27D8(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() systemFontOfSize:a1 weight:UIFontWeightBold];
  *a3 = result;
  return result;
}

id sub_1003B2838()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.78 green:0.78 blue:0.8 alpha:1.0];
  qword_1009556E0 = result;
  return result;
}

uint64_t sub_1003B2A28(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D9AC();
  sub_10000DB18(v8, a3);
  sub_10000A61C(v8, a3);
  if (qword_1009402C8 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_10099F538);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_10076D9BC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003B2C14(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D9AC();
  sub_10000DB18(v8, a3);
  sub_10000A61C(v8, a3);
  if (qword_1009402D0 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_10099F550);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_10076D9BC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003B2E00()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099F5C8);
  sub_10000A61C(v4, qword_10099F5C8);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

void sub_1003B2F6C(uint64_t a1, id a2)
{
  v3 = v2;
  sub_100764D2C();

  sub_100764CDC();
  sub_100764CCC();
  v5 = sub_100764D4C();
  v6 = &selRef_initWithTabBarSystemItem_tag_;
  v60 = v5;
  if (v5)
  {
    v7 = sub_100764CFC();
    v8 = v7;
    v9 = &v2[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs];
    if (v7 != *&v2[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs + 32])
    {
      v58 = a2;
      *(v9 + 4) = v7;
      v55 = *&v9[16 * (v7 == 1)];
      v56 = *&v2[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_leadingQuote];

      sub_10000A5D4(&unk_10094E7E0, qword_100785360);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100784500;
      *(inited + 32) = NSFontAttributeName;
      v11 = qword_1009402B0;
      v12 = NSFontAttributeName;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = qword_1009556D0;
      v14 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
      *(inited + 40) = v13;
      *(inited + 64) = v14;
      *(inited + 72) = NSForegroundColorAttributeName;
      v15 = qword_1009402C0;
      v16 = v13;
      v17 = NSForegroundColorAttributeName;
      if (v15 != -1)
      {
        swift_once();
      }

      v18 = qword_1009556E0;
      *(inited + 104) = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      *(inited + 80) = v18;
      v19 = v18;
      sub_1000FC5F4(inited);
      swift_setDeallocating();
      sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
      swift_arrayDestroy();
      v20 = objc_allocWithZone(NSAttributedString);
      v21 = sub_10076FF6C();

      type metadata accessor for Key(0);
      sub_1001E4F38();
      isa = sub_10076FE3C().super.isa;

      v23 = [v20 initWithString:v21 attributes:isa];

      v6 = &selRef_initWithTabBarSystemItem_tag_;
      [v56 setAttributedText:v23];

      v24 = *(v9 + 3);
      v62[2] = *(v9 + 2);
      v62[3] = v24;
      v62[4] = *(v9 + 4);
      v63 = *(v9 + 10);
      v25 = *(v9 + 1);
      v62[0] = *v9;
      v62[1] = v25;
      v26 = objc_allocWithZone(type metadata accessor for QuotesLabel());
      sub_100375BC0(v62, v61);
      v27 = [v26 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v28 = sub_1003B52DC(v62);

      sub_100375C20(v62);
      v29 = *&v3[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_trailingQuote];
      *&v3[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_trailingQuote] = v28;

      a2 = v58;
    }
  }

  else
  {
    v8 = -1;
  }

  v30 = *&v3[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteLabel];
  v31 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_1009402C8 != -1)
  {
    swift_once();
  }

  v32 = sub_10076D3DC();
  sub_10000A61C(v32, qword_10099F538);
  v33 = [v3 traitCollection];
  v34 = sub_100770B3C();

  if (a2)
  {
    v57 = v30;
    v35 = *&v3[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_trailingQuote];
    v36 = *&v3[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs + 72];
    sub_10000A5D4(&unk_10094E7E0, qword_100785360);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_100784500;
    *(v37 + 32) = NSParagraphStyleAttributeName;
    v38 = qword_10093F680;
    v39 = NSParagraphStyleAttributeName;
    v59 = v35;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = [qword_10099CDD8 paragraphStyleWithBaseWritingDirection:{v8, v55}];
    v41 = sub_100016F40(0, &qword_10094D748, NSParagraphStyle_ptr);
    *(v37 + 40) = v40;
    *(v37 + 64) = v41;
    *(v37 + 72) = NSFontAttributeName;
    *(v37 + 104) = v31;
    *(v37 + 80) = v34;
    v42 = NSFontAttributeName;
    v34 = v34;
    sub_1000FC5F4(v37);
    swift_setDeallocating();
    sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
    swift_arrayDestroy();
    v43 = objc_allocWithZone(NSMutableAttributedString);
    v44 = sub_10076FF6C();
    type metadata accessor for Key(0);
    sub_1001E4F38();
    v45 = sub_10076FE3C().super.isa;

    a2 = [v43 initWithString:v44 attributes:v45];

    if (v35)
    {
      v46 = v59;
      sub_1000FC5F4(_swiftEmptyArrayStorage);
      v47 = objc_allocWithZone(NSAttributedString);
      v48 = sub_10076FF6C();
      v49 = sub_10076FE3C().super.isa;

      v50 = [v47 initWithString:v48 attributes:v49];

      [a2 appendAttributedString:v50];
      v51 = [objc_allocWithZone(NSTextAttachment) init];
      [v51 setImage:v46];
      [v46 size];
      [v51 setBounds:{0.0, -v36, v52, v53}];
      v54 = [objc_opt_self() attributedStringWithAttachment:v51];
      [a2 appendAttributedString:v54];

      v34 = v46;
    }

    else
    {
    }

    v5 = v60;
    v6 = &selRef_initWithTabBarSystemItem_tag_;
    v30 = v57;
  }

  [v30 v6[192]];
}

void sub_1003B36E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v35 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_creditLabel;
  v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_creditLabel];
  if (!v14 || (v15 = [v14 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v36 = v6;
  v16 = a1;
  v17 = v15;
  v18 = sub_10076FF9C();
  v20 = v19;

  if (!a2)
  {

    v6 = v36;
    v23 = *&v2[v13];
    if (v23)
    {
      goto LABEL_18;
    }

LABEL_12:
    v24 = v2;
    if (qword_1009402D0 != -1)
    {
      swift_once();
    }

    v25 = sub_10076D3DC();
    v26 = sub_10000A61C(v25, qword_10099F550);
    v27 = *(v25 - 8);
    (*(v27 + 16))(v12, v26, v25);
    (*(v27 + 56))(v12, 0, 1, v25);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v28 = objc_allocWithZone(sub_1007626BC());
    v29 = sub_1007626AC();
    v2 = v24;
    v30 = *&v24[v13];
    *&v24[v13] = v29;
    v31 = v29;

    v32 = [objc_opt_self() systemGrayColor];
    [v31 setTextColor:v32];

    if (!*&v24[v13])
    {
      __break(1u);
      return;
    }

    [v24 addSubview:?];
    v23 = *&v24[v13];
    if (!v23)
    {

LABEL_22:
      [v2 setNeedsLayout];
      return;
    }

LABEL_18:
    v33 = v23;
    if (a2)
    {
      v34 = sub_10076FF6C();
    }

    else
    {
      v34 = 0;
    }

    [v33 setText:v34];

    goto LABEL_22;
  }

  if (v18 != v16 || v20 != a2)
  {
    v22 = sub_10077167C();

    v6 = v36;
    if (v22)
    {
      goto LABEL_25;
    }

LABEL_11:
    v23 = *&v2[v13];
    if (v23)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_25:
}

id sub_1003B3AD0()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkHasRoundedCorners] = v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork] ^ 1;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView];
  (*(v3 + 104))(v6, enum case for CornerStyle.continuous(_:), v2, v4);
  v8 = v7;
  sub_10075FD1C();

  (*(v3 + 8))(v6, v2);
  return [v1 setNeedsLayout];
}

char *sub_1003B3C18(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v14 - 8);
  v16 = v77 - v15;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_trailingQuote] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_creditLabel] = 0;
  v17 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
  v18 = sub_10076D39C();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkHasRoundedCorners] = 0;
  v19 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_leadingQuote] = v19;
  if (qword_1009402C8 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D3DC();
  v21 = sub_10000A61C(v20, qword_10099F538);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v16, v21, v20);
  (*(v22 + 56))(v16, 0, 1, v20);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v23 = objc_allocWithZone(sub_1007626BC());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteLabel] = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v86._object = 0x80000001007E1440;
  v86._countAndFlagsBits = 0xD000000000000010;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v24 = sub_1007622EC(v86, v87);
  v26 = sub_1003B5290(v24, v25);
  if (v26 > 2)
  {
    if (v26 - 3 < 2)
    {
      if (qword_1009402A0 != -1)
      {
        swift_once();
      }

      v27 = &xmmword_10099F488;
      goto LABEL_23;
    }

    if (v26 == 5)
    {
      if (qword_1009402A8 != -1)
      {
        swift_once();
      }

      v27 = &xmmword_10099F4E0;
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (!v26)
  {
LABEL_17:
    if (qword_100940288 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_10099F380;
    goto LABEL_23;
  }

  if (v26 == 1)
  {
    if (qword_100940290 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_10099F3D8;
  }

  else
  {
    if (qword_100940298 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_10099F430;
  }

LABEL_23:
  v28 = v27[4];
  *&v84[16] = v27[3];
  *&v84[32] = v28;
  v85 = *(v27 + 10);
  v29 = v27[2];
  v83 = v27[1];
  *v84 = v29;
  v82 = *v27;
  v30 = *&v84[40];
  v31 = v85;
  v78 = *&v84[8];
  v79 = *&v84[24];
  v33 = *(&v83 + 1);
  v32 = v29;
  v35 = *(&v82 + 1);
  v34 = v83;
  v36 = v82;
  sub_100375BC0(&v82, v81);
  v37 = &v5[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs];
  *v37 = v36;
  *(v37 + 1) = v35;
  *(v37 + 2) = v34;
  *(v37 + 3) = v33;
  *(v37 + 4) = v32;
  v38 = v78;
  *(v37 + 56) = v79;
  *(v37 + 40) = v38;
  *(v37 + 9) = v30;
  *(v37 + 10) = v31;
  v39 = type metadata accessor for QuoteView(0);
  v80.receiver = v5;
  v80.super_class = v39;
  v40 = objc_msgSendSuper2(&v80, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v44 = v40;
  [v44 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v45 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView;
  v46 = *&v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView];
  sub_10075FB7C();

  v47 = *&v44[v45];
  sub_10075FBAC();
  sub_1007638EC();

  v48 = *&v44[v45];
  sub_10075FB9C();
  sub_1007638DC();

  [*&v44[v45] setHidden:1];
  v49 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_leadingQuote;
  [*&v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_leadingQuote] setClipsToBounds:0];
  v50 = *&v44[v49];
  v51 = &v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs];
  v77[1] = *&v44[16 * (*&v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs + 32] == 1) + OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteGlyphs];
  *&v78 = v49;

  sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSFontAttributeName;
  v53 = qword_1009402B0;
  *&v79 = v50;
  v54 = NSFontAttributeName;
  if (v53 != -1)
  {
    swift_once();
  }

  v55 = qword_1009556D0;
  v56 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  *(inited + 40) = v55;
  *(inited + 64) = v56;
  *(inited + 72) = NSForegroundColorAttributeName;
  v57 = qword_1009402C0;
  v58 = v55;
  v59 = NSForegroundColorAttributeName;
  if (v57 != -1)
  {
    swift_once();
  }

  v60 = qword_1009556E0;
  *(inited + 104) = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  *(inited + 80) = v60;
  v61 = v60;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
  swift_arrayDestroy();
  v62 = objc_allocWithZone(NSAttributedString);
  v63 = sub_10076FF6C();

  type metadata accessor for Key(0);
  sub_1001E4F38();
  isa = sub_10076FE3C().super.isa;

  v65 = [v62 initWithString:v63 attributes:isa];

  v66 = v79;
  [v79 setAttributedText:v65];

  [v44 addSubview:*&v44[v78]];
  v67 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteLabel;
  [*&v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_quoteLabel] setTextAlignment:4];
  [v44 addSubview:*&v44[v67]];
  [v44 addSubview:*&v44[v45]];
  v68 = *(v51 + 1);
  v82 = *v51;
  v83 = v68;
  v69 = *(v51 + 2);
  v70 = *(v51 + 3);
  v71 = *(v51 + 4);
  v85 = *(v51 + 10);
  *&v84[16] = v70;
  *&v84[32] = v71;
  *v84 = v69;
  v72 = objc_allocWithZone(type metadata accessor for QuotesLabel());
  sub_100375BC0(&v82, v81);
  v73 = [v72 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v74 = sub_1003B52DC(&v82);

  sub_100375C20(&v82);
  v75 = *&v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_trailingQuote];
  *&v44[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_trailingQuote] = v74;

  return v44;
}