uint64_t sub_100292870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002928B8(double a1, uint64_t a2, void *a3)
{
  v5._object = 0x80000001007FF2F0;
  v6._countAndFlagsBits = 0xD000000000000050;
  v6._object = 0x80000001007FF310;
  v5._countAndFlagsBits = 0xD000000000000017;
  localizedString(_:comment:)(v5, v6);
  v7 = String.count.getter();

  v8 = v7 < 19;
  v9 = sub_10029C454(v7 < 19);
  v10 = sub_10029C720(v8);
  [v9 size];
  [v10 size];

  sub_10029F56C(1, v8, 0, 2, a3, a1);
}

void sub_100292A18(__n128 a1)
{
  v2 = type metadata accessor for ArcadeState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v6 - 8);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v35 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_accountStore);
  v13 = [v12 ams_activeiTunesAccount];
  v14 = [v13 ams_DSID];

  v15 = objc_opt_self();
  v16 = [v15 standardUserDefaults];
  v17 = v14;
  v18 = String._bridgeToObjectiveC()();
  [v16 setObject:v17 forKey:v18];

  Date.init()();
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v35 = *(v20 + 56);
  v35(v11, 0, 1, v19);
  sub_100294DAC(v11);
  ArcadeSubscriptionManager.subscriptionState.getter();
  v21 = ArcadeState.isSubscribed.getter();
  (*(v3 + 8))(v5, v2);
  if ((v21 & 1) == 0)
  {
    return;
  }

  v22 = [v12 ams_activeiTunesAccount];
  v23 = [v22 ams_DSID];

  v24 = [v15 standardUserDefaults];
  v25 = sub_100737930();

  if (v23)
  {
    if (v25)
    {
      sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
      v26 = v23;
      v27 = static NSObject.== infix(_:_:)();

      v28 = v27 ^ 1;
LABEL_7:

      goto LABEL_10;
    }

    v28 = 1;
  }

  else
  {
    if (v25)
    {
      v28 = 1;
      goto LABEL_7;
    }

    v28 = 0;
  }

LABEL_10:
  v29 = [v15 standardUserDefaults];
  v30 = v36;
  sub_100737A28(v36);

  LODWORD(v29) = (*(v20 + 48))(v30, 1, v19);
  sub_10002B894(v30, &qword_100979710, &qword_1007BB7C0);
  if (v29 == 1 || (v28 & 1) != 0)
  {
    v31 = v23;
    v32 = [v15 standardUserDefaults];
    v33 = v31;
    v34 = String._bridgeToObjectiveC()();
    [v32 setObject:v33 forKey:v34];

    Date.init()();
    v35(v11, 0, 1, v19);
    sub_100294F8C(v11);
  }
}

uint64_t sub_100292E88()
{
  v1 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
  v6 = [v5 ams_DSID];

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = v6;
  v9 = String._bridgeToObjectiveC()();
  [v7 setObject:v8 forKey:v9];

  Date.init()();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  return sub_100295174(v4);
}

uint64_t sub_100293000()
{
  v1 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
  v6 = [v5 ams_DSID];

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = v6;
  v9 = String._bridgeToObjectiveC()();
  [v7 setObject:v8 forKey:v9];

  Date.init()();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  return sub_100294B5C(v4);
}

void sub_100293178(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = type metadata accessor for FamilyCircleLookupResult();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for FamilyCircleLookupResult.notInFamily(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = *v8;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      Strong[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isInFamily] = 0;
    }

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v12[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isFamilyOrganizer] = 0;
    }

    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v13[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_canCreateFamily] = v10;
    }
  }

  else if (v9 == enum case for FamilyCircleLookupResult.inFamily(_:))
  {
    (*(v5 + 96))(v8, v4);
    v14 = *v8;
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v15[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isInFamily] = 1;
    }

    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v16[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isFamilyOrganizer] = v14;
    }

    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v17[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_canCreateFamily] = 0;
    }
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }
}

double sub_10029340C(uint64_t a1)
{
  if (qword_10096D020 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CDEE8);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_1000056E0(v5);
  (*(*(v4 - 8) + 16))(v2);
  static LogMessage.safe(_:)();
  sub_10002B894(v5, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();

  return result;
}

uint64_t sub_1002935D8(uint64_t a1, void *a2)
{
  v5 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  sub_100294D3C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002B894(v7, &qword_100979710, &qword_1007BB7C0);
    return 0;
  }

  (*(v9 + 32))(v14, v7, v8);
  if (!a2)
  {
LABEL_9:
    (*(v9 + 8))(v14, v8);
    return 0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_accountStore);
  v16 = a2;
  v17 = [v15 ams_activeiTunesAccount];
  if (!v17 || (v18 = v17, v19 = [v17 ams_DSID], v18, !v19))
  {

    goto LABEL_9;
  }

  sub_100005744(0, &qword_100978360, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    Date.init()();
    Date.timeIntervalSince(_:)();
    v21 = v20;

    v22 = *(v9 + 8);
    v22(v11, v8);
    v22(v14, v8);
    return v21;
  }

  (*(v9 + 8))(v14, v8);

  return 0;
}

double sub_100293898@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v7 - 8);
  v9 = v47 - v8;
  v10 = type metadata accessor for ArcadeState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0xD000000000000012 && 0x8000000100801460 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    ArcadeSubscriptionManager.subscriptionState.getter();
    v14 = ArcadeState.isSubscribed.getter();
LABEL_5:
    v15 = v14;
    (*(v11 + 8))(v13, v10);
    *(a3 + 24) = &type metadata for Bool;
    v17 = v15 & 1;
LABEL_6:
    *a3 = v17;
    return result;
  }

  if (a1 == 0xD000000000000016 && 0x8000000100801480 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    ArcadeSubscriptionManager.subscriptionState.getter();
    v14 = ArcadeState.isTrialAvailable.getter();
    goto LABEL_5;
  }

  if (a1 == 0x696D61466E497369 && a2 == 0xEA0000000000796CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isInFamily;
    goto LABEL_15;
  }

  if (a1 == 0xD000000000000011 && 0x8000000100804BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isFamilyOrganizer;
    goto LABEL_15;
  }

  if (a1 == 0x74616572436E6163 && a2 == 0xEF796C696D614665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_canCreateFamily;
LABEL_15:
    v19 = *(v3 + v18);
    if (v19 != 2)
    {
      *(a3 + 24) = &type metadata for Bool;
      v17 = v19 & 1;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  if (a1 == 0xD000000000000011 && 0x8000000100804B80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000014 && 0x8000000100804B60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_16;
  }

  v47[1] = v3;
  if (a1 == 0xD00000000000001ELL && 0x8000000100804B40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    sub_100737580(v9);

    v22 = [v20 standardUserDefaults];
    v23 = sub_100737488();
    goto LABEL_36;
  }

  if (a1 == 0xD00000000000001BLL && 0x8000000100804B20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v28 = objc_opt_self();
    v29 = [v28 standardUserDefaults];
    sub_10073732C(v9);

    v22 = [v28 standardUserDefaults];
    v23 = sub_100737234();
    goto LABEL_36;
  }

  if (a1 == 0xD000000000000023 && 0x8000000100804AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v30 = objc_opt_self();
    v31 = [v30 standardUserDefaults];
    sub_1007377D4(v9);

    v22 = [v30 standardUserDefaults];
    v23 = sub_1007376DC();
    goto LABEL_36;
  }

  if (a1 == 0xD00000000000002BLL && 0x8000000100804AC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v32 = objc_opt_self();
    v33 = [v32 standardUserDefaults];
    sub_100737A28(v9);

    v22 = [v32 standardUserDefaults];
    v23 = sub_100737930();
LABEL_36:
    v24 = v23;

    v25 = sub_1002935D8(v9, v24);
    v27 = v26;

    sub_10002B894(v9, &qword_100979710, &qword_1007BB7C0);
    if ((v27 & 1) == 0)
    {
      *(a3 + 24) = &type metadata for Double;
      *a3 = v25;
      return result;
    }

    goto LABEL_16;
  }

  if ((a1 != 0xD000000000000033 || 0x8000000100804A80 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v46 = sub_100295354();
    if (v46 != 2)
    {
      *(a3 + 24) = &type metadata for Bool;
      v17 = v46 & 1;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v34 = objc_opt_self();
  v35 = [v34 standardUserDefaults];
  sub_1007377D4(v9);

  v36 = [v34 standardUserDefaults];
  v37 = sub_1007376DC();

  v38 = COERCE_DOUBLE(sub_1002935D8(v9, v37));
  LOBYTE(v36) = v39;

  sub_10002B894(v9, &qword_100979710, &qword_1007BB7C0);
  if (v36 & 1) != 0 || (v40 = [v34 standardUserDefaults], sub_100737A28(v9), v40, v41 = objc_msgSend(v34, "standardUserDefaults"), v42 = sub_100737930(), v41, v43 = COERCE_DOUBLE(sub_1002935D8(v9, v42)), v45 = v44, v42, sub_10002B894(v9, &qword_100979710, &qword_1007BB7C0), (v45))
  {
LABEL_16:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  result = v38 - v43;
  *(a3 + 24) = &type metadata for Double;
  *a3 = v38 - v43;
  return result;
}

uint64_t sub_1002941D8()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10029516C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008BBFA0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_100294470(uint64_t a1)
{
  v1 = type metadata accessor for FamilyCircleLookupTask();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    FamilyCircleLookupTask.init()();
    FamilyCircleLookupTask.perform()();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    v8 = static OS_dispatch_queue.main.getter();
    v9[3] = v7;
    v9[4] = &protocol witness table for OS_dispatch_queue;
    v9[0] = v8;
    Promise.then(perform:orCatchError:on:)();

    (*(v2 + 8))(v4, v1);
    sub_100007000(v9);
  }
}

uint64_t type metadata accessor for InAppMessagesMetricsDelegate(uint64_t a1)
{
  result = qword_10097D7C0;
  if (!qword_10097D7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100294ACC(uint64_t a1)
{
  result = type metadata accessor for MetricsPipeline();
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

uint64_t sub_100294B5C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_100294D3C(a1, v7);
  sub_100294D3C(v7, v4);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10002B894(a1, &qword_100979710, &qword_1007BB7C0);
  return sub_10002B894(v7, &qword_100979710, &qword_1007BB7C0);
}

uint64_t sub_100294D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100294DAC(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_100294D3C(a1, v7);
  sub_100294D3C(v7, v4);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10002B894(a1, &qword_100979710, &qword_1007BB7C0);
  return sub_10002B894(v7, &qword_100979710, &qword_1007BB7C0);
}

uint64_t sub_100294F8C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_100294D3C(a1, v7);
  sub_100294D3C(v7, v4);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10002B894(a1, &qword_100979710, &qword_1007BB7C0);
  return sub_10002B894(v7, &qword_100979710, &qword_1007BB7C0);
}

uint64_t sub_100295174(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_100294D3C(a1, v7);
  sub_100294D3C(v7, v4);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10002B894(a1, &qword_100979710, &qword_1007BB7C0);
  return sub_10002B894(v7, &qword_100979710, &qword_1007BB7C0);
}

uint64_t sub_100295354()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v2 = objc_allocWithZone(FAEligiblityEvaluationRequest);
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 initWithPropertyName:v3 bundleID:v4];

  v12[0] = 0;
  v6 = [v5 fetchEligibilityWithError:v12];
  if (v12[0])
  {
    v7 = qword_10096D020;
    v8 = v12[0];
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for OSLogger();
    sub_1000056A8(v9, qword_1009CDEE8);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v12[3] = sub_100005744(0, &qword_10097D7D8, NSError_ptr);
    v12[0] = v8;
    v10 = v8;
    static LogMessage.safe(_:)();
    sub_10002B894(v12, &unk_1009711D0, &unk_1007B1A10);
    Logger.error(_:)();
  }

  if (v6 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v6 != 1);
  }
}

id sub_100295658(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v42 = type metadata accessor for WordmarkView.Alignment();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FontSource();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for StaticDimension();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100975F00, &qword_1007BAA50);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for Wordmark();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10029BA08(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10002B894(v15, &qword_100975F00, &qword_1007BAA50);
    v20 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView;
    swift_beginAccess();
    result = *&v2[v20];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v22 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView;
    swift_beginAccess();
    v23 = *&v2[v22];
    if (v23 || ((*(v17 + 56))(v12, 1, 1, v16), v38 = UIFontTextStyleFootnote, *v7 = UIFontTextStyleFootnote, v24 = v39, (*(v39 + 104))(v7, enum case for FontSource.textStyle(_:), v5), v47 = v5, v48 = &protocol witness table for FontSource, v25 = sub_1000056E0(v46), (*(v24 + 16))(v25, v7, v5), v26 = v38, StaticDimension.init(_:scaledLike:)(), (*(v24 + 8))(v7, v5), (*(v40 + 104))(v44, enum case for WordmarkView.Alignment.center(_:), v42), v27 = v43, v47 = v43, v48 = &protocol witness table for StaticDimension, v28 = sub_1000056E0(v46), v29 = v41, (*(v41 + 16))(v28, v9, v27), v30 = objc_allocWithZone(type metadata accessor for WordmarkView()), v31 = v2, v32 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)(), (*(v29 + 8))(v9, v27), v33 = v32, v2 = v31, sub_100298460(v33), (v23 = *&v31[v22]) != 0))
    {
      [v23 setTintColor:v45];
      v34 = *&v2[v22];
      if (v34)
      {
        [v34 setHidden:0];
      }
    }

    swift_beginAccess();
    v35 = *&v2[v22];
    if (v35)
    {
      swift_endAccess();
      v36 = v35;
      v37 = [v2 traitCollection];
      WordmarkView.show(wordmark:with:)();

      return (*(v17 + 8))(v19, v16);
    }

    else
    {
      (*(v17 + 8))(v19, v16);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100295C14(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ComponentDecoration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10029BD90(&qword_10097D8E0, &type metadata accessor for ComponentDecoration, &protocol conformance descriptor for ComponentDecoration), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10029BD90(&qword_10097D8E8, &type metadata accessor for ComponentDecoration, &protocol conformance descriptor for ComponentDecoration);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100295E2C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10029BD90(&qword_100972718, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10029BD90(&qword_100972720, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100296044(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_100005744(0, &qword_100981660, UITouch_ptr), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_10029615C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PageFacets.Facet.Option();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10029BD90(&qword_100972C70, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10029BD90(&qword_100972D20, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100296374(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (static String._unconditionallyBridgeFromObjectiveC(_:)(), Hasher.init(_seed:)(), String.hash(into:)(), v3 = Hasher._finalize()(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1002964C8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10029BD90(&qword_100970D38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10029BD90(&qword_10098B750, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

double sub_1002966E0(__n128 a1, double a2)
{
  v3 = type metadata accessor for AppShowcaseType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics();
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppShowcaseLockupViewLayout();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v2[v12], v3);
  v13 = *&v2[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerDisplayProperties];

  v42 = v9;
  sub_100298E8C(v6, v13, v2, v9);

  (*(v4 + 8))(v6, v3);
  v14 = *&v2[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView];
  v70 = type metadata accessor for ArtworkView();
  v71 = &protocol witness table for UIView;
  v41 = v14;
  v69 = v14;
  v15 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v16 = *&v2[v15];
  if (v16)
  {
    v17 = type metadata accessor for WordmarkView();
    v18 = &protocol witness table for UIView;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v65 = 0;
    v66 = 0;
  }

  v64 = v16;
  v67 = v17;
  v68 = v18;
  v40 = *&v2[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel];
  v19 = v40;
  v20 = type metadata accessor for DynamicTypeLabel();
  v62 = v20;
  v63 = &protocol witness table for UILabel;
  v60 = &protocol witness table for UILabel;
  v61 = v19;
  v21 = *&v2[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel];
  v59 = v20;
  v58 = v21;
  v22 = *&v2[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerButton];
  v56 = type metadata accessor for OfferButton();
  v57 = &protocol witness table for UIView;
  v23 = *&v2[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel];
  v54 = &protocol witness table for UILabel;
  v55 = v22;
  v53 = v20;
  v51 = &protocol witness table for UILabel;
  v52 = v23;
  v24 = *&v2[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel];
  v50 = v20;
  v48 = &protocol witness table for UILabel;
  v49 = v24;
  v25 = *&v2[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v47 = v20;
  v46 = v25;
  v26 = v41;
  v27 = v16;
  v28 = v40;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v43;
  AppShowcaseLockupViewLayout.init(metrics:iconView:wordmarkView:titleText:descriptionText:offerButton:offerText:crossLinkTitleText:crossLinkSubtitleText:)();
  sub_10029BD90(&qword_10097D8F0, &type metadata accessor for AppShowcaseLockupViewLayout, &protocol conformance descriptor for AppShowcaseLockupViewLayout);
  v35 = v45;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v37 = v36;
  (*(v44 + 8))(v34, v35);
  return v37;
}

double sub_100296ADC(uint64_t a1, void *a2, __n128 a3, double a4)
{
  v142 = a2;
  v5 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v127 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppShowcaseLockupViewLayout();
  v129 = *(v7 - 8);
  v130 = v7;
  __chkstk_darwin(v7);
  v128 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OfferLabelStyle();
  v111 = *(v9 - 8);
  v112 = v9;
  __chkstk_darwin(v9);
  v110 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v109 = &v109 - v12;
  v13 = type metadata accessor for OfferButtonMetrics();
  v140 = *(v13 - 8);
  v141 = v13;
  __chkstk_darwin(v13);
  v122 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v139 = &v109 - v16;
  v138 = type metadata accessor for FontUseCase();
  v135 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for LabelPlaceholderCompatibility();
  v18 = *(v143 - 8);
  __chkstk_darwin(v143);
  v123 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v121 = &v109 - v21;
  __chkstk_darwin(v22);
  v132 = &v109 - v23;
  v24 = type metadata accessor for AppShowcaseType();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v126 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v120 = &v109 - v28;
  __chkstk_darwin(v29);
  v119 = &v109 - v30;
  __chkstk_darwin(v31);
  v33 = &v109 - v32;
  __chkstk_darwin(v34);
  v36 = &v109 - v35;
  __chkstk_darwin(v37);
  v39 = &v109 - v38;
  __chkstk_darwin(v40);
  v42 = &v109 - v41;
  v145 = a1;
  AppShowcase.type.getter();
  v117 = *(v25 + 32);
  v118 = v25 + 32;
  v117(v39, v42, v24);
  v146 = v25;
  v44 = v25 + 88;
  v43 = *(v25 + 88);
  v45 = v43(v39, v24);
  v137 = enum case for AppShowcaseType.large(_:);
  if (v45 == enum case for AppShowcaseType.large(_:) || v45 == enum case for AppShowcaseType.small(_:))
  {
    v46 = v18;
  }

  else
  {
    v46 = v18;
    if (v45 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v146 + 8))(v39, v24);
    }
  }

  v47 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v125 = LayoutViewPlaceholder.init(representing:)();
  v144 = v24;
  AppShowcase.lockup.getter();
  v124 = Lockup.title.getter();
  v115 = v48;

  v49 = v144;
  AppShowcase.type.getter();
  (*(v146 + 16))(v33, v36, v49);
  v50 = v43(v33, v49);
  v51 = v138;
  v116 = v43;
  v114 = v44;
  if (v50 == v137)
  {
    v52 = v136;
    if (qword_10096E238 != -1)
    {
      swift_once();
    }

    v53 = qword_1009D1628;
LABEL_18:
    v58 = sub_1000056A8(v51, v53);
    v57 = v135;
    (*(v135 + 16))(v52, v58, v51);
    v131 = *(v146 + 8);
    v131(v36, v49);
    goto LABEL_19;
  }

  v52 = v136;
  if (v50 == enum case for AppShowcaseType.small(_:) || v50 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_10096E240 != -1)
    {
      swift_once();
    }

    v53 = qword_1009D1640;
    goto LABEL_18;
  }

  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v54 = sub_1000056A8(v51, qword_1009D1640);
  v55 = v135;
  (*(v135 + 16))(v52, v54, v51);
  v56 = *(v146 + 8);
  v56(v36, v49);
  v131 = v56;
  v56(v33, v49);
  v52 = v136;
  v57 = v55;
LABEL_19:
  v59 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v60 = v142;
  v61 = [v142 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  (*(v57 + 8))(v52, v51);
  v62 = type metadata accessor for Feature();
  v160[3] = v62;
  v136 = sub_10029BD90(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v160[4] = v136;
  v63 = sub_1000056E0(v160);
  v64 = *(v62 - 8);
  v65 = *(v64 + 104);
  LODWORD(v135) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v133 = v64 + 104;
  v134 = v65;
  v65(v63);
  isFeatureEnabled(_:)();
  sub_100007000(v160);
  v66 = v132;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v67 = *(v46 + 8);
  v124 = v46 + 8;
  v132 = v67;
  (v67)(v66, v143);
  v113 = AppShowcase.descriptionText.getter();
  v68 = v51;
  if (qword_10096E240 != -1)
  {
    swift_once();
    v68 = v51;
  }

  sub_1000056A8(v68, qword_1009D1640);
  v69 = [v60 traitCollection];
  v115 = v59;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v70 = v119;
  AppShowcase.type.getter();
  v71 = v120;
  v72 = v70;
  v73 = v144;
  v117(v120, v72, v144);
  v74 = v116(v71, v73);
  if (v74 == v137 || v74 == enum case for AppShowcaseType.small(_:))
  {
    v75 = v142;
  }

  else
  {
    v75 = v142;
    if (v74 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v131(v71, v73);
    }
  }

  v159[3] = v62;
  v159[4] = v136;
  v76 = sub_1000056E0(v159);
  v134(v76, v135, v62);
  isFeatureEnabled(_:)();
  sub_100007000(v159);
  v77 = v121;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (v132)(v77, v143);
  v78 = [v75 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v79 = v138;
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v80 = qword_100991010;
  }

  else
  {
    v79 = v138;
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v80 = qword_100991028;
  }

  v81 = v141;
  v82 = sub_1000056A8(v141, v80);
  v83 = v140;
  v84 = v122;
  (*(v140 + 16))(v122, v82, v81);

  (*(v83 + 32))(v139, v84, v81);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  swift_allocObject();
  v142 = LayoutViewPlaceholder.init(representing:)();
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v79, qword_1009D0710);
  v85 = [v75 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v157 = v62;
  v158 = v136;
  v86 = sub_1000056E0(v156);
  v134(v86, v135, v62);
  isFeatureEnabled(_:)();
  sub_100007000(v156);
  v87 = v123;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (v132)(v87, v143);
  v88 = v145;
  AppShowcase.lockup.getter();
  v89 = Lockup.offerDisplayProperties.getter();

  if (v89)
  {
    v143 = v47;
    v90 = v75;
    v91 = v109;
    OfferDisplayProperties.offerLabelStyle.getter();
    v92 = v110;
    v93 = v111;
    v94 = v112;
    (*(v111 + 104))(v110, enum case for OfferLabelStyle.preorder(_:), v112);
    v95 = static OfferLabelStyle.== infix(_:_:)();
    v96 = *(v93 + 8);
    v96(v92, v94);
    v96(v91, v94);
    if (v95)
    {
      sub_10002A400(v156, v157);
      v88 = v145;
      dispatch thunk of LayoutView.isHidden.setter();

      v75 = v90;
      v47 = v143;
      goto LABEL_40;
    }

    v75 = v90;
    v47 = v143;
  }

  sub_10002A400(v156, v157);
  dispatch thunk of LayoutView.isHidden.setter();
LABEL_40:
  v97 = sub_10029BA78(v88);
  v98 = v144;
  if (v97)
  {
    swift_allocObject();
    v99 = LayoutViewPlaceholder.init(representing:)();
  }

  else
  {
    v99 = 0;
  }

  v100 = v126;
  AppShowcase.type.getter();
  AppShowcase.lockup.getter();
  v101 = Lockup.offerDisplayProperties.getter();

  sub_100298E8C(v100, v101, v75, v127);

  v131(v100, v98);
  v155[14] = &protocol witness table for LayoutViewPlaceholder;
  v155[13] = v47;
  v155[10] = v125;
  if (v99)
  {
    v102 = &protocol witness table for LayoutViewPlaceholder;
    v103 = v47;
  }

  else
  {
    v103 = 0;
    v102 = 0;
    v155[7] = 0;
    v155[6] = 0;
  }

  v155[5] = v99;
  v155[8] = v103;
  v155[9] = v102;
  sub_10002C0AC(v160, v155);
  sub_10002C0AC(v159, &v154);
  v153[8] = v47;
  v153[9] = &protocol witness table for LayoutViewPlaceholder;
  v153[5] = v142;
  sub_10002C0AC(v156, v153);
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v149 = 0;
  v147 = 0u;
  v148 = 0u;

  v104 = v128;
  AppShowcaseLockupViewLayout.init(metrics:iconView:wordmarkView:titleText:descriptionText:offerButton:offerText:crossLinkTitleText:crossLinkSubtitleText:)();
  sub_10029BD90(&qword_10097D8F0, &type metadata accessor for AppShowcaseLockupViewLayout, &protocol conformance descriptor for AppShowcaseLockupViewLayout);
  v105 = v130;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v107 = v106;

  (*(v129 + 8))(v104, v105);
  (*(v140 + 8))(v139, v141);
  sub_100007000(v159);
  sub_100007000(v160);
  sub_100007000(v156);
  return v107;
}

char *sub_100297BD8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v16 = v67 - v15;
  v17 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView;
  type metadata accessor for ArtworkView();
  *&v4[v17] = static ArtworkView.iconArtworkView.getter();
  *&v4[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView] = 0;
  v18 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel;
  v74 = type metadata accessor for DynamicTypeLabel();
  *&v5[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v70 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel;
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D1640);
  v21 = *(v19 - 8);
  v71 = *(v21 + 16);
  v71(v16, v20, v19);
  v23 = *(v21 + 56);
  v22 = v21 + 56;
  v73 = v23;
  v23(v16, 0, 1, v19);
  v24 = enum case for DirectionalTextAlignment.none(_:);
  v26 = *(v11 + 104);
  v25 = v11 + 104;
  v72 = v26;
  v26(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v27 = objc_allocWithZone(v74);
  *&v5[v70] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v70 = v10;
  v28 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerButton;
  v29 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v28] = sub_1000F5284(0, v30);
  v31 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v32 = sub_1000056A8(v19, qword_1009D0710);
  v71(v16, v32, v19);
  v73(v16, 0, 1, v19);
  v72(v13, v24, v70);
  v33 = objc_allocWithZone(v74);
  *&v5[v31] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v34 = &v5[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabelPresenter];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerDisplayProperties] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkPresenter] = 0;
  v68 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel;
  v35 = v25;
  v36 = v24;
  if (qword_10096E250 != -1)
  {
    swift_once();
  }

  v37 = sub_1000056A8(v19, qword_1009D1670);
  v71(v16, v37, v19);
  v38 = v73;
  v73(v16, 0, 1, v19);
  v67[2] = v22;
  v39 = v70;
  v40 = v72;
  v72(v13, v36, v70);
  v41 = v74;
  v42 = objc_allocWithZone(v74);
  v67[1] = v35;
  *&v5[v68] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v71 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v38(v16, 1, 1, v19);
  v40(v13, v36, v39);
  v43 = objc_allocWithZone(v41);
  *(v71 + v5) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v44 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_type;
  v45 = enum case for AppShowcaseType.large(_:);
  v46 = type metadata accessor for AppShowcaseType();
  (*(*(v46 - 8) + 104))(&v5[v44], v45, v46);
  *&v5[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___lockupViews] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___crossLinkViews] = 0;
  v75.receiver = v5;
  v75.super_class = ObjectType;
  v47 = objc_msgSendSuper2(&v75, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v51 = v47;
  [v51 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v52 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel;
  [*&v51[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel] setNumberOfLines:1];
  v53 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel;
  v54 = *&v51[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v55 = v54;
  v56 = static UIColor.secondaryText.getter();
  [v55 setTextColor:v56];

  [v51 addSubview:*&v51[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView]];
  [v51 addSubview:*&v51[v52]];
  [v51 addSubview:*&v51[v53]];
  v57 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel;
  v58 = *&v51[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel];
  v59 = objc_opt_self();
  v60 = v58;
  v61 = [v59 secondaryLabelColor];
  [v60 setTextColor:v61];

  [*&v51[v57] setHidden:1];
  [*&v51[v57] setAlpha:0.0];
  [v51 addSubview:*&v51[v57]];
  v62 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v63 = *&v51[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v64 = [v59 labelColor];
  [v63 setTextColor:v64];

  [*&v51[v62] setHidden:1];
  [*&v51[v62] setAlpha:0.0];
  [v51 addSubview:*&v51[v62]];
  [v51 addSubview:*&v51[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerButton]];
  v65 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel;
  [*&v51[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  [*&v51[v65] setText:0];
  [*&v51[v65] setHidden:1];
  [v51 addSubview:*&v51[v65]];

  return v51;
}

void sub_100298460(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (!v4)
  {
    v8 = a1;
    v6 = a1;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = a1;
  [v4 removeFromSuperview];
  v6 = *&v1[v3];
  if (v6)
  {
LABEL_3:
    v7 = v6;
    [v1 addSubview:v7];
  }

LABEL_4:
}

id sub_10029850C()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v63 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v54 - v5;
  v6 = type metadata accessor for AppShowcaseType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v54 - v10;
  __chkstk_darwin(v11);
  v60 = &v54 - v12;
  __chkstk_darwin(v13);
  v58 = &v54 - v14;
  __chkstk_darwin(v15);
  v55 = &v54 - v16;
  __chkstk_darwin(v17);
  v57 = &v54 - v18;
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  __chkstk_darwin(v22);
  v24 = &v54 - v23;
  v25 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_type;
  swift_beginAccess();
  v26 = v7[2];
  v72 = v25;
  v73 = v7 + 2;
  v71 = v26;
  v26(v24, &v1[v25], v6);
  v27 = v7[13];
  v64 = enum case for AppShowcaseType.smallAlignedLeft(_:);
  v27(v21);
  sub_10029BD90(&qword_1009745B0, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v76 != v74 || (v28 = 0, v77 != v75))
  {
    v28 = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  }

  v29 = v7[1];
  v29(v21, v6);
  v70 = v29;
  v29(v24, v6);
  v30 = v7;

  [*&v1[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel] setTextAlignment:v28];
  v56 = *&v1[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel];
  [v56 setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel] setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel] setTextAlignment:v28];
  v59 = *&v1[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel];
  [v59 setTextAlignment:v28];
  v31 = v57;
  v32 = v71;
  v71(v57, &v1[v72], v6);
  v33 = v55;
  v32(v55, v31, v6);
  v67 = v7[11];
  v68 = v7 + 11;
  v34 = v67(v33, v6);
  v66 = enum case for AppShowcaseType.large(_:);
  if (v34 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_10096E238 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for FontUseCase();
    v36 = sub_1000056A8(v35, qword_1009D1628);
    v37 = v61;
    (*(*(v35 - 8) + 16))(v61, v36, v35);
  }

  else if (v34 == enum case for AppShowcaseType.small(_:) || v34 == v64)
  {
    v37 = v61;
    if (qword_10096E240 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for FontUseCase();
    v39 = sub_1000056A8(v35, qword_1009D1640);
    (*(*(v35 - 8) + 16))(v37, v39, v35);
  }

  else
  {
    v37 = v61;
    if (qword_10096E240 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for FontUseCase();
    v38 = sub_1000056A8(v35, qword_1009D1640);
    (*(*(v35 - 8) + 16))(v37, v38, v35);
    v70(v31, v6);
    v31 = v33;
  }

  v70(v31, v6);
  type metadata accessor for FontUseCase();
  v40 = *(v35 - 8);
  v61 = *(v40 + 56);
  (v61)(v37, 0, 1, v35);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v41 = v58;
  v71(v58, &v1[v72], v6);
  v42 = v60;
  (v30[4])(v60, v41, v6);
  v43 = v67(v42, v6);
  v69 = v1;
  if (v43 == v66)
  {
    v44 = 2;
    v46 = v62;
    v45 = v63;
  }

  else
  {
    v44 = 1;
    v46 = v62;
    v45 = v63;
    if (v43 != enum case for AppShowcaseType.small(_:) && v43 != v64)
    {
      (v70)(v42, v6, 1);
      v44 = 1;
    }
  }

  [v56 setNumberOfLines:v44];
  v47 = v71;
  v71(v46, &v69[v72], v6);
  v48 = v65;
  v47(v65, v46, v6);
  v49 = v67(v48, v6);
  if (v49 == v66)
  {
    if (qword_10096E258 != -1)
    {
      swift_once();
    }

    v50 = qword_1009D1688;
LABEL_33:
    v52 = sub_1000056A8(v35, v50);
    (*(v40 + 16))(v45, v52, v35);
    goto LABEL_34;
  }

  if (v49 == enum case for AppShowcaseType.small(_:) || v49 == v64)
  {
    if (qword_10096E240 != -1)
    {
      swift_once();
    }

    v50 = qword_1009D1640;
    goto LABEL_33;
  }

  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v51 = sub_1000056A8(v35, qword_1009D1640);
  (*(v40 + 16))(v45, v51, v35);
  v70(v46, v6);
  v46 = v65;
LABEL_34:
  v70(v46, v6);
  (v61)(v45, 0, 1, v35);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  return [v69 setNeedsLayout];
}

uint64_t sub_100298E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v117 = a2;
  v114 = a4;
  v125 = type metadata accessor for StaticDimension();
  __chkstk_darwin(v125);
  v113 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v100 - v7;
  __chkstk_darwin(v8);
  v111 = &v100 - v9;
  __chkstk_darwin(v10);
  v110 = &v100 - v11;
  __chkstk_darwin(v12);
  v109 = &v100 - v13;
  v14 = type metadata accessor for FontSource();
  v126 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v17 - 8);
  v104 = &v100 - v18;
  v101 = type metadata accessor for OfferButtonSubtitlePosition();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v22 = &v100 - v21;
  v124 = type metadata accessor for OfferButtonMetrics();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v100 - v26;
  v28 = type metadata accessor for AppShowcaseType();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v120 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v116 = &v100 - v32;
  v34 = __chkstk_darwin(v33);
  v36 = &v100 - v35;
  v37 = *(v29 + 16);
  v118 = a1;
  v115 = v29 + 16;
  v108 = v37;
  (v37)(&v100 - v35, a1, v28, v34);
  v119 = v29;
  v38 = *(v29 + 88);
  v107 = (v29 + 88);
  v106 = v38;
  v39 = v38(v36, v28);
  v105 = enum case for AppShowcaseType.large(_:);
  if (v39 != enum case for AppShowcaseType.large(_:) && v39 != enum case for AppShowcaseType.small(_:) && v39 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    (*(v119 + 8))(v36, v28);
  }

  v40 = [v122 traitCollection];
  v41 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v121 = v27;
  if (v41)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v42 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v42 = qword_100991028;
  }

  v43 = v124;
  v44 = sub_1000056A8(v124, v42);
  v45 = v123;
  (*(v123 + 16))(v24, v44, v43);

  v46 = *(v45 + 32);
  v47 = v121;
  v46(v121, v24, v43);
  if (v117)
  {
    v48 = v100;
    v49 = v20;
    v50 = v101;
    (*(v100 + 104))(v49, enum case for OfferButtonSubtitlePosition.below(_:), v101);
    (*(v48 + 56))(v104, 1, 1, v50);
    sub_10029BD90(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);

    AccessibilityConditional.init(value:axValue:)();
    OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();

    (*(v102 + 8))(v22, v103);
  }

  else
  {
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
  }

  v51 = v116;
  v52 = v118;
  v53 = v108;
  v108(v116, v118, v28);
  v54 = v120;
  v53(v120, v52, v28);
  v55 = v106(v54, v28);
  if (v55 == v105)
  {
    (*(v119 + 8))(v51, v28);
    *v16 = UIFontTextStyleFootnote;
    v56 = v126;
    v57 = *(v126 + 104);
    LODWORD(v106) = enum case for FontSource.textStyle(_:);
    v122 = v57;
    v116 = (v126 + 104);
    (v57)(v16);
    v140[3] = v125;
    v140[4] = &protocol witness table for StaticDimension;
    sub_1000056E0(v140);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v58 = sub_1000056E0(&v137);
    v59 = *(v56 + 16);
    v117 = v56 + 16;
    v59(v58, v16, v14);
    v60 = UIFontTextStyleFootnote;
    StaticDimension.init(_:scaledLike:)();
    v61 = *(v56 + 8);
    v126 = v56 + 8;
    v108 = v61;
    (v61)(v16, v14);
    if (qword_10096E238 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for FontUseCase();
    v120 = sub_1000056A8(v62, qword_1009D1628);
    v63 = *(v62 - 8);
    v64 = *(v63 + 16);
    v65 = v63 + 16;
    v64(v16, v120, v62);
    v66 = enum case for FontSource.useCase(_:);
    (v122)(v16, enum case for FontSource.useCase(_:), v14);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v67 = sub_1000056E0(&v137);
    v59(v67, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v68 = v108;
    (v108)(v16, v14);
    v69 = v120;
    v118 = v62;
    v120 = v64;
    v115 = v65;
    v64(v16, v69, v62);
    LODWORD(v119) = v66;
    (v122)(v16, v66, v14);
    v138 = v125;
    v139 = &protocol witness table for StaticDimension;
    sub_1000056E0(&v137);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v70 = sub_1000056E0(&v134);
    v107 = v59;
    v59(v70, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v68(v16, v14);
    if (qword_10096E240 != -1)
    {
      swift_once();
    }

    v71 = v118;
    v72 = sub_1000056A8(v118, qword_1009D1640);
    v73 = v120;
    (v120)(v16, v72, v71);
    v74 = v119;
    (v122)(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v75 = sub_1000056E0(&v134);
    v76 = v107;
    v107(v75, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v77 = v108;
    (v108)(v16, v14);
    v73(v16, v72, v71);
    v78 = v122;
    (v122)(v16, v74, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v79 = sub_1000056E0(&v134);
    v76(v79, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v77(v16, v14);
    if (qword_10096E248 != -1)
    {
      swift_once();
    }

    v80 = v118;
    v81 = sub_1000056A8(v118, qword_1009D1658);
    (v120)(v16, v81, v80);
    v78(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v82 = sub_1000056E0(&v134);
    v76(v82, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v77(v16, v14);
    *v16 = UIFontTextStyleBody;
    v78(v16, v106, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v83 = sub_1000056E0(&v134);
    v76(v83, v16, v14);
    v84 = UIFontTextStyleBody;
    StaticDimension.init(_:scaledLike:)();
    v77(v16, v14);
    if (qword_10096E250 != -1)
    {
      swift_once();
    }

    v85 = v118;
    v106 = sub_1000056A8(v118, qword_1009D1670);
    v86 = v120;
    (v120)(v16, v106, v85);
    v78(v16, v119, v14);
    v87 = v125;
    v135 = v125;
    v136 = &protocol witness table for StaticDimension;
    sub_1000056E0(&v134);
    v132 = v14;
    v133 = &protocol witness table for FontSource;
    v88 = sub_1000056E0(&v131);
    v89 = v107;
    v107(v88, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v90 = v108;
    (v108)(v16, v14);
    v86(v16, v106, v85);
    v91 = v119;
    v78(v16, v119, v14);
    v132 = v87;
    v133 = &protocol witness table for StaticDimension;
    sub_1000056E0(&v131);
    v129 = v14;
    v130 = &protocol witness table for FontSource;
    v92 = sub_1000056E0(&v128);
    v89(v92, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v90(v16, v14);
    if (qword_10096E258 != -1)
    {
      swift_once();
    }

    v93 = v118;
    v94 = sub_1000056A8(v118, qword_1009D1688);
    (v120)(v16, v94, v93);
    (v122)(v16, v91, v14);
    v129 = v125;
    v130 = &protocol witness table for StaticDimension;
    sub_1000056E0(&v128);
    v127[3] = v14;
    v127[4] = &protocol witness table for FontSource;
    v95 = sub_1000056E0(v127);
    v89(v95, v16, v14);
    StaticDimension.init(_:scaledLike:)();
    v90(v16, v14);
    AppShowcaseLockupViewLayout.Metrics.init(isCenterAligned:iconSize:wordmarkSpace:titleSpace:titleWithWordmarkSpace:descriptionSpace:descriptionBottomBufferSpace:offerLabelSpace:offerLabelBottomBufferSpace:offerButtonSize:crossLinkTitleSpace:crossLinkTitleWithWordmarkSpace:crossLinkSubtitleSpace:)();
    return (*(v123 + 8))(v121, v124);
  }

  else
  {
    v97 = v55;
    v98 = enum case for AppShowcaseType.small(_:);
    sub_10029A15C(v114);
    v99 = *(v119 + 8);
    v99(v51, v28);
    result = (*(v123 + 8))(v47, v124);
    if (v97 != v98 && v97 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      return (v99)(v120, v28);
    }
  }

  return result;
}

uint64_t sub_10029A15C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v5 = type metadata accessor for FontSource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for StaticDimension();
  __chkstk_darwin(v54);
  v63 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = v51 - v11;
  __chkstk_darwin(v12);
  v61 = v51 - v13;
  __chkstk_darwin(v14);
  v60 = v51 - v15;
  __chkstk_darwin(v16);
  v59 = v51 - v17;
  v18 = type metadata accessor for AppShowcaseType();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v22, enum case for AppShowcaseType.smallAlignedLeft(_:), v18, v20);
  sub_10029BD90(&qword_1009745B0, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v82 == v79)
  {
    v53 = 1;
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v19 + 8))(v22, v18);

  v58 = type metadata accessor for ZeroDimension();
  v83 = v58;
  v84 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v82);
  static ZeroDimension.zero.getter();
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D1640);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v65 = v25 + 16;
  v66 = v23;
  v26(v8, v24, v23);
  v64 = enum case for FontSource.useCase(_:);
  v56 = v6[13];
  v56(v8);
  v80 = v5;
  v81 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(&v79);
  v28 = v6 + 2;
  v69 = v6[2];
  v69(v27, v8, v5);
  StaticDimension.init(_:scaledLike:)();
  v68 = v6[1];
  v68(v8, v5);
  v80 = v58;
  v81 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v79);
  static ZeroDimension.zero.getter();
  v26(v8, v24, v23);
  v29 = v64;
  v30 = v56;
  (v56)(v8, v64, v5);
  v77 = v5;
  v78 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v76);
  v69(v31, v8, v5);
  StaticDimension.init(_:scaledLike:)();
  v68(v8, v5);
  v52 = v24;
  v67 = v26;
  v26(v8, v24, v66);
  (v30)(v8, v29, v5);
  v77 = v5;
  v78 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v76);
  v69(v32, v8, v5);
  StaticDimension.init(_:scaledLike:)();
  v57 = v6 + 1;
  v68(v8, v5);
  if (qword_10096E248 != -1)
  {
    swift_once();
  }

  v33 = v66;
  v34 = sub_1000056A8(v66, qword_1009D1658);
  v67(v8, v34, v33);
  (v30)(v8, v29, v5);
  v77 = v5;
  v78 = &protocol witness table for FontSource;
  v35 = sub_1000056E0(v76);
  v36 = v69;
  v69(v35, v8, v5);
  StaticDimension.init(_:scaledLike:)();
  v37 = v68;
  v68(v8, v5);
  *v8 = UIFontTextStyleBody;
  (v30)(v8, enum case for FontSource.textStyle(_:), v5);
  v77 = v5;
  v78 = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v76);
  v36(v38, v8, v5);
  v39 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v37(v8, v5);
  v51[1] = v28;
  v40 = v64;
  if (qword_10096E250 != -1)
  {
    swift_once();
  }

  v41 = v66;
  v42 = sub_1000056A8(v66, qword_1009D1670);
  v67(v8, v42, v41);
  v43 = v40;
  v44 = v56;
  (v56)(v8, v43, v5);
  v45 = v54;
  v77 = v54;
  v78 = &protocol witness table for StaticDimension;
  sub_1000056E0(v76);
  v74 = v5;
  v75 = &protocol witness table for FontSource;
  v46 = sub_1000056E0(v73);
  v47 = v69;
  v69(v46, v8, v5);
  StaticDimension.init(_:scaledLike:)();
  v48 = v68;
  v68(v8, v5);
  v67(v8, v52, v41);
  (v44)(v8, v64, v5);
  v74 = v45;
  v75 = &protocol witness table for StaticDimension;
  sub_1000056E0(v73);
  v71 = v5;
  v72 = &protocol witness table for FontSource;
  v49 = sub_1000056E0(v70);
  v47(v49, v8, v5);
  StaticDimension.init(_:scaledLike:)();
  v48(v8, v5);
  v71 = v58;
  v72 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v70);
  static ZeroDimension.zero.getter();
  return AppShowcaseLockupViewLayout.Metrics.init(isCenterAligned:iconSize:wordmarkSpace:titleSpace:titleWithWordmarkSpace:descriptionSpace:descriptionBottomBufferSpace:offerLabelSpace:offerLabelBottomBufferSpace:offerButtonSize:crossLinkTitleSpace:crossLinkTitleWithWordmarkSpace:crossLinkSubtitleSpace:)();
}

uint64_t sub_10029AB8C()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for LayoutRect();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppShowcaseType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics();
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppShowcaseLockupViewLayout();
  v44 = *(v11 - 8);
  v45 = v11;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76.receiver = v0;
  v76.super_class = ObjectType;
  v47 = ObjectType;
  objc_msgSendSuper2(&v76, "layoutSubviews", v12);
  v14 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v14], v4);
  v15 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerDisplayProperties];

  v42 = v10;
  sub_100298E8C(v7, v15, v0, v10);

  (*(v5 + 8))(v7, v4);
  v16 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView];
  v74 = type metadata accessor for ArtworkView();
  v75 = &protocol witness table for UIView;
  v41 = v16;
  v73 = v16;
  v17 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v18 = *&v0[v17];
  if (v18)
  {
    v19 = type metadata accessor for WordmarkView();
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v18;
  v71 = v19;
  v72 = v20;
  v40 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel];
  v21 = v40;
  v22 = type metadata accessor for DynamicTypeLabel();
  v66 = v22;
  v67 = &protocol witness table for UILabel;
  v64 = &protocol witness table for UILabel;
  v65 = v21;
  v23 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel];
  v63 = v22;
  v62 = v23;
  v24 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerButton];
  v60 = type metadata accessor for OfferButton();
  v61 = &protocol witness table for UIView;
  v25 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel];
  v58 = &protocol witness table for UILabel;
  v59 = v24;
  v57 = v22;
  v55 = &protocol witness table for UILabel;
  v56 = v25;
  v26 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel];
  v54 = v22;
  v52 = &protocol witness table for UILabel;
  v53 = v26;
  v27 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v51 = v22;
  v50 = v27;
  v28 = v41;
  v29 = v18;
  v30 = v40;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v43;
  AppShowcaseLockupViewLayout.init(metrics:iconView:wordmarkView:titleText:descriptionText:offerButton:offerText:crossLinkTitleText:crossLinkSubtitleText:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v37 = v46;
  AppShowcaseLockupViewLayout.placeChildren(relativeTo:in:)();
  (*(v48 + 8))(v37, v49);
  return (*(v44 + 8))(v36, v45);
}

uint64_t sub_10029B0B4(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B15F0;
    v9 = *(v3 + *a2);
    v10 = *(v3 + *a3);
    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
    *(v3 + v4) = v6;
    v11 = v9;
    v12 = v10;
  }

  return v6;
}

double sub_10029B160(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v5 = sub_10029B0B4(&OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___lockupViews, &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel, &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel);
    v6 = &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___crossLinkViews;
    v7 = &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel;
    v8 = &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel;
  }

  else
  {
    if (([*(v2 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v5 = sub_10029B0B4(&OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___crossLinkViews, &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel, &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel);
    v6 = &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___lockupViews;
    v7 = &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel;
    v8 = &OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel;
  }

  v9 = sub_10029B0B4(v6, v7, v8);
  v10 = v9;
  if ((a2 & 1) == 0)
  {
    if (v5 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      v17 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v18 = *(v5 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_39;
        }

        [v18 setAlpha:0.0];
        [v19 setHidden:1];

        ++v17;
      }

      while (v20 != v16);
    }

    if (v10 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (v21)
      {
LABEL_30:
        v5 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v5 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v22 = *(v10 + 8 * v5 + 32);
          }

          v23 = v22;
          v24 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_42;
          }

          [v22 setAlpha:1.0];
          [v23 setHidden:0];

          ++v5;
        }

        while (v24 != v21);
      }
    }

    else
    {
      v21 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_30;
      }
    }

    return result;
  }

  if (v9 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 setHidden:0];

      ++v12;
      if (v15 == i)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_45:
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = v5;
  *(v26 + 24) = v10;
  v34 = sub_100140F44;
  v35 = v26;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100007A08;
  v33 = &unk_1008BC020;
  v27 = _Block_copy(&v30);

  v28 = swift_allocObject();
  *(v28 + 16) = v5;
  v34 = sub_100140F4C;
  v35 = v28;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100504C5C;
  v33 = &unk_1008BC070;
  v29 = _Block_copy(&v30);

  [v25 animateWithDuration:4 delay:v27 options:v29 animations:0.33 completion:0.0];
  _Block_release(v29);
  _Block_release(v27);
  return result;
}

uint64_t type metadata accessor for AppShowcaseLockupView(uint64_t a1)
{
  result = qword_10097D8D0;
  if (!qword_10097D8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10029B790(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for AppShowcaseType();
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

double sub_10029B858()
{
  swift_beginAccess();

  return result;
}

double sub_10029B8A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id sub_10029B95C()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = *&v0[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  return [v0 setNeedsLayout];
}

uint64_t sub_10029BA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975F00, &qword_1007BAA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10029BA78(uint64_t a1)
{
  v20 = type metadata accessor for ComponentDecoration();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppShowcaseType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v19 = a1;
  AppShowcase.type.getter();
  (*(v6 + 104))(v8, enum case for AppShowcaseType.large(_:), v5);
  sub_10029BD90(&qword_1009745B0, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v22 == v21)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);

LABEL_4:
    AppShowcase.lockup.getter();
    v16 = dispatch thunk of Lockup.decorations.getter();

    v17 = v20;
    (*(v2 + 104))(v4, enum case for ComponentDecoration.arcade(_:), v20);
    v15 = sub_100295C14(v4, v16);

    (*(v2 + 8))(v4, v17);
    return v15 & 1;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);

  v15 = 0;
  if (v13)
  {
    goto LABEL_4;
  }

  return v15 & 1;
}

uint64_t sub_10029BD90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10029BDD8()
{
  v1 = v0;
  v44 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView;
  type metadata accessor for ArtworkView();
  *(v0 + v8) = static ArtworkView.iconArtworkView.getter();
  *(v0 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_wordmarkView) = 0;
  v9 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel;
  v43 = type metadata accessor for DynamicTypeLabel();
  *(v1 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel;
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D1640);
  v13 = *(v11 - 8);
  v40 = *(v13 + 16);
  v40(v7, v12, v11);
  v14 = *(v13 + 56);
  v14(v7, 0, 1, v11);
  v15 = v2;
  v16 = enum case for DirectionalTextAlignment.none(_:);
  v41 = *(v15 + 104);
  v42 = v15 + 104;
  v41(v4, enum case for DirectionalTextAlignment.none(_:), v44);
  v17 = objc_allocWithZone(v43);
  *(v1 + v10) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v18 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerButton;
  v19 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v18) = sub_1000F5284(0, v20);
  v21 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v11, qword_1009D0710);
  v40(v7, v22, v11);
  v14(v7, 0, 1, v11);
  v41(v4, v16, v44);
  v23 = objc_allocWithZone(v43);
  *(v1 + v21) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v24 = (v1 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabelPresenter);
  *v24 = 0u;
  v24[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerDisplayProperties) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkPresenter) = 0;
  v38 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkTitleLabel;
  v39 = v1;
  if (qword_10096E250 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v11, qword_1009D1670);
  v40(v7, v25, v11);
  v14(v7, 0, 1, v11);
  v26 = v44;
  LODWORD(v40) = v16;
  v27 = v41;
  v41(v4, v16, v44);
  v37 = v14;
  v28 = v43;
  v29 = objc_allocWithZone(v43);
  v30 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v31 = v7;
  v32 = v39;
  *(v39 + v38) = v30;
  v38 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v37(v31, 1, 1, v11);
  v27(v4, v40, v26);
  v33 = objc_allocWithZone(v28);
  *(v32 + v38) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v34 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_type;
  v35 = enum case for AppShowcaseType.large(_:);
  v36 = type metadata accessor for AppShowcaseType();
  (*(*(v36 - 8) + 104))(v32 + v34, v35, v36);
  *(v32 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___lockupViews) = 0;
  *(v32 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView____lazy_storage___crossLinkViews) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10029C394()
{
  result = [objc_opt_self() configurationWithPointSize:12.0];
  qword_10097D908 = result;
  return result;
}

void sub_10029C3E0(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = UIFontTextStyleTitle3;
  v5 = [v3 configurationWithTextStyle:v4];

  *a2 = v5;
}

id sub_10029C454(unsigned __int8 a1)
{
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
      if (qword_10096D538 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
      if (qword_10096D530 == -1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
    if (qword_10096D540 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a1 != 3)
  {
    v7 = sub_10032FEB0(0x654C6C657275614CLL, 0xEF656772614C7466, 0);
    v8 = [v7 imageWithRenderingMode:2];

    return v8;
  }

  (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
  if (qword_10096D548 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_13:
  v10 = static SystemImage.load(_:with:)();
  (*(v3 + 8))(v6, v2);
  return v10;
}

id sub_10029C720(unsigned __int8 a1)
{
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
      if (qword_10096D538 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
      if (qword_10096D530 == -1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
    if (qword_10096D540 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a1 != 3)
  {
    v7 = sub_10032FEB0(0xD000000000000010, 0x800000010080B7D0, 0);
    v8 = [v7 imageWithRenderingMode:2];

    return v8;
  }

  (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
  if (qword_10096D548 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_13:
  v10 = static SystemImage.load(_:with:)();
  (*(v3 + 8))(v6, v2);
  return v10;
}

unint64_t sub_10029C9E4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002A03F0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10029CA1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10029CA6C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10029CAA4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void *sub_10029CAF0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_10029CB10(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_10029CB28@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    if (Locale.isChinese.getter())
    {
      if (qword_10096E008 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for FontUseCase();
      v5 = v4;
      v6 = qword_1009D0F98;
      goto LABEL_27;
    }

    if (Locale.isJapanese.getter())
    {
      if (qword_10096E010 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for FontUseCase();
      v5 = v4;
      v6 = qword_1009D0FB0;
      goto LABEL_27;
    }

    if (Locale.isKorean.getter())
    {
      if (qword_10096E018 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for FontUseCase();
      v5 = v4;
      v6 = qword_1009D0FC8;
      goto LABEL_27;
    }
  }

  else if (a1 == 1)
  {
    if (Locale.isChinese.getter())
    {
      if (qword_10096DFD8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for FontUseCase();
      v5 = v4;
      v6 = qword_1009D0F08;
LABEL_27:
      v7 = sub_1000056A8(v4, v6);
      v14 = *(v5 - 8);
      (*(v14 + 16))(a2, v7, v5);
      v8 = *(v14 + 56);
      v9 = a2;
      v10 = 0;
      v11 = v5;
      goto LABEL_29;
    }

    if (Locale.isJapanese.getter())
    {
      if (qword_10096DFE0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for FontUseCase();
      v5 = v4;
      v6 = qword_1009D0F20;
      goto LABEL_27;
    }

    if (Locale.isKorean.getter())
    {
      if (qword_10096DFE8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for FontUseCase();
      v5 = v4;
      v6 = qword_1009D0F38;
      goto LABEL_27;
    }
  }

  v12 = type metadata accessor for FontUseCase();
  v8 = *(*(v12 - 8) + 56);
  v11 = v12;
  v9 = a2;
  v10 = 1;
LABEL_29:

  return v8(v9, v10, 1, v11);
}

char *sub_10029CDF8(char a1, char a2, char a3, char a4, unsigned __int8 a5)
{
  v6 = v5;
  LODWORD(v85) = a5;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for Locale();
  v80 = *(v12 - 8);
  v81 = v12;
  __chkstk_darwin(v12);
  v79 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for FontUseCase();
  v84 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v82 = &v75 - v16;
  v17 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v17 - 8);
  v78 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v83 = &v75 - v20;
  v21 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useAdsLocale;
  v6[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useAdsLocale] = 0;
  v22 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v6[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView;
  *&v6[v23] = [objc_allocWithZone(UIImageView) init];
  v24 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView;
  *&v6[v24] = [objc_allocWithZone(UIImageView) init];
  v6[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_size] = a1;
  v6[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_preferredLineCount] = a2 & 1;
  v6[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_shouldCapWidthByAvailableWidth] = a3;
  v6[v21] = a4;
  v6[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useCase] = a5;
  v25 = type metadata accessor for EditorsChoiceView();
  v88.receiver = v6;
  v88.super_class = v25;
  v26 = objc_msgSendSuper2(&v88, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [objc_opt_self() clearColor];
  [v30 setBackgroundColor:v31];

  v32 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel;
  v33 = *&v30[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel];
  v34 = [v30 tintColor];

  [v33 setTextColor:v34];
  [*&v30[v32] setLineBreakMode:4];
  v35 = *&v30[v32];
  if (v85)
  {
    v36 = v35;
    v37 = [v30 traitCollection];
    v38 = a1;
    v39 = a1;
    *&v85 = v36;
    v75.super.isa = v37;
    if (a1 <= 1u)
    {
      v40 = v84;
      v41 = v82;
      v42 = v77;
      if (v38)
      {
        if (qword_10096DFD0 != -1)
        {
          swift_once();
        }

        v43 = qword_1009D0EF0;
      }

      else
      {
        if (qword_10096DFC8 != -1)
        {
          swift_once();
        }

        v43 = qword_1009D0ED8;
      }
    }

    else
    {
      v40 = v84;
      v41 = v82;
      v42 = v77;
      if (v38 == 2)
      {
        if (qword_10096DFF0 != -1)
        {
          swift_once();
        }

        v43 = qword_1009D0F50;
      }

      else if (v38 == 3)
      {
        if (qword_10096E020 != -1)
        {
          swift_once();
        }

        v43 = qword_1009D0FE0;
      }

      else
      {
        if (qword_10096E028 != -1)
        {
          swift_once();
        }

        v43 = qword_1009D0FF8;
      }
    }

    v48 = sub_1000056A8(v42, v43);
    (*(v40 + 16))(v41, v48, v42);
    v49 = v79;
    static Locale.storefront.getter();
    v50 = v78;
    sub_10029CB28(v39, v78);
    (*(v80 + 8))(v49, v81);
    if ((*(v40 + 48))(v50, 1, v42) == 1)
    {

      sub_10025BAF0(v50);
      v51 = v83;
      (*(v40 + 32))(v83, v41, v42);
    }

    else
    {
      v52 = v76;
      v82 = *(v40 + 32);
      (v82)(v76, v50, v42);
      isa = v75.super.isa;
      v54 = FontUseCase.makeFontDescriptor(compatibleWith:)(v75).super.isa;
      [(objc_class *)v54 pointSize];
      v56 = v55;
      v57 = FontUseCase.makeFontDescriptor(compatibleWith:)(isa).super.isa;
      [(objc_class *)v57 pointSize];
      v59 = v58;

      v40 = v84;
      v60 = *(v40 + 8);
      if (v59 >= v56)
      {
        v60(v52, v42);
        v51 = v83;
        v61 = v83;
        v62 = v41;
      }

      else
      {
        v60(v41, v42);
        v51 = v83;
        v61 = v83;
        v62 = v52;
      }

      (v82)(v61, v62, v42);
    }

    v63 = v85;
    (*(v40 + 56))(v51, 0, 1, v42);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }

  else
  {
    v44 = v35;
    static CustomTextStyle<>.metadataRibbon.getter();
    if (qword_10096EE60 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for MetadataRibbonTextStyle();
    v46 = sub_1000056A8(v45, qword_1009D3728);
    v87[3] = v45;
    v87[4] = sub_1002A03A8(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
    v47 = sub_1000056E0(v87);
    (*(*(v45 - 8) + 16))(v47, v46, v45);
    dispatch thunk of DynamicTypeLabel.customTextStyle.setter();
  }

  [*&v30[v32] setAdjustsFontSizeToFitWidth:{1, v75.super.isa}];
  v64 = *&v30[v32];
  v65 = v30;
  [v65 addSubview:v64];
  if (v65[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_size] == 4)
  {

    [v65 setContentMode:3];
  }

  else
  {
    v66 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView;
    v67 = *&v65[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView];
    v68 = [v65 tintColor];
    [v67 setTintColor:v68];

    v69 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView;
    v70 = *&v65[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView];
    v71 = [v65 tintColor];

    [v70 setTintColor:v71];
    [*&v65[v66] setSemanticContentAttribute:3];
    [*&v65[v69] setSemanticContentAttribute:3];
    [v65 addSubview:*&v65[v69]];
    [v65 addSubview:*&v65[v66]];
  }

  sub_10029E330();
  sub_10029E49C();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v72 = swift_allocObject();
  v85 = xmmword_1007B10D0;
  *(v72 + 16) = xmmword_1007B10D0;
  *(v72 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v72 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v73 = swift_allocObject();
  *(v73 + 16) = v85;
  *(v73 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v73 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v65;
}

void sub_10029D9CC()
{
  ObjectType = swift_getObjectType();
  v54.receiver = v0;
  v54.super_class = type metadata accessor for EditorsChoiceView();
  objc_msgSendSuper2(&v54, "layoutSubviews");
  v2 = v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_preferredLineCount];
  v3 = v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_size];
  v4 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useAdsLocale;
  v5 = v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useAdsLocale];
  v6 = v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useCase];
  LayoutMarginsAware<>.layoutFrame.getter();
  Width = CGRectGetWidth(v55);
  v8 = sub_10029E79C(v2, v3, v5, v6, v0, ObjectType, Width);
  v9 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel];
  v11 = v10 & 1;
  [v9 setNumberOfLines:{(v10 & 1u) + 1, v8}];
  sub_1002A0400(v11, v0[v4]);
  v12 = String._bridgeToObjectiveC()();

  [v9 setText:v12];

  v13 = [v0 traitCollection];
  if (v6 == 1)
  {
    v14 = v13;
    v15 = [v13 preferredContentSizeCategory];
    v16 = UIContentSizeCategory.isAccessibilityCategory.getter();

    if (v16)
    {
      [*&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView] setHidden:1];
      [*&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView] setHidden:1];
      LayoutMarginsAware<>.layoutFrame.getter();
      v17 = CGRectGetWidth(v56);
      LayoutMarginsAware<>.layoutFrame.getter();
      [v9 sizeThatFits:{v17, CGRectGetHeight(v57)}];
      v19 = v18;
      v21 = v20;
      LayoutMarginsAware<>.layoutFrame.getter();
      v22 = CGRectGetMidX(v58) - v19 * 0.5;
      LayoutMarginsAware<>.layoutFrame.getter();
      [v9 setFrame:{v22, CGRectGetMidY(v59) - v21 * 0.5, v17, v21}];
      return;
    }
  }

  else
  {
  }

  v23 = v3;
  v24 = sub_10029C454(v3);
  v25 = sub_10029C720(v23);
  v26 = 12.0;
  if (v23 != 4)
  {
    [v0 bounds];
    Height = CGRectGetHeight(v60);
    [v24 size];
    if (v28 < Height)
    {
      Height = v28;
    }

    [v24 size];
    v30 = Height * v29;
    [v24 size];
    v32 = v30 / v31;
    [v0 bounds];
    MinX = CGRectGetMinX(v61);
    [v0 bounds];
    v34 = CGRectGetMidY(v62) - Height * 0.5;
    v35 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView];
    [v35 setHidden:0];
    [v35 setImage:v24];
    [v35 setFrame:{MinX, v34, v32, Height}];
    [v0 bounds];
    v36 = CGRectGetHeight(v63);
    [v25 size];
    if (v37 < v36)
    {
      v36 = v37;
    }

    [v25 size];
    v39 = v36 * v38;
    [v25 size];
    v41 = v39 / v40;
    [v0 bounds];
    v42 = CGRectGetMaxX(v64) - v41;
    [v0 bounds];
    v43 = CGRectGetMidY(v65) - v36 * 0.5;
    v44 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView];
    [v44 setHidden:0];
    [v44 setImage:v25];
    [v44 setFrame:{v42, v43, v41, v36}];
    v26 = dbl_1007C4E18[v23];
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  v45 = CGRectGetWidth(v66);
  [v24 size];
  v47 = v26 + v26 + v46;
  [v25 size];
  v49 = v45 - (v47 + v48);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v9 sizeThatFits:{v49, CGRectGetHeight(v67)}];
  v51 = v50;
  [v24 size];
  v53 = v26 + v52;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v9 setFrame:{v53, CGRectGetMidY(v68) + v51 * -0.5, v49, v51}];
}

void sub_10029DED0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (*(v5 + OBJC_IVAR____TtC8AppStore17EditorsChoiceView_size) != 4)
  {
    v32.receiver = v5;
    v32.super_class = type metadata accessor for EditorsChoiceView();
    objc_msgSendSuper2(&v32, "drawRect:", a2, a3, a4, a5);
    return;
  }

  v6 = UIGraphicsGetCurrentContext();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = [v5 tintColor];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    v11 = [v9 CGColor];

    CGContextSetFillColorWithColor(v8, v11);
  }

  v12 = sub_10029C454(4u);
  [v5 bounds];
  Height = CGRectGetHeight(v34);
  [v12 size];
  if (v14 < Height)
  {
    Height = v14;
  }

  [v12 size];
  v16 = Height * v15;
  [v12 size];
  v18 = v16 / v17;
  [v5 bounds];
  MinX = CGRectGetMinX(v35);
  [v5 bounds];
  [v12 drawInRect:{MinX, CGRectGetMidY(v36) - Height * 0.5, v18, Height}];
  v31 = sub_10029C720(4u);
  [v5 bounds];
  v20 = CGRectGetHeight(v37);
  [v31 size];
  if (v21 < v20)
  {
    v20 = v21;
  }

  [v31 size];
  v23 = v20 * v22;
  [v31 size];
  v25 = v23 / v24;
  [v5 bounds];
  v26 = CGRectGetMaxX(v38) - v25;
  [v5 bounds];
  [v31 drawInRect:{v26, CGRectGetMidY(v39) - v20 * 0.5, v25, v20}];
}

void sub_10029E1C4()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel];
  v2 = [v0 tintColor];
  [v1 setTextColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView];
  v4 = [v0 tintColor];
  [v3 setTintColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView];
  v6 = [v0 tintColor];
  [v5 setTintColor:v6];

  if (v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_size] == 4)
  {

    [v0 setNeedsDisplay];
  }
}

void sub_10029E330()
{
  if (v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useCase] == 1)
  {
    v1 = [v0 layer];
    [v1 setAllowsGroupBlending:0];

    v2 = [v0 traitCollection];
    [v2 userInterfaceStyle];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();

    v4 = [*&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView] layer];
    [v4 setCompositingFilter:v3];

    v5 = [*&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView] layer];
    [v5 setCompositingFilter:v3];
  }
}

id sub_10029E49C()
{
  v1 = v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useCase];
  v2 = [v0 traitCollection];
  if (v1 == 1)
  {
    v3 = v2;
    v4 = [v2 preferredContentSizeCategory];
    v5 = UIContentSizeCategory.isAccessibilityCategory.getter();

    if (v5)
    {
      v6 = 4;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = 1;
LABEL_6:
  v7 = *&v0[OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel];

  return [v7 setTextAlignment:v6];
}

id sub_10029E5B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditorsChoiceView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10029E698()
{
  result = qword_10097D980;
  if (!qword_10097D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D980);
  }

  return result;
}

unint64_t sub_10029E6F0()
{
  result = qword_10097D988;
  if (!qword_10097D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D988);
  }

  return result;
}

unint64_t sub_10029E748()
{
  result = qword_10097D990;
  if (!qword_10097D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D990);
  }

  return result;
}

double sub_10029E79C(char a1, void *a2, int a3, int a4, void *a5, uint64_t a6, double a7)
{
  LODWORD(v114) = a3;
  v118 = a2;
  v119 = a6;
  v122 = a4;
  v9 = a4;
  v10 = type metadata accessor for Locale();
  v116 = *(v10 - 8);
  v117 = v10;
  __chkstk_darwin(v10);
  v115 = v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v12 - 8);
  v112 = v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v110 - v15;
  v17 = type metadata accessor for FontUseCase();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v120 = v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v113 = v110 - v21;
  __chkstk_darwin(v22);
  v121 = v110 - v23;
  __chkstk_darwin(v24);
  v26 = v110 - v25;
  __chkstk_darwin(v27);
  v29 = v110 - v28;
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v111 = v110 - v32;
  v123 = a5;
  v33 = [a5 traitCollection];
  if (v9 != 1)
  {

    goto LABEL_5;
  }

  v34 = v33;
  v35 = [v33 preferredContentSizeCategory];
  v36 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if ((v36 & 1) == 0)
  {
LABEL_5:
    v38 = v118;
    v39 = sub_10029C454(v118);
    v40 = sub_10029C720(v38);
    [v39 size];
    [v40 size];

    v37 = v120;
    goto LABEL_6;
  }

  v37 = v120;
  v38 = v118;
LABEL_6:
  if (a1)
  {
    goto LABEL_44;
  }

  v41 = 0xD00000000000001ALL;
  v42 = 0x8000000100808300;
  if (v114)
  {
    v45 = localizedStringForAdsLanguage(_:)(*&v41);
    object = v45._object;
    countAndFlagsBits = v45._countAndFlagsBits;
  }

  else
  {
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    v47 = localizedString(_:comment:)(*&v41, v46);
    object = v47._object;
    countAndFlagsBits = v47._countAndFlagsBits;
  }

  v48 = countAndFlagsBits;
  v49 = object;
  v50 = [v123 traitCollection];
  v110[2] = v49;
  v110[1] = v48;
  if (v38 <= 1u)
  {
    if (v38)
    {
      if (qword_10096DFD0 != -1)
      {
        swift_once();
      }

      v51 = qword_1009D0EF0;
    }

    else
    {
      if (qword_10096DFC8 != -1)
      {
        swift_once();
      }

      v51 = qword_1009D0ED8;
    }
  }

  else if (v38 == 2)
  {
    if (v122)
    {
      if (qword_10096DFF0 != -1)
      {
        swift_once();
      }

      v51 = qword_1009D0F50;
    }

    else
    {
      if (qword_10096DFF8 != -1)
      {
        swift_once();
      }

      v51 = qword_1009D0F68;
    }
  }

  else if (v38 == 3)
  {
    if (qword_10096E020 != -1)
    {
      swift_once();
    }

    v51 = qword_1009D0FE0;
  }

  else
  {
    if (qword_10096E028 != -1)
    {
      swift_once();
    }

    v51 = qword_1009D0FF8;
  }

  v52 = sub_1000056A8(v17, v51);
  (*(v18 + 16))(v29, v52, v17);
  v53 = v115;
  static Locale.storefront.getter();
  sub_10029CB28(v38, v16);
  (*(v116 + 8))(v53, v117);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    sub_10025BAF0(v16);
    v54 = v111;
    (*(v18 + 32))(v111, v29, v17);
    v37 = v120;
  }

  else
  {
    v55 = *(v18 + 32);
    v55(v26, v16, v17);
    isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v50).super.isa;
    [(objc_class *)isa pointSize];
    v58 = v57;
    v59 = FontUseCase.makeFontDescriptor(compatibleWith:)(v50).super.isa;
    [(objc_class *)v59 pointSize];
    v61 = v60;

    v62 = *(v18 + 8);
    if (v61 >= v58)
    {
      v62(v26, v17);
      v54 = v111;
      v63 = v111;
      v64 = v29;
    }

    else
    {
      v62(v29, v17);
      v54 = v111;
      v63 = v111;
      v64 = v26;
    }

    v55(v63, v64, v17);
    v37 = v120;
    v38 = v118;
  }

  v65 = v122;
  v66 = [v123 traitCollection];
  if (v65 == 1)
  {
    v67 = v66;
    v68 = [v66 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();
  }

  else
  {
  }

  v69 = type metadata accessor for Feature();
  v125 = v69;
  v126 = sub_1002A03A8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v70 = sub_1000056E0(v124);
  (*(*(v69 - 8) + 104))(v70, enum case for Feature.measurement_with_labelplaceholder(_:), v69);
  isFeatureEnabled(_:)();
  sub_100007000(v124);
  static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v72 = v71;

  (*(v18 + 8))(v54, v17);
  v73 = CGFloat.isLessThanOrEffectivelyEqualTo(_:accuracy:)();
  if (v122)
  {
    if ((v73 & 1) == 0)
    {
LABEL_44:
      v74 = 0x80000001007FF2F0;
      if (v114)
      {
        v75 = 0xD000000000000017;
        v78 = localizedStringForAdsLanguage(_:)(*(&v74 - 1));
        v77 = v78._object;
        v76 = v78._countAndFlagsBits;
      }

      else
      {
        v79._countAndFlagsBits = 0xD000000000000050;
        v79._object = 0x80000001007FF310;
        v80 = 0xD000000000000017;
        v81 = localizedString(_:comment:)(*(&v74 - 1), v79);
        v77 = v81._object;
        v76 = v81._countAndFlagsBits;
      }

      v82 = v76;
      v83 = v77;
      v85 = v112;
      v84 = v113;
      v86 = [v123 traitCollection];
      v118 = v83;
      v114 = v82;
      if (v38 <= 1u)
      {
        if (v38)
        {
          if (qword_10096DFD0 != -1)
          {
            swift_once();
          }

          v87 = qword_1009D0EF0;
        }

        else
        {
          if (qword_10096DFC8 != -1)
          {
            swift_once();
          }

          v87 = qword_1009D0ED8;
        }
      }

      else if (v38 == 2)
      {
        if (v122)
        {
          if (qword_10096DFF0 != -1)
          {
            swift_once();
          }

          v87 = qword_1009D0F50;
        }

        else
        {
          if (qword_10096DFF8 != -1)
          {
            swift_once();
          }

          v87 = qword_1009D0F68;
        }
      }

      else if (v38 == 3)
      {
        if (qword_10096E020 != -1)
        {
          swift_once();
        }

        v87 = qword_1009D0FE0;
      }

      else
      {
        if (qword_10096E028 != -1)
        {
          swift_once();
        }

        v87 = qword_1009D0FF8;
      }

      v88 = sub_1000056A8(v17, v87);
      (*(v18 + 16))(v84, v88, v17);
      v89 = v115;
      static Locale.storefront.getter();
      sub_10029CB28(v38, v85);
      (*(v116 + 8))(v89, v117);
      if ((*(v18 + 48))(v85, 1, v17) == 1)
      {

        sub_10025BAF0(v85);
        (*(v18 + 32))(v121, v84, v17);
      }

      else
      {
        v90 = v84;
        v91 = *(v18 + 32);
        v91(v37, v85, v17);
        v92 = FontUseCase.makeFontDescriptor(compatibleWith:)(v86).super.isa;
        [(objc_class *)v92 pointSize];
        v94 = v93;
        v95 = FontUseCase.makeFontDescriptor(compatibleWith:)(v86).super.isa;
        [(objc_class *)v95 pointSize];
        v97 = v96;

        v98 = *(v18 + 8);
        if (v97 >= v94)
        {
          v98(v37, v17);
          v99 = v121;
          v100 = v90;
        }

        else
        {
          v98(v90, v17);
          v99 = v121;
          v100 = v37;
        }

        v91(v99, v100, v17);
      }

      v101 = v122;
      v102 = [v123 traitCollection];
      if (v101 == 1)
      {
        v103 = v102;
        v104 = [v102 preferredContentSizeCategory];
        UIContentSizeCategory.isAccessibilityCategory.getter();
      }

      else
      {
      }

      v105 = type metadata accessor for Feature();
      v125 = v105;
      v126 = sub_1002A03A8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v106 = sub_1000056E0(v124);
      (*(*(v105 - 8) + 104))(v106, enum case for Feature.measurement_with_labelplaceholder(_:), v105);
      isFeatureEnabled(_:)();
      sub_100007000(v124);
      v107 = v121;
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      v72 = v108;

      (*(v18 + 8))(v107, v17);
    }
  }

  return v72;
}

double sub_10029F56C(char a1, void *a2, int a3, int a4, id a5, double a6)
{
  LODWORD(v117) = a3;
  v125 = a2;
  v124 = a4;
  v8 = a4;
  v9 = type metadata accessor for Locale();
  v120 = *(v9 - 8);
  v121 = v9;
  __chkstk_darwin(v9);
  v119 = v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v11 - 8);
  v115 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v112 - v14;
  v16 = type metadata accessor for FontUseCase();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v116 = v112 - v21;
  __chkstk_darwin(v22);
  v123 = v112 - v23;
  __chkstk_darwin(v24);
  v26 = v112 - v25;
  __chkstk_darwin(v27);
  v29 = v112 - v28;
  __chkstk_darwin(v30);
  v114 = v112 - v31;
  v118 = type metadata accessor for EditorsChoiceView();
  v32 = [a5 traitCollection];
  v113 = v26;
  if (v8 == 1)
  {
    v33 = a5;
    v34 = v32;
    v35 = [v32 preferredContentSizeCategory];
    v36 = UIContentSizeCategory.isAccessibilityCategory.getter();

    a5 = v33;
    if (v36)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v37 = v125;
  v38 = sub_10029C454(v125);
  v39 = sub_10029C720(v37);
  [v38 size];
  [v39 size];

LABEL_6:
  v40 = v19;
  v122 = a5;
  if (a1)
  {
    goto LABEL_44;
  }

  v41 = 0xD00000000000001ALL;
  v42 = 0x8000000100808300;
  if (v117)
  {
    v45 = localizedStringForAdsLanguage(_:)(*&v41);
    object = v45._object;
    countAndFlagsBits = v45._countAndFlagsBits;
  }

  else
  {
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    v47 = localizedString(_:comment:)(*&v41, v46);
    object = v47._object;
    countAndFlagsBits = v47._countAndFlagsBits;
  }

  v48 = countAndFlagsBits;
  v49 = object;
  v50 = [a5 traitCollection];
  v112[2] = v49;
  v112[1] = v48;
  if (v125 <= 1u)
  {
    if (v125)
    {
      if (qword_10096DFD0 != -1)
      {
        swift_once();
      }

      v51 = qword_1009D0EF0;
    }

    else
    {
      if (qword_10096DFC8 != -1)
      {
        swift_once();
      }

      v51 = qword_1009D0ED8;
    }
  }

  else if (v125 == 2)
  {
    if (v124)
    {
      if (qword_10096DFF0 != -1)
      {
        swift_once();
      }

      v51 = qword_1009D0F50;
    }

    else
    {
      if (qword_10096DFF8 != -1)
      {
        swift_once();
      }

      v51 = qword_1009D0F68;
    }
  }

  else if (v125 == 3)
  {
    if (qword_10096E020 != -1)
    {
      swift_once();
    }

    v51 = qword_1009D0FE0;
  }

  else
  {
    if (qword_10096E028 != -1)
    {
      swift_once();
    }

    v51 = qword_1009D0FF8;
  }

  v52 = sub_1000056A8(v16, v51);
  (*(v17 + 16))(v29, v52, v16);
  v53 = v119;
  static Locale.storefront.getter();
  sub_10029CB28(v125, v15);
  (*(v120 + 8))(v53, v121);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_10025BAF0(v15);
    v54 = v114;
    (*(v17 + 32))(v114, v29, v16);
    a5 = v122;
  }

  else
  {
    v112[0] = v19;
    v55 = *(v17 + 32);
    v56 = v113;
    v55(v113, v15, v16);
    isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v50).super.isa;
    [(objc_class *)isa pointSize];
    v59 = v58;
    v60 = FontUseCase.makeFontDescriptor(compatibleWith:)(v50).super.isa;
    [(objc_class *)v60 pointSize];
    v62 = v61;

    v63 = *(v17 + 8);
    if (v62 >= v59)
    {
      v63(v56, v16);
      v54 = v114;
      v64 = v114;
      v65 = v29;
    }

    else
    {
      v63(v29, v16);
      v54 = v114;
      v64 = v114;
      v65 = v56;
    }

    v55(v64, v65, v16);
    a5 = v122;
    v40 = v112[0];
  }

  v66 = v124;
  v67 = [a5 traitCollection];
  if (v66 == 1)
  {
    v68 = v67;
    v69 = [v67 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();
  }

  else
  {
  }

  v70 = type metadata accessor for Feature();
  v127 = v70;
  v128 = sub_1002A03A8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v71 = sub_1000056E0(v126);
  (*(*(v70 - 8) + 104))(v71, enum case for Feature.measurement_with_labelplaceholder(_:), v70);
  isFeatureEnabled(_:)();
  sub_100007000(v126);
  static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v73 = v72;

  (*(v17 + 8))(v54, v16);
  v74 = CGFloat.isLessThanOrEffectivelyEqualTo(_:accuracy:)();
  if (v124)
  {
    if ((v74 & 1) == 0)
    {
LABEL_44:
      v75 = 0x80000001007FF2F0;
      if (v117)
      {
        v76 = 0xD000000000000017;
        v79 = localizedStringForAdsLanguage(_:)(*(&v75 - 1));
        v78 = v79._object;
        v77 = v79._countAndFlagsBits;
      }

      else
      {
        v80._countAndFlagsBits = 0xD000000000000050;
        v80._object = 0x80000001007FF310;
        v81 = 0xD000000000000017;
        v82 = localizedString(_:comment:)(*(&v75 - 1), v80);
        v78 = v82._object;
        v77 = v82._countAndFlagsBits;
      }

      v83 = v77;
      v84 = v78;
      v86 = v115;
      v85 = v116;
      v87 = [a5 traitCollection];
      v117 = v83;
      if (v125 <= 1u)
      {
        if (v125)
        {
          v88 = v87;
          if (qword_10096DFD0 != -1)
          {
            swift_once();
          }

          v89 = qword_1009D0EF0;
        }

        else
        {
          v88 = v87;
          if (qword_10096DFC8 != -1)
          {
            swift_once();
          }

          v89 = qword_1009D0ED8;
        }
      }

      else if (v125 == 2)
      {
        if (v124)
        {
          v88 = v87;
          if (qword_10096DFF0 != -1)
          {
            swift_once();
          }

          v89 = qword_1009D0F50;
        }

        else
        {
          v88 = v87;
          if (qword_10096DFF8 != -1)
          {
            swift_once();
          }

          v89 = qword_1009D0F68;
        }
      }

      else if (v125 == 3)
      {
        v88 = v87;
        if (qword_10096E020 != -1)
        {
          swift_once();
        }

        v89 = qword_1009D0FE0;
      }

      else
      {
        v88 = v87;
        if (qword_10096E028 != -1)
        {
          swift_once();
        }

        v89 = qword_1009D0FF8;
      }

      v90 = sub_1000056A8(v16, v89);
      (*(v17 + 16))(v85, v90, v16);
      v91 = v119;
      static Locale.storefront.getter();
      sub_10029CB28(v125, v86);
      (*(v120 + 8))(v91, v121);
      if ((*(v17 + 48))(v86, 1, v16) == 1)
      {

        sub_10025BAF0(v86);
        (*(v17 + 32))(v123, v85, v16);
      }

      else
      {
        v125 = v84;
        v92 = v85;
        v93 = *(v17 + 32);
        v93(v40, v86, v16);
        v94 = FontUseCase.makeFontDescriptor(compatibleWith:)(v88).super.isa;
        [(objc_class *)v94 pointSize];
        v96 = v95;
        v97 = FontUseCase.makeFontDescriptor(compatibleWith:)(v88).super.isa;
        [(objc_class *)v97 pointSize];
        v99 = v98;

        v100 = *(v17 + 8);
        if (v99 >= v96)
        {
          v100(v40, v16);
          v101 = v123;
          v102 = v92;
        }

        else
        {
          v100(v92, v16);
          v101 = v123;
          v102 = v40;
        }

        v93(v101, v102, v16);
      }

      v103 = v124;
      v104 = [v122 traitCollection];
      if (v103 == 1)
      {
        v105 = v104;
        v106 = [v104 preferredContentSizeCategory];
        UIContentSizeCategory.isAccessibilityCategory.getter();
      }

      else
      {
      }

      v107 = type metadata accessor for Feature();
      v127 = v107;
      v128 = sub_1002A03A8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v108 = sub_1000056E0(v126);
      (*(*(v107 - 8) + 104))(v108, enum case for Feature.measurement_with_labelplaceholder(_:), v107);
      isFeatureEnabled(_:)();
      sub_100007000(v126);
      v109 = v123;
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      v73 = v110;

      (*(v17 + 8))(v109, v16);
    }
  }

  return v73;
}

uint64_t sub_1002A03A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002A03F0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1002A0400(char a1, char a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = 0x80000001007FF2F0;
      v3 = 0xD000000000000017;
      return localizedStringForAdsLanguage(_:)(*&v3)._countAndFlagsBits;
    }

    v5 = 0x80000001007FF2F0;
    v6 = 0xD000000000000050;
    v7 = 0x80000001007FF310;
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
    if (a2)
    {
      v2 = 0x8000000100808300;
      return localizedStringForAdsLanguage(_:)(*&v3)._countAndFlagsBits;
    }

    v5 = 0x8000000100808300;
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  return localizedString(_:comment:)(*&v3, *&v6)._countAndFlagsBits;
}

void sub_1002A047C()
{
  *(v0 + OBJC_IVAR____TtC8AppStore17EditorsChoiceView_useAdsLocale) = 0;
  v1 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_leftLaurelView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC8AppStore17EditorsChoiceView_rightLaurelView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002A0550(void *a1, char a2, int a3, id a4, double a5, char a6, int a7, uint64_t a8)
{
  v15 = a7;
  v16 = [a4 traitCollection];
  if (v15 == 1)
  {
    v17 = v16;
    v18 = [v16 preferredContentSizeCategory];
    v19 = UIContentSizeCategory.isAccessibilityCategory.getter();

    if (v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v20 = sub_10029C454(a1);
  v21 = sub_10029C720(a1);
  [v20 size];
  [v21 size];

LABEL_6:
  sub_10029E79C(a2 & 1, a1, a6 & 1, a7, a4, a8, a5);
}

void sub_1002A06E8(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView);
  type metadata accessor for ArtworkView();
  sub_1002A180C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v4 = v3;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v5 = *(v2 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView);
  if (v5)
  {
    v6 = v5;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  v7 = *(*(*(v2 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v7)
  {
    type metadata accessor for VideoView(0);
    if (swift_dynamicCastClass())
    {
      sub_1002A180C(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
      v8 = v7;
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    }
  }
}

uint64_t sub_1002A08A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1002A0A18(*(a1 + 16), a5);
  v6 = [objc_opt_self() absoluteDimension:v5];
  v7 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v7;
}

uint64_t sub_1002A0930(uint64_t a1)
{
  result = sub_1002A180C(&qword_10097D998, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007C4E60);
  *(a1 + 8) = result;
  return result;
}

void sub_1002A0A18(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AspectRatio();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PosterLockupLayout.aspectRatio.getter();
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  AspectRatio.height(fromWidth:)();
  (*(v5 + 8))(v7, v4);
  [a2 pageContainerSize];
  v9 = v8;
  [a2 pageMarginInsets];
  v11 = v9 - v10;
  [a2 pageMarginInsets];
  v13 = v11 - v12;
  PageTraitEnvironment.pageColumnWidth.getter();
  v15 = v14;
  PageTraitEnvironment.pageColumnMargin.getter();
  if (v13 < (v15 + v16) * a1)
  {
    PageTraitEnvironment.pageColumnWidth.getter();
  }
}

id sub_1002A0B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v102 = a3;
  v6 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v6 - 8);
  v101 = &v83 - v7;
  v99 = type metadata accessor for OfferButtonSubtitlePosition();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v83 - v9;
  v10 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v10 - 8);
  v94 = &v83 - v11;
  v12 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v12 - 8);
  v91 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v90 = &v83 - v15;
  v16 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v16 - 8);
  v89 = &v83 - v17;
  v18 = type metadata accessor for VideoControls();
  __chkstk_darwin(v18 - 8);
  v88 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v21 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v21 - 8);
  v23 = &v83 - v22;
  v24 = type metadata accessor for VideoFillMode();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for VideoConfiguration();
  v92 = *(v28 - 8);
  v93 = v28;
  *&v29 = __chkstk_darwin(v28).n128_u64[0];
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [v4 contentView];
  if (PosterLockup.isDark.getter())
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  [v32 setOverrideUserInterfaceStyle:v33];

  v34 = PosterLockup.posterVideo.getter();
  if (v34)
  {
    v35 = v34;
    v87 = a1;
    *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork] = 0;

    v36 = *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer];
    v86 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
    v37 = *(v36 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v84 = v31;
    v38 = v36;
    v39 = *(v37 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    *(v37 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = 0;
    sub_10047C6C8(v39);

    sub_10047B37C();
    v85 = v4;
    *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video] = v35;

    (*(v25 + 104))(v27, enum case for VideoFillMode.scaleAspectFill(_:), v24);
    Video.preview.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    v40 = type metadata accessor for AspectRatio();
    (*(*(v40 - 8) + 56))(v23, 0, 1, v40);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    v41 = v84;
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    v42 = v103;
    Video.playbackId.getter();
    v43 = v89;
    Video.videoUrl.getter();
    v44 = type metadata accessor for URL();
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    v45 = v90;
    Video.templateMediaEvent.getter();
    v46 = v91;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView(0);
    sub_1002A180C(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v88 = v42;
    v47 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v46, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v45, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v43, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(&v103, &qword_10096FB90, &qword_1007B2A50);
    v48 = *(v38 + v86);
    if (v47)
    {
      v49 = v47;
      v50 = [v49 superview];
      if (v50)
      {
        v51 = v50;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v52 = v48;
        v53 = static NSObject.== infix(_:_:)();

        if (v53)
        {
          [v49 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v59 = *&v48[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v48[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v47;
    v60 = v47;
    sub_10047C6C8(v59);

    (*(v92 + 8))(v41, v93);
    v4 = v85;
  }

  else
  {
    v54 = PosterLockup.posterArtwork.getter();
    if (v54)
    {
      *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork] = v54;

      *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video] = 0;

      v55 = *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView];
      v56 = *(*&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      v57 = *(v56 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      *(v56 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = v55;
      v58 = v55;
      sub_10047C6C8(v57);

      sub_10047B37C();
    }

    else
    {
      v69 = *(*&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      v70 = *(v69 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      *(v69 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = 0;
      sub_10047C6C8(v70);

      sub_10047B37C();
      *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork] = 0;

      *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video] = 0;
    }
  }

  v61 = Lockup.title.getter();
  v62 = &v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle];
  *v62 = v61;
  v62[1] = v63;

  sub_10038A1E8();
  v64 = PosterLockup.epicHeading.getter();
  if (v64)
  {
    *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeadingArtwork] = v64;

    [*&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView] setHidden:1];
  }

  else
  {
    v65 = *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView];
    if (v65)
    {
      [v65 setHidden:1];
    }

    v66 = v62[1];
    if (v66)
    {
      if ((v66 & 0x2000000000000000) != 0)
      {
        v67 = HIBYTE(v66) & 0xF;
      }

      else
      {
        v67 = *v62 & 0xFFFFFFFFFFFFLL;
      }

      v68 = v67 == 0;
    }

    else
    {
      v68 = 1;
    }

    [*&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView] setHidden:v68];
  }

  v71 = *&v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_offerButton];
  v72 = Lockup.offerDisplayProperties.getter();
  v73 = Lockup.buttonAction.getter();
  v74 = sub_10002849C(&unk_100973240, qword_1007B2220);
  v75 = v94;
  (*(*(v74 - 8) + 56))(v94, 1, 1, v74);
  v76 = v95;
  v77 = v99;
  (*(v95 + 104))(v96, enum case for OfferButtonSubtitlePosition.below(_:), v99);
  (*(v76 + 56))(v101, 1, 1, v77);
  sub_1002A180C(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v78 = v97;
  AccessibilityConditional.init(value:axValue:)();
  sub_10064AFA4(v72, v73, 0, v75, v78, v102, 0, 0);

  (*(v98 + 8))(v78, v100);
  sub_10002B894(v75, &unk_100973230, &unk_1007B17E0);
  [v71 setOverrideUserInterfaceStyle:1];
  v79 = PosterLockup.footerText.getter();
  v80 = &v4[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerText];
  *v80 = v79;
  v80[1] = v81;

  return sub_10038A36C();
}

uint64_t sub_1002A180C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002A1854(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Artwork.Crop();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PosterLockupLayout.Metrics();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v48 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v8 - 8);
  v55 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v10 - 8);
  v12 = v46 - v11;
  v13 = type metadata accessor for VideoConfiguration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AspectRatio();
  v47 = *(v17 - 8);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v2 contentView];
  [v21 bounds];

  if (*&v2[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video])
  {
    v22 = *(*(*&v2[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v22)
    {
      v46[3] = type metadata accessor for VideoView(0);
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v46[0] = v20;
        v46[2] = a1;
        v24 = qword_1009D2200;
        v25 = v17;
        v26 = v23;
        swift_beginAccess();
        v27 = *(v14 + 16);
        v46[1] = v26;
        v28 = v26 + v24;
        v29 = v25;
        v27(v16, v28, v13);

        v30 = v22;
        VideoConfiguration.aspectRatio.getter();
        (*(v14 + 8))(v16, v13);
        v31 = v47;
        if ((*(v47 + 48))(v12, 1, v25) != 1)
        {
          v45 = v46[0];
          (*(v31 + 32))(v46[0], v12, v29);
          AspectRatio.maxSize(filling:)();
          Video.preview.getter();
          Artwork.config(_:mode:prefersLayeredImage:)();

          sub_1002A180C(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

          (*(v31 + 8))(v45, v29);
          v32 = &selRef__setDefaultAttributes_;
          goto LABEL_10;
        }

        sub_10002B894(v12, &unk_1009732A0, &unk_1007B4FE0);
      }
    }
  }

  v32 = &selRef__setDefaultAttributes_;
  if (*&v2[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork])
  {

    Artwork.config(_:mode:prefersLayeredImage:)();
    v33 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView;
    v34 = *&v2[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView];
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v34 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    v35 = *&v2[v33];
    type metadata accessor for ArtworkView();
    sub_1002A180C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v36 = v35;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

LABEL_10:
  if (*&v2[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeadingArtwork])
  {

    [v2 bounds];
    v37 = v48;
    sub_10038A03C(v38, v39);
    [v2 bounds];
    static PosterLockupLayout.maximiumLogoArtworkSize(metrics:containerSize:)();
    (*(v49 + 8))(v37, v50);
    v40 = sub_10038A0E8();
    v41 = v52;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v53 + 8))(v41, v54);
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v40 v32[481]];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    v42 = [objc_opt_self() clearColor];
    ArtworkView.backgroundColor.setter();
    type metadata accessor for ArtworkView();
    sub_1002A180C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v43 = *&v2[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView];
    if (v43)
    {
      v44 = v43;
      [v44 setHidden:0];
    }
  }
}

uint64_t sub_1002A2134(char *a1, char *a2)
{
  v102 = a2;
  v116 = sub_10002849C(&qword_10096FE48, &qword_1007B14E0);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v125 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v114 = &v95 - v5;
  __chkstk_darwin(v6);
  v113 = &v95 - v7;
  v8 = sub_10002849C(&qword_10097D9F8, &unk_1007C4F90);
  __chkstk_darwin(v8 - 8);
  v121 = &v95 - v9;
  v129 = type metadata accessor for PurchaseIntent();
  v109 = *(v129 - 1);
  __chkstk_darwin(v129);
  v120 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v95 - v12;
  v13 = type metadata accessor for LegacyAppState.AppInstallationDetails();
  v112 = *(v13 - 8);
  __chkstk_darwin(v13);
  v107 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for LegacyAppState();
  v103 = *(v119 - 1);
  __chkstk_darwin(v119);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v95 - v18;
  v20 = sub_10002849C(&qword_100975D08, &qword_1007BA9A8);
  v133 = *(v20 - 8);
  v134 = v20;
  __chkstk_darwin(v20);
  v108 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v104 = (&v95 - v23);
  __chkstk_darwin(v24);
  v131 = (&v95 - v25);
  __chkstk_darwin(v26);
  v110 = (&v95 - v27);
  v28 = type metadata accessor for AppStore.AppStoreAction();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for AdamId();
  v32 = *(v132 - 8);
  __chkstk_darwin(v132);
  v34 = (&v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = ArcadePackOfferAction.offerActions.getter();
  v36 = v35;
  v130 = v35;
  if (v35 >> 62)
  {
    goto LABEL_93;
  }

  v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v118 = v13;
    v105 = v16;
    v111 = v19;
    if (!v37)
    {

      goto LABEL_12;
    }

    if (v37 < 1)
    {
      break;
    }

    v38 = 0;
    v127 = a1;
    v128 = (v36 & 0xC000000000000001);
    ObjectType = v32;
    v39 = (v29 + 8);
    do
    {
      v40 = v37;
      if (v128)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v38;
      OfferAction.adamId.getter();
      AdamId.stringValue.getter();
      (*(v32 + 8))(v34, v132);
      defaultStoreKitAppAction.getter();
      setStoreKitLastAppAction(adamId:app:)();

      (*v39)(v31, v28);
      v37 = v40;
    }

    while (v40 != v38);

    v19 = v111;
    v32 = ObjectType;
LABEL_12:
    v16 = sub_10002849C(&unk_100973AF0, &qword_1007B3960);
    v28 = type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v123 = v135[0];
    v130 = v135[1];
    v41 = ArcadePackOfferAction.offerActions.getter();
    if (v41 >> 62)
    {
      v16 = v41;
      v29 = _CocoaArrayWrapper.endIndex.getter();
      v41 = v16;
    }

    else
    {
      v29 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v119;
    v101 = v28;
    if (v29)
    {
      v42 = v41;
      v135[0] = _swiftEmptyArrayStorage;
      sub_100144410(0, v29 & ~(v29 >> 63), 0);
      if (v29 < 0)
      {
        goto LABEL_96;
      }

      v43 = v135[0];
      ObjectType = swift_getObjectType();
      v127 = v29;
      v44 = 0;
      v45 = v42;
      v124 = v42 & 0xC000000000000001;
      v122 = (v32 + 8);
      v128 = v42;
      do
      {
        v16 = v43;
        if (v124)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v31 = *&v45[8 * v44 + 32];
        }

        OfferAction.adamId.getter();
        v46 = dispatch thunk of AppStateController.stateMachine(forApp:)();
        v48 = v47;
        (*v122)(v34, v132);
        v29 = swift_getObjectType();
        OfferAction.includeBetaApps.getter();
        v49 = v134;
        v50 = v131;
        dispatch thunk of AppStateMachine.currentStateIncludingBeta(_:)();
        v51 = v50;
        v52 = (v50 + *(v49 + 64));
        *v50 = v31;
        *v52 = v46;
        v52[1] = v48;
        v43 = v16;
        v135[0] = v16;
        v28 = *(v16 + 16);
        v53 = *(v16 + 24);
        if (v28 >= v53 >> 1)
        {
          sub_100144410((v53 > 1), v28 + 1, 1);
          v51 = v131;
          v43 = v135[0];
        }

        ++v44;
        v43[2] = v28 + 1;
        sub_1000476A0(v51, v43 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v28, &qword_100975D08, &qword_1007BA9A8);
        v45 = v128;
      }

      while (v127 != v44);

      a1 = v119;
      v19 = v111;
    }

    else
    {

      v43 = _swiftEmptyArrayStorage;
    }

    v34 = v110;
    v132 = v43[2];
    if (v132)
    {
      v13 = 0;
      v130 = (v103 + 88);
      v131 = (v103 + 16);
      LODWORD(v124) = enum case for LegacyAppState.paused(_:);
      v117 = (v103 + 8);
      v127 = (v103 + 96);
      v32 = (v112 + 4);
      ++v112;
      v16 = &qword_100975D08;
      v28 = &qword_1007BA9A8;
      while (v13 < v43[2])
      {
        ObjectType = (*(v133 + 80) + 32) & ~*(v133 + 80);
        v29 = *(v133 + 72);
        sub_100031660(v43 + ObjectType + v29 * v13, v34, &qword_100975D08, &qword_1007BA9A8);
        v54 = v34 + *(v134 + 48);
        v128 = *v131;
        (v128)(v19, v54, a1);
        v31 = *v130;
        v55 = (*v130)(v19, a1);
        if (v55 == v124)
        {
          (*v127)(v19, a1);
          v56 = v107;
          v57 = v19;
          v58 = v118;
          (*v32)(v107, v57, v118);
          v59 = LegacyAppState.AppInstallationDetails.downloadingPhaseProgress.getter();
          [v59 resume];

          a1 = v119;
          v60 = v56;
          v34 = v110;
          v61 = v58;
          v19 = v111;
          (*v112)(v60, v61);
        }

        else
        {
          (*v117)(v19, a1);
        }

        ++v13;
        sub_10002B894(v34, &qword_100975D08, &qword_1007BA9A8);
        if (v132 == v13)
        {
          v16 = 0;
          LODWORD(v122) = enum case for LegacyAppState.waiting(_:);
          LODWORD(v111) = enum case for LegacyAppState.purchased(_:);
          LODWORD(v110) = enum case for LegacyAppState.updatable(_:);
          LODWORD(v103) = enum case for LegacyAppState.downloadable(_:);
          v100 = enum case for LegacyAppState.downloading(_:);
          v99 = enum case for LegacyAppState.installing(_:);
          v98 = enum case for LegacyAppState.openable(_:);
          v97 = enum case for LegacyAppState.buyable(_:);
          v96 = enum case for LegacyAppState.installed(_:);
          v95 = enum case for LegacyAppState.unknown(_:);
          v32 = v43 + ObjectType;
          LODWORD(v107) = enum case for PurchaseType.preorder(_:);
          v13 = _swiftEmptyArrayStorage;
          v28 = v105;
          v34 = v104;
          v19 = v128;
          while (1)
          {
            if (v16 >= v43[2])
            {
              goto LABEL_90;
            }

            sub_100031660(v32, v34, &qword_100975D08, &qword_1007BA9A8);
            (v19)(v28, v34 + *(v134 + 48), a1);
            v63 = (v31)(v28, a1);
            if (v63 == v122)
            {
              break;
            }

            if (v63 == v111)
            {
              (*v127)(v28, a1);
              v65 = type metadata accessor for PurchaseType();
              v66 = v28;
              v67 = *(v65 - 8);
              v68 = (*(v67 + 88))(v66, v65);
              if (v68 == v107)
              {
                goto LABEL_50;
              }

              v62 = v105;
              (*(v67 + 8))(v105, v65);
              v28 = v62;
              v19 = v128;
              v34 = v104;
              a1 = v119;
            }

            else
            {
              if (v63 == v110 || v63 == v103)
              {
                (*v117)(v28, a1);
LABEL_50:
                sub_1000476A0(v34, v108, &qword_100975D08, &qword_1007BA9A8);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v135[0] = v13;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_100144410(0, *(v13 + 16) + 1, 1);
                  v13 = v135[0];
                }

                a1 = v119;
                v71 = *(v13 + 16);
                v70 = *(v13 + 24);
                if (v71 >= v70 >> 1)
                {
                  sub_100144410((v70 > 1), v71 + 1, 1);
                  a1 = v119;
                  v13 = v135[0];
                }

                *(v13 + 16) = v71 + 1;
                sub_1000476A0(v108, v13 + ObjectType + v71 * v29, &qword_100975D08, &qword_1007BA9A8);
                v28 = v105;
                v34 = v104;
                v19 = v128;
                goto LABEL_35;
              }

              if (v63 == v124 || v63 == v100 || v63 == v99)
              {
                (*v127)(v28, a1);
                (*v112)(v28, v118);
                goto LABEL_34;
              }

              if (v63 == v98)
              {
                (*v127)(v28, a1);

                v64 = type metadata accessor for OpenableDestination();
                goto LABEL_39;
              }

              if (v63 == v97)
              {
                goto LABEL_50;
              }

              a1 = v119;
              v28 = v105;
              if (v63 != v96)
              {
                if (v63 == v95)
                {
                  goto LABEL_50;
                }

                v28 = v105;
                a1 = v119;
                (*v117)(v105, v119);
              }
            }

LABEL_34:
            sub_10002B894(v34, &qword_100975D08, &qword_1007BA9A8);
LABEL_35:
            ++v16;
            v32 += v29;
            if (v132 == v16)
            {
              goto LABEL_62;
            }
          }

          (*v127)(v28, a1);
          v64 = type metadata accessor for InstallationType();
LABEL_39:
          (*(*(v64 - 8) + 8))(v28, v64);
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
LABEL_62:

      type metadata accessor for AdHeaderProvider();
      a1 = v102;
      BaseObjectGraph.optional<A>(_:)();
      v130 = v135[0];
      v132 = *(v13 + 16);
      if (!v132)
      {
        v76 = _swiftEmptyArrayStorage;
        v131 = _swiftEmptyArrayStorage;
LABEL_85:

        if (v76[2])
        {
          sub_10002849C(&qword_100970D48, &qword_1007B1FC8);
          v86 = static _DictionaryStorage.allocate(capacity:)();
        }

        else
        {
          v86 = _swiftEmptyDictionarySingleton;
        }

        v135[0] = v86;

        sub_1002A41C0(v87, 1, v135);

        v88 = v135[0];
        sub_10002849C(&qword_1009764A0, &unk_1007B6230);
        v89 = Promise.__allocating_init()();
        type metadata accessor for Commerce();
        v90 = v102;
        inject<A, B>(_:from:)();
        dispatch thunk of Commerce.purchase(with:)();

        v91 = swift_allocObject();
        *(v91 + 16) = v88;
        *(v91 + 24) = v90;
        v92 = sub_1000076C0();

        v93 = static OS_dispatch_queue.main.getter();
        v135[3] = v92;
        v135[4] = &protocol witness table for OS_dispatch_queue;
        v135[0] = v93;
        Promise.then(perform:orCatchError:on:)();

        swift_unknownObjectRelease();

        sub_100007000(v135);
        return v89;
      }

      v19 = 0;
      v34 = (v109 + 48);
      v32 = v109 + 32;
      v131 = _swiftEmptyArrayStorage;
      while (v19 < *(v13 + 16))
      {
        v29 = (*(v133 + 80) + 32) & ~*(v133 + 80);
        v16 = *(v133 + 72);
        v28 = *(v13 + v29 + v16 * v19);
        if (v130)
        {
          sub_10002849C(&qword_10097DA00, &unk_1007C4FA0);
          Box.read<A>(with:)();
        }

        swift_unknownObjectRetain();

        v31 = v121;
        PurchaseIntent.init(from:stateMachine:additionalHeaders:presentingSceneIdentifier:)();
        a1 = v129;
        if ((*v34)(v31, 1, v129) == 1)
        {
          sub_10002B894(v31, &qword_10097D9F8, &unk_1007C4F90);
        }

        else
        {
          v28 = *v32;
          v72 = v106;
          (*v32)(v106, v31, a1);
          (v28)(v120, v72, a1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_100034C04(0, v131[2] + 1, 1, v131);
          }

          v74 = v131[2];
          v73 = v131[3];
          a1 = (v74 + 1);
          if (v74 >= v73 >> 1)
          {
            v131 = sub_100034C04((v73 > 1), v74 + 1, 1, v131);
          }

          v75 = v131;
          v131[2] = a1;
          (v28)(v75 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v74, v120, v129);
        }

        if (v132 == ++v19)
        {
          v32 = 0;
          v29 += v13;
          v76 = _swiftEmptyArrayStorage;
          v28 = &qword_10096FE48;
          v34 = &qword_1007B14E0;
          while (v32 < *(v13 + 16))
          {
            a1 = *v29;
            v77 = OfferAction.buyCompletedAction.getter();
            if (v77)
            {
              v78 = v77;
              v134 = v16;
              v79 = v13;
              v31 = *(v116 + 48);
              v80 = v34;
              v81 = v28;
              v82 = v114;
              OfferAction.adamId.getter();
              *&v82[v31] = v78;
              v83 = v82;
              v28 = v81;
              v34 = v80;
              v84 = v113;
              sub_1000476A0(v83, v113, v28, v80);
              sub_1000476A0(v84, v125, v28, v80);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v76 = sub_100034BE0(0, v76[2] + 1, 1, v76);
              }

              v19 = v76[2];
              v85 = v76[3];
              a1 = v19 + 1;
              v13 = v79;
              if (v19 >= v85 >> 1)
              {
                v76 = sub_100034BE0((v85 > 1), (v19 + 1), 1, v76);
              }

              v16 = v134;
              v76[2] = a1;
              sub_1000476A0(v125, v76 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v19, v28, v34);
            }

            ++v32;
            v29 += v16;
            if (v132 == v32)
            {
              goto LABEL_85;
            }
          }

          goto LABEL_92;
        }
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    v37 = _CocoaArrayWrapper.endIndex.getter();
    v36 = v130;
  }

  __break(1u);
LABEL_96:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1002A3650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v90 = a1;
  v4 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v4 - 8);
  v88 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v83 - v7;
  __chkstk_darwin(v9);
  v11 = &v83 - v10;
  v12 = type metadata accessor for AdamId();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v99 = &v83 - v17;
  v18 = sub_10002849C(&qword_10097DA08, &qword_1007C4FB0);
  __chkstk_darwin(v18 - 8);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = *(a2 + 64);
  v91 = a2 + 64;
  v24 = 1 << *(a2 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v23;
  v85 = (v24 + 63) >> 6;
  v86 = a2;
  v98 = v13 + 16;
  v95 = (v13 + 32);
  v93 = v13;
  v100 = (v13 + 8);
  v27 = &v83 - v22;

  v28 = 0;
  v87 = v8;
  v96 = v11;
  v101 = v12;
  v102 = v15;
  v94 = v20;
  v89 = v27;
  while (1)
  {
    if (!v26)
    {
      if (v85 <= v28 + 1)
      {
        v30 = v28 + 1;
      }

      else
      {
        v30 = v85;
      }

      v31 = v30 - 1;
      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v29 >= v85)
        {
          v55 = sub_10002849C(&qword_10097DA10, qword_1007C4FB8);
          (*(*(v55 - 8) + 56))(v20, 1, 1, v55);
          v26 = 0;
          v28 = v31;
          goto LABEL_18;
        }

        v26 = *(v91 + 8 * v29);
        ++v28;
        if (v26)
        {
          v28 = v29;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v29 = v28;
LABEL_17:
    v32 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v86;
    v35 = v93;
    v36 = v99;
    v37 = v101;
    (*(v93 + 16))(v99, *(v86 + 48) + *(v93 + 72) * v33, v101);
    v38 = *(*(v34 + 56) + 8 * v33);
    v39 = sub_10002849C(&qword_10097DA10, qword_1007C4FB8);
    v40 = *(v39 + 48);
    v41 = *(v35 + 32);
    v12 = v37;
    v20 = v94;
    v41(v94, v36, v12);
    *&v20[v40] = v38;
    (*(*(v39 - 8) + 56))(v20, 0, 1, v39);

    v15 = v102;
    v11 = v96;
LABEL_18:
    v42 = v89;
    sub_1000476A0(v20, v89, &qword_10097DA08, &qword_1007C4FB0);
    v43 = sub_10002849C(&qword_10097DA10, qword_1007C4FB8);
    if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
    {
      break;
    }

    v44 = *(v42 + *(v43 + 48));
    (*v95)(v15, v42, v12);
    v45 = BulkPurchaseResult.purchasedApps.getter();
    if (*(v45 + 16))
    {
      v92 = v44;
      sub_1002A471C(&qword_100970CD8, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
      v46 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v47 = -1 << *(v45 + 32);
      v48 = v46 & ~v47;
      v97 = (v45 + 56);
      if ((*(v45 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
      {
        v49 = ~v47;
        v50 = *(v93 + 72);
        v51 = *(v93 + 16);
        while (1)
        {
          v52 = v99;
          v53 = v101;
          v51(v99, *(v45 + 48) + v50 * v48, v101);
          sub_1002A471C(&qword_100972728, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
          v54 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v100)(v52, v53);
          if (v54)
          {
            break;
          }

          v48 = (v48 + 1) & v49;
          if (((*&v97[(v48 >> 3) & 0xFFFFFFFFFFFFFF8] >> v48) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        sub_1005D0214(v92, 1, v84);

        v11 = v96;
        v12 = v101;
        v15 = v102;
        v20 = v94;
      }

      else
      {
LABEL_5:

        v11 = v96;
        v12 = v101;
        v15 = v102;
        v20 = v94;
      }
    }

    else
    {
    }

    (*v100)(v15, v12);
  }

  type metadata accessor for InAppMessagesManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v102 = v103;
  v56 = BulkPurchaseResult.numberOfPurchasedArcadeGames.getter();
  if (v56 < 0)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v57 = v56;
  if (v56)
  {
    v58 = objc_opt_self();
    v100 = "tArcadeGameInstallDSID";
    v101 = "Provider with error";
    v99 = "timeSinceLastArcadeGameInstall";
    v97 = v58;
    v98 = 0xD000000000000014;
    v59 = &qword_1007BB7C0;
    do
    {
      v61 = v102;
      v62 = *(v102 + 2);
      v63 = objc_allocWithZone(IAMCountableEvent);
      v64 = String._bridgeToObjectiveC()();
      v65 = [v63 initWithName:v64];

      [v62 receiveEvent:v65];
      v66 = [*(*(v61 + 3) + OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
      v67 = [v66 ams_DSID];

      v68 = v59;
      v69 = v97;
      v70 = [v97 standardUserDefaults];
      v71 = v67;
      v72 = String._bridgeToObjectiveC()();
      v73 = v87;
      [v70 setObject:v71 forKey:v72];

      Date.init()();
      v74 = type metadata accessor for Date();
      v75 = v11;
      v76 = *(v74 - 8);
      (*(v76 + 56))(v75, 0, 1, v74);
      v77 = v69;
      v59 = v68;
      v78 = [v77 standardUserDefaults];
      sub_100031660(v75, v73, &qword_100979710, v68);
      v79 = v88;
      sub_100031660(v73, v88, &qword_100979710, v68);
      v80 = (*(v76 + 48))(v79, 1, v74);
      isa = 0;
      if (v80 != 1)
      {
        v82 = v88;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v73 = v87;
        (*(v76 + 8))(v82, v74);
      }

      v60 = String._bridgeToObjectiveC()();
      [v78 setObject:isa forKey:v60];

      swift_unknownObjectRelease();
      sub_10002B894(v73, &qword_100979710, v59);
      v11 = v96;
      sub_10002B894(v96, &qword_100979710, v59);
      --v57;
    }

    while (v57);
  }
}

double sub_1002A3FEC(uint64_t a1)
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_1000056E0(v5);
  (*(*(v4 - 8) + 16))(v2);
  static LogMessage.sensitive(_:)();
  sub_10002B894(v5, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();

  return result;
}

void sub_1002A41C0(unint64_t a1, char a2, unint64_t *a3)
{
  v7 = type metadata accessor for AdamId();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_10096FE48, &qword_1007B14E0);
  __chkstk_darwin(v11);
  v15 = v55 - v14;
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_22;
  }

  v55[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v59 = *(v13 + 72);
  v61 = a1;
  v55[0] = v17;
  sub_100031660(a1 + v17, v55 - v14, &qword_10096FE48, &qword_1007B14E0);
  v56 = v8;
  v62 = *(v8 + 32);
  v63 = v7;
  v62(v10, v15, v7);
  v58 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_1003D7438(v10);
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
    sub_10004F338(v25, a2 & 1);
    v20 = sub_1003D7438(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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

  v31 = v20;
  sub_100054E14();
  v20 = v31;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v66 = v28;
    swift_errorRetain();
    sub_10002849C(&qword_10098A690, qword_1007B39A0);
    v29 = swift_dynamicCast();
    v30 = v63;
    if ((v29 & 1) == 0)
    {

      (*(v56 + 8))(v10, v30);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v33 = v32[6];
  v57 = *(v56 + 72);
  v34 = v20;
  v62((v33 + v57 * v20), v10, v63);
  *(v32[7] + 8 * v34) = v18;
  v35 = v32[2];
  v24 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (!v24)
  {
    v32[2] = v36;
    v37 = v61;
    if (v60 == 1)
    {
LABEL_22:

      return;
    }

    v38 = v61 + v59 + v55[0];
    v39 = 1;
    while (v39 < *(v37 + 16))
    {
      sub_100031660(v38, v15, &qword_10096FE48, &qword_1007B14E0);
      v62(v10, v15, v63);
      v40 = *&v15[v58];
      v41 = *a3;
      v42 = sub_1003D7438(v10);
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
        sub_10004F338(v46, 1);
        v42 = sub_1003D7438(v10);
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
      v62((v49[6] + v57 * v42), v10, v63);
      *(v49[7] + 8 * v50) = v40;
      v51 = v49[2];
      v24 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v39;
      v49[2] = v52;
      v38 += v59;
      v37 = v61;
      if (v60 == v39)
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
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v53._object = 0x800000010080B8A0;
  v53._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v53);
  _print_unlocked<A, B>(_:_:)();
  v54._countAndFlagsBits = 39;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002A471C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002A4764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Artwork.Crop();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18[1] = a2;

    Artwork.crop.getter();
    v13 = (*(a4 + 32))(v12, a3, a4);
    (*(v10 + 8))(v12, v9);
    (*(a4 + 24))(a3, a4);
    v18[0] = v13;
    Artwork.config(_:mode:prefersLayeredImage:)();
    v14 = *(a4 + 16);
    v15 = v14(a3, a4);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v15 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    v16 = v14(a3, a4);
    [v16 setContentMode:v18[0]];

    v17 = v14(a3, a4);
    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_1002A4A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = v6(a3, a4);
  ArtworkView.isImageHidden.setter();

  v8 = v6(a3, a4);
  type metadata accessor for ArtworkView();
  sub_10009A098();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void *sub_1002A4AF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100143F04(0, v1, 0);
    v4 = a1 + 32;
    v2 = _swiftEmptyArrayStorage;
    do
    {
      sub_10002C0AC(v4, v16);
      sub_10002849C(&unk_10097E950, &qword_1007B1360);
      sub_10002849C(&unk_10097E960, &unk_1007B1330);
      swift_dynamicCast();
      v20 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100143F04((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = sub_100047650(v17, v18);
      v10 = __chkstk_darwin(v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12, v10);
      sub_1000B3484(v6, v12, &v20, v7, v8);
      sub_100007000(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1002A4CCC(uint64_t a1)
{
  v2 = type metadata accessor for VerticalSpaceMeasurable();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_100143F64(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_100143F64((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = &protocol witness table for VerticalSpaceMeasurable;
      v14 = sub_1000056E0(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      v21[2] = v13 + 1;
      sub_100005A38(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

char *sub_1002A4E98(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_100143FA4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100143FA4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100056164(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100143FA4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100056164(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1002A5064(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100143FA4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {

      sub_10002849C(&qword_10096FCA0, &unk_1007C5080);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100143FA4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100056164(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1002A5208(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void), uint64_t a4, void (*a5)(void *, void *))
{
  if (a1 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v26 = _swiftEmptyArrayStorage;
  result = (a2)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v22 = a2;
    v11 = v26;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v26 = v11;
        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          v22(v15 > 1, v16 + 1, 1);
          v11 = v26;
        }

        ++v13;
        v24 = a3(0);
        v25 = a4;
        v23[0] = v14;
        v11[2] = v16 + 1;
        a5(v23, &v11[5 * v16 + 4]);
      }

      while (v10 != v13);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v18 = *v17;
        v26 = v11;
        v19 = v11[2];
        v20 = v11[3];
        v21 = v18;
        if (v19 >= v20 >> 1)
        {
          v22(v20 > 1, v19 + 1, 1);
          v11 = v26;
        }

        v24 = a3(0);
        v25 = a4;
        v23[0] = v21;
        v11[2] = v19 + 1;
        a5(v23, &v11[5 * v19 + 4]);
        ++v17;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

char *sub_1002A548C(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_100143FA4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100005744(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          sub_100143FA4((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        v7[2] = v11 + 1;
        sub_100056164(v16, &v7[4 * v11 + 4]);
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_100005744(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          sub_100143FA4((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        v7[2] = v15 + 1;
        sub_100056164(v16, &v7[4 * v15 + 4]);
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1002A5678(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_100143F04(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_100143F04((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for LayoutViewPlaceholder();
        v15 = &protocol witness table for LayoutViewPlaceholder;
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_100005A38(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_100143F04((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for LayoutViewPlaceholder();
        v15 = &protocol witness table for LayoutViewPlaceholder;
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_100005A38(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1002A5878(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001443AC(0, v1, 0);
    v3 = a1 + 40;
    do
    {

      sub_10002849C(&unk_100984350, &unk_1007B47A0);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001443AC((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1002A5990(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_100143F04(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_100143F04((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v16 = &protocol witness table for UIView;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_100005A38(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_100143F04((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v16 = &protocol witness table for UIView;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_100005A38(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1002A5BCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_100144450(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_100144450((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_100005744(0, &qword_100982AC0, UITabBarItem_ptr);
        v16 = sub_1002A6AF0();
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_100005A38(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = v3[2];
        v12 = v3[3];
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_100144450((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = sub_100005744(0, &qword_100982AC0, UITabBarItem_ptr);
        v16 = sub_1002A6AF0();
        *&v14 = v13;
        v3[2] = v11 + 1;
        sub_100005A38(&v14, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1002A5DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_100144490(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      sub_10002849C(&qword_10096FC88, &qword_1007B12C8);
      sub_10002849C(&qword_10096FE00, &unk_1007C5090);
      swift_dynamicCast();
      v10 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_100144490((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      v2[2] = v7 + 1;
      sub_100005A38(&v9, &v2[5 * v7 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1002A5F94(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v24 = _swiftEmptyArrayStorage;
  result = sub_1001442CC(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = v24;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v24 = v10;
        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          sub_1001442CC((v14 > 1), v15 + 1, 1);
          v10 = v24;
        }

        ++v12;
        v22 = a2(0);
        v23 = sub_1002A6AA8(a3, a4, a5);
        *&v21 = v13;
        v10[2] = v15 + 1;
        sub_100005A38(&v21, &v10[5 * v15 + 4]);
      }

      while (v9 != v12);
    }

    else
    {
      v16 = (a1 + 32);
      do
      {
        v17 = *v16;
        v24 = v10;
        v19 = v10[2];
        v18 = v10[3];

        if (v19 >= v18 >> 1)
        {
          sub_1001442CC((v18 > 1), v19 + 1, 1);
          v10 = v24;
        }

        v22 = a2(0);
        v23 = sub_1002A6AA8(a3, a4, a5);
        *&v21 = v17;
        v10[2] = v19 + 1;
        sub_100005A38(&v21, &v10[5 * v19 + 4]);
        ++v16;
        --v9;
      }

      while (v9);
    }

    return v10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1002A6190(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    sub_100005744(0, a2, a3);

    v7 = _bridgeCocoaArray<A>(_:)();

    return v7;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100005744(0, a2, a3);
    return a1;
  }
}

void *sub_1002A62D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001445B8(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_1001445B8((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[5 * v5];
      v6[8] = v10;
      *(v6 + 2) = v8;
      *(v6 + 3) = v9;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1002A63D8(uint64_t a1)
{
  v16 = sub_10002849C(&qword_10096FE60, qword_1007C50A0);
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - v3;
  v5 = sub_10002849C(&qword_100975D18, &qword_1007BA9B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1001445F8(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_1002A6B58(v11, v4);
      swift_dynamicCast();
      v17 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_1001445F8((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      v10[2] = v14 + 1;
      sub_1002A6BC8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_1002A6638(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100144658(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          v9 = v5;
          sub_100144658((v6 > 1), v7 + 1, 1);
          v5 = v9;
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v7 + 1;
        v8 = &_swiftEmptyArrayStorage[2 * v7];
        v8[4] = v5;
        v8[5] = &protocol witness table for MSOPersonalizationDataSource;
      }

      while (v2 != v4);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = _swiftEmptyArrayStorage[2];
      v12 = 2 * v11;
      do
      {
        v13 = *v10;
        v14 = _swiftEmptyArrayStorage[3];

        if (v11 >= v14 >> 1)
        {
          sub_100144658((v14 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v15 = &_swiftEmptyArrayStorage[v12];
        v15[4] = v13;
        v15[5] = &protocol witness table for MSOPersonalizationDataSource;
        v12 += 2;
        ++v10;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void *UITabBarController.tabItems.getter()
{
  v1 = [v0 tabBar];
  v2 = [v1 items];

  if (v2)
  {
    sub_100005744(0, &qword_100982AC0, UITabBarItem_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = sub_1002A5BCC(v3);
  }

  return v2;
}

void *sub_1002A68B4()
{
  v1 = [*v0 tabBar];
  v2 = [v1 items];

  if (v2)
  {
    sub_100005744(0, &qword_100982AC0, UITabBarItem_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = sub_1002A5BCC(v3);
  }

  return v2;
}

uint64_t UITabBarItem.tab.getter()
{
  [v0 tag];

  return NavigationTab.init(intValue:)();
}

uint64_t UITabBarItem.badge.getter()
{
  v1 = [v0 badgeValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002A69FC()
{
  [*v0 tag];

  return NavigationTab.init(intValue:)();
}

uint64_t sub_1002A6A40()
{
  v1 = [*v0 badgeValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002A6AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002A6AF0()
{
  result = qword_10097DA28;
  if (!qword_10097DA28)
  {
    sub_100005744(255, &qword_100982AC0, UITabBarItem_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DA28);
  }

  return result;
}

uint64_t sub_1002A6B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10096FE60, qword_1007C50A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A6BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975D18, &qword_1007BA9B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1002A6C68(uint64_t (*a1)(void))
{
  v3 = [v1 subviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
LABEL_19:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  v6 = 0;
  do
  {
    v7 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      a1(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v7;
      if (v6 == v5)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v6 != v5);
LABEL_20:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1002A6E28()
{
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2430);
  qword_1009CEC60 = v0;
  unk_1009CEC68 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_1009CEC48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_1002A6EE4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_bundleView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for BundleView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for BundleSearchResultContentView();
  v11 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_lockupView]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_bundleView]];

  return v15;
}

id sub_1002A711C(uint64_t a1)
{
  v20.receiver = v1;
  v20.super_class = type metadata accessor for BundleSearchResultContentView();
  objc_msgSendSuper2(&v20, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_lockupView];
  LayoutMarginsAware<>.layoutFrame.getter();
  v5 = sub_1000AB0CC(v3, v4);
  v7 = v6;
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v21);
  LayoutMarginsAware<>.layoutFrame.getter();
  MinY = CGRectGetMinY(v22);
  [v2 setFrame:{MinX, MinY, v5, v7}];
  v10 = MetadataRibbonView.hasContent.getter();
  v12 = 0.0;
  if ((v10 & 1) == 0 && (sub_100045A48(v10, v11) & 1) == 0)
  {
    if (qword_10096D550 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009CEC48, qword_1009CEC60);
    v13 = [v1 traitCollection];
    AnyDimension.value(with:)();
    v12 = v14;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  Height = CGRectGetHeight(v23);
  v24.origin.x = MinX;
  v24.origin.y = MinY;
  v24.size.width = v5;
  v24.size.height = v7;
  v16 = Height - (v12 + CGRectGetHeight(v24));
  LayoutMarginsAware<>.layoutFrame.getter();
  v17 = CGRectGetMinX(v25);
  v26.origin.x = MinX;
  v26.origin.y = MinY;
  v26.size.width = v5;
  v26.size.height = v7;
  v18 = v12 + CGRectGetMaxY(v26);
  LayoutMarginsAware<>.layoutFrame.getter();
  return [*&v1[OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_bundleView] setFrame:{v17, v18, CGRectGetWidth(v27), v16}];
}

double sub_1002A7388(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  type metadata accessor for BundleSearchResult();
  sub_1002A9030(&qword_10097C378, 255, &type metadata accessor for BundleSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v14[1])
  {
    v10 = BundleSearchResult.lockup.getter();
    v11 = type metadata accessor for ItemLayoutContext();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v8, a1, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    sub_100279F24(v10, v8, a2);

    sub_10002B894(v8, &unk_1009731E0, &unk_1007B0B60);
    BundleSearchResult.lockup.getter();
    v13 = Lockup.children.getter();

    if (!v13)
    {
      v13 = _swiftEmptyArrayStorage;
    }

    sub_100209EF0(v13);

    [v3 setNeedsLayout];
  }

  return result;
}

id sub_1002A75AC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BundleSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002A7650()
{
  sub_1000ACF48();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_bundleView);
  sub_100209ADC();
  sub_100209D0C();
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView);
  v3 = v2;
  v4 = v2;
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v6, v3);
}

uint64_t sub_1002A7738(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_1002A9030(&qword_10097DA70, a2, type metadata accessor for BundleSearchResultContentView, &unk_1007C511C);
  result = sub_1002A9030(&qword_10097DA78, v3, type metadata accessor for BundleSearchResultContentView, &unk_1007C514C);
  *(a1 + 32) = result;
  return result;
}

void sub_1002A77BC(uint64_t a1)
{
  v2 = type metadata accessor for Artwork.Style();
  v121 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v93[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SmallSearchLockupLayout();
  v120 = *(v5 - 8);
  __chkstk_darwin(v5);
  v119 = &v93[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v123 = *(v7 - 8);
  v124 = v7;
  __chkstk_darwin(v7);
  v113 = &v93[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for LabelPlaceholderCompatibility();
  v116 = *(v9 - 8);
  v117 = v9;
  __chkstk_darwin(v9);
  v115 = &v93[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for OfferButtonMetrics();
  v127 = *(v11 - 8);
  v128 = v11;
  __chkstk_darwin(v11);
  v13 = &v93[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v126 = &v93[-v15];
  v133 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v125 = *(v133 - 8);
  __chkstk_darwin(v133);
  v118 = &v93[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v132 = &v93[-v18];
  v19 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v19 - 8);
  v112 = &v93[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v130 = &v93[-v22];
  v23 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v23 - 8);
  v24 = type metadata accessor for PageGrid();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v131 = &v93[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for BundleSearchResult();
  sub_1002A9030(&qword_10097C378, 255, &type metadata accessor for BundleSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  v129 = v170[0];
  if (v170[0])
  {
    v106 = v5;
    ItemLayoutContext.parentShelfLayoutContext.getter();
    if (qword_10096EF00 != -1)
    {
      swift_once();
    }

    PageGrid.init(from:breakpointOverrides:)();
    BundleSearchResult.lockup.getter();
    v27 = Lockup.title.getter();
    v99 = v28;
    v100 = v27;

    BundleSearchResult.lockup.getter();
    v29 = Lockup.subtitle.getter();
    v101 = v30;
    v102 = v29;

    BundleSearchResult.lockup.getter();
    v122 = MixedMediaLockup.metadataRibbonItems.getter();

    (*(v123 + 56))(v130, 1, 1, v124);
    BundleSearchResult.lockup.getter();
    MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v31 = v170[5];
    PageGrid.componentMeasuringSize(spanning:)();
    v33 = v32;
    v35 = v34;
    if (qword_10096CF70 != -1)
    {
      swift_once();
    }

    v36 = v133;
    v37 = sub_1000056A8(v133, qword_1009CDC00);
    v103 = *(v125 + 16);
    v104 = v125 + 16;
    v103(v132, v37, v36);
    v38 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v110 = v2;
    v111 = a1;
    v108 = v24;
    v109 = v4;
    v107 = v25;
    if (v38)
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v39 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v39 = qword_100991028;
    }

    v40 = v128;
    v41 = sub_1000056A8(v128, v39);
    v42 = v127;
    (*(v127 + 16))(v13, v41, v40);
    (*(v42 + 32))(v126, v13, v40);
    v43 = [v31 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v98 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v105 = LayoutViewPlaceholder.init(representing:)();
    v44 = objc_opt_self();
    v96 = v44;
    v45 = [v44 preferredFontForTextStyle:UIFontTextStyleBody];
    v46 = type metadata accessor for Feature();
    v170[3] = v46;
    v47 = sub_1002A9030(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v170[4] = v47;
    v95 = v47;
    v48 = sub_1000056E0(v170);
    v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v97 = *(*(v46 - 8) + 104);
    v94 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v97(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v46);
    isFeatureEnabled(_:)();
    v114 = v31;
    sub_100007000(v170);
    v50 = v115;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v51 = v117;
    v116 = *(v116 + 8);
    (v116)(v50, v117);
    v52 = [v44 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v169[3] = v46;
    v169[4] = v47;
    v53 = sub_1000056E0(v169);
    v54 = v49;
    v55 = v97;
    v97(v53, v54, v46);
    isFeatureEnabled(_:)();
    sub_100007000(v169);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v56 = v116;
    (v116)(v50, v51);
    v57 = [v96 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v168[3] = v46;
    v168[4] = v95;
    v58 = sub_1000056E0(v168);
    v55(v58, v94, v46);
    isFeatureEnabled(_:)();
    sub_100007000(v168);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v56(v50, v51);
    v59 = v122;
    LODWORD(v117) = sub_1000AE138() & (v59 != 0);
    if (v117 == 1)
    {
      v60 = v98;
      v61 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
      v62 = v114;
      v63 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v64 = v112;
      sub_1001EB5B0(v130, v112);
      v66 = v123;
      v65 = v124;
      v67 = *(v123 + 48);
      if (v67(v64, 1, v124) == 1)
      {
        v68 = v113;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        if (v67(v64, 1, v65) != 1)
        {
          sub_10002B894(v64, &unk_1009912C0, &unk_1007B4130);
        }
      }

      else
      {
        v68 = v113;
        (*(v66 + 32))(v113, v64, v65);
      }

      v70 = v63;
      sub_1000AD91C(v59, v68, v70, v33, v35);

      (*(v66 + 8))(v68, v65);
      swift_allocObject();
      v69 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v60 = v98;
      swift_allocObject();
      v69 = LayoutViewPlaceholder.init(representing:)();
    }

    v71 = v69;

    sub_1000AE138();
    swift_allocObject();
    v72 = LayoutViewPlaceholder.init(representing:)();
    v73 = v132;
    v103(v118, v132, v133);
    v167 = &protocol witness table for LayoutViewPlaceholder;
    v166 = v60;
    v165 = v105;
    v164 = 0;
    *&v162[40] = 0u;
    v163 = 0u;
    sub_10002C0AC(v170, v162);
    sub_10002C0AC(v169, &v161);
    v160 = 0;
    v158 = 0u;
    v159 = 0u;
    v157 = 0;
    v155 = 0u;
    v156 = 0u;

    v74 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v154 = &protocol witness table for LayoutViewPlaceholder;
    v153 = v60;
    v152 = v74;
    v151 = 0;
    v149 = 0u;
    v150 = 0u;
    v148 = 0;
    v146 = 0u;
    v147 = 0u;
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
    v142 = 0;
    v141 = 0u;
    *&v140[40] = 0u;
    sub_10002C0AC(v168, v140);
    v138 = v60;
    v139 = &protocol witness table for LayoutViewPlaceholder;
    v136 = &protocol witness table for LayoutViewPlaceholder;
    v137 = v71;
    v135 = v60;
    v134 = v72;
    v75 = v119;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1007B0B70;
    v77 = v114;
    *(v76 + 32) = v114;
    v78 = v77;
    v79 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_1002A9030(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v80 = v106;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v120 + 8))(v75, v80);
    sub_100007000(v168);
    sub_100007000(v169);
    sub_100007000(v170);
    (*(v127 + 8))(v126, v128);
    (*(v125 + 8))(v73, v133);
    sub_10002B894(v130, &unk_1009912C0, &unk_1007B4130);
    v81 = v121;
    v83 = v109;
    v82 = v110;
    (*(v121 + 104))(v109, enum case for Artwork.Style.roundedRect(_:), v110);
    v84 = v131;
    PageGrid.componentMeasuringSize(spanning:)();
    v86 = v85;
    v88 = v87;
    BundleSearchResult.lockup.getter();
    v89 = Lockup.children.getter();

    if (!v89)
    {
      v89 = _swiftEmptyArrayStorage;
    }

    type metadata accessor for BundleView(0);
    v90 = sub_100079F24();
    swift_getObjectType();
    sub_10020BCC0(v83, v89, v90, v86, v88);
    swift_unknownObjectRelease();

    (*(v81 + 8))(v83, v82);
    BundleSearchResult.lockup.getter();
    MixedMediaLockup.searchTagRibbonItems.getter();
    MixedMediaLockup.metadataRibbonItems.getter();
    v91 = sub_1000AE138();

    if (v91)
    {
      (*(v107 + 8))(v84, v108);
    }

    else
    {
      if (qword_10096D550 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_1009CEC48, qword_1009CEC60);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v92 = v170[0];
      AnyDimension.value(with:)();

      (*(v107 + 8))(v131, v108);
    }
  }
}

void sub_1002A8908(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  sub_10002C0AC(a1, v17);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for BundleSearchResult();
  if (swift_dynamicCast())
  {
    BundleSearchResult.lockup.getter();
    v7 = Lockup.icon.getter();

    if (v7)
    {
      v8 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      v16 = *(v2 + OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_lockupView);
      v9 = qword_10096EE80;
      v10 = *(v16 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v11, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v10 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v10 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      v12 = *(v16 + v8);
      type metadata accessor for ArtworkView();
      sub_1002A9030(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v13 = v12;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    BundleSearchResult.lockup.getter();
    v14 = Lockup.children.getter();

    if (v14)
    {
      sub_100208FF4(v14, a2);
    }

    v15 = *(*(v3 + OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_lockupView) + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
    sub_10032A784(a1, a2);
  }
}

void sub_1002A8C2C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_lockupView];
  v3 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v40.value.super.isa = 0;
  v40.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v40, v5);

  v6 = *(v2 + v3);
  type metadata accessor for ArtworkView();
  sub_1002A9030(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v8 = *(v2 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  v9 = *&v8[OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews];
  v10 = *(v9 + 16);
  if (v10)
  {
    v36 = v1;
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v35 = v8;

    v11 = 32;
    do
    {
      v12 = *(v9 + v11);
      if (swift_dynamicCastClass())
      {
        v13 = v12;
        v41.value.super.isa = 0;
        v41.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v41, v14);
        ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
      }

      v11 += 16;
      --v10;
    }

    while (v10);

    v1 = v36;
  }

  v37 = *&v1[OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_bundleView];
  v15 = sub_1002A6C68(type metadata accessor for BundleChildView);
  v16 = v15;
  if (v15 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  if (v17 < 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v18 = 0;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    v21 = OBJC_IVAR____TtC8AppStore15BundleChildView_icon;
    v22 = *&v19[OBJC_IVAR____TtC8AppStore15BundleChildView_icon];
    v42.value.super.isa = 0;
    v42.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v42, v23);

    v24 = *&v20[v21];
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  while (v17 != v18);
LABEL_16:

  v25 = sub_1002A6C68(type metadata accessor for BorderedScreenshotView);
  v26 = v25;
  if (v25 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
    if (v27)
    {
LABEL_18:
      if (v27 >= 1)
      {
        v28 = 0;
        do
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v29 = *(v26 + 8 * v28 + 32);
          }

          v30 = v29;
          ++v28;
          v31 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
          v32 = *&v29[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
          v43.value.super.isa = 0;
          v43.is_nil = 0;
          ArtworkView.setImage(image:animated:)(v43, v33);

          v34 = *&v30[v31];
          ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
        }

        while (v27 != v28);
        goto LABEL_25;
      }

LABEL_29:
      __break(1u);
      return;
    }
  }

  else
  {
    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_18;
    }
  }

LABEL_25:

  v38 = *&v37[OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView];
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1002A9030(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_1002A9078()
{
  type metadata accessor for BundleSearchResult();
  sub_1002A9030(&qword_10097C378, 255, &type metadata accessor for BundleSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (using._rawValue)
  {
    BundleSearchResult.lockup.getter();

    v1 = MixedMediaLockup.metadataRibbonItems.getter();
    if (v1)
    {
      v2 = v1;
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v3 = sub_10032AAE8(v2, v5);

      sub_100394974(v3, v4);
      ArtworkLoader.prefetchArtwork(using:)(_swiftEmptyArrayStorage);
    }
  }

  return result;
}

double sub_1002A91B4(double a1, double a2)
{
  v3 = v2;
  v24 = type metadata accessor for ComponentLayoutOptions();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v25 = 0;
  AnyHashable.init<A>(_:)();
  StatePath.init(component:)();
  v26 = *(v2 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_stateStore);

  sub_10002849C(&unk_100980500, &unk_1007C5220);
  sub_100097060(&qword_10097DB00, &unk_100980500, &unk_1007C5220, &protocol conformance descriptor for TransientStateStore<A>);
  StateLens.init<A>(contentsOf:in:)();
  v13 = *(v2 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v2 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_objectGraph);
  v21 = OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_model;
  sub_10002849C(&qword_10097DB08, &qword_1007C8FC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007B1890;
  static ComponentLayoutOptions.separatorHidden.getter();
  static ComponentLayoutOptions.overflowed.getter();
  v26 = v15;
  sub_1002AA9B0(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  sub_10002849C(&qword_10097DB18, &unk_1007C5230);
  sub_100097060(&qword_10097DB20, &qword_10097DB18, &unk_1007C5230, &protocol conformance descriptor for [A]);
  v16 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = (*(v13 + 72))(v3 + v21, 1, v12, v20, v8, v3, ObjectType, v13, a1, a2);
  (*(v6 + 8))(v8, v16);
  (*(v22 + 8))(v12, v23);
  return v17;
}

id sub_1002A9620()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Shelf.PresentationHints();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComponentLayoutOptions();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v38 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v43 = &v30 - v12;
  v46.receiver = v0;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "viewDidLoad", v11);
  v13 = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_componentView];
  v35 = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_componentView + 8];
  v36 = swift_getObjectType();
  v42 = v13;
  v14 = [v13 backgroundView];
  result = [v0 view];
  v16 = result;
  v40 = v10;
  v41 = v6;
  if (v14)
  {
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v17 = [v14 backgroundColor];
    [v16 setBackgroundColor:v17];

LABEL_6:
    v18 = v7;
    v33 = v4;
    v34 = v3;

    result = [v0 view];
    if (result)
    {
      v19 = result;
      v20 = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_scrollView];
      v32 = v20;
      [result addSubview:v20];

      [v20 setDelegate:v0];
      [v20 setAlwaysBounceVertical:1];
      v44[0] = 0;
      AnyHashable.init<A>(_:)();
      StatePath.init(component:)();
      v45[0] = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_stateStore];

      sub_10002849C(&unk_100980500, &unk_1007C5220);
      sub_100097060(&qword_10097DB00, &unk_100980500, &unk_1007C5220, &protocol conformance descriptor for TransientStateStore<A>);
      WritableStateLens.init<A>(contentsOf:in:)();
      v21 = OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_model;
      v31 = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_objectGraph];
      sub_10002849C(&qword_10097DB08, &qword_1007C8FC0);
      v22 = v39;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1007B1890;
      static ComponentLayoutOptions.separatorHidden.getter();
      static ComponentLayoutOptions.overflowed.getter();
      v45[0] = v23;
      sub_1002AA9B0(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
      sub_10002849C(&qword_10097DB18, &unk_1007C5230);
      sub_100097060(&qword_10097DB20, &qword_10097DB18, &unk_1007C5230, &protocol conformance descriptor for [A]);
      v24 = v37;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v45[0] = _swiftEmptyArrayStorage;
      sub_1002AA9B0(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      sub_10002849C(&qword_10097DB30, qword_1007DB0B0);
      sub_100097060(&qword_10097DB38, &qword_10097DB30, qword_1007DB0B0, &protocol conformance descriptor for [A]);
      v25 = v41;
      v26 = v34;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v27 = v36;
      v28 = v42;
      (*(v35 + 80))(&v1[v21], v43, v31, v24, v25, v1, v36);
      (*(v33 + 8))(v25, v26);
      (*(v22 + 8))(v24, v18);
      sub_10002C0AC(&v1[v21], v45);
      v44[3] = v27;
      v44[0] = v28;
      v29 = v28;
      tryToFetch(artworkFor:into:on:asPartOf:)();
      sub_1002AA9F8(v45);
      sub_100007000(v44);
      [v32 addSubview:v29];
      return (*(v38 + 8))(v43, v40);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    v17 = [v42 backgroundColor];
    [v16 setBackgroundColor:v17];
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_1002A9D60()
{
  v41.receiver = v0;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  [result bounds];
  v14 = v13;
  v16 = v15;

  v17 = sub_1002A91B4(v14, v16);
  v19 = v18;
  [v1 frame];
  Height = CGRectGetHeight(v42);
  v21 = *&v0[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_componentView];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = result;
  [result bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v43.origin.x = v24;
  v43.origin.y = v26;
  v43.size.width = v28;
  v43.size.height = v30;
  MinX = CGRectGetMinX(v43);
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v32 = result;
  if (v19 <= Height)
  {
    v19 = Height;
  }

  [result bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v44.origin.x = v34;
  v44.origin.y = v36;
  v44.size.width = v38;
  v44.size.height = v40;
  [v21 setFrame:{MinX, CGRectGetMinY(v44), v17, v19}];
  [v1 setContentSize:{v17, v19}];
  return [v0 setPreferredContentSize:{v17, v19}];
}

void sub_1002AA078(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  if (a1 && [a1 horizontalSizeClass] == 2)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      [v1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_1002AA19C()
{
  v1 = type metadata accessor for Shelf.PresentationHints();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v24 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ComponentLayoutOptions();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  __chkstk_darwin(v6 - 8);
  v7 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v27 = 0;
  AnyHashable.init<A>(_:)();
  StatePath.init(component:)();
  v28 = *(v0 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_stateStore);

  sub_10002849C(&unk_100980500, &unk_1007C5220);
  sub_100097060(&qword_10097DB00, &unk_100980500, &unk_1007C5220, &protocol conformance descriptor for TransientStateStore<A>);
  WritableStateLens.init<A>(contentsOf:in:)();
  v18 = *(v0 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v16 = *(v0 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_objectGraph);
  v17 = OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_model;
  sub_10002849C(&qword_10097DB08, &qword_1007C8FC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B10D0;
  static ComponentLayoutOptions.separatorHidden.getter();
  v28 = v10;
  sub_1002AA9B0(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  sub_10002849C(&qword_10097DB18, &unk_1007C5230);
  sub_100097060(&qword_10097DB20, &qword_10097DB18, &unk_1007C5230, &protocol conformance descriptor for [A]);
  v11 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = _swiftEmptyArrayStorage;
  sub_1002AA9B0(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  sub_10002849C(&qword_10097DB30, qword_1007DB0B0);
  sub_100097060(&qword_10097DB38, &qword_10097DB30, qword_1007DB0B0, &protocol conformance descriptor for [A]);
  v13 = v24;
  v12 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v18 + 80))(v0 + v17, v9, v16, v5, v13, v0, ObjectType);
  (*(v26 + 8))(v13, v12);
  (*(v19 + 8))(v5, v11);
  return (*(v22 + 8))(v9, v23);
}

id sub_1002AA6B4(uint64_t a1)
{
  v3 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning(0)) init];
  v7 = OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_overflowTransitioning;
  v8 = *&v1[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_overflowTransitioning];
  *&v1[OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_overflowTransitioning] = v6;

  v9 = *&v1[v7];
  if (v9)
  {
    v9[OBJC_IVAR____TtC8AppStore34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
    v10 = type metadata accessor for IndexPath();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v5, a1, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    v12 = OBJC_IVAR____TtC8AppStore34ComponentViewOverflowTransitioning_selectedIndexPath;
    swift_beginAccess();
    v13 = v9;
    sub_1000F4070(v5, &v9[v12]);
    swift_endAccess();

    v14 = *&v1[v7];
  }

  else
  {
    v14 = 0;
  }

  [v1 setTransitioningDelegate:v14];
  return [v1 setModalPresentationStyle:4];
}

void sub_1002AA998()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_overflowTransitioning);
  *(*v0 + OBJC_IVAR____TtC8AppStore35ComponentViewOverflowViewController_overflowTransitioning) = 0;
}

uint64_t sub_1002AA9B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002AA9F8(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10097DBE0, &unk_1007BCA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002AAAC8(void *a1, uint64_t a2, char a3)
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
      v46 = *(v16 + qword_1009CEC88 + 8);
      v19 = *&v4[qword_1009CEC88 + 8];
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

id sub_1002AAF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a4;
  v7 = a2;
  v57 = swift_isaMask & *v4;
  v9 = type metadata accessor for TodayCard.Style();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v13 - 8);
  v15 = &v56 - v14;
  v16 = type metadata accessor for PageGrid();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v59 = a3;
  v18(v15, a3, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v19 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v15, &v5[v19]);
  swift_endAccess();
  sub_1004EAB3C(v7);
  v20 = [v5 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = TodayCard.backgroundColor.getter();
    if (!v22)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v22 = static UIColor.todayCardDefaultBackground.getter();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v58 = v7;
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
  v28 = *(v10 + 8);
  v28(v12, v9);
  [v24 setTextColor:v27];

  v29 = a1;
  v30 = UIAccessibilityTraitButton;
  [v24 setAccessibilityTraits:UIAccessibilityTraitButton];
  v31 = *&v5[qword_1009CEC78];
  v32 = v29;
  TodayCard.title.getter();
  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  v35 = v58;
  [v31 setText:v34];

  TodayCard.style.getter();
  v36 = TodayCard.Style.cardTitleTextColor.getter();
  v28(v12, v9);
  [v31 setTextColor:v36];

  [v31 setAccessibilityTraits:v30];
  v37 = [v5 backgroundView];
  v38 = v59;
  if (v37)
  {
    v39 = v37;
    v40 = TodayCard.backgroundColor.getter();
    if (!v40)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v40 = static UIColor.todayCardDefaultBackground.getter();
    }

    v41 = v40;
    [v39 setBackgroundColor:v40];
  }

  v42 = [v5 contentView];
  v43 = [v5 traitCollection];
  if (v35 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v43 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v42 setLayoutMargins:{v45, v47, v49, v51}];
  v54 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(v57 + 640), v52, v53);
  return [v5 setNeedsLayout];
}

void sub_1002AB474(__n128 a1)
{
  sub_1004EE4C4();
  if (*(v1 + qword_1009CEC88))
  {
    v2 = *(v1 + qword_1009CEC88 + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded);
    v5 = *(v2 + 32);
    swift_unknownObjectRetain();
    v5(v4, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (*(v1 + qword_1009CEC88))
  {
    if (*(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 20.0;
    }

    v7 = *(v1 + qword_1009CEC88 + 8);
    v8 = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, v7);
    swift_unknownObjectRelease();
    [v10 _setContinuousCornerRadius:v6];
  }
}

double sub_1002AB5E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v9[4] = sub_1002AD904();
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

double sub_1002AB728(uint64_t a1)
{
  if (*(v1 + qword_1009CEC88))
  {
    v3 = *(v1 + qword_1009CEC88 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v5(a1, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002AB7CC()
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

uint64_t sub_1002ABAEC(uint64_t result, char a2)
{
  v3 = v2 + qword_1009CEC80;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

double sub_1002ABB08(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1009CEC88);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

double sub_1002ABB34()
{
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) == 1)
  {
    v6 = [v0 traitCollection];
    v7 = sub_100467DF8(v6, v0);
  }

  else
  {
    if (qword_10096E4B0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for StaticDimension();
    sub_1000056A8(v8, qword_1009D1D08);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v7 = v9;
    (*(v2 + 8))(v5, v1);
  }

  return v7;
}

double sub_1002ABCBC()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E4C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for StaticDimension();
  sub_1000056A8(v4, qword_1009D1D38);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

void sub_1002ABDFC(CGFloat *a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  if (*&v1[qword_1009CEC88])
  {
    v7 = *&v1[qword_1009CEC88 + 8];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v50 = v9(ObjectType, v7);
    v10 = v9(ObjectType, v7);
    v11 = [v10 isHidden];

    if (v11)
    {
      swift_unknownObjectRelease();
      v12 = v50;
    }

    else
    {
      if (*(v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) == 1)
      {
        if ((*(v7 + 72))(ObjectType, v7))
        {
          sub_1004EC024();
          v14 = v13;
          v16 = v15;
        }

        else
        {
          v29 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          sub_1000A833C(v2 + v29, v6);
          v30 = [v2 traitCollection];
          sub_1004EDF34(v6, v30);
          v14 = v31;
          v16 = v32;

          sub_10002B894(v6, &qword_10097DBD0, &qword_1007BC750);
        }

        v33 = [v2 traitCollection];
        v34 = UITraitCollection.prefersRightToLeftLayouts.getter();

        [v50 layoutMargins];
        [v50 setLayoutMargins:?];
        [v50 layoutMargins];
        if ((v34 & 1) == 0)
        {
          v14 = v16;
        }
      }

      else
      {
        v17 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_1000A833C(v2 + v17, v6);
        LOBYTE(v17) = *(v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
        v18 = [v2 traitCollection];
        sub_1004EE9F4(v6, v17, v18);
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v14 = v25;

        sub_10002B894(v6, &qword_10097DBD0, &qword_1007BC750);
        v26 = v24;
        v27 = v22;
        v28 = v20;
      }

      [v50 setLayoutMargins:{v28, v27, v26, v14}];
      v35 = [v2 contentView];
      [v35 bounds];
      v37 = v36;
      v39 = v38;

      [v50 sizeThatFits:{v37, v39}];
      v41 = v40;
      v42 = *a1;
      v43 = a1[1];
      v44 = a1[2];
      v45 = a1[3];
      v52.origin.x = *a1;
      v52.origin.y = v43;
      v52.size.width = v44;
      v52.size.height = v45;
      MinX = CGRectGetMinX(v52);
      v53.origin.x = v42;
      v53.origin.y = v43;
      v53.size.width = v44;
      v53.size.height = v45;
      v47 = CGRectGetMaxY(v53) - v41;
      v54.origin.x = v42;
      v54.origin.y = v43;
      v54.size.width = v44;
      v54.size.height = v45;
      Width = CGRectGetWidth(v54);
      [v50 setFrame:{MinX, v47, Width, v41}];
      v55.origin.x = MinX;
      v55.origin.y = v47;
      v55.size.width = Width;
      v55.size.height = v41;
      Height = CGRectGetHeight(v55);
      swift_unknownObjectRelease();

      a1[3] = v45 - Height;
    }
  }
}

double sub_1002AC268(CGFloat *a1)
{
  v3 = sub_1002ABB34();
  v36 = sub_1002ABCBC();
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    sub_1004EC024();
    v9 = v8;
  }

  else
  {
    v10 = [v1 contentView];
    [v10 layoutMargins];
    v9 = v11;
  }

  v12 = v7 - v9;
  v13 = *&v1[qword_1009CEC70];
  [v13 measurementsWithFitting:v1 in:{v12, v6}];
  v15 = v14;
  v17 = v16;
  v34 = v18;
  v37.origin.x = v5;
  v37.origin.y = v4;
  v37.size.width = v12;
  v37.size.height = v6;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v5;
  v38.origin.y = v4;
  v38.size.width = v12;
  v38.size.height = v6;
  v20 = CGRectGetMinY(v38) + v3 - v17;
  v39.origin.x = v5;
  v39.origin.y = v4;
  v39.size.width = v12;
  v39.size.height = v6;
  Width = CGRectGetWidth(v39);
  [v1 bounds];
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v13 setFrame:?];
  v40.origin.x = MinX;
  v40.origin.y = v20;
  v40.size.width = Width;
  v40.size.height = v15;
  v22 = CGRectGetMaxY(v40) - v34;
  v23 = *&v1[qword_1009CEC78];
  v41.origin.x = v5;
  v41.origin.y = v4;
  v41.size.width = v12;
  v41.size.height = v6;
  v24 = CGRectGetWidth(v41);
  v42.origin.x = v5;
  v42.origin.y = v4;
  v42.size.width = v12;
  v42.size.height = v6;
  [v23 measurementsWithFitting:v1 in:{v24, CGRectGetHeight(v42) - v22}];
  v26 = v25;
  v28 = v27;
  v35 = v29;
  v43.origin.x = v5;
  v43.origin.y = v4;
  v43.size.width = v12;
  v43.size.height = v6;
  v30 = CGRectGetMinX(v43);
  v44.origin.x = v5;
  v44.origin.y = v4;
  v44.size.width = v12;
  v44.size.height = v6;
  v31 = CGRectGetWidth(v44);
  [v1 bounds];
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v23 setFrame:?];
  v45.origin.x = v30;
  v45.origin.y = v22 + v36 - v28;
  v45.size.width = v31;
  v45.size.height = v26;
  v32 = CGRectGetMaxY(v45) - v35;
  a1[1] = v4 + v32;
  result = v6 - v32;
  a1[3] = result;
  return result;
}

void sub_1002AC4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = &selRef__setDefaultAttributes_;
  v9 = &StringUserDefaultsDebugSetting;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v12 = *(a4 + 16);
    v13 = v12(ObjectType, a4);
    [v13 removeFromSuperview];

    v14 = swift_getObjectType();
    v15 = v12(v14, a4);
    [v15 _setContinuousCornerRadius:0.0];

    v9 = &StringUserDefaultsDebugSetting;
    v16 = v12(v14, a4);
    v17 = [v16 layer];

    [v17 setMaskedCorners:15];
    v8 = &selRef__setDefaultAttributes_;
  }

  if (a1)
  {
    v18 = v8;
    v19 = swift_getObjectType();
    v20 = *(a2 + 16);
    swift_unknownObjectRetain();
    v21 = v20(v19, a2);
    v22 = v21;
    v23 = 20.0;
    if (v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v23 = 0.0;
    }

    [v21 v18[358]];
    v24 = [v22 v9[43].base_prots];
    [v24 setMaskedCorners:12];

    v25 = [v5 contentView];
    [v25 addSubview:v22];
    swift_unknownObjectRelease();
  }
}

char *sub_1002AC718(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v49 = swift_isaMask & *v4;
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  v50 = v10;
  v51 = v11;
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DirectionalTextAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v18 - 8);
  v20 = &v42 - v19;
  v21 = &v5[qword_1009CEC80];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[qword_1009CEC88];
  *v22 = 0;
  *(v22 + 1) = 0;
  swift_weakInit();
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D1490);
  v25 = *(v23 - 8);
  v48 = *(v25 + 16);
  v48(v20, v24, v23);
  v47 = *(v25 + 56);
  v47(v20, 0, 1, v23);
  v26 = *(v15 + 104);
  v42 = v15 + 104;
  v46 = enum case for DirectionalTextAlignment.none(_:);
  v45 = v26;
  v26(v17);
  v44 = type metadata accessor for DynamicTypeLabel();
  v27 = objc_allocWithZone(v44);
  v43 = v14;
  v28 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[qword_1009CEC70] = v28;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v29 = v28;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v53, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v55, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v30 = *(v51 + 8);
  v51 += 8;
  v30(v13, v50);
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v23, qword_1009D14A8);
  v48(v20, v31, v23);
  v47(v20, 0, 1, v23);
  v45(v17, v46, v43);
  v32 = objc_allocWithZone(v44);
  v33 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[qword_1009CEC78] = v33;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v34 = v33;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v53, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v55, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v30(v13, v50);
  v37 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(v49 + 640), v35, v36);
  v52.receiver = v5;
  v52.super_class = v37;
  v38 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v39 = [v38 contentView];
  [v39 addSubview:*&v38[qword_1009CEC70]];

  v40 = [v38 contentView];
  [v40 addSubview:*&v38[qword_1009CEC78]];

  return v38;
}

uint64_t sub_1002ACD40()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v8 - 8);
  v10 = v36 - v9 + 16;
  v13 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *((v3 & v2) + 0x280), v11, v12);
  v39.receiver = v1;
  v39.super_class = v13;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v14 = [v1 contentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v36[0] = v16;
  v36[1] = v18;
  v37 = v20;
  v38 = v22;
  sub_1002ABDFC(v36);
  v23 = [v1 contentView];
  [v23 layoutMargins];
  v25 = v24;
  v27 = v26;

  if (*(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) == 1)
  {
    v28 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000A833C(v1 + v28, v10);
    if ((*(v5 + 48))(v10, 1, v4))
    {
      sub_10002B894(v10, &qword_10097DBD0, &qword_1007BC750);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      sub_10002B894(v10, &qword_10097DBD0, &qword_1007BC750);
      v29 = [v1 traitCollection];
      PageGrid.horizontalDirectionalMargins.getter();
      PageGrid.horizontalDirectionalMargins.getter();
      [v29 layoutDirection];
      NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
      v25 = v30;
      v27 = v31;

      (*(v5 + 8))(v7, v4);
    }
  }

  v36[0] = v16 + v25;
  v37 = v20 - (v27 + v25);
  v32.n128_f64[0] = sub_1002AC268(v36);
  v33 = (*((swift_isaMask & *v1) + 0x338))(v36, v32);
  return (*((swift_isaMask & *v1) + 0x1A8))(v33);
}

void sub_1002AD0FC(void *a1)
{
  v1 = a1;
  sub_1002ACD40();
}

uint64_t sub_1002AD144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *((swift_isaMask & *v4) + 0x280), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, "prepareForReuse");
  return sub_1005F4320(v5, &off_1008BC450);
}

void sub_1002AD1BC(void *a1)
{
  v4 = a1;
  sub_1002AD144(v4, v1, v2, v3);
}

id sub_1002AD204(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *((swift_isaMask & *v4) + 0x280), a3, a4);
  v13.receiver = v4;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v7 = [v4 traitCollection];
  v8 = [v7 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v8 != result))
  {
    if (qword_10096E4B8 != -1)
    {
      swift_once();
    }

    v10 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
    sub_1000056A8(v10, qword_1009D1D20);
    v11 = v4;
    Conditional.evaluate(with:)();

    UILabel.alignment.setter();
    if (qword_10096E4C8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v10, qword_1009D1D50);
    v12 = v11;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

void sub_1002AD3D8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = a1;
  sub_1002AD204(a3, v8, v6, v7);
}

Class sub_1002AD444(void *a1)
{
  v1 = a1;
  v2 = sub_1002AD4B4();

  if (v2)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t sub_1002AD4B4()
{
  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B10D0;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  *(v1 + 32) = v2;
  if (*&v0[qword_1009CEC88] && (v3 = *&v0[qword_1009CEC88 + 8], ObjectType = swift_getObjectType(), v5 = *(v3 + 144), swift_unknownObjectRetain(), v6 = v5(ObjectType, v3), swift_unknownObjectRelease(), v6))
  {
    v7 = v6;
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  sub_100394AC0(v7);
  return v1;
}

void sub_1002AD5D4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v7 = a1;
  sub_1002AD64C(v4, v7, v5, v6);
}

void sub_1002AD64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_isaMask & *v4;
  if (a1)
  {
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(v5 + 640), a3, a4);
  v8.receiver = v4;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, "setAccessibilityElements:", v6.super.isa);
}

uint64_t sub_1002AD704()
{
  swift_unknownObjectRelease();

  return swift_weakDestroy();
}

id sub_1002AD764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *((swift_isaMask & *v4) + 0x280), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1002AD7C0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_weakDestroy();
}

double sub_1002AD868()
{
  sub_1002AD8DC();
  swift_unknownObjectRetain();
  return result;
}

double sub_1002AD89C(uint64_t a1)
{
  sub_1002AD8F0(a1);

  return result;
}

unint64_t sub_1002AD904()
{
  result = qword_10097DBD8;
  if (!qword_10097DBD8)
  {
    type metadata accessor for TodayCardOverlay();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DBD8);
  }

  return result;
}

uint64_t sub_1002AD95C()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v17 - v9;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v11 = *(v5 + 8);
  v11(v10, v4);
  v12 = (*(v1 + 88))(v3, v0);
  if (v12 == enum case for Shelf.ContentType.annotation(_:))
  {
    v13 = 1;
    return v13 & 1;
  }

  if (v12 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v13 = sub_10011A2D4();
    (*(v1 + 8))(v3, v0);
    return v13 & 1;
  }

  result = ItemLayoutContext.index.getter();
  v15 = result + 1;
  if (!__OFADD__(result, 1))
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v11(v7, v4);
    v16 = *(v17[1] + 16);

    v13 = v15 < v16;
    return v13 & 1;
  }

  __break(1u);
  return result;
}

UIColor sub_1002ADC74(double a1, uint64_t a2, UIColor *a3)
{
  sub_100028BB8();
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  v7 = [v6 colorWithAlphaComponent:a1];

  v8 = [v5 whiteColor];
  v9 = [v8 colorWithAlphaComponent:a1];

  result.super.isa = UIColor.init(light:dark:)(v7, v9).super.isa;
  a3->super.isa = result.super.isa;
  return result;
}

char *sub_1002ADD4C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_titleView;
  type metadata accessor for TitleHeaderView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_currentState;
  v11 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v17.receiver = v4;
  v17.super_class = type metadata accessor for InteractiveTitleHeaderView(0);
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_titleView]];

  return v14;
}

id sub_1002AE170()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveTitleHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InteractiveTitleHeaderView(uint64_t a1)
{
  result = qword_10097DCE8;
  if (!qword_10097DCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AE248(uint64_t a1)
{
  sub_1002AE2E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002AE2E8(uint64_t a1)
{
  if (!qword_10097DCF8)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10097DCF8);
    }
  }
}

uint64_t sub_1002AE340@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_currentState;
  swift_beginAccess();
  return sub_1002AE698(v3 + v4, a1);
}

id sub_1002AE3C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_10097E110, qword_1007C5430);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &aBlock[-1] - v8;
  v10 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v11 = sub_1001AAD64();
  v12 = *&v1[OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_titleView];
  result = [v12 overrideUserInterfaceStyle];
  if (result != v11)
  {
    v14 = OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_currentState;
    swift_beginAccess();
    sub_1002AE698(v2 + v14, v9);
    v15 = *(v10 - 8);
    v16 = (*(v15 + 48))(v9, 1, v10);
    sub_1002AE708(v9);
    if (v16 == 1)
    {
      [v12 setOverrideUserInterfaceStyle:v11];
    }

    else
    {
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v2;
      *(v18 + 24) = v11;
      aBlock[4] = sub_1002AE844;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008BC4F0;
      v19 = _Block_copy(aBlock);
      v20 = v2;

      [v17 transitionWithView:v12 duration:5308420 options:v19 animations:0 completion:0.4];
      _Block_release(v19);
    }

    sub_1002AE770(a1, v6);
    (*(v15 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_1002AE7D4(v6, v2 + v14);
    return swift_endAccess();
  }

  return result;
}