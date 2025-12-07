double sub_1002EFEE4(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  sub_100761EDC();
  if (swift_dynamicCastClass())
  {

    sub_100761EBC();
    v9 = sub_10076C5AC();

    v10 = sub_100761E9C();
    v12 = v11;
    v13 = sub_100761ECC();
    v15 = v14;
    v16 = sub_100761E2C();
    if (qword_100940640 != -1)
    {
      swift_once();
    }

    sub_1002ECDCC(&unk_10099FD58, a2, a4, a5);
    v17 = type metadata accessor for AppPromotionCardView();
    sub_1003444C8(v9, v10, v12, v13, v15, v16, a2, a4, a5, v17, a3);
  }

  else
  {
    sub_10076C52C();
    if (swift_dynamicCastClass())
    {

      sub_10076C50C();
      v18 = sub_10076C5AC();

      v19 = sub_10076C4FC();
      v21 = v20;
      v22 = sub_10076C51C();
      v24 = v23;
      if (qword_100940640 != -1)
      {
        swift_once();
      }

      sub_1002ECDCC(&unk_10099FD58, a2, a4, a5);
      v25 = type metadata accessor for AppPromotionCardView();
      sub_1003444C8(v18, v19, v21, v22, v24, 0, a2, a4, a5, v25, a3);
    }

    else
    {
      return 0.0;
    }
  }

  return a4;
}

double sub_1002F017C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_10075F27C();
  if (v9)
  {
    v16[1] = v9;
    sub_10076B90C();
    sub_10076F64C();
    sub_1002F07F4(&qword_100956710, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    sub_10076F56C();

    v10 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_1002F0390(v8, v3 + v12);
  swift_endAccess();
  v13 = sub_100761EAC();
  sub_1004B1D04(v13, v14);
  return sub_100345560(a1, a2);
}

uint64_t sub_1002F0390(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1002F0400(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_10075F27C();
  if (v9)
  {
    v16[1] = v9;
    sub_10076B90C();
    sub_10076F64C();
    sub_1002F07F4(&qword_100956710, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    sub_10076F56C();

    v10 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_1002F0390(v8, v3 + v12);
  swift_endAccess();
  v13 = sub_10076C4EC();
  sub_1004B1D04(v13, v14);
  return sub_1003463C4(a1, a2);
}

void sub_1002F0614(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  sub_10075FCEC(v8, a3);
  sub_10075FD2C();
  sub_1002F07F4(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100760BFC();
  sub_100760BFC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = qword_1009602D0;
    v6 = Strong;
    v5 = [*(Strong + qword_1009602D0) layer];
    [v5 removeAllAnimations];

    [*&v6[v4] setImage:0];
    type metadata accessor for VideoView(0);
    sub_1002F07F4(&unk_100942840, type metadata accessor for VideoView, &unk_1007B40F8);
    sub_100760BFC();
  }
}

uint64_t sub_1002F07F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1002F08E4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_artworkLoader);
  v9 = OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_pageTraits;
  v10 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_pageTraits);
  v11 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_objectGraph);
  swift_unknownObjectRetain();
  sub_1002F3914(a2, a3, v8, v10, v11, a1);
  swift_unknownObjectRelease();
  v12 = [a2 contentView];
  [*(v4 + v9) pageMarginInsets];
  [v12 layoutMargins];
  [v12 setLayoutMargins:?];

  v13 = [a2 contentView];
  [*(v4 + v9) pageMarginInsets];
  [v13 layoutMargins];
  [v13 setLayoutMargins:?];

  type metadata accessor for SmallLockupCollectionViewTableCell();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setSelectionStyle:0];
  }

  return result;
}

void sub_1002F0E34(void *a1, uint64_t a2)
{
  v5 = sub_10075E11C();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v27 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_shelfDataSource);
  v32 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_objectGraph);
  isa = sub_10075E02C().super.isa;
  v14 = [a1 cellForItemAtIndexPath:isa];

  if (v14)
  {
    v31 = v9;
    swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = v15;
      v30 = a1;
      v17 = sub_10076830C();
      sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
      v27[1] = v17;
      sub_100761B3C();
      v28 = *(v34 + 16);
      v29 = v34 + 16;
      v28(v7, a2, v35);
      sub_10076FDDC();
      v36 = *(v12 + 24);

      sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
      sub_100071820(&qword_1009564C0, &unk_1009520B0, &qword_100790A00, &protocol conformance descriptor for TransientStateStore<A>);
      sub_10076F82C();
      ObjectType = swift_getObjectType();
      v19 = (*(v16 + 88))(v37, v11, v32, ObjectType, v16);
      v20 = v19;
      if (v19)
      {
        sub_100761ACC();
        v21 = v30;
        if ((v20 & 2) == 0)
        {
LABEL_5:
          if ((v20 & 4) == 0)
          {
LABEL_7:

            (*(v33 + 8))(v11, v31);
            sub_10000CD74(v37);
            return;
          }

LABEL_6:
          sub_10000A5D4(&qword_100944C48, &unk_10079AFF0);
          v22 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_100783DD0;
          v28((v23 + v22), a2, v35);
          v24 = sub_1007701AC().super.isa;

          [v21 reloadItemsAtIndexPaths:v24];

          v14 = v24;
          goto LABEL_7;
        }
      }

      else
      {
        v21 = v30;
        if ((v19 & 2) == 0)
        {
          goto LABEL_5;
        }
      }

      v26 = sub_10075E02C().super.isa;
      [v21 deselectItemAtIndexPath:v26 animated:1];

      if ((v20 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  sub_100761ACC();
  v35 = sub_10075E02C().super.isa;
  [a1 deselectItemAtIndexPath:v35 animated:1];
  v25 = v35;
}

id sub_1002F1470()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchasesCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002F173C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1002F17BC(a6);
  }

  return a3(1);
}

uint64_t sub_1002F17BC(uint64_t a1)
{
  v1 = sub_10076593C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  sub_10076829C();
  (*(v2 + 104))(v4, enum case for PurchasesContentMode.hidden(_:), v1);
  sub_1002F90A4(&qword_100952088, &type metadata accessor for PurchasesContentMode, &protocol conformance descriptor for PurchasesContentMode);
  sub_10077018C();
  sub_10077018C();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    v8 = *(v2 + 8);
    v8(v4, v1);
    v8(v7, v1);

    return sub_10076828C();
  }

  v9 = sub_10077167C();
  v10 = *(v2 + 8);
  v10(v4, v1);
  v10(v7, v1);

  if (v9)
  {
    return sub_10076828C();
  }

  return sub_10076826C();
}

uint64_t sub_1002F1B2C(double a1, double a2, double a3, double a4)
{
  v5 = sub_10076F7CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B6FC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000CFBC(v11, &qword_1009492E0, &qword_1007893A0);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    if (*(v4 + 112))
    {

      sub_1007660EC();

      if (*(v4 + 112))
      {

        sub_10076F7DC();
        v16 = sub_1007660DC();

        (*(v6 + 8))(v8, v5);
        (*(v13 + 8))(v15, v12);
        return v16;
      }
    }

    (*(v13 + 8))(v15, v12);
  }

  return 0;
}

double sub_1002F1DF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  v54 = a4;
  v49 = a2;
  v56 = a1;
  v6 = sub_1007621EC();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v47 - v9;
  v10 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_10076B5BC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v20 = sub_100761B4C();
  v55 = v19;
  v56 = v20;
  sub_10076B5CC();
  if (a3)
  {
    v21 = v12;
    (*(v14 + 56))(v12, 1, 1, v13);
    v23 = v50;
    v22 = v51;
    v24 = v52;
    (*(v51 + 104))(v50, enum case for ShelfBackground.none(_:), v52);
  }

  else
  {
    sub_100761A7C();
    v21 = v12;
    (*(v14 + 56))(v12, 0, 1, v13);
    v25 = v50;
    sub_100761A6C();
    v22 = v51;
    v24 = v52;
    v23 = v25;
  }

  v26 = v14;
  v27 = *(v14 + 16);
  v28 = v55;
  v27(v16, v55, v13);
  v29 = (*(v26 + 88))(v16, v13);
  v30 = v54;
  v53 = v26;
  if (v29 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v31 = &off_1008A1710;
  }

  else
  {
    if (v29 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v26 + 8))(v16, v13);
      goto LABEL_11;
    }

    type metadata accessor for InformationRibbonCollectionViewCell(0);
    v31 = &off_100891580;
  }

  v32 = (v31[2])();
  if ((v33 & 1) == 0)
  {
    v34 = *&v32;

    v35 = v34;
    (*(v22 + 8))(v23, v24);
    sub_10000CFBC(v21, &unk_1009568A0, &qword_100784890);
    (*(v53 + 8))(v28, v13);
    return v35;
  }

LABEL_11:
  v36 = sub_10041329C();
  if (v36)
  {
    v38 = v36;
    v39 = v37;
    v40 = v24;
    v41 = v48;
    v52 = v13;
    sub_10076B57C();
    *&v42 = COERCE_DOUBLE((*(v39 + 48))(v21, v23, v41, v30, v38, v39));
    v44 = v43;

    v45 = *(v22 + 8);
    v45(v41, v40);
    v45(v23, v40);
    sub_10000CFBC(v21, &unk_1009568A0, &qword_100784890);
    (*(v53 + 8))(v55, v52);
    v35 = 0.0;
    if ((v44 & 1) == 0)
    {
      return *&v42;
    }
  }

  else
  {

    (*(v22 + 8))(v23, v24);
    sub_10000CFBC(v21, &unk_1009568A0, &qword_100784890);
    (*(v53 + 8))(v28, v13);
    return 0.0;
  }

  return v35;
}

double sub_1002F2380(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v11 = 0.0;
  if (sub_100761A9C() <= a1)
  {
    return 0.0;
  }

  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = sub_100761B5C();
  if (v17)
  {
    v60 = v16;
    v61 = v17;
    v18 = sub_100761AAC();
    if (v18)
    {
      v58 = v18;
      sub_10076B8EC();
      v20 = v19;
      ObjectType = [a2 traitCollection];
      if (qword_10093F988 != -1)
      {
        swift_once();
      }

      v21 = qword_10094C0F0;
      v56 = v4;
      v57 = v20;
      if (v20)
      {
        v20 = sub_10076FF6C();
      }

      [v21 setTitle:v20 forState:0];

      [v21 setImage:0 forState:0];
      v22 = [v21 titleLabel];
      v23 = v22;
      if (v22)
      {
        v55 = v22;
        v24 = [v55 font];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:ObjectType];
        }

        else
        {
          v26 = 0;
        }

        v30 = v55;
        [v55 setFont:v26];
      }

      v27 = a2;
      v28 = v10;
      [v21 sizeThatFits:{v13, v15}];
      v32 = v31;
      v11 = v33;

      v29 = v32 + 0.0;
      [v21 setTitle:0 forState:0];
      [v21 setImage:0 forState:0];
    }

    else
    {
      v27 = a2;
      v28 = v10;
      v29 = 0.0;
    }

    ObjectType = swift_getObjectType();
    [v27 pageMarginInsets];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    if (a1 >= 1)
    {
      v41 = a1 - 1;
    }

    else
    {
      v41 = 0;
    }

    v42 = v34.n128_f64[0] + sub_1002F1DF4(a1, v41, a1 < 1, v27, v34);
    v43 = sub_100761ABC();
    v44 = sub_100761B6C();
    v57 = v45;
    v58 = v44;
    v46 = sub_100761AFC();
    v47 = [v27 traitCollection];
    v48 = sub_10077071C();

    if (v43)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }

    if (v48)
    {
      v50 = 0;
    }

    else
    {
      v50 = v49;
    }

    type metadata accessor for TitleHeaderView(0);
    sub_100628B9C(a1, v27, v28);
    sub_1001963E0(v58, v57, v46, v60, v61, v43, 0, 0, v13, v15, v29, v11, v42, v36, v38, v40, 0, 0, v50, v28, 1, v27);
    v13 = v51;

    sub_10011636C(v28, v52);
  }

  return v13;
}

void sub_1002F2840(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v133 = a3;
  v126 = a2;
  v116 = sub_10076B6EC();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v113 = v107 - v9;
  v10 = sub_10000A5D4(&unk_100952090, &unk_100784CD0);
  __chkstk_darwin(v10 - 8);
  v123 = v107 - v11;
  v125 = sub_10076664C();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v137 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v136 = v107 - v14;
  __chkstk_darwin(v15);
  v135 = v107 - v16;
  v121 = sub_10075E11C();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  __chkstk_darwin(v18 - 8);
  v122 = v107 - v19;
  v118 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v134 = v107 - v20;
  v21 = sub_10076B5BC();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v108 = v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v107 - v25;
  __chkstk_darwin(v27);
  v29 = v107 - v28;
  v128 = v4;
  sub_10075E0AC();
  v30 = sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  sub_100761A7C();
  v31 = sub_10041329C();
  if (!v31)
  {
    (*(v22 + 8))(v29, v21);
    return;
  }

  v111 = v32;
  v112 = v31;
  v131 = v29;
  sub_10075E0AC();
  v33 = sub_100761A5C();
  v129 = v22;
  v138 = a1;
  if (v33)
  {
    v34 = sub_10075E0AC();
    v35 = v30;
    if (v34 >= sub_100761A9C())
    {
      v110 = 0;
      v37 = v133;
    }

    else
    {
      v36 = sub_100761A4C();
      v37 = v133;
      if (v36)
      {
        v110 = 0;
      }

      else
      {
        v38 = sub_100761A8C();
        if (sub_10062B9AC(v34))
        {
          v39 = 1;
        }

        else
        {
          v39 = v38;
        }

        v110 = v39;
        v22 = v129;
        v37 = v133;
      }
    }
  }

  else
  {
    v110 = 0;
    v35 = v30;
    v37 = v133;
  }

  sub_10075E0AC();
  v40 = sub_100761A5C();
  v132 = v21;
  v109 = v26;
  if (v40)
  {
    sub_10075E0AC();
    v127 = sub_100761B4C();
  }

  else
  {
    v127 = 0;
  }

  [a4 bounds];
  [a4 safeAreaInsets];
  sub_100770ACC();
  v42 = v41;
  v44 = v43;
  v45 = v131;
  v46 = sub_10041329C();
  v48 = v132;
  v130 = v35;
  if (!v46)
  {
    goto LABEL_30;
  }

  v49 = v46;
  v50 = v47;
  v107[1] = swift_getObjectType();
  [v37 pageMarginInsets];
  v52 = (*(v50 + 32))(0, v37, v49, v50, v51);
  v42 = v42 - (v52 + v53);
  v54 = [v37 traitCollection];
  v55 = *(v22 + 16);
  v56 = v109;
  v55(v109, v45, v48);
  v57 = *(v22 + 88);
  v58 = v57(v56, v48);
  if (v58 != enum case for Shelf.ContentType.artwork(_:) && v58 != enum case for Shelf.ContentType.ribbonBar(_:) && v58 != enum case for Shelf.ContentType.ribbonFlow(_:) && v58 != enum case for Shelf.ContentType.paragraph(_:) && v58 != enum case for Shelf.ContentType.footnote(_:) && v58 != enum case for Shelf.ContentType.titledParagraph(_:) && v58 != enum case for Shelf.ContentType.reviewsContainer(_:) && v58 != enum case for Shelf.ContentType.reviewSummary(_:) && v58 != enum case for Shelf.ContentType.editorialLink(_:) && v58 != enum case for Shelf.ContentType.quote(_:) && v58 != enum case for Shelf.ContentType.framedArtwork(_:) && v58 != enum case for Shelf.ContentType.screenshots(_:))
  {
    if (v58 == enum case for Shelf.ContentType.appShowcase(_:))
    {

      goto LABEL_78;
    }

    v107[0] = v54;
    if (v58 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) || v58 == enum case for Shelf.ContentType.linkableText(_:) || v58 == enum case for Shelf.ContentType.framedVideo(_:) || v58 == enum case for Shelf.ContentType.productDescription(_:) || v58 == enum case for Shelf.ContentType.banner(_:) || v58 == enum case for Shelf.ContentType.roundedButton(_:) || v58 == enum case for Shelf.ContentType.titledButtonStack(_:) || v58 == enum case for Shelf.ContentType.smallStoryCard(_:) || v58 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) || v58 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v58 == enum case for Shelf.ContentType.upsellBreakout(_:) || v58 == enum case for Shelf.ContentType.smallBreakout(_:) || v58 == enum case for Shelf.ContentType.arcadeFooter(_:) || v58 == enum case for Shelf.ContentType.editorialQuote(_:) || v58 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v58 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) || v58 == enum case for Shelf.ContentType.preorderDisclaimer(_:) || v58 == enum case for Shelf.ContentType.privacyHeader(_:) || v58 == enum case for Shelf.ContentType.privacyFooter(_:) || v58 == enum case for Shelf.ContentType.privacyCategory(_:) || v58 == enum case for Shelf.ContentType.privacyDefinition(_:) || v58 == enum case for Shelf.ContentType.heroCarousel(_:) || v58 == enum case for Shelf.ContentType.unifiedMessage(_:) || (v96 = v55, v109 = *(v129 + 8), (v109)(v56, v132), (sub_1007706FC() & 1) == 0))
    {

      goto LABEL_78;
    }

    v97 = v107[0];
    v98 = sub_10077071C();

    if (v98)
    {
LABEL_78:
      v37 = v133;
      v22 = v129;
      goto LABEL_30;
    }

    v99 = v131;
    v100 = sub_1002F6B5C(v131, v110, v133);
    v101 = v108;
    v102 = v99;
    v103 = v132;
    v96(v108, v102, v132);
    v104 = v57(v101, v103);
    if (v104 == enum case for Shelf.ContentType.annotation(_:) || v104 == enum case for Shelf.ContentType.productCapability(_:) || v104 == enum case for Shelf.ContentType.productPageLink(_:) || v104 == enum case for Shelf.ContentType.privacyType(_:))
    {
      if (!__OFSUB__(v100, 1))
      {
        v106 = v42 + (v100 - 1) * -30.0;
        goto LABEL_81;
      }
    }

    else
    {
      (v109)(v108, v132);
      PageTraitEnvironment.pageColumnMargin.getter();
      if (!__OFSUB__(v100, 1))
      {
        v106 = v42 - v105 * (v100 - 1);
LABEL_81:
        v42 = v106 / v100;
        goto LABEL_78;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v37 = v133;
  v22 = v129;
LABEL_30:
  if (v42 <= 0.0)
  {
    v42 = 0.0;
  }

  v59 = v138;
  sub_100761B3C();
  (*(v120 + 16))(v119, v59, v121);
  sub_10076FDDC();
  v139 = *(v128 + 24);

  sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
  sub_100071820(&qword_1009564C0, &unk_1009520B0, &qword_100790A00, &protocol conformance descriptor for TransientStateStore<A>);
  sub_10076FD7C();
  v60 = v135;
  sub_10076663C();
  v61 = sub_1002F67C8(v59, v37);
  v62 = v125;
  v63 = v124;
  if (v61)
  {
    v64 = v136;
    v65 = v137;
    sub_1007665FC();
    sub_10038C52C(v64, v65);
    v66 = *(v63 + 8);
    v22 = v129;
    v66(v65, v62);
    v66(v64, v62);
    v60 = v135;
  }

  v67 = v123;
  sub_100761B0C();
  v68 = sub_10076182C();
  v69 = (*(*(v68 - 8) + 48))(v67, 1, v68);
  sub_10000CFBC(v67, &unk_100952090, &unk_100784CD0);
  if (v69 != 1)
  {
    v70 = v137;
    sub_1007665DC();
    v71 = v136;
    sub_10038C52C(v136, v70);
    v72 = *(v63 + 8);
    v72(v70, v62);
    v72(v71, v62);
  }

  v73 = [v37 traitCollection];
  v74 = sub_1007706EC();

  v75 = v127;
  v76 = v37;
  if (v74)
  {
    v77 = v137;
    sub_10076662C();
    v78 = v136;
    sub_10038C52C(v136, v77);
    v79 = *(v63 + 8);
    v79(v77, v62);
    v80 = v78;
    v37 = v76;
    v79(v80, v62);
  }

  if (!sub_10075E0AC())
  {
    v81 = v137;
    sub_1007665EC();
    v82 = v136;
    sub_10038C52C(v136, v81);
    v83 = *(v63 + 8);
    v83(v81, v62);
    v84 = v82;
    v37 = v76;
    v83(v84, v62);
  }

  if (v75)
  {

    v85 = v113;
    sub_10076B70C();

    v86 = v114;
    sub_10076B6AC();
    sub_1002F90A4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v87 = v116;
    v88 = sub_10077124C();
    v89 = *(v115 + 8);
    v89(v86, v87);
    v90 = v85;
    v37 = v76;
    v22 = v129;
    v89(v90, v87);
    v60 = v135;
    if (v88)
    {
      v91 = v137;
      sub_10076661C();
      v92 = v136;
      sub_10038C52C(v136, v91);
      v93 = *(v63 + 8);
      v93(v91, v62);
      v94 = v92;
      v37 = v76;
      v93(v94, v62);
    }
  }

  v95 = v134;
  (*(v111 + 72))(&v140, v110, v134, v126, v60, v37, v42, v44);

  (*(v63 + 8))(v60, v62);
  (*(v117 + 8))(v95, v118);
  sub_10000CD74(&v140);
  (*(v22 + 8))(v131, v132);
}

uint64_t sub_1002F3914(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v262 = a6;
  v294 = a5;
  v293 = a4;
  v286 = a3;
  v296 = a2;
  v288 = sub_10076F7FC();
  v287 = *(v288 - 1);
  __chkstk_darwin(v288);
  v255 = v247 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v247 - v10;
  __chkstk_darwin(v12);
  v260 = v247 - v13;
  __chkstk_darwin(v14);
  v250 = v247 - v15;
  __chkstk_darwin(v16);
  v253 = v247 - v17;
  v258 = sub_10075DFDC();
  v257 = *(v258 - 8);
  __chkstk_darwin(v258);
  v256 = v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_1007621EC();
  v272 = *(v273 - 8);
  __chkstk_darwin(v273);
  v271 = v247 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_10076B6EC();
  v269 = *(v270 - 8);
  __chkstk_darwin(v270);
  v268 = v247 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&unk_100952090, &unk_100784CD0);
  __chkstk_darwin(v21 - 8);
  v23 = v247 - v22;
  v290 = sub_10076664C();
  v289 = *(v290 - 8);
  __chkstk_darwin(v290);
  v25 = v247 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v247 - v27;
  __chkstk_darwin(v29);
  v285 = v247 - v30;
  v278 = sub_10075E11C();
  v277 = *(v278 - 8);
  __chkstk_darwin(v278);
  v261 = v31;
  v276 = v247 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  __chkstk_darwin(v32 - 8);
  v275 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v274 = *(v275 - 8);
  __chkstk_darwin(v275);
  v284 = v247 - v33;
  v292 = sub_10076B5BC();
  v291 = *(v292 - 8);
  __chkstk_darwin(v292);
  v267 = v247 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v279 = v247 - v36;
  __chkstk_darwin(v37);
  v283 = v247 - v38;
  v280 = sub_10076F7CC();
  v281 = *(v280 - 8);
  __chkstk_darwin(v280);
  v263 = v247 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v282 = v247 - v41;
  v42 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v42 - 8);
  v259 = v247 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v266 = v247 - v45;
  __chkstk_darwin(v46);
  v265 = v247 - v47;
  __chkstk_darwin(v48);
  v251 = v247 - v49;
  __chkstk_darwin(v50);
  v252 = v247 - v51;
  __chkstk_darwin(v52);
  v54 = v247 - v53;
  v55 = sub_10000A5D4(&qword_1009632C0, &unk_10079B000);
  __chkstk_darwin(v55 - 8);
  v254 = v247 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v264 = v247 - v58;
  __chkstk_darwin(v59);
  v61 = v247 - v60;
  *&v63 = __chkstk_darwin(v62).n128_u64[0];
  v65 = v247 - v64;
  [a1 setBackgroundColor:{0, v63}];
  swift_getObjectType();
  v66 = swift_conformsToProtocol2();
  v295 = v6;
  v297 = *(v6 + 16);
  if (!v66 || *&a1 == 0.0)
  {
    v78 = sub_10076830C();
    v79 = sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    v80 = v296;
    v283 = v78;
    v282 = v79;
    result = sub_100761AEC();
    if ((result & 1) == 0)
    {
      return result;
    }

    v248 = v11;
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    v249 = result;
    if (!result)
    {
      __break(1u);
      return result;
    }

    sub_100761B3C();
    v82 = *(v277 + 16);
    v247[1] = v277 + 16;
    v247[0] = v82;
    v82(v276, v80, v278);
    sub_10076FDDC();
    v303 = *(v295 + 24);

    sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
    sub_100071820(&qword_1009564C0, &unk_1009520B0, &qword_100790A00, &protocol conformance descriptor for TransientStateStore<A>);
    v83 = v296;
    sub_10076F82C();
    sub_10076663C();
    if (sub_1002F6264(v83, v293))
    {
      sub_1007665FC();
      sub_10038C52C(v28, v25);
      v84 = v289[1];
      v85 = v290;
      v84(v25, v290);
      v84(v28, v85);
    }

    sub_100761B0C();
    v86 = sub_10076182C();
    v87 = (*(*(v86 - 8) + 48))(v23, 1, v86);
    sub_10000CFBC(v23, &unk_100952090, &unk_100784CD0);
    if (v87 != 1)
    {
      sub_1007665DC();
      sub_10038C52C(v28, v25);
      v88 = v289[1];
      v89 = v290;
      v88(v25, v290);
      v88(v28, v89);
    }

    if (!sub_10075E0AC())
    {
      sub_1007665EC();
      sub_10038C52C(v28, v25);
      v90 = v289[1];
      v91 = v290;
      v90(v25, v290);
      v90(v28, v91);
    }

    sub_10075E0AC();
    v92 = v279;
    sub_100761A7C();
    sub_10075E0AC();
    v93 = sub_100761A3C();
    v94 = v291;
    v95 = v267;
    v96 = v292;
    (*(v291 + 16))(v267, v92, v292);
    v97 = (*(v94 + 88))(v95, v96);
    if (v97 == enum case for Shelf.ContentType.smallLockup(_:) || v97 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      goto LABEL_38;
    }

    if (v97 != enum case for Shelf.ContentType.largeLockup(_:))
    {
      if (v97 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v97 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v97 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_38;
      }

      if (v97 != enum case for Shelf.ContentType.ribbonBar(_:))
      {
        if (v97 == enum case for Shelf.ContentType.editorialCard(_:) || v97 == enum case for Shelf.ContentType.videoCard(_:))
        {
          goto LABEL_38;
        }

        if (v97 == enum case for Shelf.ContentType.brick(_:) || v97 == enum case for Shelf.ContentType.categoryBrick(_:))
        {
          goto LABEL_39;
        }

        if (v97 == enum case for Shelf.ContentType.reviews(_:) || v97 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v97 == enum case for Shelf.ContentType.framedVideo(_:) || v97 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v97 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v97 == enum case for Shelf.ContentType.smallBreakout(_:))
        {
          goto LABEL_38;
        }

        if (v97 != enum case for Shelf.ContentType.editorialStoryCard(_:))
        {
          if (v97 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v97 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v97 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v97 == enum case for Shelf.ContentType.posterLockup(_:) || v97 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            goto LABEL_38;
          }

          if (v97 != enum case for Shelf.ContentType.informationRibbon(_:))
          {
            if (v97 != enum case for Shelf.ContentType.appPromotion(_:))
            {
              (*(v291 + 8))(v95, v292);
              goto LABEL_50;
            }

LABEL_38:
            if (v93)
            {
              goto LABEL_39;
            }

LABEL_50:
            v122 = [v293 traitCollection];
            v123 = sub_1007706EC();

            if ((v123 & 1) == 0)
            {
              LODWORD(v267) = 0;
              v124 = v285;
LABEL_53:
              ObjectType = swift_getObjectType();
              sub_10075E0AC();
              sub_100761B4C();
              v128 = v268;
              sub_10076B70C();

              (*(v249 + 80))(&v305, v284, v294, v124, v128, v293, ObjectType);
              (*(v269 + 8))(v128, v270);
              v129 = a1;
              sub_10075E0AC();
              v130 = v271;
              sub_100761A6C();
              v132 = sub_1004751F8(v131);
              (*(v272 + 8))(v130, v273);
              if ([a1 overrideUserInterfaceStyle] != v132)
              {
                [a1 setOverrideUserInterfaceStyle:v132];
              }

              sub_10000A570(&v305, &v303);
              *(&v301 + 1) = sub_100016F40(0, &qword_10094D1D0, UICollectionViewCell_ptr);
              *&v300 = a1;
              v133 = a1;
              sub_10075FA0C();
              sub_10000CFBC(&v303, &unk_10094F720, &unk_100785540);
              sub_10000CD74(&v300);
              swift_getObjectType();
              v134 = swift_conformsToProtocol2();
              v135 = v295;
              if (v134 && *&a1 != 0.0)
              {
                v136 = v134;
                v137 = swift_getObjectType();
                v138 = *(v136 + 8);
                v139 = v133;
                v140 = v138(v137, v136);
                v83 = v296;
                v141 = v140;
                v142 = (v140 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
                v143 = *(v140 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
                v144 = v142[1];
                *v142 = 0;
                v142[1] = 0;
                [*&v141[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:{0, sub_1000167E0(v143, v144)}];
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && *&a1 != 0.0)
              {
                v145 = swift_allocObject();
                swift_weakInit();
                v294 = a1;
                v146 = v135;
                v147 = v276;
                v148 = v278;
                (v247[0])(v276, v83, v278);
                v149 = v277;
                v150 = (*(v277 + 80) + 16) & ~*(v277 + 80);
                v151 = (v261 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
                v152 = swift_allocObject();
                v153 = v147;
                v135 = v146;
                v129 = v294;
                (*(v149 + 32))(v152 + v150, v153, v148);
                *(v152 + v151) = v145;
                v154 = &v133[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
                v155 = *&v133[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
                v156 = *&v133[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler + 8];
                *v154 = sub_1002F9230;
                v154[1] = v152;
                v157 = v133;

                sub_1000167E0(v155, v156);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                sub_100767D5C();
                sub_10076F64C();
                v158 = v133;
                sub_10076FC1C();
                v159 = v303;
                swift_getObjectType();
                v160 = sub_100765B4C();
                v161 = v158;
                sub_100767D3C();
              }

              *&v298[0] = v133;
              *(&v298[0] + 1) = v249;
              v162 = v133;
              sub_10000A5D4(&qword_1009520D0, &unk_10079B010);
              sub_10000A5D4(&qword_1009520D8, &unk_1007B36B0);
              if (swift_dynamicCast())
              {
                sub_100012498(&v300, &v303);
                sub_100767D5C();
                sub_10076F64C();
                sub_10076FC1C();
                v163 = v300;
                sub_10000CF78(&v303, v304);
                sub_10076817C();

                sub_10000CD74(&v303);
              }

              else
              {
                v302 = 0;
                v301 = 0u;
                v300 = 0u;
                sub_10000CFBC(&v300, &unk_1009520E0, &unk_10079B020);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                sub_100764FAC();
                v164 = v162;
                sub_10076F63C();
                v165 = v303;
                if (v303)
                {
                  v166 = v164;
                  v167 = v165;
                  sub_100764F9C();

                  v164 = v167;
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                sub_10000A570(&v305, &v300);
                v168 = v162;
                sub_10000A5D4(&qword_1009575A0, &unk_100784980);
                sub_10000A5D4(&unk_1009520F0, &qword_100799AA0);
                if (swift_dynamicCast())
                {
                  sub_100012498(v298, &v303);
                  sub_10000CF78(&v303, v304);
                  if (sub_10076967C())
                  {
                    sub_10076518C();
                  }

                  swift_getObjectType();
                  sub_10076457C();

                  sub_10000CD74(&v303);
                }

                else
                {

                  v299 = 0;
                  memset(v298, 0, sizeof(v298));
                  sub_10000CFBC(v298, &qword_10094D3E8, &qword_100796560);
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                swift_getObjectType();
                v169 = v162;
                sub_100768BEC();
              }

              sub_10075E0AC();
              sub_100761B4C();
              if (v267)
              {
                v170 = [v262 collectionViewLayout];
                type metadata accessor for BaseCollectionCompositionalLayout();
                v171 = swift_dynamicCastClass();
                if (v171)
                {
                  v172 = v171;
                  v173 = [v171 _orthogonalScrollingSections];
                  v174 = v256;
                  sub_10075DFAC();

                  v175 = sub_10075E0AC();
                  LOBYTE(v173) = sub_10075DFCC(v175);
                  (*(v257 + 8))(v174, v258);
                  if (v173)
                  {
                    [v162 frame];
                    v177 = v176;
                    v179 = v178;
                    v181 = v180;
                    v183 = v182;
                    v184 = v252;
                    sub_10076B6FC();
                    v185 = v287;
                    v186 = *(v287 + 6);
                    v187 = v288;
                    if (v186(v184, 1, v288) == 1)
                    {

                      (*(v291 + 8))(v279, v292);
                      (v289[1])(v285, v290);
                      (*(v274 + 8))(v284, v275);
                      sub_10000CD74(&v305);
                      return sub_10000CFBC(v184, &qword_1009492E0, &qword_1007893A0);
                    }

                    v297 = *(v185 + 4);
                    v297(v253, v184, v187);
                    sub_10000A570(&v305, &v303);
                    sub_10000CF78(&v303, v304);
                    v219 = v251;
                    sub_10076FE2C();
                    if (v186(v219, 1, v187) == 1)
                    {

                      (*(v185 + 1))(v253, v187);
                      (*(v291 + 8))(v279, v292);
                      (v289[1])(v285, v290);
                      (*(v274 + 8))(v284, v275);
                      sub_10000CD74(&v305);
                      v199 = v219;
                      goto LABEL_99;
                    }

                    v293 = v179;
                    v294 = v177;
                    v220 = v250;
                    v297(v250, v219, v187);
                    [v172 _layoutFrameForSection:sub_10075E0AC()];
                    v222 = v221;
                    v224 = v223;
                    v226 = v225;
                    v228 = v227;
                    [v172 _offsetForOrthogonalScrollingSection:sub_10075E0AC()];
                    v230 = v295;
                    v231 = *(v295 + 112);
                    v232 = v187;
                    v233 = v285;
                    if (v231)
                    {
                      v234 = v229;

                      v235 = v253;
                      v236 = v222;
                      sub_1007660EC();

                      v237 = v224;
                      if (*(v230 + 112))
                      {

                        v238 = v263;
                        sub_10076F7DC();
                        v300 = v234;
                        *&v301 = v226;
                        *(&v301 + 1) = v228;
                        LOBYTE(v302) = 0;
                        v231 = sub_1007660CC();

                        (*(v281 + 8))(v238, v280);
                      }

                      else
                      {
                        v231 = 0;
                      }

                      v239 = *&v294;
                    }

                    else
                    {
                      v236 = v222;
                      v235 = v253;
                      v239 = *&v294;
                      v237 = v224;
                    }

                    v240 = *&v293;
                    v306.origin.x = v236;
                    v306.origin.y = v237;
                    v306.size.width = v226;
                    v306.size.height = v228;
                    v241 = -CGRectGetMinY(v306);
                    v307.origin.x = v239;
                    v307.origin.y = v240;
                    v307.size.width = v181;
                    v307.size.height = v183;
                    v308 = CGRectOffset(v307, 0.0, v241);
                    x = v308.origin.x;
                    y = v308.origin.y;
                    width = v308.size.width;
                    height = v308.size.height;
                    if (v231)
                    {

                      sub_1007660EC();
                    }

                    sub_1002F7034(&v303, v231, x, y, width, height);

                    v246 = *(v185 + 1);
                    v246(v220, v232);
                    v246(v235, v232);
                    (*(v291 + 8))(v279, v292);
                    (v289[1])(v233, v290);
                    goto LABEL_109;
                  }
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                v188 = v162;
                [v188 frame];
                sub_1002F1B2C(v189, v190, v191, v192);
                swift_getObjectType();
                sub_10076A01C();
              }

              v193 = v265;
              sub_10076B6FC();
              v194 = v287;
              v195 = *(v287 + 6);
              v196 = v288;
              if (v195(v193, 1, v288) == 1)
              {
                sub_10000CFBC(v193, &qword_1009492E0, &qword_1007893A0);
                v197 = v266;
              }

              else
              {
                v198 = v260;
                (*(v194 + 4))(v260, v193, v196);
                v197 = v266;
                if (*(v135 + 112))
                {

                  [v162 frame];
                  sub_10076613C();
                }

                (*(v194 + 1))(v198, v196);
              }

              sub_10000A570(&v305, &v303);
              sub_10000CF78(&v303, v304);
              sub_10076FE2C();
              if (v195(v197, 1, v196) == 1)
              {

                (*(v291 + 8))(v279, v292);
                (v289[1])(v285, v290);
                (*(v274 + 8))(v284, v275);
                sub_10000CD74(&v305);
                v199 = v197;
LABEL_99:
                sub_10000CFBC(v199, &qword_1009492E0, &qword_1007893A0);
                return sub_10000CD74(&v303);
              }

              (*(v194 + 4))(v248, v197, v196);
              v200 = v259;
              sub_10076B6FC();
              if (v195(v200, 1, v196) == 1)
              {
                sub_10000CFBC(v200, &qword_1009492E0, &qword_1007893A0);
                v201 = 1;
                v202 = v281;
                v203 = v264;
              }

              else
              {
                v203 = v264;
                sub_10076F7DC();
                (*(v194 + 1))(v200, v196);
                v201 = 0;
                v202 = v281;
              }

              v204 = v280;
              (*(v202 + 56))(v203, v201, 1, v280);
              if (*(v135 + 112))
              {
                v205 = v203;
                v206 = v254;
                sub_1002F90EC(v205, v254);
                v207 = v202;
                v208 = (*(v202 + 48))(v206, 1, v204);

                if (v208 == 1)
                {
                  sub_10000CFBC(v206, &qword_1009632C0, &unk_10079B000);
                }

                else
                {
                  sub_10076F7BC();
                  (*(v207 + 8))(v206, v204);
                }

                v209 = v255;
                sub_10076F78C();

                [v162 frame];
                sub_1007660EC();

                (*(v194 + 1))(v209, v196);
                v203 = v264;
              }

              [v162 frame];
              v211 = v210;
              v213 = v212;
              v215 = v214;
              v217 = v216;
              v218 = *(v135 + 112);

              sub_1002F7034(&v303, v218, v211, v213, v215, v217);

              sub_10000CFBC(v203, &qword_1009632C0, &unk_10079B000);
              (*(v194 + 1))(v248, v196);
              (*(v291 + 8))(v279, v292);
              (v289[1])(v285, v290);
LABEL_109:
              (*(v274 + 8))(v284, v275);
              sub_10000CD74(&v305);
              return sub_10000CD74(&v303);
            }

            sub_10076662C();
            LODWORD(v267) = 0;
LABEL_52:
            v124 = v285;
            sub_10038C52C(v28, v25);
            v125 = v289[1];
            v126 = v290;
            v125(v25, v290);
            v125(v28, v126);
            goto LABEL_53;
          }
        }
      }
    }

LABEL_39:
    sub_10076660C();
    LODWORD(v267) = 1;
    goto LABEL_52;
  }

  v290 = v66;
  v67 = a1;
  sub_10075E0AC();
  sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v68 = sub_100761B4C();
  v289 = v67;
  [v67 frame];
  v69 = v295;
  v285 = sub_1002F1B2C(v70, v71, v72, v73);
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v74 = v305;
  sub_100764FAC();
  sub_10076F63C();
  v279 = v305;
  v284 = v68;
  sub_10076B6FC();
  v75 = v287;
  v76 = v288;
  if ((*(v287 + 6))(v54, 1, v288) == 1)
  {
    sub_10000CFBC(v54, &qword_1009492E0, &qword_1007893A0);
    v77 = 1;
  }

  else
  {
    sub_10076F7DC();
    (*(v75 + 1))(v54, v76);
    v77 = 0;
  }

  v98 = v281;
  v99 = v280;
  (*(v281 + 56))(v65, v77, 1, v280);
  v100 = objc_allocWithZone(sub_1007666AC());
  v101 = v74;
  v102 = sub_10076669C();
  if (*(v69 + 112))
  {
    sub_1002F90EC(v65, v61);
    if ((*(v98 + 48))(v61, 1, v99) == 1)
    {
      sub_10000CFBC(v61, &qword_1009632C0, &unk_10079B000);
    }

    else
    {
      v103 = v282;
      (*(v98 + 32))(v282, v61, v99);
      (*(v98 + 16))(v263, v103, v99);
      sub_10076888C();
      swift_allocObject();
      swift_retain_n();
      sub_10076889C();
      sub_10076668C();

      (*(v98 + 8))(v103, v99);
    }
  }

  sub_10076911C();
  swift_allocObject();
  v104 = v101;
  sub_10076912C();
  sub_10076668C();

  v105 = v279;
  v288 = v104;
  if (v279)
  {
    sub_100766B3C();
    swift_allocObject();
    v106 = v105;
    sub_100766B4C();
    sub_10076668C();

    v287 = v106;
  }

  else
  {

    v287 = 0;
  }

  v107 = v102;
  sub_10000CFBC(v65, &qword_1009632C0, &unk_10079B000);
  v108 = v297;

  v109 = sub_10075E0AC();
  v110 = v283;
  v111 = v284;
  sub_10076B5CC();
  v112 = sub_10076B58C();
  (*(v291 + 8))(v110, v292);
  v113 = *(v295 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10000A5D4(&qword_100952100, &unk_10079B030);
  v115 = swift_allocObject();
  *(v115 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v115 + 16) = v108;
  *(v115 + 24) = v109;
  *(v115 + 32) = v112 & 1;
  *(v115 + 40) = v113;
  *(v115 + 64) = v107;
  *(v115 + 72) = &protocol witness table for CompoundScrollObserver;
  *(v115 + 80) = v285;
  swift_unknownObjectWeakAssign();

  v297 = v107;

  v116 = v289;
  v117 = swift_getObjectType();
  v118 = sub_10075E0AC();
  v119 = sub_100071820(&qword_100952108, &qword_100952100, &unk_10079B030, &unk_100790970);
  v120 = v290;
  v121 = *(v290 + 32);

  v121(v111, v118, v286, v294, v115, v119, v293, v117, v120);
}

uint64_t sub_1002F6264(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v27 = v2;
  sub_10075E0AC();
  sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  sub_100761A7C();
  sub_10075E0AC();
  v13 = sub_100761A3C();
  (*(v4 + 32))(v9, v12, v3);
  v14 = (*(v4 + 88))(v9, v3);
  if (v14 == enum case for Shelf.ContentType.smallLockup(_:) || v14 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    goto LABEL_11;
  }

  v20 = v14 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v14 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v20 || v14 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.editorialCard(_:) || v14 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.brick(_:) || v14 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.reviews(_:) || v14 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v14 == enum case for Shelf.ContentType.framedVideo(_:) || v14 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v14 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v14 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v14 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v14 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v14 == enum case for Shelf.ContentType.posterLockup(_:) || v14 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_6:
    if (v13)
    {
LABEL_11:
      sub_10075E0AC();
      v18 = sub_100761ADC();
      result = sub_10075E09C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else if (v18)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v18 != -1)
        {
          return (result + 1) % v18 == 0;
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
    (*(v4 + 8))(v9, v3);
  }

  v16 = sub_10075E0AC();
  if (v16 >= sub_100761A9C() || (sub_100761A4C() & 1) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_100761A8C();
    if (sub_10062B9AC(v16))
    {
      v17 = 1;
    }
  }

  sub_10075E0AC();
  sub_100761A7C();
  sub_10075E0AC();
  v23 = sub_100761A8C();
  v24 = sub_1002F6B5C(v6, v23, v28);
  result = (*(v4 + 8))(v6, v3);
  if (__OFSUB__(v17, 1))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!v24)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v17 == 0x8000000000000001 && v24 == -1)
  {
    goto LABEL_62;
  }

  v25 = (v17 - 1) % v24;
  v26 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    goto LABEL_59;
  }

  result = sub_10075E09C();
  if (__OFSUB__(v17, v26))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  return result >= v17 - v26;
}

uint64_t sub_1002F67C8(uint64_t a1, void *a2)
{
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E0AC();
  sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v7 = sub_100761A8C();
  sub_10075E0AC();
  sub_100761A7C();
  sub_10075E0AC();
  v8 = sub_100761A8C();
  v9 = sub_1002F6B5C(v6, v8, a2);
  result = (*(v4 + 8))(v6, v3);
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 == 0x8000000000000001 && v9 == -1)
  {
    goto LABEL_12;
  }

  v11 = (v7 - 1) % v9;
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    result = sub_10075E09C();
    if (!__OFSUB__(v7, v12))
    {
      return result >= v7 - v12;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1002F69B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100952110, qword_100790770);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100784500;
  *(v8 + 32) = sub_10075E0AC();
  *(v8 + 40) = a1;
  sub_10075E01C();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_10076830C();
    sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    sub_100761B2C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1002F6B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a2;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = v6[2];
  v13(&v21 - v11, a1, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 0;
  if (v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v25 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
    v22 = v6[1];
    v22(v12, v5);
    ObjectType = swift_getObjectType();
    v24 = a3;
    v18 = [a3 traitCollection];
    (v13)(v8, a1, v5);
    v19 = v14(v8, v5);
    if (v19 == enum case for Shelf.ContentType.artwork(_:) || v19 == enum case for Shelf.ContentType.ribbonBar(_:) || v19 == enum case for Shelf.ContentType.ribbonFlow(_:) || v19 == enum case for Shelf.ContentType.paragraph(_:) || v19 == enum case for Shelf.ContentType.footnote(_:) || v19 == enum case for Shelf.ContentType.titledParagraph(_:) || v19 == enum case for Shelf.ContentType.reviewsContainer(_:) || v19 == enum case for Shelf.ContentType.reviewSummary(_:) || v19 == enum case for Shelf.ContentType.editorialLink(_:) || v19 == enum case for Shelf.ContentType.quote(_:) || v19 == enum case for Shelf.ContentType.framedArtwork(_:) || v19 == enum case for Shelf.ContentType.screenshots(_:) || v19 == enum case for Shelf.ContentType.appShowcase(_:) || v19 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) || v19 == enum case for Shelf.ContentType.linkableText(_:) || v19 == enum case for Shelf.ContentType.framedVideo(_:) || v19 == enum case for Shelf.ContentType.productDescription(_:) || v19 == enum case for Shelf.ContentType.banner(_:) || v19 == enum case for Shelf.ContentType.roundedButton(_:) || v19 == enum case for Shelf.ContentType.titledButtonStack(_:) || v19 == enum case for Shelf.ContentType.smallStoryCard(_:) || v19 == v25 || v19 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v19 == enum case for Shelf.ContentType.upsellBreakout(_:) || v19 == enum case for Shelf.ContentType.smallBreakout(_:) || v19 == enum case for Shelf.ContentType.arcadeFooter(_:) || v19 == enum case for Shelf.ContentType.editorialQuote(_:) || v19 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v19 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) || v19 == enum case for Shelf.ContentType.preorderDisclaimer(_:) || v19 == enum case for Shelf.ContentType.privacyHeader(_:) || v19 == enum case for Shelf.ContentType.privacyFooter(_:) || v19 == enum case for Shelf.ContentType.privacyCategory(_:) || v19 == enum case for Shelf.ContentType.privacyDefinition(_:) || v19 == enum case for Shelf.ContentType.heroCarousel(_:) || v19 == enum case for Shelf.ContentType.unifiedMessage(_:) || (v22(v8, v5), (sub_1007706FC() & 1) == 0))
    {
    }

    else
    {
      v20 = sub_10077071C();

      if ((v20 & 1) == 0)
      {
        return sub_100413DB0(v26, v24, a1);
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1002F7034(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v51 = a2;
  v7 = sub_10000A5D4(&qword_1009632C0, &unk_10079B000);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v43 - v11;
  v12 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = sub_10076F7FC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v45 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v53 = &v43 - v22;
  v48 = a1;
  sub_10000A570(a1, v57);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10000A5D4(&qword_100952118, &qword_10079B040);
  if (swift_dynamicCast())
  {
    v52 = v17;
    v44 = v9;
    sub_100012498(v55, v58);
    sub_10000CF78(v58, v58[3]);
    v23 = sub_100766E0C();
    if (v23)
    {
      v54 = v18;
      v43 = v23;
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v43 + 32;
        v26 = (v19 + 48);
        v46 = (v19 + 32);
        v49 = (v19 + 8);
        v47 = v14;
        do
        {
          sub_10000A570(v25, v57);
          sub_10000CF78(v57, v57[3]);
          v27 = v52;
          sub_10076FE2C();
          sub_10000CD74(v57);
          v28 = *v26;
          v29 = v54;
          if ((*v26)(v27, 1, v54) == 1)
          {
            sub_10000CFBC(v27, &qword_1009492E0, &qword_1007893A0);
          }

          else
          {
            (*v46)(v53, v27, v29);
            sub_10000CF78(v48, v48[3]);
            sub_10076FE2C();
            if (v28(v14, 1, v29) == 1)
            {
              sub_10000CFBC(v14, &qword_1009492E0, &qword_1007893A0);
              v30 = 1;
              v31 = v50;
            }

            else
            {
              v32 = v14;
              v31 = v50;
              sub_10076F7DC();
              (*v49)(v32, v29);
              v30 = 0;
            }

            v33 = sub_10076F7CC();
            v34 = *(v33 - 8);
            (*(v34 + 56))(v31, v30, 1, v33);
            if (v51)
            {
              v35 = v44;
              sub_1002F90EC(v31, v44);
              if ((*(v34 + 48))(v35, 1, v33) == 1)
              {
                v36 = v31;
                sub_10000CFBC(v35, &qword_1009632C0, &unk_10079B000);
              }

              else
              {
                sub_10076F7BC();
                (*(v34 + 8))(v35, v33);
                v36 = v50;
              }

              v37 = v45;
              v38 = v53;
              sub_10076F78C();

              sub_1007660EC();
              v39 = *v49;
              v40 = v37;
              v41 = v54;
              (*v49)(v40, v54);
              sub_10000CFBC(v36, &qword_1009632C0, &unk_10079B000);
              v39(v38, v41);
            }

            else
            {
              sub_10000CFBC(v31, &qword_1009632C0, &unk_10079B000);
              (*v49)(v53, v54);
            }

            v14 = v47;
          }

          v25 += 40;
          --v24;
        }

        while (v24);
      }
    }

    return sub_10000CD74(v58);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    return sub_10000CFBC(v55, &unk_100952120, &qword_10079B048);
  }
}

uint64_t sub_1002F7684(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0, &unk_10079B000);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_10076F7FC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10000A570(a1, v53);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10000A5D4(&qword_100952118, &qword_10079B040);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v19 = sub_100766E0C();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_10000A570(v21, v53);
          sub_10000CF78(v53, v53[3]);
          v23 = v48;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10000CFBC(v23, &qword_1009492E0, &qword_1007893A0);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10000CF78(v44, v44[3]);
            sub_10076FE2C();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10000CFBC(v10, &qword_1009492E0, &qword_1007893A0);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              sub_10076F7DC();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = sub_10076F7CC();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_1002F90EC(v27, v40);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10000CFBC(v31, &qword_1009632C0, &unk_10079B000);
              }

              else
              {
                sub_10076F7BC();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              sub_10076F78C();

              sub_10076610C();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10000CFBC(v32, &qword_1009632C0, &unk_10079B000);
              v35(v34, v37);
            }

            else
            {
              sub_10000CFBC(v27, &qword_1009632C0, &unk_10079B000);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10000CFBC(v51, &unk_100952120, &qword_10079B048);
  }
}

void sub_1002F7C70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_10000A5D4(&qword_1009632C0, &unk_10079B000);
  __chkstk_darwin(v9 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v96 = &v86 - v13;
  v14 = sub_10076B5BC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v99 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v101 = &v86 - v18;
  v19 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v19 - 8);
  v93 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v94 = &v86 - v22;
  __chkstk_darwin(v23);
  v98 = &v86 - v24;
  v25 = sub_10076F7FC();
  v102 = *(v25 - 8);
  v103 = v25;
  __chkstk_darwin(v25);
  v92 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v95 = &v86 - v28;
  __chkstk_darwin(v29);
  v97 = &v86 - v30;
  if (sub_10075E0BC() >= 2)
  {
    v88 = v11;
    v89 = *(v4 + 16);
    v31 = sub_10076830C();
    v90 = sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    v100 = a2;
    v32 = sub_100761AEC();
    v110 = sub_100016F40(0, &qword_10094D1D0, UICollectionViewCell_ptr);
    v109[0] = a1;
    v33 = a1;
    v91 = v32;
    sub_10076756C();
    sub_10000CD74(v109);
    swift_getObjectType();
    v34 = swift_conformsToProtocol2();
    v104 = a4;
    v105 = v31;
    if (v34 && v33)
    {
      sub_100767D5C();
      v87 = v15;
      sub_10076F64C();
      v35 = v33;
      sub_10076FC1C();
      v36 = v109[0];
      swift_getObjectType();
      v37 = sub_100765B4C();
      v38 = v14;
      v39 = v5;
      v40 = v35;
      sub_100767CFC();

      v5 = v39;
      v14 = v38;

      v15 = v87;
    }

    v108 = v33;
    v41 = v33;
    sub_10000A5D4(&qword_1009520D8, &unk_1007B36B0);
    if (swift_dynamicCast())
    {
      sub_100012498(v106, v109);
      sub_100767D5C();
      sub_10076F64C();
      sub_10076FC1C();
      v42 = *&v106[0];
      sub_10000CF78(v109, v110);
      sub_10076818C();

      sub_10000CD74(v109);
    }

    else
    {
      v107 = 0;
      memset(v106, 0, sizeof(v106));
      sub_10000CFBC(v106, &unk_1009520E0, &unk_10079B020);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v33)
    {
      sub_100764FAC();
      v43 = v41;
      sub_10076F63C();
      v44 = v109[0];
      if (v109[0])
      {
        v45 = v43;
        v46 = v44;
        sub_100764F5C();

        v43 = v46;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v33)
    {
      swift_getObjectType();
      v47 = v41;
      sub_100768BFC();
    }

    swift_getObjectType();
    v48 = swift_conformsToProtocol2();
    if (v48 && v33)
    {
      v49 = v48;
      ObjectType = swift_getObjectType();
      v51 = *(v49 + 8);
      v52 = v41;
      v51(ObjectType, v49);
    }

    if (v91)
    {
      swift_getObjectType();
      v53 = swift_conformsToProtocol2();
      if (v53 && v33)
      {
        v54 = v53;
        v55 = swift_getObjectType();
        v56 = *(v54 + 40);
        v57 = v41;
        v56(v55, v54);
      }

      v58 = sub_10075E0AC();
      v59 = sub_10062B9AC(v58);
      sub_10075E0AC();
      if (v59)
      {
        sub_100761B4C();
        v60 = v98;
        sub_10076B6FC();
        v62 = v102;
        v61 = v103;
        if ((*(v102 + 48))(v60, 1, v103) == 1)
        {

          sub_10000CFBC(v60, &qword_1009492E0, &qword_1007893A0);
        }

        else
        {
          v73 = v97;
          (*(v62 + 32))(v97, v60, v61);
          if (*(v5 + 112))
          {

            sub_10076610C();
          }

          (*(v62 + 8))(v73, v61);
        }

        return;
      }

      v63 = v101;
      sub_100761A7C();
      sub_10075E0AC();
      v64 = sub_100761A3C();
      v65 = v99;
      (*(v15 + 16))(v99, v63, v14);
      v66 = (*(v15 + 88))(v65, v14);
      if (v66 == enum case for Shelf.ContentType.smallLockup(_:) || v66 == enum case for Shelf.ContentType.mediumLockup(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.largeLockup(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v66 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v66 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.editorialCard(_:) || v66 == enum case for Shelf.ContentType.videoCard(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.brick(_:) || v66 == enum case for Shelf.ContentType.categoryBrick(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.reviews(_:) || v66 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v66 == enum case for Shelf.ContentType.framedVideo(_:) || v66 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v66 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v66 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v66 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v66 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v66 == enum case for Shelf.ContentType.posterLockup(_:) || v66 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.appPromotion(_:))
      {
LABEL_51:
        if (v64)
        {
          goto LABEL_56;
        }
      }

      else
      {
        (*(v15 + 8))(v65, v14);
      }

      v67 = sub_100761A9C();
      if (sub_10075E0AC() < v67)
      {
        v68 = sub_10075E09C();
        sub_10075E0AC();
        if (v68 < sub_100761A8C())
        {
          sub_100761B3C();
          sub_10000CF78(v109, v110);
          v69 = v94;
          sub_10076FE2C();
          v70 = v102;
          v71 = *(v102 + 48);
          v72 = v103;
          if (v71(v69, 1, v103) == 1)
          {
            (*(v15 + 8))(v101, v14);
            sub_10000CFBC(v69, &qword_1009492E0, &qword_1007893A0);
          }

          else
          {
            (*(v70 + 32))(v95, v69, v72);
            sub_10075E0AC();
            sub_100761B4C();
            v74 = v93;
            sub_10076B6FC();
            if (v71(v74, 1, v72) == 1)
            {
              sub_10000CFBC(v74, &qword_1009492E0, &qword_1007893A0);
              v75 = 1;
              v76 = v96;
            }

            else
            {
              v76 = v96;
              sub_10076F7DC();
              (*(v70 + 8))(v74, v72);
              v75 = 0;
            }

            v77 = v88;
            v78 = sub_10076F7CC();
            v79 = *(v78 - 8);
            (*(v79 + 56))(v76, v75, 1, v78);
            if (*(v5 + 112))
            {
              sub_1002F90EC(v76, v77);
              v80 = (*(v79 + 48))(v77, 1, v78);

              if (v80 == 1)
              {
                sub_10000CFBC(v77, &qword_1009632C0, &unk_10079B000);
              }

              else
              {
                sub_10076F7BC();
                (*(v79 + 8))(v77, v78);
              }

              v84 = v95;
              v85 = v92;
              sub_10076F78C();

              sub_10076610C();

              v83 = v102;
              v82 = v103;
              (*(v102 + 8))(v85, v103);
              v81 = *(v5 + 112);
            }

            else
            {
              v81 = 0;
              v83 = v102;
              v82 = v103;
              v84 = v95;
            }

            sub_1002F7684(v109, v81);

            sub_10000CFBC(v96, &qword_1009632C0, &unk_10079B000);
            (*(v83 + 8))(v84, v82);
            (*(v15 + 8))(v101, v14);
          }

          sub_10000CD74(v109);
          return;
        }
      }

LABEL_56:
      (*(v15 + 8))(v63, v14);
    }
  }
}

id sub_1002F8B08(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076593C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076823C())
  {
    sub_10076829C();
    v11 = sub_10076592C();
    v25[0] = v12;
    v25[1] = v11;
    (*(v8 + 8))(v10, v7);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v4 + 16))(v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    (*(v4 + 32))(v15 + v14, v6, v3);

    v16 = sub_10076FF6C();

    aBlock[4] = sub_1002F8FF0;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10067F350;
    aBlock[3] = &unk_100890C00;
    v17 = _Block_copy(aBlock);
    v18 = [objc_opt_self() contextualActionWithStyle:1 title:v16 handler:v17];

    _Block_release(v17);

    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1007841E0;
    *(v19 + 32) = v18;
    sub_100016F40(0, &unk_1009632F0, UIContextualAction_ptr);
    v20 = v18;
    isa = sub_1007701AC().super.isa;

    v22 = [objc_opt_self() configurationWithActions:isa];

    [v22 setPerformsFirstActionWithFullSwipe:0];
  }

  else
  {
    sub_100016F40(0, &unk_1009632F0, UIContextualAction_ptr);
    v23 = sub_1007701AC().super.isa;
    v22 = [objc_opt_self() configurationWithActions:v23];
  }

  return v22;
}

uint64_t sub_1002F8EF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002F8F2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1002F8FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(sub_10075E11C() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_1002F173C(a1, a2, a3, a4, v10, v11);
}

double sub_1002F908C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002F90A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002F90EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009632C0, &unk_10079B000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F915C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002F9194(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 8, v5 | 7);
}

uint64_t sub_1002F9230(uint64_t a1, uint64_t a2)
{
  v4 = *(sub_10075E11C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002F69B0(a1, v2 + v5, v6);
}

double sub_1002F92CC(uint64_t a1, void *a2, __n128 a3, double a4)
{
  v7 = a3.n128_u64[0];
  v32 = sub_100766A2C();
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100766A4C();
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10076997C();
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v16.n128_u64[0] = v7;
  sub_1002FCA30(a2, v16, a4);
  v17 = sub_10076DDDC();
  swift_allocObject();
  v18 = sub_10076DD9C();
  if (sub_100766A1C())
  {
    v28 = a1;
    v29 = v11;
    sub_100016F40(0, &qword_100942F00, UIFont_ptr);
    if (qword_100940FD0 != -1)
    {
      swift_once();
    }

    v19 = sub_10076D3DC();
    sub_10000A61C(v19, qword_1009A1D68);
    v20 = [a2 traitCollection];
    sub_100770B3C();

    v21 = sub_10076C04C();
    *(&v42 + 1) = v21;
    v43 = sub_1002FEEA4(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v22 = sub_10000DB7C(&v41);
    (*(*(v21 - 8) + 104))(v22, enum case for Feature.measurement_with_labelplaceholder(_:), v21);
    sub_10076C90C();
    sub_10000CD74(&v41);
    sub_10076996C();
    sub_10076994C();
    (*(v30 + 8))(v15, v31);
    v11 = v29;
    a1 = v28;
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
  }

  (*(v8 + 16))(v10, a1, v32);
  v39 = v17;
  v40 = &protocol witness table for LayoutViewPlaceholder;
  v38 = v18;
  swift_allocObject();

  v23 = sub_10076DDBC();
  v36 = v17;
  v37 = &protocol witness table for LayoutViewPlaceholder;
  v35 = v23;
  sub_100016E2C(&v41, v34, &qword_10094BB30, qword_100796E40);
  sub_100766A3C();
  sub_1002FEEA4(&qword_100952180, &type metadata accessor for MixedMediaLockupLayout, &protocol conformance descriptor for MixedMediaLockupLayout);
  sub_10076D2AC();
  v25 = v24;

  (*(v33 + 8))(v13, v11);
  sub_10000CFBC(&v41, &qword_10094BB30, qword_100796E40);
  return v25;
}

double sub_1002F9808(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, __n128 a5, double a6)
{
  v63 = a3;
  v62 = a2;
  v70 = a1;
  v9 = a5.n128_u64[0];
  v68 = sub_100766A4C();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10076997C();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007669EC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v69 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  __chkstk_darwin(v18);
  v20 = &v57 - v19;
  v21 = sub_10000A5D4(&qword_1009451E8, qword_100787680);
  __chkstk_darwin(v21 - 8);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v57 - v25;
  v65 = sub_100766A2C();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v71 = &v57 - v29;
  swift_getObjectType();
  v30.n128_u64[0] = v9;
  sub_1002FCA30(a4, v30, a6);
  (*(v13 + 56))(v26, 1, 1, v12);
  sub_100016E2C(v26, v23, &qword_1009451E8, qword_100787680);
  v31 = *(v13 + 48);
  if (v31(v23, 1, v12) == 1)
  {
    (*(v6 + 224))();
    if (v31(v23, 1, v12) != 1)
    {
      sub_10000CFBC(v23, &qword_1009451E8, qword_100787680);
    }
  }

  else
  {
    (*(v13 + 32))(v20, v23, v12);
  }

  v32 = *(v13 + 16);
  v32(v17, v20, v12);
  v33 = (*(v13 + 88))(v17, v12);
  if (v33 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    if (qword_10093FB10 != -1)
    {
      swift_once();
    }

    sub_10000A570(qword_10099DB28, &v77);
  }

  else if (v33 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_10093FB08 != -1)
    {
      swift_once();
    }

    sub_10000A570(qword_10099DB00, &v77);
  }

  else
  {
    if (qword_10093FB10 != -1)
    {
      swift_once();
    }

    sub_10000A570(qword_10099DB28, &v77);
    (*(v13 + 8))(v17, v12);
  }

  v32(v69, v20, v12);
  sub_10000A570(&v77, v76);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940FD0 != -1)
  {
    swift_once();
  }

  v34 = sub_10076D3DC();
  sub_10000A61C(v34, qword_1009A1D68);
  v60 = a4;
  v35 = [a4 traitCollection];
  sub_100770B3C();

  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v36 = sub_10076D9AC();
  v37 = sub_10000A61C(v36, qword_1009A2350);
  v74 = v36;
  v75 = &protocol witness table for StaticDimension;
  v38 = sub_10000DB7C(v73);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  v39 = v70;
  sub_100766A0C();
  sub_10000CD74(&v77);
  (*(v13 + 8))(v20, v12);
  sub_10000CFBC(v26, &qword_1009451E8, qword_100787680);
  v40 = sub_10076DDDC();
  swift_allocObject();
  v41 = sub_10076DD9C();
  if (v63)
  {
    v42 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v42 = v62 & 0xFFFFFFFFFFFFLL;
    }

    v43 = v60;
    if (!v42 && (v39 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_27:

    v44 = [v43 traitCollection];
    sub_100770B3C();

    v45 = sub_10076C04C();
    *(&v78 + 1) = v45;
    v79 = sub_1002FEEA4(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v46 = sub_10000DB7C(&v77);
    (*(*(v45 - 8) + 104))(v46, enum case for Feature.measurement_with_labelplaceholder(_:), v45);
    sub_10076C90C();
    sub_10000CD74(&v77);
    v47 = v57;
    sub_10076996C();
    sub_10076994C();
    (*(v58 + 8))(v47, v59);
    goto LABEL_28;
  }

  v43 = v60;
  if (v39)
  {
    goto LABEL_27;
  }

LABEL_25:
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
LABEL_28:
  v48 = v64;
  v49 = v71;
  v50 = v65;
  (*(v64 + 16))(v61, v71, v65);
  v76[3] = v40;
  v76[4] = &protocol witness table for LayoutViewPlaceholder;
  v76[0] = v41;
  swift_allocObject();

  v51 = sub_10076DDBC();
  v74 = v40;
  v75 = &protocol witness table for LayoutViewPlaceholder;
  v73[0] = v51;
  sub_100016E2C(&v77, v72, &qword_10094BB30, qword_100796E40);
  v52 = v66;
  sub_100766A3C();
  sub_1002FEEA4(&qword_100952180, &type metadata accessor for MixedMediaLockupLayout, &protocol conformance descriptor for MixedMediaLockupLayout);
  v53 = v68;
  sub_10076D2AC();
  v55 = v54;

  (*(v67 + 8))(v52, v53);
  sub_10000CFBC(&v77, &qword_10094BB30, qword_100796E40);
  (*(v48 + 8))(v49, v50);
  return v55;
}

unint64_t sub_1002FA308(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, void, uint64_t, uint64_t, __n128), uint64_t a5, void *a6)
{
  v7 = v6;
  v238 = a5;
  v247 = a4;
  v258 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&qword_10094A428, &qword_10078D678);
  __chkstk_darwin(v10 - 8);
  v220 = &v216 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v225 = &v216 - v13;
  v237 = sub_10076B6EC();
  v249 = *(v237 - 8);
  __chkstk_darwin(v237);
  v15 = &v216 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v16 - 8);
  v233 = &v216 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v234 = &v216 - v19;
  v20 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v20 - 8);
  v232 = &v216 - v21;
  v22 = sub_1007611EC();
  __chkstk_darwin(v22 - 8);
  v224 = &v216 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v223 = &v216 - v25;
  __chkstk_darwin(v26);
  v229 = &v216 - v27;
  __chkstk_darwin(v28);
  v228 = &v216 - v29;
  v231 = sub_10076121C();
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v222 = &v216 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v227 = &v216 - v32;
  v236 = sub_10076481C();
  v235 = *(v236 - 8);
  __chkstk_darwin(v236);
  v226 = &v216 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v251 = &v216 - v35;
  v219 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v243 = &v216 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_10076D39C();
  v266 = *(v257 - 8);
  __chkstk_darwin(v257);
  v248 = &v216 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_10076357C();
  v240 = *(v241 - 8);
  __chkstk_darwin(v241);
  v239 = &v216 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10076350C();
  v262 = *(v39 - 8);
  v263 = v39;
  __chkstk_darwin(v39);
  v217 = &v216 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v252 = (&v216 - v42);
  __chkstk_darwin(v43);
  v261 = &v216 - v44;
  v260 = sub_1007673CC();
  v267 = *(v260 - 8);
  __chkstk_darwin(v260);
  v242 = &v216 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v268 = &v216 - v47;
  v246 = sub_10076664C();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v244 = &v216 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v49 - 8);
  v221 = &v216 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v256 = &v216 - v52;
  __chkstk_darwin(v53);
  v269 = &v216 - v54;
  v55 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v55 - 8);
  v265 = &v216 - v56;
  v57 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v57 - 8);
  v270 = &v216 - v58;
  v59 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v59 - 8);
  v264 = &v216 - v60;
  v61 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v61 - 8);
  v259 = &v216 - v62;
  v63 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v63 - 8);
  v65 = (&v216 - v64);
  v66 = sub_1007627FC();
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v69 = &v216 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10000A5D4(&qword_100952188, &qword_10079B0E0);
  __chkstk_darwin(v70 - 8);
  v72 = &v216 - v71;
  v73 = sub_10000A5D4(&qword_1009451E8, qword_100787680);
  *&v74 = __chkstk_darwin(v73 - 8).n128_u64[0];
  v76 = &v216 - v75;
  v77 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_pageTraits] = v77;
  swift_unknownObjectRelease();
  v254 = a1;
  sub_1007627EC();
  v78 = (*(v67 + 48))(v72, 1, v66);
  v255 = v7;
  v250 = v15;
  if (v78 == 1)
  {
    sub_10000CFBC(v72, &qword_100952188, &qword_10079B0E0);
    v79 = sub_1007669EC();
    (*(*(v79 - 8) + 56))(v76, 1, 1, v79);
  }

  else
  {
    (*(v67 + 16))(v69, v72, v66);
    v80 = (*(v67 + 88))(v69, v66);
    if (v80 == enum case for MixedMediaLockup.LockupPosition.top(_:))
    {
      v81 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      v82 = sub_1007669EC();
      (*(*(v82 - 8) + 104))(v76, v81, v82);
    }

    else
    {
      v83 = v80;
      v84 = enum case for MixedMediaLockup.LockupPosition.bottom(_:);
      v82 = sub_1007669EC();
      v85 = *(*(v82 - 8) + 104);
      if (v83 == v84)
      {
        v85(v76, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v82);
      }

      else
      {
        v85(v76, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v82);
        (*(v67 + 8))(v69, v66);
      }
    }

    (*(v67 + 8))(v72, v66);
    sub_1007669EC();
    (*(*(v82 - 8) + 56))(v76, 0, 1, v82);
    v7 = v255;
  }

  v86 = ObjectType;
  v87 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  swift_beginAccess();
  sub_1002FCC3C(v76, &v7[v87]);
  swift_endAccess();
  [v7 setNeedsLayout];
  sub_10000CFBC(v76, &qword_1009451E8, qword_100787680);
  v88 = *&v7[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_lockupView];
  v89 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  (*(*(v89 - 8) + 56))(v65, 1, 1, v89);
  v90 = sub_10075F78C();
  v91 = v259;
  (*(*(v90 - 8) + 56))(v259, 1, 1, v90);
  v92 = sub_1007628DC();
  v93 = v264;
  (*(*(v92 - 8) + 56))(v264, 1, 1, v92);
  v94 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v95 = v270;
  (*(*(v94 - 8) + 56))(v270, 1, 1, v94);
  v96 = sub_10076C54C();
  v97 = v265;
  (*(*(v96 - 8) + 56))(v265, 1, 1, v96);
  v98 = v88;
  v99 = v254;
  sub_1004D0A60(v254, v98, v65, v258, 0, 0, v91, v93, v97, v95);
  sub_10000CFBC(v97, &unk_100949290, &unk_10078BBF0);
  v98[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10026202C();
  [v98 setNeedsLayout];

  sub_10000CFBC(v95, &qword_10094F730, qword_10078A050);
  sub_10000CFBC(v93, &unk_1009492A0, &unk_10078BC00);
  sub_10000CFBC(v91, &unk_10094D210, &qword_10078DE20);
  v100 = sub_10000CFBC(v65, &unk_100946760, &unk_100787A20);
  v101 = (*(v86 + 192))(v100);
  v265 = 0;
  v102 = v269;
  if ((v101 & 1) == 0)
  {
    goto LABEL_19;
  }

  result = sub_10076280C();
  if (result >> 62)
  {
    v104 = result;
    v105 = sub_10077158C();
    result = v104;
    if (v105)
    {
      goto LABEL_13;
    }

LABEL_18:

    v265 = 0;
    goto LABEL_19;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((result & 0xC000000000000001) != 0)
  {
    v265 = sub_10077149C();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_90;
    }

    v265 = *(result + 32);
  }

LABEL_19:
  if (((*(v86 + 216))() & 1) == 0)
  {
    v106 = 0;
    v264 = 0;
    goto LABEL_30;
  }

  result = sub_10076288C();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

LABEL_28:

    v264 = 0;
    goto LABEL_29;
  }

  v107 = result;
  v108 = sub_10077158C();
  result = v107;
  if (!v108)
  {
    goto LABEL_28;
  }

LABEL_22:
  if ((result & 0xC000000000000001) != 0)
  {
    v264 = sub_10077149C();
    goto LABEL_25;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v264 = *(result + 32);

LABEL_25:

LABEL_29:
  v106 = sub_10076281C();
LABEL_30:
  v270 = v106;
  v259 = sub_10076283C();
  v109 = v244;
  sub_10076662C();
  sub_1002FEEA4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v110 = v246;
  v111 = sub_10077124C();
  (*(v245 + 8))(v109, v110);
  if (v111)
  {
    v112 = 1;
  }

  else
  {
    v113 = ASKDeviceTypeGetCurrent();
    sub_100224EB8(v113);

    v112 = 0;
  }

  v114 = *(v266 + 56);
  v266 += 56;
  v247 = v114;
  (v114)(v102, v112, 1, v257);
  v115 = v268;
  sub_10076285C();
  v99 = *&v7[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView];
  v116 = sub_10076283C();
  v117 = sub_10076281C();
  v118 = ASKDeviceTypeGetCurrent();
  v119 = v261;
  v121 = v264;
  v120 = v265;
  (*(v86 + 456))(v116, v117, v265, v264, v118, v115);

  v272[3] = &type metadata for CGFloat;
  v272[4] = &protocol witness table for CGFloat;
  v272[0] = 0x4021000000000000;
  sub_10000A570(v272, v271);
  v97 = *(v262 + 16);
  (v97)(v252, v119, v263);
  if (v270 | v259)
  {
    sub_10076D3AC();
    v93 = v250;
    v123 = v120;
    v65 = &off_100911000;
  }

  else
  {
    result = sub_10057F8EC(v120, v121, 0, 1, v122);
    v123 = v120;
    if (result >> 62)
    {
      v193 = result;
      v124 = sub_10077158C();
      result = v193;
    }

    else
    {
      v124 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v93 = v250;
    v65 = &off_100911000;
    if (v124)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        sub_10077149C();
        goto LABEL_40;
      }

      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_40:

        sub_10076BEFC();
        sub_10076D3AC();

        goto LABEL_43;
      }

LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    sub_10076D3AC();
  }

LABEL_43:
  sub_100016E2C(v269, v256, &unk_1009467E0, qword_10078CB50);
  v125 = v239;
  sub_10076354C();
  sub_10000CD74(v272);
  v126 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v127 = v240;
  v128 = &v99[v126];
  v129 = v241;
  (*(v240 + 24))(v128, v125, v241);
  swift_endAccess();
  [v99 v65[194]];
  (*(v127 + 8))(v125, v129);
  if (v123)
  {
    v130 = sub_1007601CC();
  }

  else
  {
    v130 = 0;
  }

  sub_1007601EC();
  v131 = v243;
  sub_10007AFB4(v130, v243);

  v132 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_100125E2C(v131, &v99[v132]);
  swift_endAccess();
  sub_10057D9D0();
  sub_100125E90(v131);
  if (v123)
  {
    v123 = sub_1007601CC();
  }

  v133 = v242;
  *&v99[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform] = v123;

  sub_10057DBD4();

  v134 = v267;
  v135 = v260;
  (*(v267 + 16))(v133, v268, v260);
  v136 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v134 + 24))(&v99[v136], v133, v135);
  swift_endAccess();
  [v99 v65[194]];
  v137 = *(v134 + 8);
  v267 = v134 + 8;
  v252 = v137;
  v137(v133, v135);
  if (!v270)
  {
    if (!v264)
    {
      goto LABEL_94;
    }

    result = sub_10076C41C();
    if (!(result >> 62))
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

LABEL_93:

LABEL_94:
      v196 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
      v197 = *&v99[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
      if (v197)
      {
        [v197 removeFromSuperview];
        v198 = *&v99[v196];
      }

      else
      {
        v198 = 0;
      }

      v157 = v255;
      v158 = v249;
      *&v99[v196] = 0;

      v153 = v65;
      [v99 v65[194]];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_103;
      }

      v200 = Strong;
      sub_1002FEEA4(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v201 = [v200 superview];
      if (v201)
      {
        v202 = v201;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v203 = v99;
        v204 = sub_100770EEC();

        v158 = v249;
        if ((v204 & 1) == 0)
        {
          goto LABEL_103;
        }

        v205 = swift_unknownObjectWeakLoadStrong();
        if (!v205)
        {
          goto LABEL_103;
        }

        v200 = v205;
        [v205 removeFromSuperview];
      }

LABEL_103:
      swift_unknownObjectWeakAssign();
      v206 = swift_unknownObjectWeakLoadStrong();
      if (v206)
      {
        v207 = v206;
        [v99 addSubview:v206];
      }

      sub_10057E5D8();
      [v99 v65[194]];
      goto LABEL_106;
    }

LABEL_92:
    v194 = result;
    v195 = sub_10077158C();
    result = v194;
    if (v195)
    {
LABEL_62:
      if ((result & 0xC000000000000001) != 0)
      {
        v256 = sub_10077149C();
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v256 = *(result + 32);
      }

      v160 = v217;
      v161 = v263;
      (v97)(v217, v261, v263);
      v162 = v262;
      v163 = (*(v262 + 88))(v160, v161);
      v164 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
      (*(v162 + 8))(v160, v161);
      if (v163 == v164)
      {
        v165 = 1;
        v157 = v255;
        v93 = v250;
        v166 = v225;
      }

      else
      {
        v168 = sub_10076C40C();
        v166 = v225;
        sub_10007AFB4(v168, v225);

        v165 = 0;
        v157 = v255;
        v93 = v250;
      }

      v169 = v218;
      v170 = v219;
      (*(v218 + 56))(v166, v165, 1, v219);
      (*(v230 + 104))(v222, enum case for VideoFillMode.scaleAspectFill(_:), v231);
      sub_10076B84C();
      sub_10076BEFC();
      v171 = v221;
      sub_10076D3AC();

      (v247)(v171, 0, 1, v257);
      sub_10076B7EC();
      sub_10076B82C();
      LODWORD(v266) = sub_10076B7FC();
      sub_10076B7DC();
      sub_10076B83C();
      v172 = v220;
      sub_100016E2C(v166, v220, &qword_10094A428, &qword_10078D678);
      if ((*(v169 + 48))(v172, 1, v170) == 1)
      {
        sub_10000CFBC(v172, &qword_10094A428, &qword_10078D678);
      }

      else
      {
        sub_100125E90(v172);
      }

      sub_1007647FC();
      sub_100762F0C();
      sub_10076F5CC();
      v173 = v272[0];
      sub_10076B7CC();
      v174 = v232;
      sub_10076B85C();
      v175 = sub_10075DB7C();
      (*(*(v175 - 8) + 56))(v174, 0, 1, v175);
      v176 = v234;
      sub_10076B81C();
      v177 = v233;
      sub_10076B80C();
      type metadata accessor for VideoView(0);
      sub_1002FEEA4(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v266 = v173;
      v178 = sub_100762EEC();
      sub_10000CFBC(v177, &unk_10094C030, &unk_10078D680);
      sub_10000CFBC(v176, &unk_10094C030, &unk_10078D680);
      sub_10000CFBC(v174, &unk_1009435D0, &qword_100785850);
      sub_10000CFBC(v272, &qword_100943310, &unk_100784150);
      v179 = swift_unknownObjectWeakLoadStrong();
      if (!v179)
      {
        goto LABEL_79;
      }

      v180 = v179;
      v181 = [v179 superview];
      if (v181)
      {
        v182 = v181;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v183 = v99;
        v184 = sub_100770EEC();

        v157 = v255;
        if ((v184 & 1) == 0)
        {
          goto LABEL_79;
        }

        v185 = swift_unknownObjectWeakLoadStrong();
        if (!v185)
        {
          goto LABEL_79;
        }

        v180 = v185;
        [v185 removeFromSuperview];
      }

LABEL_79:
      swift_unknownObjectWeakAssign();
      v186 = swift_unknownObjectWeakLoadStrong();
      if (v186)
      {
        v187 = v186;
        [v99 addSubview:v186];
      }

      sub_10057E5D8();
      [v99 setNeedsLayout];

      v188 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
      v189 = *&v99[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
      v158 = v249;
      v190 = v225;
      if (v189)
      {
        [v189 removeFromSuperview];
        v191 = *&v99[v188];
      }

      else
      {
        v191 = 0;
      }

      v192 = v236;
      *&v99[v188] = 0;

      v153 = &off_100911000;
      [v99 setNeedsLayout];

      (*(v235 + 8))(v226, v192);
      sub_10000CFBC(v190, &qword_10094A428, &qword_10078D678);
      goto LABEL_106;
    }

    goto LABEL_93;
  }

  (*(v230 + 104))(v227, enum case for VideoFillMode.scaleAspectFill(_:), v231);

  sub_10076B84C();
  sub_10076BEFC();
  v138 = v93;
  v139 = v256;
  sub_10076D3AC();

  (v247)(v139, 0, 1, v257);
  sub_10076B7EC();
  sub_10076B82C();
  sub_10076B7FC();
  sub_10076B7DC();
  sub_10076B83C();
  v93 = v138;
  sub_1007647FC();
  sub_100762F0C();
  sub_10076F5CC();
  sub_10076B7CC();
  v140 = v232;
  sub_10076B85C();
  v141 = sub_10075DB7C();
  (*(*(v141 - 8) + 56))(v140, 0, 1, v141);
  v142 = v234;
  sub_10076B81C();
  v143 = v233;
  sub_10076B80C();
  type metadata accessor for VideoView(0);
  sub_1002FEEA4(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
  v144 = sub_100762EEC();
  sub_10000CFBC(v143, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v142, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v140, &unk_1009435D0, &qword_100785850);
  sub_10000CFBC(v272, &qword_100943310, &unk_100784150);
  v145 = swift_unknownObjectWeakLoadStrong();
  if (v145)
  {
    v146 = v145;
    v147 = [v145 superview];
    if (v147)
    {
      v148 = v147;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v149 = v99;
      v150 = sub_100770EEC();

      if ((v150 & 1) == 0)
      {
        goto LABEL_55;
      }

      v151 = swift_unknownObjectWeakLoadStrong();
      if (!v151)
      {
        goto LABEL_55;
      }

      v146 = v151;
      [v151 removeFromSuperview];
    }
  }

LABEL_55:
  swift_unknownObjectWeakAssign();
  v152 = swift_unknownObjectWeakLoadStrong();
  v153 = &off_100911000;
  if (v152)
  {
    v154 = v152;
    [v99 addSubview:v152];
  }

  sub_10057E5D8();
  [v99 setNeedsLayout];

  v155 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
  v156 = *&v99[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
  v157 = v255;
  v158 = v249;
  if (v156)
  {
    [v156 removeFromSuperview];
    v159 = *&v99[v155];
  }

  else
  {
    v159 = 0;
  }

  v167 = v236;
  *&v99[v155] = 0;

  [v99 setNeedsLayout];

  (*(v235 + 8))(v251, v167);
LABEL_106:
  v208 = v153;
  [v99 v153[194]];

  (*(v262 + 8))(v261, v263);
  v209 = *&v157[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_taglineLabel];
  sub_10076B6AC();
  sub_1002FEEA4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v210 = v237;
  v211 = sub_10077124C();
  v212 = *(v158 + 8);
  v212(v93, v210);
  if ((v211 & 1) != 0 && ((*(ObjectType + 472))(v254), v213))
  {
    v214 = sub_10076FF6C();
    v208 = 0x100911000;
  }

  else
  {
    v214 = 0;
  }

  [v209 setText:v214];

  sub_10076B6AC();
  v215 = sub_10077124C();
  v212(v93, v210);
  v157[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace] = v215 & 1;
  [v157 *(v208 + 1552)];
  [v157 *(v208 + 1552)];

  v252(v268, v260);
  return sub_10000CFBC(v269, &unk_1009467E0, qword_10078CB50);
}

void sub_1002FC7FC(void *a1, double a2, double a3)
{
  type metadata accessor for SmallLockupView(0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v6 = sub_100763ADC();
  v7 = sub_10000A61C(v6, qword_10099DDA0);
  swift_getObjectType();
  sub_100262AD0(v7, a1, a2, a3);
}

void sub_1002FC8FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_lockupView);
  sub_100264A9C(a1, a2);
}

double sub_1002FCA30(uint64_t a1, __n128 a2, double a3)
{
  v3 = sub_10076357C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D39C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = ASKDeviceTypeGetCurrent();
  sub_100224EB8(v11);

  sub_10057CD00(v10, v6);
  sub_1007635AC();
  sub_1002FEEA4(&qword_10094A408, &type metadata accessor for LockupMediaLayout, &protocol conformance descriptor for LockupMediaLayout);
  sub_10076DBDC();
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_1002FCC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009451E8, qword_100787680);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1002FCCAC(char *a1, __n128 a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v138 = a6;
  v8 = a2.n128_f64[0];
  v129 = sub_100766A4C();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10076997C();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1007669EC();
  v139 = *(v134 - 8);
  __chkstk_darwin(v134);
  v135 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v112 = &v106 - v14;
  __chkstk_darwin(v15);
  v113 = &v106 - v16;
  v126 = sub_100766A2C();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v122 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v137 = &v106 - v19;
  v121 = sub_10076350C();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v21 - 8);
  v118 = &v106 - v22;
  v124 = sub_1007673CC();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v136 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1007627FC();
  v133 = *(v116 - 8);
  __chkstk_darwin(v116);
  v107 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&qword_100952188, &qword_10079B0E0);
  __chkstk_darwin(v25 - 8);
  v132 = &v106 - v26;
  v27 = sub_10000A5D4(&qword_1009451E8, qword_100787680);
  __chkstk_darwin(v27 - 8);
  v117 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v140 = &v106 - v30;
  v31 = sub_10076664C();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076662C();
  sub_1002FEEA4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v35 = sub_10077124C();
  v36 = *(v32 + 8);
  v36(v34, v31);
  v37 = *(v6 + 472);
  v131 = a1;
  v38 = a1;
  v39 = v6;
  v115 = v6 + 472;
  v114 = v37;
  v130 = (v37)(v38);
  v41 = v40;
  sub_10076661C();
  v42 = sub_10077124C();
  v36(v34, v31);
  if ((v35 & 1) == 0)
  {
    v43.n128_f64[0] = v8;
    sub_1002F9808(v42 & 1, v130, v41, v138, v43, a3);

    return v8;
  }

  v44 = v131;
  v130 = sub_10076283C();
  v45 = (*(v6 + 216))();
  v46 = v6;
  if (v45)
  {
    v111 = sub_10076281C();
  }

  else
  {
    v111 = 0;
  }

  v47 = v134;
  v48 = v139;
  v49 = v133;
  v50 = v132;
  if (((*(v6 + 192))() & 1) == 0)
  {
LABEL_16:
    v133 = 0;
    if ((v45 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v51 = v44;
  v52 = sub_10076280C();
  if (v52 >> 62)
  {
    v51 = v52;
    v53 = sub_10077158C();
    v52 = v51;
    if (v53)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_9:
  if ((v52 & 0xC000000000000001) != 0)
  {
    v133 = sub_10077149C();
  }

  else
  {
    if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v133 = *(v52 + 32);
  }

  if ((v45 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  v51 = v44;
  v54 = sub_10076288C();
  if (v54 >> 62)
  {
    v55 = v54;
    v56 = sub_10077158C();
    v54 = v55;
    if (v56)
    {
      goto LABEL_19;
    }
  }

  else if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    if ((v54 & 0xC000000000000001) != 0)
    {
      v132 = sub_10077149C();
      goto LABEL_22;
    }

    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v132 = *(v54 + 32);

LABEL_22:

      goto LABEL_26;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
    goto LABEL_44;
  }

LABEL_25:
  v132 = 0;
LABEL_26:
  v57 = (v114)(v44);
  v134 = v58;
  sub_1007627EC();
  v59 = v116;
  v60 = (*(v49 + 48))(v50, 1, v116);
  v115 = v57;
  if (v60 == 1)
  {
    sub_10000CFBC(v50, &qword_100952188, &qword_10079B0E0);
    v61 = 1;
  }

  else
  {
    v62 = v107;
    (*(v49 + 16))(v107, v50, v59);
    v63 = (*(v49 + 88))(v62, v59);
    if (v63 == enum case for MixedMediaLockup.LockupPosition.top(_:))
    {
      (*(v48 + 104))(v140, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v47);
    }

    else
    {
      v64 = *(v48 + 104);
      if (v63 == enum case for MixedMediaLockup.LockupPosition.bottom(_:))
      {
        v64(v140, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v47);
      }

      else
      {
        v64(v140, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v47);
        (*(v49 + 8))(v107, v59);
      }
    }

    (*(v49 + 8))(v50, v59);
    v61 = 0;
  }

  (*(v48 + 56))(v140, v61, 1, v47);
  v65 = v136;
  sub_10076285C();
  v66 = ASKDeviceTypeGetCurrent();
  v116 = type metadata accessor for LockupMediaView(0);
  v67 = sub_10076D39C();
  v68 = v118;
  (*(*(v67 - 8) + 56))(v118, 1, 1, v67);
  v69 = *(v39 + 456);
  v70 = v119;
  v71 = v130;
  v72 = v111;
  v73 = v133;
  v74 = v46;
  v75 = v132;
  v131 = v66;
  v114 = v74;
  v69(v130, v111, v133, v132, v66, v65);
  v76 = v138;
  swift_getObjectType();
  sub_100141F14(v71, v72, v73, v75, v68, v70, v76, v65, v8, a3);
  (*(v120 + 8))(v70, v121);
  sub_10000CFBC(v68, &unk_1009467E0, qword_10078CB50);
  v77 = v117;
  sub_100016E2C(v140, v117, &qword_1009451E8, qword_100787680);
  v78 = v139;
  v79 = *(v139 + 48);
  v80 = v139;
  if (v79(v77, 1, v47) == 1)
  {
    v44 = v113;
    v114[28]();
    v81 = v79(v77, 1, v47);
    v82 = v112;
    v83 = v134;
    if (v81 != 1)
    {
      sub_10000CFBC(v77, &qword_1009451E8, qword_100787680);
    }
  }

  else
  {
    v44 = v113;
    (*(v78 + 32))(v113, v77, v47);
    v82 = v112;
    v83 = v134;
  }

  v51 = *(v80 + 16);
  v51(v82, v44, v47);
  v84 = (*(v80 + 88))(v82, v47);
  if (v84 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    v46 = v83;
    if (qword_10093FB10 != -1)
    {
      swift_once();
    }

    v85 = qword_10099DB28;
    goto LABEL_45;
  }

  v46 = v83;
  if (v84 != enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_10093FB10 != -1)
    {
      swift_once();
    }

    sub_10000A570(qword_10099DB28, &v146);
    (*(v80 + 8))(v82, v47);
    goto LABEL_49;
  }

  if (qword_10093FB08 != -1)
  {
    goto LABEL_62;
  }

LABEL_44:
  v85 = qword_10099DB00;
LABEL_45:
  sub_10000A570(v85, &v146);
LABEL_49:
  v86 = v138;
  v51(v135, v44, v47);
  sub_10000A570(&v146, v145);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940FD0 != -1)
  {
    swift_once();
  }

  v87 = sub_10076D3DC();
  sub_10000A61C(v87, qword_1009A1D68);
  v88 = [v86 traitCollection];
  sub_100770B3C();

  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v89 = sub_10076D9AC();
  v90 = sub_10000A61C(v89, qword_1009A2350);
  v143 = v89;
  v144 = &protocol witness table for StaticDimension;
  v91 = sub_10000DB7C(&v142);
  (*(*(v89 - 8) + 16))(v91, v90, v89);
  sub_100766A0C();
  sub_10000CD74(&v146);
  (*(v139 + 8))(v44, v47);
  v92 = sub_10076DDDC();
  swift_allocObject();
  v93 = sub_10076DD9C();
  if (v46)
  {

    v94 = [v86 traitCollection];
    sub_100770B3C();

    v95 = sub_10076C04C();
    *(&v147 + 1) = v95;
    v148 = sub_1002FEEA4(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v96 = sub_10000DB7C(&v146);
    (*(*(v95 - 8) + 104))(v96, enum case for Feature.measurement_with_labelplaceholder(_:), v95);
    sub_10076C90C();
    sub_10000CD74(&v146);
    v97 = v108;
    sub_10076996C();
    sub_10076994C();
    (*(v109 + 8))(v97, v110);
  }

  else
  {
    v134 = 0;
    v148 = 0;
    v146 = 0u;
    v147 = 0u;
  }

  v98 = v131;
  v99 = v125;
  v100 = v137;
  v101 = v126;
  (*(v125 + 16))(v122, v137, v126);
  v145[3] = v92;
  v145[4] = &protocol witness table for LayoutViewPlaceholder;
  v145[0] = v93;
  swift_allocObject();

  v102 = sub_10076DDBC();
  v143 = v92;
  v144 = &protocol witness table for LayoutViewPlaceholder;
  v142 = v102;
  sub_100016E2C(&v146, v141, &qword_10094BB30, qword_100796E40);
  v103 = v127;
  sub_100766A3C();
  sub_1002FEEA4(&qword_100952180, &type metadata accessor for MixedMediaLockupLayout, &protocol conformance descriptor for MixedMediaLockupLayout);
  v104 = v129;
  sub_10076D2AC();

  (*(v128 + 8))(v103, v104);
  sub_10000CFBC(&v146, &qword_10094BB30, qword_100796E40);
  (*(v99 + 8))(v100, v101);
  (*(v123 + 8))(v136, v124);
  sub_10000CFBC(v140, &qword_1009451E8, qword_100787680);
  return v8;
}

void sub_1002FE0E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10076350C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v9 - 8);
  v70 = &v58 - v10;
  v11 = sub_1007673CC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10076BF6C();
  __chkstk_darwin(v15 - 8);
  sub_10000A570(a1, v74);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10076289C();
  if (swift_dynamicCast())
  {
    v66 = v7;
    v67 = v6;
    v68 = v12;
    v16 = v73;
    v17 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_pageTraits);
    if (!v17)
    {

      return;
    }

    v65 = v11;

    swift_unknownObjectRetain();
    v18 = sub_10076BB5C();

    v69 = v3;
    if (v18)
    {
      v20 = qword_10093FBE0;
      v21 = *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      if (v20 != -1)
      {
        swift_once();
      }

      v22 = sub_100763ADC();
      sub_10000A61C(v22, qword_10099DDA0);
      sub_1007639AC();
      [v21 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v21 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_10075FD2C();
      sub_1002FEEA4(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100760B8C();
    }

    v23 = ObjectType;
    v24 = (*(ObjectType + 192))(v19);
    if (v24)
    {
      v25 = sub_10076280C();
      if (v25 >> 62)
      {
        v27 = v25;
        v28 = sub_10077158C();
        v25 = v27;
        if (v28)
        {
          goto LABEL_12;
        }
      }

      else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_12:
        if ((v25 & 0xC000000000000001) != 0)
        {
          v26 = sub_10077149C();
        }

        else
        {
          if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_36;
          }

          v26 = *(v25 + 32);
        }

LABEL_20:
        v29 = (*(v23 + 216))(v24);
        v63 = v26;
        v64 = a2;
        v62 = v17;
        if ((v29 & 1) == 0)
        {
          v32 = v14;
          v59 = sub_10076283C();
          v33 = 0;
          v34 = 0;
LABEL_31:
          v37 = v32;
          sub_10076285C();
          v38 = ASKDeviceTypeGetCurrent();
          type metadata accessor for MixedMediaLockupCollectionViewCell(0);
          sub_10076422C();
          v40 = v39;
          v42 = v41;
          v60 = type metadata accessor for LockupMediaView(0);
          v61 = v16;
          v43 = sub_10076D39C();
          v44 = v70;
          (*(*(v43 - 8) + 56))(v70, 1, 1, v43);
          v45 = v71;
          v46 = v59;
          v47 = v34;
          v48 = v34;
          v49 = v63;
          v50 = v38;
          (*(ObjectType + 456))(v59, v48, v63, v33, v38, v37);
          v51 = v62;
          swift_getObjectType();
          sub_100141F14(v46, v47, v49, v33, v44, v45, v51, v37, v40, v42);
          v53 = v52;
          v55 = v54;

          (*(v66 + 8))(v45, v67);
          sub_10000CFBC(v44, &unk_1009467E0, qword_10078CB50);
          v56 = *(v69 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView);
          v57 = [v51 traitCollection];
          sub_100140784(v46, v47, v49, v33, v57, v64, v37, v53, v55);

          swift_unknownObjectRelease();

          (*(v68 + 8))(v37, v65);
          return;
        }

        v30 = sub_10076288C();
        if (v30 >> 62)
        {
          v35 = v30;
          v36 = sub_10077158C();
          v30 = v35;
          if (v36)
          {
            goto LABEL_23;
          }
        }

        else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_23:
          if ((v30 & 0xC000000000000001) != 0)
          {
            v31 = sub_10077149C();
            goto LABEL_26;
          }

          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v31 = *(v30 + 32);

LABEL_26:
            v32 = v14;

LABEL_30:
            v59 = sub_10076283C();
            v34 = sub_10076281C();
            v33 = v31;
            goto LABEL_31;
          }

LABEL_36:
          __break(1u);
          return;
        }

        v32 = v14;

        v31 = 0;
        goto LABEL_30;
      }
    }

    v26 = 0;
    goto LABEL_20;
  }
}

id sub_1002FE8B8(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = sub_10076B6EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v11 = v10;
  sub_10076B6AC();
  sub_1002FEEA4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v12 = sub_10077124C();
  v13 = (*(v7 + 8))(v9, v6);
  v13.n128_f64[0] = v11;
  v14 = sub_1002F9808(v12 & 1, 0, 0xE000000000000000, a4, v13, a2);
  v15 = objc_opt_self();
  v16 = [v15 absoluteDimension:v11];
  v17 = [v15 absoluteDimension:v14];
  v18 = [objc_opt_self() sizeWithWidthDimension:v16 heightDimension:v17];

  v19 = [objc_opt_self() itemWithLayoutSize:v18];
  v20 = objc_opt_self();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007841E0;
  *(v21 + 32) = v19;
  sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
  v22 = v19;
  isa = sub_1007701AC().super.isa;

  v24 = [v20 verticalGroupWithLayoutSize:v18 subitems:isa];

  return v24;
}

void sub_1002FEB7C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FB6C();
  sub_10075FD2C();
  sub_1002FEEA4(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100760BFC();
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView);
  v5 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v6 = *&v4[v5];
  if (v6 >> 62)
  {
    v7 = sub_10077158C();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    v15 = v4;
    goto LABEL_12;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  v19 = v4;
  v8 = v4;

  v9 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = sub_10077149C();
    }

    else
    {
      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    type metadata accessor for BorderedScreenshotView(0);
    sub_1002FEEA4(&qword_10094A410, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
    v12 = v11;
    sub_10077140C();
    sub_100760BEC();
    sub_100016C74(v20);
    v13 = *&v12[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
    v21.value.super.isa = 0;
    v21.is_nil = 0;
    sub_10075FCEC(v21, v14);
  }

  while (v7 != v9);

  v4 = v19;
LABEL_12:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [*(Strong + qword_1009602D0) setImage:0];
    type metadata accessor for VideoView(0);
    sub_1002FEEA4(&qword_100957FA0, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v18 = v17;
    sub_10077140C();
    sub_100760BEC();

    sub_100016C74(v20);
  }

  else
  {
  }
}

uint64_t sub_1002FEEA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002FEEF4()
{
  result = qword_100950D08;
  if (!qword_100950D08)
  {
    type metadata accessor for LargeLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950D08);
  }

  return result;
}

double sub_1002FEF4C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076462C();
  sub_10076460C();
  sub_10076C2FC();
  v5 = v4;
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  swift_getObjectType();
  v8 = swift_unknownObjectRetain();
  sub_1002D803C(v8, v5, v7);
  v10 = v9;
  swift_unknownObjectRelease_n();
  return v10;
}

id sub_1002FF074()
{
  result = [objc_opt_self() _effectWithBlurRadius:50.0 scale:0.125];
  if (result)
  {
    qword_100952190 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1002FF0C4()
{
  result = [objc_opt_self() colorEffectSaturate:2.0];
  qword_100952198 = result;
  return result;
}

void sub_1002FF104()
{
  sub_100016F40(0, &qword_100952240, UIColorEffect_ptr);
  v0 = [objc_opt_self() blackColor];
  v1 = [swift_getObjCClassFromMetadata() effectCompositingColor:v0 withMode:23 alpha:1.0];

  if (v1)
  {
    qword_1009521A0 = v1;
  }

  else
  {
    __break(1u);
  }
}

id sub_1002FF1A0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v111 = sub_10076F9AC();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v115 = sub_100760B4C();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D1AC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = sub_10076D9AC();
  v17 = *(v109 - 1);
  __chkstk_darwin(v109);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&qword_1009622B0, qword_100787B30);
  __chkstk_darwin(v20 - 8);
  v108 = &v107 - v21;
  v22 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_itemLayoutContext;
  v23 = sub_10076341C();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance] = 0;
  v24 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupContentBackgroundView;
  v25 = [objc_allocWithZone(UIView) init];
  v113 = objc_opt_self();
  v26 = [v113 systemBackgroundColor];
  [v25 setBackgroundColor:v26];

  *&v5[v24] = v25;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView] = 0;
  v27 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel;
  sub_1007626BC();
  *&v5[v27] = sub_10076269C();
  v28 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerLabelPresenter];
  *v29 = 0u;
  v29[1] = 0u;
  v30 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel;
  *&v5[v30] = sub_10076269C();
  v31 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel;
  *&v5[v31] = sub_10076269C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  v107 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView;
  v32 = sub_10076C43C();
  (*(*(v32 - 8) + 56))(v108, 1, 1, v32);
  *v16 = UIFontTextStyleFootnote;
  (*(v14 + 104))(v16, enum case for FontSource.textStyle(_:), v13);
  *(&v122 + 1) = v13;
  v123 = &protocol witness table for FontSource;
  v33 = sub_10000DB7C(&v121);
  (*(v14 + 16))(v33, v16, v13);
  v34 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  (*(v14 + 8))(v16, v13);
  (*(v114 + 104))(v112, enum case for WordmarkView.Alignment.center(_:), v115);
  v35 = v109;
  *(&v122 + 1) = v109;
  v123 = &protocol witness table for StaticDimension;
  v36 = sub_10000DB7C(&v121);
  (*(v17 + 16))(v36, v19, v35);
  v37 = objc_allocWithZone(sub_100760B6C());
  v38 = sub_100760B3C();
  (*(v17 + 8))(v19, v35);
  *&v5[v107] = v38;
  v39 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton;
  v40 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v39] = sub_1001E89B8(0);
  v41 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel;
  *&v5[v41] = sub_10076269C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight] = 0;
  v42 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer;
  *&v5[v42] = [objc_allocWithZone(UIView) init];
  v43 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurEffect;
  *&v5[v43] = [objc_opt_self() effectWithStyle:7];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView] = 0;
  v44 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize];
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView;
  sub_10075FD2C();
  *&v5[v45] = sub_10075FB3C();
  v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer] = 0;
  v46 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleText];
  *v47 = 0;
  v47[1] = 0;
  v48 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_theme;
  v49 = enum case for ProductPageTheme.infer(_:);
  v50 = sub_100762A7C();
  (*(*(v50 - 8) + 104))(&v5[v48], v49, v50);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] = 0;
  sub_10076486C();
  v51 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_networkObservation];
  *v51 = 0u;
  *(v51 + 1) = 0u;
  *(v51 + 4) = 0;
  v52 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerTapHandler];
  *v52 = 0;
  v52[1] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce] = 1;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = 0;
  v120.receiver = v5;
  v120.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v120, "initWithFrame:", a1, a2, a3, a4);
  v54 = [v53 contentView];
  v55 = [v54 layer];

  [v55 setAllowsGroupBlending:0];
  v56 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel;
  [*(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel) setHidden:1];
  v57 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel;
  [*(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel) setHidden:1];
  [*(v53 + v56) setLineBreakMode:4];
  v58 = *(v53 + v56);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v59 = v58;
  v60 = sub_100770D1C();
  [v59 setTextColor:v60];

  *&v115 = v56;
  [*(v53 + v56) setUserInteractionEnabled:1];
  v61 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v53 action:"developerLabelTapped:"];
  v112 = v61;

  [*(v53 + v56) addGestureRecognizer:v61];
  [*(v53 + v57) setLineBreakMode:4];
  v62 = *(v53 + v57);
  v63 = sub_100770D1C();
  [v62 setTextColor:v63];

  [*(v53 + v57) setUserInteractionEnabled:1];
  v109 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v53 action:"taglineLabelTapped:"];
  v64 = *(v53 + v57);
  v65 = v57;
  v107 = v57;
  [v64 addGestureRecognizer:v109];
  v66 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton;
  swift_unknownObjectWeakAssign();
  v114 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel;
  v67 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel);
  v68 = sub_100770D1C();
  [v67 setTextColor:v68];

  v108 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView;
  v69 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v70 = v69;
  sub_10076F95C();
  sub_10000CFBC(&v118, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v121, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v71 = *(v110 + 8);
  v72 = v111;
  v71(v11, v111);
  v110 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel;
  v73 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v74 = v73;
  sub_10076F95C();
  sub_10000CFBC(&v118, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v121, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v71(v11, v72);
  v75 = *(v53 + v115);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v76 = v75;
  sub_10076F95C();
  sub_10000CFBC(&v118, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v121, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v71(v11, v72);
  v77 = *(v53 + v65);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v78 = v77;
  sub_10076F95C();
  sub_10000CFBC(&v118, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v121, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v71(v11, v72);
  v79 = *(v53 + v66);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v80 = v79;
  sub_10076F95C();
  sub_10000CFBC(&v118, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v121, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v71(v11, v72);
  v81 = *(v53 + v114);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v82 = v81;
  sub_10076F95C();
  sub_10000CFBC(&v118, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v121, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v71(v11, v72);
  v83 = [v53 contentView];
  v84 = v113;
  v85 = [v113 clearColor];
  [v83 setBackgroundColor:v85];

  v86 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer;
  v87 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer);
  v88 = [v84 clearColor];
  [v87 setBackgroundColor:v88];

  v89 = [v53 contentView];
  [v89 addSubview:*(v53 + v86)];

  v90 = [v53 contentView];
  [v90 addSubview:*(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupContentBackgroundView)];

  v91 = [v53 contentView];
  [v91 addSubview:*&v108[v53]];

  v92 = [v53 contentView];
  [v92 addSubview:*(v53 + v110)];

  v93 = [v53 contentView];
  [v93 addSubview:*(v53 + v115)];

  v94 = [v53 contentView];
  [v94 addSubview:*(v53 + v66)];

  v95 = [v53 contentView];
  [v95 addSubview:*(v53 + v114)];

  v96 = [v53 contentView];
  [v96 addSubview:*(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView)];

  v97 = [v53 contentView];
  [v97 addSubview:*(v53 + v107)];

  sub_100300494();
  sub_10000A570(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_networkInquiry, &v118);
  sub_10000CF78(&v118, *(&v119 + 1));
  v98 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v99 = sub_10077068C();
  v117[3] = v98;
  v117[4] = &protocol witness table for OS_dispatch_queue;
  v117[0] = v99;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10076185C();

  sub_10000CD74(v117);
  v100 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_networkObservation;
  swift_beginAccess();
  sub_10030D64C(&v121, v53 + v100);
  swift_endAccess();
  sub_10000CD74(&v118);
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v101 = swift_allocObject();
  v115 = xmmword_100783DD0;
  *(v101 + 16) = xmmword_100783DD0;
  *(v101 + 32) = sub_10076E3EC();
  *(v101 + 40) = &protocol witness table for UITraitLayoutDirection;
  v102 = ObjectType;
  *(&v122 + 1) = ObjectType;
  *&v121 = v53;
  v103 = v53;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(&v121);
  v104 = swift_allocObject();
  *(v104 + 16) = v115;
  *(v104 + 32) = sub_10076E4CC();
  *(v104 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(&v122 + 1) = v102;
  *&v121 = v103;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(&v121);
  v105 = swift_allocObject();
  *(v105 + 16) = v115;
  *(v105 + 32) = sub_10076E59C();
  *(v105 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v103;
}

void sub_100300494()
{
  v1 = sub_100762A7C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_theme;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == enum case for ProductPageTheme.infer(_:))
  {
    sub_1003068D0();
    return;
  }

  if (v6 == enum case for ProductPageTheme.blue(_:))
  {
    v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = qword_10093FFD0;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = qword_10099EAF8;
    goto LABEL_13;
  }

  if (v6 == enum case for ProductPageTheme.orange(_:))
  {
    v11 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = qword_10093FFD8;
    v9 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v10 = qword_10099EB00;
LABEL_13:
    [v9 setTextColor:v10];

LABEL_14:
    v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel);
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v14 = v0;
    v15 = sub_100770CFC();
    [v13 setTextColor:v15];

    v16 = *(v14 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
    v17 = sub_100770D1C();
    [v16 setTextColor:v17];

    v18 = *(v14 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView);
    v19 = sub_100770D1C();
    [v18 setTintColor:v19];

    v20 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v21 = *(v14 + v20);
    if (v21)
    {
      v22 = v21;
      v23 = sub_100770D0C();
      [v22 setTextColor:v23];
    }

    return;
  }

  if (v6 == enum case for ProductPageTheme.white(_:))
  {
    v24 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel);
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v25 = v0;
    v26 = sub_100770CFC();
    [v24 setTextColor:v26];

    v27 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_10093FFE0 != -1)
    {
      v31 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
      swift_once();
      v27 = v31;
    }

    v28 = qword_10099EB08;
    [v27 setTextColor:qword_10099EB08];
    [*(v25 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView) setTintColor:v28];
    v29 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v30 = *(v25 + v29);
    if (v30)
    {
      [v30 setTextColor:v28];
    }
  }

  else
  {
    sub_1003068D0();
    (*(v2 + 8))(v4, v1);
  }
}

void sub_1003008BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10000CF78((Strong + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_networkInquiry), *(Strong + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_networkInquiry + 24));
    if ((sub_10076184C() & 1) == 0)
    {
      v4 = v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible];
      v3[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] = 0;
      sub_10030244C(v4);
    }
  }
}

void sub_100300958()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView];
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView];
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  if (v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v5 = [v0 traitCollection];
    v6 = sub_1007706EC();

    if (v6)
    {
      sub_1003029A8();
    }

    else
    {
      sub_100303440();
    }

    sub_1003037E0();
  }
}

id sub_100300A78()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v2 = v0;
    sub_10075ED0C();

    swift_unknownObjectRelease();
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ProductLockupCollectionViewCell(uint64_t a1)
{
  result = qword_100952208;
  if (!qword_100952208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100300E78(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView) = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *(v1 + v2);
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
    v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer);
    v7 = v5;
    [v6 insertSubview:v7 atIndex:0];
  }

LABEL_4:
}

void sub_100300F34(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView);
  if (v3)
  {
    v4 = *(*&v3[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v14 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView);
    if (a1)
    {
      sub_10030D5FC(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v5 = v2;
      v6 = v14;
      v7 = [v5 superview];
      if (v7)
      {
        v8 = v7;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v9 = v4;
        v10 = sub_100770EEC();

        if (v10)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    else
    {
      v11 = v3;
    }

    v12 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v2;
    v13 = v2;
    sub_100453A30(v12);

    if (v2)
    {
      *&v13[qword_1009602C8 + 8] = &off_10088D2D8;
      swift_unknownObjectWeakAssign();
    }

    a1 = v14;
  }
}

uint64_t sub_1003010E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(*(v1 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = result;
    v5 = v2;
    return v4;
  }

  return result;
}

uint64_t (*sub_10030116C(uint64_t *a1))(id *a1, char a2)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4 && (v5 = *(*(*(v4 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents)) != 0)
  {
    type metadata accessor for VideoView(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_10030121C;
}

uint64_t sub_10030121C(id *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + a1[1]);
  if (a2)
  {
    if (v3)
    {
      v4 = *(*&v3[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
      v25 = *a1;
      if (v2)
      {
        sub_10030D5FC(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
        v5 = v25;
        v6 = v3;
        v7 = [v5 superview];
        if (v7)
        {
          v8 = v7;
          sub_100016F40(0, &qword_1009441F0, UIView_ptr);
          v9 = v4;
          v10 = sub_100770EEC();

          if (v10)
          {
            [v5 removeFromSuperview];
          }
        }

        else
        {
        }
      }

      else
      {
        v18 = v3;
        v5 = 0;
      }

      v20 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
      *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v25;
      v21 = v5;
      sub_100453A30(v20);

      if (v25)
      {
        *&v21[qword_1009602C8 + 8] = &off_10088D2D8;
        swift_unknownObjectWeakAssign();
      }
    }
  }

  else if (v3)
  {
    v11 = *(*&v3[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v26 = *a1;
    if (v2)
    {
      sub_10030D5FC(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v12 = v26;
      v13 = v3;
      v14 = [v12 superview];
      if (v14)
      {
        v15 = v14;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v16 = v11;
        v17 = sub_100770EEC();

        if (v17)
        {
          [v12 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    else
    {
      v19 = v3;
      v12 = 0;
    }

    v22 = *&v11[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v11[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v26;
    v23 = v12;
    sub_100453A30(v22);

    if (v26)
    {
      *&v23[qword_1009602C8 + 8] = &off_10088D2D8;
      swift_unknownObjectWeakAssign();
    }
  }

  return _objc_release_x2();
}

void sub_100301570(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *&v2[*a2];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = a1;
  v7 = a1;

  if (a1)
  {
    [v2 addSubview:v7];
  }
}

void sub_100301614()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v1)
  {
    v2 = v0;
    v3 = v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber];
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v10 = v1;
    v4 = sub_100770D1C();
    [v10 setTextColor:v4];

    if (v3 == 1)
    {
      if (qword_100940028 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_10099EBC0];
      v5 = [v2 contentView];
      v6 = [v5 traitCollection];

      [v6 userInterfaceStyle];
      sub_10076FF9C();
      v7 = sub_10076FF6C();

      v8 = [v10 layer];
      v9 = v7;
      [v8 setCompositingFilter:v9];
    }

    else
    {
      if (qword_100940020 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_10099EBB8];
      v9 = [v10 layer];
      [v9 setCompositingFilter:0];
    }
  }
}

void sub_100301868()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  if (v5)
  {
    v6 = v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber];
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v7 = v5;
    v8 = sub_100770D1C();
    [v7 setTextColor:v8];

    if (v6 == 1)
    {
      if (qword_100940C18 != -1)
      {
        swift_once();
      }

      v9 = sub_10076D3DC();
      v10 = sub_10000A61C(v9, qword_1009A1240);
      v11 = *(v9 - 8);
      (*(v11 + 16))(v4, v10, v9);
      (*(v11 + 56))(v4, 0, 1, v9);
      sub_1007625DC();
      [v7 setTextAlignment:1];
      v12 = [v1 contentView];
      v13 = [v12 traitCollection];

      [v13 userInterfaceStyle];
      sub_10076FF9C();
      v14 = sub_10076FF6C();

      v15 = [v7 layer];
      v16 = v14;
      [v15 setCompositingFilter:v16];
    }

    else
    {
      if (qword_100940C10 != -1)
      {
        swift_once();
      }

      v17 = sub_10076D3DC();
      v18 = sub_10000A61C(v17, qword_1009A1228);
      v19 = *(v17 - 8);
      (*(v19 + 16))(v4, v18, v17);
      (*(v19 + 56))(v4, 0, 1, v17);
      sub_1007625DC();
      v16 = [v7 layer];
      [v16 setCompositingFilter:0];
    }
  }
}

void sub_100301BE0(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_10076771C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v53 - v13;
  if (v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer] != v3)
  {
    if (v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer])
    {
      if (qword_100940C08 != -1)
      {
        swift_once();
      }

      v15 = sub_10076D3DC();
      v16 = sub_10000A61C(v15, qword_1009A1210);
      v17 = *(v15 - 8);
      v18 = *(v17 + 16);
      v53 = v16;
      v60 = v18;
      v61 = v17 + 16;
      (v18)(v14);
      v19 = *(v17 + 56);
      v62 = v17 + 56;
      v59 = v19;
      v19(v14, 0, 1, v15);
      if (qword_100940180 != -1)
      {
        swift_once();
      }

      v20 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
      sub_10000A61C(v20, qword_10099EFF8);
      v63 = v2;
      v21 = v2;
      v57 = v20;
      sub_10075FDCC();

      v22 = *(v5 + 104);
      v56 = enum case for DirectionalTextAlignment.none(_:);
      v58 = v5 + 104;
      v55 = v22;
      v22(v7);
      v54 = sub_1007626BC();
      v23 = objc_allocWithZone(v54);
      v24 = sub_1007626AC();
      v25 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v26 = *&v21[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
      if (v26)
      {
        [v26 removeFromSuperview];
        v27 = *&v21[v25];
      }

      else
      {
        v27 = 0;
      }

      *&v21[v25] = v24;
      v31 = v24;

      v60(v14, v53, v15);
      v59(v14, 0, 1, v15);
      sub_1007625DC();
      v32 = [v21 contentView];
      [v32 addSubview:v31];

      [v21 setNeedsLayout];
      v33 = *&v21[v25];
      v34 = &selRef_initWithTabBarSystemItem_tag_;
      if (v33)
      {
        if (*&v21[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText + 8])
        {
          v35 = v33;

          v36 = sub_10076FF6C();
        }

        else
        {
          v35 = v33;
          v36 = 0;
        }

        v34 = &selRef_initWithTabBarSystemItem_tag_;
        [v35 setText:v36];
      }

      if (v21[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] == 1)
      {
        if (qword_100940C18 != -1)
        {
          swift_once();
        }

        v40 = qword_1009A1240;
      }

      else
      {
        if (qword_100940C10 != -1)
        {
          swift_once();
        }

        v40 = qword_1009A1228;
      }

      v41 = sub_10000A61C(v15, v40);
      v60(v10, v41, v15);
      v59(v10, 0, 1, v15);
      if (qword_100940188 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v57, qword_10099F010);
      v63 = v21;
      v42 = v21;
      sub_10075FDCC();

      v55(v7, v56, v4);
      v43 = objc_allocWithZone(v54);
      v44 = sub_1007626AC();
      v45 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v46 = *&v42[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
      if (v46)
      {
        [v46 removeFromSuperview];
        v47 = *&v42[v45];
      }

      else
      {
        v47 = 0;
      }

      *&v42[v45] = v44;
      v48 = v44;

      sub_100301868();
      v49 = [v42 contentView];
      [v49 addSubview:v48];

      [v42 setNeedsLayout];
      v50 = *&v42[v45];
      if (v50)
      {
        if (*&v42[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleText + 8])
        {
          v51 = v50;

          v52 = sub_10076FF6C();
        }

        else
        {
          v51 = v50;
          v52 = 0;
        }

        [v51 v34[250]];
      }

      [*&v42[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel] setHidden:1];
      sub_100300494();
    }

    else
    {
      v28 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v29 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
      if (v29)
      {
        [v29 removeFromSuperview];
        v30 = *&v2[v28];
      }

      else
      {
        v30 = 0;
      }

      *&v2[v28] = 0;

      [v2 setNeedsLayout];
      v37 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v38 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
      if (v38)
      {
        [v38 removeFromSuperview];
        v39 = *&v2[v37];
      }

      else
      {
        v39 = 0;
      }

      *&v2[v37] = 0;

      [v2 setNeedsLayout];
    }

    [v2 setNeedsLayout];
  }
}

id sub_100302384(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = &v4[*a3];
  *v6 = a1;
  *(v6 + 1) = a2;

  v7 = *&v4[*a4];
  if (v7)
  {
    if (*(v6 + 1))
    {
      v8 = v7;

      v9 = sub_10076FF6C();
    }

    else
    {
      v8 = v7;
      v9 = 0;
    }

    [v8 setText:v9];
  }

  return [v4 setNeedsLayout];
}

void sub_10030244C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (!v2)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible) == (a1 & 1))
  {
    return;
  }

  v22 = v2;
  if ([v22 isHidden])
  {
    if ((*(v1 + v3) & 1) == 0)
    {

      return;
    }
  }

  else if (!*(v1 + v3))
  {
    v4 = 1.0;
    tx = 0.0;
    ty = 0.0;
    [v22 setHidden:{0, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000}];
    goto LABEL_11;
  }

  v4 = 0.0;
  CGAffineTransformMakeTranslation(&aBlock, 0.0, 2.0);
  tx = aBlock.tx;
  ty = aBlock.ty;
  [v22 setHidden:{0, *&aBlock.a, *&aBlock.b, *&aBlock.c, *&aBlock.d}];
LABEL_11:
  [v22 setAlpha:v4];
  *&aBlock.a = v20;
  *&aBlock.c = v21;
  aBlock.tx = tx;
  aBlock.ty = ty;
  [v22 setTransform:&aBlock];
  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow);
  if (v7)
  {
    v7[OBJC_IVAR____TtC20ProductPageExtension11ChevronView_shouldAnimate] = (*(v1 + v3) & 1) == 0;
    v8 = v7;
    sub_10054E180();
  }

  if (*(v1 + v3))
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v22;
  v12 = objc_allocWithZone(UIViewPropertyAnimator);
  *&aBlock.tx = sub_10030D47C;
  *&aBlock.ty = v11;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10009AEDC;
  *&aBlock.d = &unk_100890EE0;
  v13 = _Block_copy(&aBlock);
  v14 = v22;

  v15 = [v12 initWithDuration:v9 curve:v13 animations:0.2];
  _Block_release(v13);

  aBlock.a = 1.0;
  aBlock.b = 0.0;
  aBlock.c = 0.0;
  aBlock.d = 1.0;
  aBlock.tx = 0.0;
  aBlock.ty = 0.0;
  [v14 setTransform:&aBlock];

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  *&aBlock.tx = sub_10030D4C4;
  *&aBlock.ty = v17;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10017722C;
  *&aBlock.d = &unk_100890F30;
  v18 = _Block_copy(&aBlock);
  v19 = v14;

  [v15 addCompletion:v18];
  _Block_release(v18);
  [v15 startAnimation];
}

void sub_100302830(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible;
    v6 = 0.0;
    if (*(Strong + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible))
    {
      v6 = 1.0;
    }

    [a2 setAlpha:v6];
    if (v4[v5])
    {
      v7 = xmmword_10078D220;
      v8 = xmmword_10078CF00;
      v9 = 0uLL;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v10, 0.0, 2.0);
      v8 = *&v10.a;
      v7 = *&v10.c;
      v9 = *&v10.tx;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [a2 setTransform:&v10];
  }
}

void sub_10030290C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible) & 1) == 0)
    {
      [a3 setHidden:1];
      [a3 setText:0];
      [v5 setNeedsLayout];
    }
  }
}

void sub_1003029A8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIVisualEffectView) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView;
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView) = v2;

  v5 = *(v0 + v3);
  if (v5)
  {
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100785D70;
    v7 = qword_10093FDB8;
    v8 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_100952190;
    *(v6 + 32) = qword_100952190;
    v10 = qword_10093FDC0;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_100952198;
    *(v6 + 40) = qword_100952198;
    sub_100016F40(0, &qword_1009492C0, UIVisualEffect_ptr);
    v13 = v12;
    isa = sub_1007701AC().super.isa;

    [v8 setBackgroundEffects:isa];
  }

  v15 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView) = 0;

  v16 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView) = 0;

  v17 = [objc_allocWithZone(UIVisualEffectView) init];
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007841E0;
  if (qword_10093FDC8 != -1)
  {
    swift_once();
  }

  v19 = qword_1009521A0;
  *(v18 + 32) = qword_1009521A0;
  sub_100016F40(0, &qword_1009492C0, UIVisualEffect_ptr);
  v20 = v19;
  v21 = sub_1007701AC().super.isa;

  [v17 setBackgroundEffects:v21];

  v22 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  v96 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = v17;
  v97 = v17;

  v23 = type metadata accessor for GradientView();
  v24 = [objc_allocWithZone(v23) init];
  v25 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView;
  v26 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView) = v24;

  v27 = *(v1 + v25);
  v28 = &off_100911000;
  if (v27)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100786040;
    v30 = objc_opt_self();
    v31 = v27;
    *(v29 + 32) = [v30 clearColor];
    v32 = [v30 blackColor];
    v33 = [v32 colorWithAlphaComponent:0.5];

    *(v29 + 40) = v33;
    v34 = [v30 blackColor];
    v35 = [v34 colorWithAlphaComponent:0.85];

    *(v29 + 48) = v35;
    v28 = &off_100911000;
    *(v29 + 56) = [v30 blackColor];
    *&v31[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v29;

    sub_1001C05B8();

    v36 = *(v1 + v25);
    if (v36)
    {
      v37 = v36;
      sub_1001C0414(&off_1008831A0);

      v38 = *(v1 + v25);
      if (v38)
      {
        v39 = v38;
        v40 = [v39 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v41 = *(v1 + v25);
        if (v41)
        {
          v42 = v41;
          v43 = [v42 layer];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v44 = *(v1 + v3);
  if (v44)
  {
    v45 = [v44 v28[274]];
    v46 = *(v1 + v25);
    if (v46)
    {
      v47 = [v46 v28[274]];
      objc_opt_self();
      v48 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v48 = 0;
    }

    [v45 setMask:v48];
  }

  v49 = [objc_allocWithZone(v23) init];
  v50 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView;
  v51 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = v49;

  v52 = *(v1 + v50);
  if (v52)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100786040;
    v54 = objc_opt_self();
    v55 = v52;
    *(v53 + 32) = [v54 clearColor];
    v56 = [v54 blackColor];
    v57 = v23;
    v58 = v28;
    v59 = [v56 colorWithAlphaComponent:0.4];

    *(v53 + 40) = v59;
    v60 = [v54 blackColor];
    v61 = [v60 colorWithAlphaComponent:0.68];

    *(v53 + 48) = v61;
    v28 = v58;
    v23 = v57;
    v62 = [v54 blackColor];
    v63 = [v62 colorWithAlphaComponent:0.8];

    *(v53 + 56) = v63;
    *&v55[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v53;

    sub_1001C05B8();

    v64 = *(v1 + v50);
    if (v64)
    {
      v65 = v64;
      sub_1001C0414(&off_1008831E0);

      v66 = *(v1 + v50);
      if (v66)
      {
        v67 = v66;
        v68 = [v67 v28[274]];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v69 = *(v1 + v50);
        if (v69)
        {
          v70 = v69;
          v71 = [v70 v28[274]];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v72 = *(v1 + v96);
  if (v72)
  {
    v73 = [v72 v28[274]];
    v74 = *(v1 + v50);
    if (v74)
    {
      v75 = [v74 v28[274]];
      objc_opt_self();
      v76 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v76 = 0;
    }

    [v73 setMask:v76];
  }

  v77 = [objc_allocWithZone(v23) init];
  v78 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v79 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = v77;

  v80 = *(v1 + v78);
  if (v80)
  {
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_100784DC0;
    v82 = objc_opt_self();
    v83 = v80;
    *(v81 + 32) = [v82 blackColor];
    *(v81 + 40) = [v82 blackColor];
    *(v81 + 48) = [v82 blackColor];
    *&v83[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v81;

    sub_1001C05B8();

    v84 = *(v1 + v78);
    if (v84)
    {
      v85 = v84;
      sub_1001C0414(&off_100883220);

      v86 = *(v1 + v78);
      if (v86)
      {
        v87 = v86;
        v88 = [v87 v28[274]];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v89 = *(v1 + v78);
        if (v89)
        {
          v90 = v89;
          v91 = [v90 v28[274]];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v92 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer) v28[274]];
  v93 = *(v1 + v78);
  if (v93)
  {
    v94 = [v93 v28[274]];
    objc_opt_self();
    v95 = swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    v95 = 0;
  }

  v98 = v95;
  [v92 setMask:?];
}

void sub_100303440()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurEffect)];
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView) = v5;

  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;

  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView;
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView) = v8;

  v11 = *(v1 + v9);
  if (v11)
  {
    v12 = objc_allocWithZone(UIColor);
    v13 = v11;
    v14 = [v12 initWithWhite:1.0 alpha:0.1];
    [v13 setBackgroundColor:v14];
  }

  sub_10075F99C();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView;
  v17 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView) = v15;

  v18 = *(v1 + v16);
  if (v18)
  {
    v19 = qword_10093F890;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_10076BCFC();
    v22 = sub_10000A61C(v21, qword_10099D450);
    v23 = *(v21 - 8);
    (*(v23 + 16))(v4, v22, v21);
    (*(v23 + 56))(v4, 0, 1, v21);
    sub_10075F97C();

    v24 = *(v1 + v16);
    if (v24)
    {
      v25 = [v24 layer];
      v26 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView) layer];
      v27 = [v26 maskedCorners];

      [v25 setMaskedCorners:v27];
      v28 = *(v1 + v16);
      if (v28)
      {
        v29 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView);
        v30 = v28;
        [v29 _continuousCornerRadius];
        [v30 _setContinuousCornerRadius:?];

        v31 = *(v1 + v16);
        if (v31)
        {
          [v31 setAutoresizingMask:18];
        }
      }
    }
  }

  v32 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;

  v33 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;

  v34 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;

  v35 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer) layer];
  [v35 setMask:0];
}

void sub_1003037E0()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
    v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer];
      v4 = v2;
      [v3 insertSubview:v15 aboveSubview:v4];
      v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v5)
      {
        v6 = v5;
        [v3 insertSubview:v6 aboveSubview:v4];
      }
    }

    else
    {
      v7 = v1;
      v8 = [v0 contentView];
      [v8 insertSubview:v7 atIndex:0];

      v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v9)
      {
        [*&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v9 atIndex:0];
      }
    }

    v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView];
    if (v10)
    {
      [*&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v10 aboveSubview:v15];
    }

    v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView];
    v12 = v15;
    if (v11)
    {
      v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer];
      v14 = v11;
      [v13 insertSubview:v14 aboveSubview:v15];

      v12 = v15;
    }
  }
}

uint64_t sub_100303990()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_10077164C();
  v181 = *(v183 - 8);
  *&v7 = __chkstk_darwin(v183).n128_u64[0];
  v182 = &v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192.receiver = v1;
  v192.super_class = ObjectType;
  objc_msgSendSuper2(&v192, "layoutSubviews", v7);
  if ([*&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel] isHidden])
  {
    v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel];
    if ([v9 isHidden])
    {
      [v9 setHidden:0];
    }
  }

  v10 = &selRef_initWithTabBarSystemItem_tag_;
  v11 = [v1 traitCollection];
  v12 = sub_10077071C();

  sub_10030ACEC(v1, v1);
  sub_10030B244(v1, v1);
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
  v14 = [v1 contentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v24 = v16 + 0.0;
  v25 = v18 + 0.0;
  v180 = v20;
  v26 = v20 + 0.0;
  v27 = v13 + v22;
  v28 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v29 = [v1 traitCollection];
    v30 = sub_1007706FC();

    if (v30)
    {
      v31 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView;
      v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
      if (v32)
      {
        v33 = qword_100940198;
        v34 = v32;
        if (v33 != -1)
        {
          swift_once();
        }

        v35 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
        sub_10000A61C(v35, qword_10099F040);
        v36 = v182;
        sub_10076D17C();
        sub_10075FE7C();
        v38 = v37;
        v39 = *(v181 + 8);
        *&v185 = v181 + 8;
        y = *&v39;
        v39(v36, v183);
        [v34 _setCornerRadius:v38];

        v40 = *&v1[v31];
        if (v40)
        {
          v41 = [v40 contentView];
          v42 = [v41 layer];

          if (qword_1009401B0 != -1)
          {
            swift_once();
          }

          [v42 setBorderColor:qword_10099F088];

          v43 = *&v1[v31];
          if (v43)
          {
            v44 = [v43 contentView];
            v45 = [v44 layer];

            if (qword_1009401A0 != -1)
            {
              swift_once();
            }

            v46 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
            sub_10000A61C(v46, qword_10099F058);
            v47 = v182;
            sub_10076D17C();
            sub_10075FE7C();
            v49 = v48;
            (*&y)(v47, v183);
            v50 = [v1 traitCollection];
            [v50 displayScale];
            v52 = v51;

            [v45 setBorderWidth:v49 / v52];
          }
        }
      }
    }

    v187 = sub_1003047E0(v191, v24, v25, v26, v27);
    v188 = v53;
    v189 = v54;
    v190 = v55;
    v56 = v13 + v53;
    v10 = &selRef_initWithTabBarSystemItem_tag_;
  }

  else
  {
    v57 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
    if (v57)
    {
      v58 = [v57 contentView];
      v59 = [v58 layer];

      [v59 setBorderWidth:0.0];
    }

    v23.n128_f64[0] = v24;
    if (v12)
    {
      v60 = sub_1003054A8(v191, v23, v25, v26);
    }

    else
    {
      v60 = sub_100305B14(v191, v24, v25, v26, v27);
    }

    v56 = v61;
    v187 = v60;
    v188 = v61;
    v189 = v62;
    v190 = v63;
  }

  v64 = v13;
  v193.origin.x = v24;
  v193.origin.y = v25;
  v193.size.width = v26;
  v193.size.height = v27;
  v65 = CGRectGetMaxY(v193) - v56;
  v194.origin.x = v24;
  v194.origin.y = v25;
  v194.size.width = v26;
  v194.size.height = v27;
  MinX = CGRectGetMinX(v194);
  v195.origin.y = v25;
  v67 = v24;
  v195.origin.x = v24;
  v195.size.width = v26;
  v195.size.height = v27;
  y = v195.origin.y;
  v68 = v56;
  Width = CGRectGetWidth(v195);
  sub_10000CF78(v191, v191[3]);
  v178 = MinX;
  v179 = v65;
  v177 = Width;
  v70 = v68;
  sub_10076DFCC();
  (*(v4 + 8))(v6, v3);
  v71 = [v1 v10[274]];
  v72 = sub_1007706FC();

  v73 = qword_10099E000;
  v185 = v64;
  if ((v72 & 1) != 0 && v1[v28] == 1)
  {
    if (v27 >= v180)
    {
      v74 = v26;
    }

    else
    {
      v74 = v27;
    }

    if (v74 <= 31.0)
    {
      v75 = 0.0;
    }

    else
    {
      v75 = v74 * 0.5;
    }

    sub_10075FC7C();
    v76 = CGRectGetMinY(v196) + -34.0;
    v77 = 30.0;
    if (v74 <= 60.0)
    {
      v77 = v75;
    }

    v78 = v76 - v77;
    v79 = v67;
    v197.origin.x = v67;
    v80 = y;
    v197.origin.y = y;
    v197.size.width = v26;
    v197.size.height = v27;
    MidY = CGRectGetMidY(v197);
    v82 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
    if (v78 >= MidY)
    {
      v64 = v185;
      if (v82)
      {
        v83 = *(*(v82 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
        v92 = &v83[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
        v93 = v83[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride + 8];
        *v92 = 0;
        v92[8] = 1;
        if ((v93 & 1) == 0)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v64 = v185;
      if (v82)
      {
        v83 = *(*(v82 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
        v84 = &v83[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
        MidY = *&v83[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
        v85 = v83[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride + 8];
        *v84 = v78;
        *(v84 + 8) = 0;
        if ((v85 & 1) != 0 || v78 != MidY)
        {
LABEL_45:
          [v83 setNeedsLayout];
        }
      }
    }
  }

  else
  {
    v86 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
    v79 = v67;
    v80 = y;
    if (v86)
    {
      v87 = *(*(*(v86 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      if (v87)
      {
        type metadata accessor for VideoView(0);
        v88 = swift_dynamicCastClass();
        if (v88)
        {
          v89 = v88 + qword_1009A2510;
          v90 = *(v88 + qword_1009A2510 + 16);
          *v89 = 0;
          *(v89 + 8) = 0;
          *(v89 + 16) = 1;
          if ((v90 & 1) == 0)
          {
            v91 = v87;
            sub_1005ED780();
          }
        }
      }
    }
  }

  v94 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer];
  [v94 setFrame:{v79, v80, v26, v27}];
  v95 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v96 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView];
  if (v96)
  {
    v97 = v96;
    [v94 bounds];
    [v97 setFrame:?];
  }

  v98 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView;
  v99 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
  if (v1[v28] == 1)
  {
    if (v99)
    {
      v100 = v99;
      [v1 bounds];
      v101 = CGRectGetMinX(v198);
      [v1 bounds];
      v102 = CGRectGetWidth(v199);
      [v1 bounds];
      [v100 setFrame:{v101, 0.0, v102, v64 + CGRectGetHeight(v200)}];

      v103 = *&v1[v98];
      if (v103)
      {
        v104 = v103;
        v105 = [v1 traitCollection];
        v106 = sub_1007706FC();

        v107 = 418.0;
        if (v106)
        {
          v107 = 0.0;
        }

        *&v104[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset] = v107;
        v108 = *&v104[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView];
        v109 = *(v108 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount);
        *(v108 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount) = v107;
        if (v107 != v109)
        {
          sub_1004526E4();
        }
      }
    }

    v110 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView];
    if (v110)
    {
      v111 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
      v112 = v110;
      if (v111)
      {
        [v111 bounds];
      }

      else
      {
        v113 = 0.0;
        v114 = 0.0;
        v115 = 0.0;
        v116 = 0.0;
      }

      [v112 setFrame:{v113, v114, v115, v116}];
    }

    v130 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView];
    if (v130)
    {
      v131 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      v121 = v130;
      if (v131)
      {
        [v131 bounds];
      }

      else
      {
        v127 = 0.0;
        v129 = 0.0;
        v125 = 0.0;
        v128 = 0.0;
      }

      goto LABEL_71;
    }
  }

  else if (v99)
  {
    v117 = 0.0;
    if (*&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight] != 0.0)
    {
      goto LABEL_64;
    }

    if (qword_100940068 != -1)
    {
      swift_once();
    }

    v118 = qword_10099EC88;
    sub_10000CF78(qword_10099EC70, qword_10099EC88);
    v119 = v182;
    sub_1000FF02C(v118);
    sub_10076D40C();
    v117 = v120;
    (*(v181 + 8))(v119, v183);
    v99 = *&v1[v98];
    v73 = qword_10099E000;
    if (v99)
    {
LABEL_64:
      v121 = v99;
      [v1 bounds];
      v122 = CGRectGetMinX(v201);
      [v1 bounds];
      v123 = CGRectGetWidth(v202);
      v203.origin.x = v178;
      v203.origin.y = v179;
      v203.size.width = v177;
      v203.size.height = v70;
      MinY = CGRectGetMinY(v203);
      v125 = v123;
      v126 = MinY;
      v127 = v122;
      v128 = v126 - v117;
      v129 = 0.0;
LABEL_71:
      [v121 setFrame:{v127, v129, v125, v128}];
    }
  }

  v132 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupContentBackgroundView];
  v133 = [v1 contentView];
  [v133 bounds];
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v141 = v140;

  v204.origin.x = v135;
  v204.origin.y = v137;
  v204.size.width = v139;
  v204.size.height = v141;
  v142 = CGRectGetMinX(v204);
  v143 = v73[145];
  v144 = *&v1[v143];
  v145 = 0.0;
  MaxY = 0.0;
  if (v144)
  {
    [v144 frame];
    MaxY = CGRectGetMaxY(v205);
  }

  v147 = [v1 contentView];
  [v147 bounds];
  v149 = v148;
  v151 = v150;
  v153 = v152;
  v155 = v154;

  v206.origin.x = v149;
  v206.origin.y = v151;
  v206.size.width = v153;
  v206.size.height = v155;
  v156 = CGRectGetWidth(v206);
  v157 = [v1 contentView];
  [v157 bounds];
  v159 = v158;
  v161 = v160;
  v163 = v162;
  v165 = v164;

  v207.origin.x = v159;
  v207.origin.y = v161;
  v207.size.width = v163;
  v207.size.height = v165;
  Height = CGRectGetHeight(v207);
  v167 = *&v1[v143];
  if (v167)
  {
    [v167 frame];
    v145 = CGRectGetMaxY(v208);
  }

  v168 = v185;
  [v132 setFrame:{v142, MaxY, v156, v185 + Height - v145}];
  v169 = *&v1[v95];
  if (v169)
  {
    v170 = v169;
    [v1 bounds];
    v171 = v168 + CGRectGetHeight(v209);
    v172 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton];
    v173 = type metadata accessor for OfferButton();
    v186.receiver = v172;
    v186.super_class = v173;
    objc_msgSendSuper2(&v186, "frame");
    v174 = CGRectGetMinY(v210) / v171;
    sub_10000A5D4(&unk_100952260, &unk_1007A6250);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783C60;
    *(inited + 32) = v174;
    *(inited + 40) = 1.0 - v168 / v171;
    *(inited + 48) = 0x3FF0000000000000;
    sub_1001C0414(inited);
  }

  return sub_10000CFBC(&v187, &qword_100952258, &unk_10079B330);
}

double sub_1003047E0(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v153 = a5;
  v148 = a1;
  v8 = sub_10077164C();
  v149 = *(v8 - 8);
  v150 = v8;
  __chkstk_darwin(v8);
  v10 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v11);
  v152 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v134 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v134 - v18;
  v20 = [v5 contentView];
  [v20 layoutMargins];

  v21 = [v6 contentView];
  [v21 layoutMargins];
  v23 = v22;

  v24 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
  v25 = [v6 contentView];
  [v25 layoutMargins];
  v27 = v26;

  v28 = &v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize];
  v29 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize];
  v30 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize + 8];
  v147 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight;
  v31 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight];
  v146 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight;
  v32 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  if (qword_10093FFC0 != -1)
  {
    swift_once();
  }

  v145 = sub_10000A61C(v11, qword_10099EAC8);
  sub_10030D4CC(v145, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  *(v19 + 4) = v29;
  *(v19 + 5) = v30;
  *(v19 + 1) = v23;
  *(v19 + 2) = v24;
  *(v19 + 3) = v27;
  *v19 = 0;
  v178 = &type metadata for CGFloat;
  v179 = &protocol witness table for CGFloat;
  *&v176 = v31;
  v33 = v11[15];
  sub_10000CD74(&v19[v33]);
  sub_100012498(&v176, &v19[v33]);
  v178 = &type metadata for CGFloat;
  v179 = &protocol witness table for CGFloat;
  *&v176 = v32;
  v34 = v11[16];
  sub_10000CD74(&v19[v34]);
  sub_100012498(&v176, &v19[v34]);
  *&v176 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel];
  v151 = v176;
  v35 = [v6 traitCollection];
  v36 = sub_1007706FC();

  v37 = v19;
  if (v36)
  {
    sub_10076D17C();
    sub_10075FE7C();
    (*(v149 + 8))(v10, v150);
  }

  sub_100770ACC();
  sub_100770ACC();
  v38 = v151;
  [v151 measurementsWithFitting:v6 in:?];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = sub_1007626BC();
  v181.var0 = v40;
  v181.var1 = v42;
  v181.var2 = v44;
  v181.var3 = v46;
  v48 = sub_10076D71C(v181);

  v150 = v37;
  if (v48 >= 2)
  {
    v49 = *v28;
    v50 = *(v28 + 1);
    v51 = *&v6[v147];
    v52 = *&v6[v146];
    sub_10030D4CC(v145, v15, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    *(v15 + 4) = v49;
    *(v15 + 5) = v50;
    *(v15 + 1) = v23;
    *(v15 + 2) = v24;
    *(v15 + 3) = v27;
    *v15 = 0;
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = v51;
    v53 = v11[15];
    sub_10000CD74(&v15[v53]);
    sub_100012498(&v176, &v15[v53]);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = v52;
    v54 = v11[16];
    sub_10000CD74(&v15[v54]);
    sub_100012498(&v176, &v15[v54]);
    if (qword_1009400E0 != -1)
    {
      swift_once();
    }

    v55 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
    v56 = sub_10000A61C(v55, qword_10099EE18);
    v57 = *(*(v55 - 8) + 24);
    v57(&v15[v11[7]], v56, v55);
    if (qword_1009400D0 != -1)
    {
      swift_once();
    }

    v58 = sub_10000A61C(v55, qword_10099EDE8);
    v57(&v15[v11[6]], v58, v55);
    if (qword_1009400F8 != -1)
    {
      swift_once();
    }

    v59 = sub_10000A61C(v55, qword_10099EE60);
    v57(&v15[v11[8]], v59, v55);
    if (qword_1009400A0 != -1)
    {
      swift_once();
    }

    v60 = sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
    v61 = sub_10000A61C(v60, qword_10099ED58);
    (*(*(v60 - 8) + 24))(&v15[v11[13]], v61, v60);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = 0x401C000000000000;
    v37 = v150;
    sub_10030D59C(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v62 = v11[9];
    sub_10000CD74(&v15[v62]);
    sub_100012498(&v176, &v15[v62]);
    sub_10030D534(v15, v37, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    if (qword_10093FFF8 != -1)
    {
      swift_once();
    }

    v63 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
    sub_10000A61C(v63, qword_10099EB40);
    v175 = v6;
    v64 = v6;
    sub_10075FDCC();

    v65 = v176;
    v38 = v151;
    [v151 setFont:v176];
  }

  sub_10030D4CC(v37, v152, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v66 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView];
  if (v66)
  {
    v146 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v145 = &protocol witness table for UIView;
  }

  else
  {
    v145 = 0;
    v146 = 0;
  }

  v67 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
  v68 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v173 = v68;
  v174 = &protocol witness table for UIView;
  if (v67)
  {
    v69 = v66;
    v70 = v67;
  }

  else
  {
    v71 = objc_allocWithZone(UIView);
    v72 = v66;
    v70 = [v71 init];
  }

  *&v172 = v70;
  v151 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  v147 = v66;
  if (v151)
  {
    v144 = sub_100016F40(0, &qword_100952278, UIVisualEffectView_ptr);
    v143 = &protocol witness table for UIView;
  }

  else
  {
    v143 = 0;
    v144 = 0;
  }

  v73 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView];
  v170 = sub_100760B6C();
  v171 = &protocol witness table for UIView;
  *&v169 = v73;
  v74 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView];
  v167 = sub_10075FD2C();
  v168 = &protocol witness table for UIView;
  *&v166 = v74;
  v164 = v47;
  v165 = &protocol witness table for UILabel;
  v162 = &protocol witness table for UILabel;
  *&v163 = v38;
  v75 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel];
  v149 = v47;
  v161 = v47;
  *&v160 = v75;
  v76 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton];
  v158 = type metadata accessor for OfferButton();
  v159 = &protocol witness table for UIView;
  *&v157 = v76;
  v77 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v78 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
  v142 = v77;
  if (v78)
  {
    v79 = v77;
    v80 = v78;
    v81 = v67;
    v82 = v151;
    v83 = v73;
    v84 = v74;
    v85 = v75;
    v86 = v76;
    [v80 transform];
    v176 = 0x3FF0000000000000uLL;
    v177 = 0;
    v178 = 0x3FF0000000000000;
    v179 = 0;
    v180 = 0;
    if (sub_10077062C())
    {
      *(&v155 + 1) = v68;
      v156 = &protocol witness table for UIView;
      *&v154 = v80;
      v87 = v149;
      goto LABEL_32;
    }

    sub_100770BAC();
  }

  else
  {
    v156 = 0;
    v154 = 0u;
    v155 = 0u;
    v88 = v77;
    v89 = v67;
    v90 = v151;
    v91 = v73;
    v92 = v74;
    v93 = v75;
    v94 = v76;
  }

  v87 = v149;
LABEL_32:
  v95 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow];
  if (v95)
  {
    v149 = type metadata accessor for ChevronView();
    v141 = &protocol witness table for UIView;
  }

  else
  {
    v141 = 0;
    v149 = 0;
  }

  v96 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView];
  v97 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerView];
  v98 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView];
  if (v98)
  {
    v139 = sub_10075F99C();
    v140 = &protocol witness table for UIView;
  }

  else
  {
    v139 = 0;
    v140 = 0;
  }

  if (v97)
  {
    v99 = v68;
  }

  else
  {
    v99 = 0;
  }

  if (v97)
  {
    v100 = &protocol witness table for UIView;
  }

  else
  {
    v100 = 0;
  }

  v137 = v100;
  v138 = v99;
  if (v96)
  {
    v101 = v68;
  }

  else
  {
    v101 = 0;
  }

  if (v96)
  {
    v102 = &protocol witness table for UIView;
  }

  else
  {
    v102 = 0;
  }

  v135 = v102;
  v136 = v101;
  v103 = v142;
  v104 = &protocol witness table for UILabel;
  if (!v142)
  {
    v104 = 0;
  }

  v134 = v104;
  if (!v142)
  {
    v87 = 0;
  }

  v105 = type metadata accessor for ProductLockupInlineUberLayout(0);
  v106 = v148;
  v148[3] = v105;
  v106[4] = sub_10030D5FC(&qword_100952270, type metadata accessor for ProductLockupInlineUberLayout, &protocol conformance descriptor for ProductLockupInlineUberLayout);
  v107 = sub_10000DB7C(v106);
  sub_10030D534(v152, v107, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v108 = (v107 + v105[5]);
  v109 = v146;
  *v108 = v147;
  v108[1] = 0;
  v108[2] = 0;
  v108[3] = v109;
  v108[4] = v145;
  sub_100012498(&v172, v107 + v105[6]);
  v110 = (v107 + v105[7]);
  *v110 = v151;
  v110[1] = 0;
  v111 = v143;
  v112 = v144;
  v110[2] = 0;
  v110[3] = v112;
  v110[4] = v111;
  sub_100012498(&v169, v107 + v105[10]);
  sub_100012498(&v166, v107 + v105[8]);
  sub_100012498(&v163, v107 + v105[9]);
  sub_100012498(&v160, v107 + v105[11]);
  v113 = v107 + v105[12];
  *(v113 + 4) = 0;
  *v113 = 0u;
  *(v113 + 1) = 0u;
  sub_100012498(&v157, v107 + v105[13]);
  v114 = (v107 + v105[14]);
  *v114 = v103;
  v114[1] = 0;
  v114[2] = 0;
  v114[3] = v87;
  v114[4] = v134;
  v115 = v107 + v105[15];
  v116 = v155;
  *v115 = v154;
  *(v115 + 1) = v116;
  *(v115 + 4) = v156;
  v117 = (v107 + v105[16]);
  *v117 = v95;
  v117[1] = 0;
  v118 = v149;
  v117[2] = 0;
  v117[3] = v118;
  v117[4] = v141;
  v119 = (v107 + v105[17]);
  *v119 = v96;
  v119[1] = 0;
  v120 = v135;
  v121 = v136;
  v119[2] = 0;
  v119[3] = v121;
  v119[4] = v120;
  v122 = (v107 + v105[18]);
  *v122 = v97;
  v122[1] = 0;
  v123 = v137;
  v124 = v138;
  v122[2] = 0;
  v122[3] = v124;
  v122[4] = v123;
  v125 = (v107 + v105[19]);
  *v125 = v98;
  v125[1] = 0;
  v127 = v139;
  v126 = v140;
  v125[2] = 0;
  v125[3] = v127;
  v125[4] = v126;
  v128 = v98;
  v129 = v95;
  v130 = v96;
  v131 = v97;
  v132 = sub_100307EA8(v6, v107, a4, v153);
  sub_10030D59C(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  return v132;
}

double sub_1003054A8(uint64_t *a1, __n128 a2, double a3, double a4)
{
  v5 = v4;
  v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v71 - v13;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize];
  v86 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize + 8];
  v84 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight];
  v85 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v83 = v12;
  v15 = [v5 contentView];
  [v15 layoutMargins];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (qword_10093FFC8 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v8, qword_10099EAE0);
  __chkstk_darwin(v24);
  *&v25 = v86.n128_u64[0];
  *&v26 = v85.n128_u64[0];
  *(&v25 + 1) = v84.n128_u64[0];
  *(&v26 + 1) = v83.n128_u64[0];
  *(&v71 - 4) = v25;
  *(&v71 - 3) = v26;
  *(&v71 - 4) = v17;
  *(&v71 - 3) = v19;
  *(&v71 - 2) = v21;
  *(&v71 - 1) = v23;
  sub_10030D5FC(&qword_10094C398, type metadata accessor for ProductLockupAccessibilityLayout.Metrics, &protocol conformance descriptor for ProductLockupAccessibilityLayout.Metrics);
  sub_10076C13C();
  v27 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v27)
  {
    v28 = v27;
    if (([v28 isHidden] & 1) == 0)
    {
      [v28 transform];
      v107 = 0x3FF0000000000000;
      v108 = 0;
      v109 = 0;
      v110 = 0x3FF0000000000000;
      v111 = 0;
      v112 = 0;
      if (sub_10077062C())
      {
        v105 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v106 = &protocol witness table for UIView;

        v104[0] = v28;
      }

      else
      {
        sub_100770BAC();
      }

      goto LABEL_7;
    }
  }

  v29 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v105 = sub_1007626BC();
  v106 = &protocol witness table for UIView;
  v104[0] = v29;
  v30 = v29;
LABEL_7:
  v86.n128_u64[0] = v10;
  sub_10030D4CC(v14, v10, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  v31 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView];
  v102 = sub_10075FD2C();
  v103 = &protocol witness table for UIView;
  v85.n128_u64[0] = v31;
  *&v101 = v31;
  v32 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel];
  v33 = sub_1007626BC();
  v99 = v33;
  v100 = &protocol witness table for UILabel;
  v84.n128_u64[0] = v32;
  v97 = &protocol witness table for UILabel;
  *&v98 = v32;
  v34 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel];
  v35 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel];
  v96 = v33;
  v82 = v35;
  v83.n128_u64[0] = v34;
  v94 = &protocol witness table for UILabel;
  *&v95 = v34;
  v93 = v33;
  *&v92 = v35;
  v36 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v37 = *&v5[v36];
  v38 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton];
  v90 = type metadata accessor for OfferButton();
  v91 = &protocol witness table for UIView;
  v81 = v38;
  *&v89 = v38;
  sub_10000A570(v104, v88);
  v39 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v40 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v80 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView];
  if (v80)
  {
    v78 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v79 = &protocol witness table for UIView;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v41 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerView];
  v87 = v14;
  if (v41)
  {
    v76 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v77 = &protocol witness table for UIView;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  if (v40)
  {
    v42 = v33;
  }

  else
  {
    v42 = 0;
  }

  if (v40)
  {
    v43 = &protocol witness table for UILabel;
  }

  else
  {
    v43 = 0;
  }

  v74 = v43;
  v75 = v42;
  if (v39)
  {
    v44 = &protocol witness table for UILabel;
  }

  else
  {
    v44 = 0;
  }

  v72 = v40;
  v73 = v44;
  if (v39)
  {
    v45 = v33;
  }

  else
  {
    v45 = 0;
  }

  v71 = v45;
  v46 = v37 == 0;
  v47 = v37;
  if (v37)
  {
    v48 = &protocol witness table for UILabel;
  }

  else
  {
    v48 = 0;
  }

  v49 = v39;
  if (v46)
  {
    v50 = 0;
  }

  else
  {
    v50 = v33;
  }

  v51 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  a1[3] = v51;
  a1[4] = sub_10030D5FC(&unk_100952290, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
  v52 = sub_10000DB7C(a1);
  sub_10030D534(v86.n128_i64[0], v52 + *(v51 + 64), type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_100012498(&v101, v52);
  sub_100012498(&v98, (v52 + 5));
  sub_100012498(&v95, (v52 + 10));
  sub_100012498(&v92, (v52 + 15));
  v52[20] = v47;
  v52[21] = 0;
  v52[22] = 0;
  v52[23] = v50;
  v52[24] = v48;
  sub_100012498(&v89, (v52 + 25));
  *(v52 + 15) = 0u;
  *(v52 + 16) = 0u;
  v52[34] = 0;
  sub_100012498(v88, (v52 + 35));
  v52[40] = v49;
  v52[41] = 0;
  v53 = v71;
  v54 = v72;
  v52[42] = 0;
  v52[43] = v53;
  v52[44] = v73;
  v52[45] = v54;
  v52[46] = 0;
  v52[47] = 0;
  v55 = v74;
  v52[48] = v75;
  v52[49] = v55;
  v56 = v80;
  v52[50] = v80;
  v52[51] = 0;
  v58 = v78;
  v57 = v79;
  v52[52] = 0;
  v52[53] = v58;
  v52[54] = v57;
  v52[55] = v41;
  v52[56] = 0;
  v52[57] = 0;
  v59 = v77;
  v52[58] = v76;
  v52[59] = v59;
  v60 = v41;
  v61 = v85.n128_u64[0];
  v62 = v84.n128_u64[0];
  v63 = v83.n128_u64[0];
  v64 = v82;
  v65 = v47;
  v66 = v81;
  v67 = v49;
  v68 = v54;
  v69 = v56;
  sub_10030C210(v5, v52, a4);
  sub_10030D59C(v87, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_10000CD74(v104);
  return a4;
}

double sub_100305B14(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v125 = a1;
  v9 = sub_10000A5D4(&qword_10094C3A0, &qword_100792950);
  __chkstk_darwin(v9 - 8);
  v11 = &v108 - v10;
  v129 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v129);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v108 - v15;
  __chkstk_darwin(v17);
  v19 = &v108 - v18;
  *&v126 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v20 = *(v126 - 8);
  *&v21 = __chkstk_darwin(v126).n128_u64[0];
  v23 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
  v25 = &selRef_initWithTabBarSystemItem_tag_;
  v127 = v13;
  v128 = v23;
  if (!v24)
  {
LABEL_4:
    v27 = [v6 v25[274]];
    sub_10036364C(v27, v19);

    sub_10030D4CC(&v19[*(v129 + 19)], v23, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
    sub_10030D59C(v19, type metadata accessor for ProductLockupLayout.Metrics);
    v28 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
    v147 = sub_1007626BC();
    v148 = &protocol witness table for UIView;
    v146[0] = v28;
    v29 = [v28 text];
    if (v29)
    {
      v30 = v29;
      v31 = sub_10076FF9C();
      v123 = v32;
      v124 = v31;
    }

    else
    {
      v123 = 0;
      v124 = 0;
    }

    v41 = v126;
    goto LABEL_19;
  }

  v26 = v24;
  if ([v26 isHidden])
  {

    v25 = &selRef_initWithTabBarSystemItem_tag_;
    goto LABEL_4;
  }

  v124 = v20;
  v23[3] = &type metadata for Double;
  v23[4] = &protocol witness table for Double;
  *v23 = 0;
  v33 = v23;
  if (qword_100940020 != -1)
  {
    swift_once();
  }

  v149 = qword_10099EBB8;
  v34 = v126;
  v35 = qword_10099EBB8;
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  sub_10075FE0C();
  v36 = (v23 + *(v34 + 24));
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  *v36 = 0x7FF0000000000000;
  if (qword_100940120 != -1)
  {
    swift_once();
  }

  v37 = sub_10076D9AC();
  v38 = sub_10000A61C(v37, qword_10099EED8);
  v39 = (v33 + *(v34 + 28));
  v39[3] = v37;
  v39[4] = &protocol witness table for StaticDimension;
  v40 = sub_10000DB7C(v39);
  (*(*(v37 - 8) + 16))(v40, v38, v37);
  [v26 transform];
  v149 = 0x3FF0000000000000;
  v150 = 0;
  v151 = 0;
  v152 = 0x3FF0000000000000;
  v153 = 0;
  v154 = 0;
  if (sub_10077062C())
  {
    v147 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v148 = &protocol witness table for UIView;
    v146[0] = v26;
  }

  else
  {
    sub_100770BAC();
  }

  v20 = v124;
  v42 = [v26 text];
  v23 = v128;
  v41 = v126;
  if (v42)
  {
    v43 = v42;
    v44 = sub_10076FF9C();
    v123 = v45;
    v124 = v44;
  }

  else
  {

    v123 = 0;
    v124 = 0;
  }

  v13 = v127;
LABEL_19:
  v126 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize];
  *&v46 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight];
  *(&v46 + 1) = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v122 = v46;
  v47 = [v6 contentView];
  [v47 layoutMargins];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  sub_10030D4CC(v23, v11, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  (*(v20 + 56))(v11, 0, 1, v41);
  v56 = [v6 traitCollection];
  v57 = sub_10036364C(v56, v19);
  __chkstk_darwin(v57);
  v58 = v122;
  *(&v108 - 5) = v126;
  *(&v108 - 4) = v58;
  *(&v108 - 6) = v49;
  *(&v108 - 5) = v51;
  *(&v108 - 4) = v53;
  *(&v108 - 3) = v55;
  *(&v108 - 2) = v11;
  sub_10030D5FC(&qword_10094C3A8, type metadata accessor for ProductLockupLayout.Metrics, &protocol conformance descriptor for ProductLockupLayout.Metrics);
  sub_10076C13C();

  sub_10030D59C(v19, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10000CFBC(v11, &qword_10094C3A0, &qword_100792950);
  v129 = v16;
  sub_10030D4CC(v16, v13, type metadata accessor for ProductLockupLayout.Metrics);
  v59 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView];
  v144 = sub_10075FD2C();
  v145 = &protocol witness table for UIView;
  *&v126 = v59;
  *&v143 = v59;
  v60 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel];
  v61 = sub_1007626BC();
  v141 = v61;
  v142 = &protocol witness table for UILabel;
  v139 = &protocol witness table for UILabel;
  *&v140 = v60;
  v62 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel];
  v63 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel];
  v138 = v61;
  v121 = v62;
  *&v122 = v60;
  v136 = &protocol witness table for UILabel;
  *&v137 = v62;
  v135 = v61;
  v120 = v63;
  *&v134 = v63;
  v64 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v65 = *&v6[v64];
  v66 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton];
  v132 = type metadata accessor for OfferButton();
  v133 = &protocol witness table for UIView;
  v119 = v66;
  *&v131 = v66;
  sub_10000A570(v146, v130);
  v67 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v68 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v117 = v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer];
  v118 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView];
  if (v118)
  {
    v115 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v116 = &protocol witness table for UIView;
  }

  else
  {
    v115 = 0;
    v116 = 0;
  }

  v69 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerView];
  if (v69)
  {
    v113 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v114 = &protocol witness table for UIView;
  }

  else
  {
    v113 = 0;
    v114 = 0;
  }

  if (v68)
  {
    v70 = v61;
  }

  else
  {
    v70 = 0;
  }

  if (v68)
  {
    v71 = &protocol witness table for UILabel;
  }

  else
  {
    v71 = 0;
  }

  v111 = v71;
  v112 = v70;
  if (v67)
  {
    v72 = &protocol witness table for UILabel;
  }

  else
  {
    v72 = 0;
  }

  if (v67)
  {
    v73 = v61;
  }

  else
  {
    v73 = 0;
  }

  v109 = v73;
  v110 = v72;
  if (v65)
  {
    v74 = &protocol witness table for UILabel;
  }

  else
  {
    v74 = 0;
  }

  if (v65)
  {
    v75 = v61;
  }

  else
  {
    v75 = 0;
  }

  v76 = type metadata accessor for ProductLockupLayout(0);
  v77 = v125;
  v125[3] = v76;
  v77[4] = sub_10030D5FC(&unk_1009522B0, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
  v78 = sub_10000DB7C(v77);
  sub_10030D534(v127, v78, type metadata accessor for ProductLockupLayout.Metrics);
  sub_100012498(&v143, v78 + v76[5]);
  sub_100012498(&v140, v78 + v76[6]);
  sub_100012498(&v137, v78 + v76[7]);
  sub_100012498(&v134, v78 + v76[8]);
  v79 = (v78 + v76[9]);
  *v79 = v65;
  v79[1] = 0;
  v79[2] = 0;
  v79[3] = v75;
  v79[4] = v74;
  v80 = v78 + v76[10];
  *(v80 + 4) = 0;
  *v80 = 0u;
  *(v80 + 1) = 0u;
  sub_100012498(&v131, v78 + v76[11]);
  sub_100012498(v130, v78 + v76[12]);
  v81 = (v78 + v76[13]);
  *v81 = v67;
  v81[1] = 0;
  v83 = v109;
  v82 = v110;
  v81[2] = 0;
  v81[3] = v83;
  v81[4] = v82;
  v84 = (v78 + v76[14]);
  *v84 = v68;
  v84[1] = 0;
  v85 = v111;
  v86 = v112;
  v84[2] = 0;
  v84[3] = v86;
  v84[4] = v85;
  *(v78 + v76[15]) = v117;
  v87 = (v78 + v76[16]);
  v88 = v123;
  *v87 = v124;
  v87[1] = v88;
  v89 = (v78 + v76[17]);
  v90 = v118;
  *v89 = v118;
  v89[1] = 0;
  v92 = v115;
  v91 = v116;
  v89[2] = 0;
  v89[3] = v92;
  v89[4] = v91;
  v93 = (v78 + v76[18]);
  *v93 = v69;
  v93[1] = 0;
  v95 = v113;
  v94 = v114;
  v93[2] = 0;
  v93[3] = v95;
  v93[4] = v94;
  v96 = v69;
  v97 = v126;
  v98 = v122;
  v99 = v121;
  v100 = v120;
  v101 = v65;
  v102 = v119;
  v103 = v67;
  v104 = v68;
  v105 = v90;
  v106 = sub_100308F70(v6, v78, a4, a5);
  sub_10030D59C(v129, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10030D59C(v128, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_10000CD74(v146);
  return v106;
}

uint64_t sub_1003065E8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v20 = sub_10000A5D4(&qword_10094C3A0, &qword_100792950);
  __chkstk_darwin(v20 - 8);
  v22 = &v29 - v21;
  v23 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 112) = a3;
  *(a1 + 120) = a4;
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  *&v30 = a5;
  sub_10000CD74((a1 + 32));
  sub_100012498(&v30, a1 + 32);
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  *&v30 = a6;
  sub_10000CD74((a1 + 72));
  sub_100012498(&v30, a1 + 72);
  *a1 = a7;
  *(a1 + 8) = a8;
  *(a1 + 16) = a9;
  *(a1 + 24) = a10;
  sub_100016E2C(a2, v22, &qword_10094C3A0, &qword_100792950);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_10000CFBC(v22, &qword_10094C3A0, &qword_100792950);
  }

  sub_10030D534(v22, v26, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  return sub_1002CDE88(v26, a1 + *(v28 + 76));
}

uint64_t sub_100306820(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a4;
  sub_10000CD74((a1 + 32));
  sub_100012498(&v16, a1 + 32);
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a5;
  sub_10000CD74((a1 + 72));
  result = sub_100012498(&v16, a1 + 72);
  *a1 = a6;
  *(a1 + 8) = a7;
  *(a1 + 16) = a8;
  *(a1 + 24) = a9;
  return result;
}

void sub_1003068D0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
  if (v2)
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v3 = v2;
    v4 = sub_100770CFC();
    [v3 setTextColor:v4];
  }

  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v6 = sub_100770CFC();
  [v5 setTextColor:v6];

  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
  v8 = sub_100770D1C();
  [v7 setTextColor:v8];

  v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView);
  v10 = sub_100770D1C();
  [v9 setTintColor:v10];

  v11 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12)
  {
    v13 = v12;
    v14 = sub_100770D0C();
    [v13 setTextColor:v14];
  }
}

void sub_100306A44(void *a1)
{
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  v4 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView;
  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
  if (v3)
  {
    if (v5)
    {
      v6 = v3;
      v7 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY);
      v8 = *(*(v5 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
      v9 = *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
      *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = v7;
      v10 = a1;
      if (v7 == v9)
      {
        v11 = *&v1[v4];
        if (!v11)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }

      [v8 setNeedsLayout];
      v11 = *&v1[v4];
      if (v11)
      {
LABEL_16:
        v18 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding);
        *(v11 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_isRubberbanding) = v18;
        v19 = *(v11 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
        *(v19 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding) = v18;
        if (*(*(v19 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
        {
          type metadata accessor for VideoView(0);
          v20 = swift_dynamicCastClass();
          if (v20)
          {
            *(v20 + qword_1009602E0) = v18;
          }
        }

        return;
      }
    }

    else
    {
      v17 = a1;
    }

LABEL_14:

    return;
  }

  if (v5)
  {
    v12 = *(*(v5 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v13 = *&v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
    *&v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
    if (v13 != 0.0)
    {
      [v12 setNeedsLayout];
    }

    v14 = *&v1[v4];
    if (v14)
    {
      *(v14 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_isRubberbanding) = 0;
      v15 = *(v14 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
      *(v15 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding) = 0;
      if (*(*(v15 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
      {
        type metadata accessor for VideoView(0);
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          *(v16 + qword_1009602E0) = 0;
        }
      }
    }
  }
}

uint64_t sub_100306DD4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) == 1)
  {
    swift_unknownObjectWeakInit();
    sub_100306E2C(v3);
    result = swift_unknownObjectWeakDestroy();
    *(v0 + v1) = 0;
  }

  return result;
}

void sub_100306E2C(uint64_t a1)
{
  v1 = sub_10076F08C();
  __chkstk_darwin(v1);
  v2 = sub_10076F0EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel;
    v12 = [*(Strong + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel) text];
    if (v12 && (v12, ([*&v10[v11] isHidden] & 1) != 0))
    {
      sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
      v22 = sub_10077068C();
      sub_10076F0DC();
      sub_10076F15C();
      v21 = *(v3 + 8);
      v21(v5, v2);
      v13 = *&v10[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel];
      v14 = *&v10[v11];
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v13;
      aBlock[4] = sub_10030B624;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_100890D28;
      v20[1] = _Block_copy(aBlock);
      v23 = _swiftEmptyArrayStorage;
      sub_10030D5FC(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v16 = v13;
      v17 = v14;
      v18 = v16;
      sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
      sub_1000852B8();
      sub_1007712CC();
      sub_10076F12C();
      swift_allocObject();
      sub_10076F10C();

      v19 = v22;
      sub_10077065C();

      v21(v8, v2);
    }

    else
    {
    }
  }
}

void sub_1003071B4(void *a1, void *a2)
{
  [a1 setAlpha:0.0];
  [a1 setHidden:0];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v16 = sub_10030B644;
  v17 = v5;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10009AEDC;
  v15 = &unk_100890D78;
  v6 = _Block_copy(&v12);
  v7 = a2;
  v8 = a1;

  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v16 = sub_10030B6C8;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000513F0;
  v15 = &unk_100890DC8;
  v10 = _Block_copy(&v12);
  v11 = v7;

  [v4 animateWithDuration:v6 animations:v10 completion:1.0];
  _Block_release(v10);
  _Block_release(v6);
}

void sub_100307370(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      [v6 setAlpha:a3];
      --v3;
    }

    while (v3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong setNeedsLayout];
  }
}

void sub_100307408(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      __break(1u);
      return;
    }

    *&Strong[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v9;
  }

  if ((a3 & 1) != 0 && (swift_beginAccess(), (v10 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v11 = *&v10[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount];

    v12 = v11 == 0;
    v13 = *(a4 + 16);
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v12 = 0;
    v13 = *(a4 + 16);
    if (!v13)
    {
      return;
    }
  }

  v14 = (a4 + 32);
  do
  {
    v15 = *v14++;
    [v15 setHidden:v12];
    --v13;
  }

  while (v13);
}

void sub_1003076A4(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    sub_100762A7C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_100307828()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView);
  v2 = v1;
  return v1;
}

uint64_t (*sub_100307864(uint64_t **a1))()
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
  v2[4] = sub_10030116C(v2);
  return sub_100019A4C;
}

uint64_t sub_1003078D4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10030D5FC(&qword_100952238, type metadata accessor for ProductLockupCollectionViewCell, &unk_10079B2B8);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100307948(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10030D5FC(&qword_100952238, type metadata accessor for ProductLockupCollectionViewCell, &unk_10079B2B8);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1003079D4(uint64_t *a1))()
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
  sub_10030D5FC(&qword_100952238, type metadata accessor for ProductLockupCollectionViewCell, &unk_10079B2B8);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_100307A90(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView);
  if (v2 && a1)
  {
    v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView];
    v5 = v2;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      v8 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v9 = v8;
      v10 = sub_100770EEC();

      v5 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL sub_100307C40(void *a1, double *a2, void *a3, double a4, double a5)
{
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a3 traitCollection];
  v13 = sub_1007706FC();

  if (v13)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10076D17C();
    sub_10075FE7C();
    (*(v8 + 8))(v11, v7);
  }

  sub_100770ACC();
  sub_100770ACC();
  sub_10000CF78(a1, a1[3]);
  sub_10000CF78(a1, a1[3]);
  sub_10076D2AC();
  return sub_10076D71C(v16) > 1;
}

uint64_t sub_100307E18(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 traitCollection];
  if ((a2 & 1) == 0 || (sub_1007706FC() & 1) != 0 || [*(a3 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton) isHidden])
  {
    v6 = sub_10077070C();

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

double sub_100307EA8(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin(v7);
  v64 = v60 - v8;
  v9 = sub_10077164C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_1007706EC();

  v63 = v10;
  if ((v15 & 1) == 0)
  {
    v16 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    v17 = (a2 + v16[15]);
    v18 = v17[3];
    sub_10000CF78(v17, v18);
    sub_1000FF02C(v18);
    sub_10076D40C();
    v19 = *(v10 + 8);
    v19(v13, v9);
    v20 = (a2 + v16[16]);
    v21 = v20[3];
    sub_10000CF78(v20, v21);
    sub_1000FF02C(v21);
    sub_10076D40C();
    v19(v13, v9);
    v22 = (a2 + v16[17]);
    v23 = v22[3];
    sub_10000CF78(v22, v23);
    sub_1000FF02C(v23);
    v24 = v64;
    sub_10076D40C();
    v19(v13, v9);
    sub_10076D17C();
    sub_10075FE7C();
    v19(v13, v9);
    sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
    sub_10075FE9C();
    sub_10076D17C();
    sub_10075FE7C();
    v19(v13, v9);
    v10 = v63;
    (*(v65 + 8))(v24, v66);
  }

  sub_100770ACC();
  v26 = v25;
  v27 = [a1 traitCollection];
  v28 = sub_1007706FC();

  if (v28)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10076D17C();
    sub_10075FE7C();
    (*(v10 + 8))(v13, v9);
  }

  v62 = v26;
  v29 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10000CF78((a2 + *(v29 + 36)), *(a2 + *(v29 + 36) + 24));
  sub_10076D2AC();
  v60[2] = v30;
  v60[4] = v31;
  v60[1] = v32;
  v60[3] = v33;
  v61 = v29;
  v34 = (a2 + *(v29 + 44));
  sub_10000CF78(v34, v34[3]);
  sub_10076D2AC();
  sub_10000CF78(v34, v34[3]);
  if (sub_10076D20C())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10076D17C();
    sub_10075FE7C();
    v36 = v35;
    (*(v10 + 8))(v13, v9);
    v69[0] = v36;
    sub_10076D42C();
  }

  sub_10035EAE8(&v67);
  if (v68)
  {
    sub_100012498(&v67, v69);
    sub_10000CF78(v69, v70);
    sub_10076D2AC();
    v37 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10000CF78((a2 + *(v37 + 44)), *(a2 + *(v37 + 44) + 24));
    sub_10076D42C();
    v38 = (a2 + *(v37 + 48));
    v39 = v38[3];
    sub_10000CF78(v38, v39);
    sub_1000FF02C(v39);
    sub_10076D40C();
    (*(v10 + 8))(v13, v9);
    sub_10000CD74(v69);
  }

  else
  {
    sub_10000CFBC(&v67, &unk_10094DA00, &qword_100783FA0);
  }

  v40 = v65;
  sub_10035EAE8(v69);
  v41 = v70;
  sub_10000CFBC(v69, &unk_10094DA00, &qword_100783FA0);
  if (!v41)
  {
    v42 = [a1 traitCollection];
    v43 = sub_1007706FC();

    if (v43 & 1) != 0 || (v44 = [a1 traitCollection], v45 = sub_10077071C(), v44, (v45))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      sub_10076D17C();
      sub_10075FE7C();
      (*(v10 + 8))(v13, v9);
    }
  }

  v46 = [a1 traitCollection];
  v47 = sub_1007706EC();

  if (v47)
  {
    sub_10035EAE8(v69);
    sub_10000CFBC(v69, &unk_10094DA00, &qword_100783FA0);
  }

  v48 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
  v49 = v64;
  sub_10075FE9C();
  sub_10076D17C();
  sub_10075FE7C();
  v50 = *(v63 + 8);
  v50(v13, v9);
  (*(v40 + 8))(v49, v66);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10076D17C();
  sub_10075FE7C();
  v50(v13, v9);
  sub_10076D17C();
  sub_10075FE7C();
  v52 = v51;
  v50(v13, v9);
  v69[0] = v52;
  sub_10076D42C();
  v53 = (a2 + v48[9]);
  v54 = v53[3];
  sub_10000CF78(v53, v54);
  sub_1000FF02C(v54);
  sub_10076D40C();
  v50(v13, v9);
  sub_10000CF78((a2 + *(v61 + 52)), *(a2 + *(v61 + 52) + 24));
  sub_10076D2BC();
  v55 = (a2 + v48[15]);
  v56 = v55[3];
  sub_10000CF78(v55, v56);
  sub_1000FF02C(v56);
  sub_10076D40C();
  v50(v13, v9);
  v57 = (a2 + v48[16]);
  v58 = v57[3];
  sub_10000CF78(v57, v58);
  sub_1000FF02C(v58);
  sub_10076D40C();
  v50(v13, v9);
  return a3;
}

double sub_1003089E8(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a2 + 35, a2[38]);
  v10 = sub_10076D24C();
  v11 = 0.0;
  v12 = 0.0;
  if ((v10 & 1) == 0)
  {
    sub_10000CF78(a2 + 35, a2[38]);
    sub_10076D2AC();
    v14 = v13;
    v11 = v15;
    v16 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v17 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000CF78(&v16[*(v17 + 56)], *&v16[*(v17 + 56) + 24]);
    sub_10076D42C();
    v12 = v14 - v11 + v18;
  }

  v51 = v12;
  sub_100016E2C((a2 + 40), &v53, &qword_10094BB30, qword_100796E40);
  if (v54)
  {
    sub_100012498(&v53, v55);
    sub_10000CF78(v55, v56);
    sub_10076D2AC();
    v20 = v19;
    v11 = v21;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v52 = a1;
    sub_10000A5D4(&unk_100945BD0, qword_100796680);
    sub_10075FDCC();
    v52 = v53;
    v22 = v20;
    sub_10076D42C();
    v24 = v23;
    sub_10000CD74(v55);
    v50 = v11;
  }

  else
  {
    sub_10000CFBC(&v53, &qword_10094BB30, qword_100796E40);
    v22 = JUMeasurementsZero[1];
    v50 = JUMeasurementsZero[3];
    v24 = 0.0;
  }

  sub_100016E2C((a2 + 45), &v53, &qword_10094BB30, qword_100796E40);
  if (v54)
  {
    sub_100012498(&v53, v55);
    sub_10000CF78(v55, v56);
    sub_10076D2AC();
    v26 = v25;
    v49 = v24;
    v11 = v27;
    v28 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v29 = &v28[*(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 64)];
    v30 = *(v29 + 3);
    sub_10000CF78(v29, v30);
    sub_1000FF02C(v30);
    sub_10076D40C();
    v32 = v31;
    (*(v7 + 8))(v9, v6);
    *&v53 = v32;
    v24 = v49;
    sub_10076D42C();
    v34 = v33;
    sub_10000CD74(v55);
    v35 = v11;
  }

  else
  {
    sub_10000CFBC(&v53, &qword_10094BB30, qword_100796E40);
    v26 = JUMeasurementsZero[1];
    v35 = JUMeasurementsZero[3];
    v34 = 0.0;
  }

  sub_10000CF78(a2 + 25, a2[28]);
  sub_10076D2BC();
  v37 = v26 - v35 + v34 + v22 - v50 + v24 + v51 + v36;
  v38 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  v39 = *(v38 + 12);
  sub_10000CF78(v38 + 9, v39);
  sub_1000FF02C(v39);
  sub_10076D40C();
  v41 = v40;
  v42 = *(v7 + 8);
  v42(v9, v6);
  v43 = v37 + v41;
  v44 = &v38[*(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 68)];
  v45 = *(v44 + 3);
  sub_10000CF78(v44, v45);
  sub_1000FF02C(v45);
  sub_10076D40C();
  v47 = v46;
  v42(v9, v6);
  return v11 + v43 + v47;
}

double sub_100308F70(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_1007706FC();

  v15 = *(a2 + 56);
  sub_10000CF78((a2 + 32), v15);
  sub_1000FF02C(v15);
  sub_10076D40C();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v17 = *(a2 + 96);
  sub_10000CF78((a2 + 72), v17);
  sub_1000FF02C(v17);
  sub_10076D40C();
  v16(v12, v8);
  v18 = a3 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v19 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v23[0] = a1;
  sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10075FDCC();
  sub_100309254(a1, a2, v18 - *&v23[1], a4);
  v20 = (a2 + *(v19 + 96));
  v21 = v20[3];
  sub_10000CF78(v20, v21);
  sub_1000FF02C(v21);
  sub_10076D40C();
  v16(v12, v8);
  if (v14 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_1003097D4(a1, a2, a3, a4);
  }

  return a3;
}

double sub_100309254(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_1007706FC();

  v52 = type metadata accessor for ProductLockupLayout(0);
  v15 = v52[10];
  sub_100016E2C(a2 + v15, v53, &unk_10094DA00, &qword_100783FA0);
  if (v54)
  {
    sub_10000CF78(v53, v54);
    sub_10076D2BC();
    v17 = v16;
    sub_10000CD74(v53);
  }

  else
  {
    sub_10000CFBC(v53, &unk_10094DA00, &qword_100783FA0);
    v17 = 0.0;
  }

  v18 = sub_10030A70C(a1, a2, a3, a4);
  sub_100016E2C(a2 + v15, v53, &unk_10094DA00, &qword_100783FA0);
  v19 = v54;
  sub_10000CFBC(v53, &unk_10094DA00, &qword_100783FA0);
  if (v19)
  {
    v20 = v52;
    if ((v14 & 1) == 0)
    {
      if (*(a2 + v52[15]))
      {
        v21 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92));
        v22 = v21[3];
        sub_10000CF78(v21, v22);
        sub_1000FF02C(v22);
        sub_10076D40C();
        v24 = v23;
        (*(v9 + 8))(v12, v8);
        v18 = v18 + v17 + v24;
      }

LABEL_9:
      if (*(a2 + v20[15]))
      {
        return v18;
      }
    }
  }

  else
  {
    v20 = v52;
    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v51 = *(a2 + 120);
  v25 = (a2 + v20[11]);
  sub_10000CF78(v25, v25[3]);
  sub_10076D2BC();
  v27 = v26;
  sub_100016E2C(a2 + v15, v53, &unk_10094DA00, &qword_100783FA0);
  v28 = v54;
  sub_10000CFBC(v53, &unk_10094DA00, &qword_100783FA0);
  if (v28)
  {
    v29 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80));
    v30 = v29[3];
    sub_10000CF78(v29, v30);
    sub_1000FF02C(v30);
    sub_10076D40C();
    (*(v9 + 8))(v12, v8);
  }

  v31 = a2;
  v32 = v8;
  v49 = v31;
  v50 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v33 = v31 + *(v50 + 76);
  v34 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v35 = (v33 + *(v34 + 28));
  v36 = v35[3];
  sub_10000CF78(v35, v36);
  sub_1000FF02C(v36);
  sub_10076D40C();
  v37 = *(v9 + 8);
  v37(v12, v32);
  v38 = (v33 + *(v34 + 24));
  v39 = v38[3];
  sub_10000CF78(v38, v39);
  sub_1000FF02C(v39);
  sub_10076D40C();
  v37(v12, v32);
  v40 = v49;
  sub_10000CF78((v49 + v52[12]), *(v49 + v52[12] + 24));
  sub_10076D2BC();
  v42 = v41;
  sub_10000CF78(v25, v25[3]);
  if (sub_10076D24C())
  {
    v27 = v42;
  }

  v43 = (v40 + *(v50 + 72));
  v44 = v43[3];
  sub_10000CF78(v43, v44);
  sub_1000FF02C(v44);
  sub_10076D40C();
  v46 = v45;
  v37(v12, v32);
  if (v18 < v51 - v46 - v27)
  {
    v18 = v51 - v46 - v27;
  }

  return sub_1003097D4(a1, v40, a3, a4) + v18;
}

double sub_1003097D4(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_10077164C();
  v47 = *(v8 - 8);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v48[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 traitCollection];
  v13 = sub_1007706FC();

  v14 = type metadata accessor for ProductLockupLayout(0);
  sub_10000CF78((a2 + v14[11]), *(a2 + v14[11] + 24));
  sub_10076D2BC();
  v16 = v15;
  v17 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v18 = (a2 + v17[18]);
  v19 = v18[3];
  sub_10000CF78(v18, v19);
  sub_1000FF02C(v19);
  v20 = v8;
  v21 = v47;
  sub_10076D40C();
  v23 = v22;
  v24 = *(v21 + 8);
  v24(v11, v20);
  if ((v13 & 1) != 0 || *(a2 + v14[15]) == 1)
  {
    v25 = a2 + v17[19];
    v26 = (v25 + *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28));
    v27 = v26[3];
    sub_10000CF78(v26, v27);
    sub_1000FF02C(v27);
    sub_10076D40C();
    v29 = v28;
    v24(v11, v20);
    sub_100309C10(a1, a2, a3, a4, a3 - (v16 + v29));
    v31 = v30;
    v32 = sub_10030A490(a1, a2, a3, a4);
    if (v31 > v32)
    {
      v32 = v31;
    }
  }

  else
  {
    v33 = v14[10];
    sub_100016E2C(a2 + v33, v48, &unk_10094DA00, &qword_100783FA0);
    if (v49)
    {
      sub_10000CF78(v48, v49);
      sub_10076D2BC();
      v35 = v34;
      sub_10000CD74(v48);
    }

    else
    {
      sub_10000CFBC(v48, &unk_10094DA00, &qword_100783FA0);
      v35 = 0.0;
    }

    sub_100016E2C(a2 + v33, v48, &unk_10094DA00, &qword_100783FA0);
    v36 = v49;
    sub_10000CFBC(v48, &unk_10094DA00, &qword_100783FA0);
    if (v36)
    {
      v37 = (a2 + v17[20]);
      v38 = v37[3];
      sub_10000CF78(v37, v38);
      sub_1000FF02C(v38);
      sub_10076D40C();
      v40 = v39;
      v24(v11, v20);
    }

    else
    {
      v40 = 0.0;
    }

    v41 = a2 + v17[19];
    v42 = (v41 + *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28));
    v43 = v42[3];
    sub_10000CF78(v42, v43);
    sub_1000FF02C(v43);
    sub_10076D40C();
    v45 = v44;
    v24(v11, v20);
    sub_100309C10(a1, a2, a3, a4, a3 - (v40 + v35 + v16 + v45));
  }

  return v23 + 0.0 + v32;
}

void sub_100309C10(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v8 = sub_10076997C();
  v83 = *(v8 - 8);
  v84 = v8;
  __chkstk_darwin(v8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v78 = &v72 - v12;
  v13 = sub_10077164C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v79 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10075D78C();
  v81 = *(v16 - 8);
  v82 = v16;
  __chkstk_darwin(v16);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ProductLockupLayout(0);
  v20 = (a2 + v19[11]);
  sub_10000CF78(v20, v20[3]);
  sub_10076D2BC();
  v21 = (a2 + v19[16]);
  v80 = v21[1];
  if (v80)
  {
    v75 = v14;
    v76 = v13;
    v77 = *v21;
    v22 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76));
    type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v85[0] = a1;
    sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
    v72 = v22;
    sub_10075FDCC();
    v23 = v88;
    v73 = v19;
    v24 = v19[15];
    v74 = a2;
    v25 = *(a2 + v24);
    sub_10000CF78(v20, v20[3]);
    if (sub_10076D24C())
    {
    }

    else
    {
      v26 = v25;
      v27 = objc_opt_self();
      v28 = v80;

      v29 = [v27 mainScreen];
      [v29 bounds];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v89.origin.x = v31;
      v89.origin.y = v33;
      v89.size.width = v35;
      v89.size.height = v37;
      Width = CGRectGetWidth(v89);
      JUScreenClassGetPortraitWidth();
      v39 = v23;
      if (Width > v40 || (sub_10075D77C(), v85[0] = v77, v85[1] = v28, sub_10002564C(), sub_1007711EC(), v42 = v41, v81[1](v18, v82), (v42)) && (!v26 || (v43 = [a1 traitCollection], v44 = sub_1007706FC(), v43, (v44)))
      {
        v45 = sub_1002D16C0(v77, v28);
        v46 = *(v45 + 16);
        v81 = (v83 + 8);
        LODWORD(v82) = enum case for Feature.measurement_with_labelplaceholder(_:);
        v47 = v45 + 40;
        v83 = -v46;
        v48 = -1;
        while (v83 + v48 != -1)
        {
          if (++v48 >= *(v45 + 16))
          {
            __break(1u);
            return;
          }

          v49 = v47 + 16;
          v50 = a1;
          v51 = sub_10076C04C();
          v86 = v51;
          v87 = sub_10030D5FC(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v52 = sub_10000DB7C(v85);
          (*(*(v51 - 8) + 104))(v52, v82, v51);
          v53 = v39;

          v54 = v39;
          sub_10076C90C();
          sub_10000CD74(v85);
          a1 = v50;
          sub_10076996C();
          sub_10030D5FC(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
          v55 = v84;
          sub_10076D2AC();
          v57 = v56;
          v58 = v55;
          v39 = v54;
          (*v81)(v10, v58);
          v47 = v49;
          if (v57 > a5)
          {

            goto LABEL_13;
          }
        }

        v65 = sub_10076C04C();
        v86 = v65;
        v87 = sub_10030D5FC(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v66 = sub_10000DB7C(v85);
        (*(*(v65 - 8) + 104))(v66, v82, v65);
        v67 = v39;
        sub_10076C90C();
        sub_10000CD74(v85);
        v68 = v78;
        sub_10076996C();
        sub_10030D5FC(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
        v69 = v84;
        sub_10076D2AC();
        v71 = v70;

        (*v81)(v68, v69);
        v59 = v76;
        v60 = v75;
        v61 = v74;
        v62 = v73;
        if (v71 > a5)
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_13:

        v59 = v76;
        v60 = v75;
        v61 = v74;
        v62 = v73;
LABEL_14:
        sub_10000CF78((v61 + v62[12]), *(v61 + v62[12] + 24));
        sub_10076D2AC();
        v63 = v72[3];
        sub_10000CF78(v72, v63);
        v64 = v79;
        sub_1000FF02C(v63);
        sub_10076D40C();
        (*(v60 + 8))(v64, v59);
      }
    }
  }
}

double sub_10030A490(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProductLockupLayout(0);
  sub_100016E2C(a2 + *(v9 + 52), &v25, &qword_10094BB30, qword_100796E40);
  if (!v26)
  {
    sub_10000CFBC(&v25, &qword_10094BB30, qword_100796E40);
    return 0.0;
  }

  sub_100012498(&v25, v27);
  sub_100016E2C(a2 + *(v9 + 56), &v23, &qword_10094BB30, qword_100796E40);
  if (!v24)
  {
    sub_10000CFBC(&v23, &qword_10094BB30, qword_100796E40);
    sub_10000CD74(v27);
    return 0.0;
  }

  sub_100012498(&v23, &v25);
  sub_10000CF78(v27, v27[3]);
  sub_10076D2AC();
  v11 = v10;
  v13 = v12;
  sub_10000CF78(&v25, v26);
  sub_10076D2AC();
  v15 = v14;
  v16 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 84));
  v17 = v16[3];
  sub_10000CF78(v16, v17);
  sub_1000FF02C(v17);
  sub_10076D40C();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  v20 = v15 + v11 - v13 + v19;
  sub_10000CD74(&v25);
  sub_10000CD74(v27);
  return v20;
}

double sub_10030A70C(void *a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 traitCollection];
  v58 = sub_1007706FC();

  v12 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v59 = a1;
  v13 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10075FDCC();
  v14 = *v62;
  v15 = v12;
  *&v59 = a1;
  v57 = v13;
  sub_10075FDCC();
  v16 = *v62;
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = v17[10];
  sub_100016E2C(a2 + v18, v62, &unk_10094DA00, &qword_100783FA0);
  if (v63)
  {
    sub_10000CF78(v62, v63);
    sub_10076D2BC();
    sub_10000CD74(v62);
  }

  else
  {
    sub_10000CFBC(v62, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100016E2C(a2 + v18, v62, &unk_10094DA00, &qword_100783FA0);
  v19 = v63;
  sub_10000CFBC(v62, &unk_10094DA00, &qword_100783FA0);
  if (v19)
  {
    v20 = (a2 + *(v15 + 80));
    v21 = v20[3];
    sub_10000CF78(v20, v21);
    sub_1000FF02C(v21);
    sub_10076D40C();
    (*(v7 + 8))(v10, v6);
  }

  v22 = (a2 + v17[6]);
  sub_10000CF78(v22, v22[3]);
  sub_10076D2AC();
  v25 = v24;
  v27 = v26;
  v28 = v23;
  v30 = v29;
  if (v14 - v23 > 0.0)
  {
    v31 = v14 - v23;
  }

  else
  {
    v31 = 0.0;
  }

  sub_10000CF78(v22, v22[3]);
  sub_10076D6EC();
  v33 = v27 - v30 + v31 + v32;
  sub_10000A570(v22, v62);
  *&v59 = a1;
  sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10075FDCC();
  v34 = v17[9];
  sub_100016E2C(a2 + v34, &v59, &qword_10094BB30, qword_100796E40);
  sub_10000CFBC(&v59, &qword_10094BB30, qword_100796E40);
  sub_10000CF78(v62, v63);
  v64.var0 = v25;
  v64.var1 = v27;
  v64.var2 = v28;
  v64.var3 = v30;
  sub_10076D71C(v64);
  sub_10000CD74(v62);
  v35 = (a2 + v17[8]);
  sub_10000CF78(v35, v35[3]);
  sub_10076D6DC();
  v36 = (a2 + v17[7]);
  sub_10000CF78(v36, v36[3]);
  sub_10076D6DC();
  sub_10000CF78(v35, v35[3]);
  sub_10076D2AC();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_10000CF78(v36, v36[3]);
  sub_10076D2AC();
  v44 = v43;
  v45 = v16 - v40 + v38 - v42;
  v48 = v16 - v46 + v47 - v43;
  if (v45 > v48)
  {
    v49 = v45;
  }

  else
  {
    v49 = v48;
  }

  v50 = v33 + v49;
  sub_100016E2C(a2 + v34, &v59, &qword_10094BB30, qword_100796E40);
  if (v60)
  {
    sub_100012498(&v59, v62);
    v61 = a1;
    sub_10075FDCC();
    v51 = *&v59;
    sub_10000CF78(v62, v63);
    sub_10076D2AC();
    v53 = v52;
    v50 = v50 + v51 - v54 + v55 - v52;
    sub_10000CD74(v62);
  }

  else
  {
    if (v45 >= v48)
    {
      v53 = v42;
    }

    else
    {
      v53 = v44;
    }

    sub_10000CFBC(&v59, &qword_10094BB30, qword_100796E40);
  }

  return v50 + v53;
}

void sub_10030ACEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  if (*(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_100940038 != -1)
    {
      swift_once();
    }

    v7 = sub_10076D3DC();
    v8 = sub_10000A61C(v7, qword_10099EBE0);
    v9 = *(v7 - 8);
    (*(v9 + 16))(v6, v8, v7);
    (*(v9 + 56))(v6, 0, 1, v7);
    sub_1007625DC();
    v10 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_100940008 != -1)
    {
      swift_once();
    }

    v11 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
    sub_10000A61C(v11, qword_10099EB70);
    v23 = a1;
    sub_10075FDCC();
    v12 = v24;
    [v10 setFont:v24];
  }

  else
  {
    if (qword_100940030 != -1)
    {
      swift_once();
    }

    v13 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
    sub_10000A61C(v13, qword_10099EBC8);
    v24 = a1;
    sub_10075FDCC();
    v14 = sub_10076D3DC();
    v15 = *(*(v14 - 8) + 56);
    v15(v6, 0, 1, v14);
    sub_1007625DC();
    if (qword_100940040 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v13, qword_10099EBF8);
    v24 = a1;
    sub_10075FDCC();
    v15(v6, 0, 1, v14);
    sub_1007625DC();
  }

  if (qword_100940040 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000A61C(v16, qword_10099EBF8);
  v24 = a1;
  sub_10075FDCC();
  v17 = sub_10076D3DC();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 0, 1, v17);
  sub_1007625DC();
  if (qword_100940058 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v16, qword_10099EC40);
  v24 = a1;
  sub_10075FDCC();
  v18(v6, 0, 1, v17);
  sub_1007625DC();
  v19 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v20 = *(a2 + v19);
  if (v20)
  {
    v21 = qword_100940050;
    v22 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v16, qword_10099EC28);
    v23 = a1;
    sub_10075FDCC();
    v18(v6, 0, 1, v17);
    sub_1007625DC();
  }
}

void sub_10030B244(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel);
  if (*(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_100940168 != -1)
    {
      swift_once();
    }

    v5 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
    v6 = qword_10099EFB0;
  }

  else
  {
    if (qword_100940160 != -1)
    {
      swift_once();
    }

    v5 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
    v6 = qword_10099EF98;
  }

  sub_10000A61C(v5, v6);
  sub_10075FDCC();
  [v4 setNumberOfLines:v18];
  v7 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel);
  if (qword_100940190 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10000A61C(v8, qword_10099F028);
  sub_10075FDCC();
  [v7 setNumberOfLines:v18];
  v9 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel);
  if (qword_100940170 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v8, qword_10099EFC8);
  sub_10075FDCC();
  [v9 setNumberOfLines:v18];
  v10 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
  sub_10075FDCC();
  [v10 setNumberOfLines:v18];
  v11 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if (v12)
  {
    v13 = qword_100940178;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v8, qword_10099EFE0);
    sub_10075FDCC();
    [v14 setNumberOfLines:a1];
  }

  v15 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (v15)
  {
    v16 = qword_100940158;
    v17 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v8, qword_10099EF80);
    sub_10075FDCC();
    [v17 setNumberOfLines:a1];
  }
}

uint64_t sub_10030B5E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10030B62C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}