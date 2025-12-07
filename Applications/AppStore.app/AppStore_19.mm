uint64_t sub_10021AAD0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArcadeLockupLayout.Metrics();
  sub_100005644(v4, qword_1009CE9B8);
  v18 = sub_1000056A8(v4, qword_1009CE9B8);
  v25[24] = &protocol witness table for CGFloat;
  v25[23] = &type metadata for CGFloat;
  v25[20] = 0x4048000000000000;
  v25[18] = &type metadata for Double;
  v25[19] = &protocol witness table for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4030000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v5, qword_1009D0758);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = type metadata accessor for StaticDimension();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_1000056E0(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v19);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return ArcadeLockupLayout.Metrics.init(minimumHeight:offerButtonMargin:wordmarkMargin:wordmarkTopSpace:wordmarkSpace:subtitleLeadingSpace:bottomSpace:numberOfLinesForSubtitle:shouldHorizontallyCenterSubtitleLayout:expandToFillWidth:subtitleIsHorizontallyAligned:)();
}

id sub_10021AE44()
{
  result = [objc_allocWithZone(UIGlassEffect) init];
  qword_100979E60 = result;
  return result;
}

void sub_10021AE90(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v4)
  {
    v5 = a1;
    [v4 removeFromSuperview];
    v6 = *&v2[v3];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = v6;
    v8 = [v2 contentView];
    [v8 addSubview:v7];
  }

LABEL_4:
}

id sub_10021AF54()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_100979BB8, qword_1007C0A20);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  *&v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView] = 0;
  v5 = &v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_clickActionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_tapGestureRecognizer] = 0;
  if (qword_10096D430 != -1)
  {
    swift_once();
  }

  v9.receiver = v0;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, "initWithEffect:", qword_100979E60);
  static _UICornerMaskingConfiguration.fixed(_:)();
  v7 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  UIView.cornerMaskingConfiguration.setter();
  [v6 setClipsToBounds:1];
  [v6 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v6 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  return v6;
}

double sub_10021B2A0(double a1, double a2)
{
  v5 = type metadata accessor for OfferButtonMetrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for SmallLockupLayout.Metrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  v19 = *(v2 + OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView);
  if (v19)
  {
    v33 = v8;
    v20 = v5;
    v21 = v19;
    sub_10013F3FC(v18);
    [v21 layoutMargins];
    v22 = [v21 traitCollection];
    (*(v13 + 16))(v15, v18, v12);
    v23 = SmallLockupLayout.Metrics.offerButtonSize.getter();
    if ((v25 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v26 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v26 = qword_100991028;
      }

      v28 = sub_1000056A8(v20, v26);
      v29 = v33;
      (*(v6 + 16))(v33, v28, v20);
      (*(v6 + 32))(v11, v29, v20);
      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallLockupLayout.Metrics.offerButtonSize.setter();
      (*(v6 + 8))(v11, v20);
    }

    static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();

    v30 = *(v13 + 8);
    v30(v15, v12);

    v30(v18, v12);
  }

  else
  {
    v27 = *(v2 + OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView);
    if (v27)
    {
      [v27 sizeThatFits:{a1, a2}];
    }

    else
    {
      return 0.0;
    }
  }

  return a1;
}

void sub_10021B6BC()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView];
    if (!v3)
    {
      return;
    }

    v1 = v3;
    v2 = 0;
  }

  v4 = v2;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v1 sizeThatFits:{v5, v6}];
  v8 = v7;
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v12);
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = CGRectGetMidY(v13) + v8 * -0.5;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v1 setFrame:{MinX, v10, CGRectGetWidth(v14), v8}];
}

char *sub_10021B990(void *a1)
{
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - v3;
  v5 = type metadata accessor for SmallLockupLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = [objc_allocWithZone(type metadata accessor for CrossLinkLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100140A4C(a1);
  if (qword_10096D420 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v5, qword_1009CE9A0);
  v14 = *(v6 + 16);
  v14(v11, v13, v5);
  v15 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView;
  v16 = *&v12[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
  v14(v8, v11, v5);
  v17 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v16[v17], v8, v5);
  swift_endAccess();
  [v16 setNeedsLayout];
  v18 = *(v6 + 8);
  v18(v8, v5);
  v19 = v12;
  [v19 setNeedsLayout];
  v18(v11, v5);
  [v19 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];

  v20 = qword_10096DD18;
  v21 = *(*&v12[v15] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v22, qword_1009D06E0);
  v24 = *(v22 - 8);
  v59 = *(v24 + 16);
  v60 = v24 + 16;
  v59(v4, v23, v22);
  v58 = *(v24 + 56);
  v58(v4, 0, 1, v22);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v25 = static UIColor.primaryText.getter();
  v26 = v25;
  v57 = v15;
  v27 = *&v12[v15];
  v28 = *(v27 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor);
  *(v27 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor) = v25;
  v56 = v19;
  if (!v28)
  {
    v32 = v25;
    v30 = 0;
    goto LABEL_9;
  }

  v29 = v25;
  v30 = v28;
  v31 = static NSObject.== infix(_:_:)();

  if ((v31 & 1) == 0)
  {
LABEL_9:
    sub_10003E7B4();
    v29 = v26;
  }

  v33 = v57;
  v34 = qword_10096DD40;
  v35 = *(*&v12[v57] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_1000056A8(v22, qword_1009D0758);
  v59(v4, v36, v22);
  v58(v4, 0, 1, v22);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v37 = *(*&v12[v33] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v38 = static UIColor.secondaryText.getter();
  [v37 setTextColor:v38];

  v39 = *(*&v12[v33] + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  v40 = v56;
  if (v39)
  {
    v41 = qword_10096DD60;
    v42 = v39;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_1000056A8(v22, qword_1009D07B8);
    v59(v4, v43, v22);
    v58(v4, 0, 1, v22);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    v33 = v57;
    v44 = *(*&v12[v57] + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
    if (v44)
    {
      v45 = v44;
      v46 = static UIColor.tertiaryText.getter();
      [v45 setTextColor:v46];
    }
  }

  v47 = *&v40[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel];
  v48 = static UIColor.secondaryText.getter();
  [v47 setTextColor:v48];

  v49 = *&v40[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel];
  v50 = static UIColor.primaryText.getter();
  [v49 setTextColor:v50];

  v51 = *(*&v12[v33] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v52 = qword_10096DD48;
  v53 = v51;
  if (v52 != -1)
  {
    swift_once();
  }

  v54 = sub_1000056A8(v22, qword_1009D0770);
  v59(v4, v54, v22);
  v58(v4, 0, 1, v22);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  return v40;
}

void sub_10021C098(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8AppStore16FooterLockupView_tapGestureRecognizer;
  if (*&v2[OBJC_IVAR____TtC8AppStore16FooterLockupView_tapGestureRecognizer])
  {
    v4 = a1;
    v5 = a2;
    [*&v2[OBJC_IVAR____TtC8AppStore16FooterLockupView_tapGestureRecognizer] removeTarget:v2 action:"clickActionHandlerTrampoline"];
    a1 = v4;
    a2 = v5;
  }

  v6 = &v2[OBJC_IVAR____TtC8AppStore16FooterLockupView_clickActionHandler];
  v7 = *&v2[OBJC_IVAR____TtC8AppStore16FooterLockupView_clickActionHandler];
  v8 = *&v2[OBJC_IVAR____TtC8AppStore16FooterLockupView_clickActionHandler + 8];
  *v6 = a1;
  *(v6 + 1) = a2;
  sub_10000827C(a1, a2);
  sub_10001F63C(v7, v8);
  if (*v6)
  {
    v9 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"clickActionHandlerTrampoline"];
    [v9 setDelegate:v2];
    if (*&v2[v3])
    {
      [v2 removeGestureRecognizer:?];
      v10 = *&v2[v3];
    }

    else
    {
      v10 = 0;
    }

    *&v2[v3] = v9;
    v11 = v9;

    [v2 addGestureRecognizer:v11];
  }
}

uint64_t sub_10021C1E4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView);
  if (!v3)
  {
    v8 = *(v1 + OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView);
    if (!v8)
    {
LABEL_9:
      v12 = 1;
      return v12 & 1;
    }

    v4 = v8;
    v9 = [a1 view];
    if (v9)
    {
      v6 = v9;
      v7 = *&v4[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButton];
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v4 = v3;
  v5 = [a1 view];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = *(*&v4[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
LABEL_7:
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v10 = v7;
  v11 = static NSObject.== infix(_:_:)();

  v12 = v11 ^ 1;
  return v12 & 1;
}

unint64_t sub_10021C300(uint64_t a1, int *a2)
{
  v3 = sub_10026CF10(a1, a2);
  sub_10021C764();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v3;
}

void sub_10021C398(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for SeparatorSupplementaryView(0);
  if (static UICollectionReusableView.elementKind.getter() == a1 && v10 == a2)
  {

    goto LABEL_10;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_10:
    a5[3] = sub_10002849C(&qword_1009751D0, qword_1007B7350);
    a5[4] = sub_10011A820();
    sub_1000056E0(a5);

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    return;
  }

  sub_100268C44(a1, a2, a3, a4, a5);
}

uint64_t sub_10021C4E0(uint64_t a1)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComponentSeparator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_100503F40();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

uint64_t sub_10021C700()
{

  sub_10001F64C(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_10021C764()
{
  v21 = type metadata accessor for FloatingPointRoundingRule();
  v0 = *(v21 - 8);
  __chkstk_darwin(v21);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SpacerDimension();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SpacerDimension.init(constant:)();
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension:1.0];
  v9 = ShelfLayoutContext.traitCollection.getter();
  static ComponentSeparator.thickness(compatibleWith:)();
  v11 = v10;

  v12 = [v7 absoluteDimension:v11];
  v13 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v12];

  type metadata accessor for SeparatorSupplementaryView(0);
  static UICollectionReusableView.elementKind.getter();
  ShelfLayoutContext.traitEnvironment.getter();
  static Dimensions.defaultRoundingRule.getter();
  sub_10021CA28(v14);
  AnyDimension.value(in:rounded:)();
  v16 = v15;
  swift_unknownObjectRelease();
  (*(v0 + 8))(v2, v21);
  v17 = String._bridgeToObjectiveC()();

  v18 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v13 elementKind:v17 alignment:1 absoluteOffset:{0.0, v16}];

  (*(v4 + 8))(v6, v3);
  return v18;
}

unint64_t sub_10021CA28(__n128 a1)
{
  result = qword_10097A038;
  if (!qword_10097A038)
  {
    type metadata accessor for SpacerDimension();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A038);
  }

  return result;
}

void sub_10021CA80(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 launchedToTest];

  if (v11)
  {
    v26 = v7;
    type metadata accessor for AppStoreApplication();
    v29.receiver = swift_getObjCClassFromMetadata();
    v29.super_class = &OBJC_METACLASS____TtC8AppStore19AppStoreApplication;
    v12 = objc_msgSendSuper2(&v29, "sharedApplication");
    v13 = swift_dynamicCastClassUnconditional();
    aBlock[0] = a1;
    swift_errorRetain();
    sub_10002849C(&qword_10098A690, qword_1007B39A0);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    if (ASKBuildTypeIsPerformanceTesting() && ([v13 shouldRecordExtendedLaunchTime] & 1) != 0)
    {
      v25 = v4;
      v17 = OBJC_IVAR____TtC8AppStore19AppStoreApplication_hasConcludedExtendedLaunchTest;
      if (*(v13 + OBJC_IVAR____TtC8AppStore19AppStoreApplication_hasConcludedExtendedLaunchTest))
      {
      }

      else
      {
        sub_10045B064(v14, v16, v13);

        *(v13 + v17) = 1;
      }

      v4 = v25;
    }

    else
    {
    }

    v18 = sub_10021D774();
    v19 = v26;
    if (v18)
    {
      v20 = v18;
      swift_beginAccess();
      objc_setAssociatedObject(v1, &unk_10097A040, 0, 0x301);
      swift_endAccess();
      sub_1000076C0();
      v21 = static OS_dispatch_queue.main.getter();
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v22 + 24) = a1;
      aBlock[4] = sub_10021E040;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008B9920;
      v23 = _Block_copy(aBlock);
      swift_errorRetain();

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10002D150();
      sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
      sub_1000079A4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v23);

      (*(v4 + 8))(v6, v3);
      (*(v27 + 8))(v9, v19);
    }
  }
}

uint64_t sub_10021CE9C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__n128), uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v15 = type metadata accessor for LogMessage.StringInterpolation();
  v16 = __chkstk_darwin(v15 - 8);
  if (a5(v16))
  {
    if (qword_10096D140 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for OSLogger();
    sub_1000056A8(v17, qword_1009CE278);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._object = 0x8000000100807A40;
    v18._countAndFlagsBits = 0xD000000000000010;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    v24[3] = swift_getMetatypeMetadata();
    v24[0] = ObjectType;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v24);
    v19._countAndFlagsBits = 0xD000000000000025;
    v19._object = 0x8000000100807A60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    return a1(v20);
  }

  else
  {
    if (qword_10096D140 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for OSLogger();
    sub_1000056A8(v22, qword_1009CE278);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    type metadata accessor for ReadyObserver();
    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = a2;
    v23[4] = a3;
    v23[5] = a4;
    v23[6] = a5;
    v23[7] = a6;
    swift_beginAccess();

    objc_setAssociatedObject(v7, &unk_10097A040, v23, 0x301);
    swift_endAccess();
  }
}

double sub_10021D284()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 launchedToTest];

  if (v11)
  {
    v13 = sub_10021D774();
    if (v13)
    {
      v14 = v13;
      if ((*(v13 + 48))())
      {
        v18 = v3;
        swift_beginAccess();
        objc_setAssociatedObject(v1, &unk_10097A040, 0, 0x301);
        swift_endAccess();
        sub_1000076C0();
        v15 = static OS_dispatch_queue.main.getter();
        aBlock[4] = sub_10021E0B4;
        aBlock[5] = v14;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100007A08;
        aBlock[3] = &unk_1008B9998;
        v16 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10002D150();
        sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
        sub_1000079A4();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v16);

        (*(v18 + 8))(v5, v2);
        (*(v7 + 8))(v9, v6);
      }

      else
      {
      }
    }
  }

  return result;
}

Swift::Int sub_10021D5CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10021D640(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_10021D694(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008AFCA8, *a1);

  *a2 = v3 != 0;
}

uint64_t sub_10021D708()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10021D774()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_10097A040);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for ReadyObserver();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10003D444(v6);
    return 0;
  }
}

void sub_10021D84C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v4[4] = sub_100055FCC;
  v4[5] = a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100007A08;
  v4[3] = &unk_1008B99C0;
  v3 = _Block_copy(v4);

  [v2 _performBlockAfterCATransactionCommits:v3];
  _Block_release(v3);
}

double sub_10021D938()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  type metadata accessor for PageRenderMetricsPresenter();
  v3 = static PageRenderMetricsPresenter.pageEndNotification.getter();
  Notification.object.getter();
  v4 = v13;
  if (v13)
  {
    v5 = sub_10002A400(v12, v13);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100007000(v12);
  }

  else
  {
    v10 = 0;
  }

  [v2 removeObserver:v1 name:v3 object:v10];

  swift_unknownObjectRelease();
  return sub_10021D284();
}

void sub_10021DBBC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_10021E088;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100007A08;
  v7[3] = &unk_1008B9970;
  v6 = _Block_copy(v7);

  swift_errorRetain();

  [v4 _performBlockAfterCATransactionCommits:v6];
  _Block_release(v6);
}

BOOL sub_10021DCD4(void *a1)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  [a1 contentSize];
  v29 = v3;
  v5 = v4;
  [a1 _effectiveContentInset];
  v7 = v6;
  v30 = v9;
  v31 = v8;
  v11 = v10;
  [a1 frame];
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v16 = CGRectGetHeight(v34);
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for OSLogger();
  sub_1000056A8(v17, qword_1009CE278);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x8000000100808240;
  v18._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v33 = &type metadata for Bool;
  LOBYTE(v32[0]) = v16 - v7 - v11 <= v5;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v32);
  v19._countAndFlagsBits = 0x6E65746E6F632820;
  v19._object = 0xEF203A657A695374;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  type metadata accessor for CGSize(0);
  v33 = v20;
  v32[0] = v29;
  *&v32[1] = v5;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v32);
  v21._countAndFlagsBits = 0x737465736E69202CLL;
  v21._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  type metadata accessor for UIEdgeInsets(0);
  v33 = v22;
  v23 = swift_allocObject();
  v32[0] = v23;
  *(v23 + 16) = v7;
  *(v23 + 24) = v31;
  *(v23 + 32) = v11;
  *(v23 + 40) = v30;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v32);
  v24._countAndFlagsBits = 0x3A656D617266202ELL;
  v24._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  type metadata accessor for CGRect(0);
  v33 = v25;
  v26 = swift_allocObject();
  v32[0] = v26;
  v26[2] = x;
  v26[3] = y;
  v26[4] = width;
  v26[5] = height;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v32);
  v27._countAndFlagsBits = 41;
  v27._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return v16 - v7 - v11 <= v5;
}

uint64_t sub_10021E048()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10021E0D0()
{
  result = qword_10097A100;
  if (!qword_10097A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A100);
  }

  return result;
}

uint64_t sub_10021E13C()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  result = static UIColor.secondaryText.getter();
  byte_1009CE9D0 = 1;
  qword_1009CE9D8 = result;
  return result;
}

char *sub_10021E18C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_id];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_itemType;
  v13 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v14 = &v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_labelMaxWidth];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold];
  *v15 = 0;
  v15[8] = 1;
  v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_allowsTruncation] = 2;
  type metadata accessor for DynamicTypeLabel();
  *&v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_editorsChoiceLabel] = DynamicTypeLabel.__allocating_init(frame:)();
  v16 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_leadingLaurelImageView] = v16;
  v17 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] = v17;
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_leadingLaurelImageView;
  v24 = *&v22[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B0B70;
  *(v25 + 32) = v24;
  v45 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_trailingLaurelImageView;
  v26 = *&v22[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007B0B70;
  *(v27 + 32) = v26;
  v28 = *&v22[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1007B0B70;
  *(v29 + 32) = v28;
  sub_10002849C(&qword_1009711E8, &unk_1007C1200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1E00;
  *(inited + 32) = v25;
  *(inited + 40) = v27;
  *(inited + 48) = v29;
  v31 = v24;
  v32 = v26;
  v33 = v28;
  sub_10071C0E4(inited);
  v35 = v34;
  swift_setDeallocating();
  sub_10002849C(&unk_1009711F0, &unk_1007B2720);
  result = swift_arrayDestroy();
  if (v35 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v37 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
      goto LABEL_10;
    }
  }

  if (v37 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v37; ++i)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v39 = *(v35 + 8 * i + 32);
    }

    v40 = v39;
    [v22 addSubview:{v39, v45}];
  }

LABEL_10:

  [*&v22[v23] setSemanticContentAttribute:3];
  v41 = *&v22[v23];
  if (qword_10096D450 != -1)
  {
    v44 = *&v22[v23];
    swift_once();
    v41 = v44;
  }

  v42 = qword_10097A120;
  [v41 setTintColor:{qword_10097A120, v45}];
  [*&v22[v46] setSemanticContentAttribute:3];
  [*&v22[v46] setTintColor:v42];
  sub_10021E648();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1007B10D0;
  *(v43 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v43 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v22;
}

id sub_10021E648()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v2._object = 0x8000000100808300;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  v4 = String._bridgeToObjectiveC()();

  [v1 setText:v4];

  if (qword_10096D450 != -1)
  {
    swift_once();
  }

  [v1 setTextColor:qword_10097A120];
  [v1 setNumberOfLines:1];
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE60 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MetadataRibbonTextStyle();
  v6 = sub_1000056A8(v5, qword_1009D3728);
  v9[3] = v5;
  v9[4] = sub_100032098();
  v7 = sub_1000056E0(v9);
  (*(*(v5 - 8) + 16))(v7, v6, v5);
  dispatch thunk of DynamicTypeLabel.customTextStyle.setter();
  return [v1 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
}

void sub_10021E7E4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.modifyingTraits(_:)();
  if (qword_10096EE60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for MetadataRibbonTextStyle();
  sub_1000056A8(v4, qword_1009D3728);
  v5.super.isa = MetadataRibbonTextStyle.font(compatibleWith:)(v3).super.isa;
  v6 = [v2 preferredContentSizeCategory];
  v7 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v7)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = [objc_opt_self() configurationWithFont:v5.super.isa scale:v8];

  v10 = *&v1[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v11 = v9;
  [v10 setPreferredSymbolConfiguration:v11];
  [*&v1[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] setPreferredSymbolConfiguration:v11];
}

void sub_10021EAF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  *a4 = v6;
}

uint64_t sub_10021EB60(uint64_t a1)
{
  sub_100047650(a1, *(a1 + 24));
  v1 = UIContentSizeCategoryLarge;
  return UIMutableTraits.preferredContentSizeCategory.setter();
}

id sub_10021EBB4()
{
  if (qword_10096D438 != -1)
  {
    swift_once();
  }

  v1 = qword_1009CE9D8;
  byte_10097A118 = byte_1009CE9D0;
  qword_10097A120 = qword_1009CE9D8;

  return v1;
}

uint64_t sub_10021EC28()
{
  ObjectType = swift_getObjectType();
  v18 = type metadata accessor for LayoutRect();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetadataRibbonEditorsChoiceViewLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v17 = type metadata accessor for MetadataRibbonEditorsChoiceViewLayout();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin(v17).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "layoutSubviews", v7);
  v10 = *&v0[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v26 = sub_100005744(0, &qword_100973120, UIImageView_ptr);
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UIView;
  v25 = v10;
  v11 = *&v0[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v23 = v26;
  v22 = v11;
  v12 = *&v0[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v20 = type metadata accessor for DynamicTypeLabel();
  v21 = &protocol witness table for UILabel;
  v19 = v12;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  static MetadataRibbonEditorsChoiceViewLayout.Metrics.standard.getter();
  MetadataRibbonEditorsChoiceViewLayout.init(leadingLaurelView:trailingLaurelView:textLabel:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  MetadataRibbonEditorsChoiceViewLayout.placeChildren(relativeTo:in:)();
  (*(v2 + 8))(v4, v18);
  return (*(v6 + 8))(v9, v17);
}

double sub_10021EEE8(uint64_t a1, __n128 a2, double a3)
{
  v4 = type metadata accessor for MetadataRibbonEditorsChoiceViewLayout.Metrics();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for MetadataRibbonEditorsChoiceViewLayout();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_leadingLaurelImageView);
  v19 = sub_100005744(0, &qword_100973120, UIImageView_ptr);
  v20 = &protocol witness table for UIView;
  v18[10] = &protocol witness table for UIView;
  v18[11] = v9;
  v10 = *(v3 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_trailingLaurelImageView);
  v18[9] = v19;
  v18[6] = v10;
  v11 = *(v3 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v18[4] = type metadata accessor for DynamicTypeLabel();
  v18[5] = &protocol witness table for UILabel;
  v18[1] = v11;
  v12 = v9;
  v13 = v10;
  v14 = v11;
  static MetadataRibbonEditorsChoiceViewLayout.Metrics.standard.getter();
  MetadataRibbonEditorsChoiceViewLayout.init(leadingLaurelView:trailingLaurelView:textLabel:metrics:)();
  MetadataRibbonEditorsChoiceViewLayout.measurements(fitting:in:)();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  return v16;
}

uint64_t type metadata accessor for MetadataRibbonEditorsChoiceView(uint64_t a1)
{
  result = qword_10097A170;
  if (!qword_10097A170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10021F24C(uint64_t a1)
{
  sub_1000315A0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10021F314@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB98, &unk_1007B10B0);
}

uint64_t sub_10021F37C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB98, &unk_1007B10B0);
  return swift_endAccess();
}

void sub_10021F458(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_10021F524(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_10021F5E4()
{
  v1 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10021F628(char a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10021F6D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB90, &qword_1007B2A50);
}

uint64_t sub_10021F740(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB90, &qword_1007B2A50);
  return swift_endAccess();
}

double sub_10021F834(uint64_t a1, void *a2, __n128 a3, double a4)
{
  v82 = a2;
  v69 = a1;
  v4 = type metadata accessor for MetadataRibbonEditorsChoiceViewLayout.Metrics();
  __chkstk_darwin(v4 - 8);
  v78 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for MetadataRibbonEditorsChoiceViewLayout();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ImagePlaceholder();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ImageAppearance();
  v85 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v67 - v10;
  __chkstk_darwin(v11);
  v84 = &v67 - v12;
  v68 = type metadata accessor for LabelPlaceholder();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DynamicTextAppearance();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v67 - v20;
  __chkstk_darwin(v22);
  v24 = &v67 - v23;
  DynamicTextAppearance.init()();
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE60 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for MetadataRibbonTextStyle();
  v26 = sub_1000056A8(v25, qword_1009D3728);
  v93[3] = v25;
  v93[4] = sub_100032098();
  v27 = sub_1000056E0(v93);
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  DynamicTextAppearance.withCustomTextStyle(_:)();
  v28 = *(v16 + 8);
  v28(v18, v15);
  sub_100007000(v93);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v83 = v15;
  v72 = v16 + 8;
  v71 = v28;
  v28(v21, v15);
  v29 = MetadataRibbonItem.useAdsLocale.getter();
  v30 = 0x8000000100808300;
  if (v29)
  {
    v31 = 0xD00000000000001ALL;
    localizedStringForAdsLanguage(_:)(*(&v30 - 1));
  }

  else
  {
    v32 = 0xD00000000000001ALL;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    localizedString(_:comment:)(*(&v30 - 1), v33);
  }

  v34 = v73;
  v35 = *(v16 + 16);
  v73 = v24;
  v35(v21, v24, v83);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.layoutTextView.getter();
  (*(v67 + 8))(v14, v68);
  v36 = v70;
  ImageAppearance.init()();
  v37 = v82;
  v38 = [v82 traitCollection];
  v39 = UITraitCollection.modifyingTraits(_:)();
  v40.super.isa = MetadataRibbonTextStyle.font(compatibleWith:)(v39).super.isa;
  v41 = [v38 preferredContentSizeCategory];
  v42 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v42)
  {
    v43 = 3;
  }

  else
  {
    v43 = 1;
  }

  v44 = [objc_opt_self() configurationWithFont:v40.super.isa scale:v43];

  v45 = v84;
  ImageAppearance.withSymbolConfiguration(_:)();

  v46 = v85;
  v47 = v77;
  v70 = *(v85 + 8);
  v69 = v85 + 8;
  (v70)(v36, v77);
  if (qword_10096D440 != -1)
  {
    swift_once();
  }

  v48 = qword_10097A108;
  v49 = *(v46 + 16);
  v85 = v46 + 16;
  v49(v34, v45, v47);
  v50 = v48;
  v51 = v74;
  ImagePlaceholder.init(_:with:)();
  v52 = [v37 traitCollection];
  ImagePlaceholder.measure(toFit:with:)();
  v68 = v53;
  v67 = v54;

  v55 = *(v75 + 8);
  v56 = v76;
  v55(v51, v76);
  if (qword_10096D448 != -1)
  {
    swift_once();
  }

  v57 = qword_10097A110;
  v49(v34, v45, v47);
  v58 = v57;
  ImagePlaceholder.init(_:with:)();
  v59 = [v37 traitCollection];
  ImagePlaceholder.measure(toFit:with:)();

  v55(v51, v56);
  v60 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v61 = LayoutViewPlaceholder.init(measurements:)();
  swift_allocObject();
  v62 = LayoutViewPlaceholder.init(measurements:)();
  v91 = v60;
  v92 = &protocol witness table for LayoutViewPlaceholder;
  v89 = &protocol witness table for LayoutViewPlaceholder;
  v90 = v61;
  v88 = v60;
  v87 = v62;
  sub_10002C0AC(v93, v86);

  static MetadataRibbonEditorsChoiceViewLayout.Metrics.standard.getter();
  v63 = v79;
  MetadataRibbonEditorsChoiceViewLayout.init(leadingLaurelView:trailingLaurelView:textLabel:metrics:)();
  MetadataRibbonEditorsChoiceViewLayout.measurements(fitting:in:)();
  v65 = v64;

  (*(v80 + 8))(v63, v81);
  (v70)(v84, v47);
  sub_100007000(v93);
  v71(v73, v83);
  return v65;
}

id sub_100220250(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v4 = MetadataRibbonItem.useAdsLocale.getter();
  v5 = 0x8000000100808300;
  if (v4)
  {
    v6 = 0xD00000000000001ALL;
    localizedStringForAdsLanguage(_:)(*(&v5 - 1));
  }

  else
  {
    v7 = 0xD00000000000001ALL;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    localizedString(_:comment:)(*(&v5 - 1), v8);
  }

  v9 = String._bridgeToObjectiveC()();

  [v3 setText:v9];

  v10 = *(v1 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_trailingLaurelImageView);
  if (qword_10096D448 != -1)
  {
    swift_once();
  }

  v11 = qword_10097A110;
  v12 = [v10 layer];
  [v12 removeAllAnimations];

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  [v10 setImage:v13];
  v14 = *(v2 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_leadingLaurelImageView);
  if (qword_10096D440 != -1)
  {
    swift_once();
  }

  v15 = qword_10097A108;
  v16 = [v14 layer];
  [v16 removeAllAnimations];

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  return [v14 setImage:v17];
}

uint64_t sub_100220418()
{

  return swift_deallocClassInstance();
}

double sub_100220484(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for RiverTodayCardCollectionViewCell(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView);
    v8 = v6;
    v9 = a1;
    v10 = v7;
    dispatch thunk of RiverView.isAnimating.setter();

    v11 = *(v8 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView);
    v12 = v11[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating];
    v11[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = 1;
    if ((v12 & 1) == 0)
    {
      v13 = v11;
LABEL_4:
      sub_1004A3758();
    }
  }

  else
  {
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    v19 = swift_dynamicCastClass();
    if (!v19)
    {
      goto LABEL_6;
    }

    v20 = v19;
    v21 = *(v19 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView);
    v22 = a1;
    if (v21)
    {
      v23 = v21;
      dispatch thunk of RiverView.isAnimating.setter();
    }

    v24 = *(v20 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
    v9 = a1;
    if (v24)
    {
      v25 = v24[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating];
      v24[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = 1;
      v9 = a1;
      if ((v25 & 1) == 0)
      {
        v13 = a1;
        v9 = v24;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (v14 && a1)
  {
    v16 = v14;
    type metadata accessor for TodayCard();
    sub_1002208A0();
    v17 = a1;
    ItemLayoutContext.typedModel<A>(as:)();
    if (v26)
    {
      ObjectType = swift_getObjectType();
      (*(v16 + 192))(*(v4 + 24), ObjectType, v16);
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (TodayCard.searchAdOpportunity.getter())
        {
          SearchAdOpportunity.searchAd.getter();
        }

        swift_getObjectType();
        dispatch thunk of SearchAdDisplaying.apply(searchAd:asPartOf:)();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

id sub_100220710(void *a1)
{
  type metadata accessor for RiverTodayCardCollectionViewCell(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView);
    v4 = v2;
    v5 = a1;
    v6 = v3;
    dispatch thunk of RiverView.isAnimating.setter();

    v7 = *(v4 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView);
    v8 = v7[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating];
    v7[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = 0;
    if (v8 == 1)
    {
      v9 = v7;
LABEL_4:
      sub_1004A3758();
    }
  }

  else
  {
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = v11;
    v13 = *(v11 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverView);
    v14 = a1;
    if (v13)
    {
      v15 = v13;
      dispatch thunk of RiverView.isAnimating.setter();
    }

    v16 = *(v12 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_riverBackgroundView);
    v5 = a1;
    if (v16)
    {
      v17 = v16[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating];
      v16[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = 0;
      v5 = a1;
      if (v17 == 1)
      {
        v9 = a1;
        v5 = v16;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {

    return [a1 setHidden:0];
  }

  return result;
}

unint64_t sub_1002208A0()
{
  result = qword_100977390;
  if (!qword_100977390)
  {
    type metadata accessor for TodayCard();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977390);
  }

  return result;
}

char *sub_1002208F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = OBJC_IVAR____TtC8AppStore20ProductNoRatingsView_statusLabel;
  if (qword_10096DF08 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D0C98);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = *(v12 + 104);
  v22(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v18] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC8AppStore20ProductNoRatingsView_statusLabel;
  v30 = *&v28[OBJC_IVAR____TtC8AppStore20ProductNoRatingsView_statusLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 grayColor];
  [v32 setTextColor:v33];

  v34 = *&v28[v29];
  v22(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v35 = v34;
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  [v28 addSubview:*&v28[v29]];
  return v28;
}

double sub_100220D7C(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v6 = type metadata accessor for DynamicTextAppearance();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v11 = type metadata accessor for LabelPlaceholder();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  DynamicTextAppearance.init()();
  if (qword_10096DF08 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  sub_1000056A8(v15, qword_1009D0C98);
  DynamicTextAppearance.withFontUseCase(_:)();
  (*(v7 + 8))(v9, v6);
  LabelPlaceholder.Options.init(rawValue:)();

  LabelPlaceholder.init(_:with:where:)();
  v16 = [a3 traitCollection];
  LabelPlaceholder.measure(toFit:with:)();
  v18 = v17;

  (*(v12 + 8))(v14, v11);
  return v18;
}

void sub_100220FF0()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC8AppStore20ProductNoRatingsView_statusLabel;
  if (qword_10096DF08 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, qword_1009D0C98);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v9) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10022125C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v28 = a2;
  v29 = type metadata accessor for ShelfBackground();
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v15 = *(v9 + 8);
  v15(v14, v8);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v15(v11, v8);
  v16 = v27;
  sub_100221524(v30);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  (*(v16 + 8))(v7, v28, a3, v16, v18, v20, v22, v24);
  return (*(v5 + 8))(v7, v29);
}

uint64_t sub_1002214F8@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.header.getter();
  *a1 = result;
  return result;
}

void sub_100221524(uint64_t a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (ShelfHeader.hasTrailingArtwork.getter() & 1) != 0)
  {
    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for StaticDimension();
    sub_1000056A8(v6, qword_1009D2430);
    ShelfLayoutContext.traitEnvironment.getter();
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1002216B8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_100221760()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&unk_10097A3F0, &unk_1007C1628);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "prepareForReuse", v8);
  v11 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_renderingTask;
  if (*&v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_renderingTask])
  {

    Task.cancel()();
  }

  *&v1[v11] = 0;

  UUID.init()();
  v12 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
  swift_beginAccess();
  (*(v7 + 40))(&v1[v12], v10, v6);
  swift_endAccess();
  ArtworkView.image.setter();
  v13 = *&v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  [v13 setHidden:1];
  v14 = &v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v14 = 0;
  *(v14 + 1) = 0;

  v15 = *(v14 + 1);
  if (v15)
  {
    v16 = *v14;
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      v18 = String._bridgeToObjectiveC()();

      [v13 setText:v18];

      [v13 setHidden:0];
    }
  }

  [v1 setNeedsLayout];
  [*&v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleLabel] setHidden:1];
  v19 = &v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v19 = 0;
  *(v19 + 1) = 0;

  sub_10022299C();
  v20 = type metadata accessor for ChartOrCategoryBrickContext();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_10022696C(v5, &v1[v21]);
  swift_endAccess();
  return [*&v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_imageView] setImage:0];
}

uint64_t sub_100221AA8(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_10097A3E0, &qword_1007C1618);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v6)
  {
    return sub_10002B894(&v5, &qword_10097A3E8, &qword_1007C1620);
  }

  sub_100005A38(&v5, v7);
  v3 = [sub_100079F24() traitCollection];
  swift_unknownObjectRelease();
  sub_10022484C(v7, v3, a2);

  return sub_100007000(v7);
}

uint64_t sub_100221B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002849C(&qword_10098A2E0, &qword_1007BAEA0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100031660(a3, v25 - v10, &qword_10098A2E0, &qword_1007BAEA0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002B894(v11, &qword_10098A2E0, &qword_1007BAEA0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10002B894(a3, &qword_10098A2E0, &qword_1007BAEA0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002B894(a3, &qword_10098A2E0, &qword_1007BAEA0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100221E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002849C(&qword_10098A2E0, &qword_1007BAEA0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100031660(a3, v25 - v10, &qword_10098A2E0, &qword_1007BAEA0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002B894(v11, &qword_10098A2E0, &qword_1007BAEA0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10002849C(&qword_10097A428, &qword_1007C1718);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10002B894(a3, &qword_10098A2E0, &qword_1007BAEA0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002B894(a3, &qword_10098A2E0, &qword_1007BAEA0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10002849C(&qword_10097A428, &qword_1007C1718);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100222234(uint64_t a1, int a2)
{
  v29 = a2;
  v30 = a1;
  v27[1] = *v2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27[0] = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100978190, &qword_1007BD3C8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v27 - v8;
  v10 = sub_10002849C(&qword_10097A450, qword_1007BD3D0);
  __chkstk_darwin(v10 - 8);
  v31 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v27 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = v27 - v17;
  (*(v2 + qword_10097A2A8))(v16);
  v19 = *(v4 + 16);
  v28 = v2;
  v19(v14, v2 + qword_10097A2A0, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v20 = *(v7 + 56);
  sub_100031660(v18, v9, &qword_10097A450, qword_1007BD3D0);
  sub_100031660(v14, &v9[v20], &qword_10097A450, qword_1007BD3D0);
  v21 = *(v4 + 48);
  if (v21(v9, 1, v3) != 1)
  {
    sub_100031660(v9, v31, &qword_10097A450, qword_1007BD3D0);
    if (v21(&v9[v20], 1, v3) != 1)
    {
      v23 = v27[0];
      (*(v4 + 32))(v27[0], &v9[v20], v3);
      sub_10022868C(&qword_100978198, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = v31;
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v4 + 8);
      v26(v23, v3);
      sub_10002B894(v14, &qword_10097A450, qword_1007BD3D0);
      sub_10002B894(v18, &qword_10097A450, qword_1007BD3D0);
      v26(v24, v3);
      result = sub_10002B894(v9, &qword_10097A450, qword_1007BD3D0);
      if ((v25 & 1) == 0)
      {
        return result;
      }

      return dispatch thunk of ImageViewProtocol.show(image:isAnimationPermitted:)();
    }

    sub_10002B894(v14, &qword_10097A450, qword_1007BD3D0);
    sub_10002B894(v18, &qword_10097A450, qword_1007BD3D0);
    (*(v4 + 8))(v31, v3);
    return sub_10002B894(v9, &qword_100978190, &qword_1007BD3C8);
  }

  sub_10002B894(v14, &qword_10097A450, qword_1007BD3D0);
  sub_10002B894(v18, &qword_10097A450, qword_1007BD3D0);
  if (v21(&v9[v20], 1, v3) != 1)
  {
    return sub_10002B894(v9, &qword_100978190, &qword_1007BD3C8);
  }

  sub_10002B894(v9, &qword_10097A450, qword_1007BD3D0);
  return dispatch thunk of ImageViewProtocol.show(image:isAnimationPermitted:)();
}

uint64_t sub_10022271C()
{
  swift_unknownObjectRelease();
  v1 = qword_10097A2A0;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100222798()
{
  sub_10022271C();

  return swift_deallocClassInstance();
}

Swift::Int sub_100222804()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

void (*sub_100222854(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_10022218C();
  return sub_10022289C;
}

void sub_10022289C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1002221E0(v2);
  }

  else
  {
    sub_1002221E0(*a1);
  }
}

Swift::Int sub_100222950(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1002226E4();
  return Hasher._finalize()();
}

id sub_10022299C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleText + 8];
  if (v2)
  {
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = *&v0[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleText] & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = *&v0[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleLabel];

      dispatch thunk of DynamicTypeTextView.hyphenationFactor.setter();
      v5 = String._bridgeToObjectiveC()();

      [v4 setText:v5];

      [v4 setHidden:0];
    }
  }

  return [v1 setNeedsLayout];
}

char *sub_100222A74(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for CornerStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_itemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v4[v17] = DynamicTypeLabel.__allocating_init(frame:)();
  v18 = &v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_brickContext;
  v21 = type metadata accessor for ChartOrCategoryBrickContext();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  *&v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_renderingTask] = 0;
  UUID.init()();
  *&v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_backgroundGradient] = [objc_allocWithZone(type metadata accessor for ThreeDimensionalArtworkGradientBackgroundView()) init];
  v22 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_artworkView;
  *&v5[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_artworkView] = v22;
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v24 = v22;
  ArtworkView.setCorner(radius:style:)();

  (*(v12 + 8))(v14, v11);
  v25 = *&v5[v23];
  ArtworkView.frameUpdatesImageSize.setter();

  v26 = *&v5[v23];
  ArtworkView.clipImageToBounds.setter();

  v27 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_imageView] = v27;
  [v27 _setCornerRadius:12.0];
  v28 = [objc_allocWithZone(type metadata accessor for DynamicTypeTextView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v29 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleLabel;
  *&v5[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleLabel] = v28;
  v30 = objc_opt_self();
  v31 = v28;
  v32 = [v30 clearColor];
  [v31 setBackgroundColor:v32];

  [*&v5[v29] setEditable:0];
  [*&v5[v29] setSelectable:0];
  [*&v5[v29] setUserInteractionEnabled:0];
  v33 = *&v5[v29];
  dispatch thunk of DynamicTypeTextView.attributedTextShouldOverrideTextViewAttributes.setter();

  v34 = [v30 redColor];
  v35 = sub_1002231CC(v34);

  *&v5[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea] = v35;
  v36 = [v30 blackColor];
  v37 = sub_1002231CC(v36);

  *&v5[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea] = v37;
  v38 = *&v5[v29];
  dispatch thunk of DynamicTypeTextView.lineBreakMode.setter();

  v60.receiver = v5;
  v60.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  v40 = [v30 clearColor];
  [v39 setBackgroundColor:v40];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v39 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v44 = [v39 contentView];
  [v44 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v45 = [v39 contentView];
  [v45 addSubview:*&v39[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_artworkView]];

  v46 = [v39 contentView];
  [v46 addSubview:*&v39[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_backgroundGradient]];

  v47 = [v39 contentView];
  [v47 addSubview:*&v39[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_imageView]];

  v48 = [v39 contentView];
  [v48 addSubview:*&v39[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleLabel]];

  v49 = [v39 contentView];
  v50 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  [v49 addSubview:*&v39[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_badgeLabel]];

  v51 = [*&v39[v50] layer];
  [v51 setCompositingFilter:kCAFilterPlusL];

  v52 = *&v39[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
  if (v52)
  {
    v53 = v52;
    v54 = [v39 contentView];
    [v54 addSubview:v53];
  }

  v55 = *&v39[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea];
  if (v55)
  {
    v56 = v55;
    v57 = [v39 contentView];
    [v57 addSubview:v56];
  }

  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1007B10D0;
  *(v58 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v58 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v39;
}

id sub_1002231CC(void *a1)
{
  if ((byte_100993288 & 1) == 0)
  {

    goto LABEL_5;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
LABEL_5:
    v3 = [objc_allocWithZone(UIView) init];
    v4 = [v3 layer];
    v5 = [a1 CGColor];
    [v4 setBorderColor:v5];

    v6 = [v3 layer];
    [v6 setBorderWidth:1.0];

    return v3;
  }

  return 0;
}

void sub_100223324()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v77 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for LayoutRect();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_10097A3F0, &unk_1007C1628);
  __chkstk_darwin(v5 - 8);
  v7 = v70 - v6;
  v8 = type metadata accessor for ChartOrCategoryBrickContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = v70 - v14;
  v81.receiver = v1;
  v81.super_class = ObjectType;
  objc_msgSendSuper2(&v81, "layoutSubviews", v13);
  v16 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_100031660(&v1[v16], v7, &unk_10097A3F0, &unk_1007C1628);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002B894(v7, &unk_10097A3F0, &unk_1007C1628);
    return;
  }

  (*(v9 + 32))(v15, v7, v8);
  sub_100223C80();

  LayoutMarginsAware<>.layoutFrame.getter();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v1 traitCollection];
  sub_100224304(v25, v82, v18, v20, v22, v24);
  v26 = *v82;
  v27 = *&v82[1];
  v28 = *&v82[2];
  v29 = *&v82[3];
  v78 = v83;

  v30 = *&v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleLabel];
  v31 = [v30 textContainer];
  v32 = [v31 exclusionPaths];

  v33 = sub_100005744(0, &qword_10097A430, UIBezierPath_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v70[1] = v33;
  LOBYTE(v32) = Array.isNotEmpty.getter();

  if (v32)
  {
    v34 = [v30 textContainer];
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v34 setExclusionPaths:isa];
  }

  if (v83)
  {
    v36 = *&v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
    if (!v36)
    {
      goto LABEL_13;
    }

    if (v78)
    {
      v37 = 0.0;
      v78 = 1;
      v38 = 0.0;
      v39 = 0.0;
      v40 = 0.0;
LABEL_11:
      [v36 setFrame:{v37, v38, v39, v40}];
      goto LABEL_13;
    }

LABEL_10:
    v78 = 0;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v40 = v29;
    goto LABEL_11;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  v36 = *&v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
  if (v36)
  {
    goto LABEL_10;
  }

  v78 = 0;
LABEL_13:
  v45 = [v1 contentView];
  [v45 bounds];

  dispatch thunk of ThreeDimensionalArtworkGradientBackgroundView.gradientViewFrame.setter();
  v46 = *&v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_imageView];
  if ([v46 isHidden])
  {
    v46 = *&v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_artworkView];
  }

  v47 = v46;
  (*(v9 + 16))(v11, v15, v8);
  v48 = *&v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  v80[3] = type metadata accessor for DynamicTypeLabel();
  v80[4] = &protocol witness table for UILabel;
  v80[0] = v48;
  v79[8] = type metadata accessor for DynamicTypeTextView();
  v79[9] = sub_10022868C(&qword_10097A438, &type metadata accessor for DynamicTypeTextView, &protocol conformance descriptor for DynamicTypeTextView);
  v79[5] = v30;
  v49 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v79[4] = &protocol witness table for UIView;
  v79[3] = v49;
  v79[0] = v47;
  v50 = v48;
  v51 = v30;
  v71 = v47;
  v52 = v74;
  ChartOrCategoryBrickCollectionViewCellLayout.init(context:badgeTextView:titleTextView:artworkView:textExclusionRect:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v53 = v72;
  ChartOrCategoryBrickCollectionViewCellLayout.placeChildren(relativeTo:in:)();
  (*(v76 + 8))(v52, v77);
  (*(v73 + 8))(v53, v75);
  LOBYTE(v80[0]) = 2;
  if ((v78 & 1) != 0 || (sub_100224740(v80, v1) & 1) == 0)
  {
    v69 = *&v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea];
    if (v69)
    {
      [v69 setFrame:{0.0, 0.0, 0.0, 0.0}];

      goto LABEL_21;
    }

    (*(v9 + 8))(v15, v8);
  }

  else
  {
    v54 = [v51 font];
    if (v54)
    {
      v55 = v54;
      [v54 lineHeight];
      v57 = v56;

      v58 = v26 + 0.0;
      v59 = v27 + 0.0;
      v60 = v28 + 0.0;
      v61 = v29 + v57 * -0.5;
      [*&v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea] setFrame:{v58, v59, v60, v61}];
      v62 = [v51 textContainer];
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1007B0B70;
      [v1 convertRect:v51 toCoordinateSpace:{v58, v59, v60, v61}];
      *(v63 + 32) = [objc_opt_self() bezierPathWithRect:{v64, v65, v66, v67}];
      v68 = Array._bridgeToObjectiveC()().super.isa;

      [v62 setExclusionPaths:v68];

LABEL_21:
      (*(v9 + 8))(v15, v8);
      return;
    }

    __break(1u);
  }
}

uint64_t sub_100223C80()
{
  v1 = v0;
  v2 = type metadata accessor for Artwork.Crop();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspectRatio();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChartOrCategoryBrickStyle();
  v41 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_10097A3F0, &unk_1007C1628);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v16 = type metadata accessor for ChartOrCategoryBrickContext();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_100031660(&v1[v20], v15, &unk_10097A3F0, &unk_1007C1628);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10002B894(v15, &unk_10097A3F0, &unk_1007C1628);
    return 0;
  }

  (*(v17 + 32))(v19, v15, v16);
  if (!ChartOrCategoryBrickContext.currentArtwork.getter())
  {
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  ChartOrCategoryBrickContext.style.getter();
  v21 = v41;
  v22 = (*(v41 + 88))(v12, v10);
  if (v22 == enum case for ChartOrCategoryBrickStyle.tile(_:) || v22 == enum case for ChartOrCategoryBrickStyle.pill(_:))
  {
    [v1 frame];
    Artwork.size.getter();
    v26 = v37;
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(filling:)();
    (*(v38 + 8))(v26, v39);
    Artwork.contentMode.getter();
  }

  else
  {
    if (v22 != enum case for ChartOrCategoryBrickStyle.round(_:))
    {
      (*(v17 + 8))(v19, v16);

      (*(v21 + 8))(v12, v10);
      return 0;
    }

    v23 = v34;
    ChartOrCategoryBrickContext.layoutMetrics.getter();
    ChartOrCategoryBrickCollectionViewCellLayout.Metrics.artworkSize.getter();
    v25 = v24;
    (*(v35 + 8))(v23, v36);
    if (v25)
    {
      (*(v17 + 8))(v19, v16);

      return 0;
    }

    v30 = v31;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v32 + 8))(v30, v33);
  }

  v27 = Artwork.config(_:mode:prefersLayeredImage:)();
  v28 = *&v1[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_artworkView];
  Artwork.style.getter();
  ArtworkView.style.setter();
  [v28 setContentMode:Artwork.contentMode.getter()];
  ArtworkLoaderConfig.size.getter();
  ArtworkView.imageSize.setter();
  if (!Artwork.backgroundColor.getter())
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    static UIColor.placeholderBackground.getter();
  }

  ArtworkView.backgroundColor.setter();

  (*(v17 + 8))(v19, v16);
  return v27;
}

uint64_t sub_100224304@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  *&v41 = a1;
  v11 = type metadata accessor for ChartOrCategoryBrickSafeArea.Location.RelativeLocation();
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = type metadata accessor for ChartOrCategoryBrickSafeArea.Location();
  *&v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&unk_10097A440, &unk_1007C1730);
  __chkstk_darwin(v16 - 8);
  v18 = &v38 - v17;
  v19 = type metadata accessor for ChartOrCategoryBrickSafeArea();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChartOrCategoryBrickContext.model.getter();
  sub_10002A400(v42, v42[3]);
  dispatch thunk of ChartOrCategoryBrick.artworkSafeArea.getter();
  v23 = (*(v20 + 48))(v18, 1, v19);
  if (v23 == 1)
  {
    sub_10002B894(v18, &unk_10097A440, &unk_1007C1730);
    result = sub_100007000(v42);
    v25 = 0uLL;
    v26 = 0uLL;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    sub_100007000(v42);
    ChartOrCategoryBrickSafeArea.location.getter();
    ChartOrCategoryBrickSafeArea.Location.relativeLocation.getter();
    v27 = sub_100228470(v13, [v38 effectiveUserInterfaceLayoutDirection]);
    ChartOrCategoryBrickSafeArea.size(in:)();
    ChartOrCategoryBrickSafeArea.Location.absoluteDistance(in:)();
    if (v27 != 3 && v27)
    {
      v44.origin.x = a3;
      v44.origin.y = a4;
      v44.size.width = a5;
      v44.size.height = a6;
      CGRectGetMinX(v44);
    }

    else
    {
      v43.origin.x = a3;
      v43.origin.y = a4;
      v43.size.width = a5;
      v43.size.height = a6;
      CGRectGetMaxX(v43);
    }

    v28 = v40;
    v29 = v39;
    v30 = a3;
    v31 = a4;
    v32 = a5;
    v33 = a6;
    if (v27 > 1u)
    {
      CGRectGetMidY(*&v30);
    }

    else
    {
      CGRectGetMinY(*&v30);
    }

    CGRect.withLayoutDirection(using:relativeTo:)();
    v39 = v34;
    v40 = v35;
    v38 = v36;
    v41 = v37;
    (*(v29 + 8))(v15, v28);
    result = (*(v20 + 8))(v22, v19);
    *&v26 = v38;
    *&v25 = v39;
    *(&v25 + 1) = v40;
    *(&v26 + 1) = v41;
  }

  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v23 == 1;
  return result;
}

id sub_100224740(_BYTE *a1, uint64_t a2)
{
  LODWORD(v2) = *a1;
  if (v2 != 2)
  {
    return (v2 & 1);
  }

  v4 = *(a2 + OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleLabel);
  [v4 frame];
  Height = CGRectGetHeight(v9);
  result = [v4 font];
  if (result)
  {
    v2 = result;
    [result lineHeight];
    v8 = v7;

    LOBYTE(v2) = v8 * 1.5 < Height;
    swift_beginAccess();
    *a1 = v2;
    return (v2 & 1);
  }

  __break(1u);
  return result;
}

id sub_10022484C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v55 = a3;
  v59 = a2;
  v6 = sub_10002849C(&unk_10097A3F0, &unk_1007C1628);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_10002849C(&qword_10098A2E0, &qword_1007BAEA0);
  __chkstk_darwin(v9 - 8);
  v57 = &v49 - v10;
  v11 = type metadata accessor for UUID();
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  __chkstk_darwin(v11);
  v58 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  sub_10002A400(a1, a1[3]);
  if (dispatch thunk of ChartOrCategoryBrick.artworks.getter())
  {

    v16 = *&v3[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_backgroundGradient];
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor:v17];

    [v16 setHidden:0];
    [*&v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_imageView] setHidden:1];
    [*&v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_artworkView] setHidden:0];
  }

  sub_10002A400(a1, a1[3]);
  if (dispatch thunk of ThreeDimensionalArtworkModel.collectionIcons.getter())
  {
    type metadata accessor for Artwork();
    v18 = Array.isNotEmpty.getter();

    if (v18)
    {
      sub_10002A400(a1, a1[3]);
      v19 = dispatch thunk of ThreeDimensionalArtworkModel.backgroundColor.getter();
      if (v19)
      {
        v20 = v19;
        type metadata accessor for ThreeDimensionalAppIconSnapshotter();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v54 = v20;
        v55 = *&v61[0];
        v21 = *&v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_backgroundGradient];
        [v21 setBackgroundColor:v20];
        [v21 setHidden:0];
        [*&v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_imageView] setHidden:0];
        [*&v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_artworkView] setHidden:1];
        UUID.init()();
        v22 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
        swift_beginAccess();
        v23 = v56;
        (*(v56 + 40))(&v4[v22], v15, v11);
        swift_endAccess();
        v24 = *(v23 + 16);
        v24(v58, &v4[v22], v11);
        v53 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_renderingTask;
        if (*&v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_renderingTask])
        {

          Task.cancel()();
        }

        v25 = type metadata accessor for TaskPriority();
        (*(*(v25 - 8) + 56))(v57, 1, 1, v25);
        v52 = v15;
        v24(v15, v58, v11);
        sub_10002C0AC(a1, v61);
        type metadata accessor for MainActor();
        v50 = v4;

        v51 = v59;
        v49 = static MainActor.shared.getter();
        v26 = v56;
        v27 = (*(v56 + 80) + 40) & ~*(v56 + 80);
        v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
        v29 = (v28 + 47) & 0xFFFFFFFFFFFFFFF8;
        v30 = swift_allocObject();
        *(v30 + 2) = v49;
        *(v30 + 3) = &protocol witness table for MainActor;
        *(v30 + 4) = v50;
        (*(v26 + 32))(&v30[v27], v52, v11);
        sub_100005A38(v61, &v30[v28]);
        *&v30[v29] = v55;
        *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v51;
        v31 = sub_100221B78(0, 0, v57, &unk_1007C1640, v30);

        (*(v26 + 8))(v58, v11);
        *&v4[v53] = v31;
      }
    }
  }

  sub_10002C0AC(a1, v61);
  sub_10002C0AC(v61, v60);
  v32 = v59;
  ChartOrCategoryBrickContext.init(model:fontStyles:in:)();
  sub_100007000(v61);
  v33 = type metadata accessor for ChartOrCategoryBrickContext();
  (*(*(v33 - 8) + 56))(v8, 0, 1, v33);
  v34 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_10022696C(v8, &v4[v34]);
  swift_endAccess();
  sub_100225664(v35);
  sub_10002A400(a1, a1[3]);
  v36 = dispatch thunk of ChartOrCategoryBrick.brickTitle.getter();
  v38 = v37;
  [*&v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleLabel] setHidden:1];
  v39 = &v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v39 = v36;
  v39[1] = v38;

  sub_10022299C();
  sub_10002A400(a1, a1[3]);
  v40 = dispatch thunk of ChartOrCategoryBrick.brickBadge.getter();
  v42 = v41;
  v43 = *&v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  [v43 setHidden:1];
  v44 = &v4[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v44 = v40;
  v44[1] = v42;

  v45 = v44[1];
  if (v45)
  {
    v46 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v46 = *v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {

      v47 = String._bridgeToObjectiveC()();

      [v43 setText:v47];

      [v43 setHidden:0];
    }
  }

  [v4 setNeedsLayout];
  return [v4 setNeedsLayout];
}

uint64_t sub_100224FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = type metadata accessor for UUID();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[16] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[17] = v11;
  v8[18] = v10;

  return _swift_task_switch(sub_1002250E4, v11, v10);
}

uint64_t sub_1002250E4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[8];
  v6 = *&v5[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_imageView];
  (*(v2 + 16))(v1, v0[9], v3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10002849C(&qword_10097A400, &unk_1007C1660);
  v8 = swift_allocObject();
  v0[19] = v8;
  *(v8 + 16) = v6;
  (*(v2 + 32))(v8 + qword_10097A2A0, v1, v3);
  v9 = (v8 + qword_10097A2A8);
  *v9 = sub_100226DDC;
  v9[1] = v7;
  v0[7] = v5;
  v10 = v4[3];
  v11 = v4[4];
  v12 = sub_10002A400(v4, v10);
  v0[5] = v10;
  v0[6] = *(v11 + 8);
  v13 = sub_1000056E0(v0 + 2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  v14 = v6;
  v15 = [v5 contentView];
  [v15 frame];
  v17 = v16;
  v19 = v18;

  v20 = sub_100226DE4();

  v21 = swift_task_alloc();
  v0[20] = v21;
  v22 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell(0);
  v23 = sub_10022868C(&qword_10097A410, type metadata accessor for ChartOrCategoryBrickCollectionViewCell, &unk_1007C14D0);
  *v21 = v0;
  v21[1] = sub_100225374;
  v24 = v0[11];
  v25 = v0[12];
  v26 = v0[9];
  v27.n128_u64[0] = v17;
  v28.n128_u64[0] = v19;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:checking:into:traitCollection:)(v0 + 2, v24, v26, v8, v20, v25, v22, v23, v27, v28);
}

uint64_t sub_100225374()
{
  v1 = *v0;

  sub_100007000(v1 + 2);
  v2 = v1[18];
  v3 = v1[17];

  return _swift_task_switch(sub_1002254BC, v3, v2);
}

uint64_t sub_1002254BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100225530@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
    v5 = Strong;
    swift_beginAccess();
    v6 = type metadata accessor for UUID();
    v7 = *(v6 - 8);
    (*(v7 + 16))(a2, &v5[v4], v6);

    return (*(v7 + 56))(a2, 0, 1, v6);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_100225664(__n128 a1)
{
  v2 = v1;
  v69 = type metadata accessor for ChartOrCategoryBrickStyle();
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v72 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v73 = &v59 - v5;
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v68 = &v59 - v7;
  v70 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics();
  v78 = *(v70 - 8);
  __chkstk_darwin(v70);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics();
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_10097A3F0, &unk_1007C1628);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = type metadata accessor for ChartOrCategoryBrickContext();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_100031660(&v2[v20], v15, &unk_10097A3F0, &unk_1007C1628);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_10002B894(v15, &unk_10097A3F0, &unk_1007C1628);
  }

  v64 = v17;
  v22 = *(v17 + 32);
  v65 = v16;
  v22(v19, v15, v16);
  v23 = [v2 traitCollection];
  v24 = UITraitCollection.modifyingTraits(_:)();

  v75 = *&v2[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleLabel];
  v25 = v75;
  v26 = sub_100005744(0, &qword_100970180, UIColor_ptr);
  v27 = static UIColor.primaryText.getter();
  v28 = [v27 resolvedColorWithTraitCollection:v24];

  [v25 setTextColor:v28];
  v66 = v2;
  v29 = *&v2[OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  v74 = v29;
  v59 = v26;
  v30 = static UIColor.tertiaryText.getter();
  v63 = v24;
  v31 = [v30 resolvedColorWithTraitCollection:v24];

  [v29 setTextColor:v31];
  v67 = v19;
  ChartOrCategoryBrickContext.labels.getter();
  ChartOrCategoryBrickContext.BrickLabelMetrics.title.getter();
  v32 = v77;
  v33 = v76 + 8;
  v34 = *(v76 + 8);
  v34(v12, v77);
  ChartOrCategoryBrickContext.LabelMetrics.numberOfLines.getter();
  v36 = v78 + 8;
  v35 = *(v78 + 8);
  v37 = v70;
  v35(v9);
  dispatch thunk of DynamicTypeTextView.numberOfLines.setter();
  ChartOrCategoryBrickContext.labels.getter();
  ChartOrCategoryBrickContext.BrickLabelMetrics.badge.getter();
  v34(v12, v32);
  v76 = v33;
  v38 = ChartOrCategoryBrickContext.LabelMetrics.numberOfLines.getter();
  v39 = v37;
  v62 = v35;
  (v35)(v9, v37);
  v78 = v36;
  [v74 setNumberOfLines:v38];
  ChartOrCategoryBrickContext.labels.getter();
  ChartOrCategoryBrickContext.BrickLabelMetrics.title.getter();
  v34(v12, v32);
  v40 = v68;
  ChartOrCategoryBrickContext.LabelMetrics.fontUseCase.getter();
  (v35)(v9, v37);
  v41 = type metadata accessor for FontUseCase();
  v42 = *(v41 - 8);
  v60 = *(v42 + 56);
  v61 = v42 + 56;
  v60(v40, 0, 1, v41);
  dispatch thunk of DynamicTypeTextView.fontUseCase.setter();
  ChartOrCategoryBrickContext.labels.getter();
  ChartOrCategoryBrickContext.BrickLabelMetrics.badge.getter();
  v43 = v77;
  v34(v12, v77);
  ChartOrCategoryBrickContext.LabelMetrics.fontUseCase.getter();
  v44 = v62;
  (v62)(v9, v39);
  v60(v40, 0, 1, v41);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v45 = v67;
  ChartOrCategoryBrickContext.labels.getter();
  ChartOrCategoryBrickContext.BrickLabelMetrics.title.getter();
  v34(v12, v43);
  ChartOrCategoryBrickContext.LabelMetrics.contentSizeCategoryMapping.getter();
  v44(v9, v39);
  dispatch thunk of DynamicTypeTextView.contentSizeCategoryMapping.setter();
  ChartOrCategoryBrickContext.labels.getter();
  ChartOrCategoryBrickContext.BrickLabelMetrics.badge.getter();
  v34(v12, v77);
  ChartOrCategoryBrickContext.LabelMetrics.contentSizeCategoryMapping.getter();
  v46 = v9;
  v48 = v73;
  v47 = v74;
  v49 = v39;
  v50 = v69;
  v44(v46, v49);
  v51 = v71;
  dispatch thunk of DynamicTypeLabel.contentSizeCategoryMapping.setter();
  v52 = v45;
  ChartOrCategoryBrickContext.style.getter();
  v53 = v72;
  (*(v51 + 104))(v72, enum case for ChartOrCategoryBrickStyle.round(_:), v50);
  sub_10022868C(&unk_10097A418, &type metadata accessor for ChartOrCategoryBrickStyle, &protocol conformance descriptor for ChartOrCategoryBrickStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v81 == v79 && v82 == v80)
  {
    v54 = *(v51 + 8);
    v54(v53, v50);
    v54(v48, v50);

LABEL_7:
    v57 = static UIColor.secondaryText.getter();
    [v75 setTextColor:v57];

    v58 = static UIColor.tertiaryText.getter();
    [v47 setTextColor:v58];

    goto LABEL_8;
  }

  v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v56 = *(v51 + 8);
  v56(v53, v50);
  v56(v48, v50);

  if (v55)
  {
    goto LABEL_7;
  }

LABEL_8:
  [v66 setNeedsLayout];

  return (*(v64 + 8))(v52, v65);
}

uint64_t type metadata accessor for ChartOrCategoryBrickCollectionViewCell(uint64_t a1)
{
  result = qword_10097A3B8;
  if (!qword_10097A3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002261F8(uint64_t a1)
{
  sub_100226360(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_100226360(319, &unk_10097A3D0, &type metadata accessor for ChartOrCategoryBrickContext);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100226360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1002263B8()
{
  if (sub_100223C80())
  {
    type metadata accessor for ArtworkView();
    sub_10022868C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  return result;
}

uint64_t sub_100226478(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v4, a3);
  type metadata accessor for ArtworkView();
  sub_10022868C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_100226510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1002265F0;
  v16.n128_f64[0] = a6;
  v17.n128_f64[0] = a7;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:size:with:traitCollection:)(a1, a2, a3, a4, a5, v16, v17);
}

uint64_t sub_1002265F0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1002266EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v21 = swift_task_alloc();
  *(v10 + 16) = v21;
  *v21 = v10;
  v21[1] = sub_10015A5C8;
  v22.n128_f64[0] = a9;
  v23.n128_f64[0] = a10;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:checking:into:traitCollection:)(a1, a2, a3, a4, a5, a6, a7, a8, v22, v23);
}

uint64_t sub_1002267F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_100095E9C;
  v20.n128_f64[0] = a8;
  v21.n128_f64[0] = a9;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:into:traitCollection:)(a1, a2, a3, a4, a5, a6, a7, v20, v21);
}

uint64_t sub_10022696C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097A3F0, &unk_1007C1628);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002269DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100095E9C;

  return sub_100224FE8(a1, v9, v10, v11, v1 + v6, v1 + v7, v12, v13);
}

uint64_t sub_100226B34(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100226C2C;

  return v6(a1);
}

uint64_t sub_100226C2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100226D24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10015A5C8;

  return sub_100226B34(a1, v4);
}

unint64_t sub_100226DE4()
{
  result = qword_10097A408;
  if (!qword_10097A408)
  {
    sub_10002D1A8(&qword_10097A400, &unk_1007C1660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A408);
  }

  return result;
}

uint64_t sub_100226E48(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100226F3C;

  return v5(v2 + 32);
}

uint64_t sub_100226F3C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

double sub_100227050()
{
  v0 = type metadata accessor for LabelPlaceholder();
  v81 = *(v0 - 8);
  v82 = v0;
  __chkstk_darwin(v0);
  v80 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for FontUseCase();
  v88 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics();
  v94 = *(v89 - 8);
  __chkstk_darwin(v89);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics();
  v86 = *(v5 - 8);
  v87 = v5;
  __chkstk_darwin(v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DynamicTextAppearance();
  v95 = *(v101 - 8);
  __chkstk_darwin(v101);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = &v69 - v10;
  __chkstk_darwin(v11);
  v100 = &v69 - v12;
  __chkstk_darwin(v13);
  v91 = &v69 - v14;
  v15 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout();
  v93 = *(v15 - 8);
  __chkstk_darwin(v15);
  v92 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ChartOrCategoryBrickStyle();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PageGrid();
  v98 = *(v21 - 8);
  v99 = v21;
  __chkstk_darwin(v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ChartOrCategoryBrickContext();
  v96 = *(v24 - 8);
  v97 = v24;
  __chkstk_darwin(v24);
  v90 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  sub_10002849C(&qword_10097A3E0, &qword_1007C1618);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!*(&v111 + 1))
  {
    sub_10002B894(&v110, &qword_10097A3E8, &qword_1007C1620);
    return 0.0;
  }

  v77 = v15;
  sub_100005A38(&v110, v113);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_10002C0AC(v113, &v110);
  sub_10002C0AC(&v110, &v107);
  ChartOrCategoryBrickContext.init(model:fontStyles:in:)();
  sub_100007000(&v110);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v83 = v110;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  ChartOrCategoryBrickContext.style.getter();
  v29 = (*(v18 + 88))(v20, v17);
  if (v29 == enum case for ChartOrCategoryBrickStyle.tile(_:) || v29 == enum case for ChartOrCategoryBrickStyle.pill(_:))
  {
    v63 = v96;
    v62 = v97;
    (*(v96 + 16))(v90, v28, v97);
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    v109 = 0;
    v108 = 0u;
    v107 = 0u;
    v64 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v65 = LayoutViewPlaceholder.init(representing:)();
    v106[3] = v64;
    v106[4] = &protocol witness table for LayoutViewPlaceholder;
    v106[0] = v65;
    memset(v105, 0, 32);
    v105[32] = 1;
    v66 = v92;
    ChartOrCategoryBrickCollectionViewCellLayout.init(context:badgeTextView:titleTextView:artworkView:textExclusionRect:)();
    ChartOrCategoryBrickCollectionViewCellLayout.measurements(fitting:in:)();
    v59 = v67;
    swift_unknownObjectRelease();
    (*(v93 + 8))(v66, v77);
    (*(v98 + 8))(v23, v99);
    (*(v63 + 8))(v28, v62);
    goto LABEL_8;
  }

  if (v29 != enum case for ChartOrCategoryBrickStyle.round(_:))
  {
    swift_unknownObjectRelease();
    (*(v98 + 8))(v23, v99);
    (*(v96 + 8))(v28, v97);
    sub_100007000(v113);
    (*(v18 + 8))(v20, v17);
    return 0.0;
  }

  v30 = v85;
  DynamicTextAppearance.init()();
  ChartOrCategoryBrickContext.labels.getter();
  ChartOrCategoryBrickContext.BrickLabelMetrics.title.getter();
  v31 = v87;
  v32 = v86 + 8;
  v73 = *(v86 + 8);
  v73(v7, v87);
  v33 = v32;
  v34 = v79;
  ChartOrCategoryBrickContext.LabelMetrics.fontUseCase.getter();
  v72 = *(v94 + 8);
  v94 += 8;
  v74 = v28;
  v72(v4, v89);
  DynamicTextAppearance.withFontUseCase(_:)();
  v35 = *(v88 + 8);
  v88 += 8;
  v70 = v35;
  v35(v34, v84);
  v36 = v95 + 8;
  v76 = *(v95 + 8);
  v71 = v23;
  v76(v30, v101);
  v75 = v36;
  ChartOrCategoryBrickContext.labels.getter();
  ChartOrCategoryBrickContext.BrickLabelMetrics.title.getter();
  v37 = v31;
  v38 = v73;
  v86 = v33;
  v73(v7, v37);
  ChartOrCategoryBrickContext.LabelMetrics.numberOfLines.getter();
  v39 = v89;
  v40 = v72;
  v72(v4, v89);
  v41 = v100;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v76(v41, v101);
  v42 = v78;
  DynamicTextAppearance.init()();
  ChartOrCategoryBrickContext.labels.getter();
  ChartOrCategoryBrickContext.BrickLabelMetrics.badge.getter();
  v38(v7, v87);
  ChartOrCategoryBrickContext.LabelMetrics.fontUseCase.getter();
  v40(v4, v39);
  v43 = v85;
  DynamicTextAppearance.withFontUseCase(_:)();
  v70(v34, v84);
  v44 = v42;
  v45 = v101;
  v46 = v76;
  v76(v44, v101);
  v47 = v74;
  ChartOrCategoryBrickContext.labels.getter();
  ChartOrCategoryBrickContext.BrickLabelMetrics.badge.getter();
  v73(v7, v87);
  ChartOrCategoryBrickContext.LabelMetrics.numberOfLines.getter();
  v72(v4, v89);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v48 = v43;
  v46(v43, v45);
  v49 = v47;
  ChartOrCategoryBrickContext.model.getter();
  sub_10002A400(&v110, *(&v111 + 1));
  dispatch thunk of ChartOrCategoryBrick.brickTitle.getter();
  v94 = *(v95 + 16);
  v95 += 16;
  (v94)(v48, v91, v45);
  LabelPlaceholder.Options.init(rawValue:)();
  v50 = v80;
  LabelPlaceholder.init(_:with:where:)();
  sub_100007000(&v110);
  LabelPlaceholder.layoutTextView.getter();
  v51 = v82;
  v52 = *(v81 + 8);
  v52(v50, v82);
  ChartOrCategoryBrickContext.model.getter();
  sub_10002A400(&v107, *(&v108 + 1));
  dispatch thunk of ChartOrCategoryBrick.brickBadge.getter();
  (v94)(v48, v100, v101);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  sub_100007000(&v107);
  LabelPlaceholder.layoutTextView.getter();
  v52(v50, v51);
  v54 = v96;
  v53 = v97;
  (*(v96 + 16))(v90, v49, v97);
  sub_10002C0AC(&v107, v106);
  sub_10002C0AC(&v110, v105);
  v55 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v56 = LayoutViewPlaceholder.init(representing:)();
  v103 = v55;
  v104 = &protocol witness table for LayoutViewPlaceholder;
  v102 = v56;
  v114 = 0u;
  v115 = 0u;
  v116 = 1;
  v57 = v92;
  ChartOrCategoryBrickCollectionViewCellLayout.init(context:badgeTextView:titleTextView:artworkView:textExclusionRect:)();
  ChartOrCategoryBrickCollectionViewCellLayout.measurements(fitting:in:)();
  v59 = v58;
  swift_unknownObjectRelease();
  (*(v93 + 8))(v57, v77);
  sub_100007000(&v107);
  sub_100007000(&v110);
  v60 = v101;
  v61 = v76;
  v76(v100, v101);
  v61(v91, v60);
  (*(v98 + 8))(v71, v99);
  (*(v54 + 8))(v49, v53);
LABEL_8:
  sub_100007000(v113);
  return v59;
}

void sub_100227DA0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Artwork.Crop();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspectRatio();
  v17 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChartOrCategoryBrickContext();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_10097A3E0, &qword_1007C1618);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v20)
  {
    v15 = a2;
    v16 = v7;
    sub_100005A38(&v19, v21);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    sub_10002C0AC(v21, &v19);
    sub_10002C0AC(&v19, v18);
    ChartOrCategoryBrickContext.init(model:fontStyles:in:)();
    sub_100007000(&v19);
    v14 = _swiftEmptyArrayStorage;
    *&v19 = _swiftEmptyArrayStorage;
    sub_100227050();
    if (ChartOrCategoryBrickContext.currentArtwork.getter())
    {
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.maxSize(fitting:)();
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v4 + 8))(v6, v3);
      Artwork.config(_:mode:prefersLayeredImage:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v17 + 8))(v9, v16);
      v14 = v19;
    }

    type metadata accessor for ArtworkLoaderConfig();
    if (Array.isNotEmpty.getter())
    {
      ArtworkLoader.prefetchArtwork(using:)(v14);

      (*(v11 + 8))(v13, v10);
      sub_100007000(v21);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
      sub_100007000(v21);
    }
  }

  else
  {
    sub_10002B894(&v19, &qword_10097A3E8, &qword_1007C1620);
  }
}

uint64_t sub_1002281A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10015A5C8;

  return sub_100226E48(a1, v4);
}

uint64_t sub_100228258(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100095E9C;

  return sub_100226E48(a1, v4);
}

void sub_100228310()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_itemLayoutContext;
  v3 = type metadata accessor for ItemLayoutContext();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v1 + v4) = DynamicTypeLabel.__allocating_init(frame:)();
  v5 = (v1 + OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_badgeText);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_titleText);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_brickContext;
  v8 = type metadata accessor for ChartOrCategoryBrickContext();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC8AppStore38ChartOrCategoryBrickCollectionViewCell_renderingTask) = 0;
  UUID.init()();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100228470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartOrCategoryBrickSafeArea.Location.RelativeLocation();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.topTrailing(_:))
  {
    v10 = a2 == 1;
LABEL_5:
    (*(v5 + 8))(a1, v4);
    return v10;
  }

  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.topLeading(_:))
  {
    v10 = a2 != 1;
    goto LABEL_5;
  }

  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.midLeading(_:))
  {
    (*(v5 + 8))(a1, v4);
    if (a2 == 1)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v12._object = 0x80000001008085B0;
  v12._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v12);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10022868C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1002286D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v7 = type metadata accessor for ShelfLayoutContext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v10 == a2)
  {

    goto LABEL_10;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_10:
    *(a4 + 24) = sub_10002849C(&qword_10097A550, qword_1007C1908);
    *(a4 + 32) = sub_10022AA64(&qword_10097A558, &qword_10097A550, qword_1007C1908);
    v21[1] = sub_1000056E0(a4);
    v21[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    type metadata accessor for TitleHeaderView(0);
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v14 = swift_allocObject();
    swift_weakInit();
    (*(v8 + 16))(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v7);
    v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    (*(v8 + 32))(v16 + v15, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    return result;
  }

  type metadata accessor for SpacerSupplementary();
  if (static SpacerSupplementary.topElementKind.getter() == a1 && v13 == a2)
  {
    goto LABEL_8;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_12;
  }

  if (static SpacerSupplementary.bottomElementKind.getter() == a1 && v19 == a2)
  {
LABEL_8:
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      *(a4 + 32) = 0;
      result = 0.0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

LABEL_12:
  *(a4 + 24) = sub_10002849C(&qword_10097A540, &qword_1007C1900);
  *(a4 + 32) = sub_10022AA64(&qword_10097A548, &qword_10097A540, &qword_1007C1900);
  sub_1000056E0(a4);
  static SpacerSupplementary.makeSpacerRegistration(elementKind:)();
  return result;
}

uint64_t sub_1002289FC(uint64_t a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v64 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v63 = &v58 - v14;
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v58 - v20;
  if (((*(v1 + 24))(v19) & 1) == 0)
  {
    return 0;
  }

  v61 = v5;
  v62 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v22 = *(v11 + 8);
  v22(v21, v10);
  v23 = v67;
  if (!v67)
  {
    return 0;
  }

  v24 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v24 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

    return 0;
  }

  v60 = v66;
  ShelfLayoutContext.supplementaryPageGrid.getter();
  static CGFloat.allColumns.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v26 = v25;
  v28 = v27;
  (*(v7 + 8))(v9, v6);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v22(v17, v10);
  v29 = v66;
  if (v66)
  {
    Action.title.getter();
    v31 = v30;
    v32 = ShelfLayoutContext.traitCollection.getter();
    if (qword_10096D648 != -1)
    {
      swift_once();
    }

    v33 = qword_10097E830;
    if (v31)
    {
      v34 = String._bridgeToObjectiveC()();
    }

    else
    {
      v34 = 0;
    }

    [v33 setTitle:v34 forState:0];

    [v33 setImage:0 forState:0];
    v38 = [v33 titleLabel];
    v39 = v38;
    if (v38)
    {
      v58 = v29;
      v59 = v31;
      v40 = v38;
      v41 = [v40 font];
      if (v41)
      {
        v42 = v41;
        v43 = [v41 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v32];
      }

      else
      {
        v43 = 0;
      }

      [v40 setFont:v43];
    }

    [v33 sizeThatFits:{v26, v28}];
    v45 = v44;
    v37 = v46;

    v36 = v45 + 0.0;
    [v33 setTitle:0 forState:0];
    [v33 setImage:0 forState:0];
  }

  else
  {
    v36 = 0.0;
    v37 = 0.0;
  }

  v47 = v63;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v22(v47, v10);
  v62 = v66;
  v59 = type metadata accessor for TitleHeaderView(0);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v22(v47, v10);
  v49 = v66;
  v48 = v67;
  v50 = v64;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v22(v50, v10);
  v51 = v65;
  v52 = sub_10022A6B4();
  v53 = v61;
  sub_10022916C(v61);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v57 = ShelfLayoutContext.traitEnvironment.getter();
  swift_getObjectType();
  sub_1003F7390(v49, v48, v51, v60, v23, v62, 0, 0, v26, v28, v36, v37, UIEdgeInsetsZero.top, left, bottom, right, 0, 0, v52, v53, 1, v57);

  swift_unknownObjectRelease();

  sub_10022AA04(v53, type metadata accessor for TitleHeaderView.Style);
  return *&v26;
}

uint64_t sub_1002290E8@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.titleArtwork.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100229114@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.eyebrow.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100229140@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.eyebrowArtwork.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10022916C@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v95 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v89 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v2 - 8);
  v94 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v92 = &v76 - v5;
  v6 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v6 - 8);
  v91 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v76 - v9;
  v79 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v83 = *(v79 - 8);
  __chkstk_darwin(v79);
  v87 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v76 - v12;
  __chkstk_darwin(v13);
  v85 = &v76 - v14;
  __chkstk_darwin(v15);
  v90 = &v76 - v16;
  v17 = sub_10002849C(&unk_100984380, &qword_1007C4850);
  __chkstk_darwin(v17 - 8);
  v78 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v77 = &v76 - v20;
  __chkstk_darwin(v21);
  v23 = &v76 - v22;
  __chkstk_darwin(v24);
  v26 = &v76 - v25;
  __chkstk_darwin(v27);
  v96 = &v76 - v28;
  v29 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v76 - v34;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v36 = *(v30 + 8);
  v36(v35, v29);
  v37 = v98;
  if (v98)
  {
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v36(v32, v29);
  v38 = v98;
  if (v98)
  {
    v39 = v97;

    v40 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v40 = v39 & 0xFFFFFFFFFFFFLL;
    }

    v41 = v40 != 0;
  }

  else
  {
    v41 = 0;
  }

  v42 = type metadata accessor for ShelfHeader.Configuration();
  v43 = *(v42 - 8);
  (*(v43 + 56))(v96, 1, 1, v42);
  v44 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v80 = *(v44 - 8);
  v81 = v44;
  (*(v80 + 56))(v92, 1, 1);
  v45 = (v43 + 48);
  v82 = v41;
  if (!v37)
  {
    if (v41)
    {
      v47 = v77;
      sub_100031660(v96, v77, &unk_100984380, &qword_1007C4850);
      if ((*v45)(v47, 1, v42) == 1)
      {
        sub_10002B894(v47, &unk_100984380, &qword_1007C4850);
        v48 = 0;
      }

      else
      {
        v48 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v43 + 8))(v47, v42);
      }

      v52 = v84;
      v53 = v79;
      sub_100512504(v48, v90);

      v54 = v85;
      if (qword_10096E790 != -1)
      {
        swift_once();
      }

      v55 = qword_1009D2718;
      goto LABEL_31;
    }

    v50 = v78;
    sub_100031660(v96, v78, &unk_100984380, &qword_1007C4850);
    if ((*v45)(v50, 1, v42) == 1)
    {
      sub_10002B894(v50, &unk_100984380, &qword_1007C4850);
      v51 = 0;
    }

    else
    {
      v51 = ShelfHeader.Configuration.eyebrowColor.getter();
      (*(v43 + 8))(v50, v42);
    }

    v52 = v84;
    v53 = v79;
    sub_100512504(v51, v90);

    v54 = v85;
    if (qword_10096E778 != -1)
    {
      swift_once();
    }

    v56 = 1;
    v57 = qword_1009D26D0;
LABEL_38:
    v59 = v54;
    goto LABEL_39;
  }

  if (!v41)
  {
    sub_100031660(v96, v23, &unk_100984380, &qword_1007C4850);
    if ((*v45)(v23, 1, v42) == 1)
    {
      sub_10002B894(v23, &unk_100984380, &qword_1007C4850);
      v49 = 0;
    }

    else
    {
      v49 = ShelfHeader.Configuration.eyebrowColor.getter();
      (*(v43 + 8))(v23, v42);
    }

    v52 = v84;
    v53 = v79;
    sub_100512504(v49, v90);

    v54 = v85;
    if (qword_10096E780 != -1)
    {
      swift_once();
    }

    v56 = 1;
    v57 = qword_1009D26E8;
    goto LABEL_38;
  }

  sub_100031660(v96, v26, &unk_100984380, &qword_1007C4850);
  if ((*v45)(v26, 1, v42) == 1)
  {
    sub_10002B894(v26, &unk_100984380, &qword_1007C4850);
    v46 = 0;
  }

  else
  {
    v46 = ShelfHeader.Configuration.eyebrowColor.getter();
    (*(v43 + 8))(v26, v42);
  }

  v52 = v84;
  v53 = v79;
  sub_100512504(v46, v90);

  v54 = v85;
  if (qword_10096E798 != -1)
  {
    swift_once();
  }

  v55 = qword_1009D2730;
LABEL_31:
  v58 = sub_1000056A8(v53, v55);
  sub_1001EFDF0(v58, v54);
  if (qword_10096E770 != -1)
  {
    swift_once();
  }

  v56 = 0;
  v57 = qword_1009D26B8;
  v59 = v52;
LABEL_39:
  v60 = sub_1000056A8(v53, v57);
  sub_1001EFDF0(v60, v59);
  (*(v83 + 56))(v52, v56, 1, v53);
  v61 = v90;
  v62 = v86;
  sub_1001EFDF0(v90, v86);
  v63 = v87;
  sub_1001EFDF0(v54, v87);
  sub_100031660(v52, v91, &qword_1009794E8, &unk_1007C18C0);
  v64 = v92;
  sub_100031660(v92, v94, &qword_1009794E0, &unk_1007C4840);
  v65 = v89;
  (*(v89 + 104))(v93, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v95);
  sub_100028BB8();
  v66 = static UIColor.defaultLine.getter();
  sub_10002B894(v64, &qword_1009794E0, &unk_1007C4840);
  sub_10002B894(v52, &qword_1009794E8, &unk_1007C18C0);
  sub_10022AA04(v54, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10022AA04(v61, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10002B894(v96, &unk_100984380, &qword_1007C4850);
  v67 = type metadata accessor for TitleHeaderView.Style(0);
  v68 = v67[8];
  v69 = v88;
  sub_10022A9A0(v62, v88);
  sub_10022A9A0(v63, v69 + v67[5]);
  sub_1001EFE54(v91, v69 + v67[6]);
  *(v69 + v67[7]) = 0;
  *(v69 + v68) = 0;
  v70 = v82;
  *(v69 + v67[9]) = v82;
  *(v69 + v67[14]) = 0x4030000000000000;
  *(v69 + v67[12]) = 0;
  *(v69 + v67[13]) = v66;
  v71 = v94;
  (*(v65 + 32))(v69 + v67[11], v93, v95);
  v73 = v80;
  v72 = v81;
  if ((*(v80 + 48))(v71, 1, v81) != 1)
  {
    return (*(v73 + 32))(v69 + v67[10], v71, v72);
  }

  sub_10002B894(v71, &qword_1009794E0, &unk_1007C4840);
  if (v70)
  {
    v74 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
  }

  else
  {
    v74 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
  }

  return (*(v73 + 104))(v69 + v67[10], *v74, v72);
}

uint64_t sub_100229D60@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.subtitle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_100229D8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100229E00(a1, a6);
  }

  return result;
}

uint64_t sub_100229E00(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v6 - 8);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ShelfLayoutContext();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v8;
  __chkstk_darwin(v9);
  v50 = &v47 - v10;
  v11 = type metadata accessor for Artwork.Crop();
  v47 = *(v11 - 8);
  v48 = v11;
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v57 = a2;
  ShelfLayoutContext.shelf.getter();
  type metadata accessor for ArtworkLoader();
  v54 = v3;
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v59 = v61;
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17 = v61;
  v18 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork;
  v19 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork);

  sub_1003F1948(v17);
  *(a1 + v18) = v17;

  sub_1003F195C(v19);

  swift_getKeyPath();
  v60 = v14;
  ReadOnlyLens.subscript.getter();

  v20 = v61;
  v21 = v62;
  v22 = (a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText);
  v24 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText);
  v23 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText + 8);

  sub_1003F1328(v20, v21);
  *v22 = v20;
  v22[1] = v21;

  sub_1003F13BC(v24, v23);

  if (*(a1 + v18))
  {
    v25 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView);
    if (v25)
    {

      v26 = v25;
      Artwork.size.getter();
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v47 + 8))(v13, v48);
      Artwork.config(_:mode:prefersLayeredImage:)();
      type metadata accessor for ArtworkView();
      sub_10009A098();
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v27 = v61;
  v28 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork;
  v29 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork);

  sub_1003F1AE8(v27);
  *(a1 + v28) = v27;

  sub_1003F1BFC(v29);

  v30 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  if (v62)
  {
    v31 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = 0;
  }

  v49 = v30;
  [v30 setText:v31];

  if (*(a1 + v28))
  {
    v32 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView);
    if (v32)
    {

      v33 = v32;
      Artwork.size.getter();
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v47 + 8))(v13, v48);
      Artwork.config(_:mode:prefersLayeredImage:)();
      type metadata accessor for ArtworkView();
      sub_10009A098();
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  v34 = v53;
  v35 = *(v53 + 16);
  v36 = v50;
  v37 = v55;
  v35(v50, v57, v55);
  v38 = v51;
  v35(v51, v36, v37);
  v39 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v54;
  (*(v34 + 32))(v40 + v39, v36, v37);
  v41 = (a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines);
  *v41 = sub_10022A940;
  v41[1] = v40;

  [v49 setNumberOfLines:sub_10022A6B4()];

  (*(v34 + 8))(v38, v37);
  v42 = v56;
  sub_10022916C(v56);
  (*((swift_isaMask & *a1) + 0x1C8))(v42);
  v43 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel);
  if (v43)
  {
    swift_getKeyPath();
    v44 = v43;
    ReadOnlyLens.subscript.getter();

    if (v62)
    {
      v45 = String._bridgeToObjectiveC()();
    }

    else
    {
      v45 = 0;
    }

    [v44 setText:v45];
  }

  [a1 setNeedsLayout];

  return (*(v58 + 8))(v16, v60);
}

uint64_t sub_10022A648()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10022A6B4()
{
  v0 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  v4 = ShelfLayoutContext.traitCollection.getter();
  v5 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v5)
  {
    return 0;
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v1 + 8))(v3, v0);
  if (!v7[1])
  {
    return 2;
  }

  return 1;
}

void *sub_10022A7F4(uint64_t a1)
{
  v1 = COERCE_DOUBLE(sub_1002289FC(a1));
  if (v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v1;
  v5 = v2;
  v6 = v2 >= v1 ? v1 : v2;
  if (v6 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = objc_opt_self();
  v8 = [v7 absoluteDimension:v4];
  v9 = [v7 absoluteDimension:v5];
  v10 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v10 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007B0B70;
  *(v12 + 32) = v11;

  return v12;
}

uint64_t sub_10022A940()
{
  type metadata accessor for ShelfLayoutContext();

  return sub_10022A6B4();
}

uint64_t sub_10022A9A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022AA04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10022AA64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002D1A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10022AAB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ShelfLayoutContext() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_100229D8C(a1, a2, a3, a4, v10, v11);
}

unint64_t sub_10022AB54()
{
  v1 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = [result collectionView];
    v14 = OBJC_IVAR____TtC8AppStore34ComponentViewOverflowTransitioning_selectedIndexPath;
    swift_beginAccess();
    sub_10022BA04(v0 + v14, v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_10022BA74(v3);
      return 0;
    }

    (*(v5 + 32))(v10, v3, v4);
    if (*(v0 + OBJC_IVAR____TtC8AppStore34ComponentViewOverflowTransitioning_isTransitioningFromContainer) != 1)
    {
      if (v13)
      {
        v22 = v13;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v24 = [v22 cellForItemAtIndexPath:isa];

        (*(v5 + 8))(v10, v4);
        return v24;
      }

      (*(v5 + 8))(v10, v4);

      return 0;
    }

    IndexPath.section.getter();
    IndexPath.init(item:section:)();
    if (v13)
    {
      v15 = v13;
      v16 = IndexPath._bridgeToObjectiveC()().super.isa;
      v17 = [v15 cellForItemAtIndexPath:v16];

      if (v17)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          result = IndexPath.item.getter();
          v18 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
          v19 = *&v17[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
          if (v19 >> 62)
          {
            v28 = result;
            v26 = _CocoaArrayWrapper.endIndex.getter();
            result = v28;
            if (v28 < v26)
            {
LABEL_10:
              v20 = *&v17[v18];
              if ((v20 & 0xC000000000000001) != 0)
              {
                v28 = v5;

                v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();

                v5 = v28;

                goto LABEL_24;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (result < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v21 = *(v20 + 8 * result + 32);

LABEL_24:
                v27 = *(v5 + 8);
                v27(v7, v4);
                v27(v10, v4);
                return v21;
              }

              __break(1u);
              return result;
            }
          }

          else if (result < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_10;
          }

          v21 = 0;
          goto LABEL_24;
        }

        v15 = v12;
        v12 = v17;
      }
    }

    v25 = *(v5 + 8);
    v25(v7, v4);
    v25(v10, v4);
    return 0;
  }

  return result;
}

void sub_10022B058()
{
  v0 = sub_10022AB54();
  if (v0)
  {
    v1 = v0;
    [v0 setHidden:1];
  }
}

char *sub_10022B148(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = sub_10022AB54();
  if (!v5)
  {

LABEL_6:
    v52 = 0u;
    v54 = 0u;
    v22 = 1;
    goto LABEL_7;
  }

  v6 = v5;
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 superview];
  [v8 convertRect:v17 fromView:{v10, v12, v14, v16}];
  v51 = v19;
  v53 = v18;
  v49 = v21;
  v50 = v20;

  v22 = 0;
  *&v23 = v51;
  *(&v23 + 1) = v49;
  v52 = v23;
  *&v23 = v53;
  *(&v23 + 1) = v50;
  v54 = v23;
LABEL_7:
  v24 = [a1 presentingViewController];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 traitCollection];

    v27 = [v26 horizontalSizeClass];
    v28 = v27 == 1;
  }

  else
  {
    v28 = 0;
  }

  v29 = type metadata accessor for BouncyToRectAnimation();
  v30 = objc_allocWithZone(v29);
  v31 = &v30[OBJC_IVAR____TtC8AppStore21BouncyToRectAnimation_toRect];
  *v31 = v54;
  *(v31 + 1) = v52;
  v31[32] = v22;
  v30[OBJC_IVAR____TtC8AppStore21BouncyToRectAnimation_shouldAnimateTabBar] = v28;
  v55.receiver = v30;
  v55.super_class = v29;
  v32 = objc_msgSendSuper2(&v55, "init");
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  v34 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v35 = *&v32[v34];
  v36 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_1000340DC(0, *(v35 + 2) + 1, 1, v35);
    *&v32[v34] = v35;
  }

  v39 = *(v35 + 2);
  v38 = *(v35 + 3);
  if (v39 >= v38 >> 1)
  {
    v35 = sub_1000340DC((v38 > 1), v39 + 1, 1, v35);
  }

  *(v35 + 2) = v39 + 1;
  v40 = &v35[24 * v39];
  *(v40 + 4) = sub_10022B9F4;
  *(v40 + 5) = v33;
  v40[48] = 1;
  *&v32[v34] = v35;
  swift_endAccess();

  v41 = swift_allocObject();
  *(v41 + 16) = v1;
  *(v41 + 24) = v36;
  swift_beginAccess();
  v42 = *&v32[v34];
  v43 = v36;
  v44 = v1;

  v45 = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v42;
  if ((v45 & 1) == 0)
  {
    v42 = sub_1000340DC(0, *(v42 + 2) + 1, 1, v42);
    *&v32[v34] = v42;
  }

  v47 = *(v42 + 2);
  v46 = *(v42 + 3);
  if (v47 >= v46 >> 1)
  {
    v42 = sub_1000340DC((v46 > 1), v47 + 1, 1, v42);
  }

  *(v42 + 2) = v47 + 1;
  v48 = &v42[24 * v47];
  *(v48 + 4) = sub_10022B9FC;
  *(v48 + 5) = v41;
  v48[48] = 2;
  *&v32[v34] = v42;
  swift_endAccess();

  return v32;
}

void sub_10022B518(int a1, int a2, id a3)
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v3)
  {
    v9 = v3;
    type metadata accessor for ComponentViewOverflowPresentationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      sub_100243910();
      v6 = v5 + OBJC_IVAR____TtC8AppStore43ComponentViewOverflowPresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v6 + 24))
      {
        sub_10002C0AC(v6, v10);
        v7 = v11;
        v8 = v12;
        sub_10002A400(v10, v11);
        (*(v8 + 24))(v7, v8);

        sub_100007000(v10);
        return;
      }
    }
  }
}

void sub_10022B634(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10022AB54();
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:0];
  }

  v7 = [a4 _existingPresentationControllerImmediate:1 effective:1];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for ComponentViewOverflowPresentationController();
    if (swift_dynamicCastClass())
    {
      sub_100243A00();
    }
  }
}

id sub_10022B80C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComponentViewOverflowTransitioning(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ComponentViewOverflowTransitioning(uint64_t a1)
{
  result = qword_10097A600;
  if (!qword_10097A600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10022B8F4(uint64_t a1)
{
  sub_10022B99C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10022B99C(uint64_t a1)
{
  if (!qword_10097A610)
  {
    type metadata accessor for IndexPath();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10097A610);
    }
  }
}

uint64_t sub_10022BA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022BA74(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10022BADC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = sub_10022AB54();
  if (!v5)
  {

LABEL_6:
    v41 = 0u;
    v43 = 0u;
    v22 = 1;
    goto LABEL_7;
  }

  v6 = v5;
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 superview];
  [v8 convertRect:v17 fromView:{v10, v12, v14, v16}];
  v40 = v19;
  v42 = v18;
  v38 = v21;
  v39 = v20;

  v22 = 0;
  *&v23 = v40;
  *(&v23 + 1) = v38;
  v41 = v23;
  *&v23 = v42;
  *(&v23 + 1) = v39;
  v43 = v23;
LABEL_7:
  v24 = [a1 traitCollection];
  v25 = [v24 horizontalSizeClass];

  v26 = type metadata accessor for BouncyFromRectAnimation();
  v27 = objc_allocWithZone(v26);
  v28 = &v27[OBJC_IVAR____TtC8AppStore23BouncyFromRectAnimation_fromRect];
  *v28 = v43;
  *(v28 + 1) = v41;
  v28[32] = v22;
  v27[OBJC_IVAR____TtC8AppStore23BouncyFromRectAnimation_shouldAnimateTabBar] = v25 == 1;
  v44.receiver = v27;
  v44.super_class = v26;
  v29 = objc_msgSendSuper2(&v44, "init");
  v30 = swift_allocObject();
  *(v30 + 16) = v1;
  v31 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v32 = *&v29[v31];
  v33 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v29[v31] = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_1000340DC(0, *(v32 + 2) + 1, 1, v32);
    *&v29[v31] = v32;
  }

  v36 = *(v32 + 2);
  v35 = *(v32 + 3);
  if (v36 >= v35 >> 1)
  {
    v32 = sub_1000340DC((v35 > 1), v36 + 1, 1, v32);
  }

  *(v32 + 2) = v36 + 1;
  v37 = &v32[24 * v36];
  *(v37 + 4) = sub_10022BD8C;
  *(v37 + 5) = v30;
  v37[48] = 0;
  *&v29[v31] = v32;
  swift_endAccess();

  return v29;
}

char *sub_10022BD94(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore34ProductTapToRateCollectionViewCell_productTapToRateView;
  type metadata accessor for ProductTapToRateView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore34ProductTapToRateCollectionViewCell_separatorView] = v10;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = OBJC_IVAR____TtC8AppStore34ProductTapToRateCollectionViewCell_separatorView;
  v14 = *&v11[OBJC_IVAR____TtC8AppStore34ProductTapToRateCollectionViewCell_separatorView];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v15 = v14;
  v16 = static UIColor.defaultLine.getter();
  [v15 setBackgroundColor:v16];

  v17 = [v11 contentView];
  [v17 addSubview:*&v11[v13]];

  v18 = [v11 contentView];
  [v18 addSubview:*&v11[OBJC_IVAR____TtC8AppStore34ProductTapToRateCollectionViewCell_productTapToRateView]];

  return v11;
}

id sub_10022C018()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (qword_10096EE38 != -1)
  {
    swift_once();
  }

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  CGRectGetMinX(v18);
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  CGRectGetMinY(v19);
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  CGRectGetWidth(v20);
  v11 = *&v1[OBJC_IVAR____TtC8AppStore34ProductTapToRateCollectionViewCell_separatorView];
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v11 setFrame:?];
  if (([v11 isHidden] & 1) == 0)
  {
    CGRect.subtracting(insets:)();
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  return [*&v1[OBJC_IVAR____TtC8AppStore34ProductTapToRateCollectionViewCell_productTapToRateView] setFrame:{v4, v6, v8, v10}];
}

id sub_10022C2C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10022C380()
{
  result = qword_10097A650;
  if (!qword_10097A650)
  {
    type metadata accessor for OpenGamesUIAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A650);
  }

  return result;
}

uint64_t sub_10022C3D8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ActionOutcome();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    Promise.reject(_:)();
  }

  else
  {
    (*(v4 + 104))(v7, enum case for ActionOutcome.performed(_:), v3, v5);
    Promise.resolve(_:)();
    return (*(v4 + 8))(v7, v3);
  }
}

double sub_10022C510(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);

  return result;
}

id sub_10022C5C4()
{
  v0 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v0 - 8);
  v2 = aBlock - v1;
  v3 = type metadata accessor for GamesUIDeepLinkTarget();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v11 = Promise.__allocating_init()();
  OpenGamesUIAction.target.getter();
  GamesUIDeepLinkTarget.deepLinkURL.getter();
  (*(v4 + 8))(v6, v3);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_10022C934(v2);
    sub_10022C99C();
    swift_allocError();
    Promise.reject(_:)();

    return v11;
  }

  (*(v8 + 32))(v10, v2, v7);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v14 = result;
    URL._bridgeToObjectiveC()(v13);
    v16 = v15;
    v17 = [objc_allocWithZone(_LSOpenConfiguration) init];
    aBlock[4] = sub_10022C9F0;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10022C510;
    aBlock[3] = &unk_1008B9D30;
    v18 = _Block_copy(aBlock);

    [v14 openURL:v16 configuration:v17 completionHandler:v18];
    _Block_release(v18);

    (*(v8 + 8))(v10, v7);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_10022C934(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10022C99C()
{
  result = qword_10097A658;
  if (!qword_10097A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A658);
  }

  return result;
}

unint64_t sub_10022CA0C()
{
  result = qword_10097A660;
  if (!qword_10097A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A660);
  }

  return result;
}

double sub_10022CAA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PageGrid();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ArcadeState();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArcadeShowcase();
  sub_10022CD84(&qword_10097A668, &type metadata accessor for ArcadeShowcase, &protocol conformance descriptor for ArcadeShowcase);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v25)
  {
    return 0.0;
  }

  v23[1] = v2;
  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v10 = v25;
  ArcadeSubscriptionManager.subscriptionState.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v12 = v11;
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  v15 = sub_100079F24();
  if (ArcadeState.isSubscribed.getter())
  {
    v16 = ArcadeShowcase.subscribedDescription.getter();
  }

  else
  {
    v16 = ArcadeShowcase.unsubscribedDescription.getter();
  }

  v19 = v16;
  v20 = v17;
  swift_getObjectType();
  sub_10011DC28(v19, v20, v15, v12, v14);
  v18 = v21;
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v24);
  return v18;
}

uint64_t sub_10022CD84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10022CDE0()
{
  result = qword_10097A670;
  if (!qword_10097A670)
  {
    type metadata accessor for GameCenterDashboardAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A670);
  }

  return result;
}

void sub_10022CE38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionOutcome();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v11 = objc_opt_self();
    v12 = a1;
    v13 = [v11 proxyForPlayer:v12];
    v14 = [v13 utilityService];

    v15 = [objc_opt_self() currentGame];
    v16 = [v15 internal];

    v17 = getpid();
    sub_100397CE8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v14 openDashboardAsRemoteAlertForGame:v16 hostPID:v17 deeplink:isa];
    swift_unknownObjectRelease();

    (*(v7 + 104))(v9, enum case for ActionOutcome.performed(_:), v6);
    Promise.resolve(_:)();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v24 = a3;
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for OSLogger();
    sub_1000056A8(v19, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    v20 = swift_allocObject();
    v23 = xmmword_1007B10D0;
    *(v20 + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for ExternalUrlAction();
    swift_allocObject();
    v21 = ExternalUrlAction.init(title:urlString:isSensitive:allowFromLockscreen:timeoutSeconds:artwork:presentationStyle:actionMetrics:)();
    if (v21)
    {
      sub_1005D0430(v21, 1, a2);
      Promise.pipe(to:)();
    }

    else
    {
      *(swift_allocObject() + 16) = v23;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      sub_10022D3E0();
      swift_allocError();
      *v22 = 1;
      Promise.reject(_:)();
    }
  }
}

uint64_t sub_10022D2F0(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v3 = Promise.__allocating_init()();
  type metadata accessor for GameCenter();
  v6[3] = sub_1000076C0();
  v6[4] = &protocol witness table for OS_dispatch_queue;
  v6[0] = static OS_dispatch_queue.main.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;

  static GameCenter.withLocalPlayer(on:_:)();

  sub_100007000(v6);
  return v3;
}

unint64_t sub_10022D3E0()
{
  result = qword_10097A678;
  if (!qword_10097A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A678);
  }

  return result;
}

unint64_t sub_10022D448()
{
  result = qword_10097A680;
  if (!qword_10097A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A680);
  }

  return result;
}

uint64_t sub_10022D49C()
{
  sub_10002849C(&qword_10097A790, &qword_1007BCDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B73E0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_100397278(inited);
  swift_setDeallocating();
  sub_10002849C(&qword_100977870, qword_1007C1D30);
  result = swift_arrayDestroy();
  qword_10097A690 = v1;
  return result;
}

uint64_t sub_10022D6B8(__n128 a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_10002849C(&unk_10097A710, &unk_1007C1D20);
  sub_100005644(v5, a4);
  sub_1000056A8(v5, a4);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for CGPoint(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

char *sub_10022D758(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for TitleEffect();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = enum case for TitleEffect.none(_:);
  v15 = *(v10 + 104);
  (v15)(&v4[OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_effect], enum case for TitleEffect.none(_:), v9, v11);
  v16 = OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_gradientLayer;
  *&v4[v16] = [objc_allocWithZone(CAGradientLayer) init];
  v17 = type metadata accessor for ArcadeHeaderView(0);
  v33.receiver = v4;
  v33.super_class = v17;
  v31 = v17;
  v18 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  v22 = OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_gradientLayer;
  [*&v20[OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_gradientLayer] setAnchorPoint:{0.0, 0.0}];
  v20[OBJC_IVAR____TtC8AppStore15TitleHeaderView_allowsAccessibilityLayouts] = 0;
  [v20 setNeedsLayout];
  v23 = qword_10096D458;
  v24 = *&v20[v22];
  if (v23 != -1)
  {
    swift_once();
  }

  sub_10002849C(&unk_10097A780, &unk_1007CC250);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v24 setActions:isa];

  v26 = [v20 layer];
  [v26 addSublayer:*&v20[v22]];

  v27 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel;
  [*&v20[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel] removeFromSuperview];
  [*&v20[v27] setAdjustsFontForContentSizeCategory:1];
  v15(v13, v14, v9);
  sub_10022E218(v13, 0, 0, 1, 0);
  (*(v10 + 8))(v13, v9);
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007B10D0;
  *(v28 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v32[3] = v31;
  v32[0] = v20;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v32);
  return v20;
}

uint64_t sub_10022DB38@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_style;
  swift_beginAccess();
  return sub_100115C40(v1 + v3, a1);
}

uint64_t sub_10022DB94(uint64_t a1)
{
  v3 = type metadata accessor for TitleEffect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v19[-v11];
  __chkstk_darwin(v13);
  v15 = &v19[-v14];
  v16 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_style;
  swift_beginAccess();
  sub_100115C40(&v1[v16], v15);
  sub_100115C40(a1, v12);
  sub_100115C40(&v1[v16], v9);
  swift_beginAccess();
  sub_10022F078(v12, &v1[v16]);
  swift_endAccess();
  sub_1003F1D7C(v9);
  sub_10022F0DC(v9);
  sub_10022F0DC(v12);
  sub_100115C40(&v1[v16], v12);
  LOBYTE(v9) = sub_1003FA80C(v12, v15);
  sub_10022F0DC(v12);
  if ((v9 & 1) == 0)
  {
    v17 = OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_effect;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v1[v17], v3);
    sub_10022E218(v6, 0, 0, 1, 0);
    (*(v4 + 8))(v6, v3);
    [v1 setNeedsLayout];
  }

  sub_10022F0DC(a1);
  return sub_10022F0DC(v15);
}

void sub_10022DE10()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ArcadeHeaderView(0);
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10022F138;
  *(v3 + 24) = v2;
  v7[4] = sub_10006F094;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000489A8;
  v7[3] = &unk_1008B9F10;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutAnimation:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_10022DF8C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_gradientLayer);
  v2 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel);
  [v2 frame];
  [v1 setFrame:?];
  v3 = [v2 layer];
  [v1 setMask:v3];

  v4 = [v2 layer];
  [v4 frame];
  [v4 setFrame:{0.0, 0.0}];
}

void sub_10022E0C0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TitleEffect();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003EFD2C(a1, a2);
  v9 = *(v2 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_effect;
    swift_beginAccess();
    (*(v6 + 16))(v8, v2 + v10, v5);
    v11 = v9;
    v12 = sub_10022EECC(v8);
    (*(v6 + 8))(v8, v5);
    [v11 setTintColor:v12];
  }
}

void sub_10022E218(uint64_t a1, int a2, uint64_t a3, char a4, void *a5)
{
  v11 = type metadata accessor for TitleEffect();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v81 - v17;
  v82 = a2;
  if (a2)
  {
    v19 = objc_opt_self();
    [v19 begin];
    v20 = *&a3;
    if (a4)
    {
      v20 = 0.3;
    }

    [v19 setAnimationDuration:v20];
    if (a5)
    {
      v21 = a5;
    }

    else
    {
      v21 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
    }

    v22 = a5;
    [v19 setAnimationTimingFunction:v21];
  }

  v23 = *(v12 + 16);
  v23(v18, a1, v11, v16);
  v24 = OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_effect;
  swift_beginAccess();
  (*(v12 + 40))(&v5[v24], v18, v11);
  swift_endAccess();
  (v23)(v14, a1, v11);
  v25 = (*(v12 + 88))(v14, v11);
  if (v25 == enum case for TitleEffect.color(_:))
  {
    (*(v12 + 96))(v14, v11);
    v26 = *v14;
    v27 = *(v14 + 3);

    v28 = *&v5[OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_gradientLayer];
    sub_10002849C(&qword_1009701B0, qword_1007B1800);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1007B1890;
    v30 = [v26 CGColor];
    type metadata accessor for CGColor(0);
    v32 = v31;
    *(v29 + 56) = v31;
    *(v29 + 32) = v30;
    v33 = [v26 CGColor];
    *(v29 + 88) = v32;
    *(v29 + 64) = v33;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v28 setColors:isa];

    v35 = *&v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel];
    v36 = [objc_opt_self() blackColor];
    [v35 setTextColor:v36];

    if (v27)
    {
      v37 = String._bridgeToObjectiveC()();
    }

    else
    {
      v37 = 0;
    }

    [v28 setCompositingFilter:v37];
  }

  else
  {
    if (v25 == enum case for TitleEffect.verticalGradient(_:))
    {
      (*(v12 + 96))(v14, v11);
      v39 = *v14;
      v38 = *(v14 + 1);
      v40 = *(v14 + 2);
      v81 = *(v14 + 3);
      v41 = *(v14 + 4);

      v42 = *&v5[OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_gradientLayer];
      sub_10002849C(&qword_1009701B0, qword_1007B1800);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1007B1890;
      v44 = [v39 CGColor];
      type metadata accessor for CGColor(0);
      v46 = v45;
      *(v43 + 56) = v45;
      *(v43 + 32) = v44;
      v47 = [v38 CGColor];
      *(v43 + 88) = v46;
      *(v43 + 64) = v47;
      v48 = Array._bridgeToObjectiveC()().super.isa;

      [v42 setColors:v48];

      [v42 setStartPoint:{0.5, 0.0}];
      [v42 setEndPoint:{0.5, 1.0}];
      v49 = *&v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel];
      v50 = [objc_opt_self() blackColor];
      [v49 setTextColor:v50];

      if (v41)
      {
        v51 = String._bridgeToObjectiveC()();
      }

      else
      {
        v51 = 0;
      }
    }

    else
    {
      if (v25 != enum case for TitleEffect.horizontalGradient(_:))
      {
        v81 = *&v5[OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_gradientLayer];
        sub_10002849C(&qword_1009701B0, qword_1007B1800);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_1007B1890;
        v67 = objc_opt_self();
        v68 = [v67 blackColor];
        v69 = [v68 CGColor];

        type metadata accessor for CGColor(0);
        v71 = v70;
        *(v66 + 56) = v70;
        *(v66 + 32) = v69;
        v72 = [v67 blackColor];
        v73 = [v72 CGColor];

        *(v66 + 88) = v71;
        *(v66 + 64) = v73;
        v74 = Array._bridgeToObjectiveC()().super.isa;

        v75 = v81;
        [v81 setColors:v74];

        v76 = *&v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel];
        v77 = [v67 blackColor];
        [v76 setTextColor:v77];

        [v75 setCompositingFilter:0];
        (*(v12 + 8))(v14, v11);
        goto LABEL_29;
      }

      (*(v12 + 96))(v14, v11);
      v39 = *v14;
      v38 = *(v14 + 1);
      v52 = *(v14 + 2);
      v81 = *(v14 + 3);
      v53 = *(v14 + 4);

      v42 = *&v5[OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_gradientLayer];
      sub_10002849C(&qword_1009701B0, qword_1007B1800);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1007B1890;
      v55 = [v39 CGColor];
      type metadata accessor for CGColor(0);
      v57 = v56;
      *(v54 + 56) = v56;
      *(v54 + 32) = v55;
      v58 = [v38 CGColor];
      *(v54 + 88) = v57;
      *(v54 + 64) = v58;
      v59 = Array._bridgeToObjectiveC()().super.isa;

      [v42 setColors:v59];

      if (qword_10096D460 != -1)
      {
        swift_once();
      }

      v60 = sub_10002849C(&unk_10097A710, &unk_1007C1D20);
      sub_1000056A8(v60, qword_10097A698);
      v83 = v5;
      v61 = v5;
      v62 = v5;
      Conditional.evaluate(with:)();

      [v42 setStartPoint:{v84, v85}];
      if (qword_10096D468 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v60, qword_10097A6B0);
      v83 = v62;
      v63 = v62;
      Conditional.evaluate(with:)();

      [v42 setEndPoint:{v84, v85}];
      v64 = *&v63[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel];
      v65 = [objc_opt_self() blackColor];
      [v64 setTextColor:v65];

      if (v53)
      {
        v51 = String._bridgeToObjectiveC()();
      }

      else
      {
        v51 = 0;
      }

      v5 = v61;
    }

    [v42 setCompositingFilter:v51];
  }

  swift_unknownObjectRelease();
LABEL_29:
  v78 = *&v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryView];
  if (v78)
  {
    v79 = v78;
    v80 = sub_10022EECC(a1);
    [v79 setTintColor:v80];
  }

  if (v82)
  {
    [objc_opt_self() commit];
  }
}

void sub_10022ECA8()
{
  v1 = OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_effect;
  v2 = type metadata accessor for TitleEffect();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore16ArcadeHeaderView_gradientLayer);
}

id sub_10022ED20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeHeaderView(uint64_t a1)
{
  result = qword_10097A700;
  if (!qword_10097A700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10022EE28(uint64_t a1)
{
  result = type metadata accessor for TitleEffect();
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

uint64_t sub_10022EECC(uint64_t a1)
{
  v2 = type metadata accessor for TitleEffect();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TitleEffect.color(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(v6 + 1);
  }

  else
  {
    if (v7 != enum case for TitleEffect.verticalGradient(_:) && v7 != enum case for TitleEffect.horizontalGradient(_:))
    {
      sub_100028BB8();
      v8 = static UIColor.appTint.getter();
      (*(v3 + 8))(v6, v2);
      return v8;
    }

    (*(v3 + 96))(v6, v2);
    v9 = *(v6 + 1);
    v8 = *(v6 + 2);
  }

  return v8;
}

uint64_t sub_10022F078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022F0DC(uint64_t a1)
{
  v2 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10022F140(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  *(v1 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_pendingAction) = a1;

  if (a1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_objectGraph);
    v8 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
    }

    else
    {

      sub_1005F9AF4(v10, 1, v7, v5);

      (*(v9 + 8))(v5, v8);
    }

    sub_10022F140(0);
  }

  return result;
}

void sub_10022F2DC(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_installOfferView;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for InstallPageInstallingOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_preInstallFreeOfferView;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallFreeOfferView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_preInstallPaidOfferView;
  *&v2[v7] = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallPaidOfferView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction] = 0;
  v8 = &v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_activeView];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_offerViewTransitionFadeDuration] = 0x3FD3333333333333;
  v9 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_appAdamId;
  v10 = type metadata accessor for AdamId();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = &v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_offerMode];
  *v11 = 0;
  v11[8] = 1;
  v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_isInBackground] = 0;
  v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_pendingAction] = 0;
  v12 = &v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_lifecycleObserver];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_objectGraph] = a2;
  *&v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_presenter] = a1;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  *&v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_artworkLoader] = v29[0];
  v30.receiver = v2;
  v30.super_class = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v13 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  sub_100235BD8(&qword_10097A860, type metadata accessor for InAppPurchaseInstallPageViewController, &unk_1007C1EE0);
  v14 = v13;
  dispatch thunk of InAppPurchaseInstallPagePresenter.view.setter();
  v15 = [v14 view];
  if (v15)
  {
    v16 = v15;
    [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    v17 = [v14 view];
    if (v17)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v18 = static UIColor.defaultBackground.getter();
      [v17 setBackgroundColor:v18];

      v19 = objc_opt_self();
      v20 = [v19 defaultCenter];
      [v20 addObserver:v14 selector:"willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

      v21 = [v19 defaultCenter];
      [v21 addObserver:v14 selector:"didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

      v22 = [v19 defaultCenter];
      v23 = v14;
      v24 = static AskToBuyRequestNotificationDetails.notificationName.getter();
      [v22 addObserver:v23 selector:"askToBuyRequestNotificationReceived:" name:v24 object:0];

      v25 = [v19 defaultCenter];
      v26 = v23;
      v27 = static PurchaseCompleteNotificationDetails.notificationName.getter();
      [v25 addObserver:v26 selector:"didCompletePurchase:" name:v27 object:0];

      v29[3] = type metadata accessor for InAppPurchaseInstallPagePresenter();
      v29[4] = &protocol witness table for BasePresenter;

      v29[0] = a1;
      v28 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_lifecycleObserver;
      swift_beginAccess();
      sub_1000315F8(v29, v26 + v28, &unk_10097F510, &unk_1007B2700);
      swift_endAccess();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_10022F8D4(char a1)
{
  if ((*(v1 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_offerMode + 8) & 1) == 0)
  {
    v3 = InstallPageOfferMode.rawValue.getter();
    if (v3 == InstallPageOfferMode.rawValue.getter())
    {
      if (*(v1 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction) && (type metadata accessor for InAppPurchaseAction(), swift_dynamicCastClass()))
      {

        InAppPurchaseAction.appBundleId.getter();

        if (qword_10096D110 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for OSLogger();
        sub_1000056A8(v5, qword_1009CE1E8);
        sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1007B1890;
        LogMessage.init(stringLiteral:)();
        v14 = &type metadata for Bool;
        v6 = a1 & 1;
        LOBYTE(v13[0]) = v6;
        static LogMessage.sensitive(_:)();
        sub_10002B894(v13, &unk_1009711D0, &unk_1007B1A10);
        Logger.debug(_:)();

        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        v8 = objc_allocWithZone(SKInstallSheetStatusUpdateRequest);
        v9 = String._bridgeToObjectiveC()();

        v15 = sub_100235C20;
        v16 = v7;
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1107296256;
        v13[2] = sub_100235540;
        v14 = &unk_1008BA0C8;
        v10 = _Block_copy(v13);

        v11 = [v8 initWithAppBundleId:v9 isInstallSheetOpen:v6 completionHandler:v10];
        _Block_release(v10);

        [v11 start];
      }

      else
      {
        if (qword_10096D110 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for OSLogger();
        sub_1000056A8(v12, qword_1009CE1E8);
        sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1007B10D0;
        LogMessage.init(stringLiteral:)();
        Logger.debug(_:)();
      }
    }
  }

  return result;
}

double sub_10022FD1C(uint64_t a1, char a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10096D110 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for OSLogger();
    sub_1000056A8(v2, qword_1009CE1E8);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    swift_getErrorValue();
    v9 = v7;
    v3 = sub_1000056E0(v8);
    (*(*(v7 - 1) + 16))(v3);
    static LogMessage.sensitive(_:)();
    sub_10002B894(v8, &unk_1009711D0, &unk_1007B1A10);
    Logger.debug(_:)();
  }

  else
  {
    if (qword_10096D110 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for OSLogger();
    sub_1000056A8(v6, qword_1009CE1E8);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v9 = &type metadata for Bool;
    LOBYTE(v8[0]) = a2 & 1;
    static LogMessage.sensitive(_:)();
    sub_10002B894(v8, &unk_1009711D0, &unk_1007B1A10);
    Logger.debug(_:)();
  }

  return result;
}

id sub_10023005C()
{
  v1 = v0;
  v2 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v7 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v1 + v7, v13, &unk_10097F510, &unk_1007B2700);
  if (v14)
  {
    sub_10002C0AC(v13, v12);
    sub_10002B894(v13, &unk_10097F510, &unk_1007B2700);
    sub_10002A400(v12, v12[3]);
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v2);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v3 + 8))(v5, v2);
    sub_100007000(v12);
  }

  else
  {
    sub_10002B894(v13, &unk_10097F510, &unk_1007B2700);
  }

  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  result = [v1 view];
  if (result)
  {
    v10 = result;
    [result setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    return dispatch thunk of BasePresenter.didLoad()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002302E8(char a1)
{
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  v8 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v1 + v8, v12, &unk_10097F510, &unk_1007B2700);
  if (!v13)
  {
    return sub_10002B894(v12, &unk_10097F510, &unk_1007B2700);
  }

  sub_10002C0AC(v12, v11);
  sub_10002B894(v12, &unk_10097F510, &unk_1007B2700);
  sub_10002A400(v11, v11[3]);
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v6, v3);
  return sub_100007000(v11);
}

double sub_100230568(char a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-1] - v5;
  v7 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v22.receiver = v2;
  v22.super_class = v11;
  objc_msgSendSuper2(&v22, "viewDidAppear:", a1 & 1);
  v12 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(&v2[v12], v20, &unk_10097F510, &unk_1007B2700);
  if (v21)
  {
    sub_10002C0AC(v20, v19);
    sub_10002B894(v20, &unk_10097F510, &unk_1007B2700);
    sub_10002A400(v19, v19[3]);
    (*(v8 + 104))(v10, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v7);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v8 + 8))(v10, v7);
    sub_100007000(v19);
  }

  else
  {
    sub_10002B894(v20, &unk_10097F510, &unk_1007B2700);
  }

  result = sub_10022F8D4(1);
  if (*&v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_pendingAction])
  {
    v14 = *&v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_objectGraph];
    v15 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v6, 1, v15) == 1)
    {
      sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
    }

    else
    {

      sub_1005F9AF4(v17, 1, v14, v6);

      (*(v16 + 8))(v6, v15);
    }

    sub_10022F140(0);
  }

  return result;
}

uint64_t sub_100230900(SEL *a1, unsigned int *a2)
{
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v16.receiver = v2;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, *a1);
  v10 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v2 + v10, v14, &unk_10097F510, &unk_1007B2700);
  if (!v15)
  {
    return sub_10002B894(v14, &unk_10097F510, &unk_1007B2700);
  }

  sub_10002C0AC(v14, v13);
  sub_10002B894(v14, &unk_10097F510, &unk_1007B2700);
  sub_10002A400(v13, v13[3]);
  (*(v6 + 104))(v8, *a2, v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v8, v5);
  return sub_100007000(v13);
}

uint64_t sub_100230B14()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v12.receiver = v0;
  v12.super_class = v5;
  objc_msgSendSuper2(&v12, "as_viewWillBecomePartiallyVisible");
  v6 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v0 + v6, v10, &unk_10097F510, &unk_1007B2700);
  if (!v11)
  {
    return sub_10002B894(v10, &unk_10097F510, &unk_1007B2700);
  }

  sub_10002C0AC(v10, v9);
  sub_10002B894(v10, &unk_10097F510, &unk_1007B2700);
  sub_10002A400(v9, v9[3]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v1);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v2 + 8))(v4, v1);
  return sub_100007000(v9);
}

uint64_t sub_100230D28(char a1)
{
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewWillDisappear:", a1 & 1);
  v8 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v1 + v8, v12, &unk_10097F510, &unk_1007B2700);
  if (!v13)
  {
    return sub_10002B894(v12, &unk_10097F510, &unk_1007B2700);
  }

  sub_10002C0AC(v12, v11);
  sub_10002B894(v12, &unk_10097F510, &unk_1007B2700);
  sub_10002A400(v11, v11[3]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v6, v3);
  return sub_100007000(v11);
}

double sub_100230FC0(char a1)
{
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewDidDisappear:", a1 & 1);
  v8 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v1 + v8, v12, &unk_10097F510, &unk_1007B2700);
  if (v13)
  {
    sub_10002C0AC(v12, v11);
    sub_10002B894(v12, &unk_10097F510, &unk_1007B2700);
    sub_10002A400(v11, v11[3]);
    (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v3);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v4 + 8))(v6, v3);
    sub_100007000(v11);
  }

  else
  {
    sub_10002B894(v12, &unk_10097F510, &unk_1007B2700);
  }

  return sub_10022F8D4(0);
}

void sub_10023130C()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v3 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v4 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v5 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_100231464()
{
  v1 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_overlayViewController];
  if (v2)
  {
    type metadata accessor for JULoadingViewController();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      static ViewControllerContainment.remove(_:)();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        static ViewControllerContainment.add(_:to:frame:)();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100231548(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for JUContentUnavailableViewController();
  sub_100235BD8(&unk_10097A870, &type metadata accessor for InAppPurchaseInstallPagePresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  v4 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_overlayViewController;
  v5 = *&v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v6 = *&v2[v4];
  *&v2[v4] = v3;
  v9 = v3;

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002316C0(unint64_t a1, uint64_t a2, uint64_t a3, NSString a4)
{
  v5 = v4;
  v9 = sub_10002849C(&qword_100972A80, &qword_1007C9840);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v34 - v11;
  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  [v5 setTitle:{a4, v10}];

  v13 = &v5[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_activeView];
  v14 = *&v5[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_activeView];
  swift_unknownObjectRetain();
  sub_1002339B8(a1);
  if (InAppPurchaseInstallPage.parentLockup.getter())
  {
    Lockup.adamId.getter();

    v15 = type metadata accessor for AdamId();
    (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for AdamId();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  v17 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_appAdamId;
  swift_beginAccess();
  sub_1000315F8(v12, &v5[v17], &qword_100972A80, &qword_1007C9840);
  swift_endAccess();
  if (InAppPurchaseInstallPage.lockup.getter())
  {
    v18 = Lockup.buttonAction.getter();

    *&v5[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction] = v18;
  }

  if (*v13)
  {
    v19 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    v34 = v13;
    v21 = ObjectType;
    v22 = *&v5[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_objectGraph];
    v23 = a1;
    v24 = *(v19 + 8);
    swift_unknownObjectRetain();
    v25 = v21;
    v13 = v34;
    v24(a2, v22, v25, v19);
    a1 = v23;
    swift_unknownObjectRelease();
  }

  if (v14)
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      swift_unknownObjectRetain();
    }

    if (*v13)
    {
      goto LABEL_14;
    }

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  v26 = 0;
  if (!*v13)
  {
    goto LABEL_17;
  }

LABEL_14:
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    swift_unknownObjectRetain();
  }

LABEL_18:
  sub_100233BF0(v26, v27);

  v28 = &v5[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_offerMode];
  if (v5[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_offerMode + 8] == 1)
  {
    sub_10022F8D4(0);
    *v28 = a1;
    v28[8] = 0;
LABEL_23:
    v31 = sub_10022F8D4(1);
    goto LABEL_24;
  }

  v29 = InstallPageOfferMode.rawValue.getter();
  if (v29 != InstallPageOfferMode.rawValue.getter())
  {
    sub_10022F8D4(0);
  }

  *v28 = a1;
  v28[8] = 0;
  v30 = InstallPageOfferMode.rawValue.getter();
  if (v30 != InstallPageOfferMode.rawValue.getter())
  {
    goto LABEL_23;
  }

LABEL_24:
  v32 = [v5 view];
  if (v32)
  {
    v33 = v32;
    [v32 setNeedsLayout];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_100231AC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(__n128), void (*a6)(__n128))
{
  v86 = a6;
  v87 = a1;
  v8 = v6;
  v90 = a3;
  v91 = a4;
  v88 = a2;
  v9 = type metadata accessor for TextConfigurationTheme();
  __chkstk_darwin(v9 - 8);
  v85 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v11 - 8);
  v84 = &v72 - v12;
  v13 = type metadata accessor for OfferEnvironment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v72 - v18;
  v20 = type metadata accessor for OfferButtonPresenterViewTheme();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for OfferButtonMetrics();
  v24 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v73 = &v72 - v27;
  __chkstk_darwin(v28);
  v75 = &v72 - v29;
  __chkstk_darwin(v30);
  v78 = &v72 - v31;
  __chkstk_darwin(v32);
  v79 = &v72 - v33;
  __chkstk_darwin(v34);
  v80 = &v72 - v35;
  v36 = type metadata accessor for TextConfiguration();
  v82 = *(v36 - 8);
  v83 = v36;
  v37 = __chkstk_darwin(v36);
  v81 = &v72 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5(v37);
  OfferButtonPresenterViewTheme.environment.getter();
  (*(v21 + 8))(v23, v20);
  v89 = v8;
  result = [v8 view];
  if (result)
  {
    v40 = result;
    v41 = [result traitCollection];

    v42 = *(v14 + 104);
    v42(v16, enum case for OfferEnvironment.arcadeProductPage(_:), v13);
    v43 = static OfferEnvironment.== infix(_:_:)();
    v44 = *(v14 + 8);
    v44(v16, v13);
    v92 = v13;
    if (v43)
    {
      v45 = v19;
      if (qword_10096ECE8 != -1)
      {
        swift_once();
      }

      v46 = v77;
      v47 = sub_1000056A8(v77, qword_1009D32F8);
      v48 = v78;
      (*(v24 + 16))(v78, v47, v46);

      v49 = v44;
      goto LABEL_16;
    }

    v42(v16, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v13);
    v50 = static OfferEnvironment.== infix(_:_:)();
    v76 = v44;
    v44(v16, v13);
    if (v50)
    {
      v45 = v19;
      if (qword_10096ECE0 != -1)
      {
        swift_once();
      }

      v51 = qword_1009D32E0;
      v46 = v77;
LABEL_14:
      v52 = sub_1000056A8(v46, v51);
      v48 = v78;
      (*(v24 + 16))(v78, v52, v46);

LABEL_15:
      v49 = v76;
LABEL_16:
      v53 = *(v24 + 32);
      v54 = v79;
      v53(v79, v48, v46);
      v49(v45, v92);
      v53(v80, v54, v46);
      v55 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
      (*(*(v55 - 8) + 56))(v84, 1, 1, v55);

      (v86)(v56);
      v57 = v81;
      TextConfiguration.init(metrics:text:subtitleText:subtitlePosition:theme:)();
      sub_100235960(v57, v90, v91, *&v89[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_installOfferView], &type metadata accessor for TextConfiguration, sub_10064F8D8);
      return (*(v82 + 8))(v57, v83);
    }

    if (OfferEnvironment.isArcadeEnvironment.getter())
    {
      v45 = v19;
      v46 = v77;
      if (qword_10096ECD8 != -1)
      {
        swift_once();
      }

      v51 = qword_1009D32C8;
      goto LABEL_14;
    }

    v58 = v92;
    v42(v16, enum case for OfferEnvironment.navigationBar(_:), v92);
    v45 = v19;
    v59 = static OfferEnvironment.== infix(_:_:)();
    v76(v16, v58);
    v46 = v77;
    if (v59)
    {
      if (qword_10096ECF0 != -1)
      {
        swift_once();
      }

      v60 = sub_1000056A8(v46, qword_100991070);
      v48 = v78;
      (*(v24 + 16))(v78, v60, v46);

      goto LABEL_15;
    }

    v61 = String.count.getter();
    v62 = v41;
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v49 = v76;
      if (v61 <= 8)
      {
LABEL_23:
        v63 = UITraitCollection.prefersAccessibilityLayouts.getter();
        v48 = v78;
        if (v63)
        {
          if (qword_10096ECB8 != -1)
          {
            swift_once();
          }

          v64 = qword_100991010;
        }

        else
        {
          if (qword_10096ECC0 != -1)
          {
            swift_once();
          }

          v64 = qword_100991028;
        }

        v67 = sub_1000056A8(v46, v64);
        v68 = v74;
        (*(v24 + 16))(v74, v67, v46);

        (*(v24 + 32))(v48, v68, v46);
        goto LABEL_16;
      }
    }

    else
    {
      v49 = v76;
      if (v61 < 7)
      {
        goto LABEL_23;
      }
    }

    v65 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v48 = v78;
    v72 = v62;
    if (v65)
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v66 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v66 = qword_100991028;
    }

    v69 = sub_1000056A8(v46, v66);
    v70 = v73;
    (*(v24 + 16))(v73, v69, v46);
    v71 = v75;
    (*(v24 + 32))(v75, v70, v46);
    Copyable.copyWithOverrides(in:)();

    (*(v24 + 8))(v71, v46);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_100232500(uint64_t a1, void *a2, __n128 a3)
{
  v34 = a1;
  v35 = a2;
  v4 = type metadata accessor for OfferButtonPresenterViewTheme();
  __chkstk_darwin(v4 - 8);
  v32 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v6 - 8);
  v31 = v29 - v7;
  v8 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v30 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_100973240, qword_1007B2220);
  __chkstk_darwin(v11 - 8);
  v29[1] = v29 - v12;
  v13 = type metadata accessor for OfferButtonMetrics();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v29 - v18;
  v29[0] = type metadata accessor for RedownloadConfiguration();
  v20 = *(v29[0] - 8);
  *&v21 = __chkstk_darwin(v29[0]).n128_u64[0];
  v23 = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v3;
  result = [v3 view];
  if (result)
  {
    v25 = result;
    v26 = [result traitCollection];

    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v27 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v27 = qword_100991028;
    }

    v28 = sub_1000056A8(v13, v27);
    (*(v14 + 16))(v16, v28, v13);

    (*(v14 + 32))(v19, v16, v13);
    (*(v9 + 104))(v30, enum case for OfferButtonPresenterViewAlignment.center(_:), v8);
    (*(v9 + 56))(v31, 1, 1, v8);
    sub_100235BD8(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
    AccessibilityConditional.init(value:axValue:)();
    static OfferButtonPresenterViewTheme.blueColored.getter();
    RedownloadConfiguration.init(metrics:alignment:theme:)();
    sub_100235960(v23, v34, v35, *&v33[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_installOfferView], &type metadata accessor for RedownloadConfiguration, sub_10064F91C);
    return (*(v20 + 8))(v23, v29[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1002329E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v77 = a3;
  v78 = a4;
  v75 = a1;
  v76 = a2;
  v7 = type metadata accessor for TextConfigurationTheme();
  __chkstk_darwin(v7 - 8);
  v74 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v9 - 8);
  v73 = &v61 - v10;
  v72 = type metadata accessor for OfferEnvironment();
  v11 = *(v72 - 8);
  __chkstk_darwin(v72);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v17 = type metadata accessor for OfferButtonPresenterViewTheme();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OfferButtonMetrics();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v62 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v61 = &v61 - v25;
  __chkstk_darwin(v26);
  v63 = &v61 - v27;
  __chkstk_darwin(v28);
  v65 = &v61 - v29;
  __chkstk_darwin(v30);
  v66 = &v61 - v31;
  __chkstk_darwin(v32);
  v68 = &v61 - v33;
  v34 = type metadata accessor for TextConfiguration();
  v70 = *(v34 - 8);
  v71 = v34;
  __chkstk_darwin(v34);
  v69 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v5[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_isInBackground] & 1) == 0)
  {
    v5[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] = 1;
  }

  v67 = *&v5[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_installOfferView];
  sub_100497318(a5);
  static OfferButtonPresenterViewTheme.disabled.getter();
  OfferButtonPresenterViewTheme.environment.getter();
  (*(v18 + 8))(v20, v17);
  result = [v5 view];
  if (result)
  {
    v37 = result;
    v79 = [result traitCollection];

    v38 = *(v11 + 104);
    v39 = v72;
    v38(v13, enum case for OfferEnvironment.arcadeProductPage(_:), v72);
    LOBYTE(v37) = static OfferEnvironment.== infix(_:_:)();
    v40 = *(v11 + 8);
    v40(v13, v39);
    v64 = v16;
    if (v37)
    {
      if (qword_10096ECE8 != -1)
      {
        swift_once();
      }

      v41 = qword_1009D32F8;
LABEL_16:
      v43 = sub_1000056A8(v21, v41);
      v44 = v65;
      (*(v22 + 16))(v65, v43, v21);

LABEL_17:
      v45 = *(v22 + 32);
      v46 = v66;
      v45(v66, v44, v21);
      v40(v64, v39);
      v45(v68, v46, v21);
      v47 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
      (*(*(v47 - 8) + 56))(v73, 1, 1, v47);

      static TextConfigurationTheme.disabled.getter();
      v48 = v69;
      TextConfiguration.init(metrics:text:subtitleText:subtitlePosition:theme:)();
      sub_100235960(v48, v77, v78, v67, &type metadata accessor for TextConfiguration, sub_10064F8D8);
      return (*(v70 + 8))(v48, v71);
    }

    v38(v13, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v39);
    v42 = static OfferEnvironment.== infix(_:_:)();
    v40(v13, v39);
    if (v42)
    {
      if (qword_10096ECE0 != -1)
      {
        swift_once();
      }

      v41 = qword_1009D32E0;
      goto LABEL_16;
    }

    if (OfferEnvironment.isArcadeEnvironment.getter())
    {
      if (qword_10096ECD8 != -1)
      {
        swift_once();
      }

      v41 = qword_1009D32C8;
      goto LABEL_16;
    }

    v38(v13, enum case for OfferEnvironment.navigationBar(_:), v39);
    v49 = static OfferEnvironment.== infix(_:_:)();
    v40(v13, v39);
    if (v49)
    {
      if (qword_10096ECF0 != -1)
      {
        swift_once();
      }

      v50 = sub_1000056A8(v21, qword_100991070);
      v44 = v65;
      (*(v22 + 16))(v65, v50, v21);

      goto LABEL_17;
    }

    v51 = String.count.getter();
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (v51 <= 8)
      {
LABEL_24:
        if (UITraitCollection.prefersAccessibilityLayouts.getter())
        {
          v52 = v65;
          if (qword_10096ECB8 != -1)
          {
            swift_once();
          }

          v53 = qword_100991010;
        }

        else
        {
          v52 = v65;
          if (qword_10096ECC0 != -1)
          {
            swift_once();
          }

          v53 = qword_100991028;
        }

        v56 = sub_1000056A8(v21, v53);
        v57 = v62;
        (*(v22 + 16))(v62, v56, v21);

        (*(v22 + 32))(v52, v57, v21);
        v44 = v52;
        goto LABEL_17;
      }
    }

    else if (v51 < 7)
    {
      goto LABEL_24;
    }

    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v54 = v65;
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v55 = qword_100991010;
    }

    else
    {
      v54 = v65;
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v55 = qword_100991028;
    }

    v58 = sub_1000056A8(v21, v55);
    v59 = v61;
    (*(v22 + 16))(v61, v58, v21);
    v60 = v63;
    (*(v22 + 32))(v63, v59, v21);
    v44 = v54;
    Copyable.copyWithOverrides(in:)();

    (*(v22 + 8))(v60, v21);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1002333FC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v31 = a1;
  v32 = a2;
  v4 = type metadata accessor for OfferButtonPresenterViewTheme();
  __chkstk_darwin(v4 - 8);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v6 - 8);
  v29 = &v27 - v7;
  v8 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_100973240, qword_1007B2220);
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for OfferButtonMetrics();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v27 - v19;
  v28 = *&v3[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_installOfferView];
  v21 = [v3 view];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 traitCollection];

    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v24 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v24 = qword_100991028;
    }

    v25 = sub_1000056A8(v13, v24);
    (*(v14 + 16))(v16, v25, v13);

    (*(v14 + 32))(v20, v16, v13);
    (*(v9 + 104))(v11, enum case for OfferButtonPresenterViewAlignment.center(_:), v8);
    (*(v9 + 56))(v29, 1, 1, v8);
    sub_100235BD8(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
    AccessibilityConditional.init(value:axValue:)();
    static OfferButtonPresenterViewTheme.blueColored.getter();
    type metadata accessor for IndeterminateProgressConfiguration();
    swift_allocObject();
    v26 = IndeterminateProgressConfiguration.init(metrics:alignment:theme:)();
    sub_100235AE0(v26, v31, v32, v28);
  }

  else
  {
    __break(1u);
  }
}

void sub_100233830()
{
  if (v0[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1004974E4(sub_100235770, v1);

    sub_100497318(1.0);
  }

  else
  {
    v2 = &v0[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 1);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {

      [v0 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_100233964(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100233FAC();
  }
}

double sub_1002339B8(unint64_t a1)
{
  if (a1 <= 2)
  {
    v2 = off_1008BA108[a1];
    v3 = *(v1 + *off_1008BA0F0[a1]);
    v4 = (v1 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_activeView);
    *v4 = v3;
    v4[1] = v2;

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100233A34(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 sizeThatFits:{v10, v12}];
      v14 = v13;
      v15.origin.x = v6;
      v15.origin.y = v8;
      v15.size.width = v10;
      v15.size.height = v12;
      if (CGRectGetHeight(v15) >= v14)
      {
        v20.origin.x = v6;
        v20.origin.y = v8;
        v20.size.width = v10;
        v20.size.height = v12;
        CGRectGetMinY(v20);
        v21.origin.x = v6;
        v21.origin.y = v8;
        v21.size.width = v10;
        v21.size.height = v12;
        CGRectGetHeight(v21);
        v22.origin.x = v6;
        v22.origin.y = v8;
        v22.size.width = v10;
        v22.size.height = v12;
        CGRectGetMinX(v22);
        v23.origin.x = v6;
        v23.origin.y = v8;
        v23.size.width = v10;
        v23.size.height = v12;
        CGRectGetWidth(v23);
      }

      else
      {
        v16.origin.x = v6;
        v16.origin.y = v8;
        v16.size.width = v10;
        v16.size.height = v12;
        CGRectGetMinX(v16);
        v17.origin.x = v6;
        v17.origin.y = v8;
        v17.size.width = v10;
        v17.size.height = v12;
        CGRectGetMinY(v17);
        v18.origin.x = v6;
        v18.origin.y = v8;
        v18.size.width = v10;
        v18.size.height = v12;
        CGRectGetWidth(v18);
        v19.origin.x = v6;
        v19.origin.y = v8;
        v19.size.width = v10;
        v19.size.height = v12;
        CGRectGetHeight(v19);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100233BF0(id a1, id a2)
{
  if (!a1)
  {
    if (!a2)
    {
      return;
    }

LABEL_6:
    v5 = a2;
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 sizeThatFits:{v13, v15}];
      Height = v16;
      v39.origin.x = v9;
      v39.origin.y = v11;
      v39.size.width = v13;
      v39.size.height = v15;
      if (CGRectGetHeight(v39) >= Height)
      {
        v44.origin.x = v9;
        v44.origin.y = v11;
        v44.size.width = v13;
        v44.size.height = v15;
        MinY = CGRectGetMinY(v44);
        v45.origin.x = v9;
        v45.origin.y = v11;
        v45.size.width = v13;
        v45.size.height = v15;
        v19 = MinY + (CGRectGetHeight(v45) - Height) * 0.5;
        v46.origin.x = v9;
        v46.origin.y = v11;
        v46.size.width = v13;
        v46.size.height = v15;
        MinX = CGRectGetMinX(v46);
        v47.origin.x = v9;
        v47.origin.y = v11;
        v47.size.width = v13;
        v47.size.height = v15;
        Width = CGRectGetWidth(v47);
      }

      else
      {
        v40.origin.x = v9;
        v40.origin.y = v11;
        v40.size.width = v13;
        v40.size.height = v15;
        MinX = CGRectGetMinX(v40);
        v41.origin.x = v9;
        v41.origin.y = v11;
        v41.size.width = v13;
        v41.size.height = v15;
        v19 = CGRectGetMinY(v41);
        v42.origin.x = v9;
        v42.origin.y = v11;
        v42.size.width = v13;
        v42.size.height = v15;
        Width = CGRectGetWidth(v42);
        v43.origin.x = v9;
        v43.origin.y = v11;
        v43.size.width = v13;
        v43.size.height = v15;
        Height = CGRectGetHeight(v43);
      }

      [v5 setFrame:{MinX, v19, Width, Height}];
      [v5 layoutIfNeeded];
      [v5 setAlpha:0.0];
      v22 = v5;
      v23 = [v2 view];
      if (v23)
      {
        v24 = v23;
        [v23 addSubview:v22];

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a1 == a2)
  {
    return;
  }

  if (a2)
  {
    goto LABEL_6;
  }

  [0 layoutIfNeeded];
LABEL_12:
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a1;
  v37 = sub_100235700;
  v38 = v26;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100007A08;
  v36 = &unk_1008BA028;
  v27 = _Block_copy(&v33);
  v28 = a1;
  v29 = a2;

  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  v37 = sub_100235760;
  v38 = v30;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100504C5C;
  v36 = &unk_1008BA078;
  v31 = _Block_copy(&v33);
  v32 = v28;

  [v25 animateWithDuration:v27 animations:v31 completion:0.3];
  _Block_release(v31);
  _Block_release(v27);
}

uint64_t sub_100233FAC()
{
  v1 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v1 - 8);
  v34 = &v32 - v2;
  v3 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OpenableDestination();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100972A80, &qword_1007C9840);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = type metadata accessor for AdamId();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  swift_unknownObjectWeakInit();
  v17 = &v0[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 1);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(ObjectType, v18);
    swift_unknownObjectRelease();
  }

  else
  {
    [v0 dismissViewControllerAnimated:1 completion:0];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_appAdamId;
    swift_beginAccess();
    sub_100031660(&v21[v22], v9, &qword_100972A80, &qword_1007C9840);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      v23 = &qword_100972A80;
      v24 = &qword_1007C9840;
      v25 = v9;
    }

    else
    {
      (*(v11 + 32))(v16, v9, v10);
      (*(v11 + 16))(v13, v16, v10);
      (*(v33 + 104))(v6, enum case for OpenableDestination.app(_:), v4);
      static ActionMetrics.notInstrumented.getter();
      type metadata accessor for OpenAppAction();
      swift_allocObject();
      v26 = OpenAppAction.init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)();
      v27 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_objectGraph;
      v28 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      v29 = v34;
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v30 = *(v28 - 8);
      if ((*(v30 + 48))(v29, 1, v28) != 1)
      {
        sub_1005FA14C(v26, 1, *&v21[v27], v29);

        (*(v11 + 8))(v16, v10);

        (*(v30 + 8))(v29, v28);
        return swift_unknownObjectWeakDestroy();
      }

      (*(v11 + 8))(v16, v10);
      v23 = &unk_100972A00;
      v24 = &unk_1007B3130;
      v25 = v29;
    }

    sub_10002B894(v25, v23, v24);
  }

  return swift_unknownObjectWeakDestroy();
}

uint64_t sub_1002344E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002849C(&qword_100972A80, &qword_1007C9840);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for AdamId();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = Notification.userInfo.getter();
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v34 = static AskToBuyRequestNotificationDetails.adamIdKey.getter();
  v35 = v17;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v18 = sub_1003D78D8(v36), (v19 & 1) == 0))
  {

    sub_10003D614(v36);
LABEL_10:
    v37 = 0u;
    v38 = 0u;
    goto LABEL_11;
  }

  sub_1000073E8(*(v16 + 56) + 32 * v18, &v37);
  sub_10003D614(v36);

  if (!*(&v38 + 1))
  {
LABEL_11:
    sub_10002B894(&v37, &unk_1009711D0, &unk_1007B1A10);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_12;
  }

  v20 = swift_dynamicCast();
  v21 = *(v9 + 56);
  v21(v7, v20 ^ 1u, 1, v8);
  v33 = *(v9 + 48);
  if (v33(v7, 1, v8) == 1)
  {
LABEL_12:
    v25 = v7;
    return sub_10002B894(v25, &qword_100972A80, &qword_1007C9840);
  }

  v31 = *(v9 + 32);
  v32 = v9 + 32;
  v31(v14, v7, v8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v9 + 8))(v14, v8);
    v21(v4, 1, 1, v8);
    goto LABEL_16;
  }

  v23 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_appAdamId;
  v24 = Strong;
  swift_beginAccess();
  sub_100031660(v24 + v23, v4, &qword_100972A80, &qword_1007C9840);

  if (v33(v4, 1, v8) == 1)
  {
    (*(v9 + 8))(v14, v8);
LABEL_16:
    v25 = v4;
    return sub_10002B894(v25, &qword_100972A80, &qword_1007C9840);
  }

  v31(v11, v4, v8);
  if (static AdamId.== infix(_:_:)())
  {
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      sub_100233FAC();
    }
  }

  v29 = *(v9 + 8);
  v29(v11, v8);
  return (v29)(v14, v8);
}

uint64_t sub_100234950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Notification();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = v23;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = v24;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100235BD8(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v21;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v27 + 8))(v7, v5);
  return (*(v25 + 8))(v10, v26);
}

void sub_100234CF8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for AdamId();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Notification.userInfo.getter();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v15[1] = static PurchaseCompleteNotificationDetails.purchaseKey.getter();
  v15[2] = v8;
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v9 = sub_1003D78D8(v16), (v10 & 1) == 0))
  {

    sub_10003D614(v16);
LABEL_9:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_10;
  }

  sub_1000073E8(*(v7 + 56) + 32 * v9, &v17);
  sub_10003D614(v16);

  if (!*(&v18 + 1))
  {
LABEL_10:
    sub_10002B894(&v17, &unk_1009711D0, &unk_1007B1A10);
    return;
  }

  sub_100005744(0, &qword_10097A868, ASDPurchase_ptr);
  if (swift_dynamicCast())
  {
    v11 = v16[0];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;

      v14 = [v11 itemID];
      AdamId.init(value:)();
      dispatch thunk of InAppPurchaseInstallPagePresenter.purchaseDidComplete(for:)();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
    }
  }
}

uint64_t sub_100234F34(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

id sub_100235054()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseInstallPageViewController(uint64_t a1)
{
  result = qword_10097A830;
  if (!qword_10097A830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002351FC(uint64_t a1)
{
  sub_1002352FC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002352FC(uint64_t a1)
{
  if (!qword_10097A840)
  {
    type metadata accessor for AdamId();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10097A840);
    }
  }
}

void sub_100235358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a1)
  {
    case 2:
      sub_100777F08(a2, a3);
      break;
    case 1:
      sub_1001D3F28(a2, a3);
      break;
    case 0:
      sub_100497074(a2, a3);
      break;
  }
}

double sub_100235428(uint64_t a1)
{

  return sub_10022F140(v1);
}

void sub_100235540(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1002355AC()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100235660(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for Notification() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

id sub_100235700()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  if (result)
  {
    result = [result setAlpha:1.0];
  }

  if (v2)
  {

    return [v2 setAlpha:0.0];
  }

  return result;
}

void sub_100235778()
{
  *(v0 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_installOfferView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for InstallPageInstallingOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_preInstallFreeOfferView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallFreeOfferView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_preInstallPaidOfferView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallPaidOfferView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_activeView);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_offerViewTransitionFadeDuration) = 0x3FD3333333333333;
  v5 = OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_appAdamId;
  v6 = type metadata accessor for AdamId();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_offerMode;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_isInBackground) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_pendingAction) = 0;
  v8 = v0 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_lifecycleObserver;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_overlayViewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100235960(uint64_t a1, uint64_t a2, NSString a3, char *a4, uint64_t (*a5)(void), void (*a6)(char *, void))
{
  v10 = a5(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v19 - v12;
  (*(v14 + 16))(&v19 - v12, a1, v11);
  v15 = *&a4[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_descriptionLabel];
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  [v15 setText:a3];

  v16 = objc_opt_self();
  v17 = [v16 areAnimationsEnabled];
  [v16 setAnimationsEnabled:0];
  a6(v13, *&a4[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton]);
  [a4 setNeedsLayout];
  return [v16 setAnimationsEnabled:v17];
}

id sub_100235AE0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *&a4[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_descriptionLabel];
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v5 setText:v6];

  v7 = objc_opt_self();
  v8 = [v7 areAnimationsEnabled];
  [v7 setAnimationsEnabled:0];
  v9 = *&a4[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_offerButton];

  sub_10064FFB4(v10, v9);
  [a4 setNeedsLayout];

  return [v7 setAnimationsEnabled:v8];
}

uint64_t sub_100235BD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100235C48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100235CC0()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_10097A880);
  sub_1000056A8(v4, qword_10097A880);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

void *sub_100235E14(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for WelcomeOnboardingStep();
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(&v31, "JourneyDriven");
  HIWORD(v31) = -4864;
  AnyHashable.init<A>(_:)();
  v9 = OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_onboardingEngagement;
  *&v3[v9] = [objc_allocWithZone(AMSEngagement) init];
  *&v3[OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_engagementViewController] = 0;
  v27 = v3;
  v28 = a1;
  *&v3[OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_bag] = a1;
  v10 = *(a2 + 16);

  if (v10)
  {
    v11 = 0;
    v12 = a2 + 32;
    v13 = _swiftEmptyArrayStorage;
    while (v11 < *(a2 + 16))
    {
      sub_10002C0AC(v12, &v31);
      sub_10002A400(&v31, v32);
      if (dispatch thunk of OnboardingStep.shouldShow.getter())
      {
        sub_100005A38(&v31, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10014432C(0, v13[2] + 1, 1);
          v13 = v33;
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          sub_10014432C((v15 > 1), v16 + 1, 1);
          v13 = v33;
        }

        v13[2] = v16 + 1;
        sub_100005A38(v30, &v13[5 * v16 + 4]);
      }

      else
      {
        sub_100007000(&v31);
      }

      ++v11;
      v12 += 40;
      if (v10 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_13:

  v10 = v13[2];
  if (v10)
  {
    v17 = 0;
    v18 = (v13 + 4);
    while (v17 < v13[2])
    {
      sub_10002C0AC(v18, &v31);
      sub_100005A38(&v31, v30);
      sub_10002849C(&unk_10097A950, &qword_1007B1320);
      if (swift_dynamicCast())
      {
        (*(v25 + 8))(v8, v6);
        v10 = v13[2];

        if (v10 != 1)
        {
          goto LABEL_19;
        }

        v19 = qword_10096D470;
        goto LABEL_20;
      }

      ++v17;
      v18 += 40;
      if (v10 == v17)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_21;
  }

LABEL_18:

LABEL_19:
  LOBYTE(v10) = 0;
  v19 = qword_10096D470;
LABEL_20:
  if (v19 != -1)
  {
    goto LABEL_26;
  }

LABEL_21:
  v20 = type metadata accessor for OSLogger();
  sub_1000056A8(v20, qword_10097A880);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v21 = v27;
  *(v27 + OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_shouldShow) = v10;
  v29.receiver = v21;
  v29.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v29, "init");
  sub_1002362C0();

  return v22;
}

uint64_t sub_1002362C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for UnifiedMessagingPlacement();
  __chkstk_darwin(v3);
  v36 = v4;
  v37 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = v33 - v7;
  v10 = v9;
  (*(v9 + 104))(v33 - v7, enum case for UnifiedMessagingPlacement.onboardingFullSheet(_:), v3, v6);
  sub_100005744(0, &qword_10097A960, AMSEngagementMessageEvent_ptr);
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007B0B70;
  UnifiedMessagingPlacement.rawValue.getter();
  v12 = objc_allocWithZone(AMSEngagementPlacementInfo);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 initWithPlacement:v13 context:0];

  *(v11 + 32) = v14;
  v35 = static AMSEngagementMessageEvent.appstoreMessageEvent(with:)();

  v15 = *&v1[OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_onboardingEngagement];
  v39 = v1;
  v34 = v15;
  AMSEngagement.add(_:placement:)();
  if (qword_10096D470 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for OSLogger();
  v33[1] = sub_1000056A8(v16, qword_10097A880);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0xD000000000000020;
  v17._object = 0x8000000100808DA0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v41 = v3;
  v18 = sub_1000056E0(aBlock);
  v19 = *(v10 + 16);
  v19(v18, v8, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(aBlock);
  v20._object = 0x8000000100808DD0;
  v20._countAndFlagsBits = 0xD000000000000017;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v21 = v8;
  v33[0] = v8;
  v22 = v35;
  v23 = [v34 enqueueMessageEvent:v35];
  v24 = v37;
  v19(v37, v21, v3);
  v25 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v26 = (v36 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v10 + 32))(v27 + v25, v24, v3);
  v28 = ObjectType;
  v29 = v39;
  *(v27 + v26) = v39;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v42 = sub_10023A324;
  v43 = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100182E7C;
  v41 = &unk_1008BA148;
  v30 = _Block_copy(aBlock);
  v31 = v29;

  [v23 addFinishBlock:v30];
  _Block_release(v30);

  return (*(v10 + 8))(v33[0], v3);
}

uint64_t sub_1002367E8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a2;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v35 = *(v8 - 8);
  v36 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UnifiedMessagingPlacement();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v32 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v14, a3, v11);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  (*(v12 + 32))(v18 + v15, v14, v11);
  *(v18 + v16) = v29;
  v20 = v30;
  v19 = v31;
  *(v18 + v17) = v30;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_10023A3DC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008BA198;
  v21 = _Block_copy(aBlock);
  v22 = a1;
  swift_errorRetain();
  v23 = v20;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10023A484(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  v25 = v33;
  v24 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v32;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v37 + 8))(v25, v24);
  return (*(v35 + 8))(v10, v36);
}

void sub_100236BC4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v132 = a5;
  v131 = a4;
  v150 = type metadata accessor for UnifiedMessagingPlacement();
  v134 = *(v150 - 8);
  v8 = *(v134 + 64);
  __chkstk_darwin(v150);
  v130 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v145 = &v117 - v13;
  __chkstk_darwin(v14);
  v151 = type metadata accessor for OSLogger();
  v15 = *(v151 - 8);
  __chkstk_darwin(v151);
  v17 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_10096D470 != -1)
    {
      swift_once();
    }

    v46 = v151;
    v47 = sub_1000056A8(v151, qword_10097A880);
    (*(v15 + 16))(v17, v47, v46);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v48._countAndFlagsBits = 0xD000000000000021;
    v48._object = 0x8000000100808E30;
    LogMessage.StringInterpolation.appendLiteral(_:)(v48);
    v49 = v150;
    v155 = v150;
    v50 = sub_1000056E0(&aBlock);
    (*(v134 + 16))(v50, a2, v49);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&aBlock);
    v51._countAndFlagsBits = 0xD000000000000012;
    v51._object = 0x8000000100808E60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v51);
    if (a3)
    {
      swift_getErrorValue();
      v52 = Error.localizedDescription.getter();
      v54 = &type metadata for String;
    }

    else
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v154 = 0;
    }

    aBlock = v52;
    v153 = v53;
    v155 = v54;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&aBlock);
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v61);
    LogMessage.init(stringInterpolation:)();
    v62 = v151;
    Logger.info(_:)();

    (*(v15 + 8))(v17, v62);
    return;
  }

  v148 = v11;
  v133 = v8;
  v18 = qword_10096D470;
  v19 = a1;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v151, qword_10097A880);
  v21 = sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  v22 = *(type metadata accessor for LogMessage() - 8);
  v23 = *(v22 + 80);
  v24 = (v23 + 32) & ~v23;
  v142 = *(v22 + 72);
  v141 = v23;
  v143 = v21;
  v25 = swift_allocObject();
  v149 = xmmword_1007B10D0;
  *(v25 + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0xD000000000000027;
  v26._object = 0x8000000100808E80;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v150;
  v155 = v150;
  v28 = sub_1000056E0(&aBlock);
  v146 = *(v134 + 16);
  v147 = v134 + 16;
  v146(v28, a2, v27);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(&aBlock);
  v29._countAndFlagsBits = 0xD000000000000015;
  v29._object = 0x8000000100808EB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  v30 = sub_100005744(0, &qword_10097A968, AMSEngagementMessageEventResponse_ptr);
  v155 = v30;
  aBlock = v19;
  v31 = v19;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(&aBlock);
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  v144 = v24;
  LogMessage.init(stringInterpolation:)();
  v135 = v20;
  Logger.info(_:)();

  v33 = [v31 messageActions];
  if (!v33)
  {
LABEL_15:
    *(swift_allocObject() + 16) = v149;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v55._countAndFlagsBits = 0xD000000000000026;
    v55._object = 0x8000000100808ED0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v55);
    v155 = v30;
    aBlock = v31;
    v56 = v31;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&aBlock);
    v57._countAndFlagsBits = 0xD000000000000017;
    v57._object = 0x8000000100808F00;
    LogMessage.StringInterpolation.appendLiteral(_:)(v57);
    v58 = v150;
    v155 = v150;
    v59 = sub_1000056E0(&aBlock);
    v146(v59, a2, v58);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&aBlock);
    v60._countAndFlagsBits = 41;
    v60._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v60);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    goto LABEL_36;
  }

  v34 = v33;
  v35 = sub_100005744(0, &qword_10097A970, AMSEngagementMessageEventServiceResponse_ptr);
  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((Array.isNotEmpty.getter() & 1) == 0)
  {

    goto LABEL_15;
  }

  *(swift_allocObject() + 16) = v149;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._countAndFlagsBits = 0x20646E756F46;
  v37._object = 0xE600000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v37);
  v140 = v36;
  if (v36 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v135;
  v155 = &type metadata for Int;
  aBlock = v38;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(&aBlock);
  v40._countAndFlagsBits = 0xD000000000000026;
  v40._object = 0x8000000100808F20;
  LogMessage.StringInterpolation.appendLiteral(_:)(v40);
  v41 = v150;
  v155 = v150;
  v42 = sub_1000056E0(&aBlock);
  v146(v42, a2, v41);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(&aBlock);
  v43._countAndFlagsBits = 0xD00000000000001ALL;
  v43._object = 0x8000000100808F50;
  LogMessage.StringInterpolation.appendLiteral(_:)(v43);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  if (v36 >> 62)
  {
    v63 = v140;
    v45 = _CocoaArrayWrapper.endIndex.getter();
    v44 = v63;
  }

  else
  {
    v44 = v140;
    v45 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v45)
  {
    v139 = v35;
    v117 = v31;
    if (v45 >= 1)
    {
      v64 = 0;
      v124 = OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_bag;
      v137 = v44 & 0xC000000000000001;
      v136 = "). Iterating through them.";
      v123 = v133 + 7;
      v122 = v134 + 32;
      v121 = &v154;
      v119 = "acements dictionary: ";
      v118 = "acementRequest (";
      v120 = "ctionary returned in ";
      v126 = "lay for placement (";
      v65 = a2;
      v125 = a2;
      v138 = v45;
      while (1)
      {
        v148 = v64;
        v69 = v39;
        if (v137)
        {
          v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v70 = *(v44 + 8 * v64 + 32);
        }

        v71 = v70;
        *(swift_allocObject() + 16) = v149;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v72._countAndFlagsBits = 0x6974636570736E49;
        v72._object = 0xEB0000000020676ELL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v72);
        v73 = v139;
        v155 = v139;
        aBlock = v71;
        v74 = v71;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10003D444(&aBlock);
        v75._countAndFlagsBits = 0xD000000000000033;
        v75._object = (v136 | 0x8000000000000000);
        LogMessage.StringInterpolation.appendLiteral(_:)(v75);
        v76 = v150;
        v155 = v150;
        v77 = sub_1000056E0(&aBlock);
        v146(v77, v65, v76);
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10003D444(&aBlock);
        v78._countAndFlagsBits = 41;
        v78._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v78);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();
        v79 = v74;

        v80 = [v74 placements];
        if (v80)
        {
          v81 = v80;
          v82 = sub_100005744(0, &qword_10097A978, AMSEngagementMessageRequest_ptr);
          v83 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v84 = AMSEngagementMessageEventServiceResponse.placementRequest(for:)();
          v85 = v79;
          if (!v84)
          {
            *(swift_allocObject() + 16) = v149;
            LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v105._countAndFlagsBits = 0;
            v105._object = 0xE000000000000000;
            LogMessage.StringInterpolation.appendLiteral(_:)(v105);
            v106 = v150;
            v155 = v150;
            v107 = sub_1000056E0(&aBlock);
            v146(v107, v65, v106);
            LogMessage.StringInterpolation.appendInterpolation(safe:)();
            sub_10003D444(&aBlock);
            v108._object = (v120 | 0x8000000000000000);
            v108._countAndFlagsBits = 0xD000000000000025;
            LogMessage.StringInterpolation.appendLiteral(_:)(v108);
            v155 = sub_10002849C(&qword_10097A980, qword_1007C2018);
            aBlock = v83;
            LogMessage.StringInterpolation.appendInterpolation(safe:)();
            sub_10003D444(&aBlock);
            v109._countAndFlagsBits = 0;
            v109._object = 0xE000000000000000;
            LogMessage.StringInterpolation.appendLiteral(_:)(v109);
            LogMessage.init(stringInterpolation:)();
            v39 = v135;
            Logger.info(_:)();

LABEL_33:

            goto LABEL_23;
          }

          v86 = v84;
          v133 = v85;

          v87 = [v86 engagementRequest];
          if (!v87)
          {
            *(swift_allocObject() + 16) = v149;
            LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v110._countAndFlagsBits = 0xD000000000000030;
            v110._object = (v119 | 0x8000000000000000);
            LogMessage.StringInterpolation.appendLiteral(_:)(v110);
            v155 = v82;
            aBlock = v86;
            v111 = v86;
            LogMessage.StringInterpolation.appendInterpolation(safe:)();
            sub_10003D444(&aBlock);
            v112._countAndFlagsBits = 0xD000000000000010;
            v112._object = (v118 | 0x8000000000000000);
            LogMessage.StringInterpolation.appendLiteral(_:)(v112);
            v113 = v150;
            v155 = v150;
            v114 = sub_1000056E0(&aBlock);
            v146(v114, v65, v113);
            LogMessage.StringInterpolation.appendInterpolation(safe:)();
            sub_10003D444(&aBlock);
            v115._countAndFlagsBits = 0;
            v115._object = 0xE000000000000000;
            LogMessage.StringInterpolation.appendLiteral(_:)(v115);
            LogMessage.init(stringInterpolation:)();
            v116 = v135;
            Logger.info(_:)();

            v39 = v116;
            goto LABEL_33;
          }

          v88 = v131;
          v89 = v87;
          v129 = v89;
          v90 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v89 bag:ASKBagContract.amsBag.getter()];
          v127 = v90;

          swift_unknownObjectRelease();
          v128 = [v90 canPresent];
          v91 = v130;
          v92 = v150;
          v146(v130, v65, v150);
          v93 = v134;
          v94 = (*(v134 + 80) + 24) & ~*(v134 + 80);
          v95 = &v123[v94] & 0xFFFFFFFFFFFFFFF8;
          v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
          v97 = swift_allocObject();
          *(v97 + 16) = v86;
          (*(v93 + 32))(v97 + v94, v91, v92);
          *(v97 + v95) = v88;
          v98 = v127;
          *(v97 + v96) = v127;
          *(v97 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8)) = v132;
          v156 = sub_10023A4CC;
          v157 = v97;
          aBlock = _NSConcreteStackBlock;
          v153 = 1107296256;
          v154 = sub_100235C48;
          v155 = &unk_1008BA1E8;
          v99 = _Block_copy(&aBlock);
          v100 = v86;
          v101 = v88;
          v102 = v98;

          v103 = v128;
          [v128 addFinishBlock:v99];
          v104 = v125;
          _Block_release(v99);

          v65 = v104;
          v39 = v135;
        }

        else
        {
          *(swift_allocObject() + 16) = v149;
          LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v66._object = (v126 | 0x8000000000000000);
          v66._countAndFlagsBits = 0xD000000000000025;
          LogMessage.StringInterpolation.appendLiteral(_:)(v66);
          v155 = v73;
          aBlock = v74;
          v67 = v74;
          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_10003D444(&aBlock);
          v68._countAndFlagsBits = 0;
          v68._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v68);
          LogMessage.init(stringInterpolation:)();
          Logger.info(_:)();

          v39 = v69;
        }

LABEL_23:
        v64 = v148 + 1;
        v44 = v140;
        if (v138 == v148 + 1)
        {

          goto LABEL_36;
        }
      }
    }

    __break(1u);
  }

  else
  {

LABEL_36:
  }
}

double sub_100237D98(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    if (qword_10096D470 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for OSLogger();
    sub_1000056A8(v11, qword_10097A880);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._countAndFlagsBits = 0xD000000000000046;
    v12._object = 0x80000001008090E0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    v30 = sub_100005744(0, &qword_10097A978, AMSEngagementMessageRequest_ptr);
    v29[0] = a3;
    v13 = a3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v29);
    v14._countAndFlagsBits = 0xD000000000000011;
    v14._object = 0x8000000100809130;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v15 = type metadata accessor for UnifiedMessagingPlacement();
    v30 = v15;
    v16 = sub_1000056E0(v29);
    (*(*(v15 - 8) + 16))(v16, a4, v15);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v29);
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v18 = *(a5 + OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_engagementViewController);
    *(a5 + OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_engagementViewController) = a6;

    v19 = a6;
  }

  else
  {
    if (qword_10096D470 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for OSLogger();
    sub_1000056A8(v21, qword_10097A880);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._countAndFlagsBits = 0xD000000000000016;
    v22._object = 0x8000000100809070;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    v30 = sub_100005744(0, &qword_10097A988, AMSUIEngagementTaskViewController_ptr);
    v29[0] = a6;
    v23 = a6;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v29);
    v24._object = 0x8000000100809090;
    v24._countAndFlagsBits = 0xD000000000000010;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    v25 = type metadata accessor for UnifiedMessagingPlacement();
    v30 = v25;
    v26 = sub_1000056E0(v29);
    (*(*(v25 - 8) + 16))(v26, a4, v25);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v29);
    v27._countAndFlagsBits = 0xD000000000000023;
    v27._object = 0x80000001008090B0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();
  }

  return result;
}

void sub_10023824C(void **a1, void **a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = type metadata accessor for Bag();
  __chkstk_darwin(v6 - 8);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MetricsTopicProvider();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSLogger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D470 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v10, qword_10097A880);
  (*(v11 + 16))(v13, v14, v10);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5350;
  LogMessage.init(stringLiteral:)();
  v40 = sub_100005744(0, &qword_10097A990, AMSEngagement_ptr);
  aBlock = a1;
  v15 = a1;
  static LogMessage.safe(_:)();
  sub_10003D444(&aBlock);
  LogMessage.init(stringLiteral:)();
  if (a2)
  {
    v16 = sub_100005744(0, &unk_10097A9A0, AMSEngagementRequest_ptr);
    v17 = a2;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v38 = 0;
    v39 = 0;
  }

  aBlock = v17;
  v40 = v16;
  v18 = a2;
  static LogMessage.safe(_:)();
  sub_10003D444(&aBlock);
  Logger.info(_:)();

  (*(v11 + 8))(v13, v10);
  if (a2)
  {
    v19 = v36;
    v20 = v18;
    ASKBagContract.amsBag.getter();
    Bag.init(from:)();
    MetricsTopicProvider.init(bag:)();
    HaveAnonymous = MetricsTopicProvider.shouldHaveAnonymousEvents.getter();
    (*(v32 + 8))(v9, v34);
    [v20 setAnonymousMetrics:HaveAnonymous & 1];
    v22 = v20;
    v23 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v22 bag:ASKBagContract.amsBag.getter()];

    swift_unknownObjectRelease();
    v24 = [v23 canPresent];
    v25 = swift_allocObject();
    v25[2] = v22;
    v25[3] = v19;
    v26 = v35;
    v25[4] = v23;
    v25[5] = v26;
    v41 = sub_10023AF0C;
    v42 = v25;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100235C48;
    v40 = &unk_1008BA3C8;
    v27 = _Block_copy(&aBlock);
    v28 = v22;
    v29 = v19;
    v30 = v23;

    [v24 addFinishBlock:v27];
    _Block_release(v27);
  }
}

double sub_100238770(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  if (a1)
  {
    if (qword_10096D470 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for OSLogger();
    sub_1000056A8(v9, qword_10097A880);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0xD000000000000040;
    v10._object = 0x8000000100809300;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    v24 = sub_100005744(0, &unk_10097A9A0, AMSEngagementRequest_ptr);
    v23[0] = a3;
    v11 = a3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v23);
    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v13 = *(a4 + OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_engagementViewController);
    *(a4 + OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_engagementViewController) = a5;

    v14 = a5;
  }

  else
  {
    if (qword_10096D470 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for OSLogger();
    sub_1000056A8(v16, qword_10097A880);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._object = 0x8000000100809070;
    v17._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    v24 = sub_100005744(0, &qword_10097A988, AMSUIEngagementTaskViewController_ptr);
    v23[0] = a5;
    v18 = a5;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v23);
    v19._countAndFlagsBits = 0xD000000000000018;
    v19._object = 0x80000001008092E0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    v24 = sub_100005744(0, &unk_10097A9A0, AMSEngagementRequest_ptr);
    v23[0] = a3;
    v20 = a3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v23);
    v21._countAndFlagsBits = 0xD000000000000023;
    v21._object = 0x80000001008090B0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();
  }

  return result;
}

void sub_100238B98(void **a1, void **a2, void **a3, uint64_t a4, void **a5, uint64_t a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v44 = a7;
  v46 = a5;
  v47 = a6;
  v48 = a4;
  v45 = a2;
  v10 = type metadata accessor for Bag();
  __chkstk_darwin(v10 - 8);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for MetricsTopicProvider();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OSLogger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D470 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v13, qword_10097A880);
  (*(v14 + 16))(v16, v17, v13);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5370;
  LogMessage.init(stringLiteral:)();
  v52 = sub_100005744(0, &qword_10097A990, AMSEngagement_ptr);
  aBlock = a1;
  v18 = a1;
  static LogMessage.safe(_:)();
  sub_10003D444(&aBlock);
  LogMessage.init(stringLiteral:)();
  v19 = v45;
  if (v45)
  {
    v20 = sub_100005744(0, &unk_10097A9A0, AMSEngagementRequest_ptr);
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v50 = 0;
    v51 = 0;
  }

  aBlock = v21;
  v52 = v20;
  v37 = v19;
  static LogMessage.safe(_:)();
  sub_10003D444(&aBlock);
  LogMessage.init(stringLiteral:)();
  v52 = &type metadata for String;
  aBlock = a3;
  v38 = a3;
  v22 = v48;
  v50 = v48;

  static LogMessage.safe(_:)();
  sub_10003D444(&aBlock);
  LogMessage.init(stringLiteral:)();
  v52 = &type metadata for String;
  aBlock = v46;
  v50 = v47;

  static LogMessage.safe(_:)();
  sub_10003D444(&aBlock);
  Logger.info(_:)();

  (*(v14 + 8))(v16, v13);
  if (v19)
  {
    v23 = v44;
    v24 = v37;
    ASKBagContract.amsBag.getter();
    Bag.init(from:)();
    v25 = v39;
    MetricsTopicProvider.init(bag:)();
    HaveAnonymous = MetricsTopicProvider.shouldHaveAnonymousEvents.getter();
    (*(v40 + 8))(v25, v42);
    [v24 setAnonymousMetrics:HaveAnonymous & 1];
    v27 = v24;
    v28 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v27 bag:ASKBagContract.amsBag.getter()];

    swift_unknownObjectRelease();
    v29 = [v28 canPresent];
    v30 = swift_allocObject();
    v31 = v38;
    v30[2] = v27;
    v30[3] = v31;
    v30[4] = v22;
    v30[5] = v23;
    v32 = v43;
    v30[6] = v28;
    v30[7] = v32;
    v53 = sub_10023AEA8;
    v54 = v30;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_100235C48;
    v52 = &unk_1008BA328;
    v33 = _Block_copy(&aBlock);
    v34 = v27;

    v35 = v23;
    v36 = v28;

    [v29 addFinishBlock:v33];
    _Block_release(v33);
  }
}

double sub_10023919C(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    if (qword_10096D470 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for OSLogger();
    sub_1000056A8(v13, qword_10097A880);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0xD000000000000040;
    v14._object = 0x8000000100809250;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v31 = sub_100005744(0, &unk_10097A9A0, AMSEngagementRequest_ptr);
    v29 = a3;
    v15 = a3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&v29);
    v16._object = 0x80000001008092A0;
    v16._countAndFlagsBits = 0xD000000000000010;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v31 = &type metadata for String;
    v29 = a4;
    v30 = a5;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&v29);
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v18 = *(a6 + OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_engagementViewController);
    *(a6 + OBJC_IVAR____TtC8AppStore27JourneyDrivenOnboardingStep_engagementViewController) = a7;

    v19 = a7;
  }

  else
  {
    if (qword_10096D470 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for OSLogger();
    sub_1000056A8(v21, qword_10097A880);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._countAndFlagsBits = 0xD000000000000016;
    v22._object = 0x8000000100809070;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    v31 = sub_100005744(0, &qword_10097A988, AMSUIEngagementTaskViewController_ptr);
    v29 = a7;
    v23 = a7;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&v29);
    v24._countAndFlagsBits = 0xD000000000000018;
    v24._object = 0x8000000100809200;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    v31 = sub_100005744(0, &unk_10097A9A0, AMSEngagementRequest_ptr);
    v29 = a3;
    v25 = a3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&v29);
    v26._countAndFlagsBits = 0x63616C70206E6920;
    v26._object = 0xEF203A746E656D65;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    v31 = &type metadata for String;
    v29 = a4;
    v30 = a5;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&v29);
    v27._countAndFlagsBits = 0xD000000000000025;
    v27._object = 0x8000000100809220;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();
  }

  return result;
}

uint64_t sub_100239730(void *a1, void *a2)
{
  v4 = type metadata accessor for OSLogger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D470 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v4, qword_10097A880);
  (*(v5 + 16))(v7, v8, v4);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5350;
  LogMessage.init(stringLiteral:)();
  v15 = sub_100005744(0, &qword_10097A990, AMSEngagement_ptr);
  v14[0] = a1;
  v9 = a1;
  static LogMessage.safe(_:)();
  sub_10003D444(v14);
  LogMessage.init(stringLiteral:)();
  if (a2)
  {
    v10 = sub_100005744(0, &qword_10097A998, AMSDialogRequest_ptr);
    v11 = a2;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v11;
  v15 = v10;
  v12 = a2;
  static LogMessage.safe(_:)();
  sub_10003D444(v14);
  Logger.info(_:)();

  return (*(v5 + 8))(v7, v4);
}

void sub_100239A04(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, a4);
  _Block_release(v10);
}

uint64_t sub_100239AA8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = ObjectType;
  v17[4] = v26;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v17[8] = v18;
  aBlock[4] = sub_10023A594;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008BA238;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  v21 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10023A484(&qword_100976F50, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v27;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v29 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v28);
}

uint64_t sub_100239DB8(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a3;
  v9 = type metadata accessor for OSLogger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D470 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v9, qword_10097A880);
  (*(v10 + 16))(v12, v13, v9);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5370;
  LogMessage.init(stringLiteral:)();
  v26 = sub_100005744(0, &qword_10097A990, AMSEngagement_ptr);
  v23 = a1;
  v14 = a1;
  static LogMessage.safe(_:)();
  sub_10003D444(&v23);
  LogMessage.init(stringLiteral:)();
  if (a2)
  {
    v15 = sub_100005744(0, &qword_10097A998, AMSDialogRequest_ptr);
    v16 = a2;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v24 = 0;
    v25 = 0;
  }

  v23 = v16;
  v26 = v15;
  v17 = a2;
  static LogMessage.safe(_:)();
  sub_10003D444(&v23);
  LogMessage.init(stringLiteral:)();
  v26 = &type metadata for String;
  v23 = v20;
  v24 = a4;

  static LogMessage.safe(_:)();
  sub_10003D444(&v23);
  LogMessage.init(stringLiteral:)();
  v26 = &type metadata for String;
  v23 = v21;
  v24 = v22;

  static LogMessage.safe(_:)();
  sub_10003D444(&v23);
  Logger.info(_:)();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10023A324(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UnifiedMessagingPlacement() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002367E8(a1, a2, v2 + v6, v8, v9);
}