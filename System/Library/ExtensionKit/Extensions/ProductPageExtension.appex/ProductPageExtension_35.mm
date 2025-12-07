uint64_t sub_1003EFE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_10000A570(a1, v28);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    sub_10076FCFC();
    sub_10076F87C();
    v26(v21, v19, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

double sub_1003F00A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v20 = a3;
  v21 = a4;
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_10000A570(a1, v25);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100760F3C();
  if (swift_dynamicCast())
  {
    v26 = v24;
    (*(v10 + 16))(v12, a2, v9);
    sub_10076FCFC();
    sub_10076F87C();
    v18 = sub_100409428(&unk_1009467B0, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_1007913D8);
    (*(v18 + 56))(&v26, v16, v20, v21, v22, v23, ObjectType, v18);
    (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_1003F0304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v51 = a2;
  v52 = a6;
  v54 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&unk_10094C040, &qword_1007890D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v49 - v16);
  v18 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  v57 = *(v18 - 8);
  v58 = v18;
  __chkstk_darwin(v18);
  v53 = &v49 - v19;
  v20 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v49 - v22;
  v24 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v55 = *(v24 - 8);
  v56 = v24;
  __chkstk_darwin(v24);
  v26 = &v49 - v25;
  sub_10000A570(a1, v62);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076115C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v21 + 16))(v23, v51, v20);
    sub_10076FCFC();
    sub_10076F87C();
    v28 = [v52 snapshotPageTraitEnvironment];
    *&v7[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits] = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v7 setNeedsLayout];
    swift_unknownObjectRelease();
    sub_10076114C();
    v29 = sub_100761DCC();

    v50 = v26;
    if (v29)
    {
      if (qword_1009413D0 != -1)
      {
        swift_once();
      }

      v30 = sub_10000A61C(v12, qword_1009A27F8);
      sub_1000A9194(v30, v17, v31);
      v32 = *v17;
      v33 = v29;

      *v17 = v29;
      sub_1000A9194(v17, v14, v34);
      sub_10000A5D4(&unk_100943120, &unk_100784C10);
      v35 = v53;
      sub_10075FE0C();

      sub_1000A91F8(v17, v36);
    }

    else
    {
      if (qword_1009413D0 != -1)
      {
        swift_once();
      }

      v37 = sub_10000A61C(v12, qword_1009A27F8);
      sub_1000A9194(v37, v17, v38);
      sub_10000A5D4(&unk_100943120, &unk_100784C10);
      v35 = v53;
      sub_10075FE0C();
    }

    v39 = v58;
    v40 = sub_10076114C();
    v41 = v57;
    (*(v57 + 16))(v11, v35, v39);
    v42.n128_f64[0] = (*(v41 + 56))(v11, 0, 1, v39);
    sub_1006098B0(v42, v40, v11, v54);

    sub_10000CFBC(v11, &unk_10094C040, &qword_1007890D0);
    v43 = sub_10076113C();
    if (!v43)
    {
      v43 = [objc_opt_self() clearColor];
    }

    v44 = v43;
    v45 = ObjectType;
    v61.receiver = v7;
    v61.super_class = ObjectType;
    objc_msgSendSuper2(&v61, "setBackgroundColor:", v43);
    v46 = *&v7[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView];
    v60.receiver = v7;
    v60.super_class = v45;
    v47 = v46;
    v48 = objc_msgSendSuper2(&v60, "backgroundColor");
    sub_10075FB8C();

    [v7 setNeedsLayout];

    (*(v41 + 8))(v35, v39);
    return (*(v55 + 8))(v50, v56);
  }

  return result;
}

uint64_t sub_1003F0918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v54 = a6;
  v65 = a3;
  v53 = a2;
  v7 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v7 - 8);
  v62 = &v51 - v8;
  v60 = sub_100768FEC();
  v56 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - v10;
  v11 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  v14 = sub_10076A3AC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v18 - 8);
  v20 = &v51 - v19;
  v21 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v51 - v23;
  v25 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v63 = *(v25 - 8);
  v64 = v25;
  __chkstk_darwin(v25);
  v27 = &v51 - v26;
  sub_10000A570(a1, v67);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076161C();
  result = swift_dynamicCast();
  if (result)
  {
    v51 = v13;
    v29 = v66;
    (*(v22 + 16))(v24, v53, v21);
    sub_10076FCFC();
    sub_10076F87C();
    v30 = v55;
    v31 = [v55 contentView];
    [v54 pageMarginInsets];
    [v31 setLayoutMargins:?];

    v54 = v29;
    v32 = sub_1007615BC();
    v33 = v30;
    v52 = v27;
    if (v32)
    {
      if (v32 >> 62)
      {
        v37 = v32;
        v38 = sub_10077158C();
        v32 = v37;
        if (v38)
        {
          goto LABEL_5;
        }
      }

      else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v34 = v32;
        sub_100760C4C();
        sub_10076F64C();
        sub_10076FC1C();
        v35 = v67[0];
        v36 = *&v33[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView];
        [v36 setHidden:0];
        *&v36[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_impressionableArtworks] = v34;

        *&v36[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkLoader] = v35;

        sub_1003BF4A0(v34, v35);

LABEL_9:
        v55 = *&v33[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerButton];
        v39 = sub_1007615FC();
        v40 = sub_1007615DC();
        v41 = sub_1007615CC();
        (*(v15 + 104))(v17, enum case for OfferButtonPresenterViewAlignment.center(_:), v14);
        (*(v15 + 56))(v51, 1, 1, v14);
        sub_100409428(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
        sub_10076759C();
        v42 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
        (*(*(v42 - 8) + 56))(v20, 0, 1, v42);
        v43 = v56;
        v44 = v60;
        (*(v56 + 104))(v57, enum case for OfferButtonSubtitlePosition.above(_:), v60);
        (*(v43 + 56))(v62, 1, 1, v44);
        sub_100409428(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
        v45 = v58;
        sub_10076759C();
        sub_1001F12C8(v39, v40, v41, v20, v45, v65, 0, 0);

        (*(v59 + 8))(v45, v61);
        sub_10000CFBC(v20, &unk_100946760, &unk_100787A20);
        sub_100767E8C();
        sub_10076F64C();
        sub_10076FC1C();
        v46 = v67[0];
        sub_1007615EC();
        sub_10076160C();
        v47 = sub_100767DCC();
        swift_allocObject();
        v48 = v46;
        v49 = sub_100767DAC();
        sub_100409428(&unk_100946770, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_1007942D8);
        swift_unknownObjectRetain();
        sub_100767DBC();
        v67[3] = v47;
        v67[0] = v49;
        v50 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
        swift_beginAccess();

        sub_10003837C(v67, &v33[v50], &unk_1009434C0, &qword_100783F60);
        swift_endAccess();
        [v33 setNeedsLayout];

        return (*(v63 + 8))(v52, v64);
      }
    }

    [*&v30[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1003F12C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - v14;
  v16 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v40 = *(v16 - 8);
  v41 = v16;
  __chkstk_darwin(v16);
  v18 = v39 - v17;
  sub_10000A570(a1, v43);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10075E67C();
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v42;
    (*(v13 + 16))(v15, a2, v12);
    sub_10076FCFC();
    sub_10076F87C();
    v21 = v39[1];
    sub_100078490(v20, a3, a4, a5, a6);
    sub_10075E66C();
    v22 = sub_10076BB6C();
    v24 = v23;

    if (v24)
    {
      v44._countAndFlagsBits = 0x465F4E4F5F444441;
      v44._object = 0xEE005050415F524FLL;
      v45._object = 0x80000001007D1F20;
      v45._countAndFlagsBits = 0xD000000000000031;
      sub_1007622EC(v44, v45);
      sub_10000A5D4(&qword_100966CF0, qword_100795350);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100783DD0;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_1000A9040();
      *(v25 + 32) = v22;
      *(v25 + 40) = v24;

      sub_10076FFCC();

      v26 = objc_allocWithZone(NSMutableAttributedString);
      v27 = sub_10076FF6C();
      v28 = [v26 initWithString:v27];

      v29 = objc_allocWithZone(NSString);
      v30 = sub_10076FF6C();

      v31 = [v29 initWithString:v30];

      v32 = sub_10076FF6C();

      v33 = [v31 rangeOfString:v32 options:4];
      v35 = v34;

      v36 = [v21 tintColor];
      v43[0] = v36;
      sub_10000A5D4(&qword_100946798, &qword_1007890C0);
      v37 = sub_10077119C();

      [v28 addAttribute:NSForegroundColorAttributeName value:v37 range:{v33, v35}];
      swift_unknownObjectRelease();
      v38 = *(*&v21[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel);
      if (!v38)
      {

        return (*(v40 + 8))(v18, v41);
      }

      [v38 setAttributedText:v28];
    }

    return (*(v40 + 8))(v18, v41);
  }

  return result;
}

uint64_t sub_1003F1764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_10000A570(a1, v28);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    sub_10076FCFC();
    sub_10076F87C();
    v26(v21, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_1003F1984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a6;
  v35 = a4;
  v36 = a5;
  v33 = a2;
  v34 = a3;
  v38 = a1;
  v10 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v28[1] = swift_getAssociatedTypeWitness();
  v13 = sub_10076F86C();
  v29 = *(v13 - 8);
  v30 = v13;
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1007711AC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v28 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  sub_10000A570(v38, v39);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  v25 = swift_dynamicCast();
  v26 = *(v21 + 56);
  if (v25)
  {
    v26(v20, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v24, v20, AssociatedTypeWitness);
    (*(v31 + 16))(v12, v33, v32);
    sub_10076F87C();
    (*(a8 + 56))(v24, v15, v34, v35, v36, v37, a7, a8);
    (*(v29 + 8))(v15, v30);
    return (*(v21 + 8))(v24, AssociatedTypeWitness);
  }

  else
  {
    v26(v20, 1, 1, AssociatedTypeWitness);
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_1003F1D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1003F1DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v23 = a2;
  v20 = a1;
  v22 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v19 - v8;
  swift_getAssociatedTypeWitness();
  v21 = sub_10076F86C();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v19 - v15;
  sub_10000A570(v20, v25);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  swift_dynamicCast();
  (*(v7 + 16))(v9, v23, v22);
  sub_10076F87C();
  v17 = (*(a5 + 64))(v16, v12, v24, a4, a5);
  (*(v10 + 8))(v12, v21);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  return v17;
}

double sub_1003F209C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F2150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F21EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F2280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F2334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F23D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F244C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F2500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F259C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F2670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F2724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F27C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F283C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8)
{
  v13 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22[-v15];
  v17 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v22[-v19];
  sub_10000A570(a1, v22);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10075F26C();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a4, v13);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_10044328C(v23, a7, a2, a8);
  (*(v18 + 8))(v20, v17);

  return a2;
}

uint64_t sub_1003F2AA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_10076FCFC();
  sub_10076F87C();
  (*(v8 + 8))(v11, v7);
  return 0;
}

double sub_1003F2C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F2D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F2DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F2E34(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_10000A570(a1, v23);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100761D1C();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_10076FCFC();
  sub_10076FDBC();
  v21 = sub_1001A87E4(a2, a3, v24, a8);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_1003F30D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v13 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_10000A570(a1, v23);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076C0CC();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a3, v13);
  sub_10076FCFC();
  sub_10076FDBC();
  v21 = sub_1005B6C20(v24, a6, 1, a7, a8);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_1003F3344(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25[-v15];
  v17 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v25[-v19];
  sub_10000A570(a1, v25);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10075F29C();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_10076FCFC();
  sub_10076FDBC();
  v21 = v26;
  ObjectType = swift_getObjectType();
  v23 = sub_1002EFEE4(v21, a8, ObjectType, a2, a3);
  (*(v18 + 8))(v20, v17);

  return v23;
}

double sub_1003F35B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F3664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F3700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F3830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F38CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F3948(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26[-v16];
  v18 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v26[-v20];
  sub_10000A570(a1, v26);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10075F29C();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a5, v14);
  sub_10076FCFC();
  sub_10076FDBC();
  v22 = v27;
  ObjectType = swift_getObjectType();
  v24 = sub_10034537C(v22, a8, v8, ObjectType, a2, a3);
  (*(v19 + 8))(v21, v18);

  return v24;
}

uint64_t sub_1003F3C60(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-v5];
  v7 = sub_10000A5D4(&unk_1009566B0, &qword_1007A1D60);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13[-v10];
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_10076F87C();
  sub_100111DA4();
  sub_10076F83C();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_1003F3E1C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, a4, v6, v12);
  sub_10076FCFC();
  sub_10076FDBC();
  if (qword_100940348 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D39C();
  sub_10000A61C(v15, qword_10099F728);
  sub_10076D36C();
  (*(v11 + 8))(v14, v10);
  return a1;
}

void sub_1003F40AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v9 = __chkstk_darwin(v8 - 8);
  (*(v5 + 16))(v7, a3, v4, v9);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_10077156C();
  __break(1u);
}

double sub_1003F421C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v23 - v16;
  (*(v10 + 16))(v12, a5, v9, v15);
  sub_10076FCFC();
  sub_10076FDBC();
  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v18 = sub_1007640EC();
  sub_10000A61C(v18, qword_10099F660);
  sub_10076410C();
  sub_100409428(&unk_1009566D0, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  sub_10076DBDC();
  if (qword_100940338 != -1)
  {
    swift_once();
  }

  v19 = sub_10076E21C();
  sub_10000A61C(v19, qword_10099F678);
  sub_100770AFC();
  v21 = v20;
  (*(v14 + 8))(v17, v13);
  return v21;
}

double sub_1003F4528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F45DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F4678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F46F4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v25 - v19;
  (*(v13 + 16))(v15, a5, v12, v18);
  sub_10076FCFC();
  sub_10076FDBC();
  if (qword_10093F650 != -1)
  {
    swift_once();
  }

  ObjectType = swift_getObjectType();
  v22 = type metadata accessor for VideoCardView(0);
  v23 = sub_1000C31A8(a1, a2, &qword_10099CD08, a8, v22, ObjectType);
  (*(v17 + 8))(v20, v16);
  return v23;
}

double sub_1003F4908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F49BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F4A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F4AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v31 = a6;
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v11 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = sub_10000A5D4(&qword_100956718, &qword_1007A1D68);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  v19 = sub_10075F51C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v32);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  swift_dynamicCast();
  (*(v12 + 16))(v14, v27, v11);
  sub_10076FDBC();
  v23 = sub_100409428(&qword_100956720, type metadata accessor for AnnotationCollectionViewCell, &unk_1007A7A68);
  v24 = (*(v23 + 48))(v22, v28, v18, v29, v30, v31, a7, a8);
  (*(v16 + 8))(v18, v15);
  (*(v20 + 8))(v22, v19);
  return v24;
}

double sub_1003F4DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F4EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F4F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F4FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F5074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F5110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F51EC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v20 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_100322D48(a7);
  (*(v15 + 8))(v18, v14);
  return a1;
}

double sub_1003F53AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F5460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F54FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F5578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a3, v9, v15);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_1005C57C4(a2, a6);
  v19 = v18;
  (*(v14 + 8))(v17, v13);
  return v19;
}

double sub_1003F5788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F583C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F58D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F59A4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_10000A570(a1, v23);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076092C();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_10076FCFC();
  sub_10076FDBC();
  v21 = sub_100597094(v24, 0, 0, a8, 0.0, 0.0, a2, a3, a2);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_1003F5BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F5C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F5D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F5DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F5E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F5EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F5FA4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[0] = a11;
  v17 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v29 - v19;
  v21 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v29 - v23;
  sub_10000A570(a1, v30);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10075F1FC();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a5, v17);
  sub_10076FCFC();
  sub_10076FDBC();
  v25 = v31;
  ObjectType = swift_getObjectType();
  v27 = (v29[0])(v25, a8, a6, v29[1], ObjectType, a2, a3);
  (*(v22 + 8))(v24, v21);

  return v27;
}

double sub_1003F6214(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v22 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  sub_10076FCFC();
  sub_10076FDBC();
  v19 = [a7 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v20 = sub_100582810(v19, a1);
  swift_unknownObjectRelease();
  (*(v15 + 8))(v18, v14);
  return v20;
}

double sub_1003F646C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a5, v9, v15);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_10076CB3C();
  sub_10076CB0C();
  v19 = v18;
  (*(v14 + 8))(v17, v13);
  return v19;
}

uint64_t sub_1003F6638(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_10076FCFC();
  sub_10076F87C();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_1003F67C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F6878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F6914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F6990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003EE1EC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003F6A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1984(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003F6AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1003F1DB8(a1, a2, a3, a4, WitnessTable);
}

double sub_1003F6B5C(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v10 - 8);
  v62 = &v59 - v11;
  v61 = sub_10077164C();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D39C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  v21 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v64 = *(v21 - 8);
  v65 = v21;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  sub_10000A570(a1, aBlock);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100760E0C();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  sub_10076FCFC();
  v63 = v23;
  sub_10076FDBC();
  if ((sub_10075FF4C() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  v24 = a6;
  v25 = sub_100760DFC();
  v26 = v66;
  if (v25)
  {
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D36C();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v16, v13);
    sub_10075FF4C();
    if ((sub_10075FF4C() & 1) != 0 || v28 <= a4)
    {
    }

    else
    {
      sub_10076BEFC();
      sub_10076D3AC();
      sub_10076D35C();
      v29(v16, v13);
    }
  }

  v30 = sub_10075FF6C();
  v31 = [v30 length];

  if (v31 >= 1)
  {
    sub_10075FF7C();
    if (v32)
    {
      if (qword_100940F68 != -1)
      {
        swift_once();
      }

      v33 = sub_10076D3DC();
      sub_10000A61C(v33, qword_1009A1C30);
      v34 = sub_10076C04C();
      v68 = v34;
      v69 = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v35 = sub_10000DB7C(aBlock);
      (*(*(v34 - 8) + 104))(v35, enum case for Feature.measurement_with_labelplaceholder(_:), v34);
      sub_10076C90C();
      sub_10000CD74(aBlock);
      sub_10076991C();

      if (qword_10093F990 != -1)
      {
        swift_once();
      }

      v36 = sub_10076D9AC();
      sub_10000A61C(v36, qword_10099D738);
      sub_10076D17C();
      sub_10076D40C();
      v37 = *(v60 + 8);
      v38 = v61;
      v37(v26, v61);
      if (qword_10093F9A0 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v36, qword_10099D768);
      sub_10076D17C();
      sub_10076D40C();
      v37(v26, v38);
      if (qword_10093F998 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v36, qword_10099D750);
      sub_10076D17C();
      sub_10076D40C();
      v37(v26, v38);
    }

    v39 = sub_10075FF6C();
    v40 = [v24 traitCollection];
    v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v39];
    v42 = [v39 length];
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = v40;
    *(v43 + 32) = v41;
    *(v43 + 40) = 1;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_100027A88;
    *(v44 + 24) = v43;
    v69 = sub_1003BE1CC;
    v70 = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    v68 = &unk_1008944C0;
    v45 = _Block_copy(aBlock);
    v46 = v40;
    v47 = v41;

    [v39 enumerateAttributesInRange:0 options:v42 usingBlock:{0x100000, v45}];

    _Block_release(v45);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }

    else
    {
      v48 = qword_100940F60;
      v39 = v47;
      if (v48 == -1)
      {
LABEL_21:
        v49 = sub_10076D3DC();
        v50 = sub_10000A61C(v49, qword_1009A1C18);
        v51 = *(v49 - 8);
        v52 = v62;
        (*(v51 + 16))(v62, v50, v49);
        (*(v51 + 56))(v52, 0, 1, v49);
        v53 = sub_10076C04C();
        v68 = v53;
        v69 = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v54 = sub_10000DB7C(aBlock);
        (*(*(v53 - 8) + 104))(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
        sub_10076C90C();
        sub_10000CD74(aBlock);
        sub_10076990C();

        sub_10000CFBC(v52, &unk_100943250, &unk_1007841D0);
        if (qword_10093F990 != -1)
        {
          swift_once();
        }

        v55 = sub_10076D9AC();
        sub_10000A61C(v55, qword_10099D738);
        sub_10076D42C();
        if (qword_10093F998 != -1)
        {
          swift_once();
        }

        sub_10000A61C(v55, qword_10099D750);
        sub_10076D3FC();

        goto LABEL_26;
      }
    }

    swift_once();
    goto LABEL_21;
  }

LABEL_26:
  sub_100770ABC();
  v57 = v56;
  (*(v64 + 8))(v63, v65);

  return v57;
}

double sub_1003F774C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-v11];
  v13 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22[-v15];
  sub_10000A570(a1, v22);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10075F29C();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_10076FCFC();
  sub_10076FDBC();
  v17 = v23;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = sub_1002EFEE4(v17, a5, ObjectType, v19, a3);
  (*(v14 + 8))(v16, v13);

  return v20;
}

double sub_1003F7978(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v24 = a5;
  v25 = sub_1007617CC();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_10000A570(a1, v26);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_1007617FC();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_10076FCFC();
  sub_10076FDBC();
  if (sub_10076178C())
  {
    v19 = v24;
  }

  else
  {
    v19 = v24;
    [v24 pageMarginInsets];
    a3 = a3 - v20 - v21;
  }

  sub_1007617EC();
  v22 = [v19 traitCollection];
  sub_1007617AC();

  (*(v8 + 8))(v10, v25);
  (*(v16 + 8))(v18, v15);

  return a3;
}

double sub_1003F7C74(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v90 = a6;
  v87 = sub_10076997C();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v73 - v10;
  __chkstk_darwin(v11);
  v80 = &v73 - v12;
  v78 = sub_10076545C();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10076761C();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007675FC();
  v96 = *(v15 - 8);
  __chkstk_darwin(v15);
  v91 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v73 - v18;
  v19 = sub_10076C96C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v76 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  v25 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v73 - v27;
  v94 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v30 = &v73 - v29;
  sub_10000A570(a1, v103);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100763D9C();
  swift_dynamicCast();
  (*(v26 + 16))(v28, a2, v25);
  sub_10076FCFC();
  v92 = v30;
  sub_10076FDBC();
  v31 = v103[5];
  v32 = sub_100763D5C();
  if (*(v32 + 16))
  {
    v33 = v20;
    v34 = v90;
    v75 = v33;
    v35 = *(v33 + 16);
    v36 = v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v88 = v24;
    v89 = v19;
    v35(v24, v36, v19);

    if (qword_10093FAC8 != -1)
    {
      swift_once();
    }

    v37 = sub_10000A61C(v15, qword_10099D948);
    v38 = *(v96 + 16);
    v39 = v95;
    v38(v95, v37, v15);
    v40 = [v34 traitCollection];
    v41 = sub_10077071C();

    if (v41)
    {
      v73 = v15;
      v38(v91, v39, v15);
      v35(v76, v88, v89);
      v42 = v31;
      sub_100763D7C();
      v43 = [v34 traitCollection];
      v44 = sub_1007706EC();

      v45 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v44 & 1) == 0)
      {
        v45 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v77 + 104))(v79, *v45, v78);
      v46 = sub_10076546C();
      v47 = objc_allocWithZone(v46);
      v48 = sub_10076544C();
      v103[3] = v46;
      v103[4] = &protocol witness table for UIView;
      v103[0] = v48;
      v49 = sub_100763D8C();
      v104._object = 0x80000001007D1EE0;
      v104._countAndFlagsBits = 0xD000000000000032;
      v105._countAndFlagsBits = 0;
      v105._object = 0xE000000000000000;
      sub_100767D6C(v104, v49, v105);
      v50 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
      if (qword_100940D80 != -1)
      {
        swift_once();
      }

      v79 = sub_10076D3DC();
      sub_10000A61C(v79, qword_1009A1678);
      v78 = v50;
      sub_100770B2C();
      v51 = sub_10076C04C();
      v102[3] = v51;
      v77 = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v102[4] = v77;
      v52 = sub_10000DB7C(v102);
      v53 = *(*(v51 - 8) + 104);
      LODWORD(v76) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v74 = v53;
      v53(v52);
      sub_10076C90C();
      sub_10000CD74(v102);
      v54 = v80;
      sub_10076996C();
      sub_10076994C();
      v55 = *(v86 + 8);
      v56 = v87;
      v55(v54, v87);
      v57 = [v34 traitCollection];
      sub_1000BFFCC();
      v86 = v42;

      if (qword_100940D88 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v79, qword_1009A1690);
      sub_100770B2C();
      v101[3] = v51;
      v101[4] = v77;
      v58 = sub_10000DB7C(v101);
      v74(v58, v76, v51);
      sub_10076C90C();
      sub_10000CD74(v101);
      v59 = v81;
      sub_10076996C();
      sub_10076994C();
      v55(v59, v56);
      sub_100763D6C();
      if (qword_100940D90 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v79, qword_1009A16A8);
      sub_100770B2C();
      v100[3] = v51;
      v100[4] = v77;
      v60 = sub_10000DB7C(v100);
      v74(v60, v76, v51);
      sub_10076C90C();
      sub_10000CD74(v100);
      v61 = v83;
      sub_10076996C();
      sub_10076994C();
      v55(v61, v56);
      v99 = 0;
      v98 = 0u;
      v97 = 0u;
      v62 = v82;
      sub_10076760C();
      sub_100409428(&unk_100947480, &type metadata accessor for AchievementSummaryLayout, &protocol conformance descriptor for AchievementSummaryLayout);
      v63 = v85;
      sub_10076D2AC();
      v65 = v64;
      (*(v84 + 8))(v62, v63);
      (*(v96 + 8))(v95, v73);
      (*(v75 + 8))(v88, v89);
    }

    else
    {
      [v34 pageContainerSize];
      if (v67 >= v66)
      {
        v69 = v89;
        v68 = v95;
      }

      else
      {
        JUScreenClassGetLandscapeWidth();
        v68 = v95;
        v69 = v89;
      }

      v70 = v88;
      sub_1007675CC();
      v65 = v71;
      (*(v96 + 8))(v68, v15);
      (*(v75 + 8))(v70, v69);
    }
  }

  else
  {

    v65 = 0.0;
  }

  (*(v93 + 8))(v92, v94);

  return v65;
}

double sub_1003F89F4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26[-v13];
  v15 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26[-v17];
  sub_10000A570(a1, v26);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10075F1FC();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_10076FCFC();
  sub_10076FDBC();
  v19 = v27;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v22 = v21;
  v23 = type metadata accessor for AppEventView(0);
  v24 = sub_10069CFD8(v22, a4, v19, a6, a3, v23, ObjectType);
  (*(v16 + 8))(v18, v15);

  return v24;
}

double sub_1003F8C3C(uint64_t a1, uint64_t a2, __n128 a3, double a4, uint64_t a5, void *a6)
{
  v42 = sub_10076172C();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10076174C();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076997C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v38 - v17;
  v41 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v20 = &v38 - v19;
  sub_10000A570(a1, v53);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076C1AC();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  sub_10076FCFC();
  v38 = v20;
  sub_10076FDBC();
  sub_10076C19C();
  v21 = sub_10076C18C();
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940B50 != -1)
  {
    swift_once();
  }

  v22 = sub_10076D3DC();
  sub_10000A61C(v22, qword_1009A0FE8);
  v47 = a6;
  v23 = [a6 traitCollection];
  v24 = sub_100770B3C();

  v25 = sub_10076C04C();
  v53[3] = v25;
  v53[4] = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v26 = sub_10000DB7C(v53);
  (*(*(v25 - 8) + 104))(v26, enum case for Feature.measurement_with_labelplaceholder(_:), v25);
  v27 = v24;
  sub_10076C90C();
  sub_10000CD74(v53);
  sub_10076996C();
  sub_10076994C();
  (*(v12 + 8))(v14, v11);
  if ((v21 & 2) != 0)
  {
    if (qword_10093F810 != -1)
    {
      swift_once();
    }

    [qword_10099D1C8 size];
    v28 = sub_10076DDDC();
    swift_allocObject();
    v29 = sub_10076DDBC();
    *(&v51 + 1) = v28;
    v52 = &protocol witness table for LayoutViewPlaceholder;
    *&v50 = v29;
  }

  else
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
  }

  v30 = v47;
  if (qword_10093F7F8 != -1)
  {
    swift_once();
  }

  v31 = v42;
  v32 = sub_10000A61C(v42, qword_10099D1B0);
  (*(v40 + 16))(v43, v32, v31);
  sub_10000A570(v53, v49);
  sub_100102958(&v50, v48);
  v33 = v44;
  sub_10076173C();
  [v30 pageMarginInsets];
  sub_100770ACC();
  sub_100409428(&qword_1009566E0, &type metadata accessor for FootnoteLayout, &protocol conformance descriptor for FootnoteLayout);
  v34 = v46;
  sub_10076D2AC();
  sub_100770AEC();
  v36 = v35;

  (*(v45 + 8))(v33, v34);
  sub_10000CD74(v53);
  (*(v39 + 8))(v38, v41);
  sub_10000CFBC(&v50, &unk_10094DA00, &qword_100783FA0);

  return v36;
}

double sub_1003F93DC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23[-v11];
  v13 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  sub_10000A570(a1, v23);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076653C();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_10076FCFC();
  sub_10076FDBC();
  v17 = sub_10076651C();
  if (v18)
  {
    v19 = sub_10076652C();
    if (v19 >> 62)
    {
      v20 = sub_10077158C();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v20 = v17;
  }

  v21 = [a5 traitCollection];
  sub_10054D204(v20, v21);

  (*(v14 + 8))(v16, v13);

  return a3;
}

double sub_1003F9658(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v55 = sub_1007656EC();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v57 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10076570C();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10076997C();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v50 - v16;
  v56 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = v50 - v18;
  sub_10000A570(a1, &v70);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_1007616DC();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  sub_10076FCFC();
  v52 = v19;
  sub_10076FDBC();
  v20 = v73;
  [a6 pageMarginInsets];
  sub_100770ACC();
  v21 = [a6 traitCollection];
  LOBYTE(v14) = sub_1007706EC();

  v22 = 4;
  if ((v14 & 1) == 0)
  {
    v22 = 1;
  }

  v61 = v22;
  v51 = v20;
  sub_1007616CC();
  v50[1] = v23;
  v24 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940600 != -1)
  {
    swift_once();
  }

  v25 = sub_10076D3DC();
  sub_10000A61C(v25, qword_10099FCC0);
  v26 = [a6 traitCollection];
  sub_100770B3C();

  v27 = sub_10076C04C();
  v62 = a6;
  v28 = v27;
  v71 = v27;
  v29 = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v72 = v29;
  v30 = sub_10000DB7C(&v70);
  v31 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v32 = *(v28 - 8);
  v50[0] = v24;
  v33 = *(v32 + 104);
  v33(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  sub_10076C90C();
  sub_10000CD74(&v70);
  sub_10076996C();
  sub_10076994C();
  v34 = *(v64 + 8);
  v64 += 8;
  v34(v13, v63);
  v51 = sub_1007616BC();
  if (qword_100940608 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v25, qword_10099FCD8);
  v35 = [v62 traitCollection];
  sub_100770B3C();

  v68 = v28;
  v69 = v29;
  v36 = sub_10000DB7C(v67);
  v33(v36, v31, v28);
  sub_10076C90C();
  sub_10000CD74(v67);
  sub_10076996C();
  sub_10076994C();
  v34(v13, v63);
  if (qword_1009405F8 != -1)
  {
    swift_once();
  }

  v37 = v55;
  v38 = sub_10000A61C(v55, qword_10099FCA8);
  (*(v53 + 16))(v57, v38, v37);
  v39 = v71;
  v40 = v72;
  v41 = sub_10000CF78(&v70, v71);
  v66[3] = v39;
  v66[4] = *(v40 + 8);
  v42 = sub_10000DB7C(v66);
  (*(*(v39 - 8) + 16))(v42, v41, v39);
  v43 = v68;
  v44 = v69;
  v45 = sub_10000CF78(v67, v68);
  v65[3] = v43;
  v65[4] = *(v44 + 8);
  v46 = sub_10000DB7C(v65);
  (*(*(v43 - 8) + 16))(v46, v45, v43);
  v47 = v58;
  sub_1007656FC();
  sub_100409428(&unk_100961240, &type metadata accessor for EditorialQuoteLayout, &protocol conformance descriptor for EditorialQuoteLayout);
  v48 = v60;
  sub_10076D2AC();
  (*(v59 + 8))(v47, v48);
  (*(v54 + 8))(v52, v56);
  sub_10000CD74(v67);
  sub_10000CD74(&v70);

  return a3;
}

double sub_1003F9F54(uint64_t a1, uint64_t a2, __n128 a3, double a4, uint64_t a5, void *a6)
{
  v47 = a6;
  v6 = a3.n128_f64[0];
  v9 = sub_100764FDC();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100764FFC();
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10076997C();
  v14 = *(v40 - 8);
  __chkstk_darwin(v40);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v40 - v19;
  v41 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v21 = *(v41 - 8);
  __chkstk_darwin(v41);
  v23 = &v40 - v22;
  sub_10000A570(a1, v49);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100760F3C();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940DB8 != -1)
  {
    swift_once();
  }

  v24 = sub_10076D3DC();
  sub_10000A61C(v24, qword_1009A1720);
  v25 = [v47 traitCollection];
  v26 = sub_100770B3C();

  sub_100760F2C();
  sub_10076081C();

  v27 = sub_10075F9DC();

  v28 = sub_10076C04C();
  v50 = v28;
  v51 = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v29 = sub_10000DB7C(v49);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  v30 = v27;
  v31 = v26;
  sub_10076C90C();
  sub_10000CD74(v49);
  sub_10076993C();
  sub_10076994C();
  (*(v14 + 8))(v16, v40);
  if (qword_100941530 != -1)
  {
    swift_once();
  }

  v32 = v43;
  v33 = sub_10000A61C(v43, qword_1009A32C0);
  (*(v42 + 16))(v44, v33, v32);
  v34 = v50;
  v35 = v51;
  v36 = sub_10000CF78(v49, v50);
  v48[3] = v34;
  v48[4] = *(v35 + 8);
  v37 = sub_10000DB7C(v48);
  (*(*(v34 - 8) + 16))(v37, v36, v34);
  sub_100764FEC();
  sub_100409428(&unk_100944440, &type metadata accessor for PrivacyFooterLayout, &protocol conformance descriptor for PrivacyFooterLayout);
  v38 = v46;
  sub_10076D2AC();

  (*(v45 + 8))(v13, v38);
  (*(v21 + 8))(v23, v41);
  sub_10000CD74(v49);

  return v6;
}

double sub_1003FA5D4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - v12;
  v14 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  sub_10000A570(a1, v24);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100760DAC();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  sub_10076FCFC();
  sub_10076FDBC();
  v18 = v24[5];
  sub_10000A5D4(&unk_1009467A0, &qword_1007890C8);
  sub_10076F64C();
  sub_10076FC1C();
  v23[1] = v18;
  sub_10075F74C();

  v19 = v24[0];
  if ((~v24[0] & 0xF000000000000007) != 0)
  {
    v20 = v24[1];
  }

  else
  {

    v20 = 0;
    v19 = v18;
  }

  v21 = sub_1001B7EC0(v19, v20, a6, a4);
  sub_1000A9094(v19, v20);
  (*(v15 + 8))(v17, v14);

  return v21;
}

double sub_1003FA87C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, uint64_t a6, void *a7)
{
  v32 = a7;
  v31 = a3;
  v33 = sub_10075FAEC();
  v11 = *(v33 - 8);
  __chkstk_darwin(v33);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v18 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v31 - v20;
  sub_10000A570(a1, &v34);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076161C();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_100767E8C();
  sub_10076F64C();
  sub_10076FC1C();
  v22 = v34;
  sub_100767E6C();
  if (sub_10075FABC())
  {
    v23 = sub_1007615EC();
  }

  else
  {
    v23 = sub_10076160C();
  }

  v25 = v23;
  v26 = v24;
  v27 = v32;
  swift_getObjectType();
  v28.n128_f64[0] = a4;
  v29 = sub_10026C9FC(v25, v26, v27, v28, a5);

  (*(v11 + 8))(v13, v33);
  (*(v19 + 8))(v21, v18);

  return v29;
}

double sub_1003FABB4(uint64_t a1, uint64_t a2, __n128 a3, double a4, uint64_t a5, void *a6)
{
  v50 = sub_10076A1BC();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10076A1EC();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076710C();
  __chkstk_darwin(v12 - 8);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10076712C();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10076997C();
  v15 = *(v40 - 8);
  __chkstk_darwin(v40);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v38 - v20;
  v43 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v23 = &v38 - v22;
  sub_10000A570(a1, v61);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076349C();
  swift_dynamicCast();
  (*(v19 + 16))(v21, a2, v18);
  sub_10076FCFC();
  v41 = v23;
  sub_10076FDBC();
  v53 = a6;
  v24 = [a6 traitCollection];
  v25 = sub_10076DDDC();
  swift_allocObject();
  v26 = sub_10076DDBC();
  sub_10076348C();
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100941020 != -1)
  {
    swift_once();
  }

  v27 = sub_10076D3DC();
  sub_10000A61C(v27, qword_1009A1E58);
  sub_100770B3C();
  v28 = sub_10076C04C();
  v39 = v24;
  v29 = v28;
  v61[3] = v28;
  v61[4] = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v30 = sub_10000DB7C(v61);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v29);
  sub_10076C90C();
  sub_10000CD74(v61);
  sub_10076996C();
  sub_10076994C();
  (*(v15 + 8))(v17, v40);
  sub_10076344C();
  v31 = v46;
  sub_10076A1CC();
  (*(v44 + 8))(v11, v45);
  sub_100228E74(v31, v53, v47);
  (*(v48 + 8))(v31, v50);
  swift_allocObject();
  v32 = sub_10076DDBC();
  v59 = v25;
  v60 = &protocol witness table for LayoutViewPlaceholder;
  v58 = v32;
  sub_10000A570(v61, v57);
  v55 = v25;
  v56 = &protocol witness table for LayoutViewPlaceholder;
  v54 = v26;

  v33 = v49;
  sub_10076711C();
  sub_100409428(&qword_10094DF38, &type metadata accessor for LargeHeroBreakoutLayout, &protocol conformance descriptor for LargeHeroBreakoutLayout);
  v34 = v52;
  sub_10076D2AC();
  v36 = v35;

  (*(v51 + 8))(v33, v34);
  sub_10000CD74(v61);
  (*(v42 + 8))(v41, v43);

  return v36;
}

double sub_1003FB38C(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27[-v13];
  v15 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27[-v17];
  sub_10000A570(a1, v27);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076382C();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_10076FCFC();
  sub_10076FDBC();
  v19 = sub_1007637FC();
  v21 = v20;
  v22 = sub_10076381C();
  v23 = sub_10076380C();
  swift_getObjectType();
  v24.n128_f64[0] = a3;
  v25 = sub_1003E7634(v19, v21, v22, v23, a6, v24, a4);

  (*(v16 + 8))(v18, v15);

  return v25;
}

double sub_1003FB600(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10077164C();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v82 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10076D39C();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v93 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v12 - 8);
  v89 = &v81 - v13;
  v14 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v91 = *(v18 - 8);
  v92 = v18;
  __chkstk_darwin(v18);
  v20 = &v81 - v19;
  sub_10000A570(a1, &v106);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076B56C();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  sub_10076FCFC();
  v90 = v20;
  sub_10076FDBC();
  v21 = v105;
  [a5 pageMarginInsets];
  v110._object = 0x80000001007E1440;
  v110._countAndFlagsBits = 0xD000000000000010;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v22 = sub_1007622EC(v110, v111);
  v24 = sub_1003B5290(v22, v23);
  if (v24 > 2)
  {
    if (v24 - 3 < 2)
    {
      if (qword_1009402A0 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_10099F488;
      goto LABEL_21;
    }

    if (v24 == 5)
    {
      if (qword_1009402A8 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_10099F4E0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v24)
  {
LABEL_15:
    if (qword_100940288 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_10099F380;
    goto LABEL_21;
  }

  if (v24 == 1)
  {
    if (qword_100940290 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_10099F3D8;
  }

  else
  {
    if (qword_100940298 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_10099F430;
  }

LABEL_21:
  v26 = v25[4];
  *&v108[16] = v25[3];
  *&v108[32] = v26;
  v109 = *(v25 + 10);
  v27 = v25[2];
  v107 = v25[1];
  *v108 = v27;
  v106 = *v25;
  v28 = *&v108[40];
  v29 = v109;
  v97 = *&v108[24];
  v98 = *&v108[8];
  v30 = *(&v107 + 1);
  v31 = v27;
  v33 = *(&v106 + 1);
  v32 = v107;
  v34 = v106;
  sub_100375BC0(&v106, v102);
  v102[0] = __PAIR128__(v33, v34);
  v102[1] = __PAIR128__(v30, v32);
  *&v103[0] = v31;
  *(v103 + 8) = v98;
  *(&v103[1] + 8) = v97;
  *(&v103[2] + 1) = v28;
  v104 = v29;
  v109 = v29;
  v106 = __PAIR128__(v33, v34);
  v107 = __PAIR128__(v30, v32);
  *v108 = v103[0];
  *&v108[16] = v103[1];
  *&v108[32] = v103[2];
  [a5 pageMarginInsets];
  v35 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v96 = sub_1003B52DC(&v106);

  *&v97 = v21;
  sub_10076B53C();
  v37 = v36;
  v38 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_1009402C8 != -1)
  {
    swift_once();
  }

  v94 = sub_10076D3DC();
  v39 = sub_10000A61C(v94, qword_10099F538);
  *&v98 = a5;
  v40 = [a5 traitCollection];
  v88 = v39;
  v41 = sub_100770B3C();

  sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v43 = qword_10093F680;
  v44 = NSParagraphStyleAttributeName;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = [qword_10099CDD8 paragraphStyleWithBaseWritingDirection:-1];
  v46 = sub_100016F40(0, &qword_10094D748, NSParagraphStyle_ptr);
  *(inited + 40) = v45;
  *(inited + 64) = v46;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v38;
  *(inited + 80) = v41;
  v47 = NSFontAttributeName;
  v87 = v41;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
  swift_arrayDestroy();
  v48 = objc_allocWithZone(NSMutableAttributedString);
  v49 = sub_10076FF6C();
  type metadata accessor for Key(0);
  sub_100409428(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
  v50.super.isa = sub_10076FE3C().super.isa;
  v86 = v37;
  isa = v50.super.isa;

  v52 = [v48 initWithString:v49 attributes:isa];

  v95 = v52;
  if (v96)
  {
    v53 = v96;
    sub_1000FC5F4(_swiftEmptyArrayStorage);
    v54 = objc_allocWithZone(NSAttributedString);
    v55 = sub_10076FF6C();
    v56 = sub_10076FE3C().super.isa;

    v57 = [v54 initWithString:v55 attributes:v56];

    v58 = v95;
    [v58 appendAttributedString:v57];
    v59 = [objc_allocWithZone(NSTextAttachment) init];
    [v59 setImage:v53];
    [(UIImage *)v53 size];
    [v59 setBounds:{0.0, -v28, v60, v61}];
    v62 = [objc_opt_self() attributedStringWithAttachment:v59];
    [v58 appendAttributedString:v62];

    sub_100375C20(v102);
  }

  else
  {

    sub_100375C20(v102);
  }

  v63 = v94;
  v64 = *(v94 - 8);
  v65 = v89;
  (*(v64 + 16))(v89, v88, v94);
  (*(v64 + 56))(v65, 0, 1, v63);
  v66 = sub_10076C04C();
  v100 = v66;
  v67 = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v101 = v67;
  v68 = sub_10000DB7C(v99);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v70 = *(*(v66 - 8) + 104);
  v70(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
  sub_10076C90C();
  sub_10000CD74(v99);
  sub_10076990C();
  sub_10000CFBC(v65, &unk_100943250, &unk_1007841D0);
  if (qword_1009402D8 != -1)
  {
    swift_once();
  }

  v71 = sub_10076D9AC();
  sub_10000A61C(v71, qword_10099F568);
  sub_10076D42C();
  if (qword_1009402E0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v71, qword_10099F580);
  sub_10076D3FC();
  v89 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v89 setMaximumNumberOfLines:0];
  sub_10076B54C();
  if (v72)
  {
    if (qword_1009402D0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v94, qword_10099F550);
    v100 = v66;
    v101 = v67;
    v73 = sub_10000DB7C(v99);
    v70(v73, v69, v66);
    sub_10076C90C();
    sub_10000CD74(v99);
    v74 = v98;
    sub_10076991C();

    if (qword_1009402E8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v71, qword_10099F598);
    sub_10076D42C();
    v75 = v74;
    v76 = v93;
    v77 = &off_100911000;
    if (qword_1009402F0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v71, qword_10099F5B0);
    sub_10076D3FC();
  }

  else
  {
    v75 = v98;
    v76 = v93;
    v77 = &off_100911000;
  }

  if (sub_10076B55C())
  {
    sub_10076BEFC();
    sub_10076BEFC();
    sub_10076D3AC();
    if ((sub_10076B52C() & 1) == 0)
    {
      [v75 v77[255]];
      [v75 v77[255]];
    }

    sub_10076D36C();
    v78 = v95;
    if (qword_1009402F8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v71, qword_10099F5C8);
    v79 = v82;
    sub_10076D17C();
    sub_10076D40C();

    (*(v84 + 8))(v79, v85);
    (*(v81 + 8))(v76, v83);
    (*(v91 + 8))(v90, v92);
  }

  else
  {

    (*(v91 + 8))(v90, v92);
  }

  return a3;
}

double sub_1003FC5C4(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - v13;
  v40 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v15 = *(v40 - 8);
  __chkstk_darwin(v40);
  v17 = &v39 - v16;
  sub_10000A570(a1, &v42);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076B90C();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_10076FCFC();
  sub_10076FDBC();
  v18 = v45;
  swift_getObjectType();
  v19 = [a6 traitCollection];
  v20 = [v19 horizontalSizeClass];

  if (v20 == 1)
  {
    [a6 pageMarginInsets];
    top = v21;
    left = v23;
    bottom = v25;
    right = v27;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v41 = v18;

  sub_10000A5D4(&unk_1009520F0, &qword_100799AA0);
  if (swift_dynamicCast())
  {
    sub_10000CF78(&v42, *(&v43 + 1));
    v29 = sub_10076968C();
    sub_10000CD74(&v42);
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    sub_10000CFBC(&v42, &qword_10094D3E8, &qword_100796560);
    v29 = 0;
  }

  v30 = sub_10076B8EC();
  v32 = v31;
  v33 = sub_10076B8FC();
  if (v33)
  {
  }

  v34 = sub_10045B094(a6);
  if (qword_10093FCF0 != -1)
  {
    swift_once();
  }

  v35 = sub_10076063C();
  v36 = sub_10000A61C(v35, qword_10099E180);
  v37 = sub_100293124(v36, a6, v30, v32, v33 != 0, v34, v29 & 1, a3, a4, top, left, bottom, right);

  (*(v15 + 8))(v17, v40);

  return v37;
}

void sub_1003FC9C4(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v34 - v13;
  v15 = sub_10000A5D4(&unk_1009566C0, &qword_10078BEC0);
  v37 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  sub_10000A570(a1, aBlock);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076C61C();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_10076FDBC();
  v18 = aBlock[6];
  sub_100111DA4();
  v38 = v15;
  v36 = v17;
  sub_10076FD8C();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v35 = sub_10076C56C();
  }

  else
  {
    v35 = LOBYTE(aBlock[0]);
  }

  v19 = sub_10076C5AC();
  v34[1] = swift_getObjectType();
  v20 = [a6 traitCollection];
  v34[0] = v18;
  v21 = v20;
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v19];
  v23 = [v19 length];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v21;
  *(v24 + 32) = v22;
  *(v24 + 40) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_100027A88;
  *(v25 + 24) = v24;
  aBlock[4] = sub_1003BE1CC;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  aBlock[3] = &unk_1008945B0;
  v26 = _Block_copy(aBlock);
  v27 = v21;
  v28 = v22;

  [v19 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

  _Block_release(v26);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    v29 = v28;
    [a6 pageMarginInsets];
    sub_1003899C8(v28, v35 & 1, a6, v30, v31, v32, v33, a3, a4);

    sub_100414900(v34[0], a6);
    (*(v37 + 8))(v36, v38);
  }
}

double sub_1003FCE2C(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v49 = v48 - v10;
  v11 = sub_10076D39C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v48 - v17;
  v19 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v51 = *(v19 - 8);
  v52 = v19;
  __chkstk_darwin(v19);
  v21 = v48 - v20;
  sub_10000A570(a1, aBlock);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10075FFAC();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  sub_10076FCFC();
  v50 = v21;
  sub_10076FDBC();
  if ((sub_10075FF4C() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  if (sub_10075FF9C())
  {
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D36C();
    (*(v12 + 8))(v14, v11);
    sub_10075FF4C();
  }

  v22 = sub_10075FF6C();
  v23 = [v22 length];

  if (v23 >= 1)
  {
    sub_10075FF7C();
    if (v24)
    {
      if (qword_100940F68 != -1)
      {
        swift_once();
      }

      v25 = sub_10076D3DC();
      sub_10000A61C(v25, qword_1009A1C30);
      v26 = sub_10076C04C();
      v54 = v26;
      v55 = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v27 = sub_10000DB7C(aBlock);
      (*(*(v26 - 8) + 104))(v27, enum case for Feature.measurement_with_labelplaceholder(_:), v26);
      sub_10076C90C();
      sub_10000CD74(aBlock);
      sub_10076991C();
    }

    v28 = sub_10075FF6C();
    v48[1] = a6;
    v29 = [a6 traitCollection];
    v30 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v28];
    v31 = [v28 length];
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = v29;
    *(v32 + 32) = v30;
    *(v32 + 40) = 1;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_100027A88;
    *(v33 + 24) = v32;
    v55 = sub_1003BE1CC;
    v56 = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    v54 = &unk_100894538;
    v34 = _Block_copy(aBlock);
    v35 = v29;
    v36 = v30;

    [v28 enumerateAttributesInRange:0 options:v31 usingBlock:{0x100000, v34}];

    _Block_release(v34);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if (v35)
    {
      __break(1u);
    }

    else
    {
      v37 = qword_100940F60;
      v28 = v36;
      if (v37 == -1)
      {
LABEL_12:
        v38 = sub_10076D3DC();
        v39 = sub_10000A61C(v38, qword_1009A1C18);
        v40 = *(v38 - 8);
        v41 = v49;
        (*(v40 + 16))(v49, v39, v38);
        (*(v40 + 56))(v41, 0, 1, v38);
        v42 = sub_10076C04C();
        v54 = v42;
        v55 = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v43 = sub_10000DB7C(aBlock);
        (*(*(v42 - 8) + 104))(v43, enum case for Feature.measurement_with_labelplaceholder(_:), v42);
        sub_10076C90C();
        sub_10000CD74(aBlock);
        sub_10076990C();

        sub_10000CFBC(v41, &unk_100943250, &unk_1007841D0);
        if (qword_10093F990 != -1)
        {
          swift_once();
        }

        v44 = sub_10076D9AC();
        sub_10000A61C(v44, qword_10099D738);
        sub_10076D42C();
        if (qword_10093F998 != -1)
        {
          swift_once();
        }

        sub_10000A61C(v44, qword_10099D750);
        sub_10076D3FC();

        goto LABEL_17;
      }
    }

    swift_once();
    goto LABEL_12;
  }

LABEL_17:
  sub_100770ABC();
  v46 = v45;
  (*(v51 + 8))(v50, v52);

  return v46;
}

double sub_1003FD79C(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t))
{
  v114 = a6;
  ObjectType = a2;
  v8 = sub_1007637CC();
  v95 = *(v8 - 8);
  v96 = v8;
  __chkstk_darwin(v8);
  v94 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076997C();
  v102 = *(v10 - 8);
  v103 = v10;
  __chkstk_darwin(v10);
  v101 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D3DC();
  v109 = *(v12 - 8);
  v110 = v12;
  __chkstk_darwin(v12);
  v108 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100762A3C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v111 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v20 = sub_1007637AC();
  v105 = *(v20 - 8);
  v106 = v20;
  __chkstk_darwin(v20);
  v89 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v84 - v23;
  v25 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v84 - v27;
  v29 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v92 = *(v29 - 8);
  v93 = v29;
  __chkstk_darwin(v29);
  v31 = &v84 - v30;
  sub_10000A570(a1, v121);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076016C();
  swift_dynamicCast();
  (*(v26 + 16))(v28, ObjectType, v25);
  v32 = v114;
  sub_10076FCFC();
  v91 = v31;
  sub_10076FDBC();
  v33 = v121[5];
  v34 = sub_10076015C();
  sub_10076012C();
  ObjectType = swift_getObjectType();
  sub_100495254(v34, v19, v32, v24);

  v35 = *(v15 + 8);
  v90 = v19;
  v35(v19, v14);
  v36 = sub_10076DDDC();
  swift_allocObject();
  v37 = sub_10076DDBC();
  swift_allocObject();
  v87 = sub_10076DDBC();
  swift_allocObject();
  v86 = sub_10076DDBC();
  v104 = v24;
  sub_10076378C();
  v113 = v36;
  v38 = v111;
  swift_allocObject();
  v39 = sub_10076DDBC();
  sub_10076012C();
  v40 = (*(v15 + 88))(v38, v14);
  v88 = v37;
  v85 = v39;
  if (v40 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    if (v40 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v40 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      v47 = v108;
      if (qword_100940DD0 != -1)
      {
        swift_once();
      }

      v48 = v110;
      v49 = sub_10000A61C(v110, qword_1009A1768);
      (*(v109 + 16))(v47, v49, v48);
      v46 = 4;
      goto LABEL_13;
    }

    v43 = v108;
    if (qword_100940DC8 != -1)
    {
      swift_once();
    }

    v44 = v110;
    v45 = sub_10000A61C(v110, qword_1009A1750);
    (*(v109 + 16))(v43, v45, v44);
    v35(v38, v14);
    goto LABEL_9;
  }

  if (qword_100940DC8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v41 = v110;
    v42 = sub_10000A61C(v110, qword_1009A1750);
    (*(v109 + 16))(v108, v42, v41);
LABEL_9:
    v46 = 1;
LABEL_13:
    v111 = v46;
    sub_100016F40(0, &qword_100942F00, UIFont_ptr);
    v50 = v114;
    v51 = [v114 traitCollection];
    v52 = sub_100770B3C();

    sub_10076013C();
    v53 = sub_10076C04C();
    v121[3] = v53;
    v100 = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v121[4] = v100;
    v54 = sub_10000DB7C(v121);
    v107 = v33;
    v55 = *(v53 - 8);
    v56 = *(v55 + 104);
    v99 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v97 = v55 + 104;
    v98 = v56;
    v56(v54);
    v57 = v52;
    sub_10076C90C();
    sub_10000CD74(v121);
    v58 = v101;
    v84 = v57;
    sub_10076996C();
    sub_10076994C();
    v59 = v103;
    v33 = v102[1];
    v33(v58, v103);
    if (qword_100940DD8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v110, qword_1009A1780);
    v60 = [v50 traitCollection];
    v61 = sub_100770B3C();

    sub_10076014C();
    v120[3] = v53;
    v120[4] = v100;
    v62 = sub_10000DB7C(v120);
    v98(v62, v99, v53);
    v63 = v61;
    sub_10076C90C();
    sub_10000CD74(v120);
    sub_10076996C();
    sub_10076994C();
    v33(v58, v59);
    v64 = sub_10076010C();
    v65 = v64;
    if (v64 >> 62)
    {
      v76 = v64;
      v77 = sub_10077158C();
      v65 = v76;
      v66 = v77;
      v102 = v63;
      if (!v77)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v102 = v63;
      if (!v66)
      {
        goto LABEL_29;
      }
    }

    v67 = v65;
    v111 = type metadata accessor for PrivacyCategoryView();
    if (v66 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v68 = 0;
  v69 = v67;
  v70 = _swiftEmptyArrayStorage;
  do
  {
    if ((v67 & 0xC000000000000001) != 0)
    {
      v71 = sub_10077149C();
    }

    else
    {
      v71 = *(v69 + 8 * v68 + 32);
    }

    v73 = sub_1001052B0(v71, v114, v72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_10049D2D0(0, v70[2] + 1, 1, v70);
    }

    v75 = v70[2];
    v74 = v70[3];
    if (v75 >= v74 >> 1)
    {
      v70 = sub_10049D2D0((v74 > 1), v75 + 1, 1, v70);
    }

    ++v68;

    v118 = v113;
    v119 = &protocol witness table for LayoutViewPlaceholder;
    *&v117 = v73;
    v70[2] = v75 + 1;
    sub_100012498(&v117, &v70[5 * v75 + 4]);
    v69 = v67;
  }

  while (v66 != v68);
LABEL_29:

  v78 = [v114 traitCollection];
  sub_10076E20C();

  v79 = v113;
  swift_allocObject();
  v80 = sub_10076DDBC();
  (*(v105 + 16))(v89, v104, v106);
  v118 = v79;
  v119 = &protocol witness table for LayoutViewPlaceholder;
  *&v117 = v88;
  v116[23] = v79;
  v116[24] = &protocol witness table for LayoutViewPlaceholder;
  v116[19] = &protocol witness table for LayoutViewPlaceholder;
  v116[20] = v87;
  v116[18] = v79;
  v116[14] = &protocol witness table for LayoutViewPlaceholder;
  v116[15] = v86;
  v116[13] = v79;
  v116[9] = &protocol witness table for LayoutViewPlaceholder;
  v116[10] = v80;
  ObjectType = v80;
  v116[8] = v79;
  v116[5] = v85;
  sub_10000A570(v121, v116);
  sub_10000A570(v120, &v115);

  sub_10076012C();
  v81 = v94;
  sub_1007637BC();
  sub_100409428(&qword_10094F870, &type metadata accessor for PrivacyTypeLayout, &protocol conformance descriptor for PrivacyTypeLayout);
  v82 = v96;
  sub_10076D2AC();

  (*(v95 + 8))(v81, v82);
  sub_10000CD74(v120);
  sub_10000CD74(v121);
  (*(v109 + 8))(v108, v110);
  (*(v105 + 8))(v104, v106);
  (*(v92 + 8))(v91, v93);

  return a3;
}

double sub_1003FE548(double a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  v49 = a5;
  v41 = a4;
  v42 = a3;
  v38 = sub_10077164C();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10076D1AC();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_10076E1EC();
  v10 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076E21C();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v44 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076664C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - v20;
  v46 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v43 = *(v46 - 8);
  v22 = __chkstk_darwin(v46);
  v24 = &v36 - v23;
  (*(v19 + 16))(v21, v42, v18, v22);
  sub_10076FCFC();
  v42 = v24;
  sub_10076FDBC();
  sub_1007665FC();
  sub_100409428(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v18) = sub_10077124C();
  v25 = v17;
  v26 = v39;
  (*(v15 + 8))(v25, v14);
  (*(v10 + 104))(v26, enum case for Separator.Position.bottom(_:), v40);
  *v9 = UIFontTextStyleBody;
  v27 = v45;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v45);
  v52 = sub_10076D9AC();
  v53 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v51);
  v50[3] = v27;
  v50[4] = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(v50);
  (*(v7 + 16))(v28, v9, v27);
  v29 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v7 + 8))(v9, v27);
  if (v18)
  {
    v30 = v44;
    sub_10076E1FC();
    sub_10076E1AC();
    (*(v47 + 8))(v30, v48);
    v31 = v52;
    sub_10000CF78(v51, v52);
    v32 = v36;
    sub_1000FF02C(v31);
    v33 = v49;
    sub_10076D40C();
    (*(v37 + 8))(v32, v38);
    sub_10000CD74(v51);
  }

  else
  {
    v34 = v44;
    sub_10076E1FC();
    v33 = v49;
    sub_10076E1DC();
    (*(v47 + 8))(v34, v48);
  }

  swift_getObjectType();
  sub_1002A7528(v33);
  (*(v43 + 8))(v42, v46);
  return a1;
}

double sub_1003FECB8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v36 = a4;
  v38 = a5;
  v9 = sub_10077164C();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076664C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076E21C();
  v39 = *(v15 - 8);
  v40 = v15;
  __chkstk_darwin(v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  v37 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v22 = *(v37 - 8);
  v23 = __chkstk_darwin(v37);
  v25 = &v33 - v24;
  (*(v19 + 16))(v21, v36, v18, v23);
  sub_10076FCFC();
  sub_10076FDBC();
  swift_getObjectType();
  sub_1002AC394(a6, v17);
  sub_1007665FC();
  sub_100409428(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v21) = sub_10077124C();
  v26 = (*(v12 + 8))(v14, v11);
  v26.n128_f64[0] = a1;
  v27 = sub_1002ADC24(a6, v26, a2);
  if (v21)
  {
    v28 = v27;
    sub_10076E1AC();
    v29 = v42;
    sub_10000CF78(v41, v42);
    v30 = v33;
    sub_1000FF02C(v29);
    sub_10076D40C();
    (*(v34 + 8))(v30, v35);
    (*(v39 + 8))(v17, v40);
    (*(v22 + 8))(v25, v37);
    sub_10000CD74(v41);
  }

  else
  {
    sub_100770AFC();
    v28 = v31;
    (*(v39 + 8))(v17, v40);
    (*(v22 + 8))(v25, v37);
  }

  return v28;
}

void sub_1003FF16C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, uint64_t a6, void *a7)
{
  v70 = a7;
  v73 = a3;
  v74 = sub_10076997C();
  v57 = *(v74 - 8);
  __chkstk_darwin(v74);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10076502C();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10076504C();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D3DC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v56 - v19;
  v65 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v22 = &v56 - v21;
  sub_10000A570(a1, v82);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100760F7C();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  sub_10076FCFC();
  v61 = v22;
  sub_10076FDBC();
  v23 = v85;
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940DB0 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v13, qword_1009A1708);
  v25 = [v70 traitCollection];
  v75 = sub_100770B3C();

  (*(v14 + 16))(v16, v24, v13);
  v59 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v26 = objc_allocWithZone(v59);
  v27 = sub_10050BDFC(v16, 0, 0, 1);
  sub_100760F6C();
  v28 = sub_10076082C();
  sub_100107BF4(v28, sub_100376A9C);
  v30 = v29;

  v31 = sub_10076081C();
  v58 = v27;
  sub_10050C274(v31, 0, v30);

  v32 = sub_100760F5C();
  v33 = v32;
  if (v32 >> 62)
  {
    v54 = v32;
    v55 = sub_10077158C();
    v33 = v54;
    v34 = v55;
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v23;
  if (v34)
  {
    if (v34 < 1)
    {
      __break(1u);
      return;
    }

    v35 = 0;
    v72 = v33 & 0xC000000000000001;
    v71 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v36 = (v57 + 8);
    v37 = _swiftEmptyArrayStorage;
    v73 = v33;
    do
    {
      if (v72)
      {
        sub_10077149C();
      }

      else
      {
      }

      sub_100769C3C();
      sub_10076081C();

      v38 = v75;
      v39 = sub_10075F9DC();

      v40 = sub_10076C04C();
      v83 = v40;
      v84 = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v41 = sub_10000DB7C(v82);
      (*(*(v40 - 8) + 104))(v41, v71, v40);
      v42 = v39;
      v43 = v38;
      sub_10076C90C();
      sub_10000CD74(v82);
      sub_10076993C();
      sub_10076994C();
      (*v36)(v10, v74);
      sub_10000A570(v82, &v79);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_10049D428(0, v37[2] + 1, 1, v37);
      }

      v45 = v37[2];
      v44 = v37[3];
      if (v45 >= v44 >> 1)
      {
        v37 = sub_10049D428((v44 > 1), v45 + 1, 1, v37);
      }

      ++v35;

      sub_10000CD74(v82);
      v37[2] = v45 + 1;
      sub_100012498(&v79, &v37[5 * v45 + 4]);
    }

    while (v34 != v35);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
  }

  v46 = [v70 traitCollection];
  sub_10076E20C();

  v47 = sub_10076DDDC();
  swift_allocObject();
  v48 = sub_10076DDBC();
  if (qword_10093F7A8 != -1)
  {
    swift_once();
  }

  v49 = v64;
  v50 = sub_10000A61C(v64, qword_10099D0C8);
  (*(v62 + 16))(v66, v50, v49);
  sub_100760F4C();
  v83 = v59;
  v84 = &protocol witness table for UIView;
  v82[0] = v58;
  v51 = v58;
  sub_10016D554(v37);

  v80 = v47;
  v81 = &protocol witness table for LayoutViewPlaceholder;
  v78 = &protocol witness table for LayoutViewPlaceholder;
  *&v79 = v48;
  v77 = v47;
  v76 = v48;
  swift_retain_n();
  v52 = v67;
  sub_10076503C();
  sub_100409428(&unk_100956E70, &type metadata accessor for PrivacyHeaderLayout, &protocol conformance descriptor for PrivacyHeaderLayout);
  v53 = v69;
  sub_10076D2AC();

  (*(v68 + 8))(v52, v53);
  (*(v63 + 8))(v61, v65);
}

double sub_1003FFBC4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_10076523C();
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10076525C();
  v11 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - v16;
  v30 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v18 = *(v30 - 8);
  v19 = __chkstk_darwin(v30);
  v21 = &v29 - v20;
  (*(v15 + 16))(v17, a4, v14, v19);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_10065132C(a6, v10);
  swift_getObjectType();
  sub_1006525E0(a6);
  v22 = sub_10076DDDC();
  swift_allocObject();
  v23 = sub_10076DDBC();
  v36 = v22;
  v37 = &protocol witness table for LayoutViewPlaceholder;
  v35 = v23;
  swift_allocObject();
  v24 = sub_10076DDBC();
  v33 = v22;
  v34 = &protocol witness table for LayoutViewPlaceholder;
  v32 = v24;
  sub_10076524C();
  sub_100409428(&qword_10095FFF0, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  v25 = v31;
  sub_10076D2AC();
  v27 = v26;
  (*(v11 + 8))(v13, v25);
  (*(v18 + 8))(v21, v30);
  return v27;
}

double sub_1003FFF58(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - v12;
  v14 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v21 - v16;
  sub_10000A570(a1, v21);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076219C();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  sub_10076FCFC();
  sub_10076FDBC();
  v18 = v21[5];
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v21[0] = sub_1001052B0(v18, a6, v19);
  sub_10076DDDC();
  sub_10076D2AC();
  (*(v15 + 8))(v17, v14);

  return a3;
}

double sub_1004001C0(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v50 = sub_10076718C();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1007671AC();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10076997C();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v43 - v15;
  v48 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v18 = v43 - v17;
  sub_10000A570(a1, v61);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_1007636DC();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_10076FCFC();
  v46 = v18;
  sub_10076FDBC();
  v19 = v61[5];
  v20 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940E00 != -1)
  {
    swift_once();
  }

  v44 = sub_10076D3DC();
  sub_10000A61C(v44, qword_1009A17F8);
  v21 = [a6 traitCollection];
  v22 = sub_100770B3C();

  sub_1007636CC();
  v23 = sub_10076C04C();
  v61[3] = v23;
  v24 = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v61[4] = v24;
  v25 = sub_10000DB7C(v61);
  v26 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v27 = *(v23 - 8);
  v43[1] = v19;
  v28 = *(v27 + 104);
  v55 = a6;
  v28(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v29 = v22;
  v43[0] = v20;
  v30 = v29;
  sub_10076C90C();
  sub_10000CD74(v61);
  v45 = v30;
  sub_10076996C();
  sub_10076994C();
  v31 = *(v57 + 8);
  v57 += 8;
  v31(v12, v56);
  if (qword_100940E08 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v44, qword_1009A1810);
  v32 = [v55 traitCollection];
  v33 = sub_100770B3C();

  sub_1007636BC();
  v60[3] = v23;
  v60[4] = v24;
  v34 = sub_10000DB7C(v60);
  v28(v34, v26, v23);
  v35 = v33;
  sub_10076C90C();
  sub_10000CD74(v60);
  sub_10076996C();
  sub_10076994C();
  v31(v12, v56);
  if (qword_1009401C0 != -1)
  {
    swift_once();
  }

  v36 = v50;
  v37 = sub_10000A61C(v50, qword_10099F0D0);
  (*(v49 + 16))(v51, v37, v36);
  sub_10000A570(v61, v59);
  sub_10000A570(v60, v58);
  v38 = v52;
  sub_10076719C();
  sub_100409428(&qword_100954110, &type metadata accessor for PrivacyDefinitionLayout, &protocol conformance descriptor for PrivacyDefinitionLayout);
  v39 = v54;
  sub_10076D2AC();
  v41 = v40;

  (*(v53 + 8))(v38, v39);
  sub_10000CD74(v60);
  sub_10000CD74(v61);
  (*(v47 + 8))(v46, v48);

  return v41;
}

double sub_1004009D8(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v28 = a6;
  v27 = sub_10076997C();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v26 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v15 = *(v26 - 8);
  __chkstk_darwin(v26);
  v17 = &v25 - v16;
  sub_10000A570(a1, v29);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_1007644DC();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_1007644CC();
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940CD8 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  sub_10000A61C(v18, qword_1009A1480);
  v19 = [v28 traitCollection];
  sub_100770B3C();

  v20 = sub_10076C04C();
  v30 = v20;
  v31 = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v21 = sub_10000DB7C(v29);
  (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  sub_10076C90C();
  sub_10000CD74(v29);
  sub_10076996C();
  sub_10076994C();
  (*(v8 + 8))(v10, v27);
  sub_10000CF78(v29, v30);
  sub_10076D2BC();
  v23 = v22;
  (*(v15 + 8))(v17, v26);
  sub_10000CD74(v29);

  return v23;
}

double sub_100400E30(uint64_t a1, uint64_t a2, __n128 a3, double a4, uint64_t a5, void *a6)
{
  v51 = a6;
  v8 = sub_1007693CC();
  __chkstk_darwin(v8 - 8);
  v47 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007693EC();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v48 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10076997C();
  v12 = *(v59 - 8);
  __chkstk_darwin(v59);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v43 - v17;
  v19 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v45 = *(v19 - 8);
  v46 = v19;
  __chkstk_darwin(v19);
  v21 = v43 - v20;
  sub_10000A570(a1, v76);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076686C();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  sub_10076FCFC();
  v44 = v21;
  sub_10076FDBC();
  v58 = v76[5];
  sub_10076682C();
  v22 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_1009410C0 != -1)
  {
    swift_once();
  }

  v57 = sub_10076D3DC();
  sub_10000A61C(v57, qword_1009A2038);
  v23 = [v51 traitCollection];
  sub_100770B3C();

  v24 = sub_10076C04C();
  v76[3] = v24;
  v56 = sub_100409428(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v76[4] = v56;
  v25 = sub_10000DB7C(v76);
  v26 = *(*(v24 - 8) + 104);
  v55 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v54 = v26;
  v26(v25);
  sub_10076C90C();
  v52 = v22;
  sub_10000CD74(v76);
  sub_10076996C();
  sub_10076994C();
  v53 = *(v12 + 8);
  v53(v14, v59);
  sub_10076683C();
  if (qword_1009410C8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v57, qword_1009A2050);
  v27 = v51;
  v28 = [v51 traitCollection];
  sub_100770B3C();

  v75[3] = v24;
  v75[4] = v56;
  v29 = sub_10000DB7C(v75);
  v54(v29, v55, v24);
  sub_10076C90C();
  sub_10000CD74(v75);
  sub_10076996C();
  sub_10076994C();
  v53(v14, v59);
  sub_10076685C();
  if (qword_1009410D0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v57, qword_1009A2068);
  v30 = [v27 traitCollection];
  sub_100770B3C();

  v74[3] = v24;
  v74[4] = v56;
  v31 = sub_10000DB7C(v74);
  v54(v31, v55, v24);
  sub_10076C90C();
  sub_10000CD74(v74);
  sub_10076996C();
  sub_10076994C();
  v53(v14, v59);
  v32 = sub_10076DDDC();
  swift_allocObject();
  v33 = sub_10076DDAC();
  v34 = swift_allocObject();
  v34[2] = v58;
  v34[3] = v27;
  v34[4] = v43[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v35 = sub_10076DD9C();
  sub_10013D454(v27, v47);
  v73 = 0;
  *&v71[40] = 0u;
  v72 = 0u;
  sub_10000A570(v76, v71);
  sub_10000A570(v75, &v70);
  sub_10000A570(v74, &v69);
  v67 = v32;
  v68 = &protocol witness table for LayoutViewPlaceholder;
  v66 = v33;

  v36 = [v27 traitCollection];
  sub_10076E20C();

  swift_allocObject();
  v37 = sub_10076DDBC();
  v64 = v32;
  v65 = &protocol witness table for LayoutViewPlaceholder;
  v62 = &protocol witness table for LayoutViewPlaceholder;
  v63 = v37;
  v61 = v32;
  v60 = v35;

  v38 = v48;
  sub_1007693DC();
  sub_100409428(&unk_1009544C0, &type metadata accessor for GameCenterReengagementLayout, &protocol conformance descriptor for GameCenterReengagementLayout);
  v39 = v50;
  sub_10076D2AC();
  v41 = v40;

  (*(v49 + 8))(v38, v39);
  sub_10000CD74(v74);
  sub_10000CD74(v75);
  sub_10000CD74(v76);
  (*(v45 + 8))(v44, v46);

  return v41;
}

double sub_100401794(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v35 = a4;
  v36 = a5;
  v9 = sub_10077164C();
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076E21C();
  v38 = *(v11 - 8);
  v39 = v11;
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076664C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v32 - v20;
  v37 = sub_10000A5D4(&qword_10094DC40, &unk_1007A1D50);
  v22 = *(v37 - 8);
  v23 = __chkstk_darwin(v37);
  v25 = &v32 - v24;
  (*(v19 + 16))(v21, v35, v18, v23);
  sub_10076FCFC();
  sub_10076FDBC();
  sub_1007665FC();
  sub_100409428(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v21) = sub_10077124C();
  (*(v15 + 8))(v17, v14);
  swift_getObjectType();
  sub_100079BE0(a6, v13);
  type metadata accessor for InAppPurchaseLockupView(0);
  v26 = sub_1000CBBB0(a6, a1, a2);
  if (v21)
  {
    v27 = v26;
    sub_10076E1AC();
    v28 = v41;
    sub_10000CF78(v40, v41);
    v29 = v32;
    sub_1000FF02C(v28);
    sub_10076D40C();
    (*(v33 + 8))(v29, v34);
    (*(v38 + 8))(v13, v39);
    (*(v22 + 8))(v25, v37);
    sub_10000CD74(v40);
  }

  else
  {
    sub_100770AFC();
    v27 = v30;
    (*(v38 + 8))(v13, v39);
    (*(v22 + 8))(v25, v37);
  }

  return v27;
}

uint64_t sub_100401C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v10 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - v16;
  sub_10000A570(a1, aBlock);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100760E0C();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  (*(v11 + 16))(v13, a2, v10);
  sub_10076FCFC();
  sub_10076F87C();
  v19 = sub_10075FF6C();
  v20 = [v19 length];

  v21 = &selRef_initWithTabBarSystemItem_tag_;
  if (v20 <= 0)
  {
    [*&v6[qword_10094C5D8] setText:0];
    v6[qword_10099D798] = 0;
    v31 = *&v6[qword_10094C5C8];
    [v31 setHidden:1];
    goto LABEL_7;
  }

  v45 = v17;
  v46 = v15;
  v47 = v14;
  v22 = sub_10075FF6C();
  v23 = [a5 traitCollection];
  v24 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v22];
  v48 = [v22 length];
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v23;
  *(v25 + 32) = v24;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1000275EC;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1000ACB04;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  aBlock[3] = &unk_100894448;
  v27 = _Block_copy(aBlock);
  v28 = v23;
  v29 = v24;

  [v22 enumerateAttributesInRange:0 options:v48 usingBlock:{0x100000, v27}];

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_22;
  }

  isEscapingClosureAtFileLocation = *&v6[qword_10094C5D8];
  [isEscapingClosureAtFileLocation setAttributedText:v29];
  if (qword_10093F9A8 != -1)
  {
LABEL_22:
    swift_once();
  }

  [isEscapingClosureAtFileLocation setTextColor:qword_10099D780];
  v6[qword_10099D798] = 1;
  v31 = *&v6[qword_10094C5C8];
  [v31 setHidden:0];

  v15 = v46;
  v14 = v47;
  v17 = v45;
  v21 = &selRef_initWithTabBarSystemItem_tag_;
LABEL_7:
  v32 = *&v6[qword_10094C5D0];
  sub_10075FF7C();
  if (v33)
  {
    v34 = sub_10076FF6C();
  }

  else
  {
    v34 = 0;
  }

  [v32 v21[250]];

  v6[qword_10099D790] = (sub_10075FF4C() & 1) == 0;
  sub_100027A78();
  if ((sub_10075FF4C() & 1) == 0 && v6[qword_10099D798] != 1)
  {
    sub_10075FD2C();
    sub_10075FBAC();
  }

  sub_1007638EC();
  if (sub_10075FF4C())
  {
    [v31 setBackgroundColor:0];
  }

  else
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v35 = sub_100770D5C();
    [v31 setBackgroundColor:v35];
  }

  if (sub_100760DFC())
  {
    v36 = [v6 contentView];
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    sub_10076422C();
    v38 = v37;

    sub_10076BEFC();
    v40 = v39;
    sub_10076BEFC();
    v42 = v41;

    result = (*(v15 + 8))(v17, v14);
    v43 = &v6[qword_1009A3418];
    *v43 = v38;
    v43[1] = v38 * (v40 / v42);
  }

  else
  {

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

double sub_100402324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10040233C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - v11;
  sub_10000A570(a1, v25);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076382C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_10076FCFC();
    sub_10076F87C();
    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel];
    v15 = v2;
    sub_1007637FC();
    v16 = sub_10076FF6C();

    [v14 setText:v16];

    sub_10076381C();
    v17 = sub_1007637EC();
    v18 = sub_10076082C();
    sub_100107BF4(v18, sub_1000368B8);
    v20 = v19;

    v21 = sub_10076081C();
    v24[0] = v9;
    sub_10050C274(v21, v17, v20);

    v22 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView];
    v23 = sub_1007637DC();
    [v22 setTintColor:v23];

    *&v15[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon] = sub_10076380C();

    [v15 setNeedsLayout];

    return (*(v10 + 8))(v12, v24[0]);
  }

  return result;
}

uint64_t sub_100402678(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-v6 - 8];
  v8 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-v10 - 8];
  sub_10000A570(a1, v15);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076C0CC();
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v14;
    (*(v5 + 16))(v7, a2, v4);
    sub_10076FCFC();
    sub_10076F87C();
    sub_1004648B8(v13, 1);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_100402870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-v8 - 8];
  v10 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-v12 - 8];
  sub_10000A570(a1, v20);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_1007621CC();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v7 + 16))(v9, a2, v6);
    sub_10076FCFC();
    sub_10076F87C();
    sub_1007621BC();
    sub_10076260C();

    sub_1007621AC();
    if (v15)
    {
      v16 = sub_10076045C();
    }

    else
    {
      v16 = 0;
    }

    v17 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage];
    *&v3[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage] = v16;
    v18 = v16;

    sub_10032280C();
    [v3 setNeedsLayout];

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_100402AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v20 = a6;
  v9 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_10000A570(a1, v22);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10075F1FC();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v21;
    (*(v10 + 16))(v12, a2, v9);
    sub_10076FCFC();
    sub_10076F87C();
    v20(v18, a3);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100402D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  v22 = a7;
  v11 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - v13 + 8;
  v15 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v23 - v17 + 8;
  sub_10000A570(a1, v23);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10075F29C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v12 + 16))(v14, a2, v11);
    sub_10076FCFC();
    sub_10076F87C();
    sub_100761EDC();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      a6(v20, a3);
    }

    else
    {
      sub_10076C52C();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22(v21, a3);
      }
    }

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_100402F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - v8;
  v10 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - v12;
  sub_10000A570(a1, v20);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100760DAC();
  result = swift_dynamicCast();
  if (result)
  {
    v18[1] = v3;
    v15 = v19;
    (*(v7 + 16))(v9, a2, v6);
    sub_10076FCFC();
    sub_10076F87C();
    sub_10000A5D4(&unk_1009467A0, &qword_1007890C8);
    sub_10076F64C();
    sub_10076FC1C();
    v19 = v15;
    sub_10075F74C();

    v16 = v20[0];
    if ((~v20[0] & 0xF000000000000007) != 0)
    {
      v17 = v20[1];
    }

    else
    {

      v17 = 0;
      v16 = v15;
    }

    sub_1001B7BA8(v16, v17);
    sub_1000A9094(v16, v17);

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_1004031D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v26 = a2;
  v5 = sub_10076B6EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  sub_10000A570(a1, v29);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076B51C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, v26, v9);
    sub_10076FCFC();
    sub_10076F87C();
    sub_10076B4FC();
    if (v18)
    {
      v19 = sub_10076FF6C();
    }

    else
    {
      v19 = 0;
    }

    v20 = v28;
    [v28 setAccessibilityLabel:v19];

    sub_10076B6AC();
    sub_100409428(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v21 = sub_10077124C();
    (*(v6 + 8))(v8, v5);
    if (v21)
    {
      v22 = sub_10076B50C();
      v23 = &v20[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
      *v23 = v22;
      v23[1] = v24;

      sub_1003CE7AC();
    }

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100403520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a2;
  v7 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_10076D39C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v18 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v50 = *(v18 - 8);
  v51 = v18;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_10000A570(a1, v53);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076B56C();
  result = swift_dynamicCast();
  if (result)
  {
    v48 = a5;
    (*(v15 + 16))(v17, v49, v14);
    sub_10076FCFC();
    sub_10076F87C();
    v22 = v52;
    v23 = *&v52[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_quoteView];
    v24 = sub_10076B53C();
    sub_1003B2F6C(v24, v25);
    v26 = sub_10076B54C();
    sub_1003B36E0(v26, v27);
    v23[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork] = sub_10076B52C() & 1;
    sub_1003B3AD0();
    if (sub_10076B55C())
    {
      sub_10076BEFC();
      sub_10076BEFC();
      sub_10076D3AC();
      (*(v11 + 16))(v9, v13, v10);
      (*(v11 + 56))(v9, 0, 1, v10);
      v28 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_10003837C(v9, &v23[v28], &unk_1009467E0, qword_10078CB50);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] setHidden:0];
      [v23 setNeedsLayout];
      v29 = [v22 contentView];
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      sub_10076422C();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v54.origin.x = v31;
      v54.origin.y = v33;
      v54.size.width = v35;
      v54.size.height = v37;
      Width = CGRectGetWidth(v54);
      sub_10076D36C();
      v40 = v39;

      (*(v11 + 8))(v13, v10);
      v41 = &v22[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_preferredArtworkSize];
      *v41 = Width;
      *(v41 + 1) = v40;
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
      v42 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_10003837C(v9, &v23[v42], &unk_1009467E0, qword_10078CB50);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] setHidden:1];
      [v23 setNeedsLayout];
      v43 = &v22[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_preferredArtworkSize];
      *v43 = 0;
      *(v43 + 1) = 0;
    }

    v44 = v48;
    [v48 pageMarginInsets];
    v46 = v45;
    [v44 pageMarginInsets];
    [v23 setLayoutMargins:{0.0, v46, 0.0}];

    return (*(v50 + 8))(v20, v51);
  }

  return result;
}

uint64_t sub_100403AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9 - 8];
  v11 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  sub_10000A570(a1, v18);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10075F1FC();
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v17;
    (*(v8 + 16))(v10, a2, v7);
    sub_10076FCFC();
    sub_10076F87C();
    sub_10069D2F0(v16, a3);
    [v3 setNeedsLayout];

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_100403CD8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-v7 - 8];
  v9 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-v11 - 8];
  sub_10000A570(a1, v20);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076C1AC();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_10076FCFC();
    sub_10076F87C();
    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_footnoteView];
    v15 = sub_10076C18C();
    v16 = v14[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron];
    v14[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron] = (v15 & 2) != 0;
    sub_100133E3C(v16);
    v14[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight] = (sub_10076C18C() & 4) != 0;
    v17 = *&v14[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel];
    sub_10076C19C();
    v18 = sub_10076FF6C();

    [v17 setText:v18];

    [v14 setNeedsLayout];
    [v2 setNeedsLayout];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_100403F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20[0] = a5;
  v9 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v13 = sub_10000A5D4(&unk_1009566B0, &qword_1007A1D60);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v20 - v15;
  sub_10000A570(a1, v21);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076C61C();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v20[2];
    (*(v10 + 16))(v12, a2, v9);
    sub_10076F87C();
    sub_100415110(v18, v16, v19, a3, a4, v20[0]);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100404188(uint64_t a1, char *a2, uint64_t a3)
{
  v107 = a3;
  v105 = a2;
  v5 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v5 - 8);
  v93 = v86 - v6;
  v7 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v7 - 8);
  v95 = v86 - v8;
  v9 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v9 - 8);
  v94 = v86 - v10;
  v11 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v11 - 8);
  v92 = v86 - v12;
  v13 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v13 - 8);
  v91 = v86 - v14;
  v15 = sub_10076361C();
  __chkstk_darwin(v15 - 8);
  v90 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10075FEEC();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v18 - 8);
  v100 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v99 = v86 - v21;
  v22 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v22 - 8);
  v98 = v86 - v23;
  v24 = sub_1007611EC();
  __chkstk_darwin(v24 - 8);
  v97 = v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v96 = v86 - v27;
  v28 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v28 - 8);
  v30 = v86 - v29;
  v31 = sub_10076121C();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10076481C();
  v103 = *(v35 - 8);
  v104 = v35;
  __chkstk_darwin(v35);
  v106 = v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = v86 - v39;
  v41 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v101 = *(v41 - 8);
  v102 = v41;
  __chkstk_darwin(v41);
  v43 = v86 - v42;
  sub_10000A570(a1, v109);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076C88C();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v86[0] = v3;
  v45 = v108;
  (*(v38 + 16))(v40, v105, v37);
  sub_10076FCFC();
  v105 = v43;
  sub_10076F87C();
  v86[1] = v45;
  sub_10076C86C();
  (*(v32 + 104))(v34, enum case for VideoFillMode.scaleAspectFill(_:), v31);
  sub_10076B84C();
  sub_10076BEFC();
  sub_10076D3AC();

  v46 = sub_10076D39C();
  (*(*(v46 - 8) + 56))(v30, 0, 1, v46);
  sub_10076B7EC();
  sub_10076B82C();
  sub_10076B7FC();
  sub_10076B7DC();
  sub_10076B83C();
  v47 = v106;
  sub_1007647FC();
  sub_100762F0C();
  sub_10076F5CC();
  v48 = v109[0];
  sub_10076B7CC();
  v49 = v98;
  sub_10076B85C();
  v50 = sub_10075DB7C();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  v51 = v99;
  sub_10076B81C();
  v52 = v100;
  sub_10076B80C();
  type metadata accessor for VideoView(0);
  sub_100409428(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
  v97 = v48;
  v53 = sub_100762EEC();
  sub_10000CFBC(v52, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v51, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v49, &unk_1009435D0, &qword_100785850);
  sub_10000CFBC(v109, &qword_100943310, &unk_100784150);
  v54 = *(v86[0] + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    v57 = [Strong superview];
    if (v57)
    {
      v58 = v57;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v59 = v54;
      v60 = sub_100770EEC();

      if ((v60 & 1) == 0)
      {
        goto LABEL_8;
      }

      v61 = swift_unknownObjectWeakLoadStrong();
      if (!v61)
      {
        goto LABEL_8;
      }

      v56 = v61;
      [v61 removeFromSuperview];
    }
  }

LABEL_8:
  swift_unknownObjectWeakAssign();
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v63 = v62;
    v64 = v88;
    v65 = v87;
    v66 = v89;
    (*(v88 + 104))(v87, enum case for CornerStyle.continuous(_:), v89);
    sub_1007638AC();
    (*(v64 + 8))(v65, v66);
    [v54 addSubview:v63];
    [v54 sendSubviewToBack:v63];
    [v54 setNeedsLayout];
  }

  v67 = swift_unknownObjectWeakLoadStrong();
  if (v67)
  {
    v67[qword_1009602D8] = 1;
  }

  v68 = *&v54[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayView];
  v69 = sub_10076C87C();
  if (v69)
  {
    v70 = v69;
    [v68 setHidden:0];
    v71 = v90;
    sub_10076C85C();
    sub_1000C1B9C(v71, v72);
    v73 = *&v54[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView];
    v74 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    v75 = v91;
    (*(*(v74 - 8) + 56))(v91, 1, 1, v74);
    v76 = sub_10075F78C();
    v77 = v92;
    (*(*(v76 - 8) + 56))(v92, 1, 1, v76);
    v78 = sub_1007628DC();
    v79 = v94;
    (*(*(v78 - 8) + 56))(v94, 1, 1, v78);
    v80 = sub_10000A5D4(&unk_100946750, qword_100787A30);
    v81 = v95;
    (*(*(v80 - 8) + 56))(v95, 1, 1, v80);
    v82 = sub_10076C54C();
    v83 = v93;
    (*(*(v82 - 8) + 56))(v93, 1, 1, v82);
    v84 = v73;
    sub_1004D0A60(v70, v84, v75, v107, 0, 0, v77, v79, v83, v81);
    sub_10000CFBC(v83, &unk_100949290, &unk_10078BBF0);
    v84[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v84 setNeedsLayout];

    sub_10000CFBC(v81, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v79, &unk_1009492A0, &unk_10078BC00);
    sub_10000CFBC(v77, &unk_10094D210, &qword_10078DE20);
    sub_10000CFBC(v75, &unk_100946760, &unk_100787A20);
    (*(v103 + 8))(v106, v104);
  }

  else
  {
    v85 = v68;
    [v85 setHidden:1];

    (*(v103 + 8))(v47, v104);
  }

  return (*(v101 + 8))(v105, v102);
}

uint64_t sub_100404F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v71 = a3;
  v67 = a2;
  v6 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v6 - 8);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  v11 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  v15 = sub_10000A5D4(&qword_10094AA50, &qword_100790528);
  v69 = *(v15 - 8);
  v70 = v15;
  __chkstk_darwin(v15);
  v17 = &v65 - v16;
  v18 = sub_10000A5D4(&unk_100956700, &unk_10079F180);
  __chkstk_darwin(v18 - 8);
  v20 = &v65 - v19;
  v21 = sub_10075F51C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v27 = v26;
  sub_10000A570(v25, v72);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  v28 = swift_dynamicCast();
  v29 = *(v22 + 56);
  if (v28)
  {
    v29(v20, 0, 1, v27);
    v65 = v22;
    v66 = v27;
    (*(v22 + 32))(v24, v20, v27);
    (*(v12 + 16))(v14, v67, v11);
    sub_10076F87C();
    *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems] = sub_10075F4EC();

    v30 = sub_10075F4FC();
    v31 = &v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleText];
    *v31 = v30;
    v31[1] = v32;

    v33 = *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel];

    v34 = sub_10076FF6C();

    [v33 setText:v34];

    [v4 setNeedsLayout];
    v35 = sub_10075F50C();
    v36 = &v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary];
    *v36 = v35;
    v36[1] = v37;

    sub_10031C0A4(v38);
    v39 = sub_10075F4CC();
    if (v39)
    {
      v72[0] = v39;
      sub_10076B90C();
      sub_10076F64C();
      sub_100409428(&qword_100956710, &type metadata accessor for Action, &protocol conformance descriptor for Action);
      sub_10076F56C();

      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v42 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    v43 = 1;
    (*(*(v42 - 8) + 56))(v10, v40, 1, v42);
    v44 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
    swift_beginAccess();
    sub_1000A912C(v10, &v4[v44], &qword_100952650, &unk_10079B720);
    swift_endAccess();
    sub_10031C22C();
    sub_10000CFBC(v10, &qword_100952650, &unk_10079B720);
    sub_100166C0C();
    v45 = v70;
    v46 = v17;
    sub_10076F84C();
    if ((v72[0] & 1) == 0)
    {
      v43 = sub_10075F4DC();
    }

    sub_10031DB84();
    v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded] = v43 & 1;
    sub_10031BDF8();
    v47 = sub_10075F4CC();
    if (v47)
    {
      v72[0] = v47;
      sub_10076B90C();
      sub_10076F64C();
      sub_100409428(&qword_100956710, &type metadata accessor for Action, &protocol conformance descriptor for Action);
      v48 = v68;
      sub_10076F56C();

      v49 = 0;
    }

    else
    {
      v49 = 1;
      v48 = v68;
    }

    v50 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    (*(*(v50 - 8) + 56))(v48, v49, 1, v50);
    swift_beginAccess();
    sub_1000A912C(v48, &v4[v44], &qword_100952650, &unk_10079B720);
    swift_endAccess();
    sub_10031C22C();
    sub_10000CFBC(v48, &qword_100952650, &unk_10079B720);
    v51 = [v4 traitCollection];
    v52 = sub_1007706CC();

    v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isSeparatorDisplayed] = (v52 & 1) == 0;
    if (v52)
    {
      v53 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_separatorLineView;
      swift_beginAccess();
      v54 = *&v4[v53];
      v55 = v65;
      if (v54)
      {
        [v54 removeFromSuperview];
        v56 = *&v4[v53];
      }

      else
      {
        v56 = 0;
      }

      v61 = v66;
      *&v4[v53] = 0;

      [v4 setNeedsLayout];
    }

    else
    {
      v57 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v58 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_separatorLineView;
      swift_beginAccess();
      v59 = *&v4[v58];
      if (v59)
      {
        [v59 removeFromSuperview];
        v60 = *&v4[v58];
      }

      else
      {
        v60 = 0;
      }

      *&v4[v58] = v57;
      v62 = v57;

      if (v62)
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        v63 = sub_100770CDC();
        [v62 setBackgroundColor:v63];

        v64 = [v4 contentView];
        [v64 addSubview:v62];
      }

      [v4 setNeedsLayout];

      v55 = v65;
      v61 = v66;
    }

    (*(v69 + 8))(v46, v45);
    return (*(v55 + 8))(v24, v61);
  }

  else
  {
    v29(v20, 1, 1, v27);
    return sub_10000CFBC(v20, &unk_100956700, &unk_10079F180);
  }
}

uint64_t sub_1004058A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v7 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9 + 8;
  v11 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v17 - v13 + 8;
  sub_10000A570(a1, v17);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076BC0C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v8 + 16))(v10, a2, v7);
    sub_10076FCFC();
    sub_10076F87C();
    sub_100476FB8();

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_100405AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100762A3C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - v10;
  v23[0] = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v12 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v14 = v23 - v13;
  sub_10000A570(a1, v24);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076016C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_10076FCFC();
    sub_10076F87C();
    v16 = v23[1];
    sub_10076012C();
    v17 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    (*(v5 + 24))(v16 + v17, v7, v4);
    swift_endAccess();
    sub_100496EE4();
    (*(v5 + 8))(v7, v4);
    v18 = sub_10076013C();
    sub_100496C50(v18, v19);
    v20 = sub_10076014C();
    sub_100496C5C(v20, v21);
    *(v16 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_artwork) = sub_10076015C();

    v22 = sub_10076010C();
    sub_100499334();
    *(v16 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categories) = v22;

    sub_100496C68();

    return (*(v12 + 8))(v14, v23[0]);
  }

  return result;
}

uint64_t sub_100405E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v23 = a7;
  v21 = a4;
  v22 = a5;
  v11 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v21 - v17;
  sub_10000A570(a1, v25);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  a6(0);
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v24;
    (*(v12 + 16))(v14, a2, v11);
    sub_10076FCFC();
    sub_10076F87C();
    v23(v20, v18, a3, v21, v22);

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_10040601C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000A5D4(&unk_1009567A0, &unk_1007A6E20);
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  __chkstk_darwin(v8);
  v75 = &v63 - v10;
  v70 = sub_10076E1EC();
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_1009467C0, &unk_100787A10);
  __chkstk_darwin(v12 - 8);
  v67 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v63 - v15;
  v16 = sub_10000A5D4(&qword_1009459C0, &unk_1007A1DA0);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - v17;
  v19 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v63 - v21;
  v23 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v69 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v63 - v24;
  sub_10000A570(a1, v79);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100760F7C();
  result = swift_dynamicCast();
  if (result)
  {
    v27 = v78;
    (*(v20 + 16))(v22, a2, v19);
    sub_10076FCFC();
    sub_10076F87C();
    v79[0] = sub_100760F6C();
    sub_10076083C();
    v28 = sub_10076F64C();
    sub_100409428(&qword_1009467D0, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
    v73 = v28;
    v74 = a3;
    sub_10076F56C();

    v29 = sub_10000A5D4(&qword_1009459B8, qword_100787F00);
    (*(*(v29 - 8) + 56))(v18, 0, 1, v29);
    v30 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyText;
    swift_beginAccess();
    sub_1000A912C(v18, v4 + v30, &qword_1009459C0, &unk_1007A1DA0);
    swift_endAccess();
    sub_1001063C8();
    sub_10000CFBC(v18, &qword_1009459C0, &unk_1007A1DA0);
    v31 = sub_100760F4C();
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_isDetailHeader) = v31 & 1;
    v32 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyLabel);
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v33 = v25;
    if (v31)
    {
      v34 = sub_100770CFC();
    }

    else
    {
      v34 = sub_100770D1C();
    }

    v35 = *(v32 + qword_10095B640);
    *(v32 + qword_10095B640) = v34;
    v36 = v34;
    if ((sub_100770EEC() & 1) == 0)
    {
      sub_10050C644();
    }

    v37 = sub_100760F5C();
    v38 = v37;
    if (v37 >> 62)
    {
      v39 = sub_10077158C();
    }

    else
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = v33;
    v65 = v23;
    v66 = v27;
    if (v39)
    {
      v79[0] = _swiftEmptyArrayStorage;
      result = sub_1004BB920(0, v39 & ~(v39 >> 63), 0);
      if (v39 < 0)
      {
        __break(1u);
        return result;
      }

      v63 = v4;
      v40 = 0;
      v41 = v79[0];
      v42 = v75;
      do
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v43 = sub_10077149C();
        }

        else
        {
          v43 = *(v38 + 8 * v40 + 32);
        }

        v78 = v43;
        sub_100769C4C();
        sub_100409428(&qword_1009567B0, &type metadata accessor for PrivacyHeaderSupplementaryItem, &protocol conformance descriptor for PrivacyHeaderSupplementaryItem);
        sub_10076F56C();

        v79[0] = v41;
        v45 = v41[2];
        v44 = v41[3];
        if (v45 >= v44 >> 1)
        {
          sub_1004BB920((v44 > 1), v45 + 1, 1);
          v41 = v79[0];
        }

        ++v40;
        v41[2] = v45 + 1;
        (*(v77 + 32))(v41 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v45, v42, v76);
      }

      while (v39 != v40);

      v4 = v63;
    }

    else
    {

      v41 = _swiftEmptyArrayStorage;
    }

    v46 = v71;
    sub_100107E88();
    v47 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems;
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems) = v41;

    sub_10010666C();
    if (sub_100760F4C())
    {
      v48 = *(v72 + 104);
      v72 += 104;
      LODWORD(v77) = enum case for Separator.Position.top(_:);
      v76 = v48;
      v48(v46);
      v75 = sub_10076D67C();
      v80 = v75;
      v81 = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v79);
      sub_10076D66C();
      v49 = v68;
      sub_10076E1FC();
      v50 = sub_10076E21C();
      v51 = v4;
      v52 = *(*(v50 - 8) + 56);
      v53 = 1;
      v52(v49, 0, 1, v50);
      v54 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_1000A912C(v49, v51 + v54, &unk_1009467C0, &unk_100787A10);
      swift_endAccess();
      sub_100106E28();
      sub_10000CFBC(v49, &unk_1009467C0, &unk_100787A10);
      if (*(*(v51 + v47) + 16))
      {
        v76(v71, v77, v70);
        v80 = v75;
        v81 = &protocol witness table for ZeroDimension;
        sub_10000DB7C(v79);
        sub_10076D66C();
        v55 = v67;
        sub_10076E1FC();
        v53 = 0;
        v56 = v69;
      }

      else
      {
        v56 = v69;
        v55 = v67;
      }

      v52(v55, v53, 1, v50);
      v62 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_1000A912C(v55, v51 + v62, &unk_1009467C0, &unk_100787A10);
      swift_endAccess();
      sub_100106E3C();

      sub_10000CFBC(v55, &unk_1009467C0, &unk_100787A10);
      return (*(v56 + 8))(v64, v65);
    }

    else
    {
      v57 = sub_10076E21C();
      v58 = *(*(v57 - 8) + 56);
      v59 = v68;
      v58(v68, 1, 1, v57);
      v60 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_1000A912C(v59, v4 + v60, &unk_1009467C0, &unk_100787A10);
      swift_endAccess();
      sub_100106E28();
      sub_10000CFBC(v59, &unk_1009467C0, &unk_100787A10);
      v58(v59, 1, 1, v57);
      v61 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_1000A912C(v59, v4 + v61, &unk_1009467C0, &unk_100787A10);
      swift_endAccess();
      sub_100106E3C();

      sub_10000CFBC(v59, &unk_1009467C0, &unk_100787A10);
      return (*(v69 + 8))(v64, v65);
    }
  }

  return result;
}

uint64_t sub_100406AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11 - 8];
  v13 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24[-v15 - 8];
  sub_10000A570(a1, v24);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_1007616DC();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, a2, v9);
    sub_10076FCFC();
    sub_10076F87C();
    v18 = [v5 contentView];
    [a5 pageMarginInsets];
    [v18 setLayoutMargins:?];

    v19 = sub_1007616CC();
    sub_1004A41D8(v19, v20);
    v21 = sub_1007616BC();
    sub_1004A41E4(v21, v22);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_100406D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007617CC();
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9 - 8];
  v11 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  sub_10000A570(a1, v18);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_1007617FC();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v8 + 16))(v10, a2, v7);
    sub_10076FCFC();
    sub_10076F87C();
    sub_1007617EC();
    sub_100067C68(v6);
    v16 = sub_1007617DC();
    sub_100068794(v16);

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_100406F98(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7 - 8];
  v9 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16[-v11 - 8];
  sub_10000A570(a1, v16);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076219C();
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v15;
    (*(v6 + 16))(v8, a2, v5);
    sub_10076FCFC();
    sub_10076F87C();
    *&v2[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = v14;

    *(*&v2[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category) = v14;

    sub_100103A50();
    [v2 setNeedsLayout];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1004071F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v25 = a2;
  v4 = sub_10076CA9C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v15 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v26 = *(v15 - 8);
  v27 = v15;
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  sub_10000A570(a1, v30);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_1007698CC();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v29;
    (*(v12 + 16))(v14, v25, v11);
    sub_10076FCFC();
    sub_10076F87C();
    sub_1007698BC();
    sub_100712610(v10);
    v20 = *(v5 + 8);
    v20(v7, v4);
    sub_10076CB1C();
    v20(v10, v4);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v23 = v28;
    v22[2] = v19;
    v22[3] = v23;
    v22[4] = v21;

    sub_10076CACC();

    v24 = swift_allocObject();
    *(v24 + 16) = v19;
    *(v24 + 24) = v23;

    sub_10076CAEC();

    return (*(v26 + 8))(v17, v27);
  }

  return result;
}

uint64_t sub_1004075BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-v10 - 8];
  v12 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-v14 - 8];
  sub_10000A570(a1, v22);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10075F29C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_10076FCFC();
    sub_10076F87C();
    sub_100761EDC();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;

      sub_1002F017C(v18, a3);
    }

    else
    {
      sub_10076C52C();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
LABEL_7:
        [v4 setNeedsLayout];

        return (*(v13 + 8))(v15, v12);
      }

      v20 = v19;

      sub_1002F0400(v20, a3);
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100407848(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-v6 - 8];
  v8 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-v10 - 8];
  sub_10000A570(a1, v18);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_1007636DC();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v5 + 16))(v7, a2, v4);
    sub_10076FCFC();
    sub_10076F87C();
    v13 = sub_1007636CC();
    sub_100371210(v13, v14);
    v15 = sub_1007636BC();
    sub_10037121C(v15, v16);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_100407A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v63 = a5;
  v9 = sub_10000A5D4(&unk_100946740, &unk_1007890B0);
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = sub_10076545C();
  v58 = *(v12 - 8);
  v59 = v12;
  __chkstk_darwin(v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10076C96C();
  v67 = *(v60 - 8);
  __chkstk_darwin(v60);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v66 = &v56 - v18;
  v19 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v56 - v21;
  v23 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v64 = *(v23 - 8);
  v65 = v23;
  __chkstk_darwin(v23);
  v25 = &v56 - v24;
  sub_10000A570(a1, v68);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_100763D9C();
  result = swift_dynamicCast();
  if (result)
  {
    v56 = v11;
    (*(v20 + 16))(v22, a2, v19);
    sub_10076FCFC();
    v57 = v25;
    sub_10076F87C();
    v27 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel);
    v28 = sub_100763D8C();
    v69._object = 0x80000001007D1EE0;
    v69._countAndFlagsBits = 0xD000000000000032;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    sub_100767D6C(v69, v28, v70);
    v29 = sub_10076FF6C();

    [v27 setText:v29];

    v30 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel);
    v31 = v63;
    v32 = [v63 traitCollection];
    sub_1000BFFCC();

    v33 = sub_10076FF6C();

    [v30 setText:v33];

    v34 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel);
    sub_100763D6C();
    v35 = sub_10076FF6C();

    [v34 setText:v35];

    v36 = sub_100763D5C();
    if (*(v36 + 16))
    {
      v37 = v66;
      v38 = *(v67 + 16);
      v39 = v60;
      v38(v66, v36 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v60);

      v38(v16, v37, v39);
      sub_100763D7C();
      v40 = [v31 traitCollection];
      LOBYTE(v38) = sub_1007706EC();

      v41 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v38 & 1) == 0)
      {
        v41 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v58 + 104))(v14, *v41, v59);
      v42 = objc_allocWithZone(sub_10076546C());
      v43 = sub_10076544C();
      v44 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
      v45 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
      if (v45)
      {
        [v45 removeFromSuperview];
        v46 = *(v6 + v44);
      }

      else
      {
        v46 = 0;
      }

      v50 = v56;
      *(v6 + v44) = v43;
      v51 = v43;

      [*(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView) addSubview:v51];
      if (sub_100763D7C() < 2)
      {
        v52 = v57;
        if (qword_10093FAB8 != -1)
        {
          swift_once();
        }

        v53 = qword_10099D918;
      }

      else
      {
        v52 = v57;
        if (qword_10093FAC0 != -1)
        {
          swift_once();
        }

        v53 = qword_10099D930;
      }

      v54 = v62;
      v55 = sub_10000A61C(v62, v53);
      (*(v61 + 16))(v50, v55, v54);
      swift_beginAccess();
      sub_1007675EC();
      swift_endAccess();

      (*(v67 + 8))(v66, v39);
      return (*(v64 + 8))(v52, v65);
    }

    else
    {

      v47 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
      v48 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
      if (v48)
      {
        [v48 removeFromSuperview];
        v49 = *(v6 + v47);
      }

      else
      {
        v49 = 0;
      }

      *(v6 + v47) = 0;

      return (*(v64 + 8))(v57, v65);
    }
  }

  return result;
}

uint64_t sub_1004081B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v24 = a3;
  v7 = sub_10000A5D4(&unk_100946800, &unk_1007AAD50);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  sub_10000A570(a1, v25);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076653C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    sub_10076FCFC();
    sub_10076F87C();
    v19 = sub_10076651C();
    if (v20)
    {
      v21 = sub_10076652C();
      v22 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      sub_100545FF4(v21, v9, 1, v24);

      sub_10000CFBC(v9, &unk_100946800, &unk_1007AAD50);
      [v4 layoutIfNeeded];
    }

    else
    {
      sub_100545CF8(v19);
    }

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1004084B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7 - 8];
  v9 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-v11 - 8];
  sub_10000A570(a1, v17);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_1007644DC();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_10076FCFC();
    sub_10076F87C();
    v14 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
    sub_1007644CC();
    v15 = sub_10076FF6C();

    [v14 setText:v15];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_1004086E0(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a3;
  v42 = a2;
  v4 = sub_10000A5D4(&qword_100956728, &unk_1007A1D70);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = v39 - v5;
  v6 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  __chkstk_darwin(v6 - 8);
  v46 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v39 - v9;
  __chkstk_darwin(v11);
  v13 = v39 - v12;
  __chkstk_darwin(v14);
  v16 = v39 - v15;
  __chkstk_darwin(v17);
  v19 = v39 - v18;
  v49 = sub_10076CBBC();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v39 - v24;
  v26 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v43 = *(v26 - 8);
  v44 = v26;
  __chkstk_darwin(v26);
  v28 = v39 - v27;
  sub_10000A570(a1, v53);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076887C();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v23 + 16))(v25, v42, v22);
    sub_10076FCFC();
    sub_10076F87C();
    v30 = v21;
    v41 = v21;
    v31 = v52;
    sub_10076886C();
    v40 = v19;
    sub_10076882C();
    sub_10076885C();
    sub_10076884C();
    sub_10076883C();
    v32 = v46;
    v33 = sub_10076881C();
    v42 = v39;
    __chkstk_darwin(v33);
    v39[1] = v39;
    v39[-8] = v30;
    v39[-7] = v31;
    v39[-6] = v45;
    v39[-5] = v19;
    v39[-4] = v16;
    v39[-3] = v13;
    v39[-2] = v10;
    v39[-1] = v32;
    __chkstk_darwin(v34);
    v39[-4] = sub_100409178;
    v39[-3] = v35;
    v39[-2] = v36;
    v39[-1] = v31;
    sub_10000A5D4(&qword_100956738, &qword_1007A1D80);
    sub_100409198();
    v37 = v48;
    sub_10076EC9C();
    sub_10076ECFC();
    v38 = v51;
    v53[3] = v51;
    v53[4] = sub_100071820(&unk_100956790, &qword_100956728, &unk_1007A1D70, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10000DB7C(v53);
    sub_10076EC8C();
    (*(v50 + 8))(v37, v38);
    sub_1007707FC();

    (*(v43 + 8))(v28, v44);
    sub_10000CFBC(v32, &qword_100956730, &unk_1007ABEA0);
    sub_10000CFBC(v10, &qword_100956730, &unk_1007ABEA0);
    sub_10000CFBC(v13, &qword_100956730, &unk_1007ABEA0);
    sub_10000CFBC(v16, &qword_100956730, &unk_1007ABEA0);
    sub_10000CFBC(v40, &qword_100956730, &unk_1007ABEA0);
    return (*(v47 + 8))(v41, v49);
  }

  return result;
}

uint64_t sub_100408CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-v6];
  v8 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14[-v10];
  sub_10000A570(a1, v14);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076349C();
  swift_dynamicCast();
  (*(v5 + 16))(v7, a2, v4);
  sub_10076FCFC();
  sub_10076F87C();
  if (sub_10076342C())
  {

    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  (*(v9 + 8))(v11, v8);

  return v12;
}

uint64_t sub_100408ED0(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - v5 + 8;
  v7 = sub_10000A5D4(&qword_10094AA50, &qword_100790528);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - v9 + 8;
  v11 = sub_10075F51C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_10000A570(a1, v18);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  swift_dynamicCast();
  (*(v4 + 16))(v6, v17, v3);
  sub_10076F87C();
  if (sub_100318E24())
  {
    sub_100166C0C();
    sub_10076F83C();
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  return v15;
}

unint64_t sub_100409198()
{
  result = qword_100956740;
  if (!qword_100956740)
  {
    sub_10000CE78(&qword_100956738, &qword_1007A1D80);
    sub_100409250();
    sub_100071820(&qword_100956780, &qword_10094CE18, &qword_10079D510, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956740);
  }

  return result;
}

unint64_t sub_100409250()
{
  result = qword_100956748;
  if (!qword_100956748)
  {
    sub_10000CE78(&qword_100956750, &qword_1007A1D88);
    sub_10000CE78(&qword_100956758, &qword_1007A1D90);
    sub_10000CE78(&qword_100956760, &qword_1007A1D98);
    sub_10076F64C();
    sub_10076CB8C();
    sub_100409428(&qword_100956768, &type metadata accessor for ActivityFeedPlatterView, &protocol conformance descriptor for ActivityFeedPlatterView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100071820(&unk_100956770, &qword_10094CE10, &unk_100793670, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956748);
  }

  return result;
}

uint64_t sub_100409428(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100409470()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004094A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10040950C(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t ButtonPlaceholder.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration;
  v4 = sub_10077111C();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ButtonPlaceholder.init(configuration:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration;
  v4 = sub_10077111C();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t ButtonPlaceholder.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration;
  v4 = sub_10077111C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_100409724()
{
  v1 = sub_10077111C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button;
  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button);
  }

  else
  {
    sub_100409B3C();
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration, v1);
    v8 = v0;
    v9 = sub_10077112C();
    v10 = *(v0 + v5);
    *(v8 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v11 = v6;
  return v7;
}

double ButtonPlaceholder.measure(toFit:with:)(uint64_t a1, double a2, double a3)
{
  v3 = sub_100409724();
  sub_100770F2C();
  v5 = v4;

  return v5;
}

uint64_t ButtonPlaceholder.deinit()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration;
  v2 = sub_10077111C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ButtonPlaceholder.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration;
  v2 = sub_10077111C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1004099D8(uint64_t a1, double a2, double a3)
{
  v3 = sub_100409724();
  sub_100770F2C();
  v5 = v4;

  return v5;
}

uint64_t type metadata accessor for ButtonPlaceholder(uint64_t a1)
{
  result = qword_1009567E8;
  if (!qword_1009567E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100409AA4(uint64_t a1)
{
  result = sub_10077111C();
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

unint64_t sub_100409B3C()
{
  result = qword_100947240;
  if (!qword_100947240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100947240);
  }

  return result;
}

void sub_100409B88(void (*a1)(uint64_t *__return_ptr, uint64_t *, __n128), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v12[2] = _swiftEmptyArrayStorage;
    sub_1007714EC();
    if (i < 0)
    {
      __break(1u);
LABEL_18:

      __break(1u);
      return;
    }

    for (j = 0; ; ++j)
    {
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = sub_10077149C();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(a3 + 8 * j + 32);
      }

      v11 = v9;
      (a1)(v12, &v11);
      if (v4)
      {
        goto LABEL_18;
      }

      v4 = 0;

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_100409D08(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1004BBAC4(0, v4, 0);
    v7 = _swiftEmptyArrayStorage;
    for (i = a3 + 32; ; i += 40)
    {
      a1(v15, i);
      if (v3)
      {
        break;
      }

      v17 = v7;
      v10 = v7[2];
      v9 = v7[3];
      if (v10 >= v9 >> 1)
      {
        sub_1004BBAC4((v9 > 1), v10 + 1, 1);
        v7 = v17;
      }

      v7[2] = v10 + 1;
      v11 = &v7[9 * v10];
      *(v11 + 2) = v15[0];
      v12 = v15[1];
      v13 = v15[2];
      v14 = v15[3];
      v11[12] = v16;
      *(v11 + 4) = v13;
      *(v11 + 5) = v14;
      *(v11 + 3) = v12;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100409E34(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076B5BC();
  v10 = (*(*(v9 - 8) + 48))(a1, 1, v9);
  result = 0;
  if (((v10 != 1) & a2) == 1)
  {
    if (qword_100941200 != -1)
    {
      swift_once();
    }

    v12 = sub_10076D9AC();
    sub_10000A61C(v12, qword_1009A2380);
    sub_10076D17C();
    sub_10076D40C();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    return v14;
  }

  return result;
}

uint64_t sub_100409FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007621EC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076B5BC();
  if ((*(*(v14 - 8) + 48))(a1, 1, v14) == 1)
  {
    return 0;
  }

  v26 = v7;
  v27 = a4;
  v16 = enum case for ShelfBackground.none(_:);
  v17 = *(v11 + 104);
  v17(v13, enum case for ShelfBackground.none(_:), v10);
  v18 = sub_1007621DC();
  v19 = *(v11 + 8);
  v19(v13, v10);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v20.n128_f64[0] = v17(v13, v16, v10);
  sub_10011BB7C(v20);
  v21 = sub_10076FF1C();
  v19(v13, v10);
  if (v21)
  {
    return 0;
  }

  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v22 = sub_10076D9AC();
  sub_10000A61C(v22, qword_1009A2380);
  sub_10076D17C();
  sub_10076D40C();
  v24 = v23;
  (*(v26 + 8))(v9, v6);
  return v24;
}

double sub_10040A38C(double a1, double a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_10000A5D4(&qword_1009568B0, &unk_100789000);
  __chkstk_darwin(v15 - 8);
  v17 = v32 - v16;
  v18 = sub_100766E4C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076B71C();
  if (v22 >> 62)
  {
    v29 = a6;
    v30 = v22;
    v31 = sub_10077158C();
    v22 = v30;
    a6 = v29;
    if (v31)
    {
LABEL_3:
      v32[1] = a6;
      v23 = v22;
      (*(a8 + 16))(a4 & 1, a5, a7, a8, a1, a2);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {

        sub_10000CFBC(v17, &qword_1009568B0, &unk_100789000);
      }

      else
      {
        v25 = (*(v19 + 32))(v21, v17, v18);
        __chkstk_darwin(v25);
        v32[-2] = v21;
        sub_100409B88(sub_1000774CC, &v32[-4], v23);
        v27 = v26;

        v28._rawValue = v27;
        sub_100760BAC(v28);

        (*(v19 + 8))(v21, v18);
      }

      return result;
    }
  }

  else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  return result;
}

double sub_10040B080(__n128 a1)
{
  if (sub_10076B71C() >> 62)
  {
    sub_10077158C();
  }

  return result;
}

void sub_10040B0DC(uint64_t a1, uint64_t a2)
{
  sub_10077145C(40);
  sub_1007717CC();

  v2._object = 0x80000001007E4030;
  v2._countAndFlagsBits = 0xD000000000000026;
  sub_1007700CC(v2);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10040B188(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_10002ABBC(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CFBC(v4, &unk_1009568A0, &qword_100784890);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v8, v11, v5);
    v13 = (*(v6 + 88))(v8, v5);
    if (v13 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v13 == enum case for Shelf.ContentType.upsellBreakout(_:) || v13 == enum case for Shelf.ContentType.smallBreakout(_:) || v13 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v13 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v13 == enum case for Shelf.ContentType.heroCarousel(_:))
    {
      return 0;
    }

    (*(v6 + 8))(v8, v5);
  }

  return 1;
}

double sub_10040B3D4(double a1, uint64_t a2, char a3)
{
  v4 = sub_100766E4C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v21[-v9];
  v11 = sub_10076B71C();
  if (v11 >> 62)
  {
    v19 = v11;
    v20 = sub_10077158C();
    v11 = v19;
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v12 = v11;
    if (a3)
    {
      swift_getObjectType();
      PageTraitEnvironment.pageColumnWidth.getter();
      PageTraitEnvironment.pageColumnMargin.getter();
    }

    if (qword_100940348 != -1)
    {
      swift_once();
    }

    v13 = sub_10076D39C();
    sub_10000A61C(v13, qword_10099F728);
    sub_10076D36C();
    sub_100766E2C();
    v14 = (*(v5 + 32))(v10, v7, v4);
    __chkstk_darwin(v14);
    *&v21[-16] = v10;
    sub_100409B88(sub_1000A9330, &v21[-32], v12);
    v16 = v15;

    v17._rawValue = v16;
    sub_100760BAC(v17);

    (*(v5 + 8))(v10, v4);
    return result;
  }

  return result;
}

double sub_10040B684()
{
  v0 = sub_100766E4C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10076B71C();
  if (v4 >> 62)
  {
    v11 = v4;
    v12 = sub_10077158C();
    v4 = v11;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = v4;
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
    PageTraitEnvironment.pageColumnMargin.getter();
    v6 = sub_100766E2C();
    __chkstk_darwin(v6);
    *&v13[-16] = v3;
    sub_100409B88(sub_1000A9330, &v13[-32], v5);
    v8 = v7;

    v9._rawValue = v8;
    sub_100760BAC(v9);

    (*(v1 + 8))(v3, v0);
    return result;
  }

  return result;
}

double sub_10040B87C()
{
  v0 = sub_100766E4C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10076B71C();
  if (v4 >> 62)
  {
    v12 = v4;
    v13 = sub_10077158C();
    v4 = v12;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = v4;
    if (qword_10093FBE0 != -1)
    {
      swift_once();
    }

    v6 = sub_100763ADC();
    sub_10000A61C(v6, qword_10099DDA0);
    sub_1007639AC();
    v7 = sub_100766E2C();
    __chkstk_darwin(v7);
    *&v14[-16] = v3;
    sub_100409B88(sub_1000A9330, &v14[-32], v5);
    v9 = v8;

    v10._rawValue = v9;
    sub_100760BAC(v10);

    (*(v1 + 8))(v3, v0);
    return result;
  }

  return result;
}

double sub_10040BA84(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_10000A5D4(&unk_10094CD50, &unk_100786030);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = sub_10076428C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100766E4C();
  v30 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076B71C();
  if (v15 >> 62)
  {
    v24 = v12;
    v25 = v15;
    v26 = sub_10077158C();
    v15 = v25;
    v12 = v24;
    if (v26)
    {
      goto LABEL_3;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v28 = v12;
    v16 = v15;
    v17 = [a2 traitCollection];
    v27[1] = a3;
    v18 = v17;
    sub_1002AAFCC(v11);

    sub_10076425C();
    (*(v9 + 8))(v11, v8);
    v31 = a2;
    swift_unknownObjectRetain();
    sub_10075FDCC();
    (*(v29 + 8))(v7, v5);
    swift_unknownObjectRelease();
    v19 = sub_100766E2C();
    __chkstk_darwin(v19);
    v27[-2] = v14;
    sub_100409B88(sub_1000A9330, &v27[-4], v16);
    v21 = v20;

    v22._rawValue = v21;
    sub_100760BAC(v22);

    (*(v30 + 8))(v14, v28);
    return result;
  }

  return result;
}

double sub_10040BDF4(double a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v6 = sub_10076D39C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100766E4C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_10076B71C();
  if (v17 >> 62)
  {
    v24 = v17;
    v25 = sub_10077158C();
    v17 = v24;
    if (v25)
    {
      goto LABEL_3;
    }
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v27 = v17;
    if (a3)
    {
      swift_getObjectType();
      PageTraitEnvironment.pageColumnWidth.getter();
    }

    if (qword_100940330 != -1)
    {
      swift_once();
    }

    v18 = sub_1007640EC();
    sub_10000A61C(v18, qword_10099F660);
    sub_1007640DC();
    sub_10076D36C();
    (*(v7 + 8))(v9, v6);
    sub_100766E2C();
    v19 = (*(v11 + 32))(v16, v13, v10);
    __chkstk_darwin(v19);
    *(&v26 - 2) = v16;
    sub_100409B88(sub_1000A9330, (&v26 - 4), v27);
    v21 = v20;

    v22._rawValue = v21;
    sub_100760BAC(v22);

    (*(v11 + 8))(v16, v10);
    return result;
  }

  return result;
}

void sub_10040C150(void *a1)
{
  sub_10040D8C8();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_10040C200(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10040C254;
}

void sub_10040C254(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_10040D8C8();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_10040D8C8();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

char *sub_10040C37C(double a1, double a2, double a3, double a4)
{
  v9 = sub_10076F9AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_itemLayoutContext;
  v14 = sub_10076341C();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v4[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait] = 0;
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_10076475C();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = type metadata accessor for ProductMediaItemCollectionViewCell(0);
  v30.receiver = v4;
  v30.super_class = v16;
  v17 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView;
  v19 = *&v17[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v23 = v17;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v24 = *(*&v17[v18] + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v25 = v24;
  sub_10076F95C();
  sub_10000CFBC(v28, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v29, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v10 + 8))(v12, v9);
  v26 = [v23 contentView];
  [v26 addSubview:*&v17[v18]];

  return v23;
}

id sub_10040C780()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ProductMediaItemCollectionViewCell(0);
  objc_msgSendSuper2(&v15, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  sub_10075FCEC(v16, v4);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_1009602D0);

    v8 = [v7 layer];
    [v8 removeAllAnimations];

    [v7 setImage:0];
  }

  sub_10040D8C8();
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = [v1 contentView];
    [v11 addSubview:v10];

    [v1 setNeedsLayout];
  }

  *(v2 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = 0;

  v12 = sub_100124EE0();
  v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  return [v1 setNeedsLayout];
}

void sub_10040C974()
{
  v1 = v0;
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProductMediaItemCollectionViewCell(0);
  v47.receiver = v1;
  v47.super_class = v6;
  objc_msgSendSuper2(&v47, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    v8 = [v1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v7 setFrame:{v10, v12, v14, v16}];
  }

  else
  {
    sub_10076D3AC();
    v17 = [v1 contentView];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_10076D36C();
    v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    [v24 setFrame:{v19, v21, v23, v25}];
    v26 = [v1 contentView];
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v48.origin.x = v28;
    v48.origin.y = v30;
    v48.size.width = v32;
    v48.size.height = v34;
    MidX = CGRectGetMidX(v48);
    v49.origin.x = v28;
    v49.origin.y = v30;
    v49.size.width = v32;
    v49.size.height = v34;
    [v24 setCenter:{MidX, CGRectGetMidY(v49)}];
    (*(v3 + 8))(v5, v2);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [v1 contentView];
    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    [v37 setFrame:{v40, v42, v44, v46}];
  }
}

void sub_10040CC98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait);
      v9 = a1;
      v10 = v9;
      if (v8 == 1 && ([v9 size], v12 = v11, objc_msgSend(v10, "size"), v13 < v12) && (v14 = objc_msgSend(v10, "CGImage")) != 0)
      {
        v15 = v14;
        [v10 scale];
        v17 = [objc_allocWithZone(UIImage) initWithCGImage:v15 scale:2 orientation:v16];

        v18 = v17;
      }

      else
      {
        v18 = v10;
      }

      v19 = *(*&v7[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
      v20 = v18;
      v21 = v19;
      v23.value.super.isa = v18;
      v23.is_nil = 1;
      sub_10075FC5C(v23, v22);
    }
  }
}

id sub_10040CE0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductMediaItemCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductMediaItemCollectionViewCell(uint64_t a1)
{
  result = qword_1009568E0;
  if (!qword_1009568E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10040CF44(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    sub_10076481C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_10040D054(uint64_t **a1))()
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
  v2[4] = sub_10040C200(v2);
  return sub_100019A4C;
}

uint64_t sub_10040D0C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10040D118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10040D184(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_10040D2B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10040D340(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v6 - 8);
  v8 = v25 - v7;
  v9 = sub_10076481C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D39C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v26);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_100762A6C();
  if (swift_dynamicCast())
  {
    v25[2] = v25[3];
    v17 = sub_100762A5C();
    if (v17)
    {
      v18 = v17;
      v25[1] = a2;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v20 = Strong;
        v25[0] = v18;
        v21 = qword_1009A2558;
        swift_beginAccess();
        (*(v10 + 16))(v12, &v20[v21], v9);
        sub_10076476C();
        (*(v10 + 8))(v12, v9);
        if ((*(v14 + 48))(v8, 1, v13) != 1)
        {
          (*(v14 + 32))(v16, v8, v13);
          v23 = [v3 contentView];
          [v23 bounds];

          sub_10076D30C();
          sub_10076B84C();
          sub_10076BFCC();

          type metadata accessor for VideoView(0);
          sub_10040D2B0(&unk_100942840, type metadata accessor for VideoView, &unk_1007B40F8);
          sub_100760B8C();

          (*(v14 + 8))(v16, v13);
          return;
        }

        sub_10000CFBC(v8, &unk_1009467E0, qword_10078CB50);
      }

      else
      {
      }
    }

    if (sub_100762A4C())
    {
      if ((*(v3 + OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait) & 1) != 0 && (sub_10076BD4C() & 1) == 0)
      {
        v24 = [v3 contentView];
        [v24 bounds];

        v22 = [v3 contentView];
        [v22 bounds];
      }

      else
      {
        v22 = [v3 contentView];
        [v22 bounds];
      }

      sub_10076BFCC();
      v27 = 0;
      memset(v26, 0, sizeof(v26));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100760B7C();

      sub_10000CFBC(v26, &qword_100943310, &unk_100784150);
    }
  }
}

void sub_10040D8C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_10040D2B0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    Strong = v1;
  }

  v2 = sub_1000E7228(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

char *sub_10040D998(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
  sub_10075FD2C();
  sub_10040D2B0(&qword_100951F78, &type metadata accessor for ArtworkView, &protocol conformance descriptor for NSObject);
  v4 = v3;
  sub_10077140C();
  sub_100760BEC();
  sub_100016C74(v9);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *&result[qword_1009602D0];

    sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
    sub_10040DAF8();
    v8 = v7;
    sub_10077140C();
    sub_100760BEC();

    return sub_100016C74(v9);
  }

  return result;
}

unint64_t sub_10040DAF8()
{
  result = qword_100966100;
  if (!qword_100966100)
  {
    sub_100016F40(255, &qword_10094A280, UIImageView_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100966100);
  }

  return result;
}

uint64_t sub_10040DB60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10040DC08(double a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v8 = sub_10076D1AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940430 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009569A0);
  (*(*(v12 - 8) + 16))(v11, v13, v12);
  (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
  *a3 = sub_10076D9AC();
  *a4 = &protocol witness table for StaticDimension;
  sub_10000DB7C(a5);
  v17[3] = v8;
  v17[4] = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v17);
  (*(v9 + 16))(v14, v11, v8);
  sub_10076D9BC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10040DDF4()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009569A0);
  v1 = sub_10000A61C(v0, qword_1009569A0);
  if (qword_100941010 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A1E28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10040DF24()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode:2];

  v3 = [v1 navigationItem];
  sub_100768EBC();
  if (v4)
  {
    v5 = sub_10076FF6C();
  }

  else
  {
    v5 = 0;
  }

  [v3 setTitle:v5];

  sub_100413254(&qword_100956A98, v6, type metadata accessor for GenericAccountPageViewController, &unk_1007A20D0);
  swift_unknownObjectRetain();
  sub_100768E9C();
  [v1 setViewRespectsSystemMinimumLayoutMargins:0];
  result = [v1 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  [result setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];

  result = [v1 tableView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  [result setAlwaysBounceVertical:1];

  result = [v1 tableView];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = result;
  sub_100016F40(0, &unk_100956AA0, UITableViewCell_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v12)
  {
    sub_10076FF9C();
    v12 = sub_10076FF6C();
  }

  [v10 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v12];

  result = [v1 tableView];
  if (!result)
  {
    goto LABEL_20;
  }

  v13 = result;
  type metadata accessor for LinkableFooterView();
  v14 = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(v14);
  if (!v15)
  {
    sub_10076FF9C();
    v15 = sub_10076FF6C();
  }

  [v13 registerClass:v14 forHeaderFooterViewReuseIdentifier:v15];

  result = [v1 tableView];
  if (!result)
  {
    goto LABEL_21;
  }

  v16 = result;
  type metadata accessor for HeaderView();
  v17 = swift_getObjCClassFromMetadata();
  v18 = NSStringFromClass(v17);
  if (!v18)
  {
    sub_10076FF9C();
    v18 = sub_10076FF6C();
  }

  [v16 registerClass:v17 forHeaderFooterViewReuseIdentifier:v18];

  result = [v1 tableView];
  if (result)
  {
    v19 = result;
    [result setRowHeight:UITableViewAutomaticDimension];

    return sub_100760C9C();
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_10040E4A4(uint64_t a1, uint64_t a2)
{
  v17.receiver = v2;
  v17.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v17, "viewWillLayoutSubviews");
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v2 view];
      if (v7)
      {
        v8 = v7;
        [v7 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        [v6 setFrame:{v10, v12, v14, v16}];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10040E64C(void *a1, uint64_t a2)
{
  v3 = v2;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  v5 = [v2 traitCollection];
  v6 = sub_10077070C();

  if (!a1 || ((sub_10077070C() ^ v6) & 1) != 0)
  {
    goto LABEL_3;
  }

  v9 = [v3 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  v11 = [a1 preferredContentSizeCategory];
  v12 = sub_10076FF9C();
  v14 = v13;
  if (v12 == sub_10076FF9C() && v14 == v15)
  {

    return;
  }

  v16 = sub_10077167C();

  if ((v16 & 1) == 0)
  {
LABEL_3:
    v7 = [v3 tableView];
    if (v7)
    {
      v8 = v7;
      [v7 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_10040E8F8(void *a1, uint64_t a2)
{
  v4 = sub_100763D0C();
  v119 = *(v4 - 8);
  v120 = v4;
  __chkstk_darwin(v4);
  v117 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v118 = v114 - v7;
  v8 = sub_100763D3C();
  v122 = *(v8 - 1);
  v123 = v8;
  __chkstk_darwin(v8);
  v121 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10077164C();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v11 = v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_100956A80, &qword_1007A2108);
  __chkstk_darwin(v12 - 8);
  v14 = v114 - v13;
  v15 = sub_1007614FC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v114 - v20;
  v114[1] = *&v2[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_presenter];
  sub_100768E3C();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_74;
  }

  v124 = v16;
  v125 = v15;
  v22.n128_f64[0] = (*(v16 + 32))(v21, v14, v15);
  v129 = v21;
  v23 = sub_10040FC98(v21, v22);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940430 != -1)
  {
    swift_once();
  }

  v126 = v2;
  v24 = sub_10076D3DC();
  sub_10000A61C(v24, qword_1009569A0);
  v127 = a1;
  v25 = [a1 traitCollection];
  v26 = sub_100770B3C();

  v27 = [v23 textLabel];
  if (v27)
  {
    v28 = v27;
    [v27 setFont:v26];
  }

  v128 = v26;
  v29 = [v23 textLabel];
  if (v29)
  {
    v30 = v29;
    [v29 setNumberOfLines:0];
  }

  v31 = [v23 textLabel];
  if (v31)
  {
    v32 = v31;
    [v31 setLineBreakMode:0];
  }

  v33 = [v23 textLabel];
  if (v33)
  {
    v34 = v33;
    v35 = [objc_opt_self() labelColor];
    [v34 setTextColor:v35];
  }

  v36 = [v23 detailTextLabel];
  if (v36)
  {
    v37 = v36;
    [v36 setFont:v128];
  }

  v38 = [v23 detailTextLabel];
  if (v38)
  {
    v39 = v38;
    [v38 setNumberOfLines:0];
  }

  v40 = [v23 detailTextLabel];
  if (v40)
  {
    v41 = v40;
    [v40 setLineBreakMode:0];
  }

  v42 = [v23 detailTextLabel];
  v43 = v126;
  if (v42)
  {
    v44 = v42;
    v45 = [objc_opt_self() labelColor];
    [v44 setTextColor:v45];
  }

  [v23 setAccessoryType:0];
  [v23 setAccessoryView:0];
  v14 = v23;
  [v14 setUserInteractionEnabled:0];
  if (qword_100940418 != -1)
  {
    swift_once();
  }

  v46 = qword_100956940;
  sub_10000CF78(qword_100956928, qword_100956940);
  sub_1000FF02C(v46);
  sub_10076D40C();
  v48 = v47;
  (*(v115 + 8))(v11, v116);
  v49 = v127;
  [v127 layoutMargins];
  v51 = v50;
  [v49 layoutMargins];
  [v14 setLayoutMargins:{v48, v51, v48}];
  v53 = v124;
  v52 = v125;
  (*(v124 + 16))(v18, v129, v125);
  v54 = (*(v53 + 88))(v18, v52);
  if (v54 == enum case for AccountSection.ContentItem.link(_:))
  {
    (*(v53 + 96))(v18, v52);
    (*(v122 + 32))(v121, v18, v123);
    v55 = [v14 textLabel];
    if (v55)
    {
      v56 = v55;
      sub_100763D2C();
      v57 = sub_10076FF6C();

      [v56 setText:v57];
    }

    sub_100763D1C();
    (*(v119 + 104))(v117, enum case for AccountSectionLink.LinkDisplayType.navigation(_:), v120);
    sub_100413254(&qword_100956A88, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType, &protocol conformance descriptor for AccountSectionLink.LinkDisplayType);
    sub_10077018C();
    sub_10077018C();
    v58 = &selRef_initWithTabBarSystemItem_tag_;
    if (aBlock == v136 && v131 == v137)
    {
      v59 = v120;
      v60 = *(v119 + 8);
      v60(v117, v120);
      v60(v118, v59);
    }

    else
    {
      v71 = sub_10077167C();
      v72 = *(v119 + 8);
      v73 = v52;
      v74 = v43;
      v75 = v120;
      v72(v117, v120);
      v76 = v75;
      v43 = v74;
      v52 = v73;
      v58 = &selRef_initWithTabBarSystemItem_tag_;
      v72(v118, v76);

      if ((v71 & 1) == 0)
      {
        v91 = [v14 textLabel];
        v77 = &selRef_initWithTabBarSystemItem_tag_;
        if (v91)
        {
          v92 = v91;
          v93 = [v127 tintColor];
          [v92 setTextColor:v93];
        }

        goto LABEL_37;
      }
    }

    [v14 setAccessoryType:1];
    v77 = &selRef_initWithTabBarSystemItem_tag_;
LABEL_37:
    [v14 v77[257]];

    (*(v122 + 8))(v121, v123);
LABEL_60:
    v67 = &selRef_configurationWithWeight_;
    goto LABEL_61;
  }

  if (v54 != enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    if (v54 != enum case for AccountSection.ContentItem.text(_:))
    {
      if (v54 == enum case for AccountSection.ContentItem.personalizedRecommendationsToggle(_:))
      {
        (*(v53 + 96))(v18, v52);
        v94 = *(v18 + 1);
        v95 = v18[16];
        sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v96 = sub_100770F1C();
        v97 = [objc_allocWithZone(UISwitch) initWithFrame:v96 primaryAction:{0.0, 0.0, 0.0, 0.0}];

        v98 = sub_100768E7C();
        if (v98 == 2)
        {
          v99 = v95;
        }

        else
        {
          v99 = v98;
        }

        [v97 setOn:v99 & 1];
        [v14 setAccessoryView:v97];
        v100 = [v14 textLabel];
        if (v100)
        {
          v101 = v100;
          v58 = &selRef_initWithTabBarSystemItem_tag_;
          if (v94)
          {
            v102 = sub_10076FF6C();
          }

          else
          {
            v102 = 0;
          }

          [v101 setText:v102];
        }

        else
        {

          v58 = &selRef_initWithTabBarSystemItem_tag_;
        }

        [v14 setUserInteractionEnabled:1];

        goto LABEL_60;
      }

      (*(v53 + 8))(v18, v52);
      goto LABEL_55;
    }

    (*(v53 + 96))(v18, v52);
    v78 = [v14 textLabel];
    v67 = &selRef_configurationWithWeight_;
    if (v78)
    {
      v79 = v78;
      v80 = [objc_opt_self() secondaryLabelColor];
      [v79 setTextColor:v80];
    }

    v81 = [v14 textLabel];
    v58 = &selRef_initWithTabBarSystemItem_tag_;
    if (!v81)
    {
      goto LABEL_44;
    }

    v123 = v81;
    sub_100763D4C();
    v82 = sub_10076C5AC();

    v83 = [v127 traitCollection];
    v84 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v82];
    v127 = [v82 length];
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    *(v85 + 24) = v83;
    *(v85 + 32) = v84;
    *(v85 + 40) = 1;
    v86 = swift_allocObject();
    *(v86 + 16) = sub_1000275EC;
    *(v86 + 24) = v85;
    v134 = sub_1000ACB04;
    v135 = v86;
    aBlock = _NSConcreteStackBlock;
    v131 = 1107296256;
    v132 = sub_100026610;
    v133 = &unk_100894718;
    v87 = _Block_copy(&aBlock);
    v88 = v83;
    v89 = v84;

    [v82 enumerateAttributesInRange:0 options:v127 usingBlock:{0x100000, v87}];

    _Block_release(v87);
    LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

    if ((v87 & 1) == 0)
    {
      v90 = v123;
      [v123 setAttributedText:v89];

      v52 = v125;
      v43 = v126;
      v53 = v124;
LABEL_55:
      v58 = &selRef_initWithTabBarSystemItem_tag_;
      goto LABEL_60;
    }

    __break(1u);
LABEL_74:
    sub_10000CFBC(v14, &qword_100956A80, &qword_1007A2108);
    result = sub_10077156C();
    __break(1u);
    return result;
  }

  (*(v53 + 96))(v18, v52);
  v61 = [v14 textLabel];
  if (v61)
  {
    v62 = v61;
    sub_10076859C();
    v63 = sub_10076FF6C();

    [v62 setText:v63];
  }

  v64 = [v14 textLabel];
  v58 = &selRef_initWithTabBarSystemItem_tag_;
  if (v64)
  {
    v65 = v64;
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v66 = sub_100770D1C();
    [v65 setTextColor:v66];
  }

  v67 = &selRef_configurationWithWeight_;
  v68 = [v14 detailTextLabel];
  if (v68)
  {
    v69 = v68;
    sub_1007685AC();
    v70 = sub_10076FF6C();

    [v69 setText:v70];

    v67 = &selRef_configurationWithWeight_;
  }

LABEL_44:

LABEL_61:
  v103 = [v14 textLabel];
  if (v103)
  {
    v104 = v103;
    v105 = [v43 v58[274]];
    v106 = sub_10077070C();

    if (v106)
    {
      v107 = 2;
    }

    else
    {
      v107 = 0;
    }

    [v104 setTextAlignment:v107];
  }

  v108 = [v14 v67[105]];
  if (v108)
  {
    v109 = v108;
    v110 = [v43 v58[274]];
    v111 = sub_10077070C();

    if (v111)
    {
      v112 = 2;
    }

    else
    {
      v112 = 0;
    }

    [v109 setTextAlignment:v112];

    (*(v53 + 8))(v129, v52);
  }

  else
  {
    (*(v53 + 8))(v129, v52);
  }

  return v14;
}

void sub_10040FA54(void *a1, uint64_t a2)
{
  if ([a1 sender])
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100016F40(0, &qword_100956A90, UISwitch_ptr);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;

        [v4 isOn];
        sub_100768E8C();
      }
    }
  }

  else
  {
    sub_10000CFBC(v7, &unk_1009434C0, &qword_100783F60);
  }
}

id sub_10040FC98(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_1007614FC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  if ((*(v6 + 88))(v9, v5) == enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    (*(v6 + 8))(v9, v5);
    result = [v3 tableView];
    if (result)
    {
      v11 = result;
      v12 = sub_10076FF6C();
      v13 = [v11 dequeueReusableCellWithIdentifier:v12];

      if (!v13)
      {
        v14 = objc_allocWithZone(UITableViewCell);
        v15 = sub_10076FF6C();
        v13 = [v14 initWithStyle:1 reuseIdentifier:v15];
      }

      return v13;
    }

    __break(1u);
  }

  else
  {
    result = [v3 tableView];
    if (result)
    {
      v16 = result;
      v17 = sub_10076FF6C();
      v13 = [v16 dequeueReusableCellWithIdentifier:v17];

      if (!v13)
      {
        v18 = objc_allocWithZone(UITableViewCell);
        v19 = sub_10076FF6C();
        v13 = [v18 initWithStyle:0 reuseIdentifier:v19];
      }

      (*(v6 + 8))(v9, v5);
      return v13;
    }
  }

  __break(1u);
  return result;
}

id sub_10040FF58(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  (a5)(0, a2, a3, a4);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = a1;
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    sub_10076FF9C();
    v10 = sub_10076FF6C();
  }

  v11 = [v8 dequeueReusableHeaderFooterViewWithIdentifier:v10];

  return v11;
}

void sub_100410018(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = sub_100768EAC();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      if (qword_100940428 != -1)
      {
        swift_once();
      }

      v14 = qword_100956990;
      sub_10000CF78(qword_100956978, qword_100956990);
      sub_1000FF02C(v14);
      sub_10076D40C();
      v16 = v15;
      (*(v7 + 8))(v9, v6);
      [a1 layoutMargins];
      v18 = v17;
      [a1 layoutMargins];
      v20 = v19;
      v21 = [v3 tableView];
      if (v21)
      {
        v22 = v21;
        [v21 layoutMargins];
        v24 = v23;

        v25 = [v3 tableView];
        if (v25)
        {
          v26 = v25;
          v27 = v18 + v24;
          [v25 layoutMargins];
          v29 = v28;

          [a1 frame];
          Width = CGRectGetWidth(v32);
          sub_100412A98(v12, v13, a1, Width, 1.79769313e308, 0.0, v27, v16, v20 + v29);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_1004102DC(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeaderView();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v34 = a2;
    v12 = sub_100768EAC();
    if (v13)
    {
      v32[1] = v12;
      v33 = v3;
      v14 = qword_100940428;
      v15 = v34;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = qword_100956990;
      sub_10000CF78(qword_100956978, qword_100956990);
      sub_1000FF02C(v16);
      sub_10076D40C();
      v18 = v17;
      (*(v7 + 8))(v9, v6);
      [a1 layoutMargins];
      v20 = v19;
      [a1 layoutMargins];
      [v11 setLayoutMargins:{0.0, v20, v18}];

      v21 = v15;
      v22 = [v11 textLabel];
      if (v22)
      {
        v23 = v22;
        v24 = sub_10076FF6C();

        [v23 setText:v24];
      }

      else
      {
      }

      v28 = [v11 textLabel];

      if (v28)
      {
        v29 = [v33 traitCollection];
        v30 = sub_10077070C();

        if (v30)
        {
          v31 = 2;
        }

        else
        {
          v31 = 0;
        }

        [v28 setTextAlignment:v31];
      }
    }

    else
    {
      v25 = [v11 textLabel];
      if (v25)
      {
        v26 = v25;
        [v25 setText:0];
      }

      v27 = v34;
    }
  }
}

uint64_t sub_100410698(void *a1, uint64_t a2)
{
  v5 = sub_100763D0C();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = v66 - v8;
  v9 = sub_100763D3C();
  v73 = *(v9 - 8);
  v74 = v9;
  __chkstk_darwin(v9);
  v72 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100956A80, &qword_1007A2108);
  __chkstk_darwin(v11 - 8);
  v13 = v66 - v12;
  v14 = sub_1007614FC();
  v15 = *(v14 - 8);
  v79 = v14;
  v80 = v15;
  __chkstk_darwin(v14);
  v67 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v75 = v66 - v18;
  v19 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v19 - 8);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v66 - v23;
  v25 = sub_10076F13C();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = v2;
  v78 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_presenter);
  result = sub_100768ECC();
  if (result)
  {
    v76 = result;
    v66[1] = a2;
    v30.super.isa = sub_10075E02C().super.isa;
    v31 = a1;
    isa = v30.super.isa;
    v66[0] = v31;
    v33 = [v31 cellForRowAtIndexPath:v30.super.isa];

    if (v33)
    {
      v34 = v33;
      [v34 bounds];
      LOBYTE(v101[0]) = 1;
      *&v83 = v33;
      *(&v83 + 1) = v35;
      *&v84 = v36;
      *(&v84 + 1) = v37;
      *&v85 = v38;
      BYTE8(v85) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v86 = _Q0;
      v87 = _Q0;
      v88 = 15;
      sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
      *v28 = sub_10077068C();
      (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
      v44 = sub_10076F16C();
      result = (*(v26 + 8))(v28, v25);
      if ((v44 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v91 = xmmword_10094FFF8;
      v92 = xmmword_100950008;
      v93 = xmmword_100950018;
      v89 = xmmword_10094FFD8;
      v90 = xmmword_10094FFE8;
      v97 = v85;
      v98 = v86;
      v99 = v87;
      v95 = v83;
      v96 = v84;
      v101[0] = xmmword_10094FFD8;
      v101[1] = xmmword_10094FFE8;
      v101[3] = xmmword_100950008;
      v101[4] = xmmword_100950018;
      v94 = qword_100950028;
      v100 = v88;
      v102 = qword_100950028;
      v101[2] = xmmword_10094FFF8;
      sub_10014F864(&v89, v81);
      xmmword_10094FFF8 = v97;
      xmmword_100950008 = v98;
      xmmword_100950018 = v99;
      qword_100950028 = v100;
      xmmword_10094FFD8 = v95;
      xmmword_10094FFE8 = v96;
      sub_10000CFBC(v101, &unk_1009505F0, &qword_1007A2110);
      v45 = *(v77 + OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_objectGraph);
      v46 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      sub_1001F9960(&v83, v81);
      sub_10076F5AC();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v24, 1, v46) == 1)
      {
        sub_10000CFBC(v24, &unk_100943200, &unk_100785840);
      }

      else
      {

        sub_100263BF0(v53, 1, v45, v24);

        (*(v47 + 8))(v24, v46);
      }

      v81[2] = xmmword_10094FFF8;
      v81[3] = xmmword_100950008;
      v81[4] = xmmword_100950018;
      v82 = qword_100950028;
      v81[0] = xmmword_10094FFD8;
      v81[1] = xmmword_10094FFE8;
      xmmword_10094FFD8 = v89;
      xmmword_10094FFE8 = v90;
      xmmword_10094FFF8 = v91;
      xmmword_100950008 = v92;
      xmmword_100950018 = v93;
      qword_100950028 = v94;
      sub_10000CFBC(v81, &unk_1009505F0, &qword_1007A2110);
      sub_1001F99BC(&v83);

      v54 = v79;
      v52 = v80;
    }

    else
    {
      v48 = *(v77 + OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_objectGraph);
      v49 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      sub_10076F5AC();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 48))(v21, 1, v49);
      v52 = v80;
      if (v51 == 1)
      {
        sub_10000CFBC(v21, &unk_100943200, &unk_100785840);
      }

      else
      {

        sub_100263BF0(v55, 1, v48, v21);

        (*(v50 + 8))(v21, v49);
      }

      v54 = v79;
    }

    sub_100768E3C();
    if ((*(v52 + 48))(v13, 1, v54) == 1)
    {

      return sub_10000CFBC(v13, &qword_100956A80, &qword_1007A2108);
    }

    v56 = v75;
    (*(v52 + 32))();
    v57 = v67;
    (*(v52 + 16))(v67, v56, v54);
    if ((*(v52 + 88))(v57, v54) != enum case for AccountSection.ContentItem.link(_:))
    {
      v61 = *(v52 + 8);
      v61(v56, v54);

      return (v61)(v57, v54);
    }

    (*(v52 + 96))(v57, v54);
    (*(v73 + 32))(v72, v57, v74);
    sub_100763D1C();
    (*(v70 + 104))(v68, enum case for AccountSectionLink.LinkDisplayType.action(_:), v71);
    sub_100413254(&qword_100956A88, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType, &protocol conformance descriptor for AccountSectionLink.LinkDisplayType);
    sub_10077018C();
    sub_10077018C();
    if (v101[0] == v95)
    {
      v58 = v71;
      v59 = *(v70 + 8);
      v59(v68, v71);
      v59(v69, v58);
      v56 = v75;

      v60 = v66[0];
    }

    else
    {
      v62 = sub_10077167C();
      v63 = v71;
      v64 = *(v70 + 8);
      v64(v68, v71);
      v64(v69, v63);
      v52 = v80;

      v60 = v66[0];
      if ((v62 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    v65 = sub_10075E02C().super.isa;
    [v60 deselectRowAtIndexPath:v65 animated:1];

LABEL_21:
    (*(v73 + 8))(v72, v74);
    return (*(v52 + 8))(v56, v54);
  }

  return result;
}

void sub_10041120C(void *a1, uint64_t a2)
{
  v4 = sub_100411638(a1, a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v2 tableView];
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  [v11 layoutMargins];
  v14 = v13;

  v15 = [v2 tableView];
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 layoutMargins];
  v18 = v17;

  if (sub_100768EDC())
  {
    v19 = v6 + v14;
    [a1 frame];
    Width = CGRectGetWidth(v23);
    v21 = sub_10076080C();
    sub_100412DBC(v21, v22, a1, Width, 1.79769313e308, v4, v19, v8, v10 + v18);
  }
}

void sub_1004113B4(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for LinkableFooterView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a2;
    if (sub_100768EDC())
    {
      v10 = v9;
      [v8 setLayoutMargins:{sub_100411638(a1, a3)}];

      v11 = OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel;
      v12 = *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel];
      v13 = sub_10076082C();
      sub_100107BF4(v13, sub_1000368B8);
      v15 = v14;

      v16 = sub_10076081C();
      sub_10050C274(v16, 0, v15);

      v19 = *&v8[v11];
      v17 = [v3 traitCollection];
      LOBYTE(v15) = sub_10077070C();

      if (v15)
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }

      [v19 setTextAlignment:v18];
    }

    else
    {
      v19 = *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel];
      sub_10050C548();
    }
  }
}

double sub_100411638(void *a1, uint64_t a2)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100768E6C();
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_8;
  }

  if (v9 - 1 == a2)
  {
    v15[1] = 0x4041800000000000;
    sub_10076D17C();
  }

  else
  {
    if (qword_100940410 != -1)
    {
      swift_once();
    }

    v10 = qword_100956918;
    sub_10000CF78(qword_100956900, qword_100956918);
    sub_1000FF02C(v10);
  }

  sub_10076D40C();
  v2 = *(v6 + 8);
  v2(v8, v5);
  if (qword_100940420 != -1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v11 = qword_100956968;
  sub_10000CF78(qword_100956950, qword_100956968);
  sub_1000FF02C(v11);
  sub_10076D40C();
  v13 = v12;
  v2(v8, v5);
  [a1 layoutMargins];
  [a1 layoutMargins];
  return v13;
}

void sub_1004118B0()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  sub_100768EBC();
  if (v3)
  {
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  [v2 setTitle:v4];

  v5 = [v1 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10041198C()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  if (sub_100768E6C())
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController];
    sub_10076857C();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      sub_10076856C();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_10076DE3C();
    v8 = objc_allocWithZone(sub_10076DE6C());
    v9 = sub_10076DE5C();
    v10 = OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController];
    sub_10076857C();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      sub_10076856C();
      return;
    }
  }

  __break(1u);
}

id sub_100411B84()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController];
  sub_10076857C();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_10076856C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100411D50()
{
  v0 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v0, qword_1009569B8);
  sub_10000A61C(v0, qword_1009569B8);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

char *sub_100411DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel;
  if (qword_100940FD8 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v5, qword_1009A1D80);
  (*(v6 + 16))(v8, v10, v5);
  v11 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v3[v9] = sub_10050BDFC(v8, 0, 0, 0);
  if (a2)
  {
    v12 = sub_10076FF6C();
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for LinkableFooterView();
  v29.receiver = v3;
  v29.super_class = v13;
  v14 = objc_msgSendSuper2(&v29, "initWithReuseIdentifier:", v12);

  v15 = OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel;
  v16 = *&v14[OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel];
  v17 = qword_100940438;
  v18 = v14;
  v19 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000A61C(v20, qword_1009569B8);
  v28[0] = v18;
  v21 = v18;
  sub_10075FDCC();

  [v19 setTextAlignment:v28[1]];
  v22 = *&v14[v15];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondaryLabelColor];
  [v24 setTextColor:v25];

  v26 = [v21 contentView];
  [v26 addSubview:*&v14[v15]];

  return v21;
}

id sub_100412274()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LinkableFooterView();
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel];
  v8 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();
  v10 = v9;
  v12 = v11;

  [v7 measurementsWithFitting:v1 in:{v10, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.up(_:), v2);
  sub_100770AAC();
  (*(v3 + 8))(v5, v2);
  sub_10076422C();
  v13 = [v1 contentView];
  sub_10076422C();

  sub_100770A4C();
  return [v7 setFrame:?];
}

uint64_t sub_10041250C(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for LinkableFooterView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077070C();

  if (!a1 || (result = sub_10077070C(), (result & 1) != (v5 & 1)))
  {
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel];
    if (qword_100940438 != -1)
    {
      swift_once();
    }

    v8 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    sub_10000A61C(v8, qword_1009569B8);
    v10 = v2;
    v9 = v2;
    sub_10075FDCC();

    return [v7 setTextAlignment:{v11, v10}];
  }

  return result;
}

void sub_1004126FC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for HeaderView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    sub_10076422C();
    v3 = v2;
    [v3 frame];
    v4 = [v0 contentView];
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    sub_10076422C();

    sub_100770A4C();
    [v3 setFrame:?];
  }
}

id sub_1004129AC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_100412A98(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = sub_10076997C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100941018 != -1)
  {
    swift_once();
  }

  v14 = sub_10076D3DC();
  sub_10000A61C(v14, qword_1009A1E40);
  v15 = [a3 traitCollection];
  sub_100770B3C();

  v16 = sub_10076C04C();
  v22[3] = v16;
  v22[4] = sub_100413254(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v17 = sub_10000DB7C(v22);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  sub_10076C90C();
  sub_10000CD74(v22);

  sub_10076996C();
  sub_100770ACC();
  sub_100413254(&unk_1009511B0, 255, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
  sub_10076D2AC();
  sub_100770AEC();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  return v19;
}

double sub_100412DBC(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v25[1] = a1;
  v25[2] = a2;
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076997C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100770ACC();
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940FD8 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  sub_10000A61C(v18, qword_1009A1D80);
  v19 = [a3 traitCollection];
  sub_100770B3C();

  v20 = sub_10076C04C();
  v27 = v20;
  v28 = sub_100413254(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v21 = sub_10000DB7C(v26);
  (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  sub_10076C90C();
  sub_10000CD74(v26);

  sub_10076996C();
  sub_10076994C();
  (*(v15 + 8))(v17, v14);
  sub_10000CF78(v26, v27);
  sub_10076D2BC();
  sub_100770AEC();
  (*(v11 + 104))(v13, enum case for FloatingPointRoundingRule.up(_:), v10);
  sub_100770AAC();
  v23 = v22;
  (*(v11 + 8))(v13, v10);
  sub_10000CD74(v26);
  return v23;
}

uint64_t sub_1004131A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004131E4()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_10041323C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100413254(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10041329C()
{
  v1 = v0;
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    return type metadata accessor for SmallLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.purchasesLockup(_:))
  {
    return type metadata accessor for SmallLockupCollectionViewTableCell();
  }

  if (v7 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    return type metadata accessor for MediumLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    return type metadata accessor for LargeLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:))
  {
    return type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:))
  {
    return type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.action(_:))
  {
    return type metadata accessor for ActionCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.artwork(_:))
  {
    return type metadata accessor for ArtworkCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.paragraph(_:))
  {
    return type metadata accessor for ParagraphCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.annotation(_:))
  {
    return type metadata accessor for AnnotationCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.footnote(_:))
  {
    return type metadata accessor for FootnoteCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    return type metadata accessor for TitledParagraphCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    return type metadata accessor for EditorialCardCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.videoCard(_:))
  {
    return type metadata accessor for VideoCardCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.brick(_:))
  {
    return type metadata accessor for BrickCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.productCapability(_:))
  {
    return type metadata accessor for ProductCapabilityCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.reviews(_:) || v7 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    return type metadata accessor for ProductReviewCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    return type metadata accessor for LinkCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.quote(_:))
  {
    return type metadata accessor for QuoteCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.horizontalRule(_:))
  {
    return type metadata accessor for HorizontalRuleCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.framedArtwork(_:))
  {
    return type metadata accessor for FramedArtworkCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.screenshots(_:))
  {
    return type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.appShowcase(_:))
  {
    return type metadata accessor for AppShowcaseCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:))
  {
    return type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    return type metadata accessor for AppTrailerLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    return type metadata accessor for ProductPageLinkCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    return type metadata accessor for FramedVideoCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.productDescription(_:))
  {
    return type metadata accessor for ProductDescriptionCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.banner(_:))
  {
    return type metadata accessor for BannerCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    return type metadata accessor for ScreenshotsLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    return type metadata accessor for RoundedButtonCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    return type metadata accessor for TitledButtonStackCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.largeHeroBreakout(_:))
  {
    return type metadata accessor for LargeHeroBreakoutCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.upsellBreakout(_:))
  {
    return type metadata accessor for UpsellBreakoutCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    return type metadata accessor for SmallBreakoutCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    return type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    return type metadata accessor for MixedMediaLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    return type metadata accessor for ArcadeFooterCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.editorialQuote(_:))
  {
    return type metadata accessor for EditorialQuoteCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.arcadeShowcase(_:))
  {
    return type metadata accessor for ArcadeShowcaseCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    return type metadata accessor for GameCenterActivityFeedCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.arcadeDownloadPackCard(_:))
  {
    return type metadata accessor for ArcadeDownloadPackCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterReengagement(_:))
  {
    return type metadata accessor for GameCenterReengagementCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.smallGameCenterPlayer(_:))
  {
    return type metadata accessor for SmallGameCenterPlayerCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    return type metadata accessor for LargeGameCenterPlayerCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:))
  {
    return type metadata accessor for AchievementSummaryCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    return type metadata accessor for PosterLockupCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    return type metadata accessor for SmallContactCardCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.preorderDisclaimer(_:))
  {
    return type metadata accessor for PreorderDisclaimerCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    return type metadata accessor for PrivacyHeaderCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyFooter(_:))
  {
    return type metadata accessor for PrivacyFooterCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyType(_:))
  {
    return type metadata accessor for PrivacyTypeCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyCategory(_:))
  {
    return type metadata accessor for PrivacyCategoryCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.privacyDefinition(_:))
  {
    return type metadata accessor for PrivacyDefinitionCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.appPromotion(_:))
  {
    return type metadata accessor for AppEventCollectionViewCell(0);
  }

  if (v7 == enum case for Shelf.ContentType.heroCarousel(_:))
  {
    return type metadata accessor for HeroCarouselCollectionViewCell(0);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t Shelf.ContentType.layoutManagedMultiColumnMargin.getter()
{
  v1 = v0;
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Shelf.ContentType.annotation(_:) || v7 == enum case for Shelf.ContentType.productCapability(_:) || v7 == enum case for Shelf.ContentType.productPageLink(_:) || v7 == enum case for Shelf.ContentType.privacyType(_:))
  {
    return 0x403E000000000000;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_100413DB0(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = v6[2];
  v13(&v29 - v11, a3, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 1;
  if (v15 != enum case for Shelf.ContentType.artwork(_:) && v15 != enum case for Shelf.ContentType.ribbonBar(_:) && v15 != enum case for Shelf.ContentType.ribbonFlow(_:) && v15 != enum case for Shelf.ContentType.paragraph(_:) && v15 != enum case for Shelf.ContentType.footnote(_:) && v15 != enum case for Shelf.ContentType.titledParagraph(_:) && v15 != enum case for Shelf.ContentType.reviewsContainer(_:) && v15 != enum case for Shelf.ContentType.reviewSummary(_:) && v15 != enum case for Shelf.ContentType.editorialLink(_:) && v15 != enum case for Shelf.ContentType.quote(_:) && v15 != enum case for Shelf.ContentType.framedArtwork(_:) && v15 != enum case for Shelf.ContentType.screenshots(_:) && v15 != enum case for Shelf.ContentType.appShowcase(_:) && v15 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v15 != enum case for Shelf.ContentType.linkableText(_:) && v15 != enum case for Shelf.ContentType.framedVideo(_:) && v15 != enum case for Shelf.ContentType.productDescription(_:) && v15 != enum case for Shelf.ContentType.banner(_:) && v15 != enum case for Shelf.ContentType.roundedButton(_:) && v15 != enum case for Shelf.ContentType.titledButtonStack(_:) && v15 != enum case for Shelf.ContentType.smallStoryCard(_:) && v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v15 != enum case for Shelf.ContentType.upsellBreakout(_:) && v15 != enum case for Shelf.ContentType.smallBreakout(_:) && v15 != enum case for Shelf.ContentType.arcadeFooter(_:) && v15 != enum case for Shelf.ContentType.editorialQuote(_:) && v15 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v15 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v15 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v15 != enum case for Shelf.ContentType.privacyHeader(_:) && v15 != enum case for Shelf.ContentType.privacyFooter(_:) && v15 != enum case for Shelf.ContentType.privacyCategory(_:) && v15 != enum case for Shelf.ContentType.privacyDefinition(_:) && v15 != enum case for Shelf.ContentType.heroCarousel(_:) && v15 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    v29 = a1;
    v17 = v6[1];
    v17(v12, v5);
    (v13)(v8, a3, v5);
    v18 = v14(v8, v5);
    if (v18 != enum case for Shelf.ContentType.annotation(_:) && v18 != enum case for Shelf.ContentType.productCapability(_:) && v18 != enum case for Shelf.ContentType.productPageLink(_:))
    {
      if (v18 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v19 = v30;
        [v30 pageContainerSize];
        v21 = v20;
        JUScreenClassGetPortraitWidth();
        if (v21 >= v22)
        {
          [v19 pageContainerSize];
          v24 = v23;
          [v19 pageContainerSize];
          if (v24 >= v25)
          {
            if (v29 <= 2)
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }
      }

      else
      {
        v17(v8, v5);
      }

      return 2;
    }

    [v30 pageContainerSize];
    v27 = v26;
    JUScreenClassGetPortraitWidth();
    if (v28 > v27)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_1004142F4()
{
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2368);
  qword_100956AC8 = v0;
  unk_100956AD0 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_100956AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_1004143B0()
{
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2380);
  qword_100956AF0 = v0;
  unk_100956AF8 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_100956AD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_10041448C(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D9AC();
  sub_10000DB18(v8, a3);
  sub_10000A61C(v8, a3);
  if (qword_100940B70 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1048);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_10076D9BC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100414674(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t sub_1004146D4()
{
  sub_10000A5D4(&unk_1009566B0, &qword_1007A1D60);
  sub_100111DA4();
  sub_10076F83C();
  return 3;
}

unint64_t sub_100414750(__n128 a1)
{
  result = qword_100949370;
  if (!qword_100949370)
  {
    sub_10076C61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100949370);
  }

  return result;
}

unint64_t sub_1004147B0()
{
  result = qword_100956B78;
  if (!qword_100956B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956B78);
  }

  return result;
}

unint64_t sub_100414808()
{
  result = qword_100956B80;
  if (!qword_100956B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956B80);
  }

  return result;
}

BOOL sub_10041485C(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for ExpandableTextView();

  return sub_10073E8EC(a1, 3, a2, a3, a4, a5, a6, a7, a8);
}

double sub_100414900(uint64_t a1, void *a2)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076C5DC();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 pageMarginInsets];
  v13 = v12;
  if (sub_10076C58C())
  {
    return v13;
  }

  sub_10076C5EC();
  v14 = (*(v8 + 88))(v11, v7);
  if (v14 == enum case for Paragraph.Style.standard(_:))
  {
    goto LABEL_3;
  }

  if (v14 != enum case for Paragraph.Style.article(_:))
  {
    if (v14 != enum case for Paragraph.Style.caption(_:) && v14 != enum case for Paragraph.Style.todayCardOverlay(_:) && v14 != enum case for Paragraph.Style.privacyDefinitions(_:))
    {
      (*(v8 + 8))(v11, v7);
      return v13;
    }

LABEL_3:
    if (qword_100940440 != -1)
    {
      swift_once();
    }

    v15 = qword_100956AC8;
    sub_10000CF78(qword_100956AB0, qword_100956AC8);
    sub_1000FF02C(v15);
    sub_10076D40C();
    v13 = v16;
    v17 = *(v4 + 8);
    v17(v6, v3);
    if (qword_100940448 != -1)
    {
      swift_once();
    }

    v18 = qword_100956AF0;
    sub_10000CF78(qword_100956AD8, qword_100956AF0);
    sub_1000FF02C(v18);
    sub_10076D40C();
    v17(v6, v3);
    return v13;
  }

  if (qword_100940450 != -1)
  {
    swift_once();
  }

  v34 = sub_10076D9AC();
  sub_10000A61C(v34, qword_100956B00);
  if (qword_100940B70 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  sub_10000A61C(v19, qword_1009A1048);
  v20 = [a2 traitCollection];
  sub_10076D17C();
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v21 = sub_100770B3C();
  sub_10076D97C();
  v23 = v22;
  sub_100770B4C();
  v25 = v24;

  v26 = *(v4 + 8);
  v26(v6, v3);
  v27 = v23 - v25;
  if (qword_100940458 != -1)
  {
    swift_once();
  }

  v13 = ceil(v27);
  sub_10000A61C(v34, qword_100956B18);
  v28 = [a2 traitCollection];
  sub_10076D17C();
  v29 = sub_100770B3C();
  sub_10076D97C();
  [v29 descender];

  v26(v6, v3);
  return v13;
}

void sub_100414E38(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_10000A5D4(&unk_1009566C0, &qword_10078BEC0);
  sub_100111DA4();
  sub_10076FD8C();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v24 = sub_10076C56C();
  }

  else
  {
    v24 = aBlock[0];
  }

  v10 = sub_10076C5AC();
  swift_getObjectType();
  v11 = [a6 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v13 = [v10 length];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  *(v14 + 40) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100027A88;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1003BE1CC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  aBlock[3] = &unk_1008948E8;
  v16 = _Block_copy(aBlock);
  v17 = v11;
  v18 = v12;

  [v10 enumerateAttributesInRange:0 options:v13 usingBlock:{0x100000, v16}];

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v19 = v18;
    [a6 pageMarginInsets];
    sub_1003899C8(v18, v24 & 1, a6, v20, v21, v22, v23, a2, a3);

    sub_100414900(a1, a6);
  }
}

void sub_100415110(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, void *a6)
{
  v120 = a2;
  v9 = sub_10076C5FC();
  v124 = *(v9 - 8);
  v125 = v9;
  __chkstk_darwin(v9);
  v111 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v112 = &v108 - v12;
  __chkstk_darwin(v13);
  v109 = &v108 - v14;
  __chkstk_darwin(v15);
  v110 = &v108 - v16;
  v17 = sub_10000A5D4(&unk_100959F50, &qword_1007A21C8);
  __chkstk_darwin(v17 - 8);
  v115 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v121 = &v108 - v20;
  __chkstk_darwin(v21);
  v113 = &v108 - v22;
  __chkstk_darwin(v23);
  v114 = &v108 - v24;
  v119 = sub_10076C5DC();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v29 = &v108 - v28;
  v126 = v6;
  v30 = [v6 contentView];
  [v30 setLayoutMargins:{sub_100414900(a1, a6)}];

  v123 = a1;
  v31 = sub_10076C5AC();
  ObjectType = swift_getObjectType();
  v32 = [a6 traitCollection];
  v33 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v31];
  v34 = [v31 length];
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = v32;
  *(v35 + 32) = v33;
  *(v35 + 40) = 1;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1000275EC;
  *(v36 + 24) = v35;
  v131 = sub_1000ACB04;
  v132 = v36;
  aBlock = _NSConcreteStackBlock;
  v128 = 1107296256;
  v129 = sub_100026610;
  v130 = &unk_1008947F8;
  v37 = _Block_copy(&aBlock);
  v38 = v32;
  v39 = v33;

  [v31 enumerateAttributesInRange:0 options:v34 usingBlock:{0x100000, v37}];

  _Block_release(v37);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
    goto LABEL_51;
  }

  [a6 pageMarginInsets];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v126;
  v49 = [v126 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();
  v51 = v50;
  v53 = v52;

  type metadata accessor for ExpandableTextView();
  v122 = v39;
  LODWORD(ObjectType) = sub_10073E8EC(v39, 3, a6, v41, v43, v45, v47, v51, v53);
  v54 = *&v48[OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_expandableTextView];
  sub_10076C5EC();
  v55 = v118;
  v56 = v117;
  v57 = v29;
  v58 = v29;
  v59 = v119;
  (*(v118 + 16))(v117, v58, v119);
  v60 = v55;
  v61 = (*(v55 + 88))(v56, v59);
  v62 = v125;
  v63 = a6;
  if (v61 == enum case for Paragraph.Style.standard(_:))
  {
    goto LABEL_3;
  }

  if (v61 == enum case for Paragraph.Style.article(_:))
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v64 = sub_100770D1C();
    goto LABEL_6;
  }

  if (v61 == enum case for Paragraph.Style.caption(_:) || v61 == enum case for Paragraph.Style.todayCardOverlay(_:) || v61 == enum case for Paragraph.Style.privacyDefinitions(_:))
  {
LABEL_3:
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v64 = sub_100770CFC();
LABEL_6:
    v65 = v64;
    (*(v60 + 8))(v57, v59);
    goto LABEL_7;
  }

  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v65 = sub_100770CFC();
  v99 = *(v60 + 8);
  v99(v57, v59);
  v99(v56, v59);
  v63 = a6;
LABEL_7:
  v66 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel;
  [*(v54 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setTextColor:v65];

  sub_10000A5D4(&unk_1009566B0, &qword_1007A1D60);
  sub_100111DA4();
  sub_10076F84C();
  v67 = aBlock;
  v68 = v121;
  v69 = v62;
  if (aBlock == 2)
  {
    v67 = sub_10076C56C();
  }

  v70 = v124;
  if ((v67 & ObjectType & 1) == 0)
  {
    v92 = v122;
    sub_10076C60C();
    (*(v70 + 56))(v68, 0, 1, v69);
    v93 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
    v94 = *(v54 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed);
    *(v54 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed) = 0;
    v95 = *(v54 + v66);
    v96 = v92;
    [v95 setNumberOfLines:0];
    if (v94 != *(v54 + v93))
    {
      sub_10073D75C();
    }

    v88 = v96;
    sub_10073D114(v96);
    *(v54 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed) = 0;
    v97 = v115;
    sub_100415F48(v68, v115);
    v98 = (*(v70 + 48))(v97, 1, v69);
    v91 = v126;
    if (v98 == 1)
    {
      sub_100415FB8(v97);
LABEL_42:
      [v54 setNeedsLayout];
LABEL_47:

      sub_100415FB8(v68);
      [v91 setNeedsLayout];

      return;
    }

    v100 = v112;
    (*(v70 + 32))(v112, v97, v69);
    v101 = v111;
    (*(v70 + 16))(v111, v100, v69);
    v102 = (*(v70 + 88))(v101, v69);
    if (v102 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v102 == enum case for Paragraph.Alignment.center(_:))
      {
        v103 = 1;
        goto LABEL_41;
      }

      if (v102 == enum case for Paragraph.Alignment.right(_:))
      {
        v103 = 2;
        goto LABEL_41;
      }

      if (v102 == enum case for Paragraph.Alignment.justified(_:))
      {
        v103 = 3;
        goto LABEL_41;
      }

      if (v102 == enum case for Paragraph.Alignment.localized(_:))
      {
        v103 = 4;
        goto LABEL_41;
      }

      (*(v70 + 8))(v101, v69);
    }

    v103 = 0;
LABEL_41:
    [*(v54 + v66) setTextAlignment:v103];
    (*(v70 + 8))(v100, v69);
    goto LABEL_42;
  }

  v121 = v66;
  v71 = sub_10076C57C();
  v72 = [v63 traitCollection];
  v73 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v71];
  v74 = [v71 length];
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  *(v75 + 24) = v72;
  *(v75 + 32) = v73;
  *(v75 + 40) = 1;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_100027A88;
  *(v76 + 24) = v75;
  v131 = sub_1003BE1CC;
  v132 = v76;
  aBlock = _NSConcreteStackBlock;
  v128 = 1107296256;
  v129 = sub_100026610;
  v130 = &unk_100894870;
  v77 = _Block_copy(&aBlock);
  v78 = v72;
  v79 = v73;

  [v71 enumerateAttributesInRange:0 options:v74 usingBlock:{0x100000, v77}];

  _Block_release(v77);
  LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

  if ((v71 & 1) == 0)
  {
    v80 = v79;
    v68 = v114;
    sub_10076C60C();
    v82 = v124;
    v81 = v125;
    (*(v124 + 56))(v68, 0, 1, v125);
    v83 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
    v84 = *(v54 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed);
    *(v54 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed) = 1;
    v85 = *(v54 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines);
    v86 = *&v121[v54];
    v87 = v80;
    [v86 setNumberOfLines:v85];
    if (v84 != *(v54 + v83))
    {
      sub_10073D75C();
    }

    v88 = v87;
    sub_10073D114(v87);
    *(v54 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed) = 0;
    v89 = v113;
    sub_100415F48(v68, v113);
    v90 = (*(v82 + 48))(v89, 1, v81);
    v91 = v126;
    if (v90 == 1)
    {
      sub_100415FB8(v89);
LABEL_46:
      [v54 setNeedsLayout];

      goto LABEL_47;
    }

    v104 = v110;
    (*(v82 + 32))(v110, v89, v81);
    v105 = v109;
    (*(v82 + 16))(v109, v104, v81);
    v106 = (*(v82 + 88))(v105, v81);
    if (v106 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v106 == enum case for Paragraph.Alignment.center(_:))
      {
        v107 = 1;
        goto LABEL_45;
      }

      if (v106 == enum case for Paragraph.Alignment.right(_:))
      {
        v107 = 2;
        goto LABEL_45;
      }

      if (v106 == enum case for Paragraph.Alignment.justified(_:))
      {
        v107 = 3;
        goto LABEL_45;
      }

      if (v106 == enum case for Paragraph.Alignment.localized(_:))
      {
        v107 = 4;
        goto LABEL_45;
      }

      (*(v82 + 8))(v105, v81);
    }

    v107 = 0;
LABEL_45:
    [v86 setTextAlignment:v107];
    (*(v82 + 8))(v104, v81);
    goto LABEL_46;
  }

LABEL_51:
  __break(1u);
}