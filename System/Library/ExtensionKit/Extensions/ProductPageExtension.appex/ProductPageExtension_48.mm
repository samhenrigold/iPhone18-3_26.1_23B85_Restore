id sub_100565970()
{
  v1 = v0;
  v2 = sub_10076F1BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController];
  sub_10076857C();

  v8 = *&v0[v6];
  *&v0[v6] = 0;

  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  [result bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v45[5] = v12;
  v45[6] = v14;
  v45[7] = v16;
  v45[8] = v18;
  v46 = 0;
  result = sub_10076856C();
  v19 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_loggedInUserPurchases;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_loggedInUserPurchases])
  {
    return result;
  }

  sub_10000A5D4(&qword_100958C48, &qword_1007A5A60);
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_objectGraph];
  sub_10076F64C();
  sub_10076FC1C();
  type metadata accessor for ASDPurchaseHistoryContext(0);
  v44[0] = 1;
  sub_10076F19C();
  sub_10076F60C();
  v21 = *(v3 + 8);
  v21(v5, v2);
  LOBYTE(v44[0]) = 1;
  sub_10076F19C();
  v22 = sub_10076F60C();

  v21(v5, v2);
  v43[0] = v22;
  v43[1] = sub_10000DD38(v22);
  v43[2] = v23;
  sub_100016F40(0, &qword_100944EF0, ACAccountStore_ptr);

  sub_10076FC1C();
  sub_10000A570(v45, v44);
  sub_10000A5D4(&qword_100958D08, &qword_1007A5A68);
  v24 = sub_10076593C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100784500;
  v29 = v28 + v27;
  v30 = *(v25 + 104);
  v30(v29, enum case for PurchasesContentMode.all(_:), v24);
  v30(v29 + v26, enum case for PurchasesContentMode.notOnDevice(_:), v24);
  sub_10076830C();
  swift_allocObject();
  swift_unknownObjectRetain();
  v31 = sub_10076825C();
  v32 = sub_100566734(&qword_100958D10, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for BasePresenter);

  v33 = sub_1006C7080(v20, v31, v32, _swiftEmptyArrayStorage, 0xD000000000000014, 0x80000001007ED800);
  v34 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
  sub_1004346FC(v31, v33);
  v35 = *&v1[v19];
  *&v1[v19] = v36;
  v37 = v36;

  v38 = v37;
  [v38 willMoveToParentViewController:v1];
  [v1 addChildViewController:v38];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_8;
  }

  v39 = result;
  result = [v38 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v40 = result;
  [v39 addSubview:result];

  [v38 didMoveToParentViewController:v1];
  v41 = [v38 title];

  [v1 setTitle:v41];
  v42 = [v38 collectionView];
  [v1 setContentScrollView:v42 forEdge:15];
  swift_unknownObjectRelease();

  return sub_10000CD74(v45);
}

void sub_100565F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_10076FBBC();
  __chkstk_darwin(v5);
  v6 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController;
  v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController];
  sub_10076857C();

  v8 = *&v3[v6];
  *&v3[v6] = 0;

  v9 = [v3 view];
  if (!v9)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  [v9 bounds];

  sub_10076856C();
  v11 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_familyPurchases;
  if (*&v3[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_familyPurchases])
  {
    return;
  }

  v12 = *&v3[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_objectGraph];
  sub_10076F64C();

  sub_10076FC1C();
  sub_10076785C();
  swift_allocObject();
  v13 = sub_1007677CC();
  v14 = sub_100566734(&qword_10095D4F8, 255, &type metadata accessor for FamilyPurchasesPresenter, &protocol conformance descriptor for BasePresenter);

  v15 = sub_1006C7080(v12, v13, v14, _swiftEmptyArrayStorage, 0xD000000000000013, 0x80000001007ED7E0);
  v16 = objc_allocWithZone(type metadata accessor for FamilyPurchasesViewController());
  v17 = sub_100032914(v13, v15);
  v18 = *&v4[v11];
  *&v4[v11] = v17;
  v19 = v17;

  v20 = v19;
  [v20 willMoveToParentViewController:v4];
  [v4 addChildViewController:v20];
  v21 = [v4 view];
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  v23 = [v20 view];
  if (!v23)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v24 = v23;
  [v22 addSubview:v23];

  [v20 didMoveToParentViewController:v4];
  v25 = [v20 title];

  [v4 setTitle:v25];
  v26 = [v20 collectionView];
  [v4 setContentScrollView:v26 forEdge:15];
}

void sub_1005662BC()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  sub_10076DE3C();
  v3 = objc_allocWithZone(sub_10076DE6C());
  v4 = sub_10076DE5C();
  v5 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController];
  sub_10076857C();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    sub_10076856C();
  }

  else
  {
    __break(1u);
  }
}

id sub_100566414()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController];
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

id sub_10056650C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PurchasesLoadingViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100566648(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_loggedInUserPurchases] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_familyPurchases] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_objectGraph] = a2;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_artworkLoader] = v6;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_presenter] = a1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PurchasesLoadingViewController();

  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_100566734(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_1005667DC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  v14 = swift_isaMask;
  v15 = v8 + qword_10095D508;
  *v15 = 0;
  v15[8] = 1;
  *(v8 + qword_10095D510) = 0;
  *(v8 + qword_10095D518) = 0;
  *(v8 + qword_10095D520) = 0;
  *(v8 + qword_10095D528) = 1;
  v16 = type metadata accessor for StackView(0, *((v14 & v13) + 0x50), a7, a8);
  v18.receiver = v8;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
}

void sub_100566960()
{
  if ((v0[qword_10095D508 + 8] & 1) != 0 || *&v0[qword_10095D508] != 3)
  {
    return;
  }

  v1 = sub_100566B38();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_10077158C();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    v5 = 0.0;
    goto LABEL_13;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v4 = 0;
  v5 = 0.0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_10077149C();
    }

    else
    {
      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    ++v4;
    [v6 frame];
    Width = CGRectGetWidth(v13);

    v5 = v5 + Width;
  }

  while (v3 != v4);
LABEL_13:

  [v0 frame];
  if (v5 >= CGRectGetWidth(v14))
  {
    return;
  }

  v9 = sub_100566B38();
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

LABEL_23:
  v10 = sub_10077158C();
LABEL_16:

  if (v10 >= 2)
  {
    v11 = sub_100566B38();
    if (v11 >> 62)
    {
      v12 = sub_10077158C();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      [v0 frame];
      CGRectGetWidth(v15);
    }
  }
}

void *sub_100566B38()
{
  v1 = [v0 subviews];
  sub_1000ACA5C();
  v2 = sub_1007701BC();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_10077149C();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isHidden])
      {
      }

      else
      {
        sub_1007714CC();
        sub_1007714FC();
        sub_10077150C();
        sub_1007714DC();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

void sub_100566CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StackView(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v6.receiver = v4;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, "layoutSubviews");
  sub_100566D64();
  sub_100566F04();
  sub_1005671F8();
}

void sub_100566D1C(void *a1)
{
  v4 = a1;
  sub_100566CB4(v4, v1, v2, v3);
}

void sub_100566D64()
{
  v17 = *&v0[qword_10095D510];
  v1 = sub_100566B38();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_10077158C();
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_10077149C();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v0 frame];
    [v6 sizeThatFits:{v7, v8}];
    v10 = v9;
    v12 = v11;
    if (v0[qword_10095D528] == 1)
    {
      [v0 frame];
      if (v17)
      {
        if (v13 < v10)
        {
          [v0 frame];
          v10 = v15;
        }
      }

      else if (v14 < v12)
      {
        [v0 frame];
        v12 = v16;
      }
    }

    [v6 setFrame:{0.0, 0.0, v10, v12}];
  }

LABEL_16:
}

double sub_100566F04()
{
  v1 = v0;
  v37 = *&v0[qword_10095D510];
  sub_100566960();
  v3 = v2;
  v4 = sub_100566B38();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v7 = 0;
    v36 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v36)
      {
        v10 = sub_10077149C();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = [v1 traitCollection];
      v14 = sub_10077070C();

      v8 = 0.0;
      if (v14)
      {
        [v1 bounds];
        MaxX = CGRectGetMaxX(v39);
        [v11 frame];
        v8 = MaxX - CGRectGetWidth(v40);
      }

      if (v7)
      {
        v16 = [v1 subviews];
        sub_1000ACA5C();
        v17 = sub_1007701BC();

        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = sub_10077149C();
        }

        else
        {
          if (v7 > *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v18 = *(v17 + 8 * v7 + 24);
        }

        v19 = v18;

        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        if (v37)
        {
          v41.origin.x = v21;
          v41.origin.y = v23;
          v41.size.width = v25;
          v41.size.height = v27;
          v8 = v3 + CGRectGetMaxY(v41);
          v9 = 0.0;
          goto LABEL_6;
        }

        v28 = [v1 traitCollection];
        v29 = sub_10077070C();

        v30 = v21;
        v31 = v23;
        v32 = v25;
        v33 = v27;
        if (v29)
        {
          MinX = CGRectGetMinX(*&v30);
          [v11 frame];
          v8 = MinX - (v3 + CGRectGetWidth(v42));
        }

        else
        {
          v8 = v3 + CGRectGetMaxX(*&v30);
        }
      }

      else
      {
        v9 = 0.0;
        if (v37)
        {
          goto LABEL_6;
        }
      }

      v9 = v8;
      v8 = 0.0;
LABEL_6:
      [v11 frame];
      [v11 setFrame:{v9, v8}];

      ++v7;
      if (v12 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:

  return result;
}

void sub_1005671F8()
{
  v1 = v0;
  v2 = *&v0[qword_10095D510];
  v3 = sub_100566B38();
  v4 = v3;
  if (v3 >> 62)
  {
    v5 = sub_10077158C();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_41:

    return;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_41;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = &selRef_initWithTabBarSystemItem_tag_;
    v31 = xmmword_100783DD0;
    while (1)
    {
      v10 = (v4 & 0xC000000000000001) != 0 ? sub_10077149C() : *(v4 + 8 * v6 + 32);
      v11 = v10;
      v12 = *&v1[qword_10095D518];
      if (v12 > 2)
      {
        break;
      }

      if (!v12)
      {
        [v1 bounds];
        if (v2)
        {
          CGRectGetWidth(*&v15);
        }

        else
        {
          CGRectGetHeight(*&v15);
        }

        [v11 v7[134]];
        [v11 setFrame:{v19, v31}];
        goto LABEL_7;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          sub_10000A5D4(&unk_1009434B0, &unk_100785550);
          v13 = swift_allocObject();
          *(v13 + 16) = v31;
          *(v13 + 56) = &type metadata for String;
          *(v13 + 32) = 0xD00000000000002CLL;
          *(v13 + 40) = 0x80000001007ED910;
          sub_10077173C();
        }

        goto LABEL_7;
      }

      if (!v2)
      {
        [v10 v7[134]];
        [v11 setFrame:{v29, v31}];
        goto LABEL_7;
      }

      v25 = [v1 traitCollection];
      v26 = sub_10077070C();

      v9 = 0.0;
      if (v26)
      {
        goto LABEL_5;
      }

LABEL_6:
      v7 = &selRef_initWithTabBarSystemItem_tag_;
      [v11 frame];
      [v11 setFrame:{v9, v32, v34}];
LABEL_7:
      ++v6;

      if (v5 == v6)
      {
        goto LABEL_41;
      }
    }

    if (v12 == 3)
    {
      [v1 bounds];
      if (v2)
      {
        v24 = CGRectGetWidth(*&v20) * 0.5;
        [v11 center];
        [v11 setCenter:v24];
      }

      else
      {
        CGRectGetHeight(*&v20);
        [v11 center];
        [v11 setCenter:?];
      }

      goto LABEL_7;
    }

    if (v12 != 4)
    {
      if (v12 != 5 || v2 != 0)
      {
        goto LABEL_7;
      }

      [v1 bounds];
      CGRectGetHeight(v39);
      [v11 v7[134]];
      CGRectGetHeight(v40);
      [v11 lastBaselineFromBottom];
      goto LABEL_39;
    }

    if (!v2)
    {
      [v1 bounds];
      CGRectGetHeight(v41);
      [v11 v7[134]];
      CGRectGetHeight(v42);
LABEL_39:
      [v11 v7[134]];
      [v11 setFrame:{v30, v33, v35}];
      goto LABEL_7;
    }

    v27 = [v1 traitCollection];
    v28 = sub_10077070C();

    v9 = 0.0;
    if (v28)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v1 bounds];
    Width = CGRectGetWidth(v37);
    [v11 frame];
    v9 = Width - CGRectGetWidth(v38);
    goto LABEL_6;
  }

  __break(1u);
}

void sub_100567614(double a1, double a2, double a3)
{
  v7 = [v3 subviews];
  sub_1000ACA5C();
  v8 = sub_1007701BC();

  if (v8 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    v10 = *&v3[qword_10095D510];
    v11 = sub_100566B38();
    v12 = v11;
    if (v11 >> 62)
    {
      v13 = sub_10077158C();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0.0;
    if (!v13)
    {
      goto LABEL_34;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = sub_10077149C();
    }

    else
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v15 = *(v12 + 32);
    }

    v16 = v15;
    [v15 sizeThatFits:{a1, a2}];
    v19 = v18;
    v20 = v17;
    if (v3[qword_10095D528] == 1)
    {
      if (v17 <= a2)
      {
        v21 = v17;
      }

      else
      {
        v21 = a2;
      }

      if (v19 <= a1)
      {
        v22 = v19;
      }

      else
      {
        v22 = a1;
      }

      if (v10)
      {
        v19 = v22;
      }

      else
      {
        v20 = v21;
      }
    }

    if (*&v3[qword_10095D518] == 5)
    {
      [v16 lastBaselineFromBottom];
      v23 = a1;
      v24 = a2;
      v25 = a3;
      v27 = v26;

      v28 = v20 - v27;
      a3 = v25;
      a2 = v24;
      a1 = v23;
    }

    else
    {

      if (v19 < 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v19;
      }

      v28 = v20;
    }

    if (v28 < 0.0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v28;
    }

    if (v10)
    {
      v30 = v20;
    }

    else
    {
      v30 = v19;
    }

    v31 = v30 + 0.0;
    if (v13 == 1)
    {
LABEL_34:

      return;
    }

    v32 = 5;
    while (1)
    {
      v35 = v32 - 4;
      if ((v12 & 0xC000000000000001) != 0)
      {
        v36 = sub_10077149C();
      }

      else
      {
        if (v35 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v36 = *(v12 + 8 * v32);
      }

      v37 = v36;
      v38 = __OFADD__(v35, 1);
      v39 = v32 - 3;
      if (v38)
      {
        break;
      }

      [v36 sizeThatFits:{a1, a2}];
      v42 = v40;
      v43 = v41;
      if (v3[qword_10095D528] == 1)
      {
        if (v10)
        {
          if (v40 > a1)
          {
            v42 = a1;
          }
        }

        else if (v41 > a2)
        {
          v43 = a2;
        }
      }

      if (*&v3[qword_10095D518] == 5)
      {
        [v37 lastBaselineFromBottom];
        v50 = v31;
        v44 = v14;
        v45 = a1;
        v46 = a2;
        v47 = a3;
        v49 = v48;

        v33 = v43 - v49;
        a3 = v47;
        a2 = v46;
        a1 = v45;
        v14 = v44;
        v31 = v50;
      }

      else
      {

        if (v14 <= v42)
        {
          v14 = v42;
        }

        v33 = v43;
      }

      if (v29 <= v33)
      {
        v29 = v33;
      }

      if (v10)
      {
        v34 = v43;
      }

      else
      {
        v34 = v42;
      }

      if (v34 <= 0.0)
      {
        v31 = v31 + v34;
      }

      else
      {
        v31 = v31 + v34 + a3;
      }

      ++v32;
      if (v39 == v13)
      {
        goto LABEL_34;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }
}

double sub_1005679C4(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_1005679B4(a2, a3);
  v7 = v6;

  return v7;
}

Class sub_100567A18(void *a1)
{
  v1 = a1;
  sub_100567A7C();

  sub_1000ACA5C();
  v2.super.isa = sub_1007701AC().super.isa;

  return v2.super.isa;
}

id sub_100567A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StackView(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100567AF4()
{
  v1 = v0 + qword_10095D508;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + qword_10095D510) = 0;
  *(v0 + qword_10095D518) = 0;
  *(v0 + qword_10095D520) = 0;
  *(v0 + qword_10095D528) = 1;
  sub_10077156C();
  __break(1u);
}

unint64_t sub_100567BAC()
{
  result = qword_10094F058;
  if (!qword_10094F058)
  {
    sub_10076AD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F058);
  }

  return result;
}

void sub_100567C04(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v3 = 0;
    v12 = v1 & 0xC000000000000001;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v12)
      {
        v5 = sub_10077149C();
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v5 items];
      sub_100016F40(0, &qword_100948D90, AMSNotificationSettingsItem_ptr);
      v9 = v1;
      v10 = sub_1007701BC();

      v11 = v10;
      v1 = v9;
      sub_1000F99C4(v11);

      ++v3;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_100567D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10076F2EC();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v39 = a6;
    v40 = a4;
    v11 = swift_allocObject();
    *(v11 + 16) = _swiftEmptyArrayStorage;
    v12 = (v11 + 16);
    v41 = a1;
    v13 = sub_10076AD3C();
    if (v13)
    {
      v14 = v13;
      if (qword_1009412E8 != -1)
      {
        swift_once();
      }

      v15 = sub_10076FD4C();
      sub_10000A61C(v15, qword_1009A2600);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F2DC();
      v48._countAndFlagsBits = 0xD00000000000004DLL;
      v48._object = 0x80000001007EDAC0;
      sub_10076F2CC(v48);
      v45 = sub_10000A5D4(&unk_10094BB60, &unk_100785530);
      aBlock = v14;

      sub_10076F29C();
      sub_1000258C0(&aBlock);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      sub_10076F2CC(v49);
      sub_10076F2FC();
      sub_10076FBCC();

      v16 = [v41 sections];
      sub_100016F40(0, &qword_10095D5C0, AMSNotificationSettingsSection_ptr);
      v17 = sub_1007701BC();

      sub_100568D38(v17, v12, v14);

      swift_bridgeObjectRelease_n();
    }

    else
    {
      if (qword_1009412E8 != -1)
      {
        swift_once();
      }

      v18 = sub_10076FD4C();
      sub_10000A61C(v18, qword_1009A2600);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();

      v19 = [v41 sections];
      sub_100016F40(0, &qword_10095D5C0, AMSNotificationSettingsSection_ptr);
      v20 = sub_1007701BC();

      sub_100567C04(v20);
    }

    v21 = *v12;
    if (*v12 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
    {

      if (!i)
      {
        break;
      }

      v23 = 0;
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
            goto LABEL_30;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        [v24 setEnabled:1];

        ++v23;
        if (v26 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_22:

    v27 = sub_10076147C();
    v28 = objc_allocWithZone(AMSNotificationSettingsTask);
    v29 = sub_10076FF6C();
    v30 = [v28 initWithIdentifier:v29 account:v40 bag:v27];

    swift_unknownObjectRelease();
    sub_100016F40(0, &qword_100948D90, AMSNotificationSettingsItem_ptr);

    isa = sub_1007701AC().super.isa;

    v32 = [v30 updateSettings:isa];

    if (v32)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = v11;
      *(v33 + 24) = v39;
      v46 = sub_1005694EC;
      v47 = v33;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_1005F04D8;
      v45 = &unk_100899EF8;
      v34 = _Block_copy(&aBlock);

      [v32 addFinishBlock:v34];

      _Block_release(v34);
    }

    else
    {
    }
  }

  else
  {
    if (!a2)
    {
      sub_1005693AC();
      swift_allocError();
      *v35 = 1;
    }

    swift_errorRetain();
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v36 = sub_10076FD4C();
    sub_10000A61C(v36, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v50._countAndFlagsBits = 0xD000000000000030;
    v50._object = 0x80000001007EDA30;
    sub_10076F2CC(v50);
    swift_getErrorValue();
    v37 = sub_1007716EC();
    v45 = &type metadata for String;
    aBlock = v37;
    v43 = v38;
    sub_10076F29C();
    sub_1000258C0(&aBlock);
    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    sub_10076F2CC(v51);
    sub_10076F2FC();
    sub_10076FBCC();

    sub_10076FCAC();
  }
}

void sub_1005685C8(id *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = [*a1 items];
  sub_100016F40(0, &qword_100948D90, AMSNotificationSettingsItem_ptr);
  v5 = sub_1007701BC();

  v22 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v16[5] = a2;
    v17 = i;
    v7 = 0;
    v18 = v5 & 0xFFFFFFFFFFFFFF8;
    v19 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v19)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v7 >= *(v18 + 16))
        {
          goto LABEL_15;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      v12 = sub_10076FF9C();
      a2 = v13;

      v21[0] = v12;
      v21[1] = a2;
      __chkstk_darwin(v14);
      v16[2] = v21;
      LOBYTE(v11) = sub_1001A3D8C(sub_100533F84, v16, v20);

      if (v11)
      {
        sub_1007714CC();
        a2 = v22[2];
        sub_1007714FC();
        sub_10077150C();
        sub_1007714DC();
      }

      else
      {
      }

      ++v7;
      if (v10 == v17)
      {
        v15 = v22;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_18:

  sub_1000F99C4(v15);
}

uint64_t sub_1005687F8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10076F50C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 48;
  v12 = sub_10076F2EC();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    v21 = a4;
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v13 = sub_10076FD4C();
    sub_10000A61C(v13, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v24._countAndFlagsBits = 0xD000000000000037;
    v24._object = 0x80000001007EDB40;
    sub_10076F2CC(v24);
    swift_beginAccess();
    v14 = *(a3 + 16);
    v23 = sub_10000A5D4(&qword_100948D98, &qword_10078B6F8);
    v22[0] = v14;

    sub_10076F29C();
    sub_1000258C0(v22);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_10076F2CC(v25);
    sub_10076F2FC();
    sub_10076FBCC();

    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    sub_10076FCBC();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    if (!a2)
    {
      sub_1005693AC();
      swift_allocError();
      *v16 = 2;
    }

    swift_errorRetain();
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v17 = sub_10076FD4C();
    sub_10000A61C(v17, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v26._object = 0x80000001007EDB10;
    v26._countAndFlagsBits = 0xD00000000000002DLL;
    sub_10076F2CC(v26);
    swift_beginAccess();
    v18 = *(a3 + 16);
    v23 = sub_10000A5D4(&qword_100948D98, &qword_10078B6F8);
    v22[0] = v18;

    sub_10076F29C();
    sub_1000258C0(v22);
    v27._countAndFlagsBits = 0x3A726F727245202ELL;
    v27._object = 0xE900000000000020;
    sub_10076F2CC(v27);
    swift_getErrorValue();
    v19 = sub_1007716EC();
    v23 = &type metadata for String;
    v22[0] = v19;
    v22[1] = v20;
    sub_10076F29C();
    sub_1000258C0(v22);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_10076F2CC(v28);
    sub_10076F2FC();
    sub_10076FBCC();

    sub_10076FCAC();
  }
}

void sub_100568D38(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_1005685C8(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100568E38(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076F2EC();
  __chkstk_darwin(v3 - 8);
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v4 = sub_10076FCEC();
  sub_100016F40(0, &qword_100944EF0, ACAccountStore_ptr);
  sub_10076F64C();
  sub_10076FC1C();
  v5 = [aBlock[0] ams_activeiTunesAccount];

  if (v5)
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v6 = sub_10076FD4C();
    sub_10000A61C(v6, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v25._countAndFlagsBits = 0xD00000000000002DLL;
    v25._object = 0x80000001007ED9C0;
    sub_10076F2CC(v25);
    v22 = sub_100016F40(0, &qword_10095D5B8, ACAccount_ptr);
    aBlock[0] = v5;
    v7 = v5;
    sub_10076F29C();
    sub_1000258C0(aBlock);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    sub_10076F2CC(v26);
    sub_10076F2FC();
    sub_10076FBCC();

    sub_10076148C();
    sub_10076FC1C();
    v8 = aBlock[0];
    v9 = v7;
    v10 = sub_10076147C();
    v11 = objc_allocWithZone(AMSNotificationSettingsTask);
    v12 = sub_10076FF6C();
    v13 = [v11 initWithIdentifier:v12 account:v9 bag:v10];

    swift_unknownObjectRelease();
    v14 = [v13 fetchAllSettings];
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = v9;
    v15[4] = v8;
    v15[5] = v4;
    v23 = sub_100569450;
    v24 = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001FA544;
    v22 = &unk_100899E80;
    v16 = _Block_copy(aBlock);
    v17 = v9;

    [v14 addFinishBlock:v16];
    _Block_release(v16);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v18 = sub_10076FD4C();
    sub_10000A61C(v18, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    sub_1005693AC();
    swift_allocError();
    *v19 = 0;
    sub_10076FCAC();
  }

  return v4;
}

unint64_t sub_1005693AC()
{
  result = qword_10095D5B0;
  if (!qword_10095D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D5B0);
  }

  return result;
}

uint64_t sub_100569400()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_10056945C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100569474()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005694AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100569508()
{
  result = qword_10095D5C8;
  if (!qword_10095D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D5C8);
  }

  return result;
}

id sub_100569564(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded] = 0;
  v9 = &v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics] = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_pageGrid;
  v11 = sub_10076C38C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory] = 7;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_mirrorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for RevealingVideoView(0);
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  [v12 setClipsToBounds:1];
  return v12;
}

id sub_10056970C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + qword_10099F2A0) = v1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded];
    sub_10039E1D8(v3);
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    (*((swift_isaMask & *v5) + 0xA0))(v1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded]);
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1005697E4(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_pageGrid;
  swift_beginAccess();
  sub_100395BBC(a1, v1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10003BDD4(v1 + v6, v5);
    (*((swift_isaMask & *v8) + 0x100))(v5);
  }

  return sub_10005AEAC(a1);
}

void sub_10056990C(void *a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong == a1)
    {
    }

    else
    {
      v16 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();
      v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize);
      v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize + 8);
      v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize + 16);
      v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics);
      v12 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_pageGrid;
      swift_beginAccess();
      sub_10003BDD4(v1 + v12, v5);
      v13 = *((swift_isaMask & *v16) + 0x150);
      v14 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory);
      v15 = v16;

      v13(v7, v8, v9, v10, v11, v5, v14);

      sub_10005AEAC(v5);
    }
  }
}

double sub_100569AF0(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for RevealingVideoView(0);
  v13.receiver = v1;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, "willMoveToWindow:", a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_pageGrid;
    v10 = Strong;
    swift_beginAccess();
    sub_10003BDD4(v10 + v9, v5);
    v11 = v10;
    sub_10056A60C(v10, v5);

    sub_10005AEAC(v5);
    swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_100569CD4(__n128 a1)
{
  v2 = sub_10076A75C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v47 - v7;
  v9 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_10076C38C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!*&v1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics] || (v17 = &v1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize], (v1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize + 16] & 1) != 0))
  {

    return;
  }

  v48 = v3;
  v49 = Strong;
  v19 = *v17;
  v18 = v17[1];
  v20 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_pageGrid;
  swift_beginAccess();
  sub_10003BDD4(&v1[v20], v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_10005AEAC(v11);
    return;
  }

  (*(v13 + 32))(v15, v11, v12);
  v21 = v1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory];
  if (v21 == 7)
  {
    v22 = *(v13 + 8);

    v22(v15, v12);
LABEL_13:

    return;
  }

  [v1 bounds];
  v52.origin.x = 0.0;
  v52.origin.y = 0.0;
  v52.size.width = 0.0;
  v52.size.height = 0.0;
  if (CGRectEqualToRect(v51, v52))
  {
    (*(v13 + 8))(v15, v12);
    goto LABEL_13;
  }

  v47 = v1;
  v23.n128_f64[0] = sub_1005B1CD8(v21);
  v24 = v48;
  v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v26 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v21 != 6)
  {
    v26 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v21 != 4)
  {
    v25 = v26;
  }

  (*(v48 + 104))(v5, *v25, v2, v23);
  (*(v24 + 32))(v8, v5, v2);
  v27 = sub_1007701CC();

  (*(v24 + 8))(v8, v2);
  v28 = v47;
  v29 = v47[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded];
  v30 = v49;
  [v28 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = [v28 traitCollection];
  v40 = sub_1006C37A4(v39, v32, v34, v36, v38, v19, v18, v27, v29);
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [v30 setFrame:{v40, v42, v44, v46}];

  (*(v13 + 8))(v15, v12);
}

void sub_10056A1AC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [v0 bounds];
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    MidX = CGRectGetMidX(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    [v0 convertPoint:v14 toCoordinateSpace:{MidX, CGRectGetMidY(v17)}];
    v9 = &v14[qword_1009A2510];
    v10 = *&v14[qword_1009A2510];
    v11 = *&v14[qword_1009A2510 + 8];
    v12 = v14[qword_1009A2510 + 16];
    *v9 = v7;
    v9[1] = v8;
    *(v9 + 16) = 0;
    if ((v12 & 1) != 0 || (v7 == v10 ? (v13 = v8 == v11) : (v13 = 0), !v13))
    {
      sub_1005ED780();
    }
  }
}

void sub_10056A2D0(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_10076481C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_10056AF54(&qword_10094F540, type metadata accessor for TodayCardVideoView, &unk_1007AF120);
    v11 = v10;
    v12 = [v11 superview];
    if (v12)
    {
      v13 = v12;
      sub_1000ACA5C();
      v14 = v3;
      v15 = sub_100770EEC();

      if (v15)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    [v11 removeFromSuperview];
    [v3 addSubview:v11];
LABEL_13:
    v11[qword_10099F2A0] = *(v3 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded);
    sub_10039E1D8(v16);
    v21 = qword_1009A2558;
    swift_beginAccess();
    (*(v6 + 16))(v8, &v11[v21], v5);
    v22 = v11;
    sub_1007647BC();
    sub_1005ECA84(v8);

    [v3 setNeedsLayout];
    return;
  }

  if (a1)
  {
    sub_10056AF54(&qword_10094F540, type metadata accessor for TodayCardVideoView, &unk_1007AF120);
    v17 = [a1 superview];
    if (v17)
    {
      v18 = v17;
      sub_1000ACA5C();
      v19 = v2;
      v20 = sub_100770EEC();

      if (v20)
      {

        [a1 removeFromSuperview];
      }
    }
  }
}

void (*sub_10056A5B8(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100276DCC;
}

void sub_10056A60C(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics];
    if (v9)
    {
      v10 = &a1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize];
      if ((a1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize + 16] & 1) == 0)
      {
        v11 = v3[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory];
        if (v11 != 7)
        {
          v48 = a2;
          v49 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory;
          v50 = v11;
          v12 = *v10;
          v47 = *(v10 + 1);
          v53 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_videoView;
          Strong = swift_unknownObjectWeakLoadStrong();
          v14 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_videoView;
          v15 = swift_unknownObjectWeakLoadStrong();
          v54 = v14;
          v51 = Strong;
          swift_unknownObjectWeakAssign();
          v52 = a1;

          sub_10056A2D0(v15, v16);

          v17 = &v3[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize];
          v18 = v12;
          *v17 = v12;
          v19 = v47;
          *(v17 + 1) = v47;
          v17[16] = 0;
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            (*((swift_isaMask & *v20) + 0xE8))(v18, v19, 0);
          }

          *&v3[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics] = v9;

          v22 = swift_unknownObjectWeakLoadStrong();
          if (v22)
          {
            v23 = v22;
            v24 = *((swift_isaMask & *v22) + 0xD0);
            swift_bridgeObjectRetain_n();
            v24(v9);
          }

          else
          {
          }

          v25 = v48;
          sub_10003BDD4(v48, v8);
          sub_1005697E4(v8);
          v26 = v50;
          v3[v49] = v50;
          v27 = swift_unknownObjectWeakLoadStrong();
          if (v27)
          {
            v28 = v27;
            (*((swift_isaMask & *v27) + 0x118))(v26);
          }

          v29 = swift_unknownObjectWeakLoadStrong();
          if (v29)
          {
            v30 = v29;
            v31 = swift_unknownObjectWeakLoadStrong();
            (*((swift_isaMask & *v30) + 0x150))(v31, *v17, *(v17 + 1), v17[16], v9, v25, v26);
          }

          [v3 setNeedsLayout];

          v32 = swift_unknownObjectWeakLoadStrong();
          if (v32)
          {
            v33 = v32;
            v34 = swift_unknownObjectWeakLoadStrong();
            if (v34)
            {
              v35 = v34;
              v36 = [v34 isHidden];
            }

            else
            {
              v36 = 0;
            }

            [v33 setHidden:v36];
          }

          v37 = swift_unknownObjectWeakLoadStrong();
          if (v37)
          {
            v38 = v37;
            v39 = swift_unknownObjectWeakLoadStrong();
            v40 = v39;
            if (v39)
            {
              v38[qword_10099F298] = *(v39 + qword_10099F298);
              sub_10039DEFC();
              v42 = qword_10099F2A0;
              v43 = v40[qword_10099F2A0];
            }

            else
            {
              v38[qword_10099F298] = 7;
              sub_10039DEFC();
              v43 = 0;
              v42 = qword_10099F2A0;
            }

            v38[v42] = v43;
            sub_10039E1D8(v41);
          }

          v44 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakAssign();
          v45 = v52;
          sub_10056A2D0(v44, v46);
        }
      }
    }
  }
}

id sub_10056AA58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingVideoView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingVideoView(uint64_t a1)
{
  result = qword_10095D618;
  if (!qword_10095D618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10056AB60(uint64_t a1)
{
  sub_100276FE0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10056AC40(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(Strong, v2);
}

uint64_t (*sub_10056ACB0(uint64_t **a1))()
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
  v2[4] = sub_10056A5B8(v2);
  return sub_10001D41C;
}

uint64_t sub_10056AD20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10056AD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10056ADE0(uint64_t *a1, uint64_t a2))()
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
  return sub_100019A4C;
}

uint64_t sub_10056AF54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10056AF9C()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded) = 0;
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_pageGrid;
  v3 = sub_10076C38C();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_mirrorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10056B108(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v49 = a4;
  v51 = a3;
  v7 = sub_10076F50C();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10000A5D4(&unk_100958FE0, qword_1007A5B10);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v37 - v9;
  v10 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v44 = &v37 - v11;
  v52 = *a1;
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v12 = sub_10076FD4C();
  v54 = sub_10000A61C(v12, qword_1009A2600);
  v13 = sub_10000A5D4(&unk_100942A60, &unk_100784760);
  v14 = *(*(sub_10076F33C() - 8) + 72);
  v40 = v13;
  *(swift_allocObject() + 16) = xmmword_1007844F0;
  sub_10076F27C();
  v38 = sub_10075F71C();
  v56 = v38;
  v55[0] = a2;

  sub_10076F32C();
  sub_1000258C0(v55);
  sub_10076F27C();
  v15 = sub_10076FBBC();
  v56 = v15;
  v16 = sub_10000DB7C(v55);
  (*(*(v15 - 8) + 16))(v16, v51, v15);
  v39 = 3 * v14;
  sub_10076F32C();
  sub_1000258C0(v55);
  v51 = a2;
  sub_10076F27C();
  v56 = sub_100016F40(0, &qword_10095D668, AMSURLResult_ptr);
  v55[0] = v52;
  v17 = v52;
  sub_10076F32C();
  sub_1000258C0(v55);
  sub_10076FBDC();

  if ([v17 responseStatusCode] - 200 > 0x63)
  {
    *(swift_allocObject() + 16) = xmmword_100788B20;
    sub_10076F27C();
    v56 = v38;
    v55[0] = v51;

    sub_10076F32C();
    sub_1000258C0(v55);
    sub_10076F27C();
    v29 = [v17 responseStatusCode];
    v56 = &type metadata for Int;
    v55[0] = v29;
    sub_10076F32C();
    sub_1000258C0(v55);
    sub_10076FBEC();

    v30 = sub_10075F6DC();
    if (v30)
    {
      v31 = v30;
      sub_10076F64C();
      v32 = v44;
      v33 = v47;
      sub_10076FC1C();
      v56 = sub_10076B90C();
      v57 = sub_10056C2DC(&qword_10095D660, &type metadata accessor for Action);
      v55[0] = v31;
      v34 = v48;
      v35 = v45;
      v36 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      sub_10076F6CC();

      (*(v34 + 8))(v35, v36);
      (*(v46 + 8))(v32, v33);
      sub_10000CD74(v55);
    }

    sub_10056C330();
    swift_allocError();
    sub_10076FCAC();
  }

  else
  {
    v18 = sub_10075F6EC();
    if (v18)
    {
      v19 = v18;
      sub_10076F64C();
      v20 = v44;
      v21 = v47;
      sub_10076FC1C();
      v56 = sub_10076B90C();
      v57 = sub_10056C2DC(&qword_10095D660, &type metadata accessor for Action);
      v55[0] = v19;
      v22 = v48;
      v23 = v45;
      v24 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      sub_10076F6CC();

      (*(v22 + 8))(v23, v24);
      (*(v46 + 8))(v20, v21);
      sub_10000CD74(v55);
    }

    v26 = v41;
    v25 = v42;
    v27 = v43;
    (*(v42 + 104))(v41, enum case for ActionOutcome.performed(_:), v43);
    sub_10076FCBC();
    return (*(v25 + 8))(v26, v27);
  }
}

uint64_t sub_10056B8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v24 = a3;
  v6 = sub_10000A5D4(&unk_100958FE0, qword_1007A5B10);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v23 = &v21 - v7;
  v8 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v11 = sub_10076FD4C();
  v27 = sub_10000A61C(v11, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100788B20;
  sub_10076F27C();
  v31 = sub_10075F71C();
  v30[0] = a2;

  sub_10076F32C();
  sub_1000258C0(v30);
  sub_10076F27C();
  v28 = a1;
  swift_getErrorValue();
  v12 = v33;
  v13 = v34;
  v31 = v34;
  v14 = sub_10000DB7C(v30);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  sub_10076F32C();
  sub_1000258C0(v30);
  sub_10076FBEC();

  v15 = sub_10075F6DC();
  if (v15)
  {
    v16 = v15;
    sub_10076F64C();
    sub_10076FC1C();
    v31 = sub_10076B90C();
    v32 = sub_10056C2DC(&qword_10095D660, &type metadata accessor for Action);
    v30[0] = v16;
    v18 = v25;
    v17 = v26;
    v19 = v23;
    (*(v25 + 104))(v23, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v26);

    sub_10076F6CC();

    (*(v18 + 8))(v19, v17);
    (*(v22 + 8))(v10, v8);
    sub_10000CD74(v30);
  }

  return sub_10076FCAC();
}

uint64_t sub_10056BD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076FBBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v31 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v26 - v8;
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v32 = sub_10076FCEC();
  sub_100016F40(0, &unk_10095D650, AMSURLSession_ptr);
  sub_10076F64C();
  sub_10076FC1C();
  v10 = v33[0];
  v29 = v4;
  v30 = v9;
  sub_10076FC1C();
  sub_100016F40(0, &qword_100942C80, AMSProcessInfo_ptr);
  sub_10076FC1C();
  v11 = v33[0];
  sub_10076148C();
  sub_10076FC1C();
  v12 = v33[0];
  sub_10000A5D4(&qword_1009576F0, &qword_1007AB980);
  sub_10076FC1C();
  v13 = v33[0];
  if (sub_10075F6FC())
  {
    swift_unknownObjectRetain();
  }

  v26[2] = v13;
  v27 = v11;
  v14 = v30;
  v28 = v12;
  v26[1] = sub_10075F70C();
  swift_unknownObjectRelease();
  v15 = v31;
  v16 = v29;
  (*(v5 + 16))(v31, v14, v29);
  v17 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26[0] = v10;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  (*(v5 + 32))(v20 + v17, v15, v16);
  *(v20 + v18) = a2;
  v21 = v32;
  *(v20 + v19) = v32;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = v21;
  v23 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v24 = sub_10077068C();
  v33[3] = v23;
  v33[4] = &protocol witness table for OS_dispatch_queue;
  v33[0] = v24;
  sub_10076FC6C();
  swift_unknownObjectRelease();

  (*(v5 + 8))(v14, v16);
  sub_10000CD74(v33);
  return v21;
}

uint64_t sub_10056C0EC()
{
  v1 = sub_10076FBBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10056C1DC(id *a1)
{
  v3 = *(sub_10076FBBC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_10056B108(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_10056C288()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10056C2DC(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_10056C330()
{
  result = qword_10095D670;
  if (!qword_10095D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D670);
  }

  return result;
}

unint64_t sub_10056C398()
{
  result = qword_10095D678;
  if (!qword_10095D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D678);
  }

  return result;
}

void sub_10056C530(void *a1)
{
  v2 = v1;
  v38 = [a1 containerView];
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 viewForKey:UITransitionContextToViewKey];
    if (v6)
    {
      v7 = v6;
      [a1 finalFrameForViewController:v5];
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
      v12 = CGRectGetWidth(v46) * 0.2;
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v13 = CGRectGetHeight(v47) * 0.2;
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v49 = CGRectInset(v48, v12, v13);
      v14 = &v2[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionPresentAnimation_originRect];
      if (v2[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionPresentAnimation_originRect + 32])
      {
        v15 = v49.origin.x;
        v16 = v49.origin.y;
        v17 = v49.size.width;
        v18 = v49.size.height;
      }

      else
      {
        v17 = v14[2];
        v18 = v14[3];
        v15 = *v14;
        v16 = v14[1];
      }

      [v38 addSubview:v7];
      [v7 setFrame:{v15, v16, v17, v18}];
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      *(v20 + 16) = v7;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_1004FD078;
      *(v21 + 24) = v20;
      v43 = sub_1000349FC;
      v44 = v21;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_1001C5148;
      v42 = &unk_10089A1A0;
      v22 = _Block_copy(&aBlock);
      v23 = v7;

      [v19 performWithoutAnimation:v22];
      _Block_release(v22);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v25 = [swift_unknownObjectRetain() containerView];
        v26 = [v25 traitCollection];

        LOBYTE(v25) = sub_1007706EC();
        swift_unknownObjectRelease();
        if (v25)
        {
          v27 = 0.62;
        }

        else
        {
          v27 = 0.61;
        }

        v28 = [a1 containerView];
        v29 = [v28 traitCollection];

        LOBYTE(v28) = sub_1007706EC();
        if (v28)
        {
          v30 = 0.8;
        }

        else
        {
          v30 = 0.84;
        }

        v31 = swift_allocObject();
        *(v31 + 2) = v2;
        *(v31 + 3) = v23;
        v31[4] = x;
        v31[5] = y;
        v31[6] = width;
        v31[7] = height;
        v43 = sub_10056CFF4;
        v44 = v31;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_10009AEDC;
        v42 = &unk_10089A1F0;
        v32 = _Block_copy(&aBlock);
        v33 = v23;
        v34 = v2;

        v35 = swift_allocObject();
        *(v35 + 16) = a1;
        *(v35 + 24) = v34;
        v43 = sub_10056D104;
        v44 = v35;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_1000513F0;
        v42 = &unk_10089A240;
        v36 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v37 = v34;

        [v19 animateWithDuration:129 delay:v32 usingSpringWithDamping:v36 initialSpringVelocity:v27 options:0.0 animations:v30 completion:1.0];

        _Block_release(v36);
        _Block_release(v32);
      }

      return;
    }
  }
}

void sub_10056CA7C(void *a1)
{
  v2 = v1;
  v30 = [a1 containerView];
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 viewForKey:UITransitionContextToViewKey];
    if (v6)
    {
      v7 = v6;
      [a1 finalFrameForViewController:v5];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v30 addSubview:v7];
      [v7 setFrame:{v9, v11, v13, v15}];
      [v7 layoutIfNeeded];
      [v7 setAlpha:0.0];
      v16 = [swift_unknownObjectRetain() containerView];
      v17 = [v16 traitCollection];

      LOBYTE(v16) = sub_1007706EC();
      swift_unknownObjectRelease();
      if (v16)
      {
        v18 = 0.62;
      }

      else
      {
        v18 = 0.61;
      }

      v19 = [a1 containerView];
      v20 = [v19 traitCollection];

      LOBYTE(v19) = sub_1007706EC();
      if (v19)
      {
        v21 = 0.8;
      }

      else
      {
        v21 = 0.84;
      }

      v22 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = v2;
      *(v23 + 24) = v7;
      v35 = sub_10056CF04;
      v36 = v23;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_10009AEDC;
      v34 = &unk_10089A0D8;
      v24 = _Block_copy(&aBlock);
      v25 = v2;
      v26 = v7;

      v27 = swift_allocObject();
      *(v27 + 16) = a1;
      *(v27 + 24) = v25;
      v35 = sub_10056CF68;
      v36 = v27;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_1000513F0;
      v34 = &unk_10089A128;
      v28 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v29 = v25;

      [v22 animateWithDuration:129 delay:v24 usingSpringWithDamping:v28 initialSpringVelocity:v18 options:0.0 animations:v21 completion:1.0];

      _Block_release(v28);
      _Block_release(v24);
      return;
    }
  }
}

id sub_10056CE6C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayTransitionPresentAnimation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10056CEC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10056CF04()
{
  v1 = *(v0 + 24);
  sub_1000730D8(1);

  return [v1 setAlpha:1.0];
}

double sub_10056CF50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10056CF6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10056CFB4()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10056CFF4()
{
  v1 = *(v0 + 3);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  sub_1000730D8(1);

  return [v1 setFrame:{v2, v3, v4, v5}];
}

uint64_t sub_10056D068()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10056D108(char *a1)
{
  v3 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v3 - 8);
  v5 = v55 - v4;
  v6 = sub_10076D3DC();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v66 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v55 - v10;
  if (qword_100940888 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v12 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
    sub_10000A61C(v12, qword_10095D708);
    v71 = v1;
    v13 = v1;
    sub_10075FDCC();

    v14 = *&v13[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel];
    v15 = v7[2];
    v65 = v7 + 2;
    v63 = v15;
    (v15)(v5, v11, v6);
    v16 = v7[7];
    v64 = v7 + 7;
    v62 = v16;
    (v16)(v5, 0, 1, v6);
    v67 = v5;
    sub_1007625DC();
    if (qword_100940870 != -1)
    {
      swift_once();
    }

    v17 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    v18 = sub_10000A61C(v17, qword_10095D6C0);
    v70 = v13;
    v19 = v13;
    v61 = v18;
    sub_10075FDCC();

    [v14 setTextAlignment:v71];
    sub_10076152C();
    v56 = v11;
    v57 = v7;
    if (v20)
    {
      v21 = sub_10076FF6C();
    }

    else
    {
      v21 = 0;
    }

    [v14 setText:v21];

    v22 = *&v19[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView];
    v23 = sub_10076150C();
    sub_10073A548(v23);

    if (qword_100940880 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v12, qword_10095D6F0);
    v71 = v19;
    v24 = v19;
    v25 = v66;
    sub_10075FDCC();

    v26 = *&v24[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_textLabel];
    v27 = v67;
    (v63)(v67, v25, v6);
    (v62)(v27, 0, 1, v6);
    sub_1007625DC();
    v70 = v24;
    v28 = v24;
    sub_10075FDCC();

    [v26 setTextAlignment:v71];
    sub_10076151C();
    if (v29)
    {
      v30 = sub_10076FF6C();
    }

    else
    {
      v30 = 0;
    }

    [v26 setText:v30];

    sub_10076157C();
    sub_10076155C();
    v31 = sub_1007701EC();

    if ((v31 & 1) != 0 && (v32 = [v28 traitCollection], v33 = sub_10077071C(), v32, (v33 & 1) == 0))
    {
      v35 = 4;
      v34 = 1;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    [v26 setNumberOfLines:v34];
    [v26 setLineBreakMode:v35];
    v36 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
    swift_beginAccess();
    v59 = v36;
    v60 = a1;
    v1 = *(v28 + v36);
    v58 = v6;
    v55[1] = v17;
    if (v1 >> 62)
    {
      v37 = sub_10077158C();
    }

    else
    {
      v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = &off_100911000;
    if (v37)
    {
      v11 = 0;
      v5 = (v1 & 0xC000000000000001);
      v6 = (v1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v5)
        {
          v38 = sub_10077149C();
        }

        else
        {
          if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v38 = *(v1 + 8 * v11 + 32);
        }

        v39 = v38;
        a1 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_49;
        }

        [v38 removeFromSuperview];

        ++v11;
      }

      while (a1 != v37);
    }

    v5 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
    swift_beginAccess();
    v1 = *&v5[v28];
    if (v1 >> 62)
    {
      v40 = sub_10077158C();
    }

    else
    {
      v40 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v40)
    {
      v11 = 0;
      v6 = (v1 & 0xC000000000000001);
      a1 = (v1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v6)
        {
          v41 = sub_10077149C();
        }

        else
        {
          if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v41 = *(v1 + 8 * v11 + 32);
        }

        v42 = v41;
        v43 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_51;
        }

        [v41 removeFromSuperview];

        ++v11;
      }

      while (v43 != v40);
    }

    v6 = _swiftEmptyArrayStorage;
    *(v28 + v59) = _swiftEmptyArrayStorage;

    *&v5[v28] = _swiftEmptyArrayStorage;

    v44 = sub_10076157C();
    v1 = v44;
    if (!(v44 >> 62))
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a1 = v67;
      if (!v45)
      {
        break;
      }

      goto LABEL_40;
    }

    v45 = sub_10077158C();
    a1 = v67;
    if (!v45)
    {
      break;
    }

LABEL_40:
    v11 = 0;
    v7 = (v1 & 0xC000000000000001);
    v5 = (v1 & 0xFFFFFFFFFFFFFF8);
    while (v7)
    {
      v46 = sub_10077149C();
      v6 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_48;
      }

LABEL_44:
      v69 = v46;
      sub_1005704C0(v47, &v69, v28);

      ++v11;
      if (v6 == v45)
      {
        goto LABEL_58;
      }
    }

    if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    v46 = *(v1 + 8 * v11 + 32);

    v6 = (v11 + 1);
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_44;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

LABEL_58:

  v48 = *(v28 + OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v49 = v66;
  v50 = v58;
  (v63)(a1, v66, v58);
  (v62)(a1, 0, 1, v50);
  sub_1007625DC();
  v68[0] = v28;
  v51 = v28;
  sub_10075FDCC();

  [v48 setTextAlignment:v69];
  v52 = sub_10056F98C(v60, v51);
  [v48 setAttributedText:v52];

  [v51 setNeedsLayout];
  v53 = v57[1];
  (v53)(v49, v50);
  return (v53)(v56, v50);
}

uint64_t sub_10056D990()
{
  v0 = sub_1007671EC();
  sub_10000DB18(v0, qword_1009A0818);
  sub_10000A61C(v0, qword_1009A0818);
  return sub_1007671DC();
}

uint64_t sub_10056DA64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v5, a2);
  sub_10000A61C(v5, a2);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

double sub_10056DB08()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000DB18(v7, qword_10095D6F0);
  sub_10000A61C(v7, qword_10095D6F0);
  if (qword_100940C28 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A1270);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940C20 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A1258);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FDEC();
  return result;
}

double sub_10056DCE8()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000DB18(v7, qword_10095D708);
  sub_10000A61C(v7, qword_10095D708);
  if (qword_100940C38 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A12A0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940C30 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A1288);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FDEC();
  return result;
}

char *sub_10056DEC8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_leadingPairLabels] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_trailingPairLabels] = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView(0);
  *&v4[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_textLabel] = v12;
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel] = v13;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView]];
  v19 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel;
  [*&v18[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel] setNumberOfLines:0];
  v20 = qword_100940870;
  v21 = *&v18[v19];
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000A61C(v22, qword_10095D6C0);
  v23 = v18;
  sub_10075FDCC();

  [v21 setTextAlignment:{v31, v18}];
  [v23 addSubview:*&v18[v19]];
  v24 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_textLabel;
  [*&v23[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_textLabel] setNumberOfLines:0];
  v25 = *&v23[v24];
  v26 = v23;
  v27 = v25;
  sub_10075FDCC();

  [v27 setTextAlignment:{v31, v23}];
  [v26 addSubview:*&v23[v24]];
  v28 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel;
  [*&v26[OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel] setNumberOfLines:0];
  v29 = *&v26[v28];
  sub_10075FDCC();

  [v29 setTextAlignment:{v31, v26}];
  [v26 addSubview:*&v26[v28]];

  return v26;
}

uint64_t sub_10056E288()
{
  v1 = sub_1007671EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100940868 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v1, qword_1009A0818);
  (*(v2 + 16))(v4, v5, v1);
  v6 = *(v0 + OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel);
  v7 = sub_1007626BC();
  v29 = v7;
  v30 = &protocol witness table for UILabel;
  v28 = v6;
  v8 = *(v0 + OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView);
  v26 = type metadata accessor for AnnotationImagesView(0);
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UILabel;
  v25 = v8;
  v9 = *(v0 + OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_textLabel);
  v10 = *(v0 + OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v23 = v7;
  v21 = &protocol witness table for UILabel;
  v22 = v9;
  v20 = v7;
  v19 = v10;
  swift_beginAccess();
  v11 = v6;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  sub_10016E9B8(v15);

  swift_beginAccess();

  sub_10016E9B8(v16);

  return sub_1007671FC();
}

void *sub_10056E7B0(void *a1, uint64_t a2, void (*a3)(uint64_t *, void, uint64_t), double a4, double a5)
{
  v120 = a3;
  v117 = a2;
  v103 = sub_1007671EC();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v116 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10076720C();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076997C();
  v119 = *(v10 - 8);
  __chkstk_darwin(v10);
  v106 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v105 = &v99 - v13;
  __chkstk_darwin(v14);
  v104 = &v99 - v15;
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v109 = sub_10076D3DC();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v118 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v99 - v21;
  if (qword_100940880 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000A61C(v23, qword_10095D6F0);
  v131 = a1;
  sub_10075FDCC();
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  ObjectType = swift_getObjectType();
  v25 = [a1 traitCollection];
  v107 = v22;
  v126 = sub_100770B3C();

  if (qword_100940888 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v23, qword_10095D708);
  v131 = a1;
  sub_10075FDCC();
  v26 = [a1 traitCollection];
  v100 = sub_100770B3C();

  v27 = v120;
  v28 = sub_10076150C();
  sub_10073BE2C(v28, a1, a4, a5);

  v101 = sub_10076DDDC();
  swift_allocObject();
  v29 = sub_10076DDAC();
  sub_10076150C();
  sub_10076C02C();
  sub_1007701EC();

  sub_10076DD8C();
  v113 = ObjectType;
  v125 = sub_10056F8FC(v30, v27, a1);
  v31 = sub_10076157C();
  if (v31 >> 62)
  {
    v72 = v31;
    v32 = sub_10077158C();
    v31 = v72;
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v127 = v10;
  v115 = a1;
  v114 = v29;
  if (v32)
  {
    v33 = v31;
    v130[0] = _swiftEmptyArrayStorage;
    result = sub_1004BBD4C(0, v32 & ~(v32 >> 63), 0);
    if (v32 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v35 = 0;
    v36 = v130[0];
    v123 = (v33 & 0xC000000000000001);
    LODWORD(v122) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v37 = (v119 + 8);
    v124 = v33;
    v38 = v32;
    do
    {
      if (v123)
      {
        sub_10077149C();
      }

      else
      {
      }

      sub_10076153C();
      v39 = sub_10076C04C();
      v132 = v39;
      v133 = sub_100570670(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v40 = sub_10000DB7C(&v131);
      (*(*(v39 - 8) + 104))(v40, v122, v39);
      v41 = v126;
      sub_10076C90C();
      sub_10000CD74(&v131);
      sub_10076996C();
      sub_10076994C();

      (*v37)(v18, v127);
      v130[0] = v36;
      v43 = *(v36 + 16);
      v42 = *(v36 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1004BBD4C((v42 > 1), v43 + 1, 1);
      }

      ++v35;
      v44 = v132;
      v45 = v133;
      v46 = sub_10008B8A4(&v131, v132);
      v47 = __chkstk_darwin(v46);
      v49 = &v99 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v50 + 16))(v49, v47);
      sub_1005700A8(v43, v49, v130, v44, v45);
      sub_10000CD74(&v131);
      v36 = v130[0];
    }

    while (v38 != v35);

    v51 = v119;
    v27 = v120;
  }

  else
  {

    v51 = v119;
  }

  v52 = sub_10076157C();
  if (v52 >> 62)
  {
    v73 = v52;
    v53 = sub_10077158C();
    v52 = v73;
    if (v53)
    {
LABEL_20:
      v54 = v52;
      v130[0] = _swiftEmptyArrayStorage;
      result = sub_1004BBD4C(0, v53 & ~(v53 >> 63), 0);
      if ((v53 & 0x8000000000000000) == 0)
      {
        v123 = v18;
        v55 = 0;
        v56 = v130[0];
        v122 = v54 & 0xC000000000000001;
        v121 = enum case for Feature.measurement_with_labelplaceholder(_:);
        v57 = (v51 + 8);
        v124 = v54;
        do
        {
          if (v122)
          {
            sub_10077149C();
          }

          else
          {
          }

          sub_10076154C();
          v58 = sub_10076C04C();
          v132 = v58;
          v133 = sub_100570670(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v59 = sub_10000DB7C(&v131);
          (*(*(v58 - 8) + 104))(v59, v121, v58);
          v60 = v126;
          sub_10076C90C();
          sub_10000CD74(&v131);
          v61 = v123;
          sub_10076996C();
          sub_10076994C();

          (*v57)(v61, v127);
          v130[0] = v56;
          v63 = *(v56 + 16);
          v62 = *(v56 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_1004BBD4C((v62 > 1), v63 + 1, 1);
          }

          ++v55;
          v64 = v132;
          v65 = v133;
          v66 = sub_10008B8A4(&v131, v132);
          v67 = __chkstk_darwin(v66);
          v69 = &v99 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v70 + 16))(v69, v67);
          sub_1005700A8(v63, v69, v130, v64, v65);
          sub_10000CD74(&v131);
          v56 = v130[0];
        }

        while (v53 != v55);

        v71 = v116;
        v27 = v120;
        goto LABEL_32;
      }

LABEL_38:
      __break(1u);
      return result;
    }
  }

  else
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
      goto LABEL_20;
    }
  }

  v71 = v116;
LABEL_32:
  v122 = sub_10056F98C(v27, v115);
  if (qword_100940868 != -1)
  {
    swift_once();
  }

  v74 = v103;
  v75 = sub_10000A61C(v103, qword_1009A0818);
  (*(v102 + 16))(v71, v75, v74);
  sub_10076152C();
  v76 = sub_10076C04C();
  v132 = v76;
  v124 = sub_100570670(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v133 = v124;
  v77 = sub_10000DB7C(&v131);
  v78 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v79 = *(*(v76 - 8) + 104);
  v79(v77, enum case for Feature.measurement_with_labelplaceholder(_:), v76);
  v80 = v100;
  sub_10076C90C();
  sub_10000CD74(&v131);
  v81 = v104;
  v123 = v80;
  sub_10076996C();
  sub_10076994C();
  v82 = *(v119 + 8);
  v83 = v81;
  v84 = v127;
  v82(v83, v127);
  v130[3] = v101;
  v130[4] = &protocol witness table for LayoutViewPlaceholder;
  v130[0] = v114;

  sub_10076151C();
  v119 = v85;
  v129[3] = v76;
  v129[4] = v124;
  v86 = sub_10000DB7C(v129);
  v121 = v78;
  v87 = v78;
  v88 = v82;
  v120 = v79;
  v79(v86, v87, v76);
  v89 = v126;
  sub_10076C90C();
  sub_10000CD74(v129);
  v90 = v105;
  sub_10076996C();
  sub_10076994C();
  v88(v90, v84);
  v91 = v122;
  if (!v122)
  {
    [objc_allocWithZone(NSAttributedString) init];
  }

  v128[3] = v76;
  v128[4] = v124;
  v92 = sub_10000DB7C(v128);
  v120(v92, v121, v76);
  v93 = v91;
  v94 = v89;
  sub_10076C90C();
  sub_10000CD74(v128);
  v95 = v106;
  sub_10076993C();
  sub_10076994C();
  v88(v95, v127);
  v96 = v110;
  sub_1007671FC();
  sub_1007671BC();

  (*(v111 + 8))(v96, v112);
  v97 = *(v108 + 8);
  v98 = v109;
  v97(v118, v109);
  return (v97)(v107, v98);
}

uint64_t sub_10056F8FC(__n128 a1, uint64_t a2, void *a3)
{
  sub_10076157C();
  sub_10076155C();
  v4 = sub_1007701EC();

  if (v4)
  {
    v5 = [a3 traitCollection];
    v6 = sub_10077071C();

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id sub_10056F98C(uint64_t a1, void *a2)
{
  v3 = sub_10075DE9C();
  v45 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10077164C();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D9AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076156C();
  if (!v16)
  {
    return 0;
  }

  v40 = v15;
  v39 = v3;
  v41 = v16;
  v38[1] = a2;
  v17 = [a2 traitCollection];
  v18 = sub_10077070C();

  if (v18)
  {
    v50[0] = v40;
    v50[1] = v41;
    v48 = 161644770;
    v49 = 0xA400000000000000;
    v46 = 0x208F80E2A280E2;
    v47 = 0xA700000000000000;
    sub_10002564C();
    sub_10077121C();

    v19 = objc_allocWithZone(NSAttributedString);
    v20 = sub_10076FF6C();

    v21 = [v19 initWithString:v20];
  }

  else
  {
    if (qword_100940C28 != -1)
    {
      swift_once();
    }

    v22 = sub_10076D3DC();
    v23 = sub_10000A61C(v22, qword_1009A1270);
    (*(*(v22 - 8) + 16))(v10, v23, v22);
    (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
    v50[3] = v7;
    v50[4] = &protocol witness table for FontSource;
    v24 = sub_10000DB7C(v50);
    (*(v8 + 16))(v24, v10, v7);
    sub_10076D9BC();
    (*(v8 + 8))(v10, v7);
    sub_10076D17C();
    sub_10076D40C();
    v26 = v25;
    (*(v42 + 8))(v6, v43);
    (*(v12 + 8))(v14, v11);
    v27 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v27 setFirstLineHeadIndent:0.0];
    [v27 setHeadIndent:v26];
    [v27 setDefaultTabInterval:v26];
    sub_100016F40(0, &unk_10095D780, NSTextTab_ptr);
    isa = sub_1007701AC().super.isa;
    [v27 setTabStops:isa];

    [v27 setParagraphSpacing:0.0];
    v29 = v44;
    sub_10075DE6C();
    sub_10075DE1C();
    v31 = v30;
    (*(v45 + 8))(v29, v39);
    [v27 setLineHeightMultiple:v31];
    sub_10000A5D4(&unk_10094E7E0, qword_100785360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = NSParagraphStyleAttributeName;
    *(inited + 64) = sub_100016F40(0, &unk_10095D790, NSMutableParagraphStyle_ptr);
    *(inited + 40) = v27;
    v33 = NSParagraphStyleAttributeName;
    v34 = v27;
    sub_1000FC5F4(inited);
    swift_setDeallocating();
    sub_1001E4F90(inited + 32);
    v35 = objc_allocWithZone(NSAttributedString);
    v36 = sub_10076FF6C();

    type metadata accessor for Key(0);
    sub_100570670(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
    v20 = sub_10076FE3C().super.isa;

    v21 = [v35 initWithString:v36 attributes:v20];
  }

  return v21;
}

uint64_t sub_1005700A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10000DB7C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10003F19C(&v12, v10 + 40 * a1 + 32);
}

id sub_100570140(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_10076D3DC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a4 traitCollection];
  v15 = sub_10077071C();

  if (qword_100940880 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000A61C(v16, qword_10095D6F0);
  v26 = a4;
  sub_10075FDCC();
  if ((v15 | a3))
  {
    if (qword_100940870 != -1)
    {
      swift_once();
    }

    v17 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    v18 = qword_10095D6C0;
  }

  else
  {
    if (qword_100940878 != -1)
    {
      swift_once();
    }

    v17 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    v18 = qword_10095D6D8;
  }

  sub_10000A61C(v17, v18);
  v25 = a4;
  sub_10075FDCC();
  v19 = v26;
  sub_1007626BC();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v10 + 16))(v8, v13, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1007625DC();
  v21 = v20;
  [v21 setNumberOfLines:(v15 & 1) == 0];
  if (v15)
  {
    v22 = 0;
  }

  else
  {
    v22 = 4;
  }

  [v21 setLineBreakMode:v22];

  [v21 setTextAlignment:v19];
  v23 = sub_10076FF6C();
  [v21 setText:v23];

  (*(v10 + 8))(v13, v9);
  return v21;
}

void sub_1005704C0(__n128 a1, uint64_t a2, char *a3)
{
  v4 = sub_10076153C();
  v6 = sub_100570140(v4, v5, 1, a3);

  v7 = sub_10076154C();
  v9 = sub_100570140(v7, v8, 1, a3);

  v10 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
  swift_beginAccess();
  v11 = v6;
  sub_10077019C();
  if (*((*&a3[v10] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a3[v10] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  swift_endAccess();
  v12 = OBJC_IVAR____TtCC20ProductPageExtension28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
  swift_beginAccess();
  v13 = v9;
  sub_10077019C();
  if (*((*&a3[v12] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a3[v12] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  swift_endAccess();
  [a3 addSubview:v11];
  [a3 addSubview:v13];
}

uint64_t sub_100570670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005706B8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v55 = sub_100763BBC();
  v4 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_100949710, "fc\a");
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v51 - v20;
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  Main = JUScreenClassGetMain();
  if (a1)
  {
    if (Main == 1)
    {
      if (qword_10093FCC0 != -1)
      {
        swift_once();
      }

      v26 = qword_10099E0F0;
    }

    else
    {
      if (qword_10093FCB8 != -1)
      {
        swift_once();
      }

      v26 = qword_10099E0D8;
    }

    v28 = sub_10000A61C(v15, v26);
    sub_10011BA50(v28, v24, v29);
    if (qword_10093FCC8 != -1)
    {
      swift_once();
    }

    v30 = sub_10000A61C(v15, qword_10099E108);
    sub_10011BA50(v30, v14, v31);
    v32 = 0;
  }

  else
  {
    if (Main == 1)
    {
      if (qword_10093FCB0 != -1)
      {
        swift_once();
      }

      v27 = qword_10099E0C0;
    }

    else
    {
      if (qword_10093FCA8 != -1)
      {
        swift_once();
      }

      v27 = qword_10099E0A8;
    }

    v33 = sub_10000A61C(v15, v27);
    sub_10011BA50(v33, v24, v34);
    v32 = 1;
  }

  (*(v16 + 56))(v14, v32, 1, v15);
  if (qword_10093FC28 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A61C(v15, qword_10099DF28);
  v36 = v21;
  sub_10011BA50(v35, v21, v37);
  sub_10011BA50(v24, v18, v38);
  sub_1005726AC(v14, v11);
  v39 = sub_100763BAC();
  v40 = *(v39 - 8);
  v52 = v11;
  v53 = v8;
  v41 = v40;
  (*(v40 + 56))(v8, 1, 1, v39);
  v42 = v54;
  v43 = v55;
  (*(v4 + 104))(v54, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v55);
  sub_1000325F0();
  v51 = sub_100770CDC();
  sub_10000CFBC(v14, &qword_100949718, &unk_10078CE10);
  sub_10011BAB4(v24, v44);
  v45 = type metadata accessor for TitleHeaderView.Style(0);
  v46 = v45[8];
  v47 = v36;
  v48 = v56;
  sub_10011BB10(v47, v56, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v18, v48 + v45[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v52, v48 + v45[6]);
  *(v48 + v45[7]) = 0;
  *(v48 + v46) = 0;
  *(v48 + v45[9]) = 1;
  *(v48 + v45[14]) = 0x4030000000000000;
  *(v48 + v45[12]) = 0;
  *(v48 + v45[13]) = v51;
  v49 = v53;
  (*(v4 + 32))(v48 + v45[11], v42, v43);
  if ((*(v41 + 48))(v49, 1, v39) != 1)
  {
    return (*(v41 + 32))(v48 + v45[10], v49, v39);
  }

  sub_10000CFBC(v49, &qword_100949710, "fc\a");
  return (*(v41 + 104))(v48 + v45[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v39);
}

uint64_t sub_100570CF0@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v45 = sub_100763BBC();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100949710, "fc\a");
  __chkstk_darwin(v7 - 8);
  v9 = (v40 - v8);
  v10 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v10 - 8);
  v12 = v40 - v11;
  v13 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v40 - v18;
  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  v20 = sub_10076140C();

  if (qword_10093FC28 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v13, qword_10099DF28);
  v44 = v19;
  sub_10011BA50(v21, v19, v22);
  v46 = v16;
  sub_100287C1C(a1, v16);
  sub_100288094(v12);
  v23 = *(v14 + 56);
  v48 = v12;
  v23(v12, 0, 1, v13);
  if (v20)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  v42 = v24;
  if (sub_1007706EC())
  {
    v25 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstLineCenter(_:);
  }

  else
  {
    *v9 = 0;
    v9[1] = 0;
    v25 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
  }

  v26 = *v25;
  v27 = sub_100763BAC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 104);
  v40[1] = v28 + 104;
  v41 = v29;
  v29(v9, v26, v27);
  (*(v28 + 56))(v9, 0, 1, v27);
  v30 = sub_1007706EC();
  v31 = &enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:);
  if ((v30 & 1) == 0)
  {
    v31 = &enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.centered(_:);
  }

  v32 = v47;
  v33 = v43;
  v34 = v45;
  (*(v47 + 104))(v43, *v31, v45);
  sub_1000325F0();
  v35 = sub_100770CDC();
  v36 = type metadata accessor for TitleHeaderView.Style(0);
  v49 = v9;
  v37 = v36[8];
  sub_10011BB10(v44, a3, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v46, a3 + v36[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v48, a3 + v36[6]);
  *(a3 + v36[7]) = 0;
  *(a3 + v37) = 0;
  *(a3 + v36[9]) = v42;
  *(a3 + v36[14]) = 0x4030000000000000;
  *(a3 + v36[12]) = 0;
  *(a3 + v36[13]) = v35;
  v38 = v49;
  (*(v32 + 32))(a3 + v36[11], v33, v34);
  if ((*(v28 + 48))(v38, 1, v27) != 1)
  {
    return (*(v28 + 32))(a3 + v36[10], v38, v27);
  }

  sub_10000CFBC(v38, &qword_100949710, "fc\a");
  return v41(a3 + v36[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v27);
}

uint64_t sub_10057122C()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100763BBC();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_100949710, "fc\a");
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v36 = &v30 - v17;
  sub_10000DB18(v0, qword_1009A0830);
  v34 = sub_10000A61C(v0, qword_1009A0830);
  if (qword_10093FC28 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v12, qword_10099DF28);
  sub_10011BA50(v18, v36, v19);
  if (qword_10093FC38 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v12, qword_10099DF58);
  sub_10011BA50(v20, v15, v21);
  (*(v13 + 56))(v11, 1, 1, v12);
  v22 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastLineCenter(_:);
  v23 = sub_100763BAC();
  v24 = *(v23 - 8);
  v32 = v15;
  v33 = v11;
  v25 = v24;
  v31 = *(v24 + 104);
  v31(v8, v22, v23);
  (*(v25 + 56))(v8, 0, 1, v23);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v37);
  sub_1000325F0();
  v26 = sub_100770CDC();
  v35 = v8;
  v27 = v0[8];
  sub_10011BB10(v36, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v32, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v33, &v2[v0[6]]);
  v2[v0[7]] = 0;
  v2[v27] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v26;
  v28 = v35;
  (*(v3 + 32))(&v2[v0[11]], v5, v37);
  if ((*(v25 + 48))(v28, 1, v23) == 1)
  {
    sub_10000CFBC(v28, &qword_100949710, "fc\a");
    v31(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v23);
  }

  else
  {
    (*(v25 + 32))(&v2[v0[10]], v28, v23);
  }

  return sub_10011BB10(v2, v34, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_100571784()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100763BBC();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_100949710, "fc\a");
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v33 = &v29 - v17;
  sub_10000DB18(v0, qword_1009A0860);
  v31 = sub_10000A61C(v0, qword_1009A0860);
  if (qword_10093FC28 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v12, qword_10099DF28);
  sub_10011BA50(v18, v33, v19);
  if (qword_10093FCD0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v12, qword_10099E120);
  sub_10011BA50(v20, v15, v21);
  (*(v13 + 56))(v11, 1, 1, v12);
  v22 = sub_100763BAC();
  v23 = *(v22 - 8);
  v30 = v11;
  v24 = v23;
  (*(v23 + 56))(v8, 1, 1, v22);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v34);
  sub_1000325F0();
  v25 = sub_100770CDC();
  v32 = v8;
  v26 = v0[8];
  sub_10011BB10(v33, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v15, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v30, &v2[v0[6]]);
  v2[v0[7]] = 1;
  v2[v26] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v25;
  v27 = v32;
  (*(v3 + 32))(&v2[v0[11]], v5, v34);
  if ((*(v24 + 48))(v27, 1, v22) == 1)
  {
    sub_10000CFBC(v27, &qword_100949710, "fc\a");
    (*(v24 + 104))(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v22);
  }

  else
  {
    (*(v24 + 32))(&v2[v0[10]], v27, v22);
  }

  return sub_10011BB10(v2, v31, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_100571C84()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100763BBC();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_100949710, "fc\a");
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v33 = &v29 - v17;
  sub_10000DB18(v0, qword_1009A0878);
  v31 = sub_10000A61C(v0, qword_1009A0878);
  if (qword_10093FC28 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v12, qword_10099DF28);
  sub_10011BA50(v18, v33, v19);
  if (qword_10093FCD8 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v12, qword_10099E138);
  sub_10011BA50(v20, v15, v21);
  (*(v13 + 56))(v11, 1, 1, v12);
  v22 = sub_100763BAC();
  v23 = *(v22 - 8);
  v30 = v11;
  v24 = v23;
  (*(v23 + 56))(v8, 1, 1, v22);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.centered(_:), v34);
  sub_1000325F0();
  v25 = sub_100770CDC();
  v32 = v8;
  v26 = v0[8];
  sub_10011BB10(v33, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v15, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v30, &v2[v0[6]]);
  v2[v0[7]] = 0;
  v2[v26] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v25;
  v27 = v32;
  (*(v3 + 32))(&v2[v0[11]], v5, v34);
  if ((*(v24 + 48))(v27, 1, v22) == 1)
  {
    sub_10000CFBC(v27, &qword_100949710, "fc\a");
    (*(v24 + 104))(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v22);
  }

  else
  {
    (*(v24 + 32))(&v2[v0[10]], v27, v22);
  }

  return sub_10011BB10(v2, v31, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1005721AC(uint64_t a1, uint64_t *a2, void *a3, char *a4, uint64_t a5)
{
  v36[1] = a5;
  v40 = a4;
  v7 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100763BBC();
  v10 = *(v38 - 8);
  __chkstk_darwin(v38);
  v42 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_100949710, "fc\a");
  __chkstk_darwin(v12 - 8);
  v14 = v36 - v13;
  v15 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v15 - 8);
  v17 = v36 - v16;
  v18 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v41 = v36 - v23;
  sub_10000DB18(v7, a2);
  v39 = sub_10000A61C(v7, a2);
  if (qword_10093FC28 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v18, qword_10099DF28);
  sub_10011BA50(v24, v41, v25);
  if (*a3 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v18, v40);
  sub_10011BA50(v26, v21, v27);
  v28 = *(v19 + 56);
  v37 = v17;
  v28(v17, 1, 1, v18);
  v29 = sub_100763BAC();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v14, 1, 1, v29);
  v31 = v38;
  (*(v10 + 104))(v42, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v38);
  sub_1000325F0();
  v32 = sub_100770CDC();
  v40 = v14;
  v33 = v7[8];
  sub_10011BB10(v41, v9, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v21, &v9[v7[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B0E8(v37, &v9[v7[6]]);
  v9[v7[7]] = 0;
  v9[v33] = 0;
  v9[v7[9]] = 0;
  *&v9[v7[14]] = 0x4030000000000000;
  *&v9[v7[12]] = 0;
  *&v9[v7[13]] = v32;
  v34 = v40;
  (*(v10 + 32))(&v9[v7[11]], v42, v31);
  if ((*(v30 + 48))(v34, 1, v29) == 1)
  {
    sub_10000CFBC(v34, &qword_100949710, "fc\a");
    (*(v30 + 104))(&v9[v7[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v29);
  }

  else
  {
    (*(v30 + 32))(&v9[v7[10]], v34, v29);
  }

  return sub_10011BB10(v9, v39, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1005726AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10057271C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  v4[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsCalculator] = 0;
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsUpdateBlock];
  v12 = type metadata accessor for AppSearchResultContentView();
  *v11 = 0;
  v11[1] = 0;
  v19.receiver = v4;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots]];

  return v17;
}

void (*sub_1005728E4(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  *a1 = Strong;
  return sub_100572964;
}

void sub_100572964(uint64_t a1, char a2)
{
  v24 = *a1;
  v4 = *(*(a1 + 8) + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_10057C980(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
      v7 = v24;
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
      v7 = v24;
    }

    swift_unknownObjectWeakAssign();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      [v4 addSubview:v22];
    }

    sub_10057E5D8();
    [v4 setNeedsLayout];

    v21 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_10057C980(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
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
  if (v19)
  {
    v20 = v19;
    [v4 addSubview:v19];
  }

  sub_10057E5D8();
  [v4 setNeedsLayout];
  v21 = v24;
LABEL_21:
}

id sub_100572C34()
{
  v1 = v0;
  v2 = sub_10076749C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007679DC();
  v143 = *(v6 - 8);
  v144 = v6;
  __chkstk_darwin(v6);
  v133 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076997C();
  v137 = *(v8 - 8);
  v138 = v8;
  __chkstk_darwin(v8);
  v136 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076443C();
  v147 = *(v10 - 8);
  v148 = v10;
  __chkstk_darwin(v10);
  v135 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v146 = &v107 - v13;
  v151 = sub_10076747C();
  v145 = *(v151 - 8);
  __chkstk_darwin(v151);
  v141 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v152 = &v107 - v16;
  v17 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  __chkstk_darwin(v17 - 8);
  v132 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v149 = &v107 - v20;
  v21 = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v150 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v107 - v22;
  v24 = type metadata accessor for AppSearchResultContentView();
  v190.receiver = v0;
  v190.super_class = v24;
  objc_msgSendSuper2(&v190, "layoutSubviews");
  v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView];
  sub_10076422C();
  sub_10052225C();
  sub_10076422C();
  sub_10076422C();
  sub_100770A4C();
  result = [v25 setFrame:?];
  if (v0[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia] == 1)
  {
    v127 = v5;
    v128 = v3;
    v129 = v2;
    sub_10076ABBC();
    v27 = [v0 traitCollection];
    v28 = sub_10076DEDC();
    v124 = sub_10000A5D4(&unk_100942870, &qword_100784460);
    v29 = swift_allocObject();
    v140 = xmmword_1007841E0;
    *(v29 + 16) = xmmword_1007841E0;
    *(v29 + 32) = v27;
    v30 = v27;
    v134 = v28;
    v31 = sub_10076DEEC();
    v122 = sub_10001CE64();
    sub_10076D3EC();

    v33 = v150 + 8;
    v32 = *(v150 + 8);
    v126 = v21;
    v123 = v32;
    v32(v23, v21);
    sub_10076422C();
    CGRectGetMinX(v191);
    [v25 frame];
    MaxY = CGRectGetMaxY(v192);
    v35 = *&v25[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title + 8];
    v115 = *&v25[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title];
    v36 = *&v25[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    v114 = v35;

    v37 = [v36 text];
    if (v37)
    {
      v38 = v37;
      v39 = sub_10076FF9C();
      v116 = v40;
      v117 = v39;
    }

    else
    {
      v116 = 0;
      v117 = 0;
    }

    v41 = [*&v25[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel] text];
    if (v41)
    {
      v42 = v41;
      v43 = sub_10076FF9C();
      v118 = v44;
      v119 = v43;
    }

    else
    {
      v118 = 0;
      v119 = 0;
    }

    v45 = *&v25[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView];
    v46 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
    swift_beginAccess();
    v142 = *(v45 + v46);

    v47 = v149;
    _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    (*(v143 + 56))(v47, 0, 1, v144);
    v48 = *(*&v25[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels);
    v108 = v25[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_shouldEvenlyDistribute];
    v139 = v48;

    sub_10076422C();
    v50 = v49;
    v52 = v51;
    v53 = [v1 traitCollection];
    if (qword_1009407E8 != -1)
    {
      swift_once();
    }

    v54 = v151;
    v55 = sub_10000A61C(v151, qword_1009A0690);
    v120 = *(v145 + 16);
    v121 = v145 + 16;
    v120(v152, v55, v54);
    v56 = sub_10077071C();
    v130 = v1;
    v150 = v33;
    v125 = v23;
    if (v56)
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

    v58 = v148;
    v59 = sub_10000A61C(v148, v57);
    v60 = v147;
    v61 = v135;
    (*(v147 + 16))(v135, v59, v58);
    (*(v60 + 32))(v146, v61, v58);
    v62 = [v53 preferredContentSizeCategory];
    sub_10077084C();

    sub_1007643EC();
    sub_10076441C();
    sub_10076746C();
    sub_10076745C();
    v113 = sub_10076DDDC();
    swift_allocObject();
    v135 = sub_10076DDBC();
    v63 = objc_opt_self();
    v111 = v63;
    v64 = [v63 preferredFontForTextStyle:UIFontTextStyleBody];
    v65 = sub_10076C04C();
    v189[3] = v65;
    v66 = sub_10057C980(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v189[4] = v66;
    v110 = v66;
    v67 = sub_10000DB7C(v189);
    v68 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v69 = *(v65 - 8);
    v70 = *(v69 + 104);
    v112 = v69 + 104;
    v109 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v70(v67, enum case for Feature.measurement_with_labelplaceholder(_:), v65);
    sub_10076C90C();
    v131 = v53;
    sub_10000CD74(v189);
    v71 = v136;
    sub_10076996C();
    sub_10076994C();
    v72 = v138;
    v137 = *(*&v137 + 8);
    (*&v137)(v71, v138);
    v73 = [v63 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v188[3] = v65;
    v188[4] = v66;
    v74 = sub_10000DB7C(v188);
    v70(v74, v68, v65);
    sub_10076C90C();
    sub_10000CD74(v188);
    sub_10076996C();
    sub_10076994C();
    v75 = v137;
    (*&v137)(v71, v72);
    v76 = [v111 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v187[3] = v65;
    v187[4] = v110;
    v77 = sub_10000DB7C(v187);
    v70(v77, v109, v65);
    sub_10076C90C();
    sub_10000CD74(v187);
    sub_10076996C();
    sub_10076994C();
    (*&v75)(v71, v72);
    v78 = v142;
    LODWORD(v138) = sub_10001D420() & (v78 != 0);
    if (v138 == 1)
    {
      v79 = v113;
      v137 = MaxY;
      v80 = objc_allocWithZone(v134);
      v81 = v131;
      v82 = sub_10076DECC();
      v83 = v132;
      sub_100016E2C(v149, v132, &unk_100957F90, qword_1007A9D70);
      v85 = v143;
      v84 = v144;
      v86 = *(v143 + 48);
      if (v86(v83, 1, v144) == 1)
      {
        v87 = v133;
        _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v86(v83, 1, v84) != 1)
        {
          sub_10000CFBC(v83, &unk_100957F90, qword_1007A9D70);
        }
      }

      else
      {
        v87 = v133;
        (*(v85 + 32))(v133, v83, v84);
      }

      v90 = v82;
      sub_10001A588(v142, v87, v90, v50, v52);

      (*(v85 + 8))(v87, v84);
      v88 = v79;
      swift_allocObject();
      v89 = sub_10076DDAC();
    }

    else
    {
      v88 = v113;
      swift_allocObject();
      v89 = sub_10076DDBC();
    }

    v144 = v89;

    v91 = v139;
    if ((sub_10001D420() & (v91 != 0)) == 1)
    {
      v92.n128_f64[0] = v50;
      v93 = v131;
      sub_1004EF9EC(v91, v108, v92, v52);
      swift_allocObject();
      v94 = sub_10076DDAC();
    }

    else
    {
      swift_allocObject();
      v94 = sub_10076DDBC();
      v93 = v131;
    }

    v120(v141, v152, v151);
    v186 = &protocol witness table for LayoutViewPlaceholder;
    v185 = v88;
    v184 = v135;
    v183 = 0;
    *&v181[40] = 0u;
    v182 = 0u;
    sub_10000A570(v189, v181);
    sub_10000A570(v188, &v180);
    v179 = 0;
    v177 = 0u;
    v178 = 0u;
    v176 = 0;
    v174 = 0u;
    v175 = 0u;

    v95 = sub_10076DDCC();
    v173 = &protocol witness table for LayoutViewPlaceholder;
    v172 = v88;
    v171 = v95;
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
    v167 = 0;
    v165 = 0u;
    v166 = 0u;
    v164 = 0;
    v162 = 0u;
    v163 = 0u;
    v161 = 0;
    v160 = 0u;
    *&v159[40] = 0u;
    sub_10000A570(v187, v159);
    v157 = v88;
    v158 = &protocol witness table for LayoutViewPlaceholder;
    v155 = &protocol witness table for LayoutViewPlaceholder;
    v156 = v144;
    v154 = v88;
    v153 = v94;
    v96 = v127;
    sub_10076748C();
    v97 = swift_allocObject();
    *(v97 + 16) = v140;
    *(v97 + 32) = v93;
    v98 = v93;
    v99 = sub_10076DEEC();
    sub_10057C980(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v100 = v129;
    sub_10076D2AC();

    (*(v128 + 8))(v96, v100);
    sub_10000CD74(v187);
    sub_10000CD74(v188);
    sub_10000CD74(v189);
    (*(v147 + 8))(v146, v148);
    (*(v145 + 8))(v152, v151);
    v101 = v125;
    sub_10076ABBC();
    v102 = swift_allocObject();
    *(v102 + 16) = v140;
    *(v102 + 32) = v98;
    v103 = v98;
    v104 = sub_10076DEEC();
    v105 = v126;
    sub_10076D3EC();

    v123(v101, v105);
    sub_10000CFBC(v149, &unk_100957F90, qword_1007A9D70);
    v106 = *&v130[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots];
    [v130 bounds];
    sub_100770A4C();
    return [v106 setFrame:?];
  }

  return result;
}

id sub_100573DE8()
{
  v1 = v0;
  sub_100522870();
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots];
  result = sub_10057EDF4(v3);
  v5 = v1[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia];
  v1[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia] = 1;
  if ((v5 & 1) == 0)
  {
    [v2 setHidden:0];

    return [v1 setNeedsLayout];
  }

  return result;
}

unint64_t sub_100573E8C(uint64_t a1, char *a2)
{
  v3 = v2;
  v250 = a2;
  swift_getObjectType();
  v5 = sub_10000A5D4(&qword_10094A428, &qword_10078D678);
  __chkstk_darwin(v5 - 8);
  v211 = &v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v217 = &v199 - v8;
  v9 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v9 - 8);
  v228 = &v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v229 = &v199 - v12;
  v13 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v13 - 8);
  v227 = &v199 - v14;
  v15 = sub_1007611EC();
  __chkstk_darwin(v15 - 8);
  v215 = &v199 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v214 = &v199 - v18;
  __chkstk_darwin(v19);
  v221 = &v199 - v20;
  __chkstk_darwin(v21);
  v220 = &v199 - v22;
  v226 = sub_10076121C();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v213 = &v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v219 = &v199 - v25;
  v222 = sub_10076481C();
  v230 = *(v222 - 8);
  __chkstk_darwin(v222);
  v216 = &v199 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v237 = &v199 - v28;
  v210 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v209 = *(v210 - 8);
  __chkstk_darwin(v210);
  v235 = &v199 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000A5D4(&qword_10094E260, qword_100796150);
  __chkstk_darwin(v30 - 8);
  v32 = &v199 - v31;
  v224 = sub_10076D39C();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v236 = &v199 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_10076357C();
  v233 = *(v234 - 8);
  __chkstk_darwin(v234);
  v232 = &v199 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_10076350C();
  v244 = *(v242 - 8);
  __chkstk_darwin(v242);
  v208 = &v199 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v199 - v37;
  __chkstk_darwin(v39);
  v238 = &v199 - v40;
  __chkstk_darwin(v41);
  v218 = &v199 - v42;
  __chkstk_darwin(v43);
  v241 = &v199 - v44;
  v45 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v45 - 8);
  v212 = &v199 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v240 = &v199 - v48;
  __chkstk_darwin(v49);
  v248 = &v199 - v50;
  v51 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v51 - 8);
  v53 = &v199 - v52;
  v54 = sub_10076C38C();
  v249 = *(v54 - 8);
  __chkstk_darwin(v54);
  v253 = &v199 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_1007673CC();
  v56 = *(v252 - 8);
  __chkstk_darwin(v252);
  v231 = &v199 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v199 - v59;
  sub_10075ECBC();
  sub_10057C980(&qword_10095D830, 255, &type metadata accessor for AppSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_10076332C();
  if (!v255[0])
  {
    return result;
  }

  v243 = v56;
  v247 = v54;
  v62 = v255[0];
  v63 = sub_10075ECAC();
  v251 = v60;
  v246 = v63;
  sub_10076285C();
  v239 = v62;
  v64 = sub_10075EC9C();
  v65 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia;
  v66 = v2[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia];
  v2[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia] = v64 & 1;
  v67 = &off_100911000;
  if ((v64 & 1) != v66)
  {
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots] setHidden:(v64 & 1) == 0];
    [v2 setNeedsLayout];
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_10076C2BC();
  v68 = *&v2[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView];
  *&v68[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = v69;
  [v68 setNeedsLayout];
  v70 = sub_10076341C();
  (*(*(v70 - 8) + 56))(v53, 1, 1, v70);
  v71 = v3;
  v72 = v246;
  sub_100386168(v246, v53, v250);
  sub_10000CFBC(v53, &unk_1009428D0, &unk_100783DC0);
  v245 = v71;
  v73 = v71[v65];
  v74 = v247;
  v75 = v243;
  v76 = v251;
  if (v73 != 1 || (sub_1007673BC() & 1) == 0)
  {
LABEL_150:
    [v245 setNeedsLayout];

    (*(v249 + 8))(v253, v74);
    return (*(v75 + 8))(v76, v252);
  }

  v77 = sub_10076280C();
  if (v77 >> 62)
  {
    v78 = v77;
    v79 = sub_10077158C();
    v77 = v78;
    if (v79)
    {
      goto LABEL_8;
    }

LABEL_13:

    v204 = 0;
    goto LABEL_14;
  }

  if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v77 & 0xC000000000000001) != 0)
  {
    v204 = sub_10077149C();
  }

  else
  {
    if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_79;
    }

    v204 = *(v77 + 32);
  }

LABEL_14:
  v67 = *&v245[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots];
  v205 = sub_10076283C();
  v207 = sub_10076281C();
  v80 = sub_10076288C();
  if (v80 >> 62)
  {
    v81 = v80;
    v82 = sub_10077158C();
    v80 = v81;
    if (v82)
    {
      goto LABEL_16;
    }

LABEL_21:

    v206 = 0;
    goto LABEL_22;
  }

  if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v80 & 0xC000000000000001) != 0)
  {
    v206 = sub_10077149C();
  }

  else
  {
    if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_81;
    }

    v206 = *(v80 + 32);
  }

LABEL_22:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v83 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_10076338C();

  v84 = v255[0];
  sub_100299B1C(v248);

  a1 = sub_10076283C();
  v53 = sub_10076281C();
  v85 = sub_10076280C();
  if (v85 >> 62)
  {
    v86 = v85;
    v87 = sub_10077158C();
    v85 = v86;
    if (v87)
    {
LABEL_24:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_83;
        }

        v84 = *(v85 + 32);

        goto LABEL_27;
      }

LABEL_79:
      v84 = sub_10077149C();
LABEL_27:

      goto LABEL_30;
    }
  }

  else if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  v84 = 0;
LABEL_30:
  v85 = sub_10076288C();
  if (v85 >> 62)
  {
    v89 = v85;
    v90 = sub_10077158C();
    v85 = v89;
    v72 = v84;
    if (v90)
    {
LABEL_32:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v88 = *(v85 + 32);

LABEL_35:

          goto LABEL_38;
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_81:
      v88 = sub_10077149C();
      goto LABEL_35;
    }
  }

  else
  {
    v72 = v84;
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }
  }

  v88 = 0;
LABEL_38:
  if ((sub_1007673BC() & 1) == 0)
  {

    v53 = v244;
    v96 = v241;
    v84 = v242;
    (*(v244 + 104))(v241, enum case for LockupMediaLayout.DisplayType.none(_:), v242);
    v92 = v207;
LABEL_46:
    v38 = v204;
    goto LABEL_68;
  }

  v92 = v207;
  if (v53 | a1)
  {
    v97 = v218;
    sub_10076D3AC();

    v53 = v244;
    v84 = v242;
    (*(v244 + 104))(v97, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v242);
    v96 = v241;
    (*(v53 + 32))(v241, v97, v84);
    goto LABEL_46;
  }

  v93 = sub_10057F8EC(v72, v88, 0, 1, v91);
  v53 = v93;
  v84 = (v93 >> 62);
  if (v93 >> 62)
  {
    goto LABEL_132;
  }

  for (i = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v203 = i;
    v95 = v72 ? sub_1007601CC() : 0;
    v98 = sub_10057FC34(v95);

    v200 = v98;
    v99 = v72 ? sub_1007601CC() : 0;
    v100 = v252;
    (*(v75 + 16))(v32, v251, v252);
    v101.n128_f64[0] = (*(v75 + 56))(v32, 0, 1, v100);
    a1 = sub_10058015C(v99, v32, v101);

    sub_10000CFBC(v32, &qword_10094E260, qword_100796150);
    if (v84 ? sub_10077158C() : *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
        if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_154;
        }
      }

      v103 = sub_10076BDCC();

      if (v103)
      {

        v53 = v244;
        v104 = v218;
        v84 = v242;
        (*(v244 + 104))(v218, enum case for LockupMediaLayout.DisplayType.landscape(_:), v242);
LABEL_66:
        v96 = v241;
        v92 = v207;
        v38 = v204;
        goto LABEL_67;
      }
    }

    else
    {
    }

    v105 = a1;
    v106 = v244;
    v107 = v242;
    v202 = *(v244 + 104);
    v201 = v244 + 104;
    (v202)(v38, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v242);
    v108 = sub_1007634FC();
    v199 = *(v106 + 8);
    v199(v38, v107);
    if (((v203 >= v108) & v105) != 0 || ((v202)(v38, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v107), v109 = sub_1007634FC(), v199(v38, v107), ((v203 >= v109) & v200) != 0) || ((v202)(v38, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v107), v110 = sub_1007634FC(), v199(v38, v107), v203 >= v110))
    {

      v104 = v218;
      v202();
      v84 = v107;
      v53 = v244;
      goto LABEL_66;
    }

    (v202)(v38, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v107);
    sub_1007634FC();

    v199(v38, v107);
    v111 = v107;
    v104 = v218;
    v202();
    v53 = v244;
    v96 = v241;
    v92 = v207;
    v38 = v204;
    v84 = v111;
LABEL_67:
    (*(v53 + 32))(v96, v104, v84);
LABEL_68:
    v32 = v238;

    v255[3] = &type metadata for CGFloat;
    v255[4] = &protocol witness table for CGFloat;
    v255[0] = 0x4021000000000000;
    sub_10000A570(v255, v254);
    v72 = v53 + 16;
    v112 = v96;
    a1 = *(v53 + 16);
    (a1)(v32, v112, v84);
    if (v92 | v205)
    {
      goto LABEL_86;
    }

    v85 = sub_10057F8EC(v38, v206, 0, 1, v113);
    if (v85 >> 62)
    {
      break;
    }

    if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }

LABEL_71:
    if ((v85 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      goto LABEL_74;
    }

    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_74:

      sub_10076BEFC();
      sub_10076D3AC();

      goto LABEL_87;
    }

    __break(1u);
LABEL_132:
    ;
  }

LABEL_84:
  v114 = v85;
  v115 = sub_10077158C();
  v85 = v114;
  if (v115)
  {
    goto LABEL_71;
  }

LABEL_85:

LABEL_86:
  sub_10076D3AC();
LABEL_87:
  sub_100016E2C(v248, v240, &unk_1009467E0, qword_10078CB50);
  v116 = v232;
  sub_10076354C();
  sub_10000CD74(v255);
  v117 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v118 = v233;
  v119 = v67 + v117;
  v120 = v234;
  (*(v233 + 24))(v119, v116, v234);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v118 + 8))(v116, v120);
  if (v38)
  {
    v121 = sub_1007601CC();
  }

  else
  {
    v121 = 0;
  }

  sub_1007601EC();
  v122 = v235;
  sub_10007AFB4(v121, v235);

  v123 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_100125E2C(v122, v67 + v123);
  swift_endAccess();
  sub_10057D9D0();
  sub_100125E90(v122);
  if (v38)
  {
    v124 = sub_1007601CC();
  }

  else
  {
    v124 = 0;
  }

  v125 = v231;
  *(v67 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform) = v124;

  sub_10057DBD4();

  v126 = v252;
  (*(v75 + 16))(v125, v251, v252);
  v127 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v75 + 24))(v67 + v127, v125, v126);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v75 + 8))(v125, v126);
  if (v207)
  {
    (*(v225 + 104))(v219, enum case for VideoFillMode.scaleAspectFill(_:), v226);

    sub_10076B84C();
    sub_10076BEFC();
    v128 = v240;
    sub_10076D3AC();

    (*(v223 + 56))(v128, 0, 1, v224);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v129 = v67;
    v130 = v227;
    sub_10076B85C();
    v131 = sub_10075DB7C();
    (*(*(v131 - 8) + 56))(v130, 0, 1, v131);
    v132 = v229;
    sub_10076B81C();
    v133 = v228;
    sub_10076B80C();
    type metadata accessor for VideoView(0);
    sub_10057C980(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v134 = sub_100762EEC();
    sub_10000CFBC(v133, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v132, &unk_10094C030, &unk_10078D680);
    v135 = v130;
    v67 = v129;
    sub_10000CFBC(v135, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v255, &qword_100943310, &unk_100784150);
    Strong = swift_unknownObjectWeakLoadStrong();
    v53 = v244;
    if (Strong)
    {
      v137 = Strong;
      v138 = [Strong superview];
      if (!v138)
      {
        goto LABEL_99;
      }

      v139 = v138;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v140 = v129;
      v141 = sub_100770EEC();

      if (v141)
      {
        v142 = swift_unknownObjectWeakLoadStrong();
        if (v142)
        {
          v137 = v142;
          [v142 removeFromSuperview];
LABEL_99:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v143 = swift_unknownObjectWeakLoadStrong();
    if (v143)
    {
      v144 = v143;
      [v67 addSubview:v143];
    }

    sub_10057E5D8();
    [v67 setNeedsLayout];

    v145 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v146 = *(v67 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView);
    v75 = v243;
    v147 = v222;
    if (v146)
    {
      [v146 removeFromSuperview];
      v148 = *(v67 + v145);
    }

    else
    {
      v148 = 0;
    }

    v74 = v247;
    *(v67 + v145) = 0;

    [v67 setNeedsLayout];

    (*(v230 + 8))(v237, v147);
LABEL_148:
    v184 = v241;
LABEL_149:
    [v67 setNeedsLayout];

    (*(v53 + 8))(v184, v242);
    sub_10000CFBC(v248, &unk_1009467E0, qword_10078CB50);
    v76 = v251;
    goto LABEL_150;
  }

  v53 = v244;
  if (!v206)
  {
    goto LABEL_135;
  }

  result = sub_10076C41C();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

LABEL_134:

LABEL_135:
    v187 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v188 = *(v67 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView);
    if (v188)
    {
      [v188 removeFromSuperview];
      v189 = *(v67 + v187);
    }

    else
    {
      v189 = 0;
    }

    v74 = v247;
    *(v67 + v187) = 0;

    [v67 setNeedsLayout];
    v190 = swift_unknownObjectWeakLoadStrong();
    if (v190)
    {
      v191 = v190;
      sub_10057C980(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
      v192 = [v191 superview];
      if (v192)
      {
        v193 = v192;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v194 = v67;
        v195 = sub_100770EEC();

        v74 = v247;
        if (v195)
        {
          v196 = swift_unknownObjectWeakLoadStrong();
          if (v196)
          {
            v191 = v196;
            [v196 removeFromSuperview];
            goto LABEL_144;
          }
        }
      }

      else
      {
        v74 = v247;
LABEL_144:
      }
    }

    swift_unknownObjectWeakAssign();
    v197 = swift_unknownObjectWeakLoadStrong();
    if (v197)
    {
      v198 = v197;
      [v67 addSubview:v197];
    }

    sub_10057E5D8();
    [v67 setNeedsLayout];
    goto LABEL_148;
  }

  v185 = result;
  v186 = sub_10077158C();
  result = v185;
  if (!v186)
  {
    goto LABEL_134;
  }

LABEL_107:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_154:
    sub_10077149C();
LABEL_110:
    v149 = v67;
    v204 = v38;

    v150 = v208;
    v151 = v242;
    (a1)(v208, v241, v242);
    v152 = (*(v53 + 88))(v150, v151);
    v153 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v53 + 8))(v150, v151);
    if (v152 == v153)
    {
      v154 = 1;
      v155 = v217;
    }

    else
    {
      v156 = sub_10076C40C();
      v155 = v217;
      sub_10007AFB4(v156, v217);

      v154 = 0;
    }

    v157 = v229;
    v158 = v210;
    v159 = v226;
    v160 = v225;
    v161 = v209;
    v162 = v224;
    (*(v209 + 56))(v155, v154, 1, v210);
    (*(v160 + 104))(v213, enum case for VideoFillMode.scaleAspectFill(_:), v159);
    sub_10076B84C();
    sub_10076BEFC();
    v163 = v212;
    sub_10076D3AC();

    (*(v223 + 56))(v163, 0, 1, v162);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    v164 = v155;
    v165 = v211;
    sub_100016E2C(v164, v211, &qword_10094A428, &qword_10078D678);
    if ((*(v161 + 48))(v165, 1, v158) == 1)
    {
      sub_10000CFBC(v165, &qword_10094A428, &qword_10078D678);
    }

    else
    {
      sub_100125E90(v165);
    }

    v67 = v149;
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v166 = v227;
    sub_10076B85C();
    v167 = sub_10075DB7C();
    (*(*(v167 - 8) + 56))(v166, 0, 1, v167);
    sub_10076B81C();
    v168 = v228;
    sub_10076B80C();
    type metadata accessor for VideoView(0);
    sub_10057C980(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v169 = sub_100762EEC();
    sub_10000CFBC(v168, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v157, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v166, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v255, &qword_100943310, &unk_100784150);
    v170 = swift_unknownObjectWeakLoadStrong();
    if (v170)
    {
      v171 = v170;
      v172 = [v170 superview];
      if (v172)
      {
        v173 = v172;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v174 = v67;
        v175 = sub_100770EEC();

        v75 = v243;
        if ((v175 & 1) == 0)
        {
          goto LABEL_124;
        }

        v176 = swift_unknownObjectWeakLoadStrong();
        if (!v176)
        {
          goto LABEL_124;
        }

        v171 = v176;
        [v176 removeFromSuperview];
      }
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v177 = swift_unknownObjectWeakLoadStrong();
    if (v177)
    {
      v178 = v177;
      [v67 addSubview:v177];
    }

    sub_10057E5D8();
    [v67 setNeedsLayout];

    v179 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v180 = *(v67 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView);
    v53 = v244;
    v181 = v241;
    if (v180)
    {
      [v180 removeFromSuperview];
      v182 = *(v67 + v179);
    }

    else
    {
      v182 = 0;
    }

    v183 = v222;
    *(v67 + v179) = 0;

    [v67 setNeedsLayout];

    (*(v230 + 8))(v216, v183);
    sub_10000CFBC(v217, &qword_10094A428, &qword_10078D678);
    v74 = v247;
    v184 = v181;
    goto LABEL_149;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_110;
  }

  __break(1u);
  return result;
}

uint64_t sub_100576294(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    sub_10076611C();
  }

  *(v1 + v3) = 0;

  v4 = (v1 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_1000167E0(v5, v6);
  return sub_100522B20(a1);
}

id sub_100576354(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10057643C()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    return 0;
  }
}

void sub_100576490(void *a1)
{
  sub_10057C80C(a1);
}

uint64_t (*sub_1005764C8(uint64_t **a1))()
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
  v2[4] = sub_1005728E4(v2);
  return sub_100019A4C;
}

double sub_100576538()
{
  swift_beginAccess();

  return result;
}

double sub_100576580(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100576638()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_100576694(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

uint64_t sub_100576754(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchTagsRibbonView(0);
  sub_10057C980(&qword_10095C6D0, 255, type metadata accessor for SearchTagsRibbonView, &unk_1007A85D8);
  return sub_10076A03C();
}

uint64_t sub_100576800(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100576854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1005768C0(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_10057695C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v5 = v2;
  v6 = sub_100770EEC();

  return v6 & 1;
}

uint64_t sub_100576B18(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10057C980(&qword_10095D818, a2, type metadata accessor for AppSearchResultContentView, &unk_1007ABB98);
  result = sub_10057C980(&unk_10095D820, v3, type metadata accessor for AppSearchResultContentView, &unk_1007ABBC8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100576B9C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v12 = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v156 = *(v12 - 8);
  v157 = v12;
  __chkstk_darwin(v12);
  v155 = &v123 - v13;
  v14 = sub_10076749C();
  v153 = *(v14 - 8);
  v154 = v14;
  __chkstk_darwin(v14);
  v152 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_1007679DC();
  *&v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v145 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076997C();
  v149 = *(v17 - 8);
  v150 = v17;
  __chkstk_darwin(v17);
  v148 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076443C();
  v163 = *(v19 - 8);
  v164 = v19;
  __chkstk_darwin(v19);
  v21 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v162 = &v123 - v23;
  v166 = sub_10076747C();
  v161 = *(v166 - 8);
  __chkstk_darwin(v166);
  v151 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v167 = &v123 - v26;
  v27 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  __chkstk_darwin(v27 - 8);
  v144 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v165 = &v123 - v30;
  v31 = sub_1007673CC();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = (&v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_10076BF6C();
  __chkstk_darwin(v35 - 8);
  sub_10000A570(a1, v204);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10075ECBC();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v146 = v203[0];
  v147 = v34;
  sub_10075ECAC();

  if (sub_10076BB5C())
  {
    v141 = a2;
    v142 = v32;
    v140 = v31;
    v143 = v6;
    v37 = *&v6[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView];
    v38 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v39 = qword_10093FBE0;
    v40 = *(v37 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    if (v39 != -1)
    {
      swift_once();
    }

    v41 = sub_100763ADC();
    sub_10000A61C(v41, qword_10099DDA0);
    sub_1007639AC();
    [v40 contentMode];
    sub_10076BFCC();
    sub_10076BF7C();
    sub_10075FCCC();
    [v40 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      sub_100770D5C();
    }

    sub_10075FB8C();
    v42 = *(v37 + v38);
    sub_10075FD2C();
    sub_10057C980(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v43 = v42;
    a2 = v141;
    sub_100760B8C();

    v32 = v142;
    v7 = v143;
    v31 = v140;
  }

  v44 = *(*&v7[OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView);
  sub_1005215E8(a1, a2);

  v45 = v147;
  sub_10076285C();
  if ((sub_10075EC9C() & 1) == 0 || (sub_1007673BC() & 1) == 0)
  {

    goto LABEL_50;
  }

  v140 = v31;
  sub_10076BB6C();
  v128 = v46;
  v47 = sub_10076BBEC();
  v129 = v48;
  v130 = v47;
  v49 = sub_10076BB0C();

  if (v49 && (v50 = sub_10076518C(), , v50))
  {
    v51 = sub_10076C3EC();
    v131 = v52;
    v132 = v51;
  }

  else
  {
    v131 = 0;
    v132 = 0;
  }

  v139 = sub_10076282C();
  v53 = v165;
  _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  (*(v158 + 56))(v53, 0, 1, v159);
  v138 = sub_10076284C();
  v123 = sub_10076286C();
  v54 = [v7 traitCollection];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v55 = v166;
  v56 = sub_10000A61C(v166, qword_1009A0690);
  v134 = *(v161 + 16);
  v135 = v161 + 16;
  v134(v167, v56, v55);
  v57 = sub_10077071C();
  v141 = a2;
  v142 = v32;
  v143 = v7;
  if ((v57 & 1) == 0)
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v58 = qword_100944CA0;
    goto LABEL_23;
  }

  if (qword_10093F520 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = qword_100944C88;
LABEL_23:
    v59 = v164;
    v60 = sub_10000A61C(v164, v58);
    v61 = v163;
    (*(v163 + 16))(v21, v60, v59);
    (*(v61 + 32))(v162, v21, v59);
    v62 = [v54 preferredContentSizeCategory];
    sub_10077084C();

    sub_1007643EC();
    sub_10076441C();
    sub_10076746C();
    sub_10076745C();
    v133 = sub_10076DDDC();
    swift_allocObject();
    v136 = sub_10076DDBC();
    v63 = objc_opt_self();
    v137 = v54;
    v64 = v63;
    v126 = v63;
    v65 = [v63 preferredFontForTextStyle:UIFontTextStyleBody];
    v66 = sub_10076C04C();
    v204[3] = v66;
    v67 = sub_10057C980(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v204[4] = v67;
    v125 = v67;
    v68 = sub_10000DB7C(v204);
    v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v70 = *(v66 - 8);
    v71 = *(v70 + 104);
    v127 = v70 + 104;
    v124 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v71(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
    sub_10076C90C();
    sub_10000CD74(v204);
    v72 = v148;
    sub_10076996C();
    sub_10076994C();
    v73 = v150;
    v149 = *(v149 + 8);
    (v149)(v72, v150);
    v74 = [v64 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v203[3] = v66;
    v203[4] = v67;
    v75 = sub_10000DB7C(v203);
    v71(v75, v69, v66);
    sub_10076C90C();
    sub_10000CD74(v203);
    sub_10076996C();
    sub_10076994C();
    v76 = v149;
    (v149)(v72, v73);
    v77 = [v126 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v202[3] = v66;
    v202[4] = v125;
    v78 = sub_10000DB7C(v202);
    v71(v78, v124, v66);
    sub_10076C90C();
    sub_10000CD74(v202);
    sub_10076996C();
    sub_10076994C();
    v76(v72, v73);
    v79 = v139;
    LODWORD(v150) = sub_10001D420() & (v79 != 0);
    if (v150 == 1)
    {
      v80 = objc_allocWithZone(sub_10076DEDC());
      v81 = v137;
      v82 = sub_10076DECC();
      v83 = v144;
      sub_100016E2C(v165, v144, &unk_100957F90, qword_1007A9D70);
      v84 = v158;
      v85 = *(v158 + 48);
      v86 = v159;
      if (v85(v83, 1, v159) == 1)
      {
        v87 = v145;
        _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v85(v83, 1, v86) != 1)
        {
          sub_10000CFBC(v83, &unk_100957F90, qword_1007A9D70);
        }
      }

      else
      {
        v87 = v145;
        (*(v84 + 32))(v145, v83, v86);
      }

      v90 = v82;
      sub_10001A588(v139, v87, v90, a5, a6);

      (*(v84 + 8))(v87, v86);
      v88 = v133;
      swift_allocObject();
      v89 = sub_10076DDAC();
    }

    else
    {
      v88 = v133;
      swift_allocObject();
      v89 = sub_10076DDBC();
    }

    v91 = v89;

    v92 = v138;
    if ((sub_10001D420() & (v92 != 0)) == 1)
    {
      v93.n128_f64[0] = a5;
      sub_1004EF9EC(v92, v123 & 1, v93, a6);
      swift_allocObject();
      v94 = sub_10076DDAC();
    }

    else
    {
      swift_allocObject();
      v94 = sub_10076DDBC();
    }

    v95 = v94;
    v134(v151, v167, v166);
    v201 = &protocol witness table for LayoutViewPlaceholder;
    v200 = v88;
    v199 = v136;
    v198 = 0;
    *&v196[40] = 0u;
    v197 = 0u;
    sub_10000A570(v204, v196);
    sub_10000A570(v203, &v195);
    v194 = 0;
    v192 = 0u;
    v193 = 0u;
    v191 = 0;
    v189 = 0u;
    v190 = 0u;

    v159 = v95;
    v96 = sub_10076DDCC();
    v188 = &protocol witness table for LayoutViewPlaceholder;
    v187 = v88;
    v186 = v96;
    v185 = 0;
    v183 = 0u;
    v184 = 0u;
    v182 = 0;
    v180 = 0u;
    v181 = 0u;
    v179 = 0;
    v177 = 0u;
    v178 = 0u;
    v176 = 0;
    v175 = 0u;
    *&v174[40] = 0u;
    sub_10000A570(v202, v174);
    v172 = v88;
    v173 = &protocol witness table for LayoutViewPlaceholder;
    v170 = &protocol witness table for LayoutViewPlaceholder;
    v171 = v91;
    v169 = v88;
    v168 = v95;
    v97 = v152;
    sub_10076748C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v98 = swift_allocObject();
    v158 = xmmword_1007841E0;
    *(v98 + 16) = xmmword_1007841E0;
    v99 = v137;
    *(v98 + 32) = v137;
    v54 = v99;
    v100 = sub_10076DEEC();
    sub_10057C980(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v101 = v154;
    sub_10076D2AC();
    v103 = v102;

    (*(v153 + 8))(v97, v101);
    sub_10000CD74(v202);
    sub_10000CD74(v203);
    sub_10000CD74(v204);
    (*(v163 + 8))(v162, v164);
    (*(v161 + 8))(v167, v166);
    v104 = v155;
    sub_10076ABBC();
    v105 = swift_allocObject();
    *(v105 + 16) = v158;
    *(v105 + 32) = v54;
    v106 = v54;
    v107 = sub_10076DEEC();
    sub_10001CE64();
    v108 = v157;
    sub_10076D3EC();
    v110 = v109;

    (*(v156 + 8))(v104, v108);
    sub_10000CFBC(v165, &unk_100957F90, qword_1007A9D70);
    v111 = v143;
    v21 = sub_10076283C();
    v112 = sub_10076281C();
    v113 = sub_10076280C();
    if (v113 >> 62)
    {
      v115 = v113;
      v116 = sub_10077158C();
      v113 = v115;
      v32 = v142;
      if (!v116)
      {
LABEL_40:

        v114 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v32 = v142;
      if (!*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }
    }

    if ((v113 & 0xC000000000000001) != 0)
    {
      v54 = v113;
      v114 = sub_10077149C();
    }

    else
    {
      if (!*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v54 = v113;
      v114 = *(v113 + 32);
    }

LABEL_41:
    v117 = sub_10076288C();
    if (!(v117 >> 62))
    {
      if (!*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_43;
    }

    v119 = v117;
    v120 = sub_10077158C();
    v117 = v119;
    if (!v120)
    {
      break;
    }

LABEL_43:
    if ((v117 & 0xC000000000000001) != 0)
    {
      v118 = sub_10077149C();
      goto LABEL_46;
    }

    if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v118 = *(v117 + 32);

LABEL_46:

      goto LABEL_49;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v118 = 0;
LABEL_49:
  v121 = [v111 traitCollection];
  v122 = v147;
  sub_100140784(v21, v112, v114, v118, v121, v141, v147, a5, a6 - v103 - v110);

  v45 = v122;

  v31 = v140;
LABEL_50:

  return (*(v32 + 8))(v45, v31);
}

void *sub_100577FCC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10094E260, qword_100796150);
  __chkstk_darwin(v2 - 8);
  v171 = &v168 - v3;
  v4 = sub_10076350C();
  v198 = *(v4 - 8);
  v199 = v4;
  __chkstk_darwin(v4);
  v6 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v172 = &v168 - v8;
  __chkstk_darwin(v9);
  v192 = &v168 - v10;
  v11 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v11 - 8);
  v13 = &v168 - v12;
  v14 = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v196 = *(v14 - 8);
  v197 = v14;
  __chkstk_darwin(v14);
  v195 = &v168 - v15;
  v16 = sub_10076749C();
  v206 = *(v16 - 8);
  v207 = v16;
  __chkstk_darwin(v16);
  v205 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_1007679DC();
  *&v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v194 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076997C();
  v202 = *(v19 - 8);
  v203 = v19;
  __chkstk_darwin(v19);
  v201 = &v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076443C();
  v220 = *(v21 - 8);
  v221 = v21;
  __chkstk_darwin(v21);
  v23 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v219 = &v168 - v25;
  v223 = sub_10076747C();
  v218 = *(v223 - 1);
  __chkstk_darwin(v223);
  v204 = &v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v224 = &v168 - v28;
  v29 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  __chkstk_darwin(v29 - 8);
  v193 = &v168 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v222 = &v168 - v32;
  v33 = sub_10076469C();
  __chkstk_darwin(v33 - 8);
  v34 = sub_10076C38C();
  v200 = *(v34 - 8);
  __chkstk_darwin(v34);
  v217 = &v168 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1007673CC();
  v208 = *(v36 - 8);
  v209 = v36;
  __chkstk_darwin(v36);
  v38 = &v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075ECBC();
  sub_10057C980(&qword_10095D830, 255, &type metadata accessor for AppSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_10076332C();
  v40 = v261[0];
  if (!v261[0])
  {
    return result;
  }

  v169 = v6;
  v41 = sub_10075ECAC();
  v214 = v38;
  v215 = v41;
  sub_10076285C();
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C32C();
  sub_10076C2FC();
  v43 = v42;
  v45 = v44;
  v175 = v40;
  v46 = sub_10075EC9C();
  v176 = v34;
  if (v46)
  {
    v191 = sub_1007673BC();
  }

  else
  {
    v191 = 0;
  }

  v47 = v212;

  v181 = sub_10076BB6C();
  v182 = v48;
  v49 = sub_10076BBEC();
  v183 = v50;
  v184 = v49;
  v51 = sub_10076BB0C();

  if (v51 && (v52 = sub_10076518C(), , v52))
  {
    v53 = sub_10076C3EC();
    v185 = v54;
    v186 = v53;
  }

  else
  {
    v185 = 0;
    v186 = 0;
  }

  v55 = v213;
  v216 = sub_10076282C();
  v56 = v222;
  _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  (*(v47 + 56))(v56, 0, 1, v55);
  v211 = sub_10076284C();
  v170 = sub_10076286C();
  swift_getKeyPath();
  sub_10076338C();

  v57 = v261[5];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v58 = v223;
  v59 = sub_10000A61C(v223, qword_1009A0690);
  v188 = *(v218 + 16);
  v189 = v218 + 16;
  v188(v224, v59, v58);
  v60 = sub_10077071C();
  v173 = v13;
  v174 = a1;
  if (v60)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v61 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v61 = qword_100944CA0;
  }

  v62 = v221;
  v63 = sub_10000A61C(v221, v61);
  v64 = v220;
  (*(v220 + 16))(v23, v63, v62);
  (*(v64 + 32))(v219, v23, v62);
  v65 = [v57 preferredContentSizeCategory];
  sub_10077084C();

  sub_1007643EC();
  sub_10076441C();
  sub_10076746C();
  sub_10076745C();
  v187 = sub_10076DDDC();
  swift_allocObject();
  v190 = sub_10076DDBC();
  v66 = objc_opt_self();
  v179 = v66;
  v67 = [v66 preferredFontForTextStyle:UIFontTextStyleBody];
  v68 = sub_10076C04C();
  v261[3] = v68;
  v69 = sub_10057C980(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v261[4] = v69;
  v178 = v69;
  v70 = sub_10000DB7C(v261);
  v71 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72 = *(v68 - 8);
  v73 = *(v72 + 104);
  v180 = v72 + 104;
  v177 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v73(v70, enum case for Feature.measurement_with_labelplaceholder(_:), v68);
  sub_10076C90C();
  sub_10000CD74(v261);
  v74 = v201;
  sub_10076996C();
  sub_10076994C();
  v210 = v57;
  v75 = v203;
  v202 = *(v202 + 8);
  (v202)(v74, v203);
  v76 = [v66 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v260[3] = v68;
  v260[4] = v69;
  v77 = sub_10000DB7C(v260);
  v73(v77, v71, v68);
  sub_10076C90C();
  sub_10000CD74(v260);
  sub_10076996C();
  sub_10076994C();
  v78 = v202;
  (v202)(v74, v75);
  v79 = [v179 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v259[3] = v68;
  v259[4] = v178;
  v80 = sub_10000DB7C(v259);
  v73(v80, v177, v68);
  sub_10076C90C();
  sub_10000CD74(v259);
  sub_10076996C();
  sub_10076994C();
  v78(v74, v75);
  v81 = v216;
  if ((sub_10001D420() & (v81 != 0)) == 1)
  {
    v82 = objc_allocWithZone(sub_10076DEDC());
    v83 = v210;
    v84 = sub_10076DECC();
    v85 = v193;
    sub_100016E2C(v222, v193, &unk_100957F90, qword_1007A9D70);
    v86 = v212;
    v87 = *(v212 + 48);
    v88 = v213;
    if (v87(v85, 1, v213) == 1)
    {
      v89 = v194;
      _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v87(v85, 1, v88) != 1)
      {
        sub_10000CFBC(v85, &unk_100957F90, qword_1007A9D70);
      }
    }

    else
    {
      v89 = v194;
      (*(v86 + 32))(v194, v85, v88);
    }

    v92 = v84;
    sub_10001A588(v216, v89, v92, v43, v45);

    (*(v86 + 8))(v89, v88);
    v90 = v187;
    swift_allocObject();
    v91 = sub_10076DDAC();
  }

  else
  {
    v90 = v187;
    swift_allocObject();
    v91 = sub_10076DDBC();
  }

  v93 = v91;

  v94 = v211;
  if ((sub_10001D420() & (v94 != 0)) == 1)
  {
    v95.n128_f64[0] = v43;
    sub_1004EF9EC(v94, v170 & 1, v95, v45);
    swift_allocObject();
    v96 = sub_10076DDAC();
  }

  else
  {
    swift_allocObject();
    v96 = sub_10076DDBC();
  }

  v97 = v96;
  v188(v204, v224, v223);
  v258 = &protocol witness table for LayoutViewPlaceholder;
  v257 = v90;
  v98 = v90;
  v99 = v190;
  v256 = v190;
  v255 = 0;
  *&v253[40] = 0u;
  v254 = 0u;
  sub_10000A570(v261, v253);
  sub_10000A570(v260, &v252);
  v251 = 0;
  v249 = 0u;
  v250 = 0u;
  v248 = 0;
  v246 = 0u;
  v247 = 0u;

  v100 = sub_10076DDCC();
  v245 = &protocol witness table for LayoutViewPlaceholder;
  v244 = v98;
  v243 = v100;
  v242 = 0;
  v240 = 0u;
  v241 = 0u;
  v239 = 0;
  v237 = 0u;
  v238 = 0u;
  v236 = 0;
  v234 = 0u;
  v235 = 0u;
  v233 = 0;
  v232 = 0u;
  *&v231[40] = 0u;
  sub_10000A570(v259, v231);
  v230 = &protocol witness table for LayoutViewPlaceholder;
  v229 = v98;
  v227 = &protocol witness table for LayoutViewPlaceholder;
  v228 = v93;
  v226 = v98;
  v225 = v97;
  v101 = v205;
  sub_10076748C();
  v102 = sub_10076DEDC();
  v103 = sub_10000A5D4(&unk_100942870, &qword_100784460);
  v104 = swift_allocObject();
  v212 = xmmword_1007841E0;
  *(v104 + 16) = xmmword_1007841E0;
  v105 = v210;
  *(v104 + 32) = v210;
  v106 = v105;
  v213 = v102;
  v107 = sub_10076DEEC();
  sub_10057C980(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v108 = v207;
  sub_10076D2AC();

  (*(v206 + 8))(v101, v108);
  sub_10000CD74(v259);
  sub_10000CD74(v260);
  sub_10000CD74(v261);
  (*(v220 + 8))(v219, v221);
  (*(v218 + 8))(v224, v223);
  sub_10000CFBC(v222, &unk_100957F90, qword_1007A9D70);
  if ((v191 & 1) == 0)
  {

    (*(v200 + 8))(v217, v176);
    return (*(v208 + 8))(v214, v209);
  }

  v109 = v195;
  sub_10076ABBC();
  swift_getKeyPath();
  v110 = v174;
  sub_10076338C();

  v111 = v261[0];
  v112 = swift_allocObject();
  *(v112 + 16) = v212;
  *(v112 + 32) = v111;
  v113 = v111;
  v114 = sub_10076DEEC();
  sub_10001CE64();
  v115 = v197;
  sub_10076D3EC();

  (*(v196 + 8))(v109, v115);
  v224 = sub_10076283C();
  v116 = sub_10076281C();
  v117 = sub_10076280C();
  if (v117 >> 62)
  {
    v118 = v117;
    v119 = sub_10077158C();
    v117 = v118;
    if (v119)
    {
      goto LABEL_34;
    }

LABEL_40:

    v103 = 0;
    goto LABEL_41;
  }

  if (!*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_34:
  if ((v117 & 0xC000000000000001) != 0)
  {
    v103 = sub_10077149C();
  }

  else
  {
    if (!*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_76;
    }

    v103 = *(v117 + 32);
  }

LABEL_41:
  v120 = sub_10076288C();
  if (v120 >> 62)
  {
    v121 = v120;
    v122 = sub_10077158C();
    v120 = v121;
    if (v122)
    {
      goto LABEL_43;
    }

LABEL_48:

    v223 = 0;
    goto LABEL_49;
  }

  if (!*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

LABEL_43:
  if ((v120 & 0xC000000000000001) != 0)
  {
    v223 = sub_10077149C();
  }

  else
  {
    if (!*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }

    v223 = *(v120 + 32);
  }

LABEL_49:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v123 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_10076338C();

  v99 = v261[0];
  sub_100299B1C(v173);

  v110 = sub_10076283C();
  v113 = sub_10076281C();
  v124 = sub_10076280C();
  if (v124 >> 62)
  {
    v125 = v124;
    v126 = sub_10077158C();
    v124 = v125;
    v114 = v214;
    if (v126)
    {
LABEL_51:
      if ((v124 & 0xC000000000000001) == 0)
      {
        if (!*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_80;
        }

        v99 = *(v124 + 32);

        goto LABEL_54;
      }

LABEL_76:
      v99 = sub_10077149C();
LABEL_54:

      goto LABEL_57;
    }
  }

  else
  {
    v114 = v214;
    if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }
  }

  v99 = 0;
LABEL_57:
  v127 = sub_10076288C();
  if (v127 >> 62)
  {
    v130 = v127;
    v131 = sub_10077158C();
    v127 = v130;
    v222 = v103;
    if (v131)
    {
LABEL_59:
      if ((v127 & 0xC000000000000001) == 0)
      {
        if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v129 = *(v127 + 32);

LABEL_62:

          goto LABEL_65;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        v220 = sub_10077158C();
        if (v99)
        {
          goto LABEL_69;
        }

        goto LABEL_82;
      }

LABEL_78:
      v129 = sub_10077149C();
      goto LABEL_62;
    }
  }

  else
  {
    v128 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v222 = v103;
    if (v128)
    {
      goto LABEL_59;
    }
  }

  v129 = 0;
LABEL_65:
  v132 = sub_1007673BC();
  v221 = v116;
  if ((v132 & 1) == 0)
  {

    v136 = v198;
    v137 = v192;
    (*(v198 + 104))(v192, enum case for LockupMediaLayout.DisplayType.none(_:), v199);
LABEL_72:
    v140 = v173;
    v141 = v200;
LABEL_104:
    type metadata accessor for LockupMediaView(0);
    v166 = sub_100630CB4();
    swift_getObjectType();
    v167 = v214;
    sub_100141F14(v224, v221, v222, v223, v140, v137, v166, v214, v43, v45);

    swift_unknownObjectRelease();

    (*(v136 + 8))(v137, v199);
    sub_10000CFBC(v140, &unk_1009467E0, qword_10078CB50);
    (*(v141 + 8))(v217, v176);
    return (*(v208 + 8))(v167, v209);
  }

  if (v113 | v110)
  {
    v138 = v172;
    sub_10076D3AC();

    v136 = v198;
    v139 = v199;
    (*(v198 + 104))(v138, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v199);
    v137 = v192;
    (*(v136 + 32))(v192, v138, v139);
    goto LABEL_72;
  }

  v134 = sub_10057F8EC(v99, v129, 0, 1, v133);
  v113 = v134;
  v114 = (v134 >> 62);
  if (v134 >> 62)
  {
    goto LABEL_81;
  }

  v220 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v99)
  {
LABEL_69:
    v135 = sub_1007601CC();
    goto LABEL_83;
  }

LABEL_82:
  v135 = 0;
LABEL_83:
  v142 = sub_10057FC34(v135);

  LODWORD(v218) = v142;
  if (v99)
  {
    v143 = sub_1007601CC();
  }

  else
  {
    v143 = 0;
  }

  v145 = v208;
  v144 = v209;
  v146 = v171;
  (*(v208 + 16))(v171, v214, v209);
  v147.n128_f64[0] = (*(v145 + 56))(v146, 0, 1, v144);
  v148 = sub_10058015C(v143, v146, v147);

  sub_10000CFBC(v146, &qword_10094E260, qword_100796150);
  if (v114)
  {
    result = sub_10077158C();
    v149 = v169;
    if (result)
    {
      goto LABEL_88;
    }

LABEL_94:

    goto LABEL_95;
  }

  result = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v149 = v169;
  if (!result)
  {
    goto LABEL_94;
  }

LABEL_88:
  if ((v113 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
LABEL_91:

    v150 = sub_10076BDCC();

    if (v150)
    {

      v136 = v198;
      v151 = v199;
      v152 = v172;
      (*(v198 + 104))(v172, enum case for LockupMediaLayout.DisplayType.landscape(_:), v199);
LABEL_103:
      v137 = v192;
      v165 = v173;
      v141 = v200;
      (*(v136 + 32))(v192, v152, v151);
      v140 = v165;
      goto LABEL_104;
    }

LABEL_95:
    v153 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v154 = v148;
    v155 = v198;
    v156 = v149;
    v157 = v149;
    v151 = v199;
    v219 = *(v198 + 104);
    (v219)(v156, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v199);
    v158 = sub_1007634FC();
    v216 = *(v155 + 8);
    v216(v157, v151);
    if (((v220 >= v158) & v154) != 0 || (v153 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v219)(v157, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v151), v159 = sub_1007634FC(), v160 = v216, v216(v157, v151), ((v220 >= v159) & v218) != 0) || (v153 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v219)(v157, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v151), v161 = sub_1007634FC(), v160(v157, v151), v220 >= v161))
    {
    }

    else
    {
      v153 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v219)(v157, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v151);
      v162 = sub_1007634FC();

      v160(v157, v151);
      if (v220 != v162)
      {
        v163 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v152 = v172;
        v164 = v172;
LABEL_102:
        (v219)(v164, v163, v151);
        v136 = v198;
        goto LABEL_103;
      }
    }

    v152 = v172;
    v164 = v172;
    v163 = v153;
    goto LABEL_102;
  }

  if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_91;
  }

  __break(1u);
  return result;
}

uint64_t sub_100579B94(uint64_t a1, uint64_t a2)
{
  v277 = a2;
  v3 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v3 - 8);
  v270 = &v217[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10000A5D4(&qword_10094E260, qword_100796150);
  __chkstk_darwin(v5 - 8);
  v241 = &v217[-v6];
  v7 = sub_10076D39C();
  v259 = *(v7 - 8);
  __chkstk_darwin(v7);
  v249 = &v217[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v258 = &v217[-v10];
  v11 = sub_10076357C();
  v245 = *(v11 - 8);
  __chkstk_darwin(v11);
  v269 = &v217[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v13 - 8);
  v248 = &v217[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v273 = &v217[-v16];
  v17 = sub_10076350C();
  v260 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v217[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v239 = &v217[-v21];
  __chkstk_darwin(v22);
  v263 = &v217[-v23];
  __chkstk_darwin(v24);
  v242 = &v217[-v25];
  __chkstk_darwin(v26);
  v272 = &v217[-v27];
  v28 = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v256 = *(v28 - 8);
  v257 = v28;
  __chkstk_darwin(v28);
  v255 = &v217[-v29];
  v30 = sub_10076749C();
  v253 = *(v30 - 8);
  v254 = v30;
  __chkstk_darwin(v30);
  v252 = &v217[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_1007679DC();
  v261 = *(v32 - 1);
  v262 = v32;
  __chkstk_darwin(v32);
  v244 = &v217[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v274 = sub_10076997C();
  v250 = *(v274 - 8);
  __chkstk_darwin(v274);
  v35 = &v217[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_10076443C();
  v267 = *(v36 - 1);
  v268 = v36;
  __chkstk_darwin(v36);
  v38 = &v217[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v266 = &v217[-v40];
  v275 = sub_10076747C();
  v265 = *(v275 - 8);
  __chkstk_darwin(v275);
  v251 = &v217[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v276 = &v217[-v43];
  v44 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  __chkstk_darwin(v44 - 8);
  v243 = &v217[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46);
  v271 = &v217[-v47];
  v48 = sub_10076469C();
  __chkstk_darwin(v48 - 8);
  v49 = sub_10076C38C();
  v246 = *(v49 - 8);
  v247 = v49;
  __chkstk_darwin(v49);
  v264 = &v217[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_1007673CC();
  v279 = *(v51 - 8);
  v280 = v51;
  __chkstk_darwin(v51);
  v282 = &v217[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10075ECBC();
  sub_10057C980(&qword_10095D830, 255, &type metadata accessor for AppSearchResult, &protocol conformance descriptor for SearchResult);
  v281 = a1;
  result = sub_10076332C();
  if (!v320[0])
  {
    return result;
  }

  v240 = v19;
  v237 = v11;
  v278 = v320[0];
  sub_10075ECAC();
  v324 = _swiftEmptyArrayStorage;

  if (sub_10076BB5C())
  {
    if (qword_10093FBE0 != -1)
    {
      swift_once();
    }

    v54 = sub_100763ADC();
    sub_10000A61C(v54, qword_10099DDA0);
    sub_1007639AC();
    sub_10076BFCC();
    sub_10077019C();
    if (*((v324 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v324 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
  }

  v238 = v7;
  v55 = sub_10076282C();
  swift_getKeyPath();
  sub_10076338C();

  v56 = v320[0];
  v57 = sub_100521984(v55, v320[0]);

  sub_1000F92B4(v57);
  v58 = v282;
  sub_10076285C();
  v59 = sub_10076280C();
  if (v59 >> 62)
  {
    v136 = sub_10077158C();
    v58 = v282;

    if (v136)
    {
      goto LABEL_10;
    }

LABEL_52:

    goto LABEL_53;
  }

  v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v60)
  {
    goto LABEL_52;
  }

LABEL_10:
  if ((sub_10075EC9C() & 1) == 0 || (sub_1007673BC() & 1) == 0)
  {
    goto LABEL_52;
  }

  v61 = v281;
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C32C();
  sub_10076C22C();
  v63 = v62;
  sub_100577FCC(v61);
  v65 = v64;
  v66 = sub_10076BB6C();
  v222 = v67;
  v223 = v66;
  v68 = sub_10076BBEC();
  v224 = v69;
  v225 = v68;
  v70 = sub_10076BB0C();

  if (v70)
  {
    v71 = sub_10076518C();

    v73 = v261;
    v72 = v262;
    if (v71)
    {
      v74 = sub_10076C3EC();
      v226 = v75;
      v227 = v74;
    }

    else
    {
      v226 = 0;
      v227 = 0;
    }
  }

  else
  {
    v226 = 0;
    v227 = 0;
    v73 = v261;
    v72 = v262;
  }

  v235 = sub_10076282C();
  v76 = v271;
  _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  (v73[7])(v76, 0, 1, v72);
  v234 = sub_10076284C();
  v77 = sub_10076286C();
  swift_getKeyPath();
  sub_10076338C();

  v78 = v323;
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v79 = v275;
  v80 = sub_10000A61C(v275, qword_1009A0690);
  v81 = v265 + 16;
  v82 = *(v265 + 16);
  v82(v276, v80, v79);
  v83 = sub_10077071C();
  v236 = v17;
  v229 = v82;
  v230 = v81;
  v218 = v77;
  if ((v83 & 1) == 0)
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v84 = qword_100944CA0;
    goto LABEL_27;
  }

  if (qword_10093F520 != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v84 = qword_100944C88;
LABEL_27:
    v85 = v268;
    v86 = sub_10000A61C(v268, v84);
    v87 = v267;
    (*(v267 + 16))(v38, v86, v85);
    (*(v87 + 32))(v266, v38, v85);
    v88 = [v78 preferredContentSizeCategory];
    sub_10077084C();

    sub_1007643EC();
    sub_10076441C();
    sub_10076746C();
    sub_10076745C();
    v228 = sub_10076DDDC();
    swift_allocObject();
    v231 = sub_10076DDBC();
    v232 = objc_opt_self();
    v89 = [v232 preferredFontForTextStyle:UIFontTextStyleBody];
    v90 = sub_10076C04C();
    v321 = v90;
    v91 = sub_10057C980(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v322 = v91;
    v220 = v91;
    v92 = sub_10000DB7C(v320);
    v93 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v94 = *(v90 - 8);
    v95 = *(v94 + 104);
    v221 = v94 + 104;
    v95(v92, enum case for Feature.measurement_with_labelplaceholder(_:), v90);
    v219 = v95;
    sub_10076C90C();
    v233 = v78;
    sub_10000CD74(v320);
    sub_10076996C();
    sub_10076994C();
    v96 = *(v250 + 8);
    v96(v35, v274);
    v97 = [v232 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v319[3] = v90;
    v319[4] = v91;
    v98 = sub_10000DB7C(v319);
    v95(v98, v93, v90);
    sub_10076C90C();
    sub_10000CD74(v319);
    sub_10076996C();
    sub_10076994C();
    v96(v35, v274);
    v99 = [v232 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v318[3] = v90;
    v318[4] = v220;
    v100 = sub_10000DB7C(v318);
    v219(v100, v93, v90);
    sub_10076C90C();
    sub_10000CD74(v318);
    sub_10076996C();
    sub_10076994C();
    v96(v35, v274);
    v101 = v235;
    LODWORD(v274) = sub_10001D420() & (v101 != 0);
    if (v274 == 1)
    {
      v102 = objc_allocWithZone(sub_10076DEDC());
      v103 = v233;
      v104 = sub_10076DECC();
      v105 = v243;
      sub_100016E2C(v271, v243, &unk_100957F90, qword_1007A9D70);
      v107 = v261;
      v106 = v262;
      v108 = v261[6];
      if (v108(v105, 1, v262) == 1)
      {
        v109 = v244;
        _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v108(v105, 1, v106) != 1)
        {
          sub_10000CFBC(v105, &unk_100957F90, qword_1007A9D70);
        }
      }

      else
      {
        v109 = v244;
        (v107[4])(v244, v105, v106);
      }

      v112 = v104;
      sub_10001A588(v235, v109, v112, v63, v65);

      (v107[1])(v109, v106);
      v110 = v228;
      swift_allocObject();
      v111 = sub_10076DDAC();
    }

    else
    {
      v110 = v228;
      swift_allocObject();
      v111 = sub_10076DDBC();
    }

    v113 = v111;

    v114 = v234;
    if ((sub_10001D420() & (v114 != 0)) == 1)
    {
      v115.n128_f64[0] = v63;
      sub_1004EF9EC(v114, v218 & 1, v115, v65);
      swift_allocObject();
      v116 = sub_10076DDAC();
    }

    else
    {
      swift_allocObject();
      v116 = sub_10076DDBC();
    }

    v117 = v116;
    v229(v251, v276, v275);
    v317 = &protocol witness table for LayoutViewPlaceholder;
    v316 = v110;
    v315 = v231;
    v314 = 0;
    *&v312[40] = 0u;
    v313 = 0u;
    sub_10000A570(v320, v312);
    sub_10000A570(v319, &v311);
    v310 = 0;
    v308 = 0u;
    v309 = 0u;
    v307 = 0;
    v305 = 0u;
    v306 = 0u;

    v262 = v117;
    v118 = sub_10076DDCC();
    v304 = &protocol witness table for LayoutViewPlaceholder;
    v303 = v110;
    v302 = v118;
    v301 = 0;
    v299 = 0u;
    v300 = 0u;
    v298 = 0;
    v296 = 0u;
    v297 = 0u;
    v295 = 0;
    v293 = 0u;
    v294 = 0u;
    v292 = 0;
    v291 = 0u;
    *&v290[40] = 0u;
    sub_10000A570(v318, v290);
    v289 = &protocol witness table for LayoutViewPlaceholder;
    v288 = v110;
    v287 = v113;
    v286 = &protocol witness table for LayoutViewPlaceholder;
    v285 = v110;
    v284 = v117;
    v119 = v252;
    sub_10076748C();
    sub_10076DEDC();
    v120 = sub_10000A5D4(&unk_100942870, &qword_100784460);
    v121 = swift_allocObject();
    v274 = xmmword_1007841E0;
    *(v121 + 16) = xmmword_1007841E0;
    v122 = v233;
    *(v121 + 32) = v233;
    v123 = v122;
    v124 = sub_10076DEEC();
    sub_10057C980(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v125 = v254;
    sub_10076D2AC();

    (*(v253 + 8))(v119, v125);
    sub_10000CD74(v318);
    sub_10000CD74(v319);
    sub_10000CD74(v320);
    (*(v267 + 8))(v266, v268);
    (*(v265 + 8))(v276, v275);
    v78 = v255;
    sub_10076ABBC();
    v126 = swift_allocObject();
    *(v126 + 16) = v274;
    *(v126 + 32) = v123;
    v127 = v123;
    v38 = sub_10076DEEC();
    sub_10001CE64();
    v128 = v257;
    sub_10076D3EC();

    (*(v256 + 8))(v78, v128);
    sub_10000CFBC(v271, &unk_100957F90, qword_1007A9D70);
    v129 = sub_10076283C();
    v35 = sub_10076281C();
    v130 = sub_10076280C();
    if (v130 >> 62)
    {
      v38 = v130;
      v131 = sub_10077158C();
      v130 = v38;
    }

    else
    {
      v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v132 = v272;
    v133 = v240;
    if (v131)
    {
      if ((v130 & 0xC000000000000001) != 0)
      {
        v38 = v130;
        v128 = sub_10077149C();
      }

      else
      {
        if (!*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_121;
        }

        v38 = v130;
        v128 = *(v130 + 32);
      }
    }

    else
    {

      v128 = 0;
    }

    v134 = sub_10076288C();
    if (v134 >> 62)
    {
      v38 = v134;
      v138 = sub_10077158C();
      v134 = v38;
      v271 = v35;
      if (!v138)
      {
LABEL_57:

        v276 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v135 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v271 = v35;
      if (!v135)
      {
        goto LABEL_57;
      }
    }

    if ((v134 & 0xC000000000000001) != 0)
    {
      v38 = v134;
      v276 = sub_10077149C();
    }

    else
    {
      if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_123:
        v142 = sub_10077149C();
LABEL_71:

        goto LABEL_74;
      }

      v38 = v134;
      v276 = *(v134 + 32);
    }

LABEL_58:
    v120 = sub_10076283C();
    v78 = sub_10076281C();
    v130 = sub_10076280C();
    if (v130 >> 62)
    {
      v38 = v130;
      v139 = sub_10077158C();
      v130 = v38;
      if (!v139)
      {
        goto LABEL_65;
      }

LABEL_60:
      if ((v130 & 0xC000000000000001) == 0)
      {
        if (!*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_125;
        }

        v35 = v130;
        v38 = *(v130 + 32);

        goto LABEL_63;
      }

LABEL_121:
      v35 = v130;
      v38 = sub_10077149C();
LABEL_63:

      goto LABEL_66;
    }

    if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

LABEL_65:

    v38 = 0;
LABEL_66:
    v140 = sub_10076288C();
    if (v140 >> 62)
    {
      break;
    }

    v141 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v275 = v128;
    if (!v141)
    {
      goto LABEL_73;
    }

LABEL_68:
    if ((v140 & 0xC000000000000001) != 0)
    {
      goto LABEL_123;
    }

    if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v142 = *(v140 + 32);

      goto LABEL_71;
    }

LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
  }

  v143 = v140;
  v144 = sub_10077158C();
  v140 = v143;
  v275 = v128;
  if (v144)
  {
    goto LABEL_68;
  }

LABEL_73:

  v142 = 0;
LABEL_74:
  if ((sub_1007673BC() & 1) == 0)
  {

    v142 = v260;
    v38 = v236;
    (*(v260 + 104))(v132, enum case for LockupMediaLayout.DisplayType.none(_:), v236);
LABEL_82:
    v149 = v238;
    v147 = v259;
    goto LABEL_110;
  }

  if (v78 | v120)
  {
    v151 = v242;
    sub_10076D3AC();

    v142 = v260;
    v38 = v236;
    (*(v260 + 104))(v151, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v236);
    (*(v142 + 32))(v132, v151, v38);
    goto LABEL_82;
  }

  v146 = sub_10057F8EC(v38, v142, 0, 1, v145);
  v132 = v146;
  v147 = v146 >> 62;
  if (v146 >> 62)
  {
    goto LABEL_175;
  }

  v148 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v149 = v238;
    *&v274 = v148;
    if (v38)
    {
      v150 = sub_1007601CC();
    }

    else
    {
      v150 = 0;
    }

    LODWORD(v267) = sub_10057FC34(v150);

    v257 = v129;
    if (v38)
    {
      v152 = sub_1007601CC();
    }

    else
    {
      v152 = 0;
    }

    v153 = v279;
    v154 = v280;
    v155 = v241;
    (*(v279 + 16))(v241, v282, v280);
    v156.n128_f64[0] = (*(v153 + 56))(v155, 0, 1, v154);
    v133 = sub_10058015C(v152, v155, v156);

    sub_10000CFBC(v155, &qword_10094E260, qword_100796150);
    if (v147)
    {
      v158 = sub_10077158C();
    }

    else
    {
      v158 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v147 = v259;
    v129 = v257;
    if (!v158)
    {

      goto LABEL_97;
    }

    if ((v132 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
    }

    else
    {
      if (!*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_178;
      }
    }

    v159 = sub_10076BDCC();

    if ((v159 & 1) == 0)
    {
LABEL_97:
      v161 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v162 = v260;
      v163 = v236;
      v164 = v239;
      v268 = *(v260 + 104);
      v268(v239, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v236);
      v165 = v133;
      v166 = sub_1007634FC();
      v266 = *(v162 + 8);
      (v266)(v164, v163);
      if (((v274 >= v166) & v165) != 0)
      {

        v160 = v242;
        v167 = v242;
        v168 = v161;
      }

      else
      {
        v169 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
        v268(v164, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v163);
        v170 = sub_1007634FC();
        v171 = v266;
        (v266)(v164, v163);
        if (((v274 >= v170) & v267) == 0)
        {
          v172 = v164;
          v173 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
          v268(v164, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v163);
          v174 = sub_1007634FC();
          v171(v172, v163);
          v175 = v274 < v174;
          v176 = v172;
          v132 = v272;
          if (v175)
          {
            LODWORD(v267) = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
            (v268)(v176);
            v177 = sub_1007634FC();

            v171(v176, v163);
            if (v274 == v177)
            {
              v160 = v242;
              v178 = v242;
              v179 = v267;
            }

            else
            {
              v179 = enum case for LockupMediaLayout.DisplayType.none(_:);
              v160 = v242;
              v178 = v242;
            }
          }

          else
          {

            v160 = v242;
            v178 = v242;
            v179 = v173;
          }

          v268(v178, v179, v163);
          v38 = v163;
          v142 = v260;
          goto LABEL_108;
        }

        v160 = v242;
        v167 = v242;
        v168 = v169;
      }

      v268(v167, v168, v163);
      v38 = v163;
      v142 = v260;
      v132 = v272;
LABEL_108:
      v149 = v238;
      v147 = v259;
      v129 = v257;
      goto LABEL_109;
    }

    v142 = v260;
    v160 = v242;
    v38 = v236;
    (*(v260 + 104))(v242, enum case for LockupMediaLayout.DisplayType.landscape(_:), v236);
    v132 = v272;
LABEL_109:
    (*(v142 + 32))(v132, v160, v38);
    v133 = v240;
LABEL_110:
    v180 = sub_100630CB4();
    (*(v147 + 56))(v273, 1, 1, v149);
    v261 = v180;
    v262 = [v180 traitCollection];
    v321 = &type metadata for CGFloat;
    v322 = &protocol witness table for CGFloat;
    v320[0] = 0x4021000000000000;
    sub_10000A570(v320, v319);
    v181 = *(v142 + 16);
    v281 = v142 + 16;
    *&v274 = v181;
    v181(v263, v132, v38);
    if (v271 | v129)
    {
      goto LABEL_129;
    }

    v183 = sub_10057F8EC(v275, v276, 0, 1, v182);
    if (!(v183 >> 62))
    {
      if (!*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

LABEL_113:
      if ((v183 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
        if (!*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_175:
          v148 = sub_10077158C();
          continue;
        }
      }

      sub_10076BEFC();
      sub_10076D3AC();

      goto LABEL_130;
    }

    break;
  }

  v184 = v183;
  v185 = sub_10077158C();
  v183 = v184;
  if (v185)
  {
    goto LABEL_113;
  }

LABEL_128:

LABEL_129:
  sub_10076D3AC();
LABEL_130:
  sub_100016E2C(v273, v248, &unk_1009467E0, qword_10078CB50);
  sub_10076354C();
  sub_10000CD74(v320);
  v186 = v249;
  sub_10076355C();
  sub_10076D36C();
  v187 = *(v147 + 8);
  v147 += 8;
  v187(v186, v149);
  if (v271)
  {
    v133 = v142;

    sub_10076B84C();
    v188 = sub_10076BFCC();
    v189 = sub_10049D5BC(0, 1, 1, _swiftEmptyArrayStorage);
    v147 = *(v189 + 2);
    v190 = *(v189 + 3);
    v191 = v147 + 1;
    if (v147 >= v190 >> 1)
    {
      goto LABEL_172;
    }

    goto LABEL_132;
  }

  if (v129)
  {

    v193 = sub_10076BFCC();
    v189 = sub_10049D5BC(0, 1, 1, _swiftEmptyArrayStorage);
    v195 = *(v189 + 2);
    v194 = *(v189 + 3);
    if (v195 >= v194 >> 1)
    {
      v189 = sub_10049D5BC((v194 > 1), v195 + 1, 1, v189);
    }

    (*(v245 + 8))(v269, v237);
    sub_10000CFBC(v273, &unk_1009467E0, qword_10078CB50);
    *(v189 + 2) = v195 + 1;
    v196 = &v189[16 * v195];
    *(v196 + 4) = v193;
    v196[40] = 0;
    goto LABEL_180;
  }

  v197 = sub_1007634FC();
  v199 = sub_10057F8EC(v275, v276, v197, 0, v198);
  sub_10076359C();
  v157 = v199;
  if (!(v199 >> 62))
  {
    result = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_139;
    }

LABEL_179:

    (*(v245 + 8))(v269, v237);
    sub_10000CFBC(v273, &unk_1009467E0, qword_10078CB50);
    v189 = _swiftEmptyArrayStorage;
    goto LABEL_180;
  }

LABEL_178:
  v213 = v157;
  result = sub_10077158C();
  v157 = v213;
  if (!result)
  {
    goto LABEL_179;
  }

LABEL_139:
  v257 = v129;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v200 = 0;
  v268 = (v157 & 0xC000000000000001);
  v201 = (v142 + 88);
  LODWORD(v267) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  LODWORD(v259) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
  v263 = (v142 + 8);
  v189 = _swiftEmptyArrayStorage;
  v265 = result;
  v266 = v157;
  while (2)
  {
    if (v268)
    {
      v191 = sub_10077149C();
    }

    else
    {
      v191 = *(v157 + 8 * v200 + 32);
    }

    v202 = v236;
    (v274)(v133, v132, v236);
    v203 = (*v201)(v133, v202);
    if (v203 == v267)
    {
      (*v263)(v133, v202);
      goto LABEL_147;
    }

    if (v203 != v259)
    {
      v204 = sub_10076BDCC();
      (*v263)(v133, v236);
      if (v276)
      {
        goto LABEL_151;
      }

LABEL_148:
      if (!v275)
      {
        goto LABEL_162;
      }

      goto LABEL_149;
    }

LABEL_147:
    v204 = 0;
    if (!v276)
    {
      goto LABEL_148;
    }

LABEL_151:
    v188 = v276;
    v206 = sub_10076C41C();
    if (!(v206 >> 62))
    {
      if (*((v206 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_153;
      }

LABEL_161:

      if (!v275)
      {
LABEL_162:
        v205 = 0;
LABEL_163:
        sub_1007601EC();
        v210 = v270;
        sub_10007AFB4(v205, v270);

        sub_100770ACC();
        v208 = sub_10076BFCC();
        sub_100125E90(v210);
LABEL_164:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v189 = sub_10049D5BC(0, *(v189 + 2) + 1, 1, v189);
        }

        v147 = *(v189 + 2);
        v211 = *(v189 + 3);
        if (v147 >= v211 >> 1)
        {
          v189 = sub_10049D5BC((v211 > 1), v147 + 1, 1, v189);
        }

        ++v200;

        *(v189 + 2) = v147 + 1;
        v212 = &v189[16 * v147];
        *(v212 + 4) = v208;
        v212[40] = v204 & 1;
        v157 = v266;
        v133 = v240;
        if (v265 == v200)
        {

          (*(v245 + 8))(v269, v237);
          sub_10000CFBC(v273, &unk_1009467E0, qword_10078CB50);
          v142 = v260;
          goto LABEL_180;
        }

        continue;
      }

      goto LABEL_149;
    }

    break;
  }

  v188 = v206;
  v209 = sub_10077158C();
  v206 = v188;
  if (!v209)
  {
    goto LABEL_161;
  }

LABEL_153:
  if ((v206 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
    goto LABEL_156;
  }

  v190 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v190)
  {

LABEL_156:

    sub_10076C02C();
    sub_10076B84C();
    v207 = sub_10076BE5C();

    if (v207)
    {
      v208 = sub_10076BFCC();

      v132 = v272;
      goto LABEL_164;
    }

    v132 = v272;
    if (!v275)
    {
      goto LABEL_162;
    }

LABEL_149:
    v205 = sub_1007601CC();
    goto LABEL_163;
  }

  __break(1u);
LABEL_172:
  v189 = sub_10049D5BC((v190 > 1), v191, 1, v189);
LABEL_132:

  (*(v245 + 8))(v269, v237);
  sub_10000CFBC(v273, &unk_1009467E0, qword_10078CB50);
  *(v189 + 2) = v191;
  v192 = &v189[16 * v147];
  *(v192 + 4) = v188;
  v192[40] = 0;
  v142 = v133;
LABEL_180:
  v214 = *(v189 + 2);
  if (v214)
  {
    v320[0] = _swiftEmptyArrayStorage;
    sub_1007714EC();
    v215 = 32;
    do
    {

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      v215 += 16;
      --v214;
    }

    while (v214);
    swift_unknownObjectRelease();

    (*(v142 + 8))(v272, v236);
    v216 = v320[0];
  }

  else
  {
    swift_unknownObjectRelease();

    (*(v142 + 8))(v132, v236);
    v216 = _swiftEmptyArrayStorage;
  }

  sub_1000F92B4(v216);
  (*(v246 + 8))(v264, v247);
  v58 = v282;
LABEL_53:
  v137._rawValue = v324;
  sub_100760BAC(v137);

  return (*(v279 + 8))(v58, v280);
}

void sub_10057C2E4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots);
  v3 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
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
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_10077149C();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    type metadata accessor for BorderedScreenshotView(0);
    sub_10057C980(&qword_10094A410, 255, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
    v9 = v8;
    sub_10077140C();
    sub_100760BEC();
    sub_100016C74(v29);
    v10 = *&v9[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    sub_10075FCEC(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_1009602D0) setImage:0];
    type metadata accessor for VideoView(0);
    sub_10057C980(&qword_100957FA0, 255, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v14 = v13;
    sub_10077140C();
    sub_100760BEC();

    sub_100016C74(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView);
  v16 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v17 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  sub_10075FCEC(v31, v18);

  v19 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView);
  v20 = *&v19[OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v21 = *(v20 + 16);
  if (v21)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v19;

    v22 = 32;
    do
    {
      v23 = *(v20 + v22);
      if (swift_dynamicCastClass())
      {
        v24 = v23;
        v32.value.super.isa = 0;
        v32.is_nil = 0;
        sub_10075FCEC(v32, v25);
        sub_10075FD2C();
        sub_10057C980(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_100760BFC();
      }

      v22 += 16;
      --v21;
    }

    while (v21);
  }

  v26 = *(v15 + v16);
  sub_10075FD2C();
  sub_10057C980(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v27 = v26;
  sub_100760BFC();
}

void sub_10057C714()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_shouldDisplayMedia) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsCalculator) = 0;
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  *v3 = 0;
  v3[1] = 0;
  sub_10077156C();
  __break(1u);
}

id sub_10057C80C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10057C980(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v7 = v2;
    v8 = sub_100770EEC();

    if (v8)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v4 = v9;
        [v9 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v2 addSubview:v10];
  }

  sub_10057E5D8();

  return [v2 setNeedsLayout];
}

uint64_t sub_10057C980(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10057C9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v24 = a3;
  v7 = sub_10076350C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10000A5D4(&qword_10094E260, qword_100796150);
  __chkstk_darwin(v11 - 8);
  v13 = &v22[-v12];
  v23 = sub_10057FC34(a1);
  v14 = sub_1007673CC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  v16.n128_f64[0] = (*(v15 + 56))(v13, 0, 1, v14);
  v17 = sub_10058015C(a1, v13, v16);
  sub_10000CFBC(v13, &qword_10094E260, qword_100796150);
  v18 = *(v8 + 16);
  v18(v10, v4, v7);
  v19 = (*(v8 + 88))(v10, v7);
  if (v19 != enum case for LockupMediaLayout.DisplayType.oneUp(_:))
  {
    if (v19 == enum case for LockupMediaLayout.DisplayType.twoUp(_:) || v19 == enum case for LockupMediaLayout.DisplayType.threeUp(_:))
    {
      if (v17)
      {
        goto LABEL_11;
      }

      if (v23)
      {
        goto LABEL_9;
      }
    }

    else if (((v19 == enum case for LockupMediaLayout.DisplayType.fourUp(_:)) & v17) != 0)
    {
      goto LABEL_11;
    }

    v18(v24, v4, v7);
    return (*(v8 + 8))(v10, v7);
  }

  if (v17)
  {
LABEL_11:
    (*(v8 + 8))(v10, v7);
    v20 = &enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    return (*(v8 + 104))(v24, *v20, v7);
  }

  if (v23)
  {
LABEL_9:
    (*(v8 + 8))(v10, v7);
    v20 = &enum case for LockupMediaLayout.DisplayType.threeUp(_:);
    return (*(v8 + 104))(v24, *v20, v7);
  }

  (*(v8 + 104))(v24, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v7);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10057CD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_10076D39C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10076350C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v12 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v12 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = v20 - v17;
  v22[3] = &type metadata for CGFloat;
  v22[4] = &protocol witness table for CGFloat;
  v22[0] = 0x4021000000000000;
  (*(v4 + 16))(v20 - v17, a1, v3, v16);
  (*(v4 + 56))(v18, 0, 1, v3);
  (*(v6 + 104))(v11, enum case for LockupMediaLayout.DisplayType.none(_:), v5);
  sub_10000A570(v22, v21);
  (*(v6 + 16))(v8, v11, v5);
  if (_swiftEmptyArrayStorage >> 62 && sub_10077158C())
  {
    sub_10077149C();
    sub_10076BEFC();
    sub_10076D3AC();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10076D3AC();
  }

  sub_100016E2C(v18, v14, &unk_1009467E0, qword_10078CB50);
  sub_10076354C();
  (*(v6 + 8))(v11, v5);
  sub_10000CFBC(v18, &unk_1009467E0, qword_10078CB50);
  return sub_10000CD74(v22);
}

uint64_t sub_10057D044()
{
  v0 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = sub_10076D39C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10076350C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076357C();
  sub_10000DB18(v9, qword_10095D838);
  sub_10000A61C(v9, qword_10095D838);
  v11[4] = &type metadata for CGFloat;
  v11[5] = &protocol witness table for CGFloat;
  v11[1] = 0x4021000000000000;
  (*(v6 + 104))(v8, enum case for LockupMediaLayout.DisplayType.none(_:), v5);
  sub_10076D3AC();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10076354C();
}

id sub_10057D278()
{
  v1 = sub_10000A5D4(&qword_10095CE50, &unk_1007AA9B8);
  __chkstk_darwin(v1);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews] = _swiftEmptyArrayStorage;
  type metadata accessor for BorderedScreenshotView(0);
  sub_10076D4CC();
  sub_10057F544();
  sub_10076E18C();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView] = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  if (qword_1009408B8 != -1)
  {
    swift_once();
  }

  v3 = sub_10076357C();
  v4 = sub_10000A61C(v3, qword_10095D838);
  (*(*(v3 - 8) + 16))(&v0[v2], v4, v3);
  v5 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  if (qword_10093F5B0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v7 = sub_10000A61C(v6, qword_10099CB78);
  sub_100125EEC(v7, &v0[v5]);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform] = 0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  v9 = enum case for ScreenshotsDisplayStyle.standard(_:);
  v10 = sub_1007673CC();
  (*(*(v10 - 8) + 104))(&v0[v8], v9, v10);
  v13.receiver = v0;
  v13.super_class = type metadata accessor for LockupMediaView(0);
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v11;
}

void (*sub_10057D530(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10057D584;
}

void sub_10057D584(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100580AE0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_1000ACA5C();
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

    sub_10057E5D8();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_100580AE0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_1000ACA5C();
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
    [a1[1] addSubview:v19];
  }

  sub_10057E5D8();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

void *sub_10057D820()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
  }

  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView);
  if (v4)
  {
    v5 = v4;
    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
  }

  v6 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    sub_1000ACA5C();

    v8 = sub_10077157C();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_10077168C();
    sub_1000ACA5C();
    v8 = v7;
  }

  sub_1000F9270(v8);
  return _swiftEmptyArrayStorage;
}

void sub_10057D9D0()
{
  v1 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v18 = v0;
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
    v6 = sub_10077158C();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;

    swift_beginAccess();
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_10077149C();
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      sub_100125EEC(v18 + v7, v3);
      v11 = &v10[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      sub_100125E2C(v3, v11);
      swift_endAccess();
      v12 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
      v13 = *&v10[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
      sub_1007638EC();

      v14 = *&v10[v12];
      v15 = *(v11 + 48);
      v16 = v14;
      v17 = v15;
      sub_1007638DC();

      [v10 setNeedsLayout];
      sub_100125E90(v3);
    }

    while (v6 != v8);
  }
}

void sub_10057DBD4()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6 >> 62)
  {
    v7 = sub_10077158C();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
    v20 = v6 & 0xC000000000000001;
    v21 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform;

    swift_beginAccess();
    v9 = 0;
    do
    {
      if (v20)
      {
        v10 = sub_10077149C();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      *&v10[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform] = *(v1 + v21);
      swift_retain_n();

      sub_100124EE0();

      sub_100125EEC(v1 + v8, v4);
      v12 = &v11[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      sub_100125E2C(v4, v12);
      swift_endAccess();
      v13 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
      v14 = *&v11[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
      sub_1007638EC();

      v15 = *&v11[v13];
      v16 = *(v12 + 48);
      v17 = v15;
      v18 = v16;
      sub_1007638DC();

      [v11 setNeedsLayout];
      sub_100125E90(v4);
    }

    while (v7 != v9);
  }
}

uint64_t sub_10057DE20()
{
  v16 = sub_10076D1FC();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076357C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007635AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LockupMediaView(0);
  v17.receiver = v0;
  v17.super_class = v12;
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v13 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v13], v4);
  v14 = sub_10057D820();
  sub_10016EA00(v14);

  sub_10076358C();
  [v0 bounds];
  sub_10076351C();
  (*(v1 + 8))(v3, v16);
  return (*(v9 + 8))(v11, v8);
}

double sub_10057E0E0(double a1, double a2)
{
  v3 = v2;
  v4 = sub_1007635AC();
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  __chkstk_darwin(v4);
  v48 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1007673CC();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076350C();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v41 = &v38 - v13;
  v14 = sub_10076357C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  v40 = &v38 - v19;
  v21 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v22 = *(v15 + 16);
  v22(v20, v3 + v21, v14);
  v39 = v14;
  v22(v17, v3 + v21, v14);
  sub_10076352C();
  v23 = *(v15 + 8);
  v43 = v15 + 8;
  v44 = v23;
  v23(v17, v14);
  v24 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  v38 = v3;
  swift_beginAccess();
  v25 = v3 + v24;
  v26 = v42;
  v27 = v45;
  (*(v7 + 16))(v42, v25, v45);

  sub_10057C9CC(v28, v26, v41);

  (*(v7 + 8))(v26, v27);
  (*(v46 + 8))(v11, v47);
  v29 = v40;
  sub_10076353C();
  v30 = v39;
  v22(v17, v29, v39);
  v31 = sub_10057D820();
  sub_10016EA00(v31);

  v32 = v48;
  sub_10076358C();
  sub_100580AE0(&qword_10095D8C8, &type metadata accessor for LockupMediaLayout, &protocol conformance descriptor for LockupMediaLayout);
  v33 = v32;
  v34 = v49;
  sub_10076D2AC();
  v36 = v35;
  (*(v50 + 8))(v33, v34);
  v44(v29, v30);
  return v36;
}

void sub_10057E5D8()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076350C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076357C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView])
  {

    sub_10057EC70();
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v14 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, &v1[v14], v9);
    sub_10076352C();
    (*(v10 + 8))(v12, v9);
    v15 = sub_1007634FC();
    (*(v6 + 8))(v8, v5);
    if (__OFSUB__(v15, 1))
    {
      goto LABEL_32;
    }

    v16 = (v15 - 1) & ~((v15 - 1) >> 63);
  }

  else
  {
    v17 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, &v1[v17], v9);
    sub_10076352C();
    (*(v10 + 8))(v12, v9);
    v16 = sub_1007634FC();
    (*(v6 + 8))(v8, v5);
  }

  v18 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  v36 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform;
  v19 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v20 = *&v1[v18];
        if (v20 >> 62)
        {
          if (sub_10077158C() == v16)
          {
            return;
          }
        }

        else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) == v16)
        {
          return;
        }

        v21 = *&v1[v18];
        if (!(v21 >> 62))
        {
          break;
        }

        if (sub_10077158C() >= v16)
        {
          goto LABEL_21;
        }

LABEL_15:
        swift_beginAccess();
        sub_10000A5D4(&qword_10095CE68, &unk_1007AA9D0);
        sub_10076E15C();
        swift_endAccess();
        v22 = v37;
        *&v37[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform] = *&v1[v36];
        swift_retain_n();

        sub_100124EE0();

        sub_100125EEC(&v1[v19], v4);
        v23 = &v22[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration];
        swift_beginAccess();
        sub_100125E2C(v4, v23);
        swift_endAccess();
        v24 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
        v25 = *&v22[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
        sub_1007638EC();

        v26 = *&v22[v24];
        v27 = *(v23 + 48);
        v28 = v26;
        v29 = v27;
        sub_1007638DC();

        [v22 setNeedsLayout];
        sub_100125E90(v4);
        swift_beginAccess();
        v30 = v22;
        sub_10077019C();
        if (*((*&v1[v18] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v18] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        swift_endAccess();
        [v1 addSubview:v30];
      }

      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) < v16)
      {
        goto LABEL_15;
      }

LABEL_21:
      swift_beginAccess();
      v31 = *&v1[v18];
      if (!(v31 >> 62))
      {
        break;
      }

      if (sub_10077158C())
      {
        goto LABEL_23;
      }

LABEL_10:
      swift_endAccess();
    }

    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_23:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v1[v18] = v31;
    if (v31 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v31 = sub_1004BE250(v31);
    }

    v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      break;
    }

    v34 = v33 - 1;
    v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 0x20);
    *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) = v34;
    *&v1[v18] = v31;
    swift_endAccess();
    v37 = v35;
    swift_beginAccess();
    sub_10000A5D4(&qword_10095CE68, &unk_1007AA9D0);
    sub_10076E17C();
    swift_endAccess();
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

id sub_10057EC30@<X0>(void *a1@<X8>)
{
  type metadata accessor for BorderedScreenshotView(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_10057EC70()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;

    return;
  }

  v4 = sub_10077158C();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v9 = v2;

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
      swift_beginAccess();
      sub_10000A5D4(&qword_10095CE68, &unk_1007AA9D0);
      sub_10076E17C();
      swift_endAccess();
      v8 = *&v7[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
      sub_10075FCAC();
    }

    while (v4 != v5);

    v2 = v9;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_10057EDF4(__n128 a1)
{
  v2 = v1;
  v3 = sub_1007673CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057EC70();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + qword_1009602F8);
    if (v9)
    {
      aBlock[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005F04D8;
      aBlock[3] = &unk_10089A2C8;
      v10 = _Block_copy(aBlock);
      v11 = v9;
      [v11 exitFullScreenAnimated:0 completionHandler:v10];
      _Block_release(v10);
    }

    v12 = *&v8[qword_1009602F0];
    if (v12)
    {
      v13 = v12;
      sub_10076050C();

      v8 = v13;
    }
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_100580AE0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v16 = [v15 superview];
    if (!v16)
    {
LABEL_12:

      goto LABEL_13;
    }

    v17 = v16;
    sub_1000ACA5C();
    v18 = v2;
    v19 = sub_100770EEC();

    if (v19)
    {
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v15 = v20;
        [v20 removeFromSuperview];
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    [v2 addSubview:v21];
  }

  sub_10057E5D8();
  [v2 setNeedsLayout];
  v23 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
  v24 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
  if (v24)
  {
    [v24 removeFromSuperview];
    v25 = *&v2[v23];
  }

  else
  {
    v25 = 0;
  }

  *&v2[v23] = 0;

  [v2 setNeedsLayout];
  (*(v4 + 104))(v6, enum case for ScreenshotsDisplayStyle.standard(_:), v3);
  v26 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v4 + 24))(&v2[v26], v6, v3);
  swift_endAccess();
  [v2 setNeedsLayout];
  return (*(v4 + 8))(v6, v3);
}