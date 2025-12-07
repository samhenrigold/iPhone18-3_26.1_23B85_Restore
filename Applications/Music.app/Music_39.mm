unint64_t sub_1004601A4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109AFE8, v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100460204()
{
  result = qword_101190C78;
  if (!qword_101190C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C78);
  }

  return result;
}

unint64_t sub_10046025C()
{
  result = qword_101190C80;
  if (!qword_101190C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C80);
  }

  return result;
}

unint64_t sub_1004602B4()
{
  result = qword_101190C88;
  if (!qword_101190C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190C88);
  }

  return result;
}

id sub_1004603DC(void *a1, SEL *a2)
{
  if ([a1 accessibilityContrast] == 1)
  {
    v3 = *UIColor.MusicTint.normal.unsafeMutableAddressor();

    return v3;
  }

  else
  {
    v5 = [objc_opt_self() *a2];

    return v5;
  }
}

uint64_t sub_100460480(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void sub_1004604BC()
{
  v1 = v0;
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v3 = &v29 - v2;
  v4 = objc_opt_self();
  v5 = [v4 configurationWithTextStyle:UIFontTextStyleSubheadline];
  v6 = [v4 configurationWithWeight:7];
  v7 = [v5 configurationByApplyingConfiguration:v6];

  if (v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style + 8] == 1)
  {
    v8 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView];
    if (*&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style])
    {
      [*&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView] setHidden:0];
      v9 = [objc_opt_self() quaternarySystemFillColor];
      [v8 setBackgroundColor:v9];

      v10 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView];
      v11 = [v8 backgroundColor];
      [v10 setBackgroundColor:v11];

      [*&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton] setPreferredSymbolConfiguration:v7];
      static UIView.Corner.rounded.getter();
      v12 = type metadata accessor for UIView.Corner();
      (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView] setHidden:1];
      v18 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView];
      v19 = [objc_opt_self() clearColor];
      [v18 setBackgroundColor:v19];

      v20 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton];
      v21 = [v4 configurationWithTextStyle:UIFontTextStyleTitle3];
      v22 = [v4 configurationWithWeight:6];
      v23 = [v21 configurationByApplyingConfiguration:v22];

      [v20 setPreferredSymbolConfiguration:v23];
      v24 = type metadata accessor for UIView.Corner();
      (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
    }
  }

  else
  {
    v13 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView];
    [v13 setHidden:0];
    v14 = [objc_opt_self() tertiarySystemFillColor];
    [v13 setBackgroundColor:v14];

    v15 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView];
    v16 = [v13 backgroundColor];
    [v15 setBackgroundColor:v16];

    [*&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton] setPreferredSymbolConfiguration:v7];
    static UIView.Corner.rounded.getter();
    v17 = type metadata accessor for UIView.Corner();
    (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
  }

  UIView.corner.setter();
  v25 = objc_opt_self();
  sub_100294F58();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 deactivateConstraints:isa];

  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v25 deactivateConstraints:v27];

  v28 = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:v28];

  [*&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButton] setNeedsUpdateConfiguration];
  [v1 invalidateIntrinsicContentSize];
}

double sub_100460AE8(void *a1, char a2)
{
  if (a2)
  {
    x = CGRectNull.origin.x;
    v5 = [v2 superview];
    if (!v5)
    {
      return x;
    }

    v6 = v5;
    v7 = [v2 window];
    if (!v7)
    {

      return x;
    }

    v8 = v7;
    v9 = [v7 screen];
    v10 = [v9 coordinateSpace];

    [a1 frame];
    [v2 convertRect:v10 toCoordinateSpace:?];
    x = v11;
    v12 = [v2 superview];
    if (v12)
    {
      v13 = v12;
      [v2 frame];
      [v13 convertPoint:v10 toCoordinateSpace:?];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    [a1 bounds];
    x = v15;
    [v2 frame];
    v17 = v16;
    v19 = v18;
    v20 = [v2 superview];
    [a1 convertPoint:v20 fromView:{v17, v19}];
  }

  if (qword_10117F780 != -1)
  {
    swift_once();
  }

  return x;
}

char *sub_100460D14(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  __chkstk_darwin();
  v11 = v96 - v10;
  v12 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton;
  v13 = [objc_allocWithZone(MPRouteButton) init];
  v14 = UIView.forAutolayout.getter();

  *&v5[v12] = v14;
  v15 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButton;
  v16 = [objc_allocWithZone(UIButton) init];
  v17 = UIView.forAutolayout.getter();

  *&v5[v15] = v17;
  v18 = &v5[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style];
  *v18 = 0;
  v18[8] = 1;
  v5[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_isBadgeVisible] = 0;
  v19 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_containerView;
  v20 = [objc_allocWithZone(UIStackView) init];
  v21 = UIView.forAutolayout.getter();

  *&v5[v19] = v21;
  v22 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView;
  *&v5[v22] = [objc_allocWithZone(UIView) init];
  v23 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView;
  *&v5[v23] = [objc_allocWithZone(UIView) init];
  v24 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_badgeView;
  *&v5[v24] = [objc_allocWithZone(UIView) init];
  *&v5[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_inactiveStyleConstraints] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_activeStyleConstraints] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeOnlyStyleConstraints] = _swiftEmptyArrayStorage;
  v25 = &v5[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_lastSeenBounds];
  v26 = type metadata accessor for NowPlayingRouteSharePlayTogetherControl();
  *v25 = 0u;
  v25[1] = 0u;
  v104.receiver = v5;
  v104.super_class = v26;
  v27 = objc_msgSendSuper2(&v104, "initWithFrame:", a1, a2, a3, a4);
  v28 = [v27 layer];
  [v28 setAllowsGroupBlending:0];

  v29 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_containerView;
  [*&v27[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_containerView] setAxis:0];
  [*&v27[v29] setDistribution:1];
  [*&v27[v29] setAlignment:0];
  [*&v27[v29] setSpacing:1.0];
  [*&v27[v29] setClipsToBounds:1];
  v30 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView;
  [*&v27[v29] addArrangedSubview:*&v27[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView]];
  v31 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView;
  [*&v27[v29] addArrangedSubview:*&v27[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView]];
  v98 = v29;
  [v27 addSubview:*&v27[v29]];
  v32 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_badgeView;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_badgeView]];
  [*&v27[v32] setHidden:1];
  v33 = *&v27[v32];
  [v33 setBackgroundColor:*UIColor.MusicTint.normal.unsafeMutableAddressor()];

  v34 = *&v27[v32];
  v35 = qword_10117F768;
  v36 = v34;
  if (v35 != -1)
  {
    swift_once();
  }

  static UIView.Corner.value(_:continuous:)();
  v37 = type metadata accessor for UIView.Corner();
  (*(*(v37 - 8) + 56))(v11, 0, 1, v37);
  UIView.corner.setter();

  v38 = *&v27[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton];
  v39 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton;
  v102 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton;
  [v38 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [*&v27[v39] setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [*&v27[v30] addSubview:*&v27[v39]];
  v40 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButton;
  [*&v27[v31] addSubview:*&v27[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButton]];
  v41 = *&v27[v40];
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v41;

  aBlock[4] = sub_100462610;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_1010AD250;
  v44 = _Block_copy(aBlock);

  [v43 setConfigurationUpdateHandler:v44];
  _Block_release(v44);

  v45 = sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100EBC6C0;
  v47 = [*&v27[v40] centerXAnchor];
  v48 = [*&v27[v31] centerXAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v46 + 32) = v49;
  *&v27[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_inactiveStyleConstraints] = v46;

  v96[1] = v45;
  v50 = swift_allocObject();
  v97 = xmmword_100EBC6D0;
  *(v50 + 16) = xmmword_100EBC6D0;
  v51 = *&v27[v40];
  v101 = v40;
  v52 = [v51 leadingAnchor];
  v53 = *&v27[v31];
  v100 = v31;
  v54 = [v53 leadingAnchor];
  v55 = [v52 constraintEqualToAnchor:v54 constant:6.0];

  *(v50 + 32) = v55;
  v56 = [*&v27[v40] trailingAnchor];
  v57 = [*&v27[v31] trailingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:-10.0];

  *(v50 + 40) = v58;
  *&v27[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_activeStyleConstraints] = v50;

  v59 = swift_allocObject();
  *(v59 + 16) = v97;
  v60 = v102;
  v61 = [*&v27[v102] leadingAnchor];
  v99 = v30;
  v62 = [*&v27[v30] leadingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v59 + 32) = v63;
  v64 = [*&v27[v60] trailingAnchor];
  v65 = [*&v27[v30] trailingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v59 + 40) = v66;
  *&v27[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeOnlyStyleConstraints] = v59;

  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_100EBEE80;
  v68 = v98;
  v69 = [*&v27[v98] leadingAnchor];
  v70 = [v27 leadingAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];

  *(v67 + 32) = v71;
  v72 = [*&v27[v68] trailingAnchor];
  v73 = [v27 trailingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];

  *(v67 + 40) = v74;
  v75 = [*&v27[v68] topAnchor];
  v76 = [v27 topAnchor];
  v77 = [v75 constraintEqualToAnchor:v76];

  *(v67 + 48) = v77;
  v78 = [*&v27[v68] bottomAnchor];
  v79 = [v27 bottomAnchor];

  v80 = [v78 constraintEqualToAnchor:v79];
  *(v67 + 56) = v80;
  v81 = v102;
  v82 = [*&v27[v102] centerXAnchor];
  v83 = v99;
  v84 = [*&v27[v99] centerXAnchor];
  v85 = [v82 constraintEqualToAnchor:v84];

  *(v67 + 64) = v85;
  v86 = [*&v27[v81] centerYAnchor];
  v87 = [*&v27[v83] centerYAnchor];
  v88 = [v86 constraintEqualToAnchor:v87];

  *(v67 + 72) = v88;
  v89 = [*&v27[v101] centerYAnchor];
  v90 = [*&v27[v100] centerYAnchor];
  v91 = [v89 constraintEqualToAnchor:v90];

  *(v67 + 80) = v91;
  aBlock[0] = v67;

  sub_100124054(v92);
  v93 = objc_opt_self();
  sub_100294F58();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v93 activateConstraints:isa];

  sub_1004604BC();
  return v27;
}

uint64_t sub_100461820(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v4 = &v33 - v3;
  sub_10010FC20(&qword_101181DB0, &qword_100EBDD10);
  __chkstk_darwin();
  v6 = &v33 - v5;
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v4;
    v35 = a1;
    static UIButton.Configuration.plain()();
    v33 = objc_opt_self();
    v13 = [v33 clearColor];
    v14 = v12;
    v15 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v15(v36, 0);
    v16 = v12;
    v17 = objc_opt_self();
    v18 = [v17 configurationWithPointSize:12.0];
    v19 = [v17 configurationWithWeight:7];
    v20 = [v18 configurationByApplyingConfiguration:v19];

    v21 = &v16[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style];
    if (v16[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style + 8] == 1)
    {
      UIButton.Configuration.title.setter();
      if (qword_10117F770 != -1)
      {
        swift_once();
      }

      v22 = &qword_101218D80;
      v23 = v34;
    }

    else
    {
      v24 = *v21;
      if (*v21 >= 1)
      {
        sub_10010FC20(&qword_101186688, &qword_100EC2038);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_100EBC6B0;
        *(v25 + 56) = &type metadata for Int;
        *(v25 + 64) = &protocol witness table for Int;
        *(v25 + 32) = v24;
        static String.localizedStringWithFormat(_:_:)();
        v16 = v14;
      }

      v23 = v34;
      UIButton.Configuration.title.setter();
      if (qword_10117F778 != -1)
      {
        swift_once();
      }

      v22 = &qword_101218D88;
    }

    v26 = [v17 configurationWithHierarchicalColor:*v22];
    v27 = [v20 configurationByApplyingConfiguration:v26];

    v28 = v27;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v29 = String._bridgeToObjectiveC()();
    v30 = [objc_opt_self() systemImageNamed:v29];

    UIButton.Configuration.image.setter();
    v31 = [v33 labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.Configuration.imagePadding.setter();
    UIButton.Configuration.contentInsets.setter();
    UIConfigurationTextAttributesTransformer.init(_:)();
    v32 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v32 - 8) + 56))(v6, 0, 1, v32);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    (*(v8 + 16))(v23, v10, v7);
    (*(v8 + 56))(v23, 0, 1, v7);
    UIButton.configuration.setter();

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_100461D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() systemFontOfSize:UIFontDescriptorSystemDesignRounded weight:13.0 design:UIFontWeightHeavy];
  sub_10016D0B4();
  return AttributeContainer.subscript.setter();
}

id sub_100461E6C(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for NowPlayingRouteSharePlayTogetherControl();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  [v1 bounds];
  v2 = &v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_lastSeenBounds];
  result = CGRectEqualToRect(v9, *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_lastSeenBounds]);
  if ((result & 1) == 0)
  {
    if (v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_isBadgeVisible] == 1)
    {
      sub_100461F54();
    }

    sub_1004604BC();
    result = [v1 bounds];
    *v2 = v4;
    *(v2 + 1) = v5;
    *(v2 + 2) = v6;
    *(v2 + 3) = v7;
  }

  return result;
}

void sub_100461F54()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_isBadgeVisible] == 1)
  {
    v2 = [objc_allocWithZone(CAShapeLayer) init];
    Mutable = CGPathCreateMutable();
    [v0 bounds];
    CGRectGetMaxX(v9);
    if (qword_10117F758 != -1)
    {
      swift_once();
    }

    if (qword_10117F760 != -1)
    {
      swift_once();
    }

    CGMutablePathRef.addEllipse(in:transform:)();
    [v0 bounds];
    CGRectGetWidth(v10);
    [v0 bounds];
    CGRectGetHeight(v11);
    CGMutablePathRef.addRect(_:transform:)();
    [v2 setPath:Mutable];
    [v2 setFillRule:kCAFillRuleEvenOdd];
    v3 = [*&v0[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_containerView] layer];
    [v3 setMask:v2];

    v4 = *&v1[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_badgeView];
    [v4 setHidden:0];
    CGRect.center.getter();
    [v4 setCenter:?];
    if (qword_10117F768 != -1)
    {
      swift_once();
    }

    [v4 frame];
    [v4 setFrame:?];
  }

  else
  {
    v5 = [*&v0[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_containerView] layer];
    [v5 setMask:0];

    v6 = *&v0[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_badgeView];

    [v6 setHidden:1];
  }
}

id sub_1004622A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NowPlayingRouteSharePlayTogetherControl();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100462408(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100462424(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_100462454()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton;
  v3 = [objc_allocWithZone(MPRouteButton) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButton;
  v6 = [objc_allocWithZone(UIButton) init];
  v7 = UIView.forAutolayout.getter();

  *(v1 + v5) = v7;
  v8 = v1 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_isBadgeVisible) = 0;
  v9 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_containerView;
  v10 = [objc_allocWithZone(UIStackView) init];
  v11 = UIView.forAutolayout.getter();

  *(v1 + v9) = v11;
  v12 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButtonContainerView;
  *(v1 + v12) = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButtonContainerView;
  *(v1 + v13) = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_badgeView;
  *(v1 + v14) = [objc_allocWithZone(UIView) init];
  *(v1 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_inactiveStyleConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_activeStyleConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeOnlyStyleConstraints) = _swiftEmptyArrayStorage;
  v15 = (v1 + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_lastSeenBounds);
  *v15 = 0u;
  v15[1] = 0u;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100462628()
{
  if (qword_10117F6B8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100462684()
{
  v0 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v10 - v4;
  _s14descr101092F61V16TracklistManagerCMa(0);
  v6 = swift_allocObject();
  type metadata accessor for Playlist.Entry();
  MusicItemCollection.init(arrayLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  Published.init(initialValue:)();
  (*(v1 + 8))(v5, v0);
  v7 = OBJC_IVAR____TtCO5Music14ClarityUIMusic16TracklistManager_playlist;
  v8 = type metadata accessor for Playlist();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  return v6;
}

uint64_t sub_100462830@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v39 = *(_s14descr101092F61V19PlaylistDetailsViewVMa(0) - 8);
  v38 = *(v39 + 64);
  __chkstk_darwin();
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MultimodalListStyle.IconStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  sub_10010FC20(&qword_101190DF8, &qword_100EDB640);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v30 - v11);
  v13 = type metadata accessor for MultimodalListStyle();
  v14 = *(v13 - 8);
  v34 = v13;
  v35 = v14;
  __chkstk_darwin();
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&qword_101190E00, &qword_100ECDF70);
  v18 = *(v17 - 8);
  v32 = v17;
  v33 = v18;
  __chkstk_darwin();
  v20 = &v30 - v19;
  v31 = v1;
  v40 = v1;
  sub_10010FC20(&qword_101190E08, &qword_100ECDF78);
  sub_100465430();
  List<>.init(content:)();
  sub_10056CF3C(v12);
  v21 = type metadata accessor for MultimodalListStyle.Layout();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  (*(v4 + 104))(v8, enum case for MultimodalListStyle.IconStyle.square(_:), v3);
  sub_1000089F8(v12, v10, &qword_101190DF8, &qword_100EDB640);
  (*(v4 + 16))(v6, v8, v3);
  MultimodalListStyle.init(layout:iconStyle:)();
  (*(v4 + 8))(v8, v3);
  sub_1000095E8(v12, &qword_101190DF8, &qword_100EDB640);
  sub_100020674(&qword_101190E28, &qword_101190E00, &qword_100ECDF70, &protocol conformance descriptor for List<A, B>);
  v22 = v36;
  v23 = v32;
  v24 = v34;
  View.listStyle<A>(_:)();
  (*(v35 + 8))(v16, v24);
  (*(v33 + 8))(v20, v23);
  v25 = v37;
  sub_1004654E0(v31, v37);
  v26 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v27 = swift_allocObject();
  sub_100465998(v25, v27 + v26, _s14descr101092F61V19PlaylistDetailsViewVMa);
  result = sub_10010FC20(&qword_101190E30, &qword_100ECDF90);
  v29 = (v22 + *(result + 36));
  *v29 = sub_100465544;
  v29[1] = v27;
  v29[2] = 0;
  v29[3] = 0;
  return result;
}

uint64_t sub_100462D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = sub_10010FC20(&qword_101190E20, &unk_100ECDF80);
  v47 = *(v49 - 8);
  __chkstk_darwin();
  v46 = (&v36 - v3);
  v4 = sub_10010FC20(&qword_101190E38, &qword_100ECE030);
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin();
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v36 - v6;
  v7 = _s14descr101092F61V19PlaylistDetailsViewVMa(0) - 8;
  v40 = *v7;
  v8 = *(v40 + 64);
  __chkstk_darwin();
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v36 - v11);
  v13 = a1;
  v14 = (a1 + *(v7 + 36));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  _s14descr101092F61V16TracklistManagerCMa(0);
  sub_100465AB4(&unk_101190DB8, _s14descr101092F61V16TracklistManagerCMa, &unk_100ECF3A0);
  v38 = v16;
  v39 = v15;
  v37 = v17;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  sub_100020674(&unk_101186ED0, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v10 + 8))(v12, v9);
  if (v51 == v50)
  {
    v18 = 1;
    v19 = v48;
  }

  else
  {
    v36 = v8;
    v20 = v13;
    v21 = v13;
    v22 = v41;
    sub_1004654E0(v21, v41);
    v23 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v40 = swift_allocObject();
    sub_100465998(v22, v40 + v23, _s14descr101092F61V19PlaylistDetailsViewVMa);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v12);

    sub_1004654E0(v20, v22);
    v24 = swift_allocObject();
    sub_100465998(v22, v24 + v23, _s14descr101092F61V19PlaylistDetailsViewVMa);
    sub_10010FC20(&qword_101190E40, &qword_100ECE080);
    sub_100020674(&qword_101190E48, &qword_10118C2B0, &qword_100ECDEF0, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_10046581C();
    sub_100465AB4(&qword_101190E60, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);
    v25 = v42;
    ForEach<>.init(_:content:)();
    v27 = v43;
    v26 = v44;
    v28 = *(v44 + 16);
    v29 = v45;
    v28(v43, v25, v45);
    v30 = v46;
    *v46 = sub_10024F1B0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    v31 = v40;
    *(v30 + 24) = sub_1004655A4;
    *(v30 + 32) = v31;
    v32 = sub_10010FC20(&qword_101190E68, &qword_100ECE088);
    v28((v30 + *(v32 + 48)), v27, v29);
    KeyValueObservationTrigger.keyPath.getter(sub_10024F1B0, 0);
    v33 = *(v26 + 8);

    v33(v25, v29);
    v33(v27, v29);
    sub_1000D8FC4(sub_10024F1B0, 0);

    v34 = v48;
    sub_10003D17C(v30, v48, &qword_101190E20, &unk_100ECDF80);
    v18 = 0;
    v19 = v34;
  }

  return (*(v47 + 56))(v19, v18, 1, v49);
}

double sub_100463408()
{
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v26 = &v18 - v1;
  v2 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin();
  v23 = (&v18 - v3);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = _s14descr101092F61V19PlaylistDetailsViewVMa(0);
  _s14descr101092F61V20PlaybackStateManagerCMa(0);
  sub_100465AB4(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa, &unk_100ECB248);
  StateObject.wrappedValue.getter();
  v19 = *(v6 + 36);
  v7 = sub_10040FD74(v0 + v19);

  v8 = (v0 + *(v6 + 32));
  v9 = *v8;
  v10 = *(v8 + 1);
  v22 = v9;
  v28 = v9;
  v21 = v10;
  v29 = v10;
  v20 = sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  State.wrappedValue.getter();
  if (v7 == 2 || v7 == 4 && (v27 & 1) == 0)
  {
    v14 = StateObject.wrappedValue.getter();
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    type metadata accessor for MainActor();

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v14;
    sub_1001F524C(0, 0, v5, &unk_100ECE108, v17);
  }

  else
  {
    StateObject.wrappedValue.getter();
    _s14descr101092F61V16TracklistManagerCMa(0);
    sub_100465AB4(&unk_101190DB8, _s14descr101092F61V16TracklistManagerCMa, &unk_100ECF3A0);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = v23;
    static Published.subscript.getter(v23);

    v12 = v26;
    sub_10034DF4C(v26);
    (*(v24 + 8))(v11, v25);
    sub_100410208(v0 + v19, v12);

    sub_1000095E8(v12, &qword_101191570, &qword_100ECE0B0);
    v28 = v22;
    v29 = v21;
    v27 = 0;
    State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100463888(uint64_t a1)
{
  v2 = type metadata accessor for Playlist();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin();
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_1011A4980, &unk_100ED53C0) - 8;
  __chkstk_darwin();
  v6 = &v38 - v5;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v38 - v8;
  __chkstk_darwin();
  v11 = (&v38 - v10);
  v12 = _s14descr101092F61V19PlaylistDetailsViewVMa(0);
  _s14descr101092F61V16TracklistManagerCMa(0);
  sub_100465AB4(&unk_101190DB8, _s14descr101092F61V16TracklistManagerCMa, &unk_100ECF3A0);
  StateObject.wrappedValue.getter();
  v13 = *(v12 + 36);
  sub_10049CBF4(a1 + v13);

  v49 = v12;
  v14 = (a1 + *(v12 + 20));
  v16 = *v14;
  v15 = v14[1];
  v17 = *(v14 + 16);
  v18 = _s14descr101092F61V20PlaybackStateManagerCMa(0);
  v19 = sub_100465AB4(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa, &unk_100ECB248);
  v46 = v15;
  v45 = v17;
  v43 = v19;
  v44 = v18;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v11);

  v20 = v48;
  v21 = *(v47 + 16);
  v50 = a1;
  v22 = a1 + v13;
  v23 = v47;
  v21(v9, v22, v48);
  (*(v23 + 56))(v9, 0, 1, v20);
  v24 = *(v4 + 56);
  sub_1000089F8(v11, v6, &unk_1011814D0, &qword_100EC12A0);
  sub_1000089F8(v9, &v6[v24], &unk_1011814D0, &qword_100EC12A0);
  v25 = *(v23 + 48);
  if (v25(v6, 1, v20) == 1)
  {
    sub_1000095E8(v9, &unk_1011814D0, &qword_100EC12A0);
    sub_1000095E8(v11, &unk_1011814D0, &qword_100EC12A0);
    if (v25(&v6[v24], 1, v20) == 1)
    {
      sub_1000095E8(v6, &unk_1011814D0, &qword_100EC12A0);
LABEL_12:
      v29 = 0;
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v39 = v9;
  v40 = v16;
  v26 = v42;
  sub_1000089F8(v6, v42, &unk_1011814D0, &qword_100EC12A0);
  if (v25(&v6[v24], 1, v20) == 1)
  {
    sub_1000095E8(v39, &unk_1011814D0, &qword_100EC12A0);
    sub_1000095E8(v11, &unk_1011814D0, &qword_100EC12A0);
    (*(v23 + 8))(v26, v20);
LABEL_6:
    sub_1000095E8(v6, &unk_1011A4980, &unk_100ED53C0);
    goto LABEL_7;
  }

  v30 = &v6[v24];
  v31 = v41;
  (*(v23 + 32))(v41, v30, v20);
  sub_100465AB4(&unk_1011A4660, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v23 + 8);
  v33(v31, v20);
  sub_1000095E8(v39, &unk_1011814D0, &qword_100EC12A0);
  sub_1000095E8(v11, &unk_1011814D0, &qword_100EC12A0);
  v33(v26, v20);
  sub_1000095E8(v6, &unk_1011814D0, &qword_100EC12A0);
  if (v32)
  {
    goto LABEL_12;
  }

LABEL_7:
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(v52);

  v27 = v52[0];
  if (!v52[0])
  {

    goto LABEL_12;
  }

  v28 = [v52[0] state];

  v29 = v28 == 4;
LABEL_13:
  v34 = v50 + *(v49 + 32);
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v52[0]) = v35;
  v52[1] = v36;
  v51 = v29;
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  return State.wrappedValue.setter();
}

uint64_t sub_100463F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v49 = a3;
  v46 = type metadata accessor for Playlist.Entry();
  v42 = *(v46 - 8);
  __chkstk_darwin();
  v45 = v4;
  v47 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s14descr101092F61V19PlaylistDetailsViewVMa(0);
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin();
  v44 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = _s14descr101092F61V12SongCellViewVMa(0);
  v48 = *(v50 - 8);
  __chkstk_darwin();
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101190E70, &unk_100ECE090);
  __chkstk_darwin();
  v10 = v38 - v9;
  v11 = type metadata accessor for Song();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  Playlist.Entry.item.getter();
  v16 = type metadata accessor for Playlist.Entry.Item();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    sub_1000095E8(v10, &qword_101190E70, &unk_100ECE090);
LABEL_6:
    v36 = 1;
    v35 = v49;
    return (*(v48 + 56))(v35, v36, 1, v50);
  }

  if ((*(v17 + 88))(v10, v16) != enum case for Playlist.Entry.Item.song(_:))
  {
    (*(v17 + 8))(v10, v16);
    goto LABEL_6;
  }

  (*(v17 + 96))(v10, v16);
  v39 = v11;
  v40 = v12;
  (*(v12 + 32))(v14, v10, v11);
  v18 = v41;
  v38[3] = type metadata accessor for PlaybackIndicator(0);
  v38[2] = sub_100465AB4(&qword_101186998, type metadata accessor for PlaybackIndicator, &unk_100ED4320);
  v38[1] = StateObject.wrappedValue.getter();
  v19 = *(v5 + 36);
  v20 = v50;
  v21 = *(v50 + 28);
  v22 = type metadata accessor for Playlist();
  (*(*(v22 - 8) + 16))(&v8[v21], v18 + v19, v22);
  v23 = v42;
  v24 = *(v42 + 16);
  v25 = v46;
  v24(&v8[*(v20 + 32)], v15, v46);
  (*(v40 + 16))(&v8[*(v20 + 36)], v14, v39);
  v26 = v18;
  v27 = v44;
  sub_1004654E0(v26, v44);
  v24(v47, v15, v25);
  v28 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v29 = (v6 + *(v23 + 80) + v28) & ~*(v23 + 80);
  v30 = swift_allocObject();
  sub_100465998(v27, v30 + v28, _s14descr101092F61V19PlaylistDetailsViewVMa);
  (*(v23 + 32))(v30 + v29, v47, v25);
  *(v8 + 2) = sub_100462628;
  *(v8 + 3) = 0;
  v8[32] = 0;
  v31 = ObservedObject.init(wrappedValue:)();
  v33 = v32;
  (*(v40 + 8))(v14, v39);
  *(v8 + 5) = v31;
  *(v8 + 6) = v33;
  *v8 = sub_1004658D8;
  *(v8 + 1) = v30;
  v34 = v49;
  sub_100465998(v8, v49, _s14descr101092F61V12SongCellViewVMa);
  v35 = v34;
  v36 = 0;
  return (*(v48 + 56))(v35, v36, 1, v50);
}

void sub_100464524(uint64_t a1)
{
  v82 = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v63 = &v60 - v2;
  v79 = type metadata accessor for Playlist.Entry();
  v81 = *(v79 - 8);
  __chkstk_darwin();
  v62 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10010FC20(&qword_101190E78, &qword_100ECE0A0);
  __chkstk_darwin();
  v65 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v60 - v5;
  v74 = sub_10010FC20(&qword_101190E80, &qword_100ECE0A8) - 8;
  __chkstk_darwin();
  v83 = (&v60 - v6);
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v72 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v60 - v8;
  __chkstk_darwin();
  v68 = &v60 - v9;
  __chkstk_darwin();
  v61 = &v60 - v10;
  __chkstk_darwin();
  v67 = &v60 - v11;
  __chkstk_darwin();
  v13 = (&v60 - v12);
  v14 = _s14descr101092F61V19PlaylistDetailsViewVMa(0);
  v15 = (v1 + *(v14 + 20));
  v17 = *v15;
  v16 = v15[1];
  v18 = *(v15 + 16);
  v19 = _s14descr101092F61V20PlaybackStateManagerCMa(0);
  v20 = sub_100465AB4(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa, &unk_100ECB248);
  StateObject.wrappedValue.getter();
  v21 = *(v14 + 36);
  v73 = v1;
  v70 = v21;
  v71 = v14;
  v22 = sub_10040FD74(v1 + v21);

  v80 = v17;
  v78 = v16;
  v77 = v18;
  v75 = v19;
  v76 = v20;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v13);

  v23 = *(v74 + 56);
  v24 = v83;
  *v83 = v22;
  sub_10003D17C(v13, v24 + v23, &qword_101191570, &qword_100ECE0B0);
  if (v22 != 4)
  {
    v25 = v22 == 2;
    v27 = v82;
    v26 = v83;
    v28 = v81;
    v29 = v79;
    if (!v25)
    {
      goto LABEL_17;
    }

    v30 = v67;
    (*(v81 + 16))(v67, v82, v79);
    (*(v28 + 56))(v30, 0, 1, v29);
    v31 = *(v69 + 48);
    v32 = v66;
    sub_1000089F8(v30, v66, &qword_101191570, &qword_100ECE0B0);
    sub_1000089F8(v26 + v23, v32 + v31, &qword_101191570, &qword_100ECE0B0);
    v33 = *(v28 + 48);
    if (v33(v32, 1, v29) == 1)
    {
      sub_1000095E8(v30, &qword_101191570, &qword_100ECE0B0);
      if (v33(v32 + v31, 1, v29) != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    v45 = v61;
    sub_1000089F8(v32, v61, &qword_101191570, &qword_100ECE0B0);
    if (v33(v32 + v31, 1, v29) == 1)
    {
      v46 = v67;
LABEL_15:
      sub_1000095E8(v46, &qword_101191570, &qword_100ECE0B0);
      (*(v28 + 8))(v45, v29);
      v27 = v82;
      goto LABEL_16;
    }

    v52 = v32 + v31;
    v53 = v62;
    (*(v28 + 32))(v62, v52, v29);
    sub_100465AB4(&unk_1011A4730, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);
    LODWORD(v74) = dispatch thunk of static Equatable.== infix(_:_:)();
    v54 = *(v28 + 8);
    v54(v53, v29);
    sub_1000095E8(v67, &qword_101191570, &qword_100ECE0B0);
    v54(v45, v29);
    v26 = v83;
    sub_1000095E8(v32, &qword_101191570, &qword_100ECE0B0);
    if ((v74 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v34 = v64;
  v28 = v81;
  v35 = v68;
  v29 = v79;
  (*(v81 + 16))(v68, v82, v79);
  (*(v28 + 56))(v35, 0, 1, v29);
  v36 = *(v69 + 48);
  v37 = v65;
  sub_1000089F8(v35, v65, &qword_101191570, &qword_100ECE0B0);
  v26 = v83;
  sub_1000089F8(v83 + v23, v37 + v36, &qword_101191570, &qword_100ECE0B0);
  v38 = *(v28 + 48);
  if (v38(v37, 1, v29) != 1)
  {
    sub_1000089F8(v37, v34, &qword_101191570, &qword_100ECE0B0);
    if (v38(v37 + v36, 1, v29) == 1)
    {
      v32 = v37;
      v45 = v34;
      v46 = v68;
      goto LABEL_15;
    }

    v55 = v37 + v36;
    v56 = v37;
    v57 = v62;
    (*(v28 + 32))(v62, v55, v29);
    sub_100465AB4(&unk_1011A4730, &type metadata accessor for Playlist.Entry, &protocol conformance descriptor for Playlist.Entry);
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v59 = *(v28 + 8);
    v59(v57, v29);
    sub_1000095E8(v68, &qword_101191570, &qword_100ECE0B0);
    v59(v34, v29);
    v28 = v81;
    v26 = v83;
    sub_1000095E8(v56, &qword_101191570, &qword_100ECE0B0);
    v27 = v82;
    if ((v58 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_10:
    sub_1000095E8(v26 + v23, &qword_101191570, &qword_100ECE0B0);
    v40 = StateObject.wrappedValue.getter();
    v41 = type metadata accessor for TaskPriority();
    v42 = v63;
    (*(*(v41 - 8) + 56))(v63, 1, 1, v41);
    type metadata accessor for MainActor();

    v43 = static MainActor.shared.getter();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = &protocol witness table for MainActor;
    v44[4] = v40;
    sub_1001F524C(0, 0, v42, &unk_100ECE100, v44);

    return;
  }

  sub_1000095E8(v35, &qword_101191570, &qword_100ECE0B0);
  v39 = v38(v37 + v36, 1, v29);
  v32 = v37;
  v27 = v82;
  if (v39 == 1)
  {
LABEL_9:
    sub_1000095E8(v32, &qword_101191570, &qword_100ECE0B0);
    goto LABEL_10;
  }

LABEL_16:
  sub_1000095E8(v32, &qword_101190E78, &qword_100ECE0A0);
LABEL_17:
  StateObject.wrappedValue.getter();
  v47 = v72;
  (*(v28 + 16))(v72, v27, v29);
  (*(v28 + 56))(v47, 0, 1, v29);
  v48 = v73;
  sub_100410208(v73 + v70, v47);

  sub_1000095E8(v47, &qword_101191570, &qword_100ECE0B0);
  v49 = (v48 + *(v71 + 32));
  v50 = *v49;
  v51 = *(v49 + 1);
  v85 = *v49;
  v86 = v51;
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  State.wrappedValue.getter();
  if (v84 == 1)
  {
    v85 = v50;
    v86 = v51;
    v84 = 0;
    State.wrappedValue.setter();
  }

  sub_1000095E8(v26, &qword_101190E80, &qword_100ECE0A8);
}

uint64_t _s14descr101092F61V19PlaylistDetailsViewVMa(uint64_t a1)
{
  result = qword_101190D80;
  if (!qword_101190D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004650C4(uint64_t a1)
{
  sub_1004651A8(319);
  if (v1 <= 0x3F)
  {
    sub_100465200(319);
    if (v2 <= 0x3F)
    {
      sub_100465294(319);
      if (v4 <= 0x3F)
      {
        sub_100465328(319, v3);
        if (v5 <= 0x3F)
        {
          sub_1004653BC();
          if (v6 <= 0x3F)
          {
            type metadata accessor for Playlist();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1004651A8(uint64_t a1)
{
  if (!qword_101190D90)
  {
    type metadata accessor for MultimodalListStyle.Layout();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_101190D90);
    }
  }
}

void sub_100465200(uint64_t a1)
{
  if (!qword_101190D98)
  {
    _s14descr101092F61V20PlaybackStateManagerCMa(255);
    sub_100465AB4(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa, &unk_100ECB248);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_101190D98);
    }
  }
}

void sub_100465294(uint64_t a1)
{
  if (!qword_101190DA8)
  {
    type metadata accessor for PlaybackIndicator(255);
    sub_100465AB4(&qword_101186998, type metadata accessor for PlaybackIndicator, &unk_100ED4320);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_101190DA8);
    }
  }
}

void sub_100465328(uint64_t a1, __n128 a2)
{
  if (!qword_101190DB0)
  {
    _s14descr101092F61V16TracklistManagerCMa(255);
    sub_100465AB4(&unk_101190DB8, _s14descr101092F61V16TracklistManagerCMa, &unk_100ECF3A0);
    v2 = type metadata accessor for StateObject();
    if (!v3)
    {
      atomic_store(v2, &qword_101190DB0);
    }
  }
}

void sub_1004653BC()
{
  if (!qword_101197850)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_101197850);
    }
  }
}

unint64_t sub_100465430()
{
  result = qword_101190E10;
  if (!qword_101190E10)
  {
    sub_1001109D0(&qword_101190E08, &qword_100ECDF78);
    sub_100020674(&qword_101190E18, &qword_101190E20, &unk_100ECDF80, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190E10);
  }

  return result;
}

uint64_t sub_1004654E0(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr101092F61V19PlaylistDetailsViewVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100465544()
{
  v1 = *(_s14descr101092F61V19PlaylistDetailsViewVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100463888(v2);
}

uint64_t sub_100465600()
{
  v1 = _s14descr101092F61V19PlaylistDetailsViewVMa(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_10010FC20(&unk_101193FC0, &qword_100EDB580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for MultimodalListStyle.Layout();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1000D8FC4(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  sub_1000D8FC4(*(v3 + v1[6]), *(v3 + v1[6] + 8));
  sub_1000D8FC4(*(v3 + v1[7]), *(v3 + v1[7] + 8));

  v5 = v1[9];
  v6 = type metadata accessor for Playlist();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_10046579C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s14descr101092F61V19PlaylistDetailsViewVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100463F38(a1, v6, a2);
}

unint64_t sub_10046581C()
{
  result = qword_101190E50;
  if (!qword_101190E50)
  {
    sub_1001109D0(&qword_101190E40, &qword_100ECE080);
    sub_100465AB4(&qword_101190E58, _s14descr101092F61V12SongCellViewVMa, &unk_100ED8130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190E50);
  }

  return result;
}

void sub_1004658D8()
{
  v1 = *(_s14descr101092F61V19PlaylistDetailsViewVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Playlist.Entry() - 8);
  sub_100464524(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_100465998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100465A00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100410CC8(a1, v4, v5, v6);
}

uint64_t sub_100465AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100465AFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100410CC8(a1, v4, v5, v6);
}

unint64_t sub_100465BB0()
{
  result = qword_101190E88[0];
  if (!qword_101190E88[0])
  {
    sub_1001109D0(&qword_101190E30, &qword_100ECDF90);
    sub_1001109D0(&qword_101190E00, &qword_100ECDF70);
    type metadata accessor for MultimodalListStyle();
    sub_100020674(&qword_101190E28, &qword_101190E00, &qword_100ECDF70, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, qword_101190E88);
  }

  return result;
}

uint64_t sub_100465CD0(uint64_t a1)
{
  type metadata accessor for Array();
  result = type metadata accessor for Published();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Optional();
    result = type metadata accessor for Published();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100465DC0()
{
  v1 = *(*v0 + 96);
  type metadata accessor for Array();
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  type metadata accessor for Optional();
  v4 = type metadata accessor for Published();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_100465EB8()
{
  sub_100465DC0();

  return swift_deallocClassInstance();
}

uint64_t sub_100465F28@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for SelectionManager(0, *(a1 + 80), *(a1 + 88), a3);
  result = ObservableObject<>.objectWillChange.getter();
  *a4 = result;
  return result;
}

double sub_100465F6C()
{

  return result;
}

uint64_t sub_100465FAC()
{
  v1 = *(*v0 + 96);
  v2 = sub_10010FC20(&qword_101191068, &qword_100ECE1D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  v4 = sub_10010FC20(&unk_101191070, &qword_100ECE1D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TabSelectionManager(uint64_t a1)
{
  result = qword_101190F48;
  if (!qword_101190F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100466198(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10046634C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x7473696C79616C70;
  if (v2 != 1)
  {
    v4 = 1735290739;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D75626C61;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7473696C79616C70;
  if (*a2 != 1)
  {
    v8 = 1735290739;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D75626C61;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10046643C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1004664D4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100466558(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004665EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100479E88(*a1);
  *a2 = result;
  return result;
}

void sub_10046661C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x7473696C79616C70;
  if (v2 != 1)
  {
    v5 = 1735290739;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D75626C61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100466670(uint64_t a1)
{
  v2 = type metadata accessor for Playlist.Folder.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - v8;
  type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047AAB4(v1, v11, type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v11, v2);
    Hasher._combine(_:)(1uLL);
    sub_10047A9B8(&unk_10118D3C0, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v11, v6);
    Hasher._combine(_:)(0);
    sub_10047AA00();
    dispatch thunk of Hashable.hash(into:)();
    return (*(v7 + 8))(v9, v6);
  }
}

Swift::Int sub_100466914()
{
  Hasher.init(_seed:)();
  sub_100466670(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100466958(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100466670(v2);
  return Hasher._finalize()();
}

uint64_t sub_100466998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = *(a4 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for PlaylistPicker.Context(0);
  v5[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[15] = v8;
  v5[16] = v7;

  return _swift_task_switch(sub_100466AF8, v8, v7);
}

uint64_t sub_100466AF8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v9 = v0[2];
  v8 = v0[3];
  v10 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  (*(*(v10 - 8) + 16))(v1, v9, v10);
  type metadata accessor for PlaylistPicker.Mode(0);
  swift_storeEnumTagMultiPayload();
  v11.n128_f64[0] = (*(v3 + 16))(v4, v8, v7);
  v12 = sub_100478C60(v4, v7, v6, v11);
  v13 = (v1 + *(v2 + 20));
  *v13 = v12;
  v13[1] = v14;
  v13[2] = v15;
  sub_10047AAB4(v1, v5, type metadata accessor for PlaylistPicker.Context);
  swift_storeEnumTagMultiPayload();
  v16 = swift_task_alloc();
  v0[17] = v16;
  *v16 = v0;
  v16[1] = sub_100466C94;
  v18 = v0[8];
  v17 = v0[9];

  return sub_100706024(v17, v18);
}

uint64_t sub_100466C94()
{
  v2 = *v1;
  v3 = (*v1)[8];
  (*v1)[18] = v0;

  sub_10047AB30(v3, type metadata accessor for AppInterfaceContext.Activity);
  if (v0)
  {
    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_100466EAC;
  }

  else
  {
    sub_10047AB30(v2[9], type metadata accessor for AppInterfaceContext.Activity);
    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_100466DFC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100466DFC()
{

  sub_10047AB30(*(v0 + 104), type metadata accessor for PlaylistPicker.Context);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100466EAC()
{

  if (qword_10117F6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218C50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to present playlist picker.", v4, 2u);
  }

  sub_10047AB30(*(v0 + 104), type metadata accessor for PlaylistPicker.Context);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10046701C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for AppInterfaceContext.Activity(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for PlaylistPicker.Context(0);
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v4;
  v2[11] = v3;

  return _swift_task_switch(sub_100467120, v4, v3);
}

uint64_t sub_100467120()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  type metadata accessor for PlaylistPicker.Mode(0);
  swift_storeEnumTagMultiPayload();
  v6 = (v1 + *(v2 + 20));
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 1;
  sub_10047AAB4(v1, v3, type metadata accessor for PlaylistPicker.Context);
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_10046726C;
  v9 = v0[5];
  v8 = v0[6];

  return sub_100706024(v8, v9);
}

uint64_t sub_10046726C()
{
  v2 = *v1;
  v3 = (*v1)[5];
  (*v1)[13] = v0;

  sub_10047AB30(v3, type metadata accessor for AppInterfaceContext.Activity);
  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_100467478;
  }

  else
  {
    sub_10047AB30(v2[6], type metadata accessor for AppInterfaceContext.Activity);
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_1004673D4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1004673D4()
{

  sub_10047AB30(*(v0 + 64), type metadata accessor for PlaylistPicker.Context);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100467478()
{

  if (qword_10117F6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218C50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to present playlist picker.", v4, 2u);
  }

  sub_10047AB30(*(v0 + 64), type metadata accessor for PlaylistPicker.Context);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004675DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10002F3F4;

  return sub_100466998(a1, a2, v10, a3, a4);
}

uint64_t sub_1004676A0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_10046701C(a1, v4);
}

id sub_10046773C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v6 = v5;
  v155 = a5;
  v156 = a1;
  v143 = a3;
  v144 = a4;
  v142 = a2;
  v7 = type metadata accessor for Playlist.Folder();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v135 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v136 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for Playlist();
  v133 = *(v134 - 8);
  __chkstk_darwin();
  v132 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Playlist.Folder.Item();
  v149 = *(v12 - 8);
  v150 = v12;
  __chkstk_darwin();
  v138 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = &v132 - v14;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v152 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v151 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v139 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v137 = &v132 - v18;
  v146 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v153 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v22 = (&v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v24 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin();
  v145 = &v132 - v26;
  v27 = &v5[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource];
  *v27 = 0;
  v27[1] = 0;
  v27[2] = 1;
  v28 = &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
  *v31 = 0;
  v31[1] = 0;
  v32 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
  v147 = v8;
  v33 = *(v8 + 56);
  v154 = v7;
  v33(&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder], 1, 1, v7, v25);
  v34 = &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText];
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_allowsAnimatedChanges] = 0;
  *&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_recentsResponseController] = 0;
  v35 = &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists];
  v36 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v37 = *(*(v36 - 8) + 56);
  v37(v35, 1, 1, v36);
  v38 = &v35[*(type metadata accessor for PlaylistPicker.ViewController.Playlists(0) + 20)];
  v39 = v22;
  v40 = v20;
  v37(v38, 1, 1, v36);
  *&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___contextBarButtonItem] = 0;
  *&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton] = 0;
  v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell] = 0;
  v41 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistContainsDuplicatesCache;
  *&v6[v41] = sub_10010D1E8(_swiftEmptyArrayStorage);
  v42 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newCellRegistration;
  v43 = sub_10010FC20(&qword_101191148, &qword_100ECE270);
  (*(*(v43 - 8) + 56))(&v6[v42], 1, 1, v43);
  v44 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistCellRegistration;
  v45 = sub_10010FC20(&qword_10118CCD8, &qword_100EC8898);
  (*(*(v45 - 8) + 56))(&v6[v44], 1, 1, v45);
  v46 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folderCellRegistration;
  v47 = sub_10010FC20(&qword_10118CCE8, &qword_100EC88A0);
  (*(*(v47 - 8) + 56))(&v6[v46], 1, 1, v47);
  v48 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_headerRegistration;
  v49 = sub_10010FC20(&unk_101191158, &qword_100ECE278);
  (*(*(v49 - 8) + 56))(&v6[v48], 1, 1, v49);
  *&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView] = 0;
  *&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionViewLayout] = 0;
  sub_10047AAB4(v156, &v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], type metadata accessor for PlaylistPicker.Context);
  v50 = *v27;
  v51 = v27[1];
  v52 = v27[2];
  v53 = v143;
  *v27 = v142;
  v27[1] = v53;
  v27[2] = v144;
  sub_10047AB1C(v50, v51, v52);
  swift_beginAccess();
  sub_1002190E0(v155, &v6[v32], &unk_10118F670, &unk_100EC89B0);
  swift_endAccess();
  sub_1000089F8(&v6[v32], v39 + *(v20 + 20), &unk_10118F670, &unk_100EC89B0);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  *v39 = qword_101218AB8;
  *(v39 + *(v20 + 24)) = 0;
  type metadata accessor for MusicLibrary();

  *v24 = static MusicLibrary.shared.getter();
  *(v24 + 2) = 0;
  v24[24] = 1;
  v54 = v141;
  v55 = &v24[*(v141 + 36)];
  *v55 = 0;
  *(v55 + 1) = 0xE000000000000000;
  v143 = v54[10];
  v144 = v39;
  *&v24[v143] = &_swiftEmptySetSingleton;
  v56 = &v24[v54[11]];
  *v56 = 263;
  v57 = v54[8];
  sub_10047AAB4(v39, &v24[v57], _s9PlaylistsV5ScopeVMa);
  *(v24 + 4) = 256;
  v58 = objc_opt_self();
  v59 = [v58 standardUserDefaults];
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v60 = sub_1000060E4(v40, qword_101218730);
  v142 = v57;
  v61 = sub_1001982EC(&v24[v57], v60);
  v141 = 0xD000000000000010;
  if (v61)
  {
    v62 = 0xD000000000000011;
  }

  else
  {
    v62 = 0xD000000000000010;
  }

  v140 = "LibraryPlaylists";
  if (v61)
  {
    v63 = "LibraryPlaylists";
  }

  else
  {
    v63 = "v32@0:8@16@24";
  }

  v158 = v62;
  v159 = v63 | 0x8000000000000000;

  v64._countAndFlagsBits = 0x53746E65746E6F43;
  v64._object = 0xEB0000000074726FLL;
  String.append(_:)(v64);

  sub_100110448();
  sub_10011049C();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v158);

  sub_100375B90(v158);
  if ((v65 & 0xFF00) == 0x200)
  {
    v66 = v144;
    v67 = sub_1001982EC(v144, v60);
    v65 = sub_10045FDA0(v67 & 1 | 0xFFFFFF80);
    if ((v65 & 0xFF00) == 0x200)
    {
      LOBYTE(v68) = 1;
      LOBYTE(v65) = 7;
    }

    else
    {
      v68 = (v65 >> 8) & 1;
    }
  }

  else
  {
    v68 = (v65 >> 8) & 1;
    v66 = v144;
  }

  v69 = v142;
  *v56 = v65;
  v56[1] = v68;
  v70 = [v58 standardUserDefaults];
  v71 = sub_1001982EC(&v24[v69], v60);
  if (v71)
  {
    v72 = 0xD000000000000011;
  }

  else
  {
    v72 = v141;
  }

  v73 = v140;
  if ((v71 & 1) == 0)
  {
    v73 = "v32@0:8@16@24";
  }

  v74 = v73 | 0x8000000000000000;
  v75 = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
  v158 = v72;
  v159 = v74;

  v76._countAndFlagsBits = 0x704F7265746C6946;
  v76._object = 0xEC0000006E6F6974;
  String.append(_:)(v76);

  sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
  sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v75, &v158);

  v77 = v158;
  if (!v158)
  {
    v78 = sub_10018F3F4();
    v79 = Optional<A>.convertToSet.getter(v78);
    if (v79)
    {
      v77 = v79;
    }

    else
    {
      v77 = &_swiftEmptySetSingleton;
    }
  }

  v80 = v155;
  v82 = v149;
  v81 = v150;
  v83 = v147;
  v84 = sub_10018F5B8();
  v85 = sub_1003AE5C4(v84, v77);

  sub_10047AB30(v66, _s9PlaylistsV5ScopeVMa);
  *&v24[v143] = v85;
  v86 = v145;
  sub_10047AEE0(v24, v145, _s9PlaylistsVMa);
  sub_10010FC20(&qword_101191390, &unk_100EC89C0);
  swift_allocObject();
  *&v6[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_responseController] = sub_1003A13B8(v86);
  v87 = type metadata accessor for PlaylistPicker.ViewController(0);
  v157.receiver = v6;
  v157.super_class = v87;
  v88 = objc_msgSendSuper2(&v157, "initWithNibName:bundle:", 0, 0);
  v89 = v153;
  sub_10047AAB4(v156, v153, type metadata accessor for PlaylistPicker.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v91 = v154;
  if (EnumCaseMultiPayload == 1)
  {
    v92 = v148;
    (*(v82 + 32))(v148, v89, v81);
    v93 = v138;
    (*(v82 + 16))(v138, v92, v81);
    v94 = (*(v82 + 88))(v93, v81);
    if (v94 == enum case for Playlist.Folder.Item.folder(_:))
    {
      (*(v82 + 96))(v93, v81);
      v95 = v135;
      (*(v83 + 32))(v135, v93, v154);
      v96 = [v88 navigationItem];
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v97._countAndFlagsBits = 0x9C80E22065766F4DLL;
      v97._object = 0xA800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v97);
      v98._countAndFlagsBits = Playlist.Folder.name.getter();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v98);

      v99._countAndFlagsBits = 0x646C6F46209D80E2;
      v99._object = 0xAD00006F74207265;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v99);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v100 = String._bridgeToObjectiveC()();

      [v96 setPrompt:v100];

      v101 = v95;
      v91 = v154;
      (*(v83 + 8))(v101, v154);
    }

    else if (v94 == enum case for Playlist.Folder.Item.playlist(_:))
    {
      (*(v82 + 96))(v93, v81);
      v106 = v133;
      v107 = v132;
      (*(v133 + 32))(v132, v93, v134);
      v155 = [v88 navigationItem];
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v108._countAndFlagsBits = 0x9C80E22065766F4DLL;
      v108._object = 0xA800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v108);
      v109._countAndFlagsBits = Playlist.name.getter();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v109);

      v110._countAndFlagsBits = 0x6F74209D80E2;
      v110._object = 0xA600000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v110);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v111 = String._bridgeToObjectiveC()();

      v112 = v155;
      [v155 setPrompt:v111];

      (*(v106 + 8))(v107, v134);
      v91 = v154;
    }

    else
    {
      (*(v82 + 8))(v93, v81);
    }

    v122 = v139;
    sub_1000089F8(v80, v139, &unk_10118F670, &unk_100EC89B0);
    v123 = (*(v83 + 48))(v122, 1, v91);
    v124 = v88;
    if (v123 == 1)
    {
      sub_1000095E8(v122, &unk_10118F670, &unk_100EC89B0);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
    }

    else
    {
      Playlist.Folder.name.getter();
      (*(v83 + 8))(v122, v91);
    }

    v125 = String._bridgeToObjectiveC()();

    [v124 setTitle:v125];

    v126 = [v124 navigationItem];
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_100EBC6D0;
    *(v127 + 32) = sub_100471D54();
    *(v127 + 40) = sub_1004718C4();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v126 setRightBarButtonItems:isa animated:0];

    (*(v82 + 8))(v148, v81);
  }

  else
  {
    v102 = v137;
    sub_1000089F8(v80, v137, &unk_10118F670, &unk_100EC89B0);
    v103 = *(v83 + 48);
    v104 = v103(v102, 1, v91);
    v105 = v88;
    if (v104 == 1)
    {
      sub_1000095E8(v102, &unk_10118F670, &unk_100EC89B0);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
    }

    else
    {
      Playlist.Folder.name.getter();
      (*(v83 + 8))(v102, v91);
    }

    v113 = String._bridgeToObjectiveC()();

    [v105 setTitle:v113];

    v114 = [objc_allocWithZone(UISearchController) init];
    v115 = [v114 searchBar];
    [v115 setReturnKeyType:9];

    v116 = [v114 searchBar];
    v103(v80, 1, v91);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v117 = String._bridgeToObjectiveC()();

    [v116 setPlaceholder:v117];

    v118 = [v114 searchBar];
    [v118 setDelegate:v105];

    [v114 setObscuresBackgroundDuringPresentation:0];
    v119 = [v105 navigationItem];
    [v119 setSearchController:v114];

    v120 = [v105 navigationItem];
    [v120 setHidesSearchBarWhenScrolling:0];

    v121 = [v105 navigationItem];
    [v121 setPreferredSearchBarPlacement:2];

    sub_10047AB30(v153, type metadata accessor for PlaylistPicker.Mode);
  }

  v129 = v88;
  v130 = [v129 navigationItem];
  [v130 setLargeTitleDisplayMode:2];

  sub_100477184(0, 0, 1);
  sub_10047AB30(v156, type metadata accessor for PlaylistPicker.Context);
  sub_1000095E8(v80, &unk_10118F670, &unk_100EC89B0);
  return v129;
}

void sub_100468D9C()
{
  sub_10010FC20(&qword_101191468, &qword_100ECE470);
  __chkstk_darwin();
  v2 = &v33 - v1;
  sub_10010FC20(&unk_101191440, &qword_100EC9028);
  __chkstk_darwin();
  v4 = &v33 - v3;
  sub_10010FC20(&qword_10118D318, &qword_100EC9048);
  __chkstk_darwin();
  v6 = &v33 - v5;
  sub_10010FC20(&unk_101191450, &qword_100ECE468);
  __chkstk_darwin();
  v8 = &v33 - v7;
  v9 = type metadata accessor for PlaylistPicker.ViewController(0);
  v34.receiver = v0;
  v34.super_class = v9;
  objc_msgSendSuper2(&v34, "viewDidLoad");
  sub_10046E004();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  UICollectionView.CellRegistration.init(handler:)();
  v10 = sub_10010FC20(&qword_101191148, &qword_100ECE270);
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newCellRegistration;
  swift_beginAccess();
  sub_10006B010(v8, &v0[v11], &unk_101191450, &qword_100ECE468);
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for Playlist();
  UICollectionView.CellRegistration.init(handler:)();
  v12 = sub_10010FC20(&qword_10118CCD8, &qword_100EC8898);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistCellRegistration;
  swift_beginAccess();
  sub_10006B010(v6, &v0[v13], &qword_10118D318, &qword_100EC9048);
  swift_endAccess();
  type metadata accessor for Playlist.Folder();
  UICollectionView.CellRegistration.init(handler:)();
  v14 = sub_10010FC20(&qword_10118CCE8, &qword_100EC88A0);
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  v15 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folderCellRegistration;
  swift_beginAccess();
  sub_10006B010(v4, &v0[v15], &unk_101191440, &qword_100EC9028);
  swift_endAccess();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v16 = sub_10010FC20(&unk_101191158, &qword_100ECE278);
  (*(*(v16 - 8) + 56))(v2, 0, 1, v16);
  v17 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_headerRegistration;
  swift_beginAccess();
  sub_10006B010(v2, &v0[v17], &qword_101191468, &qword_100ECE470);
  swift_endAccess();
  v18 = sub_100477A1C();
  [v18 setDelegate:v0];

  v19 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView;
  [*&v0[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView] setDataSource:v0];
  v20 = *&v0[v19];
  v21 = [v0 view];
  if (v21)
  {
    v22 = v21;
    [v21 frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    [v20 setFrame:{v24, v26, v28, v30}];
    [*&v0[v19] setAutoresizingMask:18];
    [*&v0[v19] setKeyboardDismissMode:1];
    v31 = [v0 view];
    if (v31)
    {
      v32 = v31;
      [v31 addSubview:*&v0[v19]];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1004693CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    *(swift_allocObject() + 16) = Strong;
    v7 = v6;
    UICollectionViewCell.configurationUpdateHandler.setter();
    [a1 setUserInteractionEnabled:(v7[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell] & 1) == 0];
  }
}

uint64_t sub_10046948C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10010FC20(&qword_101191528, &qword_100ECE540);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  v11 = a3;
  v12 = a2;
  sub_10010FC20(&qword_101191530, &qword_100ECE548);
  sub_10047B704();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.vertical.getter();
  v13[3] = v5;
  v13[4] = sub_100020674(&qword_101191560, &qword_101191528, &qword_100ECE540, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v13);
  UIHostingConfiguration.margins(_:_:)();
  (*(v6 + 8))(v8, v5);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_10046961C(uint64_t a1)
{
  v2 = _s23NewPlaylistOrFolderCellVMa(0);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101191548, &qword_100ECE550);
  __chkstk_darwin();
  v7 = &v11 - v6;
  sub_10047AAB4(a1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v4, type metadata accessor for PlaylistPicker.Mode);
  if (qword_10117F788 != -1)
  {
    swift_once();
  }

  *&v4[*(v2 + 20)] = qword_101191080;
  v8 = *(v2 + 24);
  *&v4[v8] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  if (UICellConfigurationState.isDisabled.getter())
  {
    v9 = 0.5;
  }

  else
  {
    v9 = 1.0;
  }

  sub_10047AEE0(v4, v7, _s23NewPlaylistOrFolderCellVMa);
  *&v7[*(v5 + 36)] = v9;
  UICellConfigurationState.isDisabled.getter();
  sub_10047B7C0();
  View.accessibilityAddTraits(uiTraits:)();
  return sub_1000095E8(v7, &qword_101191548, &qword_100ECE550);
}

void sub_100469830(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  type metadata accessor for Locale();
  __chkstk_darwin();
  v91 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v89 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v93 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v77 - v14;
  v16 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v83 = *(v16 - 8);
  v84 = v16;
  __chkstk_darwin();
  v85 = &v77 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v92 = v12;
  v86 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v7;
  v88 = v6;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v82 = (v20 + 16);
  *(v20 + 24) = 0;
  v21 = Playlist.id.getter();
  v23 = v22;
  v24 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistContainsDuplicatesCache;
  swift_beginAccess();
  v25 = *&v19[v24];
  if (!*(v25 + 16))
  {

    goto LABEL_9;
  }

  v26 = v8;
  v27 = a3;
  v28 = a1;

  v29 = sub_100019C10(v21, v23);
  v31 = v30;

  if ((v31 & 1) == 0)
  {

    a1 = v28;
    a3 = v27;
    v8 = v26;
    goto LABEL_9;
  }

  v32 = *(*(v25 + 56) + 16 * v29);

  v33 = &v19[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource];
  v34 = *&v19[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource + 16];
  a1 = v28;
  a3 = v27;
  v8 = v26;
  if (v34 == 1)
  {
    goto LABEL_9;
  }

  v35 = *v33;
  v36 = v33[1];
  sub_10047AAB4(&v19[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], v15, type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10047AB30(v15, type metadata accessor for PlaylistPicker.Mode);
    goto LABEL_9;
  }

  v78 = v32;
  v80 = v36;
  v81 = v35;
  v63 = v83;
  v62 = v84;
  v64 = v85;
  (*(v83 + 32))(v85, v15, v84);
  sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  v79 = v34;

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() < 1)
  {
    (*(v63 + 8))(v64, v62);
    sub_10047AB1C(v81, v80, v79);
    goto LABEL_9;
  }

  v65 = v63;
  v66 = v78;
  sub_10047AB1C(v81, v80, v79);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v66 != dispatch thunk of Collection.distance(from:to:)())
  {
    if (v66 < 1)
    {
      (*(v65 + 8))(v85, v62);
      goto LABEL_9;
    }

    v70 = v81;
    if (v81)
    {
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v71)
      {
        goto LABEL_32;
      }

      if (v70 == 2)
      {
        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v72 & 1) == 0)
        {
          (*(v83 + 8))(v85, v84);
          goto LABEL_9;
        }

        goto LABEL_32;
      }
    }

LABEL_32:
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v73);
    v94 = v66;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v74._countAndFlagsBits = 0xD00000000000001CLL;
    v74._object = 0x8000000100E4D020;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v74);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    v75 = String.init(localized:table:bundle:locale:comment:)();
    v69 = v76;
    (*(v83 + 8))(v85, v84);
    *(v20 + 16) = v75;
    goto LABEL_33;
  }

  v67 = sub_100466198(v81);
  v69 = v68;
  (*(v65 + 8))(v64, v62);
  *(v20 + 16) = v67;
LABEL_33:
  *(v20 + 24) = v69;

LABEL_9:
  active = Playlist.hasActiveCollaboration.getter();
  v38 = v87;
  if (active)
  {
    v39 = Playlist.curatorName.getter();
    if (v40 || (v39 = sub_10034E2C4(), v40))
    {
      v41 = v39;
      v42 = v40;
      v85 = a3;
      v43 = *(v20 + 24);
      if (v43)
      {
        v44 = *v82;

        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v45._countAndFlagsBits = 2128194;
        v45._object = 0xE300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v45);
        v46._countAndFlagsBits = v41;
        v46._object = v42;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v46);

        v47._countAndFlagsBits = 548913696;
        v47._object = 0xA400000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v47);
        v48._countAndFlagsBits = v44;
        v48._object = v43;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v48);

        v49 = 0;
        v50 = 0xE000000000000000;
      }

      else
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v51._countAndFlagsBits = 2128194;
        v51._object = 0xE300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v51);
        v52._countAndFlagsBits = v41;
        v52._object = v42;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v52);

        v50 = 0x8000000100E4CEF0;
        v49 = 0xD000000000000012;
      }

      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v49);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      v53 = String.init(localized:table:bundle:locale:comment:)();
      a3 = v85;
      *(v20 + 16) = v53;
      *(v20 + 24) = v54;
    }
  }

  v55 = v93;
  sub_10047AAB4(&v19[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], v93, type metadata accessor for PlaylistPicker.Mode);
  v56 = swift_getEnumCaseMultiPayload() != 1;
  sub_10047AB30(v55, type metadata accessor for PlaylistPicker.Mode);
  [a1 setUserInteractionEnabled:v56];
  v57 = a3;
  v58 = v86;
  v59 = v88;
  (*(v38 + 16))(v86, v57, v88);
  v60 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v61 = swift_allocObject();
  (*(v38 + 32))(v61 + v60, v58, v59);
  *(v61 + ((v8 + v60 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;

  UICollectionViewCell.configurationUpdateHandler.setter();
}

uint64_t sub_10046A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10010FC20(&qword_101191508, &qword_100ECE530);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v12[-v9];
  v13 = a3;
  v14 = a4 + 16;
  v15 = a2;
  sub_10010FC20(&qword_101191510, &qword_100ECE538);
  sub_10047B638();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.vertical.getter();
  v16[3] = v7;
  v16[4] = sub_100020674(&qword_101191520, &qword_101191508, &qword_100ECE530, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v16);
  UIHostingConfiguration.margins(_:_:)();
  (*(v8 + 8))(v10, v7);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_10046A40C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v46 = a2;
  v47 = a3;
  v42 = a1;
  v3 = type metadata accessor for Font.TextStyle();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin();
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for MusicFavoriteStatus();
  v5 = *(v41 - 8);
  __chkstk_darwin();
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v37 - v7;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v12 = &v37 - v11;
  v13 = _s12PlaylistCellVMa(0);
  __chkstk_darwin();
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.artworkViewModel.getter(v12);
  Playlist.variant.getter();
  v16 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v16 - 8) + 56))(v10, 0, 11, v16);
  v17 = Corner.medium.unsafeMutableAddressor();
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v17 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v49);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v12, v10, 0, 1, v49, v18, v19, v20, v15);
  v39 = Playlist.name.getter();
  v38 = v21;
  v22 = v42;
  swift_beginAccess();
  v23 = v22[1];
  v37 = *v22;

  active = Playlist.hasActiveCollaboration.getter();
  Playlist.favoriteStatus.getter();
  v26 = v40;
  v25 = v41;
  (*(v5 + 104))(v40, enum case for MusicFavoriteStatus.favorited(_:), v41);
  v27 = static MusicFavoriteStatus.== infix(_:_:)();
  v28 = *(v5 + 8);
  v28(v26, v25);
  v28(v8, v25);
  if (qword_10117F788 != -1)
  {
    swift_once();
  }

  v29 = &v15[v13[5]];
  v30 = v38;
  *v29 = v39;
  v29[1] = v30;
  v31 = &v15[v13[6]];
  *v31 = v37;
  *(v31 + 1) = v23;
  v15[v13[7]] = active & 1;
  v32 = qword_101191080;
  v15[v13[8]] = v27 & 1;
  v15[v13[9]] = 0;
  *&v15[v13[10]] = v32;
  v33 = v13[11];
  *&v15[v33] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v48 = 0x4020000000000000;
  (*(v44 + 104))(v43, enum case for Font.TextStyle.largeTitle(_:), v45);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  if (UICellConfigurationState.isDisabled.getter())
  {
    v34 = 0.5;
  }

  else
  {
    v34 = 1.0;
  }

  v35 = v47;
  sub_10047AEE0(v15, v47, _s12PlaylistCellVMa);
  result = sub_10010FC20(&qword_101191510, &qword_100ECE538);
  *(v35 + *(result + 36)) = v34;
  return result;
}

uint64_t sub_10046A92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_1011914F0, &qword_100ECE4F8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9[-v6];
  v10 = a3;
  _s12PlaylistCellVMa(0);
  sub_10047A9B8(&qword_1011914F8, _s12PlaylistCellVMa, &unk_100ECABE0);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.vertical.getter();
  v11[3] = v4;
  v11[4] = sub_100020674(&qword_101191500, &qword_1011914F0, &qword_100ECE4F8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v11);
  UIHostingConfiguration.margins(_:_:)();
  (*(v5 + 8))(v7, v4);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_10046AADC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v9 = v27 - v8;
  v10 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = enum case for Playlist.Variant.folder(_:);
  v12 = type metadata accessor for Playlist.Variant();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v7, v11, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  v14 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v14 - 8) + 56))(v7, 0, 11, v14);
  v15 = Corner.medium.unsafeMutableAddressor();
  v16 = *v15;
  v17 = v15[1];
  LOBYTE(v13) = *(v15 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v28);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v9, v7, 0, 1, v28, v16, v17, v13, a1);
  v18 = Playlist.Folder.name.getter();
  v20 = v19;
  if (qword_10117F788 != -1)
  {
    swift_once();
  }

  v21 = qword_101191080;
  v22 = _s12PlaylistCellVMa(0);
  v23 = (a1 + v22[5]);
  *v23 = v18;
  v23[1] = v20;
  v24 = (a1 + v22[6]);
  *v24 = 0;
  v24[1] = 0;
  *(a1 + v22[7]) = 0;
  *(a1 + v22[8]) = 0;
  *(a1 + v22[9]) = 1;
  *(a1 + v22[10]) = v21;
  v25 = v22[11];
  *(a1 + v25) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v27[1] = 0x4020000000000000;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.largeTitle(_:), v2);
  sub_100363C0C();
  return ScaledMetric.init(wrappedValue:relativeTo:)();
}

void sub_10046AEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a1;
  v5 = sub_10010FC20(&unk_101191470, &qword_100ECE478);
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin();
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v40 - v7;
  v8 = sub_10010FC20(&unk_10118A510, &qword_100EC5D98);
  v46 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v40 - v11;
  v12 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v40 - v14;
  v16 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  __chkstk_darwin();
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v40 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = IndexPath.section.getter();
    v48 = v22;
    sub_1004732C0(v23);
    v25 = v24;
    if (v24)
    {
      if (v24 == 1)
      {
        v26 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
        v27 = v48;
        swift_beginAccess();
        sub_10047AAB4(v27 + v26, v20, type metadata accessor for PlaylistPicker.ViewController.Playlists);
        if ((*(v13 + 48))(v20, 1, v12))
        {
          v18 = v20;
LABEL_7:
          sub_10047AB30(v18, type metadata accessor for PlaylistPicker.ViewController.Playlists);
LABEL_11:
          sub_10010FC20(&unk_10118A520, &unk_100EC5DA0);
          sub_1002D8BFC();
          UIHostingConfiguration<>.init(content:)();
          v33 = v45;
          UIHostingConfiguration.minSize(width:height:)();
          v34 = *(v46 + 8);
          v34(v10, v8);
          static Edge.Set.vertical.getter();
          v51 = v8;
          v52 = sub_100020674(&qword_1011914E0, &unk_10118A510, &qword_100EC5D98, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
          sub_10001C8B8(v50);
          UIHostingConfiguration.margins(_:_:)();
          v34(v33, v8);
LABEL_16:
          UICollectionViewCell.contentConfiguration.setter();

          return;
        }

        (*(v13 + 16))(v15, v20, v12);
        v31 = v20;
      }

      else
      {
        v28 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
        v29 = v48;
        swift_beginAccess();
        sub_10047AAB4(v29 + v28, v18, type metadata accessor for PlaylistPicker.ViewController.Playlists);
        v30 = *(v16 + 20);
        if ((*(v13 + 48))(&v18[v30], 1, v12))
        {
          goto LABEL_7;
        }

        (*(v13 + 16))(v15, &v18[v30], v12);
        v31 = v18;
      }

      sub_10047AB30(v31, type metadata accessor for PlaylistPicker.ViewController.Playlists);
      v32 = MusicLibrarySectionedResponse.isEmpty.getter(v12);
      (*(v13 + 8))(v15, v12);
      if (v32)
      {
        goto LABEL_11;
      }
    }

    __chkstk_darwin();
    *(&v40 - 2) = v48;
    *(&v40 - 8) = v25;
    sub_10010FC20(&qword_101191480, &qword_100ECE480);
    sub_10047B4C0();
    v35 = v41;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.top.getter();
    if (v25)
    {
      v37 = v43;
      v36 = v44;
      v38 = v42;
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {

      v37 = v43;
      v36 = v44;
      v38 = v42;
    }

    UIHostingConfiguration.margins(_:_:)();
    v39 = *(v37 + 8);
    v39(v35, v36);
    v49 = static Color.clear.getter();
    v51 = sub_10010FC20(&qword_1011914D0, &qword_100ECE488);
    v52 = sub_100020674(&qword_1011914D8, &qword_1011914D0, &qword_100ECE488, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v50);
    UIHostingConfiguration.background<A>(_:)();

    v39(v38, v36);
    goto LABEL_16;
  }
}

double sub_10046B624@<D0>(uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  result = *&v8;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_10046B698@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = sub_10047A230(a1);
  v5 = v4;
  v6 = sub_100479D70(&off_10109B300);
  v7 = Text.init(optional:options:)(v3, v5, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v14 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v16 = static Color.primary.getter();
  result = swift_getKeyPath();
  *a2 = v7;
  a2[1] = v9;
  a2[2] = v11;
  a2[3] = v13;
  a2[4] = KeyPath;
  a2[5] = v14;
  a2[6] = result;
  a2[7] = v16;
  return result;
}

double sub_10046B7A8(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PlaylistPicker.ViewController(0);
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  if (*&v2[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_recentsResponseController])
  {

    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);

  return result;
}

uint64_t sub_10046B8A4(char a1)
{
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlaylistPicker.ViewController(0);
  v17.receiver = v1;
  v17.super_class = v5;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1 & 1);
  *(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_allowsAnimatedChanges) = 1;
  v6 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v7 = MetricsEvent.Page.playlistPicker.unsafeMutableAddressor();
  sub_10047AAB4(v7, v4, type metadata accessor for MetricsEvent.Page);
  v8 = sub_10053771C();
  v10 = v9;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v11 = qword_101218AD0;
  v12 = GroupActivitiesManager.hasJoined.getter();
  v13 = GroupActivitiesManager.participantsCount.getter();
  v14 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v6) + 0xA0))(v4, v8, v10, v12 & 1, v13, *(v11 + v14));

  return sub_10047AB30(v4, type metadata accessor for MetricsEvent.Page);
}

double sub_10046BAC8(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PlaylistPicker.ViewController(0);
  objc_msgSendSuper2(&v5, "viewDidDisappear:", a1 & 1);
  v2[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_allowsAnimatedChanges] = 0;
  if (*&v2[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_recentsResponseController])
  {

    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
  }

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);

  return result;
}

void sub_10046BBD0()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for PlaylistPicker.ViewController(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    sub_100477184(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10046BF68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v59 = a1;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v52 = &v50 - v5;
  sub_10010FC20(&unk_101191440, &qword_100EC9028);
  __chkstk_darwin();
  v56 = &v50 - v6;
  v7 = type metadata accessor for Playlist.Folder();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin();
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v10 = &v50 - v9;
  sub_10010FC20(&qword_10118D318, &qword_100EC9048);
  __chkstk_darwin();
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v50 - v13;
  v58 = type metadata accessor for Playlist();
  v14 = *(v58 - 8);
  __chkstk_darwin();
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v50 - v19;
  sub_10010FC20(&unk_101191450, &qword_100ECE468);
  __chkstk_darwin();
  v22 = &v50 - v21;
  v23 = IndexPath.section.getter();
  sub_1004732C0(v23);
  if (!v24)
  {
    v33 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newCellRegistration;
    swift_beginAccess();
    sub_1000089F8(v2 + v33, v22, &unk_101191450, &qword_100ECE468);
    v34 = sub_10010FC20(&qword_101191148, &qword_100ECE270);
    v35 = *(v34 - 8);
    result = (*(v35 + 48))(v22, 1, v34);
    if (result != 1)
    {
      v60 = 0;
      sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
      v32 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      (*(v35 + 8))(v22, v34);
      return v32;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v57 = a2;
  sub_10047361C(v20);
  v25 = type metadata accessor for Playlist.Folder.Item();
  v26 = *(v25 - 8);
  v27 = v14;
  if ((*(v26 + 48))(v20, 1, v25) == 1)
  {
LABEL_3:
    v28 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistCellRegistration;
    swift_beginAccess();
    sub_1000089F8(v3 + v28, v12, &qword_10118D318, &qword_100EC9048);
    v29 = sub_10010FC20(&qword_10118CCD8, &qword_100EC8898);
    v30 = *(v29 - 8);
    result = (*(v30 + 48))(v12, 1, v29);
    if (result != 1)
    {
      (*(v27 + 56))(v10, 1, 1, v58);
      v32 = sub_1007F9EBC(v12, v57, v10);
      sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
LABEL_10:
      (*(v30 + 8))(v12, v29);
LABEL_11:
      sub_1000095E8(v20, &qword_1011831B0, &qword_100ED2570);
      return v32;
    }

    __break(1u);
    goto LABEL_18;
  }

  sub_1000089F8(v20, v18, &qword_1011831B0, &qword_100ED2570);
  v36 = (*(v26 + 88))(v18, v25);
  if (v36 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v26 + 96))(v18, v25);
    v38 = v53;
    v37 = v54;
    v39 = v55;
    (*(v54 + 32))(v53, v18, v55);
    v40 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folderCellRegistration;
    swift_beginAccess();
    v12 = v56;
    sub_1000089F8(v3 + v40, v56, &unk_101191440, &qword_100EC9028);
    v29 = sub_10010FC20(&qword_10118CCE8, &qword_100EC88A0);
    v30 = *(v29 - 8);
    result = (*(v30 + 48))(v12, 1, v29);
    if (result != 1)
    {
      v41 = v52;
      (*(v37 + 16))(v52, v38, v39);
      (*(v37 + 56))(v41, 0, 1, v39);
      v32 = sub_1007FA3F8(v12, v57, v41);
      sub_1000095E8(v41, &unk_10118F670, &unk_100EC89B0);
      (*(v37 + 8))(v38, v39);
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if (v36 != enum case for Playlist.Folder.Item.playlist(_:))
  {
    (*(v26 + 8))(v18, v25);
    goto LABEL_3;
  }

  (*(v26 + 96))(v18, v25);
  v42 = v58;
  (*(v14 + 32))(v16, v18, v58);
  v43 = v57;
  sub_100475A78(v57);
  v44 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistCellRegistration;
  swift_beginAccess();
  v45 = v3 + v44;
  v46 = v51;
  sub_1000089F8(v45, v51, &qword_10118D318, &qword_100EC9048);
  v47 = sub_10010FC20(&qword_10118CCD8, &qword_100EC8898);
  v48 = *(v47 - 8);
  result = (*(v48 + 48))(v46, 1, v47);
  if (result != 1)
  {
    (*(v14 + 16))(v10, v16, v42);
    (*(v14 + 56))(v10, 0, 1, v42);
    v49 = v46;
    v32 = sub_1007F9EBC(v46, v43, v10);
    sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
    (*(v14 + 8))(v16, v42);
    (*(v48 + 8))(v49, v47);
    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10046CD80(void *a1, uint64_t a2)
{
  v3 = v2;
  v124 = a1;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v115 = &v102 - v5;
  type metadata accessor for PlaylistPicker.Context(0);
  __chkstk_darwin();
  v114 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Playlist.Folder();
  v116 = *(v7 - 8);
  v117 = v7;
  __chkstk_darwin();
  v120 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Track();
  v106 = *(v119 - 8);
  __chkstk_darwin();
  v118 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10010FC20(&unk_10118C0B0, &qword_100ECFA00);
  __chkstk_darwin();
  v109 = &v102 - v10;
  v11 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v12 = *(v11 - 8);
  v110 = v11;
  v111 = v12;
  __chkstk_darwin();
  v107 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v102 - v14;
  v15 = type metadata accessor for Playlist();
  v16 = *(v15 - 8);
  v122 = v15;
  v123 = v16;
  __chkstk_darwin();
  v113 = (&v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v19 = &v102 - v18;
  v20 = type metadata accessor for Playlist.Folder.Item();
  v21 = *(v20 - 1);
  __chkstk_darwin();
  v23 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v125 = &v102 - v24;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v121 = &v102 - v25;
  type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v102 - v28;
  v30 = IndexPath.section.getter();
  sub_1004732C0(v30);
  if (!v31)
  {
    sub_10047AAB4(&v2[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], v29, type metadata accessor for PlaylistPicker.Mode);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler;
    }

    else
    {
      v35 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler;
    }

    v73 = *&v2[v35];
    v74 = v122;
    if (v73)
    {
      v75 = *&v2[v35 + 8];

      v73(v3);
      sub_100020438(v73, v75);
    }

    sub_10047AB30(v29, type metadata accessor for PlaylistPicker.Mode);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v124 deselectItemAtIndexPath:isa animated:1];

    v77 = v121;
    (*(v123 + 56))(v121, 1, 1, v74);
    sub_100477300(0, v77);
    v32 = &unk_1011814D0;
    v33 = &qword_100EC12A0;
    v34 = v77;
    return sub_1000095E8(v34, v32, v33);
  }

  v104 = v31;
  v105 = v2;
  sub_10047361C(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v32 = &qword_1011831B0;
    v33 = &qword_100ED2570;
    v34 = v19;
    return sub_1000095E8(v34, v32, v33);
  }

  v36 = v125;
  (*(v21 + 32))(v125, v19, v20);
  (*(v21 + 16))(v23, v36, v20);
  v37 = (*(v21 + 88))(v23, v20);
  if (v37 == enum case for Playlist.Folder.Item.folder(_:))
  {
    v102 = a2;
    v103 = v21;
    (*(v21 + 96))(v23, v20);
    v38 = v116;
    v39 = v120;
    v40 = v23;
    v41 = v117;
    (*(v116 + 32))(v120, v40, v117);
    v42 = v105;
    v43 = v114;
    sub_10047AAB4(&v105[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], v114, type metadata accessor for PlaylistPicker.Context);
    v44 = *&v42[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource];
    v45 = *&v42[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource + 8];
    v46 = *&v42[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource + 16];
    v47 = v115;
    (*(v38 + 16))(v115, v39, v41);
    (*(v38 + 56))(v47, 0, 1, v41);
    objc_allocWithZone(type metadata accessor for PlaylistPicker.ViewController(0));
    sub_10047ABA0(v44, v45, v46);
    v48 = sub_10046773C(v43, v44, v45, v46, v47);
    v49 = *&v42[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler];
    v50 = *&v42[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler + 8];
    v51 = &v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler];
    v52 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler];
    v53 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler + 8];
    *v51 = v49;
    v51[1] = v50;
    sub_100030444(v49, v50);
    sub_100020438(v52, v53);
    v54 = *&v42[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
    v55 = *&v42[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler + 8];
    v56 = &v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
    v57 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
    v58 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler + 8];
    *v56 = v54;
    v56[1] = v55;
    sub_100030444(v54, v55);
    sub_100020438(v57, v58);
    v59 = *&v42[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler];
    v60 = *&v42[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler + 8];
    v61 = &v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler];
    v62 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler];
    v63 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler + 8];
    *v61 = v59;
    v61[1] = v60;
    sub_100030444(v59, v60);
    sub_100020438(v62, v63);
    v64 = *&v42[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
    v65 = *&v42[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler + 8];
    v66 = &v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
    v67 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
    v68 = *&v48[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler + 8];
    *v66 = v64;
    v66[1] = v65;
    sub_100030444(v64, v65);
    sub_100020438(v67, v68);
    v69 = [v42 navigationController];
    if (v69)
    {
      v70 = v69;
      [v69 pushViewController:v48 animated:1];
    }

    v71 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v124 deselectItemAtIndexPath:v71 animated:1];

    (*(v38 + 8))(v120, v41);
    return (*(v103 + 8))(v125, v20);
  }

  if (v37 != enum case for Playlist.Folder.Item.playlist(_:))
  {
    v82 = *(v21 + 8);
    v82(v125, v20);
    return (v82)(v23, v20);
  }

  (*(v21 + 96))(v23, v20);
  v79 = v122;
  v78 = v123;
  v80 = v113;
  (*(v123 + 32))(v113, v23, v122);
  v81 = v105;
  sub_10047AAB4(&v105[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], v27, type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v78 + 8))(v80, v79);
    (*(v21 + 8))(v125, v20);
    return sub_10047AB30(v27, type metadata accessor for PlaylistPicker.Mode);
  }

  v103 = v21;
  v83 = v111;
  v84 = v110;
  (*(v111 + 32))(v112, v27, v110);
  if ((Playlist.hasActiveCollaboration.getter() & 1) == 0)
  {
    goto LABEL_26;
  }

  v124 = v20;
  v102 = a2;
  (*(v83 + 16))(v107, v112, v84);
  sub_100020674(&unk_10118C0A0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  v85 = v109;
  dispatch thunk of Sequence.makeIterator()();
  v86 = *(v108 + 36);
  sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v85 + v86) == v126[0])
  {
LABEL_25:
    sub_1000095E8(v85, &unk_10118C0B0, &qword_100ECFA00);
    v81 = v105;
    v20 = v124;
    v79 = v122;
    v83 = v111;
LABEL_26:
    v94 = *&v81[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
    v95 = v113;
    if (v94)
    {
      v96 = *&v81[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler + 8];

      v94(v81, v95);
      sub_100020438(v94, v96);
    }

    v97 = v123;
    v98 = v121;
    (*(v123 + 16))(v121, v95, v79);
    (*(v97 + 56))(v98, 0, 1, v79);
    sub_100477300(v104, v98);
    sub_1000095E8(v98, &unk_1011814D0, &qword_100EC12A0);
    (*(v83 + 8))(v112, v84);
    (*(v97 + 8))(v95, v79);
    return (*(v103 + 8))(v125, v20);
  }

  v87 = (v106 + 16);
  v88 = (v106 + 8);
  v89 = v119;
  while (1)
  {
    v90 = dispatch thunk of Collection.subscript.read();
    v91 = v118;
    (*v87)(v118);
    v90(v126, 0);
    dispatch thunk of Collection.formIndex(after:)();
    Track.catalogID.getter();
    v93 = v92;
    (*v88)(v91, v89);
    if (!v93)
    {
      break;
    }

    dispatch thunk of Collection.endIndex.getter();
    if (*(v85 + v86) == v126[0])
    {
      goto LABEL_25;
    }
  }

  sub_1000095E8(v85, &unk_10118C0B0, &qword_100ECFA00);
  v99 = v112;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v100 = dispatch thunk of Collection.distance(from:to:)() > 1;
  v101 = v113;
  sub_100476794(v113, v102, v100);
  (*(v111 + 8))(v99, v84);
  (*(v123 + 8))(v101, v122);
  return (*(v103 + 8))(v125, v124);
}

double sub_10046DE00(uint64_t a1, uint64_t a2)
{
  v5 = _s9PlaylistsVMa(0);
  *&result = __chkstk_darwin().n128_u64[0];
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = (v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText);
  v10 = *(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText);
  v11 = *(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText + 8);
  v12 = v10 == a1 && v11 == a2;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v13 = *(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_recentsResponseController);
    if (v13)
    {
      v14 = *(v13 + 48);
      v15 = *(*v14 + 96);
      swift_beginAccess();
      sub_10047AAB4(v14 + v15, v8, _s9PlaylistsVMa);
      v16 = &v8[*(v5 + 36)];

      *v16 = v10;
      v16[1] = v11;
      sub_1003777F4(v8);
    }

    v18 = *v9;
    v17 = v9[1];
    v19 = *(*(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_responseController) + 48);
    v20 = *(*v19 + 96);
    swift_beginAccess();
    sub_10047AAB4(v19 + v20, v8, _s9PlaylistsVMa);
    v21 = &v8[*(v5 + 36)];

    *v21 = v18;
    v21[1] = v17;
    sub_1003777F4(v8);
  }

  return result;
}

double sub_10046E004()
{
  v1 = v0;
  v2 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v4 = (&v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v58 - v8;
  __chkstk_darwin();
  v11 = &v58 - v10;
  type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047AAB4(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v13, type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v62 = v9;
    v63 = v13;
    v14 = *(*(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_responseController) + 48);
    v15 = *(*v14 + 96);
    swift_beginAccess();
    sub_10047AAB4(v14 + v15, v11, _s9PlaylistsVMa);
    v11[v5[8] + *(v2 + 24)] = 1;

    sub_1003777F4(v11);

    if (qword_10117F5D0 != -1)
    {
      swift_once();
    }

    v16 = qword_101218AB0;
    v17 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
    swift_beginAccess();
    sub_1000089F8(v1 + v17, v4 + *(v2 + 20), &unk_10118F670, &unk_100EC89B0);
    *v4 = v16;
    *(v4 + *(v2 + 24)) = 1;
    type metadata accessor for MusicLibrary();

    *v7 = static MusicLibrary.shared.getter();
    *(v7 + 2) = 0;
    v7[24] = 1;
    v18 = &v7[v5[9]];
    *v18 = 0;
    *(v18 + 1) = 0xE000000000000000;
    v61 = v5[10];
    *&v7[v61] = &_swiftEmptySetSingleton;
    v19 = &v7[v5[11]];
    *v19 = 263;
    v20 = v5[8];
    v64 = v4;
    sub_10047AAB4(v4, &v7[v20], _s9PlaylistsV5ScopeVMa);
    *(v7 + 4) = 256;
    v59 = objc_opt_self();
    v21 = [v59 standardUserDefaults];
    if (qword_10117F298 != -1)
    {
      swift_once();
    }

    v22 = sub_1000060E4(v2, qword_101218730);
    v60 = v20;
    v23 = sub_1001982EC(&v7[v20], v22);
    v24 = "LibraryPlaylists";
    if (v23)
    {
      v25 = 0xD000000000000011;
    }

    else
    {
      v25 = 0xD000000000000010;
    }

    v58 = "LibraryPlaylists";
    if ((v23 & 1) == 0)
    {
      v24 = "v32@0:8@16@24";
    }

    v65 = v25;
    v66 = v24 | 0x8000000000000000;

    v26._countAndFlagsBits = 0x53746E65746E6F43;
    v26._object = 0xEB0000000074726FLL;
    String.append(_:)(v26);

    sub_100110448();
    sub_10011049C();
    NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v65);

    v27 = v65;
    sub_100375B90(6);
    if ((v28 & 0xFF00) == 0x200 && (sub_100375B90(v27), (v28 & 0xFF00) == 0x200))
    {
      v29 = sub_1001982EC(v64, v22);
      v28 = sub_10045FDA0(v29 & 1 | 0xFFFFFF80);
      v30 = v60;
      if ((v28 & 0xFF00) == 0x200)
      {
        LOBYTE(v31) = 1;
        LOBYTE(v28) = 7;
      }

      else
      {
        v31 = (v28 >> 8) & 1;
      }
    }

    else
    {
      v31 = (v28 >> 8) & 1;
      v30 = v60;
    }

    *v19 = v28;
    v19[1] = v31;
    v32 = [v59 standardUserDefaults];
    v33 = sub_1001982EC(&v7[v30], v22);
    if (v33)
    {
      v34 = 0xD000000000000011;
    }

    else
    {
      v34 = 0xD000000000000010;
    }

    v35 = v58;
    if ((v33 & 1) == 0)
    {
      v35 = "v32@0:8@16@24";
    }

    v36 = v35 | 0x8000000000000000;
    v37 = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
    v65 = v34;
    v66 = v36;

    v38._countAndFlagsBits = 0x704F7265746C6946;
    v38._object = 0xEC0000006E6F6974;
    String.append(_:)(v38);

    sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
    sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
    NSUserDefaults.decodeValue<A>(_:forKey:)(v37, &v65);

    v39 = v65;
    if (!v65)
    {
      v40 = sub_10018F3F4();
      v41 = Optional<A>.convertToSet.getter(v40);
      if (v41)
      {
        v39 = v41;
      }

      else
      {
        v39 = &_swiftEmptySetSingleton;
      }
    }

    v42 = v64;
    v43 = sub_10018F5B8();
    v44 = sub_1003AE5C4(v43, v39);

    sub_10047AB30(v42, _s9PlaylistsV5ScopeVMa);
    v45 = v62;
    *&v7[v61] = v44;
    sub_10047AEE0(v7, v45, _s9PlaylistsVMa);
    sub_10010FC20(&qword_101191390, &unk_100EC89C0);
    swift_allocObject();
    v46 = sub_1003A13B8(v45);
    v47 = v46[6];
    v48 = *(*v47 + 96);
    swift_beginAccess();
    sub_10047AAB4(v47 + v48, v11, _s9PlaylistsVMa);
    *(v11 + 2) = 4;
    v11[24] = 0;
    sub_1003777F4(v11);
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = v46[4];
    v51 = v46[5];
    v46[4] = sub_10047B3E0;
    v46[5] = v49;

    sub_100020438(v50, v51);

    *(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_recentsResponseController) = v46;

    v13 = v63;
  }

  sub_10047AB30(v13, type metadata accessor for PlaylistPicker.Mode);
  v52 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_responseController;

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);

  v53 = *(v1 + v52);
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = *(v53 + 32);
  v56 = *(v53 + 40);
  *(v53 + 32) = sub_10047B3D8;
  *(v53 + 40) = v54;

  sub_100020438(v55, v56);

  return result;
}

void sub_10046E870(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  __chkstk_darwin();
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101182900, &qword_100EBE240);
  __chkstk_darwin();
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v26 - v5;
  v6 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - v8;
  sub_10010FC20(&unk_10118CDC0, &unk_100EC89D0);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v26 - v12;
  RequestResponse.Revision.content.getter(&v26 - v12);
  v14 = sub_10010FC20(&unk_10118CDD0, &unk_100EC89E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v13, 1, v14);
  v31 = v7;
  if (v16 == 1)
  {
    sub_1000095E8(v13, &unk_10118CDC0, &unk_100EC89D0);
    v17 = v6;
  }

  else
  {
    v27 = *(v7 + 16);
    v28 = a1;
    v27(v9, v13, v6);
    sub_1000095E8(v13, &unk_10118CDD0, &unk_100EC89E0);
    v18 = MusicLibrarySectionedResponse.totalItemCount.getter();
    (*(v7 + 8))(v9, v6);
    v17 = v6;
    if (v18 > 3)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v20 = Strong;
      RequestResponse.Revision.content.getter(v11);
      if (v15(v11, 1, v14) == 1)
      {
        sub_1000095E8(v11, &unk_10118CDC0, &unk_100EC89D0);
        v21 = 1;
        v22 = v29;
      }

      else
      {
        v22 = v29;
        v27(v29, v11, v17);
        sub_1000095E8(v11, &unk_10118CDD0, &unk_100EC89E0);
        v21 = 0;
      }

      (*(v31 + 56))(v22, v21, 1, v17);
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
    return;
  }

  v20 = v23;
  v22 = v30;
  (*(v31 + 56))(v30, 1, 1, v17);
LABEL_11:
  v24 = v20 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
  swift_beginAccess();
  v25 = v32;
  sub_10047AAB4(v24, v32, type metadata accessor for PlaylistPicker.ViewController.Playlists);
  sub_10006B010(v22, v25, &unk_101182900, &qword_100EBE240);
  sub_10046F354(v25);
}

uint64_t sub_10046ECDC(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = &v22[-v3];
  v5 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  __chkstk_darwin();
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_10118CDC0, &unk_100EC89D0);
  __chkstk_darwin();
  v9 = &v22[-v8];
  sub_10010FC20(&unk_101182900, &qword_100EBE240);
  __chkstk_darwin();
  v11 = &v22[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    RequestResponse.Revision.content.getter(v9);
    v14 = sub_10010FC20(&unk_10118CDD0, &unk_100EC89E0);
    if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
    {
      sub_1000095E8(v9, &unk_10118CDC0, &unk_100EC89D0);
      v15 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
      (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    }

    else
    {
      v16 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
      v17 = *(v16 - 8);
      (*(v17 + 16))(v11, v9, v16);
      sub_1000095E8(v9, &unk_10118CDD0, &unk_100EC89E0);
      (*(v17 + 56))(v11, 0, 1, v16);
    }

    v18 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
    swift_beginAccess();
    sub_10047AAB4(v13 + v18, v7, type metadata accessor for PlaylistPicker.ViewController.Playlists);
    sub_10006B010(v11, &v7[*(v5 + 20)], &unk_101182900, &qword_100EBE240);
    sub_10046F354(v7);
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a2;

  sub_10035EDD0(0, 0, v4, &unk_100ECE460, v20);

  return sub_1000095E8(v4, &unk_101181520, &qword_100EBCC60);
}

uint64_t sub_10046F104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10046F124, 0, 0);
}

uint64_t sub_10046F124()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_10046F218;

    return sub_1004720D0();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10046F218()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_10046F32C, 0, 0);
}

uint64_t sub_10046F354(uint64_t a1)
{
  v2 = v1;
  v123 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v5 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v110 - v6;
  __chkstk_darwin();
  v122 = &v110 - v8;
  __chkstk_darwin();
  v124 = &v110 - v9;
  v10 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v126 = &v110 - v12;
  v136 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  v140 = *(v136 - 8);
  __chkstk_darwin();
  v121 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v110 - v14;
  __chkstk_darwin();
  v128 = &v110 - v15;
  __chkstk_darwin();
  v17 = &v110 - v16;
  __chkstk_darwin();
  v120 = &v110 - v18;
  __chkstk_darwin();
  v131 = &v110 - v19;
  v125 = v20;
  __chkstk_darwin();
  v127 = &v110 - v21;
  sub_10010FC20(&unk_101182900, &qword_100EBE240);
  __chkstk_darwin();
  v119 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v110 - v23;
  __chkstk_darwin();
  v118 = &v110 - v24;
  __chkstk_darwin();
  v133 = &v110 - v25;
  v26 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v28 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = &v110 - v29;
  if (v2[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_allowsAnimatedChanges] != 1)
  {
    sub_10047AAB4(a1, v17, type metadata accessor for PlaylistPicker.ViewController.Playlists);
    v105 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
    swift_beginAccess();
    sub_10047AE7C(v17, &v2[v105]);
    swift_endAccess();
    v106 = sub_100477A1C();
    [v106 reloadData];

    return sub_10047AB30(a1, type metadata accessor for PlaylistPicker.ViewController.Playlists);
  }

  v114 = v17;
  v116 = v7;
  v115 = v5;
  v143 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context;
  sub_10047AAB4(&v2[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context], &v110 - v29, type metadata accessor for PlaylistPicker.Mode);
  v139 = v26;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10047AB30(v30, type metadata accessor for PlaylistPicker.Mode);
  v32 = &unk_10109B450;
  if (EnumCaseMultiPayload != 1)
  {
    v32 = &unk_10109B428;
  }

  v33 = *v32;

  v142 = v33;
  if (!v33)
  {
    v35 = _swiftEmptyArrayStorage;
    v129 = _swiftEmptyArrayStorage;
LABEL_62:
    v107 = sub_100477A1C();
    v108 = swift_allocObject();
    *(v108 + 16) = v35;
    UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v129, 1, sub_10047AF60, v108, 0, 0);

    return sub_10047AB30(a1, type metadata accessor for PlaylistPicker.ViewController.Playlists);
  }

  v130 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
  swift_beginAccess();
  v34 = 0;
  v141 = (v11 + 48);
  v135 = (v11 + 8);
  v117 = (v11 + 16);
  v35 = _swiftEmptyArrayStorage;
  v137 = v125 + 7;
  v138 = a1;
  v129 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_10047AAB4(&v2[v143], v28, type metadata accessor for PlaylistPicker.Mode);
    v38 = swift_getEnumCaseMultiPayload();
    result = sub_10047AB30(v28, type metadata accessor for PlaylistPicker.Mode);
    v40 = &unk_10109B4A0;
    if (v38 != 1)
    {
      v40 = &unk_10109B478;
    }

    if (v34 >= *v40)
    {
      break;
    }

    v41 = &unk_10109B488;
    if (v38 == 1)
    {
      v41 = &unk_10109B4B0;
    }

    v42 = *(v34 + v41);

    if (!v42)
    {
      goto LABEL_8;
    }

    if (v42 == 1)
    {
      v43 = v133;
      sub_1000089F8(a1, v133, &unk_101182900, &qword_100EBE240);
      v44 = *v141;
      if ((*v141)(v43, 1, v10) == 1)
      {
        sub_1000095E8(v43, &unk_101182900, &qword_100EBE240);
      }

      else
      {
        v48 = MusicLibrarySectionedResponse.isEmpty.getter(v10);
        v49 = *v135;
        (*v135)(v43, v10);
        if (!v48)
        {
          v50 = v127;
          sub_10047AAB4(&v2[v130], v127, type metadata accessor for PlaylistPicker.ViewController.Playlists);
          if (v44(v50, 1, v10))
          {
            sub_10047AB30(v50, type metadata accessor for PlaylistPicker.ViewController.Playlists);
          }

          else
          {
            v55 = *v117;
            v56 = v126;
            (*v117)(v126, v50, v10);
            sub_10047AB30(v50, type metadata accessor for PlaylistPicker.ViewController.Playlists);
            v57 = MusicLibrarySectionedResponse.isEmpty.getter(v10);
            v49(v56, v10);
            if (!v57)
            {
              v113 = sub_100477A1C();
              v74 = v120;
              sub_10047AAB4(&v2[v130], v120, type metadata accessor for PlaylistPicker.ViewController.Playlists);
              if (v44(v74, 1, v10))
              {
                sub_10047AB30(v74, type metadata accessor for PlaylistPicker.ViewController.Playlists);
                v112 = 0;
              }

              else
              {
                v77 = v126;
                (v55)(v126, v74, v10);
                sub_10047AB30(v74, type metadata accessor for PlaylistPicker.ViewController.Playlists);
                v112 = MusicLibrarySectionedResponse.sections.getter();
                v49(v77, v10);
              }

              a1 = v138;
              v78 = v118;
              sub_1000089F8(v138, v118, &unk_101182900, &qword_100EBE240);
              if (v44(v78, 1, v10) == 1)
              {
                sub_1000095E8(v78, &unk_101182900, &qword_100EBE240);
                v111 = 0;
              }

              else
              {
                v111 = MusicLibrarySectionedResponse.sections.getter();
                v49(v78, v10);
              }

              v79 = v114;
              v80 = swift_allocObject();
              v110 = v80;
              swift_unknownObjectWeakInit();
              sub_10047AAB4(a1, v79, type metadata accessor for PlaylistPicker.ViewController.Playlists);
              v81 = (*(v140 + 80) + 24) & ~*(v140 + 80);
              v82 = swift_allocObject();
              *(v82 + 16) = v80;
              sub_10047AEE0(v79, v82 + v81, type metadata accessor for PlaylistPicker.ViewController.Playlists);

              v83 = sub_10010FC20(&unk_10118CEC0, &unk_100EE0420);
              v84 = sub_1003C1614();
              v109 = v83;
              v85 = v113;
              UICollectionView.calculateAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v112, v111, v34, v34, 0, sub_10047B348, v82, sub_10047B904, v124, 0, sub_100470770, 0, v109, v84);

              sub_10047AAB4(v124, v122, type metadata accessor for AIDiffingUpdate);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v129 = sub_10049A5D0(0, v129[2] + 1, 1, v129);
              }

              v87 = v129[2];
              v86 = v129[3];
              if (v87 >= v86 >> 1)
              {
                v129 = sub_10049A5D0((v86 > 1), v87 + 1, 1, v129);
              }

              sub_10047AB30(v124, type metadata accessor for AIDiffingUpdate);
              v88 = v129;
              v129[2] = v87 + 1;
              v89 = v88 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v87;
              v90 = &v145;
LABEL_59:
              sub_10047AEE0(*(v90 - 32), v89, type metadata accessor for AIDiffingUpdate);
              goto LABEL_8;
            }
          }
        }
      }

      a1 = v138;
      v58 = v131;
      sub_10047AAB4(v138, v131, type metadata accessor for PlaylistPicker.ViewController.Playlists);
      v59 = (*(v140 + 80) + 24) & ~*(v140 + 80);
      v60 = (v137 + v59) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      *(v61 + 16) = v2;
      sub_10047AEE0(v58, v61 + v59, type metadata accessor for PlaylistPicker.ViewController.Playlists);
      *(v61 + v60) = v34;
      v62 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_10006429C(0, v35[2] + 1, 1, v35);
      }

      v64 = v35[2];
      v63 = v35[3];
      if (v64 >= v63 >> 1)
      {
        v35 = sub_10006429C((v63 > 1), v64 + 1, 1, v35);
      }

      v35[2] = v64 + 1;
      v36 = &v35[2 * v64];
      v37 = sub_10047B104;
    }

    else
    {
      v45 = *(v136 + 20);
      v46 = v134;
      sub_1000089F8(a1 + v45, v134, &unk_101182900, &qword_100EBE240);
      v47 = *v141;
      if ((*v141)(v46, 1, v10) == 1)
      {
        sub_1000095E8(v46, &unk_101182900, &qword_100EBE240);
      }

      else
      {
        v51 = MusicLibrarySectionedResponse.isEmpty.getter(v10);
        v52 = *v135;
        (*v135)(v46, v10);
        if (!v51)
        {
          v53 = v128;
          sub_10047AAB4(&v2[v130], v128, type metadata accessor for PlaylistPicker.ViewController.Playlists);
          v54 = *(v136 + 20);
          if (v47(v53 + v54, 1, v10))
          {
            sub_10047AB30(v53, type metadata accessor for PlaylistPicker.ViewController.Playlists);
          }

          else
          {
            v65 = v53 + v54;
            v66 = v126;
            v113 = *v117;
            (v113)(v126, v65, v10);
            sub_10047AB30(v53, type metadata accessor for PlaylistPicker.ViewController.Playlists);
            v67 = MusicLibrarySectionedResponse.isEmpty.getter(v10);
            v52(v66, v10);
            if (!v67)
            {
              v112 = sub_100477A1C();
              v75 = v121;
              sub_10047AAB4(&v2[v130], v121, type metadata accessor for PlaylistPicker.ViewController.Playlists);
              v76 = *(v136 + 20);
              if (v47(v75 + v76, 1, v10))
              {
                sub_10047AB30(v75, type metadata accessor for PlaylistPicker.ViewController.Playlists);
                v113 = 0;
              }

              else
              {
                v91 = v75 + v76;
                v92 = v126;
                (v113)(v126, v91, v10);
                sub_10047AB30(v75, type metadata accessor for PlaylistPicker.ViewController.Playlists);
                v113 = MusicLibrarySectionedResponse.sections.getter();
                v52(v92, v10);
              }

              v93 = v119;
              sub_1000089F8(v138 + v45, v119, &unk_101182900, &qword_100EBE240);
              if (v47(v93, 1, v10) == 1)
              {
                sub_1000095E8(v93, &unk_101182900, &qword_100EBE240);
                v111 = 0;
              }

              else
              {
                v111 = MusicLibrarySectionedResponse.sections.getter();
                v52(v93, v10);
              }

              v94 = swift_allocObject();
              v110 = v94;
              swift_unknownObjectWeakInit();
              a1 = v138;
              v95 = v114;
              sub_10047AAB4(v138, v114, type metadata accessor for PlaylistPicker.ViewController.Playlists);
              v96 = (*(v140 + 80) + 24) & ~*(v140 + 80);
              v97 = swift_allocObject();
              *(v97 + 16) = v94;
              sub_10047AEE0(v95, v97 + v96, type metadata accessor for PlaylistPicker.ViewController.Playlists);

              v98 = sub_10010FC20(&unk_10118CEC0, &unk_100EE0420);
              v99 = sub_1003C1614();
              v100 = v97;
              v101 = v112;
              UICollectionView.calculateAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v113, v111, v34, 0, 1, sub_10047AF68, v100, sub_10047B904, v116, 0, sub_100470770, 0, v98, v99);

              sub_10047AAB4(v116, v115, type metadata accessor for AIDiffingUpdate);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v129 = sub_10049A5D0(0, v129[2] + 1, 1, v129);
              }

              v103 = v129[2];
              v102 = v129[3];
              if (v103 >= v102 >> 1)
              {
                v129 = sub_10049A5D0((v102 > 1), v103 + 1, 1, v129);
              }

              sub_10047AB30(v116, type metadata accessor for AIDiffingUpdate);
              v104 = v129;
              v129[2] = v103 + 1;
              v89 = v104 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v103;
              v90 = &v144;
              goto LABEL_59;
            }
          }
        }
      }

      a1 = v138;
      v68 = v132;
      sub_10047AAB4(v138, v132, type metadata accessor for PlaylistPicker.ViewController.Playlists);
      v69 = (*(v140 + 80) + 24) & ~*(v140 + 80);
      v70 = (v137 + v69) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      *(v61 + 16) = v2;
      sub_10047AEE0(v68, v61 + v69, type metadata accessor for PlaylistPicker.ViewController.Playlists);
      *(v61 + v70) = v34;
      v71 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_10006429C(0, v35[2] + 1, 1, v35);
      }

      v73 = v35[2];
      v72 = v35[3];
      if (v73 >= v72 >> 1)
      {
        v35 = sub_10006429C((v72 > 1), v73 + 1, 1, v35);
      }

      v35[2] = v73 + 1;
      v36 = &v35[2 * v73];
      v37 = sub_10047AF48;
    }

    v36[4] = v37;
    v36[5] = v61;
LABEL_8:
    v34 = (v34 + 1);
    if (v142 == v34)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100470770(uint64_t a1, uint64_t a2)
{
  v67 = type metadata accessor for Artwork();
  v65 = *(v67 - 8);
  __chkstk_darwin();
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10010FC20(&unk_101191420, &unk_100EC9120);
  __chkstk_darwin();
  v66 = &v59 - v5;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v60 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v59 - v7;
  __chkstk_darwin();
  v64 = &v59 - v8;
  v9 = type metadata accessor for Playlist.Folder();
  v10 = *(v9 - 8);
  v69 = v9;
  v70 = v10;
  __chkstk_darwin();
  v68 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v59 - v12;
  v13 = type metadata accessor for Playlist.Folder.Item();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101191430, &unk_100EC9130);
  v17 = __chkstk_darwin();
  v19 = &v59 - v18;
  v21 = *(v20 + 56);
  v22 = *(v14 + 16);
  v22(&v59 - v18, a1, v13, v17);
  (v22)(&v19[v21], a2, v13);
  v23 = *(v14 + 88);
  v24 = v23(v19, v13);
  v25 = v24;
  if (v24 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (v22)(v16, v19, v13);
    v26 = *(v14 + 96);
    v26(v16, v13);
    if (v23(&v19[v21], v13) == v25)
    {
      v26(&v19[v21], v13);
      v27 = v69;
      v28 = *(v70 + 32);
      v29 = v62;
      v28(v62, v16, v69);
      v28(v68, &v19[v21], v27);
      v30 = Playlist.Folder.name.getter();
      v32 = v31;
      if (v30 == Playlist.Folder.name.getter() && v32 == v33)
      {

        v34 = v66;
      }

      else
      {
        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v34 = v66;
        if ((v37 & 1) == 0)
        {
          v51 = *(v70 + 8);
          v51(v68, v27);
          v51(v29, v27);
          goto LABEL_20;
        }
      }

      v38 = v29;
      v39 = v64;
      Playlist.Folder.artwork.getter();
      v40 = v63;
      Playlist.Folder.artwork.getter();
      v41 = *(v61 + 48);
      sub_1000089F8(v39, v34, &unk_101188920, &qword_100EBCC50);
      v61 = v41;
      sub_1000089F8(v40, v34 + v41, &unk_101188920, &qword_100EBCC50);
      v42 = *(v65 + 48);
      if (v42(v34, 1, v67) == 1)
      {
        sub_1000095E8(v40, &unk_101188920, &qword_100EBCC50);
        sub_1000095E8(v39, &unk_101188920, &qword_100EBCC50);
        v43 = v38;
        v44 = v69;
        v45 = *(v70 + 8);
        v45(v68, v69);
        v45(v43, v44);
        if (v42(v34 + v61, 1, v67) == 1)
        {
          sub_1000095E8(v34, &unk_101188920, &qword_100EBCC50);
          v36 = 1;
LABEL_22:
          (*(v14 + 8))(v19, v13);
          return v36 & 1;
        }
      }

      else
      {
        v46 = v38;
        v47 = v60;
        sub_1000089F8(v34, v60, &unk_101188920, &qword_100EBCC50);
        v48 = v61;
        if (v42(v34 + v61, 1, v67) != 1)
        {
          v52 = v65;
          v53 = v34 + v48;
          v54 = v59;
          v55 = v67;
          (*(v65 + 32))(v59, v53, v67);
          sub_10047A9B8(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
          v36 = dispatch thunk of static Equatable.== infix(_:_:)();
          v65 = *(v52 + 8);
          (v65)(v54, v55);
          sub_1000095E8(v63, &unk_101188920, &qword_100EBCC50);
          sub_1000095E8(v64, &unk_101188920, &qword_100EBCC50);
          v56 = v69;
          v57 = *(v70 + 8);
          v57(v68, v69);
          v57(v46, v56);
          (v65)(v60, v55);
          sub_1000095E8(v66, &unk_101188920, &qword_100EBCC50);
          goto LABEL_22;
        }

        sub_1000095E8(v63, &unk_101188920, &qword_100EBCC50);
        sub_1000095E8(v64, &unk_101188920, &qword_100EBCC50);
        v49 = v69;
        v50 = *(v70 + 8);
        v50(v68, v69);
        v50(v46, v49);
        (*(v65 + 8))(v47, v67);
      }

      sub_1000095E8(v34, &unk_101191420, &unk_100EC9120);
LABEL_20:
      v36 = 0;
      goto LABEL_22;
    }

    (*(v70 + 8))(v16, v69);
    goto LABEL_10;
  }

  if (v24 != enum case for Playlist.Folder.Item.playlist(_:) || v23(&v19[v21], v13) != v24)
  {
LABEL_10:
    sub_1000095E8(v19, &unk_101191430, &unk_100EC9130);
    goto LABEL_11;
  }

  v35 = *(v14 + 8);
  v35(&v19[v21], v13);
  v35(v19, v13);
LABEL_11:
  v36 = 0;
  return v36 & 1;
}

void sub_100471044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
  swift_beginAccess();
  sub_1002190E0(a2, a1 + v10, &unk_101182900, &qword_100EBE240);
  swift_endAccess();
  v11 = sub_100477A1C();
  sub_10010FC20(&unk_101191400, &qword_100ED5CE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100EBC6B0;
  *(v12 + 32) = a3;
  v16[1] = v12;
  sub_10047A9B8(&unk_10118A630, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  sub_10010FC20(&unk_101191410, &unk_100EC5EC0);
  sub_100020674(&unk_10118A640, &unk_101191410, &unk_100EC5EC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v13);
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  [v11 reloadSections:v15];
}

void sub_100471264(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
    v5 = Strong;
    swift_beginAccess();
    sub_1002190E0(a2, v5 + v4, &unk_101182900, &qword_100EBE240);
    swift_endAccess();
  }
}

void sub_100471300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  v11 = *(v10 + 20);
  v12 = a1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
  swift_beginAccess();
  sub_1002190E0(a2 + v11, v12 + *(v10 + 20), &unk_101182900, &qword_100EBE240);
  swift_endAccess();
  v13 = sub_100477A1C();
  sub_10010FC20(&unk_101191400, &qword_100ED5CE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBC6B0;
  *(v14 + 32) = a3;
  v18[1] = v14;
  sub_10047A9B8(&unk_10118A630, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  sub_10010FC20(&unk_101191410, &unk_100EC5EC0);
  sub_100020674(&unk_10118A640, &unk_101191410, &unk_100EC5EC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v15);
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  [v13 reloadSections:v17];
}

void sub_10047153C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
    v7 = *(v6 + 20);
    v8 = &v5[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists];
    swift_beginAccess();
    sub_1002190E0(a2 + v7, &v8[*(v6 + 20)], &unk_101182900, &qword_100EBE240);
    swift_endAccess();
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistContainsDuplicatesCache;
    v11 = v9;
    swift_beginAccess();
    v12 = *&v11[v10];

    v13 = v12 + 64;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 64);

    swift_beginAccess();
    v17 = 0;
    v29 = v12;
    while (v16)
    {
LABEL_13:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = (*(v12 + 48) + ((v17 << 10) | (16 * v19)));
      v22 = *v20;
      v21 = v20[1];
      v23 = swift_unknownObjectWeakLoadStrong();
      if (v23)
      {
        v24 = v23;
        v25 = a1;

        v26 = sub_10047325C(v31);
        v28 = sub_1005761EC(v30, v22, v21);
        if (*(v27 + 8) != 2)
        {
          *(v27 + 8) = 1;
        }

        (v28)(v30, 0);
        (v26)(v31, 0);

        a1 = v25;
        v12 = v29;
      }
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= ((v14 + 63) >> 6))
      {

        return;
      }

      v16 = *(v13 + 8 * v18);
      ++v17;
      if (v16)
      {
        v17 = v18;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1004717AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Playlist.Folder.Item();
  sub_10047A9B8(&unk_1011913F0, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  sub_10047A9B8(&qword_10118D3E0, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

void sub_10047186C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 40;
    do
    {
      v3 = *(v2 - 8);

      v3(v4);

      v2 += 16;
      --v1;
    }

    while (v1);
  }
}

objc_class *sub_1004718C4()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v1 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v4 = String.init(localized:table:bundle:locale:comment:)();
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() systemImageNamed:v7];

    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v10.value = 0;
    v11 = v0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v10, 0, sub_10047AE74, v9).super.super.isa;

    v13 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v4, v6, v8, 0, isa, 1, 0, 0, 0, 0);
    v14 = *(v11 + v1);
    *(v11 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void *sub_100471B40(uint64_t a1)
{
  _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v5 = Strong;
    v6 = *(*(Strong + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_responseController) + 48);
    v7 = *(*v6 + 96);
    swift_beginAccess();
    sub_10047AAB4(v6 + v7, v2, _s9PlaylistsVMa);
    v8 = swift_allocObject();
    swift_weakInit();

    v9.super.super.isa = sub_100211D00(sub_1003BC69C, v8).super.super.isa;

    sub_10047AB30(v2, _s9PlaylistsVMa);

    isa = v9.super.super.isa;
    v12 = _swiftEmptyArrayStorage;
    if (v9.super.super.isa)
    {
      v10 = v9.super.super.isa;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v12;
    }

    sub_1000095E8(&isa, &qword_10118CE10, &qword_100ED1950);
  }

  return v4;
}

objc_class *sub_100471D54()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v1 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton;
  v2 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton);
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v4 = String.init(localized:table:bundle:locale:comment:)();
    v6 = v5;
    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v0;
    v13.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v8.value._countAndFlagsBits = v4;
    v8.value._object = v6;
    v13.value.super.isa = 0;
    v14.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v8, v13, v14, v15).super.super.isa;
    [(objc_class *)isa setEnabled:0];
    [(objc_class *)isa setStyle:2];
    v10 = *(v0 + v1);
    *(v7 + v1) = isa;
    v3 = isa;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_100471F88(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v3 = &v9[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *&Strong[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
    if (v5)
    {
      v6 = *&Strong[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler + 8];
      v7 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
      v8 = Strong;
      swift_beginAccess();
      sub_1000089F8(v8 + v7, v3, &unk_10118F670, &unk_100EC89B0);

      v5(v8, v3);
      sub_100020438(v5, v6);

      sub_1000095E8(v3, &unk_10118F670, &unk_100EC89B0);
    }

    else
    {
    }
  }
}

uint64_t sub_1004720D0()
{
  v1[8] = v0;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v2 = type metadata accessor for Playlist.Folder();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for PlaylistPicker.Mode(0);
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for Playlist.Folder.Item();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[21] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[22] = v5;
  v1[23] = v4;

  return _swift_task_switch(sub_1004722AC, v5, v4);
}

uint64_t sub_1004722AC(__n128 a1)
{
  sub_10047AAB4(v1[8] + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v1[16], type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = v1[16];

    sub_10047AB30(v20, type metadata accessor for PlaylistPicker.Mode);
LABEL_6:

    v21 = v1[1];

    return v21();
  }

  v2 = v1[19];
  v3 = v1[20];
  v4 = v1[17];
  v5 = v1[18];
  (*(v5 + 32))(v3, v1[16], v4);
  (*(v5 + 16))(v2, v3, v4);
  v6 = (*(v5 + 88))(v2, v4);
  if (v6 != enum case for Playlist.Folder.Item.folder(_:))
  {
    if (v6 == enum case for Playlist.Folder.Item.playlist(_:))
    {
      v23 = v1[8];
      v24 = v1[9];
      v25 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
      swift_beginAccess();
      sub_1000089F8(v23 + v25, v24, &unk_10118F670, &unk_100EC89B0);
      v18 = swift_task_alloc();
      v1[26] = v18;
      *v18 = v1;
      v19 = sub_100472CC4;
      goto LABEL_11;
    }

    v30 = v1[18];
    v29 = v1[19];
    v31 = v1[17];

    (*(v30 + 8))(v29, v31);
    v32 = sub_100471D54();
    LODWORD(v31) = [(objc_class *)v32 isEnabled];

    if (v31)
    {
      [*(v1[8] + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton) setEnabled:0];
    }

    v33 = v1[20];
    v34 = v1[17];
    v35 = v1[18];
    v36 = v1[8];
    v37 = *(v36 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell);
    *(v36 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell) = 0;
    sub_100472F78(v37);
    (*(v35 + 8))(v33, v34);
    goto LABEL_6;
  }

  v7 = v1[19];
  v8 = v1[14];
  v9 = v1[11];
  v10 = v1[12];
  v11 = v1[10];
  v12 = v1[8];
  (*(v1[18] + 96))(v7, v1[17]);
  v13 = *(v10 + 32);
  v13(v8, v7, v9);
  v14 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
  swift_beginAccess();
  sub_1000089F8(v12 + v14, v11, &unk_10118F670, &unk_100EC89B0);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v15 = v1[11];
    v16 = v1[12];
    v17 = v1[9];
    sub_1000095E8(v1[10], &unk_10118F670, &unk_100EC89B0);
    (*(v16 + 56))(v17, 1, 1, v15);
    v18 = swift_task_alloc();
    v1[25] = v18;
    *v18 = v1;
    v19 = sub_100472A10;
LABEL_11:
    v18[1] = v19;
    v26 = v1[9];

    return sub_100354500(v26);
  }

  v13(v1[13], v1[10], v1[11]);
  v27 = swift_task_alloc();
  v1[24] = v27;
  *v27 = v1;
  v27[1] = sub_100472764;
  v28 = v1[13];

  return sub_100352848(v28);
}

uint64_t sub_100472764(char a1)
{
  v2 = *v1;
  *(*v1 + 216) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return _swift_task_switch(sub_10047288C, v4, v3);
}

uint64_t sub_10047288C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);

  v6 = *(v5 + 8);
  v6(v2, v4);
  v6(v3, v4);
  v7 = (0x10u >> v1) & 1;
  v8 = sub_100471D54();
  LODWORD(v4) = [(objc_class *)v8 isEnabled];

  if (v4 != v7)
  {
    [*(*(v0 + 64) + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton) setEnabled:v7];
  }

  v9 = 5u >> v1;
  v10 = *(v0 + 160);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v13 = *(v0 + 64);
  v14 = *(v13 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell);
  *(v13 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell) = v9 & 1;
  sub_100472F78(v14);
  (*(v12 + 8))(v10, v11);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100472A10(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  *(*v1 + 217) = a1;

  sub_1000095E8(v3, &unk_10118F670, &unk_100EC89B0);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);

  return _swift_task_switch(sub_100472B6C, v5, v4);
}

uint64_t sub_100472B6C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 217);
  v5 = sub_100471D54();
  LODWORD(v3) = [(objc_class *)v5 isEnabled];

  if (v4 != v3)
  {
    [*(*(v0 + 64) + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton) setEnabled:v4];
  }

  v6 = *(v0 + 160);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 64);
  v10 = *(v9 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell);
  *(v9 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell) = 0;
  sub_100472F78(v10);
  (*(v8 + 8))(v6, v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100472CC4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  *(*v1 + 218) = a1;

  sub_1000095E8(v3, &unk_10118F670, &unk_100EC89B0);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);

  return _swift_task_switch(sub_100472E20, v5, v4);
}

uint64_t sub_100472E20()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 218);
  v5 = sub_100471D54();
  LODWORD(v2) = [(objc_class *)v5 isEnabled];

  if (v4 != v2)
  {
    [*(*(v0 + 64) + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton) setEnabled:v4];
  }

  v6 = *(v0 + 160);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 64);
  v10 = *(v9 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell);
  *(v9 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell) = 0;
  sub_100472F78(v10);
  (*(v8 + 8))(v6, v7);

  v11 = *(v0 + 8);

  return v11();
}

void sub_100472F78(char a1)
{
  v2 = a1 & 1;
  type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell) != v2)
  {
    sub_10047AAB4(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v4, type metadata accessor for PlaylistPicker.Mode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_10047AB30(v4, type metadata accessor for PlaylistPicker.Mode);
    if (EnumCaseMultiPayload == 1)
    {
      v6 = &off_10109B4E0;
    }

    else
    {
      v6 = &off_10109B4B8;
    }

    v7 = &unk_10109B4F0;
    if (EnumCaseMultiPayload != 1)
    {
      v7 = &unk_10109B4C8;
    }

    v8 = *v7;
    if (*v7)
    {
      v15[1] = v6;
      v9 = 0;
      if (EnumCaseMultiPayload == 1)
      {
        v10 = &unk_10109B500;
      }

      else
      {
        v10 = &unk_10109B4D8;
      }

      while ((v8 & ~(v8 >> 63)) != v9)
      {
        v11 = v10[v9];
        if (v11 != 1 && v11 != 2)
        {

LABEL_19:

          v13 = sub_100477A1C();
          sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
          type metadata accessor for IndexPath();
          *(swift_allocObject() + 16) = xmmword_100EBC6B0;
          IndexPath.init(item:section:)();
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v13 reconfigureItemsAtIndexPaths:isa];

          return;
        }

        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_19;
        }

        if (v8 == ++v9)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
    }
  }
}

void sub_1004732C0(uint64_t a1)
{
  v24 = a1;
  type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v23 - v4;
  __chkstk_darwin();
  v7 = &v23 - v6;
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context;
  sub_10047AAB4(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, &v23 - v8, type metadata accessor for PlaylistPicker.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10047AB30(v9, type metadata accessor for PlaylistPicker.Mode);
  v12 = &unk_10109B1F8;
  if (EnumCaseMultiPayload != 1)
  {
    v12 = &unk_10109B1D0;
  }

  v13 = *v12;

  v14 = v13 - 1;
  v15 = v24;
  if (v14 < v24)
  {
    sub_10047AAB4(v1 + v10, v7, type metadata accessor for PlaylistPicker.Mode);
    v16 = swift_getEnumCaseMultiPayload();
    sub_10047AB30(v7, type metadata accessor for PlaylistPicker.Mode);
    sub_10047AAB4(v1 + v10, v5, type metadata accessor for PlaylistPicker.Mode);
    v17 = swift_getEnumCaseMultiPayload();
    sub_10047AB30(v5, type metadata accessor for PlaylistPicker.Mode);
    v18 = &unk_10109B298;
    if (v17 != 1)
    {
      v18 = &unk_10109B270;
    }

    v19 = *v18;

    if (v19 - 1 >= 0)
    {
      v20 = &unk_10109B248;
      if (v16 != 1)
      {
        v20 = &unk_10109B220;
      }

      if (v19 - 1 < *v20)
      {
LABEL_15:

        return;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_10047AAB4(v1 + v10, v3, type metadata accessor for PlaylistPicker.Mode);
  v21 = swift_getEnumCaseMultiPayload();
  sub_10047AB30(v3, type metadata accessor for PlaylistPicker.Mode);
  if (v15 < 0)
  {
    goto LABEL_17;
  }

  v22 = &unk_10109B2E8;
  if (v21 != 1)
  {
    v22 = &unk_10109B2C0;
  }

  if (*v22 > v15)
  {
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
}

unint64_t sub_10047361C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = sub_10010FC20(&qword_1011828F0, &unk_100ED1640);
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin();
  v66 = &v63 - v4;
  v5 = sub_10010FC20(&unk_10118CEC0, &unk_100EE0420);
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin();
  v63 = &v63 - v6;
  v7 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin();
  v69 = &v63 - v8;
  v9 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  __chkstk_darwin();
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v63 - v12;
  v14 = type metadata accessor for IndexPath();
  v71 = *(v14 - 8);
  v72 = v14;
  __chkstk_darwin();
  v70 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v63 - v16;
  type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v63 - v20;
  v22 = IndexPath.section.getter();
  sub_1004732C0(v22);
  if (v23)
  {
    if (v23 == 1)
    {
      sub_10047AAB4(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v21, type metadata accessor for PlaylistPicker.Mode);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = &off_10109B3A0;
      }

      else
      {
        v24 = &off_10109B378;
      }

      sub_10047AB30(v21, type metadata accessor for PlaylistPicker.Mode);
      v25 = sub_1003FCC44(1, v24);
      v27 = v26;

      if ((v27 & 1) != 0 || IndexPath.section.getter() < v25)
      {
        goto LABEL_23;
      }

      IndexPath.item.getter();
      result = IndexPath.section.getter();
      if (!__OFSUB__(result, v25))
      {
        IndexPath.init(item:section:)();
        v29 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
        swift_beginAccess();
        sub_10047AAB4(v2 + v29, v13, type metadata accessor for PlaylistPicker.ViewController.Playlists);
        v31 = v73;
        v30 = v74;
        if ((*(v73 + 48))(v13, 1, v74))
        {
          (*(v71 + 8))(v17, v72);
          v32 = v13;
LABEL_22:
          sub_10047AB30(v32, type metadata accessor for PlaylistPicker.ViewController.Playlists);
LABEL_23:
          v46 = type metadata accessor for Playlist.Folder.Item();
          return (*(*(v46 - 8) + 56))(v75, 1, 1, v46);
        }

        v47 = v69;
        (*(v31 + 16))(v69, v13, v30);
        sub_10047AB30(v13, type metadata accessor for PlaylistPicker.ViewController.Playlists);
        v48 = MusicLibrarySectionedResponse.sections.getter();
        (*(v31 + 8))(v47, v30);
        result = IndexPath.section.getter();
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *(v48 + 16))
          {
            v49 = v63;
            v50 = v64;
            v51 = v65;
            (*(v64 + 16))(v63, v48 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * result, v65);

            v52 = v66;
            MusicLibrarySection.items.getter();
            (*(v50 + 8))(v49, v51);
            IndexPath.item.getter();
            v53 = v75;
            v54 = v68;
            MusicItemCollection.subscript.getter();
            (*(v67 + 8))(v52, v54);
            (*(v71 + 8))(v17, v72);
LABEL_31:
            v62 = type metadata accessor for Playlist.Folder.Item();
            return (*(*(v62 - 8) + 56))(v53, 0, 1, v62);
          }

          goto LABEL_36;
        }

        goto LABEL_34;
      }

      __break(1u);
    }

    else
    {
      sub_10047AAB4(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v19, type metadata accessor for PlaylistPicker.Mode);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v37 = &off_10109B3F0;
      }

      else
      {
        v37 = &off_10109B3C8;
      }

      sub_10047AB30(v19, type metadata accessor for PlaylistPicker.Mode);
      v38 = sub_1003FCC44(2, v37);
      v40 = v39;

      if ((v40 & 1) != 0 || IndexPath.section.getter() < v38)
      {
        goto LABEL_23;
      }

      IndexPath.item.getter();
      result = IndexPath.section.getter();
      if (!__OFSUB__(result, v38))
      {
        v41 = v70;
        IndexPath.init(item:section:)();
        v42 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
        swift_beginAccess();
        sub_10047AAB4(v2 + v42, v11, type metadata accessor for PlaylistPicker.ViewController.Playlists);
        v43 = *(v9 + 20);
        v45 = v73;
        v44 = v74;
        if ((*(v73 + 48))(&v11[v43], 1, v74))
        {
          (*(v71 + 8))(v41, v72);
          v32 = v11;
          goto LABEL_22;
        }

        v55 = v69;
        (*(v45 + 16))(v69, &v11[v43], v44);
        sub_10047AB30(v11, type metadata accessor for PlaylistPicker.ViewController.Playlists);
        v56 = MusicLibrarySectionedResponse.sections.getter();
        (*(v45 + 8))(v55, v44);
        result = IndexPath.section.getter();
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *(v56 + 16))
          {
            v57 = v63;
            v58 = v64;
            v59 = v65;
            (*(v64 + 16))(v63, v56 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * result, v65);

            v60 = v66;
            MusicLibrarySection.items.getter();
            (*(v58 + 8))(v57, v59);
            IndexPath.item.getter();
            v53 = v75;
            v61 = v68;
            MusicItemCollection.subscript.getter();
            (*(v67 + 8))(v60, v61);
            (*(v71 + 8))(v41, v72);
            goto LABEL_31;
          }

LABEL_37:
          __break(1u);
          return result;
        }

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v33 = type metadata accessor for Playlist.Folder.Item();
  v34 = *(*(v33 - 8) + 56);
  v35 = v33;
  v36 = v75;

  return v34(v36, 1, 1, v35);
}

void sub_100473F98(uint64_t a1)
{
  v171 = a1;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v167 = v2;
  v168 = v3;
  __chkstk_darwin();
  v170 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v153 = &v119 - v5;
  v160 = type metadata accessor for Playlist();
  v6 = *(v160 - 8);
  __chkstk_darwin();
  v159 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist.Folder.Item();
  v121 = *(v8 - 8);
  __chkstk_darwin();
  v154 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v161 = &v119 - v10;
  __chkstk_darwin();
  v162 = &v119 - v11;
  v172 = sub_10010FC20(&unk_1011913B8, &qword_100ED1630);
  __chkstk_darwin();
  v169 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v119 - v13;
  v174 = sub_10010FC20(&qword_1011828F0, &unk_100ED1640);
  v120 = *(v174 - 8);
  __chkstk_darwin();
  v145 = &v119 - v15;
  v142 = sub_10010FC20(&qword_1011913C8, &unk_100ED1650);
  __chkstk_darwin();
  v166 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v163 = &v119 - v17;
  sub_10010FC20(&unk_1011913D0, &qword_100ECE450);
  __chkstk_darwin();
  v141 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v144 = &v119 - v19;
  __chkstk_darwin();
  v130 = &v119 - v20;
  v143 = sub_10010FC20(&unk_10118CEC0, &unk_100EE0420);
  v146 = *(v143 - 8);
  __chkstk_darwin();
  v136 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v137 = &v119 - v22;
  sub_10010FC20(&unk_101182900, &qword_100EBE240);
  __chkstk_darwin();
  v124 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v119 - v24;
  v139 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v138 = *(v139 - 8);
  __chkstk_darwin();
  v122 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v119 - v27;
  v28 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v127 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v119 - v30;
  v128 = v1;
  v125 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context;
  sub_10047AAB4(v1 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, &v119 - v30, type metadata accessor for PlaylistPicker.Mode);
  v126 = v28;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10047AB30(v31, type metadata accessor for PlaylistPicker.Mode);
  v33 = &unk_10109B540;
  if (EnumCaseMultiPayload != 1)
  {
    v33 = &unk_10109B518;
  }

  v34 = *v33;
  v173 = v8;
  if (!v34)
  {
LABEL_12:

    v175 = _swiftEmptyArrayStorage;
    v40 = v139;
LABEL_42:
    v79 = v127;
    sub_10047AAB4(v128 + v125, v127, type metadata accessor for PlaylistPicker.Mode);
    v80 = swift_getEnumCaseMultiPayload();
    sub_10047AB30(v79, type metadata accessor for PlaylistPicker.Mode);
    v81 = &unk_10109B590;
    if (v80 != 1)
    {
      v81 = &unk_10109B568;
    }

    v82 = *v81;
    if (!*v81)
    {
LABEL_53:

      return;
    }

    v83 = 0;
    if (v80 == 1)
    {
      v84 = &unk_10109B5A0;
    }

    else
    {
      v84 = &unk_10109B578;
    }

    while (1)
    {
      if ((v82 & ~(v82 >> 63)) == v83)
      {
        goto LABEL_85;
      }

      v85 = v169;
      if (v83[v84])
      {
        if (v83[v84] != 2)
        {
          break;
        }
      }

      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v86)
      {
        v85 = v169;
        goto LABEL_56;
      }

      if (v82 == ++v83)
      {
        goto LABEL_53;
      }
    }

LABEL_56:

    v87 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
    v88 = v128;
    swift_beginAccess();
    v89 = v124;
    sub_1000089F8(v88 + v87, v124, &unk_101182900, &qword_100EBE240);
    v90 = v138;
    if ((*(v138 + 48))(v89, 1, v40) == 1)
    {
      sub_1000095E8(v89, &unk_101182900, &qword_100EBE240);
      return;
    }

    (*(v90 + 32))(v122, v89, v40);
    v91 = MusicLibrarySectionedResponse.sections.getter();
    v160 = *(v91 + 16);
    if (!v160)
    {
LABEL_81:

      (*(v90 + 8))(v122, v40);
      return;
    }

    v92 = 0;
    v159 = (v91 + ((*(v146 + 80) + 32) & ~*(v146 + 80)));
    v158 = (v146 + 16);
    v157 = (v146 + 8);
    v156 = (v120 + 32);
    v165 = (v121 + 16);
    v164 = (v121 + 32);
    v162 = (v168 + 32);
    v163 = v83;
    v155 = v91;
    while (1)
    {
      if (v92 >= *(v91 + 16))
      {
        goto LABEL_87;
      }

      v96 = v146;
      v97 = *(v146 + 72);
      v161 = v92;
      v98 = v136;
      v99 = v143;
      (*(v146 + 16))(v136, &v159[v97 * v92], v143);
      v100 = v141;
      MusicLibrarySection.items.getter();
      (*(v96 + 8))(v98, v99);
      v101 = v100;
      v102 = v144;
      sub_1000089F8(v101, v144, &unk_1011913D0, &qword_100ECE450);
      (*v156)(v145, v102, v174);
      sub_100020674(&unk_1011913E0, &qword_1011828F0, &unk_100ED1640, &protocol conformance descriptor for MusicItemCollection<A>);
      v103 = v166;
      dispatch thunk of Sequence.makeIterator()();
      v104 = *(sub_10010FC20(&unk_1011828E0, &qword_100EBE230) + 36);
      sub_100020674(&qword_10118C1D0, &qword_1011828F0, &unk_100ED1640, &protocol conformance descriptor for MusicItemCollection<A>);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v103[v104] != v176)
      {
        break;
      }

      v93 = 0;
LABEL_61:
      v92 = (v161 + 1);
      v94 = *(v142 + 36);
      sub_1000095E8(v141, &unk_1011913D0, &qword_100ECE450);
      v95 = v166;
      *&v166[v94] = v93;
      sub_1000095E8(v95, &qword_1011913C8, &unk_100ED1650);
      v90 = v138;
      v91 = v155;
      if (v92 == v160)
      {
        goto LABEL_81;
      }
    }

    v105 = 0;
    while (1)
    {
      v107 = dispatch thunk of Collection.subscript.read();
      v108 = v154;
      (*v165)(v154);
      v107(&v176, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v109 = *(v172 + 48);
      *v85 = v105;
      (*v164)(&v85[v109], v108, v8);
      v93 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_83;
      }

      v110 = Playlist.Folder.Item.id.getter();
      v112 = v111;
      if (v110 == Playlist.id.getter() && v112 == v113)
      {
        break;
      }

      v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v115)
      {
        goto LABEL_75;
      }

      v8 = v173;
LABEL_66:
      v85 = v169;
      sub_1000095E8(v169, &unk_1011913B8, &qword_100ED1630);
      v106 = v166;
      dispatch thunk of Collection.endIndex.getter();
      ++v105;
      if (*&v106[v104] == v176)
      {
        v40 = v139;
        goto LABEL_61;
      }
    }

LABEL_75:
    IndexPath.init(row:section:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v175 = sub_100499724(0, v175[2] + 1, 1, v175);
    }

    v117 = v175[2];
    v116 = v175[3];
    v8 = v173;
    if (v117 >= v116 >> 1)
    {
      v175 = sub_100499724((v116 > 1), v117 + 1, 1, v175);
    }

    v118 = v175;
    v175[2] = v117 + 1;
    (*(v168 + 32))(v118 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v117, v170, v167);
    goto LABEL_66;
  }

  v175 = v6;
  v164 = v14;
  v35 = 0;
  if (EnumCaseMultiPayload == 1)
  {
    v36 = &unk_10109B550;
  }

  else
  {
    v36 = &unk_10109B528;
  }

  v37 = v130;
  while (1)
  {
    if ((v34 & ~(v34 >> 63)) == v35)
    {
      goto LABEL_84;
    }

    v38 = v36[v35];
    v152 = v35;
    if (v38 > 1)
    {
      break;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      goto LABEL_14;
    }

    v35 = v152 + 1;
    if (v34 == v152 + 1)
    {
      goto LABEL_12;
    }
  }

LABEL_14:

  v41 = v128 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
  swift_beginAccess();
  v42 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  sub_1000089F8(v41 + *(v42 + 20), v25, &unk_101182900, &qword_100EBE240);
  v43 = v138;
  v40 = v139;
  v44 = (*(v138 + 48))(v25, 1, v139);
  v45 = v175;
  if (v44 == 1)
  {
    sub_1000095E8(v25, &unk_101182900, &qword_100EBE240);
    v175 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  (*(v43 + 32))(v123, v25, v40);
  v46 = MusicLibrarySectionedResponse.sections.getter();
  v47 = v174;
  v135 = *(v46 + 16);
  if (!v135)
  {

    v175 = _swiftEmptyArrayStorage;
LABEL_41:
    (*(v138 + 8))(v123, v40);
    goto LABEL_42;
  }

  v48 = 0;
  v134 = v46 + ((*(v146 + 80) + 32) & ~*(v146 + 80));
  v133 = v146 + 16;
  v132 = v146 + 8;
  v131 = (v120 + 32);
  v158 = (v121 + 16);
  v157 = (v121 + 32);
  v156 = (v121 + 88);
  LODWORD(v155) = enum case for Playlist.Folder.Item.playlist(_:);
  v151 = (v121 + 8);
  v150 = (v121 + 96);
  v149 = (v45 + 4);
  v148 = (v45 + 1);
  v175 = _swiftEmptyArrayStorage;
  v147 = v168 + 32;
  v49 = v163;
  v129 = v46;
LABEL_20:
  if (v48 >= *(v46 + 16))
  {
    goto LABEL_86;
  }

  v52 = v146;
  v53 = *(v146 + 72);
  v140 = v48;
  v54 = v137;
  v55 = v143;
  (*(v146 + 16))(v137, v134 + v53 * v48, v143);
  MusicLibrarySection.items.getter();
  (*(v52 + 8))(v54, v55);
  v56 = v144;
  sub_1000089F8(v37, v144, &unk_1011913D0, &qword_100ECE450);
  (*v131)(v145, v56, v47);
  sub_100020674(&unk_1011913E0, &qword_1011828F0, &unk_100ED1640, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v57 = *(sub_10010FC20(&unk_1011828E0, &qword_100EBE230) + 36);
  v165 = sub_100020674(&qword_10118C1D0, &qword_1011828F0, &unk_100ED1640, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v49 + v57) == v176)
  {
    v50 = 0;
    goto LABEL_19;
  }

  v58 = 0;
  v59 = v164;
  while (1)
  {
    v60 = v58;
    v61 = v57;
    v62 = dispatch thunk of Collection.subscript.read();
    v63 = *v158;
    v64 = v162;
    v65 = v173;
    (*v158)(v162);
    v62(&v176, 0);
    v57 = v61;
    dispatch thunk of Collection.formIndex(after:)();
    v66 = *(v172 + 48);
    *v59 = v60;
    (*v157)(&v59[v66], v64, v65);
    v50 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    v67 = v60;
    v68 = &v59[v66];
    v69 = v161;
    (v63)(v161, v68, v65);
    v70 = (*v156)(v69, v65);
    if (v70 == v155)
    {
      (*v150)(v69, v65);
      (*v149)(v159, v69, v160);
      v71 = Playlist.id.getter();
      v73 = v72;
      if (v71 == Playlist.id.getter() && v73 == v74)
      {

        v49 = v163;
        goto LABEL_31;
      }

      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v49 = v163;
      if (v75)
      {
LABEL_31:
        IndexPath.init(row:section:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v175 = sub_100499724(0, v175[2] + 1, 1, v175);
        }

        v77 = v175[2];
        v76 = v175[3];
        if (v77 >= v76 >> 1)
        {
          v175 = sub_100499724((v76 > 1), v77 + 1, 1, v175);
        }

        (*v148)(v159, v160);
        v78 = v175;
        v175[2] = v77 + 1;
        (*(v168 + 32))(v78 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v77, v153, v167);
      }

      else
      {
        (*v148)(v159, v160);
      }

      v47 = v174;
      goto LABEL_24;
    }

    (*v151)(v69, v65);
    v47 = v174;
    v49 = v163;
LABEL_24:
    v59 = v164;
    sub_1000095E8(v164, &unk_1011913B8, &qword_100ED1630);
    dispatch thunk of Collection.endIndex.getter();
    v58 = v67 + 1;
    if (*(v49 + v61) == v176)
    {
      v40 = v139;
      v8 = v173;
      v37 = v130;
LABEL_19:
      v48 = v140 + 1;
      v51 = *(v142 + 36);
      sub_1000095E8(v37, &unk_1011913D0, &qword_100ECE450);
      *(v49 + v51) = v50;
      sub_1000095E8(v49, &qword_1011913C8, &unk_100ED1650);
      v46 = v129;
      if (v48 == v135)
      {

        goto LABEL_41;
      }

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

uint64_t sub_1004756F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x73746E65636572;
  if (v2 != 1)
  {
    v4 = 0x6C79616C506C6C61;
    v3 = 0xEC00000073747369;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7824750;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73746E65636572;
  if (*a2 != 1)
  {
    v8 = 0x6C79616C506C6C61;
    v7 = 0xEC00000073747369;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7824750;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100475804()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1004758A8(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100475938(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004759D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10047A96C(*a1);
  *a2 = result;
  return result;
}

void sub_100475A08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73746E65636572;
  if (v2 != 1)
  {
    v5 = 0x6C79616C506C6C61;
    v4 = 0xEC00000073747369;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7824750;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100475A78(uint64_t a1)
{
  v2 = v1;
  v55 = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v51 = &v45 - v3;
  v4 = type metadata accessor for Playlist();
  v52 = *(v4 - 8);
  __chkstk_darwin();
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v5;
  __chkstk_darwin();
  v53 = &v45 - v6;
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v8 = &v45 - v7;
  v9 = type metadata accessor for Playlist.Folder.Item();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin();
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v45 - v12;
  type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v49 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v45 - v18;
  v58 = v2;
  sub_10047AAB4(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v14, type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10047AB30(v14, type metadata accessor for PlaylistPicker.Mode);
  }

  v47 = v4;
  v46 = *(v16 + 32);
  v46(v19, v14, v15);
  sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v21 = v16;
  if (dispatch thunk of Collection.distance(from:to:)() >= 1)
  {
    sub_10047361C(v8);
    v22 = v56;
    v23 = v57;
    if ((*(v56 + 48))(v8, 1, v57) == 1)
    {
      (*(v16 + 8))(v19, v15);
      return sub_1000095E8(v8, &qword_1011831B0, &qword_100ED2570);
    }

    v24 = v54;
    (*(v22 + 32))();
    (*(v22 + 16))(v11, v24, v23);
    if ((*(v22 + 88))(v11, v23) != enum case for Playlist.Folder.Item.playlist(_:))
    {
      v36 = *(v22 + 8);
      v36(v24, v23);
      (*(v16 + 8))(v19, v15);
      return (v36)(v11, v23);
    }

    (*(v22 + 96))(v11, v23);
    v25 = *(v52 + 32);
    v55 = v52 + 32;
    v45 = v25;
    v25(v53, v11, v47);
    v26 = Playlist.id.getter();
    v28 = v27;
    v29 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistContainsDuplicatesCache;
    v30 = v58;
    swift_beginAccess();
    v31 = *(v30 + v29);
    if (*(v31 + 16) && (, v32 = sub_100019C10(v26, v28), v34 = v33, , (v34 & 1) != 0))
    {
      v35 = *(*(v31 + 56) + 16 * v32 + 8);

      if ((v35 & 1) == 0)
      {
        (*(v52 + 8))(v53, v47);
        (*(v56 + 8))(v54, v57);
        return (*(v16 + 8))(v19, v15);
      }
    }

    else
    {
    }

    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v51, 1, 1, v37);
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = v52;
    (*(v52 + 16))(v50, v53, v47);
    (*(v16 + 16))(v49, v19, v15);
    type metadata accessor for MainActor();

    v40 = static MainActor.shared.getter();
    v41 = (*(v39 + 80) + 40) & ~*(v39 + 80);
    v21 = v16;
    v42 = (v48 + *(v16 + 80) + v41) & ~*(v16 + 80);
    v43 = swift_allocObject();
    *(v43 + 2) = v40;
    *(v43 + 3) = &protocol witness table for MainActor;
    *(v43 + 4) = v38;
    v44 = v47;
    v45(&v43[v41], v50, v47);
    v46(&v43[v42], v49, v15);

    sub_1001F4CB8(0, 0, v51, &unk_100ECE448, v43);

    (*(v39 + 8))(v53, v44);
    (*(v56 + 8))(v54, v57);
  }

  return (*(v21 + 8))(v19, v15);
}

uint64_t sub_1004762A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  type metadata accessor for MainActor();
  v6[14] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[15] = v8;
  v6[16] = v7;

  return _swift_task_switch(sub_100476344, v8, v7);
}

uint64_t sub_100476344()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    type metadata accessor for MusicLibrary();
    v2 = static MusicLibrary.shared.getter();
    v0[18] = v2;
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_100476458;
    v4 = v0[13];

    return Playlist.numberOfDuplicateTracks(_:library:)(v4, v2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100476458(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 160) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return _swift_task_switch(sub_1004765A4, v4, v3);
}

uint64_t sub_1004765A4()
{
  v1 = v0[17];

  v2 = Playlist.id.getter();
  v4 = v3;
  v5 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistContainsDuplicatesCache;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16) && (, v7 = sub_100019C10(v2, v4), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 16 * v7);

    v11 = 1;
  }

  else
  {

    v10 = 0;
    v11 = 0;
  }

  v12 = v0[20];
  v13 = Playlist.id.getter();
  v15 = v14;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v1 + v5);
  *(v1 + v5) = 0x8000000000000000;
  sub_1006C6668(v12, 0, v13, v15, isUniquelyReferenced_nonNull_native);

  *(v1 + v5) = v22;
  swift_endAccess();
  v17 = v0[17];
  if (!v11 || v12 != v10)
  {
    sub_100473F98(v0[12]);
    v18 = sub_100477A1C();
    type metadata accessor for IndexPath();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 reconfigureItemsAtIndexPaths:isa];
  }

  v20 = v0[1];

  return v20();
}

void sub_100476794(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, char a3)
{
  v55 = a2;
  v46 = a1;
  v4 = type metadata accessor for IndexPath();
  v53 = *(v4 - 8);
  __chkstk_darwin();
  v54 = v5;
  v51 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin();
  v44 = v7;
  v45 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v49 = String.init(localized:table:bundle:locale:comment:)();
  v50 = v8;
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  v12 = &selRef__replacePlaceholderViewWithView_;
  v13 = v55;
  if (a3)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v41[2] = String.init(localized:table:bundle:locale:comment:)();
    v41[1] = v14;
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = v47;
    v17 = *(v47 + 16);
    v43 = v11;
    v18 = v45;
    v19 = v48;
    v17(v45, v46, v48);
    v20 = v53;
    v46 = *(v53 + 16);
    v21 = v51;
    v46(v51, v13, v4);
    v22 = *(v16 + 80);
    v42 = v4;
    v23 = (v22 + 24) & ~v22;
    v24 = (v44 + *(v20 + 80) + v23) & ~*(v20 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v15;
    v26 = v25 + v23;
    v4 = v42;
    v27 = v18;
    v11 = v43;
    (*(v16 + 32))(v26, v27, v19);
    v28 = v25 + v24;
    v29 = v55;
    (*(v20 + 32))(v28, v21, v4);

    v30 = String._bridgeToObjectiveC()();

    v60 = sub_10047AC28;
    v61 = v25;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_10027D328;
    v59 = &unk_1010AD690;
    v31 = _Block_copy(&aBlock);

    v32 = [objc_opt_self() actionWithTitle:v30 style:0 handler:v31];
    _Block_release(v31);

    v33 = v53;
    [v11 addAction:v32];

    v12 = &selRef__replacePlaceholderViewWithView_;
    v46(v21, v29, v4);
  }

  else
  {
    v33 = v53;
    v21 = v51;
    (*(v53 + 16))(v51, v55, v4);
  }

  v34 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v35 = swift_allocObject();
  v36 = v52;
  *(v35 + 16) = v52;
  (*(v33 + 32))(v35 + v34, v21, v4);
  v37 = v36;
  v38 = String._bridgeToObjectiveC()();

  v60 = sub_10047ABB4;
  v61 = v35;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_10027D328;
  v59 = &unk_1010AD640;
  v39 = _Block_copy(&aBlock);

  v40 = [objc_opt_self() v12[28]];
  _Block_release(v39);

  [v11 addAction:v40];
  [v37 presentViewController:v11 animated:1 completion:0];
}

char *sub_100476F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = *&result[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
    if (v8)
    {
      v9 = *&result[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler + 8];

      v8(v7, a3);
      sub_100020438(v8, v9);
    }

    v10 = IndexPath.section.getter();
    sub_1004732C0(v10);
    v12 = v11;
    v13 = type metadata accessor for Playlist();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v5, a3, v13);
    (*(v14 + 56))(v5, 0, 1, v13);
    sub_100477300(v12, v5);

    return sub_1000095E8(v5, &unk_1011814D0, &qword_100EC12A0);
  }

  return result;
}

void sub_10047710C(uint64_t a1)
{
  v1 = sub_100477A1C();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v1 deselectItemAtIndexPath:isa animated:1];
}

void sub_100477184(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    [v7 safeAreaInsets];

    UIEdgeInsets.vertical.getter();
    [v3 additionalSafeAreaInsets];
    UIEdgeInsets.vertical.getter();
    v9 = static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(1u, a1, a2, a3 & 1, 0);
    v11 = v10;
    [v3 preferredContentSize];
    if (v9 != v13 || v11 != v12)
    {
      [v3 setPreferredContentSize:{v9, v11}];
      v15 = [v3 navigationController];
      if (v15)
      {
        v16 = v15;
        [v15 setPreferredContentSize:{v9, v11}];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100477300(char a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v6 = &v48 - v5;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v8 = &v48 - v7;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v12 = &v48 - v11;
  type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047AAB4(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_context, v14, type metadata accessor for PlaylistPicker.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_10047AB30(v14, type metadata accessor for PlaylistPicker.Mode);
  if (EnumCaseMultiPayload != 1)
  {
    if (a1)
    {
      v49 = 0xEF7473696C79616CLL;
      v48 = 0x507972617262696CLL;
      sub_1000089F8(a2, v12, &unk_1011814D0, &qword_100EC12A0);
      v17 = type metadata accessor for Playlist();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v12, 1, v17) == 1)
      {
        sub_1000095E8(v12, &unk_1011814D0, &qword_100EC12A0);
      }

      else
      {
        v22 = v2;
        v23 = Playlist.catalogID.getter();
        v25 = v24;
        (*(v18 + 8))(v12, v17);
        if (v25)
        {
          v48 = v23;
          v49 = v25;
        }

        v2 = v22;
      }

      if (a1 == 3)
      {
        v19 = 0;
        v20 = 17;
        v21 = 0xE000000000000000;
      }

      else
      {
        if (a1 == 2)
        {
          v19 = 0x6C79616C506C6C61;
        }

        else
        {
          v19 = 0x73746E65636572;
        }

        if (a1 == 2)
        {
          v21 = 0xEC00000073747369;
        }

        else
        {
          v21 = 0xE700000000000000;
        }

        v20 = 17;
      }
    }

    else
    {
      v19 = 0;
      v49 = 0xEB00000000747369;
      v48 = 0x6C79616C5077656ELL;
      v20 = 5;
      v21 = 0xE000000000000000;
    }

    v26 = type metadata accessor for URL();
    (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
    sub_10010FC20(&qword_101190BE0, &qword_100EC1580);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBE260;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    *(inited + 48) = v19;
    *(inited + 56) = v21;
    *(inited + 64) = 0x49746E65746E6F63;
    *(inited + 72) = 0xE900000000000064;
    v28 = (v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource);
    v29 = *(v2 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource + 16);
    if (v29 == 1 || (v30 = *v28, v31 = v28[1], sub_10047ABA0(*v28, v31, v29), , sub_10047AB1C(v30, v31, v29), !v29))
    {

      v31 = 0;
      v29 = 0xE000000000000000;
    }

    *(inited + 80) = v31;
    *(inited + 88) = v29;
    *(inited + 96) = 1684957547;
    *(inited + 104) = 0xE400000000000000;
    v32 = v28[2];
    if (v32 == 1)
    {
      v33 = 0;
      v34 = 0xE000000000000000;
    }

    else
    {
      v36 = *v28;
      v35 = v28[1];

      sub_10047AB1C(v36, v35, v32);
      if (v36)
      {
        if (v36 == 1)
        {
          v34 = 0xE800000000000000;
          v33 = 0x7473696C79616C70;
        }

        else
        {
          v34 = 0xE400000000000000;
          v33 = 1735290739;
        }
      }

      else
      {
        v34 = 0xE500000000000000;
        v33 = 0x6D75626C61;
      }
    }

    *(inited + 112) = v33;
    *(inited + 120) = v34;
    v37 = sub_10010C578(inited);
    swift_setDeallocating();
    sub_10010FC20(&qword_101183AA0, &unk_100ECAF50);
    swift_arrayDestroy();
    v38 = MetricsEvent.Page.playlistPicker.unsafeMutableAddressor();
    sub_10047AAB4(v38, v6, type metadata accessor for MetricsEvent.Page);
    v39 = type metadata accessor for MetricsEvent.Page(0);
    (*(*(v39 - 8) + 56))(v6, 0, 1, v39);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(v48, v49, v20, 44, v8, 0, 0, 12, v10, v37, 0, 0x300u, v6, 0);
    v40 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v41 = sub_10053771C();
    v43 = v42;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v44 = qword_101218AD0;
    v45 = GroupActivitiesManager.hasJoined.getter();
    v46 = GroupActivitiesManager.participantsCount.getter();
    v47 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v40) + 0xB8))(v10, v41, v43, v45 & 1, v46, *(v44 + v47));

    return sub_10047AB30(v10, type metadata accessor for MetricsEvent.Click);
  }

  return result;
}

id sub_100477A1C()
{
  v1 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = sub_100477ABC();
    v5 = [objc_allocWithZone(UICollectionView) initWithFrame:v4 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100477ABC()
{
  v1 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionViewLayout;
  v2 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionViewLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionViewLayout);
  }

  else
  {
    v4 = sub_100477B20(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100477B20(uint64_t a1)
{
  v1 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICollectionLayoutListConfiguration();
  v5 = swift_allocBox();
  (*(v2 + 104))(v4, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v1);
  UICollectionLayoutListConfiguration.init(appearance:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_10047AB98;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010AD5F0;
  v9 = _Block_copy(aBlock);

  v10 = [v8 initWithSectionProvider:v9];
  _Block_release(v9);

  return v10;
}

uint64_t sub_100477D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v41 = a1;
  v42 = a2;
  v6 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v36[-v10];
  __chkstk_darwin();
  v13 = &v36[-v12];
  v14 = type metadata accessor for UIListSeparatorConfiguration();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = *(v15 + 16);
  if (!Strong)
  {
    return v19(a4, v42, v14);
  }

  v20 = Strong;
  v38 = v9;
  v39 = a4;
  v40 = v6;
  v21 = v42;
  v42 = v14;
  v19(v17, v21, v14);
  v22 = IndexPath.section.getter();
  sub_1004732C0(v22);
  if (!v23)
  {
    v37 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    v24 = v7;
    v25 = *(v7 + 104);
    v26 = v40;
    v25(v13);
    UIListSeparatorConfiguration.topSeparatorVisibility.setter();
    (v25)(v13, v37, v26);
    v7 = v24;
    UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
  }

  v27 = sub_100477A1C();
  v28 = IndexPath.section.getter();
  v29 = sub_10047A378(v28);

  v30 = IndexPath.item.getter();
  v31 = *(v7 + 104);
  v32 = &enum case for UIListSeparatorConfiguration.Visibility.automatic(_:);
  if (!v30)
  {
    v32 = &enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
  }

  v33 = v40;
  v31(v11, *v32, v40);
  UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  result = IndexPath.item.getter();
  if (__OFSUB__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    v35 = &enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    if (result != v29 - 1)
    {
      v35 = &enum case for UIListSeparatorConfiguration.Visibility.automatic(_:);
    }

    v31(v38, *v35, v33);
    UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();

    return (*(v15 + 32))(v39, v17, v42);
  }

  return result;
}

void *sub_1004780B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = swift_projectBox();
  v15 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
  if (a1)
  {
    v15 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:);
  }

  (*(v11 + 104))(v13, *v15, v10);
  swift_beginAccess();
  UICollectionLayoutListConfiguration.headerMode.setter();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  swift_endAccess();
  sub_100009F78(0, &qword_101191398, NSCollectionLayoutSection_ptr);
  swift_beginAccess();
  (*(v7 + 16))(v9, v14, v6);
  v16 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  (*(v7 + 8))(v9, v6);
  v17 = [v16 boundarySupplementaryItems];
  sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v20 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = sub_1007E9BB0(v20, v18);
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      [v21 setPinToVisibleBounds:0];

      ++v20;
      if (v23 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  [v16 contentInsets];
  [v16 setContentInsets:0.0];
  [v16 contentInsets];
  [v16 setContentInsets:?];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26 = [Strong traitCollection];
    v27 = [v26 userInterfaceIdiom];

    if (v27 == 6)
    {
      if (qword_10117F788 != -1)
      {
        swift_once();
      }

      [v16 contentInsets];
      [v16 setContentInsets:?];
      [v16 contentInsets];
      [v16 setContentInsets:?];
    }
  }

  return v16;
}

double sub_1004784EC()
{
  result = *HI.HoverOutset.text.unsafeMutableAddressor();
  qword_101191080 = *&result;
  return result;
}

id sub_100478540()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistPicker.ViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004787A0(uint64_t a1)
{
  type metadata accessor for PlaylistPicker.Context(319);
  if (v1 <= 0x3F)
  {
    sub_10005BAFC(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlaylistPicker.ViewController.Playlists(319);
      if (v3 <= 0x3F)
      {
        sub_10003920C(319, &qword_101191140, &qword_101191148, &qword_100ECE270);
        if (v4 <= 0x3F)
        {
          sub_10003920C(319, &qword_10118CCD0, &qword_10118CCD8, &qword_100EC8898);
          if (v5 <= 0x3F)
          {
            sub_10003920C(319, &qword_10118CCE0, &qword_10118CCE8, &qword_100EC88A0);
            if (v6 <= 0x3F)
            {
              sub_10003920C(319, &qword_101191150, &unk_101191158, &qword_100ECE278);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100478AD0(uint64_t a1)
{
  sub_10003920C(319, qword_1011911D0, &qword_101193C80, &qword_100EDE790);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_100478C0C()
{
  result = qword_101191368;
  if (!qword_101191368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191368);
  }

  return result;
}

uint64_t sub_100478C60(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v73 = a1;
  v57 = type metadata accessor for Playlist.Entry.InternalItem();
  v56 = *(v57 - 8);
  __chkstk_darwin();
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101191570, &qword_100ECE0B0);
  __chkstk_darwin();
  v59 = &v53 - v7;
  v61 = type metadata accessor for Playlist.Entry();
  v60 = *(v61 - 8);
  __chkstk_darwin();
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v64 = &v53 - v9;
  v65 = type metadata accessor for Track();
  v63 = *(v65 - 8);
  __chkstk_darwin();
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v68 = &v53 - v11;
  v69 = type metadata accessor for MusicVideo();
  v67 = *(v69 - 8);
  __chkstk_darwin();
  v62 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v71 = &v53 - v13;
  v72 = type metadata accessor for Song();
  v70 = *(v72 - 8);
  __chkstk_darwin();
  v66 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v16 = &v53 - v15;
  v17 = type metadata accessor for Playlist();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v22 = &v53 - v21;
  v23 = type metadata accessor for Album();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75[3] = a2;
  v75[4] = a3;
  v27 = sub_10001C8B8(v75);
  (*(*(a2 - 8) + 32))(v27, v73, a2);
  sub_100008FE4(v75, v74);
  sub_10010FC20(&qword_10118E0B0, &qword_100ECA430);
  v28 = swift_dynamicCast();
  v29 = *(v24 + 56);
  if (v28)
  {
    v29(v22, 0, 1, v23);
    (*(v24 + 32))(v26, v22, v23);
    Album.catalogID.getter();
    (*(v24 + 8))(v26, v23);
    sub_10000959C(v75);
    return 0;
  }

  v29(v22, 1, 1, v23);
  sub_1000095E8(v22, &unk_101184730, &unk_100ECB920);
  sub_100008FE4(v75, v74);
  v31 = swift_dynamicCast();
  v32 = *(v18 + 56);
  if (v31)
  {
    v32(v16, 0, 1, v17);
    (*(v18 + 32))(v20, v16, v17);
    Playlist.catalogID.getter();
    (*(v18 + 8))(v20, v17);
    sub_10000959C(v75);
    return 1;
  }

  v32(v16, 1, 1, v17);
  sub_1000095E8(v16, &unk_1011814D0, &qword_100EC12A0);
  sub_100008FE4(v75, v74);
  v33 = v71;
  v34 = v72;
  v35 = swift_dynamicCast();
  v36 = v70;
  v37 = *(v70 + 56);
  if (v35)
  {
    v37(v33, 0, 1, v34);
    v38 = v66;
    (*(v36 + 32))(v66, v33, v34);
    Song.catalogID.getter();
LABEL_11:
    (*(v36 + 8))(v38, v34);
    sub_10000959C(v75);
    return 2;
  }

  v37(v33, 1, 1, v34);
  sub_1000095E8(v33, &unk_101183960, &unk_100EBCF90);
  sub_100008FE4(v75, v74);
  v39 = v68;
  v34 = v69;
  v40 = swift_dynamicCast();
  v36 = v67;
  v41 = *(v67 + 56);
  if (v40)
  {
    v41(v39, 0, 1, v34);
    v38 = v62;
    (*(v36 + 32))(v62, v39, v34);
    MusicVideo.catalogID.getter();
    goto LABEL_11;
  }

  v41(v39, 1, 1, v34);
  sub_1000095E8(v39, &unk_1011846B0, &unk_100ECB630);
  sub_100008FE4(v75, v74);
  v42 = v64;
  v34 = v65;
  v43 = swift_dynamicCast();
  v36 = v63;
  v44 = *(v63 + 56);
  if (v43)
  {
    v44(v42, 0, 1, v34);
    v38 = v58;
    (*(v36 + 32))(v58, v42, v34);
    Track.catalogID.getter();
    goto LABEL_11;
  }

  v44(v42, 1, 1, v34);
  sub_1000095E8(v42, &qword_10118A530, &qword_100EC64E0);
  sub_100008FE4(v75, v74);
  v45 = v59;
  v46 = v61;
  if (swift_dynamicCast())
  {
    v47 = v60;
    (*(v60 + 56))(v45, 0, 1, v46);
    v48 = v54;
    (*(v47 + 32))(v54, v45, v46);
    v49 = v55;
    Playlist.Entry.internalItem.getter();
    v50 = v56;
    v51 = v57;
    v52 = (*(v56 + 88))(v49, v57);
    if (v52 == enum case for Playlist.Entry.InternalItem.musicVideo(_:) || v52 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v50 + 8))(v49, v51);
      Playlist.Entry.catalogID.getter();
      (*(v47 + 8))(v48, v46);
      sub_10000959C(v75);
    }

    else
    {
      (*(v47 + 8))(v48, v46);
      sub_10000959C(v75);
      (*(v50 + 8))(v49, v51);
    }

    return 0;
  }

  else
  {
    sub_10000959C(v75);
    (*(v60 + 56))(v45, 1, 1, v46);
    sub_1000095E8(v45, &qword_101191570, &qword_100ECE0B0);
    return 0;
  }
}

uint64_t sub_1004798BC(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v2 = type metadata accessor for Playlist.Folder.Item();
  v32 = *(v2 - 8);
  __chkstk_darwin();
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v29 - v4;
  v5 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v31 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v29 - v8;
  type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v29 - v12;
  sub_10010FC20(&unk_101191380, &qword_100ECE438);
  __chkstk_darwin();
  v15 = &v29 - v14;
  v17 = *(v16 + 56);
  sub_10047AAB4(v33, &v29 - v14, type metadata accessor for PlaylistPicker.Mode);
  sub_10047AAB4(v34, &v15[v17], type metadata accessor for PlaylistPicker.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10047AAB4(v15, v11, type metadata accessor for PlaylistPicker.Mode);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = v32;
      v19 = *(v32 + 32);
      v20 = v29;
      v19(v29, v11, v2);
      v21 = &v15[v17];
      v22 = v30;
      v19(v30, v21, v2);
      v23 = static Playlist.Folder.Item.== infix(_:_:)();
      v24 = *(v18 + 8);
      v24(v22, v2);
      v24(v20, v2);
LABEL_9:
      sub_10047AB30(v15, type metadata accessor for PlaylistPicker.Mode);
      return v23 & 1;
    }

    (*(v32 + 8))(v11, v2);
  }

  else
  {
    sub_10047AAB4(v15, v13, type metadata accessor for PlaylistPicker.Mode);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v25 = v31;
      v26 = *(v31 + 32);
      v26(v9, v13, v5);
      v26(v7, &v15[v17], v5);
      type metadata accessor for Track();
      sub_10047A9B8(&unk_10118A620, &type metadata accessor for Track, &protocol conformance descriptor for Track);
      v23 = static MusicItemCollection<>.== infix(_:_:)();
      v27 = *(v25 + 8);
      v27(v7, v5);
      v27(v9, v5);
      goto LABEL_9;
    }

    (*(v31 + 8))(v13, v5);
  }

  sub_1000095E8(v15, &unk_101191380, &qword_100ECE438);
  v23 = 0;
  return v23 & 1;
}

Swift::Int sub_100479D70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011914E8, &qword_100ECE4F0);
    v2 = static _SetStorage.allocate(capacity:)();
    v3 = 0;
    v4 = v2 + 56;
    while (1)
    {
      Hasher.init(_seed:)();
      NSFileManager.Failure.hash(into:)();
      result = Hasher._finalize()();
      v9 = -1 << *(v2 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      v12 = *(v4 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) != 0)
      {
        v14 = ~v9;
        while (1)
        {
          result = static MPCPlayerCommandRequest.isAvailable(in:)();
          if (result)
          {
            break;
          }

          v10 = (v10 + 1) & v14;
          v11 = v10 >> 6;
          v12 = *(v4 + 8 * (v10 >> 6));
          v13 = 1 << v10;
          if (((1 << v10) & v12) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v11) = v13 | v12;
        v5 = *(v2 + 16);
        v6 = __OFADD__(v5, 1);
        v7 = v5 + 1;
        if (v6)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v7;
      }

      if (++v3 == v1)
      {
        return v2;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100479E88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109B158, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_100479ED4()
{
  v1 = (v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_containerSource);
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 1;
  v2 = (v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
  v7 = type metadata accessor for Playlist.Folder();
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_searchText);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_allowsAnimatedChanges) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_recentsResponseController) = 0;
  v9 = v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
  v10 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  v11(v9 + *(v12 + 20), 1, 1, v10);
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___contextBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___moveButton) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_shouldDisableNewFolderCell) = 0;
  v13 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistContainsDuplicatesCache;
  *(v0 + v13) = sub_10010D1E8(_swiftEmptyArrayStorage);
  v14 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newCellRegistration;
  v15 = sub_10010FC20(&qword_101191148, &qword_100ECE270);
  (*(*(v15 - 8) + 56))(v0 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_playlistCellRegistration;
  v17 = sub_10010FC20(&qword_10118CCD8, &qword_100EC8898);
  (*(*(v17 - 8) + 56))(v0 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folderCellRegistration;
  v19 = sub_10010FC20(&qword_10118CCE8, &qword_100EC88A0);
  (*(*(v19 - 8) + 56))(v0 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_headerRegistration;
  v21 = sub_10010FC20(&unk_101191158, &qword_100ECE278);
  (*(*(v21 - 8) + 56))(v0 + v20, 1, 1, v21);
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController____lazy_storage___collectionViewLayout) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10047A230(unsigned __int8 a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  if (!a1)
  {
    return a1;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10047A378(uint64_t a1)
{
  v3 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101182900, &qword_100EBE240);
  __chkstk_darwin();
  v7 = &v21 - v6;
  v8 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v21 - v12;
  sub_1004732C0(a1);
  if (!v14)
  {
    return 1;
  }

  if (v14 == 1)
  {
    v15 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
    swift_beginAccess();
    sub_1000089F8(v1 + v15, v7, &unk_101182900, &qword_100EBE240);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000095E8(v7, &unk_101182900, &qword_100EBE240);
      return 0;
    }

    (*(v9 + 32))(v13, v7, v8);
    v19 = MusicLibrarySectionedResponse.totalItemCount.getter();
    (*(v9 + 8))(v13, v8);
    if (v19 >= 3)
    {
      return 3;
    }

    else
    {
      return v19;
    }
  }

  else
  {
    v17 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController__playlists;
    swift_beginAccess();
    sub_10047AAB4(v1 + v17, v5, type metadata accessor for PlaylistPicker.ViewController.Playlists);
    v18 = *(v3 + 20);
    if ((*(v9 + 48))(&v5[v18], 1, v8))
    {
      sub_10047AB30(v5, type metadata accessor for PlaylistPicker.ViewController.Playlists);
      return 0;
    }

    (*(v9 + 16))(v11, &v5[v18], v8);
    sub_10047AB30(v5, type metadata accessor for PlaylistPicker.ViewController.Playlists);
    v20 = MusicLibrarySectionedResponse.totalItemCount.getter();
    (*(v9 + 8))(v11, v8);
    return v20;
  }
}

uint64_t sub_10047A6E0(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState.DragState();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for UICellConfigurationState();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [a1 cellForItemAtIndexPath:isa];

  if (v13)
  {
    v14 = [v13 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    UICellConfigurationState.cellDragState.getter();
    (*(v9 + 8))(v11, v8);
    (*(v3 + 104))(v5, enum case for UICellConfigurationState.DragState.dragging(_:), v2);
    sub_10047A9B8(&qword_101191460, &type metadata accessor for UICellConfigurationState.DragState, &protocol conformance descriptor for UICellConfigurationState.DragState);
    LOBYTE(v14) = dispatch thunk of static Equatable.== infix(_:_:)();

    v15 = *(v3 + 8);
    v15(v5, v2);
    v15(v7, v2);
    v16 = v14 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t sub_10047A96C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109B5A8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10047A9B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10047AA00()
{
  result = qword_101191370;
  if (!qword_101191370)
  {
    sub_1001109D0(&unk_1011841D0, &qword_100EC5DB0);
    sub_10047A9B8(&qword_10118A618, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191370);
  }

  return result;
}

uint64_t sub_10047AAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_10047AB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_10047AB30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_10047ABA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

void sub_10047ABB4(uint64_t a1)
{
  type metadata accessor for IndexPath();

  sub_10047710C(a1);
}

char *sub_10047AC28(uint64_t a1)
{
  v3 = *(type metadata accessor for Playlist() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  type metadata accessor for IndexPath();
  v5 = *(v1 + 16);

  return sub_100476F6C(a1, v5, v1 + v4);
}

uint64_t sub_10047AD00(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002F3F4;

  return sub_1004762A8(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10047AE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047AEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10047AF80()
{
  v1 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  v4 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v7 = *(v1 + 20);
  if (!v6(v3 + v7, 1, v4))
  {
    (*(v5 + 8))(v3 + v7, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10047B11C(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PlaylistPicker.ViewController.Playlists(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

uint64_t sub_10047B1D0()
{
  v1 = type metadata accessor for PlaylistPicker.ViewController.Playlists(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  v4 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v7 = *(v1 + 20);
  if (!v6(v3 + v7, 1, v4))
  {
    (*(v5 + 8))(v3 + v7, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10047B360(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PlaylistPicker.ViewController.Playlists(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10047B3E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10046F104(a1, v4, v5, v6);
}

unint64_t sub_10047B4C0()
{
  result = qword_101191488;
  if (!qword_101191488)
  {
    sub_1001109D0(&qword_101191480, &qword_100ECE480);
    sub_10024E8D0();
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191488);
  }

  return result;
}

uint64_t sub_10047B580(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10046A268(a1, a2, v2 + v6, v7);
}

unint64_t sub_10047B638()
{
  result = qword_101191518;
  if (!qword_101191518)
  {
    sub_1001109D0(&qword_101191510, &qword_100ECE538);
    sub_10047A9B8(&qword_1011914F8, _s12PlaylistCellVMa, &unk_100ECABE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191518);
  }

  return result;
}

unint64_t sub_10047B704()
{
  result = qword_101191538;
  if (!qword_101191538)
  {
    sub_1001109D0(&qword_101191530, &qword_100ECE548);
    sub_10047B7C0();
    sub_10047A9B8(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191538);
  }

  return result;
}

unint64_t sub_10047B7C0()
{
  result = qword_101191540;
  if (!qword_101191540)
  {
    sub_1001109D0(&qword_101191548, &qword_100ECE550);
    sub_10047A9B8(&unk_101191550, _s23NewPlaylistOrFolderCellVMa, &unk_100ECAB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191540);
  }

  return result;
}

unint64_t sub_10047B8A0()
{
  result = qword_101191568;
  if (!qword_101191568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191568);
  }

  return result;
}

void sub_10047B908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 > 3)
      {
        if (*v3 > 5u)
        {
          if (v6 == 6)
          {
            v7 = 0xD000000000000010;
          }

          else
          {
            v7 = 0x7473696C79616C70;
          }

          if (v6 == 6)
          {
            v8 = 0x8000000100E3C6C0;
          }

          else
          {
            v8 = 0xEC00000065707954;
          }
        }

        else if (v6 == 4)
        {
          v8 = 0xE500000000000000;
          v7 = 0x656C746974;
        }

        else
        {
          v7 = 0x79616C507473616CLL;
          v8 = 0xEE00657461446465;
        }
      }

      else if (*v3 > 1u)
      {
        if (v6 == 2)
        {
          v7 = 0x44657361656C6572;
          v8 = 0xEB00000000657461;
        }

        else
        {
          v8 = 0xE400000000000000;
          v7 = 1918985593;
        }
      }

      else
      {
        if (*v3)
        {
          v7 = 0xD000000000000010;
        }

        else
        {
          v7 = 0x614E747369747261;
        }

        if (*v3)
        {
          v8 = 0x8000000100E3C680;
        }

        else
        {
          v8 = 0xEA0000000000656DLL;
        }
      }

      v9 = *v4;
      if (v9 > 3)
      {
        if (*v4 > 5u)
        {
          if (v9 == 6)
          {
            v11 = 0x8000000100E3C6C0;
            if (v7 != 0xD000000000000010)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v11 = 0xEC00000065707954;
            if (v7 != 0x7473696C79616C70)
            {
LABEL_5:
              v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v5 & 1) == 0)
              {
                return;
              }

              goto LABEL_6;
            }
          }
        }

        else if (v9 == 4)
        {
          v11 = 0xE500000000000000;
          if (v7 != 0x656C746974)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v11 = 0xEE00657461446465;
          if (v7 != 0x79616C507473616CLL)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        if (*v4 > 1u)
        {
          if (v9 == 2)
          {
            v11 = 0xEB00000000657461;
            if (v7 != 0x44657361656C6572)
            {
              goto LABEL_5;
            }

            goto LABEL_47;
          }

          v11 = 0xE400000000000000;
          v10 = 1918985593;
        }

        else
        {
          v10 = 0x614E747369747261;
          v11 = 0xEA0000000000656DLL;
          if (*v4)
          {
            v11 = 0x8000000100E3C680;
            if (v7 != 0xD000000000000010)
            {
              goto LABEL_5;
            }

            goto LABEL_47;
          }
        }

        if (v7 != v10)
        {
          goto LABEL_5;
        }
      }

LABEL_47:
      if (v8 != v11)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

void sub_10047BC00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3 == 1)
      {
        v6 = 0x657469726F766166;
      }

      else
      {
        v6 = 0x64616F6C6E776F64;
      }

      if (*v3)
      {
        v7 = v6;
      }

      else
      {
        v7 = 7105633;
      }

      if (*v3)
      {
        v8 = 0xE900000000000073;
      }

      else
      {
        v8 = 0xE300000000000000;
      }

      if (*v4 == 1)
      {
        v9 = 0x657469726F766166;
      }

      else
      {
        v9 = 0x64616F6C6E776F64;
      }

      if (*v4)
      {
        v10 = v9;
      }

      else
      {
        v10 = 7105633;
      }

      if (*v4)
      {
        v11 = 0xE900000000000073;
      }

      else
      {
        v11 = 0xE300000000000000;
      }

      if (v7 == v10 && v8 == v11)
      {
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_10047BD40(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  if (v9 == *(a2 + 16))
  {
    if (!v9 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v11 = a1 + v10;
      v12 = a2 + v10;
      v13 = *(v6 + 72);
      do
      {
        sub_100482098(v11, v8, type metadata accessor for PlaylistCurators.Curator);
        sub_100482098(v12, v5, type metadata accessor for PlaylistCurators.Curator);
        v14 = static PlaylistCurators.Curator.__derived_struct_equals(_:_:)(v8, v5);
        sub_100482100(v5, type metadata accessor for PlaylistCurators.Curator);
        sub_100482100(v8, type metadata accessor for PlaylistCurators.Curator);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v12 += v13;
        v11 += v13;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void sub_10047BEF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionArtworkMetadataService.QueueState.Item(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v28 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(sub_10010FC20(&qword_101191960, &qword_100ECEA50) - 8);
  __chkstk_darwin();
  v9 = &v25 - v8;
  v29 = sub_10010FC20(&qword_101191968, &qword_100ECEA58);
  __chkstk_darwin();
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16) || !v12 || a1 == a2)
  {
    return;
  }

  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v30 = (v5 + 48);
  v16 = *(v7 + 72);
  v26 = v9;
  v27 = v16;
  while (1)
  {
    v19 = *(v29 + 48);
    sub_1000089F8(v14, v11, &qword_101191960, &qword_100ECEA50);
    sub_1000089F8(v15, &v11[v19], &qword_101191960, &qword_100ECEA50);
    v20 = *v30;
    if ((*v30)(v11, 1, v4) != 1)
    {
      break;
    }

    if (v20(&v11[v19], 1, v4) != 1)
    {
      goto LABEL_17;
    }

    sub_1000095E8(v11, &qword_101191960, &qword_100ECEA50);
LABEL_7:
    v15 += v27;
    v14 += v27;
    if (!--v12)
    {
      return;
    }
  }

  v21 = v26;
  sub_1000089F8(v11, v26, &qword_101191960, &qword_100ECEA50);
  if (v20(&v11[v19], 1, v4) == 1)
  {
    sub_100482100(v21, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
LABEL_17:
    v23 = &qword_101191968;
    v24 = &qword_100ECEA58;
    goto LABEL_18;
  }

  v22 = v28;
  sub_100481D28(&v11[v19], v28, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
  if (*v21 == *v22 && v21[1] == v22[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v17 = v28;
    v18 = static Album.== infix(_:_:)();
    sub_100482100(v17, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
    sub_100482100(v21, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
    sub_1000095E8(v11, &qword_101191960, &qword_100ECEA50);
    if ((v18 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  sub_100482100(v28, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
  sub_100482100(v21, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
  v23 = &qword_101191960;
  v24 = &qword_100ECEA50;
LABEL_18:
  sub_1000095E8(v11, v23, v24);
}

uint64_t sub_10047C398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8, v12);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v11, v18, v8);
    sub_100481DBC(v31, 255, v32, v33);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *v21;
    (*v21)(v11, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10047C594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMusicItem(0);
  __chkstk_darwin();
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v46 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    return 0;
  }

  if (!v10 || a1 == a2)
  {
    return 1;
  }

  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = *(v7 + 72);
  while (1)
  {
    sub_100482098(v12, v9, type metadata accessor for WidgetMusicItem);
    sub_100482098(v13, v6, type metadata accessor for WidgetMusicItem);
    v15 = v4[9];
    v16 = *&v9[v15];
    v17 = *&v9[v15 + 8];
    v18 = &v6[v15];
    v19 = v16 == *v18 && v17 == *(v18 + 1);
    if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v20 = v4[10];
      v21 = &v9[v20];
      v22 = *&v9[v20 + 8];
      v23 = &v6[v20];
      v24 = *(v23 + 1);
      v25 = !v22 || v24 == 0;
      if (v25 || (*v21 == *v23 ? (v31 = v22 == v24) : (v31 = 0), !v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
        v26 = v4[11];
        v27 = *&v9[v26];
        v28 = *&v9[v26 + 8];
        v29 = &v6[v26];
        v30 = v27 == *v29 && v28 == *(v29 + 1);
        if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }
    }

    v32 = v4[12];
    v33 = &v9[v32];
    v34 = *&v9[v32 + 8];
    v35 = &v6[v32];
    v36 = *(v35 + 1);
    if (v34)
    {
      if (v36)
      {
        v37 = *v33 == *v35 && v34 == v36;
        if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_5;
        }
      }
    }

    else if (!v36)
    {
      goto LABEL_5;
    }

    v38 = v4[13];
    v39 = &v9[v38];
    v40 = *&v9[v38 + 8];
    v41 = &v6[v38];
    v42 = *(v41 + 1);
    v43 = v42 == 0;
    if (v40)
    {
      if (!v42)
      {
        break;
      }

      if (*v39 == *v41 && v40 == v42)
      {
LABEL_5:
        sub_100482100(v6, type metadata accessor for WidgetMusicItem);
        sub_100482100(v9, type metadata accessor for WidgetMusicItem);
        goto LABEL_6;
      }

      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    sub_100482100(v6, type metadata accessor for WidgetMusicItem);
    sub_100482100(v9, type metadata accessor for WidgetMusicItem);
    if ((v43 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v13 += v14;
    v12 += v14;
    if (!--v10)
    {
      return 1;
    }
  }

  sub_100482100(v6, type metadata accessor for WidgetMusicItem);
  sub_100482100(v9, type metadata accessor for WidgetMusicItem);
  return 0;
}

void sub_10047C95C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;

      v9 = v5;
      v15 = v6;

      v10 = v7;
      v14 = v8;

      v11 = [v9 identifiers];
      v12 = [v10 identifiers];
      v13 = [v11 intersectsSet:v12];

      if (!v13)
      {
        break;
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_10047CAF4(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for GridView.Base.ViewModel();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_1007E99E0(v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          sub_1007E99E0(v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_100481DBC(&qword_101191970, 255, &type metadata accessor for GridView.Base.ViewModel, &protocol conformance descriptor for GridView.Base.ViewModel);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

void sub_10047CD0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = 0xD000000000000029;
      v7 = "nt";
      switch(*v3)
      {
        case 1:
          v6 = 0xD000000000000025;
          v7 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v6 = 0xD000000000000023;
          v7 = "LibraryView.Playlists";
          break;
        case 3:
          v6 = 0xD000000000000022;
          v7 = "LibraryView.Artists";
          break;
        case 4:
          v6 = 0xD000000000000021;
          v7 = "LibraryView.Albums";
          break;
        case 5:
          v6 = 0xD000000000000026;
          v7 = "LibraryView.Songs";
          break;
        case 6:
          v6 = 0xD000000000000027;
          v7 = "LibraryView.MadeForYou";
          break;
        case 7:
          v6 = 0xD000000000000022;
          v7 = "LibraryView.MusicVideos";
          break;
        case 8:
          v6 = 0xD000000000000028;
          v7 = "LibraryView.Genres";
          break;
        case 9:
          v6 = 0xD000000000000025;
          v7 = "LibraryView.Compilations";
          break;
        case 0xA:
          v6 = 0xD000000000000021;
          v7 = "LibraryView.Composers";
          break;
        case 0xB:
          v6 = 0xD000000000000026;
          v7 = "LibraryView.Shows";
          break;
        case 0xC:
          v6 = 0xD000000000000027;
          v7 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v8 = v7 | 0x8000000000000000;
      v9 = 0xD000000000000029;
      v10 = "nt";
      switch(*v4)
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Playlists";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Artists";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Albums";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Songs";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.MadeForYou";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.MusicVideos";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Genres";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Compilations";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Composers";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Shows";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
      {
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_10047D074(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for MusicLibrary();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_1007E976C(v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          sub_1007E976C(v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_100481DBC(&qword_10118CE20, 255, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10047D28C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      return 0;
    }

LABEL_5:
    if (!v5)
    {
      return 1;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = sub_1007E97F0(v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v4 = *(v3 + 8 * v12);

          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            goto LABEL_26;
          }
        }

        sub_1007E97F0(v12 - 4, a2);
LABEL_26:
        v15 = sub_10047E418();

        v4 = sub_10047E418();

        result = v15 == v4;
        if (v15 == v4)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return result;
      }
    }

    v16 = v3 + 32;
    v17 = (a2 + 32);
    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v5 - 1;
    while (1)
    {
      if (!v18)
      {
        goto LABEL_41;
      }

      if (!v19)
      {
        break;
      }

      v16 += 8;
      v21 = *v17++;
      a2 = v21;
      v3 = sub_10047E418();
      v4 = v21;
      v22 = sub_10047E418();
      v24 = v20-- != 0;
      v25 = v3 == v22;
      result = v3 == v22;
      if (v25)
      {
        --v19;
        --v18;
        if (v24)
        {
          continue;
        }
      }

      return result;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_10047D4BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 80);
    for (i = (a2 + 80); ; i += 17)
    {
      v7 = *(v3 - 4);
      v6 = *(v3 - 3);
      v41 = *(v3 - 16);
      v8 = *v3;
      v28 = *(v3 - 1);
      v26 = v3[1];
      v45 = v3[2];
      v33 = v3[3];
      v43 = v3[4];
      v35 = v3[6];
      v24 = v3[7];
      v25 = v3[5];
      v37 = v3[8];
      v40 = v3[10];
      v10 = *(i - 4);
      v9 = *(i - 3);
      v11 = *(i - 16);
      v12 = *i;
      v27 = *(i - 1);
      v31 = v3[9];
      v32 = i[1];
      v44 = i[2];
      v46 = i[3];
      v42 = i[4];
      v34 = i[6];
      v29 = i[7];
      v30 = i[5];
      v36 = i[8];
      v38 = i[10];
      v39 = i[9];
      if ((*(v3 - 6) != *(i - 6) || *(v3 - 5) != *(i - 5)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (v7 == v10 && v6 == v9)
      {
        if (v41 != v11)
        {
          return 0;
        }
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v13 & 1) == 0 || v41 != v11)
        {
          return result;
        }
      }

      if (v8)
      {
        v15 = v44;
        v14 = v45;
        if (!v12)
        {
          return 0;
        }

        if (v28 != v27 || v8 != v12)
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v15 = v44;
          v14 = v45;
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v15 = v44;
        v14 = v45;
        if (v12)
        {
          return 0;
        }
      }

      if (v14)
      {
        v18 = v39;
        v17 = v40;
        v20 = v37;
        v19 = v38;
        v22 = v35;
        v21 = v36;
        v23 = v34;
        if (!v15 || (v26 != v32 || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v18 = v39;
        v17 = v40;
        v20 = v37;
        v19 = v38;
        v22 = v35;
        v21 = v36;
        v23 = v34;
        if (v15)
        {
          return 0;
        }
      }

      if ((v33 != v46 || v43 != v42) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v22)
      {
        if (!v23 || (v25 != v30 || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v23)
      {
        return 0;
      }

      if (v20)
      {
        if (!v21 || (v24 != v29 || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v21)
      {
        return 0;
      }

      if ((v31 != v18 || v17 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v3 += 17;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}