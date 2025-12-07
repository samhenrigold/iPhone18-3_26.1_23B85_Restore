id sub_100001DD0(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = *a1;
  v9 = *(v7 + *a1);
  if (v9)
  {
    v10 = *(v7 + *a1);
  }

  else
  {
    v11 = sub_1000051E4(a2, a3, a4, a5, a6, a7);
    v12 = *(v7 + v8);
    *(v7 + v8) = v11;
    v10 = v11;

    v9 = 0;
  }

  v13 = v9;
  return v10;
}

id sub_100001E30()
{
  v1 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.152941176 green:0.152941176 blue:0.152941176 alpha:1.0];
    [v4 setBackgroundColor:v5];

    v6 = [v4 layer];

    v7 = sub_10001A190();

    [v6 setCompositingFilter:v7];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_100001F84(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_cellSpacing] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemRows] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemCells] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowBackgroundViews] = &_swiftEmptyArrayStorage;
  v10 = &v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_lastLayoutSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowSideMargin] = 0x402A000000000000;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_footerBackgroundViewHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView] = 0;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___listStackView] = 0;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView] = 0;
  v11 = &v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_blendMode];
  *v11 = sub_10001A1C0();
  v11[1] = v12;
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items] = &_swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked] = 0;
  v56.receiver = v4;
  v56.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  v14 = sub_100001DD0(&OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView, 0, 0.0, 0.0, 0.0, 0.0, 0.0);
  [v13 addSubview:v14];

  v15 = sub_100001E30();
  [v13 addSubview:v15];

  v16 = [v13 layer];
  [v16 setAllowsGroupBlending:0];

  v17 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView;
  v18 = [*&v13[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView] layer];
  [v18 setAllowsGroupBlending:0];

  v19 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView;
  v20 = [*&v13[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView] heightAnchor];
  [v13 frame];
  v23 = 31.0;
  if (v21 < 200.0 && v21 <= 539.0 && v22 <= 200.0)
  {
    [v13 frame];
    v23 = 23.0;
    if (v24 <= 136.0)
    {
      v23 = 20.0;
    }
  }

  v25 = [v20 constraintEqualToConstant:v23];

  v55 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_footerBackgroundViewHeightConstraint;
  v26 = *&v13[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_footerBackgroundViewHeightConstraint];
  *&v13[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_footerBackgroundViewHeightConstraint] = v25;

  sub_100004E8C(&qword_10002A550, &qword_10001C020);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10001B950;
  v28 = [*&v13[v17] topAnchor];
  v29 = [v13 topAnchor];

  v30 = [v28 constraintEqualToAnchor:v29];
  *(v27 + 32) = v30;
  v31 = [*&v13[v17] leadingAnchor];
  v32 = [v13 leadingAnchor];

  v33 = [v31 constraintEqualToAnchor:v32];
  *(v27 + 40) = v33;
  v34 = [*&v13[v17] trailingAnchor];
  v35 = [v13 trailingAnchor];

  v36 = [v34 constraintEqualToAnchor:v35];
  *(v27 + 48) = v36;
  v37 = [*&v13[v19] topAnchor];
  v38 = [*&v13[v17] bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v27 + 56) = v39;
  v40 = [*&v13[v19] leadingAnchor];
  v41 = [v13 leadingAnchor];

  v42 = [v40 constraintEqualToAnchor:v41];
  *(v27 + 64) = v42;
  v43 = [*&v13[v19] trailingAnchor];
  v44 = [v13 trailingAnchor];

  v45 = [v43 constraintEqualToAnchor:v44];
  *(v27 + 72) = v45;
  v46 = [*&v13[v19] bottomAnchor];
  v47 = [v13 bottomAnchor];

  v48 = [v46 constraintEqualToAnchor:v47];
  *(v27 + 80) = v48;
  v49 = *&v13[v55];
  if (v49)
  {
    v50 = objc_opt_self();
    *(v27 + 88) = v49;
    sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
    v51 = v49;
    isa = sub_10001A240().super.isa;

    [v50 activateConstraints:isa];

    v53 = sub_100001DD0(&OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___listStackView, 1, 8.0, 8.0, 8.0, 8.0, 8.0);
    [v13 addSubview:v53];

    v54 = DOCConstraintsToResizeWithSuperview();
    if (!v54)
    {
      sub_10001A250();
      v54 = sub_10001A240().super.isa;
    }

    [v50 activateConstraints:v54];
  }

  else
  {
    __break(1u);
  }
}

id sub_1000026E8()
{
  ObjectType = swift_getObjectType();
  [v0 frame];
  Width = CGRectGetWidth(v36);
  [v0 frame];
  Height = CGRectGetHeight(v37);
  [v0 frame];
  v4 = CGRectGetHeight(v38);
  [v0 frame];
  v5 = CGRectGetWidth(v39);
  v6 = &v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_lastLayoutSize];
  v7 = *&v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_lastLayoutSize];
  v8 = *&v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_lastLayoutSize + 8];
  v9 = v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_lastLayoutSize + 16];
  [v0 frame];
  if ((v9 & 1) != 0 || (v7 == v10 ? (v12 = v8 == v11) : (v12 = 0), !v12))
  {
    if ((v6[2] & 1) != 0 || ((v13 = floor(v5), *v6 == floor(v4)) ? (v14 = v6[1] == v13) : (v14 = 0), !v14))
    {
      v15 = floor(Width);
      v16 = floor(Height);
      [v0 frame];
      if (v17 <= 539.0)
      {
        if (v18 <= 200.0)
        {
          v23 = v17;
          sub_100002C14(v0);
          sub_100002DBC(v0, v24);
          v20 = 2;
          if (v23 >= 200.0)
          {
            sub_100003C2C(2, v0);
LABEL_19:
            *v6 = v15;
            v6[1] = v16;
            *(v6 + 16) = 0;
            goto LABEL_20;
          }

          v21 = 2;
        }

        else
        {
          sub_100002C14(v0);
          sub_100002DBC(v0, v22);
          v20 = 3;
          v21 = 3;
        }
      }

      else
      {
        sub_100002C14(v0);
        sub_100002DBC(v0, v19);
        v20 = 3;
        v21 = 5;
      }

      sub_100003044(v20, v21, v0);
      goto LABEL_19;
    }
  }

LABEL_20:
  [v0 frame];
  v27 = 31.0;
  if (v25 < 200.0 && v25 <= 539.0 && v26 <= 200.0)
  {
    [v0 frame];
    v27 = 23.0;
    if (v28 <= 136.0)
    {
      v27 = 20.0;
    }
  }

  v29 = *&v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_footerBackgroundViewHeightConstraint];
  if (v29)
  {
    [v29 setConstant:v27];
  }

  v30 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemCells;
  swift_beginAccess();
  v31 = *&v0[v30];
  v32 = *&v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items];
  v33 = v0[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked];

  sub_10000547C(v31, v32, v33);

  v35.receiver = v0;
  v35.super_class = ObjectType;
  return objc_msgSendSuper2(&v35, "layoutSubviews");
}

char *sub_1000029E0(uint64_t a1)
{
  v1 = sub_10001A160();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemCells;
    v7 = result;
    swift_beginAccess();
    v8 = *&v7[v6];

    v9 = v8;
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      while (1)
      {
        v11 = v9;
        result = sub_1000057B0(0, &qword_10002AE60, OS_dispatch_queue_ptr);
        if (v10 < 1)
        {
          break;
        }

        v12 = 0;
        v13 = v11;
        v22 = v11 & 0xC000000000000001;
        HIDWORD(v21) = enum case for DispatchPredicate.onQueue(_:);
        v14 = (v2 + 104);
        v15 = (v2 + 8);
        v16 = v13;
        while (1)
        {
          v17 = v22 ? sub_10001A550() : *(v13 + 8 * v12 + 32);
          v2 = v17;
          *v4 = sub_10001A360();
          (*v14)(v4, HIDWORD(v21), v1);
          v18 = sub_10001A170();

          (*v15)(v4, v1);
          if ((v18 & 1) == 0)
          {
            break;
          }

          ++v12;
          v13 = v16;
          if (v10 == v12)
          {
          }
        }

        __break(1u);
LABEL_14:
        v19 = v9;
        v20 = sub_10001A5F0();
        v9 = v19;
        v10 = v20;
        if (!v20)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100002C14(uint64_t a1)
{
  v2 = sub_100001DD0(&OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView, 0, 0.0, 0.0, 0.0, 0.0, 0.0);
  v3 = [v2 arrangedSubviews];

  sub_1000057B0(0, &qword_10002A558, UIView_ptr);
  v4 = sub_10001A250();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10001A5F0())
  {
    v6 = 0;
    v7 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_10001A550();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [*(a1 + v7) removeArrangedSubview:v8];
      [v9 removeFromSuperview];

      ++v6;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v11 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowBackgroundViews;
  swift_beginAccess();
  *(a1 + v11) = &_swiftEmptyArrayStorage;
}

double sub_100002DBC(uint64_t a1, __n128 a2)
{
  v3 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemRows;
  swift_beginAccess();
  v19 = a1;
  v4 = *(a1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10001A5F0())
  {

    if (i)
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = sub_10001A550();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v7 removeFromSuperview];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_12:

    *(v19 + v3) = &_swiftEmptyArrayStorage;

    v10 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemCells;
    swift_beginAccess();
    *(v19 + v10) = &_swiftEmptyArrayStorage;

    v11 = sub_100001DD0(&OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___listStackView, 1, 8.0, 8.0, 8.0, 8.0, 8.0);
    v12 = [v11 arrangedSubviews];

    sub_1000057B0(0, &qword_10002A558, UIView_ptr);
    v4 = sub_10001A250();

    if (!(v4 >> 62))
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        break;
      }

      goto LABEL_14;
    }

    v13 = sub_10001A5F0();
    if (!v13)
    {
      break;
    }

LABEL_14:
    v14 = 0;
    v3 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___listStackView;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v15 = sub_10001A550();
      }

      else
      {
        if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v15 = *(v4 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [*(v19 + v3) removeArrangedSubview:v15];
      [v16 removeFromSuperview];

      ++v14;
      if (v17 == v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_28:

  return result;
}

void sub_100003044(uint64_t a1, uint64_t a2, char *a3)
{
  if (a1 < 1 || a2 < 1)
  {
    return;
  }

  v4 = sub_100001E30();
  [v4 setHidden:0];

  sub_1000037B8(a1);
  v5 = 0;
  v6 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowBackgroundViews;
  p_weak_ivar_lyt = &ImageCache.weak_ivar_lyt;
  v40 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemCells;
  v41 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemRows;
  while (1)
  {
    v8 = a2;
    do
    {
      [a3 p:v40 weak:? ivar:?lyt[157]];
      if (v9 >= 200.0)
      {
        v11 = 302.0;
      }

      else
      {
        v11 = 190.0;
      }

      if (v10 > 200.0)
      {
        v11 = 302.0;
      }

      if (v9 <= 539.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 630.0;
      }

      [a3 p:v11 weak:? ivar:?lyt[157]];
      v13 = CGRectGetWidth(v44) / v12;
      v14 = objc_allocWithZone(type metadata accessor for RecentItemCell());
      *&sub_100013D48(0, 0, 1, 0, 0.0, 0.0, 0.0, 0.0, v13)[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_delegate + 8] = &off_100024E90;
      swift_unknownObjectWeakAssign();
      sub_10001A230();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10001A270();
        p_weak_ivar_lyt = (&ImageCache + 56);
      }

      sub_10001A280();
      --v8;
    }

    while (v8);
    if (_swiftEmptyArrayStorage >> 62)
    {
      sub_1000057B0(0, &qword_10002A558, UIView_ptr);

      sub_10001A5E0();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_10001A660();
      sub_1000057B0(0, &qword_10002A558, UIView_ptr);
    }

    v15 = objc_allocWithZone(UIStackView);
    sub_1000057B0(0, &qword_10002A558, UIView_ptr);
    isa = sub_10001A240().super.isa;

    v17 = [v15 initWithArrangedSubviews:isa];

    [v17 setDistribution:1];
    [v17 setSpacing:8.0];
    [v17 setAxis:0];
    v18 = v17;
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [a3 addSubview:v18];
    sub_100004E8C(&qword_10002A550, &qword_10001C020);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10001B960;
    v20 = [v18 leadingAnchor];
    v21 = [a3 leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:13.0];

    *(v19 + 32) = v22;
    v23 = [v18 trailingAnchor];

    v24 = [a3 trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:-13.0];

    *(v19 + 40) = v25;
    sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
    v26 = sub_10001A240().super.isa;

    [a3 addConstraints:v26];

    if (_swiftEmptyArrayStorage >> 62)
    {
      break;
    }

    v27 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_20;
    }

LABEL_32:

    ++v5;
    v38 = sub_10001A240().super.isa;

    [a3 addConstraints:v38];

    swift_beginAccess();
    v39 = v18;
    sub_10001A230();
    p_weak_ivar_lyt = (&ImageCache + 56);
    if (*((*&a3[v41] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a3[v41] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10001A270();
    }

    sub_10001A280();
    swift_endAccess();
    swift_beginAccess();
    sub_100003B3C(_swiftEmptyArrayStorage);
    swift_endAccess();

    if (v5 == a1)
    {
      return;
    }
  }

  v27 = sub_10001A5F0();
  if (!v27)
  {
    goto LABEL_32;
  }

LABEL_20:
  sub_10001A5A0();
  if (v27 < 0)
  {
    goto LABEL_39;
  }

  v28 = 0;
  while (2)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v29 = sub_10001A550();
    }

    else
    {
      v29 = _swiftEmptyArrayStorage[v28 + 4];
    }

    v30 = v29;
    v31 = sub_1000117E4();
    v32 = [v31 bottomAnchor];

    swift_beginAccess();
    v33 = *&a3[v6];
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = sub_10001A550();
LABEL_28:
      v35 = v34;
      ++v28;
      swift_endAccess();
      v36 = [v35 bottomAnchor];

      v37 = [v32 constraintEqualToAnchor:v36];
      sub_10001A580();
      sub_10001A5B0();
      sub_10001A5C0();
      sub_10001A590();
      if (v27 == v28)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  if (v5 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v33 + 8 * v5 + 32);
    goto LABEL_28;
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_1000037B8(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a1;
    if (a1)
    {
      v3 = v1;
      v4 = 0;
      v5 = 0;
      v6 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowBackgroundViews;
      v26 = OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView;
      do
      {
        v7 = sub_100004080(v5);
        v8 = sub_100001DD0(&OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView, 0, 0.0, 0.0, 0.0, 0.0, 0.0);
        [v8 addArrangedSubview:v7];

        swift_beginAccess();
        v9 = v7;
        sub_10001A230();
        if (*((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10001A270();
        }

        sub_10001A280();
        swift_endAccess();
        if (v2 == 1)
        {
          v10 = sub_100001E30();
          v11 = [v10 backgroundColor];

          [v9 setBackgroundColor:v11];
          v12 = [v9 layer];
          v13 = [*(v3 + v26) layer];
          v14 = [v13 compositingFilter];

          if (v14)
          {
            sub_10001A4D0();
            swift_unknownObjectRelease();
            sub_1000057F8(v28, v28[3]);
            v14 = sub_10001A640();
            sub_10000583C(v28);
          }

          [v12 setCompositingFilter:v14];

          swift_unknownObjectRelease();
        }

        if (v4)
        {
          sub_100004E8C(&qword_10002A550, &qword_10001C020);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_10001B970;
          v16 = [v9 heightAnchor];
          v17 = [v4 heightAnchor];
          if (v5 == 1)
          {
            v18 = 1.13;
          }

          else
          {
            v18 = 1.0;
          }

          v27 = v4;
          v19 = v6;
          v20 = v2;
          v21 = objc_opt_self();
          v22 = v9;
          v23 = [v16 constraintEqualToAnchor:v17 multiplier:v18];

          *(v15 + 32) = v23;
          v9 = v22;
          sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
          isa = sub_10001A240().super.isa;

          v25 = v21;
          v2 = v20;
          v6 = v19;
          [v25 activateConstraints:isa];
        }

        ++v5;
        v4 = v9;
      }

      while (v2 != v5);
    }
  }
}

void sub_100003B3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_10001A5F0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_10001A5F0();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100004F3C(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100005064(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_100003C2C(uint64_t a1, char *a2)
{
  v5 = sub_100001E30();
  [v5 setHidden:1];

  if (a1 < 0)
  {
    goto LABEL_37;
  }

  if (a1)
  {
    v32 = xmmword_10001B960;
    do
    {
      sub_100004E8C(&qword_10002A550, &qword_10001C020);
      v6 = swift_allocObject();
      *(v6 + 16) = v32;
      [a2 frame];
      if (v7 >= 200.0)
      {
        v9 = 302.0;
      }

      else
      {
        v9 = 190.0;
      }

      if (v8 > 200.0)
      {
        v9 = 302.0;
      }

      if (v7 <= 539.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 630.0;
      }

      [a2 frame];
      v11 = CGRectGetWidth(v33) / v10;
      v12 = type metadata accessor for RecentItemCell();
      v13 = objc_allocWithZone(v12);
      v14 = sub_100013D48(0, 0, 1, 1, 0.0, 0.0, 0.0, 0.0, v11);
      *&v14[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_delegate + 8] = &off_100024E90;
      swift_unknownObjectWeakAssign();
      *(v6 + 32) = v14;
      [a2 frame];
      if (v15 >= 200.0)
      {
        v17 = 302.0;
      }

      else
      {
        v17 = 190.0;
      }

      if (v16 > 200.0)
      {
        v17 = 302.0;
      }

      if (v15 <= 539.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 630.0;
      }

      [a2 frame];
      v19 = CGRectGetWidth(v34) / v18;
      v20 = objc_allocWithZone(v12);
      v21 = sub_100013D48(0, 0, 1, 1, 0.0, 0.0, 0.0, 0.0, v19);
      *&v21[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_delegate + 8] = &off_100024E90;
      swift_unknownObjectWeakAssign();
      *(v6 + 40) = v21;
      v22 = objc_allocWithZone(UIStackView);
      sub_1000057B0(0, &qword_10002A558, UIView_ptr);

      isa = sub_10001A240().super.isa;

      v24 = [v22 initWithArrangedSubviews:isa];

      [v24 setDistribution:1];
      [v24 setSpacing:8.0];
      [v24 setAxis:0];
      v25 = v24;
      sub_10001A230();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10001A270();
      }

      sub_10001A280();
      v2 = _swiftEmptyArrayStorage;
      swift_beginAccess();
      sub_100003B3C(v6);
      swift_endAccess();

      --a1;
    }

    while (a1);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10001A5F0())
  {
    v27 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v28 = sub_10001A550();
      }

      else
      {
        if (v27 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v28 = *(v2 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v31 = sub_100001DD0(&OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___listStackView, 1, 8.0, 8.0, 8.0, 8.0, 8.0);
      [v31 addArrangedSubview:v29];

      ++v27;
      if (v30 == i)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

LABEL_39:
}

id sub_100004080(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (a1 == 2)
  {
    v5 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.0980392157 green:0.0980392157 blue:0.0980392157 alpha:1.0];
    [v2 setBackgroundColor:v5];

    v4 = [v2 layer];
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v3 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.0470588235 green:0.0470588235 blue:0.0470588235 alpha:1.0];
    [v2 setBackgroundColor:v3];

    v4 = [v2 layer];
LABEL_6:
    v6 = v4;

    v7 = sub_10001A190();

    [v6 setCompositingFilter:v7];

    goto LABEL_7;
  }

  v7 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v7];
LABEL_7:

  return v2;
}

id sub_100004254()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100004380(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004390(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000043B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_1000043EC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8);
  if (v1 <= 1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind);
    swift_getObjectType();
    sub_100004E04(v2, v1);
    v9 = sub_10001A480();
    sub_100004E18(v2, v1);
    if (v9)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = [objc_opt_self() defaultManager];
        v6 = swift_allocObject();
        *(v6 + 16) = v9;
        *(v6 + 24) = v4;
        aBlock[4] = sub_100004E6C;
        aBlock[5] = v6;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000045B4;
        aBlock[3] = &unk_100024EC8;
        v7 = _Block_copy(aBlock);
        v8 = v9;
        swift_unknownObjectRetain();

        [v5 fetchURLForItem:v8 completionHandler:v7];
        _Block_release(v7);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1000045B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100004E8C(&unk_10002A540, &unk_10001B9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_100019D20();
    v10 = sub_100019D30();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_100019D30();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_100004ED4(v8);
}

uint64_t sub_100004718(uint64_t a1, uint64_t a2)
{
  result = sub_100019DB0();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_10000476C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100019DC0();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100004870(uint64_t a1, id *a2)
{
  v3 = sub_10001A1B0();
  *a2 = 0;
  return v3 & 1;
}

void sub_1000048F0(uint64_t *a2@<X8>)
{
  sub_10001A1C0();
  v3 = sub_10001A190();

  *a2 = v3;
}

uint64_t sub_100004934()
{
  sub_10001A1C0();
  v0 = sub_10001A210();

  return v0;
}

double sub_100004970(uint64_t a1)
{
  sub_10001A1C0();
  sub_10001A1E0();

  return result;
}

Swift::Int sub_1000049C4(uint64_t a1)
{
  sub_10001A1C0();
  sub_10001A6B0();
  sub_10001A1E0();
  v1 = sub_10001A6E0();

  return v1;
}

uint64_t sub_100004A38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001A1C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004A64(void *a1, uint64_t *a2)
{
  v2 = sub_10001A1C0();
  v4 = v3;
  if (v2 == sub_10001A1C0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10001A650();
  }

  return v7 & 1;
}

uint64_t sub_100004AF0(uint64_t a1)
{
  sub_1000059DC(&qword_10002A608, type metadata accessor for TraitKey, &unk_10001BBBC);
  sub_1000059DC(&unk_10002A610, type metadata accessor for TraitKey, &unk_10001BB5C);

  return sub_10001A620();
}

void *sub_100004BAC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_100004BBC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100004BC8(uint64_t a1)
{
  sub_1000059DC(&qword_10002A5F0, type metadata accessor for Weight, &unk_10001BD14);
  sub_1000059DC(&qword_10002A5F8, type metadata accessor for Weight, &unk_10001BCB4);
  sub_100005C1C();
  return sub_10001A620();
}

void sub_100004C90(uint64_t *a2@<X8>)
{
  v3 = sub_10001A190();

  *a2 = v3;
}

uint64_t sub_100004CD8(uint64_t a1)
{
  sub_1000059DC(&qword_10002A5E0, type metadata accessor for AttributeName, &unk_10001BEB8);
  sub_1000059DC(&qword_10002A5E8, type metadata accessor for AttributeName, &unk_10001BE0C);

  return sub_10001A620();
}

void sub_100004D9C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_10001A6D0(*&v1);
}

uint64_t sub_100004DD8(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

uint64_t sub_100004E04(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRetain();
  }

  return v2;
}

uint64_t sub_100004E18(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_100004E2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004E74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004E8C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004ED4(uint64_t a1)
{
  v2 = sub_100004E8C(&unk_10002A540, &unk_10001B9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004F3C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_10001A5F0();
LABEL_9:
  result = sub_10001A560();
  *v2 = result;
  return result;
}

void (*sub_100004FDC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10001A550();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10000505C;
  }

  __break(1u);
  return result;
}

uint64_t sub_100005064(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10001A5F0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_10001A5F0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100005704();
          for (i = 0; i != v6; ++i)
          {
            sub_100004E8C(&qword_10002A560, &qword_10001BA00);
            v9 = sub_100004FDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for RecentItemCell();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000051E4(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = objc_allocWithZone(UIStackView);
  sub_1000057B0(0, &qword_10002A558, UIView_ptr);
  isa = sub_10001A240().super.isa;
  v14 = [v12 initWithArrangedSubviews:isa];

  v15 = v14;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setAxis:1];
  [v15 setDistribution:a1];
  [v15 setSpacing:a2];
  [v15 setLayoutMarginsRelativeArrangement:1];
  [v15 setInsetsLayoutMarginsFromSafeArea:0];
  [v15 setLayoutMargins:{a3, a4, a5, a6}];

  return v15;
}

void sub_100005334()
{
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_cellSpacing) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemRows) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_itemCells) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowBackgroundViews) = &_swiftEmptyArrayStorage;
  v1 = v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_lastLayoutSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_rowSideMargin) = 0x402A000000000000;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_footerBackgroundViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___backgroundRowContainerStackView) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___listStackView) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView____lazy_storage___footerBackgroundView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_blendMode);
  *v2 = sub_10001A1C0();
  v2[1] = v3;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked) = 0;
  sub_10001A5D0();
  __break(1u);
}

void sub_10000547C(unint64_t a1, unint64_t a2, char a3)
{
  LOBYTE(v3) = a3;
  v22 = objc_opt_self();
  v5 = [v22 sharedGenerator];
  v21 = [v5 startBatching];

  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10001A5F0())
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = (a1 & 0xC000000000000001);
    if ((a2 & 0x8000000000000000) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = v7;
    v23 = (v3 & 1) == 0;
    v8 = 4;
    v25 = a1;
    while (1)
    {
      v14 = v8 - 4;
      if (v27)
      {
        v15 = sub_10001A550();
      }

      else
      {
        if (v14 >= *(v26 + 16))
        {
          goto LABEL_24;
        }

        v15 = *(a1 + 8 * v8);
      }

      v3 = v15;
      v16 = v8 - 3;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = objc_autoreleasePoolPush();
      if (a2 >> 62)
      {
        if (v14 >= sub_10001A5F0())
        {
LABEL_7:
          v9 = 0;
          v10 = 2;
          goto LABEL_8;
        }
      }

      else if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = sub_10001A550();
      }

      else
      {
        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v18 = *(a2 + 8 * v8);
      }

      v9 = v18;
      v19 = v18;
      v10 = v23;
LABEL_8:
      v11 = &v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
      v12 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
      *v11 = v9;
      v13 = v11[8];
      v11[8] = v10;
      sub_100004E04(v9, v10);
      sub_1000125C4(v12, v13);
      sub_100004E18(v12, v13);
      sub_100004E18(v9, v10);
      sub_100004E18(v9, v10);
      objc_autoreleasePoolPop(v17);

      ++v8;
      a1 = v25;
      if (v16 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
  v28 = [v22 sharedGenerator];
  [v28 endBatching:v21];
}

unint64_t sub_100005704()
{
  result = qword_10002A568;
  if (!qword_10002A568)
  {
    sub_100005768(&qword_10002A560, &qword_10001BA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A568);
  }

  return result;
}

uint64_t sub_100005768(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000057B0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_1000057F8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000583C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_100005900(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000059DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100005C1C()
{
  result = qword_10002A600;
  if (!qword_10002A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A600);
  }

  return result;
}

uint64_t sub_100005CA0()
{
  result = sub_10001A1C0();
  *&xmmword_10002A6E0 = result;
  *(&xmmword_10002A6E0 + 1) = v1;
  return result;
}

uint64_t sub_100005CD0()
{
  result = sub_10001A1C0();
  *&xmmword_10002A6F0 = result;
  *(&xmmword_10002A6F0 + 1) = v1;
  return result;
}

void sub_100005D00(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_100004E8C(&qword_10002A968, &qword_10001C078);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_100019FD0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004E8C(&unk_10002A970, qword_10001C080);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  v16 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___itemCollectionConfiguration;
  swift_beginAccess();
  sub_10000FB8C(v2 + v16, v15, &unk_10002A970, qword_10001C080);
  v17 = sub_100019FF0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_10000FBF4(v15, &unk_10002A970, qword_10001C080);
    sub_100019F20();
    v21 = sub_100019F00();
    sub_100006078();
    (*(v7 + 104))(v9, enum case for DOCItemCollectionContext.recentsPopover(_:), v6);
    v19 = sub_100019EF0();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    sub_10001A1C0();
    v20 = v22;
    sub_100019FE0();
    (*(v18 + 16))(v12, v20, v17);
    (*(v18 + 56))(v12, 0, 1, v17);
    swift_beginAccess();
    sub_10000FC54(v12, v2 + v16);
    swift_endAccess();
  }

  else
  {
    (*(v18 + 32))(v22, v15, v17);
  }
}

id sub_100006078()
{
  v1 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration;
  v2 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration);
  }

  else
  {
    v4 = sub_1000060D8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000060D8()
{
  v0 = sub_10001A190();
  v1 = [objc_opt_self() configurationForOpeningDocumentsOfApplicationWithBundleIdentifier:v0];

  [v1 setInProcess:1];
  [v1 setShowCollectionControls:0];
  sub_100004E8C(&qword_10002A8D0, &qword_10001C028);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10001BF00;
  *(v2 + 32) = sub_10001A1C0();
  *(v2 + 40) = v3;
  isa = sub_10001A240().super.isa;

  [v1 setForbiddenActionIdentifiers:isa];

  [v1 setNeverCreateBookmarkForOpenInPlace:1];
  [v1 setSkipDownload:1];
  [v1 setSuppressBlackCallout:1];
  [v1 setBrowserViewContext:2];
  [v1 setThumbnailFetchingTimeOut:0.9];
  [v1 setMaximumNumberOfItemsToFetch:10];
  v5 = sub_10001A190();
  [v1 setSceneIdentifier:v5];

  [v1 setPresentingMakesCollectionFirstResponder:0];
  [v1 setSupportsRemovableFileProviders:1];
  return v1;
}

void sub_1000062CC(void *a1)
{
  v3 = sub_10001A100();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001A150();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection];
  *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection] = a1;
  v17 = a1;

  if ([v1 doc_hasAppearedOrIsAppearing])
  {
    v16[1] = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemCollectionObservationQueue];
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    aBlock[4] = sub_10000FCC4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019CCC;
    aBlock[3] = &unk_100025250;
    v13 = _Block_copy(aBlock);
    v14 = v1;
    sub_10001A110();
    v18 = _swiftEmptyArrayStorage;
    sub_10001024C(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v16[0] = v7;
    sub_100004E8C(&unk_10002AE50, &qword_10001C030);
    sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
    sub_10001A4E0();
    sub_10001A370();
    _Block_release(v13);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v16[0]);
  }

  else
  {
    v15 = v17;
  }
}

char *sub_1000065FC()
{
  v1 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___recentItemsView;
  v2 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___recentItemsView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___recentItemsView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for RecentItemsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v4[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_delegate + 8] = &off_100024FE8;
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000066C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10001A0C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001A0F0();
  __chkstk_darwin(v7 - 8);

  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "viewDidLoad");
  result = [v1 view];
  if (!result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = result;
  sub_100006BF4();
  sub_10001A0B0();
  sub_10001A0E0();
  (*(v4 + 8))(v6, v3);
  sub_10001A440();

  setiopolicy_np(3, 0, 1);
  v10 = [objc_opt_self() sharedManager];
  v11 = sub_100006078();
  v12 = [v11 hostIdentifier];

  if (!v12)
  {
    sub_10001A1C0();
    v12 = sub_10001A190();
  }

  [v10 setHostIdentifier:v12];

  v13 = [objc_opt_self() defaultPermission];
  v14 = [*&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration] hostIdentifier];
  if (!v14)
  {
    sub_10001A1C0();
    v14 = sub_10001A190();
  }

  [v13 setHostIdentifier:v14];

  result = [v1 view];
  if (!result)
  {
    goto LABEL_22;
  }

  v15 = result;
  v16 = [objc_opt_self() clearColor];
  [v15 setBackgroundColor:v16];

  result = [v1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v17 = result;
  v18 = sub_1000065FC();
  [v17 addSubview:v18];

  [objc_opt_self() setMaximumCachedThumbnailCount:10];
  v19 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___recentItemsView;
  isa = DOCConstraintsToResizeWithSuperview();
  if (!isa)
  {
    sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
    sub_10001A250();
    isa = sub_10001A240().super.isa;
  }

  [objc_opt_self() activateConstraints:isa];

  v21 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_lockedStateListener];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = *(v21 + 16);
  v24 = *(v21 + 24);
  *(v21 + 16) = sub_100010318;
  *(v21 + 24) = v22;

  sub_100010320(v23, v24);

  v25 = MKBGetDeviceLockState();
  if (v25)
  {
    v26 = v25 == 3;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;
  v28 = [v1 viewIfLoaded];
  if (v28)
  {
    v29 = v28;
    [v28 setUserInteractionEnabled:v27 ^ 1u];
  }

  v30 = *&v1[v19];
  v31 = v30[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked];
  v30[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked] = v27;
  if (v27 != v31)
  {
    [v30 setNeedsLayout];
  }

  v32 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];
  v33 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier + 8];

  sub_100006DB4(v32, v33);

  return sub_10001A320();
}

double sub_100006BF4()
{
  v1 = (v0 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___widgetCornerRadius);
  if ((*(v0 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___widgetCornerRadius + 8) & 1) == 0)
  {
    return *v1;
  }

  result = sub_100007168();
  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_100006C38(char a1, uint64_t a2, __n128 a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong viewIfLoaded];
    if (v6)
    {
      v7 = v6;
      [v6 setUserInteractionEnabled:(a1 & 1) == 0];
    }

    v8 = sub_1000065FC();
    v9 = v8;
    v10 = v8[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked];
    v8[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked] = a1 & 1;
    if (v10 != (a1 & 1))
    {
      [v8 setNeedsLayout];
    }
  }
}

void sub_100006D04(char a1)
{
  v3 = [v1 viewIfLoaded];
  if (v3)
  {
    v4 = v3;
    [v3 setUserInteractionEnabled:(a1 & 1) == 0];
  }

  v5 = sub_1000065FC();
  v6 = v5[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked];
  v5[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_isMasked] = a1 & 1;
  if (v6 != (a1 & 1))
  {
    v7 = v5;
    [v5 setNeedsLayout];
    v5 = v7;
  }
}

uint64_t sub_100006DB4(uint64_t a1, uint64_t a2)
{
  v5 = sub_10001A090();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  if (*(v2 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_loadingCachedItems))
  {
    sub_10001A070();
    v12 = sub_10001A080();
    v13 = sub_10001A2F0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10001705C(0xD00000000000001DLL, 0x800000010001D3D0, &v26);
      _os_log_impl(&_mh_execute_header, v12, v13, "Widget Cache: %s already loading items. Ignoring request.", v14, 0xCu);
      sub_10000583C(v15);
    }

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v17 = sub_1000065FC();
    v18 = *&v17[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items];

    if (v18 >> 62)
    {
      v19 = sub_10001A5F0();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v19)
    {
      sub_10001A070();
      v20 = sub_10001A080();
      v21 = sub_10001A2F0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v26 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_10001705C(0xD00000000000001DLL, 0x800000010001D3D0, &v26);
        _os_log_impl(&_mh_execute_header, v20, v21, "Widget Cache: %s items already loaded. Ignoring request.", v22, 0xCu);
        sub_10000583C(v23);
      }

      return (*(v6 + 8))(v11, v5);
    }

    else
    {
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_10000A0B4(a1, a2, sub_10000FA90, v24);
    }
  }
}

double sub_100007168()
{
  v0 = [objc_allocWithZone(SBSWidgetMetricsService) init];
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_10001A1C0();
  }

  v3 = sub_10001A190();

  v4 = [v0 previewMetricsSpecificationForBundleIdentifier:v3];

  if (v4)
  {
    v5 = [v4 metricsForFamily:2];
    if (v5)
    {
      v6 = v5;
      [v5 cornerRadius];
      v8 = v7;
    }

    else
    {
      v8 = 26.5;
    }
  }

  else
  {
    v8 = 26.5;
    v4 = v0;
  }

  return v8;
}

void sub_100007310(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10001A100();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001A150();
  v15 = *(v7 - 8);
  v16 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1, v8);
  v11 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];
  v12 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier + 8];

  sub_100006DB4(v11, v12);

  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  aBlock[4] = sub_100010370;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = &unk_1000253B8;
  v14 = _Block_copy(aBlock);
  v1;
  sub_10001A110();
  v18 = _swiftEmptyArrayStorage;
  sub_10001024C(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004E8C(&unk_10002AE50, &qword_10001C030);
  sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
  sub_10001A4E0();
  sub_10001A370();
  _Block_release(v14);
  (*(v17 + 8))(v6, v4);
  (*(v15 + 8))(v10, v16);

  sub_100007628();
}

void sub_100007628()
{
  v1 = sub_10001A090();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() protectedAppsEnabled])
  {
    sub_10001A070();
    v5 = v0;
    v6 = sub_10001A080();
    v7 = sub_10001A2F0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v8 = 136315650;
      *(v8 + 4) = sub_10001705C(0xD000000000000023, 0x800000010001D590, &v13);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_10001705C(0xD000000000000023, 0x800000010001D590, &v13);
      *(v8 + 22) = 2112;
      *(v8 + 24) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s [PROTECTED APPS] %s %@", v8, 0x20u);
      sub_10000FBF4(v9, &unk_10002A8C0, &qword_10001C018);

      swift_arrayDestroy();
    }

    (*(v2 + 8))(v4, v1);
    v11 = [objc_opt_self() defaultCenter];
    [v11 addObserver:v5 selector:"updateQueryFiltersForNewApps" name:DOCAppProtectionStatusDidChangeNotification object:0];
  }
}

void sub_100007914(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10001A100();
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001A150();
  v7 = *(v14 - 8);
  v8 = __chkstk_darwin(v14);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewWillDisappear:", a1 & 1, v8);
  v13 = *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemCollectionObservationQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_1000102E8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = &unk_100025368;
  v12 = _Block_copy(aBlock);
  v1;
  sub_10001A110();
  v16 = _swiftEmptyArrayStorage;
  sub_10001024C(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004E8C(&unk_10002AE50, &qword_10001C030);
  sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
  sub_10001A4E0();
  sub_10001A370();
  _Block_release(v12);
  (*(v15 + 8))(v6, v4);
  (*(v7 + 8))(v10, v14);

  sub_100007C08();
}

void sub_100007C08()
{
  v1 = sub_10001A090();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() protectedAppsEnabled])
  {
    sub_10001A070();
    v5 = v0;
    v6 = sub_10001A080();
    v7 = sub_10001A2F0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v8 = 136315650;
      *(v8 + 4) = sub_10001705C(0xD000000000000022, 0x800000010001D560, &v13);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_10001705C(0xD000000000000022, 0x800000010001D560, &v13);
      *(v8 + 22) = 2112;
      *(v8 + 24) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s [PROTECTED APPS] %s %@", v8, 0x20u);
      sub_10000FBF4(v9, &unk_10002A8C0, &qword_10001C018);

      swift_arrayDestroy();
    }

    (*(v2 + 8))(v4, v1);
    v11 = [objc_opt_self() defaultCenter];
    [v11 addObserver:v5 selector:"updateQueryFiltersForNewApps" name:DOCAppProtectionStatusDidChangeNotification object:0];
  }
}

id sub_100007EF4(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = a3;
  v30 = a2;
  v25[1] = a1;
  ObjectType = swift_getObjectType();
  v29 = sub_10001A350();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001A340();
  __chkstk_darwin(v7);
  v8 = sub_10001A150();
  __chkstk_darwin(v8 - 8);
  v9 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_lockedStateListener;
  type metadata accessor for DeviceUnlockStateListener();
  swift_allocObject();
  *&v3[v9] = sub_10001039C();
  v28 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemCollectionObservationQueue;
  v10 = sub_1000057B0(0, &qword_10002AE60, OS_dispatch_queue_ptr);
  v26 = "update(forBundleIdentifier:)";
  v27 = v10;
  sub_10001A140();
  v34 = _swiftEmptyArrayStorage;
  v25[4] = sub_10001024C(&unk_10002A980, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v25[3] = sub_100004E8C(&unk_10002AE70, &qword_10001C0E0);
  v25[5] = sub_100010294(&unk_10002A990, &unk_10002AE70, &qword_10001C0E0);
  sub_10001A4E0();
  v11 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v12 = v4 + 104;
  v13 = *(v4 + 104);
  v25[2] = v12;
  v14 = v6;
  v15 = v6;
  v16 = v29;
  v13(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  *&v3[v28] = sub_10001A380();
  v28 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemPersistenceQueue;
  v26 = "sWidget.workingQueue";
  sub_10001A130();
  v34 = _swiftEmptyArrayStorage;
  sub_10001A4E0();
  v13(v14, v11, v16);
  *&v3[v28] = sub_10001A380();
  v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_loadingCachedItems] = 0;
  v17 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___itemCollectionConfiguration;
  v18 = sub_100019FF0();
  (*(*(v18 - 8) + 56))(&v3[v17], 1, 1, v18);
  *&v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration] = 0;
  *&v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_observedCollectionItem] = 0;
  v19 = &v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];
  *v19 = 0;
  v19[1] = 0;
  *&v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection] = 0;
  *&v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___recentItemsView] = 0;
  v20 = &v3[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___widgetCornerRadius];
  *v20 = 0;
  v20[8] = 1;
  if (v30)
  {
    v21 = sub_10001A190();
  }

  else
  {
    v21 = 0;
  }

  v33.receiver = v3;
  v33.super_class = ObjectType;
  v22 = v32;
  v23 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", v21, v32);

  return v23;
}

id sub_1000083D8(void *a1)
{
  v2 = v1;
  v26 = a1;
  ObjectType = swift_getObjectType();
  v27 = sub_10001A350();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001A340();
  __chkstk_darwin(v5);
  v6 = sub_10001A150();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_lockedStateListener;
  type metadata accessor for DeviceUnlockStateListener();
  swift_allocObject();
  *&v1[v7] = sub_10001039C();
  v23 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemCollectionObservationQueue;
  v8 = sub_1000057B0(0, &qword_10002AE60, OS_dispatch_queue_ptr);
  v21 = "update(forBundleIdentifier:)";
  v22 = v8;
  sub_10001A140();
  v29 = _swiftEmptyArrayStorage;
  v20[3] = sub_10001024C(&unk_10002A980, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v20[2] = sub_100004E8C(&unk_10002AE70, &qword_10001C0E0);
  sub_100010294(&unk_10002A990, &unk_10002AE70, &qword_10001C0E0);
  sub_10001A4E0();
  v9 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v10 = v3 + 104;
  v11 = *(v3 + 104);
  v20[1] = v10;
  v12 = v24;
  v11(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  *&v1[v23] = sub_10001A380();
  v23 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemPersistenceQueue;
  v21 = "sWidget.workingQueue";
  sub_10001A130();
  v29 = _swiftEmptyArrayStorage;
  sub_10001A4E0();
  v11(v12, v9, v27);
  *&v1[v23] = sub_10001A380();
  v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_loadingCachedItems] = 0;
  v13 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___itemCollectionConfiguration;
  v14 = sub_100019FF0();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration] = 0;
  *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_observedCollectionItem] = 0;
  v15 = &v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection] = 0;
  *&v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___recentItemsView] = 0;
  v16 = &v1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___widgetCornerRadius];
  *v16 = 0;
  v16[8] = 1;
  v17 = v26;
  v28.receiver = v2;
  v28.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v28, "initWithCoder:", v26);

  if (v18)
  {
  }

  return v18;
}

uint64_t type metadata accessor for RecentsHomeScreenWidgetViewController(uint64_t a1)
{
  result = qword_10002A780;
  if (!qword_10002A780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000898C(uint64_t a1)
{
  sub_100008A68(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100008A68(uint64_t a1)
{
  if (!qword_10002A790)
  {
    sub_100019FF0();
    v1 = sub_10001A4C0();
    if (!v2)
    {
      atomic_store(v1, &qword_10002A790);
    }
  }
}

uint64_t sub_100008AC0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10001A100();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001A150();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemPersistenceQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_10000F770;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = &unk_100025098;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_10001A110();
  v18 = _swiftEmptyArrayStorage;
  sub_10001024C(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004E8C(&unk_10002AE50, &qword_10001C030);
  sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
  sub_10001A4E0();
  sub_10001A370();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_100008D90(unint64_t a1, uint64_t a2)
{
  v6 = sub_10001A090();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001A160();
  isa = v10[-1].isa;
  v12 = __chkstk_darwin(v10);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a2 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemPersistenceQueue);
  *v14 = v15;
  (*(isa + 13))(v14, enum case for DispatchPredicate.onQueue(_:), v10, v12);
  v16 = v15;
  LOBYTE(v15) = sub_10001A170();
  v18 = *(isa + 1);
  v17 = isa + 8;
  v18(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v19 = objc_opt_self();
  sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);
  v20 = sub_10001A240().super.isa;
  v31 = 0;
  v21 = [v19 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v31];

  v22 = v31;
  if (!v21)
  {
    v24 = v22;
    sub_100019D10();

    swift_willThrow();
    sub_10001A070();

    swift_errorRetain();
    v10 = sub_10001A080();
    v17 = sub_10001A300();

    if (!os_log_type_enabled(v10, v17))
    {

      goto LABEL_9;
    }

    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v31 = v3;
    *v2 = 134218242;
    if (!(a1 >> 62))
    {
      v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
      *(v2 + 4) = v25;

      *(v2 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_10001A690();
      v28 = sub_10001705C(v26, v27, &v31);

      *(v2 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v10, v17, "Widget Cache: Failed to encode %ld items error: %s", v2, 0x16u);
      sub_10000583C(v3);

LABEL_9:
      (*(v7 + 8))(v9, v6);
      return 0;
    }

LABEL_12:
    v25 = sub_10001A5F0();
    goto LABEL_7;
  }

  v23 = sub_100019D50();

  return v23;
}

uint64_t sub_100009180(char *a1, unint64_t a2, unint64_t a3)
{
  v8 = sub_10001A090();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v78 = &v70 - v13;
  v77 = sub_100019D90();
  v14 = *(v77 - 8);
  __chkstk_darwin(v77);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v16;
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = (a2 & 0xFFFFFFFFFFFFFF8);
    v4 = a2 >> 62;
    if (!(a2 >> 62))
    {
      v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= a3)
      {
        v18 = a3;
      }

      else
      {
        v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a3)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      if (v17 >= v19)
      {
        goto LABEL_10;
      }

      goto LABEL_63;
    }
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = v16;
  }

  v68 = sub_10001A5F0();
  result = sub_10001A5F0();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v68 >= a3)
    {
      v69 = a3;
    }

    else
    {
      v69 = v68;
    }

    if (v68 < 0)
    {
      v69 = a3;
    }

    if (a3)
    {
      v19 = v69;
    }

    else
    {
      v19 = 0;
    }

    if (sub_10001A5F0() >= v19)
    {
LABEL_10:
      if ((a2 & 0xC000000000000001) != 0 && v19)
      {
        sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);

        v20 = 0;
        do
        {
          v21 = v20 + 1;
          sub_10001A540(v20);
          v20 = v21;
        }

        while (v19 != v21);
      }

      else
      {
      }

      v79 = v14;
      v75 = v4;
      if (v4)
      {

        a3 = sub_10001A600();
        v3 = v23;
        v19 = v24;
        if (v24)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v3 = 0;
        a3 = a2 & 0xFFFFFFFFFFFFFF8;
        v22 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
        v19 = (2 * v19) | 1;
        if (v19)
        {
LABEL_21:
          v4 = v9;
          v9 = v8;
          v80 = v22;
          sub_10001A670();
          swift_unknownObjectRetain_n();
          v27 = swift_dynamicCastClass();
          if (!v27)
          {
            swift_unknownObjectRelease();
            v27 = _swiftEmptyArrayStorage;
          }

          v28 = v27[2];

          if (!__OFSUB__(v19 >> 1, v3))
          {
            if (v28 == ((v19 >> 1) - v3))
            {
              v26 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              v8 = v9;
              v9 = v4;
              if (v26)
              {
                goto LABEL_28;
              }

              v26 = _swiftEmptyArrayStorage;
LABEL_27:
              swift_unknownObjectRelease();
LABEL_28:
              v80 = sub_100008D90(v26, a1);
              v30 = v29;

              sub_1000057B0(0, &qword_10002A8F8, NSUserDefaults_ptr);
              v31 = sub_10001A310();
              if (v31)
              {
                v32 = v31;
                v33 = *&a1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier + 8];
                if (v33)
                {
                  v34 = *&a1[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];

                  if (v30 >> 60 == 15)
                  {
                    isa = 0;
                  }

                  else
                  {
                    v49 = v80;
                    sub_10000F8D8(v80, v30);
                    isa = sub_100019D40().super.isa;
                    sub_10000F870(v49, v30);
                  }

                  v74 = v30;
                  if (qword_10002A3C0 != -1)
                  {
                    swift_once();
                  }

                  v81 = xmmword_10002A6E0;

                  v83._countAndFlagsBits = 95;
                  v83._object = 0xE100000000000000;
                  sub_10001A1F0(v83);

                  v84._countAndFlagsBits = v34;
                  v84._object = v33;
                  sub_10001A1F0(v84);

                  v50 = sub_10001A190();

                  [v32 setObject:isa forKey:v50];
                  swift_unknownObjectRelease();

                  v51 = v76;
                  sub_100019D80();
                  v52.super.isa = sub_100019D70().super.isa;
                  v53 = *(v79 + 8);
                  v79 += 8;
                  v72 = v53;
                  v53(v51, v77);
                  if (qword_10002A3C8 != -1)
                  {
                    swift_once();
                  }

                  v81 = xmmword_10002A6F0;

                  v85._countAndFlagsBits = 95;
                  v85._object = 0xE100000000000000;
                  sub_10001A1F0(v85);

                  v73 = v34;
                  v86._countAndFlagsBits = v34;
                  v86._object = v33;
                  sub_10001A1F0(v86);

                  v54 = sub_10001A190();

                  [v32 setObject:v52.super.isa forKey:v54];

                  v55 = v78;
                  sub_10001A070();

                  v56 = sub_10001A080();
                  v57 = sub_10001A2F0();

                  if (os_log_type_enabled(v56, v57))
                  {
                    v58 = swift_slowAlloc();
                    *&v81 = swift_slowAlloc();
                    *v58 = 136315906;
                    *(v58 + 4) = sub_10001705C(0xD00000000000001ALL, 0x800000010001D390, &v81);
                    *(v58 + 12) = 2048;
                    v71 = v8;
                    if (v75)
                    {
                      v59 = sub_10001A5F0();
                    }

                    else
                    {
                      v59 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    *(v58 + 14) = v59;

                    *(v58 + 22) = 2080;
                    v61 = sub_10001705C(v73, v33, &v81);

                    *(v58 + 24) = v61;
                    *(v58 + 32) = 2080;
                    v62 = v76;
                    sub_100019D80();
                    sub_10001024C(&qword_10002A908, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                    v63 = v77;
                    v64 = sub_10001A630();
                    v66 = v65;
                    v72(v62, v63);
                    v67 = sub_10001705C(v64, v66, &v81);

                    *(v58 + 34) = v67;
                    _os_log_impl(&_mh_execute_header, v56, v57, "Widget Cache: %s wrote: %ld items for identifier: %s expiring on %s", v58, 0x2Au);
                    swift_arrayDestroy();

                    sub_10000F870(v80, v74);
                    v47 = *(v9 + 8);
                    v48 = v78;
                    v60 = v71;
                    return v47(v48, v60);
                  }

                  sub_10000F870(v80, v74);

                  v47 = *(v9 + 8);
                  v48 = v55;
LABEL_45:
                  v60 = v8;
                  return v47(v48, v60);
                }
              }

              v36 = v30;
              sub_10001A070();
              v37 = a1;
              v38 = sub_10001A080();
              v39 = sub_10001A2F0();

              if (os_log_type_enabled(v38, v39))
              {
                v40 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                *v40 = 136315394;
                *(v40 + 4) = sub_10001705C(0xD00000000000001ALL, 0x800000010001D390, &v82);
                *(v40 + 12) = 2080;
                v41 = *&v37[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier + 8];
                *&v81 = *&v37[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];
                *(&v81 + 1) = v41;

                sub_100004E8C(&qword_10002A900, &qword_10001C038);
                v42 = sub_10001A1D0();
                v44 = v9;
                v45 = sub_10001705C(v42, v43, &v82);

                *(v40 + 14) = v45;
                _os_log_impl(&_mh_execute_header, v38, v39, "Widget Cache: %s could not write items. Identifier: %s or defaults were nil", v40, 0x16u);
                swift_arrayDestroy();

                sub_10000F870(v80, v36);
                return (*(v44 + 8))(v11, v8);
              }

              sub_10000F870(v80, v36);

              v47 = *(v9 + 8);
              v48 = v11;
              goto LABEL_45;
            }

            goto LABEL_65;
          }

LABEL_64:
          __break(1u);
LABEL_65:
          swift_unknownObjectRelease();
          v22 = v80;
          v8 = v9;
          v9 = v4;
        }
      }

      sub_10000F77C(a3, v22, v3, v19);
      v26 = v25;
      goto LABEL_27;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  __break(1u);
  return result;
}

void sub_100009B08(unint64_t a1, uint64_t a2)
{
  v3 = sub_10001A090();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v47 = v12;
  v48 = v6;
  sub_10001A070();

  v18 = sub_10001A080();
  v19 = sub_10001A2F0();
  if (os_log_type_enabled(v18, v19))
  {
    v46 = v3;
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v21 = a1 >> 62;
    if (a1 >> 62)
    {
      v22 = sub_10001A5F0();
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v22;

    _os_log_impl(&_mh_execute_header, v18, v19, "Widget Cache: found %ld cached items from disk.", v20, 0xCu);

    v3 = v46;
  }

  else
  {
    v21 = a1 >> 62;
  }

  v23 = *(v4 + 8);
  v23(v15, v3);
  v24 = *&v17[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection];
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    if (([v26 isGathering] & 1) == 0)
    {
      v33 = v47;
      sub_10001A070();
      v34 = sub_10001A080();
      v35 = sub_10001A300();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v49 = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_10001705C(0xD00000000000001DLL, 0x800000010001D3D0, &v49);
        _os_log_impl(&_mh_execute_header, v34, v35, "Widget Cache: %s collection has finished gathering. Skipping loading cached items", v36, 0xCu);
        sub_10000583C(v37);
      }

      else
      {
      }

      v25(v33, v3);
      return;
    }

    v23 = v25;
  }

  v27 = v21;
  if (v21)
  {
    v40 = sub_10001A5F0();
    v28 = v48;
    if (v40)
    {
      goto LABEL_12;
    }

LABEL_24:
    sub_10001A070();
    v41 = sub_10001A080();
    v42 = sub_10001A2F0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_10001705C(0xD00000000000001DLL, 0x800000010001D3D0, &v49);
      _os_log_impl(&_mh_execute_header, v41, v42, "Widget Cache: %s items was not empty. Skipping loading cached items", v43, 0xCu);
      sub_10000583C(v44);
    }

    else
    {
    }

    v23(v28, v3);
    return;
  }

  v28 = v48;
  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

LABEL_12:
  sub_10001A070();

  v29 = sub_10001A080();
  v30 = sub_10001A2F0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    if (v27)
    {
      v32 = sub_10001A5F0();
    }

    else
    {
      v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v31 + 4) = v32;

    _os_log_impl(&_mh_execute_header, v29, v30, "Widget Cache: applied %ld items from the cache", v31, 0xCu);
  }

  else
  {
  }

  v23(v9, v3);
  v38 = v17;
  v39 = sub_1000065FC();
  *&v39[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items] = a1;

  [v39 setNeedsLayout];
}

uint64_t sub_10000A0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v8 = sub_10001A090();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001A100();
  v33 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001A150();
  __chkstk_darwin(v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v4[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_loadingCachedItems] = 1;
    v31 = v16;
    v20 = v17;
    v21 = swift_allocObject();
    v22 = v32;
    v21[2] = v4;
    v21[3] = v22;
    v21[4] = a4;
    v21[5] = a1;
    v21[6] = a2;
    aBlock[4] = sub_10000FAE0;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019CCC;
    aBlock[3] = &unk_1000251B0;
    v23 = _Block_copy(aBlock);

    v24 = v4;

    sub_10001A110();
    v34 = _swiftEmptyArrayStorage;
    sub_10001024C(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004E8C(&unk_10002AE50, &qword_10001C030);
    sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
    sub_10001A4E0();
    sub_10001A370();
    _Block_release(v23);
    (*(v33 + 8))(v14, v12);
    (*(v20 + 8))(v19, v31);
  }

  else
  {
    v26 = v9;
    sub_10001A070();
    v27 = sub_10001A080();
    v28 = sub_10001A2F0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10001705C(0xD000000000000030, 0x800000010001D3F0, aBlock);
      _os_log_impl(&_mh_execute_header, v27, v28, "Widget Cache: %s passed empty identifier", v29, 0xCu);
      sub_10000583C(v30);
    }

    return (*(v26 + 8))(v11, v8);
  }
}

id *sub_10000A51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001A090();
  __chkstk_darwin(v4);
  v5 = sub_10001A160();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a3 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemPersistenceQueue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_10001A170();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    sub_1000057B0(0, &qword_10002A938, NSKeyedUnarchiver_ptr);
    sub_100004E8C(&qword_10002A940, &qword_10001C068);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10001BF10;
    *(v13 + 32) = sub_1000057B0(0, &qword_10002A948, NSArray_ptr);
    *(v13 + 40) = sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);
    sub_10001A330();

    if (v16)
    {
      sub_10000FB28(&v15, v17);
      sub_10000FB28(v17, &v15);
      sub_100004E8C(&qword_10002A950, &qword_10001C070);
      if (swift_dynamicCast())
      {
        return v14;
      }
    }

    else
    {
      sub_10000FBF4(&v15, &qword_10002A930, &qword_10001C060);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000A91C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_100004E8C(&qword_10002A928, &qword_10001C058);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_100019D90();
  v53 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v52 = &v47 - v17;
  v54 = swift_allocObject();
  *(v54 + 16) = _swiftEmptyArrayStorage;
  sub_1000057B0(0, &qword_10002A8F8, NSUserDefaults_ptr);
  v18 = sub_10001A310();
  if (v18)
  {
    v19 = v18;
    v48 = a1;
    v49 = a2;
    v50 = a3;
    if (qword_10002A3C0 != -1)
    {
      swift_once();
    }

    v61[0] = xmmword_10002A6E0;

    v62._countAndFlagsBits = 95;
    v62._object = 0xE100000000000000;
    sub_10001A1F0(v62);

    v63._countAndFlagsBits = a4;
    v63._object = a5;
    sub_10001A1F0(v63);

    v51 = *&v61[0];
    v20 = sub_10001A190();
    v21 = [v19 valueForKey:v20];

    if (v21)
    {
      sub_10001A4D0();
      swift_unknownObjectRelease();
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
    }

    v61[0] = v59;
    v61[1] = v60;
    v22 = sub_10001A190();
    [v19 setURL:0 forKey:v22];

    if (qword_10002A3C8 != -1)
    {
      swift_once();
    }

    v59 = xmmword_10002A6F0;

    v64._countAndFlagsBits = 95;
    v64._object = 0xE100000000000000;
    sub_10001A1F0(v64);

    v65._countAndFlagsBits = a4;
    v65._object = a5;
    sub_10001A1F0(v65);

    v23 = sub_10001A190();
    v24 = [v19 valueForKey:v23];

    if (v24)
    {
      sub_10001A4D0();
      swift_unknownObjectRelease();
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
    }

    v25 = v53;
    v59 = v57;
    v60 = v58;
    v26 = sub_10001A190();
    [v19 setURL:0 forKey:v26];

    sub_10000FB8C(&v59, &v57, &qword_10002A930, &qword_10001C060);
    if (!*(&v58 + 1))
    {

      sub_10000FBF4(&v59, &qword_10002A930, &qword_10001C060);
      sub_10000FBF4(v61, &qword_10002A930, &qword_10001C060);
      sub_10000FBF4(&v57, &qword_10002A930, &qword_10001C060);
      (*(v25 + 56))(v12, 1, 1, v13);
      goto LABEL_16;
    }

    v27 = swift_dynamicCast();
    (*(v25 + 56))(v12, v27 ^ 1u, 1, v13);
    if ((*(v25 + 48))(v12, 1, v13) == 1)
    {

      sub_10000FBF4(&v59, &qword_10002A930, &qword_10001C060);
      sub_10000FBF4(v61, &qword_10002A930, &qword_10001C060);
LABEL_16:
      v28 = &qword_10002A928;
      v29 = &qword_10001C058;
      v30 = v12;
LABEL_26:
      sub_10000FBF4(v30, v28, v29);
      a3 = v50;
      a2 = v49;
      a1 = v48;
      goto LABEL_27;
    }

    v31 = v52;
    (*(v25 + 32))(v52, v12, v13);
    sub_100019D80();
    sub_100019D60();
    v33 = v32;
    v36 = *(v25 + 8);
    v34 = v25 + 8;
    v35 = v36;
    v36(v15, v13);
    if (v33 / 86400.0 >= 2.0)
    {

      v45 = v31;
    }

    else
    {
      sub_10000FB8C(v61, &v57, &qword_10002A930, &qword_10001C060);
      if (!*(&v58 + 1))
      {

        v35(v52, v13);
        sub_10000FBF4(&v59, &qword_10002A930, &qword_10001C060);
        sub_10000FBF4(v61, &qword_10002A930, &qword_10001C060);
        v30 = &v57;
LABEL_25:
        v28 = &qword_10002A930;
        v29 = &qword_10001C060;
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        v37 = v55;
        v47 = v56;
        v53 = v34;
        v38 = v48;
        v39 = sub_10000A51C(v55, v56, v48);
        *(v54 + 16) = v39;

        isa = sub_100019D40().super.isa;
        v41 = sub_10001A190();
        a1 = v38;

        [v19 setObject:isa forKey:v41];

        v42 = v52;
        v43 = sub_100019D70().super.isa;
        v44 = sub_10001A190();

        [v19 setObject:v43 forKey:v44];
        sub_10000F884(v37, v47);

        v35(v42, v13);
        sub_10000FBF4(&v59, &qword_10002A930, &qword_10001C060);
        sub_10000FBF4(v61, &qword_10002A930, &qword_10001C060);
        a3 = v50;
        a2 = v49;
        goto LABEL_27;
      }

      v45 = v52;
    }

    v35(v45, v13);
    sub_10000FBF4(&v59, &qword_10002A930, &qword_10001C060);
    v30 = v61;
    goto LABEL_25;
  }

LABEL_27:
  sub_10000B144(v54, a1, a2, a3);
}

uint64_t sub_10000B144(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10001A090();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A070();

  v12 = sub_10001A080();
  v13 = sub_10001A2F0();
  if (os_log_type_enabled(v12, v13))
  {
    v22 = a3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_10001705C(0xD000000000000030, 0x800000010001D3F0, &v23);
    *(v14 + 12) = 1024;
    swift_beginAccess();
    v16 = *(a1 + 16);
    if (v16 >> 62)
    {
      v17 = sub_10001A5F0();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 14) = v17 != 0;

    _os_log_impl(&_mh_execute_header, v12, v13, "Widget Cache: %s had a saved value: %{BOOL}d", v14, 0x12u);
    sub_10000583C(v15);

    (*(v9 + 8))(v11, v8);
    a3 = v22;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a1;

  v19 = a2;

  sub_100019DE0();
}

void sub_10000B3DC(void (*a1)(char *, char *, uint64_t), uint64_t a2, void *a3, void *a4)
{
  v46 = a4;
  v47 = a1;
  v6 = sub_10001A090();
  v49 = *(v6 - 1);
  v50 = v6;
  __chkstk_darwin(v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004E8C(&unk_10002A540, &unk_10001B9F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  v48 = sub_100019D30();
  v12 = *(v48 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v48);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = sub_10001A190();
  sub_100019EC0();
  v51 = v18;
  v19 = sub_100019EA0();
  if (!a2)
  {
    v20 = v17;
    sub_10000FB8C(v47, v11, &unk_10002A540, &unk_10001B9F0);
    v21 = v48;
    if ((*(v12 + 48))(v11, 1, v48) != 1)
    {
      v49 = v19;
      v47 = *(v12 + 32);
      v45 = v20;
      v47(v20, v11, v21);
      v50 = [objc_opt_self() defaultPermission];
      (*(v12 + 16))(v14, v20, v21);
      v32 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v33 = (v13 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      v47((v36 + v32), v14, v21);
      *(v36 + v33) = a3;
      v37 = v46;
      *(v36 + v34) = v46;
      v38 = v49;
      *(v36 + v35) = v49;
      aBlock[4] = sub_10000F4FC;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019CCC;
      aBlock[3] = &unk_100025020;
      v39 = _Block_copy(aBlock);
      v40 = a3;
      v41 = v37;
      v42 = v38;

      v43 = v50;
      [v50 adoptPersonaFromNode:v40 andPerformBlock:v39];
      _Block_release(v39);

      (*(v12 + 8))(v45, v21);
      return;
    }

    sub_10000FBF4(v11, &unk_10002A540, &unk_10001B9F0);
  }

  sub_10001A070();
  v22 = a3;
  swift_errorRetain();
  v23 = sub_10001A080();
  v24 = sub_10001A300();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v19;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v26 = 136315650;
    *(v26 + 4) = sub_10001705C(0xD00000000000001BLL, 0x800000010001D300, aBlock);
    *(v26 + 12) = 2112;
    *(v26 + 14) = v22;
    *v27 = v22;
    *(v26 + 22) = 2112;
    v29 = v22;
    if (a2)
    {
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = v30;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    *(v26 + 24) = v30;
    v27[1] = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s Failed to fetch url for item: %@ error: %@", v26, 0x20u);
    sub_100004E8C(&unk_10002A8C0, &qword_10001C018);
    swift_arrayDestroy();

    sub_10000583C(v28);

    v49[1](v8, v50);
    v19 = v25;
  }

  else
  {

    v49[1](v8, v50);
  }

  sub_100019EB0();
}

uint64_t sub_10000B9AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = a1;
  v23 = a4;
  v7 = sub_100019D30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v10);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v12, v11, v7);
  *(v16 + v13) = a2;
  *(v16 + v14) = a3;
  v17 = v23;
  *(v16 + v15) = v23;
  v18 = a2;
  v19 = a3;
  v20 = v17;
  sub_100019EE0();
}

uint64_t sub_10000BB4C(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v26 = a2;
  v27 = a1;
  v6 = sub_100019FB0();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100019FA0();
  v8 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100019F90();
  __chkstk_darwin(v11 - 8);
  v12 = sub_100019F60();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100019FC0();
  v16 = *(v28 - 8);
  v17.n128_f64[0] = __chkstk_darwin(v28);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v27 & 1) == 0)
  {
    sub_100019ED0();
  }

  (*(v13 + 104))(v15, enum case for DOCAnalyticsActionEvent.Action.openIn(_:), v12, v17);
  sub_100006078();
  sub_100004E8C(&qword_10002A550, &qword_10001C020);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10001B970;
  *(v20 + 32) = a3;
  v21 = a3;
  sub_100019F80();
  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    sub_10001A1C0();
  }

  (*(v8 + 104))(v10, enum case for DOCAnalyticsActionEvent.Source.recents(_:), v29);
  (*(v31 + 104))(v30, enum case for DOCAnalyticsActionEvent.ViewMode.unknown(_:), v32);
  sub_100019F70();
  sub_100019E90();
  v24 = sub_100019E80();
  sub_100019E70();

  sub_100019EB0();
  return (*(v16 + 8))(v19, v28);
}

void sub_10000BF68(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001A090();
  v94 = *(v6 - 8);
  __chkstk_darwin(v6);
  v89 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v87 = &v86 - v9;
  __chkstk_darwin(v10);
  v93 = &v86 - v11;
  __chkstk_darwin(v12);
  v90 = &v86 - v13;
  __chkstk_darwin(v14);
  v16 = &v86 - v15;
  sub_10001A070();

  v17 = sub_10001A080();
  v18 = sub_10001A2F0();

  v19 = os_log_type_enabled(v17, v18);
  v91 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v86 = a1;
    v21 = v20;
    v96 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = sub_10001705C(0xD000000000000029, 0x800000010001D430, &v96);
    *(v21 + 12) = 2080;
    v95[0] = a2;
    v95[1] = a3;

    sub_100004E8C(&qword_10002A900, &qword_10001C038);
    v22 = sub_10001A1D0();
    v24 = v6;
    v25 = sub_10001705C(v22, v23, &v96);

    *(v21 + 14) = v25;
    v6 = v24;
    v26 = v94;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: %s", v21, 0x16u);
    swift_arrayDestroy();

    a1 = v86;

    v27 = v26;
  }

  else
  {

    v27 = v94;
  }

  v28 = *(v27 + 8);
  v28(v16, v6);
  v29 = v93;
  if (a3)
  {
    v30 = sub_10001A1C0();
    v32 = v31;
    v33 = sub_10001A1C0();
    v88 = a3;
    if (v30 == v33 && v32 == v34)
    {
      goto LABEL_7;
    }

    v39 = sub_10001A650();

    if (v39)
    {
      goto LABEL_12;
    }

    v52 = sub_10001A1C0();
    v54 = v53;
    if (v52 == sub_10001A1C0() && v54 == v55)
    {
LABEL_7:
    }

    else
    {
      v56 = sub_10001A650();

      if ((v56 & 1) == 0)
      {
        v57 = sub_10001A1C0();
        v59 = v58;
        if (v57 == sub_10001A1C0() && v59 == v60)
        {
        }

        else
        {
          v61 = sub_10001A650();

          if ((v61 & 1) == 0)
          {
            v75 = v87;
            sub_10001A070();
            v76 = a1;
            v77 = sub_10001A080();
            v78 = sub_10001A300();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v95[0] = swift_slowAlloc();
              *v79 = 136315394;
              *(v79 + 4) = sub_10001705C(0xD000000000000029, 0x800000010001D430, v95);
              *(v79 + 12) = 2080;
              v80 = sub_10001A1C0();
              v82 = sub_10001705C(v80, v81, v95);

              *(v79 + 14) = v82;
              _os_log_impl(&_mh_execute_header, v77, v78, "%s attempting to configure with unknown type: %s. Falling back to Recents.", v79, 0x16u);
              swift_arrayDestroy();
            }

            v28(v75, v6);
            v83 = sub_10001A1C0();
            v85 = sub_10000C964(v83, v84, v92);

            v51 = v85;
            goto LABEL_16;
          }
        }

        sub_10001A070();
        v62 = a1;
        v63 = sub_10001A080();
        v64 = sub_10001A2F0();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v95[0] = swift_slowAlloc();
          *v65 = 136315394;
          *(v65 + 4) = sub_10001705C(0xD000000000000029, 0x800000010001D430, v95);
          *(v65 + 12) = 2080;
          v66 = sub_10001A1C0();
          v68 = v6;
          v69 = sub_10001705C(v66, v67, v95);

          *(v65 + 14) = v69;
          _os_log_impl(&_mh_execute_header, v63, v64, "%s configure with %s", v65, 0x16u);
          swift_arrayDestroy();

          v70 = v29;
          v71 = v68;
        }

        else
        {

          v70 = v29;
          v71 = v6;
        }

        v28(v70, v71);
        v72 = [objc_opt_self() defaultManager];
        v73 = sub_10001A190();
        v74 = [v72 newCollectionForTag:v73];

        sub_10000D070(v74);
        v51 = v74;
LABEL_16:
        sub_1000062CC(v51);
        return;
      }
    }

LABEL_12:
    v40 = v90;
    sub_10001A070();
    v41 = a1;
    v42 = sub_10001A080();
    v43 = sub_10001A2F0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v95[0] = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_10001705C(0xD000000000000029, 0x800000010001D430, v95);
      *(v44 + 12) = 2080;
      v45 = sub_10001A1C0();
      v47 = v6;
      v48 = sub_10001705C(v45, v46, v95);

      *(v44 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "%s configure with %s", v44, 0x16u);
      swift_arrayDestroy();

      v49 = v40;
      v50 = v47;
    }

    else
    {

      v49 = v40;
      v50 = v6;
    }

    v28(v49, v50);
    v51 = sub_10000C964(v91, v88, v92);
    goto LABEL_16;
  }

  v35 = v89;
  sub_10001A070();
  v36 = sub_10001A080();
  v37 = sub_10001A300();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v95[0] = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_10001705C(0xD000000000000029, 0x800000010001D430, v95);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_10001705C(7104878, 0xE300000000000000, v95);
    _os_log_impl(&_mh_execute_header, v36, v37, "%s received nil identifier: %s! Setting to Recents as the default.", v38, 0x16u);
    swift_arrayDestroy();
  }

  v28(v35, v6);
}

void *sub_10000C964(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v62 = a3;
  v61 = sub_10001A090();
  v63 = *(v61 - 8);
  __chkstk_darwin(v61);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v59 - v8;
  __chkstk_darwin(v10);
  v12 = &v59 - v11;
  v13 = sub_10001A190();
  v14 = DOCSpotlightEnumeratedItemIdentifierRecentDocuments;
  v15 = sub_10001A1C0();
  v17 = v16;
  if (v15 == sub_10001A1C0() && v17 == v18)
  {
    v22 = v13;

LABEL_8:

    goto LABEL_9;
  }

  v60 = v14;
  v20 = sub_10001A650();
  v21 = v13;

  if (v20)
  {

LABEL_9:
    sub_10001A070();
    v23 = v13;
    v24 = sub_10001A080();
    v25 = sub_10001A2F0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_10001705C(0xD000000000000019, 0x800000010001D460, &v64);
      *(v26 + 12) = 2080;
      v27 = sub_10001A1C0();
      v29 = v28;

      v30 = sub_10001705C(v27, v29, &v64);

      *(v26 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s valid sourceIdentifier: %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v31 = *(v63 + 8);
    v32 = v61;
    v31(v12, v61);
    goto LABEL_13;
  }

  v49 = sub_10001A1C0();
  v51 = v50;
  if (v49 == sub_10001A1C0() && v51 == v52)
  {

    goto LABEL_8;
  }

  v54 = sub_10001A650();

  if (v54)
  {
    goto LABEL_9;
  }

  sub_10001A070();

  v55 = sub_10001A080();
  v56 = sub_10001A300();

  v57 = os_log_type_enabled(v55, v56);
  v32 = v61;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v58 = 136315394;
    *(v58 + 4) = sub_10001705C(0xD000000000000019, 0x800000010001D460, &v64);
    *(v58 + 12) = 2080;
    *(v58 + 14) = sub_10001705C(a1, a2, &v64);
    _os_log_impl(&_mh_execute_header, v55, v56, "%s invalid sourceIdentifier: %s", v58, 0x16u);
    swift_arrayDestroy();
  }

  v31 = *(v63 + 8);
  v31(v9, v32);
  v23 = v60;

LABEL_13:
  v33 = v23;
  sub_10001A070();
  v34 = v33;
  v35 = sub_10001A080();
  v36 = sub_10001A2F0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v37 = 136315394;
    *(v37 + 4) = sub_10001705C(0xD000000000000019, 0x800000010001D460, &v64);
    *(v37 + 12) = 2080;
    v38 = sub_10001A1C0();
    v40 = sub_10001705C(v38, v39, &v64);

    *(v37 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s enumerationIdentifier: %s)", v37, 0x16u);
    swift_arrayDestroy();
  }

  v31(v6, v32);
  v41 = v62;
  v42 = sub_100006078();
  v43 = [objc_allocWithZone(DOCEnumerationProperties) initWithConfiguration:v42 tags:0];

  v44 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration;
  isa = [*(v41 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController____lazy_storage___configuration) recentDocumentsContentTypes];
  if (!isa)
  {
    sub_100019E60();
    sub_10001A250();
    isa = sub_10001A240().super.isa;
  }

  [v43 setAllowedContentTypes:isa];

  v46 = [objc_opt_self() defaultManager];
  [*(v41 + v44) supportsRemovableFileProviders];
  v47 = sub_10001A2E0();

  sub_10000D070(v47);
  return v47;
}

void sub_10000D070(void *a1)
{
  v2 = sub_100019FF0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019F20();
  v6 = [objc_opt_self() defaultPermission];
  sub_100005D00(v5);
  v7 = sub_100019F10();

  (*(v3 + 8))(v5, v2);
  [a1 setItemFilteringPredicate:v7];
  sub_1000057B0(0, &qword_10002A958, NSNumber_ptr);
  isa = sub_10001A4A0(DOCRecentsMaximumNumberOfItems).super.super.isa;
  [a1 setDesiredNumberOfItems:isa];

  sub_10000D220(a1);
}

uint64_t sub_10000D220(void *a1)
{
  v3 = sub_100019EF0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100019F50();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for DOCItemSortMode.lastUsedDate(_:), v3, v9);
  sub_100019F40();
  [a1 setWorkingQueue:*(v1 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_itemCollectionObservationQueue)];
  [a1 setDelegate:v1];
  sub_100019F30();
  sub_1000057B0(0, &qword_10002A960, NSSortDescriptor_ptr);
  isa = sub_10001A240().super.isa;

  [a1 reorderItemsWithSortDescriptors:isa];

  return (*(v8 + 8))(v11, v7);
}

void sub_10000D41C(void *a1)
{
  v2 = v1;
  v4 = sub_10001A090();
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = v6;
    v32 = v5;
    v9 = objc_opt_self();
    v10 = a1;
    v11 = [v9 sharedManager];
    v12 = [v11 nodeRequiresAuthentication_Sync:*(v2 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_observedCollectionItem)];

    if (v12)
    {
      v13 = _swiftEmptyArrayStorage;
    }

    else
    {
      v14 = [v10 items];
      sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);
      v13 = sub_10001A250();
    }

    sub_10001A070();
    v15 = v10;
    v16 = sub_10001A080();
    v17 = sub_10001A2F0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = v2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v19 = 136315906;
      *(v19 + 4) = sub_10001705C(0xD00000000000001CLL, 0x800000010001D370, &v33);
      *(v19 + 12) = 1024;
      *(v19 + 14) = v12;
      *(v19 + 18) = 2080;
      sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);

      v21 = sub_10001A260();
      v23 = v22;

      v24 = sub_10001705C(v21, v23, &v33);

      *(v19 + 20) = v24;
      *(v19 + 28) = 2112;
      *(v19 + 30) = v15;
      *v20 = a1;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s isInLockedOrHiddenLocation: %{BOOL}d updating to items: %s from collection: %@", v19, 0x26u);
      sub_10000FBF4(v20, &unk_10002A8C0, &qword_10001C018);

      swift_arrayDestroy();
    }

    (*(v31 + 8))(v8, v32);
    v26 = sub_1000065FC();
    *&v26[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items] = v13;

    [v26 setNeedsLayout];

    sub_100008AC0(v27, 8);

    swift_bridgeObjectRelease_n();
  }
}

void sub_10000D7C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_10001A090();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A070();

  v12 = sub_10001A080();
  v13 = sub_10001A2F0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = a3;
    aBlock[0] = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_10001705C(0xD00000000000001CLL, 0x800000010001D4A0, aBlock);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_10001705C(a1, a2, aBlock);
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_10001705C(v24, a4, aBlock);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s loading folder with ID: %s domain: %s.", v15, 0x20u);
    swift_arrayDestroy();

    (*(v9 + 8))(v11, v23);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v17 = sub_10001A190();
  v18 = sub_10001A190();
  v19 = [objc_allocWithZone(FPItemID) initWithProviderDomainID:v17 itemIdentifier:v18];

  v20 = [objc_opt_self() defaultManager];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10000FCD0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DE24;
  aBlock[3] = &unk_100025278;
  v22 = _Block_copy(aBlock);

  [v20 fetchItemForItemID:v19 completionHandler:v22];
  _Block_release(v22);
}

void sub_10000DB20(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10001A090();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = objc_opt_self();
      v12 = a1;
      v13 = [v11 defaultManager];
      v14 = [v13 collectionForFolderItem:v12];

      v15 = v14;
      sub_10000D220(v15);
      *&v10[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_observedCollectionItem] = a1;
      v16 = v12;
      swift_unknownObjectRelease();
      sub_1000062CC(v15);
    }
  }

  else
  {
    sub_10001A070();
    swift_errorRetain();
    v17 = sub_10001A080();
    v18 = sub_10001A300();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_10001705C(0xD00000000000001CLL, 0x800000010001D4A0, &v26);
      *(v19 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v20 = sub_10001A690();
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      v25[0] = v20;
      v25[1] = v21;
      sub_100004E8C(&qword_10002A900, &qword_10001C038);
      v22 = sub_10001A1D0();
      v24 = sub_10001705C(v22, v23, &v26);

      *(v19 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s failed to get folder item: %s", v19, 0x16u);
      swift_arrayDestroy();
    }

    (*(v6 + 8))(v8, v5);
  }
}

void sub_10000DE24(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10000DF3C(uint64_t a1, void *a2, __n128 a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10000D41C(a2);
  }
}

void sub_10000E0C0(void *a1)
{
  v2 = v1;
  v4 = sub_10001A090();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v42 - v9;
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  sub_10001A070();
  v13 = a1;
  v14 = sub_10001A080();
  v15 = sub_10001A2F0();

  v16 = os_log_type_enabled(v14, v15);
  v45 = v13;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v43 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = v2;
    v47 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_10001705C(0xD00000000000001FLL, 0x800000010001D3B0, &v47);
    *(v18 + 12) = 2080;
    v46 = a1;
    v20 = v13;
    sub_100004E8C(&qword_10002A910, &qword_10001C040);
    v21 = sub_10001A1D0();
    v23 = v5;
    v24 = sub_10001705C(v21, v22, &v47);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s configuration %s", v18, 0x16u);
    swift_arrayDestroy();

    v4 = v43;

    v25 = v23;
  }

  else
  {

    v25 = v5;
  }

  v26 = *(v25 + 8);
  v26(v12, v4);
  if (a1)
  {
    v27 = objc_opt_self();
    v28 = v45;
    v29 = [v27 intentFromGenericIntent:v28];
    if (v29)
    {
      v30 = v29;
      sub_10000E598(v29);

      return;
    }

    v37 = v44;
    sub_10001A070();
    v38 = sub_10001A080();
    v39 = sub_10001A300();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_10001705C(0xD00000000000001FLL, 0x800000010001D3B0, &v47);
      _os_log_impl(&_mh_execute_header, v38, v39, "%s genericIntent did not convert to DOCOpenLocationIntent", v40, 0xCu);
      sub_10000583C(v41);
    }

    else
    {
    }

    v36 = v37;
  }

  else
  {
    sub_10001A070();
    v31 = sub_10001A080();
    v32 = sub_10001A300();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v7;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_10001705C(0xD00000000000001FLL, 0x800000010001D3B0, &v47);
      _os_log_impl(&_mh_execute_header, v31, v32, "%s genericIntent was nil", v34, 0xCu);
      sub_10000583C(v35);

      v36 = v33;
    }

    else
    {

      v36 = v7;
    }
  }

  v26(v36, v4);
}

uint64_t sub_10000E598(void *a1)
{
  v90 = sub_100004E8C(&unk_10002A540, &unk_10001B9F0);
  __chkstk_darwin(v90);
  v3 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v86 - v5;
  v7 = sub_10001A090();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v93 = &v86 - v12;
  __chkstk_darwin(v13);
  v15 = &v86 - v14;
  sub_10001A070();
  v16 = a1;
  v17 = sub_10001A080();
  v18 = sub_10001A300();

  v89 = v18;
  v19 = os_log_type_enabled(v17, v18);
  v92 = v7;
  v94 = v8;
  v88 = v10;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v95 = v86;
    *v20 = 136315650;
    *(v20 + 4) = sub_10001705C(0x6628657461647075, 0xEC000000293A726FLL, &v95);
    *(v20 + 12) = 2080;
    v87 = v16;
    v21 = v16;
    v22 = [v21 description];
    v23 = sub_10001A1C0();
    v25 = v24;

    v26 = sub_10001705C(v23, v25, &v95);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    v27 = [v21 folder];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 fileURL];

      if (v29)
      {
        sub_100019D20();

        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      v7 = v92;
      v33 = sub_100019D30();
      (*(*(v33 - 8) + 56))(v3, v30, 1, v33);
      sub_10000FA20(v3, v6);
    }

    else
    {
      v32 = sub_100019D30();
      (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
      v7 = v92;
    }

    v34 = sub_10001A1D0();
    v36 = sub_10001705C(v34, v35, &v95);

    *(v20 + 24) = v36;
    _os_log_impl(&_mh_execute_header, v17, v89, "%s %s folder: %s", v20, 0x20u);
    swift_arrayDestroy();

    v31 = *(v94 + 8);
    v31(v15, v7);
    v16 = v87;
  }

  else
  {

    v31 = *(v8 + 8);
    v31(v15, v7);
  }

  sub_10001A060();
  swift_allocObject();
  v37 = v16;
  sub_10001A050();
  v38 = swift_allocObject();
  v39 = v91;
  *(v38 + 16) = v91;
  v40 = v39;
  sub_10001A020();
  *(swift_allocObject() + 16) = v40;
  v41 = v40;
  sub_10001A010();
  *(swift_allocObject() + 16) = v41;
  v42 = v41;
  sub_10001A000();
  v43 = sub_10001A040();
  v44 = &v42[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collectionIdentifier];
  *v44 = v43;
  v44[1] = v45;

  v46 = v93;
  sub_10001A070();
  v47 = v42;
  v48 = sub_10001A080();
  v49 = sub_10001A2F0();
  if (os_log_type_enabled(v48, v49))
  {
    v91 = v31;
    v50 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v97 = v90;
    *v50 = 136316162;
    *(v50 + 4) = sub_10001705C(0x6628657461647075, 0xEC000000293A726FLL, &v97);
    *(v50 + 12) = 2080;
    v51 = v44[1];
    v95 = *v44;
    v96 = v51;

    sub_100004E8C(&qword_10002A900, &qword_10001C038);
    v52 = sub_10001A1D0();
    v54 = sub_10001705C(v52, v53, &v97);

    *(v50 + 14) = v54;
    *(v50 + 22) = 2048;
    v55 = sub_1000065FC();
    v56 = *&v55[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items];

    if (v56 >> 62)
    {
      v57 = sub_10001A5F0();
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v50 + 24) = v57;

    *(v50 + 32) = 2080;
    v58 = OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection;
    v95 = *&v47[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection];
    v59 = v95;
    sub_100004E8C(&qword_10002A918, &qword_10001C048);
    v60 = sub_10001A1D0();
    v62 = sub_10001705C(v60, v61, &v97);

    *(v50 + 34) = v62;
    *(v50 + 42) = 2080;
    v63 = *&v47[v58];
    if (v63)
    {
      v64 = [v63 isGathering];
    }

    else
    {
      v64 = 2;
    }

    v7 = v92;
    v65 = v93;
    LOBYTE(v95) = v64;
    sub_100004E8C(&qword_10002A920, &qword_10001C050);
    v66 = sub_10001A1D0();
    v68 = sub_10001705C(v66, v67, &v97);

    *(v50 + 44) = v68;
    _os_log_impl(&_mh_execute_header, v48, v49, "Widget Cache: %s collectionIdentifier: %s recentItemsView count: %ld collection: %s isGathering: %s", v50, 0x34u);
    swift_arrayDestroy();

    v31 = v91;
    v91(v65, v7);
  }

  else
  {

    v31(v46, v7);
  }

  v69 = sub_1000065FC();
  v70 = *&v69[OBJC_IVAR____TtC14RecentsAvocado15RecentItemsView_items];

  if (v70 >> 62)
  {
    v71 = sub_10001A5F0();
  }

  else
  {
    v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v71)
  {
    v91 = v31;
    v72 = v88;
    sub_10001A070();
    v73 = v47;
    v74 = sub_10001A080();
    v75 = sub_10001A2F0();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v76 = 136315394;
      *(v76 + 4) = sub_10001705C(0x6628657461647075, 0xEC000000293A726FLL, &v97);
      *(v76 + 12) = 2080;
      v77 = v44[1];
      v95 = *v44;
      v96 = v77;

      sub_100004E8C(&qword_10002A900, &qword_10001C038);
      v78 = sub_10001A1D0();
      v80 = sub_10001705C(v78, v79, &v97);

      *(v76 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v74, v75, "Widget Cache: %s load cached items before folder is fetched from FileProvider %s", v76, 0x16u);
      swift_arrayDestroy();

      v81 = v72;
      v82 = v92;
    }

    else
    {

      v81 = v72;
      v82 = v7;
    }

    v91(v81, v82);
    v83 = *v44;
    v84 = v44[1];

    sub_100006DB4(v83, v84);
  }

  sub_10001A030();
}

double sub_10000F018(void *a1)
{
  v2 = [a1 itemIdentifier];
  v3 = sub_10001A1C0();
  v5 = v4;

  v6 = [a1 providerDomainID];
  v7 = sub_10001A1C0();
  v9 = v8;

  sub_10000D7C0(v3, v5, v7, v9);

  return result;
}

void sub_10000F130(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v4 = sub_1000065FC();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100019DE0();
}

void sub_10000F1D0()
{
  v1 = sub_10001A090();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() protectedAppsEnabled])
  {
    sub_10001A070();
    v5 = v0;
    v6 = sub_10001A080();
    v7 = sub_10001A2F0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v8 = 136315650;
      *(v8 + 4) = sub_10001705C(0xD00000000000001ELL, 0x800000010001D350, &v14);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_10001705C(0xD00000000000001ELL, 0x800000010001D350, &v14);
      *(v8 + 22) = 2112;
      *(v8 + 24) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s [PROTECTED APPS] %s %@", v8, 0x20u);
      sub_10000FBF4(v9, &unk_10002A8C0, &qword_10001C018);

      swift_arrayDestroy();
    }

    (*(v2 + 8))(v4, v1);
    v11 = *&v5[OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection];
    v12 = v11;
    sub_10000D41C(v11);
  }
}

double sub_10000F484(uint64_t a1, void (*a2)(uint64_t), __n128 a3, uint64_t a4, uint64_t a5)
{
  *(a1 + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_loadingCachedItems) = 0;
  swift_beginAccess();

  a2(v6);

  return result;
}

uint64_t sub_10000F4FC()
{
  v1 = *(sub_100019D30() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10000B9AC(v0 + v2, v5, v6, v7);
}

uint64_t sub_10000F5A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F5B8()
{
  v1 = sub_100019D30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10000F67C(int a1)
{
  v3 = *(sub_100019D30() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10000BB4C(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_10000F730()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10000F77C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100004E8C(&qword_10002A550, &qword_10001C020);
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

uint64_t sub_10000F870(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F884(result, a2);
  }

  return result;
}

uint64_t sub_10000F884(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000F8D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F8EC(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F8EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000F944()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F984()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E8C(&unk_10002A540, &unk_10001B9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FA98()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000FAF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_10000FB28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000FB38()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FB8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004E8C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000FBF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004E8C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000FC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E8C(&unk_10002A970, qword_10001C080);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FCD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v6 = sub_10001A100();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10001A150();
  v9 = *(v20 - 8);
  __chkstk_darwin(v20);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000057B0(0, &qword_10002AE60, OS_dispatch_queue_ptr);
  v12 = sub_10001A360();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = v19;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_10001A110();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001024C(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004E8C(&unk_10002AE50, &qword_10001C030);
  sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
  sub_10001A4E0();
  sub_10001A370();
  _Block_release(v15);

  (*(v21 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v20);
}

uint64_t sub_10000FFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A090();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A070();

  v8 = sub_10001A080();
  v9 = sub_10001A2F0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10001705C(0xD00000000000001CLL, 0x800000010001D4C0, &v16);
    *(v10 + 12) = 2080;
    v15[1] = a1;
    v15[2] = a2;

    sub_100004E8C(&qword_10002A900, &qword_10001C038);
    v11 = sub_10001A1D0();
    v13 = sub_10001705C(v11, v12, &v16);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s bundleIdentifier %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10001020C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001024C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100010294(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005768(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

SEL *sub_1000102F4(SEL *result)
{
  if (*(*(v1 + 16) + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection))
  {
    return [*(*(v1 + 16) + OBJC_IVAR____TtC14RecentsAvocado37RecentsHomeScreenWidgetViewController_collection) *result];
  }

  return result;
}

uint64_t sub_100010320(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001039C()
{
  v1 = sub_10001A100();
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  __chkstk_darwin(v1);
  v25 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10001A350();
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001A340();
  __chkstk_darwin(v7);
  v8 = sub_10001A150();
  v23 = *(v8 - 8);
  v24 = v8;
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100010B3C();
  v20 = v0;
  v21 = v11;
  v19 = "yToken";
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_10001A110();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100010BE0(&unk_10002A980, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004E8C(&unk_10002AE70, &qword_10001C0E0);
  sub_100010294(&unk_10002A990, &unk_10002AE70, &qword_10001C0E0);
  sub_10001A4E0();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  v12 = sub_10001A380();
  v13 = v20;
  *(v20 + 40) = v12;
  v14 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100010BC0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = &unk_100025408;
  v15 = _Block_copy(aBlock);

  sub_10001A110();
  v28 = _swiftEmptyArrayStorage;
  sub_100010BE0(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004E8C(&unk_10002AE50, &qword_10001C030);
  sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
  v17 = v25;
  v16 = v26;
  sub_10001A4E0();
  sub_10001A370();
  _Block_release(v15);
  (*(v27 + 8))(v17, v16);
  (*(v23 + 8))(v10, v24);

  return v13;
}

void sub_10001084C(uint64_t a1, __n128 a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (MKBDeviceFormattedForContentProtection())
    {
      v5 = *(v4 + 40);
      aBlock[4] = sub_100010C28;
      aBlock[5] = a1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100010A6C;
      aBlock[3] = &unk_100025430;
      v6 = _Block_copy(aBlock);
      v7 = v5;

      swift_beginAccess();
      notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v4 + 32), v7, v6);
      swift_endAccess();
      _Block_release(v6);
    }

    else
    {
    }
  }
}

uint64_t sub_100010988(__n128 a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 16);
    if (v4)
    {
      v5 = *(result + 24);
      v6 = result;
      v7 = swift_allocObject();
      v7[2] = v4;
      v7[3] = v5;
      v7[4] = v6;
      sub_100010CAC(v4, v5);
      sub_100010CAC(v4, v5);

      sub_100019DE0();

      return sub_100010320(v4, v5);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100010A6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100010AC0(__n128 a1)
{
  swift_beginAccess();
  notify_cancel(*(v1 + 32));
  sub_100010320(*(v1 + 16), *(v1 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_100010B3C()
{
  result = qword_10002AE60;
  if (!qword_10002AE60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002AE60);
  }

  return result;
}

uint64_t sub_100010B88()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010BE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100010C30()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010C70()
{
  v1 = *(v0 + 16);
  v2 = MKBGetDeviceLockState();
  if (v2)
  {
    v3 = v2 == 3;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return v1(v4);
}

uint64_t sub_100010CAC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100010CC4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100010D48(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_100010D8C(double a1, double a2)
{
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100019AC8;
  *(v7 + 24) = v6;
  v12[4] = sub_100019B40;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100010F28;
  v12[3] = &unk_100025768;
  v8 = _Block_copy(v12);
  v9 = v2;

  v10 = [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void sub_100010F28(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_100010F8C(uint64_t a1)
{
  v2 = sub_10001A0C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001A0F0();
  __chkstk_darwin(v6 - 8);
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (_UISolariumEnabled())
  {
    sub_10001A0A0();
    sub_10001A0E0();
    (*(v3 + 8))(v5, v2);
    sub_10001A440();
  }

  else
  {
    v8 = [v7 layer];
    [v8 setCornerCurve:kCACornerCurveContinuous];

    v9 = [v7 layer];
    [v9 setCornerRadius:sub_10001123C()];

    v10 = [v7 layer];
    [v10 setMasksToBounds:1];
  }

  v11 = [v7 layer];
  [v11 setCompositingFilter:kCAFilterPlusL];

  if (*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected))
  {
    v12 = 0.0980392157;
  }

  else
  {
    v12 = 0.152941176;
  }

  v13 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:v12 green:v12 blue:v12 alpha:1.0];
  [v7 setBackgroundColor:v13];

  return v7;
}

double sub_10001123C()
{
  v1 = (v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___cornerRadius);
  if ((*(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___cornerRadius + 8) & 1) == 0)
  {
    return *v1;
  }

  strcpy(v1, "ףp=\nW+@");
  return 13.67;
}

double sub_10001127C()
{
  v1 = v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize;
  if ((*(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 16) & 1) == 0)
  {
    return *v1;
  }

  if (*(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout))
  {
    v2 = &OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeList;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeGrid;
  }

  v3 = v0 + *v2;
  result = *v3;
  v5 = *(v3 + 8);
  *v1 = *v3;
  *(v1 + 8) = v5;
  *(v1 + 16) = 0;
  return result;
}

id sub_1000112D4(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v3) = 1144750080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1144750080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v4];
  v5 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
  [v2 addSubview:v5];

  v6 = sub_100011804();
  [v2 addSubview:v6];

  sub_10001127C();
  v7 = *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale);
  UIRoundToScale();
  v9 = v8;
  if (*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout))
  {
    v10 = v7 * *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8) + v7 * -6.0 + v7 * -6.0;
  }

  else
  {
    v10 = v7 * *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8);
  }

  v39 = objc_opt_self();
  sub_100004E8C(&qword_10002A550, &qword_10001C020);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10001C140;
  v12 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView;
  v13 = [*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView) widthAnchor];
  v14 = [v13 constraintLessThanOrEqualToConstant:v7 * *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize)];

  *(v11 + 32) = v14;
  v15 = [*(a1 + v12) heightAnchor];
  v16 = [v15 constraintLessThanOrEqualToConstant:v10];

  *(v11 + 40) = v16;
  v17 = [*(a1 + v12) centerXAnchor];
  v18 = [v2 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v11 + 48) = v19;
  v20 = [*(a1 + v12) bottomAnchor];
  v21 = [v2 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v11 + 56) = v22;
  v23 = [*(a1 + v12) topAnchor];
  v24 = [v2 topAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];

  *(v11 + 64) = v25;
  v26 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge;
  v27 = [*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge) centerXAnchor];
  v28 = [*(a1 + v12) centerXAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:v9];

  *(v11 + 72) = v29;
  v30 = [*(a1 + v26) bottomAnchor];
  v31 = [*(a1 + v12) bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v11 + 80) = v32;
  v33 = [*(a1 + v26) widthAnchor];
  v34 = [v33 constraintEqualToConstant:17.0];

  *(v11 + 88) = v34;
  v35 = [*(a1 + v26) heightAnchor];
  v36 = [v35 constraintEqualToConstant:17.0];

  *(v11 + 96) = v36;
  sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
  isa = sub_10001A240().super.isa;

  [v39 activateConstraints:isa];

  return v2;
}

id sub_100011804()
{
  v1 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge;
  v2 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setContentMode:1];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000118BC(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setContentMode:1];
  if (_UISolariumEnabled())
  {
    v3 = 5.0;
  }

  else
  {
    v3 = 3.0;
  }

  v4 = [v2 layer];
  [v4 setCornerRadius:v3 * *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale)];

  v5 = [v2 layer];
  [v5 setMasksToBounds:1];

  v6 = [v2 layer];
  [v6 setCornerCurve:kCACornerCurveContinuous];

  return v2;
}

id sub_100011A00(uint64_t a1)
{
  v2 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
  v43 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle, sub_1000123E0);
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = v2;
  [v3 addSubview:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [v3 setContentHuggingPriority:0 forAxis:v6];
  v7 = [v3 layer];
  [v7 setAllowsGroupBlending:0];

  v8 = objc_opt_self();
  sub_100004E8C(&qword_10002A550, &qword_10001C020);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10001C150;
  v10 = [v4 topAnchor];

  v11 = [v3 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [v4 leadingAnchor];

  v14 = [v3 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [v4 trailingAnchor];

  v17 = [v3 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v9 + 48) = v18;
  sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
  isa = sub_10001A240().super.isa;

  p_weak_ivar_lyt = &ImageCache.weak_ivar_lyt;
  v42 = v8;
  [v8 activateConstraints:isa];

  LODWORD(isa) = *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout);
  v21 = &ImageCache.weak_ivar_lyt;
  if (isa == 1)
  {
    v22 = v43;
    [v3 addSubview:v22];
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10001C160;
    v24 = [v22 topAnchor];
    v25 = [v4 bottomAnchor];

    v26 = [v24 constraintEqualToAnchor:v25 constant:2.0];
    *(v23 + 32) = v26;
    v27 = [v22 leadingAnchor];

    v28 = [v3 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v23 + 40) = v29;
    v30 = [v22 trailingAnchor];

    v31 = [v3 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    v21 = (&ImageCache + 56);
    *(v23 + 48) = v32;
    p_weak_ivar_lyt = (&ImageCache + 56);
    v33 = (v23 + 56);
  }

  else
  {
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10001B970;
    v33 = (v34 + 32);
    v22 = v4;
  }

  v35 = [v22 v21[183]];

  v36 = [v3 v21[183]];
  v37 = [v35 constraintEqualToAnchor:v36];

  *v33 = v37;
  v38 = sub_10001A240().super.isa;

  [v42 p:v38 weak:? ivar:?lyt[187]];

  v39 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
  [v3 addSubview:v39];

  v40 = DOCConstraintsToResizeWithReferenceView();
  if (!v40)
  {
    sub_10001A250();
    v40 = sub_10001A240().super.isa;
  }

  [v42 p:v40 weak:? ivar:?lyt[187]];

  return v3;
}

id sub_100012024(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100012088(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v3];

  v4 = [v2 layer];
  v5 = [a1 traitCollection];
  [v5 userInterfaceStyle];

  sub_10001A1C0();
  v6 = sub_10001A190();

  [v4 setCompositingFilter:v6];

  [v2 setNumberOfLines:sub_10001221C()];
  if (*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout))
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  [v2 setTextAlignment:v7];
  return v2;
}

uint64_t sub_10001221C()
{
  if (v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout] != 1)
  {
    return 1;
  }

  [v0 frame];
  if (v1 >= 58.0)
  {
    v3 = 1;
  }

  else
  {
    [v0 frame];
    v3 = v2 <= 0.0;
  }

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_10001A420();
  if (v3 || (v5 & 1) == 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id sub_1000122FC(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor:v3];

  [v2 setNumberOfLines:sub_10001221C()];
  if (*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout))
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v2 setTextAlignment:v4];
  return v2;
}

id sub_1000123E0(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() tertiaryLabelColor];
  [v2 setTextColor:v3];

  v4 = [v2 layer];
  v5 = [a1 traitCollection];
  [v5 userInterfaceStyle];

  sub_10001A1C0();
  v6 = sub_10001A190();

  [v4 setCompositingFilter:v6];

  [v2 setNumberOfLines:1];
  if (*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout))
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  [v2 setTextAlignment:v7];
  return v2;
}

uint64_t sub_100012570(uint64_t a1)
{
  sub_100019B68(a1, *(a1 + 24));
  v1 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_10001A0D0();
}

void sub_1000125C4(void *a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = sub_10001A100();
  v100 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001A150();
  v98 = *(v9 - 8);
  v99 = v9;
  __chkstk_darwin(v9);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004E8C(&qword_10002AE80, &qword_10001C298);
  __chkstk_darwin(v12 - 8);
  v96 = &ObjectType - v13;
  v14 = sub_100019E20();
  __chkstk_darwin(v14 - 8);
  v16 = &v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
  v17 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
  v18 = v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8];
  v19 = v18 == 2 && v17 == 0;
  v97 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19)
  {
    v20 = 0;
    if (a2 == 2 && !a1)
    {
      return;
    }
  }

  else if (v18 >= 2)
  {
    v20 = 0;
  }

  else
  {
    sub_100004E04(v17, v18);
    v20 = [v17 thumbnailIdentifier];
  }

  if (a2 > 1u)
  {
    if (v20)
    {
LABEL_17:
      v22 = v20;
LABEL_19:

      sub_100004E18(v17, v18);
LABEL_20:
      v24 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader;
      v25 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader];
      if (v25)
      {
        [v25 removeListener:v3];
      }

      v26 = *v16;
      if (v16[8])
      {
        if (v16[8] == 1)
        {
          v95 = v24;
          swift_unknownObjectRetain();
          v27 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
          [v27 setLineBreakMode:5];

          v28 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title;
          [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title] setAlpha:1.0];
          v29 = *&v3[v28];
          ObjectType = swift_getObjectType();
          v30 = v29;
          v31 = [v26 displayName];
          v32 = sub_10001A1C0();
          v34 = v33;

          sub_100018008(1, v32, v34);
          v36 = v35;

          [v30 setAttributedText:v36];

          v37 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
          [v37 setLineBreakMode:5];

          v38 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay;
          [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay] setAlpha:1.0];
          [*&v3[v38] setHidden:0];
          v39 = *&v3[v38];
          v40 = [v26 displayName];
          v41 = sub_10001A1C0();
          v43 = v42;

          sub_100018008(0, v41, v43);
          v45 = v44;

          [v39 setAttributedText:v45];

          v46 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle, sub_1000123E0);
          swift_unknownObjectRetain();
          sub_10001A470(UIUserInterfaceSizeClassCompact, 1);
          v47 = sub_10001A190();

          [v46 setText:v47];

          v48 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle;
          [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle] setLineBreakMode:5];
          [*&v3[v48] setAdjustsFontSizeToFitWidth:1];
          [*&v3[v48] setAlpha:1.0];
          [v3 setUserInteractionEnabled:1];
          v49 = sub_10001127C();
          v50 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale];
          v51 = v49 * v50;
          v52 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8];
          v53 = [v3 traitCollection];
          v54 = [v3 traitCollection];
          [v54 displayScale];
          v56 = v55;

          if (v51 <= 0.0 || v50 * v52 <= 0.0 || v56 <= 0.0)
          {

            sub_100004E18(v26, 1u);
            v57 = 0;
          }

          else
          {
            sub_100004E04(v26, 1u);
            nullsub_2();
            swift_unknownObjectRetain();
            sub_10001A3A0();
            sub_100019E10();
            if (qword_10002A3D0 != -1)
            {
              swift_once();
            }

            objc_allocWithZone(sub_100019E50());

            v57 = sub_100019E40();
            sub_100019E30();
            sub_100004E18(v26, 1u);

            sub_100004E18(v26, 1u);
          }

          v85 = v95;
          *&v3[v95] = v57;
          swift_unknownObjectRelease();
          if ([v26 isFolder])
          {
            if (qword_10002A3D8 != -1)
            {
              swift_once();
            }

            v97 = qword_10002B888;
            v86 = swift_allocObject();
            *(v86 + 16) = v3;
            aBlock[4] = sub_100019BF0;
            aBlock[5] = v86;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100019CCC;
            aBlock[3] = &unk_1000257B8;
            v87 = _Block_copy(aBlock);
            v88 = v3;
            sub_10001A110();
            v101 = _swiftEmptyArrayStorage;
            sub_100019A00(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_100004E8C(&unk_10002AE50, &qword_10001C030);
            sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
            sub_10001A4E0();
            sub_10001A370();
            _Block_release(v87);
            sub_100004E18(v26, 1u);
            (*(v100 + 8))(v8, v6);
            (*(v98 + 8))(v11, v99);
          }

          else
          {
            v91 = *&v3[v85];
            if (v91)
            {
              v92 = [v91 thumbnail];
            }

            else
            {
              v92 = 0;
            }

            sub_10001352C(v92, 0);
            sub_100004E18(v26, 1u);
          }
        }

        else
        {
          v75 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
          v76 = [v75 layer];

          [v76 setBorderWidth:0.0];
          v77 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView;
          [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView] setImage:0];
          [*&v3[v77] setHidden:1];
          v78 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
          [v78 setAttributedText:0];

          v79 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title];
          v80 = sub_10001A190();
          [v79 setText:v80];

          v81 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
          [v81 setHidden:1];

          [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay] setAttributedText:0];
          v82 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle, sub_1000123E0);
          v83 = sub_10001A190();
          [v82 setText:v83];

          [v3 setUserInteractionEnabled:0];
          v84 = sub_100011804();
          [v84 setImage:0];
        }
      }

      else
      {
        swift_unknownObjectRetain();
        v58 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
        [v58 setAttributedText:0];

        v59 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title;
        v60 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title];
        v104._countAndFlagsBits = 3081666804;
        v104._object = 0xA400000000000000;
        sub_10001A220(v104, 32);
        v61 = sub_10001A190();

        [v60 setText:v61];

        [*&v3[v59] setLineBreakMode:1];
        [*&v3[v59] setAlpha:0.08];
        v62 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
        [v62 setHidden:1];

        [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay] setAttributedText:0];
        v63 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle, sub_1000123E0);
        v105._countAndFlagsBits = 3081666804;
        v105._object = 0xA400000000000000;
        sub_10001A220(v105, 8);
        v64 = sub_10001A190();

        [v63 setText:v64];

        v65 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle;
        [*&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle] setLineBreakMode:1];
        [*&v3[v65] setAlpha:0.08];
        [v3 setUserInteractionEnabled:1];
        v66 = sub_10001127C();
        v67 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale];
        v68 = v66 * v67;
        v69 = *&v3[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8];
        swift_unknownObjectRetain();
        v70 = [v3 traitCollection];
        v71 = [v3 traitCollection];
        [v71 displayScale];
        v73 = v72;

        if (v68 <= 0.0 || v67 * v69 <= 0.0 || v73 <= 0.0)
        {

          sub_100004E18(v26, 0);
          v74 = 0;
        }

        else
        {
          sub_100004E04(v26, 0);
          nullsub_2();
          swift_unknownObjectRetain();
          sub_10001A3A0();
          sub_100019E10();
          if (qword_10002A3D0 != -1)
          {
            swift_once();
          }

          objc_allocWithZone(sub_100019E50());

          v74 = sub_100019E40();
          sub_100019E30();
          sub_100004E18(v26, 0);

          sub_100004E18(v26, 0);
        }

        *&v3[v24] = v74;
        swift_unknownObjectRelease();
        v89 = *&v3[v24];
        if (v89)
        {
          v90 = [v89 thumbnail];
        }

        else
        {
          v90 = 0;
        }

        sub_10001352C(v90, 1);

        v93 = sub_100011804();
        [v93 setImage:0];

        sub_100004E18(v26, 0);
      }

      sub_100013ACC();
      return;
    }
  }

  else
  {
    v21 = [a1 thumbnailIdentifier];
    v22 = v21;
    if (v20)
    {
      if (v21)
      {
        sub_1000057B0(0, &qword_10002AE18, DOCNodeThumbnailIdentifier_ptr);
        v23 = sub_10001A4B0();

        sub_100004E18(v17, v18);
        if (v23)
        {
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v21)
    {
      goto LABEL_19;
    }
  }

  sub_100004E18(v17, v18);
}

void sub_10001352C(void *a1, char a2)
{
  v3 = v2;
  if (!a1 || ([a1 size], v6 == 0.0) || (v8 = v7, v7 == 0.0))
  {
    v13 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
    [v13 setImage:0];

    v14 = *(v3 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView);

    [v14 setHidden:1];
  }

  else
  {
    v9 = v6;
    v10 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailRatioConstraint;
    v11 = *(v2 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailRatioConstraint);
    if (v11)
    {
      [v11 setActive:0];
      v12 = *(v2 + v10);
    }

    else
    {
      v12 = 0;
    }

    *(v2 + v10) = 0;

    v15 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
    v16 = [v15 widthAnchor];

    v17 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView;
    v18 = [*(v3 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView) heightAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 multiplier:v9 / v8];

    [v19 setActive:1];
    v20 = *(v3 + v10);
    *(v3 + v10) = v19;
    v23 = v19;

    if (a2)
    {
      v21 = [objc_opt_self() systemBackgroundColor];
      v22 = sub_100010D8C(v9, v8);

      [*(v3 + v17) setImage:v22];
    }

    else
    {
      [*(v3 + v17) setImage:a1];
    }

    [*(v3 + v17) setHidden:0];
  }
}

uint64_t sub_1000137B4(char *a1)
{
  v2 = sub_10001A100();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001A150();
  v18 = *(v5 - 8);
  v19 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&a1[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader];
  if (v9)
  {
    v10 = [v9 thumbnail];
  }

  else
  {
    v10 = 0;
  }

  sub_1000057B0(0, &qword_10002AE60, OS_dispatch_queue_ptr);
  v11 = sub_10001A360();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v10;
  aBlock[4] = sub_100019C38;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = &unk_100025808;
  v13 = _Block_copy(aBlock);
  v14 = v10;
  v15 = a1;

  sub_10001A110();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100019A00(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004E8C(&unk_10002AE50, &qword_10001C030);
  sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
  sub_10001A4E0();
  sub_10001A370();
  _Block_release(v13);

  (*(v20 + 8))(v4, v2);
  return (*(v18 + 8))(v8, v19);
}

void sub_100013ACC()
{
  v1 = *&v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
  if (!v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8])
  {
    swift_unknownObjectRetain();
    v11 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
    v12 = [v11 layer];

    v13 = objc_opt_self();
    v14 = [v0 traitCollection];
    [v13 separatorThicknessForTraitCollection:v14];
    v16 = v15;

    [v12 setBorderWidth:v16];
    v9 = v1;
    v10 = 0;
LABEL_9:

    sub_100004E18(v9, v10);
    return;
  }

  if (v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8] == 1)
  {
    v2 = 0.0;
    if (([swift_unknownObjectRetain() isFolder] & 1) == 0)
    {
      v3 = *&v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader];
      if (v3)
      {
        if ([v3 isRepresentativeIcon])
        {
          v4 = objc_opt_self();
          v5 = [v0 traitCollection];
          [v4 separatorThicknessForTraitCollection:v5];
          v2 = v6;
        }
      }
    }

    v7 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
    v8 = [v7 layer];

    [v8 setBorderWidth:v2];
    v9 = v1;
    v10 = 1;
    goto LABEL_9;
  }

  v17 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
  v18 = [v17 layer];

  [v18 setBorderWidth:0.0];
}

char *sub_100013D48(uint64_t a1, uint64_t a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9)
{
  ObjectType = swift_getObjectType();
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___listBackground] = 0;
  v20 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_listBackgroundBlurEffect;
  *&v9[v20] = [objc_opt_self() effectWithStyle:7];
  v21 = &v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___cornerRadius];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = &v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeGrid];
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeGrid] = xmmword_10001C170;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeList] = xmmword_10001C180;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailRatioConstraint] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleWidthConstraint] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitleWidthConstraint] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader] = 0;
  v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected] = 0;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24 = &v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
  *v24 = 0;
  v24[8] = 2;
  *&v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale] = a9;
  v9[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout] = a4;
  if ((a3 & 1) == 0)
  {
    *v23 = a1;
    v23[1] = a2;
  }

  v91.receiver = v9;
  v91.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v91, "initWithFrame:", a5, a6, a7, a8);
  v26 = v25;
  if (a4)
  {
    v27 = [v25 layer];
    [v27 setAllowsGroupBlending:0];

    v28 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___listBackground, sub_100010F8C);
    [v26 addSubview:v28];

    isa = DOCConstraintsToResizeWithSuperview();
    if (!isa)
    {
      sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
      sub_10001A250();
      isa = sub_10001A240().super.isa;
    }

    [objc_opt_self() activateConstraints:isa];
  }

  v30 = v26;
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 clearColor];
  [v32 setBackgroundColor:v33];

  v34 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer, sub_1000112D4);
  [v32 addSubview:v34];

  v35 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer, sub_100011A00);
  [v32 addSubview:v35];

  if (a4)
  {

    v90 = objc_opt_self();
    sub_100004E8C(&qword_10002A550, &qword_10001C020);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10001C190;
    v37 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer;
    v38 = [*&v32[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer] leadingAnchor];
    v39 = [v32 leadingAnchor];
    v40 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale;
    v41 = [v38 constraintEqualToAnchor:v39 constant:*&v32[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale] * 6.0];

    *(v36 + 32) = v41;
    v42 = &selRef_centerYAnchor;
    v43 = [*&v32[v37] centerYAnchor];
    v44 = [v32 centerYAnchor];

    v45 = [v43 constraintEqualToAnchor:v44];
    *(v36 + 40) = v45;
    v46 = [*&v32[v37] heightAnchor];
    sub_10001127C();
    v47 = &v32[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize];
    v48 = [v46 constraintLessThanOrEqualToConstant:*&v32[v40] * *&v32[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize + 8]];

    *(v36 + 48) = v48;
    v49 = [*&v32[v37] widthAnchor];
    v50 = [v49 constraintEqualToConstant:*v47 * *&v32[v40]];

    *(v36 + 56) = v50;
    v51 = &v32[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer];
    v52 = [*&v32[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer] leadingAnchor];
    v53 = [*&v32[v37] trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:*&v32[v40] * 6.0];

    *(v36 + 64) = v54;
    v55 = [*v51 trailingAnchor];
    v56 = [v32 trailingAnchor];

    v57 = [v55 constraintEqualToAnchor:v56 constant:*&v32[v40] * -6.0];
    *(v36 + 72) = v57;
    v58 = (v36 + 80);
  }

  else
  {
    v90 = objc_opt_self();
    sub_100004E8C(&qword_10002A550, &qword_10001C020);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_10001B950;
    v60 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer;
    v61 = [*&v32[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer] leadingAnchor];
    v62 = [v32 leadingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];

    *(v59 + 32) = v63;
    v64 = [*&v32[v60] trailingAnchor];
    v65 = [v32 trailingAnchor];

    v66 = [v64 constraintEqualToAnchor:v65];
    *(v59 + 40) = v66;
    v67 = [*&v32[v60] topAnchor];
    v68 = [v32 topAnchor];

    v69 = [v67 constraintEqualToAnchor:v68];
    *(v59 + 48) = v69;
    v70 = [*&v32[v60] widthAnchor];
    v71 = sub_10001127C();
    v72 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale;
    v73 = [v70 constraintGreaterThanOrEqualToConstant:v71 * *&v32[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_layoutScale]];

    *(v59 + 56) = v73;
    v51 = &v32[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer];
    v74 = [*&v32[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer] leadingAnchor];
    v75 = [v32 leadingAnchor];

    v76 = [v74 constraintEqualToAnchor:v75];
    *(v59 + 64) = v76;
    v77 = [*v51 trailingAnchor];
    v78 = [v32 trailingAnchor];

    v79 = [v77 constraintEqualToAnchor:v78];
    *(v59 + 72) = v79;
    v80 = [*v51 topAnchor];
    v42 = &selRef_bottomAnchor;
    v81 = [*&v32[v60] bottomAnchor];
    v82 = [v80 constraintEqualToAnchor:v81 constant:*&v32[v72] * 6.0];

    *(v59 + 80) = v82;
    v58 = (v59 + 88);
  }

  v83 = [*v51 *v42];
  v84 = [v32 *v42];

  v85 = [v83 constraintEqualToAnchor:v84];
  *v58 = v85;
  sub_1000057B0(0, &qword_10002A570, NSLayoutConstraint_ptr);
  v86 = sub_10001A240().super.isa;

  [v90 activateConstraints:v86];

  v87 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v32 action:"handleTap:"];
  [v32 addGestureRecognizer:v87];
  v88 = [objc_allocWithZone(UIDragInteraction) initWithDelegate:v32];
  [v32 addInteraction:v88];

  return v32;
}

void sub_10001485C()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {

    v2 = [v0 traitCollection];
    swift_beginAccess();
    swift_beginAccess();
    v3 = sub_100018848(&qword_10002AC00, &qword_10002AC08, v2, UIFontWeightRegular);
    swift_endAccess();
    swift_endAccess();
    v4 = v3;

    v5 = [v0 traitCollection];
    swift_beginAccess();
    swift_beginAccess();
    v6 = sub_100018848(&qword_10002AC10, &qword_10002AC18, v5, UIFontWeightRegular);
    swift_endAccess();
    swift_endAccess();
    v7 = v6;

    v8 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
    v9 = v4;
    [v8 setFont:v9];

    v10 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
    [v10 setFont:v9];

    v11 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle, sub_1000123E0);
    [v11 setFont:v7];

    v12 = *&v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title];
    [v12 setNumberOfLines:sub_10001221C()];

    v13 = *&v0[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay];
    [v13 setNumberOfLines:sub_10001221C()];
  }
}

void sub_100014B50()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout) == 1)
  {
    v1 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___listBackground, sub_100010F8C);
    if (*(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected))
    {
      v2 = 0.0980392157;
    }

    else
    {
      v2 = 0.152941176;
    }

    v3 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:v2 green:v2 blue:v2 alpha:1.0];
    [v1 setBackgroundColor:v3];
  }

  v4 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
  v5 = [v4 layer];

  v6 = [objc_opt_self() separatorColor];
  v7 = [v6 colorWithAlphaComponent:0.15];

  v8 = [v7 CGColor];
  [v5 setBorderColor:v8];

  v9 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
  [v9 setNumberOfLines:sub_10001221C()];

  v10 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
  [v10 setNumberOfLines:sub_10001221C()];
}

uint64_t sub_100014DCC()
{
  sub_100019E00();
  swift_allocObject();
  result = sub_100019DF0();
  qword_10002B880 = result;
  return result;
}

uint64_t sub_100014E0C()
{
  v7 = sub_10001A350();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10001A340();
  __chkstk_darwin(v3);
  v4 = sub_10001A150();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_1000057B0(0, &qword_10002AE60, OS_dispatch_queue_ptr);
  sub_10001A120();
  v8 = _swiftEmptyArrayStorage;
  sub_100019A00(&unk_10002A980, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004E8C(&unk_10002AE70, &qword_10001C0E0);
  sub_100010294(&unk_10002A990, &unk_10002AE70, &qword_10001C0E0);
  sub_10001A4E0();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_10001A380();
  qword_10002B888 = result;
  return result;
}

void sub_100015114(objc_class *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100004E8C(&qword_10002AE80, &qword_10001C298);
  __chkstk_darwin(v5 - 8);
  v52 = &v52 - v6;
  v7 = sub_100019E20();
  __chkstk_darwin(v7 - 8);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001A400();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55.receiver = v2;
  v55.super_class = ObjectType;
  [(objc_class *)&v55 traitCollectionDidChange:a1, v11];
  v14 = [v2 traitCollection];
  sub_100004E8C(&qword_10002AE88, &qword_10001C2A0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10001BF10;
  sub_10001A3F0();
  sub_10001A3C0();
  v54 = v15;
  sub_100019A00(&qword_10002AE90, &type metadata accessor for UITraitCollection.Traits, &protocol conformance descriptor for UITraitCollection.Traits);
  sub_100004E8C(&qword_10002AE98, &qword_10001C2A8);
  sub_100010294(&qword_10002AEA0, &qword_10002AE98, &qword_10001C2A8);
  sub_10001A4E0();
  LOBYTE(v15) = sub_10001A3B0();

  (*(v10 + 8))(v13, v9);
  if ((v15 & 1) != 0 || (v16 = [v2 traitCollection], v56.value.super.isa = a1, v17 = sub_10001A390(v56), v16, !v17))
  {
    v18 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader;
    v19 = *&v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader];
    if (v19)
    {
      [v19 removeListener:v2];
    }

    v20 = &v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
    v21 = v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8];
    if (v21 >= 2)
    {
      v22 = 0;
    }

    else
    {
      v22 = *v20;
      sub_100004E04(*v20, v21);
    }

    v23 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
    [v23 frame];
    v25 = v24;
    v27 = v26;

    v28 = [v2 traitCollection];
    v29 = [v2 traitCollection];
    [v29 displayScale];
    v31 = v30;

    if (v22)
    {
      if (v25 > 0.0 && v27 > 0.0 && v31 > 0.0)
      {
        nullsub_2();
        swift_unknownObjectRetain_n();
        sub_10001A3A0();
        sub_100019E10();
        if (qword_10002A3D0 != -1)
        {
          swift_once();
        }

        objc_allocWithZone(sub_100019E50());

        v32 = sub_100019E40();
        sub_100019E30();

        swift_unknownObjectRelease_n();
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

    v32 = 0;
LABEL_17:
    *&v2[v18] = v32;
    swift_unknownObjectRelease();
  }

  v33 = [v2 traitCollection];
  swift_beginAccess();
  swift_beginAccess();
  v34 = sub_100018848(&qword_10002AC00, &qword_10002AC08, v33, UIFontWeightRegular);
  swift_endAccess();
  swift_endAccess();
  v35 = v34;

  v36 = [v2 traitCollection];
  swift_beginAccess();
  swift_beginAccess();
  v37 = sub_100018848(&qword_10002AC10, &qword_10002AC18, v36, UIFontWeightRegular);
  swift_endAccess();
  swift_endAccess();
  v38 = v37;
  v53 = v38;

  v39 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title, sub_100012088);
  v40 = v35;
  [v39 setFont:v40];

  v41 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay, sub_1000122FC);
  [v41 setFont:v40];

  v42 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle, sub_1000123E0);
  [v42 setFont:v38];

  v43 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title;
  v44 = [*&v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title] layer];
  v45 = [v2 traitCollection];
  [v45 userInterfaceStyle];

  sub_10001A1C0();
  v46 = sub_10001A190();

  [v44 setCompositingFilter:v46];

  v47 = [*&v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle] layer];
  v48 = [v2 traitCollection];
  [v48 userInterfaceStyle];

  sub_10001A1C0();
  v49 = sub_10001A190();

  [v47 setCompositingFilter:v49];

  v50 = *&v2[v43];
  [v50 setNumberOfLines:sub_10001221C()];

  v51 = *&v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay];
  [v51 setNumberOfLines:sub_10001221C()];
}

uint64_t sub_100015CB4(void *a1)
{
  v3 = sub_10001A100();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001A150();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8] <= 1u && [*&v1[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind] isFolder])
  {
    v21 = v4;
    if (qword_10002A3D8 != -1)
    {
      swift_once();
    }

    v20[1] = qword_10002B888;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v1;
    aBlock[4] = sub_1000199F8;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019CCC;
    aBlock[3] = &unk_1000256C8;
    v13 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v14 = v1;
    sub_10001A110();
    v22 = _swiftEmptyArrayStorage;
    sub_100019A00(&unk_10002A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004E8C(&unk_10002AE50, &qword_10001C030);
    sub_100010294(&qword_10002A8F0, &unk_10002AE50, &qword_10001C030);
    sub_10001A4E0();
    sub_10001A370();
    _Block_release(v13);
    (*(v21 + 8))(v6, v3);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v16 = [a1 thumbnail];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a1;
    v18[4] = v16;
    swift_unknownObjectRetain();

    v19 = v16;
    sub_100019DE0();
  }
}

void sub_1000160B0(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader);
    if (v8)
    {
      v9 = v8 == a2;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      sub_10001352C(a3, *(Strong + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8) == 0);
      sub_100013ACC();
    }
  }
}

uint64_t sub_10001614C(void *a1, uint64_t a2)
{
  v3 = [a1 thumbnail];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = v3;

  swift_unknownObjectRetain();
  v6 = v3;
  sub_100019DE0();
}

void sub_100016290(uint64_t a1, Swift::UInt a2, Swift::UInt a3)
{
  sub_10000FB8C(a1, v8, &qword_10002A930, &qword_10001C060);
  if (v8[3])
  {
    sub_1000057B0(0, &qword_10002AEE8, UIFont_ptr);
    if (swift_dynamicCast())
    {
      if ((CTFontGetSymbolicTraits(font) & 0x2000) != 0)
      {
        v5 = a2;
        v6 = a3;
      }

      else
      {
        v5 = a2;
        v6 = a3;
      }

      sub_100017798(v8, v5, v6);
    }
  }

  else
  {
    sub_10000FBF4(v8, &qword_10002A930, &qword_10001C060);
  }
}

uint64_t sub_100016384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_10000FB28(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_10000FBF4(v13, &qword_10002A930, &qword_10001C060);
}

void sub_100016430(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected;
  v3 = *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected);
  *(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected) = a2;
  if (v3 != (a2 & 1) && (*(a1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_useListLayout) & 1) != 0)
  {
    v5 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___listBackground, sub_100010F8C);
    if (*(a1 + v2))
    {
      v6 = 0.0980392157;
    }

    else
    {
      v6 = 0.152941176;
    }

    v7 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:v6 green:v6 blue:v6 alpha:1.0];
    [v5 setBackgroundColor:v7];
  }
}

void sub_100016720(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  ObjectType = swift_getObjectType();
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10001A4F0();
    sub_1000057B0(0, &qword_10002AE38, UITouch_ptr);
    sub_1000198A4();
    sub_10001A2C0();
    v4 = aBlock[6];
    v5 = aBlock[7];
    v6 = aBlock[8];
    v7 = aBlock[9];
    v8 = aBlock[10];
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!sub_10001A500())
    {
LABEL_19:
      LOBYTE(v13) = 0;
LABEL_20:
      sub_100019968(v4);
      v27 = objc_opt_self();
      v28 = swift_allocObject();
      *(v28 + 16) = v3;
      *(v28 + 24) = v13;
      aBlock[4] = sub_100019CE4;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019CCC;
      aBlock[3] = &unk_100025588;
      v29 = _Block_copy(aBlock);
      v30 = v3;

      [v27 animateWithDuration:v29 animations:0.1];
      _Block_release(v29);
      sub_1000057B0(0, &qword_10002AE38, UITouch_ptr);
      sub_1000198A4();
      isa = sub_10001A2A0().super.isa;
      v35.receiver = v30;
      v35.super_class = ObjectType;
      objc_msgSendSuper2(&v35, "touchesMoved:withEvent:", isa, a2);

      return;
    }

    sub_1000057B0(0, &qword_10002AE38, UITouch_ptr);
    swift_dynamicCast();
    v13 = aBlock[0];
    if (!aBlock[0])
    {
      goto LABEL_20;
    }

LABEL_9:
    [v3 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v13 locationInView:v3];
    v37.x = v22;
    v37.y = v23;
    v38.origin.x = v15;
    v38.origin.y = v17;
    v38.size.width = v19;
    v38.size.height = v21;
    v24 = CGRectContainsPoint(v38, v37);

    if (v24)
    {
      LOBYTE(v13) = 1;
      goto LABEL_20;
    }
  }

  v25 = v7;
  v26 = v8;
  if (v8)
  {
LABEL_8:
    v8 = (v26 - 1) & v26;
    v13 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v7 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_19;
    }

    v26 = *(v5 + 8 * v7);
    ++v25;
    if (v26)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_100016B74(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  ObjectType = swift_getObjectType();
  sub_1000057B0(0, &qword_10002AE38, UITouch_ptr);
  sub_1000198A4();
  sub_10001A2B0();
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = 0;
  aBlock[4] = a6;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019CCC;
  aBlock[3] = a7;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a4;

  [v13 animateWithDuration:v15 animations:0.1];
  _Block_release(v15);
  isa = sub_10001A2A0().super.isa;

  v20.receiver = v16;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, *a8, isa, v17);
}

uint64_t sub_100016F78(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100016F94(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100016FA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100016FF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100017034(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_10001705C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100017128(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100019848(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000583C(v11);
  return v7;
}

unint64_t sub_100017128(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100017234(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10001A570();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id *sub_100017234(uint64_t a1, unint64_t a2)
{
  v3 = sub_100017280(a1, a2);
  sub_1000173B0(&off_100024DE8);
  return v3;
}

id *sub_100017280(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10001749C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001A570();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001A200();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001749C(v10, 0);
        result = sub_10001A530();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1000173B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = (*v1)[2];
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= (v3[3] >> 1))
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100017510(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = v3[2];
  if (((v3[3] >> 1) - v8) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v8[v3 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = &v9[v2];
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

id *sub_10001749C(uint64_t a1, uint64_t a2)
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

  sub_100004E8C(&qword_10002AE28, &unk_10001C288);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *sub_100017510(id *result, int64_t a2, char a3, id *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004E8C(&qword_10002AE28, &unk_10001C288);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100017604(uint64_t a1)
{
  sub_10001A1C0();
  sub_10001A6B0();
  sub_10001A1E0();
  v2 = sub_10001A6E0();

  return sub_100017694(a1, v2);
}

unint64_t sub_100017694(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_10001A1C0();
      v8 = v7;
      if (v6 == sub_10001A1C0() && v8 == v9)
      {
        break;
      }

      v11 = sub_10001A650();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100017798(Swift::UInt *a1, Swift::UInt a2, Swift::UInt a3)
{
  v7 = *v3;
  sub_10001A6B0();
  sub_10001A6C0(a2);
  sub_10001A6C0(a3);
  v8 = sub_10001A6E0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a2 && v13 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100017B1C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_1000178B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E8C(&unk_10002AEF0, &qword_10001C2F0);
  result = sub_10001A520();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_10001A6B0();
      sub_10001A6C0(v19);
      sub_10001A6C0(v20);
      result = sub_10001A6E0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::UInt sub_100017B1C(Swift::UInt result, Swift::UInt a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_1000178B4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_100017C8C();
      a3 = v9;
      goto LABEL_15;
    }

    sub_100017DD0(v7 + 1);
  }

  v10 = *v4;
  sub_10001A6B0();
  sub_10001A6C0(v6);
  sub_10001A6C0(a2);
  result = sub_10001A6E0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v6 && v14 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v6;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  type metadata accessor for _NSRange(0);
  result = sub_10001A680();
  __break(1u);
  return result;
}

void *sub_100017C8C()
{
  v1 = v0;
  sub_100004E8C(&unk_10002AEF0, &qword_10001C2F0);
  v2 = *v0;
  v3 = sub_10001A510();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100017DD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E8C(&unk_10002AEF0, &qword_10001C2F0);
  result = sub_10001A520();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_10001A6B0();
      sub_10001A6C0(v18);
      sub_10001A6C0(v19);
      result = sub_10001A6E0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_100018008(char a1, uint64_t a2, uint64_t a3)
{
  v42 = &_swiftEmptySetSingleton;
  v43 = &_swiftEmptySetSingleton;
  v4 = objc_allocWithZone(NSMutableAttributedString);
  v5 = sub_10001A190();
  v6 = [v4 initWithString:v5];

  v7 = [v6 length];
  [v6 fixAttributesInRange:{0, v7}];
  v8 = swift_allocObject();
  *(v8 + 16) = &v42;
  *(v8 + 24) = &v43;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100019C64;
  *(v9 + 24) = v8;
  v40 = sub_100019C6C;
  v41 = v9;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100016384;
  v39 = &unk_100025880;
  v10 = _Block_copy(&aBlock);

  [v6 enumerateAttribute:NSFontAttributeName inRange:0 options:v7 usingBlock:{0, v10}];

  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v35 = a1;
  v11 = v42;

  v42 = &_swiftEmptySetSingleton;
  v43 = &_swiftEmptySetSingleton;
  v12 = objc_allocWithZone(NSMutableAttributedString);
  v13 = sub_10001A190();
  v14 = [v12 initWithString:v13];

  v15 = [v14 length];
  [v14 fixAttributesInRange:{0, v15}];
  v16 = swift_allocObject();
  *(v16 + 16) = &v42;
  *(v16 + 24) = &v43;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100019CB8;
  *(v17 + 24) = v16;
  v40 = sub_100019CBC;
  v41 = v17;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100016384;
  v39 = &unk_1000258F8;
  v18 = _Block_copy(&aBlock);

  [v14 enumerateAttribute:NSFontAttributeName inRange:0 options:v15 usingBlock:{0, v18}];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v20 = v43;

    v21 = objc_allocWithZone(NSMutableAttributedString);
    v22 = sub_10001A190();
    v23 = [v21 initWithString:v22];

    if ((v35 & 1) == 0)
    {
      v11 = v20;
    }

    v24 = 0;
    v25 = 1 << v11[32];
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v11 + 7);
    v28 = (v25 + 63) >> 6;
    while (v27)
    {
LABEL_13:
      v30 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v31 = (*(v11 + 6) + ((v24 << 10) | (16 * v30)));
      v32 = v31[1];
      if (v32 > 0)
      {
        v33 = *v31;
        v34 = [objc_opt_self() clearColor];
        [v23 addAttribute:NSForegroundColorAttributeName value:v34 range:{v33, v32}];
      }
    }

    while (1)
    {
      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v29 >= v28)
      {

        return;
      }

      v27 = *&v11[8 * v29 + 56];
      ++v24;
      if (v27)
      {
        v24 = v29;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_100018520(void *a1, unsigned __int8 a2, void *a3, unsigned __int8 a4)
{
  if (a2 == 2 && a1 == 0)
  {
    v8 = 0;
    if (a4 == 2 && !a3)
    {
      goto LABEL_21;
    }
  }

  else if (a2 > 1u)
  {
    v8 = 0;
  }

  else
  {
    v5 = a3;
    v6 = a4;
    v7 = [a1 thumbnailIdentifier];
    a4 = v6;
    a3 = v5;
    v8 = v7;
  }

  if (a4 > 1u)
  {
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_21:
    v11 = 1;
    return v11 & 1;
  }

  v9 = [a3 thumbnailIdentifier];
  v10 = v9;
  if (!v8)
  {
    if (v9)
    {
      v11 = 0;
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (!v9)
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  sub_1000057B0(0, &qword_10002AE18, DOCNodeThumbnailIdentifier_ptr);
  v11 = sub_10001A4B0();

LABEL_17:
  v10 = v8;
LABEL_18:

  return v11 & 1;
}

unint64_t sub_100018630(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E8C(&qword_10002AEE0, &unk_10001C2E0);
    v3 = sub_10001A610();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100017604(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100018720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004E8C(&qword_10002AED8, &qword_10001C2D8);
    v3 = sub_10001A610();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FB8C(v4, &v11, &unk_10002AEC8, &qword_10001C2D0);
      v5 = v11;
      result = sub_100017604(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000FB28(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_100018848(id *a1, void **a2, void *a3, double a4)
{
  v34 = a3;
  v7 = sub_10001A400();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004E8C(&qword_10002AE88, &qword_10001C2A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10001BF10;
  sub_10001A3D0();
  sub_10001A3E0();
  v35 = v11;
  sub_100019A00(&qword_10002AE90, &type metadata accessor for UITraitCollection.Traits, &protocol conformance descriptor for UITraitCollection.Traits);
  sub_100004E8C(&qword_10002AE98, &qword_10001C2A8);
  sub_100010294(&qword_10002AEA0, &qword_10002AE98, &qword_10001C2A8);
  sub_10001A4E0();
  v33 = a2;
  v12 = *a2;
  v13 = v34;
  v14 = sub_10001A3B0();
  (*(v8 + 8))(v10, v7);
  v15 = *a1;
  if (*a1)
  {
    if ((v14 & 1) == 0)
    {
      return v15;
    }
  }

  v16 = sub_10001A410();
  v17 = objc_opt_self();
  v18 = [v17 preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 compatibleWithTraitCollection:v16];
  sub_100004E8C(&qword_10002AEA8, &qword_10001C2B0);
  inited = swift_initStackObject();
  v32 = xmmword_10001BF00;
  *(inited + 16) = xmmword_10001BF00;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = a4;
  v20 = UIFontWeightTrait;
  v21 = sub_100018630(inited);
  swift_setDeallocating();
  sub_10000FBF4(inited + 32, &qword_10002AEB0, &qword_10001C2B8);
  v22 = [v17 preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 compatibleWithTraitCollection:v13];
  sub_100004E8C(&qword_10002AEB8, &qword_10001C2C0);
  v23 = swift_initStackObject();
  *(v23 + 16) = v32;
  *(v23 + 32) = UIFontDescriptorTraitsAttribute;
  *(v23 + 64) = sub_100004E8C(&qword_10002AEC0, &qword_10001C2C8);
  *(v23 + 40) = v21;
  v24 = UIFontDescriptorTraitsAttribute;
  sub_100018720(v23);
  swift_setDeallocating();
  sub_10000FBF4(v23 + 32, &unk_10002AEC8, &qword_10001C2D0);
  type metadata accessor for AttributeName(0);
  sub_100019A00(&qword_10002A5E0, type metadata accessor for AttributeName, &unk_10001BEB8);
  isa = sub_10001A180().super.isa;

  v26 = [v22 fontDescriptorByAddingAttributes:isa];

  [v22 pointSize];
  v28 = v27;
  [v18 pointSize];
  if (v29 < v28)
  {
    v28 = v29;
  }

  v15 = [objc_opt_self() fontWithDescriptor:v26 size:v28];

  *a1 = v15;
  *v33 = v13;
  v30 = v13;
  return v15;
}

void sub_100018CE0()
{
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___listBackground) = 0;
  v1 = OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_listBackgroundBlurEffect;
  *(v0 + v1) = [objc_opt_self() effectWithStyle:7];
  v2 = v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___cornerRadius;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___baseThumbnailContainerSize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeGrid) = xmmword_10001C170;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_idealThumbnailSizeList) = xmmword_10001C180;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailRatioConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailContainer) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___badge) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitleWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___labelContainer) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___title) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___titleOverlay) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___subtitle) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_thumbnailLoader) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_selected) = 0;
  *(v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = v0 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind;
  *v4 = 0;
  *(v4 + 8) = 2;
  sub_10001A5D0();
  __break(1u);
}

id *sub_100018E90(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10001A090();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A070();
  v7 = sub_10001A080();
  v8 = sub_10001A2F0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10001705C(0xD000000000000025, 0x800000010001DBA0, &v19);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000583C(v10);
  }

  (*(v4 + 8))(v6, v3);
  v11 = (v2 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind);
  v12 = *(v2 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8);
  if (v12 >= 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = *v11;
  swift_getObjectType();
  sub_100004E04(v13, v12);
  if ((sub_10001A460() & 1) != 0 && (v14 = sub_10001A450()) != 0)
  {
    v15 = v14;
    sub_100004E8C(&qword_10002A550, &qword_10001C020);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_10001B970;
    v16[4] = v15;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  sub_100004E18(v13, v12);
  return v16;
}

id *sub_1000190EC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10001A090();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  sub_10001A070();
  v10 = sub_10001A080();
  v11 = sub_10001A2F0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10001705C(0xD000000000000030, 0x800000010001DB60, &v33);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_10000583C(v13);
  }

  v14 = *(v4 + 8);
  v14(v9, v3);
  sub_1000057B0(0, &qword_10002A8D8, FPItem_ptr);
  if (sub_10001A430())
  {
    v15 = v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8];
    if (v15 <= 1)
    {
      v16 = *&v2[OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind];
      swift_getObjectType();
      sub_100004E04(v16, v15);
      if (sub_10001A460())
      {
        v17 = sub_10001A450();
        if (v17)
        {
          v18 = v17;
          sub_100004E8C(&qword_10002A550, &qword_10001C020);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_10001B970;
          *(v19 + 32) = v18;
          sub_100004E18(v16, v15);
          return v19;
        }
      }

      sub_100004E18(v16, v15);
    }
  }

  else
  {
    sub_10001A070();
    v21 = v2;
    v22 = sub_10001A080();
    v23 = sub_10001A2F0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v24 = 136315394;
      *(v24 + 4) = sub_10001705C(0xD000000000000030, 0x800000010001DB60, &v33);
      *(v24 + 12) = 2080;
      v25 = v21;
      v26 = [v25 description];
      v27 = sub_10001A1C0();
      v31[1] = v4;
      v29 = v28;

      v30 = sub_10001705C(v27, v29, &v33);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s Item %s cannot be added to the drag because it is already part of the drag", v24, 0x16u);
      swift_arrayDestroy();
    }

    v14(v6, v3);
  }

  return _swiftEmptyArrayStorage;
}

id sub_10001950C()
{
  v1 = v0;
  v2 = sub_10001A090();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A070();
  v6 = sub_10001A080();
  v7 = sub_10001A2F0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10001705C(0xD00000000000002DLL, 0x800000010001DB30, &v29);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000583C(v9);
  }

  (*(v3 + 8))(v5, v2);
  v10 = [objc_allocWithZone(UIDragPreviewParameters) init];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  v14 = sub_100012024(&OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView, sub_1000118BC);
  [v14 frame];
  v16 = v15;
  v18 = v17;

  if (v16 != 0.0 || v18 != 0.0)
  {
    v19 = (v1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind);
    v20 = *(v1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8);
    if (v20 <= 1)
    {
      v21 = *v19;
      sub_100004E04(*v19, *(v1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell_kind + 8));
      if ([v21 isFolder])
      {
        sub_1000057B0(0, &qword_10002AE20, UIBezierPath_ptr);
        v22 = sub_10001A2D0();
        [v12 setVisiblePath:v22];
      }

      sub_100004E18(v21, v20);
    }
  }

  v23 = *(v1 + OBJC_IVAR____TtC14RecentsAvocado14RecentItemCell____lazy_storage___thumbnailView);
  v24 = objc_allocWithZone(UITargetedDragPreview);
  v25 = v23;
  v26 = [v24 initWithView:v25 parameters:v12];

  return v26;
}

uint64_t sub_100019848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000198A4()
{
  result = qword_10002AE40;
  if (!qword_10002AE40)
  {
    sub_1000057B0(255, &qword_10002AE38, UITouch_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AE40);
  }

  return result;
}

uint64_t sub_10001990C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100019950(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100019970()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000199B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019A00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100019A48()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100019A90()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100019AC8(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  [*(v1 + 16) setFill];

  return [a1 fillRect:{0.0, 0.0, v3, v4}];
}

uint64_t sub_100019B68(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100019BB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019BF8()
{

  return _swift_deallocObject(v0, 32, 7);
}