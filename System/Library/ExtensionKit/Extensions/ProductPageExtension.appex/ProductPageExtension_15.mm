uint64_t sub_1001B6E70(uint64_t a1)
{
  result = sub_1001B79A4(&qword_10094C3C0, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_1007929F0);
  *(a1 + 8) = result;
  return result;
}

double sub_1001B6F10(uint64_t a1)
{
  v38 = sub_10076C38C();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10076DD3C();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  __chkstk_darwin(v9);
  v36 = sub_10076DA7C();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_10094C3D0, &qword_100792A60);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - v13;
  sub_100760DEC();
  sub_1001B79A4(&qword_100958F40, &type metadata accessor for EditorsChoice, &protocol conformance descriptor for EditorsChoice);
  sub_10076332C();
  if (!v43[0])
  {
    return 0.0;
  }

  v15 = v43[0];
  sub_1001B7920();
  v32[2] = a1;
  sub_10076335C();
  sub_10076FD8C();
  if (v43[0])
  {
    v32[0] = 0;
  }

  else
  {
    v17 = sub_100760DCC();
    v18 = 6;
    if ((v17 & 1) == 0)
    {
      v18 = 0;
    }

    v32[0] = v18;
  }

  v32[1] = v15;
  (*(v12 + 8))(v14, v11);
  sub_10076DDDC();
  swift_allocObject();
  v39 = sub_10076DD9C();
  sub_100760DDC();
  sub_10076DD2C();
  if (qword_100940C40 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  sub_10000A61C(v19, qword_1009A12B8);
  sub_10076DCFC();
  v20 = *(v3 + 8);
  v21 = v5;
  v22 = v33;
  v20(v21, v33);
  sub_10076DD1C();
  v20(v8, v22);
  sub_10076DA5C();
  v23 = v40;
  sub_10076DA9C();
  type metadata accessor for ProductEditorsChoiceView(0);
  v42[5] = v39;
  sub_10076D2DC();
  v24 = v36;
  v41[3] = v36;
  v41[4] = &protocol witness table for LabelPlaceholder;
  v25 = sub_10000DB7C(v41);
  v26 = v34;
  (*(v34 + 16))(v25, v23, v24);
  v27 = sub_100760DBC();
  sub_10038823C((v27 & 1) == 0, v43);
  sub_10000CD74(v42);
  sub_10000CD74(v41);
  sub_10000CF78(v43, v43[3]);
  swift_getKeyPath();
  v28 = v35;
  sub_10076338C();

  sub_10076C2FC();
  (*(v37 + 8))(v28, v38);
  swift_getKeyPath();
  sub_10076338C();

  v29 = v42[0];
  sub_10076E0FC();
  v16 = v30;

  (*(v26 + 8))(v40, v24);
  sub_10000CD74(v43);
  return v16;
}

double sub_1001B7558(__n128 a1)
{
  v1 = sub_1007621EC();
  v30 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v23[-v5];
  v7 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v23[-v8];
  v10 = sub_10000A5D4(&qword_10094C3D0, &qword_100792A60);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23[-v12];
  sub_100760DEC();
  sub_1001B79A4(&qword_100958F40, &type metadata accessor for EditorsChoice, &protocol conformance descriptor for EditorsChoice);
  sub_10076332C();
  v15 = v32;
  if (v32)
  {
    v25 = v3;
    v26 = v1;
    v27 = *(v27 + OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView);
    sub_1001B7920();
    sub_10076335C();
    sub_10076FD8C();
    if (v31)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_100760DCC() ^ 1;
    }

    v24 = v16;
    (*(v11 + 8))(v13, v10);
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    v17 = v29;
    sub_10076F49C();

    (*(v28 + 8))(v9, v17);
    v18 = v30;
    v19 = v25;
    v20 = v26;
    (*(v30 + 104))(v25, enum case for ShelfBackground.editorsChoice(_:), v26);
    v21 = sub_1007621DC();
    v22 = *(v18 + 8);
    v22(v19, v20);
    v22(v6, v20);
    sub_1005BEFA4(v15, v24 & 1, v21 & 1);
  }

  return result;
}

unint64_t sub_1001B7920()
{
  result = qword_10094C3D8;
  if (!qword_10094C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C3D8);
  }

  return result;
}

uint64_t sub_1001B79A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s5StateVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1001B7AA0()
{
  result = qword_10094C3F0;
  if (!qword_10094C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C3F0);
  }

  return result;
}

unint64_t sub_1001B7AF8()
{
  result = qword_10094C3F8;
  if (!qword_10094C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C3F8);
  }

  return result;
}

uint64_t sub_1001B7B4C()
{

  return swift_deallocClassInstance();
}

void sub_1001B7BA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 < 0)
  {
    v4 = sub_100227168();
    v7 = OBJC_IVAR____TtC20ProductPageExtension20PresentationLinkView_linkView;
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension20PresentationLinkView_linkView] setMetadata:a2];
    [*&v4[v7] setURL:0];
    [v4 setNeedsLayout];
    v5 = &OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell____lazy_storage___presentationLinkView;
  }

  else
  {
    v4 = sub_100227034();
    sub_1005E24EC();
    v5 = &OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell____lazy_storage___standardLinkView;
  }

  v8 = *(v3 + *v5);
  v9 = v8;

  sub_100227054(v8);
}

double sub_1001B7C78(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_1001B7E14(*a1, a5);
  v10 = v9;
  v12 = v11;
  v13 = sub_1001B7EC0(v9, v11, a7, a2);
  sub_1000A9094(v10, v12);
  return v13;
}

void sub_1001B7CE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1001B7E14(*a1, a3);
  v4 = v3;
  v6 = v5;
  sub_1001B7BA8(v3, v5);

  sub_1000A9094(v4, v6);
}

uint64_t sub_1001B7DCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1001B7E14(uint64_t a1, uint64_t a2)
{
  sub_10000A5D4(&unk_1009467A0, &qword_1007890C8);
  sub_10076F64C();
  sub_10076FC1C();
  sub_10075F74C();

  if ((~v3 & 0xF000000000000007) == 0)
  {
  }

  return result;
}

double sub_1001B7EC0(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_10075DB7C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
    sub_100760D9C();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1001B82AC(v10);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      if (qword_10093F660 != -1)
      {
        swift_once();
      }

      v29 = sub_10000A5D4(&qword_100947520, &qword_1007897E8);
      v21 = sub_10000A61C(v29, qword_100947500);
      __chkstk_darwin(v21);
      *(&v28 - 2) = v14;
      swift_beginAccess();
      sub_10076E15C();
      swift_endAccess();
      v22 = v30;
      v23 = [a3 traitCollection];
      v24 = [v23 preferredContentSizeCategory];

      [v22 setMinimumContentSizeCategory:v24];
      v25 = [a3 traitCollection];
      v26 = [v25 preferredContentSizeCategory];

      [v22 setMaximumContentSizeCategory:v26];
      [v22 setMetadata:a2];
      [v22 sizeThatFits:{a4, 1.79769313e308}];
      v30 = v22;
      swift_beginAccess();
      sub_10076E17C();
      swift_endAccess();

      (*(v12 + 8))(v14, v11);
    }
  }

  else
  {
    type metadata accessor for StandardLinkView();
    v15 = sub_100760D7C();
    v17 = v16;
    v18 = sub_100760D6C();
    v20 = v19;
    swift_getObjectType();
    sub_10060E650(v15, v17, v18, v20, a3, a4, 16.0, 16.0);
  }

  return a4;
}

uint64_t sub_1001B82AC(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001B8344(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

id sub_1001B83D8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_100050CC0(a1, &v16 - v6);
  v8 = sub_10075DB7C();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_10075DB1C(v10);
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  v16.receiver = v2;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithCompositionURL:", v11);

  v14 = v13;
  sub_1001B82AC(a1);
  if (v14)
  {
  }

  return v14;
}

id sub_1001B878C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10076105C();
  if (v5)
  {
    v6 = sub_10076FF6C();
  }

  else
  {
    v6 = 0;
  }

  [v3 setAccessibilityLabel:v6];

  v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_titleLabel];
  sub_10076106C();
  v8 = sub_10076FF6C();

  [v7 setText:v8];

  v9 = sub_10076107C();
  if (v9)
  {
    sub_10076BEFC();
    v27 = v10;
    v28 = v11;

    *&v12 = v27;
    *(&v12 + 1) = v28;
  }

  else
  {
    v12 = 0uLL;
  }

  v13 = &v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  *v13 = v12;
  v13[16] = v9 == 0;
  v14 = sub_10076107C();
  if (v14)
  {
  }

  v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_hasArtwork] = v14 != 0;
  v15 = sub_10076107C();
  if (v15)
  {
    sub_10004DA7C(v15, a2);
  }

  else
  {
    v16 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView];
    sub_10075FCAC();
    [v16 setHidden:1];
  }

  v17 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView];
  v18 = sub_10076103C();
  [v17 setTintColor:v18];

  v20 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_tapAction];
  if (v20)
  {
    v21 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_tapAction + 8];
    v22 = objc_allocWithZone(UITapGestureRecognizer);

    v23 = [v22 initWithTarget:v3 action:"handleTap"];
    v24 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer];
    *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer] = v23;
    v25 = v23;

    if (v25)
    {
      [v3 addGestureRecognizer:v25];
      sub_1000167E0(v20, v21);
    }

    else
    {
      v19 = sub_1000167E0(v20, v21);
    }
  }

  else if (*&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer])
  {
    [v3 removeGestureRecognizer:?];
  }

  return [v3 setNeedsLayout];
}

char *sub_1001B8A20(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - v11;
  v13 = sub_10076771C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v59 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v21 = sub_10076341C();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_100940FF8 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A1DE0);
  v25 = *(v23 - 8);
  v63 = *(v25 + 16);
  v64 = v24;
  v63(v19);
  v62 = *(v25 + 56);
  v62(v19, 0, 1, v23);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v26 = objc_allocWithZone(sub_1007626BC());
  *&v5[v22] = sub_1007626AC();
  v27 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_shadowView;
  sub_10075F99C();
  *&v5[v27] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_roundedCornerView;
  sub_10076394C();
  *&v5[v28] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = &v5[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_hasArtwork] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_clickAction] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_objectGraph] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer] = 0;
  v30 = &v5[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_tapAction];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView;
  sub_10075FD2C();
  *&v5[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v65.receiver = v5;
  v65.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  ObjectType = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_roundedCornerView;
  v33 = *&v32[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_roundedCornerView];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v34 = v32;
  v35 = v33;
  v36 = sub_100770DBC();
  [v35 setBackgroundColor:v36];

  v60 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_shadowView;
  v37 = qword_10093F880;
  v38 = *&v34[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_shadowView];
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = sub_10076BCFC();
  v40 = sub_10000A61C(v39, qword_10099D420);
  v41 = *(v39 - 8);
  (*(v41 + 16))(v12, v40, v39);
  (*(v41 + 56))(v12, 0, 1, v39);
  sub_10075F97C();

  v42 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_titleLabel;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_titleLabel] setNumberOfLines:1];
  v43 = *&v34[v42];
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 labelColor];
  [v45 setTextColor:v46];

  v47 = *&v34[v42];
  (v63)(v19, v64, v23);
  v62(v19, 0, 1, v23);
  v48 = v47;
  sub_1007625DC();

  v49 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView;
  v50 = *&v34[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView];
  v51 = [v44 clearColor];
  sub_10075FBCC();

  v52 = [v34 contentView];
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v53 = [v34 contentView];
  [v53 addSubview:*&v34[v60]];

  v54 = [v34 contentView];
  [v54 addSubview:*(ObjectType + v32)];

  v55 = [v34 contentView];
  [v55 addSubview:*&v34[v49]];

  v56 = [v34 contentView];
  [v56 addSubview:*&v34[v42]];

  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100783C60;
  *(v57 + 32) = sub_10076E3EC();
  *(v57 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v57 + 48) = sub_10076E88C();
  *(v57 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v57 + 64) = sub_10076E4CC();
  *(v57 + 72) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100770C4C();

  swift_unknownObjectRelease();

  return v34;
}

double sub_1001B91FC(__n128 a1)
{
  v2 = v1;
  v3 = sub_10076738C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v23 - v9;
  v11 = [v1 traitCollection];
  v12 = &v2[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  v13 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  v14 = *(v12 + 1);
  v15 = v12[16];
  if (sub_10077071C())
  {
    sub_1001B997C(v11, v6);
  }

  else if (v15)
  {
    sub_1001B9CB4();
  }

  else
  {
    sub_1001B9D54(v13, v14, 0, v16, v17, v18, v19);
  }

  (*(v4 + 32))(v10, v6, v3);
  sub_10076736C();
  v21 = v20;
  (*(v4 + 8))(v10, v3);
  return v21;
}

uint64_t sub_1001B939C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075FEEC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews", v5);
  sub_1001B9600(v16);
  sub_10000CF78(v16, v16[3]);
  [v1 bounds];
  v8 = [v1 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v16);
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_shadowView];
  [v1 bounds];
  [v9 setFrame:?];
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_roundedCornerView];
  [v1 bounds];
  [v10 setFrame:?];
  [v1 bounds];
  CGRectGetHeight(v18);
  v11 = enum case for CornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v7, enum case for CornerStyle.continuous(_:), v3);
  sub_1007638AC();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v12(v7, v11, v3);
  sub_10075F98C();
  return (v13)(v7, v3);
}

uint64_t sub_1001B9600@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v5 = sub_10076738C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v30 - v11;
  v13 = [v2 traitCollection];
  v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  v15 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize + 8];
  v16 = v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize + 16];
  if (sub_10077071C())
  {
    sub_1001B997C(v13, v8);
  }

  else if (v16)
  {
    sub_1001B9CB4();
  }

  else
  {
    sub_1001B9D54(v14, v15, 0, v17, v18, v19, v20);
  }

  (*(v6 + 32))(v12, v8, v5);
  if (v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_hasArtwork])
  {
    v21 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView];
    v22 = sub_10075FD2C();
    v23 = sub_1001BBCF0(&qword_10094B250, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v24 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v30[6] = 0;
    v30[7] = 0;
  }

  v30[8] = v22;
  v30[9] = v23;
  v30[5] = v21;
  v25 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_titleLabel];
  v30[3] = sub_1007626BC();
  v30[4] = &protocol witness table for UILabel;
  v30[0] = v25;
  v26 = sub_1007673AC();
  swift_allocObject();
  v27 = v25;
  v28 = sub_10076739C();
  a1[3] = v26;
  result = sub_1001BBCF0(&qword_10094C5B8, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
  a1[4] = result;
  *a1 = v28;
  return result;
}

void sub_1001B997C(objc_class *a4@<X3>, uint64_t a5@<X8>)
{
  v17[1] = a5;
  v17[0] = sub_10076D39C();
  v6 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076D1AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940FF8 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  v14 = sub_10000A61C(v13, qword_1009A1DE0);
  (*(*(v13 - 8) + 16))(v12, v14, v13);
  (*(v10 + 104))(v12, enum case for FontSource.useCase(_:), v9);
  v15.super.isa = a4;
  isa = sub_10076D19C(v15).super.isa;
  (*(v10 + 8))(v12, v9);
  [(objc_class *)isa lineHeight];
  sub_10076D3AC();
  sub_10076D35C();
  (*(v6 + 8))(v8, v17[0]);
  v17[35] = &type metadata for Double;
  v17[36] = &protocol witness table for Double;
  v17[31] = &protocol witness table for Double;
  v17[32] = 0x4020000000000000;
  v17[30] = &type metadata for Double;
  v17[27] = 0x4024000000000000;
  v17[25] = &type metadata for Double;
  v17[26] = &protocol witness table for Double;
  v17[21] = &protocol witness table for Double;
  v17[22] = 0x402C000000000000;
  v17[20] = &type metadata for Double;
  v17[16] = &protocol witness table for Double;
  v17[17] = 0;
  v17[15] = &type metadata for Double;
  v17[11] = &protocol witness table for Double;
  v17[12] = 0;
  v17[10] = &type metadata for Double;
  v17[6] = &protocol witness table for Double;
  v17[7] = 0x4010000000000000;
  v17[5] = &type metadata for Double;
  v17[2] = 0x4010000000000000;
  sub_10076735C();
}

uint64_t sub_1001B9F94(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {

      return sub_10000CFBC(v5, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100263BF0(a2, 1, v7, v5);

      return (*(v9 + 8))(v5, v8);
    }
  }

  return result;
}

uint64_t type metadata accessor for RibbonBarItemCollectionViewCell(uint64_t a1)
{
  result = qword_10094C5A0;
  if (!qword_10094C5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001BA23C(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001BA324(uint64_t a1, uint64_t a2)
{
  sub_10075FB6C();
  sub_10075FD2C();
  sub_1001BBCF0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_1001BA3BC(uint64_t a1)
{
  result = sub_1001BBCF0(&qword_10094C5B0, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_100792D40);
  *(a1 + 8) = result;
  return result;
}

void *sub_1001BA414(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = sub_10076D1AC();
  v115 = *(v10 - 8);
  v116 = v10;
  __chkstk_darwin(v10);
  v114 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D9AC();
  v118 = *(v12 - 8);
  v119 = v12;
  __chkstk_darwin(v12);
  v117 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10000A5D4(&unk_1009680C0, qword_100792D90);
  v14 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v113 - v15;
  v140 = sub_10076D7FC();
  v16 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v138 = &v113 - v19;
  __chkstk_darwin(v20);
  v137 = &v113 - v21;
  __chkstk_darwin(v22);
  v136 = &v113 - v23;
  __chkstk_darwin(v24);
  v135 = &v113 - v25;
  __chkstk_darwin(v26);
  v134 = &v113 - v27;
  v133 = sub_10076DA7C();
  v28 = *(v133 - 8);
  __chkstk_darwin(v133);
  *&v153 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10076738C();
  v30 = *(v144 - 8);
  __chkstk_darwin(v144);
  v32 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v113 - v34;
  __chkstk_darwin(v36);
  v121 = &v113 - v37;
  __chkstk_darwin(v38);
  v122 = &v113 - v39;
  if (a1 >> 62)
  {
LABEL_55:
    v40 = sub_10077158C();
  }

  else
  {
    v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v145 = a2;
  if (v40)
  {
    v152 = v14;
    v175 = _swiftEmptyArrayStorage;
    v143 = v40;
    sub_1004BBAA4(0, v40 & ~(v40 >> 63), 0);
    if (v143 < 0)
    {
      __break(1u);
LABEL_57:
      swift_once();
      goto LABEL_43;
    }

    v130 = v35;
    v131 = v32;
    v35 = v175;
    v4 = JUMeasuringSizeExpanded[0];
    v5 = JUMeasuringSizeExpanded[1];
    v41 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
    v42 = v30;
    v43 = 0;
    v44 = a1;
    v128 = a1 & 0xC000000000000001;
    v129 = v41;
    v120 = v42;
    v126 = (v42 + 32);
    v127 = v16 + 8;
    v124 = (v152 + 8);
    v125 = (v28 + 2);
    v123 = (v28 + 1);
    v132 = a1;
    v16 += 8;
    do
    {
      if (v128)
      {
        v45 = sub_10077149C();
      }

      else
      {
        v45 = *(v44 + 8 * v43 + 32);
      }

      v152 = v35;
      v46 = sub_10076106C();
      v148 = v47;
      v149 = v46;
      v48 = sub_10076107C();
      if (v48)
      {
        sub_10076BEFC();
        v50 = v49;
        v52 = v51;

        v146 = v52;
        v147 = v50;
      }

      else
      {
        v146 = 0;
        v147 = 0;
      }

      v151 = v45;
      v53 = sub_10076107C();
      if (v53)
      {
      }

      if (qword_100940FF8 != -1)
      {
        swift_once();
      }

      v54 = sub_10076D3DC();
      sub_10000A61C(v54, qword_1009A1DE0);
      v55 = sub_100770B3C();
      v56 = v139;
      sub_10076D7EC();
      v57 = v138;
      v150 = v55;
      sub_10076D7DC();
      v58 = *v16;
      v59 = v140;
      (*v16)(v56, v140);
      v60 = v137;
      sub_10076D73C();
      v58(v57, v59);
      v61 = v136;
      sub_10076D79C();
      v58(v60, v59);
      v62 = v135;
      sub_10076D78C();
      v58(v61, v59);
      sub_10076D7AC();
      v58(v62, v59);
      v63 = v145;
      sub_10076DA5C();
      sub_10076DA8C();
      if (sub_10077071C())
      {
        v64 = v131;
        sub_1001B997C(v63, v131);
        v65 = v130;
      }

      else
      {
        v65 = v130;
        v64 = v131;
        if (v48)
        {
          sub_100770A9C();
          v174 = &protocol witness table for Double;
          *(&v173 + 1) = &type metadata for Double;
          v171 = &protocol witness table for Double;
          *&v172 = 0x4020000000000000;
          v170 = &type metadata for Double;
          v169[0] = 0x4024000000000000;
          v168 = &protocol witness table for Double;
          v167 = &type metadata for Double;
          v165 = &protocol witness table for Double;
          v166[0] = 0x4028000000000000;
          v164 = &type metadata for Double;
          v162 = &protocol witness table for Double;
          v163[0] = 0x401C000000000000;
          v161 = &type metadata for Double;
          v159 = &protocol witness table for Double;
          v160[0] = 0x401C000000000000;
          v158 = &type metadata for Double;
          v156 = &protocol witness table for Double;
          v157[0] = 0;
          v155 = &type metadata for Double;
          v154[0] = 0;
        }

        else
        {
          v174 = &protocol witness table for Double;
          *(&v173 + 1) = &type metadata for Double;
          v171 = &protocol witness table for Double;
          *&v172 = 0x4020000000000000;
          v170 = &type metadata for Double;
          v169[0] = 0x4024000000000000;
          v168 = &protocol witness table for Double;
          v167 = &type metadata for Double;
          v165 = &protocol witness table for Double;
          v166[0] = 0x4024000000000000;
          v164 = &type metadata for Double;
          v162 = &protocol witness table for Double;
          v163[0] = 0x401C000000000000;
          v161 = &type metadata for Double;
          v159 = &protocol witness table for Double;
          v160[0] = 0x401C000000000000;
          v158 = &type metadata for Double;
          v156 = &protocol witness table for Double;
          v157[0] = 0x4024000000000000;
          v155 = &type metadata for Double;
          v154[0] = 0x4024000000000000;
        }

        sub_10076735C();
      }

      (*v126)(v65, v64, v144);
      if (v53)
      {
        v66 = sub_1007616FC();
        swift_allocObject();
        v67 = sub_1007616EC();
        *(&v173 + 1) = v66;
        v174 = sub_1001BBCF0(&qword_1009680E0, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
        *&v172 = v67;
      }

      else
      {
        v174 = 0;
        v172 = 0u;
        v173 = 0u;
      }

      v68 = v133;
      v170 = v133;
      v171 = &protocol witness table for LabelPlaceholder;
      v69 = sub_10000DB7C(v169);
      v70 = v153;
      (*v125)(v69, v153, v68);
      sub_1007673AC();
      swift_allocObject();
      *&v172 = sub_10076739C();
      sub_1001BBCF0(&unk_1009680D0, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
      v71 = v141;
      sub_10076D43C();
      swift_getOpaqueTypeConformance2();
      v72 = v142;
      sub_10076E0FC();
      v74 = v73;

      (*v124)(v71, v72);
      (*v123)(v70, v68);
      v35 = v152;
      v175 = v152;
      v76 = *(v152 + 2);
      v75 = *(v152 + 3);
      if (v76 >= v75 >> 1)
      {
        sub_1004BBAA4((v75 > 1), v76 + 1, 1);
        v35 = v175;
      }

      ++v43;
      *(v35 + 2) = v76 + 1;
      *&v35[8 * v76 + 32] = v74;
      a2 = v63;
      v44 = v132;
    }

    while (v143 != v43);
    v30 = v120;
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v77 = v121;
  if (sub_10077071C())
  {
    sub_1001B997C(a2, v77);
  }

  else
  {
    sub_1001B9CB4();
  }

  a1 = v122;
  v78 = v77;
  v79 = v144;
  (*(v30 + 32))(v122, v78, v144);
  sub_10076737C();
  (*(v30 + 8))(a1, v79);
  v30 = *(v35 + 2);
  if (!v30)
  {
    goto LABEL_51;
  }

  v32 = 0;
  v80 = 0.0;
  v14 = &unk_100942870;
  v28 = &qword_100784460;
  v153 = xmmword_1007841E0;
  while (1)
  {
    if (v32 >= *(v35 + 2))
    {
      __break(1u);
      goto LABEL_55;
    }

    v81 = *&v35[8 * v32 + 32];
    v5 = v80 + v81;
    if (v80 + v81 == a3)
    {
      goto LABEL_51;
    }

    if (v80 + v81 >= a3)
    {
      break;
    }

    ++v32;
    sub_1007673AC();
    sub_10076732C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    a2 = swift_allocObject();
    *(a2 + 16) = v153;
    v82 = v145;
    *(a2 + 32) = v145;
    v83 = v82;
    a1 = sub_10076DEEC();
    sub_10077036C();
    v4 = v84;

    v80 = v5 + v4;
    if (v30 == v32)
    {
      goto LABEL_51;
    }
  }

  sub_10000CF78(&v172, *(&v173 + 1));
  a2 = v145;
  sub_10076D41C();
  v86 = a3 + a4 + v85;
  if (v86 <= v5)
  {
LABEL_51:
    v107 = v35;
    goto LABEL_52;
  }

  v16 = v35;
  a3 = v86 - v5;
  v4 = (v32 + 1);
  v5 = (v86 - v5) / v4 * 0.5;
  if (qword_100940FF8 != -1)
  {
    goto LABEL_57;
  }

LABEL_43:
  v87 = sub_10076D3DC();
  v88 = sub_10000A61C(v87, qword_1009A1DE0);
  v89 = v114;
  (*(*(v87 - 8) + 16))(v114, v88, v87);
  v91 = v115;
  v90 = v116;
  (*(v115 + 104))(v89, enum case for FontSource.useCase(_:), v116);
  v170 = v90;
  v171 = &protocol witness table for FontSource;
  v92 = sub_10000DB7C(v169);
  (*(v91 + 16))(v92, v89, v90);
  v93 = v117;
  sub_10076D9BC();
  (*(v91 + 8))(v89, v90);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v94 = swift_allocObject();
  *(v94 + 16) = v153;
  *(v94 + 32) = a2;
  v95 = a2;
  v96 = sub_10076DEEC();
  v97 = v119;
  sub_10076D3EC();
  v99 = v98;

  (*(v118 + 8))(v93, v97);
  v100 = (a3 + v5 + v99) / v4;
  v101 = swift_allocObject();
  *(v101 + 16) = v153;
  *(v101 + 32) = v95;
  v102 = v95;
  v103 = sub_10076DEEC();
  sub_10077036C();
  v105 = v104;

  if (v100 < v105)
  {
    v105 = v100;
  }

  v106 = *(v16 + 2);
  if (v106)
  {
    v169[0] = _swiftEmptyArrayStorage;
    sub_1004BBAA4(0, v106, 0);
    v107 = v169[0];
    v108 = *(v169[0] + 16);
    v109 = 32;
    do
    {
      v110 = *&v16[v109];
      v169[0] = v107;
      v111 = v107[3];
      if (v108 >= v111 >> 1)
      {
        sub_1004BBAA4((v111 > 1), v108 + 1, 1);
        v107 = v169[0];
      }

      v107[2] = v108 + 1;
      *&v107[v108 + 4] = v105 + v110;
      v109 += 8;
      ++v108;
      --v106;
    }

    while (v106);
  }

  else
  {

    v107 = _swiftEmptyArrayStorage;
  }

LABEL_52:
  sub_10000CD74(&v172);
  return v107;
}

void sub_1001BB31C()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_100940FF8 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A1DE0);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v11) = sub_1007626AC();
  v16 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_shadowView;
  sub_10075F99C();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_roundedCornerView;
  sub_10076394C();
  *(v1 + v17) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = v1 + OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_hasArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_clickAction) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer) = 0;
  v19 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_tapAction);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView;
  sub_10075FD2C();
  *(v1 + v20) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

double sub_1001BB67C(uint64_t a1, void *a2)
{
  v3 = sub_10000A5D4(&unk_1009680C0, qword_100792D90);
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v54 = v44 - v4;
  v5 = sub_10076738C();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = v44 - v8;
  v9 = sub_10076D7FC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v44 - v14;
  __chkstk_darwin(v16);
  v18 = v44 - v17;
  __chkstk_darwin(v19);
  v21 = v44 - v20;
  __chkstk_darwin(v22);
  v24 = v44 - v23;
  __chkstk_darwin(v25);
  v46 = v44 - v26;
  v53 = sub_10076DA7C();
  v51 = *(v53 - 8);
  *&v27 = __chkstk_darwin(v53).n128_u64[0];
  v45 = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a2 traitCollection];
  v44[2] = sub_10076106C();
  v44[1] = v30;
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940FF8 != -1)
  {
    swift_once();
  }

  v31 = sub_10076D3DC();
  sub_10000A61C(v31, qword_1009A1DE0);
  v32 = sub_100770B3C();
  sub_10076D7EC();
  v47 = v32;
  sub_10076D7DC();
  v33 = *(v10 + 8);
  v33(v12, v9);
  sub_10076D73C();
  v33(v15, v9);
  sub_10076D79C();
  v33(v18, v9);
  sub_10076D78C();
  v33(v21, v9);
  sub_10076D7AC();
  v33(v24, v9);
  sub_10076DA5C();
  v34 = v45;
  sub_10076DA8C();
  if (sub_10077071C())
  {
    v35 = v48;
    sub_1001B997C(v29, v48);
  }

  else
  {
    v35 = v48;
    sub_1001B9CB4();
  }

  (*(v49 + 32))(v52, v35, v50);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v36 = v53;
  v57[3] = v53;
  v57[4] = &protocol witness table for LabelPlaceholder;
  v37 = sub_10000DB7C(v57);
  v38 = v51;
  (*(v51 + 16))(v37, v34, v36);
  sub_1007673AC();
  swift_allocObject();
  *&v58 = sub_10076739C();
  sub_1001BBCF0(&unk_1009680D0, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
  v39 = v54;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v40 = v56;
  sub_10076E0FC();
  v42 = v41;

  (*(v55 + 8))(v39, v40);
  (*(v38 + 8))(v34, v36);
  return v42;
}

uint64_t sub_1001BBCF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001BBD38(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1001BBE24(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D9AC();
  sub_10000DB18(v8, a3);
  sub_10000A61C(v8, a3);
  if (qword_100940F60 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1C18);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_10076D9BC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001BC000()
{
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  result = sub_100770D1C();
  qword_10099D780 = result;
  return result;
}

void *sub_1001BC044(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v57 = swift_isaMask & *v4;
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v16 = qword_10094C5C0;
  sub_10076394C();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = qword_10099D788;
  v18 = sub_10076341C();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[qword_10099D790] = 0;
  v5[qword_10099D798] = 0;
  v19 = &v5[qword_10099D7A0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v19 = UIEdgeInsetsZero.top;
  v19[1] = left;
  v19[2] = bottom;
  v19[3] = right;
  v5[qword_10099D7A8] = 0;
  v23 = [objc_allocWithZone(UIView) init];
  *&v5[qword_10094C5C8] = v23;
  if (qword_100940F68 != -1)
  {
    swift_once();
  }

  v24 = sub_10076D3DC();
  v25 = sub_10000A61C(v24, qword_1009A1C30);
  v26 = *(v24 - 8);
  v56 = *(v26 + 16);
  v56(v15, v25, v24);
  v55 = *(v26 + 56);
  v55(v15, 0, 1, v24);
  v27 = enum case for DirectionalTextAlignment.none(_:);
  v54 = *(v11 + 104);
  v54(v58, enum case for DirectionalTextAlignment.none(_:), v10);
  v28 = sub_1007626BC();
  v53 = v10;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[qword_10094C5D0] = sub_1007626AC();
  if (qword_100940F60 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v24, qword_1009A1C18);
  v56(v15, v31, v24);
  v55(v15, 0, 1, v24);
  v54(v58, v27, v53);
  v32 = objc_allocWithZone(v29);
  *&v5[qword_10094C5D8] = sub_1007626AC();
  v35 = type metadata accessor for FramedMediaCollectionViewCell(0, *(v57 + 80), v33, v34);
  v59.receiver = v5;
  v59.super_class = v35;
  v36 = objc_msgSendSuper2(&v59, "initWithFrame:", a1, a2, a3, a4);
  v37 = [v36 contentView];
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v38 = [v36 contentView];
  v39 = qword_10094C5C0;
  [v38 addSubview:*(v36 + qword_10094C5C0)];

  v40 = qword_10094C5C8;
  v41 = *(v36 + qword_10094C5C8);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v42 = v41;
  v43 = sub_100770D5C();
  [v42 setBackgroundColor:v43];

  [*(v36 + v40) setHidden:1];
  [*(v36 + v39) addSubview:*(v36 + v40)];
  v44 = qword_10094C5D0;
  v45 = *(v36 + qword_10094C5D0);
  v46 = sub_100770CFC();
  [v45 setTextColor:v46];

  [*(v36 + v40) addSubview:*(v36 + v44)];
  v47 = qword_10094C5D8;
  v48 = qword_10093F9A8;
  v49 = *(v36 + qword_10094C5D8);
  if (v48 != -1)
  {
    swift_once();
  }

  [v49 setTextColor:qword_10099D780];

  [*(v36 + v47) setTextAlignment:4];
  [*(v36 + v40) addSubview:*(v36 + v47)];
  v50 = *((swift_isaMask & *v36) + 0x130);
  v51 = *(v36 + v39);
  v50();

  return v36;
}

uint64_t sub_1001BC774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for FramedMediaCollectionViewCell(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v21.receiver = v4;
  v21.super_class = v6;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v7 = *(v4 + qword_10094C5C0);
  v8 = [v4 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v7 setFrame:{v10, v12, v14, v16}];
  [v7 frame];
  v20[0] = 0.0;
  v20[1] = 0.0;
  v20[2] = v17;
  v20[3] = v18;
  sub_1001BC928(v20, *(v5 + qword_10099D7A8));
  return (*((swift_isaMask & *v5) + 0x128))(v20);
}

void sub_1001BC8E0(void *a1)
{
  v4 = a1;
  sub_1001BC774(v4, v1, v2, v3);
}

void sub_1001BC928(CGFloat *a1, char a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = v94 - v7;
  v9 = sub_10077164C();
  v10 = *(v9 - 1);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[qword_10099D798] != 1)
  {
    return;
  }

  v14 = [v2 traitCollection];
  v15 = sub_10077070C();

  v16 = 20.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 20.0;
  if (a2)
  {
    v17 = *&v3[qword_10099D7A0];
    v16 = *&v3[qword_10099D7A0 + 8];
    v18 = *&v3[qword_10099D7A0 + 16];
    v19 = *&v3[qword_10099D7A0 + 24];
  }

  if (v15)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  v108 = v20;
  v22 = *a1;
  v21 = a1[1];
  v24 = a1[2];
  v23 = a1[3];
  v114.origin.x = *a1;
  v114.origin.y = v21;
  v114.size.width = v24;
  v114.size.height = v23;
  Width = CGRectGetWidth(v114);
  v106 = v23;
  v107 = Width - v16 - v19;
  v104 = v21;
  v105 = v22;
  v115.origin.x = v22;
  v115.origin.y = v21;
  v103 = v24;
  v115.size.width = v24;
  v115.size.height = v23;
  v26 = v17;
  v27 = CGRectGetHeight(v115) - v17 - v18;
  v28 = v15;
  v29 = *&v3[qword_10094C5D0];
  v30 = [v29 text];
  v101 = v28;
  if (v30)
  {

    v31 = v107;
    [v29 sizeThatFits:{v107, v27}];
    v17 = v32;
    v102 = v33;
    if (v28)
    {
      v116.origin.x = v19;
      v34 = v26;
      v116.origin.y = v26;
      v116.size.width = v31;
      v116.size.height = v27;
      MinX = CGRectGetMaxX(v116) - v17;
      v35 = v17;
      v36 = v17 + 30.0;
      v37 = 0.0;
    }

    else
    {
      v117.origin.x = v16;
      v34 = v26;
      v117.origin.y = v26;
      v117.size.width = v31;
      v117.size.height = v27;
      MinX = CGRectGetMinX(v117);
      v35 = v17;
      v37 = v17 + 30.0;
      v36 = v17 + 30.0;
    }

    v39 = v108 + v37;
    v38 = v31 - v36;
  }

  else
  {
    v102 = 0.0;
    MinX = 0.0;
    v35 = 0.0;
    v34 = v17;
    v38 = v107;
    v39 = v108;
  }

  if (qword_10093F998 != -1)
  {
    swift_once();
  }

  v40 = sub_10076D9AC();
  sub_10000A61C(v40, qword_10099D750);
  sub_10076D17C();
  v99 = v40;
  sub_10076D40C();
  v42 = v41;
  v44 = *(v10 + 8);
  v43 = v10 + 8;
  v97 = v44;
  v44(v13, v9);
  v107 = *&v3[qword_10094C5D8];
  v45 = [*&v107 attributedText];
  v100 = v35;
  if (v45)
  {
    v46 = v45;
    v94[0] = v29;
    v94[1] = v43;
    v95 = v9;
    v96 = a1;
    v47 = [v3 traitCollection];
    v9 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v46];
    v98 = COERCE_DOUBLE([v46 length]);
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = v47;
    *(v48 + 32) = v9;
    *(v48 + 40) = 1;
    a1 = swift_allocObject();
    *(a1 + 2) = sub_1000275EC;
    *(a1 + 3) = v48;
    v112 = sub_1000ACB04;
    v113 = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026610;
    v111 = &unk_10088B500;
    v49 = _Block_copy(aBlock);
    v29 = v113;
    v50 = v47;
    v108 = COERCE_DOUBLE(v9);

    [v46 enumerateAttributesInRange:0 options:*&v98 usingBlock:{0x100000, v49}];

    _Block_release(v49);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_28;
    }

    a1 = v96;
    v9 = v95;
    v29 = v94[0];
  }

  else
  {
    v108 = 0.0;
  }

  v98 = v42;
  if (qword_100940F60 != -1)
  {
    swift_once();
  }

  v52 = sub_10076D3DC();
  v53 = sub_10000A61C(v52, qword_1009A1C18);
  v54 = *(v52 - 8);
  (*(v54 + 16))(v8, v53, v52);
  (*(v54 + 56))(v8, 0, 1, v52);
  v55 = sub_10076C04C();
  v111 = v55;
  v112 = sub_10004C7BC();
  v56 = sub_10000DB7C(aBlock);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  sub_10076C90C();
  sub_10000CD74(aBlock);
  sub_10076990C();
  v17 = v57;
  v35 = v58;
  sub_10000CFBC(v8, &unk_100943250, &unk_1007841D0);
  v59 = v39;
  v60 = v34;
  v61 = v38;
  v62 = v27;
  if (v101)
  {
    MaxX = CGRectGetMaxX(*&v59);
    v64 = v34;
    v34 = MaxX - v17;
  }

  else
  {
    v65 = CGRectGetMinX(*&v59);
    v64 = v34;
    v34 = v65;
  }

  v8 = *&v107;
  isEscapingClosureAtFileLocation = v99;
  v66 = v39;
  v67 = v38;
  v68 = v27;
  MinY = CGRectGetMinY(*(&v64 - 1));
  if (qword_10093F990 != -1)
  {
    swift_once();
  }

  sub_10000A61C(isEscapingClosureAtFileLocation, qword_10099D738);
  sub_10076D42C();
  v27 = MinY + v70;
  v50 = &selRef_initWithTabBarSystemItem_tag_;
  [v8 setFrame:{v34, v27, v17, v35}];
  v71 = 0.0;
  v118.origin.y = 0.0;
  v118.origin.x = MinX;
  v39 = v100;
  v118.size.width = v100;
  v38 = v102;
  v118.size.height = v102;
  if (CGRectIsEmpty(v118))
  {
    goto LABEL_29;
  }

  if (qword_10093F9A0 != -1)
  {
    goto LABEL_34;
  }

LABEL_28:
  sub_10000A61C(isEscapingClosureAtFileLocation, qword_10099D768);
  sub_10076D17C();
  sub_10076D40C();
  v73 = v72;
  v97(v13, v9);
  v119.origin.x = v34;
  v119.origin.y = v27;
  v119.size.width = v17;
  v119.size.height = v35;
  v74 = CGRectGetMinY(v119);
  [v8 firstBaselineFromTop];
  v76 = v74 + v75;
  [v29 firstBaselineFromTop];
  v71 = v73 + v76 - v77;
LABEL_29:
  v78 = MinX;
  [v29 v50[217]];
  v120.origin.x = v78;
  v120.origin.y = v71;
  v120.size.width = v39;
  v120.size.height = v38;
  MaxY = CGRectGetMaxY(v120);
  [v29 lastBaselineFromBottom];
  v81 = MaxY - v80;
  v121.origin.x = v34;
  v121.origin.y = v27;
  v121.size.width = v17;
  v121.size.height = v35;
  v82 = CGRectGetMaxY(v121);
  [v8 lastBaselineFromBottom];
  v84 = v82 - v83;
  if (v81 > v84)
  {
    v84 = v81;
  }

  v85 = v98 + v84;
  v87 = v104;
  v86 = v105;
  v122.origin.x = v105;
  v122.origin.y = v104;
  v88 = v103;
  v122.size.width = v103;
  v89 = v106;
  v122.size.height = v106;
  v90 = CGRectGetMinX(v122);
  v123.origin.x = v86;
  v123.origin.y = v87;
  v123.size.width = v88;
  v123.size.height = v89;
  v91 = CGRectGetMaxY(v123) - v85;
  v124.origin.x = v86;
  v124.origin.y = v87;
  v124.size.width = v88;
  v124.size.height = v89;
  v125.size.width = CGRectGetWidth(v124);
  v125.origin.x = v90;
  v125.origin.y = v91;
  v125.size.height = v85;
  v126 = CGRectIntegral(v125);
  v92 = *&v3[qword_10094C5C8];
  [v92 v50[217]];
  [v92 frame];
  Height = CGRectGetHeight(v127);

  a1[3] = v89 - Height;
}

id sub_1001BD350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FramedMediaCollectionViewCell(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1001BD444()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_1001BD49C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1001BD4B4()
{
  v1 = qword_10094C5C0;
  sub_10076394C();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = qword_10099D788;
  v3 = sub_10076341C();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + qword_10099D790) = 0;
  *(v0 + qword_10099D798) = 0;
  v4 = (v0 + qword_10099D7A0);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  *(v0 + qword_10099D7A8) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1001BD5D4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, uint64_t a7@<D1>, double a8@<D6>, double a9@<D7>, char *a10, char *a11)
{
  v128 = a4;
  v139 = a2;
  v140 = a3;
  v141 = a1;
  v133 = a5;
  v124 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v121 = &v111 - v17;
  v120 = sub_10076D39C();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_10076B6EC();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v114 = &v111 - v21;
  v126 = sub_10076EA6C();
  v127 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v23 - 8);
  v131 = &v111 - v24;
  v135 = sub_10076B5BC();
  v25 = *(v135 - 8);
  __chkstk_darwin(v135);
  v136 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v111 - v28;
  __chkstk_darwin(v30);
  v32 = &v111 - v31;
  v33 = sub_10076C36C();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v113 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v111 = &v111 - v37;
  __chkstk_darwin(v38);
  v112 = &v111 - v39;
  __chkstk_darwin(v40);
  v132 = &v111 - v41;
  __chkstk_darwin(v42);
  v44 = &v111 - v43;
  v45 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  v46 = v45 - 8;
  __chkstk_darwin(v45);
  v48 = &v111 - v47;
  sub_100016E2C(v139, &v111 - v47, &qword_1009499A0, &qword_1007848B0);
  v49 = *(v46 + 56);
  v134 = v48;
  v50 = &v48[v49];
  v51 = v34;
  sub_100016E2C(v140, v50, &qword_1009499A0, &qword_1007848B0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720, &qword_100784820);
  sub_10076F49C();

  v52 = *(v34 + 104);
  v53 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v144)
  {
    v53 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v54 = *v53;
  v137 = v33;
  v138 = v44;
  v55 = v44;
  v56 = v135;
  v52(v55, v54, v33);
  swift_getKeyPath();
  sub_10076F49C();

  (*(v25 + 104))(v29, enum case for Shelf.ContentType.placeholder(_:), v56);
  sub_1001C01E4(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v139 = v32;
  sub_10077018C();
  sub_10077018C();
  if (v144 == v142 && v145 == v143)
  {
    v57 = 1;
  }

  else
  {
    v57 = sub_10077167C();
  }

  v140 = *(v25 + 8);
  v140(v29, v56);

  v58 = v139;
  if (v57)
  {
    swift_getKeyPath();
    v59 = v131;
    sub_10076F49C();

    if ((*(v25 + 48))(v59, 1, v56) == 1)
    {
      sub_10000CFBC(v59, &unk_1009568A0, &qword_100784890);
    }

    else
    {
      v140(v58, v56);
      (*(v25 + 32))(v58, v59, v56);
    }
  }

  v60 = a11;
  v61 = v136;
  (*(v25 + 16))(v136, v58, v56);
  v62 = (*(v25 + 88))(v61, v56);
  if (v62 == enum case for Shelf.ContentType.smallLockup(_:) || v62 == enum case for Shelf.ContentType.purchasesLockup(_:) || v62 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_15:
    v63 = v125;
    sub_10076202C();
    v64 = sub_10076EA4C();
    (*(v127 + 8))(v63, v126);
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_10051E830(v64 & 1);
LABEL_41:
    sub_10076C33C();
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v65;
    v77 = v66;
    goto LABEL_42;
  }

  if (v62 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_17:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_100941288 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v62 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithAlignedRegionBackground(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v62 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:) || v62 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.ribbonBar(_:) || v62 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v71 = v121;
    sub_10076C28C();
    v72 = v122;
    sub_10076C28C();
    v68 = v137;
    v73 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_1004C8060(v71, v72);
    sub_10076C33C();
    v74 = *(*&v123 + 8);
    v75 = v72;
    v76 = v124;
    v74(v75, v124);
    v74(v71, v76);
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v73;
    goto LABEL_32;
  }

  if (v62 == enum case for Shelf.ContentType.paragraph(_:) || v62 == enum case for Shelf.ContentType.annotation(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.footnote(_:))
  {
LABEL_30:
    v68 = v137;
    v67 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_1005AC334(0.0);
    sub_10076C33C();
    v140(v58, v56);
    v69 = *(v34 + 8);
    v70 = v67;
LABEL_32:
    v77 = v68;
LABEL_42:
    v69(v70, v77);
    return sub_10000CFBC(v134, &qword_100942C40, &unk_100786C80);
  }

  if (v62 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    if (sub_10076205C())
    {
      v78 = v118;
      sub_10076D3AC();
      v79 = sub_10076D2EC();
      (*(v119 + 8))(v78, v120);
      if (v79)
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_100941290 == -1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_100941298 == -1)
        {
LABEL_50:

          (*(v51 + 16))(v82, v80, v81);
          sub_10076C33C();
          v140(v58, v56);
          (*(v51 + 8))(v80, v81);
          return sub_10000CFBC(v134, &qword_100942C40, &unk_100786C80);
        }
      }
    }

    else
    {
      v81 = v137;
      v80 = v138;
      v82 = v132;
      if (qword_10093FCE8 == -1)
      {
        goto LABEL_50;
      }
    }

    swift_once();
    goto LABEL_50;
  }

  if (v62 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.brick(_:))
  {
LABEL_47:
    v131 = v60;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_100940580 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
LABEL_52:
    swift_getKeyPath();
    v84 = v114;
    sub_10076F49C();

    v85 = v115;
    sub_10076B68C();
    sub_1001C01E4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v86 = v117;
    v87 = sub_10077124C();
    v88 = *(v116 + 8);
    v88(v85, v86);
    v88(v84, v86);
    v89 = v125;
    sub_10076202C();
    LOBYTE(v88) = sub_10076EA4C();
    (*(v127 + 8))(v89, v126);
    v91 = v137;
    v90 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_1006EE15C(v88 & 1, v87 & 1);
    sub_10076C33C();
    v140(v58, v56);
    (*(v51 + 8))(v90, v91);
    return sub_10000CFBC(v134, &qword_100942C40, &unk_100786C80);
  }

  if (v62 == enum case for Shelf.ContentType.productCapability(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.reviews(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    goto LABEL_17;
  }

  v131 = a11;
  v121 = a10;
  v122 = (v25 + 8);
  v123 = a6;
  v124 = a7;
  v129 = a8;
  v130 = a9;
  v92 = v56;
  v93 = v137;
  v94 = v34;
  if (v62 == enum case for Shelf.ContentType.reviewSummary(_:) || v62 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v95 = 0.0;
    if (sub_10076205C())
    {
      v96 = v125;
      sub_10076202C();
      v97 = sub_10076EA4C();
      (*(v127 + 8))(v96, v126);
      if (v97)
      {
        v95 = 0.0;
      }

      else
      {
        v95 = 190.0;
      }
    }

    v98 = v138;
    (*(v34 + 16))(v113, v138, v93);
    sub_1005AC334(v95);
    goto LABEL_68;
  }

  if (v62 == enum case for Shelf.ContentType.todayCard(_:))
  {
    (*(v34 + 16))(v132, v138, v137);
    if (qword_100940280 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.miniTodayCard(_:))
  {
    (*(v34 + 16))(v112, v138, v137);
    if (sub_10076206C())
    {
      if (qword_10093FE70 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_10093FE68 == -1)
    {
LABEL_83:

      sub_10076C33C();
      v140(v139, v56);
      (*(v34 + 8))(v138, v93);
      return sub_10000CFBC(v134, &qword_100942C40, &unk_100786C80);
    }

LABEL_109:
    swift_once();
    goto LABEL_83;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.framedArtwork(_:) || v62 == enum case for Shelf.ContentType.screenshots(_:) || v62 == enum case for Shelf.ContentType.productMedia(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v62 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v99 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_1005AC334(0.0);
    sub_10076C33C();
    v140(v139, v56);
    (*(v51 + 8))(v99, v93);
    return sub_10000CFBC(v134, &qword_100942C40, &unk_100786C80);
  }

  if (v62 == enum case for Shelf.ContentType.productReview(_:))
  {
    v100 = v125;
    sub_10076202C();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10052C890(v100, 0);
LABEL_91:
    sub_10076C33C();
    (*(v127 + 8))(v100, v126);
    goto LABEL_69;
  }

  if (v62 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v100 = v125;
    sub_10076202C();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_1006DC140(v100);
    goto LABEL_91;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  v60 = v131;
  if (v62 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v62 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    goto LABEL_47;
  }

  if (v62 == enum case for Shelf.ContentType.largeStoryCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v62 == enum case for Shelf.ContentType.upsellBreakout(_:) || v62 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v62 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    swift_getKeyPath();
    sub_10076F49C();

    v101 = *(v144 + 16);

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_100465B90(v101);
LABEL_108:
    sub_10076C33C();
    v140(v139, v92);
    (*(v102 + 8))(v103, v93);
    return sub_10000CFBC(v134, &qword_100942C40, &unk_100786C80);
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.privacyType(_:))
  {
LABEL_113:
    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v137);
    v104 = v125;
    sub_10076202C();
    sub_10050ADC8(v104);
    (*(v127 + 8))(v104, v126);
    goto LABEL_108;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_39:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_10093FCE8 == -1)
    {
LABEL_40:

      goto LABEL_41;
    }

LABEL_85:
    swift_once();
    goto LABEL_40;
  }

  if (v62 == enum case for Shelf.ContentType.searchResult(_:))
  {
    v105 = sub_10076204C();
    (*(v34 + 16))(v111, v138, v93);
    if (v105)
    {
      if (qword_100940548 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_100940540 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v98 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_1004F22B0();
LABEL_68:
    sub_10076C33C();
LABEL_69:
    v140(v139, v92);
    (*(v34 + 8))(v98, v93);
    return sub_10000CFBC(v134, &qword_100942C40, &unk_100786C80);
  }

  if (v62 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v106 = v125;
    sub_10076202C();
    v107 = sub_10076EA4C();
    (*(v127 + 8))(v106, v126);
    if (v107)
    {
      if (sub_10076204C())
      {
        v108 = 1;
      }

      else
      {
        v108 = 2;
      }
    }

    else
    {
      v108 = 2;
    }

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10003F1A0(v108);
    goto LABEL_108;
  }

  v51 = v34;
  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.heroCarousel(_:) || v62 == enum case for Shelf.ContentType.uber(_:) || v62 == enum case for Shelf.ContentType.mediaPageHeader(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.tagBrick(_:))
  {
    goto LABEL_52;
  }

  if (v62 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
  {
    goto LABEL_113;
  }

  v109 = v138;
  (*(v94 + 16))(v132, v138, v137);
  sub_1005AC334(0.0);
  sub_10076C33C();
  v110 = v140;
  v140(v139, v56);
  (*(v94 + 8))(v109, v93);
  sub_10000CFBC(v134, &qword_100942C40, &unk_100786C80);
  return (v110)(v136, v56);
}

uint64_t sub_1001BFA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a11@<D4>, double a12@<D5>, double a15, double a16)
{
  v39 = a5;
  v42 = a4;
  v43 = a2;
  v45 = a3;
  v46 = a6;
  v40 = a11;
  v41 = a12;
  v44 = sub_10076B5BC();
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076C36C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v38 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v37 - v23;
  v25 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  __chkstk_darwin(v25);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v37 - v29;
  sub_100016E2C(v43, &v37 - v29, &qword_1009499A0, &qword_1007848B0);
  v37 = v25;
  sub_100016E2C(v45, &v30[*(v25 + 48)], &qword_1009499A0, &qword_1007848B0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720, &qword_100784820);
  sub_10076F49C();

  v45 = v20;
  v31 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v49)
  {
    v31 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v20 + 104))(v24, *v31, v19);
  swift_getKeyPath();
  v32 = v44;
  v43 = a1;
  sub_10076F49C();

  v33 = (*(v47 + 88))(v18, v32);
  if (v33 == enum case for Shelf.ContentType.reviews(_:) || v33 == enum case for Shelf.ContentType.reviewsContainer(_:) || v33 == enum case for Shelf.ContentType.todayCard(_:) || v33 == enum case for Shelf.ContentType.framedArtwork(_:) || v33 == enum case for Shelf.ContentType.productMedia(_:) || v33 == enum case for Shelf.ContentType.framedVideo(_:) || v33 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v33 == enum case for Shelf.ContentType.upsellBreakout(_:) || v33 == enum case for Shelf.ContentType.smallBreakout(_:) || v33 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    v36 = v45;
    (*(v45 + 16))(v38, v24, v19);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (*(v36 + 8))(v24, v19);
    return sub_10000CFBC(v30, &qword_100942C40, &unk_100786C80);
  }

  else
  {
    v48 = v39;
    sub_100016E2C(v30, v27, &qword_100942C40, &unk_100786C80);
    v34 = *(v37 + 48);
    sub_100061E6C();
    sub_1007620BC();
    (*(v45 + 8))(v24, v19);
    sub_10000CFBC(v30, &qword_100942C40, &unk_100786C80);
    sub_10000CFBC(&v27[v34], &qword_1009499A0, &qword_1007848B0);
    sub_10000CFBC(v27, &qword_1009499A0, &qword_1007848B0);
    return (*(v47 + 8))(v18, v32);
  }
}

uint64_t sub_1001BFFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_100061E6C();

  return sub_1007620BC();
}

uint64_t sub_1001C00D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_100061E6C();

  return sub_1007620AC();
}

uint64_t sub_1001C01E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1001C0234()
{
  swift_getObjectType();
  *&v0[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension12GradientView_kind] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for GradientView();
  v1 = objc_msgSendSuper2(&v4, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001C05B8();
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100783DD0;
  *(v2 + 32) = sub_10076E4CC();
  *(v2 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v1;
}

void sub_1001C0414(uint64_t a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  if (a1)
  {
    v5 = v4;
    v6 = *(a1 + 16);
    if (v6)
    {
      v10 = _swiftEmptyArrayStorage;
      sub_1007714EC();
      v7 = 32;
      do
      {
        [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + v7)];
        sub_1007714CC();
        sub_1007714FC();
        sub_10077150C();
        sub_1007714DC();
        v7 += 8;
        --v6;
      }

      while (v6);
    }

    sub_100016F40(0, &qword_1009492D0, NSNumber_ptr);
    isa = sub_1007701AC().super.isa;

    [v5 setLocations:{isa, isa, v10}];
  }

  else
  {
    [v4 setLocations:{0, 0, v10}];
  }
}

char *sub_1001C05B8()
{
  v1 = v0;
  v2 = [v0 layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  isa = *&v0[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors];
  if (!isa)
  {
    goto LABEL_15;
  }

  v15 = v3;
  if (isa >> 62)
  {
    v5 = sub_10077158C();
  }

  else
  {
    v5 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
LABEL_14:
    isa = sub_1007701AC().super.isa;

    v3 = v15;
LABEL_15:
    [v3 setColors:{isa, v15, v16}];

    return [v1 setNeedsDisplay];
  }

  v18 = _swiftEmptyArrayStorage;

  result = sub_1004BB874(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v18;
    do
    {
      if ((isa & 0xC000000000000001) != 0)
      {
        v9 = sub_10077149C();
      }

      else
      {
        v9 = *(isa + v7 + 4);
      }

      v10 = v9;
      v11 = [v9 CGColor];
      type metadata accessor for CGColor(0);
      v17 = v12;

      *&v16 = v11;
      v18 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_1004BB874((v13 > 1), v14 + 1, 1);
        v8 = v18;
      }

      ++v7;
      v8[2] = v14 + 1;
      sub_10000CD64(&v16, &v8[4 * v14 + 4]);
    }

    while (v5 != v7);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1001C07E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GradientView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001C0864()
{
  result = qword_10094C6A0;
  if (!qword_10094C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C6A0);
  }

  return result;
}

void AppPromotionDetailPageContentLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t AppPromotionFormattedDateLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 40));

  return sub_100012498(a1, v1 + 40);
}

uint64_t AppPromotionFormattedDateLayout.Metrics.liveIndicatorTrailingMargin.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 80));

  return sub_100012498(a1, v1 + 80);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.kindLabelBottomSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 160));

  return sub_100012498(a1, v1 + 160);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.titleLabelTopSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 200));

  return sub_100012498(a1, v1 + 200);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 240));

  return sub_100012498(a1, v1 + 240);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.detailLabelTopSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 280));

  return sub_100012498(a1, v1 + 280);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.learnMoreButtonTopSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 320));

  return sub_100012498(a1, v1 + 320);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.learnMoreButtonBottomSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 360));

  return sub_100012498(a1, v1 + 360);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelTopSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 400));

  return sub_100012498(a1, v1 + 400);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelBottomSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 440));

  return sub_100012498(a1, v1 + 440);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.separatorViewBottomSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 480));

  return sub_100012498(a1, v1 + 480);
}

uint64_t sub_1001C0F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094B230, &qword_100791150);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 AppPromotionDetailPageContentLayout.init(metrics:primaryContentContainer:secondaryContentContainer:availabilityLabelView:kindLabel:titleLabel:subtitleView:learnMoreButton:detailLabel:inlineLearnMoreLabel:separatorView:lockupView:showInlineLearnMore:includeSubtitle:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  *(a9 + 848) = 0u;
  *(a9 + 864) = 0u;
  *(a9 + 816) = 0u;
  *(a9 + 832) = 0u;
  *(a9 + 800) = 0u;
  memcpy(a9, __src, 0x208uLL);
  sub_100012498(a2, a9 + 520);
  sub_100012498(a3, a9 + 560);
  sub_100012498(a4, a9 + 600);
  sub_100012498(a5, a9 + 640);
  sub_100012498(a6, a9 + 680);
  sub_100012498(a7, a9 + 720);
  sub_1001C0F9C(a8, a9 + 840);
  sub_100012498(a10, a9 + 760);
  sub_1001C0F9C(a11, a9 + 800);
  v22 = *(a12 + 16);
  *(a9 + 880) = *a12;
  *(a9 + 896) = v22;
  *(a9 + 912) = *(a12 + 32);
  result = *a13;
  v24 = *(a13 + 16);
  *(a9 + 920) = *a13;
  *(a9 + 936) = v24;
  *(a9 + 952) = *(a13 + 32);
  *(a9 + 960) = a14;
  *(a9 + 961) = a15;
  return result;
}

CGFloat AppPromotionDetailPageContentLayout.measure(toFit:with:)(void *a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v7 = a1;
  if (sub_1007706EC())
  {
    v8 = sub_10077071C();

    if (v8)
    {
      sub_1001C3264(v7, *(v4 + 960), v11);
      sub_10000CF78(v11, v12);
      sub_10076E0FC();
      sub_10000CD74(v11);
      return a2;
    }
  }

  else
  {
  }

  if (sub_1007706EC())
  {
    sub_1001C1348(v7, v11, 0.0, 0.0, a2, a3);
  }

  else
  {
    sub_1001C1D50(v7, v11, 0.0, 0.0, a2, a3);
  }

  sub_10000CF78(v11, v12);
  sub_10076E0FC();
  a2 = v9;
  sub_10000CD74(v11);
  return a2;
}

uint64_t sub_1001C1348@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v90 = a2;
  v91 = sub_10076D58C();
  v87 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v76 - v15;
  __chkstk_darwin(v16);
  v89 = &v76 - v17;
  v94 = sub_10076E04C();
  v88 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076D65C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  __chkstk_darwin(v26);
  v28 = &v76 - v27;
  __chkstk_darwin(v29);
  v80 = &v76 - v30;
  __chkstk_darwin(v31);
  v81 = &v76 - v32;
  __chkstk_darwin(v33);
  v83 = &v76 - v34;
  __chkstk_darwin(v35);
  v84 = &v76 - v36;
  __chkstk_darwin(v37);
  v95 = &v76 - v38;
  sub_10076D63C();
  sub_1001C4C14(v7, v101);
  v39 = swift_allocObject();
  memcpy((v39 + 16), v101, 0x3C2uLL);
  *(v39 + 984) = a1;
  v40 = a1;
  sub_10076D64C();
  v41 = v19;

  v43 = v20 + 8;
  v42 = *(v20 + 8);
  v42(v22, v41);
  sub_10000A570(v7 + 680, v101);
  sub_10011E080(v101, &v96);
  v82 = v20;
  if (v97)
  {
    sub_100012498(&v96, &v98);
    sub_10076D64C();
    sub_10000CD74(&v98);
    sub_10017FE2C(v101);
    v42(v25, v41);
  }

  else
  {
    sub_10017FE2C(v101);
    sub_10017FE2C(&v96);
    (*(v20 + 32))(v28, v25, v41);
  }

  sub_1001C4C14(v7, v101);
  v44 = swift_allocObject();
  memcpy((v44 + 16), v101, 0x3C2uLL);
  *(v44 + 984) = v40;
  v45 = v40;
  v46 = v80;
  sub_10076D64C();

  v42(v28, v41);
  sub_1001C4C14(v7, v101);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v101, 0x3C2uLL);
  *(v47 + 984) = v45;
  v48 = v45;
  v49 = v81;
  sub_10076D64C();

  v42(v46, v41);
  sub_1001C4C14(v7, v101);
  v50 = swift_allocObject();
  memcpy((v50 + 16), v101, 0x3C2uLL);
  *(v50 + 984) = v48;
  sub_10011E080(v7 + 840, &v96);
  v51 = v42;
  v79 = v48;
  if (v97)
  {
    sub_100012498(&v96, &v98);
    v52 = v48;
    v53 = v83;
    sub_10076D64C();

    sub_10000CD74(&v98);
    v42(v49, v41);
    v54 = v82;
  }

  else
  {
    v55 = v48;

    sub_10017FE2C(&v96);
    v54 = v82;
    v53 = v83;
    (*(v82 + 32))(v83, v49, v41);
  }

  sub_10011E080(v7 + 880, &v98);
  v56 = v84;
  if (v99)
  {
    sub_100012498(&v98, v101);
    sub_10076D64C();
    sub_10000CD74(v101);
    v51(v53, v41);
  }

  else
  {
    sub_10017FE2C(&v98);
    (*(v54 + 32))(v56, v53, v41);
  }

  v57 = v95;
  sub_10011E080(v7 + 920, &v98);
  v77 = v51;
  v78 = v43;
  v92 = v41;
  if (v99)
  {
    sub_100012498(&v98, v101);
    sub_10076D64C();
    sub_10000CD74(v101);
    v51(v56, v41);
  }

  else
  {
    sub_10017FE2C(&v98);
    (*(v54 + 32))(v57, v56, v41);
  }

  v58 = v54;
  sub_10000CF78((v7 + 80), *(v7 + 104));
  sub_10076D41C();
  sub_10000A570(v7 + 600, v101);
  v59 = v93;
  sub_10076E03C();
  v60 = v85;
  sub_10076D55C();
  v61 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  v62 = sub_10000DB7C(v101);
  v63 = v88;
  (*(v88 + 16))(v62, v59, v61);
  v64 = v86;
  sub_10076D57C();
  v65 = v87;
  v66 = *(v87 + 8);
  v67 = v91;
  v66(v60, v91);
  sub_10000CD74(v101);
  v68 = v92;
  v101[3] = v92;
  v101[4] = &protocol witness table for VerticalStack;
  v69 = sub_10000DB7C(v101);
  (*(v58 + 16))(v69, v95, v68);
  v70 = v89;
  sub_10076D57C();
  v66(v64, v67);
  sub_10000CD74(v101);
  v99 = v67;
  v100 = &protocol witness table for DisjointStack;
  v71 = sub_10000DB7C(&v98);
  (*(v65 + 16))(v71, v70, v67);
  v72 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  sub_10000DB7C(v101);
  sub_10076E03C();
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetWidth(v102);
  v73 = sub_10076DFFC();
  v74 = v90;
  v90[3] = v73;
  v74[4] = &protocol witness table for Resize;
  sub_10000DB7C(v74);
  sub_10076DFDC();
  v66(v70, v67);
  (*(v63 + 8))(v93, v72);
  return v77(v95, v92);
}

uint64_t sub_1001C1D50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v134 = a2;
  v13 = sub_10076DFEC();
  v113 = *(v13 - 8);
  v114 = v13;
  __chkstk_darwin(v13);
  v116 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v110 - v16;
  __chkstk_darwin(v17);
  v112 = &v110 - v18;
  __chkstk_darwin(v19);
  v111 = (&v110 - v20);
  v21 = sub_10076E01C();
  v130 = *(v21 - 8);
  v131 = v21;
  __chkstk_darwin(v21);
  v129 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_10076E04C();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v127 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10076DF4C();
  v122 = *(v24 - 8);
  v123 = v24;
  __chkstk_darwin(v24);
  v124 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_10076DF5C();
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v138 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10076D65C();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v120 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v121 = &v110 - v31;
  __chkstk_darwin(v32);
  v139 = &v110 - v33;
  __chkstk_darwin(v34);
  v141 = &v110 - v35;
  __chkstk_darwin(v36);
  v38 = &v110 - v37;
  __chkstk_darwin(v39);
  v136 = (&v110 - v40);
  __chkstk_darwin(v41);
  v117 = &v110 - v42;
  __chkstk_darwin(v43);
  v137 = &v110 - v44;
  __chkstk_darwin(v45);
  v118 = &v110 - v46;
  __chkstk_darwin(v47);
  v119 = &v110 - v48;
  __chkstk_darwin(v49);
  v140 = &v110 - v50;
  sub_10076D63C();
  sub_1001C4C14(v6, v147);
  v51 = swift_allocObject();
  memcpy((v51 + 16), v147, 0x3C2uLL);
  *(v51 + 984) = a1;
  v52 = a1;
  sub_10076D64C();

  v53 = v28;
  v56 = v28[1];
  v54 = (v28 + 1);
  v55 = v56;
  (v56)(v38, v27);
  sub_1001C4C14(v6, v147);
  v57 = swift_allocObject();
  memcpy((v57 + 16), v147, 0x3C2uLL);
  *(v57 + 984) = v52;
  v58 = v52;
  v59 = v117;
  v60 = v58;
  v61 = v136;
  sub_10076D64C();
  v62 = v27;

  (v56)(v61, v27);
  sub_10000A570((v7 + 85), v147);
  sub_10011E080(v147, &v142);
  v136 = v53;
  if (v143)
  {
    sub_100012498(&v142, &v144);
    sub_10076D64C();
    sub_10000CD74(&v144);
    sub_10017FE2C(v147);
    (v55)(v59, v27);
  }

  else
  {
    sub_10017FE2C(v147);
    sub_10017FE2C(&v142);
    v53[4](v137, v59, v27);
  }

  sub_1001C4C14(v7, v147);
  v63 = swift_allocObject();
  memcpy((v63 + 16), v147, 0x3C2uLL);
  *(v63 + 984) = v60;
  v64 = v60;
  v65 = v118;
  v66 = v137;
  sub_10076D64C();

  (v55)(v66, v27);
  sub_1001C4C14(v7, v147);
  v67 = swift_allocObject();
  memcpy((v67 + 16), v147, 0x3C2uLL);
  *(v67 + 984) = v64;
  v68 = v64;
  v69 = v119;
  sub_10076D64C();

  (v55)(v65, v62);
  sub_1001C4C14(v7, v147);
  v70 = swift_allocObject();
  memcpy((v70 + 16), v147, 0x3C2uLL);
  *(v70 + 984) = v68;
  sub_10011E080((v7 + 105), &v142);
  v137 = v68;
  if (v143)
  {
    sub_100012498(&v142, &v144);
    v71 = v68;
    v72 = v140;
    sub_10076D64C();
    v73 = v72;

    sub_10000CD74(&v144);
    (v55)(v69, v62);
    v74 = v141;
    v75 = v136;
  }

  else
  {
    v76 = v68;

    sub_10017FE2C(&v142);
    v75 = v136;
    v73 = v140;
    v136[4](v140, v69, v62);
    v74 = v141;
  }

  v77 = v75[2];
  v77(v74, v73, v62);
  sub_1001C4C14(v7, v147);
  v78 = swift_allocObject();
  memcpy((v78 + 16), v147, 0x3C2uLL);
  sub_10011E080((v7 + 110), &v142);
  if (v143)
  {
    sub_100012498(&v142, &v144);
    sub_10076D5FC();

    sub_10000CD74(&v144);
  }

  else
  {

    sub_10017FE2C(&v142);
  }

  sub_10011E080((v7 + 115), &v144);
  v79 = v121;
  v80 = v77;
  if (v145)
  {
    sub_100012498(&v144, v147);
    sub_10076D5FC();
    sub_10000CD74(v147);
  }

  else
  {
    sub_10017FE2C(&v144);
  }

  v81 = v120;
  sub_10076D63C();
  sub_10011E080((v7 + 110), &v144);
  if (v145)
  {
    sub_100012498(&v144, v147);
    sub_10076D64C();
    sub_10000CD74(v147);
    (v55)(v81, v62);
  }

  else
  {
    sub_10017FE2C(&v144);
    v136[4](v79, v81, v62);
  }

  v82 = v139;
  sub_10011E080((v7 + 115), &v144);
  v125 = v55;
  v126 = v54;
  if (v145)
  {
    sub_100012498(&v144, v147);
    sub_10076D64C();
    v82 = v139;
    sub_10000CD74(v147);
    (v55)(v79, v62);
  }

  else
  {
    sub_10017FE2C(&v144);
    v136[4](v82, v79, v62);
  }

  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v83 = sub_10000DB7C(v147);
  v77(v83, v82, v62);
  (*(v122 + 104))(v124, enum case for Pin.Edge.bottomEdge(_:), v123);
  v145 = v62;
  v146 = &protocol witness table for VerticalStack;
  v84 = sub_10000DB7C(&v144);
  v77(v84, v140, v62);
  sub_10076DF6C();
  v148.origin.x = a3;
  v148.origin.y = a4;
  v148.size.width = a5;
  v148.size.height = a6;
  CGRectGetWidth(v148);
  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v85 = sub_10000DB7C(v147);
  v86 = v141;
  v80(v85, v141, v62);
  v87 = v127;
  sub_10076E03C();
  sub_10076DDEC();
  sub_1001C5088(&qword_10094C6B8, &type metadata accessor for Margins, &protocol conformance descriptor for Margins);
  v88 = v129;
  v137 = v80;
  v89 = v132;
  sub_10076D91C();
  sub_1001C5088(&qword_10094C6C0, &type metadata accessor for Margins.Placements, &protocol conformance descriptor for Margins.Placements);
  v90 = v131;
  sub_10076DAFC();
  v92 = v91;
  (*(v130 + 8))(v88, v90);
  (*(v128 + 8))(v87, v89);
  v93 = floor(v92);
  v94 = *v7;
  if (*v7 >= v93)
  {
    v99 = v135;
    v145 = v135;
    v146 = &protocol witness table for Pin;
    v100 = sub_10000DB7C(&v144);
    v101 = v133;
    (*(v133 + 16))(v100, v138, v99);
    v147[3] = v89;
    v147[4] = &protocol witness table for Margins;
    sub_10000DB7C(v147);
    sub_10076E03C();
    v137 = v62;
    v102 = v111;
    *(v111 + 3) = &type metadata for CGFloat;
    *(v102 + 4) = &protocol witness table for CGFloat;
    *v102 = v94;
    v103 = v114;
    v104 = *(v113 + 104);
    v104(v102, enum case for Resize.Rule.replaced(_:), v114);
    v105 = enum case for Resize.Rule.unchanged(_:);
    v104(v112, enum case for Resize.Rule.unchanged(_:), v103);
    v104(v115, v105, v103);
    v104(v116, v105, v103);
    v106 = sub_10076DFFC();
    v107 = v134;
    v134[3] = v106;
    v107[4] = &protocol witness table for Resize;
    sub_10000DB7C(v107);
    sub_10076E00C();
    (*(v101 + 8))(v138, v135);
    v108 = v137;
    v109 = v125;
    (v125)(v139, v137);
    (v109)(v141, v108);
    return (v109)(v140, v108);
  }

  else
  {
    v147[3] = v62;
    v147[4] = &protocol witness table for VerticalStack;
    v95 = sub_10000DB7C(v147);
    (v137)(v95, v86, v62);
    v96 = v134;
    v134[3] = v89;
    v96[4] = &protocol witness table for Margins;
    sub_10000DB7C(v96);
    sub_10076E03C();
    (*(v133 + 8))(v138, v135);
    v97 = v125;
    (v125)(v139, v62);
    (v97)(v86, v62);
    return (v97)(v140, v62);
  }
}

uint64_t AppPromotionDetailPageContentLayout.place(at:with:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = a1;
  if (sub_1007706EC())
  {
    v12 = sub_10077071C();

    if (v12)
    {

      return sub_1001C2EF8(v11, a2, a3, a4, a5);
    }
  }

  else
  {
  }

  v14 = sub_1007706EC();
  sub_10000CF78((v6 + 520), *(v6 + 544));
  sub_10076E0EC();
  if (v14)
  {
    sub_1001C1348(v11, v15, a2, a3, a4, a5);
  }

  else
  {
    sub_1001C1D50(v11, v15, a2, a3, a4, a5);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    CGRectGetMinX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGRectGetMinY(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGRectGetWidth(v19);
  }

  sub_10000CF78(v15, v15[3]);
  sub_10076E0EC();
  return sub_10000CD74(v15);
}

uint64_t sub_1001C2EF8(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinX = CGRectGetMinX(*&a2);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Width = CGRectGetWidth(v21);
  v14 = *v5;
  sub_10000CF78((v5 + 520), *(v5 + 544));
  sub_10076E0EC();
  sub_1001C3ABC(a1, v19);
  sub_10000CF78(v19, v19[3]);
  sub_10076E0EC();
  v22.origin.x = MinX;
  v22.origin.y = MinY;
  v22.size.width = Width;
  v22.size.height = v14;
  CGRectGetMaxY(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetWidth(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  v25.origin.x = MinX;
  v25.origin.y = MinY;
  v25.size.width = Width;
  v25.size.height = v14;
  CGRectGetMaxY(v25);
  v15 = *(v5 + 960);
  if ((v15 & 1) == 0)
  {
    sub_1001C3264(a1, 1, v17);
    sub_10000CF78(v17, v18);
    sub_10076E0EC();
    sub_10000CD74(v17);
  }

  sub_1001C3264(a1, v15, v17);
  sub_10000CF78((v5 + 560), *(v5 + 584));
  sub_10076E0EC();
  sub_10000CF78(v17, v18);
  sub_10076E0EC();
  sub_10000CD74(v17);
  return sub_10000CD74(v19);
}

uint64_t sub_1001C3198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000CF78((a2 + 240), *(a2 + 264));
  sub_10076D41C();
  sub_10076D5BC();
  return sub_10076D5AC();
}

uint64_t sub_1001C3264@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v59 = a2;
  v63 = a3;
  v7 = sub_10076D65C();
  v66 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v58[-v11];
  __chkstk_darwin(v13);
  v15 = &v58[-v14];
  __chkstk_darwin(v16);
  v64 = &v58[-v17];
  __chkstk_darwin(v18);
  v65 = &v58[-v19];
  __chkstk_darwin(v20);
  v60 = &v58[-v21];
  __chkstk_darwin(v22);
  v61 = &v58[-v23];
  *&v25 = __chkstk_darwin(v24).n128_u64[0];
  v27 = &v58[-v26];
  v28 = [a1 preferredContentSizeCategory];
  if (qword_10093F9B0 != -1)
  {
    swift_once();
  }

  v29 = sub_10077087C();

  sub_10076D63C();
  if (v29)
  {
    sub_10000A570(v5 + 680, v70);
  }

  else
  {
    memset(v70, 0, 40);
  }

  v62 = v27;
  sub_10011E080(v70, &v71);
  if (v72)
  {
    sub_100012498(&v71, &v73);
    sub_10076D64C();
    sub_10000CD74(&v73);
    sub_10017FE2C(v70);
    v30 = v66;
    (*(v66 + 8))(v9, v7);
  }

  else
  {
    sub_10017FE2C(v70);
    sub_10017FE2C(&v71);
    v30 = v66;
    (*(v66 + 32))(v12, v9, v7);
  }

  sub_1001C4C14(v5, v70);
  v31 = swift_allocObject();
  memcpy((v31 + 16), v70, 0x3C2uLL);
  *(v31 + 978) = v29 & 1;
  *(v31 + 984) = a1;
  v32 = a1;
  sub_10076D64C();

  v33 = *(v30 + 8);
  v33(v12, v7);
  sub_1001C4C14(v5, v70);
  v34 = swift_allocObject();
  memcpy((v34 + 16), v70, 0x3C2uLL);
  *(v34 + 984) = v32;
  v35 = v32;
  sub_10076D64C();

  v67 = v33;
  v33(v15, v7);
  v36 = v59;
  if (v59)
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
  }

  else
  {
    sub_10011E080(v5 + 840, &v73);
  }

  v38 = v60;
  v37 = v61;
  sub_1001C4C14(v5, v70);
  v39 = swift_allocObject();
  memcpy((v39 + 16), v70, 0x3C2uLL);
  *(v39 + 984) = v35;
  sub_10011E080(&v73, &v68);
  if (v69)
  {
    sub_100012498(&v68, &v71);
    v40 = v35;
    v41 = v64;
    sub_10076D64C();

    sub_10000CD74(&v71);
    sub_10017FE2C(&v73);
    v67(v41, v7);
    v42 = v66;
    if (v36)
    {
LABEL_14:
      sub_10011E080(v5 + 800, &v73);
      goto LABEL_17;
    }
  }

  else
  {
    v43 = v35;

    sub_10017FE2C(&v73);
    sub_10017FE2C(&v68);
    v42 = v66;
    (*(v66 + 32))(v65, v64, v7);
    if (v36)
    {
      goto LABEL_14;
    }
  }

  v75 = 0;
  v73 = 0u;
  v74 = 0u;
LABEL_17:
  sub_1001C4C14(v5, v70);
  v44 = swift_allocObject();
  memcpy((v44 + 16), v70, 0x3C2uLL);
  *(v44 + 984) = v35;
  sub_10011E080(&v73, &v68);
  if (v69)
  {
    sub_100012498(&v68, &v71);
    v45 = v35;
    v46 = v65;
    sub_10076D64C();

    sub_10000CD74(&v71);
    sub_10017FE2C(&v73);
    v67(v46, v7);
  }

  else
  {
    v47 = v35;

    sub_10017FE2C(&v73);
    sub_10017FE2C(&v68);
    (*(v42 + 32))(v38, v65, v7);
  }

  sub_1001C4C14(v5, v70);
  v48 = swift_allocObject();
  memcpy((v48 + 16), v70, 0x3C2uLL);
  *(v48 + 984) = v35;
  sub_10011E080(v5 + 880, &v71);
  if (v72)
  {
    sub_100012498(&v71, &v73);
    v49 = v35;
    sub_10076D64C();

    sub_10000CD74(&v73);
    v50 = v38;
    v51 = v67;
    v67(v50, v7);
  }

  else
  {
    v52 = v35;

    sub_10017FE2C(&v71);
    (*(v42 + 32))(v37, v38, v7);
    v51 = v67;
  }

  sub_10011E080(v5 + 920, &v73);
  v53 = v62;
  if (*(&v74 + 1))
  {
    sub_100012498(&v73, v70);
    sub_10076D64C();
    sub_10000CD74(v70);
    v51(v37, v7);
  }

  else
  {
    sub_10017FE2C(&v73);
    (*(v42 + 32))(v53, v37, v7);
  }

  v70[3] = v7;
  v70[4] = &protocol witness table for VerticalStack;
  v54 = sub_10000DB7C(v70);
  (*(v42 + 16))(v54, v53, v7);
  v55 = sub_10076E04C();
  v56 = v63;
  v63[3] = v55;
  v56[4] = &protocol witness table for Margins;
  sub_10000DB7C(v56);
  sub_10076E03C();
  return (v51)(v53, v7);
}

uint64_t sub_1001C3ABC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v4;
  v75 = a2;
  v72 = sub_10076DFEC();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v68 = (&v56 - v9);
  __chkstk_darwin(v10);
  v67 = (&v56 - v11);
  __chkstk_darwin(v12);
  v65 = (&v56 - v13);
  v14 = sub_10076D58C();
  v63 = *(v14 - 8);
  v64 = v14;
  __chkstk_darwin(v14);
  v62 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076DFFC();
  v73 = *(v16 - 8);
  v74 = v16;
  __chkstk_darwin(v16);
  v71 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076D65C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  __chkstk_darwin(v25);
  v57 = &v56 - v26;
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v61 = &v56 - v29;
  v30 = [a1 preferredContentSizeCategory];
  if (qword_10093F9B0 != -1)
  {
    swift_once();
  }

  v31 = sub_10077087C();

  sub_10076D63C();
  sub_1001C4C14(v5, v81);
  v32 = swift_allocObject();
  memcpy((v32 + 16), v81, 0x3C2uLL);
  *(v32 + 984) = a1;
  v33 = a1;
  sub_10076D64C();

  v60 = v19;
  v36 = *(v19 + 8);
  v34 = v19 + 8;
  v35 = v36;
  v36(v21, v18);
  sub_1001C4C14(v5, v81);
  v37 = swift_allocObject();
  *(v37 + 16) = (v31 & 1) == 0;
  memcpy((v37 + 24), v81, 0x3C2uLL);
  *(v37 + 992) = v33;
  v38 = v33;
  v39 = v57;
  sub_10076D64C();

  v36(v24, v18);
  v66 = v5;
  v40 = v39;
  if (v31)
  {
    memset(v81, 0, 40);
  }

  else
  {
    sub_10000A570(v5 + 680, v81);
  }

  sub_10011E080(v81, &v76);
  v41 = v60;
  v42 = v61;
  v58 = v35;
  v59 = v34;
  if (v77)
  {
    sub_100012498(&v76, v78);
    sub_10076D64C();
    sub_10000CD74(v78);
    sub_10017FE2C(v81);
    v35(v40, v18);
  }

  else
  {
    sub_10017FE2C(v81);
    sub_10017FE2C(&v76);
    (*(v41 + 32))(v42, v40, v18);
  }

  v43 = v62;
  sub_10076D55C();
  v79 = v18;
  v80 = &protocol witness table for VerticalStack;
  v44 = sub_10000DB7C(v78);
  (*(v41 + 16))(v44, v42, v18);
  v45 = v64;
  v81[3] = v64;
  v81[4] = &protocol witness table for DisjointStack;
  sub_10000DB7C(v81);
  sub_10076D57C();
  (*(v63 + 8))(v43, v45);
  sub_10000CD74(v78);
  v46 = v65;
  *v65 = sub_1001C443C;
  v46[1] = 0;
  v64 = v18;
  v47 = *(v70 + 104);
  v48 = v72;
  v47(v46, enum case for Resize.Rule.recalculated(_:), v72);
  v49 = enum case for Resize.Rule.unchanged(_:);
  v47(v67, enum case for Resize.Rule.unchanged(_:), v48);
  v47(v68, v49, v48);
  v47(v69, v49, v48);
  v50 = v71;
  sub_10076E00C();
  v51 = v74;
  v79 = v74;
  v80 = &protocol witness table for Resize;
  v52 = sub_10000DB7C(v78);
  v53 = v73;
  (*(v73 + 16))(v52, v50, v51);
  v81[3] = sub_10076E04C();
  v81[4] = &protocol witness table for Margins;
  sub_10000DB7C(v81);
  sub_10076E03C();
  v54 = v75;
  v75[3] = v51;
  v54[4] = &protocol witness table for Resize;
  sub_10000DB7C(v54);
  sub_10076DFDC();
  (*(v53 + 8))(v50, v51);
  return v58(v42, v64);
}

uint64_t sub_1001C4280(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    sub_10000CF78(a3 + 20, a3[23]);
    sub_10076D41C();
  }

  return sub_10076D5CC();
}

uint64_t sub_1001C4308(uint64_t a1, void (*a2)(void *))
{
  v3 = sub_10076D54C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v8 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for DisjointStack.EdgePosition.anchored(_:), v3, v5);
  a2(v7);
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v9(v7, v8, v3);
  return sub_10076D50C();
}

uint64_t sub_1001C4444(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10076D5AC();
  if (a3)
  {
    sub_10000CF78((a2 + 240), *(a2 + 264));
    sub_10076D41C();
  }

  return sub_10076D5BC();
}

uint64_t sub_1001C44F0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000CF78(a2 + 50, a2[53]);
  sub_10076D41C();
  sub_10076D5BC();
  sub_10000CF78(a2 + 55, a2[58]);
  sub_10076D41C();
  return sub_10076D5CC();
}

uint64_t sub_1001C45C0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000CF78(a2 + 60, a2[63]);
  sub_10076D41C();
  return sub_10076D5CC();
}

uint64_t sub_1001C4640(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000CF78(a2 + 5, a2[8]);
  sub_10076D41C();
  return sub_10076D5CC();
}

uint64_t sub_1001C46C0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000CF78(a2 + 20, a2[23]);
  sub_10076D41C();
  return sub_10076D5CC();
}

uint64_t sub_1001C4740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10076D5AC();
  sub_10000CF78((a2 + 240), *(a2 + 264));
  sub_10076D41C();
  return sub_10076D5BC();
}

uint64_t sub_1001C47E0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000CF78(a2 + 35, a2[38]);
  sub_10076D41C();
  return sub_10076D5BC();
}

uint64_t sub_1001C4860(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000CF78(a2 + 40, a2[43]);
  sub_10076D41C();
  sub_10076D5BC();
  sub_10000CF78(a2 + 45, a2[48]);
  sub_10076D41C();
  return sub_10076D5CC();
}

uint64_t sub_1001C4938(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001C4958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 962))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C49A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 952) = 0;
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
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 960) = 0;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 962) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 962) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001C4AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 520))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C4B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001C4C70()
{
  sub_10000CD74((v0 + 64));
  sub_10000CD74((v0 + 104));
  sub_10000CD74((v0 + 144));
  sub_10000CD74((v0 + 184));
  sub_10000CD74((v0 + 224));
  sub_10000CD74((v0 + 264));
  sub_10000CD74((v0 + 304));
  sub_10000CD74((v0 + 344));
  sub_10000CD74((v0 + 384));
  sub_10000CD74((v0 + 424));
  sub_10000CD74((v0 + 464));
  sub_10000CD74((v0 + 504));
  sub_10000CD74((v0 + 544));
  sub_10000CD74((v0 + 584));
  sub_10000CD74((v0 + 624));
  sub_10000CD74((v0 + 664));
  sub_10000CD74((v0 + 704));
  sub_10000CD74((v0 + 744));
  sub_10000CD74((v0 + 784));
  if (*(v0 + 848))
  {
    sub_10000CD74((v0 + 824));
  }

  if (*(v0 + 888))
  {
    sub_10000CD74((v0 + 864));
  }

  if (*(v0 + 928))
  {
    sub_10000CD74((v0 + 904));
  }

  if (*(v0 + 968))
  {
    sub_10000CD74((v0 + 944));
  }

  return _swift_deallocObject(v0, 1000, 7);
}

uint64_t sub_1001C4E30()
{
  sub_10000CD74((v0 + 56));
  sub_10000CD74((v0 + 96));
  sub_10000CD74((v0 + 136));
  sub_10000CD74((v0 + 176));
  sub_10000CD74((v0 + 216));
  sub_10000CD74((v0 + 256));
  sub_10000CD74((v0 + 296));
  sub_10000CD74((v0 + 336));
  sub_10000CD74((v0 + 376));
  sub_10000CD74((v0 + 416));
  sub_10000CD74((v0 + 456));
  sub_10000CD74((v0 + 496));
  sub_10000CD74((v0 + 536));
  sub_10000CD74((v0 + 576));
  sub_10000CD74((v0 + 616));
  sub_10000CD74((v0 + 656));
  sub_10000CD74((v0 + 696));
  sub_10000CD74((v0 + 736));
  sub_10000CD74((v0 + 776));
  if (*(v0 + 840))
  {
    sub_10000CD74((v0 + 816));
  }

  if (*(v0 + 880))
  {
    sub_10000CD74((v0 + 856));
  }

  if (*(v0 + 920))
  {
    sub_10000CD74((v0 + 896));
  }

  if (*(v0 + 960))
  {
    sub_10000CD74((v0 + 936));
  }

  return _swift_deallocObject(v0, 992, 7);
}

uint64_t sub_1001C4F40()
{
  sub_10000CD74(v0 + 7);
  sub_10000CD74(v0 + 12);
  sub_10000CD74(v0 + 17);
  sub_10000CD74(v0 + 22);
  sub_10000CD74(v0 + 27);
  sub_10000CD74(v0 + 32);
  sub_10000CD74(v0 + 37);
  sub_10000CD74(v0 + 42);
  sub_10000CD74(v0 + 47);
  sub_10000CD74(v0 + 52);
  sub_10000CD74(v0 + 57);
  sub_10000CD74(v0 + 62);
  sub_10000CD74(v0 + 67);
  sub_10000CD74(v0 + 72);
  sub_10000CD74(v0 + 77);
  sub_10000CD74(v0 + 82);
  sub_10000CD74(v0 + 87);
  sub_10000CD74(v0 + 92);
  sub_10000CD74(v0 + 97);
  if (v0[105])
  {
    sub_10000CD74(v0 + 102);
  }

  if (v0[110])
  {
    sub_10000CD74(v0 + 107);
  }

  if (v0[115])
  {
    sub_10000CD74(v0 + 112);
  }

  if (v0[120])
  {
    sub_10000CD74(v0 + 117);
  }

  return _swift_deallocObject(v0, 978, 7);
}

uint64_t sub_1001C5088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001C5170()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_10076FF6C();
    v5 = sub_10076FF6C();
    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
  }
}

void sub_1001C5254(void *a1)
{
  v1 = a1;
  sub_1001C5170();
}

double sub_1001C529C(void *a1)
{
  v1 = a1;
  sub_1005A5D54();

  return 0.0;
}

void sub_1001C52F0(__n128 a1)
{
  v2 = v1;
  v3 = sub_100763BCC();
  v178 = *(v3 - 8);
  v179 = v3;
  __chkstk_darwin(v3);
  v177 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100763BBC();
  v174 = *(v5 - 8);
  v175 = v5;
  __chkstk_darwin(v5);
  v176 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100763BAC();
  v171 = *(v7 - 8);
  v172 = v7;
  __chkstk_darwin(v7);
  v173 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100763BFC();
  v180 = *(v9 - 8);
  __chkstk_darwin(v9);
  v168 = (&v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10076997C();
  v170 = *(v11 - 8);
  __chkstk_darwin(v11);
  v169 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100763BEC();
  v195 = *(v13 - 8);
  v196 = v13;
  __chkstk_darwin(v13);
  v157 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v194 = &v152 - v16;
  __chkstk_darwin(v17);
  v193 = &v152 - v18;
  __chkstk_darwin(v19);
  v21 = &v152 - v20;
  v22 = sub_10075D78C();
  v158 = *(v22 - 8);
  v159 = v22;
  __chkstk_darwin(v22);
  v155 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v186);
  v187 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&unk_10094BB20, &unk_10079AAD0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v154 = &v152 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v190 = (&v152 - v29);
  __chkstk_darwin(v30);
  v189 = &v152 - v31;
  __chkstk_darwin(v32);
  v156 = &v152 - v33;
  __chkstk_darwin(v34);
  v192 = (&v152 - v35);
  __chkstk_darwin(v36);
  v191 = (&v152 - v37);
  __chkstk_darwin(v38);
  v184 = &v152 - v39;
  *&v41 = __chkstk_darwin(v40).n128_u64[0];
  v43 = &v152 - v42;
  v44 = [v1 collectionView];
  if (v44)
  {
    v45 = v44;
    v164 = v11;
    v165 = v26;
    v162 = v25;
    v163 = v9;
    v183 = v21;
    [v44 frame];

    v188 = sub_10076770C();
    v47 = v46;
    v48 = v2;
    if (qword_1009408A8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for TitleHeaderView.Style(0);
    v50 = sub_10000A61C(v49, qword_1009A0878);
    sub_1005A5D54();
    v51 = [v48 traitCollection];
    v52 = v195 + 56;
    v53 = *(v195 + 56);
    v181 = v43;
    v54 = v43;
    v55 = v196;
    v53(v54, 1, 1, v196);
    v160 = v53;
    v161 = v52;
    v53(v184, 1, 1, v55);
    v226 = 0;
    memset(v225, 0, sizeof(v225));
    v224 = 0;
    memset(v223, 0, sizeof(v223));
    v182 = v49;
    v56 = *(v49 + 20);
    v185 = v50;
    v153 = v56;
    sub_100199C28(v50 + v56, v187, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100016F40(0, &qword_100942F00, UIFont_ptr);
    v166 = v51;
    v57 = sub_100770B3C();
    v58 = v47;
    v167 = v48;
    if (!v47)
    {
      v63 = v196;
      goto LABEL_11;
    }

    v59 = v188;
    *&v220 = v188;
    *(&v220 + 1) = v47;

    v60 = v155;
    sub_10075D76C();
    sub_10002564C();
    sub_1007711EC();
    v62 = v61;
    (v158)[1](v60, v159);

    if (v62)
    {
      v63 = v196;
      goto LABEL_11;
    }

    [v57 lineHeight];
    v65 = ceil(v64 * 1.3);
    v66 = &v204;
    v63 = v196;
    if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v65 > -9.22337204e18)
    {
      if (v65 < 9.22337204e18)
      {
LABEL_11:
        v222 = 0;
        v220 = 0u;
        v221 = 0u;
        v67 = sub_10076C04C();
        v218 = v67;
        v219 = sub_1001CA130(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v68 = sub_10000DB7C(v217);
        (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);

        v69 = v57;
        sub_10076C90C();
        sub_10000CD74(v217);
        v70 = v169;
        v158 = v69;
        v159 = v58;
        sub_10076996C();
        sub_10076994C();
        (*(v170 + 8))(v70, v164);
        sub_100016E2C(&v220, v216, &unk_10094DA00, &qword_100783FA0);
        v71 = v218;
        v72 = v219;
        v73 = sub_10000CF78(v217, v218);
        v215[3] = v71;
        v215[4] = *(v72 + 8);
        v74 = sub_10000DB7C(v215);
        (*(*(v71 - 8) + 16))(v74, v73, v71);
        v76 = v186;
        v75 = v187;
        v77 = *(v187 + v186[8]);
        v213 = &type metadata for Float;
        v214 = &protocol witness table for Float;
        v212[0] = v77;
        v78 = v186[9];
        v79 = sub_10076D9AC();
        v211[3] = v79;
        v211[4] = &protocol witness table for StaticDimension;
        v80 = sub_10000DB7C(v211);
        v81 = *(*(v79 - 8) + 16);
        v81(v80, v75 + v78, v79);
        v82 = v76[10];
        v210[3] = v79;
        v210[4] = &protocol witness table for StaticDimension;
        v83 = sub_10000DB7C(v210);
        v81(v83, v75 + v82, v79);
        sub_100016E2C(v225, &v204, &qword_10094BB30, qword_100796E40);
        v84 = *(&v205 + 1);
        if (*(&v205 + 1))
        {
          v85 = v206;
          v86 = sub_10000CF78(&v204, *(&v205 + 1));
          *(&v208 + 1) = v84;
          v209 = *(v85 + 8);
          v87 = sub_10000DB7C(&v207);
          (*(*(v84 - 8) + 16))(v87, v86, v84);
          sub_10000CD74(&v204);
        }

        else
        {
          sub_10000CFBC(&v204, &qword_10094BB30, qword_100796E40);
          v207 = 0u;
          v208 = 0u;
          v209 = 0;
        }

        v88 = v183;
        v89 = v190;
        sub_100016E2C(v223, v201, &qword_10094BB30, qword_100796E40);
        v90 = v202;
        if (v202)
        {
          v91 = v203;
          v92 = sub_10000CF78(v201, v202);
          *(&v205 + 1) = v90;
          v206 = *(v91 + 8);
          v93 = sub_10000DB7C(&v204);
          (*(*(v90 - 8) + 16))(v93, v92, v90);
          sub_10000CD74(v201);
        }

        else
        {
          sub_10000CFBC(v201, &qword_10094BB30, qword_100796E40);
          v204 = 0u;
          v205 = 0u;
          v206 = 0;
        }

        v94 = v186;
        v95 = v187;
        sub_10000A570(v187 + v186[12], v201);
        sub_10000A570(v95 + v94[13], &v200);
        v198 = &type metadata for Double;
        v199 = &protocol witness table for Double;
        v197 = 0x4020000000000000;
        sub_100763BDC();
        sub_10000CD74(v217);
        sub_10000CFBC(&v220, &unk_10094DA00, &qword_100783FA0);
        v96 = *(v185 + v182[9]);
        sub_10000A5D4(&qword_10094BB38, &unk_100791CD0);
        v97 = *(v165 + 72);
        v98 = (*(v165 + 80) + 32) & ~*(v165 + 80);
        if (v96)
        {
          if (v96 == 1)
          {
            v170 = swift_allocObject();
            v99 = (v170 + v98);
            sub_100016E2C(v181, v170 + v98, &unk_10094BB20, &unk_10079AAD0);
            v100 = v195 + 16;
            (*(v195 + 16))(&v99[v97], v88, v63);
            v160(&v99[v97], 0, 1, v63);
            sub_100016E2C(v184, &v99[2 * v97], &unk_10094BB20, &unk_10079AAD0);
            v101 = (v100 + 32);
            v193 = (v100 + 16);
            v102 = _swiftEmptyArrayStorage;
            v103 = 3;
            v188 = v97;
            v189 = v99;
            v104 = v99;
            v105 = &unk_10094BB20;
            v191 = v101;
            do
            {
              v106 = v192;
              sub_100016E2C(v104, v192, v105, &unk_10079AAD0);
              sub_1001CA0C0(v106, v89);
              v107 = v196;
              if ((*v101)(v89, 1, v196) == 1)
              {
                sub_10000CFBC(v89, v105, &unk_10079AAD0);
              }

              else
              {
                v108 = v105;
                v109 = *v193;
                (*v193)(v194, v89, v107);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v102 = sub_10049E330(0, *(v102 + 2) + 1, 1, v102);
                }

                v111 = *(v102 + 2);
                v110 = *(v102 + 3);
                if (v111 >= v110 >> 1)
                {
                  v102 = sub_10049E330((v110 > 1), v111 + 1, 1, v102);
                }

                v101 = v191;
                *(v102 + 2) = v111 + 1;
                v109(&v102[((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v111], v194, v196);
                v89 = v190;
                v105 = v108;
                v97 = v188;
              }

              v104 += v97;
              --v103;
            }

            while (v103);
            swift_setDeallocating();
            swift_arrayDestroy();
            v66 = v163;
            v53 = v168;
            v63 = v196;
          }

          else
          {
            v124 = swift_allocObject();
            v125 = v124 + v98;
            sub_100016E2C(v181, v124 + v98, &unk_10094BB20, &unk_10079AAD0);
            v126 = v195;
            (*(v195 + 16))(v124 + v98 + v97, v88, v63);
            v160((v124 + v98 + v97), 0, 1, v63);
            v127 = v156;
            sub_100016E2C(v124 + v98, v156, &unk_10094BB20, &unk_10079AAD0);
            v128 = v154;
            sub_1001CA0C0(v127, v154);
            v129 = *(v126 + 48);
            v130 = (v126 + 32);
            if (v129(v128, 1, v63) == 1)
            {
              sub_10000CFBC(v128, &unk_10094BB20, &unk_10079AAD0);
              v131 = _swiftEmptyArrayStorage;
            }

            else
            {
              v170 = v124;
              v132 = *v130;
              (*v130)(v157, v128, v63);
              v131 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v131 = sub_10049E330(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v134 = *(v131 + 2);
              v133 = *(v131 + 3);
              if (v134 >= v133 >> 1)
              {
                v131 = sub_10049E330((v133 > 1), v134 + 1, 1, v131);
              }

              *(v131 + 2) = v134 + 1;
              v135 = &v131[((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v134];
              v63 = v196;
              v132(v135, v157, v196);
              v128 = v154;
            }

            v136 = v125 + v97;
            v137 = v156;
            sub_100016E2C(v136, v156, &unk_10094BB20, &unk_10079AAD0);
            sub_1001CA0C0(v137, v128);
            if (v129(v128, 1, v63) == 1)
            {
              sub_10000CFBC(v128, &unk_10094BB20, &unk_10079AAD0);
              v66 = v163;
            }

            else
            {
              v138 = *v130;
              (*v130)(v157, v128, v63);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v66 = v163;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v131 = sub_10049E330(0, *(v131 + 2) + 1, 1, v131);
              }

              v141 = *(v131 + 2);
              v140 = *(v131 + 3);
              if (v141 >= v140 >> 1)
              {
                v131 = sub_10049E330((v140 > 1), v141 + 1, 1, v131);
              }

              *(v131 + 2) = v141 + 1;
              v138(&v131[((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v141], v157, v63);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
            v53 = v168;
          }
        }

        else
        {
          v170 = swift_allocObject();
          v112 = v170 + v98;
          sub_100016E2C(v181, v170 + v98, &unk_10094BB20, &unk_10079AAD0);
          sub_100016E2C(v184, v112 + v97, &unk_10094BB20, &unk_10079AAD0);
          v113 = v195 + 16;
          (*(v195 + 16))(v112 + 2 * v97, v88, v63);
          v114 = v63;
          v160((v112 + 2 * v97), 0, 1, v63);
          v190 = (v113 + 32);
          v192 = (v113 + 16);
          v194 = _swiftEmptyArrayStorage;
          v115 = 3;
          v169 = v112;
          v116 = v189;
          do
          {
            v117 = v97;
            v118 = v191;
            sub_100016E2C(v112, v191, &unk_10094BB20, &unk_10079AAD0);
            sub_1001CA0C0(v118, v116);
            if ((*v190)(v116, 1, v114) == 1)
            {
              sub_10000CFBC(v116, &unk_10094BB20, &unk_10079AAD0);
            }

            else
            {
              v119 = *v192;
              (*v192)(v193, v116, v114);
              v120 = v194;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v120 = sub_10049E330(0, *(v120 + 2) + 1, 1, v120);
              }

              v122 = *(v120 + 2);
              v121 = *(v120 + 3);
              if (v122 >= v121 >> 1)
              {
                v120 = sub_10049E330((v121 > 1), v122 + 1, 1, v120);
              }

              *(v120 + 2) = v122 + 1;
              v123 = (*(v195 + 80) + 32) & ~*(v195 + 80);
              v194 = v120;
              v114 = v196;
              v119(&v120[v123 + *(v195 + 72) * v122], v193);
              v116 = v189;
            }

            v97 = v117;
            v112 += v117;
            --v115;
          }

          while (v115);
          swift_setDeallocating();
          swift_arrayDestroy();
          v66 = v163;
          v53 = v168;
          v63 = v114;
        }

        swift_deallocClassInstance();
        v222 = 0;
        v220 = 0u;
        v221 = 0u;
        sub_100016E2C(&v220, v217, &unk_10094DA00, &qword_100783FA0);
        v142 = v182;
        v143 = v185;
        v144 = *(v185 + v182[14]);
        v216[3] = &type metadata for CGFloat;
        v216[4] = &protocol witness table for CGFloat;
        v216[0] = v144;
        (*(v171 + 16))(v173, v185 + v182[10], v172);
        (*(v174 + 16))(v176, v143 + v142[11], v175);
        (*(v178 + 104))(v177, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v179);
        sub_100763B7C();
        sub_100770ACC();
        sub_1001CA130(&unk_10094BB40, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
        sub_10076D2AC();
        v217[0] = v145;
        v217[1] = v146;
        sub_100770ADC();
        if (JUScreenClassGetMain() != 1)
        {

          (*(v180 + 8))(v53, v66);
          v149.n128_f64[0] = (*(v195 + 8))(v183, v63);
          sub_10011BAB4(v187, v149);
          sub_10000CFBC(v223, &qword_10094BB30, qword_100796E40);
          sub_10000CFBC(v225, &qword_10094BB30, qword_100796E40);
          sub_10000CFBC(v184, &unk_10094BB20, &unk_10079AAD0);
          sub_10000CFBC(v181, &unk_10094BB20, &unk_10079AAD0);
          goto LABEL_62;
        }

        v58 = v180;
        v59 = v181;
        v60 = v183;
        if (qword_10093FC38 != -1)
        {
          swift_once();
        }

        v147 = sub_10000A61C(v186, qword_10099DF58);
        v62 = v153;
        if (sub_10019942C((v185 + v153), v147))
        {

          (*(v58 + 8))(v53, v66);
          v148.n128_f64[0] = (*(v195 + 8))(v60, v63);
          sub_10011BAB4(v187, v148);
          sub_10000CFBC(v223, &qword_10094BB30, qword_100796E40);
          sub_10000CFBC(v225, &qword_10094BB30, qword_100796E40);
          sub_10000CFBC(v184, &unk_10094BB20, &unk_10079AAD0);
          sub_10000CFBC(v59, &unk_10094BB20, &unk_10079AAD0);
LABEL_62:
          sub_10000CFBC(&v220, &unk_10094DA00, &qword_100783FA0);

          return;
        }

        if (qword_10093FC40 == -1)
        {
LABEL_61:
          v150 = sub_10000A61C(v186, qword_10099DF70);
          sub_10019942C((v185 + v62), v150);

          (*(v58 + 8))(v53, v66);
          v151.n128_f64[0] = (*(v195 + 8))(v60, v63);
          sub_10011BAB4(v187, v151);
          sub_10000CFBC(v223, &qword_10094BB30, qword_100796E40);
          sub_10000CFBC(v225, &qword_10094BB30, qword_100796E40);
          sub_10000CFBC(v184, &unk_10094BB20, &unk_10079AAD0);
          sub_10000CFBC(v59, &unk_10094BB20, &unk_10079AAD0);
          goto LABEL_62;
        }

LABEL_66:
        swift_once();
        goto LABEL_61;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_65;
  }

  __break(1u);
}

id sub_1001C6C08(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x80000001007D7F90 == a3 || (sub_10077167C() & 1) != 0)
  {
    v9 = sub_10076FF6C();
    v10 = sub_10076FF6C();
    v11.super.isa = sub_10075E02C().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v10 = sub_10076FF6C();
    v11.super.isa = sub_10075E02C().super.isa;
    v14.receiver = v4;
    v14.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v14, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v10, v11.super.isa);
  }

  return v12;
}

id sub_1001C6D5C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076FF9C();
  v13 = v12;
  sub_10075E06C();
  v14 = a3;
  v15 = a1;
  v16 = sub_1001C6C08(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

void sub_1001C6E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 != 0xD000000000000039 || 0x80000001007D7F90 != a4) && (sub_10077167C() & 1) == 0)
  {
    v25 = sub_10076FF6C();
    isa = sub_10075E02C().super.isa;
    v26.receiver = v5;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", a1, a2, v25, isa);

    goto LABEL_14;
  }

  type metadata accessor for TitleHeaderView(0);
  v14 = swift_dynamicCastClassUnconditional();
  v15 = sub_1005A5D54();
  if (v15 > 40.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 40.0;
  }

  [v14 setLayoutMargins:{0.0, v16, 0.0, v16}];
  v17 = (v14 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines);
  *v17 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v17[1] = 0;

  v18 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel;
  [*(v14 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel) setNumberOfLines:0];
  [*(v14 + v18) setAllowsDefaultTighteningForTruncation:1];
  [*(v14 + v18) setTextAlignment:1];
  v19 = sub_1005A5D54();
  if (v19 <= 40.0)
  {
    v19 = 40.0;
  }

  v20 = (v14 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorInset);
  *v20 = 0.0;
  v20[1] = v19;
  v20[2] = 0.0;
  v20[3] = v19;
  [v14 setNeedsLayout];
  if (qword_1009408A8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v11, qword_1009A0878);
  sub_100199C28(v21, v13, type metadata accessor for TitleHeaderView.Style);
  (*((swift_isaMask & *v14) + 0x1C8))(v13);
  sub_10076770C();
  if (v22)
  {
    v23 = *(v14 + v18);
    isa = sub_10076FF6C();

    [v23 setText:isa];
LABEL_14:
  }
}

uint64_t sub_1001C71DC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10075E11C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076FF9C();
  v15 = v14;
  sub_10075E06C();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_1001C6E9C(v16, v17, v13, v15);

  return (*(v10 + 8))(v12, v9);
}

uint64_t type metadata accessor for PrivacyDefinitionsViewController(uint64_t a1)
{
  result = qword_10094C6F0;
  if (!qword_10094C6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1001C73A8(__n128 a1)
{
  v2 = sub_1007621EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v6);
  v9 = (&v35 - v8);
  v10 = _swiftEmptyArrayStorage;
  v36 = _swiftEmptyArrayStorage;
  v11 = *(v1 + qword_10094E0D0);
  v12 = (*((swift_isaMask & *v1) + 0x4D8))(v7);
  v13 = sub_1001C9924(v12);
  if (v13)
  {
    v14 = v13;
    sub_10077019C();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v10 = v36;
  }

  v15 = sub_1001C973C(v1, v11);
  if (v15)
  {
    v16 = v15;
    sub_10077019C();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v10 = v36;
  }

  sub_10076573C();
  sub_1001CA130(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  if (sub_100761A9C() < 1)
  {
    goto LABEL_14;
  }

  sub_100761A6C();
  if ((*(v3 + 88))(v9, v2) != enum case for ShelfBackground.color(_:))
  {
    (*(v3 + 8))(v9, v2);
    goto LABEL_14;
  }

  (*(v3 + 96))(v9, v2);

  v17 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
  v18 = sub_1007659CC();
  (*(*(v18 - 8) + 8))(v9 + v17, v18);
  v19 = objc_opt_self();
  v20 = [v19 fractionalWidthDimension:1.0];
  v21 = [v19 absoluteDimension:2000.0];
  v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

  v23 = sub_10076FF6C();
  v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v22 elementKind:v23 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v24 setExtendsBoundary:0];
  v9 = v24;
  sub_10077019C();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    sub_10077025C();

    v10 = v36;
LABEL_14:
    if (sub_100761A9C() < 1)
    {
      break;
    }

    if (!__OFSUB__(sub_100761A9C(), 1))
    {
      sub_100761A6C();
      if ((*(v3 + 88))(v5, v2) == enum case for ShelfBackground.color(_:))
      {
        (*(v3 + 96))(v5, v2);

        v25 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
        v26 = sub_1007659CC();
        (*(*(v26 - 8) + 8))(v5 + v25, v26);
        v27 = objc_opt_self();
        v28 = [v27 fractionalWidthDimension:1.0];
        v29 = [v27 absoluteDimension:2000.0];
        v30 = [objc_opt_self() sizeWithWidthDimension:v28 heightDimension:v29];

        v31 = sub_10076FF6C();
        v32 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v30 elementKind:v31 alignment:5 absoluteOffset:{0.0, 2000.0}];

        [v32 setExtendsBoundary:0];
        v33 = v32;
        sub_10077019C();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();

        return v36;
      }

      else
      {
        (*(v3 + 8))(v5, v2);
      }

      return v10;
    }

    __break(1u);
LABEL_23:
    sub_10077021C();
  }

  return v10;
}

void sub_1001C7AC0()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v10 = [v1 collectionViewLayout];

    if (v10)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = v3;
        v5 = v10;
        v6 = [v4 configuration];
        sub_100016F40(0, &unk_10094E1E0, UICollectionViewCompositionalLayoutConfiguration_ptr);
        v7 = sub_10077116C();

        sub_1001C73A8(v8);
        sub_100016F40(0, &qword_100948C70, NSCollectionLayoutBoundarySupplementaryItem_ptr);
        isa = sub_1007701AC().super.isa;

        [v7 setBoundarySupplementaryItems:isa];

        [v4 setConfiguration:v7];
      }
    }
  }
}

void sub_1001C7C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = sub_10075E11C();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075DFDC();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_10094E1D0, qword_100796000);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v54 = &v46 - v14;
  v15 = [v3 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 collectionViewLayout];

    [v17 invalidateLayout];
  }

  v53 = *&v4[qword_10094E0D0];
  v18 = [v4 collectionView];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 collectionViewLayout];

    if (v20)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        goto LABEL_8;
      }
    }

    v18 = 0;
  }

LABEL_8:
  v52 = v18;
  v21 = *(a1 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (v21)
  {
    v47 = v11;
    v48 = a2;
    v49 = a3;
    v50 = v4;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1004BBC28(0, v21, 0);
    v22 = aBlock[0];
    v23 = v57 + 16;
    v57 = *(v57 + 16);
    v24 = *(v23 + 64);
    v51 = a1;
    v25 = a1 + ((v24 + 32) & ~v24);
    v26 = *(v23 + 56);
    v27 = (v23 - 8);
    do
    {
      v28 = v58;
      v29 = v59;
      (v57)(v58, v25, v59);
      v30 = sub_10075E0AC();
      (*v27)(v28, v29);
      aBlock[0] = v22;
      v32 = v22[2];
      v31 = v22[3];
      if (v32 >= v31 >> 1)
      {
        sub_1004BBC28((v31 > 1), v32 + 1, 1);
        v22 = aBlock[0];
      }

      v22[2] = v32 + 1;
      v22[v32 + 4] = v30;
      v25 += v26;
      --v21;
    }

    while (v21);
    v4 = v50;
    a1 = v51;
    a2 = v48;
    a3 = v49;
    v11 = v47;
  }

  sub_1001CA130(&qword_10094E190, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v33 = v56;
  sub_1007712BC();
  v34 = v22[2];
  v35 = v11;
  if (v34)
  {
    v36 = v22 + 4;
    do
    {
      v37 = *v36++;
      aBlock[6] = v37;
      sub_10077126C();
      --v34;
    }

    while (v34);
  }

  v39 = v54;
  v38 = v55;
  (*(v55 + 32))(v54, v35, v33);
  (*(v38 + 56))(v39, 0, 1, v33);
  sub_1001C9A44(v39);

  sub_10000CFBC(v39, &unk_10094E1D0, qword_100796000);
  v40 = [v4 collectionView];
  if (v40)
  {
    v41 = v40;
    v42 = swift_allocObject();
    v42[2] = a2;
    v42[3] = a3;
    v42[4] = v4;
    v42[5] = a1;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1001C9EC8;
    *(v43 + 24) = v42;
    aBlock[4] = sub_100071910;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001C5148;
    aBlock[3] = &unk_10088BA38;
    v44 = _Block_copy(aBlock);
    v45 = v4;

    [v41 performBatchUpdates:v44 completion:0];
    _Block_release(v44);
  }
}

double sub_1001C81A0(uint64_t a1)
{
  if (qword_1009412E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10076FD4C();
  sub_10000A61C(v2, qword_1009A25E8);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783C60;
  v8 = sub_10000A5D4(&qword_10094CCF8, &qword_100793418);
  v7[0] = v1;
  v3 = v1;
  sub_10076F30C();
  sub_10000CFBC(v7, &unk_1009434C0, &qword_100783F60);
  sub_10076F27C();
  swift_getErrorValue();
  v8 = v6;
  v4 = sub_10000DB7C(v7);
  (*(*(v6 - 8) + 16))(v4);
  sub_10076F32C();
  sub_10000CFBC(v7, &unk_1009434C0, &qword_100783F60);
  sub_10076FBEC();

  return result;
}

void sub_1001C83D0()
{
  v1 = *&v0[qword_10094E0D0];

  *(v1 + 80) = 1;

  sub_1001C7AC0();
}

void sub_1001C8430()
{
  v1 = [v0 collectionView];
  sub_1001C8630(v1);

  sub_1001C7AC0();
}

void sub_1001C8578(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  v5 = [a3 collectionView];
  if (v5)
  {
    v6 = v5;
    sub_10075E11C();
    isa = sub_1007701AC().super.isa;
    [v6 deleteItemsAtIndexPaths:isa];
  }
}

void sub_1001C8630(void *a1)
{
  v3 = sub_10075DFDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  *(v1 + 80) = 0;
  if (a1)
  {
    v28 = a1;
    v13 = [v28 numberOfSections];
    sub_10076573C();
    sub_1001CA130(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
    v14 = sub_100761A9C();
    if (v13 < v14)
    {
      v15 = v14;
      if (__OFSUB__(v14, v13))
      {
        __break(1u);
        goto LABEL_13;
      }

      if (v14 - v13 >= 1)
      {
        v27 = v4;
        sub_1001CA130(&qword_10094E190, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
        sub_1007712BC();
        do
        {
          aBlock[6] = v13;
          sub_10077126C();
          ++v13;
        }

        while (v15 != v13);
        v16 = v27;
        v17 = *(v27 + 32);
        v17(v12, v9, v3);
        v18 = objc_opt_self();
        (*(v16 + 16))(v6, v12, v3);
        v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v28;
        v17((v20 + v19), v6, v3);
        v21 = swift_allocObject();
        *(v21 + 16) = sub_1001CA05C;
        *(v21 + 24) = v20;
        aBlock[4] = sub_1001CA180;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001C5148;
        aBlock[3] = &unk_10088BAB0;
        v22 = _Block_copy(aBlock);
        v23 = v28;

        [v18 performWithoutAnimation:v22];
        _Block_release(v22);

        (*(v16 + 8))(v12, v3);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    v25 = v28;
  }
}

uint64_t sub_1001C8A2C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_10076F7FC();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = *(v0 + 16);
  v12 = sub_10076573C();
  v44 = sub_1001CA130(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  result = sub_100761A9C();
  if (result < 0)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v14 = 0;
    v42 = result;
    v43 = (v40 + 48);
    v41 = (v40 + 32);
    v38 = v4;
    v39 = (v40 + 16);
    v33 = v40 + 40;
    v34 = (v40 + 8);
    v36 = v11;
    v37 = v10;
    v35 = v12;
    do
    {
      sub_100761B4C();
      sub_10076B6FC();
      if ((*v43)(v4, 1, v5) == 1)
      {

        sub_10000CFBC(v4, &qword_1009492E0, &qword_1007893A0);
      }

      else
      {
        v15 = *v41;
        (*v41)(v10, v4, v5);
        swift_beginAccess();
        v16 = v7;
        v17 = v5;
        (*v39)(v7, v10, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *(v1 + 56);
        v19 = v45;
        v20 = v1;
        *(v1 + 56) = 0x8000000000000000;
        v22 = sub_10060FF40(v14);
        v23 = v19[2];
        v24 = (v21 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          result = sub_1007716DC();
          __break(1u);
          return result;
        }

        v26 = v21;
        if (v19[3] >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10024CB84();
          }
        }

        else
        {
          sub_100248370(v25, isUniquelyReferenced_nonNull_native);
          v27 = sub_10060FF40(v14);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_22;
          }

          v22 = v27;
        }

        v7 = v16;
        v29 = v45;
        if (v26)
        {
          v5 = v17;
          (*(v40 + 40))(v45[7] + *(v40 + 72) * v22, v16, v17);
        }

        else
        {
          v45[(v22 >> 6) + 8] |= 1 << v22;
          *(v29[6] + 8 * v22) = v14;
          v5 = v17;
          v15((v29[7] + *(v40 + 72) * v22), v16, v17);
          v30 = v29[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_20;
          }

          v29[2] = v32;
        }

        v1 = v20;
        *(v20 + 56) = v29;

        swift_endAccess();

        v10 = v37;
        (*v34)(v37, v5);
        v4 = v38;
      }

      ++v14;
      result = v42;
    }

    while (v42 != v14);
  }

  return result;
}

uint64_t sub_1001C8E60(uint64_t a1, uint64_t a2)
{
  v45 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33[-v3];
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v43 = &v33[-v5];
  v48 = sub_10076F7FC();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v33[-v9];
  v10 = sub_10075DF7C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000A5D4(&qword_10094CCD8, &unk_100793408);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  sub_10075DF8C();
  swift_beginAccess();
  sub_10075DFDC();
  sub_1001CA130(&qword_10094CCE0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v46 = (v11 + 8);
  v36 = v6 + 16;
  v35 = v6 + 32;
  v34 = (v6 + 8);
  v42 = (v6 + 56);
  v40 = v6;
  ++v41;
  v37 = v10;
  while (1)
  {
    v18 = v47;
    sub_10077040C();
    sub_1001CA130(&qword_10094CCE8, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v19 = sub_10076FF1C();
    (*v46)(v18, v10);
    if (v19)
    {
      break;
    }

    v20 = sub_10077042C();
    v22 = *v21;
    v20(v49, 0);
    sub_10077041C();
    v23 = *(a2 + 56);
    if (*(v23 + 16))
    {
      v24 = sub_10060FF40(v22);
      if (v25)
      {
        v26 = v39;
        v27 = v40;
        v28 = *(v23 + 56) + *(v40 + 72) * v24;
        v29 = v48;
        (*(v40 + 16))(v39, v28, v48);
        v30 = *(v27 + 32);
        v31 = v38;
        v30(v38, v26, v29);
        if (*(a2 + 112))
        {

          sub_10076610C();
        }

        (*v34)(v31, v48);
        v10 = v37;
      }
    }

    v16 = v43;
    (*v42)(v43, 1, 1, v48);
    swift_beginAccess();
    sub_100098444(v16, v22);
    swift_endAccess();
    v50 = v22;
    sub_10077140C();
    v17 = v44;
    sub_10076FDEC();
    sub_10076F9BC();
    (*v41)(v17, v45);
  }

  return sub_10000CFBC(v15, &qword_10094CCD8, &unk_100793408);
}

uint64_t sub_1001C93F8(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v23 = sub_10075DF7C();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_10094CCD8, &unk_100793408);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  sub_10075DF8C();
  sub_10075DFDC();
  sub_1001CA130(&qword_10094CCE0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    sub_10077040C();
    sub_1001CA130(&qword_10094CCE8, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v12 = v23;
    v13 = sub_10076FF1C();
    (*v10)(v6, v12);
    if (v13)
    {
      break;
    }

    v14 = sub_10077042C();
    v16 = *v15;
    v14(v24, 0);
    sub_10077041C();
    v24[6] = v16;
    sub_10077140C();
    v17 = v20;
    sub_10076FDEC();
    sub_10076F9BC();
  }

  return sub_10000CFBC(v9, &qword_10094CCD8, &unk_100793408);
}

id sub_1001C973C(void *a1, uint64_t a2)
{
  if (*(a2 + 80) != 1)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v3 = sub_10076D9AC();
  sub_10000A61C(v3, qword_1009A2380);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007841E0;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = sub_10076DEEC();
  sub_10076D3EC();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension:1.0];
  v11 = [v9 absoluteDimension:v8];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:UICollectionElementKindSectionFooter alignment:5];
  return v13;
}

id sub_1001C9924(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension:1.0];
  v4 = [v2 absoluteDimension:a1];
  v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

  v6 = sub_10076FF6C();
  v7 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v5 elementKind:v6 alignment:1];

  return v7;
}

uint64_t sub_1001C9A44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_10094E1D0, qword_100796000);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_10075DFDC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v24 = a1;
  sub_100016E2C(a1, v9, &unk_10094E1D0, qword_100796000);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_10000CFBC(v9, &unk_10094E1D0, qword_100796000);
    if (v2[14])
    {

      sub_10076611C();
    }

    swift_beginAccess();
    v2[7] = _swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = (*(v11 + 32))(v15, v9, v10);
    v21[1] = v21;
    v26[0] = v2[3];
    __chkstk_darwin(v17);
    v22 = v16;
    v21[-2] = v15;
    v21[-1] = v2;

    sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
    v21[0] = 0;
    sub_1001C9F18();
    v16 = v22;
    sub_10076F35C();

    (*(v11 + 8))(v15, v10);
  }

  sub_1001C8A2C();
  sub_100016E2C(v24, v6, &unk_10094E1D0, qword_100796000);
  if (v16(v6, 1, v10) == 1)
  {
    return sub_10000CFBC(v6, &unk_10094E1D0, qword_100796000);
  }

  v19 = v23;
  v20 = (*(v11 + 32))(v23, v6, v10);
  v25 = v2[3];
  __chkstk_darwin(v20);
  v21[-2] = v19;
  v21[-1] = v2;

  sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
  sub_1001C9F18();
  sub_10076F35C();

  return (*(v11 + 8))(v19, v10);
}

uint64_t sub_1001C9E88()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_1001C9EE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1001C9F18()
{
  result = qword_1009564C0;
  if (!qword_1009564C0)
  {
    sub_10000CE78(&unk_1009520B0, &qword_100790A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009564C0);
  }

  return result;
}

uint64_t sub_1001C9F98()
{
  v1 = sub_10075DFDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1001CA05C()
{
  v1 = *(sub_10075DFDC() - 8);
  v2 = ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);

  sub_1006B6DE0(v3, v2);
}

uint64_t sub_1001CA0C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094BB20, &unk_10079AAD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CA130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

int64x2_t sub_1001CA1A4()
{
  if (qword_10093F9B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10094CD00;
  qword_10099D7D8 = 0;
  swift_weakInit();
  qword_10099D7E8 = 0;
  unk_10099D7F0 = 0;
  result = vdupq_n_s64(0x404A000000000000uLL);
  byte_10099D7F8 = 1;
  xmmword_10099D7B0 = result;
  *&qword_10099D7C0 = xmmword_100793420;
  qword_10099D7D0 = v0;
  return result;
}

uint64_t sub_1001CA23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_weakInit();
  swift_weakDestroy();
  return sub_1001CB6D8(a1, a2);
}

char *sub_1001CA294(char a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_layoutMetrics;
  if (qword_10093F9C0 != -1)
  {
    swift_once();
  }

  v13 = &v5[v12];
  v14 = qword_10099D7C0;
  v15 = xmmword_10099D7B0;
  *(v13 + 5) = &type metadata for CGFloat;
  *(v13 + 6) = &protocol witness table for CGFloat;
  *(v13 + 2) = v14;
  v16 = byte_10099D7F8;
  v17 = *algn_10099D7C8;
  v18 = *&qword_10099D7E8;
  *v13 = v15;
  *(v13 + 56) = v17;
  *(v13 + 72) = v18;
  v13[88] = v16;
  sub_1001CCBC8(&xmmword_10099D7B0, &v5[OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_config]);
  v5[OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_enablePrerenderedIcons] = a1 & 1;
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v39, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v23 = v19;
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v23 setClipsToBounds:1];
  v24 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_config;
  swift_beginAccess();
  v25 = sub_1001CCBC8(v23 + v24, v37);
  __chkstk_darwin(v25);
  sub_100016CD4();
  sub_10076C13C();
  sub_100016D84(v37);
  swift_beginAccess();
  sub_1001CCC10(v35, v23 + v24);
  swift_endAccess();
  sub_1001CCBC8(v23 + v24, v37);
  v26 = v37[0];
  v27 = v37[1];
  v35[5] = &type metadata for CGFloat;
  v35[6] = &protocol witness table for CGFloat;
  v28 = v37[3];
  v29 = v37[4];
  v35[2] = v37[2];
  v30 = v37[7];
  v31 = v37[8];
  v32 = v38;
  sub_100016D84(v37);
  v35[0] = v26;
  v35[1] = v27;
  v35[7] = v28;
  v35[8] = v29;
  v35[9] = v30;
  v35[10] = v31;
  v36 = v32;
  v33 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_layoutMetrics;
  swift_beginAccess();
  sub_10015E8E4(v35, v23 + v33);
  swift_endAccess();

  return v23;
}

void sub_1001CA5CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews];
  if (v4 >> 62)
  {
    v5 = sub_10077158C();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_10077149C();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = a1;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    v10 = sub_10077158C();
    if (v10)
    {
LABEL_12:
      if (v10 >= 1)
      {

        for (j = 0; j != v10; ++j)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_10077149C();
          }

          else
          {
            v12 = *(v9 + 8 * j + 32);
          }

          v13 = v12;
          [v1 addSubview:v12];
        }

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  [v1 setNeedsLayout];
}

uint64_t sub_1001CA77C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_config;
  swift_beginAccess();
  sub_1001CCBC8(v0 + v1, v13);
  v2 = v13[0];
  v3 = v13[1];
  v11[5] = &type metadata for CGFloat;
  v11[6] = &protocol witness table for CGFloat;
  v4 = v13[3];
  v11[2] = v13[2];
  v5 = v13[4];
  v6 = v13[7];
  v7 = v13[8];
  v8 = v14;
  sub_100016D84(v13);
  v11[0] = v2;
  v11[1] = v3;
  v11[7] = v4;
  v11[8] = v5;
  v11[9] = v6;
  v11[10] = v7;
  v12 = v8;
  v9 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_layoutMetrics;
  swift_beginAccess();
  sub_1001CCC48(v11, v0 + v9);
  swift_endAccess();
  [v0 setNeedsLayout];
  return sub_1001CCA74(v11);
}

void sub_1001CA998()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews;
  sub_10075FD2C();

  v2 = sub_1007701EC();

  if (v2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v3 = *(v0 + v1);
      if (v3 >> 62)
      {
        v4 = sub_10077158C();
        if (v4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
LABEL_5:
          if (v4 < 1)
          {
            __break(1u);
            return;
          }

          v5 = 0;
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v6 = sub_10077149C();
            }

            else
            {
              v6 = *(v3 + 8 * v5 + 32);
            }

            v7 = v6;
            ++v5;
            sub_10000D7F8();
            sub_100760BFC();
          }

          while (v4 != v5);

          goto LABEL_14;
        }
      }
    }

LABEL_14:
    sub_1001CA5CC(_swiftEmptyArrayStorage);
  }
}

void sub_1001CAB08(CGFloat a1, CGFloat a2)
{
  if (a1 > 0.0 && a2 > 0.0)
  {
    v4 = v2;
    v6 = v2 + OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_config;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = *(v6 + 40);
      if (v7)
      {
        sub_10076C02C();

        if ((sub_1007701EC() & 1) == 0)
        {

          return;
        }

        v8 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_layoutMetrics;
        swift_beginAccess();
        sub_10015E8A4(v4 + v8, v22);
        v9 = *(sub_1001CB764(v22, v4, 0.0, 0.0, a1, a2) + 2);

        sub_1001CCA74(v22);
        v10 = _swiftEmptyArrayStorage;
        v22[0] = _swiftEmptyArrayStorage;
        if (v9)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            if (v7 >> 62)
            {
              goto LABEL_35;
            }

            for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
            {
              v20 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_enablePrerenderedIcons;
              sub_10075FD2C();
              v12 = 0;
              while (1)
              {
                v13 = (*(v4 + v20) == 1 ? sub_10075FB1C() : sub_10075FB3C());
                v14 = v13;
                sub_10077019C();
                if (*((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_10077021C();
                }

                sub_10077025C();
                if (i == -1 && v12 == 0x8000000000000000)
                {
                  break;
                }

                v10 = v22[0];
                sub_10077149C();
                sub_10076BFBC();
                sub_10000D7F8();
                sub_100760B8C();

                swift_unknownObjectRelease();

                if (v9 == ++v12)
                {
                  goto LABEL_30;
                }
              }

LABEL_34:
              __break(1u);
LABEL_35:
              ;
            }

            __break(1u);
            goto LABEL_37;
          }

          v21 = v7 & 0xFFFFFFFFFFFFFF8;
          v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v15)
          {
LABEL_37:
            __break(1u);
            return;
          }

          v19 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_enablePrerenderedIcons;
          sub_10075FD2C();
          v16 = 0;
          do
          {
            if (*(v4 + v19) == 1)
            {
              v17 = sub_10075FB1C();
            }

            else
            {
              v17 = sub_10075FB3C();
            }

            v18 = v17;
            sub_10077019C();
            if (*((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10077021C();
            }

            sub_10077025C();
            if (v16 % v15 >= *(v21 + 16))
            {
              __break(1u);
              goto LABEL_34;
            }

            ++v16;
            v10 = v22[0];

            sub_10076BFBC();
            sub_10000D7F8();
            sub_100760B8C();
          }

          while (v9 != v16);
        }

LABEL_30:

        sub_1001CA5CC(v10);
      }
    }
  }
}

uint64_t sub_1001CAEF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.receiver = v1;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "layoutSubviews", v5);
  [v1 bounds];
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  result = CGRectIsEmpty(v57);
  if ((result & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews;
    v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews];
    if (!(v14 >> 62))
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_4:
      v15 = *&v1[v13];
      *&v43 = v7;
      if (v15 >> 62)
      {
        v16 = sub_10077158C();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v13;
      v17 = _swiftEmptyArrayStorage;
      if (v16)
      {
        v39 = v4;
        *&v41 = v3;
        *&v42 = v1;
        v45[0] = _swiftEmptyArrayStorage;

        result = sub_1004BB7D4(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          goto LABEL_36;
        }

        v18 = 0;
        v17 = v45[0];
        v51 = 0x3FF0000000000000;
        v52 = 0;
        v53 = 0;
        v54 = 0x3FF0000000000000;
        v55 = 0;
        v56 = 0;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = sub_10077149C();
          }

          else
          {
            v19 = *(v15 + 8 * v18 + 32);
          }

          v20 = v19;
          [v20 transform];
          if (sub_10077062C())
          {
            *&v44.d = sub_1000ACA5C();
            *&v44.tx = &protocol witness table for UIView;
            *&v44.a = v20;
            v21 = v20;
          }

          else
          {
            sub_100770BAC();
          }

          sub_100012498(&v44, v46);

          v45[0] = v17;
          v23 = v17[2];
          v22 = v17[3];
          if (v23 >= v22 >> 1)
          {
            sub_1004BB7D4((v22 > 1), v23 + 1, 1);
          }

          ++v18;
          v24 = v47;
          v25 = v48;
          v26 = sub_10008B8A4(v46, v47);
          v27 = __chkstk_darwin(v26);
          v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v30 + 16))(v29, v27);
          sub_10016FC14(v23, v29, v45, v24, v25);
          sub_10000CD74(v46);
          v17 = v45[0];
        }

        while (v16 != v18);

        v1 = v42;
        v3 = v41;
        v4 = v39;
      }

      v31 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_layoutMetrics;
      swift_beginAccess();
      sub_10015E8A4(&v1[v31], v46);
      v49 = v17;
      v32 = v43;
      IconArtworkGridLayout.placeChildren(relativeTo:in:)(v1, x, y, width, height);
      (*(v4 + 8))(v32, v3);
      v33 = &v1[OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_config];
      swift_beginAccess();
      result = CGAffineTransformMakeRotation(&v44, v33[4]);
      v42 = *&v44.c;
      v43 = *&v44.a;
      v41 = *&v44.tx;
      v34 = *&v1[v40];
      if (v34 >> 62)
      {
        result = sub_10077158C();
        v35 = result;
        if (result)
        {
LABEL_21:
          if (v35 >= 1)
          {

            v36 = 0;
            do
            {
              if ((v34 & 0xC000000000000001) != 0)
              {
                v37 = sub_10077149C();
              }

              else
              {
                v37 = *(v34 + 8 * v36 + 32);
              }

              v38 = v37;
              ++v36;
              *&v44.a = v43;
              *&v44.c = v42;
              *&v44.tx = v41;
              [v37 setTransform:&v44];
            }

            while (v35 != v36);

            return sub_1001CB710(v46);
          }

LABEL_36:
          __break(1u);
          return result;
        }
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v35)
        {
          goto LABEL_21;
        }
      }

      return sub_1001CB710(v46);
    }

    result = sub_10077158C();
    if (result)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_1001CB4E8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{

  *(a1 + 40) = a2;
  result = swift_weakAssign();
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1001CB604(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1001CB660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

char *sub_1001CB764(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = sub_10077164C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = *(a1 + 64);
  CGAffineTransformMakeRotation(&v208, v184);
  v209.origin.x = a5 * -0.5;
  v209.origin.y = a6 * -0.5;
  v209.size.width = a5;
  v209.size.height = a6;
  v210 = CGRectApplyAffineTransform(v209, &v208);
  x = v210.origin.x;
  y = v210.origin.y;
  width = v210.size.width;
  v206 = v210.size.width;
  height = v210.size.height;
  v202 = v210.size.height;
  MinX = CGRectGetMinX(v210);
  v197 = a3;
  v211.origin.x = a3;
  v198 = a4;
  v211.origin.y = a4;
  v211.size.width = a5;
  v211.size.height = a6;
  v199 = a6;
  v205 = MinX + CGRectGetMidX(v211);
  v212.origin.x = x;
  v212.origin.y = y;
  v212.size.width = width;
  v212.size.height = height;
  MinY = CGRectGetMinY(v212);
  v213.origin.x = a3;
  v213.origin.y = a4;
  v213.size.width = a5;
  v20 = a5;
  v213.size.height = a6;
  v204 = MinY + CGRectGetMidY(v213);
  v22 = *a1;
  v21 = *(a1 + 8);
  CGAffineTransformMakeRotation(&v208, v184);
  v214.origin.x = v22 * -0.5;
  v214.origin.y = v21 * -0.5;
  v214.size.width = v22;
  v214.size.height = v21;
  v196 = v21;
  v215 = CGRectApplyAffineTransform(v214, &v208);
  v23 = v215.origin.x;
  v24 = v215.origin.y;
  v25 = v215.size.width;
  v26 = v215.size.height;
  v27 = CGRectGetMinX(v215);
  v216.origin.x = 0.0;
  v216.origin.y = 0.0;
  v216.size.width = v22;
  v216.size.height = v21;
  v201 = v27 + CGRectGetMidX(v216);
  v217.origin.x = v23;
  v217.origin.y = v24;
  v217.size.width = v25;
  v217.size.height = v26;
  v28 = CGRectGetMinY(v217);
  v218.origin.x = 0.0;
  v218.origin.y = 0.0;
  v218.size.width = v22;
  v218.size.height = v21;
  v203 = v28 + CGRectGetMidY(v218);
  v29 = *(a1 + 40);
  sub_10000CF78((a1 + 16), v29);
  sub_1000FF02C(v29);
  sub_10076D40C();
  v31 = v30;
  v191 = v30;
  (*(v12 + 8))(v14, v11);
  v32 = *(a1 + 56);
  v194 = v22;
  v33 = v22 + v31;
  v34 = floor(v33 * v32);
  v35 = v197;
  v219.origin.x = v197;
  v36 = v198;
  v219.origin.y = v198;
  v219.size.width = v20;
  v37 = v199;
  v219.size.height = v199;
  MidX = CGRectGetMidX(v219);
  v220.origin.x = v35;
  v220.origin.y = v36;
  v195 = v20;
  v220.size.width = v20;
  v220.size.height = v37;
  MidY = CGRectGetMidY(v220);
  v38 = v184;
  v39 = __sincos_stret(v184);
  v190 = v39.__cosval * v33;
  v189 = v39.__sinval * v33;
  v40 = __sincos_stret(v38 + 3.14159265);
  v193 = v40.__cosval * v33;
  v192 = v40.__sinval * v33;
  v181 = v39.__cosval * v34;
  v180 = v39.__sinval * v34;
  v41 = __sincos_stret(v38 + 1.57079633);
  sinval = v41.__sinval;
  cosval = v41.__cosval;
  v42 = v196 + v191;
  v43 = v201;
  v221.origin.x = v201;
  v44 = v203;
  v221.origin.y = v203;
  v221.size.width = v25;
  v221.size.height = v26;
  v45 = MidX + CGRectGetMidX(v221);
  v222.origin.x = v43;
  v222.origin.y = v44;
  v222.size.width = v25;
  v222.size.height = v26;
  v46 = v45 + CGRectGetWidth(v222) * -0.5;
  v223.origin.x = v43;
  v223.origin.y = v44;
  v223.size.width = v25;
  v223.size.height = v26;
  v47 = MidY + CGRectGetMidY(v223);
  v224.origin.x = v43;
  v224.origin.y = v44;
  v224.size.width = v25;
  v224.size.height = v26;
  v225.origin.y = v47 + CGRectGetHeight(v224) * -0.5;
  v301.origin.x = v205;
  v301.size.width = v206;
  v225.origin.x = v46;
  v301.origin.y = v204;
  v225.size.width = v25;
  v225.size.height = v26;
  v301.size.height = v202;
  v48 = CGRectIntersectsRect(v225, v301);
  v179 = v42;
  MinX = v25;
  v200 = v26;
  if (v48)
  {
    v186 = cosval * v42 + v181;
    v185 = sinval * v42 + v180;
    v49 = _swiftEmptyArrayStorage;
    v50 = 0.5;
    v51 = MidX;
    v52 = MidY;
    v53 = v202;
    v54 = v203;
    v55 = v201;
    do
    {
      cosval = v51;
      v231.origin.x = v55;
      v231.origin.y = v54;
      v231.size.width = v25;
      v231.size.height = v26;
      v58 = v51 + CGRectGetMidX(v231);
      v232.origin.x = v55;
      v232.origin.y = v54;
      v232.size.width = v25;
      v232.size.height = v26;
      v59 = v58 - CGRectGetWidth(v232) * v50;
      v233.origin.x = v55;
      v233.origin.y = v54;
      v233.size.width = v25;
      v233.size.height = v26;
      v191 = v52 + CGRectGetMidY(v233);
      v234.origin.x = v55;
      v234.origin.y = v54;
      v234.size.width = v25;
      v234.size.height = v26;
      v60 = v191 - CGRectGetHeight(v234) * v50;
      v235.origin.x = v59;
      v235.origin.y = v60;
      v235.size.width = v25;
      v235.size.height = v26;
      v303.origin.y = v204;
      v303.origin.x = v205;
      v303.size.width = v206;
      v303.size.height = v53;
      v61 = CGRectIntersectsRect(v235, v303);
      sinval = v52;
      if (v61)
      {
        v191 = cosval;
        v62 = v52;
        do
        {
          v241.origin.x = v59;
          v241.origin.y = v60;
          v241.size.width = v25;
          v241.size.height = v26;
          v305.origin.x = v197;
          v305.origin.y = v198;
          v305.size.width = v195;
          v305.size.height = v199;
          if (CGRectIntersectsRect(v241, v305))
          {
            v242.origin.x = 0.0;
            v242.origin.y = 0.0;
            v72 = v194;
            v242.size.width = v194;
            v73 = v196;
            v242.size.height = v196;
            v74 = CGRectGetMidX(v242);
            v243.origin.x = 0.0;
            v243.origin.y = 0.0;
            v243.size.width = v72;
            v243.size.height = v73;
            v75 = CGRectGetWidth(v243);
            v244.origin.x = 0.0;
            v244.origin.y = 0.0;
            v244.size.width = v72;
            v244.size.height = v73;
            v76 = CGRectGetMidY(v244);
            v245.origin.x = 0.0;
            v245.origin.y = 0.0;
            v245.size.width = v72;
            v245.size.height = v73;
            v77 = CGRectGetHeight(v245);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_10049CF8C(0, *(v49 + 2) + 1, 1, v49);
            }

            v79 = *(v49 + 2);
            v78 = *(v49 + 3);
            v64 = v191;
            if (v79 >= v78 >> 1)
            {
              v49 = sub_10049CF8C((v78 > 1), v79 + 1, 1, v49);
            }

            v63 = 0.5;
            *(v49 + 2) = v79 + 1;
            v80 = &v49[32 * v79];
            v80[4] = v64 + v74 - v75 * 0.5;
            v80[5] = v62 + v76 - v77 * 0.5;
            v81 = v196;
            v80[6] = v194;
            v80[7] = v81;
          }

          else
          {
            v63 = 0.5;
            v64 = v191;
          }

          v65 = v190 + v64;
          v62 = v189 + v62;
          v26 = v200;
          v66 = v201;
          v236.origin.x = v201;
          v67 = v203;
          v236.origin.y = v203;
          v25 = MinX;
          v236.size.width = MinX;
          v236.size.height = v200;
          v68 = CGRectGetMidX(v236);
          v191 = v65;
          v69 = v65 + v68;
          v237.origin.x = v66;
          v237.origin.y = v67;
          v237.size.width = v25;
          v237.size.height = v26;
          v59 = v69 - CGRectGetWidth(v237) * v63;
          v238.origin.x = v66;
          v238.origin.y = v67;
          v238.size.width = v25;
          v238.size.height = v26;
          v70 = v62 + CGRectGetMidY(v238);
          v239.origin.x = v66;
          v239.origin.y = v67;
          v239.size.width = v25;
          v239.size.height = v26;
          v60 = v70 - CGRectGetHeight(v239) * v63;
          v240.origin.x = v59;
          v240.origin.y = v60;
          v240.size.width = v25;
          v240.size.height = v26;
          v304.origin.y = v204;
          v304.origin.x = v205;
          v304.size.width = v206;
          v304.size.height = v202;
          v71 = CGRectIntersectsRect(v240, v304);
          v52 = sinval;
        }

        while (v71);
      }

      v82 = v193 + cosval;
      v83 = v192 + v52;
      v246.size.height = v200;
      v84 = v201;
      v246.origin.x = v201;
      v85 = v203;
      v246.origin.y = v203;
      v246.size.width = v25;
      v86 = v82 + CGRectGetMidX(v246);
      v247.origin.x = v84;
      v247.origin.y = v85;
      v247.size.width = v25;
      v247.size.height = v200;
      v87 = v86 - CGRectGetWidth(v247) * 0.5;
      v248.origin.x = v84;
      v248.origin.y = v85;
      v248.size.width = v25;
      v248.size.height = v200;
      v88 = v83 + CGRectGetMidY(v248);
      v249.origin.x = v84;
      v249.origin.y = v85;
      v26 = v200;
      v249.size.width = v25;
      v249.size.height = v200;
      v89 = v88 - CGRectGetHeight(v249) * 0.5;
      v250.origin.x = v87;
      v250.origin.y = v89;
      v250.size.width = v25;
      v250.size.height = v26;
      v306.origin.y = v204;
      v306.origin.x = v205;
      v306.size.width = v206;
      v306.size.height = v202;
      if (CGRectIntersectsRect(v250, v306))
      {
        do
        {
          v256.origin.x = v87;
          v256.origin.y = v89;
          v256.size.width = v25;
          v256.size.height = v26;
          v308.origin.x = v197;
          v308.origin.y = v198;
          v308.size.width = v195;
          v308.size.height = v199;
          if (CGRectIntersectsRect(v256, v308))
          {
            v257.origin.x = 0.0;
            v257.origin.y = 0.0;
            v96 = v194;
            v257.size.width = v194;
            v97 = v196;
            v257.size.height = v196;
            v98 = CGRectGetMidX(v257);
            v258.origin.x = 0.0;
            v258.origin.y = 0.0;
            v258.size.width = v96;
            v258.size.height = v97;
            v99 = CGRectGetWidth(v258);
            v259.origin.x = 0.0;
            v259.origin.y = 0.0;
            v259.size.width = v96;
            v259.size.height = v97;
            v191 = CGRectGetMidY(v259);
            v260.origin.x = 0.0;
            v260.origin.y = 0.0;
            v260.size.width = v96;
            v260.size.height = v97;
            v100 = CGRectGetHeight(v260);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_10049CF8C(0, *(v49 + 2) + 1, 1, v49);
            }

            v102 = *(v49 + 2);
            v101 = *(v49 + 3);
            if (v102 >= v101 >> 1)
            {
              v49 = sub_10049CF8C((v101 > 1), v102 + 1, 1, v49);
            }

            v90 = 0.5;
            v103 = v83 + v191 - v100 * 0.5;
            *(v49 + 2) = v102 + 1;
            v104 = &v49[32 * v102];
            v104[4] = v82 + v98 - v99 * 0.5;
            v104[5] = v103;
            v105 = v196;
            v104[6] = v194;
            v104[7] = v105;
          }

          else
          {
            v90 = 0.5;
          }

          v82 = v193 + v82;
          v83 = v192 + v83;
          v91 = v201;
          v251.origin.x = v201;
          v92 = v203;
          v251.origin.y = v203;
          v251.size.width = v25;
          v93 = v200;
          v251.size.height = v200;
          v94 = v82 + CGRectGetMidX(v251);
          v252.origin.x = v91;
          v252.origin.y = v92;
          v252.size.width = MinX;
          v252.size.height = v93;
          v87 = v94 - CGRectGetWidth(v252) * v90;
          v253.origin.x = v91;
          v253.origin.y = v92;
          v253.size.width = MinX;
          v253.size.height = v93;
          v95 = v83 + CGRectGetMidY(v253);
          v254.origin.x = v91;
          v254.origin.y = v92;
          v26 = v93;
          v25 = MinX;
          v254.size.width = MinX;
          v254.size.height = v26;
          v89 = v95 - CGRectGetHeight(v254) * v90;
          v255.origin.x = v87;
          v255.origin.y = v89;
          v255.size.width = v25;
          v255.size.height = v26;
          v307.origin.y = v204;
          v307.origin.x = v205;
          v307.size.width = v206;
          v307.size.height = v202;
        }

        while (CGRectIntersectsRect(v255, v307));
      }

      v51 = v186 + cosval;
      v52 = v185 + sinval;
      v55 = v201;
      v226.origin.x = v201;
      v54 = v203;
      v226.origin.y = v203;
      v226.size.width = v25;
      v226.size.height = v26;
      v56 = v51 + CGRectGetMidX(v226);
      v227.origin.x = v55;
      v227.origin.y = v54;
      v227.size.width = v25;
      v227.size.height = v26;
      v50 = 0.5;
      v191 = v56 - CGRectGetWidth(v227) * 0.5;
      v228.origin.x = v55;
      v228.origin.y = v54;
      v228.size.width = v25;
      v228.size.height = v26;
      v57 = v52 + CGRectGetMidY(v228);
      v229.origin.x = v55;
      v229.origin.y = v54;
      v229.size.width = v25;
      v229.size.height = v26;
      v230.origin.y = v57 - CGRectGetHeight(v229) * 0.5;
      v230.origin.x = v191;
      v230.size.width = v25;
      v230.size.height = v26;
      v302.origin.y = v204;
      v302.origin.x = v205;
      v302.size.width = v206;
      v53 = v202;
      v302.size.height = v202;
    }

    while (CGRectIntersectsRect(v230, v302));
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
    v54 = v203;
    v55 = v201;
  }

  v106 = __sincos_stret(v184 + -1.57079633);
  v186 = v106.__cosval * v179 - v181;
  v107 = MidX + v186;
  v185 = v106.__sinval * v179 - v180;
  v108 = MidY + v185;
  v261.origin.x = v55;
  v261.origin.y = v54;
  v261.size.width = v25;
  v261.size.height = v26;
  v109 = CGRectGetMidX(v261);
  sinval = v107;
  v110 = v107 + v109;
  v262.origin.x = v55;
  v262.origin.y = v54;
  v262.size.width = v25;
  v262.size.height = v26;
  v111 = v55;
  v112 = v110 - CGRectGetWidth(v262) * 0.5;
  v263.origin.x = v111;
  v263.origin.y = v54;
  v263.size.width = v25;
  v263.size.height = v26;
  v113 = CGRectGetMidY(v263);
  cosval = v108;
  v114 = v108 + v113;
  v264.origin.x = v111;
  v264.origin.y = v54;
  v264.size.width = v25;
  v264.size.height = v26;
  v265.origin.y = v114 - CGRectGetHeight(v264) * 0.5;
  v309.size.height = v202;
  v265.origin.x = v112;
  v265.size.width = v25;
  v265.size.height = v26;
  v309.origin.y = v204;
  v309.origin.x = v205;
  v309.size.width = v206;
  if (CGRectIntersectsRect(v265, v309))
  {
    v115 = sinval;
    v116 = cosval;
    v117 = v201;
    do
    {
      v271.origin.x = v117;
      v271.origin.y = v54;
      v271.size.width = v25;
      v271.size.height = v26;
      v121 = v115 + CGRectGetMidX(v271);
      v272.origin.x = v117;
      v272.origin.y = v54;
      v272.size.width = v25;
      v272.size.height = v26;
      v122 = v121 - CGRectGetWidth(v272) * 0.5;
      v273.origin.x = v117;
      v273.origin.y = v54;
      v273.size.width = v25;
      v273.size.height = v26;
      v123 = v116 + CGRectGetMidY(v273);
      v274.origin.x = v117;
      v274.origin.y = v54;
      v274.size.width = v25;
      v274.size.height = v26;
      v124 = v123 - CGRectGetHeight(v274) * 0.5;
      v275.origin.x = v122;
      v275.origin.y = v124;
      v275.size.width = v25;
      v275.size.height = v26;
      v311.origin.y = v204;
      v311.origin.x = v205;
      v311.size.width = v206;
      v311.size.height = v202;
      v125 = CGRectIntersectsRect(v275, v311);
      sinval = v115;
      cosval = v116;
      if (v125)
      {
        v191 = v115;
        do
        {
          v281.origin.x = v122;
          v281.origin.y = v124;
          v281.size.width = v25;
          v281.size.height = v26;
          v313.origin.x = v197;
          v313.origin.y = v198;
          v313.size.width = v195;
          v313.size.height = v199;
          if (CGRectIntersectsRect(v281, v313))
          {
            v282.origin.x = 0.0;
            v282.origin.y = 0.0;
            v134 = v194;
            v282.size.width = v194;
            v135 = v196;
            v282.size.height = v196;
            v136 = CGRectGetMidX(v282);
            v283.origin.x = 0.0;
            v283.origin.y = 0.0;
            v283.size.width = v134;
            v283.size.height = v135;
            v137 = CGRectGetWidth(v283);
            v284.origin.x = 0.0;
            v284.origin.y = 0.0;
            v284.size.width = v134;
            v284.size.height = v135;
            v138 = CGRectGetMidY(v284);
            v285.origin.x = 0.0;
            v285.origin.y = 0.0;
            v285.size.width = v134;
            v285.size.height = v135;
            v139 = CGRectGetHeight(v285);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_10049CF8C(0, *(v49 + 2) + 1, 1, v49);
            }

            v141 = *(v49 + 2);
            v140 = *(v49 + 3);
            v142 = 0.5;
            v127 = v191;
            if (v141 >= v140 >> 1)
            {
              v147 = sub_10049CF8C((v140 > 1), v141 + 1, 1, v49);
              v142 = 0.5;
              v49 = v147;
            }

            v143 = v127 + v136 - v137 * v142;
            v144 = v116 + v138;
            v126 = 0.5;
            *(v49 + 2) = v141 + 1;
            v145 = &v49[32 * v141];
            v145[4] = v143;
            v145[5] = v144 - v139 * 0.5;
            v146 = v196;
            v145[6] = v194;
            v145[7] = v146;
          }

          else
          {
            v126 = 0.5;
            v127 = v191;
          }

          v128 = v190 + v127;
          v116 = v189 + v116;
          v26 = v200;
          v129 = v201;
          v276.origin.x = v201;
          v130 = v203;
          v276.origin.y = v203;
          v25 = MinX;
          v276.size.width = MinX;
          v276.size.height = v200;
          v131 = CGRectGetMidX(v276);
          v191 = v128;
          v132 = v128 + v131;
          v277.origin.x = v129;
          v277.origin.y = v130;
          v277.size.width = v25;
          v277.size.height = v26;
          v122 = v132 - CGRectGetWidth(v277) * v126;
          v278.origin.x = v129;
          v278.origin.y = v130;
          v278.size.width = v25;
          v278.size.height = v26;
          v133 = v116 + CGRectGetMidY(v278);
          v279.origin.x = v129;
          v279.origin.y = v130;
          v279.size.width = v25;
          v279.size.height = v26;
          v124 = v133 - CGRectGetHeight(v279) * v126;
          v280.origin.x = v122;
          v280.origin.y = v124;
          v280.size.width = v25;
          v280.size.height = v26;
          v312.origin.y = v204;
          v312.origin.x = v205;
          v312.size.width = v206;
          v312.size.height = v202;
        }

        while (CGRectIntersectsRect(v280, v312));
      }

      v148 = v193 + sinval;
      v149 = v192 + cosval;
      v150 = v201;
      v286.origin.x = v201;
      v286.origin.y = v203;
      v286.size.width = v25;
      v286.size.height = v26;
      v151 = CGRectGetMidX(v286);
      v191 = v148;
      v152 = v148 + v151;
      v287.origin.x = v150;
      v287.origin.y = v203;
      v287.size.width = v25;
      v287.size.height = v26;
      v153 = v152 - CGRectGetWidth(v287) * 0.5;
      v288.origin.x = v150;
      v288.origin.y = v203;
      v288.size.width = v25;
      v288.size.height = v26;
      v154 = v149 + CGRectGetMidY(v288);
      v289.origin.x = v150;
      v54 = v203;
      v289.origin.y = v203;
      v289.size.width = v25;
      v289.size.height = v26;
      v155 = v154 - CGRectGetHeight(v289) * 0.5;
      v290.origin.x = v153;
      v290.origin.y = v155;
      v290.size.width = v25;
      v290.size.height = v26;
      v314.origin.y = v204;
      v314.origin.x = v205;
      v314.size.width = v206;
      v314.size.height = v202;
      if (CGRectIntersectsRect(v290, v314))
      {
        do
        {
          v296.origin.x = v153;
          v296.origin.y = v155;
          v296.size.width = v25;
          v296.size.height = v26;
          v316.origin.x = v197;
          v316.origin.y = v198;
          v316.size.width = v195;
          v316.size.height = v199;
          if (CGRectIntersectsRect(v296, v316))
          {
            v297.origin.x = 0.0;
            v297.origin.y = 0.0;
            v163 = v194;
            v297.size.width = v194;
            v164 = v196;
            v297.size.height = v196;
            v165 = CGRectGetMidX(v297);
            v298.origin.x = 0.0;
            v298.origin.y = 0.0;
            v298.size.width = v163;
            v298.size.height = v164;
            v166 = CGRectGetWidth(v298);
            v299.origin.x = 0.0;
            v299.origin.y = 0.0;
            v299.size.width = v163;
            v299.size.height = v164;
            v167 = CGRectGetMidY(v299);
            v300.origin.x = 0.0;
            v300.origin.y = 0.0;
            v300.size.width = v163;
            v300.size.height = v164;
            v168 = CGRectGetHeight(v300);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_10049CF8C(0, *(v49 + 2) + 1, 1, v49);
            }

            v170 = *(v49 + 2);
            v169 = *(v49 + 3);
            v171 = 0.5;
            v157 = v191;
            if (v170 >= v169 >> 1)
            {
              v176 = sub_10049CF8C((v169 > 1), v170 + 1, 1, v49);
              v171 = 0.5;
              v49 = v176;
            }

            v172 = v157 + v165 - v166 * v171;
            v173 = v149 + v167;
            v156 = 0.5;
            *(v49 + 2) = v170 + 1;
            v174 = &v49[32 * v170];
            v174[4] = v172;
            v174[5] = v173 - v168 * 0.5;
            v175 = v196;
            v174[6] = v194;
            v174[7] = v175;
          }

          else
          {
            v156 = 0.5;
            v157 = v191;
          }

          v158 = v193 + v157;
          v149 = v192 + v149;
          v26 = v200;
          v159 = v201;
          v291.origin.x = v201;
          v54 = v203;
          v291.origin.y = v203;
          v25 = MinX;
          v291.size.width = MinX;
          v291.size.height = v200;
          v160 = CGRectGetMidX(v291);
          v191 = v158;
          v161 = v158 + v160;
          v292.origin.x = v159;
          v292.origin.y = v54;
          v292.size.width = v25;
          v292.size.height = v26;
          v153 = v161 - CGRectGetWidth(v292) * v156;
          v293.origin.x = v159;
          v293.origin.y = v54;
          v293.size.width = v25;
          v293.size.height = v26;
          v162 = v149 + CGRectGetMidY(v293);
          v294.origin.x = v159;
          v294.origin.y = v54;
          v294.size.width = v25;
          v294.size.height = v26;
          v155 = v162 - CGRectGetHeight(v294) * v156;
          v295.origin.x = v153;
          v295.origin.y = v155;
          v295.size.width = v25;
          v295.size.height = v26;
          v315.origin.y = v204;
          v315.origin.x = v205;
          v315.size.width = v206;
          v315.size.height = v202;
        }

        while (CGRectIntersectsRect(v295, v315));
      }

      v115 = v186 + sinval;
      v116 = v185 + cosval;
      v117 = v201;
      v266.origin.x = v201;
      v266.origin.y = v54;
      v266.size.width = v25;
      v266.size.height = v26;
      v118 = v115 + CGRectGetMidX(v266);
      v267.origin.x = v117;
      v267.origin.y = v54;
      v267.size.width = v25;
      v267.size.height = v26;
      v119 = v118 - CGRectGetWidth(v267) * 0.5;
      v268.origin.x = v117;
      v268.origin.y = v54;
      v268.size.width = v25;
      v268.size.height = v26;
      v120 = v116 + CGRectGetMidY(v268);
      v269.origin.x = v117;
      v269.origin.y = v54;
      v269.size.width = v25;
      v269.size.height = v26;
      v270.origin.y = v120 - CGRectGetHeight(v269) * 0.5;
      v270.origin.x = v119;
      v270.size.width = v25;
      v270.size.height = v26;
      v310.origin.y = v204;
      v310.origin.x = v205;
      v310.size.width = v206;
      v310.size.height = v202;
    }

    while (CGRectIntersectsRect(v270, v310));
  }

  return v49;
}

void sub_1001CCAC8()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_iconViews) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_layoutMetrics;
  if (qword_10093F9C0 != -1)
  {
    swift_once();
  }

  v2 = v0 + v1;
  v3 = qword_10099D7C0;
  v4 = xmmword_10099D7B0;
  *(v2 + 40) = &type metadata for CGFloat;
  *(v2 + 48) = &protocol witness table for CGFloat;
  *(v2 + 16) = v3;
  v5 = byte_10099D7F8;
  v6 = *algn_10099D7C8;
  v7 = *&qword_10099D7E8;
  *v2 = v4;
  *(v2 + 56) = v6;
  *(v2 + 72) = v7;
  *(v2 + 88) = v5;
  sub_1001CCBC8(&xmmword_10099D7B0, v0 + OBJC_IVAR____TtC20ProductPageExtension19IconArtworkGridView_config);
  sub_10077156C();
  __break(1u);
}

__n128 sub_1001CCC00(uint64_t a1)
{
  result = v1[2];
  *(a1 + 56) = result;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1001CCCA4@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_10077164C();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_10094CD50, &unk_100786030);
  v18 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_100763F9C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B90C();
  sub_1001CD160(&qword_100956710, &type metadata accessor for Action);
  sub_10076332C();
  if (v22[0])
  {
    sub_1007619CC();
    sub_1001CD160(&unk_10094CD60, &type metadata accessor for SearchAdAction);
    sub_10076332C();
    v11 = v22[0];
    if (v22[0])
    {
    }

    if (sub_10076B8FC() && (, !v11))
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      if (qword_10093FCF0 != -1)
      {
        swift_once();
      }

      v14 = sub_10076063C();
      sub_10000A61C(v14, qword_10099E180);
      sub_1007605FC();
      swift_getKeyPath();
      sub_10076338C();

      v24 = v22[0];
      sub_10075FDCC();
      swift_unknownObjectRelease();
      (*(v18 + 8))(v6, v4);
      sub_10076060C();
      v15 = v23;
      sub_10000CF78(v22, v23);
      swift_getKeyPath();
      sub_10076338C();

      sub_1000FF02C(v15);
      sub_10076D40C();
      swift_unknownObjectRelease();
      (*(v19 + 8))(v3, v20);
      sub_10000CD74(v22);
      v12 = v21;
    }

    else
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      v12 = v21;
    }

    sub_100763FAC();

    v13 = 0;
  }

  else
  {
    v13 = 1;
    v12 = v21;
  }

  v16 = sub_100763FDC();
  return (*(*(v16 - 8) + 56))(v12, v13, 1, v16);
}

uint64_t sub_1001CD160(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchAdTransparencyButton(uint64_t a1)
{
  result = qword_10094CD80;
  if (!qword_10094CD80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1001CD25C()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.525490196 green:0.752941176 blue:0.992156863 alpha:1.0];
  qword_10099D800 = result;
  return result;
}

char *sub_1001CD2B0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076F9AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - v7;
  v9 = qword_10094CD70;
  *&v0[v9] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = &v0[qword_10094CD78];
  *v10 = 0;
  *(v10 + 1) = 0;
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = qword_100940EA8;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_10076D3DC();
  v15 = sub_10000A61C(v14, qword_1009A19F0);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v8, v15, v14);
  (*(v16 + 56))(v8, 0, 1, v14);
  sub_10076311C();
  v17 = qword_10094CD70;
  [*&v13[qword_10094CD70] setClipsToBounds:1];
  v18 = qword_10093F9C8;
  v19 = *&v13[v17];
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setBackgroundColor:qword_10099D800];

  [*&v13[v17] _setContinuousCornerRadius:4.0];
  [v13 addSubview:*&v13[v17]];
  v20 = objc_opt_self();
  v21 = v13;
  v22 = [v20 whiteColor];
  [v21 setTitleColor:v22 forState:0];

  v23 = [v20 whiteColor];
  sub_10076313C();
  sub_100770B7C();
  v24 = [v23 colorWithAlphaComponent:?];

  [v21 setTitleColor:v24 forState:4];
  v25 = v21;
  sub_1007641DC();

  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  sub_10076F95C();
  sub_1000258C0(v27);
  sub_1000258C0(v28);
  sub_100770B9C();
  (*(v3 + 8))(v5, v2);
  [v25 addTarget:v25 action:"didTapButton" forControlEvents:64];

  [v25 _setWantsAccessibilityUnderline:0];
  return v25;
}

double sub_1001CD728(char *a1)
{
  v1 = *&a1[qword_10094CD78];
  if (v1)
  {
    v2 = *&a1[qword_10094CD78 + 8];
    v3 = a1;
    v4 = sub_10001CE50(v1, v2);
    v1(v4);

    return sub_1000167E0(v1, v2);
  }

  return result;
}

double sub_1001CD7AC(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = [v1 titleForState:0];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10076FF9C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_1001CDAF4(v2, v5, v7);

  return v8;
}

id sub_1001CD870()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v1 = [v0 traitCollection];
  v2 = [v0 titleForState:0];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10076FF9C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_1001CDAF4(v1, v4, v6);

  v7 = *&v0[qword_10094CD70];
  [v7 frame];
  [v7 setFrame:?];
  [v0 bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  return [v7 setCenter:{MidX, CGRectGetMidY(v16)}];
}

void sub_1001CD9E0(void *a1)
{
  v1 = a1;
  sub_1001CD870();
}

double sub_1001CDA58()
{
  v1 = *(v0 + qword_10094CD78);
  v2 = *(v0 + qword_10094CD78 + 8);

  return sub_1000167E0(v1, v2);
}

double sub_1001CDA9C(uint64_t a1)
{
  v2 = *(a1 + qword_10094CD78);
  v3 = *(a1 + qword_10094CD78 + 8);

  return sub_1000167E0(v2, v3);
}

double sub_1001CDAF4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10076997C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v21._object = 0x80000001007D8160;
    v21._countAndFlagsBits = 0xD00000000000001FLL;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_1007622EC(v21, v22);
  }

  sub_10005312C();
  v9 = qword_100940EA8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  sub_10000A61C(v10, qword_1009A19F0);
  sub_100770B3C();
  v11 = sub_10076C04C();
  v20[3] = v11;
  v20[4] = sub_1001CDE08(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v12 = sub_10000DB7C(v20);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.measurement_with_labelplaceholder(_:), v11);
  sub_10076C90C();
  sub_10000CD74(v20);
  sub_10076996C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007841E0;
  *(v13 + 32) = a1;
  v14 = a1;
  v15 = sub_10076DEEC();
  sub_1001CDE08(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
  sub_10076D2AC();
  v17 = v16;

  (*(v6 + 8))(v8, v5);
  return v17 + 12.0;
}

uint64_t sub_1001CDE08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001CDE50()
{
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  v10 = 0;
  v11 = 0xE000000000000000;
  v12._countAndFlagsBits = sub_1007708FC();
  sub_1007700CC(v12);

  v13._countAndFlagsBits = 95;
  v13._object = 0xE100000000000000;
  sub_1007700CC(v13);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076F4AC();
  (*(v5 + 8))(v7, v4);
  sub_10076B5CC();

  sub_10077151C();
  (*(v1 + 8))(v3, v0);
  return v10;
}

uint64_t sub_1001CE058(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v8 = a2;
  ObjectType = swift_getObjectType();
  v3 = *((swift_isaMask & *v2) + 0x88);
  v4 = sub_10000A5D4(&qword_10094CE28, &qword_1007936B0);
  v5 = sub_100071820(&qword_10094CE30, &qword_10094CE28, &qword_1007936B0, &protocol conformance descriptor for IDView<A, B>);
  return v3(v8, sub_1001D02C4, v7, v4, v5);
}

uint64_t sub_1001CE14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v45 = a2;
  v49 = a4;
  v44 = sub_10076469C();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10076EA6C();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v35 - v8;
  v42 = sub_10076C38C();
  v51 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v35 - v12;
  v13 = sub_10000A5D4(&qword_100942C40, &unk_100786C80);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076F4AC();
  (*(v18 + 8))(v20, v17);
  v37 = v55;
  swift_getKeyPath();
  sub_10076338C();

  v36 = *(v14 + 56);
  swift_getKeyPath();
  sub_10076338C();

  v54 = 0;
  memset(v53, 0, sizeof(v53));
  sub_1007633BC();
  v21 = v38;
  sub_10076F4AC();
  (*(v39 + 8))(v9, v21);
  v39 = sub_1007633CC();
  v35 = a1;
  sub_1007632FC();
  v22 = sub_10076461C();
  v23 = [v22 preferredContentSizeCategory];

  v24 = v41;
  sub_10076EA5C();
  v25 = *(v43 + 8);
  v26 = v44;
  v25(v6, v44);
  swift_getKeyPath();
  v27 = v40;
  sub_10076338C();

  sub_10076C2FC();
  v28 = *(v51 + 8);
  v51 += 8;
  v29 = v27;
  v30 = v42;
  v28(v29, v42);
  sub_1007632FC();
  sub_1001CE7D0(v6, v45);
  v25(v6, v26);
  v31 = v36;
  v32 = v24;
  v33 = v50;
  sub_10076258C();

  (*(v46 + 8))(v32, v48);
  sub_10000CD74(v52);
  sub_10000CFBC(v53, &qword_10094CE38, qword_100793718);
  v28(v33, v30);
  sub_10000CFBC(&v16[v31], &qword_1009499A0, &qword_1007848B0);
  sub_10000CFBC(v16, &qword_1009499A0, &qword_1007848B0);
  sub_10000A5D4(&qword_10094CE28, &qword_1007936B0);
  return sub_1007633AC();
}

double sub_1001CE7D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10076B5BC();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076658C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001CFC34(v14);
  sub_10076460C();
  v15 = sub_10076657C();
  v17 = v16;
  (*(v8 + 8))(v10, v7);
  if (v17)
  {
    sub_10076468C();
    v18 = v26;
    sub_10076F4AC();
    (*(v25 + 8))(v6, v18);
    v19 = v27;
    sub_10076B5CC();

    v20 = COERCE_DOUBLE(sub_10076656C());
    v22 = v21;
    (*(v28 + 8))(v19, v29);
    (*(v12 + 8))(v14, v11);
    if (v22)
    {
      return 0.0;
    }

    else
    {
      return v20;
    }
  }

  else
  {
    v23 = *&v15;
    (*(v12 + 8))(v14, v11);
  }

  return v23;
}

uint64_t sub_1001CEB1C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11[0] = a3;
  v11[1] = &type metadata for EmptyView;
  v11[2] = a4;
  v11[3] = &protocol witness table for EmptyView;
  v6 = sub_10076ECAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10076EC9C();
  sub_10076ECFC();
  a5[3] = v6;
  a5[4] = swift_getWitnessTable();
  sub_10000DB7C(a5);
  sub_10076EC8C();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001CEC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v12 = *((swift_isaMask & *v5) + 0x80);
  swift_getOpaqueTypeMetadata2();
  sub_10076F64C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23[2] = OpaqueTypeConformance2;
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000CE78(&qword_10094CE10, &unk_100793670);
  sub_10076EA7C();
  sub_10000CE78(&qword_10094CE18, &qword_10079D510);
  v9 = sub_10076EA7C();
  v23[0] = OpaqueTypeMetadata2;
  v23[1] = v8;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_100071820(&unk_100956770, &qword_10094CE10, &unk_100793670, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_100071820(&qword_100956780, &qword_10094CE18, &qword_10079D510, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v10 = swift_getWitnessTable();
  v12(v23, sub_1001D0264, v13, v9, v10);
  return sub_1007707FC();
}

uint64_t sub_1001CEF04@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v62 = a3;
  v63 = a5;
  v57 = a2;
  v59 = a1;
  v61 = *(a4 - 8);
  __chkstk_darwin(a1);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v8;
  v69 = v9;
  v10 = v9;
  v51 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v43 - v12;
  v14 = sub_10076F64C();
  v68 = a4;
  v69 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = OpaqueTypeMetadata2;
  v69 = v14;
  v16 = v14;
  v45 = v14;
  v70 = OpaqueTypeConformance2;
  v17 = OpaqueTypeConformance2;
  v46 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v52 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v68 = OpaqueTypeMetadata2;
  v69 = v16;
  v70 = v17;
  v47 = swift_getOpaqueTypeConformance2();
  v68 = v18;
  v69 = v47;
  v50 = &opaque type descriptor for <<opaque return type of View.intentDispatcher(from:)>>;
  v48 = swift_getOpaqueTypeMetadata2();
  v54 = *(v48 - 8);
  __chkstk_darwin(v48);
  v22 = &v43 - v21;
  sub_10000CE78(&qword_10094CE10, &unk_100793670);
  v53 = sub_10076EA7C();
  v60 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = &v43 - v23;
  sub_10000CE78(&qword_10094CE18, &qword_10079D510);
  v24 = sub_10076EA7C();
  v58 = *(v24 - 8);
  __chkstk_darwin(v24);
  v49 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v55 = &v43 - v28;
  v59(v27);
  sub_10076EE0C();
  (*(v61 + 8))(v7, a4);
  swift_checkMetadataState();
  sub_10076EDDC();
  (*(v56 + 8))(v13, OpaqueTypeMetadata2);
  v29 = v47;
  sub_10076EDEC();
  (*(v52 + 8))(v20, v18);
  sub_100760C4C();
  sub_10076FC1C();
  v68 = v18;
  v69 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  sub_1001D0274(&qword_10094CE20, &type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
  v31 = v44;
  v32 = v48;
  sub_10076EEBC();

  (*(v54 + 8))(v22, v32);
  swift_getKeyPath();
  v68 = *(v62 + OBJC_IVAR____TtC20ProductPageExtension22SwiftUIViewHostingCell_flowPreview);
  v33 = sub_100071820(&unk_100956770, &qword_10094CE10, &unk_100793670, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v66 = v30;
  v67 = v33;

  v34 = v53;
  WitnessTable = swift_getWitnessTable();
  v36 = v49;
  sub_10076EE4C();

  (*(v60 + 8))(v31, v34);
  v37 = sub_100071820(&qword_100956780, &qword_10094CE18, &qword_10079D510, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v64 = WitnessTable;
  v65 = v37;
  swift_getWitnessTable();
  v38 = v58;
  v39 = *(v58 + 16);
  v40 = v55;
  v39(v55, v36, v24);
  v41 = *(v38 + 8);
  v41(v36, v24);
  v39(v63, v40, v24);
  return (v41)(v40, v24);
}

id sub_1001CF860()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIViewHostingCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SwiftUIViewHostingCell(uint64_t a1)
{
  result = qword_10094CDF8;
  if (!qword_10094CDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CF948(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001CFA50(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = sub_10076678C();
  v6 = __chkstk_darwin(v5);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *a4, v6);
  return sub_10076679C();
}

uint64_t sub_1001CFB2C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_10076678C();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *a3, v5);
  return sub_10076679C();
}

id sub_1001CFBFC()
{
  v1 = [v0 contentView];

  return v1;
}

uint64_t sub_1001CFC34@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_10076EA6C();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v3 - 8);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = sub_10076B5BC();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = sub_10076C38C();
  v30 = *(v18 - 8);
  v31 = v18;
  __chkstk_darwin(v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076468C();
  sub_10076F4AC();
  v21 = *(v12 + 8);
  v21(v17, v11);
  sub_10076468C();
  sub_10076F4AC();
  v21(v14, v11);
  sub_10076B5CC();

  v22 = v29;
  sub_10076463C();
  sub_10076C24C();
  sub_10076C26C();
  v23 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  [v23 scaledValueForValue:1.0];

  v24 = sub_10076461C();
  v25 = [v24 preferredContentSizeCategory];

  v26 = v32;
  sub_10076EA5C();
  sub_10076655C();

  (*(v36 + 8))(v26, v37);
  sub_10000CFBC(v22, &qword_1009499A0, &qword_1007848B0);
  sub_10000CFBC(v7, &qword_1009499A0, &qword_1007848B0);
  (*(v33 + 8))(v10, v34);
  return (*(v30 + 8))(v20, v31);
}

uint64_t sub_1001D00E0(__n128 a1)
{
  v1 = sub_10076658C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_1001CFC34(&v11 - v6);
  (*(v2 + 32))(v4, v7, v1);
  v8 = (*(v2 + 88))(v4, v1);
  if (v8 == enum case for ComponentHeightFactory.ComponentHeight.constant(_:))
  {
    return 0;
  }

  if (v8 == enum case for ComponentHeightFactory.ComponentHeight.aspectRatio(_:) || v8 != enum case for ComponentHeightFactory.ComponentHeight.auto(_:))
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return 1;
}

uint64_t sub_1001D0274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001D02F0(uint64_t a1, uint64_t a2)
{
  v34[1] = a2;
  v3 = sub_100766EDC();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34[0] = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = v34 - v6;
  __chkstk_darwin(v7);
  v37 = v34 - v8;
  v9 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v9);
  v38 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_10094A890, &unk_100786A70);
  __chkstk_darwin(v11 - 8);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v34 - v15;
  v17 = type metadata accessor for FlowDestination(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v34 - v22;

  sub_10076B87C();
  sub_10012062C(a1, &v41, v16);
  v24 = *(v18 + 48);
  if (v24(v16, 1, v17) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v24(v16, 1, v17) != 1)
    {
      sub_10000CFBC(v16, &unk_10094A890, &unk_100786A70);
    }
  }

  else
  {
    sub_10005DAD8(v16, v23, v25);
  }

  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v26 = 0;
  }

  else
  {
    sub_10075F5BC();
    sub_10075F5AC();

    sub_10076B87C();
    sub_10012062C(a1, &v41, v13);
    if (v24(v13, 1, v17) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v24(v13, 1, v17) != 1)
      {
        sub_10000CFBC(v13, &unk_10094A890, &unk_100786A70);
      }
    }

    else
    {
      sub_10005DAD8(v13, v20, v27);
    }

    sub_1001489F0(v37);
    sub_1001D1EF8(v20, type metadata accessor for FlowDestination);
    v28 = v35;
    v29 = *(v35 + 104);
    v29(v36, enum case for FlowPresentationContext.push(_:), v3);
    sub_1001D1FE0(&qword_10094A530, &protocol conformance descriptor for FlowPresentationContext);
    sub_10077018C();
    sub_10077018C();
    if (v41 == v39 && v42 == v40)
    {
      v30 = 1;
    }

    else
    {
      v30 = sub_10077167C();
    }

    v31 = *(v28 + 8);
    v31(v36, v3);

    if (v30)
    {
      v31(v37, v3);
      sub_1001D1EF8(v38, type metadata accessor for FlowPresentationHints);
      v26 = 1;
    }

    else
    {
      v32 = v34[0];
      v29(v34[0], enum case for FlowPresentationContext.replace(_:), v3);
      sub_10077018C();
      sub_10077018C();
      if (v41 == v39 && v42 == v40)
      {
        v26 = 1;
      }

      else
      {
        v26 = sub_10077167C();
      }

      v31(v32, v3);
      v31(v37, v3);
      sub_1001D1EF8(v38, type metadata accessor for FlowPresentationHints);
    }
  }

  sub_1001D1EF8(v23, type metadata accessor for FlowDestination);
  return v26 & 1;
}

uint64_t sub_1001D08F4(uint64_t a1, void *a2)
{
  v4 = sub_100765F6C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100766EDC();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 viewControllers];
  sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
  v14 = sub_1007701BC();

  if (v14 >> 62)
  {
    v15 = sub_10077158C();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    (*(v9 + 104))(v12, enum case for FlowPresentationContext.replace(_:), v8);
    sub_1001D1FE0(&qword_10094CE48, &protocol conformance descriptor for FlowPresentationContext);
    v16 = sub_10076FF1C();
    (*(v9 + 8))(v12, v8);
    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for FlowPresentationHints(0);
  (*(v5 + 16))(v7, a1 + *(v18 + 20), v4);
  v19 = (*(v5 + 88))(v7, v4);
  if (v19 != enum case for FlowAnimationBehavior.infer(_:))
  {
    if (v19 == enum case for FlowAnimationBehavior.never(_:))
    {
      v17 = 0;
    }

    else if (v19 == enum case for FlowAnimationBehavior.always(_:))
    {
      v17 = 1;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  return v17 & 1;
}

uint64_t sub_1001D0BDC(uint64_t a1, void *a2, void *a3)
{
  v110 = a3;
  v105 = sub_10076F50C();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v6 - 8);
  v109 = &v102 - v7;
  v113 = sub_100766EDC();
  v114 = *(v113 - 8);
  __chkstk_darwin(v113);
  v102 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v111 = &v102 - v10;
  __chkstk_darwin(v11);
  v115 = &v102 - v12;
  v13 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v13);
  v116 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_10094A890, &unk_100786A70);
  __chkstk_darwin(v15 - 8);
  v107 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v102 - v18;
  v20 = type metadata accessor for FlowDestination(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = &v102 - v25;

  sub_10076B87C();
  sub_10012062C(a1, &v118, v19);
  v27 = *(v21 + 48);
  v28 = v27(v19, 1, v20);
  v108 = v23;
  v106 = v27;
  if (v28 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v27(v19, 1, v20) != 1)
    {
      sub_10000CFBC(v19, &unk_10094A890, &unk_100786A70);
    }
  }

  else
  {
    sub_10005DAD8(v19, v26, v29);
  }

  sub_10075F5BC();
  sub_10075F5AC();
  v30 = [a2 traitCollection];
  v31 = v115;
  v112 = v26;
  sub_1001489F0(v115);

  v32 = sub_100376418(a2);
  if (!v32)
  {
    sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
    sub_1001D1EA4();
    swift_allocError();
    v43 = sub_10076FC7C();
    (*(v114 + 8))(v31, v113);
LABEL_69:
    v100 = v112;
    sub_1001D1EF8(v116, type metadata accessor for FlowPresentationHints);
    sub_1001D1EF8(v100, type metadata accessor for FlowDestination);
    return v43;
  }

  v33 = v32;
  v34 = [v33 traitCollection];
  v124 = v33;
  sub_100016F40(0, &qword_100944C68, UINavigationController_ptr);
  v35 = v33;
  sub_10000A5D4(&qword_100944C70, &qword_100786A80);
  v36 = swift_dynamicCast();
  v37 = v108;
  if ((v36 & 1) == 0)
  {
    *&v120 = 0;
    v118 = 0u;
    v119 = 0u;
  }

  sub_10076B87C();
  v38 = v107;
  sub_10012062C(a1, v117, v107);
  v39 = v106;
  if (v106(v38, 1, v20) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v41 = v39(v38, 1, v20);
    v42 = v114;
    if (v41 != 1)
    {
      sub_10000CFBC(v38, &unk_10094A890, &unk_100786A70);
    }
  }

  else
  {
    sub_10005DAD8(v38, v37, v40);
    v42 = v114;
  }

  v44 = sub_10075F57C();
  v46 = v45;
  v47 = v109;
  sub_10075F59C();
  v48 = sub_10048B0C0(v37, v34, v44, v46, v47, &v118, v110, 1);

  sub_10000CFBC(v47, &unk_100958150, &unk_100786630);
  sub_1001D1EF8(v37, type metadata accessor for FlowDestination);
  sub_10000CFBC(&v118, &unk_10094A8A0, &unk_10078DB90);
  if (!v48)
  {

    sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
    (*(v104 + 104))(v103, enum case for ActionOutcome.unsupported(_:), v105);
    v43 = sub_10076FC8C();

    (*(v42 + 8))(v115, v113);
    goto LABEL_69;
  }

  v49 = [v35 presentingViewController];

  v50 = v113;
  v110 = v35;
  if (!v49)
  {
    goto LABEL_33;
  }

  v51 = [v35 viewControllers];
  sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
  v52 = sub_1007701BC();

  if (!(v52 >> 62))
  {
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_32:

LABEL_33:
    v65 = sub_1001D08F4(v116, v35);
    v66 = *(v42 + 104);
    v66(v111, enum case for FlowPresentationContext.push(_:), v50);
    sub_1001D1FE0(&qword_10094A530, &protocol conformance descriptor for FlowPresentationContext);
    sub_10077018C();
    sub_10077018C();
    LODWORD(v114) = v65;
    if (v118 == v117[0])
    {
      v67 = 1;
    }

    else
    {
      v67 = sub_10077167C();
    }

    v34 = *(v42 + 8);
    (v34)(v111, v50);

    if (v67)
    {
      [v48 setModalPresentationCapturesStatusBarAppearance:1];
      v118 = xmmword_10094FFD8;
      v119 = xmmword_10094FFE8;
      v120 = xmmword_10094FFF8;
      v121 = xmmword_100950008;
      v122 = xmmword_100950018;
      v68 = qword_100950028;
      v123 = qword_100950028;
      v69 = BYTE8(xmmword_10094FFF8);
      v70 = v115;
      v71 = v110;
      if (BYTE8(xmmword_10094FFF8) != 255)
      {
        v72 = v118;
        v74 = v119;
        v73 = *&v120;
        v75 = v121;
        v76 = v122;
        v77 = v118;
        v78 = [v48 popoverPresentationController];
        if (v78)
        {
          v79 = v78;
          if (v69)
          {
            sub_10014F864(&v118, v117);
            v80 = v79;
            [v80 setSourceView:v72];
            v81 = v80;
            v71 = v110;
            [v81 setSourceRect:{*(&v72 + 1), v74, v73}];
            sub_10000CFBC(&v118, &unk_1009505F0, &qword_1007A2110);
          }

          else
          {
            [v78 setBarButtonItem:v72];
          }

          [v79 setPopoverLayoutMargins:{v75, v76}];
          [v79 setPermittedArrowDirections:v68];
        }

        else
        {
          if (qword_1009412E8 != -1)
          {
            swift_once();
          }

          v99 = sub_10076FD4C();
          sub_10000A61C(v99, qword_1009A2600);
          sub_10000A5D4(&unk_100942A60, &unk_100784760);
          sub_10076F33C();
          *(swift_allocObject() + 16) = xmmword_100783DD0;
          sub_10076F27C();
          sub_10076FBFC();
        }

        sub_10000CFBC(&v118, &unk_1009505F0, &qword_1007A2110);
      }

      [v71 pushViewController:v48 animated:v114 & 1];
      goto LABEL_68;
    }

    v82 = v102;
    v66(v102, enum case for FlowPresentationContext.replace(_:), v50);
    v70 = v115;
    sub_10077018C();
    sub_10077018C();
    if (v118 == v117[0])
    {
      (v34)(v82, v50);

      v71 = v110;
    }

    else
    {
      v83 = sub_10077167C();
      (v34)(v82, v50);

      v71 = v110;
      if ((v83 & 1) == 0)
      {
LABEL_68:
        sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
        (*(v104 + 104))(v103, enum case for ActionOutcome.performed(_:), v105);
        v43 = sub_10076FC8C();

        (v34)(v70, v50);
        goto LABEL_69;
      }
    }

    objc_opt_self();
    v84 = swift_dynamicCastObjCClass();
    if (!v84)
    {
      v92 = [v71 viewControllers];
      sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
      v51 = sub_1007701BC();

      v46 = (v51 >> 62);
      if (!(v51 >> 62))
      {
        if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_55:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v46 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v51 = sub_1004BE250(v51);
        }

        v94 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v94)
        {
          v95 = v94 - 1;
          v46 = *((v51 & 0xFFFFFFFFFFFFFF8) + 8 * v95 + 0x20);
          *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) = v95;
          *&v118 = v51;
          v96 = [v46 tabBarItem];
          [v48 setTabBarItem:v96];

          v97 = v48;
          sub_10077019C();
          if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_60:
            sub_10077025C();
            isa = sub_1007701AC().super.isa;

            v71 = v110;
            [v110 setViewControllers:isa animated:v114 & 1];

            goto LABEL_68;
          }

LABEL_78:
          sub_10077021C();
          goto LABEL_60;
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

LABEL_75:
      if (!sub_10077158C())
      {
        goto LABEL_76;
      }

      goto LABEL_55;
    }

    v52 = v84;
    v51 = v48;
    v85 = [v71 viewControllers];
    v46 = sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
    v35 = sub_1007701BC();

    v47 = v35 >> 62;
    if (!(v35 >> 62))
    {
      v86 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_47:
      v70 = v115;
      if (v86)
      {
        v87 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v47 || (v87 & 1) == 0)
        {
          v35 = sub_1004BE250(v35);
        }

        v88 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v88)
        {
          v89 = v88 - 1;
          v90 = *((v35 & 0xFFFFFFFFFFFFFF8) + 8 * v89 + 0x20);
          *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) = v89;

          v91 = sub_1007701AC().super.isa;

          v71 = v110;
          [v110 setViewControllers:v91];

          [v71 presentViewController:v52 animated:0 completion:0];
          goto LABEL_68;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_75;
    }

LABEL_72:
    v86 = sub_10077158C();
    goto LABEL_47;
  }

  if (!sub_10077158C())
  {
    goto LABEL_32;
  }

LABEL_17:
  if ((v52 & 0xC000000000000001) != 0)
  {
    v53 = sub_10077149C();
  }

  else
  {
    if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_72;
    }

    v53 = *(v52 + 32);
  }

  v54 = v53;

  if ((sub_1003BE8F8(v54) & 1) == 0)
  {
    goto LABEL_23;
  }

  v55 = swift_allocObject();
  v56 = v110;
  *(v55 + 16) = v110;
  v57 = v56;
  if (sub_1003BE8F8(v48))
  {

LABEL_23:

LABEL_30:
    v35 = v110;
    goto LABEL_33;
  }

  v58 = [v48 navigationItem];
  v59 = [v58 rightBarButtonItems];
  if (v59)
  {
    v60 = v59;
    sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
    v61 = sub_1007701BC();
  }

  else
  {
    v61 = _swiftEmptyArrayStorage;
  }

  *&v118 = v61;
  sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
  sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1001D1F90;
  *(v62 + 24) = v55;

  v125.value.super.super.isa = sub_100770F1C();
  v125.is_nil = 0;
  v63.super.super.isa = sub_10077054C(UIBarButtonSystemItemClose, v125, v126).super.super.isa;
  if (!(v61 >> 62) || (result = sub_10077158C(), (result & 0x8000000000000000) == 0))
  {
    sub_10061BDB0(0, 0, v63.super.super.isa);
    v64 = sub_1007701AC().super.isa;

    [v58 setRightBarButtonItems:v64];

    v42 = v114;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

unint64_t sub_1001D1EA4()
{
  result = qword_10094CE40;
  if (!qword_10094CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CE40);
  }

  return result;
}

uint64_t sub_1001D1EF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D1F58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D1FA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001D1FE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100766EDC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001D2038()
{
  result = qword_10094CE50;
  if (!qword_10094CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094CE50);
  }

  return result;
}

uint64_t sub_1001D208C()
{
  v1 = sub_10075DDBC();
  v59 = v1;
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10000A5D4(&unk_100942870, &qword_100784460);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007841E0;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v62 = type metadata accessor for NavigationActionDebugSetting();
  v7 = swift_allocObject();
  v7[7] = 0xD000000000000012;
  v7[8] = 0x80000001007D8220;
  v7[10] = 0;
  v7[11] = 0;
  v7[9] = 0;
  v7[12] = sub_1001D3AF4;
  v7[13] = v6;
  v8 = v0;

  sub_10075DDAC();
  v9 = sub_10075DD8C();
  v11 = v10;
  v12 = *(v2 + 8);
  v12(v4, v1);
  v65 = v9;
  v66 = v11;
  sub_10077140C();

  *(v5 + 32) = v7;
  v67 = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for ActionDebugSetting();
  v14 = swift_allocObject();
  strcpy((v14 + 56), "Reset Welcome");
  *(v14 + 70) = -4864;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = sub_1001D3AFC;
  *(v14 + 112) = v13;
  v15 = v8;

  sub_10075DDAC();
  v16 = sub_10075DD8C();
  v18 = v17;
  v19 = v59;
  (v12)(v4);
  v65 = v16;
  v66 = v18;
  sub_10077140C();

  sub_10077019C();
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  v21 = swift_allocObject();
  *(v21 + 56) = 0xD000000000000018;
  *(v21 + 64) = 0x80000001007D8240;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0u;
  *(v21 + 104) = sub_1001D3B04;
  *(v21 + 112) = v20;
  v22 = v15;

  sub_10075DDAC();
  v23 = sub_10075DD8C();
  v25 = v24;
  v12(v4, v19);
  v65 = v23;
  v66 = v25;
  sub_10077140C();

  sub_10077019C();
  v26 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v64 = v12;
  if (v26 >= v27 >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  v29 = swift_allocObject();
  *(v29 + 56) = 0xD000000000000017;
  *(v29 + 64) = 0x80000001007D8260;
  *(v29 + 72) = 0u;
  *(v29 + 88) = 0u;
  *(v29 + 104) = sub_1001D3B0C;
  *(v29 + 112) = v28;
  v30 = v22;

  sub_10075DDAC();
  v31 = sub_10075DD8C();
  v33 = v32;
  v64(v4, v19);
  v65 = v31;
  v66 = v33;
  sub_10077140C();

  sub_10077019C();
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v61 = v67;
  v34 = swift_allocObject();
  v60 = xmmword_100785D70;
  *(v34 + 16) = xmmword_100785D70;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v35 = swift_allocObject();
  *(v35 + 56) = 0xD00000000000001ELL;
  *(v35 + 64) = 0x80000001007D8280;
  *(v35 + 72) = 0;
  *(v35 + 80) = 0xD00000000000001FLL;
  *(v35 + 88) = 0x80000001007D82A0;
  *(v35 + 96) = 0;
  sub_10075DDAC();
  v36 = sub_10075DD8C();
  v38 = v37;
  v39 = v19;
  v40 = v19;
  v41 = v64;
  v64(v4, v39);
  v65 = v36;
  v66 = v38;
  sub_10077140C();
  *(v34 + 32) = v35;
  v42 = swift_allocObject();
  *(v42 + 16) = v30;
  v43 = swift_allocObject();
  strcpy((v43 + 56), "Edit Triggers");
  *(v43 + 70) = -4864;
  *(v43 + 80) = 0;
  *(v43 + 88) = 0;
  *(v43 + 72) = 0;
  *(v43 + 96) = sub_1001D3B14;
  *(v43 + 104) = v42;
  v44 = v30;

  sub_10075DDAC();
  v45 = sub_10075DD8C();
  v47 = v46;
  v41(v4, v40);
  v65 = v45;
  v66 = v47;
  sub_10077140C();

  *(v34 + 40) = v43;
  v48 = swift_allocObject();
  *(v48 + 16) = v60;
  type metadata accessor for DebugSection();
  v49 = swift_allocObject();
  sub_10075DDAC();
  v50 = sub_10075DD8C();
  v52 = v51;
  v41(v4, v40);
  v49[2] = v50;
  v49[3] = v52;
  v49[4] = 0x737465656853;
  v49[5] = 0xE600000000000000;
  v49[6] = v61;
  *(v48 + 32) = v49;
  v53 = swift_allocObject();
  sub_10075DDAC();
  v54 = sub_10075DD8C();
  v56 = v55;
  v41(v4, v40);
  v53[2] = v54;
  v53[3] = v56;
  v53[4] = 0x7364726143;
  v53[5] = 0xE500000000000000;
  v53[6] = v34;
  *(v48 + 40) = v53;
  return v48;
}

uint64_t sub_1001D2870(uint64_t a1)
{
  v2 = sub_10075F65C();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100765F6C();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100766EDC();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F4FC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = sub_10076C15C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v39 = a1;
  sub_10076F5AC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1000527AC(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.onboarding(_:), v14);
  v25 = sub_10075DB7C();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = sub_10076096C();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v41 = &type metadata for OnboardingConfiguration;
  v40[0] = 0;
  sub_10076F4DC();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v28 = sub_10075F5EC();
  sub_100263C24(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

void sub_1001D2E4C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_10076FF6C();
  v12 = [v2 initWithSuiteName:v3];

  v4 = v12;
  if (!v12)
  {
    v4 = [objc_opt_self() standardUserDefaults];
  }

  v13 = v4;
  sub_10076648C();
  v5 = sub_10076FF6C();
  v6 = sub_10076FF6C();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = sub_10076FF6C();
  v9 = [objc_opt_self() actionWithTitle:v8 style:1 handler:0];

  [v7 addAction:v9];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong presentViewController:v7 animated:1 completion:0];
  }
}

double sub_1001D3030(uint64_t a1, uint64_t a2)
{
  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  type metadata accessor for AdPrivacyOnboardingStep();
  inited = swift_initStackObject();
  *(inited + 24) = 0;

  sub_10077140C();
  v3 = sub_10050D700();
  [v3 setAcknowledgedVersionForPersonalizedAds:0];

  swift_setDeallocating();
  sub_100016C74(inited + 32);
  v4 = sub_10076FF6C();
  v5 = sub_10076FF6C();
  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = sub_10076FF6C();
  v8 = [objc_opt_self() actionWithTitle:v7 style:1 handler:0];

  [v6 addAction:v8];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong presentViewController:v6 animated:1 completion:0];
  }

  return result;
}

void sub_1001D3250(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000A5D4(&unk_10094CE80, qword_100793880);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  sub_10076F73C();
  sub_10076F72C();
  if (qword_10093FBD8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A61C(v2, qword_10094EB28);
  (*(v3 + 16))(v5, v6, v2);
  v14 = 0;
  v15 = 0;
  sub_10076F42C();

  v7 = sub_10076FF6C();
  v8 = sub_10076FF6C();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = sub_10076FF6C();
  v11 = [objc_opt_self() actionWithTitle:v10 style:1 handler:0];

  [v9 addAction:v11];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_1001D34C4(uint64_t a1)
{
  v2 = sub_10075F65C();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100765F6C();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100766EDC();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F4FC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = sub_10076C15C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v39 = a1;
  sub_10076F5AC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1000527AC(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.debugTodayCardTriggers(_:), v14);
  v25 = sub_10075DB7C();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = sub_10076096C();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v40 = 0u;
  v41 = 0u;
  sub_10076F4DC();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v28 = sub_10075F5EC();
  sub_100263C24(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

uint64_t sub_1001D3ABC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D3B2C()
{
  v0 = sub_1007674DC();
  sub_10000DB18(v0, qword_10099D828);
  sub_10000A61C(v0, qword_10099D828);
  if (qword_10093F9F0 != -1)
  {
    swift_once();
  }

  v1 = sub_10076D9AC();
  v2 = sub_10000A61C(v1, qword_10094CEA8);
  v5[3] = v1;
  v5[4] = &protocol witness table for StaticDimension;
  v3 = sub_10000DB7C(v5);
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  return sub_1007674BC();
}