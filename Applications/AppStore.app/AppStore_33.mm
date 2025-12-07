void sub_1003A6474()
{
  *(v0 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starColor) = 0;
  v1 = v0 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starPadding;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starImageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_starLayer;
  *(v0 + v3) = [objc_allocWithZone(CAReplicatorLayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1003A6550()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.17 controlPoint2:{0.0, 0.83, 0.83}];
  qword_100982D90 = result;
  return result;
}

uint64_t sub_1003A659C()
{
  v0 = type metadata accessor for TimingCurve();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&qword_100982E40, &qword_1007BC540);
  sub_100005644(v4, qword_100982D98);
  sub_1000056A8(v4, qword_100982D98);
  v6[0] = 0x3FF0000000000000;
  v6[1] = 0;
  *v3 = xmmword_1007CA790;
  (*(v1 + 104))(v3, enum case for TimingCurve.controlPoints(_:), v0);
  return Interpolator.init(fromValue:toValue:curve:)();
}

uint64_t sub_1003A6708(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, a3);
  sub_1000056A8(v4, a3);
  v5 = type metadata accessor for FontSource();
  v10[3] = v5;
  v10[4] = &protocol witness table for FontSource;
  v6 = sub_1000056E0(v10);
  if (qword_10096E3F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for FontUseCase();
  v8 = sub_1000056A8(v7, qword_1009D1B68);
  (*(*(v7 - 8) + 16))(v6, v8, v7);
  (*(*(v5 - 8) + 104))(v6, enum case for FontSource.useCase(_:), v5);
  return StaticDimension.init(_:scaledLike:)();
}

char *sub_1003A6854(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem] = 0;
  v9 = &v4[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_pagingProgress];
  *v9 = 0;
  *(v9 + 4) = 514;
  v9[10] = 0;
  v10 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView;
  type metadata accessor for HeroCarouselItemBackgroundView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_gradientView;
  type metadata accessor for HeroGradientView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView____lazy_storage___moduleGradientView] = 0;
  v12 = &v4[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayBottomInset] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for HeroCarouselItemView();
  v13 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v17 setClipsToBounds:1];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_gradientView]];
  v18 = sub_1003A6A98();
  [v17 addSubview:v18];

  v19 = *&v17[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
  if (v19)
  {
    v20 = v19;
    [v17 addSubview:v20];
  }

  return v17;
}

char *sub_1003A6A98()
{
  v1 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView____lazy_storage___moduleGradientView;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView____lazy_storage___moduleGradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView____lazy_storage___moduleGradientView];
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    v6 = objc_allocWithZone(type metadata accessor for ModuleOverlayGradientBlurView(0));
    v7 = v0;
    v8 = sub_1006CE96C(v5 == 1);
    v9 = *&v0[v1];
    *&v7[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1003A6B4C()
{
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    if (qword_10096DB08 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for StaticDimension();
    sub_1000056A8(v8, qword_100982DC8);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    if (qword_10096DB00 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for StaticDimension();
    sub_1000056A8(v9, qword_100982DB0);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    (*(v2 + 8))(v5, v1);
    sub_1003A6D64();
  }
}

double sub_1003A6D64()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView);
  v2 = 0.0;
  if (v1)
  {
    type metadata accessor for CarouselItemSingleModuleOverlay(0);
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = v1;
      sub_1004D861C();
      v7 = v6;
      [v4 frame];
      sub_10026F884(v8, v9);
LABEL_6:
      v17 = v10;

      return v7 + v17 + *(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayBottomInset);
    }

    type metadata accessor for CarouselItemCollectionModuleOverlay(0);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = v1;
      sub_1004D861C();
      v7 = v14;
      [v12 frame];
      sub_1006B19B8(v15, v16);
      goto LABEL_6;
    }
  }

  return v2;
}

void sub_1003A6F50()
{
  v1 = v0;
  v2 = type metadata accessor for HeroCarouselItemOverlay.OverlayType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeroCarouselItemView();
  v48.receiver = v0;
  v48.super_class = v6;
  objc_msgSendSuper2(&v48, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_gradientView];
  [v1 bounds];
  [v7 setFrame:?];
  v8 = *&v1[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView];
  [v1 bounds];
  [v8 setBounds:{0.0, 0.0}];
  [v1 bounds];
  MidX = CGRectGetMidX(v49);
  [v1 bounds];
  [v8 setCenter:{MidX, CGRectGetMidY(v50)}];
  v10 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView;
  v11 = *&v1[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1003A7630();
    [v12 setBounds:{0.0, 0.0, v13, v14}];

    v15 = *&v1[v10];
    if (v15)
    {
      v16 = v15;
      [v16 setCenter:sub_1003A7930(v17)];
    }
  }

  if (*&v1[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem])
  {

    v18 = HeroCarouselItem.overlay.getter();

    if (v18)
    {
      HeroCarouselItemOverlay.overlayType.getter();

      v19 = HeroCarouselItemOverlay.OverlayType.displaysModuleGradient.getter();
      (*(v3 + 8))(v5, v2);
      if (v19)
      {
        [v1 bounds];
        CGRectGetHeight(v51);
        sub_1003A6B4C();
        v20 = sub_1003A6A98();
        [v1 bounds];
        CGRect.subtracting(insets:)();
        [v20 setFrame:?];

        v21 = sub_1003A6D64();
        sub_1003A6B4C();
        v23 = *&v1[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView____lazy_storage___moduleGradientView];
        v24 = OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_effectVisibilityThreshold;
        *&v23[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_effectVisibilityThreshold] = v21 / v22;
        if ((v23[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_style] & 1) == 0)
        {
          v47 = _swiftEmptyArrayStorage;
          v25 = v23;
          sub_100144108(0, 5, 0);
          v26 = v47;
          v27 = *&v23[v24];
          v28 = 0.0;
          v30 = v47[2];
          v29 = v47[3];
          v31 = v29 >> 1;
          v32 = v30 + 1;
          if (v29 >> 1 <= v30)
          {
            *&v46 = 0.0;
            sub_100144108((v29 > 1), v30 + 1, 1);
            v28 = *&v46;
            v26 = v47;
            v29 = v47[3];
            v31 = v29 >> 1;
          }

          *(v26 + 16) = v32;
          *(v26 + 8 * v30 + 32) = v28 * v27;
          v33 = *&v23[v24];
          v47 = v26;
          v34 = v30 + 2;
          if (v31 <= v32)
          {
            *&v46 = v33;
            sub_100144108((v29 > 1), v34, 1);
            v33 = *&v46;
            v26 = v47;
          }

          *(v26 + 16) = v34;
          *(v26 + 8 * v32 + 32) = 0.25 * v33;
          v35 = *&v23[v24];
          v47 = v26;
          v37 = *(v26 + 16);
          v36 = *(v26 + 24);
          v38 = v36 >> 1;
          v39 = v37 + 1;
          if (v36 >> 1 <= v37)
          {
            *&v46 = v35;
            sub_100144108((v36 > 1), v37 + 1, 1);
            v35 = *&v46;
            v26 = v47;
            v36 = v47[3];
            v38 = v36 >> 1;
          }

          *(v26 + 16) = v39;
          *(v26 + 8 * v37 + 32) = 0.5 * v35;
          v40 = *&v23[v24];
          v47 = v26;
          v41 = v37 + 2;
          if (v38 <= v39)
          {
            *&v46 = v40;
            sub_100144108((v36 > 1), v41, 1);
            v40 = *&v46;
            v26 = v47;
          }

          *(v26 + 16) = v41;
          *(v26 + 8 * v39 + 32) = 0.75 * v40;
          v42 = *&v23[v24];
          v43 = 1.0;
          v47 = v26;
          v45 = *(v26 + 16);
          v44 = *(v26 + 24);
          if (v45 >= v44 >> 1)
          {
            *&v46 = 1.0;
            sub_100144108((v44 > 1), v45 + 1, 1);
            v43 = *&v46;
            v26 = v47;
          }

          *(v26 + 16) = v45 + 1;
          *(v26 + 8 * v45 + 32) = v43 * v42;
          sub_1001C0B48(v26);
        }
      }
    }
  }
}

double sub_1003A7484(id a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HeroCarouselItemView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    return result;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    [v1 setNeedsLayout];
  }

  return result;
}

double sub_1003A7630()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid.Direction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v9 = type metadata accessor for PageGrid();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 bounds];
  v23[2] = v15;
  v23[3] = v14;
  v23[1] = v16;
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2);
  [v1 bounds];
  (*(v3 + 16))(v5, v8, v2);
  v17 = 0.0;
  sub_10069F96C(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v3 + 8))(v8, v2);
  PageGrid.horizontalMargins.getter();
  (*(v10 + 8))(v13, v9);
  CGRect.subtracting(insets:)();
  v20 = *&v1[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
  if (v20)
  {
    [v20 sizeThatFits:{v18, v19}];
    return v21;
  }

  return v17;
}

double sub_1003A7930(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v47 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100982E48, &unk_1007CA7E0);
  __chkstk_darwin(v7 - 8);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for PageGrid.Direction();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v19 = type metadata accessor for PageGrid();
  v20 = *(v19 - 8);
  *&v21 = __chkstk_darwin(v19).n128_u64[0];
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 bounds];
  v52 = v25;
  v53 = v24;
  (*(v13 + 104))(v18, enum case for PageGrid.Direction.vertical(_:), v12);
  [v2 bounds];
  (*(v13 + 16))(v15, v18, v12);
  v56 = 0.0;
  sub_10069F96C(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v13 + 8))(v18, v12);
  PageGrid.horizontalMargins.getter();
  (*(v20 + 8))(v23, v19);
  CGRect.subtracting(insets:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = *&v2[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
  if (v34)
  {
    [v34 bounds];
    v56 = v35 * 0.5;
  }

  if (!*&v2[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem] || (, v36 = HeroCarouselItem.overlay.getter(), , !v36))
  {
    (*(v54 + 56))(v11, 1, 1, v55);
    sub_10002B894(v11, &qword_100982E48, &unk_1007CA7E0);
    goto LABEL_9;
  }

  v37 = v47;
  HeroCarouselItemOverlay.displayOptions.getter();

  v38 = v50;
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  (*(v48 + 8))(v37, v49);
  v39 = [v2 traitCollection];
  HeroCarouselItemOverlay.DisplayOptions.Placement.value(with:)();

  v41 = v54;
  v40 = v55;
  v42 = *(v54 + 8);
  v42(v38, v55);
  (*(v41 + 56))(v11, 0, 1, v40);
  v43 = v51;
  sub_1003A95F0(v11, v51);
  v44 = (*(v41 + 88))(v43, v40);
  if (v44 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
LABEL_9:
    v58.origin.x = v27;
    v58.origin.y = v29;
    v58.size.width = v31;
    v58.size.height = v33;
    MidX = v56 + CGRectGetMinX(v58);
    goto LABEL_10;
  }

  if (v44 != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
  {
    if (v44 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
    {
      v60.origin.x = v27;
      v60.origin.y = v29;
      v60.size.width = v31;
      v60.size.height = v33;
      MidX = CGRectGetMaxX(v60) - v56;
      goto LABEL_10;
    }

    v42(v43, v40);
    goto LABEL_9;
  }

  v57.origin.x = v27;
  v57.origin.y = v29;
  v57.size.width = v31;
  v57.size.height = v33;
  MidX = CGRectGetMidX(v57);
LABEL_10:
  v59.origin.x = v27;
  v59.origin.y = v29;
  v59.size.width = v31;
  v59.size.height = v33;
  CGRectGetMaxY(v59);
  return MidX;
}

id sub_1003A7FA0()
{
  v1 = v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_pagingProgress;
  if (*(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_pagingProgress + 8) && *(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_pagingProgress + 8) != 1)
  {

    return [*(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView) setTransform:{&v13, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    return [*(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView) setTransform:{&v13, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];
  }

  if (*(v1 + 8) && *(v1 + 8) == 1)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      if (*(v1 + 9))
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          v6 = *v1;
          goto LABEL_17;
        }
      }

      else
      {
      }

      v10 = 1.0 - *v1;
      goto LABEL_22;
    }
  }

  if (*(v1 + 9))
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      goto LABEL_16;
    }

    v10 = *v1;
LABEL_22:
    v7 = *(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView);
    [v7 center];
    v9 = v10 * (v12 * 0.3);
    goto LABEL_23;
  }

LABEL_16:
  v6 = 1.0 - *v1;
LABEL_17:
  v7 = *(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView);
  [v7 center];
  v9 = v8 * -0.3 * v6;
LABEL_23:
  CGAffineTransformMakeTranslation(&v13, v9, 0.0);
  return [v7 setTransform:{&v13, *&v13.a, *&v13.c, *&v13.tx}];
}

void sub_1003A82A4()
{
  v1 = v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_pagingProgress;
  if (*(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_pagingProgress + 8) && *(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_pagingProgress + 8) != 1)
  {

LABEL_9:
    v6 = *(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView);
    if (v6)
    {
      *&v28.a = 0x3FF0000000000000uLL;
      v28.c = 0.0;
      v28.d = 1.0;
      *&v28.tx = 0uLL;
      [v6 setTransform:&v28];
    }

    return;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    goto LABEL_9;
  }

  v3 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView;
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView);
  if (v4)
  {
    if (*(v1 + 8) && *(v1 + 8) == 1)
    {
      v5 = v4;

      goto LABEL_12;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v8 = v4;

    if (v7)
    {
LABEL_12:
      if (*(v1 + 9))
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) == 0)
        {
          v17 = *v1;
          [v4 center];
          v16 = v18 * -0.3 * v17;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v14 = 1.0 - *v1;
      [v4 center];
      v16 = v14 * (v15 * 0.3);
LABEL_21:
      CGAffineTransformMakeTranslation(&v28, v16, 0.0);
      [v4 setTransform:&v28];
LABEL_25:

      goto LABEL_26;
    }

    if (*(v1 + 9))
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        v10 = *v1;
        [v8 center];
        v12 = v10 * (v11 * 0.3);
LABEL_24:
        CGAffineTransformMakeTranslation(&v28, v12, 0.0);
        [v8 setTransform:&v28];
        goto LABEL_25;
      }
    }

    else
    {
    }

    v19 = 1.0 - *v1;
    [v8 center];
    v12 = v20 * -0.3 * v19;
    goto LABEL_24;
  }

LABEL_26:
  if (*(v1 + 10) == 1)
  {
    v21 = *(v0 + v3);
    if (v21)
    {
      if (*(v1 + 9))
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v23 = v21;

        if ((v22 & 1) == 0)
        {
          if (qword_10096DAF8 != -1)
          {
            swift_once();
          }

          v24 = sub_10002849C(&qword_100982E40, &qword_1007BC540);
          sub_1000056A8(v24, qword_100982D98);
          Interpolator.value(forInput:)();
          a = v28.a;
          v21 = v23;
LABEL_37:
          [v21 setAlpha:a];

          return;
        }
      }

      else
      {
        v26 = v21;
      }

      if (qword_10096DAF8 != -1)
      {
        swift_once();
      }

      v27 = sub_10002849C(&qword_100982E40, &qword_1007BC540);
      sub_1000056A8(v27, qword_100982D98);
      Interpolator.value(forInput:)();
      a = v28.a;
      goto LABEL_37;
    }
  }
}

void sub_1003A87C4(int a1, double a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
  v6 = BYTE1(a1);
  if (v5)
  {
    if (BYTE1(a1))
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v8 = v5;

      v9 = 1.0;
      if (v7)
      {
        v9 = 0.0;
      }
    }

    else
    {
      v8 = v5;

      v9 = 0.0;
    }

    [v8 setAlpha:v9];
  }

  if (qword_10096DAF0 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100982D90 timingParameters:0.33];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a2;
  *(v11 + 32) = a1;
  *(v11 + 34) = BYTE2(a1) & 1;
  v16[4] = sub_1003A95CC;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100007A08;
  v16[3] = &unk_1008C0810;
  v12 = _Block_copy(v16);
  v13 = v2;

  [v10 addAnimations:v12];
  _Block_release(v12);
  if (v6)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v15 = 0.166;
    if ((v14 & 1) == 0)
    {
      v15 = 0.0;
    }
  }

  else
  {

    v15 = 0.166;
  }

  [v10 startAnimationAfterDelay:v15];
}

void sub_1003A8A80(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView);
  if (v2)
  {
    if (HIBYTE(a2))
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v2;

      v4 = 0.0;
      if (v3)
      {
        v4 = 1.0;
      }
    }

    else
    {
      v5 = v2;

      v4 = 1.0;
    }

    [v5 setAlpha:v4];
  }
}

double sub_1003A8B94(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v58 - v12;
  __chkstk_darwin(v14);
  v63 = &v58 - v15;
  v16 = type metadata accessor for HeroCarouselItemOverlay.OverlayType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem;
  *&v2[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem] = a1;

  v64 = a2;
  sub_1003A199C(a1, a2);
  if (*&v2[v20] && (, v21 = HeroCarouselItem.overlay.getter(), , v21) && (HeroCarouselItemOverlay.overlayType.getter(), , v22 = HeroCarouselItemOverlay.OverlayType.displaysModuleGradient.getter(), (*(v17 + 8))(v19, v16), (v22 & 1) != 0))
  {
    v23 = sub_1003A6A98();
    [v23 setHidden:0];

    if (HeroCarouselItem.overlay.getter())
    {
      HeroCarouselItemOverlay.displayOptions.getter();

      HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
      (*(v58 + 8))(v8, v59);
      v25 = v61;
      v24 = v62;
      v26 = v63;
      (*(v61 + 32))(v63, v13, v62);
      v27 = *&v3[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView____lazy_storage___moduleGradientView];
      v28 = v60;
      (*(v25 + 16))(v60, v26, v24);
      v29 = OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_alignment;
      swift_beginAccess();
      v30 = *(v25 + 24);
      v31 = v27;
      v30(&v27[v29], v28, v24);
      swift_endAccess();
      sub_1006CF0D8();

      v32 = *(v25 + 8);
      v32(v28, v24);
      v32(v63, v24);
    }
  }

  else
  {
    v33 = sub_1003A6A98();
    [v33 setHidden:1];
  }

  v34 = v64;
  v35 = sub_1003A9374();
  v37 = v35;
  v38 = v36;
  v39 = &v3[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
  v40 = *&v3[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
  if (v35)
  {
    if (v35 == v40 || !v40)
    {
      *v39 = v35;
      *(v39 + 1) = v36;
      v41 = (v39 + 8);
      v42 = v35;

LABEL_13:
      [v3 addSubview:{v42, v58, v59}];

      goto LABEL_14;
    }
  }

  else if (!v40)
  {
    *v39 = 0;
    *(v39 + 1) = v36;
    v41 = (v39 + 8);
    v57 = 0;
    goto LABEL_14;
  }

  [*&v3[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView] removeFromSuperview];
  v43 = *v39;
  *v39 = v37;
  *(v39 + 1) = v38;
  v41 = (v39 + 8);
  v42 = v37;

  if (v37)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (HeroCarouselItem.overlay.getter() && (v45 = HeroCarouselItemOverlay.clickAction.getter(), , v45))
  {
    v46 = *v39;
    if (*v39)
    {
      v47 = *v41;
      ObjectType = swift_getObjectType();
      swift_unknownObjectWeakInit();
      v49 = swift_allocObject();
      *(v49 + 16) = v34;
      *(v49 + 24) = v45;
      v50 = *(v47 + 16);
      v51 = v46;

      v50(sub_1003A95C4, v49, ObjectType, v47);

      swift_unknownObjectWeakDestroy();
    }

    else
    {
    }
  }

  else
  {
    v52 = *v39;
    if (*v39)
    {
      v53 = *v41;
      v54 = swift_getObjectType();
      v55 = *(v53 + 16);
      v56 = v52;
      v55(0, 0, v54, v53);
    }
  }

  return result;
}

uint64_t sub_1003A915C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
  }

  sub_1005F9AF4(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

id sub_1003A92A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HeroCarouselItemView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1003A9374()
{
  v0 = type metadata accessor for HeroCarouselItemOverlay.OverlayType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HeroCarouselItem.overlay.getter())
  {
    HeroCarouselItemOverlay.overlayType.getter();
    v4 = (*(v1 + 88))(v3, v0);
    if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.materialText(_:))
    {
      type metadata accessor for CarouselItemMaterialTextOverlay(0);
      v5 = &off_1008BAAA0;
    }

    else if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.text(_:))
    {
      type metadata accessor for CarouselItemTextOverlay(0);
      v5 = &off_1008C8788;
    }

    else if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.lockup(_:))
    {
      type metadata accessor for CarouselItemLockupOverlay();
      v5 = &off_1008D1748;
    }

    else if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.collectionLockup(_:))
    {
      type metadata accessor for CarouselItemCollectionLockupOverlay(0);
      v5 = &off_1008C7FC8;
    }

    else if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.singleModule(_:))
    {
      type metadata accessor for CarouselItemSingleModuleOverlay(0);
      v5 = &off_1008BC518;
    }

    else
    {
      if (v4 != enum case for HeroCarouselItemOverlay.OverlayType.collectionModule(_:))
      {
        (*(v1 + 8))(v3, v0);
        v6 = 0;
        goto LABEL_16;
      }

      type metadata accessor for CarouselItemCollectionModuleOverlay(0);
      v5 = &off_1008CDBB8;
    }

    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    swift_getObjectType();
    (v5[4])();
LABEL_16:

    return v6;
  }

  return 0;
}

uint64_t sub_1003A95F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100982E48, &unk_1007CA7E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1003A9660()
{
  *(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem) = 0;
  v1 = v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_pagingProgress;
  *v1 = 0;
  *(v1 + 8) = 514;
  *(v1 + 10) = 0;
  v2 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView;
  type metadata accessor for HeroCarouselItemBackgroundView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_gradientView;
  type metadata accessor for HeroGradientView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView____lazy_storage___moduleGradientView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayBottomInset) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1003A97AC()
{
  type metadata accessor for ArcadeDownloadPackCard();
  sub_1003A98F0(&qword_100982E60, &type metadata accessor for ArcadeDownloadPackCard, &protocol conformance descriptor for ArcadeDownloadPackCard);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v6)
  {
    return 0.0;
  }

  v0 = ArcadeDownloadPackCard.numberOfPlaceholders.getter();
  if (v1)
  {
    v2 = ArcadeDownloadPackCard.lockups.getter();
    if (v2 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v3 = v0;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v4 = sub_1002F4FF4(v3, v6);

  return v4;
}

uint64_t sub_1003A98F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1003A9938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v42 = a2;
  v43 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for BreakoutDetails.TextAlignment();
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BreakoutDetails.Badge();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  BreakoutDetails.badge.getter();
  v17 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v4[v17], v10);
  swift_beginAccess();
  (*(v11 + 24))(&v4[v17], v16, v10);
  swift_endAccess();
  sub_10014999C(v13);
  v18 = *(v11 + 8);
  v18(v13, v10);
  v18(v16, v10);
  v19 = *&v4[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_titleLabel];
  BreakoutDetails.title.getter();
  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v19 setText:v21];

  v22 = *&v4[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_descriptionLabel];
  BreakoutDetails.description.getter();
  if (v23)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [v22 setText:v24];

  v25 = BreakoutDetails.callToActionButtonAction.getter();
  if (v25)
  {
    v26 = v25;
    Action.title.getter();
    v27 = *&v4[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton];
    if (v28)
    {
      v29 = String._bridgeToObjectiveC()();
    }

    else
    {
      v29 = 0;
    }

    [v27 setTitle:v29 forState:0];

    v33 = swift_allocObject();
    *(v33 + 16) = v39;
    *(v33 + 24) = v26;
    v34 = &v4[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler];
    v35 = *&v4[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler];
    v36 = *&v4[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler + 8];
    *v34 = sub_1003A9F78;
    v34[1] = v33;

    v31 = v35;
    v32 = v36;
  }

  else
  {
    [*&v4[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButton] setTitle:0 forState:0];
    v30 = &v4[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler];
    v31 = *&v4[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler];
    v32 = *&v4[OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler + 8];
    *v30 = 0;
    *(v30 + 1) = 0;
  }

  sub_10001F63C(v31, v32);
  BreakoutDetails.textAlignment.getter();
  BreakoutDetails.backgroundStyle.getter();
  sub_10014CA94(v42, v9, v6);
  (*(v41 + 8))(v6, v43);
  (*(v7 + 8))(v9, v40);
  return [v4 setNeedsLayout];
}

unint64_t sub_1003A9DD0()
{
  result = qword_100982E68;
  if (!qword_100982E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982E68);
  }

  return result;
}

uint64_t sub_1003A9E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
  }

  sub_1005F9AF4(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void sub_1003A9F80(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v121 = a2;
  v103 = a4;
  v7 = type metadata accessor for BreakoutDetails.Badge();
  v105 = *(v7 - 8);
  v106 = v7;
  __chkstk_darwin(v7);
  v104 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for LabelPlaceholderCompatibility();
  v115 = *(v119 - 8);
  __chkstk_darwin(v119);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CharacterSet();
  v111 = *(v11 - 8);
  v112 = v11;
  __chkstk_darwin(v11);
  v110 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BreakoutDetailsLayout.Metrics();
  v101 = *(v13 - 8);
  v102 = v13;
  __chkstk_darwin(v13);
  v100 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v120 = &v96 - v16;
  v17 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = &v96 - v23;
  v122 = [a3 traitCollection];
  BreakoutDetails.backgroundStyle.getter();
  (*(v18 + 104))(v20, enum case for BreakoutDetails.BackgroundStyle.material(_:), v17);
  sub_1003AAE98(&qword_100982E70, &type metadata accessor for BreakoutDetails.BackgroundStyle, &protocol conformance descriptor for BreakoutDetails.BackgroundStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v143 != v140)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v25 = *(v18 + 8);
  v25(v20, v17);
  v25(v24, v17);

  v26 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_100146D98(v121, v120);
  v117 = sub_1000367E8();
  v118 = v26;
  v27 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v28 = BreakoutDetails.title.getter();
  if (!v29)
  {
    v34 = v10;
    v30 = a1;
    goto LABEL_7;
  }

  v30 = a1;
  *&v143 = v28;
  *(&v143 + 1) = v29;
  v31 = v110;
  static CharacterSet.excessiveLeading.getter();
  sub_10007FED4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v33 = v32;
  (*(v111 + 8))(v31, v112);
  if (v33)
  {
    v34 = v10;

LABEL_7:
    v35 = v119;
    goto LABEL_12;
  }

  [v27 lineHeight];
  v37 = v36;

  v38 = ceil(v37 * 1.3);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v34 = v10;
  v35 = v119;
LABEL_12:
  BreakoutDetails.title.getter();
  v39 = type metadata accessor for Feature();
  v144 = v39;
  v109 = sub_1003AAE98(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v145 = v109;
  v40 = sub_1000056E0(&v143);
  v41 = *(v39 - 8);
  v42 = *(v41 + 104);
  v116 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v113 = v42;
  v114 = v41 + 104;
  (v42)(v40);
  v43 = v27;
  isFeatureEnabled(_:)();
  sub_100007000(&v143);
  v44 = v34;
  v107 = v43;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v115 = *(v115 + 8);
  (v115)(v34, v35);
  v45 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v46 = BreakoutDetails.description.getter();
  v108 = v44;
  if (!v47)
  {
    v51 = v45;
    goto LABEL_16;
  }

  *&v140 = v46;
  *(&v140 + 1) = v47;
  v48 = v110;
  static CharacterSet.excessiveLeading.getter();
  sub_10007FED4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v50 = v49;
  (*(v111 + 8))(v48, v112);
  if (v50)
  {
    v51 = v45;

LABEL_16:
    v52 = v116;
    goto LABEL_21;
  }

  [v107 lineHeight];
  v54 = v53;

  v55 = ceil(v54 * 1.3);
  v52 = v116;
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_44;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v51 = v45;
LABEL_21:
  BreakoutDetails.description.getter();
  v56 = v109;
  v141 = v39;
  v142 = v109;
  v57 = sub_1000056E0(&v140);
  v113(v57, v52, v39);
  v58 = v51;
  v98 = v39;
  v59 = v56;
  v60 = v58;
  isFeatureEnabled(_:)();
  sub_100007000(&v140);
  v61 = v108;
  v97 = v60;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v62 = v119;
  (v115)(v61, v119);
  v63 = v104;
  v99 = v30;
  BreakoutDetails.badge.getter();
  v65 = v105;
  v64 = v106;
  v66 = (*(v105 + 88))(v63, v106);
  if (v66 == enum case for BreakoutDetails.Badge.text(_:))
  {
    (*(v65 + 96))(v63, v64);
    static UIFont.preferredFont(forUseWith:compatibleWith:)();
    v67 = v98;
    *(&v138 + 1) = v98;
    v139 = v59;
    v68 = sub_1000056E0(&v137);
    v69 = v113;
    v113(v68, v116, v67);
    isFeatureEnabled(_:)();
    sub_100007000(&v137);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    (v115)(v61, v62);
    v70 = *(&v135 + 1);
    v71 = v136;
    v72 = sub_10002A400(&v134, *(&v135 + 1));
    *(&v138 + 1) = v70;
    v139 = *(v71 + 8);
    v73 = sub_1000056E0(&v137);
    (*(*(v70 - 8) + 16))(v73, v72, v70);
    sub_100007000(&v134);
    v74 = v69;
    if (!BreakoutDetails.callToActionButtonAction.getter())
    {
      goto LABEL_38;
    }
  }

  else
  {
    v67 = v98;
    if (v66 != enum case for BreakoutDetails.Badge.wordmark(_:))
    {
      v61 = v108;
      v74 = v113;
      if (v66 == enum case for BreakoutDetails.Badge.none(_:))
      {
        v139 = 0;
        v137 = 0u;
        v138 = 0u;
        if (BreakoutDetails.callToActionButtonAction.getter())
        {
          goto LABEL_29;
        }
      }

      else
      {
        v139 = 0;
        v137 = 0u;
        v138 = 0u;
        (*(v65 + 8))(v63, v64);
        if (BreakoutDetails.callToActionButtonAction.getter())
        {
          goto LABEL_29;
        }
      }

LABEL_38:
      v136 = 0;
      v134 = 0u;
      v135 = 0u;
      goto LABEL_39;
    }

    v75 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v76 = LayoutViewPlaceholder.init(representing:)();
    *(&v138 + 1) = v75;
    v139 = &protocol witness table for LayoutViewPlaceholder;
    *&v137 = v76;
    v61 = v108;
    v74 = v113;
    if (!BreakoutDetails.callToActionButtonAction.getter())
    {
      goto LABEL_38;
    }
  }

LABEL_29:
  v77 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v78 = Action.title.getter();
  if (!v79)
  {
    goto LABEL_36;
  }

  *&v134 = v78;
  *(&v134 + 1) = v79;
  v80 = v110;
  static CharacterSet.excessiveLeading.getter();
  sub_10007FED4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v82 = v81;
  (*(v111 + 8))(v80, v112);
  if (v82)
  {

    goto LABEL_36;
  }

  [v77 lineHeight];
  v84 = v83;

  v85 = ceil(v84 * 1.3);
  if ((*&v85 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_49;
  }

  if (v85 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v85 >= 9.22337204e18)
  {
LABEL_51:
    __break(1u);
    return;
  }

LABEL_36:
  Action.title.getter();
  *(&v135 + 1) = v67;
  v136 = v109;
  v86 = sub_1000056E0(&v134);
  v74(v86, v116, v67);
  v87 = v77;
  isFeatureEnabled(_:)();
  sub_100007000(&v134);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();

  (v115)(v61, v119);
LABEL_39:
  v88 = v101;
  v89 = v102;
  (*(v101 + 16))(v100, v120, v102);
  sub_10002C0AC(&v143, &v133);
  sub_10002C0AC(&v140, &v132);
  v131 = 0;
  v130 = 0u;
  *&v129[40] = 0u;
  sub_100031660(&v137, v129, &qword_100975610, &qword_1007B5690);
  sub_100031660(&v134, v123, &unk_10097E890, qword_1007B4270);
  v90 = v124;
  if (v124)
  {
    v91 = v125;
    v92 = sub_10002A400(v123, v124);
    *(&v127 + 1) = v90;
    v128 = *(v91 + 8);
    v93 = sub_1000056E0(&v126);
    (*(*(v90 - 8) + 16))(v93, v92, v90);
    sub_100007000(v123);
  }

  else
  {
    sub_10002B894(v123, &unk_10097E890, qword_1007B4270);
    v126 = 0u;
    v127 = 0u;
    v128 = 0;
  }

  v94 = type metadata accessor for BreakoutDetailsLayout();
  v95 = v103;
  v103[3] = v94;
  v95[4] = sub_1003AAE98(&qword_100982E78, &type metadata accessor for BreakoutDetailsLayout, &protocol conformance descriptor for BreakoutDetailsLayout);
  v95[5] = sub_1003AAE98(&qword_100982E80, &type metadata accessor for BreakoutDetailsLayout, &protocol conformance descriptor for BreakoutDetailsLayout);
  sub_1000056E0(v95);
  BreakoutDetailsLayout.init(metrics:titleLabel:descriptionLabel:badgeText:badgeWordmark:callToActionButton:)();

  sub_10002B894(&v134, &unk_10097E890, qword_1007B4270);
  sub_100007000(&v140);
  sub_100007000(&v143);
  (*(v88 + 8))(v120, v89);
  sub_10002B894(&v137, &qword_100975610, &qword_1007B5690);
}

uint64_t sub_1003AAE98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003AAEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id a6, void *a7, char a8)
{
  v14 = a5;
  if (!a5)
  {
    if (!*(a1 + 16))
    {
      return;
    }

    v17 = a8;
    v18 = sub_1003D8ACC();
    if ((v19 & 1) == 0)
    {
      return;
    }

    sub_1000073E8(*(a1 + 56) + 32 * v18, v33);
    sub_100005744(0, &qword_1009730E0, UIFont_ptr);
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
    _bridgeAnyObjectToAny(_:)();
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
    sub_10003D444(v33);
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

  if (v29 & 1) != 0 && *(a1 + 16) && (v26 = sub_1003D8ACC(), (v27) && (sub_1000073E8(*(a1 + 56) + 32 * v26, v33), sub_100005744(0, &unk_100993000, NSParagraphStyle_ptr), (swift_dynamicCast()))
  {
    if (NSParagraphStyle.isListItem.getter())
    {
      v28 = static NSParagraphStyle.listItem(withFont:)();
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

void *sub_1003AB2E4(void *result, uint64_t a2, uint64_t a3, int a4, id a5, uint64_t a6)
{
  if (result[3])
  {
    return [a5 addAttribute:NSForegroundColorAttributeName value:a6 range:{a2, a3}];
  }

  return result;
}

id sub_1003AB414()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for VisualEffectContainerView();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore25VisualEffectContainerView_embeddedView];
  [v0 bounds];
  [v1 sizeThatFits:{CGRectGetWidth(v10), 1.79769313e308}];
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  if (Width < v3)
  {
    v3 = Width;
  }

  [v0 bounds];
  v7 = CGRectGetMidX(v12) - v3 * 0.5;
  [v0 bounds];
  return [v1 setFrame:{v7, CGRectGetMidY(v13) - v5 * 0.5, v3, v5}];
}

id sub_1003AB5A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualEffectContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1003AB608(void *a1, double a2, double a3)
{
  v7 = *(*v3 + OBJC_IVAR____TtC8AppStore25VisualEffectContainerView_embeddedView);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007B0B70;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

uint64_t sub_1003AB6E8()
{
  countAndFlagsBits = UpdatesLockup.version.getter();
  v2 = v1;
  if (v1)
  {
    v3._countAndFlagsBits = 0x5F53455441445055;
    v3._object = 0xEF4E4F4953524556;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    localizedString(_:comment:)(v3, v4);
    sub_10002849C(&unk_10097E350, &unk_1007DEA00);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B10D0;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000BFD1C();
    *(v5 + 32) = countAndFlagsBits;
    *(v5 + 40) = v2;
    countAndFlagsBits = String.init(format:_:)();
    v7 = v6;

    v8 = UpdatesLockup.size.getter();
    if ((v9 & 1) == 0)
    {
      v10 = [objc_allocWithZone(NSNumber) initWithLongLong:v8];
      v11 = localizedFileSize(_:)(v10);

      if (v11.value._object)
      {
        sub_10002849C(&unk_100984010, &qword_1007BCDD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007B1890;
        *(inited + 32) = 0x6E6F6973726576;
        *(inited + 40) = 0xE700000000000000;
        *(inited + 48) = countAndFlagsBits;
        *(inited + 56) = v7;
        strcpy((inited + 64), "version_size");
        *(inited + 77) = 0;
        *(inited + 78) = -5120;
        *(inited + 80) = v11;
        v13 = sub_1001962CC(inited);
        swift_setDeallocating();
        sub_10002849C(&unk_100989050, &qword_1007CB9D0);
        swift_arrayDestroy();
        v14._object = 0x8000000100810900;
        v14._countAndFlagsBits = 0xD000000000000017;
        countAndFlagsBits = localizedString(_:with:)(v14, v13)._countAndFlagsBits;
      }
    }
  }

  return countAndFlagsBits;
}

uint64_t sub_1003AB8F4()
{
  v0 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v0 - 8);
  v22 = &v20 - v1;
  v2 = type metadata accessor for Paragraph.Style();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v23 = type metadata accessor for Paragraph.Alignment();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v21 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v14 = [objc_allocWithZone(NSMutableAttributedString) init];
  if (UpdatesLockup.whatsNew.getter())
  {
    v15 = Paragraph.text.getter();
    v20 = v5;
    v16 = v15;
    [v14 appendAttributedString:v15];

    v5 = v20;
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  if (UpdatesLockup.whatsNew.getter())
  {
    v17 = v21;
    Paragraph.alignment.getter();

    (*(v9 + 32))(v13, v17, v23);
  }

  else
  {
    (*(v9 + 104))(v13, enum case for Paragraph.Alignment.localized(_:), v23);
  }

  if (UpdatesLockup.whatsNew.getter())
  {
    Paragraph.style.getter();

    (*(v3 + 32))(v8, v5, v2);
  }

  else
  {
    (*(v3 + 104))(v8, enum case for Paragraph.Style.standard(_:), v2);
  }

  if (UpdatesLockup.whatsNew.getter())
  {
    Paragraph.isCollapsed.getter();
  }

  v18 = type metadata accessor for ImpressionMetrics();
  (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  type metadata accessor for Paragraph();
  swift_allocObject();
  return Paragraph.init(id:text:wantsCollapsedNewlines:alignment:style:isCollapsed:suppressVerticalMargins:impressionMetrics:)();
}

void sub_1003ABCA4(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, double a6, double a7, double a8, double a9)
{
  v144 = a5;
  v140 = a4;
  v143 = a3;
  v147 = a2;
  v15 = type metadata accessor for Paragraph.Alignment();
  v141 = *(v15 - 8);
  v142 = v15;
  __chkstk_darwin(v15);
  v130 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v131 = &v129 - v18;
  __chkstk_darwin(v19);
  v133 = &v129 - v20;
  __chkstk_darwin(v21);
  v129 = &v129 - v22;
  v23 = sub_10002849C(&qword_10097C3F0, &qword_1007C4208);
  __chkstk_darwin(v23 - 8);
  v135 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v145 = &v129 - v26;
  __chkstk_darwin(v27);
  v134 = &v129 - v28;
  __chkstk_darwin(v29);
  v139 = &v129 - v30;
  v31 = type metadata accessor for LabelPlaceholderCompatibility();
  v137 = *(v31 - 8);
  v138 = v31;
  __chkstk_darwin(v31);
  v136 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for FloatingPointRoundingRule();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v37 - 8);
  v39 = &v129 - v38;
  v40 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v40 - 8);
  v42 = &v129 - v41;
  v43 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v43 - 8);
  v45 = &v129 - v44;
  v46 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v46 - 8);
  v48 = &v129 - v47;
  v49 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v49 - 8);
  v51 = &v129 - v50;
  [v9 setLayoutMargins:{a6, a7, a8, a9}];
  v146 = v9;
  v52 = *&v9[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView];
  v53 = sub_10002849C(&unk_100973240, qword_1007B2220);
  (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
  v54 = type metadata accessor for OfferStyle();
  (*(*(v54 - 8) + 56))(v48, 1, 1, v54);
  v55 = type metadata accessor for OfferEnvironment();
  (*(*(v55 - 8) + 56))(v45, 1, 1, v55);
  v56 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  (*(*(v56 - 8) + 56))(v42, 1, 1, v56);
  v57 = type metadata accessor for OfferTint();
  (*(*(v57 - 8) + 56))(v39, 1, 1, v57);
  sub_1004F3190(a1, v52, v51, v147, 0, 0, v48, v45, v39, v42);
  sub_10002B894(v39, &unk_100973AD0, &unk_1007B17C0);
  v52[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10070AB34();
  [v52 setNeedsLayout];
  sub_10002B894(v42, &unk_100970150, &unk_1007BDDD0);
  sub_10002B894(v45, &unk_100970160, &unk_1007BDDE0);
  sub_10002B894(v48, &qword_100973AE0, &unk_1007B17D0);
  sub_10002B894(v51, &unk_100973230, &unk_1007B17E0);
  v147 = sub_1003AB8F4();
  if (qword_10096EAC8 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009D2E98, qword_1009D2EB0);
  v58 = v144;
  swift_getObjectType();
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v59 = *(v34 + 8);
  v59(v36, v33);
  type metadata accessor for SmallLockupView(0);
  v60 = v58;
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for SmallLockupLayout.Metrics();
  v62 = sub_1000056A8(v61, qword_1009D3798);
  sub_10070B598(v62, v58, 0.0, 0.0);
  v63 = sub_1003AB6E8();
  v64 = &selRef_setRequiresColorStatistics_;
  if (!v65)
  {
    goto LABEL_8;
  }

  v66 = *&v146[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_versionMetadata];
  v67 = v63;

  v132 = v67;
  v68 = v58;
  v69 = String._bridgeToObjectiveC()();

  [v66 setText:v69];

  sub_10002A400(qword_1009D2E98, qword_1009D2EB0);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v59(v36, v33);
  sub_1000367E8();
  if (qword_10096DE18 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v70 = type metadata accessor for FontUseCase();
    sub_1000056A8(v70, qword_1009D09C8);
    v71 = [v68 traitCollection];
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    v72 = type metadata accessor for Feature();
    v151 = v72;
    v152 = sub_100119068(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v73 = sub_1000056E0(&aBlock);
    (*(*(v72 - 8) + 104))(v73, enum case for Feature.measurement_with_labelplaceholder(_:), v72);
    isFeatureEnabled(_:)();
    sub_100007000(&aBlock);
    v74 = v136;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    type metadata accessor for UpdatesLockupCollectionViewCell(0);
    LayoutMarginsAware<>.layoutFrame.getter();
    sub_100119068(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
    v75 = v138;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    (*(v137 + 8))(v74, v75);
    v60 = v68;
    v64 = &selRef_setRequiresColorStatistics_;
LABEL_8:
    type metadata accessor for UpdatesLockupCollectionViewCell(0);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetWidth(v154);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetHeight(v155);
    v76 = Paragraph.text.getter();
    v77 = v64;
    v78 = [v60 v64[35]];
    v79 = v60;
    v80 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v76];
    v81 = [v76 length];
    v82 = swift_allocObject();
    *(v82 + 16) = 0;
    *(v82 + 24) = v78;
    *(v82 + 32) = v80;
    *(v82 + 40) = 1;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_10010279C;
    *(v83 + 24) = v82;
    v152 = sub_1001027AC;
    v153 = v83;
    aBlock = _NSConcreteStackBlock;
    v149 = 1107296256;
    v150 = sub_1006606C4;
    v151 = &unk_1008C0940;
    v84 = _Block_copy(&aBlock);
    v68 = v78;
    v85 = v80;

    [v76 enumerateAttributesInRange:0 options:v81 usingBlock:{0x100000, v84}];

    _Block_release(v84);
    LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

    if ((v76 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

  v144 = v85;
  if ((v143 & 1) == 0)
  {
    v95 = v146;
    v110 = *&v146[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
    v111 = v85;
    v112 = v145;
    Paragraph.alignment.getter();
    v114 = v141;
    v113 = v142;
    (*(v141 + 56))(v112, 0, 1, v142);
    v115 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
    v116 = v110[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
    v110[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 0;
    v117 = *&v110[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
    v118 = v111;
    [v117 setNumberOfLines:0];
    if (v116 != v110[v115])
    {
      sub_1005A0320();
    }

    v106 = v118;
    sub_10059FCD8(v118);
    v110[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 1;
    v119 = v135;
    sub_10027D5B8(v145, v135);
    if ((*(v114 + 48))(v119, 1, v113) == 1)
    {
      sub_10002B894(v119, &qword_10097C3F0, &qword_1007C4208);
      v109 = v140;
    }

    else
    {
      v120 = v131;
      (*(v114 + 32))(v131, v119, v113);
      v121 = v130;
      (*(v114 + 16))(v130, v120, v113);
      v122 = (*(v114 + 88))(v121, v113);
      if (v122 == enum case for Paragraph.Alignment.left(_:))
      {
        v123 = 0;
        v109 = v140;
      }

      else
      {
        v109 = v140;
        if (v122 == enum case for Paragraph.Alignment.center(_:))
        {
          v123 = 1;
        }

        else if (v122 == enum case for Paragraph.Alignment.right(_:))
        {
          v123 = 2;
        }

        else if (v122 == enum case for Paragraph.Alignment.justified(_:))
        {
          v123 = 3;
        }

        else if (v122 == enum case for Paragraph.Alignment.localized(_:))
        {
          v123 = 4;
        }

        else
        {
          (*(v114 + 8))(v121, v113);
          v123 = 0;
        }
      }

      [v117 setTextAlignment:v123];
      (*(v114 + 8))(v120, v113);
    }

    [v110 setNeedsLayout];
    v107 = v145;
    goto LABEL_45;
  }

  v86 = Paragraph.collapsedText.getter();
  v87 = [v79 v77[35]];
  v88 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v86];
  v89 = [v86 length];
  v90 = swift_allocObject();
  *(v90 + 16) = 0;
  *(v90 + 24) = v87;
  *(v90 + 32) = v88;
  *(v90 + 40) = 1;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_100126854;
  *(v91 + 24) = v90;
  v152 = sub_100126848;
  v153 = v91;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v150 = sub_1006606C4;
  v151 = &unk_1008C09B8;
  v92 = _Block_copy(&aBlock);
  v93 = v87;
  v94 = v88;

  [v86 enumerateAttributesInRange:0 options:v89 usingBlock:{0x100000, v92}];

  _Block_release(v92);
  LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

  if ((v86 & 1) == 0)
  {
    v95 = v146;
    v96 = *&v146[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
    v97 = v94;
    v98 = v139;
    Paragraph.alignment.getter();
    v100 = v141;
    v99 = v142;
    (*(v141 + 56))(v98, 0, 1, v142);
    v101 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
    v102 = v96[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
    v96[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 1;
    v103 = *&v96[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
    v104 = *&v96[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
    v105 = v97;
    [v104 setNumberOfLines:v103];
    if (v102 != v96[v101])
    {
      sub_1005A0320();
    }

    v106 = v105;
    sub_10059FCD8(v105);
    v96[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 1;
    v107 = v139;
    v108 = v134;
    sub_10027D5B8(v139, v134);
    if ((*(v100 + 48))(v108, 1, v99) == 1)
    {
      sub_10002B894(v108, &qword_10097C3F0, &qword_1007C4208);
      v109 = v140;
    }

    else
    {
      v124 = v129;
      (*(v100 + 32))(v129, v108, v99);
      v125 = v133;
      (*(v100 + 16))(v133, v124, v99);
      v126 = (*(v100 + 88))(v125, v99);
      if (v126 == enum case for Paragraph.Alignment.left(_:))
      {
        v127 = 0;
        v109 = v140;
      }

      else
      {
        v109 = v140;
        if (v126 == enum case for Paragraph.Alignment.center(_:))
        {
          v127 = 1;
        }

        else if (v126 == enum case for Paragraph.Alignment.right(_:))
        {
          v127 = 2;
        }

        else if (v126 == enum case for Paragraph.Alignment.justified(_:))
        {
          v127 = 3;
        }

        else if (v126 == enum case for Paragraph.Alignment.localized(_:))
        {
          v127 = 4;
        }

        else
        {
          (*(v100 + 8))(v133, v99);
          v127 = 0;
        }
      }

      [v104 setTextAlignment:v127];
      (*(v100 + 8))(v124, v99);
    }

    [v96 setNeedsLayout];

LABEL_45:
    sub_10002B894(v107, &qword_10097C3F0, &qword_1007C4208);
    v95[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_hasSeparator] = v109 & 1;
    sub_1005EF590();
    [v95 setNeedsLayout];
    v128 = objc_opt_self();
    [v128 begin];
    [v128 setDisableActions:1];
    [v95 layoutIfNeeded];
    [v128 commit];

    return;
  }

  __break(1u);
}

double sub_1003AD114()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ProductReviewAction.ReviewAction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductReviewAction();
  sub_1003AD520(&qword_100978478, &type metadata accessor for ProductReviewAction, &protocol conformance descriptor for ProductReviewAction);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v30[1])
  {
    ProductReviewAction.action.getter();
    v8 = (*(v5 + 88))(v7, v4);
    if (v8 == enum case for ProductReviewAction.ReviewAction.tapToRate(_:))
    {
      (*(v5 + 96))(v7, v4);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      v10 = v9;
      v12 = v11;
      (*(v1 + 8))(v3, v0);
      v13 = sub_100079F24();
      sub_10069EE6C(v13, v10, v12);
      v15 = v14;
      swift_unknownObjectRelease();

LABEL_13:

      return v15;
    }

    if (v8 == enum case for ProductReviewAction.ReviewAction.writeAReview(_:))
    {
      (*(v5 + 96))(v7, v4);
      v30[0] = type metadata accessor for ProductReviewActionsView(0);
      v16 = ProductWriteAReview.writeReviewAction.getter();
      v17 = ProductWriteAReview.supportAction.getter();
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      v19 = v18;
      v21 = v20;
      (*(v1 + 8))(v3, v0);
      sub_100079F24();
      if (v16)
      {

        v22 = Action.title.getter();
        v24 = v23;

        if (v17)
        {
LABEL_7:

          v25 = Action.title.getter();
          v27 = v26;

LABEL_12:
          sub_1001C64E8(v22, v24, v25, v27, v30[0], v19, v21);
          v15 = v28;

          swift_unknownObjectRelease();

          goto LABEL_13;
        }
      }

      else
      {
        v22 = 0;
        v24 = 0;
        if (v17)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v27 = 0;
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);
  }

  return 0.0;
}

uint64_t sub_1003AD520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003AD568()
{
  v0 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for PageGrid.HorizontalMargins();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  type metadata accessor for PageGrid.Breakpoint();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B10D0;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.DirectionalValue<>.zero.getter();
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.HorizontalMargins.zero.getter();
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_100982EB8 = v6;
  return result;
}

void sub_1003AD86C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "prepareForReuse", v5);
  v8 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView];
  sub_100146AB4();
  v9 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
  v10 = type metadata accessor for MediaView();
  v27.receiver = v9;
  v27.super_class = v10;
  objc_msgSendSuper2(&v27, "setBackgroundColor:", 0);
  v11 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  [*(*&v9[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) setBackgroundColor:0];
  v12 = *&v9[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (v12)
  {
    [v12 setBackgroundColor:0];
  }

  (*(v4 + 104))(v7, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v3);
  v13 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailPosition;
  swift_beginAccess();
  (*(v4 + 24))(&v1[v13], v7, v3);
  swift_endAccess();
  [v1 setNeedsLayout];
  (*(v4 + 8))(v7, v3);
  v14 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel];
  [v14 setText:0];
  v15 = (v8 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler);
  v16 = *(v8 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler);
  v17 = *(v8 + OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_callToActionButtonHandler + 8);
  *v15 = 0;
  v15[1] = 0;
  sub_10001F63C(v16, v17);
  v18 = *&v9[v11];
  v19 = *(v18 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  *(v18 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = 0;
  sub_10047C6C8(v19);

  if (*(*&v9[v11] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
  {
    type metadata accessor for VideoView(0);
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      [v20 setUserInteractionEnabled:0];
    }
  }

  v21 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView];
  ArtworkView.image.setter();

  v22 = *&v9[v11];
  v23 = *(v22 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  *(v22 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = 0;
  sub_10047C6C8(v23);

  sub_10047B37C();
  v24 = v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
  v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
  if (v24 != 1)
  {
    [v14 removeFromSuperview];
  }

  v25 = v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden];
  v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = 1;
  if ((v25 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] removeFromSuperview];
  }
}

uint64_t sub_1003ADB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v63 = a2;
  v61 = type metadata accessor for LargeHeroBreakoutLayout.DetailsVerticalPostion();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v62 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for FontSource();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v52 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for BreakoutDetailsLayout.DetailDimension();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v47 - v6;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v53 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  v20 = ShelfLayoutContext.traitCollection.getter();
  v21 = UITraitCollection.isSizeClassCompact.getter();

  v55 = v15;
  v22 = *(v15 + 16);
  v54 = v19;
  v23 = v56;
  v56 = v14;
  v49 = v22;
  v22(v19, v23, v14);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.horizontalMargins.getter();
  v25 = v24;
  v26 = *(v8 + 8);
  v26(v13, v7);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.horizontalMargins.getter();
  v28 = v27;
  v26(v10, v7);
  if ((v21 & 1) == 0)
  {
    v67 = &type metadata for Double;
    v68 = &protocol witness table for Double;
    v66 = 0x4083100000000000;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.columnWidth.getter();
    v35 = v34;
    v26(v13, v7);
    v33 = v35 - v25 - v28;
    v31 = v48;
    *(v48 + 3) = &type metadata for CGFloat;
    *(v31 + 4) = &protocol witness table for CGFloat;
    v32 = &enum case for BreakoutDetailsLayout.DetailDimension.static(_:);
    v30 = v59;
    goto LABEL_5;
  }

  Main = JUScreenClassGetMain();
  v30 = v59;
  v31 = v48;
  if (Main == 1)
  {
    v67 = &type metadata for Double;
    v68 = &protocol witness table for Double;
    v66 = 0x407E000000000000;
    v32 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
    v33 = 1.0;
LABEL_5:
    v36 = v58;
    goto LABEL_10;
  }

  HasRoundedCorners = JUScreenClassHasRoundedCorners();
  v67 = &type metadata for Double;
  v68 = &protocol witness table for Double;
  v36 = v58;
  if (HasRoundedCorners)
  {
    v38 = 0x4083100000000000;
  }

  else
  {
    v38 = 0x4081800000000000;
  }

  v66 = v38;
  v32 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
  v33 = 1.0;
LABEL_10:
  *v31 = v33;
  (*(v36 + 104))(v31, *v32, v30);
  if (qword_10096E2E0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for FontUseCase();
  v40 = sub_1000056A8(v39, qword_1009D1820);
  v41 = v52;
  (*(*(v39 - 8) + 16))(v52, v40, v39);
  (*(v50 + 104))(v41, enum case for FontSource.useCase(_:), v51);
  v65[3] = type metadata accessor for CappedSizeStaticDimension();
  v65[4] = sub_1003B0EA4(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  sub_1000056E0(v65);
  v42 = UIContentSizeCategoryExtraExtraExtraLarge;
  CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
  if (qword_10096DB20 != -1)
  {
    swift_once();
  }

  v43 = sub_10002849C(&unk_100982F30, &qword_1007CAB60);
  sub_1000056A8(v43, qword_1009CFFC8);
  v64[0] = ShelfLayoutContext.traitEnvironment.getter();
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v44 = v54;
  v45 = v56;
  v49(v53, v54, v56);
  (*(v36 + 16))(v57, v31, v30);
  (*(v60 + 104))(v62, enum case for LargeHeroBreakoutLayout.DetailsVerticalPostion.bottom(_:), v61);
  sub_10002C0AC(&v66, v64);
  LargeHeroBreakoutLayout.Metrics.init(headerSpace:headerMaxWidth:detailPosition:detailsWidth:detailsVerticalPostion:layoutMargins:height:)();
  (*(v55 + 8))(v44, v45);
  (*(v36 + 8))(v31, v30);
  return sub_100007000(&v66);
}

uint64_t sub_1003AE3AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v48 = a3;
  v46 = type metadata accessor for LargeHeroBreakoutLayout.DetailsVerticalPostion();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for FontSource();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for BreakoutDetailsLayout.DetailDimension();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v40 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  swift_getObjectType();
  v18 = [a2 traitCollection];
  v19 = UITraitCollection.isSizeClassCompact.getter();

  v41 = v13;
  v20 = *(v13 + 16);
  v21 = v42;
  v42 = v12;
  v22 = v12;
  v23 = v20;
  v20(v17, v21, v22);
  [a2 pageMarginInsets];
  [a2 pageMarginInsets];
  if ((v19 & 1) == 0)
  {
    v52 = &type metadata for Double;
    v53 = &protocol witness table for Double;
    v51[0] = 0x4083100000000000;
    PageTraitEnvironment.pageColumnWidth.getter();
    v27 = v26;
    PageTraitEnvironment.pageColumnMargin.getter();
    v25 = v27 - v28;
    *(v11 + 3) = &type metadata for CGFloat;
    *(v11 + 4) = &protocol witness table for CGFloat;
    v24 = &enum case for BreakoutDetailsLayout.DetailDimension.static(_:);
    goto LABEL_5;
  }

  if (JUScreenClassGetMain() == 1)
  {
    v52 = &type metadata for Double;
    v53 = &protocol witness table for Double;
    v51[0] = 0x407E000000000000;
    v24 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
    v25 = 1.0;
LABEL_5:
    v29 = v44;
    goto LABEL_10;
  }

  HasRoundedCorners = JUScreenClassHasRoundedCorners();
  v52 = &type metadata for Double;
  v53 = &protocol witness table for Double;
  v29 = v44;
  if (HasRoundedCorners)
  {
    v31 = 0x4083100000000000;
  }

  else
  {
    v31 = 0x4081800000000000;
  }

  v51[0] = v31;
  v24 = &enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:);
  v25 = 1.0;
LABEL_10:
  *v11 = v25;
  (*(v7 + 104))(v11, *v24, v29);
  if (qword_10096E2E0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for FontUseCase();
  v33 = sub_1000056A8(v32, qword_1009D1820);
  (*(*(v32 - 8) + 16))(v6, v33, v32);
  (*(v38 + 104))(v6, enum case for FontSource.useCase(_:), v39);
  v50[3] = type metadata accessor for CappedSizeStaticDimension();
  v50[4] = sub_1003B0EA4(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  sub_1000056E0(v50);
  v34 = UIContentSizeCategoryExtraExtraExtraLarge;
  CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
  if (qword_10096DB20 != -1)
  {
    swift_once();
  }

  v35 = sub_10002849C(&unk_100982F30, &qword_1007CAB60);
  sub_1000056A8(v35, qword_1009CFFC8);
  v49[0] = a2;
  swift_unknownObjectRetain();
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v36 = v42;
  v23(v40, v17, v42);
  (*(v7 + 16))(v43, v11, v29);
  (*(v45 + 104))(v47, enum case for LargeHeroBreakoutLayout.DetailsVerticalPostion.bottom(_:), v46);
  sub_10002C0AC(v51, v49);
  LargeHeroBreakoutLayout.Metrics.init(headerSpace:headerMaxWidth:detailPosition:detailsWidth:detailsVerticalPostion:layoutMargins:height:)();
  (*(v41 + 8))(v17, v36);
  (*(v7 + 8))(v11, v29);
  return sub_100007000(v51);
}

void sub_1003AEAA0()
{
  v1 = sub_10002849C(&qword_100975EC8, &unk_1007CAB50);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = v21 - v3;
  v5 = [v0 traitCollection];
  v6 = [v5 accessibilityContrast];

  v7 = v6 == 1;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v9 = *&v0[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel];
  if (qword_10096DB18 != -1)
  {
    v20 = IsReduceTransparencyEnabled;
    swift_once();
    IsReduceTransparencyEnabled = v20;
  }

  v10 = v7 || IsReduceTransparencyEnabled;
  v11 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_1000056A8(v11, qword_100982EC0);
  v21[3] = v0;
  v12 = v0;
  Conditional.evaluate(with:)();

  [v9 setTextAlignment:v21[0]];
  v13 = *&v12[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView];
  v14 = OBJC_IVAR____TtC8AppStore19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_1003B0E34(v13 + v14, v4);
  v15 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_10002B894(v4, &qword_100975EC8, &unk_1007CAB50);
    v17 = 0;
  }

  else
  {
    v17 = sub_1001F0C74(v10);
    (*(v16 + 8))(v4, v15);
  }

  [v9 setTextColor:v17];

  v18 = [v9 layer];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = String._bridgeToObjectiveC()();

  [v18 setCompositingFilter:v19];
}

void sub_1003AED70(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  if (a1)
  {
    sub_1003B0EA4(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v9 = v5;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = a1;
  v16 = a1;
  sub_10047C6C8(v11);

  v12 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v12)
  {
    type metadata accessor for VideoView(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      [v14 setUserInteractionEnabled:0];
    }
  }
}

uint64_t sub_1003AEF14()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_100982EC0);
  sub_1000056A8(v0, qword_100982EC0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_1003AEFB0()
{
  v0 = sub_10002849C(&unk_100982F30, &qword_1007CAB60);
  sub_100005644(v0, qword_1009CFFC8);
  sub_1000056A8(v0, qword_1009CFFC8);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  sub_10002849C(&qword_1009799E0, qword_1007B5950);
  return Conditional<>.init(regularValue:compactValue:)();
}

char *sub_1003AF074(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v97 = type metadata accessor for AutomationSemantics();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v10 - 8);
  v92 = &v87 - v11;
  v101 = type metadata accessor for DirectionalTextAlignment();
  v99 = *(v101 - 1);
  __chkstk_darwin(v101);
  v93 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v100 = &v87 - v14;
  v15 = type metadata accessor for FontUseCase();
  v104 = *(v15 - 8);
  __chkstk_darwin(v15);
  v98 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v103 = &v87 - v18;
  v19 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v19);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  __chkstk_darwin(v22 - 8);
  v24 = &v87 - v23;
  v25 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_itemLayoutContext;
  v26 = type metadata accessor for ItemLayoutContext();
  v27 = *(*(v26 - 8) + 56);
  v102 = v4;
  v27(&v4[v25], 1, 1, v26);
  v28 = type metadata accessor for MediaView();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v29[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v29[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v29[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v29[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v30 = type metadata accessor for UberContentContainer();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v31[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v32 = &v31[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v31[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v33[32] = 1;
  *&v31[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v111.receiver = v31;
  v111.super_class = v30;
  v34 = objc_msgSendSuper2(&v111, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v35 = v34;
  if (*&v34[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v34 addSubview:?];
  }

  v36 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer;
  *&v29[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v35;
  v110.receiver = v29;
  v110.super_class = v28;
  v37 = objc_msgSendSuper2(&v110, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v37 setClipsToBounds:1];
  [v37 addSubview:*&v37[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  v38 = v102;
  *&v102[v36] = v37;
  v39 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *&v38[v39] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v38[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundArtwork] = 0;
  v40 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView;
  if (qword_10096CFF0 != -1)
  {
    swift_once();
  }

  v41 = sub_1000056A8(v19, qword_1009CDE58);
  sub_1000C2608(v41, v21);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional<>.init(value:)();
  v42 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v38[v40] = sub_100147904(v24, v43);
  v44 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailPosition;
  v45 = enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:);
  v46 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  (*(*(v46 - 8) + 104))(&v38[v44], v45, v46);
  *&v38[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_pageTraits] = 0;
  v38[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = 1;
  v38[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
  *&v38[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{a1, a2, a3, a4}];
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_10096E2E8 != -1)
    {
      swift_once();
    }

    v47 = qword_1009D1838;
  }

  else
  {
    if (qword_10096E2E0 != -1)
    {
      swift_once();
    }

    v47 = qword_1009D1820;
  }

  v48 = v15;
  v49 = sub_1000056A8(v15, v47);
  v50 = v103;
  v51 = v104;
  v52 = *(v104 + 16);
  v52(v103, v49, v15);
  v53 = v98;
  v52(v98, v50, v48);
  v88 = UIContentSizeCategoryExtraExtraExtraLarge;
  v54 = enum case for DirectionalTextAlignment.none(_:);
  v55 = *(v99 + 104);
  v55(v100, enum case for DirectionalTextAlignment.none(_:), v101);
  v90 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
  *&v90[qword_1009902D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v56 = v92;
  v52(v92, v53, v48);
  v57 = v48;
  v89 = *(v51 + 56);
  v89(v56, 0, 1, v48);
  v58 = v93;
  v59 = v101;
  v55(v93, v54, v101);
  v60 = v88;
  v61 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v62 = v98;
  v52(v56, v98, v57);
  v91 = v57;
  v89(v56, 0, 1, v57);
  v63 = v61;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v63 setNumberOfLines:2];
  v64 = v99;
  v65 = v100;
  (*(v99 + 16))(v58, v100, v59);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  (*(v64 + 8))(v65, v59);
  v66 = *(v104 + 8);
  v104 += 8;
  v101 = v66;
  (v66)(v62, v57);
  v67 = v102;
  *&v102[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel] = v63;
  v109.receiver = v67;
  v109.super_class = ObjectType;
  v68 = objc_msgSendSuper2(&v109, "initWithFrame:", a1, a2, a3, a4);
  v69 = [v68 contentView];
  [v69 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v70 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel;
  [*&v68[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel] setNumberOfLines:2];
  v71 = *&v68[v70];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v72 = *&v68[v70];
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v73 = v72;
  v74 = v95;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v105, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v107, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v75 = *(v96 + 8);
  v76 = v97;
  v75(v74, v97);
  v77 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView;
  v78 = *&v68[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView];
  ArtworkView.frameUpdatesImageSize.setter();

  v79 = *&v68[v77];
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v80 = v79;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v105, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v107, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v75(v74, v76);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v81 = static UIColor.placeholderBackground.getter();
  [v68 setBackgroundColor:v81];

  v82 = [v68 contentView];
  v83 = [v82 layer];

  [v83 setAllowsGroupBlending:0];
  v84 = [v68 contentView];
  [v84 addSubview:*&v68[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer]];

  v85 = [v68 contentView];
  [v85 addSubview:*&v68[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView]];

  sub_1003AEAA0();
  (v101)(v103, v91);
  return v68;
}

void (*sub_1003AFD58(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
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
  return sub_1003AFDF4;
}

void sub_1003AFDF4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v3)
    {
      sub_1003B0EA4(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v8 = v4;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    v17 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v18 = v3;
    sub_10047C6C8(v17);

    v19 = *(*(v16 + v15) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v19)
    {
      type metadata accessor for VideoView(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        v22 = v19;
        [v21 setUserInteractionEnabled:0];
      }
    }

    v23 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_1003B0EA4(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v13 = v4;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v25 = *(a1 + 8);
    v24 = *(a1 + 16);
    v26 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v31 = v3;
    sub_10047C6C8(v26);

    v27 = *(*(v25 + v24) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v27)
    {
      type metadata accessor for VideoView(0);
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        v30 = v27;
        [v29 setUserInteractionEnabled:0];
      }
    }

    v23 = v31;
  }
}

id sub_1003B00F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v30 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LargeHeroBreakoutLayout.Metrics();
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for LargeHeroBreakoutLayout();
  v13 = *(v29 - 8);
  *&v14 = __chkstk_darwin(v29).n128_u64[0];
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40.receiver = v1;
  v40.super_class = ObjectType;
  result = objc_msgSendSuper2(&v40, "layoutSubviews", v14);
  v18 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_pageTraits];
  if (v18)
  {
    v28 = v3;
    v19 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailPosition;
    swift_beginAccess();
    (*(v7 + 16))(v9, &v1[v19], v6);
    swift_unknownObjectRetain();
    sub_1003AE3AC(v9, v18, v12);
    (*(v7 + 8))(v9, v6);
    v20 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
    v38 = type metadata accessor for MediaView();
    v39 = &protocol witness table for UIView;
    v37 = v20;
    v21 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel];
    v35 = type metadata accessor for DynamicTypeLabel();
    v36 = &protocol witness table for UILabel;
    v34 = v21;
    v22 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView];
    v32 = type metadata accessor for BreakoutDetailsView(0);
    v33 = &protocol witness table for UIView;
    v31 = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    LargeHeroBreakoutLayout.init(metrics:backgroundMediaView:headerLabel:detailsView:)();
    v26 = [v1 contentView];
    [v26 bounds];

    LargeHeroBreakoutLayout.placeChildren(relativeTo:in:)();
    (*(v30 + 8))(v5, v28);
    v27 = *&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView];
    [v1 bounds];
    [v27 setFrame:?];
    swift_unknownObjectRelease();
    return (*(v13 + 8))(v16, v29);
  }

  return result;
}

char *sub_1003B068C(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY];
    result = *(*&v1[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v5 = *&result[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
    *&result[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = v4;
    if (v4 != v5)
    {
      return [result setNeedsLayout];
    }
  }

  return result;
}

uint64_t type metadata accessor for LargeHeroBreakoutCollectionViewCell(uint64_t a1)
{
  result = qword_100982F08;
  if (!qword_100982F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B08F0(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1003B09E4()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
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

uint64_t (*sub_1003B0A58(uint64_t **a1))()
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
  v2[4] = sub_1003AFD58(v2);
  return sub_1000B4CAC;
}

CGFloat sub_1003B0AC8()
{
  [v0 bounds];

  return CGRectGetMaxY(*&v1);
}

uint64_t sub_1003B0AFC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1003B0EA4(&qword_100982F40, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_1007CAB00);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1003B0B70(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1003B0EA4(&qword_100982F40, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_1007CAB00);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1003B0BFC(uint64_t *a1))()
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
  sub_1003B0EA4(&qword_100982F40, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_1007CAB00);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_1003B0CB8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_1003B0E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975EC8, &unk_1007CAB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B0EA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003B0EEC()
{
  v1 = v0;
  v28 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v28);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_itemLayoutContext;
  v8 = type metadata accessor for ItemLayoutContext();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = type metadata accessor for MediaView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v10[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v11 = type metadata accessor for UberContentContainer();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v13 = &v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v30.receiver = v12;
  v30.super_class = v11;
  v15 = objc_msgSendSuper2(&v30, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = v15;
  if (*&v15[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v15 addSubview:?];
  }

  v17 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer;
  *&v10[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v16;
  v29.receiver = v10;
  v29.super_class = v9;
  v18 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v18 setClipsToBounds:1];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  *(v0 + v17) = v18;
  v19 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v1 + v19) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v20 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView;
  if (qword_10096CFF0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v28, qword_1009CDE58);
  sub_1000C2608(v21, v3);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional<>.init(value:)();
  v22 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v1 + v20) = sub_100147904(v6, v23);
  v24 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailPosition;
  v25 = enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:);
  v26 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  (*(*(v26 - 8) + 104))(v1 + v24, v25, v26);
  *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_pageTraits) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1003B1300()
{
  result = qword_100974840;
  if (!qword_100974840)
  {
    type metadata accessor for TitledButtonStackCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974840);
  }

  return result;
}

double sub_1003B135C()
{
  v0 = sub_10002849C(&qword_100970F20, &qword_1007B24B8);
  v40 = *(v0 - 8);
  v41 = v0;
  __chkstk_darwin(v0);
  v39 = &v31 - v1;
  v2 = type metadata accessor for PageGrid();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ComponentLayoutOptions();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v12 + 8))(v14, v11);

  ItemLayoutContext.state.getter();
  v19 = v31;
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v21 = v20;
  v23 = v22;
  (*(v35 + 8))(v4, v36);
  v24 = sub_100079F24();
  sub_10002C0AC(v44, v42);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for TitledButtonStack();
  swift_dynamicCast();
  v25 = v33;
  v26 = v34;
  (*(v33 + 16))(v32, v10, v34);
  type metadata accessor for NilState();
  v27 = v39;
  StateLens.init(_:)();
  sub_10074B640(v43, v24, v21, v23);
  v29 = v28;
  swift_unknownObjectRelease();
  (*(v40 + 8))(v27, v41);
  (*(v37 + 8))(v19, v38);
  (*(v25 + 8))(v10, v26);
  sub_100007000(v44);

  return v29;
}

uint64_t sub_1003B18FC()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  v12 = 0;
  v13 = 0xE000000000000000;
  v8._countAndFlagsBits = static UICollectionReusableView.defaultReuseIdentifier.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 95;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  ReadOnlyLens.value.getter();
  (*(v5 + 8))(v7, v4);
  Shelf.contentType.getter();

  _print_unlocked<A, B>(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v12;
}

uint64_t sub_1003B1B04(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v8 = a2;
  ObjectType = swift_getObjectType();
  v3 = *((swift_isaMask & *v2) + 0x88);
  v4 = sub_10002849C(&qword_100982F98, &qword_1007CAD58);
  v5 = sub_100097060(&qword_100982FA0, &qword_100982F98, &qword_1007CAD58, &protocol conformance descriptor for IDView<A, B>);
  return v3(v8, sub_1003B3D2C, v7, v4, v5);
}

uint64_t sub_1003B1BF8@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11[0] = a3;
  v11[1] = &type metadata for EmptyView;
  v11[2] = a4;
  v11[3] = &protocol witness table for EmptyView;
  v6 = type metadata accessor for UIHostingConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  a5[3] = v6;
  a5[4] = swift_getWitnessTable();
  sub_1000056E0(a5);
  UIHostingConfiguration.margins(_:_:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1003B1D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v12 = *((swift_isaMask & *v5) + 0x80);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for BaseObjectGraph();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23[2] = OpaqueTypeConformance2;
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10002D1A8(&qword_100982F80, &unk_1007E24C0);
  type metadata accessor for ModifiedContent();
  sub_10002D1A8(&qword_100982F88, &qword_1007CAD20);
  v9 = type metadata accessor for ModifiedContent();
  v23[0] = OpaqueTypeMetadata2;
  v23[1] = v8;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_100097060(&unk_100993080, &qword_100982F80, &unk_1007E24C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_100097060(&qword_100993090, &qword_100982F88, &qword_1007CAD20, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v10 = swift_getWitnessTable();
  v12(v23, sub_1003B3CD4, v13, v9, v10);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_1003B1FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v45 = a2;
  v49 = a4;
  v44 = type metadata accessor for ShelfLayoutContext();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DynamicTypeSize();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v35 - v8;
  v42 = type metadata accessor for PageGrid();
  v51 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v35 - v12;
  v13 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  ReadOnlyLens.value.getter();
  (*(v18 + 8))(v20, v17);
  v37 = v55;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v36 = *(v14 + 56);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v54 = 0;
  memset(v53, 0, sizeof(v53));
  ItemLayoutContext.item.getter();
  v21 = v38;
  ReadOnlyLens.value.getter();
  (*(v39 + 8))(v9, v21);
  v39 = ItemLayoutContext.index.getter();
  v35 = a1;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v22 = ShelfLayoutContext.traitCollection.getter();
  v23 = [v22 preferredContentSizeCategory];

  v24 = v41;
  DynamicTypeSize.init(contentSizeCategory:)();
  v25 = *(v43 + 8);
  v26 = v44;
  v25(v6, v44);
  swift_getKeyPath();
  v27 = v40;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v28 = *(v51 + 8);
  v51 += 8;
  v29 = v27;
  v30 = v42;
  v28(v29, v42);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  sub_1003B2664(v6, v45);
  v25(v6, v26);
  v31 = v36;
  v32 = v24;
  v33 = v50;
  static ComponentFactory.makeView(for:surroundedBy:pageGrid:pageGridProvider:item:itemOffset:objectGraph:dynamicTypeSize:componentWidth:componentHeight:)();

  (*(v46 + 8))(v32, v48);
  sub_100007000(v52);
  sub_10002B894(v53, &qword_100982FA8, qword_1007CADC0);
  v28(v33, v30);
  sub_10002B894(&v16[v31], &unk_10098FFB0, qword_1007B3890);
  sub_10002B894(v16, &unk_10098FFB0, qword_1007B3890);
  sub_10002849C(&qword_100982F98, &qword_1007CAD58);
  return ItemLayoutContext.id.getter();
}

double sub_1003B2664(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Shelf.ContentType();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ComponentHeightFactory.ComponentHeight();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003B36A8(v14);
  ShelfLayoutContext.contentPageGrid.getter();
  v15 = ComponentHeightFactory.ComponentHeight.value(in:)();
  v17 = v16;
  (*(v8 + 8))(v10, v7);
  if (v17)
  {
    ShelfLayoutContext.shelf.getter();
    v18 = v26;
    ReadOnlyLens.value.getter();
    (*(v25 + 8))(v6, v18);
    v19 = v27;
    Shelf.contentType.getter();

    v20 = COERCE_DOUBLE(static ComponentHeightFactory.estimatedComponentHeight(for:)());
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

uint64_t sub_1003B29B0@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
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
  v14 = type metadata accessor for BaseObjectGraph();
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
  sub_10002D1A8(&qword_100982F80, &unk_1007E24C0);
  v53 = type metadata accessor for ModifiedContent();
  v60 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = &v43 - v23;
  sub_10002D1A8(&qword_100982F88, &qword_1007CAD20);
  v24 = type metadata accessor for ModifiedContent();
  v58 = *(v24 - 8);
  __chkstk_darwin(v24);
  v49 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v55 = &v43 - v28;
  v59(v27);
  View.metricsActivityAware(from:)();
  (*(v61 + 8))(v7, a4);
  swift_checkMetadataState();
  View.actionDispatcher<A>(from:)();
  (*(v56 + 8))(v13, OpaqueTypeMetadata2);
  v29 = v47;
  View.intentDispatcher(from:)();
  (*(v52 + 8))(v20, v18);
  type metadata accessor for ArtworkLoader();
  inject<A, B>(_:from:)();
  v68 = v18;
  v69 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  sub_1003B3CE4(&qword_100982F90, &type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
  v31 = v44;
  v32 = v48;
  View.environmentObject<A>(_:)();

  (*(v54 + 8))(v22, v32);
  swift_getKeyPath();
  v68 = *(v62 + OBJC_IVAR____TtC8AppStore22SwiftUIViewHostingCell_flowPreview);
  v33 = sub_100097060(&unk_100993080, &qword_100982F80, &unk_1007E24C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v66 = v30;
  v67 = v33;

  v34 = v53;
  WitnessTable = swift_getWitnessTable();
  v36 = v49;
  View.environment<A>(_:_:)();

  (*(v60 + 8))(v31, v34);
  v37 = sub_100097060(&qword_100993090, &qword_100982F88, &qword_1007CAD20, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
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

id sub_1003B330C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIViewHostingCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SwiftUIViewHostingCell(uint64_t a1)
{
  result = qword_100982F70;
  if (!qword_100982F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B33F4(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003B34FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = type metadata accessor for FlowPreviewEnvironment.State();
  v6 = __chkstk_darwin(v5);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *a4, v6);
  return dispatch thunk of FlowPreviewEnvironment.state.setter();
}

uint64_t sub_1003B35D8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = type metadata accessor for FlowPreviewEnvironment.State();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *a3, v5);
  return dispatch thunk of FlowPreviewEnvironment.state.setter();
}

uint64_t sub_1003B36A8@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for DynamicTypeSize();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v4 - 8);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for Shelf.ContentType();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v19 = type metadata accessor for PageGrid();
  v31 = *(v19 - 8);
  v32 = v19;
  __chkstk_darwin(v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  ShelfLayoutContext.shelf.getter();
  ReadOnlyLens.value.getter();
  v22 = *(v13 + 8);
  v22(v18, v12);
  ShelfLayoutContext.shelf.getter();
  ReadOnlyLens.value.getter();
  v22(v15, v12);
  Shelf.contentType.getter();

  v23 = v30;
  ShelfLayoutContext.surroundingShelves.getter();
  PageGrid.containerWidth.getter();
  PageGrid.containerHeight.getter();
  v24 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  [v24 scaledValueForValue:1.0];

  v25 = ShelfLayoutContext.traitCollection.getter();
  v26 = [v25 preferredContentSizeCategory];

  v27 = v33;
  DynamicTypeSize.init(contentSizeCategory:)();
  static ComponentHeightFactory.componentHeight(for:contentType:surroundedBy:containerSize:pageGrid:scaleFactor:dynamicTypeSize:)();

  (*(v37 + 8))(v27, v38);
  sub_10002B894(v23, &unk_10098FFB0, qword_1007B3890);
  sub_10002B894(v8, &unk_10098FFB0, qword_1007B3890);
  (*(v34 + 8))(v11, v35);
  return (*(v31 + 8))(v21, v32);
}

uint64_t sub_1003B3B54(__n128 a1)
{
  v1 = type metadata accessor for ComponentHeightFactory.ComponentHeight();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_1003B36A8(&v11 - v6);
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

uint64_t sub_1003B3CE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003B3D3C(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000A83AC(v10, &v4[v12]);
    swift_endAccess();
    v13 = (*(a2 + 160))(ObjectType, a2);
    v4[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] = v13;
    if (v13 == 4)
    {
      v14 = [v4 contentView];
      [v14 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v15 = (*(a2 + 136))(ObjectType, a2);
    sub_1004EAB3C(v15);
  }

  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + qword_1009CEC88);
    if (v18 && *&v4[qword_1009CEC88])
    {
      v19 = *&v4[qword_1009CEC88 + 8];
      v46 = *(v16 + qword_1009CEC88 + 8);
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

    v24 = qword_1009CEC70;
    v25 = *&v4[qword_1009CEC70];
    v26 = [*&v17[qword_1009CEC70] text];
    [v25 setText:v26];

    v27 = [*&v17[v24] textColor];
    [v25 setTextColor:v27];

    v28 = qword_1009CEC78;
    v29 = *&v4[qword_1009CEC78];
    v30 = [*&v17[qword_1009CEC78] text];
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

uint64_t sub_1003B41BC(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticDimension();
  sub_100005644(v8, a3);
  sub_1000056A8(v8, a3);
  if (qword_10096E1C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D14D8);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v14);
  (*(v5 + 16))(v11, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003B4398()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100982FF8);
  sub_1000056A8(v4, qword_100982FF8);
  *v3 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003B4504()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_100983010);
  sub_1000056A8(v0, qword_100983010);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_1003B45A0()
{
  v1 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for OfferButtonSubtitlePosition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  if (*(v0 + qword_1009D0048))
  {
    v14 = *(v0 + qword_1009D0040);
    if (v14)
    {
      v19 = *(v0 + qword_100983048);

      v18 = Lockup.offerDisplayProperties.getter();
      v15 = Lockup.buttonAction.getter();
      v16 = sub_10002849C(&unk_100973240, qword_1007B2220);
      (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
      (*(v5 + 104))(v7, enum case for OfferButtonSubtitlePosition.below(_:), v4);
      (*(v5 + 56))(v3, 1, 1, v4);
      sub_1003B6FD8(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
      AccessibilityConditional.init(value:axValue:)();
      sub_10064AFA4(v18, v15, 0, v13, v10, v14, 0, 0);

      (*(v20 + 8))(v10, v8);
      sub_10002B894(v13, &unk_100973230, &unk_1007B17E0);
    }
  }
}

double sub_1003B492C(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for OfferButtonSubtitlePosition();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v13 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v13 - 8);
  v15 = v21 - v14;
  v16 = qword_1009D0040;
  *(v1 + qword_1009D0040) = a1;

  if (*(v1 + qword_1009D0048) && (v17 = *(v1 + v16)) != 0)
  {
    v21[1] = *(v1 + qword_100983048);

    v21[0] = Lockup.offerDisplayProperties.getter();
    v18 = Lockup.buttonAction.getter();
    v19 = sub_10002849C(&unk_100973240, qword_1007B2220);
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    (*(v7 + 104))(v9, enum case for OfferButtonSubtitlePosition.below(_:), v6);
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_1003B6FD8(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    AccessibilityConditional.init(value:axValue:)();
    sub_10064AFA4(v21[0], v18, 0, v15, v12, v17, 0, 0);

    (*(v22 + 8))(v12, v23);
    sub_10002B894(v15, &unk_100973230, &unk_1007B17E0);
  }

  else
  {
  }

  return result;
}

id sub_1003B4D08()
{
  v1 = v0;
  v2 = *&v0[qword_1009D0048];
  if (v2 && (v3 = *&v0[qword_1009D0040]) != 0)
  {
    v4 = *&v0[qword_100983030];

    Lockup.title.getter();
    if (v5)
    {
      v6 = String._bridgeToObjectiveC()();
    }

    else
    {
      v6 = 0;
    }

    [v4 setText:v6];

    if (qword_10096E1C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for FontUseCase();
    v8 = sub_1000056A8(v7, qword_1009D14D8);
    sub_10067A060(v9, v2, v8, v3);
    v10 = *&v1[qword_100983040];
    InAppPurchaseLockup.descriptionText.getter();
    if (v11)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    [v10 setText:v12];
  }

  else
  {
    [*&v0[qword_100983030] setText:0];
    sub_1002F62D8();
    [*&v0[qword_100983040] setText:0];
  }

  sub_1003B45A0();

  return [v1 setNeedsLayout];
}

char *sub_1003B4EE0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin(v10);
  v69 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FontUseCase();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v68 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DirectionalTextAlignment();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v73 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v18 - 8);
  v20 = v63 - v19;
  v21 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v21 - 8);
  v23 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[qword_1009D0040] = 0;
  *&v5[qword_1009D0048] = 0;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v24 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v5[qword_100983028] = sub_1002EB7C0(v23, 1);
  if (qword_10096E1C8 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v12, qword_1009D14D8);
  v26 = *(v13 + 16);
  v26(v20, v25, v12);
  v27 = *(v13 + 56);
  v63[1] = v13 + 56;
  v67 = v27;
  v27(v20, 0, 1, v12);
  v28 = *(v16 + 104);
  v65 = enum case for DirectionalTextAlignment.none(_:);
  v64 = v28;
  v28(v73);
  v29 = type metadata accessor for DynamicTypeLabel();
  v63[0] = v15;
  v30 = v29;
  v31 = objc_allocWithZone(v29);
  v32 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v66 = qword_100983030;
  *&v5[qword_100983030] = v32;
  v33 = v68;
  v26(v68, v25, v12);
  v34 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  v35 = sub_1002F5B8C(v33, 1, 4, 0);
  v36 = qword_100983038;
  *&v5[qword_100983038] = v35;
  if (qword_10096E1D0 != -1)
  {
    swift_once();
  }

  v37 = sub_1000056A8(v12, qword_1009D14F0);
  v26(v20, v37, v12);
  v67(v20, 0, 1, v12);
  v64(v73, v65, v63[0]);
  v38 = objc_allocWithZone(v30);
  v39 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = qword_100983040;
  *&v5[qword_100983040] = v39;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[qword_100983048] = sub_1000F5284(0, v42);
  v43 = *&v5[v66];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v44 = v43;
  v45 = v69;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v75, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v77, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v46 = v71;
  v47 = *(v70 + 8);
  v47(v45, v71);
  v48 = *&v5[v36];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v49 = v48;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v75, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v77, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v47(v45, v46);
  v50 = *&v5[v40];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v51 = v50;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v75, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v77, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v47(v45, v46);
  v74.receiver = v5;
  v74.super_class = ObjectType;
  v52 = objc_msgSendSuper2(&v74, "initWithFrame:", a1, a2, a3, a4);
  v53 = [v52 contentView];
  [v53 addSubview:*&v52[qword_100983028]];

  v54 = [v52 contentView];
  [v54 addSubview:*&v52[qword_100983030]];

  v55 = [v52 contentView];
  [v55 addSubview:*&v52[qword_100983038]];

  v56 = qword_100983040;
  v57 = *&v52[qword_100983040];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v58 = v57;
  v59 = static UIColor.secondaryText.getter();
  [v58 setTextColor:v59];

  v60 = [v52 contentView];
  [v60 addSubview:*&v52[v56]];

  v61 = [v52 contentView];
  [v61 addSubview:*&v52[qword_100983048]];

  return v52;
}

void sub_1003B5778()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103.receiver = v1;
  v103.super_class = ObjectType;
  objc_msgSendSuper2(&v103, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *&v1[qword_100983048];
  v18 = &v17[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v17[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v19 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v17[v19], v102);
    sub_10002A400(v102, v102[3]);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v21 = v20;
    v23 = v22;
    sub_100007000(v102);
    v99 = v21;
    *v18 = v21;
    v18[1] = v23;
    v98 = v23;
    *(v18 + 16) = 0;
  }

  else
  {
    v24 = *v18;
    v98 = v18[1];
    v99 = v24;
  }

  if (qword_10096DB30 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for StaticDimension();
  sub_1000056A8(v25, qword_100982FC8);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v92 = v26;
  v27 = *(v4 + 8);
  v27(v7, v3);
  if (qword_10096DB40 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v25, qword_100982FF8);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v29 = v28;
  v27(v7, v3);
  v30 = *&v1[qword_100983028];
  InAppPurchaseIconLayout.Metrics.overallSize.getter();
  v32 = v31;
  v34 = v33;
  v104.origin.x = v10;
  v104.origin.y = v12;
  v104.size.width = v14;
  v104.size.height = v16;
  v89 = CGRectGetMidX(v104) + v32 * -0.5;
  v91 = v32;
  v90 = v34;
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v30 setFrame:?];
  v105.origin.x = v10;
  v105.origin.y = v12;
  v105.size.width = v14;
  v105.size.height = v16;
  v35 = CGRectGetWidth(v105) - v99 - v29;
  v36 = *&v1[qword_100983040];
  v106.origin.x = v10;
  v106.origin.y = v12;
  v106.size.width = v14;
  v106.size.height = v16;
  [v36 sizeThatFits:{v35, CGRectGetHeight(v106)}];
  v107.origin.x = v10;
  v107.origin.y = v12;
  v107.size.width = v14;
  v107.size.height = v16;
  CGRectGetMaxY(v107);
  v108.origin.x = v10;
  v108.origin.y = v12;
  v108.size.width = v14;
  v108.size.height = v16;
  CGRectGetMinX(v108);
  [v36 lastBaselineFromBottom];
  Width = v35;
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v36 setFrame:?];
  v37 = [v36 text];
  if (v37)
  {

    [v36 lastBaselineMaxY];
    v39 = v38;
  }

  else
  {
    v109.origin.x = v10;
    v109.origin.y = v12;
    v109.size.width = v14;
    v109.size.height = v16;
    v39 = CGRectGetMaxY(v109) + -20.0;
  }

  v110.origin.x = v10;
  v110.origin.y = v12;
  v110.size.width = v14;
  v110.size.height = v16;
  MaxX = CGRectGetMaxX(v110);
  v94 = v10;
  v93 = v12;
  v96 = MaxX - v99;
  v95 = v39 - v98;
  CGRect.withLayoutDirection(in:relativeTo:)();
  v42 = v41;
  v44 = v43;
  v88 = v14;
  v87 = v16;
  v46 = v45;
  v48 = v47;
  v49 = type metadata accessor for OfferButton();
  v101.receiver = v17;
  v101.super_class = v49;
  objc_msgSendSuper2(&v101, "frame");
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v100.receiver = v17;
  v100.super_class = v49;
  v58 = objc_msgSendSuper2(&v100, "setFrame:", v42, v44, v46, v48);
  sub_1000F4A10(v51, v53, v55, v57, v58, v59);
  if (qword_10096DB38 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v25, qword_100982FE0);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v61 = v60;
  v27(v7, v3);
  v62 = *&v1[qword_100983030];
  v63 = v88;
  v64 = v87;
  [v62 sizeThatFits:{v88, v87}];
  v66 = v65;
  v111.origin.y = 70.0;
  v111.origin.x = v89;
  v111.size.width = v91;
  v111.size.height = v90;
  MaxY = CGRectGetMaxY(v111);
  if (qword_10096DB28 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v25, qword_100982FB0);
  static Dimensions.defaultRoundingRule.getter();
  v68 = [v62 traitCollection];
  StaticDimension.value(compatibleWith:rounded:)();
  v70 = v69;

  [v62 firstBaselineFromTop];
  v72 = v71;
  v27(v7, v3);
  v91 = v61;
  v73 = v61 + v66 + MaxY + v70 - v72;
  v112.origin.x = v96;
  v112.origin.y = v95;
  v112.size.width = v99;
  v112.size.height = v98;
  MinY = CGRectGetMinY(v112);
  v75 = v94;
  v76 = v93;
  if (MinY >= v73)
  {
    v113.origin.x = v94;
    v113.origin.y = v93;
    v113.size.width = v63;
    v113.size.height = v64;
    CGRectGetWidth(v113);
  }

  v114.origin.x = v75;
  v114.origin.y = v76;
  v114.size.width = v63;
  v114.size.height = v64;
  CGRectGetMinX(v114);
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v62 setFrame:?];
  v77 = *&v1[qword_100983038];
  [v77 sizeThatFits:{v63, v64}];
  v79 = v78;
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E1C8 != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for FontUseCase();
  sub_1000056A8(v80, qword_1009D14D8);
  v81 = [v1 traitCollection];
  v82 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  [v62 lastBaselineMaxY];
  v84 = v92 + v83;
  UIFont.estimatedFirstBaseline.getter();
  v86 = v91 + v79 + v84 - v85;
  v115.origin.x = v96;
  v115.origin.y = v95;
  v115.size.width = v99;
  v115.size.height = v98;
  if (CGRectGetMinY(v115) >= v86)
  {
    v116.origin.x = v75;
    v116.origin.y = v76;
    v116.size.width = v63;
    v116.size.height = v64;
    Width = CGRectGetWidth(v116);
  }

  v117.origin.x = v75;
  v117.origin.y = v76;
  v117.size.width = v63;
  v117.size.height = v64;
  CGRectGetMinX(v117);
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v77 setFrame:?];
}

void sub_1003B6114(void *a1)
{
  v1 = a1;
  sub_1003B5778();
}

double sub_1003B615C(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_1003B3D3C(a1, a2, a3 & 1);
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

    v16 = *&v10[qword_100983028];
    sub_1002ECAFC(v16);

    *&v4[qword_1009D0048] = *&v10[qword_1009D0048];
    swift_retain_n();

    sub_1003B4D08();
  }

  return result;
}

void sub_1003B62C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for InAppPurchaseTheme();
  v57 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = &v47 - v12;
  v13 = type metadata accessor for TodayCard.Style();
  v55 = *(v13 - 8);
  __chkstk_darwin(v13);
  v52 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v53 = &v47 - v16;
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  __chkstk_darwin(v20);
  v22 = &v47 - v21;
  sub_1005D841C();
  v23 = TodayCard.media.getter();
  type metadata accessor for TodayCardMediaInAppPurchase();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v58 = v24;
    v48 = v10;
    v49 = v23;
    v50 = v8;
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    v51 = a4;
    inject<A, B>(_:from:)();
    v59 = v61;
    v60 = v5;
    [*&v5[qword_1009CEC78] setText:0];
    v54 = a1;
    TodayCard.style.getter();
    v25 = v55;
    v47 = *(v55 + 104);
    v47(v19, enum case for TodayCard.Style.dark(_:), v13);
    sub_1003B6FD8(&qword_100972DC0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v61 == v63 && v62 == v64)
    {
      v26 = 1;
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v27 = *(v25 + 8);
    v27(v19, v13);
    v27(v22, v13);

    if (v26)
    {
      v28 = 2;
      v29 = v60;
    }

    else
    {
      v30 = v53;
      TodayCard.style.getter();
      v31 = v52;
      v47(v52, enum case for TodayCard.Style.light(_:), v13);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v29 = v60;
      if (v61 == v63 && v62 == v64)
      {
        v27(v31, v13);
        v27(v30, v13);

        v28 = 1;
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v27(v31, v13);
        v27(v30, v13);

        v28 = v32 & 1;
      }
    }

    [v29 setOverrideUserInterfaceStyle:v28];
    v33 = TodayCard.backgroundColor.getter();
    if (!v33)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v33 = static UIColor.todayCardDefaultBackground.getter();
    }

    v34 = v33;
    v35 = [v29 backgroundView];
    if (v35)
    {
      v36 = v35;
      [v35 setBackgroundColor:v34];
    }

    v37 = *&v29[qword_100983028];
    v55 = TodayCardMediaInAppPurchase.lockup.getter();
    v54 = v34;
    v38 = v56;
    InAppPurchaseLockup.theme.getter();
    v39 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
    swift_beginAccess();
    v40 = v57;
    v41 = v50;
    (*(v57 + 24))(&v37[v39], v38, v50);
    swift_endAccess();
    v53 = *(v40 + 16);
    v42 = v48;
    (v53)(v48, &v37[v39], v41);
    sub_1002EBEE4(v42);
    v43 = *(v40 + 8);
    v43(v42, v41);
    v43(v38, v41);
    v44 = v54;
    [v37 setBackgroundColor:v54];
    sub_1001BCDCC(159.0, 159.0, v55, v37, v59);
    (v53)(v38, &v37[v39], v41);
    sub_1002EBEE4(v38);
    v43(v38, v41);
    [v37 setNeedsLayout];

    v46 = v60;
    sub_1003B492C(v45);
    *&v46[qword_1009D0048] = TodayCardMediaInAppPurchase.lockup.getter();

    sub_1003B4D08();

    [v46 setNeedsLayout];
  }

  else
  {
  }
}

double sub_1003B69D8(uint64_t a1, uint64_t a2)
{
  sub_1005D7118();
  sub_10002C0AC(a1, v8);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for TodayCard();
  if (swift_dynamicCast())
  {
    TodayCard.media.getter();

    type metadata accessor for TodayCardMediaInAppPurchase();
    if (swift_dynamicCastClass())
    {
      v6 = *(v2 + qword_100983028);
      v7 = TodayCardMediaInAppPurchase.lockup.getter();
      sub_1001BCDCC(159.0, 159.0, v7, v6, a2);
    }
  }

  return result;
}

uint64_t sub_1003B6AD4(uint64_t a1, uint64_t a2, Swift::Bool a3)
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

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v10, a3);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v11, v8);
  type metadata accessor for ArtworkView();
  sub_1003B6FD8(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

id sub_1003B6C24(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096DB48 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
    sub_1000056A8(v6, qword_100983010);
    v7 = v1;
    Conditional.evaluate(with:)();

    [*&v7[qword_100983030] setTextAlignment:{v8, v1}];
    [*&v7[qword_100983038] setTextAlignment:v8];
    return [*&v7[qword_100983040] setTextAlignment:v8];
  }

  return result;
}

void sub_1003B6D90(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1003B6C24(a3);
}

double sub_1003B6DFC()
{

  return result;
}

double sub_1003B6E8C(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for InAppPurchaseTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_100983078;
  if (!qword_100983078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003B6FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_1003B70B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_1003C9368(a4, a5, a6);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

char *sub_1003B71B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_1009728E0) = 0x409F400000000000;
  v7 = qword_1009728F8;
  v8 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v7) = CompoundScrollObserver.init(children:)();
  *(v3 + qword_100972908) = 1;
  *(v3 + qword_100972918) = 0;
  *(v3 + qword_100972920) = 0;
  *(v3 + qword_1009728E8) = a1;
  *(v3 + qword_1009728F0) = a2;
  sub_10002849C(&qword_100983818, &qword_1007CAFA0);
  swift_allocObject();
  swift_retain_n();

  *(v3 + qword_100972900) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  if (v26[0])
  {

    ImpressionsCalculator.isVisible.setter();
  }

  *(a2 + 112) = v26[0];

  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();

  *(v3 + qword_100972910) = ImpressionsScrollObserver.init(_:)();
  v9 = [objc_allocWithZone(UICollectionViewLayout) init];

  v10 = sub_1001854CC(v9, a3);
  swift_unknownObjectWeakAssign();
  v26[3] = type metadata accessor for GenericPagePresenter();
  v26[4] = &protocol witness table for BasePresenter;
  v26[0] = a1;
  v11 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  v12 = v10;

  v13 = v12;
  sub_1003C89B0(v26, v10 + v11);
  swift_endAccess();
  sub_1003C9368(&qword_100983820, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v14 = sub_10002849C(&qword_100983828, &unk_1007CAFA8);

  v15 = sub_1003C107C(v13, a1, a3, v14);
  v16 = *&v13[qword_100972918];
  *&v13[qword_100972918] = v15;

  v17 = qword_1009728F8;
  v18 = *&v13[qword_1009728F8];
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  v19 = v18;

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v20 = *&v13[v17];
  type metadata accessor for PlaybackCoordinator();
  v21 = v20;

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v22 = *&v13[v17];
  sub_1003C93B0(&qword_100983830, &qword_100983818, &qword_1007CAFA0);
  v23 = v22;

  CompoundScrollObserver.addChild(_:)();

  v24 = *&v13[v17];

  CompoundScrollObserver.addChild(_:)();

  return v13;
}

char *sub_1003B76FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_1009836F8, &qword_1007CAF58);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for SearchFocusDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_100983700, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983708, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983710, &qword_1009836F8, &qword_1007CAF58);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2FB0);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003B80F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_1009837C8, &qword_1007CAF90);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for ReviewsDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_1009837D0, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_1009837D8, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_1009837E0, &qword_1009837C8, &qword_1007CAF90);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2FB0);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003B8AE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_1009836A8, &unk_1007CAF40);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for ProductDiffablePagePresenter();
  v48[4] = sub_1003C9368(&unk_1009836B0, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_1009836C0, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_1009836C8, &qword_1009836A8, &unk_1007CAF40);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2FB0);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003B94D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_1009836D8, &qword_1007CAF50);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for SearchLandingDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_1009836E0, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_1009836E8, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_1009836F0, &qword_1009836D8, &qword_1007CAF50);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2FB0);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003B9ECC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983718, &qword_1007CAF60);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_100983720, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983728, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983730, &qword_100983718, &qword_1007CAF60);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2FB0);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BA8C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983738, &qword_1007CAF68);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for ArcadeDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_100983740, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983748, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983750, &qword_100983738, &qword_1007CAF68);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2FB0);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BB2B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983758, &unk_1007CAF70);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_100983760, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983768, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&unk_100983770, &qword_100983758, &unk_1007CAF70);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2FB0);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BBCA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983848, &qword_1007CAFB8);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for GenericDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_100983850, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983858, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983860, &qword_100983848, &qword_1007CAFB8);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2FB0);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BC69C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v46 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983780, &qword_1007CAF80);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v50[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v46;
  *(v3 + qword_1009CF3E0) = v46;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v50[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v50[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v48 = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];
  (*(ObjectType + 792))();

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v50[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v50[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v50[3] = type metadata accessor for TodayDiffablePagePresenter();
  v50[4] = sub_1003C9368(&qword_100983788, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v50[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v50, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983790, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983798, &qword_100983780, &qword_1007CAF80);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2FB0);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BD0B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_1009837A8, &qword_1007CAF88);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for ArticleDiffablePagePresenter();
  v48[4] = sub_1003C9368(&unk_1009837B0, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100980400, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_1009837C0, &qword_1009837A8, &qword_1007CAF88);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2FB0);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BDAA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_1009837E8, &qword_1007CAF98);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for MSODiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_1009837F0, &type metadata accessor for MSODiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_1009837F8, &type metadata accessor for MSODiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983800, &qword_1009837E8, &qword_1007CAF98);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2FB0);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BE498(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983898, qword_1007CAFD8);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for SearchResultsDiffablePagePresenter();
  v48[4] = sub_1003C9368(&qword_1009838A0, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_1009838A8, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&unk_1009838B0, &qword_100983898, qword_1007CAFD8);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2FB0);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BEE8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097F2D0) = 0x409F400000000000;
  v8 = qword_10097F2D8;
  type metadata accessor for VisibleShelfSupplementaryCollectionElementsObserver();
  swift_allocObject();
  *(v2 + v8) = VisibleShelfSupplementaryCollectionElementsObserver.init()();
  v9 = qword_10097F2E0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_10097F2E8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_10097F2F0) = 0;
  *(v3 + qword_10097F2F8) = 0;
  ShelfBasedCollectionViewControllerDependencies.init()();
  *(v3 + qword_1009CF3E8) = 0;
  *(v3 + qword_1009CF400) = 0;
  *(v3 + qword_10097F300) = 0;
  *(v3 + qword_10097F308) = 0;
  *(v3 + qword_1009CF408) = 0;
  v17 = qword_1009CF410;
  v18 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v3 + v17) = CompoundScrollObserver.init(children:)();
  v19 = qword_1009CF418;
  sub_10002849C(&qword_100983878, &qword_1007CAFD0);
  swift_allocObject();
  *(v3 + v19) = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();
  *(v3 + qword_1009CF420) = 1;
  *(v3 + qword_10097F318) = 0;
  *(v3 + qword_1009CF428) = 0;
  v20 = qword_1009CF430;
  type metadata accessor for ComponentHeightCache();
  swift_allocObject();
  *(v3 + v20) = ComponentHeightCache.init()();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100397AC8(_swiftEmptyArrayStorage);
  v48[0] = v21;
  Dependency.init<A>(satisfying:with:)();
  v22 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_1009CF3E0) = v47;

  TimedMetricsPagePresenter.impressionsCalculator.getter();
  ImpressionsCalculator.isVisible.setter();

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F0) = v48[0];
  type metadata accessor for InlineUnifiedMessagePresenter();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009CF3F8) = v48[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v3 + qword_10097F310) = ImpressionsScrollObserver.init(_:)();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_1000659FC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_1009CF418] = InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)();

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();

  v29 = v48[0];
  dispatch thunk of VideoPlaybackCoordinator.setParentViewController(_:)();

  type metadata accessor for PlaybackCoordinator();

  inject<A, B>(_:from:)();

  v30 = v48[0];
  dispatch thunk of PlaybackCoordinator.setParentViewController(_:)();

  v48[3] = type metadata accessor for TopChartDiffableSegmentPresenter();
  v48[4] = sub_1003C9368(&qword_100983880, &type metadata accessor for TopChartDiffableSegmentPresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1003C89B0(v48, &v27[v31]);
  swift_endAccess();
  sub_1003C9368(&qword_100983888, &type metadata accessor for TopChartDiffableSegmentPresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  MetricsPagePresenter.prepareToObserveAssets(_:)();

  v32 = qword_1009CF410;
  v33 = *&v27[qword_1009CF410];

  inject<A, B>(_:from:)();

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v34 = *&v27[v32];

  inject<A, B>(_:from:)();

  type metadata accessor for PlaybackScrollObserver();
  swift_allocObject();
  PlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v35 = *&v27[v32];
  sub_1003C93B0(&qword_100983890, &qword_100983878, &qword_1007CAFD0);
  v36 = v35;

  CompoundScrollObserver.addChild(_:)();

  v37 = *&v27[v32];

  CompoundScrollObserver.addChild(_:)();

  v38 = *&v27[v32];
  v39 = qword_10097F2E8;
  sub_1003C9368(&qword_1009836D0, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2FB0);
  v40 = v38;

  CompoundScrollObserver.addChild(_:)();

  v41 = *&v27[qword_1009CF3F8];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  InlineUnifiedMessagePresenter.actionHandler.setter();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_1008BCDD0;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1003BF880(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph;
    v9 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    v10 = v7;

    BaseObjectGraph.injectIfAvailable<A>(_:)();

    v11 = *(v9 - 8);
    if ((*(v11 + 48))(v5, 1, v9) == 1)
    {

      return sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      v12 = *&v7[v8];

      sub_1005F9AF4(a1, 1, v12, v5);

      return (*(v11 + 8))(v5, v9);
    }
  }

  return result;
}

uint64_t sub_1003BFA4C@<X0>(uint64_t a2@<X1>, char *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v18 = Strong;
  v19 = [Strong collectionView];

  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = [v19 indexPathForItemAtPoint:{a5, a6}];
  if (!v20)
  {

    goto LABEL_10;
  }

  v21 = v20;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v23 = [v19 cellForItemAtIndexPath:isa];

  v24 = sub_1003BFE64(v16, a2);
  if (!v23 || (swift_getObjectType(), !swift_conformsToProtocol2()))
  {

    v29 = *(v11 + 32);
    v29(v13, v16, v10);
    v29(a4, v13, v10);
    v30 = type metadata accessor for PreviewItem(0);
    v31 = v30;
    *&a4[*(v30 + 20)] = v23;
LABEL_20:
    *&a4[*(v30 + 24)] = v24;
    return (*(*(v30 - 8) + 56))(a4, 0, 1, v31);
  }

  v25 = v19;
  v26 = sub_1003C0DFC(v25, v23, a5, a6);
  v28 = v27;

  if (v28)
  {
    (*(v11 + 8))(v16, v10);

LABEL_10:
    v32 = type metadata accessor for PreviewItem(0);
    return (*(*(v32 - 8) + 56))(a4, 1, 1, v32);
  }

  sub_10002849C(&qword_100980550, &qword_1007B1290);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007B1890;
  *(v34 + 32) = IndexPath.section.getter();
  *(v34 + 40) = v26;
  IndexPath.init(arrayLiteral:)();
  v35 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v36 = *&v23[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (!(v36 >> 62))
  {
    result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26 < result)
    {
      goto LABEL_13;
    }

LABEL_18:

    v38 = 0;
    goto LABEL_19;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v26 >= result)
  {
    goto LABEL_18;
  }

LABEL_13:
  v37 = *&v23[v35];
  if ((v37 & 0xC000000000000001) != 0)
  {

    v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_19;
  }

  if (v26 < 0)
  {
    __break(1u);
  }

  else if (v26 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(v37 + 8 * v26 + 32);

LABEL_19:
    (*(v11 + 8))(v16, v10);
    v30 = type metadata accessor for PreviewItem(0);
    v31 = v30;
    *&a4[*(v30 + 20)] = v38;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

id sub_1003BFE64(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShelfBackground();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_10002849C(&unk_1009804F0, &unk_1007B3800);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  swift_getObjectType();
  v13 = swift_conformsToProtocol2();
  result = 0;
  if (!v13 || !a2)
  {
    return result;
  }

  v34 = v6;
  v15 = v3;
  v36 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v35 = ObjectType;
  dispatch thunk of ShelfPresenter.itemBackground(forItemAt:)();
  v17 = type metadata accessor for ItemBackground();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    sub_10002B894(v12, &unk_1009804F0, &unk_1007B3800);
  }

  else
  {
    v19 = ItemBackground.isSolidColorAdBackground.getter();
    (*(v18 + 8))(v12, v17);
    if (v19)
    {
      if (qword_10096EFB0 != -1)
      {
        swift_once();
      }

      v20 = qword_1009D3A08;
      swift_unknownObjectRelease();
      return v20;
    }
  }

  dispatch thunk of ShelfPresenter.interactiveShelfBackground(at:)();
  v21 = v36;
  v22 = *(v36 + 88);
  v23 = v22(v9, v15);
  v24 = enum case for ShelfBackground.color(_:);
  if (v23 == enum case for ShelfBackground.color(_:))
  {
    swift_unknownObjectRelease();
    (*(v21 + 96))(v9, v15);
    v25 = *v9;
    v26 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
    v27 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v27 - 8) + 8))(&v9[v26], v27);
    return v25;
  }

  v32 = *(v21 + 8);
  v33 = v21 + 8;
  v32(v9, v15);
  IndexPath.section.getter();
  v28 = v34;
  dispatch thunk of ShelfPresenter.background(for:)();
  swift_unknownObjectRelease();
  if (v22(v28, v15) == v24)
  {
    (*(v21 + 96))(v28, v15);
    v25 = *v28;
    v29 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
    v30 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v30 - 8) + 8))(&v28[v29], v30);
    return v25;
  }

  v32(v28, v15);
  return 0;
}

void sub_1003C02BC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentingViewController];

    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1003C057C(void *a1, char a2)
{
  if (a1)
  {
    v3 = [a1 presentingViewController];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = a2 & 1;
      *(v6 + 24) = v5;
      v8[4] = sub_1003C8A48;
      v8[5] = v6;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_100007A08;
      v8[3] = &unk_1008C0C88;
      v7 = _Block_copy(v8);

      [v4 dismissViewControllerAnimated:1 completion:v7];
      _Block_release(v7);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1003C06A4(char a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100982A90, &unk_1007CAFC0);
  v31 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v28 - v4;
  v6 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v30 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v28 - v7;
  v9 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for AlertActionStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      type metadata accessor for Artwork();
      v16 = sub_10008754C(0x6E65537473616F54, 0xE900000000000074, 90.0, 90.0);
      v29 = v3;
      v17 = v16;
      v18._object = 0x8000000100810EC0;
      v18._countAndFlagsBits = 0xD000000000000012;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      v20 = localizedString(_:comment:)(v18, v19);
      v28[2] = v20._object;
      v28[3] = v20._countAndFlagsBits;
      v21._countAndFlagsBits = 0xD000000000000018;
      v21._object = 0x8000000100810EE0;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      v28[1] = localizedString(_:comment:)(v21, v22)._object;
      (*(v11 + 104))(v13, enum case for AlertActionStyle.toast(_:), v10);
      v28[4] = v17;

      static ActionMetrics.notInstrumented.getter();
      v23 = type metadata accessor for AlertAction();
      swift_allocObject();
      v24 = AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)();
      type metadata accessor for BaseObjectGraph();

      inject<A, B>(_:from:)();

      v32[3] = v23;
      v32[4] = sub_1003C9368(&qword_100983868, &type metadata accessor for AlertAction, &protocol conformance descriptor for Action);
      v32[0] = v24;
      v25 = v31;
      v26 = v29;
      (*(v31 + 104))(v5, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v29);

      ActionDispatcher.perform(_:withMetrics:asPartOf:)();

      (*(v25 + 8))(v5, v26);
      (*(v30 + 8))(v8, v6);
      sub_100007000(v32);
      v27 = *&v15[OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate_selfReference];
      *&v15[OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate_selfReference] = 0;
    }
  }
}

id sub_1003C0C18(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003C0D24(uint64_t a1)
{
  v3 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v1 + 32) = CompoundScrollObserver.init(children:)();
  *(v1 + 40) = &protocol witness table for CompoundScrollObserver;
  swift_unknownObjectWeakInit();
  *(v1 + 56) = sub_100397604(_swiftEmptyArrayStorage);
  *(v1 + 64) = sub_1003977E0(_swiftEmptyArrayStorage);
  *(v1 + 72) = sub_1003977F4(_swiftEmptyArrayStorage);
  *(v1 + 80) = 0;
  *(v1 + 88) = xmmword_1007CAE30;
  *(v1 + 104) = 0xC020000000000000;
  *(v1 + 112) = 0;
  *(v1 + 16) = a1;
  sub_10002849C(&unk_100980500, &unk_1007C5220);
  swift_allocObject();
  *(v1 + 24) = TransientStateStore.init(isConcurrent:)();
  return v1;
}

unint64_t sub_1003C0DFC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(a2 + OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  if (v7 >> 62)
  {
LABEL_16:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    [v11 convertPoint:a1 fromCoordinateSpace:{a3, a4}];
    v13 = [v12 pointInside:0 withEvent:?];

    v9 = v10 + 1;
    if (v13)
    {
      v14 = v10;
      goto LABEL_13;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

id sub_1003C0F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1003C9368(&unk_100983838, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  v9 = sub_10002849C(&qword_100983828, &unk_1007CAFA8);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_1009816B8];
  *&v10[qword_1009816B8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_1009816B0];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  *&v10[qword_1009816C8] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_1003C107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003C9368(&unk_100983838, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = v8;
  v10[5] = a4;

  v12 = sub_1003C0F40(v11, a1, sub_1003C8A3C, v10, a3);

  return v12;
}

char *sub_1003C1178(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MetricsPipeline();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  type metadata accessor for PageFacetsPresenter();
  swift_allocObject();
  v10 = PageFacetsPresenter.init()();
  static PageFacetsFieldsProvider.metricsPipelineWithPageFacetsProvider(using:currentPipeline:)();
  sub_10002849C(&qword_1009844F0, &qword_1007B12D0);
  type metadata accessor for Dependency();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007B1890;
  (*(v4 + 16))(v6, v9, v3);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for GuidedSearchPresenter();
  swift_allocObject();
  v16[1] = GuidedSearchPresenter.init()();
  Dependency.init<A>(satisfying:with:)();
  v12 = sub_10054A47C(a2, 0, 0, v11, 0x686372616573, 0xE600000000000000);

  v13 = objc_allocWithZone(type metadata accessor for SearchViewController(0));
  v14 = sub_100402294(v10, v12);

  (*(v4 + 8))(v9, v3);
  return v14;
}

id sub_1003C1408(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v27[3] = a5(0);
  v27[4] = sub_1003C9368(a6, a7, a8);
  v27[0] = a1;
  *&a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_overflowTransitioning] = 0;
  if (sub_1005D8420())
  {
    v18 = v17;
    *&a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_objectGraph] = a3;
    sub_10002849C(&unk_100980500, &unk_1007C5220);
    swift_allocObject();

    *&a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_stateStore] = TransientStateStore.init(isConcurrent:)();
    sub_10002C0AC(v27, &a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_model]);
    v19 = [objc_allocWithZone(UIScrollView) init];
    *&a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_scrollView] = v19;
    v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v21 = &a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_componentView];
    *v21 = v20;
    *(v21 + 1) = v18;
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    *&a4[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_artworkLoader] = v26;
    v25.receiver = a4;
    v25.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
    v23 = type metadata accessor for Shelf.ContentType();
    (*(*(v23 - 8) + 8))(a2, v23);
    sub_100007000(v27);
    return v22;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1003C1668(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v615 = a8;
  v641 = a6;
  v642 = a5;
  v656 = a4;
  v655 = a3;
  v616 = a2;
  v660 = a1;
  v9 = sub_10002849C(&qword_100983508, &unk_1007CC950);
  __chkstk_darwin(v9 - 8);
  v614 = &v565 - v10;
  v11 = sub_10002849C(&qword_100983510, &qword_1007CAEA0);
  __chkstk_darwin(v11 - 8);
  v612 = &v565 - v12;
  v607 = type metadata accessor for DashboardLaunchContext();
  v606 = *(v607 - 8);
  __chkstk_darwin(v607);
  v608 = &v565 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v611 = type metadata accessor for IndexPath();
  v610 = *(v611 - 8);
  __chkstk_darwin(v611);
  v609 = &v565 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v638 = type metadata accessor for Shelf.ContentType();
  v637 = *(v638 - 8);
  __chkstk_darwin(v638);
  v640 = &v565 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&qword_100983518, &qword_1007CAEA8);
  __chkstk_darwin(v16 - 8);
  v605 = &v565 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v613 = &v565 - v19;
  v644 = type metadata accessor for ShareSheetAction.ShareSheetStyle();
  v643 = *(v644 - 8);
  __chkstk_darwin(v644);
  v619 = &v565 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v639 = &v565 - v22;
  v577 = type metadata accessor for URLComponents();
  v576 = *(v577 - 8);
  __chkstk_darwin(v577);
  v568 = &v565 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v574 = type metadata accessor for RateAction.Parameter();
  v573 = *(v574 - 8);
  __chkstk_darwin(v574);
  v572 = &v565 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v575 = type metadata accessor for URLQueryItem();
  v578 = *(v575 - 8);
  __chkstk_darwin(v575);
  v569 = &v565 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v617 = &v565 - v27;
  v28 = sub_10002849C(&unk_100983520, &qword_1007CAEB0);
  __chkstk_darwin(v28 - 8);
  v618 = &v565 - v29;
  v601 = type metadata accessor for LegacyAppState();
  v600 = *(v601 - 8);
  __chkstk_darwin(v601);
  v603 = &v565 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v630 = type metadata accessor for AdamId();
  v629 = *(v630 - 8);
  __chkstk_darwin(v630);
  v628 = &v565 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v626 = type metadata accessor for PurchasesContentMode();
  v625 = *(v626 - 8);
  __chkstk_darwin(v626);
  v602 = &v565 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v566 = type metadata accessor for Bag();
  __chkstk_darwin(v566);
  v567 = &v565 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v624 = type metadata accessor for Dependency();
  v648 = *(v624 - 8);
  __chkstk_darwin(v624);
  v623 = &v565 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v599 = type metadata accessor for ArcadeWelcomePage.ContentType();
  v598 = *(v599 - 8);
  __chkstk_darwin(v599);
  v587 = &v565 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v635 = &v565 - v37;
  v596 = type metadata accessor for ArcadePageUrls();
  v595 = *(v596 - 8);
  __chkstk_darwin(v596);
  v585 = &v565 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v594 = &v565 - v40;
  v41 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v41 - 8);
  v584 = &v565 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v590 = &v565 - v44;
  __chkstk_darwin(v45);
  v571 = &v565 - v46;
  __chkstk_darwin(v47);
  v583 = &v565 - v48;
  __chkstk_darwin(v49);
  v604 = &v565 - v50;
  __chkstk_darwin(v51);
  v651 = &v565 - v52;
  __chkstk_darwin(v53);
  v652 = &v565 - v54;
  v589 = type metadata accessor for FlowOrigin();
  v588 = *(v589 - 8);
  __chkstk_darwin(v589);
  v582 = &v565 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v586 = &v565 - v57;
  v58 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v58 - 8);
  v636 = &v565 - v59;
  v593 = type metadata accessor for ProductDiffablePagePresenter.PageWidth();
  v592 = *(v593 - 8);
  __chkstk_darwin(v593);
  v597 = &v565 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v634 = type metadata accessor for ASKBagContract.AdPlacementBagValue();
  v633 = *(v634 - 8);
  __chkstk_darwin(v634);
  v632 = &v565 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v657 = type metadata accessor for URL();
  v654 = *(v657 - 8);
  __chkstk_darwin(v657);
  v620 = &v565 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v627 = &v565 - v64;
  __chkstk_darwin(v65);
  v570 = &v565 - v66;
  __chkstk_darwin(v67);
  v650 = &v565 - v68;
  __chkstk_darwin(v69);
  v653 = &v565 - v70;
  __chkstk_darwin(v71);
  v591 = &v565 - v72;
  __chkstk_darwin(v73);
  v646 = &v565 - v74;
  v659 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v659);
  v76 = (&v565 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v77 - 8);
  v78 = type metadata accessor for MetricsPipeline();
  v667 = *(v78 - 8);
  __chkstk_darwin(v78);
  v579 = &v565 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v581 = &v565 - v81;
  __chkstk_darwin(v82);
  v84 = &v565 - v83;
  v85 = sub_100005744(0, &qword_10098D1A0, ACAccountStore_ptr);
  type metadata accessor for BaseObjectGraph();
  v622 = v85;
  inject<A, B>(_:from:)();
  v661 = v680[0];
  v647 = sub_10002849C(&unk_100973AF0, &qword_1007B3960);
  inject<A, B>(_:from:)();
  v662 = v680[0];
  v645 = v680[1];
  type metadata accessor for ArcadeSubscriptionManager();
  inject<A, B>(_:from:)();
  v663 = v680[0];
  v631 = type metadata accessor for ASKBagContract();
  inject<A, B>(_:from:)();
  v668 = v680[0];
  type metadata accessor for GameCenterFriendRequestCoordinator();
  inject<A, B>(_:from:)();
  v664 = v680[0];
  v670 = v84;
  v666 = v78;
  inject<A, B>(_:from:)();
  type metadata accessor for PersonalizationDataProvider();
  BaseObjectGraph.optional<A>(_:)();
  v665 = v680[0];
  v621 = sub_10002849C(&unk_100975540, &qword_1007B77A0);
  inject<A, B>(_:from:)();
  v86 = type metadata accessor for Restrictions();
  v658 = a7;
  v580 = v86;
  inject<A, B>(_:from:)();
  v669 = v677;
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for OSLogger();
  sub_1000056A8(v87, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  v88 = swift_allocObject();
  v649 = xmmword_1007B10D0;
  *(v88 + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v89._countAndFlagsBits = 0xD000000000000049;
  v89._object = 0x8000000100810B70;
  LogMessage.StringInterpolation.appendLiteral(_:)(v89);
  v90 = v660;
  v91 = sub_10040A6A4();
  *(&v678 + 1) = &type metadata for String;
  *&v677 = v91;
  *(&v677 + 1) = v92;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v677, &unk_1009711D0, &unk_1007B1A10);
  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v93);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100118188(v90, v76);
  v94 = v76;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v291 = *(sub_10002849C(&qword_100983688, &qword_1007CAF30) + 48);
      v292 = v654;
      v293 = v653;
      v281 = v657;
      (*(v654 + 32))(v653, v76, v657);
      v294 = v588;
      v295 = v586;
      v296 = v589;
      (*(v588 + 32))(v586, v76 + v291, v589);
      (*(v292 + 16))(v650, v293, v281);
      v297 = v582;
      (*(v294 + 104))(v582, enum case for FlowOrigin.external(_:), v296);
      static FlowOrigin.== infix(_:_:)();
      v660 = *(v294 + 8);
      v660(v297, v296);
      sub_100031660(v642, v636, &unk_1009767C0, &unk_1007B1880);
      type metadata accessor for LoadingPagePresenter();
      swift_allocObject();
      v298 = v658;

      v299 = LoadingPagePresenter.init(objectGraph:pageUrl:isIncomingURL:referrerData:)();

      dispatch thunk of BasePresenter.referrer.setter();
      v300 = sub_1003C9368(&qword_100983690, &type metadata accessor for LoadingPagePresenter, &protocol conformance descriptor for BasePresenter);

      v301 = sub_10054A47C(v298, v299, v300, _swiftEmptyArrayStorage, 0x50676E6964616F6CLL, 0xEB00000000656761);

      v302 = objc_allocWithZone(type metadata accessor for LoadingPageViewController());
      sub_10023AF58(v299, v301);

      swift_unknownObjectRelease();

      v660(v295, v296);
      v286 = *(v292 + 8);
      v287 = v653;
      goto LABEL_44;
    case 2u:
      v267 = v654;
      v268 = v653;
      v269 = v76;
      v270 = v657;
      (*(v654 + 32))(v653, v269, v657);
      v271 = v650;
      (*(v267 + 16))(v650, v268, v270);
      v272 = sub_10054A47C(v658, 0, 0, _swiftEmptyArrayStorage, 0x77656956626577, 0xE700000000000000);
      v273 = objc_allocWithZone(type metadata accessor for WebViewController());
      sub_1005FC01C(v271, v272);

      swift_unknownObjectRelease();

      (*(v267 + 8))(v268, v270);
      goto LABEL_85;
    case 3u:
      v278 = *(v76 + *(sub_10002849C(&qword_100983680, &qword_1007CAF28) + 48));
      v279 = v654;
      v280 = v653;
      v281 = v657;
      (*(v654 + 32))(v653, v76, v657);
      v282 = v650;
      (*(v279 + 16))(v650, v280, v281);
      v283 = v656;

      v284 = sub_10054A47C(v658, 0, 0, _swiftEmptyArrayStorage, 0x5063696D616E7964, 0xEB00000000656761);
      v285 = objc_allocWithZone(type metadata accessor for DynamicViewController());
      sub_100649FB0(v282, v278, v655, v283, v284);

      swift_unknownObjectRelease();

      v286 = *(v279 + 8);
      v287 = v280;
LABEL_44:
      v303 = v281;
      goto LABEL_50;
    case 4u:
      sub_1001181EC(v76);
      v207 = v670;
      sub_1003C1178(v670, v658);

      swift_unknownObjectRelease();

      sub_100007000(v680);
      (*(v667 + 8))(v207, v666);
      return;
    case 5u:

      v341 = sub_10002849C(&qword_100983670, &qword_1007CAF20);
      v342 = v652;
      sub_1000476A0(v76 + *(v341 + 48), v652, &qword_100982460, &unk_1007B5C90);
      sub_100031660(v342, v651, &qword_100982460, &unk_1007B5C90);
      type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter();
      swift_allocObject();
      v343 = v658;

      v344 = SearchChartsAndCategoriesDiffablePagePresenter.init(objectGraph:pageUrl:)();
      v345 = sub_1003C9368(&qword_100983678, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
      v346 = sub_10054A47C(v343, v344, v345, _swiftEmptyArrayStorage, 0xD00000000000001DLL, 0x8000000100810E50);
      v347 = objc_allocWithZone(type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController(0));

      v348 = sub_1003B9ECC(v344, v346);
      v348[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 1;
      v349 = v348;
      v350 = [v349 navigationItem];
      [v350 setLargeTitleDisplayMode:3];

      swift_unknownObjectRelease();

      goto LABEL_53;
    case 6u:
      v366 = *v76;
      v367 = sub_10054A47C(v658, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100810E30);
      v368 = objc_allocWithZone(type metadata accessor for GalleryViewController());
      sub_10062DC8C(v366, v367);
      goto LABEL_83;
    case 7u:
      sub_10002849C(&qword_100983668, &qword_1007CAF18);

      v288 = v654;
      v289 = v653;
      v290 = v657;
      (*(v654 + 32))(v653, v94, v657);
      sub_100482B14(v289);

      swift_unknownObjectRelease();

      (*(v288 + 8))(v289, v290);
      goto LABEL_85;
    case 8u:
      v386 = v76 + *(sub_10002849C(&unk_10097CCB0, &qword_1007B7100) + 48);
      v387 = v652;
      sub_1000476A0(v386, v652, &qword_100982460, &unk_1007B5C90);
      sub_100031660(v387, v651, &qword_100982460, &unk_1007B5C90);
      type metadata accessor for GenericDiffablePagePresenter();
      swift_allocObject();

      v388 = v658;

      v389 = GenericDiffablePagePresenter.init(objectGraph:personalizationProvider:sidePackedPage:sidePackedPageRenderMetrics:pageUrl:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();
      v390 = sub_1003C9368(&qword_100983550, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v391 = sub_10054A47C(v388, v389, v390, _swiftEmptyArrayStorage, 0x50636972656E6567, 0xEB00000000656761);

      v392 = objc_allocWithZone(type metadata accessor for GenericDiffablePageViewController(0));
      sub_10073BE78(v389, v391);

      swift_unknownObjectRelease();

      v122 = v387;
      goto LABEL_60;
    case 9u:
      v222 = sub_10002849C(&qword_100983608, &unk_1007CAEF0);
      v223 = v652;
      sub_1000476A0(v76 + *(v222 + 48), v652, &qword_100982460, &unk_1007B5C90);
      sub_100031660(v223, v651, &qword_100982460, &unk_1007B5C90);
      type metadata accessor for TopChartsDiffablePagePresenter();
      swift_allocObject();

      v224 = v658;

      v225 = TopChartsDiffablePagePresenter.init(objectGraph:pageUrl:sidePackedPage:)();
      v226 = sub_1003C9368(&unk_100983610, &type metadata accessor for TopChartsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v227 = sub_10054A47C(v224, v225, v226, _swiftEmptyArrayStorage, 0x7472616843706F74, 0xED00006567615073);

      v228 = objc_allocWithZone(type metadata accessor for TopChartsDiffablePageViewController());
      sub_1002021F8(v225, v227);

      swift_unknownObjectRelease();

      v122 = v223;
      goto LABEL_60;
    case 0xAu:
      v374 = *v76;
      v375 = v76[1];
      v376 = sub_10002849C(&qword_100983590, &qword_1007CAEC8);
      v377 = v643;
      v378 = v639;
      v379 = v644;
      (*(v643 + 32))(v639, v94 + *(v376 + 64), v644);
      v380 = v619;
      (*(v377 + 16))(v619, v378, v379);
      v381 = (*(v377 + 88))(v380, v379);
      if (v381 == enum case for ShareSheetAction.ShareSheetStyle.expanded(_:))
      {
        v382 = 0;
        v383 = v667;
        v384 = v666;
        v385 = v664;
      }

      else
      {
        v383 = v667;
        v384 = v666;
        v385 = v664;
        if (v381 != enum case for ShareSheetAction.ShareSheetStyle.collapsed(_:))
        {
          (*(v643 + 8))(v619, v644);
        }

        v382 = 1;
      }

      v505 = sub_10054A47C(v658, 0, 0, _swiftEmptyArrayStorage, 0x6568536572616873, 0xEA00000000007465);
      v506 = objc_allocWithZone(type metadata accessor for ActivityViewController());
      sub_1005A61DC(v374, v375, v382, v505);

      swift_unknownObjectRelease();

      (*(v643 + 8))(v639, v644);
      sub_100007000(v680);
      (*(v383 + 8))(v670, v384);
      return;
    case 0xBu:
      v194 = *v76;
      v195 = v76[1];
      v196 = v76[2];
      v197 = v76[3];
      sub_100005744(0, &qword_100983588, &off_1008A2F70);
      v198 = sub_10054A47C(v658, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100810D00);
      v199 = v194;
      v200 = v195;
      v201 = v196;
      v202 = v197;
      v203 = 0;
      goto LABEL_28;
    case 0xCu:
      v218 = *v76;
      v219 = v76[1];
      v220 = v76[2];
      v221 = v76[3];
      sub_100005744(0, &qword_100983588, &off_1008A2F70);
      v198 = sub_10054A47C(v658, 0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x8000000100810CE0);
      v199 = v218;
      v200 = v219;
      v201 = v220;
      v202 = v221;
      v203 = 1;
LABEL_28:
      sub_1001944A0(v199, v200, v201, v202, v203, v198);
      goto LABEL_83;
    case 0xDu:
      v356 = sub_10002849C(&qword_1009703B8, &qword_1007CAF10);
      v357 = v595;
      v358 = v594;
      v359 = v596;
      (*(v595 + 32))(v594, v76 + *(v356 + 48), v596);
      v360 = v663;
      ASKBagContract.fetchTimeout.getter();
      (*(v357 + 16))(v585, v358, v359);
      type metadata accessor for ArcadeDiffablePagePresenter();
      swift_allocObject();

      v361 = v658;

      v362 = ArcadeDiffablePagePresenter.init(objectGraph:arcadeSubscriptionManager:subscriptionStateFetchTimeout:sidePackedPage:pageUrls:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();
      v363 = sub_1003C9368(&qword_100983660, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v364 = sub_10054A47C(v361, v362, v363, _swiftEmptyArrayStorage, 0x6150656461637261, 0xEA00000000006567);

      v365 = objc_allocWithZone(type metadata accessor for ArcadeDiffablePageViewController(0));
      sub_10041C770(v362, v364);

      swift_unknownObjectRelease();

      (*(v357 + 8))(v358, v359);
      goto LABEL_85;
    case 0xEu:
      v176 = *(v76 + *(sub_10002849C(&qword_100983638, &qword_1007CAF00) + 64));
      v177 = v652;
      sub_1000476A0(v76, v652, &qword_100982460, &unk_1007B5C90);
      sub_100031660(v177, v651, &qword_100982460, &unk_1007B5C90);
      type metadata accessor for ArcadeSubscribePresenter();
      swift_allocObject();

      v178 = v658;

      v179 = v663;
      v180 = ArcadeSubscribePresenter.init(objectGraph:subscriptionManager:url:sidepack:)();

      dispatch thunk of BasePresenter.referrer.setter();
      v181 = sub_1003C9368(&qword_100983640, &type metadata accessor for ArcadeSubscribePresenter, &protocol conformance descriptor for BasePresenter);

      v182 = sub_10054A47C(v178, v180, v181, _swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100810DF0);

      v183 = objc_allocWithZone(type metadata accessor for ArcadeSubscribeViewController());
      sub_1005F56BC(v180, v176, v182);

      swift_unknownObjectRelease();

      goto LABEL_77;
    case 0xFu:
      v274 = *v76;
      v275 = v656;

      v276 = sub_10054A47C(v658, 0, 0, _swiftEmptyArrayStorage, 0x6E6974656B72616DLL, 0xED00006D65744967);
      v277 = objc_allocWithZone(type metadata accessor for MarketingItemViewController());
      sub_1005A31D0(v274, v655, v275, v276);
      goto LABEL_83;
    case 0x10u:

      v151 = sub_10002849C(&qword_100983648, &qword_1007CAF08);
      v152 = v654;
      v153 = v76 + *(v151 + 48);
      v154 = v653;
      v155 = v657;
      (*(v654 + 32))(v653, v153, v657);
      type metadata accessor for PageFacetsPresenter();
      swift_allocObject();
      PageFacetsPresenter.init()();
      v156 = v581;
      static PageFacetsFieldsProvider.metricsPipelineWithPageFacetsProvider(using:currentPipeline:)();
      (*(v152 + 16))(v650, v154, v155);
      v157 = v667;
      v158 = v666;
      (*(v667 + 16))(v579, v156, v666);
      type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter();
      swift_allocObject();
      v159 = v658;

      v160 = ArcadeSeeAllGamesDiffablePagePresenter.init(objectGraph:pageUrl:facetsPresenter:metricsPipeline:)();
      v161 = sub_1003C9368(&unk_100983650, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
      sub_10002849C(&qword_1009844F0, &qword_1007B12D0);
      v162 = swift_allocObject();
      *(v162 + 16) = v649;

      static Dependency.satisfying<A>(_:with:)();
      v163 = sub_10054A47C(v159, v160, v161, v162, 0xD000000000000015, 0x8000000100810E10);

      v164 = objc_allocWithZone(type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController(0));
      sub_100283E4C(v160, v163);

      swift_unknownObjectRelease();

      v165 = *(v157 + 8);
      v165(v156, v158);
      (*(v152 + 8))(v653, v657);
      sub_100007000(v680);
      v165(v670, v158);
      return;
    case 0x11u:
      v309 = sub_10002849C(&qword_100975958, &unk_1007BA410);
      v310 = *(v309 + 64);
      v311 = v598;
      v312 = v635;
      v313 = v599;
      (*(v598 + 32))(v635, v76 + *(v309 + 48), v599);
      v314 = v654;
      v315 = v653;
      v316 = v657;
      (*(v654 + 32))(v653, v76 + v310, v657);
      (*(v311 + 16))(v587, v312, v313);
      (*(v314 + 16))(v650, v315, v316);
      type metadata accessor for ArcadeWelcomePagePresenter();
      swift_allocObject();

      v317 = v658;

      v318 = ArcadeWelcomePagePresenter.init(objectGraph:contentType:welcomePage:url:)();
      v319 = sub_1003C9368(&qword_100983630, &type metadata accessor for ArcadeWelcomePagePresenter, &protocol conformance descriptor for BasePresenter);

      v320 = sub_10054A47C(v317, v318, v319, _swiftEmptyArrayStorage, 0xD000000000000011, 0x8000000100810DD0);

      v321 = objc_allocWithZone(type metadata accessor for ArcadeWelcomeViewController());
      sub_100545918(v318, v320);

      swift_unknownObjectRelease();

      (*(v314 + 8))(v315, v316);
      (*(v311 + 8))(v635, v313);
      goto LABEL_85;
    case 0x12u:
      type metadata accessor for ArcadeDownloadPackCategoriesPagePresenter();
      swift_allocObject();
      v369 = v658;

      v370 = ArcadeDownloadPackCategoriesPagePresenter.init(objectGraph:subscriptionStatus:)();
      v371 = sub_1003C9368(&unk_100983620, &type metadata accessor for ArcadeDownloadPackCategoriesPagePresenter, &protocol conformance descriptor for BasePresenter);

      v372 = sub_10054A47C(v369, v370, v371, _swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100810DA0);

      v373 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackCategoriesViewController());
      sub_100549970(v370, v372);
      goto LABEL_83;
    case 0x13u:
    case 0x34u:

      swift_unknownObjectRelease();

      sub_100007000(v680);
      (*(v667 + 8))(v670, v666);
      return;
    case 0x14u:
      v322 = v654;
      (*(v654 + 32))(v653, v76, v657);
      v323 = v658;
      inject<A, B>(_:from:)();
      v324 = ASKBagContract.enabledAdPlacements.getter();

      v325 = v633;
      v326 = v632;
      v327 = v634;
      (*(v633 + 104))(v632, enum case for ASKBagContract.AdPlacementBagValue.today(_:), v634);
      LODWORD(v659) = sub_1003B70B0(v326, v324, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_1009837A0, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &protocol conformance descriptor for ASKBagContract.AdPlacementBagValue);

      (*(v325 + 8))(v326, v327);
      v328 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
      v329 = swift_allocObject();
      type metadata accessor for PromotedContentMetricCollector();
      *(v329 + 16) = static PromotedContentMetricCollector.shared.getter();
      *(&v678 + 1) = v328;
      v330 = sub_1003C9368(&unk_1009767D0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter, &unk_1007B53D0);
      v679 = v330;
      *&v677 = v329;
      type metadata accessor for AdvertRotationControllerProvider();
      swift_allocObject();

      v331 = AdvertRotationControllerProvider.init(supportsAdvertRotation:advertLifecycleMetricsReporter:)();
      v660 = v331;
      sub_10002849C(&qword_1009844F0, &qword_1007B12D0);
      v332 = swift_allocObject();
      *(v332 + 16) = v649;
      *&v677 = v331;
      static Dependency.satisfying<A>(_:with:)();
      type metadata accessor for TodayCardTriggerController();
      inject<A, B>(_:from:)();
      v333 = [objc_opt_self() sharedApplication];
      [v333 launchedToTest];

      v334 = v652;
      v335 = v657;
      (*(v322 + 16))(v652, v653, v657);
      (*(v322 + 56))(v334, 0, 1, v335);
      *(&v678 + 1) = v328;
      v679 = v330;
      *&v677 = v329;
      type metadata accessor for TodayDiffablePagePresenter();
      swift_allocObject();

      v336 = v661;

      v337 = TodayDiffablePagePresenter.init(objectGraph:pageUrl:triggerController:supportsFastImpressions:accountStore:shouldUpdateOnAccountChange:advertLifecycleMetricsReporter:isRunningPPTs:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();
      v338 = sub_1003C9368(&qword_1009835D0, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v339 = sub_10054A47C(v323, v337, v338, v332, 0x6761507961646F74, 0xE900000000000065);

      v340 = objc_allocWithZone(type metadata accessor for TodayDiffablePageViewController(0));
      sub_1005633B8(v337, v339);

      swift_unknownObjectRelease();

      v286 = *(v322 + 8);
      v287 = v653;
      v303 = v657;
LABEL_50:
      v286(v287, v303);
      goto LABEL_85;
    case 0x15u:
      v351 = sub_10002849C(&qword_1009835C0, &unk_1007D2C60);
      v342 = v652;
      sub_1000476A0(v76 + *(v351 + 48), v652, &qword_100982460, &unk_1007B5C90);
      sub_100031660(v342, v651, &qword_100982460, &unk_1007B5C90);
      type metadata accessor for ArticleDiffablePagePresenter();
      swift_allocObject();

      v352 = v658;

      v353 = ArticleDiffablePagePresenter.init(objectGraph:impressionsTracker:pageUrl:sidePackedPage:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();

      v354 = sub_1003C9368(&qword_1009835C8, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v355 = sub_10054A47C(v352, v353, v354, _swiftEmptyArrayStorage, 0x50656C6369747261, 0xEB00000000656761);

      sub_10030969C(v353, v355, v615 & 1);

      swift_unknownObjectRelease();

LABEL_53:

      v122 = v342;
      goto LABEL_60;
    case 0x16u:
      v419 = *v76;
      inject<A, B>(_:from:)();
      v420 = v677;
      v421 = ASKBagContract.familyPurchasesEnabled.getter();
      if (v419)
      {
        v660 = v420;
        sub_10002849C(&qword_100973210, qword_1007B0BB0);
        v422 = swift_allocObject();
        *(v422 + 1) = xmmword_1007B0B70;
        v422[4] = v419;
        v423 = v419;
LABEL_104:
        v657 = v419;
        v656 = v423;
        v521 = v658;
        inject<A, B>(_:from:)();
        sub_10002849C(&qword_1009835E8, &unk_1007CAEE0);
        v675[0] = v422;
        v522 = v623;
        Dependency.init<A>(satisfying:with:)();
        dispatch thunk of BaseObjectGraph.adding(dependency:)();
        v523 = *(v648 + 8);
        v524 = v624;
        v523(v522, v624);
        type metadata accessor for ASDPurchaseHistoryContext(0);
        v675[0] = 1;
        Dependency.init<A>(satisfying:with:)();
        dispatch thunk of BaseObjectGraph.adding(dependency:)();

        v523(v522, v524);
        LOBYTE(v675[0]) = 1;
        Dependency.init<A>(satisfying:with:)();
        v525 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
        v659 = v525;

        v523(v522, v524);
        v526 = sub_10074EA28(v525);
        v655 = v527;
        inject<A, B>(_:from:)();
        v528 = v675[0];
        sub_10002C0AC(&v677, v675);
        sub_10002849C(&qword_1009835D8, &qword_1007CAED8);
        v529 = v625;
        v530 = *(v625 + 72);
        v531 = (*(v625 + 80) + 32) & ~*(v625 + 80);
        v532 = swift_allocObject();
        *(v532 + 16) = xmmword_1007B1890;
        v533 = v532 + v531;
        v534 = *(v529 + 104);
        v535 = v626;
        v534(v533, enum case for PurchasesContentMode.all(_:), v626);
        v534(v533 + v530, enum case for PurchasesContentMode.notOnDevice(_:), v535);
        type metadata accessor for PurchasesContentPresenter();
        swift_allocObject();

        v536 = v656;
        v537 = v528;
        swift_unknownObjectRetain();
        v538 = v655;
        v539 = PurchasesContentPresenter.init(objectGraph:accountStore:appStateController:familyMember:purchaseHistory:showMacOSCompatibleIOSApps:appleSilicon:contentModes:)();
        v540 = sub_1003C9368(&qword_1009835E0, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for BasePresenter);
        sub_10002849C(&qword_1009844F0, &qword_1007B12D0);
        v541 = swift_allocObject();
        *(v541 + 16) = v649;
        v675[0] = v526;
        v675[1] = v538;

        static Dependency.satisfying<A>(_:with:)();
        v542 = sub_10054A47C(v521, v539, v540, v541, 0x6573616863727570, 0xED00006567615073);

        v543 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
        sub_10044B830(v539, v542, v544);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_100007000(&v677);
        goto LABEL_85;
      }

      if ((v421 & 1) == 0)
      {
        v660 = v420;
        v423 = 0;
        v422 = _swiftEmptyArrayStorage;
        goto LABEL_104;
      }

      v516 = v658;
      inject<A, B>(_:from:)();
      type metadata accessor for PurchasesPresenter();
      swift_allocObject();

      v517 = PurchasesPresenter.init(objectGraph:bag:)();
      v518 = sub_1003C9368(&unk_1009835F0, &type metadata accessor for PurchasesPresenter, &protocol conformance descriptor for BasePresenter);
      v519 = sub_10054A47C(v516, v517, v518, _swiftEmptyArrayStorage, 0xD000000000000014, 0x8000000100810D80);
      v520 = objc_allocWithZone(type metadata accessor for PurchasesLoadingViewController());
      sub_100424DE0(v517, v519);

      swift_unknownObjectRelease();

LABEL_65:

LABEL_84:

      goto LABEL_85;
    case 0x17u:
      v438 = *v76;
      v439 = v76[1];
      v440 = v76[2];
      v441 = sub_10054A47C(v658, 0, 0, _swiftEmptyArrayStorage, 0x6761506775626564, 0xE900000000000065);
      v442 = objc_allocWithZone(type metadata accessor for DebugMenuViewController());
      sub_10057FD78(v441, v438, v439, v440);
      goto LABEL_83;
    case 0x18u:
      sub_10002849C(&qword_1009835B0, &qword_1007CAED0);
      v259 = v654;
      v260 = v653;
      v261 = v657;
      (*(v654 + 32))(v653, v76, v657);
      v262 = v658;
      inject<A, B>(_:from:)();
      (*(v259 + 16))(v650, v260, v261);
      type metadata accessor for InAppPurchaseInstallPagePresenter();
      swift_allocObject();

      swift_unknownObjectRetain();

      v263 = InAppPurchaseInstallPagePresenter.init(objectGraph:sidepack:pageUrl:appStateController:)();
      v264 = sub_1003C9368(&qword_1009835B8, &type metadata accessor for InAppPurchaseInstallPagePresenter, &protocol conformance descriptor for BasePresenter);

      v265 = sub_10054A47C(v262, v263, v264, _swiftEmptyArrayStorage, 0xD000000000000018, 0x8000000100810D40);

      v266 = objc_allocWithZone(type metadata accessor for InAppPurchaseInstallPageViewController(0));
      sub_10022F2DC(v263, v265);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      (*(v259 + 8))(v260, v261);
      goto LABEL_85;
    case 0x19u:
      v229 = *(sub_10002849C(&unk_1009835A0, &unk_1007C9170) + 48);
      v230 = v654;
      v231 = *(v654 + 32);
      v232 = v627;
      v233 = v76;
      v234 = v657;
      (v231)(v627, v233, v657);
      (*(v629 + 32))(v628, v94 + v229, v630);
      inject<A, B>(_:from:)();
      v235 = v620;
      (*(v230 + 16))(v620, v232, v234);
      swift_getObjectType();
      dispatch thunk of AppStateController.stateMachine(forApp:)();
      swift_getObjectType();
      v236 = v603;
      dispatch thunk of AppStateMachine.currentState.getter();
      v237 = v600;
      v238 = v601;
      if ((*(v600 + 88))(v236, v601) != enum case for LegacyAppState.openable(_:))
      {
        (*(v237 + 8))(v236, v238);
        goto LABEL_112;
      }

      v660 = v231;
      (*(v237 + 96))(v236, v238);
      v239 = *&v236[*(sub_10002849C(&unk_100976520, &qword_1007BAEC0) + 48)];
      v240 = type metadata accessor for OpenableDestination();
      (*(*(v240 - 8) + 8))(v236, v240);
      v241 = v618;
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      v242 = v573;
      v243 = v572;
      v244 = v574;
      (*(v573 + 104))(v572, enum case for RateAction.Parameter.version(_:), v574);
      RateAction.Parameter.rawValue.getter();
      (*(v242 + 8))(v243, v244);
      v245 = [v239 stringValue];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v246 = v241;
      URLQueryItem.init(name:value:)();

      v247 = *(v576 + 48);
      v248 = v577;
      v249 = v247(v241, 1, v577);
      v250 = v575;
      if (!v249)
      {
        v251 = URLComponents.queryItems.modify();
        if (*v252)
        {
          v253 = v252;
          v659 = v251;
          (*(v578 + 16))(v569, v617, v250);
          v254 = *v253;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v253 = v254;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v254 = sub_1000348CC(0, v254[2] + 1, 1, v254);
            *v253 = v254;
          }

          v257 = v254[2];
          v256 = v254[3];
          v258 = (v257 + 1);
          if (v257 >= v256 >> 1)
          {
            v656 = (v257 + 1);
            v564 = sub_1000348CC((v256 > 1), v257 + 1, 1, v254);
            v258 = v656;
            v254 = v564;
            *v253 = v564;
          }

          v248 = v577;
          v254[2] = v258;
          (*(v578 + 32))(v254 + ((*(v578 + 80) + 32) & ~*(v578 + 80)) + *(v578 + 72) * v257, v569, v250);
          v659(&v677, 0);
        }

        else
        {
          v251(&v677, 0);
          v248 = v577;
        }

        v246 = v618;
      }

      if (v247(v246, 1, v248))
      {
        (*(v578 + 8))(v617, v250);

        v545 = v571;
        (*(v654 + 56))(v571, 1, 1, v657);
LABEL_110:
        sub_10002B894(v545, &qword_100982460, &unk_1007B5C90);
        v235 = v620;
        goto LABEL_111;
      }

      v546 = v576;
      v547 = v568;
      (*(v576 + 16))(v568, v246, v248);
      v545 = v571;
      URLComponents.url.getter();

      (*(v546 + 8))(v547, v248);
      (*(v578 + 8))(v617, v250);
      v548 = v654;
      v549 = v657;
      if ((*(v654 + 48))(v545, 1, v657) == 1)
      {
        goto LABEL_110;
      }

      v235 = v620;
      (*(v548 + 8))(v620, v549);
      (v660)(v235, v545, v549);
LABEL_111:
      sub_10002B894(v618, &unk_100983520, &qword_1007CAEB0);
LABEL_112:
      v550 = objc_allocWithZone(type metadata accessor for ComposeReviewViewController());
      URL._bridgeToObjectiveC()(v551);
      v553 = v552;
      v554 = [v550 initWithCompositionURL:v552];

      if (v554)
      {
        v555 = v554;
        v556 = sub_10054A47C(v658, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000010, 0x8000000100810D20);
        v557 = type metadata accessor for ComposeReviewDelegate();
        v558 = objc_allocWithZone(v557);
        *&v558[OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate_selfReference] = 0;
        *&v558[OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate_objectGraph] = v556;
        v676.receiver = v558;
        v676.super_class = v557;
        v559 = objc_msgSendSuper2(&v676, "init");
        v560 = *(v559 + OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate_selfReference);
        *(v559 + OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E421ComposeReviewDelegate_selfReference) = v559;
        v561 = v559;

        [v555 setDelegate:v561];
        [v555 prepareWithCompletionBlock:0];

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v562 = *(v654 + 8);
        v563 = v657;
        v562(v235, v657);
        (*(v629 + 8))(v628, v630);
        v562(v627, v563);
LABEL_85:
        sub_100007000(v680);
        (*(v667 + 8))(v670, v666);
      }

      else
      {
        __break(1u);
      }

      return;
    case 0x1Au:
      type metadata accessor for ReviewsDiffablePagePresenter();
      swift_allocObject();
      v473 = v658;

      v474 = ReviewsDiffablePagePresenter.init(objectGraph:reviewsPage:preferSelectedActionTitles:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();
      v475 = sub_1003C9368(&qword_100983598, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v476 = sub_10054A47C(v473, v474, v475, _swiftEmptyArrayStorage, 0x5073776569766572, 0xEB00000000656761);

      v477 = objc_allocWithZone(type metadata accessor for ReviewsDiffablePageViewController(0));
      sub_10006953C(v474, v476);
      goto LABEL_80;
    case 0x1Bu:
      v134 = v604;
      sub_1000476A0(v76, v604, &qword_100982460, &unk_1007B5C90);
      v135 = v583;
      sub_100031660(v134, v583, &qword_100982460, &unk_1007B5C90);
      v136 = v654;
      v137 = v657;
      if ((*(v654 + 48))(v135, 1, v657) == 1)
      {
        sub_10002B894(v135, &qword_100982460, &unk_1007B5C90);
        v138 = type metadata accessor for ASDInAppPurchaseStateProvider();
        swift_allocObject();
        swift_unknownObjectRetain();
        v139 = v661;
        v140 = ASDInAppPurchaseStateProvider.init()();
        *(&v678 + 1) = v138;
        v679 = &protocol witness table for ASDInAppPurchaseStateProvider;
        *&v677 = v140;
        type metadata accessor for AccountPresenter();
        swift_allocObject();

        v141 = v658;

        v142 = v663;
        v143 = v134;
        v144 = v664;
        v145 = AccountPresenter.init(objectGraph:accountStore:appStateController:iapStateProvider:restrictions:profilePictureDiameter:arcadeSubscriptionManager:gameCenterFriendRequestCoordinator:)();
        v146 = sub_1003C9368(&qword_100983600, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for BasePresenter);

        v147 = sub_10054A47C(v141, v145, v146, _swiftEmptyArrayStorage, 0x50746E756F636361, 0xEB00000000656761);

        v148 = objc_allocWithZone(type metadata accessor for AccountViewController());
        sub_100653BDC(v145, v147);

        swift_unknownObjectRelease();

        v122 = v143;
LABEL_60:
        sub_10002B894(v122, &qword_100982460, &unk_1007B5C90);
      }

      else
      {
        v483 = v570;
        (*(v136 + 32))(v570, v135, v137);
        v484 = v652;
        (*(v136 + 16))(v652, v483, v137);
        (*(v136 + 56))(v484, 0, 1, v137);
        type metadata accessor for GenericAccountPagePresenter();
        swift_allocObject();
        v485 = v658;

        v486 = GenericAccountPagePresenter.init(objectGraph:url:page:)();
        v487 = sub_1003C9368(&qword_100978028, &type metadata accessor for GenericAccountPagePresenter, &protocol conformance descriptor for BasePresenter);

        v488 = sub_10054A47C(v485, v486, v487, _swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100805770);

        v489 = type metadata accessor for GenericAccountPageViewController();
        v490 = objc_allocWithZone(v489);
        *&v490[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController] = 0;
        *&v490[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_presenter] = v486;
        *&v490[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_objectGraph] = v488;
        v674.receiver = v490;
        v674.super_class = v489;
        objc_msgSendSuper2(&v674, "initWithStyle:", 2);

        swift_unknownObjectRelease();

        (*(v136 + 8))(v483, v137);
        sub_10002B894(v134, &qword_100982460, &unk_1007B5C90);
      }

      goto LABEL_85;
    case 0x1Cu:
      v443 = v590;
      sub_1000476A0(v76, v590, &qword_100982460, &unk_1007B5C90);
      v444 = v584;
      sub_100031660(v443, v584, &qword_100982460, &unk_1007B5C90);
      v445 = v654;
      v446 = v657;
      if ((*(v654 + 48))(v444, 1, v657) == 1)
      {
        v448 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v447);
        v448 = v507;
        (*(v445 + 8))(v444, v446);
      }

      v508 = v667;
      v509 = v666;
      v510 = v664;
      v511 = v663;
      v512 = [objc_allocWithZone(type metadata accessor for AccountPageViewController()) initWithAccountURL:v448];

      v513 = objc_allocWithZone(type metadata accessor for AccountPageViewControllerDelegate());
      v514 = v512;
      v515 = [v513 init];
      [v514 setDelegate:v515];

      [v514 prepareWithCompletionBlock:0];

      swift_unknownObjectRelease();

      sub_10002B894(v443, &qword_100982460, &unk_1007B5C90);
      sub_100007000(v680);
      (*(v508 + 8))(v670, v509);
      return;
    case 0x1Du:
      v449 = *(sub_10002849C(&qword_100983578, &qword_1007CAEC0) + 48);
      v450 = v654;
      v451 = v653;
      v452 = v657;
      (*(v654 + 32))(v653, v76, v657);
      v453 = v76 + v449;
      v454 = v613;
      sub_1000476A0(v453, v613, &qword_100983518, &qword_1007CAEA8);
      v455 = v658;
      BaseObjectGraph.optional<A>(_:)();
      (*(v450 + 16))(v650, v451, v452);
      v456 = v454;
      sub_100031660(v454, v605, &qword_100983518, &qword_1007CAEA8);
      type metadata accessor for MSODiffablePagePresenter();
      swift_allocObject();

      v457 = MSODiffablePagePresenter.init(objectGraph:personalizationProvider:pageUrl:context:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();
      v458 = sub_1003C9368(&qword_100983580, &type metadata accessor for MSODiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v459 = sub_10054A47C(v455, v457, v458, _swiftEmptyArrayStorage, 0x656761506F736DLL, 0xE700000000000000);

      v460 = objc_allocWithZone(type metadata accessor for MSODiffablePageViewController(0));
      *&v460[qword_1009CE058] = 0x3FF0000000000000;
      *&v460[qword_100974F90] = 0;
      *&v460[qword_100974F98] = 0x4034000000000000;
      v460[qword_1009CE060] = 0;
      *&v460[qword_100974FA0] = 0;
      sub_1003BDAA4(v457, v459);

      swift_unknownObjectRelease();

      sub_10002B894(v456, &qword_100983518, &qword_1007CAEA8);
      (*(v450 + 8))(v653, v452);
      goto LABEL_85;
    case 0x1Eu:
      (*(v654 + 56))(v652, 1, 1, v657);
      type metadata accessor for GenericPagePresenter();
      v677 = 0u;
      v678 = 0u;
      v679 = 0;
      swift_allocObject();

      v393 = v658;

      v394 = GenericPagePresenter.init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)();

      dispatch thunk of BasePresenter.referrer.setter();
      v395 = sub_1003C9368(&qword_100983558, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);

      v396 = sub_10054A47C(v393, v394, v395, _swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100810CC0);

      v397 = objc_allocWithZone(type metadata accessor for VersionHistoryViewController(0));
      sub_1000557D0(v394, v396);

      swift_unknownObjectRelease();

      goto LABEL_84;
    case 0x1Fu:
      v304 = *v76;
      type metadata accessor for OnboardingPresenter();
      v305 = swift_allocObject();
      *(v305 + 16) = v304;
      *(v305 + 24) = v668;

      *(v305 + 32) = sub_10061E708(v306, v304);
      v307 = objc_allocWithZone(type metadata accessor for OnboardingViewController());

      sub_10036E328(v308, sub_1003C02A8, 0);
      if (qword_10096DA10 != -1)
      {
        swift_once();
      }

      swift_unknownObjectWeakAssign();
LABEL_80:

      goto LABEL_83;
    case 0x20u:
      v184 = *v76;
      v185 = v640;
      (*(v637 + 104))(v640, enum case for Shelf.ContentType.reviews(_:), v638);

      v186 = sub_10054A47C(v658, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000010, 0x8000000100810CA0);
      v187 = objc_allocWithZone(type metadata accessor for ComponentViewOverflowViewController());
      v188 = &unk_100983808;
      v189 = &type metadata accessor for Review;
      v190 = &type metadata accessor for Review;
      v191 = &protocol conformance descriptor for Review;
      goto LABEL_63;
    case 0x21u:
      v184 = *v76;
      v185 = v640;
      (*(v637 + 104))(v640, enum case for Shelf.ContentType.editorsChoice(_:), v638);

      v186 = sub_10054A47C(v658, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000017, 0x8000000100810C80);
      v187 = objc_allocWithZone(type metadata accessor for ComponentViewOverflowViewController());
      v188 = &unk_100983810;
      v189 = &type metadata accessor for EditorsChoice;
      v190 = &type metadata accessor for EditorsChoice;
      v191 = &protocol conformance descriptor for EditorsChoice;
LABEL_63:
      v398 = sub_1003C1408(v184, v185, v186, v187, v189, v188, v190, v191);

      [v398 setModalPresentationStyle:4];

      goto LABEL_83;
    case 0x22u:
      v149 = *v76;
      v150 = v76[1];
      [objc_allocWithZone(GKLeaderboardScoreViewController) initWithGameRecord:v150 leaderboard:*v76];

      swift_unknownObjectRelease();

      goto LABEL_84;
    case 0x23u:
      type metadata accessor for PlayerProfileViewController();
      sub_100031660(v641, &v677, &unk_100981880, &unk_1007BECD0);
      PlayerProfileViewController.__allocating_init(playerId:navigationProxy:objectGraph:)();
      goto LABEL_83;
    case 0x24u:
      v126 = *v76;
      v125 = v76[1];
      v127 = enum case for GameLayerAchievementsEntryPoint.achievementsByGame(_:);
      v128 = type metadata accessor for GameLayerAchievementsEntryPoint();
      v129 = *(v128 - 8);
      v130 = v612;
      (*(v129 + 104))(v612, v127, v128);
      (*(v129 + 56))(v130, 0, 1, v128);
      if (*(v125 + 16) == 1)
      {
      }

      type metadata accessor for GameLayerAchievementsPresenter();
      swift_allocObject();
      v131 = v126;
      GameLayerAchievementsPresenter.init(gameRecord:entryPoint:achievementIdsToHighlight:achievementIdToPresent:)();
      v132 = type metadata accessor for AchievementsTheme();
      (*(*(v132 - 8) + 56))(v614, 1, 1, v132);
      v133 = objc_allocWithZone(type metadata accessor for GameLayerAchievementsViewController());
      GameLayerAchievementsViewController.init(presenter:theme:objectGraph:)();

      goto LABEL_83;
    case 0x25u:
      v115 = sub_10002849C(&unk_10097CCB0, &qword_1007B7100);
      v116 = v652;
      sub_1000476A0(v76 + *(v115 + 48), v652, &qword_100982460, &unk_1007B5C90);
      sub_100031660(v116, v651, &qword_100982460, &unk_1007B5C90);
      type metadata accessor for GenericPagePresenter();
      v677 = 0u;
      v678 = 0u;
      v679 = 0;
      swift_allocObject();

      v117 = v658;

      v118 = GenericPagePresenter.init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)();

      dispatch thunk of BasePresenter.referrer.setter();
      v119 = sub_1003C9368(&qword_100983558, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);

      v120 = sub_10054A47C(v117, v118, v119, _swiftEmptyArrayStorage, 0xD000000000000011, 0x8000000100810C60);

      v121 = objc_allocWithZone(type metadata accessor for PrivacyDetailViewController(0));
      sub_100623AEC(v118, v120);

      swift_unknownObjectRelease();

      v122 = v116;
      goto LABEL_60;
    case 0x26u:
      v461 = sub_10002849C(&unk_10097CCB0, &qword_1007B7100);
      v177 = v652;
      sub_1000476A0(v76 + *(v461 + 48), v652, &qword_100982460, &unk_1007B5C90);
      sub_100031660(v177, v651, &qword_100982460, &unk_1007B5C90);
      type metadata accessor for GenericPagePresenter();
      v677 = 0u;
      v678 = 0u;
      v679 = 0;
      swift_allocObject();

      v462 = v658;

      v463 = GenericPagePresenter.init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)();

      dispatch thunk of BasePresenter.referrer.setter();
      v464 = sub_1003C9368(&qword_100983558, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);

      v465 = sub_10054A47C(v462, v463, v464, _swiftEmptyArrayStorage, 0xD000000000000016, 0x8000000100810C40);

      v466 = objc_allocWithZone(type metadata accessor for PrivacyDefinitionsViewController(0));
      type metadata accessor for PrivacyDefinitionsDataSource(0);
      swift_allocObject();
      v467 = swift_retain_n();
      v468 = sub_1003C0D24(v467);

      v469 = sub_1003B71B8(v463, v468, v465);
      sub_1003C9368(&unk_100983560, type metadata accessor for PrivacyDefinitionsViewController, &unk_1007C9AAC);
      v470 = v469;

      v471 = v470;
      dispatch thunk of BaseGenericPagePresenter.view.setter();

      v471[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 0;
      v472 = [v471 navigationItem];
      [v472 setLargeTitleDisplayMode:2];

      swift_unknownObjectRelease();

LABEL_77:
      v122 = v177;
      goto LABEL_60;
    case 0x27u:
      v424 = sub_10002849C(&unk_10097CCB0, &qword_1007B7100);
      v425 = v652;
      sub_1000476A0(v76 + *(v424 + 48), v652, &qword_100982460, &unk_1007B5C90);
      sub_100031660(v425, v651, &qword_100982460, &unk_1007B5C90);
      type metadata accessor for GenericDiffablePagePresenter();
      swift_allocObject();

      v426 = v658;

      v427 = GenericDiffablePagePresenter.init(objectGraph:personalizationProvider:sidePackedPage:sidePackedPageRenderMetrics:pageUrl:)();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();
      v428 = sub_1003C9368(&qword_100983550, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v429 = sub_10054A47C(v426, v427, v428, _swiftEmptyArrayStorage, 0xD000000000000018, 0x8000000100810C20);

      v430 = objc_allocWithZone(type metadata accessor for AccessibilityDetailsViewController(0));
      *&v430[qword_1009CE058] = 0x3FF0000000000000;
      *&v430[qword_100974F90] = 0;
      *&v430[qword_100974F98] = 0x4034000000000000;
      v430[qword_1009CE060] = 0;
      *&v430[qword_100974FA0] = 0;
      sub_1003BBCA8(v427, v429);

      swift_unknownObjectRelease();

      v122 = v425;
      goto LABEL_60;
    case 0x28u:
      v208 = v76[1];
      type metadata accessor for AppEventDetailPagePresenter();
      swift_allocObject();
      v209 = v658;

      v210 = AppEventDetailPagePresenter.init(objectGraph:appEventDetailPage:)();

      dispatch thunk of BasePresenter.referrer.setter();

      v211 = sub_1003C9368(&unk_100983540, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);

      v212 = sub_10054A47C(v209, v210, v211, _swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100810C00);

      v213 = objc_allocWithZone(type metadata accessor for AppEventDetailPageViewController());
      v214 = v208;

      sub_100171DDC(v210, v212, v208);
      v216 = v215;
      [v216 setModalPresentationStyle:4];
      v217 = OBJC_IVAR____TtC8AppStore32AppEventDetailPageViewController_containerTransitioningDelegate;
      goto LABEL_71;
    case 0x29u:
    case 0x2Au:
      v431 = v76[1];
      type metadata accessor for AppPromotionDetailPagePresenter();
      swift_allocObject();
      v432 = v658;

      v433 = AppPromotionDetailPagePresenter.init(objectGraph:appPromotionDetailPage:)();

      dispatch thunk of BasePresenter.referrer.setter();

      v434 = sub_1003C9368(&qword_100983538, &type metadata accessor for AppPromotionDetailPagePresenter, &protocol conformance descriptor for BasePresenter);

      v435 = sub_10054A47C(v432, v433, v434, _swiftEmptyArrayStorage, 0xD000000000000016, 0x8000000100810BE0);

      v436 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageViewController(0));
      v214 = v431;

      sub_10017D170(v433, v435, v431);
      v216 = v437;
      [v216 setModalPresentationStyle:4];
      v217 = OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageViewController_containerTransitioningDelegate;
LABEL_71:
      [v216 setTransitioningDelegate:*&v216[v217]];

      swift_unknownObjectRelease();

      sub_100007000(v680);
      (*(v667 + 8))(v670, v666);

      return;
    case 0x2Bu:
      v105 = *v76;
      v106 = sub_10002849C(&qword_100983570, &qword_1007CAEB8);
      v107 = v610;
      v108 = v609;
      v109 = v611;
      (*(v610 + 32))(v609, v76 + *(v106 + 48), v611);
      type metadata accessor for ComponentViewOverflowViewController();
      if (swift_dynamicCastClass())
      {
        v110 = v105;
        sub_1002AA6B4(v108);

        v111 = v664;
        v112 = v110;
        v113 = v667;
        v114 = v666;
      }

      else
      {
        v113 = v667;
        v114 = v666;
        v112 = v664;
        v111 = v663;
      }

      swift_unknownObjectRelease();

      (*(v107 + 8))(v108, v109);
      sub_100007000(v680);
      (*(v113 + 8))(v670, v114);
      return;
    case 0x2Cu:
      v166 = type metadata accessor for ASDInAppPurchaseStateProvider();
      swift_allocObject();
      swift_unknownObjectRetain();
      v167 = v661;
      v168 = ASDInAppPurchaseStateProvider.init()();
      *(&v678 + 1) = v166;
      v679 = &protocol witness table for ASDInAppPurchaseStateProvider;
      *&v677 = v168;
      type metadata accessor for AccountPresenter();
      swift_allocObject();

      v169 = v658;

      v170 = v663;
      v171 = v664;
      v172 = AccountPresenter.init(objectGraph:accountStore:appStateController:iapStateProvider:restrictions:profilePictureDiameter:arcadeSubscriptionManager:gameCenterFriendRequestCoordinator:)();
      v173 = sub_1003C9368(&qword_100983600, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for BasePresenter);

      v174 = sub_10054A47C(v169, v172, v173, _swiftEmptyArrayStorage, 0x50746E756F636361, 0xEB00000000656761);

      v175 = objc_allocWithZone(type metadata accessor for AccountViewController());
      sub_100653BDC(v172, v174);

      swift_unknownObjectRelease();

      goto LABEL_84;
    case 0x2Du:
      type metadata accessor for ASDPurchaseHistoryContext(0);
      *&v677 = 1;
      v399 = v623;
      Dependency.init<A>(satisfying:with:)();
      v400 = v658;
      dispatch thunk of BaseObjectGraph.adding(dependency:)();
      v401 = *(v648 + 8);
      v402 = v624;
      v401(v399, v624);
      LOBYTE(v677) = 1;
      Dependency.init<A>(satisfying:with:)();
      v403 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
      v660 = v403;

      v401(v399, v402);
      v404 = sub_10074EA28(v403);
      v659 = v405;
      BaseObjectGraph.inject<A>(_:)();
      v657 = v404;
      swift_unknownObjectRetain();
      BaseObjectGraph.inject<A>(_:)();
      sub_10002849C(&qword_1009835D8, &qword_1007CAED8);
      v406 = v625;
      v407 = (*(v625 + 80) + 32) & ~*(v625 + 80);
      v408 = swift_allocObject();
      *(v408 + 16) = v649;
      v409 = enum case for PurchasesContentMode.hidden(_:);
      v410 = *(v406 + 104);
      v411 = v626;
      v410(v408 + v407, enum case for PurchasesContentMode.hidden(_:), v626);
      type metadata accessor for PurchasesContentPresenter();
      swift_allocObject();

      v412 = v659;
      v413 = PurchasesContentPresenter.init(objectGraph:accountStore:appStateController:familyMember:purchaseHistory:showMacOSCompatibleIOSApps:appleSilicon:contentModes:)();
      v410(v602, v409, v411);
      PurchasesContentPresenter.mode.setter();
      v414 = sub_1003C9368(&qword_1009835E0, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for BasePresenter);
      sub_10002849C(&qword_1009844F0, &qword_1007B12D0);
      v415 = swift_allocObject();
      *(v415 + 16) = v649;
      *&v677 = v657;
      *(&v677 + 1) = v412;

      static Dependency.satisfying<A>(_:with:)();
      v416 = sub_10054A47C(v400, v413, v414, v415, 0xD000000000000013, 0x8000000100810D60);

      v417 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
      sub_10044B830(v413, v416, v418);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_65;
    case 0x2Eu:
      type metadata accessor for ComingSoonViewController();
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      goto LABEL_83;
    case 0x2Fu:
      type metadata accessor for TodayCardTriggerController();
      BaseObjectGraph.optional<A>(_:)();
      v123 = v677;
      v124 = objc_allocWithZone(type metadata accessor for DebugTodayCardTriggerViewController());
      sub_100177934(v123);
      goto LABEL_83;
    case 0x30u:
      type metadata accessor for StorefrontPickerPagePresenter();
      swift_allocObject();

      v192 = StorefrontPickerPagePresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)();
      v193 = objc_allocWithZone(type metadata accessor for DebugStorefrontPickerViewController());
      sub_1002CC748(v192);
      goto LABEL_83;
    case 0x31u:
      v204 = ASKBagContract.amsBag.getter();
      v205 = objc_allocWithZone(AMSUINotificationSettingsViewController);
      v206 = String._bridgeToObjectiveC()();
      [v205 initWithIdentifier:v206 bag:v204];

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      goto LABEL_84;
    case 0x32u:
      v103 = [objc_allocWithZone(GKDashboardRequest) init];
      [v103 setState:4];
      type metadata accessor for JetDashboardViewController();
      (*(v606 + 104))(v608, enum case for DashboardLaunchContext.appStore(_:), v607);
      sub_100031660(v641, &v677, &unk_100981880, &unk_1007BECD0);
      v104 = v103;
      JetDashboardViewController.__allocating_init(launchContext:request:navigationProxy:)();

      goto LABEL_83;
    case 0x33u:
      type metadata accessor for PersonalizationTransparencyPagePresenter();
      swift_allocObject();
      v478 = v658;

      v479 = PersonalizationTransparencyPagePresenter.init(objectGraph:)();
      v480 = sub_1003C9368(&qword_100983530, &type metadata accessor for PersonalizationTransparencyPagePresenter, &protocol conformance descriptor for BasePresenter);

      v481 = sub_10054A47C(v478, v479, v480, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x8000000100810BC0);

      v482 = objc_allocWithZone(type metadata accessor for PersonalizationTransparencyPageViewController());
      sub_10019FE64(v479, v481);
LABEL_83:

      swift_unknownObjectRelease();

      goto LABEL_84;
    default:
      v95 = sub_10002849C(&qword_100983698, &qword_1007CAF38);
      v660 = *(v76 + v95[12]);
      v653 = *(v76 + v95[20]);
      v659 = *(v76 + v95[24]);
      (*(v654 + 32))(v646, v76, v657);
      LODWORD(v652) = ASKBagContract.isProductPageDownloadingOrderingEnabled.getter();
      ASKBagContract.productPageDownloadingOrderingTimeout.getter();
      v96 = ASKBagContract.enabledAdPlacements.getter();
      v97 = v633;
      v98 = *(v633 + 104);
      v99 = v632;
      v100 = v634;
      v98(v632, enum case for ASKBagContract.AdPlacementBagValue.productPageYMAL(_:), v634);
      v101 = sub_1003B70B0(v99, v96, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_1009837A0, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &protocol conformance descriptor for ASKBagContract.AdPlacementBagValue);

      v102 = *(v97 + 8);
      v102(v99, v100);
      if (v101)
      {
        LODWORD(v650) = 1;
      }

      else
      {
        v491 = ASKBagContract.enabledAdPlacements.getter();
        v98(v99, enum case for ASKBagContract.AdPlacementBagValue.productPageYMALDuringDownload(_:), v100);
        LODWORD(v650) = sub_1003B70B0(v99, v491, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_1009837A0, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &protocol conformance descriptor for ASKBagContract.AdPlacementBagValue);

        v102(v99, v100);
      }

      v492 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
      v493 = swift_allocObject();
      type metadata accessor for PromotedContentMetricCollector();
      *(v493 + 16) = static PromotedContentMetricCollector.shared.getter();
      *(&v678 + 1) = v492;
      v494 = sub_1003C9368(&unk_1009767D0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter, &unk_1007B53D0);
      v679 = v494;
      *&v677 = v493;
      type metadata accessor for AdvertRotationControllerProvider();
      swift_allocObject();
      v495 = v493;

      v496 = AdvertRotationControllerProvider.init(supportsAdvertRotation:advertLifecycleMetricsReporter:)();
      v651 = v496;
      sub_10002849C(&qword_1009844F0, &qword_1007B12D0);
      v497 = swift_allocObject();
      *(v497 + 16) = v649;
      *&v677 = v496;
      static Dependency.satisfying<A>(_:with:)();
      (*(v654 + 16))(v591, v646, v657);
      sub_10002C0AC(v680, &v677);
      v675[3] = v580;
      v675[4] = &protocol witness table for Restrictions;
      v675[0] = v669;

      v498 = UITraitCollection.isSizeClassCompact.getter();
      v499 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
      if ((v498 & 1) == 0)
      {
        v499 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
      }

      (*(v592 + 104))(v597, *v499, v593);
      v673 = v494;
      v672 = v492;
      v647 = v495;
      v671 = v495;
      sub_100031660(v642, v636, &unk_1009767C0, &unk_1007B1880);
      type metadata accessor for ProductDiffablePagePresenter();
      swift_allocObject();

      v500 = v658;

      swift_unknownObjectRetain();

      v501 = ProductDiffablePagePresenter.init(objectGraph:pageUrl:sidePackedPage:sidePackedPageRenderMetrics:appStateController:purchaseHistory:restrictions:fullProductFetchedAction:pageWidth:isDownloadingOrderingEnabled:downloadingOrderingTimeout:supportsFastImpressions:advertLifecycleMetricsReporter:referrerData:)();
      type metadata accessor for MetricsActivity();

      static MetricsActivity.current.getter();
      dispatch thunk of MetricsActivity.currentSearchAdRotationDataProvider.getter();

      dispatch thunk of TimedMetricsPagePresenter.advertRotationData.setter();

      dispatch thunk of TimedMetricsPagePresenter.referrer.setter();

      v502 = sub_1003C9368(&qword_1009836A0, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v503 = sub_10054A47C(v500, v501, v502, v497, 0x50746375646F7270, 0xEB00000000656761);

      v504 = objc_allocWithZone(type metadata accessor for ProductDiffablePageViewController(0));
      sub_100196BB8(v501, v503);

      swift_unknownObjectRelease();

      (*(v654 + 8))(v646, v657);
      goto LABEL_85;
  }
}

uint64_t sub_1003C89B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097F510, &unk_1007B2700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1003C8A54()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E433AccountPageViewControllerDelegate_selfReference);
  *(v1 + OBJC_IVAR____TtC8AppStoreP33_EB9D63B1EF811ECF6E030954F78C05E433AccountPageViewControllerDelegate_selfReference) = 0;
}

uint64_t sub_1003C8A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v66 = a3;
  v4 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v4 - 8);
  v64 = &v61 - v5;
  v6 = sub_10002849C(&unk_1009796F0, &unk_1007BA400);
  __chkstk_darwin(v6 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v61 - v10;
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  v15 = type metadata accessor for FlowDestination(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v63 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v61 = &v61 - v19;
  __chkstk_darwin(v20);
  v22 = (&v61 - v21);
  __chkstk_darwin(v23);
  v25 = &v61 - v24;

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, v69, v14);
  v26 = *(v16 + 48);
  v27 = v26(v14, 1, v15);
  v62 = v8;
  if (v27 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v26(v14, 1, v15) != 1)
    {
      sub_10002B894(v14, &unk_1009796F0, &unk_1007BA400);
    }
  }

  else
  {
    sub_10013A05C(v14, v25);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1001181EC(v25);
  type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
  if (EnumCaseMultiPayload == 2)
  {
    v29 = objc_allocWithZone(type metadata accessor for WebNavigationController());
    *&v29[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = v66;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = type metadata accessor for StoreNavigationController();
    v67.receiver = v29;
    v67.super_class = v31;

    v32 = objc_msgSendSuper2(&v67, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
  }

  else
  {
    v31 = type metadata accessor for StoreNavigationController();
    v33 = objc_allocWithZone(v31);
    *&v33[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = v66;
    v34 = swift_getObjCClassFromMetadata();
    v70.receiver = v33;
    v70.super_class = v31;

    v32 = objc_msgSendSuper2(&v70, "initWithNavigationBarClass:toolbarClass:", v34, 0);
  }

  v35 = v32;
  [v35 setDelegate:v35];
  type metadata accessor for StoreNavigationController();
  v69[3] = v31;
  v69[4] = sub_1003C9368(&unk_100986B70, type metadata accessor for StoreNavigationController, &unk_1007CEBFC);
  v69[0] = v35;

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, v68, v11);
  if (v26(v11, 1, v15) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v26(v11, 1, v15) != 1)
    {
      sub_10002B894(v11, &unk_1009796F0, &unk_1007BA400);
    }
  }

  else
  {
    sub_10013A05C(v11, v22);
  }

  v36 = FlowAction.referrerUrl.getter();
  v38 = v37;
  v39 = v64;
  FlowAction.referrerData.getter();
  sub_1003C1668(v22, v65, v36, v38, v39, v69, v66, 1);
  v41 = v40;

  sub_10002B894(v39, &unk_1009767C0, &unk_1007B1880);
  sub_1001181EC(v22);
  sub_10002B894(v69, &unk_100981880, &unk_1007BECD0);
  if (!v41)
  {

    return 0;
  }

  dispatch thunk of Action.clickSender.getter();
  v42 = v62;
  sub_100462678(a1, v69, v62);
  if (v26(v42, 1, v15) == 1)
  {
    v43 = v61;
    swift_storeEnumTagMultiPayload();
    v44 = v26(v42, 1, v15);
    v45 = v63;
    if (v44 != 1)
    {
      sub_10002B894(v42, &unk_1009796F0, &unk_1007BA400);
    }
  }

  else
  {
    v43 = v61;
    sub_10013A05C(v42, v61);
    v45 = v63;
  }

  sub_10013A05C(v43, v45);
  v47 = swift_getEnumCaseMultiPayload();
  if (v47 == 14)
  {
    sub_10002849C(&qword_100983638, &qword_1007CAF00);

    sub_10002B894(v45, &qword_100982460, &unk_1007B5C90);
    goto LABEL_30;
  }

  if (v47 == 15 || v47 == 18)
  {
    sub_1001181EC(v45);
LABEL_30:
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1007B0B70;
    *(v57 + 32) = v41;
    sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    v46 = v35;
    v58 = v41;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v46 setViewControllers:isa];

    return v46;
  }

  sub_1001181EC(v45);
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();

  if (sub_100039CB4(v41))
  {

    goto LABEL_30;
  }

  v49 = [v41 navigationItem];
  v50 = [v49 rightBarButtonItems];
  if (v50)
  {
    v51 = v50;
    v52 = v41;
    sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
    v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v52 = v41;
    v53 = _swiftEmptyArrayStorage;
  }

  v69[0] = v53;
  sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
  sub_100005744(0, &qword_10097CD40, UIAction_ptr);
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1003C9360;
  *(v54 + 24) = v48;

  v71.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v71.is_nil = 0;
  v55.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v71, v72).super.super.isa;
  if (!(v53 >> 62) || (result = _CocoaArrayWrapper.endIndex.getter(), (result & 0x8000000000000000) == 0))
  {
    sub_1004A6D30(0, 0, v55.super.super.isa);
    v56 = Array._bridgeToObjectiveC()().super.isa;

    [v49 setRightBarButtonItems:v56];

    v41 = v52;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}