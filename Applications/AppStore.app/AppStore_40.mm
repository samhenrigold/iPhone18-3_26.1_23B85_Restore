uint64_t sub_100470D58@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = type metadata accessor for LegacyAppState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  swift_getObjectType();
  dispatch thunk of AppStateMachine.currentStateIncludingBeta(_:)();
  (*(v6 + 16))(v8, v11, v5);
  v12 = (*(v6 + 88))(v8, v5);
  v13 = enum case for LegacyAppState.openable(_:);
  if (v12 == enum case for LegacyAppState.openable(_:))
  {
    (*(v6 + 96))(v8, v5);

    v14 = type metadata accessor for OpenableDestination();
    (*(*(v14 - 8) + 8))(v8, v14);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

  sub_1000073E8(a1, v34);
  sub_100005744(0, &qword_1009868D0, NSDictionary_ptr);
  if (swift_dynamicCast())
  {
    v15 = a3;
    v16 = v32;
    v17 = String._bridgeToObjectiveC()();
    v29 = v16;
    v18 = [v16 valueForKey:v17];

    if (v18)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    v34[0] = v32;
    v34[1] = v33;
    a3 = v15;
    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v19 = v31;
        if (v12 != v13)
        {
          v21 = v30;
          v22 = sub_100005744(0, &qword_1009868D8, NSMutableDictionary_ptr);
          v23 = v29;
          v24 = a3;
          v25 = NSDictionary.init(dictionary:)();
          *&v34[0] = v21;
          *(&v34[0] + 1) = v19;

          v26._object = 0x8000000100814ED0;
          v26._countAndFlagsBits = 0xD000000000000013;
          String.append(_:)(v26);

          v27 = String._bridgeToObjectiveC()();

          *&v34[0] = 0x6D61726150797562;
          *(&v34[0] + 1) = 0xE900000000000073;
          [v25 __swift_setObject:v27 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

          swift_unknownObjectRelease();
          v24[3] = v22;

          *v24 = v25;
          return (*(v6 + 8))(v11, v5);
        }

        (*(v6 + 8))(v11, v5);
      }

      else
      {
        (*(v6 + 8))(v11, v5);
      }
    }

    else
    {
      (*(v6 + 8))(v11, v5);

      sub_10002B894(v34, &unk_1009711D0, &unk_1007B1A10);
    }
  }

  else
  {
    (*(v6 + 8))(v11, v5);
  }

  return sub_1000073E8(a1, a3);
}

double sub_1004711F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for OSLogger();
  sub_1000056A8(v7, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5360;
  LogMessage.init(stringLiteral:)();
  LogMessage.init(stringLiteral:)();
  v12 = &type metadata for String;
  v10 = a1;
  v11 = a2;

  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(&v10, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v12 = &type metadata for String;
  v10 = a3;
  v11 = a4;

  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(&v10, &unk_1009711D0, &unk_1007B1A10);
  Logger.debug(_:)();

  return result;
}

unint64_t sub_100471438()
{
  result = qword_1009868C8;
  if (!qword_1009868C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868C8);
  }

  return result;
}

id sub_10047148C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100471574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v54 = a2;
  v52 = a1;
  v5 = sub_10002849C(&unk_100993040, &qword_1007BC2F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for ActionMetrics();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OpenableDestination();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v48 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AdamId();
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v44 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LegacyAppState();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for InAppPurchaseState();
  v53 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
  result = static StreamlinedInAppPurchaseOfferButtonPresenter.activeStateDataSource.getter();
  if (result)
  {
    v50 = v19;
    v37 = v7;
    v38 = v10;
    sub_10002849C(&unk_100973AF0, &qword_1007B3960);
    type metadata accessor for BaseObjectGraph();
    v39 = a4;
    inject<A, B>(_:from:)();
    v23 = v55;
    swift_getObjectType();
    v51 = dispatch thunk of AppStateController.stateMachine(forApp:)();
    v49 = v23;
    dispatch thunk of AppStateController.stateMachine(forApp:)();
    InAppPurchaseStateDataSource.state(for:subscriptionFamilyId:)();
    if ((InAppPurchaseState.hasBeenPurchased.getter() & 1) != 0 || (swift_getObjectType(), dispatch thunk of AppStateMachine.currentState.getter(), v24 = LegacyAppState.hasBeenPurchased.getter(), (*(v16 + 8))(v18, v15), (v24)) && (swift_getObjectType(), dispatch thunk of AppStateMachine.currentState.getter(), v25 = LegacyAppState.isLocalApplication.getter(), (*(v16 + 8))(v18, v15), (v25))
    {
      (*(v40 + 16))(v44, v54, v41);
      (*(v42 + 104))(v48, enum case for OpenableDestination.app(_:), v43);
      if (InAppPurchaseAction.installRequiredAction.getter())
      {
        v26 = v37;
        Action.actionMetrics.getter();

        v28 = v46;
        v27 = v47;
        (*(v46 + 56))(v26, 0, 1, v47);
        (*(v28 + 32))(v38, v26, v27);
        v29 = v50;
      }

      else
      {
        v31 = v46;
        v30 = v47;
        v32 = v37;
        (*(v46 + 56))(v37, 1, 1, v47);
        static ActionMetrics.notInstrumented.getter();
        v33 = (*(v31 + 48))(v32, 1, v30);
        v29 = v50;
        if (v33 != 1)
        {
          sub_10002B894(v32, &unk_100993040, &qword_1007BC2F0);
        }
      }

      type metadata accessor for OpenAppAction();
      swift_allocObject();
      v34 = OpenAppAction.init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)();
      v35 = sub_1005D0478(v34, 1, v39);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v53 + 8))(v21, v29);
      return v35;
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*(v53 + 8))(v21, v50);
      return 0;
    }
  }

  return result;
}

unint64_t sub_100471BDC()
{
  result = qword_1009868E0;
  if (!qword_1009868E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868E0);
  }

  return result;
}

uint64_t sub_100471C38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_100471C80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100471D10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_100471D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100471DC0(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(v5, *(v5 + 24));
  AnyDimension.value(with:)();
  v16 = enum case for FloatingPointRoundingRule.up(_:);
  v58 = *(v13 + 104);
  v58(v15, enum case for FloatingPointRoundingRule.up(_:), v12);
  [a1 displayScale];
  CGFloat.rounded(_:toScale:)();
  v59 = v17;
  v18 = *(v13 + 8);
  v18(v15, v12);
  sub_10002A400(v6 + 5, v6[8]);
  AnyDimension.value(with:)();
  v58(v15, v16, v12);
  [a1 displayScale];
  CGFloat.rounded(_:toScale:)();
  v54 = v19;
  v18(v15, v12);
  sub_10002A400(v6 + 13, v6[16]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v57 = v20;
  v55 = v21;
  v23 = v22 + 4.0;
  sub_10002A400(v6 + 18, v6[21]);
  v24 = a4;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v27 = v25;
  v58 = v28;
  v29 = v23;
  if (v23 <= v25)
  {
    v23 = v25;
  }

  v30 = v29;
  v51 = v29;
  v52 = v26;
  v56 = v25;
  v60.origin.x = a2;
  v60.origin.y = a3;
  v60.size.width = v24;
  v60.size.height = a5;
  v31 = CGRectGetMinX(v60) + (v23 - v30) * 0.5;
  v32 = v59;
  v49 = v59 - v55;
  v50 = v31;
  v61.origin.x = a2;
  v61.origin.y = a3;
  v61.size.width = v24;
  v61.size.height = a5;
  MinX = CGRectGetMinX(v61);
  v53 = v32 + v54;
  v54 = v32 + v54 - v52;
  v55 = MinX + (v23 - v27) * 0.5;
  v62.origin.x = a2;
  v62.origin.y = a3;
  v46 = a3;
  v62.size.width = v24;
  v62.size.height = a5;
  v34 = CGRectGetWidth(v62) - v23 - *(v5 + 88);
  sub_10002A400((v5 + 184), *(v5 + 208));
  dispatch thunk of Placeable.measure(toFit:with:)();
  v59 = v36;
  v38 = v37;
  if (v34 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v34;
  }

  v63.origin.x = a2;
  v63.origin.y = a3;
  v63.size.width = v24;
  v63.size.height = a5;
  v40 = CGRectGetMaxX(v63) - v39;
  v41 = v53 - v38;
  v47 = v41;
  v48 = v39;
  sub_10002A400((v5 + 224), *(v5 + 248));
  dispatch thunk of Placeable.measure(toFit:with:)();
  v45 = v43;
  if (v34 < v42)
  {
    v42 = v34;
  }

  if (*(v5 + 96) >= v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = *(v5 + 96);
  }

  v53 = v44;
  v64.origin.x = a2;
  v64.origin.y = v46;
  v64.size.width = v24;
  v64.size.height = a5;
  v52 = CGRectGetMaxX(v64) - v44;
  v65.origin.x = v40;
  v65.origin.y = v41;
  v65.size.width = v39;
  v65.size.height = v59;
  CGRectGetMinY(v65);
  sub_10002A400((v5 + 104), *(v5 + 128));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400((v5 + 144), *(v5 + 168));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400((v5 + 184), *(v5 + 208));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400((v5 + 224), *(v5 + 248));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
}

double sub_100472318(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  sub_10002A400(v3, v3[3]);
  AnyDimension.value(with:)();
  sub_10002A400(v4 + 5, v4[8]);
  AnyDimension.value(with:)();
  sub_10002A400(v4 + 18, v4[21]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  return a2;
}

uint64_t sub_1004723FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100472554();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_100472454()
{
  result = qword_1009868E8;
  if (!qword_1009868E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868E8);
  }

  return result;
}

unint64_t sub_1004724AC()
{
  result = qword_1009868F0;
  if (!qword_1009868F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868F0);
  }

  return result;
}

unint64_t sub_100472554()
{
  result = qword_1009868F8;
  if (!qword_1009868F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009868F8);
  }

  return result;
}

uint64_t sub_1004725A8()
{
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2430);
  qword_1009D1DA8 = v0;
  unk_1009D1DB0 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_1009D1D90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_100472664(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_bundleView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for BundleView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v11 contentView];
  [v13 addSubview:*&v11[OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_lockupView]];

  v14 = [v11 contentView];
  [v14 addSubview:*&v11[OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_bundleView]];

  return v11;
}

id sub_100472980(uint64_t a1)
{
  v2 = v1;
  v39.receiver = v1;
  v39.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v3 = [v1 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v2[OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_lockupView];
  v13 = sub_1000AB0CC(v9, v11);
  v15 = v14;
  v40.origin.x = v5;
  v40.origin.y = v7;
  v40.size.width = v9;
  v40.size.height = v11;
  MinX = CGRectGetMinX(v40);
  v36 = v7;
  v41.origin.x = v5;
  v41.origin.y = v7;
  v41.size.width = v9;
  v41.size.height = v11;
  MinY = CGRectGetMinY(v41);
  v38 = MinX;
  v17 = MinX;
  v18 = v13;
  v19 = v15;
  [v12 setFrame:v17];
  if (qword_10096E4D0 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009D1D90, qword_1009D1DA8);
  v20 = [v2 traitCollection];
  AnyDimension.value(with:)();
  v22 = v21;

  v42.origin.x = v5;
  v42.origin.y = v36;
  v42.size.width = v9;
  v42.size.height = v11;
  Height = CGRectGetHeight(v42);
  v43.origin.y = MinY;
  v43.origin.x = v38;
  v43.size.width = v18;
  v43.size.height = v19;
  v24 = Height - (v22 + CGRectGetHeight(v43));
  v25 = *&v2[OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_bundleView];
  v44.origin.x = v5;
  v44.origin.y = v36;
  v44.size.width = v9;
  v44.size.height = v11;
  [v25 sizeThatFits:{CGRectGetWidth(v44), v24}];
  v27 = v26;
  v29 = v28;
  v45.origin.x = v5;
  v45.origin.y = v36;
  v45.size.width = v9;
  v45.size.height = v11;
  v30 = CGRectGetMinX(v45);
  v46.origin.y = MinY;
  v46.origin.x = v38;
  v46.size.width = v18;
  v46.size.height = v19;
  MaxY = CGRectGetMaxY(v46);
  sub_10002A400(qword_1009D1D90, qword_1009D1DA8);
  v32 = [v2 traitCollection];
  AnyDimension.value(with:)();
  v34 = v33;

  return [v25 setFrame:{v30, MaxY + v34, v27, v29}];
}

id sub_100472C7C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100472D20(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = _swiftEmptyArrayStorage;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:v1 selector:"clearStackFor:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v4 = [v2 defaultCenter];
  [v4 addObserver:v1 selector:"clearStackFor:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  return v1;
}

void sub_100472F04(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = v3 + 48;
    while (v5 < *(v3 + 16))
    {
      swift_unknownObjectRetain();
      v7 = TodayCardOverlay.Kind.rawValue.getter();
      v8 = TodayCardOverlay.Kind.rawValue.getter();
      swift_unknownObjectRelease();
      if (v7 == v8)
      {

        swift_beginAccess();
        sub_100547CA0(v5);
        v11 = v10;
        swift_endAccess();
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 136);
        swift_unknownObjectRetain();
        v13(ObjectType, v11);
        swift_unknownObjectRelease();
        return;
      }

      ++v5;
      v6 += 24;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_100473600(a1);
    (*(v9 + 8))();
  }
}

void sub_100473080(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    if ((a4 & 1) == 0)
    {
      swift_beginAccess();
      v8 = *(v4 + 24);
      v9 = *(v8 + 2) + 1;
      if (v9 < *(v4 + 16))
      {
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 24) = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_100033D18(0, v9, 1, v8);
          *(v4 + 24) = v8;
        }

        v11 = *(v8 + 2);
        v12 = *(v8 + 3);
        v13 = v11 + 1;
        if (v11 >= v12 >> 1)
        {
          v15 = v8;
          v16 = *(v8 + 2);
          v17 = sub_100033D18((v12 > 1), v11 + 1, 1, v15);
          v11 = v16;
          v8 = v17;
        }

        *(v8 + 2) = v13;
        v14 = &v8[24 * v11];
        *(v14 + 4) = a1;
        *(v14 + 5) = a2;
        *(v14 + 6) = a3;
        *(v4 + 24) = v8;
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_100473194()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100473200(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((static AnyHashable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for InfoDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  if (v2[7] != v1[7] || v2[8] != v1[8])
  {
    v4 = v2;
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v2 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = v2[10];
  v7 = v1[10];
  v8 = (v6 | v7) == 0;
  if (!v6 || !v7)
  {
    return v8;
  }

  if (v2[9] == v1[9] && v6 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10047332C(uint64_t a1, __n128 a2)
{
  AnyHashable.hash(into:)();
  String.hash(into:)();
  if (*(v2 + 80))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

double sub_1004733BC()
{

  return result;
}

uint64_t sub_1004733EC()
{
  sub_10003D614(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100473478@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v6 = v11[1];
  v7 = UITraitCollection.isSizeClassRegular.getter();

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    v8 = 0;
  }

  v9 = type metadata accessor for ComponentSeparator();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_100473600(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return type metadata accessor for TodayCardArcadeLockupOverlayView();
      }

      if (a1 != 7)
      {
        goto LABEL_17;
      }

      return type metadata accessor for TodayCardChinSingleLockupView();
    }

    if (a1 == 4)
    {
      return type metadata accessor for TodayCardActionOverlayView(0);
    }

    else
    {
      return type metadata accessor for TodayCardThreeLineOverlayView();
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return type metadata accessor for TodayCardMarketingLockupOverlayView();
        }

LABEL_17:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      return type metadata accessor for TodayCardChinSingleLockupView();
    }

    if (a1 == 2)
    {
      return type metadata accessor for TodayCardChinLockupListView(0);
    }

    else
    {
      return type metadata accessor for TodayCardParagraphOverlayView();
    }
  }
}

uint64_t sub_100473734(uint64_t a1, void *a2)
{
  v55._countAndFlagsBits = a1;
  v55._object = a2;
  v44 = sub_10002849C(&unk_100982A90, &unk_1007CAFC0);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v41 - v3;
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v54 = &v41 - v5;
  v6 = type metadata accessor for FlowOrigin();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowAnimationBehavior();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FlowPresentationContext();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for FlowPage();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v19 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  v25 = type metadata accessor for URL();
  v57 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v2 + OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph);
  if (result)
  {
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    v56 = result;

    _StringGuts.grow(_:)(29);

    *&v60 = 0xD00000000000001BLL;
    *(&v60 + 1) = 0x8000000100815260;
    String.append(_:)(v55);
    URL.init(string:)();

    result = (*(v57 + 48))(v24, 1, v25);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v29 = v57;
      (*(v57 + 32))(v27, v24, v25);
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v30 = *(v16 + 104);
      v41 = v18;
      v30(v18, enum case for FlowPage.product(_:), v15);
      v31 = *(v29 + 16);
      v55._object = v27;
      v31(v21, v27, v25);
      (*(v29 + 56))(v21, 0, 1, v25);
      v32 = type metadata accessor for ReferrerData();
      (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
      v58 = 0u;
      v59 = 0u;
      static ActionMetrics.notInstrumented.getter();
      (*(v46 + 104))(v45, enum case for FlowPresentationContext.infer(_:), v47);
      (*(v48 + 104))(v50, enum case for FlowAnimationBehavior.infer(_:), v49);
      (*(v52 + 104))(v51, enum case for FlowOrigin.inapp(_:), v53);
      static FlowActionPresentation.stackPush.getter();
      v33 = type metadata accessor for FlowAction();
      swift_allocObject();
      v34 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      v35 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      v36 = v54;
      BaseObjectGraph.optional<A>(_:)();
      v37 = *(v35 - 8);
      if ((*(v37 + 48))(v36, 1, v35) == 1)
      {
        (*(v57 + 8))(v55._object, v25);

        return sub_10002B894(v36, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        *(&v61 + 1) = v33;
        v62 = sub_10047570C(&qword_100986BA0, 255, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
        *&v60 = v34;
        v38 = v42;
        v39 = v43;
        v40 = v44;
        (*(v42 + 104))(v43, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v44);

        ActionDispatcher.perform(_:withMetrics:asPartOf:)();

        (*(v38 + 8))(v39, v40);
        (*(v57 + 8))(v55._object, v25);
        sub_100007000(&v60);
        return (*(v37 + 8))(v36, v35);
      }
    }
  }

  return result;
}

uint64_t sub_10047403C(uint64_t a1)
{
  v3 = [v1 viewControllers];
  sub_100065AF0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v7 = v6;

    v14[0] = v7;
    sub_10002849C(&qword_100978EF8, &qword_1007BECE8);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_100005A38(&v11, v14);
        v8 = v15;
        v9 = v16;
        sub_10002A400(v14, v15);
        v10 = (*(v9 + 8))(a1, v8, v9);
        sub_100007000(v14);
        return v10 & 1;
      }

LABEL_12:
      sub_10002B894(&v11, &unk_100986B90, &qword_1007BECF0);
      v10 = 0;
      return v10 & 1;
    }

LABEL_11:
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_12;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004741CC(uint64_t a1)
{
  v3 = [v1 viewControllers];
  sub_100065AF0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v7 = v6;

    v14[0] = v7;
    sub_10002849C(&qword_100978F00, &qword_1007BECF8);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_100005A38(&v11, v14);
        v8 = v15;
        v9 = v16;
        sub_10002A400(v14, v15);
        v10 = (*(v9 + 8))(a1, v8, v9);
        sub_100007000(v14);
        return v10 & 1;
      }

LABEL_12:
      sub_10002B894(&v11, &unk_100986B80, &unk_1007BED00);
      v10 = 0;
      return v10 & 1;
    }

LABEL_11:
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_12;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

double sub_10047435C()
{
  v1 = v0;
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for StoreTab();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 viewControllers];
  sub_100065AF0();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_17:

    return result;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v10 = *(v9 + 32);
  }

  v29 = v10;

  type metadata accessor for TabPlaceholderViewController(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph];
    if (v12)
    {
      v8 = v4;
      v13 = v4[2];
      v27 = v11;
      v13(v7, v11 + OBJC_IVAR____TtC8AppStore28TabPlaceholderViewController_storeTab, v3);

      v14 = [v1 traitCollection];
      v28 = v12;
      v15 = sub_1001F51DC(v14, 0, v12);

      if (v15)
      {
        v16 = [v27 tabBarItem];
        [v15 setTabBarItem:v16];

        sub_10002849C(&qword_100973210, qword_1007B0BB0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1007B0B70;
        *(v17 + 32) = v15;
        v18 = v15;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v1 setViewControllers:isa animated:0];

LABEL_15:
        (*(v8 + 1))(v7, v3);
        return result;
      }

      v27 = v13;
      if (qword_10096D120 == -1)
      {
LABEL_14:
        v22 = type metadata accessor for OSLogger();
        sub_1000056A8(v22, qword_1009CE218);
        sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1007B10D0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v23._object = 0x8000000100815210;
        v23._countAndFlagsBits = 0xD000000000000041;
        LogMessage.StringInterpolation.appendLiteral(_:)(v23);
        v30[3] = v3;
        v24 = sub_1000056E0(v30);
        v27(v24, v7, v3);
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002B894(v30, &unk_1009711D0, &unk_1007B1A10);
        v25._countAndFlagsBits = 0;
        v25._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v25);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        goto LABEL_15;
      }

LABEL_22:
      swift_once();
      goto LABEL_14;
    }
  }

  v20 = v29;

  return result;
}

void sub_100474A40(int a1, id a2)
{
  v3 = [a2 navigationBar];
  [a2 pageMarginInsets];
  [v3 setLayoutMargins:?];
}

uint64_t sub_100474CBC(uint64_t a1)
{
  v2 = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for StoreNavigationController();
  v3 = objc_msgSendSuper2(&v12, "popToRootViewControllerAnimated:", v2 & 1);
  if (v3)
  {
    v4 = v3;
    sub_100065AF0();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  v6 = [v1 viewControllers];
  sub_100065AF0();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_8:
    v10 = v9;

    v11 = [v10 contentScrollView];
    [v11 _scrollToTopIfPossible:v2 & 1];

    return 0;
  }

  __break(1u);
  return result;
}

BOOL sub_100474E94(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    v5 = [v2 viewControllers];
    sub_100065AF0();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v7 > 1;
  }

  else
  {
    sub_10006C234(a2, v19);
    v9 = v20;
    if (v20)
    {
      v10 = sub_10002A400(v19, v20);
      v11 = *(v9 - 8);
      v12 = __chkstk_darwin(v10);
      v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v11 + 8))(v14, v9);
      sub_100007000(v19);
    }

    else
    {
      v15 = 0;
    }

    v16 = type metadata accessor for StoreNavigationController();
    v18.receiver = v2;
    v18.super_class = v16;
    v17 = objc_msgSendSuper2(&v18, "canPerformAction:withSender:", a1, v15);
    swift_unknownObjectRelease();
    return v17;
  }
}

id sub_100475338(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StoreNavigationController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100475430(char a1)
{
  v2 = [*v1 popViewControllerAnimated:a1 & 1];

  return v2;
}

id sub_100475470()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC8AppStore43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins];
  v13 = *&v0[OBJC_IVAR____TtC8AppStore43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins];
  v14 = *&v0[OBJC_IVAR____TtC8AppStore43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins + 16];
  v3 = v0[OBJC_IVAR____TtC8AppStore43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins + 32];
  result = [v0 layoutMargins];
  if ((v3 & 1) != 0 || (v7.f64[1] = v8, v5.f64[1] = v6, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v13, v5), vceqq_f64(v14, v7)))) & 1) == 0))
  {
    [v0 layoutMargins];
    *v2 = v9;
    *(v2 + 1) = v10;
    *(v2 + 2) = v11;
    *(v2 + 3) = v12;
    v2[32] = 0;
    v15.receiver = v0;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, "layoutMarginsDidChange");
  }

  return result;
}

uint64_t sub_10047570C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_100475754(unint64_t a1)
{
  v1 = a1;
  v39 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v37 = _swiftEmptyArrayStorage;
    v32 = v1 & 0xC000000000000001;
    v33 = v1 + 32;
    v30 = i;
    v31 = v1;
    while (1)
    {
      if (v4)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        v5 = *(v33 + 8 * v3);
      }

      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v8 = v6;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v37 = v39;
        if (v3 == i)
        {
          return v37;
        }
      }

      else
      {
        v35 = v6;
        v9 = [v6 subviews];
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v11 = sub_100475754(v10);

        v12 = v11 >> 62;
        if (v11 >> 62)
        {
          v13 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = v37 >> 62;
        if (v37 >> 62)
        {
          v15 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v15 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v36 = v13;
        v7 = __OFADD__(v15, v13);
        v16 = v15 + v13;
        if (v7)
        {
          goto LABEL_46;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v14)
          {
            v17 = v37 & 0xFFFFFFFFFFFFFF8;
            if (v16 <= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

LABEL_26:
          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_27;
        }

        if (v14)
        {
          goto LABEL_26;
        }

LABEL_27:
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v37 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v12)
        {
          v20 = _CocoaArrayWrapper.endIndex.getter();
          if (v20)
          {
LABEL_32:
            if (((v19 >> 1) - v18) < v36)
            {
              goto LABEL_48;
            }

            v21 = v17 + 8 * v18 + 32;
            if (v12)
            {
              if (v20 < 1)
              {
                goto LABEL_50;
              }

              sub_100097060(&unk_100986C00, &qword_100986BF8, qword_1007CECA8, &protocol conformance descriptor for [A]);
              for (j = 0; j != v20; ++j)
              {
                sub_10002849C(&qword_100986BF8, qword_1007CECA8);
                v24 = sub_100548E5C(v38, j, v11);
                v26 = *v25;
                (v24)(v38, 0);
                *(v21 + 8 * j) = v26;
              }

              i = v30;
              v1 = v31;
              v22 = v36;
            }

            else
            {
              sub_100005744(0, &qword_100986BF0, UILabel_ptr);
              v22 = v36;
              swift_arrayInitWithCopy();
            }

            v4 = v32;
            if (v22 > 0)
            {
              v27 = *(v17 + 16);
              v7 = __OFADD__(v27, v22);
              v28 = v27 + v22;
              if (v7)
              {
                goto LABEL_49;
              }

              *(v17 + 16) = v28;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            goto LABEL_32;
          }
        }

        v4 = v32;
        if (v36 > 0)
        {
          goto LABEL_47;
        }

LABEL_5:
        v39 = v37;
        if (v3 == i)
        {
          return v37;
        }
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void sub_100475CD4(void *a1)
{
  v112 = type metadata accessor for DispatchWorkItemFlags();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DispatchQoS();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DispatchTime();
  v107 = *(v115 - 8);
  __chkstk_darwin(v115);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v106 = &v93 - v10;
  v11 = [a1 viewForKey:{UITransitionContextFromViewKey, v9}];
  v12 = v11;
  if (v11)
  {
    [v11 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v21 = [a1 containerView];
    [v21 bounds];
    v14 = v22;
    v16 = v23;
    v18 = v24;
    v20 = v25;
  }

  *&v26 = COERCE_DOUBLE(swift_allocObject());
  v27 = &v1[OBJC_IVAR____TtC8AppStore21BouncyToRectAnimation_toRect];
  if (v1[OBJC_IVAR____TtC8AppStore21BouncyToRectAnimation_toRect + 32])
  {
    v117.origin.x = v14;
    v117.origin.y = v16;
    v117.size.width = v18;
    v117.size.height = v20;
    v28 = CGRectGetWidth(v117) * 0.3;
    v118.origin.x = v14;
    v118.origin.y = v16;
    v118.size.width = v18;
    v118.size.height = v20;
    v29 = CGRectGetHeight(v118) * 0.3;
    v119.origin.x = v14;
    v119.origin.y = v16;
    v119.size.width = v18;
    v119.size.height = v20;
    v120 = CGRectInset(v119, v28, v29);
    x = v120.origin.x;
    y = v120.origin.y;
    width = v120.size.width;
    height = v120.size.height;
  }

  else
  {
    width = v27[2];
    height = v27[3];
    x = *v27;
    y = v27[1];
  }

  v105 = v1;
  v26[2] = x;
  v26[3] = y;
  v26[4] = width;
  v26[5] = height;
  v121.origin.x = v14;
  v121.origin.y = v16;
  v121.size.width = v18;
  v121.size.height = v20;
  v104 = CGRectGetWidth(v121);
  v122.origin.x = x;
  v122.origin.y = y;
  v122.size.width = width;
  v122.size.height = height;
  v98 = CGRectGetWidth(v122);
  v123.origin.x = v14;
  v123.origin.y = v16;
  v123.size.width = v18;
  v123.size.height = v20;
  v96 = CGRectGetHeight(v123);
  v124.origin.x = x;
  v124.origin.y = y;
  v124.size.width = width;
  v124.size.height = height;
  v95 = CGRectGetHeight(v124);
  v125.origin.x = v14;
  v125.origin.y = v16;
  v125.size.width = v18;
  v125.size.height = v20;
  MidX = CGRectGetMidX(v125);
  v126.origin.x = x;
  v126.origin.y = y;
  v126.size.width = width;
  v126.size.height = height;
  v34 = CGRectGetMidX(v126);
  v127.size.height = v20;
  v35 = v34;
  *&v103 = v14;
  v127.origin.x = v14;
  v102 = v16;
  v127.origin.y = v16;
  v101 = v18;
  v127.size.width = v18;
  v100 = v127.size.height;
  MidY = CGRectGetMidY(v127);
  v113 = x;
  v128.origin.x = x;
  v97 = y;
  v128.origin.y = y;
  v114 = width;
  v128.size.width = width;
  v99 = height;
  v128.size.height = height;
  v37 = CGRectGetMidY(v128);
  v38 = sqrt((v104 - v98) * (v104 - v98) + (v96 - v95) * (v96 - v95));
  v39 = sqrt((MidX - v35) * (MidX - v35) + (MidY - v37) * (MidY - v37));
  if (v38 > v39)
  {
    v39 = v38;
  }

  v98 = v39 / 0.7 / v39;
  v40 = [a1 viewForKey:UITransitionContextToViewKey];
  v41 = *&v40;
  if (*&v40 != 0.0)
  {
    v42 = v40;
    v43 = [a1 containerView];
    [v43 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    [v42 setFrame:{v45, v47, v49, v51}];
    v52 = v42;
    v53 = [a1 containerView];
    [v53 insertSubview:v52 below:v12];
  }

  v104 = v41;
  v54 = v113;
  v129.origin.x = v113;
  v55 = v97;
  v129.origin.y = v97;
  v129.size.width = v114;
  v56 = v99;
  v129.size.height = v99;
  MinY = CGRectGetMinY(v129);
  v58 = *&v103;
  *&v130.origin.x = v103;
  v59 = v102;
  v130.origin.y = v102;
  v60 = v101;
  v130.size.width = v101;
  v61 = v100;
  v130.size.height = v100;
  v62 = MinY - CGRectGetMinY(v130);
  v131.origin.x = v54;
  v131.origin.y = v55;
  v63 = v114;
  v131.size.width = v114;
  v131.size.height = v56;
  v64 = CGRectGetMidX(v131);
  v132.origin.x = v58;
  v132.origin.y = v59;
  v132.size.width = v60;
  v132.size.height = v61;
  v65 = CGRectGetMidX(v132);
  CATransform3DMakeTranslation(&aBlock, v64 - v65, v62, 0.0);
  v26[3] = v59;
  v133.origin.x = v58;
  v133.origin.y = v59;
  v133.size.width = v60;
  v133.size.height = v61;
  v66 = CGRectGetWidth(v133);
  v134.origin.x = v113;
  v134.origin.y = v59;
  v134.size.width = v63;
  v134.size.height = v56;
  v67 = CGRectGetWidth(v134);
  v114 = *&v26;
  v26[2] = v58 + (v66 - v67) * 0.5;
  v68 = String._bridgeToObjectiveC()();
  v69 = [objc_opt_self() animationWithKeyPath:v68];

  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 valueWithCATransform3D:&aBlock];
  [v71 setToValue:v72];

  [v71 setDamping:16.0];
  [v71 setMass:1.0];
  [v71 setStiffness:150.0];
  [v71 setInitialVelocity:v98];
  v73 = v71;
  [v73 settlingDuration];
  [v73 setDuration:?];
  [v73 setFillMode:kCAFillModeForwards];
  [v73 setRemovedOnCompletion:0];

  if (v12)
  {
    v74 = [v12 layer];
    v75 = String._bridgeToObjectiveC()();
    [v74 addAnimation:v73 forKey:v75];
  }

  [v73 settlingDuration];
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  *&v103 = COERCE_DOUBLE(static OS_dispatch_queue.main.getter());
  static DispatchTime.now()();
  v76 = v106;
  + infix(_:_:)();
  v113 = v107[1];
  (*&v113)(v7, v115);
  v77 = swift_allocObject();
  v78 = v105;
  *(v77 + 16) = a1;
  *(v77 + 24) = v78;
  *&aBlock.m21 = sub_10017BBF0;
  *&aBlock.m22 = v77;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100007A08;
  *&aBlock.m14 = &unk_1008C4490;
  v79 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v107 = v78;

  static DispatchQoS.unspecified.getter();
  *&aBlock.m11 = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  v80 = v12;
  sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
  v81 = v109;
  v82 = v112;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v83 = v103;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v79);

  (*(v111 + 8))(v81, v82);
  (*(v108 + 8))(v5, v110);
  (*&v113)(v76, v115);
  v84 = objc_opt_self();
  v85 = swift_allocObject();
  v86 = v107;
  *(v85 + 2) = v107;
  *(v85 + 3) = v80;
  v85[4] = v114;
  *&aBlock.m21 = sub_100476D64;
  *&aBlock.m22 = v85;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100007A08;
  *&aBlock.m14 = &unk_1008C44E0;
  v87 = _Block_copy(&aBlock);
  v88 = v86;
  v89 = v80;

  v90 = swift_allocObject();
  *(v90 + 16) = v80;
  *&aBlock.m21 = sub_100476D70;
  *&aBlock.m22 = v90;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100504C5C;
  *&aBlock.m14 = &unk_1008C4530;
  v91 = _Block_copy(&aBlock);
  v92 = v89;

  [v84 animateWithDuration:131201 delay:v87 options:v91 animations:0.35 completion:0.0];

  _Block_release(v91);
  _Block_release(v87);
}

void sub_100476948(uint64_t a1, void *a2, double *a3)
{
  v6 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = (v7 + 48);
    v10 = (v7 + 48);
    do
    {
      v11 = *v10;
      v10 += 24;
      if (v11 == 1)
      {
        v12 = *(v9 - 2);

        v12(1, 1);
      }

      v9 = v10;
      --v8;
    }

    while (v8);
  }

  if (a2)
  {
    swift_beginAccess();
    [a2 setFrame:{a3[2], a3[3], a3[4], a3[5]}];
    if (*(a1 + OBJC_IVAR____TtC8AppStore21BouncyToRectAnimation_toRect + 32) == 1)
    {
      [a2 setAlpha:0.0];
    }
  }
}

void sub_100476A70(int a1, id a2)
{
  if (a2)
  {
    v2 = [a2 subviews];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100475754(v3);

    v5 = [objc_allocWithZone(CATransition) init];
    v6 = objc_opt_self();
    v15 = v5;
    v7 = [v6 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v15 setTimingFunction:v7];

    [v15 setType:kCATransitionFade];
    [v15 setDuration:0.2];

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v10 = *(v4 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 layer];
        [v13 setMasksToBounds:1];

        v14 = [v11 layer];
        [v14 addAnimation:v15 forKey:kCATransitionFade];

        ++v9;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  else
  {
    __break(1u);
  }
}

id sub_100476D0C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BouncyToRectAnimation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100476DB0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_1000417F0(a1, &v16 - v6);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  v16.receiver = v2;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithCompositionURL:", v11);

  v14 = v13;
  sub_10022C934(a1);
  if (v14)
  {
  }

  return v14;
}

char *sub_100477164(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_primaryLabel;
  if (qword_10096E190 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v10, qword_1009D1430);
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  v17 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v18 = objc_allocWithZone(v17);
  *&v4[v14] = sub_1002F5B8C(v13, 0, 0, 0);
  v19 = OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_secondaryLabel;
  if (qword_10096E198 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v10, qword_1009D1448);
  v16(v13, v20, v10);
  v21 = objc_allocWithZone(v17);
  *&v4[v19] = sub_1002F5B8C(v13, 0, 0, 0);
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v27 = OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_primaryLabel;
  v28 = *&v26[OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_primaryLabel];
  sub_100028BB8();
  v29 = v28;
  v30 = static UIColor.secondaryText.getter();
  [v29 setTextColor:v30];

  [v26 addSubview:*&v26[v27]];
  v31 = OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_secondaryLabel;
  v32 = *&v26[OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_secondaryLabel];
  v33 = static UIColor.secondaryText.getter();
  [v32 setTextColor:v33];

  [v26 addSubview:*&v26[v31]];
  return v26;
}

uint64_t sub_1004774AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_primaryLabel];
  v15 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v16 = &protocol witness table for UILabel;
  v13[4] = &protocol witness table for UILabel;
  v14[0] = v8;
  v9 = *&v1[OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_secondaryLabel];
  v13[3] = v15;
  v13[0] = v9;
  v10 = v8;
  v11 = v9;
  sub_10047763C(v14, v13, v17);
  sub_100007000(v13);
  sub_100007000(v14);
  sub_10002A400(v17, v17[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  (*(v4 + 8))(v7, v3);
  return sub_100007000(v17);
}

double sub_10047763C@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v90 = a2;
  v93 = a3;
  v89 = type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
  v4 = *(v89 - 8);
  __chkstk_darwin(v89);
  v102 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for FontSource();
  v113 = *(v110 - 8);
  __chkstk_darwin(v110);
  v101 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _VerticalFlowLayout.Child.HorizontalAlignment();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _VerticalFlowLayout.Child.Placement();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_10096FE38, &qword_1007B14D0);
  v15 = *(type metadata accessor for _VerticalFlowLayout.Child() - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v91 = *(v15 + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007B1E00;
  v92 = v17;
  v106 = v17 + v16;
  v19 = a1[3];
  v18 = a1[4];
  v20 = sub_10002A400(a1, v19);
  v122 = v19;
  v21 = *(v18 + 8);
  v22 = v12;
  v23 = v14;
  v123 = v21;
  v24 = sub_1000056E0(&v121);
  (*(*(v19 - 8) + 16))(v24, v20, v19);
  v25 = *(v22 + 104);
  v109 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v111 = v11;
  v108 = v22 + 104;
  v107 = v25;
  v25(v14);
  v112 = v8;
  v26 = v8 + 104;
  v27 = *(v8 + 104);
  v28 = v10;
  v105 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v88 = v7;
  v104 = v26;
  v103 = v27;
  v27(v10);
  if (qword_10096E190 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for FontUseCase();
  v30 = sub_1000056A8(v29, qword_1009D1430);
  v31 = *(v29 - 8);
  v32 = v101;
  v86 = *(v31 + 16);
  v85 = v31 + 16;
  v86(v101, v30, v29);
  v33 = v113;
  v34 = *(v113 + 104);
  v84 = enum case for FontSource.useCase(_:);
  v35 = v110;
  v83 = v113 + 104;
  v82 = v34;
  v34(v32);
  v81 = type metadata accessor for StaticDimension();
  v119 = v81;
  v120 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v118);
  *(&v116 + 1) = v35;
  v117 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(&v115);
  v37 = *(v33 + 16);
  v80 = v33 + 16;
  v79 = v37;
  v37(v36, v32, v35);
  StaticDimension.init(_:scaledLike:)();
  v38 = *(v33 + 8);
  v113 = v33 + 8;
  v78 = v38;
  v38(v32, v35);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v39 = sub_10002849C(&unk_10097E8A0, &unk_1007B5940);
  v40 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v41 = v40 + *(v4 + 72);
  v75 = *(v4 + 80);
  v76 = v39;
  v74 = v41;
  v42 = swift_allocObject();
  v73 = xmmword_1007B10D0;
  *(v42 + 16) = xmmword_1007B10D0;
  v77 = v40;
  static _VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v114 = v42;
  v43 = sub_1001A25E0(&qword_100973E00, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v44 = sub_10002849C(&unk_10097E8B0, &unk_1007BD010);
  v45 = sub_1000ED83C();
  v46 = v102;
  v98 = v44;
  v96 = v45;
  v47 = v89;
  v100 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v48 = *(v4 + 8);
  v94 = v4 + 8;
  v99 = v48;
  v48(v46, v47);
  sub_100036530(&v115);
  v49 = v112 + 8;
  v50 = v88;
  v97 = *(v112 + 8);
  v97(v28, v88);
  v51 = *(v22 + 8);
  v52 = v22 + 8;
  v53 = v111;
  v95 = v51;
  v87 = v52;
  v51(v23, v111);
  sub_100007000(&v118);
  sub_100007000(&v121);
  v54 = v47;
  v55 = v23;
  v56 = v90[3];
  v57 = v90[4];
  v58 = sub_10002A400(v90, v56);
  v122 = v56;
  v123 = *(v57 + 8);
  v59 = sub_1000056E0(&v121);
  (*(*(v56 - 8) + 16))(v59, v58, v56);
  v107(v55, v109, v53);
  v103(v28, v105, v50);
  v60 = v28;
  if (qword_10096E198 != -1)
  {
    swift_once();
  }

  v61 = sub_1000056A8(v29, qword_1009D1448);
  v62 = v101;
  v86(v101, v61, v29);
  v63 = v110;
  v82(v62, v84, v110);
  v119 = v81;
  v120 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v118);
  *(&v116 + 1) = v63;
  v117 = &protocol witness table for FontSource;
  v64 = sub_1000056E0(&v115);
  v79(v64, v62, v63);
  StaticDimension.init(_:scaledLike:)();
  v78(v62, v63);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v65 = swift_allocObject();
  *(v65 + 16) = v73;
  static _VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v114 = v65;
  v66 = v102;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v99(v66, v54);
  sub_100036530(&v115);
  v97(v60, v50);
  v67 = v111;
  v112 = v49;
  v95(v55, v111);
  sub_100007000(&v118);
  sub_100007000(&v121);
  v68 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v69 = LayoutViewPlaceholder.init(representing:)();
  v122 = v68;
  v123 = &protocol witness table for LayoutViewPlaceholder;
  v121 = v69;
  v103(v60, v105, v50);
  v119 = &type metadata for CGFloat;
  v120 = &protocol witness table for CGFloat;
  v117 = 0;
  v118 = 0x4032000000000000;
  v115 = 0u;
  v116 = 0u;
  v114 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v107(v55, v109, v67);
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v95(v55, v67);
  v99(v66, v54);
  sub_100036530(&v115);
  v97(v60, v50);
  sub_100007000(&v118);
  sub_100007000(&v121);
  v70 = type metadata accessor for _VerticalFlowLayout();
  v71 = v93;
  v93[3] = v70;
  v71[4] = sub_1001A25E0(&qword_100975328, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  v71[5] = sub_1001A25E0(&qword_100978040, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  sub_1000056E0(v71);
  _VerticalFlowLayout.init(expandChildrenToFit:children:)();
  return result;
}

double sub_100478358(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();
  v4 = *(v3 + OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_primaryLabel);
  v13 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v14 = &protocol witness table for UILabel;
  v11[4] = &protocol witness table for UILabel;
  v12[0] = v4;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_secondaryLabel);
  v11[3] = v13;
  v11[0] = v5;
  v6 = v4;
  v7 = v5;
  sub_10047763C(v12, v11, v15);
  sub_100007000(v11);
  sub_100007000(v12);
  sub_10002A400(v15, v15[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v9 = v8;
  sub_100007000(v15);
  return v9;
}

void sub_100478560()
{
  v1 = type metadata accessor for FontUseCase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_primaryLabel;
  if (qword_10096E190 != -1)
  {
    swift_once();
  }

  v6 = sub_1000056A8(v1, qword_1009D1430);
  v7 = *(v2 + 16);
  v7(v4, v6, v1);
  v8 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v9 = objc_allocWithZone(v8);
  *(v0 + v5) = sub_1002F5B8C(v4, 0, 0, 0);
  v10 = OBJC_IVAR____TtC8AppStore24SearchResultsMessageView_secondaryLabel;
  if (qword_10096E198 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v1, qword_1009D1448);
  v7(v4, v11, v1);
  v12 = objc_allocWithZone(v8);
  *(v0 + v10) = sub_1002F5B8C(v4, 0, 0, 0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for SearchLandingLayoutSectionProvider(uint64_t a1)
{
  result = qword_100986C70;
  if (!qword_100986C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1004787E4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v124 = a7;
  v121 = a8;
  v122 = a5;
  v118 = a4;
  v125 = a3;
  v127 = a2;
  v123 = a10;
  v120 = a9;
  v129 = type metadata accessor for ItemLayoutContext();
  v109 = *(v129 - 1);
  __chkstk_darwin(v129);
  v128 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v13 - 8);
  v110 = &v106 - v14;
  v108 = type metadata accessor for PageGrid();
  v111 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Shelf.ContentType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v116 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v106 - v20;
  v22 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v114 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v28 = *(v23 + 8);
  v115 = v23 + 8;
  v113 = v28;
  v28(v27, v22);
  v112 = *(v17 + 88);
  v29 = v112(v21, v16);
  v126 = v17;
  v119 = v21;
  if (v29 != enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_20;
  }

  v30 = ASKDeviceTypeGetCurrent();
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {
    goto LABEL_4;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v35 = v126;
  if ((v36 & 1) == 0)
  {
    v30 = ASKDeviceTypeGetCurrent();
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;
    if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
    {
LABEL_4:

      v35 = v126;
      goto LABEL_6;
    }

    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v35 = v126;
    if ((v67 & 1) == 0)
    {
LABEL_20:
      v129 = &v106;
      __chkstk_darwin(v29);
      __chkstk_darwin(v68);
      type metadata accessor for BasePageLayoutSectionProvider();
      v69 = method lookup function for BasePageLayoutSectionProvider();
      v70 = v118;
      v71 = a6;
      v117 = a6;
      v72 = v124;
      v128 = v69(a1, sub_10002F0EC, &v106 - 4, v118, v122, v71, v124, v121, v120, v123);
      v73 = v114;
      ShelfLayoutContext.shelf.getter();
      swift_getKeyPath();
      v74 = v116;
      ReadOnlyLens.subscript.getter();

      v113(v73, v22);
      v75 = v112(v74, v16);
      if (v75 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        v76 = v127();
        v62 = sub_10040C1D8(a1, v76, v70, v122, v117, v72, v121, v120, v123);
      }

      else
      {
        v77 = v128;
        v78 = v117;
        if (v75 != enum case for Shelf.ContentType.ribbonFlow(_:))
        {
          v35 = v126;
          if (v75 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            v62 = v128;
            [v128 setOrthogonalScrollingBehavior:2];
          }

          else
          {
            (*(v126 + 8))(v116, v16);
            v62 = v77;
          }

          goto LABEL_25;
        }

        v79 = v127();
        v62 = sub_10040D51C(a1, v79, v118, v122, v78, v124, v121, v120, v123);
      }

      v35 = v126;
LABEL_25:
      v21 = v119;
      goto LABEL_26;
    }
  }

LABEL_6:
  v37 = (v127)(v29);
  v38 = *(v37 + 16);
  v39 = _swiftEmptyArrayStorage;
  v114 = v38;
  if (v38)
  {
    v117 = a6;
    v115 = a1;
    v116 = v16;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100144108(0, v38, 0);
    v127 = type metadata accessor for SearchActionContentView(0);
    v39 = aBlock[0];
    v40 = *(v109 + 16);
    v41 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v125 = v37;
    v42 = v37 + v41;
    v43 = *(v109 + 72);
    v44 = v38;
    v45 = (v109 + 8);
    do
    {
      v47 = v128;
      v46 = v129;
      v40(v128, v42, v129);
      v48 = sub_100448E18(v47);
      (*v45)(v47, v46);
      aBlock[0] = v39;
      v50 = v39[2];
      v49 = v39[3];
      if (v50 >= v49 >> 1)
      {
        sub_100144108((v49 > 1), v50 + 1, 1);
        v39 = aBlock[0];
      }

      v39[2] = v50 + 1;
      *&v39[v50 + 4] = v48;
      v42 += v43;
      --v44;
    }

    while (v44);
    v16 = v116;
    v37 = v125;
    v35 = v126;
    v21 = v119;
    a1 = v115;
  }

  v51 = COERCE_DOUBLE(sub_1003E616C(v39));
  if ((v52 & 1) != 0 || v51 <= 0.0)
  {

    sub_100005744(0, &unk_100990AB0, NSCollectionLayoutSection_ptr);
    v59 = type metadata accessor for ShelfLayoutContext();
    v60 = *(v59 - 8);
    v61 = v110;
    (*(v60 + 16))(v110, a1, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    v62 = static NSCollectionLayoutSection.emptyLayoutSection(for:)();
    sub_1004795D4(v61);
    goto LABEL_26;
  }

  v125 = v37;
  v53 = *&v51;
  v54 = v107;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.columnCount.getter();
  v56 = v55;
  v57 = *(v111 + 8);
  v111 += 8;
  v128 = v57;
  (v57)(v54, v108);
  if (v56 >= 2.0)
  {

    v58 = v122;
    v81 = v114;
    if (v114)
    {
      v82 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v82 + 16) = v81;
      v83 = (v82 + 32);
      if (v81 >= 4)
      {
        v84 = v81 & 0x7FFFFFFFFFFFFFFCLL;
        v83 += v81 & 0x7FFFFFFFFFFFFFFCLL;
        v85 = vdupq_n_s64(v53);
        v86 = (v82 + 48);
        v87 = v81 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v86[-1] = v85;
          *v86 = v85;
          v86 += 2;
          v87 -= 4;
        }

        while (v87);
        if (v81 == v84)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v84 = 0;
      }

      v88 = v81 - v84;
      do
      {
        *v83++ = v53;
        --v88;
      }

      while (v88);
    }
  }

  else
  {
    v58 = v122;
  }

LABEL_39:
  v89 = static ComponentLayoutBuilder.verticalLayoutGroup(for:withItemHeights:in:itemSupplementaryProvider:asPartOf:)();

  v90 = objc_opt_self();
  v129 = v89;
  v91 = [v90 sectionWithGroup:v89];
  swift_getObjectType();
  v92 = v58;
  dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
  sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v91 setBoundarySupplementaryItems:isa];

  v62 = v91;
  dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
  sub_100005744(0, &unk_10097D670, NSCollectionLayoutDecorationItem_ptr);
  v94 = Array._bridgeToObjectiveC()().super.isa;

  [v91 setDecorationItems:v94];

  v95 = v107;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.horizontalDirectionalMargins.getter();
  v97 = v96;
  v99 = v98;
  (v128)(v95, v108);
  sub_10002A400(v92, v92[3]);
  ShelfLayoutSpacingProvider.topPaddingValue(in:)();
  v101 = v100;
  sub_10002A400(v92, v92[3]);
  ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
  [v91 setContentInsets:{v101, v97, v102, v99}];
  BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
  v103 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
  v105 = v104;

  if (v103)
  {
    aBlock[4] = v103;
    aBlock[5] = v105;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006BBC70;
    aBlock[3] = &unk_1008C4558;
    v103 = _Block_copy(aBlock);
  }

  v21 = v119;
  v35 = v126;
  [v62 setVisibleItemsInvalidationHandler:v103];
  _Block_release(v103);

LABEL_26:
  (*(v35 + 8))(v21, v16);
  return v62;
}

uint64_t sub_1004795D4(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100479640(uint64_t a1)
{
  v2 = type metadata accessor for ActionLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v7 + 8))(v9, v6);
  sub_10065E058(a1, v5);
  ShelfLayoutContext.traitEnvironment.getter();
  static ActionLayout.estimatedMeasurements(fitting:using:in:)();
  v11 = v10;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  return v11;
}

double sub_100479810()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v57 = *(v0 - 8);
  v58 = v0;
  __chkstk_darwin(v0);
  v2 = &v53[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for ActionLayout.Metrics();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v60 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v59 = &v53[-v6];
  __chkstk_darwin(v7);
  v9 = &v53[-v8];
  v10 = type metadata accessor for PageGrid();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v12 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53[-v15];
  type metadata accessor for Action();
  sub_100479F20(&qword_100992FB0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v65)
  {
    return 0.0;
  }

  v64 = v65;

  sub_10002849C(&unk_100980530, &qword_1007B69B0);
  if (swift_dynamicCast())
  {
    sub_10002A400(&v65, *(&v66 + 1));
    v54 = SearchAdOpportunityProviding.isSearchAd.getter();
    sub_100007000(&v65);
  }

  else
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    sub_100479F68(&v65);
    v54 = 0;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v14 + 8))(v16, v13);
  if (v65 == 1)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v19 = v18;
    v21 = v20;
    (*(v55 + 8))(v12, v56);
    ItemLayoutContext.parentShelfLayoutContext.getter();
    sub_10065E058(v2, v9);
    (*(v57 + 8))(v2, v58);
    v22 = sub_100079F24();
    swift_getObjectType();
    sub_100615214(v9, v22, v19, v21);
    v17 = v23;

    swift_unknownObjectRelease();
    (*(v61 + 8))(v9, v62);
  }

  else
  {
    v24 = ASKDeviceTypeGetCurrent();
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v61;
    if (v25 != v28 || v27 != v29)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    ItemLayoutContext.parentShelfLayoutContext.getter();
    v31 = v59;
    sub_10065E058(v2, v59);
    (*(v57 + 8))(v2, v58);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v33 = v32;
    v35 = v34;
    (*(v55 + 8))(v12, v56);
    v36 = v62;
    (*(v30 + 16))(v60, v31, v62);
    v37 = sub_100079F24();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v41 = Action.title.getter();
    v43 = v42;
    v44 = Action.artwork.getter();
    if (v44)
    {
    }

    v45 = v44 != 0;
    ObjectType = swift_getObjectType();
    v47 = sub_100079F24();
    swift_getObjectType();
    v48 = sub_10028F24C(v47);
    swift_unknownObjectRelease();
    v49 = v60;
    sub_100614920(v60, v37, v41, v43, v45, v48, v54 & 1, v63, v33, v35, UIEdgeInsetsZero.top, left, bottom, right, ObjectType);
    v17 = v50;

    swift_unknownObjectRelease();

    v51 = *(v30 + 8);
    v51(v49, v36);
    v51(v59, v36);
  }

  return v17;
}

uint64_t sub_100479F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100479F68(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100992FE0, &qword_1007BBDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100479FD4(uint64_t a1)
{
  v59 = a1;
  v58 = sub_10002849C(&qword_100979358, qword_1007BFB58);
  v66.i64[0] = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = v47 - v1;
  v2 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v2 - 8);
  v68 = v47 - v3;
  v64 = type metadata accessor for PageGrid.HorizontalMargins();
  v69 = *(v64 - 8);
  __chkstk_darwin(v64);
  v5 = (v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v6 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v47 - v10;
  __chkstk_darwin(v12);
  v57 = v47 - v13;
  __chkstk_darwin(v14);
  v16 = v47 - v15;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v17 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v67 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v54 = v19;
  *(v19 + 16) = xmmword_1007B23A0;
  v20 = v19 + v18;
  v72 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4020000000000000;
  v70 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v62 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v65 = *(v69 + 104);
  v69 += 104;
  v26 = v64;
  v65(v5);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v72) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0;
  v61 = v8;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v72 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4024000000000000;
  v70 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  v56 = v5;
  *v5 = _Q0;
  v29 = v62;
  v30 = v65;
  (v65)(v5, v62, v26);
  LOBYTE(v72) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v31 = v67;
  v63 = v20;
  v60 = v16;
  top = UIEdgeInsetsZero.top;
  v52 = left;
  v32 = v56;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v50 = 2 * v31;
  v72 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4038000000000000;
  v55 = v11;
  PageGrid.DirectionalValue.init(_:)();
  v48 = vdupq_n_s64(0x4041000000000000uLL);
  *v32 = v48;
  v33 = v64;
  v30(v32, v29, v64);
  LOBYTE(v72) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v34 = v50;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v74 = 0x4000000000000000;
  v47[1] = v34 + v67;
  v72 = 0;
  v73 = 1;
  v70 = 0x3FF0000000000000;
  v71 = 0;
  v50 = sub_1001E8728();
  v35 = v53;
  AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)();
  v36 = v58;
  AccessibilityConditional.value(for:)();
  v37 = *(v66.i64[0] + 8);
  v66.i64[0] += 8;
  v49 = v37;
  v37(v35, v36);
  v70 = v72;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v38 = v56;
  *v56 = v48;
  v39 = v62;
  (v65)(v38, v62, v33);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v72) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v74 = 0x4000000000000000;
  v48.i64[0] = 4 * v67;
  v72 = 0;
  v73 = 1;
  v70 = 0x3FF0000000000000;
  v71 = 0;
  AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)();
  v40 = v58;
  AccessibilityConditional.value(for:)();
  v49(v35, v40);
  v70 = v72;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v66 = vdupq_n_s64(0x404A000000000000uLL);
  *v38 = v66;
  v41 = v38;
  v42 = v38;
  v43 = v64;
  v44 = v65;
  (v65)(v41, v39, v64);
  LOBYTE(v72) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = v48.i64[0];
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v67 += v45;
  v72 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v42 = v66;
  (v44)(v42, v62, v43);
  LOBYTE(v72) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v72 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v54;
}

double sub_10047AC28(void *a1, double a2, double a3)
{
  v4 = type metadata accessor for OfferButtonMetrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for InAppPurchaseLockupViewLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E508 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v11, qword_1009D1F00);
  (*(v12 + 16))(v14, v15, v11);
  v16 = [a1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v17 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v17 = qword_100991028;
  }

  v18 = sub_1000056A8(v4, v17);
  (*(v5 + 16))(v7, v18, v4);

  (*(v5 + 32))(v10, v7, v4);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  InAppPurchaseLockupViewLayout.Metrics.offerButtonSize.setter();
  type metadata accessor for InAppPurchaseLockupViewLayout();
  sub_10047B294(&qword_100986CC0, &type metadata accessor for InAppPurchaseLockupViewLayout, &protocol conformance descriptor for InAppPurchaseLockupViewLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v20 = v19;
  (*(v5 + 8))(v10, v4);
  (*(v12 + 8))(v14, v11);
  return v20;
}

uint64_t sub_10047AFA8()
{
  v26 = type metadata accessor for Shelf.PresentationHints();
  v0 = *(v26 - 8);
  __chkstk_darwin(v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = ShelfLayoutContext.traitCollection.getter();
  v14 = type metadata accessor for SnapshotPageTraitEnvironment();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v16 = v11;
  *(v16 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v15[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v13;
  v27.receiver = v15;
  v27.super_class = v14;
  v17 = objc_msgSendSuper2(&v27, "init");
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v19 = v18;
  v21 = v20;
  v12(v9, v6);
  sub_10047AC28(v17, v19, v21);

  ShelfLayoutContext.shelfPresentationHints.getter();
  static Shelf.PresentationHints.inProductPageSpotlight.getter();
  sub_10047B294(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v22 = v26;
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v23 = *(v0 + 8);
  v23(v2, v22);
  return (v23)(v5, v22);
}

uint64_t sub_10047B294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10047B2DC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "setBackgroundColor:", a1);
  [*(*&v1[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) setBackgroundColor:a1];
  v3 = *&v1[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (v3)
  {
    v4 = v3;
    [v4 setBackgroundColor:a1];
  }
}

void sub_10047B37C()
{
  v1 = OBJC_IVAR____TtC8AppStore9MediaView_reflectionView;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (*&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] > 0.0)
  {
    if (v2)
    {
      return;
    }

    v3 = *(*&v0[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v3)
    {
      type metadata accessor for VideoView(0);
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        v6 = *&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale];
        v7 = v0;
        v8 = -*&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset];
        v9 = qword_10096D300;
        v10 = v3;
        if (v9 != -1)
        {
          swift_once();
        }

        v70 = *&byte_1009CE668[64];
        v71 = *&byte_1009CE668[80];
        v72 = *&byte_1009CE668[96];
        v73 = *&byte_1009CE668[112];
        v66 = *byte_1009CE668;
        v67 = *&byte_1009CE668[16];
        v68 = *&byte_1009CE668[32];
        v69 = *&byte_1009CE668[48];
        v11 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
        v12 = sub_10075DCD8(v5, &v66, v6, v8);
        v13 = *&v7[v1];
        if (v13)
        {
          type metadata accessor for MirrorView();
          v14 = v13;
          v15 = v12;
          v0 = v7;
          v16 = static NSObject.== infix(_:_:)();

          v17 = *&v7[v1];
          if ((v16 & 1) == 0)
          {
            if (v17)
            {
              [*&v7[v1] removeFromSuperview];
              v17 = *&v7[v1];
            }
          }
        }

        else
        {
          v0 = v7;
          v17 = 0;
        }

        *&v0[v1] = v12;
        v53 = v12;

        v54 = *&v0[v1];
        if (v54)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

          type metadata accessor for MirrorView();
          v55 = v13;
          v56 = v54;
          v57 = static NSObject.== infix(_:_:)();

          if (v57)
          {

            v0 = v7;
LABEL_56:
            [v0 setNeedsLayout];
            return;
          }

          v0 = v7;
          v54 = *&v7[v1];
          if (v54)
          {
LABEL_42:
            [v0 addSubview:v54];

            goto LABEL_56;
          }
        }

        else
        {
          if (!v13)
          {

            goto LABEL_56;
          }

          v55 = v13;
        }

LABEL_44:
        goto LABEL_56;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v25 = *&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale];
        v26 = -*&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset];
        v27 = qword_10096D300;
        v28 = v3;
        if (v27 != -1)
        {
          swift_once();
        }

        v29 = v0;
        v70 = *&byte_1009CE668[64];
        v71 = *&byte_1009CE668[80];
        v72 = *&byte_1009CE668[96];
        v73 = *&byte_1009CE668[112];
        v66 = *byte_1009CE668;
        v67 = *&byte_1009CE668[16];
        v68 = *&byte_1009CE668[32];
        v69 = *&byte_1009CE668[48];
        v30 = type metadata accessor for MirrorView();
        v31 = objc_allocWithZone(v30);
        swift_unknownObjectWeakInit();
        v32 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
        *&v31[v32] = [objc_allocWithZone(CALayer) init];
        *&v31[OBJC_IVAR____TtC8AppStore10MirrorView_imageKVOContext] = 0;
        v31[OBJC_IVAR____TtC8AppStore10MirrorView_imageObserversAdded] = 0;
        swift_unknownObjectWeakAssign();
        *&v31[OBJC_IVAR____TtC8AppStore10MirrorView_contentsScaleFactor] = v25;
        *&v31[OBJC_IVAR____TtC8AppStore10MirrorView_contentsVerticalOffset] = v26;
        v65.receiver = v31;
        v65.super_class = v30;
        v33 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        [v33 setClipsToBounds:1];
        [v33 setUserInteractionEnabled:0];
        v34 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
        [*&v33[OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
        LODWORD(v35) = 1.0;
        [*&v33[v34] setOpacity:v35];
        [*&v33[v34] setAnchorPoint:{0.5, 0.5}];
        v36 = qword_10096D2F8;
        v37 = *&v33[v34];
        if (v36 != -1)
        {
          swift_once();
        }

        sub_10002849C(&unk_10097A780, &unk_1007CC250);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        [v37 setActions:isa];

        v39 = *&v33[v34];
        v40 = objc_opt_self();
        v41 = v39;
        v42 = [v40 mainScreen];
        [v42 scale];
        v44 = v43;

        [v41 setContentsScale:v44];
        [*&v33[v34] setMasksToBounds:1];
        v45 = *&v33[v34];
        v64[4] = v70;
        v64[5] = v71;
        v64[6] = v72;
        v64[7] = v73;
        v64[0] = v66;
        v64[1] = v67;
        v64[2] = v68;
        v64[3] = v69;
        [v45 setTransform:v64];
        sub_1001DA558();
        v46 = [v33 layer];

        [v46 addSublayer:*&v33[v34]];
        v47 = *&v29[v1];
        if (v47)
        {
          v48 = v47;
          v49 = v33;
          v50 = v48;
          v0 = v29;
          v51 = static NSObject.== infix(_:_:)();

          v52 = *&v29[v1];
          if ((v51 & 1) == 0 && v52)
          {
            [*&v29[v1] removeFromSuperview];
            v52 = *&v29[v1];
          }
        }

        else
        {
          v0 = v29;
          v52 = 0;
        }

        *&v0[v1] = v33;
        v55 = v33;

        v58 = *&v0[v1];
        if (v58)
        {
          if (!v47)
          {
            goto LABEL_54;
          }

          v59 = v47;
          v60 = v58;
          v61 = static NSObject.== infix(_:_:)();

          if (v61)
          {

            v0 = v29;
            goto LABEL_56;
          }

          v0 = v29;
          v58 = *&v29[v1];
          if (v58)
          {
LABEL_54:
            [v0 addSubview:v58];

            goto LABEL_56;
          }
        }

        else
        {
          if (!v47)
          {

            goto LABEL_44;
          }

          v59 = v47;
        }

        goto LABEL_56;
      }

      v24 = *&v0[v1];
    }

    else
    {
      v24 = 0;
    }

    *&v0[v1] = 0;

    if (*&v0[v1])
    {
      [v0 addSubview:?];
    }

    goto LABEL_56;
  }

  if (!v2)
  {
    return;
  }

  v62 = v2;
  [v62 removeFromSuperview];
  v18 = *&v0[v1];
  *&v0[v1] = 0;

  v19 = *&v0[v1];
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = v0;
  type metadata accessor for MirrorView();
  v63 = v62;
  v21 = v19;
  v22 = static NSObject.== infix(_:_:)();

  if ((v22 & 1) == 0)
  {
    if (*&v20[v1])
    {
      [v20 addSubview:?];
      goto LABEL_16;
    }

LABEL_17:
    v23 = v62;
    goto LABEL_18;
  }

LABEL_16:
  v23 = v63;
LABEL_18:
}

uint64_t (*sub_10047BB70(uint64_t *a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  v4 = OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(v3 + v4);
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
  return sub_10047D26C;
}

id sub_10047BD30()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  [v0 bounds];
  v1 = OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount;
  v6 = sub_1000CC354(v2, v3, v4, v5, 0.0, 0.0);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [*&v0[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] setFrame:?];
  [v0 bounds];
  MinX = CGRectGetMinX(v18);
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  MaxY = CGRectGetMaxY(v19);
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  Width = CGRectGetWidth(v20);
  result = *&v0[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (result)
  {
    return [result setFrame:{MinX, MaxY, Width, *&v0[v1]}];
  }

  return result;
}

uint64_t sub_10047BF34()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
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

void sub_10047BF98(void *a1)
{
  sub_10047D0EC(a1);
}

uint64_t (*sub_10047BFE4(uint64_t **a1))()
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
  v2[4] = sub_10047BB70(v2);
  return sub_1000C2700;
}

uint64_t sub_10047C054()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10047D224(&qword_100986D90, v1, type metadata accessor for MediaView, &unk_1007CF068);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_10047C0C8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10047D224(&qword_100986D90, v5, type metadata accessor for MediaView, &unk_1007CF068);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_10047C154(uint64_t *a1))()
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

  v4 = v2;
  *a1 = v2;
  sub_10047D224(&qword_100986D90, v3, type metadata accessor for MediaView, &unk_1007CF068);
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10047C210(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  sub_100028004();
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

char *sub_10047C298(uint64_t a1)
{
  v2 = 0;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v3 = &v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  v3[8] = 1;
  *v3 = 0;
  v4 = &v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  v6 = *(a1 + 32);
  v4[32] = v6;
  if ((v6 & 1) == 0)
  {
    v2 = [objc_allocWithZone(UIBackgroundExtensionView) init];
    [v2 setAutomaticallyPlacesContentView:0];
  }

  *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = v2;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for UberContentContainer();
  result = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (*&result[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    v8 = result;
    [result addSubview:?];
    return v8;
  }

  return result;
}

uint64_t (*sub_10047C428(uint64_t *a1))()
{
  v3 = OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    type metadata accessor for VideoView(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_10047C4AC;
}

void sub_10047C4B0(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      sub_10047D224(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
      v4 = v3;
      v5 = [v4 superview];
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 8);
        sub_100028004();
        v8 = v7;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          [v4 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v17 = *(a1 + 8);
    v16 = *(a1 + 16);
    v18 = *(v17 + v16);
    *(v17 + v16) = v3;
    v19 = v3;
    sub_10047C6C8(v18);

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_10047D224(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 8);
        sub_100028004();
        v14 = v13;
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v24 = *(v22 + v21);
    *(v22 + v21) = v3;
    v23 = v3;
    sub_10047C6C8(v24);

    v20 = v24;
  }
}

void sub_10047C6C8(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    type metadata accessor for VideoView(0);
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      return;
    }

    v8 = v7;
    sub_10047D224(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v18 = a1;
    v9 = [v8 superview];
    if (v9)
    {
      v10 = v9;
      sub_100028004();
      v11 = v2;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        [v8 removeFromSuperview];
      }
    }

    goto LABEL_10;
  }

  if (!a1)
  {
    v14 = v4;
    goto LABEL_12;
  }

  sub_100028004();
  v18 = v4;
  v5 = a1;
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
LABEL_12:
    type metadata accessor for ArtworkView();
    if (swift_dynamicCastClass())
    {
      v15 = v4;
      ArtworkView.frameUpdatesImageSize.setter();
    }

    [v4 setContentMode:2];
    [v4 setAccessibilityIgnoresInvertColors:1];
    v16 = *&v2[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView];
    if (v16)
    {
      v17 = v16;
      [v17 setContentView:v4];
    }

    else
    {

      [v2 addSubview:v4];
    }

    v13 = v4;
    goto LABEL_19;
  }

LABEL_10:
  v13 = v18;
LABEL_19:
}

void sub_10047C90C()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for UberContentContainer();
  objc_msgSendSuper2(&v38, "layoutSubviews");
  [v0 bounds];
  MinX = CGRectGetMinX(v39);
  [v0 bounds];
  MinY = CGRectGetMinY(v40);
  v4 = OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY;
  v5 = MinY + *&v0[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
  [v0 bounds];
  Width = CGRectGetWidth(v41);
  [v0 bounds];
  Height = CGRectGetHeight(v42);
  v8 = *&v0[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView];
  if (v8)
  {
    v9 = v8;
    [v9 setFrame:{MinX, v5, Width, Height}];
    v43.origin.x = MinX;
    v43.origin.y = v5;
    v43.size.width = Width;
    v43.size.height = Height;
    v10 = CGRectGetWidth(v43);
    v44.origin.x = MinX;
    v44.origin.y = v5;
    v44.size.width = Width;
    v44.size.height = Height;
    v11 = CGRectGetHeight(v44);
    v12 = 0.0;
    if (v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets + 32])
    {
      v13 = 0.0;
    }

    else
    {
      v14 = [v1 traitCollection];
      [v14 layoutDirection];

      NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
      v12 = sub_1000CC354(0.0, 0.0, v10, v11, v15, v16);
      v13 = v17;
      v10 = v18;
      v11 = v19;
    }

    v20 = *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    [v20 setFrame:{v12, v13, v10, v11}];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] setFrame:{MinX, v5, Width, Height}];
  }

  v21 = *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
  if (v21)
  {
    type metadata accessor for VideoView(0);
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      if (v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride + 8])
      {
        v24 = v21;
        [v1 bounds];
        MidY = CGRectGetMidY(v45);
      }

      else
      {
        MidY = *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
        v26 = v21;
      }

      [v1 bounds];
      MidX = CGRectGetMidX(v46);
      v28 = MidY - *&v1[v4];
      v29 = v23 + qword_1009D21B8;
      v30 = *(v23 + qword_1009D21B8);
      v31 = *(v23 + qword_1009D21B8 + 8);
      v32 = *(v23 + qword_1009D21B8 + 16);
      *v29 = MidX;
      *(v29 + 8) = v28;
      *(v29 + 16) = 0;
      if ((v32 & 1) != 0 || (MidX == v30 ? (v33 = v28 == v31) : (v33 = 0), !v33))
      {
        sub_1004E1028();
      }

      v34 = *&v1[v4];
      v35 = (v23 + qword_1009D21B0);
      v36 = *(v23 + qword_1009D21B0);
      v37 = *(v23 + qword_1009D21B0 + 16);
      *v35 = 0;
      v35[1] = 0;
      v35[2] = v34;
      v35[3] = 0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqzq_f64(v36), vceqq_f64(v37, v34)))) & 1) == 0)
      {
        sub_1004E2320();
      }
    }
  }
}

id sub_10047CCC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberContentContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10047CD68()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
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

void sub_10047CDC0(void *a1)
{
  sub_10047D0EC(a1);
}

uint64_t (*sub_10047CDF8(uint64_t **a1))()
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
  v2[4] = sub_10047C428(v2);
  return sub_1000B4CAC;
}

uint64_t sub_10047CE68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10047CEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10047CF28(uint64_t *a1, uint64_t a2))()
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
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

void sub_10047D0EC(void *a1)
{
  if (a1)
  {
    sub_10047D224(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v3 = a1;
    v4 = [v3 superview];
    if (v4)
    {
      v5 = v4;
      sub_100028004();
      v6 = v1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        [v3 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v9 = *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
  *&v1[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = a1;
  v8 = a1;
  sub_10047C6C8(v9);
}

uint64_t sub_10047D224(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_10047D278(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E600 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for StaticDimension();
  sub_1000056A8(v13, qword_1009D20F8);
  swift_getObjectType();
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for SmallLockupView(0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SmallLockupLayout.Metrics();
  v15 = sub_1000056A8(v14, qword_1009D3798);
  sub_10070B598(v15, a7, 0.0, 0.0);
  return a1;
}

uint64_t sub_10047D45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v30 - v16;
  v18 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  *&v19 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v21 = &v30 - v20;
  v22 = [v3 contentView];
  [v22 layoutMargins];
  [v22 setLayoutMargins:?];

  v23 = *&v3[OBJC_IVAR____TtC8AppStore34SmallLockupCollectionViewTableCell_lockupView];
  v24 = sub_10002849C(&unk_100973240, qword_1007B2220);
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = type metadata accessor for OfferStyle();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = type metadata accessor for OfferEnvironment();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = type metadata accessor for OfferTint();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  sub_1004F3190(a1, v23, v21, a3, 0, 0, v17, v14, v8, v11);
  sub_10002B894(v8, &unk_100973AD0, &unk_1007B17C0);
  v23[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10070AB34();
  [v23 setNeedsLayout];
  sub_10002B894(v11, &unk_100970150, &unk_1007BDDD0);
  sub_10002B894(v14, &unk_100970160, &unk_1007BDDE0);
  sub_10002B894(v17, &qword_100973AE0, &unk_1007B17D0);
  return sub_10002B894(v21, &unk_100973230, &unk_1007B17E0);
}

uint64_t sub_10047D89C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

    return v3 ^ a2[1] ^ 1u;
  }

  result = 0;
  if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
  {
    return v3 ^ a2[1] ^ 1u;
  }

  return result;
}

double sub_10047D8E4(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = type metadata accessor for ComponentLayoutOptions();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002849C(&qword_100986DE8, &qword_1007CF1A8);
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v15 = type metadata accessor for ProductReview.ReviewSource();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ProductReview();
  sub_10047F094(&qword_100971EE0, &type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v46)
  {
    ProductReview.source.getter();
    v20 = (*(v16 + 88))(v18, v15);
    if (v20 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
    {

      (*(v16 + 8))(v18, v15);
    }

    else
    {
      if (v20 == enum case for ProductReview.ReviewSource.user(_:))
      {
        (*(v16 + 96))(v18, v15);
        v41 = *v18;
        v21 = v45;
        v22 = sub_100784D2C();
        ItemLayoutContext.state.getter();
        StateLens.init(_:)();
        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        v23 = v46;
        v24 = [v46 horizontalSizeClass];

        v25 = (v24 == 1) & !sub_10047EE88();
        v26 = OBJC_IVAR____TtC8AppStore17ProductReviewView_shouldHandleTextSelection;
        v22[OBJC_IVAR____TtC8AppStore17ProductReviewView_shouldHandleTextSelection] = v25;
        [*&v22[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapGestureRecognizer] setEnabled:?];
        [*&v22[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapGestureRecognizer] setEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel] setUserInteractionEnabled:v22[v26]];
        [*&v22[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel] setUserInteractionEnabled:v22[v26]];
        sub_10006C318();
        v27 = v44;
        StateLens<A>.currentValue.getter();
        v28 = sub_10047EC1C(a1, v46);
        swift_getKeyPath();
        StateLens<A>.subscript.getter();

        v29 = v46;
        v30 = sub_100079F24();
        if (v28)
        {
          v31 = 256;
        }

        else
        {
          v31 = 0;
        }

        sub_100779FE0(v41, v31 | v28 & 1, v29, v30, v42);
        swift_unknownObjectRelease();
        [v22 setHidden:0];

        (*(v43 + 8))(v14, v27);
      }

      else
      {
        if (v20 == enum case for ProductReview.ReviewSource.reviewSummary(_:))
        {
          (*(v16 + 96))(v18, v15);
          v42 = *v18;
          v32 = sub_100784D4C();
          ItemLayoutContext.state.getter();
          StateLens.init(_:)();
          swift_getKeyPath();
          sub_10006C318();
          v33 = v44;
          StateLens<A>.subscript.getter();

          v34 = v46;
          if (v46 == 2)
          {
            ItemLayoutContext.componentLayoutOptions.getter();
            v35 = v39;
            static ComponentLayoutOptions.overflowed.getter();
            sub_10047F094(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
            v36 = v41;
            v37 = dispatch thunk of SetAlgebra.isSuperset(of:)();
            v38 = *(v40 + 8);
            v38(v35, v36);
            v38(v7, v36);
            v34 = v37 ^ 1;
          }

          sub_100624488(v42, v34 & 1, 0, 0);
          [v32 setHidden:0];

          (*(v43 + 8))(v11, v33);
        }

        else
        {
          (*(v16 + 8))(v18, v15);
        }

        v21 = v45;
      }

      [v21 setNeedsLayout];
    }
  }

  return result;
}

void sub_10047DFD0(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Shelf.PresentationHints();
  v38 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v9 - 8);
  v42 = sub_10002849C(&qword_100971EC0, &qword_1007B2A38);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v36 - v12;
  v13 = sub_10002849C(&qword_100986DF0, &qword_1007CF250);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  type metadata accessor for ProductReview();
  sub_10047F094(&qword_100971EE0, &type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v43)
  {
    v22 = type metadata accessor for ProductReview.ReviewSource();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    sub_10002B894(v18, &qword_100986DF0, &qword_1007CF250);
    goto LABEL_15;
  }

  v40 = a2;

  ProductReview.source.getter();

  v19 = type metadata accessor for ProductReview.ReviewSource();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 0, 1, v19);
  sub_10047F024(v18, v15);
  v21 = (*(v20 + 88))(v15, v19);
  if (v21 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
  {
    (*(v20 + 8))(v15, v19);
LABEL_15:
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007B1890;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    v43 = v32;
    sub_10047F094(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_10002849C(&qword_100975758, &qword_1007DA2A0);
    sub_100135DA0();
    dispatch thunk of SetAlgebra.init<A>(_:)();

    return;
  }

  if (v21 != enum case for ProductReview.ReviewSource.user(_:))
  {
    v27 = enum case for ProductReview.ReviewSource.reviewSummary(_:);
    v28 = v21;
    (*(v20 + 8))(v15, v19);
    if (v28 == v27)
    {
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v29 = v43;
      v30 = UITraitCollection.isSizeClassCompact.getter();

      if (v30)
      {
        v31 = sub_100784D4C();
        if (([*(*&v31[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton) isHidden] & 1) == 0)
        {
          ItemLayoutContext.mutableState.getter();
          v33 = v37;
          WritableStateLens.init(_:)();
          sub_10006C318();
          v34 = v42;
          WritableStateLens<A>.updateValue(_:)();
          sub_10002849C(&qword_100975748, &qword_1007BA160);
          type metadata accessor for SelectableShelfComponentViewReaction();
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_1007B1E00;
          static SelectableShelfComponentViewReaction.propagate.getter();
          static SelectableShelfComponentViewReaction.deselect.getter();
          static SelectableShelfComponentViewReaction.reapply.getter();
          v43 = v35;
          sub_10047F094(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
          sub_10002849C(&qword_100975758, &qword_1007DA2A0);
          sub_100135DA0();
          dispatch thunk of SetAlgebra.init<A>(_:)();

          (*(v39 + 8))(v33, v34);
          return;
        }
      }
    }

    goto LABEL_15;
  }

  (*(v20 + 8))(v15, v19);
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  swift_getKeyPath();
  sub_10006C318();
  WritableStateLens<A>.subscript.getter();

  v23 = v43;
  if (!sub_10047EE88())
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    static Shelf.PresentationHints.isSeeAllContext.getter();
    sub_10047F094(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v24 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v25 = *(v38 + 8);
    v25(v5, v3);
    v25(v8, v3);
    if (v24)
    {
      if ((v23 == 2) | v23 & 1)
      {
        WritableStateLens<A>.updateValue(_:)();
      }
    }
  }

  sub_10002849C(&qword_100975748, &qword_1007BA160);
  type metadata accessor for SelectableShelfComponentViewReaction();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007B1E00;
  static SelectableShelfComponentViewReaction.propagate.getter();
  static SelectableShelfComponentViewReaction.deselect.getter();
  static SelectableShelfComponentViewReaction.reapply.getter();
  v43 = v26;
  sub_10047F094(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
  sub_10002849C(&qword_100975758, &qword_1007DA2A0);
  sub_100135DA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();

  (*(v39 + 8))(v41, v42);
}

uint64_t sub_10047E9F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_10047EA50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10047EB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_10047EBC4(uint64_t a1)
{
  result = sub_10047F094(&qword_100986DE0, type metadata accessor for GenericProductReviewCollectionViewCell, &unk_1007CF0E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10047EC1C(uint64_t a1, int a2)
{
  v21 = a2;
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ComponentLayoutOptions();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  ItemLayoutContext.componentLayoutOptions.getter();
  static ComponentLayoutOptions.overflowed.getter();
  sub_10047F094(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v13 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.columnCount.getter();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    if (v17 > 1.0 || v21 == 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = v21 ^ 1;
    }
  }

  return v15 & 1;
}

BOOL sub_10047EE88()
{
  v0 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v1 + 8))(v3, v0);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  sub_10002849C(&qword_10097C550, &qword_1007C43B8);
  if (swift_dynamicCast())
  {
    sub_100005A38(v7, v9);
    sub_10002A400(v9, v9[3]);
    v4 = dispatch thunk of ClickableModel.clickAction.getter();
    v5 = v4 != 0;
    if (v4)
    {
    }

    sub_100007000(v9);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_10002B894(v7, &qword_10097C558, qword_1007C43C0);
    return 0;
  }

  return v5;
}

uint64_t sub_10047F024(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100986DF0, &qword_1007CF250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047F094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s14descr1008AC371O5StateVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1008AC371O5StateVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10047F250()
{
  result = qword_100986DF8;
  if (!qword_100986DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986DF8);
  }

  return result;
}

unint64_t sub_10047F2A8()
{
  result = qword_100986E00;
  if (!qword_100986E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986E00);
  }

  return result;
}

uint64_t sub_10047F2FC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E060 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D10A0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v9 = enum case for FontSource.useCase(_:);
  v10 = v1 + 13;
  v28 = v1[13];
  v28(v3, enum case for FontSource.useCase(_:), v0);
  v27 = type metadata accessor for StaticDimension();
  v37 = v27;
  v38 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v36);
  v34 = v0;
  v35 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v33);
  v26 = v1[2];
  v26(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v12 = v1[1];
  v24 = v1 + 1;
  v25 = v12;
  v12(v3, v0);
  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v4, qword_1009D10B8);
  v21[0] = v7;
  v21[1] = v8;
  v7(v3, v13, v4);
  v14 = v28;
  v28(v3, v9, v0);
  v23 = v10;
  v15 = v27;
  v34 = v27;
  v35 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v33);
  v22 = v9;
  v31 = v0;
  v32 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(&v30);
  v17 = v26;
  v26(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v18 = v25;
  v25(v3, v0);
  (v21[0])(v3, v13, v4);
  v14(v3, v22, v0);
  v31 = v15;
  v32 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v30);
  v29[3] = v0;
  v29[4] = &protocol witness table for FontSource;
  v19 = sub_1000056E0(v29);
  v17(v19, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v18(v3, v0);
  xmmword_1009D1DD0 = vdupq_n_s64(0x4044000000000000uLL);
  unk_1009D1DE0 = xmmword_1007B2C20;
  xmmword_1009D1DF0 = xmmword_1007CF330;
  sub_100005A38(&v33, &unk_1009D1E28);
  sub_100005A38(&v36, &unk_1009D1E00);
  return sub_100005A38(&v30, &unk_1009D1E50);
}

char *sub_10047F72C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for CornerStyle();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v83 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Separator.Position();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v79 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Separator();
  v81 = *(v12 - 8);
  v82 = v12;
  __chkstk_darwin(v12);
  v78 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = &v71 - v15;
  v16 = type metadata accessor for DirectionalTextAlignment();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v20 - 8);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v24 = type metadata accessor for ItemLayoutContext();
  (*(*(v24 - 8) + 56))(&v4[v23], 1, 1, v24);
  v25 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_10096E4D8 != -1)
  {
    swift_once();
  }

  v74 = v17;
  v75 = xmmword_1009D1DD0;
  *&v4[v25] = xmmword_1009D1DD0;
  v73 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_alias;
  v86 = v4;
  if (qword_10096E060 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for FontUseCase();
  v27 = sub_1000056A8(v26, qword_1009D10A0);
  v28 = *(v26 - 8);
  v72 = *(v28 + 16);
  v72(v22, v27, v26);
  v71 = *(v28 + 56);
  v71(v22, 0, 1, v26);
  v29 = enum case for DirectionalTextAlignment.none(_:);
  v30 = *(v74 + 104);
  v30(v19, enum case for DirectionalTextAlignment.none(_:), v16);
  v31 = type metadata accessor for DynamicTypeLabel();
  v74 = v16;
  v32 = v31;
  v33 = objc_allocWithZone(v31);
  *&v86[v73] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v73 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_displayName;
  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  v34 = sub_1000056A8(v26, qword_1009D10B8);
  v72(v22, v34, v26);
  v71(v22, 0, 1, v26);
  v30(v19, v29, v74);
  v35 = objc_allocWithZone(v32);
  v36 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v37 = v86;
  *&v86[v73] = v36;
  v38 = &v37[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_insets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v38 = UIEdgeInsetsZero.top;
  v38[1] = left;
  v38[2] = bottom;
  v38[3] = right;
  v42 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_separatorView;
  (*(v76 + 104))(v79, enum case for Separator.Position.bottom(_:), v77);
  v88[3] = type metadata accessor for ZeroDimension();
  v88[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v88);
  static ZeroDimension.zero.getter();
  v43 = v78;
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v44 = v80;
  Separator.withLeadingInset(_:)();
  v46 = v81;
  v45 = v82;
  (*(v81 + 8))(v43, v82);
  v47 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v48 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v49 = *(v46 + 40);
  v50 = v47;
  v49(&v47[v48], v44, v45);
  swift_endAccess();

  *&v37[v42] = v50;
  *&v37[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v51 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell(0);
  v87.receiver = v37;
  v87.super_class = v51;
  v52 = objc_msgSendSuper2(&v87, "initWithFrame:", a1, a2, a3, a4);
  v53 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_artworkView;
  v54 = *&v52[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_artworkView];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v55 = v52;
  v56 = v54;
  static UIColor.placeholderBackground.getter();
  ArtworkView.backgroundColor.setter();

  v57 = *&v52[v53];
  v58 = v83;
  dispatch thunk of RoundedCornerView.cornerStyle.getter();
  ArtworkView.setCorner(radius:style:)();

  (*(v84 + 8))(v58, v85);
  v59 = [v55 contentView];
  [v59 addSubview:*&v52[v53]];

  v60 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_alias;
  v61 = *&v55[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_alias];
  v62 = static UIColor.primaryText.getter();
  [v61 setTextColor:v62];

  v63 = [v55 contentView];
  [v63 addSubview:*&v55[v60]];

  v64 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_displayName;
  v65 = *&v55[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_displayName];
  v66 = static UIColor.secondaryText.getter();
  [v65 setTextColor:v66];

  v67 = [v55 contentView];
  [v67 addSubview:*&v55[v64]];

  v68 = [v55 contentView];
  [v68 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v69 = [v55 contentView];
  [v69 addSubview:*&v55[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_separatorView]];

  return v55;
}

uint64_t sub_100480108()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Separator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell(0);
  v40.receiver = v1;
  v40.super_class = v10;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v11 = *&v1[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_separatorView];
  [v1 bounds];
  v12 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  (*(v7 + 16))(v9, &v11[v12], v6);
  Separator.frame(forBoundingRect:in:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  [v11 setFrame:{v14, v16, v18, v20}];
  v21 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  if (qword_10096E4D8 != -1)
  {
    swift_once();
  }

  sub_1001A0C90(&xmmword_1009D1DD0, v37);
  v30 = *&v1[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_artworkView];
  v37[24] = type metadata accessor for ArtworkView();
  v37[25] = &protocol witness table for UIView;
  v37[21] = v30;
  v31 = *&v1[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_alias];
  v38 = type metadata accessor for DynamicTypeLabel();
  v39 = &protocol witness table for UILabel;
  v32 = *&v1[OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_displayName];
  v37[30] = &protocol witness table for UILabel;
  v37[31] = v31;
  v37[29] = v38;
  v37[26] = v32;
  v33 = v30;
  v34 = v31;
  v35 = v32;
  SmallGameCenterPlayerLayout.placeChildren(relativeTo:in:)(v1, v5, v23, v25, v27, v29);
  (*(v3 + 8))(v5, v2);
  return sub_10025AB54(v37);
}

id sub_1004804B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallGameCenterPlayerCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmallGameCenterPlayerCollectionViewCell(uint64_t a1)
{
  result = qword_100986E30;
  if (!qword_100986E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004805C0(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10048069C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4764(a1, a2, a3, WitnessTable);
}

void sub_100480708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4A1C(a1, a2, a3, WitnessTable);
}

unint64_t sub_100480774(uint64_t a1)
{
  result = sub_10048079C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10048079C()
{
  result = qword_100986E40;
  if (!qword_100986E40)
  {
    type metadata accessor for SmallGameCenterPlayerCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986E40);
  }

  return result;
}

void sub_1004807F4()
{
  v1 = type metadata accessor for Separator.Position();
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v49 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Separator();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v41 - v6;
  v7 = type metadata accessor for DirectionalTextAlignment();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  v15 = *(*(v14 - 8) + 56);
  v54 = v0;
  v15(v0 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_10096E4D8 != -1)
  {
    swift_once();
  }

  v43 = xmmword_1009D1DD0;
  *(v54 + v16) = xmmword_1009D1DD0;
  v42 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_alias;
  if (qword_10096E060 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  v18 = sub_1000056A8(v17, qword_1009D10A0);
  v19 = *(v17 - 8);
  v41 = *(v19 + 16);
  v41(v12, v18, v17);
  v20 = *(v19 + 56);
  v20(v12, 0, 1, v17);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v8 + 104);
  v44 = v8 + 104;
  v45 = v7;
  v22(v53, enum case for DirectionalTextAlignment.none(_:), v7);
  v23 = type metadata accessor for DynamicTypeLabel();
  v24 = objc_allocWithZone(v23);
  *(v54 + v42) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v25 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_displayName;
  if (qword_10096E068 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v17, qword_1009D10B8);
  v41(v12, v26, v17);
  v20(v12, 0, 1, v17);
  v22(v53, v21, v45);
  v27 = objc_allocWithZone(v23);
  v28 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = v54;
  *(v54 + v25) = v28;
  v30 = (v29 + OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_insets);
  v31 = *&UIEdgeInsetsZero.bottom;
  *v30 = *&UIEdgeInsetsZero.top;
  v30[1] = v31;
  v32 = OBJC_IVAR____TtC8AppStore39SmallGameCenterPlayerCollectionViewCell_separatorView;
  (*(v46 + 104))(v49, enum case for Separator.Position.bottom(_:), v47);
  v55[3] = type metadata accessor for ZeroDimension();
  v55[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v55);
  static ZeroDimension.zero.getter();
  v33 = v48;
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v34 = v50;
  Separator.withLeadingInset(_:)();
  v36 = v51;
  v35 = v52;
  (*(v51 + 8))(v33, v52);
  v37 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v39 = *(v36 + 40);
  v40 = v37;
  v39(&v37[v38], v34, v35);
  swift_endAccess();

  *(v29 + v32) = v40;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100480E28(uint64_t a1)
{
  v2 = v1;
  if (a1 >= 1)
  {
    [v2 setLineSpacing:a1];
    v4 = [v2 font];
    if (v4)
    {
      v5 = v4;
      [v4 lineHeight];
      v7 = v6;

      v8 = [objc_allocWithZone(NSNumber) initWithDouble:a1 - v7];
      v9 = sub_100194454();
      *(&v23 + 1) = v9;
      *&v22 = v8;
      v10 = [v2 _defaultAttributes];
      if (v10)
      {
        v11 = v10;
        type metadata accessor for Key(0);
        sub_10006F0F0();
        v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v12;
        if (v9)
        {
          sub_100056164(&v22, v20);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = v12;
          sub_100051368(v20, NSBaselineOffsetAttributeName, isUniquelyReferenced_nonNull_native);
          v21 = v12;
          if (v12)
          {
LABEL_6:
            v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_12:
            [v2 _setDefaultAttributes:{v14.super.isa, v19}];

            return;
          }
        }

        else
        {
          sub_10003D444(&v22);
          sub_1000DAC3C(v20);
          sub_10003D444(v20);
          if (v21)
          {
            goto LABEL_6;
          }
        }

        v14.super.isa = 0;
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  [v1 setLineSpacing:0];
  v22 = 0u;
  v23 = 0u;
  v15 = [v1 _defaultAttributes];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v16 = v15;
  type metadata accessor for Key(0);
  sub_10006F0F0();
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v17;
  sub_10003D444(&v22);
  sub_1000DAC3C(v20);
  sub_10003D444(v20);
  if (v21)
  {
    v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  [v2 _setDefaultAttributes:v18.super.isa];
}

uint64_t sub_1004810FC()
{
  sub_10002849C(&unk_100993620, qword_1007BB0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B23A0;
  *(inited + 32) = UIActivityTypeAirDrop;
  *(inited + 40) = UIActivityTypeCopyToPasteboard;
  *(inited + 48) = UIActivityTypeMessage;
  *(inited + 56) = UIActivityTypePostToFacebook;
  *(inited + 64) = UIActivityTypePostToTwitter;
  *(inited + 72) = UIActivityTypePostToWeibo;
  v1 = UIActivityTypeAirDrop;
  v2 = UIActivityTypeCopyToPasteboard;
  v3 = UIActivityTypeMessage;
  v4 = UIActivityTypePostToFacebook;
  v5 = UIActivityTypePostToTwitter;
  v6 = UIActivityTypePostToWeibo;
  sub_1000836E4(inited);
  v8 = v7;
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_100986E48 = v8;
  return result;
}

double sub_10048120C@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  if (a1 && (v4 = *(v2 + OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_excludedActivityTypes), v5 = a1, LOBYTE(v4) = sub_100296374(v5, v4), v5, (v4 & 1) != 0) || (, sub_10002849C(&qword_100986EA8, qword_1007CF430), Box.read<A>(with:)(), , !v7))
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v9 = sub_100005744(0, &qword_1009744B0, UIImage_ptr);
    *&v8 = v7;
    sub_100056164(&v8, a2);
  }

  return result;
}

void sub_1004814CC(void *a1@<X8>)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v22 - v9;
  v11 = [v1 activityType];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = v11;
  if (sub_100296374(v11, *&v1[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_excludedActivityTypes]))
  {

LABEL_4:
    v13 = [objc_allocWithZone(UIImage) init];
    a1[3] = sub_100005744(0, &qword_1009744B0, UIImage_ptr);
    *a1 = v13;
    return;
  }

  v14 = dispatch_semaphore_create(0);
  v22 = *&v1[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkLoader];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v23 = a1;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = v14;

  ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

  sub_1000C36CC(v24);

  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v6, v3);
  OS_dispatch_semaphore.wait(timeout:)();
  v18(v10, v3);
  v19 = v23;

  sub_10002849C(&qword_100986EA8, qword_1007CF430);
  Box.read<A>(with:)();

  v20 = *&v24[0];
  v19[3] = sub_100005744(0, &qword_1009744B0, UIImage_ptr);
  if (v20)
  {

    *v19 = v20;
  }

  else
  {
    v21 = [objc_allocWithZone(UIImage) init];

    *v19 = v21;
  }
}

void sub_1004817F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v7 = type metadata accessor for Artwork.Style();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for AspectRatio();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v19 = Strong;
  if (!a1)
  {

LABEL_9:
    OS_dispatch_semaphore.signal()();
    return;
  }

  v40 = OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_artworkConfig;
  v39 = a1;

  ArtworkLoaderConfig.size.getter();
  v21 = v20;
  v23 = v22;

  v41 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, v21, v23}];
  [v41 setOpaque:0];
  AspectRatio.init(_:_:)();
  v24 = AspectRatio.isSquare.getter();
  (*(v15 + 8))(v17, v14);
  if (v24)
  {
    if (v19[OBJC_IVAR____TtC8AppStore27ArtworkActivityItemProvider_enablePrerenderedIconArtwork])
    {
      v25 = &enum case for Artwork.Style.roundedRectPrerendered(_:);
    }

    else
    {
      v25 = &enum case for Artwork.Style.roundedRect(_:);
    }

    (*(v8 + 104))(v13, *v25, v7);
  }

  else
  {
    (*(v8 + 104))(v10, enum case for Artwork.Style.unadorned(_:), v7);
  }

  v26 = v41;
  ArtworkView.style.setter();
  v27 = v39;
  ArtworkView.image.setter();
  sub_100005744(0, &qword_100986EB0, UIGraphicsImageRendererFormat_ptr);
  v28 = [swift_getObjCClassFromMetadata() defaultFormat];
  ArtworkLoaderConfig.scale.getter();
  [v28 setScale:?];
  [v28 setOpaque:0];
  [v27 size];
  v31 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v28 format:{v29, v30}];
  v32 = swift_allocObject();
  *(v32 + 16) = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_100481E58;
  *(v33 + 24) = v32;
  aBlock[4] = sub_100481EA8;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002FDC2C;
  aBlock[3] = &unk_1008C4740;
  v34 = _Block_copy(aBlock);
  v35 = v26;

  v36 = [v31 imageWithActions:v34];
  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    __chkstk_darwin(v37);
    *(&v38 - 2) = v36;

    Box.write(with:)();

    OS_dispatch_semaphore.signal()();
  }
}

id sub_100481D7C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ArtworkActivityItemProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100481E58()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

id sub_100481EB0(id *a1)
{
  v4 = *(v1 + 16);

  *a1 = v4;

  return v4;
}

void sub_100481F04(void *a1, void *a2, char a3)
{
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 snapshotViewAfterScreenUpdates:0];

    if (v8)
    {
      v9 = [a1 tabBar];
      [v9 frame];
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      x = v44.origin.x;
      v37 = v44.origin.x;
      v14 = CGRectGetHeight(v44);
      v15 = 0.0;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v46 = CGRectOffset(v45, 0.0, v14);
      v35 = v46.origin.y;
      v36 = v46.origin.x;
      v33 = v46.size.height;
      v34 = v46.size.width;
      v16 = a3 & 1;
      if (a3)
      {
        v17 = y;
      }

      else
      {
        x = v46.origin.x;
        v17 = v46.origin.y;
      }

      if (a3)
      {
        v18 = width;
      }

      else
      {
        v18 = v46.size.width;
      }

      if (a3)
      {
        v19 = height;
      }

      else
      {
        v19 = v46.size.height;
      }

      if (a3)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (a3)
      {
        v15 = 1.0;
      }

      v21 = [objc_allocWithZone(UIView) initWithFrame:{x, v17, v18, v19}];
      [v21 setClipsToBounds:1];
      [v21 addSubview:v8];
      [v8 setAlpha:v15];
      [v21 bounds];
      MaxY = CGRectGetMaxY(v47);
      [v8 bounds];
      v23 = MaxY - CGRectGetHeight(v48);
      [v8 frame];
      [v8 setFrame:{0.0, v23}];
      [v9 setHidden:1];

      v24 = [a2 containerView];
      [v24 addSubview:v21];

      v25 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v20 curve:0 animations:0.233333333];
      v26 = swift_allocObject();
      *(v26 + 16) = v21;
      *(v26 + 24) = v16;
      *(v26 + 32) = v36;
      *(v26 + 40) = v35;
      *(v26 + 48) = v34;
      *(v26 + 56) = v33;
      *(v26 + 64) = v37;
      *(v26 + 72) = y;
      *(v26 + 80) = width;
      *(v26 + 88) = height;
      *(v26 + 96) = v8;
      v42 = sub_100482308;
      v43 = v26;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_100007A08;
      v41 = &unk_1008C4790;
      v27 = _Block_copy(&aBlock);
      v28 = v21;
      v29 = v8;

      [v25 addAnimations:v27];
      _Block_release(v27);
      v30 = swift_allocObject();
      *(v30 + 16) = v9;
      *(v30 + 24) = v16;
      v42 = sub_1004823B4;
      v43 = v30;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_10007FFE8;
      v41 = &unk_1008C47E0;
      v31 = _Block_copy(&aBlock);
      v32 = v9;

      [v25 addCompletion:v31];
      _Block_release(v31);
      [v25 startAnimation];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100482308()
{
  v1 = *(v0 + 96);
  if (*(v0 + 24))
  {
    v2 = (v0 + 32);
  }

  else
  {
    v2 = (v0 + 64);
  }

  v3 = *v2;
  if (*(v0 + 24))
  {
    v4 = (v0 + 40);
  }

  else
  {
    v4 = (v0 + 72);
  }

  v5 = *v4;
  if (*(v0 + 24))
  {
    v6 = (v0 + 48);
  }

  else
  {
    v6 = (v0 + 80);
  }

  v7 = *v6;
  if (*(v0 + 24))
  {
    v8 = (v0 + 56);
  }

  else
  {
    v8 = (v0 + 88);
  }

  if (*(v0 + 24))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  [*(v0 + 16) setFrame:{v3, v5, v7, *v8}];

  return [v1 setAlpha:v9];
}

id sub_1004823D0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlayerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10048256C(uint64_t a1, uint64_t a2)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for PlayerViewController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v3 = [objc_opt_self() defaultCenter];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 player];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 currentItem];

    if (v7)
    {
      v9 = v7;
      sub_100482CC4();
      v7 = _bridgeAnythingToObjectiveC<A>(_:)();
    }
  }

  else
  {
    v7 = 0;
  }

  [v3 addObserver:v2 selector:"playerItemDidPlayToEndWithNotification:" name:v4 object:v7];

  swift_unknownObjectRelease();
  return result;
}

id sub_100482B14(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = objc_allocWithZone(AVPlayer);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [v7 initWithURL:v9];

  v12 = [objc_allocWithZone(type metadata accessor for PlayerViewController()) initWithNibName:0 bundle:0];
  [v12 setPlayer:v11];

  (*(v3 + 8))(v6, v2);
  *(v12 + OBJC_IVAR____TtC8AppStore20PlayerViewController_autoplay) = 1;

  [v12 setAllowsPictureInPicturePlayback:0];
  [v12 setUpdatesNowPlayingInfoCenter:0];
  [v12 setAllowsVideoFrameAnalysis:0];

  return v12;
}

unint64_t sub_100482CC4()
{
  result = qword_100986EF8;
  if (!qword_100986EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100986EF8);
  }

  return result;
}

uint64_t sub_100482D20@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a13@<D6>, double a14@<D7>, double a15, double a16)
{
  v109 = a5;
  v110 = a4;
  v121 = a3;
  v122 = a2;
  v117 = a13;
  v118 = a14;
  v115 = a1;
  v116 = a6;
  v106 = type metadata accessor for AppPlatform();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Shelf.ContentsMetadata();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ProductMediaMetadata();
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DynamicTypeSize();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ProductReview.ReviewSource();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v97 = &v91 - v23;
  v24 = type metadata accessor for Shelf.ContentType();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PageGrid.Direction();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v114 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v91 - v32;
  v34 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  __chkstk_darwin(v34);
  v108 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v91 - v37;
  sub_100031660(v122, &v91 - v37, &unk_10098FFB0, qword_1007B3890);
  v107 = v34;
  v39 = *(v34 + 48);
  v122 = v38;
  sub_100031660(v121, &v38[v39], &unk_10098FFB0, qword_1007B3890);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  ReadOnlyLens.subscript.getter();

  v121 = v29;
  v40 = *(v29 + 104);
  v41 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v124)
  {
    v41 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v42 = *v41;
  v119 = v33;
  v120 = v28;
  v40(v33, v42, v28);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v43 = v25;
  v44 = (*(v25 + 88))(v27, v24);
  if (v44 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if (v44 == enum case for Shelf.ContentType.productReview(_:))
    {
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      if (*(v123 + 16))
      {
        sub_10002C0AC(v123 + 32, &v124);

        sub_10002849C(&qword_100973D50, &unk_1007B3840);
        type metadata accessor for ProductReview();
        v57 = swift_dynamicCast();
        v53 = v119;
        if (v57)
        {
          v58 = v94;
          ProductReview.source.getter();
          v59 = v95;
          v60 = v96;
          v61 = (*(v95 + 88))(v58, v96);
          if (v61 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
          {
            (*(v59 + 8))(v58, v60);
            v56 = v120;
            v55 = v121;
            (*(v121 + 16))(v114, v53, v120);
            if (qword_10096DB10 != -1)
            {
              swift_once();
            }

            PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
          }

          else
          {
            v56 = v120;
            v55 = v121;
            v85 = v114;
            if (v61 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
            {
              v87 = v91;
              PageEnvironment.dynamicTypeSize.getter();
              (*(v55 + 16))(v85, v53, v56);
              sub_1001E6E40(v87, 0);
              PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();

              (*(v92 + 8))(v87, v93);
              (*(v55 + 8))(v53, v56);
              sub_10002B894(v122, &qword_100974650, &unk_1007B6B70);
              return (*(v59 + 8))(v58, v60);
            }

            (*(v59 + 8))(v58, v60);
            v86 = v91;
            PageEnvironment.dynamicTypeSize.getter();
            (*(v55 + 16))(v85, v53, v56);
            sub_1001E6E40(v86, 1);
            PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();

            (*(v92 + 8))(v86, v93);
          }

          goto LABEL_36;
        }
      }

      else
      {

        v53 = v119;
      }

      v124 = v109;
      v77 = v122;
      v78 = v108;
      sub_100031660(v122, v108, &qword_100974650, &unk_1007B6B70);
      v79 = *(v107 + 48);
      sub_10010E37C();
      PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
      (*(v121 + 8))(v53, v120);
      sub_10002B894(v77, &qword_100974650, &unk_1007B6B70);
      sub_10002B894(v78 + v79, &unk_10098FFB0, qword_1007B3890);
      v80 = v78;
      v81 = &unk_10098FFB0;
      v82 = qword_1007B3890;
      return sub_10002B894(v80, v81, v82);
    }

    if (v44 != enum case for Shelf.ContentType.productBadge(_:))
    {
      v124 = v109;
      v73 = v122;
      v74 = v108;
      sub_100031660(v122, v108, &qword_100974650, &unk_1007B6B70);
      v75 = *(v107 + 48);
      sub_10010E37C();
      PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
      (*(v121 + 8))(v119, v120);
      sub_10002B894(v73, &qword_100974650, &unk_1007B6B70);
      sub_10002B894(v74 + v75, &unk_10098FFB0, qword_1007B3890);
      sub_10002B894(v74, &unk_10098FFB0, qword_1007B3890);
      return (*(v43 + 8))(v27, v24);
    }

    v65 = v97;
    static PageGrid.DirectionalValue<>.zero.getter();
    v66 = v98;
    static PageGrid.DirectionalValue<>.zero.getter();
    v63 = v120;
    v62 = v121;
    v64 = v119;
    (*(v121 + 16))(v114, v119, v120);
    sub_1001ABF90(v65, v66);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v67 = *(v99 + 8);
    v68 = v66;
    v69 = v100;
    v67(v68, v100);
    v67(v65, v69);
LABEL_22:
    (*(v62 + 8))(v64, v63);
LABEL_45:
    v81 = &qword_100974650;
    v82 = &unk_1007B6B70;
    v80 = v122;
    return sub_10002B894(v80, v81, v82);
  }

  swift_getKeyPath();
  v45 = v111;
  ReadOnlyLens.subscript.getter();

  v46 = v112;
  v47 = v113;
  if ((*(v112 + 88))(v45, v113) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v46 + 8))(v45, v47);
    v63 = v120;
    v62 = v121;
    v64 = v119;
    (*(v121 + 16))(v114, v119, v120);
    if (qword_10096ED30 != -1)
    {
      swift_once();
    }

    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    goto LABEL_22;
  }

  (*(v46 + 96))(v45, v47);
  v48 = v103;
  v49 = v101;
  v50 = v102;
  (*(v103 + 32))(v101, v45, v102);
  ProductMediaMetadata.platform.getter();
  v51 = v104;
  MediaPlatform.appPlatform.getter();

  v52 = (*(v105 + 88))(v51, v106);
  v53 = v119;
  v54 = v114;
  if (v52 == enum case for AppPlatform.phone(_:))
  {
    goto LABEL_6;
  }

  if (v52 == enum case for AppPlatform.pad(_:))
  {
    v70 = ProductMediaMetadata.hasPortraitMedia.getter();
    v72 = v120;
    v71 = v121;
    (*(v121 + 16))(v54, v53, v120);
    if (v70)
    {
      if (qword_10096EEF0 == -1)
      {
        goto LABEL_38;
      }
    }

    else if (qword_10096ED30 == -1)
    {
LABEL_38:

      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v48 + 8))(v49, v50);
      (*(v71 + 8))(v53, v72);
      goto LABEL_45;
    }

    swift_once();
    goto LABEL_38;
  }

  if (v52 == enum case for AppPlatform.messages(_:))
  {
LABEL_6:
    if (ProductMediaMetadata.hasPortraitMedia.getter())
    {
      v56 = v120;
      v55 = v121;
      (*(v121 + 16))(v54, v53, v120);
      if (qword_10096CE88 != -1)
      {
        swift_once();
      }

      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v48 + 8))(v49, v50);
LABEL_36:
      (*(v55 + 8))(v53, v56);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v52 == enum case for AppPlatform.watch(_:))
  {
    v84 = v120;
    v83 = v121;
    (*(v121 + 16))(v114, v119, v120);
    if (qword_10096D678 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_48;
  }

  if (v52 == enum case for AppPlatform.tv(_:) || v52 == enum case for AppPlatform.mac(_:) || v52 == enum case for AppPlatform.vision(_:))
  {
LABEL_43:
    v84 = v120;
    v83 = v121;
    (*(v121 + 16))(v54, v53, v120);
    if (qword_10096ED30 == -1)
    {
LABEL_44:

      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v48 + 8))(v49, v50);
      (*(v83 + 8))(v53, v84);
      goto LABEL_45;
    }

LABEL_48:
    swift_once();
    goto LABEL_44;
  }

  v124 = v109;
  v88 = v122;
  v89 = v108;
  sub_100031660(v122, v108, &qword_100974650, &unk_1007B6B70);
  v90 = *(v107 + 48);
  sub_10010E37C();
  PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  (*(v48 + 8))(v49, v50);
  (*(v121 + 8))(v53, v120);
  sub_10002B894(v88, &qword_100974650, &unk_1007B6B70);
  sub_10002B894(v89 + v90, &unk_10098FFB0, qword_1007B3890);
  sub_10002B894(v89, &unk_10098FFB0, qword_1007B3890);
  return (*(v105 + 8))(v104, v106);
}

uint64_t sub_100484328@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v32 = a6;
  v33 = a3;
  v34 = a5;
  v35 = a7;
  v38 = a4;
  v36 = a14;
  v37 = a15;
  v18 = type metadata accessor for Shelf.ContentType();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  __chkstk_darwin(v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v31 - v26;
  sub_100031660(a2, &v31 - v26, &unk_10098FFB0, qword_1007B3890);
  sub_100031660(v33, &v27[*(v22 + 48)], &unk_10098FFB0, qword_1007B3890);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  ReadOnlyLens.subscript.getter();

  v33 = v19;
  if ((*(v19 + 88))(v21, v18) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v39 = v34;
    v40 = v32;
    sub_100031660(v27, v24, &qword_100974650, &unk_1007B6B70);
    v28 = *(v22 + 48);
    sub_100484938();
    PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
    sub_10002B894(v27, &qword_100974650, &unk_1007B6B70);
    sub_10002B894(&v24[v28], &unk_10098FFB0, qword_1007B3890);
    return sub_10002B894(v24, &unk_10098FFB0, qword_1007B3890);
  }

  else
  {
    v39 = v34;
    sub_100031660(v27, v24, &qword_100974650, &unk_1007B6B70);
    v30 = *(v22 + 48);
    sub_10010E37C();
    PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
    sub_10002B894(v27, &qword_100974650, &unk_1007B6B70);
    sub_10002B894(&v24[v30], &unk_10098FFB0, qword_1007B3890);
    sub_10002B894(v24, &unk_10098FFB0, qword_1007B3890);
    return (*(v33 + 8))(v21, v18);
  }
}

uint64_t sub_100484704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_100484938();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1004847E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_100484938();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1004848CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10048498C();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

unint64_t sub_100484938()
{
  result = qword_100986F00;
  if (!qword_100986F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986F00);
  }

  return result;
}

unint64_t sub_10048498C()
{
  result = qword_100986F08;
  if (!qword_100986F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986F08);
  }

  return result;
}

uint64_t sub_1004849E0(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for MetadataRibbonItemViewType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Feature();
  v32[3] = v8;
  v32[4] = sub_10048540C(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v9 = sub_1000056E0(v32);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.search_tags(_:), v8);
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_100007000(v32);
  if (v8)
  {
    a2 = a1;
  }

  if (a2)
  {
    type metadata accessor for MetadataRibbonItem();
    if (Array.isNotEmpty.getter())
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v12 = 0;
        v31 = a2 & 0xC000000000000001;
        v13 = (v5 + 88);
        v29 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v30 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v27 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v28 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v25 = enum case for MetadataRibbonItemViewType.divider(_:);
        v26 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v14 = (v5 + 8);
        v15 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v24 = v10;
        while (v31)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_38;
          }

LABEL_11:
          MetadataRibbonItem.viewContainerType.getter();

          v16 = (*v13)(v7, v4);
          v17 = v16 == v30 || v16 == v29;
          v22 = v17 || v16 == v28 || v16 == v27 || v16 == v26 || v16 == v25 || v16 == v15;
          v5 = v22;
          if (!v22)
          {
            (*v14)(v7, v4);
            ++v12;
            v17 = v10 == i;
            v10 = v24;
            if (!v17)
            {
              continue;
            }
          }

          return v5;
        }

        if (v12 >= *(v10 + 16))
        {
          goto LABEL_39;
        }

        v5 = *(a2 + 8 * v12 + 32);

        v10 = v12 + 1;
        if (!__OFADD__(v12, 1))
        {
          goto LABEL_11;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }
    }
  }

  return 0;
}

uint64_t sub_100484CDC()
{
  result = sub_100484F94();
  if (!result)
  {
    type metadata accessor for AdvertsSearchResult();
    if (swift_dynamicCastClass())
    {
      v1 = type metadata accessor for AdvertsSearchResultContentView();
      v2 = &unk_10096FAE0;
      v3 = type metadata accessor for AdvertsSearchResultContentView;
      v4 = &unk_1007DCB5C;
    }

    else
    {
      type metadata accessor for BundleSearchResult();
      if (swift_dynamicCastClass())
      {
        v1 = type metadata accessor for BundleSearchResultContentView();
        v2 = &unk_10096FAD8;
        v3 = type metadata accessor for BundleSearchResultContentView;
        v4 = &unk_1007C517C;
      }

      else
      {
        type metadata accessor for AppSearchResult();
        if (swift_dynamicCastClass())
        {
          v1 = type metadata accessor for AppSearchResultContentView();
          v2 = &unk_10096FAD0;
          v3 = type metadata accessor for AppSearchResultContentView;
          v4 = &unk_1007C7860;
        }

        else
        {
          type metadata accessor for EditorialSearchResult();
          if (swift_dynamicCastClass())
          {
            v1 = type metadata accessor for EditorialSearchResultContentView();
            v2 = &unk_10096FAC8;
            v3 = type metadata accessor for EditorialSearchResultContentView;
            v4 = &unk_1007D1190;
          }

          else
          {
            type metadata accessor for InAppPurchaseSearchResult();
            if (swift_dynamicCastClass())
            {
              v1 = type metadata accessor for InAppPurchaseSearchResultContentView(0);
              v2 = &unk_10096FAC0;
              v3 = type metadata accessor for InAppPurchaseSearchResultContentView;
              v4 = &unk_1007D74C4;
            }

            else
            {
              type metadata accessor for LockupCollectionSearchResult();
              if (swift_dynamicCastClass())
              {
                v1 = type metadata accessor for LockupCollectionSearchResultContentView();
                v2 = &unk_10096FAB8;
                v3 = type metadata accessor for LockupCollectionSearchResultContentView;
                v4 = &unk_1007BE980;
              }

              else
              {
                type metadata accessor for AppEventSearchResult();
                if (swift_dynamicCastClass())
                {
                  v1 = type metadata accessor for AppEventSearchResultContentView();
                  v2 = &unk_10096FAB0;
                  v3 = type metadata accessor for AppEventSearchResultContentView;
                  v4 = &unk_1007CBD24;
                }

                else
                {
                  type metadata accessor for GuidedSearchResult();
                  result = swift_dynamicCastClass();
                  if (!result)
                  {
                    return result;
                  }

                  v1 = type metadata accessor for GuidedSearchResultContentView();
                  v2 = &unk_10096FAA8;
                  v3 = type metadata accessor for GuidedSearchResultContentView;
                  v4 = &unk_1007CB814;
                }
              }
            }
          }
        }
      }
    }

    sub_10048540C(v2, v3, v4);
    return v1;
  }

  return result;
}

uint64_t sub_100484F94()
{
  v0 = type metadata accessor for SearchResultCondensedBehavior();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v23[-v5];
  __chkstk_darwin(v7);
  v9 = &v23[-v8];
  __chkstk_darwin(v10);
  v12 = &v23[-v11];
  type metadata accessor for EditorialSearchResult();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  v25 = v3;
  SearchResult.condensedBehavior.getter();
  (*(v1 + 104))(v9, enum case for SearchResultCondensedBehavior.always(_:), v0);
  sub_10048540C(&qword_10096FAE8, &type metadata accessor for SearchResultCondensedBehavior, &protocol conformance descriptor for SearchResultCondensedBehavior);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v28 != v26 || v29 != v27)
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = *(v1 + 8);
    v14(v9, v0);
    v14(v12, v0);

    v3 = v25;
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_7:
    type metadata accessor for InAppPurchaseSearchResult();
    if (swift_dynamicCastClass())
    {
      SearchResult.condensedBehavior.getter();
      (*(v1 + 104))(v3, enum case for SearchResultCondensedBehavior.always(_:), v0);
      sub_10048540C(&qword_10096FAE8, &type metadata accessor for SearchResultCondensedBehavior, &protocol conformance descriptor for SearchResultCondensedBehavior);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v28 == v26 && v29 == v27)
      {
        v19 = *(v1 + 8);
        v19(v3, v0);
        v19(v6, v0);

LABEL_12:
        v15 = type metadata accessor for CondensedInAppPurchaseContentView(0);
        v16 = &unk_10096FAF0;
        v17 = type metadata accessor for CondensedInAppPurchaseContentView;
        v18 = &unk_1007DA6B8;
        goto LABEL_13;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v21 = *(v1 + 8);
      v21(v3, v0);
      v21(v6, v0);

      if (v20)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  v13 = *(v1 + 8);
  v13(v9, v0);
  v13(v12, v0);

LABEL_6:
  v15 = type metadata accessor for CondensedEditorialSearchResultContentView(0);
  v16 = &unk_10096FAF8;
  v17 = type metadata accessor for CondensedEditorialSearchResultContentView;
  v18 = &unk_1007BB2E4;
LABEL_13:
  sub_10048540C(v16, v17, v18);
  return v15;
}

uint64_t sub_10048540C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100485454@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v6 = v11[1];
  v7 = UITraitCollection.isSizeClassCompact.getter();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for ComponentSeparator();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

char *sub_1004855DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for DirectionalTextAlignment();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v10 - 8);
  v59 = &v53 - v11;
  v57 = type metadata accessor for WordmarkView.Alignment();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FontSource();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for StaticDimension();
  v17 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&qword_100975F00, &qword_1007BAA50);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - v21;
  v54 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_wordmarkView;
  v23 = enum case for Wordmark.arcade(_:);
  v24 = type metadata accessor for Wordmark();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  if (qword_10096E340 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for FontUseCase();
  v53 = sub_1000056A8(v26, qword_1009D1940);
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v16, v53, v26);
  (*(v14 + 104))(v16, enum case for FontSource.useCase(_:), v13);
  v67 = v13;
  v68 = &protocol witness table for FontSource;
  v29 = sub_1000056E0(v66);
  (*(v14 + 16))(v29, v16, v13);
  StaticDimension.init(_:scaledLike:)();
  (*(v14 + 8))(v16, v13);
  (*(v55 + 104))(v58, enum case for WordmarkView.Alignment.leading(_:), v57);
  v30 = v56;
  v67 = v56;
  v68 = &protocol witness table for StaticDimension;
  v31 = sub_1000056E0(v66);
  (*(v17 + 16))(v31, v19, v30);
  v32 = objc_allocWithZone(type metadata accessor for WordmarkView());
  v33 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  (*(v17 + 8))(v19, v30);
  v34 = v63;
  *(v63 + v54) = v33;
  v35 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel;
  v36 = v59;
  v28(v59, v53, v26);
  (*(v27 + 56))(v36, 0, 1, v26);
  (*(v60 + 104))(v62, enum case for DirectionalTextAlignment.none(_:), v61);
  v37 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v34[v35] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v38 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_categoriesView;
  type metadata accessor for ArcadeDownloadPackCategoryListView();
  *&v34[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v65.receiver = v34;
  v39 = ObjectType;
  v65.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 systemBackgroundColor];
  [v42 setBackgroundColor:v43];

  [v42 addSubview:*&v42[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_wordmarkView]];
  v44 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel;
  [v42 addSubview:*&v42[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel]];
  [v42 addSubview:*&v42[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_categoriesView]];
  [*&v42[v44] setNumberOfLines:0];
  v45 = *&v42[v44];
  v46 = [v42 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = 1;
  }

  [v45 setTextAlignment:{v48, v53}];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v49 = swift_allocObject();
  v63 = xmmword_1007B10D0;
  *(v49 + 16) = xmmword_1007B10D0;
  *(v49 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v49 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v67 = v39;
  v66[0] = v42;
  v50 = v42;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v66);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v51 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v67 = v39;
  v66[0] = v50;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v66);
  return v50;
}

uint64_t sub_100485E98@<X0>(uint64_t *a1@<X8>)
{
  v40 = a1;
  v36 = type metadata accessor for Resize.Rule();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = (v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v38 = (v34 - v5);
  __chkstk_darwin(v6);
  v37 = (v34 - v7);
  __chkstk_darwin(v8);
  v10 = (v34 - v9);
  v11 = type metadata accessor for VerticalStack();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  __chkstk_darwin(v18);
  v35 = v34 - v19;
  *(swift_allocObject() + 16) = v1;
  v20 = v1;
  VerticalStack.init(with:)();
  v41 = *&v20[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_wordmarkView];
  type metadata accessor for WordmarkView();
  Measurable.placeable.getter();
  VerticalStack.adding(_:with:)();
  sub_100007000(v44);
  v21 = *(v12 + 8);
  v34[0] = v11;
  v21(v14, v11);
  v34[1] = v12 + 8;
  v22 = *&v20[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v45 = type metadata accessor for DynamicTypeLabel();
  v46 = &protocol witness table for UILabel;
  v44[0] = v22;
  *(swift_allocObject() + 16) = v20;
  v23 = v20;
  v24 = v22;
  VerticalStack.adding(_:with:)();

  v21(v17, v11);
  sub_100007000(v44);
  v25 = *&v23[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_categoriesView];
  v42 = type metadata accessor for ArcadeDownloadPackCategoryListView();
  v43 = sub_100486C3C();
  v41 = v25;
  *v10 = sub_1002F1298;
  v10[1] = 0;
  v26 = *(v2 + 104);
  v27 = v36;
  v26(v10, enum case for Resize.Rule.recalculated(_:), v36);
  v28 = enum case for Resize.Rule.unchanged(_:);
  v26(v37, enum case for Resize.Rule.unchanged(_:), v27);
  v26(v38, v28, v27);
  v26(v39, v28, v27);
  v45 = type metadata accessor for Resize();
  v46 = &protocol witness table for Resize;
  sub_1000056E0(v44);
  v29 = v25;
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v30 = v40;
  v31 = v34[0];
  v40[3] = v34[0];
  v30[4] = &protocol witness table for VerticalStack;
  sub_1000056E0(v30);
  v32 = v35;
  VerticalStack.adding(_:with:)();
  v21(v32, v31);
  return sub_100007000(v44);
}

uint64_t sub_100486338(int a1, id a2)
{
  v2 = [a2 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  UIContentSizeCategory.isAccessibilityCategory.getter();
  return VerticalStack.Properties.alignment.setter();
}

uint64_t sub_1004863B8(int a1, id a2)
{
  v2 = [a2 traitCollection];
  UITraitCollection.isRegularPad.getter();

  return VerticalStack.Properties.bottomSpacing.setter();
}

id sub_100486524(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *&v4[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel];
  ArcadeDownloadPackCategoriesPage.title.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setText:v9];

  v10 = ArcadeDownloadPackCategoriesPage.categories.getter();
  sub_10049A134(v10, a2, a3, a4);

  [v4 setNeedsLayout];
  [v4 invalidateIntrinsicContentSize];
  v11 = [v4 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  LOBYTE(v11) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v11)
  {
    v13 = 4;
  }

  else
  {
    v13 = 1;
  }

  return [v8 setTextAlignment:v13];
}

id sub_100486668()
{
  [v0 setNeedsLayout];
  [v0 invalidateIntrinsicContentSize];
  v1 = *&v0[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return [v1 setTextAlignment:v4];
}

id sub_100486920()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v1 setTextAlignment:v4];
  [v0 setNeedsLayout];
  [v0 invalidateIntrinsicContentSize];
  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  return [v1 setTextAlignment:v7];
}

double sub_100486B0C(uint64_t a1, double a2, double a3)
{
  sub_100485E98(v6);
  sub_10002A400(v6, v6[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v4 = v3;
  sub_100007000(v6);
  return v4;
}

unint64_t sub_100486C3C()
{
  result = qword_100986F50;
  if (!qword_100986F50)
  {
    type metadata accessor for ArcadeDownloadPackCategoryListView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986F50);
  }

  return result;
}

void sub_100486C94()
{
  v0 = type metadata accessor for DirectionalTextAlignment();
  v39 = *(v0 - 8);
  v40 = v0;
  __chkstk_darwin(v0);
  v41 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v38 = &v32 - v3;
  v36 = type metadata accessor for WordmarkView.Alignment();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FontSource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for StaticDimension();
  v9 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100975F00, &qword_1007BAA50);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v33 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_wordmarkView;
  v15 = enum case for Wordmark.arcade(_:);
  v16 = type metadata accessor for Wordmark();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  if (qword_10096E340 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v32 = sub_1000056A8(v18, qword_1009D1940);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v8, v32, v18);
  (*(v6 + 104))(v8, enum case for FontSource.useCase(_:), v5);
  v44 = v5;
  v45 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v43);
  (*(v6 + 16))(v21, v8, v5);
  StaticDimension.init(_:scaledLike:)();
  (*(v6 + 8))(v8, v5);
  (*(v34 + 104))(v37, enum case for WordmarkView.Alignment.leading(_:), v36);
  v22 = v35;
  v44 = v35;
  v45 = &protocol witness table for StaticDimension;
  v23 = sub_1000056E0(v43);
  (*(v9 + 16))(v23, v11, v22);
  v24 = objc_allocWithZone(type metadata accessor for WordmarkView());
  v25 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  (*(v9 + 8))(v11, v22);
  v26 = v42;
  v27 = v32;
  *(v42 + v33) = v25;
  v28 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_titleLabel;
  v29 = v38;
  v20(v38, v27, v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  (*(v39 + 104))(v41, enum case for DirectionalTextAlignment.none(_:), v40);
  v30 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v26 + v28) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v31 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCategoriesPageView_categoriesView;
  type metadata accessor for ArcadeDownloadPackCategoryListView();
  *(v26 + v31) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1004872AC@<X0>(char a1@<W0>, char a2@<W2>, double *a3@<X8>)
{
  v6 = type metadata accessor for OfferButtonMetrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v12 = type metadata accessor for FontSource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 == 1)
    {
      *(a3 + 3) = &type metadata for Double;
      *(a3 + 4) = &protocol witness table for Double;
      *a3 = 166.0;
      *(a3 + 8) = &type metadata for Double;
      *(a3 + 9) = &protocol witness table for Double;
      a3[5] = 238.0;
      *(a3 + 13) = &type metadata for Double;
      *(a3 + 14) = &protocol witness table for Double;
      a3[10] = 24.0;
      *(a3 + 18) = &type metadata for Double;
      *(a3 + 19) = &protocol witness table for Double;
      a3[15] = 11.0;
      *(a3 + 23) = &type metadata for Double;
      *(a3 + 24) = &protocol witness table for Double;
      a3[20] = 24.0;
      *(a3 + 28) = &type metadata for Double;
      *(a3 + 29) = &protocol witness table for Double;
      a3[25] = 15.0;
      if (qword_10096ECD8 != -1)
      {
        swift_once();
      }

      v16 = sub_1000056A8(v6, qword_1009D32C8);
      v17 = v82;
      (*(v7 + 16))(v82, v16, v6);
      OfferButtonMetrics.estimatedHeight.getter();
      v19 = v18;
      result = (*(v7 + 8))(v17, v6);
      *(a3 + 33) = &type metadata for CGFloat;
      *(a3 + 34) = &protocol witness table for CGFloat;
      *(a3 + 30) = v19;
      *(a3 + 43) = &type metadata for CGFloat;
      *(a3 + 44) = &protocol witness table for CGFloat;
      a3[40] = 5.0;
      *(a3 + 48) = &type metadata for Double;
      *(a3 + 49) = &protocol witness table for Double;
      a3[45] = 12.0;
      a3[35] = 0.0;
      *(a3 + 18) = xmmword_1007CF7D0;
      a3[38] = 24.0;
      *(a3 + 312) = 1;
    }

    else
    {
      v72 = v11;
      v78 = v7;
      v79 = v6;
      *(a3 + 3) = &type metadata for Double;
      *(a3 + 4) = &protocol witness table for Double;
      *a3 = 200.0;
      *(a3 + 8) = &type metadata for Double;
      *(a3 + 9) = &protocol witness table for Double;
      a3[5] = 330.0;
      *(a3 + 13) = &type metadata for Double;
      *(a3 + 14) = &protocol witness table for Double;
      a3[10] = 21.0;
      if (qword_10096E360 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for FontUseCase();
      v77 = sub_1000056A8(v37, qword_1009D19A0);
      v38 = *(v37 - 8);
      v75 = *(v38 + 16);
      v76 = v38 + 16;
      v75(v15, v77, v37);
      LODWORD(v74) = enum case for FontSource.useCase(_:);
      v39 = v13;
      v73 = v13[13];
      v73(v15);
      v70 = type metadata accessor for StaticDimension();
      *(a3 + 18) = v70;
      *(a3 + 19) = &protocol witness table for StaticDimension;
      sub_1000056E0(a3 + 15);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v40 = sub_1000056E0(v87);
      v69 = v13[2];
      v69(v40, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      v41 = v13[1];
      v41(v15, v12);
      v87[0] = 0x4056800000000000;
      v84[0] = 0x4038000000000000;
      sub_10002849C(&qword_100973F50, &qword_1007B4260);
      v42 = v72;
      Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
      Conditional<>.anyDimension.getter();
      (*(v80 + 1))(v42, v81);
      v81 = v37;
      v75(v15, v77, v37);
      v80 = (v13 + 13);
      (v73)(v15, v74, v12);
      v43 = v70;
      *(a3 + 28) = v70;
      *(a3 + 29) = &protocol witness table for StaticDimension;
      sub_1000056E0(a3 + 25);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v44 = sub_1000056E0(v87);
      v72 = (v39 + 2);
      v45 = v69;
      v69(v44, v15, v12);
      v46 = v45;
      StaticDimension.init(_:scaledLike:)();
      v71 = v41;
      v41(v15, v12);
      if (qword_10096ECD8 != -1)
      {
        swift_once();
      }

      v47 = v79;
      v48 = sub_1000056A8(v79, qword_1009D32C8);
      v49 = v78;
      v50 = v82;
      (*(v78 + 16))(v82, v48, v47);
      OfferButtonMetrics.estimatedHeight.getter();
      v52 = v51;
      (*(v49 + 8))(v50, v47);
      *(a3 + 33) = &type metadata for CGFloat;
      *(a3 + 34) = &protocol witness table for CGFloat;
      *(a3 + 30) = v52;
      *(a3 + 43) = &type metadata for CGFloat;
      *(a3 + 44) = &protocol witness table for CGFloat;
      a3[40] = 5.0;
      v75(v15, v77, v81);
      (v73)(v15, v74, v12);
      *(a3 + 48) = v43;
      *(a3 + 49) = &protocol witness table for StaticDimension;
      sub_1000056E0(a3 + 45);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v53 = sub_1000056E0(v87);
      v46(v53, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      result = v71(v15, v12);
      a3[35] = 0.0;
      *(a3 + 18) = xmmword_1007CF7D0;
      a3[38] = 24.0;
      *(a3 + 312) = 0;
    }
  }

  else
  {
    v79 = v6;
    v87[3] = &type metadata for Double;
    v87[4] = &protocol witness table for Double;
    v87[0] = 0x4069000000000000;
    v87[8] = &type metadata for Double;
    v87[9] = &protocol witness table for Double;
    v78 = v7;
    if (a1)
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4074A00000000000;
      v87[10] = 0;
      if (qword_10096E360 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for FontUseCase();
      v77 = sub_1000056A8(v21, qword_1009D19A0);
      v22 = *(v21 - 8);
      v69 = *(v22 + 16);
      v75 = (v22 + 16);
      v69(v15, v77, v21);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v23 = v13[13];
      v71 = (v13 + 13);
      v73 = v23;
      v23(v15);
      v74 = type metadata accessor for StaticDimension();
      v87[18] = v74;
      v87[19] = &protocol witness table for StaticDimension;
      sub_1000056E0(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v24 = sub_1000056E0(v84);
      v72 = v13[2];
      (v72)(v24, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      v25 = v13[1];
      v25(v15, v12);
      v84[0] = 0x4056800000000000;
      v83 = 0x4038000000000000;
      sub_10002849C(&qword_100973F50, &qword_1007B4260);
      Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
      Conditional<>.anyDimension.getter();
      (*(v80 + 1))(v11, v81);
      v81 = v21;
      v26 = v21;
      v27 = v69;
      v69(v15, v77, v26);
      (v73)(v15, v76, v12);
      v87[28] = v74;
      v87[29] = &protocol witness table for StaticDimension;
      sub_1000056E0(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v28 = sub_1000056E0(v84);
      v80 = (v13 + 2);
      (v72)(v28, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      v70 = v25;
      v25(v15, v12);
      if (qword_10096ECD8 != -1)
      {
        swift_once();
      }

      v29 = v79;
      v30 = sub_1000056A8(v79, qword_1009D32C8);
      v31 = v78;
      v32 = v82;
      (*(v78 + 16))(v82, v30, v29);
      OfferButtonMetrics.estimatedHeight.getter();
      v34 = v33;
      (*(v31 + 8))(v32, v29);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v34;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v27(v15, v77, v81);
      (v73)(v15, v76, v12);
      v87[48] = v74;
      v87[49] = &protocol witness table for StaticDimension;
      sub_1000056E0(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v35 = sub_1000056E0(v84);
      (v72)(v35, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      v70(v15, v12);
      v36 = 0;
    }

    else
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4071800000000000;
      v87[10] = 0x4035000000000000;
      if (qword_10096E360 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for FontUseCase();
      v81 = sub_1000056A8(v54, qword_1009D19A0);
      v55 = *(v54 - 8);
      v80 = *(v55 + 16);
      v74 = v55 + 16;
      v80(v15, v81, v54);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v77 = v13[13];
      v77(v15);
      v75 = type metadata accessor for StaticDimension();
      v87[18] = v75;
      v87[19] = &protocol witness table for StaticDimension;
      sub_1000056E0(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v56 = sub_1000056E0(v84);
      v57 = v13[2];
      v57(v56, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      v70 = v13[1];
      v70(v15, v12);
      v87[24] = &protocol witness table for Double;
      v87[23] = &type metadata for Double;
      v87[20] = 0x4038000000000000;
      v73 = v54;
      v80(v15, v81, v54);
      v72 = (v13 + 13);
      (v77)(v15, v76, v12);
      v87[28] = v75;
      v87[29] = &protocol witness table for StaticDimension;
      sub_1000056E0(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v58 = sub_1000056E0(v84);
      v71 = (v13 + 2);
      v57(v58, v15, v12);
      v59 = v57;
      v60 = v70;
      StaticDimension.init(_:scaledLike:)();
      v60(v15, v12);
      if (qword_10096ECD8 != -1)
      {
        swift_once();
      }

      v61 = v79;
      v62 = sub_1000056A8(v79, qword_1009D32C8);
      v63 = v78;
      v64 = v82;
      (*(v78 + 16))(v82, v62, v61);
      OfferButtonMetrics.estimatedHeight.getter();
      v66 = v65;
      (*(v63 + 8))(v64, v61);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v66;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v80(v15, v81, v73);
      (v77)(v15, v76, v12);
      v87[48] = v75;
      v87[49] = &protocol witness table for StaticDimension;
      sub_1000056E0(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v67 = sub_1000056E0(v84);
      v59(v67, v15, v12);
      StaticDimension.init(_:scaledLike:)();
      v60(v15, v12);
      v36 = 1;
    }

    *&v87[35] = xmmword_1007CF7E0;
    *&v87[37] = xmmword_1007CF7E0;
    LOBYTE(v87[39]) = v36;
    return memcpy(a3, v87, 0x190uLL);
  }

  return result;
}

uint64_t sub_1004881C4@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = type metadata accessor for OfferButtonMetrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if ((a1 & 1) == 0)
    {
      JUScreenClassGetPortraitWidth();
      _NF = v30 < a4;
      v31 = 0.0;
      if (_NF)
      {
        v31 = 21.0;
      }

      v37 = &type metadata for Double;
      v38 = &protocol witness table for Double;
      *&v36 = v31;
      *(a3 + 64) = &type metadata for Double;
      *(a3 + 72) = &protocol witness table for Double;
      *(a3 + 40) = 0x4069000000000000;
      if (qword_10096ECD8 != -1)
      {
        swift_once();
      }

      v32 = sub_1000056A8(v8, qword_1009D32C8);
      (*(v9 + 16))(v11, v32, v8);
      OfferButtonMetrics.estimatedHeight.getter();
      v34 = v33;
      (*(v9 + 8))(v11, v8);
      *(a3 + 136) = &type metadata for CGFloat;
      *(a3 + 144) = &protocol witness table for CGFloat;
      *(a3 + 112) = v34;
      *(a3 + 208) = &type metadata for Double;
      *(a3 + 216) = &protocol witness table for Double;
      *(a3 + 184) = 0x4028000000000000;
      *(a3 + 248) = &type metadata for Double;
      *(a3 + 256) = &protocol witness table for Double;
      *(a3 + 224) = 0x402C000000000000;
      result = sub_100005A38(&v36, a3);
      *(a3 + 80) = xmmword_1007CF830;
      *(a3 + 96) = xmmword_1007CF840;
      v21 = xmmword_1007CF7E0;
      goto LABEL_19;
    }

    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4069000000000000;
    if (qword_10096ECD8 != -1)
    {
      swift_once();
    }

    v23 = sub_1000056A8(v8, qword_1009D32C8);
    (*(v9 + 16))(v11, v23, v8);
    OfferButtonMetrics.estimatedHeight.getter();
    v25 = v24;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v25;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_1007CF850;
LABEL_13:
    *(a3 + 80) = v26;
    *(a3 + 96) = xmmword_1007CF820;
    *(a3 + 152) = 0;
    *(a3 + 160) = v22;
    *(a3 + 168) = 0;
    *(a3 + 176) = v22;
    return result;
  }

  if (a2 != 1)
  {
    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0x4046000000000000;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4064000000000000;
    if (qword_10096ECD8 != -1)
    {
      swift_once();
    }

    v27 = sub_1000056A8(v8, qword_1009D32C8);
    (*(v9 + 16))(v11, v27, v8);
    OfferButtonMetrics.estimatedHeight.getter();
    v29 = v28;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v29;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_1007CF810;
    goto LABEL_13;
  }

  *(a3 + 24) = &type metadata for Double;
  *(a3 + 32) = &protocol witness table for Double;
  *a3 = 0x4038000000000000;
  *(a3 + 64) = &type metadata for Double;
  *(a3 + 72) = &protocol witness table for Double;
  *(a3 + 40) = 0x4054000000000000;
  if (qword_10096ECD8 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v8, qword_1009D32C8);
  (*(v9 + 16))(v11, v12, v8);
  OfferButtonMetrics.estimatedHeight.getter();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  *(a3 + 136) = &type metadata for CGFloat;
  *(a3 + 144) = &protocol witness table for CGFloat;
  *(a3 + 112) = v14;
  *(a3 + 208) = &type metadata for Double;
  *(a3 + 216) = &protocol witness table for Double;
  *(a3 + 184) = 0x4014000000000000;
  *(a3 + 248) = &type metadata for Double;
  *(a3 + 256) = &protocol witness table for Double;
  *(a3 + 224) = 0x4020000000000000;
  __asm { FMOV            V0.2D, #24.0 }

  *(a3 + 80) = _Q0;
  *(a3 + 96) = xmmword_1007CF7F0;
  v21 = xmmword_1007CF800;
LABEL_19:
  *(a3 + 152) = v21;
  *(a3 + 168) = v21;
  return result;
}

char *sub_1004886BC(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v17 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  __chkstk_darwin(v17 - 8);
  v19 = &v40 - v18;
  v20 = &v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissActionBlock];
  *v20 = 0;
  v20[1] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView] = 0;
  v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style] = a1;
  v21 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView] = v21;
  if (v4 == 1)
  {
    if (qword_10096D018 != -1)
    {
      swift_once();
    }

    v22 = qword_1009CDED0;
  }

  else
  {
    if (qword_10096D010 != -1)
    {
      swift_once();
    }

    v22 = qword_1009CDEB8;
  }

  v23 = a1;
  v24 = sub_1000056A8(v11, v22);
  sub_1000C2608(v24, v13);
  sub_10048AB14(v13, v16);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional<>.init(value:)();
  v25 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_detailsView] = sub_100147904(v19, v26);
  v27 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton] = sub_1000F5284(0, v28);
  type metadata accessor for DynamicTypeButton();
  v29 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  if (v23 == 1)
  {
    if (qword_10096E128 != -1)
    {
      swift_once();
    }

    v30 = qword_1009D12F8;
  }

  else
  {
    if (qword_10096E118 != -1)
    {
      swift_once();
    }

    v30 = qword_1009D12C8;
  }

  v31 = sub_1000056A8(v5, v30);
  v32 = v40;
  (*(v6 + 16))(v40, v31, v5);
  (*(v6 + 32))(v10, v32, v5);
  (*(v6 + 56))(v10, 0, 1, v5);
  dispatch thunk of DynamicTypeButton.fontUseCase.setter();
  *&v2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton] = v29;
  v42.receiver = v2;
  v42.super_class = ObjectType;
  v33 = v29;
  v34 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 clearColor];
  [v36 setBackgroundColor:v37];

  v38 = OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView;
  [*&v36[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView] setContentInsetAdjustmentBehavior:2];
  [v36 addSubview:*&v36[v38]];
  [*&v36[v38] addSubview:*&v36[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_detailsView]];
  [*&v36[v38] addSubview:*&v36[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton]];
  [*&v36[v38] addSubview:v33];

  return v36;
}

uint64_t sub_100488CB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v5);
  [v1 bounds];
  x = v87.origin.x;
  y = v87.origin.y;
  width = v87.size.width;
  height = v87.size.height;
  result = CGRectIsEmpty(v87);
  if ((result & 1) == 0)
  {
    v65 = v3;
    v62 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView];
    [v62 setFrame:{x, y, width, height}];
    v13 = [v1 traitCollection];
    v14 = UITraitCollection.prefersAccessibilityLayouts.getter();

    v63 = v7;
    v64 = v4;
    if (v14)
    {
      v15 = v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style];
      v16 = [v1 traitCollection];
      v17 = UITraitCollection.isSizeClassCompact.getter();

      if (v17)
      {
        v18 = [v1 window];
        if (v18)
        {
          v19 = v18;
          [v18 frame];
          v20 = CGRectGetWidth(v88);
          [v1 bounds];
          v21 = CGRectGetWidth(v89);

          LOBYTE(v18) = v21 < v20;
        }
      }

      else
      {
        LOBYTE(v18) = 1;
      }

      sub_1004872AC(v18, v15, v66);
      v30 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView];
      if (v30)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v31 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView];
      if (v31)
      {
        v32 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v33 = &protocol witness table for UIView;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      v34 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_detailsView];
      v35 = type metadata accessor for BreakoutDetailsView(0);
      v79 = &protocol witness table for UIView;
      v78 = v35;
      v77 = v34;
      v36 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton];
      v81 = type metadata accessor for OfferButton();
      v82 = &protocol witness table for UIView;
      v80 = v36;
      v37 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton];
      v84 = type metadata accessor for DynamicTypeButton();
      v85 = &protocol witness table for UIView;
      v83 = v37;
      memcpy(v67, v66, 0x190uLL);
      v67[50] = v30;
      v68 = 0;
      v69 = 0;
      v70 = v61;
      v71 = v60;
      v72 = v31;
      v74 = 0;
      v73 = 0;
      v75 = v32;
      v76 = v33;
      v38 = v31;
      v39 = v34;
      v40 = v36;
      v41 = v37;
      v42 = v30;
      v43 = v63;
      AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_10048ABCC(v67);
    }

    else
    {
      v22 = v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style];
      v23 = [v1 traitCollection];
      v24 = UITraitCollection.isSizeClassCompact.getter();

      if (v24)
      {
        v25 = [v1 window];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          v27 = CGRectGetWidth(v90);
          [v1 bounds];
          v28 = CGRectGetWidth(v91);

          v29 = v28 < v27;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 1;
      }

      [v1 bounds];
      sub_1004881C4(v29, v22, v66, v44);
      v45 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView];
      if (v45)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v46 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView];
      if (v46)
      {
        v47 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v48 = &protocol witness table for UIView;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      v49 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_detailsView];
      v50 = type metadata accessor for BreakoutDetailsView(0);
      v67[47] = &protocol witness table for UIView;
      v67[46] = v50;
      v67[43] = v49;
      v51 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton];
      v52 = type metadata accessor for OfferButton();
      v69 = &protocol witness table for UIView;
      v68 = v52;
      v67[48] = v51;
      v53 = *&v1[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton];
      v54 = type metadata accessor for DynamicTypeButton();
      v74 = &protocol witness table for UIView;
      v73 = v54;
      v70 = v53;
      memcpy(v67, v66, 0x108uLL);
      v67[33] = v45;
      v67[34] = 0;
      v67[35] = 0;
      v67[36] = v61;
      v67[37] = v60;
      v67[38] = v46;
      v67[40] = 0;
      v67[39] = 0;
      v67[41] = v47;
      v67[42] = v48;
      v55 = v46;
      v56 = v49;
      v57 = v51;
      v58 = v53;
      v59 = v45;
      v43 = v63;
      ArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_10048AB78(v67);
    }

    LayoutRect.size.getter();
    [v62 setContentSize:?];
    return (*(v64 + 8))(v43, v65);
  }

  return result;
}

void sub_1004892AC(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton);

    [v5 setAlpha:a2];
  }
}

id sub_100489334(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v151 = a8;
  v135 = a7;
  v150 = a6;
  v137 = a5;
  v136 = a4;
  v12 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v12 - 8);
  v130 = &v119 - v13;
  v131 = type metadata accessor for ImpressionMetrics();
  v132 = *(v131 - 8);
  __chkstk_darwin(v131);
  v122 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for Artwork.Crop();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for AspectRatio();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v17 - 8);
  v149 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArcadeSubscribePage.PageType();
  v153 = *(v19 - 8);
  v154 = v19;
  __chkstk_darwin(v19);
  v152 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for FontUseCase();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v134 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v22 - 8);
  v147 = &v119 - v23;
  v144 = type metadata accessor for OfferButtonSubtitlePosition();
  v140 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v145 = *(v25 - 8);
  v146 = v25;
  __chkstk_darwin(v25);
  v143 = &v119 - v26;
  v27 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v27 - 8);
  v141 = &v119 - v28;
  v29 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v29 - 8);
  v133 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v123 = &v119 - v32;
  v33 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v33 - 8);
  v35 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v119 - v37;
  v39 = type metadata accessor for StyledText.MediaType();
  v148 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10002849C(&unk_100975ED0, qword_1007B46C0);
  __chkstk_darwin(v42 - 8);
  v44 = &v119 - v43;
  v45 = ArcadeSubscribePage.details.getter();
  if (v45)
  {
    v46 = v45;
    v47 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
    (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
    sub_1003A9938(v46, v44, v151);

    sub_10002B894(v44, &unk_100975ED0, qword_1007B46C0);
  }

  ArcadeSubscribePage.askToBuyMessage.getter();
  if (!v48)
  {
    v148 = ArcadeSubscribePage.offerButtonAction.getter();
    v121 = ArcadeSubscribePage.subscribedOfferButtonAction.getter();
    ArcadeSubscribePage.dismissButtonTitle.getter();
    v53 = ArcadeSubscribePage.offerDisplayProperties.getter();
    v54 = &v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissActionBlock];
    v55 = *&v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissActionBlock];
    v56 = *&v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissActionBlock + 8];
    v57 = v137;
    *v54 = v136;
    v54[1] = v57;
    sub_10001F63C(v55, v56);
    v58 = *&v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton];

    v59 = String._bridgeToObjectiveC()();

    [v58 setTitle:v59 forState:0];

    [v58 addTarget:v8 action:"didTapDismiss:" forControlEvents:64];
    v120 = v53;
    if (v53)
    {
      OfferDisplayProperties.environment.getter();
      v60 = type metadata accessor for OfferEnvironment();
      v61 = *(v60 - 8);
      (*(v61 + 56))(v38, 0, 1, v60);
      sub_10048B1B0(v38, v35);
      if ((*(v61 + 88))(v35, v60) == enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:))
      {
        if (qword_10096E128 != -1)
        {
          swift_once();
        }

        v62 = v139;
        v63 = sub_1000056A8(v139, qword_1009D12F8);
        v64 = v138;
        v65 = v123;
        (*(v138 + 16))(v123, v63, v62);
        (*(v64 + 56))(v65, 0, 1, v62);
        dispatch thunk of DynamicTypeButton.fontUseCase.setter();
        v67 = v151;
        v66 = v152;
LABEL_28:
        v82 = sub_10002849C(&unk_100973240, qword_1007B2220);
        v83 = v141;
        (*(*(v82 - 8) + 56))(v141, 1, 1, v82);
        v84 = v140;
        v85 = v144;
        (*(v140 + 104))(v142, enum case for OfferButtonSubtitlePosition.below(_:), v144);
        (*(v84 + 56))(v147, 1, 1, v85);
        sub_1003A1084(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
        v86 = v143;
        AccessibilityConditional.init(value:axValue:)();
        sub_10064AFA4(v120, v148, v121, v83, v86, v67, 0, 0);

        (*(v145 + 8))(v86, v146);
        sub_10002B894(v83, &unk_100973230, &unk_1007B17E0);
        v74 = v153;
        goto LABEL_29;
      }

      (*(v61 + 8))(v35, v60);
    }

    else
    {
      v75 = type metadata accessor for OfferEnvironment();
      (*(*(v75 - 8) + 56))(v38, 1, 1, v75);
      sub_10002B894(v38, &unk_100970160, &unk_1007BDDE0);
    }

    v66 = v152;
    if (v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style] == 1)
    {
      v67 = v151;
      if (qword_10096E128 != -1)
      {
        swift_once();
      }

      v76 = qword_1009D12F8;
    }

    else
    {
      v67 = v151;
      if (qword_10096E118 != -1)
      {
        swift_once();
      }

      v76 = qword_1009D12C8;
    }

    v77 = v139;
    v78 = sub_1000056A8(v139, v76);
    v79 = v138;
    v80 = v134;
    (*(v138 + 16))(v134, v78, v77);
    v81 = v133;
    (*(v79 + 32))(v133, v80, v77);
    (*(v79 + 56))(v81, 0, 1, v77);
    dispatch thunk of DynamicTypeButton.fontUseCase.setter();
    goto LABEL_28;
  }

  v49 = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v50 = OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView;
  v51 = *&v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView];
  if (v51)
  {
    [v51 removeFromSuperview];
    v52 = *&v8[v50];
  }

  else
  {
    v52 = 0;
  }

  *&v8[v50] = v49;
  v68 = v49;

  if (v68)
  {
    [*&v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView] addSubview:v68];
  }

  v69 = *&v8[v50] != 0;
  [*&v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton] setHidden:v69];
  [*&v8[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton] setHidden:v69];
  [v8 setNeedsLayout];

  v70 = *&v8[v50];
  if (v70)
  {
    v71 = *(v70 + OBJC_IVAR____TtC8AppStore18LinkableHeaderView_label);
    (*(v148 + 104))(v41, enum case for StyledText.MediaType.plainText(_:), v39);
    type metadata accessor for StyledText();
    swift_allocObject();
    v72 = v71;
    v73 = StyledText.init(rawText:rawTextType:)();
    sub_1002F6004(v73, 0, _swiftEmptyArrayStorage);
  }

  else
  {
  }

  v66 = v152;
  v74 = v153;
LABEL_29:
  v87 = sub_10048AC20(v9, v9, a1, a2);
  v89 = v88;
  ArcadeSubscribePage.pageType.getter();
  v90 = v154;
  v91 = (*(v74 + 88))(v66, v154);
  if (v91 == enum case for ArcadeSubscribePage.PageType.generic(_:))
  {
    (*(v74 + 96))(v66, v90);
    v92 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v92 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    sub_1003A1084(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v93 = OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView;
    v94 = *&v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView];
    v95 = v92;
    if (v94)
    {
      [v94 removeFromSuperview];
      v96 = *&v9[v93];
    }

    else
    {
      v96 = 0;
    }

    *&v9[v93] = v92;
    v111 = v92;

    [*&v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView] addSubview:v111];
    [v9 setNeedsLayout];

LABEL_44:

LABEL_47:
    return [v9 setNeedsLayout];
  }

  if (v91 == enum case for ArcadeSubscribePage.PageType.grid(_:))
  {
    (*(v74 + 96))(v66, v90);
    v97 = *v66;
    v98 = v66[1];
    v99 = v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style] == 1;
    v100 = objc_allocWithZone(type metadata accessor for UpsellGridView());
    v101 = sub_100451C5C(v99);
    v102 = OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView;
    v103 = *&v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView];
    v104 = v101;
    if (v103)
    {
      [v103 removeFromSuperview];
      v103 = *&v9[v102];
    }

    *&v9[v102] = v101;
    v111 = v101;

    [*&v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView] addSubview:v111];
    [v9 setNeedsLayout];

    *&v111[OBJC_IVAR____TtC8AppStore14UpsellGridView_impressionsCalculator] = v135;

    *&v111[OBJC_IVAR____TtC8AppStore14UpsellGridView_primaryIcon] = v97;

    v112 = OBJC_IVAR____TtC8AppStore14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *&v111[v112] = v98;

    *&v111[OBJC_IVAR____TtC8AppStore14UpsellGridView_artworkLoader] = v150;

    sub_10045222C(v87, v89);

    goto LABEL_47;
  }

  if (v91 == enum case for ArcadeSubscribePage.PageType.singleIcon(_:))
  {
    (*(v74 + 96))(v66, v90);
    ImpressionableArtwork.art.getter();
    v105 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    Artwork.size.getter();
    v106 = v124;
    AspectRatio.init(_:_:)();
    AspectRatio.width(fromHeight:)();
    (*(v125 + 8))(v106, v126);
    v107 = v127;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v128 + 8))(v107, v129);
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v105 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    sub_1003A1084(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v108 = v130;
    ImpressionableArtwork.impressionMetrics.getter();
    v109 = v132;
    v110 = v131;
    if ((*(v132 + 48))(v108, 1, v131) == 1)
    {
      sub_10002B894(v108, &qword_100973D30, &unk_1007B1DC0);
    }

    else
    {
      v114 = v122;
      (*(v109 + 32))();
      if (v135)
      {
        ImpressionsCalculator.addElement(_:at:)();
      }

      (*(v132 + 8))(v114, v110);
    }

    v115 = OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView;
    v116 = *&v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView];
    v117 = v105;
    if (v116)
    {
      [v116 removeFromSuperview];
      v118 = *&v9[v115];
    }

    else
    {
      v118 = 0;
    }

    *&v9[v115] = v105;
    v111 = v105;

    [*&v9[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_scrollView] addSubview:v111];
    [v9 setNeedsLayout];

    goto LABEL_44;
  }

  (*(v74 + 8))(v66, v90);
  return [v9 setNeedsLayout];
}

unint64_t sub_10048AAC0()
{
  result = qword_100986FC8;
  if (!qword_100986FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986FC8);
  }

  return result;
}

uint64_t sub_10048AB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10048AC20(void *a1, _BYTE *a2, double a3, double a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v14)
  {
    v62 = v9;
    v15 = a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style];
    v16 = [a2 traitCollection];
    v17 = UITraitCollection.isSizeClassCompact.getter();

    if (v17)
    {
      v18 = [a2 window];
      if (v18)
      {
        v19 = v18;
        [v18 frame];
        Width = CGRectGetWidth(v86);
        [a2 bounds];
        v21 = CGRectGetWidth(v87);

        LOBYTE(v18) = v21 < Width;
      }
    }

    else
    {
      LOBYTE(v18) = 1;
    }

    sub_1004872AC(v18, v15, v66);
    v29 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView];
    if (v29)
    {
      v65 = type metadata accessor for LinkableHeaderView();
      v61 = &protocol witness table for UIView;
    }

    else
    {
      v65 = 0;
      v61 = 0;
    }

    v33 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_contentView];
    v63 = v8;
    v64 = a1;
    if (v33)
    {
      v60 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v34 = &protocol witness table for UIView;
    }

    else
    {
      v60 = 0;
      v34 = 0;
    }

    v47 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_detailsView];
    v48 = type metadata accessor for BreakoutDetailsView(0);
    v79 = &protocol witness table for UIView;
    v78 = v48;
    v77 = v47;
    v49 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton];
    v81 = type metadata accessor for OfferButton();
    v82 = &protocol witness table for UIView;
    v80 = v49;
    v50 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton];
    v84 = type metadata accessor for DynamicTypeButton();
    v85 = &protocol witness table for UIView;
    v83 = v50;
    memcpy(v67, v66, 0x190uLL);
    v67[50] = v29;
    v68 = 0;
    v69 = 0;
    v70 = v65;
    v71 = v61;
    v72 = v33;
    v74 = 0;
    v73 = 0;
    v75 = v60;
    v76 = v34;
    sub_10002A400(v67, v67[3]);
    v51 = v33;
    v52 = v47;
    v53 = v49;
    v54 = v50;
    v55 = v29;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v56 = v64;
    AnyDimension.value(in:rounded:)();
    v57 = v63;
    v58 = *(v62 + 8);
    v58(v12, v63);
    sub_10048B220(v56, v67, a3, a4);
    sub_10002A400(&v67[5], v67[8]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v58(v12, v57);
    sub_10048ABCC(v67);
  }

  else
  {
    v22 = a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_style];
    v23 = [a2 traitCollection];
    v24 = UITraitCollection.isSizeClassCompact.getter();

    if (v24)
    {
      v25 = [a2 window];
      if (v25)
      {
        v26 = v25;
        [v25 frame];
        v27 = CGRectGetWidth(v88);
        [a2 bounds];
        v28 = CGRectGetWidth(v89);

        LOBYTE(v25) = v28 < v27;
      }
    }

    else
    {
      LOBYTE(v25) = 1;
    }

    sub_1004881C4(v25, v22, v66, a3);
    v30 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_headerView];
    if (v30)
    {
      v31 = type metadata accessor for LinkableHeaderView();
      v32 = &protocol witness table for UIView;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v35 = type metadata accessor for LayoutViewPlaceholder();
    v36 = v30;
    v37 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v67[42] = &protocol witness table for LayoutViewPlaceholder;
    v67[41] = v35;
    v67[38] = v37;
    v38 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_detailsView];
    v39 = type metadata accessor for BreakoutDetailsView(0);
    v67[47] = &protocol witness table for UIView;
    v67[46] = v39;
    v67[43] = v38;
    v40 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_offerButton];
    v41 = type metadata accessor for OfferButton();
    v69 = &protocol witness table for UIView;
    v68 = v41;
    v67[48] = v40;
    v42 = *&a2[OBJC_IVAR____TtC8AppStore23ArcadeSubscribePageView_dismissButton];
    v43 = type metadata accessor for DynamicTypeButton();
    v74 = &protocol witness table for UIView;
    v73 = v43;
    v70 = v42;
    memcpy(v67, v66, 0x108uLL);
    v67[33] = v30;
    v67[34] = 0;
    v67[35] = 0;
    v67[36] = v31;
    v67[37] = v32;
    v44 = v38;
    v45 = v40;
    v46 = v42;
    a3 = sub_10048B5A8(a1, v67, a3, a4);
    sub_10048AB78(v67);
  }

  return a3;
}

uint64_t sub_10048B1B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10048B220(uint64_t a1, void *a2, double a3, double a4)
{
  *&v29 = a2 + 35;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a2 + 20, a2[23]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v13 = v12;
  v14 = *(v9 + 8);
  v14(v11, v8);
  sub_10002A400(a2 + 15, a2[18]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v16 = v15;
  v14(v11, v8);
  sub_10002A400(a2 + 25, a2[28]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v18 = v17;
  v14(v11, v8);
  sub_10002C0AC((a2 + 30), v38);
  v19 = *(v29 + 32);
  v20 = *(v29 + 16);
  v28 = *v29;
  v29 = v20;
  sub_10002C0AC((a2 + 40), &v41);
  sub_10002C0AC((a2 + 45), &v42);
  v37[0] = v16;
  v37[1] = v13;
  v37[2] = v18;
  v37[3] = v13;
  v39 = v29;
  *&v38[40] = v28;
  v40 = v19;
  sub_1000ECFFC(v37, v33);
  sub_10002C0AC((a2 + 60), &v34);
  sub_10002C0AC((a2 + 65), &v35);
  sub_10002C0AC((a2 + 70), &v36);
  sub_10002A400(a2 + 10, a2[13]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v22 = v21;
  v14(v11, v8);
  sub_10048BB7C(a1, v33, a3, a4);
  v24 = a4 - v22 - v23;
  sub_10005FC74((a2 + 50), &v30);
  if (v31)
  {
    sub_100005A38(&v30, v32);
    sub_10002A400(v32, v32[3]);
    Measurable.measuredSize(fitting:in:)();
    v26 = v25;
    sub_1000ED33C(v33);
    sub_1000ED36C(v37);
    v24 = v24 - v26;
    sub_100007000(v32);
  }

  else
  {
    sub_1000ED33C(v33);
    sub_1000ED36C(v37);
    sub_10002B894(&v30, &qword_100975610, &qword_1007B5690);
  }

  return v24;
}

double sub_10048B5A8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 80);
  v18 = *(a2 + 96);
  v19 = v12;
  sub_10002C0AC(a2 + 112, v28);
  v13 = *(a2 + 152);
  v16 = *(a2 + 168);
  v17 = v13;
  sub_10002C0AC(a2 + 184, &v30);
  sub_10002C0AC(a2 + 224, &v31);
  v27[1] = v18;
  v27[0] = v19;
  v29 = v16;
  *&v28[40] = v17;
  sub_10048BE84(v27, v23);
  sub_10002C0AC(a2 + 344, &v24);
  sub_10002C0AC(a2 + 384, &v25);
  sub_10002C0AC(a2 + 424, &v26);
  sub_10002A400(a2, *(a2 + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v14 = *(v9 + 8);
  v14(v11, v8);
  sub_10048B874(a1, v23, a3, a4);
  sub_10005FC74(a2 + 264, &v20);
  if (v21)
  {
    sub_100005A38(&v20, v22);
    sub_10002A400(v22, v22[3]);
    Measurable.measuredSize(fitting:in:)();
    sub_100007000(v22);
  }

  else
  {
    sub_10002B894(&v20, &qword_100975610, &qword_1007B5690);
  }

  sub_10002A400((a2 + 40), *(a2 + 64));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v14(v11, v8);
  sub_10048BEE0(v23);
  sub_10048BF34(v27);
  return a3;
}

double sub_10048B874(uint64_t a1, void *a2, double a3, double a4)
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

double sub_10048BB7C(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a2 + 24, a2[27]);
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400(a2 + 19, a2[22]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v10 = *(v7 + 8);
  v10(v9, v6);
  sub_10002A400(a2 + 29, a2[32]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a2 + 4, a2[7]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v10(v9, v6);
  }

  sub_10002A400(a2 + 34, a2[37]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a2 + 34, a2[37]);
    Measurable.measuredSize(fitting:in:)();
  }

  sub_10002A400(a2 + 29, a2[32]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a2 + 34, a2[37]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(a2 + 14, a2[17]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v10(v9, v6);
    }
  }

  return a3;
}

uint64_t sub_10048BF88()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SystemImage();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_100005644(v11, qword_1009D1EB0);
  v12 = sub_1000056A8(v11, qword_1009D1EB0);
  v30 = &type metadata for Double;
  v31 = &protocol witness table for Double;
  *&v29 = 0x4030000000000000;
  *&v28 = 0x4038000000000000;
  *&v25 = 0x4034000000000000;
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
  Conditional<>.anyDimension.getter();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, enum case for SystemImage.chevronForward(_:), v3);
  v13 = static SystemImage.load(_:with:)();
  (*(v4 + 8))(v6, v3);
  v14 = [objc_opt_self() secondaryLabelColor];
  v27 = &protocol witness table for Double;
  v26 = &type metadata for Double;
  *&v25 = 0x4010000000000000;
  v15 = objc_opt_self();
  v16 = UIFontTextStyleFootnote;
  v17 = [v15 configurationWithTextStyle:v16 scale:1];

  if (qword_10096E218 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v0, qword_1009D15C8);
  v19 = v24;
  (*(v1 + 16))(v24, v18, v0);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v20 = static UIColor.primaryText.getter();
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  static UIView.defaultHighlightAlpha.getter();
  v22 = v21;
  sub_100005A38(&v29, v12);
  sub_100005A38(&v28, (v12 + 40));
  *(v12 + 10) = v13;
  *(v12 + 11) = v14;
  sub_100005A38(&v25, (v12 + 96));
  *(v12 + 17) = v17;
  result = (*(v1 + 32))(&v12[v11[10]], v19, v0);
  *&v12[v11[11]] = 2;
  *&v12[v11[12]] = v20;
  *&v12[v11[13]] = v22;
  return result;
}

uint64_t sub_10048C3E4()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SystemImage();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_100005644(v8, qword_1009D1EC8);
  v9 = sub_1000056A8(v8, qword_1009D1EC8);
  v10 = type metadata accessor for ZeroDimension();
  v29 = v10;
  v30 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v28);
  static ZeroDimension.zero.getter();
  v26 = v10;
  v27 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v25);
  static ZeroDimension.zero.getter();
  (*(v5 + 104))(v7, enum case for SystemImage.arrowUpForward(_:), v4);
  v21 = static SystemImage.load(_:with:)();
  (*(v5 + 8))(v7, v4);
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  v23 = &type metadata for Double;
  v24 = &protocol witness table for Double;
  *&v22 = 0x4018000000000000;
  v13 = objc_opt_self();
  v14 = UIFontTextStyleFootnote;
  v15 = [v13 configurationWithTextStyle:v14 scale:1];

  if (qword_10096E218 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v0, qword_1009D15C8);
  (*(v1 + 16))(v3, v16, v0);
  v17 = [v11 secondaryLabelColor];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  static UIView.defaultHighlightAlpha.getter();
  v19 = v18;
  sub_100005A38(&v28, v9);
  sub_100005A38(&v25, (v9 + 40));
  *(v9 + 10) = v21;
  *(v9 + 11) = v12;
  sub_100005A38(&v22, (v9 + 96));
  *(v9 + 17) = v15;
  result = (*(v1 + 32))(&v9[v8[10]], v3, v0);
  *&v9[v8[11]] = 2;
  *&v9[v8[12]] = v17;
  *&v9[v8[13]] = v19;
  return result;
}

uint64_t sub_10048C770@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  v5 = type metadata accessor for VerticalStack();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Resize.Rule();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v69 = (&v54 - v10);
  __chkstk_darwin(v11);
  v68 = (&v54 - v12);
  __chkstk_darwin(v13);
  v67 = (&v54 - v14);
  v15 = type metadata accessor for HorizontalStack();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  __chkstk_darwin(v20);
  v23 = &v54 - v22;
  v24 = *(v3 + 120);
  v66 = v3;
  if (v24 == 1)
  {
    v58 = v21;
    HorizontalStack.init(with:)();
    sub_10002A400(v3, *(v3 + 24));
    Measurable.placeable.getter();
    sub_10048F110(v3, v73);
    v25 = swift_allocObject();
    memcpy((v25 + 16), v73, 0x108uLL);
    v26 = v58;
    HorizontalStack.adding(_:with:)();

    sub_100007000(v74);
    v27 = *(v16 + 8);
    v56 = v16 + 8;
    v57 = v27;
    v27(v26, v15);
    sub_10002C0AC(v3 + 40, v74);
    v28 = *(v3 + 248);
    v29 = v67;
    v67[3] = &type metadata for CGFloat;
    v29[4] = &protocol witness table for CGFloat;
    *v29 = v28;
    v59 = v23;
    v30 = v15;
    v31 = *(v7 + 104);
    v61 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v32 = v71;
    v31(v29, enum case for Resize.Rule.replaced(_:), v71);
    v33 = enum case for Resize.Rule.unchanged(_:);
    v31(v68, enum case for Resize.Rule.unchanged(_:), v32);
    v55 = v19;
    v31(v69, v33, v32);
    v60 = v16;
    v31(v70, v33, v32);
    v73[3] = type metadata accessor for Resize();
    v73[4] = &protocol witness table for Resize;
    sub_1000056E0(v73);
    v34 = v66;
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    v35 = v55;
    HorizontalStack.adding(_:with:)();
    v36 = v57;
    v57(v35, v30);
    sub_100007000(v73);
    v37 = v58;
    HorizontalStack.init(with:)();
    sub_10048F110(v34, v73);
    v38 = swift_allocObject();
    memcpy((v38 + 16), v73, 0x108uLL);
    HorizontalStack.adding(_:with:)();

    v36(v37, v30);
    v73[3] = v30;
    v73[4] = &protocol witness table for HorizontalStack;
    v39 = sub_1000056E0(v73);
    v40 = v59;
    (*(v60 + 16))(v39, v59, v30);
    v75 = v30;
    v76 = &protocol witness table for HorizontalStack;
    sub_1000056E0(v74);
    HorizontalStack.adding(_:with:)();
    v41 = v35;
    v42 = v66;
    v36(v41, v30);
    v36(v40, v30);
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    HorizontalStack.init(with:)();
    sub_10002A400(v3, *(v3 + 24));
    Measurable.placeable.getter();
    sub_10048F110(v3, v73);
    v43 = swift_allocObject();
    memcpy((v43 + 16), v73, 0x108uLL);
    HorizontalStack.adding(_:with:)();

    sub_100007000(v74);
    v59 = *(v16 + 8);
    v60 = v16 + 8;
    v59(v19, v15);
    sub_10002C0AC(v3 + 40, v74);
    v44 = *(v3 + 248);
    v45 = v67;
    v67[3] = &type metadata for CGFloat;
    v45[4] = &protocol witness table for CGFloat;
    *v45 = v44;
    v58 = v15;
    v31 = *(v7 + 104);
    v61 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v46 = v71;
    v31(v45, enum case for Resize.Rule.replaced(_:), v71);
    v33 = enum case for Resize.Rule.unchanged(_:);
    v31(v68, enum case for Resize.Rule.unchanged(_:), v46);
    v31(v69, v33, v46);
    v31(v70, v33, v46);
    v73[3] = type metadata accessor for Resize();
    v73[4] = &protocol witness table for Resize;
    sub_1000056E0(v73);
    v42 = v66;
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    v47 = v58;
    v75 = v58;
    v76 = &protocol witness table for HorizontalStack;
    sub_1000056E0(v74);
    HorizontalStack.adding(_:with:)();
    v59(v23, v47);
  }

  sub_100007000(v73);
  v48 = v62;
  VerticalStack.init(with:)();
  sub_10048F110(v42, v73);
  v49 = swift_allocObject();
  memcpy((v49 + 16), v73, 0x108uLL);
  v50 = v64;
  v72[3] = v64;
  v72[4] = &protocol witness table for VerticalStack;
  sub_1000056E0(v72);
  VerticalStack.adding(_:with:)();

  (*(v63 + 8))(v48, v50);
  v51 = v67;
  *v67 = sub_1002F1298;
  v51[1] = 0;
  v52 = v71;
  v31(v51, enum case for Resize.Rule.recalculated(_:), v71);
  v31(v68, v33, v52);
  v31(v69, v33, v52);
  v31(v70, v33, v52);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  return sub_100007000(v74);
}

uint64_t sub_10048D0AC(uint64_t a1, uint64_t a2)
{
  sub_10002C0AC(a2 + 128, v4);
  VerticalStack.Properties.topSpacing.setter();
  sub_10002C0AC(a2 + 168, v4);
  return VerticalStack.Properties.bottomSpacing.setter();
}

double sub_10048D100(uint64_t a1, double a2, double a3)
{
  v4 = type metadata accessor for Resize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(v3, v3[3]);
  Measurable.placeable.getter();
  sub_10002A400(v21, v21[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_100007000(v21);
  sub_10002A400(v3, v3[3]);
  v22.var0 = v9;
  v22.var1 = v11;
  v22.var2 = v13;
  v22.var3 = v15;
  if (LayoutTextView.estimatedNumberOfLines(from:)(v22) > 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 3;
  }

  sub_10048C770(v16, v7);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v18 = v17;
  (*(v5 + 8))(v7, v4);
  return v18;
}

uint64_t sub_10048D2F4(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = type metadata accessor for Resize();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(v5, v5[3]);
  Measurable.placeable.getter();
  sub_10002A400(v25, v25[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_100007000(v25);
  sub_10002A400(v5, v5[3]);
  v26.var0 = v15;
  v26.var1 = v17;
  v26.var2 = v19;
  v26.var3 = v21;
  if (LayoutTextView.estimatedNumberOfLines(from:)(v26) > 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = 3;
  }

  if (static HorizontalStack.Alignment.== infix(_:_:)())
  {
    v27.origin.x = a2;
    v27.origin.y = a3;
    v27.size.width = a4;
    v27.size.height = a5;
    CGRectGetWidth(v27);
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    CGRectGetHeight(v28);
  }

  sub_10048C770(v22, v13);
  dispatch thunk of Placeable.place(at:with:)();
  return (*(v11 + 8))(v13, v10);
}

id sub_10048D538()
{
  type metadata accessor for ShelfFooterTitleButton(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_100986FD0 = result;
  return result;
}

char *sub_10048D6D8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  v22 = OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) init];
  v5[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconHeight] = 0;
  sub_10048EEB4(a1, &v5[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style]);
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v32, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  static UIButton.Configuration.plain()();
  v28 = type metadata accessor for UIButton.Configuration();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v21, 0, 1, v28);
  UIButton.configuration.setter();
  UIButton.configuration.getter();
  if ((*(v29 + 48))(v18, 1, v28))
  {
    sub_100146A44(v18, v21);
    UIButton.configuration.setter();
    sub_1001AF7BC(v18);
  }

  else
  {
    (*(v13 + 104))(v15, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v12);
    UIButton.Configuration.cornerStyle.setter();
    UIButton.configuration.setter();
  }

  v30 = [v27 layer];
  [v30 setAllowsGroupBlending:0];

  [v27 addSubview:*&v27[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconView]];
  sub_10048EF18(a1);
  return v27;
}

id sub_10048DAD0()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  UIButton.configuration.getter();
  v8 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_100146A44(v7, v4);
    UIButton.configuration.setter();
    sub_1001AF7BC(v7);
  }

  else
  {
    v9 = &v0[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style];
    swift_beginAccess();
    v10 = v9[10];
    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }

  v11 = [v1 titleLabel];
  if (v11)
  {
    v12 = v11;
    v13 = &v1[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style];
    swift_beginAccess();
    [v12 setNumberOfLines:*&v13[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 44)]];
  }

  v14 = &v1[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style];
  swift_beginAccess();
  [v1 setTintColor:*&v14[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 48)]];
  return [v1 setNeedsUpdateConfiguration];
}

id sub_10048DCD0@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 imageView];
    if (v5)
    {
      v6 = v5;
      a1[3] = &type metadata for ShelfFooterTitleButton.Layout;
      a1[4] = sub_10048EE60();
      v7 = swift_allocObject();
      *a1 = v7;
      *(v7 + 40) = sub_100005744(0, &qword_100986BF0, UILabel_ptr);
      *(v7 + 48) = &protocol witness table for UILabel;
      *(v7 + 16) = v4;
      v8 = sub_100005744(0, &qword_100973120, UIImageView_ptr);
      *(v7 + 80) = v8;
      *(v7 + 88) = &protocol witness table for UIImageView;
      *(v7 + 56) = v6;
      v9 = *&v1[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconView];
      *(v7 + 120) = v8;
      *(v7 + 128) = &protocol witness table for UIImageView;
      *(v7 + 96) = v9;
      v10 = v1[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_hasLeadingIcon];
      v11 = &v1[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style];
      swift_beginAccess();
      sub_10002C0AC(v11, v7 + 144);
      sub_10002C0AC(v11 + 40, v7 + 184);
      sub_10002C0AC(v11 + 96, v7 + 224);
      v12 = v9;
      result = [v6 lastBaselineFromBottom];
      v14 = *&v1[OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_leadingIconHeight];
      *(v7 + 136) = v10;
      *(v7 + 264) = v15;
      *(v7 + 272) = v14;
      return result;
    }
  }

  a1[3] = type metadata accessor for HorizontalStack();
  a1[4] = &protocol witness table for HorizontalStack;
  sub_1000056E0(a1);
  return HorizontalStack.init(with:)();
}

uint64_t sub_10048DE88()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&qword_10097F848, &unk_1007C6CC0);
  __chkstk_darwin(v3 - 8);
  v64 = v63 - v4;
  v5 = sub_10002849C(&unk_100987100, &qword_1007CF950);
  __chkstk_darwin(v5 - 8);
  v7 = v63 - v6;
  v8 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v8 - 8);
  v73 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = v63 - v11;
  __chkstk_darwin(v12);
  v69 = v63 - v13;
  __chkstk_darwin(v14);
  v16 = v63 - v15;
  __chkstk_darwin(v17);
  v19 = v63 - v18;
  v20 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v21 = v20 - 8;
  v66 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = v22;
  v68 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v72 = v63 - v24;
  v25 = type metadata accessor for FontUseCase();
  v26 = *(v25 - 8);
  *&v27 = __chkstk_darwin(v25).n128_u64[0];
  v29 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75.receiver = v1;
  v75.super_class = ObjectType;
  objc_msgSendSuper2(&v75, "updateConfiguration", v27);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v30 = v1 + OBJC_IVAR____TtC8AppStore22ShelfFooterTitleButton_style;
  swift_beginAccess();
  (*(v26 + 16))(v29, v30 + *(v21 + 48), v25);
  v31 = [v1 traitCollection];
  v71 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  (*(v26 + 8))(v29, v25);
  if ([v1 isHighlighted])
  {
    v65 = 1;
  }

  else
  {
    v65 = [v1 isSelected];
  }

  v32 = v72;
  sub_10048EEB4(v30, v72);
  UIButton.configuration.getter();
  v33 = type metadata accessor for UIButton.Configuration();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v34 + 48;
  v37 = v35(v19, 1, v33);
  v38 = v70;
  if (v37)
  {
    sub_100146A44(v19, v73);
    UIButton.configuration.setter();
    sub_1001AF7BC(v19);
  }

  else
  {
    v63[0] = v19;
    v39 = v68;
    sub_10048EEB4(v32, v68);
    v40 = (*(v66 + 80) + 25) & ~*(v66 + 80);
    v41 = swift_allocObject();
    v63[1] = v36;
    v42 = v35;
    v43 = v38;
    v44 = v71;
    *(v41 + 16) = v71;
    *(v41 + 24) = v65;
    v45 = v41 + v40;
    v32 = v72;
    sub_10048EF74(v39, v45);
    v46 = v44;
    v38 = v43;
    v35 = v42;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v47 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v47 - 8) + 56))(v7, 0, 1, v47);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  if (v35(v16, 1, v33))
  {
    sub_100146A44(v16, v73);
    UIButton.configuration.setter();
    sub_1001AF7BC(v16);
  }

  else
  {
    v48 = v68;
    sub_10048EEB4(v32, v68);
    v49 = (*(v66 + 80) + 17) & ~*(v66 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v65;
    sub_10048EF74(v48, v50 + v49);
    v51 = v64;
    UIConfigurationColorTransformer.init(_:)();
    v52 = type metadata accessor for UIConfigurationColorTransformer();
    (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
    UIButton.Configuration.imageColorTransformer.setter();
    UIButton.configuration.setter();
  }

  v53 = v69;
  UIButton.configuration.getter();
  if (v35(v53, 1, v33))
  {
    sub_100146A44(v53, v73);
    UIButton.configuration.setter();
    sub_1001AF7BC(v53);
  }

  else
  {
    v54 = *(v32 + 136);
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.configuration.setter();
  }

  v55 = [v1 imageView];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 layer];

    v58 = [v1 traitCollection];
    [v58 userInterfaceStyle];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = String._bridgeToObjectiveC()();

    [v57 setCompositingFilter:v59];
  }

  UIButton.configuration.getter();
  if (v35(v38, 1, v33))
  {
    sub_100146A44(v38, v73);
    UIButton.configuration.setter();

    sub_10048EF18(v32);
    return sub_1001AF7BC(v38);
  }

  else
  {
    v61 = [objc_opt_self() clearColor];
    v62 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v62(v74, 0);
    UIButton.configuration.setter();

    return sub_10048EF18(v32);
  }
}

uint64_t sub_10048E6F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AttributeContainer();
  (*(*(v10 - 8) + 16))(a5, a1, v10);
  sub_1001469E0();
  v11 = a2;
  AttributeContainer.subscript.setter();
  v12 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v13 = *(a4 + *(v12 + 48));
  if (a3)
  {
    v14 = [v13 colorWithAlphaComponent:*(a4 + *(v12 + 52))];
  }

  else
  {
    v15 = v13;
  }

  sub_1002F4F4C();
  return AttributeContainer.subscript.setter();
}

id sub_10048E800(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a3 + 88);
  if (a2)
  {
    v5 = [*(a3 + 88) colorWithAlphaComponent:*(a3 + *(type metadata accessor for ShelfFooterTitleButton.Style(0) + 52))];

    return v5;
  }

  else
  {

    return v4;
  }
}

double sub_10048E9B4(double a1, double a2)
{
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "sizeThatFits:", a1, a2);
  v6 = v5;
  v7 = [v2 titleLabel];
  if (v7)
  {

    v8 = [v2 imageView];
    if (v8)
    {

      sub_10048DCD0(v12);
      sub_10002A400(v12, v13);
      [v2 layoutMargins];
      CGSize.subtracting(insets:)();
      v9 = [v2 traitCollection];
      dispatch thunk of Placeable.measure(toFit:with:)();

      [v2 layoutMargins];
      CGSize.adding(outsets:)();
      v6 = v10;
      sub_100007000(v12);
    }
  }

  return v6;
}

uint64_t sub_10048EBE8(uint64_t a1)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
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

void sub_10048ECE8(uint64_t a1)
{
  sub_1003F72D4();
  if (v1 <= 0x3F)
  {
    sub_100005744(319, &qword_1009744B0, UIImage_ptr);
    if (v2 <= 0x3F)
    {
      sub_100005744(319, &qword_100970180, UIColor_ptr);
      if (v3 <= 0x3F)
      {
        sub_10048EDF8(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for FontUseCase();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10048EDF8(uint64_t a1)
{
  if (!qword_100987098)
  {
    sub_100005744(255, &qword_1009870A0, UIImageSymbolConfiguration_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100987098);
    }
  }
}

unint64_t sub_10048EE60()
{
  result = qword_1009870F0;
  if (!qword_1009870F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009870F0);
  }

  return result;
}

uint64_t sub_10048EEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10048EF18(uint64_t a1)
{
  v2 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10048EF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10048EFD8(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_10048E800(a1, v4, v5);
}

uint64_t sub_10048F04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_10048E6F8(a1, v6, v7, v8, a2);
}