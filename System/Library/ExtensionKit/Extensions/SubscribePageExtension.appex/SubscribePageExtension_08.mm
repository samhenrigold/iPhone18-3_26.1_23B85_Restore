id sub_1000E5A4C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000E5AA4()
{
  result = qword_100923730;
  if (!qword_100923730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100923730);
  }

  return result;
}

unint64_t sub_1000E5AF0()
{
  result = qword_100927EA0;
  if (!qword_100927EA0)
  {
    sub_1007417F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927EA0);
  }

  return result;
}

uint64_t sub_1000E5B48()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000E5B88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1000E5BA0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v82 = a3;
  v79 = a2;
  v70 = sub_100741C54();
  v78 = *(v70 - 8);
  __chkstk_darwin(v70);
  v80 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v81 = &v67 - v16;
  v17 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v17 - 8);
  v77 = &v67 - v18;
  v75 = sub_10074C3E4();
  v71 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v67 - v20;
  v21 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  *&v22 = __chkstk_darwin(v21 - 8).n128_u64[0];
  v24 = &v67 - v23;
  v25 = [v7 contentView];
  [v25 setLayoutMargins:{a4, a5, a6, a7}];

  v26 = a1;
  sub_10074EF34();
  v28 = v27;
  v29 = v8;
  v30 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  if (v27)
  {
    v31 = sub_100753064();
  }

  else
  {
    v31 = 0;
  }

  [v30 setText:v31];

  [v30 setHidden:v28 == 0];
  [v29 setNeedsLayout];
  v32 = sub_100741D14();
  v33 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
  v34 = "onLayoutEnvironment>16";
  if (v32)
  {
    v34 = "ultType.Heading.InAppPurchase";
    v35._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v35._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v35._object = (v34 | 0x8000000000000000);
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  sub_1007458B4(v35, v86);
  v36 = sub_100753064();

  [v33 setText:v36];

  sub_100741D44();
  v37 = sub_10074EF34();
  v39 = v38;

  if (v39)
  {
    v85._countAndFlagsBits = 0xD000000000000035;
    v85._object = 0x800000010076A180;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    sub_1007458B4(v85, v87);
    sub_10000C518(&unk_100927770, &unk_1007BA6E0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1007A5A00;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_1000DD048();
    *(v40 + 32) = v37;
    *(v40 + 40) = v39;
    sub_1007530B4();

    v41 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];

    v42 = sub_100753064();

    [v41 setText:v42];

    [v41 setHidden:0];
  }

  else
  {
    v43 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
    [v43 setText:0];
    [v43 setHidden:1];
  }

  [v29 setNeedsLayout];
  sub_100741D24();
  v45 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  if (v44)
  {
    v46 = sub_100753064();
    [v45 setText:v46];

    [v45 setHidden:0];
  }

  else
  {
    [*&v29[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] setText:0];
    [v45 setHidden:1];
  }

  [v29 setNeedsLayout];
  v47 = sub_10074EF04();
  v69 = v26;
  v48 = sub_10074EDF4();
  v49 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
  (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
  v50 = v71;
  v51 = v75;
  (*(v71 + 104))(v72, enum case for OfferButtonSubtitlePosition.below(_:), v75);
  (*(v50 + 56))(v77, 1, 1, v51);
  sub_1000E6544(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v52 = v73;
  sub_10074A9C4();
  sub_10015DE40(v47, v48, 0, v24, v52, v79, 0, 0);

  (*(v74 + 8))(v52, v76);
  sub_10005652C(v24);
  v68 = v29;
  v53 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v83.value.super.isa = 0;
  v83.is_nil = 0;
  sub_100743384(v83, v54);
  v84.value.super.isa = 0;
  v84.is_nil = 0;
  sub_100743384(v84, v55);
  sub_1007433C4();
  sub_1000E6544(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v56 = v82;
  sub_100744274();
  sub_100744274();
  v79 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor];
  v57 = v81;
  sub_100741D34();
  v58 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  v59 = v78;
  v60 = v70;
  (*(v78 + 24))(&v53[v58], v57, v70);
  swift_endAccess();
  v61 = *(v59 + 16);
  v62 = v80;
  v61(v80, &v53[v58], v60);
  sub_100275D50(v62);
  v63 = *(v59 + 8);
  v63(v62, v60);
  v63(v57, v60);
  v64 = v68;
  [v53 setBackgroundColor:v79];
  sub_1006C2A3C(93.0, 93.0, v69, v53, v56);
  v61(v57, &v53[v58], v60);
  sub_100275D50(v57);
  v63(v57, v60);
  [v53 setNeedsLayout];
  sub_10000D198();
  v65 = sub_100753E04();
  [v64 setBackgroundColor:v65];

  return [v64 setNeedsLayout];
}

uint64_t sub_1000E6544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1000E658C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100743584();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension23AppEventPlaceholderView_formattedDatePlaceholder;
  sub_100743794();
  v15 = sub_100743784();
  v17 = v16;
  if (qword_100921568 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_100981D70);
  v20 = sub_10071B670(v15, v17, v19);

  *&v5[v14] = v20;
  v21 = OBJC_IVAR____TtC22SubscribePageExtension23AppEventPlaceholderView_appEventPlaceholder;
  (*(v11 + 104))(v13, enum case for CornerStyle.continuous(_:), v10);
  sub_100746ED4();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondarySystemBackgroundColor];
  [v24 setBackgroundColor:v25];

  sub_100746E34();
  (*(v11 + 8))(v13, v10);
  *&v5[v21] = v24;
  v26 = type metadata accessor for AppEventPlaceholderView();
  v31.receiver = v5;
  v31.super_class = v26;
  v27 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v28 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension23AppEventPlaceholderView_formattedDatePlaceholder];
  v29 = v27;
  [v29 addSubview:v28];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC22SubscribePageExtension23AppEventPlaceholderView_appEventPlaceholder]];

  return v29;
}

uint64_t sub_1000E6868()
{
  v1 = v0;
  v2 = sub_100750354();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_100741574();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for AppEventPlaceholderView();
  v30.receiver = v0;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, "layoutSubviews");
  sub_1007477B4();
  result = CGRectIsEmpty(v31);
  if ((result & 1) == 0)
  {
    v25 = v2;
    if (qword_100920180 != -1)
    {
      swift_once();
    }

    sub_1000CD660(&unk_10097D3C0, v28);
    v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23AppEventPlaceholderView_formattedDatePlaceholder];
    v27[3] = sub_100745C84();
    v27[4] = &protocol witness table for UILabel;
    v27[0] = v12;
    sub_1000CD660(v28, v26);
    v13 = v12;
    sub_100741544();
    LOBYTE(v12) = sub_100741554();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      sub_100750884();
      sub_1000CD6BC(v28);
    }

    else
    {
      sub_1000CD6BC(v28);
      sub_10000C824(v27, &v26[168]);
    }

    memset(&v26[208], 0, 120);
    memcpy(v29, v26, sizeof(v29));
    sub_10000C620(v27);
    sub_1007477B4();
    AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(v1, v14, v15, v16, v17);
    (*(v3 + 8))(v5, v25);
    sub_1007477B4();
    sub_1000CD7E4(v1, v29, v18, v19);
    v21 = v20;
    v22 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23AppEventPlaceholderView_appEventPlaceholder);
    sub_1007477B4();
    MinX = CGRectGetMinX(v32);
    sub_1007477B4();
    Width = CGRectGetWidth(v33);
    sub_1007477B4();
    [v22 setFrame:{MinX, v21, Width, CGRectGetHeight(v34) - v21}];
    return sub_1000CD59C(v29);
  }

  return result;
}

id sub_1000E6C18(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppEventPlaceholderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000E6CBC()
{
  v1 = v0;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension23AppEventPlaceholderView_formattedDatePlaceholder;
  sub_100743794();
  v7 = sub_100743784();
  v9 = v8;
  if (qword_100921568 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, qword_100981D70);
  v12 = sub_10071B670(v7, v9, v11);

  *(v1 + v6) = v12;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension23AppEventPlaceholderView_appEventPlaceholder;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_100746ED4();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 secondarySystemBackgroundColor];
  [v16 setBackgroundColor:v17];

  sub_100746E34();
  (*(v3 + 8))(v5, v2);
  *(v1 + v13) = v16;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1000E6F60()
{
  v0 = sub_100742414();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  sub_100742954();
  sub_1000E7534(&qword_100927F90, &type metadata accessor for AppPromotion, &protocol conformance descriptor for AppPromotion);
  sub_1007468B4();
  if (!v14[1])
  {
    return 0;
  }

  sub_100742944();
  (*(v1 + 16))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for AppPromotionType.appEvent(_:))
  {
    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppEventCollectionViewCell(0);
    v9 = &unk_100927FA0;
    v10 = type metadata accessor for AppEventCollectionViewCell;
    v11 = &unk_1007BD0D0;
  }

  else
  {
    if (v7 != enum case for AppPromotionType.contingentOffer(_:) && v7 != enum case for AppPromotionType.offerItem(_:))
    {
      result = sub_100754744();
      __break(1u);
      return result;
    }

    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppPromotionOfferCollectionViewCell(0);
    v9 = &unk_100927F98;
    v10 = type metadata accessor for AppPromotionOfferCollectionViewCell;
    v11 = &unk_1007C6D38;
  }

  sub_1000E7534(v9, v10, v11);
  return v8;
}

uint64_t sub_1000E71E8()
{
  v0 = sub_10074E984();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v15 - v5;
  v7 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.appPromotion(_:), v0);
  sub_1000E7534(&qword_100926DD0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_100753274();
  sub_100753274();
  if (v15[2] == v15[0] && v15[3] == v15[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);

    return sub_1000E6F60();
  }

  v12 = sub_100754754();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);

  if (v12)
  {
    return sub_1000E6F60();
  }

  return 0;
}

uint64_t sub_1000E7534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000E7590()
{
  result = qword_100927FA8;
  if (!qword_100927FA8)
  {
    sub_10074DCD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927FA8);
  }

  return result;
}

uint64_t sub_1000E75E8(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a3;
  v5 = sub_100752624();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100752404();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v11 = sub_100752E44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = qword_100921EE0;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v11, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v29._object = 0x800000010076A7D0;
    v29._countAndFlagsBits = 0xD000000000000038;
    sub_1007523E4(v29);
    *(&v28 + 1) = sub_1000E80E4();
    *&v27 = v16;
    v17 = v16;
    sub_1007523C4();
    sub_1000277BC(&v27);
    v30._countAndFlagsBits = 0x745368747561202CLL;
    v30._object = 0xEE00203A73757461;
    sub_1007523E4(v30);
    v18 = [v17 authorizationStatus];
    type metadata accessor for UNAuthorizationStatus(0);
    *(&v28 + 1) = v19;
    *&v27 = v18;
    sub_1007523C4();
    sub_1000277BC(&v27);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_1007523E4(v31);
    sub_100752414();
    sub_100752CE4();

    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5);
    sub_100752DB4();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v21 = sub_10000D0FC(v11, qword_100983318);
    (*(v12 + 16))(v14, v21, v11);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v32._countAndFlagsBits = 0xD00000000000003BLL;
    v32._object = 0x800000010076A790;
    sub_1007523E4(v32);
    v27 = 0u;
    v28 = 0u;
    sub_1007523C4();
    sub_1000277BC(&v27);
    v33._countAndFlagsBits = 0x3A726F727265202CLL;
    v33._object = 0xE900000000000020;
    sub_1007523E4(v33);
    if (a2)
    {
      swift_getErrorValue();
      v22 = sub_1007547C4();
      v24 = &type metadata for String;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *&v28 = 0;
    }

    *&v27 = v22;
    *(&v27 + 1) = v23;
    *(&v28 + 1) = v24;
    sub_1007523C4();
    sub_1000277BC(&v27);
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_1007523E4(v34);
    sub_100752414();
    sub_100752CE4();

    (*(v12 + 8))(v14, v11);
    sub_1000E8070();
    swift_allocError();
    *v25 = 1;
    sub_100752DA4();
  }
}

void sub_1000E7BD4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000E7C64()
{
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v0 = sub_100752DE4();
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v3 = sub_100752E44();
    sub_10000D0FC(v3, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    v4 = [objc_allocWithZone(AMSUserNotificationAuthorizationOptions) init];
    [v4 setUserInitiated:1];
    v5 = [objc_allocWithZone(AMSUserNotificationAuthorizationTask) initWithBundleIdentifier:v2 options:v4];

    v6 = [v5 requestAuthorization];
    v11[4] = sub_1000E80C4;
    v11[5] = v0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000E7BD4;
    v11[3] = &unk_100867C80;
    v7 = _Block_copy(v11);

    [v6 addFinishBlock:v7];
    _Block_release(v7);
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v8 = sub_100752E44();
    sub_10000D0FC(v8, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    sub_1000E8070();
    swift_allocError();
    *v9 = 0;
    sub_100752DA4();
  }

  return v0;
}

unint64_t sub_1000E8070()
{
  result = qword_100927FB0;
  if (!qword_100927FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927FB0);
  }

  return result;
}

double sub_1000E80CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1000E80E4()
{
  result = qword_100927FB8;
  if (!qword_100927FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100927FB8);
  }

  return result;
}

unint64_t sub_1000E8144()
{
  result = qword_100927FC0;
  if (!qword_100927FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927FC0);
  }

  return result;
}

double sub_1000E81E0(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10074F704();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1000E82B4(a1, v4);
  v7 = v6;
  sub_1000E94F8(v4);
  return v7;
}

void *sub_1000E82B4(uint64_t a1, id a2)
{
  v127 = a2;
  v3 = sub_10000C518(&qword_100927FD0, &qword_1007AB6D0);
  v119 = *(v3 - 8);
  __chkstk_darwin(v3);
  v118 = &v91 - v4;
  v113 = sub_100748604();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v114 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_100748624();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100750E94();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v106 = &v91 - v9;
  v104 = sub_100744654();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100750954();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v97 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v98 = &v91 - v13;
  __chkstk_darwin(v14);
  v99 = &v91 - v15;
  v111 = sub_100750BD4();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v123 = &v91 - v18;
  v122 = sub_100741084();
  v121 = *(v122 - 1);
  __chkstk_darwin(v122);
  v120 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100749A94();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v93 = &v91 - v22;
  v126 = sub_100744604();
  v23 = *(v126 - 8);
  __chkstk_darwin(v126);
  v25 = (&v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  __chkstk_darwin(v26 - 8);
  v130 = sub_10000C518(&qword_100927FD8, &qword_1007AB6D8);
  v125 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v91 - v27;
  v28 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v28 - 8);
  v30 = &v91 - v29;
  v31 = sub_10074F704();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v131 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744624();
  sub_1000E962C(&qword_100927FE0, &type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  v34 = a1;
  result = sub_1007468B4();
  v128 = aBlock[0];
  if (!aBlock[0])
  {
    return result;
  }

  v92 = v3;
  sub_100037990(v127, v30);
  v36 = *(v32 + 48);
  v37 = v36(v30, 1, v31);
  v124 = v32;
  if (v37 == 1)
  {
    swift_getKeyPath();
    sub_100746914();

    v38 = v31;
    if (v36(v30, 1, v31) != 1)
    {
      sub_1000E94F8(v30);
    }
  }

  else
  {
    (*(v32 + 32))(v131, v30, v31);
    v38 = v31;
  }

  v39 = v34;
  sub_100746964();
  v40 = v129;
  sub_100752EB4();
  sub_100744614();
  v41 = v126;
  v42 = (*(v23 + 88))(v25, v126);
  if (v42 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
  {
    goto LABEL_7;
  }

  if (v42 == enum case for ProductReview.ReviewSource.user(_:))
  {
    (*(v23 + 96))(v25, v41);
    v43 = *v25;
    sub_1000E9564();
    v44 = v130;
    sub_100752E84();
    v45 = sub_10028F604(v39, LOBYTE(aBlock[0]));
    type metadata accessor for ProductReviewView();
    v46 = v131;
    sub_10074F674();
    v48 = v47;
    v49 = sub_10007DC04();
    swift_getObjectType();
    sub_1004368B8(v43, v45 & 1, v45 & 1, v49, v48);

    swift_unknownObjectRelease();

    (*(v125 + 8))(v40, v44);
    return (*(v124 + 8))(v46, v38);
  }

  if (v42 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
  {
LABEL_7:

    (*(v125 + 8))(v40, v130);
    (*(v124 + 8))(v131, v38);
    return (*(v23 + 8))(v25, v41);
  }

  (*(v23 + 96))(v25, v41);
  v50 = *v25;
  sub_1000E9564();
  sub_100752E84();
  v91 = v38;
  if (LOBYTE(aBlock[0]) == 2)
  {
    v51 = v93;
    sub_1007468A4();
    v52 = v94;
    sub_100749A14();
    sub_1000E962C(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
    v53 = v96;
    sub_100754324();
    v54 = *(v95 + 8);
    v54(v52, v53);
    v54(v51, v53);
  }

  sub_10074F674();
  swift_getKeyPath();
  sub_100746914();

  v55 = v137;
  v56 = v120;
  sub_100744644();
  v57 = sub_1002AE534(v56, 0, v55);
  v121[1](v56, v122);
  v58 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v57];
  v59 = [v57 length];
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 24) = v55;
  *(v60 + 32) = v58;
  *(v60 + 40) = 1;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_100047814;
  *(v61 + 24) = v60;
  v135 = sub_1000B18A8;
  v136 = v61;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  v134 = &unk_100867D88;
  v62 = _Block_copy(aBlock);
  v127 = v55;
  v63 = v58;

  [v57 enumerateAttributesInRange:0 options:v59 usingBlock:{0x100000, v62}];

  _Block_release(v62);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_20;
  }

  v65 = v97;
  sub_100750944();
  v66 = v98;
  sub_1007508F4();
  v67 = *(v100 + 8);
  v68 = v101;
  v67(v65, v101);
  sub_100750904();
  v67(v66, v68);
  sub_100750BB4();
  v122 = v63;
  sub_100750C04();
  v69 = sub_100744684();
  v71 = v70;
  v72 = sub_100744634();
  v73 = v102;
  sub_100744664();
  v75 = sub_1002AF1FC(v69, v71, v72, v73, v74);

  (*(v103 + 8))(v73, v104);
  v121 = v75;
  isEscapingClosureAtFileLocation = v105;
  sub_100750E84();
  v55 = v118;
  if (qword_100921190 != -1)
  {
LABEL_20:
    swift_once();
  }

  v126 = v50;
  v76 = sub_100750534();
  sub_10000D0FC(v76, qword_1009811E8);
  sub_100750E54();
  (*(v107 + 8))(isEscapingClosureAtFileLocation, v108);
  sub_100750BB4();
  v77 = v109;
  sub_100750C14();
  if (qword_1009207C8 != -1)
  {
    swift_once();
  }

  v78 = v113;
  v79 = sub_10000D0FC(v113, qword_10097EDD8);
  (*(v112 + 16))(v114, v79, v78);
  v80 = v111;
  v134 = v111;
  v135 = &protocol witness table for LabelPlaceholder;
  v81 = sub_10000D134(aBlock);
  v82 = v110;
  v83 = *(v110 + 16);
  v84 = v123;
  v83(v81, v123, v80);
  v132[3] = v80;
  v132[4] = &protocol witness table for LabelPlaceholder;
  v85 = sub_10000D134(v132);
  v83(v85, v77, v80);
  v86 = v115;
  sub_100748614();
  sub_1000E962C(&qword_100927FF0, &type metadata accessor for ReviewSummaryLayout, &protocol conformance descriptor for ReviewSummaryLayout);
  v87 = v117;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v88 = v127;
  v89 = v92;
  sub_100751254();

  (*(v119 + 8))(v55, v89);
  (*(v116 + 8))(v86, v87);
  v90 = *(v82 + 8);
  v90(v77, v80);
  v90(v84, v80);
  (*(v125 + 8))(v129, v130);
  return (*(v124 + 8))(v131, v91);
}

uint64_t sub_1000E94F8(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000E9564()
{
  result = qword_100927FE8;
  if (!qword_100927FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927FE8);
  }

  return result;
}

uint64_t sub_1000E95BC()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_1000E9614(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000E962C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1000E9674(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10074AB44();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_100750534();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundViewCornerRadius] = 0x403B000000000000;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_itemLayoutContext;
  v20 = sub_1007469A4();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView;
  if (qword_100921008 != -1)
  {
    swift_once();
  }

  v22 = sub_10000D0FC(v15, qword_100980D50);
  v23 = *(v16 + 16);
  v23(v18, v22, v15);
  v24 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v25 = objc_allocWithZone(v24);
  *&v25[qword_100929BE0] = _swiftEmptyArrayStorage;
  *&v25[qword_100929BE8] = 0;
  v54.receiver = v25;
  v54.super_class = v24;
  v46 = v24;
  v26 = objc_msgSendSuper2(&v54, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v27 = v26;
  sub_100748094();
  sub_1007480C4();

  v28 = v27;
  [v28 setSelectable:1];
  v29 = v28;
  [v29 setEditable:0];
  [v29 setScrollEnabled:0];
  [v29 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v29 setContentInsetAdjustmentBehavior:2];
  v30 = objc_opt_self();
  v31 = [v30 clearColor];
  [v29 setBackgroundColor:v31];

  [v29 setDelegate:v29];
  [v29 _setInteractiveTextSelectionDisabled:1];

  (*(v16 + 8))(v18, v15);
  *&v5[v21] = v29;
  v32 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView;
  *&v5[v32] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkTintColor] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics] = 0;
  v33 = type metadata accessor for BannerCollectionViewCell(0);
  v53.receiver = v5;
  v53.super_class = v33;
  v34 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v34 layoutMargins];
  [v35 setLayoutMargins:?];

  v36 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
  v37 = *&v34[v36];
  v38 = [v30 quaternarySystemFillColor];
  [v37 setBackgroundColor:v38];

  [*&v34[v36] _setCornerRadius:27.0];
  v39 = [v34 contentView];
  [v39 addSubview:*&v34[v36]];

  if (*&v34[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork] || *&v34[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow])
  {
    v40 = v47;
    (*(v48 + 104))(v47, enum case for DirectionalTextAlignment.leading(_:), v49);
    sub_100150994(v40);
  }

  else
  {
    v44 = v46;
    v52.receiver = *&v34[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView];
    receiver = v52.receiver;
    v52.super_class = v46;
    v45 = objc_msgSendSuper2(&v52, "textAlignment");
    v51.receiver = receiver;
    v51.super_class = v44;
    objc_msgSendSuper2(&v51, "setTextAlignment:", 1);
    v50.receiver = receiver;
    v50.super_class = v44;
    if (objc_msgSendSuper2(&v50, "textAlignment") != v45)
    {
      sub_100150D10();
    }
  }

  v41 = [v34 contentView];

  [v41 addSubview:*&v34[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView]];
  return v34;
}

void sub_1000E9D5C(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkTintColor;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkTintColor);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkTintColor) = a1;
  v7 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView);
  if (v4)
  {
    v5 = *(v1 + v2);
    v6 = v4;
    sub_100743254();
  }
}

id sub_1000E9DE4(void *a1)
{
  v2 = v1;
  v4 = sub_10074AB44();
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork] || *&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow])
  {
    (*(v5 + 104))(v8, enum case for DirectionalTextAlignment.leading(_:), v6);
    sub_100150994(v8);
  }

  else
  {
    v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView];
    v16 = type metadata accessor for DynamicTypeLinkedTextView(0);
    v20.receiver = v15;
    v20.super_class = v16;
    v17 = objc_msgSendSuper2(&v20, "textAlignment");
    v19.receiver = v15;
    v19.super_class = v16;
    objc_msgSendSuper2(&v19, "setTextAlignment:", 1);
    v18.receiver = v15;
    v18.super_class = v16;
    if (objc_msgSendSuper2(&v18, "textAlignment") != v17)
    {
      sub_100150D10();
    }
  }

  v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow];
  if (v9)
  {
    if (a1)
    {
      type metadata accessor for BannerButtonRow(0);
      v10 = v9;
      v11 = a1;
      v12 = sub_100753FC4();

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = v9;
    }

    v10 = [v2 contentView];
    [v10 addSubview:v9];

LABEL_10:
  }

  return [v2 setNeedsLayout];
}

void sub_1000E9FEC()
{
  sub_100016C60(0, &qword_1009448C0, UIImageSymbolConfiguration_ptr);
  v1 = sub_100753A64();
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView];
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v2;
    v5 = v3;
    v6 = [v4 configurationByApplyingConfiguration:v8];
    sub_1007432D4();
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v3;
    v7 = v8;
    sub_1007432D4();
  }

  v1 = v8;
LABEL_7:
}

uint64_t sub_1000EA104()
{
  v1 = v0;
  v2 = sub_100751374();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BannerCollectionViewCell(0);
  v93.receiver = v0;
  v93.super_class = v4;
  objc_msgSendSuper2(&v93, "layoutSubviews");
  v5 = [v0 contentView];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView] setFrame:{v7, v9, v11, v13}];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork];

  v16 = [v1 traitCollection];
  v17 = sub_1000EAD9C(v15);
  v19 = v18;
  v21 = v20;

  v22 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow] && (swift_beginAccess(), sub_100016C60(0, &qword_10093B420, UIButton_ptr), , v23 = sub_1007532D4(), , (v23 & 1) != 0) && *&v1[v22])
  {
    *&v73 = *&v1[v22];
    type metadata accessor for BannerButtonRow(0);
    sub_100750434();
  }

  else
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
  }

  v91[0] = v88;
  v91[1] = v89;
  v92 = v90;
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView];
  [v24 setFrame:{v7, v9, v11, v13}];
  v25 = *&v1[v14];
  if (*&v1[v22])
  {
    if ((v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics] & 1) == 0)
    {
      v26 = 15.0;
      if (v25)
      {
        v27 = 15.0;
      }

      else
      {
        v27 = 22.0;
      }

      v60 = xmmword_1007AB750;
      v28 = 9.0;
      goto LABEL_18;
    }

LABEL_13:
    v60 = xmmword_1007AB740;
    v28 = 17.0;
    v27 = 0.0;
    v26 = 0.0;
    goto LABEL_18;
  }

  if (v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics])
  {
    goto LABEL_13;
  }

  if (v25)
  {
    v27 = 15.0;
  }

  else
  {
    v27 = 22.0;
  }

  v60 = xmmword_1007AB760;
  v28 = 9.0;
  v26 = v27;
LABEL_18:
  v72 = v24;
  type metadata accessor for DynamicTypeLinkedTextView(0);
  sub_100750434();
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView])
  {
    *&v73 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView];
    sub_1007433C4();
    sub_100750434();
  }

  else
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
  }

  sub_1000746BC(v91, v67);
  v29 = [v1 traitCollection];
  v30 = sub_1007537D4();

  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v32 = [v1 traitCollection];
    v33 = [v32 preferredContentSizeCategory];

    v31 = sub_100753924();
  }

  v73 = v60;
  v74 = v60;
  *&v75 = v28;
  *(&v75 + 1) = v27;
  *&v76 = v28;
  *(&v76 + 1) = v26;
  v77 = xmmword_1007AB770;
  v78 = xmmword_1007AB780;
  sub_100012160(&v61, v79);
  v80[0] = v69;
  v80[1] = v70;
  v85[0] = v67[0];
  v81 = v71;
  v82 = v17;
  v83 = v19;
  v34 = v21 & 1;
  v84 = v21 & 1;
  v85[1] = v67[1];
  v86 = v68;
  v87 = v31 & 1;
  v35 = [v1 traitCollection];
  v63 = v75;
  v64 = v76;
  v65 = v77;
  v66 = v78;
  v61 = v73;
  v62 = v74;
  if (v31)
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v71 = sub_1000EB8CC();
  }

  else
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v71 = sub_1000EB820();
  }

  v36 = swift_allocObject();
  *&v69 = v36;
  sub_10000C824(v79, v36 + 112);
  sub_1000746BC(v80, v36 + 152);
  sub_1000746BC(v85, v36 + 216);
  v37 = v64;
  *(v36 + 48) = v63;
  *(v36 + 64) = v37;
  v38 = v66;
  *(v36 + 80) = v65;
  *(v36 + 96) = v38;
  v39 = v62;
  *(v36 + 16) = v61;
  *(v36 + 32) = v39;
  *(v36 + 192) = v17;
  *(v36 + 200) = v19;
  *(v36 + 208) = v34;
  sub_100012160(&v69, &v61);
  sub_10000C888(&v61, *(&v62 + 1));
  sub_100751244();

  sub_10000C620(&v61);
  v40 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView];
  if (v40)
  {
    v41 = v40;
    [v1 bounds];
    v42 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
    swift_beginAccess();
    v44 = v58;
    v43 = v59;
    v45 = &v41[v42];
    v46 = v57;
    (*(v58 + 16))(v57, v45, v59);
    sub_100751324();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    (*(v44 + 8))(v46, v43);
    [v41 setFrame:{v48, v50, v52, v54}];
  }

  sub_1000EB878(&v73);
  return sub_10000C8CC(v91, &unk_100924A60, &unk_1007A7B00);
}

double sub_1000EA800(uint64_t a1, uint64_t a2, double a3, double a4)
{
  swift_getObjectType();
  v8[5] = a2;
  sub_100750434();
  sub_10000C888(v8, v8[3]);
  sub_100751254();
  v6 = v5;
  sub_10000C620(v8);
  return v6;
}

void sub_1000EA8C0(uint64_t a1, double a2, double a3)
{
  v6 = sub_10074ED54();
  v7 = 0;
  v8 = *(v6 + 16);
  v9 = _swiftEmptyArrayStorage;
LABEL_2:
  v10 = 16 * v7 + 32;
  while (1)
  {
    if (v8 == v7)
    {

      sub_100251474(a1, v9, a2, a3);

      return;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    v11 = v10 + 16;
    ++v7;

    v12 = sub_10074ECB4();
    v14 = v13;

    v10 = v11;
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1002554F8(0, *(v9 + 2) + 1, 1, v9);
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v9 = sub_1002554F8((v15 > 1), v16 + 1, 1, v9);
      }

      *(v9 + 2) = v16 + 1;
      v17 = &v9[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
}

id sub_1000EAA28()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for BannerCollectionViewCell(0);
  objc_msgSendSuper2(&v9, "prepareForReuse");
  sub_1000EB9D8(0);
  sub_1000E9D5C(0);
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;

  sub_1000E9FEC();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView;
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow;
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow];
  if (v6)
  {
    [v6 removeFromSuperview];
    v7 = *&v0[v5];
  }

  else
  {
    v7 = 0;
  }

  *&v0[v5] = 0;

  sub_1000E9DE4(v6);
  return [*&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
}

id sub_1000EAB78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BannerCollectionViewCell(uint64_t a1)
{
  result = qword_100928028;
  if (!qword_100928028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EACD0(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000EAD9C(uint64_t result)
{
  v1 = result;
  if (result)
  {
    sub_100016C60(0, &qword_1009448C0, UIImageSymbolConfiguration_ptr);

    v2 = sub_100753A64();
    if ((sub_10074F1A4() & 1) == 0)
    {

      return 0x4042000000000000;
    }

    v3 = v2;
    if (sub_10074F1D4())
    {
      v4 = sub_100743AC4();
    }

    else
    {
      if ((sub_10074F1C4() & 1) == 0)
      {

LABEL_12:

        return 0x4042000000000000;
      }

      v4 = sub_10056028C(v5, v1, v2);
    }

    v6 = v4;

    if (v6)
    {
      [v6 size];
      v8 = v7;

      return v8;
    }

    goto LABEL_12;
  }

  return result;
}

double sub_1000EAEE0(uint64_t a1, __int128 *a2, void *a3)
{
  v74 = a3;
  v70 = a2;
  v4 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v4 - 8);
  v6 = &v64[-v5];
  v7 = sub_100750534();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10000C518(&qword_10092BBF0, qword_1007AB808);
  __chkstk_darwin(v11 - 8);
  v13 = &v64[-v12];
  sub_10074ED44();
  v14 = sub_100743E44();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000C8CC(v13, &qword_10092BBF0, qword_1007AB808);
  }

  else
  {
    v16 = sub_100743E34();
    (*(v15 + 8))(v13, v14);
    v17 = 0.0;
    if (v16)
    {
      return v17;
    }
  }

  v18 = v74;
  [v74 pageMarginInsets];
  sub_1007535B4();
  sub_100753BA4();
  if (qword_100921008 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v7, qword_100980D50);
  v20 = *(v8 + 16);
  v20(v10, v19, v7);
  v21 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v22 = objc_allocWithZone(v21);
  *&v22[qword_100929BE0] = _swiftEmptyArrayStorage;
  *&v22[qword_100929BE8] = 0;
  v95.receiver = v22;
  v95.super_class = v21;
  v23 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v24 = v23;
  sub_100748094();
  sub_1007480C4();

  v25 = v24;
  [v25 setSelectable:1];
  v26 = v25;
  [v26 setEditable:0];
  [v26 setScrollEnabled:0];
  [v26 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v26 setContentInsetAdjustmentBehavior:2];
  v27 = [objc_opt_self() clearColor];
  [v26 setBackgroundColor:v27];

  [v26 setDelegate:v26];
  [v26 _setInteractiveTextSelectionDisabled:1];

  (*(v8 + 8))(v10, v7);
  v28 = v26;
  sub_10074EDA4();
  v29 = sub_100753064();

  [v28 setText:v29];

  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v68 = v28;
  v31 = sub_10074ED64();
  v32 = [v18 traitCollection];
  v33 = sub_1000EAD9C(v31);
  v67 = v34;
  v65 = v35;

  sub_10074ED54();
  sub_10000C518(&unk_10092BC50, &unk_1007A6330);
  v36 = sub_1007532D4();

  v37 = 0;
  v38 = 0;
  if (v36)
  {

    v37 = sub_1000EB9D0;
    v38 = a1;
  }

  v66 = v33;
  v72 = v38;
  v73 = v37;
  v71 = [v18 traitCollection];
  *(&v76 + 1) = &type metadata for DynamicSizePlaceholder;
  v39 = sub_1000EB7CC();
  *&v77 = v39;
  *&v75 = sub_1000EB7C4;
  *(&v75 + 1) = v30;
  v69 = v30;

  if (!sub_10074ED64())
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v44 = v72;
    v43 = v73;
    if (v36)
    {
      goto LABEL_10;
    }

LABEL_12:
    v39 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_13;
  }

  v40 = sub_100744D34();
  swift_allocObject();
  v41 = sub_100744D24();
  v42 = sub_1000EB978();
  v44 = v72;
  v43 = v73;
  if ((v36 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v45 = &type metadata for DynamicSizePlaceholder;
  v46 = v44;
  v47 = v43;
LABEL_13:
  sub_10001B5AC(v43, v44);
  v48 = v71;
  if (sub_1007537D4())
  {
    v49 = 1;
  }

  else
  {
    v50 = [v48 preferredContentSizeCategory];
    v49 = sub_100753924();
  }

  v51 = v70[3];
  v86 = v70[2];
  v87 = v51;
  v52 = v70[5];
  v88 = v70[4];
  v89 = v52;
  v53 = v70[1];
  v84 = *v70;
  v85 = v53;
  sub_100012160(&v75, v90);
  v91[0] = v41;
  v91[1] = 0;
  v91[2] = 0;
  v91[3] = v40;
  v91[4] = v42;
  v55 = v66;
  v54 = v67;
  v91[5] = v66;
  v91[6] = v67;
  v56 = v65 & 1;
  v92 = v65 & 1;
  v93[0] = v47;
  v93[1] = v46;
  v93[2] = 0;
  v93[3] = v45;
  v93[4] = v39;
  v94 = v49 & 1;
  v57 = [v74 traitCollection];
  v77 = v86;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  v75 = v84;
  v76 = v85;
  if (v49)
  {
    v82 = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v83 = sub_1000EB8CC();
  }

  else
  {
    v82 = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v83 = sub_1000EB820();
  }

  v58 = swift_allocObject();
  *&v81 = v58;
  sub_10000C824(v90, v58 + 112);
  sub_1000746BC(v91, v58 + 152);
  sub_1000746BC(v93, v58 + 216);
  v59 = v78;
  *(v58 + 48) = v77;
  *(v58 + 64) = v59;
  v60 = v80;
  *(v58 + 80) = v79;
  *(v58 + 96) = v60;
  v61 = v76;
  *(v58 + 16) = v75;
  *(v58 + 32) = v61;
  *(v58 + 192) = v55;
  *(v58 + 200) = v54;
  *(v58 + 208) = v56;
  sub_100012160(&v81, &v75);
  sub_10000C888(&v75, *(&v76 + 1));
  sub_100751254();

  sub_10000C620(&v75);
  sub_100753BC4();
  v17 = v62;

  sub_1000164A8(v73, v72);

  sub_1000EB878(&v84);
  return v17;
}

uint64_t sub_1000EB78C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000EB7CC()
{
  result = qword_100928038;
  if (!qword_100928038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100928038);
  }

  return result;
}

unint64_t sub_1000EB820()
{
  result = qword_100928040;
  if (!qword_100928040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100928040);
  }

  return result;
}

unint64_t sub_1000EB8CC()
{
  result = qword_100928048;
  if (!qword_100928048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100928048);
  }

  return result;
}

uint64_t sub_1000EB920()
{
  sub_10000C620(v0 + 14);
  if (v0[22])
  {
    sub_10000C620(v0 + 19);
  }

  if (v0[30])
  {
    sub_10000C620(v0 + 27);
  }

  return _swift_deallocObject(v0, 256, 7);
}

unint64_t sub_1000EB978()
{
  result = qword_100923048;
  if (!qword_100923048)
  {
    sub_100744D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923048);
  }

  return result;
}

id sub_1000EB9D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074AB44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork] = a1;

  v9 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView];
  if (*&v2[v8])
  {
    if (!v10)
    {
      v11 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v12 = *&v2[v9];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v2[v9];
      }

      else
      {
        v13 = 0;
      }

      *&v2[v9] = v11;
      v18 = v11;

      if (v18)
      {
        v19 = [v2 contentView];
        [v19 addSubview:v18];
      }

      [v2 setNeedsLayout];

      if (*&v2[v8])
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v10)
    {
      [v10 removeFromSuperview];
      v14 = *&v2[v9];
    }

    else
    {
      v14 = 0;
    }

    *&v2[v9] = 0;

    [v2 setNeedsLayout];
  }

  if (*&v2[v8])
  {
LABEL_17:
    (*(v5 + 104))(v7, enum case for DirectionalTextAlignment.leading(_:), v4);
    sub_100150994(v7);
    goto LABEL_18;
  }

LABEL_10:
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow])
  {
    goto LABEL_17;
  }

  v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView];
  v16 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v23.receiver = v15;
  v23.super_class = v16;
  v17 = objc_msgSendSuper2(&v23, "textAlignment");
  v22.receiver = v15;
  v22.super_class = v16;
  objc_msgSendSuper2(&v22, "setTextAlignment:", 1);
  v21.receiver = v15;
  v21.super_class = v16;
  if (objc_msgSendSuper2(&v21, "textAlignment") != v17)
  {
    sub_100150D10();
  }

LABEL_18:
  sub_1000E9FEC();
  return [v2 setNeedsLayout];
}

void sub_1000EBC80()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundViewCornerRadius) = 0x403B000000000000;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView;
  if (qword_100921008 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v5, qword_100980D50);
  v13 = *(v6 + 16);
  v13(v8, v12, v5);
  v14 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v15 = objc_allocWithZone(v14);
  *&v15[qword_100929BE0] = _swiftEmptyArrayStorage;
  *&v15[qword_100929BE8] = 0;
  v22.receiver = v15;
  v22.super_class = v14;
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v17 = v16;
  sub_100748094();
  sub_1007480C4();

  v18 = v17;
  [v18 setSelectable:1];
  v19 = v18;
  [v19 setEditable:0];
  [v19 setScrollEnabled:0];
  [v19 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v19 setContentInsetAdjustmentBehavior:2];
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor:v20];

  [v19 setDelegate:v19];
  [v19 _setInteractiveTextSelectionDisabled:1];

  (*(v6 + 8))(v8, v5);
  *(v1 + v11) = v19;
  v21 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView;
  *(v1 + v21) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkTintColor) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1000EC0C8()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074A584();
  sub_100039C50(v4, qword_10097DA08);
  sub_10000D0FC(v4, qword_10097DA08);
  if (qword_1009211D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009812A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074A574();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000EC248(uint64_t a1, uint64_t *a2, NSString **a3)
{
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10074A584();
  sub_100039C50(v9, a2);
  sub_10000D0FC(v9, a2);
  v10 = *a3;
  *v8 = UIFontTextStyleCaption1;
  v8[1] = v10;
  (*(v6 + 104))(v8, enum case for FontUseCase.preferredFontDerivative(_:), v5);
  v11 = UIFontTextStyleCaption1;
  sub_10074A574();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000EC384()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074A584();
  sub_100039C50(v4, qword_10097DA50);
  sub_10000D0FC(v4, qword_10097DA50);
  *v3 = 0xD000000000000018;
  *(v3 + 1) = 0x800000010076AA00;
  *(v3 + 2) = sub_1000EC4E4;
  *(v3 + 3) = 0;
  *(v3 + 4) = UIFontWeightRegular;
  (*(v1 + 104))(v3, enum case for FontUseCase.systemFont(_:), v0);
  sub_10074A574();
  return (*(v1 + 8))(v3, v0);
}

void sub_1000EC4E8(uint64_t a1)
{
  v1 = UIContentSizeCategoryExtraSmall;
  v2 = UIContentSizeCategoryLarge;
  if ((sub_100753964() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (sub_100753964())
  {
    v3 = sub_100753944();

    if (v3)
    {
      return;
    }
  }

  else
  {
  }

  v4 = v2;
  v5 = UIContentSizeCategoryAccessibilityMedium;
  if ((sub_100753964() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (sub_100753964())
  {
    sub_100753944();
  }
}

void sub_1000EC680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TransitionViewContainer(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v13.receiver = v4;
  v13.super_class = v5;
  objc_msgSendSuper2(&v13, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong superview];

    if (v8)
    {
      sub_100009D34();
      v9 = v4;
      v10 = sub_100753FC4();

      if (v10)
      {
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          [v9 bounds];
          [v12 setFrame:?];
        }
      }
    }
  }
}

void sub_1000EC798(void *a1)
{
  v4 = a1;
  sub_1000EC680(v4, v1, v2, v3);
}

id sub_1000EC808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TransitionViewContainer(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1000EC88C()
{
  swift_unknownObjectWeakInit();
  sub_100754644();
  __break(1u);
}

double sub_1000EC978()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074EDB4();
  sub_1000ECBE4(&qword_1009280E0, &type metadata accessor for Banner, &protocol conformance descriptor for Banner);
  sub_1007468B4();
  v4 = v13;
  if (!v13)
  {
    return 0.0;
  }

  if (sub_10074ED64())
  {

    v5 = 15.0;
  }

  else
  {
    v5 = 22.0;
  }

  sub_10074ED54();
  sub_10000C518(&unk_10092BC50, &unk_1007A6330);
  v7 = sub_1007532D4();

  v8 = 15.0;
  if ((v7 & 1) == 0)
  {
    v8 = v5;
  }

  v9 = 9.0;
  if (v7)
  {
    v9 = 12.0;
  }

  *&v13 = v9;
  *(&v13 + 1) = 0x402E000000000000;
  v14 = v9;
  v15 = xmmword_1007AB890;
  v16 = v5;
  v17 = 0x4022000000000000;
  v18 = v8;
  v19 = xmmword_1007AB770;
  v20 = xmmword_1007AB780;
  v10 = sub_10007DC04();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  sub_1000EAEE0(v4, &v13, v10);
  v6 = v11;
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1000ECBE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1000ECC30(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_preferredIconWidth] = 0x404F000000000000;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_iconStyle;
  v18 = enum case for Artwork.Style.roundedRect(_:);
  v19 = sub_10074F314();
  (*(*(v19 - 8) + 104))(&v5[v17], v18, v19);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_titleLabel;
  if (qword_100921450 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  v22 = sub_10000D0FC(v21, qword_100981A28);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v16, v22, v21);
  (*(v23 + 56))(v16, 0, 1, v21);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v24 = objc_allocWithZone(sub_100745C84());
  *&v5[v20] = sub_100745C74();
  v25 = type metadata accessor for IconSilhouetteView(0);
  v32.receiver = v5;
  v32.super_class = v25;
  v26 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_titleLabel;
  v28 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_titleLabel];
  v29 = v26;
  [v28 setTextAlignment:1];
  sub_10000D198();
  v30 = sub_100753E94();
  [v29 setBackgroundColor:v30];

  [v29 addSubview:*&v26[v27]];
  return v29;
}

id sub_1000ECFC4()
{
  v1 = v0;
  v2 = sub_10074F314();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IconSilhouetteView(0);
  v18.receiver = v1;
  v18.super_class = v6;
  objc_msgSendSuper2(&v18, "layoutSubviews");
  (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_iconStyle], v2);
  [v1 frame];
  sub_10074F2E4();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  [v1 _setCornerRadius:v8];
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_titleLabel];
  sub_1007477B4();
  [v9 sizeThatFits:{v10, v11}];
  v13 = v12;
  v15 = v14;
  sub_1007477B4();
  v16 = CGRectGetMidX(v19) - v13 * 0.5;
  sub_1007477B4();
  return [v9 setFrame:{v16, CGRectGetMidY(v20) - v15 * 0.5, v13, v15}];
}

id sub_1000ED2F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconSilhouetteView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IconSilhouetteView(uint64_t a1)
{
  result = qword_100928118;
  if (!qword_100928118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000ED3F8(uint64_t a1)
{
  result = sub_10074F314();
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

void sub_1000ED4A4()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_preferredIconWidth) = 0x404F000000000000;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_iconStyle;
  v10 = enum case for Artwork.Style.roundedRect(_:);
  v11 = sub_10074F314();
  (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_titleLabel;
  if (qword_100921450 != -1)
  {
    swift_once();
  }

  v13 = sub_100750534();
  v14 = sub_10000D0FC(v13, qword_100981A28);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v8, v14, v13);
  (*(v15 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v16 = objc_allocWithZone(sub_100745C84());
  *(v1 + v12) = sub_100745C74();
  sub_100754644();
  __break(1u);
}

void *sub_1000ED750()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_1000ED788(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1000ED7E0;
}

void sub_1000ED7E0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_100251B60(v2);
  }

  else
  {
    sub_100251B60(*a1);
  }
}

double sub_1000ED8A4()
{
  swift_getObjectType();

  sub_1007477B4();
  return result;
}

uint64_t sub_1000ED8D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1000EDAAC(&qword_100928138, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007AB990);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_1000ED994(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_1000EDAAC(&qword_100928138, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007AB990);

  return a3(ObjectType, v4);
}

uint64_t sub_1000EDAAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1000EDAF4()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_10097DA78);
  sub_10000D0FC(v0, qword_10097DA78);
  sub_100750504();
  return result;
}

char *sub_1000EDB48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_isCollapsing] = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView;
  if (qword_100920580 != -1)
  {
    swift_once();
  }

  v17[2] = xmmword_10097E4A0;
  v17[3] = unk_10097E4B0;
  v18 = qword_10097E4C0;
  v17[0] = xmmword_10097E480;
  v17[1] = *algn_10097E490;
  v5 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView(0));
  *&v1[v4] = sub_1001F0408(v17, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_mediaOverlayStyle;
  v7 = enum case for MediaOverlayStyle.matchSystem(_:);
  v8 = sub_100746BA4();
  (*(*(v8 - 8) + 104))(&v1[v6], v7, v8);
  v9 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
  *v9 = 0;
  *(v9 + 1) = 0;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView;
  v12 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView];
  v13 = v10;
  [v12 setContentMode:2];
  [*&v10[v11] setClipsToBounds:1];
  [*&v10[v11] setAccessibilityIgnoresInvertColors:1];
  [v13 addSubview:*&v10[v11]];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView;
  [*&v13[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView] setContentMode:2];
  [*&v13[v14] setClipsToBounds:1];
  [v13 addSubview:*&v13[v14]];

  return v13;
}

void sub_1000EDDDC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView];
    v5 = Strong;
    [v3 setHidden:1];
    v5[qword_100982290] = 1;
    *&v5[qword_10093CB38 + 8] = &off_100867EE0;
    swift_unknownObjectWeakAssign();
    v4 = [v0 traitCollection];
    sub_1007537E4();

    [v5 _setCornerRadius:20.0];
    [v1 insertSubview:v5 aboveSubview:v3];
    [v1 setNeedsLayout];
  }
}

void (*sub_1000EDF08(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1000EDF5C;
}

void sub_1000EDF5C(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v23 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1000EFFD0(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      v7 = v23;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v10 = v4;
        v11 = sub_100753FC4();

        v12 = *(a1 + 8);
        if (v11)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }

          [*(v12 + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v23;
    }

    swift_unknownObjectWeakAssign();
    sub_1000EDDDC();

    v22 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_1000EFFD0(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      v15 = [v6 superview];
      if (v15)
      {
        v16 = v15;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v17 = v4;
        v18 = sub_100753FC4();

        v19 = *(a1 + 8);
        if (v18)
        {
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            [v20 removeFromSuperview];
          }

          [*(v19 + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
    sub_1000EDDDC();
    v22 = v23;
  }
}

void sub_1000EE300(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.receiver = v4;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "frame", v8);
  v11 = enum case for FloatingPointRoundingRule.up(_:);
  v12 = *(v7 + 104);
  v12(v10, enum case for FloatingPointRoundingRule.up(_:), v6);
  sub_100753B04();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v10, v6);
  v12(v10, v11, v6);
  sub_100753B04();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v21(v10, v6);
  v38.origin.x = v14;
  v38.origin.y = v16;
  v38.size.width = v18;
  v38.size.height = v20;
  v39.origin.x = v23;
  v39.origin.y = v25;
  v39.size.width = v27;
  v39.size.height = v29;
  if (!CGRectEqualToRect(v38, v39) && (v4[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_isCollapsing] & 1) == 0)
  {
    v30 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
    if (v30)
    {
      v31 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_refetchArtworkBlock + 8];

      [v4 bounds];
      v12(v10, v11, v6);
      sub_100753B84();
      v33 = v32;
      v35 = v34;
      v21(v10, v6);
      v36 = [v4 traitCollection];
      v30(v33, v35);
      sub_1000164A8(v30, v31);
    }
  }
}

id sub_1000EE5D0()
{
  v34.receiver = v0;
  v34.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  v1 = v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_isCollapsing];
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (v1 == 1)
  {
    if (Strong)
    {
      [v0 bounds];
      v5 = v4;
      v7 = v6;
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8 && (v9 = v8, v10 = *(v8 + qword_10093CB50), v9, v11 = [v10 image], v10, v11))
      {
        [v11 size];
        v13 = v12;
        v15 = v14;

        v16 = v15;
        v17 = v13;
      }

      else
      {
        [v0 bounds];
      }

      [v3 setFrame:{v5, v7, v17, v16}];
    }

    v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView];
    [v0 bounds];
    v22 = v21;
    v24 = v23;
    v25 = [v20 image];
    if (v25)
    {
      v26 = v25;
      [v25 size];
      v28 = v27;
      v30 = v29;
    }

    else
    {
      [v0 bounds];
      v28 = v31;
      v30 = v32;
    }

    [v20 setFrame:{v22, v24, v28, v30}];
    v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView];
    [v20 frame];
  }

  else
  {
    if (Strong)
    {
      [v0 bounds];
      [v3 setFrame:?];
    }

    v18 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView];
    [v0 bounds];
    [v18 setFrame:?];
    v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView];
    [v0 bounds];
  }

  return [v19 setFrame:?];
}

void sub_1000EE878()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[qword_10093CB78];
    if (v1)
    {
      v5 = Strong;
      v2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1000F0A90;
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005171C8;
      aBlock[3] = &unk_100868010;
      v3 = _Block_copy(aBlock);
      v4 = v1;

      [v4 enterFullScreenAnimated:1 completionHandler:v3];

      _Block_release(v3);
    }

    else
    {
    }
  }
}

void sub_1000EEA04()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10058070C(0, 0);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_10093CB78);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setShowsPlaybackControls:1];
    }
  }
}

void sub_1000EEAC8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = [Strong traitCollection];
    v2 = sub_1007537E4();

    if (v2)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = 0x3FF0000000000000;
      v5 = objc_opt_self();
      v7[4] = sub_1000F03EC;
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_1000CF7B0;
      v7[3] = &unk_100867F48;
      v6 = _Block_copy(v7);

      [v5 animateWithDuration:4 delay:v6 options:0 animations:0.3 completion:0.0];

      swift_unknownObjectRelease();
      _Block_release(v6);
    }
  }
}

void sub_1000EEC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v8 - 8);
  v77 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v69 - v11;
  v12 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v12 - 8);
  v75 = &v69 - v13;
  v14 = sub_100744864();
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  v16 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v16 - 8);
  v18 = &v69 - v17;
  v19 = sub_100744894();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100747D94();
  v26 = __chkstk_darwin(v23);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &OBJC_METACLASS____TtC22SubscribePageExtension24BannerCollectionViewCell;
  if (a1)
  {
    v71 = v25;
    v72 = v24;
    v73 = a2;
    v30 = *(v20 + 104);
    v69 = v4;
    v31 = v28;
    v30(v22, enum case for VideoFillMode.scaleAspectFill(_:), v19, v26);

    sub_10074EC14();
    sub_10074F2A4();
    sub_100750504();

    v32 = sub_1007504F4();
    (*(*(v32 - 8) + 56))(v18, 0, 1, v32);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    v33 = a3;
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v34 = v75;
    sub_10074EC24();
    v35 = sub_100741264();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v36 = v76;
    sub_10074EBE4();
    v37 = v77;
    sub_10074EBD4();
    type metadata accessor for VideoView(0);
    sub_1000EFFD0(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v38 = v31;
    v4 = v69;
    v70 = v38;
    v74 = v33;
    v39 = sub_1007464A4();
    sub_10000C8CC(v37, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v36, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v34, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v78, &unk_1009276E0, &unk_1007A5C70);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v41 = Strong;
      v42 = [Strong superview];
      if (v42)
      {
        v43 = v42;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v44 = v4;
        v45 = sub_100753FC4();

        if (v45)
        {
          v46 = swift_unknownObjectWeakLoadStrong();
          if (v46)
          {
            v47 = v46;
            [v46 removeFromSuperview];
          }

          [*&v44[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView] setHidden:0];
        }
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
    sub_1000EDDDC();

    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      sub_10074EC14();
      v53 = sub_10074F1E4();

      [v52 setBackgroundColor:v53];
    }

    sub_10074EC14();
    v54 = sub_10074F1E4();

    a2 = v73;
    a3 = v74;
    if (!v54)
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v54 = sub_100753E34();
    }

    [v4 setBackgroundColor:v54];

    (*(v71 + 8))(v70, v72);
    v48 = &selRef_initWithTitle_style_target_action_;
    v29 = &OBJC_METACLASS____TtC22SubscribePageExtension24BannerCollectionViewCell;
  }

  else
  {
    v48 = &selRef_initWithTitle_style_target_action_;
    if (a2)
    {

      v49 = sub_10074F1E4();
      if (!v49)
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        v49 = sub_100753E34();
      }

      v50 = v49;
      [v4 setBackgroundColor:v49];

      v29 = &OBJC_METACLASS____TtC22SubscribePageExtension24BannerCollectionViewCell;
    }
  }

  [*&v4[v29[8].cache] v48[77]];
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v55;
    [v55 v48[77]];
  }

  [*&v4[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView] v48[77]];
  v57 = sub_1000EF4C4(a2, a1, a3);
  v58 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
  v59 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
  v60 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_refetchArtworkBlock + 8];
  *v58 = v57;
  v58[1] = v61;
  sub_1000164A8(v59, v60);
  v62 = *v58;
  if (*v58)
  {
    v63 = v58[1];

    [v4 bounds];
    v65 = v64;
    v67 = v66;
    v68 = [v4 traitCollection];
    v62(v65, v67);
    sub_1000164A8(v62, v63);
  }
}

void (*sub_1000EF4C4(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    a1 = sub_10074EC14();
LABEL_5:
    v6 = a2 != 0;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v7;
    *(v9 + 32) = v8;
    *(v9 + 40) = a1;
    *(v9 + 48) = ObjectType;
    return sub_1000F0490;
  }

  if (a1)
  {

    goto LABEL_5;
  }

  return 0;
}

double sub_1000EF5C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1007442C4();
  sub_1007526C4();
  if (v10)
  {
    if (!sub_1007482C4())
    {
      [*&v2[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView] setHidden:1];
      v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView];
      sub_100748234();
      sub_1001F0D88();

      v8 = sub_100748234();
      [v3 bounds];
      sub_1000F0508(v8, v10, v7);
      goto LABEL_6;
    }
  }

  v5 = sub_1007482B4();
  v6 = sub_1007482C4();
  sub_1000EEC78(v5, v6, a2);
LABEL_6:

  return result;
}

void sub_1000EF6F0(double a1, double a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10074F284();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = swift_unknownObjectWeakLoadStrong();

      if (v15)
      {
        v16 = &qword_10093CB50;
        goto LABEL_7;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v15 = v17;
      v16 = &OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView;
LABEL_7:
      v18 = *&v15[*v16];

      if (a1 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  v18 = 0;
  if (a1 != 0.0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (a2 == 0.0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!v18)
  {
    return;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_11:

    return;
  }

  sub_1007442C4();
  v18 = v18;
  sub_1007526C4();

  if (!v21[4])
  {

    goto LABEL_11;
  }

  if (qword_100920238 != -1)
  {
    swift_once();
  }

  v19 = sub_1007504F4();
  sub_10000D0FC(v19, qword_10097DA78);
  sub_1007504C4();
  sub_10074F294();
  v20 = sub_10074F254();
  (*(v10 + 8))(v12, v9);
  sub_10074F374();
  [v18 setContentMode:v20];
  sub_100016C60(0, &qword_10092BFC0, UIImageView_ptr);
  sub_1000F04A0();
  sub_100744204();
}

uint64_t type metadata accessor for AppPromotionMediaContainerView(uint64_t a1)
{
  result = qword_100928198;
  if (!qword_100928198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EFB1C(uint64_t a1)
{
  result = sub_100746BA4();
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

void sub_1000EFBF4(void *a1)
{
  sub_1000F0204();
  swift_unknownObjectWeakAssign();
  sub_1000EDDDC();
}

uint64_t (*sub_1000EFC44(uint64_t **a1))()
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
  v2[4] = sub_1000EDF08(v2);
  return sub_1000181A8;
}

uint64_t sub_1000EFCBC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1000EFFD0(&qword_1009281B8, type metadata accessor for AppPromotionMediaContainerView, &unk_1007ABB60);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1000EFD30(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1000EFFD0(&qword_1009281B8, type metadata accessor for AppPromotionMediaContainerView, &unk_1007ABB60);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1000EFDBC(uint64_t *a1))()
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
  sub_1000EFFD0(&qword_1009281B8, type metadata accessor for AppPromotionMediaContainerView, &unk_1007ABB60);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1000EFE78(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v4 = v1;
  v5 = sub_100753FC4();

  return v5 & 1;
}

id sub_1000EFF08()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "frame");
}

uint64_t sub_1000EFFD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000F0060()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_isCollapsing) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView;
  if (qword_100920580 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_10097E4A0;
  v9[3] = unk_10097E4B0;
  v10 = qword_10097E4C0;
  v9[0] = xmmword_10097E480;
  v9[1] = *algn_10097E490;
  v4 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView(0));
  *(v1 + v3) = sub_1001F0408(v9, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_mediaOverlayStyle;
  v6 = enum case for MediaOverlayStyle.matchSystem(_:);
  v7 = sub_100746BA4();
  (*(*(v7 - 8) + 104))(v1 + v5, v6, v7);
  v8 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_refetchArtworkBlock);
  *v8 = 0;
  v8[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_1000F0204()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1000EFFD0(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v1 = [Strong superview];
    if (v1)
    {
      v2 = v1;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v3 = v0;
      v4 = sub_100753FC4();

      if (v4)
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          v6 = v5;
          [v5 removeFromSuperview];
        }

        v7 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView];

        [v7 setHidden:0];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1000F037C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F03B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000F03F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000F0410()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F0448()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000F04A0()
{
  result = qword_1009281E0;
  if (!qword_1009281E0)
  {
    sub_100016C60(255, &qword_10092BFC0, UIImageView_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009281E0);
  }

  return result;
}

uint64_t sub_1000F0508(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10074F284();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = sub_10074F8A4();
  v34[4] = &protocol witness table for AppPromotion;
  v34[0] = a1;
  sub_10000C824(v34, v33);

  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  if (swift_dynamicCast())
  {
    v11 = v32;
    v12 = sub_10074F814();
    sub_10074F834();
    sub_100741D54();
    v13 = swift_dynamicCastClass();
    v29 = v11;
    if (v13)
    {
      sub_100741D44();
      v14 = sub_10074EF24();
    }

    else
    {

      sub_10074F834();
      v14 = sub_10074EF24();
    }

    v30 = a2;
    if (v14)
    {

      sub_10074F294();
      sub_10074F254();
      v31 = v8;
      v15 = *(v8 + 8);
      v15(v10, v7);
      sub_10074F374();
      v28 = a3;
      v16 = *&a3[qword_10092D678];
      sub_10074F324();
      sub_100743364();
      [v16 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();
      sub_10074F294();
      v17 = sub_10074F254();
      v15(v10, v7);
      [v16 setContentMode:v17];
      sub_1007433C4();
      sub_1000EFFD0(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100744204();

      v8 = v31;
      a3 = v28;
    }

    if (v12)
    {
      sub_10074F294();
      sub_10074F254();
      v18 = *(v8 + 8);
      v31 = v8 + 8;
      v28 = v18;
      (v18)(v10, v7);
      sub_10074F374();
      v19 = *&a3[qword_10092D670];
      v20 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView;
      v21 = *(v19 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
      sub_10074F324();
      sub_100743364();
      [v21 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();

      v22 = *(v19 + v20);
      sub_10074F294();
      v23 = sub_10074F254();
      (v28)(v10, v7);
      [v22 setContentMode:v23];

      v24 = *(v19 + v20);
      sub_1007433C4();
      sub_1000EFFD0(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v25 = v24;
      sub_100744204();
    }

    else
    {
    }
  }

  return sub_10000C620(v34);
}

uint64_t sub_1000F0AA8(unint64_t a1, unint64_t a2)
{
  v4 = sub_10074BCC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074F3F4();
  v32[3] = v8;
  v32[4] = sub_1000F14D4(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v9 = sub_10000D134(v32);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.search_tags(_:), v8);
  LOBYTE(v8) = sub_10074FC74();
  sub_10000C620(v32);
  if (v8)
  {
    a2 = a1;
  }

  if (a2)
  {
    sub_100747924();
    if (sub_1007532D4())
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
      {
        v12 = 0;
        v31 = a2 & 0xC000000000000001;
        v13 = (v5 + 88);
        v29 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v30 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v27 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v28 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v25 = enum case for MetadataRibbonItemViewType.divider(_:);
        v26 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v14 = (v5 + 8);
        v15 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v24 = v10;
        while (v31)
        {
          v5 = sub_100754574();
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_38;
          }

LABEL_11:
          sub_1007478B4();

          v16 = (*v13)(v7, v4);
          v17 = v16 == v30 || v16 == v29;
          v22 = v17 || v16 == v28 || v16 == v27 || v16 == v26 || v16 == v25 || v16 == v15;
          v5 = v22;
          if (!v22)
          {
            (*v14)(v7, v4);
            ++v12;
            v17 = v10 == i;
            v10 = v24;
            if (!v17)
            {
              continue;
            }
          }

          return v5;
        }

        if (v12 >= *(v10 + 16))
        {
          goto LABEL_39;
        }

        v5 = *(a2 + 8 * v12 + 32);

        v10 = v12 + 1;
        if (!__OFADD__(v12, 1))
        {
          goto LABEL_11;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }
    }
  }

  return 0;
}

uint64_t sub_1000F0DA4()
{
  result = sub_1000F105C();
  if (!result)
  {
    sub_100747E74();
    if (swift_dynamicCastClass())
    {
      v1 = type metadata accessor for AdvertsSearchResultContentView();
      v2 = &unk_100928220;
      v3 = type metadata accessor for AdvertsSearchResultContentView;
      v4 = &unk_1007C2E9C;
    }

    else
    {
      sub_1007474C4();
      if (swift_dynamicCastClass())
      {
        v1 = type metadata accessor for BundleSearchResultContentView();
        v2 = &unk_100928218;
        v3 = type metadata accessor for BundleSearchResultContentView;
        v4 = &unk_1007D786C;
      }

      else
      {
        sub_100742374();
        if (swift_dynamicCastClass())
        {
          v1 = type metadata accessor for AppSearchResultContentView();
          v2 = &unk_100928210;
          v3 = type metadata accessor for AppSearchResultContentView;
          v4 = &unk_1007C9380;
        }

        else
        {
          sub_1007493C4();
          if (swift_dynamicCastClass())
          {
            v1 = type metadata accessor for EditorialSearchResultContentView();
            v2 = &unk_100928208;
            v3 = type metadata accessor for EditorialSearchResultContentView;
            v4 = &unk_1007B6050;
          }

          else
          {
            sub_100741ED4();
            if (swift_dynamicCastClass())
            {
              v1 = type metadata accessor for InAppPurchaseSearchResultContentView(0);
              v2 = &unk_100928200;
              v3 = type metadata accessor for InAppPurchaseSearchResultContentView;
              v4 = &unk_1007BCE44;
            }

            else
            {
              sub_10074C814();
              if (swift_dynamicCastClass())
              {
                v1 = type metadata accessor for LockupCollectionSearchResultContentView();
                v2 = &unk_1009281F8;
                v3 = type metadata accessor for LockupCollectionSearchResultContentView;
                v4 = &unk_1007B3010;
              }

              else
              {
                sub_100742574();
                if (swift_dynamicCastClass())
                {
                  v1 = type metadata accessor for AppEventSearchResultContentView();
                  v2 = &unk_1009281F0;
                  v3 = type metadata accessor for AppEventSearchResultContentView;
                  v4 = &unk_1007A5F14;
                }

                else
                {
                  sub_1007476D4();
                  result = swift_dynamicCastClass();
                  if (!result)
                  {
                    return result;
                  }

                  v1 = type metadata accessor for GuidedSearchResultContentView();
                  v2 = &unk_1009281E8;
                  v3 = type metadata accessor for GuidedSearchResultContentView;
                  v4 = &unk_1007AF674;
                }
              }
            }
          }
        }
      }
    }

    sub_1000F14D4(v2, v3, v4);
    return v1;
  }

  return result;
}

uint64_t sub_1000F105C()
{
  v0 = sub_10074CE44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v23[-v5];
  __chkstk_darwin(v7);
  v9 = &v23[-v8];
  __chkstk_darwin(v10);
  v12 = &v23[-v11];
  sub_1007493C4();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  v25 = v3;
  sub_1007440F4();
  (*(v1 + 104))(v9, enum case for SearchResultCondensedBehavior.always(_:), v0);
  sub_1000F14D4(&qword_100928228, &type metadata accessor for SearchResultCondensedBehavior, &protocol conformance descriptor for SearchResultCondensedBehavior);
  sub_100753274();
  sub_100753274();
  if (v28 != v26 || v29 != v27)
  {
    v24 = sub_100754754();
    v14 = *(v1 + 8);
    v14(v9, v0);
    v14(v12, v0);

    v3 = v25;
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_7:
    sub_100741ED4();
    if (swift_dynamicCastClass())
    {
      sub_1007440F4();
      (*(v1 + 104))(v3, enum case for SearchResultCondensedBehavior.always(_:), v0);
      sub_1000F14D4(&qword_100928228, &type metadata accessor for SearchResultCondensedBehavior, &protocol conformance descriptor for SearchResultCondensedBehavior);
      sub_100753274();
      sub_100753274();
      if (v28 == v26 && v29 == v27)
      {
        v19 = *(v1 + 8);
        v19(v3, v0);
        v19(v6, v0);

LABEL_12:
        v15 = type metadata accessor for CondensedInAppPurchaseContentView(0);
        v16 = &unk_100928230;
        v17 = type metadata accessor for CondensedInAppPurchaseContentView;
        v18 = &unk_1007ABDE8;
        goto LABEL_13;
      }

      v20 = sub_100754754();
      v21 = *(v1 + 8);
      v21(v3, v0);
      v21(v6, v0);

      if (v20)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  v13 = *(v1 + 8);
  v13(v9, v0);
  v13(v12, v0);

LABEL_6:
  v15 = type metadata accessor for CondensedEditorialSearchResultContentView(0);
  v16 = &unk_100928238;
  v17 = type metadata accessor for CondensedEditorialSearchResultContentView;
  v18 = &unk_1007A5AE4;
LABEL_13:
  sub_1000F14D4(v16, v17, v18);
  return v15;
}

uint64_t sub_1000F14D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F151C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1000F15B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v34 = sub_10000C518(&qword_100928338, &unk_1007ABD18);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - v6;
  v7 = sub_10074E984();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v32 - v11;
  v46 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v32 - v13;
  v14 = sub_1007469A4();
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v41 = *(v20 + 56);
    v42 = v21;
    v40 = (v12 + 8);
    v39 = enum case for Shelf.ContentType.uber(_:);
    v37 = (v8 + 8);
    v38 = (v8 + 104);
    v43 = v20;
    v36 = (v20 - 8);
    v32 = (v5 + 8);
    v44 = v14;
    v21(v18, v22, v14, v16);
    while (1)
    {
      swift_getKeyPath();
      v28 = v45;
      sub_100746914();

      swift_getKeyPath();
      v29 = v46;
      sub_1007525B4();

      (*v40)(v28, v29);
      (*v38)(v48, v39, v7);
      sub_1000F1E3C();
      sub_100753274();
      sub_100753274();
      if (v51 == v49 && v52 == v50)
      {
        break;
      }

      v30 = sub_100754754();
      v31 = *v37;
      (*v37)(v48, v7);
      v31(v47, v7);

      if (v30)
      {
        goto LABEL_4;
      }

LABEL_5:
      v26 = v44;
      (*v36)(v18, v44);
      v22 += v41;
      if (!--v19)
      {
        return;
      }

      v42(v18, v22, v26, v27);
    }

    v23 = *v37;
    (*v37)(v48, v7);
    v23(v47, v7);

LABEL_4:
    sub_1007468F4();
    v24 = v33;
    sub_100752994();
    sub_1000F1EA0();
    v25 = v34;
    sub_100752954();
    (*v32)(v24, v25);
    goto LABEL_5;
  }
}

void sub_1000F1B1C(void *a1, uint64_t a2, void *a3)
{
  v20 = a1;
  sub_10003E054();
  v5 = a1;
  sub_10000C518(&qword_100928328, &qword_1007ABD00);
  if (swift_dynamicCast())
  {
    sub_100012160(&v16, v21);
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1000F1DFC;
    *(v8 + 24) = v7;
    v18 = sub_100045E0C;
    v19 = v8;
    *&v16 = _NSConcreteStackBlock;
    *(&v16 + 1) = 1107296256;
    *&v17 = sub_10011B528;
    *(&v17 + 1) = &unk_100868088;
    v9 = _Block_copy(&v16);
    v10 = v5;

    [v6 performWithoutAnimation:v9];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (swift_weakLoadStrong())
      {
        v12 = v22;
        v13 = v23;
        sub_10000C888(v21, v22);
        v14 = (*(v13 + 8))(v12, v13);
        sub_1003C9E70(v14, a3, v15);
      }

      sub_10000C620(v21);
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1000F1D5C(&v16);
  }
}

uint64_t sub_1000F1D5C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100928330, &qword_1007ABD08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F1DC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000F1E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1000F1E3C()
{
  result = qword_100926DD0;
  if (!qword_100926DD0)
  {
    sub_10074E984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926DD0);
  }

  return result;
}

unint64_t sub_1000F1EA0()
{
  result = qword_100943B30;
  if (!qword_100943B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943B30);
  }

  return result;
}

uint64_t sub_1000F1EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return a1;
}

uint64_t sub_1000F1F50()
{
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  result = sub_100753E74();
  qword_10097DA98 = result;
  return result;
}

char *sub_1000F1F94(double a1, double a2, double a3, double a4)
{
  v9 = sub_100741E54();
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel;
  sub_100745C84();
  *&v4[v12] = sub_100745C64();
  v13 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel;
  *&v4[v13] = sub_100745C64();
  v14 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel;
  *&v4[v14] = sub_100745C64();
  v15 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton;
  v16 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v4[v15] = sub_100154454(0);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView;
  sub_100741DD4();
  v18 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v4[v17] = sub_10027562C(v11, 1);
  _s22SubscribePageExtension33CondensedInAppPurchaseContentViewC7metrics0F8StoreKit0d6SearchefG10CardLayoutV7MetricsVvpfi_0();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_tileOffset] = 0;
  v19 = type metadata accessor for CondensedInAppPurchaseContentView(0);
  v37.receiver = v4;
  v37.super_class = v19;
  v20 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v24 = v20;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel]];
  v26 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel]];
  v27 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView]];
  v28 = *&v24[v25];
  v29 = [v24 tintColor];
  [v28 setTextColor:v29];

  [*&v24[v25] setNumberOfLines:1];
  [*&v24[v26] setNumberOfLines:1];
  v30 = *&v24[v26];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 labelColor];
  [v32 setTextColor:v33];

  v34 = *&v24[v27];
  v35 = [v31 secondaryLabelColor];
  [v34 setTextColor:v35];

  sub_1000F4700();
  return v24;
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.layoutSubviews()()
{
  v1 = v0;
  v191 = sub_100750F54();
  v189 = *(v191 - 8);
  __chkstk_darwin(v191);
  v190 = (v176 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v188 = v176 - v4;
  v5 = sub_100750F84();
  v193 = *(v5 - 8);
  __chkstk_darwin(v5);
  v192 = v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_100750354();
  v204 = *(v206 - 8);
  __chkstk_darwin(v206);
  v203 = v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_100750CC4();
  v228 = *(v224 - 8);
  __chkstk_darwin(v224);
  v199 = v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_100750CB4();
  v227 = *(v222 - 8);
  __chkstk_darwin(v222);
  v198 = v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_100750C64();
  v229 = *(v223 - 8);
  __chkstk_darwin(v223);
  v197 = v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_100750D04();
  v205 = *(v200 - 8);
  __chkstk_darwin(v200);
  v187 = v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v186 = v176 - v13;
  v14 = sub_100741B94();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v226 = v176 - v19;
  v20 = type metadata accessor for CondensedInAppPurchaseContentView(0);
  v257.receiver = v0;
  v257.super_class = v20;
  objc_msgSendSuper2(&v257, "layoutSubviews");
  sub_1007477B4();
  v21 = [v0 traitCollection];
  v22 = sub_100753804();

  (*(v15 + 16))(v17, &v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_metrics], v14);
  v225 = v1;
  v202 = v14;
  if (v22)
  {
    sub_100741B44();
    v23 = *(v15 + 8);
    v201 = v15 + 8;
    v190 = v23;
    v23(v17, v14);
    v24 = *&v225[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v253 = type metadata accessor for InAppPurchaseView(0);
    v254 = &protocol witness table for UIView;
    v252[0] = v24;
    v25 = *&v225[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel];
    v26 = sub_100745C84();
    v251 = &protocol witness table for UILabel;
    v250 = v26;
    v249[0] = v25;
    v27 = *&v225[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel];
    v248 = &protocol witness table for UILabel;
    v247 = v26;
    v246[0] = v27;
    v28 = *&v225[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
    v245 = &protocol witness table for UILabel;
    v244 = v26;
    v243[0] = v28;
    v29 = *&v225[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton];
    v30 = type metadata accessor for OfferButton();
    v242 = &protocol witness table for UIView;
    v241 = v30;
    v240[0] = v29;
    sub_10000C518(&unk_100923060, qword_1007A5CA0);
    v31 = *(sub_100750CF4() - 8);
    v193 = *(v31 + 72);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v188 = (4 * v193);
    v33 = swift_allocObject();
    v189 = v33;
    *(v33 + 16) = xmmword_1007AB1A0;
    *&v221 = v33 + v32;
    v187 = v24;
    v34 = v25;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    sub_100741A94();
    *(&v238 + 1) = &type metadata for CGFloat;
    v239 = &protocol witness table for CGFloat;
    *&v237 = v38;
    sub_100741B54();
    LODWORD(v185) = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v194 = v229[13];
    v196 = (v229 + 13);
    v39 = v197;
    (v194)(v197);
    v209 = sub_10000C518(&unk_100944F30, &unk_1007ABDD0);
    v40 = v227;
    v41 = *(v227 + 72);
    v195 = *(v227 + 80);
    v42 = (v195 + 32) & ~v195;
    v207 = 3 * v41;
    v219 = v41;
    v220 = 2 * v41;
    v43 = swift_allocObject();
    v218 = xmmword_1007A5620;
    *(v43 + 16) = xmmword_1007A5620;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    *&v231 = v43;
    *&v217 = sub_1000F5060(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    v216 = sub_10000C518(&unk_100944F40, &unk_1007A5C90);
    v215 = sub_100016BFC();
    v44 = v198;
    v45 = v222;
    sub_1007543A4();
    LODWORD(v214) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v46 = v228;
    v47 = *(v228 + 104);
    v212 = (v228 + 104);
    v213 = v47;
    v48 = v199;
    v49 = v224;
    v47(v199);
    sub_100750CE4();
    v208 = *(v46 + 8);
    v228 = v46 + 8;
    v208(v48, v49);
    v50 = *(v40 + 8);
    v227 = v40 + 8;
    v211 = v50;
    v50(v44, v45);
    v51 = v229[1];
    ++v229;
    v210 = v51;
    v52 = v223;
    v51(v39, v223);
    sub_1000F4268(&v234);
    sub_10000C620(&v237);
    v53 = v250;
    v54 = v251;
    v55 = sub_10000C888(v249, v250);
    *(&v238 + 1) = v53;
    v239 = v54[1];
    v56 = sub_10000D134(&v237);
    (*(*(v53 - 8) + 16))(v56, v55, v53);
    sub_100741AF4();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    LODWORD(v192) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v57 = v194;
    (v194)(v39);
    v191 = v42;
    v58 = swift_allocObject();
    *(v58 + 16) = v218;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v230[0] = v58;
    v59 = v222;
    sub_1007543A4();
    v213(v48, v214, v49);
    v60 = v193;
    sub_100750CE4();
    v208(v48, v49);
    v211(v44, v59);
    v210(v39, v52);
    sub_1000F4268(&v231);
    sub_10000C620(&v234);
    sub_10000C620(&v237);
    v184 = (2 * v60);
    v61 = v247;
    v62 = v248;
    v63 = sub_10000C888(v246, v247);
    *(&v238 + 1) = v61;
    v239 = v62[1];
    v64 = sub_10000D134(&v237);
    (*(*(v61 - 8) + 16))(v64, v63, v61);
    sub_100741AE4();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    (v57)(v39, v192, v52);
    v65 = swift_allocObject();
    *(v65 + 16) = v218;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v230[0] = v65;
    v66 = v222;
    sub_1007543A4();
    v67 = v224;
    v213(v48, v214, v224);
    v68 = v184;
    sub_100750CE4();
    v208(v48, v67);
    v211(v44, v66);
    v69 = v39;
    v70 = v39;
    v71 = v223;
    v210(v69, v223);
    sub_1000F4268(&v231);
    sub_10000C620(&v234);
    sub_10000C620(&v237);
    v193 += v68;
    v72 = v244;
    v73 = v245;
    v74 = sub_10000C888(v243, v244);
    *(&v238 + 1) = v72;
    v239 = v73[1];
    v75 = sub_10000D134(&v237);
    (*(*(v72 - 8) + 16))(v75, v74, v72);
    sub_100741B04();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v76 = v71;
    (v194)(v70, v192, v71);
    v77 = swift_allocObject();
    *(v77 + 16) = v218;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v230[0] = v77;
    v78 = v222;
    sub_1007543A4();
    v79 = v224;
    v213(v48, v214, v224);
    sub_100750CE4();
    v208(v48, v79);
    v211(v44, v78);
    v210(v70, v76);
    sub_1000F4268(&v231);
    sub_10000C620(&v234);
    sub_10000C620(&v237);
    sub_100741B54();
    v236 = 0;
    v234 = 0u;
    v235 = 0u;
    (v194)(v70, v185, v76);
    v80 = swift_allocObject();
    *(v80 + 16) = v218;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    *&v231 = v80;
    sub_1007543A4();
    v213(v48, v214, v79);
    sub_100750CE4();
    v81 = v48;
    v82 = v225;
    v83 = v187;
    v208(v81, v79);
    v211(v44, v78);
    v210(v70, v76);
    sub_1000F4268(&v234);
    sub_10000C620(&v237);
    v84 = v186;
    sub_100750CD4();
    sub_10000C620(v240);
    sub_10000C620(v243);
    sub_10000C620(v246);
    sub_10000C620(v249);
    sub_10000C620(v252);
    v85 = v203;
    v86 = v200;
    sub_100751124();
    (*(v204 + 8))(v85, v206);
    [v83 frame];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v95 = [v82 traitCollection];
    LOBYTE(v85) = sub_1007537F4();

    sub_100741AB4();
    sub_10000C888(v252, v253);
    v96 = [v82 traitCollection];
    sub_100750574();
    v98 = v97;

    if (v85)
    {
      sub_10000C620(v252);
      v99 = v88 - v98;
    }

    else
    {
      v99 = v88 + v98;
      sub_10000C620(v252);
    }

    v175 = v205;
    [v83 setFrame:{v99, v90 + 0.0, v92, v94}];
    v190(v226, v202);
    (*(v175 + 8))(v84, v86);
  }

  else
  {
    v100 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v255 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel];
    v101 = v255;
    v256 = v100;
    v102 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel];
    v253 = sub_100745C84();
    v254 = &protocol witness table for UILabel;
    v252[0] = v102;
    v201 = v15;
    v103 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
    v251 = &protocol witness table for UILabel;
    v250 = v253;
    v249[0] = v103;
    v182 = v5;
    v104 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton];
    v105 = type metadata accessor for OfferButton();
    v248 = &protocol witness table for UIView;
    v247 = v105;
    v246[0] = v104;
    v181 = v100;
    v180 = v101;
    v106 = v102;
    v107 = v103;
    v108 = v104;
    v109 = [v1 traitCollection];
    sub_100741AD4();
    sub_10000C888(v243, v244);
    sub_100750574();
    v194 = v17;
    sub_100741A94();
    v178 = sub_100751034();
    v179 = sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v110 = swift_allocObject();
    v221 = xmmword_1007A5CF0;
    *(v110 + 16) = xmmword_1007A5CF0;
    *(v110 + 32) = v109;
    v177 = v109;
    v111 = sub_100751044();
    sub_10074FC64();

    sub_10000C620(v243);
    sub_10000C518(&unk_100923060, qword_1007A5CA0);
    v112 = *(sub_100750CF4() - 8);
    v185 = *(v112 + 72);
    v113 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v114 = swift_allocObject();
    v176[1] = v114;
    *(v114 + 16) = xmmword_1007A97A0;
    v226 = (v114 + v113);
    sub_1007503C4();
    sub_100741AF4();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    LODWORD(v186) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v115 = v229;
    v116 = v229[13];
    v184 = (v229 + 13);
    v195 = v116;
    v117 = v197;
    v118 = v223;
    v116(v197);
    v196 = sub_10000C518(&unk_100944F30, &unk_1007ABDD0);
    v119 = v227;
    v120 = *(v227 + 72);
    v121 = *(v227 + 80);
    v207 = 3 * v120;
    v219 = 2 * v120;
    v220 = v121;
    *&v218 = v120;
    v183 = (v121 + 32) & ~v121;
    v122 = swift_allocObject();
    v217 = xmmword_1007A5620;
    *(v122 + 16) = xmmword_1007A5620;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    *&v234 = v122;
    v215 = sub_1000F5060(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    v214 = sub_10000C518(&unk_100944F40, &unk_1007A5C90);
    v216 = sub_100016BFC();
    v123 = v198;
    v124 = v222;
    sub_1007543A4();
    LODWORD(v213) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v125 = v118;
    v126 = v228;
    v127 = *(v228 + 104);
    v211 = (v228 + 104);
    v212 = v127;
    v128 = v199;
    v129 = v224;
    v127(v199);
    sub_100750CE4();
    v130 = *(v126 + 8);
    v228 = v126 + 8;
    v210 = v130;
    v130(v128, v129);
    v131 = *(v119 + 8);
    v227 = v119 + 8;
    v209 = v131;
    v132 = v124;
    v131(v123, v124);
    v133 = v115[1];
    v229 = v115 + 1;
    v208 = v133;
    v133(v117, v125);
    sub_1000F4268(&v237);
    sub_10000C620(v240);
    sub_10000C620(v243);
    v134 = v253;
    v135 = v254;
    v136 = sub_10000C888(v252, v253);
    v244 = v134;
    v245 = v135[1];
    v137 = sub_10000D134(v243);
    (*(*(v134 - 8) + 16))(v137, v136, v134);
    sub_100741AE4();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    v138 = v125;
    (v195)(v117, v186, v125);
    v139 = swift_allocObject();
    *(v139 + 16) = v217;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    *&v234 = v139;
    sub_1007543A4();
    v140 = v224;
    v212(v128, v213, v224);
    v141 = v185;
    sub_100750CE4();
    v210(v128, v140);
    v209(v123, v132);
    v142 = v117;
    v143 = v117;
    v144 = v138;
    v208(v142, v138);
    sub_1000F4268(&v237);
    sub_10000C620(v240);
    sub_10000C620(v243);
    v176[0] = 2 * v141;
    v145 = v250;
    v146 = v251;
    v147 = sub_10000C888(v249, v250);
    v244 = v145;
    v245 = v146[1];
    v148 = sub_10000D134(v243);
    (*(*(v145 - 8) + 16))(v148, v147, v145);
    sub_100741B04();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    (v195)(v143, v186, v144);
    v149 = swift_allocObject();
    *(v149 + 16) = v217;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    *&v234 = v149;
    sub_1007543A4();
    v150 = v224;
    v212(v128, v213, v224);
    v151 = v176[0];
    sub_100750CE4();
    v210(v128, v150);
    v209(v123, v132);
    v152 = v223;
    v208(v143, v223);
    sub_1000F4268(&v237);
    sub_10000C620(v240);
    sub_10000C620(v243);
    v186 = (v151 + v185);
    sub_100741B34();
    sub_100741A94();
    v241 = &type metadata for CGFloat;
    v242 = &protocol witness table for CGFloat;
    v240[0] = v153;
    (v195)(v143, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v152);
    v154 = swift_allocObject();
    *(v154 + 16) = v217;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    *&v237 = v154;
    sub_1007543A4();
    v155 = v224;
    v212(v128, v213, v224);
    sub_100750CE4();
    v210(v128, v155);
    v209(v123, v132);
    v208(v143, v152);
    sub_10000C620(v243);
    sub_1000F4268(v240);
    v156 = v187;
    sub_100750CD4();
    sub_100741A94();
    v157 = swift_allocObject();
    *(v157 + 16) = v221;
    v158 = v177;
    *(v157 + 32) = v177;
    v159 = v158;
    v160 = sub_100751044();
    sub_10074FC64();

    sub_100741A94();
    v161 = swift_allocObject();
    *(v161 + 16) = v221;
    *(v161 + 32) = v159;
    v162 = v159;
    v163 = sub_100751044();
    sub_10074FC64();

    sub_100741A94();
    v164 = swift_allocObject();
    *(v164 + 16) = v221;
    *(v164 + 32) = v162;
    v229 = v162;
    v165 = sub_100751044();
    sub_10074FC64();

    sub_100741B64();
    sub_10000C888(v243, v244);
    sub_100750574();
    sub_10000C620(v243);
    type metadata accessor for InAppPurchaseView(0);
    sub_1007503C4();
    v166 = v200;
    v241 = v200;
    v242 = &protocol witness table for VerticalFlowLayout;
    v167 = sub_10000D134(v240);
    v168 = v205;
    (*(v205 + 16))(v167, v156, v166);
    sub_10000C824(v243, &v237);
    v236 = &protocol witness table for Double;
    *(&v235 + 1) = &type metadata for Double;
    *&v234 = 0;
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v169 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
    v170 = *(v189 + 104);
    v171 = v191;
    v170(v188, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v191);
    v230[3] = sub_1007507D4();
    v230[4] = &protocol witness table for ZeroDimension;
    sub_10000D134(v230);
    sub_1007507C4();
    v170(v190, v169, v171);
    v172 = v192;
    sub_100750F74();

    sub_10000C620(v243);
    (*(v168 + 8))(v156, v166);
    (*(v201 + 8))(v194, v202);
    sub_10000C620(v246);
    sub_10000C620(v249);
    sub_10000C620(v252);

    v173 = v203;
    v174 = v182;
    sub_100751124();
    (*(v204 + 8))(v173, v206);
    (*(v193 + 8))(v172, v174);
  }
}

uint64_t type metadata accessor for CondensedInAppPurchaseContentView(uint64_t a1)
{
  result = qword_1009283A8;
  if (!qword_1009283A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F4268(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100931390, &qword_1007ABDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.prepareForReuse()()
{
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton) setHidden:1];
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView);

  [v1 setHidden:1];
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = sub_100741B94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CondensedInAppPurchaseContentView(0);
  v27.receiver = v1;
  v27.super_class = v8;
  objc_msgSendSuper2(&v27, "traitCollectionDidChange:", isa);
  if (isa)
  {
    v9 = [(objc_class *)isa preferredContentSizeCategory];
  }

  else
  {
    v9 = 0;
  }

  v10 = &selRef_initWithTitle_style_target_action_;
  v11 = [v2 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = &stru_1008F2000;
  if (!v9)
  {

LABEL_12:
    sub_1000F4700();
    [v2 v13[51].attr];
    goto LABEL_13;
  }

  v14 = sub_100753094();
  v16 = v15;
  if (v14 == sub_100753094() && v16 == v17)
  {

    v13 = &stru_1008F2000;
    v10 = &selRef_initWithTitle_style_target_action_;
    if (isa)
    {
      goto LABEL_14;
    }

LABEL_16:
    v20 = 2;
    goto LABEL_17;
  }

  v19 = sub_100754754();

  v13 = &stru_1008F2000;
  v10 = &selRef_initWithTitle_style_target_action_;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (!isa)
  {
    goto LABEL_16;
  }

LABEL_14:
  v20 = sub_100753804() & 1;
LABEL_17:
  v21 = [v2 v10[129]];
  v22 = sub_100753804();

  if (v20 == 2 || ((v22 ^ v20) & 1) != 0)
  {
    v23 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
    (*(v5 + 16))(v7, &v2[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_metrics], v4);
    v24.super.isa = [v2 v10[129]];
    v25 = v24.super.isa;
    v26 = sub_100741B74(v24);

    (*(v5 + 8))(v7, v4);
    [v23 setNumberOfLines:v26];
    [v2 v13[51].attr];
  }
}

id sub_1000F4700()
{
  v1 = v0;
  v40 = sub_100750534();
  v44 = *(v40 - 8);
  __chkstk_darwin(v40);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100741B94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel];
  v9 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v39 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_metrics;
  v10 = *(v5 + 16);
  v42 = v9;
  v43 = v5 + 16;
  v37 = v4;
  v10(v7, &v0[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_metrics], v4);
  v11 = v10;
  v35 = v10;
  sub_100741AA4();
  v38 = *(v5 + 8);
  v36 = v5 + 8;
  v38(v7, v4);
  v12 = [v0 traitCollection];
  v13 = sub_100753C14();

  v14 = *(v44 + 8);
  v44 += 8;
  v41 = v14;
  v15 = v40;
  v14(v3, v40);
  [v8 setFont:v13];

  [v8 setLineBreakMode:4];
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel];
  v17 = v39;
  v18 = v37;
  v11(v7, &v1[v39], v37);
  sub_100741B84();
  v19 = v18;
  v20 = v38;
  v38(v7, v19);
  v21 = [v1 traitCollection];
  v22 = sub_100753C14();

  v41(v3, v15);
  [v16 setFont:v22];

  [v16 setLineBreakMode:4];
  v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
  v23 = &v1[v17];
  v24 = v37;
  v25 = v35;
  v35(v7, v23, v37);
  sub_100741AC4();
  v20(v7, v24);
  v26 = [v1 traitCollection];
  v27 = sub_100753C14();

  v41(v3, v40);
  v28 = v34;
  [v34 setFont:v27];

  v25(v7, &v1[v39], v24);
  v29.super.isa = [v1 traitCollection];
  isa = v29.super.isa;
  v31 = sub_100741B74(v29);

  v38(v7, v24);
  [v28 setNumberOfLines:v31];
  return [v28 setLineBreakMode:4];
}

id CondensedInAppPurchaseContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedInAppPurchaseContentView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1000F4C60()
{
  sub_100741ED4();
  sub_1000F5060(&qword_1009283B8, &type metadata accessor for InAppPurchaseSearchResult, &protocol conformance descriptor for SearchResult);
  sub_1007468B4();
  if (v3)
  {
    sub_100741EC4();
    v1 = sub_1006C301C(93.0, 93.0);

    v2._rawValue = v1;
    sub_100744224(v2);
  }

  return result;
}

uint64_t sub_1000F4D38(uint64_t a1)
{
  *(a1 + 8) = sub_1000F5060(&qword_100928368, type metadata accessor for CondensedInAppPurchaseContentView, &protocol conformance descriptor for CondensedInAppPurchaseContentView);
  result = sub_1000F5060(&qword_100928370, type metadata accessor for CondensedInAppPurchaseContentView, &protocol conformance descriptor for CondensedInAppPurchaseContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F4E0C(uint64_t a1)
{
  result = sub_100741B94();
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

void sub_1000F4EC0()
{
  v1 = sub_100741E54();
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel;
  sub_100745C84();
  *(v0 + v4) = sub_100745C64();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel;
  *(v0 + v5) = sub_100745C64();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel;
  *(v0 + v6) = sub_100745C64();
  v7 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton;
  v8 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v0 + v7) = sub_100154454(0);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView;
  sub_100741DD4();
  v10 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *(v0 + v9) = sub_10027562C(v3, 1);
  _s22SubscribePageExtension33CondensedInAppPurchaseContentViewC7metrics0F8StoreKit0d6SearchefG10CardLayoutV7MetricsVvpfi_0();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_tileOffset) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1000F5060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000F5200(unint64_t a1)
{
  v3 = sub_1007417F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v45 - v7;
  __chkstk_darwin(v8);
  v56 = &v45 - v9;
  __chkstk_darwin(v10);
  v50 = &v45 - v11;
  __chkstk_darwin(v12);
  v46 = &v45 - v13;
  __chkstk_darwin(v14);
  v49 = &v45 - v15;
  sub_100016C60(0, &qword_100928438, UICollectionViewUpdateItem_ptr);
  isa = sub_100753294().super.isa;
  v17 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v59.receiver = v1;
  v59.super_class = v17;
  objc_msgSendSuper2(&v59, "prepareForCollectionViewUpdates:", isa);

  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    if (a1 >> 62)
    {
      v18 = sub_100754664();
      if (!v18)
      {
        return;
      }
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        return;
      }
    }

    if (v18 < 1)
    {
      __break(1u);
    }

    else
    {
      v19 = 0;
      v48 = OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate;
      v54 = a1;
      v55 = OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate;
      v58 = a1 & 0xC000000000000001;
      v20 = (v4 + 32);
      v51 = v4 + 8;
      v52 = (v4 + 16);
      v21 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
      v53 = v18;
      do
      {
        if (v58)
        {
          v22 = sub_100754574();
        }

        else
        {
          v22 = *(a1 + 8 * v19 + 32);
        }

        v23 = v22;
        if (![v22 v21[40]])
        {
          v24 = [v23 indexPathAfterUpdate];
          if (v24)
          {
            v25 = v46;
            v26 = v24;
            sub_100741744();

            v27 = *v20;
            v28 = v49;
            (*v20)(v49, v25, v3);
            (*v52)(v50, v28, v3);
            v29 = v48;
            v30 = *&v1[v48];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v1[v29] = v30;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v30 = sub_1002558B8(0, *(v30 + 2) + 1, 1, v30);
              *&v1[v48] = v30;
            }

            v33 = *(v30 + 2);
            v32 = *(v30 + 3);
            if (v33 >= v32 >> 1)
            {
              v30 = sub_1002558B8((v32 > 1), v33 + 1, 1, v30);
            }

            *(v30 + 2) = v33 + 1;
            v27(&v30[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33], v50, v3);
            v34 = v49;
            *&v1[v48] = v30;
            (*(v4 + 8))(v34, v3);
            v18 = v53;
            a1 = v54;
            v21 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
          }
        }

        if ([v23 v21[40]] == 1 && (v35 = objc_msgSend(v23, "indexPathBeforeUpdate")) != 0)
        {
          v36 = v47;
          v37 = v35;
          sub_100741744();

          v38 = *v20;
          v39 = v56;
          (*v20)(v56, v36, v3);
          (*v52)(v57, v39, v3);
          v40 = v55;
          v41 = *&v1[v55];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          *&v1[v40] = v41;
          if ((v42 & 1) == 0)
          {
            v41 = sub_1002558B8(0, *(v41 + 2) + 1, 1, v41);
            *&v1[v55] = v41;
          }

          v44 = *(v41 + 2);
          v43 = *(v41 + 3);
          if (v44 >= v43 >> 1)
          {
            v41 = sub_1002558B8((v43 > 1), v44 + 1, 1, v41);
          }

          *(v41 + 2) = v44 + 1;
          v38(&v41[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v44], v57, v3);
          *&v1[v55] = v41;

          (*(v4 + 8))(v56, v3);
          v18 = v53;
          a1 = v54;
          v21 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
        }

        else
        {
        }

        ++v19;
      }

      while (v18 != v19);
    }
  }
}

char *sub_1000F5814(uint64_t a1)
{
  v2 = v1;
  isa = sub_100741704().super.isa;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v13, "initialLayoutAttributesForAppearingItemAtIndexPath:", isa);

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate];

  v9 = sub_10046E0A0(a1, v8);

  if (v9)
  {
    [v7 setAlpha:0.4];
    v10 = sub_1000F61B8();
    v11 = *&v7[OBJC_IVAR____TtCC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation];
    *&v7[OBJC_IVAR____TtCC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation] = v10;
  }

  return v7;
}

char *sub_1000F5934(uint64_t a1)
{
  v2 = v1;
  isa = sub_100741704().super.isa;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v13, "finalLayoutAttributesForDisappearingItemAtIndexPath:", isa);

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate];

  v9 = sub_10046E0A0(a1, v8);

  if (v9)
  {
    v10 = sub_1000F67A0();
    v11 = *&v7[OBJC_IVAR____TtCC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation];
    *&v7[OBJC_IVAR____TtCC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation] = v10;
  }

  [v7 setZIndex:1];
  return v7;
}

id sub_1000F5A44(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

void *sub_1000F5B4C(double a1, double a2, double a3, double a4)
{
  v31 = sub_1007417F4();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v39.receiver = v4;
  v39.super_class = v11;
  result = objc_msgSendSuper2(&v39, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (result)
  {
    v13 = result;
    v14 = sub_100016C60(0, &qword_100923730, UICollectionViewLayoutAttributes_ptr);
    v15 = sub_1007532A4();

    if (v15 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
    {
      v38 = _swiftEmptyArrayStorage;
      v17 = v4;
      v4 = &v38;
      result = sub_1007545C4();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v18 = 0;
      v32 = OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate;
      v35 = v15 & 0xFFFFFFFFFFFFFF8;
      v36 = OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled;
      v28 = v9 + 1;
      v29 = v17;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = sub_100754574();
          goto LABEL_14;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v18 >= *(v35 + 16))
        {
          goto LABEL_25;
        }

        v19 = *(v15 + 8 * v18 + 32);
LABEL_14:
        v9 = v19;
        [v19 copy];
        sub_100754314();
        swift_unknownObjectRelease();
        if (!swift_dynamicCast())
        {
          goto LABEL_8;
        }

        v20 = i;
        v21 = v14;
        v22 = v37;
        [v37 setZIndex:3];
        if ((*(v17 + v36) & 1) != 0 && (v23 = [v17 collectionView]) != 0)
        {
          v34 = v23;
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_10064D5B8();
            v33 = v24;
            swift_unknownObjectRelease();
            v25 = [v22 indexPath];
            v26 = v30;
            sub_100741744();

            v27 = sub_100741774();
            (*v28)(v26, v31);
            if (v27 < v33)
            {
              [v22 setZIndex:4];
            }

            v9 = v22;
            v17 = v29;
            goto LABEL_7;
          }
        }

        else
        {
        }

        v9 = v22;
LABEL_7:
        v14 = v21;
        i = v20;
LABEL_8:
        ++v18;
        v4 = &v38;
        sub_1007545A4();
        sub_1007545D4();
        sub_1007545E4();
        sub_1007545B4();
        if (i == v18)
        {

          return v38;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

id sub_1000F61B8()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 frame];
  Width = CGRectGetWidth(v18);
  CATransform3DMakeTranslation(&v17, Width, 0.0, 0.0);
  v4 = sub_100753064();
  v5 = [objc_opt_self() animationWithKeyPath:v4];

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 valueWithCATransform3D:&v17];
  [v7 setFromValue:v8];

  v9 = *&CATransform3DIdentity.m33;
  *&v17.m31 = *&CATransform3DIdentity.m31;
  *&v17.m33 = v9;
  v10 = *&CATransform3DIdentity.m43;
  *&v17.m41 = *&CATransform3DIdentity.m41;
  *&v17.m43 = v10;
  v11 = *&CATransform3DIdentity.m13;
  *&v17.m11 = *&CATransform3DIdentity.m11;
  *&v17.m13 = v11;
  v12 = *&CATransform3DIdentity.m23;
  *&v17.m21 = *&CATransform3DIdentity.m21;
  *&v17.m23 = v12;
  v13 = [v6 valueWithCATransform3D:&v17];
  [v7 setToValue:v13];

  v14 = v7;
  v15 = CACurrentMediaTime();
  [v14 setBeginTime:v15 + sub_100741754() * 0.05];
  [v14 setFillMode:kCAFillModeBackwards];
  [v14 setMass:1.0];
  [v14 setStiffness:250.0];
  [v14 setDamping:28.0];
  [v14 setInitialVelocity:0.0];
  [v14 settlingDuration];
  [v14 setDuration:?];

  return v14;
}

id sub_1000F6410(void *a1)
{
  v16 = a1;
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v16 copy];
  sub_100754314();
  swift_unknownObjectRelease();
  sub_100016C60(0, &qword_100923730, UICollectionViewLayoutAttributes_ptr);
  if (swift_dynamicCast())
  {
    v7 = v17;
    [v17 setZIndex:3];
    if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) == 1)
    {
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_10064D5B8();
          v11 = v10;
          swift_unknownObjectRelease();
          v12 = [v7 indexPath];
          sub_100741744();

          v13 = sub_100741774();
          (*(v3 + 8))(v6, v2);
          if (v13 < v11)
          {
            [v7 setZIndex:4];
          }
        }
      }
    }

    return v7;
  }

  else
  {
    v15 = v16;

    return v15;
  }
}

id sub_1000F6734(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000F67A0()
{
  v0 = sub_100753064();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  v2 = v1;
  [v2 setBeginTime:CACurrentMediaTime()];
  [v2 setDuration:0.1];
  v3 = v2;
  isa = sub_100753424().super.super.isa;
  [v3 setFromValue:isa];

  v5 = sub_100753424().super.super.isa;
  [v3 setToValue:v5];

  v6 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v7) = 1043207291;
  LODWORD(v8) = 1059816735;
  LODWORD(v9) = 1.0;
  v10 = [v6 initWithControlPoints:v7 :0.0 :v8 :v9];
  [v3 setTimingFunction:v10];

  return v3;
}

unint64_t sub_1000F68EC()
{
  result = qword_100928440;
  if (!qword_100928440)
  {
    type metadata accessor for InformationRibbonCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100928440);
  }

  return result;
}

uint64_t sub_1000F6954(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v3 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  swift_getKeyPath();
  sub_100746914();

  sub_1007525C4();
  (*(v4 + 8))(v6, v3);
  sub_100746904();
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v7 = v11;
  v8 = sub_10007DC04();
  v9 = sub_10025E1F8();
  if (v9)
  {
    sub_10025CA48(v9, v7, a2, v8);
  }

  return swift_unknownObjectRelease();
}

char *sub_1000F6AF8(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView);
  v3 = a1[2];
  if (v3)
  {
    sub_10001E46C(0, v3, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = a1 + 4;
    v7 = _swiftEmptyArrayStorage[2];
    v8 = a1 + 5;
    v9 = v3;
    do
    {
      v10 = *v8;
      v17 = v5;
      v11 = v5[3];
      if (v7 >= v11 >> 1)
      {
        sub_10001E46C((v11 > 1), v7 + 1, 1);
        v5 = v17;
      }

      v5[2] = v7 + 1;
      v5[v7 + 4] = v10;
      v8 += 2;
      ++v7;
      --v9;
    }

    while (v9);
    sub_100037D2C(v5);
    sub_1007545C4();
    v12 = objc_opt_self();
    do
    {
      v13 = *v6;
      v6 += 2;
      v14 = [v12 blackColor];
      v15 = [v14 colorWithAlphaComponent:v13];

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      --v3;
    }

    while (v3);
  }

  else
  {
    sub_100037D2C(_swiftEmptyArrayStorage);
  }

  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors) = _swiftEmptyArrayStorage;

  return sub_100037ED0();
}

id sub_1000F6CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1000F8070(a2, a3);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] = a1;
  v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView];

  sub_100016C60(0, &qword_10092BE10, UIVisualEffect_ptr);
  isa = sub_100753294().super.isa;

  [v8 setBackgroundEffects:isa];

  [v8 setOverrideUserInterfaceStyle:*&v3[v7]];

  return [v3 setNeedsLayout];
}

id sub_1000F6DE0()
{
  result = [objc_opt_self() colorEffectSaturate:1.5];
  qword_100928450 = result;
  return result;
}

void sub_1000F6E60(double a1, uint64_t a2, SEL *a3, uint64_t a4, void *a5)
{
  sub_100016C60(0, &unk_10092F760, UIColorEffect_ptr);
  v9 = [objc_opt_self() *a3];
  v10 = [swift_getObjCClassFromMetadata() effectCompositingColor:v9 withMode:a4 alpha:a1];

  if (v10)
  {
    *a5 = v10;
  }

  else
  {
    __break(1u);
  }
}

id sub_1000F6F44(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() _effectWithBlurRadius:a1 scale:0.125];
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000F6FC4()
{
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007AC000;
  if (qword_100920248 != -1)
  {
    swift_once();
  }

  v1 = qword_100928448;
  *(v0 + 32) = qword_100928448;
  v2 = qword_100920250;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_100928450;
  *(v0 + 40) = qword_100928450;
  v5 = qword_100920258;
  v6 = v4;
  if (v5 == -1)
  {
    v7 = v6;
  }

  else
  {
    swift_once();
    v7 = qword_100928450;
  }

  v8 = qword_100928458;
  *(v0 + 48) = qword_100928458;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007AC000;
  v10 = qword_100928448;
  *(v9 + 32) = qword_100928448;
  *(v9 + 40) = v7;
  v11 = qword_100920260;
  v12 = v8;
  v13 = v10;
  v14 = v7;
  if (v11 != -1)
  {
    swift_once();
  }

  v15 = qword_100928460;
  *(v9 + 48) = qword_100928460;
  *&xmmword_10097DAB0 = v0;
  *(&xmmword_10097DAB0 + 1) = v9;

  return v15;
}

double sub_1000F717C()
{
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007AC000;
  if (qword_100920248 != -1)
  {
    swift_once();
  }

  v1 = qword_100928448;
  *(v0 + 32) = qword_100928448;
  v2 = qword_100920250;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_100928450;
  *(v0 + 40) = qword_100928450;
  v5 = qword_100920268;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_100928468;
  *(v0 + 48) = qword_100928468;
  v8 = qword_100920280;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  qword_10097DAC0 = v0;
  *algn_10097DAC8 = *(&xmmword_10097DAB0 + 1);

  return result;
}

id sub_1000F72DC()
{
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007A7210;
  if (qword_100920248 != -1)
  {
    swift_once();
  }

  v1 = qword_100928448;
  *(v0 + 32) = qword_100928448;
  v2 = qword_100920258;
  v3 = v1;
  if (v2 == -1)
  {
    v4 = v3;
  }

  else
  {
    swift_once();
    v4 = qword_100928448;
  }

  v5 = qword_100928458;
  *(v0 + 40) = qword_100928458;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007A7210;
  *(v6 + 32) = v4;
  v7 = qword_100920260;
  v8 = v5;
  v9 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  v10 = qword_100928460;
  *(v6 + 40) = qword_100928460;
  qword_10097DAD0 = v0;
  *algn_10097DAD8 = v6;

  return v10;
}

char *sub_1000F744C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView;
  *&v1[v4] = [objc_allocWithZone(UIVisualEffectView) init];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType] = kCAGradientLayerAxial;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientEndY] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] = 0;
  v6 = &v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_style];
  v7 = qword_100920280;
  v8 = kCAGradientLayerAxial;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = *(&xmmword_10097DAB0 + 1);
  *v6 = xmmword_10097DAB0;
  v6[1] = v9;
  v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_includeTopGradientFade] = 1;
  v42.receiver = v1;
  v42.super_class = ObjectType;

  v10 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 setClipsToBounds:0];
  v15 = [v14 layer];
  [v15 setAllowsGroupBlending:1];

  [v14 setUserInteractionEnabled:0];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView;
  [*&v14[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*&v14[v16] setClipsToBounds:0];
  v17 = [*&v14[v16] layer];
  [v17 setAllowsGroupBlending:0];

  [*&v14[v16] setUserInteractionEnabled:0];
  [v14 addSubview:*&v14[v16]];
  if (v14[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_includeTopGradientFade] == 1)
  {
    [v14 insertSubview:*&v14[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView] aboveSubview:*&v14[v16]];
  }

  else
  {
    [*&v14[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView] removeFromSuperview];
  }

  v18 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView;
  v19 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView];
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = v19;
    sub_10001E46C(0, v20, 0);
    v22 = _swiftEmptyArrayStorage;
    v23 = _swiftEmptyArrayStorage[2];
    v24 = (a1 + 40);
    v25 = v20;
    do
    {
      v26 = *v24;
      v41 = v22;
      v27 = v22[3];
      if (v23 >= v27 >> 1)
      {
        sub_10001E46C((v27 > 1), v23 + 1, 1);
        v22 = v41;
      }

      v22[2] = v23 + 1;
      v22[v23 + 4] = v26;
      v24 += 2;
      ++v23;
      --v25;
    }

    while (v25);
  }

  else
  {
    v28 = v19;
    v22 = _swiftEmptyArrayStorage;
  }

  sub_100037D2C(v22);

  v29 = *&v14[v18];
  if (v20)
  {
    v40 = *&v14[v18];
    v30 = v29;
    sub_1007545C4();
    v31 = objc_opt_self();
    v32 = 32;
    do
    {
      v33 = *(a1 + v32);
      v34 = [v31 blackColor];
      v35 = [v34 colorWithAlphaComponent:v33];

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      v32 += 16;
      --v20;
    }

    while (v20);

    v29 = v40;
  }

  else
  {
    v36 = v29;
  }

  *&v29[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_100037ED0();

  v37 = [*&v14[v18] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setMasksToBounds:0];

  v38 = [*&v14[v18] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setCompositingFilter:kCAFilterDestOut];

  return v14;
}

void sub_1000F79C4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView);
  v3 = [v2 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType);
  [v4 setType:v5];

  v6 = sub_100753094();
  v8 = v7;
  if (v6 == sub_100753094() && v8 == v9)
  {

    v12 = &off_1008626E0;
    v13 = 5;
  }

  else
  {
    v11 = sub_100754754();

    if (v11)
    {
      v12 = &off_1008626E0;
    }

    else
    {
      v12 = &off_100862680;
    }

    v13 = v12[2];
    if (!v13)
    {

      sub_100037D2C(_swiftEmptyArrayStorage);

      goto LABEL_18;
    }
  }

  v25 = v1;

  sub_10001E46C(0, v13, 0);
  v14 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage[2];
  v16 = 5;
  v17 = v13;
  do
  {
    v18 = v12[v16];
    v26 = v14;
    v19 = v14[3];
    if (v15 >= v19 >> 1)
    {
      sub_10001E46C((v19 > 1), v15 + 1, 1);
      v14 = v26;
    }

    v14[2] = v15 + 1;
    v14[v15 + 4] = v18;
    v16 += 2;
    ++v15;
    --v17;
  }

  while (v17);
  sub_100037D2C(v14);
  sub_1007545C4();
  v20 = objc_opt_self();
  v21 = 4;
  do
  {
    v22 = *&v12[v21];
    v23 = [v20 blackColor];
    v24 = [v23 colorWithAlphaComponent:v22];

    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();
    v21 += 2;
    --v13;
  }

  while (v13);

LABEL_18:
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_100037ED0();

  sub_1000F7CD8();
}

void sub_1000F7CD8()
{
  v1 = v0;
  v2 = sub_100753094();
  v4 = v3;
  if (v2 == sub_100753094() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_100754754();

    if ((v7 & 1) == 0)
    {
      v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle];
      v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientStartY];
      v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientEndY];
      v11 = 0.5;
      if (v8 == 0.0)
      {
        v12 = 0.5;
      }

      else
      {
        v21 = (v9 + v10) * 0.5;
        CGAffineTransformMakeRotation(&v28, *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle]);
        v30.x = 0.0;
        v30.y = v9 - v21;
        v22 = CGPointApplyAffineTransform(v30, &v28);
        v11 = v22.x + 0.5;
        v9 = v21 + v22.y;
        CGAffineTransformMakeRotation(&v28, v8);
        v31.x = 0.0;
        v31.y = v10 - v21;
        v23 = CGPointApplyAffineTransform(v31, &v28);
        v12 = v23.x + 0.5;
        v10 = v21 + v23.y;
      }

      v24 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView];
      v25 = [v24 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v9}];

      v26 = [v24 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v12, v10}];

      return;
    }
  }

  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView];
  v14 = [v0 traitCollection];
  v15 = sub_1007537F4();

  if (v15)
  {
    v16 = 0.7;
  }

  else
  {
    v16 = 0.3;
  }

  v17 = [v13 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v16, 1.0}];

  v18 = [v1 traitCollection];
  v19 = sub_1007537F4();

  if (v19)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 1.0;
  }

  v27 = [v13 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v20, 0.0}];
}

void sub_1000F8070(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_style + 8);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_style) = a1;
  *v3 = a2;

  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView);

  sub_100016C60(0, &qword_10092BE10, UIVisualEffect_ptr);
  isa = sub_100753294().super.isa;

  [v4 setBackgroundEffects:isa];
}

id sub_1000F8150()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView];
  result = [v2 superview];
  if (result)
  {

    [v0 bounds];
    return [v2 setFrame:?];
  }

  return result;
}

id sub_1000F8298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10074FB54();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v20 - v12;

  sub_1000F8070(a2, a3);
  sub_10074FB74();
  (*(v8 + 104))(v10, enum case for TodayCard.Style.white(_:), v7);
  sub_1000F8684();
  sub_100753274();
  sub_100753274();
  if (v20[1] == v20[0])
  {
    v14 = 1;
  }

  else if (sub_100754754())
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);

  v16 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] = v14;
  v17 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView];

  sub_100016C60(0, &qword_10092BE10, UIVisualEffect_ptr);
  isa = sub_100753294().super.isa;

  [v17 setBackgroundEffects:isa];

  [v17 setOverrideUserInterfaceStyle:*&v4[v16]];
  return [v4 setNeedsLayout];
}

uint64_t sub_1000F85F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F8638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000F8684()
{
  result = qword_1009239F0;
  if (!qword_1009239F0)
  {
    sub_10074FB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009239F0);
  }

  return result;
}

id sub_1000F86DC(uint64_t a1)
{
  sub_100016C60(0, &unk_10092F760, UIColorEffect_ptr);
  result = [swift_getObjCClassFromMetadata() effectCompositingColor:a1 withMode:0 alpha:0.4];
  if (result)
  {
    v3 = result;
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1007AC000;
    if (qword_100920270 != -1)
    {
      swift_once();
    }

    v5 = qword_100928470;
    *(v4 + 32) = qword_100928470;
    *(v4 + 40) = v3;
    v6 = qword_100920278;
    v7 = v5;
    v8 = v3;
    if (v6 != -1)
    {
      swift_once();
    }

    v9 = qword_100928478;
    *(v4 + 48) = qword_100928478;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007AC000;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    *(v10 + 48) = v9;
    v11 = v9;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000F8858()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType) = kCAGradientLayerAxial;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientEndY) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_style;
  v4 = qword_100920280;
  v5 = kCAGradientLayerAxial;
  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + v3) = xmmword_10097DAB0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_includeTopGradientFade) = 1;
  sub_100754644();
  __break(1u);
}

uint64_t type metadata accessor for SearchResultsPageLayoutSectionProvider(uint64_t a1)
{
  result = qword_1009284F0;
  if (!qword_1009284F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F8A2C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  sub_10000C824(a1, v7);
  sub_10000C824(v7, &v6);
  v4 = sub_10074CB64();
  sub_10000C620(a1);
  sub_10000C620(v7);
  return v4;
}

id sub_1000F8AB8(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3, uint64_t a4, void *a5, char *a6, void (*a7)(char *, unint64_t, uint64_t), uint64_t a8, uint64_t a9, void *a10)
{
  v65 = a7;
  v62 = a8;
  v63 = a4;
  v66 = a5;
  v67 = a6;
  v64 = a10;
  v58 = a9;
  v12 = sub_1007469A4();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074E984();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v57 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v54 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v49 - v25;
  v27 = a2(v24);
  v28 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v29 = *(v21 + 8);
  v55 = v21 + 8;
  v56 = v20;
  v53 = v29;
  v29(v26, v20);
  v59 = v19;
  v60 = v15;
  v30 = *(v15 + 88);
  v61 = v14;
  v31 = v30(v19, v14);
  if (v31 == enum case for Shelf.ContentType.searchResult(_:) && *(v27 + 16) && (v32 = v50, v33 = v51, v34 = v52, (*(v51 + 16))(v50, v27 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v52), sub_100747E74(), sub_1000FA888(&qword_100927520, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult), sub_1007468B4(), (*(v33 + 8))(v32, v34), (v31 = v68) != 0))
  {

    v35 = sub_1000F911C(v28, v27, v63, v66, v67, v65, v62, v58, v64);

    sub_10074CB84();
    v36 = v60;
    v37 = v61;
  }

  else
  {
    v52 = &v49;
    __chkstk_darwin(v31);
    __chkstk_darwin(v38);
    sub_10074CBA4();
    v39 = sub_10074CBB4();
    v40 = v58;
    v41 = v28;
    v51 = v27;
    v42 = v62;
    v50 = v39(v28, sub_1000FA880, &v49 - 4, v63, v66, v67, v65, v62, v58, v64);
    v43 = v54;
    sub_100747C04();
    swift_getKeyPath();
    v45 = v56;
    v44 = v57;
    sub_1007525B4();

    v53(v43, v45);
    v37 = v61;
    v46 = v30(v44, v61);
    if (v46 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v35 = sub_1003EFB6C(v41, v51, v63, v66, v67, v65, v42, v40, v64);

      v36 = v60;
    }

    else
    {
      v35 = v50;
      v36 = v60;
      if (v46 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v47 = sub_1003F0EB0(v41, v51, v63, v66, v67, v65, v62, v40, v64);

        v35 = v47;
      }

      else if (v46 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        [v50 setOrthogonalScrollingBehavior:{2, v66, v67}];
      }

      else
      {

        (*(v36 + 8))(v57, v37);
      }
    }
  }

  (*(v36 + 8))(v59, v37);
  return v35;
}

id sub_1000F911C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, void (*a6)(char *, unint64_t, uint64_t), uint64_t a7, uint64_t a8, void *a9)
{
  v159 = a8;
  v149 = a7;
  v164 = a4;
  *&v160 = a3;
  v150 = a1;
  v168 = a9;
  v155 = sub_10074E984();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v158 = v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v152 = *(v153 - 1);
  __chkstk_darwin(v153);
  v151 = v132 - v13;
  v14 = sub_10074F704();
  v146 = *(v14 - 8);
  __chkstk_darwin(v14);
  v145 = v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  i = sub_10074CE44();
  v16 = *(i - 1);
  __chkstk_darwin(i);
  v157 = v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v156 = v132 - v19;
  __chkstk_darwin(v20);
  v163 = v132 - v21;
  __chkstk_darwin(v22);
  v162 = v132 - v23;
  v24 = sub_1007469A4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v32 = v132 - v30;
  if (!*(a2 + 16))
  {
    goto LABEL_7;
  }

  v142 = *(a2 + 16);
  v141 = v16;
  v33 = *(v25 + 16);
  v34 = a2;
  v143 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v166 = v33;
  v167 = (v25 + 16);
  (v33)(v132 - v30, a2 + v143, v24, v31);
  v35 = sub_100747E74();
  sub_1000FA888(&qword_100927520, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  v147 = v35;
  sub_1007468B4();
  v36 = v172;
  if (!v172)
  {
    v29 = (*(v25 + 8))(v32, v24);
    goto LABEL_6;
  }

  v161 = v24;
  v144 = v32;
  if (sub_100747E54())
  {
    (*(v25 + 8))(v144, v161);

LABEL_6:
    a2 = v34;
LABEL_7:
    v148 = a2;
    i = v132;
    __chkstk_darwin(v29);
    __chkstk_darwin(v37);
    sub_10074CBA4();
    v38 = sub_10074CBB4();
    v39 = v150;
    v40 = v160;
    v41 = v164;
    v42 = v149;
    v163 = a5;
    v166 = a6;
    v167 = v38(v150, sub_1000FA8D0, &v132[-4], v160, v164, a5, a6, v149, v159, v168);
    v43 = v151;
    sub_100747C04();
    swift_getKeyPath();
    v44 = v158;
    v45 = v153;
    sub_1007525B4();

    (*(v152 + 8))(v43, v45);
    v46 = v154;
    v47 = v155;
    v48 = (*(v154 + 88))(v44, v155);
    if (v48 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v49 = sub_1003EFB6C(v39, v148, v40, v41, v163, v166, v42, v159, v168);
    }

    else
    {
      v50 = v167;
      if (v48 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v49 = sub_1003F0EB0(v150, v148, v160, v164, v163, v166, v149, v159, v168);
      }

      else if (v48 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v49 = v167;
        [v167 setOrthogonalScrollingBehavior:2];
      }

      else
      {
        (*(v46 + 8))(v158, v47);
        return v50;
      }
    }

    return v49;
  }

  v138 = v36;
  v140 = v14;
  v51 = sub_100744104();
  v164 = sub_1000FA888(&unk_100928540, &type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
  v165 = v51;
  sub_1007468B4();
  v139 = v25;
  v158 = v27;
  if (v172)
  {
    if (sub_1000F0DA4())
    {
      sub_100748B84();
      v53 = v52;
    }

    else
    {

      v53 = 0.0;
    }
  }

  else
  {
    v53 = 0.0;
  }

  v55 = objc_opt_self();
  v56 = [v55 fractionalWidthDimension:1.0];
  v135 = v55;
  v57 = [v55 absoluteDimension:v53];
  v134 = objc_opt_self();
  v58 = [v134 sizeWithWidthDimension:v56 heightDimension:v57];

  swift_getObjectType();
  v59 = v58;
  sub_10074B564();
  sub_100016C60(0, &unk_10092E470, NSCollectionLayoutSupplementaryItem_ptr);
  isa = sub_100753294().super.isa;

  v61 = [objc_opt_self() itemWithLayoutSize:v59 supplementaryItems:isa];

  v62 = objc_opt_self();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v63 = swift_allocObject();
  v160 = xmmword_1007A5CF0;
  *(v63 + 16) = xmmword_1007A5CF0;
  *(v63 + 32) = v61;
  v64 = sub_100016C60(0, &qword_100923478, NSCollectionLayoutItem_ptr);
  v136 = v61;
  v132[2] = v64;
  v65 = sub_100753294().super.isa;

  v133 = v62;
  v137 = v59;
  v66 = [v62 horizontalGroupWithLayoutSize:v59 subitems:v65];

  v67 = swift_allocObject();
  *(v67 + 16) = v160;
  *(v67 + 32) = v66;
  v175 = v67;
  v68 = v143;
  sub_100631794(v34, v34 + v143, 1, (2 * v142) | 1);
  v70 = v69;
  v71 = *(v69 + 16);
  v142 = v66;
  if (v71)
  {
    v174 = _swiftEmptyArrayStorage;
    sub_10001E46C(0, v71, 0);
    v132[1] = v70;
    v72 = v70 + v68;
    v154 = v141 + 104;
    v153 = (v141 + 8);
    v73 = v174;
    v74 = (v139 + 8);
    v75 = *(v139 + 72);
    LODWORD(v151) = enum case for SearchResultCondensedBehavior.always(_:);
    v76 = v158;
    v77 = v161;
    v152 = v75;
    do
    {
      v166(v76, v72, v77);
      sub_1007468B4();
      v78 = v172;
      if (!v172)
      {
        goto LABEL_55;
      }

      v155 = sub_1007493C4();
      if (swift_dynamicCastClass())
      {
        *&v160 = v78;
        v79 = v74;
        sub_1007440F4();
        (*v154)(v163, v151, i);
        sub_1000FA888(&qword_100928228, &type metadata accessor for SearchResultCondensedBehavior, &protocol conformance descriptor for SearchResultCondensedBehavior);
        sub_100753274();
        sub_100753274();
        if (v172 == v170 && v173 == v171)
        {
          v80 = *v153;
          v81 = i;
          (*v153)(v163, i);
          v80(v162, v81);

          v76 = v158;
          v74 = v79;
          v75 = v152;
LABEL_28:
          type metadata accessor for CondensedEditorialSearchResultContentView(0);
          v85 = type metadata accessor for CondensedEditorialSearchResultContentView;
          v86 = &unk_1007A5AE4;
          v87 = &unk_100928238;
          goto LABEL_37;
        }

        v82 = sub_100754754();
        v83 = *v153;
        v84 = i;
        (*v153)(v163, i);
        v83(v162, v84);

        v76 = v158;
        v75 = v152;
        if (v82)
        {
          goto LABEL_28;
        }
      }

      v88 = sub_100741ED4();
      if (swift_dynamicCastClass())
      {
        *&v160 = v88;
        sub_1007440F4();
        (*v154)(v157, v151, i);
        sub_1000FA888(&qword_100928228, &type metadata accessor for SearchResultCondensedBehavior, &protocol conformance descriptor for SearchResultCondensedBehavior);
        sub_100753274();
        sub_100753274();
        if (v172 == v170 && v173 == v171)
        {
          v89 = *v153;
          v90 = i;
          (*v153)(v157, i);
          v89(v156, v90);

          v76 = v158;
          v75 = v152;
LABEL_34:
          type metadata accessor for CondensedInAppPurchaseContentView(0);
          v85 = type metadata accessor for CondensedInAppPurchaseContentView;
          v86 = &unk_1007ABDE8;
          v87 = &unk_100928230;
LABEL_37:
          sub_1000FA888(v87, v85, v86);
          v77 = v161;
          goto LABEL_38;
        }

        LODWORD(v148) = sub_100754754();
        v91 = *v153;
        v92 = i;
        (*v153)(v157, i);
        v91(v156, v92);

        v76 = v158;
        v75 = v152;
        if (v148)
        {
          goto LABEL_34;
        }
      }

      if (swift_dynamicCastClass())
      {
        type metadata accessor for AdvertsSearchResultContentView();
        v85 = type metadata accessor for AdvertsSearchResultContentView;
        v86 = &unk_1007C2E9C;
        v87 = &unk_100928220;
        goto LABEL_37;
      }

      sub_1007474C4();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for BundleSearchResultContentView();
        v85 = type metadata accessor for BundleSearchResultContentView;
        v86 = &unk_1007D786C;
        v87 = &unk_100928218;
        goto LABEL_37;
      }

      sub_100742374();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for AppSearchResultContentView();
        v85 = type metadata accessor for AppSearchResultContentView;
        v86 = &unk_1007C9380;
        v87 = &unk_100928210;
        goto LABEL_37;
      }

      if (swift_dynamicCastClass())
      {
        type metadata accessor for EditorialSearchResultContentView();
        v85 = type metadata accessor for EditorialSearchResultContentView;
        v86 = &unk_1007B6050;
        v87 = &unk_100928208;
        goto LABEL_37;
      }

      v95 = swift_dynamicCastClass();
      v77 = v161;
      if (v95)
      {
        type metadata accessor for InAppPurchaseSearchResultContentView(0);
        v96 = type metadata accessor for InAppPurchaseSearchResultContentView;
        v97 = &unk_1007BCE44;
        v98 = &unk_100928200;
      }

      else
      {
        sub_10074C814();
        if (swift_dynamicCastClass())
        {
          type metadata accessor for LockupCollectionSearchResultContentView();
          v96 = type metadata accessor for LockupCollectionSearchResultContentView;
          v97 = &unk_1007B3010;
          v98 = &unk_1009281F8;
        }

        else
        {
          sub_100742574();
          if (swift_dynamicCastClass())
          {
            type metadata accessor for AppEventSearchResultContentView();
            v96 = type metadata accessor for AppEventSearchResultContentView;
            v97 = &unk_1007A5F14;
            v98 = &unk_1009281F0;
          }

          else
          {
            sub_1007476D4();
            if (!swift_dynamicCastClass())
            {

LABEL_55:
              (*v74)(v76, v77);
              v94 = 0;
              goto LABEL_56;
            }

            type metadata accessor for GuidedSearchResultContentView();
            v96 = type metadata accessor for GuidedSearchResultContentView;
            v97 = &unk_1007AF674;
            v98 = &unk_1009281E8;
          }
        }
      }

      sub_1000FA888(v98, v96, v97);
LABEL_38:
      sub_100748B84();
      v94 = v93;

      (*v74)(v76, v77);
LABEL_56:
      v174 = v73;
      v100 = v73[2];
      v99 = v73[3];
      if (v100 >= v99 >> 1)
      {
        sub_10001E46C((v99 > 1), v100 + 1, 1);
        v73 = v174;
      }

      v73[2] = v100 + 1;
      v73[v100 + 4] = v94;
      v72 += v75;
      --v71;
    }

    while (v71);
  }

  v101 = sub_1007499E4();

  sub_1004A00C8(v101, v102);
  v103 = v175;
  v104 = v175 >> 62;
  if (v175 >> 62)
  {
    goto LABEL_71;
  }

  v105 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 0; v105; i = v104)
  {
    v104 = 0;
    v106 = 0.0;
    while (1)
    {
      if ((v103 & 0xC000000000000001) != 0)
      {
        v107 = sub_100754574();
      }

      else
      {
        if (v104 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v107 = *(v103 + 8 * v104 + 32);
      }

      v108 = v107;
      v109 = (v104 + 1);
      if (__OFADD__(v104, 1))
      {
        break;
      }

      v110 = [v107 layoutSize];
      v111 = [v110 heightDimension];

      [v111 dimension];
      v113 = v112;

      v106 = v106 + v113;
      ++v104;
      if (v109 == v105)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    v105 = sub_100754664();
  }

  v106 = 0.0;
LABEL_73:
  v114 = i;
  if (i)
  {
    result = sub_100754664();
  }

  else
  {
    result = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v115 = v140;
  v116 = v146;
  v117 = v145;
  if (!__OFSUB__(result, 1))
  {
    v118 = ((result - 1) & ~((result - 1) >> 63));
    sub_100747B84();
    sub_10074F5B4();
    v120 = v119;
    v121 = *(v116 + 8);
    v121(v117, v115);
    v122 = v135;
    v123 = [v135 fractionalWidthDimension:1.0];
    v124 = [v122 absoluteDimension:v106 + v120 * v118];
    v125 = [v134 sizeWithWidthDimension:v123 heightDimension:v124];

    if (v114)
    {
      sub_100754654();
    }

    else
    {
      sub_100754764();
    }

    v126 = sub_100753294().super.isa;

    v127 = [v133 verticalGroupWithLayoutSize:v125 subitems:v126];

    v128 = objc_opt_self();
    sub_100747B84();
    sub_10074F5B4();
    v130 = v129;
    v121(v117, v140);
    v131 = [v128 fixedSpacing:v130];
    [v127 setInterItemSpacing:v131];

    v49 = [objc_opt_self() sectionWithGroup:v127];

    (*(v139 + 8))(v144, v161);
    return v49;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FA83C()
{
  sub_10074CBC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000FA888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000FA8D8@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_100754724();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_100747524();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074ECD4();
  sub_1000FAD94(&qword_100928558, &type metadata accessor for Action);
  sub_1007468B4();
  if (v22[0])
  {
    sub_100744FD4();
    sub_1000FAD94(&unk_100928560, &type metadata accessor for SearchAdAction);
    sub_1007468B4();
    v11 = v22[0];
    if (v22[0])
    {
    }

    if (sub_10074ECC4() && (, !v11))
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      if (qword_100921B28 != -1)
      {
        swift_once();
      }

      v14 = sub_100743CB4();
      sub_10000D0FC(v14, qword_100982A80);
      sub_100743C74();
      swift_getKeyPath();
      sub_100746914();

      v24 = v22[0];
      sub_100743464();
      swift_unknownObjectRelease();
      (*(v18 + 8))(v6, v4);
      sub_100743C84();
      v15 = v23;
      sub_10000C888(v22, v23);
      swift_getKeyPath();
      sub_100746914();

      sub_100536120(v15);
      sub_100750564();
      swift_unknownObjectRelease();
      (*(v19 + 8))(v3, v20);
      sub_10000C620(v22);
      v12 = v21;
    }

    else
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      v12 = v21;
    }

    sub_100747534();

    v13 = 0;
  }

  else
  {
    v13 = 1;
    v12 = v21;
  }

  v16 = sub_100747564();
  return (*(*(v16 - 8) + 56))(v12, v13, 1, v16);
}

uint64_t sub_1000FAD94(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

char *sub_1000FADEC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension20ProductNoRatingsView_statusLabel;
  if (qword_1009210D8 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_100980FC0);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = *(v12 + 104);
  v22(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_100745C84());
  *&v5[v18] = sub_100745C74();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension20ProductNoRatingsView_statusLabel;
  v30 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension20ProductNoRatingsView_statusLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 grayColor];
  [v32 setTextColor:v33];

  v34 = *&v28[v29];
  v22(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v35 = v34;
  sub_100745BF4();

  [v28 addSubview:*&v28[v29]];
  return v28;
}

double sub_1000FB270(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v6 = sub_100750E94();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v11 = sub_100750BD4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750E84();
  if (qword_1009210D8 != -1)
  {
    swift_once();
  }

  v15 = sub_100750534();
  sub_10000D0FC(v15, qword_100980FC0);
  sub_100750E54();
  (*(v7 + 8))(v9, v6);
  sub_100750BB4();

  sub_100750BF4();
  v16 = [a3 traitCollection];
  sub_100750BC4();
  v18 = v17;

  (*(v12 + 8))(v14, v11);
  return v18;
}

void sub_1000FB4E4()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension20ProductNoRatingsView_statusLabel;
  if (qword_1009210D8 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, qword_100980FC0);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_100745C84());
  *(v1 + v9) = sub_100745C74();
  sub_100754644();
  __break(1u);
}

double sub_1000FB740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v9 = [v7 contentView];
  [a6 pageMarginInsets];
  [v9 setLayoutMargins:?];

  v10 = sub_100744D04();
  sub_10030B4D8(v10, v11);
  v12 = sub_100744CF4();

  return sub_10030B4E4(v12, v13);
}

double sub_1000FB868(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v47 = sub_100748B54();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100748B74();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10074CD14();
  v55 = *(v54 - 8);
  *&v10 = __chkstk_darwin(v54).n128_u64[0];
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a5 pageMarginInsets];
  sub_100753BA4();
  v13 = [a5 traitCollection];
  v14 = sub_1007537D4();

  v15 = 4;
  if ((v14 & 1) == 0)
  {
    v15 = 1;
  }

  v52 = v15;
  v45 = a1;
  sub_100744D04();
  v44 = v16;
  v17 = sub_100038D38();
  if (qword_100920928 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  sub_10000D0FC(v18, qword_10097F928);
  v19 = [a5 traitCollection];
  sub_100753C14();

  v20 = sub_10074F3F4();
  v62 = v20;
  v21 = sub_1000FBF98(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v63 = v21;
  v22 = sub_10000D134(v61);
  v23 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v24 = *(v20 - 8);
  v43 = v17;
  v25 = *(v24 + 104);
  v25(v22, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  sub_10074FC74();
  v53 = a5;
  sub_10000C620(v61);
  sub_10074CD04();
  sub_10074CCE4();
  v26 = *(v55 + 8);
  v55 += 8;
  v26(v12, v54);
  v45 = sub_100744CF4();
  v44 = v27;
  if (qword_100920930 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v18, qword_10097F940);
  v28 = [v53 traitCollection];
  sub_100753C14();

  v59 = v20;
  v60 = v21;
  v29 = sub_10000D134(v58);
  v25(v29, v23, v20);
  sub_10074FC74();
  sub_10000C620(v58);
  sub_10074CD04();
  sub_10074CCE4();
  v26(v12, v54);
  if (qword_100920920 != -1)
  {
    swift_once();
  }

  v30 = v47;
  v31 = sub_10000D0FC(v47, qword_10097F910);
  (*(v46 + 16))(v48, v31, v30);
  v32 = v62;
  v33 = v63;
  v34 = sub_10000C888(v61, v62);
  v57[3] = v32;
  v57[4] = *(v33 + 8);
  v35 = sub_10000D134(v57);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = v59;
  v37 = v60;
  v38 = sub_10000C888(v58, v59);
  v56[3] = v36;
  v56[4] = *(v37 + 8);
  v39 = sub_10000D134(v56);
  (*(*(v36 - 8) + 16))(v39, v38, v36);
  v40 = v49;
  sub_100748B64();
  sub_1000FBF98(&unk_100933210, &type metadata accessor for EditorialQuoteLayout, &protocol conformance descriptor for EditorialQuoteLayout);
  v41 = v51;
  sub_100750404();
  (*(v50 + 8))(v40, v41);
  sub_10000C620(v58);
  sub_10000C620(v61);
  return a2;
}

uint64_t sub_1000FBF98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000FBFE0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong collectionView];
    if (v3)
    {
      v4 = v3;
      isa = sub_100741704().super.isa;
      [v2 collectionView:v4 didSelectItemAtIndexPath:isa];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000FC0A8()
{
  v1 = v0;
  v47 = swift_isaMask & *v0;
  v2 = sub_1007521E4();
  v54 = *(v2 - 8);
  v55 = v2;
  __chkstk_darwin(v2);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100752224();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100752244();
  v49 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = &v46 - v8;
  v9 = sub_1007417F4();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  __chkstk_darwin(v9);
  v46 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = &v46 - v12;
  v13 = sub_10074CBD4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_100930688;
  swift_beginAccess();
  v18 = *(v0 + v17);
  if (!v18)
  {
    return;
  }

  v19 = v18;
  aBlock[6] = sub_10074BDE4();
  aBlock[7] = v20;
  sub_1007544E4();
  sub_10074CBE4();
  sub_10074CD74();
  v22 = v21;

  (*(v14 + 8))(v16, v13);
  if (v22)
  {
    return;
  }

  sub_10074BDD4();
  v23 = v59;
  sub_100741764();
  v24 = [v1 collectionView];
  if (!v24)
  {
    __break(1u);
    goto LABEL_11;
  }

  v25 = v24;
  v26.super.isa = sub_100741704().super.isa;
  v27 = [v1 collectionView];
  if (!v27)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v28 = v27;
  [v27 contentInset];
  v30 = v29;

  [v25 _scrollToItemAtIndexPath:v26.super.isa atScrollPosition:1 additionalInsets:1 animated:{16.0 - v30, 0.0, 0.0, 0.0}];
  if (sub_10074BDC4())
  {
    sub_10074BDD4();
    if ((v31 & 1) == 0)
    {
      sub_1000A7FA0();
      v32 = sub_100753774();
      sub_100752234();
      v33 = v48;
      sub_1007522B4();
      v49 = *(v49 + 8);
      (v49)(v6, v56);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = v57;
      v35 = v58;
      v37 = v46;
      (*(v57 + 16))(v46, v59, v58);
      v38 = (*(v36 + 80) + 80) & ~*(v36 + 80);
      v39 = swift_allocObject();
      v40 = v47;
      *(v39 + 16) = *(v47 + 552);
      *(v39 + 24) = *(v40 + 560);
      *(v39 + 40) = *(v40 + 576);
      *(v39 + 48) = *(v40 + 584);
      *(v39 + 64) = *(v40 + 600);
      *(v39 + 72) = v34;
      (*(v36 + 32))(v39 + v38, v37, v35);
      aBlock[4] = sub_1000FC8E8;
      aBlock[5] = v39;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_100868258;
      v41 = _Block_copy(aBlock);

      v42 = v50;
      sub_100752204();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10002DCDC();
      sub_10000C518(&unk_10092F750, &qword_1007A6920);
      sub_1000A8054();
      v43 = v52;
      v44 = v55;
      sub_1007543A4();
      sub_100753734();
      _Block_release(v41);

      (*(v54 + 8))(v43, v44);
      v45 = v42;
      v23 = v59;
      (*(v51 + 8))(v45, v53);
      (v49)(v33, v56);
    }
  }

  (*(v57 + 8))(v23, v58);
}

uint64_t sub_1000FC7EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FC824()
{
  v1 = sub_1007417F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_1000FC994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000FC9AC()
{
  v1 = sub_100743184();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  __chkstk_darwin(v5 - 8);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v34 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_accountStore);
  v12 = [v11 ams_activeiTunesAccount];
  v13 = [v12 ams_DSID];

  v14 = objc_opt_self();
  v15 = [v14 standardUserDefaults];
  v16 = v13;
  v17 = sub_100753064();
  [v15 setObject:v16 forKey:v17];

  sub_100741444();
  v18 = sub_100741454();
  v19 = *(v18 - 8);
  v34 = *(v19 + 56);
  v34(v10, 0, 1, v18);
  sub_1000FEAE4(v10);
  sub_10074B274();
  v20 = sub_100743154();
  (*(v2 + 8))(v4, v1);
  if ((v20 & 1) == 0)
  {
    return;
  }

  v21 = [v11 ams_activeiTunesAccount];
  v22 = [v21 ams_DSID];

  v23 = [v14 standardUserDefaults];
  v24 = sub_1006FE43C();

  if (v22)
  {
    if (v24)
    {
      sub_100016C60(0, &qword_10092BE20, NSNumber_ptr);
      v25 = v22;
      v26 = sub_100753FC4();

      v27 = v26 ^ 1;
LABEL_7:

      goto LABEL_10;
    }

    v27 = 1;
  }

  else
  {
    if (v24)
    {
      v27 = 1;
      goto LABEL_7;
    }

    v27 = 0;
  }

LABEL_10:
  v28 = [v14 standardUserDefaults];
  v29 = v35;
  sub_1006FE534(v35);

  LODWORD(v28) = (*(v19 + 48))(v29, 1, v18);
  sub_10000C8CC(v29, &unk_100928740, &qword_1007AC280);
  if (v28 == 1 || (v27 & 1) != 0)
  {
    v30 = v22;
    v31 = [v14 standardUserDefaults];
    v32 = v30;
    v33 = sub_100753064();
    [v31 setObject:v32 forKey:v33];

    sub_100741444();
    v34(v10, 0, 1, v18);
    sub_1000FECC4(v10);
  }
}

uint64_t sub_1000FCE1C()
{
  v1 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
  v6 = [v5 ams_DSID];

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = v6;
  v9 = sub_100753064();
  [v7 setObject:v8 forKey:v9];

  sub_100741444();
  v10 = sub_100741454();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  return sub_1000FEEA4(v4);
}

uint64_t sub_1000FCF94()
{
  v1 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
  v6 = [v5 ams_DSID];

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = v6;
  v9 = sub_100753064();
  [v7 setObject:v8 forKey:v9];

  sub_100741444();
  v10 = sub_100741454();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  return sub_1000FF084(v4);
}

void sub_1000FD10C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074ABC4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for FamilyCircleLookupResult.notInFamily(_:))
  {
    (*(v4 + 96))(v7, v3);
    v9 = *v7;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      Strong[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isInFamily] = 0;
    }

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v11[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isFamilyOrganizer] = 0;
    }

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v12[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_canCreateFamily] = v9;
    }
  }

  else if (v8 == enum case for FamilyCircleLookupResult.inFamily(_:))
  {
    (*(v4 + 96))(v7, v3);
    v13 = *v7;
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v14[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isInFamily] = 1;
    }

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v15[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isFamilyOrganizer] = v13;
    }

    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v16[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_canCreateFamily] = 0;
    }
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }
}

double sub_1000FD3A0(uint64_t a1)
{
  if (qword_100921D98 != -1)
  {
    swift_once();
  }

  v1 = sub_100752E44();
  sub_10000D0FC(v1, qword_100982F20);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_10000D134(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_100752424();
  sub_10000C8CC(v5, &unk_100923520, &qword_1007A5A70);
  sub_100752D04();

  return result;
}

uint64_t sub_1000FD56C(uint64_t a1, void *a2)
{
  v5 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_100741454();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  sub_1000FF264(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000C8CC(v7, &unk_100928740, &qword_1007AC280);
    return 0;
  }

  (*(v9 + 32))(v14, v7, v8);
  if (!a2)
  {
LABEL_9:
    (*(v9 + 8))(v14, v8);
    return 0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_accountStore);
  v16 = a2;
  v17 = [v15 ams_activeiTunesAccount];
  if (!v17 || (v18 = v17, v19 = [v17 ams_DSID], v18, !v19))
  {

    goto LABEL_9;
  }

  sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
  if (sub_100753FC4())
  {
    sub_100741444();
    sub_1007413C4();
    v21 = v20;

    v22 = *(v9 + 8);
    v22(v11, v8);
    v22(v14, v8);
    return v21;
  }

  (*(v9 + 8))(v14, v8);

  return 0;
}

double sub_1000FD82C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  __chkstk_darwin(v7 - 8);
  v9 = v47 - v8;
  v10 = sub_100743184();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0xD000000000000012 && 0x800000010076B480 == a2 || (sub_100754754() & 1) != 0)
  {
    sub_10074B274();
    v14 = sub_100743154();
LABEL_5:
    v15 = v14;
    (*(v11 + 8))(v13, v10);
    *(a3 + 24) = &type metadata for Bool;
    v17 = v15 & 1;
LABEL_6:
    *a3 = v17;
    return result;
  }

  if (a1 == 0xD000000000000016 && 0x800000010076B4A0 == a2 || (sub_100754754() & 1) != 0)
  {
    sub_10074B274();
    v14 = sub_100743174();
    goto LABEL_5;
  }

  if (a1 == 0x696D61466E497369 && a2 == 0xEA0000000000796CLL || (sub_100754754() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isInFamily;
    goto LABEL_15;
  }

  if (a1 == 0xD000000000000011 && 0x800000010076B2B0 == a2 || (sub_100754754() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isFamilyOrganizer;
    goto LABEL_15;
  }

  if (a1 == 0x74616572436E6163 && a2 == 0xEF796C696D614665 || (sub_100754754() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_canCreateFamily;
LABEL_15:
    v19 = *(v3 + v18);
    if (v19 != 2)
    {
      *(a3 + 24) = &type metadata for Bool;
      v17 = v19 & 1;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  if (a1 == 0xD000000000000011 && 0x8000000100768EF0 == a2 || (sub_100754754() & 1) != 0 || a1 == 0xD000000000000014 && 0x800000010076B4C0 == a2 || (sub_100754754() & 1) != 0)
  {
    goto LABEL_16;
  }

  v47[1] = v3;
  if (a1 == 0xD00000000000001ELL && 0x800000010076B4E0 == a2 || (sub_100754754() & 1) != 0)
  {
    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    sub_1006FE08C(v9);

    v22 = [v20 standardUserDefaults];
    v23 = sub_1006FDF94();
    goto LABEL_36;
  }

  if (a1 == 0xD00000000000001BLL && 0x800000010076B500 == a2 || (sub_100754754() & 1) != 0)
  {
    v28 = objc_opt_self();
    v29 = [v28 standardUserDefaults];
    sub_1006FDE38(v9);

    v22 = [v28 standardUserDefaults];
    v23 = sub_1006FDD40();
    goto LABEL_36;
  }

  if (a1 == 0xD000000000000023 && 0x800000010076B520 == a2 || (sub_100754754() & 1) != 0)
  {
    v30 = objc_opt_self();
    v31 = [v30 standardUserDefaults];
    sub_1006FE2E0(v9);

    v22 = [v30 standardUserDefaults];
    v23 = sub_1006FE1E8();
    goto LABEL_36;
  }

  if (a1 == 0xD00000000000002BLL && 0x800000010076B550 == a2 || (sub_100754754() & 1) != 0)
  {
    v32 = objc_opt_self();
    v33 = [v32 standardUserDefaults];
    sub_1006FE534(v9);

    v22 = [v32 standardUserDefaults];
    v23 = sub_1006FE43C();
LABEL_36:
    v24 = v23;

    v25 = sub_1000FD56C(v9, v24);
    v27 = v26;

    sub_10000C8CC(v9, &unk_100928740, &qword_1007AC280);
    if ((v27 & 1) == 0)
    {
      *(a3 + 24) = &type metadata for Double;
      *a3 = v25;
      return result;
    }

    goto LABEL_16;
  }

  if ((a1 != 0xD000000000000033 || 0x800000010076B580 != a2) && (sub_100754754() & 1) == 0)
  {
    v46 = sub_1000FF334(a1, a2);
    if (v46 != 2)
    {
      *(a3 + 24) = &type metadata for Bool;
      v17 = v46 & 1;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v34 = objc_opt_self();
  v35 = [v34 standardUserDefaults];
  sub_1006FE2E0(v9);

  v36 = [v34 standardUserDefaults];
  v37 = sub_1006FE1E8();

  v38 = COERCE_DOUBLE(sub_1000FD56C(v9, v37));
  LOBYTE(v36) = v39;

  sub_10000C8CC(v9, &unk_100928740, &qword_1007AC280);
  if (v36 & 1) != 0 || (v40 = [v34 standardUserDefaults], sub_1006FE534(v9), v40, v41 = objc_msgSend(v34, "standardUserDefaults"), v42 = sub_1006FE43C(), v41, v43 = COERCE_DOUBLE(sub_1000FD56C(v9, v42)), v45 = v44, v42, sub_10000C8CC(v9, &unk_100928740, &qword_1007AC280), (v45))
  {
LABEL_16:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  result = v38 - v43;
  *(a3 + 24) = &type metadata for Double;
  *a3 = v38 - v43;
  return result;
}

uint64_t sub_1000FE16C()
{
  v0 = sub_1007521E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752224();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v8 = sub_100753774();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000FF30C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_1008682A8;
  v10 = _Block_copy(aBlock);

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_1000FE404(uint64_t a1)
{
  v1 = sub_100749B54();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100749B44();
    sub_100749B34();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
    v8 = sub_100753774();
    v9[3] = v7;
    v9[4] = &protocol witness table for OS_dispatch_queue;
    v9[0] = v8;
    sub_100752D64();

    (*(v2 + 8))(v4, v1);
    sub_10000C620(v9);
  }
}

uint64_t type metadata accessor for InAppMessagesMetricsDelegate(uint64_t a1)
{
  result = qword_100928730;
  if (!qword_100928730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FEA54(uint64_t a1)
{
  result = sub_1007527A4();
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

uint64_t sub_1000FEAE4(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_1000FF264(a1, v7);
  sub_1000FF264(v7, v4);
  v9 = sub_100741454();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_1007413D4().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_100753064();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10000C8CC(a1, &unk_100928740, &qword_1007AC280);
  return sub_10000C8CC(v7, &unk_100928740, &qword_1007AC280);
}

uint64_t sub_1000FECC4(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_1000FF264(a1, v7);
  sub_1000FF264(v7, v4);
  v9 = sub_100741454();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_1007413D4().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_100753064();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10000C8CC(a1, &unk_100928740, &qword_1007AC280);
  return sub_10000C8CC(v7, &unk_100928740, &qword_1007AC280);
}

uint64_t sub_1000FEEA4(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_1000FF264(a1, v7);
  sub_1000FF264(v7, v4);
  v9 = sub_100741454();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_1007413D4().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_100753064();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10000C8CC(a1, &unk_100928740, &qword_1007AC280);
  return sub_10000C8CC(v7, &unk_100928740, &qword_1007AC280);
}

uint64_t sub_1000FF084(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_1000FF264(a1, v7);
  sub_1000FF264(v7, v4);
  v9 = sub_100741454();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_1007413D4().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_100753064();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10000C8CC(a1, &unk_100928740, &qword_1007AC280);
  return sub_10000C8CC(v7, &unk_100928740, &qword_1007AC280);
}

uint64_t sub_1000FF264(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FF2D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000FF314(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000FF334(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    sub_100753094();
  }

  v4 = objc_allocWithZone(FAEligiblityEvaluationRequest);
  v5 = sub_100753064();
  v6 = sub_100753064();

  v7 = [v4 initWithPropertyName:v5 bundleID:v6];

  v14[0] = 0;
  v8 = [v7 fetchEligibilityWithError:v14];
  if (v14[0])
  {
    v9 = qword_100921D98;
    v10 = v14[0];
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_100752E44();
    sub_10000D0FC(v11, qword_100982F20);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    v14[3] = sub_100016C60(0, &unk_100928750, NSError_ptr);
    v14[0] = v10;
    v12 = v10;
    sub_100752424();
    sub_10000C8CC(v14, &unk_100923520, &qword_1007A5A70);
    sub_100752D04();
  }

  if (v8 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v8 != 1);
  }
}

unint64_t *sub_1000FF640@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

char *sub_1000FF668(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v119 = sub_10074AB44();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v11 - 8);
  v116 = &v99 - v12;
  v115 = sub_100747144();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v121 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100928A88, qword_1007B1CF0);
  __chkstk_darwin(v14 - 8);
  v120 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v19 = sub_10000C518(&unk_100940600, &qword_1007AC320);
  __chkstk_darwin(v19 - 8);
  v111 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v99 - v22;
  v122 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v102 = *(v122 - 8);
  __chkstk_darwin(v122);
  v110 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v106 = &v99 - v25;
  __chkstk_darwin(v26);
  v105 = &v99 - v27;
  v28 = sub_10000C518(&unk_100928A90, qword_1007AC480);
  __chkstk_darwin(v28 - 8);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v99 - v32;
  v113 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v113);
  v108 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v112 = &v99 - v36;
  v37 = sub_100752AC4();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v99 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText];
  *v41 = 0;
  v41[1] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView] = 0;
  v42 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessory;
  v43 = type metadata accessor for Accessory(0);
  (*(*(v43 - 8) + 56))(&v5[v42], 1, 1, v43);
  v44 = &v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction];
  *v44 = 0;
  v44[1] = 0;
  v45 = &v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorInset];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v45 = UIEdgeInsetsZero.top;
  v45[1] = left;
  v45[2] = bottom;
  v45[3] = right;
  v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_allowsAccessibilityLayouts] = 1;
  sub_100745C84();
  v49 = sub_100745C64();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel] = v49;
  memset(v125, 0, sizeof(v125));
  memset(v124, 0, sizeof(v124));
  v50 = v49;
  sub_100752A94();
  sub_10000C8CC(v124, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v125, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  (*(v38 + 8))(v40, v37);
  v51 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorLineView] = v51;
  v109 = v5;
  v52 = &v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabelNumberOfLines];
  *v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v52[1] = 0;
  v53 = sub_1007439C4();
  v54 = *(v53 - 8);
  (*(v54 + 56))(v33, 1, 1, v53);
  v55 = sub_100747134();
  v100 = *(v55 - 8);
  v56 = *(v100 + 56);
  v103 = v18;
  v101 = v55;
  v56(v18, 1, 1);
  v104 = v33;
  sub_100016B4C(v33, v30, &unk_100928A90, qword_1007AC480);
  if ((*(v54 + 48))(v30, 1, v53) == 1)
  {
    sub_10000C8CC(v30, &unk_100928A90, qword_1007AC480);
    v57 = 0;
  }

  else
  {
    v57 = sub_100743964();
    (*(v54 + 8))(v30, v53);
  }

  v58 = v105;
  sub_1003AFADC(v57, v105);

  if (qword_100920AE8 != -1)
  {
    swift_once();
  }

  v59 = v122;
  v60 = sub_10000D0FC(v122, qword_10097FF70);
  v61 = v107;
  (*(v102 + 56))(v107, 1, 1, v59);
  v62 = v106;
  sub_10010A978(v58, v106, type metadata accessor for TitleHeaderView.TextConfiguration);
  v63 = v110;
  sub_10010A978(v60, v110, type metadata accessor for TitleHeaderView.TextConfiguration);
  v64 = v111;
  sub_100016B4C(v61, v111, &unk_100940600, &qword_1007AC320);
  v65 = v103;
  sub_100016B4C(v103, v120, &qword_100928A88, qword_1007B1CF0);
  v66 = v114;
  v67 = v115;
  (*(v114 + 104))(v121, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v115);
  v102 = sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v99 = sub_100753DB4();
  sub_10000C8CC(v65, &qword_100928A88, qword_1007B1CF0);
  sub_10000C8CC(v61, &unk_100940600, &qword_1007AC320);
  sub_10010A9E0(v58, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000C8CC(v104, &unk_100928A90, qword_1007AC480);
  v68 = v113;
  v69 = *(v113 + 32);
  v70 = v108;
  sub_10010AAF8(v62, v108, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10010AAF8(v63, v70 + v68[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100066578(v64, v70 + v68[6], &unk_100940600, &qword_1007AC320);
  *(v70 + v68[7]) = 1;
  *(v70 + v69) = 0;
  *(v70 + v68[9]) = 0;
  *(v70 + v68[14]) = 0x4030000000000000;
  *(v70 + v68[12]) = 0;
  *(v70 + v68[13]) = v99;
  v71 = v120;
  (*(v66 + 32))(v70 + v68[11], v121, v67);
  v72 = v100;
  v73 = v101;
  if ((*(v100 + 48))(v71, 1, v101) == 1)
  {
    sub_10000C8CC(v71, &qword_100928A88, qword_1007B1CF0);
    (*(v72 + 104))(v70 + v68[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v73);
  }

  else
  {
    (*(v72 + 32))(v70 + v68[10], v71, v73);
  }

  v74 = v112;
  sub_10010AAF8(v70, v112, type metadata accessor for TitleHeaderView.Style);
  v75 = v109;
  sub_10010AAF8(v74, v109 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_style, type metadata accessor for TitleHeaderView.Style);
  v76 = type metadata accessor for TitleHeaderView(0);
  v123.receiver = v75;
  v123.super_class = v76;
  v77 = objc_msgSendSuper2(&v123, "initWithFrame:", a1, a2, a3, a4);
  v78 = [v77 layer];
  [v78 setAllowsGroupOpacity:0];

  [v77 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v77 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  v79 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorLineView;
  v80 = *&v77[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorLineView];
  v81 = sub_100753DB4();
  [v80 setBackgroundColor:v81];

  [v77 addSubview:*&v77[v79]];
  v82 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel;
  v83 = *&v77[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel];
  v84 = &v77[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_style];
  swift_beginAccess();
  [v83 setTextColor:*&v84[v68[5]]];
  v85 = *&v77[v82];
  v86 = v68[5] + *(v122 + 24);
  v87 = sub_100750534();
  v88 = v68;
  v89 = *(v87 - 8);
  v90 = &v84[v86];
  v91 = v116;
  (*(v89 + 16))(v116, v90, v87);
  (*(v89 + 56))(v91, 0, 1, v87);
  v92 = v85;
  sub_100745BA4();

  v93 = *&v77[v82];
  sub_100745C34();

  v94 = [*&v77[v82] layer];
  if (*&v84[v88[5] + 16])
  {

    v95 = sub_100753064();
  }

  else
  {
    v95 = 0;
  }

  [v94 setCompositingFilter:v95];

  swift_unknownObjectRelease();
  v96 = *&v77[v82];
  (*(v118 + 104))(v117, enum case for DirectionalTextAlignment.leading(_:), v119);
  v97 = v96;
  sub_100745BF4();

  [v77 addSubview:*&v77[v82]];
  return v77;
}

void sub_1001005A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText + 8);
  if (a2)
  {
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText) == a1 && v3 == a2;
      if (v4 || (sub_100754754() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel;
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel);
  if (v6)
  {
    [v6 removeFromSuperview];
    v6 = *(v2 + v5);
  }

  *(v2 + v5) = 0;
}

void sub_10010063C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074AB44();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v8 - 8);
  v10 = v45 - v9;
  v50 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v50);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (v45 - v14);
  v16 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v16);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v45 - v21;
  v23 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText + 8);
  if (v23)
  {
    if (!a2 || (*(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText) == a1 ? (v24 = v23 == a2) : (v24 = 0), !v24 && (v25 = v20, v26 = sub_100754754(), v20 = v25, (v26 & 1) == 0)))
    {
      v49 = v20;
      sub_100745C84();

      v27 = sub_100745C64();
      [v27 setNumberOfLines:1];
      v28 = sub_100753064();

      [v27 setText:v28];

      v29 = sub_100745C34();
      v30 = ((swift_isaMask & *v3) + 448);
      v31 = *((swift_isaMask & *v3) + 0x1C0);
      (v31)(v29);
      v47 = v18;
      v48 = v12;
      v45[1] = v30;
      v46 = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_10010A978(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10010A9E0(v22, type metadata accessor for TitleHeaderView.Style);
      v32 = *v15;
      v45[0] = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_10010A9E0(v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      [v27 setTextColor:v32];

      v31();
      sub_10010A978(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10010A9E0(v22, type metadata accessor for TitleHeaderView.Style);
      v33 = *(v50 + 24);
      v34 = sub_100750534();
      v35 = *(v34 - 8);
      (*(v35 + 16))(v10, v15 + v33, v34);
      v36 = v45[0];
      sub_10010A9E0(v15, v45[0]);
      (*(v35 + 56))(v10, 0, 1, v34);
      sub_100745BA4();
      v37 = [v27 layer];
      v38 = v47;
      v31();
      v39 = v38 + *(v49 + 20);
      v40 = v38;
      v41 = v48;
      sub_10010A978(v39, v48, v46);
      sub_10010A9E0(v40, type metadata accessor for TitleHeaderView.Style);
      v42 = *(v41 + 16);

      sub_10010A9E0(v41, v36);
      if (v42)
      {
        v43 = sub_100753064();
      }

      else
      {
        v43 = 0;
      }

      [v37 setCompositingFilter:v43];

      swift_unknownObjectRelease();
      (*(v52 + 104))(v51, enum case for DirectionalTextAlignment.leading(_:), v53);
      sub_100745BF4();
      [v3 addSubview:v27];
      v44 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel);
      *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel) = v27;
    }
  }
}

void sub_100100BDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork])
  {
    if (a1)
    {
      sub_10074F3D4();
      sub_10010AA40(&unk_100928A50, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      swift_retain_n();
      v5 = sub_100753014();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    sub_1007433C4();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_10074F324();
    sub_100743364();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView];
    *&v2[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView] = v6;
  }
}

void sub_100100D7C(uint64_t a1, void *a2, uint64_t *a3, __n128 a4)
{
  v6 = v4;
  v7 = *(v4 + *a2);
  if (a1)
  {
    if (v7)
    {
      sub_10074F3D4();
      sub_10010AA40(&unk_100928A50, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);

      v8 = sub_100753014();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v7)
  {
    return;
  }

  v9 = *a3;
  v10 = *(v6 + *a3);
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *(v6 + v9);
  }

  else
  {
    v11 = 0;
  }

  *(v6 + v9) = 0;
}

void sub_100100E7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork])
  {
    if (a1)
    {
      sub_10074F3D4();
      sub_10010AA40(&unk_100928A50, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      swift_retain_n();
      v5 = sub_100753014();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    sub_1007433C4();
    v6 = sub_1007431D4();
    sub_10074F324();
    sub_100743364();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView];
    *&v2[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView] = v6;
  }
}

void sub_100101014(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = sub_10074AB44();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *&v4[v11];
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *&v4[v11];
  }

  else
  {
    v13 = 0;
  }

  *&v4[v11] = a1;
  v14 = a1;

  if (a1)
  {
    (*(v7 + 104))(v10, enum case for DirectionalTextAlignment.leading(_:), v6);
    sub_100745BF4();
    [v4 addSubview:v14];
  }
}

id sub_100101150(uint64_t a1)
{
  v3 = sub_100752AC4();
  v88 = *(v3 - 8);
  __chkstk_darwin(v3);
  v87 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100940600, &qword_1007AC320);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - v6;
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v11 - 8);
  v13 = &v77 - v12;
  v14 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v14);
  v16 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = &v1[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_style];
  swift_beginAccess();
  sub_10010A978(v17, v16, type metadata accessor for TitleHeaderView.Style);
  LOBYTE(a1) = sub_10010A41C(v16, a1);
  result = sub_10010A9E0(v16, type metadata accessor for TitleHeaderView.Style);
  if ((a1 & 1) == 0)
  {
    v77 = v3;
    v78 = v9;
    v19 = v8;
    v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel];
    [v20 setTextColor:*&v17[v14[5]]];
    v21 = v14[5] + *(v19 + 24);
    v22 = sub_100750534();
    v23 = *(v22 - 8);
    v79 = v7;
    v24 = v23;
    v81 = *(v23 + 16);
    v82 = v23 + 16;
    v81(v13, &v17[v21], v22);
    v25 = *(v24 + 56);
    v83 = v24 + 56;
    v84 = v22;
    v80 = v25;
    v25(v13, 0, 1, v22);
    v26 = v78;
    v27 = v79;
    v89 = v13;
    sub_100745BA4();
    [v20 setMinimumScaleFactor:*&v17[v14[5] + *(v19 + 28)]];
    [v20 setAdjustsFontSizeToFitWidth:*&v17[v14[5] + *(v19 + 28)] > 0.0];
    [v1 setBackgroundColor:*&v17[v14[12]]];
    v85 = v19;
    v86 = v1;
    v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel];
    v29 = v19;
    v30 = v90;
    if (v28)
    {
      v31 = v27;
      v32 = *v17;
      v33 = v28;
      [v33 setTextColor:v32];
      v34 = v89;
      v35 = v84;
      v81(v89, &v17[*(v29 + 24)], v84);
      v80(v34, 0, 1, v35);
      sub_100745BA4();
      v36 = [v33 layer];
      if (*&v17[v14[5] + 16])
      {

        v37 = sub_100753064();
      }

      else
      {
        v37 = 0;
      }

      [v36 setCompositingFilter:v37];

      swift_unknownObjectRelease();
      v30 = v90;
      v29 = v85;
      v27 = v31;
    }

    sub_100016B4C(&v17[v14[6]], v27, &unk_100940600, &qword_1007AC320);
    if ((*(v26 + 48))(v27, 1, v29) == 1)
    {
      sub_10000C8CC(v27, &unk_100940600, &qword_1007AC320);
      v38 = v86;
      v39 = *&v86[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel];
      if (v39)
      {
        [v39 setHidden:1];
      }

      v40 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel];
      if (v40)
      {
        [v40 setHidden:1];
      }
    }

    else
    {
      sub_10010AAF8(v27, v30, type metadata accessor for TitleHeaderView.TextConfiguration);
      v41 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel;
      v38 = v86;
      v42 = *&v86[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel];
      v43 = v89;
      if (v42 || (sub_100745C84(), v50 = sub_100745C64(), sub_100100FFC(v50), (v51 = *&v38[v41]) != 0) && ([v51 setNumberOfLines:1], (v52 = *&v38[v41]) != 0) && (objc_msgSend(v52, "setLineBreakMode:", 4), (v53 = *&v38[v41]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v54 = v53, v55 = v87, sub_100752A94(), sub_10000C8CC(&v91, &unk_100923520, &qword_1007A5A70), sub_10000C8CC(&v93, &unk_100923520, &qword_1007A5A70), sub_100753C74(), v54, v38 = v86, (*(v88 + 8))(v55, v77), (v42 = *&v38[v41]) != 0))
      {
        [v42 setTextColor:*v30];
        v44 = *&v38[v41];
        if (v44)
        {
          v45 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v45);
          v46 = v44;
          sub_100745BA4();

          v47 = *&v38[v41];
          if (v47)
          {
            v48 = [v47 layer];
            v49 = *(v30 + 2) ? sub_100753064() : 0;
            [v48 setCompositingFilter:v49];

            swift_unknownObjectRelease();
            v56 = *&v38[v41];
            if (v56)
            {
              v57 = v56;
              sub_100745C34();

              v58 = *&v38[v41];
              if (v58)
              {
                [v58 setHidden:0];
              }
            }
          }
        }
      }

      v59 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel;
      v60 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel];
      if (v60 || (sub_100745C84(), v67 = sub_100745C64(), sub_100101008(v67), (v68 = *&v38[v59]) != 0) && ([v68 setNumberOfLines:1], (v69 = *&v38[v59]) != 0) && (objc_msgSend(v69, "setLineBreakMode:", 4), (v70 = *&v38[v59]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v71 = v70, v72 = v87, sub_100752A94(), sub_10000C8CC(&v91, &unk_100923520, &qword_1007A5A70), sub_10000C8CC(&v93, &unk_100923520, &qword_1007A5A70), sub_100753C74(), v71, v38 = v86, (*(v88 + 8))(v72, v77), (v60 = *&v38[v59]) != 0))
      {
        [v60 setTextColor:*v30];
        v61 = *&v38[v59];
        if (v61)
        {
          v62 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v62);
          v63 = v61;
          sub_100745BA4();

          v64 = *&v38[v59];
          if (v64)
          {
            v65 = [v64 layer];
            v66 = *(v30 + 2) ? sub_100753064() : 0;
            [v65 setCompositingFilter:v66];

            swift_unknownObjectRelease();
            v73 = *&v38[v59];
            if (v73)
            {
              v74 = v73;
              sub_100745C34();

              v75 = *&v38[v59];
              if (v75)
              {
                [v75 setHidden:0];
              }
            }
          }
        }
      }

      sub_10010A9E0(v30, type metadata accessor for TitleHeaderView.TextConfiguration);
    }

    v76 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorLineView];
    [v76 setHidden:(v17[v14[7]] & 1) == 0];
    [v76 setBackgroundColor:*&v17[v14[13]]];
    return [v38 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100101BE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_style;
  swift_beginAccess();
  return sub_10010A978(v1 + v3, a1, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_100101C4C(uint64_t a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_style;
  swift_beginAccess();
  sub_10010A978(v1 + v6, v5, type metadata accessor for TitleHeaderView.Style);
  swift_beginAccess();
  sub_10010AB60(a1, v1 + v6);
  swift_endAccess();
  sub_100101150(v5);
  sub_10010A9E0(a1, type metadata accessor for TitleHeaderView.Style);
  return sub_10010A9E0(v5, type metadata accessor for TitleHeaderView.Style);
}

void sub_100101D58(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView];
  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 removeTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    v6 = *&v1[v3];
    if (v6)
    {
      [v6 removeFromSuperview];
      v4 = *&v1[v3];
    }

    else
    {
      v4 = 0;
    }
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    [v1 addSubview:v8];
  }
}

void sub_100101E80(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = type metadata accessor for Accessory(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000C518(&qword_10093FDB0, &unk_1007AC460);
  __chkstk_darwin(v7 - 8);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v31 = &v28 - v10;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10000C518(&unk_100928A60, &qword_1007CBC90);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessory;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v33 = a1;
  sub_100016B4C(a1, v17, &qword_10093FDB0, &unk_1007AC460);
  sub_100016B4C(v2 + v18, &v17[v19], &qword_10093FDB0, &unk_1007AC460);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_10000C8CC(v17, &qword_10093FDB0, &unk_1007AC460);
      return;
    }
  }

  else
  {
    sub_100016B4C(v17, v13, &qword_10093FDB0, &unk_1007AC460);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      v26 = v29;
      sub_10010AAF8(&v17[v19], v29, type metadata accessor for Accessory);
      v27 = sub_10050D4C8(v13, v26);
      sub_10010A9E0(v26, type metadata accessor for Accessory);
      sub_10010A9E0(v13, type metadata accessor for Accessory);
      sub_10000C8CC(v17, &qword_10093FDB0, &unk_1007AC460);
      if (v27)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10010A9E0(v13, type metadata accessor for Accessory);
  }

  sub_10000C8CC(v17, &unk_100928A60, &qword_1007CBC90);
LABEL_7:
  v21 = v33;
  v22 = v31;
  sub_100016B4C(v33, v31, &qword_10093FDB0, &unk_1007AC460);
  swift_beginAccess();
  sub_10010AA88(v22, v2 + v18);
  swift_endAccess();
  v23 = v32;
  sub_100016B4C(v21, v32, &qword_10093FDB0, &unk_1007AC460);
  if (v20(v23, 1, v4) == 1)
  {
    sub_10000C8CC(v23, &qword_10093FDB0, &unk_1007AC460);
    sub_100101D58(0);
  }

  else
  {
    sub_10050A2DC(v30);
    v25 = v24;
    sub_10010A9E0(v23, type metadata accessor for Accessory);
    sub_100101D58(v25);
  }
}

double sub_100102390(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView);
  if (v10)
  {
    [v10 frame];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel);
  if (v15 && (v16 = [v15 text]) != 0)
  {
    v17 = v16;
    v49 = sub_100753094();
    v50 = v18;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v19 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork);
  v20 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel);

  v21 = [v20 text];
  if (v21)
  {
    v22 = v21;
    v48 = sub_100753094();
    v24 = v23;
  }

  else
  {
    v48 = 0;
    v24 = 0;
  }

  v25 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork);
  v26 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel);
  if (!v26)
  {

    goto LABEL_15;
  }

  v27 = [v26 text];
  if (!v27)
  {
LABEL_15:
    v47 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  v28 = v27;
  v47 = sub_100753094();
  v30 = v29;

LABEL_16:
  v31 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel);
  if (v31 && (v32 = [v31 text]) != 0)
  {
    v33 = v32;
    v34 = sub_100753094();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabelNumberOfLines);

  v38 = v37(v3);

  (*((swift_isaMask & *v3) + 0x1C0))(v39);
  [v3 layoutMargins];
  sub_1003D5958(v49, v50, v19, v48, v24, v25, v47, v30, a1, a2, v12, v14, v40, v41, v42, v43, v34, v36, v38, v9, 1, v3);
  v45 = v44;

  sub_10010A9E0(v9, type metadata accessor for TitleHeaderView.Style);
  return v45;
}

void sub_100102818()
{
  v1 = sub_100750354();
  v425 = *(v1 - 8);
  v426 = v1;
  __chkstk_darwin(v1);
  v424 = &v400 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = sub_100747154();
  v421 = *(v423 - 8);
  __chkstk_darwin(v423);
  v420 = &v400 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747144();
  v415 = *(v4 - 8);
  v416 = v4;
  __chkstk_darwin(v4);
  v417 = &v400 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v422 = sub_100747184();
  v419 = *(v422 - 8);
  __chkstk_darwin(v422);
  v418 = &v400 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v442 = sub_100747134();
  v436 = *(v442 - 8);
  __chkstk_darwin(v442);
  v414 = &v400 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v441 = &v400 - v9;
  v10 = sub_100747174();
  v455 = *(v10 - 8);
  v456 = v10;
  __chkstk_darwin(v10);
  v408 = &v400 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v454 = &v400 - v13;
  __chkstk_darwin(v14);
  v453 = &v400 - v15;
  __chkstk_darwin(v16);
  v440 = &v400 - v17;
  v18 = sub_10000C518(&unk_100940600, &qword_1007AC320);
  __chkstk_darwin(v18 - 8);
  v430 = &v400 - v19;
  v20 = sub_100740E74();
  v434 = *(v20 - 1);
  v435 = v20;
  __chkstk_darwin(v20);
  v433 = &v400 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100750534();
  v403 = *(v22 - 8);
  v404 = v22;
  __chkstk_darwin(v22);
  v402 = &v400 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v429 = *(v458 - 1);
  __chkstk_darwin(v458);
  v457 = &v400 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v438 = &v400 - v26;
  __chkstk_darwin(v27);
  v409 = &v400 - v28;
  __chkstk_darwin(v29);
  v406 = &v400 - v30;
  v427 = sub_10000C518(&qword_1009289F8, &unk_1007BE1C0);
  v412 = *(v427 - 8);
  __chkstk_darwin(v427);
  v405 = &v400 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v407 = &v400 - v33;
  __chkstk_darwin(v34);
  v448 = &v400 - v35;
  __chkstk_darwin(v36);
  v452 = &v400 - v37;
  __chkstk_darwin(v38);
  v447 = &v400 - v39;
  __chkstk_darwin(v40);
  v451 = &v400 - v41;
  __chkstk_darwin(v42);
  v439 = &v400 - v43;
  __chkstk_darwin(v44);
  v401 = &v400 - v45;
  __chkstk_darwin(v46);
  v443 = &v400 - v47;
  v48 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v48);
  v413 = &v400 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v411 = &v400 - v51;
  __chkstk_darwin(v52);
  v410 = &v400 - v53;
  __chkstk_darwin(v54);
  v428 = &v400 - v55;
  __chkstk_darwin(v56);
  v400 = &v400 - v57;
  __chkstk_darwin(v58);
  v445 = &v400 - v59;
  __chkstk_darwin(v60);
  v62 = &v400 - v61;
  v432 = sub_100751344();
  v63 = *(v432 - 1);
  __chkstk_darwin(v432);
  v65 = &v400 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = sub_100751374();
  v66 = *(v449 - 1);
  __chkstk_darwin(v449);
  v68 = &v400 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v437 = type metadata accessor for TitleHeaderView(0);
  v497.receiver = v0;
  v497.super_class = v437;
  v69 = objc_msgSendSuper2(&v497, "layoutSubviews");
  v70 = swift_isaMask & *v0;
  v431 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorLineView);
  v71 = v70 + 448;
  v72 = *(v70 + 448);
  (v72)(v69);
  v450 = v48;
  LODWORD(v48) = v62[*(v48 + 32)];
  v446 = v62;
  sub_10010A9E0(v62, type metadata accessor for TitleHeaderView.Style);
  v73 = &enum case for Separator.Position.bottom(_:);
  if (!v48)
  {
    v73 = &enum case for Separator.Position.top(_:);
  }

  v74 = v0;
  (*(v63 + 104))(v65, *v73, v432);
  *(&v495 + 1) = sub_1007507D4();
  v496 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v494);
  sub_1007507C4();
  sub_100751354();
  [v0 bounds];
  sub_100751324();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  (*(v66 + 8))(v68, v449);
  [v431 setFrame:{v76, v78, v80, v82}];
  v83 = v71;
  v84 = v445;
  v85 = sub_1007477B4();
  v449 = v72;
  (v72)(v85);
  if (JUScreenClassGetMain() == 1)
  {
    v86 = v450[5];
    if (qword_100920AD0 != -1)
    {
      swift_once();
    }

    v87 = sub_10000D0FC(v458, qword_10097FF28);
    v88 = sub_10010A2FC(&v84[v86], v87);
    v89 = v456;
    v90 = v457;
    v91 = v448;
    if (!v88)
    {
      if (qword_100920AD8 != -1)
      {
        goto LABEL_172;
      }

      goto LABEL_22;
    }

    sub_10010A9E0(v84, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    sub_10010A9E0(v84, type metadata accessor for TitleHeaderView.Style);
    v89 = v456;
    v90 = v457;
    v91 = v448;
  }

  while (1)
  {
    v92 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel];
    v84 = &protocol witness table for UILabel;
    v444 = v83;
    v445 = v74;
    if (!v92)
    {
      goto LABEL_20;
    }

    v432 = v92;
    v93 = [v432 text];
    if (!v93)
    {
      goto LABEL_19;
    }

    v94 = v93;
    v95 = sub_100753094();
    v97 = v96;

    v99 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v99 = v95 & 0xFFFFFFFFFFFFLL;
    }

    if (!v99)
    {
LABEL_19:

      v89 = v456;
LABEL_20:
      v437 = *(v455 + 56);
      v113 = (v437)(v443, 1, 1, v89);
      goto LABEL_46;
    }

    v100 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork;
    if (*&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork])
    {

      if (sub_10074F1D4())
      {
        sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
        v101 = v446;
        v449();
        v102 = v406;
        sub_10010A978(v101, v406, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_10010A9E0(v101, type metadata accessor for TitleHeaderView.Style);
        v104 = v402;
        v103 = v403;
        v105 = v404;
        (*(v403 + 16))(v402, v102 + *(v458 + 6), v404);
        sub_10010A9E0(v102, type metadata accessor for TitleHeaderView.TextConfiguration);
        v106 = v74;
        v107 = [v74 traitCollection];
        v108 = sub_100753C14();

        (*(v103 + 8))(v104, v105);
        v109 = *&v106[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView];
        if (v109)
        {
          v110 = objc_opt_self();
          v111 = v109;
          v112 = [v110 configurationWithFont:v108];
          sub_1007432D4();
        }

        v74 = v445;
      }

      else
      {
        v115 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView;
        v116 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView];
        if (v116)
        {
          v117 = *&v74[v100];
          v118 = v446;
          v449();
          v119 = v406;
          sub_10010A978(v118, v406, type metadata accessor for TitleHeaderView.TextConfiguration);

          v120 = v116;
          sub_10010A9E0(v118, type metadata accessor for TitleHeaderView.Style);
          sub_1005E530C(v117, v119, v74);

          sub_10010A9E0(v119, type metadata accessor for TitleHeaderView.TextConfiguration);
          sub_100743324();

          v121 = *&v74[v115];
          if (v121)
          {
            v122 = v121;
            sub_1007432D4();
          }
        }
      }
    }

    v123 = v400;
    (v449)(v98);
    sub_10010A978(v123, v409, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10010A9E0(v123, type metadata accessor for TitleHeaderView.Style);
    v124 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView];
    if (v124)
    {
      v125 = sub_1007433C4();
      v126 = &protocol witness table for UIView;
      v127 = v124;
    }

    else
    {
      v127 = 0;
      v125 = 0;
      v126 = 0;
      *(&v494 + 1) = 0;
      *&v495 = 0;
    }

    *&v494 = v127;
    *(&v495 + 1) = v125;
    v496 = v126;
    v128 = sub_100745C84();
    v493 = &protocol witness table for UILabel;
    v492 = v128;
    v129 = v432;
    v491[0] = v432;
    v490 = 0;
    v488 = 0u;
    v489 = 0u;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    sub_100016B4C(&v494, v484, &unk_100928A00, &qword_1007A5AB0);
    v130 = v492;
    v131 = v493;
    v132 = sub_10000C888(v491, v492);
    v482 = v130;
    v483 = v131[1];
    v133 = sub_10000D134(v481);
    (*(*(v130 - 1) + 16))(v133, v132, v130);
    v134 = v458;
    v135 = v409;
    v136 = *(v409 + *(v458 + 8));
    v479 = &type metadata for Float;
    v480 = &protocol witness table for Float;
    v478 = v136;
    v137 = *(v458 + 9);
    v138 = sub_100750B04();
    v476 = v138;
    v477 = &protocol witness table for StaticDimension;
    v139 = sub_10000D134(v475);
    v140 = *(*(v138 - 8) + 16);
    v140(v139, v135 + v137, v138);
    v141 = *(v134 + 10);
    v473 = v138;
    v474 = &protocol witness table for StaticDimension;
    v142 = sub_10000D134(v472);
    v140(v142, v135 + v141, v138);
    sub_100016B4C(&v488, &v466, &qword_10092BC30, &qword_1007AD5C0);
    v143 = *(&v467 + 1);
    if (*(&v467 + 1))
    {
      v144 = v468;
      v145 = sub_10000C888(&v466, *(&v467 + 1));
      *(&v470 + 1) = v143;
      v471 = *(v144 + 8);
      v146 = sub_10000D134(&v469);
      (*(*(v143 - 8) + 16))(v146, v145, v143);
      v147 = v124;
      v148 = v129;
      sub_10000C620(&v466);
    }

    else
    {
      v149 = v124;
      v150 = v129;
      sub_10000C8CC(&v466, &qword_10092BC30, &qword_1007AD5C0);
      v469 = 0u;
      v470 = 0u;
      v471 = 0;
    }

    sub_100016B4C(&v485, v463, &qword_10092BC30, &qword_1007AD5C0);
    v151 = v464;
    v83 = v444;
    v74 = v445;
    v90 = v457;
    v91 = v448;
    if (v464)
    {
      v152 = v465;
      v153 = sub_10000C888(v463, v464);
      *(&v467 + 1) = v151;
      v468 = *(v152 + 8);
      v154 = sub_10000D134(&v466);
      (*(*(v151 - 8) + 16))(v154, v153, v151);
      sub_10000C620(v463);
    }

    else
    {
      sub_10000C8CC(v463, &qword_10092BC30, &qword_1007AD5C0);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    v155 = v458;
    v156 = v409;
    sub_10000C824(v409 + *(v458 + 12), v463);
    sub_10000C824(v156 + *(v155 + 13), v462);
    v461 = &protocol witness table for Double;
    v460 = &type metadata for Double;
    v459 = 0x4020000000000000;
    v157 = v401;
    sub_100747164();
    sub_10000C8CC(&v485, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(&v488, &qword_10092BC30, &qword_1007AD5C0);
    sub_10010A9E0(v156, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000C620(v491);
    sub_10000C8CC(&v494, &unk_100928A00, &qword_1007A5AB0);
    v89 = v456;
    v437 = *(v455 + 56);
    (v437)(v157, 0, 1, v456);
    sub_100066578(v157, v443, &qword_1009289F8, &unk_1007BE1C0);
    v158 = v432;
    v159 = [v432 font];
    if (!v159)
    {
      goto LABEL_185;
    }

    v160 = v159;
    v161 = [v158 text];
    v84 = &protocol witness table for UILabel;
    if (v161)
    {
      v162 = v161;
      v163 = sub_100753094();
      v165 = v164;

      *&v494 = v163;
      *(&v494 + 1) = v165;

      v166 = v433;
      sub_100740E54();
      sub_1000D5C0C();
      sub_1007542C4();
      LOBYTE(v162) = v167;
      (v434)[1](v166, v435);

      if (v162)
      {

        v168 = 0;
        v74 = v445;
        v89 = v456;
      }

      else
      {
        [v160 lineHeight];
        v170 = v169;

        v171 = ceil(v170 * 1.3);
        v74 = v445;
        if ((*&v171 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
          return;
        }

        v89 = v456;
        if (v171 <= -9.22337204e18)
        {
          goto LABEL_174;
        }

        if (v171 >= 9.22337204e18)
        {
          goto LABEL_175;
        }

        v168 = v171;
      }
    }

    else
    {

      v168 = 0;
    }

    v172 = v432;
    sub_1003DD238(v168);

LABEL_46:
    v173 = v428;
    (v449)(v113);
    v174 = v430;
    sub_100016B4C(v173 + v450[6], v430, &unk_100940600, &qword_1007AC320);
    sub_10010A9E0(v173, type metadata accessor for TitleHeaderView.Style);
    if ((*(v429 + 48))(v174, 1, v458) == 1)
    {
      sub_10000C8CC(v174, &unk_100940600, &qword_1007AC320);
      (v437)(v439, 1, 1, v89);
      goto LABEL_88;
    }

    sub_10010AAF8(v174, v438, type metadata accessor for TitleHeaderView.TextConfiguration);
    v175 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel;
    v176 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel];
    if (v176)
    {
      v177 = [v176 font];
      if (!v177)
      {
        goto LABEL_183;
      }

      v178 = v177;
      v179 = *&v74[v175];
      if (!v179 || (v180 = [v179 text]) == 0)
      {

        v187 = 0;
        v188 = *&v74[v175];
        if (!v188)
        {
          goto LABEL_57;
        }

LABEL_56:
        v189 = v188;
        sub_1003DD238(v187);

        goto LABEL_57;
      }

      v181 = v180;
      v182 = sub_100753094();
      v184 = v183;

      *&v494 = v182;
      *(&v494 + 1) = v184;

      v185 = v433;
      sub_100740E54();
      sub_1000D5C0C();
      sub_1007542C4();
      LOBYTE(v181) = v186;
      (v434)[1](v185, v435);

      if (v181)
      {

        v187 = 0;
        v74 = v445;
        v188 = *&v445[v175];
        if (v188)
        {
          goto LABEL_56;
        }
      }

      else
      {
        [v178 lineHeight];
        v228 = v227;

        v229 = ceil(v228 * 1.3);
        v74 = v445;
        if ((*&v229 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_176;
        }

        if (v229 <= -9.22337204e18)
        {
          goto LABEL_178;
        }

        if (v229 >= 9.22337204e18)
        {
          goto LABEL_180;
        }

        v187 = v229;
        v188 = *&v445[v175];
        if (v188)
        {
          goto LABEL_56;
        }
      }
    }

LABEL_57:
    v190 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel;
    v191 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel];
    if (!v191)
    {
      goto LABEL_66;
    }

    v192 = [v191 font];
    if (!v192)
    {
      goto LABEL_184;
    }

    v193 = v192;
    v194 = *&v74[v190];
    if (!v194 || (v195 = [v194 text]) == 0)
    {

      v202 = 0;
      v203 = *&v74[v190];
      if (!v203)
      {
        goto LABEL_66;
      }

LABEL_65:
      v204 = v203;
      sub_1003DD238(v202);

      goto LABEL_66;
    }

    v196 = v195;
    v197 = sub_100753094();
    v199 = v198;

    *&v494 = v197;
    *(&v494 + 1) = v199;

    v200 = v433;
    sub_100740E54();
    sub_1000D5C0C();
    sub_1007542C4();
    LOBYTE(v196) = v201;
    (v434)[1](v200, v435);

    if (v196)
    {

      v202 = 0;
      v74 = v445;
      v203 = *&v445[v190];
      if (v203)
      {
        goto LABEL_65;
      }
    }

    else
    {
      [v193 lineHeight];
      v231 = v230;

      v232 = ceil(v231 * 1.3);
      v74 = v445;
      if ((*&v232 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_177;
      }

      if (v232 <= -9.22337204e18)
      {
        goto LABEL_179;
      }

      if (v232 >= 9.22337204e18)
      {
        goto LABEL_181;
      }

      v202 = v232;
      v203 = *&v445[v190];
      if (v203)
      {
        goto LABEL_65;
      }
    }

LABEL_66:
    v205 = *&v74[v175];
    if (!v205)
    {
      sub_10010A9E0(v438, type metadata accessor for TitleHeaderView.TextConfiguration);
      v91 = v448;
      goto LABEL_70;
    }

    v206 = v446;
    v449();
    v207 = *(v206 + v450[9]);
    v208 = v205;
    sub_10010A9E0(v206, type metadata accessor for TitleHeaderView.Style);
    v91 = v448;
    if (v207 == 2)
    {
      sub_10010A9E0(v438, type metadata accessor for TitleHeaderView.TextConfiguration);

LABEL_70:
      (v437)(v439, 1, 1, v456);
      v83 = v444;
      goto LABEL_88;
    }

    v496 = 0;
    v494 = 0u;
    v495 = 0u;
    v209 = sub_100745C84();
    v493 = &protocol witness table for UILabel;
    v492 = v209;
    v491[0] = v208;
    v490 = 0;
    v488 = 0u;
    v489 = 0u;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    sub_100016B4C(&v494, v484, &unk_100928A00, &qword_1007A5AB0);
    v210 = v492;
    v211 = v493;
    v212 = sub_10000C888(v491, v492);
    v482 = v210;
    v483 = v211[1];
    v213 = sub_10000D134(v481);
    (*(*(v210 - 1) + 16))(v213, v212, v210);
    v214 = v458;
    v215 = v438;
    v216 = *&v438[*(v458 + 8)];
    v479 = &type metadata for Float;
    v480 = &protocol witness table for Float;
    v478 = v216;
    v217 = *(v458 + 9);
    v218 = sub_100750B04();
    v476 = v218;
    v477 = &protocol witness table for StaticDimension;
    v219 = sub_10000D134(v475);
    v220 = *(*(v218 - 8) + 16);
    v220(v219, &v215[v217], v218);
    v221 = *(v214 + 10);
    v473 = v218;
    v474 = &protocol witness table for StaticDimension;
    v222 = sub_10000D134(v472);
    v220(v222, &v215[v221], v218);
    sub_100016B4C(&v488, &v466, &qword_10092BC30, &qword_1007AD5C0);
    v223 = *(&v467 + 1);
    if (*(&v467 + 1))
    {
      v224 = v468;
      v225 = sub_10000C888(&v466, *(&v467 + 1));
      *(&v470 + 1) = v223;
      v471 = *(v224 + 8);
      v226 = sub_10000D134(&v469);
      (*(*(v223 - 8) + 16))(v226, v225, v223);
      sub_10000C620(&v466);
    }

    else
    {
      sub_10000C8CC(&v466, &qword_10092BC30, &qword_1007AD5C0);
      v469 = 0u;
      v470 = 0u;
      v471 = 0;
    }

    sub_100016B4C(&v485, v463, &qword_10092BC30, &qword_1007AD5C0);
    v233 = v464;
    v74 = v445;
    v90 = v457;
    if (v464)
    {
      v234 = v465;
      v235 = sub_10000C888(v463, v464);
      *(&v467 + 1) = v233;
      v468 = *(v234 + 8);
      v236 = sub_10000D134(&v466);
      (*(*(v233 - 8) + 16))(v236, v235, v233);
      sub_10000C620(v463);
    }

    else
    {
      sub_10000C8CC(v463, &qword_10092BC30, &qword_1007AD5C0);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    v83 = v444;
    v237 = v458;
    v238 = v438;
    sub_10000C824(&v438[*(v458 + 12)], v463);
    sub_10000C824(v238 + *(v237 + 13), v462);
    v461 = &protocol witness table for Double;
    v460 = &type metadata for Double;
    v459 = 0x4020000000000000;
    v239 = v439;
    sub_100747164();
    sub_10000C8CC(&v485, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(&v488, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(&v494, &unk_100928A00, &qword_1007A5AB0);
    sub_10010A9E0(v238, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000C620(v491);
    v437 = *(v455 + 56);
    (v437)(v239, 0, 1, v456);
LABEL_88:
    v240 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel];
    v241 = [v240 font];
    if (!v241)
    {
      goto LABEL_182;
    }

    v89 = v241;
    v242 = [v240 text];
    v438 = v240;
    if (!v242)
    {

      v248 = 0;
      goto LABEL_98;
    }

    v243 = v242;
    v244 = sub_100753094();
    v74 = v245;

    *&v494 = v244;
    *(&v494 + 1) = v74;

    v246 = v433;
    sub_100740E54();
    sub_1000D5C0C();
    sub_1007542C4();
    v86 = v247;
    (v434)[1](v246, v435);

    if (v86)
    {

      v248 = 0;
      goto LABEL_97;
    }

    [v89 lineHeight];
    v250 = v249;

    v251 = ceil(v250 * 1.3);
    if ((*&v251 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_170;
    }

    if (v251 > -9.22337204e18)
    {
      break;
    }

LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    swift_once();
LABEL_22:
    v114 = sub_10000D0FC(v458, qword_10097FF40);
    sub_10010A2FC(&v84[v86], v114);
    sub_10010A9E0(v84, type metadata accessor for TitleHeaderView.Style);
  }

  if (v251 >= 9.22337204e18)
  {
    goto LABEL_171;
  }

  v248 = v251;
LABEL_97:
  v74 = v445;
LABEL_98:
  sub_1003DD238(v248);
  v252 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork;
  if (*&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork])
  {

    if (sub_10074F1D4())
    {
      sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
      v253 = v446;
      v449();
      v254 = v406;
      sub_10010A978(v253 + v450[5], v406, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10010A9E0(v253, type metadata accessor for TitleHeaderView.Style);
      v255 = v402;
      v256 = v403;
      v257 = v404;
      (*(v403 + 16))(v402, v254 + *(v458 + 6), v404);
      sub_10010A9E0(v254, type metadata accessor for TitleHeaderView.TextConfiguration);
      v258 = v74;
      v259 = [v74 traitCollection];
      v260 = sub_100753C14();

      (*(v256 + 8))(v255, v257);
      v261 = *&v258[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView];
      if (v261)
      {
        v262 = objc_opt_self();
        v263 = v261;
        v264 = [v262 configurationWithFont:v260];
        sub_1007432D4();
      }

      v74 = v445;
      v91 = v448;
      v90 = v457;
    }

    else
    {
      v265 = v90;
      v266 = v74;
      v267 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView;
      v268 = *(v266 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView);
      if (v268)
      {
        v269 = *(v266 + v252);
        v270 = v446;
        v449();
        v271 = v406;
        sub_10010A978(v270 + v450[5], v406, type metadata accessor for TitleHeaderView.TextConfiguration);

        v272 = v268;
        v265 = v457;
        sub_10010A9E0(v270, type metadata accessor for TitleHeaderView.Style);
        sub_1005E530C(v269, v271, v266);

        sub_10010A9E0(v271, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_100743324();

        v273 = *(v266 + v267);
        if (v273)
        {
          v274 = v273;
          sub_1007432D4();
        }
      }

      v74 = v266;
      v91 = v448;
      v90 = v265;
    }
  }

  v275 = v446;
  v449();
  v276 = *(v275 + v450[9]);
  v277 = sub_10010A9E0(v275, type metadata accessor for TitleHeaderView.Style);
  if (v276 == 2)
  {
    v278 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel];
    v277 = v278;
  }

  else
  {
    v278 = 0;
  }

  v279 = v446;
  (v449)(v277);
  v280 = *(v279 + v450[9]);
  v281 = sub_10010A9E0(v279, type metadata accessor for TitleHeaderView.Style);
  if (v280 == 2)
  {
    v282 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel];
    v281 = v282;
  }

  else
  {
    v282 = 0;
  }

  v283 = v410;
  (v449)(v281);
  sub_10010A978(v283 + v450[5], v90, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10010A9E0(v283, type metadata accessor for TitleHeaderView.Style);
  v284 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView];
  if (v284)
  {
    v285 = sub_1007433C4();
    v286 = &protocol witness table for UIView;
    v287 = v284;
  }

  else
  {
    v287 = 0;
    v285 = 0;
    v286 = 0;
    *(&v494 + 1) = 0;
    *&v495 = 0;
  }

  v288 = v438;
  *&v494 = v287;
  *(&v495 + 1) = v285;
  v496 = v286;
  v289 = sub_100745C84();
  v493 = &protocol witness table for UILabel;
  v492 = v289;
  v491[0] = v288;
  if (v278)
  {
    v290 = &protocol witness table for UILabel;
    v291 = v278;
    v292 = v289;
  }

  else
  {
    v291 = 0;
    v292 = 0;
    v290 = 0;
    *&v489 = 0;
    *(&v488 + 1) = 0;
  }

  *&v488 = v291;
  *(&v489 + 1) = v292;
  v490 = v290;
  v434 = v282;
  v435 = v278;
  if (v282)
  {
    v293 = &protocol witness table for UILabel;
    v294 = v282;
  }

  else
  {
    v294 = 0;
    v289 = 0;
    v293 = 0;
    *&v486 = 0;
    *(&v485 + 1) = 0;
  }

  *&v485 = v294;
  *(&v486 + 1) = v289;
  v487 = v293;
  sub_100016B4C(&v494, v484, &unk_100928A00, &qword_1007A5AB0);
  v295 = v492;
  v296 = v493;
  v297 = sub_10000C888(v491, v492);
  v482 = v295;
  v483 = v296[1];
  v298 = sub_10000D134(v481);
  (*(*(v295 - 1) + 16))(v298, v297, v295);
  v300 = v457;
  v299 = v458;
  v301 = *(v457 + *(v458 + 8));
  v479 = &type metadata for Float;
  v480 = &protocol witness table for Float;
  v478 = v301;
  v302 = *(v458 + 9);
  v303 = sub_100750B04();
  v476 = v303;
  v477 = &protocol witness table for StaticDimension;
  v304 = sub_10000D134(v475);
  v305 = *(*(v303 - 8) + 16);
  v305(v304, v300 + v302, v303);
  v306 = *(v299 + 10);
  v473 = v303;
  v474 = &protocol witness table for StaticDimension;
  v307 = sub_10000D134(v472);
  v305(v307, v300 + v306, v303);
  sub_100016B4C(&v488, &v466, &qword_10092BC30, &qword_1007AD5C0);
  v308 = *(&v467 + 1);
  if (*(&v467 + 1))
  {
    v309 = v468;
    v310 = sub_10000C888(&v466, *(&v467 + 1));
    *(&v470 + 1) = v308;
    v471 = *(v309 + 8);
    v311 = sub_10000D134(&v469);
    (*(*(v308 - 8) + 16))(v311, v310, v308);
    v312 = v434;
    v313 = v284;
    v314 = v438;
    v315 = v435;
    sub_10000C620(&v466);
  }

  else
  {
    v316 = v434;
    v317 = v284;
    v318 = v438;
    v319 = v435;
    sub_10000C8CC(&v466, &qword_10092BC30, &qword_1007AD5C0);
    v469 = 0u;
    v470 = 0u;
    v471 = 0;
  }

  v320 = v447;
  sub_100016B4C(&v485, v463, &qword_10092BC30, &qword_1007AD5C0);
  v321 = v464;
  if (v464)
  {
    v322 = v465;
    v323 = sub_10000C888(v463, v464);
    *(&v467 + 1) = v321;
    v468 = *(v322 + 8);
    v324 = sub_10000D134(&v466);
    (*(*(v321 - 8) + 16))(v324, v323, v321);
    sub_10000C620(v463);
  }

  else
  {
    sub_10000C8CC(v463, &qword_10092BC30, &qword_1007AD5C0);
    v466 = 0u;
    v467 = 0u;
    v468 = 0;
  }

  v326 = v457;
  v325 = v458;
  sub_10000C824(v457 + *(v458 + 12), v463);
  sub_10000C824(v326 + *(v325 + 13), v462);
  v461 = &protocol witness table for Double;
  v460 = &type metadata for Double;
  v459 = 0x4020000000000000;
  sub_100747164();
  sub_10010A9E0(v326, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000C8CC(&v485, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C8CC(&v488, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C620(v491);
  v327 = sub_10000C8CC(&v494, &unk_100928A00, &qword_1007A5AB0);
  v328 = v411;
  (v449)(v327);
  v329 = *(v328 + v450[9]);
  sub_10010A9E0(v328, type metadata accessor for TitleHeaderView.Style);
  sub_10000C518(&qword_100928A10, &qword_1007AC450);
  v457 = *(v412 + 72);
  v330 = (*(v412 + 80) + 32) & ~*(v412 + 80);
  if (v329)
  {
    v331 = v456;
    if (v329 == 1)
    {
      v332 = v91;
      v333 = v457;
      v438 = swift_allocObject();
      v334 = &v438[v330];
      sub_100016B4C(v443, &v438[v330], &qword_1009289F8, &unk_1007BE1C0);
      v335 = v455 + 16;
      (*(v455 + 16))(&v334[v333], v440, v331);
      (v437)(&v334[v333], 0, 1, v331);
      sub_100016B4C(v439, &v334[2 * v333], &qword_1009289F8, &unk_1007BE1C0);
      v336 = (v335 + 32);
      v337 = (v335 + 16);
      v458 = _swiftEmptyArrayStorage;
      v338 = 3;
      v453 = v334;
      v339 = v334;
      do
      {
        v340 = v452;
        sub_100016B4C(v339, v452, &qword_1009289F8, &unk_1007BE1C0);
        sub_100066578(v340, v332, &qword_1009289F8, &unk_1007BE1C0);
        if ((*v336)(v332, 1, v331) == 1)
        {
          sub_10000C8CC(v332, &qword_1009289F8, &unk_1007BE1C0);
        }

        else
        {
          v341 = *v337;
          (*v337)(v454, v332, v331);
          v342 = v458;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v342 = sub_100255918(0, v342[2] + 1, 1, v342);
          }

          v344 = v342[2];
          v343 = v342[3];
          if (v344 >= v343 >> 1)
          {
            v342 = sub_100255918((v343 > 1), v344 + 1, 1, v342);
          }

          v342[2] = v344 + 1;
          v345 = (*(v455 + 80) + 32) & ~*(v455 + 80);
          v458 = v342;
          v331 = v456;
          v341(v342 + v345 + *(v455 + 72) * v344, v454, v456);
          v332 = v448;
        }

        v339 += v457;
        --v338;
      }

      while (v338);
      goto LABEL_149;
    }

    v363 = v457;
    v438 = swift_allocObject();
    v364 = &v438[v330];
    sub_100016B4C(v443, &v438[v330], &qword_1009289F8, &unk_1007BE1C0);
    v365 = v455;
    (*(v455 + 16))(v364 + v363, v440, v331);
    (v437)(v364 + v363, 0, 1, v331);
    v366 = v407;
    sub_100016B4C(v364, v407, &qword_1009289F8, &unk_1007BE1C0);
    v367 = v405;
    sub_100066578(v366, v405, &qword_1009289F8, &unk_1007BE1C0);
    v368 = *(v365 + 48);
    v369 = (v365 + 32);
    v370 = v368(v367, 1, v331);
    v371 = v331;
    v454 = (v365 + 32);
    if (v370 == 1)
    {
      sub_10000C8CC(v367, &qword_1009289F8, &unk_1007BE1C0);
      v458 = _swiftEmptyArrayStorage;
    }

    else
    {
      v372 = *v369;
      (*v369)(v408, v367, v371);
      v373 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v373 = sub_100255918(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v375 = v373[2];
      v374 = v373[3];
      v458 = v373;
      if (v375 >= v374 >> 1)
      {
        v458 = sub_100255918((v374 > 1), v375 + 1, 1, v458);
      }

      v376 = v458;
      v458[2] = v375 + 1;
      v377 = v376 + ((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v375;
      v371 = v456;
      v372(v377, v408, v456);
      v367 = v405;
    }

    v378 = v407;
    sub_100016B4C(v364 + v457, v407, &qword_1009289F8, &unk_1007BE1C0);
    sub_100066578(v378, v367, &qword_1009289F8, &unk_1007BE1C0);
    if (v368(v367, 1, v371) == 1)
    {
      sub_10000C8CC(v367, &qword_1009289F8, &unk_1007BE1C0);
      v360 = v441;
      v361 = v442;
      v362 = v436;
    }

    else
    {
      v379 = *v454;
      (*v454)(v408, v367, v371);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v361 = v442;
      v362 = v436;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v458 = sub_100255918(0, v458[2] + 1, 1, v458);
      }

      v360 = v441;
      v382 = v458[2];
      v381 = v458[3];
      if (v382 >= v381 >> 1)
      {
        v458 = sub_100255918((v381 > 1), v382 + 1, 1, v458);
      }

      v383 = v458;
      v458[2] = v382 + 1;
      v379(&v383[((*(v455 + 80) + 32) & ~*(v455 + 80)) + *(v455 + 72) * v382], v408, v456);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v346 = v457;
    v347 = 2 * v457;
    v438 = swift_allocObject();
    v348 = &v438[v330];
    sub_100016B4C(v443, &v438[v330], &qword_1009289F8, &unk_1007BE1C0);
    sub_100016B4C(v439, &v348[v346], &qword_1009289F8, &unk_1007BE1C0);
    v349 = v456;
    v350 = v455 + 16;
    (*(v455 + 16))(&v348[v347], v440, v456);
    (v437)(&v348[v347], 0, 1, v349);
    v351 = (v350 + 32);
    v352 = (v350 + 16);
    v458 = _swiftEmptyArrayStorage;
    v353 = 3;
    v454 = v348;
    do
    {
      v354 = v451;
      sub_100016B4C(v348, v451, &qword_1009289F8, &unk_1007BE1C0);
      sub_100066578(v354, v320, &qword_1009289F8, &unk_1007BE1C0);
      if ((*v351)(v320, 1, v349) == 1)
      {
        sub_10000C8CC(v320, &qword_1009289F8, &unk_1007BE1C0);
      }

      else
      {
        v355 = *v352;
        (*v352)(v453, v320, v349);
        v356 = v458;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v356 = sub_100255918(0, v356[2] + 1, 1, v356);
        }

        v358 = v356[2];
        v357 = v356[3];
        if (v358 >= v357 >> 1)
        {
          v356 = sub_100255918((v357 > 1), v358 + 1, 1, v356);
        }

        v356[2] = v358 + 1;
        v349 = v456;
        v359 = (*(v455 + 80) + 32) & ~*(v455 + 80);
        v458 = v356;
        v355(v356 + v359 + *(v455 + 72) * v358, v453, v456);
        v320 = v447;
      }

      v348 += v457;
      --v353;
    }

    while (v353);
LABEL_149:
    swift_setDeallocating();
    swift_arrayDestroy();
    v360 = v441;
    v361 = v442;
    v362 = v436;
  }

  v384 = swift_deallocClassInstance();
  v385 = v445;
  v386 = v446;
  (v449)(v384);
  v387 = *(v362 + 16);
  v387(v360, v386 + v450[10], v361);
  sub_10010A9E0(v386, type metadata accessor for TitleHeaderView.Style);
  v388 = *&v385[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView];
  if (v388)
  {
    v389 = sub_100016C60(0, &qword_100922300, UIView_ptr);
    v390 = &protocol witness table for UIView;
  }

  else
  {
    v389 = 0;
    v390 = 0;
    *(&v494 + 1) = 0;
    *&v495 = 0;
  }

  *&v494 = v388;
  *(&v495 + 1) = v389;
  v496 = v390;
  v391 = v446;
  v392 = v449;
  v449();
  v393 = v450;
  v394 = *(v391 + v450[14]);
  v395 = v388;
  sub_10010A9E0(v391, type metadata accessor for TitleHeaderView.Style);
  v492 = &type metadata for CGFloat;
  v493 = &protocol witness table for CGFloat;
  v491[0] = v394;
  v396 = (v387)(v414, v441, v442);
  v397 = v413;
  (v392)(v396);
  (*(v415 + 16))(v417, v397 + v393[11], v416);
  sub_10010A9E0(v397, type metadata accessor for TitleHeaderView.Style);
  (*(v421 + 104))(v420, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v423);
  v398 = v418;
  sub_100747104();
  v399 = v424;
  sub_100747114();

  (*(v425 + 8))(v399, v426);
  (*(v419 + 8))(v398, v422);
  (*(v436 + 8))(v441, v442);
  (*(v455 + 8))(v440, v456);
  sub_10000C8CC(v439, &qword_1009289F8, &unk_1007BE1C0);
  sub_10000C8CC(v443, &qword_1009289F8, &unk_1007BE1C0);
}