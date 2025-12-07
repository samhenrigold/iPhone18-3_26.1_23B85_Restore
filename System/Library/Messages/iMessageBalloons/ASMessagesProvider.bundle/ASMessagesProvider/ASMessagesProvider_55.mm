uint64_t sub_62CE80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v75 = a4;
  v5 = sub_7656C0();
  v73 = *(v5 - 8);
  v74 = v5;
  __chkstk_darwin(v5);
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7580D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_953FB8, &qword_79C660);
  __chkstk_darwin(v11 - 8);
  v13 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  __chkstk_darwin(v17);
  v19 = &v65 - v18;
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  swift_getObjectType();
  sub_758220();
  sub_75BF40();
  (*(v8 + 8))(v10, v7);
  LODWORD(v23) = sub_75BFD0();
  sub_62DA10(v22, v19);
  v24 = sub_75BFE0();
  if (v24)
  {
  }

  sub_1ED18(v19, v16, &unk_953FB8, &qword_79C660);
  v25 = sub_75BF20();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v16, 1, v25) == 1)
  {
    goto LABEL_4;
  }

  sub_1ED18(v16, v13, &unk_953FB8, &qword_79C660);
  v29 = (*(v26 + 88))(v13, v25);
  if (v29 == enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    (*(v26 + 96))(v13, v25);
    v30 = *v13;
    sub_75A920();
    sub_768900();
    sub_768ED0();
    if ((sub_75A770() & 1) == 0)
    {
      v71 = v24 == 0;
      v70 = sub_764D60();
      v69 = v40;
      v67 = v23 ^ 1;
      v66 = type metadata accessor for LinkableHeaderCollectionViewCell();
      v28 = v75;
      v41 = sub_527DE4();
      swift_getKeyPath();
      v68 = v30;
      v42 = v23;
      v23 = v72;
      sub_75C7B0();

      sub_765630();
      v44 = v43;
      v46 = v45;
      v47 = v23;
      LOBYTE(v23) = v42;
      (*(v73 + 8))(v47, v74);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_12407C(v70, v69, v71 & v67, v41, v44, v46, v66, ObjectType);
      v27 = v49;

      swift_unknownObjectRelease_n();
      sub_10A2C(v16, &unk_953FB8, &qword_79C660);
      goto LABEL_30;
    }
  }

  else
  {
    if (v29 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      (*(v26 + 8))(v13, v25);
LABEL_4:
      sub_10A2C(v16, &unk_953FB8, &qword_79C660);
      v27 = 0;
      v28 = v75;
      goto LABEL_30;
    }

    (*(v26 + 96))(v13, v25);
    v30 = *v13;
  }

  v28 = v75;

  sub_10A2C(v16, &unk_953FB8, &qword_79C660);
  v31 = 0.0;
  if ((v23 & 1) == 0)
  {
    if (qword_93CBE0 != -1)
    {
      swift_once();
    }

    sub_B170(qword_99CE70, qword_99CE88);
    swift_getKeyPath();
    sub_75C7B0();

    v32 = *&v78[0];
    sub_766710();
    v31 = v33;
  }

  v34 = sub_764D20();
  if (v34)
  {
  }

  sub_764D10();
  sub_BD88(&unk_954000, qword_786BA0);
  v35 = sub_769490();

  if (v23)
  {
    _Q3 = xmmword_786AD0;
    v37 = 17.0;
    v38 = 0.0;
    v39 = 0.0;
  }

  else
  {
    v38 = 22.0;
    if (v34)
    {
      v38 = 15.0;
    }

    if (v35)
    {
      v39 = 15.0;
    }

    else
    {
      v39 = v38;
    }

    v37 = 9.0;
    if (v35)
    {
      v50 = 12.0;
    }

    else
    {
      v50 = 9.0;
    }

    __asm { FMOV            V3.2D, #15.0 }

    *&_Q3 = v50;
  }

  v78[1] = _Q3;
  v78[0] = _Q3;
  v79 = v37;
  v80 = v38;
  v81 = v37;
  v82 = v39;
  v83 = xmmword_786B00;
  v84 = xmmword_786B10;
  v55 = sub_527DE4();
  swift_getKeyPath();
  v56 = v72;
  sub_75C7B0();

  sub_765630();
  v58 = v57;
  v60 = v59;
  (*(v73 + 8))(v56, v74);
  sub_13C170(v30, v78, v55, v31, 0.0, v31, 0.0, v58, v60);
  v27 = v61;
  swift_unknownObjectRelease();

LABEL_30:
  v62 = v77;
  *(v76 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight) = v27;
  v63 = sub_62DE70(v19, v23 & 1, v28, v62);
  sub_2D25B8(v63);
  sub_10A2C(v19, &unk_953FB8, &qword_79C660);
  return sub_10A2C(v22, &unk_953FB8, &qword_79C660);
}

uint64_t sub_62D650(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a1;
  }

  v28 = a4;

  v11 = sub_527DE4();
  v12 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerView);
  if (v12)
  {
    type metadata accessor for BannerCollectionViewCell(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v31 = v13;
      v15 = v12;
      v16 = 0;
      v17 = 0;
LABEL_7:
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v20 = v14;
      v21 = sub_76A000();
      [v20 setBackgroundColor:v21];

      goto LABEL_8;
    }
  }

  v31 = 0;
  v18 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = &v31;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_62F4AC;
  *(v16 + 24) = v17;
  aBlock[4] = sub_2EC28;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1EB578;
  aBlock[3] = &unk_89ACD8;
  v19 = _Block_copy(aBlock);

  [v18 performWithoutAnimation:v19];
  _Block_release(v19);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = sub_62F4AC;
  v14 = v31;
  if (v31)
  {
    goto LABEL_7;
  }

LABEL_8:
  v22 = 0.0;
  if ((v29 & 1) == 0)
  {
    if (qword_93CBE8 == -1)
    {
LABEL_10:
      v23 = qword_99CEB0;
      sub_B170(qword_99CE98, qword_99CEB0);
      sub_33964(v23);
      sub_766700();
      v22 = v24;
      (*(v8 + 8))(v10, v7);
      goto LABEL_11;
    }

LABEL_16:
    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (v31)
  {
    v25 = v31;
    sub_65CCB8(a1, v29 & 1, v11, v28, v22, 0.0, 0.0);
  }

  swift_unknownObjectRelease();

  a1 = v31;
  sub_F704(v16, v17);
  return a1;
}

uint64_t sub_62DA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_BD88(&unk_953FB8, &qword_79C660);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_BD88(&qword_953FB0, &qword_786B98);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  sub_1ED18(a1, v9, &unk_953FB8, &qword_79C660);
  v13 = sub_75BF20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v9, 1, v13) == 1)
  {
    sub_10A2C(v9, &unk_953FB8, &qword_79C660);
  }

  else
  {
    v24 = a2;
    sub_75BF10();
    (*(v14 + 8))(v9, v13);
    v16 = sub_759C90();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v12, 1, v16) == 1)
    {
      sub_10A2C(v12, &qword_953FB0, &qword_786B98);
      a2 = v24;
    }

    else
    {
      v18 = sub_759C80();
      (*(v17 + 8))(v12, v16);
      a2 = v24;
      if (v18)
      {
        v19 = qword_93DF20;
        goto LABEL_9;
      }
    }
  }

  sub_1ED18(a1, v6, &unk_953FB8, &qword_79C660);
  if (v15(v6, 1, v13) != 1)
  {
    (*(v14 + 32))(a2, v6, v13);
    v20 = 0;
    if (qword_93DF20 == -1)
    {
      goto LABEL_10;
    }

LABEL_12:
    swift_once();
    goto LABEL_10;
  }

  sub_10A2C(v6, &unk_953FB8, &qword_79C660);
  v19 = qword_93DF20;
LABEL_9:
  v20 = 1;
  if (v19 != -1)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = sub_768FF0();
  sub_BE38(v21, qword_9A0490);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768E80();

  return (*(v14 + 56))(a2, v20, 1, v13);
}

char *sub_62DE70(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_953FB8, &qword_79C660);
  __chkstk_darwin(v11 - 8);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  sub_1ED18(a1, &v46 - v15, &unk_953FB8, &qword_79C660);
  v17 = sub_75BF20();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_2;
  }

  sub_1ED18(v16, v13, &unk_953FB8, &qword_79C660);
  v20 = (*(v18 + 88))(v13, v17);
  if (v20 != enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    if (v20 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      (*(v18 + 8))(v13, v17);
LABEL_2:
      sub_10A2C(v16, &unk_953FB8, &qword_79C660);
      return 0;
    }

    (*(v18 + 96))(v13, v17);
    v21 = *v13;
    goto LABEL_8;
  }

  (*(v18 + 96))(v13, v17);
  v21 = *v13;
  sub_75A920();
  sub_768880();
  if (sub_75A770())
  {

LABEL_8:

    sub_10A2C(v16, &unk_953FB8, &qword_79C660);
    v22 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerView);
    v23 = a2;
    if (v22 && (type metadata accessor for BannerCollectionViewCell(0), (v24 = swift_dynamicCastClass()) != 0))
    {
      v25 = v24;
      v26 = v22;
    }

    else
    {
      v27 = objc_allocWithZone(type metadata accessor for BannerCollectionViewCell(0));
      v25 = [v27 initWithFrame:{0.0, 0.0, 0.0, 0.0, v46, v47}];
    }

    v28 = sub_527DE4();
    v29 = 0.0;
    if ((v23 & 1) == 0)
    {
      if (qword_93CBE0 != -1)
      {
        swift_once();
      }

      v30 = qword_99CE88;
      sub_B170(qword_99CE70, qword_99CE88);
      sub_33964(v30);
      sub_766700();
      v29 = v31;
      (*(v8 + 8))(v10, v7);
    }

    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v32 = v25;
    v33 = sub_76A000();
    [v32 setBackgroundColor:v33];

    sub_65CCB8(v21, v23 & 1, v28, v47, v29, 0.0, v29);
    swift_unknownObjectRelease();

    return v32;
  }

  v34 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerView);
  if (v34 && (type metadata accessor for LinkableHeaderCollectionViewCell(), (v35 = swift_dynamicCastClass()) != 0))
  {
    v36 = v35;
    v37 = v34;
  }

  else
  {
    v38 = objc_allocWithZone(type metadata accessor for LinkableHeaderCollectionViewCell());
    v36 = [v38 initWithFrame:{0.0, 0.0, 0.0, 0.0, v46, v47}];
  }

  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v39 = v36;
  v40 = sub_76A000();
  [v39 setBackgroundColor:v40];

  sub_764D30();
  sub_527DE4();
  v41 = *(*&v39[OBJC_IVAR____TtC18ASMessagesProvider32LinkableHeaderCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label);
  v42 = sub_759CF0();
  sub_22A974(v42, sub_30AE4);
  v44 = v43;

  v45 = sub_759CE0();
  sub_4ED3B8(v45, 0, v44);

  [v39 setNeedsLayout];

  swift_unknownObjectRelease();

  sub_10A2C(v16, &unk_953FB8, &qword_79C660);
  return v39;
}

uint64_t sub_62E490(uint64_t *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for BannerCollectionViewCell(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = *a1;
  *a1 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_62E4F0(__n128 a1, uint64_t a2, uint64_t a3)
{
  v6 = a1.n128_f64[0];
  v7 = sub_7645F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView])
  {

    sub_764600();
    v11 = (*(v8 + 88))(v10, v7);
    if (v11 == enum case for Uber.AssetType.artwork(_:))
    {
      v12 = [v3 traitCollection];
      v13 = sub_7699D0();

      if (v13)
      {
        if (!sub_764580())
        {
          goto LABEL_11;
        }

LABEL_10:

        sub_62E71C(v14, a2, a3, v6);

        return;
      }

      if (sub_7645E0())
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    if (v11 == enum case for Uber.AssetType.video(_:))
    {
      if (sub_7645D0())
      {
        sub_764BC0();

        goto LABEL_10;
      }

LABEL_11:

      return;
    }

    v15 = enum case for Uber.AssetType.icon(_:);
    v16 = v11;

    if (v16 != v15)
    {
      (*(v8 + 8))(v10, v7);
    }
  }
}

void sub_62E71C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v74 = a2;
  v8 = sub_766690();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_946810, &qword_783360);
  __chkstk_darwin(v10 - 8);
  v70 = &v58 - v11;
  v12 = sub_BD88(&unk_953FA0, &qword_79C638);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v58 - v14;
  v15 = sub_764590();
  v75 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v72 = &v58 - v19;
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  __chkstk_darwin(v23);
  v25 = &v58 - v24;
  v26 = sub_7656C0();
  __chkstk_darwin(v26);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v4;
  v31 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView];
  if (v31)
  {
    v61 = v28;
    v62 = v27;
    v63 = a1;
    v64 = v13;
    v65 = v12;
    v32 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_uber];

    v33 = v31;
    v34 = [v33 backgroundColor];
    v60 = v33;
    v35 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView];
    v36 = type metadata accessor for MediaView();
    v81.receiver = v35;
    v81.super_class = v36;
    objc_msgSendSuper2(&v81, "setBackgroundColor:", v34);
    [*(*&v35[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) setBackgroundColor:v34];
    v37 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView];
    if (v37)
    {
      v38 = v37;
      [v38 setBackgroundColor:v34];
    }

    swift_getKeyPath();
    sub_75C7B0();

    sub_7655A0();
    v40 = v39;
    sub_765590();
    v42 = v40 - v41;
    swift_getKeyPath();
    sub_75C7B0();

    v43 = v80;
    v44 = sub_7699D0();

    v59 = v17;
    v66 = a3;
    if (v44)
    {
      sub_7645B0();
      (*(v75 + 104))(v22, enum case for Uber.Style.inline(_:), v15);
      sub_62F4E4(&qword_9424D8, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
      sub_769430();
      sub_769430();
      if (v78 == v76 && v79 == v77)
      {
        v45 = v32;
        v46 = 1;
      }

      else
      {
        v45 = v32;
        v46 = sub_76A950();
      }

      v47 = *(v75 + 8);
      v47(v22, v15);
      v47(v25, v15);

      if (v46)
      {
        v42 = v42 - a4;
      }

      v32 = v45;
    }

    sub_75C800();
    v48 = v73;
    sub_769060();
    v49 = v72;
    v74 = v32;
    sub_7645B0();
    swift_getKeyPath();
    sub_29A844();
    v50 = v65;
    sub_769040();

    v51 = v78;
    sub_765630();
    v53 = v52;
    v54 = [v71 traitCollection];
    sub_6260C4(v54, v49, (v51 & 1) == 0, v53, *&v42, 0);
    if (sub_7699D0())
    {
      (*(v75 + 104))(v59, enum case for Uber.Style.inline(_:), v15);
      sub_62F4E4(&qword_9424D8, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
      sub_769430();
      sub_769430();
      if (v78 == v76 && v79 == v77)
      {
        (*(v75 + 8))(v59, v15);

LABEL_18:
        sub_765330();

        (*(v75 + 8))(v49, v15);
        type metadata accessor for UberHeaderView();
        sub_62F4E4(&unk_95F510, type metadata accessor for UberHeaderView, &unk_78E588);
        v57 = v60;
        sub_75A050();

        (*(v64 + 8))(v48, v50);
        (*(v61 + 8))(v30, v62);
        return;
      }

      v55 = sub_76A950();
      (*(v75 + 8))(v59, v15);

      if (v55)
      {
        goto LABEL_18;
      }
    }

    sub_765260();
    v56 = v67;
    sub_7666A0();
    sub_766650();
    (*(v68 + 8))(v56, v69);
    goto LABEL_18;
  }
}

uint64_t sub_62EFD8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_93F620, &unk_77E220);
}

uint64_t sub_62F044(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_93F620, &unk_77E220);
  return swift_endAccess();
}

uint64_t sub_62F124(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleText);
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleText + 8);
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || ((result = *v5, *v5 == v4) ? (v7 = v6 == a2) : (v7 = 0), !v7 && (result = sub_76A950(), (result & 1) == 0)))
  {
LABEL_10:

    return sub_2D33BC(v4, a2);
  }

  return result;
}

void sub_62F1C8(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber;
  if (*(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    sub_76A150();
  }

  else
  {
    if (qword_93CBC8 != -1)
    {
      swift_once();
    }

    v5 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    sub_BE38(v5, qword_99CE08);
    v13 = a1;
    sub_7592B0();
  }

  sub_76A150();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer;
  sub_62F384(a1, *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer), a2);
  sub_76A150();
  v7 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (v7)
  {
    v8 = *(a2 + v6);
    v9 = v7;
    v10 = [a1 traitCollection];
    if ((*(a2 + v4) & 1) != 0 || (v8 & 1) != 0 && (sub_7699E0() & 1) == 0)
    {

      v11 = 1;
    }

    else
    {
      v12 = sub_7699F0();

      if (v12)
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }
    }

    [v9 setTextAlignment:{v11, v13}];
  }
}

uint64_t sub_62F384(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 traitCollection];
  if ((a2 & 1) == 0 || (sub_7699E0() & 1) != 0 || [*(a3 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton) isHidden])
  {
    v6 = sub_7699F0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 1;
  }
}

uint64_t sub_62F418()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_62F450()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_62F4C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_62F4E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_62F52C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_62F588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_62F5F4()
{
  result = qword_95F520;
  if (!qword_95F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95F520);
  }

  return result;
}

unint64_t sub_62F64C()
{
  result = qword_95F528;
  if (!qword_95F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95F528);
  }

  return result;
}

void sub_62F6A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7656A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v68 - v8;
  v10 = sub_7656C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v78 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v68 - v14;
  __chkstk_darwin(v15);
  v17 = &v68 - v16;
  sub_75A2D0();
  sub_630058();
  sub_75C750();
  if (!aBlock[0])
  {
    return;
  }

  v73 = v9;
  v74 = v5;
  v75 = v4;

  v18 = sub_759450();
  v19 = [v18 length];

  v79 = v10;
  if (v19 < 1)
  {
    [*&v2[qword_964310] setText:0];
    v2[qword_9A0A18] = 0;
    v29 = *&v2[qword_964300];
    [v29 setHidden:1];
    goto LABEL_7;
  }

  v69 = v17;
  v71 = v11;
  v20 = sub_759450();
  swift_getKeyPath();
  v70 = a1;
  sub_75C7B0();

  v21 = aBlock[6];
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
  v23 = [v20 length];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v21;
  *(v24 + 32) = v22;
  *(v24 + 40) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_119AC;
  *(v25 + 24) = v24;
  aBlock[4] = sub_2636C;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  aBlock[3] = &unk_89ADD8;
  v26 = _Block_copy(aBlock);
  v27 = v21;
  v28 = v22;

  [v20 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

  _Block_release(v26);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
    goto LABEL_24;
  }

  v24 = *&v2[qword_964310];
  [v24 setAttributedText:v28];
  if (qword_93E268 != -1)
  {
LABEL_24:
    swift_once();
  }

  [v24 setTextColor:qword_9A0A00];
  v2[qword_9A0A18] = 1;
  v29 = *&v2[qword_964300];
  [v29 setHidden:0];

  v10 = v79;
  v11 = v71;
  v17 = v69;
LABEL_7:
  v30 = *&v2[qword_964308];
  sub_759460();
  if (v31)
  {
    v32 = sub_769210();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v2[qword_9A0A10] = (sub_759430() & 1) == 0;
  sub_26698();
  if ((sub_759430() & 1) == 0 && v2[qword_9A0A18] != 1)
  {
    sub_759210();
    sub_759090();
  }

  sub_75CD10();
  v2[qword_9A0A28] = sub_759430() & 1;
  [v2 setNeedsLayout];
  v33 = sub_759430();
  v72 = v2;
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v34 = sub_76A030();
  }

  [v29 setBackgroundColor:v34];

  swift_getKeyPath();
  sub_75C7B0();

  sub_765580();
  v71 = v35;
  v36 = *(v11 + 8);
  v36(v17, v10);
  swift_getKeyPath();
  v37 = v76;
  sub_75C7B0();

  sub_7655A0();
  v70 = v38;
  v36(v37, v10);
  v40 = v74;
  v39 = v75;
  v41 = v73;
  (*(v74 + 104))(v73, enum case for PageGrid.Direction.vertical(_:), v75);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765590();
  v36(v17, v10);
  v42 = v36;
  (*(v40 + 16))(v77, v41, v39);
  sub_40DC7C(0.0);
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v47 = v78;
  sub_765670();
  (*(v40 + 8))(v41, v39);
  sub_765620();
  v48 = v72;
  v49 = &v72[qword_9A0A20];
  *v49 = v50;
  *(v49 + 1) = v51;
  *(v49 + 2) = v52;
  *(v49 + 3) = v53;
  [v48 setNeedsLayout];
  v54 = [v48 contentView];
  v55 = sub_759430();

  if ((v55 & 1) == 0)
  {
    sub_765620();
    top = v56;
    left = v57;
    bottom = v58;
    right = v59;
  }

  [v54 setLayoutMargins:{top, left, bottom, right}];

  if (sub_75A2C0())
  {
    v60 = [v48 contentView];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    sub_75D650();
    v62 = v61;

    sub_765260();
    v64 = v63;
    sub_765260();
    v66 = v65;

    v42(v47, v79);
    v67 = &v48[qword_99D538];
    *v67 = v62;
    v67[1] = v62 * (v64 / v66);
  }

  else
  {
    v42(v47, v79);
  }
}

unint64_t sub_630058()
{
  result = qword_953960;
  if (!qword_953960)
  {
    sub_75A2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953960);
  }

  return result;
}

uint64_t sub_6300B8()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_630110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_630128@<X0>(uint64_t a2@<X8>)
{
  v23 = a2;
  v2 = sub_7664A0();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_940AD0, &unk_78F910);
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v11 = sub_766CA0();
  sub_BE38(v11, qword_99FE00);
  sub_766470();
  sub_766700();
  v13 = v12;
  v14 = *(v6 + 8);
  v14(v8, v5);
  v27 = v13;
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  sub_BE38(v11, qword_99FDE8);
  sub_766470();
  sub_766700();
  v16 = v15;
  v14(v8, v5);
  v24 = v16;
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_7592D0();
  if (qword_93D770 != -1)
  {
    swift_once();
  }

  v17 = sub_7666D0();
  v18 = sub_BE38(v17, qword_99EE48);
  (*(*(v17 - 8) + 16))(v4, v18, v17);
  (*(v21 + 104))(v4, enum case for FontSource.useCase(_:), v22);
  sub_759330();
  v28 = &type metadata for CGFloat;
  v29 = &protocol witness table for CGFloat;
  v26 = &protocol witness table for CGFloat;
  v27 = 0x403E000000000000;
  v25 = &type metadata for CGFloat;
  v24 = 0x4064000000000000;
  return sub_760EF0();
}

char *sub_630508(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_itemLayoutContext;
  v15 = sub_75C840();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsCalculator] = 0;
  v16 = &v4[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsUpdateBlock];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = sub_76A000();
  v18 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_bodyTextView] = sub_1A4998(v17, 0.0, 0.0, 0.0, 0.0);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_developerLinkView] = [objc_allocWithZone(type metadata accessor for DeveloperLinkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_tagRibbonView] = [objc_allocWithZone(type metadata accessor for TagFacetRibbonView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = type metadata accessor for ProductDescriptionCollectionViewCell(0);
  v43.receiver = v5;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v21 = [v20 contentView];
  v22 = sub_76A000();
  [v21 setBackgroundColor:v22];

  v23 = v20;
  v24 = [v23 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_bodyTextView;
  v29 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_bodyTextView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = v29;
  sub_768C10();
  sub_10A2C(&v39, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v41, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v31 = *(v11 + 8);
  v31(v13, v10);
  v32 = OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_developerLinkView;
  v33 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_developerLinkView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = v33;
  sub_768C10();
  sub_10A2C(&v39, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v41, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v31(v13, v10);
  v35 = [v23 contentView];
  [v35 addSubview:*&v23[v28]];

  v36 = [v23 contentView];
  [v36 addSubview:*&v23[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_tagRibbonView]];

  v37 = [v23 contentView];
  [v37 addSubview:*&v23[v32]];

  return v23;
}

uint64_t sub_630AA4()
{
  v1 = v0;
  v26 = sub_7664F0();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_760F00();
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_760F20();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductDescriptionCollectionViewCell(0);
  v38.receiver = v0;
  v38.super_class = v11;
  objc_msgSendSuper2(&v38, "layoutSubviews");
  v12 = [v0 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();

  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_tagRibbonView];
  type metadata accessor for RibbonBarItemCollectionViewCell(0);

  v14 = sub_769490();

  v15 = 0;
  if (v14)
  {
    v16 = v13;
    v15 = v13;
  }

  sub_630128(v7);
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_bodyTextView];
  v36 = type metadata accessor for ExpandableTextView();
  v37 = &protocol witness table for UIView;
  v35 = v17;
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for TagFacetRibbonView(0);
    v19 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v31 = 0;
    v32 = 0;
  }

  v30 = v15;
  v33 = v18;
  v34 = v19;
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_developerLinkView];
  v28 = type metadata accessor for DeveloperLinkView();
  v29 = &protocol witness table for UIView;
  v27 = v20;
  v21 = v17;
  v22 = v15;
  v23 = v20;
  sub_760F10();
  sub_760EE0();

  (*(v2 + 8))(v4, v26);
  return (*(v8 + 8))(v10, v25);
}

double sub_630E30(void *a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  if (a2)
  {
    v13 = a5 >= a4 ? a4 : a5;
    if (v13 != 0.0)
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v17 = a2;
      v18 = [a1 traitCollection];
      v19 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v20 = objc_allocWithZone(v19);
      v21 = &v20[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins];
      *v21 = UIEdgeInsetsZero.top;
      v21[1] = left;
      v21[2] = bottom;
      v21[3] = right;
      *&v20[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines] = a3;
      v22 = &v20[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize];
      *v22 = a4;
      v22[1] = a5;
      *&v20[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_traitCollection] = v18;
      *&v20[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_attributedText] = v17;
      v43.receiver = v20;
      v43.super_class = v19;
      v23 = objc_msgSendSuper2(&v43, "init");
      if (qword_93C5F0 != -1)
      {
        swift_once();
      }

      v24 = qword_9482F8;
      v25 = [qword_9482F8 objectForKey:v23];
      if (v25)
      {
        v26 = v25;

        a4 = *&v26[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
      }

      else
      {
        v27 = qword_93C5E8;
        v26 = v17;
        if (v27 != -1)
        {
          swift_once();
        }

        v28 = sub_7666D0();
        v29 = sub_BE38(v28, qword_9482E0);
        v30 = *(v28 - 8);
        (*(v30 + 16))(v12, v29, v28);
        (*(v30 + 56))(v12, 0, 1, v28);
        sub_766B00();
        sub_766B20();
        sub_766B10();
        v32 = v31;
        v34 = v33;
        v36 = v35;

        sub_10A2C(v12, &unk_93E530, &unk_77C5F0);
        v37 = type metadata accessor for ExpandableTextView.CacheValue();
        v38 = objc_allocWithZone(v37);
        v39 = &v38[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
        *v39 = a4;
        v39[1] = UIEdgeInsetsZero.top + bottom + v32;
        *(v39 + 2) = v34;
        *(v39 + 3) = v36;
        v42.receiver = v38;
        v42.super_class = v37;
        v40 = objc_msgSendSuper2(&v42, "init");
        [v24 setObject:v40 forKey:v23];
      }
    }
  }

  return a4;
}

void sub_6311D8(__n128 a1, double a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_75EE60();
  __chkstk_darwin(v11 - 8);
  v12 = sub_75EE70();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a7 traitCollection];
  sub_75A530();
  if ((sub_769490() & 1) == 0)
  {

    return;
  }

  v32 = a5;
  v18 = sub_769A20();
  v33 = _swiftEmptyArrayStorage;
  if (!(a4 >> 62))
  {
    v19 = *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8));
    v31 = v18;
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_18:
    v22 = _swiftEmptyArrayStorage;
LABEL_19:
    sub_1411E4(v22);

    sub_75EE50();
    sub_75EE20();
    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_77D9F0;
    v25 = v31;
    *(v24 + 32) = v31;
    v26 = v25;
    v27 = sub_7671E0();
    sub_75EE30();

    (*(v13 + 8))(v16, v12);
    return;
  }

  v23 = v18;
  v19 = sub_76A860();
  v31 = v23;
  if (!v19)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (v19 >= 1)
  {
    v28 = a6;
    v29 = v13;
    v30 = v12;
    if ((a4 & 0xC000000000000001) != 0)
    {
      v20 = 0;
      do
      {
        sub_76A770();
        sub_7670D0();
        swift_allocObject();
        swift_unknownObjectRetain();
        sub_767090();

        sub_769440();
        if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v33 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        ++v20;
        sub_769500();

        swift_unknownObjectRelease();
      }

      while (v19 != v20);
    }

    else
    {
      v21 = a4 + 32;
      sub_7670D0();
      do
      {
        swift_allocObject();
        swift_retain_n();
        sub_767090();

        sub_769440();
        if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v33 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();

        v21 += 8;
        --v19;
      }

      while (v19);
    }

    v22 = v33;
    v13 = v29;
    v12 = v30;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_631644(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    sub_75F4E0();
  }

  *(v1 + v2) = 0;

  v3 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_F704(v4, v5);
  type metadata accessor for TagFacetRibbonView(0);
  sub_358BAC(&qword_95F570, type metadata accessor for TagFacetRibbonView, &unk_7948A8);
  return sub_7633D0();
}

id sub_63174C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductDescriptionCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductDescriptionCollectionViewCell(uint64_t a1)
{
  result = qword_95F558;
  if (!qword_95F558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_631878(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_63193C()
{
  swift_beginAccess();

  return result;
}

double sub_631984(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_631A3C()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_631A98(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

uint64_t sub_631B58(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TagFacetRibbonView(0);
  sub_358BAC(&qword_95F570, type metadata accessor for TagFacetRibbonView, &unk_7948A8);
  return sub_7633E0();
}

void sub_631BE8(double a1, uint64_t a2, void *a3)
{
  v4 = sub_760F00();
  __chkstk_darwin(v4 - 8);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_760F20();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D940();
  v8 = sub_7658D0();

  v39 = a3;
  v9 = [a3 traitCollection];
  v10 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v8];
  v40 = [v8 length];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = v9;
  *(v11 + 32) = v10;
  *(v11 + 40) = 1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_119AC;
  *(v12 + 24) = v11;
  v50 = sub_2636C;
  v51 = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  v49 = &unk_89AE60;
  v13 = _Block_copy(aBlock);
  v14 = v9;
  v15 = v10;

  [v8 enumerateAttributesInRange:0 options:v40 usingBlock:{0x100000, v13}];

  _Block_release(v13);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v16 = v15;
    v17 = sub_75D930();
    v18 = sub_75D920();
    v19 = sub_75D910();
    if (sub_75D900())
    {
      v40 = sub_764C60();
      v21 = v20;
    }

    else
    {
      v40 = 0;
      v21 = 0;
    }

    type metadata accessor for ProductDescriptionCollectionViewCell(0);
    v22 = swift_allocObject();
    *(v22 + 16) = v16;
    *(v22 + 24) = 4;
    v23 = sub_7670D0();
    swift_allocObject();
    v24 = v16;
    v25 = sub_767090();
    v49 = v23;
    v50 = &protocol witness table for LayoutViewPlaceholder;
    aBlock[0] = v25;
    v26 = swift_allocObject();
    v26[2] = v17;
    v26[3] = v18;
    v26[4] = v19;
    v26[5] = v39;
    swift_allocObject();

    swift_unknownObjectRetain();
    v27 = sub_767090();
    v47[3] = v23;
    v47[4] = &protocol witness table for LayoutViewPlaceholder;
    v47[0] = v27;
    v28 = type metadata accessor for DeveloperLinkView();
    v29 = swift_allocObject();
    v30 = v40;
    v29[2] = v28;
    v29[3] = v30;
    v29[4] = v21;
    swift_allocObject();
    v31 = sub_767090();
    v46[3] = v23;
    v46[4] = &protocol witness table for LayoutViewPlaceholder;
    v46[0] = v31;
    sub_75A530();
    LOBYTE(v28) = sub_769490();

    if (v28)
    {
      sub_134D8(v47, v44);
    }

    else
    {
      v45 = 0;
      memset(v44, 0, sizeof(v44));
    }

    sub_630128(v35);
    sub_134D8(aBlock, &v43);
    sub_134D8(v47, &v42);
    sub_134D8(v46, &v41);
    v32 = v36;
    sub_760F10();
    sub_358BAC(&qword_952420, &type metadata accessor for ProductDescriptionLayout, &protocol conformance descriptor for ProductDescriptionLayout);
    v33 = v38;
    sub_7665A0();

    (*(v37 + 8))(v32, v33);
    sub_10A2C(v44, &unk_943B10, &qword_77E080);
    sub_BEB8(v46);
    sub_BEB8(v47);
    sub_BEB8(aBlock);
  }
}

uint64_t sub_6321B0()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_632208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_632220()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_632258()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_632298()
{

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_6322DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_style;
  v11 = sub_7652D0();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
  v12 = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer] = v12;
  v13 = [objc_allocWithZone(CAGradientLayer) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] = v13;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  [v14 setClipsToBounds:1];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer;
  [*&v14[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setMasksToBounds:1];
  LODWORD(v16) = 1053609165;
  [*&v14[v15] setOpacity:v16];
  v17 = *&v14[v15];
  CATransform3DMakeRotation(&v32, -0.523598776, 0.0, 0.0, 1.0);
  [v17 setTransform:&v32];

  v18 = [v14 layer];
  [v18 addSublayer:*&v14[v15]];

  v19 = OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_gradientLayer;
  v20 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_gradientLayer];
  sub_BD88(&qword_941C10, &qword_781230);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_77E280;
  sub_396E8();
  v22 = v20;
  isa = sub_76A120(0.0, 0.0, 0.0, 0.0).super.isa;
  v24 = [(objc_class *)isa CGColor];

  type metadata accessor for CGColor(0);
  v26 = v25;
  *(v21 + 56) = v25;
  *(v21 + 32) = v24;
  v27 = sub_76A120(0.47451, 0.47451, 0.47451, 0.5).super.isa;
  v28 = [(objc_class *)v27 CGColor];

  *(v21 + 88) = v26;
  *(v21 + 64) = v28;
  v29 = sub_769450().super.isa;

  [v22 setColors:v29];

  [*&v14[v19] setStartPoint:{0.5, 0.0}];
  [*&v14[v19] setEndPoint:{0.5, 1.0}];
  v30 = [v14 layer];

  [v30 addSublayer:*&v14[v19]];
  return v14;
}

id sub_632720()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_image];
  if (v2 && (v3 = [v2 CGImage]) != 0)
  {
    v6 = v3;
    type metadata accessor for CGImage(0);
    v4 = sub_76A930();
  }

  else
  {
    v4 = 0;
  }

  [v1 setContents:v4];
  swift_unknownObjectRelease();
  return [v0 setNeedsLayout];
}

id sub_6327D8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_BD88(&qword_94A330, qword_7AAD30);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_7652D0();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.receiver = v0;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, "layoutSubviews", v14);
  [v0 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] setFrame:?];
  if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_image])
  {
    return [*&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v25 = objc_opt_self();
  [v25 begin];
  v32 = v25;
  [v25 setDisableActions:1];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_style;
  swift_beginAccess();
  sub_632E8C(&v0[v26], v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_632EFC(v11);
    v27 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    [v27 setContinuousCorners:0];
    [v27 setCornerRadius:0.0];
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v27 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    sub_765270();
    (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
    v29 = sub_7593C0();
    v30 = *(v3 + 8);
    v30(v5, v2);
    v30(v8, v2);
    [v27 setContinuousCorners:v29 & 1];
    sub_7652A0();
    [v27 setCornerRadius:?];
    (*(v13 + 8))(v16, v12);
  }

  [v27 setBounds:{0.0, 0.0, 230.0, 230.0}];
  v34.origin.x = v18;
  v34.origin.y = v20;
  v34.size.width = v22;
  v34.size.height = v24;
  v31 = CGRectGetMaxX(v34) + -115.0 + 79.0;
  v35.origin.x = v18;
  v35.origin.y = v20;
  v35.size.width = v22;
  v35.size.height = v24;
  [v27 setPosition:{v31, CGRectGetMinY(v35) + 115.0 + 13.0}];
  return [v32 commit];
}

uint64_t type metadata accessor for BrandedAppTodayCardNoArtBackgroundView(uint64_t a1)
{
  result = qword_95F5B0;
  if (!qword_95F5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_632D8C(uint64_t a1)
{
  sub_632E34(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_632E34(uint64_t a1)
{
  if (!qword_95F5C0)
  {
    sub_7652D0();
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_95F5C0);
    }
  }
}

uint64_t sub_632E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94A330, qword_7AAD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_632EFC(uint64_t a1)
{
  v2 = sub_BD88(&qword_94A330, qword_7AAD30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_632F64(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_6360F0(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v8 = v7;
    v9 = sub_76A1C0();

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
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_6331F8()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppPromotionView(uint64_t a1)
{
  result = qword_95F610;
  if (!qword_95F610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_633398(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_6333FC;
}

void sub_6333FC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_216B98();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_216B98();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_633524()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_75D650();
  if (!CGRectIsEmpty(v17))
  {
    v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_availabilityLabelView];
    sub_75D650();
    v3 = v2;
    v5 = v4;
    sub_26DAA8(v15);
    sub_270D88(v0, v15, v3, v5);
    sub_37538(v15);
    sub_75D650();
    CGRectGetMinX(v18);
    sub_75D650();
    CGRectGetMinY(v19);
    sub_75D650();
    sub_769D20();
    [v1 setFrame:?];
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView];
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v9 = v0;
      v10 = sub_76A1C0();

      if (v10)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v20);
        sub_75D650();
        v12 = CGRectGetHeight(v21) - MaxY;
        sub_75D650();
        [v6 setBounds:{0.0, 0.0, CGRectGetWidth(v22), v12}];
        [v1 frame];
        v13 = CGRectGetMaxY(v23);
        sub_75D650();
        v14 = CGRectGetHeight(v24) - v13;
        [v9 bounds];
        [v6 setCenter:{CGRectGetWidth(v25) * 0.5, v13 + v14 * 0.5}];
      }
    }
  }
}

void sub_6338CC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = v61 - v5;
  v7 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v7 - 8);
  v9 = v61 - v8;
  v10 = sub_BD88(&unk_950960, &qword_793110);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v61 - v12;
  sub_BE70(0, &qword_94AB00, NSObject_ptr);
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer];
  if ((sub_76A1C0() & 1) == 0)
  {
    return;
  }

  v62 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView];
  v15 = [v62 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_BE70(0, &qword_93E550, UIView_ptr);
  v18 = v2;
  v61[1] = v17;
  LOBYTE(v17) = sub_76A1C0();

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
    v27 = sub_76A1C0();

    if ((v27 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = 0x3FF0000000000000;
    v68 = sub_636464;
    v69 = v29;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_23F0CC;
    v67 = &unk_89B008;
    v30 = _Block_copy(&aBlock);
    v31 = v26;

    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = v31;
    v68 = sub_63647C;
    v69 = v32;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_89B058;
LABEL_30:
    v66 = sub_3D6D80;
    v67 = v33;
    v59 = _Block_copy(&aBlock);
    v60 = v31;

    [v28 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v30 options:v59 animations:0.0 completion:1.0];
    _Block_release(v59);
    _Block_release(v30);
    return;
  }

  if (v19 == &dword_0 + 1)
  {
    v34 = v62;
    [a1 locationInView:v62];
    v35 = v18 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_initialLongPressLocation;
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
    v41 = sub_76A1C0();

    if ((v41 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = 0x3FEEB851EB851EB8;
    v68 = sub_636464;
    v69 = v42;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_23F0CC;
    v67 = &unk_89B0A8;
    v30 = _Block_copy(&aBlock);
    v31 = v40;

    v43 = swift_allocObject();
    *(v43 + 16) = 1;
    *(v43 + 24) = v31;
    v68 = sub_63647C;
    v69 = v43;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_89B0F8;
    goto LABEL_30;
  }

  if (v19 == &dword_0 + 2)
  {
    [a1 locationInView:v62];
    v46 = (v18 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_initialLongPressLocation + 16))
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

  if (v19 != &dword_0 + 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_1ED18(v18 + v20, v9, &qword_94EC40, &unk_793120);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_94EC40;
    v22 = &unk_793120;
    v23 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_75B470();
    v67 = ObjectType;
    aBlock = v18;
    v49 = v18;
    sub_764C00();

    sub_75B460();
    v50 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();

    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v6, 1, v50) != 1)
    {
      sub_75B470();
      v52 = sub_75B460();
      sub_32A6C0(aBlock, 1, v52, v6);

      (*(v11 + 8))(v13, v10);

      (*(v51 + 8))(v6, v50);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_93F980;
    v22 = &qword_77EDA0;
    v23 = v6;
  }

  sub_10A2C(v23, v21, v22);
LABEL_27:
  v53 = [v62 superview];
  if (v53)
  {
    v54 = v53;
    v55 = v18;
    v56 = sub_76A1C0();

    if (v56)
    {
      v28 = objc_opt_self();
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = 0x3FF0000000000000;
      v68 = sub_636170;
      v69 = v57;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_23F0CC;
      v67 = &unk_89AF68;
      v30 = _Block_copy(&aBlock);
      v31 = v55;

      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      *(v58 + 24) = v31;
      v68 = sub_636194;
      v69 = v58;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v33 = &unk_89AFB8;
      goto LABEL_30;
    }
  }
}

id sub_6342C4(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

BOOL sub_634324(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  sub_BE70(0, &qword_94AB00, NSObject_ptr);
  if ((sub_76A1C0() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView)];
  v11 = v10;
  v13 = v12;
  [*(v8 + v9) bounds];
  v25.x = v11;
  v25.y = v13;
  if (CGRectContainsPoint(v27, v25))
  {
    return 0;
  }

  [a2 locationInView:v2];
  v16 = v15;
  v18 = v17;
  v19 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v26.x = v16;
  v26.y = v18;
  if (CGRectContainsPoint(v28, v26))
  {
    if (v19)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();

      if (v20)
      {
        return 0;
      }
    }

    v21 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_clickAction;
    swift_beginAccess();
    sub_1ED18(&v3[v21], v7, &qword_94EC40, &unk_793120);
    v22 = sub_BD88(&unk_950960, &qword_793110);
    v23 = (*(*(v22 - 8) + 48))(v7, 1, v22) != 1;
    sub_10A2C(v7, &qword_94EC40, &unk_793120);
    return v23;
  }

  else
  {

    return 0;
  }
}

void sub_634604(uint64_t a1)
{
  sub_2F1CA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_6346D4(uint64_t **a1))()
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
  v2[4] = sub_633398(v2);
  return sub_21028;
}

double sub_634758(uint64_t a1)
{
  [*(*v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_availabilityLabelView) frame];
  CGRectGetMaxY(v3);
  sub_75D650();
  CGRectGetHeight(v4);
  sub_75D650();
  CGRectGetWidth(v5);
  return 0.0;
}

CGFloat sub_6347D0(uint64_t a1)
{
  v2 = *v1;
  [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_availabilityLabelView] frame];
  CGRectGetMaxY(v4);
  sub_75D650();
  CGRectGetHeight(v5);
  [v2 bounds];
  return CGRectGetWidth(v6) * 0.5;
}

uint64_t sub_63487C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_6360F0(&unk_95F630, type metadata accessor for AppPromotionView, &unk_7AAE28);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_6348F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_6360F0(&unk_95F630, type metadata accessor for AppPromotionView, &unk_7AAE28);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_63497C(uint64_t *a1))()
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
  sub_6360F0(&unk_95F630, type metadata accessor for AppPromotionView, &unk_7AAE28);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_634A38(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView);
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

double sub_634BBC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v25 = a2;
  v26 = sub_7671B0();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766C30();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766C50();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for StackMeasurable.Axis.vertical(_:), v8, v14);
  sub_BD88(&qword_941B30, &unk_781150);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_77E280;
  sub_134D8(a1, v33);
  v18 = sub_767170();
  *(v17 + 56) = v18;
  *(v17 + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_B1B4((v17 + 32));
  sub_767180();
  sub_134D8(a1 + 40, v33);
  *(v17 + 96) = v18;
  *(v17 + 104) = &protocol witness table for VerticalSpaceMeasurable;
  sub_B1B4((v17 + 72));
  sub_767180();
  sub_766C40();
  v33[3] = v12;
  v33[4] = &protocol witness table for StackMeasurable;
  v19 = sub_B1B4(v33);
  (*(v13 + 16))(v19, v16, v12);
  v20 = *(a1 + 136);
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  v30 = v20;
  v21 = *(a1 + 152);
  v28 = &type metadata for CGFloat;
  v29 = &protocol witness table for CGFloat;
  v27 = v21;
  sub_7671A0();
  sub_767190();
  v23 = v22;
  (*(v5 + 8))(v7, v26);
  (*(v13 + 8))(v16, v12);
  return v23;
}

double sub_634F2C(void *a1, void *a2, double a3, double a4)
{
  v111 = sub_76A920();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_766C30();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_766C50();
  v118 = *(v119 - 1);
  __chkstk_darwin(v119);
  v117 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_767170();
  v110 = *(v113 - 8);
  __chkstk_darwin(v113);
  v106 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v107 = &v98 - v11;
  v105 = sub_75D850();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v103 = (&v98 - v14);
  __chkstk_darwin(v15);
  v101 = &v98 - v16;
  __chkstk_darwin(v17);
  v19 = &v98 - v18;
  v20 = sub_75CF00();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v98 - v25;
  v27 = type metadata accessor for AppPromotionCardLayout(0);
  sub_1ED18(a2 + v27[18], &v123, &unk_943B10, &qword_77E080);
  v112 = v124;
  sub_10A2C(&v123, &unk_943B10, &qword_77E080);
  v120 = a1;
  v28 = [a1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  LOBYTE(a1) = sub_769B50();

  if (a1)
  {
    v30 = v27[13];
    v31 = v27[14];
    v32 = v27[16];
    v98 = v27[15];
    v106 = v32;
    LODWORD(v102) = *(a2 + v27[19]);
    if (qword_93C6C0 != -1)
    {
      swift_once();
    }

    v99 = (a2 + v30);
    v33 = (a2 + v31);
    v34 = sub_BE38(v20, qword_99B988);
    v103 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_766660();
    v36 = v35;
    v37 = [v120 traitCollection];
    (*(v21 + 16))(v26, v34, v20);
    v38 = sub_75CE70();
    v40 = v108;
    v100 = v33;
    if ((v41 & 1) == 0 && ((v38 | v39) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_769A00())
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v42 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v42 = qword_946938;
      }

      v52 = v105;
      v53 = sub_BE38(v105, v42);
      v54 = v104;
      v55 = v101;
      (*(v104 + 16))(v101, v53, v52);
      (*(v54 + 32))(v19, v55, v52);
      sub_75D800();
      sub_75D830();
      sub_75CE80();
      (*(v54 + 8))(v19, v52);
    }

    sub_75CDB0();
    v57 = v56;

    (*(v21 + 8))(v26, v20);
    *&v121 = _swiftEmptyArrayStorage;
    sub_BD88(&qword_941B30, &unk_781150);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    v124 = &type metadata for CGFloat;
    v125 = &protocol witness table for CGFloat;
    *&v123 = v36;
    v59 = v113;
    *(inited + 56) = v113;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_B1B4((inited + 32));
    sub_767180();
    sub_109F98(inited);
    v60 = v120;
    v61 = v111;
    if (v112)
    {
      v124 = &type metadata for CGFloat;
      v125 = &protocol witness table for CGFloat;
      *&v123 = ceil(v57 + 16.0 + 16.0);
      v62 = v107;
      sub_767180();
      v63 = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_7AADC(0, *(v63 + 16) + 1, 1, v63);
      }

      v65 = *(v63 + 16);
      v64 = *(v63 + 24);
      if (v65 >= v64 >> 1)
      {
        v63 = sub_7AADC((v64 > 1), v65 + 1, 1, v63);
      }

      v124 = v59;
      v125 = &protocol witness table for VerticalSpaceMeasurable;
      v66 = sub_B1B4(&v123);
      v67 = v110;
      (*(v110 + 16))(v66, v62, v59);
      *(v63 + 16) = v65 + 1;
      sub_10914(&v123, v63 + 40 * v65 + 32);
      (*(v67 + 8))(v62, v59);
      *&v121 = v63;
    }

    (*(v115 + 104))(v114, enum case for StackMeasurable.Axis.vertical(_:), v116);
    v68 = v117;
    sub_766C40();
    sub_766C20();
    v70 = v69;
    (*(v118 + 8))(v68, v119);
    v71 = a2[3];
    sub_B170(a2, v71);
    sub_33964(v71);
    sub_766700();
    v119 = *(v109 + 8);
    v119(v40, v61);
    sub_769DA0();
    sub_B170(v99, v99[3]);
    sub_7665A0();
    v73 = v72;
    v74 = v103;
    sub_B170((a2 + v103[6]), *(a2 + v103[6] + 24));
    sub_766720();
    *&v123 = v73;
    sub_7666F0();
    sub_B170(v100, v100[3]);
    sub_7665A0();
    v76 = v75;
    sub_B170((a2 + v74[7]), *(a2 + v74[7] + 24));
    sub_766720();
    *&v123 = v76;
    sub_7666F0();
    if (v102)
    {
      sub_B170((a2 + v98), *(a2 + v98 + 24));
      v77 = [v60 traitCollection];
      sub_7673F0();

      sub_B170((a2 + v74[8]), *(a2 + v74[8] + 24));
      v78 = [v60 traitCollection];
      sub_766710();

      v79 = (a2 + v74[9]);
      v80 = v79[3];
      sub_B170(v79, v80);
      sub_33964(v80);
      sub_766700();
      v119(v40, v111);
    }

    sub_1ED18(&v106[a2], &v121, &unk_943B10, &qword_77E080);
    if (v122)
    {
      sub_10914(&v121, &v123);
      sub_B170(&v123, v124);
      if ((sub_766540() & 1) == 0)
      {
        sub_B170(&v123, v124);
        sub_7665A0();
      }

      sub_BEB8(&v123);
    }

    else
    {
      sub_10A2C(&v121, &unk_943B10, &qword_77E080);
    }
  }

  else
  {
    if (qword_93C6B8 != -1)
    {
      swift_once();
    }

    v43 = sub_BE38(v20, qword_99B970);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_766660();
    v45 = v44;
    v46 = [v120 traitCollection];
    (*(v21 + 16))(v23, v43, v20);
    v47 = sub_75CE70();
    v49 = v113;
    if ((v50 & 1) == 0 && ((v47 | v48) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_769A00())
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v51 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v51 = qword_946938;
      }

      v81 = v105;
      v82 = sub_BE38(v105, v51);
      v83 = v104;
      v84 = v102;
      (*(v104 + 16))(v102, v82, v81);
      v85 = v103;
      (*(v83 + 32))(v103, v84, v81);
      sub_75D800();
      sub_75D830();
      sub_75CE80();
      (*(v83 + 8))(v85, v81);
    }

    sub_75CDB0();
    v87 = v86;

    (*(v21 + 8))(v23, v20);
    *&v121 = _swiftEmptyArrayStorage;
    sub_BD88(&qword_941B30, &unk_781150);
    v88 = swift_initStackObject();
    *(v88 + 16) = xmmword_77B6D0;
    v124 = &type metadata for CGFloat;
    v125 = &protocol witness table for CGFloat;
    *&v123 = v45;
    *(v88 + 56) = v49;
    *(v88 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_B1B4((v88 + 32));
    sub_767180();
    sub_109F98(v88);
    if (v112)
    {
      v124 = &type metadata for CGFloat;
      v125 = &protocol witness table for CGFloat;
      *&v123 = ceil(v87 + 4.0 + 4.0);
      v89 = v106;
      sub_767180();
      v90 = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = sub_7AADC(0, *(v90 + 16) + 1, 1, v90);
      }

      v92 = *(v90 + 16);
      v91 = *(v90 + 24);
      if (v92 >= v91 >> 1)
      {
        v90 = sub_7AADC((v91 > 1), v92 + 1, 1, v90);
      }

      v124 = v49;
      v125 = &protocol witness table for VerticalSpaceMeasurable;
      v93 = sub_B1B4(&v123);
      v94 = v110;
      (*(v110 + 16))(v93, v89, v49);
      *(v90 + 16) = v92 + 1;
      sub_10914(&v123, v90 + 40 * v92 + 32);
      (*(v94 + 8))(v89, v49);
      *&v121 = v90;
    }

    (*(v115 + 104))(v114, enum case for StackMeasurable.Axis.vertical(_:), v116);
    v95 = v117;
    sub_766C40();
    sub_766C20();
    v70 = v96;
    (*(v118 + 8))(v95, v119);
  }

  return v70;
}

uint64_t sub_6360F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_636138()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_63617C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_636198()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_6361D0()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

char *sub_6361FC()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_clickAction;
  v3 = sub_BD88(&unk_950960, &qword_793110);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_availabilityLabelView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView] = [objc_allocWithZone(type metadata accessor for AppPromotionCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer] = v5;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  [v10 addSubview:*&v10[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_availabilityLabelView]];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_appPromotionCardView]];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC18ASMessagesProvider16AppPromotionView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v12] setMinimumPressDuration:0.1];
  [*&v10[v12] setDelegate:v10];
  [*&v10[v11] addGestureRecognizer:*&v10[v12]];

  return v10;
}

id sub_636480()
{
  v1 = sub_75B270();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v18[-v6];
  v8 = sub_75B220();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 104))(v12, enum case for BreakoutDetails.TextAlignment.center(_:), v8, v10);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  (*(v9 + 40))(v0 + v13, v12, v8);
  swift_endAccess();
  (*(v2 + 104))(v7, enum case for BreakoutDetails.Badge.none(_:), v1);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v14, v1);
  swift_beginAccess();
  (*(v2 + 24))(v0 + v14, v7, v1);
  swift_endAccess();
  sub_63979C(v4, v15);
  v16 = *(v2 + 8);
  v16(v4, v1);
  v16(v7, v1);
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel) setText:0];
  return [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton) setTitle:0 forState:0];
}

uint64_t sub_636764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v5 = sub_BD88(&qword_94CB98, &unk_790590);
  __chkstk_darwin(v5 - 8);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_BD88(&qword_944EA0, &unk_78A060);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_BD88(&unk_95CF90, &unk_784980);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  sub_1ED18(a1, v12, &qword_944EA0, &unk_78A060);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10A2C(v12, &qword_944EA0, &unk_78A060);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    v20 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
    swift_beginAccess();
    (*(v14 + 24))(v3 + v20, v16, v13);
    swift_endAccess();
    sub_6385E0();
    v21 = *(v14 + 8);
    v21(v16, v13);
    v21(v19, v13);
  }

  v22 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v23 = sub_75B220();
  (*(*(v23 - 8) + 24))(v3 + v22, v32, v23);
  swift_endAccess();
  v24 = sub_75B240();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v9, v33, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  v26 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v27 = v34;
  sub_1ED18(v3 + v26, v34, &qword_94CB98, &unk_790590);
  swift_beginAccess();
  sub_63D2B4(v9, v3 + v26);
  swift_endAccess();
  sub_63B538(v27, v28);
  sub_10A2C(v27, &qword_94CB98, &unk_790590);
  sub_10A2C(v9, &qword_94CB98, &unk_790590);
  sub_6385E0();
  return sub_63A390(v29);
}

uint64_t sub_636B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v7 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v7 - 8);
  v76 = &v62 - v8;
  v9 = sub_7666D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v70 = &v62 - v13;
  __chkstk_darwin(v14);
  v69 = &v62 - v15;
  v16 = sub_75F0F0();
  v79 = *(v16 - 8);
  v80 = v16;
  __chkstk_darwin(v16);
  v77 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v78 = &v62 - v19;
  v20 = sub_7664A0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for BreakoutDetailsView.Config(0);
  v84 = v9;
  v85 = v24;
  v25 = *(a1 + *(v24 + 92));
  v72 = v10;
  v26 = v24;
  v27 = *(v24 + 40);
  if (v25)
  {
    v28 = *(v10 + 16);
    v83 = v10 + 16;
    v74 = v28;
    v28(v23, a1 + v27, v9);
    LODWORD(v73) = enum case for FontSource.useCase(_:);
    v68 = v21[13];
    v66 = v20;
    v68(v23);
    v67 = sub_761250();
    v100 = v67;
    v75 = sub_63D8C0(&qword_95F820, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
    v101 = v75;
    sub_B1B4(v99);
    v82 = v21 + 13;
    v65 = v25;
    sub_761240();
    v29 = v74;
    v74(v23, a1 + v26[13], v84);
    v30 = v26;
    v31 = v73;
    v32 = v68;
    (v68)(v23, v73, v20);
    v33 = v67;
    v97 = v67;
    v98 = v75;
    sub_B1B4(v96);
    v34 = v65;
    sub_761240();
    v29(v23, a1 + v30[9], v84);
    v35 = v66;
    v32(v23, v31, v66);
    v36 = v75;
    v94 = v33;
    v95 = v75;
    sub_B1B4(v93);
    v37 = v34;
    v38 = v84;
    sub_761240();
    v74(v23, a1 + v30[14], v38);
    v32(v23, v73, v35);
    v91 = v33;
    v92 = v36;
    sub_B1B4(v90);
    sub_761240();
  }

  else
  {
    v83 = a1;
    v39 = *(v10 + 16);
    v74 = (v10 + 16);
    v67 = v39;
    v39(v23, a1 + v27, v9);
    LODWORD(v75) = enum case for FontSource.useCase(_:);
    v40 = v21[13];
    v65 = v21 + 13;
    v41 = v20;
    v40(v23);
    v64 = sub_766CA0();
    v100 = v64;
    v101 = &protocol witness table for StaticDimension;
    sub_B1B4(v99);
    v97 = v20;
    v98 = &protocol witness table for FontSource;
    v42 = sub_B1B4(v96);
    v43 = v21[2];
    v73 = v21 + 2;
    v43(v42, v23, v41);
    v62 = v43;
    sub_766CB0();
    v44 = v21[1];
    v82 = v21 + 1;
    v68 = v44;
    (v44)(v23, v41);
    v45 = v67;
    v67(v23, v83 + v26[13], v84);
    v63 = v40;
    (v40)(v23, v75, v41);
    v46 = v64;
    v97 = v64;
    v98 = &protocol witness table for StaticDimension;
    sub_B1B4(v96);
    v94 = v41;
    v95 = &protocol witness table for FontSource;
    v47 = sub_B1B4(v93);
    v43(v47, v23, v41);
    sub_766CB0();
    (v68)(v23, v41);
    v45(v23, v83 + v26[9], v84);
    (v40)(v23, v75, v41);
    v94 = v46;
    v95 = &protocol witness table for StaticDimension;
    sub_B1B4(v93);
    v91 = v41;
    v92 = &protocol witness table for FontSource;
    v48 = sub_B1B4(v90);
    v49 = v62;
    v62(v48, v23, v41);
    sub_766CB0();
    v50 = v68;
    (v68)(v23, v41);
    v67(v23, v83 + v26[14], v84);
    a1 = v83;
    (v63)(v23, v75, v41);
    v91 = v64;
    v92 = &protocol witness table for StaticDimension;
    sub_B1B4(v90);
    v89[3] = v41;
    v89[4] = &protocol witness table for FontSource;
    v51 = sub_B1B4(v89);
    v49(v51, v23, v41);
    sub_766CB0();
    v50(v23, v41);
    v38 = v84;
  }

  v52 = v76;
  if ((*(a1 + v85[11] + 8) & 1) == 0)
  {
    sub_1ED18(a1 + v85[12], v76, &unk_93E530, &unk_77C5F0);
    v53 = v72;
    if ((*(v72 + 48))(v52, 1, v38) != 1)
    {
      v56 = v69;
      (*(v53 + 32))(v69, v52, v38);
      v57 = *(v53 + 16);
      v57(v70, a1 + v85[10], v38);
      v57(v71, v56, v38);
      v55 = v78;
      sub_75F0E0();
      (*(v53 + 8))(v56, v38);
      v54 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.lineCountCompression(_:);
      goto LABEL_9;
    }

    sub_10A2C(v52, &unk_93E530, &unk_77C5F0);
  }

  v54 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.standard(_:);
  v55 = v78;
LABEL_9:
  v59 = v79;
  v58 = v80;
  (*(v79 + 104))(v55, *v54, v80);
  sub_134D8(v99, v89);
  (*(v59 + 16))(v77, v55, v58);
  sub_134D8(v96, &v88);
  sub_134D8(v93, &v87);
  v60 = *(a1 + v85[15]);
  v86[8] = &type metadata for CGFloat;
  v86[9] = &protocol witness table for CGFloat;
  v86[5] = v60;
  sub_134D8(v90, v86);
  sub_75F0D0();
  (*(v59 + 8))(v55, v58);
  sub_BEB8(v90);
  sub_BEB8(v93);
  sub_BEB8(v96);
  return sub_BEB8(v99);
}

uint64_t sub_637660(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_BD88(&qword_95F7F8, &qword_7AAF08);
  sub_161DC(v5, a2);
  sub_BE38(v5, a2);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for ContentHorizontalAlignment(0);
  return sub_7592C0();
}

char *sub_637704(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v122 = sub_75D5E0();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_768C60();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v102 - v7;
  v9 = sub_760AD0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v124 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v131 = &v102 - v13;
  v14 = sub_7666D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badge;
  v19 = enum case for BreakoutDetails.Badge.none(_:);
  v20 = sub_75B270();
  (*(*(v20 - 8) + 104))(&v2[v18], v19, v20);
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark] = 0;
  v21 = &v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailTextAlignment;
  v23 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v24 = sub_75B220();
  (*(*(v24 - 8) + 104))(&v2[v22], v23, v24);
  v25 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  v26 = sub_75B240();
  (*(*(v26 - 8) + 56))(&v2[v25], 1, 1, v26);
  v27 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
  v28 = sub_BD88(&unk_95CF90, &unk_784980);
  v118 = *(v28 - 8);
  v29 = *(v118 + 16);
  v125 = v2;
  v123 = a1;
  v119 = v28;
  v29(&v2[v27], a1);
  if (qword_93DAE8 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v14, qword_99F8B0);
  v31 = *(v15 + 16);
  v32 = v17;
  v130 = v17;
  v31(v17, v30, v14);
  v128 = v31;
  v33 = v14;
  v34 = enum case for DirectionalTextAlignment.none(_:);
  v35 = v10;
  v126 = v15;
  v127 = v10;
  v36 = *(v10 + 104);
  (v36)(v131, enum case for DirectionalTextAlignment.none(_:), v9);
  v108 = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  v110 = objc_allocWithZone(v108);
  *&v110[qword_94B338] = 0;
  v31(v8, v32, v33);
  v37 = *(v15 + 56);
  v37(v8, 0, 1, v33);
  v38 = v124;
  v113 = v34;
  v39 = v34;
  v40 = v33;
  v112 = v35 + 104;
  v111 = v36;
  (v36)(v124, v39, v9);
  v41 = v38;
  v42 = sub_75BB10();
  v43 = v130;
  v129 = v15 + 16;
  v128(v8, v130, v40);
  v110 = (v15 + 56);
  v109 = v37;
  v37(v8, 0, 1, v40);
  v44 = v42;
  v103 = v8;
  sub_75BA40();
  v45 = v43;
  sub_75BA20();
  [v44 setNumberOfLines:2];
  v46 = v127;
  v47 = *(v127 + 16);
  v48 = v131;
  v107 = v127 + 16;
  v106 = v47;
  v47(v41, v131, v9);
  sub_75BA90();

  v49 = *(v46 + 8);
  v127 = v46 + 8;
  v105 = v49;
  v49(v48, v9);
  v50 = *(v126 + 8);
  v126 += 8;
  v104 = v50;
  v50(v45, v40);
  *&v125[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel] = v44;
  if (qword_93DB08 != -1)
  {
    swift_once();
  }

  v51 = sub_BE38(v40, qword_99F910);
  v52 = v128;
  v128(v45, v51, v40);
  v53 = v113;
  v54 = v111;
  (v111)(v131, v113, v9);
  v55 = objc_allocWithZone(v108);
  *&v55[qword_94B338] = 0;
  v56 = v103;
  v52(v103, v130, v40);
  v57 = v109;
  v109(v56, 0, 1, v40);
  v58 = v9;
  v59 = v124;
  v60 = v53;
  v61 = v58;
  v54(v124, v60);
  v62 = sub_75BB10();
  v52(v56, v130, v40);
  v63 = v130;
  v57(v56, 0, 1, v40);
  v64 = v62;
  sub_75BA40();
  sub_75BA20();
  [v64 setNumberOfLines:2];
  v65 = v131;
  v106(v59, v131, v61);
  sub_75BA90();

  v105(v65, v61);
  v104(v63, v40);
  v66 = v125;
  *&v125[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel] = v64;
  v67 = [objc_opt_self() effectWithStyle:17];
  v68 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v67];

  *&v66[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView] = v68;
  type metadata accessor for CappedSizeDynamicTypeButton(0);
  if (qword_93DB10 != -1)
  {
    swift_once();
  }

  v69 = sub_BE38(v40, qword_99F928);
  v128(v63, v69, v40);
  *&v66[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton] = sub_75C550();
  v136.receiver = v66;
  v136.super_class = ObjectType;
  v70 = objc_msgSendSuper2(&v136, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v70 setUserInteractionEnabled:0];
  [v70 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v70 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_6385E0();
  v74 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel;
  v75 = *&v70[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v76 = v75;
  v77 = v115;
  sub_768C10();
  sub_10A2C(&v132, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v134, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v78 = *(v116 + 8);
  v79 = v117;
  v78(v77, v117);
  v80 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel;
  v81 = *&v70[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v82 = v81;
  sub_768C10();
  sub_10A2C(&v132, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v134, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v78(v77, v79);
  v83 = *&v70[v74];
  sub_75BAD0();

  v84 = *&v70[v80];
  sub_75BAD0();

  [*&v70[v74] setLineBreakMode:0];
  [*&v70[v80] setLineBreakMode:0];
  v85 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton;
  [*&v70[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton] _setWantsAccessibilityUnderline:0];
  v86 = *&v70[v85];
  v87 = objc_opt_self();
  v88 = v86;
  v89 = [v87 whiteColor];
  [v88 setTitleColor:v89 forState:0];

  v90 = *&v70[v85];
  v91 = [v87 whiteColor];
  [v90 setTitleColor:v91 forState:1];

  v92 = *&v70[v85];
  v93 = [v87 whiteColor];
  [v92 setTintColor:v93];

  v94 = *&v70[v85];
  (*(v121 + 104))(v120, enum case for ImageAlignedButton.ImageAlignment.trailing(_:), v122);
  v95 = v94;
  sub_75D5F0();

  v96 = *&v70[v85];
  sub_75D620();

  v97 = [*&v70[v85] titleLabel];
  [v97 setLineBreakMode:0];

  [*&v70[v85] addTarget:v70 action:"didTapActionButton" forControlEvents:64];
  v98 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView;
  v99 = *&v70[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView];
  v100 = sub_769210();
  [v99 _setGroupName:v100];

  [*&v70[v98] _setContinuousCornerRadius:20.0];
  [*&v70[v98] setClipsToBounds:1];
  [*&v70[v98] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*&v70[v98] setEdgesInsettingLayoutMarginsFromSafeArea:0];

  (*(v118 + 8))(v123, v119);
  return v70;
}

uint64_t sub_6385E0()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v2 - 8);
  v107 = &v102 - v3;
  v4 = sub_75B240();
  v108 = *(v4 - 8);
  __chkstk_darwin(v4);
  v105 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v103 = &v102 - v7;
  __chkstk_darwin(v8);
  v104 = &v102 - v9;
  __chkstk_darwin(v10);
  v109 = &v102 - v11;
  __chkstk_darwin(v12);
  v14 = &v102 - v13;
  v15 = sub_BD88(&unk_95CF90, &unk_784980);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v102 - v17;
  v19 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v19);
  v21 = (&v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v16 + 16))(v18, v1 + v22, v15);
  v111 = v1;
  sub_7592B0();
  (*(v16 + 8))(v18, v15);
  v23 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark);
  v24 = &selRef_setTextAlignment_;
  if (v23)
  {
    v25 = *v21;
    if (*v21)
    {
      v26 = v23;
      v27 = v25;
    }

    else
    {
      v28 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v29 = v108;
      if ((*(v108 + 48))(v1 + v28, 1, v4))
      {
        v26 = v23;
        v27 = 0;
      }

      else
      {
        (*(v29 + 16))(v14, v1 + v28, v4);
        v26 = v23;
        v27 = sub_655F9C(v30);
        (*(v29 + 8))(v14, v4);
      }
    }

    v31 = v25;
    [v26 setTintColor:v27];
  }

  v32 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel;
  v33 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel);
  if (v33)
  {
    v34 = *v21;
    if (*v21)
    {
      v35 = v33;
      v36 = v34;
    }

    else
    {
      v37 = v14;
      v38 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v39 = v108;
      if ((*(v108 + 48))(v1 + v38, 1, v4))
      {
        v35 = v33;
        v36 = 0;
        v14 = v37;
      }

      else
      {
        (*(v39 + 16))(v37, v1 + v38, v4);
        v35 = v33;
        v36 = sub_655F9C(v40);
        v41 = v39;
        v14 = v37;
        (*(v41 + 8))(v37, v4);
      }

      v24 = &selRef_setTextAlignment_;
    }

    v42 = v34;
    [v35 setTextColor:v36];
  }

  v110 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel);
  v43 = v21[1];
  isa = v43;
  v106 = v32;
  if (!v43)
  {
    v45 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v108 + 48))(v1 + v45, 1, v4))
    {
      v102 = v14;
      v46 = v108;
      v47 = *(v108 + 16);
      v48 = v1 + v45;
      v49 = v109;
      v47(v109, v48, v4);
      v50 = v104;
      v47(v104, v49, v4);
      v51 = (*(v46 + 88))(v50, v4);
      v52 = (v46 + 8);
      if (v51 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v53 = v51, v51 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        isa = [objc_opt_self() whiteColor];
        (*v52)(v109, v4);
      }

      else
      {
        v54 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_396E8();
        isa = sub_76A120(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v55 = *v52;
        (*v52)(v109, v4);
        if (v53 != v54)
        {
          v55(v104, v4);
        }
      }

      v32 = v106;
      v14 = v102;
      v24 = &selRef_setTextAlignment_;
    }
  }

  v56 = v43;
  [v110 setTextColor:isa];

  v109 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel);
  v57 = v21[2];
  v58 = v57;
  if (!v57)
  {
    v59 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v108 + 48))(v1 + v59, 1, v4))
    {
      v60 = v14;
      v61 = v108;
      v62.n128_f64[0] = (*(v108 + 16))(v60, v1 + v59, v4);
      v58 = sub_655B6C(v62);
      v63 = v60;
      v24 = &selRef_setTextAlignment_;
      (*(v61 + 8))(v63, v4);
    }
  }

  v64 = v57;
  [v109 setTextColor:v58];

  v65 = v21[3];
  v66 = v65;
  if (!v65)
  {
    v67 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v108 + 48))(v1 + v67, 1, v4))
    {
      v68 = v108;
      v69 = *(v108 + 16);
      v70 = v1 + v67;
      v71 = v103;
      v69(v103, v70, v4);
      v72 = v105;
      v69(v105, v71, v4);
      v73 = (*(v68 + 88))(v72, v4);
      v74 = (v68 + 8);
      if (v73 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v75 = v73, v73 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        v66 = [objc_opt_self() whiteColor];
        (*v74)(v71, v4);
      }

      else
      {
        LODWORD(v108) = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_396E8();
        v76 = v71;
        v66 = sub_76A120(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v77 = *v74;
        (*v74)(v76, v4);
        if (v75 != v108)
        {
          v77(v105, v4);
        }
      }

      v32 = v106;
      v24 = &selRef_setTextAlignment_;
    }
  }

  v78 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton);
  v79 = v65;
  [v78 setTitleColor:v66 forState:0];
  [v78 setTitleColor:v66 forState:1];
  v80 = v24[3];
  v105 = v66;
  [v78 v80];
  v108 = v1;
  v81 = *(v1 + v32);
  v82 = v19;
  if (v81)
  {
    v83 = *(v19 + 36);
    v84 = sub_7666D0();
    v85 = *(v84 - 8);
    v86 = v107;
    (*(v85 + 16))(v107, v21 + v83, v84);
    (*(v85 + 56))(v86, 0, 1, v84);
    v19 = v82;
    v87 = v81;
    sub_75BA40();
  }

  v88 = *(v19 + 40);
  v89 = sub_7666D0();
  v90 = *(v89 - 8);
  v91 = *(v90 + 16);
  v92 = v107;
  v91(v107, v21 + v88, v89);
  v93 = *(v90 + 56);
  v93(v92, 0, 1, v89);
  sub_75BA40();
  v91(v92, v21 + v82[13], v89);
  v93(v92, 0, 1, v89);
  sub_75BA40();
  v91(v92, v21 + v82[14], v89);
  v93(v92, 0, 1, v89);
  sub_75C540();
  v94 = *(v108 + v106);
  if (v94)
  {
    v95 = *(v21 + v82[23]);
    v96 = v95;
    v97 = v94;
    sub_24C3DC(v95);
  }

  v98 = *(v21 + v82[23]);
  v99 = v98;
  sub_24C3DC(v98);
  sub_24C3DC(v98);
  sub_13D584(v98);

  return sub_FCDC4(v21, v100);
}

double sub_639218(__n128 a1)
{
  v2 = v1;
  v3 = sub_75B240();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_95F7F0, &qword_7AAF00);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v9 = sub_BD88(&qword_94CB98, &unk_790590);
  __chkstk_darwin(v9 - 8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_BD88(&unk_95CF90, &unk_784980);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  v35 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v35);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
  swift_beginAccess();
  v21 = v2 + v20;
  v22 = v19;
  v23 = v34;
  (*(v15 + 16))(v17, v21, v14);
  v36 = v2;
  sub_7592B0();
  (*(v15 + 8))(v17, v14);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  (*(v23 + 104))(v13, enum case for BreakoutDetails.BackgroundStyle.material(_:), v3);
  (*(v23 + 56))(v13, 0, 1, v3);
  v25 = *(v6 + 56);
  sub_1ED18(v2 + v24, v8, &qword_94CB98, &unk_790590);
  sub_1ED18(v13, &v8[v25], &qword_94CB98, &unk_790590);
  v26 = *(v23 + 48);
  if (v26(v8, 1, v3) != 1)
  {
    v28 = v33;
    sub_1ED18(v8, v33, &qword_94CB98, &unk_790590);
    if (v26(&v8[v25], 1, v3) != 1)
    {
      v30 = v32;
      (*(v23 + 32))(v32, &v8[v25], v3);
      sub_63D8C0(&unk_95F800, &type metadata accessor for BreakoutDetails.BackgroundStyle, &protocol conformance descriptor for BreakoutDetails.BackgroundStyle);
      sub_7691C0();
      v31 = *(v23 + 8);
      v31(v30, v3);
      sub_10A2C(v13, &qword_94CB98, &unk_790590);
      v31(v28, v3);
      sub_10A2C(v8, &qword_94CB98, &unk_790590);
      goto LABEL_7;
    }

    sub_10A2C(v13, &qword_94CB98, &unk_790590);
    (*(v23 + 8))(v28, v3);
    goto LABEL_6;
  }

  sub_10A2C(v13, &qword_94CB98, &unk_790590);
  if (v26(&v8[v25], 1, v3) != 1)
  {
LABEL_6:
    sub_10A2C(v8, &qword_95F7F0, &qword_7AAF00);
    goto LABEL_7;
  }

  sub_10A2C(v8, &qword_94CB98, &unk_790590);
LABEL_7:
  sub_FCDC4(v22, v27);
  return 0.0;
}

id sub_63979C(uint64_t a1, __n128 a2)
{
  v94 = sub_75A010();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v95 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_BD88(&unk_95CF90, &unk_784980);
  v91 = *(v92 - 1);
  __chkstk_darwin(v92);
  v89 = &v88 - v4;
  v5 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v5 - 8);
  v88 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_95F810, &unk_780110);
  __chkstk_darwin(v7 - 8);
  v90 = &v88 - v8;
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v96 = &v88 - v10;
  v99 = sub_760AD0();
  v103 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v102 = &v88 - v13;
  v98 = sub_7666D0();
  v101 = *(v98 - 8);
  __chkstk_darwin(v98);
  v100 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_75B270();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v21 = &v88 - v20;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badge;
  swift_beginAccess();
  v23 = *(v16 + 16);
  v24 = v2;
  v23(v21, &v2[v22], v15);
  sub_63D8C0(&qword_95F818, &type metadata accessor for BreakoutDetails.Badge, &protocol conformance descriptor for BreakoutDetails.Badge);
  v25 = sub_7691C0();
  v26 = v21;
  v27 = *(v16 + 8);
  result = v27(v26, v15);
  if ((v25 & 1) == 0)
  {
    v23(v18, &v24[v22], v15);
    v29 = (*(v16 + 88))(v18, v15);
    v30 = v24;
    if (v29 == enum case for BreakoutDetails.Badge.text(_:))
    {
      v95 = v24;
      (*(v16 + 96))(v18, v15);
      v31 = v18[1];
      v93 = *v18;
      v94 = v31;
      if (qword_93DAE0 != -1)
      {
        swift_once();
      }

      v32 = v98;
      v33 = sub_BE38(v98, qword_99F898);
      v34 = v100;
      v35 = v101;
      v36 = *(v101 + 16);
      v36(v100, v33, v32);
      v37 = v36;
      v92 = v36;
      v38 = enum case for DirectionalTextAlignment.none(_:);
      v91 = *(v103 + 104);
      v39 = v99;
      (v91)(v102, enum case for DirectionalTextAlignment.none(_:), v99);
      v40 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
      *&v40[qword_94B338] = 0;
      v41 = v96;
      v37(v96, v34, v32);
      v42 = *(v35 + 56);
      v42(v41, 0, 1, v32);
      v43 = v97;
      (v91)(v97, v38, v39);
      v44 = sub_75BB10();
      v45 = v100;
      v92(v41, v100, v32);
      v42(v41, 0, 1, v32);
      v46 = v44;
      sub_75BA40();
      sub_75BA20();
      [v46 setNumberOfLines:1];
      v48 = v102;
      v47 = v103;
      (*(v103 + 16))(v43, v102, v39);
      sub_75BA90();
      (*(v47 + 8))(v48, v39);
      (*(v101 + 8))(v45, v32);
      sub_75BAD0();
      v49 = sub_769210();

      [v46 setText:v49];

      v50 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel;
      v30 = v95;
      v51 = *&v95[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
      v52 = v46;
      if (v51)
      {
        [v51 removeFromSuperview];
        v53 = *&v30[v50];
      }

      else
      {
        v53 = 0;
      }

      *&v30[v50] = v46;
      v76 = v46;

      sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel);
      v77 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark;
      v78 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
      if (v78)
      {
        [v78 removeFromSuperview];
        v79 = *&v30[v77];
      }

      else
      {
        v79 = 0;
      }

      *&v30[v77] = 0;

      sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark);
    }

    else if (v29 == enum case for BreakoutDetails.Badge.wordmark(_:))
    {
      v54 = enum case for Wordmark.arcade(_:);
      v55 = sub_765770();
      v56 = *(v55 - 8);
      v57 = v90;
      (*(v56 + 104))(v90, v54, v55);
      (*(v56 + 56))(v57, 0, 1, v55);
      v58 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
      swift_beginAccess();
      v59 = v91;
      v60 = &v30[v58];
      v61 = v89;
      v62 = v92;
      (*(v91 + 16))(v89, v60, v92);
      v104 = v30;
      v63 = v88;
      sub_7592B0();
      v64.n128_f64[0] = (*(v59 + 8))(v61, v62);
      v65 = *(v63 + 32);
      sub_FCDC4(v63, v64);
      (*(v93 + 104))(v95, enum case for WordmarkView.Alignment.center(_:), v94);
      v105 = &type metadata for CGFloat;
      v106 = &protocol witness table for CGFloat;
      v104 = v65;
      v66 = objc_allocWithZone(sub_75A030());
      v67 = sub_75A000();
      v68 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel;
      v69 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
      if (v69)
      {
        [v69 removeFromSuperview];
        v70 = *&v30[v68];
      }

      else
      {
        v70 = 0;
      }

      *&v30[v68] = 0;

      sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel);
      v83 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark;
      v84 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
      v85 = v67;
      if (v84)
      {
        [v84 removeFromSuperview];
        v84 = *&v30[v83];
      }

      *&v30[v83] = v67;
      v86 = v67;

      sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark);
    }

    else
    {
      v71 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel;
      v72 = *&v24[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
      if (v29 == enum case for BreakoutDetails.Badge.none(_:))
      {
        if (v72)
        {
          [*&v24[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v72 = *&v24[v71];
        }

        *&v24[v71] = 0;

        sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel);
        v73 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark;
        v74 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
        if (v74)
        {
          [v74 removeFromSuperview];
          v75 = *&v30[v73];
        }

        else
        {
          v75 = 0;
        }

        *&v30[v73] = 0;

        sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark);
      }

      else
      {
        if (v72)
        {
          [*&v24[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v72 = *&v24[v71];
        }

        *&v24[v71] = 0;

        sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel);
        v80 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark;
        v81 = *&v24[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
        if (v81)
        {
          [v81 removeFromSuperview];
          v82 = *&v24[v80];
        }

        else
        {
          v82 = 0;
        }

        *&v24[v80] = 0;

        sub_63B2F0(&OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark);
        v27(v18, v15);
      }
    }

    sub_6385E0();
    sub_63A390(v87);
    return [v30 setNeedsLayout];
  }

  return result;
}

uint64_t sub_63A390(__n128 a1)
{
  v2 = v1;
  v3 = sub_75B240();
  v106 = *(v3 - 8);
  __chkstk_darwin(v3);
  v99 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_BD88(&qword_95F7F0, &qword_7AAF00);
  __chkstk_darwin(v105);
  v6 = &v98 - v5;
  v7 = sub_BD88(&qword_94CB98, &unk_790590);
  __chkstk_darwin(v7 - 8);
  v100 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v98 - v10;
  v102 = sub_75A010();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v103 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_75B220();
  v114 = *(v112 - 8);
  __chkstk_darwin(v112);
  v108 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v98 - v15;
  __chkstk_darwin(v17);
  v113 = &v98 - v18;
  v19 = sub_BD88(&unk_95CF90, &unk_784980);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v98 - v21;
  v110 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v110);
  v24 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v20 + 16))(v22, &v2[v25], v19);
  v117 = v2;
  sub_7592B0();
  (*(v20 + 8))(v22, v19);
  v26 = [v2 traitCollection];
  LOBYTE(v19) = sub_769A00();

  v109 = v24;
  if ((v19 & 1) != 0 && v24[*(v110 + 96)] == 1)
  {
    v27 = v112;
    (*(v114 + 104))(v113, enum case for BreakoutDetails.TextAlignment.leading(_:), v112);
  }

  else
  {
    v28 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailTextAlignment;
    swift_beginAccess();
    v27 = v112;
    (*(v114 + 16))(v113, &v2[v28], v112);
  }

  v29 = sub_75B210();
  v30 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel;
  v31 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
  if (v31)
  {
    [v31 setTextAlignment:v29];
  }

  v107 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel];
  [v107 setTextAlignment:v29];
  v111 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel];
  [v111 setTextAlignment:v29];
  v104 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark;
  v32 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
  if (v32)
  {
    v33 = v114;
    (*(v114 + 16))(v16, v113, v27);
    v34 = (*(v33 + 88))(v16, v27);
    if (v34 == enum case for BreakoutDetails.TextAlignment.leading(_:))
    {
      (*(v101 + 104))(v103, enum case for WordmarkView.Alignment.leading(_:), v102);
    }

    else if (v34 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
    {
      (*(v101 + 104))(v103, enum case for WordmarkView.Alignment.trailing(_:), v102);
    }

    else
    {
      v35 = *(v101 + 104);
      if (v34 != enum case for BreakoutDetails.TextAlignment.center(_:))
      {
        v35(v103, enum case for WordmarkView.Alignment.leading(_:), v102);
        v97 = *(v114 + 8);
        v36 = v32;
        v97(v16, v27);
        goto LABEL_15;
      }

      v35(v103, enum case for WordmarkView.Alignment.center(_:), v102);
    }

    v36 = v32;
LABEL_15:
    sub_75A020();
  }

  v37 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v38 = v106;
  (*(v106 + 104))(v11, enum case for BreakoutDetails.BackgroundStyle.material(_:), v3);
  (*(v38 + 56))(v11, 0, 1, v3);
  v39 = *(v105 + 48);
  sub_1ED18(&v2[v37], v6, &qword_94CB98, &unk_790590);
  sub_1ED18(v11, &v6[v39], &qword_94CB98, &unk_790590);
  v40 = *(v38 + 48);
  v41 = &selRef_absoluteDimension_;
  if (v40(v6, 1, v3) == 1)
  {
    sub_10A2C(v11, &qword_94CB98, &unk_790590);
    v42 = &selRef_setTextAlignment_;
    if (v40(&v6[v39], 1, v3) == 1)
    {
      sub_10A2C(v6, &qword_94CB98, &unk_790590);
      v43 = v108;
      v44 = v110;
LABEL_28:
      v56 = *&v2[v104];
      if (v56)
      {
        v57 = [v56 v41[1]];
        [v57 setCompositingFilter:kCAFilterPlusL];
      }

      v58 = *&v2[v30];
      if (v58)
      {
        v59 = [v58 v41[1]];
        v60 = kCAFilterPlusL;
        [v59 setCompositingFilter:kCAFilterPlusL];
      }

      else
      {
        v60 = kCAFilterPlusL;
      }

      v61 = [v111 v41[1]];
      [v61 setCompositingFilter:v60];

      v62 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView] contentView];
      v50 = [v62 v41[1]];

      [v50 setAllowsGroupBlending:0];
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  v45 = v100;
  sub_1ED18(v6, v100, &qword_94CB98, &unk_790590);
  if (v40(&v6[v39], 1, v3) == 1)
  {
    sub_10A2C(v11, &qword_94CB98, &unk_790590);
    (*(v38 + 8))(v45, v3);
    v42 = &selRef_setTextAlignment_;
    v41 = &selRef_absoluteDimension_;
LABEL_21:
    sub_10A2C(v6, &qword_95F7F0, &qword_7AAF00);
    v43 = v108;
    v44 = v110;
    goto LABEL_22;
  }

  v51 = v99;
  (*(v38 + 32))(v99, &v6[v39], v3);
  sub_63D8C0(&unk_95F800, &type metadata accessor for BreakoutDetails.BackgroundStyle, &protocol conformance descriptor for BreakoutDetails.BackgroundStyle);
  LODWORD(v105) = sub_7691C0();
  v52 = v30;
  v53 = v45;
  v54 = *(v38 + 8);
  v54(v51, v3);
  sub_10A2C(v11, &qword_94CB98, &unk_790590);
  v55 = v53;
  v30 = v52;
  v54(v55, v3);
  sub_10A2C(v6, &qword_94CB98, &unk_790590);
  v43 = v108;
  v42 = &selRef_setTextAlignment_;
  v44 = v110;
  v41 = &selRef_absoluteDimension_;
  if (v105)
  {
    goto LABEL_28;
  }

LABEL_22:
  v46 = *&v2[v104];
  if (v46)
  {
    v47 = [v46 v41[1]];
    [v47 setCompositingFilter:0];
  }

  v48 = *&v2[v30];
  if (v48)
  {
    v49 = [v48 v41[1]];
    [v49 setCompositingFilter:0];
  }

  v50 = [v111 v41[1]];
  [v50 setCompositingFilter:0];
LABEL_34:

  v63 = v109;
  v64 = &v109[*(v44 + 84)];
  v65 = v112;
  if (v64[8])
  {
    v66 = [v2 v42[23]];
    v67 = sub_7699D0();

    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    [v107 setNumberOfLines:v68];
  }

  else
  {
    [v107 setNumberOfLines:*v64];
  }

  v69 = v63 + *(v44 + 88);
  if (*(v69 + 8))
  {
    v70 = [v2 v42[23]];
    v71 = sub_7699D0();

    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    [v111 setNumberOfLines:v72];
  }

  else
  {
    [v111 setNumberOfLines:*v69];
  }

  v73 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v74 = v114;
  (*(v114 + 16))(v43, &v2[v73], v65);
  v75 = (*(v74 + 88))(v43, v65);
  if (v75 == enum case for BreakoutDetails.TextAlignment.leading(_:))
  {
    if (qword_93DF90 != -1)
    {
      swift_once();
    }

    v76 = sub_BD88(&qword_95F7F8, &qword_7AAF08);
    v77 = qword_95F640;
LABEL_54:
    sub_BE38(v76, v77);
    v115 = v2;
    v78 = v2;
    sub_7592B0();

    v79 = v116;
    goto LABEL_55;
  }

  if (v75 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
  {
    if (qword_93DF98 != -1)
    {
      swift_once();
    }

    v76 = sub_BD88(&qword_95F7F8, &qword_7AAF08);
    v77 = qword_95F658;
    goto LABEL_54;
  }

  if (v75 == enum case for BreakoutDetails.TextAlignment.center(_:))
  {
    v79 = 0;
  }

  else
  {
    if (qword_93DF90 != -1)
    {
      swift_once();
    }

    v94 = sub_BD88(&qword_95F7F8, &qword_7AAF08);
    sub_BE38(v94, qword_95F640);
    v115 = v2;
    v95 = v2;
    sub_7592B0();

    v96 = v116;
    (*(v114 + 8))(v43, v65);
    v79 = v96;
  }

LABEL_55:
  v80 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton];
  [v80 setContentHorizontalAlignment:v79];
  v81 = [v80 titleLabel];
  if (!v81)
  {
    goto LABEL_63;
  }

  v82 = v81;
  v83 = sub_76A140();
  v85 = v84;

  v86 = HIBYTE(v85) & 0xF;
  if ((v85 & 0x2000000000000000) == 0)
  {
    v86 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (v86)
  {
    v87 = [v2 v42[23]];
    v88 = sub_7699F0();

    if (v88)
    {
      v89 = 0.0;
    }

    else
    {
      v89 = 2.0;
    }

    [v80 setImageEdgeInsets:{0.0, v89}];
    v90 = sub_56E958(0x74756F6B61657242, 0xEF6E6F7276656843, 0);
    [v80 setImage:v90 forState:0];
  }

  else
  {
LABEL_63:
    [v80 setImageEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [v80 setImage:0 forState:0];
  }

  sub_63C32C(v91);
  v92.n128_f64[0] = (*(v114 + 8))(v113, v65);
  return sub_FCDC4(v63, v92);
}

id sub_63B2F0(void *a1)
{
  v3 = sub_BD88(&qword_94CB98, &unk_790590);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v21 - v8;
  v10 = *&v1[*a1];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    sub_1ED18(&v1[v11], v9, &qword_94CB98, &unk_790590);
    v12 = sub_75B240();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      v14 = v10;
    }

    else
    {
      sub_1ED18(v9, v5, &qword_94CB98, &unk_790590);
      if ((*(v13 + 88))(v5, v12) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView];
        v16 = v10;
        v17 = [v15 contentView];
        [v17 addSubview:v16];

LABEL_8:
        sub_10A2C(v9, &qword_94CB98, &unk_790590);
        return [v1 setNeedsLayout];
      }

      v18 = *(v13 + 8);
      v19 = v10;
      v18(v5, v12);
    }

    [v1 addSubview:v10];
    goto LABEL_8;
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_63B538(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_75B240();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_94CB98, &unk_790590);
  __chkstk_darwin(v8 - 8);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v40 - v11;
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_BD88(&qword_95F7F0, &qword_7AAF00);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v20 = *(v16 + 56);
  v43 = v19;
  sub_1ED18(&v3[v19], v18, &qword_94CB98, &unk_790590);
  sub_1ED18(a1, &v18[v20], &qword_94CB98, &unk_790590);
  v21 = v6;
  v22 = *(v6 + 48);
  if (v22(v18, 1, v5) == 1)
  {
    if (v22(&v18[v20], 1, v5) == 1)
    {
      return sub_10A2C(v18, &qword_94CB98, &unk_790590);
    }

    goto LABEL_6;
  }

  sub_1ED18(v18, v14, &qword_94CB98, &unk_790590);
  if (v22(&v18[v20], 1, v5) == 1)
  {
    (*(v6 + 8))(v14, v5);
LABEL_6:
    sub_10A2C(v18, &qword_95F7F0, &qword_7AAF00);
    goto LABEL_7;
  }

  v31 = v41;
  (*(v6 + 32))(v41, &v18[v20], v5);
  sub_63D8C0(&unk_95F800, &type metadata accessor for BreakoutDetails.BackgroundStyle, &protocol conformance descriptor for BreakoutDetails.BackgroundStyle);
  LODWORD(v40) = sub_7691C0();
  v32 = *(v6 + 8);
  v32(v31, v5);
  v32(v14, v5);
  result = sub_10A2C(v18, &qword_94CB98, &unk_790590);
  if ((v40 & 1) == 0)
  {
LABEL_7:
    v40 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView];
    [v40 removeFromSuperview];
    v23 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark;
    v24 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
    if (v24)
    {
      [v24 removeFromSuperview];
    }

    v25 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel;
    v26 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
    if (v26)
    {
      [v26 removeFromSuperview];
    }

    v27 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel];
    [v27 removeFromSuperview];
    v28 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel];
    [v28 removeFromSuperview];
    v41 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton];
    [v41 removeFromSuperview];
    v18 = v44;
    sub_1ED18(&v3[v43], v44, &qword_94CB98, &unk_790590);
    if (v22(v18, 1, v5) != 1)
    {
      v29 = v42;
      sub_1ED18(v18, v42, &qword_94CB98, &unk_790590);
      if ((*(v21 + 88))(v29, v5) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v30 = v40;
        [v3 addSubview:v40];
        if (*&v3[v23])
        {
          [v3 addSubview:?];
        }

        else
        {
          v34 = *&v3[v25];
          if (v34)
          {
            v35 = v34;
            v36 = [v30 contentView];
            [v36 addSubview:v35];
          }
        }

        v37 = [v30 contentView];
        [v37 addSubview:v27];

        v38 = [v30 contentView];
        [v38 addSubview:v28];

        v39 = [v30 contentView];
        [v39 addSubview:v41];

        return sub_10A2C(v18, &qword_94CB98, &unk_790590);
      }

      (*(v21 + 8))(v29, v5);
    }

    if (*&v3[v23] || *&v3[v25])
    {
      [v3 addSubview:?];
    }

    [v3 addSubview:v27];
    [v3 addSubview:v28];
    [v3 addSubview:v41];
    return sub_10A2C(v18, &qword_94CB98, &unk_790590);
  }

  return result;
}

uint64_t sub_63BC4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v55 = sub_7664F0();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_94CB98, &unk_790590);
  __chkstk_darwin(v4 - 8);
  v6 = v52 - v5;
  v7 = sub_BD88(&unk_95CF90, &unk_784980);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v52 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11 - 8);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75F100();
  __chkstk_darwin(v14 - 8);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[0] = sub_75F120();
  v17 = *(v52[0] - 8);
  *&v18 = __chkstk_darwin(v52[0]).n128_u64[0];
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.receiver = v1;
  v60.super_class = ObjectType;
  v52[1] = ObjectType;
  objc_msgSendSuper2(&v60, "layoutSubviews", v18);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v8 + 16))(v10, &v1[v21], v7);
  v57 = v1;
  v22 = v1;
  sub_7592B0();
  (*(v8 + 8))(v10, v7);

  sub_639218(v23);
  sub_636B98(v13, v16);
  sub_FCDC4(v13, v24);
  v25 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel];
  v26 = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  v58 = v26;
  v59 = &protocol witness table for UILabel;
  v56[19] = &protocol witness table for UILabel;
  v57 = v25;
  v27 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel];
  v56[18] = v26;
  v56[15] = v27;
  v28 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
  if (v28)
  {
    v29 = &protocol witness table for UILabel;
    v30 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v30 = 0;
    v26 = 0;
    v29 = 0;
    v56[12] = 0;
    v56[11] = 0;
  }

  v56[10] = v30;
  v56[13] = v26;
  v56[14] = v29;
  v31 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
  if (v31)
  {
    v32 = sub_75A030();
    v33 = &protocol witness table for UIView;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v56[7] = 0;
    v56[6] = 0;
  }

  v56[5] = v31;
  v56[8] = v32;
  v56[9] = v33;
  v34 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton];
  v35 = v28;
  v36 = v31;
  v37 = v25;
  v38 = v27;
  v39 = [v34 titleForState:0];
  if (v39)
  {

    v40 = type metadata accessor for CappedSizeDynamicTypeButton(0);
    v39 = v34;
    v41 = &protocol witness table for UIView;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v56[2] = 0;
    v56[1] = 0;
  }

  v56[0] = v39;
  v56[3] = v40;
  v56[4] = v41;
  sub_75F110();
  v42 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_1ED18(&v22[v42], v6, &qword_94CB98, &unk_790590);
  v43 = sub_75B240();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v6, 1, v43) == 1)
  {
    sub_10A2C(v6, &qword_94CB98, &unk_790590);
LABEL_14:
    sub_75D650();
    v49 = v53;
    goto LABEL_15;
  }

  v45 = (*(v44 + 88))(v6, v43);
  v46 = enum case for BreakoutDetails.BackgroundStyle.material(_:);
  (*(v44 + 8))(v6, v43);
  if (v45 != v46)
  {
    goto LABEL_14;
  }

  v47 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_backgroundMaterialView];
  sub_75D650();
  [v47 setFrame:?];
  v48 = [v47 contentView];
  [v48 bounds];

  v49 = v53;
LABEL_15:
  sub_75F0B0();
  v50.n128_f64[0] = (*(v54 + 8))(v49, v55);
  sub_63C32C(v50);
  return (*(v17 + 8))(v20, v52[0]);
}

void sub_63C32C(__n128 a1)
{
  v2 = v1;
  v3 = sub_756CB0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel);
  v9 = [v8 font];
  if (!v9)
  {
    goto LABEL_41;
  }

  v10 = v9;
  v11 = [v8 text];
  if (v11)
  {
    v12 = v11;
    v13 = sub_769240();
    v15 = v14;

    v48 = v13;
    v49 = v15;

    sub_756C90();
    sub_12EC40();
    sub_76A4C0();
    LOBYTE(v12) = v16;
    (*(v4 + 8))(v7, v3);

    if (v12)
    {

      v17 = 0;
    }

    else
    {
      [v10 lineHeight];
      v19 = v18;

      v20 = ceil(v19 * 1.3);
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v20 <= -9.22337204e18)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v20 >= 9.22337204e18)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v17 = v20;
    }
  }

  else
  {

    v17 = 0;
  }

  sub_205E70(v17);
  v21 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel);
  v22 = [v21 font];
  if (!v22)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v23 = v22;
  v24 = [v21 text];
  if (!v24)
  {

    v30 = 0;
    goto LABEL_19;
  }

  v25 = v24;
  v26 = sub_769240();
  v28 = v27;

  v48 = v26;
  v49 = v28;

  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  LOBYTE(v25) = v29;
  (*(v4 + 8))(v7, v3);

  if (v25)
  {

    v30 = 0;
    goto LABEL_19;
  }

  [v23 lineHeight];
  v32 = v31;

  v33 = ceil(v32 * 1.3);
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v30 = v33;
LABEL_19:
  sub_205E70(v30);
  v34 = [*(v2 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton) titleLabel];
  if (!v34)
  {
    return;
  }

  v35 = v34;
  v36 = [v34 font];
  if (!v36)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v37 = v36;
  v38 = [v35 text];
  if (!v38)
  {

    goto LABEL_25;
  }

  v39 = v38;
  v40 = sub_769240();
  v42 = v41;

  v48 = v40;
  v49 = v42;

  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  LOBYTE(v39) = v43;
  (*(v4 + 8))(v7, v3);

  if ((v39 & 1) == 0)
  {
    [v37 lineHeight];
    v46 = v45;

    v47 = ceil(v46 * 1.3);
    if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v47 > -9.22337204e18)
      {
        if (v47 < 9.22337204e18)
        {
          v44 = v47;
          goto LABEL_30;
        }

        goto LABEL_40;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_25:
  v44 = 0;
LABEL_30:
  sub_205E70(v44);
}

void sub_63CBF8(uint64_t a1)
{
  sub_75B270();
  if (v1 <= 0x3F)
  {
    sub_63CD7C(319);
    if (v2 <= 0x3F)
    {
      sub_75B220();
      if (v3 <= 0x3F)
      {
        sub_63D260(319, &unk_95F6E0, &type metadata accessor for BreakoutDetails.BackgroundStyle);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_63CD7C(uint64_t a1)
{
  if (!qword_95F6D0)
  {
    sub_133D8(&qword_93FBE0, &unk_77EA70);
    type metadata accessor for BreakoutDetailsView.Config(255);
    v1 = sub_7593A0();
    if (!v2)
    {
      atomic_store(v1, &qword_95F6D0);
    }
  }
}

uint64_t sub_63CE24(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_7666D0();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_BD88(&unk_93E530, &unk_77C5F0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_63CF74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_7666D0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_BD88(&unk_93E530, &unk_77C5F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_63D0A4(uint64_t a1)
{
  sub_63D260(319, qword_947E90, sub_396E8);
  if (v1 <= 0x3F)
  {
    sub_7666D0();
    if (v2 <= 0x3F)
    {
      sub_63D210();
      if (v3 <= 0x3F)
      {
        sub_63D260(319, &qword_95F760, &type metadata accessor for FontUseCase);
        if (v4 <= 0x3F)
        {
          sub_63D260(319, &unk_95F768, type metadata accessor for UIContentSizeCategory);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_63D210()
{
  if (!qword_95F758)
  {
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_95F758);
    }
  }
}

void sub_63D260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_63D2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94CB98, &unk_790590);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_63D324(uint64_t a1, char *a2, double a3, double a4)
{
  v50 = a1;
  v5 = sub_BD88(&qword_94CB98, &unk_790590);
  __chkstk_darwin(v5 - 8);
  v7 = &v48 - v6;
  v8 = sub_BD88(&unk_95CF90, &unk_784980);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_75F100();
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_75F120();
  v18 = *(v49 - 8);
  __chkstk_darwin(v49);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v9 + 16))(v11, &a2[v21], v8);
  v52 = a2;
  v22 = a2;
  sub_7592B0();
  (*(v9 + 8))(v11, v8);

  sub_639218(v23);
  sub_636B98(v14, v17);
  sub_FCDC4(v14, v24);
  v25 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel];
  v26 = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  v53 = v26;
  v54 = &protocol witness table for UILabel;
  v51[19] = &protocol witness table for UILabel;
  v52 = v25;
  v27 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel];
  v51[18] = v26;
  v51[15] = v27;
  v28 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
  if (v28)
  {
    v29 = &protocol witness table for UILabel;
    v30 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v30 = 0;
    v26 = 0;
    v29 = 0;
    v51[11] = 0;
    v51[12] = 0;
  }

  v51[10] = v30;
  v51[13] = v26;
  v51[14] = v29;
  v31 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark];
  if (v31)
  {
    v32 = sub_75A030();
    v33 = &protocol witness table for UIView;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v51[7] = 0;
    v51[6] = 0;
  }

  v51[5] = v31;
  v51[8] = v32;
  v51[9] = v33;
  v34 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton];
  v35 = v28;
  v36 = v31;
  v37 = v25;
  v38 = v27;
  v39 = [v34 titleForState:0];
  if (v39)
  {

    v40 = type metadata accessor for CappedSizeDynamicTypeButton(0);
    v39 = v34;
    v41 = &protocol witness table for UIView;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v51[2] = 0;
    v51[1] = 0;
  }

  v51[0] = v39;
  v51[3] = v40;
  v51[4] = v41;
  sub_75F110();
  sub_75F0A0();
  v43 = v42;
  (*(v18 + 8))(v20, v49);
  v44 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_1ED18(&v22[v44], v7, &qword_94CB98, &unk_790590);
  v45 = sub_75B240();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v7, 1, v45) == 1)
  {
    sub_10A2C(v7, &qword_94CB98, &unk_790590);
  }

  else
  {
    (*(v46 + 88))(v7, v45);
    (*(v46 + 8))(v7, v45);
  }

  return v43;
}

uint64_t sub_63D8C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_63D908()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badge;
  v2 = enum case for BreakoutDetails.Badge.none(_:);
  v3 = sub_75B270();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badgeWordmark) = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailTextAlignment;
  v6 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v7 = sub_75B220();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_detailBackgroundStyle;
  v9 = sub_75B240();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_76A840();
  __break(1u);
}

uint64_t sub_63DA7C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = sub_6648BC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v13 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_45D130();
    v8 = v13;
  }

  v9 = *(v8 + 48);
  v10 = sub_75B1D0();
  (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
  v11 = *(*(v8 + 56) + 16 * v6);
  sub_458E58(v6, v8);
  *v3 = v8;
  return v11;
}

double sub_63DB58@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

void *sub_63DB64(uint64_t a1)
{
  v47 = sub_7580D0();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_764CF0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10EB0C(_swiftEmptyArrayStorage);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v12 = *(v1 + 48);
  v45 = *(v1 + 56);
  v46 = v12;
  ObjectType = swift_getObjectType();
  v15 = *(v7 + 16);
  v14 = v7 + 16;
  v43 = v15;
  v44 = ObjectType;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v37 = *(v14 + 56);
  v38 = v14;
  v39 = (v14 - 8);
  v40 = (v3 + 8);
  v41 = v9;
  v42 = v6;
  while (1)
  {
    v48 = v11;
    v43(v9, v16, v6);
    sub_758330();
    swift_getObjectType();
    sub_758220();
    swift_unknownObjectRelease();
    v17 = sub_764CA0();
    v19 = v18;
    v20 = v5;
    v21 = sub_758080();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v10;
    v24 = sub_3DF2F8(v17, v19);
    v25 = v10[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v10[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v20;
        if (v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_45BFA0();
        v5 = v20;
        if (v28)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_4561D0(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_3DF2F8(v17, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_19;
      }

      v24 = v29;
      v5 = v20;
      if (v28)
      {
LABEL_3:

        v10 = v49;
        *(v49[7] + v24) = v21 & 1;
        (*v40)(v5, v47);
        v9 = v41;
        v6 = v42;
        (*v39)(v41, v42);
        goto LABEL_4;
      }
    }

    v10 = v49;
    v49[(v24 >> 6) + 8] |= 1 << v24;
    v31 = (v10[6] + 16 * v24);
    *v31 = v17;
    v31[1] = v19;
    *(v10[7] + v24) = v21 & 1;
    (*v40)(v5, v47);
    v9 = v41;
    v6 = v42;
    (*v39)(v41, v42);
    v32 = v10[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_18;
    }

    v10[2] = v34;
LABEL_4:
    v16 += v37;
    v11 = v48 - 1;
    if (v48 == 1)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_76A9B0();
  __break(1u);
  return result;
}

uint64_t sub_63DF14(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v127 = a6;
  v126 = a5;
  v125 = a4;
  v138 = a3;
  v131 = a2;
  v155 = a1;
  v150 = *v6;
  v121 = sub_768380();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_7683C0();
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_7683E0();
  v130 = *(v129 - 8);
  __chkstk_darwin(v129);
  v115 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v128 = &v114 - v11;
  v12 = sub_BD88(&qword_95F8F0, &qword_7AAFE8);
  __chkstk_darwin(v12 - 8);
  v135 = &v114 - v13;
  v147 = sub_766130();
  v141 = *(v147 - 8);
  __chkstk_darwin(v147);
  v139 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_75B1D0();
  v152 = *(v148 - 8);
  __chkstk_darwin(v148);
  v133 = v15;
  v140 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&qword_95B950, &qword_7A6148);
  __chkstk_darwin(v16 - 8);
  v123 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v136 = &v114 - v19;
  v20 = sub_BD88(&qword_95B958, &qword_7AAFE0);
  __chkstk_darwin(v20 - 8);
  v122 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v132 = &v114 - v23;
  v24 = sub_768FF0();
  v154 = *(v24 - 8);
  __chkstk_darwin(v24);
  v124 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v151 = &v114 - v27;
  v28 = sub_BD88(&qword_95F8F8, &qword_7AAFF0);
  __chkstk_darwin(v28 - 8);
  v149 = (&v114 - v29);
  v30 = sub_7623E0();
  v156 = *(v30 - 8);
  v157 = v30;
  __chkstk_darwin(v30);
  v137 = &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v145 = &v114 - v33;
  __chkstk_darwin(v34);
  v134 = &v114 - v35;
  if (qword_93DF10 != -1)
  {
    swift_once();
  }

  v153 = sub_BE38(v24, qword_9A0460);
  v36 = sub_BD88(&qword_93FD00, &unk_77DF10);
  v37 = *(sub_7685F0() - 8);
  v38 = *(v37 + 72);
  v39 = *(v37 + 80);
  v144 = 4 * v38;
  v142 = v36;
  *(swift_allocObject() + 16) = xmmword_782440;
  sub_7685D0();
  sub_768540();
  v158 = v6;
  sub_768540();
  v143 = 3 * v38;
  v40 = v155;
  v41 = sub_75B1C0();
  *(&v161 + 1) = &type metadata for String;
  *&aBlock = v41;
  *(&aBlock + 1) = v42;
  v43 = v153;
  sub_7685C0();
  sub_10A2C(&aBlock, &unk_93FBD0, &qword_77DFA0);
  sub_768E80();

  v44 = v149;
  sub_5877E4(v40, v149);
  v46 = v156;
  v45 = v157;
  v47 = (*(v156 + 6))(v44, 1, v157);
  v146 = v24;
  if (v47 == 1)
  {
    v132 = v39;
    v134 = ((v39 + 32) & ~v39);
    v136 = (2 * v38);
    v114 = v38;
    sub_10A2C(v44, &qword_95F8F8, &qword_7AAFF0);
    v48 = sub_BD88(&qword_95F900, &qword_7AAFF8);
    v49 = sub_768F90();
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = v152;
    v52 = v140;
    v53 = v40;
    v54 = v148;
    v149 = *(v152 + 16);
    v150 = v152 + 16;
    (v149)(v140, v53, v148);
    v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v133 += v55;
    v56 = swift_allocObject();
    *(v56 + 16) = v50;
    *(v56 + 24) = v49;
    v57 = *(v51 + 32);
    v152 = v51 + 32;
    v57(v56 + v55, v52, v54);
    v151 = v49;

    v58 = v135;
    sub_7141FC(v135);
    v59 = v141;
    v60 = v147;
    if ((*(v141 + 48))(v58, 1, v147) == 1)
    {
      v152 = v48;
      sub_10A2C(v58, &qword_95F8F0, &qword_7AAFE8);
      v61 = sub_75AD30();
      (*(*(v61 - 8) + 56))(v122, 1, 1, v61);
      v62 = enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
      v63 = sub_761560();
      v64 = *(v63 - 8);
      v65 = v123;
      (*(v64 + 104))(v123, v62, v63);
      (*(v64 + 56))(v65, 0, 1, v63);
      sub_7623C0();
      v66 = v124;
      v67 = v146;
      (*(v154 + 16))(v124, v153, v146);
      *(swift_allocObject() + 16) = xmmword_780120;
      sub_7685D0();
      sub_768540();
      sub_768540();
      v68 = v148;
      *(&v161 + 1) = v148;
      v69 = sub_B1B4(&aBlock);
      (v149)(v69, v155, v68);
      sub_7685C0();
      sub_10A2C(&aBlock, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      if (v138)
      {
        v70 = 0;
        v71 = 0;
        *(&aBlock + 1) = 0;
        *&v161 = 0;
      }

      else
      {
        v71 = &type metadata for Double;
        v70 = v131;
      }

      *&aBlock = v70;
      *(&v161 + 1) = v71;
      sub_7685C0();
      sub_10A2C(&aBlock, &unk_93FBD0, &qword_77DFA0);
      sub_768EA0();

      (*(v154 + 8))(v66, v67);
      v110 = v156;
      v109 = v157;
      v111 = v137;
      (*(v156 + 2))(v145, v137, v157);
      v112 = sub_768F30();

      (*(v110 + 1))(v111, v109);
      return v112;
    }

    else
    {
      v157 = v57;
      (*(v59 + 32))(v139, v58, v60);
      v79 = v158;
      v80 = sub_766140();
      v81 = v59;
      if ((v138 & 1) == 0)
      {
        v154 = v79[2];
        v82 = v115;
        sub_7683D0();
        sub_768450();
        v83 = *(v130 + 8);
        v130 += 8;
        v156 = v83;
        v83(v82, v129);
        v84 = swift_allocObject();
        v153 = v84;
        swift_weakInit();
        v85 = v140;
        v86 = v148;
        (v149)(v140, v155, v148);
        v87 = (v133 + 7) & 0xFFFFFFFFFFFFFFF8;
        v88 = swift_allocObject();
        *(v88 + 16) = v151;
        *(v88 + 24) = v84;
        v157(v88 + v55, v85, v86);
        *(v88 + v87) = v80;
        *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v131;
        v162 = sub_6425BC;
        v163 = v88;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v161 = sub_23F0CC;
        *(&v161 + 1) = &unk_89B1E8;
        v89 = _Block_copy(&aBlock);

        v90 = v116;
        sub_7683A0();
        v159 = _swiftEmptyArrayStorage;
        sub_642568(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_BD88(&qword_940350, &unk_77F850);
        sub_4C874();
        v91 = v118;
        v92 = v121;
        sub_76A5A0();
        v93 = v128;
        sub_769930();
        _Block_release(v89);
        (*(v120 + 8))(v91, v92);
        (*(v117 + 8))(v90, v119);
        v156(v93, v129);
        v81 = v141;
      }

      v94 = v151;

      sub_BD88(&qword_95F8E8, &qword_7AAFD8);
      sub_764050();

      v95 = aBlock;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v95;
      sub_45A5D4(v80, v94, v155, isUniquelyReferenced_nonNull_native);
      v97 = aBlock;
      __chkstk_darwin(v98);
      *(&v114 - 2) = v97;

      sub_764070();

      (*(v81 + 8))(v139, v147);
    }
  }

  else
  {
    v72 = v45;
    v73 = v134;
    (*(v46 + 4))(v134, v44, v72);
    v74 = v24;
    v75 = v73;
    (*(v154 + 16))(v151, v43, v74);
    *(swift_allocObject() + 16) = xmmword_77DCF0;
    sub_7685D0();
    sub_768540();
    sub_768540();
    sub_768540();
    v76 = v132;
    sub_7623D0();
    v77 = sub_75AD30();
    v78 = *(v77 - 8);
    if ((*(v78 + 48))(v76, 1, v77) == 1)
    {
      sub_10A2C(v76, &qword_95B958, &qword_7AAFE0);
      aBlock = 0u;
      v161 = 0u;
    }

    else
    {
      v99 = sub_75AD20();
      *(&v161 + 1) = &type metadata for String;
      *&aBlock = v99;
      *(&aBlock + 1) = v100;
      (*(v78 + 8))(v76, v77);
    }

    sub_7685C0();
    sub_10A2C(&aBlock, &unk_93FBD0, &qword_77DFA0);
    sub_768540();
    v101 = v136;
    sub_7623B0();
    v102 = sub_761560();
    v103 = *(v102 - 8);
    if ((*(v103 + 48))(v101, 1, v102) == 1)
    {
      sub_10A2C(v101, &qword_95B950, &qword_7A6148);
      aBlock = 0u;
      v161 = 0u;
    }

    else
    {
      *(&v161 + 1) = v102;
      v104 = sub_B1B4(&aBlock);
      (*(v103 + 32))(v104, v101, v102);
    }

    sub_7685C0();
    sub_10A2C(&aBlock, &unk_93FBD0, &qword_77DFA0);
    v105 = v146;
    v106 = v151;
    sub_768E80();

    (*(v154 + 8))(v106, v105);
    sub_BD88(&qword_95F900, &qword_7AAFF8);
    v108 = v156;
    v107 = v157;
    (*(v156 + 2))(v145, v75, v157);
    v94 = sub_768F30();
    (*(v108 + 1))(v75, v107);
  }

  return v94;
}

double sub_63F480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v28 = a4;
  v29 = a1;
  v6 = sub_768380();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7683C0();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75B1D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = *(Strong + 16);

    (*(v13 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v12);
    v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v25 = v7;
    v27 = v9;
    v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 16) = v28;
    *(v20 + 24) = a3;
    (*(v13 + 32))(v20 + v18, v15, v12);
    *(v20 + v19) = v29;
    aBlock[4] = sub_64241C;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_89B238;
    v21 = _Block_copy(aBlock);

    sub_7683A0();
    v32 = _swiftEmptyArrayStorage;
    sub_642568(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350, &unk_77F850);
    sub_4C874();
    v22 = v31;
    sub_76A5A0();
    v23 = v26;
    sub_769980();
    _Block_release(v21);

    (*(v25 + 8))(v22, v6);
    (*(v30 + 8))(v11, v27);
  }

  return result;
}

void sub_63F864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a4;
  v132 = a3;
  v5 = sub_7662D0();
  v135 = *(v5 - 8);
  __chkstk_darwin(v5);
  v113 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_BD88(&qword_95F908, &qword_7AB000);
  __chkstk_darwin(v120);
  v124 = v103 - v7;
  v8 = sub_761560();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v121 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_95B950, &qword_7A6148);
  __chkstk_darwin(v11 - 8);
  v13 = v103 - v12;
  v14 = sub_BD88(&qword_95B958, &qword_7AAFE0);
  __chkstk_darwin(v14 - 8);
  v128 = v103 - v15;
  v16 = sub_7623E0();
  v130 = *(v16 - 8);
  __chkstk_darwin(v16);
  v129 = v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_75B1D0();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v117 = v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_764CF0();
  __chkstk_darwin(v19 - 8);
  v116 = v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_75AD30();
  v126 = *(v21 - 8);
  v127 = v21;
  __chkstk_darwin(v21);
  v119 = v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_BD88(&qword_95F910, &qword_7AB008);
  __chkstk_darwin(v23 - 8);
  v118 = v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v131 = v103 - v26;
  __chkstk_darwin(v27);
  v123 = v103 - v28;
  __chkstk_darwin(v29);
  v122 = v103 - v30;
  __chkstk_darwin(v31);
  v33 = v103 - v32;
  v34 = sub_768FF0();
  v134 = *(v34 - 8);
  __chkstk_darwin(v34);
  v133 = v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_768EF0() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v37 = Strong;
      v104 = v5;
      v107 = v13;
      v108 = v9;
      v109 = v8;
      v110 = a1;

      sub_BD88(&qword_95F8E8, &qword_7AAFD8);
      sub_764050();

      v39 = sub_63DA7C(v132, v38);
      sub_642018(v39);
      __chkstk_darwin(v40);

      sub_764070();

      v111 = sub_766070();
      if (qword_93DF10 != -1)
      {
        swift_once();
      }

      v41 = sub_BE38(v34, qword_9A0460);
      (*(v134 + 16))(v133, v41, v34);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_7AAF10;
      v103[1] = v42;

      sub_7685D0();
      v105 = v37;

      sub_768540();
      sub_768540();
      v43 = sub_766000();
      *(&v137 + 1) = &type metadata for String;
      *&v136 = v43;
      *(&v136 + 1) = v44;
      sub_7685C0();
      sub_10A2C(&v136, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      v45 = sub_766030();
      if (v46)
      {
        v47 = &type metadata for String;
      }

      else
      {
        v45 = 0;
        v47 = 0;
        *&v137 = 0;
      }

      *&v136 = v45;
      *(&v136 + 1) = v46;
      *(&v137 + 1) = v47;
      sub_7685C0();
      sub_10A2C(&v136, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      v48 = sub_7660A0();
      v106 = v16;
      if (v49)
      {
        v50 = &type metadata for String;
      }

      else
      {
        v48 = 0;
        v50 = 0;
        *&v137 = 0;
      }

      *&v136 = v48;
      *(&v136 + 1) = v49;
      *(&v137 + 1) = v50;
      sub_7685C0();
      sub_10A2C(&v136, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      v51 = sub_766080();
      *(&v137 + 1) = &type metadata for String;
      *&v136 = v51;
      *(&v136 + 1) = v52;
      sub_7685C0();
      sub_10A2C(&v136, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      v53 = sub_766050();
      *(&v137 + 1) = &type metadata for String;
      *&v136 = v53;
      *(&v136 + 1) = v54;
      sub_7685C0();
      sub_10A2C(&v136, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      sub_766040();
      v55 = v135;
      v56 = *(v135 + 48);
      v57 = v104;
      if (v56(v33, 1, v104) == 1)
      {
        sub_10A2C(v33, &qword_95F910, &qword_7AB008);
        v136 = 0u;
        v137 = 0u;
      }

      else
      {
        *(&v137 + 1) = v57;
        v58 = sub_B1B4(&v136);
        (*(v55 + 32))(v58, v33, v57);
      }

      sub_7685C0();
      sub_10A2C(&v136, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      v59 = v111;
      if (v111)
      {
        v60 = sub_BD88(&qword_95B960, qword_7AB010);
      }

      else
      {
        v60 = 0;
        *(&v136 + 1) = 0;
        *&v137 = 0;
      }

      *&v136 = v59;
      *(&v137 + 1) = v60;

      sub_7685C0();
      sub_10A2C(&v136, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      v61 = sub_766020();
      v112 = v56;
      if (v62)
      {
        v63 = &type metadata for String;
      }

      else
      {
        v61 = 0;
        v63 = 0;
        *&v137 = 0;
      }

      *&v136 = v61;
      *(&v136 + 1) = v62;
      *(&v137 + 1) = v63;
      sub_7685C0();
      sub_10A2C(&v136, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      v64 = sub_7660B0();
      *(&v137 + 1) = &type metadata for String;
      *&v136 = v64;
      *(&v136 + 1) = v65;
      sub_7685C0();
      sub_10A2C(&v136, &unk_93FBD0, &qword_77DFA0);
      v66 = v133;
      sub_768E80();

      (*(v134 + 8))(v66, v34);
      v67 = v122;
      sub_766040();
      if (v112(v67, 1, v57) != 1)
      {

        sub_10A2C(v67, &qword_95F910, &qword_7AB008);
        v69 = v123;
        v70 = v124;
        v71 = v135;
LABEL_24:
        sub_766040();
        v72 = v131;
        (*(v71 + 104))(v131, enum case for AppStoreAdUnfilledReason.policyAdDrop(_:), v57);
        (*(v71 + 56))(v72, 0, 1, v57);
        v73 = *(v120 + 48);
        sub_6424F8(v69, v70);
        sub_6424F8(v72, v70 + v73);
        v74 = v112;
        if (v112(v70, 1, v57) == 1)
        {
          sub_10A2C(v72, &qword_95F910, &qword_7AB008);
          sub_10A2C(v69, &qword_95F910, &qword_7AB008);
          v75 = v74(v70 + v73, 1, v57);
          v77 = v126;
          v76 = v127;
          if (v75 == 1)
          {
            sub_10A2C(v70, &qword_95F910, &qword_7AB008);
LABEL_40:
            v79 = &enum case for OnDeviceAdFetchFailReason.policyAdDrop(_:);
            goto LABEL_41;
          }
        }

        else
        {
          v78 = v118;
          sub_6424F8(v70, v118);
          if (v74(v70 + v73, 1, v57) != 1)
          {
            v94 = v70 + v73;
            v95 = v113;
            (*(v71 + 32))(v113, v94, v57);
            sub_642568(&qword_95F918, &type metadata accessor for AppStoreAdUnfilledReason, &protocol conformance descriptor for AppStoreAdUnfilledReason);
            v96 = sub_7691C0();
            v97 = *(v71 + 8);
            v97(v95, v57);
            sub_10A2C(v131, &qword_95F910, &qword_7AB008);
            sub_10A2C(v69, &qword_95F910, &qword_7AB008);
            v97(v78, v57);
            sub_10A2C(v70, &qword_95F910, &qword_7AB008);
            v77 = v126;
            v76 = v127;
            if (v96)
            {
              goto LABEL_40;
            }

LABEL_30:
            v79 = &enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
LABEL_41:
            v98 = v108;
            v99 = v121;
            v100 = v109;
            (*(v108 + 104))(v121, *v79, v109);
            sub_766050();
            sub_7660A0();
            (*(v77 + 56))(v128, 1, 1, v76);
            v101 = v107;
            (*(v98 + 16))(v107, v99, v100);
            (*(v98 + 56))(v101, 0, 1, v100);
            v102 = v129;
            sub_7623C0();
            sub_768F60();

            (*(v130 + 8))(v102, v106);
            (*(v98 + 8))(v99, v100);
            return;
          }

          sub_10A2C(v131, &qword_95F910, &qword_7AB008);
          sub_10A2C(v69, &qword_95F910, &qword_7AB008);
          (*(v71 + 8))(v78, v57);
          v77 = v126;
          v76 = v127;
        }

        sub_10A2C(v70, &qword_95F908, &qword_7AB000);
        goto LABEL_30;
      }

      sub_10A2C(v67, &qword_95F910, &qword_7AB008);
      sub_766080();
      v68 = sub_7692D0();

      v69 = v123;
      v70 = v124;
      v71 = v135;
      if (v68)
      {

        goto LABEL_24;
      }

      v80 = sub_766000();
      v134 = v81;
      v135 = v80;
      v82 = sub_766030();
      if (v83)
      {
        v84 = v82;
      }

      else
      {
        v84 = 0;
      }

      v133 = v84;
      if (v83)
      {
        v85 = v83;
      }

      else
      {
        v85 = 0xE000000000000000;
      }

      v131 = v85;
      sub_766080();
      sub_764CC0();
      (*(v114 + 16))(v117, v132, v115);
      sub_7660B0();
      sub_766020();
      sub_766010();
      sub_766090();
      sub_766060();
      v86 = v119;
      sub_75AD10();
      sub_766050();
      sub_7660A0();
      v87 = v126;
      v88 = v128;
      v89 = v86;
      v90 = v127;
      (*(v126 + 16))(v128, v89, v127);
      (*(v87 + 56))(v88, 0, 1, v90);
      (*(v108 + 56))(v107, 1, 1, v109);
      v91 = v129;
      sub_7623C0();
      sub_768F60();
      (*(v130 + 8))(v91, v106);
      v92 = sub_7660A0();
      if (v93)
      {
        __chkstk_darwin(v92);
        sub_764070();

        (*(v87 + 8))(v119, v90);
      }

      else
      {

        (*(v87 + 8))(v119, v90);
      }
    }
  }
}

void sub_640C40(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_768380();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_7683C0();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75B1D0();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_7683E0();
  v13 = *(v50 - 8);
  __chkstk_darwin(v50);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;

  sub_BD88(&qword_95F8E8, &qword_7AAFD8);
  sub_764050();

  v19 = aBlock;
  if (aBlock[2] && (v20 = sub_6648BC(a1), (v21 & 1) != 0))
  {
    v44 = v7;
    v22 = (v19[7] + 16 * v20);
    v23 = v22[1];
    v45 = *v22;

    swift_retain_n();

    v24 = sub_768EF0();

    if ((v24 & 1) == 0)
    {
      v41 = *(v3 + 16);
      sub_7683D0();
      sub_768450();
      v42 = *(v13 + 8);
      v43 = v13 + 8;
      v42(v15, v50);
      v28 = swift_allocObject();
      swift_weakInit();
      v40 = v6;
      v29 = v51;
      v30 = a1;
      v31 = v52;
      (*(v51 + 16))(&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v52);
      v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v33 = (v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      *(v34 + 16) = v23;
      *(v34 + 24) = v28;
      (*(v29 + 32))(v34 + v32, v12, v31);
      *(v34 + v33) = v45;
      *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
      v58 = sub_641FFC;
      v59 = v34;
      aBlock = _NSConcreteStackBlock;
      v55 = 1107296256;
      v56 = sub_23F0CC;
      v57 = &unk_89B170;
      v35 = _Block_copy(&aBlock);

      v36 = v46;
      sub_7683A0();
      v53 = _swiftEmptyArrayStorage;
      sub_642568(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_BD88(&qword_940350, &unk_77F850);
      sub_4C874();
      v37 = v48;
      v38 = v40;
      sub_76A5A0();
      sub_769930();
      _Block_release(v35);

      (*(v44 + 8))(v37, v38);
      (*(v47 + 8))(v36, v49);
      v42(v18, v50);

      return;
    }
  }

  else
  {
  }

  if (qword_93DF10 != -1)
  {
    swift_once();
  }

  v25 = sub_768FF0();
  sub_BE38(v25, qword_9A0460);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_782440;
  sub_7685D0();
  v57 = &type metadata for String;
  aBlock = 0xD000000000000031;
  v55 = 0x80000000007EEEE0;
  sub_7685E0();
  sub_10A2C(&aBlock, &unk_93FBD0, &qword_77DFA0);
  sub_768540();
  v26 = v52;
  v57 = v52;
  v27 = sub_B1B4(&aBlock);
  (*(v51 + 16))(v27, a1, v26);
  sub_7685E0();
  sub_10A2C(&aBlock, &unk_93FBD0, &qword_77DFA0);
  sub_768E80();
}

uint64_t sub_6413C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = sub_7662E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_768FF0();
  v55 = *(v13 - 8);
  __chkstk_darwin(v13);
  v54 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&qword_95B950, &qword_7A6148);
  __chkstk_darwin(v15 - 8);
  v17 = v45 - v16;
  v18 = sub_BD88(&qword_95B958, &qword_7AAFE0);
  __chkstk_darwin(v18 - 8);
  v20 = v45 - v19;
  v21 = sub_7623E0();
  v51 = *(v21 - 8);
  v52 = v21;
  __chkstk_darwin(v21);
  v53 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_768EF0();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v46 = v13;
      v47 = v12;
      v48 = v10;
      v49 = v9;
      v50 = a1;

      sub_BD88(&qword_95F8E8, &qword_7AAFD8);
      sub_764050();

      v25 = sub_63DA7C(a3, v24);
      sub_642018(v25);
      v26 = v56;
      __chkstk_darwin(v27);
      *&v45[-2] = v26;

      sub_764070();

      sub_7662A0();
      sub_7662C0();
      v28 = sub_75AD30();
      (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
      v29 = enum case for OnDeviceAdFetchFailReason.timeout(_:);
      v30 = sub_761560();
      v31 = *(v30 - 8);
      v45[1] = a4;
      v32 = v31;
      (*(v31 + 104))(v17, v29, v30);
      (*(v32 + 56))(v17, 0, 1, v30);
      sub_7623C0();
      if (qword_93DF10 != -1)
      {
        swift_once();
      }

      v33 = v46;
      v34 = sub_BE38(v46, qword_9A0460);
      (*(v55 + 16))(v54, v34, v33);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_783150;

      sub_7685D0();

      sub_768540();
      sub_768540();
      v59 = &type metadata for Double;
      v56 = a5;
      sub_7685C0();
      sub_10A2C(&v56, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      *&v35 = COERCE_DOUBLE(sub_7662C0());
      if (v36)
      {
        v37 = &type metadata for String;
      }

      else
      {
        *&v35 = 0.0;
        v37 = 0;
        v58 = 0;
      }

      v56 = *&v35;
      v57 = v36;
      v59 = v37;
      sub_7685C0();
      sub_10A2C(&v56, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      *&v38 = COERCE_DOUBLE(sub_7662A0());
      v59 = &type metadata for String;
      v56 = *&v38;
      v57 = v39;
      sub_7685C0();
      sub_10A2C(&v56, &unk_93FBD0, &qword_77DFA0);
      v40 = v54;
      sub_768E80();

      (*(v55 + 8))(v40, v33);
      v42 = v47;
      v41 = v48;
      v43 = v49;
      (*(v48 + 104))(v47, enum case for AppStoreTaskCancelReason.slaMiss(_:), v49);
      sub_7662B0();
      (*(v41 + 8))(v42, v43);
      v44 = v53;
      sub_768F60();

      return (*(v51 + 8))(v44, v52);
    }
  }

  return result;
}

uint64_t sub_641B50()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_641C40(uint64_t a1)
{
  v2 = sub_7572E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75B1D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_765F40();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 == enum case for AdPlacementType.searchLanding(_:))
  {
    v16 = &enum case for AppPlacementLocation.searchLanding(_:);
  }

  else if (v15 == enum case for AdPlacementType.searchResults(_:))
  {
    v16 = &enum case for AppPlacementLocation.searchResults(_:);
  }

  else if (v15 == enum case for AdPlacementType.today(_:))
  {
    v16 = &enum case for AppPlacementLocation.todayPage(_:);
  }

  else if (v15 == enum case for AdPlacementType.productPageYMAL(_:))
  {
    v16 = &enum case for AppPlacementLocation.productPage(_:);
  }

  else
  {
    if (v15 != enum case for AdPlacementType.productPageYMALDuringDownload(_:))
    {
      sub_7572D0();
      v19 = sub_7572B0();
      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
      return v19;
    }

    v16 = &enum case for AppPlacementLocation.downloadPage(_:);
  }

  v17 = *v16;
  v18 = sub_765F30();
  (*(*(v18 - 8) + 104))(v14, v17, v18);
  (*(v11 + 104))(v14, enum case for AdType.app(_:), v10);
  sub_765FF0();
  sub_765FE0();
  v19 = sub_765FD0();

  (*(v11 + 8))(v14, v10);
  return v19;
}

uint64_t sub_641FC4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_642000(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_642018(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_64205C()
{
  v1 = sub_75B1D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_642128(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_75B1D0() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_63F480(a1, a2, v6, v7, v8);
}

uint64_t sub_6421B0()
{
  v1 = sub_75B1D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_6422A0()
{
  v1 = *(sub_75B1D0() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_6413C8(v6, v7, v0 + v2, v4, v5);
}

uint64_t sub_64233C()
{
  v1 = sub_75B1D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_64241C()
{
  v1 = *(sub_75B1D0() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_63F864(v3, v4, v0 + v2, v5);
}

double sub_6424AC(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;

  return result;
}

uint64_t sub_6424F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_95F910, &qword_7AB008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_642568(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_6425CC(char *a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_BD88(&qword_944448, qword_798CC0);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v27 - v12;
  if ((a2 & 1) == 0)
  {
    v28 = a4;
    [a1 frame];
    [v5 setFrame:?];
    v14 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView];
    v15 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView];
    [v15 frame];
    [v14 setFrame:?];
    [v14 setHidden:{objc_msgSend(v15, "isHidden")}];
    v16 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_35FDF4(&v15[v16], v13);
    v17 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_35FD44(v13, v14 + v17);
    swift_endAccess();
    v18 = [*&v15[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView] image];
    if (v18)
    {
      v19 = &v15[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize];
      if ((v15[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkSize + 16] & 1) != 0 || (v20 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_artworkLayoutWithMetrics]) == 0)
      {
      }

      else
      {
        v21 = *v19;
        v27 = v19[1];
        v22 = v18;

        v23 = v22;
        sub_DDCF4(v22, v21, v27, 0, v20, a3, v28);
      }
    }

    v24 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView];
    v25 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView];
    [v25 frame];
    [v24 setFrame:?];
    [v24 setHidden:{objc_msgSend(v25, "isHidden")}];
  }

  return [v5 setHidden:{objc_msgSend(a1, "isHidden", v11)}];
}

char *sub_64285C(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_sourceView] = a1;
  v5 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView];
  v6 = type metadata accessor for RevealingImageMirrorView(0);
  v21.receiver = objc_allocWithZone(v6);
  v21.super_class = v6;
  v7 = a1;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  if (qword_93E270 != -1)
  {
    swift_once();
  }

  v20[4] = *&byte_9A0A30[64];
  v20[5] = *&byte_9A0A30[80];
  v20[6] = *&byte_9A0A30[96];
  v20[7] = *&byte_9A0A30[112];
  v20[0] = *byte_9A0A30;
  v20[1] = *&byte_9A0A30[16];
  v20[2] = *&byte_9A0A30[32];
  v20[3] = *&byte_9A0A30[48];
  [v10 setTransform:v20];

  v11 = &v8[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v11 + 1) = &off_89F220;
  swift_unknownObjectWeakAssign();
  sub_DCDE0(Strong);

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView] = v9;
  v13 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView];
  v14 = objc_allocWithZone(type metadata accessor for RevealingVideoMirrorView(0));
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView] = sub_647B50(v13);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView];
  v17 = v15;
  [v17 addSubview:v16];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView]];
  [v17 setClipsToBounds:1];

  return v17;
}

id sub_642B0C()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView];
  [v0 bounds];
  MidX = CGRectGetMidX(v14);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_sourceView;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_sourceView] frame];
  v4 = MidX - CGRectGetWidth(v15) * 0.5;
  [v0 bounds];
  MinX = CGRectGetMinX(v16);
  [*&v0[v3] frame];
  Width = CGRectGetWidth(v17);
  [*&v0[v3] frame];
  [v1 setFrame:{v4, MinX, Width, CGRectGetHeight(v18)}];
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView];
  [v0 bounds];
  v8 = CGRectGetMidX(v19);
  [*&v0[v3] frame];
  v9 = v8 - CGRectGetWidth(v20) * 0.5;
  [v0 bounds];
  v10 = CGRectGetMinX(v21);
  [*&v0[v3] frame];
  v11 = CGRectGetWidth(v22);
  [*&v0[v3] frame];
  return [v7 setFrame:{v9, v10, v11, CGRectGetHeight(v23)}];
}

uint64_t sub_642D94()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_766CA0();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v38 = &v27[-v7];
  __chkstk_darwin(v8);
  v36 = &v27[-v9];
  v10 = type metadata accessor for BadgeParagraphView.Metrics(0);
  sub_161DC(v10, qword_9A05D0);
  v31 = v10;
  v30 = sub_BE38(v10, qword_9A05D0);
  if (qword_93D640 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v29 = sub_BE38(v11, qword_99EAB8);
  v12 = *(v11 - 8);
  v35 = *(v12 + 16);
  v37 = v12 + 16;
  v35(v3, v29, v11);
  v13 = enum case for FontSource.useCase(_:);
  v14 = v1[13];
  v14(v3, enum case for FontSource.useCase(_:), v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v39);
  v16 = v1[2];
  v16(v15, v3, v0);
  sub_766CB0();
  v17 = v1[1];
  v17(v3, v0);
  v35(v3, v29, v11);
  v28 = v13;
  v14(v3, v13, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v39);
  v29 = v16;
  v16(v18, v3, v0);
  sub_766CB0();
  v17(v3, v0);
  if (qword_93D658 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v11, qword_99EB00);
  v35(v3, v19, v11);
  v14(v3, v28, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v39);
  v29(v20, v3, v0);
  v21 = v32;
  sub_766CB0();
  v17(v3, v0);
  v22 = v34;
  v23 = *(v33 + 32);
  v24 = v30;
  v23(v30, v36, v34);
  v25 = v31;
  v23(v24 + *(v31 + 20), v38, v22);
  return (v23)(v24 + *(v25 + 24), v21, v22);
}

char *sub_643210(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v14 - 8);
  v16 = v43 - v15;
  if (qword_93DFA0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for BadgeParagraphView.Metrics(0);
  v18 = sub_BE38(v17, qword_9A05D0);
  sub_644260(v18, &v5[OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_metrics]);
  if (qword_93D640 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99EAB8);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v16, v20, v19);
  (*(v21 + 56))(v16, 0, 1, v19);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = objc_allocWithZone(sub_75BB20());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_paragraphLabel] = sub_75BB10();
  v23 = type metadata accessor for BadgeParagraphView(0);
  v44.receiver = v5;
  v44.super_class = v23;
  v24 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_paragraphLabel;
  v30 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_paragraphLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 systemGrayColor];
  [v32 setTextColor:v33];

  v34 = [v28 traitCollection];
  v35.super.isa = v34;
  isa = sub_7666B0(v35).super.isa;
  v37 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (!v37)
  {
    goto LABEL_8;
  }

  v38 = [objc_opt_self() fontWithDescriptor:v37 size:0.0];

  if (v38)
  {
    [*&v28[v29] setFont:v38];
    v34 = v38;
LABEL_8:
  }

  [v28 addSubview:*&v28[v29]];
  v39 = [v28 traitCollection];
  sub_7699F0();

  sub_76A150();
  sub_BD88(&qword_9477F0, qword_780200);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_77B6D0;
  *(v40 + 32) = sub_767B80();
  *(v40 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43[3] = v23;
  v43[0] = v28;
  v41 = v28;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v43);
  return v41;
}

id sub_643808()
{
  v1 = v0;
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BadgeParagraphView(0);
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = [v0 traitCollection];
  v8 = sub_7699B0();

  if (v8)
  {
    type metadata accessor for BadgeParagraphView.Metrics(0);
  }

  sub_766470();
  sub_766CA0();
  sub_766700();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_paragraphLabel];
  sub_75D650();
  [v10 measurementsWithFitting:v1 in:{v11, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.down(_:), v2);
  sub_769F80();
  v9(v5, v2);
  v13 = [v1 traitCollection];
  [v13 layoutDirection];

  sub_75D650();
  sub_769D30();
  return [v10 setFrame:?];
}

uint64_t sub_643AC0(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BadgeParagraphView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_7699F0();

  if (!a1 || (result = sub_7699F0(), (result & 1) != (v5 & 1)))
  {
    v7 = [v2 traitCollection];
    sub_7699F0();

    return sub_76A150();
  }

  return result;
}

void sub_643C10()
{
  v1 = v0;
  if (qword_93D640 != -1)
  {
    swift_once();
  }

  v2 = sub_7666D0();
  sub_BE38(v2, qword_99EAB8);
  v3.super.isa = [v0 traitCollection];
  isa = v3.super.isa;
  v4 = sub_7666B0(v3).super.isa;
  v5 = [(objc_class *)v4 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (v5)
  {
    v6 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];

    if (!v6)
    {
      return;
    }

    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider18BadgeParagraphView_paragraphLabel] setFont:v6];
    v7 = v6;
  }

  else
  {
    v7 = isa;
  }
}

id sub_643DB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgeParagraphView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_643E64(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for BadgeParagraphView.Metrics(319);
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

uint64_t sub_643F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_643FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_766CA0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_644028(uint64_t a1)
{
  result = sub_766CA0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_64409C(uint64_t a1, double a2, double a3)
{
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BadgeParagraphView.Metrics(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DFA0 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v9, qword_9A05D0);
  sub_644260(v12, v11);
  sub_7699B0();
  sub_766470();
  sub_766C70();
  (*(v6 + 8))(v8, v5);
  if (a3 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a3;
  }

  v14 = ceil(v13);
  sub_6442C4(v11);
  return v14;
}

uint64_t sub_644260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6442C4(uint64_t a1)
{
  v2 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_644320()
{
  ObjectType = swift_getObjectType();
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_detailsView];
  sub_636480();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "setBackgroundColor:", 0);
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView];
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v4 = v3;
  v5 = objc_msgSendSuper2(&v10, "backgroundColor");
  sub_759070();

  v6 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler);
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler);
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler + 8);
  *v6 = 0;
  v6[1] = 0;
  return sub_F704(v7, v8);
}

uint64_t sub_6443F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a2;
  v5 = sub_75F0C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_76A920();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallBreakoutCollectionViewCell(0);
  swift_getObjectType();
  v13 = sub_6456A8(a1);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v14 = [a1 traitCollection];
  v15 = sub_7699D0();

  if (v15)
  {
    [a1 pageMarginInsets];
    if (JUScreenClassGetMain() == 1)
    {
      v16 = 160.0;
    }

    else
    {
      sub_769B90();
      sub_769DA0();
      v21 = v20 + -10.0;
      v34[0] = 156.0;
      sub_766470();
      sub_766700();
      v23 = v22;
      (*(v10 + 8))(v12, v9);
      v16 = v21 - v23;
    }

    v35 = &type metadata for CGFloat;
    v36 = &protocol witness table for CGFloat;
    v34[0] = v16;
    sub_10A2C(&v31, &unk_93F9C0, &qword_77EDB0);
    *&v31 = 0x4014000000000000;
    *(&v32 + 1) = &type metadata for CGFloat;
    v33 = &protocol witness table for CGFloat;
  }

  else
  {
    [a1 pageContainerSize];
    v18 = v17;
    [a1 pageContainerSize];
    if (v19 >= v18)
    {
      PageTraitEnvironment.pageColumnWidth.getter();
    }

    else
    {
      [a1 pageMarginInsets];
      [a1 pageMarginInsets];
    }

    sub_75E650();
    v25 = v13 + v24 + v24;
    sub_769B90();
    sub_769DA0();
    v35 = &type metadata for CGFloat;
    v36 = &protocol witness table for CGFloat;
    v34[0] = v26 + -10.0 - v25;
    sub_10A2C(&v31, &unk_93F9C0, &qword_77EDB0);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
  }

  sub_33B80(&v31, v30);
  v29[12] = &protocol witness table for CGFloat;
  v29[11] = &type metadata for CGFloat;
  v29[8] = 0x4024000000000000;
  sub_134D8(v34, v8);
  (*(v6 + 104))(v8, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v5);
  if (qword_93DFB0 != -1)
  {
    swift_once();
  }

  v27 = sub_BD88(&unk_94BAB0, &qword_7AB180);
  sub_BE38(v27, qword_9A05F0);
  v29[2] = a1;
  swift_unknownObjectRetain();
  sub_7592B0();
  swift_unknownObjectRelease();
  sub_75E660();
  sub_10A2C(&v31, &unk_93F9C0, &qword_77EDB0);
  return sub_BEB8(v34);
}

uint64_t sub_6448E4()
{
  v0 = sub_BD88(&qword_944E50, qword_78AFE0);
  sub_161DC(v0, qword_95FA40);
  sub_BE38(v0, qword_95FA40);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for CGSize(0);
  return sub_7592D0();
}

uint64_t sub_644994()
{
  v0 = sub_BD88(&unk_94BAB0, &qword_7AB180);
  sub_161DC(v0, qword_9A05F0);
  sub_BE38(v0, qword_9A05F0);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_BD88(&qword_95FAA0, &unk_78EDB0);
  return sub_7592D0();
}

char *sub_644A64(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_BD88(&qword_94BAC0, qword_77E9E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_95CF90, &unk_784980);
  __chkstk_darwin(v17 - 8);
  v19 = &v39 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v21 = sub_75C840();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_backgroundArtwork] = 0;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_93CA70 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v14, qword_99CA78);
  sub_FCD60(v23, v16, v24);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_7592F0();
  v25 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v5[v22] = sub_637704(v19);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits] = 0;
  sub_759210();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView] = sub_759020();
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  v27 = [v26 contentView];
  [v27 setClipsToBounds:1];

  v28 = [v26 contentView];
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v29 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView;
  v30 = qword_93C538;
  v31 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_765080();
  v33 = sub_BE38(v32, qword_99B508);
  v34 = *(v32 - 8);
  (*(v34 + 16))(v13, v33, v32);
  (*(v34 + 56))(v13, 0, 1, v32);
  sub_7591C0();

  v35 = *&v26[v29];
  CGAffineTransformMakeRotation(&v39, -0.523598776);
  [v35 setTransform:&v39];
  v36 = [v26 contentView];
  [v36 addSubview:*&v26[v29]];

  v37 = [v26 contentView];
  [v37 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_detailsView]];

  return v26;
}

id sub_645024()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75E670();
  __chkstk_darwin(v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75E690();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  result = objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits];
  if (v16)
  {
    swift_unknownObjectRetain();
    sub_75D650();
    sub_6443F4(v16, v9);
    v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView];
    sub_769E80();

    v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_detailsView];
    v20[3] = type metadata accessor for BreakoutDetailsView(0);
    v20[4] = &protocol witness table for UIView;
    v20[0] = v18;
    v19 = v18;
    sub_75E680();
    [v1 bounds];
    sub_75E640();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v6, v3);
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t type metadata accessor for SmallBreakoutCollectionViewCell(uint64_t a1)
{
  result = qword_95FA80;
  if (!qword_95FA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_64542C(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_6454E8()
{
  if (!*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits))
  {
    return 0.0;
  }

  swift_getObjectType();
  swift_getObjectType();
  v1 = swift_unknownObjectRetain();
  v2 = sub_6456A8(v1);
  swift_unknownObjectRelease();
  return v2;
}

void sub_645578(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView);
  sub_759050();

  v6 = *(v3 + v4);
  sub_759210();
  sub_645764(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_75A0C0();
}

uint64_t sub_645650(uint64_t a1)
{
  result = sub_645764(&qword_95FA98, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_7AB130);
  *(a1 + 8) = result;
  return result;
}

double sub_6456A8(uint64_t a1)
{
  if (JUScreenClassGetMain() == 1)
  {
    return 194.0;
  }

  if (qword_93DFA8 != -1)
  {
    swift_once();
  }

  v2 = sub_BD88(&qword_944E50, qword_78AFE0);
  sub_BE38(v2, qword_95FA40);
  sub_7592B0();
  return v3;
}

uint64_t sub_645764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_6457AC()
{
  v1 = v0;
  v2 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_95CF90, &unk_784980);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v9 = sub_75C840();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_93CA70 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v2, qword_99CA78);
  sub_FCD60(v11, v4, v12);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_7592F0();
  v13 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v1 + v10) = sub_637704(v7);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits) = 0;
  sub_76A840();
  __break(1u);
}

unint64_t sub_6459A8()
{
  result = qword_9411E8;
  if (!qword_9411E8)
  {
    type metadata accessor for SmallLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9411E8);
  }

  return result;
}

double sub_645A00()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallLockupView(0);
  v4 = sub_75DA40();
  sub_75DA20();
  sub_765630();
  v6 = v5;
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v9 = sub_75CF00();
  v10 = sub_BE38(v9, qword_99B898);
  swift_getObjectType();
  sub_1FE304(v10, v4, v6, v8);
  v12 = v11;
  swift_unknownObjectRelease();
  return v12;
}

double sub_645B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph);
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph) = a3;

  sub_56FA00(v8);

  v9 = [a6 snapshotPageTraitEnvironment];
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits) = v9;
  swift_unknownObjectRelease();
  v10 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_flowLayout);
  [a6 pageMarginInsets];
  [v10 setSectionInset:?];

  return sub_56F8F4(v11, v12);
}

uint64_t sub_645D2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SmallGameCenterPlayerLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v106 = a1;
  v102 = a2;
  v101 = sub_7664F0();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_7670F0();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v66 - v15;
  v98 = sub_767120();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_75E800();
  v109 = *(v105 - 8);
  v17 = v109;
  __chkstk_darwin(v105);
  v88 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_75E820();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v85 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_75E840();
  v107 = *(v75 - 8);
  v20 = v107;
  __chkstk_darwin(v75);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v22;
  v90 = sub_75E870();
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(v6 + 21, v6[24]);
  v123.origin.x = a3;
  v123.origin.y = a4;
  v123.size.width = a5;
  v123.size.height = a6;
  CGRectGetMinX(v123);
  v124.origin.x = a3;
  v124.origin.y = a4;
  v124.size.width = a5;
  v124.size.height = a6;
  CGRectGetMinY(v124);
  sub_769D20();
  sub_766530();
  sub_BD88(&qword_9417D8, &unk_780EB0);
  v24 = *(sub_75E850() - 8);
  v86 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v87 = v26;
  *(v26 + 16) = xmmword_77E280;
  v69 = v26 + v25;
  v103 = v7;
  v27 = v7[34];
  v28 = v7[35];
  v29 = sub_B170(v7 + 31, v27);
  v121 = v27;
  v122 = *(v28 + 8);
  v30 = sub_B1B4(&v120);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  v82 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v31 = *(v20 + 104);
  v83 = v20 + 104;
  v84 = v31;
  v31(v22);
  v81 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v32 = v108;
  v33 = *(v108 + 104);
  v79 = v108 + 104;
  v80 = v33;
  v34 = v85;
  v33(v85);
  v118 = &type metadata for Double;
  v119 = &protocol witness table for Double;
  v117 = 0;
  v78 = sub_BD88(&qword_9417E0, &unk_786F20);
  v77 = *(v17 + 72);
  v35 = v109;
  v36 = swift_allocObject();
  v76 = xmmword_77B6D0;
  *(v36 + 16) = xmmword_77B6D0;
  sub_75E7D0();
  v114 = v36;
  v73 = sub_2472C4(&qword_9417E8, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v72 = sub_BD88(&qword_9417F0, &unk_780EC0);
  v74 = sub_7DCC8();
  v37 = v88;
  v38 = v105;
  sub_76A5A0();
  v39 = v103;
  v40 = v67;
  sub_75E830();
  v41 = *(v35 + 8);
  v109 = v35 + 8;
  v71 = v41;
  v41(v37, v38);
  v42 = *(v32 + 8);
  v108 = v32 + 8;
  v70 = v42;
  v43 = v34;
  v44 = v104;
  v42(v34, v104);
  v45 = *(v107 + 8);
  v107 += 8;
  v68 = v45;
  v46 = v75;
  v45(v40, v75);
  sub_34630(&v117);
  sub_BEB8(&v120);
  v47 = v39;
  v48 = v39[29];
  v49 = v47[30];
  v50 = sub_B170(v47 + 26, v48);
  v121 = v48;
  v122 = *(v49 + 8);
  v51 = sub_B1B4(&v120);
  (*(*(v48 - 8) + 16))(v51, v50, v48);
  v84(v40, v82, v46);
  v80(v43, v81, v44);
  v119 = &protocol witness table for Double;
  v118 = &type metadata for Double;
  v117 = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = v76;
  sub_75E7D0();
  v114 = v52;
  v53 = v105;
  sub_76A5A0();
  v54 = v103;
  sub_75E830();
  v71(v37, v53);
  v70(v43, v44);
  v68(v40, v46);
  sub_34630(&v117);
  sub_BEB8(&v120);
  v55 = v89;
  sub_75E810();
  v56 = v90;
  v121 = v90;
  v122 = sub_2472C4(&qword_9464F0, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  v57 = sub_B1B4(&v120);
  v58 = v91;
  (*(v91 + 16))(v57, v55, v56);
  sub_134D8((v54 + 21), &v117);
  v59 = v54[5];
  v115 = &type metadata for CGFloat;
  v116 = &protocol witness table for CGFloat;
  v114 = v59;
  v60 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v61 = *(v93 + 104);
  v62 = v95;
  v61(v92, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v95);
  v113 = 0;
  v112 = 0u;
  v111 = 0u;
  v110[3] = sub_766970();
  v110[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v110);
  sub_766960();
  v61(v96, v60, v62);
  v63 = v94;
  sub_767110();
  v64 = v99;
  sub_767100();
  (*(v100 + 8))(v64, v101);
  sub_7664B0();
  (*(v97 + 8))(v63, v98);
  return (*(v58 + 8))(v55, v56);
}

void SmallGameCenterPlayerLayout.Metrics.avatarInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t SmallGameCenterPlayerLayout.Metrics.aliasTopSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 48));

  return sub_34698(a1, v1 + 48);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameTopSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 88));

  return sub_34698(a1, v1 + 88);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameBottomSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 128));

  return sub_34698(a1, v1 + 128);
}

double SmallGameCenterPlayerLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_646C6C(a1, v3, a2, a3);
}

double sub_646C6C(uint64_t a1, void *a2, double a3, double a4)
{
  v75 = a1;
  v77 = sub_76A920();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_75E800();
  v81 = *(v79 - 8);
  v7 = v81;
  __chkstk_darwin(v79);
  v68 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_75E820();
  v82 = *(v78 - 8);
  __chkstk_darwin(v78);
  v61 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_75E840();
  v80 = *(v57 - 8);
  v10 = v80;
  __chkstk_darwin(v57);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v12;
  v72 = sub_75E870();
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_9417D8, &unk_780EB0);
  v14 = *(sub_75E850() - 8);
  v69 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v70 = v16;
  *(v16 + 16) = xmmword_77E280;
  v50 = v16 + v15;
  v17 = a2[34];
  v18 = a2[35];
  v19 = sub_B170(a2 + 31, v17);
  v88 = v17;
  v89 = *(v18 + 8);
  v20 = sub_B1B4(v87);
  (*(*(v17 - 8) + 16))(v20, v19, v17);
  v65 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v21 = *(v10 + 104);
  v66 = v10 + 104;
  v67 = v21;
  v21(v12);
  v64 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v22 = *(v82 + 104);
  v62 = v82 + 104;
  v63 = v22;
  v23 = v61;
  v24 = v78;
  v22(v61);
  v85 = &type metadata for Double;
  v86 = &protocol witness table for Double;
  v84 = 0;
  v60 = sub_BD88(&qword_9417E0, &unk_786F20);
  v59 = *(v7 + 72);
  v25 = v81;
  v53 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v26 = swift_allocObject();
  v58 = xmmword_77B6D0;
  *(v26 + 16) = xmmword_77B6D0;
  sub_75E7D0();
  v83 = v26;
  v55 = sub_2472C4(&qword_9417E8, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v54 = sub_BD88(&qword_9417F0, &unk_780EC0);
  v56 = sub_7DCC8();
  v27 = v68;
  v28 = v79;
  sub_76A5A0();
  v29 = v49;
  v30 = v23;
  sub_75E830();
  v31 = *(v25 + 8);
  v81 = v25 + 8;
  v52 = v31;
  v32 = v27;
  v31(v27, v28);
  v33 = *(v82 + 8);
  v82 += 8;
  v51 = v33;
  v33(v30, v24);
  v48 = *(v80 + 8);
  v80 += 8;
  v34 = v29;
  v35 = v57;
  v48(v29, v57);
  sub_34630(&v84);
  sub_BEB8(v87);
  v37 = a2[29];
  v36 = a2[30];
  v38 = sub_B170(a2 + 26, v37);
  v88 = v37;
  v89 = *(v36 + 8);
  v39 = sub_B1B4(v87);
  (*(*(v37 - 8) + 16))(v39, v38, v37);
  v67(v34, v65, v35);
  v40 = v78;
  v63(v30, v64, v78);
  v86 = &protocol witness table for Double;
  v85 = &type metadata for Double;
  v84 = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = v58;
  sub_75E7D0();
  v83 = v41;
  v42 = v79;
  sub_76A5A0();
  sub_75E830();
  v52(v32, v42);
  v51(v30, v40);
  v48(v34, v35);
  sub_34630(&v84);
  sub_BEB8(v87);
  v43 = v71;
  sub_75E810();
  sub_2472C4(&qword_94B228, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  v44 = v72;
  sub_7665A0();
  v45 = a2[19];
  sub_B170(a2 + 16, v45);
  v46 = v74;
  sub_33964(v45);
  sub_766700();
  (*(v76 + 8))(v46, v77);
  (*(v73 + 8))(v43, v44);
  return a3;
}

uint64_t sub_647630(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_647678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_647714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_64775C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall UIImageView.show(image:isAnimationPermitted:)(UIImage_optional image, Swift::Bool isAnimationPermitted)
{
  v3 = v2;
  isa = image.value.super.isa;
  if (!image.is_nil)
  {
    goto LABEL_4;
  }

  v5 = [v3 image];
  if (v5)
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v6 = 1;
LABEL_5:
  v7 = [v3 layer];
  [v7 removeAllAnimations];

  if (isa)
  {
    if (v6)
    {
      v8 = isa;
      [v3 setAlpha:0.0];
      [v3 setImage:v8];
      sub_BE70(0, &qword_94B6A0, UIViewPropertyAnimator_ptr);
      v9 = sub_769B70();
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      v15[4] = sub_255220;
      v15[5] = v10;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_23F0CC;
      v15[3] = &unk_89B430;
      v11 = _Block_copy(v15);
      v12 = v3;

      [v9 addAnimations:v11];
      _Block_release(v11);
      [v9 startAnimation];

      return;
    }

    v13 = v3;
    v14 = isa;
  }

  else
  {
    v13 = v3;
    v14 = 0;
  }

  [v13 setImage:v14];
}

uint64_t sub_6479D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_647A0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_647A28()
{
  v1 = [v0 image];

  return v1;
}

void sub_647A60(void *a1)
{
  [v1 setImage:a1];
}

void (*sub_647AA8(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 image];
  return sub_647B04;
}

void sub_647B04(id *a1)
{
  v1 = *a1;
  [a1[1] setImage:?];
}

char *sub_647B50(char *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isExpanded] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_videoMirrorView;
  if (qword_93C4A0 != -1)
  {
    swift_once();
  }

  v14[4] = *&byte_99B328[64];
  v14[5] = *&byte_99B328[80];
  v14[6] = *&byte_99B328[96];
  v14[7] = *&byte_99B328[112];
  v14[0] = *byte_99B328;
  v14[1] = *&byte_99B328[16];
  v14[2] = *&byte_99B328[32];
  v14[3] = *&byte_99B328[48];
  v5 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *&v1[v4] = sub_69A56C(0, v14, 1.0, 0.0);
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkLayoutWithMetrics] = 0;
  v6 = &v1[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkSize];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_pageGrid;
  v8 = sub_7656C0();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v2[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_sizeCategory] = 7;
  v2[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring] = 0;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for RevealingVideoMirrorView(0);
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v9 setClipsToBounds:1];
  v10 = &a1[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v10 + 1) = &off_89B458;
  swift_unknownObjectWeakAssign();
  sub_247DF0(Strong);

  [v9 addSubview:*&v9[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_videoMirrorView]];
  return v9;
}

double sub_647DC0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkLayoutWithMetrics) = a1;

  return result;
}

uint64_t sub_647DD8(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkSize;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_647DF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_A8F3C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_647EC0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkLayoutWithMetrics] = a5;

  sub_5FC64(a6, v18);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_A8F3C(v18, &v8[v19]);
  swift_endAccess();
  v8[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_sizeCategory] = a7;
  if ((v8[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring] & 1) != 0 || !a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_69AB3C(a1);
    swift_unknownObjectWeakAssign();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      if (Strong)
      {
        type metadata accessor for VideoView(0);
        v23 = Strong;
        v24 = sub_76A1C0();

        if (v24)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    else if (!Strong)
    {
      goto LABEL_12;
    }

    sub_69B168();
    v23 = Strong;
LABEL_11:
  }

LABEL_12:
  v25 = &v8[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkSize];
  *v25 = a2;
  *(v25 + 1) = a3;
  v25[16] = a4 & 1;
  return [v8 setNeedsLayout];
}

void sub_6480C4()
{
  v1 = sub_763B00();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = sub_7656C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkLayoutWithMetrics])
  {
    v15 = &v0[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkSize];
    if ((v0[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkSize + 16] & 1) == 0)
    {
      v44 = v2;
      v17 = *v15;
      v16 = v15[1];
      v18 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_pageGrid;
      swift_beginAccess();
      sub_5FC64(&v0[v18], v10);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_5FCD4(v10);
        return;
      }

      (*(v12 + 32))(v14, v10, v11);
      v19 = v0[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_sizeCategory];
      if (v19 != 7)
      {

        [v0 bounds];
        v46.origin.x = 0.0;
        v46.origin.y = 0.0;
        v46.size.width = 0.0;
        v46.size.height = 0.0;
        if (CGRectEqualToRect(v45, v46))
        {
          (*(v12 + 8))(v14, v11);

          return;
        }

        v20 = v0;
        v21.n128_f64[0] = sub_2A6324(v19);
        v22 = v44;
        v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v19 != 6)
        {
          v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v19 != 4)
        {
          v23 = v24;
        }

        (*(v44 + 104))(v4, *v23, v1, v21);
        (*(v22 + 32))(v7, v4, v1);
        v25 = sub_769470();

        (*(v22 + 8))(v7, v1);
        v26 = v20[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isExpanded];
        v27 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_videoMirrorView];
        [v20 bounds];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v36 = [v20 traitCollection];
        v37 = sub_317C38(v36, v29, v31, v33, v35, v17, v16, v25, v26);
        v39 = v38;
        v41 = v40;
        v43 = v42;

        [v27 setFrame:{v37, v39, v41, v43}];
      }

      (*(v12 + 8))(v14, v11);
    }
  }
}

id sub_64853C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingVideoMirrorView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingVideoMirrorView(uint64_t a1)
{
  result = qword_95FB48;
  if (!qword_95FB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_648634(uint64_t a1)
{
  sub_2491AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_648708()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isExpanded) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_videoMirrorView;
  if (qword_93C4A0 != -1)
  {
    swift_once();
  }

  v7[4] = *&byte_99B328[64];
  v7[5] = *&byte_99B328[80];
  v7[6] = *&byte_99B328[96];
  v7[7] = *&byte_99B328[112];
  v7[0] = *byte_99B328;
  v7[1] = *&byte_99B328[16];
  v7[2] = *&byte_99B328[32];
  v7[3] = *&byte_99B328[48];
  v3 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *(v0 + v2) = sub_69A56C(0, v7, 1.0, 0.0);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkLayoutWithMetrics) = 0;
  v4 = v0 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_artworkSize;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_pageGrid;
  v6 = sub_7656C0();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_64889C()
{
  v0 = sub_BD88(&qword_940A60, &unk_7A18E0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_765610();
  __chkstk_darwin(v1 - 8);
  v2 = sub_BD88(&qword_940A68, &qword_79AB60);
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  sub_BD88(&qword_940A70, &unk_7A18F0);
  sub_765540();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_77E280;
  sub_62634();
  sub_7655D0();
  sub_7655C0();
  sub_7655D0();
  sub_765600();
  sub_7655D0();
  sub_7655D0();
  sub_765500();
  sub_7655D0();
  sub_7655C0();
  sub_7655B0();
  sub_765600();
  sub_7697A0();
  sub_7655D0();
  sub_7655D0();
  result = sub_765500();
  qword_9A0640 = v6;
  return result;
}

uint64_t sub_648C9C()
{
  v0 = sub_BD88(&qword_955818, &qword_79E1F8);
  sub_161DC(v0, qword_95FB60);
  sub_BE38(v0, qword_95FB60);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for UIRectEdge(0);
  return sub_7592C0();
}

void sub_648D40(void *a1, void *a2, char a3)
{
  v61 = a1;
  v62 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_768C60();
  v59 = *(v6 - 8);
  *&v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_94BAC0, qword_77E9E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissTapGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_transitioningViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures] = 0;
  v12 = &v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissCompleted] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_isScrollDismissActive] = 0;
  v13 = [objc_opt_self() effectWithBlurRadius:50.0];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView] = v14;
  v15 = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView] = v15;
  sub_758E80();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView] = v16;
  v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shouldUseReducedMotionTransition] = a3;
  v18 = sub_7653A0();
  *(&v66 + 1) = v18;
  v67 = sub_21E944();
  v19 = sub_B1B4(&v65);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v18);
  LOBYTE(v18) = sub_765C30();
  sub_BEB8(&v65);
  if ((v18 & 1) == 0)
  {
    [*&v3[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v64.receiver = v3;
  v64.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v64, "initWithPresentedViewController:presentingViewController:", v61, v62);
  v21 = objc_allocWithZone(UITapGestureRecognizer);
  v22 = v20;
  v23 = [v21 initWithTarget:v22 action:"dismissTapDidChange:"];
  v24 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissTapGestureRecognizer];
  *&v22[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissTapGestureRecognizer] = v23;
  v25 = v23;

  if (!v25)
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView];
  [v26 addGestureRecognizer:v25];

  v27 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView;
  [*&v22[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView] setUserInteractionEnabled:0];
  v28 = *&v22[v27];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  [v30 setBackgroundColor:v31];

  [*&v22[v27] setAlpha:0.0];
  v32 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v22 action:"edgePanDidChange:"];
  v33 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer;
  v34 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  *&v22[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = v32;
  v35 = v32;

  if (!v35)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (qword_93DFC0 != -1)
  {
    swift_once();
  }

  v36 = sub_BD88(&qword_955818, &qword_79E1F8);
  sub_BE38(v36, qword_95FB60);
  v63 = v22;
  v37 = v22;
  sub_7592B0();

  [v35 setEdges:v65];
  if (!*&v22[v33])
  {
    goto LABEL_13;
  }

  v38 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView;
  [*&v37[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView] addGestureRecognizer:?];
  v39 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView;
  v40 = qword_93C528;
  v41 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_765080();
  v43 = sub_BE38(v42, qword_99B4D8);
  v44 = *(v42 - 8);
  (*(v44 + 16))(v11, v43, v42);
  (*(v44 + 56))(v11, 0, 1, v42);
  sub_758E60();

  v45 = [*&v37[v39] layer];
  [v45 setMaskedCorners:3];

  [*&v37[v39] _setContinuousCornerRadius:20.0];
  [*&v37[v39] setAutoresizingMask:18];
  v46 = *&v37[v39];
  sub_758E40();

  [*&v37[v38] setClipsToBounds:0];
  v47 = *&v37[v38];
  v48 = *&v37[v39];
  [v47 bounds];
  [v48 setFrame:?];

  [*&v37[v38] addSubview:*&v37[v39]];
  v49 = *&v37[v38];
  v65 = 0u;
  v66 = 0u;
  v50 = v49;
  sub_768C20();
  sub_10A2C(&v65, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  (*(v59 + 8))(v8, v60);
  sub_BD88(&qword_9477F0, qword_780200);
  v51 = swift_allocObject();
  v60 = xmmword_77B6D0;
  *(v51 + 16) = xmmword_77B6D0;
  *(v51 + 32) = sub_7676E0();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = ObjectType;
  v54 = v37;
  sub_769C30();
  swift_unknownObjectRelease();

  v55 = swift_allocObject();
  *(v55 + 16) = v60;
  *(v55 + 32) = sub_767890();
  *(v55 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = ObjectType;
  sub_769C30();

  swift_unknownObjectRelease();
}

void sub_649604(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong traitCollection];
    v7 = [v6 layoutDirection];

    if (v7 == [a2 layoutDirection])
    {
    }

    else
    {
      v8 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v8)
      {
        v9 = qword_93DFC0;
        v10 = v8;
        if (v9 != -1)
        {
          swift_once();
        }

        v11 = sub_BD88(&qword_955818, &qword_79E1F8);
        sub_BE38(v11, qword_95FB60);
        v12 = v5;
        sub_7592B0();

        [v10 setEdges:v13];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_649760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_64C528();
  }
}

void sub_6497B4(char a1)
{
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures] == (a1 & 1))
  {
    return;
  }

  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissTapGestureRecognizer];
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures])
  {
    if (v2)
    {
      [v2 setEnabled:0];
      v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v3)
      {
        [v3 setEnabled:0];
        v4 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal];
        swift_beginAccess();
        if (*(v4 + 24))
        {
          sub_134D8(v4, &v11);
          v5 = *(&v12 + 1);
          v6 = v13;
          sub_B170(&v11, *(&v12 + 1));
          (*(v6 + 32))(v5, v6);
          sub_BEB8(&v11);
        }

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        swift_beginAccess();
        sub_48D354(&v11, v4);
        swift_endAccess();
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v2)
  {
    goto LABEL_15;
  }

  [v2 setEnabled:1];
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = v7;
  v8 = [v1 traitCollection];
  v9 = [v8 horizontalSizeClass];

  [v10 setEnabled:v9 != &dword_0 + 2];
}

void sub_6499F4()
{
  v1 = sub_7656A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = sub_7656C0();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 containerView];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v37 = v9;
  v15 = [v0 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 != &dword_0 + 2)
  {
    [v14 bounds];

    return;
  }

  v36 = v8;
  (*(v2 + 104))(v7, enum case for PageGrid.Direction.vertical(_:), v1);
  v17 = [v0 presentingViewController];
  v18 = [v17 view];

  if (!v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v18 bounds];
  v20 = v19;
  v22 = v21;

  v23 = [v0 presentingViewController];
  v24 = [v23 view];

  if (!v24)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v24 safeAreaInsets];

  (*(v2 + 16))(v4, v7, v1);
  v25 = v36;
  if (qword_93C248 != -1)
  {
    swift_once();
  }

  sub_765670();
  (*(v2 + 8))(v7, v1);
  v26 = [v0 presentingViewController];
  v27 = [v26 traitCollection];

  sub_765580();
  v29 = v28;
  LOBYTE(v26) = sub_7699E0();

  if (v26)
  {
    if (v29 + -160.0 <= 672.0)
    {
      v29 = v29 + -160.0;
    }

    else
    {
      v29 = 672.0;
    }

    if (v29 < 533.0)
    {
      v29 = 533.0;
    }
  }

  [v14 bounds];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v34 = CGRectGetMidX(v38) + v29 * -0.5;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  CGRectGetMinY(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  CGRectGetHeight(v40);

  sub_64C728(v34);
  (*(v37 + 8))(v12, v25);
}

double *sub_649F08()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = sub_AACD0();
      swift_unknownObjectRelease();

      return v2;
    }

    swift_unknownObjectRelease();
  }

  return _swiftEmptyArrayStorage;
}

void sub_649F8C(void *a1, void *a2)
{
  v3 = v2;
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v6 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (v6)
  {
    v7 = v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_disableDismissGestures];
    v8 = v6;
    v9 = (v7 & 1) == 0 && [a1 horizontalSizeClass] != &dword_0 + 2;
    [v8 setEnabled:v9];

    v10 = [v3 containerView];
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      v12[2] = v3;
      v12[3] = a1;
      v12[4] = v11;
      v17[4] = sub_64C7F0;
      v17[5] = v12;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_6C6800;
      v17[3] = &unk_89B670;
      v13 = _Block_copy(v17);
      v14 = v3;
      v15 = a1;
      v16 = v11;

      [a2 animateAlongsideTransition:v13 completion:0];
      _Block_release(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_64A130(int a1, char *a2, void *a3, void *a4)
{
  v7 = [a2 presentedViewController];
  v18 = [v7 view];

  if ([a3 horizontalSizeClass] == &dword_0 + 2)
  {
    if (v18)
    {
      v8 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView];
      v9 = v18;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v18)
  {
    [v18 _setContinuousCornerRadius:0.0];
  }

  [a4 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*&a2[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView] setFrame:?];
  [*&a2[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView] setFrame:{v11, v13, v15, v17}];
}

void sub_64A31C(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView] + OBJC_IVAR____TtC18ASMessagesProvider35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_64C784;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_6C6800;
  v10[3] = &unk_89B620;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_64A4D0()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v10 = v1;
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView] setFrame:{v3, v5, v7, v9}];
    sub_6499F4();
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView] setFrame:?];
  }
}

void sub_64A618()
{
  v1 = v0;
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView];
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView];
    [v13 setFrame:{v5, v7, v9, v11}];
    [v3 addSubview:v13];
    [v3 addSubview:v12];
    v14 = [v1 presentedViewController];
    v15 = [v14 view];

    if (v15)
    {
      v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView];
      [v16 bounds];
      [v15 setFrame:?];
      [v15 setAutoresizingMask:18];
      [v16 addSubview:v15];
    }

    v17 = v13;
    v18 = v12;
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v20)
    {
      v21 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_transitioningViewProvider];
      Strong = swift_unknownObjectWeakLoadStrong();
      v23 = *(v21 + 1);
      v24 = [v1 traitCollection];
      v25 = v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shouldUseReducedMotionTransition];
      type metadata accessor for TodayTransitionCompanionAnimations();
      v26 = swift_allocObject();
      *(v26 + 88) = 0;
      swift_unknownObjectWeakInit();
      *(v26 + 104) = 0;
      *(v26 + 112) = 0;
      *(v26 + 32) = v17;
      *(v26 + 40) = v18;
      *(v26 + 56) = v20;
      if (Strong)
      {
        v27 = swift_unknownObjectWeakLoadStrong();
        if (v27)
        {
          v28 = v27;
          swift_unknownObjectRetain();
          v29 = sub_AACD0();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = _swiftEmptyArrayStorage;
        }

        *(v26 + 64) = v29;
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          v32 = v31;
          v33 = [v31 collectionView];
        }

        else
        {
          v33 = 0;
        }

        *(v26 + 48) = v33;
        swift_unknownObjectRetain();
        v34 = sub_28C7FC();
        swift_unknownObjectRelease();
        *(v26 + 16) = v34;
        swift_unknownObjectRetain();
        v30 = sub_28C880();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        *(v26 + 64) = _swiftEmptyArrayStorage;
        *(v26 + 48) = 0;
        *(v26 + 16) = 0;
      }

      *(v26 + 24) = v30;
      *(v26 + 88) = v23;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      *(v26 + 96) = v24;
      *(v26 + 72) = v25;
      v35 = objc_opt_self();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_64C6DC;
      *(v36 + 24) = v26;
      v46 = sub_47164;
      v47 = v36;
      v42 = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_1EB578;
      v45 = &unk_89B580;
      v37 = _Block_copy(&v42);

      [v35 performWithoutAnimation:v37];
      _Block_release(v37);
      LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

      if ((v35 & 1) == 0)
      {
        v38 = [v1 presentedViewController];
        v39 = [v38 transitionCoordinator];

        if (v39)
        {
          v46 = sub_64C6F4;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_6C6800;
          v45 = &unk_89B5A8;
          v40 = _Block_copy(&v42);

          v46 = sub_64C6F8;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_6C6800;
          v45 = &unk_89B5D0;
          v41 = _Block_copy(&v42);

          [v39 animateAlongsideTransition:v40 completion:v41];

          _Block_release(v41);
          _Block_release(v40);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_64AC28(char a1)
{
  if (a1)
  {
    v2 = [v1 presentedViewController];
    v3 = [v2 isViewLoaded];

    if (!v3)
    {
      return;
    }

    v4 = [v1 presentedViewController];
    v7 = [v4 contentScrollView];

    sub_64C608(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
    swift_unknownObjectWeakAssign();
    sub_64C608(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView] removeFromSuperview];
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView] removeFromSuperview];
    v5 = [v1 presentedViewController];
    v7 = [v5 view];

    if (!v7)
    {
      return;
    }

    [v7 setClipsToBounds:0];
    v6 = [v7 layer];
    [v6 setMaskedCorners:15];

    [v7 _setContinuousCornerRadius:0.0];
  }
}

void sub_64AE40()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayBlurView];
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_overlayTintView];
  v4 = v2;
  v5 = [v1 presentedViewController];
  v6 = [v5 view];

  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_transitioningViewProvider];
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 1);
  v10 = [v1 traitCollection];
  v11 = v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shouldUseReducedMotionTransition];
  type metadata accessor for TodayTransitionCompanionAnimations();
  v12 = swift_allocObject();
  *(v12 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 32) = v3;
  *(v12 + 40) = v4;
  *(v12 + 56) = v6;
  if (Strong)
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = sub_AACD0();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    *(v12 + 64) = v15;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = [v17 collectionView];
    }

    else
    {
      v19 = 0;
    }

    *(v12 + 48) = v19;
    swift_unknownObjectRetain();
    v20 = sub_28C7FC();
    swift_unknownObjectRelease();
    *(v12 + 16) = v20;
    swift_unknownObjectRetain();
    v16 = sub_28C880();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    *(v12 + 64) = _swiftEmptyArrayStorage;
    *(v12 + 48) = 0;
    *(v12 + 16) = 0;
  }

  *(v12 + 24) = v16;
  *(v12 + 88) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v12 + 96) = v10;
  *(v12 + 72) = v11;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_64C490;
  *(v22 + 24) = v12;
  v34 = sub_2EC28;
  v35 = v22;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1EB578;
  v33 = &unk_89B4B8;
  v23 = _Block_copy(&v30);

  [v21 performWithoutAnimation:v23];
  _Block_release(v23);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v24 = [v1 presentedViewController];
  v25 = [v24 transitionCoordinator];

  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v12;
    *(v26 + 24) = v1;
    v34 = sub_64C4F0;
    v35 = v26;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_6C6800;
    v33 = &unk_89B508;
    v27 = _Block_copy(&v30);

    v28 = v1;

    v34 = sub_64C4F8;
    v35 = v12;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_6C6800;
    v33 = &unk_89B530;
    v29 = _Block_copy(&v30);

    [v25 animateAlongsideTransition:v27 completion:v29];

    _Block_release(v29);
    _Block_release(v27);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_64B300(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 presentedViewController];
  [v3 setNeedsStatusBarAppearanceUpdate];
}

double sub_64B36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a1);
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_76A770();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v9 = *(v7 + 48);
      if (v9)
      {
        v10 = *(v7 + 56);

        v9(v11);

        sub_F704(v9, v10);
      }

      else
      {
      }

      ++v6;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return result;
}

void sub_64B5F8(void *a1)
{
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_presentedContainerView] frame];
  v3 = CGRectGetWidth(v30) * 0.28;
  [a1 translationInView:0];
  v5 = fabs(v4);
  if (v5 >= v3)
  {
    v5 = v3;
  }

  v6 = v5 / v3;
  v7 = [a1 state];
  if (v7 > 2)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 != &dword_0 + 3)
      {
        return;
      }

      if (v6 == 1.0)
      {
LABEL_16:
        v11 = [v1 presentedViewController];
        [v11 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }

    goto LABEL_10;
  }

  if (!v7)
  {
LABEL_10:
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_dismissCompleted])
    {
      return;
    }

    v8 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal];
    swift_beginAccess();
    if (*(v8 + 24))
    {
      sub_134D8(v8, &v27);
      v9 = *(&v28 + 1);
      v10 = v29;
      sub_B170(&v27, *(&v28 + 1));
      (v10[4])(v9, v10);
      sub_BEB8(&v27);
    }

    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    swift_beginAccess();
    sub_48D354(&v27, v8);
    goto LABEL_21;
  }

  if (v7 == &dword_0 + 1)
  {
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_77B6C0;
    v13 = [v1 presentedViewController];
    v14 = [v13 view];

    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_shadowView];
    *(v12 + 32) = v14;
    *(v12 + 40) = v15;
    v16 = v15;
    v17 = v1;
    v18 = sub_649F08();
    if (v18 >> 62)
    {
      sub_2630C();
      v19 = sub_76A850();
    }

    else
    {

      sub_76A960();
      sub_2630C();
      v19 = v18;
    }

    v20 = v17;
    v21 = [v17 traitCollection];
    *(&v28 + 1) = &type metadata for ScaleDownInteractiveDismissal;
    v29 = &off_894678;
    v22 = swift_allocObject();
    *&v27 = v22;
    *(v22 + 16) = v12;
    *(v22 + 24) = v19;
    *(v22 + 32) = v21;
    *(v22 + 40) = 1;
    *(v22 + 48) = 0x3FEA3D70A3D70A3DLL;
    v23 = OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal;
    swift_beginAccess();
    sub_48D354(&v27, v20 + v23);
LABEL_21:
    swift_endAccess();
    return;
  }

  if (v7 == &dword_0 + 2)
  {
    if (v6 == 1.0)
    {
      goto LABEL_16;
    }

    v24 = &v1[OBJC_IVAR____TtC18ASMessagesProvider33ArticlePagePresentationController_interactiveDismissal];
    swift_beginAccess();
    if (*(v24 + 24))
    {
      sub_134D8(v24, &v27);
      v25 = *(&v28 + 1);
      v26 = v29;
      sub_B170(&v27, *(&v28 + 1));
      (v26[2])(v25, v26, v6);
      sub_BEB8(&v27);
    }
  }
}