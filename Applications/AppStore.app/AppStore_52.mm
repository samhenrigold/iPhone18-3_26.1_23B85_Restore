id sub_1005C66A4@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  [*(*a1 + 32) frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a2 superview];
  [a2 convertRect:v13 toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [a2 frame];
  v46.origin.x = v22;
  v46.origin.y = v23;
  v46.size.width = v24;
  v46.size.height = v25;
  v40.origin.x = v15;
  v40.origin.y = v17;
  v40.size.width = v19;
  v40.size.height = v21;
  v41 = CGRectIntersection(v40, v46);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v47.origin.x = CGRectNull.origin.x;
  v47.origin.y = CGRectNull.origin.y;
  v47.size.width = CGRectNull.size.width;
  v47.size.height = CGRectNull.size.height;
  if (CGRectEqualToRect(v41, v47))
  {
    v42.origin.x = v15;
    v42.origin.y = v17;
    v42.size.width = v19;
    v42.size.height = v21;
    if (CGRectGetMaxX(v42) > 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }
  }

  else
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v31 = CGRectGetWidth(v43);
    [a2 bounds];
    v30 = v31 / CGRectGetWidth(v44);
  }

  v45.origin.x = v15;
  v45.origin.y = v17;
  v45.size.width = v19;
  v45.size.height = v21;
  MinX = CGRectGetMinX(v45);
  v33 = a2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection];
  if (MinX <= 0.0)
  {
    if (v33 == 1)
    {

      goto LABEL_14;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v33 == 1)
    {

      goto LABEL_16;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
LABEL_14:

      v35 = 1;
LABEL_17:
      v30 = 1.0 - v30;
      goto LABEL_18;
    }
  }

LABEL_16:
  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v35 = 0;
  if (v37)
  {
    goto LABEL_17;
  }

LABEL_18:
  v38 = a2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection];
  result = [a2 _isAnimatingScroll];
  *a3 = v30;
  *(a3 + 8) = v38;
  *(a3 + 9) = v35;
  *(a3 + 10) = result ^ 1;
  return result;
}

void sub_1005C6B28(void *a1)
{
  v3 = sub_1005C4438(0);
  v4 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isFixingContentOffset;
  if ((*(v1 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isFixingContentOffset) & 1) != 0 || ([a1 contentOffset], (v6 = *(v1 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker)) != 0) && (v7 = v5, objc_msgSend(*(v6 + 32), "frame"), v7 == v8))
  {
    *(v1 + v4) = 0;

    sub_1005C6C5C(0);
  }

  else
  {
    *(v1 + v4) = 1;

    sub_1005C519C(1u);
  }
}

void sub_1005C6C5C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AutoScrollConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker);
  if (!v9)
  {
    return;
  }

  v33 = v6;
  if (a1)
  {
    v10 = *(v9 + 16);

    v11 = v10;
LABEL_9:
    sub_1005C5A24(v11);
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection;
  if (*(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection) && *(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection) == 1)
  {

LABEL_8:
    v11 = *(v9 + 16);
    goto LABEL_9;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_8;
  }

  if (*(v2 + v12))
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v28 = *(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_37;
  }

  v31 = *(v9 + 16);
  if (v31 != v30)
  {
    v32 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      goto LABEL_35;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v32 = 0;
LABEL_35:
  sub_1005C5C54(v32);
LABEL_10:
  v14 = *(v9 + 24);
  v15 = *(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex);
  *(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex) = v14;
  if (v14 != v15 && swift_unknownObjectWeakLoadStrong())
  {
    sub_10046B0E0(v2, v15, v14);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = Strong;
  if (a1)
  {
    if (Strong)
    {
      v18 = type metadata accessor for Feature.iOS();
      v35 = v18;
      v36 = sub_1005C7530();
      v19 = sub_1000056E0(v34);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v18);
      LOBYTE(v18) = isFeatureEnabled(_:)();
      sub_100007000(v34);
      if ((v18 & 1) == 0)
      {
        v20 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollConfiguration;
        swift_beginAccess();
        v21 = v33;
        (*(v5 + 16))(v8, v17 + v20, v33);
        AutoScrollConfiguration.autoScrollRestartDelay.getter();
        v23 = v22;
        (*(v5 + 8))(v8, v21);
        v24 = v23;
LABEL_27:
        sub_100469E30(v24);

        goto LABEL_28;
      }

      goto LABEL_19;
    }
  }

  else if (Strong)
  {
    v25 = type metadata accessor for Feature.iOS();
    v35 = v25;
    v36 = sub_1005C7530();
    v26 = sub_1000056E0(v34);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v25);
    LOBYTE(v25) = isFeatureEnabled(_:)();
    sub_100007000(v34);
    if ((v25 & 1) == 0)
    {
      v24 = 0.0;
      goto LABEL_27;
    }

LABEL_19:

    *(v17 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isUserPagingInteractively) = 0;
LABEL_28:
    swift_unknownObjectRelease();
    return;
  }
}

id sub_1005C70B4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HeroCarouselScrollView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t initializeBufferWithCopyOfBuffer for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1005C7270()
{
  result = qword_10098DB28;
  if (!qword_10098DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098DB28);
  }

  return result;
}

uint64_t sub_1005C72C4(int a1, int a2, double a3, double a4)
{
  if (a3 != a4)
  {
    return 0;
  }

  v6 = a1;
  if (!a1)
  {
    v8 = 0xE800000000000000;
    v7 = 0x647261776B636162;
    v9 = a2;
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0xE800000000000000;
    if (v7 != 0x647261776B636162)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (a1 == 1)
  {
    v7 = 0x64726177726F66;
  }

  else
  {
    v7 = 1701736302;
  }

  if (v6 == 1)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  v9 = a2;
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v9 == 1)
  {
    v10 = 0x64726177726F66;
  }

  else
  {
    v10 = 1701736302;
  }

  if (v9 == 1)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v7 != v10)
  {
LABEL_23:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (v8 != v11)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (BYTE1(a1))
  {
    if (BYTE1(a1) == 1)
    {
      v14 = 0x6165707061736964;
    }

    else
    {
      v14 = 1701736302;
    }

    if (BYTE1(a1) == 1)
    {
      v15 = 0xEC000000676E6972;
    }

    else
    {
      v15 = 0xE400000000000000;
    }
  }

  else
  {
    v14 = 0x6E69726165707061;
    v15 = 0xE900000000000067;
  }

  v16 = 0x6165707061736964;
  v17 = 0xEC000000676E6972;
  if (BYTE1(a2) != 1)
  {
    v16 = 1701736302;
    v17 = 0xE400000000000000;
  }

  if (BYTE1(a2))
  {
    v18 = v16;
  }

  else
  {
    v18 = 0x6E69726165707061;
  }

  if (BYTE1(a2))
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE900000000000067;
  }

  if (v14 == v18 && v15 == v19)
  {

    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  return 0;
}

unint64_t sub_1005C74E4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008B01C8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1005C7530()
{
  result = qword_10097CC80;
  if (!qword_10097CC80)
  {
    type metadata accessor for Feature.iOS();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097CC80);
  }

  return result;
}

unint64_t sub_1005C7590(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008B0230, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_1005C75DC()
{
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pagingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackerLookup;
  *(v0 + v1) = sub_100399324(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isFixingContentOffset) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_meetsMinimumPageRequirement) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_needsPageViewLayout) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection) = 2;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex) = -1;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005C76F8()
{
  [v0 _horizontalVelocity];
  v2 = v1;
  v3 = [v0 panGestureRecognizer];
  [v3 velocityInView:v0];
  v5 = v4;

  v6 = v5 != 0.0 && v2 == 0.0;
  v7 = -v5;
  if (!v6)
  {
    v7 = v2;
  }

  if (v7 != 0.0)
  {
    *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
    sub_1005C4510();
  }

  sub_1005C5F48();
  sub_1005C6164();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = type metadata accessor for Feature.iOS();
    v19 = v10;
    v11 = sub_1005C7530();
    v20 = v11;
    v12 = sub_1000056E0(v18);
    v13 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v14 = *(*(v10 - 8) + 104);
    v14(v12, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v10);
    v15 = isFeatureEnabled(_:)();
    sub_100007000(v18);
    if (v15)
    {
      *(v9 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isUserPagingInteractively) = 1;
    }

    else
    {
      v19 = v10;
      v20 = v11;
      v16 = sub_1000056E0(v18);
      v14(v16, v13, v10);
      v17 = isFeatureEnabled(_:)();
      sub_100007000(v18);
      if ((v17 & 1) == 0)
      {
        sub_10046BD0C(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

void sub_1005C78A8()
{
  if ((*(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset) & 1) == 0)
  {
    [v0 _horizontalVelocity];
    v2 = v1;
    v3 = [v0 panGestureRecognizer];
    [v3 velocityInView:v0];
    v5 = v4;

    v6 = v5 != 0.0 && v2 == 0.0;
    v7 = -v5;
    if (!v6)
    {
      v7 = v2;
    }

    if (v7 != 0.0)
    {
      *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
      sub_1005C4510();
    }

    sub_1005C5F48();

    sub_1005C6164();
  }
}

unint64_t sub_1005C798C()
{
  result = qword_10098DB38;
  if (!qword_10098DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098DB38);
  }

  return result;
}

uint64_t ArcadeSubscribePageLayout.init(metrics:headerView:contentView:detailsView:offerButton:dismissButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  memcpy(a7, __src, 0x108uLL);
  v13 = *(a2 + 16);
  *(a7 + 264) = *a2;
  *(a7 + 280) = v13;
  *(a7 + 296) = *(a2 + 32);
  v14 = *(a3 + 16);
  *(a7 + 304) = *a3;
  *(a7 + 320) = v14;
  *(a7 + 336) = *(a3 + 32);
  sub_100005A38(a4, a7 + 344);
  sub_100005A38(a5, a7 + 384);

  return sub_100005A38(a6, a7 + 424);
}

uint64_t ArcadeSubscribePageLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v53 = a2;
  v54 = type metadata accessor for LayoutRect();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v50 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(v50 - 8);
  __chkstk_darwin(v50);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005FC74(v6 + 264, &v60);
  v16 = *(&v61 + 1);
  if (*(&v61 + 1))
  {
    sub_100005A38(&v60, v55);
    sub_10002A400(v55, v56);
    Measurable.measuredSize(fitting:in:)();
    v18 = v17;
    v20 = v19;
    v66.origin.x = a3;
    v66.origin.y = a4;
    v66.size.width = a5;
    v66.size.height = a6;
    v21 = CGRectGetMidX(v66) + v18 * -0.5;
    v67.origin.x = a3;
    v67.origin.y = a4;
    v67.size.width = a5;
    v67.size.height = a6;
    MinY = CGRectGetMinY(v67);
    sub_10002A400(v55, v56);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v55);
  }

  else
  {
    sub_10005FD2C(&v60);
    v21 = 0.0;
    MinY = 0.0;
    v18 = 0.0;
    v20 = 0;
  }

  sub_10005FC74(v6 + 304, &v60);
  v23 = *(&v61 + 1);
  if (*(&v61 + 1))
  {
    *&v48 = v20;
    sub_100005A38(&v60, v55);
    ObjectType = swift_getObjectType();
    sub_1005C87FC(a1, v6, ObjectType, a5, a6);
    *&v49 = v25;
    sub_10002A400(v6, *(v6 + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v27 = v26;
    (*(v13 + 8))(v15, v50);
    if (v16)
    {
      v68.origin.x = v21;
      v68.origin.y = MinY;
      v68.size.width = v18;
      *&v68.size.height = v48;
      v27 = v27 + CGRectGetMaxY(v68);
    }

    v69.origin.x = a3;
    v69.origin.y = a4;
    v69.size.width = a5;
    v69.size.height = a6;
    MinX = CGRectGetMinX(v69);
    v70.origin.x = a3;
    v70.origin.y = a4;
    v70.size.width = a5;
    v70.size.height = a6;
    Width = CGRectGetWidth(v70);
    sub_10002A400(v55, v56);
    v45 = Width;
    v46 = MinX;
    v30 = v27;
    v31 = *&v49;
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v55);
  }

  else
  {
    sub_10005FD2C(&v60);
    v45 = 0.0;
    v46 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
  }

  v32 = *(v6 + 80);
  v49 = *(v6 + 96);
  v50 = v32;
  sub_10002C0AC(v6 + 112, v62);
  v33 = *(v6 + 152);
  v47 = *(v6 + 168);
  v48 = v33;
  sub_10002C0AC(v6 + 184, &v64);
  sub_10002C0AC(v6 + 224, &v65);
  v60 = v50;
  v61 = v49;
  v63 = v47;
  *&v62[40] = v48;
  sub_10048BE84(&v60, v55);
  sub_10002C0AC(v6 + 344, &v57);
  sub_10002C0AC(v6 + 384, &v58);
  sub_10002C0AC(v6 + 424, &v59);
  swift_getObjectType();
  sub_1005C8AB4(a1, v55, a5, a6);
  v35 = v34;
  if (v23 && (v71.size.width = v45, v71.origin.x = v46, v71.origin.y = v30, v44 = v30, v71.size.height = v31, v36 = v31, v37 = v35 + CGRectGetMaxY(v71), v72.origin.x = a3, v72.origin.y = a4, v72.size.width = a5, v72.size.height = a6, CGRectGetMaxY(v72) < v37))
  {
    v73.size.width = v45;
    v73.origin.x = v46;
    v73.origin.y = v44;
    v73.size.height = v36;
    MaxY = CGRectGetMaxY(v73);
  }

  else
  {
    v74.origin.x = a3;
    v74.origin.y = a4;
    v74.size.width = a5;
    v74.size.height = a6;
    MaxY = CGRectGetMaxY(v74) - v35;
  }

  v75.origin.x = a3;
  v75.origin.y = a4;
  v75.size.width = a5;
  v75.size.height = a6;
  v39 = CGRectGetMinX(v75);
  v76.origin.x = a3;
  v76.origin.y = a4;
  v76.size.width = a5;
  v76.size.height = a6;
  v40 = CGRectGetWidth(v76);
  v41 = v51;
  sub_1005C8258(a1, v39, MaxY, v40, v35);
  LayoutRect.origin.getter();
  LayoutRect.size.getter();
  v77.origin.x = a3;
  v77.origin.y = a4;
  v77.size.width = a5;
  v77.size.height = a6;
  CGRectGetHeight(v77);
  v78.origin.x = a3;
  v78.origin.y = a4;
  v78.size.width = a5;
  v78.size.height = a6;
  CGRectGetMinX(v78);
  v79.origin.x = a3;
  v79.origin.y = a4;
  v79.size.width = a5;
  v79.size.height = a6;
  CGRectGetMinY(v79);
  v80.origin.x = a3;
  v80.origin.y = a4;
  v80.size.width = a5;
  v80.size.height = a6;
  CGRectGetWidth(v80);
  LayoutRect.init(representing:)();
  (*(v52 + 8))(v41, v54);
  sub_10048BEE0(v55);
  return sub_10048BF34(&v60);
}

double ArcadeSubscribePageLayout.contentViewSize(fitting:in:)(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();

  return sub_1005C87FC(a1, v3, ObjectType, a2, a3);
}

void ArcadeSubscribePageLayout.Metrics.detailsMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

void ArcadeSubscribePageLayout.Metrics.offerButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
}

uint64_t ArcadeSubscribePageLayout.Metrics.buttonsSpacing.setter(__int128 *a1)
{
  sub_100007000((v1 + 184));

  return sub_100005A38(a1, v1 + 184);
}

uint64_t ArcadeSubscribePageLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 224));

  return sub_100005A38(a1, v1 + 224);
}

uint64_t sub_1005C8258(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 16);
  v37 = *v5;
  v38 = v15;
  sub_10002A400((v5 + 104), *(v5 + 128));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v36 = v16;
  v17 = *(v12 + 8);
  v17(v14, v11);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetWidth(v39);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetHeight(v40);
  sub_10002A400(v6 + 23, v6[26]);
  Measurable.measuredSize(fitting:in:)();
  v19 = v18;
  v21 = v20;
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  v22 = CGRectGetMidX(v41) + v19 * -0.5;
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  v23 = v37 + CGRectGetMinY(v42);
  sub_10002A400(v6 + 23, v6[26]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v35 = v22;
  v43.origin.x = v22;
  v43.origin.y = v23;
  v43.size.width = v19;
  v37 = v21;
  v43.size.height = v21;
  CGRectGetMaxY(v43);
  sub_10002A400(v6 + 28, v6[31]);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    sub_10002A400((v5 + 224), *(v5 + 248));
    dispatch thunk of LayoutView.frame.setter();
  }

  else
  {
    sub_10002A400((v5 + 32), *(v5 + 56));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v34 = v24;
    v17(v14, v11);
    v44.origin.x = a2;
    v44.origin.y = a3;
    v44.size.width = a4;
    v44.size.height = a5;
    v25 = CGRectGetWidth(v44) - *(v5 + 80) - *(v5 + 96);
    sub_10002A400((v5 + 224), *(v5 + 248));
    v45.origin.x = a2;
    v45.origin.y = a3;
    v45.size.width = a4;
    v45.size.height = a5;
    CGRectGetWidth(v45);
    Measurable.measuredSize(fitting:in:)();
    if (v25 <= v26)
    {
      v25 = v26;
    }

    v46.origin.x = a2;
    v46.origin.y = a3;
    v46.size.width = a4;
    v46.size.height = a5;
    Width = CGRectGetWidth(v46);
    if (Width < v25)
    {
      v25 = Width;
    }

    v47.origin.x = a2;
    v47.origin.y = a3;
    v47.size.width = a4;
    v47.size.height = a5;
    v28 = CGRectGetMidX(v47) + v25 * -0.5;
    v48.origin.x = v35;
    v48.origin.y = v23;
    v48.size.width = v19;
    v48.size.height = v37;
    v29 = v38 + CGRectGetMaxY(v48);
    sub_10002A400((v5 + 224), *(v5 + 248));
    v30 = v34;
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v49.origin.x = v28;
    v49.origin.y = v29;
    v49.size.width = v25;
    v49.size.height = v30;
    CGRectGetMaxY(v49);
  }

  sub_10002A400((v5 + 264), *(v5 + 288));
  v31 = dispatch thunk of LayoutView.isHidden.getter();
  sub_10002A400((v5 + 264), *(v5 + 288));
  if ((v31 & 1) == 0)
  {
    Measurable.measuredSize(fitting:in:)();
    v50.origin.x = a2;
    v50.origin.y = a3;
    v50.size.width = a4;
    v50.size.height = a5;
    CGRectGetMidX(v50);
    sub_10002A400((v5 + 264), *(v5 + 288));
    CGRect.withLayoutDirection(in:relativeTo:)();
  }

  dispatch thunk of LayoutView.frame.setter();
  return LayoutRect.init(representing:)();
}

double sub_1005C87A0(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_1005C8AB4(a1, v3, a2, a3);
}

double sub_1005C87FC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 80);
  v19 = *(a2 + 96);
  v20 = v13;
  sub_10002C0AC(a2 + 112, v29);
  v14 = *(a2 + 152);
  v17 = *(a2 + 168);
  v18 = v14;
  sub_10002C0AC(a2 + 184, &v31);
  sub_10002C0AC(a2 + 224, &v32);
  v28[0] = v20;
  v28[1] = v19;
  v30 = v17;
  *&v29[40] = v18;
  sub_10048BE84(v28, v24);
  sub_10002C0AC(a2 + 344, &v25);
  sub_10002C0AC(a2 + 384, &v26);
  sub_10002C0AC(a2 + 424, &v27);
  sub_10002A400(a2, *(a2 + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v15 = *(v10 + 8);
  v15(v12, v9);
  sub_1005C8AB4(a1, v24, a4, a5);
  sub_10005FC74(a2 + 264, &v21);
  if (v22)
  {
    sub_100005A38(&v21, v23);
    sub_10002A400(v23, v23[3]);
    Measurable.measuredSize(fitting:in:)();
    sub_100007000(v23);
  }

  else
  {
    sub_10005FD2C(&v21);
  }

  sub_10002A400((a2 + 40), *(a2 + 64));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v15(v12, v9);
  sub_10048BEE0(v24);
  sub_10048BF34(v28);
  return a4;
}

double sub_1005C8AB4(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a2 + 23, a2[26]);
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400(a2 + 18, a2[21]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v10 = *(v7 + 8);
  v10(v9, v6);
  sub_10002A400(a2 + 28, a2[31]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a2 + 4, a2[7]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v10(v9, v6);
  }

  sub_10002A400(a2 + 33, a2[36]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a2 + 33, a2[36]);
    Measurable.measuredSize(fitting:in:)();
  }

  sub_10002A400(a2 + 28, a2[31]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a2 + 33, a2[36]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(a2 + 13, a2[16]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v10(v9, v6);
    }
  }

  return a3;
}

uint64_t sub_1005C8DFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
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

uint64_t sub_1005C8E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
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
      *(result + 464) = 1;
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

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005C8F1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005C8F64(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_1005C9004(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005C904C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1005C9110(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for PageGrid();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1005C91E4(a1, v4);
  v7 = v6;
  sub_10046DF7C(v4);
  return v7;
}

void *sub_1005C91E4(uint64_t a1, id a2)
{
  v127 = a2;
  v3 = sub_10002849C(&qword_10098DB40, &qword_1007D7A48);
  v119 = *(v3 - 8);
  __chkstk_darwin(v3);
  v118 = &v91 - v4;
  v113 = type metadata accessor for ReviewSummaryLayout.Metrics();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v114 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for ReviewSummaryLayout();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for DynamicTextAppearance();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v106 = &v91 - v9;
  v104 = type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for TextAppearance();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v97 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v98 = &v91 - v13;
  __chkstk_darwin(v14);
  v99 = &v91 - v15;
  v111 = type metadata accessor for LabelPlaceholder();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v123 = &v91 - v18;
  v122 = type metadata accessor for AttributedString();
  v121 = *(v122 - 1);
  __chkstk_darwin(v122);
  v120 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ComponentLayoutOptions();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v93 = &v91 - v22;
  v126 = type metadata accessor for ProductReview.ReviewSource();
  v23 = *(v126 - 8);
  __chkstk_darwin(v126);
  v25 = (&v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  __chkstk_darwin(v26 - 8);
  v130 = sub_10002849C(&qword_100986DE8, &qword_1007CF1A8);
  v125 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v91 - v27;
  v28 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v28 - 8);
  v30 = &v91 - v29;
  v31 = type metadata accessor for PageGrid();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v131 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductReview();
  sub_1005CA428(&qword_100971EE0, &type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  v34 = a1;
  result = ItemLayoutContext.typedModel<A>(as:)();
  v128 = aBlock[0];
  if (!aBlock[0])
  {
    return result;
  }

  v92 = v3;
  sub_1000A833C(v127, v30);
  v36 = *(v32 + 48);
  v37 = v36(v30, 1, v31);
  v124 = v32;
  if (v37 == 1)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v38 = v31;
    if (v36(v30, 1, v31) != 1)
    {
      sub_10046DF7C(v30);
    }
  }

  else
  {
    (*(v32 + 32))(v131, v30, v31);
    v38 = v31;
  }

  v39 = v34;
  ItemLayoutContext.state.getter();
  v40 = v129;
  StateLens.init(_:)();
  ProductReview.source.getter();
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
    sub_10006C318();
    v44 = v130;
    StateLens<A>.currentValue.getter();
    v45 = sub_10047EC1C(v39, LOBYTE(aBlock[0]));
    type metadata accessor for ProductReviewView();
    v46 = v131;
    PageGrid.componentMeasuringSize(spanning:)();
    v48 = v47;
    v49 = sub_100079F24();
    swift_getObjectType();
    sub_10077ADC4(v43, v45 & 1, v45 & 1, v49, v48);

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
  sub_10006C318();
  StateLens<A>.currentValue.getter();
  v91 = v38;
  if (LOBYTE(aBlock[0]) == 2)
  {
    v51 = v93;
    ItemLayoutContext.componentLayoutOptions.getter();
    v52 = v94;
    static ComponentLayoutOptions.overflowed.getter();
    sub_1005CA428(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
    v53 = v96;
    dispatch thunk of SetAlgebra.isSuperset(of:)();
    v54 = *(v95 + 8);
    v54(v52, v53);
    v54(v51, v53);
  }

  PageGrid.componentMeasuringSize(spanning:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v55 = v137;
  v56 = v120;
  ReviewSummary.attributedBodyWithTitle.getter();
  v57 = sub_1006A1914(v56, 0, v55);
  v121[1](v56, v122);
  v58 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v57];
  v59 = [v57 length];
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 24) = v55;
  *(v60 + 32) = v58;
  *(v60 + 40) = 1;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_10010279C;
  *(v61 + 24) = v60;
  v135 = sub_1001027AC;
  v136 = v61;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  v134 = &unk_1008CA7A0;
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
  TextAppearance.init()();
  v66 = v98;
  TextAppearance.withLineBreakMode(_:)();
  v67 = *(v100 + 8);
  v68 = v101;
  v67(v65, v101);
  TextAppearance.withNumberOfLines(_:)();
  v67(v66, v68);
  LabelPlaceholder.Options.init(rawValue:)();
  v122 = v63;
  LabelPlaceholder.init(_:with:where:)();
  v69 = ReviewSummary.subtitle.getter();
  v71 = v70;
  v72 = ReviewSummary.subtitleArtwork.getter();
  v73 = v102;
  ReviewSummary.subtitleArtworkAlignment.getter();
  v75 = sub_1006A25DC(v74, v69, v71, v72, v73);

  (*(v103 + 8))(v73, v104);
  v121 = v75;
  isEscapingClosureAtFileLocation = v105;
  DynamicTextAppearance.init()();
  v55 = v118;
  if (qword_10096DFC0 != -1)
  {
LABEL_20:
    swift_once();
  }

  v126 = v50;
  v76 = type metadata accessor for FontUseCase();
  sub_1000056A8(v76, qword_1009D0EC0);
  DynamicTextAppearance.withFontUseCase(_:)();
  (*(v107 + 8))(isEscapingClosureAtFileLocation, v108);
  LabelPlaceholder.Options.init(rawValue:)();
  v77 = v109;
  LabelPlaceholder.init(_:with:where:)();
  if (qword_10096ED68 != -1)
  {
    swift_once();
  }

  v78 = v113;
  v79 = sub_1000056A8(v113, qword_1009D3418);
  (*(v112 + 16))(v114, v79, v78);
  v80 = v111;
  v134 = v111;
  v135 = &protocol witness table for LabelPlaceholder;
  v81 = sub_1000056E0(aBlock);
  v82 = v110;
  v83 = *(v110 + 16);
  v84 = v123;
  v83(v81, v123, v80);
  v132[3] = v80;
  v132[4] = &protocol witness table for LabelPlaceholder;
  v85 = sub_1000056E0(v132);
  v83(v85, v77, v80);
  v86 = v115;
  ReviewSummaryLayout.init(metrics:bodyLabel:subtitleLabel:)();
  sub_1005CA428(&qword_10098DB48, &type metadata accessor for ReviewSummaryLayout, &protocol conformance descriptor for ReviewSummaryLayout);
  v87 = v117;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v88 = v127;
  v89 = v92;
  dispatch thunk of Placeable.measure(toFit:with:)();

  (*(v119 + 8))(v55, v89);
  (*(v116 + 8))(v86, v87);
  v90 = *(v82 + 8);
  v90(v77, v80);
  v90(v84, v80);
  (*(v125 + 8))(v129, v130);
  return (*(v124 + 8))(v131, v91);
}

uint64_t sub_1005CA428(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005CA480@<X0>(_BYTE *a1@<X8>)
{
  result = Shelf.isHidden.getter();
  *a1 = result & 1;
  return result;
}

void sub_1005CA4B0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v158 = a2;
  v146 = type metadata accessor for PageGrid();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v131[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = type metadata accessor for FontSource();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v131[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v163 = *(v5 - 8);
  __chkstk_darwin(v5);
  v143 = &v131[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v157 = &v131[-v8];
  v156 = type metadata accessor for ShelfBackground();
  v162 = *(v156 - 8);
  __chkstk_darwin(v156);
  v140 = &v131[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v155 = sub_10002849C(&qword_100981220, &qword_1007C8C38);
  __chkstk_darwin(v155);
  v165 = &v131[-v10];
  v11 = sub_10002849C(&qword_100981228, &unk_1007C8C40);
  __chkstk_darwin(v11 - 8);
  v150 = &v131[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v161 = &v131[-v14];
  __chkstk_darwin(v15);
  v159 = &v131[-v16];
  v151 = type metadata accessor for Shelf.ContentType();
  v160 = *(v151 - 8);
  __chkstk_darwin(v151);
  v141 = &v131[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v142 = &v131[-v19];
  __chkstk_darwin(v20);
  v136 = &v131[-v21];
  v22 = sub_10002849C(&qword_100975F10, &unk_1007CE130);
  __chkstk_darwin(v22);
  v24 = &v131[-v23];
  v25 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
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
  v47 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v47 - 8);
  v152 = &v131[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v49);
  v51 = &v131[-v50];
  __chkstk_darwin(v52);
  v54 = &v131[-v53];
  v55 = ShelfLayoutContext.isFirstShelf.getter();
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

  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v40, &unk_10098FFB0, qword_1007B3890);
  sub_100094E74(v43, v46);
  v59 = v163;
  v60 = *(v163 + 48);
  v134 = v163 + 48;
  v133 = v60;
  v61 = v60(v46, 1, v5);
  v135 = v5;
  if (v61 == 1)
  {
    sub_10002B894(v46, &unk_10098FFB0, qword_1007B3890);
    v62 = 1;
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

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
  sub_100031660(v54, v24, &unk_100992460, &qword_1007B6BF0);
  sub_100031660(v51, &v24[v66], &unk_100992460, &qword_1007B6BF0);
  v67 = *(v63 + 48);
  if (v67(v24, 1, v65) == 1)
  {
    sub_10002B894(v51, &unk_100992460, &qword_1007B6BF0);
    sub_10002B894(v54, &unk_100992460, &qword_1007B6BF0);
    v68 = v67(&v24[v66], 1, v65);
    v58 = v159;
    if (v68 == 1)
    {
      sub_10002B894(v24, &unk_100992460, &qword_1007B6BF0);
      v56 = v135;
      v69 = v161;
      goto LABEL_40;
    }

LABEL_11:
    sub_10002B894(v24, &qword_100975F10, &unk_1007CE130);
    LODWORD(v152) = 1;
    v56 = v135;
    v57 = v163;
    goto LABEL_12;
  }

  v70 = v152;
  sub_100031660(v24, v152, &unk_100992460, &qword_1007B6BF0);
  if (v67(&v24[v66], 1, v65) == 1)
  {
    sub_10002B894(v51, &unk_100992460, &qword_1007B6BF0);
    sub_10002B894(v54, &unk_100992460, &qword_1007B6BF0);
    (*(v160 + 8))(v70, v65);
    v58 = v159;
    goto LABEL_11;
  }

  v122 = v160;
  v123 = v136;
  (*(v160 + 32))(v136, &v24[v66], v65);
  sub_1005CC8CC(&qword_100972720, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v132 = dispatch thunk of static Equatable.== infix(_:_:)();
  v124 = *(v122 + 8);
  v124(v123, v65);
  sub_10002B894(v51, &unk_100992460, &qword_1007B6BF0);
  sub_10002B894(v54, &unk_100992460, &qword_1007B6BF0);
  v124(v152, v65);
  sub_10002B894(v24, &unk_100992460, &qword_1007B6BF0);
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
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v126, &unk_10098FFB0, qword_1007B3890);
  v127 = v139;
  sub_100094E74(v125, v139);
  v128 = v133(v127, 1, v56);
  v57 = v163;
  if (v128 == 1)
  {
    sub_10002B894(v127, &unk_10098FFB0, qword_1007B3890);
    v129 = 1;
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v130 = LOBYTE(v166[0]);
    (*(v57 + 8))(v127, v56);
    v129 = v130 ^ 1;
  }

  LODWORD(v152) = v129;
LABEL_13:
  v71 = v153;
  v72 = v154;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v72, &unk_10098FFB0, qword_1007B3890);
  sub_100094E74(v71, v31);
  if ((*(v57 + 48))(v31, 1, v56) == 1)
  {
    sub_10002B894(v31, &unk_10098FFB0, qword_1007B3890);
    v73 = 1;
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

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
  sub_100031660(v58, v165, &qword_100981228, &unk_1007C8C40);
  v79 = v78;
  sub_100031660(v69, &v78[v77], &qword_100981228, &unk_1007C8C40);
  v80 = v74;
  v81 = v69;
  v82 = *(v80 + 48);
  if (v82(v79, 1, v76) == 1)
  {
    sub_10002B894(v81, &qword_100981228, &unk_1007C8C40);
    v83 = v165;
    sub_10002B894(v58, &qword_100981228, &unk_1007C8C40);
    if (v82(&v83[v77], 1, v76) == 1)
    {
      sub_10002B894(v83, &qword_100981228, &unk_1007C8C40);
      v84 = 1;
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v85 = v150;
  sub_100031660(v79, v150, &qword_100981228, &unk_1007C8C40);
  if (v82((v79 + v77), 1, v76) == 1)
  {
    sub_10002B894(v161, &qword_100981228, &unk_1007C8C40);
    v83 = v165;
    sub_10002B894(v58, &qword_100981228, &unk_1007C8C40);
    (*(v162 + 8))(v85, v76);
LABEL_21:
    sub_10002B894(v83, &qword_100981220, &qword_1007C8C38);
    v84 = 0;
    goto LABEL_23;
  }

  v86 = v85;
  v87 = v162;
  v88 = v79 + v77;
  v89 = v140;
  (*(v162 + 32))(v140, v88, v76);
  sub_1005CC8CC(&qword_100981230, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
  v90 = v79;
  v84 = dispatch thunk of static Equatable.== infix(_:_:)();
  v91 = *(v87 + 8);
  v91(v89, v76);
  sub_10002B894(v161, &qword_100981228, &unk_1007C8C40);
  sub_10002B894(v159, &qword_100981228, &unk_1007C8C40);
  v91(v86, v76);
  sub_10002B894(v90, &qword_100981228, &unk_1007C8C40);
LABEL_23:
  v92 = v157;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v93 = *(v57 + 8);
  v93(v92, v56);
  v94 = v166[0];
  if (v166[0])
  {
  }

  v95 = ShelfLayoutContext.traitCollection.getter();
  v96 = UITraitCollection.isSizeClassRegular.getter();

  if (!(v152 & 1 | (v94 != 0)))
  {
    if (v96)
    {
      v102 = v147;
      *v147 = UIFontTextStyleBody;
      v103 = v148;
      v104 = v149;
      (*(v148 + 104))(v102, enum case for FontSource.textStyle(_:), v149);
      v105 = type metadata accessor for StaticDimension();
      v106 = v158;
      v158[3] = v105;
      v106[4] = &protocol witness table for StaticDimension;
      sub_1000056E0(v106);
      v166[3] = v104;
      v166[4] = &protocol witness table for FontSource;
      v107 = sub_1000056E0(v166);
      (*(v103 + 16))(v107, v102, v104);
      v108 = UIFontTextStyleBody;
      StaticDimension.init(_:scaledLike:)();
      (*(v103 + 8))(v102, v104);
      return;
    }

    goto LABEL_38;
  }

  if (!(v84 & 1 | (v94 != 0)))
  {
    v109 = v144;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.interRowSpace.getter();
    v111 = v110;
    (*(v145 + 8))(v109, v146);
    v112 = v158;
    v158[3] = &type metadata for CGFloat;
    v112[4] = &protocol witness table for CGFloat;
    *v112 = v111;
    return;
  }

  v97 = v143;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v98 = v142;
  ReadOnlyLens.subscript.getter();

  v93(v97, v56);
  v99 = v141;
  v100 = v151;
  (*(v160 + 104))(v141, enum case for Shelf.ContentType.unifiedMessage(_:), v151);
  sub_1005CC8CC(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v166[0] == v166[5] && v166[1] == v166[6])
  {
    v101 = *(v160 + 8);
    v101(v99, v100);
    v101(v98, v100);
  }

  else
  {
    v113 = _stringCompareWithSmolCheck(_:_:expecting:)();
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

  v115 = ShelfLayoutContext.traitCollection.getter();
  v116 = UITraitCollection.isSizeClassCompact.getter();

  if ((v116 & 1) == 0)
  {
    goto LABEL_38;
  }

  if (qword_10096E6D0 != -1)
  {
    swift_once();
  }

  v117 = type metadata accessor for StaticDimension();
  v118 = sub_1000056A8(v117, qword_1009D2490);
  v119 = v158;
  v158[3] = v117;
  v119[4] = &protocol witness table for StaticDimension;
  v120 = sub_1000056E0(v119);
  (*(*(v117 - 8) + 16))(v120, v118, v117);
}

uint64_t sub_1005CB8B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v145 = a2;
  v116 = type metadata accessor for PageGrid();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for FloatingPointRoundingRule();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for FontSource();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = (&v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = type metadata accessor for ShelfBackground();
  v141 = *(v146 - 8);
  __chkstk_darwin(v146);
  v123 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v124 = &v114 - v8;
  __chkstk_darwin(v9);
  v138 = &v114 - v10;
  __chkstk_darwin(v11);
  v131 = &v114 - v12;
  v13 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
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
  v26 = type metadata accessor for Shelf.ContentType();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v142 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v143 = &v114 - v30;
  __chkstk_darwin(v31);
  v33 = &v114 - v32;
  __chkstk_darwin(v34);
  v36 = &v114 - v35;
  v37 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v139 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v129 = &v114 - v41;
  __chkstk_darwin(v42);
  v44 = &v114 - v43;
  v150 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

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
  v49 = sub_1005CC8CC(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v149 = v26;
  v133 = v49;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v151 == v154)
  {
    v122 = 1;
  }

  else
  {
    v122 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v50 = *(v27 + 8);
  v51 = v33;
  v52 = v149;
  v50(v51, v149);
  v132 = v50;
  v50(v36, v52);

  v53 = v128;
  v54 = v130;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v53, &unk_10098FFB0, qword_1007B3890);
  sub_100094E74(v54, v25);
  v55 = *(v38 + 48);
  v56 = v147;
  v130 = (v38 + 48);
  v128 = v55;
  v57 = v55(v25, 1, v147);
  v144 = v27 + 8;
  if (v57 == 1)
  {
    sub_10002B894(v25, &unk_10098FFB0, qword_1007B3890);
    v117 = 0;
    v58 = v146;
    v59 = v141;
    v60 = v131;
    v61 = v148;
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

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
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v64 = v147;
  ReadOnlyLens.subscript.getter();

  v61(v63, v64);
  v65 = *(v59 + 104);
  v66 = v138;
  LODWORD(v141) = enum case for ShelfBackground.none(_:);
  v131 = v65;
  (v65)(v138);
  v129 = sub_1005CC8CC(&qword_100981230, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
  v121 = dispatch thunk of static Equatable.== infix(_:_:)();
  v67 = *(v59 + 8);
  v67(v66, v58);
  v67(v60, v58);
  v146 = v47;
  v68 = v136;
  v69 = v137;
  ShelfLayoutContext.surroundingShelves.getter();
  v70 = v68;
  v71 = v64;
  sub_10002B894(v70, &unk_10098FFB0, qword_1007B3890);
  v72 = v140;
  sub_100094E74(v69, v140);
  if (v128(v72, 1, v64) == 1)
  {
    sub_10002B894(v72, &unk_10098FFB0, qword_1007B3890);
    v73 = 1;
  }

  else
  {
    swift_getKeyPath();
    v74 = v123;
    ReadOnlyLens.subscript.getter();

    v148(v72, v64);
    v75 = v124;
    (*(v59 + 32))(v124, v74, v58);
    (v131)(v60, v141, v58);
    v73 = dispatch thunk of static Equatable.== infix(_:_:)();
    v67(v60, v58);
    v67(v75, v58);
  }

  v76 = v143;
  v77 = ShelfLayoutContext.traitCollection.getter();
  v78 = UITraitCollection.isSizeClassRegular.getter();

  v79 = v139;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v148(v79, v71);
  v80 = v142;
  v134(v142, enum case for Shelf.ContentType.unifiedMessage(_:), v149);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
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
    v90 = type metadata accessor for StaticDimension();
    v91 = v145;
    v145[3] = v90;
    v91[4] = &protocol witness table for StaticDimension;
    sub_1000056E0(v91);
    v152 = v89;
    v153 = &protocol witness table for FontSource;
    v92 = sub_1000056E0(&v151);
    (*(v88 + 16))(v92, v87, v89);
    v93 = UIFontTextStyleBody;
    StaticDimension.init(_:scaledLike:)();
    return (*(v88 + 8))(v87, v89);
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();
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
    v99 = type metadata accessor for StaticDimension();
    v100 = v145;
    v145[3] = v99;
    v100[4] = &protocol witness table for StaticDimension;
    v101 = sub_1000056E0(v100);
    if (v78)
    {
      if (qword_10096E6B8 != -1)
      {
        swift_once();
      }

      v102 = qword_1009D2448;
    }

    else
    {
      if (qword_10096E6B0 != -1)
      {
        swift_once();
      }

      v102 = qword_1009D2430;
    }

    v103 = sub_1000056A8(v99, v102);
    return (*(*(v99 - 8) + 16))(v101, v103, v99);
  }

  if (v121 & v73)
  {
    if (v117)
    {
      if (v78)
      {
        v95 = v114;
        ShelfLayoutContext.contentPageGrid.getter();
        PageGrid.interRowSpace.getter();
        v97 = v96;
        result = (*(v115 + 8))(v95, v116);
        v98 = v145;
        v145[3] = &type metadata for CGFloat;
        v98[4] = &protocol witness table for CGFloat;
        *v98 = v97;
      }

      else
      {
        if (qword_10096E6C0 != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for StaticDimension();
        v111 = sub_1000056A8(v110, qword_1009D2460);
        v112 = v145;
        v145[3] = v110;
        v112[4] = &protocol witness table for StaticDimension;
        v113 = sub_1000056E0(v112);
        return (*(*(v110 - 8) + 16))(v113, v111, v110);
      }

      return result;
    }

    goto LABEL_21;
  }

  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for StaticDimension();
  sub_1000056A8(v104, qword_1009D2448);
  v105 = ShelfLayoutContext.traitCollection.getter();
  v106 = v118;
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  v108 = v107;

  result = (*(v119 + 8))(v106, v120);
  v109 = v145;
  v145[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v108 + v108;
  return result;
}

uint64_t sub_1005CC8CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1005CC914(char a1)
{
  ObjectType = swift_getObjectType();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "setEnabled:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel];
  v10.receiver = v1;
  v10.super_class = ObjectType;
  if (objc_msgSendSuper2(&v10, "isEnabled"))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.4;
  }

  [v4 setAlpha:v5];
  v6 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView];
  v9.receiver = v1;
  v9.super_class = ObjectType;
  if (objc_msgSendSuper2(&v9, "isEnabled"))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.4;
  }

  return [v6 setAlpha:v7];
}

id sub_1005CC9EC()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{0.0, 1.0, 1.0}];
  qword_10098DB50 = result;
  return result;
}

id sub_1005CCA30()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:350.0 damping:38.0 initialVelocity:{0.0, 0.0}];
  qword_10098DB58 = result;
  return result;
}

void sub_1005CCB1C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_selectedBackgroundView];
  v7.receiver = v0;
  v7.super_class = ObjectType;
  [v2 setHidden:{objc_msgSendSuper2(&v7, "isSelected") ^ 1}];
  v3 = *&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel];
  v6.receiver = v0;
  v6.super_class = ObjectType;
  if (objc_msgSendSuper2(&v6, "isSelected"))
  {
    v4 = [objc_opt_self() systemWhiteColor];
  }

  else
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v4 = static UIColor.primaryText.getter();
  }

  v5 = v4;
  [v3 setTextColor:v4];
}

uint64_t sub_1005CCC68@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for Resize.Rule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = &v30 - v6;
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v36 = type metadata accessor for HorizontalStack();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v32 = &v30 - v16;
  HorizontalStack.init(with:)();
  v30 = *(v1 + OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView);
  v17 = v30;
  v48 = type metadata accessor for ArtworkView();
  v49 = sub_1005CE3CC();
  v47[0] = v17;
  *(v12 + 3) = &type metadata for CGFloat;
  *(v12 + 4) = &protocol witness table for CGFloat;
  *v12 = 0x4046000000000000;
  v18 = enum case for Resize.Rule.replaced(_:);
  v19 = *(v3 + 104);
  v19(v12, enum case for Resize.Rule.replaced(_:), v2);
  *(v9 + 3) = &type metadata for CGFloat;
  *(v9 + 4) = &protocol witness table for CGFloat;
  *v9 = 0x4046000000000000;
  v19(v9, v18, v2);
  v20 = enum case for Resize.Rule.unchanged(_:);
  v19(v31, enum case for Resize.Rule.unchanged(_:), v2);
  v19(v34, v20, v2);
  v51 = type metadata accessor for Resize();
  v52 = &protocol witness table for Resize;
  sub_1000056E0(v50);
  v21 = v30;
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v22 = v32;
  HorizontalStack.adding(_:with:)();
  v23 = *(v35 + 8);
  v24 = v36;
  v23(v14, v36);
  sub_100007000(v50);
  v25 = *(v33 + OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel);
  v48 = type metadata accessor for DynamicTypeLabel();
  v49 = &protocol witness table for UILabel;
  v47[0] = v25;
  v51 = v24;
  v52 = &protocol witness table for HorizontalStack;
  sub_1000056E0(v50);
  v26 = v25;
  HorizontalStack.adding(_:with:)();
  v23(v22, v24);
  sub_100007000(v47);
  v49 = &protocol witness table for CGFloat;
  v48 = &type metadata for CGFloat;
  v46 = &protocol witness table for CGFloat;
  v47[0] = 0x4024000000000000;
  v45 = &type metadata for CGFloat;
  v43 = &protocol witness table for CGFloat;
  v44 = 0x4024000000000000;
  v42 = &type metadata for CGFloat;
  v40 = &protocol witness table for CGFloat;
  v41 = 0x4024000000000000;
  v39 = &type metadata for CGFloat;
  v38 = 0x4024000000000000;
  v27 = type metadata accessor for Margins();
  v28 = v37;
  v37[3] = v27;
  v28[4] = &protocol witness table for Margins;
  sub_1000056E0(v28);
  return Margins.init(_:top:leading:bottom:trailing:)();
}

id sub_1005CD1C8()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  sub_1005CCC68(v7);
  sub_10002A400(v7, v7[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  v2 = [v0 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(v7);
  v3 = *&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_shadowView];
  [v1 bounds];
  [v3 setFrame:?];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_backgroundView];
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_selectedBackgroundView];
  [v4 bounds];
  return [v5 setFrame:?];
}

void sub_1005CD4C8(void *a1)
{
  ObjectType = swift_getObjectType();
  if (qword_10096EA60 != -1)
  {
    swift_once();
  }

  v3 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_10098DB50 timingParameters:0.08];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = ObjectType;
  v7[4] = sub_1005CE83C;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100007A08;
  v7[3] = &unk_1008CA860;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 addAnimations:v5];
  _Block_release(v5);
  [v3 startAnimation];
}

double sub_1005CD888(uint64_t a1, double a2, double a3)
{
  sub_1005CCC68(v6);
  sub_10002A400(v6, v6[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v4 = v3;
  sub_100007000(v6);
  return v4;
}

char *sub_1005CD930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = a2;
  v83 = a3;
  v91 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for CornerStyle();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v87 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v7 - 8);
  v86 = &v80 - v8;
  v9 = type metadata accessor for AutomationSemantics();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v80 - v16;
  v18 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel;
  *v17 = UIFontTextStyleSubheadline;
  *(v17 + 1) = UIFontWeightSemibold;
  v19 = enum case for FontUseCase.preferredFontDerivative(_:);
  v20 = type metadata accessor for FontUseCase();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17, v19, v20);
  (*(v21 + 56))(v17, 0, 1, v20);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v22 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v23 = UIFontTextStyleSubheadline;
  *&v4[v18] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v24 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_shadowView;
  type metadata accessor for ShadowView();
  *&v4[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView;
  type metadata accessor for ArtworkView();
  *&v4[v25] = static ArtworkView.iconArtworkView.getter();
  v26 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_backgroundView;
  type metadata accessor for RoundedCornerView();
  *&v4[v26] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  *&v4[v27] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v28 = &v4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_action];
  v29 = v83;
  *v28 = v82;
  v28[1] = v29;
  *&v4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_category] = v91;
  v95.receiver = v4;
  v95.super_class = ObjectType;

  v30 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

  v31 = ArcadeDownloadPackCategory.id.getter();
  v33 = v32;

  v94 = &type metadata for String;
  v93[0] = v31;
  v93[1] = v33;
  memset(v92, 0, sizeof(v92));
  v34 = v81;
  static AutomationSemantics.shelfItem(itemKind:id:parentId:)();
  sub_10003D444(v92);
  sub_10003D444(v93);
  UIView.setAutomationSemantics(_:)();
  (*(v84 + 8))(v34, v85);
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_shadowView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_shadowView]];
  v36 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_backgroundView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_backgroundView]];
  v37 = *&v30[v36];
  v84 = v36;
  v85 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  [v37 addSubview:*&v30[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_selectedBackgroundView]];
  v38 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView]];
  v39 = *&v30[v38];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 clearColor];
  ArtworkView.placeholderColor.setter();

  v83 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel]];
  v43 = qword_10096DAC0;
  v44 = *&v30[v35];
  if (v43 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v45 = type metadata accessor for Shadow();
    v46 = sub_1000056A8(v45, qword_1009CFEA0);
    v47 = *(v45 - 8);
    v48 = v86;
    (*(v47 + 16))(v86, v46, v45);
    (*(v47 + 56))(v48, 0, 1, v45);
    dispatch thunk of ShadowView.shadow.setter();

    v49 = *&v30[v35];
    v50 = enum case for CornerStyle.continuous(_:);
    v51 = v87;
    v52 = v88;
    v86 = *(v88 + 104);
    v53 = v89;
    (v86)(v87, enum case for CornerStyle.continuous(_:), v89);
    v54 = v49;
    dispatch thunk of ShadowView.setCorner(radius:style:)();

    v55 = *(v52 + 8);
    v55(v51, v53);
    v56 = v84;
    v57 = *&v30[v84];
    v88 = sub_100005744(0, &qword_100970180, UIColor_ptr);
    v58 = v57;
    v59 = static UIColor.placeholderBackgroundStandout.getter();
    [v58 setBackgroundColor:v59];

    v60 = *&v30[v56];
    (v86)(v51, v50, v53);
    v61 = v60;
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

    v55(v51, v53);
    v62 = v83;
    v63 = *&v30[v83];
    ArcadeDownloadPackCategory.title.getter();
    v64 = String._bridgeToObjectiveC()();

    [v63 setText:v64];

    v65 = *&v30[v62];
    v66 = static UIColor.primaryText.getter();
    [v65 setTextColor:v66];

    v67 = v85;
    [*&v30[v85] setHidden:1];
    v68 = *&v30[v67];
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1007B15F0;
    v70 = v68;
    *(v69 + 32) = ArcadeDownloadPackCategory.gradientStartColor.getter();
    *(v69 + 40) = ArcadeDownloadPackCategory.gradientEndColor.getter();
    *&v70[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v69;

    sub_1001C0CEC();

    v71 = [v30 subviews];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v72 >> 62)
    {
      break;
    }

    v44 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v44)
    {
      goto LABEL_16;
    }

LABEL_4:
    v35 = 0;
    while (1)
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v73 = *(v72 + 8 * v35 + 32);
      }

      v74 = v73;
      v75 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        break;
      }

      [v73 setUserInteractionEnabled:0];

      ++v35;
      if (v75 == v44)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
  }

  v44 = _CocoaArrayWrapper.endIndex.getter();
  if (v44)
  {
    goto LABEL_4;
  }

LABEL_16:

  v76 = v30;
  [v76 addTarget:v76 action:"didTap" forControlEvents:64];
  [v76 addTarget:v76 action:"didPress:" forControlEvents:1];

  [v76 addTarget:v76 action:"didRelease:" forControlEvents:480];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1007B10D0;
  *(v77 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v77 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v94 = ObjectType;
  v93[0] = v76;
  v78 = v76;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v93);
  return v78;
}

unint64_t sub_1005CE3CC()
{
  result = qword_100989780;
  if (!qword_100989780)
  {
    type metadata accessor for ArtworkView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989780);
  }

  return result;
}

void sub_1005CE424()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel;
  *v8 = UIFontTextStyleSubheadline;
  *(v8 + 1) = UIFontWeightSemibold;
  v10 = enum case for FontUseCase.preferredFontDerivative(_:);
  v11 = type metadata accessor for FontUseCase();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v8, v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v13 = UIFontTextStyleSubheadline;
  *(v1 + v9) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v14 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_shadowView;
  type metadata accessor for ShadowView();
  *(v1 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v15) = static ArtworkView.iconArtworkView.getter();
  v16 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_backgroundView;
  type metadata accessor for RoundedCornerView();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005CE6F4(void *a1)
{
  if (qword_10096EA68 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_10098DB58 timingParameters:0.5];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_10049C8D4;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100007A08;
  v6[3] = &unk_1008CA810;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addAnimations:v4];
  _Block_release(v4);
  [v2 startAnimation];
}

unint64_t sub_1005CE84C(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v123 = a1;
  v3 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v3 - 8);
  v115 = v106 - v4;
  v5 = sub_10002849C(&unk_100982AB0, &qword_1007BECE0);
  __chkstk_darwin(v5 - 8);
  v7 = v106 - v6;
  v8 = type metadata accessor for NavigationTab();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v122 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = v106 - v12;
  __chkstk_darwin(v13);
  v116 = v106 - v14;
  __chkstk_darwin(v15);
  v117 = v106 - v16;
  __chkstk_darwin(v17);
  v119 = v106 - v18;
  v19 = sub_10002849C(&qword_100975528, &unk_1007BECC0);
  __chkstk_darwin(v19 - 8);
  v113 = v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v106 - v22;
  __chkstk_darwin(v24);
  v26 = v106 - v25;
  __chkstk_darwin(v27);
  v29 = v106 - v28;
  __chkstk_darwin(v30);
  v120 = v106 - v31;
  v121 = OBJC_IVAR____TtC8AppStore29TabChangeActionImplementation_rootTabBarController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v33 = [Strong tabBar];

  v34 = [v33 items];
  if (!v34)
  {
    goto LABEL_12;
  }

  v109 = v7;
  sub_100005744(0, &qword_100982AC0, UITabBarItem_ptr);
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((Array.isNotEmpty.getter() & 1) == 0)
  {

LABEL_12:
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    v45 = v122;
    TabChangeAction.navigationTab.getter();
    v46 = NavigationTab.rawValue.getter();
    v48 = v47;
    (*(v9 + 8))(v45, v8);
    sub_1005D01A8();
    swift_allocError();
    *v49 = v46;
    v49[1] = v48;
    return Promise.__allocating_init(error:)();
  }

  v36 = *(v9 + 56);
  v111 = v8;
  v36(v120, 1, 1, v8);
  v37 = swift_unknownObjectUnownedLoadStrong();
  v38 = [v37 selectedIndex];

  v112 = v9;
  v110 = v35;
  v107 = v35 >> 62;
  if (v35 >> 62)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = swift_unknownObjectUnownedLoadStrong();
  v41 = [v40 selectedIndex];

  if (v38 < v39)
  {
    v42 = v112;
    if ((v110 & 0xC000000000000001) == 0)
    {
      v43 = v120;
      if ((v41 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v41 < *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v44 = *(v110 + 8 * v41 + 32);
LABEL_10:
        [v44 tag];

        NavigationTab.init(intValue:)();
        v41 = v111;
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_61;
    }

    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v43 = v120;
    goto LABEL_10;
  }

  NavigationTab.init(intValue:)();
  v29 = v26;
  v41 = v111;
  v42 = v112;
  v43 = v120;
LABEL_15:
  sub_10002B894(v43, &qword_100975528, &unk_1007BECC0);
  sub_1005D055C(v29, v43);
  sub_100127D74(v43, v23);
  v39 = *(v42 + 48);
  if (v39(v23, 1, v41) == 1)
  {

    sub_10002B894(v23, &qword_100975528, &unk_1007BECC0);
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    v51 = v122;
    TabChangeAction.navigationTab.getter();
    v52 = NavigationTab.rawValue.getter();
    v54 = v53;
    (*(v42 + 8))(v51, v41);
    sub_1005D01A8();
    swift_allocError();
    *v55 = v52;
    v55[1] = v54;
    v56 = Promise.__allocating_init(error:)();
    sub_10002B894(v43, &qword_100975528, &unk_1007BECC0);
    return v56;
  }

  v108 = v2;
  v57 = *(v42 + 32);
  v58 = v119;
  v106[1] = v42 + 32;
  v106[0] = v57;
  v57(v119, v23, v41);
  v59 = v116;
  TabChangeAction.navigationTab.getter();
  v60 = (*(v42 + 88))(v59, v41);
  if (v60 == enum case for NavigationTab.infer(_:))
  {
    v61 = v122;
    v116 = *(v42 + 104);
    (v116)(v122, enum case for NavigationTab.search(_:), v41);
    v62 = static NavigationTab.== infix(_:_:)();
    v63 = v41;
    v64 = *(v42 + 8);
    v64(v61, v41);
    if ((v62 & 1) == 0)
    {
      v61 = v122;
      (v116)(v122, enum case for NavigationTab.loading(_:), v41);
      v62 = static NavigationTab.== infix(_:_:)();
      v64(v61, v41);
      if ((v62 & 1) == 0)
      {
        v70 = v114;
        (v116)(v114, enum case for NavigationTab.selected(_:), v41);
        v42 = v117;
        v67 = v118;
        v72 = v106[0];
LABEL_34:
        v72(v42, v70, v41);
        v66 = v112;
        goto LABEL_35;
      }
    }

    v42 = v117;
    if (v107)
    {
      v62 = v110;
      result = _CocoaArrayWrapper.endIndex.getter();
      v65 = v62;
    }

    else
    {
      v65 = v110;
      result = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v111;
    v2 = v113;
    if (result)
    {
      if ((v65 & 0xC000000000000001) == 0)
      {
        if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_64;
        }

        v68 = *(v65 + 32);
        goto LABEL_31;
      }

LABEL_62:
      v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_31:
      v69 = v68;
      [v68 tag];
      NavigationTab.init(intValue:)();

      result = (v39)(v2, 1, v41);
      if (result == 1)
      {
LABEL_67:
        __break(1u);
        return result;
      }

      v70 = v114;
      v71 = v2;
      v72 = v106[0];
      (v106[0])(v114, v71, v41);
      v67 = v118;
      goto LABEL_34;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v60 == enum case for NavigationTab.selected(_:))
  {
    v66 = v112;
    v42 = v117;
    (*(v112 + 16))(v117, v58, v41);
  }

  else
  {
    v42 = v117;
    TabChangeAction.navigationTab.getter();
    v66 = v112;
    (*(v112 + 8))(v59, v41);
  }

  v67 = v118;
LABEL_35:
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  NavigationTab.pageContext.getter();
  dispatch thunk of MetricsActivity.changeContext(_:)();

  v73 = [objc_opt_self() standardUserDefaults];
  v63 = *(v66 + 16);
  v63(v122, v42, v41);
  v74 = v109;
  StoreTab.Identifier.init(navigationTab:)();
  sub_100736DBC(v74);

  type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  BaseObjectGraph.optional<A>(_:)();
  v75 = aBlock[0];
  if (aBlock[0])
  {
    dispatch thunk of AppStoreOnDeviceRecommendationsManager.loadInferences(for:)();
  }

  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v116 = Promise.__allocating_init()();
  v76 = swift_unknownObjectUnownedLoadStrong();
  v61 = [v76 presentedViewController];

  if (!v61)
  {
    goto LABEL_40;
  }

  if ([v61 isBeingDismissed])
  {

LABEL_40:
    v77 = TabChangeAction.popToRoot.getter();
    v78 = TabChangeAction.actions.getter();
    sub_1005CF7F4(v42, v110, v77 & 1, v78, v67);

    v79 = v116;
    Promise.pipe(to:)();

    v80 = v111;
    v81 = *(v112 + 8);
    v81(v42, v111);
    v81(v119, v80);
    sub_10002B894(v120, &qword_100975528, &unk_1007BECC0);
    return v79;
  }

  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v64 = aBlock[0];
  type metadata accessor for ArticleContainerViewController();
  v62 = swift_dynamicCastClass();
  result = TabChangeAction.actions.getter();
  if (!(result >> 62))
  {
    v82 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_43;
  }

LABEL_64:
  v105 = result;
  v82 = _CocoaArrayWrapper.endIndex.getter();
  result = v105;
LABEL_43:
  v83 = v111;
  v84 = v115;
  if (!v82)
  {

    goto LABEL_51;
  }

  v114 = v62;
  if ((result & 0xC000000000000001) != 0)
  {
    v85 = v64;
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_47;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_67;
  }

  v85 = v64;

LABEL_47:

  type metadata accessor for FlowAction();
  if (swift_dynamicCastClass())
  {
    FlowAction.pageUrl.getter();

    v83 = v111;
    v64 = v85;
    v62 = v114;
    goto LABEL_52;
  }

  v83 = v111;
  v64 = v85;
  v62 = v114;
LABEL_51:
  v86 = type metadata accessor for URL();
  (*(*(v86 - 8) + 56))(v84, 1, 1, v86);
LABEL_52:
  v87 = static ResilientDeepLinkController.preventDismissingArticlesForFlowUrl(_:bag:)();
  if (v62 && (v87 & 1) != 0)
  {
    v88 = TabChangeAction.popToRoot.getter();
    v89 = TabChangeAction.actions.getter();
    sub_1005CF7F4(v42, v110, v88 & 1, v89, v118);

    Promise.pipe(to:)();

    v90 = v42;
    v91 = v112;
  }

  else
  {
    v114 = swift_unknownObjectUnownedLoadStrong();
    v92 = v122;
    v63(v122, v42, v83);
    v91 = v112;
    v93 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v121 = v64;
    v94 = (v10 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
    v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
    v97 = swift_allocObject();
    v98 = v83;
    v99 = v97;
    v100 = v108;
    *(v97 + 16) = v108;
    (v106[0])(v97 + v93, v92, v98);
    *(v99 + v94) = v110;
    *(v99 + v95) = v123;
    *(v99 + v96) = v118;
    *(v99 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8)) = v116;
    aBlock[4] = sub_1005D05CC;
    aBlock[5] = v99;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CA8B0;
    v101 = _Block_copy(aBlock);
    v102 = v100;
    v83 = v111;

    v90 = v117;

    v103 = v114;
    [v114 dismissViewControllerAnimated:1 completion:v101];
    _Block_release(v101);
  }

  sub_10002B894(v115, &qword_100982460, &unk_1007B5C90);
  v104 = *(v91 + 8);
  v104(v90, v83);
  v104(v119, v83);
  sub_10002B894(v120, &qword_100975528, &unk_1007BECC0);
  return v116;
}

double sub_1005CF754(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = TabChangeAction.popToRoot.getter();
  v10 = TabChangeAction.actions.getter();
  sub_1005CF7F4(a2, a3, v9 & 1, v10, a5);

  Promise.pipe(to:)();

  return result;
}

uint64_t sub_1005CF7F4(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v54 = a3;
  v10 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v10 - 8);
  v55 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10002849C(&qword_10098DC00, &qword_1007B76A0);
  __chkstk_darwin(v72);
  v13 = v53 - v12;
  v14 = sub_10002849C(&qword_100975528, &unk_1007BECC0);
  __chkstk_darwin(v14 - 8);
  v65 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = v53 - v17;
  __chkstk_darwin(v18);
  v66 = v53 - v19;
  v20 = type metadata accessor for NavigationTab();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, enum case for NavigationTab.loading(_:), v20, v22);
  v73 = a1;
  v25 = static NavigationTab.== infix(_:_:)();
  v26 = *(v21 + 8);
  v61 = v24;
  v63 = v26;
  v64 = v21 + 8;
  v26(v24, v20);
  v53[1] = OBJC_IVAR____TtC8AppStore29TabChangeActionImplementation_rootTabBarController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v28 = Strong;
  v56 = a4;
  v57 = a5;
  v60 = v5;
  if (v25)
  {
    v29 = *(v5 + OBJC_IVAR____TtC8AppStore29TabChangeActionImplementation_loadingNavigationController);
    [Strong setTransientViewController:v29 animated:0];

    sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    v30.super.isa = Array._bridgeToObjectiveC()().super.isa;
    [v29 setViewControllers:v30.super.isa];
    goto LABEL_3;
  }

  [Strong setTransientViewController:0 animated:0];

  v74 = a2;
  if (a2 >> 62)
  {
LABEL_26:
    v31 = _CocoaArrayWrapper.endIndex.getter();
    v32 = v66;
    if (!v31)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v31 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v66;
    if (!v31)
    {
      goto LABEL_27;
    }
  }

  v33 = 0;
  v70 = v74 & 0xFFFFFFFFFFFFFF8;
  v71 = v74 & 0xC000000000000001;
  v68 = (v21 + 56);
  v69 = (v21 + 16);
  v34 = (v21 + 48);
  v58 = (v21 + 48);
  v59 = (v21 + 32);
  v67 = v31;
  while (v71)
  {
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_20;
    }

LABEL_13:
    v75 = v36;
    [v36 tag];
    NavigationTab.init(intValue:)();
    v38 = v76;
    (*v69)(v76, v73, v20);
    (*v68)(v38, 0, 1, v20);
    v21 = *(v72 + 48);
    sub_100127D74(v32, v13);
    sub_100127D74(v38, &v13[v21]);
    v39 = *v34;
    if ((*v34)(v13, 1, v20) == 1)
    {
      sub_10002B894(v76, &qword_100975528, &unk_1007BECC0);
      sub_10002B894(v32, &qword_100975528, &unk_1007BECC0);
      v35 = v39(&v13[v21], 1, v20);
      v24 = v75;
      if (v35 == 1)
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    v40 = v65;
    sub_100127D74(v13, v65);
    if (v39(&v13[v21], 1, v20) == 1)
    {
      sub_10002B894(v76, &qword_100975528, &unk_1007BECC0);
      v21 = v66;
      sub_10002B894(v66, &qword_100975528, &unk_1007BECC0);
      v41 = v40;
      v32 = v21;
      v63(v41, v20);
      v24 = v75;
LABEL_8:
      sub_10002B894(v13, &qword_10098DC00, &qword_1007B76A0);
      goto LABEL_9;
    }

    v42 = v61;
    (*v59)(v61, &v13[v21], v20);
    sub_1005D04C0(&unk_10098DC10, &type metadata accessor for NavigationTab, &protocol conformance descriptor for NavigationTab);
    v62 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21 = v63;
    v63(v42, v20);
    sub_10002B894(v76, &qword_100975528, &unk_1007BECC0);
    v43 = v66;
    sub_10002B894(v66, &qword_100975528, &unk_1007BECC0);
    v44 = v40;
    v32 = v43;
    (v21)(v44, v20);
    v34 = v58;
    sub_10002B894(v13, &qword_100975528, &unk_1007BECC0);
    v24 = v75;
    if (v62)
    {
      goto LABEL_22;
    }

LABEL_9:

    ++v33;
    if (v37 == v67)
    {
      goto LABEL_27;
    }
  }

  if (v33 >= *(v70 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v36 = *(v74 + 8 * v33 + 32);
  v37 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  sub_10002B894(v13, &qword_100975528, &unk_1007BECC0);
LABEL_22:
  v45 = swift_unknownObjectUnownedLoadStrong();
  [v45 setSelectedIndex:v33];

  v30.super.isa = swift_unknownObjectUnownedLoadStrong();
  type metadata accessor for StoreTabBarController();
  if (swift_dynamicCastClass())
  {
    sub_1001F5D40(v33);

    v30.super.isa = v24;
  }

  else
  {
  }

LABEL_3:

LABEL_27:
  v46 = swift_unknownObjectUnownedLoadStrong();
  v47 = [v46 selectedViewController];

  if (v47)
  {
    if (v54)
    {
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      if (v48)
      {
      }
    }

    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for CompoundAction();
    swift_allocObject();
    v49 = CompoundAction.init(title:actions:presentationStyle:actionMetrics:)();
    v50 = sub_1005D022C(v49, 1, v57, sub_1005FA21C);

    return v50;
  }

  else
  {
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    sub_1005D01A8();
    swift_allocError();
    *v52 = 0;
    v52[1] = 0;
    return Promise.__allocating_init(error:)();
  }
}

id sub_1005D0094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabChangeActionImplementation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1005D01A8()
{
  result = qword_10098DC08;
  if (!qword_10098DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098DC08);
  }

  return result;
}

uint64_t sub_1005D022C(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t, char *))
{
  v8 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10002B894(v10, &unk_100972A00, &unk_1007B3130);
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    sub_1005D0508();
    swift_allocError();
    *v15 = 1;
    return Promise.__allocating_init(error:)();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = a4(a1, a2 & 1, a3, v14);
    (*(v12 + 8))(v14, v11);
    return v17;
  }
}

uint64_t sub_1005D04C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005D0508()
{
  result = qword_10098DC20;
  if (!qword_10098DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098DC20);
  }

  return result;
}

uint64_t sub_1005D055C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975528, &unk_1007BECC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1005D05CC()
{
  v1 = *(type metadata accessor for NavigationTab() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005CF754(v6, v0 + v2, v7, v8, v9, v10);
}

uint64_t sub_1005D0680(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005D06D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1005D0724(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1005D073C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

double sub_1005D0788(uint64_t a1, int a2, int a3, void *a4, double a5)
{
  v162 = a4;
  v157 = a3;
  v170 = a2;
  v6 = sub_10002849C(&qword_1009964B0, qword_1007DD430);
  v166 = *(v6 - 8);
  v167 = v6;
  __chkstk_darwin(v6);
  v165 = v149 - v7;
  v8 = type metadata accessor for ProductReviewCustomLayout.Metrics();
  v158 = *(v8 - 8);
  v159 = v8;
  __chkstk_darwin(v8);
  v160 = v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ProductReviewCustomLayout();
  v11 = *(v10 - 8);
  v163 = v10;
  v164 = v11;
  __chkstk_darwin(v10);
  v161 = v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LabelPlaceholder();
  v168 = *(v13 - 8);
  v169 = v13;
  __chkstk_darwin(v13);
  v176 = v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v185 = v149 - v16;
  __chkstk_darwin(v17);
  v186 = v149 - v18;
  __chkstk_darwin(v19);
  v187 = v149 - v20;
  __chkstk_darwin(v21);
  v188 = v149 - v22;
  __chkstk_darwin(v23);
  v184 = v149 - v24;
  __chkstk_darwin(v25);
  v189 = v149 - v26;
  __chkstk_darwin(v27);
  v178 = v149 - v28;
  v29 = type metadata accessor for DynamicTextAppearance();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v155 = v149 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v156 = v149 - v33;
  __chkstk_darwin(v34);
  v36 = v149 - v35;
  __chkstk_darwin(v37);
  v183 = v149 - v38;
  __chkstk_darwin(v39);
  v152 = v149 - v40;
  __chkstk_darwin(v41);
  v153 = v149 - v42;
  __chkstk_darwin(v43);
  v175 = v149 - v44;
  __chkstk_darwin(v45);
  v150 = v149 - v46;
  __chkstk_darwin(v47);
  v151 = v149 - v48;
  __chkstk_darwin(v49);
  v180 = v149 - v50;
  __chkstk_darwin(v51);
  v181 = v149 - v52;
  __chkstk_darwin(v53);
  v182 = v149 - v54;
  __chkstk_darwin(v55);
  v190 = v149 - v56;
  __chkstk_darwin(v57);
  v59 = v149 - v58;
  __chkstk_darwin(v60);
  v174 = v149 - v61;
  __chkstk_darwin(v62);
  v64 = v149 - v63;
  __chkstk_darwin(v65);
  v67 = v149 - v66;
  __chkstk_darwin(v68);
  v70 = v149 - v69;
  __chkstk_darwin(v71);
  v179 = v149 - v72;
  v73 = Review.response.getter();
  if (v73)
  {
  }

  v171 = v73;
  v177 = v59;
  v192 = a1;
  v173 = v36;
  DynamicTextAppearance.init()();
  if (qword_10096DF38 != -1)
  {
    swift_once();
  }

  v193 = type metadata accessor for FontUseCase();
  sub_1000056A8(v193, qword_1009D0D28);
  DynamicTextAppearance.withFontUseCase(_:)();
  v74 = v30;
  v77 = *(v30 + 8);
  v75 = v30 + 8;
  v76 = v77;
  v77(v64, v29);
  v78 = v29;
  v79 = v170;
  v149[3] = ~v170;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v77(v67, v78);
  v80 = (v79 & 1) == 0;
  v81 = v78;
  if (v80)
  {
    v82 = 4;
  }

  else
  {
    v82 = 0;
  }

  v149[2] = v82;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v195 = v76;
  v196 = v75;
  v76(v70, v78);
  v83 = Review.title.getter();
  if (v83)
  {
    v84 = v83;
    LanguageAwareString.string.getter();
  }

  v85 = *(v74 + 16);
  v191 = v74 + 16;
  v194 = v85;
  v85(v64, v179, v78);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v154 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v172 = LayoutViewPlaceholder.init(measureWith:)();
  v86 = v190;
  DynamicTextAppearance.init()();
  if (qword_10096DF50 != -1)
  {
    swift_once();
  }

  v87 = sub_1000056A8(v193, qword_1009D0D70);
  v88 = v177;
  v149[1] = v87;
  DynamicTextAppearance.withFontUseCase(_:)();
  v89 = v195;
  v195(v86, v81);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v89(v88, v81);
  v90 = v174;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v89(v64, v81);
  Review.dateText.getter();
  v91 = v90;
  v92 = v194;
  v194(v64, v91, v81);
  LabelPlaceholder.Options.init(rawValue:)();
  v93 = v190;
  LabelPlaceholder.init(_:with:where:)();
  DynamicTextAppearance.init()();
  if (qword_10096DF58 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v193, qword_1009D0D88);
  DynamicTextAppearance.withFontUseCase(_:)();
  v89(v93, v81);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v89(v88, v81);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v89(v64, v81);
  v94 = Review.reviewerName.getter();
  if (v94)
  {
    v95 = v94;
    LanguageAwareString.string.getter();

    v92 = v194;
  }

  v92(v64, v182, v81);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v96 = v190;
  DynamicTextAppearance.init()();
  if (qword_10096DF60 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v193, qword_1009D0DA0);
  v97 = v177;
  DynamicTextAppearance.withFontUseCase(_:)();
  v98 = v195;
  v195(v96, v81);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v98(v97, v81);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v98(v64, v81);
  v99 = Review.dateAuthorText.getter();
  if (v99)
  {
    v100 = v99;
    LanguageAwareString.string.getter();

    v194(v64, v181, v81);
  }

  else
  {
    v92(v64, v181, v81);
  }

  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  DynamicTextAppearance.init()();
  if (qword_10096DF48 != -1)
  {
    swift_once();
  }

  v101 = sub_1000056A8(v193, qword_1009D0D58);
  v102 = v150;
  v149[0] = v101;
  DynamicTextAppearance.withFontUseCase(_:)();
  v103 = v195;
  v195(v64, v81);
  v104 = v151;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v103(v102, v81);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v103(v104, v81);
  v105 = Review.contents.getter();
  if (v105)
  {
    v106 = v105;
    LanguageAwareString.string.getter();
  }

  v107 = v194;
  v194(v64, v180, v81);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  DynamicTextAppearance.init()();
  v108 = v193;
  if (qword_10096DF40 != -1)
  {
    v148 = v193;
    swift_once();
    v108 = v148;
  }

  sub_1000056A8(v108, qword_1009D0D40);
  v109 = v152;
  DynamicTextAppearance.withFontUseCase(_:)();
  v110 = v195;
  v195(v64, v81);
  v111 = v153;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v110(v109, v81);
  v112 = v175;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v110(v111, v81);
  v113._object = 0x800000010081C190;
  v113._countAndFlagsBits = 0xD000000000000012;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  localizedString(_:comment:)(v113, v114);
  v107(v64, v112, v81);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v115 = v190;
  DynamicTextAppearance.init()();
  v116 = v177;
  DynamicTextAppearance.withFontUseCase(_:)();
  v117 = v110;
  v110(v115, v81);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v110(v116, v81);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v110(v64, v81);
  v118 = Review.response.getter();
  v119 = v176;
  if (v118)
  {
    Response.dateText.getter();

    v117 = v195;
  }

  v194(v64, v183, v81);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  DynamicTextAppearance.init()();
  v120 = v155;
  DynamicTextAppearance.withFontUseCase(_:)();
  v117(v64, v81);
  v121 = v156;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v117(v120, v81);
  v122 = v173;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v117(v121, v81);
  if (Review.response.getter())
  {
    v123 = Response.contents.getter();

    if (v123)
    {
      LanguageAwareString.string.getter();
    }
  }

  v194(v64, v122, v81);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v124 = v119;
  if (qword_10096ED78 != -1)
  {
    swift_once();
  }

  v125 = v159;
  v126 = sub_1000056A8(v159, qword_1009D3440);
  (*(v158 + 16))(v160, v126, v125);
  v127 = v169;
  v205[3] = v169;
  v205[4] = &protocol witness table for LabelPlaceholder;
  v128 = sub_1000056E0(v205);
  v129 = v168;
  v130 = *(v168 + 16);
  v130(v128, v178, v127);
  v204[3] = v127;
  v204[4] = &protocol witness table for LabelPlaceholder;
  v131 = sub_1000056E0(v204);
  v130(v131, v189, v127);
  v203[3] = v127;
  v203[4] = &protocol witness table for LabelPlaceholder;
  v132 = sub_1000056E0(v203);
  v130(v132, v184, v127);
  v202[3] = v127;
  v202[4] = &protocol witness table for LabelPlaceholder;
  v133 = sub_1000056E0(v202);
  v130(v133, v188, v127);
  v201[3] = v127;
  v201[4] = &protocol witness table for LabelPlaceholder;
  v134 = sub_1000056E0(v201);
  v130(v134, v187, v127);
  v200[3] = v127;
  v200[4] = &protocol witness table for LabelPlaceholder;
  v135 = sub_1000056E0(v200);
  v130(v135, v186, v127);
  v199[3] = v127;
  v199[4] = &protocol witness table for LabelPlaceholder;
  v136 = sub_1000056E0(v199);
  v130(v136, v185, v127);
  v198[3] = v127;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v137 = sub_1000056E0(v198);
  v130(v137, v124, v127);
  v197 = v172;
  Measurable.placeable.getter();
  v138 = v161;
  ProductReviewCustomLayout.init(metrics:titleLabel:dateLabel:authorLabel:dateAuthorLabel:bodyLabel:responseTitleLabel:responseDateLabel:responseBodyLabel:hasResponse:ratingsView:)();
  v139 = [v162 traitCollection];
  sub_1005D2298(&qword_100991A00, &type metadata accessor for ProductReviewCustomLayout, &protocol conformance descriptor for ProductReviewCustomLayout);
  v140 = v165;
  v141 = v163;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v142 = v167;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v144 = v143;

  (*(v166 + 8))(v140, v142);
  (*(v164 + 8))(v138, v141);
  v145 = *(v129 + 8);
  v145(v176, v127);
  v146 = v195;
  v195(v173, v81);
  v145(v185, v127);
  v146(v183, v81);
  v145(v186, v127);
  v146(v175, v81);
  v145(v187, v127);
  v146(v180, v81);
  v145(v188, v127);
  v146(v181, v81);
  v145(v184, v127);
  v146(v182, v81);
  v145(v189, v127);
  v146(v174, v81);
  v145(v178, v127);
  v146(v179, v81);
  return v144;
}

double sub_1005D1BA4()
{
  v0 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v49 = *(v0 - 8);
  __chkstk_darwin(v0);
  v48 = &v38 - v1;
  v47 = type metadata accessor for ComponentLayoutOptions();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v43 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v45 = &v38 - v4;
  v52 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v44 = *(v52 - 8);
  __chkstk_darwin(v52);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v38 - v7;
  v8 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v41 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v50 = type metadata accessor for PageGrid();
  v11 = *(v50 - 8);
  __chkstk_darwin(v50);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Review();
  v15 = sub_1005D2298(&qword_100983808, &type metadata accessor for Review, &protocol conformance descriptor for Review);
  ItemLayoutContext.typedModel<A>(as:)();
  v16 = v55[0];
  if (!v55[0])
  {
    return 0.0;
  }

  swift_getKeyPath();
  v40 = v0;
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v18 = v17;
  v39 = *(v11 + 8);
  v39(v13, v50);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v19 = v55[0];
  v20 = type metadata accessor for SnapshotPageTraitEnvironment();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v22 = v18;
  *(v22 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v19;
  v56.receiver = v21;
  v56.super_class = v20;
  v23 = objc_msgSendSuper2(&v56, "init");
  v55[3] = v14;
  v55[4] = v15;
  v55[0] = v16;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v41 + 8))(v10, v8);

  v24 = v51;
  ItemLayoutContext.state.getter();
  v25 = v45;
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v27 = v26;
  v39(v13, v50);
  sub_10002C0AC(v55, v53);
  v28 = v23;
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  swift_dynamicCast();
  v29 = v44;
  (*(v44 + 16))(v42, v24, v52);
  type metadata accessor for NilState();
  v30 = v48;
  StateLens.init(_:)();
  v31 = v54;
  v32 = v43;
  static ComponentLayoutOptions.overflowed.getter();
  sub_1005D2298(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v33 = v47;
  LOBYTE(v20) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v34 = *(v46 + 8);
  v34(v32, v33);
  sub_1005D0788(v31, v20 & 1, v20 & 1, v28, v27);
  v36 = v35;

  (*(v49 + 8))(v30, v40);
  v34(v25, v33);
  (*(v29 + 8))(v51, v52);

  sub_100007000(v55);
  return v36;
}

uint64_t sub_1005D2298(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005D22E4()
{
  v0 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  *&v79 = &v77 - v2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007BB060;
  v80 = type metadata accessor for BoolUserDefaultsDebugSetting();
  v8 = swift_allocObject();
  *(v8 + 56) = 0xD00000000000001ALL;
  *(v8 + 64) = 0x800000010081C1D0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0xD000000000000019;
  *(v8 + 88) = 0x800000010081C1F0;
  *(v8 + 96) = 0;
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v12 = *(v4 + 8);
  v85 = v3;
  v81 = v12;
  v82 = v4 + 8;
  v12(v6, v3);
  v86 = v9;
  v87 = v11;
  AnyHashable.init<A>(_:)();
  v84 = v7;
  *(v7 + 32) = v8;
  if (qword_10096E988 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v0, qword_1009D2A68);
  v14 = type metadata accessor for LocalPreferences();
  v78 = static LocalPreferences.AppStoreKit.getter();
  v15 = ASKBuildTypeGetCurrent();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {
    goto LABEL_5;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_7;
  }

  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;
  if (v67 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v69 == v70)
  {
LABEL_5:

LABEL_8:
    v21 = 1;
    goto LABEL_9;
  }

  v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v71)
  {
LABEL_7:

    goto LABEL_8;
  }

  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;
  if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v74 == v75)
  {
  }

  else
  {
    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = 0;
    if ((v76 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  static LocalPreferences.currentApplication.getter();
  Preferences.subscript.getter();

  v21 = v86;
LABEL_9:
  v22 = v13;
  v23 = *(v1 + 16);
  v24 = v79;
  v23(v79, v22, v0);
  type metadata accessor for BoolPreferencesDebugSetting(0);
  v25 = swift_allocObject();
  *(v25 + 56) = 0xD00000000000001BLL;
  *(v25 + 64) = 0x800000010081C210;
  *(v25 + 72) = 0;
  *(v25 + 80) = 0;
  *(v25 + 88) = v21 & 1;
  v23(v25 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v24, v0);
  v26 = (v25 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v26 = v78;
  v26[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v27 = UUID.uuidString.getter();
  v29 = v28;
  v77 = v14;
  v30 = v81;
  v81(v6, v85);
  v86 = v27;
  v87 = v29;
  AnyHashable.init<A>(_:)();
  (*(v1 + 8))(v24, v0);

  v31 = v84;
  *(v84 + 40) = v25;
  v32 = v31;
  v33 = swift_allocObject();
  *(v33 + 56) = 0xD000000000000025;
  *(v33 + 64) = 0x800000010081C230;
  *(v33 + 72) = 0;
  *(v33 + 80) = 0xD000000000000021;
  *(v33 + 88) = 0x800000010081C260;
  *(v33 + 96) = 0;
  UUID.init()();
  v34 = UUID.uuidString.getter();
  v36 = v35;
  v37 = v85;
  v30(v6, v85);
  v86 = v34;
  v87 = v36;
  AnyHashable.init<A>(_:)();
  *(v32 + 48) = v33;
  v38 = swift_allocObject();
  *(v38 + 56) = 0x646F4D206F6D6544;
  *(v38 + 64) = 0xE900000000000065;
  *(v38 + 72) = 0;
  *(v38 + 80) = 0x65646F4D6F6D6564;
  *(v38 + 88) = 0xE800000000000000;
  *(v38 + 96) = 0;
  UUID.init()();
  v39 = UUID.uuidString.getter();
  v41 = v40;
  v30(v6, v37);
  v86 = v39;
  v87 = v41;
  AnyHashable.init<A>(_:)();
  *(v32 + 56) = v38;
  v42 = swift_allocObject();
  v79 = xmmword_1007B15F0;
  *(v42 + 16) = xmmword_1007B15F0;
  v43 = swift_allocObject();
  *(v43 + 56) = 0xD00000000000001ALL;
  *(v43 + 64) = 0x800000010081C290;
  *(v43 + 72) = 0;
  *(v43 + 80) = 0xD000000000000013;
  *(v43 + 88) = 0x8000000100816070;
  *(v43 + 96) = 0;
  UUID.init()();
  v44 = UUID.uuidString.getter();
  v46 = v45;
  v47 = v85;
  v30(v6, v85);
  v86 = v44;
  v87 = v46;
  AnyHashable.init<A>(_:)();
  v78 = v42;
  *(v42 + 32) = v43;
  v48 = static LocalPreferences.currentJSVersion.getter();
  if (v49)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0x6E776F6E6B6E55;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE700000000000000;
  }

  type metadata accessor for InfoDebugSetting();
  v52 = swift_allocObject();
  v52[7] = 0x697372655620534ALL;
  v52[8] = 0xEA00000000006E6FLL;
  v52[9] = v50;
  v52[10] = v51;

  UUID.init()();
  v53 = UUID.uuidString.getter();
  v55 = v54;
  v30(v6, v47);
  v86 = v53;
  v87 = v55;
  AnyHashable.init<A>(_:)();

  *(v42 + 40) = v52;
  v56 = swift_allocObject();
  *(v56 + 16) = v79;
  type metadata accessor for DebugSection();
  v57 = swift_allocObject();
  UUID.init()();
  v58 = UUID.uuidString.getter();
  v60 = v59;
  v61 = v47;
  v30(v6, v47);
  v57[2] = v58;
  v57[3] = v60;
  v57[4] = 0;
  v57[5] = 0xE000000000000000;
  v57[6] = v84;
  *(v56 + 32) = v57;
  v62 = swift_allocObject();
  UUID.init()();
  v63 = UUID.uuidString.getter();
  v65 = v64;
  v30(v6, v61);
  v62[2] = v63;
  v62[3] = v65;
  v62[4] = 0x697263536176614ALL;
  v62[5] = 0xEA00000000007470;
  v62[6] = v78;
  *(v56 + 40) = v62;
  return v56;
}

id sub_1005D2C2C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DebugSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_1005D2C84(uint64_t a1, int *a2)
{
  v30 = a2;
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v11 + 8))(v13, v10);
  (*(v4 + 104))(v6, enum case for Shelf.ContentType.todayCard(_:), v3);
  sub_1005D4268(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v32 == v31)
  {
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);

    if ((v15 & 1) == 0)
    {
      return sub_10026CF10(a1, v30);
    }
  }

  v17 = COERCE_DOUBLE(sub_1005D38F4(a1, v30));
  if (v19)
  {
    return _swiftEmptyArrayStorage;
  }

  v20 = v17;
  v21 = v18;
  v22 = v18 >= v17 ? v17 : v18;
  if (v22 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = objc_opt_self();
  v24 = [v23 absoluteDimension:v20];
  v25 = [v23 absoluteDimension:v21];
  v26 = [objc_opt_self() sizeWithWidthDimension:v24 heightDimension:v25];

  v27 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v26 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007B0B70;
  *(v28 + 32) = v27;

  return v28;
}

double sub_1005D30A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v65 = a4;
  v76 = a1;
  v77 = a2;
  v78 = a5;
  v6 = type metadata accessor for ShelfLayoutContext();
  v7 = *(v6 - 8);
  v74 = v6;
  v75 = v7;
  __chkstk_darwin(v6);
  v72 = v8;
  v73 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ShelfBackground();
  v70 = *(v9 - 8);
  v71 = v9;
  __chkstk_darwin(v9);
  v69 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v68 = &v63[-v12];
  v13 = type metadata accessor for Shelf.ContentType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v63[-v18];
  v20 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = &v63[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v63[-v24];
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v66 = *(v21 + 8);
  v66(v25, v20);
  (*(v14 + 104))(v16, enum case for Shelf.ContentType.todayCard(_:), v13);
  sub_1005D4268(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v80 == v79)
  {
    v26 = *(v14 + 8);
    v26(v16, v13);
    v26(v19, v13);

LABEL_4:
    v29 = v67;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v30 = v68;
    ReadOnlyLens.subscript.getter();

    v66(v29, v20);
    v32 = v69;
    v31 = v70;
    v33 = v71;
    (*(v70 + 104))(v69, enum case for ShelfBackground.interactive(_:), v71);
    sub_1005D4268(&qword_100981230, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    v35 = *(v31 + 8);
    v35(v32, v33);
    v35(v30, v33);
    v28 = v34 ^ 1;
    goto LABEL_5;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v27 = *(v14 + 8);
  v27(v16, v13);
  v27(v19, v13);

  v28 = 0;
  if (v64)
  {
    goto LABEL_4;
  }

LABEL_5:
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v76;
  v38 = v77;
  if (v36 != v76 || v37 != v77)
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v41 & v28 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v42 = sub_10002849C(&qword_10097BAA8, &qword_1007C3918);
    v43 = v78;
    v78[3] = v42;
    v43[4] = sub_10022AA64(&qword_10097BAB0, &qword_10097BAA8, &qword_1007C3918);
    v78 = sub_1000056E0(v43);
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v45;
    v77 = v44;
    type metadata accessor for ShelfHeaderView(0);
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = v74;
    v48 = v75;
    v49 = v73;
    (*(v75 + 16))(v73, a3, v74);
    v50 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v51 = (v72 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v46;
    (*(v48 + 32))(v52 + v50, v49, v47);
    *(v52 + v51) = v65;

LABEL_15:
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    return result;
  }

  if (v28)
  {
    goto LABEL_12;
  }

LABEL_8:
  type metadata accessor for TodayDebugSectionBackgroundView();
  if (static UICollectionReusableView.elementKind.getter() == v39 && v40 == v38)
  {

LABEL_14:
    v54 = sub_10002849C(&qword_10098DDE8, &unk_1007D7F30);
    v55 = v78;
    v78[3] = v54;
    v55[4] = sub_10022AA64(&unk_10098DDF0, &qword_10098DDE8, &unk_1007D7F30);
    v78 = sub_1000056E0(v55);
    static UICollectionReusableView.elementKind.getter();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v56 = v74;
    v57 = v75;
    v58 = a3;
    v59 = v73;
    (*(v75 + 16))(v73, v58, v74);
    v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v61 = swift_allocObject();
    (*(v57 + 32))(v61 + v60, v59, v56);
    goto LABEL_15;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
    goto LABEL_14;
  }

  return sub_100268C44(v39, v38, a3, v65, v78);
}

uint64_t sub_1005D38F4(uint64_t a1, int *a2)
{
  v37 = a2;
  v3 = type metadata accessor for PageGrid();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Shelf.ContentType();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v42;
  if (v42)
  {
    v33 = a1;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v17(v13, v10);
    v20 = v38;
    v19 = v39;
    (*(v39 + 104))(v38, enum case for Shelf.ContentType.todayCard(_:), v5);
    sub_1005D4268(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v42 == v40 && v43 == v41)
    {
      v21 = *(v19 + 8);
      v21(v20, v5);
      v21(v9, v5);

LABEL_7:
      v25 = v33;
      v26 = v34;
      ShelfLayoutContext.supplementaryPageGrid.getter();
      static CGFloat.allColumns.getter();
      PageGrid.componentMeasuringSize(spanning:)();
      v28 = v27;
      v30 = v29;
      (*(v35 + 8))(v26, v36);
      type metadata accessor for ShelfHeaderView(0);
      v31 = sub_10066D5E0(v18, v25, v28, v30);

      return *&v31;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v24 = *(v19 + 8);
    v24(v20, v5);
    v24(v9, v5);

    if (v23)
    {
      goto LABEL_7;
    }

    v22 = v33;
  }

  else
  {
    v22 = a1;
  }

  return sub_100269DCC(v22, v37);
}

void *sub_1005D3D74()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v19 - v5;
  v7 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = sub_10026D1F8();
  v20 = v11;
  if (sub_1001DFEF4())
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v8 + 8))(v10, v7);
    (*(v1 + 104))(v3, enum case for Shelf.ContentType.todayCard(_:), v0);
    sub_1005D4268(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v19[3] == v19[1] && v19[4] == v19[2])
    {
      v12 = *(v1 + 8);
      v12(v3, v0);
      v12(v6, v0);
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = *(v1 + 8);
      v14(v3, v0);
      v14(v6, v0);

      if ((v13 & 1) == 0)
      {
        return v11;
      }
    }

    v15 = objc_opt_self();
    type metadata accessor for TodayDebugSectionBackgroundView();
    static UICollectionReusableView.elementKind.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 backgroundDecorationItemWithElementKind:v16];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return v20;
  }

  return v11;
}

double sub_1005D41A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ShelfLayoutContext() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v4 + 16);
  v12 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10026BD60(a1, a2, a3, a4, v11, v4 + v10, v12);
}

uint64_t sub_1005D4268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005D42B0()
{
  result = qword_100974AE0;
  if (!qword_100974AE0)
  {
    type metadata accessor for PosterLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974AE0);
  }

  return result;
}

double sub_1005D4308()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AspectRatio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfLayoutContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  static PosterLockupLayout.aspectRatio.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.smallestPossibleColumnWidth.getter();
  (*(v1 + 8))(v3, v0);
  AspectRatio.height(fromWidth:)();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return v13;
}

double sub_1005D4540()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AspectRatio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PosterLockupLayout.aspectRatio.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.smallestPossibleColumnWidth.getter();
  (*(v1 + 8))(v3, v0);
  AspectRatio.height(fromWidth:)();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  return v9;
}

double sub_1005D4724()
{
  v0 = type metadata accessor for PageGrid();
  v39 = *(v0 - 8);
  __chkstk_darwin(v0);
  v38 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for PrivacyFooterLayout.Metrics();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PrivacyFooterLayout();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LabelPlaceholderCompatibility();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrivacyFooter();
  sub_1005D4D90(&qword_100981968, &type metadata accessor for PrivacyFooter, &protocol conformance descriptor for PrivacyFooter);
  ItemLayoutContext.typedModel<A>(as:)();
  v11 = v42[0];
  if (!v42[0])
  {
    return 0.0;
  }

  v33 = v0;
  v34 = v5;
  v35 = v4;
  sub_1000367E8();
  if (qword_10096E078 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  sub_1000056A8(v12, qword_1009D10E8);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v13 = v42[0];
  v14 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v32 = v11;
  PrivacyFooter.bodyText.getter();
  LinkableText.styledText.getter();

  v15 = dispatch thunk of StyledText.asAttributedString(using:)();

  v16 = type metadata accessor for Feature();
  v43 = v16;
  v44 = sub_1005D4D90(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v17 = sub_1000056E0(v42);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  v31 = v15;
  v18 = v14;
  isFeatureEnabled(_:)();
  sub_100007000(v42);
  LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v8 + 8))(v10, v7);
  if (qword_10096D520 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v2, qword_1009CEBE8);
  (*(v36 + 16))(v37, v19, v2);
  v20 = v43;
  v21 = v44;
  v22 = sub_10002A400(v42, v43);
  v41[3] = v20;
  v41[4] = *(v21 + 8);
  v23 = sub_1000056E0(v41);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  v24 = v40;
  PrivacyFooterLayout.init(metrics:bodyLabel:actionButtons:)();
  swift_getKeyPath();
  v25 = v38;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v39 + 8))(v25, v33);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_1005D4D90(&unk_10098DE10, &type metadata accessor for PrivacyFooterLayout, &protocol conformance descriptor for PrivacyFooterLayout);
  v26 = v35;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v28 = v27;

  swift_unknownObjectRelease();

  (*(v34 + 8))(v24, v26);
  sub_100007000(v42);
  return v28;
}

uint64_t sub_1005D4D90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005D4DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a2;
  v35 = a3;
  v8 = type metadata accessor for TertiaryIconPlacement();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _swiftEmptyArrayStorage;
  v10 = *(a1 + 16);
  if (!v10)
  {
    v39 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v11 = 0;
  v39 = _swiftEmptyArrayStorage;
  v32 = a4;
  v33 = v5;
  do
  {
    v12 = a1 + 40 + 16 * v11;
    v13 = v11;
    while (1)
    {
      if (v13 >= v10)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_22;
      }

      v14 = String._bridgeToObjectiveC()();
      v15 = [objc_opt_self() _systemImageNamed:v14];

      if (v15)
      {
        break;
      }

LABEL_5:
      ++v13;
      v12 += 16;
      if (v11 == v10)
      {
        a4 = v32;
        v5 = v33;
        goto LABEL_18;
      }
    }

    if (qword_10096EA70 != -1)
    {
      swift_once();
    }

    v16 = [v15 imageWithTintColor:{qword_1009D2C80, v32, v33, v34, v35}];

    if (!v16)
    {
      goto LABEL_5;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v39 = v40;
    a4 = v32;
    v5 = v33;
  }

  while (v11 != v10);
LABEL_18:
  sub_100005744(0, &unk_100984040, NSAttributedString_ptr);

  v17 = [v5 traitCollection];
  sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = NSFontAttributeName;
  v19 = NSFontAttributeName;
  v20 = [v5 font];
  *(inited + 64) = sub_10002849C(&qword_10097FC38, &qword_1007C70D8);
  *(inited + 40) = v20;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10005DC58(inited + 32);
  v21 = NSAttributedString.init(images:for:adjustsImageSizeForAccessibilityContentSizeCategory:interItemSpacing:defaultAttributes:imagesShouldRenderAsTemplates:)();
  v22 = objc_allocWithZone(NSAttributedString);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 initWithString:v23];

  v25 = [objc_allocWithZone(NSMutableAttributedString) init];
  v27 = v36;
  v26 = v37;
  v28 = v38;
  (*(v37 + 16))(v36, a4, v38);
  v29 = (*(v26 + 88))(v27, v28);
  v30 = v21;
  v31 = v24;
  if (v29 == enum case for TertiaryIconPlacement.leading(_:) || (v30 = v24, v31 = v21, v29 == enum case for TertiaryIconPlacement.trailing(_:)))
  {

    [v25 appendAttributedString:v30];
    [v25 appendAttributedString:v31];
    [v5 setAttributedText:v25];
    [v5 setNeedsLayout];
  }

  else
  {
LABEL_23:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

uint64_t sub_1005D5258()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  result = static UIColor.secondaryText.getter();
  qword_1009D2C80 = result;
  return result;
}

uint64_t sub_1005D52F4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionOutcome();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() currentThread];
  v13 = [v12 isMainThread];

  if (v13)
  {
    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    Promise.resolve(_:)();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_1000076C0();
    v15 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_1005D5B40;
    aBlock[5] = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CAA00;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1005D5B48(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_1000079A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v18 + 8))(v4, v2);
    return (*(v5 + 8))(v7, v17);
  }
}

uint64_t sub_1005D569C()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  Promise.resolve(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1005D5790(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for ActionOutcome();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_10098DE28, qword_1007D8188);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for AdvertActionMetrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AdInteractionAction.adActionMetrics.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1005D5AD0(v8);
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    (*(v3 + 104))(v5, enum case for ActionOutcome.unsupported(_:), v2);
    return Promise.__allocating_init(value:)();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_10002849C(&unk_100973AF0, &qword_1007B3960);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    type metadata accessor for PromotedContentAdvertInteractionMetricsReporter();
    v17[0] = v17[1];
    v14 = swift_allocObject();
    type metadata accessor for PromotedContentMetricCollector();
    swift_unknownObjectRetain();
    *(v14 + 16) = static PromotedContentMetricCollector.shared.getter();
    type metadata accessor for PromotedContentInteractionTypeProvider();
    v15 = swift_allocObject();
    *(v15 + 16) = v17[0];
    *(v14 + 24) = v15;
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    v16 = Promise.__allocating_init()();

    sub_10018E8D8(v12, sub_1005D5B38, v16);
    swift_unknownObjectRelease();

    (*(v10 + 8))(v12, v9);
    return v16;
  }
}

uint64_t sub_1005D5AD0(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10098DE28, qword_1007D8188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005D5B48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1005D5B90(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v59 = a4;
  v58 = a3;
  v57 = a2;
  v6 = type metadata accessor for TodayCard.Style();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EditorialDisplayOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TodayCard.editorialDisplayOptions.getter();
  v14 = EditorialDisplayOptions.suppressLockup.getter();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    v16 = TodayCard.overlay.getter();
    if (v16)
    {
      v17 = v16;
      type metadata accessor for TodayCardOverlayReusePool();
      BaseObjectGraph.optional<A>(_:)();
      v18 = v61[0];
      if (v61[0])
      {
        v53 = &v5[qword_1009CEC80];
        v19 = v5[qword_1009CEC80 + 8];
        TodayCardOverlay.kind.getter();
        v56 = v18;
        if ((v19 & 1) != 0 || (v20 = TodayCardOverlay.Kind.rawValue.getter(), v20 != TodayCardOverlay.Kind.rawValue.getter()))
        {
          v52 = v7;
          v49 = v17;
          v21 = TodayCardOverlay.kind.getter();
          sub_100472F04(v21);
          v50 = v23;
          v51 = v22;
          v54 = &v5[qword_1009CEC88];
          v55 = *&v5[qword_1009CEC88];
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
          if (v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
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
          v43 = TodayCardOverlay.kind.getter();
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
        if (*&v5[qword_1009CEC88])
        {
          v46 = *&v5[qword_1009CEC88 + 8];
          v55 = swift_getObjectType();
          v61[3] = type metadata accessor for TodayCardOverlay();
          v61[4] = sub_1005D83D4(&qword_10097DBD8, &type metadata accessor for TodayCardOverlay, &protocol conformance descriptor for TodayCardOverlay);
          v61[0] = v17;
          swift_unknownObjectRetain();

          TodayCard.style.getter();
          type metadata accessor for ArtworkLoader();
          type metadata accessor for BaseObjectGraph();
          v47 = v59;
          inject<A, B>(_:from:)();
          (*(v46 + 112))(v61, v47, v57, v9, v58, v60, v55, v46);
          swift_unknownObjectRelease();

          (*(v7 + 8))(v9, v6);
          sub_100007000(v61);
        }

        sub_1005D7298();
        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

double sub_1005D6114(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v56 = a3;
  v55 = a2;
  v6 = type metadata accessor for TodayCard.Style();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EditorialDisplayOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TodayCard.editorialDisplayOptions.getter();
  v14 = EditorialDisplayOptions.suppressLockup.getter();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    v16 = TodayCard.overlay.getter();
    if (v16)
    {
      v17 = v16;
      type metadata accessor for TodayCardOverlayReusePool();
      BaseObjectGraph.optional<A>(_:)();
      v18 = v59[0];
      if (v59[0])
      {
        v51 = &v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind];
        v19 = v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlayKind + 8];
        TodayCardOverlay.kind.getter();
        v54 = v18;
        if ((v19 & 1) != 0 || (v20 = TodayCardOverlay.Kind.rawValue.getter(), v20 != TodayCardOverlay.Kind.rawValue.getter()))
        {
          v48 = v6;
          v50 = v7;
          v21 = TodayCardOverlay.kind.getter();
          sub_100472F04(v21);
          v52 = v23;
          v53 = v22;
          v24 = &v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay];
          v25 = *&v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay];
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
          v34 = *&v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
          v35 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView;
          v36 = *&v34[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView];
          *&v34[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView] = v33;
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
          v41 = TodayCardOverlay.kind.getter();
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
        if (*&v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay])
        {
          v45 = *&v5[OBJC_IVAR____TtC8AppStore38MultiAppFallbackCardCollectionViewCell_overlay + 8];
          v53 = swift_getObjectType();
          v60 = type metadata accessor for TodayCardOverlay();
          v61 = sub_1005D83D4(&qword_10097DBD8, &type metadata accessor for TodayCardOverlay, &protocol conformance descriptor for TodayCardOverlay);
          v59[0] = v17;
          swift_unknownObjectRetain();

          TodayCard.style.getter();
          type metadata accessor for ArtworkLoader();
          type metadata accessor for BaseObjectGraph();
          v46 = v57;
          inject<A, B>(_:from:)();
          (*(v45 + 112))(v59, v46, v55, v9, v56, v58, v53, v45);
          swift_unknownObjectRelease();

          (*(v7 + 8))(v9, v6);
          sub_100007000(v59);
        }

        sub_1004EB9C0();
        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

double sub_1005D6674(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v55 = a2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for TodayCard.Style();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EditorialDisplayOptions();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TodayCard.editorialDisplayOptions.getter();
  v15 = EditorialDisplayOptions.suppressLockup.getter();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    v17 = TodayCard.overlay.getter();
    if (v17)
    {
      v18 = v17;
      type metadata accessor for TodayCardOverlayReusePool();
      BaseObjectGraph.optional<A>(_:)();
      v54 = v60[0];
      if (v60[0])
      {
        v52 = a3;
        v53 = &v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind];
        v19 = v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind + 8];
        TodayCardOverlay.kind.getter();
        if ((v19 & 1) != 0 || (v20 = TodayCardOverlay.Kind.rawValue.getter(), v20 != TodayCardOverlay.Kind.rawValue.getter()))
        {
          v49 = v7;
          v51 = v8;
          v47 = v18;
          v21 = TodayCardOverlay.kind.getter();
          sub_100472F04(v21);
          v23 = v22;
          v25 = v24;
          v46 = &v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay];
          v26 = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer];
          v45[1] = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay];
          swift_unknownObjectRetain();
          sub_1006865EC();
          v27 = swift_getObjectType();
          v28 = *(v25 + 16);
          swift_unknownObjectRetain();
          v50 = v23;
          v48 = v25;
          v29 = v28(v27, v25);
          v30 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView;
          v31 = *&v26[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView];
          *&v26[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView] = v29;
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
          if (v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] == 6)
          {
            v35 = [v5 traitCollection];
            v36 = UITraitCollection.prefersAccessibilityLayouts.getter();

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
          v39 = TodayCardOverlay.kind.getter();
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
        if (*&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay])
        {
          v43 = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay + 8];
          ObjectType = swift_getObjectType();
          v61 = type metadata accessor for TodayCardOverlay();
          v62 = sub_1005D83D4(&qword_10097DBD8, &type metadata accessor for TodayCardOverlay, &protocol conformance descriptor for TodayCardOverlay);
          v60[0] = v18;
          swift_unknownObjectRetain();

          TodayCard.style.getter();
          type metadata accessor for ArtworkLoader();
          type metadata accessor for BaseObjectGraph();
          v44 = v57;
          inject<A, B>(_:from:)();
          (*(v43 + 112))(v60, v44, v55, v10, v52, v58, ObjectType, v43);
          swift_unknownObjectRelease();

          (*(v8 + 8))(v10, v7);
          sub_100007000(v60);
        }

        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

id sub_1005D6C20(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v58 = type metadata accessor for TodayCard.Style();
  v9 = *(v58 - 8);
  __chkstk_darwin(v58);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v12 - 8);
  v14 = &v54 - v13;
  v15 = type metadata accessor for PageGrid();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v55 = a3;
  v17(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v18 = a1;
  v19 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v14, &v5[v19]);
  swift_endAccess();
  v56 = a2;
  sub_1004EAB3C(a2);
  v20 = [v5 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = TodayCard.backgroundColor.getter();
    if (!v22)
    {
      sub_100028BB8();
      v22 = static UIColor.todayCardDefaultBackground.getter();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v24 = *&v5[qword_1009CEC70];
  TodayCard.heading.getter();
  if (v25)
  {
    v26 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  TodayCard.style.getter();
  v27 = TodayCard.Style.cardHeadingTextColor.getter();
  v28 = v18;
  v29 = *(v9 + 8);
  v29(v11, v58);
  [v24 setTextColor:v27];

  v30 = UIAccessibilityTraitButton;
  [v24 setAccessibilityTraits:UIAccessibilityTraitButton];
  v31 = *&v5[qword_1009CEC78];
  v32 = v28;
  TodayCard.title.getter();
  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  [v31 setText:v34];

  TodayCard.style.getter();
  v35 = TodayCard.Style.cardTitleTextColor.getter();
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
    v41 = TodayCard.backgroundColor.getter();
    if (!v41)
    {
      sub_100028BB8();
      v41 = static UIColor.todayCardDefaultBackground.getter();
    }

    v42 = v41;
    [v40 setBackgroundColor:v41];
  }

  v43 = [v5 contentView];
  v44 = [v5 traitCollection];
  if (v38 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v44 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  [v43 setLayoutMargins:{v46, v48, v50, v52}];
  return [v5 setNeedsLayout];
}

double sub_1005D711C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002C0AC(a1, v9);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for TodayCard();
  if (swift_dynamicCast())
  {
    v5 = TodayCard.overlay.getter();
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + qword_1009CEC88);
      if (v7)
      {
        v9[3] = type metadata accessor for TodayCardOverlay();
        v9[4] = sub_1005D83D4(&qword_10097DBD8, &type metadata accessor for TodayCardOverlay, &protocol conformance descriptor for TodayCardOverlay);
        v9[0] = v6;
        v8[3] = swift_getObjectType();
        v8[0] = v7;
        swift_unknownObjectRetain_n();

        tryToFetch(artworkFor:into:on:asPartOf:)();
        swift_unknownObjectRelease();

        sub_100007000(v8);
        sub_10002B894(v9, &unk_10097DBE0, &unk_1007BCA00);
        return result;
      }
    }
  }

  return result;
}

void sub_1005D7298()
{
  sub_1004EB9C0();
  v1 = [v0 contentView];
  v2 = [*&v0[qword_1009CEC70] text];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v33 = v4;
  v34 = v6;
  v7 = [*&v0[qword_1009CEC78] text];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v35 = v9;
  v36 = v11;
  if (*&v0[qword_1009CEC88])
  {
    v12 = *&v0[qword_1009CEC88 + 8];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    v15 = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    v16 = [v15 accessibilityLabel];

    if (v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
      sub_10002849C(&unk_100984350, &unk_1007B47A0);
      swift_arrayDestroy();
      sub_10002849C(&unk_100977380, &qword_1007BB880);
      sub_10015872C();
      BidirectionalCollection<>.joined(separator:)();

      v31 = String._bridgeToObjectiveC()();

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
        v21 = sub_100033E38(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_100033E38((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v30 = &v21[16 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v26;
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *sub_1005D75AC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_10098DE30;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setClipsToBounds:1];

  v17 = qword_10098DE30;
  [*&v15[qword_10098DE30] setClipsToBounds:1];
  v18 = [v15 contentView];

  [v18 addSubview:*&v15[v17]];
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v20, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(v21, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  (*(v11 + 8))(v13, v10);
  return v15;
}

id sub_1005D780C()
{
  v1 = *&v0[qword_10098DE30];
  [v0 bounds];

  return [v1 setFrame:?];
}

void sub_1005D7860(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  ArtworkView.image.setter();
}

double sub_1005D78F8()
{
  type metadata accessor for CondensedAdLockupWithIconBackground();
  sub_1005D83D4(&qword_10098B2A8, &type metadata accessor for CondensedAdLockupWithIconBackground, &protocol conformance descriptor for CondensedAdLockupWithIconBackground);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v1)
  {
    CondensedAdLockupWithIconBackground.lockup.getter();
  }

  return result;
}

double sub_1005D7994(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  sub_1005D6C20(a1, a2, a3, a4);
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaSingleLockup();
  if (swift_dynamicCastClass())
  {
    v9 = TodayCardMediaSingleLockup.condensedAdLockupWithIconBackground.getter();
    sub_10003A82C(v9, a3, a4);

    sub_1005D6C20(a1, a2, a3, a4);
    [v4 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1005D7A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for PageGrid();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005D711C(a1, a2, a3);
  v14 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000A833C(v3 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10002B894(v9, &qword_10097DBD0, &qword_1007BC750);
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = sub_10003BA9C(a1, v13);
  return (*(v11 + 8))(v13, v10, v16);
}

void sub_1005D7C58(uint64_t a1, uint64_t a2, char a3)
{
  if (*(v3 + qword_1009CEC88))
  {
    v5 = *(v3 + qword_1009CEC88 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 128);
    swift_unknownObjectRetain();
    v7(a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v8 = *(v3 + qword_10098DE30);
  ArtworkView.image.setter();
  type metadata accessor for ArtworkView();
  sub_1005D83D4(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  v9 = OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView;
  v10 = *(*(v8 + OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkView.image.setter();

  v11 = *(*(v8 + v9) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void (*sub_1005D7DEC(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10002C0AC(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_100005A38(v7, v5 + 32);
  return sub_1005D83C8;
}

void sub_1005D7EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10002C0AC(a3, v14);
      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      type metadata accessor for TodayCard();
      if (swift_dynamicCast())
      {
        TodayCard.media.getter();

        TodayCardMedia.impressionMetrics.getter();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10002B894(v6, &qword_100973D30, &unk_1007B1DC0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          ImpressionsCalculator.addElement(_:at:)();

          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

Class sub_1005D8148(uint64_t a1)
{
  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v2 = swift_allocObject();
  v3 = *(a1 + qword_10098DE30);
  *(v2 + 16) = xmmword_1007B10D0;
  v4 = *(v3 + OBJC_IVAR____TtC8AppStore39CondensedAdLockupWithIconBackgroundView_lockupView);
  *(v2 + 56) = type metadata accessor for TodayCardLockupView();
  *(v2 + 32) = v4;
  v5 = v4;
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

void sub_1005D81FC(void *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a1;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityElements:", isa);
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_10098DE60;
  if (!qword_10098DE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005D83D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005D8420()
{
  v1 = v0;
  v2 = type metadata accessor for Shelf.ContentType();
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
  v2 = type metadata accessor for Shelf.ContentType();
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

uint64_t sub_1005D8F34(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = type metadata accessor for Shelf.ContentType();
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

void sub_1005D9478()
{
  [*&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView] setAlpha:0.0];
  v1 = [v0 buttonTray];
  [v1 setAlpha:0.0];

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v13 = sub_1005DAD94;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_100007A08;
  v12 = &unk_1008CAAC8;
  v4 = _Block_copy(&v9);
  v5 = v0;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_1005DAD9C;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_100504C5C;
  v12 = &unk_1008CAB18;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 animateWithDuration:v4 animations:v7 completion:0.2];
  _Block_release(v7);
  _Block_release(v4);
}

void sub_1005D9648()
{
  v1 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v1 - 8);
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v2 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v3 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  sub_1005DAC94(v3);

  [*&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView] setHidden:1];
  v4 = [v0 buttonTray];
  [v4 setHidden:1];
}

void sub_1005D9740()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArcadeDownloadPackViewController();
  v7.receiver = v0;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, "viewDidLoad");
  sub_10002A400(&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver], *&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v1);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v2 + 8))(v4, v1);
  dispatch thunk of BasePresenter.didLoad()();
  v6 = [v0 navigationItem];
  [v6 setLargeTitleDisplayMode:2];
}

void sub_1005D9918(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArcadeDownloadPackViewController();
  v16.receiver = v2;
  v16.super_class = v12;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v9 + 104))(v11, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v8);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v9 + 8))(v11, v8);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v5 + 8))(v7, v4);
    PendingPageRender.appearTime.setter();
  }

  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  [v14 addObserver:v2 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v15 = [v13 defaultCenter];
  [v15 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];
}

void sub_1005D9C28(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ViewWillDisappearReason();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002849C(&qword_1009729C8, &unk_1007B3740);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArcadeDownloadPackViewController();
  v22.receiver = v2;
  v22.super_class = v15;
  objc_msgSendSuper2(&v22, "viewWillDisappear:", a1 & 1);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v12 + 104))(v14, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v11);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v12 + 8))(v14, v11);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v20 + 8))(v6, v21);
    PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)();
    v16 = type metadata accessor for PendingPageRender.DisappearTimeAndReason();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    PendingPageRender.disappearTime.setter();
  }

  v17 = objc_opt_self();
  v18 = [v17 defaultCenter];
  [v18 removeObserver:v2 name:UIApplicationDidBecomeActiveNotification object:0];

  v19 = [v17 defaultCenter];
  [v19 removeObserver:v2 name:UIApplicationDidEnterBackgroundNotification object:0];
}

uint64_t sub_1005DA02C(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArcadeDownloadPackViewController();
  v17.receiver = a1;
  v17.super_class = v13;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v17, v14, a3);
  sub_10002A400(&v15[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver], *&v15[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v12, *a5, v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1005DA198(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(&a1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  return (*(v6 + 8))(v8, v5);
}

void sub_1005DA2C4(uint64_t a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  objc_msgSendSuper2(&v15, "viewWillLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_overlayViewController];
  if (v2)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v1 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame:{v8, v10, v12, v14}];
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

void sub_1005DA3F4(uint64_t a1)
{
  v2 = v1;
  v39.receiver = v1;
  v39.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  objc_msgSendSuper2(&v39, "viewDidLayoutSubviews");
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v3;
  v6 = *&v2[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView];
  v5 = *&v2[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView + 8];
  ObjectType = swift_getObjectType();
  [v6 bounds];
  [v4 convertRect:v6 fromCoordinateSpace:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v2 view];
  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v2 buttonTray];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [v2 buttonTray];
  [v17 convertRect:v27 fromCoordinateSpace:{v20, v22, v24, v26}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v40.origin.x = v29;
  v40.origin.y = v31;
  v40.size.width = v33;
  v40.size.height = v35;
  CGRectGetMinY(v40);
  v41.origin.x = v9;
  v41.origin.y = v11;
  v41.size.width = v13;
  v41.size.height = v15;
  CGRectGetMinY(v41);
  v42.origin.x = v9;
  v42.origin.y = v11;
  v42.size.width = v13;
  v42.size.height = v15;
  CGRectGetWidth(v42);
  BasePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.viewBounds.setter();

  v36 = BasePresenter.impressionsCalculator.getter();
  v37 = [v2 view];
  if (v37)
  {
    v38 = v37;
    (*(v5 + 8))(v36, v37, ObjectType, v5);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1005DA6B8(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_overlayViewController];
  if (v2)
  {
    v3 = [v2 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 setAlpha:0.0];
  }

  [*&a1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView] setAlpha:1.0];
  v5 = [a1 buttonTray];
  [v5 setAlpha:1.0];
}

id sub_1005DA900(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005DA9D4(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_objectGraph);
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_1000F40E0(v5);
  }

  sub_1005F9AF4(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

void sub_1005DAB14()
{
  [*&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView] setHidden:0];
  v1 = [v0 buttonTray];
  [v1 setHidden:0];
}

void sub_1005DAB90(uint64_t a1)
{
  type metadata accessor for JUContentUnavailableViewController();
  sub_1005DAC3C();
  swift_errorRetain();

  v1 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  sub_1005DAC94(v1);
}

unint64_t sub_1005DAC3C()
{
  result = qword_10098E240;
  if (!qword_10098E240)
  {
    type metadata accessor for BasePresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E240);
  }

  return result;
}

id sub_1005DAC94(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v5 = *&v1[v3];
  *&v1[v3] = a1;
  v6 = a1;

  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];

    static ViewControllerContainment.add(_:to:frame:)();
    v9 = *&v1[v3] == 0;

    return [v1 setModalInPresentation:v9];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1005DADE0()
{
  result = qword_10098E248;
  if (!qword_10098E248)
  {
    type metadata accessor for HttpTemplateAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E248);
  }

  return result;
}

uint64_t sub_1005DAE40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HttpTemplateController();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8AppStore22HttpTemplateController_textFields] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC8AppStore22HttpTemplateController_okAction] = 0;
  v5[OBJC_IVAR____TtC8AppStore22HttpTemplateController_hasRequiredParameters] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore22HttpTemplateController_templateAction] = a1;
  v6 = &v5[OBJC_IVAR____TtC8AppStore22HttpTemplateController_actionSender];
  *v6 = 0u;
  v6[1] = 0u;
  v11.receiver = v5;
  v11.super_class = v4;

  v7 = objc_msgSendSuper2(&v11, "init");
  v8 = sub_100766654(a2);
  v9 = sub_1005D01FC(v8, 1, a2);

  return v9;
}

void sub_1005DAF78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v84 = type metadata accessor for InstallationType();
  v81 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for LegacyAppState();
  v110 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AdamId();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v96 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v79 - v10;
  v99 = sub_10002849C(&qword_100975D18, &qword_1007BA9B8);
  v108 = *(v99 - 8);
  __chkstk_darwin(v99);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v79 - v14;
  __chkstk_darwin(v15);
  v109 = (&v79 - v16);
  __chkstk_darwin(v17);
  v19 = &v79 - v18;
  __chkstk_darwin(v20);
  v22 = &v79 - v21;
  v23 = *a1;
  sub_10002849C(&unk_100973AF0, &qword_1007B3960);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v24 = aBlock;
  v101 = v113;
  type metadata accessor for UpdateStore();
  inject<A, B>(_:from:)();
  v79 = aBlock;
  v25 = _swiftEmptySetSingleton;
  v119 = _swiftEmptySetSingleton;
  v111 = sub_100399438(_swiftEmptyArrayStorage);
  v118 = _swiftEmptySetSingleton;
  v26 = *(v23 + 16);
  v100 = v6;
  v87 = v7;
  v102 = v24;
  if (v26)
  {
    v107 = v19;
    v27 = v99;
    v93 = &v22[*(v99 + 48)];
    ObjectType = swift_getObjectType();
    v28 = v23 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v91 = *(v108 + 72);
    v103 = v106 + 8;
    v95 = v12;
    v90 = v12 + 8;
    v108 = v7 + 32;
    v29 = (v7 + 8);
    v89 = (v110 + 88);
    v88 = enum case for LegacyAppState.paused(_:);
    v86 = (v110 + 8);
    v85 = (v110 + 96);
    v30 = _swiftEmptyArrayStorage;
    v31 = v27;
    v32 = v106;
    v33 = v22;
    v94 = v22;
    do
    {
      v105 = v28;
      v106 = v26;
      sub_1005DDC08(v28, v33);
      v35 = *v93;
      v36 = *(v93 + 1);
      v37 = v107;
      v38 = &v107[*(v31 + 48)];
      v104 = *v108;
      (v104)(v107, v33, v6);
      *v38 = v35;
      *(v38 + 1) = v36;
      v39 = v109;
      sub_1005DDC08(v37, v109);
      v40 = (v39 + *(v31 + 48));
      v41 = *v40;
      v42 = v40[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_100033E38(0, *(v30 + 2) + 1, 1, v30);
      }

      v44 = *(v30 + 2);
      v43 = *(v30 + 3);
      if (v44 >= v43 >> 1)
      {
        v30 = sub_100033E38((v43 > 1), v44 + 1, 1, v30);
      }

      *(v30 + 2) = v44 + 1;
      v110 = v30;
      v45 = &v30[16 * v44];
      *(v45 + 4) = v41;
      *(v45 + 5) = v42;
      v46 = *v29;
      v6 = v100;
      (*v29)(v109, v100);
      v47 = v107;
      sub_1005DDC08(v107, v32);

      v48 = v96;
      sub_100081B4C(v96, v32);
      v46(v48, v6);
      sub_1005DDC08(v47, v32);
      v49 = &v32[*(v31 + 48)];
      v50 = *v49;
      v51 = v49[1];
      v52 = v95;
      sub_1005DDC08(v47, v95);

      (v104)(v48, v52, v6);
      v53 = v111;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v53;
      sub_10005268C(v48, v50, v51, isUniquelyReferenced_nonNull_native);

      v111 = aBlock;
      v46(v32, v6);
      dispatch thunk of AppStateController.stateMachine(forApp:)();
      swift_getObjectType();
      v55 = v97;
      dispatch thunk of AppStateMachine.currentState.getter();
      swift_unknownObjectRelease();
      v56 = v98;
      v57 = (*v89)(v55, v98);
      if (v57 == v88)
      {
        (*v85)(v55, v56);
        v34 = type metadata accessor for LegacyAppState.AppInstallationDetails();
        (*(*(v34 - 8) + 8))(v55, v34);
        sub_1005DDC08(v47, v32);

        sub_100081B4C(v48, v32);
        v46(v48, v6);
        sub_10002B894(v47, &qword_100975D18, &qword_1007BA9B8);
      }

      else
      {
        sub_10002B894(v47, &qword_100975D18, &qword_1007BA9B8);
        (*v86)(v55, v56);
      }

      v33 = v94;
      v28 = v105 + v91;
      v26 = v106 - 1;
      v30 = v110;
      v31 = v99;
    }

    while (v106 != 1);
    v25 = v119;
  }

  else
  {
    v110 = _swiftEmptyArrayStorage;
  }

  v58 = v25 + 7;
  v59 = 1 << *(v25 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & v25[7];
  v62 = (v59 + 63) >> 6;
  v108 = v87 + 16;
  LODWORD(v107) = enum case for InstallationType.update(_:);
  v105 = v87 + 8;
  v106 = (v81 + 104);
  v104 = (v81 + 8);
  v109 = v25;

  v63 = 0;
  v64 = v82;
  v65 = v83;
  v66 = v84;
  while (v61)
  {
    v67 = v63;
    v68 = v87;
    v69 = v109;
LABEL_22:
    v70 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v71 = v100;
    (*(v68 + 16))(v64, *(v69 + 48) + *(v68 + 72) * (v70 | (v67 << 6)), v100);
    swift_getObjectType();
    (*v106)(v65, v107, v66);
    dispatch thunk of AppStateController.setWaiting(for:installationType:)();
    (*(v87 + 8))(v64, v71);
    (*v104)(v65, v66);
  }

  v68 = v87;
  v69 = v109;
  while (1)
  {
    v67 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v67 >= v62)
    {

      isa = Array._bridgeToObjectiveC()().super.isa;

      v73 = v118;
      v74 = swift_allocObject();
      v74[2] = v111;
      v74[3] = v69;
      v75 = v101;
      v74[4] = v102;
      v74[5] = v75;
      v76 = v80;
      v74[6] = v73;
      v74[7] = v76;
      v116 = sub_1005DDC78;
      v117 = v74;
      aBlock = _NSConcreteStackBlock;
      v113 = 1107296256;
      v114 = sub_1005DC244;
      v115 = &unk_1008CABD0;
      v77 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v78 = v79;
      [v79 updateAllWithOrder:isa completionBlock:v77];
      swift_unknownObjectRelease();

      _Block_release(v77);
      return;
    }

    v61 = v58[v67];
    ++v63;
    if (v61)
    {
      v63 = v67;
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_1005DBA3C(char a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v106 = a6;
  v107 = a7;
  ObjectType = a4;
  v13 = type metadata accessor for ActionOutcome();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for AdamId();
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v18 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v100 = v89 - v20;
  __chkstk_darwin(v21);
  v102 = v89 - v22;
  __chkstk_darwin(v23);
  v103 = v89 - v24;
  __chkstk_darwin(v25);
  v99 = v89 - v26;
  v101 = v27;
  __chkstk_darwin(v28);
  v98 = v89 - v29;
  v112 = _swiftEmptySetSingleton;
  v92 = v14;
  v93 = v13;
  v91 = v16;
  v95 = a8;
  v96 = v18;
  v94 = a5;
  if ((a1 & 1) == 0)
  {
    v112 = a5;

LABEL_22:
    v90 = a9;
    v56 = v55[7];
    v98 = (v55 + 7);
    v57 = 1 << *(v55 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & v56;
    v97 = (v57 + 63) >> 6;
    v109 = v110 + 16;
    v99 = (v110 + 32);
    v105 = v110 + 8;
    v102 = v55;

    v60 = 0;
    v61 = v103;
    while (v59)
    {
      v62 = v60;
      v63 = v102;
LABEL_31:
      v64 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v65 = v110;
      v66 = *(v110 + 16);
      v67 = v100;
      v68 = v108;
      v66(v100, *(v63 + 48) + *(v110 + 72) * (v64 | (v62 << 6)), v108);
      v69 = v106;
      ObjectType = swift_getObjectType();
      v66(v61, v67, v68);
      v70 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v71 = swift_allocObject();
      v72 = v107;
      *(v71 + 16) = v69;
      *(v71 + 24) = v72;
      (*(v65 + 32))(v71 + v70, v61, v68);
      swift_unknownObjectRetain();
      dispatch thunk of AppStateController.refreshDataSources(for:completion:)();

      (*(v65 + 8))(v67, v68);
    }

    v63 = v102;
    while (1)
    {
      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v62 >= v97)
      {
        break;
      }

      v59 = *&v98[8 * v62];
      ++v60;
      if (v59)
      {
        v60 = v62;
        goto LABEL_31;
      }
    }

    v73 = v94;
    if (*(v63 + 16) <= *(v94 + 2) >> 3)
    {
      v111 = v94;

      sub_1005DC838(v63);

      v74 = v111;
    }

    else
    {

      v74 = sub_1005DCA54(v63, v73);
    }

    v75 = v96;
    if (*(v95 + 16) <= *(v74 + 2) >> 3)
    {
      v111 = v74;
      sub_1005DC838(v95);
      v76 = v111;
    }

    else
    {
      v76 = sub_1005DCA54(v95, v74);
    }

    v77 = 0;
    v78 = 1 << *(v76 + 32);
    v79 = -1;
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    v80 = v79 & v76[7];
    v81 = (v78 + 63) >> 6;
    while (v80)
    {
      v82 = v77;
LABEL_47:
      v83 = __clz(__rbit64(v80));
      v80 &= v80 - 1;
      v84 = v110;
      v85 = v108;
      (*(v110 + 16))(v75, v76[6] + *(v110 + 72) * (v83 | (v82 << 6)), v108);
      swift_getObjectType();
      AppStateController.clearWaiting(for:)();
      (*(v84 + 8))(v75, v85);
    }

    while (1)
    {
      v82 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v82 >= v81)
      {

        v87 = v92;
        v86 = v93;
        v88 = v91;
        (*(v92 + 104))(v91, enum case for ActionOutcome.performed(_:), v93);
        Promise.resolve(_:)();
        (*(v87 + 8))(v88, v86);
        return;
      }

      v80 = v76[v82 + 7];
      ++v77;
      if (v80)
      {
        v77 = v82;
        goto LABEL_47;
      }
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v105 = a2;
  if (!(a2 >> 62))
  {
    v109 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v109)
    {
      goto LABEL_4;
    }

LABEL_21:
    v55 = _swiftEmptySetSingleton;
    goto LABEL_22;
  }

  v109 = _CocoaArrayWrapper.endIndex.getter();
  if (!v109)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (v109 >= 1)
  {
    v30 = 0;
    v31 = v105;
    v32 = v105 & 0xC000000000000001;
    v97 = v110 + 16;
    v90 = v110 + 32;
    v89[1] = v110 + 8;
    v33 = &selRef_numberOfSegments;
    v34 = ObjectType;
    v89[0] = v105 & 0xC000000000000001;
    v35 = v110;
    while (1)
    {
      v36 = v32 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v31 + 8 * v30 + 32);
      v37 = v36;
      if ([v36 status] == 1)
      {
        break;
      }

LABEL_7:
      if (v109 == ++v30)
      {
        v55 = v112;
        goto LABEL_22;
      }
    }

    v38 = [v37 v33[231]];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (*(v34 + 16))
    {
      v42 = sub_1000072B8(v39, v41);
      v44 = v43;

      if (v44)
      {
        v45 = *(v34 + 56) + *(v35 + 72) * v42;
        v46 = *(v35 + 16);
        v47 = v99;
        v48 = v108;
        v46(v99, v45, v108);
        v49 = v98;
        (*(v35 + 32))(v98, v47, v48);
        v50 = v102;
        v46(v102, v49, v48);
        v51 = v103;
        sub_100081B4C(v103, v50);

        v52 = *(v35 + 8);
        v52(v51, v48);
        v53 = v49;
        v32 = v89[0];
        v54 = v48;
        v33 = &selRef_numberOfSegments;
        v52(v53, v54);
        v34 = ObjectType;
LABEL_17:
        v31 = v105;
        goto LABEL_7;
      }
    }

    else
    {
    }

    goto LABEL_17;
  }

LABEL_52:
  __break(1u);
}

void sub_1005DC244(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  sub_100005744(0, &qword_10098E258, ASDJobResult_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = a4;
  v6(a2, v7, a4);
}

void sub_1005DC2FC(unint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_10002849C(&qword_10096FE60, qword_1007C50A0);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - v4;
  v42 = type metadata accessor for AdamId();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UpdatesSorter.Ordering();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v41 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v35 = v10;
    v37 = v9;
    v38 = v6;
    v40 = v8;
    v13 = 0;
    v8 = (a1 & 0xC000000000000001);
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v8)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = [v14 updateState];
      if (v16 > 4 || ((1 << v16) & 0x19) == 0)
      {
      }

      else
      {
        v6 = &v45;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v13;
      if (v9 == i)
      {
        v18 = v45;
        v8 = v40;
        v9 = v37;
        v6 = v38;
        v10 = v35;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_21:
  v19 = v41;
  (*(v10 + 104))(v41, enum case for UpdatesSorter.Ordering.pendingUpdates(_:), v9);
  v20 = static UpdatesSorter.sorted(updates:ordering:)();
  (*(v10 + 8))(v19, v9);
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v18;
    if (v21)
    {
      goto LABEL_23;
    }

LABEL_39:
    v22 = _swiftEmptyArrayStorage;
LABEL_40:

    v33 = sub_1002A63D8(v22);

    v45 = v33;
    Promise.resolve(_:)();

    return;
  }

LABEL_38:
  v21 = _CocoaArrayWrapper.endIndex.getter();
  v35 = v18;
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_23:
  v18 = 0;
  v40 = v20 & 0xFFFFFFFFFFFFFF8;
  v41 = (v20 & 0xC000000000000001);
  v38 = v6 + 4;
  v22 = _swiftEmptyArrayStorage;
  v39 = v5;
  v37 = v20;
  while (1)
  {
    if (v41)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *(v40 + 16))
      {
        goto LABEL_37;
      }

      v23 = *(v20 + 8 * v18 + 32);
    }

    v6 = v23;
    v24 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    [v23 storeItemIdentifier];
    AdamId.init(value:)();
    v25 = [v6 bundleIdentifier];
    if (!v25)
    {
      break;
    }

    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = &v5[*(v44 + 48)];
    (*v38)(v5, v8, v42);
    *v30 = v27;
    v30[1] = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1000350F4(0, v22[2] + 1, 1, v22);
    }

    v32 = v22[2];
    v31 = v22[3];
    if (v32 >= v31 >> 1)
    {
      v22 = sub_1000350F4((v31 > 1), v32 + 1, 1, v22);
    }

    v5 = v39;

    v22[2] = v32 + 1;
    sub_1005DDD74(v5, v22 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v32);
    ++v18;
    v20 = v37;
    if (v24 == v21)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
}

void sub_1005DC838(uint64_t a1)
{
  v3 = sub_10002849C(&qword_100972A80, &qword_1007C9840);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for AdamId();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_1002C88DC(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_10002B894(v5, &qword_100972A80, &qword_1007C9840);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_1005DCA54(uint64_t a1, void *a2)
{
  v5 = sub_10002849C(&qword_100972A80, &qword_1007C9840);
  __chkstk_darwin(v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v66 - v9);
  v11 = type metadata accessor for AdamId();
  __chkstk_darwin(v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v66 - v14);
  __chkstk_darwin(v16);
  v81 = (&v66 - v18);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = a2 + 7;
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_10002B894(v30, &qword_100972A80, &qword_1007C9840);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_1005DDD24(&qword_100970CD8, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, a2[6] + v85 * v24, v11);
    v35 = sub_1005DDD24(&qword_100972728, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    __chkstk_darwin(v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_10002B894(v24, &qword_100972A80, &qword_1007C9840);
        a2 = sub_10039F8CC(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, v52[6] + v54 * v85, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, v52[6] + v54 * v85, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_1005DD4B8(v64, v66, v81, v24, &v90);
  a2 = v65;

LABEL_52:
  v59 = v90;
LABEL_53:
  sub_100081680(v59);
  return a2;
}

void sub_1005DD4B8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_10002849C(&qword_100972A80, &qword_1007C9840);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for AdamId();
  __chkstk_darwin(v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_10002B894(v11, &qword_100972A80, &qword_1007C9840);
          v45 = v61;

          sub_10039F8CC(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1005DDD24(&qword_100970CD8, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1005DDD24(&qword_100972728, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1005DD98C(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_10098E260, qword_1007D83D0);
  v2 = Promise.__allocating_init()();
  updated = UpdateAllAction.ordering.getter();
  if (updated)
  {
    v7[0] = updated;
    Promise.resolve(_:)();
  }

  else
  {
    type metadata accessor for UpdateStore();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v4 = v7[0];
    v7[4] = sub_1005DDD6C;
    v7[5] = v2;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100527B5C;
    v7[3] = &unk_1008CAC20;
    v5 = _Block_copy(v7);

    [v4 getUpdatesWithCompletionBlock:v5];
    _Block_release(v5);
  }

  return v2;
}

uint64_t sub_1005DDAD4(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v4 = Promise.__allocating_init()();
  sub_1005DD98C(a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;
  v6 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  swift_retain_n();

  v8[3] = v6;
  v8[4] = &protocol witness table for OS_dispatch_queue;
  v8[0] = static OS_dispatch_queue.main.getter();
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v8);
  return v4;
}

uint64_t sub_1005DDC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975D18, &qword_1007BA9B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005DDCA8()
{
  type metadata accessor for AdamId();
  swift_getObjectType();
  return AppStateController.clearWaiting(for:)();
}

uint64_t sub_1005DDD24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005DDD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10096FE60, qword_1007C50A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005DDE00()
{
  result = qword_10098E268;
  if (!qword_10098E268)
  {
    type metadata accessor for OfferStateAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098E268);
  }

  return result;
}

uint64_t sub_1005DDE60(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LegacyAppState();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v28 = &v24 - v6;
  v27 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v33 = &v24 - v7;
  v26 = type metadata accessor for AdamId();
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v29 = Promise.__allocating_init()();
  sub_10002849C(&unk_100973AF0, &qword_1007B3960);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  swift_getObjectType();
  OfferStateAction.adamId.getter();
  dispatch thunk of AppStateController.stateMachine(forApp:)();
  swift_unknownObjectRelease();
  v11 = v10;
  v12 = v27;
  v13 = v28;
  (*(v8 + 8))(v11, v26);
  inject<A, B>(_:from:)();
  v14 = OfferStateAction.defaultAction.getter();
  swift_getObjectType();
  OfferStateAction.includeBetaApps.getter();
  dispatch thunk of AppStateMachine.currentStateIncludingBeta(_:)();
  if ((LegacyAppState.isBuyable.getter() & 1) == 0 && (LegacyAppState.isUpdatable.getter() & 1) == 0)
  {
    v18 = v31;
    v17 = v32;
    v21 = v25;
    (*(v31 + 16))(v25, v13, v32);
    if ((*(v18 + 88))(v21, v17) == enum case for LegacyAppState.openable(_:))
    {
      (*(v18 + 96))(v21, v17);

      v22 = type metadata accessor for OpenableDestination();
      (*(*(v22 - 8) + 8))(v21, v22);
      v23 = OfferStateAction.openAction.getter();
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

  v15 = OfferStateAction.buyAction.getter();
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
  sub_1005D0214(v16, 1, a2);

  v19 = v29;
  Promise.pipe(to:)();

  swift_unknownObjectRelease();

  (*(v18 + 8))(v13, v17);
  (*(v30 + 8))(v33, v12);
  return v19;
}

double sub_1005DE30C(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for DynamicTextAppearance();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  __chkstk_darwin(v10);
  v12 = v37 - v11;
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v16 = type metadata accessor for LabelPlaceholder();
  v40 = *(v16 - 8);
  v41 = v16;
  __chkstk_darwin(v16);
  v38 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EA78 != -1)
  {
    swift_once();
  }

  sub_1005DF9A8(&qword_1009D2C88, v43);
  v44 = v1[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_isSingleColumn];
  sub_1005DF9A8(v43, v45);
  v18 = *&v1[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_titleLabel];
  v45[14] = type metadata accessor for DynamicTypeLabel();
  v45[15] = &protocol witness table for UILabel;
  v45[11] = v18;
  v42 = *&v2[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_ratingControl];
  type metadata accessor for StarRatingControl();
  v19 = v18;
  Measurable.placeable.getter();
  sub_1005DFA04(v43);
  v20 = [v2 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 || (UITraitCollection.isSizeClassCompact.getter())
  {
    v21 = 1;
  }

  else
  {
    v37[3] = v15;
    v22._object = 0x800000010080E210;
    v22._countAndFlagsBits = 0xD000000000000016;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v24 = localizedString(_:comment:)(v22, v23);
    v37[1] = v24._object;
    v37[2] = v24._countAndFlagsBits;
    DynamicTextAppearance.init()();
    if (qword_10096DF68 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for FontUseCase();
    sub_1000056A8(v25, qword_1009D0DB8);
    DynamicTextAppearance.withFontUseCase(_:)();
    v26 = *(v39 + 8);
    v26(v6, v4);
    DynamicTextAppearance.withNumberOfLines(_:)();
    v26(v9, v4);
    DynamicTextAppearance.withLineBreakMode(_:)();
    v26(v12, v4);
    LabelPlaceholder.Options.init(rawValue:)();
    v27 = v38;
    LabelPlaceholder.init(_:with:where:)();
    LabelPlaceholder.measure(toFit:with:)();
    v29 = v28;
    sub_10002A400(v46, v47);
    dispatch thunk of Placeable.measure(toFit:with:)();
    v31 = v30;
    sub_10002A400(v45, v45[3]);
    AnyDimension.value(with:)();
    v33 = v32;
    (*(v40 + 8))(v27, v41);
    v21 = v31 + v29 + v33 > a1;
  }

  sub_10034AB28(v21, v43);
  sub_10002A400(v43, v43[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v35 = v34;

  sub_100007000(v43);
  sub_1005DFA58(v45);
  return v35;
}

void sub_1005DE7D0()
{
  qword_1009D2CA0 = &type metadata for Double;
  unk_1009D2CA8 = &protocol witness table for Double;
  qword_1009D2C88 = 0x4030000000000000;
  qword_1009D2CD0 = &type metadata for Double;
  unk_1009D2CD8 = &protocol witness table for Double;
  qword_1009D2CB8 = 0x4020000000000000;
  byte_1009D2CB0 = 1;
}

char *sub_1005DE80C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - v16;
  v18 = OBJC_IVAR____TtC8AppStore20ProductTapToRateView_rateAction;
  v19 = sub_10002849C(&qword_10098E2C0, &qword_1007D8478);
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v5[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_isSingleColumn] = 0;
  if (qword_10096DF68 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for FontUseCase();
  v21 = sub_1000056A8(v20, qword_1009D0DB8);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v17, v21, v20);
  (*(v22 + 56))(v17, 0, 1, v20);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v24 = type metadata accessor for StarRatingControl();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating] = 0;
  *&v25[OBJC_IVAR____TtC8AppStore17StarRatingControl_lastSentRating] = 0;
  v26 = &v25[OBJC_IVAR____TtC8AppStore17StarRatingControl_touchOutsideMargin];
  *v26 = xmmword_1007D6F40;
  *(v26 + 1) = xmmword_1007D6F40;
  v46.receiver = v25;
  v46.super_class = v24;
  v27 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 clearColor];
  [v29 setBackgroundColor:v30];

  [v29 setContentMode:3];
  *&v29[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating] = 0;

  *&v5[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_ratingControl] = v29;
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v36 = OBJC_IVAR____TtC8AppStore20ProductTapToRateView_titleLabel;
  v37 = *&v35[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_titleLabel];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v38 = v37;
  v39 = static UIColor.primaryText.getter();
  [v38 setTextColor:v39];

  [v35 addSubview:*&v35[v36]];
  v40 = OBJC_IVAR____TtC8AppStore20ProductTapToRateView_ratingControl;
  [v35 addSubview:*&v35[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_ratingControl]];
  v41 = *&v35[v40];
  sub_100005744(0, &qword_10097CD40, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v41;

  v43 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v42 addAction:v43 forControlEvents:4096];

  return v35;
}

void *sub_1005DED38(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = sub_10002849C(&qword_10098E2C8, qword_1007D8498);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - v6;
  v8 = sub_10002849C(&qword_10098E2C0, &qword_1007D8478);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC8AppStore20ProductTapToRateView_rateAction;
    swift_beginAccess();
    sub_1005DFAB4(v13 + v14, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      return sub_10002B894(v7, &qword_10098E2C8, qword_1007D8498);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      ObjectGraphPair.value.getter();
      dispatch thunk of RateAction.rating.setter();

      ObjectGraphPair.objectGraph.getter();
      v15 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();

      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v4, 1, v15) == 1)
      {
        (*(v9 + 8))(v11, v8);

        return sub_10002B894(v4, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        ObjectGraphPair.value.getter();
        v17 = ObjectGraphPair.objectGraph.getter();
        sub_1005FA250(v18[1], 1, v17, v4);

        (*(v9 + 8))(v11, v8);

        return (*(v16 + 8))(v4, v15);
      }
    }
  }

  return result;
}

uint64_t sub_1005DF1BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DynamicTextAppearance();
  v57 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v51 - v7;
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  __chkstk_darwin(v12);
  v56 = &v51 - v13;
  v14 = type metadata accessor for LabelPlaceholder();
  v59 = *(v14 - 8);
  v60 = v14;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v58 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67.receiver = v1;
  v67.super_class = ObjectType;
  objc_msgSendSuper2(&v67, "layoutSubviews", v15);
  v17 = *&v1[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_titleLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  v19 = v18;
  v61 = *&v1[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_ratingControl];
  v64[0] = v61;
  v62 = type metadata accessor for StarRatingControl();
  Measurable.placeable.getter();
  v20 = &selRef_setRequiresColorStatistics_;
  v21 = [v1 traitCollection];
  if (qword_10096EA78 != -1)
  {
    swift_once();
  }

  if (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 || (UITraitCollection.isSizeClassCompact.getter())
  {

    sub_100007000(v66);
  }

  else
  {
    v55 = v3;
    v52 = "L AdFetch returns Mock Ad";
    v37._object = 0x800000010080E210;
    v37._countAndFlagsBits = 0xD000000000000016;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v39 = localizedString(_:comment:)(v37, v38);
    object = v39._object;
    countAndFlagsBits = v39._countAndFlagsBits;
    DynamicTextAppearance.init()();
    if (qword_10096DF68 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for FontUseCase();
    sub_1000056A8(v40, qword_1009D0DB8);
    DynamicTextAppearance.withFontUseCase(_:)();
    v41 = *(v57 + 8);
    v42 = v5;
    v43 = v55;
    v41(v42, v55);
    DynamicTextAppearance.withNumberOfLines(_:)();
    v41(v8, v43);
    DynamicTextAppearance.withLineBreakMode(_:)();
    v41(v11, v43);
    LabelPlaceholder.Options.init(rawValue:)();
    v44 = v58;
    LabelPlaceholder.init(_:with:where:)();
    LabelPlaceholder.measure(toFit:with:)();
    v46 = v45;
    sub_10002A400(v66, v66[3]);
    dispatch thunk of Placeable.measure(toFit:with:)();
    v48 = v47;
    sub_10002A400(&qword_1009D2C88, qword_1009D2CA0);
    AnyDimension.value(with:)();
    v50 = v49;

    (*(v59 + 8))(v44, v60);
    sub_100007000(v66);
    v20 = &selRef_setRequiresColorStatistics_;
    if (v19 >= v48 + v46 + v50)
    {
      v23 = v52 | 0x8000000000000000;
      v22 = 0xD000000000000016;
      goto LABEL_7;
    }
  }

  v22 = 0x525F4F545F504154;
  v23 = 0xEB00000000455441;
LABEL_7:
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  localizedString(_:comment:)(*&v22, v24);
  v25 = String._bridgeToObjectiveC()();

  [v17 setText:v25];

  sub_1005DF9A8(&qword_1009D2C88, v64);
  v65 = v1[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_isSingleColumn];
  sub_1005DF9A8(v64, v66);
  v66[14] = type metadata accessor for DynamicTypeLabel();
  v66[15] = &protocol witness table for UILabel;
  v66[11] = v17;
  v63 = v61;
  v26 = v17;
  Measurable.placeable.getter();
  sub_1005DFA04(v64);
  [v1 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = [v1 v20[35]];
  sub_10034AEB0(v35, v28, v30, v32, v34);

  return sub_1005DFA58(v66);
}

uint64_t type metadata accessor for ProductTapToRateView(uint64_t a1)
{
  result = qword_10098E2A8;
  if (!qword_10098E2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005DF89C(uint64_t a1)
{
  sub_1005DF944(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005DF944(uint64_t a1)
{
  if (!qword_10098E2B8)
  {
    sub_10002D1A8(&qword_10098E2C0, &qword_1007D8478);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10098E2B8);
    }
  }
}

uint64_t sub_1005DFAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10098E2C8, qword_1007D8498);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1005DFB24(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_artworkPlaceholder;
  type metadata accessor for ArtworkView();
  v11 = static ArtworkView.brickArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_supplementaryTextPlaceholder;
  type metadata accessor for Placeholder();
  v13 = static Placeholder.titleText.getter();
  v15 = sub_10025084C(v13, v14, UIFontTextStyleSubheadline);

  *&v5[v12] = v15;
  v5[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] = 0;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for BrickPlaceholderView();
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  [v16 addSubview:*&v16[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_artworkPlaceholder]];
  return v16;
}

uint64_t sub_1005DFC84()
{
  v1 = type metadata accessor for LayoutRect();
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BrickLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for BrickLayout();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BrickPlaceholderView();
  v33.receiver = v0;
  v33.super_class = v11;
  objc_msgSendSuper2(&v33, "layoutSubviews");
  v12 = OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_wantsSupplementaryTextPlaceholder;
  v13 = *&v0[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_supplementaryTextPlaceholder];
  if (v0[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] == 1)
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_supplementaryTextPlaceholder]];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_supplementaryTextPlaceholder] removeFromSuperview];
  }

  if (qword_10096D058 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v4, qword_1009CDFB0);
  (*(v5 + 16))(v7, v14, v4);
  v15 = *&v0[OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_artworkPlaceholder];
  v31 = type metadata accessor for ArtworkView();
  v32 = &protocol witness table for UIView;
  v30 = v15;
  if (v0[v12] == 1)
  {
    v16 = sub_100261828();
    v17 = v13;
    v18 = &protocol witness table for UILabel;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v13 = 0;
    v26 = 0;
    v27 = 0;
  }

  v28 = v16;
  v29 = v18;
  v25 = v13;
  v19 = v15;
  BrickLayout.init(metrics:artworkView:labelView:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  BrickLayout.placeChildren(relativeTo:in:)();
  (*(v23 + 8))(v3, v24);
  return (*(v8 + 8))(v10, v22);
}

id sub_1005DFFF8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BrickPlaceholderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1005E009C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_artworkPlaceholder;
  type metadata accessor for ArtworkView();
  v3 = static ArtworkView.brickArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_supplementaryTextPlaceholder;
  type metadata accessor for Placeholder();
  v5 = static Placeholder.titleText.getter();
  v7 = sub_10025084C(v5, v6, UIFontTextStyleSubheadline);

  *(v1 + v4) = v7;
  *(v1 + OBJC_IVAR____TtC8AppStore20BrickPlaceholderView_wantsSupplementaryTextPlaceholder) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_1005E017C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(a1);
  v2 = static String.isNilOrEmpty(_:)();

  return (v2 & 1) == 0;
}

uint64_t sub_1005E01D8@<X0>(uint64_t (*a1)(void)@<X1>, double *a2@<X8>)
{
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ShelfLayoutContext.isFirstShelf.getter();
  if (result)
  {
    if (a1())
    {
      if (qword_10096E6D0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for StaticDimension();
      v10 = sub_1000056A8(v9, qword_1009D2490);
      *(a2 + 3) = v9;
      *(a2 + 4) = &protocol witness table for StaticDimension;
      v11 = sub_1000056E0(a2);
      v12 = *(*(v9 - 8) + 16);

      return v12(v11, v10, v9);
    }

    else
    {
      ShelfLayoutContext.contentPageGrid.getter();
      PageGrid.interRowSpace.getter();
      v14 = v13;
      result = (*(v5 + 8))(v7, v4);
      *(a2 + 3) = &type metadata for CGFloat;
      *(a2 + 4) = &protocol witness table for CGFloat;
      *a2 = v14;
    }
  }

  else
  {
    *(a2 + 3) = &type metadata for Double;
    *(a2 + 4) = &protocol witness table for Double;
    *a2 = 0.0;
  }

  return result;
}

uint64_t sub_1005E03E4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StaticDimension();
  v3 = sub_1000056A8(v2, qword_1009D2460);
  a1[3] = v2;
  a1[4] = &protocol witness table for StaticDimension;
  v4 = sub_1000056E0(a1);
  v5 = *(*(v2 - 8) + 16);

  return v5(v4, v3, v2);
}

uint64_t ChartOrCategoryBrickContext.init(model:in:)(void *a1, uint64_t a2)
{
  sub_10002C0AC(a1, v4);
  ChartOrCategoryBrickContext.init(model:fontStyles:in:)();
  return sub_100007000(a1);
}

uint64_t sub_1005E0518@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FontUseCase();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1005E0580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for FontUseCase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005E05F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for FontUseCase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005E0668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for FontUseCase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005E06DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for FontUseCase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005E0750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for FontUseCase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005E07C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ChartOrCategoryBrickContext.BrickType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for ChartOrCategoryBrickContext.BrickType.standard(_:))
  {
    v10 = type metadata accessor for StandardChartOrCategoryBrickFontStyles(0);
    a1[3] = v10;
    a1[4] = sub_1005E1120(&qword_10098E310, type metadata accessor for StandardChartOrCategoryBrickFontStyles, &unk_1007D8658);
    v11 = sub_1000056E0(a1);
    if (qword_10096E418 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for FontUseCase();
    v13 = sub_1000056A8(v12, qword_1009D1BC8);
    v14 = *(*(v12 - 8) + 16);
    v14(v11, v13, v12);
    v15 = v10[5];
    if (qword_10096E420 != -1)
    {
      swift_once();
    }

    v16 = sub_1000056A8(v12, qword_1009D1BE0);
    v14((v11 + v15), v16, v12);
    v17 = v10[6];
    if (qword_10096E428 != -1)
    {
      swift_once();
    }

    v18 = sub_1000056A8(v12, qword_1009D1BF8);
    v14((v11 + v17), v18, v12);
    v19 = v10[7];
    if (qword_10096E430 != -1)
    {
      swift_once();
    }

    v20 = sub_1000056A8(v12, qword_1009D1C10);
    v14((v11 + v19), v20, v12);
    v21 = v10[8];
    if (qword_10096E438 != -1)
    {
      swift_once();
    }

    v22 = sub_1000056A8(v12, qword_1009D1C28);
    v14((v11 + v21), v22, v12);
    v23 = v10[9];
    if (qword_10096E440 != -1)
    {
      swift_once();
    }

    v24 = qword_1009D1C40;
LABEL_29:
    v35 = sub_1000056A8(v12, v24);
    return (v14)(v11 + v23, v35, v12);
  }

  if (v9 == enum case for ChartOrCategoryBrickContext.BrickType.search(_:))
  {
    v25 = type metadata accessor for SearchChartOrCategoryBrickFontStyles(0);
    a1[3] = v25;
    a1[4] = sub_1005E1120(&qword_10098E318, type metadata accessor for SearchChartOrCategoryBrickFontStyles, &unk_1007D8608);
    v11 = sub_1000056E0(a1);
    if (qword_10096E418 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for FontUseCase();
    v26 = sub_1000056A8(v12, qword_1009D1BC8);
    v14 = *(*(v12 - 8) + 16);
    v14(v11, v26, v12);
    v27 = v25[5];
    if (qword_10096E420 != -1)
    {
      swift_once();
    }

    v28 = sub_1000056A8(v12, qword_1009D1BE0);
    v14((v11 + v27), v28, v12);
    v29 = v25[6];
    if (qword_10096E448 != -1)
    {
      swift_once();
    }

    v30 = sub_1000056A8(v12, qword_1009D1C58);
    v14((v11 + v29), v30, v12);
    v31 = v25[7];
    if (qword_10096E450 != -1)
    {
      swift_once();
    }

    v32 = sub_1000056A8(v12, qword_1009D1C70);
    v14((v11 + v31), v32, v12);
    v33 = v25[8];
    if (qword_10096E458 != -1)
    {
      swift_once();
    }

    v34 = sub_1000056A8(v12, qword_1009D1C88);
    v14((v11 + v33), v34, v12);
    v23 = v25[9];
    if (qword_10096E460 != -1)
    {
      swift_once();
    }

    v24 = qword_1009D1CA0;
    goto LABEL_29;
  }

  v37 = type metadata accessor for StandardChartOrCategoryBrickFontStyles(0);
  a1[3] = v37;
  a1[4] = sub_1005E1120(&qword_10098E310, type metadata accessor for StandardChartOrCategoryBrickFontStyles, &unk_1007D8658);
  v38 = sub_1000056E0(a1);
  if (qword_10096E418 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for FontUseCase();
  v40 = sub_1000056A8(v39, qword_1009D1BC8);
  v41 = *(*(v39 - 8) + 16);
  v41(v38, v40, v39);
  v42 = v37[5];
  if (qword_10096E420 != -1)
  {
    swift_once();
  }

  v43 = sub_1000056A8(v39, qword_1009D1BE0);
  v41((v38 + v42), v43, v39);
  v44 = v37[6];
  if (qword_10096E428 != -1)
  {
    swift_once();
  }

  v45 = sub_1000056A8(v39, qword_1009D1BF8);
  v41((v38 + v44), v45, v39);
  v46 = v37[7];
  if (qword_10096E430 != -1)
  {
    swift_once();
  }

  v47 = sub_1000056A8(v39, qword_1009D1C10);
  v41((v38 + v46), v47, v39);
  v48 = v37[8];
  if (qword_10096E438 != -1)
  {
    swift_once();
  }

  v49 = sub_1000056A8(v39, qword_1009D1C28);
  v41((v38 + v48), v49, v39);
  v50 = v37[9];
  if (qword_10096E440 != -1)
  {
    swift_once();
  }

  v51 = sub_1000056A8(v39, qword_1009D1C40);
  v41((v38 + v50), v51, v39);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1005E1120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005E11A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontUseCase();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1005E1224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontUseCase();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1005E1294(uint64_t a1)
{
  result = type metadata accessor for FontUseCase();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1005E1328(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for PerformanceTestCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v46 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v35 - v11;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = *(v3 + OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_articleViewController);
  type metadata accessor for ArticleDiffablePageViewController(0);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v45 = v15;
    v18 = [v17 collectionView];
    if (v18)
    {
      v44 = v18;
      sub_10002C0AC(a2, v49);
      v43 = ObjectType;
      v38 = *(v8 + 16);
      v38(v14, a1, v7);
      v37 = a1;
      v19 = *(v8 + 80);
      v20 = (v19 + 64) & ~v19;
      v40 = v9 + 7;
      v42 = v17;
      v21 = swift_allocObject();
      sub_100005A38(v49, v21 + 16);
      *(v21 + 56) = v44;
      v36 = *(v8 + 32);
      v41 = v21;
      v36(v21 + v20, v14, v7);
      *(v21 + ((v9 + 7 + v20) & 0xFFFFFFFFFFFFFFF8)) = v43;
      sub_10002C0AC(a2, v48);
      v22 = v47;
      v23 = v37;
      v24 = v38;
      v38(v47, v37, v7);
      v25 = swift_allocObject();
      v39 = v25;
      sub_100005A38(v48, v25 + 16);
      v26 = v25 + ((v19 + 56) & ~v19);
      v27 = v36;
      v36(v26, v22, v7);
      v28 = v46;
      v24(v46, v23, v7);
      v29 = (v19 + 24) & ~v19;
      v30 = (v40 + v29) & 0xFFFFFFFFFFFFFFF8;
      v31 = swift_allocObject();
      *(v31 + 16) = v42;
      v27(v31 + v29, v28, v7);
      *(v31 + v30) = v43;
      v32 = v45;
      v33 = v44;
      sub_10021CE9C(sub_1005E1DC8, v41, sub_1001FE008, v39, sub_1005E1E5C, v31);
    }

    else
    {
      sub_10002A400(a2, a2[3]);
      dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
      v34 = v45;
    }
  }

  else
  {
    sub_10002A400(a2, a2[3]);
    dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
  }
}

void sub_1005E1778(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  sub_10002A400(a1, a1[3]);
  if (sub_10021DCD4(a2))
  {
    [a2 setContentOffset:{0.0, 0.0}];
    if (qword_10096D140 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for OSLogger();
    sub_1000056A8(v9, qword_1009CE278);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0x2074736554;
    v10._object = 0xE500000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    v11 = PerformanceTestCase.name.getter();
    MetatypeMetadata = &type metadata for String;
    v16[0] = v11;
    v16[1] = v12;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v16);
    v13._countAndFlagsBits = 0xD000000000000013;
    v13._object = 0x8000000100807810;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v16[0] = a4;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v16);
    v14._countAndFlagsBits = 0xD00000000000002BLL;
    v14._object = 0x8000000100807830;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    MetatypeMetadata = sub_1005E1EEC();
    v16[0] = a2;
    a2;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v16);
    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    UIScrollView.perform(_:using:)(a3, a1);
  }

  else
  {
    sub_10002A400(a1, a1[3]);
    dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
  }
}

BOOL sub_1005E1A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v6 = *(a1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController);
  if (v6)
  {
    type metadata accessor for JULoadingViewController();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v9 = v7 == 0;
  v10 = type metadata accessor for OSLogger();
  sub_1000056A8(v10, qword_1009CE278);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x2074736554;
  v11._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v12 = PerformanceTestCase.name.getter();
  MetatypeMetadata = &type metadata for String;
  v20[0] = v12;
  v20[1] = v13;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v20);
  v14._object = 0x8000000100807A90;
  v14._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  MetatypeMetadata = swift_getMetatypeMetadata();
  v20[0] = a3;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v20);
  v15._countAndFlagsBits = 0x646165527369202CLL;
  v15._object = 0xEB00000000203A79;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  MetatypeMetadata = &type metadata for Bool;
  LOBYTE(v20[0]) = v7 == 0;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v20);
  v16._object = 0x800000010081C520;
  v16._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  v17 = sub_10002849C(&qword_100979948, &qword_1007C0720);
  MetatypeMetadata = sub_10002849C(&unk_100979950, qword_1007C0728);
  v20[0] = v17;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v20);
  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return v9;
}

void sub_1005E1DC8()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1005E1778((v0 + 16), v3, v0 + v2, v4);
}

BOOL sub_1005E1E5C()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005E1A80(v3, v0 + v2, v4);
}

unint64_t sub_1005E1EEC()
{
  result = qword_100978E50;
  if (!qword_100978E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100978E50);
  }

  return result;
}