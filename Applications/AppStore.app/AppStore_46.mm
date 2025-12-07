uint64_t sub_100519454()
{
  sub_10001F64C(v0 + 16);
  sub_1000284E4(v0 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardCollectionElementsObserver(uint64_t a1)
{
  result = qword_100989AD8;
  if (!qword_100989AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100519524(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1005195DC(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v6 = a1;
    v5(0, ObjectType, v3);
  }

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {

    return [a1 setHidden:0];
  }

  return result;
}

uint64_t sub_1005196C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {
    type metadata accessor for TodayCard();
    sub_10051A00C(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
    result = ItemLayoutContext.typedModel<A>(is:)();
    if (result)
    {
      v10 = type metadata accessor for ItemLayoutContext();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v8, a2, v10);
      (*(v11 + 56))(v8, 0, 1, v10);
      v12 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
      swift_beginAccess();
      sub_10009761C(v8, v3 + v12);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100519918()
{
  sub_10002849C(&qword_10096FDB0, &unk_1007C38C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B10D0;
  v2 = sub_10051A00C(&qword_100989C18, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D2F88);
  *(v1 + 32) = v0;
  *(v1 + 40) = v2;

  return v1;
}

double sub_1005199F0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6 && a1)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    v10 = a1;
    v9(1, ObjectType, v7);
  }

  swift_getObjectType();
  v11 = swift_conformsToProtocol2();
  if (v11 && a1)
  {
    v13 = v11;
    type metadata accessor for TodayCard();
    sub_10051A00C(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
    v14 = a1;
    ItemLayoutContext.typedModel<A>(as:)();
    if (v16)
    {
      v15 = swift_getObjectType();
      (*(v13 + 192))(*(v4 + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled), v15, v13);
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

void sub_100519C0C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    type metadata accessor for TodayCard();
    sub_10051A00C(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
    if (ItemLayoutContext.typedModel<A>(is:)())
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      *(v4 + 24) = 0x3FEEB851EB851EB8;
      v13 = sub_100519E48;
      v14 = v4;
      aBlock = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_100007A08;
      v12 = &unk_1008C7098;
      v5 = _Block_copy(&aBlock);
      v6 = a1;

      v13 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      v14 = 0;
      aBlock = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_100504C5C;
      v12 = &unk_1008C70C0;
      v7 = _Block_copy(&aBlock);
      [v3 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v5 options:v7 animations:0.0 completion:1.0];
      _Block_release(v7);
      _Block_release(v5);

      swift_unknownObjectWeakAssign();
    }

    else
    {
    }
  }
}

void sub_100519E54(uint64_t a1, void (*a2)(), uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v16 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = 0x3FF0000000000000;
        v21 = a2;
        v22 = v12;
        aBlock = _NSConcreteStackBlock;
        v18 = 1107296256;
        v19 = sub_100007A08;
        v20 = a3;
        v13 = _Block_copy(&aBlock);
        v14 = v11;

        v21 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
        v22 = 0;
        aBlock = _NSConcreteStackBlock;
        v18 = 1107296256;
        v19 = sub_100504C5C;
        v20 = a4;
        v15 = _Block_copy(&aBlock);
        [v16 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v13 options:v15 animations:0.0 completion:1.0];
        _Block_release(v15);
        _Block_release(v13);
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_10051A00C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

UIColor sub_10051A080()
{
  sub_100028BB8();
  result.super.isa = UIColor.init(light:dark:)([objc_allocWithZone(UIColor) initWithRed:0.929411765 green:0.964705882 blue:1.0 alpha:1.0], objc_msgSend(objc_allocWithZone(UIColor), "initWithRed:green:blue:alpha:", 0.11372549, 0.137254902, 0.176470588, 1.0)).super.isa;
  qword_1009D28B0 = result.super.isa;
  return result;
}

UIColor sub_10051A124()
{
  sub_100028BB8();
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.07];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.05];

  result.super.isa = UIColor.init(light:dark:)(v2, v4).super.isa;
  qword_1009D28B8 = result.super.isa;
  return result;
}

id sub_10051A1F8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC8AppStore16AdBackgroundView_isBorderHidden] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_10096E810;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_1009D28B0];
  v13 = [v12 layer];
  if (qword_10096E818 != -1)
  {
    swift_once();
  }

  v14 = [qword_1009D28B8 CGColor];
  [v13 setBorderColor:v14];

  v15 = [v12 layer];
  [v15 setBorderWidth:1.0];

  [v12 setUserInteractionEnabled:0];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007B10D0;
  *(v16 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v16 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v12;
}

void sub_10051A4E0(void *a1)
{
  if ((*(a1 + OBJC_IVAR____TtC8AppStore16AdBackgroundView_isBorderHidden) & 1) == 0)
  {
    v2 = [a1 layer];
    if (qword_10096E818 != -1)
    {
      swift_once();
    }

    v3 = [qword_1009D28B8 CGColor];
    [v2 setBorderColor:v3];
  }
}

unint64_t sub_10051A5AC()
{
  _StringGuts.grow(_:)(34);

  IndexPath.section.getter();
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 45;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  IndexPath.item.getter();
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0xD00000000000001DLL;
}

uint64_t sub_10051A6E4(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v49 = a4;
  v51 = a3;
  v7 = type metadata accessor for ActionOutcome();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10002849C(&unk_100982A90, &unk_1007CAFC0);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v37 - v9;
  v10 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v44 = &v37 - v11;
  v52 = *a1;
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSLogger();
  v54 = sub_1000056A8(v12, qword_1009CE218);
  v13 = sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  v14 = *(*(type metadata accessor for LogMessage() - 8) + 72);
  v40 = v13;
  *(swift_allocObject() + 16) = xmmword_1007B23A0;
  LogMessage.init(stringLiteral:)();
  v38 = type metadata accessor for HttpAction();
  v56 = v38;
  v55[0] = a2;

  static LogMessage.sensitive(_:)();
  sub_10003D444(v55);
  LogMessage.init(stringLiteral:)();
  v15 = type metadata accessor for Bag();
  v56 = v15;
  v16 = sub_1000056E0(v55);
  (*(*(v15 - 8) + 16))(v16, v51, v15);
  v39 = 3 * v14;
  static LogMessage.sensitive(_:)();
  sub_10003D444(v55);
  v51 = a2;
  LogMessage.init(stringLiteral:)();
  v56 = sub_100005744(0, &qword_100989C88, AMSURLResult_ptr);
  v55[0] = v52;
  v17 = v52;
  static LogMessage.sensitive(_:)();
  sub_10003D444(v55);
  Logger.debug(_:)();

  if ([v17 responseStatusCode] - 200 > 0x63)
  {
    *(swift_allocObject() + 16) = xmmword_1007B5350;
    LogMessage.init(stringLiteral:)();
    v56 = v38;
    v55[0] = v51;

    static LogMessage.sensitive(_:)();
    sub_10003D444(v55);
    LogMessage.init(stringLiteral:)();
    v29 = [v17 responseStatusCode];
    v56 = &type metadata for Int;
    v55[0] = v29;
    static LogMessage.sensitive(_:)();
    sub_10003D444(v55);
    Logger.error(_:)();

    v30 = HttpAction.failureAction.getter();
    if (v30)
    {
      v31 = v30;
      type metadata accessor for BaseObjectGraph();
      v32 = v44;
      v33 = v47;
      inject<A, B>(_:from:)();
      v56 = type metadata accessor for Action();
      v57 = sub_10051B780(&qword_100989C80, &type metadata accessor for Action);
      v55[0] = v31;
      v34 = v48;
      v35 = v45;
      v36 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      ActionDispatcher.perform(_:withMetrics:asPartOf:)();

      (*(v34 + 8))(v35, v36);
      (*(v46 + 8))(v32, v33);
      sub_100007000(v55);
    }

    sub_10051B7D4();
    swift_allocError();
    Promise.reject(_:)();
  }

  else
  {
    v18 = HttpAction.successAction.getter();
    if (v18)
    {
      v19 = v18;
      type metadata accessor for BaseObjectGraph();
      v20 = v44;
      v21 = v47;
      inject<A, B>(_:from:)();
      v56 = type metadata accessor for Action();
      v57 = sub_10051B780(&qword_100989C80, &type metadata accessor for Action);
      v55[0] = v19;
      v22 = v48;
      v23 = v45;
      v24 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      ActionDispatcher.perform(_:withMetrics:asPartOf:)();

      (*(v22 + 8))(v23, v24);
      (*(v46 + 8))(v20, v21);
      sub_100007000(v55);
    }

    v26 = v41;
    v25 = v42;
    v27 = v43;
    (*(v42 + 104))(v41, enum case for ActionOutcome.performed(_:), v43);
    Promise.resolve(_:)();
    return (*(v25 + 8))(v26, v27);
  }
}

uint64_t sub_10051AEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v24 = a3;
  v6 = sub_10002849C(&unk_100982A90, &unk_1007CAFC0);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v23 = &v21 - v7;
  v8 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSLogger();
  v27 = sub_1000056A8(v11, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5350;
  LogMessage.init(stringLiteral:)();
  v31 = type metadata accessor for HttpAction();
  v30[0] = a2;

  static LogMessage.sensitive(_:)();
  sub_10003D444(v30);
  LogMessage.init(stringLiteral:)();
  v28 = a1;
  swift_getErrorValue();
  v12 = v33;
  v13 = v34;
  v31 = v34;
  v14 = sub_1000056E0(v30);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  static LogMessage.sensitive(_:)();
  sub_10003D444(v30);
  Logger.error(_:)();

  v15 = HttpAction.failureAction.getter();
  if (v15)
  {
    v16 = v15;
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v31 = type metadata accessor for Action();
    v32 = sub_10051B780(&qword_100989C80, &type metadata accessor for Action);
    v30[0] = v16;
    v18 = v25;
    v17 = v26;
    v19 = v23;
    (*(v25 + 104))(v23, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v26);

    ActionDispatcher.perform(_:withMetrics:asPartOf:)();

    (*(v18 + 8))(v19, v17);
    (*(v22 + 8))(v10, v8);
    sub_100007000(v30);
  }

  return Promise.reject(_:)();
}

uint64_t sub_10051B2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bag();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v31 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v26 - v8;
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v32 = Promise.__allocating_init()();
  sub_100005744(0, &unk_100989C60, AMSURLSession_ptr);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v10 = v33[0];
  v29 = v4;
  v30 = v9;
  inject<A, B>(_:from:)();
  sub_100005744(0, &qword_1009764B0, AMSProcessInfo_ptr);
  inject<A, B>(_:from:)();
  v11 = v33[0];
  type metadata accessor for ASKBagContract();
  inject<A, B>(_:from:)();
  v12 = v33[0];
  sub_10002849C(&unk_100989C70, &qword_1007D3160);
  inject<A, B>(_:from:)();
  v13 = v33[0];
  if (HttpAction.needsMediaToken.getter())
  {
    swift_unknownObjectRetain();
  }

  v26[2] = v13;
  v27 = v11;
  v14 = v30;
  v28 = v12;
  v26[1] = HttpAction.start(urlSession:bag:process:bagContract:mediaTokenService:)();
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
  v23 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v24 = static OS_dispatch_queue.main.getter();
  v33[3] = v23;
  v33[4] = &protocol witness table for OS_dispatch_queue;
  v33[0] = v24;
  Promise.then(perform:orCatchError:on:)();
  swift_unknownObjectRelease();

  (*(v5 + 8))(v14, v16);
  sub_100007000(v33);
  return v21;
}

uint64_t sub_10051B6C8(id *a1)
{
  v3 = *(type metadata accessor for Bag() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_10051A6E4(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_10051B780(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_10051B7D4()
{
  result = qword_100989C90;
  if (!qword_100989C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989C90);
  }

  return result;
}

unint64_t sub_10051B83C()
{
  result = qword_100989C98;
  if (!qword_100989C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989C98);
  }

  return result;
}

uint64_t sub_10051B890()
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
  qword_100989CA0 = v1;
  return result;
}

void sub_10051BAA4(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B15F0;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent:a1];

  v11 = [v10 CGColor];
  *(v7 + 32) = v11;
  v12 = [v8 blackColor];
  v13 = [v12 colorWithAlphaComponent:a2];

  v14 = [v13 CGColor];
  *(v7 + 40) = v14;
  *a4 = v7;
}

char *sub_10051BBE0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v4[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient] = 1;
  v4[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient] = 1;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for HeroGradientView();
  v10 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 setUserInteractionEnabled:0];
  v15 = OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient;
  [*&v14[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient] setAnchorPoint:{0.0, 0.0}];
  v16 = qword_10096E820;
  v17 = *&v14[v15];
  if (v16 != -1)
  {
    swift_once();
  }

  sub_10002849C(&unk_10097A780, &unk_1007CC250);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v17 setActions:isa];

  v19 = [v14 layer];
  [v19 addSublayer:*&v14[v15]];

  sub_10051BF24();
  return v14;
}

id sub_10051BF24()
{
  if ((v0[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient] & 1) != 0 || v0[OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient];
    [v1 setHidden:0];
    [v0 bounds];
    sub_10051C094(v2, v3);
    v5 = v4;
    sub_100194454();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setLocations:isa];

    sub_1002A4E98(v5);

    v7 = Array._bridgeToObjectiveC()().super.isa;

    [v1 setColors:v7];

    v8 = "setNeedsDisplay";
    v9 = v1;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC8AppStore16HeroGradientView_gradient];
    v8 = "setHidden:";
  }

  return [v9 v8];
}

uint64_t sub_10051C094(double a1, double a2)
{
  v3 = v2;
  v4 = 174.0 / a2;
  v5 = [objc_allocWithZone(NSNumber) initWithDouble:174.0 / a2];
  v6 = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v4];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B0B70;
  sub_100194454();
  *(v7 + 32) = NSNumber.init(floatLiteral:)(0.0);
  v22 = v7;
  v8 = OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient;
  if (*(v2 + OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsTopGradient) == 1)
  {
    v9 = v5;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (qword_10096E828 != -1)
    {
      swift_once();
    }

    sub_100394BE8(v10, v11);
    if ((*(v2 + OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient) & 1) == 0)
    {
      v12 = [objc_opt_self() blackColor];
      v13 = [v12 colorWithAlphaComponent:0.0];

      v14 = [v13 CGColor];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if (*(v3 + OBJC_IVAR____TtC8AppStore16HeroGradientView_wantsBottomGradient) == 1)
  {
    v15 = v6;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((*(v3 + v8) & 1) == 0)
    {
      v16 = [objc_opt_self() blackColor];
      v17 = [v16 colorWithAlphaComponent:0.0];

      v18 = [v17 CGColor];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if (qword_10096E830 != -1)
    {
      swift_once();
    }

    sub_100394BE8(v19, v20);
  }

  NSNumber.init(floatLiteral:)(1.0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v22;
}

id sub_10051C4D8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HeroGradientView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10051C588(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics();
  sub_100005644(v5, a3);
  sub_1000056A8(v5, a3);
  AspectRatio.init(_:_:)();
  return ArcadeWelcomeItemViewLayout.Metrics.init(imageAspectRatio:imageWidth:headingTopSpace:bodyTopSpace:textInsets:)();
}

uint64_t sub_10051C6D8()
{
  v0 = type metadata accessor for AspectRatio();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&qword_100989DD0, &unk_1007D3280);
  sub_100005644(v7, qword_100989D60);
  sub_1000056A8(v7, qword_100989D60);
  if (qword_10096E850 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_100989D48);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096E848 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_100989D30);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

char *sub_10051C8B8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artwork] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkLoader] = 0;
  v4[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_shouldUpdateArtwork] = 0;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_headlineLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_bodyLabel] = v12;
  type metadata accessor for ArtworkView();
  *&v4[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_headlineLabel];
  v15 = v13;
  [v15 addSubview:v14];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_bodyLabel]];
  v16 = OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView]];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v17 = *&v15[v16];
  ArtworkView.backgroundColor.setter();

  sub_10051CA5C();
  return v15;
}

id sub_10051CA5C()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v8)
  {
    v9 = enum case for DirectionalTextAlignment.leading(_:);
    v10 = *(v3 + 104);
    v10(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
    v10(v6, v9, v2);
    return dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_headlineLabel] setTextAlignment:1];
    v12 = *&v1[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_bodyLabel];

    return [v12 setTextAlignment:1];
  }
}

uint64_t sub_10051CE00()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ArcadeWelcomeItemViewLayout();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v31 - v15;
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v36 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v14);
  if (sub_1001E3930())
  {
    if (qword_10096E840 != -1)
    {
      swift_once();
    }

    v17 = qword_100989D18;
  }

  else
  {
    if (qword_10096E838 != -1)
    {
      swift_once();
    }

    v17 = qword_100989D00;
  }

  v18 = sub_1000056A8(v6, v17);
  v19 = *(v7 + 16);
  v20 = v19(v12, v18, v6);
  __chkstk_darwin(v20);
  *(&v31 - 2) = v1;
  Copyable.copyWithOverrides(in:)();
  v21 = *(v7 + 8);
  v21(v12, v6);
  v19(v9, v16, v6);
  v22 = *&v1[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_headlineLabel];
  v46 = type metadata accessor for DynamicTypeLabel();
  v47 = &protocol witness table for UILabel;
  v44 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_bodyLabel];
  v43 = v46;
  v42 = v23;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView];
  v40 = type metadata accessor for ArtworkView();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v28 = v32;
  ArcadeWelcomeItemViewLayout.init(metrics:headingText:bodyText:image:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v29 = v34;
  ArcadeWelcomeItemViewLayout.placeChildren(relativeTo:in:)();
  (*(v37 + 8))(v29, v38);
  sub_10051D2B4();
  (*(v33 + 8))(v28, v35);
  return (v21)(v16, v6);
}

uint64_t sub_10051D254()
{
  swift_getObjectType();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v1);
  return ArcadeWelcomeItemViewLayout.Metrics.imageWidth.setter();
}

void sub_10051D2B4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = 0.0;
  v15.size.height = 0.0;
  if (!CGRectEqualToRect(v14, v15))
  {
    v6 = OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_shouldUpdateArtwork;
    if (v0[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_shouldUpdateArtwork] == 1)
    {
      if (*&v0[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artwork])
      {
        v7 = qword_10096E858;

        if (v7 != -1)
        {
          swift_once();
        }

        v8 = sub_10002849C(&qword_100989DD0, &unk_1007D3280);
        sub_1000056A8(v8, qword_100989D60);
        v13 = v1;
        v9 = v1;
        Conditional.evaluate(with:)();

        LayoutMarginsAware<>.layoutFrame.getter();
        AspectRatio.maxSize(fitting:)();
        (*(v3 + 8))(v5, v2);
        Artwork.config(using:)();
        if (*&v9[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkLoader])
        {
          v12 = *&v9[OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView];
          v10 = v12;
          type metadata accessor for ArtworkView();
          sub_10051DD24();

          v11 = v10;
          AnyHashable.init<A>(_:)();
          swift_allocObject();
          swift_unknownObjectWeakInit();

          ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

          sub_1000C36CC(&v13);
        }

        else
        {
        }
      }

      *(v1 + v6) = 0;
    }
  }
}

double sub_10051D5D4(uint64_t a1, __n128 a2, double a3)
{
  v4 = v3;
  v34 = a1;
  v6 = a2.n128_u64[0];
  v35 = type metadata accessor for ArcadeWelcomeItemViewLayout();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArcadeWelcomeItemViewLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  if (sub_1001E3930())
  {
    if (qword_10096E840 != -1)
    {
      swift_once();
    }

    v18 = qword_100989D18;
  }

  else
  {
    if (qword_10096E838 != -1)
    {
      swift_once();
    }

    v18 = qword_100989D00;
  }

  v19 = sub_1000056A8(v9, v18);
  v20 = *(v10 + 16);
  v21 = v20(v14, v19, v9);
  __chkstk_darwin(v21);
  *(&v32 - 2) = v6;
  *(&v32 - 1) = a3;
  Copyable.copyWithOverrides(in:)();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v20(v32, v17, v9);
  v23 = *(v3 + OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_headlineLabel);
  v43 = type metadata accessor for DynamicTypeLabel();
  v44 = &protocol witness table for UILabel;
  v41 = &protocol witness table for UILabel;
  v42 = v23;
  v24 = *(v4 + OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_bodyLabel);
  v40 = v43;
  v39 = v24;
  v25 = *(v4 + OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView);
  v37 = type metadata accessor for ArtworkView();
  v38 = &protocol witness table for UIView;
  v36 = v25;
  v26 = v23;
  v27 = v24;
  v28 = v25;
  ArcadeWelcomeItemViewLayout.init(metrics:headingText:bodyText:image:)();
  ArcadeWelcomeItemViewLayout.measurements(fitting:in:)();
  v30 = v29;
  (*(v33 + 8))(v8, v35);
  v22(v17, v9);
  return v30;
}

void sub_10051DA18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView;
      v8 = *(Strong + OBJC_IVAR____TtC8AppStore21ArcadeWelcomeItemView_artworkView);
      v9 = Strong;
      v10 = a1;
      v11 = v8;
      [v10 size];
      ArtworkView.imageSize.getter();
      CGSize.fitting(_:mode:)();
      ArtworkView.imageSize.setter();

      v12 = *&v9[v7];
      v13 = v10;
      v14 = v12;
      v16.value.super.isa = a1;
      v16.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v16, v15);
    }
  }
}

id sub_10051DB10(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (!a1 || (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != (v5 & 1))
  {
    sub_10051CA5C();
  }

  return [v2 setNeedsLayout];
}

unint64_t sub_10051DD24()
{
  result = qword_1009777D0;
  if (!qword_1009777D0)
  {
    type metadata accessor for ArtworkView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009777D0);
  }

  return result;
}

__n128 sub_10051DD84(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_10051DDB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_10051DE00(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10051DE7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10051DEC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10051DF20(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  sub_10002A400((v3 + 56), *(v3 + 80));
  dispatch thunk of Placeable.measure(toFit:with:)();
  sub_10002A400(v4 + 12, v4[15]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  sub_10002A400(v4 + 17, v4[20]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  sub_10051E578(v3, v7);
  sub_10002A400(v7, v7[3]);
  AnyDimension.value(with:)();
  sub_100007000(v7);
  return a2;
}

void sub_10051E08C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  sub_10002A400((v5 + 56), *(v5 + 80));
  dispatch thunk of Placeable.measure(toFit:with:)();
  v12 = v11 + 4.0;
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  v13 = CGRectGetWidth(v31) - v12 - *(v5 + 40);
  sub_10002A400(v6 + 12, v6[15]);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectGetHeight(v32);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v28 = v14;
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectGetHeight(v33);
  v29 = *(v5 + 48);
  sub_10002A400(v6 + 17, v6[20]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v27 = v15;
  v17 = v16;
  v25 = v16;
  v26 = v18;
  v19 = v18;
  sub_10051E578(v5, v30);
  sub_10002A400(v30, v30[3]);
  AnyDimension.value(with:)();
  v21 = v20;
  sub_100007000(v30);
  if (v21 <= v28 + v29 + v17 - v19)
  {
    v21 = v28 + v29 + v17 - v19;
  }

  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  CGRectGetMinX(v34);
  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetMinY(v35);
  if (v27 >= v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = v27;
  }

  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  v23 = CGRectGetWidth(v36) - v22;
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  v24 = v26 + v21 + CGRectGetMinY(v37) - v25;
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetWidth(v38);
  v39.origin.x = v23;
  v39.origin.y = v24;
  v39.size.width = v27;
  v39.size.height = v25;
  CGRectGetMinY(v39);
  sub_10002A400((v5 + 56), *(v5 + 80));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400((v5 + 136), *(v5 + 160));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400((v5 + 96), *(v5 + 120));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
}

uint64_t sub_10051E420(uint64_t a1, uint64_t a2)
{
  v4 = sub_10051E5B0();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_10051E478()
{
  result = qword_100989DD8;
  if (!qword_100989DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989DD8);
  }

  return result;
}

unint64_t sub_10051E4D0()
{
  result = qword_100989DE0;
  if (!qword_100989DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989DE0);
  }

  return result;
}

unint64_t sub_10051E5B0()
{
  result = qword_100989DE8;
  if (!qword_100989DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989DE8);
  }

  return result;
}

void sub_10051E624(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SearchResultsContextCardView.Style(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

id sub_10051E714(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v5 - 8);
  v6 = LinkableText.styledText.getter();
  v7 = LinkableText.linkedSubstrings.getter();
  sub_100746314(v7, sub_100520344);
  v9 = v8;

  sub_1004F78BC(v6, v9);

  if (a2)
  {
    sub_100005744(0, &qword_1009811E0, UIButton_ptr);
    v10 = [v3 traitCollection];
    sub_10051F36C(a2, v10);

    v11 = a2;
    v12 = UIButton.init(configuration:primaryAction:)();
  }

  else
  {
    v12 = 0;
  }

  v13 = *&v3[qword_100989E00];
  *&v3[qword_100989E00] = v12;
  v14 = v12;
  sub_10051FC1C(v13);

  return [v3 setNeedsLayout];
}

uint64_t sub_10051E8C0()
{
  v36 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  __chkstk_darwin(v36);
  v33 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for FontUseCase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Shadow();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v37 = &v30 - v10;
  v11 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SearchResultsContextCardView.Style(0);
  sub_100005644(v14, qword_1009D28C0);
  v15 = sub_1000056A8(v14, qword_1009D28C0);
  if (qword_10096E868 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v11, qword_1009D28D8);
  v34 = v13;
  sub_1005211A8(v16, v13, type metadata accessor for SearchResultsContextCardView.Style.Metrics);
  v31 = objc_opt_self();
  v32 = [v31 secondarySystemGroupedBackgroundColor];
  if (qword_10096DA78 != -1)
  {
    swift_once();
  }

  v17 = v5;
  v18 = sub_1000056A8(v5, qword_1009CFDC8);
  v35 = v6;
  v19 = *(v6 + 16);
  v19(v37, v18, v17);
  if (qword_10096DA80 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v17, qword_1009CFDE0);
  v30 = v8;
  v19(v8, v20, v17);
  v21 = v17;
  if (qword_10096E188 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v1, qword_1009D1418);
  v23 = v2;
  v24 = *(v2 + 16);
  v24(v4, v22, v1);
  v25 = v33;
  v24(v33, v22, v1);
  v26 = [v31 labelColor];
  v27 = v36;
  *(v25 + *(v36 + 20)) = v26;
  *(v25 + *(v27 + 24)) = 0;
  *(v25 + *(v27 + 28)) = 0;
  sub_100521140(v34, v15, type metadata accessor for SearchResultsContextCardView.Style.Metrics);
  *(v15 + v14[5]) = v32;
  v28 = *(v35 + 32);
  v28(v15 + v14[6], v37, v21);
  v28(v15 + v14[7], v30, v21);
  (*(v23 + 32))(v15 + v14[8], v4, v1);
  return sub_100521140(v25, v15 + v14[9], type metadata accessor for SearchResultsContextCardView.Style.Message);
}

uint64_t sub_10051ED98()
{
  v0 = type metadata accessor for SearchResultsContextCardLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  sub_100005644(v8, qword_1009D28D8);
  v9 = sub_1000056A8(v8, qword_1009D28D8);
  (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
  static SearchResultsContextCardLayout.Metrics.standard.getter();
  *v9 = 0x4038000000000000;
  (*(v5 + 32))(&v9[v8[5]], v7, v4);
  *&v9[v8[6]] = 0x4014000000000000;
  return (*(v1 + 32))(&v9[v8[7]], v3, v0);
}

id sub_10051EF70()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, v1, v5, v7);
  v11 = type metadata accessor for SearchResultsContextCardView.Style.Message(0);
  v12 = *(v11 + 20);
  v32 = *(v1 + *(v11 + 24));
  v13 = *(v1 + v12);
  v14 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v15 = objc_allocWithZone(v14);
  *&v15[qword_100989190] = _swiftEmptyArrayStorage;
  *&v15[qword_100989198] = 0;
  v37.receiver = v15;
  v37.super_class = v14;
  v16 = v13;
  v17 = objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = v9;
  v18 = v9;
  v19 = v5;
  (v10)(v4, v18, v5);
  v20 = v6;
  (*(v6 + 56))(v4, 0, 1, v19);
  v21 = v17;
  dispatch thunk of DynamicTypeTextView.fontUseCase.setter();
  dispatch thunk of DynamicTypeTextView.numberOfLines.setter();

  dispatch thunk of DynamicTypeTextView.lineBreakMode.setter();
  v36.receiver = v21;
  v36.super_class = v14;
  v22 = v16;
  v23 = objc_msgSendSuper2(&v36, "textColor");
  v35.receiver = v21;
  v35.super_class = v14;
  objc_msgSendSuper2(&v35, "setTextColor:", v22);
  v34.receiver = v21;
  v34.super_class = v14;
  v24 = objc_msgSendSuper2(&v34, "textColor");
  if (v24)
  {
    v25 = v24;
    if (v23)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v26 = v23;
      v27 = static NSObject.== infix(_:_:)();

      if (v27)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else
  {
    v26 = v22;
    if (!v23)
    {
      goto LABEL_10;
    }
  }

  sub_1004F6A30();
  v26 = v23;
LABEL_9:

LABEL_10:
  v28 = v21;
  [v28 setSelectable:1];
  v29 = v28;
  [v29 setEditable:0];
  [v29 setScrollEnabled:0];
  [v29 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v29 setContentInsetAdjustmentBehavior:2];
  v30 = [objc_opt_self() clearColor];
  [v29 setBackgroundColor:v30];

  [v29 setDelegate:v29];
  [v29 _setInteractiveTextSelectionDisabled:1];

  (*(v20 + 8))(v33, v19);
  return v29;
}

void sub_10051F36C(void *a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100987100, &qword_1007CF950);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-v4];
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  type metadata accessor for SearchResultsContextCardView.Style(0);
  v6 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  static UIButton.Configuration.plain()();
  v7 = UIButton.Configuration.contentInsets.modify();
  *(v8 + 8) = 0;
  v7(v22, 0);
  v9 = UIButton.Configuration.contentInsets.modify();
  *(v10 + 24) = 0;
  v9(v22, 0);
  v11 = [a1 title];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UIButton.Configuration.title.setter();
  *(swift_allocObject() + 16) = v6;
  v12 = v6;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v13 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v14 = [a1 image];
  if (v14)
  {
    v15 = v14;
    UIButton.Configuration.image.setter();
    if ([v15 isSymbolImage])
    {
      v16 = [objc_opt_self() configurationWithFont:v12 scale:1];
      UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    }

    v17 = [a1 title];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      UIButton.Configuration.imagePlacement.setter();
      type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
      UIButton.Configuration.imagePadding.setter();
    }
  }
}

uint64_t sub_10051F650@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_1001469E0();
  v7 = a2;
  return AttributeContainer.subscript.setter();
}

double *sub_10051F6F0(double *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v4 - 8);
  v42 = v37 - v5;
  v6 = type metadata accessor for CornerStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_1009D28F0;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  *&v2[qword_100989E00] = 0;
  v12 = a1;
  sub_1005211A8(a1, &v2[qword_100989DF0], type metadata accessor for SearchResultsContextCardView.Style);
  type metadata accessor for RoundedCornerView();
  v13 = type metadata accessor for SearchResultsContextCardView.Style.Metrics(0);
  v14 = *(v7 + 16);
  v15 = a1 + *(v13 + 20);
  v16 = *(v13 + 20);
  v41 = v16;
  v39 = v6;
  v14(v9, v15, v6);
  v38 = v14;
  v40 = v7 + 16;
  v17 = RoundedCornerView.__allocating_init(radius:style:)();
  v18 = type metadata accessor for SearchResultsContextCardView.Style(0);
  v19 = *(v18 + 20);
  v20 = v18;
  v37[0] = v18;
  [v17 setBackgroundColor:*(v12 + v19)];
  *&v2[qword_100989E18] = v17;
  v37[1] = type metadata accessor for ShadowView();
  v14(v9, v12 + v16, v6);
  v21 = ShadowView.__allocating_init(radius:style:)();
  v22 = *(v20 + 24);
  v23 = type metadata accessor for Shadow();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v26 = v12 + v22;
  v27 = v12;
  v28 = v42;
  v25(v42, v26, v23);
  v29 = *(v24 + 56);
  v29(v28, 0, 1, v23);
  dispatch thunk of ShadowView.shadow.setter();
  *&v2[qword_100989E08] = v21;
  v38(v9, v27 + v41, v39);
  v30 = ShadowView.__allocating_init(radius:style:)();
  v25(v28, (v27 + *(v37[0] + 28)), v23);
  v29(v28, 0, 1, v23);
  dispatch thunk of ShadowView.shadow.setter();
  *&v2[qword_100989E10] = v30;
  *&v2[qword_100989DF8] = sub_10051EF70();
  v44.receiver = v2;
  v44.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v44, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v35 addSubview:*(v35 + qword_100989E08)];
  [v35 addSubview:*(v35 + qword_100989E10)];
  [v35 addSubview:*(v35 + qword_100989E18)];
  [v35 addSubview:*(v35 + qword_100989DF8)];

  sub_100521210(v27);
  return v35;
}

void sub_10051FB64(uint64_t a1)
{
  v2 = qword_1009D28F0;
  v3 = type metadata accessor for ItemLayoutContext();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  *(a1 + qword_100989E00) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10051FC1C(void *a1)
{
  v2 = qword_100989E00;
  v3 = *&v1[qword_100989E00];
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }

    [a1 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = v3;
  [v1 addSubview:v4];
  [v1 setNeedsLayout];
}

uint64_t sub_10051FCC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SearchResultsContextCardLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for DynamicTypeLinkedTextView(0);
  Measurable.placeable.getter();
  v4 = *(v1 + qword_100989E00);
  if (v4)
  {
    sub_100005744(0, &qword_1009811E0, UIButton_ptr);
  }

  v5 = v4;
  static SearchResultsContextCardLayout.Metrics.standard.getter();
  a1[3] = type metadata accessor for SearchResultsContextCardLayout();
  a1[4] = sub_10052126C(&qword_10098A058, &type metadata accessor for SearchResultsContextCardLayout, &protocol conformance descriptor for SearchResultsContextCardLayout);
  sub_1000056E0(a1);
  return SearchResultsContextCardLayout.init(metrics:message:button:)();
}

id sub_10051FE18()
{
  type metadata accessor for CustomLayoutView();
  v1 = method lookup function for CustomLayoutView();
  v1();
  v2 = *&v0[qword_100989E08];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[qword_100989E10];
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *&v0[qword_100989E18];
  [v0 bounds];

  return [v4 setFrame:?];
}

void sub_10051FF14()
{
  sub_1000284E4(v0 + qword_1009D28F0);
  sub_100521210(v0 + qword_100989DF0);

  v1 = *(v0 + qword_100989E18);
}

void sub_10051FFA4(uint64_t a1)
{
  sub_1000284E4(a1 + qword_1009D28F0);
  sub_100521210(a1 + qword_100989DF0);

  v2 = *(a1 + qword_100989E18);
}

uint64_t sub_1005200D0(uint64_t a1)
{
  result = type metadata accessor for SearchResultsContextCardView.Style.Metrics(319);
  if (v2 <= 0x3F)
  {
    result = sub_100005744(319, &qword_100970180, UIColor_ptr);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Shadow();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for FontUseCase();
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for SearchResultsContextCardView.Style.Message(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1005201D4(uint64_t a1)
{
  type metadata accessor for FontUseCase();
  if (v1 <= 0x3F)
  {
    sub_100005744(319, &qword_100970180, UIColor_ptr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NSLineBreakMode(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1005202B0(uint64_t a1)
{
  result = type metadata accessor for CornerStyle();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SearchResultsContextCardLayout.Metrics();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100520354(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v108 = a5;
  v116 = sub_10002849C(&qword_10098A040, "F]\a");
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v92 - v9;
  v10 = type metadata accessor for SearchResultsContextCardLayout.Metrics();
  __chkstk_darwin(v10 - 8);
  v112 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for UIButton.Configuration();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for TextAppearance();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v100 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v101 = &v92 - v15;
  __chkstk_darwin(v16);
  v102 = &v92 - v17;
  __chkstk_darwin(v18);
  v103 = &v92 - v19;
  __chkstk_darwin(v20);
  v104 = &v92 - v21;
  __chkstk_darwin(v22);
  v105 = &v92 - v23;
  v111 = type metadata accessor for SearchResultsContextCardLayout();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v26 = *(type metadata accessor for SearchResultsContextCardView.Style(0) + 36);
  v96 = a6;
  v27 = a6 + v26;
  v114 = a1;
  v28 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v119 = type metadata accessor for DynamicTypeLinkedTextView(0);
  v29 = *(v27 + *(type metadata accessor for SearchResultsContextCardView.Style.Message(0) + 24));
  v30 = [objc_opt_self() labelColor];
  v31 = LinkableText.styledText.getter();
  v32 = LinkableText.linkedSubstrings.getter();
  sub_100746314(v32, sub_100520344);
  v120 = v33;

  v34 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v34 setAlignment:4];
  [v34 setLineBreakMode:v29];
  sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v36 = sub_100005744(0, &unk_100976610, NSMutableParagraphStyle_ptr);
  *(inited + 40) = v34;
  *(inited + 64) = v36;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v25;
  *(inited + 80) = v28;
  v37 = NSParagraphStyleAttributeName;
  v38 = v34;
  v39 = NSFontAttributeName;
  v40 = v28;
  v41 = sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0, &unk_1007B2BF0);
  swift_arrayDestroy();
  v131 = sub_100005744(0, &qword_100970180, UIColor_ptr);
  *&aBlock = v30;
  sub_100056164(&aBlock, &v125);
  v98 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v134 = v41;
  sub_100051368(&v125, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
  v135 = v134;

  sub_100005744(0, &qword_100989250, NSMutableAttributedString_ptr);
  v118 = v40;
  v99 = v31;
  v43 = dispatch thunk of StyledText.asAttributedString(using:)();
  v44._rawValue = v135;

  isa = NSAttributedString.init(attributedString:defaultAttributes:)(v43, v44).super.isa;
  v46 = v38;
  v47 = isa;
  v48 = [(objc_class *)v47 fullRange];
  [(objc_class *)v47 addAttribute:v37 value:v46 range:v48, v49];
  v97 = v46;

  v117 = swift_allocObject();
  *(v117 + 16) = 0;
  *&v125 = 0;
  v50 = *(v120 + 16);
  v122 = NSLinkAttributeName;
  if (v50)
  {
    v121 = NSUnderlineStyleAttributeName;
    v51 = v120 + 72;
    do
    {
      v52 = *(v51 - 24);
      v123 = *(v51 - 8);

      v124 = v52;

      v53 = v47;
      v54 = sub_1004F81C4(&v125, v47);
      v55 = String._bridgeToObjectiveC()();
      v56 = [v54 rangeOfString:v55 options:4];
      v58 = v57;

      v47 = v53;
      if (v56 != NSNotFound.getter())
      {
        v59 = String._bridgeToObjectiveC()();
        [(objc_class *)v53 addAttribute:v122 value:v59 range:v56, v58];

        if (UIAccessibilityButtonShapesEnabled())
        {
          v60 = Int._bridgeToObjectiveC()().super.super.isa;
          [(objc_class *)v53 addAttribute:v121 value:v60 range:v56, v58];
        }
      }

      v51 += 48;

      --v50;
    }

    while (v50);
  }

  v61 = [(objc_class *)v47 fullRange];
  v63 = v62;
  v64 = v47;
  v65 = swift_allocObject();
  v66 = v120;
  v65[2] = v119;
  v65[3] = v66;
  v67 = v118;
  v65[4] = v117;
  v65[5] = v67;
  v65[6] = &v135;
  v65[7] = v64;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_1004F8984;
  *(v68 + 24) = v65;
  v132 = sub_1002CA5FC;
  v133 = v68;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v130 = sub_1006607C0;
  v131 = &unk_1008C74B0;
  v69 = _Block_copy(&aBlock);
  v70 = v67;

  [(objc_class *)v64 enumerateAttribute:v122 inRange:v61 options:v63 usingBlock:0, v69];
  _Block_release(v69);
  LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

  if (v67)
  {
    __break(1u);
  }

  else
  {
    v71 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v64];

    v72 = v125;

    v131 = type metadata accessor for LabelPlaceholder();
    v132 = &protocol witness table for LabelPlaceholder;
    sub_1000056E0(&aBlock);
    v73 = v70;
    v74 = v71;
    v75 = v100;
    TextAppearance.init()();
    v76 = v101;
    TextAppearance.withFont(_:)();
    v77 = *(v106 + 8);
    v78 = v107;
    v77(v75, v107);
    v79 = v102;
    TextAppearance.withTextAlignment(_:)();
    v77(v76, v78);
    v80 = v103;
    TextAppearance.withLineBreakMode(_:)();
    v77(v79, v78);
    v81 = v104;
    TextAppearance.withLineSpacing(_:)();
    v77(v80, v78);
    TextAppearance.withNumberOfLines(_:)();
    v77(v81, v78);
    LabelPlaceholder.Options.init(rawValue:)();
    v82 = v74;
    LabelPlaceholder.init(_:with:where:)();

    if (v108)
    {
      v83 = v108;
      v84 = v93;
      sub_10051F36C(v83, v114);
      v85 = type metadata accessor for ButtonPlaceholder(0);
      v86 = swift_allocObject();
      *(v86 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button) = 0;
      (*(v94 + 32))(v86 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration, v84, v95);

      v87 = sub_10052126C(&qword_10098A050, type metadata accessor for ButtonPlaceholder, &protocol conformance descriptor for ButtonPlaceholder);
    }

    else
    {
      v86 = 0;
      v85 = 0;
      v87 = 0;
      v126 = 0;
      *(&v125 + 1) = 0;
    }

    *&v125 = v86;
    v127 = v85;
    v128 = v87;
    static SearchResultsContextCardLayout.Metrics.standard.getter();
    v88 = v109;
    SearchResultsContextCardLayout.init(metrics:message:button:)();
    sub_10052126C(&qword_10098A048, &type metadata accessor for SearchResultsContextCardLayout, &protocol conformance descriptor for SearchResultsContextCardLayout);
    v89 = v113;
    v90 = v111;
    dispatch thunk of CustomLayout.layout.getter();
    swift_getOpaqueTypeConformance2();
    v91 = v116;
    dispatch thunk of Placeable.measure(toFit:with:)();

    (*(v115 + 8))(v89, v91);
    (*(v110 + 8))(v88, v90);
  }
}

uint64_t sub_100521140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005211A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100521210(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsContextCardView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10052126C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005212B4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for StaticDimension();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v38 = &v27[-v7];
  __chkstk_darwin(v8);
  v36 = &v27[-v9];
  v10 = type metadata accessor for BadgeParagraphView.Metrics(0);
  sub_100005644(v10, qword_1009D2908);
  v31 = v10;
  v30 = sub_1000056A8(v10, qword_1009D2908);
  if (qword_10096DE50 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v29 = sub_1000056A8(v11, qword_1009D0A70);
  v12 = *(v11 - 8);
  v35 = *(v12 + 16);
  v37 = v12 + 16;
  v35(v3, v29, v11);
  v13 = enum case for FontSource.useCase(_:);
  v14 = v1[13];
  v14(v3, enum case for FontSource.useCase(_:), v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v39);
  v16 = v1[2];
  v16(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17 = v1[1];
  v17(v3, v0);
  v35(v3, v29, v11);
  v28 = v13;
  v14(v3, v13, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v39);
  v29 = v16;
  v16(v18, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  if (qword_10096DE68 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v11, qword_1009D0AB8);
  v35(v3, v19, v11);
  v14(v3, v28, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v39);
  v29(v20, v3, v0);
  v21 = v32;
  StaticDimension.init(_:scaledLike:)();
  v17(v3, v0);
  v22 = v34;
  v23 = *(v33 + 32);
  v24 = v30;
  v23(v30, v36, v34);
  v25 = v31;
  v23(v24 + *(v31 + 20), v38, v22);
  return (v23)(v24 + *(v25 + 24), v21, v22);
}

char *sub_100521730(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v16 = v42 - v15;
  if (qword_10096E870 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for BadgeParagraphView.Metrics(0);
  v18 = sub_1000056A8(v17, qword_1009D2908);
  sub_1005226A4(v18, &v5[OBJC_IVAR____TtC8AppStore18BadgeParagraphView_metrics]);
  if (qword_10096DE50 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D0A70);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v16, v20, v19);
  (*(v21 + 56))(v16, 0, 1, v19);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v23 = type metadata accessor for BadgeParagraphView(0);
  v43.receiver = v5;
  v43.super_class = v23;
  v24 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel;
  v30 = *&v28[OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 systemGrayColor];
  [v32 setTextColor:v33];

  v34 = [v28 traitCollection];
  isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v34).super.isa;
  v36 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (!v36)
  {
    goto LABEL_8;
  }

  v37 = [objc_opt_self() fontWithDescriptor:v36 size:0.0];

  if (v37)
  {
    [*&v28[v29] setFont:v37];
    v34 = v37;
LABEL_8:
  }

  [v28 addSubview:*&v28[v29]];
  v38 = [v28 traitCollection];
  UITraitCollection.prefersRightToLeftLayouts.getter();

  UILabel.alignment.setter();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007B10D0;
  *(v39 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v42[3] = v23;
  v42[0] = v28;
  v40 = v28;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v42);
  return v40;
}

id sub_100521D28()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BadgeParagraphView(0);
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.isRegularPad.getter();

  if (v8)
  {
    type metadata accessor for BadgeParagraphView.Metrics(0);
  }

  static Dimensions.defaultRoundingRule.getter();
  type metadata accessor for StaticDimension();
  AnyDimension.value(in:rounded:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = *&v1[OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v10 measurementsWithFitting:v1 in:{v11, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.down(_:), v2);
  CGPoint.rounded(_:)();
  v9(v5, v2);
  v13 = [v1 traitCollection];
  [v13 layoutDirection];

  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(_:relativeTo:)();
  return [v10 setFrame:?];
}

uint64_t sub_100521FE0(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BadgeParagraphView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (!a1 || (result = UITraitCollection.prefersRightToLeftLayouts.getter(), (result & 1) != (v5 & 1)))
  {
    v7 = [v2 traitCollection];
    UITraitCollection.prefersRightToLeftLayouts.getter();

    return UILabel.alignment.setter();
  }

  return result;
}

void sub_100522130()
{
  v1 = v0;
  if (qword_10096DE50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FontUseCase();
  sub_1000056A8(v2, qword_1009D0A70);
  v7 = [v0 traitCollection];
  isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v7).super.isa;
  v4 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (v4)
  {
    v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    if (!v5)
    {
      return;
    }

    [*&v1[OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel] setFont:v5];
    v6 = v5;
  }

  else
  {
    v6 = v7;
  }
}

id sub_1005222D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgeParagraphView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100522384(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for BadgeParagraphView.Metrics(319);
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

uint64_t sub_10052246C(uint64_t a1)
{
  result = type metadata accessor for StaticDimension();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1005224E0(uint64_t a1, double a2, double a3)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BadgeParagraphView.Metrics(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E870 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v9, qword_1009D2908);
  sub_1005226A4(v12, v11);
  UITraitCollection.isRegularPad.getter();
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  (*(v6 + 8))(v8, v5);
  if (a3 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a3;
  }

  v14 = ceil(v13);
  sub_100522708(v11);
  return v14;
}

uint64_t sub_1005226A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100522708(uint64_t a1)
{
  v2 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100522950()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productRatingView];
  if (v11)
  {
    [v11 setFrame:{v4, v6, v8, v10}];
  }

  result = *&v1[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (result)
  {
    return [result setFrame:{v4, v6, v8, v10}];
  }

  return result;
}

void sub_100522A7C(double a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (v3)
  {
    [*(v3 + OBJC_IVAR____TtC8AppStore20ProductNoRatingsView_statusLabel) measurementsWithFitting:v2 in:{a1, a2}];
  }

  else
  {
    v4 = *&v2[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productRatingView];
    if (v4)
    {
      v5 = v4;
      v6 = [v2 traitCollection];
      CustomLayoutView.measure(toFit:with:)();
    }
  }
}

id sub_100522BA0(uint64_t a1, char a2)
{
  v3 = v2;
  Ratings.status.getter();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productNoRatingsView;
    v8 = *&v2[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productNoRatingsView];
    if (v8)
    {
      v9 = *&v2[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productNoRatingsView];
    }

    else
    {
      v12 = [objc_allocWithZone(type metadata accessor for ProductNoRatingsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v13 = [v2 contentView];
      [v13 addSubview:v12];

      v14 = *&v2[v7];
      *&v2[v7] = v12;
      v9 = v12;

      v8 = 0;
    }

    v15 = *&v9[OBJC_IVAR____TtC8AppStore20ProductNoRatingsView_statusLabel];
    v16 = v8;
    v17 = String._bridgeToObjectiveC()();

    [v15 setText:v17];

    [v9 setNeedsLayout];
  }

  else
  {
    v10 = OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productRatingView;
    v11 = *&v2[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productRatingView];
    if (v11)
    {
      v9 = *&v2[OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_productRatingView];
    }

    else
    {
      v18 = [objc_allocWithZone(type metadata accessor for ProductRatingsView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v19 = [v3 contentView];
      [v19 addSubview:v18];

      v20 = *&v3[v10];
      *&v3[v10] = v18;
      v9 = v18;

      v11 = 0;
    }

    v21 = v11;
    sub_1001E1AA4(a1, a2 & 1);
  }

  return [v3 setNeedsLayout];
}

uint64_t type metadata accessor for ProductRatingsCollectionViewCell(uint64_t a1)
{
  result = qword_10098A170;
  if (!qword_10098A170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100522E44(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for AccountButton(uint64_t a1)
{
  result = qword_10098A1F0;
  if (!qword_10098A1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100522F2C(uint64_t a1)
{
  sub_10052914C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_10052304C()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.personCropCircle(_:), v0, v2);
  v5 = static SystemImage.load(_:with:)();
  result = (*(v1 + 8))(v4, v0);
  qword_10098A180 = v5;
  return result;
}

uint64_t sub_100523144()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  result = static UIColor.mediaBorder.getter();
  qword_10098A188 = result;
  return result;
}

uint64_t sub_100523188()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_10098A190);
  sub_1000056A8(v4, qword_10098A190);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t (*sub_1005232E4(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100529B7C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100055FCC;
}

double sub_100523374(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = qword_10098A1C0;
    if (*&Strong[qword_10098A1C0])
    {

      if (dispatch thunk of DispatchWorkItem.isCancelled.getter())
      {
        goto LABEL_16;
      }

      v7 = [v5 backgroundImageForState:0];
      if (v7)
      {
      }

      else
      {
        v8 = v5[qword_10098A1A8];
        v5[qword_10098A1A8] = 0;
        if (v8 == 1)
        {
          v9 = [v5 layer];
          [v9 setBorderColor:0];

          v10 = [v5 layer];
          [v10 setBorderWidth:0.0];

          [v5 setNeedsDisplay];
        }

        if (qword_10096E878 != -1)
        {
          swift_once();
        }

        [v5 setImage:qword_10098A180 forState:0];
        [v5 alpha];
        if (v11 <= COERCE_DOUBLE(1))
        {
          v12 = objc_opt_self();
          v13 = swift_allocObject();
          *(v13 + 16) = v5;
          aBlock[4] = sub_10006038C;
          aBlock[5] = v13;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100007A08;
          aBlock[3] = &unk_1008C75C8;
          v14 = _Block_copy(aBlock);
          v15 = v5;

          [v12 animateWithDuration:4 delay:v14 options:0 animations:0.33 completion:0.0];
          _Block_release(v14);
        }
      }

      *&v5[v6] = 0;

      if ((a2 & 1) == 0)
      {
LABEL_16:
      }

      else
      {
        v16 = swift_unknownObjectWeakLoadStrong();

        if (v16)
        {
          *(v16 + qword_100984B50) = 0;
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_100523640()
{
  sub_10002B894(v0 + qword_1009D2930, &unk_1009796E0, &unk_1007C02F0);
  sub_10001F64C(v0 + qword_1009D2938);

  v1 = qword_10098A1C8;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_10098A1E8);
}

id sub_100523728()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AccountButton(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1005237A0(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver:v3];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for AccountButton(0);
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_10052382C(uint64_t a1)
{
  sub_10002B894(a1 + qword_1009D2930, &unk_1009796E0, &unk_1007C02F0);
  sub_10001F64C(a1 + qword_1009D2938);

  v2 = qword_10098A1C8;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_10098A1E8);
}

double sub_100523918()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_10098A2E0, &qword_1007BAEA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = v0;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  v8[5] = ObjectType;
  sub_100221B78(0, 0, v4, &unk_1007D35E8, v8);

  return result;
}

uint64_t sub_100523A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_10002849C(&qword_10098A2E0, &qword_1007BAEA0);
  v5[20] = swift_task_alloc();
  v5[21] = type metadata accessor for MainActor();
  v5[22] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[23] = v7;
  v5[24] = v6;

  return _swift_task_switch(sub_100523B24, v7, v6);
}

uint64_t sub_100523B24()
{
  v1 = [objc_opt_self() defaultService];
  v0[25] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_100523C64;
  v2 = swift_continuation_init();
  v0[17] = sub_10002849C(&qword_10098A318, &qword_1007D35F0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100523EA8;
  v0[13] = &unk_1008C7898;
  v0[14] = v2;
  [v1 shouldUseModernUpdatesWithCompletionBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100523C64()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return _swift_task_switch(sub_100523D6C, v2, v1);
}

uint64_t sub_100523D6C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v10 = *(v0 + 144);

  v3 = *(v0 + 208);

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v10;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  *(v7 + 32) = v3;
  *(v7 + 40) = v10;
  sub_100221B78(0, 0, v2, &unk_1007D3600, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100523EA8(uint64_t a1, char a2)
{
  **(*(*sub_10002A400((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_100523F04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 88) = a5;
  *(v5 + 180) = a4;
  type metadata accessor for LogMessage.StringInterpolation();
  *(v5 + 96) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 104) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 112) = v7;
  *(v5 + 120) = v6;

  return _swift_task_switch(sub_100523FCC, v7, v6);
}

uint64_t sub_100523FCC()
{
  if (*(v0 + 180) == 1)
  {
    if (qword_10096E888 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for OSLogger();
    *(v0 + 128) = v1;
    *(v0 + 136) = sub_1000056A8(v1, qword_10098A190);
    *(v0 + 144) = sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    v2 = *(type metadata accessor for LogMessage() - 8);
    *(v0 + 152) = *(v2 + 72);
    *(v0 + 176) = *(v2 + 80);
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    static LogMessage.identity(_:)();
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    v3 = type metadata accessor for AppUpdatesDataSource();
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_1005243E0;

    return BaseObjectGraph.inject<A>(_:)(v0 + 72, v3, v3);
  }

  else
  {

    if (qword_10096E888 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v6 = type metadata accessor for OSLogger();
    sub_1000056A8(v6, qword_10098A190);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    static LogMessage.identity(_:)();
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    v7 = [objc_opt_self() defaultCenter];
    type metadata accessor for UpdateStore();
    v8 = static UpdateStore.didChangeNotification.getter();
    [v7 addObserver:v5 selector:"refreshUpdatesCount" name:v8 object:0];

    if (*(v5 + qword_10098A1E8))
    {
      sub_10052659C();
    }

    else
    {
      sub_100527974();
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1005243E0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1005245C0;
  }

  else
  {
    v5 = sub_10052451C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10052451C()
{
  v1 = v0[11];

  v2 = qword_10098A1E8;
  v3 = *(v1 + qword_10098A1E8);
  *(v1 + qword_10098A1E8) = v0[9];

  if (*(v1 + v2))
  {
    sub_10052659C();
  }

  else
  {
    sub_100527974();
  }

  sub_100526C64();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005245C0()
{

  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100819160;
  v1._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_1000056E0(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894((v0 + 2), &unk_1009711D0, &unk_1007B1A10);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v6 = v0[1];

  return v6();
}

void sub_10052475C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = qword_10098A1D8;
  v6 = *&v2[qword_10098A1D8];
  if (a2)
  {
    if (v6)
    {
      v8 = v6;
      sub_10049C2CC(a1, a2);
    }

    else
    {
      v9 = objc_allocWithZone(type metadata accessor for CountBadgeView());
      v10 = sub_10049BD08(0, a1, a2);
      [v3 addSubview:v10];
      v8 = *&v3[v5];
      *&v3[v5] = v10;
    }

    [v3 setNeedsLayout];
  }

  else
  {
    if (v6)
    {
      [v6 removeFromSuperview];
      v6 = *&v2[v5];
    }

    *&v2[v5] = 0;
  }
}

void sub_100524860()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for AccountButton(0);
  objc_msgSendSuper2(&v12, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v13);
  [v0 bounds];
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = floor(Height * 0.5);
  v4 = [v0 layer];
  [v4 cornerRadius];
  v6 = v5;

  if (vabdd_f64(v6, v3) > COERCE_DOUBLE(1))
  {
    v7 = [v0 layer];
    [v7 setCornerRadius:v3];
  }

  v8 = *&v0[qword_10098A1D8];
  if (v8)
  {
    v9 = v8;
    [v0 frame];
    [v9 sizeThatFits:{v10, v11}];
    [v0 bounds];
    CGRectGetMaxX(v15);
    [v0 bounds];
    CGRectGetMinY(v16);
    [v0 bounds];
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v9 setFrame:?];
  }
}

void sub_100524A18(void *a1)
{
  v1 = a1;
  sub_100524860();
}

void sub_100524A60(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for AccountButton(0);
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, "invalidateIntrinsicContentSize");
  v2 = &v1[qword_10098A1D0];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
}

double sub_100524ACC(void *a1)
{
  v1 = a1;
  sub_100524B10();
  v3 = v2;

  return v3;
}

void sub_100524B10()
{
  v1 = type metadata accessor for FontSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v0[qword_10098A1D0];
  if (v0[qword_10098A1D0 + 16])
  {
    if (qword_10096DC78 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for FontUseCase();
    v7 = sub_1000056A8(v6, qword_1009D0500);
    v8 = [v0 traitCollection];
    (*(*(v6 - 8) + 16))(v4, v7, v6);
    (*(v2 + 104))(v4, enum case for FontSource.useCase(_:), v1);
    v19[3] = v1;
    v19[4] = &protocol witness table for FontSource;
    v9 = sub_1000056E0(v19);
    (*(v2 + 16))(v9, v4, v1);
    CGFloat.scalingLike(_:with:)();
    v11 = v10;
    (*(v2 + 8))(v4, v1);
    sub_100007000(v19);
    v12 = floor(v11);
    Main = JUScreenClassGetMain();

    if (Main == 1)
    {
      v14 = v12 + -5.0;
    }

    else
    {
      v14 = v12;
    }

    [v0 bounds];
    Width = CGRectGetWidth(v20);
    [v0 bounds];
    Height = CGRectGetHeight(v21);
    if (Height >= Width)
    {
      Height = Width;
    }

    if (Height >= v14 || Height <= 0.0)
    {
      Height = v14;
    }

    *v5 = Height;
    v5[1] = Height;
    *(v5 + 16) = 0;
  }
}

void sub_100524DBC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v1 - 8);
  v53 = &v44 - v2;
  v48 = type metadata accessor for FlowOrigin();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FlowAnimationBehavior();
  v5 = *(v47 - 8);
  __chkstk_darwin(v47);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for FlowPresentationContext();
  v46 = *(v50 - 8);
  __chkstk_darwin(v50);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v12 - 8);
  v14 = &v44 - v13;
  v15 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v15 - 8);
  v17 = &v44 - v16;
  v18 = type metadata accessor for FlowPage();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() ams_shieldSignInOrCreateFlows];
  v54 = v17;
  v55 = v0;
  if (v22)
  {
    v23 = v5;
    v24 = v4;
    type metadata accessor for CommerceDialogHandler();
    BaseObjectGraph.inject<A>(_:)();
    v25 = v58;
    v26 = CommerceDialogHandler.presentingViewController.getter();

    if (v26)
    {
      if (qword_10096E888 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for OSLogger();
      sub_1000056A8(v27, qword_10098A190);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1890;
      static LogMessage.identity(_:)();
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      sub_100525924(v26);

      return;
    }

    v4 = v24;
    v5 = v23;
    v17 = v54;
  }

  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  (*(v19 + 104))(v21, enum case for FlowPage.account(_:), v18);
  v28 = type metadata accessor for URL();
  (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
  v29 = type metadata accessor for ReferrerData();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  v56 = 0u;
  v57 = 0u;
  v30 = sub_100525664(0);
  v31 = v50;
  ObjectType = *(v46 + 104);
  ObjectType(v10, enum case for FlowPresentationContext.infer(_:), v50, v30);
  (*(v5 + 104))(v51, enum case for FlowAnimationBehavior.infer(_:), v47);
  (*(v45 + 104))(v4, enum case for FlowOrigin.inapp(_:), v48);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v32 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v33 = ASKDeviceTypeGetCurrent();
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {

    v38 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v38 = &enum case for FlowPresentationContext.presentModal(_:);
    if (v39)
    {
      v38 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
    }
  }

  (ObjectType)(v52, *v38, v31);
  FlowAction.presentationContext.setter();
  v40 = *(v55 + qword_10098A1B0);
  v41 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v42 = v53;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v43 = *(v41 - 8);
  if ((*(v43 + 48))(v42, 1, v41) == 1)
  {

    sub_10002B894(v42, &unk_100972A00, &unk_1007B3130);
  }

  else
  {
    sub_1005F9C8C(v32, 1, v40, v42);

    (*(v43 + 8))(v42, v41);
  }
}

double sub_100525664(__n128 a1)
{
  v1 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v1 - 8);
  sub_10002849C(&unk_10098A308, &unk_1007D35D0);
  v2 = type metadata accessor for MetricsFieldInclusionRequest();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B10D0;
  static MetricsFieldInclusionRequest.pageFields.getter();
  sub_100083F08(v5);
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  sub_100398EF4(_swiftEmptyArrayStorage);
  type metadata accessor for ClickMetricsEvent();
  swift_allocObject();
  ClickMetricsEvent.init(targetType:targetId:including:excluding:eventFields:)();
  sub_10002849C(&unk_100988E30, &qword_1007D1C28);
  type metadata accessor for MetricsData();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  dispatch thunk of MetricsEvent.metricsData.getter();
  ScalarDictionary.init()();
  ActionMetrics.init(data:custom:)();

  return result;
}

void sub_1005258DC(void *a1)
{
  v1 = a1;
  sub_100524DBC();
}

void sub_100525924(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(AAUISignInController) init];
  [v4 setServiceType:AIDAServiceTypeStore];
  [v4 setDelegate:v1];
  if (qword_10096E888 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSLogger();
  sub_1000056A8(v5, qword_10098A190);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = ObjectType;
  v11[4] = sub_10052A27C;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100235C48;
  v11[3] = &unk_1008C7848;
  v8 = _Block_copy(v11);
  v9 = a1;
  v10 = v4;

  [v10 prepareInViewController:v9 completion:v8];
  _Block_release(v8);
}

void sub_100525BD0(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v9 = type metadata accessor for OSLogger();
  v46 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for AlertActionStyle();
  v44 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v18 - 8);
  if (a1)
  {
    if (qword_10096E888 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v9, qword_10098A190);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    [a3 presentViewController:a4 animated:1 completion:0];
    return;
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  v43 = v14;
  v19 = _convertErrorToNSError(_:)();
  v20 = [v19 domain];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {

    goto LABEL_12;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
LABEL_12:
    if ([v19 code] == -7005)
    {
      if (qword_10096E888 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v9, qword_10098A190);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1890;
      LogMessage.init(stringLiteral:)();
      *(&v50 + 1) = sub_100005744(0, &qword_10097D7D8, NSError_ptr);
      *&v49 = v19;
      v26 = v19;
      static LogMessage.safe(_:)();
      sub_10002B894(&v49, &unk_1009711D0, &unk_1007B1A10);
      Logger.error(_:)();

      v27._object = 0x8000000100819050;
      v27._countAndFlagsBits = 0xD000000000000017;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      localizedString(_:comment:)(v27, v28);
      v29._countAndFlagsBits = 0xD00000000000002ALL;
      v29._object = 0x8000000100819070;
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      localizedString(_:comment:)(v29, v30);
      static ActionMetrics.notInstrumented.getter();
      (*(v44 + 104))(v17, enum case for AlertActionStyle.normal(_:), v15);
      type metadata accessor for AlertAction();
      swift_allocObject();
      v31 = AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v33 = *(Strong + qword_10098A1B0);
        v34 = Strong;

        v35 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
        v36 = v43;
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v37 = *(v35 - 8);
        if ((*(v37 + 48))(v36, 1, v35) == 1)
        {

          sub_10002B894(v36, &unk_100972A00, &unk_1007B3130);
        }

        else
        {
          sub_1005FA1B4(v31, 1, v33, v36);

          (*(v37 + 8))(v36, v35);
        }
      }

      else
      {
      }

      return;
    }
  }

LABEL_19:
  if (qword_10096E888 != -1)
  {
    swift_once();
  }

  v38 = sub_1000056A8(v9, qword_10098A190);
  v39 = v46;
  (*(v46 + 16))(v11, v38, v9);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  if (a2)
  {
    swift_getErrorValue();
    v40 = v47;
    v41 = v48;
    *(&v50 + 1) = v48;
    v42 = sub_1000056E0(&v49);
    (*(*(v41 - 8) + 16))(v42, v40, v41);
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  static LogMessage.safe(_:)();
  sub_10002B894(&v49, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();

  (*(v39 + 8))(v11, v9);
}

void sub_10052653C(char *a1)
{
  v1 = *&a1[qword_10098A1E8];
  v2 = a1;
  if (v1)
  {
    sub_10052659C();
  }

  else
  {
    sub_100527974();
  }
}

double sub_10052659C()
{
  v1 = sub_10002849C(&qword_10098A2E0, &qword_1007BAEA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = *(v0 + qword_10098A1E8);
  if (v4)
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();
    v7 = v4;

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    v9[5] = v6;

    sub_100221B78(0, 0, v3, &unk_1007D35C8, v9);
  }

  else
  {
    if (qword_10096E888 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for OSLogger();
    sub_1000056A8(v11, qword_10098A190);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }

  return result;
}

uint64_t sub_10052684C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v6 = type metadata accessor for AppUpdatesCounts();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[11] = v7;
  v5[12] = type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[14] = v8;
  *v8 = v5;
  v8[1] = sub_100526970;

  return AppUpdatesDataSource.getUpdatesCounts()(v7);
}

uint64_t sub_100526970()
{
  *(*v1 + 120) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100526B80;
  }

  else
  {
    v4 = sub_100526ACC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100526ACC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1005275EC();
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100526B80()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = qword_10098A1D8;
    v4 = *(Strong + qword_10098A1D8);
    if (v4)
    {
      [v4 removeFromSuperview];
      v5 = *&v2[v3];
    }

    else
    {
      v5 = 0;
    }

    *&v2[v3] = 0;
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

double sub_100526C64()
{
  v1 = sub_10002849C(&qword_10098A2E0, &qword_1007BAEA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_10002849C(&qword_10098A2E8, &qword_1007D3598);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = *(v0 + qword_10098A1E8);
  if (v11)
  {
    v20 = v11;
    AppUpdatesDataSource.makeUpdatesCountsStream()();
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v7, v10, v4);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = &protocol witness table for MainActor;
    (*(v5 + 32))(v16 + v15, v7, v4);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;

    sub_100221B78(0, 0, v3, &unk_1007D35A8, v16);

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_10096E888 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for OSLogger();
    sub_1000056A8(v18, qword_10098A190);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }

  return result;
}

uint64_t sub_10052705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for AppUpdatesCounts();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_10002849C(&qword_10098A2F0, &qword_1007D35B0);
  v5[10] = swift_task_alloc();
  v7 = sub_10002849C(&unk_10098A2F8, &qword_1007D35B8);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for MainActor();
  v5[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[16] = v9;
  v5[17] = v8;

  return _swift_task_switch(sub_1005271F4, v9, v8);
}

uint64_t sub_1005271F4()
{
  sub_10002849C(&qword_10098A2E8, &qword_1007D3598);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v1 = static MainActor.shared.getter();
  v0[18] = v1;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1005272EC;
  v3 = v0[10];
  v4 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v3, v1, &protocol witness table for MainActor, v4);
}

uint64_t sub_1005272EC()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_100527430, v3, v2);
}

uint64_t sub_100527430()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_1005275EC();
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
    v8 = static MainActor.shared.getter();
    v0[18] = v8;
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_1005272EC;
    v10 = v0[10];
    v11 = v0[11];

    return AsyncStream.Iterator.next(isolation:)(v10, v8, &protocol witness table for MainActor, v11);
  }
}

double sub_1005275EC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_10098A2E0, &qword_1007BAEA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = AppUpdatesCounts.pendingManual.getter();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = v0;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v9[5] = v5;
  v9[6] = ObjectType;
  sub_100221B78(0, 0, v4, &unk_1007D3590, v9);

  return result;
}

uint64_t sub_100527734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005277CC, v7, v6);
}

uint64_t sub_1005277CC()
{
  v1 = v0[3];
  v2 = v0[2];

  if (*(v2 + qword_10098A1E0) == v1)
  {
    if (qword_10096E888 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for OSLogger();
    sub_1000056A8(v3, qword_10098A190);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();
  }

  else
  {
    *(v2 + qword_10098A1E0) = v0[3];
    sub_100528044();
  }

  v4 = v0[1];

  return v4();
}

double sub_100527974()
{
  sub_10002849C(&qword_10098A2D0, &unk_1007D3578);
  v0 = Promise.__allocating_init()();
  type metadata accessor for UpdateStore();
  updated = static UpdateStore.shared.getter();
  v8 = sub_100529F5C;
  v9 = v0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100527B5C;
  v7 = &unk_1008C7730;
  v2 = _Block_copy(v6);

  [updated getUpdatesWithCompletionBlock:v2];
  _Block_release(v2);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);

  v4 = static OS_dispatch_queue.main.getter();
  v7 = v3;
  v8 = &protocol witness table for OS_dispatch_queue;
  v6[0] = v4;
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v6);

  return result;
}

double sub_100527B5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100005744(0, &qword_10098A2D8, ASDSoftwareUpdate_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);

  return result;
}

void *sub_100527BE0(unint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v13 = result;
  if (v11 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v14 = result;
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v4;
  v35 = v3;
  v32 = v6;
  v33 = v7;
  v30 = v10;
  v31 = v8;
  if (!v14)
  {
    goto LABEL_19;
  }

  if (v14 < 1)
  {
    __break(1u);
    return result;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = (v11 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v11 + 8 * v16 + 32);
    v18 = v17;
    v19 = [v17 updateState];
    if (!v19 || v19 == 3 || v19 == 4)
    {
      break;
    }

LABEL_8:
    if (v14 == ++v16)
    {
      goto LABEL_20;
    }
  }

  v20 = [v18 autoUpdateEnabled];

  if (v20)
  {
    goto LABEL_8;
  }

  if (!__OFADD__(v15++, 1))
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_19:
  v15 = 0;
LABEL_20:
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  *(v23 + 24) = v15;
  aBlock[4] = sub_100529F94;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C7780;
  v24 = _Block_copy(aBlock);
  v25 = v13;

  v26 = v30;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
  v27 = v32;
  v28 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v34 + 8))(v27, v28);
  return (*(v31 + 8))(v26, v33);
}

void sub_100527FBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = qword_10098A1D8;
    v5 = *(Strong + qword_10098A1D8);
    if (v5)
    {
      [v5 removeFromSuperview];
      v6 = *&v3[v4];
    }

    else
    {
      v6 = 0;
    }

    *&v3[v4] = 0;
  }
}

void sub_100528044()
{
  v1 = v0;
  v2 = *(v0 + qword_10098A1B8);
  if (v2)
  {
    v3 = v2;
    v4 = dispatch thunk of GameCenterFriendRequestCoordinator.currentFriendRequestCount.getter();
  }

  else
  {
    v4 = 0;
  }

  v5 = qword_10098A1E0;
  v6 = *(v1 + qword_10098A1E0);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
  }

  else if (qword_10096E888 == -1)
  {
    goto LABEL_6;
  }

  swift_once();
LABEL_6:
  v8 = type metadata accessor for OSLogger();
  sub_1000056A8(v8, qword_10098A190);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B73E0;
  LogMessage.init(stringLiteral:)();
  v9 = *(v1 + v5);
  v17 = &type metadata for Int;
  v16[0] = v9;
  static LogMessage.safe(_:)();
  sub_10002B894(v16, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v17 = &type metadata for Int;
  v16[0] = v4;
  static LogMessage.safe(_:)();
  sub_10002B894(v16, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v17 = &type metadata for Int;
  v16[0] = v7;
  static LogMessage.safe(_:)();
  sub_10002B894(v16, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  if (v7 < 1)
  {
    v13 = 0;
    v15 = 0;
  }

  else
  {
    v10 = objc_opt_self();
    sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(v7).super.super.isa;
    v12 = [v10 localizedStringFromNumber:isa numberStyle:1];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  sub_10052475C(v13, v15);
}

void sub_100528380(void *a1)
{
  v1 = a1;
  sub_1005283D0(1);
}

void sub_1005283D0(char a1)
{
  v2 = [objc_opt_self() sharedStore];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_10052A4CC;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100246D50;
  v6[3] = &unk_1008C7708;
  v5 = _Block_copy(v6);

  [v2 profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:v5 completion:44.0];
  _Block_release(v5);
}

void sub_1005284F8(void *a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (!a1)
    {
      if (a3)
      {
        static Date.+ infix(_:_:)();
        Date.init()();
        v25 = static Date.> infix(_:_:)();
        v26 = *(v6 + 8);
        v26(v8, v5);
        v26(v11, v5);
        v27 = v13[qword_10098A1A8];
        v13[qword_10098A1A8] = 0;
        if (v27 == 1)
        {
          v28 = [v13 layer];
          [v28 setBorderColor:0];

          v29 = [v13 layer];
          [v29 setBorderWidth:0.0];

          [v13 setNeedsDisplay];
        }

        if (qword_10096E878 != -1)
        {
          swift_once();
        }

        [v13 setImage:qword_10098A180 forState:0];
        [v13 alpha];
        if (v30 <= COERCE_DOUBLE(1))
        {
          if (v25)
          {
            v31 = objc_opt_self();
            v32 = swift_allocObject();
            *(v32 + 16) = v13;
            v47 = sub_10052A4A8;
            v48 = v32;
            aBlock = _NSConcreteStackBlock;
            v44 = 1107296256;
            v45 = sub_100007A08;
            v46 = &unk_1008C7618;
            v33 = _Block_copy(&aBlock);
            v13 = v13;

            [v31 animateWithDuration:4 delay:v33 options:0 animations:0.33 completion:0.0];
            _Block_release(v33);
          }

          else
          {
            [v13 setAlpha:1.0];
          }
        }
      }

LABEL_23:

      return;
    }

    v14 = a1;
    [v13 intrinsicContentSize];
    UIGraphicsBeginImageContextWithOptions(v49, 0, 0.0);
    [v13 intrinsicContentSize];
    [v14 drawInRect:{0.0, 0.0, v15, v16}];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    static Date.+ infix(_:_:)();
    Date.init()();
    v18 = static Date.> infix(_:_:)();
    v19 = *(v6 + 8);
    v19(v8, v5);
    v19(v11, v5);
    [v13 setImage:v17 forState:0];
    [v13 alpha];
    if (v20 <= COERCE_DOUBLE(1))
    {
      if (v18)
      {
        v21 = objc_opt_self();
        v22 = swift_allocObject();
        *(v22 + 16) = v13;
        v47 = sub_10052A4A8;
        v48 = v22;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_100007A08;
        v46 = &unk_1008C7668;
        v23 = _Block_copy(&aBlock);
        v24 = v13;

        [v21 animateWithDuration:4 delay:v23 options:0 animations:0.33 completion:0.0];

        _Block_release(v23);
LABEL_16:
        v34 = v13[qword_10098A1A8];
        v13[qword_10098A1A8] = 1;
        if ((v34 & 1) == 0)
        {
          v35 = [v13 layer];
          if (qword_10096E880 != -1)
          {
            swift_once();
          }

          v36 = [qword_10098A188 CGColor];
          [v35 setBorderColor:v36];

          v37 = [v13 layer];
          v38 = [v13 traitCollection];
          static Separator.thickness(compatibleWith:)();
          v40 = v39;

          [v37 setBorderWidth:v40];
          [v13 setNeedsDisplay];
        }

        v41 = qword_10098A1C0;
        if (*&v13[qword_10098A1C0])
        {

          dispatch thunk of DispatchWorkItem.cancel()();

          *&v13[v41] = 0;

          return;
        }

        goto LABEL_23;
      }

      [v13 setAlpha:1.0];
    }

    goto LABEL_16;
  }
}

void sub_100528B90(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AccountButton(0);
  v4 = v7.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", v5);
  [v4 invalidateIntrinsicContentSize];
  v6 = [v4 backgroundImageForState:0];
  if (v6)
  {

    sub_1005283D0(1);
  }
}

id sub_100528C3C(char a1)
{
  v3 = [v1 layer];
  v4 = v3;
  if (a1)
  {
    if (qword_10096E880 != -1)
    {
      swift_once();
    }

    v5 = [qword_10098A188 CGColor];
    [v4 setBorderColor:v5];

    v6 = [v1 layer];
    v7 = [v1 traitCollection];
    static Separator.thickness(compatibleWith:)();
    v9 = v8;

    [v6 setBorderWidth:v9];
  }

  else
  {
    [v3 setBorderColor:0];

    v6 = [v1 layer];
    [v6 setBorderWidth:0.0];
  }

  return [v1 setNeedsDisplay];
}

void sub_100528DAC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for AccountButton(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "_dynamicUserInterfaceTraitDidChange");
  sub_100528C3C(v1[qword_10098A1A8]);
}

uint64_t sub_100528E14(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&a1[qword_10098A1E8];
  v9 = a1;
  if (v8)
  {
    sub_10052659C();
  }

  else
  {
    sub_100527974();
  }

  return (*(v5 + 8))(v7, v4);
}

id sub_100528F10(void *a1)
{
  v1 = a1;
  sub_100528F88();
  v3 = v2;

  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100528F88()
{
  v1 = *(v0 + qword_10098A1D8);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC8AppStore14CountBadgeView_countLabel];
    v3 = v1;
    v4 = [v2 text];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }
  }

  return 0;
}

double sub_100529020(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_100005744(0, &unk_10098A2C0, AIDAServiceOperationResult_ptr);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = a1;
  sub_100529BA0(v6);

  return result;
}

void sub_1005290BC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100529DAC();
}

void sub_10052914C(uint64_t a1)
{
  if (!qword_10098A288)
  {
    type metadata accessor for StoreTab();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10098A288);
    }
  }
}

char *sub_1005291AC(int a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v6 = type metadata accessor for AutomationSemantics();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v56 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchTime();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v53 = &v49[-v12];
  v51 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v51);
  v52 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10002849C(&qword_10098A2A8, &qword_1007D3558);
  __chkstk_darwin(v14 - 8);
  v16 = &v49[-v15];
  *&v3[qword_1009D2938 + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[qword_10098A1A8] = 0;
  *&v3[qword_10098A1B8] = 0;
  *&v3[qword_10098A1C0] = 0;
  Date.init()();
  v17 = &v3[qword_10098A1D0];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = 1;
  v17[16] = 1;
  *&v3[qword_10098A1D8] = 0;
  *&v3[qword_10098A1E0] = 0;
  *&v3[qword_10098A1E8] = 0;
  v59 = a2;
  sub_100529AF4(a2, &v3[qword_1009D2930]);
  *&v3[qword_10098A1B0] = a3;
  v19 = type metadata accessor for AccountButton(0);
  v67.receiver = v3;
  v67.super_class = v19;

  v20 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for GameCenterFriendRequestCoordinator();
  type metadata accessor for BaseObjectGraph();
  v21 = v20;
  inject<A, B>(_:from:)();
  v22 = qword_10098A1B8;
  v23 = *&v21[qword_10098A1B8];
  *&v21[qword_10098A1B8] = aBlock;

  v24 = *&v21[v22];
  if (v24)
  {
    v25 = v24;
    GameCenterFriendRequestCoordinator.onFriendRequestCountDidUpdate.getter();

    sub_10002849C(&qword_100985200, &qword_1007CC780);
    sub_100097060(&unk_10098A2B0, &qword_100985200, &qword_1007CC780, &protocol conformance descriptor for SyncEvent<A>);
    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(&aBlock);
    v18 = 0;
  }

  v26 = sub_10002849C(&qword_1009851E0, &qword_1007D3560);
  (*(*(v26 - 8) + 56))(v16, v18, 1, v26);
  sub_10002B894(v16, &qword_10098A2A8, &qword_1007D3558);
  v27 = v21;
  dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();
  [v27 setAlpha:0.0];
  v28 = v27;
  [v28 addTarget:v28 action:"goToAccount" forControlEvents:64];
  v29 = objc_opt_self();
  v30 = [v29 defaultCenter];
  [v30 addObserver:v28 selector:"profilePictureStoreDidChange" name:ASKProfilePictureStoreDidChange object:0];

  v31 = [objc_opt_self() sharedStore];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = 0;
  v65 = sub_100529B64;
  v66 = v33;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_100246D50;
  v64 = &unk_1008C7528;
  v34 = _Block_copy(&aBlock);

  [v31 profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:v34 completion:44.0];
  _Block_release(v34);

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v50 & 1;
  v65 = sub_100529B70;
  v66 = v36;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_100007A08;
  v64 = &unk_1008C7578;
  _Block_copy(&aBlock);
  v60 = _swiftEmptyArrayStorage;
  sub_10002D150();

  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v37 = DispatchWorkItem.init(flags:block:)();

  *&v28[qword_10098A1C0] = v37;

  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v38 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v39 = v53;
  + infix(_:_:)();
  v40 = v55;
  v41 = *(v54 + 8);
  v41(v10, v55);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v41(v39, v40);
  v42 = [v29 defaultCenter];
  type metadata accessor for AutomaticUpdates();
  v43 = v28;
  v44 = static AutomaticUpdates.enabledDidChangeNotification.getter();
  [v42 addObserver:v43 selector:"automaticUpdatesEnabledDidChange:" name:v44 object:0];

  v45 = [v43 imageView];
  if (v45)
  {
    v46 = v45;
    [v45 setContentMode:2];
  }

  [v43 setContentHorizontalAlignment:3];

  [v43 setContentVerticalAlignment:3];
  v47 = v56;
  static AutomationSemantics.accountButton()();
  UIView.setAutomationSemantics(_:)();
  (*(v57 + 8))(v47, v58);
  sub_100523918();

  sub_10002B894(v59, &unk_1009796E0, &unk_1007C02F0);
  return v43;
}

uint64_t sub_100529AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009796E0, &unk_1007C02F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100529BA0(uint64_t a1)
{
  if (qword_10096E888 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OSLogger();
  sub_1000056A8(v2, qword_10098A190);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1E00;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  v5[3] = sub_10002849C(&unk_100990A80, &unk_1007D3568);
  v5[0] = a1;

  static LogMessage.safe(_:)();
  sub_10002B894(v5, &unk_1009711D0, &unk_1007B1A10);
  Logger.info(_:)();

  type metadata accessor for CommerceDialogHandler();
  BaseObjectGraph.inject<A>(_:)();
  v3 = v5[0];
  v4 = CommerceDialogHandler.presentingViewController.getter();

  if (v4)
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100529DAC()
{
  if (qword_10096E888 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSLogger();
  sub_1000056A8(v0, qword_10098A190);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  type metadata accessor for CommerceDialogHandler();
  BaseObjectGraph.inject<A>(_:)();
  v1 = CommerceDialogHandler.presentingViewController.getter();

  if (v1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_100529FC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10015A5C8;

  return sub_100527734(a1, v4, v5, v6, v7);
}

uint64_t sub_10052A090(uint64_t a1)
{
  v4 = *(sub_10002849C(&qword_10098A2E8, &qword_1007D3598) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100095E9C;

  return sub_10052705C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10052A1BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10015A5C8;

  return sub_10052684C(a1, v4, v5, v7, v6);
}

uint64_t sub_10052A288(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10052A2D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10015A5C8;

  return sub_100523A50(a1, v4, v5, v7, v6);
}

uint64_t sub_10052A3C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10015A5C8;

  return sub_100523F04(a1, v4, v5, v6, v7);
}

uint64_t sub_10052A514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100982A90, &unk_1007CAFC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-1] - v6;
  v8 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v8 - 8);
  v10 = &v20[-1] - v9;
  v11 = type metadata accessor for ActionOutcome();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for ActionOutcome.performed(_:), v11, v13);
  Promise.resolve(_:)();
  (*(v12 + 8))(v15, v11);
  v16 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    return sub_10002B894(v10, &unk_100972A00, &unk_1007B3130);
  }

  v20[3] = type metadata accessor for Action();
  v20[4] = sub_10052B074(&qword_100989C80, &type metadata accessor for Action);
  v20[0] = a3;
  (*(v5 + 104))(v7, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v4);

  ActionDispatcher.perform(_:withMetrics:asPartOf:)();

  (*(v5 + 8))(v7, v4);
  sub_100007000(v20);
  return (*(v17 + 8))(v10, v16);
}

uint64_t sub_10052A83C()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  Promise.resolve(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10052A928()
{
  sub_10052AF94();
  swift_allocError();
  *v0 = 1;
  Promise.reject(_:)();
}

uint64_t sub_10052A990(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v2 = sub_10002849C(&qword_10098A328, &qword_1007D3680);
  __chkstk_darwin(v2 - 8);
  v42 = &v35 - v3;
  v4 = sub_10002849C(&qword_10098A330, &qword_1007D3688);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v35 - v8;
  v9 = sub_10002849C(&qword_100972A80, &qword_1007C9840);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for AdamId();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v19 = Promise.__allocating_init()();
  v20 = ArcadeAction.productId.getter();
  if (!v21)
  {
    goto LABEL_4;
  }

  v41 = v20;
  ArcadeAction.appAdamId.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_10002B894(v11, &qword_100972A80, &qword_1007C9840);
LABEL_4:
    sub_10052AF94();
    swift_allocError();
    *v22 = 0;
    Promise.reject(_:)();

    return v19;
  }

  v39 = v13;
  v40 = v12;
  (*(v13 + 32))(v18, v11, v12);
  v23 = ArcadeAction.postSubscribeAction.getter();
  if (v23)
  {
    v24 = v23;
    v25 = swift_allocObject();
    v25[2] = v19;
    v25[3] = v43;
    v25[4] = v24;

    v37 = sub_10052B068;
  }

  else
  {
    v37 = sub_10052AFE8;
    v25 = v19;
  }

  v26 = v44;
  v27 = type metadata accessor for ArcadeSubscriptionDecorator();
  v35 = *(*(v27 - 8) + 56);
  v35(v26, 1, 1, v27);
  swift_retain_n();
  v38 = v25;

  ArcadeAction.subscriptionToken.getter();
  v36 = v18;
  if (v46)
  {
    sub_100056164(&v45, v47);
    (*(v39 + 16))(v15, v18, v40);
    sub_1000073E8(v47, &v45);

    ArcadeSubscriptionDecorator.init(objectGraph:product:appAdamId:subscriptionToken:)();
    sub_100007000(v47);
    sub_10002B894(v26, &qword_10098A330, &qword_1007D3688);
    v35(v6, 0, 1, v27);
    sub_10052AFF8(v6, v26);
  }

  else
  {
    sub_10002B894(&v45, &unk_1009711D0, &unk_1007B1A10);
  }

  type metadata accessor for CommerceDialogHandler();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v28 = *&v47[0];
  type metadata accessor for ArcadeSubscriptionManager();
  inject<A, B>(_:from:)();
  v29 = *&v47[0];
  ArcadeAction.paymentMetricsOverlay.getter();

  v30 = v42;
  ArcadeSubscriptionManager.PaymentCallbacks.init(success:failure:)();
  v31 = type metadata accessor for ArcadeSubscriptionManager.PaymentCallbacks();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = v36;
  v33 = v44;
  ArcadeSubscriptionManager.purchaseSubscription(product:appAdamId:decorator:paymentMetricsOverlay:callbacks:dialogHandler:)();

  sub_10002B894(v30, &qword_10098A328, &qword_1007D3680);
  sub_10002B894(v33, &qword_10098A330, &qword_1007D3688);
  (*(v39 + 8))(v32, v40);
  return v19;
}

unint64_t sub_10052AF94()
{
  result = qword_10098A338;
  if (!qword_10098A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A338);
  }

  return result;
}

uint64_t sub_10052AFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10098A330, &qword_1007D3688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10052B074(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_10052B0DC()
{
  result = qword_10098A340;
  if (!qword_10098A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A340);
  }

  return result;
}

uint64_t ProductLockupLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:iconHorizontalMargin:titleSpace:titleFont:titleMaxNumberOfLines:subtitleSpace:subtitleFont:subtitleMaxNumberOfLines:tertiaryTitleSpace:tertiaryTitleFont:tertiaryTitleMaxNumberOfLines:offerTopSpace:offerSubtitleMetrics:shareButtonLeadingMargin:expandedOfferSubtitleSpace:expandedOfferHorizontalMargin:compactExpandedOfferShareButtonTopSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 *a20, uint64_t a21, __int128 *a22, __int128 *a23, uint64_t a24, __int128 *a25, __int128 *a26)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_100005A38(a1, (a9 + 4));
  sub_100005A38(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v33 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v34 = v33[8];
  v35 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v44 = *(*(v35 - 8) + 32);
  v44(a9 + v34, a3, v35);
  v44(a9 + v33[9], a4, v35);
  v36 = v33[10];
  v37 = sub_10002849C(&unk_100980410, &unk_1007CCF30);
  v43 = *(*(v37 - 8) + 32);
  v43(a9 + v36, a5, v37);
  v38 = v33[11];
  v39 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  v40 = *(*(v39 - 8) + 32);
  v40(a9 + v38, a6, v39);
  v44(a9 + v33[12], a7, v35);
  v43(a9 + v33[13], a8, v37);
  v40(a9 + v33[14], a16, v39);
  v44(a9 + v33[15], a17, v35);
  v43(a9 + v33[16], a18, v37);
  v40(a9 + v33[17], a19, v39);
  sub_100005A38(a20, a9 + v33[18]);
  sub_10052B698(a21, a9 + v33[19], type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_100005A38(a22, a9 + v33[20]);
  sub_100005A38(a23, a9 + v33[21]);
  v44(a9 + v33[22], a24, v35);
  sub_100005A38(a25, a9 + v33[23]);
  v41 = a9 + v33[24];

  return sub_100005A38(a26, v41);
}

__n128 ProductLockupLayout.init(metrics:iconView:titleLabel:developerLabel:taglineLabel:tertiaryTitleLabel:shareButton:offerButton:offerSubtitleLabel:expandedOfferTitleLabel:expandedOfferSubtitleLabel:hasExpandedOffer:offerSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_10052B698(a1, a9, type metadata accessor for ProductLockupLayout.Metrics);
  v23 = type metadata accessor for ProductLockupLayout(0);
  sub_100005A38(a2, a9 + v23[5]);
  sub_100005A38(a3, a9 + v23[6]);
  sub_100005A38(a4, a9 + v23[7]);
  sub_100005A38(a5, a9 + v23[8]);
  v24 = a9 + v23[9];
  v25 = *(a6 + 16);
  *v24 = *a6;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a6 + 32);
  v26 = a9 + v23[10];
  v27 = *(a7 + 16);
  *v26 = *a7;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a7 + 32);
  sub_100005A38(a8, a9 + v23[11]);
  sub_100005A38(a10, a9 + v23[12]);
  v28 = a9 + v23[13];
  v29 = *(a11 + 16);
  *v28 = *a11;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a11 + 32);
  v30 = a9 + v23[14];
  v31 = *(a12 + 16);
  *v30 = *a12;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a12 + 32);
  *(a9 + v23[15]) = a13;
  v32 = (a9 + v23[16]);
  *v32 = a14;
  v32[1] = a15;
  v33 = a9 + v23[17];
  *(v33 + 32) = *(a16 + 32);
  v34 = *(a16 + 16);
  *v33 = *a16;
  *(v33 + 16) = v34;
  v35 = a9 + v23[18];
  *(v35 + 32) = *(a17 + 32);
  result = *(a17 + 16);
  *v35 = *a17;
  *(v35 + 16) = result;
  return result;
}

uint64_t sub_10052B698(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double ProductLockupLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();

  return sub_100531700(a1, v3, ObjectType, a2, a3);
}

uint64_t ProductLockupLayout.offerSubtitleText.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProductLockupLayout(0) + 64));

  return v1;
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v4 = sub_10002849C(&unk_100980410, &unk_1007CCF30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v4 = sub_10002849C(&unk_100980410, &unk_1007CCF30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.maxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 24);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.leadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 40);
  v4 = sub_10002849C(&unk_100980410, &unk_1007CCF30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 44);
  v4 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 52);
  v4 = sub_10002849C(&unk_100980410, &unk_1007CCF30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 64);
  v4 = sub_10002849C(&unk_100980410, &unk_1007CCF30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 72);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.offerSubtitleMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);

  return sub_100430708(a1, v3);
}

uint64_t ProductLockupLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 84);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.compactExpandedOfferShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 96);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v254 = a6;
  v255 = a3;
  v236 = a2;
  v13 = type metadata accessor for FloatingPointRoundingRule();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v218 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400((*&v6 + 32), *(*&v6 + 56));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v18 = v17;
  v21 = *(v14 + 8);
  v19 = v14 + 8;
  v20 = v21;
  v21(v16, v13);
  sub_10002A400((*&v7 + 72), *(*&v7 + 96));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v23 = v22;
  v253 = v13;
  v21(v16, v13);
  v24 = **&v6;
  v25 = *(*&v6 + 8);
  v225 = v18;
  v226 = v23;
  v26 = sub_1000CC354(a3, a4, a5, a6, v18 + v24, v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = *(*&v6 + 112);
  v33 = *(*&v6 + 120);
  *&v35 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout(0));
  sub_10002A400((*&v7 + v35[5]), *(*&v7 + v35[5] + 24));
  v251 = a4;
  v250 = a5;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v272.origin.x = v26;
  v272.origin.y = v28;
  v272.size.width = v34;
  v237 = v33;
  v272.size.height = v33;
  MaxX = CGRectGetMaxX(v272);
  v36 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v266 = a1;
  *&v37 = COERCE_DOUBLE(sub_10002849C(&qword_100979010, qword_1007BE140));
  Conditional.evaluate(with:)();
  v38 = v269;
  v273.origin.x = v26;
  v273.origin.y = v28;
  v273.size.width = v30;
  v273.size.height = v32;
  MinY = CGRectGetMinY(v273);
  v274.origin.x = v26;
  v274.origin.y = v28;
  v274.size.width = v30;
  v274.size.height = v32;
  Width = CGRectGetWidth(v274);
  *&v266 = a1;
  v234 = *&v37;
  Conditional.evaluate(with:)();
  v238 = v34;
  v40 = v34 + v269;
  v260 = v26;
  v275.origin.x = v26;
  v261 = v28;
  v275.origin.y = v28;
  v275.size.width = v30;
  v275.size.height = v32;
  Height = CGRectGetHeight(v275);
  v244 = v35[10];
  sub_100031660(*&v6 + v244, &v269, &qword_100975610, &qword_1007B5690);
  v257 = v30;
  if (v270)
  {
    sub_10002A400(&v269, v270);
    Measurable.measuredSize(fitting:in:)();
    v246 = v41;
    v222 = v42;
    sub_100007000(&v269);
  }

  else
  {
    sub_10002B894(&v269, &qword_100975610, &qword_1007B5690);
    v246 = 0.0;
    v222 = 0.0;
  }

  v43 = v32;
  v44 = MaxX + v38;
  v45 = Width - v40;
  sub_100031660(*&v6 + v244, &v269, &qword_100975610, &qword_1007B5690);
  v46 = v270;
  sub_10002B894(&v269, &qword_100975610, &qword_1007B5690);
  v47 = 0.0;
  if (v46)
  {
    sub_10002A400((*&v6 + *(v36 + 80)), *(*&v6 + *(v36 + 80) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v47 = v48;
    v20(v16, v253);
  }

  v242 = v36;
  v49 = (*&v6 + v35[11]);
  v50 = v49[3];
  v235 = v49;
  sub_10002A400(v49, v50);
  v276.origin.x = v44;
  v276.origin.y = MinY;
  v276.size.width = v45;
  v276.size.height = Height;
  CGRectGetWidth(v276);
  v259 = v45;
  v51 = v260;
  v277.origin.x = v260;
  v52 = v261;
  v277.origin.y = v261;
  v277.size.width = v257;
  v249 = v47;
  v53 = v257;
  v277.size.height = v43;
  CGRectGetHeight(v277);
  Measurable.measuredSize(fitting:in:)();
  v55 = v54;
  v245 = v56;
  v278.origin.x = v51;
  v278.origin.y = v52;
  v278.size.width = v53;
  v278.size.height = v43;
  v256 = v43;
  CGRectGetWidth(v278);
  v57 = *&v6 + *(v36 + 76);
  v58 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v59 = (v57 + *(v58 + 28));
  v60 = v59[3];
  v220 = v59;
  sub_10002A400(v59, v60);
  MaxX = v7;
  v61 = v35;
  v62 = a1;
  v63 = v20;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v64 = v253;
  v63(v16, v253);
  v239 = v55;
  v65 = v44;
  v66 = v246;
  v67 = (v57 + *(v58 + 24));
  v68 = v67[3];
  v218 = v67;
  sub_10002A400(v67, v68);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v240 = v16;
  v241 = v19;
  v247 = v63;
  v63(v16, v64);
  v69 = v62;
  v70 = (*&MaxX + v61[12]);
  v71 = v70[3];
  v221 = v70;
  sub_10002A400(v70, v71);
  v279.origin.x = v51;
  v72 = v52;
  v279.origin.y = v52;
  v73 = v257;
  v279.size.width = v257;
  v279.size.height = v43;
  CGRectGetHeight(v279);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v233 = v74;
  v75 = [v62 traitCollection];
  LOBYTE(v71) = UITraitCollection.isSizeClassCompact.getter();

  v280.origin.x = v65;
  v76 = v65;
  v252 = v65;
  v77 = MinY;
  v280.origin.y = MinY;
  v280.size.width = v259;
  v78 = Height;
  v280.size.height = Height;
  v79 = CGRectGetWidth(v280);
  if (v71)
  {
    v80 = v79;
  }

  else
  {
    v80 = v79 - v66 - v249;
  }

  v232 = v80;
  v81 = (*&MaxX + v61[6]);
  sub_10002A400(v81, v81[3]);
  v281.origin.x = v51;
  v281.origin.y = v72;
  v281.size.width = v73;
  v82 = v256;
  v281.size.height = v256;
  CGRectGetHeight(v281);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v249 = v83;
  v230 = v84;
  v86 = v85;
  v243 = v85;
  v248 = v87;
  v88 = v242;
  *&v266 = v69;
  Conditional.evaluate(with:)();
  v89 = v51;
  v90 = v269;
  v282.origin.x = v76;
  v282.origin.y = v77;
  v282.size.width = v259;
  v282.size.height = v78;
  MinX = CGRectGetMinX(v282);
  v283.origin.x = v89;
  v91 = v261;
  v283.origin.y = v261;
  v283.size.width = v73;
  v283.size.height = v82;
  v92 = CGRectGetMinY(v283);
  if (v90 - v86 > 0.0)
  {
    v93 = v90 - v86;
  }

  else
  {
    v93 = 0.0;
  }

  sub_10002A400(v81, v81[3]);
  dispatch thunk of LayoutTextView.languageAwareOutsets.getter();
  if (v249 >= v232)
  {
    v95 = v232;
  }

  else
  {
    v95 = v249;
  }

  v96 = v92 + v93 + v94;
  v284.origin.x = MinX;
  v284.origin.y = v96;
  v284.size.width = v95;
  v97 = v230;
  v284.size.height = v230;
  v231 = CGRectGetMaxY(v284) - v248;
  sub_10002A400(v81, v81[3]);
  v98 = v91;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v219 = v81;
  sub_10002C0AC(v81, &v269);
  *&v266 = v69;
  sub_10002849C(&unk_100973B30, &qword_1007B5248);
  Conditional.evaluate(with:)();
  *&v232 = v61[9];
  sub_100031660(*&MaxX + *&v232, &v266, &unk_10097E890, qword_1007B4270);
  sub_10002B894(&v266, &unk_10097E890, qword_1007B4270);
  sub_10002A400(&v269, v270);
  v285.var0 = v249;
  v285.var1 = v97;
  v285.var2 = v243;
  v285.var3 = v248;
  LayoutTextView.estimatedNumberOfLines(from:)(v285);
  sub_100007000(&v269);
  v99 = (*&MaxX + v61[7]);
  sub_10002A400(v99, v99[3]);
  dispatch thunk of LayoutTextView.numberOfLines.setter();
  v243 = *&v61;
  v100 = v61[8];
  v101 = *&MaxX;
  v102 = (*&MaxX + v100);
  sub_10002A400((*&MaxX + v100), *(*&MaxX + v100 + 24));
  dispatch thunk of LayoutTextView.numberOfLines.setter();
  *&v266 = v69;
  Conditional.evaluate(with:)();
  v103 = v269;
  sub_10002A400(v99, v99[3]);
  v104 = v252;
  v286.origin.x = v252;
  v105 = MinY;
  v286.origin.y = MinY;
  v106 = v259;
  v286.size.width = v259;
  v107 = Height;
  v286.size.height = Height;
  CGRectGetWidth(v286);
  v287.origin.x = v260;
  v287.origin.y = v98;
  v108 = v257;
  v287.size.width = v257;
  v287.size.height = v256;
  CGRectGetHeight(v287);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v110 = v109;
  v230 = v111;
  v113 = v112;
  v224 = v114;
  v288.origin.x = v104;
  v288.origin.y = v105;
  v288.size.width = v106;
  v288.size.height = v107;
  MinX = CGRectGetMinX(v288);
  v289.origin.x = v104;
  v289.origin.y = v105;
  v289.size.width = v106;
  v289.size.height = v107;
  v115 = CGRectGetWidth(v289);
  if (v110 < v115)
  {
    v115 = v110;
  }

  v249 = v115;
  v116 = v231 + v103;
  v248 = v231 + v103 - v113;
  sub_10002A400(v102, v102[3]);
  v290.origin.x = v104;
  v290.origin.y = v105;
  v290.size.width = v106;
  v290.size.height = v107;
  CGRectGetWidth(v290);
  v291.origin.x = v260;
  v291.origin.y = v261;
  v291.size.width = v108;
  v291.size.height = v256;
  CGRectGetHeight(v291);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v118 = v117;
  v231 = v119;
  v121 = v120;
  v223 = v122;
  v292.origin.x = v104;
  v292.origin.y = v105;
  v292.size.width = v106;
  v292.size.height = v107;
  v228 = CGRectGetMinX(v292);
  v293.origin.x = v104;
  v293.origin.y = v105;
  v293.size.width = v106;
  v293.size.height = v107;
  v123 = CGRectGetWidth(v293);
  if (v118 >= v123)
  {
    v118 = v123;
  }

  v124 = v116 - v121;
  sub_10002A400(v99, v99[3]);
  v125 = MinX;
  v126 = v230;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400(v102, v102[3]);
  v127 = v228;
  v227 = v124;
  v128 = v231;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v294.origin.x = v127;
  v129 = v127;
  v294.origin.y = v124;
  v294.size.width = v118;
  v294.size.height = v128;
  v130 = v128;
  MaxY = CGRectGetMaxY(v294);
  v132 = v125;
  v295.origin.x = v125;
  v133 = v248;
  v295.origin.y = v248;
  v134 = v249;
  v295.size.width = v249;
  v295.size.height = v126;
  v135 = CGRectGetMaxY(v295) < MaxY;
  v136 = v129;
  if (v135)
  {
    v137 = v129;
  }

  else
  {
    v137 = v132;
  }

  v138 = v227;
  if (v135)
  {
    v139 = v227;
  }

  else
  {
    v139 = v133;
  }

  v140 = v118;
  if (!v135)
  {
    v118 = v134;
  }

  v141 = v130;
  if (!v135)
  {
    v130 = v126;
  }

  v231 = CGRectGetMaxY(*&v136);
  v296.origin.x = v132;
  v296.origin.y = v133;
  v296.size.width = v134;
  v296.size.height = v126;
  v142 = CGRectGetMaxY(v296);
  v297.origin.x = v137;
  v297.origin.y = v139;
  v297.size.width = v118;
  v297.size.height = v130;
  v143 = CGRectGetMaxY(v297);
  sub_100031660(v101 + *&v232, &v266, &unk_10097E890, qword_1007B4270);
  if (v267)
  {
    v144 = v224;
    if (v142 < v231)
    {
      v144 = v223;
    }

    v249 = v143 - v144;
    sub_100005A38(&v266, &v269);
    *&v264 = v69;
    Conditional.evaluate(with:)();
    v248 = *&v266;
    sub_10002A400(&v269, v270);
    v145 = v252;
    v298.origin.x = v252;
    v146 = MinY;
    v298.origin.y = MinY;
    v147 = v259;
    v298.size.width = v259;
    v148 = Height;
    v298.size.height = Height;
    CGRectGetWidth(v298);
    v299.origin.x = v260;
    v299.origin.y = v261;
    v299.size.width = v257;
    v299.size.height = v256;
    CGRectGetHeight(v299);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v300.origin.x = v145;
    v300.origin.y = v146;
    v300.size.width = v147;
    v300.size.height = v148;
    v155 = CGRectGetMinX(v300);
    v301.origin.x = v145;
    v301.origin.y = v146;
    v301.size.width = v147;
    v301.size.height = v148;
    v156 = CGRectGetWidth(v301);
    if (v150 >= v156)
    {
      v150 = v156;
    }

    v157 = v249 + v248 - v154;
    sub_10002A400(&v269, v270);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v302.origin.x = v155;
    v302.origin.y = v157;
    v302.size.width = v150;
    v302.size.height = v152;
    v158 = CGRectGetMaxY(v302);
    v303.origin.x = v155;
    v303.origin.y = v157;
    v303.size.width = v150;
    v303.size.height = v152;
    CGRectGetMaxY(v303);
    sub_100007000(&v269);
    v159 = v88;
  }

  else
  {
    sub_10002B894(&v266, &unk_10097E890, qword_1007B4270);
    v159 = v88;
    v158 = v143;
  }

  v160 = v235;
  sub_10002A400(v235, v235[3]);
  v161 = dispatch thunk of LayoutView.isHidden.getter();
  v304.origin.x = v260;
  v304.origin.y = v261;
  v304.size.width = v238;
  v304.size.height = v237;
  v162 = CGRectGetMaxY(v304);
  v163 = v233;
  if ((v161 & 1) == 0)
  {
    v163 = v245;
  }

  v164 = v162 - v163;
  sub_10002A400((v101 + *(v159 + 72)), *(v101 + *(v159 + 72) + 24));
  v165 = v240;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v167 = v166;
  v247(v165, v253);
  v234 = v158;
  v168 = v158 + v167;
  v305.origin.x = v252;
  v169 = MinY;
  v305.origin.y = MinY;
  v305.size.width = v259;
  v305.size.height = Height;
  v170 = CGRectGetMinX(v305);
  if (v164 <= v168)
  {
    v164 = v168;
  }

  sub_10002A400(v160, v160[3]);
  v171 = v255;
  v172 = v254;
  v248 = v170;
  v249 = v164;
  v173 = v239;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v174 = *&v243;
  if (*(v101 + *(*&v243 + 60)) == 1)
  {
    v175 = *(*&v243 + 52);
    sub_100031660(v101 + v175, &v266, &unk_10097E890, qword_1007B4270);
    if (v267)
    {
      sub_100005A38(&v266, &v269);
      sub_100031660(v101 + v174[14], &v264, &unk_10097E890, qword_1007B4270);
      v176 = v172;
      v177 = v251;
      if (v265)
      {
        v178 = v159;
        sub_100005A38(&v264, &v266);
        v179 = [v69 traitCollection];
        v180 = UITraitCollection.isSizeClassCompact.getter();

        v181 = v270;
        v182 = v271;
        v183 = sub_10002A400(&v269, v270);
        v184 = v267;
        v185 = v268;
        v186 = sub_10002A400(&v266, v267);
        v187 = *(v182 + 8);
        v188 = *(v185 + 8);
        if (v180)
        {
          sub_1005306AC(v260, v261, v238, v237, v246, v222, v248, v249, v183, v186, v69, v101, v181, v184, v187, v188, v173, v245, v234, v260, v261, v257, v256);
        }

        else
        {
          sub_10053354C(v246, v222, v248, v249, v173, v245, v260, v261, v183, v186, v69, v101, v181, v184, v187, v188, v257, v256, v252, v169, v259, Height);
        }

        sub_100007000(&v266);
        sub_100007000(&v269);
        v174 = *&v243;
        v159 = v178;
        goto LABEL_67;
      }

      sub_10002B894(&v264, &unk_10097E890, qword_1007B4270);
      sub_100007000(&v269);
    }

    else
    {
      sub_10002B894(&v266, &unk_10097E890, qword_1007B4270);
      v176 = v172;
      v177 = v251;
    }

    sub_100031660(v101 + v175, &v269, &unk_10097E890, qword_1007B4270);
    v194 = v250;
    if (v270)
    {
      sub_10002A400(&v269, v270);
      dispatch thunk of LayoutView.frame.setter();
      sub_100007000(&v269);
    }

    else
    {
      sub_10002B894(&v269, &unk_10097E890, qword_1007B4270);
    }

    sub_100031660(v101 + v174[14], &v269, &unk_10097E890, qword_1007B4270);
    if (v270)
    {
      sub_10002A400(&v269, v270);
LABEL_81:
      dispatch thunk of LayoutView.frame.setter();
      sub_100007000(&v269);
      goto LABEL_84;
    }

    v197 = &unk_10097E890;
    v198 = qword_1007B4270;
    v199 = &v269;
  }

  else
  {
    sub_100031660(v101 + *(*&v243 + 52), &v269, &unk_10097E890, qword_1007B4270);
    if (v270)
    {
      sub_10002A400(&v269, v270);
      dispatch thunk of LayoutView.frame.setter();
      sub_100007000(&v269);
    }

    else
    {
      sub_10002B894(&v269, &unk_10097E890, qword_1007B4270);
    }

    v189 = v257;
    v176 = v172;
    v177 = v251;
    sub_100031660(v101 + v174[14], &v269, &unk_10097E890, qword_1007B4270);
    if (v270)
    {
      sub_10002A400(&v269, v270);
      dispatch thunk of LayoutView.frame.setter();
      sub_100007000(&v269);
    }

    else
    {
      sub_10002B894(&v269, &unk_10097E890, qword_1007B4270);
    }

    v190 = Height;
    v191 = [v69 traitCollection];
    v192 = UITraitCollection.isSizeClassCompact.getter();

    if (v192)
    {
      sub_10052EEC4(v69, v248, v249, v173, v245, v246, v222, v260, v261, v189, v256, v252, v169, v259, v190);
LABEL_67:
      v194 = v250;
      goto LABEL_84;
    }

    v193 = v221;
    sub_10002A400(v221, v221[3]);
    if (dispatch thunk of LayoutView.isHidden.getter())
    {
      sub_10002A400(v193, v193[3]);
      dispatch thunk of LayoutView.frame.setter();
      v159 = v242;
      v194 = v250;
    }

    else
    {
      sub_100031660(v101 + v244, &v269, &qword_100975610, &qword_1007B5690);
      v195 = v270;
      sub_10002B894(&v269, &qword_100975610, &qword_1007B5690);
      if (v195)
      {
        sub_10002A400((v101 + *(v242 + 80)), *(v101 + *(v242 + 80) + 24));
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v238 = v196;
        v247(v165, v253);
      }

      else
      {
        v238 = 0.0;
      }

      v200 = v259;
      v201 = v248;
      sub_100031660(v101 + v244, &v269, &qword_100975610, &qword_1007B5690);
      if (v270)
      {
        sub_10002A400(&v269, v270);
        Measurable.measuredSize(fitting:in:)();
        sub_100007000(&v269);
      }

      else
      {
        sub_10002B894(&v269, &qword_100975610, &qword_1007B5690);
      }

      v306.origin.x = v252;
      v306.origin.y = v169;
      v306.size.width = v200;
      v306.size.height = v190;
      CGRectGetWidth(v306);
      v307.origin.x = v201;
      v202 = v249;
      v307.origin.y = v249;
      v307.size.width = v173;
      v203 = v245;
      v307.size.height = v245;
      CGRectGetWidth(v307);
      sub_10002A400(v220, v220[3]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v204 = v165;
      v205 = v253;
      v206 = v165;
      v207 = v247;
      v247(v204, v253);
      v208 = v248;
      v209 = v173;
      sub_10002A400(v218, v218[3]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v207(v206, v205);
      sub_10002A400(v221, v221[3]);
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v211 = v210;
      v308.origin.x = v208;
      v308.origin.y = v202;
      v308.size.width = v209;
      v308.size.height = v203;
      CGRectGetMidY(v308);
      sub_10002A400(v160, v160[3]);
      if ((dispatch thunk of LayoutView.isHidden.getter() & 1) != 0 || (v309.origin.x = v208, v309.origin.y = v202, v309.size.width = v209, v309.size.height = v203, CGRectGetHeight(v309) < v211))
      {
        v310.origin.x = v208;
        v310.origin.y = v202;
        v310.size.width = v209;
        v310.size.height = v203;
        CGRectGetMinY(v310);
      }

      v194 = v250;
      sub_10002A400(v160, v160[3]);
      v212 = dispatch thunk of LayoutView.isHidden.getter();
      v165 = v240;
      v159 = v242;
      v213 = v208;
      v214 = v249;
      v215 = v239;
      v216 = v203;
      if (v212)
      {
        CGRectGetMinX(*&v213);
      }

      else
      {
        CGRectGetMaxX(*&v213);
        sub_10002A400(v220, v220[3]);
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v247(v165, v253);
      }

      v177 = v251;
      sub_10002A400(v221, v221[3]);
      CGRect.withLayoutDirection(in:relativeTo:)();
      dispatch thunk of LayoutView.frame.setter();
      v171 = v255;
      v169 = MinY;
      v190 = Height;
    }

    sub_100031660(v101 + v244, &v266, &qword_100975610, &qword_1007B5690);
    v174 = *&v243;
    if (v267)
    {
      sub_100005A38(&v266, &v269);
      sub_10002A400(v219, v219[3]);
      dispatch thunk of LayoutView.frame.getter();
      CGRectGetMidY(v311);
      v312.size.height = v190;
      v312.origin.x = v252;
      v312.origin.y = v169;
      v312.size.width = v259;
      CGRectGetMaxX(v312);
      sub_10002A400(&v269, v270);
      CGRect.withLayoutDirection(in:relativeTo:)();
      goto LABEL_81;
    }

    v197 = &qword_100975610;
    v198 = &qword_1007B5690;
    v199 = &v266;
  }

  sub_10002B894(v199, v197, v198);
LABEL_84:
  sub_100031660(v101 + v174[17], &v266, &qword_100975610, &qword_1007B5690);
  if (v267)
  {
    sub_100005A38(&v266, &v269);
    sub_10002A400(&v269, v270);
    v313.origin.x = v171;
    v313.origin.y = v177;
    v313.size.width = v194;
    v313.size.height = v176;
    CGRectGetMinX(v313);
    v314.origin.x = v171;
    v314.origin.y = v177;
    v314.size.width = v194;
    v314.size.height = v176;
    CGRectGetMinY(v314);
    v315.origin.x = v171;
    v315.origin.y = v177;
    v315.size.width = v194;
    v315.size.height = v176;
    CGRectGetWidth(v315);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v269);
  }

  else
  {
    sub_10002B894(&v266, &qword_100975610, &qword_1007B5690);
  }

  sub_100031660(v101 + v174[18], &v266, &qword_100975610, &qword_1007B5690);
  if (v267)
  {
    sub_100005A38(&v266, &v269);
    sub_10002A400(&v269, v270);
    v316.origin.x = v171;
    v316.origin.y = v177;
    v316.size.width = v194;
    v316.size.height = v176;
    CGRectGetMinX(v316);
    v317.origin.x = v171;
    v317.origin.y = v177;
    v317.size.width = v194;
    v317.size.height = v176;
    CGRectGetMaxY(v317);
    sub_10002A400((v101 + *(v159 + 96)), *(v101 + *(v159 + 96) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v247(v165, v253);
    v318.origin.x = v171;
    v318.origin.y = v177;
    v318.size.width = v194;
    v318.size.height = v176;
    CGRectGetWidth(v318);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v269);
  }

  else
  {
    sub_10002B894(&v266, &qword_100975610, &qword_1007B5690);
  }

  return LayoutRect.init(representing:)();
}

uint64_t sub_10052EEC4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15)
{
  v16 = v15;
  v162 = a9;
  v161 = a8;
  v157 = a7;
  v167 = a2;
  v22 = a14;
  v23 = a15;
  v166 = a13;
  v24 = a12;
  v172 = type metadata accessor for LabelPlaceholderCompatibility();
  v25 = *(v172 - 8);
  __chkstk_darwin(v172);
  v27 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v171 = &v138 - v29;
  v169 = type metadata accessor for CharacterSet();
  v144 = *(v169 - 1);
  __chkstk_darwin(v169);
  v143 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FloatingPointRoundingRule();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for ProductLockupLayout(0);
  v164 = *(v170 + 40);
  sub_100031660(v15 + v164, v175, &qword_100975610, &qword_1007B5690);
  v35 = v176;
  sub_10002B894(v175, &qword_100975610, &qword_1007B5690);
  v140 = v27;
  v168 = v25;
  if (v35)
  {
    v36 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10002A400((v15 + *(v36 + 80)), *(v15 + *(v36 + 80) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v146 = v37;
    (*(v32 + 8))(v34, v31);
  }

  else
  {
    v146 = 0.0;
  }

  v159 = a11;
  v158 = a10;
  v178.origin.x = a12;
  v38 = v166;
  v178.origin.y = v166;
  v178.size.width = a14;
  v178.size.height = a15;
  Width = CGRectGetWidth(v178);
  v179.origin.x = v167;
  v179.origin.y = a3;
  v160 = a4;
  v179.size.width = a4;
  v165 = a5;
  v179.size.height = a5;
  v39 = CGRectGetWidth(v179);
  v141 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v40 = (v15 + *(v141 + 76));
  v41 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v42 = (v40 + *(v41 + 28));
  v43 = v42[3];
  v147 = v42;
  sub_10002A400(v42, v43);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v45 = v44;
  v46 = *(v32 + 8);
  v152 = v34;
  v153 = v32 + 8;
  v151 = v46;
  v46(v34, v31);
  v47 = v170;
  v48 = (v15 + *(v170 + 64));
  v49 = *(v48 + 1);
  v156 = *v48;
  v142 = v41;
  v175[0] = a1;
  sub_10002849C(&unk_100980410, &unk_1007CCF30);
  v150 = v40;
  v50 = v49;
  Conditional.evaluate(with:)();
  v51 = v173;
  v52 = *(v15 + *(v47 + 60));
  v53 = (v15 + *(v47 + 44));
  v54 = v53[3];
  v163 = v53;
  sub_10002A400(v53, v54);
  v55 = dispatch thunk of LayoutView.isHidden.getter();
  v180.origin.x = a12;
  v180.origin.y = v38;
  v180.size.width = a14;
  v180.size.height = a15;
  CGRectGetWidth(v180);
  if (*&v50 == 0.0)
  {

    v58 = v165;
    v59 = v170;
    goto LABEL_21;
  }

  v56 = a6;
  v148 = a15;
  v149 = a14;
  v154 = a12;
  v155 = a3;
  v139 = v31;
  if (v55)
  {

    v57 = 0;
    v58 = v165;
LABEL_19:
    v73 = v170;
LABEL_20:
    v103 = (v16 + *(v73 + 48));
    v59 = v73;
    sub_10002A400(v103, v103[3]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      v138 = v56;
      if (v57)
      {
        v105 = v167;
        sub_10002A400(v103, v103[3]);
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v107 = v106;
        sub_10002A400(v150, v150[3]);
        v172 = v107;
        AnyDimension.topMargin(from:in:)();
        v182.origin.x = v105;
        v182.origin.y = a3;
        v108 = v160;
        v182.size.width = v160;
        v182.size.height = v58;
        CGRectGetMinX(v182);
        v183.origin.x = v105;
        v183.origin.y = a3;
        v183.size.width = v108;
        v183.size.height = v58;
        CGRectGetWidth(v183);
        sub_10002A400(v163, v163[3]);
        v109 = dispatch thunk of LayoutView.isHidden.getter();
        v110 = v105;
        v111 = a3;
        v112 = v108;
        v113 = v58;
        if (v109)
        {
          CGRectGetMinY(*&v110);
        }

        else
        {
          CGRectGetMaxY(*&v110);
        }

        v22 = v149;
        v104 = v164;
      }

      else
      {
        v114 = v164;
        sub_100031660(v16 + v164, v175, &qword_100975610, &qword_1007B5690);
        v115 = v176;
        sub_10002B894(v175, &qword_100975610, &qword_1007B5690);
        if (v115)
        {
          sub_10002A400((v16 + *(v141 + 80)), *(v16 + *(v141 + 80) + 24));
          v116 = v152;
          j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
          AnyDimension.value(in:rounded:)();
          v172 = v117;
          v151(v116, v139);
        }

        else
        {
          v172 = 0;
        }

        sub_100031660(v16 + v114, v175, &qword_100975610, &qword_1007B5690);
        if (v176)
        {
          sub_10002A400(v175, v176);
          Measurable.measuredSize(fitting:in:)();
          v171 = v118;
          sub_100007000(v175);
        }

        else
        {
          sub_10002B894(v175, &qword_100975610, &qword_1007B5690);
          v171 = 0;
        }

        v184.origin.x = v154;
        v184.origin.y = v166;
        v184.size.width = v22;
        v184.size.height = v23;
        CGRectGetWidth(v184);
        v119 = v167;
        v185.origin.x = v167;
        v185.origin.y = a3;
        v120 = v160;
        v185.size.width = v160;
        v121 = v165;
        v185.size.height = v165;
        CGRectGetWidth(v185);
        sub_10002A400(v147, v147[3]);
        v122 = v152;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v123 = a3;
        v124 = v139;
        v125 = v151;
        v151(v122, v139);
        v126 = v121;
        sub_10002A400((v150 + *(v142 + 24)), *(v150 + *(v142 + 24) + 24));
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v127 = v122;
        v128 = v124;
        v125(v127, v124);
        sub_10002A400(v103, v103[3]);
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v130 = v129;
        v186.origin.x = v119;
        v186.origin.y = v123;
        v186.size.width = v120;
        v186.size.height = v126;
        CGRectGetMidY(v186);
        sub_10002A400(v163, v163[3]);
        if ((dispatch thunk of LayoutView.isHidden.getter() & 1) != 0 || (v187.origin.x = v119, v187.origin.y = v123, v187.size.width = v120, v187.size.height = v126, CGRectGetHeight(v187) < v130))
        {
          v131 = v119;
          v188.origin.x = v119;
          v188.origin.y = v123;
          v188.size.width = v120;
          v188.size.height = v126;
          CGRectGetMinY(v188);
        }

        else
        {
          v131 = v119;
        }

        sub_10002A400(v163, v163[3]);
        v132 = dispatch thunk of LayoutView.isHidden.getter();
        v104 = v164;
        v133 = v131;
        v134 = v155;
        v135 = v120;
        v136 = v165;
        if (v132)
        {
          CGRectGetMinX(*&v133);
        }

        else
        {
          CGRectGetMaxX(*&v133);
          sub_10002A400(v147, v147[3]);
          v137 = v152;
          j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
          AnyDimension.value(in:rounded:)();
          v151(v137, v128);
        }

        v22 = v149;
      }

      sub_10002A400(v103, v103[3]);
      CGRect.withLayoutDirection(in:relativeTo:)();
      dispatch thunk of LayoutView.frame.setter();
      v23 = v148;
      v24 = v154;
      v58 = v165;
      a3 = v155;
      goto LABEL_44;
    }

LABEL_21:
    sub_10002A400((v16 + *(v59 + 48)), *(v16 + *(v59 + 48) + 24));
    dispatch thunk of LayoutView.frame.setter();
    v104 = v164;
LABEL_44:
    sub_100031660(v16 + v104, &v173, &qword_100975610, &qword_1007B5690);
    if (!v174)
    {
      return sub_10002B894(&v173, &qword_100975610, &qword_1007B5690);
    }

    sub_100005A38(&v173, v175);
    sub_10002A400(v163, v163[3]);
    if (dispatch thunk of LayoutView.isHidden.getter())
    {
      v189.origin.x = v167;
      v189.origin.y = a3;
      v189.size.width = v160;
      v189.size.height = v58;
      CGRectGetMinY(v189);
    }

    else
    {
      v190.origin.x = v167;
      v190.origin.y = a3;
      v190.size.width = v160;
      v190.size.height = v58;
      CGRectGetMidY(v190);
    }

    v191.origin.x = v24;
    v191.origin.y = v166;
    v191.size.width = v22;
    v191.size.height = v23;
    CGRectGetMaxX(v191);
    sub_10002A400(v175, v176);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    return sub_100007000(v175);
  }

  v60 = v39;
  v61 = v56;
  v62 = objc_opt_self();

  v63 = [v62 mainScreen];
  [v63 bounds];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;

  v181.origin.x = v65;
  v181.origin.y = v67;
  v181.size.width = v69;
  v181.size.height = v71;
  v72 = CGRectGetWidth(v181);
  JUScreenClassGetPortraitWidth();
  v73 = v170;
  if (v72 <= v74)
  {
    v75 = v143;
    CharacterSet.init(charactersIn:)();
    v175[0] = v156;
    v175[1] = v50;
    sub_10007FED4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v77 = v76;
    (*(v144 + 8))(v75, v169);
    if ((v77 & 1) == 0)
    {

      v57 = 1;
      v56 = v61;
      v23 = v148;
      v22 = v149;
      v24 = v154;
      v58 = v165;
      a3 = v155;
      goto LABEL_20;
    }
  }

  v56 = v61;
  v22 = v149;
  a3 = v155;
  if (v52)
  {
    v78 = [a1 traitCollection];
    v79 = UITraitCollection.isSizeClassRegular.getter();

    if ((v79 & 1) == 0)
    {

      v57 = 1;
      v23 = v148;
      v24 = v154;
      v58 = v165;
      goto LABEL_20;
    }
  }

  v169 = v51;
  v144 = v16;
  v80 = Width - (v146 + v60 + v45 + v61);
  v146 = *&v50;
  result = sub_100530150(v156, v50);
  v82 = result;
  v83 = *(result + 16);
  v84 = (v168 + 8);
  LODWORD(v168) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v85 = result + 40;
  v86 = -v83;
  v87 = -1;
  v24 = v154;
  v58 = v165;
  while (1)
  {
    if (v86 + v87 == -1)
    {

      v96 = type metadata accessor for Feature();
      v176 = v96;
      v177 = sub_1005342E4(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v97 = sub_1000056E0(v175);
      (*(*(v96 - 8) + 104))(v97, v168, v96);
      v98 = v169;
      isFeatureEnabled(_:)();
      sub_100007000(v175);
      v99 = v140;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      sub_1005342E4(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
      v100 = v172;
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v102 = v101;

      (*v84)(v99, v100);
      v57 = v80 < v102;
      goto LABEL_18;
    }

    if (++v87 >= *(v82 + 16))
    {
      break;
    }

    v88 = v85 + 16;
    v89 = type metadata accessor for Feature();
    v176 = v89;
    v177 = sub_1005342E4(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v90 = sub_1000056E0(v175);
    (*(*(v89 - 8) + 104))(v90, v168, v89);

    v91 = v169;
    isFeatureEnabled(_:)();
    sub_100007000(v175);
    v92 = v171;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    sub_1005342E4(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
    v93 = v172;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v95 = v94;
    result = (*v84)(v92, v93);
    v85 = v88;
    if (v80 < v95)
    {

      v57 = 1;
LABEL_18:
      v23 = v148;
      v16 = v144;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100530150(uint64_t a1, unint64_t a2)
{
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = (v2 + 16);

  sub_10002849C(&unk_10098A5F0, qword_1007D3848);
  sub_10007FED4();
  sub_100534810();
  StringProtocol.enumerateSubstrings<A>(in:options:_:)();

  swift_beginAccess();
  v4 = *v3;

  return v4;
}

double ProductLockupLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProductLockupLayout(0);
  sub_10002A400((v3 + v12[11]), *(v3 + v12[11] + 24));
  Measurable.measuredSize(fitting:in:)();
  v14 = rint(v13);
  v33 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10002A400((v4 + *(v33 + 96)), *(v4 + *(v33 + 96) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v16 = v15;
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_10002A400((v4 + 72), *(v4 + 96));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v19 = v18;
  v17(v11, v8);
  swift_getObjectType();
  v20 = [a1 traitCollection];
  v21 = UITraitCollection.isSizeClassRegular.getter();

  if ((v21 & 1) == 0 && *(v4 + v12[15]) == 1)
  {
    v22 = sub_100532CF0(a1, v4, a2, a3);
    v23 = (v4 + v12[12]);
    sub_10002A400(v23, v23[3]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(v23, v23[3]);
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v25 = v24;
      v27 = v26;
      sub_10002A400((v4 + *(v33 + 76)), *(v4 + *(v33 + 76) + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v29 = v28;
      v17(v11, v8);
      v30 = v29 - v27;
      if (v29 - v27 <= 0.0)
      {
        v30 = 0.0;
      }

      v14 = v14 + v25 + v30;
    }

    if (v14 <= v22)
    {
      v14 = v22;
    }
  }

  return v16 + v19 + v14;
}

uint64_t sub_1005305C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(a8 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_100033E38(0, *(v11 + 2) + 1, 1, v11);
      *(a8 + 16) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_100033E38((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = a2;
    *(a8 + 16) = v11;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1005306AC(CGFloat a1, CGFloat a2, CGFloat a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CGFloat a17, CGFloat a18, double a19, CGFloat a20, CGFloat a21, CGFloat a22, CGFloat a23)
{
  v159 = a16;
  v154 = a15;
  v171 = *&a11;
  v169 = a8;
  v151 = a6;
  v168 = a4;
  v165 = a3;
  v163 = a2;
  v152 = a1;
  v29 = a22;
  v166 = a18;
  v30 = a17;
  *&v31 = COERCE_DOUBLE(type metadata accessor for FloatingPointRoundingRule());
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a14 - 8);
  __chkstk_darwin(v36);
  v38 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v39);
  v156 = v42;
  v43 = *(v42 + 16);
  v155 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = a13;
  v43(v40);
  v158 = v35;
  v44 = *(v35 + 16);
  v157 = v38;
  v161 = a14;
  v44(v38, a10, a14);
  v45 = type metadata accessor for ProductLockupLayout(0);
  v46 = v45[10];
  sub_100031660(a12 + v46, &v173, &qword_100975610, &qword_1007B5690);
  v162 = a20;
  v164 = a7;
  if (v174)
  {
    sub_100005A38(&v173, &v175);
    v47 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10002A400((a12 + *(v47 + 92)), *(a12 + *(v47 + 92) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v48 = v171;
    AnyDimension.value(in:rounded:)();
    v153 = a17;
    v50 = v49;
    (*(v32 + 8))(v34, v31);
    v177.origin.x = v152;
    v177.origin.y = v163;
    v177.size.width = v165;
    v177.size.height = v168;
    MaxY = CGRectGetMaxY(v177);
    v52 = v151;
    v53 = MaxY - v151;
    if (v53 > v50 + a19)
    {
      v54 = v53;
    }

    else
    {
      v54 = v50 + a19;
    }

    v178.origin.x = a20;
    v178.origin.y = a21;
    v178.size.width = a22;
    v178.size.height = a23;
    v55 = CGRectGetMaxX(v178) - a5;
    sub_10002A400(&v175, v176);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v179.origin.x = v55;
    v179.origin.y = v54;
    a7 = v164;
    v30 = v153;
    v179.size.width = a5;
    v179.size.height = v52;
    v29 = a22;
    v168 = CGRectGetMaxY(v179);
    sub_100007000(&v175);
    v56 = v162;
  }

  else
  {
    sub_10002B894(&v173, &qword_100975610, &qword_1007B5690);
    v180.origin.x = v152;
    v180.origin.y = v163;
    v180.size.width = v165;
    v180.size.height = v168;
    v57 = CGRectGetMaxY(v180);
    if (v57 <= a19)
    {
      v57 = a19;
    }

    v168 = v57;
    v56 = a20;
    v48 = v171;
  }

  v170 = a21;
  v167 = v29;
  v181.origin.x = v56;
  v181.origin.y = a21;
  v181.size.width = v29;
  v181.size.height = a23;
  MaxX = CGRectGetMaxX(v181);
  v182.origin.x = a7;
  v59 = v169;
  v182.origin.y = v169;
  v182.size.width = v30;
  v60 = v166;
  v182.size.height = v166;
  v171 = MaxX - CGRectGetWidth(v182);
  v163 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout.Metrics(0));
  sub_10002A400((a12 + *(*&v163 + 72)), *(a12 + *(*&v163 + 72) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v62 = v61;
  v63 = *(v32 + 8);
  v150 = v34;
  v152 = *&v31;
  *&v151 = v32 + 8;
  v149 = v63;
  v63(v34, v31);
  v64 = v168 + v62;
  v183.origin.x = a7;
  v183.origin.y = v59;
  v183.size.width = v30;
  v183.size.height = v60;
  Width = CGRectGetWidth(v183);
  v184.origin.x = a7;
  v184.origin.y = v59;
  v66 = v30;
  v184.size.width = v30;
  v184.size.height = v60;
  Height = CGRectGetHeight(v184);
  v68 = (a12 + v45[11]);
  v69 = v48;
  sub_10002A400(v68, v68[3]);
  v172 = a23;
  v168 = Height;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400(v68, v68[3]);
  v70 = dispatch thunk of LayoutView.isHidden.getter();
  sub_10002A400(v68, v68[3]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    v164 = v171;
    v169 = v64;
    v66 = Width;
    v166 = v168;
  }

  v71 = (a12 + v45[12]);
  sub_10002A400(v71, v71[3]);
  v72 = dispatch thunk of LayoutView.isHidden.getter();
  v165 = v64;
  if (v72)
  {
    sub_10002A400(v71, v71[3]);
    dispatch thunk of LayoutView.frame.setter();
    v73 = *&v163;
    v74 = v167;
    v75 = v172;
    v76 = v170;
    v77 = v56;
  }

  else
  {
    v73 = *&v163;
    v148 = Width;
    if (v70)
    {
      v78 = v56;
      sub_100031660(a12 + v46, &v175, &qword_100975610, &qword_1007B5690);
      v79 = v176;
      sub_10002B894(&v175, &qword_100975610, &qword_1007B5690);
      v153 = v66;
      v80 = v164;
      if (v79)
      {
        sub_10002A400((a12 + v73[20]), *(a12 + v73[20] + 24));
        v81 = v150;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v147 = v82;
        v149(v81, *&v152);
      }

      else
      {
        v147 = 0.0;
      }

      v94 = v169;
      sub_100031660(a12 + v46, &v175, &qword_100975610, &qword_1007B5690);
      if (v176)
      {
        sub_10002A400(&v175, v176);
        v95 = v167;
        v96 = v172;
        Measurable.measuredSize(fitting:in:)();
        v145 = v97;
        sub_100007000(&v175);
      }

      else
      {
        sub_10002B894(&v175, &qword_100975610, &qword_1007B5690);
        v145 = 0;
        v96 = v172;
        v95 = v167;
      }

      v187.origin.x = v78;
      v187.origin.y = v170;
      v187.size.width = v95;
      v187.size.height = v96;
      CGRectGetWidth(v187);
      v188.origin.x = v80;
      v188.origin.y = v94;
      v169 = v94;
      v98 = v153;
      v188.size.width = v153;
      v99 = v166;
      v188.size.height = v166;
      CGRectGetWidth(v188);
      v100 = v73[19];
      v146 = a12;
      v101 = a12 + v100;
      v144 = a12 + v100;
      v102 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
      v103 = (v101 + *(v102 + 28));
      v104 = v103[3];
      v143 = v103;
      sub_10002A400(v103, v104);
      v105 = v150;
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v106 = v80;
      v107 = v152;
      v108 = v149;
      v149(v105, *&v152);
      sub_10002A400((v144 + *(v102 + 24)), *(v144 + *(v102 + 24) + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v108(v105, *&v107);
      v109 = v98;
      sub_10002A400(v71, v71[3]);
      v75 = v96;
      v110 = v169;
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v112 = v111;
      v189.origin.x = v106;
      v189.origin.y = v110;
      v189.size.width = v109;
      v189.size.height = v99;
      CGRectGetMidY(v189);
      sub_10002A400(v68, v68[3]);
      v113 = dispatch thunk of LayoutView.isHidden.getter();
      v147 = v112;
      if ((v113 & 1) != 0 || (v190.origin.x = v106, v190.origin.y = v110, v190.size.width = v109, v190.size.height = v99, CGRectGetHeight(v190) < v112))
      {
        v191.size.width = v109;
        v114 = v106;
        v191.origin.x = v106;
        v191.origin.y = v110;
        v191.size.height = v99;
        CGRectGetMinY(v191);
      }

      else
      {
        v114 = v106;
      }

      sub_10002A400(v68, v68[3]);
      v115 = dispatch thunk of LayoutView.isHidden.getter();
      v73 = *&v163;
      a12 = v146;
      v116 = v114;
      v117 = v110;
      v118 = v153;
      v119 = v166;
      if (v115)
      {
        CGRectGetMinX(*&v116);
      }

      else
      {
        CGRectGetMaxX(*&v116);
        sub_10002A400(v143, v143[3]);
        v120 = v150;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v149(v120, *&v152);
      }

      v76 = v170;
      v77 = v162;
    }

    else
    {
      v83 = v164;
      v84 = v66;
      sub_10002A400(v71, v71[3]);
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v86 = v85;
      sub_10002A400((a12 + v73[19]), *(a12 + v73[19] + 24));
      v147 = v86;
      AnyDimension.topMargin(from:in:)();
      v185.origin.x = v83;
      v87 = v169;
      v185.origin.y = v169;
      v185.size.width = v84;
      v88 = v166;
      v185.size.height = v166;
      CGRectGetMinX(v185);
      v186.origin.x = v83;
      v186.origin.y = v87;
      v186.size.width = v84;
      v186.size.height = v88;
      CGRectGetWidth(v186);
      sub_10002A400(v68, v68[3]);
      v89 = dispatch thunk of LayoutView.isHidden.getter();
      v90 = v83;
      v91 = v87;
      v92 = v84;
      v93 = v88;
      if (v89)
      {
        CGRectGetMinY(*&v90);
      }

      else
      {
        CGRectGetMaxY(*&v90);
      }

      v76 = v170;
      v77 = v162;
      v75 = v172;
    }

    sub_10002A400(v71, v71[3]);
    v74 = v167;
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    Width = v148;
  }

  v192.origin.x = v77;
  v192.origin.y = v76;
  v192.size.width = v74;
  v192.size.height = v75;
  v121 = CGRectGetWidth(v192);
  v193.origin.x = v171;
  v193.origin.y = v165;
  v193.size.width = Width;
  v193.size.height = v168;
  v122 = v74;
  v123 = v121 - CGRectGetWidth(v193);
  *&v173 = v69;
  sub_10002849C(&qword_100979010, qword_1007BE140);
  Conditional.evaluate(with:)();
  if (v123 - v175 > 0.0)
  {
    v124 = v123 - v175;
  }

  else
  {
    v124 = 0.0;
  }

  v194.origin.x = v77;
  v194.origin.y = v76;
  v194.size.width = v74;
  v125 = v172;
  v194.size.height = v172;
  CGRectGetHeight(v194);
  v126 = v155;
  v127 = v160;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v128 = Width;
  v130 = v129;
  v132 = v131;
  v169 = v133;
  v195.origin.x = v77;
  v195.origin.y = v76;
  v195.size.width = v122;
  v195.size.height = v125;
  MinX = CGRectGetMinX(v195);
  v196.origin.x = v171;
  v196.origin.y = v165;
  v196.size.width = v128;
  v196.size.height = v168;
  MinY = CGRectGetMinY(v196);
  if (v124 < v130)
  {
    v130 = v124;
  }

  v197.origin.x = MinX;
  v197.origin.y = MinY;
  v197.size.width = v130;
  v197.size.height = v132;
  v171 = CGRectGetMaxY(v197) - v169;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v198.origin.x = v77;
  v136 = v170;
  v198.origin.y = v170;
  v198.size.width = v122;
  v137 = v172;
  v198.size.height = v172;
  CGRectGetHeight(v198);
  v138 = v157;
  v139 = v161;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v168 = v140;
  v199.origin.x = v77;
  v199.origin.y = v136;
  v199.size.width = v122;
  v199.size.height = v137;
  v169 = CGRectGetMinX(v199);
  sub_10002A400((a12 + v73[21]), *(a12 + v73[21] + 24));
  AnyDimension.topMargin(from:in:)();
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  (*(v156 + 8))(v126, v127);
  return (*(v158 + 8))(v138, v139);
}

double sub_100531700(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v21 = UITraitCollection.isSizeClassRegular.getter();

  sub_10002A400((a2 + 32), *(a2 + 56));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v16 = *(v11 + 8);
  v16(v14, v10);
  sub_10002A400((a2 + 72), *(a2 + 96));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v16(v14, v10);
  v17 = a4 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v18 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v22 = a1;
  sub_10002849C(&qword_100979010, qword_1007BE140);
  Conditional.evaluate(with:)();
  v20 = a3;
  sub_100531A60(a1, a2, a3, v17 - v23, a5);
  sub_10002A400((a2 + *(v18 + 96)), *(a2 + *(v18 + 96) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v16(v14, v10);
  if (v21 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_100532004(a1, a2, v20, a4, a5);
  }

  return a4;
}

uint64_t sub_1005319F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_100531A60(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v48 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = UITraitCollection.isSizeClassRegular.getter();

  v49 = type metadata accessor for ProductLockupLayout(0);
  v16 = v49[10];
  sub_100031660(a2 + v16, v50, &qword_100975610, &qword_1007B5690);
  if (v51)
  {
    sub_10002A400(v50, v51);
    Measurable.measuredSize(fitting:in:)();
    v18 = v17;
    sub_100007000(v50);
  }

  else
  {
    sub_10002B894(v50, &qword_100975610, &qword_1007B5690);
    v18 = 0.0;
  }

  v19 = sub_100532F6C(a1, a2, a4, a5);
  sub_100031660(a2 + v16, v50, &qword_100975610, &qword_1007B5690);
  v20 = v51;
  sub_10002B894(v50, &qword_100975610, &qword_1007B5690);
  if (v20)
  {
    v21 = v49;
    if ((v15 & 1) == 0)
    {
      if (*(a2 + v49[15]))
      {
        v22 = type metadata accessor for ProductLockupLayout.Metrics(0);
        sub_10002A400((a2 + *(v22 + 92)), *(a2 + *(v22 + 92) + 24));
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v24 = v23;
        (*(v48 + 8))(v13, v10);
        v19 = v19 + v18 + v24;
      }

LABEL_9:
      if (*(a2 + v21[15]))
      {
        return v19;
      }
    }
  }

  else
  {
    v21 = v49;
    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v46 = *(a2 + 120);
  v25 = (a2 + v21[11]);
  v26 = v25[3];
  v45 = v25;
  sub_10002A400(v25, v26);
  Measurable.measuredSize(fitting:in:)();
  v28 = v27;
  sub_100031660(a2 + v16, v50, &qword_100975610, &qword_1007B5690);
  v29 = v51;
  sub_10002B894(v50, &qword_100975610, &qword_1007B5690);
  v47 = a3;
  if (v29)
  {
    v30 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10002A400((a2 + *(v30 + 80)), *(a2 + *(v30 + 80) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v31 = a1;
    v32 = v48;
    (*(v48 + 8))(v13, v10);
    v33 = v10;
  }

  else
  {
    v33 = v10;
    v31 = a1;
    v32 = v48;
  }

  v44 = a2;
  v48 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v34 = a2 + *(v48 + 76);
  v35 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  sub_10002A400((v34 + *(v35 + 28)), *(v34 + *(v35 + 28) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v36 = *(v32 + 8);
  v36(v13, v33);
  v37 = v36;
  sub_10002A400((v34 + *(v35 + 24)), *(v34 + *(v35 + 24) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v36(v13, v33);
  v38 = v44;
  sub_10002A400((v44 + v49[12]), *(v44 + v49[12] + 24));
  Measurable.measuredSize(fitting:in:)();
  v40 = v39;
  sub_10002A400(v45, v45[3]);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    v28 = v40;
  }

  sub_10002A400((v38 + *(v48 + 72)), *(v38 + *(v48 + 72) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v42 = v41;
  v37(v13, v33);
  if (v19 < v46 - v42 - v28)
  {
    v19 = v46 - v42 - v28;
  }

  return sub_100532004(v31, v38, v47, a4, a5) + v19;
}

double sub_100532004(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v44 = a3;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = UITraitCollection.isSizeClassRegular.getter();

  v16 = type metadata accessor for ProductLockupLayout(0);
  sub_10002A400((a2 + v16[11]), *(a2 + v16[11] + 24));
  Measurable.measuredSize(fitting:in:)();
  v18 = v17;
  v42 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10002A400((a2 + *(v42 + 72)), *(a2 + *(v42 + 72) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v20 = v19;
  v21 = *(v10 + 8);
  v43 = v9;
  v21(v13, v9);
  if ((v15 & 1) != 0 || *(a2 + v16[15]) == 1)
  {
    v22 = a2 + *(v42 + 76);
    v23 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10002A400((v22 + *(v23 + 28)), *(v22 + *(v23 + 28) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v25 = v24;
    v21(v13, v43);
    sub_10053246C(a1, a2, a4, a5, a4 - (v18 + v25));
    v27 = v26;
    v28 = sub_100532CF0(a1, a2, a4, a5);
    if (v27 > v28)
    {
      v28 = v27;
    }
  }

  else
  {
    v29 = v16[10];
    sub_100031660(a2 + v29, v45, &qword_100975610, &qword_1007B5690);
    if (v46)
    {
      sub_10002A400(v45, v46);
      Measurable.measuredSize(fitting:in:)();
      v31 = v30;
      sub_100007000(v45);
    }

    else
    {
      sub_10002B894(v45, &qword_100975610, &qword_1007B5690);
      v31 = 0.0;
    }

    v32 = v42;
    sub_100031660(a2 + v29, v45, &qword_100975610, &qword_1007B5690);
    v33 = v46;
    sub_10002B894(v45, &qword_100975610, &qword_1007B5690);
    if (v33)
    {
      sub_10002A400((a2 + *(v32 + 80)), *(a2 + *(v32 + 80) + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v35 = v34;
      v36 = v43;
      v21(v13, v43);
    }

    else
    {
      v35 = 0.0;
      v36 = v43;
    }

    v37 = a2 + *(v32 + 76);
    v38 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10002A400((v37 + *(v38 + 28)), *(v37 + *(v38 + 28) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v40 = v39;
    v21(v13, v36);
    sub_10053246C(a1, a2, a4, a5, a4 - (v35 + v31 + v18 + v40));
  }

  return v20 + 0.0 + v28;
}

void sub_10053246C(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v78 = type metadata accessor for LabelPlaceholderCompatibility();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for CharacterSet();
  v75 = *(v77 - 1);
  __chkstk_darwin(v77);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = (a2 + v17[11]);
  sub_10002A400(v18, v18[3]);
  Measurable.measuredSize(fitting:in:)();
  v19 = (a2 + v17[16]);
  v74 = v19[1];
  if (v74)
  {
    v69 = v13;
    v70 = v12;
    v71 = *v19;
    v20 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76));
    type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v79[0] = a1;
    sub_10002849C(&unk_100980410, &unk_1007CCF30);
    v66 = v20;
    Conditional.evaluate(with:)();
    v21 = v82;
    v67 = v17;
    v22 = v17[15];
    v68 = a2;
    v23 = *(a2 + v22);
    sub_10002A400(v18, v18[3]);
    if (dispatch thunk of LayoutView.isHidden.getter())
    {
    }

    else
    {
      v24 = objc_opt_self();
      v25 = v74;

      v26 = [v24 mainScreen];
      [v26 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v83.origin.x = v28;
      v83.origin.y = v30;
      v83.size.width = v32;
      v83.size.height = v34;
      Width = CGRectGetWidth(v83);
      JUScreenClassGetPortraitWidth();
      if (Width > v36 || (CharacterSet.init(charactersIn:)(), v79[0] = v71, v79[1] = v25, sub_10007FED4(), StringProtocol.rangeOfCharacter(from:options:range:)(), v38 = v37, (*(v75 + 8))(v16, v77), (v38)) && (!v23 || (v39 = [a1 traitCollection], v40 = UITraitCollection.isSizeClassRegular.getter(), v39, (v40)))
      {
        v77 = v21;
        v41 = sub_100530150(v71, v25);
        v42 = *(v41 + 16);
        v43 = (v76 + 8);
        LODWORD(v75) = enum case for Feature.measurement_with_labelplaceholder(_:);
        v44 = v41 + 40;
        v76 = -v42;
        v45 = -1;
        while (v76 + v45 != -1)
        {
          if (++v45 >= *(v41 + 16))
          {
            __break(1u);
            return;
          }

          v46 = v44 + 16;
          v47 = a1;
          v48 = type metadata accessor for Feature();
          v80 = v48;
          v81 = sub_1005342E4(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v49 = sub_1000056E0(v79);
          (*(*(v48 - 8) + 104))(v49, v75, v48);

          v50 = v77;
          isFeatureEnabled(_:)();
          sub_100007000(v79);
          a1 = v47;
          LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
          sub_1005342E4(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
          v51 = v78;
          dispatch thunk of Measurable.measurements(fitting:in:)();
          v53 = v52;
          (*v43)(v11, v51);
          v44 = v46;
          if (v53 > a5)
          {

            v21 = v77;
            goto LABEL_13;
          }
        }

        v59 = type metadata accessor for Feature();
        v80 = v59;
        v81 = sub_1005342E4(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v60 = sub_1000056E0(v79);
        (*(*(v59 - 8) + 104))(v60, v75, v59);
        v61 = v77;
        isFeatureEnabled(_:)();
        sub_100007000(v79);
        v62 = v72;
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        sub_1005342E4(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
        v63 = v78;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v65 = v64;

        (*v43)(v62, v63);
        v54 = v70;
        v55 = v69;
        v56 = v68;
        v57 = v67;
        if (v65 > a5)
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_13:

        v54 = v70;
        v55 = v69;
        v56 = v68;
        v57 = v67;
LABEL_14:
        sub_10002A400((v56 + v57[12]), *(v56 + v57[12] + 24));
        dispatch thunk of Measurable.measurements(fitting:in:)();
        sub_10002A400(v66, v66[3]);
        v58 = v73;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        (*(v55 + 8))(v58, v54);
      }
    }
  }
}

double sub_100532CF0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProductLockupLayout(0);
  sub_100031660(a2 + *(v9 + 52), &v24, &unk_10097E890, qword_1007B4270);
  if (!v25)
  {
    sub_10002B894(&v24, &unk_10097E890, qword_1007B4270);
    return 0.0;
  }

  sub_100005A38(&v24, v26);
  sub_100031660(a2 + *(v9 + 56), &v22, &unk_10097E890, qword_1007B4270);
  if (!v23)
  {
    sub_10002B894(&v22, &unk_10097E890, qword_1007B4270);
    sub_100007000(v26);
    return 0.0;
  }

  sub_100005A38(&v22, &v24);
  sub_10002A400(v26, v26[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v11 = v10;
  v13 = v12;
  sub_10002A400(&v24, v25);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v15 = v14;
  v16 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10002A400((a2 + *(v16 + 84)), *(a2 + *(v16 + 84) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v19 = v15 + v11 - v13 + v18;
  sub_100007000(&v24);
  sub_100007000(v26);
  return v19;
}

double sub_100532F6C(void *a1, uint64_t a2, double a3, double a4)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 traitCollection];
  v56 = UITraitCollection.isSizeClassRegular.getter();

  v12 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v57 = a1;
  v13 = sub_10002849C(&qword_100979010, qword_1007BE140);
  Conditional.evaluate(with:)();
  v14 = *v60;
  v15 = v12;
  *&v57 = a1;
  v55 = v13;
  Conditional.evaluate(with:)();
  v16 = *v60;
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = v17[10];
  sub_100031660(a2 + v18, v60, &qword_100975610, &qword_1007B5690);
  if (v61)
  {
    sub_10002A400(v60, v61);
    Measurable.measuredSize(fitting:in:)();
    sub_100007000(v60);
  }

  else
  {
    sub_10002B894(v60, &qword_100975610, &qword_1007B5690);
  }

  sub_100031660(a2 + v18, v60, &qword_100975610, &qword_1007B5690);
  v19 = v61;
  sub_10002B894(v60, &qword_100975610, &qword_1007B5690);
  if (v19)
  {
    sub_10002A400((a2 + *(v15 + 80)), *(a2 + *(v15 + 80) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v7 + 8))(v10, v6);
  }

  v20 = (a2 + v17[6]);
  sub_10002A400(v20, v20[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v23 = v22;
  v25 = v24;
  v26 = v21;
  v28 = v27;
  if (v14 - v21 > 0.0)
  {
    v29 = v14 - v21;
  }

  else
  {
    v29 = 0.0;
  }

  sub_10002A400(v20, v20[3]);
  dispatch thunk of LayoutTextView.languageAwareOutsets.getter();
  v31 = v25 - v28 + v29 + v30;
  sub_10002C0AC(v20, v60);
  *&v57 = a1;
  sub_10002849C(&unk_100973B30, &qword_1007B5248);
  Conditional.evaluate(with:)();
  v32 = v17[9];
  sub_100031660(a2 + v32, &v57, &unk_10097E890, qword_1007B4270);
  sub_10002B894(&v57, &unk_10097E890, qword_1007B4270);
  sub_10002A400(v60, v61);
  v62.var0 = v23;
  v62.var1 = v25;
  v62.var2 = v26;
  v62.var3 = v28;
  LayoutTextView.estimatedNumberOfLines(from:)(v62);
  sub_100007000(v60);
  v33 = (a2 + v17[8]);
  sub_10002A400(v33, v33[3]);
  dispatch thunk of LayoutTextView.numberOfLines.setter();
  v34 = (a2 + v17[7]);
  sub_10002A400(v34, v34[3]);
  dispatch thunk of LayoutTextView.numberOfLines.setter();
  sub_10002A400(v33, v33[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10002A400(v34, v34[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v42 = v41;
  v43 = v16 - v38 + v36 - v40;
  v46 = v16 - v44 + v45 - v41;
  if (v43 > v46)
  {
    v47 = v43;
  }

  else
  {
    v47 = v46;
  }

  v48 = v31 + v47;
  sub_100031660(a2 + v32, &v57, &unk_10097E890, qword_1007B4270);
  if (v58)
  {
    sub_100005A38(&v57, v60);
    v59 = a1;
    Conditional.evaluate(with:)();
    v49 = *&v57;
    sub_10002A400(v60, v61);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v51 = v50;
    v48 = v48 + v49 - v52 + v53 - v50;
    sub_100007000(v60);
  }

  else
  {
    if (v43 >= v46)
    {
      v51 = v40;
    }

    else
    {
      v51 = v42;
    }

    sub_10002B894(&v57, &unk_10097E890, qword_1007B4270);
  }

  return v48 + v51;
}

uint64_t sub_10053354C(double a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, double a18, CGFloat a19, CGFloat a20, CGFloat a21, CGFloat a22)
{
  v123 = a16;
  v118 = a15;
  v137 = a8;
  v125 = a6;
  v130 = a5;
  v129 = a4;
  v136 = a3;
  v116 = a1;
  v128 = COERCE_DOUBLE(type metadata accessor for FloatingPointRoundingRule());
  v29 = *(*&v128 - 8);
  __chkstk_darwin(*&v128);
  v127 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a14 - 8);
  __chkstk_darwin(v32);
  v34 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v35);
  v120 = v38;
  v39 = *(v38 + 16);
  v119 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39(v36);
  v122 = v31;
  v40 = *(v31 + 16);
  v121 = v34;
  v40(v34, a10, a14);
  *&v41 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout(0));
  v42 = v41[10];
  sub_100031660(a12 + v42, &v139, &qword_100975610, &qword_1007B5690);
  v135 = a12;
  v134 = a7;
  v138 = a18;
  v133 = a17;
  v132 = a21;
  v126 = a20;
  v131 = a19;
  v124 = a22;
  if (v140)
  {
    sub_100005A38(&v139, &v141);
    sub_10002A400((a12 + v41[6]), *(a12 + v41[6] + 24));
    dispatch thunk of LayoutView.frame.getter();
    CGRectGetMidY(v143);
    v115 = a2;
    v144.origin.x = a19;
    v144.origin.y = a20;
    v144.size.width = a21;
    v144.size.height = a22;
    CGRectGetMinY(v144);
    v145.origin.x = a19;
    v145.origin.y = a20;
    v145.size.width = a21;
    v145.size.height = a22;
    CGRectGetMaxX(v145);
    sub_10002A400(&v141, v142);
    CGRect.withLayoutDirection(in:relativeTo:)();
    a12 = v135;
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v141);
  }

  else
  {
    sub_10002B894(&v139, &qword_100975610, &qword_1007B5690);
  }

  v116 = *&v41;
  v43 = a12;
  v44 = (a12 + v41[12]);
  sub_10002A400(v44, v44[3]);
  v45 = dispatch thunk of LayoutView.isHidden.getter();
  v46 = v125;
  v47 = v129;
  if (v45)
  {
    sub_10002A400(v44, v44[3]);
    dispatch thunk of LayoutView.frame.setter();
    v48 = v124;
    v49 = v126;
  }

  else
  {
    v117 = v29;
    sub_100031660(v43 + v42, &v141, &qword_100975610, &qword_1007B5690);
    v50 = v142;
    sub_10002B894(&v141, &qword_100975610, &qword_1007B5690);
    v51 = v131;
    if (v50)
    {
      v52 = type metadata accessor for ProductLockupLayout.Metrics(0);
      sub_10002A400((v43 + *(v52 + 80)), *(v43 + *(v52 + 80) + 24));
      v53 = v127;
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      (*(v117 + 8))(v53, COERCE_DOUBLE(*&v128));
    }

    v54 = v132;
    v55 = v124;
    sub_100031660(v43 + v42, &v141, &qword_100975610, &qword_1007B5690);
    v56 = v126;
    v114 = a14;
    v113 = a13;
    if (v142)
    {
      sub_10002A400(&v141, v142);
      Measurable.measuredSize(fitting:in:)();
      sub_100007000(&v141);
    }

    else
    {
      sub_10002B894(&v141, &qword_100975610, &qword_1007B5690);
    }

    v57 = v117;
    v146.origin.x = v51;
    v146.origin.y = v56;
    v146.size.width = v54;
    v146.size.height = v55;
    CGRectGetWidth(v146);
    v147.origin.x = v136;
    v147.origin.y = v47;
    v58 = v130;
    v147.size.width = v130;
    v59 = v125;
    v147.size.height = v125;
    CGRectGetWidth(v147);
    v60 = v135 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);
    v61 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v62 = (v60 + *(v61 + 28));
    v63 = v62[3];
    v112 = v62;
    sub_10002A400(v62, v63);
    v64 = v127;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v65 = a11;
    v66 = *(v57 + 8);
    v67 = v128;
    v66(v64, *&v128);
    v68 = v136;
    v69 = v58;
    v47 = v129;
    sub_10002A400((v60 + *(v61 + 24)), *(v60 + *(v61 + 24) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v115 = *&v66;
    v66(v64, *&v67);
    a11 = v65;
    sub_10002A400(v44, v44[3]);
    v46 = v59;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v71 = v70;
    v148.origin.x = v68;
    v148.origin.y = v47;
    v148.size.width = v69;
    v148.size.height = v59;
    CGRectGetMidY(v148);
    v72 = (v135 + *(*&v116 + 44));
    sub_10002A400(v72, v72[3]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) != 0 || (v149.origin.x = v68, v149.origin.y = v47, v149.size.width = v69, v149.size.height = v59, CGRectGetHeight(v149) < v71))
    {
      v150.origin.x = v68;
      v150.origin.y = v47;
      v150.size.width = v69;
      v150.size.height = v59;
      CGRectGetMinY(v150);
    }

    a14 = v114;
    sub_10002A400(v72, v72[3]);
    v73 = dispatch thunk of LayoutView.isHidden.getter();
    v29 = v117;
    v49 = v126;
    v74 = v68;
    v75 = v47;
    v76 = v69;
    v77 = v46;
    if (v73)
    {
      CGRectGetMinX(*&v74);
    }

    else
    {
      CGRectGetMaxX(*&v74);
      sub_10002A400(v112, v112[3]);
      v78 = v29;
      v79 = v127;
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v80 = v79;
      v29 = v78;
      (*&v115)(v80, *&v128);
    }

    a13 = v113;
    sub_10002A400(v44, v44[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v48 = v124;
  }

  v81 = v47;
  sub_10002A400(v44, v44[3]);
  v82 = v132;
  v83 = v48;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v85 = v84;
  sub_10002A400(v44, v44[3]);
  v86 = dispatch thunk of LayoutView.isHidden.getter();
  v87 = 0.0;
  v88 = v135;
  if ((v86 & 1) == 0)
  {
    v89 = v88 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);
    v90 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10002A400((v89 + *(v90 + 28)), *(v89 + *(v90 + 28) + 24));
    v91 = v127;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v93 = v92;
    (*(v29 + 8))(v91, COERCE_DOUBLE(*&v128));
    v87 = v85 + v93;
  }

  v94 = v131;
  v151.origin.x = v131;
  v151.origin.y = v49;
  v151.size.width = v82;
  v151.size.height = v83;
  Width = CGRectGetWidth(v151);
  v152.origin.x = v136;
  v152.origin.y = v81;
  v152.size.width = v130;
  v152.size.height = v46;
  v96 = Width - CGRectGetWidth(v152);
  v97 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v139 = a11;
  sub_10002849C(&qword_100979010, qword_1007BE140);
  Conditional.evaluate(with:)();
  if (v96 - v141 - v87 > 0.0)
  {
    v98 = v96 - v141 - v87;
  }

  else
  {
    v98 = 0.0;
  }

  v153.origin.x = v94;
  v153.origin.y = v49;
  v153.size.width = v82;
  v153.size.height = v83;
  CGRectGetHeight(v153);
  v99 = v119;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v101 = v100;
  v103 = v102;
  v128 = v104;
  v154.origin.x = v94;
  v154.origin.y = v49;
  v154.size.width = v82;
  v154.size.height = v83;
  MaxX = CGRectGetMaxX(v154);
  v155.origin.x = v136;
  v155.origin.y = v129;
  v155.size.width = v130;
  v155.size.height = v46;
  MinY = CGRectGetMinY(v155);
  if (v98 < v101)
  {
    v101 = v98;
  }

  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v156.origin.x = MaxX - v98;
  v156.origin.y = MinY;
  v156.size.width = v101;
  v156.size.height = v103;
  v136 = CGRectGetMaxY(v156) - v128;
  v107 = v131;
  v157.origin.x = v131;
  v157.origin.y = v49;
  v108 = v132;
  v157.size.width = v132;
  v157.size.height = v83;
  CGRectGetHeight(v157);
  v109 = v121;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v130 = v110;
  v158.origin.x = v107;
  v158.origin.y = v49;
  v158.size.width = v108;
  v158.size.height = v83;
  CGRectGetMaxX(v158);
  sub_10002A400((v88 + *(v97 + 84)), *(v88 + *(v97 + 84) + 24));
  AnyDimension.topMargin(from:in:)();
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  (*(v120 + 8))(v99, a13);
  return (*(v122 + 8))(v109, a14);
}

uint64_t sub_100534260(uint64_t a1)
{
  *(a1 + 8) = sub_1005342E4(&qword_1009856F0, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
  result = sub_1005342E4(&qword_10098A350, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1005342E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100534354(uint64_t a1)
{
  type metadata accessor for ProductLockupLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_100154428(319, &unk_10098A3C0, &protocol descriptor for LayoutView);
    if (v2 <= 0x3F)
    {
      sub_100154428(319, &qword_10097E940, &protocol descriptor for LayoutTextView);
      if (v3 <= 0x3F)
      {
        sub_100154308(319, &unk_10098A3D0, &unk_10097E950, &qword_1007B1360);
        if (v4 <= 0x3F)
        {
          sub_100154308(319, &qword_10098A3E0, &unk_10097E960, &unk_1007B1330);
          if (v5 <= 0x3F)
          {
            sub_1000C6500();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1005344E8(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    sub_100154428(319, &qword_1009842D0, &protocol descriptor for AnyDimension);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_1005346D4(319, qword_10097EA30, &type metadata for CGFloat);
        if (v4 <= 0x3F)
        {
          sub_100534660(319);
          if (v5 <= 0x3F)
          {
            sub_1005346D4(319, &unk_10098A4D8, &type metadata for Int);
            if (v6 <= 0x3F)
            {
              type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(319);
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
}

void sub_100534660(uint64_t a1)
{
  if (!qword_10098A4C8)
  {
    sub_10002D1A8(&qword_100973F50, &qword_1007B4260);
    sub_1000367E8();
    v1 = type metadata accessor for Conditional();
    if (!v2)
    {
      atomic_store(v1, &qword_10098A4C8);
    }
  }
}

void sub_1005346D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_10002D1A8(&qword_100973F50, &qword_1007B4260);
    v4 = type metadata accessor for Conditional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100534768(uint64_t a1)
{
  sub_100154428(319, &qword_1009842D0, &protocol descriptor for AnyDimension);
  if (v1 <= 0x3F)
  {
    sub_100534660(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100534810()
{
  result = qword_10098A600;
  if (!qword_10098A600)
  {
    sub_10002D1A8(&unk_10098A5F0, qword_1007D3848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A600);
  }

  return result;
}

unint64_t sub_100534888()
{
  result = qword_10098A608;
  if (!qword_10098A608)
  {
    type metadata accessor for CancelPreorderAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A608);
  }

  return result;
}

uint64_t sub_1005348E0(uint64_t a1, uint64_t a2)
{
  v14[1] = a2;
  v3 = type metadata accessor for ActionOutcome();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSLogger();
  sub_1000056A8(v8, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x80000001008191B0;
  v9._countAndFlagsBits = 0xD000000000000018;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v10 = type metadata accessor for PreorderStatus();
  v15[3] = v10;
  v11 = sub_1000056E0(v15);
  (*(*(v10 - 8) + 16))(v11, a1, v10);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v15);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
  Promise.resolve(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100534BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for OSLogger();
  sub_1000056A8(v6, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100819190;
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v12[3] = v11;
  v8 = sub_1000056E0(v12);
  (*(*(v11 - 8) + 16))(v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v12);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  swift_getObjectType();
  AppStateController.clearWaiting(for:)();
  return Promise.reject(_:)();
}

uint64_t sub_100534E2C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for AdamId();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v9 = Promise.__allocating_init()();
  CancelPreorderAction.preorderAdamId.getter();
  CancelPreorderAction.isArcade.getter();
  type metadata accessor for Commerce();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  sub_10002849C(&unk_100973AF0, &qword_1007B3960);
  inject<A, B>(_:from:)();
  v16 = v17;
  dispatch thunk of Commerce.cancelPreorder(for:isArcade:)();
  (*(v3 + 16))(v5, v8, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v16;
  (*(v3 + 32))(v12 + v10, v5, v2);
  *(v12 + v11) = v9;
  v13 = sub_1000076C0();
  swift_retain_n();
  swift_unknownObjectRetain();
  v14 = static OS_dispatch_queue.main.getter();
  v18 = v13;
  v19 = &protocol witness table for OS_dispatch_queue;
  *&v17 = v14;
  Promise.then(perform:orCatchError:on:)();
  swift_unknownObjectRelease();

  (*(v3 + 8))(v8, v2);
  sub_100007000(&v17);
  return v9;
}

uint64_t sub_100535104(uint64_t a1)
{
  v3 = *(type metadata accessor for AdamId() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_100534BC8(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_1005351A4()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_10098A610);
  sub_1000056A8(v4, qword_10098A610);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

void sub_1005352F8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v49 = a6;
  Strong = a5;
  v9 = type metadata accessor for OSLogger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v13 - 8);
  v48 = &v44 - v14;
  v15 = type metadata accessor for AlertActionStyle();
  v47 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v18 - 8);
  if (a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong presentViewController:a4 animated:1 completion:0];
    v19 = Strong;

    return;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  *&v54 = a2;
  swift_errorRetain();
  sub_10002849C(&qword_10098A690, qword_1007B39A0);
  v20 = sub_100005744(0, &qword_10097D7D8, NSError_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v45 = v20;
  v46 = v51;
  v21 = [v51 domain];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {

      goto LABEL_18;
    }
  }

  v27 = v46;
  if ([v46 code] == -7005)
  {
    if (qword_10096E890 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v9, qword_10098A610);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    *(&v55 + 1) = v45;
    *&v54 = v46;
    v28 = v46;
    static LogMessage.safe(_:)();
    sub_10002B894(&v54, &unk_1009711D0, &unk_1007B1A10);
    Logger.error(_:)();

    v29 = v28;
    Promise.reject(_:)();

    v30._object = 0x8000000100819050;
    v30._countAndFlagsBits = 0xD000000000000017;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    localizedString(_:comment:)(v30, v31);
    v32._countAndFlagsBits = 0xD00000000000002ALL;
    v32._object = 0x8000000100819070;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    localizedString(_:comment:)(v32, v33);
    static ActionMetrics.notInstrumented.getter();
    (*(v47 + 104))(v17, enum case for AlertActionStyle.normal(_:), v15);
    type metadata accessor for AlertAction();
    swift_allocObject();
    v34 = AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)();
    v35 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    v37 = v48;
    v36 = v49;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v38 = *(v35 - 8);
    if ((*(v38 + 48))(v37, 1, v35) == 1)
    {

      sub_10002B894(v37, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005FA1B4(v34, 1, v36, v37);

      (*(v38 + 8))(v37, v35);
    }

    return;
  }

LABEL_18:
  if (qword_10096E890 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v9, qword_10098A610);
  (*(v10 + 16))(v12, v39, v9);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  if (a2)
  {
    swift_getErrorValue();
    v40 = v52;
    v41 = v53;
    *(&v55 + 1) = v53;
    v42 = sub_1000056E0(&v54);
    (*(*(v41 - 8) + 16))(v42, v40, v41);
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  static LogMessage.safe(_:)();
  sub_10002B894(&v54, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();

  (*(v10 + 8))(v12, v9);
  sub_100536688();
  swift_allocError();
  *v43 = 1;
  Promise.reject(_:)();
}

void sub_100535BA8(void *a1, uint64_t a2)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a2 + 16))
  {
    v6 = sub_1000072B8(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(a2 + 56) + 8 * v6);
      v10 = [v9 success];
      v11 = [v9 error];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      *(v13 + 32) = v10;
      v25 = sub_100536B18;
      v26 = v13;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_100007A08;
      v24 = &unk_1008C7B40;
      v14 = _Block_copy(&v21);
      v15 = v11;

      [a1 dismissViewControllerAnimated:1 completion:v14];
      _Block_release(v14);

      return;
    }
  }

  else
  {
  }

  sub_100536688();
  v16 = swift_allocError();
  *v17 = 0;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  *(v19 + 32) = 0;
  v25 = sub_100536B18;
  v26 = v19;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_100007A08;
  v24 = &unk_1008C7AF0;
  v20 = _Block_copy(&v21);
  swift_errorRetain();

  [a1 dismissViewControllerAnimated:1 completion:v20];
  _Block_release(v20);
}

uint64_t sub_100535EE8(void *a1)
{
  sub_100536688();
  v2 = swift_allocError();
  *v3 = 1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  *(v5 + 32) = 0;
  v8[4] = sub_1005366DC;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100007A08;
  v8[3] = &unk_1008C7AA0;
  v6 = _Block_copy(v8);
  swift_errorRetain();

  [a1 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

double sub_10053608C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for ActionOutcome();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_10096E890 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for OSLogger();
    sub_1000056A8(v10, qword_10098A610);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    swift_getErrorValue();
    v11 = v24[1];
    v12 = v25;
    v27 = v25;
    v13 = sub_1000056E0(v26);
    (*(*(v12 - 1) + 16))(v13, v11, v12);
    static LogMessage.safe(_:)();
    sub_10002B894(v26, &unk_1009711D0, &unk_1007B1A10);
    Logger.error(_:)();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      goto LABEL_20;
    }

    v15 = Strong;
    if (*(Strong + OBJC_IVAR____TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate_outcome))
    {

      Promise.reject(_:)();

LABEL_17:

      goto LABEL_20;
    }
  }

  else
  {
    v24[0] = v7;
    if (qword_10096E890 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for OSLogger();
    sub_1000056A8(v16, qword_10098A610);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v27 = &type metadata for Bool;
    LOBYTE(v26[0]) = a3 & 1;
    static LogMessage.safe(_:)();
    sub_10002B894(v26, &unk_1009711D0, &unk_1007B1A10);
    Logger.info(_:)();

    if (a3)
    {
      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = v17;
      if (*(v17 + OBJC_IVAR____TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate_outcome))
      {

        v19 = v24[0];
        (*(v6 + 104))(v9, enum case for ActionOutcome.performed(_:), v24[0]);
        Promise.resolve(_:)();

        (*(v6 + 8))(v9, v19);
        goto LABEL_20;
      }
    }

    else
    {
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_20;
      }

      v18 = v20;
      if (*(v20 + OBJC_IVAR____TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate_outcome))
      {

        sub_100536688();
        swift_allocError();
        *v21 = 2;
        Promise.reject(_:)();

        goto LABEL_17;
      }
    }
  }

LABEL_20:
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    *&v22[OBJC_IVAR____TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate_outcome] = 0;
  }

  return result;
}

unint64_t sub_100536688()
{
  result = qword_10098A658;
  if (!qword_10098A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A658);
  }

  return result;
}

uint64_t sub_1005366F0()
{

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_100536754()
{
  result = qword_10098A668;
  if (!qword_10098A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A668);
  }

  return result;
}

unint64_t sub_1005367AC()
{
  result = qword_10098A670;
  if (!qword_10098A670)
  {
    type metadata accessor for SignInAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A670);
  }

  return result;
}

uint64_t sub_100536804(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = OBJC_IVAR____TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate_outcome;
  if (*(v4 + OBJC_IVAR____TtCV8AppStore26SignInActionImplementationP33_C9E7F6675EBDA5331FAB461813C5261514SignInDelegate_outcome))
  {
    sub_100536688();
    swift_allocError();
    *v6 = 3;

    Promise.invalidate(_:)();
  }

  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v7 = Promise.__allocating_init()();
  *(v4 + v5) = v7;

  v8 = [objc_allocWithZone(AAUISignInController) init];
  sub_10002849C(&unk_10098A680, &qword_1007D3A48);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B10D0;
  v10 = AIDAServiceTypeStore;
  *(v9 + 32) = AIDAServiceTypeStore;
  type metadata accessor for AIDAServiceType(0);
  v11 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setServiceTypes:isa];

  [v8 setDelegate:v4];
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100536A80(v2, v19);
  v14 = swift_allocObject();
  sub_100536AB8(v19, (v14 + 2));
  v14[4] = v8;
  v14[5] = v7;
  v14[6] = a1;
  v18[4] = sub_100536AF0;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100235C48;
  v18[3] = &unk_1008C7CA0;
  v15 = _Block_copy(v18);

  v16 = v8;

  [v16 prepareInViewController:Strong completion:v15];
  _Block_release(v15);

  return v7;
}

uint64_t sub_100536B1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100536B64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100536BB8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, double a13@<D4>, double a14@<D5>, double a17, double a18)
{
  v52 = a7;
  v53 = a6;
  v51 = a5;
  v60 = a8;
  v61 = a4;
  v58 = a2;
  v59 = a3;
  v55 = a13;
  v56 = a14;
  v50 = type metadata accessor for DynamicTypeSize();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Shelf.ContentType();
  v62 = *(v57 - 8);
  __chkstk_darwin(v57);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PageGrid.Direction();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v48 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v46 - v25;
  v27 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  __chkstk_darwin(v27);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v46 - v31;
  sub_100031660(v58, &v46 - v31, &unk_10098FFB0, qword_1007B3890);
  sub_100031660(v59, &v32[*(v27 + 48)], &unk_10098FFB0, qword_1007B3890);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  ReadOnlyLens.subscript.getter();

  v58 = v22;
  v33 = *(v22 + 104);
  v34 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v64)
  {
    v34 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v35 = *v34;
  v59 = v21;
  v33(v26, v35, v21);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v36 = *(v62 + 88);
  v54 = v20;
  v37 = v57;
  if (v36(v20) == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v38 = v32;
    v39 = v58;
    v40 = v59;
    if (v52)
    {
      v41 = 2;
    }

    else
    {
      v41 = v53;
    }

    v42 = v47;
    PageEnvironment.dynamicTypeSize.getter();
    v43 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v49 + 8))(v42, v50);
    if (v43 & 1) != 0 && (PageEnvironment.isHorizontalSizeClassCompact.getter())
    {
      v41 = 1;
    }

    (*(v39 + 16))(v48, v26, v40);
    sub_1001D231C(v41);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v39 + 8))(v26, v40);
    return sub_10002B894(v38, &qword_100974650, &unk_1007B6B70);
  }

  else
  {
    v63 = v51;
    sub_100031660(v32, v29, &qword_100974650, &unk_1007B6B70);
    v45 = *(v27 + 48);
    sub_10010E37C();
    PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
    (*(v58 + 8))(v26, v59);
    sub_10002B894(v32, &qword_100974650, &unk_1007B6B70);
    sub_10002B894(&v29[v45], &unk_10098FFB0, qword_1007B3890);
    sub_10002B894(v29, &unk_10098FFB0, qword_1007B3890);
    return (*(v62 + 8))(v54, v37);
  }
}

uint64_t sub_1005371B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1005375D4();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_100537294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1005375D4();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_100537378(uint64_t a1, uint64_t a2)
{
  v4 = sub_100537628();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1005373DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v31[6] = a5;
  v31[7] = a6;
  v31[5] = a4;
  *&v31[3] = a14;
  *&v31[4] = a15;
  v31[1] = a7;
  v31[2] = a1;
  v20 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v31 - v25;
  v27 = *(v17 + 2);
  v28 = *(v17 + 24);
  sub_100031660(a2, v31 - v25, &unk_10098FFB0, qword_1007B3890);
  sub_100031660(a3, &v26[*(v21 + 56)], &unk_10098FFB0, qword_1007B3890);
  v32 = *v17;
  v33 = v27;
  v34 = v28;
  sub_100031660(v26, v23, &qword_100974650, &unk_1007B6B70);
  v29 = *(v21 + 56);
  PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v26, &qword_100974650, &unk_1007B6B70);
  sub_10002B894(&v23[v29], &unk_10098FFB0, qword_1007B3890);
  return sub_10002B894(v23, &unk_10098FFB0, qword_1007B3890);
}

unint64_t sub_1005375D4()
{
  result = qword_10098A698;
  if (!qword_10098A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A698);
  }

  return result;
}

unint64_t sub_100537628()
{
  result = qword_10098A6A0;
  if (!qword_10098A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A6A0);
  }

  return result;
}

uint64_t sub_100537688@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  sub_1000DCAC8(a1);
  v3 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  v4 = type metadata accessor for LockupMediaLayout.DisplayType();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t type metadata accessor for AppTrailerLockupCollectionViewCell(uint64_t a1)
{
  result = qword_10098A6D0;
  if (!qword_10098A6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100537800(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_cardView]];

  return v18;
}

void sub_100537A94(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v2 - 8);
  v61 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v50 - v5;
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v62 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (!v12)
  {

    return;
  }

  v13 = v12;
  v14 = [v11 superview];
  if (!v14)
  {

LABEL_21:

    return;
  }

  v15 = v14;
  v16 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_cardView;
  v17 = *&v11[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_cardView];

  v18 = v15;
  v19 = v17;
  sub_1002F54C8(v19, v13, v18);

  v20 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v17) = sub_100736BE4(v20);

  if ((v17 & 1) == 0)
  {

    goto LABEL_21;
  }

  v21 = [v11 viewWithTag:58236912];
  [v21 removeFromSuperview];

  v22 = *&v11[v16];
  v23 = qword_10097F7A8;
  swift_beginAccess();
  v60 = v22;
  v24 = *&v22[v23];
  v54 = v11;
  v53 = v13;
  v52 = v18;
  if (v24 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v26 = qword_10097F790;
    v27 = v60;
    v51 = v60;

    v66 = v26;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v28 = 0;
    v64 = v24 & 0xFFFFFFFFFFFFFF8;
    v65 = v24 & 0xC000000000000001;
    v63 = (v8 + 48);
    v59 = (v8 + 32);
    v58 = (v8 + 16);
    v57 = (v8 + 56);
    v56 = (v8 + 8);
    v29 = 32;
    v55 = v6;
    while (1)
    {
      if (v65)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *(v64 + 16))
        {
          goto LABEL_25;
        }

        v8 = *(v24 + 8 * v28 + 32);
      }

      v30 = *&v27[v66];
      if (v28 >= *(v30 + 16))
      {
        break;
      }

      v31 = *(v30 + v29);
      Lockup.impressionMetrics.getter();
      if ((*v63)(v6, 1, v7) == 1)
      {

        sub_10002B894(v6, &qword_100973D30, &unk_1007B1DC0);
      }

      else
      {
        v32 = v62;
        (*v59)(v62, v6, v7);
        v33 = v31;
        [v33 bounds];
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v42 = [objc_opt_self() blueColor];
        v43 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
        v44 = sub_10077F3D4(v42, v35, v37, v39, v41);
        v45 = i;
        v46 = v24;
        v47 = v61;
        (*v58)(v61, v32, v7);
        (*v57)(v47, 0, 1, v7);
        sub_10077EFB4(v47);
        sub_10002B894(v47, &qword_100973D30, &unk_1007B1DC0);
        v48 = [v33 viewWithTag:58236912];
        [v48 removeFromSuperview];

        v24 = v46;
        i = v45;
        v6 = v55;
        [v33 addSubview:v44];

        v49 = v32;
        v27 = v60;
        (*v56)(v49, v7);
      }

      ++v28;

      v29 += 16;
      if (i == v28)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_22:
}

uint64_t type metadata accessor for ArcadeDownloadPackCollectionViewCell(uint64_t a1)
{
  result = qword_10098A708;
  if (!qword_10098A708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005381A0(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100538250()
{
  swift_beginAccess();

  return result;
}

double sub_100538298(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100538350()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_1005383AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

void (*sub_10053846C(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return sub_10053850C;
}

void sub_100538514()
{
  v1 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100538614()
{
  result = qword_10098A718;
  if (!qword_10098A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A718);
  }

  return result;
}

uint64_t sub_100538668(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = type metadata accessor for URL();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_100538728, 0, 0);
}

id sub_100538728()
{
  if (ExternalUrlAction.isSensitive.getter())
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v2;
    *(v0 + 144) = 1;
    *(v0 + 168) = &type metadata for Bool;
    sub_100056164((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100051CAC((v0 + 176), v1, v3, isUniquelyReferenced_nonNull_native);
  }

  if (ExternalUrlAction.allowFromLockscreen.getter())
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    *(v0 + 104) = &type metadata for Bool;
    *(v0 + 80) = 1;
    sub_100056164((v0 + 80), (v0 + 112));
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_100051CAC((v0 + 112), v5, v7, v8);
  }

  v9 = ExternalUrlAction.timeoutSeconds.getter();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    *(v0 + 40) = &type metadata for Double;
    *(v0 + 16) = v11;
    sub_100056164((v0 + 16), (v0 + 48));
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_100051CAC((v0 + 48), v12, v14, v15);
  }

  if (_swiftEmptyDictionarySingleton[2])
  {
    v16 = [objc_allocWithZone(_LSOpenConfiguration) init];
    if (v16)
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v16 setFrontBoardOptions:isa];
    }
  }

  else
  {
    v16 = 0;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v19 = result;
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);

    ExternalUrlAction.url.getter();
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    (*(v21 + 8))(v20, v22);
    [v19 openURL:v26 configuration:v16 completionHandler:0];

    v27 = enum case for ActionOutcome.performed(_:);
    v28 = type metadata accessor for ActionOutcome();
    (*(*(v28 - 8) + 104))(v23, v27, v28);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    __break(1u);
  }

  return result;
}