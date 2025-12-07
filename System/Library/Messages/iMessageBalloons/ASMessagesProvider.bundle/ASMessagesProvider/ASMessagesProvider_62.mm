char *sub_6F9028(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v47 - v17;
  v19 = sub_75FA00();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups;
  v24 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups];
  if (!(v24 >> 62))
  {
    result = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
    if (result > a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v52 = v20;
  v46 = v22;
  result = sub_76A860();
  v22 = v46;
  v20 = v52;
  if (result <= a1)
  {
    return 0;
  }

LABEL_3:
  v51 = v12;
  v26 = *&v2[v23];
  v53 = v22;
  if ((v26 & 0xC000000000000001) != 0)
  {

    v52 = sub_76A770();

LABEL_7:
    v50 = v9;
    v27 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v28 = *&v2[v27];
    if (*(v28 + 16) && (v29 = sub_663D5C(a1), (v30 & 1) != 0))
    {
      v31 = *(*(v28 + 56) + 8 * v29);
    }

    else
    {
      v32 = sub_6FC1AC();
      [v32 setAutoresizingMask:2];
      [v2 addSubview:v32];
      swift_beginAccess();
      v31 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *&v2[v27];
      *&v2[v27] = 0x8000000000000000;
      sub_45A7B8(v31, a1, isUniquelyReferenced_nonNull_native);
      *&v2[v27] = v54;
      swift_endAccess();
    }

    v34 = [v31 contentView];
    [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v49 = Strong;
      sub_BD88(&unk_9467D0, &qword_787700);
      v36 = v6;
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_77E280;
      sub_75F9B0();
      sub_75F9C0();
      v55 = v37;
      sub_6FC43C(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
      sub_BD88(&unk_9467E0, &qword_787708);
      sub_6FC484();
      sub_76A5A0();

      v38 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView];
      v39 = sub_BD88(&unk_948740, &unk_784920);
      (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
      v40 = sub_758C70();
      (*(*(v40 - 8) + 56))(v15, 1, 1, v40);
      v41 = sub_75BD30();
      v42 = v51;
      (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
      v43 = sub_765870();
      v44 = v50;
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
      v45 = sub_BD88(&unk_9457F0, qword_783FD0);
      (*(*(v45 - 8) + 56))(v36, 1, 1, v45);
      v48 = v19;
      sub_4A18A4(v52, v38, v18, v49, 0, 0, v15, v42, v44, v36);
      v38[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_BD3C0();
      [v38 setNeedsLayout];
      sub_BD3C0();
      sub_10A2C(v36, &unk_94AC40, qword_78D7F0);
      sub_10A2C(v44, &unk_9457D0, &unk_785630);
      sub_10A2C(v42, &unk_9457E0, &qword_785640);
      sub_10A2C(v15, &unk_94A780, &unk_788DC0);
      sub_10A2C(v18, &unk_948730, &qword_788DD0);
      [v31 setNeedsLayout];

      (*(v20 + 8))(v53, v48);
    }

    else
    {
    }

    return v31;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)) > a1)
  {
    v52 = *(v26 + 8 * a1 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_6F97C4()
{
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded) & 1) == 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (Strong, (v2 = [v0 window]) != 0))
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v3;
    [v12 convertRect:v0 fromCoordinateSpace:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v33.origin.x = v22;
    v33.origin.y = v24;
    v33.size.width = v26;
    v33.size.height = v28;
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    v34 = CGRectIntersection(v33, v35);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (!CGRectIsEmpty(v34))
    {
      [v12 convertRect:v0 toCoordinateSpace:{x, y, width, height}];
    }
  }

  else
  {
    [v0 bounds];
  }
}

void sub_6F9984(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _removeScrollViewScrollObserver:v1];
  }

  swift_unknownObjectWeakAssign();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 _addScrollViewScrollObserver:v1];
  }
}

void sub_6F9A24(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for TodayListCardLockupContainer();
  objc_msgSendSuper2(&v13, "didMoveToSuperview");
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        break;
      }

      v5 = [v3 superview];

      v3 = v5;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v8 = v4;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_BE70(0, &unk_94A790, UICollectionView_ptr);
      v11 = v3;
      v12 = sub_76A1C0();

      if (v12)
      {

        return;
      }
    }

    v7 = v8;
  }

  else
  {
LABEL_5:
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      return;
    }

    v7 = 0;
  }

  sub_6F9984(v7);
}

void sub_6F9C0C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup;
  if ((*(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup + 8) & 1) == 0)
  {
    v6 = *v5;
    v7 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v8 = *(v2 + v7);
    if (*(v8 + 16))
    {
      v9 = sub_663D5C(v6);
      if (v10)
      {
        [*(*(v8 + 56) + 8 * v9) setHighlighted:0];
      }
    }
  }

  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  if ((a2 & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (*(v12 + 16))
    {
      v13 = sub_663D5C(a1);
      if (v14)
      {
        [*(*(v12 + 56) + 8 * v13) setHighlighted:1];
      }
    }
  }
}

void sub_6F9D18(uint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 56) + ((v14 << 9) | (8 * v15)));
    [v16 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v17 = [v16 pointInside:a1 withEvent:?];

    if (v17)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_6F9E80(unint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) > a1)
    {

      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  sub_76A770();

LABEL_5:
  v8 = sub_764D80();
  if (v8)
  {
    v9 = v8;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = sub_BD88(&unk_93F630, &unk_77E230);
      sub_768860();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v6, 1, v12) == 1)
      {

        sub_10A2C(v6, &unk_93F980, &qword_77EDA0);
      }

      else
      {
        sub_32A6C0(v9, 1, v11, v6);

        (*(v13 + 8))(v6, v12);
      }

      return;
    }
  }
}

void sub_6FA0C8(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded) == 1)
  {
    v5 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch;
    v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch);
    if (!v6 || [v6 phase] == &dword_0 + 3 || (v7 = *(v2 + v5)) != 0 && objc_msgSend(v7, "phase") == &dword_4)
    {
      v8 = sub_74E4B8(a1);
      if (v8)
      {
        v9 = v8;
        [v8 locationInView:v2];
        sub_6F9D18(a2, v10, v11);
        sub_6F9C0C(v13, v12 & 1);
        v14 = *(v2 + v5);
        *(v2 + v5) = v9;

        sub_BE70(0, &qword_963060, UITouch_ptr);
        sub_5A800();
        v15.super.isa = sub_769630().super.isa;
        v17.super_class = type metadata accessor for TodayListCardLockupContainer();
        objc_msgSendSuper2(&v17, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v2, v17.super_class, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
      }

      else
      {
        sub_BE70(0, &qword_963060, UITouch_ptr);
        sub_5A800();
        v15.super.isa = sub_769630().super.isa;
        v18.super_class = type metadata accessor for TodayListCardLockupContainer();
        objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v17.receiver, v17.super_class, v2, v18.super_class, v19.receiver, v19.super_class);
      }
    }

    else
    {
      sub_BE70(0, &qword_963060, UITouch_ptr);
      sub_5A800();
      v15.super.isa = sub_769630().super.isa;
      v16.super_class = type metadata accessor for TodayListCardLockupContainer();
      objc_msgSendSuper2(&v16, "touchesBegan:withEvent:", v15.super.isa, a2, v2, v16.super_class, v17.receiver, v17.super_class, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
    }
  }

  else
  {
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v15.super.isa = sub_769630().super.isa;
    v19.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v17.receiver, v17.super_class, v18.receiver, v18.super_class, v2, v19.super_class);
  }
}

void sub_6FA2E0(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded] != 1)
  {
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v15.super.isa = sub_769630().super.isa;
    v18.receiver = v2;
    v18.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v18, "touchesEnded:withEvent:", v15.super.isa, a2);
    goto LABEL_15;
  }

  v5 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch;
  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch];
  if (!v6)
  {
LABEL_14:
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v15.super.isa = sub_769630().super.isa;
    v17.receiver = v2;
    v17.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v17, "touchesEnded:withEvent:", v15.super.isa, a2);
    goto LABEL_15;
  }

  v7 = v6;
  if ((sub_666B98(v7, a1) & 1) == 0)
  {

    goto LABEL_14;
  }

  v8 = *&v2[v5];
  *&v2[v5] = 0;

  v9 = &v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup];
  if ((v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup + 8] & 1) == 0)
  {
    v10 = *v9;
    if (v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isDragging])
    {
LABEL_8:
      v11 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
      swift_beginAccess();
      v12 = *&v2[v11];
      if (*(v12 + 16))
      {
        v13 = sub_663D5C(v10);
        if (v14)
        {
          [*(*(v12 + 56) + 8 * v13) setHighlighted:0];
        }
      }

      goto LABEL_11;
    }

    sub_6F9E80(*v9);
    if ((v9[8] & 1) == 0)
    {
      v10 = *v9;
      goto LABEL_8;
    }
  }

LABEL_11:
  *v9 = 0;
  v9[8] = 1;

  sub_BE70(0, &qword_963060, UITouch_ptr);
  sub_5A800();
  v15.super.isa = sub_769630().super.isa;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for TodayListCardLockupContainer();
  objc_msgSendSuper2(&v16, "touchesEnded:withEvent:", v15.super.isa, a2);
LABEL_15:
}

double sub_6FA518(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_BE70(0, &qword_963060, UITouch_ptr);
  sub_5A800();
  v8 = sub_769640();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

void sub_6FA5C8(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded] == 1)
  {
    v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch];
    *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch] = 0;

    v5 = &v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup];
    if ((v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup + 8] & 1) == 0)
    {
      v6 = *v5;
      v7 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
      swift_beginAccess();
      v8 = *&v2[v7];
      if (*(v8 + 16))
      {
        v9 = sub_663D5C(v6);
        if (v10)
        {
          [*(*(v8 + 56) + 8 * v9) setHighlighted:0];
        }
      }
    }

    *v5 = 0;
    v5[8] = 1;
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v11.super.isa = sub_769630().super.isa;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v12, "touchesCancelled:withEvent:", v11.super.isa, a2);
  }

  else
  {
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v11.super.isa = sub_769630().super.isa;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v13, "touchesCancelled:withEvent:", v11.super.isa, a2);
  }
}

void sub_6FA764(uint64_t a1, int a2, id a3)
{
  v5 = [a3 preferredContentSizeCategory];
  v6 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v7 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  if ((sub_769B60() & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_769B50())
  {
    v8 = sub_769B60();

    if (v8)
    {
LABEL_10:
      v12 = v6;
      sub_10974(a1, *(a1 + 24));
      sub_767670();
      return;
    }
  }

  else
  {
  }

  v9 = [a3 preferredContentSizeCategory];
  v13 = UIContentSizeCategoryAccessibilityMedium;
  v10 = UIContentSizeCategoryAccessibilityExtraLarge;
  if ((sub_769B60() & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (sub_769B50())
  {
    v11 = sub_769B60();

    if ((v11 & 1) == 0)
    {
      return;
    }

    v6 = UIContentSizeCategoryAccessibilityLarge;
    goto LABEL_10;
  }
}

void sub_6FA93C(char *a1, unint64_t a2)
{
  v5 = sub_7652D0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_765240();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    return;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups);
    v25 = Strong;
    if ((v11 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) > a2)
      {
        v12 = *(v11 + 8 * a2 + 32);

LABEL_7:
        v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_prefetchedLockupImages);
        if (v13)
        {
          if (*(v13 + 16))
          {
            v14 = sub_663D5C(a2);
            if (v15)
            {
              v16 = *(*(v13 + 56) + 8 * v14);
              if (sub_764F20())
              {
                sub_765250();
                v17 = sub_765210();
                v18 = v9;
                v19 = v17;
                (*(v7 + 8))(v18, v6);
                v20 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView];
                swift_beginAccess();
                sub_765330();
                v21 = *(v20 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
                sub_7652E0();
                sub_7591B0();
                [v21 setContentMode:{sub_765140(), v25}];
                sub_75DEF0();
                sub_7591F0();
                if (!sub_7651A0())
                {
                  sub_BE70(0, &qword_93E540, UIColor_ptr);
                  sub_76A030();
                }

                sub_759070();
                [v21 setContentMode:v19];
                v22 = v16;
                v29.value.super.isa = v16;
                v29.is_nil = 0;
                sub_7591D0(v29, v23);

                return;
              }
            }
          }
        }

        v27[3] = sub_764F90();
        v27[4] = sub_6FC43C(&qword_947610, &type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
        v27[0] = v12;
        v26[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
        v26[0] = a1;

        v24 = a1;
        sub_758EF0();

        sub_BEB8(v26);
        sub_10A2C(v27, &unk_963040, &qword_77F400);
        return;
      }

      __break(1u);
      return;
    }

    v12 = sub_76A770();

    goto LABEL_7;
  }
}

id sub_6FAD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups] = a1;

  swift_weakAssign();
  swift_weakAssign();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_limit] = 0;
  v4 = v3[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid];
  v3[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_6F7FB4(v4);

  return [v3 setNeedsLayout];
}

id sub_6FAE1C(char *a1)
{
  v2 = v1;
  v4 = [a1 maximumContentSizeCategory];
  [v2 setMaximumContentSizeCategory:v4];

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups] = *&a1[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups];

  swift_weakLoadStrong();
  swift_weakAssign();

  swift_weakLoadStrong();
  swift_weakAssign();

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_limit] = 0;
  v5 = v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid];
  v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_6F7FB4(v5);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v7 = *&a1[v6];
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v38 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = (v12 << 9) | (8 * v14);
    v16 = *(*(v7 + 48) + v15);
    v17 = *(*(v7 + 56) + v15);
    v18 = *(*&v17[OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    v19 = v17;
    v20 = v18;
    v21 = sub_759180();

    if (v21)
    {
      v37 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v38;
      v23 = sub_663D5C(v16);
      v25 = v38[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        result = sub_76A9B0();
        __break(1u);
        return result;
      }

      if (v38[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v23;
          v35 = v24;
          sub_45B798();
          v24 = v35;
          v23 = v40;
        }
      }

      else
      {
        v39 = v24;
        sub_4553B0(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_663D5C(v16);
        v30 = v29 & 1;
        v24 = v39;
        if ((v39 & 1) != v30)
        {
          goto LABEL_26;
        }
      }

      v38 = v41;
      if (v24)
      {
        v31 = v41[7];
        v32 = *(v31 + 8 * v23);
        *(v31 + 8 * v23) = v37;
      }

      else
      {
        v41[(v23 >> 6) + 8] |= 1 << v23;
        *(v41[6] + 8 * v23) = v16;
        *(v41[7] + 8 * v23) = v37;

        v33 = v41[2];
        v27 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v27)
        {
          goto LABEL_25;
        }

        v41[2] = v34;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 64 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (v38[2])
  {
    *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_prefetchedLockupImages] = v38;
  }

  return [v2 setNeedsLayout];
}

void sub_6FB1A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v3 - 8);
  v43 = &v34 - v4;
  v5 = sub_768AB0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v10 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_limit];
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v42 = v5;
      v2 = _swiftEmptyArrayStorage;
      v44 = _swiftEmptyArrayStorage;
      v9 = v9;
      v11 = 0;
      while (1)
      {
        if (v10 == v11)
        {

          if (v2 >> 62)
          {
            goto LABEL_35;
          }

          v14 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
          if (v14)
          {
            goto LABEL_14;
          }

          goto LABEL_36;
        }

        if (v11 >= v10)
        {
          break;
        }

        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_30;
        }

        if (sub_6F9028(v11++))
        {
          sub_769440();
          if (*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v44 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();
          v2 = v44;
          v11 = v12;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v14 = sub_76A860();
        if (!v14)
        {
          break;
        }

LABEL_14:
        v38 = v2;
        v39 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups;
        v40 = v2 & 0xFFFFFFFFFFFFFF8;
        v41 = v2 & 0xC000000000000001;
        v15 = (v6 + 48);
        v34 = (v6 + 8);
        v35 = (v6 + 32);
        v16 = 4;
        while (1)
        {
          v17 = v16 - 4;
          if (v41)
          {
            v18 = sub_76A770();
          }

          else
          {
            if (v17 >= *(v40 + 16))
            {
              goto LABEL_32;
            }

            v18 = *(v2 + 8 * v16);
          }

          v6 = v18;
          v19 = v16 - 3;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v20 = *&v9[v39];
          if ((v20 & 0xC000000000000001) != 0)
          {

            sub_76A770();
          }

          else
          {
            if (v17 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_33;
            }
          }

          v21 = v43;
          sub_764E50();
          v22 = v42;
          if ((*v15)(v21, 1, v42) == 1)
          {

            sub_10A2C(v21, &unk_93FF30, &unk_77DB10);
          }

          else
          {
            v23 = v21;
            v24 = v37;
            (*v35)(v37, v23, v22);
            [v6 frame];
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v32 = v31;
            v33 = [v9 superview];
            [v9 convertRect:v33 toView:{v26, v28, v30, v32}];

            sub_75F4B0();

            (*v34)(v24, v22);
          }

          ++v16;
          v2 = v38;
          if (v19 == v14)
          {
            goto LABEL_36;
          }
        }
      }

LABEL_36:
    }

    else
    {
    }
  }
}

id sub_6FB630(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayListCardLockupContainer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_6FB790(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_6FB7F0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_57E1C;
}

uint64_t sub_6FB888()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_6FB8E4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

void (*sub_6FB9A4(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return sub_6FBAF4;
}

uint64_t sub_6FBA44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6FBA7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6FBAB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_6FBAFC(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v3 = sub_76A860();
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = 0;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_76A770();
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      if (sub_764EE0())
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    if (qword_93C330 != -1)
    {
      swift_once();
    }

    sub_765330();

    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
  }

  while (v4 != v3);
LABEL_23:
  v6._rawValue = _swiftEmptyArrayStorage;
  sub_75A070(v6);

  return result;
}

double sub_6FBCE8(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_769240();
  v4 = v3;
  if (v2 == sub_769240() && v4 == v5)
  {
    goto LABEL_15;
  }

  v7 = sub_76A950();

  if (v7)
  {
LABEL_6:

    return 20.0;
  }

  v8 = sub_769240();
  v10 = v9;
  if (v8 == sub_769240() && v10 == v11)
  {
LABEL_15:

    return 20.0;
  }

  v13 = sub_76A950();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = sub_769240();
  v16 = v15;
  if (v14 == sub_769240() && v16 == v17)
  {
LABEL_14:

    return 0.0;
  }

  v19 = sub_76A950();

  if (v19)
  {
    goto LABEL_18;
  }

  v20 = sub_769240();
  v22 = v21;
  if (v20 == sub_769240() && v22 == v23)
  {
    goto LABEL_14;
  }

  v24 = sub_76A950();

  if (v24)
  {
    goto LABEL_18;
  }

  v25 = sub_769240();
  v27 = v26;
  if (v25 == sub_769240() && v27 == v28)
  {

    return 8.0;
  }

  v29 = sub_76A950();

  if (v29)
  {

    return 8.0;
  }

  v30 = sub_769240();
  v32 = v31;
  if (v30 == sub_769240() && v32 == v33)
  {
    goto LABEL_14;
  }

  v34 = sub_76A950();

  if (v34)
  {
LABEL_18:

    return 0.0;
  }

  v35 = sub_769240();
  v37 = v36;
  if (v35 == sub_769240() && v37 == v38)
  {
    goto LABEL_14;
  }

  v39 = sub_76A950();

  result = 8.0;
  if (v39)
  {
    return 0.0;
  }

  return result;
}

void sub_6FC05C()
{
  swift_weakInit();
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_limit) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lastContentWidth) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
  *(v0 + v2) = sub_10F700(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_prefetchedLockupImages) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isDragging) = 0;
  v3 = v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup;
  *v3 = 0;
  *(v3 + 8) = 1;
  sub_76A840();
  __break(1u);
}

char *sub_6FC1AC()
{
  v0 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = [objc_allocWithZone(type metadata accessor for TodayCardSmallLockupCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v7 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView];
  [v7 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v8 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel];
  v9 = qword_93D500;
  v10 = v7;
  v11 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v13 = sub_BE38(v12, qword_99E710);
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v15(v2, v13, v12);
  v16 = *(v14 + 56);
  v16(v2, 0, 1, v12);
  sub_75BA40();

  v17 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
  if (qword_93D528 != -1)
  {
    swift_once();
  }

  v18 = sub_BE38(v12, qword_99E788);
  v15(v2, v18, v12);
  v16(v2, 0, 1, v12);
  sub_75BA40();

  return v3;
}

uint64_t sub_6FC43C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_6FC484()
{
  result = qword_963050;
  if (!qword_963050)
  {
    sub_133D8(&unk_9467E0, &qword_787708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_963050);
  }

  return result;
}

uint64_t sub_6FC540(__n128 a1)
{
  v2 = sub_760900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

void sub_6FC5DC(__n128 a1)
{
  v2 = *(sub_760900() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_6F89EC(v1 + v3, v4);
}

double sub_6FC678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_6FC690()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16) < *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_limit))
  {
    sub_6F97C4();
    if (CGRectGetHeight(v2) > COERCE_DOUBLE(1))
    {
      sub_6F83A0();
    }
  }
}

uint64_t sub_6FC710()
{

  return swift_deallocClassInstance();
}

void sub_6FC758()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v4 = sub_76A000();
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_headerBackgroundView];
  v6 = sub_76A000();
  [v5 setBackgroundColor:v6];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 addSubview:v5];

  v9 = [v1 traitCollection];
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments];
  if (v10 >> 62)
  {
    if (sub_76A860() >= 4)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = sub_7699B0();

    if (v11)
    {
      return;
    }

    goto LABEL_8;
  }

  if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)) < 4)
  {
    goto LABEL_7;
  }

LABEL_5:

LABEL_8:
  sub_6FDB2C();
}

void sub_6FC928()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v16, "didReceiveMemoryWarning");
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    if (sub_76A860() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) >= 4)
  {
LABEL_3:

    goto LABEL_6;
  }

  v5 = sub_7699B0();

  if (v5)
  {
    return;
  }

LABEL_6:
  v6 = *&v1[v3];
  if (!(v6 >> 62))
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return;
    }

    goto LABEL_8;
  }

  v7 = sub_76A860();
  if (v7)
  {
LABEL_8:
    if (v7 < 1)
    {
      __break(1u);
      return;
    }

    v8 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectedViewController;

    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_76A770();
        v11 = *(v10 + 56);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);

        v11 = *(v10 + 56);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      v12 = *&v1[v8];
      if (!v12)
      {
        goto LABEL_19;
      }

      sub_BE70(0, &qword_9434E0, UIViewController_ptr);
      v13 = v11;
      v14 = v12;
      v15 = sub_76A1C0();

      if ((v15 & 1) == 0)
      {
        v11 = *(v10 + 56);
LABEL_19:
        *(v10 + 56) = 0;

        goto LABEL_11;
      }

LABEL_10:

LABEL_11:
      if (v7 == ++v9)
      {

        return;
      }
    }
  }
}

void sub_6FCB58(uint64_t a1)
{
  v2 = v1;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v45, "traitCollectionDidChange:", a1);
  v4 = &OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments;
  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments];
  v7 = &selRef_setTextAlignment_;
  v8 = v6 >> 62;
  if (!a1)
  {
    if (v8)
    {
      goto LABEL_45;
    }

    if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_50;
    }

    while (1)
    {
LABEL_16:
      v13 = [v2 v7[23]];
      v14 = *&v2[v4[15]];
      if (v14 >> 62)
      {
        if (sub_76A860() >= 4)
        {
LABEL_18:

          goto LABEL_23;
        }
      }

      else if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)) >= 4)
      {
        goto LABEL_18;
      }

      v15 = sub_7699B0();

      if (v15)
      {
        sub_6FD5A4();
        v16 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectorControl;
        v17 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectorControl];
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

        goto LABEL_50;
      }

LABEL_23:
      v44 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectedViewController];
      v19 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_columnViewControllers;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (v20 >> 62)
      {
        v4 = sub_76A860();
        if (!v4)
        {
LABEL_48:
          v34 = v44;
LABEL_49:
          *&v2[v19] = _swiftEmptyArrayStorage;

          sub_6FDB2C();
          sub_6FDBEC();
          goto LABEL_50;
        }
      }

      else
      {
        v4 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
        if (!v4)
        {
          goto LABEL_48;
        }
      }

      v42 = v19;
      v7 = (v20 & 0xC000000000000001);
      v43 = v44;

      v21 = 0;
      while (1)
      {
        if (v7)
        {
          v22 = sub_76A770();
        }

        else
        {
          if (v21 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_44;
          }

          v22 = *(v20 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (!v44 || (sub_BE70(0, &qword_9434E0, UIViewController_ptr), v25 = v43, v26 = v23, v27 = sub_76A1C0(), v26, v25, (v27 & 1) == 0))
        {
          v28 = [v23 parentViewController];
          if (v28)
          {
            v29 = v28;
            sub_BE70(0, &qword_9434E0, UIViewController_ptr);
            v30 = v2;
            v31 = sub_76A1C0();

            if (v31)
            {
              if ([v23 isViewLoaded])
              {
                v32 = [v23 view];
                if (!v32)
                {
                  goto LABEL_61;
                }

                v33 = v32;
                [v32 removeFromSuperview];
              }

              [v23 willMoveToParentViewController:0];
              [v23 removeFromParentViewController];
            }
          }
        }

        ++v21;
        if (v24 == v4)
        {

          v19 = v42;
          v34 = v43;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      if (sub_76A860())
      {
        goto LABEL_50;
      }
    }
  }

  if (v8)
  {
    if (sub_76A860() > 3)
    {
      goto LABEL_4;
    }
  }

  else if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) > 3)
  {
LABEL_4:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = sub_7699B0();
LABEL_10:
  v10 = [v2 traitCollection];
  v11 = *&v2[v5];
  if (v11 >> 62)
  {
    if (sub_76A860() >= 4)
    {
LABEL_12:

      if (v9)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }
  }

  else if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) >= 4)
  {
    goto LABEL_12;
  }

  v12 = sub_7699B0() & 1;

  if ((v9 & 1) != v12)
  {
    goto LABEL_16;
  }

LABEL_50:
  v35 = sub_6FDE38();
  v36 = [v2 childViewControllers];
  sub_BE70(0, &qword_9434E0, UIViewController_ptr);
  v37 = sub_769460();

  if (!(v37 >> 62))
  {
    v38 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
    if (v38)
    {
      goto LABEL_52;
    }

LABEL_59:

    return;
  }

  v38 = sub_76A860();
  if (!v38)
  {
    goto LABEL_59;
  }

LABEL_52:
  if (v38 >= 1)
  {
    for (i = 0; i != v38; ++i)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = sub_76A770();
      }

      else
      {
        v40 = *(v37 + 8 * i + 32);
      }

      v41 = v40;
      [v2 setOverrideTraitCollection:v35 forChildViewController:v40];
    }

    goto LABEL_59;
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

void sub_6FD15C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments;
  v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments];
  if (v8 >> 62)
  {
    v9 = sub_76A860();
  }

  else
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  if (v9 < 4)
  {
    v10 = sub_7699B0();

    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (a1 != -1)
  {
    v11 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectedViewController;
    v12 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectedViewController];
    if (v12)
    {
      v13 = v12;
      v14 = [v13 parentViewController];
      if (v14)
      {
        v15 = v14;
        sub_BE70(0, &qword_9434E0, UIViewController_ptr);
        v16 = v3;
        v17 = sub_76A1C0();

        if (v17)
        {
          if ([v13 isViewLoaded])
          {
            v18 = [v13 view];
            if (!v18)
            {
LABEL_41:
              __break(1u);
              return;
            }

            v19 = v18;
            [v18 removeFromSuperview];
          }

          [v13 willMoveToParentViewController:0];
          [v13 removeFromParentViewController];
        }
      }

      v20 = *&v3[v11];
      *&v3[v11] = 0;
    }
  }

LABEL_15:
  if (a2 == -1)
  {
    goto LABEL_32;
  }

  v21 = *&v3[v7];
  if ((v21 & 0xC000000000000001) != 0)
  {

    v22 = sub_76A770();

    v24 = *(v22 + 56);
    if (v24)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)) <= a2)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v22 = *(v21 + 8 * a2 + 32);

  v24 = *(v22 + 56);
  if (v24)
  {
LABEL_20:
    v25 = v24;
    goto LABEL_24;
  }

LABEL_23:
  v26 = (*(v22 + 40))(v23);
  v27 = *(v22 + 56);
  *(v22 + 56) = v26;
  v25 = v26;

  v24 = 0;
LABEL_24:
  v28 = v24;
  v29 = [v25 parentViewController];
  if (!v29 || (v30 = v29, sub_BE70(0, &qword_9434E0, UIViewController_ptr), v31 = v3, v32 = sub_76A1C0(), v30, v31, (v32 & 1) == 0))
  {
    [v3 addChildViewController:v25];
    v33 = [v3 view];
    if (!v33)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v34 = v33;
    v35 = [v25 view];
    if (!v35)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v36 = v35;
    [v34 addSubview:v35];

    swift_getObjectType();
    v37 = swift_conformsToProtocol2();
    if (v37 && v25)
    {
      v38 = v37;
      ObjectType = swift_getObjectType();
      v40 = *(v38 + 16);
      v41 = v3;
      v42 = v25;
      v40(v3, &off_89DF48, ObjectType, v38);
    }
  }

  v43 = sub_6FDE38();
  [v3 setOverrideTraitCollection:v43 forChildViewController:v25];

  v44 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectedViewController];
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectedViewController] = v25;

LABEL_32:
  [*&v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectorControl] setSelectedSegmentIndex:a2];
  v45 = [v3 view];
  if (!v45)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v46 = v45;
  [v45 bringSubviewToFront:*&v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_headerBackgroundView]];
}

void sub_6FD5A4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments;
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    v48 = v2;
    v5 = sub_76A860();
    v2 = v48;
    if (v5 >= 4)
    {
LABEL_3:

      goto _objc_release_x1;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5 >= 4)
    {
      goto LABEL_3;
    }
  }

  v49 = v2;
  v6 = sub_7699B0();

  if (v6)
  {
    v7 = *&v1[v3];
    if (!(v7 >> 62))
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      v9 = &selRef_setTextAlignment_;
      if (!v8)
      {
        goto LABEL_36;
      }

      goto LABEL_10;
    }

    v5 = sub_76A860();
    v8 = v5;
    v9 = &selRef_setTextAlignment_;
    if (v5)
    {
LABEL_10:
      if (v8 >= 1)
      {
        v46 = v7 & 0xC000000000000001;
        v47 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_columnViewControllers;

        v10 = 0;
        v44 = xmmword_77B6C0;
        v45 = v3;
        while (1)
        {
          if (v46)
          {
            v11 = sub_76A770();
          }

          else
          {
            v11 = *(v7 + 8 * v10 + 32);
          }

          v50 = v10;
          v12 = *(v11 + 56);
          if (v12)
          {
            v13 = *(v11 + 56);
          }

          else
          {
            v14 = (*(v11 + 40))();
            v15 = *(v11 + 56);
            *(v11 + 56) = v14;
            v13 = v14;

            v12 = 0;
          }

          v16 = v12;
          v17 = [v13 parentViewController];
          if (!v17 || (v18 = v17, sub_BE70(0, &qword_9434E0, UIViewController_ptr), v19 = v1, v20 = sub_76A1C0(), v18, v19, (v20 & 1) == 0))
          {
            [v1 addChildViewController:{v13, v44}];
            v5 = [v1 v9[28]];
            if (!v5)
            {
              goto LABEL_43;
            }

            v21 = v5;
            v5 = [v13 v9[28]];
            if (!v5)
            {
              goto LABEL_44;
            }

            v22 = v5;
            [v21 addSubview:v5];

            swift_getObjectType();
            v23 = swift_conformsToProtocol2();
            if (v23 && v13)
            {
              v24 = v23;
              ObjectType = swift_getObjectType();
              v26 = v8;
              v27 = v9;
              v28 = v7;
              v29 = *(v24 + 16);
              v30 = v1;
              v31 = v13;
              v29(v1, &off_89DF48, ObjectType, v24);
              v7 = v28;
              v9 = v27;
              v8 = v26;
              v3 = v45;
            }
          }

          v32 = [v1 traitCollection];
          v33 = *&v1[v3];
          v34 = v47;
          if (v33 >> 62)
          {
            if (sub_76A860() >= 4)
            {
LABEL_27:

LABEL_31:
              v39 = [v1 traitCollection];
              goto LABEL_32;
            }
          }

          else if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) >= 4)
          {
            goto LABEL_27;
          }

          v35 = sub_7699B0();

          if ((v35 & 1) == 0)
          {
            goto LABEL_31;
          }

          sub_BD88(&unk_93F5C0, &unk_77C600);
          v36 = swift_allocObject();
          *(v36 + 16) = v44;
          *(v36 + 32) = [v1 traitCollection];
          v37 = objc_opt_self();
          *(v36 + 40) = [v37 traitCollectionWithHorizontalSizeClass:1];
          sub_BE70(0, &qword_941EC8, UITraitCollection_ptr);
          isa = sub_769450().super.isa;

          v39 = [v37 traitCollectionWithTraitsFromCollections:isa];

          v34 = v47;
LABEL_32:
          [v1 setOverrideTraitCollection:v39 forChildViewController:v13];

          swift_beginAccess();
          v40 = v13;
          sub_769440();
          if (*(&dword_10 + (*&v1[v34] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v1[v34] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();
          swift_endAccess();

          v10 = v50 + 1;

          if (v8 == v50 + 1)
          {

            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
_objc_release_x1:
      _objc_release_x1(v5, v2);
      return;
    }

LABEL_36:
    v41 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectorControl];
    if (v41)
    {
      v42 = v41;
      v5 = [v1 v9[28]];
      if (!v5)
      {
        goto LABEL_45;
      }

      v43 = v5;
      [v5 bringSubviewToFront:v42];
    }
  }
}

void sub_6FDB2C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectorControl;
  if (!*(v0 + OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectorControl))
  {
    v2 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v2 addTarget:v0 action:"takeSelectedIndexFrom:" forControlEvents:4096];
    [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_headerBackgroundView) addSubview:v2];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }
}

void sub_6FDBEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectorControl);
  if (v1)
  {
    v9 = v1;
    [v9 removeAllSegments];
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments);
    v8 = v0;
    if (v2 >> 62)
    {
      goto LABEL_21;
    }

    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
LABEL_4:

    if (v3)
    {
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = sub_76A770();
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
LABEL_21:
            v3 = sub_76A860();
            goto LABEL_4;
          }

          v6 = *(v2 + 8 * v4 + 32);

          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_15;
          }
        }

        if (*(v6 + 24))
        {

          v5 = sub_769210();
        }

        else
        {
          v5 = 0;
        }

        [v9 insertSegmentWithTitle:v5 atIndex:v4 animated:{0, v8}];

        ++v4;
      }

      while (v7 != v3);
    }

    [v9 setSelectedSegmentIndex:*(v8 + OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectedIndex)];
  }
}

id sub_6FDE38()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments];
  if (v3 >> 62)
  {
    if (sub_76A860() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) >= 4)
  {
LABEL_3:

    goto LABEL_7;
  }

  v4 = sub_7699B0();

  if (v4)
  {
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_77B6C0;
    *(v5 + 32) = [v1 traitCollection];
    v6 = objc_opt_self();
    *(v5 + 40) = [v6 traitCollectionWithHorizontalSizeClass:1];
    sub_BE70(0, &qword_941EC8, UITraitCollection_ptr);
    isa = sub_769450().super.isa;

    v8 = [v6 traitCollectionWithTraitsFromCollections:isa];

    return v8;
  }

LABEL_7:
  v10 = [v1 traitCollection];

  return v10;
}

void sub_6FDFCC()
{
  v1 = v0;
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SegmentedViewController();
  v46.receiver = v0;
  v46.super_class = v6;
  objc_msgSendSuper2(&v46, "viewWillLayoutSubviews");
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 bounds];
  v45 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v1 pageMarginInsets];
  v17 = v16;
  v44 = v18;
  v19 = [v1 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  [v21 layoutFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v47.origin.x = v23;
  v47.origin.y = v25;
  v47.size.width = v27;
  v47.size.height = v29;
  MinY = CGRectGetMinY(v47);
  v31 = v45;
  v33 = sub_6FE384(v45, v11, v13, v15, MinY, v17, v32, v44);
  v35 = v34;
  v36 = [v1 traitCollection];
  LOBYTE(v21) = sub_7699D0();

  v37 = 0.0;
  if (v21)
  {
    if (qword_93DCE0 != -1)
    {
      swift_once();
    }

    v38 = sub_766CA0();
    sub_BE38(v38, qword_99FDE8);
    sub_766470();
    sub_766700();
    v37 = v39;
    (*(v3 + 8))(v5, v2);
  }

  v40 = [v1 traitCollection];
  v41 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments];
  if (v41 >> 62)
  {
    v42 = sub_76A860();
  }

  else
  {
    v42 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
  }

  if (v42 < 4)
  {
    v43 = sub_7699B0();

    if (v43)
    {
      sub_6FE8A8(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
      return;
    }
  }

  else
  {
  }

  sub_6FE710(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
}

double sub_6FE384(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v32 = a8;
  v33 = a5;
  v14 = sub_76A920();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  Width = CGRectGetWidth(v34);
  v19 = *(v8 + OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_headerView);
  if (v19)
  {
    v20 = v19;
    [v20 sizeThatFits:{a3, a4, *&v32, *&v33}];
    v22 = v21;
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetWidth(v35);
    sub_769D20();
    [v20 setFrame:?];

    v23 = v22 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = *(v8 + OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectorControl);
  if (v24)
  {
    v25 = v24;
    if ([v25 numberOfSegments] < 2)
    {
      [v25 setHidden:1];
    }

    else
    {
      v26 = v25;
      [v26 setHidden:0];
      [v26 sizeThatFits:{a3, a4}];
      v28 = v27;
      v36.origin.x = a1;
      v36.origin.y = a2;
      v36.size.width = a3;
      v36.size.height = a4;
      CGRectGetWidth(v36);
      sub_769D20();
      [v26 setFrame:?];

      v23 = v23 + v28;
    }
  }

  if (v23 >= COERCE_DOUBLE(1))
  {
    if (qword_93DCE0 != -1)
    {
      swift_once();
    }

    v29 = sub_766CA0();
    sub_BE38(v29, qword_99FDE8);
    sub_766470();
    sub_766700();
    (*(v15 + 8))(v17, v14);
  }

  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  CGRectGetMinX(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetMinY(v38);
  v30 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_headerBackgroundView);
  sub_769D20();
  [v30 setFrame:?];
  return Width;
}

void sub_6FE710(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectedViewController];
  if (v9)
  {
    v18 = v9;
    v19 = [v18 view];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    [v19 setFrame:{a1, a2, a3, a4}];

    v21 = [v18 contentScrollView];
    if (v21)
    {
      v22 = v21;
      if ([v21 contentInsetAdjustmentBehavior] != &dword_0 + 2)
      {
        [v22 setContentInset:{a5, a6, a7, a8}];
        [v22 setScrollIndicatorInsets:{a5, a6, a7, a8}];
      }

      v23 = v22;
      [v8 setContentScrollView:v23 forEdge:15];
    }
  }

  *&v8[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_multipleScrollObserver] = 0;

  v24 = &v8[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_navigationBarAppearanceProgress];
  *v24 = 0;
  v24[8] = 1;

  sub_6FEF70();
}

void sub_6FE8A8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  [v8 pageMarginInsets];
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetWidth(v39);
  j_j___s18ASMessagesProvider20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg(v13);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_columnViewControllers;
  swift_beginAccess();
  v38 = v8;
  if (*&v8[v14] >> 62)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v33 = v14;
    v15 = *&v38[v14];
    v16 = v15 >> 62 ? sub_76A860() : *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));

    if (v16)
    {
      break;
    }

LABEL_20:

    v26 = *&v38[v33];
    v14 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      v27 = sub_76A860();
    }

    else
    {
      v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    }

    v28 = 0;
    while (1)
    {
      if (v27 == v28)
      {

        sub_6FEDA8(_swiftEmptyArrayStorage);

        return;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = sub_76A770();
      }

      else
      {
        if (v28 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_35;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = [v29 contentScrollView];

      ++v28;
      if (v32)
      {
        sub_769440();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v28 = v31;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    sub_76A860();
  }

  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = sub_76A770();
    }

    else
    {
      if (v17 >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_37;
      }

      v20 = *(v15 + 8 * v17 + 32);
    }

    v19 = v20;
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_36;
    }

    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    CGRectGetMinX(v40);
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    CGRectGetMinY(v41);
    v42.origin.x = a1;
    v42.origin.y = a2;
    v42.size.width = a3;
    v42.size.height = a4;
    CGRectGetHeight(v42);
    v21 = [v19 view];
    if (!v21)
    {
      break;
    }

    v22 = v21;
    sub_769D20();
    [v22 setFrame:?];

    v23 = [v19 contentScrollView];
    if (v23)
    {
      v24 = v23;
      if ([v23 contentInsetAdjustmentBehavior] != &dword_0 + 2)
      {
        [v24 contentInset];
        [v24 setContentInset:{a5, a6, a7, a8}];
        [v24 setScrollIndicatorInsets:{a5, a6, a7, a8}];
        [v24 contentOffset];
        [v24 setContentOffset:?];
      }

      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v18 = [v25 collectionViewLayout];
        [v18 invalidateLayout];
      }

      else
      {
        v18 = v19;
        v19 = v24;
      }
    }

    ++v17;
    if (v14 == v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

void sub_6FEDA8(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (!sub_76A860())
    {
      return;
    }
  }

  else if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    return;
  }

  type metadata accessor for MultipleScrollObserver();
  v3 = swift_allocObject();
  v3[2] = a1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[3] = sub_6FF4EC;
  v3[4] = v4;

  sub_F704(0, 0);

  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_multipleScrollObserver) = v3;
}

void sub_6FEEA0(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_navigationBarAppearanceProgress], v5 = Strong[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_navigationBarAppearanceProgress + 8], Strong, v5 != 1))
  {
    if (v4 == a2)
    {
      return;
    }
  }

  else if (a2 == 1.79769313e308)
  {
    return;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = v6 + OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_navigationBarAppearanceProgress;
    *v8 = a2;
    *(v8 + 8) = 0;
    sub_6FEF70();
  }
}

void sub_6FEF70()
{
  v1 = v0[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_navigationBarAppearanceProgress + 8];
  if (v1)
  {
    v2 = [v0 navigationItem];
    v3 = [v2 _isManualScrollEdgeAppearanceEnabled];

    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_navigationBarAppearanceProgress];
  v5 = [v0 navigationItem];
  [v5 _manualScrollEdgeAppearanceProgress];
  v7 = v6;

  if (v7 != v4)
  {
    v8 = [v0 navigationItem];
    [v8 _setManualScrollEdgeAppearanceProgress:v4];
  }

  v9 = [v0 navigationItem];
  v10 = [v9 _isManualScrollEdgeAppearanceEnabled];

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v11 = [v0 navigationItem];
    [v11 _setManualScrollEdgeAppearanceEnabled:v1 ^ 1u];
  }
}

id sub_6FF0E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_headerBackgroundView;
  *&v3[v6] = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_headerView] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectedIndex] = -1;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_multipleScrollObserver] = 0;
  v7 = &v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_navigationBarAppearanceProgress];
  *v7 = 0;
  v7[8] = 1;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectedViewController] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_columnViewControllers] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectorControl] = 0;
  if (a2)
  {
    v8 = sub_769210();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SegmentedViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_6FF270(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_headerBackgroundView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_headerView] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectedIndex] = -1;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_multipleScrollObserver] = 0;
  v4 = &v1[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_navigationBarAppearanceProgress];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectedViewController] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_columnViewControllers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_selectorControl] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SegmentedViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_6FF39C(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SegmentedViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_6FF4B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_6FF4F4(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_segments];
  if (v5 >> 62)
  {
    if (sub_76A860() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) >= 4)
  {
LABEL_3:

    return a1;
  }

  v6 = sub_7699B0();

  if (v6)
  {
    [v2 pageMarginInsets];
    v8 = v7;
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = sub_7699B0();

    if (v12)
    {
      [v2 pageContainerSize];
      sub_24988C(v13, v14);
      v17 = v15 + v15 + j_j___s18ASMessagesProvider20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg(v16);
    }

    else
    {
      [v2 pageMarginInsets];
      v19 = v18;
      v21 = v20;
      [v2 pageContainerSize];
      v17 = v22 - v19 - v21;
    }

    v23 = a1 - v8;
    v24 = OBJC_IVAR____TtC18ASMessagesProvider23SegmentedViewController_columnViewControllers;
    swift_beginAccess();
    v25 = *&v2[v24];
    if (v25 >> 62)
    {
      v26 = sub_76A860();
    }

    else
    {
      v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
    }

    a1 = v23 - v10;
    if (v26 >= 1)
    {
      return a1 / v26 - v17 / v26;
    }
  }

  return a1;
}

unint64_t sub_6FF6D0(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_18:
    v4 = sub_76A860();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      sub_76A770();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    sub_765390();
    sub_703200(&qword_947FE0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    v6 = sub_7691C0();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }
}

unint64_t sub_6FF828(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v8 = sub_76A860();
  }

  else
  {
    v8 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = sub_76A770();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    sub_BE70(0, a3, a4);
    v12 = sub_76A1C0();

    if (v12)
    {
      return v9;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_6FF930(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v72 = a6;
  v10 = sub_758B40();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75F340();
  v68 = *(v14 - 8);
  v69 = v14;
  __chkstk_darwin(v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_760280();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_7687B0();
  __chkstk_darwin(v19 - 8);
  v67 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v21 - 8);
  v64 = &v56 - v22;
  v23 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v23 - 8);
  v71 = &v56 - v24;
  v63 = sub_765490();
  v62 = *(v63 - 1);
  __chkstk_darwin(v63);
  v70 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v26 - 8);
  v73 = &v56 - v27;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v56 = v18;
    v57 = v11;
    v58 = v16;
    v59 = v10;
    v60 = v13;
    v61 = *(result + 32);

    v29 = sub_6FF6D0(a1, a5);
    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = v29;
    }

    v32 = sub_10DC0C(_swiftEmptyArrayStorage);
    v33 = sub_6A0B30(a7, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000000007F27B0);
    v34 = objc_allocWithZone(type metadata accessor for ScreenshotsGalleryViewController());
    v35 = OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_fullScreenshotFetcher;
    type metadata accessor for ScreenshotFetcher();
    v36 = swift_allocObject();
    *(v36 + 16) = sub_10DC0C(_swiftEmptyArrayStorage);
    *(v36 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v36 + 32) = 0;
    swift_unknownObjectWeakAssign();
    *&v34[v35] = v36;
    v37 = OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_galleryLayout;
    *&v34[v37] = [objc_allocWithZone(type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0)) init];
    *&v34[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks] = a5;
    *&v34[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_platform] = v72;
    *&v34[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_placeholderImages] = v32;
    sub_75A110();
    sub_768900();

    sub_768ED0();
    *&v34[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworkLoader] = v76;
    *&v34[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_selectedIndex] = v31;
    v38 = *&v34[v37];

    v39 = sub_7212CC(v38, v33);

    v40 = v39;
    v41 = [v40 navigationItem];
    v42 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v40 action:"dismissFrom:"];
    [v41 setRightBarButtonItem:v42];

    *(*&v40[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_fullScreenshotFetcher] + 32) = &off_89A260;
    swift_unknownObjectWeakAssign();

    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v43 = type metadata accessor for StoreNavigationController();
    v44 = objc_allocWithZone(v43);
    *&v44[OBJC_IVAR____TtC18ASMessagesProvider25StoreNavigationController_objectGraph] = a7;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v79.receiver = v44;
    v79.super_class = v43;

    v46 = objc_msgSendSuper2(&v79, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v46 setDelegate:v46];
    [v46 setModalPresentationStyle:0];
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_77D9F0;
    *(v47 + 32) = v40;
    sub_BE70(0, &qword_9434E0, UIViewController_ptr);
    isa = sub_769450().super.isa;

    [v46 setViewControllers:isa];

    v49 = sub_BD88(&unk_93F630, &unk_77E230);
    v50 = v73;
    v72 = a7;
    sub_768860();
    v51 = *(v49 - 8);
    if ((*(v51 + 48))(v50, 1, v49) == 1)
    {

      return sub_10A2C(v73, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      (*(v62 + 104))(v70, enum case for FlowPage.viewController(_:), v63);
      v52 = sub_7570A0();
      (*(*(v52 - 8) + 56))(v71, 1, 1, v52);
      v53 = sub_759E30();
      (*(*(v53 - 8) + 56))(v64, 1, 1, v53);
      v75 = v43;
      v74 = v46;
      v63 = v46;
      sub_768790();
      (*(v65 + 104))(v56, enum case for FlowPresentationContext.infer(_:), v66);
      (*(v68 + 104))(v58, enum case for FlowAnimationBehavior.infer(_:), v69);
      (*(v57 + 104))(v60, enum case for FlowOrigin.inapp(_:), v59);
      sub_768CE0();
      sub_758B20();
      swift_allocObject();
      v54 = sub_758AD0();
      v55 = v73;
      sub_32AC14(v54, 1, v72, v73);

      return (*(v51 + 8))(v55, v49);
    }
  }

  return result;
}

void sub_700354(char a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_94F1F0, &qword_782290);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v7 - v5;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      sub_75C7B0();

      memset(v7, 0, sizeof(v7));
      sub_762910();

      sub_10A2C(v7, &unk_93FBD0, &qword_77DFA0);
      (*(v4 + 8))(v6, v3);
    }
  }
}

void sub_7004AC(char a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_94F1F0, &qword_782290);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v7 - v5;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_75DAA0();
      memset(v7, 0, sizeof(v7));
      sub_762910();

      sub_10A2C(v7, &unk_93FBD0, &qword_77DFA0);
      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_7005EC()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_700670(void *a1, uint64_t a2, uint64_t a3)
{
  v107 = a3;
  v5 = sub_75C840();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v104 = v7;
  v105 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_764930();
  v110 = *(v8 - 8);
  __chkstk_darwin(v8);
  v101 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_BD88(&qword_945828, &unk_7AF320);
  __chkstk_darwin(v109);
  v111 = &v93 - v10;
  v11 = sub_BD88(&unk_94F1F0, &qword_782290);
  v108 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v93 - v12;
  v14 = sub_BD88(&qword_9438F8, &unk_787C30);
  __chkstk_darwin(v14);
  v16 = &v93 - v15;
  v17 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v17 - 8);
  v19 = &v93 - v18;
  v20 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v20 - 8);
  v103 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v112 = &v93 - v23;
  __chkstk_darwin(v24);
  v113 = &v93 - v25;
  type metadata accessor for ProductMediaCollectionViewCell(0);
  v114 = swift_dynamicCastClass();
  if (!v114)
  {
    return;
  }

  v106 = v8;
  v99 = v6;
  v100 = v5;
  sub_759DF0();
  sub_703200(&qword_945830, &type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
  v26 = a1;
  sub_75C750();
  v27 = v116;
  if (!v116)
  {

    return;
  }

  v102 = v26;
  if (!swift_weakLoadStrong())
  {

    return;
  }

  v96 = sub_759DE0();
  v98 = v27;
  v94 = sub_759D80();
  swift_getKeyPath();
  v97 = a2;
  sub_75C7B0();

  sub_2C88C(&v16[*(v14 + 48)], v19);
  v28 = v108;
  if ((*(v108 + 48))(v19, 1, v11) == 1)
  {
    sub_10A2C(v16, &qword_963790, qword_77EBC0);
    sub_10A2C(v19, &qword_963790, qword_77EBC0);
    v29 = v110;
    v30 = v113;
    v93 = *(v110 + 56);
    v93(v113, 1, 1, v106);
  }

  else
  {
    swift_getKeyPath();
    v30 = v113;
    sub_768750();

    (*(v28 + 8))(v19, v11);
    v29 = v110;
    v93 = *(v110 + 56);
    v93(v30, 0, 1, v106);
    sub_10A2C(v16, &qword_963790, qword_77EBC0);
  }

  v31 = v111;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  v32 = v112;
  sub_768750();

  v33 = v13;
  v34 = v32;
  (*(v28 + 8))(v33, v11);
  v35 = v106;
  v93(v32, 0, 1, v106);
  v36 = *(v109 + 48);
  sub_2C8FC(v30, v31);
  sub_2C8FC(v34, v31 + v36);
  v37 = *(v29 + 48);
  if (v37(v31, 1, v35) == 1)
  {
    sub_10A2C(v34, &qword_951BE0, &unk_782280);
    sub_10A2C(v30, &qword_951BE0, &unk_782280);
    v38 = v37(v31 + v36, 1, v35);
    v39 = v102;
    v40 = v94;
    if (v38 == 1)
    {
      sub_10A2C(v31, &qword_951BE0, &unk_782280);
      v41 = v100;
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  v42 = v103;
  sub_2C8FC(v31, v103);
  v43 = v37(v31 + v36, 1, v35);
  v39 = v102;
  if (v43 == 1)
  {
    sub_10A2C(v112, &qword_951BE0, &unk_782280);
    sub_10A2C(v113, &qword_951BE0, &unk_782280);
    (*(v29 + 8))(v42, v106);
    v40 = v94;
LABEL_14:
    sub_10A2C(v31, &qword_945828, &unk_7AF320);
    v41 = v100;
    goto LABEL_15;
  }

  v52 = v31 + v36;
  v53 = v101;
  v54 = v106;
  (*(v29 + 32))(v101, v52, v106);
  sub_703200(&qword_944DC0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v55 = sub_7691C0();
  v56 = *(v29 + 8);
  v56(v53, v54);
  sub_10A2C(v112, &qword_951BE0, &unk_782280);
  sub_10A2C(v113, &qword_951BE0, &unk_782280);
  v56(v42, v54);
  sub_10A2C(v31, &qword_951BE0, &unk_782280);
  v41 = v100;
  v40 = v94;
  if (v55)
  {
    goto LABEL_27;
  }

LABEL_15:
  v44 = v40 >> 62;
  if (v40 >> 62)
  {
    v45 = sub_76A860();
  }

  else
  {
    v45 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
  }

  v46 = v96;
  if (!v45)
  {

    v116 = v46;
    goto LABEL_29;
  }

  v47 = v45 - 1;
  if (__OFSUB__(v45, 1))
  {
    goto LABEL_78;
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_79;
  }

  if ((v47 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return;
  }

  if (v47 >= *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_82;
  }

  v48 = *(v40 + 8 * v47 + 32);

  v116 = v46;
  if (!v48)
  {
    goto LABEL_29;
  }

LABEL_23:
  v115 = v48;
  sub_75A360();
  sub_703200(&qword_945840, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  v49 = sub_7691C0();

  if (v49)
  {
LABEL_27:

    LODWORD(v113) = 0;
  }

  else
  {
    v50 = v40 & 0xFFFFFFFFFFFFFF8;
    if (v44)
    {
LABEL_30:
      v51 = sub_76A860();
    }

    else
    {
LABEL_25:
      v51 = *(v50 + 16);
    }

    LODWORD(v113) = v51 > 1;
  }

  v57 = sub_759DD0();
  v44 = v57;
  v116 = _swiftEmptyArrayStorage;
  if (!(v57 >> 62))
  {
    v58 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_34;
  }

  while (1)
  {
    v58 = sub_76A860();
LABEL_34:
    if (v58)
    {
      v40 = 0;
      v39 = (v44 & 0xC000000000000001);
      v41 = v44 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v39)
        {
          sub_76A770();
          v59 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
LABEL_45:
            __break(1u);
LABEL_46:
            v60 = v116;
            v41 = v100;
            v39 = v102;
            goto LABEL_48;
          }
        }

        else
        {
          if (v40 >= *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_62;
          }

          v59 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_45;
          }
        }

        if (sub_75BEA0())
        {

          sub_76A7A0();
          sub_76A7D0();
          sub_76A7E0();
          sub_76A7B0();
        }

        else
        {
        }

        ++v40;
        if (v59 == v58)
        {
          goto LABEL_46;
        }
      }
    }

    v60 = _swiftEmptyArrayStorage;
LABEL_48:

    v44 = *(v60 + 2);
    if (!v44)
    {
      goto LABEL_66;
    }

LABEL_51:
    v116 = _swiftEmptyArrayStorage;
    v46 = &v116;
    sub_76A7C0();
    if ((v44 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:

      v48 = sub_76A770();
      v116 = v46;
      if (v48)
      {
        goto LABEL_23;
      }

LABEL_29:

      v50 = v40 & 0xFFFFFFFFFFFFFF8;
      if (!v44)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }

    v40 = 0;
    while (1)
    {
      v39 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        sub_76A770();
        if (!sub_75BEA0())
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v40 >= *(v60 + 2))
        {
          goto LABEL_63;
        }

        if (!sub_75BEA0())
        {
          goto LABEL_83;
        }
      }

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      ++v40;
      if (v39 == v44)
      {

        v61 = v116;
        v39 = v102;
        goto LABEL_67;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v44 = sub_76A860();
  if (v44)
  {
    goto LABEL_51;
  }

LABEL_66:

  v61 = _swiftEmptyArrayStorage;
LABEL_67:
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  *(v63 + 2) = v62;
  *(v63 + 3) = v61;
  v64 = v107;
  *(v63 + 4) = v96;
  *(v63 + 5) = v64;
  v65 = v114;
  v66 = (v114 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  v67 = *(v114 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  v68 = *(v114 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_screenshotSelectionHandler + 8);
  *v66 = sub_70329C;
  v66[1] = v63;

  sub_F704(v67, v68);

  v69 = *(v65 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_topAccessoryView);
  if (v69)
  {
    type metadata accessor for PlatformSelectorView();
    v70 = swift_dynamicCastClass();
    if (v70)
    {
      v71 = v70;
      v72 = swift_allocObject();
      swift_weakInit();
      v73 = v99;
      v74 = v105;
      (*(v99 + 16))(v105, v97, v41);
      v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = v113;
      *(v76 + 24) = v72;
      (*(v73 + 32))(v76 + v75, v74, v41);
      v77 = (v71 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_didSelectHandler);
      v78 = *(v71 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_didSelectHandler);
      v79 = v77[1];
      *v77 = sub_70338C;
      v77[1] = v76;
      v80 = v69;

      sub_F704(v78, v79);
    }
  }

  v81 = *(v114 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_bottomAccessoryView);
  v82 = v81;

  if (v81)
  {
    type metadata accessor for PlatformSelectorView();
    v83 = swift_dynamicCastClass();
    if (v83)
    {
      v84 = v83;
      v85 = swift_allocObject();
      swift_weakInit();

      v86 = v99;
      v87 = v105;
      (*(v99 + 16))(v105, v97, v41);
      v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = v113;
      *(v89 + 24) = v85;
      (*(v86 + 32))(v89 + v88, v87, v41);
      v90 = (v84 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_didSelectHandler);
      v91 = *(v84 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_didSelectHandler);
      v92 = v90[1];
      *v90 = sub_7033F0;
      v90[1] = v89;

      sub_F704(v91, v92);
    }
  }

  else
  {
  }
}

void sub_701598(void *a1, uint64_t a2, __n128 a3)
{
  v84 = a2;
  v78 = sub_758B40();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_75F340();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v77 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_760280();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v75 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7687B0();
  __chkstk_darwin(v7 - 8);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v9 - 8);
  v82 = &v66 - v10;
  v11 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v11 - 8);
  v81 = &v66 - v12;
  v69 = sub_765490();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v80 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v14 - 8);
  v83 = &v66 - v15;
  v16 = sub_7649E0();
  v88 = *(v16 - 8);
  v89 = v16;
  __chkstk_darwin(v16);
  v87 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_75ECD0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_BD88(&unk_94F1F0, &qword_782290);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v86 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v66 - v26;
  swift_getKeyPath();
  v93 = a1;
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  v85 = *(v23 + 8);
  v85(v27, v22);
  v98 = _swiftEmptyArrayStorage;
  v28 = *(v99 + 16);
  if (!v28)
  {

    v30 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_11;
    }

LABEL_21:
    if (sub_76A860())
    {
      goto LABEL_12;
    }

LABEL_22:

    return;
  }

  v90 = v21;
  v91 = v19;
  v92 = v18;
  v29 = v99 + 32;
  v30 = _swiftEmptyArrayStorage;
  do
  {
    sub_134D8(v29, v96);
    sub_134D8(v96, v95);
    sub_BD88(&unk_944DA0, &unk_77EB70);
    sub_75BEC0();
    if (swift_dynamicCast())
    {
      v31 = sub_75BEA0();

      sub_BEB8(v96);
      if (v31)
      {
        sub_769440();
        if (*(&dword_10 + (v98 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v98 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v30 = v98;
      }
    }

    else
    {
      sub_BEB8(v96);
    }

    v29 += 40;
    --v28;
  }

  while (v28);

  v19 = v91;
  v18 = v92;
  v21 = v90;
  if (v30 >> 62)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (!*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_22;
  }

LABEL_12:
  sub_75BEC0();
  sub_703200(&qword_940008, &type metadata accessor for ProductMediaItem, &protocol conformance descriptor for ProductMediaItem);
  sub_75C750();
  if (!*&v96[0])
  {
    goto LABEL_22;
  }

  v32 = sub_75BEA0();

  if (!v32)
  {
    goto LABEL_22;
  }

  v67 = v32;
  swift_getKeyPath();
  v33 = v86;
  sub_75C7B0();

  swift_getKeyPath();
  v34 = v87;
  sub_768750();

  v85(v33, v22);
  v36 = v88;
  v35 = v89;
  if ((*(v88 + 88))(v34, v89) == enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v36 + 96))(v34, v35);
    (*(v19 + 32))(v21, v34, v18);
    v37 = sub_6FF6D0(v67, v30);
    v39 = v21;
    if (v38)
    {
      v40 = 0;
    }

    else
    {
      v40 = v37;
    }

    v90 = v39;
    v41 = sub_75ECC0();
    v92 = v18;
    v42 = sub_10DC0C(_swiftEmptyArrayStorage);
    v43 = v84;
    v44 = sub_6A0B30(v84, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000000007F27B0);
    v45 = objc_allocWithZone(type metadata accessor for ScreenshotsGalleryViewController());
    v91 = v19;
    v46 = OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_fullScreenshotFetcher;
    type metadata accessor for ScreenshotFetcher();
    v47 = swift_allocObject();
    *(v47 + 16) = sub_10DC0C(_swiftEmptyArrayStorage);
    *(v47 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v47 + 32) = 0;
    swift_unknownObjectWeakAssign();
    *&v45[v46] = v47;
    v48 = OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_galleryLayout;
    *&v45[v48] = [objc_allocWithZone(type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0)) init];
    *&v45[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks] = v30;
    *&v45[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_platform] = v41;
    *&v45[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_placeholderImages] = v42;
    sub_75A110();
    sub_768900();

    sub_768ED0();
    *&v45[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworkLoader] = *&v96[0];
    *&v45[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_selectedIndex] = v40;
    v49 = *&v45[v48];

    v50 = sub_7212CC(v49, v44);

    v51 = v50;
    v52 = [v51 navigationItem];
    v53 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v51 action:"dismissFrom:"];
    [v52 setRightBarButtonItem:v53];

    *(*&v51[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_fullScreenshotFetcher] + 32) = &off_89A260;
    swift_unknownObjectWeakAssign();

    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v54 = type metadata accessor for StoreNavigationController();
    v55 = objc_allocWithZone(v54);
    *&v55[OBJC_IVAR____TtC18ASMessagesProvider25StoreNavigationController_objectGraph] = v43;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v94.receiver = v55;
    v94.super_class = v54;

    v57 = objc_msgSendSuper2(&v94, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v57 setDelegate:v57];
    [v57 setModalPresentationStyle:0];
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_77D9F0;
    *(v58 + 32) = v51;
    sub_BE70(0, &qword_9434E0, UIViewController_ptr);
    isa = sub_769450().super.isa;

    [v57 setViewControllers:isa];

    v60 = sub_BD88(&unk_93F630, &unk_77E230);
    v61 = v83;
    sub_768860();
    v62 = *(v60 - 8);
    if ((*(v62 + 48))(v61, 1, v60) == 1)
    {
      (*(v91 + 8))(v90, v92);

      sub_10A2C(v61, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      v97 = 0;
      memset(v96, 0, sizeof(v96));
      (*(v68 + 104))(v80, enum case for FlowPage.viewController(_:), v69);
      v63 = sub_7570A0();
      (*(*(v63 - 8) + 56))(v81, 1, 1, v63);
      v64 = sub_759E30();
      (*(*(v64 - 8) + 56))(v82, 1, 1, v64);
      v95[3] = v54;
      v95[0] = v57;
      v93 = v57;
      sub_768790();
      (*(v70 + 104))(v75, enum case for FlowPresentationContext.infer(_:), v71);
      (*(v73 + 104))(v77, enum case for FlowAnimationBehavior.infer(_:), v74);
      (*(v76 + 104))(v79, enum case for FlowOrigin.inapp(_:), v78);
      sub_768CE0();
      sub_758B20();
      swift_allocObject();
      v65 = sub_758AD0();
      sub_32AC14(v65, 1, v84, v61);

      (*(v91 + 8))(v90, v92);
      (*(v62 + 8))(v61, v60);
    }
  }

  else
  {

    (*(v36 + 8))(v34, v35);
  }
}

void sub_7024FC(void *a1, uint64_t a2)
{
  v109 = a2;
  v3 = sub_75DAB0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v95 = v5;
  v96 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_764930();
  v108 = *(v103 - 8);
  __chkstk_darwin(v103);
  v92 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_BD88(&qword_945828, &unk_7AF320);
  __chkstk_darwin(v101);
  v105 = &v84 - v7;
  v8 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v8 - 8);
  v99 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v97 = &v84 - v11;
  __chkstk_darwin(v12);
  v100 = &v84 - v13;
  v14 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v14 - 8);
  v93 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v104 = &v84 - v17;
  __chkstk_darwin(v18);
  v102 = &v84 - v19;
  v20 = sub_7649E0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_BD88(&unk_94F1F0, &qword_782290);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v98 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v84 - v28;
  v107 = sub_75ECD0();
  v30 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformSelectorView();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v94 = v30;
    v89 = v32;
    v91 = v4;
    v90 = v3;
    v33 = a1;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v34 = *(v25 + 8);
    v34(v29, v24);
    if ((*(v21 + 88))(v23, v20) != enum case for Shelf.ContentsMetadata.productMedia(_:))
    {

      (*(v21 + 8))(v23, v20);
      return;
    }

    v35 = v34;
    (*(v21 + 96))(v23, v20);
    (*(v94 + 32))(v106, v23, v107);
    v36 = sub_75ECC0();
    v88 = sub_75EC80();
    v37 = v97;
    v38 = v99;
    sub_75DA50();
    sub_10A2C(v37, &qword_963790, qword_77EBC0);
    v39 = v100;
    sub_2C88C(v38, v100);
    v40 = (*(v25 + 48))(v39, 1, v24);
    v85 = v33;
    v87 = v36;
    v86 = v35;
    if (v40 == 1)
    {
      sub_10A2C(v39, &qword_963790, qword_77EBC0);
      v41 = 1;
      v42 = v102;
    }

    else
    {
      swift_getKeyPath();
      v42 = v102;
      sub_768750();

      v35(v39, v24);
      v41 = 0;
    }

    v43 = *(v108 + 56);
    v44 = v103;
    v43(v42, v41, 1, v103);
    v45 = v98;
    sub_75DAA0();
    swift_getKeyPath();
    v46 = v104;
    sub_768750();

    v47 = v45;
    v48 = v42;
    v86(v47, v24);
    v43(v46, 0, 1, v44);
    v49 = *(v101 + 48);
    v50 = v105;
    sub_2C8FC(v42, v105);
    sub_2C8FC(v46, v50 + v49);
    v51 = *(v108 + 48);
    if (v51(v50, 1, v44) == 1)
    {
      sub_10A2C(v46, &qword_951BE0, &unk_782280);
      v52 = v105;
      sub_10A2C(v42, &qword_951BE0, &unk_782280);
      v53 = v51(v52 + v49, 1, v44);
      v54 = v91;
      v55 = v94;
      v56 = v87;
      if (v53 == 1)
      {
        sub_10A2C(v52, &qword_951BE0, &unk_782280);
LABEL_24:

        v75 = 0;
LABEL_30:
        v76 = swift_allocObject();
        swift_weakLoadStrong();

        (*(v55 + 8))(v106, v107);
        swift_weakInit();

        v77 = v96;
        v78 = v90;
        (*(v54 + 16))(v96, v109, v90);
        v79 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v80 = swift_allocObject();
        *(v80 + 16) = v75;
        *(v80 + 24) = v76;
        (*(v54 + 32))(v80 + v79, v77, v78);
        v81 = (v89 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_didSelectHandler);
        v82 = *(v89 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_didSelectHandler);
        v83 = *(v89 + OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_didSelectHandler + 8);
        *v81 = sub_703190;
        v81[1] = v80;

        sub_F704(v82, v83);

        return;
      }
    }

    else
    {
      v57 = v93;
      sub_2C8FC(v50, v93);
      v58 = v51(v50 + v49, 1, v44);
      v54 = v91;
      if (v58 != 1)
      {
        v67 = v48;
        v68 = v57;
        v69 = v108;
        v70 = v50 + v49;
        v71 = v92;
        (*(v108 + 32))(v92, v70, v44);
        sub_703200(&qword_944DC0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
        v72 = v50;
        v73 = sub_7691C0();
        v74 = *(v69 + 8);
        v74(v71, v44);
        sub_10A2C(v104, &qword_951BE0, &unk_782280);
        sub_10A2C(v67, &qword_951BE0, &unk_782280);
        v74(v68, v44);
        sub_10A2C(v72, &qword_951BE0, &unk_782280);
        v55 = v94;
        v56 = v87;
        v59 = v88;
        if (v73)
        {
          goto LABEL_24;
        }

LABEL_13:
        v60 = v59 >> 62;
        if (v59 >> 62)
        {
          v61 = sub_76A860();
          if (v61)
          {
LABEL_15:
            v62 = v61 - 1;
            if (__OFSUB__(v61, 1))
            {
              __break(1u);
            }

            else if ((v59 & 0xC000000000000001) == 0)
            {
              if ((v62 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v62 < *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8)))
              {
                v63 = *(v59 + 8 * v62 + 32);

                v111 = v56;
                if (v63)
                {
                  goto LABEL_20;
                }

                goto LABEL_27;
              }

              __break(1u);
              return;
            }

            v63 = sub_76A770();
            v111 = v56;
            if (v63)
            {
LABEL_20:
              v110 = v63;
              sub_75A360();
              sub_703200(&qword_945840, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
              v64 = sub_7691C0();

              if (v64)
              {
                goto LABEL_24;
              }

              v65 = v59 & 0xFFFFFFFFFFFFFF8;
              if (!v60)
              {
                goto LABEL_22;
              }

              goto LABEL_28;
            }

LABEL_27:

            v65 = v59 & 0xFFFFFFFFFFFFFF8;
            if (!v60)
            {
LABEL_22:
              v66 = *(v65 + 16);
LABEL_29:

              v75 = v66 > 1;
              goto LABEL_30;
            }

LABEL_28:
            v66 = sub_76A860();
            goto LABEL_29;
          }
        }

        else
        {
          v61 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
          if (v61)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_27;
      }

      sub_10A2C(v104, &qword_951BE0, &unk_782280);
      v52 = v105;
      sub_10A2C(v48, &qword_951BE0, &unk_782280);
      (*(v108 + 8))(v57, v44);
      v55 = v94;
      v56 = v87;
    }

    sub_10A2C(v52, &qword_945828, &unk_7AF320);
    v59 = v88;
    goto LABEL_13;
  }
}

uint64_t sub_703140()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_703190()
{
  sub_75DAB0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_7004AC(v1, v2);
}

uint64_t sub_703200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_70324C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_7032C0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

void sub_7033F8()
{
  v1 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_titleLabel] font];
  if (v1)
  {
    v2 = v1;
    [v1 descender];

    if (qword_93E200 != -1)
    {
      swift_once();
    }

    v3 = sub_75B680();
    sub_BE38(v3, qword_9632B8);
    v4 = [v0 traitCollection];
    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_77D9F0;
    *(v5 + 32) = v4;
    v6 = v4;
    v7 = sub_7671E0();
    sub_2A8548(v8);
    sub_7666E0();
  }

  else
  {
    __break(1u);
  }
}

id sub_703558(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4, NSString a5)
{
  v9 = sub_7603E0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  (*(v10 + 24))(&v5[v14], v13, v9);
  swift_endAccess();
  sub_703DA4();
  (*(v10 + 8))(v13, v9);
  v15 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_badgeLabel];
  if (a3)
  {
    a3 = sub_769210();
  }

  [v15 setText:a3];

  v16 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_titleLabel];
  if (a5)
  {
    a5 = sub_769210();
  }

  [v16 setText:a5];

  return [v5 setNeedsLayout];
}

uint64_t sub_703754(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_75B680();
  sub_161DC(v4, a3);
  sub_BE38(v4, a3);
  return sub_75B670();
}

char *sub_7037AC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_760370();
  __chkstk_darwin(v13 - 8);
  v14 = sub_7603D0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_7602F0();
  v19 = __chkstk_darwin(v18);
  (*(v21 + 104))(&v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v19);
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v14);
  sub_760360();
  sub_760300();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_badgeLabel;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_titleLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v51.receiver = v4;
  v51.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v51, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 setOverrideUserInterfaceStyle:2];
  [v29 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v30 = [v29 layer];
  [v30 setAllowsGroupBlending:0];

  v31 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_badgeLabel;
  v32 = qword_93DBE0;
  v33 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_badgeLabel];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_7666D0();
  v35 = sub_BE38(v34, qword_99FB98);
  v36 = *(v34 - 8);
  v50 = *(v36 + 16);
  v50(v12, v35, v34);
  v49 = *(v36 + 56);
  v49(v12, 0, 1, v34);
  sub_75BA40();

  [*&v29[v31] setNumberOfLines:1];
  v37 = *&v29[v31];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 secondaryLabelColor];
  [v39 setTextColor:v40];

  v41 = [*&v29[v31] layer];
  [v41 setCompositingFilter:kCAFilterPlusL];

  v42 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_titleLabel;
  v43 = qword_93DBE8;
  v44 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_titleLabel];
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = sub_BE38(v34, qword_99FBB0);
  v50(v12, v45, v34);
  v49(v12, 0, 1, v34);
  sub_75BA40();

  [*&v29[v42] setNumberOfLines:3];
  v46 = *&v29[v42];
  v47 = [v38 labelColor];
  [v46 setTextColor:v47];

  [v29 addSubview:*&v29[v31]];
  [v29 addSubview:*&v29[v42]];
  sub_703DA4();

  return v29;
}

id sub_703DA4()
{
  v1 = v0;
  v54 = sub_7603D0();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v47 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_760370();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = sub_7603E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = &v39 - v13;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v42 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_badgeLabel];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  v18 = *(v10 + 16);
  v53 = v17;
  v50 = v10 + 16;
  v51 = v1;
  v44 = v18;
  v18(v16, &v1[v17], v9);
  sub_760380();
  v55 = *(v10 + 8);
  v52 = v10 + 8;
  v55(v16, v9);
  v19 = sub_760340();
  v20 = *(v4 + 8);
  v48 = v3;
  v46 = v4 + 8;
  v41 = v20;
  v20(v8, v3);
  if (!v19)
  {
    v19 = [objc_opt_self() secondaryLabelColor];
  }

  v21 = v42;
  [v42 setTextColor:v19];

  v22 = v53;
  v23 = v51;
  v24 = v49;
  v25 = v44;
  v44(v49, &v51[v53], v9);
  v26 = v47;
  sub_760390();
  v55(v24, v9);
  v27 = [v23 traitCollection];
  v28 = sub_7603A0();

  v29 = *(v56 + 8);
  v56 += 8;
  v40 = v29;
  v29(v26, v54);
  [v21 setTextAlignment:v28];
  v30 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_titleLabel];
  v31 = v43;
  v25(v43, &v23[v22], v9);
  v32 = v45;
  sub_760380();
  v55(v31, v9);
  v33 = sub_760350();
  v41(v32, v48);
  if (!v33)
  {
    v33 = [objc_opt_self() labelColor];
  }

  [v30 setTextColor:v33];

  v34 = v51;
  v35 = v49;
  v25(v49, &v51[v53], v9);
  sub_760390();
  v55(v35, v9);
  v36 = [v34 traitCollection];
  v37 = sub_7603A0();

  v40(v26, v54);
  [v30 setTextAlignment:v37];
  return [v34 setNeedsLayout];
}

uint64_t sub_704320@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v3 = sub_766950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_766880();
  v11 = *(v10 - 8);
  v26 = v10;
  v27 = v11;
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v2;
  v14 = v2;
  sub_766850();
  *(swift_allocObject() + 16) = v14;
  v15 = v14;
  sub_766930();
  v16 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_badgeLabel];
  v17 = sub_75BB20();
  v31 = v17;
  v32 = &protocol witness table for UILabel;
  v30[0] = v16;
  v18 = v16;
  sub_766940();
  v19 = *(v4 + 8);
  v19(v6, v3);
  sub_BEB8(v30);
  v20 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_titleLabel];
  v29[3] = v17;
  v29[4] = &protocol witness table for UILabel;
  v29[0] = v20;
  v31 = v3;
  v32 = &protocol witness table for VerticalStack;
  sub_B1B4(v30);
  v21 = v20;
  sub_766940();
  v19(v9, v3);
  sub_BEB8(v29);
  v22 = v28;
  v23 = v26;
  v28[3] = v26;
  v22[4] = &protocol witness table for DisjointStack;
  sub_B1B4(v22);
  sub_766870();
  (*(v27 + 8))(v13, v23);
  return sub_BEB8(v30);
}

uint64_t sub_704734(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_7603D0();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7603E0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_766840();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_766970();
  v12[3] = v13;
  v12[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v12);
  sub_766960();
  v14 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v15 = *(v10 + 104);
  v27 = v9;
  v15(v12, enum case for DisjointStack.EdgePosition.anchored(_:), v9);
  v29 = a1;
  sub_7667F0();
  v16 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_displayOptions;
  v17 = v26;
  swift_beginAccess();
  v18 = v17 + v16;
  v19 = v28;
  (*(v6 + 16))(v8, v18, v5);
  sub_760390();
  v20 = v5;
  v21 = v30;
  (*(v6 + 8))(v8, v20);
  v22 = v31;
  result = (*(v21 + 88))(v19, v31);
  if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
    v12[3] = v13;
    v12[4] = &protocol witness table for ZeroDimension;
    sub_B1B4(v12);
    sub_766960();
    v15(v12, v14, v27);
    return sub_766800();
  }

  else
  {
    v24 = v27;
    if (result != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
    {
      if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
      {
        v12[3] = v13;
        v12[4] = &protocol witness table for ZeroDimension;
        sub_B1B4(v12);
        sub_766960();
        v15(v12, v14, v24);
        return sub_766810();
      }

      else
      {
        return (*(v21 + 8))(v19, v22);
      }
    }
  }

  return result;
}

uint64_t sub_704ABC(uint64_t a1, uint64_t a2)
{
  v3 = sub_7603D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7603E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_760390();
  (*(v8 + 8))(v10, v7);
  sub_7603B0();
  (*(v4 + 8))(v6, v3);
  return sub_7668E0();
}

uint64_t type metadata accessor for CarouselItemModuleHeaderView(uint64_t a1)
{
  result = qword_963310;
  if (!qword_963310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_704E44(uint64_t a1)
{
  result = sub_7603E0();
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

double sub_704EE4(uint64_t a1, __n128 a2, double a3)
{
  sub_704320(v6);
  sub_B170(v6, v6[3]);
  sub_7673F0();
  v4 = v3;
  sub_BEB8(v6);
  return v4;
}

uint64_t sub_704F8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_704FD4(__n128 a1)
{
  if (qword_93E1F0 != -1)
  {
    swift_once();
  }

  v1 = sub_75B680();
  v2 = sub_BE38(v1, qword_963288);
  v6[3] = v1;
  v6[4] = sub_2A8548(v3);
  v4 = sub_B1B4(v6);
  (*(*(v1 - 8) + 16))(v4, v2, v1);
  return sub_7668B0();
}

uint64_t sub_70509C(__n128 a1)
{
  if (qword_93E1F8 != -1)
  {
    swift_once();
  }

  v1 = sub_75B680();
  v2 = sub_BE38(v1, qword_9632A0);
  v11 = v1;
  v4 = sub_2A8548(v3);
  v12 = v4;
  v5 = sub_B1B4(v10);
  v6 = *(*(v1 - 8) + 16);
  v6(v5, v2, v1);
  sub_7668B0();
  if (qword_93E200 != -1)
  {
    swift_once();
  }

  v7 = sub_BE38(v1, qword_9632B8);
  v11 = v1;
  v12 = v4;
  v8 = sub_B1B4(v10);
  v6(v8, v7, v1);
  return sub_7668C0();
}

void sub_7051DC()
{
  v1 = sub_760370();
  __chkstk_darwin(v1 - 8);
  v2 = sub_7603D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7602F0();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_760360();
  sub_760300();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_badgeLabel;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v10) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider28CarouselItemModuleHeaderView_titleLabel;
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  sub_76A840();
  __break(1u);
}

id sub_705438()
{
  type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_705474(int a1, int a2, uint64_t a3, uint64_t a4, id a5)
{
  if ([a5 horizontalSizeClass] == &dword_0 + 1)
  {
    type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  }

  else
  {
    type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  }

  sub_18136C(a4, a5);
  return v7;
}

id sub_705550(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_963348;
  if (!qword_963348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_705614(uint64_t a1)
{
  v2 = sub_7572E0();
  v24 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_77D9F0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_77B6C0;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0x6574616C756D6953;
  *(v7 + 64) = 0xEF65676E61684320;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_705938;
  *(v7 + 112) = 0;
  sub_7572D0();
  v8 = sub_7572B0();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v5, v2);
  v26 = v8;
  v27 = v10;
  sub_76A6E0();
  *(v6 + 32) = v7;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v14 = swift_allocObject();
  v14[7] = 0x6C6C412077656956;
  v14[8] = 0xE800000000000000;
  v14[10] = 0;
  v14[11] = 0;
  v14[9] = 0;
  v14[12] = sub_706E0C;
  v14[13] = v13;

  sub_7572D0();
  v15 = sub_7572B0();
  v17 = v16;

  v18 = v24;
  v11(v5, v24);
  v26 = v15;
  v27 = v17;
  sub_76A6E0();

  *(v6 + 40) = v14;
  type metadata accessor for DebugSection();
  v19 = swift_allocObject();
  sub_7572D0();
  v20 = sub_7572B0();
  v22 = v21;
  v11(v5, v18);
  v19[2] = v20;
  v19[3] = v22;
  v19[4] = 0;
  v19[5] = 0xE000000000000000;
  v19[6] = v6;
  result = v25;
  *(v25 + 32) = v19;
  return result;
}

void sub_705938()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:ASDAppCapabilitiesDidChangeNotification object:0];
}

void sub_7059A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_706E14(a3);
  }
}

uint64_t sub_705A04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v118 = a2;
  v3 = sub_7687B0();
  __chkstk_darwin(v3 - 8);
  v129 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_7572E0();
  v130 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75EF10();
  __chkstk_darwin(v6 - 8);
  v117 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_7649E0();
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_764A60();
  __chkstk_darwin(v111);
  v114 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_75B660();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v112 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_763BE0();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v110 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_7627B0();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v124 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v13 - 8);
  v120 = v96 - v14;
  v15 = sub_BD88(&unk_957130, &qword_78B140);
  __chkstk_darwin(v15 - 8);
  v123 = v96 - v16;
  v17 = sub_BD88(&qword_94AFE0, &unk_7ADCD0);
  __chkstk_darwin(v17 - 8);
  v122 = v96 - v18;
  v19 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v19 - 8);
  v105 = v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v121 = v96 - v22;
  v23 = sub_759810();
  __chkstk_darwin(v23 - 8);
  v99 = v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&qword_94AFE8, &unk_7AF540);
  __chkstk_darwin(v25 - 8);
  v97 = v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v98 = v96 - v28;
  v29 = sub_BD88(&qword_94AFF0, &unk_78D6D0);
  __chkstk_darwin(v29 - 8);
  v31 = v96 - v30;
  v32 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v32 - 8);
  v34 = v96 - v33;
  v35 = sub_764930();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = *a1;
  v39 = a1[1];
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v40 = *(v36 + 104);
  v100 = v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40();
  v41 = *(v36 + 56);
  v101 = v34;
  v41(v34, 1, 1, v35);
  v42 = sub_7598F0();
  v43 = *(*(v42 - 8) + 56);
  v102 = v31;
  v43(v31, 1, 1, v42);
  *&v133 = 0;
  *(&v133 + 1) = 0xE000000000000000;
  sub_76A730(26);

  *&v133 = 0xD000000000000018;
  *(&v133 + 1) = 0x80000000007F2900;
  v44 = objc_opt_self();
  v45 = sub_769210();
  v46 = [v44 isCapableOfAction:0 capability:v45];

  if (v46)
  {
    v47._countAndFlagsBits = 7562585;
  }

  else
  {
    v47._countAndFlagsBits = 28494;
  }

  if (v46)
  {
    v48 = 0xE300000000000000;
  }

  else
  {
    v48 = 0xE200000000000000;
  }

  v47._object = v48;
  sub_769370(v47);

  v136 = v133;
  *&v133 = 0x203A6E65704FLL;
  *(&v133 + 1) = 0xE600000000000000;
  v49 = sub_769210();
  v50 = [v44 isCapableOfAction:3 capability:v49];

  if (v50)
  {
    v51._countAndFlagsBits = 7562585;
  }

  else
  {
    v51._countAndFlagsBits = 28494;
  }

  if (v50)
  {
    v52 = 0xE300000000000000;
  }

  else
  {
    v52 = 0xE200000000000000;
  }

  v51._object = v52;
  sub_769370(v51);

  v96[1] = v133;
  v137 = v133;
  v96[0] = *(&v133 + 1);
  *&v133 = 0x203A657461647055;
  *(&v133 + 1) = 0xE800000000000000;
  v96[5] = v38;
  v96[4] = v39;
  v53 = sub_769210();
  v54 = [v44 isCapableOfAction:1 capability:v53];

  if (v54)
  {
    v55._countAndFlagsBits = 7562585;
  }

  else
  {
    v55._countAndFlagsBits = 28494;
  }

  v56 = v120;
  if (v54)
  {
    v57 = 0xE300000000000000;
  }

  else
  {
    v57 = 0xE200000000000000;
  }

  v55._object = v57;
  sub_769370(v55);

  v96[3] = v133;
  v138 = v133;
  v96[2] = *(&v133 + 1);
  v142 = _swiftEmptyArrayStorage;
  sub_143CFC(0, 3, 0);
  v58 = v142;

  v59 = v127;
  sub_7572D0();
  v60 = sub_7572B0();
  v62 = v61;
  v63 = *(v130 + 8);
  v130 += 8;
  v119 = v63;
  v63(v59, v128);
  v131 = v60;
  v132 = v62;
  sub_76A6E0();
  sub_768790();
  v64 = sub_768AB0();
  v65 = *(v64 - 8);
  v126 = *(v65 + 56);
  v125 = v65 + 56;
  v126(v56, 1, 1, v64);
  v66 = sub_764C80();
  swift_allocObject();
  v67 = sub_764C40();
  v142 = v58;
  v69 = *(v58 + 2);
  v68 = *(v58 + 3);
  if (v69 >= v68 >> 1)
  {
    sub_143CFC((v68 > 1), v69 + 1, 1);
    v58 = v142;
  }

  v134 = v66;
  v70 = sub_23F004(&qword_951430, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  v135 = v70;
  *&v133 = v67;
  *(v58 + 2) = v69 + 1;
  sub_10914(&v133, &v58[5 * v69 + 4]);

  v71 = v127;
  sub_7572D0();
  v72 = sub_7572B0();
  v74 = v73;
  v119(v71, v128);
  v131 = v72;
  v132 = v74;
  sub_76A6E0();
  sub_768790();
  v126(v56, 1, 1, v64);
  swift_allocObject();
  v75 = sub_764C40();
  v142 = v58;
  v77 = *(v58 + 2);
  v76 = *(v58 + 3);
  v78 = v56;
  if (v77 >= v76 >> 1)
  {
    v94 = v75;
    sub_143CFC((v76 > 1), v77 + 1, 1);
    v75 = v94;
    v78 = v56;
    v58 = v142;
  }

  v134 = v66;
  v135 = v70;
  *&v133 = v75;
  *(v58 + 2) = v77 + 1;
  sub_10914(&v133, &v58[5 * v77 + 4]);

  v79 = v127;
  sub_7572D0();
  v80 = sub_7572B0();
  v82 = v81;
  v119(v79, v128);
  v131 = v80;
  v132 = v82;
  sub_76A6E0();
  sub_768790();
  v126(v78, 1, 1, v64);
  swift_allocObject();
  v83 = sub_764C40();
  v142 = v58;
  v84 = v78;
  v86 = *(v58 + 2);
  v85 = *(v58 + 3);
  if (v86 >= v85 >> 1)
  {
    v95 = v83;
    sub_143CFC((v85 > 1), v86 + 1, 1);
    v83 = v95;
    v58 = v142;
  }

  v134 = v66;
  v135 = v70;
  *&v133 = v83;
  *(v58 + 2) = v86 + 1;
  sub_10914(&v133, &v58[5 * v86 + 4]);
  swift_arrayDestroy();
  v87 = sub_759760();
  v88 = *(*(v87 - 8) + 56);
  v88(v98, 1, 1, v87);
  v88(v97, 1, 1, v87);

  sub_7597A0();
  sub_7598E0();
  swift_allocObject();
  v130 = sub_7598B0();
  v89 = sub_7570A0();
  v90 = *(*(v89 - 8) + 56);
  v90(v121, 1, 1, v89);
  v91 = sub_75C220();
  (*(*(v91 - 8) + 56))(v122, 1, 1, v91);
  v92 = sub_7572A0();
  (*(*(v92 - 8) + 56))(v123, 1, 1, v92);
  v126(v84, 1, 1, v64);
  v90(v105, 1, 1, v89);
  (*(v103 + 104))(v124, enum case for IncompleteShelfFetchStrategy.onPageLoad(_:), v104);
  (*(v106 + 104))(v110, enum case for ShelfHorizontalScrollTargetBehavior.viewAligned(_:), v107);
  (*(v108 + 104))(v112, enum case for ShelfBackground.none(_:), v109);
  sub_BD88(&qword_94AFF8, qword_78D6E0);
  swift_allocObject();
  sub_768480();
  *&v133 = _swiftEmptyArrayStorage;
  sub_23F004(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  sub_BD88(&qword_9467F8, &unk_787710);
  sub_23F04C();
  sub_76A5A0();
  (*(v113 + 104))(v116, enum case for Shelf.ContentsMetadata.none(_:), v115);
  sub_75EF00();
  sub_764B30();
  swift_allocObject();
  result = sub_764AB0();
  *v118 = result;
  return result;
}

id sub_706D3C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppCapabilitiesSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_706D94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_706DCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_706E14(uint64_t a1)
{
  v46 = a1;
  v1 = sub_BD88(&unk_93F630, &unk_77E230);
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v45 = &v33 - v2;
  v3 = sub_BD88(&qword_94AFD8, &qword_78D6C8);
  __chkstk_darwin(v3 - 8);
  v44 = &v33 - v4;
  v5 = sub_768690();
  __chkstk_darwin(v5 - 8);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_758B40();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_75F340();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_760280();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  __chkstk_darwin(v11 - 8);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  v19 = sub_765490();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = _swiftEmptyArrayStorage;
  sub_76A7C0();
  *&v51 = 0xD00000000000001ELL;
  *(&v51 + 1) = "iconAndTitleLight";

  sub_705A04(&v51, v54);

  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  *&v51 = 0xD00000000000001CLL;
  *(&v51 + 1) = "uses-non-webkit-browser-engine";

  sub_705A04(&v51, v54);

  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  swift_arrayDestroy();
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  (*(v20 + 104))(v22, enum case for FlowPage.page(_:), v19);
  v23 = sub_7570A0();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = sub_759E30();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v49 = 0u;
  v50 = 0u;
  sub_768790();
  (*(v9 + 104))(v38, enum case for FlowPresentationContext.infer(_:), v34);
  (*(v36 + 104))(v40, enum case for FlowAnimationBehavior.infer(_:), v37);
  (*(v39 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v25 = sub_758AD0();
  v51 = 0u;
  v52 = 0u;
  sub_768680();
  v26 = sub_768650();
  (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
  v27 = sub_7594D0();
  swift_allocObject();
  v28 = sub_7594C0();
  *(&v52 + 1) = v27;
  *&v51 = v28;
  sub_758A70();
  sub_BDD0(&v51);
  sub_768900();
  v30 = v45;
  v29 = v46;
  v31 = v48;
  sub_768ED0();
  sub_32AC14(v25, 1, v29, v30);

  return (*(v47 + 8))(v30, v31);
}

char *sub_707654(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = sub_7666D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_760AD0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_93E530, &unk_77C5F0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v36 - v20;
  v22 = &v5[OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_metrics];
  *(v22 + 3) = &type metadata for CGFloat;
  *(v22 + 4) = &protocol witness table for CGFloat;
  *v22 = 0;
  *(v22 + 8) = &type metadata for CGFloat;
  *(v22 + 9) = &protocol witness table for CGFloat;
  *(v22 + 5) = 0;
  v23 = &v5[OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButtonHandler];
  *v23 = 0;
  *(v23 + 1) = 0;
  *v21 = UIFontTextStyleBody;
  *(v21 + 2) = 0;
  (*(v11 + 104))(v21, enum case for FontUseCase.preferredFont(_:), v10, v19);
  (*(v11 + 56))(v21, 0, 1, v10);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  objc_allocWithZone(sub_75BB20());
  v24 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_headingLabel] = sub_75BB10();
  type metadata accessor for HeaderButton(0);
  if (qword_93D4C0 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v10, qword_99E650);
  (*(v11 + 16))(v13, v25, v10);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButton] = sub_75C550();
  v26 = type metadata accessor for SearchHeadingView();
  v36.receiver = v5;
  v36.super_class = v26;
  v27 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_headingLabel]];
  v32 = OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButton;
  v33 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButton];
  sub_75D600();

  [*&v31[v32] addTarget:v31 action:"didPressWithDetailButton:" forControlEvents:64];
  [v31 addSubview:*&v31[v32]];
  sub_BD88(&qword_9477F0, qword_780200);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_77B6D0;
  *(v34 + 32) = sub_7676F0();
  *(v34 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v31;
}

uint64_t sub_707B9C(uint64_t a1)
{
  v3 = sub_7666D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_94EFA8, &qword_7936B8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v11 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v26 - v15;
  __chkstk_darwin(v17);
  v19 = v26 - v18;
  v27 = v1;
  v26[1] = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_headingLabel];
  sub_75BA30();
  v20 = *(v8 + 56);
  sub_1E9A94(v19, v10);
  v28 = a1;
  sub_1E9A94(a1, &v10[v20]);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) != 1)
  {
    sub_1E9A94(v10, v16);
    if (v21(&v10[v20], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v20], v3);
      sub_709BF8(&qword_94EFB0, &type metadata accessor for FontUseCase, &protocol conformance descriptor for FontUseCase);
      v24 = sub_7691C0();
      v25 = *(v4 + 8);
      v25(v6, v3);
      sub_10A2C(v19, &unk_93E530, &unk_77C5F0);
      v25(v16, v3);
      sub_10A2C(v10, &unk_93E530, &unk_77C5F0);
      v22 = v28;
      if (v24)
      {
        return sub_10A2C(v22, &unk_93E530, &unk_77C5F0);
      }

      goto LABEL_7;
    }

    sub_10A2C(v19, &unk_93E530, &unk_77C5F0);
    (*(v4 + 8))(v16, v3);
LABEL_6:
    sub_10A2C(v10, &qword_94EFA8, &qword_7936B8);
    v22 = v28;
LABEL_7:
    sub_1E9A94(v22, v13);
    sub_75BA40();
    [v27 setNeedsLayout];
    return sub_10A2C(v22, &unk_93E530, &unk_77C5F0);
  }

  sub_10A2C(v19, &unk_93E530, &unk_77C5F0);
  if (v21(&v10[v20], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_10A2C(v10, &unk_93E530, &unk_77C5F0);
  v22 = v28;
  return sub_10A2C(v22, &unk_93E530, &unk_77C5F0);
}

uint64_t sub_707F88()
{
  v1 = sub_7664F0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHeadingView();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_16C41C(&v0[OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_metrics], v11);
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButton];
  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_headingLabel];
  v13 = &protocol witness table for UIView;
  v14 = v6;
  v15 = &protocol witness table for UIView;
  v7 = v12;
  v8 = v6;
  sub_75D650();
  sub_7088BC(v7, &protocol witness table for UIView, v8, &protocol witness table for UIView, v11, v0, v10);
  sub_B170(v10, v10[3]);
  sub_7672C0();
  (*(v2 + 8))(v4, v1);
  sub_BEB8(v10);
  return sub_709B88(v11);
}

uint64_t SearchHeadingLayout.placeChildren(relativeTo:in:)(void *a1, double a2, double a3, double a4, double a5)
{
  sub_7088BC(*(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), v5, a1, v7);
  sub_B170(v7, v7[3]);
  sub_7672C0();
  return sub_BEB8(v7);
}

double sub_708258(void *a1, double a2, double a3)
{
  sub_16C41C(v3 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_metrics, v10);
  v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButton);
  v11 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_headingLabel);
  v12 = &protocol witness table for UIView;
  v13 = v5;
  v14 = &protocol witness table for UIView;
  sub_7088BC(v11, &protocol witness table for UIView, v5, &protocol witness table for UIView, v10, a1, v9);
  sub_B170(v9, v9[3]);
  sub_7665A0();
  v7 = v6;
  sub_BEB8(v9);
  sub_709B88(v10);
  return v7;
}

double SearchHeadingLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  sub_7088BC(*(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), v3, a1, v7);
  sub_B170(v7, v7[3]);
  sub_7665A0();
  v5 = v4;
  sub_BEB8(v7);
  return v5;
}

double sub_7084A8(void *a1, uint64_t a2, NSString a3, double a4, double a5)
{
  v8 = [a1 traitCollection];
  if (qword_93C5E0 != -1)
  {
    swift_once();
  }

  v9 = qword_9481A0;
  if (a3)
  {
    a3 = sub_769210();
  }

  [v9 setTitle:a3 forState:0];

  [v9 setImage:0 forState:0];
  v10 = [v9 titleLabel];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = [v12 font];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];
    }

    else
    {
      v15 = 0;
    }

    [v12 setFont:v15];
  }

  [v9 sizeThatFits:{a4, a5}];
  v17 = v16;

  [v9 setTitle:0 forState:0];
  [v9 setImage:0 forState:0];

  return v17 + 0.0;
}

double sub_70867C(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, void (*a5)(void, void), double a6, double a7)
{
  v10 = *(a4 + 8);
  sub_16C41C(a2, v15);
  v16 = a3;
  v17 = v10;
  v18 = a5;
  v19 = &protocol witness table for LayoutViewPlaceholder;
  swift_unknownObjectRetain();

  sub_7088BC(a3, v10, a5, &protocol witness table for LayoutViewPlaceholder, v15, a1, v14);
  sub_B170(v14, v14[3]);
  sub_7665A0();
  v12 = v11;
  sub_BEB8(v14);
  sub_709B88(v15);
  return v12;
}

id sub_70880C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHeadingView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_7088BC(void (*a1)(void, void)@<X0>, void (*a2)(void, void)@<X1>, void (*a3)(void, void)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v126 = a5;
  v124 = a4;
  v125 = a3;
  v118 = a2;
  v123 = a1;
  v127 = a7;
  v8 = sub_761400();
  v136 = *(v8 - 8);
  __chkstk_darwin(v8);
  v120 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_761410();
  v135 = *(v113 - 8);
  __chkstk_darwin(v113);
  v121 = (&v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = sub_7613E0();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v116 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_761450();
  v131 = *(v115 - 8);
  __chkstk_darwin(v115);
  v109 = (&v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = sub_761440();
  v129 = *(v114 - 8);
  __chkstk_darwin(v114);
  v106 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_761430();
  v132 = *(v117 - 8);
  __chkstk_darwin(v117);
  v112 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_761470();
  v119 = *(v122 - 8);
  __chkstk_darwin(v122);
  v110 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v130 = &v94 - v17;
  v18 = sub_766E50();
  v108 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_766E60();
  v128 = *(v107 - 1);
  __chkstk_darwin(v107);
  v22 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_766E00();
  v24 = *(v23 - 8);
  *&v25 = __chkstk_darwin(v23).n128_u64[0];
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [a6 traitCollection];
  v29 = sub_769A00();

  if (v29)
  {
    sub_BD88(&qword_93F458, &unk_77E270);
    v30 = *(sub_766E90() - 8);
    v134 = *(v30 + 72);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_77E280;
    v135 = v32;
    v136 = v32 + v31;
    v33 = v123;
    ObjectType = swift_getObjectType();
    v145 = v118;
    v143 = v33;
    *(&v141 + 1) = &type metadata for CGFloat;
    v142 = &protocol witness table for CGFloat;
    *&v140 = 0;
    v139 = 0;
    memset(v138, 0, sizeof(v138));
    v111 = v24;
    v34 = *(v24 + 13);
    v122 = (v24 + 104);
    v133 = v34;
    v105 = v23;
    (v34)(v27, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v23);
    LODWORD(v132) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v35 = v128;
    v131 = *(v128 + 104);
    v36 = v107;
    (v131)(v22);
    v137 = _swiftEmptyArrayStorage;
    v130 = sub_709BF8(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    swift_unknownObjectRetain();
    v129 = sub_BD88(&unk_960EE0, &unk_77E260);
    v123 = sub_1EDC8();
    sub_76A5A0();
    sub_766E80();
    v121 = *(v108 + 8);
    v121(v20, v18);
    v120 = *(v35 + 8);
    v128 = v35 + 8;
    (v120)(v22, v36);
    v37 = *(v111 + 1);
    v111 += 8;
    v119 = v37;
    v38 = v18;
    v39 = v105;
    (v37)(v27, v105);
    sub_10A2C(v138, &unk_93F9C0, &qword_77EDB0);
    sub_BEB8(&v140);
    sub_BEB8(&v143);
    v40 = v125;
    ObjectType = swift_getObjectType();
    v145 = v124;
    v143 = v40;
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    (v133)(v27, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), v39);
    (v131)(v22, v132, v36);
    *&v138[0] = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    sub_76A5A0();
    sub_766E80();
    v121(v20, v38);
    (v120)(v22, v36);
    (v119)(v27, v39);
    sub_10A2C(&v140, &unk_93F9C0, &qword_77EDB0);
    sub_BEB8(&v143);
    v41 = sub_766EA0();
    v42 = v127;
    v127[3] = v41;
    v42[4] = &protocol witness table for VerticalFlowLayout;
    v42[5] = &protocol witness table for VerticalFlowLayout;
    sub_B1B4(v42);
    sub_766E70();
  }

  else
  {
    ObjectType = &type metadata for CGFloat;
    v145 = &protocol witness table for CGFloat;
    v143 = 0;
    v43 = v129;
    v100 = *(v129 + 104);
    v128 = v129 + 104;
    v44 = v106;
    v45 = v114;
    v100(v106, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v114);
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    v47 = v109;
    *v109 = v46;
    v48 = v8;
    v49 = v131;
    v50 = *(v131 + 104);
    v108 = v131 + 104;
    v111 = v50;
    v51 = v115;
    (v50)(v47, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v115);
    sub_761420();
    v52 = *(v49 + 8);
    v131 = v49 + 8;
    v107 = v52;
    (v52)(v47, v51);
    v53 = *(v43 + 8);
    v129 = v43 + 8;
    v105 = v53;
    v53(v44, v45);
    *(&v141 + 1) = &type metadata for Double;
    v142 = &protocol witness table for Double;
    *&v140 = 0;
    v54 = v133;
    v55 = v133[13];
    v103 = (v133 + 13);
    v104 = v55;
    v56 = v116;
    v55(v116, enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:), v134);
    v57 = v135;
    v58 = v136;
    v59 = *(v136 + 104);
    v101 = v136 + 104;
    v102 = v59;
    v60 = v120;
    v95 = v48;
    v59(v120, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:), v48);
    v61 = v121;
    sub_7613F0();
    v62 = *(v58 + 8);
    v136 = v58 + 8;
    v99 = v62;
    v62(v60, v48);
    v63 = v112;
    sub_761460();
    v64 = *(v57 + 8);
    v135 = v57 + 8;
    v123 = v64;
    v64(v61, v113);
    v65 = v54[1];
    v133 = v54 + 1;
    v118 = v65;
    v65(v56, v134);
    v66 = *(v132 + 8);
    v132 += 8;
    v98 = v66;
    v67 = v63;
    v66(v63, v117);
    sub_BEB8(&v140);
    sub_BEB8(&v143);
    v68 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:);
    v69 = v114;
    v70 = v100;
    v100(v44, enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:), v114);
    v71 = sub_BD88(&qword_94EF88, "J\b");
    v72 = swift_allocBox();
    v74 = v73;
    v75 = *(v71 + 48);
    v96 = v119[2];
    v97 = (v119 + 2);
    v96(v73, v130, v122);
    v70(v74 + v75, v68, v69);
    *v47 = v72;
    v76 = v115;
    (v111)(v47, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v115);
    sub_761420();
    (v107)(v47, v76);
    v105(v44, v69);
    v77 = v116;
    v78 = v134;
    v104(v116, enum case for HorizontalAlignmentLayout.HorizontalGravity.trailing(_:), v134);
    v79 = v120;
    v80 = v95;
    v102(v120, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.high(_:), v95);
    v81 = v121;
    sub_7613F0();
    v99(v79, v80);
    v145 = &protocol witness table for Double;
    ObjectType = &type metadata for Double;
    v143 = 0;
    v82 = v110;
    sub_761460();
    v123(v81, v113);
    v118(v77, v78);
    v98(v67, v117);
    sub_BEB8(&v143);
    sub_BD88(&qword_94EF90, "^\b");
    v83 = v119;
    v84 = v119[9];
    v85 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_77E280;
    v87 = v86 + v85;
    v88 = v130;
    v89 = v122;
    v90 = v96;
    v96(v87, v130, v122);
    v90(v87 + v84, v82, v89);
    v91 = sub_761490();
    v92 = v127;
    v127[3] = v91;
    v92[4] = sub_709BF8(&qword_94EF98, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
    v92[5] = sub_709BF8(&qword_94EFA0, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
    sub_B1B4(v92);
    sub_761480();
    v93 = v83[1];
    v93(v82, v89);
    v93(v88, v89);
  }
}

__n128 sub_709AA0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_709AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_709B0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_709BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_709C40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29PlaceholderCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_709C9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29PlaceholderCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_709D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_70AB3C(&qword_941498, type metadata accessor for PlaceholderCollectionViewCell, &unk_7AF6C8);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_709E00(uint64_t a1)
{
  v3 = sub_764A60();
  v83 = *(v3 - 8);
  v84 = v3;
  __chkstk_darwin(v3);
  v81 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v75 - v6;
  v7 = sub_75DAB0();
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v9 - 8);
  v11 = &v75 - v10;
  v12 = sub_BD88(&unk_94F1F0, &qword_782290);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v75 - v14;
  v16 = sub_764930();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v77 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v75 - v20;
  __chkstk_darwin(v22);
  v85 = &v75 - v23;
  sub_7595E0();
  sub_70AB3C(&qword_9633C8, &type metadata accessor for Placeholder, &protocol conformance descriptor for Placeholder);
  sub_75C750();
  result = v86;
  if (!v86)
  {
    return result;
  }

  v76 = v1;

  swift_getKeyPath();
  v75 = a1;
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v13 + 8))(v15, v12);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    return sub_3E153C(v11);
  }

  v25 = v85;
  (*(v17 + 32))(v85, v11, v16);
  v26 = *(v17 + 16);
  v26(v21, v25, v16);
  v27 = (*(v17 + 88))(v21, v16);
  if (v27 == enum case for Shelf.ContentType.smallLockup(_:) || v27 == enum case for Shelf.ContentType.mediumLockup(_:) || v27 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    v33 = *&v76[OBJC_IVAR____TtC18ASMessagesProvider29PlaceholderCollectionViewCell_placeholderView];
    type metadata accessor for LockupPlaceholderView(0);
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = v34;
      v36 = v33;
    }

    else
    {
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    v40 = v77;
    v26(v77, v25, v16);
    v41 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_contentType;
    swift_beginAccess();
    (*(v17 + 24))(&v35[v41], v40, v16);
    swift_endAccess();
    v28 = v35;
    [v28 setNeedsLayout];
    (*(v17 + 8))(v40, v16);
    v42 = v78;
    sub_75C720();
    v43 = v82;
    sub_75DA70();
    (*(v79 + 8))(v42, v80);
    v44 = v81;
    sub_764A10();
    sub_70AB3C(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v45 = v84;
    v46 = sub_76A520();
    v47 = *(v83 + 8);
    v47(v44, v45);
    v47(v43, v45);
    v28[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_wantsHeadingTextPlaceholder] = v46 & 1;
    [v28 setNeedsLayout];

    v32 = v76;
    goto LABEL_17;
  }

  if (v27 != enum case for Shelf.ContentType.videoCard(_:))
  {
    if (v27 == enum case for Shelf.ContentType.brick(_:))
    {
      v32 = v76;
      v37 = *&v76[OBJC_IVAR____TtC18ASMessagesProvider29PlaceholderCollectionViewCell_placeholderView];
      type metadata accessor for BrickPlaceholderView();
      v38 = swift_dynamicCastClass();
      if (v38)
      {
        v28 = v38;
        v39 = v37;
      }

      else
      {
        v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      }

      v58 = v78;
      sub_75C720();
      v59 = v82;
      sub_75DA70();
      (*(v79 + 8))(v58, v80);
      v60 = v81;
      sub_764A20();
      sub_70AB3C(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      v61 = v84;
      v62 = sub_76A520();
      v63 = *(v83 + 8);
      v63(v60, v61);
      v63(v59, v61);
      v28[OBJC_IVAR____TtC18ASMessagesProvider20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] = v62 & 1;
      [v28 setNeedsLayout];
      goto LABEL_17;
    }

    if (v27 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
      goto LABEL_24;
    }

    if (v27 == enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      type metadata accessor for TodayCardPlaceholderView();
    }

    else
    {
      if (v27 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v27 == enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        type metadata accessor for MixedMediaLockupPlaceholderView(0);
        v64 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v65 = v77;
        v26(v77, v25, v16);
        v66 = OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_contentType;
        swift_beginAccess();
        (*(v17 + 24))(&v64[v66], v65, v16);
        swift_endAccess();
        v28 = v64;
        [v28 setNeedsLayout];
        (*(v17 + 8))(v65, v16);
        v67 = v78;
        sub_75C720();
        v68 = v82;
        sub_75DA70();
        (*(v79 + 8))(v67, v80);
        v69 = v81;
        sub_764A20();
        sub_70AB3C(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
        v70 = v84;
        LOBYTE(v66) = sub_76A520();
        v71 = *(v83 + 8);
        v71(v69, v70);
        v71(v68, v70);
        v28[OBJC_IVAR____TtC18ASMessagesProvider31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] = v66 & 1;
        [v28 setNeedsLayout];

        goto LABEL_9;
      }

      if (v27 != enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        v32 = v76;
        if (v27 == enum case for Shelf.ContentType.posterLockup(_:))
        {
          v28 = [objc_allocWithZone(UIView) init];
          v72 = [objc_opt_self() secondarySystemBackgroundColor];
          [v28 setBackgroundColor:v72];

          v73 = [v28 layer];
          [v73 setCornerRadius:20.0];

          v74 = [v28 layer];
          [v74 setCornerCurve:kCACornerCurveContinuous];

          goto LABEL_17;
        }

        if (v27 == enum case for Shelf.ContentType.appPromotion(_:))
        {
          type metadata accessor for AppEventPlaceholderView();
          goto LABEL_35;
        }

        if (v27 != enum case for Shelf.ContentType.tagBrick(_:))
        {
          (*(v17 + 8))(v21, v16);
          v28 = 0;
          v32 = v76;
          goto LABEL_18;
        }

LABEL_24:
        v32 = v76;
        v55 = *&v76[OBJC_IVAR____TtC18ASMessagesProvider29PlaceholderCollectionViewCell_placeholderView];
        type metadata accessor for CategoryBrickPlaceholderView();
        v56 = swift_dynamicCastClass();
        if (v56)
        {
          v28 = v56;
          v57 = v55;
          goto LABEL_17;
        }

LABEL_35:
        v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        goto LABEL_17;
      }

      type metadata accessor for TodayBrickPlaceholderView(0);
    }

    v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    goto LABEL_9;
  }

  v28 = [objc_allocWithZone(UIView) init];
  v29 = [objc_opt_self() secondarySystemBackgroundColor];
  [v28 setBackgroundColor:v29];

  v30 = [v28 layer];
  [v30 setCornerRadius:20.0];

  v31 = [v28 layer];
  [v31 setCornerCurve:kCACornerCurveContinuous];

LABEL_9:
  v32 = v76;
LABEL_17:
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
LABEL_18:
  v48 = OBJC_IVAR____TtC18ASMessagesProvider29PlaceholderCollectionViewCell_placeholderView;
  [*&v32[OBJC_IVAR____TtC18ASMessagesProvider29PlaceholderCollectionViewCell_placeholderView] removeFromSuperview];
  if (v28)
  {
    v49 = v28;
    v50 = [v32 contentView];
    [v50 addSubview:v49];

    v51 = *&v32[v48];
    *&v32[v48] = v49;
    v52 = v49;

    [v32 setNeedsLayout];
  }

  else
  {
    v53 = [objc_allocWithZone(UIView) init];
    v54 = *&v32[v48];
    *&v32[v48] = v53;
  }

  return (*(v17 + 8))(v85, v16);
}

uint64_t sub_70AB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double *sub_70AB84(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        sub_769440();
        if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v15 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

double *sub_70AD30(double *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_758DA0();
      v12 = *(v10 - 8);
      result = (v10 - 8);
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = (v6)(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_7B5CC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_7B5CC((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 2) = v17;
    v18 = &v8[2 * v16];
    *(v18 + 4) = v21;
    *(v18 + 5) = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_70AECC()
{
  sub_BD88(&qword_9439E8, &unk_7A7260);
  v0 = sub_764930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_77DC20;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Shelf.ContentType.productTopLockup(_:), v0);
  v6(v5 + v2, enum case for Shelf.ContentType.preorderDisclaimer(_:), v0);
  v6(v5 + 2 * v2, enum case for Shelf.ContentType.productBadge(_:), v0);
  v7 = sub_1A2300(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_9A0940 = v7;
  return result;
}

double *sub_70B040(void *a1, int *a2)
{
  v5 = sub_6C330C(a1, a2);
  v6 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  v8 = sub_70F7FC(a1, a2, v7);
  if (v8)
  {
    v10 = v8;
    sub_769440();
    if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v21 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v6 = v21;
  }

  v11 = sub_70D6A8(a1, v9);
  if (v11)
  {
    v13 = v11;
    sub_769440();
    if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v21 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v6 = v21;
  }

  v14 = sub_710C04(a1, v12);
  if (v14)
  {
    v15 = v14;
    sub_769440();
    if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v21 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v6 = v21;
  }

  sub_BE70(0, &unk_956240, NSCollectionLayoutBoundarySupplementaryItem_ptr);

  v16 = sub_7694B0();
  v19[2] = v2;
  v19[3] = a1;
  v19[4] = __chkstk_darwin(v16).n128_u64[0];
  v17 = sub_70AB84(sub_7111C8, v19, v5);

  v20 = v17;
  sub_10A48C(v6);
  return v20;
}

void sub_70B274(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>, double a4@<D0>)
{
  v6 = *a1;
  if (sub_7111E8(*a1, a2))
  {
    if ([v6 alignment] == &dword_0 + 1 && a4 > 0.0)
    {
      v7 = [v6 layoutSize];
      v8 = [v6 elementKind];
      if (!v8)
      {
        sub_769240();
        v8 = sub_769210();
      }

      v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:objc_msgSend(v6 absoluteOffset:{"alignment"), 0.0, -a4}];

      *a3 = v9;
    }

    else
    {
      *a3 = v6;
      v10 = v6;
    }
  }

  else
  {
    *a3 = 0;
  }
}

double sub_70B3B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = a4;
  v9 = sub_75DAB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (sub_769BC0() == a1 && v13 == a2)
  {

LABEL_5:
    a5[3] = sub_BD88(&qword_94C620, &qword_7A9A10);
    a5[4] = sub_16194(&qword_963780, &qword_94C620, &qword_7A9A10, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_B1B4(a5);

    sub_769BD0();
LABEL_13:
    sub_763760();
    return result;
  }

  v34 = a3;
  v14 = sub_76A950();

  if (v14)
  {
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000023 && 0x80000000007F2A00 == a2 || (sub_76A950() & 1) != 0 || a1 == 0xD000000000000026 && 0x80000000007F2A30 == a2 || (sub_76A950() & 1) != 0)
  {
    a5[3] = sub_BD88(&qword_9635C0, &unk_7AF800);
    a5[4] = sub_16194(&qword_9635C8, &qword_9635C0, &unk_7AF800, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    v36 = sub_B1B4(a5);
    type metadata accessor for PlatformSelectorView();

    sub_769BD0();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v15 = v9;
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v16, v12, v15);
    goto LABEL_13;
  }

  type metadata accessor for InteractiveProductReviewsShelfHeaderView();
  if (sub_769BC0() == a1 && v19 == a2)
  {

LABEL_18:
    a5[3] = sub_BD88(&qword_9635B0, &qword_7AF7F8);
    a5[4] = sub_16194(&qword_9635B8, &qword_9635B0, &qword_7AF7F8, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    v36 = sub_B1B4(a5);

    sub_769BD0();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v21 = v9;
    v22 = v10;
    v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v24 = swift_allocObject();
    (*(v22 + 32))(v24 + v23, v12, v21);
    goto LABEL_13;
  }

  v20 = sub_76A950();

  if (v20)
  {
    goto LABEL_18;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  if (sub_769BC0() == a1 && v25 == a2)
  {

LABEL_23:
    a5[3] = sub_BD88(&qword_9635A8, &qword_7AF7F0);
    a5[4] = sub_16194(&unk_963770, &qword_9635A8, &qword_7AF7F0, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    v36 = sub_B1B4(a5);

    sub_769BD0();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v27 = v9;
    v28 = v10;
    v29 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v30 = swift_allocObject();
    (*(v28 + 32))(v30 + v29, v12, v27);
    goto LABEL_13;
  }

  v26 = sub_76A950();

  if (v26)
  {
    goto LABEL_23;
  }

  v31 = v34;
  v32 = v35;

  return sub_6BED78(a1, a2, v31, v32, a5);
}

double *sub_70B9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v5 = sub_75DAB0();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7649E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_94F1F0, &qword_782290);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = sub_75FF30();
  v36 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v37 = sub_6C4488(a1, a2, v38, v16);
  v31 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v12 + 8))(v14, v11);
  if ((*(v8 + 88))(v10, v7) != enum case for Shelf.ContentsMetadata.productReviews(_:))
  {
    (*(v8 + 8))(v10, v7);
    return v37;
  }

  (*(v8 + 96))(v10, v7);
  v19 = v36;
  (*(v36 + 32))(v18, v10, v15);
  if ((sub_75FF10() & 1) == 0)
  {
    (*(v19 + 8))(v18, v15);
    return v37;
  }

  v21 = v32;
  v20 = v33;
  v22 = v34;
  (*(v33 + 16))(v32, v31, v34);
  type metadata accessor for InteractiveProductReviewsShelfScrollObserver(0);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = v23 + OBJC_IVAR____TtC18ASMessagesProvider44InteractiveProductReviewsShelfScrollObserver_currentState;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  *(v24 + 40) = 1;
  (*(v20 + 32))(v23 + OBJC_IVAR____TtC18ASMessagesProvider44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext, v21, v22);
  swift_unknownObjectWeakAssign();
  *(v23 + OBJC_IVAR____TtC18ASMessagesProvider44InteractiveProductReviewsShelfScrollObserver_objectGraph) = v38;

  v25 = v37;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_7C728(0, *(v25 + 2) + 1, 1, v25);
  }

  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_7C728((v26 > 1), v27 + 1, 1, v25);
  }

  (*(v19 + 8))(v18, v15);
  v28 = sub_71178C(&qword_9635A0, type metadata accessor for InteractiveProductReviewsShelfScrollObserver, &unk_7B13F0);
  *(v25 + 2) = v27 + 1;
  v29 = &v25[2 * v27];
  *(v29 + 4) = v23;
  *(v29 + 5) = v28;
  return v25;
}

uint64_t sub_70BE7C(uint64_t a1)
{
  v2 = sub_75D3C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75D400();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  sub_75D3D0();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_31D6C4();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

uint64_t sub_70C09C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v160 = a1;
  v144 = sub_768C60();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v141 = &v126 - v8;
  __chkstk_darwin(v9);
  v142 = &v126 - v10;
  v147 = sub_7656C0();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_764930();
  v159 = *(v152 - 8);
  __chkstk_darwin(v152);
  v136 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_BD88(&qword_945828, &unk_7AF320);
  __chkstk_darwin(v151);
  v155 = (&v126 - v13);
  v14 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v14 - 8);
  v150 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v148 = &v126 - v17;
  __chkstk_darwin(v18);
  v157 = &v126 - v19;
  v20 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v20 - 8);
  v138 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v153 = &v126 - v23;
  __chkstk_darwin(v24);
  v154 = &v126 - v25;
  v26 = sub_7649E0();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_BD88(&unk_94F1F0, &qword_782290);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v149 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v126 - v34;
  v36 = sub_75ECD0();
  v156 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = a5;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v39 = *(v31 + 8);
  v39(v35, v30);
  if ((*(v27 + 88))(v29, v26) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    return (*(v27 + 8))(v29, v26);
  }

  v137 = v39;
  (*(v27 + 96))(v29, v26);
  (*(v156 + 32))(v38, v29, v36);
  v40 = sub_75ECC0();
  v41 = sub_75EC80();
  v42 = sub_75EC90();
  v44 = v43;
  v132 = sub_75ECB0();
  v131 = v45;
  v127 = sub_BD88(&unk_93F5C0, &unk_77C600);
  v46 = swift_allocObject();
  v126 = xmmword_77D9F0;
  *(v46 + 16) = xmmword_77D9F0;
  *(v46 + 32) = v40;
  v139 = v40;

  v135 = v41;
  v128 = sub_117528(v41, v46);

  v47 = v148;
  v48 = v150;
  sub_75DA50();
  sub_10A2C(v47, &qword_963790, qword_77EBC0);
  v49 = v48;
  v50 = v157;
  sub_2C88C(v49, v157);
  v51 = (*(v31 + 48))(v50, 1, v30);
  v130 = v36;
  v129 = v38;
  v134 = v42;
  v133 = v44;
  if (v51 == 1)
  {
    sub_10A2C(v157, &qword_963790, qword_77EBC0);
    v52 = 1;
    v53 = v154;
  }

  else
  {
    swift_getKeyPath();
    v53 = v154;
    v55 = v157;
    sub_768750();

    v137(v55, v30);
    v52 = 0;
  }

  v56 = *(v159 + 7);
  v57 = v152;
  v56(v53, v52, 1, v152);
  v58 = v149;
  sub_75DAA0();
  swift_getKeyPath();
  v59 = v153;
  sub_768750();
  v60 = v59;

  v61 = v30;
  v62 = v57;
  v137(v58, v61);
  v56(v59, 0, 1, v57);
  v63 = *(v151 + 48);
  v64 = v155;
  sub_2C8FC(v53, v155);
  sub_2C8FC(v59, v64 + v63);
  v65 = *(v159 + 6);
  v66 = v65(v64, 1, v62);
  v67 = v135;
  v68 = v135 >> 62;
  if (v66 == 1)
  {
    sub_10A2C(v60, &qword_951BE0, &unk_782280);
    v69 = v155;
    sub_10A2C(v53, &qword_951BE0, &unk_782280);
    v70 = v65(v69 + v63, 1, v62);
    v71 = v139;
    if (v70 == 1)
    {
      sub_10A2C(v69, &qword_951BE0, &unk_782280);
LABEL_22:
      LODWORD(v77) = 0;
      v76 = v147;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v72 = v138;
  sub_2C8FC(v64, v138);
  if (v65(v64 + v63, 1, v62) == 1)
  {
    sub_10A2C(v153, &qword_951BE0, &unk_782280);
    v69 = v155;
    sub_10A2C(v154, &qword_951BE0, &unk_782280);
    (*(v159 + 1))(v72, v62);
    v71 = v139;
LABEL_11:
    sub_10A2C(v69, &qword_945828, &unk_7AF320);
    goto LABEL_12;
  }

  v78 = v159;
  v79 = v64 + v63;
  v80 = v136;
  (*(v159 + 4))(v136, v79, v62);
  sub_71178C(&qword_944DC0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v81 = v64;
  v82 = sub_7691C0();
  v83 = *(v78 + 1);
  v83(v80, v62);
  sub_10A2C(v153, &qword_951BE0, &unk_782280);
  sub_10A2C(v154, &qword_951BE0, &unk_782280);
  v83(v72, v62);
  sub_10A2C(v81, &qword_951BE0, &unk_782280);
  v71 = v139;
  if (v82)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (!v68)
  {
    result = *(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_14;
    }

LABEL_24:

    goto LABEL_25;
  }

  result = sub_76A860();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_14:
  v73 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v67 & 0xC000000000000001) == 0)
  {
    if ((v73 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v73 < *(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)))
    {
      v74 = *(v67 + 8 * v73 + 32);

      *&v162 = v71;
      if (v74)
      {
        goto LABEL_19;
      }

LABEL_25:

      v76 = v147;
      goto LABEL_26;
    }

    __break(1u);
    return result;
  }

  v74 = sub_76A770();
  *&v162 = v71;
  if (!v74)
  {
    goto LABEL_25;
  }

LABEL_19:
  *&v161[0] = v74;
  sub_75A360();
  sub_71178C(&qword_945840, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  v75 = sub_7691C0();

  v76 = v147;
  if ((v75 & 1) == 0)
  {
LABEL_26:
    LODWORD(v77) = v128 ^ 1;
    goto LABEL_27;
  }

  LODWORD(v77) = 0;
LABEL_27:
  v84 = v145;
  sub_75DA20();
  sub_765580();
  v86 = v85;
  (*(v146 + 8))(v84, v76);
  v87 = sub_75DA30();
  v88 = type metadata accessor for SnapshotPageTraitEnvironment();
  v89 = objc_allocWithZone(v88);
  v90 = &v89[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v90 = v86;
  *(v90 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v89[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v87;
  v164.receiver = v89;
  v164.super_class = v88;
  v91 = objc_msgSendSuper2(&v164, "init");
  if (v77)
  {
    v92 = 0;
    v93 = v134;
    v94 = v133;
  }

  else
  {
    v94 = v133;
    if (v68)
    {
      v95 = sub_76A860();
    }

    else
    {
      v95 = *(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8));
    }

    v93 = v134;
    if (v95 <= 1)
    {
      v92 = 0;
    }

    else
    {

      v67 = swift_allocObject();
      *(v67 + 16) = v126;
      *(v67 + 32) = v71;

      v92 = 1;
    }
  }

  v96 = sub_4C4F08(v67);

  v97 = v92 == 0;
  if (v92)
  {
    v98 = v93;
  }

  else
  {
    v98 = v132;
  }

  if (v97)
  {
    v99 = v131;
  }

  else
  {
    v99 = v94;
  }

  v100 = &v160[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_text];
  *v100 = v98;
  *(v100 + 1) = v99;

  *&v162 = _swiftEmptyArrayStorage;
  v101 = *(v96 + 2);
  if (v101)
  {
    v102 = 0;
    v103 = (v96 + 7);
    v154 = v101 - 1;
    v158 = v91;
    v159 = _swiftEmptyArrayStorage;
    LODWORD(v157) = v77;
    v155 = v96 + 7;
    while (1)
    {
      v91 = (v103 + 32 * v102);
      v77 = v102;
      while (1)
      {
        if (v77 >= *(v96 + 2))
        {
          __break(1u);
          goto LABEL_68;
        }

        v104 = sub_769210();
        v105 = [objc_opt_self() _systemImageNamed:v104];

        if (v105)
        {
          break;
        }

LABEL_44:
        ++v77;
        v91 += 32;
        if (v101 == v77)
        {
          v91 = v158;
          LOBYTE(v77) = v157;
          goto LABEL_57;
        }
      }

      if (qword_93D218 != -1)
      {
        swift_once();
      }

      v106 = [v105 imageWithTintColor:qword_99DFB8];

      if (!v106)
      {
        goto LABEL_44;
      }

      sub_769440();
      if (*(&dword_10 + (v162 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v162 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      v102 = v77 + 1;
      sub_769500();
      v159 = v162;
      v103 = v155;
      v97 = v154 == v77;
      v91 = v158;
      LOBYTE(v77) = v157;
      if (v97)
      {
        goto LABEL_57;
      }
    }
  }

  v159 = _swiftEmptyArrayStorage;
LABEL_57:
  v107 = OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images;
  v108 = v160;
  *&v160[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_images] = v159;

  v109 = *&v108[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_accessoryImageView];
  if (v77)
  {
    if (qword_93D220 != -1)
    {
      swift_once();
    }

    v110 = qword_956E70;
  }

  else
  {
    v110 = 0;
  }

  [v109 setImage:v110];

  v111 = *&v160[v107];
  if (v111)
  {
    if (v111 >> 62)
    {
LABEL_68:
      v112 = sub_76A860();
    }

    else
    {
      v112 = *(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8));
    }
  }

  else
  {
    v112 = 0;
  }

  v113 = v160;
  *&v160[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_numberOfBadges] = v112;
  *&v113[OBJC_IVAR____TtC18ASMessagesProvider20PlatformSelectorView_pageTraits] = v91;
  swift_unknownObjectRelease();
  v159 = v91;
  sub_4C3A90();
  [v113 setNeedsLayout];
  v162 = 0u;
  v163 = 0u;
  memset(v161, 0, sizeof(v161));
  v114 = v140;
  sub_768BD0();
  sub_10A2C(v161, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v162, &unk_93FBD0, &qword_77DFA0);
  *&v162 = v96;
  *(&v162 + 1) = sub_4C47E8;
  *&v163 = 0;

  sub_BD88(&qword_945848, &unk_785750);
  sub_11ABC8();
  v115 = sub_7691A0();
  v117 = v116;

  *(&v163 + 1) = &type metadata for String;
  *&v162 = v115;
  *(&v162 + 1) = v117;
  v118 = v141;
  sub_768C40();
  v119 = *(v143 + 8);
  v120 = v114;
  v121 = v144;
  v119(v120, v144);
  sub_10A2C(&v162, &unk_93FBD0, &qword_77DFA0);
  *&v162 = v96;
  *(&v162 + 1) = sub_4C47F4;
  *&v163 = 0;
  v122 = sub_7691A0();
  v124 = v123;

  *(&v163 + 1) = &type metadata for String;
  *&v162 = v122;
  *(&v162 + 1) = v124;
  v125 = v142;
  sub_768C40();
  v119(v118, v121);
  sub_10A2C(&v162, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v119(v125, v121);
  return (*(v156 + 8))(v129, v130);
}

uint64_t sub_70D3AC(uint64_t a1, void *a2)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D638 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  sub_BE38(v8, qword_99EAA0);
  v9 = [a2 traitCollection];
  v10 = sub_769E10();

  v18[1] = sub_BE70(0, &qword_9562D0, NSAttributedString_ptr);

  v18[0] = [a2 traitCollection];
  if (qword_93D228 != -1)
  {
    swift_once();
  }

  v11 = sub_761CE0();
  sub_BE38(v11, qword_956E78);
  sub_761CD0();
  v12 = v20;
  sub_B170(v19, v20);
  sub_33964(v12);
  sub_766700();
  (*(v4 + 8))(v6, v3);
  sub_BD88(&qword_940F40, &qword_785F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v10;
  v14 = NSFontAttributeName;
  v15 = v10;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_10A2C(inited + 32, qword_940F50, &qword_785170);
  v16 = sub_769A70();

  sub_BEB8(v19);
  return v16;
}

id sub_70D6A8(void *a1, __n128 a2)
{
  v217 = sub_761CE0();
  v189 = *(v217 - 8);
  __chkstk_darwin(v217);
  v202 = v174 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_761D00();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v205 = v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_760AD0();
  v200 = *(v187 - 8);
  __chkstk_darwin(v187);
  v188 = v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v199 = v174 - v7;
  v204 = sub_75C420();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v198 = v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v201 = v174 - v10;
  __chkstk_darwin(v11);
  v197 = v174 - v12;
  v196 = sub_76A920();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_7656C0();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_759DA0();
  v218 = *(v220 - 8);
  __chkstk_darwin(v220);
  v190 = v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v219 = v174 - v17;
  v216 = sub_764930();
  v224 = *(v216 - 1);
  __chkstk_darwin(v216);
  v180 = v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_BD88(&qword_945828, &unk_7AF320);
  __chkstk_darwin(v212);
  v215 = v174 - v19;
  v20 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v20 - 8);
  v210 = v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v208 = v174 - v23;
  __chkstk_darwin(v24);
  v211 = v174 - v25;
  v26 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v26 - 8);
  v182 = v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v213 = v174 - v29;
  __chkstk_darwin(v30);
  v214 = v174 - v31;
  v32 = sub_7649E0();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = v174 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_BD88(&unk_94F1F0, &qword_782290);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v209 = v174 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = v174 - v40;
  v222 = sub_75ECD0();
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v43 = v174 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v44 = *(v37 + 8);
  v44(v41, v36);
  if ((*(v33 + 88))(v35, v32) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v33 + 8))(v35, v32);
    return 0;
  }

  v181 = v44;
  (*(v33 + 96))(v35, v32);
  (*(v221 + 32))(v43, v35, v222);
  v45 = sub_75ECC0();
  v46 = sub_75EC80();
  v184 = v46;
  v176 = sub_75EC90();
  v179 = v47;
  v186 = v43;
  v178 = sub_75ECB0();
  v183 = v48;
  v174[1] = sub_BD88(&unk_93F5C0, &unk_77C600);
  v49 = swift_allocObject();
  v175 = xmmword_77D9F0;
  *(v49 + 16) = xmmword_77D9F0;
  *(v49 + 32) = v45;
  v185 = v45;

  v177 = sub_117528(v46, v49);

  v50 = v208;
  v51 = v210;
  sub_75DA50();
  sub_10A2C(v50, &qword_963790, qword_77EBC0);
  v52 = v211;
  sub_2C88C(v51, v211);
  if ((*(v37 + 48))(v52, 1, v36) == 1)
  {
    sub_10A2C(v52, &qword_963790, qword_77EBC0);
    v53 = 1;
    v54 = v214;
  }

  else
  {
    swift_getKeyPath();
    v54 = v214;
    sub_768750();

    v181(v52, v36);
    v53 = 0;
  }

  v56 = v224[7];
  v57 = v216;
  v56(v54, v53, 1, v216);
  v58 = v209;
  sub_75DAA0();
  swift_getKeyPath();
  v59 = v213;
  sub_768750();

  v60 = v36;
  v61 = v59;
  v181(v58, v60);
  v56(v59, 0, 1, v57);
  v62 = *(v212 + 48);
  v63 = v215;
  sub_2C8FC(v54, v215);
  sub_2C8FC(v59, v63 + v62);
  v64 = v224[6];
  if (v64(v63, 1, v57) == 1)
  {
    sub_10A2C(v61, &qword_951BE0, &unk_782280);
    sub_10A2C(v54, &qword_951BE0, &unk_782280);
    if (v64(v63 + v62, 1, v57) == 1)
    {
      sub_10A2C(v63, &qword_951BE0, &unk_782280);
LABEL_23:
      v77 = 0;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v65 = v182;
  sub_2C8FC(v63, v182);
  if (v64(v63 + v62, 1, v57) == 1)
  {
    sub_10A2C(v61, &qword_951BE0, &unk_782280);
    sub_10A2C(v54, &qword_951BE0, &unk_782280);
    (v224[1])(v65, v57);
LABEL_11:
    sub_10A2C(v63, &qword_945828, &unk_7AF320);
    v66 = v184;
    goto LABEL_12;
  }

  v72 = v224;
  v73 = v63 + v62;
  v74 = v180;
  (v224[4])(v180, v73, v57);
  sub_71178C(&qword_944DC0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v75 = sub_7691C0();
  v76 = v72[1];
  v76(v74, v57);
  sub_10A2C(v61, &qword_951BE0, &unk_782280);
  sub_10A2C(v54, &qword_951BE0, &unk_782280);
  v76(v65, v57);
  sub_10A2C(v63, &qword_951BE0, &unk_782280);
  v66 = v184;
  if (v75)
  {
    goto LABEL_23;
  }

LABEL_12:
  if (v66 >> 62)
  {
    v67 = sub_76A860();
  }

  else
  {
    v67 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
  }

  v68 = v185;
  if (!v67)
  {

    v229[0] = v68;
    goto LABEL_25;
  }

  v69 = v67 - 1;
  if (__OFSUB__(v67, 1))
  {
    __break(1u);
  }

  else if ((v66 & 0xC000000000000001) == 0)
  {
    if ((v69 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v69 < *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8)))
    {
      v70 = *(v66 + 8 * v69 + 32);

      v229[0] = v68;
      if (v70)
      {
        goto LABEL_20;
      }

LABEL_25:

      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_71;
  }

  v70 = sub_76A770();
  v229[0] = v68;
  if (!v70)
  {
    goto LABEL_25;
  }

LABEL_20:
  v226 = v70;
  sub_75A360();
  sub_71178C(&qword_945840, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  v71 = sub_7691C0();

  if (v71)
  {
    goto LABEL_23;
  }

LABEL_26:
  v77 = v177 ^ 1;
LABEL_27:
  v78 = v219;
  sub_75ECA0();
  v79 = v218;
  v80 = v190;
  v81 = v78;
  v82 = v220;
  (*(v218 + 16))(v190, v81, v220);
  v83 = (*(v79 + 88))(v80, v82);
  if (v83 == enum case for ProductMedia.DescriptionPlacement.top(_:))
  {
    v84 = v191;
    sub_75DA20();
    sub_765580();
    v86 = v85;
    v87 = *(v192 + 8);
    v88 = v193;
    v87(v84, v193);
    v89 = sub_75DA30();
    v90 = type metadata accessor for SnapshotPageTraitEnvironment();
    v91 = objc_allocWithZone(v90);
    v92 = &v91[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
    *v92 = v86;
    *(v92 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v91[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v89;
    v225.receiver = v91;
    v225.super_class = v90;
    v224 = objc_msgSendSuper2(&v225, "init");
    sub_75DA60();
    sub_765BE0();
    sub_765630();
    v87(v84, v88);
    if ((v77 & 1) == 0)
    {
      v69 = v188;
      if (v184 >> 62)
      {
        v104 = sub_76A860();
      }

      else
      {
        v104 = *(&dword_10 + (v184 & 0xFFFFFFFFFFFFFF8));
      }

      if (v104 > 1)
      {

        sub_75A360();
        v105 = swift_allocObject();
        *(v105 + 16) = v175;
        *(v105 + 32) = v185;

        v106 = sub_75A320();
        v178 = v176;
LABEL_41:

        if (qword_93D228 != -1)
        {
          swift_once();
        }

        v107 = sub_BE38(v217, qword_956E78);
        sub_761CD0();
        v108 = v230;
        sub_B170(v229, v230);
        v109 = v194;
        sub_33964(v108);
        sub_766700();
        v111 = v110;
        (*(v195 + 8))(v109, v196);
        sub_4C4E08(v106, v111);
        sub_BEB8(v229);
        if (v106 >> 62)
        {
          sub_76A860();
        }

        v112 = v189;
        v113 = v187;

        v114 = v224;
        sub_75C410();
        v115 = sub_70D3AC(v106, v114);

        v223 = v115;
        v116 = sub_761C90();
        if (qword_93D638 != -1)
        {
          swift_once();
        }

        v117 = sub_7666D0();
        v118 = sub_BE38(v117, qword_99EAA0);
        v119 = *(v117 - 8);
        v120 = v199;
        (*(v119 + 16))(v199, v118, v117);
        (*(v119 + 56))(v120, 0, 1, v117);
        (*(v200 + 104))(v69, enum case for DirectionalTextAlignment.none(_:), v113);
        v121 = sub_75BB20();
        v122 = objc_allocWithZone(v121);
        v123 = sub_75BB10();
        [v123 setAttributedText:v116];
        v216 = v116;
        if (qword_93D220 != -1)
        {
          swift_once();
        }

        [qword_956E70 size];
        v124 = sub_7670D0();
        swift_allocObject();
        v125 = sub_7670B0();
        (*(v112 + 16))(v202, v107, v217);
        v126 = v203;
        v127 = v197;
        v128 = v204;
        (*(v203 + 16))(v201, v197, v204);
        v230 = v121;
        v231 = &protocol witness table for UILabel;
        v229[0] = v123;
        v227 = v124;
        v228 = &protocol witness table for LayoutViewPlaceholder;
        v226 = v125;
        v129 = v123;

        v130 = v205;
        sub_761CF0();
        v131 = v224;
        [v224 pageMarginInsets];
        sub_769DA0();
        sub_71178C(&qword_945838, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
        v132 = v207;
        sub_7665A0();
        sub_769DC0();
        v134 = v133;

        (*(v206 + 8))(v130, v132);
        (*(v126 + 8))(v127, v128);

        v135 = objc_opt_self();
        v136 = [v135 fractionalWidthDimension:1.0];
        v137 = [v135 absoluteDimension:v134];
        v138 = [objc_opt_self() sizeWithWidthDimension:v136 heightDimension:v137];

        v139 = sub_769210();
        v140 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v138 elementKind:v139 alignment:1];
LABEL_64:
        v173 = v140;

        (*(v218 + 8))(v219, v220);
        (*(v221 + 8))(v186, v222);
        return v173;
      }

LABEL_40:
      sub_75A360();
      v106 = sub_75A320();
      goto LABEL_41;
    }

    v69 = v188;
    if (qword_93D220 == -1)
    {
LABEL_30:
      [qword_956E70 size];
      goto LABEL_40;
    }

LABEL_71:
    swift_once();
    goto LABEL_30;
  }

  if (v83 == enum case for ProductMedia.DescriptionPlacement.bottom(_:))
  {
    v93 = v191;
    sub_75DA20();
    sub_765580();
    v95 = v94;
    v96 = *(v192 + 8);
    v97 = v193;
    v96(v93, v193);
    v98 = sub_75DA30();
    v99 = type metadata accessor for SnapshotPageTraitEnvironment();
    v100 = objc_allocWithZone(v99);
    v101 = &v100[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
    *v101 = v95;
    *(v101 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v100[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v98;
    v232.receiver = v100;
    v232.super_class = v99;
    v102 = objc_msgSendSuper2(&v232, "init");
    sub_75DA60();
    sub_765BE0();
    sub_765630();
    v96(v93, v97);
    if (v77)
    {
      v103 = v188;
      if (qword_93D220 != -1)
      {
        swift_once();
      }

      [qword_956E70 size];
    }

    else
    {
      v103 = v188;
      if (v184 >> 62)
      {
        v141 = sub_76A860();
      }

      else
      {
        v141 = *(&dword_10 + (v184 & 0xFFFFFFFFFFFFFF8));
      }

      if (v141 > 1)
      {

        sub_75A360();
        v142 = swift_allocObject();
        *(v142 + 16) = v175;
        *(v142 + 32) = v185;

        v143 = sub_75A320();
        v178 = v176;
LABEL_55:

        if (qword_93D228 != -1)
        {
          swift_once();
        }

        v144 = sub_BE38(v217, qword_956E78);
        sub_761CD0();
        v145 = v230;
        sub_B170(v229, v230);
        v146 = v194;
        sub_33964(v145);
        sub_766700();
        v148 = v147;
        (*(v195 + 8))(v146, v196);
        sub_4C4E08(v143, v148);
        sub_BEB8(v229);
        if (v143 >> 62)
        {
          sub_76A860();
        }

        v149 = v189;
        v150 = v187;

        sub_75C410();
        v151 = sub_70D3AC(v143, v102);

        v216 = v151;
        v224 = sub_761C90();
        if (qword_93D638 != -1)
        {
          swift_once();
        }

        v223 = v102;
        v152 = sub_7666D0();
        v153 = sub_BE38(v152, qword_99EAA0);
        v154 = *(v152 - 8);
        v155 = v199;
        (*(v154 + 16))(v199, v153, v152);
        (*(v154 + 56))(v155, 0, 1, v152);
        (*(v200 + 104))(v103, enum case for DirectionalTextAlignment.none(_:), v150);
        v156 = sub_75BB20();
        v157 = objc_allocWithZone(v156);
        v158 = sub_75BB10();
        [v158 setAttributedText:v224];
        if (qword_93D220 != -1)
        {
          swift_once();
        }

        [qword_956E70 size];
        v159 = sub_7670D0();
        swift_allocObject();
        v160 = sub_7670B0();
        (*(v149 + 16))(v202, v144, v217);
        v161 = v203;
        v162 = v198;
        v163 = v204;
        (*(v203 + 16))(v201, v198, v204);
        v230 = v156;
        v231 = &protocol witness table for UILabel;
        v229[0] = v158;
        v227 = v159;
        v228 = &protocol witness table for LayoutViewPlaceholder;
        v226 = v160;
        v164 = v158;

        v165 = v205;
        sub_761CF0();
        v166 = v223;
        [v223 pageMarginInsets];
        sub_769DA0();
        sub_71178C(&qword_945838, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
        v167 = v207;
        sub_7665A0();
        sub_769DC0();
        v169 = v168;

        (*(v206 + 8))(v165, v167);
        (*(v161 + 8))(v162, v163);

        v170 = objc_opt_self();
        v171 = [v170 fractionalWidthDimension:1.0];
        v172 = [v170 absoluteDimension:v169];
        v138 = [objc_opt_self() sizeWithWidthDimension:v171 heightDimension:v172];

        v139 = sub_769210();
        v140 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v138 elementKind:v139 alignment:5];
        goto LABEL_64;
      }
    }

    sub_75A360();
    v143 = sub_75A320();
    goto LABEL_55;
  }

  v229[0] = 0;
  v229[1] = 0xE000000000000000;
  sub_76A730(25);
  v233._object = 0x80000000007F2AA0;
  v233._countAndFlagsBits = 0xD000000000000016;
  sub_769370(v233);
  sub_76A7F0();
  v234._countAndFlagsBits = 46;
  v234._object = 0xE100000000000000;
  sub_769370(v234);
  result = sub_76A840();
  __break(1u);
  return result;
}

id sub_70F7FC(void *a1, void *a2, __n128 a3)
{
  v109 = a2;
  v4 = sub_75B660();
  v115 = *(v4 - 8);
  v116 = v4;
  __chkstk_darwin(v4);
  v114 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v113 = &v108 - v7;
  v121 = sub_BD88(&qword_93F918, &unk_7926C0);
  __chkstk_darwin(v121);
  v124 = &v108 - v8;
  v9 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v9 - 8);
  v118 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v117 = &v108 - v12;
  __chkstk_darwin(v13);
  v15 = &v108 - v14;
  v16 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v16 - 8);
  v112 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v111 = &v108 - v19;
  __chkstk_darwin(v20);
  v128 = &v108 - v21;
  v22 = sub_BD88(&unk_94F1F0, &qword_782290);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v119 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v108 - v26;
  v28 = sub_764930();
  v126 = *(v28 - 8);
  v127 = v28;
  __chkstk_darwin(v28);
  v120 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v110 = &v108 - v31;
  __chkstk_darwin(v32);
  v34 = &v108 - v33;
  v35 = objc_opt_self();
  v36 = [v35 fractionalWidthDimension:1.0];
  v37 = sub_75DA30();
  sub_75D3F0();
  v39 = v38;

  v40 = [v35 absoluteDimension:v39];
  v122 = [objc_opt_self() sizeWithWidthDimension:v36 heightDimension:v40];

  sub_75DAA0();
  swift_getKeyPath();
  v125 = v34;
  sub_768750();

  v41 = *(v23 + 8);
  v41(v27, v22);
  v43 = v117;
  v42 = v118;
  v123 = a1;
  sub_75DA50();
  sub_10A2C(v42, &qword_963790, qword_77EBC0);
  sub_2C88C(v43, v15);
  if ((*(v23 + 48))(v15, 1, v22) == 1)
  {
    sub_10A2C(v15, &qword_963790, qword_77EBC0);
    v44 = 1;
    v45 = v128;
  }

  else
  {
    swift_getKeyPath();
    v46 = v128;
    sub_768750();

    v41(v15, v22);
    v44 = 0;
    v45 = v46;
  }

  v47 = v126;
  (*(v126 + 56))(v45, v44, 1, v127);
  v48 = v119;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v41(v48, v22);
  v49 = v130;
  v50 = v120;
  if (v130)
  {
    v51 = v129;

    v52 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v52 = v51 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v119) = v52 != 0;
  }

  else
  {
    LODWORD(v119) = 0;
  }

  v53 = *(v121 + 48);
  v54 = v124;
  v55 = v127;
  (*(v47 + 16))(v124, v125, v127);
  sub_2C8FC(v128, v54 + v53);
  v56 = *(v47 + 88);
  v57 = v56(v54, v55);
  if (v57 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    sub_75DAA0();
    swift_getKeyPath();
    v58 = v53;
    v59 = v113;
    sub_768750();
    v54 = v124;

    v41(v27, v22);
    v61 = v114;
    v60 = v115;
    v62 = v116;
    (*(v115 + 104))(v114, enum case for ShelfBackground.editorsChoice(_:), v116);
    v63 = sub_75B650();
    v64 = *(v60 + 8);
    v64(v61, v62);
    v65 = v59;
    v53 = v58;
    v64(v65, v62);
    if (v63)
    {

      sub_10A2C(v128, &qword_951BE0, &unk_782280);
      v66 = *(v126 + 8);
      v67 = v127;
      v66(v125, v127);
      sub_10A2C(v54 + v58, &qword_951BE0, &unk_782280);
      v66(v54, v67);
      return 0;
    }

LABEL_15:
    v74 = v126;
    v75 = v127;
    if ((*(v126 + 48))(v54 + v53, 1, v127) == 1)
    {

      sub_10A2C(v128, &qword_951BE0, &unk_782280);
      (*(v74 + 8))(v125, v75);
    }

    else
    {
      v76 = v112;
      sub_2C8FC(v54 + v53, v112);
      if (v56(v76, v75) == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        v77 = v126;
        if ((v119 & 1) == 0)
        {
          type metadata accessor for SeparatorSupplementaryView(0);
          sub_769BC0();
          sub_B170(v109, v109[3]);
          sub_761DF0();
          v83 = v82 * 0.5;
          v84 = sub_769210();

          v85 = objc_opt_self();
          v86 = v122;
          v87 = [v85 boundarySupplementaryItemWithLayoutSize:v122 elementKind:v84 alignment:1 absoluteOffset:{0.0, v83}];

          sub_10A2C(v128, &qword_951BE0, &unk_782280);
          v88 = *(v77 + 8);
          v88(v125, v75);
          sub_10A2C(v54 + v53, &qword_951BE0, &unk_782280);
          v88(v54, v75);
          return v87;
        }

        sub_10A2C(v128, &qword_951BE0, &unk_782280);
        (*(v77 + 8))(v125, v75);
      }

      else
      {

        sub_10A2C(v128, &qword_951BE0, &unk_782280);
        v81 = *(v126 + 8);
        v81(v125, v75);
        v81(v76, v75);
      }
    }

    sub_10A2C(v54, &qword_93F918, &unk_7926C0);
    return 0;
  }

  if (v57 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    goto LABEL_15;
  }

  v68 = v57;
  v69 = v128;
  v70 = v111;
  sub_2C8FC(v128, v111);
  v72 = v126;
  v71 = v127;
  if ((*(v126 + 48))(v70, 1, v127) == 1)
  {

    sub_10A2C(v69, &qword_951BE0, &unk_782280);
    v73 = *(v72 + 8);
    v73(v125, v71);
    sub_10A2C(v70, &qword_951BE0, &unk_782280);
LABEL_27:
    sub_10A2C(v54 + v53, &qword_951BE0, &unk_782280);
    v73(v54, v71);
    return 0;
  }

  v78 = v71;
  v79 = v110;
  (*(v72 + 32))(v110, v70, v78);
  v121 = *(v72 + 104);
  (v121)(v50, v68, v78);
  sub_71178C(&qword_944DC0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v80 = sub_7691C0();
  v73 = *(v72 + 8);
  v73(v50, v78);
  if (v80 & 1) != 0 || ((v121)(v50, enum case for Shelf.ContentType.productBadge(_:), v78), v90 = sub_7691C0(), v73(v50, v78), v91 = v79, (v90))
  {

    v73(v79, v78);
    sub_10A2C(v128, &qword_951BE0, &unk_782280);
    v73(v125, v78);
    v54 = v124;
    v71 = v78;
    goto LABEL_27;
  }

  v54 = v124;
  if (qword_93E208 != -1)
  {
    swift_once();
  }

  v92 = sub_666CB0(v79, qword_9A0940);
  v71 = v78;
  if ((v92 & 1) == 0)
  {

    v73(v91, v78);
    sub_10A2C(v128, &qword_951BE0, &unk_782280);
    v73(v125, v78);
    goto LABEL_27;
  }

  v94 = v109;
  v95 = sub_70D6A8(v123, v93);
  if (v95)
  {
    v96 = v95;
    v97 = 0.0;
    if ([v95 alignment] == &dword_0 + 1)
    {
      v98 = [v96 layoutSize];
      v99 = [v98 heightDimension];

      [v99 dimension];
      v97 = v100;
    }
  }

  else
  {
    v97 = 0.0;
  }

  type metadata accessor for SeparatorSupplementaryView(0);
  sub_769BC0();
  sub_B170(v94, v94[3]);
  sub_761DF0();
  v102 = -(v97 + v101);
  v103 = sub_769210();

  v104 = objc_opt_self();
  v105 = v122;
  v106 = [v104 boundarySupplementaryItemWithLayoutSize:v122 elementKind:v103 alignment:1 absoluteOffset:{0.0, v102}];

  v73(v91, v71);
  sub_10A2C(v128, &qword_951BE0, &unk_782280);
  v73(v125, v71);
  v107 = v124;
  sub_10A2C(&v124[v53], &qword_951BE0, &unk_782280);
  v73(v107, v71);
  return v106;
}

uint64_t sub_7106D8(uint64_t a1, __n128 a2)
{
  v31 = sub_75A430();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_BD88(&unk_94F1F0, &qword_782290);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v34 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  v37 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v35 = *(v12 + 8);
  v36 = v12 + 8;
  v35(v19, v11);
  (*(v5 + 104))(v7, enum case for Shelf.ContentType.productReview(_:), v4);
  sub_71178C(&qword_942D68, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v38 == v39)
  {
    v20 = *(v5 + 8);
    v20(v7, v4);
    v20(v10, v4);
  }

  else
  {
    v21 = sub_76A950();
    v22 = *(v5 + 8);
    v22(v7, v4);
    v22(v10, v4);

    result = 0;
    if ((v21 & 1) == 0)
    {
      return result;
    }
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v24 = v35;
  v35(v16, v11);
  result = *(&v38 + 1);
  if (*(&v38 + 1))
  {

    v25 = v34;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v24(v25, v11);
    if (*(v39 + 16))
    {
      sub_134D8(v39 + 32, &v38);

      sub_BD88(&unk_944DA0, &unk_77EB70);
      sub_75A450();
      if (swift_dynamicCast())
      {
        v26 = v32;
        sub_75A440();

        v27 = v33;
        v28 = v31;
        v29 = (*(v33 + 88))(v26, v31) != enum case for ProductReview.ReviewSource.editorsChoice(_:);
        (*(v27 + 8))(v26, v28);
        return v29;
      }
    }

    else
    {
    }

    return 1;
  }

  return result;
}

id sub_710C04(uint64_t a1, __n128 a2)
{
  v3 = sub_7649E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_94F1F0, &qword_782290);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_75FF30();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_7106D8(a1, v13);
  result = 0;
  if (v16)
  {
    v25 = v12;
    v26 = v11;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    (*(v8 + 8))(v10, v7);
    if ((*(v4 + 88))(v6, v3) == enum case for Shelf.ContentsMetadata.productReviews(_:))
    {
      (*(v4 + 96))(v6, v3);
      v19 = v25;
      v18 = v26;
      (*(v25 + 32))(v15, v6, v26);
      if (sub_75FF10())
      {
        type metadata accessor for InteractiveProductReviewsShelfHeaderView();
        v20 = sub_2A7D30(v15);
        sub_769BC0();
        v21 = sub_769210();

        v22 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v20 elementKind:v21 alignment:1];

        (*(v19 + 8))(v15, v18);
        return v22;
      }

      (*(v19 + 8))(v15, v18);
    }

    else
    {
      (*(v4 + 8))(v6, v3);
    }

    type metadata accessor for ProductReviewsShelfHeaderView();
    v23 = sub_53B4CC(a1, 0, 0);
    sub_769BC0();
    v24 = sub_769210();

    v22 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v23 elementKind:v24 alignment:1];

    return v22;
  }

  return result;
}

uint64_t sub_7110A4()
{
  v1 = sub_75DAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_71112C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_75DAB0() - 8);
  v10 = (v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)));

  return sub_70C09C(a1, a2, a3, a4, v10);
}

uint64_t sub_7111E8(void *a1, uint64_t a2)
{
  v56 = a1;
  v3 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v3 - 8);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v46 - v6;
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = sub_764930();
  v57 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  v22 = sub_BD88(&unk_94F1F0, &qword_782290);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v46 - v25;
  if (sub_7106D8(a2, v24))
  {
    v27 = 0;
    return v27 & 1;
  }

  v49 = v12;
  v50 = v15;
  v53 = v9;
  v51 = a2;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v28 = *(v23 + 8);
  v52 = v22;
  v48 = v28;
  v28(v26, v22);
  v29 = v57;
  (*(v57 + 104))(v18, enum case for Shelf.ContentType.productMediaItem(_:), v10);
  sub_71178C(&qword_942D68, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v60 == v58 && v61 == v59)
  {
    v30 = 1;
  }

  else
  {
    v30 = sub_76A950();
  }

  v31 = *(v29 + 8);
  v31(v18, v10);
  v47 = v31;
  v31(v21, v10);

  if ((v30 & 1) == 0)
  {
    goto LABEL_14;
  }

  v32 = [v56 elementKind];
  v33 = sub_769240();
  v35 = v34;

  if (v33 == sub_769240() && v35 == v36)
  {

    v38 = v52;
    v37 = v53;
    goto LABEL_12;
  }

  v39 = sub_76A950();

  v38 = v52;
  v37 = v53;
  if ((v39 & 1) == 0)
  {
LABEL_14:
    v27 = 1;
    return v27 & 1;
  }

LABEL_12:
  v41 = v54;
  v40 = v55;
  sub_75DA50();
  sub_10A2C(v40, &qword_963790, qword_77EBC0);
  sub_2C88C(v41, v37);
  if ((*(v23 + 48))(v37, 1, v38) == 1)
  {
    sub_10A2C(v37, &qword_963790, qword_77EBC0);
    goto LABEL_14;
  }

  swift_getKeyPath();
  v43 = v49;
  sub_768750();

  v48(v37, v38);
  v44 = v50;
  (*(v57 + 32))(v50, v43, v10);
  if (qword_93E208 != -1)
  {
    swift_once();
  }

  v45 = sub_666CB0(v44, qword_9A0940);
  v47(v44, v10);
  v27 = v45 ^ 1;
  return v27 & 1;
}

uint64_t sub_71178C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double *sub_7117E0(char *a1, int *a2)
{
  v60 = sub_BD88(&qword_945828, &unk_7AF320);
  __chkstk_darwin(v60);
  v61 = &v53 - v5;
  v6 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v6 - 8);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v53 - v9;
  __chkstk_darwin(v10);
  v59 = &v53 - v11;
  v12 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v12 - 8);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v53 - v15;
  __chkstk_darwin(v16);
  v63 = &v53 - v17;
  v18 = sub_764930();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v54 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = sub_BD88(&unk_94F1F0, &qword_782290);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v53 - v26;
  v55 = v2;
  v64 = sub_6C330C(a1, a2);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v28 = *(v25 + 8);
  v28(v27, v24);
  v29 = v19;
  v30 = (*(v19 + 88))(v23, v18);
  if (v30 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v32 = v57;
    v31 = v58;
    sub_75DA50();
    sub_10A2C(v32, &qword_963790, qword_77EBC0);
    v33 = v59;
    sub_2C88C(v31, v59);
    v34 = (*(v25 + 48))(v33, 1, v24);
    v58 = a1;
    if (v34 == 1)
    {
      sub_10A2C(v33, &qword_963790, qword_77EBC0);
      v35 = 1;
      v36 = v29;
      v37 = v63;
    }

    else
    {
      swift_getKeyPath();
      v37 = v63;
      sub_768750();

      v28(v33, v24);
      v35 = 0;
      v36 = v29;
    }

    v38 = v62;
    v39 = *(v36 + 56);
    v39(v37, v35, 1, v18);
    (*(v36 + 104))(v38, enum case for Shelf.ContentType.reviewSummary(_:), v18);
    v39(v38, 0, 1, v18);
    v40 = v61;
    v41 = *(v60 + 48);
    sub_2C8FC(v37, v61);
    sub_2C8FC(v38, v40 + v41);
    v42 = *(v36 + 48);
    if (v42(v40, 1, v18) == 1)
    {
      sub_10A2C(v38, &qword_951BE0, &unk_782280);
      sub_10A2C(v37, &qword_951BE0, &unk_782280);
      if (v42(v40 + v41, 1, v18) == 1)
      {
        sub_10A2C(v40, &qword_951BE0, &unk_782280);
LABEL_17:
        v43 = 28.0;
        v44 = 12.0;
        v45 = v58;
        v46 = 5;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v47 = v56;
    sub_2C8FC(v40, v56);
    if (v42(v40 + v41, 1, v18) == 1)
    {
      sub_10A2C(v62, &qword_951BE0, &unk_782280);
      sub_10A2C(v63, &qword_951BE0, &unk_782280);
      (*(v36 + 8))(v47, v18);
LABEL_14:
      sub_10A2C(v40, &qword_945828, &unk_7AF320);
      return v64;
    }

    v48 = v40 + v41;
    v49 = v54;
    (*(v36 + 32))(v54, v48, v18);
    sub_1AAB98();
    v50 = sub_7691C0();
    v51 = *(v36 + 8);
    v51(v49, v18);
    sub_10A2C(v62, &qword_951BE0, &unk_782280);
    sub_10A2C(v63, &qword_951BE0, &unk_782280);
    v51(v47, v18);
    sub_10A2C(v40, &qword_951BE0, &unk_782280);
    if (v50)
    {
      goto LABEL_17;
    }
  }

  else if (v30 == enum case for Shelf.ContentType.productReview(_:))
  {
    sub_711F2C(&v64, a1);
  }

  else
  {
    if (v30 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      v43 = -24.0;
      v44 = -16.0;
      v45 = a1;
      v46 = 1;
LABEL_18:
      sub_71311C(&v64, v43, v44, v45, v46);
      return v64;
    }

    (*(v19 + 8))(v23, v18);
  }

  return v64;
}

void sub_711F2C(unint64_t *a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = sub_7629A0();

    if (v5)
    {
      v6 = sub_759660();
      Strong = v7;
    }

    else
    {
      v6 = 0;
      Strong = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  v8 = sub_53B4CC(a2, v6, Strong);

  sub_769BC0();
  v9 = sub_769210();

  v39 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v8 elementKind:v9 alignment:1];

  v10 = *a1;
  v37 = *a1 >> 62;
  v38 = a1;
  if (v37)
  {
    goto LABEL_48;
  }

  v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
LABEL_8:
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  while (v11 != v12)
  {
    if (v13)
    {
      v14 = sub_76A770();
    }

    else
    {
      if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_47;
      }

      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v11 = sub_76A860();
      goto LABEL_8;
    }

    v16 = [v14 elementKind];
    v17 = sub_769240();
    v19 = v18;

    if (v17 == sub_769240() && v19 == v20)
    {

LABEL_26:
      if (!v37)
      {
        v23 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
        v24 = v39;
        if (v23)
        {
          goto LABEL_28;
        }

LABEL_45:

        *v38 = _swiftEmptyArrayStorage;
        return;
      }

      v23 = sub_76A860();
      v24 = v39;
      if (!v23)
      {
        goto LABEL_45;
      }

LABEL_28:
      sub_76A7C0();
      if ((v23 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        do
        {
          if (v13)
          {
            v29 = sub_76A770();
          }

          else
          {
            v29 = *(v10 + 8 * v25 + 32);
          }

          v30 = v29;
          v31 = [v29 elementKind];
          v32 = sub_769240();
          v34 = v33;

          if (v32 == sub_769240() && v34 == v35)
          {

            v27 = v24;
          }

          else
          {
            v26 = sub_76A950();

            if (v26)
            {
              v27 = v24;
            }

            else
            {
              v27 = v30;
            }
          }

          ++v25;
          v28 = v27;

          sub_76A7A0();
          sub_76A7D0();
          sub_76A7E0();
          sub_76A7B0();
        }

        while (v23 != v25);
        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_50;
    }

    v22 = sub_76A950();

    ++v12;
    if (v22)
    {
      goto LABEL_26;
    }
  }

  v39 = v39;
  sub_769440();
  if (*(&dword_10 + (*v38 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (*v38 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_22;
  }

LABEL_50:
  sub_7694C0();
LABEL_22:
  sub_769500();
}

double sub_712368@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = a3;
  v9 = sub_75DAB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (sub_769BC0() == a1 && v13 == a2)
  {

LABEL_5:
    a5[3] = sub_BD88(&qword_94C620, &qword_7A9A10);
    a5[4] = sub_15D000(&qword_963780, &qword_94C620, &qword_7A9A10);
    sub_B1B4(a5);

    sub_769BD0();
LABEL_6:
    sub_763760();
    return result;
  }

  v24 = v10;
  v14 = sub_76A950();

  if (v14)
  {
    goto LABEL_5;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  if (sub_769BC0() == a1 && v16 == a2)
  {

LABEL_11:
    a5[3] = sub_BD88(&qword_9635A8, &qword_7AF7F0);
    a5[4] = sub_15D000(&unk_963770, &qword_9635A8, &qword_7AF7F0);
    v23[2] = sub_B1B4(a5);

    v23[1] = sub_769BD0();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = v24;
    (*(v24 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v9);
    v20 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    (*(v19 + 32))(v21 + v20, v12, v9);
    goto LABEL_6;
  }

  v17 = sub_76A950();

  if (v17)
  {
    goto LABEL_11;
  }

  v22 = v25;

  return sub_6BED78(a1, a2, v22, a4, a5);
}

uint64_t sub_7126B8(uint64_t a1)
{
  v2 = sub_75D3C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75D400();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  sub_75D3D0();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_31D6C4();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

double sub_7128D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong() && (v8 = sub_7629A0(), , v8))
    {
      v9 = sub_759660();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    if (swift_weakLoadStrong())
    {
      v12 = sub_7129E0();
    }

    else
    {
      v12 = 0;
    }

    sub_53A4CC(a6, v9, v11, v12);
  }

  return result;
}

Class sub_7129E0()
{
  v0 = sub_762980();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_36:
    v3 = sub_76A860();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        v5 = v4;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v6 = sub_76A770();
            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v5 >= *(v2 + 16))
            {
              goto LABEL_35;
            }

            v6 = *(v1 + 8 * v5 + 32);

            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          sub_764C60();
          if (v7)
          {
            break;
          }

          ++v5;
          if (v4 == v3)
          {
            goto LABEL_37;
          }
        }

        sub_764C50();
        v8 = swift_dynamicCast();
        v9 = v25;
        if (!v8)
        {
          v9 = 0;
        }

        v23 = v9;
        if (v8)
        {
          v10 = v26;
        }

        else
        {
          v10 = 0;
        }

        if (sub_7629A0())
        {
          v22 = sub_759670();
          v24 = v11;

          if (v10)
          {
            if (v24)
            {
              if (v23 == v22 && v10 == v24)
              {
              }

              else
              {
                sub_76A950();
              }

              goto LABEL_30;
            }

LABEL_28:

            goto LABEL_30;
          }

          if (v24)
          {
            goto LABEL_28;
          }
        }

        else if (v10)
        {
          goto LABEL_28;
        }

LABEL_30:
        sub_BE70(0, &qword_955FA0, UIAction_ptr);
        v12 = swift_allocObject();
        swift_weakInit();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = v6;
        v21._rawValue = 0;
        sub_76A1F0();
        sub_769440();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
      }

      while (v4 != v3);
    }
  }

LABEL_37:

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (sub_76A860())
    {
      goto LABEL_39;
    }

LABEL_50:

    return 0;
  }

  if (!*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_50;
  }

LABEL_39:
  v14 = sub_762990();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_BE70(0, &qword_944330, UIMenuElement_ptr);

    v18 = sub_76A850();
  }

  else
  {

    sub_76A960();
    sub_BE70(0, &qword_944330, UIMenuElement_ptr);
    v18 = _swiftEmptyArrayStorage;
  }

  sub_BE70(0, &qword_944338, UIMenu_ptr);
  v28._countAndFlagsBits = v16;
  v28._object = v17;
  v29.value._countAndFlagsBits = 0;
  v29.value._object = 0;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  v19.value = 0;
  return sub_769E30(v28, v29, v27, v19, 0xFFFFFFFFFFFFFFFFLL, v18, v21).super.super.isa;
}

uint64_t sub_712E1C()
{

  sub_13238(v0 + 24);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_712E88()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_712EC0()
{
  v1 = sub_75DAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_712F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_75DAB0() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_7128D8(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_713020(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6[3] = sub_BE70(0, &qword_955FA0, UIAction_ptr);
    v6[0] = a1;
    v5 = a1;
    sub_7629F0();

    return sub_10A2C(v6, &unk_93FBD0, &qword_77DFA0);
  }

  return result;
}

uint64_t sub_7130D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_71311C(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v29 = a5;
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_BD88(&qword_940AD0, &unk_78F910);
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v27 - v12;
  v31 = a3;
  v32 = a2;
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_7592D0();
  v14 = objc_opt_self();
  v15 = [v14 fractionalWidthDimension:1.0];
  v16 = sub_75DA30();
  sub_75D3F0();
  v18 = v17;

  v19 = [v14 absoluteDimension:v18];
  v20 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v19];

  type metadata accessor for SeparatorSupplementaryView(0);
  sub_769BC0();
  sub_75DA40();
  sub_766470();
  sub_759360();
  v22 = v21;
  swift_unknownObjectRelease();
  v23 = v28;
  (*(v8 + 8))(v10, v7);
  v24 = sub_769210();

  v25 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v20 elementKind:v24 alignment:v29 absoluteOffset:{0.0, v22}];

  sub_769440();
  if (*(&dword_10 + (*v23 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v23 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  return (*(v11 + 8))(v13, v30);
}

char *sub_713458(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider37MaterialGradientSectionBackgroundView_gradientView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider37MaterialGradientSectionBackgroundView_materialView;
  *&v4[v11] = [objc_allocWithZone(UIVisualEffectView) init];
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider37MaterialGradientSectionBackgroundView_gradientView;
  v14 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider37MaterialGradientSectionBackgroundView_gradientView];
  v15 = v12;
  [v15 addSubview:v14];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider37MaterialGradientSectionBackgroundView_materialView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider37MaterialGradientSectionBackgroundView_materialView]];
  v17 = *&v12[v13];
  v17[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_kind] = 2;
  v18 = v17;
  v19 = [v18 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerConic];

  [*&v12[v13] setAlpha:0.5];
  v20 = *&v12[v13];
  v21 = [v20 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.5}];

  v22 = *&v12[v13];
  v23 = [v22 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 0.0}];

  v24 = *&v15[v16];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_77B6C0;
  v26 = objc_opt_self();
  v27 = v24;
  result = [v26 effectWithBlurRadius:50.0];
  if (result)
  {
    *(v25 + 32) = result;
    *(v25 + 40) = [objc_opt_self() colorEffectSaturate:1.5];
    sub_6EC1AC();
    isa = sub_769450().super.isa;

    [v27 setBackgroundEffects:isa];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double *sub_713910()
{
  v1 = v0;
  v2 = sub_763E10();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ShelfBackgroundMaterialGradientColors.oneColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    sub_BD88(&unk_93F5C0, &unk_77C600);
    result = swift_allocObject();
    *(result + 1) = xmmword_77D9F0;
    *(result + 4) = v8;
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.twoColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    sub_BD88(&unk_93F5C0, &unk_77C600);
    result = swift_allocObject();
    v10 = *v6;
    *(result + 1) = xmmword_77B6C0;
    *(result + 2) = v10;
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.threeColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    v11 = *v6;
    sub_BD88(&unk_93F5C0, &unk_77C600);
    result = swift_allocObject();
    *(result + 1) = xmmword_78D690;
    *(result + 4) = v11;
    *(result + 5) = vextq_s8(*(v6 + 8), *(v6 + 8), 8uLL);
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.fourColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    sub_BD88(&unk_93F5C0, &unk_77C600);
    result = swift_allocObject();
    v12 = *v6;
    v13 = *(v6 + 1);
    *(result + 1) = xmmword_77FA60;
    *(result + 2) = v12;
    *(result + 3) = v13;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_713C24(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_75B660();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_763E10();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5, v11);
  if ((*(v6 + 88))(v8, v5) == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v6 + 96))(v8, v5);
    v14 = *(sub_BD88(&qword_959950, &unk_7A2A80) + 48);
    (*(v10 + 32))(v13, v8, v9);
    v15 = sub_75EDA0();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    v42 = v13;
    v16 = sub_713910();
    v17 = v16;
    v45 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider37MaterialGradientSectionBackgroundView_gradientView];
    v43 = v10;
    if (v16 >> 62)
    {
      goto LABEL_45;
    }

    v18 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
    v19 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      do
      {
        v48 = _swiftEmptyArrayStorage;
        v20 = sub_76A7C0();
        if ((v19 & 0x8000000000000000) == 0)
        {
          v41 = v9;
          v21 = 0;
          v9 = 0;
          v22 = 0;
          v46 = v17 & 0xFFFFFFFFFFFFFF8;
          v47 = v17 & 0xC000000000000001;
          v44 = v17;
          v17 += 32;
          do
          {
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            if (v22)
            {
              goto LABEL_48;
            }

            if (!v18)
            {
              goto LABEL_39;
            }

            v24 = v9 % v18;
            if (v47)
            {
              v25 = sub_76A770();
            }

            else
            {
              if ((v24 & 0x8000000000000000) != 0)
              {
                goto LABEL_40;
              }

              if (v24 >= *(v46 + 16))
              {
                goto LABEL_41;
              }

              v25 = *(v17 + 8 * v24);
            }

            v26 = v25;
            v27 = v3;
            v28 = [v3 traitCollection];
            v29 = [v28 userInterfaceStyle];

            v30 = 0.3;
            if (v29 == &dword_0 + 2)
            {
              v30 = 0.5;
            }

            v31 = [v26 colorWithAlphaComponent:v30];

            sub_76A7A0();
            v3 = *(v48 + 2);
            sub_76A7D0();
            sub_76A7E0();
            v20 = sub_76A7B0();
            v22 = v9 == v18;
            if (v9 == v18)
            {
              v9 = 0;
            }

            else
            {
              v32 = __OFADD__(v9++, 1);
              if (v32)
              {
                goto LABEL_43;
              }
            }

            ++v21;
            v3 = v27;
          }

          while (v23 != v19);
          *&v45[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v48;

          sub_4AC204();
          v48 = _swiftEmptyArrayStorage;
          v20 = sub_143C5C(0, v19, 0);
          v17 = 0;
          v33 = 0;
          v34 = 0;
          v35 = v48;
          while (1)
          {
            v9 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v34)
            {
              goto LABEL_49;
            }

            v48 = v35;
            v37 = *(v35 + 16);
            v36 = *(v35 + 24);
            if (v37 >= v36 >> 1)
            {
              v20 = sub_143C5C((v36 > 1), v37 + 1, 1);
              v35 = v48;
            }

            *(v35 + 16) = v37 + 1;
            *(v35 + 8 * v37 + 32) = v33 / v18;
            v34 = v33 == v18;
            if (v33 == v18)
            {
              v33 = 0;
            }

            else
            {
              v32 = __OFADD__(v33++, 1);
              if (v32)
              {
                goto LABEL_44;
              }
            }

            ++v17;
            if (v9 == v19)
            {

              v38 = v45;
              sub_4AC060(v35);
              if (v18 == 4)
              {
                v39 = 0.0;
              }

              else
              {
                v39 = 0.5;
              }

              v40 = [v38 layer];
              objc_opt_self();
              [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v39, 0.0}];

              [v38 setNeedsDisplay];
              [v27 setNeedsLayout];
              (*(v43 + 8))(v42, v41);
              return;
            }
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v20 = sub_76A860();
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          __break(1u);
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v18 = v20;
        v19 = v20 + 1;
      }

      while (!__OFADD__(v20, 1));
    }

    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    *(*&v3[OBJC_IVAR____TtC18ASMessagesProvider37MaterialGradientSectionBackgroundView_gradientView] + OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors) = _swiftEmptyArrayStorage;

    sub_4AC204();
    sub_4AC060(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_7141FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_75B1D0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AdPlacementType.searchLanding(_:))
  {
    sub_766120();
LABEL_3:
    v10 = sub_766130();
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  if (v9 == enum case for AdPlacementType.searchResults(_:))
  {
    v12 = sub_766130();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    if (v9 == enum case for AdPlacementType.today(_:))
    {
      sub_7660F0();
      goto LABEL_3;
    }

    if (v9 == enum case for AdPlacementType.productPageYMAL(_:))
    {
      sub_766100();
      goto LABEL_3;
    }

    if (v9 == enum case for AdPlacementType.productPageYMALDuringDownload(_:))
    {
      sub_766110();
      goto LABEL_3;
    }

    v13 = sub_766130();
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t type metadata accessor for SearchLinkView(uint64_t a1)
{
  result = qword_9637E0;
  if (!qword_9637E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_7144E4()
{
  if (qword_93D1B0 != -1)
  {
    swift_once();
  }

  v1 = qword_99DD30;
  qword_9A0948 = qword_99DD30;

  return v1;
}

uint64_t sub_714548(void *a1)
{
  v2 = sub_767030();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_767020();
  if (qword_93E210 != -1)
  {
    swift_once();
  }

  sub_766F90();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v13 = [a1 preferredContentSizeCategory];
  sub_769B20();

  sub_767010();
  v12(v8, v2);
  sub_767000();
  return (v12)(v11, v2);
}

void sub_714718(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  swift_getObjectType();
  v8 = [a3 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  sub_7159EC(v9, 0);
  sub_867FC(a1, v23);
  sub_134D8(a2, v22);
  v10 = sub_715854(a3);
  v12 = v11;
  v22[8] = &type metadata for SearchLinkLayout;
  v22[9] = sub_8686C();
  v13 = swift_allocObject();
  v22[5] = v13;
  v14 = sub_86910();
  v15 = swift_allocObject();
  sub_134D8(v22, v15 + 16);
  sub_867FC(v23, &v20);
  if (v21)
  {
    sub_10914(&v20, v19);
    v16 = swift_allocObject();
    sub_10914(v19, v16 + 16);
    sub_BEB8(v22);
    sub_8699C(v23);
    v17 = &type metadata for AutoAdjustingPlaceable;
    v18 = v14;
  }

  else
  {
    sub_BEB8(v22);
    sub_8699C(v23);
    v17 = 0;
    v18 = 0;
    v16 = 0;
  }

  v13[2] = v16;
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = v17;
  v13[6] = v18;
  v13[7] = v15;
  v13[10] = &type metadata for AutoAdjustingPlaceable;
  v13[11] = v14;
  v13[12] = v10;
  v13[13] = v12;
  sub_767290();
  v23[3] = sub_7672A0();
  v23[4] = &protocol witness table for Center;
  sub_B1B4(v23);
  sub_7672B0();
  a4[3] = sub_767340();
  a4[4] = &protocol witness table for Margins;
  sub_B1B4(a4);
  sub_767330();
}

char *sub_714964(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_767030();
  __chkstk_darwin(v10 - 8);
  v11 = qword_9637D0;
  *&v4[v11] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = qword_9637D8;
  sub_7667B0();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v36.receiver = v4;
  v36.super_class = type metadata accessor for SearchLinkView(0);
  v13 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v18 = qword_9637D0;
  v19 = qword_93D1A8;
  v20 = *&v17[qword_9637D0];
  if (v19 != -1)
  {
    swift_once();
  }

  [v20 setTintColor:qword_99DD28];

  v21 = *&v17[v18];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  sub_759070();

  v25 = *&v17[v18];
  sub_7590F0();

  v26 = qword_93D1C0;
  v27 = *&v17[v18];
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_99DD40;
  sub_759120();

  [v17 addSubview:*&v17[v18]];
  v29 = qword_9637D8;
  v30 = qword_93D190;
  v31 = *&v17[qword_9637D8];
  if (v30 != -1)
  {
    swift_once();
  }

  [v31 setTextColor:qword_99DD10];

  v32 = *&v17[v29];
  v33 = [v17 traitCollection];

  sub_714548(v33);
  sub_766790();

  [v17 addSubview:*&v17[v29]];
  sub_BD88(&qword_9477F0, qword_780200);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_77B6D0;
  *(v34 + 32) = sub_767B80();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = ObjectType;
  sub_769F40();

  swift_unknownObjectRelease();

  return v17;
}

id sub_714D4C(void *a1, void *a2)
{
  v4 = sub_767030();
  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_769B20() & 1;

  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = sub_769B20() & 1;
  if (v6 != v9)
  {
    v10 = [a1 traitCollection];
    sub_714548(v10);

    sub_766790();
  }

  return [a1 setNeedsLayout];
}

void sub_714EB0(uint64_t a1)
{
  v2 = qword_9637D0;
  *(a1 + v2) = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = qword_9637D8;
  sub_7667B0();
  *(a1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_76A840();
  __break(1u);
}

uint64_t sub_714F70@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v5 = *&v2[qword_9637D0];
  v6 = sub_759180();
  if (v6)
  {

    v7 = sub_759210();
    v8 = sub_7160CC(&unk_93E520, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v6 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v29[1] = 0;
    v29[2] = 0;
  }

  v29[0] = v6;
  v29[3] = v7;
  v29[4] = v8;
  v9 = *&v3[qword_9637D8];
  v28[3] = sub_7667B0();
  v28[4] = &protocol witness table for UILabel;
  v28[0] = v9;
  v10 = v9;
  v11 = [v3 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  sub_7159EC(v12, 0);
  sub_867FC(v29, v27);
  sub_134D8(v28, v26);
  v13 = sub_7156BC(v3);
  v15 = v14;
  v26[8] = &type metadata for SearchLinkLayout;
  v26[9] = sub_8686C();
  v16 = swift_allocObject();
  v26[5] = v16;
  v17 = sub_86910();
  v18 = swift_allocObject();
  sub_134D8(v26, v18 + 16);
  sub_867FC(v27, &v24);
  if (v25)
  {
    sub_10914(&v24, v23);
    v19 = swift_allocObject();
    sub_10914(v23, v19 + 16);
    sub_BEB8(v26);
    sub_8699C(v27);
    v20 = &type metadata for AutoAdjustingPlaceable;
    v21 = v17;
  }

  else
  {
    sub_BEB8(v26);
    sub_8699C(v27);
    v20 = 0;
    v21 = 0;
    v19 = 0;
  }

  v16[2] = v19;
  v16[3] = 0;
  v16[4] = 0;
  v16[5] = v20;
  v16[6] = v21;
  v16[7] = v18;
  v16[10] = &type metadata for AutoAdjustingPlaceable;
  v16[11] = v17;
  v16[12] = v13;
  v16[13] = v15;
  sub_767290();
  v27[3] = sub_7672A0();
  v27[4] = &protocol witness table for Center;
  sub_B1B4(v27);
  sub_7672B0();
  a1[3] = sub_767340();
  a1[4] = &protocol witness table for Margins;
  sub_B1B4(a1);
  sub_767330();
  sub_BEB8(v28);
  return sub_8699C(v29);
}

void sub_715248()
{
  v1 = *(v0 + qword_9637D8);
}

id sub_715288()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchLinkView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_7152C0(uint64_t a1)
{
  v2 = *(a1 + qword_9637D8);
}

id sub_715338()
{
  if (qword_93D1C0 != -1)
  {
    swift_once();
  }

  v0 = qword_99DD40;

  return v0;
}

double sub_7153AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_74DFC0(a1, a3, WitnessTable);
}

void sub_715410(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_74BAD0(a1, a2, a3, WitnessTable);
}

void sub_71547C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_74DFFC(a1, a3, WitnessTable);
}

uint64_t sub_7154E0@<X0>(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_74BE48(a3, WitnessTable, x8_0);
}

double sub_71555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_74E12C(a1, a2, a4, WitnessTable);
}

uint64_t sub_715610(void *a1)
{
  a1[1] = sub_7160CC(&qword_963838, type metadata accessor for SearchLinkView, &unk_7AFA70);
  a1[2] = sub_7160CC(&qword_963840, type metadata accessor for SearchLinkView, &unk_7AFAA0);
  result = sub_7160CC(&unk_963848, type metadata accessor for SearchLinkView, &unk_7AFAD0);
  a1[3] = result;
  return result;
}

id sub_7156BC(void *a1)
{
  if (qword_93E210 != -1)
  {
    swift_once();
  }

  v2 = qword_9A0948;
  sub_BD88(&qword_963858, &qword_7AFB28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  *(inited + 40) = UIContentSizeCategorySmall;
  v4 = v2;
  v5 = UIContentSizeCategoryExtraSmall;
  v6 = UIContentSizeCategorySmall;
  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v12 = v8;
  __chkstk_darwin(v9);
  v11[2] = &v12;
  sub_4F26D0(sub_716114, v11, inited);
  swift_setDeallocating();
  type metadata accessor for UIContentSizeCategory(0);
  swift_arrayDestroy();

  return v4;
}

id sub_715854(void *a1)
{
  if (qword_93E210 != -1)
  {
    swift_once();
  }

  v2 = qword_9A0948;
  sub_BD88(&qword_963858, &qword_7AFB28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  *(inited + 40) = UIContentSizeCategorySmall;
  v4 = v2;
  v5 = UIContentSizeCategoryExtraSmall;
  v6 = UIContentSizeCategorySmall;
  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v12 = v8;
  __chkstk_darwin(v9);
  v11[2] = &v12;
  sub_4F26D0(sub_5E4058, v11, inited);
  swift_setDeallocating();
  type metadata accessor for UIContentSizeCategory(0);
  swift_arrayDestroy();

  return v4;
}

double sub_7159EC(uint64_t a1, char a2)
{
  v3 = sub_769240();
  v5 = v4;
  if (v3 == sub_769240() && v5 == v6)
  {

    goto LABEL_16;
  }

  v8 = sub_76A950();

  if (v8)
  {
LABEL_16:
    v19 = (a2 & 1) == 0;
    result = 9.0;
    v21 = 4.0;
    goto LABEL_17;
  }

  v9 = sub_769240();
  v11 = v10;
  if (v9 == sub_769240() && v11 == v12)
  {
    goto LABEL_13;
  }

  v14 = sub_76A950();

  if (v14)
  {
LABEL_14:
    v19 = (a2 & 1) == 0;
    result = 10.0;
    v21 = 5.0;
    goto LABEL_17;
  }

  v15 = sub_769240();
  v17 = v16;
  if (v15 == sub_769240() && v17 == v18)
  {
LABEL_13:

    goto LABEL_14;
  }

  v22 = sub_76A950();

  if (v22)
  {
    goto LABEL_14;
  }

  v23 = sub_769240();
  v25 = v24;
  if (v23 == sub_769240() && v25 == v26)
  {

LABEL_25:
    v19 = (a2 & 1) == 0;
    result = 11.0;
    v21 = 5.0;
    goto LABEL_17;
  }

  v27 = sub_76A950();

  if (v27)
  {
    goto LABEL_25;
  }

  v28 = sub_769240();
  v30 = v29;
  if (v28 == sub_769240() && v30 == v31)
  {

LABEL_30:
    v19 = (a2 & 1) == 0;
    result = 12.0;
    v21 = 6.0;
    goto LABEL_17;
  }

  v32 = sub_76A950();

  if (v32)
  {
    goto LABEL_30;
  }

  v33 = sub_769240();
  v35 = v34;
  if (v33 == sub_769240() && v35 == v36)
  {

LABEL_35:
    v19 = (a2 & 1) == 0;
    result = 13.0;
    v21 = 6.0;
    goto LABEL_17;
  }

  v37 = sub_76A950();

  if (v37)
  {
    goto LABEL_35;
  }

  v38 = sub_769240();
  v40 = v39;
  if (v38 == sub_769240() && v40 == v41)
  {

LABEL_40:
    v19 = (a2 & 1) == 0;
    result = 14.0;
    v21 = 7.0;
LABEL_17:
    if (!v19)
    {
      return v21;
    }

    return result;
  }

  v42 = sub_76A950();

  if (v42)
  {
    goto LABEL_40;
  }

  v43 = sub_769240();
  v45 = v44;
  if (v43 == sub_769240() && v45 == v46)
  {

    return 17.0;
  }

  v47 = sub_76A950();

  result = 17.0;
  if ((v47 & 1) == 0)
  {
    v48 = sub_769240();
    v50 = v49;
    if (v48 == sub_769240() && v50 == v51)
    {

      return 20.0;
    }

    v52 = sub_76A950();

    result = 20.0;
    if ((v52 & 1) == 0)
    {
      v53 = sub_769240();
      v55 = v54;
      if (v53 == sub_769240() && v55 == v56)
      {

        return 24.0;
      }

      v57 = sub_76A950();

      result = 24.0;
      if ((v57 & 1) == 0)
      {
        v58 = sub_769240();
        v60 = v59;
        if (v58 == sub_769240() && v60 == v61)
        {

          return 28.0;
        }

        v62 = sub_76A950();

        result = 28.0;
        if ((v62 & 1) == 0)
        {
          v63 = sub_769240();
          v65 = v64;
          if (v63 == sub_769240() && v65 == v66)
          {

            return 31.0;
          }

          v67 = sub_76A950();

          v19 = (v67 & 1) == 0;
          result = 10.0;
          v21 = 31.0;
          goto LABEL_17;
        }
      }
    }
  }

  return result;
}

uint64_t sub_71602C()
{
  if (*(v0 + 40))
  {
    sub_BEB8((v0 + 16));
  }

  sub_BEB8((v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_71607C()
{
  sub_BEB8((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_7160CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_716130(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_BE70(0, &qword_963868, ASDApp_ptr);
    v4 = sub_769460();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

NSString sub_7161D4()
{
  result = sub_769210();
  qword_9A0960 = result;
  return result;
}

unint64_t sub_716220()
{
  result = qword_94FBE8;
  if (!qword_94FBE8)
  {
    sub_759570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94FBE8);
  }

  return result;
}

uint64_t sub_716278(uint64_t a1, uint64_t a2)
{
  v4 = sub_7687C0();
  v86 = *(v4 - 8);
  v87 = v4;
  __chkstk_darwin(v4);
  v85 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_75E270();
  v78 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_7580D0();
  v90 = *(v94 - 8);
  __chkstk_darwin(v94);
  v74 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v71 - v9;
  __chkstk_darwin(v10);
  v88 = &v71 - v11;
  __chkstk_darwin(v12);
  v14 = &v71 - v13;
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  v18 = sub_764CF0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v91 = sub_768F90();
  sub_BD88(&unk_944300, &qword_77DEE0);
  sub_768900();
  v89 = a2;
  sub_768ED0();
  v22 = v95;
  v23 = v96;
  ObjectType = swift_getObjectType();
  sub_759550();
  v80 = ObjectType;
  v81 = v23;
  v25 = sub_758330();
  v27 = v26;
  v28 = *(v19 + 8);
  v82 = v21;
  v83 = v19 + 8;
  v29 = v21;
  v30 = v90;
  v84 = v18;
  v79 = v28;
  v28(v29, v18);
  swift_getObjectType();
  v31 = a1;
  sub_759530();
  sub_758230();
  v32 = *(v30 + 16);
  v93 = v17;
  v33 = v17;
  v34 = v94;
  v32(v14, v33, v94);
  v35 = v14;
  v36 = (*(v30 + 88))(v14, v34);
  if (v36 != enum case for LegacyAppState.waiting(_:))
  {
    v73 = v27;
    v43 = v92;
    v71 = v22;
    v72 = v31;
    v40 = v91;
    if (v36 == enum case for LegacyAppState.purchased(_:))
    {
      v44 = v88;
      v45 = v14;
      v46 = v94;
      v32(v88, v45, v94);
      v47 = v46;
      v48 = v30;
      (*(v30 + 96))(v44, v47);
      v49 = sub_759E00();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 88))(v44, v49);
      v52 = v25;
      v53 = v73;
      if (v51 != enum case for PurchaseType.preorder(_:))
      {
        (*(v50 + 8))(v44, v49);
LABEL_6:
        v54 = v82;
        sub_759550();
        sub_758300();
        v79(v54, v84);
        v56 = v85;
        v55 = v86;
        v57 = v87;
        (*(v86 + 104))(v85, enum case for ActionOutcome.performed(_:), v87);
        sub_768F60();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v55 + 8))(v56, v57);
        v58 = *(v48 + 8);
        v59 = v94;
        v58(v93, v94);
LABEL_14:
        v61 = v35;
LABEL_15:
        v58(v61, v59);
        return v40;
      }

LABEL_21:
      v67 = *(v48 + 8);
      v68 = v94;
      v67(v35, v94);
      sub_7170DC(v72, v52, v53, v89);
      sub_768F00();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v67(v93, v68);
      return v40;
    }

    v48 = v30;
    v52 = v25;
    v53 = v73;
    if (v36 == enum case for LegacyAppState.updatable(_:) || v36 == enum case for LegacyAppState.downloadable(_:))
    {
      goto LABEL_21;
    }

    if (v36 == enum case for LegacyAppState.paused(_:))
    {
      v59 = v94;
      v32(v92, v35, v94);
      (*(v48 + 96))(v43, v59);
      sub_716CB0(v72);
    }

    else
    {
      if (v36 != enum case for LegacyAppState.downloading(_:))
      {
        if (v36 == enum case for LegacyAppState.openable(_:))
        {
          v62 = v74;
          v77 = v35;
          v59 = v94;
          v32(v74, v35, v94);
          (*(v48 + 96))(v62, v59);

          v63 = v75;
          v64 = v62;
          v65 = v76;
          (*(v78 + 32))(v75, v64, v76);
          v66 = v72;
          if (sub_759540())
          {
            sub_7170DC(v66, v25, v73, v89);
          }

          else
          {
            sub_71AE94(v66, v63);
          }

          v70 = v93;
          sub_768F00();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          (*(v78 + 8))(v63, v65);
          v58 = *(v48 + 8);
          v58(v70, v59);
          v61 = v77;
          goto LABEL_15;
        }

        if (v36 != enum case for LegacyAppState.buyable(_:) && v36 != enum case for LegacyAppState.unknown(_:))
        {
          goto LABEL_6;
        }

        goto LABEL_21;
      }

      v59 = v94;
      v32(v92, v35, v94);
      (*(v48 + 96))(v43, v59);
      sub_71AA68(v72);
    }

    sub_768F00();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v58 = *(v48 + 8);
    v58(v93, v59);
    v60 = sub_758040();
    (*(*(v60 - 8) + 8))(v43, v60);
    goto LABEL_14;
  }

  v37 = v92;
  v77 = v35;
  v38 = v35;
  v39 = v34;
  v32(v92, v38, v34);
  (*(v30 + 96))(v37, v34);
  sub_718A40(v31, 1, v25, v27);
  v40 = v91;
  sub_768F00();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v41 = *(v30 + 8);
  v41(v93, v39);
  v42 = sub_75BC10();
  (*(*(v42 - 8) + 8))(v37, v42);
  v41(v77, v39);
  return v40;
}

uint64_t sub_716CB0(uint64_t a1)
{
  v2 = sub_764CF0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = aBlock - v7;
  sub_759550();
  v9 = sub_764C90();
  v10 = *(v3 + 8);
  v10(v8, v2);
  if (v9)
  {
    sub_BD88(&qword_94DDC0, qword_77DE00);
    v11 = sub_768F90();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_77D9F0;
    *(v12 + 32) = v9;
    sub_BE70(0, &qword_945820, NSNumber_ptr);
    v13 = v9;
    isa = sub_769450().super.isa;

    v15 = [objc_opt_self() queryForStoreItemIDs:isa];

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v11;
    v16[4] = a1;
    aBlock[4] = sub_71B354;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_716130;
    aBlock[3] = &unk_89E4F0;
    v17 = _Block_copy(aBlock);
    v18 = v13;

    [v15 executeQueryWithResultHandler:v17];
    _Block_release(v17);

    return v11;
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v20 = sub_768FF0();
    sub_BE38(v20, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    sub_BD88(&qword_94DDC0, qword_77DE00);
    sub_759550();
    v21 = sub_764CA0();
    v23 = v22;
    v10(v5, v2);
    sub_71B2FC();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    return sub_768F20();
  }
}

id sub_7170DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v7 = sub_7580D0();
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_764CF0();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_963870, &qword_7AFBD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v44 = sub_75AD90();
  v16 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdHeaderProvider();
  v42 = a4;
  sub_7688F0();
  if (v46[0])
  {

    sub_BD88(&qword_963878, &unk_7AFBD8);
    sub_764050();
  }

  swift_unknownObjectRetain();

  sub_75AD80();
  v18 = v44;
  if ((*(v16 + 48))(v15, 1, v44) == 1)
  {
    sub_10A2C(v15, &qword_963870, &qword_7AFBD0);
    sub_BD88(&qword_94DDC0, qword_77DE00);
    sub_71B2FC();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 7;
    v20 = sub_768F20();

    return v20;
  }

  (*(v16 + 32))(v43, v15, v18);
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v38 = sub_768F90();
  sub_75E8D0();
  sub_7688F0();
  if (v46[0])
  {
    sub_759550();
    swift_getObjectType();
    sub_758220();
    sub_75E8B0();

    (*(v40 + 8))(v9, v7);
    (*(v39 + 8))(v12, v10);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v22 = result;
    v23 = sub_769210();
    v24 = [v22 applicationIsInstalled:v23];

    if (v24)
    {
      v40 = v16;
      v26 = sub_759560();
      if (v27 && (v28 = v26, v29 = v27, v30 = objc_allocWithZone(LSApplicationRecord), v31 = sub_71A3F0(v28, v29), v31))
      {

        sub_7177B4(a1, a2, v45, v42);
        v20 = v38;
        sub_768F00();

        (*(v40 + 8))(v43, v44);
      }

      else
      {
        sub_765460();
        sub_768900();
        v32 = v42;
        sub_768ED0();
        v33 = v45;
        sub_765450();
        sub_71B384(v41, v46);
        v34 = swift_allocObject();
        v20 = v38;
        v34[2] = v38;
        v34[3] = a1;
        sub_71B4A8(v46, (v34 + 4));
        v34[6] = v32;
        v34[7] = a2;
        v34[8] = v33;
        v35 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
        swift_unknownObjectRetain();

        v36 = sub_769970();
        v46[3] = v35;
        v46[4] = &protocol witness table for OS_dispatch_queue;
        v46[0] = v36;
        sub_768F10();

        (*(v40 + 8))(v43, v44);
        sub_BEB8(v46);
      }
    }

    else
    {
      sub_71A4BC(v25, a1, v42);
      v37 = v16;
      v20 = v38;
      sub_768F00();

      (*(v37 + 8))(v43, v44);
    }

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_7177B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v47 = a2;
  v4 = sub_7580D0();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75BC10();
  v52 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_764CF0();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  __chkstk_darwin(v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v15 = sub_759560();
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = v15;
  v18 = v16;
  v45 = v7;
  v19 = objc_allocWithZone(LSApplicationRecord);

  v20 = sub_71A3F0(v17, v18);
  if (!v20)
  {

LABEL_4:
    sub_BD88(&qword_94DDC0, qword_77DE00);
    v21 = sub_759560();
    v23 = v22;
    sub_71B2FC();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 3;
    return sub_768F20();
  }

  v26 = objc_allocWithZone(ASDSystemAppRequest);
  v27 = sub_769210();

  v28 = [v26 initWithBundleID:v27];

  sub_759550();
  v29 = sub_764C90();
  v43 = *(v50 + 8);
  v44 = v50 + 8;
  v43(v14, v51);
  [v28 setStoreItemID:v29];

  v42 = v28;
  [v28 setUserInitiated:1];
  swift_getObjectType();
  sub_758220();
  v30 = v46;
  v31 = (*(v46 + 88))(v6, v4);
  if (v31 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v30 + 8))(v6, v4);
    (*(v52 + 104))(v53, enum case for InstallationType.redownload(_:), v45);
  }

  else
  {
    v32 = *(v52 + 104);
    if (v31 == enum case for LegacyAppState.buyable(_:) || v31 == enum case for LegacyAppState.unknown(_:))
    {
      v32(v53, enum case for InstallationType.purchase(_:), v45);
    }

    else
    {
      v32(v53, enum case for InstallationType.unknown(_:), v45);
      (*(v30 + 8))(v6, v4);
    }
  }

  v33 = sub_758200();
  v34 = v49;
  if (!v33)
  {
    sub_BD88(&unk_944300, &qword_77DEE0);
    sub_768900();
    sub_768ED0();
  }

  swift_getObjectType();
  sub_759550();
  sub_758310();
  v35 = v51;
  v43(v14, v51);
  sub_759550();
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v36 = sub_768F90();
  v37 = v50;
  (*(v50 + 16))(v11, v14, v35);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v34;
  *(v39 + 24) = v36;
  (*(v37 + 32))(v39 + v38, v11, v35);
  aBlock[4] = sub_71B70C;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3ADB74;
  aBlock[3] = &unk_89E608;
  v40 = _Block_copy(aBlock);

  v41 = v42;
  [v42 startWithErrorHandler:v40];
  _Block_release(v40);
  swift_unknownObjectRelease();

  v43(v14, v35);
  (*(v52 + 8))(v53, v45);
  return v36;
}

void sub_717E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a6;
  v51 = a7;
  v52 = a5;
  v54 = a2;
  v8 = sub_764CF0();
  v53 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_75ADA0();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for PurchaseResult.askToBuy(_:))
  {
    (*(v16 + 96))(v19, v15);
    v21 = [objc_opt_self() defaultCenter];
    v22 = sub_763780();
    sub_BD88(&unk_9498B0, qword_794670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    v55 = sub_763790();
    v56 = v24;
    sub_76A6E0();
    *(inited + 96) = v8;
    sub_B1B4((inited + 72));
    sub_764CC0();
    sub_10E1F8(inited);
    swift_setDeallocating();
    sub_10A2C(inited + 32, &qword_940758, &unk_7851D0);
    isa = sub_7690E0().super.isa;

    [v21 postNotificationName:v22 object:0 userInfo:isa];

    (*(v12 + 104))(v14, enum case for ActionOutcome.performed(_:), v11);
    sub_768F60();
    (*(v12 + 8))(v14, v11);
    return;
  }

  v49 = v10;
  v48 = v8;
  if (v20 != enum case for PurchaseResult.completed(_:))
  {
    if (v20 == enum case for PurchaseResult.canceled(_:))
    {
      v36 = v49;
      sub_759550();
      v37 = sub_764CA0();
      v39 = v38;
      (*(v53 + 8))(v36, v48);
      sub_71B2FC();
      swift_allocError();
      *v40 = v37;
      *(v40 + 8) = v39;
      v41 = 1;
    }

    else
    {
      if (v20 != enum case for PurchaseResult.unknown(_:))
      {
        (*(v16 + 8))(v19, v15);
        return;
      }

      v42 = v49;
      sub_759550();
      v43 = sub_764CA0();
      v45 = v44;
      (*(v53 + 8))(v42, v48);
      sub_71B2FC();
      swift_allocError();
      *v40 = v43;
      *(v40 + 8) = v45;
      v41 = 2;
    }

    *(v40 + 16) = v41;
    sub_768F50();

    return;
  }

  (*(v16 + 96))(v19, v15);
  v26 = v19[2];
  (*(v12 + 104))(v14, enum case for ActionOutcome.performed(_:), v11);
  sub_768F60();
  (*(v12 + 8))(v14, v11);
  v27 = sub_759500();
  if (v27)
  {
    sub_72D574(v27, 1, v52);
  }

  v28 = v49;
  if (v26)
  {
    type metadata accessor for InAppMessagesManager();
    sub_768900();
    sub_768ED0();
    v29 = *(v55 + 16);
    v30 = objc_allocWithZone(IAMCountableEvent);
    v31 = sub_769210();
    v32 = [v30 initWithName:v31];

    [v29 receiveEvent:v32];
    sub_4C95A4();
  }

  sub_75F3E0();
  v33 = sub_75F3D0();
  v34 = sub_75F3C0();

  if (v34)
  {
    swift_getObjectType();
    v35 = sub_758200();
    if (v35)
    {
      v55 = v35;
    }

    else
    {
      sub_BD88(&unk_944300, &qword_77DEE0);
      sub_768900();
      sub_768ED0();
    }

    v46 = v48;
    swift_getObjectType();
    sub_759550();
    sub_758350();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v28, v46);
  }
}

double sub_718534(uint64_t a1)
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_B1B4(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_7685E0();
  sub_10A2C(v5, &unk_93FBD0, &qword_77DFA0);
  sub_768EA0();

  return result;
}

double sub_718700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_764CF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&unk_944300, &qword_77DEE0);
  sub_768900();
  sub_768ED0();
  v11 = v17[2];
  v12 = v17[3];
  if (a1)
  {
    swift_errorRetain();
    sub_768F50();
    swift_getObjectType();
    sub_758360();
    swift_unknownObjectRelease();
  }

  else
  {
    v17[1] = swift_getObjectType();
    (*(v8 + 16))(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    *(v16 + 24) = v12;
    (*(v8 + 32))(v16 + v14, v10, v7);
    *(v16 + v15) = a3;
    swift_unknownObjectRetain();

    sub_758340();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_718918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_7687C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_758360();
  (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
  sub_768F60();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_718A40(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v59 = a2;
  v65 = sub_766430();
  v61 = *(v65 - 8);
  v6 = *(v61 + 64);
  __chkstk_darwin(v65);
  v63 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = sub_764CF0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v62 = a1;
  sub_759550();
  v17 = sub_764C90();
  v18 = *(v11 + 8);
  v18(v16, v10);
  if (v17)
  {
    sub_BD88(&qword_94DDC0, qword_77DE00);
    v19 = sub_768F90();
    v57 = a3;
    v58 = v19;
    swift_getObjectType();
    v20 = sub_7581E0() & v59;
    sub_768BA0();
    sub_768B90();
    sub_766420();
    sub_769AD0();
    v21 = sub_768B90();
    v59 = v20 & 1;
    if (v20)
    {
      v22 = "ActionDispatcher[ASDAppQuery.BetaApps]:cancelAction";
    }

    else
    {
      v22 = "ActionDispatcher[ASDAppQuery]:cancelAction";
    }

    if (v20)
    {
      v23 = 51;
    }

    else
    {
      v23 = 42;
    }

    v54 = v23;
    v55 = v22;
    if (v20)
    {
      v24 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    }

    else
    {
      v24 = &selRef_queryForStoreItemIDs_;
    }

    v56 = v9;
    sub_766410();

    sub_BD88(&unk_93F5C0, &unk_77C600);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_77D9F0;
    *(v25 + 32) = v17;
    sub_BE70(0, &qword_945820, NSNumber_ptr);
    v52 = v17;
    isa = sub_769450().super.isa;

    v53 = [objc_opt_self() *v24];

    v27 = v61;
    v28 = v9;
    v29 = v65;
    (*(v61 + 16))(v63, v28, v65);
    sub_71B384(v60, v67);
    v30 = (*(v27 + 80) + 33) & ~*(v27 + 80);
    v31 = v30 + v6;
    v32 = (v30 + v6) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 31) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v54;
    *(v36 + 16) = v55;
    *(v36 + 24) = v37;
    *(v36 + 32) = 2;
    (*(v27 + 32))(v36 + v30, v63, v29);
    *(v36 + v31) = v59;
    sub_71B4A8(v67, v36 + v32 + 8);
    *(v36 + v33) = v62;
    v38 = (v36 + v34);
    v39 = v58;
    v40 = v64;
    *v38 = v57;
    v38[1] = v40;
    *(v36 + v35) = v39;
    v41 = v52;
    *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v52;
    aBlock[4] = sub_71B4E0;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_716130;
    aBlock[3] = &unk_89E590;
    v42 = _Block_copy(aBlock);
    v43 = v41;

    swift_unknownObjectRetain();

    v44 = v53;
    [v53 executeQueryWithResultHandler:v42];
    _Block_release(v42);

    (*(v27 + 8))(v56, v65);
    return v39;
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v46 = sub_768FF0();
    sub_BE38(v46, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    sub_BD88(&qword_94DDC0, qword_77DE00);
    sub_759550();
    v47 = sub_764CA0();
    v49 = v48;
    v18(v13, v10);
    sub_71B2FC();
    swift_allocError();
    *v50 = v47;
    *(v50 + 8) = v49;
    *(v50 + 16) = 0;
    return sub_768F20();
  }
}

void sub_7190BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v43 = a8;
  v44 = a13;
  v41 = a10;
  v42 = a11;
  v48 = a9;
  v49 = a12;
  v15 = sub_7687C0();
  v40 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_764CF0();
  v46 = *(v18 - 8);
  v47 = v18;
  __chkstk_darwin(v18);
  v45 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_769AC0();
  sub_768BA0();
  v20 = sub_768B90();
  sub_766410();

  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_76A860())
      {
        goto LABEL_4;
      }
    }

    else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_4:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v21 = sub_76A770();
        goto LABEL_7;
      }

      if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        v21 = *(a1 + 32);
LABEL_7:
        v22 = v21;
        v23 = [v21 progress];
        if (v23)
        {
          v24 = v23;
          [v23 cancel];
          v25 = v40;
          (*(v40 + 104))(v17, enum case for ActionOutcome.performed(_:), v15);
          sub_768F60();

          (*(v25 + 8))(v17, v15);
          return;
        }

        if (qword_93DF00 != -1)
        {
          swift_once();
        }

        v26 = sub_768FF0();
        sub_BE38(v26, qword_9A0430);
        sub_BD88(&qword_93FD00, &unk_77DF10);
        sub_7685F0();
        *(swift_allocObject() + 16) = xmmword_77DC20;
        sub_768540();
        v51 = sub_BE70(0, &qword_945820, NSNumber_ptr);
        v50[0] = v44;
        v27 = v44;
        sub_768550();
        sub_10A2C(v50, &unk_93FBD0, &qword_77DFA0);
        sub_768540();
        sub_768EA0();

        v28 = v45;
        sub_759550();
        v29 = sub_764CA0();
        v31 = v30;
        (*(v46 + 8))(v28, v47);
        sub_71B2FC();
        swift_allocError();
        *v32 = v29;
        *(v32 + 8) = v31;
        *(v32 + 16) = 4;
        sub_768F50();

        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  if ((a7 & 1) == 0)
  {
    if (qword_93DF00 == -1)
    {
LABEL_18:
      v33 = sub_768FF0();
      sub_BE38(v33, qword_9A0430);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77DC20;
      sub_768540();
      v51 = sub_BE70(0, &qword_945820, NSNumber_ptr);
      v50[0] = v44;
      v34 = v44;
      sub_768550();
      sub_10A2C(v50, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      sub_768EA0();

      v35 = v45;
      sub_759550();
      v36 = sub_764CA0();
      v38 = v37;
      (*(v46 + 8))(v35, v47);
      sub_71B2FC();
      swift_allocError();
      *v39 = v36;
      *(v39 + 8) = v38;
      *(v39 + 16) = 4;
      sub_768F50();
LABEL_19:

      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_18;
  }

  sub_718A40(v48, 0, v41, v42);
  sub_768F00();
}

uint64_t sub_7197A0(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_7687C0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_764CF0();
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_12:
    v33 = a5;
    v34 = a4;
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v26 = sub_768FF0();
    sub_BE38(v26, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77DC20;
    sub_768540();
    v37 = sub_BE70(0, &qword_945820, NSNumber_ptr);
    v36[0] = a3;
    v27 = a3;
    sub_768550();
    sub_10A2C(v36, &unk_93FBD0, &qword_77DFA0);
    sub_768540();
    sub_768EA0();

    sub_759550();
    v28 = sub_764CA0();
    v30 = v29;
    (*(v13 + 8))(v15, v35);
    sub_71B2FC();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 5;
    sub_768F50();
  }

  if (!sub_76A860())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = sub_76A770();
LABEL_7:
    a1 = v16;
    v17 = [v16 progress];
    if (v17)
    {
      v18 = v17;
      [v17 pause];
      (*(v10 + 104))(v12, enum case for ActionOutcome.performed(_:), v9);
      sub_768F60();

      return (*(v10 + 8))(v12, v9);
    }

    v33 = a5;
    v34 = a4;
    if (qword_93DF00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    v16 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v20 = sub_768FF0();
  v32 = sub_BE38(v20, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77DC20;
  sub_768540();
  v37 = sub_BE70(0, &qword_945820, NSNumber_ptr);
  v36[0] = a3;
  v21 = a3;
  sub_768550();
  sub_10A2C(v36, &unk_93FBD0, &qword_77DFA0);
  sub_768540();
  sub_768EA0();

  sub_759550();
  v22 = sub_764CA0();
  v24 = v23;
  (*(v13 + 8))(v15, v35);
  sub_71B2FC();
  swift_allocError();
  *v25 = v22;
  *(v25 + 8) = v24;
  *(v25 + 16) = 5;
  sub_768F50();
}

uint64_t sub_719DC4(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_7687C0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_764CF0();
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_12:
    v33 = a5;
    v34 = a4;
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v26 = sub_768FF0();
    sub_BE38(v26, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77DC20;
    sub_768540();
    v37 = sub_BE70(0, &qword_945820, NSNumber_ptr);
    v36[0] = a3;
    v27 = a3;
    sub_768550();
    sub_10A2C(v36, &unk_93FBD0, &qword_77DFA0);
    sub_768540();
    sub_768EA0();

    sub_759550();
    v28 = sub_764CA0();
    v30 = v29;
    (*(v13 + 8))(v15, v35);
    sub_71B2FC();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 6;
    sub_768F50();
  }

  if (!sub_76A860())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = sub_76A770();
LABEL_7:
    a1 = v16;
    v17 = [v16 progress];
    if (v17)
    {
      v18 = v17;
      [v17 resume];
      (*(v10 + 104))(v12, enum case for ActionOutcome.performed(_:), v9);
      sub_768F60();

      return (*(v10 + 8))(v12, v9);
    }

    v33 = a5;
    v34 = a4;
    if (qword_93DF00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    v16 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v20 = sub_768FF0();
  v32 = sub_BE38(v20, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77DC20;
  sub_768540();
  v37 = sub_BE70(0, &qword_945820, NSNumber_ptr);
  v36[0] = a3;
  v21 = a3;
  sub_768550();
  sub_10A2C(v36, &unk_93FBD0, &qword_77DFA0);
  sub_768540();
  sub_768EA0();

  sub_759550();
  v22 = sub_764CA0();
  v24 = v23;
  (*(v13 + 8))(v15, v35);
  sub_71B2FC();
  swift_allocError();
  *v25 = v22;
  *(v25 + 8) = v24;
  *(v25 + 16) = 6;
  sub_768F50();
}

id sub_71A3F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_769210();

  v8 = 0;
  v4 = [v2 initWithBundleIdentifierOfSystemPlaceholder:v3 error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_756F70();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_71A4BC(__n128 a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v3 = sub_75B9A0();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_764CF0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_940200, &unk_7AEB70);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_7687B0();
  __chkstk_darwin(v12 - 8);
  v32 = _swiftEmptyArrayStorage;
  sub_768790();
  sub_759550();
  (*(v6 + 56))(v11, 0, 1, v5);
  sub_758190();
  swift_allocObject();
  v13 = sub_758180();

  sub_769440();
  if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v32 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  v25 = v13;
  sub_769500();
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_76A730(35);

  v30 = 0xD000000000000021;
  v31 = 0x80000000007F2E40;
  sub_759550();
  v14 = sub_764CA0();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v33._countAndFlagsBits = v14;
  v33._object = v16;
  sub_769370(v33);

  sub_768790();
  sub_75C5D0();
  swift_allocObject();
  if (sub_75C5C0())
  {

    sub_769440();
    if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v32 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
  }

  sub_768790();
  sub_75AB10();
  swift_allocObject();
  v17 = sub_75AAF0();
  v34._countAndFlagsBits = 0xD000000000000023;
  v34._object = 0x80000000007F2E70;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v18 = sub_75B750(v34, v37);
  v20 = v19;
  v35._object = 0x80000000007F2EA0;
  v35._countAndFlagsBits = 0xD00000000000001ALL;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_75B750(v35, v38);
  v36._countAndFlagsBits = 0xD00000000000001CLL;
  v36._object = 0x80000000007F2EC0;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_75B750(v36, v39);
  sub_BD88(&unk_963880, &qword_7AFBE8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_77B6D0;
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;
  *(v21 + 48) = v17;
  *(v21 + 56) = 0u;

  sub_768790();
  (*(v26 + 104))(v28, enum case for AlertActionStyle.normal(_:), v27);
  sub_758F90();
  swift_allocObject();
  v22 = sub_758F60();
  v23 = sub_72D838(v22, 1, v29);

  return v23;
}

uint64_t sub_71AA68(uint64_t a1)
{
  v2 = sub_764CF0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = aBlock - v7;
  sub_759550();
  v9 = sub_764C90();
  v10 = *(v3 + 8);
  v10(v8, v2);
  if (v9)
  {
    sub_BD88(&qword_94DDC0, qword_77DE00);
    v11 = sub_768F90();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_77D9F0;
    *(v12 + 32) = v9;
    sub_BE70(0, &qword_945820, NSNumber_ptr);
    v13 = v9;
    isa = sub_769450().super.isa;

    v15 = [objc_opt_self() queryForStoreItemIDs:isa];

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v11;
    v16[4] = a1;
    aBlock[4] = sub_71B378;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_716130;
    aBlock[3] = &unk_89E540;
    v17 = _Block_copy(aBlock);
    v18 = v13;

    [v15 executeQueryWithResultHandler:v17];
    _Block_release(v17);

    return v11;
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v20 = sub_768FF0();
    sub_BE38(v20, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    sub_BD88(&qword_94DDC0, qword_77DE00);
    sub_759550();
    v21 = sub_764CA0();
    v23 = v22;
    v10(v5, v2);
    sub_71B2FC();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    return sub_768F20();
  }
}

uint64_t sub_71AE94(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v29 = sub_7687C0();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_764CF0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  sub_759550();
  v12 = sub_764C90();
  v13 = *(v6 + 8);
  v13(v11, v5);
  if (v12)
  {
    v14 = [objc_opt_self() defaultCenter];
    if (qword_93E218 != -1)
    {
      swift_once();
    }

    v15 = qword_9A0960;
    sub_BD88(&unk_9498B0, qword_794670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77E280;
    v30 = 0x64496D616461;
    v31 = 0xE600000000000000;
    sub_76A6E0();
    *(inited + 96) = v5;
    sub_B1B4((inited + 72));
    v17 = v12;
    sub_764CD0();
    v30 = 0x74616E6974736564;
    v31 = 0xEB000000006E6F69;
    sub_76A6E0();
    v18 = sub_75E270();
    *(inited + 168) = v18;
    v19 = sub_B1B4((inited + 144));
    (*(*(v18 - 8) + 16))(v19, v28, v18);
    sub_10E1F8(inited);
    swift_setDeallocating();
    sub_BD88(&qword_940758, &unk_7851D0);
    swift_arrayDestroy();
    isa = sub_7690E0().super.isa;

    [v14 postNotificationName:v15 object:0 userInfo:isa];

    sub_BD88(&qword_94DDC0, qword_77DE00);
    (*(v2 + 104))(v4, enum case for ActionOutcome.performed(_:), v29);
    v21 = sub_768F30();

    return v21;
  }

  else
  {
    sub_BD88(&qword_94DDC0, qword_77DE00);
    sub_759550();
    v23 = sub_764CA0();
    v25 = v24;
    v13(v8, v5);
    sub_71B2FC();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    *(v26 + 16) = 0;
    return sub_768F20();
  }
}

unint64_t sub_71B2FC()
{
  result = qword_963860;
  if (!qword_963860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_963860);
  }

  return result;
}

double sub_71B360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_71B3BC()
{
  v1 = sub_766430();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (((((((((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_71B4E0(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_766430() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_7190BC(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8, *(v2 + v8), *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_71B5D4()
{

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_71B640()
{
  v1 = sub_764CF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_71B70C(uint64_t a1)
{
  v3 = *(sub_764CF0() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_718700(a1, v4, v5, v6);
}

uint64_t sub_71B780()
{
  v1 = sub_764CF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_71B858()
{
  v1 = *(sub_764CF0() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_718918(v2, v3, v4);
}

uint64_t sub_71B8E8(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_71B904(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_71B94C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_71B990(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

void sub_71BA40()
{
  v1 = [v0 viewControllers];
  sub_BE70(0, &qword_9434E0, UIViewController_ptr);
  v2 = sub_769460();

  if (v2 >> 62)
  {
    v3 = sub_76A860();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      goto LABEL_13;
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
      v5 = sub_76A770();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    type metadata accessor for CategoryListViewController(0);
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = (v8 + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler);
      v11 = *(v8 + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler);
      v12 = v10[1];
      *v10 = sub_71DC24;
      v10[1] = v9;

      sub_47160(v11, v12);
    }

    else
    {
    }
  }

LABEL_13:
}

void sub_71BBDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider28SelectCategoryViewController_selectionHandler];
    if (v5)
    {
      v6 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider28SelectCategoryViewController_selectionHandler + 8];
      sub_F714(*&Strong[OBJC_IVAR____TtC18ASMessagesProvider28SelectCategoryViewController_selectionHandler], v6);

      v5(a1);
      sub_47160(v5, v6);
    }

    else
    {
    }
  }
}

void sub_71BDC0()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 contentScaleFactor];
    v5 = v4;

    [v1 setScale:v5];
    [v1 setPreferredRange:1];
    v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v1 format:{22.0, 22.0}];
    v10[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
    v10[5] = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_523AE0;
    v10[3] = &unk_89E710;
    v7 = _Block_copy(v10);

    v8 = [v6 imageWithActions:v7];

    _Block_release(v7);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_placeholderImage];
      *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_placeholderImage] = v8;

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_71C0D0(void *a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v5 = *a3;
  v6 = v7.receiver;
  objc_msgSendSuper2(&v7, v5);
  sub_75A0A0();
}

id sub_71C304(void *a1, uint64_t a2)
{
  v3 = v2;
  v37 = sub_757640();
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_769210();
  v10 = [a1 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v11 = objc_allocWithZone(UITableViewCell);
    v12 = sub_769210();
    v10 = [v11 initWithStyle:0 reuseIdentifier:v12];
  }

  v13 = [v10 imageView];
  if (v13)
  {
    v14 = v13;
    v15 = *(v3 + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_placeholderImage);
    [v14 setImage:v15];
  }

  v16 = *(v3 + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_dataSource);
  v36[1] = a2;
  sub_7575A0();
  sub_757620();
  sub_B170((v16 + 16), *(v16 + 40));
  v17 = sub_762AC0();
  v36[0] = *(v6 + 8);
  (v36[0])(v8, v37);
  if (v17)
  {
    v18 = [v10 imageView];
    if (v18)
    {
      v19 = v18;
      v20 = *(v3 + OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_placeholderImage);
      [v19 setImage:v20];
    }

    sub_765330();
    v21 = [v10 imageView];
    if (v21)
    {
      v38 = v21;
      sub_BE70(0, &qword_949D90, UIImageView_ptr);
      sub_41ADDC();
      sub_76A6E0();
    }

    else
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
    }

    *(swift_allocObject() + 16) = v10;
    v24 = v10;
    sub_75A040();

    sub_10A2C(v39, &unk_9443A0, &unk_77E240);
  }

  else
  {
    v22 = [v10 imageView];
    if (v22)
    {
      v23 = v22;
      [v22 setImage:0];
    }
  }

  v25 = [v10 textLabel];
  if (v25)
  {
    v26 = v25;
    sub_7575A0();
    sub_757620();
    sub_B170((v16 + 16), *(v16 + 40));
    sub_762AB0();
    v28 = v27;
    (v36[0])(v8, v37);
    if (v28)
    {
      v29 = sub_769210();
    }

    else
    {
      v29 = 0;
    }

    [v26 setText:v29];
  }

  sub_7575A0();
  sub_757620();
  sub_B170((v16 + 16), *(v16 + 40));
  v30 = sub_762A90();
  v31 = v37;
  v32 = v36[0];
  (v36[0])(v8, v37);
  if (v30)
  {
    [v10 setAccessoryType:1];
  }

  else
  {
    sub_7575A0();
    sub_757620();
    sub_B170((v16 + 16), *(v16 + 40));
    v33 = sub_762AD0();
    v32(v8, v31);
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 0;
    }

    [v10 setAccessoryType:v34];
  }

  return v10;
}

uint64_t type metadata accessor for CategoryListViewController(uint64_t a1)
{
  result = qword_963970;
  if (!qword_963970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_71CD28(uint64_t a1, uint64_t a2)
{
  result = sub_757640();
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

id sub_71CDE4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = &a4[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&a4[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_placeholderImage] = 0;
  v10 = &a4[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_dataSource];
  *v10 = a1;
  *(v10 + 1) = &off_897040;
  *&a4[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_artworkLoader] = a2;
  v11 = OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_parentIndexPath;
  v12 = sub_757640();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&a4[v11], a3, v12);
  v18.receiver = a4;
  v18.super_class = ObjectType;

  v14 = objc_msgSendSuper2(&v18, "initWithStyle:", 0);
  v15 = [v14 navigationItem];
  v16 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v14 action:"dismissSelf"];
  [v15 setRightBarButtonItem:v16];

  (*(v13 + 8))(a3, v12);
  return v14;
}

uint64_t sub_71CF94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_758B40();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v62 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75F340();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v61 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_760280();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin(v10);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7687B0();
  __chkstk_darwin(v12 - 8);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = sub_765490();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v24 - 8);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v30 = &v50 - v29;
  v63 = a2;
  if (a1)
  {
    [v3 setModalPresentationStyle:{7, v28}];
    v31 = [v3 popoverPresentationController];
    [v31 setBarButtonItem:a1];

    v32 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v30, 1, v32) == 1)
    {
      v34 = v30;
      return sub_10A2C(v34, &unk_93F980, &qword_77EDA0);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v38 = *(v21 + 104);
    v51 = v23;
    v38(v23, enum case for FlowPage.viewController(_:), v20);
    v39 = sub_7570A0();
    v40 = *(*(v39 - 8) + 56);
    v50 = v19;
    v40(v19, 1, 1, v39);
    v41 = sub_759E30();
    (*(*(v41 - 8) + 56))(v16, 1, 1, v41);
    v65 = ObjectType;
    v64 = v3;
    v42 = v3;
    sub_768790();
    (*(v52 + 104))(v58, enum case for FlowPresentationContext.infer(_:), v53);
    (*(v56 + 104))(v61, enum case for FlowAnimationBehavior.infer(_:), v57);
    (*(v59 + 104))(v62, enum case for FlowOrigin.inapp(_:), v60);
    sub_768CE0();
    sub_758B20();
    swift_allocObject();
    v43 = sub_758AD0();
    sub_32AC14(v43, 1, v63, v30);

    return (*(v33 + 8))(v30, v32);
  }

  else
  {
    v35 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v26, 1, v35) == 1)
    {
      v34 = v26;
      return sub_10A2C(v34, &unk_93F980, &qword_77EDA0);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v44 = *(v21 + 104);
    v51 = v23;
    v44(v23, enum case for FlowPage.viewController(_:), v20);
    v45 = sub_7570A0();
    v46 = *(*(v45 - 8) + 56);
    v50 = v19;
    v46(v19, 1, 1, v45);
    v47 = sub_759E30();
    (*(*(v47 - 8) + 56))(v16, 1, 1, v47);
    v65 = ObjectType;
    v64 = v3;
    v48 = v3;
    sub_768790();
    (*(v52 + 104))(v58, enum case for FlowPresentationContext.infer(_:), v53);
    (*(v56 + 104))(v61, enum case for FlowAnimationBehavior.infer(_:), v57);
    (*(v59 + 104))(v62, enum case for FlowOrigin.inapp(_:), v60);
    sub_768CE0();
    sub_758B20();
    swift_allocObject();
    v49 = sub_758AD0();
    sub_32AC14(v49, 1, v63, v26);

    return (*(v36 + 8))(v26, v35);
  }
}

void sub_71D8A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_757640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_dataSource];
  sub_7575A0();
  sub_757620();
  sub_B170((v6 + 16), *(v6 + 40));
  v7 = sub_762A90();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7)
  {
    v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_artworkLoader];
    swift_unknownObjectRetain();

    sub_7575A0();
    sub_757620();
    v10 = sub_71CDE4(v6, v9, v5, objc_allocWithZone(ObjectType));
    swift_unknownObjectRelease();

    v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler];
    v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler + 8];
    v13 = &v10[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler];
    v14 = *&v10[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler];
    v15 = *&v10[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler + 8];
    *v13 = v11;
    v13[1] = v12;
    sub_F714(v11, v12);
    sub_47160(v14, v15);
    v16 = [v1 navigationController];
    if (v16)
    {
      v17 = v16;
      [v16 pushViewController:v10 animated:1];
    }
  }

  else
  {
    v18 = &v1[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler];
    v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_726DB7BA519CECBD730F6DC8057B64B226CategoryListViewController_selectionHandler];
    if (v19)
    {
      v20 = v18[1];

      sub_7575A0();
      sub_757620();
      v19(v5);
      sub_47160(v19, v20);
      v8(v5, v2);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
    v21 = *v18;
    v22 = v18[1];
    *v18 = 0;
    v18[1] = 0;
    sub_47160(v21, v22);
  }
}

uint64_t sub_71DB34()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_71DB6C(uint64_t a1)
{
  v3 = [*(v1 + 16) imageView];
  [v3 setImage:a1];
}

double sub_71DBD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_71DBEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_71DC2C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for InsetCollectionViewControllerContentView();
    if (swift_dynamicCastClass())
    {

      return;
    }
  }

  __break(1u);
}

void sub_71DC9C(char a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_7:
    __break(1u);
    return;
  }

  *(v5 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = a1 & 1;

  v6 = *&stru_108.segname[(swift_isaMask & *v1) + 16];

  v6();
}

id sub_71DD6C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = objc_allocWithZone(UICollectionView);

  return [v10 initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];
}

void sub_71DDE4()
{
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  v5 = 0.0;
  if ((v4 & 1) == 0)
  {
    v6 = [v0 view];
    if (!v6)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = v6;
    [v6 safeAreaInsets];
    v9 = v8;

    v5 = -v9;
  }

  v10 = [v0 collectionView];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  [v10 contentInset];
  v13 = v12;

  if (v13 == v5)
  {
    return;
  }

  v26 = [v0 collectionView];
  if (!v26)
  {
    goto LABEL_19;
  }

  v14 = [v0 collectionView];
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  [v14 contentInset];
  v17 = v16;

  v18 = [v0 collectionView];
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  [v18 contentInset];
  v21 = v20;

  v22 = [v0 collectionView];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 contentInset];
  v25 = v24;

  [v26 setContentInset:{v5, v17, v21, v25}];
}

uint64_t sub_71DFF0()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_3C80C();
  v4 = sub_769460();

  if (v4 >> 62)
  {
    result = sub_76A860();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_76A770();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
    v6 = *(v4 + 32);
LABEL_7:
    v7 = v6;

    v8 = v0;
    v9 = sub_76A1C0();

    return v9 & 1;
  }

  __break(1u);
  return result;
}

void *sub_71E10C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController);
  v2 = v1;
  return v1;
}

void sub_71E13C(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController);
  sub_761930();

  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  v6 = a1;

  (*&stru_158.segname[(swift_isaMask & *v1) + 16])();
  sub_761920();
}

void sub_71E220()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

void sub_71E2A0(char a1)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle) = a1;
  v2 = (*(&stru_158.flags + (swift_isaMask & *v1)))();
  v3 = [v1 navigationItem];
  v5 = v3;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [v3 setLargeTitleDisplayMode:v4];
}

void sub_71E368(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarTransitionDistance;
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_71E3B8();
}

void sub_71E39C(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress;
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_71E3B8();
}

void sub_71E3B8()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress + 8])
  {
    if (v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarTransitionDistance + 8])
    {
      v16 = [v0 navigationItem];
      [v16 _setManualScrollEdgeAppearanceEnabled:0];
    }

    else
    {
      v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarTransitionDistance];
      v9 = [v0 navigationItem];
      v10 = [v9 _isManualScrollEdgeAppearanceEnabled];

      if (v10)
      {
        v11 = [v0 navigationItem];
        [v11 _autoScrollEdgeTransitionDistance];
        v13 = v12;

        if (v13 == v8)
        {
          return;
        }
      }

      v14 = [v0 navigationItem];
      [v14 _setManualScrollEdgeAppearanceEnabled:0];

      v15 = [v0 navigationItem];
      [v15 _setAutoScrollEdgeTransitionDistance:v8];

      v16 = [v0 navigationItem];
      [v16 _setManualScrollEdgeAppearanceEnabled:1];
    }
  }

  else
  {
    v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress];
    v2 = [v0 navigationItem];
    v3 = [v2 _isManualScrollEdgeAppearanceEnabled];

    if (v3)
    {
      v4 = [v0 navigationItem];
      [v4 _manualScrollEdgeAppearanceProgress];
      v6 = v5;

      if (v6 == v1)
      {
        return;
      }
    }

    v7 = [v0 navigationItem];
    [v7 _setManualScrollEdgeAppearanceEnabled:1];

    v16 = [v0 navigationItem];
    [v16 _setManualScrollEdgeAppearanceProgress:v1];
  }
}

uint64_t sub_71E618(uint64_t a1, uint64_t a2)
{
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_77D9F0;
  sub_BD88(&qword_94DC40, &qword_791AE0);
  v4 = *(type metadata accessor for Accessory(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_77E280;
  v7 = (v6 + v5);
  v8 = *(sub_BD88(&qword_942CC8, &unk_782620) + 48);
  *v7 = 1;
  sub_1ED18(a2, &v7[v8], &qword_945020, qword_784B20);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationAccessory();
  v9 = swift_allocObject();
  v9[5] = sub_10D37C(_swiftEmptyArrayStorage);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v9[2] = sub_7214D0;
  v9[3] = v10;
  v9[4] = v6;
  *(v3 + 32) = v9;
  return v3;
}

char *sub_71E7CC(unint64_t a1)
{
  v2 = sub_BD88(&qword_945020, qword_784B20);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_758880();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v8 = a1 >> 62;
  if (!v8)
  {
    v36 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
    if (v36)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v36 = sub_76A860();
  if (!v36)
  {
    return 0;
  }

LABEL_3:
  if (v36 < 1)
  {
    __break(1u);
LABEL_33:
    result = sub_76A860();
    v22 = result;
    if (result)
    {
      goto LABEL_18;
    }

LABEL_34:

    return v6;
  }

  v27 = v8;
  v9 = 0;
  v32 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph;
  v10 = v37 & 0xC000000000000001;
  v11 = (v6 + 48);
  v29 = (v6 + 8);
  v30 = (v6 + 32);
  v33 = v37 & 0xC000000000000001;
  v31 = (v6 + 48);
  v28 = v4;
  do
  {
    if (v10)
    {
      v12 = sub_76A770();
    }

    else
    {
      v12 = *(v37 + 8 * v9 + 32);
    }

    v13 = v12;
    type metadata accessor for AccountButton(0);
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v35 = v14;
      sub_1ED18(v14 + qword_99DB70, v4, &qword_945020, qword_784B20);
      if ((*v11)(v4, 1, v5) == 1)
      {

        sub_10A2C(v4, &qword_945020, qword_784B20);
      }

      else
      {
        v15 = v34;
        (*v30)(v34, v4, v5);
        sub_763730();
        sub_768900();
        sub_768ED0();
        v16 = v38;
        v4 = v28;
        v11 = v31;
        sub_763720();

        v17 = v15;
        v10 = v33;
        (*v29)(v17, v5);
      }
    }

    else
    {
    }

    ++v9;
  }

  while (v36 != v9);
  if (!v27)
  {
    result = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
    if (result != &dword_0 + 1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  result = sub_76A860();
  if (result == &dword_0 + 1)
  {
LABEL_25:
    if (v10)
    {
      return sub_76A770();
    }

    if (!*(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_37;
    }

    return *(v37 + 32);
  }

LABEL_16:
  v19 = [objc_allocWithZone(sub_BD88(&qword_963AA0 &unk_7A1740))];
  *&v19[qword_9583D8] = 0;
  v6 = v19;
  [v6 setNeedsLayout];
  *&v6[qword_9583E0] = 5;
  [v6 setNeedsLayout];
  *&v6[qword_9583E8] = 0x4028000000000000;
  [v6 setNeedsLayout];
  v6[qword_9583F0] = 0;
  [v6 setNeedsLayout];
  sub_BD88(&qword_94DC60, &qword_7854E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 32) = v37;

  sub_3CFB24(inited);
  v8 = v21;
  swift_setDeallocating();
  result = sub_10A2C(inited + 32, &unk_945390, &unk_7851E0);
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v22 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  if (!v22)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (v22 >= 1)
  {
    for (i = 0; i != v22; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v24 = sub_76A770();
      }

      else
      {
        v24 = *(v8 + 8 * i + 32);
      }

      v25 = v24;
      [v6 addSubview:{v24, v27}];
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_71ED20()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationAccessories];

  v2 = [v0 traitCollection];
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
  v4 = v2;

  v5 = sub_2B2BC4(v1, v4, 0, v3);

  v6 = sub_71E7CC(v5);

  v7 = [v0 navigationItem];
  [v7 _setLargeTitleAccessoryView:v6 alignToBaseline:0];
}

double sub_71EE54(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = *a2;
  *&v3[*a2] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v6 = [v3 collectionView];
  if (v6)
  {
    v7 = v6;
    v8 = *&v3[v5];
    swift_unknownObjectRetain();
    [v7 *a3];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_71EF14(unsigned int *a1)
{
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v1 + v7, v11, &qword_93FED0, &unk_77DCE0);
  if (!v12)
  {
    return sub_10A2C(v11, &qword_93FED0, &unk_77DCE0);
  }

  sub_134D8(v11, v10);
  sub_10A2C(v11, &qword_93FED0, &unk_77DCE0);
  sub_B170(v10, v10[3]);
  (*(v4 + 104))(v6, *a1, v3);
  sub_7587C0();
  (*(v4 + 8))(v6, v3);
  return sub_BEB8(v10);
}

void sub_71F23C()
{
  v1 = sub_768C60();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93E0C8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v6 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_rootViewController), v7 = v6, swift_unknownObjectRelease(), !v6))
  {
    v21 = type metadata accessor for StoreCollectionViewController();
    v26.receiver = v0;
    v26.super_class = v21;
    objc_msgSendSuper2(&v26, "loadView");
    return;
  }

  v8 = [v7 view];

  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v24 = [objc_allocWithZone(type metadata accessor for InsetCollectionViewControllerContentView()) initWithFrame:{v10, v12, v14, v16}];
  [v24 setAutoresizingMask:18];
  [v0 setView:v24];
  v17 = [v0 collectionViewLayout];
  v18 = (*&stru_108.sectname[swift_isaMask & *v0])(v10, v12, v14, v16);

  [v18 setAutoresizingMask:18];
  [v18 setDelegate:*(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_collectionViewDelegate)];
  [v18 setDataSource:*(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_collectionViewDataSource)];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 addSubview:v18];

  [v0 setCollectionView:v18];
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_automationSemanticPageId + 8))
  {
    memset(v25, 0, sizeof(v25));

    sub_768C20();

    sub_10A2C(v25, &unk_93FBD0, &qword_77DFA0);
    sub_769E70();

    (*(v2 + 8))(v4, v1);
  }

  else
  {

    v22 = v24;
  }
}

void sub_71F63C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_7587B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoreCollectionViewController();
  v25.receiver = v0;
  v25.super_class = v6;
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v7 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v1 + v7, v22, &qword_93FED0, &unk_77DCE0);
  if (v23)
  {
    sub_134D8(v22, v21);
    sub_10A2C(v22, &qword_93FED0, &unk_77DCE0);
    sub_B170(v21, v21[3]);
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v2);
    sub_7587C0();
    (*(v3 + 8))(v5, v2);
    sub_BEB8(v21);
  }

  else
  {
    sub_10A2C(v22, &qword_93FED0, &unk_77DCE0);
  }

  v8 = [v1 navigationItem];
  [v8 _setSupportsTwoLineLargeTitles:1];

  LOBYTE(v8) = (*(&stru_158.flags + (swift_isaMask & *v1)))();
  v9 = [v1 navigationItem];
  v10 = v9;
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [v9 setLargeTitleDisplayMode:v11];

  v12 = (*&stru_158.segname[(swift_isaMask & *v1) - 8])();
  if (v12)
  {
    v13 = v12;
    v22[0] = (*&stru_158.segname[(swift_isaMask & *v1) + 16])();
    v22[1] = v14;
    v22[2] = v15;
    v23 = v16;
    v24 = 0;
    sub_761920();
  }

  sub_75F520();
  sub_7688F0();
  if (!v21[0])
  {
    goto LABEL_12;
  }

  v17 = [v1 collectionView];
  if (v17)
  {
    v18 = v17;
    [v17 bounds];

    sub_75F4C0();

LABEL_12:
    sub_BD88(&qword_9477F0, qword_780200);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_77B6D0;
    *(v19 + 32) = sub_767890();
    *(v19 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    sub_769900();
    swift_unknownObjectRelease();

    return;
  }

  __break(1u);
}

void sub_71FB2C(char a1)
{
  v2 = v1;
  v4 = sub_7587B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StoreCollectionViewController();
  v17.receiver = v2;
  v17.super_class = v8;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1 & 1);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v2 + v9, v16, &qword_93FED0, &unk_77DCE0);
  if (v16[3])
  {
    sub_134D8(v16, v15);
    sub_10A2C(v16, &qword_93FED0, &unk_77DCE0);
    sub_B170(v15, v15[3]);
    (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v4);
    sub_7587C0();
    (*(v5 + 8))(v7, v4);
    sub_BEB8(v15);
  }

  else
  {
    sub_10A2C(v16, &qword_93FED0, &unk_77DCE0);
  }

  v10 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_registeredForApplicationDidBecomeActive;
  if ((*(v2 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_registeredForApplicationDidBecomeActive) & 1) == 0)
  {
    v11 = [objc_opt_self() defaultCenter];
    [v11 addObserver:v2 selector:"applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    *(v2 + v10) = 1;
  }

  sub_763730();
  sub_7688F0();
  v12 = v16[0];
  if (v16[0])
  {
    v13.super.super.isa = v2;
    sub_763700(v13);
  }
}

void sub_71FDE0(char a1)
{
  v2 = v1;
  v4 = sub_7587B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for StoreCollectionViewController();
  v26.receiver = v2;
  v26.super_class = v8;
  objc_msgSendSuper2(&v26, "viewWillDisappear:", a1 & 1);
  v9 = [v2 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 parentViewController];
    if (v11 && (v12 = v11, sub_3C80C(), v10 = v10, v13 = sub_76A1C0(), v10, v12, (v13 & 1) != 0) && (v14 = [v10 viewControllers], v15 = sub_769460(), v14, sub_6FF814(v2, v15), LOBYTE(v14) = v16, , (v14 & 1) != 0))
    {
      v17 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
      swift_beginAccess();
      sub_1ED18(v2 + v17, v24, &qword_93FED0, &unk_77DCE0);
      if (v25)
      {
        sub_134D8(v24, v22);
        sub_10A2C(v24, &qword_93FED0, &unk_77DCE0);
        sub_B170(v22, v23);
        (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v4);
        sub_7587C0();

        (*(v5 + 8))(v7, v4);
        sub_BEB8(v22);
      }

      else
      {

        sub_10A2C(v24, &qword_93FED0, &unk_77DCE0);
      }
    }

    else
    {
    }
  }

  v18 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v2 + v18, v24, &qword_93FED0, &unk_77DCE0);
  if (v25)
  {
    sub_134D8(v24, v22);
    sub_10A2C(v24, &qword_93FED0, &unk_77DCE0);
    sub_B170(v22, v23);
    sub_768D50();
    (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v4);
    sub_7587C0();
    (*(v5 + 8))(v7, v4);
    sub_BEB8(v22);
  }

  else
  {
    sub_10A2C(v24, &qword_93FED0, &unk_77DCE0);
  }

  sub_763730();
  sub_7688F0();
  v19 = v24[0];
  if (v24[0])
  {
    v20.super.super.isa = v2;
    sub_763710(v20);
  }
}

void sub_7201F4()
{
  v1 = v0;
  v2 = sub_7587B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StoreCollectionViewController();
  v32.receiver = v1;
  v32.super_class = v10;
  objc_msgSendSuper2(&v32, "as_viewWillBecomeFullyVisible");
  v28 = v1;
  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 indexPathsForSelectedItems];

  v26 = v3;
  v27 = v2;
  v25 = v5;
  if (!v13)
  {
    v14 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage[2];
    if (v15 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v14 = sub_769460();

  v15 = v14[2];
  if (v15 != 0.0)
  {
LABEL_6:
    v16 = 0;
    while (v16 < *(v14 + 2))
    {
      (*(v7 + 16))(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v6);
      v17 = [v28 collectionView];
      if (!v17)
      {
        goto LABEL_14;
      }

      v18 = v17;
      ++v16;
      isa = sub_757550().super.isa;
      [v18 deselectItemAtIndexPath:isa animated:1];

      (*(v7 + 8))(v9, v6);
      if (*&v15 == v16)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v20 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  v21 = v28;
  swift_beginAccess();
  sub_1ED18(v21 + v20, v30, &qword_93FED0, &unk_77DCE0);
  if (v31)
  {
    sub_134D8(v30, v29);
    sub_10A2C(v30, &qword_93FED0, &unk_77DCE0);
    sub_B170(v29, v29[3]);
    v23 = v25;
    v22 = v26;
    v24 = v27;
    (*(v26 + 104))(v25, enum case for StoreViewControllerLifecycleEvent.willBecomeFullyVisible(_:), v27);
    sub_7587C0();
    (*(v22 + 8))(v23, v24);
    sub_BEB8(v29);
  }

  else
  {
    sub_10A2C(v30, &qword_93FED0, &unk_77DCE0);
  }
}

uint64_t sub_72064C(SEL *a1, unsigned int *a2)
{
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoreCollectionViewController();
  v16.receiver = v2;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, *a1);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v2 + v10, v14, &qword_93FED0, &unk_77DCE0);
  if (!v15)
  {
    return sub_10A2C(v14, &qword_93FED0, &unk_77DCE0);
  }

  sub_134D8(v14, v13);
  sub_10A2C(v14, &qword_93FED0, &unk_77DCE0);
  sub_B170(v13, v13[3]);
  (*(v6 + 104))(v8, *a2, v5);
  sub_7587C0();
  (*(v6 + 8))(v8, v5);
  return sub_BEB8(v13);
}

uint64_t sub_7208E0(char a1, SEL *a2, unsigned int *a3)
{
  v7 = sub_7587B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StoreCollectionViewController();
  v18.receiver = v3;
  v18.super_class = v11;
  objc_msgSendSuper2(&v18, *a2, a1 & 1);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v3 + v12, v16, &qword_93FED0, &unk_77DCE0);
  if (!v17)
  {
    return sub_10A2C(v16, &qword_93FED0, &unk_77DCE0);
  }

  sub_134D8(v16, v15);
  sub_10A2C(v16, &qword_93FED0, &unk_77DCE0);
  sub_B170(v15, v15[3]);
  (*(v8 + 104))(v10, *a3, v7);
  sub_7587C0();
  (*(v8 + 8))(v10, v7);
  return sub_BEB8(v15);
}

id sub_720F54(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StoreCollectionViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_7212CC(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_automationSemanticPageId];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_registeredForApplicationDidBecomeActive] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController] = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 0;
  v6 = &v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarTransitionDistance];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress];
  *v7 = 0;
  v7[8] = 1;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationAccessories] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_collectionViewDelegate] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_collectionViewDataSource] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for StoreCollectionViewController();
  return objc_msgSendSuper2(&v9, "initWithCollectionViewLayout:", a1);
}

void sub_7213C0()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_automationSemanticPageId);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_registeredForApplicationDidBecomeActive) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle) = 0;
  v3 = v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarTransitionDistance;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationAccessories) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_collectionViewDelegate) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_collectionViewDataSource) = 0;
  sub_76A840();
  __break(1u);
}

double *sub_7214D8(uint64_t a1, int a2)
{
  v5 = sub_766690();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75AE80();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = _swiftEmptyArrayStorage;
  sub_75AE90();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 != enum case for ShareSheetData.Metadata.article(_:))
  {
    LODWORD(v113) = a2;
    v46 = a1;
    if (v13 == enum case for ShareSheetData.Metadata.product(_:))
    {
      v114 = v6;
      v115 = v5;
      (*(v10 + 96))(v12, v9);
      v47 = *v12;
      sub_BD88(&unk_95D700, qword_7A95B0);
      inited = swift_initStackObject();
      v110 = xmmword_77B6D0;
      *(inited + 16) = xmmword_77B6D0;
      v49 = UIActivityTypeSaveToNotes;
      *(inited + 32) = UIActivityTypeSaveToNotes;
      v50 = v49;
      sub_1A210C(inited);
      v52 = v51;
      swift_setDeallocating();
      sub_72262C(inited + 32);
      v53 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

      v54 = sub_5E2494(v2, a1, v52);
      sub_769440();
      if (*(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v123 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      v111 = v54;
      sub_769500();
      v112 = v47;
      v55 = sub_761780();
      v56 = swift_initStackObject();
      *(v56 + 16) = v110;
      *(v56 + 32) = v50;
      v57 = v56 + 32;
      sub_1A210C(v56);
      v59 = v58;
      swift_setDeallocating();
      sub_72262C(v57);
      v60 = type metadata accessor for ArtworkActivityItemProvider();
      v61 = objc_allocWithZone(v60);
      v62 = OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_imageBox;
      v121 = 0;
      sub_BD88(&qword_963AA8, &unk_7AFEB0);
      swift_allocObject();
      *&v61[v62] = sub_764060();
      *&v61[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artwork] = v55;
      *&v61[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artworkLoader] = v46;

      sub_765260();
      sub_7666A0();
      sub_766680();
      (*(v114 + 8))(v8, v115);
      sub_765260();
      sub_769D70();
      *&v61[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artworkConfig] = sub_765330();
      if (qword_93DFC8 != -1)
      {
        swift_once();
      }

      v63 = qword_95FC10;

      sub_72253C(v59, v63);
      *&v61[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_excludedActivityTypes] = v64;
      v61[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = v113 & 1;
      v65 = [objc_allocWithZone(UIImage) init];
      v119.receiver = v61;
      v119.super_class = v60;
      v66 = objc_msgSendSuper2(&v119, "initWithPlaceholderItem:", v65);

      sub_BD88(&unk_93F5C0, &unk_77C600);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_77D9F0;
      *(v67 + 32) = *&v66[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artworkConfig];
      v68 = v66;

      v69._rawValue = v67;
      sub_75A070(v69);

      v70 = v68;
      sub_769440();
      if (*(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v123 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
      v28 = v123;
      v71 = sub_761740();
      v72 = v111;
      if (!v71)
      {

        return v28;
      }

      v73 = v71;
      v74 = type metadata accessor for NotesMetadataActivityItemProvider();
      v75 = objc_allocWithZone(v74);
      *&v75[OBJC_IVAR____TtC18ASMessagesProvider33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata] = xmmword_7AFEA0;
      *&v75[OBJC_IVAR____TtC18ASMessagesProvider33NotesMetadataActivityItemProvider_metadata] = v73;

      v76 = sub_769210();
      v118.receiver = v75;
      v118.super_class = v74;
      v77 = objc_msgSendSuper2(&v118, "initWithPlaceholderItem:", v76);

      v78 = v77;
      sub_769440();
      if (*(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v123 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();

      goto LABEL_38;
    }

    if (v13 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v10 + 8))(v12, v9);
      return _swiftEmptyArrayStorage;
    }

    v115 = v5;
    (*(v10 + 96))(v12, v9);
    v79 = *v12;
    v80 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

    v81 = sub_5E2494(v2, a1, _swiftEmptySetSingleton);
    sub_769440();
    if (*(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v123 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    v113 = v81;
    v114 = v6;
    sub_769500();
    v82 = sub_757670();
    v84 = v83;
    v85 = type metadata accessor for TextActivityItemProvider();
    v86 = objc_allocWithZone(v85);
    v87 = &v86[OBJC_IVAR____TtC18ASMessagesProvider24TextActivityItemProvider_text];
    *v87 = v82;
    v87[1] = v84;
    v88 = qword_93DF68;

    if (v88 != -1)
    {
      swift_once();
    }

    v89 = qword_95EC40;

    sub_72253C(_swiftEmptySetSingleton, v89);
    *&v86[OBJC_IVAR____TtC18ASMessagesProvider24TextActivityItemProvider_excludedActivityTypes] = v90;
    v91 = sub_769210();

    v122.receiver = v86;
    v122.super_class = v85;
    v92 = objc_msgSendSuper2(&v122, "initWithPlaceholderItem:", v91);

    v27 = v92;
    sub_769440();
    if (*(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v123 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    v28 = v123;
    v93 = sub_757680();
    if (v93)
    {
      v94 = v93;
      v112 = v79;
      sub_BD88(&unk_95D700, qword_7A95B0);
      v95 = swift_initStackObject();
      *(v95 + 16) = xmmword_77B6D0;
      v96 = UIActivityTypeSaveToNotes;
      *(v95 + 32) = UIActivityTypeSaveToNotes;
      v97 = v96;
      sub_1A210C(v95);
      v111 = v98;
      swift_setDeallocating();
      sub_72262C(v95 + 32);
      v99 = type metadata accessor for ArtworkActivityItemProvider();
      v100 = objc_allocWithZone(v99);
      v101 = OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_imageBox;
      v121 = 0;
      sub_BD88(&qword_963AA8, &unk_7AFEB0);
      swift_allocObject();

      *&v100[v101] = sub_764060();
      *&v100[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artwork] = v94;
      *&v100[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artworkLoader] = a1;

      sub_765260();
      sub_7666A0();
      sub_766680();
      (*(v114 + 8))(v8, v115);
      sub_765260();
      sub_769D70();
      *&v100[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artworkConfig] = sub_765330();
      if (qword_93DFC8 != -1)
      {
        swift_once();
      }

      v102 = qword_95FC10;

      sub_72253C(v111, v102);
      *&v100[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_excludedActivityTypes] = v103;
      v100[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
      v104 = [objc_allocWithZone(UIImage) init];
      v120.receiver = v100;
      v120.super_class = v99;
      v105 = objc_msgSendSuper2(&v120, "initWithPlaceholderItem:", v104);

      sub_BD88(&unk_93F5C0, &unk_77C600);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_77D9F0;
      *(v106 + 32) = *&v105[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artworkConfig];
      v107 = v105;

      v108._rawValue = v106;
      sub_75A070(v108);

      v45 = v107;
      sub_769440();
      if (*(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v123 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      goto LABEL_37;
    }

LABEL_39:

    return v28;
  }

  v115 = v5;
  (*(v10 + 96))(v12, v9);
  v14 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

  v15 = sub_5E2494(v2, a1, _swiftEmptySetSingleton);
  sub_769440();
  if (*(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v123 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  v113 = v15;
  v114 = v6;
  sub_769500();
  v16 = sub_761700();
  v18 = v17;
  v19 = type metadata accessor for TextActivityItemProvider();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC18ASMessagesProvider24TextActivityItemProvider_text];
  *v21 = v16;
  v21[1] = v18;
  v22 = qword_93DF68;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_95EC40;

  sub_72253C(_swiftEmptySetSingleton, v23);
  *&v20[OBJC_IVAR____TtC18ASMessagesProvider24TextActivityItemProvider_excludedActivityTypes] = v24;
  v25 = sub_769210();

  v117.receiver = v20;
  v117.super_class = v19;
  v26 = objc_msgSendSuper2(&v117, "initWithPlaceholderItem:", v25);

  v27 = v26;
  sub_769440();
  if (*(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v123 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v28 = v123;
  v29 = sub_761710();
  if (!v29)
  {
    goto LABEL_39;
  }

  v30 = v29;
  sub_BD88(&unk_95D700, qword_7A95B0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_77B6D0;
  v32 = UIActivityTypeSaveToNotes;
  *(v31 + 32) = UIActivityTypeSaveToNotes;
  v33 = v32;
  sub_1A210C(v31);
  v112 = v34;
  swift_setDeallocating();
  sub_72262C(v31 + 32);
  v35 = type metadata accessor for ArtworkActivityItemProvider();
  v36 = objc_allocWithZone(v35);
  v37 = OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_imageBox;
  v121 = 0;
  sub_BD88(&qword_963AA8, &unk_7AFEB0);
  swift_allocObject();

  *&v36[v37] = sub_764060();
  *&v36[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artwork] = v30;
  *&v36[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artworkLoader] = a1;

  sub_765260();
  sub_7666A0();
  sub_766680();
  (*(v114 + 8))(v8, v115);
  sub_765260();
  sub_769D70();
  *&v36[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artworkConfig] = sub_765330();
  if (qword_93DFC8 != -1)
  {
    swift_once();
  }

  v38 = qword_95FC10;

  sub_72253C(v112, v38);
  *&v36[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_excludedActivityTypes] = v39;
  v36[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
  v40 = [objc_allocWithZone(UIImage) init];
  v116.receiver = v36;
  v116.super_class = v35;
  v41 = objc_msgSendSuper2(&v116, "initWithPlaceholderItem:", v40);

  sub_BD88(&unk_93F5C0, &unk_77C600);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_77D9F0;
  *(v42 + 32) = *&v41[OBJC_IVAR____TtC18ASMessagesProvider27ArtworkActivityItemProvider_artworkConfig];
  v43 = v41;

  v44._rawValue = v42;
  sub_75A070(v44);

  v45 = v43;
  sub_769440();
  if (*(&dword_10 + (v123 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v123 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

LABEL_37:
  sub_769500();

LABEL_38:

  return v123;
}

void sub_72253C(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_1A0400(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_72262C(uint64_t a1)
{
  type metadata accessor for ActivityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ProductEditorsChoiceView(uint64_t a1)
{
  result = qword_963BC0;
  if (!qword_963BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7227BC@<X0>(char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = sub_766950();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_766930();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = v5;
  sub_766940();

  v16 = *(v9 + 8);
  v16(v11, v8);
  a4[3] = v8;
  a4[4] = &protocol witness table for VerticalStack;
  sub_B1B4(a4);
  sub_766940();
  return (v16)(v14, v8);
}

char *sub_72296C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_7666D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_760AD0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v19 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v19 - 8);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  v4[qword_963BB8] = 0;
  v25 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
  v26 = sub_2E0BE8(3, 0, 0, 0, 1u);
  v56 = v4;
  *&v4[qword_963BA0] = v26;
  if (qword_93D6F0 != -1)
  {
    swift_once();
  }

  v27 = sub_BE38(v9, qword_99ECC8);
  v52 = *(v10 + 16);
  v53 = v27;
  v52(v24, v27, v9);
  (*(v10 + 56))(v24, 0, 1, v9);
  (*(v13 + 104))(v18, enum case for DirectionalTextAlignment.none(_:), v12);
  v28 = objc_allocWithZone(type metadata accessor for FadeOutDynamicTypeLabel(0));
  v29 = qword_949A90;
  *&v28[v29] = [objc_allocWithZone(type metadata accessor for InvertedGradientLayer()) init];
  v30 = &v28[qword_949A98];
  *v30 = 0;
  v30[8] = 1;
  sub_1E9A94(v24, v21);
  (*(v13 + 16))(v15, v18, v12);
  v31 = sub_75BB10();
  (*(v13 + 8))(v18, v12);
  sub_11A38(v24);
  v32 = v56;
  *&v56[qword_963BA8] = v31;
  v33 = [objc_opt_self() clearColor];
  type metadata accessor for FadeInDynamicTypeButton(0);
  v34 = v54;
  v52(v54, v53, v9);
  v35 = v33;
  v36 = sub_FD810(v34, v35);

  v37 = v36;
  v58._countAndFlagsBits = 0x4D5F4E4F49544341;
  v58._object = 0xEB0000000045524FLL;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  sub_75B750(v58, v59);
  v38 = sub_769210();

  [v37 setTitle:v38 forState:0];

  [v37 setContentEdgeInsets:{COERCE_DOUBLE(1), 0.0, 0.0, 0.0}];
  [v37 setAdjustsImageWhenHighlighted:0];

  *&v32[qword_963BB0] = v37;
  v57.receiver = v32;
  v57.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v57, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v43 = v39;
  [v43 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v44 = qword_963BA0;
  v45 = *&v43[qword_963BA0];
  sub_396E8();
  v46 = v45;
  v47 = sub_769FD0();
  [v46 setTintColor:v47];

  [v43 addSubview:*&v43[v44]];
  v48 = qword_963BA8;
  [*&v43[qword_963BA8] setLineBreakMode:0];
  [v43 addSubview:*&v43[v48]];
  v49 = qword_963BB0;
  [*&v43[qword_963BB0] setUserInteractionEnabled:0];
  [v43 addSubview:*&v43[v49]];

  return v43;
}

void sub_722F7C(uint64_t a1)
{
  *(a1 + qword_963BB8) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_722FE4@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v8 = *(v1 + qword_963BA0);
  type metadata accessor for EditorsChoiceView();
  sub_7665D0();
  v3 = *(v1 + qword_963BA8);
  v6[3] = type metadata accessor for FadeOutDynamicTypeLabel(0);
  v6[4] = &protocol witness table for UILabel;
  v6[0] = v3;
  v4 = v3;
  sub_7227BC([v8 isHidden], a1);
  sub_BEB8(v7);
  return sub_BEB8(v6);
}

id sub_7230B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_7664A0();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v4 = (&v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_766CA0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_767030();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v13 = sub_766D70();
  v64 = *(v13 - 8);
  v65 = v13;
  __chkstk_darwin(v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766CF0();
  v16 = sub_766D00();
  v16();
  if (v0[qword_963BB8] == 1)
  {
    v17 = *&v0[qword_963BB0];

    return [v17 setHidden:1];
  }

  else
  {
    v58 = v6;
    v59 = v5;
    v60 = *&v0[qword_963BA8];
    v19 = [v60 text];
    if (v19)
    {
      v20 = v19;
      sub_769240();
    }

    sub_767020();
    if (qword_93D6F0 != -1)
    {
      swift_once();
    }

    v21 = sub_7666D0();
    sub_BE38(v21, qword_99ECC8);
    sub_766FF0();
    (*(v9 + 8))(v11, v8);
    sub_766D50();
    v22 = v15;
    sub_766D90();
    sub_75D650();
    CGRectGetWidth(v69);
    v23 = [v1 traitCollection];
    sub_766D60();
    v25 = v24;

    v26 = v60;
    [v60 frame];
    Height = CGRectGetHeight(v70);
    v28 = *&v1[qword_963BB0];
    if (Height >= v25)
    {
      [*&v1[qword_963BB0] setHidden:1];
    }

    else
    {
      [*&v1[qword_963BB0] setHidden:0];
      sub_75D650();
      [v28 sizeThatFits:{v29, v30}];
      v32 = v31;
      *v4 = UIFontTextStyleBody;
      v34 = v61;
      v33 = v62;
      (*(v61 + 104))(v4, enum case for FontSource.textStyle(_:), v62);
      v67[3] = v33;
      v67[4] = &protocol witness table for FontSource;
      v35 = sub_B1B4(v67);
      (*(v34 + 16))(v35, v4, v33);
      v36 = UIFontTextStyleBody;
      v37 = v63;
      sub_766CB0();
      (*(v34 + 8))(v4, v33);
      sub_75D650();
      Width = CGRectGetWidth(v71);
      [v26 frame];
      v39 = v32 - (Width - CGRectGetWidth(v72));
      v40 = [v1 traitCollection];
      sub_7671D0();
      v41 = v26;
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_77D9F0;
      *(v42 + 32) = v40;
      v15 = v22;
      v43 = v40;
      v44 = sub_7671E0();
      v45 = v59;
      sub_7666E0();
      v47 = v46;

      v48 = &v41[qword_949A98];
      *v48 = v39 + v47;
      *(v48 + 8) = 0;
      [v41 setNeedsLayout];
      sub_75D650();
      CGRectGetMaxX(v73);
      [v41 frame];
      CGRectGetMaxY(v74);
      v49 = [v1 traitCollection];
      sub_75D650();
      sub_769CA0();
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;

      [v28 setFrame:{v51, v53, v55, v57}];
      (*(v58 + 8))(v37, v45);
    }

    return (*(v64 + 8))(v15, v65);
  }
}

void sub_7237EC()
{
  v1 = *(v0 + qword_963BB0);
}

void sub_72383C(uint64_t a1)
{
  v2 = *(a1 + qword_963BB0);
}

uint64_t sub_723928@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_BD88(&qword_963790, qword_77EBC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_75DA50();
  sub_353788(v7);
  v8 = sub_BD88(&unk_94F1F0, &qword_782290);
  (*(*(v8 - 8) + 48))(v4, 1, v8);
  sub_353788(v4);
  a1[3] = sub_75B680();
  a1[4] = sub_2A8548(v9);
  sub_B1B4(a1);
  return sub_75B670();
}

uint64_t sub_723AC0(uint64_t a1)
{
  v2 = sub_768380();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7683C0();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7687C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() currentThread];
  v13 = [v12 isMainThread];

  if (v13)
  {
    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    sub_768F60();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_12EA98();
    v15 = sub_769970();
    aBlock[4] = sub_7242CC;
    aBlock[5] = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_89E7F0;
    v16 = _Block_copy(aBlock);

    sub_7683A0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_7242EC(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350, &unk_77F850);
    sub_4C874();
    sub_76A5A0();
    sub_769980();
    _Block_release(v16);

    (*(v18 + 8))(v4, v2);
    return (*(v5 + 8))(v7, v17);
  }
}

uint64_t sub_723E68()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_768F60();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_723F5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_7687C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_963C18, qword_7B0088);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  v9 = sub_75DD70();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DCA0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_72425C(v8);
    sub_BD88(&qword_94DDC0, qword_77DE00);
    (*(v3 + 104))(v5, enum case for ActionOutcome.unsupported(_:), v2);
    return sub_768F30();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_BD88(&unk_944300, &qword_77DEE0);
    sub_768900();
    sub_768ED0();
    sub_764490();
    swift_allocObject();
    sub_764480();
    sub_BD88(&qword_94DDC0, qword_77DE00);
    v14 = sub_768F90();

    sub_764470();
    swift_unknownObjectRelease();

    (*(v10 + 8))(v12, v9);
    return v14;
  }
}

uint64_t sub_72425C(uint64_t a1)
{
  v2 = sub_BD88(&qword_963C18, qword_7B0088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_7242D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_7242EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_724334()
{
  sub_13238(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_724394(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C830();
  v11 = sub_7575D0();
  (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      if (a1)
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 8);
        v16 = a1;
        v17 = v15(ObjectType, v13);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          v20 = [Strong view];

          if (!v20)
          {
            __break(1u);
            goto LABEL_19;
          }

          v21 = [v20 safeAreaLayoutGuide];

          [v21 layoutFrame];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          v50.origin.x = v23;
          v50.origin.y = v25;
          v50.size.width = v27;
          v50.size.height = v29;
          MinY = CGRectGetMinY(v50);
        }

        else
        {
          MinY = 0.0;
        }

        v31 = v17 - MinY;
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          v33 = v32;
          v34 = *(v4 + 24);
          v35 = swift_getObjectType();
          v36 = (*(v34 + 8))(v35, v34);

          if (v36)
          {
            sub_2ED8B8(a3, v31);
          }
        }

        v37 = swift_unknownObjectWeakLoadStrong();
        if (!v37)
        {
          v38 = v16;
          goto LABEL_16;
        }

        v38 = v37;
        v39 = [v37 collectionView];
        if (v39)
        {
          v40 = v39;
          [v39 _pocketInsets];
          v42 = v41;
          v44 = v43;
          v46 = v45;

          v47 = [v38 collectionView];
          if (v47)
          {
            v48 = v47;
            [v47 _setPocketInsets:{v31, v42, v44, v46}];

LABEL_16:
            return;
          }

LABEL_20:
          __break(1u);
          return;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }
  }
}

void sub_7247A8(void *a1)
{
  v2 = v1;
  v4 = [a1 viewControllerForKey:{UITransitionContextToViewControllerKey, sub_B584C(0)}];
  v5 = &selRef_setInterGroupSpacing_;
  if (v4)
  {
    v6 = v4;
    [a1 finalFrameForViewController:v4];
  }

  else
  {
    v6 = [a1 containerView];
    [v6 bounds];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v114.origin.x = v11;
  v114.origin.y = v12;
  v114.size.width = v13;
  v114.size.height = v14;
  MidX = CGRectGetMidX(v114);
  v115.origin.x = v11;
  v115.origin.y = v12;
  v115.size.width = v13;
  v115.size.height = v14;
  MidY = CGRectGetMidY(v115);
  v116.origin.x = v11;
  v116.origin.y = v12;
  v116.size.width = v13;
  v116.size.height = v14;
  v104 = CGRectGetMidX(v116);
  v117.origin.x = v11;
  v117.origin.y = v12;
  v117.size.width = v13;
  v117.size.height = v14;
  v102 = CGRectGetMidY(v117);
  v15 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCollectionViewController];
  v16 = 0.0;
  if (v15)
  {
    v17 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCollectionViewController] view];
    v18 = 0.0;
    if (v17)
    {
      v19 = v17;
      [v17 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = [a1 containerView];
      [v19 convertRect:v28 toCoordinateSpace:{v21, v23, v25, v27}];
      v16 = v29;
      v18 = v30;

      MidY = MidY - v18;
      MidX = MidX - v16;
    }
  }

  else
  {
    v18 = 0.0;
  }

  v31 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCardView];
  v32 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCenter];
  v33 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCenter + 8];
  v34 = v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCenter + 16];
  if (v31 && (v2[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCenter + 16] & 1) == 0)
  {
    if (v15)
    {
      v35 = v31;
      v36 = v15;
      v37 = [v36 view];
      if (!v37)
      {
        __break(1u);
        return;
      }

      v38 = v37;
      [v37 addSubview:v35];

      v5 = &selRef_setInterGroupSpacing_;
    }

    else
    {
      v39 = v31;
      v38 = [a1 containerView];
      [v38 addSubview:v39];
    }

    [v31 setCenter:{v32, v33}];
  }

  v40 = [a1 viewForKey:{UITransitionContextToViewKey, *&v102}];
  v41 = v40;
  if (!v15)
  {
    v44 = 0.25;
    if (!v40)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v42 = [v15 traitCollection];
  v43 = [v42 horizontalSizeClass];

  if (v43 == &dword_0 + 1)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 0.25;
  }

  if (v41)
  {
LABEL_22:
    v45 = v41;
    v46 = [a1 v5[72]];
    [v46 addSubview:v45];

    if ((v31 == 0) | v34 & 1)
    {
      v118.origin.x = v11;
      v118.origin.y = v12;
      v118.size.width = v13;
      v118.size.height = v14;
      v47 = v44 * CGRectGetWidth(v118);
      v119.origin.x = v11;
      v119.origin.y = v12;
      v119.size.width = v13;
      v119.size.height = v14;
      v48 = CGRectGetHeight(v119) * 0.25;
      v120.origin.x = v11;
      v120.origin.y = v12;
      v120.size.width = v13;
      v120.size.height = v14;
      v121 = CGRectInset(v120, v47, v48);
      width = v121.size.width;
      height = v121.size.height;
      v121.origin.x = v11;
      v121.origin.y = v12;
      v121.size.width = v13;
      v121.size.height = v14;
      v51 = CGRectGetMidX(v121);
      v122.origin.x = v11;
      v122.origin.y = v12;
      v122.size.width = v13;
      v122.size.height = v14;
      v52 = CGRectGetMidY(v122);
      v53 = 0.0;
      v54 = 0.0;
    }

    else
    {
      [v31 bounds];
      width = v55;
      height = v56;
      v51 = v16 + v32;
      v52 = v18 + v33;
    }

    [v45 setBounds:{v53, v54, width, height}];
    [v45 setCenter:{v51, v52}];
    [v45 setNeedsLayout];
    [v45 layoutIfNeeded];
    [v45 setAlpha:0.0];
  }

LABEL_26:
  v57 = _swiftEmptyArrayStorage;
  v113 = _swiftEmptyArrayStorage;
  v58 = &selRef_absoluteDimension_;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v59 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
    v60 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v59 timingParameters:0.0];

    v61 = swift_allocObject();
    *(v61 + 16) = v2;
    *(v61 + 24) = v31;
    *(v61 + 32) = 0;
    *(v61 + 40) = 0;
    *(v61 + 48) = v13;
    *(v61 + 56) = v14;
    *(v61 + 64) = MidX;
    *(v61 + 72) = MidY;
    *(v61 + 80) = v41;
    *(v61 + 88) = v104;
    *(v61 + 96) = v103;
    v111 = sub_725808;
    v112 = v61;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_23F0CC;
    v110 = &unk_89E840;
    v62 = _Block_copy(&aBlock);
    v63 = v31;
    v64 = v41;
    v65 = v2;

    [v60 addAnimations:v62];
    _Block_release(v62);
    v66 = swift_allocObject();
    *(v66 + 16) = a1;
    *(v66 + 24) = v65;
    v111 = sub_725840;
    v112 = v66;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v58 = &selRef_absoluteDimension_;
    v109 = sub_19EE34;
    v110 = &unk_89E890;
    v67 = _Block_copy(&aBlock);
    v68 = v65;
    swift_unknownObjectRetain();

    [v60 addCompletion:v67];
    _Block_release(v67);
    v69 = v60;
    sub_769440();
    if (*(&dword_10 + (v113 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v113 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v57 = v113;
  }

  if (v31)
  {
    v70 = v31;
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v71 = swift_allocObject();
      *(v71 + 16) = v70;
      v72 = objc_allocWithZone(UIViewPropertyAnimator);
      v111 = sub_29D028;
      v112 = v71;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_23F0CC;
      v110 = &unk_89E9D0;
      v73 = _Block_copy(&aBlock);
      v74 = v70;

      v75 = [v72 initWithDuration:v73 controlPoint1:0.28 controlPoint2:0.17 animations:{0.0, 0.67, 1.0}];
      _Block_release(v73);
      v76 = swift_allocObject();
      *(v76 + 16) = v74;
      v111 = sub_29D03C;
      v112 = v76;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_19EE34;
      v110 = &unk_89EA20;
      v77 = _Block_copy(&aBlock);
      v78 = v74;

      [v75 v58[266]];
      _Block_release(v77);

      v79 = v75;
      sub_769440();
      if (*(&dword_10 + (v113 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v113 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();

      v57 = v113;
      if (!v41)
      {
        goto LABEL_44;
      }

      goto LABEL_38;
    }
  }

  if (v41)
  {
LABEL_38:
    v80 = v41;
    if (UIAccessibilityIsReduceMotionEnabled())
    {
    }

    else
    {
      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      v82 = objc_allocWithZone(UIViewPropertyAnimator);
      v111 = sub_255220;
      v112 = v81;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_23F0CC;
      v110 = &unk_89E980;
      v83 = _Block_copy(&aBlock);
      v84 = v80;

      v85 = [v82 initWithDuration:v83 controlPoint1:0.13 controlPoint2:0.33 animations:{0.0, 0.83, 0.83}];
      _Block_release(v83);

      if (v85)
      {
        v86 = v85;
        sub_769440();
        if (*(&dword_10 + (v113 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v113 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();

        v57 = v113;
      }
    }
  }

LABEL_44:
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    [v41 setBounds:{0.0, 0.0, v13, v14}];
    [v41 setCenter:{v104, v103}];
    v87 = swift_allocObject();
    *(v87 + 16) = v2;
    *(v87 + 24) = v41;
    v88 = objc_allocWithZone(UIViewPropertyAnimator);
    v111 = sub_725884;
    v112 = v87;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_23F0CC;
    v110 = &unk_89E8E0;
    v89 = _Block_copy(&aBlock);
    v90 = v41;
    v91 = v2;

    v92 = [v88 initWithDuration:0 curve:v89 animations:0.3];
    _Block_release(v89);
    v93 = swift_allocObject();
    *(v93 + 16) = a1;
    *(v93 + 24) = v91;
    v111 = sub_725900;
    v112 = v93;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_19EE34;
    v110 = &unk_89E930;
    v94 = _Block_copy(&aBlock);
    v95 = v91;
    swift_unknownObjectRetain();

    [v92 v58[266]];
    _Block_release(v94);
    v96 = v92;
    sub_769440();
    if (*(&dword_10 + (v113 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v113 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v57 = v113;
  }

  if (v57 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v98 = 0;
    while (1)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v99 = sub_76A770();
      }

      else
      {
        if (v98 >= *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_59;
        }

        v99 = *(v57 + 8 * v98 + 32);
      }

      v100 = v99;
      v101 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      [v99 startAnimation];

      ++v98;
      if (v101 == i)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_61:
}

id sub_7254E8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, void *a10, void *a11)
{
  sub_B584C(1);
  [a10 setBounds:{a1, a2, a3, a4}];
  [a10 setCenter:{a5, a6}];
  [a11 setBounds:{a1, a2, a3, a4}];

  return [a11 setCenter:{a7, a8}];
}

void sub_7255D4(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 48);
    v8 = (v5 + 48);
    do
    {
      v9 = *v8;
      v8 += 24;
      if (v9 == 1)
      {
        v10 = *(v7 - 2);

        v10(1, 1);
      }

      v7 = v8;
      --v6;
    }

    while (v6);
  }

  if (a2)
  {
    [a2 setAlpha:1.0];
  }
}

void sub_7256DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionPageOpenAnimation_fromCollectionViewController);
}

id sub_72571C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppPromotionPageOpenAnimation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_7257C0()
{

  return _swift_deallocObject(v0, 104, 7);
}

double sub_725824(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_725844()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_72588C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_725904(__n128 a1)
{
  v50 = sub_75A3A0();
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_758800();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = sub_BD88(&qword_963D20, qword_7B0200);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_759950();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v52 = v1;
  sub_758830();
  if (v20)
  {

    sub_759940();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_10A2C(v12, &qword_963D20, qword_7B0200);
      v21 = sub_759900();
    }

    else
    {

      (*(v14 + 32))(v19, v12, v13);
      v21 = sub_759930();
      (*(v14 + 8))(v19, v13);
    }
  }

  else
  {
    v21 = 0;
  }

  sub_758820();
  v22 = (*(v53 + 88))(v9, v54);
  if (v22 == enum case for StoreTab.Identifier.today(_:))
  {
    sub_758870();
    if (!v23)
    {
      v55._object = 0x80000000007F3580;
      v55._countAndFlagsBits = 0xD000000000000010;
      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      sub_75B750(v55, v60);
    }

    if (v21)
    {
      v24 = v21;
    }

    else
    {
      (*(v14 + 104))(v16, enum case for SystemImage.docTextImage(_:), v13);
      v24 = sub_759930();
      (*(v14 + 8))(v16, v13);
    }

    v27 = &enum case for NavigationTab.today(_:);
LABEL_34:
    v40 = v50;
    (*(v2 + 104))(v4, *v27, v50);
    v41 = v21;
    v42 = sub_75A390();
    (*(v2 + 8))(v4, v40);
    v43 = objc_allocWithZone(UITabBarItem);
    v44 = sub_769210();

    v45 = [v43 initWithTitle:v44 image:v24 tag:v42];

    v46 = v51;
    sub_758820();
    v39 = sub_7697F0();

    (*(v53 + 8))(v46, v54);
    return v39;
  }

  if (v22 == enum case for StoreTab.Identifier.games(_:))
  {
    sub_758870();
    if (!v25)
    {
      v56._object = 0x80000000007F3560;
      v56._countAndFlagsBits = 0xD000000000000010;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      sub_75B750(v56, v61);
    }

    if (v21)
    {
      v24 = v21;
    }

    else
    {
      (*(v14 + 104))(v16, enum case for SystemImage.rocketFill(_:), v13);
      v24 = sub_759930();
      (*(v14 + 8))(v16, v13);
    }

    v27 = &enum case for NavigationTab.games(_:);
    goto LABEL_34;
  }

  if (v22 == enum case for StoreTab.Identifier.apps(_:))
  {
LABEL_17:
    sub_758870();
    if (!v26)
    {
      v57._countAndFlagsBits = 0x5449545F45474150;
      v57._object = 0xEF535050415F454CLL;
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      sub_75B750(v57, v62);
    }

    if (v21)
    {
      v24 = v21;
    }

    else
    {
      (*(v14 + 104))(v16, enum case for SystemImage.app3Stack3DFill(_:), v13);
      v24 = sub_759930();
      (*(v14 + 8))(v16, v13);
    }

    v27 = &enum case for NavigationTab.apps(_:);
    goto LABEL_34;
  }

  if (v22 == enum case for StoreTab.Identifier.updates(_:))
  {
    sub_758870();
    if (!v28)
    {
      v58._countAndFlagsBits = 0xD000000000000012;
      v58._object = 0x80000000007F3540;
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      sub_75B750(v58, v63);
    }

    v29 = sub_56E958(0x5473657461647055, 0xEE006E6F63496261, 0);
    v30 = [v29 _imageThatSuppressesAccessibilityHairlineThickening];

    v31 = v50;
    (*(v2 + 104))(v4, enum case for NavigationTab.updates(_:), v50);
    v32 = sub_75A390();
    (*(v2 + 8))(v4, v31);
    v33 = objc_allocWithZone(UITabBarItem);
    v34 = sub_769210();

    v35 = [v33 initWithTitle:v34 image:v30 tag:v32];

    v36 = v51;
  }

  else
  {
    if (v22 != enum case for StoreTab.Identifier.search(_:))
    {
      if (v22 == enum case for StoreTab.Identifier.arcade(_:))
      {
        sub_758870();
        if (!v48)
        {
          v59._countAndFlagsBits = 0xD000000000000011;
          v59._object = 0x80000000007F3520;
          v64._countAndFlagsBits = 0;
          v64._object = 0xE000000000000000;
          sub_75B750(v59, v64);
        }

        if (v21)
        {
          v24 = v21;
        }

        else
        {
          (*(v14 + 104))(v16, enum case for SystemImage.joystickcontrollerFill(_:), v13);
          v24 = sub_759930();
          (*(v14 + 8))(v16, v13);
        }

        v27 = &enum case for NavigationTab.arcade(_:);
        goto LABEL_34;
      }

      if (v22 != enum case for StoreTab.Identifier.featured(_:))
      {

        (*(v53 + 8))(v9, v54);
        return 0;
      }

      goto LABEL_17;
    }

    v37 = v50;
    (*(v2 + 104))(v4, enum case for NavigationTab.search(_:), v50);
    v38 = sub_75A390();
    (*(v2 + 8))(v4, v37);
    v35 = [objc_allocWithZone(UITabBarItem) initWithTabBarSystemItem:8 tag:v38];
    v36 = v51;
  }

  sub_758820();
  v39 = sub_7697F0();

  (*(v53 + 8))(v36, v54);
  return v39;
}

uint64_t sub_726248@<X0>(char *a1@<X8>)
{
  v70 = a1;
  v1 = sub_75AA40();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v65 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_75BB40();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v59 - v6;
  v8 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v8 - 8);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v59 - v11;
  __chkstk_darwin(v12);
  v60 = &v59 - v13;
  __chkstk_darwin(v14);
  v62 = &v59 - v15;
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  __chkstk_darwin(v19);
  v61 = &v59 - v20;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v24 = sub_7570A0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_758800();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_758820();
  v32 = (*(v29 + 88))(v31, v28);
  if (v32 == enum case for StoreTab.Identifier.today(_:))
  {
    sub_758860();
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_10A2C(v23, &unk_93FD30, qword_77F240);
      v33 = type metadata accessor for FlowDestination(0);
      return (*(*(v33 - 8) + 56))(v70, 1, 1, v33);
    }

    v37 = *(v25 + 32);
    v37(v27, v23, v24);
    v36 = v70;
    v37(v70, v27, v24);
    v35 = type metadata accessor for FlowDestination(0);
    goto LABEL_9;
  }

  if (v32 == enum case for StoreTab.Identifier.games(_:) || v32 == enum case for StoreTab.Identifier.apps(_:))
  {
    goto LABEL_17;
  }

  if (v32 != enum case for StoreTab.Identifier.updates(_:))
  {
    if (v32 == enum case for StoreTab.Identifier.search(_:))
    {
      v36 = v70;
      *v70 = 0;
      v35 = type metadata accessor for FlowDestination(0);
      goto LABEL_9;
    }

    if (v32 == enum case for StoreTab.Identifier.arcade(_:))
    {
      v40 = sub_758840();
      v41 = *(v68 + 104);
      v41(v7, enum case for EditorialPageKey.subscriber(_:), v69);
      if (*(v40 + 16) && (v42 = sub_664054(v7), (v43 & 1) != 0))
      {
        (*(v25 + 16))(v18, *(v40 + 56) + *(v25 + 72) * v42, v24);
        v44 = *(v68 + 8);
        v44(v7, v69);

        v45 = *(v25 + 56);
        v45(v18, 0, 1, v24);
        v46 = v61;
        (*(v25 + 32))(v61, v18, v24);
        v45(v46, 0, 1, v24);
      }

      else
      {

        v44 = *(v68 + 8);
        v44(v7, v69);
        v45 = *(v25 + 56);
        v45(v18, 1, 1, v24);
        v46 = v61;
        sub_758860();
        if ((*(v25 + 48))(v18, 1, v24) != 1)
        {
          sub_10A2C(v18, &unk_93FD30, qword_77F240);
        }
      }

      v48 = sub_758840();
      v49 = v59;
      v41(v59, enum case for EditorialPageKey.nonSubscriber(_:), v69);
      v50 = v49;
      v51 = v62;
      if (*(v48 + 16) && (v52 = sub_664054(v50), (v53 & 1) != 0))
      {
        v54 = v60;
        (*(v25 + 16))(v60, *(v48 + 56) + *(v25 + 72) * v52, v24);
        v44(v50, v69);

        v45(v54, 0, 1, v24);
        (*(v25 + 32))(v51, v54, v24);
        v45(v51, 0, 1, v24);
      }

      else
      {

        v44(v50, v69);
        v55 = v60;
        v45(v60, 1, 1, v24);
        sub_758860();
        if ((*(v25 + 48))(v55, 1, v24) != 1)
        {
          sub_10A2C(v55, &unk_93FD30, qword_77F240);
        }
      }

      sub_50690(v46, v63);
      sub_50690(v51, v64);
      v56 = v65;
      sub_75AA30();
      sub_10A2C(v51, &unk_93FD30, qword_77F240);
      sub_10A2C(v46, &unk_93FD30, qword_77F240);
      v57 = *(sub_BD88(&qword_955D30, qword_780320) + 48);
      v36 = v70;
      *v70 = 0;
      (*(v66 + 32))(&v36[v57], v56, v67);
      v35 = type metadata accessor for FlowDestination(0);
      goto LABEL_9;
    }

    if (v32 != enum case for StoreTab.Identifier.featured(_:))
    {
      v58 = type metadata accessor for FlowDestination(0);
      (*(*(v58 - 8) + 56))(v70, 1, 1, v58);
      return (*(v29 + 8))(v31, v28);
    }

LABEL_17:
    sub_BD88(&qword_940A50, &qword_782590);
    v47 = v70;
    *v70 = 0;
    sub_758860();
    v35 = type metadata accessor for FlowDestination(0);
    swift_storeEnumTagMultiPayload();
    v38 = *(*(v35 - 8) + 56);
    v39 = v47;
    return v38(v39, 0, 1, v35);
  }

  v35 = type metadata accessor for FlowDestination(0);
  v36 = v70;
LABEL_9:
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v35 - 8) + 56);
  v39 = v36;
  return v38(v39, 0, 1, v35);
}

char *sub_726C3C(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] = 0;
  v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory] = 7;
  v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory] = 7;
  v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_numberOfLines] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel] = 0;
  v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] = 0;
  v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 0;
  v6 = &v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_textAfterFontTransition];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeOutDelay] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInDelay] = 0;
  sub_75BB20();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label] = v8;
  [v8 setContentMode:3];
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fontForSizeCategory] = a1;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_defaultFont] = a2;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for TodayTransitioningLabelView();
  v9 = a2;
  v10 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v12 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  v13 = v10;
  v14 = [v12 layer];
  v15 = [v13 traitCollection];
  sub_7699F0();

  [v14 setAnchorPoint:{0.0, 0.0}];
  [v13 addSubview:*&v10[v11]];
  sub_BD88(&qword_9477F0, qword_780200);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_77B6D0;
  *(v16 + 32) = sub_7676E0();
  *(v16 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_769F20();
  swift_unknownObjectRelease();

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_77B6D0;
  *(v17 + 32) = sub_7676F0();
  *(v17 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v13;
}

void sub_726F80(uint64_t a1)
{
  v31.receiver = v1;
  v31.super_class = type metadata accessor for TodayTransitioningLabelView();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory] != 4 || (v1[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange] & 1) != 0)
  {
    v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    [v1 bounds];
    [v2 setFrame:?];
    v3 = sub_727458();
    v4 = "setLineBreakMode:";
    if (v3)
    {
      v5 = v2;
      v6 = 4;
    }

    else
    {
      [v2 setLineBreakMode:0];
      v4 = "setLineBreakStrategy:";
      v5 = v2;
      v6 = 1;
    }

    [v5 v4];
    return;
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] == 1)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v9 = swift_allocObject();
    v10 = sub_728E64;
    *(v9 + 16) = sub_728E64;
    *(v9 + 24) = v8;
    v29 = sub_47164;
    v30 = v9;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1EB578;
    v28 = &unk_89ED00;
    v11 = _Block_copy(&v25);
    v12 = v1;

    [v7 performWithoutAnimation:v11];
    _Block_release(v11);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] == 1)
  {
    if ((v1[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] & 1) == 0)
    {
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v1;
      v15 = swift_allocObject();
      v16 = sub_728E4C;
      *(v15 + 16) = sub_728E4C;
      *(v15 + 24) = v14;
      v29 = sub_2EC28;
      v30 = v15;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_1EB578;
      v28 = &unk_89EC88;
      v17 = _Block_copy(&v25);
      v18 = v1;

      [v13 performWithoutAnimation:v17];
      _Block_release(v17);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        __break(1u);
        return;
      }

      v10 = 0;
      v8 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    [v1 bounds];
    [v19 setFrame:?];
  }

  v10 = 0;
  v8 = 0;
LABEL_16:
  v16 = 0;
  v14 = 0;
LABEL_17:
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  v21 = sub_727458();
  v22 = "setLineBreakMode:";
  if (v21)
  {
    v23 = v20;
    v24 = 4;
  }

  else
  {
    [v20 setLineBreakMode:0];
    v22 = "setLineBreakStrategy:";
    v23 = v20;
    v24 = 1;
  }

  [v23 v22];
  sub_F704(v10, v8);
  sub_F704(v16, v14);
}

void sub_727398(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel];
  if (v1)
  {
    v3 = v1;
    [a1 bounds];
    [v3 setFrame:?];
  }
}

id sub_727458()
{
  result = [v0 text];
  if (result)
  {
    v2 = result;
    v3 = [v0 font];
    if (v3)
    {
      v4 = v3;
      sub_BD88(&qword_940F40, &qword_785F00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_77B6D0;
      *(inited + 32) = NSFontAttributeName;
      *(inited + 64) = sub_26F08();
      *(inited + 40) = v4;
      v6 = NSFontAttributeName;
      v7 = sub_10D028(inited);
      swift_setDeallocating();
      sub_252F70(inited + 32);
      [v0 bounds];
      v9 = v8;
      if (v7)
      {
        type metadata accessor for Key(0);
        sub_206144();
        v10.super.isa = sub_7690E0().super.isa;

LABEL_7:
        [v2 boundingRectWithSize:1 options:v10.super.isa attributes:0 context:{v9, 1.79769313e308}];
        v13 = v12;

        [v0 bounds];
        return (v14 < v13);
      }
    }

    else
    {
      [v0 bounds];
      v9 = v11;
    }

    v10.super.isa = 0;
    goto LABEL_7;
  }

  return result;
}

void sub_7275FC(unsigned __int8 a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory);
  if (v4 == 7)
  {
    return;
  }

  if (a1 == 7)
  {
    goto LABEL_4;
  }

  switch(v4)
  {
    case 6:
      if (a1 != 6)
      {
        goto LABEL_4;
      }

      break;
    case 5:
      if (a1 != 5)
      {
        goto LABEL_4;
      }

      break;
    case 4:
      if (a1 == 4)
      {
        break;
      }

LABEL_4:
      v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fontForSizeCategory);
      if (*(v6 + 16) && (v7 = sub_663E78(v4), (v8 & 1) != 0))
      {
        v9 = (*(v6 + 56) + 8 * v7);
      }

      else
      {
        v9 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_defaultFont);
      }

      v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
      v26 = *v9;
      v11 = [v10 font];
      v12 = v11;
      if (v11)
      {
      }

      v13 = [v10 font];
      if (v13)
      {
        v14 = v13;
        sub_26F08();
        v15 = v26;
        v16 = sub_76A1C0();
      }

      else
      {
        v16 = 0;
      }

      [objc_opt_self() inheritedAnimationDuration];
      if (a1 == 6 || a2 == 6 || (v12 == 0) | v16 & 1 || v17 <= 0.0)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) ^ 1;
      }

      sub_7278D8(v26, v18 & 1);
      v19 = v26;
      goto LABEL_25;
    default:
      if ((a1 - 7) > 0xFCu || v4 != a1)
      {
        goto LABEL_4;
      }

      break;
  }

  v20 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory);
  v21 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v19 = [v21 font];
  if (v19)
  {
LABEL_25:

    return;
  }

  v22 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fontForSizeCategory);
  if (*(v22 + 16))
  {
    v23 = sub_663E78(v20);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 8 * v23);

      [v21 setFont:v25];
    }
  }
}

void sub_7278D8(void *a1, char a2)
{
  if ((a2 & 1) != 0 && (v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label], (v5 = [v4 text]) != 0))
  {

    v6 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel;
    if (!*&v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel] && (v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] & 1) == 0)
    {
      v8 = sub_728BB0(v4);
      [v8 setAlpha:0.0];
      [v8 setFont:a1];
      [v8 setNumberOfLines:*&v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_numberOfLines]];
      v9 = objc_opt_self();
      [v9 setAnimationsEnabled:0];
      v10 = [v8 layer];
      v11 = [v2 traitCollection];
      v12 = v2;
      sub_7699F0();

      [v10 setAnchorPoint:{0.0, 0.0}];
      [v9 setAnimationsEnabled:1];
      v13 = *&v2[v6];
      *&v12[v6] = v8;
      v25 = v8;

      [v12 addSubview:v25];
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = a1;
      v16 = &v12[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange];
      v17 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange];
      v18 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange + 8];
      *v16 = sub_728DB4;
      v16[1] = v15;

      v19 = a1;
      sub_F704(v17, v18);

      if (v12[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning])
      {
      }

      else
      {
        v20 = *v16;
        if (*v16)
        {
          v21 = v16[1];

          v20(v22);

          sub_F704(v20, v21);
        }

        else
        {
        }

        v23 = *v16;
        v24 = v16[1];
        *v16 = 0;
        v16[1] = 0;

        sub_F704(v23, v24);
      }
    }
  }

  else
  {
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];

    [v7 setFont:a1];
  }
}

void sub_727BF4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 1;
    v4 = Strong;
    v5 = objc_opt_self();
    [v5 inheritedAnimationDuration];
    v7 = v6 * 0.8;
    v8 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeOutDelay];
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    v25 = sub_728DBC;
    v26 = v9;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_23F0CC;
    v24 = &unk_89EB70;
    v10 = _Block_copy(&aBlock);
    v11 = v4;

    [v5 animateWithDuration:131684 delay:v10 options:0 animations:v7 completion:v8];
    _Block_release(v10);
    [v5 inheritedAnimationDuration];
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v25 = sub_728DDC;
    v26 = v14;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_23F0CC;
    v24 = &unk_89EBC0;
    v15 = _Block_copy(&aBlock);
    v16 = v11;

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a2;
    v25 = sub_728E44;
    v26 = v17;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_3D6D80;
    v24 = &unk_89EC10;
    v18 = _Block_copy(&aBlock);
    v19 = v16;
    v20 = a2;

    [v5 animateWithDuration:66148 delay:v15 options:v18 animations:v13 completion:0.0];
    _Block_release(v18);
    _Block_release(v15);
    sub_727ED4();
  }
}

void sub_727ED4()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v3 = v1;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v38 = v3;
    [v38 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v42.origin.x = v5;
    v42.origin.y = v7;
    v42.size.width = v9;
    v42.size.height = v11;
    if (CGRectIsEmpty(v42) || (v43.origin.x = v13, v43.origin.y = v15, v43.size.width = v17, v43.size.height = v19, CGRectIsEmpty(v43)))
    {
    }

    else
    {
      v44.origin.x = v13;
      v44.origin.y = v15;
      v44.size.width = v17;
      v44.size.height = v19;
      Height = CGRectGetHeight(v44);
      v45.origin.x = v5;
      v45.origin.y = v7;
      v45.size.width = v9;
      v45.size.height = v11;
      v21 = Height / CGRectGetHeight(v45);
      [v38 transform];
      CGAffineTransformScale(&aBlock, &v40, 1.0 / v21, 1.0 / v21);
      tx = aBlock.tx;
      ty = aBlock.ty;
      v36 = *&aBlock.c;
      v37 = *&aBlock.a;
      v24 = objc_opt_self();
      [v24 setAnimationsEnabled:0];
      *&v40.a = v37;
      *&v40.c = v36;
      v40.tx = tx;
      v40.ty = ty;
      [v38 setTransform:&v40];

      [v24 setAnimationsEnabled:1];
      [v2 transform];
      aBlock = v40;
      CGAffineTransformScale(&v40, &aBlock, v21, v21);
      [v24 inheritedAnimationDuration];
      v26 = v25;
      v27 = swift_allocObject();
      v28 = *&v40.c;
      *(v27 + 24) = *&v40.a;
      *(v27 + 16) = v0;
      *(v27 + 40) = v28;
      *(v27 + 56) = *&v40.tx;
      *&aBlock.tx = sub_728AC0;
      *&aBlock.ty = v27;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_23F0CC;
      *&aBlock.d = &unk_89EA80;
      v29 = _Block_copy(&aBlock);
      v30 = v0;

      [v24 animateWithDuration:197220 delay:v29 options:0 animations:v26 completion:0.0];
      _Block_release(v29);
      [v24 inheritedAnimationDuration];
      v32 = v31;
      v33 = swift_allocObject();
      *(v33 + 16) = v30;
      *&aBlock.tx = sub_728B60;
      *&aBlock.ty = v33;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_23F0CC;
      *&aBlock.d = &unk_89EAD0;
      v34 = _Block_copy(&aBlock);
      v35 = v30;

      [v24 animateWithDuration:197220 delay:v34 options:0 animations:v32 completion:0.0];

      _Block_release(v34);
    }
  }
}

void sub_7282C8(char a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_textAfterFontTransition + 8))
    {
      v3 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);

      v4 = sub_769210();

      [v3 setText:v4];
    }

    v5 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
    [v5 setFont:?];
    [v5 setAlpha:1.0];
    [v5 setNumberOfLines:*(a2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_numberOfLines)];
    v9[0] = 0x3FF0000000000000;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = 0x3FF0000000000000;
    v9[4] = 0;
    v9[5] = 0;
    [v5 setTransform:v9];
    v6 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel;
    v7 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel);
    if (v7)
    {
      [v7 removeFromSuperview];
      v8 = *(a2 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(a2 + v6) = 0;

    *(a2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  }
}

uint64_t sub_728430(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(a2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  }

  return result;
}

id sub_728444(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (a2)
  {
    v5 = sub_769210();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel];
  if (v6)
  {
    v7 = v6;
    if (v3)
    {
      v3 = sub_769210();
    }

    [v7 setText:v3];
  }

  v8 = &v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_textAfterFontTransition];
  *v8 = 0;
  *(v8 + 1) = 0;

  return [v2 setNeedsLayout];
}

double sub_72853C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a4)
  {
    v8 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel);
    if (v8)
    {
      v9 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
      if (a2)
      {

        v10 = v8;
        v5 = sub_769210();
      }

      else
      {

        v15 = v8;
      }

      [v9 setText:v5];

      v16 = sub_769210();
      [v8 setText:v16];

      v17 = (v4 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_textAfterFontTransition);
      *v17 = a3;
      v17[1] = a4;
      goto LABEL_17;
    }

    v13 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);

    v14 = sub_769210();

    [v13 setText:v14];
  }

  else
  {
    v11 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
    if (a2)
    {
      v12 = sub_769210();
    }

    else
    {
      v12 = 0;
    }

    [v11 setText:v12];

    v18 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel);
    if (v18)
    {
      v19 = v18;
      if (v5)
      {
        v20 = sub_769210();
      }

      else
      {
        v20 = 0;
      }

      [v19 setText:v20];
    }
  }

  v21 = (v4 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_textAfterFontTransition);
  *v21 = 0;
  v21[1] = 0;
LABEL_17:

  return result;
}

uint64_t sub_72872C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory) = 7;
  sub_7275FC(v4, 7);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  v5 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange);
  v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange);
  v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange + 8);
  *v5 = 0;
  v5[1] = 0;

  return sub_F704(v6, v7);
}

id sub_7287E8()
{
  v1 = objc_opt_self();
  [v1 setAnimationsEnabled:0];
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 traitCollection];
    v5 = sub_7699F0();

    v6 = 0.0;
    if (v5)
    {
      v6 = 1.0;
    }

    [v3 setAnchorPoint:{v6, 0.0}];
  }

  return [v1 setAnimationsEnabled:1];
}

id sub_728930(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayTransitioningLabelView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_728A1C()
{
  v1 = *v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);

    sub_F704(v2, v3);
  }
}

uint64_t sub_728A88()
{

  return _swift_deallocObject(v0, 72, 7);
}

id sub_728AC0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v4[2] = *(v0 + 56);
  return [v1 setTransform:v4];
}

double sub_728B10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_728B28()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_728B60()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id sub_728BB0(void *a1)
{
  v2 = sub_760AD0();
  __chkstk_darwin(v2 - 8);
  sub_75BB20();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setNumberOfLines:{objc_msgSend(a1, "numberOfLines")}];
  [v3 setLineBreakMode:{objc_msgSend(a1, "lineBreakMode")}];
  [v3 setLineBreakStrategy:{objc_msgSend(a1, "lineBreakStrategy")}];
  [v3 setUserInteractionEnabled:{objc_msgSend(a1, "isUserInteractionEnabled")}];

  sub_75BA80();
  sub_75BA90();
  sub_75BAA0();
  sub_75BAB0();
  v4 = [a1 text];
  [v3 setText:v4];

  return v3;
}

uint64_t sub_728D3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_728D74()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_728DDC()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

uint64_t sub_728E04()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_728E64()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  [v1 bounds];

  return [v2 setFrame:?];
}

void sub_728EB8()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_numberOfLines) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_textAfterFontTransition);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeOutDelay) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInDelay) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_729008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C640 != -1)
  {
    swift_once();
  }

  v7 = sub_766CA0();
  sub_BE38(v7, qword_99B870);
  sub_766470();
  sub_766700();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_729150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C638 != -1)
  {
    swift_once();
  }

  v8 = sub_766CA0();
  sub_BE38(v8, qword_99B858);
  sub_766470();
  sub_766700();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_729328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_729370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = sub_757500();
  __chkstk_darwin(v20);
  v19[0] = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v9 = sub_BD88(&unk_949F88, &qword_78B200);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  sub_1F5014();
  v19[1] = a1;
  result = sub_75D050();
  v13 = result;
  if (!(result >> 62))
  {
    v14 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_75D040();
    sub_75D030();
    sub_BD88(&qword_93FBE0, &unk_77EA70);
    sub_7592D0();
    v17 = sub_BD88(&qword_949F68, &qword_78B1F0);
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    v18 = OBJC_IVAR____TtC18ASMessagesProvider35TitledButtonStackCollectionViewCell_lineBreaks;
    swift_beginAccess();
    sub_7295FC(v11, v4 + v18);
    swift_endAccess();
    return [v4 setNeedsLayout];
  }

  result = sub_76A860();
  v14 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = sub_76A770();
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      sub_1F51AC(v16, a3);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_7295FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_949F88, &qword_78B200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_7296B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v70 = a2;
  v71 = a1;
  v64 = sub_7656C0();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_762D10();
  v66 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v52 - v6;
  __chkstk_darwin(v7);
  v53 = &v52 - v8;
  v9 = sub_75E890();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_765C90();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7609A0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_7609C0();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C800 != -1)
  {
    swift_once();
  }

  v22 = sub_BE38(v17, qword_99BE50);
  v23 = *(v18 + 16);
  v56 = v20;
  v23(v20, v22, v17);
  (*(v14 + 16))(v16, v70, v13);
  sub_75D1A0();
  swift_getKeyPath();
  sub_75C7B0();

  v24 = v76;
  v25 = sub_7699D0();

  v26 = &enum case for AchievementGroupView.Size.phone(_:);
  if ((v25 & 1) == 0)
  {
    v26 = &enum case for AchievementGroupView.Size.pad(_:);
  }

  (*(v10 + 104))(v12, *v26, v9);
  v27 = sub_75E8A0();
  v28 = objc_allocWithZone(v27);
  v29 = sub_75E880();
  v77 = v27;
  v78 = &protocol witness table for UIView;
  v76 = v29;
  v30 = sub_75D1B0();
  v79._object = 0x80000000007CF0B0;
  v79._countAndFlagsBits = 0xD000000000000032;
  v80._countAndFlagsBits = 0;
  v80._object = 0xE000000000000000;
  sub_761130(v79, v30, v80);
  v31 = sub_26F08();
  if (qword_93D830 != -1)
  {
    swift_once();
  }

  v32 = sub_7666D0();
  sub_BE38(v32, qword_99F088);
  swift_getKeyPath();
  sub_75C7B0();

  sub_769E00();
  swift_unknownObjectRelease();
  v33 = sub_7653B0();
  v75[3] = v33;
  v70 = sub_72A664(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v75[4] = v70;
  v34 = sub_B1B4(v75);
  v35 = *(v33 - 8);
  v36 = *(v35 + 104);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v68 = v36;
  v67 = v35 + 104;
  v36(v34);
  sub_765C30();
  v65 = v31;
  sub_BEB8(v75);
  v37 = v53;
  sub_762D00();
  sub_762CE0();
  v38 = v59;
  v66 = *(v66 + 8);
  (v66)(v37, v59);
  swift_getKeyPath();
  sub_75C7B0();

  v39 = v74[0];
  sub_13F070();

  if (qword_93D838 != -1)
  {
    swift_once();
  }

  sub_BE38(v32, qword_99F0A0);
  swift_getKeyPath();
  sub_75C7B0();

  sub_769E00();
  swift_unknownObjectRelease();
  v74[3] = v33;
  v74[4] = v70;
  v40 = sub_B1B4(v74);
  v68(v40, v69, v33);
  sub_765C30();
  sub_BEB8(v74);
  v41 = v55;
  sub_762D00();
  sub_762CE0();
  (v66)(v41, v38);
  sub_75D190();
  if (qword_93D840 != -1)
  {
    swift_once();
  }

  sub_BE38(v32, qword_99F0B8);
  swift_getKeyPath();
  sub_75C7B0();

  sub_769E00();
  swift_unknownObjectRelease();
  v73[3] = v33;
  v73[4] = v70;
  v42 = sub_B1B4(v73);
  v68(v42, v69, v33);
  sub_765C30();
  sub_BEB8(v73);
  v43 = v57;
  sub_762D00();
  sub_762CE0();
  (v66)(v43, v38);
  v44 = sub_7670D0();
  swift_allocObject();
  v45 = sub_7670B0();
  v72[4] = &protocol witness table for LayoutViewPlaceholder;
  v72[3] = v44;
  v72[0] = v45;
  v46 = v58;
  sub_7609B0();
  swift_getKeyPath();
  v47 = v62;
  sub_75C7B0();

  sub_765630();
  (*(v63 + 8))(v47, v64);
  swift_getKeyPath();
  sub_75C7B0();

  sub_72A664(&unk_9463E0, &type metadata accessor for AchievementSummaryLayout, &protocol conformance descriptor for AchievementSummaryLayout);
  v48 = v61;
  sub_7665A0();
  v50 = v49;
  swift_unknownObjectRelease();
  (*(v60 + 8))(v46, v48);
  return v50;
}

void sub_72A224(uint64_t a1, __n128 a2)
{
  v3 = sub_7609A0();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7656C0();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_765C90();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_75D1C0();
  sub_72A664(&unk_946380, &type metadata accessor for AchievementSummary, &protocol conformance descriptor for AchievementSummary);
  sub_75C750();
  v16 = v26;
  if (v26)
  {
    v17 = sub_75D180();
    if (*(v17 + 16))
    {
      (*(v10 + 16))(v12, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

      (*(v10 + 32))(v15, v12, v9);
      swift_getKeyPath();
      sub_75C7B0();

      v18 = v26;
      v19 = sub_769A00();

      if (v19)
      {
        sub_7296B8(v16, v15, a1);
      }

      else
      {
        swift_getKeyPath();
        sub_75C7B0();

        sub_765630();
        (*(v23 + 8))(v8, v6);
        if (qword_93C800 != -1)
        {
          swift_once();
        }

        v20 = v25;
        v21 = sub_BE38(v25, qword_99BE50);
        v22 = v24;
        (*(v24 + 16))(v5, v21, v20);
        sub_527DE4();
        sub_760970();
        swift_unknownObjectRelease();

        (*(v22 + 8))(v5, v20);
      }

      (*(v10 + 8))(v15, v9);
    }

    else
    {
    }
  }
}

uint64_t sub_72A664(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_72A6AC(void *a1)
{
  if (*v1 != *a1 || (sub_76A6C0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for BoolUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v3 = result[7] == v1[7] && result[8] == v1[8];
  if (v3 || (v4 = result, v5 = sub_76A950(), result = v4, (v5)) && (result[10] == v1[10] && result[11] == v1[11] || (sub_76A950()))
  {
    return (&dword_0 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_72A7A8(uint64_t a1, __n128 a2)
{
  sub_76A6D0();
  sub_769330();
  sub_76AA50(0);
  sub_769330();
  sub_76AA50(0);
}

double sub_72A808()
{

  return result;
}

uint64_t sub_72A838()
{
  sub_1EB60(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_72A8C4(uint64_t a1, uint64_t a2, objc_class *a3, char a4)
{
  v43 = a1;
  v44 = sub_7664A0();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_756F10();
  __chkstk_darwin(v9 - 8);
  v10 = sub_BD88(&qword_93F428, &unk_79F050);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_76A270();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a3;
  if (a4)
  {
    sub_76A360();
  }

  else
  {
    sub_76A3A0();
    v17 = [(objc_class *)a3 userInterfaceStyle];
    v18 = objc_opt_self();
    v19 = &selRef_systemGray3Color;
    if (v17 != &dword_0 + 2)
    {
      v19 = &selRef_systemGray5Color;
    }

    v20 = [v18 *v19];
    v21 = sub_76A230();
    v40 = v13;
    v22 = v7;
    v23 = a3;
    v24 = v21;
    sub_767720();
    v24(v45, 0);
    v25 = v23;
    v7 = v22;
    v13 = v40;
    [(objc_class *)v25 displayScale];
    v26 = sub_76A230();
    sub_767730();
    v26(v45, 0);
  }

  (*(v14 + 104))(v16, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v13);
  sub_76A280();
  sub_76A300();
  if (a2)
  {
    sub_BD88(&qword_940F40, &qword_785F00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    *(inited + 32) = NSFontAttributeName;
    v28 = qword_93D990;

    v29 = NSFontAttributeName;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = sub_7666D0();
    v31 = sub_BE38(v30, qword_99F4A8);
    v32 = v41;
    (*(*(v30 - 8) + 16))(v41, v31, v30);
    v33 = v44;
    (*(v7 + 104))(v32, enum case for FontSource.useCase(_:), v44);
    v34.super.isa = v42;
    isa = sub_766490(v34).super.isa;
    (*(v7 + 8))(v32, v33);
    *(inited + 64) = sub_BE70(0, &qword_93F900, UIFont_ptr);
    *(inited + 40) = isa;
    sub_10D028(inited);
    swift_setDeallocating();
    sub_10A2C(inited + 32, qword_940F50, &qword_785170);
    sub_756F30();
    sub_756EC0();
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = sub_756EB0();
  (*(*(v37 - 8) + 56))(v12, v36, 1, v37);
  return sub_76A2F0();
}

NSString sub_72ADE0()
{
  result = sub_769210();
  qword_963F18 = result;
  return result;
}

double sub_72AE20()
{
  v0 = sub_BD88(&qword_950B38, &qword_7B0540);
  __chkstk_darwin(v0);
  v1 = sub_BD88(&qword_950B48, qword_798D10);
  sub_161DC(v1, qword_963F20);
  sub_BE38(v1, qword_963F20);
  sub_BE70(0, &qword_960F00, UIButton_ptr);
  sub_7667C0();
  sub_16194(&qword_950B40, &qword_950B38, &qword_7B0540, &protocol conformance descriptor for ViewRecycler<A>);
  sub_767480();
  return result;
}

uint64_t sub_72AF44()
{
  v0 = sub_768FF0();
  sub_161DC(v0, qword_963F38);
  v1 = sub_BE38(v0, qword_963F38);
  if (qword_93DF08 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_9A0448);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_72B00C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_75C640();
    sub_72D5A4(v5, 1, v4, sub_32A6C0);
  }

  return result;
}

void sub_72B0A8(uint64_t a1, char a2, uint64_t a3, objc_class *a4)
{
  v6 = sub_7676A0();
  __chkstk_darwin(v6);
  v7 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_75C650();
  sub_72A8C4(v10, v11, a4, a2 & 1);

  v12 = sub_76A3F0();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  sub_76A420();
  v13 = [(objc_class *)a4 preferredContentSizeCategory];
  v14 = sub_56E144(v13);
  v15 = v14;

  if (v14)
  {
    v16 = v15;
    sub_769EE0();
    sub_767670();
    sub_769EF0();
  }

  else
  {
    sub_767B80();
    sub_769EE0();
    sub_767690();
    sub_769EF0();
  }
}

char *sub_72B2A0(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_topSeparator;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = [v11 separatorColor];
  [v10 setBackgroundColor:v12];

  *&v4[v9] = v10;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_title;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_pills] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_bottomSeparator;
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = [v11 separatorColor];
  [v15 setBackgroundColor:v16];

  *&v4[v14] = v15;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_guidedSearchResult] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_impressionsCalculator] = 0;
  v17 = &v4[OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_impressionsUpdateBlock];
  v18 = type metadata accessor for GuidedSearchResultContentView();
  *v17 = 0;
  *(v17 + 1) = 0;
  v29.receiver = v4;
  v29.super_class = v18;
  v19 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v20 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_topSeparator];
  v21 = v19;
  [v21 addSubview:v20];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_title;
  [v21 addSubview:*&v21[OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_title]];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_bottomSeparator]];
  v23 = *&v21[v22];
  v24 = objc_opt_self();
  v25 = v23;
  result = [v24 _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  if (result)
  {
    v27 = result;
    [v25 setFont:result];

    [*&v21[v22] setNumberOfLines:0];
    sub_BD88(&qword_9477F0, qword_780200);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_77E280;
    *(v28 + 32) = sub_767B80();
    *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v28 + 48) = sub_7676F0();
    *(v28 + 56) = &protocol witness table for UITraitLegibilityWeight;
    sub_769F40();

    swift_unknownObjectRelease();

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_72B61C()
{
  v1 = v0;
  v2 = sub_768380();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7683C0();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  *(v9 + 16) = *&v1[v10];
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    swift_beginAccess();
    sub_72EDA8((v9 + 16), 0x74696E696564, 0xE600000000000000, v12);
    swift_endAccess();
  }

  else
  {
    sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
    v20 = sub_769970();
    aBlock[4] = sub_72F624;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_89EF30;
    v19 = _Block_copy(aBlock);

    sub_7683A0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_72F62C(&qword_9406E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v18 = v6;
    sub_BD88(&qword_940350, &unk_77F850);
    sub_16194(&qword_9406F0, &qword_940350, &unk_77F850, &protocol conformance descriptor for [A]);
    sub_76A5A0();
    v14 = v19;
    v13 = v20;
    sub_769980();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v21 + 8))(v8, v18);
  }

  v15 = type metadata accessor for GuidedSearchResultContentView();
  v22.receiver = v1;
  v22.super_class = v15;
  return objc_msgSendSuper2(&v22, "dealloc");
}

uint64_t sub_72B9E4(uint64_t a1)
{
  swift_beginAccess();
  sub_72EDA8((a1 + 16), 0x74696E696564, 0xE600000000000000, v2);
  return swift_endAccess();
}

void sub_72BB08(__n128 a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v58 = sub_768430();
  v4 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = (v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_75D570();
  sub_72F62C(&qword_963FE0, 255, &type metadata accessor for GuidedSearchResult, &protocol conformance descriptor for SearchResult);
  sub_75C750();
  v7 = aBlock[0];
  if (aBlock[0])
  {
    v48 = v4;
    *&v3[OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_guidedSearchResult] = aBlock[0];

    v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_title];
    sub_75D550();
    v59 = v3;
    if (v9)
    {
      v10 = sub_769210();
    }

    else
    {
      v10 = 0;
    }

    [v8 setText:v10];

    v11 = sub_75D560();
    v46 = byte_94AFA8;
    swift_getKeyPath();
    sub_75C7B0();

    v56 = v67;
    v12 = OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_pills;
    v13 = v59;
    swift_beginAccess();
    v44 = v12;
    sub_72EDA8(&v13[v12], 0xD000000000000017, 0x80000000007F3800, v14);
    if (qword_93E230 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v15 = sub_768FF0();
      sub_BE38(v15, qword_963F38);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_784250;
      v62 = sub_BD88(&qword_963FD8, &qword_7B0538);
      aBlock[0] = &type metadata for GuidedSearchTokenPill;
      sub_7685C0();
      sub_10A2C(aBlock, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      if (v11 >> 62)
      {
        v16 = sub_76A860();
      }

      else
      {
        v16 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
      }

      v62 = &type metadata for Int;
      aBlock[0] = v16;
      sub_7685C0();
      sub_10A2C(aBlock, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      if (qword_93E228 != -1)
      {
        swift_once();
      }

      v17 = sub_BD88(&qword_950B48, qword_798D10);
      v18 = sub_BE38(v17, qword_963F20);
      swift_beginAccess();
      v62 = v17;
      v19 = sub_B1B4(aBlock);
      v20 = *(*(v17 - 8) + 16);
      v53 = v18;
      v54 = v17;
      v20(v19, v18, v17);
      sub_7685C0();
      sub_10A2C(aBlock, &unk_93FBD0, &qword_77DFA0);
      sub_768E80();

      if (!v16)
      {
        break;
      }

      v21 = v16;
      v66 = _swiftEmptyArrayStorage;
      sub_76A7C0();
      if (v16 < 0)
      {
        __break(1u);
        return;
      }

      v43[1] = v7;
      v52 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
      v47 = sub_BE70(0, &qword_955FA0, UIAction_ptr);
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
          v23 = sub_76A770();
        }

        else
        {
          v23 = *(v55 + 8 * v22 + 32);
        }

        *v6 = sub_769970();
        v24 = v58;
        (*v49)(v6, v50, v58);
        v25 = sub_768460();
        (*v48)(v6, v24);
        if ((v25 & 1) == 0)
        {
          break;
        }

        v11 = v21;
        if (qword_93E220 != -1)
        {
          swift_once();
        }

        v26 = qword_963F18;
        v27 = swift_allocObject();
        swift_weakInit();
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        *(v28 + 24) = v23;
        v29 = v26;

        v7 = sub_76A1F0();
        swift_beginAccess();
        sub_767460();
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
          sub_BE70(0, &qword_960F00, UIButton_ptr);
          v32 = v7;
          v68.value.super.super.isa = v7;
          v31 = sub_76A430(UIButtonTypeSystem, v68).super.super.super.super.isa;
          v30 = 0;
        }

        v33 = swift_allocObject();
        *(v33 + 16) = v46;
        v34 = v56;
        *(v33 + 24) = v23;
        *(v33 + 32) = v34;
        v63 = sub_72F3D0;
        v64 = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v61 = sub_123860;
        v62 = &unk_89EEE0;
        v35 = _Block_copy(aBlock);

        v36 = v34;
        v37 = v30;

        [(objc_class *)v31 setConfigurationUpdateHandler:v35];

        _Block_release(v35);
        v38 = [(objc_class *)v31 superview];
        v39 = v59;
        if (!v38 || (v7 = v38, sub_BE70(0, &qword_93E550, UIView_ptr), v40 = v39, v41 = sub_76A1C0(), v7, v40, (v41 & 1) == 0))
        {
          [v39 addSubview:v31];
        }

        ++v22;
        sub_76A7A0();
        sub_76A7D0();
        sub_76A7E0();
        sub_76A7B0();
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

void sub_72C528(uint64_t a1, uint64_t a2)
{
  v2 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_768AB0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_guidedSearchResult);
    if (v11 && (swift_beginAccess(), (v12 = swift_weakLoadStrong()) != 0))
    {
      v13 = v12;
      v14 = OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_pills;
      swift_beginAccess();
      v15 = *&v10[v14];

      v51 = sub_75D560();
      v42 = v10;
      v40 = v11;
      if (v15 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
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
            v20 = sub_76A770();
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
            if (v19 == sub_76A860())
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
            v6 = sub_76A770();
          }

          else
          {
            if (v19 >= *(v52 + 16))
            {
              goto LABEL_35;
            }

            v6 = *(v51 + 8 * v18);
          }

          sub_75C660();
          if ((*v45)(v4, 1, v5) == 1)
          {

            sub_10A2C(v4, &unk_93FF30, &unk_77DB10);
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

              sub_75F4B0();
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

void sub_72CA24(uint64_t a1)
{
  v2 = v1;
  v60.receiver = v1;
  v60.super_class = type metadata accessor for GuidedSearchResultContentView();
  objc_msgSendSuper2(&v60, "layoutSubviews");
  sub_75D650();
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

  v13 = sub_769A00();

  if (v13)
  {
LABEL_5:
    v14 = 1.0;
    goto LABEL_6;
  }

  v14 = 0.666666667;
LABEL_6:
  [v2 effectiveUserInterfaceLayoutDirection];
  v15 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_topSeparator];
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
  v17 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_title];
  v63.origin.x = v4;
  v63.origin.y = v6;
  v63.size.width = v8;
  v63.size.height = v10;
  CGRectGetMinX(v63);
  [v15 frame];
  CGRectGetMaxY(v64);
  [v17 sizeThatFits:{v8, v10}];
  [v2 bounds];
  sub_769CB0();
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
  v23 = sub_769240();
  v25 = v24;
  if (v23 == sub_769240() && v25 == v26)
  {

    goto LABEL_10;
  }

  v27 = sub_76A950();

  if (v27)
  {
LABEL_10:
    v28 = sub_769B60();

    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v30 = OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_pills;
    swift_beginAccess();
    v31 = *&v2[v30];
    if (v31 >> 62)
    {
LABEL_39:
      v32 = sub_76A860();
    }

    else
    {
      v32 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
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
      v36 = sub_76A860();
    }

    else
    {
      v36 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
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
            v39 = sub_76A770();
          }

          else
          {
            if (v38 >= *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
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

            v49 = *&v58[OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_bottomSeparator];
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
      sub_769CB0();
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

id sub_72D0B4()
{
  v0 = [objc_allocWithZone(UILabel) init];
  result = [v0 setNumberOfLines:0];
  qword_963F50 = v0;
  return result;
}

id sub_72D104()
{
  result = [objc_opt_self() buttonWithType:1];
  qword_963F58 = result;
  return result;
}

uint64_t sub_72D144()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_guidedSearchResult) = 0;

  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_title) setText:0];
  v1 = OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  sub_72EDA8((v0 + v1), 0x4665726170657270, 0xEF6573756552726FLL, v2);
  return swift_endAccess();
}

double sub_72D1E8()
{
  swift_beginAccess();

  return result;
}

double sub_72D230(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_72D2E8()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_72D344(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

void (*sub_72D404())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_72F370;
}

uint64_t sub_72D4F0(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_72F62C(&qword_963FC8, a2, type metadata accessor for GuidedSearchResultContentView, &unk_7B044C);
  result = sub_72F62C(&qword_963FD0, v3, type metadata accessor for GuidedSearchResultContentView, &unk_7B047C);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_72D5A4(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t, char *))
{
  v8 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_BD88(&unk_93F630, &unk_77E230);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_768860();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10A2C(v10, &unk_93F980, &qword_77EDA0);
    sub_BD88(&qword_94DDC0, qword_77DE00);
    sub_72F3F4();
    swift_allocError();
    *v15 = 1;
    return sub_768F20();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = a4(a1, a2 & 1, a3, v14);
    (*(v12 + 8))(v14, v11);
    return v17;
  }
}

id sub_72D868(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_title];
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

double *sub_72D90C(uint64_t a1, char a2, unsigned int (**a3)(char *, uint64_t, uint64_t), double a4, double a5)
{
  LOBYTE(v6) = a2;
  v89 = sub_7664A0();
  v10 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_756F10();
  __chkstk_darwin(v12 - 8);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&qword_93F428, &unk_79F050);
  __chkstk_darwin(v14 - 8);
  v86 = &v79 - v15;
  v16 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v16 - 8);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v79 - v20);
  if (qword_93E240 != -1)
  {
LABEL_44:
    swift_once();
  }

  v22 = qword_963F58;
  v90 = a3;
  sub_72A8C4(0, 0, a3, v6 & 1);
  v23 = sub_76A3F0();
  a3 = *(v23 - 8);
  v24 = a3[7];
  v94 = v23;
  v24(v21, 0, 1);
  sub_76A420();
  sub_BD88(&qword_941AE0, &unk_781100);
  v25 = swift_allocObject();
  v81 = xmmword_77B6D0;
  *(v25 + 16) = xmmword_77B6D0;
  v95 = v25;
  *(v25 + 32) = _swiftEmptyArrayStorage;
  v26 = *(a1 + 16);
  if (v26)
  {
    v91 = v21;
    v27 = 0;
    v93 = a3 + 6;
    v85 = (v10 + 104);
    v84 = NSFontAttributeName;
    v83 = (v10 + 8);
    v82 = enum case for FontSource.useCase(_:);
    v28 = a1 + 40;
    v96 = v22;
    v92 = v26;
    v80 = a1 + 40;
    do
    {
      v29 = v95 + 3;
      v21 = v27;
      v30 = a4;
      v6 = (v28 + 16 * v27);
      while (1)
      {
        if (v21 >= v26)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v27 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          goto LABEL_40;
        }

        a3 = *(v6 - 1);
        a1 = *v6;

        sub_76A410();
        if ((*v93)(v18, 1, v94))
        {
          a3 = v91;
          v10 = &unk_954ED0;
          sub_1ED18(v18, v91, &unk_954ED0, &unk_77E060);
          sub_76A420();
          sub_10A2C(v18, &unk_954ED0, &unk_77E060);
        }

        else
        {
          v31 = v84;
          v99[0] = v84;
          v32 = qword_93D990;

          v33 = v31;
          if (v32 != -1)
          {
            swift_once();
          }

          v34 = sub_7666D0();
          v35 = sub_BE38(v34, qword_99F4A8);
          v36 = v88;
          (*(*(v34 - 8) + 16))(v88, v35, v34);
          v37 = v89;
          (*v85)(v36, v82, v89);
          v38.super.isa = v90;
          isa = sub_766490(v38).super.isa;
          (*v83)(v36, v37);
          v99[4] = sub_BE70(0, &qword_93F900, UIFont_ptr);
          v99[1] = isa;
          sub_BD88(&unk_9558E0, &qword_785168);
          v40 = sub_76A8B0();

          sub_1ED18(v99, &v97, qword_940F50, &qword_785170);
          v10 = v97;
          v41 = sub_66523C();
          if (v42)
          {
            goto LABEL_42;
          }

          v40[(v41 >> 6) + 8] |= 1 << v41;
          *(v40[6] + 8 * v41) = v10;
          sub_13310(&v98, (v40[7] + 32 * v41));
          v43 = v40[2];
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            goto LABEL_43;
          }

          v40[2] = v45;

          sub_10A2C(v99, qword_940F50, &qword_785170);
          v10 = v87;
          sub_756F30();
          v46 = v86;
          sub_756EC0();
          v47 = sub_756EB0();
          (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
          sub_76A2F0();
          v22 = v96;
          sub_76A420();
        }

        [v22 sizeThatFits:{a5, 1.79769313e308}];
        v49 = v48;
        v51 = v50;
        if (v30 + v48 > a5)
        {
          break;
        }

        v10 = *(v95 + 2);
        if (!v10)
        {
          goto LABEL_41;
        }

        v52 = *&v29[v10];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v29[v10] = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = sub_7BA48(0, *(v52 + 2) + 1, 1, v52);
          *&v29[v10] = v52;
        }

        v55 = *(v52 + 2);
        v54 = *(v52 + 3);
        a3 = (v55 + 1);
        if (v55 >= v54 >> 1)
        {
          *&v29[v10] = sub_7BA48((v54 > 1), v55 + 1, 1, v52);
        }

        v30 = v30 + v49 + 8.0;

        v56 = v29[v10];
        *(*&v56 + 16) = a3;
        v57 = *&v56 + 16 * v55;
        *(v57 + 32) = v49;
        *(v57 + 40) = v51;
        v21 = (v21 + 1);
        v6 += 2;
        v26 = v92;
        v22 = v96;
        if (v27 == v92)
        {
          goto LABEL_25;
        }
      }

      sub_BD88(&qword_941AF0, &qword_781110);
      v58 = swift_allocObject();
      *(v58 + 16) = v81;
      *(v58 + 32) = v49;
      *(v58 + 40) = v51;
      v60 = *(v95 + 2);
      v59 = *(v95 + 3);
      a3 = (v60 + 1);
      if (v60 >= v59 >> 1)
      {
        v95 = sub_7BB4C((v59 > 1), v60 + 1, 1, v95);
      }

      v61 = v95;
      *(v95 + 2) = a3;
      *&v61[v60 + 4] = v58;
      v26 = v92;
      v28 = v80;
    }

    while (v27 != v92);
  }

LABEL_25:
  v62 = [(objc_class *)v90 preferredContentSizeCategory];
  v63 = sub_769240();
  v65 = v64;
  v67 = sub_769240();
  v68 = v63;
  v69 = v66;
  if (v68 == v67 && v65 == v66)
  {
  }

  else
  {
    v70 = sub_76A950();

    if ((v70 & 1) == 0)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  sub_769B60();

  v62 = sub_10B54();
  if ((v73 & 1) == 0)
  {
LABEL_30:
    sub_4A62BC(v62, v71, v72, v73);
    v75 = v74;
LABEL_37:
    swift_unknownObjectRelease();
    return v75;
  }

  v70 = v73;
  v65 = v72;
  v69 = v71;
  sub_76A970();
  swift_unknownObjectRetain_n();
  v76 = swift_dynamicCastClass();
  if (!v76)
  {
    swift_unknownObjectRelease();
    v76 = _swiftEmptyArrayStorage;
  }

  v77 = *(v76 + 2);

  if (__OFSUB__(v70 >> 1, v65))
  {
    goto LABEL_46;
  }

  if (v77 != (v70 >> 1) - v65)
  {
LABEL_47:
    swift_unknownObjectRelease();
    v73 = v70;
    v72 = v65;
    v71 = v69;
    goto LABEL_30;
  }

  v75 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v75)
  {
    v75 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  return v75;
}

void sub_72E2F8(uint64_t a1, char a2, unsigned int (**a3)(char *, uint64_t, uint64_t), double a4)
{
  v4 = sub_72D90C(a1, a2 & 1, a3, 0.0, a4);
  v5 = v4;
  v6 = *(v4 + 2);
  if (!v6)
  {
LABEL_20:

    return;
  }

  v7 = 0;
  v20 = v4 + 4;
  v8 = -8.0;
  while (v7 < *(v5 + 2))
  {
    v9 = v20[v7];
    v10 = *(*&v9 + 16);
    if (v10)
    {

      sub_143C5C(0, v10, 0);
      v11 = _swiftEmptyArrayStorage;
      v12 = _swiftEmptyArrayStorage[2];
      v13 = (*&v9 + 40);
      do
      {
        v14 = *v13;
        v21 = v11;
        v15 = *(v11 + 3);
        *&v16 = *&v12 + 1;
        if (*&v12 >= v15 >> 1)
        {
          sub_143C5C((v15 > 1), *&v12 + 1, 1);
          v11 = v21;
        }

        v11[2] = v16;
        v11[*&v12 + 4] = v14;
        v13 += 2;
        ++*&v12;
        --v10;
      }

      while (v10);
LABEL_13:
      v17 = v11[4];
      v18 = *&v16 - 1;
      if (*&v16 != 1)
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
    if (v16 != 0.0)
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

id sub_72E4C4(void *a1)
{
  v1 = sub_75B4F0();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v65 = (&v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_BD88(&unk_94F1F0, &qword_782290);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v59 - v5;
  v64 = sub_7656A0();
  v7 = *(v64 - 8);
  __chkstk_darwin(v64);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v59 - v11;
  v13 = sub_7656C0();
  v60 = *(v13 - 8);
  v61 = v13;
  __chkstk_darwin(v13);
  v68 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

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
  sub_765580();
  v63 = v23;
  sub_7655A0();
  v62 = v24;
  sub_765590();
  swift_getKeyPath();
  sub_75C7B0();

  sub_75B4B0();
  (*(v7 + 16))(v9, v12, v19);
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  v25 = v68;
  sub_765670();
  (*(v66 + 8))(v21, v67);
  (*(v7 + 8))(v12, v19);
  sub_75D570();
  sub_72F62C(&qword_963FE0, 255, &type metadata accessor for GuidedSearchResult, &protocol conformance descriptor for SearchResult);
  sub_75C750();
  v26 = v71;
  swift_getKeyPath();
  sub_75C7B0();

  v27 = v70;
  [v70 displayScale];
  if (v28 == 3.0)
  {
    v29 = sub_769A00();

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
  sub_765630();
  sub_765620();
  sub_769DA0();
  v32 = v31;
  swift_getKeyPath();
  sub_75C7B0();

  v33 = v70;
  if (v26)
  {
    LODWORD(v67) = byte_94AFA8;
    v34 = v30 + 20.0;

    v35 = sub_75D550();
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

    if (qword_93E238 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v38 = qword_963F50;
      result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
      if (!result)
      {
        break;
      }

      v40 = result;
      [v38 setFont:result];

      v41 = sub_769210();
      [v38 setText:v41];

      [v38 sizeThatFits:{v32, 1.79769313e308}];
      v43 = v42;

      v34 = v34 + v43 + 16.0;
LABEL_20:
      v46 = sub_75D560();
      v47 = v46;
      if (v46 >> 62)
      {
        v48 = sub_76A860();
        if (!v48)
        {
LABEL_32:

          v50 = _swiftEmptyArrayStorage;
LABEL_33:
          sub_72E2F8(v50, v67 & 1, v33, v32);

          v57 = v61;
          v58 = *(v60 + 8);
          v58(v68, v61);
          return (v58)(v59, v57);
        }
      }

      else
      {
        v48 = *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));
        if (!v48)
        {
          goto LABEL_32;
        }
      }

      v69 = _swiftEmptyArrayStorage;
      sub_143CDC(0, v48 & ~(v48 >> 63), 0);
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
            sub_76A770();
          }

          else
          {
          }

          v51 = sub_75C650();
          v53 = v52;

          v69 = v50;
          v55 = *(v50 + 2);
          v54 = *(v50 + 3);
          if (v55 >= v54 >> 1)
          {
            sub_143CDC((v54 > 1), v55 + 1, 1);
            v50 = v69;
          }

          ++v49;
          *(v50 + 2) = v55 + 1;
          v56 = &v50[2 * v55];
          *(v56 + 4) = v51;
          *(v56 + 5) = v53;
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

void sub_72EDA8(unint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_768430();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  *v10 = sub_769970();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = sub_768460();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v27 = a2;
    if (qword_93E230 == -1)
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
  v12 = sub_768FF0();
  sub_BE38(v12, qword_963F38);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_784250;
  v31 = sub_BD88(&qword_963FD8, &qword_7B0538);
  v30[0] = &type metadata for GuidedSearchTokenPill;
  sub_7685C0();
  sub_10A2C(v30, &unk_93FBD0, &qword_77DFA0);
  sub_768540();
  v13 = *a1;
  v28 = *a1 >> 62;
  v26 = a1;
  if (v28)
  {
    v14 = sub_76A860();
  }

  else
  {
    v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
  }

  v31 = &type metadata for Int;
  v30[0] = v14;
  sub_7685C0();
  sub_10A2C(v30, &unk_93FBD0, &qword_77DFA0);
  sub_768540();
  v31 = &type metadata for String;
  v30[0] = v27;
  v30[1] = a3;

  sub_7685C0();
  sub_10A2C(v30, &unk_93FBD0, &qword_77DFA0);
  sub_768E80();

  if (v28)
  {
    v15 = sub_76A860();
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  if (v15 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    v24 = sub_76A860();
    if ((v24 & 0x8000000000000000) == 0)
    {
LABEL_35:
      v21 = v24;
      goto LABEL_21;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v16 = 0;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = sub_76A770();
    }

    else
    {
      v17 = *(v13 + 8 * v16 + 32);
    }

    v18 = v17;
    if (qword_93E228 != -1)
    {
      swift_once();
    }

    ++v16;
    v19 = sub_BD88(&qword_950B48, qword_798D10);
    sub_BE38(v19, qword_963F20);
    v29 = v18;
    swift_beginAccess();
    sub_767470();
    swift_endAccess();
  }

  while (v15 != v16);
LABEL_17:
  v20 = v26;
  if (!v28 && (swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) != 0)
  {
    if (!(*v20 >> 62))
    {
      v21 = *(&dword_10 + (*v20 & 0xFFFFFFFFFFFFFF8));
LABEL_21:
      sub_4A7E34(0, v21);
      return;
    }

    goto LABEL_32;
  }

  if (*v20 >> 62)
  {
    v23 = sub_76A860();
    v24 = sub_76A860();
    if (v24 < 0)
    {
      goto LABEL_34;
    }

    v25 = sub_76A860();
    if (v23 < 0 || v25 < v23)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  v22 = sub_7E3E8();

  *v20 = v22;
}

uint64_t sub_72F2FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_72F334()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_72F390()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_72F3DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_72F3F4()
{
  result = qword_963FE8;
  if (!qword_963FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_963FE8);
  }

  return result;
}

void sub_72F448()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_topSeparator;
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = objc_opt_self();
  v4 = [v3 separatorColor];
  [v2 setBackgroundColor:v4];

  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_title;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_pills) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_bottomSeparator;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = [v3 separatorColor];
  [v7 setBackgroundColor:v8];

  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_guidedSearchResult) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_impressionsCalculator) = 0;
  v9 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider29GuidedSearchResultContentView_impressionsUpdateBlock);
  *v9 = 0;
  v9[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_72F5EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_72F62C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_72F694(void *a1)
{
  if (*(v1 + 24))
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    [a1 _verticalVelocity];
    v5 = v4;
    [a1 _systemContentInset];
    v7 = v6;
    [a1 contentInset];
    v9 = v7 + v8;
    [a1 contentOffset];
    *(v1 + 48) = v9 + v10 >= v2;
    *(v1 + 56) = v5;
  }

  v11 = sub_760F30();
  result = sub_760F30();
  if (v11 != result)
  {
    v13 = *(v1 + 32);
    if (v13)
    {
      return v13(*(v1 + 48), 1, *(v1 + 56));
    }
  }

  return result;
}

uint64_t sub_72F794()
{
  sub_F704(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

double sub_72F7F4()
{
  v0 = sub_7599A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_9640D8, &unk_7B0730);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  v10 = 0.3;
  v9 = 0x3FA999999999999ALL;
  (*(v1 + 104))(v3, enum case for TimingCurve.linear(_:), v0);
  sub_759CC0();
  sub_759CB0();
  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_72F9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id a6, void *a7, char a8)
{
  v14 = a5;
  if (!a5)
  {
    if (!*(a1 + 16))
    {
      return;
    }

    v17 = a8;
    v18 = sub_66523C();
    if ((v19 & 1) == 0)
    {
      return;
    }

    sub_132B4(*(a1 + 56) + 32 * v18, v33);
    sub_BE70(0, &qword_93F900, UIFont_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v14 = v31;
    a5 = 0;
    a8 = v17;
    if (!v31)
    {
      return;
    }
  }

  v29 = a8;
  v15 = a5;
  v16 = [v14 fontDescriptor];
  if ([v16 objectForKey:UIFontDescriptorTextStyleAttribute])
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (*(&v32 + 1))
  {
    type metadata accessor for TextStyle(0);
    if (swift_dynamicCast())
    {
      v8 = v30;
      a6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v30 compatibleWithTraitCollection:a6];
      v20 = [a6 fontDescriptorWithSymbolicTraits:{objc_msgSend(v16, "symbolicTraits")}];
      v21 = objc_opt_self();
      v22 = "fontWithDescriptor:size:";
      v23 = 0.0;
      if (v20)
      {
        v24 = [v21 fontWithDescriptor:v20 size:0.0];

        v8 = a6;
        a6 = v20;
LABEL_18:

        v21 = v24;
        goto LABEL_19;
      }

LABEL_17:
      v24 = [v21 v22];
      goto LABEL_18;
    }
  }

  else
  {
    sub_BDD0(v33);
  }

  v21 = [v14 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:a6];
  if (!v21)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  v25 = v21;
  [a7 removeAttribute:NSFontAttributeName range:{a2, a3}];
  [a7 addAttribute:NSFontAttributeName value:v25 range:{a2, a3}];

  if (v29 & 1) != 0 && *(a1 + 16) && (v26 = sub_66523C(), (v27) && (sub_132B4(*(a1 + 56) + 32 * v26, v33), sub_BE70(0, &qword_940F48, NSParagraphStyle_ptr), (swift_dynamicCast()))
  {
    if (sub_769850())
    {
      v28 = sub_769860();
      [a7 removeAttribute:NSParagraphStyleAttributeName range:{a2, a3}];
      [a7 addAttribute:NSParagraphStyleAttributeName value:v28 range:{a2, a3}];
    }

    else
    {
    }
  }

  else
  {
  }
}

void *sub_72FDD4(void *result, uint64_t a2, uint64_t a3, int a4, id a5, uint64_t a6)
{
  if (result[3])
  {
    return [a5 addAttribute:NSForegroundColorAttributeName value:a6 range:{a2, a3}];
  }

  return result;
}

uint64_t sub_72FE0C(void *a1)
{
  if (*v1 == *a1)
  {
    v2 = v1;
    if (sub_76A6C0())
    {
      type metadata accessor for NavigationActionDebugSetting();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = *(result + 56) == v1[7] && *(result + 64) == v1[8];
      if (v5 || (sub_76A950() & 1) != 0)
      {
        v6 = *(v4 + 72);
        if (v6)
        {

          v8 = v6(v7);
          v10 = v9;
          v11 = v1[9];
          if (!v11)
          {
            if (!v9)
            {
              goto LABEL_23;
            }

LABEL_19:

            return 0;
          }

          v12 = v8;
          v13 = v11();
          v15 = v14;
          if (v10)
          {
            if (v14)
            {
              if (v12 == v13 && v10 == v14)
              {
              }

              else
              {
                v19 = sub_76A950();

                if ((v19 & 1) == 0)
                {
LABEL_28:

                  return 0;
                }
              }

LABEL_23:
              v20 = *(v4 + 88);
              v21 = v2[11];
              if (!v20)
              {
                v25 = v21;

                if (!v21)
                {
                  return 1;
                }

                return 0;
              }

              if (v21)
              {
                type metadata accessor for DebugSettingsProvider();
                v22 = v21;
                v23 = v20;
                v24 = sub_76A1C0();

                return v24 & 1;
              }

              goto LABEL_28;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v16 = v1[9];

          if (!v16)
          {
            goto LABEL_23;
          }

          v16(v17);
          v15 = v18;
        }

        if (!v15)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }
  }

  return 0;
}

void sub_730048(uint64_t a1, __n128 a2)
{
  sub_76A6D0();
  v3 = sub_769330();
  v4 = *(v2 + 72);
  if (v4 && (v4(v3), v5))
  {
    sub_76AA50(1u);
    sub_769330();
  }

  else
  {
    sub_76AA50(0);
  }

  v6 = *(v2 + 88);
  if (v6)
  {
    sub_76AA50(1u);
    v7 = v6;
    sub_76A1D0();
  }

  else
  {
    sub_76AA50(0);
  }
}

double sub_730154()
{

  sub_F704(*(v0 + 72), *(v0 + 80));

  return result;
}

uint64_t sub_730194()
{
  sub_1EB60(v0 + 16);

  sub_F704(*(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

double sub_730230(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_75F8D0();
  if (v10)
  {
    v11 = sub_75F8E0();
    if (v11 >> 62)
    {
      v12 = sub_76A860();
    }

    else
    {
      v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    }
  }

  else
  {
    v12 = v9;
  }

  v13 = [a7 traitCollection];
  sub_755CB8(v12, v13);

  return a2;
}

void sub_7302EC(uint64_t a1, uint64_t a2, double *a3)
{
  v5 = sub_BD88(&qword_944EA8, qword_784990);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_75F8D0();
  if (v9)
  {
    v10 = sub_75F8E0();
    v11 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_74E5D4(v10, v7, 1, a3);

    sub_5B4524(v7);
    [v3 layoutIfNeeded];
  }

  else
  {
    sub_74F998(v8);
  }
}

uint64_t sub_7304B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MetadataRibbonHighlightedTextViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_93E248 != -1)
  {
    swift_once();
  }

  v0 = sub_764030();

  return sub_BE38(v0, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
}

char *sub_73055C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_764030();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_metrics;
  if (qword_93E248 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v11, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_itemType;
  v20 = sub_75FC90();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_allowsTruncation] = 2;
  sub_75BB20();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_descriptionLabel] = sub_75BB00();
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_descriptionLabel;
  v29 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_descriptionLabel];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v30 = v29;
  v31 = sub_769FF0();
  [v30 setTextColor:v31];

  v32 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_metrics], v11);
  v33 = v32;
  v34 = sub_764020();
  (*(v12 + 8))(v14, v11);
  [v33 setNumberOfLines:v34];

  v35 = *&v27[v28];
  sub_766B40();
  if (qword_93C740 != -1)
  {
    swift_once();
  }

  v36 = sub_760500();
  v37 = sub_BE38(v36, qword_99BB00);
  v41[3] = v36;
  v41[4] = sub_73222C(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v38 = sub_B1B4(v41);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  sub_75BA60();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_7309CC()
{
  ObjectType = swift_getObjectType();
  v18 = sub_7664F0();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_764030();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_764040();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_descriptionLabel];
  v20 = sub_75BB20();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_metrics], v5);
  v14 = v13;
  sub_763FE0();
  sub_75D650();
  sub_764000();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

id sub_730E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_descriptionLabel];
    if (a4)
    {
      v6 = sub_730F2C(a1, a2, a3, a4);
      [v5 setAttributedText:v6];
    }

    else
    {
      v6 = sub_769210();
      [v5 setText:v6];
    }
  }

  return [v4 setNeedsLayout];
}

id sub_730F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_766B40();
  if (qword_93C758 != -1)
  {
    swift_once();
  }

  v5 = sub_760500();
  sub_BE38(v5, qword_99BB48);
  v6.super.isa = [v4 traitCollection];
  isa = v6.super.isa;
  v36.super.isa = sub_7604E0(v6).super.isa;

  sub_766B40();
  if (qword_93C740 != -1)
  {
    swift_once();
  }

  sub_BE38(v5, qword_99BB00);
  v8.super.isa = [v4 traitCollection];
  v9 = v8.super.isa;
  v10 = sub_7604E0(v8).super.isa;

  v35 = sub_BE70(0, &qword_93E540, UIColor_ptr);
  v11 = [objc_allocWithZone(UIColor) initWithRed:0.450980392 green:0.450980392 blue:0.494117647 alpha:1.0];
  v12.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.682352941 green:0.682352941 blue:0.698039216 alpha:1.0];
  v13.super.isa = v11;
  v14 = sub_76A0C0(v13, v12).super.isa;
  sub_BD88(&qword_940F40, &qword_785F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 32) = NSFontAttributeName;
  v16 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  *(inited + 64) = v16;
  *(inited + 40) = v10;
  v17 = NSFontAttributeName;
  v34 = v10;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_10A2C(inited + 32, qword_940F50, &qword_785170);
  v18 = objc_allocWithZone(NSMutableAttributedString);
  v19 = sub_769210();
  type metadata accessor for Key(0);
  sub_73222C(&qword_93EC10, type metadata accessor for Key, &unk_77D804);
  v20 = sub_7690E0().super.isa;

  v21 = [v18 initWithString:v19 attributes:v20];

  v22 = swift_initStackObject();
  *(v22 + 32) = NSForegroundColorAttributeName;
  *(v22 + 16) = xmmword_77E280;
  *(v22 + 40) = v14;
  *(v22 + 64) = v35;
  *(v22 + 72) = v17;
  *(v22 + 104) = v16;
  *(v22 + 80) = v36;
  v23 = NSForegroundColorAttributeName;
  v24 = v14;
  v25 = v36.super.isa;
  sub_10D028(v22);
  swift_setDeallocating();
  sub_BD88(qword_940F50, &qword_785170);
  swift_arrayDestroy();
  v26.super.isa = sub_7690E0().super.isa;

  v27 = v21;
  result = [v27 string];
  if (result)
  {
    v29 = result;

    v30 = sub_769210();
    v31 = [v29 rangeOfString:v30 options:1];
    v33 = v32;

    [v27 addAttributes:v26.super.isa range:{v31, v33}];
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_731460(__n128 a1)
{
  v1 = sub_75D7B0();
  v3 = v2;
  v4 = sub_75D710();
  sub_730E9C(v1, v3, v4, v5);

  return result;
}

uint64_t sub_7314DC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_itemType;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &qword_93EBC0, qword_783DC0);
}

uint64_t sub_731544(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_itemType;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &qword_93EBC0, qword_783DC0);
  return swift_endAccess();
}

void sub_731620(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_7316EC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_7317AC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_7317F0(char a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_7318A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_id;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_9443A0, &unk_77E240);
}

uint64_t sub_731908(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_id;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_9443A0, &unk_77E240);
  return swift_endAccess();
}

uint64_t sub_7319D8()
{
  v0 = sub_BD88(&unk_93F5A0, &unk_77E570);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_764030();
  sub_161DC(v4, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  sub_BE38(v4, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_7593B0();
  sub_764010();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonHighlightedTextViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_93E248 != -1)
  {
    swift_once();
  }

  v2 = sub_764030();
  v3 = sub_BE38(v2, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonHighlightedTextView(uint64_t a1)
{
  result = qword_964248;
  if (!qword_964248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_731C14(uint64_t a1)
{
  sub_764030();
  if (v1 <= 0x3F)
  {
    sub_DBB44(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_731D08(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v39 = a2;
  v33 = a1;
  v4 = sub_764030();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_764040();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_766D70();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_767030();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  if (qword_93E248 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v4, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  sub_767020();
  sub_766B40();
  v30 = v4;
  if (qword_93C740 != -1)
  {
    swift_once();
  }

  v21 = sub_760500();
  v22 = sub_BE38(v21, qword_99BB00);
  v41[3] = v21;
  v41[4] = sub_73222C(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v23 = sub_B1B4(v41);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  sub_766F80();
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_BEB8(v41);
  sub_764020();
  sub_767010();
  v24(v16, v10);
  sub_75D7B0();
  (*(v11 + 16))(v16, v19, v10);
  sub_766D50();
  sub_766D90();
  sub_766D40();
  (*(v31 + 8))(v9, v32);
  sub_134D8(v41, v40);
  (*(v36 + 16))(v35, v20, v30);
  v25 = v34;
  sub_763FE0();
  sub_763FF0();
  v27 = v26;
  (*(v37 + 8))(v25, v38);
  sub_BEB8(v41);
  v24(v19, v10);
  return v27;
}

uint64_t sub_73222C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_732274()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_metrics;
  if (qword_93E248 != -1)
  {
    swift_once();
  }

  v2 = sub_764030();
  v3 = sub_BE38(v2, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_itemType;
  v6 = sub_75FC90();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33MetadataRibbonHighlightedTextView_allowsTruncation) = 2;
  sub_76A840();
  __break(1u);
}

uint64_t sub_732418()
{
  v0 = sub_BD88(&unk_944D90, &qword_783300);
  __chkstk_darwin(v0 - 8);
  v1 = sub_BD88(&qword_948DF0, &qword_78A188);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  sub_75C790();
  sub_768B30();
  sub_EECB0();
  sub_768AF0();
  return (*(v2 + 8))(v4, v1);
}

id sub_732590(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v2 = sub_BD88(&qword_944D88, &unk_784820);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v27 = &v27 - v3;
  v4 = sub_764A60();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75FA00();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_BD88(&unk_944D90, &qword_783300);
  v10 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = sub_BD88(&unk_959540, &qword_784830);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v27 - v18;
  sub_75C7E0();
  sub_768760();
  (*(v17 + 8))(v19, v16);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  v20 = sub_527DE4();
  sub_134D8(v39, v38);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_764F90();
  if (swift_dynamicCast())
  {
    v21 = v37;
    v22 = v31;
    (*(v10 + 16))(v12, v15, v31);
    sub_768FA0();
    v23 = v27;
    sub_768B30();
    v24 = v36;
    sub_3DBA7C(v21, v23, v28, v9, v6, v20);
    swift_unknownObjectRelease();

    (*(v29 + 8))(v23, v30);
    (*(v34 + 8))(v6, v35);
    (*(v32 + 8))(v9, v33);
    (*(v10 + 8))(v15, v22);
    sub_BEB8(v39);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v34 + 8))(v6, v35);
    (*(v32 + 8))(v9, v33);
    (*(v10 + 8))(v15, v31);
    sub_BEB8(v39);
    v24 = v36;
  }

  v25 = [v24 contentView];
  [v25 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return [v24 setNeedsLayout];
}

uint64_t sub_732AAC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_732B08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30MediumLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_732BD8(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_732CCC(CGFloat *a1, char a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v8 = v94 - v7;
  v9 = sub_76A920();
  v10 = *(v9 - 1);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[qword_9A0A18] != 1)
  {
    return;
  }

  v14 = [v2 traitCollection];
  v15 = sub_7699F0();

  v16 = 20.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 20.0;
  if (a2)
  {
    v17 = *&v3[qword_9A0A20];
    v16 = *&v3[qword_9A0A20 + 8];
    v18 = *&v3[qword_9A0A20 + 16];
    v19 = *&v3[qword_9A0A20 + 24];
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
  v29 = *&v3[qword_964308];
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

  if (qword_93E258 != -1)
  {
    swift_once();
  }

  v40 = sub_766CA0();
  sub_BE38(v40, qword_9A09D0);
  sub_766470();
  v99 = v40;
  sub_766700();
  v42 = v41;
  v44 = *(v10 + 8);
  v43 = v10 + 8;
  v97 = v44;
  v44(v13, v9);
  v107 = *&v3[qword_964310];
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
    *(a1 + 2) = sub_119AC;
    *(a1 + 3) = v48;
    v112 = sub_2636C;
    v113 = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10C1C;
    v111 = &unk_89F0E8;
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
  if (qword_93DA10 != -1)
  {
    swift_once();
  }

  v52 = sub_7666D0();
  v53 = sub_BE38(v52, qword_99F628);
  v54 = *(v52 - 8);
  (*(v54 + 16))(v8, v53, v52);
  (*(v54 + 56))(v8, 0, 1, v52);
  v55 = sub_7653B0();
  v111 = v55;
  v112 = sub_9BA34();
  v56 = sub_B1B4(aBlock);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  sub_765C30();
  sub_BEB8(aBlock);
  sub_762CA0();
  v17 = v57;
  v35 = v58;
  sub_10A2C(v8, &unk_93E530, &unk_77C5F0);
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
  if (qword_93E250 != -1)
  {
    swift_once();
  }

  sub_BE38(isEscapingClosureAtFileLocation, qword_9A09B8);
  sub_766720();
  v27 = MinY + v70;
  v50 = &selRef_setSpeed_;
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

  if (qword_93E260 != -1)
  {
    goto LABEL_34;
  }

LABEL_28:
  sub_BE38(isEscapingClosureAtFileLocation, qword_9A09E8);
  sub_766470();
  sub_766700();
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
  [v29 v50[478]];
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
  v92 = *&v3[qword_964300];
  [v92 v50[478]];
  [v92 frame];
  Height = CGRectGetHeight(v127);

  a1[3] = v89 - Height;
}

uint64_t sub_733724(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766CA0();
  sub_161DC(v8, a3);
  sub_BE38(v8, a3);
  if (qword_93DA10 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F628);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_766CB0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_733900()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  result = sub_769FF0();
  qword_9A0A00 = result;
  return result;
}

void *sub_733944(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v57 = swift_isaMask & *v4;
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v53 - v14;
  v16 = qword_9642F8;
  sub_75CD70();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = qword_9A0A08;
  v18 = sub_75C840();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[qword_9A0A10] = 0;
  v5[qword_9A0A18] = 0;
  v19 = &v5[qword_9A0A20];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v19 = UIEdgeInsetsZero.top;
  v19[1] = left;
  v19[2] = bottom;
  v19[3] = right;
  v5[qword_9A0A28] = 0;
  v23 = [objc_allocWithZone(UIView) init];
  *&v5[qword_964300] = v23;
  if (qword_93DA18 != -1)
  {
    swift_once();
  }

  v24 = sub_7666D0();
  v25 = sub_BE38(v24, qword_99F640);
  v26 = *(v24 - 8);
  v56 = *(v26 + 16);
  v56(v15, v25, v24);
  v55 = *(v26 + 56);
  v55(v15, 0, 1, v24);
  v27 = enum case for DirectionalTextAlignment.none(_:);
  v54 = *(v11 + 104);
  v54(v58, enum case for DirectionalTextAlignment.none(_:), v10);
  v28 = sub_75BB20();
  v53 = v10;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[qword_964308] = sub_75BB10();
  if (qword_93DA10 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v24, qword_99F628);
  v56(v15, v31, v24);
  v55(v15, 0, 1, v24);
  v54(v58, v27, v53);
  v32 = objc_allocWithZone(v29);
  *&v5[qword_964310] = sub_75BB10();
  v35 = type metadata accessor for FramedMediaCollectionViewCell(0, *(v57 + 80), v33, v34);
  v59.receiver = v5;
  v59.super_class = v35;
  v36 = objc_msgSendSuper2(&v59, "initWithFrame:", a1, a2, a3, a4);
  v37 = [v36 contentView];
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v38 = [v36 contentView];
  v39 = qword_9642F8;
  [v38 addSubview:*(v36 + qword_9642F8)];

  v40 = qword_964300;
  v41 = *(v36 + qword_964300);
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v42 = v41;
  v43 = sub_76A030();
  [v42 setBackgroundColor:v43];

  [*(v36 + v40) setHidden:1];
  [*(v36 + v39) addSubview:*(v36 + v40)];
  v44 = qword_964308;
  v45 = *(v36 + qword_964308);
  v46 = sub_769FD0();
  [v45 setTextColor:v46];

  [*(v36 + v40) addSubview:*(v36 + v44)];
  v47 = qword_964310;
  v48 = qword_93E268;
  v49 = *(v36 + qword_964310);
  if (v48 != -1)
  {
    swift_once();
  }

  [v49 setTextColor:qword_9A0A00];

  [*(v36 + v47) setTextAlignment:4];
  [*(v36 + v40) addSubview:*(v36 + v47)];
  v50 = *(&stru_108.size + (swift_isaMask & *v36));
  v51 = *(v36 + v39);
  v50();

  return v36;
}

uint64_t sub_73403C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for FramedMediaCollectionViewCell(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v21.receiver = v4;
  v21.super_class = v6;
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v7 = *(v4 + qword_9642F8);
  v8 = [v4 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();
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
  sub_732CCC(v20, *(v5 + qword_9A0A28));
  return (*&stru_108.segname[(swift_isaMask & *v5) + 16])(v20);
}

void sub_7341A8(void *a1)
{
  v4 = a1;
  sub_73403C(v4, v1, v2, v3);
}

id sub_7341F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FramedMediaCollectionViewCell(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_7342E4()
{
  v1 = qword_9642F8;
  sub_75CD70();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = qword_9A0A08;
  v3 = sub_75C840();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + qword_9A0A10) = 0;
  *(v0 + qword_9A0A18) = 0;
  v4 = (v0 + qword_9A0A20);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  *(v0 + qword_9A0A28) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_7343F4()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_73444C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_734464()
{
  v0 = sub_75DAB0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  v4 = sub_73459C(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_73459C(uint64_t a1)
{
  v2 = sub_7656C0();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v60 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75FDA0();
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v51 - v7;
  __chkstk_darwin(v8);
  v10 = &v51 - v9;
  v11 = sub_BD88(&qword_94DF10, &qword_7817B8);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v59 = sub_75FDE0();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_764A60();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  sub_75DA70();
  sub_764A20();
  sub_734E14(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v64 = sub_76A520();
  v25 = *(v19 + 8);
  v25(v21, v18);
  v25(v24, v18);
  v63 = a1;
  v26 = sub_75DA40();
  v27 = v52;
  (*(v52 + 56))(v16, 1, 1, v4);
  v55 = v16;
  v28 = v16;
  v29 = v27;
  sub_8F554(v28, v13);
  v30 = *(v27 + 48);
  if (v30(v13, 1, v4) == 1)
  {
    (*(v53 + 224))();
    v31 = v10;
    if (v30(v13, 1, v4) != 1)
    {
      sub_8F5C4(v13);
    }
  }

  else
  {
    (*(v27 + 32))(v10, v13, v4);
    v31 = v10;
  }

  v32 = *(v29 + 16);
  v33 = v54;
  v32(v54, v31, v4);
  v34 = (*(v29 + 88))(v33, v4);
  v35 = v57;
  if (v34 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    if (qword_93C8C0 != -1)
    {
      swift_once();
    }

    sub_134D8(qword_99C688, v67);
  }

  else if (v34 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_93C8B8 != -1)
    {
      swift_once();
    }

    sub_134D8(qword_99C660, v67);
  }

  else
  {
    if (qword_93C8C0 != -1)
    {
      swift_once();
    }

    sub_134D8(qword_99C688, v67);
    (*(v29 + 8))(v33, v4);
  }

  v32(v35, v31, v4);
  sub_134D8(v67, v66);
  sub_26F08();
  if (qword_93DA80 != -1)
  {
    swift_once();
  }

  v36 = sub_7666D0();
  sub_BE38(v36, qword_99F778);
  v37 = [v26 traitCollection];
  sub_769E10();

  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v38 = sub_766CA0();
  v39 = sub_BE38(v38, qword_99FDE8);
  v65[3] = v38;
  v65[4] = &protocol witness table for StaticDimension;
  v40 = sub_B1B4(v65);
  (*(*(v38 - 8) + 16))(v40, v39, v38);
  v41 = v56;
  sub_75FDC0();
  swift_unknownObjectRelease();
  sub_BEB8(v67);
  (*(v29 + 8))(v31, v4);
  sub_8F5C4(v55);
  v42 = v60;
  sub_75DA20();
  sub_765630();
  v44 = v43;
  v46 = v45;
  (*(v61 + 8))(v42, v62);
  v47 = sub_75DA40();
  v48.n128_u64[0] = v44;
  v49 = sub_3028D0(v41, v47, v48, v46);
  swift_unknownObjectRelease();
  (*(v58 + 8))(v41, v59);
  return v49;
}

uint64_t sub_734E14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_734E60(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_766880();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_766850();
  sub_766860();
  sub_134D8(v4 + 88, v12);
  v13[3] = sub_767340();
  v13[4] = &protocol witness table for Margins;
  sub_B1B4(v13);
  sub_767320();
  sub_766860();
  sub_BEB8(v13);
  sub_7673F0();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_73503C()
{
  v0 = sub_766840();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766970();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  sub_766830();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v6(v3, v5, v0);
  sub_766800();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v6(v3, v5, v0);
  sub_7667F0();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v6(v3, v5, v0);
  return sub_766810();
}

uint64_t sub_7351E4()
{
  v0 = sub_766840();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766970();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  sub_7667F0();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v6(v3, v5, v0);
  sub_766800();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v6(v3, v5, v0);
  return sub_766810();
}

uint64_t sub_735358(__n128 a1)
{
  sub_766850();
  sub_766860();
  sub_134D8(v1 + 88, &v3);
  v4[3] = sub_767340();
  v4[4] = &protocol witness table for Margins;
  sub_B1B4(v4);
  sub_767320();
  sub_766860();
  return sub_BEB8(v4);
}

uint64_t sub_735444(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_73548C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_7354FC@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_735528(uint64_t a1, uint64_t a2)
{
  v4 = sub_735648();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_735580()
{
  result = qword_964398;
  if (!qword_964398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964398);
  }

  return result;
}

unint64_t sub_7355D8()
{
  result = qword_9643A0;
  if (!qword_9643A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9643A0);
  }

  return result;
}

unint64_t sub_735648()
{
  result = qword_9643A8;
  if (!qword_9643A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9643A8);
  }

  return result;
}

uint64_t sub_73569C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_7356F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

CGFloat sub_73575C()
{
  CGAffineTransformMakeScale(&v2, 1.0, -1.0);
  *&v1.a = *&v2.m11;
  *&v1.c = *&v2.m13;
  *&v1.tx = *&v2.m21;
  CATransform3DMakeAffineTransform(&v2, &v1);
  *byte_9A0A30 = v2;
  return v2.m21;
}

uint64_t type metadata accessor for RevealingImageMirrorView(uint64_t a1)
{
  result = qword_9643D8;
  if (!qword_9643D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_73588C()
{
  result = qword_9414D0;
  if (!qword_9414D0)
  {
    type metadata accessor for MediumLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9414D0);
  }

  return result;
}

double sub_7358E4()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA40();
  sub_75DA20();
  sub_765630();
  v5 = v4;
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  swift_getObjectType();
  v8 = swift_unknownObjectRetain();
  v9.n128_u64[0] = v5;
  sub_27BC08(v8, v9, v7);
  v11 = v10;
  swift_unknownObjectRelease_n();
  return v11;
}

uint64_t sub_735A34()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_9A0AB0);
  sub_BE38(v4, qword_9A0AB0);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

unsigned __int8 *sub_735B88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_75AAC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_messagesAudioSessionCategory] = 0;
  v11 = &v3[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_messagesAudioSessionCategoryOptions];
  *v11 = 0;
  v11[8] = 1;
  v3[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_startedDisappearTransition] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_objectGraph] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_freshnessWatchdog] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_rootViewController] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_storeNavigationController] = 0;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_storeTab;
  v13 = sub_758880();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_bootstrapPendingClosuresHandler;
  sub_763190();
  swift_allocObject();
  *&v4[v14] = sub_763180();
  v4[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_appHasBeenInBackground] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_isOnboardingFinished] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_isPresentingContentFinished] = 0;
  if (a2)
  {
    v15 = sub_769210();
  }

  else
  {
    v15 = 0;
  }

  v16 = type metadata accessor for StoreRootViewController(0);
  v25.receiver = v4;
  v25.super_class = v16;
  v17 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", v15, a3);

  v18 = objc_opt_self();
  v19 = v17;
  [v18 setFlushTimerEnabled:0];
  [v18 setDisableBackgroundMetrics:1];
  (*(v8 + 104))(v10, enum case for BootstrapPhase.onboarding(_:), v7);
  sub_763170();
  (*(v8 + 8))(v10, v7);
  v20 = [objc_opt_self() sharedCoordinator];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_73B8FC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_89F4F0;
  v22 = _Block_copy(aBlock);

  [v20 registerAppBootstrapHandler:v22];
  _Block_release(v22);

  return v19;
}

id sub_735F4C()
{
  v0 = objc_opt_self();
  [v0 setFlushTimerEnabled:1];

  return [v0 setDisableBackgroundMetrics:0];
}

void sub_735FA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_7364C8();
  }
}

void sub_736084()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for StoreRootViewController(0);
  objc_msgSendSuper2(&v10, "viewDidLoad");
  if (qword_93E118 != -1)
  {
    swift_once();
  }

  qword_9A0868 = &off_89F230;
  swift_unknownObjectWeakAssign();
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = sub_763BA0();
  [v2 addObserver:v0 selector:"purchaseComplete:" name:v3 object:0];

  v4 = [v1 defaultCenter];
  if (qword_93E218 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v0 selector:? name:? object:?];

  type metadata accessor for MessagesStoreBootstrap(0);
  v5 = swift_allocObject();
  sub_73A838(v0, v5);
  v7 = sub_749C94(v6);
  v8 = [v7 view];
  if (v8)
  {
    v9 = v8;
    [v8 setClipsToBounds:1];

    sub_73B1EC(v7);

    if (qword_93E0C8 != -1)
    {
      swift_once();
    }

    qword_961A80 = &off_89F240;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

id sub_7364C8()
{
  v1 = v0;
  v2 = sub_75AAC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_945020, qword_784B20);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_objectGraph] = 0;

  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_storeNavigationController];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_storeNavigationController] = 0;

  v10 = sub_758880();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_storeTab;
  swift_beginAccess();
  sub_73B6BC(v8, &v1[v11]);
  swift_endAccess();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_freshnessWatchdog] = 0;

  v1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_isOnboardingFinished] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_isPresentingContentFinished] = 0;
  type metadata accessor for MessagesStoreBootstrap(0);
  v12 = swift_allocObject();
  v13 = v1;
  sub_73A838(v13, v12);
  v15 = sub_749C94(v14);
  result = [v15 view];
  if (result)
  {
    v17 = result;
    [result setClipsToBounds:1];

    sub_73B1EC(v15);

    *(swift_allocObject() + 16) = v13;
    (*(v3 + 104))(v5, enum case for BootstrapPhase.initialBootstrap(_:), v2);
    v18 = v13;
    sub_763170();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_7367DC(char *a1)
{
  v2 = sub_75AAC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = a1;
  v6 = *(v3 + 104);
  v6(v5, enum case for BootstrapPhase.initialBootstrap(_:), v2);
  v7 = a1;
  sub_763170();

  v8 = *(v3 + 8);
  v8(v5, v2);
  *(swift_allocObject() + 16) = v7;
  v6(v5, enum case for BootstrapPhase.onboarding(_:), v2);
  v9 = v7;
  sub_763170();

  return (v8)(v5, v2);
}

void sub_7369F4(__n128 a1)
{
  v2 = v1;
  v3 = sub_756CD0();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  sub_763B90();
  sub_76A6E0();
  if (!*(v4 + 16) || (v6 = sub_663E34(v10, v5), (v7 & 1) == 0))
  {

    sub_1EB60(v10);
LABEL_9:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_10;
  }

  sub_132B4(*(v4 + 56) + 32 * v6, &v11);
  sub_1EB60(v10);

  if (!*(&v12 + 1))
  {
LABEL_10:
    sub_10A2C(&v11, &unk_93FBD0, &qword_77DFA0);
    return;
  }

  sub_BE70(0, &qword_95C0B8, ASDPurchase_ptr);
  if (swift_dynamicCast())
  {
    v8 = v10[0];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong storeRootViewController:v2 didComplete:v8];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_736B60()
{
  v0 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v0 - 8);
  v68 = &v66 - v1;
  v2 = sub_7687B0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_BD88(&qword_964488, qword_7B0EA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v66 - v4;
  v6 = sub_75E270();
  v7 = *(v6 - 8);
  v71 = v6;
  v72 = v7;
  __chkstk_darwin(v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v66 - v11;
  __chkstk_darwin(v13);
  v70 = &v66 - v14;
  v15 = sub_BD88(&unk_940200, &unk_7AEB70);
  __chkstk_darwin(v15 - 8);
  v17 = &v66 - v16;
  v18 = sub_764CF0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v73 = &v66 - v23;
  v24 = sub_756CD0();
  if (!v24)
  {
    goto LABEL_14;
  }

  v25 = v24;
  v75 = 0x64496D616461;
  v76 = 0xE600000000000000;
  sub_76A6E0();
  if (!*(v25 + 16) || (v27 = sub_663E34(aBlock, v26), (v28 & 1) == 0))
  {

    sub_1EB60(aBlock);
LABEL_14:
    v77 = 0u;
    v78 = 0u;
    goto LABEL_15;
  }

  sub_132B4(*(v25 + 56) + 32 * v27, &v77);
  sub_1EB60(aBlock);

  if (!*(&v78 + 1))
  {
LABEL_15:
    sub_10A2C(&v77, &unk_93FBD0, &qword_77DFA0);
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_16;
  }

  v29 = swift_dynamicCast();
  (*(v19 + 56))(v17, v29 ^ 1u, 1, v18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_16:
    v40 = &unk_940200;
    v41 = &unk_7AEB70;
    v42 = v17;
    return sub_10A2C(v42, v40, v41);
  }

  v30 = v73;
  (*(v19 + 32))();
  v31 = sub_764C90();
  if (!v31)
  {
    return (*(v19 + 8))(v30, v18);
  }

  v67 = v31;
  v32 = sub_756CD0();
  if (!v32)
  {
    (*(v19 + 8))(v30, v18);

    v77 = 0u;
    v78 = 0u;
    v35 = v71;
    goto LABEL_22;
  }

  v33 = v32;
  v75 = 0x74616E6974736564;
  v76 = 0xEB000000006E6F69;
  sub_76A6E0();
  v35 = v71;
  if (!*(v33 + 16) || (v36 = sub_663E34(aBlock, v34), (v37 & 1) == 0))
  {

    sub_1EB60(aBlock);
    v77 = 0u;
    v78 = 0u;
    goto LABEL_20;
  }

  sub_132B4(*(v33 + 56) + 32 * v36, &v77);
  sub_1EB60(aBlock);

  if (!*(&v78 + 1))
  {
LABEL_20:
    (*(v19 + 8))(v30, v18);

LABEL_22:
    v44 = v72;
    sub_10A2C(&v77, &unk_93FBD0, &qword_77DFA0);
    (*(v44 + 56))(v5, 1, 1, v35);
    goto LABEL_23;
  }

  v38 = swift_dynamicCast();
  v39 = v72;
  (*(v72 + 56))(v5, v38 ^ 1u, 1, v35);
  if ((*(v39 + 48))(v5, 1, v35) == 1)
  {
    (*(v19 + 8))(v30, v18);

LABEL_23:
    v40 = &qword_964488;
    v41 = qword_7B0EA0;
    v42 = v5;
    return sub_10A2C(v42, v40, v41);
  }

  (*(v39 + 32))(v70, v5, v35);
  if (!*&v69[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_objectGraph])
  {

    (*(v39 + 8))(v70, v35);
    return (*(v19 + 8))(v30, v18);
  }

  v66 = *&v69[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_objectGraph];
  v45 = *(v39 + 16);
  v45(v12, v70, v35);
  v46 = (*(v39 + 88))(v12, v35);
  if (v46 == enum case for OpenableDestination.app(_:))
  {
    (*(v19 + 16))(v21, v73, v18);
    v45(v9, v70, v35);
    v47 = v66;

    sub_768790();
    sub_757FC0();
    swift_allocObject();
    v48 = sub_757FA0();
    v49 = sub_BD88(&unk_93F630, &unk_77E230);
    v50 = v68;
    sub_768860();
    v51 = v35;
    v52 = *(v49 - 8);
    if ((*(v52 + 48))(v50, 1, v49) != 1)
    {
      sub_32ACE4(v48, 1, v47, v50);

      (*(v72 + 8))(v70, v51);
      (*(v19 + 8))(v73, v18);
      return (*(v52 + 8))(v50, v49);
    }

    (*(v72 + 8))(v70, v51);
    (*(v19 + 8))(v73, v18);
    v40 = &unk_93F980;
    v41 = &qword_77EDA0;
    v42 = v50;
    return sub_10A2C(v42, v40, v41);
  }

  v53 = v46;
  v54 = enum case for OpenableDestination.messages(_:);

  if (v53 == v54)
  {
    v55 = v69;
    v56 = [v69 presentedViewController];
    if (v56)
    {
      v57 = v56;
      v58 = swift_allocObject();
      v59 = v67;
      *(v58 + 16) = v55;
      *(v58 + 24) = v59;
      aBlock[4] = sub_73B6B4;
      aBlock[5] = v58;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_89F400;
      v60 = _Block_copy(aBlock);
      v61 = v55;
      v62 = v59;

      [v57 dismissViewControllerAnimated:1 completion:v60];

      _Block_release(v60);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v64 = v67;
        [Strong storeRootViewController:v55 openApp:v67];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v65 = v73;
    (*(v72 + 8))(v70, v71);
    return (*(v19 + 8))(v65, v18);
  }

  else
  {
    result = sub_76A940();
    __break(1u);
  }

  return result;
}

double sub_7375DC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong storeRootViewController:a1 openApp:a2];

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_737670(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_756CE0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_756CC0();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_737760(uint64_t a1, uint64_t a2, __n128 a3)
{
  v41 = a2;
  v4 = sub_760280();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_758B40();
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v45 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75F340();
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v42 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  __chkstk_darwin(v11 - 8);
  v47 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v13 - 8);
  v15 = v35 - v14;
  v16 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v16 - 8);
  v18 = v35 - v17;
  v19 = sub_765490();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v23 - 8);
  v25 = v35 - v24;
  v26 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_objectGraph);
  if (v26)
  {
    v37 = v4;
    v38 = v6;
    v27 = sub_BD88(&unk_93F630, &unk_77E230);

    sub_768860();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v25, 1, v27) == 1)
    {

      sub_10A2C(v25, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      (*(v20 + 104))(v22, enum case for FlowPage.unknown(_:), v19);
      v29 = sub_7570A0();
      v36 = v28;
      v30 = v29;
      v31 = *(v29 - 8);
      (*(v31 + 16))(v18, v41, v29);
      (*(v31 + 56))(v18, 0, 1, v30);
      v32 = sub_759E30();
      v33 = *(*(v32 - 8) + 56);
      v35[1] = v15;
      v33(v15, 1, 1, v32);
      v48 = 0u;
      v49 = 0u;
      sub_768790();
      (*(v39 + 104))(v42, enum case for FlowAnimationBehavior.never(_:), v40);
      (*(v43 + 104))(v45, enum case for FlowOrigin.external(_:), v44);
      (*(v46 + 104))(v38, enum case for FlowPresentationContext.infer(_:), v37);
      sub_768CE0();
      sub_758B20();
      swift_allocObject();
      v34 = sub_758AD0();
      sub_32AC14(v34, 1, v26, v25);

      (*(v36 + 8))(v25, v27);
    }
  }
}

uint64_t sub_737EB8()
{
  v1 = sub_75AAC0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_758380();
  v27 = *(v5 - 8);
  v32 = *(v27 + 64);
  __chkstk_darwin(v5);
  v28 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v24 - v10;
  v30 = OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_appHasBeenInBackground;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_appHasBeenInBackground])
  {
    v12 = &enum case for AppEnterMetricsEvent.EnterKind.taskSwitch(_:);
  }

  else
  {
    v12 = &enum case for AppEnterMetricsEvent.EnterKind.launch(_:);
  }

  (*(v8 + 104))(v11, *v12, v5, v9);
  *(swift_allocObject() + 16) = v0;
  v29 = v0;
  v26 = *(v2 + 104);
  v26(v4, enum case for BootstrapPhase.initialBootstrap(_:), v1);
  v13 = v0;
  sub_763170();

  v14 = *(v2 + 8);
  v24[1] = v2 + 8;
  v25 = v14;
  v14(v4, v1);
  v15 = v28;
  v16 = *(v27 + 16);
  v31 = v11;
  v17 = v11;
  v18 = v27;
  v16(v28, v17, v5);
  v19 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  v21 = *(v18 + 32);
  v32 = v5;
  v21(v20 + v19, v15, v5);
  v26(v4, enum case for BootstrapPhase.onboarding(_:), v1);
  v22 = v13;
  sub_763170();

  v25(v4, v1);
  if (v29[v30] == 1 && *&v22[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_freshnessWatchdog])
  {

    sub_75E0A0();
  }

  return (*(v18 + 8))(v31, v32);
}

uint64_t sub_73828C(char *a1)
{
  v2 = sub_75AAC0();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_768380();
  v31 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_7683C0();
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = [v11 sharedInstance];
  v13 = [v12 category];

  v14 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_messagesAudioSessionCategory];
  *&a1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_messagesAudioSessionCategory] = v13;

  v15 = [v11 sharedInstance];
  v16 = [v15 categoryOptions];

  v17 = &a1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_messagesAudioSessionCategoryOptions];
  *v17 = v16;
  v17[8] = 0;
  if (qword_93C5F8 != -1)
  {
    swift_once();
  }

  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = AVAudioSessionCategoryPlayback;
  v18[5] = AVAudioSessionModeDefault;
  v18[6] = 1;
  aBlock[4] = sub_73B928;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_89F360;
  v19 = _Block_copy(aBlock);
  v20 = AVAudioSessionCategoryPlayback;
  v21 = AVAudioSessionModeDefault;
  sub_7683A0();
  v34 = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v19);
  (*(v31 + 8))(v7, v5);
  (*(v8 + 8))(v10, v30);

  *(swift_allocObject() + 16) = a1;
  v23 = v32;
  v22 = v33;
  v24 = *(v32 + 104);
  v24(v4, enum case for BootstrapPhase.initialBootstrap(_:), v33);
  v25 = a1;
  sub_763170();

  v26 = *(v23 + 8);
  v26(v4, v22);
  *(swift_allocObject() + 16) = v25;
  v24(v4, enum case for BootstrapPhase.onboarding(_:), v22);
  v27 = v25;
  sub_763170();

  return (v26)(v4, v22);
}

void sub_7387C4(uint64_t a1, uint64_t a2)
{
  v15 = sub_768CD0();
  v3 = *(v15 - 8);
  __chkstk_darwin(v15);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_768940();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_768670();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_objectGraph))
  {

    sub_758390();
    sub_768900();
    sub_768ED0();
    sub_768CB0();
    sub_768930();

    (*(v3 + 8))(v5, v15);
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }
}

void sub_738A30()
{
  v1 = v0;
  v2 = sub_768CD0();
  v37 = *(v2 - 8);
  __chkstk_darwin(v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768940();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_768670();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_768380();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7683C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_messagesAudioSessionCategory);
  if (v15)
  {
    v34 = v2;
    v35 = v0;
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_messagesAudioSessionCategoryOptions + 8))
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_messagesAudioSessionCategoryOptions);
    }

    v17 = qword_93C5F8;
    v18 = v15;
    if (v17 != -1)
    {
      swift_once();
    }

    v33 = qword_9483E8;
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v18;
    v19[5] = AVAudioSessionModeDefault;
    v19[6] = v16;
    v47 = sub_5A86C;
    v48 = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    v46 = &unk_89F2C0;
    v20 = _Block_copy(aBlock);
    v21 = v18;
    v22 = AVAudioSessionModeDefault;
    sub_7683A0();
    v44 = _swiftEmptyArrayStorage;
    sub_4C81C();
    sub_BD88(&qword_940350, &unk_77F850);
    sub_4C874();
    sub_76A5A0();
    sub_769980();
    _Block_release(v20);

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v11);

    v2 = v34;
    v1 = v35;
  }

  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_objectGraph))
  {
    v23 = objc_opt_self();

    v24 = [v23 sharedApplication];
    v25 = sub_769210();
    v26 = [v24 beginBackgroundTaskWithName:v25 expirationHandler:0];

    v27 = v38;
    sub_758370();
    sub_768900();
    v28 = v40;
    v29 = v43;
    sub_768ED0();
    v30 = v36;
    sub_768CB0();
    sub_768930();
    (*(v37 + 8))(v30, v2);
    *(swift_allocObject() + 16) = v26;
    v31 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
    v32 = sub_769970();
    v46 = v31;
    v47 = &protocol witness table for OS_dispatch_queue;
    aBlock[0] = v32;
    sub_768F40();

    (*(v42 + 8))(v28, v29);
    (*(v39 + 8))(v27, v41);
    sub_BEB8(aBlock);
  }

  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_appHasBeenInBackground) = 1;
}

void sub_739070(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedApplication];
  [v3 endBackgroundTask:a2];
}

void sub_7390E0(uint64_t a1, __n128 a2)
{
  v41 = sub_758B40();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75F340();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_760280();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7687B0();
  __chkstk_darwin(v7 - 8);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v9 - 8);
  v44 = &v33 - v10;
  v11 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v11 - 8);
  v43 = &v33 - v12;
  v13 = sub_765490();
  v33 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  if (qword_93E120 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    v26 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_objectGraph);
    if (v26)
    {
      sub_75A920();
      sub_768900();

      sub_768ED0();
      sub_5CCE88(v49, 2);
      sub_BD88(&qword_93F348, &qword_77DFB0);
      v27 = sub_769490();

      if (v27)
      {
        v28 = sub_BD88(&unk_93F630, &unk_77E230);
        sub_768860();
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(v18, 1, v28) == 1)
        {

          sub_10A2C(v18, &unk_93F980, &qword_77EDA0);
        }

        else
        {
          v51 = 0;
          v49 = 0u;
          v50 = 0u;
          (*(v33 + 104))(v15, enum case for FlowPage.onboarding(_:), v13);
          v30 = sub_7570A0();
          (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
          v31 = sub_759E30();
          (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
          v48 = &type metadata for OnboardingConfiguration;
          v47[0] = 2;
          sub_768790();
          (*(v34 + 104))(v38, enum case for FlowPresentationContext.infer(_:), v35);
          (*(v36 + 104))(v40, enum case for FlowAnimationBehavior.infer(_:), v37);
          (*(v39 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
          sub_768CE0();
          sub_758B20();
          swift_allocObject();
          v32 = sub_758AD0();
          sub_32AC14(v32, 1, v26, v18);

          (*(v29 + 8))(v18, v28);
        }

        return;
      }
    }

    sub_73989C();
    return;
  }

  while (1)
  {
    v46 = Strong;
    v21 = [Strong viewIfLoaded];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 window];

      if (v23)
      {
        v24 = [v23 isHidden];

        if ((v24 & 1) == 0)
        {
          break;
        }
      }
    }

    v20 = [v46 presentedViewController];

    Strong = v20;
    if (!v20)
    {
      goto LABEL_12;
    }
  }

  v25 = v46;
}

uint64_t sub_73989C()
{
  v1 = v0;
  v2 = sub_75AAC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_768430();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  *v9 = sub_769970();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_768460();
  v12 = *(v7 + 8);
  v11 = (v7 + 8);
  v12(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_bootstrapPendingClosuresHandler);
  v9 = enum case for BootstrapPhase.onboarding(_:);
  v19 = *(v3 + 104);
  v19(v5, enum case for BootstrapPhase.onboarding(_:), v2);
  v14 = sub_763150();
  v11 = *(v3 + 8);
  result = v11(v5, v2);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_isOnboardingFinished;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_isOnboardingFinished) != 1 || (v14 & 1) != 0)
  {
    v17[1] = v13;
    v18 = v1;
    if (qword_93E278 == -1)
    {
LABEL_5:
      v16 = sub_768FF0();
      v17[0] = sub_BE38(v16, qword_9A0AB0);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768540();
      sub_768E80();

      *(v18 + v6) = 1;
      v19(v5, v9, v2);
      sub_763160();
      return v11(v5, v2);
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  return result;
}

void sub_739C28()
{
  v1 = v0;
  v2 = sub_BD88(&qword_945020, qword_784B20);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_758880();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_768430();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  *v12 = sub_769970();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = sub_768460();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_storeNavigationController);
  if (!v14)
  {
    if (qword_93E278 == -1)
    {
LABEL_8:
      v18 = sub_768FF0();
      sub_BE38(v18, qword_9A0AB0);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768540();
      sub_768EA0();
LABEL_9:

      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  v15 = OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_storeTab;
  swift_beginAccess();
  sub_44BA98(v1 + v15, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v16 = v14;
    sub_10A2C(v4, &qword_945020, qword_784B20);
    if (qword_93E278 != -1)
    {
      swift_once();
    }

    v17 = sub_768FF0();
    sub_BE38(v17, qword_9A0AB0);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    goto LABEL_9;
  }

  (*(v6 + 32))(v8, v4, v5);
  v19 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_objectGraph);
  if (v19)
  {
    v20 = v14;

    if (sub_3B744())
    {
      sub_74AFC0(v20, v8, v19);
    }

    sub_73A290();
  }

  else
  {
    v21 = qword_93E278;
    v22 = v14;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_768FF0();
    sub_BE38(v23, qword_9A0AB0);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_73A290()
{
  v1 = v0;
  v2 = sub_75AAC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_768430();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  *v9 = sub_769970();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_768460();
  v12 = *(v7 + 8);
  v11 = (v7 + 8);
  v12(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_bootstrapPendingClosuresHandler);
  v9 = enum case for BootstrapPhase.presentingContent(_:);
  v19 = *(v3 + 104);
  v19(v5, enum case for BootstrapPhase.presentingContent(_:), v2);
  v14 = sub_763150();
  v11 = *(v3 + 8);
  result = v11(v5, v2);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_isPresentingContentFinished;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_isPresentingContentFinished) != 1 || (v14 & 1) != 0)
  {
    v17[1] = v13;
    v18 = v1;
    if (qword_93E278 == -1)
    {
LABEL_5:
      v16 = sub_768FF0();
      v17[0] = sub_BE38(v16, qword_9A0AB0);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768540();
      sub_768E80();

      *(v18 + v6) = 1;
      v19(v5, v9, v2);
      sub_763160();
      return v11(v5, v2);
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  return result;
}

id sub_73A61C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreRootViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StoreRootViewController(uint64_t a1)
{
  result = qword_964478;
  if (!qword_964478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_73A764(uint64_t a1)
{
  sub_44B0F0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_73A838(void *a1, uint64_t a2)
{
  *(a2 + OBJC_IVAR____TtC18ASMessagesProvider22MessagesStoreBootstrap_delegate + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_89F258;
  swift_unknownObjectWeakAssign();
  type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
  v4 = type metadata accessor for StoreNavigationController();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider25StoreNavigationController_objectGraph] = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = objc_msgSendSuper2(&v10, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
  [v7 setDelegate:v7];
  *(a2 + OBJC_IVAR____TtC18ASMessagesProvider22MessagesStoreBootstrap_navigationController) = v7;
  v8 = sub_4DCA4C();
  sub_75B430();

  sub_75B410();
  sub_75B380();

  return v8;
}

uint64_t sub_73A964(uint64_t a1)
{
  v2 = v1;
  v53 = a1;
  v52 = sub_75AAC0();
  v3 = *(v52 - 8);
  __chkstk_darwin(v52);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_7570A0();
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v54);
  v48 = sub_760280();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_758B40();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v47 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_75F340();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v45 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7687B0();
  __chkstk_darwin(v12 - 8);
  v42 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v14 - 8);
  v51 = &v37 - v15;
  v16 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v16 - 8);
  v39 = &v37 - v17;
  v18 = sub_765490();
  v38 = *(v18 - 8);
  __chkstk_darwin(v18);
  v50 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&unk_93F980, &qword_77EDA0);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v37 - v22;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_appHasBeenInBackground] == 1 && *&v1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_freshnessWatchdog])
  {

    sub_75E0A0();
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_isPresentingContentFinished] == 1 && (v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_objectGraph]) != 0)
  {
    v25 = sub_BD88(&unk_93F630, &unk_77E230);

    v52 = v24;
    sub_768860();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v23, 1, v25) == 1)
    {

      return sub_10A2C(v23, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      (*(v38 + 104))(v50, enum case for FlowPage.unknown(_:), v18);
      v33 = v39;
      v34 = v54;
      (*(v6 + 16))(v39, v53, v54);
      (*(v6 + 56))(v33, 0, 1, v34);
      v35 = sub_759E30();
      (*(*(v35 - 8) + 56))(v51, 1, 1, v35);
      v55 = 0u;
      v56 = 0u;
      sub_768790();
      (*(v40 + 104))(v45, enum case for FlowAnimationBehavior.never(_:), v41);
      (*(v43 + 104))(v47, enum case for FlowOrigin.external(_:), v44);
      (*(v46 + 104))(v49, enum case for FlowPresentationContext.infer(_:), v48);
      sub_768CE0();
      sub_758B20();
      swift_allocObject();
      v36 = sub_758AD0();
      sub_32AC14(v36, 1, v52, v23);

      return (*(v26 + 8))(v23, v25);
    }
  }

  else
  {
    v28 = v54;
    (*(v6 + 16))(&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v54, v21);
    v29 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v2;
    (*(v6 + 32))(v30 + v29, &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    v31 = v52;
    (*(v3 + 104))(v5, enum case for BootstrapPhase.presentingContent(_:), v52);
    v32 = v2;
    sub_763170();

    return (*(v3 + 8))(v5, v31);
  }
}

void sub_73B1EC(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_rootViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_rootViewController];
  if (v4 && ([v4 removeFromParentViewController], (v5 = *&v1[v3]) != 0))
  {
    v6 = [v5 view];
    if (!v6)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 removeFromSuperview];

    v8 = *&v1[v3];
  }

  else
  {
    v8 = 0;
  }

  *&v1[v3] = a1;
  v9 = a1;

  v10 = *&v1[v3];
  if (!v10)
  {
    return;
  }

  v29 = v10;
  [v1 addChildViewController:v29];
  v11 = [v29 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v12 setFrame:{v16, v18, v20, v22}];
  v23 = [v29 view];
  if (!v23)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = v23;
  [v23 setAutoresizingMask:18];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  v27 = [v29 view];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  [v26 addSubview:v27];

  [v29 didMoveToParentViewController:v1];
}

void sub_73B420()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_messagesAudioSessionCategory) = 0;
  v2 = v0 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_messagesAudioSessionCategoryOptions;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_startedDisappearTransition) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_freshnessWatchdog) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_rootViewController) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_storeNavigationController) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_storeTab;
  v4 = sub_758880();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_bootstrapPendingClosuresHandler;
  sub_763190();
  swift_allocObject();
  *(v1 + v5) = sub_763180();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_appHasBeenInBackground) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_isOnboardingFinished) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_isPresentingContentFinished) = 0;
  sub_76A840();
  __break(1u);
}

double sub_73B5AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_73B5C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_73B674()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_73B6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_945020, qword_784B20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_73B74C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_73B844(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_73B8C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_73B940(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v55 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_765B10();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_760260();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765AA0();
  v15 = sub_760220();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    v17 = sub_765B60();
    if (v17)
    {
      v18 = v17;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_7688F0();
      v54 = v60[0];
      if (v60[0])
      {
        v52 = a3;
        v53 = &v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayKind];
        v19 = v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayKind + 8];
        sub_75C240();
        if ((v19 & 1) != 0 || (v20 = sub_75C230(), v20 != sub_75C230()))
        {
          v49 = v7;
          v51 = v8;
          v47 = v18;
          v21 = sub_75C240();
          sub_4AB5A8(v21);
          v23 = v22;
          v25 = v24;
          v46 = &v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay];
          v26 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer];
          v45[1] = *&v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay];
          swift_unknownObjectRetain();
          sub_38D174();
          v27 = swift_getObjectType();
          v28 = *(v25 + 16);
          swift_unknownObjectRetain();
          v50 = v23;
          v48 = v25;
          v29 = v28(v27, v25);
          v30 = OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView;
          v31 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView];
          *&v26[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView] = v29;
          v32 = v29;

          [v32 setAnchorPoint:{0.0, 1.0}];
          v33 = *&v26[v30];
          if (v33)
          {
            v60[0] = 0x3FF0000000000000;
            v60[1] = 0;
            v60[2] = 0;
            v61 = 0x3FF0000000000000;
            v62 = 0;
            v63 = 0;
            [v33 setTransform:v60];
          }

          [v26 addSubview:v32];
          [v32 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
          v59.receiver = v5;
          v59.super_class = ObjectType;
          objc_msgSendSuper2(&v59, "_continuousCornerRadius");
          [v32 _setContinuousCornerRadius:?];
          v34 = [v32 layer];
          if (v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory] == 6)
          {
            v35 = [v5 traitCollection];
            v36 = sub_769A00();

            if (v36)
            {
              v37 = 12;
            }

            else
            {
              v37 = 15;
            }
          }

          else
          {
            v37 = 12;
          }

          v18 = v47;
          [v34 setMaskedCorners:v37];
          v38 = v50;
          swift_unknownObjectRelease();

          [v5 setNeedsLayout];
          swift_unknownObjectRelease();
          v39 = sub_75C240();
          v40 = v53;
          *v53 = v39;
          *(v40 + 8) = 0;
          v41 = v46;
          v42 = v48;
          *v46 = v38;
          v41[1] = v42;
          swift_unknownObjectRelease();
          v8 = v51;
          v7 = v49;
        }

        swift_weakAssign();
        if (*&v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay])
        {
          v43 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay + 8];
          ObjectType = swift_getObjectType();
          v61 = sub_75C250();
          v62 = sub_740620(&qword_955A90, &type metadata accessor for TodayCardOverlay, &protocol conformance descriptor for TodayCardOverlay);
          v60[0] = v18;
          swift_unknownObjectRetain();

          sub_765B30();
          sub_75A110();
          sub_768900();
          v44 = v57;
          sub_768ED0();
          (*(v43 + 112))(v60, v44, v55, v10, v52, v58, ObjectType, v43);
          swift_unknownObjectRelease();

          (*(v8 + 8))(v10, v7);
          sub_BEB8(v60);
        }

        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

double sub_73BEEC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v59 = a4;
  v58 = a3;
  v57 = a2;
  v6 = sub_765B10();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_760260();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765AA0();
  v14 = sub_760220();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    v16 = sub_765B60();
    if (v16)
    {
      v17 = v16;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_7688F0();
      v18 = v61[0];
      if (v61[0])
      {
        v53 = &v5[qword_99DC90];
        v19 = v5[qword_99DC90 + 8];
        sub_75C240();
        v56 = v18;
        if ((v19 & 1) != 0 || (v20 = sub_75C230(), v20 != sub_75C230()))
        {
          v52 = v7;
          v49 = v17;
          v21 = sub_75C240();
          sub_4AB5A8(v21);
          v50 = v23;
          v51 = v22;
          v54 = &v5[qword_99DC98];
          v55 = *&v5[qword_99DC98];
          if (v55)
          {
            v24 = v54[1];
            ObjectType = swift_getObjectType();
            v48 = v6;
            v26 = *(v24 + 16);
            swift_unknownObjectRetain();
            v27 = v26(ObjectType, v24);
            [v27 removeFromSuperview];

            v28 = swift_getObjectType();
            v29 = v26(v28, v24);
            [v29 _setContinuousCornerRadius:0.0];

            v30 = v26(v28, v24);
            v6 = v48;
            v31 = v30;
            v32 = [v30 layer];

            [v32 setMaskedCorners:15];
          }

          v33 = v51;
          v34 = swift_getObjectType();
          v35 = v50;
          v36 = *(v50 + 16);
          swift_unknownObjectRetain();
          v37 = v36(v34, v35);
          v38 = v37;
          v39 = 20.0;
          if (v5[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
          {
            v39 = 0.0;
          }

          [v37 _setContinuousCornerRadius:v39];
          v40 = [v38 layer];
          [v40 setMaskedCorners:12];

          v41 = [v5 contentView];
          [v41 addSubview:v38];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          v42 = v49;
          v43 = sub_75C240();
          v45 = v53;
          v44 = v54;
          *v53 = v43;
          *(v45 + 8) = 0;
          *v44 = v33;
          v44[1] = v35;
          v17 = v42;
          swift_unknownObjectRelease();
          v7 = v52;
        }

        swift_weakAssign();
        if (*&v5[qword_99DC98])
        {
          v46 = *&v5[qword_99DC98 + 8];
          v55 = swift_getObjectType();
          v61[3] = sub_75C250();
          v61[4] = sub_740620(&qword_955A90, &type metadata accessor for TodayCardOverlay, &protocol conformance descriptor for TodayCardOverlay);
          v61[0] = v17;
          swift_unknownObjectRetain();

          sub_765B30();
          sub_75A110();
          sub_768900();
          v47 = v59;
          sub_768ED0();
          (*(v46 + 112))(v61, v47, v57, v9, v58, v60, v55, v46);
          swift_unknownObjectRelease();

          (*(v7 + 8))(v9, v6);
          sub_BEB8(v61);
        }

        sub_73D4BC();
        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

double sub_73C470(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v56 = a3;
  v55 = a2;
  v6 = sub_765B10();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_760260();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765AA0();
  v14 = sub_760220();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    v16 = sub_765B60();
    if (v16)
    {
      v17 = v16;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_7688F0();
      v18 = v59[0];
      if (v59[0])
      {
        v51 = &v5[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlayKind];
        v19 = v5[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlayKind + 8];
        sub_75C240();
        v54 = v18;
        if ((v19 & 1) != 0 || (v20 = sub_75C230(), v20 != sub_75C230()))
        {
          v48 = v6;
          v50 = v7;
          v21 = sub_75C240();
          sub_4AB5A8(v21);
          v52 = v23;
          v53 = v22;
          v24 = &v5[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay];
          v25 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay];
          if (v25)
          {
            v26 = v24[1];
            ObjectType = swift_getObjectType();
            v28 = *(v26 + 16);
            swift_unknownObjectRetain();
            v29 = v28(ObjectType, v26);
            [v29 removeFromSuperview];
          }

          v47 = v25;
          v49 = v24;
          v30 = swift_getObjectType();
          v31 = v52;
          v32 = *(v52 + 16);
          swift_unknownObjectRetain();
          v33 = v32(v30, v31);
          v34 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
          v35 = OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView;
          v36 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView];
          *&v34[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView] = v33;
          v37 = v33;

          [v37 setAnchorPoint:{0.0, 1.0}];
          v38 = *&v34[v35];
          if (v38)
          {
            v59[0] = 0x3FF0000000000000;
            v59[1] = 0;
            v59[2] = 0;
            v60 = 0x3FF0000000000000;
            v61 = 0;
            v62 = 0;
            [v38 setTransform:v59];
          }

          [v34 addSubview:v37];
          [v37 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
          [v5 _continuousCornerRadius];
          [v37 _setContinuousCornerRadius:?];
          v39 = [v37 layer];
          [v39 setMaskedCorners:12];
          v40 = v53;
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          v41 = sub_75C240();
          v43 = v51;
          v42 = v52;
          *v51 = v41;
          *(v43 + 8) = 0;
          v44 = v49;
          *v49 = v40;
          v44[1] = v42;
          swift_unknownObjectRelease();
          v7 = v50;
          v6 = v48;
        }

        swift_weakAssign();
        if (*&v5[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay])
        {
          v45 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38MultiAppFallbackCardCollectionViewCell_overlay + 8];
          v53 = swift_getObjectType();
          v60 = sub_75C250();
          v61 = sub_740620(&qword_955A90, &type metadata accessor for TodayCardOverlay, &protocol conformance descriptor for TodayCardOverlay);
          v59[0] = v17;
          swift_unknownObjectRetain();

          sub_765B30();
          sub_75A110();
          sub_768900();
          v46 = v57;
          sub_768ED0();
          (*(v45 + 112))(v59, v46, v55, v9, v56, v58, v53, v45);
          swift_unknownObjectRelease();

          (*(v7 + 8))(v9, v6);
          sub_BEB8(v59);
        }

        sub_281340();
        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

id sub_73C9D4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v58 = sub_765B10();
  v9 = *(v58 - 8);
  __chkstk_darwin(v58);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_7656C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v55 = a3;
  v17(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v18 = a1;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_A8F3C(v14, &v5[v19]);
  swift_endAccess();
  v56 = a2;
  sub_28026C(a2);
  v20 = [v5 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_765A30();
    if (!v22)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v22 = sub_76A060();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v24 = *&v5[qword_99DC80];
  sub_765B50();
  if (v25)
  {
    v26 = sub_769210();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  sub_765B30();
  v27 = sub_765AD0();
  v28 = v18;
  v29 = *(v9 + 8);
  v29(v11, v58);
  [v24 setTextColor:v27];

  v30 = UIAccessibilityTraitButton;
  [v24 setAccessibilityTraits:UIAccessibilityTraitButton];
  v31 = *&v5[qword_99DC88];
  v32 = v28;
  sub_765B40();
  if (v33)
  {
    v34 = sub_769210();
  }

  else
  {
    v34 = 0;
  }

  [v31 setText:v34];

  sub_765B30();
  v35 = sub_765AC0();
  v29(v11, v58);
  v36 = v32;
  [v31 setTextColor:v35];

  [v31 setAccessibilityTraits:v30];
  v37 = [v5 backgroundView];
  v38 = v56;
  v39 = v55;
  if (v37)
  {
    v40 = v37;
    v41 = sub_765A30();
    if (!v41)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v41 = sub_76A060();
    }

    v42 = v41;
    [v40 setBackgroundColor:v41];
  }

  v43 = [v5 contentView];
  v44 = [v5 traitCollection];
  if (v38 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [v44 layoutDirection];
  sub_769BB0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  [v43 setLayoutMargins:{v46, v48, v50, v52}];
  return [v5 setNeedsLayout];
}

void sub_73CEF0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_A8F3C(v10, &v4[v12]);
    swift_endAccess();
    v13 = (*(a2 + 160))(ObjectType, a2);
    v4[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] = v13;
    if (v13 == 4)
    {
      v14 = [v4 contentView];
      [v14 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v15 = (*(a2 + 136))(ObjectType, a2);
    sub_28026C(v15);
  }

  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + qword_99DC98);
    if (v18 && *&v4[qword_99DC98])
    {
      v19 = *&v4[qword_99DC98 + 8];
      v46 = *(v16 + qword_99DC98 + 8);
      v20 = swift_getObjectType();
      v21 = *(v19 + 120);
      v22 = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21(v18, v46, a3 & 1, v20, v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = a1;
      if (a3)
      {
LABEL_14:

        return;
      }
    }

    v24 = qword_99DC80;
    v25 = *&v4[qword_99DC80];
    v26 = [*&v17[qword_99DC80] text];
    [v25 setText:v26];

    v27 = [*&v17[v24] textColor];
    [v25 setTextColor:v27];

    v28 = qword_99DC88;
    v29 = *&v4[qword_99DC88];
    v30 = [*&v17[qword_99DC88] text];
    [v29 setText:v30];

    v31 = [*&v17[v28] textColor];
    [v29 setTextColor:v31];

    v32 = [v4 backgroundView];
    if (v32)
    {
      v33 = v32;
      v34 = [v17 backgroundView];
      v35 = [v34 backgroundColor];

      [v33 setBackgroundColor:v35];
    }

    v36 = [v4 contentView];
    v37 = [v17 contentView];
    [v37 layoutMargins];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    [v36 setLayoutMargins:{v39, v41, v43, v45}];
    [v4 setNeedsLayout];
    goto LABEL_14;
  }
}

double sub_73D340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_134D8(a1, v9);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_765B70();
  if (swift_dynamicCast())
  {
    v5 = sub_765B60();
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + qword_99DC98);
      if (v7)
      {
        v9[3] = sub_75C250();
        v9[4] = sub_740620(&qword_955A90, &type metadata accessor for TodayCardOverlay, &protocol conformance descriptor for TodayCardOverlay);
        v9[0] = v6;
        v8[3] = swift_getObjectType();
        v8[0] = v7;
        swift_unknownObjectRetain_n();

        sub_758EF0();
        swift_unknownObjectRelease();

        sub_BEB8(v8);
        sub_10A2C(v9, &unk_963040, &qword_77F400);
        return result;
      }
    }
  }

  return result;
}

void sub_73D4BC()
{
  sub_281340();
  v1 = [v0 contentView];
  v2 = [*&v0[qword_99DC80] text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_769240();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v33 = v4;
  v34 = v6;
  v7 = [*&v0[qword_99DC88] text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_769240();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v35 = v9;
  v36 = v11;
  if (*&v0[qword_99DC98])
  {
    v12 = *&v0[qword_99DC98 + 8];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    v15 = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    v16 = [v15 accessibilityLabel];

    if (v16)
    {
      v17 = sub_769240();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v37 = v17;
    v38 = v19;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
LABEL_14:
  if (v20 <= 3)
  {
    v22 = 3;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 + 1;
  v24 = 16 * v20 + 40;
  while (1)
  {
    if (v20 == 3)
    {
      sub_BD88(&qword_941BA0, &qword_7811C0);
      swift_arrayDestroy();
      sub_BD88(&unk_947FF0, &unk_7801F0);
      sub_5FBA8();
      sub_7691A0();

      v31 = sub_769210();

      [v1 setAccessibilityLabel:v31];

      return;
    }

    if (v23 == ++v20)
    {
      break;
    }

    v25 = v24 + 16;
    v26 = *&v32[v24];
    v24 += 16;
    if (v26)
    {
      v27 = *&v32[v25 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_7B5CC(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_7B5CC((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v30 = &v21[2 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v26;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_73D804(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766CA0();
  sub_161DC(v8, a3);
  sub_BE38(v8, a3);
  if (qword_93D9B8 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F520);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_766CB0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_73D9E0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766CA0();
  sub_161DC(v4, qword_9644D8);
  sub_BE38(v4, qword_9644D8);
  *v3 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_B1B4(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleFootnote;
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_73DB4C()
{
  v0 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_161DC(v0, qword_9644F0);
  sub_BE38(v0, qword_9644F0);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

void sub_73DBE8()
{
  v1 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_7623A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_9457F0, qword_783FD0);
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  if (*(v0 + qword_9A0AD0))
  {
    v14 = *(v0 + qword_9A0AC8);
    if (v14)
    {
      v19 = *(v0 + qword_964528);

      v18 = sub_764EC0();
      v15 = sub_764DB0();
      v16 = sub_BD88(&unk_948740, &unk_784920);
      (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
      (*(v5 + 104))(v7, enum case for OfferButtonSubtitlePosition.below(_:), v4);
      (*(v5 + 56))(v3, 1, 1, v4);
      sub_740620(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
      sub_760940();
      sub_1DFEBC(v18, v15, 0, v13, v10, v14, 0, 0);

      (*(v20 + 8))(v10, v8);
      sub_10A2C(v13, &unk_948730, &qword_788DD0);
    }
  }
}

double sub_73DF74(uint64_t a1)
{
  v3 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = sub_7623A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_9457F0, qword_783FD0);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v13 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v13 - 8);
  v15 = v21 - v14;
  v16 = qword_9A0AC8;
  *(v1 + qword_9A0AC8) = a1;

  if (*(v1 + qword_9A0AD0) && (v17 = *(v1 + v16)) != 0)
  {
    v21[1] = *(v1 + qword_964528);

    v21[0] = sub_764EC0();
    v18 = sub_764DB0();
    v19 = sub_BD88(&unk_948740, &unk_784920);
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    (*(v7 + 104))(v9, enum case for OfferButtonSubtitlePosition.below(_:), v6);
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_740620(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    sub_760940();
    sub_1DFEBC(v21[0], v18, 0, v15, v12, v17, 0, 0);

    (*(v22 + 8))(v12, v23);
    sub_10A2C(v15, &unk_948730, &qword_788DD0);
  }

  else
  {
  }

  return result;
}

id sub_73E350()
{
  v1 = v0;
  v2 = *&v0[qword_9A0AD0];
  if (v2 && (v3 = *&v0[qword_9A0AC8]) != 0)
  {
    v4 = *&v0[qword_964510];

    sub_764EF0();
    if (v5)
    {
      v6 = sub_769210();
    }

    else
    {
      v6 = 0;
    }

    [v4 setText:v6];

    if (qword_93D9B8 != -1)
    {
      swift_once();
    }

    v7 = sub_7666D0();
    v8 = sub_BE38(v7, qword_99F520);
    sub_2B67DC(v9, v2, v8, v3);
    v10 = *&v1[qword_964520];
    sub_757B70();
    if (v11)
    {
      v12 = sub_769210();
    }

    else
    {
      v12 = 0;
    }

    [v10 setText:v12];
  }

  else
  {
    [*&v0[qword_964510] setText:0];
    sub_4ED68C();
    [*&v0[qword_964520] setText:0];
  }

  sub_73DBE8();

  return [v1 setNeedsLayout];
}

char *sub_73E528(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v69 = *(v10 - 8);
  v70 = v10;
  __chkstk_darwin(v10);
  v68 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7666D0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v67 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_760AD0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v72 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v18 - 8);
  v20 = v62 - v19;
  v21 = sub_757CA0();
  __chkstk_darwin(v21 - 8);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[qword_9A0AC8] = 0;
  *&v5[qword_9A0AD0] = 0;
  sub_757C20();
  v24 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v5[qword_964508] = sub_243D30(v23, 1);
  if (qword_93D9B8 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v12, qword_99F520);
  v26 = *(v13 + 16);
  v26(v20, v25, v12);
  v27 = *(v13 + 56);
  v62[1] = v13 + 56;
  v66 = v27;
  v27(v20, 0, 1, v12);
  v28 = *(v16 + 104);
  v64 = enum case for DirectionalTextAlignment.none(_:);
  v63 = v28;
  v28(v72);
  v29 = sub_75BB20();
  v62[0] = v15;
  v30 = v29;
  v31 = objc_allocWithZone(v29);
  v32 = sub_75BB10();
  v65 = qword_964510;
  *&v5[qword_964510] = v32;
  v33 = v67;
  v26(v67, v25, v12);
  v34 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  v35 = sub_4ECF40(v33, 1, 4, 0);
  v36 = qword_964518;
  *&v5[qword_964518] = v35;
  if (qword_93D9C0 != -1)
  {
    swift_once();
  }

  v37 = sub_BE38(v12, qword_99F538);
  v26(v20, v37, v12);
  v66(v20, 0, 1, v12);
  v63(v72, v64, v62[0]);
  v38 = objc_allocWithZone(v30);
  v39 = sub_75BB10();
  v40 = qword_964520;
  *&v5[qword_964520] = v39;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[qword_964528] = sub_1DD00C(0);
  v42 = *&v5[v65];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v43 = v42;
  v44 = v68;
  sub_768C10();
  sub_10A2C(&v74, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v76, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v45 = v70;
  v46 = *(v69 + 8);
  v46(v44, v70);
  v47 = *&v5[v36];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v48 = v47;
  sub_768C10();
  sub_10A2C(&v74, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v76, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v46(v44, v45);
  v49 = *&v5[v40];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v50 = v49;
  sub_768C10();
  sub_10A2C(&v74, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v76, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v46(v44, v45);
  v73.receiver = v5;
  v73.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v73, "initWithFrame:", a1, a2, a3, a4);
  v52 = [v51 contentView];
  [v52 addSubview:*&v51[qword_964508]];

  v53 = [v51 contentView];
  [v53 addSubview:*&v51[qword_964510]];

  v54 = [v51 contentView];
  [v54 addSubview:*&v51[qword_964518]];

  v55 = qword_964520;
  v56 = *&v51[qword_964520];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v57 = v56;
  v58 = sub_769FF0();
  [v57 setTextColor:v58];

  v59 = [v51 contentView];
  [v59 addSubview:*&v51[v55]];

  v60 = [v51 contentView];
  [v60 addSubview:*&v51[qword_964528]];

  return v51;
}

void sub_73EDC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101.receiver = v1;
  v101.super_class = ObjectType;
  objc_msgSendSuper2(&v101, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *&v1[qword_964528];
  v18 = &v17[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
  if (v17[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v19 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(&v17[v19], v100);
    sub_B170(v100, v100[3]);
    sub_760DE0();
    v21 = v20;
    v23 = v22;
    sub_BEB8(v100);
    v97 = v21;
    *v18 = v21;
    v18[1] = v23;
    v96 = v23;
    *(v18 + 16) = 0;
  }

  else
  {
    v24 = *v18;
    v96 = v18[1];
    v97 = v24;
  }

  if (qword_93E288 != -1)
  {
    swift_once();
  }

  v25 = sub_766CA0();
  sub_BE38(v25, qword_9644A8);
  sub_766470();
  sub_766700();
  v90 = v26;
  v27 = *(v4 + 8);
  v27(v7, v3);
  if (qword_93E298 != -1)
  {
    swift_once();
  }

  sub_BE38(v25, qword_9644D8);
  sub_766470();
  sub_766700();
  v29 = v28;
  v27(v7, v3);
  v30 = *&v1[qword_964508];
  sub_757C60();
  v32 = v31;
  v34 = v33;
  v102.origin.x = v10;
  v102.origin.y = v12;
  v102.size.width = v14;
  v102.size.height = v16;
  v87 = CGRectGetMidX(v102) + v32 * -0.5;
  v89 = v32;
  v88 = v34;
  sub_769D20();
  [v30 setFrame:?];
  v103.origin.x = v10;
  v103.origin.y = v12;
  v103.size.width = v14;
  v103.size.height = v16;
  v35 = CGRectGetWidth(v103) - v97 - v29;
  v36 = *&v1[qword_964520];
  v104.origin.x = v10;
  v104.origin.y = v12;
  v104.size.width = v14;
  v104.size.height = v16;
  [v36 sizeThatFits:{v35, CGRectGetHeight(v104)}];
  v105.origin.x = v10;
  v105.origin.y = v12;
  v105.size.width = v14;
  v105.size.height = v16;
  CGRectGetMaxY(v105);
  v106.origin.x = v10;
  v106.origin.y = v12;
  v106.size.width = v14;
  v106.size.height = v16;
  CGRectGetMinX(v106);
  [v36 lastBaselineFromBottom];
  Width = v35;
  sub_769D20();
  [v36 setFrame:?];
  v37 = [v36 text];
  if (v37)
  {

    [v36 lastBaselineMaxY];
    v39 = v38;
  }

  else
  {
    v107.origin.x = v10;
    v107.origin.y = v12;
    v107.size.width = v14;
    v107.size.height = v16;
    v39 = CGRectGetMaxY(v107) + -20.0;
  }

  v108.origin.x = v10;
  v108.origin.y = v12;
  v108.size.width = v14;
  v108.size.height = v16;
  MaxX = CGRectGetMaxX(v108);
  v92 = v10;
  v91 = v12;
  v94 = MaxX - v97;
  v93 = v39 - v96;
  sub_769D20();
  v42 = v41;
  v44 = v43;
  v86 = v14;
  v85 = v16;
  v46 = v45;
  v48 = v47;
  v49 = type metadata accessor for OfferButton();
  v99.receiver = v17;
  v99.super_class = v49;
  objc_msgSendSuper2(&v99, "frame");
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v98.receiver = v17;
  v98.super_class = v49;
  objc_msgSendSuper2(&v98, "setFrame:", v42, v44, v46, v48);
  sub_1DC798(v51, v53, v55, v57);
  if (qword_93E290 != -1)
  {
    swift_once();
  }

  sub_BE38(v25, qword_9644C0);
  sub_766470();
  sub_766700();
  v59 = v58;
  v27(v7, v3);
  v60 = *&v1[qword_964510];
  v61 = v86;
  v62 = v85;
  [v60 sizeThatFits:{v86, v85}];
  v64 = v63;
  v109.origin.y = 70.0;
  v109.origin.x = v87;
  v109.size.width = v89;
  v109.size.height = v88;
  MaxY = CGRectGetMaxY(v109);
  if (qword_93E280 != -1)
  {
    swift_once();
  }

  sub_BE38(v25, qword_964490);
  sub_766470();
  v66 = [v60 traitCollection];
  sub_766C70();
  v68 = v67;

  [v60 firstBaselineFromTop];
  v70 = v69;
  v27(v7, v3);
  v89 = v59;
  v71 = v59 + v64 + MaxY + v68 - v70;
  v110.origin.x = v94;
  v110.origin.y = v93;
  v110.size.width = v97;
  v110.size.height = v96;
  MinY = CGRectGetMinY(v110);
  v73 = v92;
  v74 = v91;
  if (MinY >= v71)
  {
    v111.origin.x = v92;
    v111.origin.y = v91;
    v111.size.width = v61;
    v111.size.height = v62;
    CGRectGetWidth(v111);
  }

  v112.origin.x = v73;
  v112.origin.y = v74;
  v112.size.width = v61;
  v112.size.height = v62;
  CGRectGetMinX(v112);
  sub_769D20();
  [v60 setFrame:?];
  v75 = *&v1[qword_964518];
  [v75 sizeThatFits:{v61, v62}];
  v77 = v76;
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D9B8 != -1)
  {
    swift_once();
  }

  v78 = sub_7666D0();
  sub_BE38(v78, qword_99F520);
  v79 = [v1 traitCollection];
  v80 = sub_769E10();

  [v60 lastBaselineMaxY];
  v82 = v90 + v81;
  sub_769E20();
  v84 = v89 + v77 + v82 - v83;
  v113.origin.x = v94;
  v113.origin.y = v93;
  v113.size.width = v97;
  v113.size.height = v96;
  if (CGRectGetMinY(v113) >= v84)
  {
    v114.origin.x = v73;
    v114.origin.y = v74;
    v114.size.width = v61;
    v114.size.height = v62;
    Width = CGRectGetWidth(v114);
  }

  v115.origin.x = v73;
  v115.origin.y = v74;
  v115.size.width = v61;
  v115.size.height = v62;
  CGRectGetMinX(v115);
  sub_769D20();
  [v75 setFrame:?];
}

void sub_73F75C(void *a1)
{
  v1 = a1;
  sub_73EDC0();
}

double sub_73F7A4(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_73CEF0(a1, a2, a3 & 1);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v10 = v8;
    v11 = a1;
    v12 = [v4 backgroundView];
    if (v12)
    {
      v13 = v12;
      v14 = [v10 backgroundView];
      v15 = [v14 backgroundColor];

      [v13 setBackgroundColor:v15];
    }

    v16 = *&v10[qword_964508];
    sub_24506C(v16);

    *&v4[qword_9A0AD0] = *&v10[qword_9A0AD0];
    swift_retain_n();

    sub_73E350();
  }

  return result;
}

void sub_73F908(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_757AA0();
  v59 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = &v49 - v14;
  v15 = sub_765B10();
  v57 = *(v15 - 8);
  __chkstk_darwin(v15);
  v54 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v55 = &v49 - v18;
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  sub_73C9D4(a1, a2, a3, a4);
  v25 = sub_765B20();
  sub_757890();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v60 = v26;
    v50 = v12;
    v51 = v25;
    v52 = v10;
    sub_75A110();
    sub_768900();
    v53 = a4;
    sub_768ED0();
    v61 = v63;
    v62 = v5;
    [*&v5[qword_99DC88] setText:0];
    v56 = a1;
    sub_765B30();
    v27 = v57;
    v49 = *(v57 + 104);
    v49(v21, enum case for TodayCard.Style.dark(_:), v15);
    sub_740620(&qword_9409B0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
    sub_769430();
    sub_769430();
    if (v63 == v65 && v64 == v66)
    {
      v28 = 1;
    }

    else
    {
      v28 = sub_76A950();
    }

    v29 = *(v27 + 8);
    v29(v21, v15);
    v29(v24, v15);

    if (v28)
    {
      v30 = 2;
      v31 = v62;
    }

    else
    {
      v32 = v55;
      sub_765B30();
      v33 = v54;
      v49(v54, enum case for TodayCard.Style.light(_:), v15);
      sub_769430();
      sub_769430();
      v31 = v62;
      if (v63 == v65 && v64 == v66)
      {
        v29(v33, v15);
        v29(v32, v15);

        v30 = 1;
      }

      else
      {
        v34 = sub_76A950();
        v29(v33, v15);
        v29(v32, v15);

        v30 = v34 & 1;
      }
    }

    [v31 setOverrideUserInterfaceStyle:v30];
    v35 = sub_765A30();
    if (!v35)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v35 = sub_76A060();
    }

    v36 = v35;
    v37 = [v31 backgroundView];
    if (v37)
    {
      v38 = v37;
      [v37 setBackgroundColor:v36];
    }

    v39 = *&v31[qword_964508];
    v57 = sub_757880();
    v56 = v36;
    v40 = v58;
    sub_757B80();
    v41 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
    swift_beginAccess();
    v42 = v59;
    v43 = v52;
    (*(v59 + 24))(&v39[v41], v40, v52);
    swift_endAccess();
    v55 = *(v42 + 16);
    v44 = v50;
    (v55)(v50, &v39[v41], v43);
    sub_244454(v44);
    v45 = *(v42 + 8);
    v45(v44, v43);
    v45(v40, v43);
    v46 = v56;
    [v39 setBackgroundColor:v56];
    sub_6A9BFC(159.0, 159.0, v57, v39, v61);
    (v55)(v40, &v39[v41], v43);
    sub_244454(v40);
    v45(v40, v43);
    [v39 setNeedsLayout];

    v48 = v62;
    sub_73DF74(v47);
    *&v48[qword_9A0AD0] = sub_757880();

    sub_73E350();

    [v48 setNeedsLayout];
  }

  else
  {
  }
}

double sub_740020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_73D340(a1, a2, a3);
  sub_134D8(a1, v9);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_765B70();
  if (swift_dynamicCast())
  {
    sub_765B20();

    sub_757890();
    if (swift_dynamicCastClass())
    {
      v7 = *(v3 + qword_964508);
      v8 = sub_757880();
      sub_6A9BFC(159.0, 159.0, v8, v7, a2);
    }
  }

  return result;
}

uint64_t sub_74011C(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  if (*(v3 + qword_99DC98))
  {
    v5 = *(v3 + qword_99DC98 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 128);
    swift_unknownObjectRetain();
    v7(a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_7591D0(v10, a3);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  sub_7591D0(v11, v8);
  sub_759210();
  sub_740620(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_75A0C0();
  return sub_75A0C0();
}

id sub_74026C(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_93E2A0 != -1)
    {
      swift_once();
    }

    v6 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    sub_BE38(v6, qword_9644F0);
    v7 = v1;
    sub_7592B0();

    [*&v7[qword_964510] setTextAlignment:{v8, v1}];
    [*&v7[qword_964518] setTextAlignment:v8];
    return [*&v7[qword_964520] setTextAlignment:v8];
  }

  return result;
}

void sub_7403D8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_74026C(a3);
}

double sub_740444()
{

  return result;
}

double sub_7404D4(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for InAppPurchaseTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_964558;
  if (!qword_964558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_740620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_74066C(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v14 = v13;
  v15 = type metadata accessor for AppEventView(0);

  return sub_650A20(v14, a3, v11, a8, a6, v15, ObjectType);
}

id sub_7406F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_650D38(*a1, a3);

  return [v3 setNeedsLayout];
}

uint64_t sub_740748(void *a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider26AppEventCollectionViewCell_appEventView];
  [v2 bounds];
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  v10 = sub_B170(a1, v8);

  return sub_651014(v10, a2, v5, v8, v9, v7);
}

uint64_t sub_7408B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_740900(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v12 = v11;
  v13 = [a6 traitCollection];
  v14 = [v13 preferredContentSizeCategory];
  v15 = sub_769B50();

  if ((v15 & 1) == 0)
  {
    if (qword_93C808 != -1)
    {
      swift_once();
    }

    sub_53DA04(&unk_99BE98, a6, v12, a2);
    if (qword_93C4F0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for AppEventCardLayout.Metrics(0);
    v20 = sub_BE38(v19, qword_99B3E8);
    sub_2CEF74(v20, a1, a5, a6, ObjectType, v12, a2);
    goto LABEL_28;
  }

  v16 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = a1 + 32;
    do
    {
      sub_134D8(v18, v34);
      sub_10914(v34, v32);
      sub_BD88(&unk_944DA0, &unk_77EB70);
      sub_758700();
      if ((swift_dynamicCast() & 1) != 0 && v33)
      {
        sub_769440();
        if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v16 = v35;
      }

      v18 += 40;
      --v17;
    }

    while (v17);
  }

  if (!(v16 >> 62))
  {
    v21 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_27:

LABEL_28:
    v29 = objc_opt_self();
    PageTraitEnvironment.pageColumnWidth.getter();
    v30 = [v29 absoluteDimension:?];
    v31 = sub_75F970();

    return v31;
  }

  v21 = sub_76A860();
  if (!v21)
  {
    goto LABEL_27;
  }

LABEL_17:
  result = type metadata accessor for AppEventView(0);
  if (v21 >= 1)
  {
    v23 = result;
    v24 = 0;
    v25 = 0.0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v26 = sub_76A770();
      }

      else
      {
        v26 = *(v16 + 8 * v24 + 32);
      }

      ++v24;
      sub_650A20(v12, a2, v26, a6, a5, v23, ObjectType);
      v28 = v27;

      if (v25 <= v28)
      {
        v25 = v28;
      }
    }

    while (v21 != v24);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

unint64_t sub_740CA8()
{
  result = qword_964960;
  if (!qword_964960)
  {
    sub_75BDB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964960);
  }

  return result;
}

uint64_t sub_740D08(uint64_t a1, uint64_t a2)
{
  v3 = sub_7580D0();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v28 = &v24 - v6;
  v27 = sub_BD88(&unk_93F630, &unk_77E230);
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v33 = &v24 - v7;
  v26 = sub_764CF0();
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v29 = sub_768F90();
  sub_BD88(&unk_944300, &qword_77DEE0);
  sub_768900();
  sub_768ED0();
  swift_getObjectType();
  sub_75BDA0();
  sub_758330();
  swift_unknownObjectRelease();
  v11 = v10;
  v12 = v27;
  v13 = v28;
  (*(v8 + 8))(v11, v26);
  sub_768ED0();
  v14 = sub_75BD70();
  swift_getObjectType();
  sub_75BD90();
  sub_758230();
  if ((sub_7580C0() & 1) == 0 && (sub_758050() & 1) == 0)
  {
    v18 = v31;
    v17 = v32;
    v21 = v25;
    (*(v31 + 16))(v25, v13, v32);
    if ((*(v18 + 88))(v21, v17) == enum case for LegacyAppState.openable(_:))
    {
      (*(v18 + 96))(v21, v17);

      v22 = sub_75E270();
      (*(*(v22 - 8) + 8))(v21, v22);
      v23 = sub_75BD60();
      if (v23)
      {
        v16 = v23;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v18 + 8))(v21, v17);
    }

    v16 = v14;
    goto LABEL_7;
  }

  v15 = sub_75BD50();
  if (v15)
  {
    v16 = v15;
  }

  else
  {

    v16 = v14;
  }

  v18 = v31;
  v17 = v32;
LABEL_7:
  sub_72D574(v16, 1, a2);

  v19 = v29;
  sub_768F00();

  swift_unknownObjectRelease();

  (*(v18 + 8))(v13, v17);
  (*(v30 + 8))(v33, v12);
  return v19;
}

void sub_7411B4(uint64_t a1)
{
  if (!a1)
  {
    sub_4ED68C();
    goto LABEL_7;
  }

  sub_75ED80();
  v1 = sub_759CF0();
  sub_22A974(v1, sub_30AE4);
  v3 = v2;

  v4 = sub_759CE0();
  sub_4ED3B8(v4, 0, v3);

  if (!sub_75ED90())
  {
LABEL_7:
    sub_4ED68C();
    return;
  }

  v5 = sub_759CF0();
  sub_22A974(v5, sub_38CF18);
  v7 = v6;

  v8 = sub_759CE0();
  sub_4ED3B8(v8, 0, v7);
}

double static LargeGameCenterPlayerLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, void *a2, double a3, double a4)
{
  swift_getObjectType();

  return sub_7422BC(a1, a2, a3, a4);
}

uint64_t LargeGameCenterPlayerLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v89 = a1;
  v90 = a2;
  v88 = sub_76A920();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_766EA0();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_7664F0();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_766E90();
  v15 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_766E50();
  v79 = *(v17 - 8);
  v97 = v79;
  __chkstk_darwin(v17);
  v94 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_766E60();
  v96 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_766E00();
  v98 = *(v95 - 8);
  __chkstk_darwin(v95);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v21;
  sub_B170(v6 + 23, v6[26]);
  v106.origin.x = a3;
  v106.origin.y = a4;
  v106.size.width = a5;
  v106.size.height = a6;
  CGRectGetMinX(v106);
  v107.origin.x = a3;
  v107.origin.y = a4;
  v107.size.width = a5;
  v107.size.height = a6;
  CGRectGetMinY(v107);
  sub_766530();
  sub_BD88(&qword_93F458, &unk_77E270);
  v22 = *(v15 + 72);
  v75 = v15;
  v23 = v97;
  v24 = v17;
  v91 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v73 = v22;
  v25 = swift_allocObject();
  v77 = xmmword_77B6D0;
  *(v25 + 16) = xmmword_77B6D0;
  v26 = v6[31];
  v27 = v7[32];
  v28 = sub_B170(v7 + 28, v7[31]);
  v104 = v26;
  v105 = *(v27 + 8);
  v29 = sub_B1B4(&v103);
  (*(*(v26 - 8) + 16))(v29, v28, v26);
  v101 = &type metadata for Double;
  v102 = &protocol witness table for Double;
  v100 = 0;
  v30 = *(v98 + 104);
  v71 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v72 = v98 + 104;
  v70 = v30;
  v30(v21);
  v31 = v96;
  v32 = *(v96 + 104);
  v33 = v92;
  v68 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v34 = v93;
  v69 = v96 + 104;
  v67 = v32;
  v32(v92);
  sub_BD88(&unk_960ED0, &qword_784ED0);
  v35 = swift_allocObject();
  *(v35 + 16) = v77;
  sub_766E20();
  v99 = v35;
  sub_743314(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  sub_BD88(&unk_960EE0, &unk_77E260);
  sub_1EDC8();
  v36 = v94;
  sub_76A5A0();
  v79 = v25;
  v37 = v78;
  v38 = v33;
  sub_766E80();
  v39 = *(v23 + 1);
  *&v77 = v24;
  v97 = v23 + 1;
  v39(v36, v24);
  v40 = v31 + 8;
  v41 = *(v31 + 8);
  v96 = v40;
  v41(v38, v34);
  v42 = *(v98 + 8);
  v43 = v37;
  v44 = v95;
  v98 += 8;
  v42(v37);
  sub_34630(&v100);
  sub_BEB8(&v103);
  LODWORD(v34) = *(v7 + 176);
  sub_B170(v7 + 33, v7[36]);
  if (v34 == 1)
  {
    sub_766550();
    v45 = v7[36];
    v46 = v7[37];
    v47 = sub_B170(v7 + 33, v45);
    v104 = v45;
    v105 = *(v46 + 8);
    v48 = sub_B1B4(&v103);
    (*(*(v45 - 8) + 16))(v48, v47, v45);
    v102 = &protocol witness table for Double;
    v101 = &type metadata for Double;
    v100 = 0;
    v49 = v44;
    v70(v43, v71, v44);
    v50 = v39;
    v51 = v92;
    v52 = v93;
    v67(v92, v68, v93);
    v53 = v94;
    sub_766E30();
    v54 = v74;
    sub_766E80();
    v50(v53, v77);
    v41(v51, v52);
    (v42)(v43, v49);
    sub_34630(&v100);
    sub_BEB8(&v103);
    v55 = v79;
    v57 = *(v79 + 2);
    v56 = *(v79 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = sub_7AC70((v56 > 1), v57 + 1, 1, v79);
    }

    *(v55 + 2) = v57 + 1;
    (*(v75 + 32))(v55 + v91 + v57 * v73, v54, v76);
  }

  else
  {
    sub_766550();
    sub_B170(v7 + 33, v7[36]);
    sub_766530();
  }

  v58 = v83;
  sub_766E70();
  v108.origin.x = a3;
  v108.origin.y = a4;
  v108.size.width = a5;
  v108.size.height = a6;
  CGRectGetMinX(v108);
  v59 = v7[20];
  sub_B170(v7 + 17, v59);
  v60 = v86;
  sub_33964(v59);
  sub_766700();
  v61 = *(v87 + 8);
  v62 = v88;
  v61(v60, v88);
  sub_B170(v7 + 23, v7[26]);
  sub_766520();
  CGRectGetMaxY(v109);
  v110.origin.x = a3;
  v110.origin.y = a4;
  v110.size.width = a5;
  v110.size.height = a6;
  CGRectGetWidth(v110);
  v63 = v7[20];
  sub_B170(v7 + 17, v63);
  sub_33964(v63);
  sub_766700();
  v61(v60, v62);
  v111.origin.x = a3;
  v111.origin.y = a4;
  v111.size.width = a5;
  v111.size.height = a6;
  CGRectGetHeight(v111);
  sub_B170(v7 + 23, v7[26]);
  sub_766520();
  CGRectGetMaxY(v112);
  v64 = v80;
  sub_766E10();
  (*(v84 + 8))(v58, v85);
  (*(v81 + 8))(v64, v82);
  v113.origin.x = a3;
  v113.origin.y = a4;
  v113.size.width = a5;
  v113.size.height = a6;
  CGRectGetMinX(v113);
  v114.origin.x = a3;
  v114.origin.y = a4;
  v114.size.width = a5;
  v114.size.height = a6;
  CGRectGetMinY(v114);
  v115.origin.x = a3;
  v115.origin.y = a4;
  v115.size.width = a5;
  v115.size.height = a6;
  CGRectGetWidth(v115);
  sub_B170(v7 + 28, v7[31]);
  sub_766520();
  CGRectGetMaxY(v116);
  sub_B170(v7 + 33, v7[36]);
  sub_766520();
  CGRectGetMaxY(v117);
  v65 = v7[15];
  sub_B170(v7 + 12, v65);
  sub_33964(v65);
  sub_766700();
  v61(v60, v62);
  return sub_7664B0();
}

uint64_t LargeGameCenterPlayerLayout.Metrics.displayNameTopSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 56));

  return sub_34698(a1, v1 + 56);
}

uint64_t LargeGameCenterPlayerLayout.Metrics.labelBottomSpace.setter(__int128 *a1)
{
  sub_BEB8((v1 + 96));

  return sub_34698(a1, v1 + 96);
}

uint64_t LargeGameCenterPlayerLayout.Metrics.labelMargin.setter(__int128 *a1)
{
  sub_BEB8((v1 + 136));

  return sub_34698(a1, v1 + 136);
}

double LargeGameCenterPlayerLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_7422BC(v3, a1, a2, a3);
}

double sub_7422BC(uint64_t a1, void *a2, double a3, double a4)
{
  v120 = sub_76A920();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_766EA0();
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_766E90();
  v9 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_766E50();
  v11 = *(v123 - 8);
  __chkstk_darwin(v123);
  v111 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_766E60();
  v127 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_766E00();
  v14 = *(v112 - 8);
  __chkstk_darwin(v112);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_762D10();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a1;
  v21 = sub_26F08();
  if (qword_93D850 != -1)
  {
    swift_once();
  }

  v100 = sub_7666D0();
  sub_BE38(v100, qword_99F0E8);
  v124 = a2;
  v22 = [a2 traitCollection];
  v102 = v21;
  sub_769E10();

  v23 = sub_7653B0();
  v137 = v23;
  v99 = sub_743314(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v138 = v99;
  v24 = sub_B1B4(&v136);
  v25 = *(v23 - 8);
  v26 = *(v25 + 104);
  v98 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v101 = v23;
  v97 = v26;
  v96 = v25 + 104;
  v26(v24);
  sub_765C30();
  sub_BEB8(&v136);
  sub_762D00();
  sub_762CE0();
  v27 = *(v18 + 8);
  v104 = v20;
  v106 = v17;
  v105 = v18 + 8;
  v95 = v27;
  v27(v20, v17);
  sub_BD88(&qword_93F458, &unk_77E270);
  v28 = *(v9 + 72);
  v109 = v9;
  v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v103 = v28;
  v125 = swift_allocObject();
  v121 = xmmword_77B6D0;
  *(v125 + 1) = xmmword_77B6D0;
  v29 = v137;
  v30 = v138;
  v31 = sub_B170(&v136, v137);
  v134 = v29;
  v135 = *(v30 + 8);
  v32 = sub_B1B4(&v133);
  (*(*(v29 - 8) + 16))(v32, v31, v29);
  v131 = &type metadata for Double;
  v132 = &protocol witness table for Double;
  v130 = 0;
  v33 = *(v14 + 104);
  v34 = v16;
  v93 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v35 = v112;
  v94 = v14 + 104;
  v92 = v33;
  v33(v16);
  v36 = v127;
  v37 = *(v127 + 104);
  v38 = v113;
  v90 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v39 = v114;
  v91 = v127 + 104;
  v89 = v37;
  v37(v113);
  v40 = sub_BD88(&unk_960ED0, &qword_784ED0);
  v41 = *(v11 + 72);
  v42 = v11;
  v43 = *(v11 + 80);
  v44 = (v43 + 32) & ~v43;
  v86 = v43;
  v87 = v40;
  v85 = v44 + v41;
  v45 = swift_allocObject();
  *(v45 + 16) = v121;
  v88 = v44;
  sub_766E20();
  v129[0] = v45;
  v46 = sub_743314(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v47 = sub_BD88(&unk_960EE0, &unk_77E260);
  v48 = sub_1EDC8();
  v49 = v111;
  v83 = v47;
  v82 = v48;
  v50 = v123;
  v84 = v46;
  sub_76A5A0();
  v51 = v126;
  sub_766E80();
  v52 = *(v42 + 8);
  v107 = v42 + 8;
  v81 = v52;
  v52(v49, v50);
  v53 = *(v36 + 8);
  v127 = v36 + 8;
  v53(v38, v39);
  v80 = *(v14 + 8);
  v80(v34, v35);
  sub_34630(&v130);
  sub_BEB8(&v133);
  if (*(v51 + 176) == 1)
  {
    v54 = v39;
    v55 = v53;
    v56 = v34;
    if (qword_93D858 != -1)
    {
      swift_once();
    }

    sub_BE38(v100, qword_99F100);
    v57 = [v124 traitCollection];
    sub_769E10();

    v58 = v101;
    v134 = v101;
    v135 = v99;
    v59 = sub_B1B4(&v133);
    v97(v59, v98, v58);
    sub_765C30();
    sub_BEB8(&v133);
    v60 = v104;
    sub_762D00();
    sub_762CE0();
    v95(v60, v106);
    v61 = v134;
    v62 = v135;
    v63 = sub_B170(&v133, v134);
    v131 = v61;
    v132 = *(v62 + 8);
    v64 = sub_B1B4(&v130);
    (*(*(v61 - 8) + 16))(v64, v63, v61);
    v129[4] = &protocol witness table for Double;
    v129[3] = &type metadata for Double;
    v129[0] = 0;
    v92(v56, v93, v35);
    v89(v38, v90, v54);
    v65 = swift_allocObject();
    *(v65 + 16) = v121;
    sub_766E20();
    v128 = v65;
    v66 = v49;
    v67 = v123;
    sub_76A5A0();
    v68 = v126;
    v69 = v35;
    v70 = v108;
    sub_766E80();
    v81(v66, v67);
    v55(v38, v54);
    v80(v56, v69);
    sub_34630(v129);
    sub_BEB8(&v130);
    v71 = v125;
    v73 = *(v125 + 2);
    v72 = *(v125 + 3);
    if (v73 >= v72 >> 1)
    {
      v71 = sub_7AC70((v72 > 1), v73 + 1, 1, v125);
    }

    *(v71 + 2) = v73 + 1;
    (*(v109 + 32))(v71 + v122 + v73 * v103, v70, v110);
    sub_BEB8(&v133);
  }

  else
  {
    v68 = v126;
  }

  v74 = v115;
  sub_766E70();
  v75 = v118;
  sub_7665A0();
  v76 = *(v68 + 120);
  sub_B170((v68 + 96), v76);
  v77 = v117;
  sub_33964(v76);
  sub_766700();
  (*(v119 + 8))(v77, v120);
  (*(v116 + 8))(v74, v75);
  sub_BEB8(&v136);
  return a3;
}

unint64_t sub_7430D4()
{
  result = qword_964968;
  if (!qword_964968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964968);
  }

  return result;
}

uint64_t sub_743128(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_743170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_743210(uint64_t a1, __int128 *a2)
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
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_74324C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_743294(uint64_t result, int a2, int a3)
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_743314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_74335C()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "prepareForReuse");
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artwork] = 0;

  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artworkView];
  sub_759190();

  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  v6 = *(v5 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  *(v5 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) = 0;
  sub_1F92A8(v6);

  sub_1F7F5C();
  v7 = *(v3 + v4);
  v8 = *(v7 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  *(v7 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) = 0;
  sub_1F92A8(v8);

  *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_video] = 0;

  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeaderView];
  if (v9)
  {
    v10 = v9;
    sub_759190();
  }

  *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;

  v11 = &v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitle];
  *v11 = 0;
  *(v11 + 1) = 0;

  v12 = sub_7436A8();
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitleView];
  [v13 setHidden:{1, v12}];
  [v13 setText:0];
  v14 = &v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerText];
  *v14 = 0;
  *(v14 + 1) = 0;

  return sub_74382C();
}

id sub_7435A8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeaderView;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeaderView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeaderView];
  }

  else
  {
    v4 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [v0 contentView];
    [v5 insertSubview:v4 aboveSubview:*&v0[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer]];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

double sub_7436A8()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitleView];
  v2 = [v1 text];
  if (!v2)
  {
    v9 = &v0[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitle + 8];
    v8 = *v9;
LABEL_11:
    if (!v8)
    {
      return result;
    }

LABEL_12:
    if (*v9)
    {
LABEL_13:

      v12 = sub_769210();

LABEL_17:
      [v1 setText:v12];

      [v0 setNeedsLayout];
      return result;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v4 = v2;
  v5 = sub_769240();
  v7 = v6;

  v9 = &v0[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitle + 8];
  v8 = *v9;
  if (!v7)
  {
    goto LABEL_11;
  }

  if (!v8)
  {

    if (*v9)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (v5 != *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitle] || v8 != v7)
  {
    v11 = sub_76A950();

    if (v11)
    {
      return result;
    }

    goto LABEL_12;
  }

  return result;
}

id sub_74382C()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v31 - v8;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerText + 8])
  {
    v10 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerLabel;
    v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerLabel];
    v12 = &selRef_setSpeed_;
    if (v11)
    {
    }

    else
    {
      v14 = qword_93D5D8;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = sub_7666D0();
      v16 = sub_BE38(v15, qword_99E980);
      v17 = *(v15 - 8);
      (*(v17 + 16))(v9, v16, v15);
      (*(v17 + 56))(v9, 0, 1, v15);
      (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
      v18 = objc_allocWithZone(sub_75BB20());
      v19 = sub_75BB10();
      v20 = sub_769210();
      [v19 setText:v20];

      v21 = qword_93CB48;
      v22 = v19;
      if (v21 != -1)
      {
        swift_once();
      }

      [v22 setTextColor:qword_99CCB8];

      [v22 setTextAlignment:1];
      [v22 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      v23 = v22;
      sub_743CD4(v22);
      v12 = &selRef_setSpeed_;
      v24 = [v1 contentView];
      [v24 addSubview:v23];

      v11 = *&v1[v10];
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v25 = [v11 layer];
    v26 = [v1 v12[376]];
    [v26 overrideUserInterfaceStyle];

    sub_769240();
    v27 = sub_769210();

    [v25 setCompositingFilter:v27];

    v28 = *&v1[v10];
    if (v28)
    {
      v29 = v28;
      v30 = sub_769210();

      [v29 setText:v30];

      result = *&v1[v10];
      if (!result)
      {
        return result;
      }

      return [result setHidden:0];
    }

LABEL_17:

    result = *&v1[v10];
    if (!result)
    {
      return result;
    }

    return [result setHidden:0];
  }

  result = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerLabel];
  if (result)
  {

    return [result setHidden:{1, v7}];
  }

  return result;
}

void sub_743CD4(void *a1)
{
  v3 = sub_768C60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerLabel;
  v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerLabel);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerLabel) = a1;
  v13 = a1;

  v9 = *(v1 + v7);
  if (v9)
  {
    memset(v15, 0, sizeof(v15));
    memset(v14, 0, sizeof(v14));
    v10 = v9;
    sub_768C10();
    sub_10A2C(v14, &unk_93FBD0, &qword_77DFA0);
    sub_10A2C(v15, &unk_93FBD0, &qword_77DFA0);
    sub_769E70();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v11 = v13;
  }
}

void (*sub_743E7C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (v5)
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
  return sub_743F18;
}

void sub_743F18(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v2)
    {
      sub_7459E8(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v5 = v2;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v8 = v3;
        v9 = sub_76A1C0();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v15 = *&v3[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v2;
    v16 = v2;
    sub_1F92A8(v15);

    v17 = *a1;
  }

  else
  {
    if (v2)
    {
      sub_7459E8(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v10 = v2;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v13 = v3;
        v14 = sub_76A1C0();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v19 = *&v3[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v2;
    v18 = v2;
    sub_1F92A8(v19);

    v17 = v19;
  }
}

char *sub_744160(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v89 = *(v10 - 8);
  v90 = v10;
  __chkstk_darwin(v10);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_760AD0();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v83 - v14;
  v16 = sub_75A010();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&qword_95F810, &unk_780110);
  __chkstk_darwin(v20 - 8);
  v22 = &v83 - v21;
  v23 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_itemLayoutContext;
  v24 = sub_75C840();
  (*(*(v24 - 8) + 56))(&v5[v23], 1, 1, v24);
  v25 = &v5[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitle];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v5[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerText];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_video] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artwork] = 0;
  v27 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_headingView;
  v28 = enum case for Wordmark.arcade(_:);
  v29 = sub_765770();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v22, v28, v29);
  (*(v30 + 56))(v22, 0, 1, v29);
  (*(v17 + 104))(v19, enum case for WordmarkView.Alignment.leading(_:), v16);
  *(&v97 + 1) = &type metadata for Double;
  v98 = &protocol witness table for Double;
  *&v96 = 0x4028000000000000;
  v31 = objc_allocWithZone(sub_75A030());
  *&v5[v27] = sub_75A000();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeaderView] = 0;
  v32 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_93D5D0 != -1)
  {
    swift_once();
  }

  v33 = sub_7666D0();
  v34 = sub_BE38(v33, qword_99E968);
  v35 = *(v33 - 8);
  (*(v35 + 16))(v15, v34, v33);
  (*(v35 + 56))(v15, 0, 1, v33);
  (*(v84 + 104))(v85, enum case for DirectionalTextAlignment.none(_:), v86);
  v36 = objc_allocWithZone(sub_75BB20());
  *&v5[v32] = sub_75BB10();
  v37 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_offerButton;
  v38 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v37] = sub_1DD00C(0);
  v39 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artworkView;
  sub_759210();
  *&v5[v39] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerLabel] = 0;
  v40 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_gradientView;
  *&v5[v40] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v41 = type metadata accessor for MediaView();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView] = 0;
  *&v42[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount] = 0;
  v42[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding] = 0;
  *&v42[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v42[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionOffset] = 0;
  v43 = type metadata accessor for UberContentContainer();
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = 0;
  *&v44[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = 0;
  v45 = &v44[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v44[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_systemBackgroundExtensionOutsets];
  *v46 = 0u;
  *(v46 + 1) = 0u;
  v46[32] = 1;
  *&v44[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView] = 0;
  v95.receiver = v44;
  v95.super_class = v43;
  v47 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v48 = v47;
  if (*&v47[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView])
  {
    [v47 addSubview:?];
  }

  v49 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v42[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] = v48;
  v94.receiver = v42;
  v94.super_class = v41;
  v50 = objc_msgSendSuper2(&v94, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v50 setClipsToBounds:1];
  [v50 addSubview:*&v50[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer]];

  *&v5[v49] = v50;
  v93.receiver = v5;
  v93.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v93, "initWithFrame:", a1, a2, a3, a4);
  v52 = [v51 contentView];
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v53 = [v51 contentView];
  [v53 _setCornerRadius:20.0];

  v54 = [v51 contentView];
  [v54 setClipsToBounds:1];

  v55 = [v51 contentView];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v56 = sub_76A030();
  [v55 setBackgroundColor:v56];

  v57 = [v51 contentView];
  v58 = [v57 layer];

  [v58 setAllowsGroupBlending:0];
  v59 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_gradientView;
  v60 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_gradientView];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_77B6C0;
  v62 = objc_allocWithZone(UIColor);
  v63 = v60;
  *(v61 + 32) = [v62 initWithWhite:0.0 alpha:0.0];
  *(v61 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.15];
  *&v63[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v61;

  sub_4AC204();

  v64 = [v51 contentView];
  [v64 addSubview:*&v51[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer]];

  v65 = [v51 contentView];
  [v65 addSubview:*&v51[v59]];

  v66 = [v51 contentView];
  [v66 addSubview:*&v51[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_offerButton]];

  v67 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitleView;
  v68 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitleView];
  v69 = sub_769FD0();
  [v68 setTextColor:v69];

  [*&v51[v67] setTextAlignment:1];
  [*&v51[v67] setHidden:1];
  v70 = [v51 contentView];
  [v70 addSubview:*&v51[v67]];

  v71 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_headingView;
  v72 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_headingView];
  v73 = sub_769FD0();
  [v72 setTintColor:v73];

  v74 = *&v51[v71];
  v96 = 0u;
  v97 = 0u;
  v91 = 0u;
  v92 = 0u;
  v75 = v74;
  v76 = v88;
  sub_768C10();
  sub_10A2C(&v91, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v96, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v77 = v90;
  v78 = *(v89 + 8);
  v78(v76, v90);
  v79 = [v51 contentView];

  [v79 addSubview:*&v51[v71]];
  v80 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artworkView];
  v96 = 0u;
  v97 = 0u;
  v91 = 0u;
  v92 = 0u;
  v81 = v80;
  sub_768C10();
  sub_10A2C(&v91, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v96, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v78(v76, v77);
  return v51;
}

uint64_t sub_744DB8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75D8B0();
  __chkstk_darwin(v5 - 8);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75D8D0();
  v42 = *(v8 - 8);
  v43 = v8;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69.receiver = v1;
  v69.super_class = ObjectType;
  objc_msgSendSuper2(&v69, "layoutSubviews", v9);
  [v1 bounds];
  v37[1] = v7;
  sub_7434FC(v11, v12);
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_gradientView];
  v67 = type metadata accessor for GradientView();
  v68 = &protocol witness table for UIView;
  v66 = v13;
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer];
  v64 = type metadata accessor for MediaView();
  v65 = &protocol witness table for UIView;
  v63 = v14;
  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_headingView];
  v61 = sub_75A030();
  v62 = &protocol witness table for UIView;
  v60 = v15;
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeaderView];
  if (v16)
  {
    v17 = sub_759210();
    v18 = &protocol witness table for UIView;
    v19 = v16;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v56 = 0;
    v57 = 0;
  }

  v55 = v19;
  v58 = v17;
  v59 = v18;
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitleView];
  v21 = sub_75BB20();
  v53 = v21;
  v54 = &protocol witness table for UILabel;
  v52 = v20;
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_offerButton];
  v50 = type metadata accessor for OfferButton();
  v51 = &protocol witness table for UIView;
  v49 = v22;
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerLabel];
  if (v23)
  {
    v24 = &protocol witness table for UIView;
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v45 = 0;
    v46 = 0;
  }

  v44 = v23;
  v47 = v21;
  v48 = v24;
  v25 = v16;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v13;
  v29 = v14;
  v30 = v15;
  v31 = v41;
  sub_75D8C0();
  v32 = [v1 contentView];
  [v32 bounds];

  v33 = v38;
  sub_75D880();
  (*(v39 + 8))(v33, v40);
  sub_BD88(&qword_9419F0, &unk_781020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  [v1 bounds];
  v35 = CGRectGetHeight(v70) + -88.0;
  [v1 bounds];
  *(inited + 32) = v35 / CGRectGetHeight(v71);
  *(inited + 40) = 0x3FF0000000000000;
  sub_4AC060(inited);
  return (*(v42 + 8))(v31, v43);
}

uint64_t type metadata accessor for PosterLockupCollectionViewCell(uint64_t a1)
{
  result = qword_9649B0;
  if (!qword_9649B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7454B4(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_745578()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
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

void sub_7455E8(void *a1)
{
  sub_1F9D9C(a1);
}

uint64_t (*sub_745640(uint64_t **a1))()
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
  v2[4] = sub_743E7C(v2);
  return sub_21028;
}

uint64_t sub_7456B0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_7459E8(&qword_9649D0, type metadata accessor for PosterLockupCollectionViewCell, &unk_7B1280);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_745724(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_7459E8(&qword_9649D0, type metadata accessor for PosterLockupCollectionViewCell, &unk_7B1280);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_7457B0(uint64_t *a1))()
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
  sub_7459E8(&qword_9649D0, type metadata accessor for PosterLockupCollectionViewCell, &unk_7B1280);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_74586C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

uint64_t sub_7459E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_745A30()
{
  v1 = v0;
  v43 = sub_760AD0();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_75A010();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_95F810, &unk_780110);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_itemLayoutContext;
  v14 = sub_75C840();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitle);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerText);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_video) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artwork) = 0;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_headingView;
  v18 = enum case for Wordmark.arcade(_:);
  v19 = sub_765770();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v12, v18, v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  (*(v7 + 104))(v9, enum case for WordmarkView.Alignment.leading(_:), v6);
  v47 = &type metadata for Double;
  v48 = &protocol witness table for Double;
  v46 = 0x4028000000000000;
  v21 = objc_allocWithZone(sub_75A030());
  *(v1 + v17) = sub_75A000();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeaderView) = 0;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_93D5D0 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  v24 = sub_BE38(v23, qword_99E968);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v5, v24, v23);
  (*(v25 + 56))(v5, 0, 1, v23);
  (*(v41 + 104))(v42, enum case for DirectionalTextAlignment.none(_:), v43);
  v26 = objc_allocWithZone(sub_75BB20());
  *(v1 + v22) = sub_75BB10();
  v27 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_offerButton;
  v28 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v27) = sub_1DD00C(0);
  v29 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artworkView;
  sub_759210();
  *(v1 + v29) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerLabel) = 0;
  v30 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_gradientView;
  *(v1 + v30) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v31 = type metadata accessor for MediaView();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView] = 0;
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount] = 0;
  v32[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding] = 0;
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionOffset] = 0;
  v33 = type metadata accessor for UberContentContainer();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = 0;
  *&v34[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = 0;
  v35 = &v34[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v34[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_systemBackgroundExtensionOutsets];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v36[32] = 1;
  *&v34[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView] = 0;
  v45.receiver = v34;
  v45.super_class = v33;
  v37 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v38 = v37;
  if (*&v37[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView])
  {
    [v37 addSubview:?];
  }

  v39 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] = v38;
  v44.receiver = v32;
  v44.super_class = v31;
  v40 = objc_msgSendSuper2(&v44, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v41);
  [v40 setClipsToBounds:1];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer]];

  *(v1 + v39) = v40;
  sub_76A840();
  __break(1u);
}

uint64_t sub_746114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7575B0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    type metadata accessor for InteractiveProductReviewsShelfHeaderView();
    sub_769BC0();
    v10 = sub_769210();

    isa = sub_757550().super.isa;
    v12 = [v9 _visibleSupplementaryViewOfKind:v10 atIndexPath:isa];

    if (v12)
    {
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = v3 + OBJC_IVAR____TtC18ASMessagesProvider44InteractiveProductReviewsShelfScrollObserver_currentState;
        if ((*(v3 + OBJC_IVAR____TtC18ASMessagesProvider44InteractiveProductReviewsShelfScrollObserver_currentState + 40) & 1) == 0)
        {
          v15 = *v14;
          v16 = *(v14 + 16);
          v17 = *(v14 + 24);
          v18 = &v13[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_currentState];
          if ((v13[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_currentState + 40] & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v18, v15), vceqq_f64(*(v18 + 24), v17)))) & 1) == 0 || *(v18 + 2) != v16)
          {
            *v18 = v15;
            *(v18 + 2) = v16;
            *(v18 + 24) = v17;
            v18[40] = 0;
            [v13 setNeedsLayout];
          }
        }
      }
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_746318()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v2 = sub_75DAB0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractiveProductReviewsShelfScrollObserver(uint64_t a1)
{
  result = qword_964A10;
  if (!qword_964A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_746428(uint64_t a1)
{
  result = sub_75DAB0();
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

uint64_t sub_7464D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_7464F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_746544()
{
  result = qword_964B10;
  if (!qword_964B10)
  {
    type metadata accessor for InteractiveProductReviewsShelfScrollObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964B10);
  }

  return result;
}

uint64_t sub_74659C(unint64_t a1, __n128 a2, __n128 a3)
{
  v60 = a3;
  v61 = a2;
  v5 = sub_7656C0();
  *&v59 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = sub_75DAB0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = sub_757640();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    *&v52 = v19;
    result = sub_76A860();
    v19 = v52;
  }

  else
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v57 = v11;
  v58 = v7;
  v55 = v10;
  v56 = v5;
  if (result)
  {
    *&v52 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = v3;
      v24 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v23 = v3;
      v24 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    v25 = [v24 indexPath];
    swift_unknownObjectRelease();
    sub_757590();

    v53 = sub_7575D0();
    (*(v18 + 8))(v21, v52);
  }

  else
  {
    v23 = v3;
    v53 = 0;
  }

  v26 = OBJC_IVAR____TtC18ASMessagesProvider44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v51 = *(v12 + 16);
  v27 = v23;
  v28 = v23 + OBJC_IVAR____TtC18ASMessagesProvider44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v29 = v57;
  v51(v16, v28, v57);
  v30 = v55;
  sub_75DA20();
  v31 = *(v12 + 8);
  v31(v16, v29);
  sub_765560();
  v52 = v32;
  v33 = *(v59 + 8);
  v34 = v30;
  v35 = v56;
  v33(v34, v56);
  v36 = v54;
  v51(v54, v27 + v26, v29);
  v37 = v58;
  sub_75DA20();
  v31(v36, v29);
  sub_7655F0();
  v59 = v38;
  result = (v33)(v37, v35);
  v41 = *&v59;
  v40 = v60.n128_u64[0];
  *&v42.f64[0] = v52;
  *&v43.f64[0] = v61.n128_u64[0];
  v62[0] = v61.n128_u64[0];
  v62[1] = v60.n128_u64[0];
  v44 = v53;
  v62[2] = v53;
  v62[3] = v52;
  v62[4] = v59;
  v45 = v27 + OBJC_IVAR____TtC18ASMessagesProvider44InteractiveProductReviewsShelfScrollObserver_currentState;
  v46 = *(v27 + OBJC_IVAR____TtC18ASMessagesProvider44InteractiveProductReviewsShelfScrollObserver_currentState);
  v47 = *(v27 + OBJC_IVAR____TtC18ASMessagesProvider44InteractiveProductReviewsShelfScrollObserver_currentState + 16);
  v48 = *(v27 + OBJC_IVAR____TtC18ASMessagesProvider44InteractiveProductReviewsShelfScrollObserver_currentState + 24);
  v49 = *(v27 + OBJC_IVAR____TtC18ASMessagesProvider44InteractiveProductReviewsShelfScrollObserver_currentState + 40);
  *v45 = v61.n128_u64[0];
  *(v45 + 8) = v40;
  *(v45 + 16) = v44;
  *(v45 + 24) = v42.f64[0];
  *(v45 + 32) = v41;
  *(v45 + 40) = 0;
  if (v49)
  {
    return sub_746114(v62, v39);
  }

  *&v43.f64[1] = v40;
  v42.f64[1] = v41;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v43, v46), vceqq_f64(v42, v48)))) & 1) == 0 || v44 != v47)
  {
    return sub_746114(v62, v39);
  }

  return result;
}

__n128 sub_7469E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_746A1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_746A64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_746ADC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_746AFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

void *sub_746B44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, __n128 a3@<Q0>, double a4@<D1>)
{
  v5 = v4;
  v117 = a1;
  v7 = a3.n128_f64[0];
  v126 = a2;
  v8 = sub_766950();
  v127 = *(v8 - 8);
  v128 = v8;
  __chkstk_darwin(v8);
  v122 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v113 - v11;
  __chkstk_darwin(v12);
  v120 = &v113 - v13;
  v130 = sub_7672E0();
  v14 = *(v130 - 8);
  __chkstk_darwin(v130);
  v121 = (&v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v132 = (&v113 - v17);
  __chkstk_darwin(v18);
  v131 = (&v113 - v19);
  __chkstk_darwin(v20);
  v22 = (&v113 - v21);
  __chkstk_darwin(v23);
  v25 = (&v113 - v24);
  v133 = sub_7672F0();
  v125 = *(v133 - 8);
  __chkstk_darwin(v133);
  v123 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v119 = &v113 - v29;
  v30 = *(v4 + 18);
  v31 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v32 = [*&v30[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label] hasContent];
  v124 = v30;
  if (v32 && ([v30 isHidden] & 1) == 0)
  {
    v129 = [*&v30[v31] isHidden];
  }

  else
  {
    v129 = 1;
  }

  v33 = *(v5 + 6);
  v34 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  if ([*&v33[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label] hasContent] && (objc_msgSend(*&v33[v34], "isHidden") & 1) == 0)
  {
    v35 = [v33 isHidden];
  }

  else
  {
    v35 = 1;
  }

  sub_6D310((v5 + 104), &v138);
  if (*(&v139 + 1))
  {
    sub_10914(&v138, v147);
    sub_B170(v147, v148);
    sub_7665D0();
    v36 = *(v5 + 1);
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = v36;
    v37 = enum case for Resize.Rule.replaced(_:);
    v38 = *(v14 + 13);
    v39 = v130;
    v38(v25, enum case for Resize.Rule.replaced(_:), v130);
    v40 = *(v5 + 2);
    *(v22 + 3) = &type metadata for CGFloat;
    *(v22 + 4) = &protocol witness table for CGFloat;
    *v22 = v40;
    v38(v22, v37, v39);
    v41 = enum case for Resize.Rule.unchanged(_:);
    v38(v131, enum case for Resize.Rule.unchanged(_:), v39);
    v38(v132, v41, v39);
    v42 = v119;
    sub_767300();
    v43 = v118;
    sub_766930();
    v44 = v133;
    *(&v139 + 1) = v133;
    *&v140 = &protocol witness table for Resize;
    v45 = sub_B1B4(&v138);
    v46 = v5;
    v47 = v125;
    (*(v125 + 16))(v45, v42, v44);
    v48 = v120;
    sub_766940();
    v49 = v128;
    v50 = *(v127 + 8);
    v50(v43, v128);
    sub_BEB8(&v138);
    v136[0] = v124;
    type metadata accessor for TodayTransitioningLabelView();
    sub_7665D0();
    sub_747C00(v46, &v138);
    v51 = swift_allocObject();
    v52 = v145;
    *(v51 + 112) = v144;
    *(v51 + 128) = v52;
    *(v51 + 144) = v146[0];
    *(v51 + 153) = *(v146 + 9);
    v53 = v141;
    *(v51 + 48) = v140;
    *(v51 + 64) = v53;
    v54 = v143;
    *(v51 + 80) = v142;
    *(v51 + 96) = v54;
    v55 = v139;
    *(v51 + 16) = v138;
    *(v51 + 32) = v55;
    *(v51 + 169) = v129;
    v56 = v126;
    v126[3] = v49;
    v56[4] = &protocol witness table for VerticalStack;
    sub_B1B4(v56);
    sub_766940();

    sub_BEB8(v137);
    v50(v48, v49);
    (*(v47 + 8))(v42, v44);
    return sub_BEB8(v147);
  }

  sub_70550(&v138);
  LODWORD(v114) = v35;
  sub_766930();
  v137[0] = v33;
  v119 = type metadata accessor for TodayTransitioningLabelView();
  sub_7665D0();
  *(v25 + 3) = &type metadata for CGFloat;
  *(v25 + 4) = &protocol witness table for CGFloat;
  *v25 = v7;
  v58 = *(v14 + 13);
  v115 = enum case for Resize.Rule.replaced(_:);
  v59 = v130;
  v58(v25);
  v118 = v14;
  v120 = v5;
  v60 = v22;
  v61 = enum case for Resize.Rule.unchanged(_:);
  (v58)(v60, enum case for Resize.Rule.unchanged(_:), v59);
  (v58)(v131, v61, v59);
  v116 = v61;
  v62 = v61;
  v63 = v60;
  (v58)(v132, v62, v59);
  *(&v139 + 1) = v133;
  *&v140 = &protocol witness table for Resize;
  sub_B1B4(&v138);
  sub_767300();
  v64 = swift_allocObject();
  v65 = v120;
  *(v64 + 16) = v114;
  sub_7668F0();

  sub_BEB8(&v138);
  sub_747C00(v65, &v138);
  v66 = swift_allocObject();
  v67 = v145;
  v66[7] = v144;
  v66[8] = v67;
  v66[9] = v146[0];
  *(v66 + 153) = *(v146 + 9);
  v68 = v141;
  v66[3] = v140;
  v66[4] = v68;
  v69 = v143;
  v66[5] = v142;
  v66[6] = v69;
  v70 = v139;
  v66[1] = v138;
  v66[2] = v70;
  v71 = v121;
  *v121 = sub_747C38;
  v71[1] = v66;
  (v58)(v71, enum case for Resize.Rule.recalculated(_:), v59);
  v72 = v129 | ~*(v65 + 152);
  v114 = *(v65 + 56);
  v147[0] = v114;
  if (v72)
  {
    sub_7665D0();
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = v7;
    (v58)(v25, v115, v59);
    v73 = v116;
    (v58)(v63, v116, v59);
    (v58)(v131, v73, v59);
  }

  else
  {
    sub_7665D0();
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = v7;
    (v58)(v25, v115, v59);
    (*(v118 + 2))(v63, v71, v59);
    v73 = v116;
    (v58)(v131, v116, v59);
  }

  (v58)(v132, v73, v59);
  v74 = v123;
  sub_767300();
  v75 = v120;
  v76 = v122;
  v77 = v133;
  if (v120[40])
  {
    v148 = v133;
    v149 = &protocol witness table for Resize;
    v78 = sub_B1B4(v147);
    v79 = v125;
    (*(v125 + 16))(v78, v74, v77);
    sub_747C00(v75, &v138);
    v80 = swift_allocObject();
    v81 = v145;
    v80[7] = v144;
    v80[8] = v81;
    v80[9] = v146[0];
    *(v80 + 153) = *(v146 + 9);
    v82 = v141;
    v80[3] = v140;
    v80[4] = v82;
    v83 = v143;
    v80[5] = v142;
    v80[6] = v83;
    v84 = v139;
    v80[1] = v138;
    v80[2] = v84;
    sub_7668F0();

    sub_BEB8(v147);
    v85 = v130;
    v86 = v121;
LABEL_21:
    v137[0] = v124;
    sub_7665D0();
    sub_747C00(v75, &v138);
    v105 = swift_allocObject();
    v106 = v145;
    *(v105 + 112) = v144;
    *(v105 + 128) = v106;
    *(v105 + 144) = v146[0];
    *(v105 + 153) = *(v146 + 9);
    v107 = v141;
    *(v105 + 48) = v140;
    *(v105 + 64) = v107;
    v108 = v143;
    *(v105 + 80) = v142;
    *(v105 + 96) = v108;
    v109 = v139;
    *(v105 + 16) = v138;
    *(v105 + 32) = v109;
    *(v105 + 169) = v129;
    sub_7668F0();

    sub_BEB8(v147);
    v110 = v128;
    v111 = v126;
    v126[3] = v128;
    v111[4] = &protocol witness table for VerticalStack;
    v112 = sub_B1B4(v111);
    (*(v127 + 32))(v112, v76, v110);
    (*(v79 + 8))(v123, v77);
    return (*(v118 + 1))(v86, v85);
  }

  v87 = *(v120 + 4);
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_77D9F0;
  v89 = v117;
  *(v88 + 32) = v117;
  v90 = v89;
  v91 = sub_7671E0();
  [v114 measurementsWithFitting:v91 in:{v7, a4}];
  v93 = v92;

  sub_B170((v75 + 64), *(v75 + 88));
  result = sub_7669F0();
  v86 = v121;
  if (result)
  {
    v94 = result;
    [result lineHeight];
    v96 = v95;

    if (v96 * v87 - v93 < 0.0)
    {
      v97 = 0.0;
    }

    else
    {
      v97 = v96 * v87 - v93;
    }

    v77 = v133;
    *(&v139 + 1) = v133;
    *&v140 = &protocol witness table for Resize;
    v98 = sub_B1B4(&v138);
    v79 = v125;
    (*(v125 + 16))(v98, v123, v77);
    v137[3] = &type metadata for CGFloat;
    v137[4] = &protocol witness table for CGFloat;
    *v137 = v97;
    v99 = sub_766970();
    v136[3] = v99;
    v136[4] = &protocol witness table for ZeroDimension;
    sub_B1B4(v136);
    sub_766960();
    v135[3] = v99;
    v135[4] = &protocol witness table for ZeroDimension;
    sub_B1B4(v135);
    sub_766960();
    v134[3] = v99;
    v134[4] = &protocol witness table for ZeroDimension;
    sub_B1B4(v134);
    sub_766960();
    v148 = sub_767340();
    v149 = &protocol witness table for Margins;
    sub_B1B4(v147);
    sub_767350();
    sub_747C00(v75, &v138);
    v100 = swift_allocObject();
    v101 = v145;
    v100[7] = v144;
    v100[8] = v101;
    v100[9] = v146[0];
    *(v100 + 153) = *(v146 + 9);
    v102 = v141;
    v100[3] = v140;
    v100[4] = v102;
    v103 = v143;
    v100[5] = v142;
    v100[6] = v103;
    v104 = v139;
    v100[1] = v138;
    v100[2] = v104;
    sub_7668F0();

    sub_BEB8(v147);
    v85 = v130;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_747964(uint64_t a1, uint64_t *a2)
{
  sub_7668B0();
  sub_B170(a2 + 8, a2[11]);
  if (sub_766500())
  {
    [a2[7] isHidden];
  }

  return sub_7668A0();
}

double sub_747A68(void *a1, __n128 a2, double a3)
{
  sub_746B44(a1, v6, a2, a3);
  sub_B170(v6, v6[3]);
  sub_7673F0();
  v4 = v3;
  sub_BEB8(v6);
  return v4;
}

uint64_t sub_747B0C(void *a1, __n128 a2, double a3, double a4, double a5)
{
  a2.n128_f64[0] = a4;
  sub_746B44(a1, v6, a2, a5);
  sub_B170(v6, v6[3]);
  sub_7673E0();
  return sub_BEB8(v6);
}

__n128 sub_747BA8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_747C80(uint64_t a1)
{
  sub_BEB8((v1 + 80));
  if (*(v1 + 144))
  {
    sub_BEB8((v1 + 120));
  }

  return _swift_deallocObject(v1, a1, 7);
}

id sub_747D60(__n128 a1)
{
  v1 = sub_749C94(a1);

  return v1;
}

uint64_t sub_747D8C(uint64_t a1)
{
  v3 = sub_768E70();
  v4 = __chkstk_darwin(v3);
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22MessagesStoreBootstrap_navigationController);
  (*(v7 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  objc_allocWithZone(sub_75F150());
  v8 = v6;
  return sub_75F160();
}

void sub_747E78()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  sub_767130();
  v3 = objc_allocWithZone(sub_767160());
  v4 = sub_767150();
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22MessagesStoreBootstrap_navigationController);
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_77D9F0;
  *(v6 + 32) = v4;
  sub_BE70(0, &qword_9434E0, UIViewController_ptr);
  v7 = v4;
  isa = sub_769450().super.isa;

  [v5 setViewControllers:isa];
}

uint64_t sub_747FB4(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F630, &unk_77E230);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = sub_BD88(&qword_964D18, &unk_7B15B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  sub_4DF5E4(a1);
  sub_BD88(&qword_94DC10, &qword_791AD0);
  sub_7684B0();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_782440;
  v10 = sub_75E770();
  v11 = sub_75E720();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = objc_allocWithZone(v10);
  v13 = sub_75E730();
  v18 = v13;
  sub_7684A0();

  sub_762E40();
  swift_allocObject();
  v18 = sub_762E30();
  sub_7684A0();

  v14 = [objc_allocWithZone(type metadata accessor for AppEventLiveIndicatorAnimationCoordinator()) init];
  v18 = v14;
  sub_7684A0();

  sub_748320();
  sub_7684A0();
  (*(v3 + 8))(v5, v2);
  v18 = v9;
  sub_BD88(&qword_957CD8, &qword_7B15C0);
  sub_16194(&qword_957CE0, &qword_957CD8, &qword_7B15C0, &protocol conformance descriptor for [A]);
  v15 = sub_7688D0();

  return v15;
}

uint64_t sub_748320()
{
  v0 = sub_BD88(&qword_964D20, &qword_7B15C8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - v2;
  sub_768900();
  sub_768990();
  sub_BD88(&unk_93F630, &unk_77E230);
  sub_7497A8();
  sub_768970();
  sub_7497FC();
  sub_768970();
  sub_749850();
  sub_768970();
  sub_7498A4();
  sub_768970();
  sub_7498F8();
  sub_768970();
  sub_7642D0();
  sub_16194(&qword_964D50, &qword_964D20, &qword_7B15C8, &protocol conformance descriptor for ArcadeLaunchAttributionActionImplementation<A>);
  sub_768970();
  (*(v1 + 8))(v3, v0);
  sub_74994C();
  sub_768970();
  sub_7499A0();
  sub_768970();
  sub_7499F4();
  sub_768970();
  sub_749A48();
  sub_768970();
  sub_749A9C();
  sub_768970();
  sub_749AF0();
  sub_768970();
  sub_749B44();
  sub_768970();
  sub_749B98();
  sub_768970();
  sub_749BEC();
  sub_768970();
  sub_749C40();
  sub_768970();
  sub_402668();
  sub_768970();
  sub_749C94(v4);
  swift_unknownObjectUnownedInit();
  sub_749F5C();
  sub_768970();
  sub_749FB0(&v26);
  sub_749C94(v5);
  sub_BD88(&qword_964DB0, qword_7B15D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_784250;
  *(v6 + 56) = &type metadata for ArticlePresentingFlowActionLogic;
  *(v6 + 64) = &off_881800;
  *(v6 + 96) = &type metadata for ArcadeWelcomeFlowActionLogic;
  *(v6 + 104) = &off_883580;
  *(v6 + 136) = &type metadata for NavigationControllerFlowActionLogic;
  *(v6 + 144) = &off_888F18;
  *(v6 + 176) = &type metadata for TabBarControllerFlowActionLogic;
  *(v6 + 184) = &off_88A7E0;
  *(v6 + 216) = &type metadata for RootFlowActionLogic;
  *(v6 + 224) = &off_8864F8;
  type metadata accessor for FlowActionImplementation();
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  *(v7 + 24) = v6;
  v26 = v7;
  sub_74AD78(&qword_964DB8, type metadata accessor for FlowActionImplementation, &unk_7AA35C);
  sub_768970();

  sub_749C94(v8);
  swift_unknownObjectUnownedInit();
  sub_74A004();
  sub_768970();
  sub_74A058(&v26);
  sub_74A0AC();
  sub_768970();
  sub_74A100();
  sub_768970();
  sub_74A154();
  sub_768970();
  sub_74A1A8();
  sub_768970();
  sub_74A1FC();
  sub_768970();
  sub_74A250();
  sub_768970();
  sub_749C94(v9);
  swift_unknownObjectUnownedInit();
  sub_74A2A4();
  sub_768970();
  sub_74A2F8(&v26);
  sub_74A34C();
  sub_768970();
  sub_74A3A0();
  sub_768970();
  sub_74A3F4();
  sub_768970();
  sub_74A448();
  sub_768970();
  sub_74A49C();
  sub_768970();
  sub_74A4F0();
  sub_768970();
  v27 = 0;
  swift_unknownObjectWeakInit();
  v27 = 0;
  swift_unknownObjectWeakAssign();
  sub_74A544();
  sub_768970();
  sub_74A598(&v26);
  sub_74A5EC();
  sub_768970();
  v27 = 0;
  swift_unknownObjectWeakInit();
  v27 = 0;
  swift_unknownObjectWeakAssign();
  sub_74A640();
  sub_768970();
  sub_74A694(&v26);
  sub_74A6E8();
  sub_768970();
  sub_74A73C();
  sub_768970();
  sub_74A790();
  sub_768970();
  sub_74A7E4();
  sub_768970();
  sub_14098();
  sub_768970();
  sub_749C94(v10);
  swift_unknownObjectUnownedInit();
  sub_74A838();
  sub_768970();
  sub_74A88C(&v26);
  sub_749C94(v11);
  swift_unknownObjectUnownedInit();
  sub_74A8E0();
  sub_768970();
  sub_74A934(&v26);
  sub_74A988();
  sub_768970();
  sub_749C94(v12);
  swift_unknownObjectUnownedInit();
  sub_74A9DC();
  sub_768970();
  sub_74AA30(&v26);
  sub_749C94(v13);
  swift_unknownObjectUnownedInit();
  sub_74AA84();
  sub_768970();
  sub_74AAD8(&v26);
  sub_74AB2C();
  sub_768970();
  sub_74AB80();
  sub_768970();
  sub_749C94(v14);
  swift_unknownObjectUnownedInit();
  sub_74ABD4();
  sub_768970();
  sub_74AC28(&v26);
  v16 = sub_749C94(v15);
  v17 = objc_allocWithZone(type metadata accessor for SignInActionImplementation.SignInDelegate());
  v18 = v16;
  v27 = [v17 init];
  swift_unknownObjectUnownedInit();

  sub_74AC7C();
  sub_768970();
  sub_74ACD0(&v26);
  sub_74AD24();
  sub_768970();
  sub_749C94(v19);
  v20 = type metadata accessor for TabChangeActionImplementation();
  v21 = objc_allocWithZone(v20);
  swift_unknownObjectUnownedInit();
  v25.receiver = v21;
  v25.super_class = v20;
  v22 = objc_msgSendSuper2(&v25, "init");
  v26 = v22;
  sub_74AD78(&qword_964EB8, type metadata accessor for TabChangeActionImplementation, &unk_7A81D0);
  sub_768970();

  sub_74ADC0();
  sub_768970();
  sub_74AE14();
  sub_768970();
  sub_74AE68();
  sub_768970();
  sub_74AEBC();
  sub_768970();
  sub_749C94(v23);
  swift_unknownObjectUnownedInit();
  sub_74AF10();
  sub_768970();
  return sub_74AF64(&v26);
}

void sub_748D40(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v4 = sub_75AAC0();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_945020, qword_784B20);
  __chkstk_darwin(v6 - 8);
  v43 = &v42 - v7;
  v8 = sub_758880();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v42 - v11;
  v12 = sub_BD88(&qword_964D18, &unk_7B15B0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v42 - v13);
  sub_BE70(0, &unk_95AB60, AMSURLSession_ptr);
  sub_768900();
  sub_768ED0();
  v15 = v55;
  sub_75E770();
  sub_768ED0();
  v16 = v55;
  v51 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22MessagesStoreBootstrap_navigationController);
  *v14 = v17;
  v18 = enum case for URLProtocolDelegate.DialogStyle.alert(_:);
  v19 = sub_75E720();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v14, v18, v19);
  (*(v20 + 56))(v14, 0, 1, v19);
  v21 = v17;
  v22 = a1;
  sub_75E740();
  v52 = v15;
  v53 = v16;
  [v15 setDelegate:v16];
  sub_75A920();
  sub_768ED0();
  v23 = v55;
  v24 = sub_75A8E0();
  if (*(v24 + 16))
  {
    v42 = v23;
    v26 = v48;
    v25 = v49;
    v27 = *(v49 + 16);
    v28 = v50;
    v27(v48, v24 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v50);

    (*(v25 + 32))(v54, v26, v28);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(Strong + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_objectGraph) = v22;
      v30 = Strong;

      v31 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_storeNavigationController);
      *(v30 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_storeNavigationController) = v21;
      v32 = v21;

      v33 = v43;
      v27(v43, v54, v28);
      (*(v25 + 56))(v33, 0, 1, v28);
      v34 = OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_storeTab;
      swift_beginAccess();
      sub_73B6BC(v33, v30 + v34);
      swift_endAccess();
      *(v30 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_freshnessWatchdog) = v44;

      swift_unknownObjectRelease();
    }

    v35 = v54;
    v36 = swift_unknownObjectWeakLoadStrong();
    if (v36)
    {
      v37 = v36;
      v39 = v45;
      v38 = v46;
      v40 = v47;
      (*(v46 + 104))(v45, enum case for BootstrapPhase.initialBootstrap(_:), v47);
      sub_763160();
      (*(v38 + 8))(v39, v40);
      if (!*(v37 + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_freshnessWatchdog))
      {
        swift_unknownObjectRelease();

        goto LABEL_13;
      }

      sub_75E090();

      swift_unknownObjectRelease();
    }

    else
    {
    }

LABEL_13:
    (*(v25 + 8))(v35, v28);
    return;
  }

  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v41 = sub_768FF0();
  sub_BE38(v41, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();
}

void sub_749438(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = sub_767210();
  __chkstk_darwin(v4 - 8);
  sub_767200();
  v5 = objc_allocWithZone(sub_767230());

  swift_errorRetain();
  v6 = sub_767220();
  v7 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider22MessagesStoreBootstrap_navigationController);
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_77D9F0;
  *(v8 + 32) = v6;
  sub_BE70(0, &qword_9434E0, UIViewController_ptr);
  v9 = v6;
  isa = sub_769450().super.isa;

  [v7 setViewControllers:isa];
}

void sub_749598()
{
  sub_13238(v0 + OBJC_IVAR____TtC18ASMessagesProvider22MessagesStoreBootstrap_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22MessagesStoreBootstrap_navigationController);
}

uint64_t sub_7495D8()
{
  sub_13238(v0 + 16);
  v1 = OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_logger;
  v2 = sub_768850();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_13238(v0 + OBJC_IVAR____TtC18ASMessagesProvider22MessagesStoreBootstrap_delegate);

  return v0;
}

uint64_t sub_7496A4()
{
  sub_7495D8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MessagesStoreBootstrap(uint64_t a1)
{
  result = qword_964B50;
  if (!qword_964B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_7497A8()
{
  result = qword_964D28;
  if (!qword_964D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D28);
  }

  return result;
}

unint64_t sub_7497FC()
{
  result = qword_964D30;
  if (!qword_964D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D30);
  }

  return result;
}

unint64_t sub_749850()
{
  result = qword_964D38;
  if (!qword_964D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D38);
  }

  return result;
}

unint64_t sub_7498A4()
{
  result = qword_964D40;
  if (!qword_964D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D40);
  }

  return result;
}

unint64_t sub_7498F8()
{
  result = qword_964D48;
  if (!qword_964D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D48);
  }

  return result;
}

unint64_t sub_74994C()
{
  result = qword_964D58;
  if (!qword_964D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D58);
  }

  return result;
}

unint64_t sub_7499A0()
{
  result = qword_964D60;
  if (!qword_964D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D60);
  }

  return result;
}

unint64_t sub_7499F4()
{
  result = qword_964D68;
  if (!qword_964D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D68);
  }

  return result;
}

unint64_t sub_749A48()
{
  result = qword_964D70;
  if (!qword_964D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D70);
  }

  return result;
}

unint64_t sub_749A9C()
{
  result = qword_964D78;
  if (!qword_964D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D78);
  }

  return result;
}

unint64_t sub_749AF0()
{
  result = qword_964D80;
  if (!qword_964D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D80);
  }

  return result;
}

unint64_t sub_749B44()
{
  result = qword_964D88;
  if (!qword_964D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D88);
  }

  return result;
}

unint64_t sub_749B98()
{
  result = qword_964D90;
  if (!qword_964D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D90);
  }

  return result;
}

unint64_t sub_749BEC()
{
  result = qword_964D98;
  if (!qword_964D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964D98);
  }

  return result;
}

unint64_t sub_749C40()
{
  result = qword_964DA0;
  if (!qword_964DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964DA0);
  }

  return result;
}

uint64_t sub_749C94(__n128 a1)
{
  v2 = v1;
  v3 = sub_75A980();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_767140();
  __chkstk_darwin(v7 - 8);
  if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_isBootstrapping) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider13BaseBootstrap_isBootstrapping) = 1;
    sub_767130();
    v8 = objc_allocWithZone(sub_767160());
    v9 = sub_767150();
    v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22MessagesStoreBootstrap_navigationController);
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_77D9F0;
    *(v11 + 32) = v9;
    sub_BE70(0, &qword_9434E0, UIViewController_ptr);
    v12 = v9;
    isa = sub_769450().super.isa;

    [v10 setViewControllers:isa];

    sub_4DD028(v6);
    sub_75A970();
    v14 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
    swift_retain_n();
    v15 = sub_769970();
    v18[3] = v14;
    v18[4] = &protocol witness table for OS_dispatch_queue;
    v18[0] = v15;
    sub_768F10();

    sub_BEB8(v18);
    sub_757FE0();
    sub_757FD0();
    (*(v4 + 8))(v6, v3);
  }

  return *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22MessagesStoreBootstrap_navigationController);
}

unint64_t sub_749F5C()
{
  result = qword_964DA8;
  if (!qword_964DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964DA8);
  }

  return result;
}

unint64_t sub_74A004()
{
  result = qword_964DC0;
  if (!qword_964DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964DC0);
  }

  return result;
}

unint64_t sub_74A0AC()
{
  result = qword_964DC8;
  if (!qword_964DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964DC8);
  }

  return result;
}

unint64_t sub_74A100()
{
  result = qword_964DD0;
  if (!qword_964DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964DD0);
  }

  return result;
}

unint64_t sub_74A154()
{
  result = qword_964DD8;
  if (!qword_964DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964DD8);
  }

  return result;
}

unint64_t sub_74A1A8()
{
  result = qword_964DE0;
  if (!qword_964DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964DE0);
  }

  return result;
}

unint64_t sub_74A1FC()
{
  result = qword_964DE8;
  if (!qword_964DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964DE8);
  }

  return result;
}

unint64_t sub_74A250()
{
  result = qword_964DF0;
  if (!qword_964DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964DF0);
  }

  return result;
}

unint64_t sub_74A2A4()
{
  result = qword_964DF8;
  if (!qword_964DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964DF8);
  }

  return result;
}

unint64_t sub_74A34C()
{
  result = qword_964E00;
  if (!qword_964E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E00);
  }

  return result;
}

unint64_t sub_74A3A0()
{
  result = qword_964E08;
  if (!qword_964E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E08);
  }

  return result;
}

unint64_t sub_74A3F4()
{
  result = qword_964E10;
  if (!qword_964E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E10);
  }

  return result;
}

unint64_t sub_74A448()
{
  result = qword_964E18;
  if (!qword_964E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E18);
  }

  return result;
}

unint64_t sub_74A49C()
{
  result = qword_964E20;
  if (!qword_964E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E20);
  }

  return result;
}

unint64_t sub_74A4F0()
{
  result = qword_964E28;
  if (!qword_964E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E28);
  }

  return result;
}

unint64_t sub_74A544()
{
  result = qword_964E30;
  if (!qword_964E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E30);
  }

  return result;
}

unint64_t sub_74A5EC()
{
  result = qword_964E38;
  if (!qword_964E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E38);
  }

  return result;
}

unint64_t sub_74A640()
{
  result = qword_964E40;
  if (!qword_964E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E40);
  }

  return result;
}

unint64_t sub_74A6E8()
{
  result = qword_964E48;
  if (!qword_964E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E48);
  }

  return result;
}

unint64_t sub_74A73C()
{
  result = qword_964E50;
  if (!qword_964E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E50);
  }

  return result;
}

unint64_t sub_74A790()
{
  result = qword_964E58;
  if (!qword_964E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E58);
  }

  return result;
}

unint64_t sub_74A7E4()
{
  result = qword_964E60;
  if (!qword_964E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E60);
  }

  return result;
}

unint64_t sub_74A838()
{
  result = qword_964E68;
  if (!qword_964E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E68);
  }

  return result;
}

unint64_t sub_74A8E0()
{
  result = qword_964E70;
  if (!qword_964E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E70);
  }

  return result;
}

unint64_t sub_74A988()
{
  result = qword_964E78;
  if (!qword_964E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E78);
  }

  return result;
}

unint64_t sub_74A9DC()
{
  result = qword_964E80;
  if (!qword_964E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E80);
  }

  return result;
}

unint64_t sub_74AA84()
{
  result = qword_964E88;
  if (!qword_964E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E88);
  }

  return result;
}

unint64_t sub_74AB2C()
{
  result = qword_964E90;
  if (!qword_964E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E90);
  }

  return result;
}

unint64_t sub_74AB80()
{
  result = qword_964E98;
  if (!qword_964E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964E98);
  }

  return result;
}

unint64_t sub_74ABD4()
{
  result = qword_964EA0;
  if (!qword_964EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964EA0);
  }

  return result;
}

unint64_t sub_74AC7C()
{
  result = qword_964EA8;
  if (!qword_964EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964EA8);
  }

  return result;
}

unint64_t sub_74AD24()
{
  result = qword_964EB0;
  if (!qword_964EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964EB0);
  }

  return result;
}

uint64_t sub_74AD78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_74ADC0()
{
  result = qword_964EC0;
  if (!qword_964EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964EC0);
  }

  return result;
}

unint64_t sub_74AE14()
{
  result = qword_964EC8;
  if (!qword_964EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964EC8);
  }

  return result;
}

unint64_t sub_74AE68()
{
  result = qword_964ED0;
  if (!qword_964ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964ED0);
  }

  return result;
}

unint64_t sub_74AEBC()
{
  result = qword_964ED8;
  if (!qword_964ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964ED8);
  }

  return result;
}

unint64_t sub_74AF10()
{
  result = qword_964EE0;
  if (!qword_964EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964EE0);
  }

  return result;
}

void sub_74AFC0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BD88(&qword_945020, qword_784B20);
  __chkstk_darwin(v6 - 8);
  v8 = &v63 - v7;
  v9 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v9 - 8);
  v11 = &v63 - v10;
  v12 = sub_BD88(&unk_9442D0, &unk_780660);
  __chkstk_darwin(v12 - 8);
  v14 = &v63 - v13;
  v15 = type metadata accessor for FlowDestination(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_726248(v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_61AE8(v14, v18, v19);
    v23 = [a1 traitCollection];
    v24 = sub_759E30();
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    v25 = sub_471418(v18, v23, 0, 0, v11, &v63, a3, 1);

    sub_10A2C(&v63, &unk_9442E0, &unk_783C10);
    sub_10A2C(v11, &unk_944FF0, &unk_783C00);
    if (!v25)
    {
      if (qword_93DF00 != -1)
      {
        swift_once();
      }

      v44 = sub_768FF0();
      sub_BE38(v44, qword_9A0430);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77E280;
      sub_768540();
      v45 = sub_758880();
      *(&v64 + 1) = v45;
      v46 = sub_B1B4(&v63);
      (*(*(v45 - 8) + 16))(v46, a2, v45);
      sub_7685C0();
      sub_10A2C(&v63, &unk_93FBD0, &qword_77DFA0);
      sub_768EA0();

      goto LABEL_26;
    }

    v27 = sub_725904(v26);
    if (!v27 || (v28 = v27, v29 = [v27 title], v28, !v29))
    {
      v29 = 0;
    }

    [v25 setTitle:v29];

    type metadata accessor for StoreCollectionViewController();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = v30;
      *(v30 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle) = 1;
      v32 = (*(&stru_158.flags + (swift_isaMask & *v30)))();
      v33 = v25;
      v34 = [v31 navigationItem];
      v35 = v34;
      if (v32)
      {
        v36 = 1;
      }

      else
      {
        v36 = 2;
      }

      [v34 setLargeTitleDisplayMode:v36];

      ObjectType = swift_getObjectType();
      v38 = sub_758880();
      (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
      v39 = (*(ObjectType + 480))(a3, v8);
      sub_10A2C(v8, &qword_945020, qword_784B20);
      v40 = *(v31 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationAccessories);
      *(v31 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationAccessories) = v39;

      v41 = [v31 traitCollection];
      v42 = sub_4E1BD4(v40, v41, v39);

      if ((v42 & 1) == 0)
      {
        (*&stru_1F8.sectname[swift_isaMask & *v31])(v43);
      }
    }

    else
    {
      type metadata accessor for SearchViewController(0);
      v48 = swift_dynamicCastClass();
      if (!v48)
      {
LABEL_25:
        sub_BD88(&unk_93F5C0, &unk_77C600);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_77D9F0;
        *(v60 + 32) = v25;
        sub_BE70(0, &qword_9434E0, UIViewController_ptr);
        v61 = v25;
        isa = sub_769450().super.isa;

        [a1 setViewControllers:isa];

LABEL_26:
        sub_61BB0(v18, v47);
        return;
      }

      v49 = v48;
      v50 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_prefersLargeTitle;
      *(v48 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_prefersLargeTitle) = 1;
      v51 = v25;
      v52 = [v49 navigationItem];
      v53 = v52;
      if (v49[v50])
      {
        v54 = 3;
      }

      else
      {
        v54 = 2;
      }

      [v52 setLargeTitleDisplayMode:v54];

      v55 = sub_758880();
      (*(*(v55 - 8) + 56))(v8, 1, 1, v55);
      v56 = sub_2B3898(a3, v8);
      sub_10A2C(v8, &qword_945020, qword_784B20);
      v57 = *&v49[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_navigationAccessories];
      *&v49[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_navigationAccessories] = v56;

      v58 = [v49 traitCollection];
      v59 = sub_4E1BD4(v57, v58, v56);

      if ((v59 & 1) == 0)
      {
        sub_2B1BB4();
      }
    }

    goto LABEL_25;
  }

  sub_10A2C(v14, &unk_9442D0, &unk_780660);
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v20 = sub_768FF0();
  sub_BE38(v20, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  v21 = sub_758880();
  *(&v64 + 1) = v21;
  v22 = sub_B1B4(&v63);
  (*(*(v21 - 8) + 16))(v22, a2, v21);
  sub_7685C0();
  sub_10A2C(&v63, &unk_93FBD0, &qword_77DFA0);
  sub_768EA0();
}

id sub_74B98C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v9 initWithFrame:{a2, a3, a4, a5}];
}

void sub_74B9F0(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 32))();
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_7591D0(v10, v5);

  v6 = *(a2 + 40);
  v7 = v6(a1, a2);
  [v7 setAttributedText:0];

  v8 = v6(a1, a2);
  [v8 setText:0];
}

void sub_74BAD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_7652D0();
  v9 = __chkstk_darwin(v8 - 8);
  v24 = 0;
  if (!a1)
  {
LABEL_4:
    v13 = (*(a4 + 32))(a3, a4, v9);
    v14 = v13;
    v22 = v13;
    v26.value.super.isa = 0;
    v26.is_nil = 0;
    sub_7591D0(v26, v14);

    return;
  }

  v10 = sub_74CED0(&v24, v4, a3, a4);
  sub_74CFB0(a1, v10);
  v12 = v11;

  if (v12)
  {

    a1 = v24;
    goto LABEL_4;
  }

  v15 = *(a4 + 32);
  v16 = v15(a3, a4);
  [v16 contentMode];

  sub_765330();
  v17 = v15(a3, a4);
  sub_7652E0();
  sub_7591B0();
  [v17 setContentMode:sub_765140()];
  sub_75DEF0();
  sub_7591F0();
  if (!sub_7651A0())
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    sub_76A030();
  }

  sub_759070();

  v18 = v15(a3, a4);
  sub_759210();
  sub_75A090();

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = v19;

  sub_75A040();

  sub_10A2C(v23, &unk_9443A0, &unk_77E240);
  v21 = v24;
}

uint64_t sub_74BE48@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_BD88(&unk_94F1F0, &qword_782290);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v10);
  v12 = &v22[-v11 - 8];
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v13 = *(v7 + 8);
  v13(v12, v6);
  if (v23)
  {
    sub_BD88(&unk_944DA0, &unk_77EB70);
    sub_759F10();
    if (swift_dynamicCast())
    {
      sub_75DAA0();
      swift_getKeyPath();
      sub_768750();

      v13(v9, v6);
      if (v22[0] == 1)
      {

        v14 = sub_764C70();

        if (v14)
        {
          v15 = (*(a2 + 56))(a1, a2);
          sub_74CFB0(v14, v15);
          v17 = v16;

          if ((v17 & 1) == 0)
          {
            sub_765140();
            sub_7601D0();

            v18 = 0;
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    sub_10A2C(v22, &unk_963040, &qword_77F400);
  }

  v18 = 1;
LABEL_10:
  v19 = sub_7601F0();
  return (*(*(v19 - 8) + 56))(a3, v18, 1, v19);
}

double sub_74C144@<D0>(uint64_t a1@<X8>)
{
  sub_764B30();
  sub_74E318(&qword_961FA0, &type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v2 = sub_768600();
  if (*(v2 + 16))
  {
    sub_134D8(v2 + 32, a1);
  }

  else
  {

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_74C200()
{
  v15 = v0;
  sub_74E318(&qword_961FA0, &type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
  v1 = sub_768600();
  if (*(v1 + 16))
  {
    sub_134D8(v1 + 32, v14);

    sub_B170(v14, v14[3]);
    DynamicType = swift_getDynamicType();
    v3 = sub_768600();
    v4 = *(v3 + 16);
    v5 = v4 != 0;
    v6 = v4 - v5;
    if (v4 >= v5)
    {
      v7 = v4 - v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 + 1;
    result = v3 + 40 * v5 + 32;
    while (1)
    {
      v10 = v6 == 0;
      if (!v6)
      {
LABEL_9:

        sub_BEB8(v14);
        return v10;
      }

      if (!--v8)
      {
        break;
      }

      v11 = result + 40;
      --v6;
      sub_134D8(result, v13);
      sub_B170(v13, v13[3]);
      v12 = swift_getDynamicType();
      sub_BEB8(v13);
      result = v11;
      if (v12 != DynamicType)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    return 1;
  }

  return result;
}

uint64_t sub_74C3A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_74C200();
  *a1 = result & 1;
  return result;
}

uint64_t sub_74C3F8(uint64_t a1, void *a2)
{
  v73 = a2;
  v3 = sub_BD88(&qword_945F18, &qword_79F030);
  __chkstk_darwin(v3 - 8);
  v75 = &v60 - v4;
  v5 = sub_BD88(&unk_956290, &qword_79F038);
  __chkstk_darwin(v5 - 8);
  v76 = &v60 - v6;
  v77 = sub_BD88(&qword_960380, &unk_79F040);
  v74 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v60 - v7;
  v8 = sub_756F10();
  __chkstk_darwin(v8 - 8);
  v9 = sub_759F20();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_945010, &unk_784B10);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - v14;
  v16 = sub_BD88(&qword_93F428, &unk_79F050);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = sub_756EB0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v71 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v60 - v23;
  __chkstk_darwin(v25);
  v70 = &v60 - v26;
  v27 = sub_759EC0();
  if (!v28)
  {
    return 0;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 0;
  }

  v68 = v27;
  v69 = v28;
  sub_759EE0();
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    if (qword_93D190 != -1)
    {
      swift_once();
    }

    v60 = qword_99DD10;
    if (qword_93D198 != -1)
    {
      swift_once();
    }

    v64 = qword_99DD18;
    (*(v10 + 16))(v12, v15, v9);
    v31 = (*(v10 + 88))(v12, v9);
    v67 = a1;
    v66 = v20;
    v65 = v10;
    v62 = v9;
    if (v31 == enum case for SearchEntity.developers(_:))
    {
      v63 = "Search.ResultsTitle.InStories";
      v32 = 0xD000000000000020;
    }

    else
    {
      if (v31 != enum case for SearchEntity.stories(_:))
      {
        if (v31 == enum case for SearchEntity.arcade(_:))
        {
          v63 = "Search.ResultsTitle.InWatch";
          v33 = 0xD00000000000001CLL;
        }

        else
        {
          if (v31 != enum case for SearchEntity.watch(_:))
          {
            result = sub_76A840();
            __break(1u);
            return result;
          }

          v63 = "must be handled.";
          v33 = 0xD00000000000001BLL;
        }

        v61 = v33;
        goto LABEL_23;
      }

      v63 = "Search.ResultsTitle.InArcade";
      v32 = 0xD00000000000001DLL;
    }

    v61 = v32;
LABEL_23:
    sub_BD88(&unk_9562A0, &qword_79B540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    v35 = v69;
    *(inited + 48) = v68;
    *(inited + 56) = v35;

    v36 = sub_10DD04(inited);
    swift_setDeallocating();
    sub_10A2C(inited + 32, &qword_95DC30, qword_79F060);
    v80._object = (v63 | 0x8000000000000000);
    v80._countAndFlagsBits = v61;
    v37._rawValue = v36;
    sub_75B740(v80, v37);

    sub_756F00();
    sub_756EC0();
    v38 = v73;
    v79[0] = v73;
    sub_1EABC();
    v39 = v38;
    sub_756ED0();
    v40 = v64;
    v79[0] = v64;
    sub_489AC0();
    v41 = v40;
    sub_756ED0();
    v79[0] = v68;
    v79[1] = v35;
    v42 = sub_7573C0();
    v43 = v75;
    (*(*(v42 - 8) + 56))(v75, 1, 1, v42);
    sub_74E318(&unk_9562C0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    sub_12EC40();
    v44 = v76;
    sub_756FC0();
    sub_10A2C(v43, &qword_945F18, &qword_79F030);
    if ((*(v74 + 48))(v44, 1, v77) == 1)
    {
      v45 = &unk_956290;
      v46 = &qword_79F038;
      v47 = v44;
    }

    else
    {
      v48 = v72;
      sub_489B5C(v44, v72);
      v49 = v60;
      v50 = v60;
      sub_489BCC();
      v51 = sub_756EE0();
      v78 = v49;
      sub_756F50();
      v51(v79, 0);
      v45 = &qword_960380;
      v46 = &unk_79F040;
      v47 = v48;
    }

    sub_10A2C(v47, v45, v46);
    v52 = v62;
    v53 = v66;
    v54 = *(v66 + 32);
    v54(v18, v24, v19);
    (*(v53 + 56))(v18, 0, 1, v19);
    (*(v65 + 8))(v15, v52);
    if ((*(v53 + 48))(v18, 1, v19) != 1)
    {

      v58 = v70;
      v54(v70, v18, v19);
      sub_BE70(0, &qword_9562D0, NSAttributedString_ptr);
      (*(v53 + 16))(v71, v58, v19);
      v59 = sub_769A50();
      (*(v53 + 8))(v58, v19);
      return v59;
    }

    goto LABEL_27;
  }

  sub_10A2C(v15, &qword_945010, &unk_784B10);
  (*(v20 + 56))(v18, 1, 1, v19);
LABEL_27:
  sub_10A2C(v18, &qword_93F428, &unk_79F050);
  v55 = sub_764C60();
  if (!v56)
  {
    return v68;
  }

  v57 = v55;

  return v57;
}

id sub_74CED0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v9 = (*(a4 + 32))(a3, a4);
    v10 = sub_759110();

    if (!v10)
    {
      v10 = (*(a4 + 56))(a3, a4);
    }

    swift_beginAccess();
    v11 = *a1;
    *a1 = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

uint64_t sub_74CFB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_765190();
  result = 0;
  if (v6)
  {
    sub_7651D0();
    (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.up(_:), v2);
    sub_769D80();
    v9 = v8;
    (*(v3 + 8))(v5, v2);
    return v9;
  }

  return result;
}

double sub_74D0FC(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = (*(a7 + 32))(a6, a7);
    v13.value.super.isa = a1;
    v13.is_nil = 0;
    sub_759140(v13, v12);

    (*(a7 + 80))(a6, a7);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_74D1C0(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v5 = (*(a3 + 56))(a2, a3);
  swift_getKeyPath();
  sub_75C7B0();

  v6 = [v5 configurationWithTraitCollection:v8];

  v7 = sub_759910();
  *a4 = v7;
}

double sub_74D2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = sub_767030();
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_766AF0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_759F10();
  sub_74E318(&unk_956260, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  sub_75C750();
  v15 = v38[0];
  if (v38[0])
  {
    v34 = v11;
    v35 = v10;
    v33 = *(a3 + 40);
    v16 = v33(a2, a3);
    sub_766780();

    v17 = [v4 traitCollection];
    sub_766AE0();
    sub_766FA0();
    v37 = v15;
    v32[1] = v4;
    sub_B170(v38, v38[3]);
    v18 = a2;
    v19 = v37;
    sub_766B50();
    sub_766AC0();
    sub_BEB8(v38);
    sub_766FE0();
    sub_766A70();
    sub_766FC0();
    sub_766A50();
    sub_766FD0();
    sub_766A60();
    sub_766FB0();
    sub_766A40();

    (*(v7 + 8))(v9, v36);
    v20 = sub_766AB0();
    v21 = sub_74C3F8(v19, v20);
    v23 = v22;
    v25 = v24;
    LODWORD(v16) = ~v24;

    if (v16)
    {
      v26 = v33(v18, a3);
      v27 = v26;
      if (v25)
      {
        [v26 setAttributedText:v21];
      }

      else
      {
        v29 = sub_769210();
        [v27 setText:v29];

        v27 = v29;
      }

      v30 = v35;

      v31 = sub_489A98(v21, v23, v25);
      (*(v34 + 8))(v13, v30, v31);
      (*(a3 + 80))(v18, a3);
    }

    else
    {
      v28 = v33(v18, a3);
      [v28 setText:0];

      (*(v34 + 8))(v13, v35);
      (*(a3 + 80))(v18, a3);
    }
  }

  return result;
}

void *sub_74D6E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v54 = a4;
  v47 = a3;
  v46 = a2;
  v50 = sub_7656C0();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_766D70();
  v62 = *(v10 - 8);
  __chkstk_darwin(v10);
  v53 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v61 = &v43[-v13];
  v14 = sub_766AF0();
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_767030();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v43[-v20];
  sub_759F10();
  sub_74E318(&unk_956260, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  result = sub_75C750();
  v23 = v68;
  if (v68)
  {
    v45 = v18;
    v51 = v14;
    v57 = v10;
    swift_getKeyPath();
    sub_75C7B0();

    v24 = v68;
    (*(a6 + 64))(v68, a5, a6);

    swift_getKeyPath();
    v52 = a1;
    sub_75C7B0();

    v25 = v65;
    sub_766AE0();
    sub_766FA0();
    sub_B170(&v68, v69);
    sub_766B50();
    sub_766AC0();
    sub_BEB8(&v68);
    sub_766FE0();
    sub_766A70();
    sub_766FC0();
    sub_766A50();
    sub_766FD0();
    sub_766A60();
    sub_766FB0();
    sub_766A40();

    v26 = sub_766AB0();
    v27 = a5;
    v56 = sub_74C3F8(v23, v26);
    v55 = v28;
    v30 = v29;
    v31 = ~v29;

    if (v31)
    {
      (*(v59 + 16))(v45, v21, v60);
      v44 = v30;
      if (v30)
      {
        sub_4899F8(v56, v55, 1);
        sub_766D50();
        v32 = v53;
        sub_766DB0();
      }

      else
      {
        sub_4899F8(v56, v55, 0);
        sub_766D50();
        v32 = v53;
        sub_766D90();
      }

      v33 = v57;
      (*(v62 + 32))(v61, v32, v57);

      v34 = sub_764C70();

      if (v34 && (*&v65 = v34, sub_74D1C0(v27, a6, &v68), , (v35 = v68) != 0))
      {
        [v68 size];
        v37 = v36;
        v39 = v38;

        *(&v66 + 1) = &type metadata for FixedSizedPlaceholder;
        v67 = sub_1ECC4();
        *&v65 = v37;
        *(&v65 + 1) = v39;
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
      }

      v64[3] = v33;
      v64[4] = &protocol witness table for LabelPlaceholder;
      v40 = sub_B1B4(v64);
      (*(v62 + 16))(v40, v61, v33);
      swift_getKeyPath();
      sub_75C7B0();

      (*(a6 + 48))(&v68, &v65, v64, v63, v27, a6);
      swift_unknownObjectRelease();
      sub_BEB8(v64);
      sub_10A2C(&v65, &unk_941EB0, &unk_7814A0);
      sub_B170(&v68, v69);
      if (v54)
      {
        swift_getKeyPath();
        v41 = v48;
        sub_75C7B0();

        sub_765630();
        (*(v49 + 8))(v41, v50);
      }

      swift_getKeyPath();
      sub_75C7B0();

      v42 = v65;
      sub_7673F0();

      sub_489A98(v56, v55, v44);

      (*(v62 + 8))(v61, v57);
      (*(v58 + 8))(v16, v51);
      (*(v59 + 8))(v21, v60);
      return sub_BEB8(&v68);
    }

    else
    {

      (*(v58 + 8))(v16, v51);
      return (*(v59 + 8))(v21, v60);
    }
  }

  return result;
}

void sub_74DFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 32))(a2, a3);
  sub_759210();
  sub_74E318(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_75A0C0();
}

uint64_t sub_74E0B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_74E0E8()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_74E12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_759F10();
  sub_74E318(&unk_956260, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  sub_75C750();
  if (v14)
  {

    v7 = sub_764C70();

    if (!v7)
    {
LABEL_5:

      return result;
    }

    v8 = (*(a4 + 56))(a3, a4);
    sub_74CFB0(v7, v8);
    v10 = v9;

    if (v10)
    {

      goto LABEL_5;
    }

    v11 = sub_765320();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_77D9F0;
    *(v12 + 32) = v11;

    v13._rawValue = v12;
    sub_75A070(v13);
  }

  return result;
}

uint64_t sub_74E318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_74E364@<X0>(_BYTE *a1@<X8>)
{
  result = sub_74C200();
  *a1 = result & 1;
  return result;
}

uint64_t sub_74E3C0(uint64_t a1)
{
  result = sub_764650();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_74E4B8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_76A5E0();
    v5 = v4;
    v6 = sub_76A680();
    v8 = v7;
    v9 = sub_76A600();
    sub_1F38B4(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1F38B4(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_76A5B0();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_754F80(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1F38B4(v3, v5, v2 != 0);
  return v12;
}

void sub_74E5D4(unint64_t a1, uint64_t a2, int a3, double *a4)
{
  v130 = a4;
  LODWORD(ObjCClassFromMetadata) = a3;
  v118 = a2;
  v6 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v6 - 8);
  v110 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v114 = &v104 - v9;
  v117 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v109 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v10;
  __chkstk_darwin(v11);
  v107 = &v104 - v12;
  v13 = sub_764CF0();
  v132 = *(v13 - 8);
  v133 = v13;
  __chkstk_darwin(v13);
  v105 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v104 - v16;
  __chkstk_darwin(v17);
  v131 = &v104 - v18;
  v127 = sub_768C60();
  v124 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&qword_944EA8, qword_784990);
  __chkstk_darwin(v20 - 8);
  v106 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v113 = &v104 - v23;
  __chkstk_darwin(v24);
  v26 = &v104 - v25;
  v128 = sub_764650();
  v27 = *(v128 - 8);
  __chkstk_darwin(v128);
  v123 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v104 - v30;
  v32 = qword_964F38;
  swift_beginAccess();
  v129 = v4;
  v33 = *&v4[v32];
  v34 = *(v33 + 16);

  if (v34)
  {
    v35 = 0;
    v36 = (v33 + 32);
    while (v35 < *(v33 + 16))
    {
      ++v35;
      v37 = *v36;
      v36 += 2;
      [v37 removeFromSuperview];
      if (v34 == v35)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_24:
    v44 = sub_76A860();
    if (!v44)
    {
      goto LABEL_25;
    }

    goto LABEL_10;
  }

LABEL_5:

  v34 = v129;
  *&v129[v32] = _swiftEmptyArrayStorage;

  v38 = qword_964F50;
  swift_beginAccess();
  *&v34[v38] = a1;

  swift_weakAssign();
  v34[qword_964F68] = ObjCClassFromMetadata & 1;
  sub_1ED18(v118, v26, &qword_944EA8, qword_784990);
  v39 = *(v116 + 48);
  v40 = v117;
  v120 = v116 + 48;
  v119 = v39;
  if (v39(v26, 1, v117) == 1)
  {
    sub_10A2C(v26, &qword_944EA8, qword_784990);
    (v27)[13](v31, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:), v128);
  }

  else
  {
    v41 = &v26[*(v40 + 20)];
    v42 = v123;
    v43 = v128;
    (v27)[2](v123, v41, v128);
    sub_755768(v26);
    (v27)[4](v31, v42, v43);
  }

  sub_74FFD8(v31);
  sub_75A110();
  v112 = sub_768900();
  sub_768ED0();
  v128 = v135;
  v111 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v44 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v44)
  {
    goto LABEL_25;
  }

LABEL_10:
  type metadata accessor for TodayCardLockupView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v44 < 1)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v45 = 0;
  v122 = *&v34[qword_964F30];
  v121 = a1 & 0xC000000000000001;
  v46 = (v132 + 8);
  v47 = (v124 + 8);
  v124 = a1;
  v123 = v44;
  do
  {
    if (v121)
    {
      v48 = sub_76A770();
    }

    else
    {
      v48 = *(a1 + 8 * v45 + 32);
    }

    v49 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    [v122 addSubview:v49];
    v50 = v131;
    sub_764F00();
    v51 = sub_764CA0();
    v53 = v52;
    (*v46)(v50, v133);
    v137 = &type metadata for String;
    v135 = v51;
    v136 = v53;
    memset(v134, 0, sizeof(v134));
    v54 = v126;
    sub_768C50();
    sub_10A2C(v134, &unk_93FBD0, &qword_77DFA0);
    sub_10A2C(&v135, &unk_93FBD0, &qword_77DFA0);
    sub_769E70();
    (*v47)(v54, v127);
    sub_753B30(v48, v128, v130);
    v55 = qword_93E2C0;
    v56 = *&v49[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
    if (v55 != -1)
    {
      swift_once();
    }

    v57 = qword_964F00;
    sub_7590B0();

    swift_beginAccess();
    v58 = *&v34[v32];
    v59 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[v32] = v58;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v58 = sub_7B32C(0, *(v58 + 2) + 1, 1, v58);
      *&v34[v32] = v58;
    }

    a1 = v124;
    v62 = *(v58 + 2);
    v61 = *(v58 + 3);
    if (v62 >= v61 >> 1)
    {
      v58 = sub_7B32C((v61 > 1), v62 + 1, 1, v58);
    }

    ++v45;
    v63 = sub_755AF0(&qword_964FD8, type metadata accessor for TodayCardLockupView, &unk_7830F4);
    *(v58 + 2) = v62 + 1;
    v64 = &v58[2 * v62];
    *(v64 + 4) = v59;
    *(v64 + 5) = v63;
    v34 = v129;
    *&v129[v32] = v58;
    swift_endAccess();
  }

  while (v123 != v45);
LABEL_25:
  v65 = v118;
  v66 = v113;
  sub_1ED18(v118, v113, &qword_944EA8, qword_784990);
  v67 = v117;
  if (v119(v66, 1, v117) == 1)
  {
    sub_10A2C(v66, &qword_944EA8, qword_784990);
    v68 = &v34[qword_964F48];
    *v68 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
    v68[1] = 0;
  }

  else
  {
    v69 = v66;
    v70 = v107;
    sub_7557C4(v69, v107);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakDestroy();
    v71 = v109;
    sub_7557C4(v70, v109);
    v72 = (*(v116 + 80) + 24) & ~*(v116 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = v130;
    sub_7557C4(v71, v73 + v72);
    v74 = &v34[qword_964F48];
    *v74 = sub_755918;
    v74[1] = v73;
  }

  v75 = v115;
  v76 = v114;
  v77 = *&v34[qword_964F40];
  sub_76A410();
  v78 = sub_76A3F0();
  if ((*(*(v78 - 8) + 48))(v76, 1, v78))
  {
    sub_1ED18(v76, v110, &unk_954ED0, &unk_77E060);
    sub_76A420();
    sub_10A2C(v76, &unk_954ED0, &unk_77E060);
  }

  else
  {
    v79 = v106;
    sub_1ED18(v65, v106, &qword_944EA8, qword_784990);
    if (v119(v79, 1, v67) == 1)
    {
      sub_10A2C(v79, &qword_944EA8, qword_784990);
    }

    else
    {

      sub_755768(v79);
      sub_764C60();
    }

    sub_76A3C0();
    sub_76A420();
  }

  v80 = sub_769210();
  [v77 setAccessibilityIdentifier:v80];

  [v77 setHidden:{v119(v65, 1, v67) == 1}];
  sub_BD88(&unk_944300, &qword_77DEE0);
  sub_768ED0();
  v130 = v135;
  v127 = v136;
  if (v111)
  {
    v81 = sub_76A860();
  }

  else
  {
    v81 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v81)
  {
    v135 = _swiftEmptyArrayStorage;
    sub_143B38(0, v81 & ~(v81 >> 63), 0);
    if (v81 < 0)
    {
LABEL_62:
      __break(1u);
      return;
    }

    v82 = v135;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v81; ++i)
      {
        sub_76A770();
        sub_764F00();
        swift_unknownObjectRelease();
        v135 = v82;
        v85 = *(v82 + 2);
        v84 = *(v82 + 3);
        if (v85 >= v84 >> 1)
        {
          sub_143B38((v84 > 1), v85 + 1, 1);
          v82 = v135;
        }

        *(v82 + 2) = v85 + 1;
        (*(v132 + 32))(v82 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v85, v75, v133);
      }
    }

    else
    {
      v86 = a1 + 32;
      v87 = v105;
      do
      {

        sub_764F00();

        v135 = v82;
        v89 = *(v82 + 2);
        v88 = *(v82 + 3);
        if (v89 >= v88 >> 1)
        {
          sub_143B38((v88 > 1), v89 + 1, 1);
          v82 = v135;
        }

        *(v82 + 2) = v89 + 1;
        (*(v132 + 32))(v82 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v89, v87, v133);
        v86 += 8;
        --v81;
      }

      while (v81);
    }

    v34 = v129;
  }

  else
  {
    v82 = _swiftEmptyArrayStorage;
  }

  v90 = *(v82 + 2);
  if (v90)
  {
    v135 = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    sub_143B18(0, v90, 0);
    v91 = v132;
    v126 = v82 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v92 = v135;
    ObjCClassFromMetadata = swift_getObjectType();
    v93 = 0;
    v124 = v91 + 16;
    v123 = (v91 + 8);
    while (v93 < *(v82 + 2))
    {
      v94 = v90;
      v95 = v131;
      v96 = v132;
      v97 = v133;
      (*(v132 + 16))(v131, &v126[*(v132 + 72) * v93], v133);
      v98 = sub_758330();
      v100 = v99;
      (*(v96 + 8))(v95, v97);
      v135 = v92;
      v102 = *(v92 + 2);
      v101 = *(v92 + 3);
      if (v102 >= v101 >> 1)
      {
        sub_143B18((v101 > 1), v102 + 1, 1);
        v92 = v135;
      }

      ++v93;
      *(v92 + 2) = v102 + 1;
      v103 = &v92[2 * v102];
      *(v103 + 4) = v98;
      *(v103 + 5) = v100;
      v90 = v94;
      if (v94 == v93)
      {
        swift_unknownObjectRelease();

        v34 = v129;
        goto LABEL_59;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v92 = _swiftEmptyArrayStorage;
LABEL_59:
  sub_751CA8(v92);
  [v34 setNeedsLayout];

  swift_unknownObjectRelease();
}

void sub_74F654()
{
  v1 = *&v0[qword_964F30];
  CGAffineTransformMakeScale(&aBlock, 0.9, 0.9);
  [v1 setTransform:&aBlock];
  v2 = qword_964F38;
  swift_beginAccess();
  v18 = v0;
  v3 = *&v0[v2];
  v4 = *(v3 + 16);
  v20 = v3;

  v19 = v4;
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v20 + 16))
    {
      v6 = *(v20 + 32 + 16 * v5);
      v7 = [v6 subviews];
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v8 = sub_769460();

      if (v8 >> 62)
      {
        v9 = sub_76A860();
        if (v9)
        {
LABEL_7:
          v10 = 0;
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = sub_76A770();
            }

            else
            {
              if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_20;
              }

              v11 = *(v8 + 8 * v10 + 32);
            }

            v12 = v11;
            v13 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            [v11 setAlpha:0.0];

            ++v10;
            if (v13 == v9)
            {
              goto LABEL_3;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
        if (v9)
        {
          goto LABEL_7;
        }
      }

LABEL_3:
      ++v5;

      if (v5 == v19)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_17:

  v5 = v18;
  [*&v18[qword_964F40] setAlpha:0.0];
  if (qword_93E2A8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v14 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_964EE8 timingParameters:0.0];
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *&aBlock.tx = sub_755728;
  *&aBlock.ty = v15;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_23F0CC;
  *&aBlock.d = &unk_89FA58;
  v16 = _Block_copy(&aBlock);
  v17 = v5;

  [v14 addAnimations:v16];
  _Block_release(v16);
  [v14 startAnimationAfterDelay:0.16];
}

void sub_74F998(uint64_t a1)
{
  v2 = v1;
  v4 = qword_964F38;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 32);
    while (v7 < *(v5 + 16))
    {
      ++v7;
      v9 = *v8;
      v8 += 2;
      [v9 removeFromSuperview];
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_5:

  *&v2[v4] = _swiftEmptyArrayStorage;

  v10 = qword_964F50;
  swift_beginAccess();
  *&v2[v10] = _swiftEmptyArrayStorage;

  sub_751CA8(_swiftEmptyArrayStorage);
  if (a1 < 0)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (a1)
  {
    type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    do
    {
      v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
      if (qword_93E2C0 != -1)
      {
        swift_once();
      }

      v13 = qword_964F00;
      sub_759070();
      [*&v12[OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder] setTextColor:v13];
      [*&v12[OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder] setTextColor:v13];
      [*&v12[OBJC_IVAR____TtC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder] setBackgroundColor:v13];
      [v2 addSubview:v12];
      swift_beginAccess();
      v14 = *&v2[v4];
      v15 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v2[v4] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_7B32C(0, *(v14 + 2) + 1, 1, v14);
        *&v2[v4] = v14;
      }

      v18 = *(v14 + 2);
      v17 = *(v14 + 3);
      if (v18 >= v17 >> 1)
      {
        v14 = sub_7B32C((v17 > 1), v18 + 1, 1, v14);
      }

      v19 = sub_755AF0(&qword_964FE8, type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder, &unk_783F98);
      *(v14 + 2) = v18 + 1;
      v20 = &v14[2 * v18];
      *(v20 + 4) = v15;
      *(v20 + 5) = v19;
      *&v2[v4] = v14;
      swift_endAccess();

      --a1;
    }

    while (a1);
  }

  [*&v2[qword_964F40] setHidden:1];
  [v2 setNeedsLayout];
}

id sub_74FC94()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_964EE8 = result;
  return result;
}

id sub_74FCE4()
{
  result = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.450980392 blue:0.333333333 alpha:1.0];
  qword_964EF0 = result;
  return result;
}

id sub_74FD34()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.764705882 green:0.133333333 blue:0.180392157 alpha:1.0];
  qword_964EF8 = result;
  return result;
}

id sub_74FDAC()
{
  result = [objc_opt_self() whiteColor];
  qword_964F08 = result;
  return result;
}

void sub_74FE20(double a1, uint64_t a2, SEL *a3, void *a4)
{
  v6 = [objc_opt_self() *a3];
  v7 = [v6 colorWithAlphaComponent:a1];

  *a4 = v7;
}

uint64_t (*sub_74FE9C(uint64_t a1))(void *a1)
{
  v3 = sub_764650();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  return sub_755BCC;
}

uint64_t sub_74FFD8(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = qword_964F20;
  swift_beginAccess();
  v5 = sub_764650();
  v6 = *(v5 - 8);
  (*(v6 + 24))(&v1[v4], a1, v5);
  swift_endAccess();
  v7 = *&v1[qword_964F40];
  v11[4] = sub_74FE9C(&v1[v4]);
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_123860;
  v11[3] = &unk_89FB48;
  v9 = _Block_copy(v11);

  [v7 setConfigurationUpdateHandler:v9];
  _Block_release(v9);
  [v2 setNeedsLayout];
  return (*(v6 + 8))(a1, v5);
}

char *sub_750154(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = qword_964F20;
  v14 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  v15 = sub_764650();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  v16 = &v4[qword_9A0B40];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v17 = qword_964F28;
  *&v4[v17] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v18 = qword_964F30;
  *&v4[v18] = [objc_allocWithZone(UIView) init];
  *&v4[qword_964F38] = _swiftEmptyArrayStorage;
  v19 = qword_964F40;
  *&v4[v19] = [objc_opt_self() buttonWithType:0];
  v20 = &v4[qword_964F48];
  *v20 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v20[1] = 0;
  *&v4[qword_964F50] = _swiftEmptyArrayStorage;
  swift_weakInit();
  *&v4[qword_964F60] = _swiftEmptyArrayStorage;
  v4[qword_964F68] = 0;
  *&v4[qword_964F70] = 0;
  v4[qword_9A0B48] = 0;
  v21 = &v4[qword_964F78];
  *v21 = 0;
  v21[8] = 1;
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v41, "initWithFrame:", a1, a2, a3, a4);
  [v22 _setCornerRadius:20.0];
  v23 = v22;
  [v23 setClipsToBounds:1];
  v24 = qword_964F28;
  [v23 addSubview:*&v23[qword_964F28]];
  [v23 addSubview:*&v23[qword_964F30]];
  v25 = qword_964F40;
  [v23 addSubview:*&v23[qword_964F40]];
  v26 = *&v23[v24];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_77B6C0;
  v28 = qword_93E2B0;
  v29 = v26;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = qword_964EF0;
  *(v27 + 32) = qword_964EF0;
  v31 = qword_93E2B8;
  v32 = v30;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = qword_964EF8;
  *(v27 + 40) = qword_964EF8;
  *&v29[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v27;
  v34 = v33;

  sub_4AC204();

  v35 = *&v23[v25];
  [v35 addTarget:v23 action:"didTapDownloadAllButton" forControlEvents:64];

  v36 = *&v23[v25];
  sub_76A3E0();
  v37 = sub_76A3F0();
  (*(*(v37 - 8) + 56))(v12, 0, 1, v37);
  sub_76A420();

  v38 = [*&v23[v25] layer];
  [v38 setCompositingFilter:kCAFilterPlusL];

  [*&v23[v25] setOverrideUserInterfaceStyle:2];
  v39 = [v23 layer];

  [v39 setAllowsGroupBlending:0];
  [*&v23[v25] setHidden:1];

  return v23;
}

void sub_750678()
{
  v1 = qword_964F20;
  v2 = sub_764650();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10A2C(v0 + qword_9A0B40, &qword_94F648, &qword_7B1910);

  swift_weakDestroy();

  v3 = *(v0 + qword_964F70);
}

void sub_750794()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[qword_964F60];
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = v2 + 40;
    while (v4 < *(v2 + 16))
    {
      ++v4;
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_758210();
      swift_unknownObjectRelease();
      v5 += 16;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v6.receiver = v0;
    v6.super_class = ObjectType;
    objc_msgSendSuper2(&v6, "dealloc");
  }
}

void sub_7508A0(uint64_t a1)
{
  v2 = qword_964F20;
  v3 = sub_764650();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_10A2C(a1 + qword_9A0B40, &qword_94F648, &qword_7B1910);

  swift_weakDestroy();

  v4 = *(a1 + qword_964F70);
}

void sub_7509C0()
{
  v1 = sub_7580D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v37 - v6;
  v7 = sub_BD88(&qword_946478, &qword_7B18F0);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = qword_964F60;
  v58 = v0;
  v11 = *(v0 + qword_964F60);
  v12 = *(v11 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    goto LABEL_29;
  }

  v44 = qword_964F60;
  v59 = _swiftEmptyArrayStorage;

  sub_143AD8(0, v12, 0);
  v13 = v59;
  v54 = (v2 + 32);
  v53 = (v2 + 88);
  v52 = enum case for LegacyAppState.waiting(_:);
  v49 = enum case for LegacyAppState.updatable(_:);
  v50 = enum case for LegacyAppState.purchased(_:);
  v45 = enum case for LegacyAppState.paused(_:);
  v46 = enum case for LegacyAppState.downloadable(_:);
  v41 = enum case for LegacyAppState.installing(_:);
  v42 = enum case for LegacyAppState.downloading(_:);
  v39 = enum case for LegacyAppState.buyable(_:);
  v40 = enum case for LegacyAppState.openable(_:);
  v47 = (v2 + 8);
  v38 = enum case for LegacyAppState.installed(_:);
  v51 = (v2 + 96);
  v43 = v11;
  v14 = v11 + 40;
  v37 = enum case for LegacyAppState.unknown(_:);
  v48 = enum case for PurchaseType.preorder(_:);
  v15 = v57;
  do
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_758250();
    sub_758220();
    swift_unknownObjectRelease();
    (*v54)(v4, v15, v1);
    v16 = (*v53)(v4, v1);
    if (v16 == v52)
    {
      (*v51)(v4, v1);
      v17 = sub_75BC10();
LABEL_5:
      (*(*(v17 - 8) + 8))(v4, v17);
LABEL_6:
      v18 = 0;
      goto LABEL_14;
    }

    if (v16 == v50)
    {
      (*v51)(v4, v1);
      v19 = sub_759E00();
      v20 = *(v19 - 8);
      v21 = (*(v20 + 88))(v4, v19);
      if (v21 != v48)
      {
        (*(v20 + 8))(v4, v19);
        goto LABEL_6;
      }
    }

    else if (v16 == v49 || v16 == v46)
    {
      (*v47)(v4, v1);
    }

    else if (v16 == v45)
    {
      (*v51)(v4, v1);
      v24 = sub_758040();
      (*(*(v24 - 8) + 8))(v4, v24);
    }

    else
    {
      if (v16 == v42 || v16 == v41)
      {
        (*v51)(v4, v1);
        v17 = sub_758040();
        goto LABEL_5;
      }

      if (v16 == v40)
      {
        (*v51)(v4, v1);

        v17 = sub_75E270();
        goto LABEL_5;
      }

      if (v16 != v39)
      {
        if (v16 == v38)
        {
          goto LABEL_6;
        }

        if (v16 != v37)
        {
          (*v47)(v4, v1);
          goto LABEL_6;
        }
      }
    }

    v18 = 1;
LABEL_14:
    v9[*(v56 + 48)] = v18;
    v59 = v13;
    v23 = *(v13 + 2);
    v22 = *(v13 + 3);
    if (v23 >= v22 >> 1)
    {
      sub_143AD8((v22 > 1), v23 + 1, 1);
      v13 = v59;
    }

    *(v13 + 2) = v23 + 1;
    sub_75597C(v9, v13 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v23);
    v14 += 16;
    --v12;
  }

  while (v12);

  v10 = v44;
LABEL_29:
  if (*(v13 + 2))
  {
    sub_BD88(&qword_955900, &qword_79E2F8);
    v25 = sub_76A8B0();
  }

  else
  {
    v25 = _swiftEmptyDictionarySingleton;
  }

  v59 = v25;

  sub_7551A4(v26, 1, &v59);
  v27 = swift_allocObject();

  *(v27 + 16) = v59;
  v28 = swift_allocObject();
  v29 = v58;
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = v28;

  sub_751528(v31, v28);

  v32 = *(v29 + v10);
  v33 = *(v32 + 16);

  if (v33)
  {
    v34 = 0;
    v35 = v32 + 40;
    while (v34 < *(v32 + 16))
    {
      ++v34;
      swift_getObjectType();
      v36 = swift_allocObject();
      v36[2] = v27;
      v36[3] = sub_755A9C;
      v36[4] = v30;

      swift_unknownObjectRetain();

      sub_7581F0();
      swift_unknownObjectRelease();

      v35 += 16;
      if (v33 == v34)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_36:
  }
}

uint64_t sub_751188()
{
  v1 = v0;
  v2 = sub_7580D0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = sub_75BC10();
LABEL_3:
    (*(*(v8 - 8) + 8))(v6, v8);
    return 0;
  }

  if (v7 == enum case for LegacyAppState.purchased(_:))
  {
    (*(v3 + 96))(v6, v2);
    v10 = sub_759E00();
    v11 = *(v10 - 8);
    if ((*(v11 + 88))(v6, v10) != enum case for PurchaseType.preorder(_:))
    {
      (*(v11 + 8))(v6, v10);
      return 0;
    }
  }

  else if (v7 == enum case for LegacyAppState.updatable(_:) || v7 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  else if (v7 == enum case for LegacyAppState.paused(_:))
  {
    (*(v3 + 96))(v6, v2);
    v12 = sub_758040();
    (*(*(v12 - 8) + 8))(v6, v12);
  }

  else
  {
    if (v7 == enum case for LegacyAppState.downloading(_:) || v7 == enum case for LegacyAppState.installing(_:))
    {
      (*(v3 + 96))(v6, v2);
      v8 = sub_758040();
      goto LABEL_3;
    }

    if (v7 == enum case for LegacyAppState.openable(_:))
    {
      (*(v3 + 96))(v6, v2);

      v8 = sub_75E270();
      goto LABEL_3;
    }

    if (v7 != enum case for LegacyAppState.buyable(_:))
    {
      if (v7 == enum case for LegacyAppState.installed(_:))
      {
        return 0;
      }

      if (v7 != enum case for LegacyAppState.unknown(_:))
      {
        (*(v3 + 8))(v6, v2);
        return 0;
      }
    }
  }

  return 1;
}

void sub_751528(uint64_t a1, uint64_t a2)
{
  v53[1] = a2;
  v62 = sub_BD88(&qword_964FE0, &qword_7B18F8);
  __chkstk_darwin(v62);
  v57 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = v53 - v5;
  __chkstk_darwin(v6);
  v59 = v53 - v7;
  __chkstk_darwin(v8);
  v58 = v53 - v9;
  swift_beginAccess();
  v54 = a1;
  v10 = *(a1 + 16);
  v11 = *(v10 + 64);
  v56 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v55 = (v12 + 63) >> 6;
  v61 = v10;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = v59;
  while (v14)
  {
    v17 = v15;
LABEL_10:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = v18 | (v17 << 6);
    v20 = v61;
    v21 = *(v61 + 48);
    v22 = sub_764CF0();
    v23 = *(v22 - 8);
    v24 = v58;
    (*(v23 + 16))(v58, v21 + *(v23 + 72) * v19, v22);
    v25 = *(*(v20 + 56) + v19);
    v26 = v62;
    *(v24 + *(v62 + 48)) = v25;
    sub_1ED18(v24, v16, &qword_964FE0, &qword_7B18F8);
    v27 = *(v26 + 48);
    LOBYTE(v21) = *(v16 + v27);
    v28 = v60;
    (*(v23 + 32))(v60, v16, v22);
    *(v28 + v27) = v21;
    sub_10A2C(v28, &qword_964FE0, &qword_7B18F8);
    sub_10A2C(v24, &qword_964FE0, &qword_7B18F8);
    if ((v21 & 1) == 0)
    {
      v29 = 1;
LABEL_13:

      v30 = v54;
      swift_beginAccess();
      v31 = *(v30 + 16);
      v32 = 1 << *(v31 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & *(v31 + 64);
      v35 = (v32 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v36 = 0;
      while (v34)
      {
        v37 = v36;
LABEL_22:
        v38 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v39 = v38 | (v37 << 6);
        v40 = *(v31 + 48);
        v41 = sub_764CF0();
        v42 = *(v41 - 8);
        v43 = v40 + *(v42 + 72) * v39;
        v44 = v57;
        (*(v42 + 16))(v57, v43, v41);
        LODWORD(v39) = *(*(v31 + 56) + v39);
        *(v44 + *(v62 + 48)) = v39;
        sub_10A2C(v44, &qword_964FE0, &qword_7B18F8);
        if (v39 == 1)
        {
          v45 = 1;
LABEL_25:

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v47 = Strong;
            v48 = *(Strong + qword_964F40);

            [v48 setEnabled:v45];
          }

          swift_beginAccess();
          v49 = swift_unknownObjectWeakLoadStrong();
          if (v49)
          {
            v50 = v49;
            v51 = v49 + qword_9A0B40;
            swift_beginAccess();
            if (*(v51 + 24))
            {
              sub_134D8(v51, v63);

              sub_B170(v63, v63[3]);
              if (v45)
              {
                v52 = 1;
              }

              else
              {
                v52 = 2;
              }

              if (!v29)
              {
                v52 = 0;
              }

              sub_312B20(v52);
              sub_BEB8(v63);
            }

            else
            {
            }
          }

          return;
        }
      }

      while (1)
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_38;
        }

        if (v37 >= v35)
        {
          v45 = 0;
          goto LABEL_25;
        }

        v34 = *(v31 + 64 + 8 * v37);
        ++v36;
        if (v34)
        {
          v36 = v37;
          goto LABEL_22;
        }
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v55)
    {
      v29 = 0;
      goto LABEL_13;
    }

    v14 = *(v56 + 8 * v17);
    ++v15;
    if (v14)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_751AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v18 = a5;
  v19 = a4;
  v6 = sub_7580D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_764CF0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_758250();
  sub_758220();
  v14 = sub_751188();
  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_45A7CC(v14 & 1, v13, isUniquelyReferenced_nonNull_native);
  (*(v11 + 8))(v13, v10);
  *(a3 + 16) = v20;
  v16 = swift_endAccess();
  return v19(v16);
}

void sub_751CA8(uint64_t a1)
{
  v3 = qword_964F60;
  v4 = *(v1 + qword_964F60);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = v4 + 40;
    while (v6 < *(v4 + 16))
    {
      ++v6;
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_758210();
      swift_unknownObjectRelease();
      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v1 + v3) = a1;

    sub_7509C0();
  }
}

uint64_t sub_751D84(void *a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_BD88(&qword_95A868, &unk_7B1900);
  __chkstk_darwin(v3 - 8);
  v5 = &v53[-v4];
  v6 = sub_7677A0();
  v67 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v69 = &v53[-v9];
  v10 = sub_BD88(&unk_95A870, &unk_798D00);
  __chkstk_darwin(v10 - 8);
  v12 = &v53[-v11];
  v63 = sub_76A350();
  v61 = *(v63 - 1);
  __chkstk_darwin(v63);
  v62 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_764650();
  v68 = *(v14 - 8);
  __chkstk_darwin(v14);
  v64 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v53[-v17];
  v19 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v19 - 8);
  v65 = &v53[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v53[-v22];
  v24 = sub_76A3F0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v53[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_76A410();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_10A2C(v23, &unk_954ED0, &unk_77E060);
  }

  v58 = v12;
  (*(v25 + 32))(v27, v23, v24);
  v29 = [a1 state];
  v59 = v5;
  v60 = v6;
  if (v29 == &dword_0 + 2)
  {
    if (qword_93E2D8 != -1)
    {
      swift_once();
    }

    v32 = sub_76A100();
    v33 = qword_93E2D0;
    v57 = v32;
    if (v33 != -1)
    {
      swift_once();
    }

    v34 = &qword_964F10;
  }

  else
  {
    if (v29 == &dword_0 + 1)
    {
      if (qword_93E2D8 != -1)
      {
        swift_once();
      }

      v30 = sub_76A100();
      v31 = qword_93E2C8;
    }

    else
    {
      if (qword_93E2D8 != -1)
      {
        swift_once();
      }

      v31 = qword_93E2C8;
      v30 = qword_964F18;
    }

    v57 = v30;
    if (v31 != -1)
    {
      swift_once();
    }

    v34 = &qword_964F08;
  }

  v35 = *v34;
  v36 = v68;
  v56 = *(v68 + 16);
  v56(v18, v70, v14);
  v55 = *(v36 + 88);
  v37 = v55(v18, v14);
  v54 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  if (v37 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:))
  {
    v38 = v35;
    sub_76A2C0();
  }

  else if (v37 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:))
  {
    (*(v61 + 104))(v62, enum case for UIButton.Configuration.Size.large(_:), v63);
    v39 = v35;
    sub_76A260();
  }

  else
  {
    v63 = *(v68 + 8);
    v40 = v35;
    (v63)(v18, v14);
  }

  v41 = swift_allocObject();
  v63 = v35;
  *(v41 + 16) = v35;
  *(v41 + 24) = a1;
  a1;
  v42 = v58;
  sub_767BA0();
  v43 = sub_767B90();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  sub_76A340();
  v44 = v69;
  sub_76A240();
  v45 = v64;
  v56(v64, v70, v14);
  v46 = v55(v45, v14);
  if (v46 == v54)
  {
    sub_767740();
    v47 = v60;
    v48 = v67;
    v49 = v57;
  }

  else
  {
    v47 = v60;
    v48 = v67;
    v49 = v57;
    if (v46 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:))
    {
      v44 = v69;
      sub_767740();
    }

    else
    {
      (*(v68 + 8))(v45, v14);
      v44 = v69;
    }
  }

  *(swift_allocObject() + 16) = v49;
  v50 = v59;
  sub_7679A0();
  v51 = sub_767990();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  sub_767780();
  (*(v48 + 16))(v66, v44, v47);
  sub_76A250();
  v52 = v65;
  (*(v25 + 16))(v65, v27, v24);
  (*(v25 + 56))(v52, 0, 1, v24);
  sub_76A420();

  (*(v48 + 8))(v44, v47);
  return (*(v25 + 8))(v27, v24);
}

uint64_t sub_75267C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_756F10();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  sub_489AC0();
  v9 = a2;
  sub_756F20();
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DB38 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  sub_BE38(v10, qword_99F9A0);
  v11 = [a3 traitCollection];
  sub_769E10();

  sub_1EABC();
  sub_756F20();
  if (qword_93C2E8 != -1)
  {
    swift_once();
  }

  v12 = qword_99A448;
  sub_53BF2C();
  v13 = v12;
  return sub_756F20();
}

uint64_t sub_75283C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_766880();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v69 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v56 - v7;
  v62 = sub_7672E0();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v59 = (&v56 - v10);
  __chkstk_darwin(v11);
  v66 = (&v56 - v12);
  __chkstk_darwin(v13);
  v58 = (&v56 - v14);
  v65 = sub_7672F0();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_764650();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v68 = sub_766950();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766930();
  swift_beginAccess();

  v26 = sub_141BF4(v25);

  v27 = qword_964F20;
  swift_beginAccess();
  v28 = *(v17 + 16);
  v74 = v2;
  v28(v22, v2 + v27, v16);
  (*(v17 + 104))(v19, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:), v16);
  sub_755AF0(&qword_964FF0, &type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle, &protocol conformance descriptor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle);
  sub_769430();
  sub_769430();
  if (v75 == v78)
  {
    v29 = *(v17 + 8);
    v29(v19, v16);
    v29(v22, v16);
  }

  else
  {
    LODWORD(v57) = sub_76A950();
    v30 = *(v17 + 8);
    v30(v19, v16);
    v30(v22, v16);

    if ((v57 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v31 = *(v74 + qword_964F40);
  if ([v31 isHidden])
  {
    goto LABEL_9;
  }

  v76 = sub_BE70(0, &qword_960F00, UIButton_ptr);
  v77 = &protocol witness table for UIButton;
  v57 = v31;
  *&v75 = v31;
  v32 = v58;
  *v58 = sub_E69A4;
  v32[1] = 0;
  v33 = *(v60 + 104);
  v34 = v62;
  v33(v32, enum case for Resize.Rule.recalculated(_:), v62);
  v35 = enum case for Resize.Rule.unchanged(_:);
  v33(v66, enum case for Resize.Rule.unchanged(_:), v34);
  v33(v59, v35, v34);
  v33(v61, v35, v34);
  v36 = v57;
  v37 = v63;
  sub_767300();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v38 = v65;
    v39 = v64;
    v41 = *(v26 + 2);
    v40 = *(v26 + 3);
    if (v41 >= v40 >> 1)
    {
      v26 = sub_7CA84((v40 > 1), v41 + 1, 1, v26);
    }

    v76 = v38;
    v77 = &protocol witness table for Resize;
    v42 = sub_B1B4(&v75);
    (*(v39 + 16))(v42, v37, v38);
    *(v26 + 2) = v41 + 1;
    sub_10914(&v75, &v26[5 * v41 + 4]);
    (*(v39 + 8))(v37, v38);
LABEL_9:
    v43 = *(v26 + 2);
    if (!v43)
    {
      break;
    }

    v44 = 0;
    v45 = (v26 + 4);
    v37 = &v75;
    while (v44 < *(v26 + 2))
    {
      *&v75 = v44;
      sub_134D8(v45, &v75 + 8);
      sub_75319C(v44, &v75 + 8, v24, v43, ObjectType);
      sub_10A2C(&v75, &qword_964FF8, &qword_7B1918);
      v45 += 40;
      if (v43 == ++v44)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    v26 = sub_7CA84(0, *(v26 + 2) + 1, 1, v26);
  }

LABEL_13:

  v46 = v69;
  sub_766850();
  *&v78 = *(v74 + qword_964F30);
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_7665D0();
  v47 = v70;
  sub_766870();
  sub_BEB8(&v75);
  v48 = *(v72 + 8);
  v49 = v46;
  v50 = v73;
  v48(v49, v73);
  v51 = v68;
  v76 = v68;
  v77 = &protocol witness table for VerticalStack;
  v52 = sub_B1B4(&v75);
  v53 = v67;
  (*(v67 + 16))(v52, v24, v51);
  v54 = v71;
  v71[3] = v50;
  v54[4] = &protocol witness table for DisjointStack;
  sub_B1B4(v54);
  sub_766870();
  v48(v47, v50);
  sub_BEB8(&v75);
  return (*(v53 + 8))(v24, v51);
}

uint64_t sub_75319C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_134D8(a2, &v10);
  v11[3] = sub_767340();
  v11[4] = &protocol witness table for Margins;
  sub_B1B4(v11);
  sub_767330();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a4;
  v8[4] = a5;
  sub_7668F0();

  return sub_BEB8(v11);
}

uint64_t sub_753278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_7668B0();
  if (!__OFSUB__(a3, 1))
  {
    return sub_7668C0();
  }

  __break(1u);
  return result;
}

uint64_t sub_753314()
{
  v0 = sub_766840();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766970();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  sub_766830();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v6(v3, v5, v0);
  sub_766800();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v6(v3, v5, v0);
  sub_7667F0();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v6(v3, v5, v0);
  sub_766810();
  return sub_766820();
}

uint64_t sub_7534EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v44 = sub_7672E0();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v46 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v45 = (&v39 - v5);
  __chkstk_darwin(v6);
  v43 = (&v39 - v7);
  __chkstk_darwin(v8);
  v41 = (&v39 - v9);
  v10 = sub_764650();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = sub_766950();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v39 - v22;
  sub_766930();
  sub_75283C(v53);
  sub_766940();
  sub_BEB8(v53);
  v24 = *(v18 + 8);
  v47 = v17;
  v24(v20, v17);
  v25 = *(v1 + qword_964F40);
  if (([v25 isHidden] & 1) == 0)
  {
    v26 = qword_964F20;
    swift_beginAccess();
    (*(v11 + 16))(v16, v2 + v26, v10);
    (*(v11 + 104))(v13, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:), v10);
    sub_755AF0(&qword_964FF0, &type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle, &protocol conformance descriptor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle);
    sub_769430();
    sub_769430();
    if (v53[0] == v49 && v53[1] == v50)
    {
      v27 = *(v11 + 8);
      v27(v13, v10);
      v27(v16, v10);

LABEL_6:
      v51 = sub_BE70(0, &qword_960F00, UIButton_ptr);
      v52 = &protocol witness table for UIButton;
      v49 = v25;
      v40 = v25;
      v29 = v41;
      v30 = v42;
      *v41 = sub_E69A4;
      v29[1] = 0;
      v31 = *(v30 + 104);
      v32 = v44;
      v31(v29, enum case for Resize.Rule.recalculated(_:), v44);
      v33 = enum case for Resize.Rule.unchanged(_:);
      v31(v43, enum case for Resize.Rule.unchanged(_:), v32);
      v31(v45, v33, v32);
      v31(v46, v33, v32);
      v53[3] = sub_7672F0();
      v53[4] = &protocol witness table for Resize;
      sub_B1B4(v53);
      v34 = v40;
      sub_767300();
      sub_7668F0();
      sub_BEB8(v53);
      goto LABEL_7;
    }

    LODWORD(v40) = sub_76A950();
    v28 = *(v11 + 8);
    v28(v13, v10);
    v28(v16, v10);

    if (v40)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  v36 = v47;
  v35 = v48;
  v48[3] = v47;
  v35[4] = &protocol witness table for VerticalStack;
  v37 = sub_B1B4(v35);
  return (*(v18 + 32))(v37, v23, v36);
}

id sub_753AB4()
{
  sub_766CF0();
  v1 = sub_766D00();
  v1();
  v2 = *&v0[qword_964F28];
  [v0 bounds];

  return [v2 setFrame:?];
}

void sub_753B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v5 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v8 - 8);
  v10 = (&v44 - v9);
  v11 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  v14 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v17 - 8);
  v19 = &v44 - v18;
  v20 = sub_BD88(&unk_948740, &unk_784920);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = sub_758C70();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  v22 = sub_75BD30();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  if (qword_93E2D8 != -1)
  {
    swift_once();
  }

  v23 = qword_93E2C8;
  v24 = qword_964F18;
  if (v23 != -1)
  {
    v43 = v24;
    swift_once();
    v24 = v43;
  }

  v25 = qword_964F08;
  *v10 = v24;
  v10[1] = v25;
  v26 = enum case for OfferTint.custom(_:);
  v27 = sub_765870();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v10, v26, v27);
  (*(v28 + 56))(v10, 0, 1, v27);
  v29 = sub_BD88(&unk_9457F0, qword_783FD0);
  (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  v30 = v25;
  sub_4A18A4(v46, v4, v19, v45, 0, 0, v16, v13, v10, v7);
  v4[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_BD3C0();
  [v4 setNeedsLayout];
  sub_BD3C0();
  sub_10A2C(v7, &unk_94AC40, qword_78D7F0);
  sub_10A2C(v10, &unk_9457D0, &unk_785630);
  sub_10A2C(v13, &unk_9457E0, &qword_785640);
  sub_10A2C(v16, &unk_94A780, &unk_788DC0);
  sub_10A2C(v19, &unk_948730, &qword_788DD0);
  if (sub_764EE0())
  {
    swift_beginAccess();
    sub_765320();
    sub_759210();
    sub_755AF0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();
  }

  [*&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel] setOverrideUserInterfaceStyle:2];
  v31 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
  v32 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
  if (v32)
  {
    [v32 setOverrideUserInterfaceStyle:2];
    v33 = *&v4[v31];
    if (v33)
    {
      v34 = [v33 layer];
      [v34 setCompositingFilter:kCAFilterPlusL];

      v35 = *&v4[v31];
      if (v35)
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        v36 = v35;
        v37 = sub_769FF0();
        [v36 setTextColor:v37];
      }
    }
  }

  v38 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton];
  v39 = [v38 layer];
  [v39 setCompositingFilter:kCAFilterPlusL];

  v40 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_allowsGroupBlending;
  v4[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_allowsGroupBlending] = 0;
  v41 = [v4 layer];
  [v41 setAllowsGroupBlending:v4[v40]];

  v42 = [v38 layer];
  [v42 setAllowsGroupBlending:v4[v40]];
}

uint64_t sub_754214(uint64_t a1, uint64_t *a2)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_93F980, &qword_77EDA0);
  }

  sub_32A6C0(*a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_754358(double a1)
{
  v3 = [v1 subviews];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v4 = sub_769460();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 setAlpha:a1];

      ++v6;
      if (v9 == i)
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

  return result;
}

void sub_754494(uint64_t a1)
{
  v2 = qword_964F38;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 32);
    while (v5 < *(v3 + 16))
    {
      ++v5;
      v7 = *v6;
      v6 += 2;
      v8 = v7;
      sub_754358(1.0);

      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    [*(a1 + qword_964F40) setAlpha:1.0];
    v9 = *(a1 + qword_964F30);
    v10[0] = 0x3FF0000000000000;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0x3FF0000000000000;
    v10[4] = 0;
    v10[5] = 0;
    [v9 setTransform:v10];
  }
}

void sub_754588(char *a1)
{
  v1 = *&a1[qword_964F48];
  v3 = a1;

  v1(v2);
}

void sub_7545F0(uint64_t a1, double a2, double a3)
{
  v7 = qword_964F38;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = *(v8 + 16);

  v10 = 0;
  v11 = 32;
  while (1)
  {
    if (v9 == v10)
    {
LABEL_5:

      return;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    ++v10;
    v12 = *(v8 + v11);
    [v12 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v13 = [v12 pointInside:a1 withEvent:?];

    v11 += 16;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_754708(unint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = qword_964F50;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) > a1)
    {

      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  sub_76A770();
LABEL_5:
  swift_endAccess();
  v9 = sub_764D80();
  if (!v9)
  {
LABEL_10:

    return;
  }

  v10 = v9;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_10;
  }

  v12 = Strong;
  v13 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {

    sub_10A2C(v6, &unk_93F980, &qword_77EDA0);
  }

  else
  {
    sub_32A6C0(v10, 1, v12, v6);

    (*(v14 + 8))(v6, v13);
  }
}

void sub_754938(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*(v2 + qword_964F68) == 1)
  {
    v6 = qword_964F70;
    v7 = *(v2 + qword_964F70);
    if (!v7 || [v7 phase] == &dword_0 + 3 || (v8 = *(v2 + v6)) != 0 && objc_msgSend(v8, "phase") == &dword_4)
    {
      v9 = sub_74E4B8(a1);
      if (v9)
      {
        v10 = v9;
        [v9 locationInView:v2];
        sub_7545F0(a2, v11, v12);
        v13 = v2 + qword_964F78;
        *v13 = v14;
        *(v13 + 8) = v15 & 1;
        v16 = *(v2 + v6);
        *(v2 + v6) = v10;

        sub_BE70(0, &qword_963060, UITouch_ptr);
        sub_5A800();
        v17.super.isa = sub_769630().super.isa;
        objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v17.super.isa, a2, v18.receiver, v18.super_class, v2, ObjectType, v20.receiver, v20.super_class, v21.receiver, v21.super_class);
      }

      else
      {
        sub_BE70(0, &qword_963060, UITouch_ptr);
        sub_5A800();
        v17.super.isa = sub_769630().super.isa;
        objc_msgSendSuper2(&v20, "touchesBegan:withEvent:", v17.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class, v2, ObjectType, v21.receiver, v21.super_class);
      }
    }

    else
    {
      sub_BE70(0, &qword_963060, UITouch_ptr);
      sub_5A800();
      v17.super.isa = sub_769630().super.isa;
      objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v17.super.isa, a2, v2, ObjectType, v19.receiver, v19.super_class, v20.receiver, v20.super_class, v21.receiver, v21.super_class);
    }
  }

  else
  {
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v17.super.isa = sub_769630().super.isa;
    objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v17.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class, v20.receiver, v20.super_class, v2, ObjectType);
  }
}

void sub_754B5C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*(v2 + qword_964F68) != 1)
  {
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v11.super.isa = sub_769630().super.isa;
    objc_msgSendSuper2(&v14, "touchesEnded:withEvent:", v11.super.isa, a2, v12.receiver, v12.super_class, v13.receiver, v13.super_class, v2, ObjectType);
    goto LABEL_11;
  }

  v6 = qword_964F70;
  v7 = *(v2 + qword_964F70);
  if (!v7)
  {
LABEL_10:
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v11.super.isa = sub_769630().super.isa;
    objc_msgSendSuper2(&v13, "touchesEnded:withEvent:", v11.super.isa, a2, v12.receiver, v12.super_class, v2, ObjectType, v14.receiver, v14.super_class);
    goto LABEL_11;
  }

  v8 = v7;
  if ((sub_666B98(v8, a1) & 1) == 0)
  {

    goto LABEL_10;
  }

  v9 = *(v2 + v6);
  *(v2 + v6) = 0;

  v10 = v2 + qword_964F78;
  if ((*(v2 + qword_964F78 + 8) & 1) == 0 && (*(v2 + qword_9A0B48) & 1) == 0)
  {
    sub_754708(*v10);
  }

  *v10 = 0;
  *(v10 + 8) = 1;
  sub_BE70(0, &qword_963060, UITouch_ptr);
  sub_5A800();
  v11.super.isa = sub_769630().super.isa;
  objc_msgSendSuper2(&v12, "touchesEnded:withEvent:", v11.super.isa, a2, v2, ObjectType, v13.receiver, v13.super_class, v14.receiver, v14.super_class);
LABEL_11:
}

double sub_754D24(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_BE70(0, &qword_963060, UITouch_ptr);
  sub_5A800();
  v8 = sub_769640();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

void sub_754DD4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*(v2 + qword_964F68) == 1)
  {
    v5 = *(v2 + qword_964F70);
    *(v2 + qword_964F70) = 0;

    v6 = v2 + qword_964F78;
    *v6 = 0;
    *(v6 + 8) = 1;
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v7.super.isa = sub_769630().super.isa;
    objc_msgSendSuper2(&v8, "touchesCancelled:withEvent:", v7.super.isa, a2, v2, ObjectType, v9.receiver, v9.super_class);
  }

  else
  {
    sub_BE70(0, &qword_963060, UITouch_ptr);
    sub_5A800();
    v7.super.isa = sub_769630().super.isa;
    objc_msgSendSuper2(&v9, "touchesCancelled:withEvent:", v7.super.isa, a2, v8.receiver, v8.super_class, v2, ObjectType);
  }
}

unint64_t sub_754F2C()
{
  result = qword_964FD0;
  if (!qword_964FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_964FD0);
  }

  return result;
}

void sub_754F80(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_76A650();
      sub_BE70(0, &qword_963060, UITouch_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_BE70(0, &qword_963060, UITouch_ptr);
    if (sub_76A610() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_76A620();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_76A1B0(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_76A1C0();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_7551A4(void *a1, char a2, void *a3)
{
  v7 = sub_764CF0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_946478, &qword_7B18F0);
  __chkstk_darwin(v11);
  v15 = v53 - v14;
  v58 = a1[2];
  if (!v58)
  {
    goto LABEL_22;
  }

  v53[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v57 = *(v13 + 72);
  v59 = a1;
  sub_1ED18(a1 + v17, v53 - v14, &qword_946478, &qword_7B18F0);
  v54 = v8;
  v60 = *(v8 + 32);
  v61 = v7;
  v60(v10, v15, v7);
  v56 = v16;
  v18 = v15[v16];
  v19 = *a3;
  v20 = sub_663F80(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_4549D0(v25, a2 & 1);
    v20 = sub_663F80(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_76A9B0();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v29 = v18;
  v30 = v20;
  sub_45B18C();
  v20 = v30;
  v18 = v29;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v64 = v28;
    swift_errorRetain();
    sub_BD88(&unk_95F4D0, &unk_77DF30);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v54 + 8))(v10, v61);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = v18;
  v32 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v33 = v32[6];
  v55 = *(v54 + 72);
  v34 = v20;
  v60((v33 + v55 * v20), v10, v61);
  *(v32[7] + v34) = v31;
  v35 = v32[2];
  v24 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (!v24)
  {
    v32[2] = v36;
    v37 = v59;
    if (v58 == 1)
    {
LABEL_22:

      return;
    }

    v38 = v59 + v57 + v17;
    v39 = 1;
    while (v39 < v37[2])
    {
      sub_1ED18(v38, v15, &qword_946478, &qword_7B18F0);
      v60(v10, v15, v61);
      v40 = v15[v56];
      v41 = *a3;
      v42 = sub_663F80(v10);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v24 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v24)
      {
        goto LABEL_23;
      }

      v47 = v43;
      if (v41[3] < v46)
      {
        sub_4549D0(v46, 1);
        v42 = sub_663F80(v10);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v47)
      {
        goto LABEL_9;
      }

      v49 = *a3;
      *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v50 = v42;
      v60((v49[6] + v55 * v42), v10, v61);
      *(v49[7] + v50) = v40;
      v51 = v49[2];
      v24 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v39;
      v49[2] = v52;
      v38 += v57;
      v37 = v59;
      if (v58 == v39)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_76A730(30);
  v65._object = 0x80000000007F4330;
  v65._countAndFlagsBits = 0xD00000000000001BLL;
  sub_769370(v65);
  sub_76A7F0();
  v66._countAndFlagsBits = 39;
  v66._object = 0xE100000000000000;
  sub_769370(v66);
  sub_76A840();
  __break(1u);
}

uint64_t sub_7556F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_755730(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_755768(uint64_t a1)
{
  v2 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7557C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_755828()
{
  v1 = (type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_764650();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_755918()
{
  v1 = *(type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_754214(v2, v3);
}

uint64_t sub_75597C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_946478, &qword_7B18F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7559EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_755A24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_755A5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_755AA4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_755AF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_755B38()
{
  v1 = sub_764650();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_755BCC(void *a1)
{
  v3 = *(sub_764650() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_751D84(a1, v4);
}

uint64_t sub_755C68()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_755CB8(uint64_t a1, void *a2)
{
  v4 = sub_75D850();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v10 = &v23[-v9 - 8];
  if (qword_93C328 != -1)
  {
    swift_once();
  }

  if (qword_93C330 != -1)
  {
    swift_once();
  }

  if (sub_769A00())
  {
    v11 = &xmmword_99AB20;
  }

  else
  {
    v11 = &xmmword_99A9B0;
  }

  sub_BE140(v11, v23);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v12 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v12 = qword_946938;
  }

  bottom = UIEdgeInsetsZero.bottom;
  v14 = sub_BE38(v4, v12);
  (*(v5 + 16))(v7, v14, v4);
  (*(v5 + 32))(v10, v7, v4);
  if ((v26 & 1) == 0 && v24 == 0.0 && v25 == 0.0)
  {
    sub_75D800();
    v16 = v15;
    sub_75D800();
    v24 = v16;
    v25 = v17;
    v26 = 0;
  }

  v18 = _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v23, a2, 0.0);
  v20 = v19;
  (*(v5 + 8))(v10, v4, v18);
  sub_BE0EC(v23);
  return (ceil(bottom + UIEdgeInsetsZero.top + v20) + 8.0 + 8.0) * a1 + 12.0 + 12.0;
}

double sub_755FA8(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a2;
  v28 = a3;
  v4 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v26 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_964F50;
  swift_beginAccess();
  v32 = a1;
  v11 = *(a1 + v10);
  if (v11 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    v13 = qword_964F38;

    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v14 = 0;
    v30 = v11 & 0xFFFFFFFFFFFFFF8;
    v31 = v11 & 0xC000000000000001;
    v29 = (v8 + 48);
    v23 = (v8 + 8);
    v24 = (v8 + 32);
    v15 = 32;
    v25 = v13;
    while (1)
    {
      if (v31)
      {
        v8 = sub_76A770();
      }

      else
      {
        if (v14 >= *(v30 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v11 + 8 * v14 + 32);
      }

      v16 = *(v32 + v13);
      if (v14 >= *(v16 + 16))
      {
        break;
      }

      v17 = *(v16 + v15);
      sub_764E50();
      if ((*v29)(v6, 1, v7) == 1)
      {

        sub_10A2C(v6, &unk_93FF30, &unk_77DB10);
      }

      else
      {
        v18 = v7;
        v19 = v26;
        (*v24)(v26, v6, v18);
        v20 = v17;
        [v20 bounds];
        [v28 convertRect:v20 fromCoordinateSpace:?];
        sub_75F4B0();

        v21 = v19;
        v7 = v18;
        v13 = v25;
        (*v23)(v21, v7);
      }

      ++v14;

      v15 += 16;
      if (i == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return result;
}

void sub_7562C4()
{
  v1 = qword_964F20;
  v2 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  v3 = sub_764650();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = v0 + qword_9A0B40;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = qword_964F28;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v6 = qword_964F30;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  *(v0 + qword_964F38) = _swiftEmptyArrayStorage;
  v7 = qword_964F40;
  *(v0 + v7) = [objc_opt_self() buttonWithType:0];
  v8 = (v0 + qword_964F48);
  *v8 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v8[1] = 0;
  *(v0 + qword_964F50) = _swiftEmptyArrayStorage;
  swift_weakInit();
  *(v0 + qword_964F60) = _swiftEmptyArrayStorage;
  *(v0 + qword_964F68) = 0;
  *(v0 + qword_964F70) = 0;
  *(v0 + qword_9A0B48) = 0;
  v9 = v0 + qword_964F78;
  *v9 = 0;
  *(v9 + 8) = 1;
  sub_76A840();
  __break(1u);
}

uint64_t sub_7564D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_764650();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_756590(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_764650();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_756634(uint64_t a1)
{
  result = sub_764C80();
  if (v2 <= 0x3F)
  {
    result = sub_764650();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

UIContentSizeCategory sub_7566F8(uint64_t a1)
{
  v1 = sub_756934(a1);
  v2 = v1;
  return v1;
}

uint64_t sub_756724(uint64_t a1)
{
  v1 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v2 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_769B60();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (sub_769B50())
  {
    v4 = sub_769B60();

    if (v4)
    {
      return 2;
    }
  }

  else
  {
  }

  v5 = UIContentSizeCategoryAccessibilityMedium;
  v6 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_769B60();
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((sub_769B50() & 1) == 0)
  {

    return 2;
  }

  v7 = sub_769B60();

  if ((v7 & 1) == 0)
  {
    return 2;
  }

  v8 = sub_769240();
  v10 = v9;
  if (v8 == sub_769240() && v10 == v11)
  {

    return 2;
  }

  else
  {
    v12 = sub_76A950();

    if (v12)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

void *sub_7568B4(uint64_t a1)
{
  v1 = sub_7569E4(a1);
  v2 = v1;
  return v1;
}

uint64_t sub_7568E0(uint64_t a1)
{
  if (sub_769B20())
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

UIContentSizeCategory sub_756934(uint64_t a1)
{
  v1 = UIContentSizeCategoryAccessibilityMedium;
  v2 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_769B60();
  if (result)
  {
    if (sub_769B50())
    {
      v4 = sub_769B60();

      if (v4)
      {
        return UIContentSizeCategoryExtraExtraExtraLarge;
      }
    }

    else
    {
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_7569E4(uint64_t a1)
{
  v1 = UIContentSizeCategoryAccessibilityMedium;
  v2 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_769B60();
  if (result)
  {
    if (sub_769B50())
    {
      v4 = sub_769B60();

      if (v4)
      {
        v5 = &UIContentSizeCategoryAccessibilityLarge;
        return *v5;
      }
    }

    else
    {
    }

    v5 = &UIContentSizeCategoryAccessibilityExtraExtraLarge;
    return *v5;
  }

  __break(1u);
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  v4 = _CGPointApplyAffineTransform(point, t);
  y = v4.y;
  x = v4.x;
  result.y = y;
  result.x = x;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}