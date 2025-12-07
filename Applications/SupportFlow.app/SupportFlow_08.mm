uint64_t sub_1000C8500()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v2[31] = v0;

  v6 = *(v4 + 8);
  v2[32] = v6;
  v2[33] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  v7 = v2[20];
  v8 = v2[19];
  if (v0)
  {
    v9 = sub_1000C8744;
  }

  else
  {
    v9 = sub_1000C86C8;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1000C86C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C8744()
{
  v25 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v21 = v0[32];
    v20 = v0[28];
    v19 = v0[25];
    v23 = v2;
    v3 = v0[23];
    v4 = v0[22];
    v5 = v0[17];
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v9 = 136315394;
    v4(v5, v3, v6);
    Bindable.wrappedValue.getter();
    v19(v5, v6);
    v20(v7, v0[7] + OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel_url, v8);

    v10 = URL.absoluteString.getter();
    v12 = v11;
    v21(v7, v8);
    v13 = sub_10009CACC(v10, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_10009CACC(v14, v15, &v24);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v1, v23, "Error loading url %s: %s", v9, 0x16u);
    swift_arrayDestroy();
    sub_100008744(v22);
    sub_100008744(v9);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000C89E8(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&qword_10018B310, &qword_10012A550);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DismissAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9558(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  DismissAction.callAsFunction()();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000C8C50()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

unint64_t sub_1000C8CBC()
{
  result = qword_100190168;
  if (!qword_100190168)
  {
    sub_100004D48(&qword_100190160, &qword_10012DAC8);
    sub_100004D48(&qword_100190170, &qword_10012DAD0);
    sub_100004D48(&qword_100190178, &qword_10012DAD8);
    sub_100004D48(&qword_100190180, &qword_10012DAE0);
    sub_100004D48(&qword_100190188, &qword_10012DAE8);
    sub_100004D48(&qword_100190190, &qword_10012DAF0);
    sub_1000C8EDC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100004D48(&qword_1001901A8, &qword_10012DAF8);
    sub_10000AAEC(&qword_1001901B0, &qword_1001901A8, &qword_10012DAF8, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190168);
  }

  return result;
}

unint64_t sub_1000C8EDC()
{
  result = qword_100190198;
  if (!qword_100190198)
  {
    sub_100004D48(&qword_100190190, &qword_10012DAF0);
    sub_1000C96B4(&qword_1001901A0, &type metadata accessor for WebView, &protocol conformance descriptor for WebView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190198);
  }

  return result;
}

uint64_t sub_1000C8F98()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D870;

  return sub_1000C7FDC(v0);
}

uint64_t sub_1000C9028@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003768(&qword_10018B310, &qword_10012A550);
  sub_10000AF7C();
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_1000C9558(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DismissAction();
    sub_10000AF7C();
    return (*(v13 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_1000C9244(uint64_t a1)
{
  v2 = sub_100003768(&qword_100190190, &qword_10012DAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C930C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMSWebView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C9370()
{
  v1 = *(type metadata accessor for AMSWebView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100003768(&qword_10018B310, &qword_10012A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DismissAction();
    sub_10000AF7C();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000C9494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMSWebView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C94F8()
{
  v1 = *(type metadata accessor for AMSWebView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000C89E8(v2);
}

uint64_t sub_1000C9558(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018B310, &qword_10012A550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C95CC()
{
  result = qword_1001901F0;
  if (!qword_1001901F0)
  {
    sub_100004D48(&qword_1001901B8, &qword_10012DB10);
    sub_10000AAEC(&qword_1001901F8, &qword_100190200, &qword_10012DB88, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_1000C96B4(&qword_10018E5B8, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001901F0);
  }

  return result;
}

uint64_t sub_1000C96B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C9700(uint64_t a1, uint64_t a2)
{
  sub_100003768(&qword_100189398, &unk_100122910);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_1000C9794(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_1000C97B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = [swift_getObjCClassFromMetadata() bagForProfile:v4 profileVersion:v5];

  return v6;
}

id sub_1000C984C()
{
  swift_getKeyPath();
  v1 = sub_1000CAB74();
  sub_10006F2DC(v1, v2);

  v3 = *(v0 + qword_100190208);

  return v3;
}

void sub_1000C98F0(void *a1)
{
  v3 = qword_100190208;
  v4 = *(v1 + qword_100190208);
  v5 = sub_1000CA78C(v4, a1);

  if (v5)
  {
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    sub_1000CA704(v7, sub_1000CABFC, v9);
  }

  else
  {
    v8 = *(v1 + v3);
    *(v1 + v3) = a1;
  }
}

void sub_1000C99E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + qword_100190208);
  *(a1 + qword_100190208) = a2;
  v3 = a2;
}

uint64_t sub_1000C9A20()
{
  swift_getKeyPath();
  v1 = sub_1000CAB74();
  sub_10006F2DC(v1, v2);

  return *(v0 + qword_100190210);
}

uint64_t sub_1000C9A88(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + qword_100190210) == (result & 1))
  {
    *(v1 + qword_100190210) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = __chkstk_darwin(KeyPath);
    v5[2] = v1;
    v6 = v2;
    sub_1000CA704(v4, sub_1000CAB5C, v5);
  }

  return result;
}

uint64_t sub_1000C9B38(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  sub_10000C30C();
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  sub_10000C30C();
  v5 = type metadata accessor for SupportFlowIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  sub_10000C30C();
  v9 = v8 - v7;
  v10 = qword_1001A5808;
  sub_100025778(0, &qword_1001905E8, AMSBag_ptr);
  *(v1 + v10) = sub_1000C97B8(0x6D6F434955534D41, 0xED0000656372656DLL, 49, 0xE100000000000000);
  v11 = AMSBagKeyPurchaseHistoryURL;
  *(v1 + qword_100190208) = AMSBagKeyPurchaseHistoryURL;
  *(v1 + qword_100190210) = 0;
  v12 = v11;
  ObservationRegistrar.init()();
  (*(v6 + 104))(v9, enum case for SupportFlowIdentifier.purchases(_:), v5);

  v13 = sub_1001050D4(v9, a1);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100024188();
  sub_1001082E8(1);

  return v13;
}

uint64_t sub_1000C9DAC()
{
  sub_100025A94();
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1000C9E54;

  return sub_1000CA0E0();
}

uint64_t sub_1000C9E54()
{
  sub_100025A94();

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006D0B4, v1, v0);
}

uint64_t sub_1000C9F8C()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000CA020, v3, v2);
}

uint64_t sub_1000CA020()
{

  v0 = sub_10008ADF0();
  if (v0)
  {
  }

  sub_100085FE4();
  sub_1000C9A20();
  sub_100085FE4();
  sub_10000875C();

  return v1();
}

uint64_t sub_1000CA0E0()
{
  sub_100025A94();
  v1[23] = v0;
  type metadata accessor for MainActor();
  v1[24] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[25] = v3;
  v1[26] = v2;

  return _swift_task_switch(sub_1000CA174, v3, v2);
}

uint64_t sub_1000CA174()
{
  v1 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v0[27] = v1;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1000CA2AC;
  v2 = swift_continuation_init();
  v0[17] = sub_100003768(&qword_1001905D0, &unk_10012DBF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000CA698;
  v0[13] = &unk_10017DFC8;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000CA2AC()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);
  if (v2)
  {
    v5 = sub_1000CA4BC;
  }

  else
  {
    v5 = sub_1000CA3D8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000CA3D8()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 168);
  v3 = [v2 members];
  sub_100025778(0, &qword_1001905D8, FAFamilyMember_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1000C9794(v4);

  sub_1000C9A88(v5 > 1);

  sub_10000875C();

  return v6();
}

uint64_t sub_1000CA4BC()
{
  v14 = v0;

  swift_willThrow();
  if (qword_100188280 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C2D4(v1, qword_1001A57F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 216);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_10009CACC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error loading family circle: %s", v6, 0xCu);
    sub_1000086BC(v7);
  }

  else
  {
  }

  sub_10000875C();

  return v11();
}

uint64_t *sub_1000CA698(uint64_t a1, void *a2, void *a3)
{
  result = sub_100025734((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1000C9700(v6, a3);
  }

  if (a2)
  {
    return sub_1000C9770(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CA78C(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    v8 = 0;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v7 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_1000CA824()
{
  v1 = qword_100190218;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1000CA8A0()
{
  v0 = sub_10011484C();

  v1 = qword_100190218;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1000CA91C()
{
  v0 = sub_1000CA8A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for PurchasesFlowViewModel(uint64_t a1)
{
  result = qword_100190248;
  if (!qword_100190248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CA9BC(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000CAA88()
{
  v0 = type metadata accessor for Logger();
  sub_10000C270(v0, qword_1001A57F0);
  sub_10000C2D4(v0, qword_1001A57F0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000CAB04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C9A20();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000CAB74()
{
  result = qword_1001905E0;
  if (!qword_1001905E0)
  {
    type metadata accessor for PurchasesFlowViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001905E0);
  }

  return result;
}

id sub_1000CABCC@<X0>(void *a1@<X8>)
{
  result = sub_1000C984C();
  *a1 = result;
  return result;
}

uint64_t sub_1000CAC4C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_10000B4E0((v1 + 2), a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
}

void *sub_1000CACB0()
{
  sub_10006F388();
  result = sub_1000CAD60();
  *v0 = result;
  return result;
}

void sub_1000CACD8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000CADC8(v1);
}

void *sub_1000CAD08()
{
  sub_10006F388();
  result = sub_1000CB0DC();
  *v0 = result;
  return result;
}

void sub_1000CAD30(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000CB144(v1);
}

void *sub_1000CAD60()
{
  swift_getKeyPath();
  v1 = sub_1000CBCA8();
  sub_10006F2DC(v1, v2);

  v3 = *(v0 + 16);
  v4 = v3;
  return v3;
}

void sub_1000CADC8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = v3;
  LOBYTE(v3) = sub_1000CB910(v3, a1, &qword_100190800, AMSAuthenticateRequest_ptr);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100096754();
    sub_1000CB888(v6, sub_1000CBE44, v7);
  }

  else
  {
    v8 = *(v1 + 16);
    *(v1 + 16) = a1;
  }
}

void sub_1000CAEBC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  v3 = a2;
}

uint64_t sub_1000CAEF0()
{
  swift_getKeyPath();
  v0 = sub_1000CBCA8();
  sub_10006F2DC(v0, v1);

  v2 = sub_100077CF4();
  sub_100006568(v2, v3);
  return sub_100077CF4();
}

uint64_t sub_1000CAF5C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1000CAEF0();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1000CBE6C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1000CAFCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000CBE70;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_100006568(v1, v2);
  return sub_1000CB05C(v4, v3);
}

uint64_t sub_1000CB090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  sub_100006568(a2, a3);
  return sub_1000068F8(v3, v4);
}

void *sub_1000CB0DC()
{
  swift_getKeyPath();
  v1 = sub_1000CBCA8();
  sub_10006F2DC(v1, v2);

  v3 = *(v0 + 40);
  v4 = v3;
  return v3;
}

void sub_1000CB144(void *a1)
{
  v3 = *(v1 + 40);
  v4 = v3;
  LOBYTE(v3) = sub_1000CB910(v3, a1, &qword_1001907F8, AMSDialogRequest_ptr);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100096754();
    sub_1000CB888(v6, sub_1000CBD98, v7);
  }

  else
  {
    v8 = *(v1 + 40);
    *(v1 + 40) = a1;
  }
}

void sub_1000CB238(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = a2;
  v3 = a2;
}

uint64_t sub_1000CB26C()
{
  swift_getKeyPath();
  v0 = sub_1000CBCA8();
  sub_10006F2DC(v0, v1);

  v2 = sub_100077CF4();
  sub_100006568(v2, v3);
  return sub_100077CF4();
}

uint64_t sub_1000CB2D8@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1000CB26C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1000CBD3C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1000CB348(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000CBD38;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_100006568(v1, v2);
  return sub_1000CB3D8(v4, v3);
}

uint64_t sub_1000CB40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v13 = v5;
  v14 = a1;
  v15 = a2;
  sub_1000CB888(KeyPath, a4, &v12);
  a5(a1, a2);
}

uint64_t sub_1000CB48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  sub_100006568(a2, a3);
  return sub_1000068F8(v3, v4);
}

uint64_t sub_1000CB4D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel____lazy_storage___webModel) = 0;
  ObservationRegistrar.init()();
  *(v2 + 64) = a1;
  v5 = OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel_url;
  type metadata accessor for URL();
  sub_10000AF7C();
  (*(v6 + 32))(v2 + v5, a2);
  return v2;
}

uint64_t sub_1000CB570()
{
  v1 = OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel____lazy_storage___webModel;
  if (*(v0 + OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel____lazy_storage___webModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel____lazy_storage___webModel);
  }

  else
  {
    v2 = sub_1000CB5D8(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000CB5D8(uint64_t a1)
{
  v2 = sub_100003768(&qword_1001907F0, &qword_10012DD98);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for WebModelHandlers();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_retain_n();
  WebModelHandlers.init(handleAuthenticateRequest:handleDelegateAction:handleDialogRequest:didResolveWithResult:didEncodeNetworkRequest:)();
  v9 = *(a1 + 64);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 ams_sharedAccountStore];
  v13 = [v12 ams_activeiTunesAccount];

  (*(v6 + 16))(v4, v8, v5);
  sub_100003CE8(v4, 0, 1, v5);
  type metadata accessor for WebModel();
  swift_allocObject();
  v14 = WebModel.init(bag:account:clientInfo:appearance:clientOptions:loadUsingWebKit:metricsOverlay:handlers:)();
  (*(v6 + 8))(v8, v5);
  return v14;
}

uint64_t sub_1000CB81C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void *))
{

  a5(a2, a3);
  v11 = a1;
  return a6(a1);
}

BOOL sub_1000CB910(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v4 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_100025778(0, a3, a4);
    v7 = a1;
    v8 = a2;
    v4 = static NSObject.== infix(_:_:)();
  }

  return (v4 & 1) == 0;
}

uint64_t sub_1000CB994()
{
  sub_1000068F8(*(v0 + 24), *(v0 + 32));

  sub_1000068F8(*(v0 + 48), *(v0 + 56));
  v1 = OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel_url;
  type metadata accessor for URL();
  sub_10000AF7C();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_10000AF7C();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_1000CBA5C()
{
  sub_1000CB994();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AMSWebViewModel(uint64_t a1)
{
  result = qword_100190628;
  if (!qword_100190628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CBB08(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1000CBCA8()
{
  result = qword_100190158;
  if (!qword_100190158)
  {
    type metadata accessor for AMSWebViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190158);
  }

  return result;
}

uint64_t sub_1000CBD00()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1000CBD6C()
{
  sub_10006F388();
  result = sub_1000CB0DC();
  *v0 = result;
  return result;
}

uint64_t sub_1000CBDDC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

void *sub_1000CBE18()
{
  sub_10006F388();
  result = sub_1000CAD60();
  *v0 = result;
  return result;
}

uint64_t sub_1000CBE74()
{
  v0 = type metadata accessor for SystemLanguageModel.Availability();
  v1 = sub_10000ED84(v0);
  v2 = __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  SystemLanguageModel.availability.getter();
  type metadata accessor for SystemLanguageModel.Availability.UnavailableReason();
  v7 = sub_1000D2128();
  sub_100003CE8(v7, v8, 1, v9);
  v10 = static SystemLanguageModel.Availability.== infix(_:_:)();
  sub_1000D1CB4(v4, &type metadata accessor for SystemLanguageModel.Availability);
  sub_1000D1CB4(v6, &type metadata accessor for SystemLanguageModel.Availability);
  return v10 & 1;
}

uint64_t sub_1000CBF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100190B40, &qword_10012E1A8);
  sub_100008780();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  Regex.init(_regexString:version:)();
  v11[2] = a1;
  v11[3] = a2;
  sub_1000D1E54();
  sub_1000D1EA8();
  sub_10000AAEC(&qword_100190B58, &qword_100190B40, &qword_10012E1A8, &protocol conformance descriptor for Regex<A>);
  RangeReplaceableCollection<>.replacing<A, B, C>(_:maxReplacements:with:)();
  (*(v6 + 8))(v9, v4);
  return v11[4];
}

uint64_t sub_1000CC0FC()
{
  sub_100025A94();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v5);
  v1[7] = sub_1000D2168();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v1[9] = v6;
  sub_100052F6C(v6);
  v1[10] = v7;
  v1[11] = sub_1000D2168();
  v1[12] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[13] = v8;
  sub_100052F6C(v8);
  v1[14] = v9;
  v1[15] = sub_1000D2168();
  v1[16] = swift_task_alloc();
  v10 = type metadata accessor for SystemLanguageModel.Availability();
  sub_10000ED84(v10);
  v1[17] = swift_task_alloc();
  v11 = type metadata accessor for SystemLanguageModel.Availability.UnavailableReason();
  v1[18] = v11;
  sub_100052F6C(v11);
  v1[19] = v12;
  v1[20] = sub_1000D2168();
  v1[21] = swift_task_alloc();
  v13 = sub_100003768(&qword_10018DA18, &unk_100129750);
  sub_10000ED84(v13);
  v1[22] = sub_1000D2168();
  v1[23] = swift_task_alloc();
  v14 = type metadata accessor for PhoneNumberOption(0);
  v1[24] = v14;
  sub_100052F6C(v14);
  v1[25] = v15;
  v1[26] = sub_1000D2168();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v16 = sub_100003768(&qword_10018D468, &qword_10012E130);
  sub_10000ED84(v16);
  v1[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[33] = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[34] = v18;
  v1[35] = v17;

  return _swift_task_switch(sub_1000CC3F0, v18, v17);
}

uint64_t sub_1000CC3F0()
{
  sub_100025A94();
  v1 = v0[6];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;

  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_1000CC498;
  v4 = sub_1000D21E0();

  return sub_1000CE120(v4, v5);
}

uint64_t sub_1000CC498()
{
  sub_100025A94();
  v1 = *v0;
  sub_1000461C8();
  *v3 = v2;
  v4 = *v0;
  sub_1000461C8();
  *v5 = v4;
  *(v7 + 296) = v6;

  v8 = *(v1 + 280);
  v9 = *(v1 + 272);

  return _swift_task_switch(sub_1000CC5B4, v9, v8);
}

uint64_t sub_1000CC5B4()
{
  v119 = v0;
  Locale.region.getter();
  v1 = type metadata accessor for Locale.Region();
  v2 = sub_1000D2128();
  v4 = sub_10000E5F0(v2, v3, v1);
  v5 = v0[32];
  if (v4 == 1)
  {
    sub_100044F98(v0[32], &qword_10018D468, &qword_10012E130);
    goto LABEL_3;
  }

  v23 = Locale.Region.identifier.getter();
  v25 = v24;
  (*(*(v1 - 8) + 8))(v5, v1);
  v26 = v23 == 16972 && v25 == 0xE200000000000000;
  if (v26 || (sub_10000AFAC(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

LABEL_18:
    v27 = v0[37];
    v29 = v0[23];
    v28 = v0[24];
    v31 = v0[3];
    v30 = v0[4];
    *(v0[6] + 16) = 0;
    v0[2] = v27;
    sub_100003768(&qword_10018A748, &qword_100124960);
    sub_10000AAEC(&qword_10018A750, &qword_10018A748, &qword_100124960, &protocol conformance descriptor for [A]);
    v32 = BidirectionalCollection<>.joined(separator:)();
    v34 = v33;

    sub_1000CDD54(v32, v34, v31, v30, v29);

    sub_1000D21A0(v29, 1, v28);
    if (v26)
    {
      sub_100044F98(v0[23], &qword_10018DA18, &unk_100129750);
      v117 = _swiftEmptyArrayStorage;
      goto LABEL_44;
    }

    v35 = v0[31];
    v36 = v0[25];
    sub_1000D1D08(v0[23], v35);
    sub_100003768(&qword_100190AD8, &unk_10012E150);
    v37 = sub_1000D2244();
    *(v37 + 16) = xmmword_100121620;
    v117 = v37;
    v62 = v37 + v36;
    v63 = v35;
    goto LABEL_23;
  }

  if (v23 == 19280 && v25 == 0xE200000000000000)
  {

LABEL_48:

    goto LABEL_18;
  }

  sub_10000AFAC();
  v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v65)
  {
    goto LABEL_48;
  }

LABEL_3:
  v6 = v0[37];
  if (v6[2] == 1)
  {
    v7 = v0[24];
    v8 = v0[22];
    v10 = v0[3];
    v9 = v0[4];
    v11 = v6[4];
    v12 = v6[5];

    sub_1000CDD54(v11, v12, v10, v9, v8);

    v13 = sub_1000D2128();
    sub_1000D21A0(v13, v14, v7);
    if (!v26)
    {
      v56 = v0[30];
      v57 = v0[25];
      v58 = v0[22];
      v59 = v0[6];

      sub_1000D1D08(v58, v56);
      *(v59 + 16) = 0;
      sub_100003768(&qword_100190AD8, &unk_10012E150);
      v60 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_100121620;
      v117 = v61;
      v62 = v61 + v60;
      v63 = v56;
LABEL_23:
      sub_1000D1D08(v63, v62);
      goto LABEL_44;
    }

    sub_100044F98(v0[22], &qword_10018DA18, &unk_100129750);
  }

  v16 = v0[17];
  v15 = v0[18];
  SystemLanguageModel.availability.getter();
  sub_1000D21A0(v16, 1, v15);
  if (!v26)
  {
    v38 = v0[6];

    v39 = sub_100096D88();
    v40(v39);
    *(v38 + 16) = 0;
    static Logger.supportFlowApp.getter();
    v41 = sub_10000AFAC();
    v42(v41);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v0[16];
    v48 = v0[13];
    v47 = v0[14];
    if (v45)
    {
      v116 = v0[13];
      v49 = swift_slowAlloc();
      v112 = v44;
      v50 = swift_slowAlloc();
      v118[0] = v50;
      *v49 = 136315138;
      v110 = sub_1000CDF60();
      v114 = v46;
      v52 = v51;
      v53 = sub_1000D218C();
      v54(v53);
      v55 = sub_10009CACC(v110, v52, v118);

      *(v49 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v43, v112, "System model is not available: %s", v49, 0xCu);
      sub_1000086BC(v50);
      sub_100008744(v50);
      sub_100008744(v49);

      result = (*(v47 + 8))(v114, v116);
    }

    else
    {

      v66 = sub_1000D218C();
      v67(v66);
      result = (*(v47 + 8))(v46, v48);
    }

    v68 = 0;
    v111 = v0[25];
    v113 = v0[28];
    v109 = v0[24];
    v69 = v6[2];
    v108 = (v0[10] + 32);
    v70 = v0[37] + 40;
    v117 = _swiftEmptyArrayStorage;
    for (i = v70; ; v70 = i)
    {
      for (j = (v70 + 16 * v68); ; j += 2)
      {
        if (v69 == v68)
        {
          v93 = v0[21];
          v94 = v0[18];

          v115(v93, v94);
LABEL_44:
          sub_1000D1FB0();

          sub_1000D20FC(v95, v96, v97, v98, v99, v100, v101, v102, v105, v106, i, v108, v109, v111, v113, v115, v117);
          sub_1000D2208();

          __asm { BRAA            X2, X16 }
        }

        if (v68 >= v6[2])
        {
          __break(1u);
          return result;
        }

        v73 = v0[8];
        v72 = v0[9];
        v75 = *(j - 1);
        v74 = *j;
        sub_1000D20B8();
        v118[0] = v76;
        v118[1] = 0xE600000000000000;

        v77._countAndFlagsBits = sub_1000D2180();
        String.append(_:)(v77);
        URL.init(string:)();

        sub_1000D21A0(v73, 1, v72);
        if (!v26)
        {
          break;
        }

        v78 = v0[8];

        result = sub_100044F98(v78, &qword_100188EE0, &unk_100122AE0);
        ++v68;
      }

      v79 = v0[28];
      v80 = v0[12];
      v105 = v0[9];
      v106 = v0[29];
      v81 = *v108;
      (*v108)(v80, v0[8]);
      v81(&v79[*(v109 + 20)], v80, v105);
      *v79 = v75;
      *(v113 + 8) = v74;
      sub_1000D1D08(v79, v106);
      v82 = v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v82 = sub_1000D0714(0, v117[2] + 1, 1, v117);
      }

      v85 = v82[2];
      v84 = v82[3];
      v117 = v82;
      if (v85 >= v84 >> 1)
      {
        v90 = sub_100077C78(v84);
        v117 = sub_1000D0714(v90, v91, v92, v82);
      }

      ++v68;
      v117[2] = (v85 + 1);
      sub_100077EAC();
      result = sub_1000D1D08(v89, v87 + v86 + *(v88 + 72) * v85);
    }
  }

  sub_1000D1CB4(v0[17], &type metadata accessor for SystemLanguageModel.Availability);
  v17 = swift_task_alloc();
  v0[38] = v17;
  *v17 = v0;
  v17[1] = sub_1000CCE30;
  sub_1000D21E0();
  sub_1000D2208();

  return sub_1000CEAA8(v18, v19, v20);
}

uint64_t sub_1000CCE30(uint64_t a1)
{
  v4 = *v2;
  sub_1000461C8();
  *v5 = v4;
  v6 = *v2;
  sub_1000461C8();
  *v7 = v6;
  v4[39] = v1;

  if (v1)
  {
    v8 = v4[34];
    v9 = v4[35];
    v10 = sub_1000CD088;
  }

  else
  {

    v4[40] = a1;
    v8 = v4[34];
    v9 = v4[35];
    v10 = sub_1000CCF58;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1000CCF58()
{
  v1 = *(v0 + 48);

  *(v1 + 16) = 1;
  v21 = *(v0 + 320);
  sub_1000D1FB0();

  v10 = sub_1000D20FC(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17, v18, v19, v20, v21);

  return v11(v10);
}

uint64_t sub_1000CD088()
{
  v1 = v0[6];

  *(v1 + 16) = 0;
  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "System model parsing failed: %@", v4, 0xCu);
    sub_100044F98(v5, &qword_100189390, &qword_1001241D0);
    sub_100008744(v5);
    sub_100008744(v4);
  }

  v7 = v0[37];
  v52 = v0[25];
  v53 = v0[26];
  v51 = v0[24];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v11 = v0[10];

  result = (*(v9 + 8))(v8, v10);
  v13 = 0;
  v14 = *(v7 + 16);
  v50 = (v11 + 32);
  v15 = v7 + 40;
  v54 = _swiftEmptyArrayStorage;
LABEL_4:
  for (i = (v15 + 16 * v13); ; i += 2)
  {
    if (v14 == v13)
    {

      sub_1000D1FB0();

      sub_1000D20FC(v37, v38, v39, v40, v41, v42, v43, v44, v47, v48, v49, v7 + 40, v50, v51, v52, v53, v54);
      sub_1000D2208();

      __asm { BRAA            X2, X16 }
    }

    if (v13 >= *(v0[37] + 16))
    {
      break;
    }

    v17 = v0[9];
    v18 = v0[7];
    v20 = *(i - 1);
    v19 = *i;
    sub_1000D20B8();

    v21._countAndFlagsBits = sub_1000D2180();
    String.append(_:)(v21);
    URL.init(string:)();

    sub_1000D21A0(v18, 1, v17);
    if (!v22)
    {
      v24 = v0[26];
      v48 = v0[11];
      v49 = v0[27];
      v25 = v0[9];
      v26 = *v50;
      (*v50)();
      (v26)(v24 + *(v51 + 20), v48, v25);
      *v24 = v20;
      *(v53 + 8) = v19;
      sub_1000D1D08(v24, v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v54 = sub_1000D0714(0, v54[2] + 1, 1, v54);
      }

      v29 = v54[2];
      v28 = v54[3];
      if (v29 >= v28 >> 1)
      {
        v34 = sub_100077C78(v28);
        v54 = sub_1000D0714(v34, v35, v36, v54);
      }

      ++v13;
      v54[2] = (v29 + 1);
      sub_100077EAC();
      result = sub_1000D1D08(v33, v31 + v30 + *(v32 + 72) * v29);
      v15 = v7 + 40;
      goto LABEL_4;
    }

    v23 = v0[7];

    result = sub_100044F98(v23, &qword_100188EE0, &unk_100122AE0);
    ++v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CD47C()
{
  v0 = sub_1000CFD80();
  sub_100003768(&qword_100190980, &qword_10012DFC0);
  sub_1000D2068();
  v1 = type metadata accessor for GenerationSchema.Property();
  sub_100052F6C(v1);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100122C90;
  v3 = sub_1000D20D4();
  sub_1000D2264(v3, 0xE500000000000000, 0xD00000000000003ALL, v4 | 0x8000000000000000);
  v5 = sub_1000D1F90();
  sub_1000D2264(v5, v8, v6 | 0xD00000000000003ALL, v7 | 0x8000000000000000);

  return GenerationSchema.init(type:description:properties:)(&type metadata for GeneratedPhoneNumberOption, v0, 0, 0, v2);
}

uint64_t sub_1000CD5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003768(&qword_100190970, &qword_10012DFB8);
  v9 = sub_10000ED84(v8);
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = _swiftEmptyArrayStorage;
  v13 = sub_1000D20D4();
  sub_1000CD7A8(v13, 0xE500000000000000, a1, a2, v12);
  v14 = sub_1000D1F90();
  sub_1000CD7A8(v14, v15, a3, a4, v12);
  swift_beginAccess();

  v17 = sub_1000CD888(v16);

  v22[2] = v17;
  v18 = type metadata accessor for GenerationID();
  sub_100003CE8(v11, 1, 1, v18);
  sub_100003768(&qword_100190988, &qword_10012DFC8);
  type metadata accessor for GeneratedContent();
  sub_1000D2074();
  sub_10000AAEC(v19, &qword_100190988, &qword_10012DFC8, v20);
  GeneratedContent.init<A, B>(properties:id:uniquingKeysWith:)();
}

uint64_t sub_1000CD7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v15 = a3;
  v16 = &type metadata for String;
  v17 = &protocol witness table for String;
  *(&v15 + 1) = a4;
  *&v12 = a1;
  *(&v12 + 1) = a2;
  sub_10003C91C(&v15, v13);
  swift_beginAccess();

  sub_1000CFE0C();
  v6 = *(*(a5 + 16) + 16);
  sub_1000CFE58(v6);
  v7 = *(a5 + 16);
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 56 * v6;
  v9 = v13[0];
  v10 = v13[1];
  *(v8 + 80) = v14;
  *(v8 + 48) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v12;
  *(a5 + 16) = v7;
  return swift_endAccess();
}

id *sub_1000CD888(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1000D129C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1000D12BC(v4, v12);
      sub_100003768(&qword_100190998, &qword_10012DFD0);
      sub_100003768(&qword_1001909A0, &qword_10012DFD8);
      swift_dynamicCast();
      v17 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000D129C((v5 > 1), v6 + 1, 1);
        v2 = v17;
      }

      v2[2] = (v6 + 1);
      v7 = &v2[7 * v6];
      v8 = v13;
      v9 = v14;
      v10 = v15;
      v7[10] = v16;
      *(v7 + 3) = v9;
      *(v7 + 4) = v10;
      *(v7 + 2) = v8;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1000CDA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003768(&qword_100190970, &qword_10012DFB8);
  v6 = sub_10000ED84(v5);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for GenerationID();
  sub_100008780();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GeneratedPhoneNumberOption.PartiallyGenerated(0);
  v16 = (a2 + *(v15 + 20));
  *v16 = 0;
  v16[1] = 0;
  v17 = (a2 + *(v15 + 24));
  *v17 = 0;
  v17[1] = 0;
  GeneratedContent.id.getter();
  if (sub_10000E5F0(v8, 1, v9) == 1)
  {
    GenerationID.init()();
    if (sub_10000E5F0(v8, 1, v9) != 1)
    {
      sub_100044F98(v8, &qword_100190970, &qword_10012DFB8);
    }
  }

  else
  {
    v18 = sub_1000D2180();
    v19(v18);
  }

  (*(v11 + 32))(a2, v14, v9);
  sub_1000D20D4();
  GeneratedContent.value<A>(_:forProperty:)();
  if (v2)
  {
    type metadata accessor for GeneratedContent();
    sub_10000C31C();
    (*(v20 + 8))(a1);
    return sub_1000D1CB4(a2, type metadata accessor for GeneratedPhoneNumberOption.PartiallyGenerated);
  }

  else
  {
    *v16 = v23;
    sub_1000D1F90();
    GeneratedContent.value<A>(_:forProperty:)();
    type metadata accessor for GeneratedContent();
    sub_10000C31C();
    result = (*(v21 + 8))(a1);
    *v17 = v23;
  }

  return result;
}

uint64_t sub_1000CDCD4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GenerationID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1000CDD54@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  __chkstk_darwin(v10 - 8);
  v12 = v22 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = 0x2F2F3A6C6574;
  v22[1] = 0xE600000000000000;
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.append(_:)(v17);
  URL.init(string:)();

  if (sub_10000E5F0(v12, 1, v13) == 1)
  {
    sub_100044F98(v12, &qword_100188EE0, &unk_100122AE0);
    v18 = type metadata accessor for PhoneNumberOption(0);
    return sub_100003CE8(a5, 1, 1, v18);
  }

  else
  {
    v20 = *(v14 + 32);
    v20(v16, v12, v13);
    v21 = type metadata accessor for PhoneNumberOption(0);
    v20(&a5[*(v21 + 20)], v16, v13);
    *a5 = a3;
    *(a5 + 1) = a4;
    sub_100003CE8(a5, 0, 1, v21);
  }
}

uint64_t sub_1000CDF60()
{
  v1 = v0;
  v2 = type metadata accessor for SystemLanguageModel.Availability.UnavailableReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for SystemLanguageModel.Availability.UnavailableReason.deviceNotEligible(_:))
  {
    return 0xD000000000000032;
  }

  if (v6 == enum case for SystemLanguageModel.Availability.UnavailableReason.appleIntelligenceNotEnabled(_:))
  {
    return 0xD000000000000022;
  }

  if (v6 == enum case for SystemLanguageModel.Availability.UnavailableReason.modelNotReady(_:))
  {
    return 0xD00000000000001ELL;
  }

  (*(v3 + 8))(v5, v2);
  return 0x206E776F6E6B6E55;
}

uint64_t sub_1000CE120(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for DataDetector.Match.SemanticDetails();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for DataDetector.Match.SemanticDetails.PhoneNumber();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for DataDetector.Match();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  sub_100003768(&qword_100190B08, &qword_10012E180);
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for DataDetector.Options();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  matched = type metadata accessor for DataDetector.MatchType();
  v2[22] = matched;
  v2[23] = *(matched - 8);
  v2[24] = swift_task_alloc();
  v2[25] = sub_100003768(&qword_100190B10, &qword_10012E188);
  v2[26] = swift_task_alloc();
  v8 = sub_100003768(&qword_100190B18, &qword_10012E190);
  v2[27] = v8;
  v2[28] = *(v8 - 8);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000CE42C, 0, 0);
}

uint64_t sub_1000CE42C()
{
  v1 = *(v0 + 184);
  v12 = *(v0 + 192);
  v2 = *(v0 + 168);
  v13 = *(v0 + 176);
  v3 = *(v0 + 160);
  v14 = *(v0 + 152);
  v4 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v4;
  sub_100003768(&qword_100190B20, &qword_10012E198);
  v5 = sub_1000D2244();
  *(v5 + 16) = xmmword_100121620;
  static DataDetector.MatchType.phoneNumber.getter();
  *(v0 + 48) = v5;
  sub_1000D1C6C(&qword_100190B28, &type metadata accessor for DataDetector.MatchType, &protocol conformance descriptor for DataDetector.MatchType);
  sub_100003768(&qword_100190B30, &qword_10012E1A0);
  sub_1000D2074();
  sub_10000AAEC(v6, &qword_100190B30, &qword_10012E1A0, v7);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  DataDetector.Options.init()();
  v8 = sub_10000AC24();
  StringProtocol.dataDetectorMatches(_:options:)();
  (*(v3 + 8))(v2, v14);
  (*(v1 + 8))(v12, v13);
  *(v0 + 32) = &type metadata for String;
  *(v0 + 40) = v8;
  *(v0 + 240) = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  *(v0 + 264) = enum case for DataDetector.Match.SemanticDetails.phoneNumber(_:);
  *(v0 + 248) = _swiftEmptyArrayStorage;
  swift_getAssociatedConformanceWitness();
  v9 = swift_task_alloc();
  *(v0 + 256) = v9;
  *v9 = v0;
  v10 = sub_1000D1FF8(v9);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10);
}

uint64_t sub_1000CE6B8()
{
  sub_100025A94();
  v2 = *v1;
  sub_1000461C8();
  *v3 = v2;

  if (!v0)
  {

    return _swift_task_switch(sub_1000CE7C0, 0, 0);
  }

  return result;
}

uint64_t sub_1000CE7C0()
{
  sub_1000D21A0(*(v0 + 144), 1, *(v0 + 120));
  if (v1)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    v2 = *(v0 + 8);
    v3 = *(v0 + 248);

    return v2(v3);
  }

  else
  {
    v5 = *(v0 + 264);
    v6 = sub_1000D210C();
    v7(v6);
    DataDetector.Match.details.getter();
    v8 = sub_100025A88();
    if (v9(v8) == v5)
    {
      (*(*(v0 + 80) + 96))(*(v0 + 88), *(v0 + 72));
      v10 = sub_100096D88();
      v11(v10);
      v12 = DataDetector.Match.SemanticDetails.PhoneNumber.phoneNumber.getter();
      v14 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v0 + 248);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000D2034();
        sub_1000CFF70();
        v16 = v27;
      }

      v17 = *(v16 + 16);
      if (v17 >= *(v16 + 24) >> 1)
      {
        sub_1000CFF70();
        v16 = v28;
      }

      v19 = *(v0 + 128);
      v18 = *(v0 + 136);
      v20 = *(v0 + 120);
      (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
      (*(v19 + 8))(v18, v20);
      *(v16 + 16) = v17 + 1;
      v21 = v16 + 16 * v17;
      *(v21 + 32) = v12;
      *(v21 + 40) = v14;
    }

    else
    {
      v23 = *(v0 + 80);
      v22 = *(v0 + 88);
      v24 = *(v0 + 72);
      (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
      (*(v23 + 8))(v22, v24);
      v16 = *(v0 + 248);
    }

    *(v0 + 248) = v16;
    swift_getAssociatedConformanceWitness();
    v25 = swift_task_alloc();
    *(v0 + 256) = v25;
    *v25 = v0;
    v26 = sub_1000D1FF8(v25);

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v26);
  }
}

uint64_t sub_1000CEAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for PhoneNumberOption(0);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_100003768(&qword_100190AE0, &qword_10012E160);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for GenerationOptions();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v7 = sub_100003768(&qword_100190AE8, &qword_10012E168);
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  sub_100003768(&qword_100190AF0, &qword_10012E170);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000CED88, 0, 0);
}

uint64_t sub_1000CED88()
{
  v1 = v0[20];
  type metadata accessor for LanguageModelSession();
  type metadata accessor for Instructions();
  v2 = sub_1000D2128();
  sub_100003CE8(v2, v3, 1, v4);
  type metadata accessor for SystemLanguageModel();
  static SystemLanguageModel.default.getter();
  v0[28] = LanguageModelSession.__allocating_init(model:tools:instructions:)();
  _StringGuts.grow(_:)(43);

  v5._countAndFlagsBits = sub_1000D2180();
  String.append(_:)(v5);
  v0[29] = 0x8000000100138990;
  v6 = sub_100003768(&qword_100190AF8, &qword_10012E178);
  v7 = type metadata accessor for GenerationOptions.SamplingMode();
  sub_100003CE8(v1, 1, 1, v7);
  GenerationOptions.init(sampling:temperature:maximumResponseTokens:)();
  v8 = swift_task_alloc();
  v0[30] = v8;
  sub_1000D1D6C();
  *v8 = v0;
  v8[1] = sub_1000CEF64;
  v9 = v0[23];
  v10 = v0[26];

  return LanguageModelSession.respond<A>(to:generating:includeSchemaInPrompt:options:)(v10, 0, 0, 0xD000000000000029, 0x8000000100138990, v6, 1, v9);
}

uint64_t sub_1000CEF64()
{
  sub_1000461C8();
  *v3 = v2;
  v5 = v4[23];
  v6 = v4[22];
  v7 = v4[21];
  v8 = *v1;
  sub_1000461C8();
  *v9 = v8;
  *(v10 + 248) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v11 = sub_1000CF5E8;
  }

  else
  {
    v11 = sub_1000CF0F0;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1000CF0F0()
{
  v89 = v0[15];
  v90 = v0[18];
  v97 = v0[12];
  v1 = v0[9];
  v2 = v0[5];
  result = LanguageModelSession.Response.content.getter();
  v4 = 0;
  v5 = v0[2];
  v6 = v5 + 56;
  v105 = v5;
  v104 = *(v5 + 16);
  v96 = v1 + 32;
  v99 = v0 + 7;
  v100 = v0 + 6;
  v93 = (v0 + 14);
  v94 = (v0 + 16);
  v92 = (v0 + 19);
  v106 = v0;
  v91 = (v0 + 17);
  v98 = _swiftEmptyArrayStorage;
  v103 = v2;
  v7 = v2 + 40;
  v101 = v6;
  v95 = v2 + 40;
LABEL_2:
  v8 = (v7 + 16 * v4);
  v9 = (v6 + 32 * v4);
  while (v104 != v4)
  {
    if (v4 >= *(v105 + 16))
    {
      __break(1u);
      return result;
    }

    v10 = *(v9 - 2);
    v102 = *(v9 - 3);
    v11 = *v9;
    v12 = v106[8];
    v107 = v4;
    if (v4 >= *(v103 + 16))
    {
      v13 = v100;
      v21 = *(v9 - 1);
      sub_1000D20B8();
      sub_1000D2224(v22);

      v23._countAndFlagsBits = v21;
      v23._object = v11;
      String.append(_:)(v23);
      URL.init(string:)();

      v24 = sub_1000D2128();
      sub_1000D21A0(v24, v25, v12);
      if (!v20)
      {
        v27 = v106[15];
        v28 = sub_1000D21F4();
        v29 = v9(v28);
        v37 = sub_1000D2134(v29, v30, v31, v32, v33, v34, v35, v36, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
        v9(v37);

        *v27 = v102;
        *(v89 + 8) = v10;
        v38 = sub_10000AFAC();
        sub_1000D1D08(v38, v39);
        v40 = sub_100096D88();
        sub_1000D1DF0(v40, v41);
        v64 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v70 = sub_1000D2034();
          v64 = sub_1000D0714(v70, v71, v72, v73);
        }

        v44 = v64[2];
        v43 = v64[3];
        v45 = (v44 + 1);
        v46 = v107;
        if (v44 >= v43 >> 1)
        {
          v74 = sub_100077C78(v43);
          v64 = sub_1000D0714(v74, v75, v76, v64);
        }

        v48 = v93;
        v47 = v94;
        goto LABEL_21;
      }
    }

    else
    {
      v13 = v99;
      v14 = *v99;
      v15 = *(v8 - 1);
      v16 = *v8;
      sub_1000D20B8();
      sub_1000D2224(v17);

      v18._countAndFlagsBits = v15;
      v18._object = v16;
      String.append(_:)(v18);

      URL.init(string:)();

      v19 = v14;
      v6 = v101;
      sub_1000D21A0(v19, 1, v12);
      if (!v20)
      {
        v49 = v106[18];
        v50 = sub_1000D21F4();
        v51 = v9(v50);
        v59 = sub_1000D2134(v51, v52, v53, v54, v55, v56, v57, v58, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
        v9(v59);

        *v49 = v102;
        *(v90 + 8) = v10;
        v60 = sub_10000AFAC();
        sub_1000D1D08(v60, v61);
        v62 = sub_100096D88();
        sub_1000D1DF0(v62, v63);
        v64 = v98;
        v65 = swift_isUniquelyReferenced_nonNull_native();
        if ((v65 & 1) == 0)
        {
          v77 = sub_1000D2034();
          v64 = sub_1000D0714(v77, v78, v79, v80);
        }

        v44 = v64[2];
        v66 = v64[3];
        v45 = (v44 + 1);
        v6 = v101;
        v46 = v107;
        if (v44 >= v66 >> 1)
        {
          v81 = sub_100077C78(v66);
          v64 = sub_1000D0714(v81, v82, v83, v64);
        }

        v48 = v91;
        v47 = v92;
LABEL_21:
        v67 = *v48;
        sub_1000D1CB4(*v47, type metadata accessor for PhoneNumberOption);
        v64[2] = v45;
        sub_100077EAC();
        v98 = v64;
        result = sub_1000D1D08(v67, v64 + v68 + *(v69 + 72) * v44);
        v4 = v46 + 1;
        v7 = v95;
        goto LABEL_2;
      }
    }

    v26 = *v13;

    result = sub_100044F98(v26, &qword_100188EE0, &unk_100122AE0);
    v8 += 2;
    v9 = (v9 + 32);
    v4 = v107 + 1;
  }

  v84 = v106[25];
  v85 = v106[26];
  v86 = v106[24];

  (*(v84 + 8))(v85, v86);

  v87 = v106[1];

  return v87(v98);
}

uint64_t sub_1000CF5E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CF708()
{

  return v0;
}

uint64_t sub_1000CF730()
{
  sub_1000CF708();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_1000CF79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 20);

    return sub_10000E5F0(v9, a2, v8);
  }
}

uint64_t sub_1000CF838(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 20);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000CF8D8(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000CF954()
{
  *(v0 + 16) = 0;
  type metadata accessor for SystemLanguageModel();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = static SystemLanguageModel.default.getter();
  return v0;
}

uint64_t sub_1000CF994(uint64_t a1)
{
  GeneratedContent.value<A>(_:forProperty:)();
  type metadata accessor for GeneratedContent();
  sub_10000C31C();
  (*(v3 + 8))(a1);
  return v1;
}

uint64_t sub_1000CFAE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000CF994(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000CFB20(uint64_t a1)
{
  v2 = sub_1000CFCC4();

  return ConvertibleToGeneratedContent.instructionsRepresentation.getter(a1, v2);
}

uint64_t sub_1000CFB6C(uint64_t a1)
{
  v2 = sub_1000CFCC4();

  return ConvertibleToGeneratedContent.promptRepresentation.getter(a1, v2);
}

unint64_t sub_1000CFBBC()
{
  result = qword_100190948;
  if (!qword_100190948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190948);
  }

  return result;
}

unint64_t sub_1000CFC14()
{
  result = qword_100190950;
  if (!qword_100190950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190950);
  }

  return result;
}

unint64_t sub_1000CFC6C()
{
  result = qword_100190958;
  if (!qword_100190958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190958);
  }

  return result;
}

unint64_t sub_1000CFCC4()
{
  result = qword_100190960;
  if (!qword_100190960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190960);
  }

  return result;
}

unint64_t sub_1000CFD80()
{
  result = qword_100190978;
  if (!qword_100190978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190978);
  }

  return result;
}

uint64_t sub_1000CFDD4()
{

  return _swift_deallocObject(v0, 24, 7);
}

id *sub_1000CFE0C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1000D0C94(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

id *sub_1000CFE58(id *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1000D0C94((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void sub_1000CFE98()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000D20E4(v2, v5, &qword_10018CB50, &unk_100128350);
  v8 = sub_1000D2068();
  type metadata accessor for DefaultFlowOverride(v8);
  sub_100017BA0();
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(type metadata accessor for DefaultFlowOverride, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000CFF70()
{
  sub_1000D20C8();
  if (v4)
  {
    sub_1000D1F10();
    if (v5 != v6)
    {
      sub_1000D208C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  sub_1000D1F80();
  if (v3)
  {
    sub_100003768(&qword_10018D470, &unk_100128ED0);
    v7 = sub_10002CF24();
    j__malloc_size(v7);
    sub_1000D21CC();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000D211C();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D0040()
{
  sub_1000D20C8();
  if (v4)
  {
    sub_1000D1F10();
    if (v5 != v6)
    {
      sub_1000D208C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  sub_1000D1F80();
  if (v3)
  {
    sub_100003768(&qword_1001909B8, &qword_10012DFF0);
    v7 = sub_10002CF24();
    j__malloc_size(v7);
    sub_1000D1FE4();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000D211C();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D0110()
{
  sub_1000D20C8();
  if (v4)
  {
    sub_1000D1F10();
    if (v5 != v6)
    {
      sub_1000D208C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  sub_1000D1F80();
  if (v3)
  {
    v7 = sub_100003768(&qword_100190B60, &qword_10012E1B0);
    v8 = sub_1000D214C(v7);
    v9 = j__malloc_size(v8);
    sub_1000D2098(v9);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v8 != v0 || v0 + 32 + 48 * v2 <= (v8 + 4))
    {
      v11 = sub_100025A88();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_100003768(&qword_100190B68, &qword_10012E1B8);
    sub_100025A88();
    swift_arrayInitWithCopy();
  }
}

void sub_1000D0208()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000D20E4(v2, v5, &qword_100190B70, &qword_10012E1C0);
  sub_1000D2068();
  type metadata accessor for WelcomeListItem();
  sub_100017BA0();
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(&type metadata accessor for WelcomeListItem, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000D02E0()
{
  sub_1000D20C8();
  if (v3)
  {
    sub_1000D1F10();
    if (v5 != v6)
    {
      sub_1000D208C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100003768(&qword_10018D358, &qword_10012E100);
    v9 = sub_10002CF24();
    j__malloc_size(v9);
    sub_1000D21CC();
    v9[2] = v7;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = (v9 + 4);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_1000D03B4()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000D20E4(v2, v5, &qword_10018D2F8, &qword_10012E030);
  sub_1000D2068();
  type metadata accessor for TriageRequest.HMTContext.Setting();
  sub_100017BA0();
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(&type metadata accessor for TriageRequest.HMTContext.Setting, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000D048C()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000D20E4(v2, v5, &qword_1001909E8, &qword_10012E020);
  sub_1000D2068();
  type metadata accessor for TriageRequest.HMTContext.SettingsGroup();
  sub_100017BA0();
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(&type metadata accessor for TriageRequest.HMTContext.SettingsGroup, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000D0564()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000D20E4(v2, v5, &qword_1001909E0, &qword_10012E018);
  sub_1000D2068();
  type metadata accessor for TriageRequest.HMTContext.BCSArticle();
  sub_100017BA0();
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(&type metadata accessor for TriageRequest.HMTContext.BCSArticle, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000D063C()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000D20E4(v2, v5, &qword_1001909D8, &qword_10012E010);
  sub_1000D2068();
  type metadata accessor for TriageRequest.HMTContext.Article();
  sub_100017BA0();
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(&type metadata accessor for TriageRequest.HMTContext.Article, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

id *sub_1000D0714(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1000D0DCC(v9, a2, &qword_100190AD8, &unk_10012E150, type metadata accessor for PhoneNumberOption);
  v11 = *(type metadata accessor for PhoneNumberOption(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1000D1034(a4 + v12, v9, v10 + v12, type metadata accessor for PhoneNumberOption);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000D0838()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000D20E4(v2, v5, &qword_100190A00, &qword_10012E048);
  v8 = sub_1000D2068();
  type metadata accessor for VPNConfiguration(v8);
  sub_100017BA0();
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(type metadata accessor for VPNConfiguration, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000D0910()
{
  sub_1000D20C8();
  if (v4)
  {
    sub_1000D1F10();
    if (v5 != v6)
    {
      sub_1000D208C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  sub_1000D1F80();
  if (v3)
  {
    sub_100003768(&qword_100190AA8, &qword_10012E0E8);
    v7 = sub_10002CF24();
    v8 = j__malloc_size(v7);
    v7[2] = v2;
    v7[3] = (2 * ((v8 - 32) / 8));
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v7 != v0 || v0 + 32 + 8 * v2 <= (v7 + 4))
    {
      v10 = sub_100025A88();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_100003768(&qword_100190AB0, &unk_10012E0F0);
    sub_100025A88();
    swift_arrayInitWithCopy();
  }
}

void sub_1000D0A10()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000D20E4(v2, v5, &qword_1001909C8, &qword_10012E000);
  v8 = sub_1000D2068();
  type metadata accessor for BatterySuggestion(v8);
  sub_100017BA0();
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(type metadata accessor for BatterySuggestion, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000D0AE8()
{
  sub_1000D20C8();
  if (v4)
  {
    sub_1000D1F10();
    if (v5 != v6)
    {
      sub_1000D208C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  sub_1000D1F80();
  if (v3)
  {
    sub_100003768(&qword_1001909D0, &qword_10012E008);
    v7 = sub_10002CF24();
    j__malloc_size(v7);
    sub_1000D1FE4();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000D211C();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D0BBC()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000D20E4(v2, v5, &qword_1001909C0, &qword_10012DFF8);
  v8 = sub_1000D2068();
  type metadata accessor for AirPodsDeviceInfo(v8);
  sub_100017BA0();
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(type metadata accessor for AirPodsDeviceInfo, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

id *sub_1000D0C94(id *result, int64_t a2, char a3, id *a4)
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
    sub_100003768(&qword_1001909B0, &qword_10012DFE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 56));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003768(&qword_100190998, &qword_10012DFD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1000D0DCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003768(a3, a4);
  v8 = sub_1000D2068();
  v9 = a5(v8);
  sub_100052F6C(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id *sub_1000D0EBC(uint64_t a1, uint64_t a2)
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

  sub_100003768(&qword_100190AB8, &qword_10012E108);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  sub_1000D21B8(v4);
  return v3;
}

id *sub_1000D0F5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003768(a3, a4);
  v6 = sub_10002CF24();
  j__malloc_size(v6);
  sub_1000D1FE4();
  v6[2] = a1;
  v6[3] = v7;
  return v6;
}

id *sub_1000D0FBC(uint64_t a1, uint64_t a2)
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

  sub_100003768(&qword_100190AD0, &qword_10012E120);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  sub_1000D21B8(v4);
  return v3;
}

uint64_t sub_1000D1034(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    sub_1000D210C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_1000D210C();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1000D1104(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return sub_1000D1F20(a3, result);
  }

  return result;
}

char *sub_1000D112C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1000D1F20(a3, result);
  }

  return result;
}

char *sub_1000D114C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1000D1F20(a3, result);
  }

  return result;
}

id *sub_1000D127C(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D17A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1000D129C(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D18D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000D12BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100190998, &qword_10012DFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000D132C()
{
  sub_1000D20C8();
  if (v4)
  {
    sub_1000D1F10();
    if (v5 != v6)
    {
      sub_1000D208C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  sub_1000D1F80();
  if (v3)
  {
    v7 = sub_100003768(&qword_100190AB8, &qword_10012E108);
    v8 = sub_1000D214C(v7);
    v9 = j__malloc_size(v8);
    sub_1000D2098(v9);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = sub_1000D211C();
  if (v1)
  {
    if (v8 != v0 || &v11[56 * v2] <= v10)
    {
      memmove(v10, v11, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D1440(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = a1;
  if (a3)
  {
    sub_1000D1F10();
    if (v10 != v11)
    {
      sub_1000D208C();
      if (v10)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 16);
  if (v9 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    sub_100003768(a5, a6);
    v14 = sub_10002CF24();
    j__malloc_size(v14);
    sub_1000D1FE4();
    v14[2] = v12;
    v14[3] = v15;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v16 = (v14 + 4);
  v17 = (a4 + 32);
  if (v8)
  {
    if (v14 != a4 || &v17[32 * v12] <= v16)
    {
      memmove(v16, v17, 32 * v12);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D1520()
{
  sub_1000D20C8();
  if (v4)
  {
    sub_1000D1F10();
    if (v5 != v6)
    {
      sub_1000D208C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  sub_1000D1F80();
  if (v3)
  {
    v7 = sub_100003768(&qword_100190AD0, &qword_10012E120);
    v8 = sub_1000D214C(v7);
    v9 = j__malloc_size(v8);
    sub_1000D2098(v9);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = sub_1000D211C();
  if (v1)
  {
    if (v8 != v0 || &v11[48 * v2] <= v10)
    {
      memmove(v10, v11, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D15FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = a1;
  if (a3)
  {
    sub_1000D1F10();
    if (v13 != v14)
    {
      sub_1000D208C();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100003768(a5, a6);
  v17 = a7(0);
  sub_100052F6C(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = (2 * ((v23 - v21) / v19));
LABEL_18:
  a7(0);
  sub_100017BA0();
  sub_100077EAC();
  if (v11)
  {
    sub_1000D1034(a4 + v25, v15, v22 + v25, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

id *sub_1000D17A0(id *result, int64_t a2, char a3, id *a4)
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
    sub_100003768(&qword_100190B78, &qword_10012E1C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 8));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003768(&qword_10018B580, &unk_100128EB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1000D18D0(id *result, int64_t a2, char a3, id *a4)
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
    sub_100003768(&qword_1001909A8, &qword_10012DFE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 56));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003768(&qword_1001909A0, &qword_10012DFD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000D1A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GenerationID();
  sub_100017BA0();
  if (*(v7 + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_1000D1AE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for GenerationID();
  sub_100017BA0();
  if (*(v9 + 84) == a3)
  {

    sub_100003CE8(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }
}

void sub_1000D1B90(uint64_t a1)
{
  type metadata accessor for GenerationID();
  if (v1 <= 0x3F)
  {
    sub_10000E928();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000D1C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D1CB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000C31C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000D1D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneNumberOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D1D6C()
{
  result = qword_100190B00;
  if (!qword_100190B00)
  {
    sub_100004D48(&qword_100190AF8, &qword_10012E178);
    sub_1000CFD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B00);
  }

  return result;
}

uint64_t sub_1000D1DF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneNumberOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D1E54()
{
  result = qword_100190B48;
  if (!qword_100190B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B48);
  }

  return result;
}

unint64_t sub_1000D1EA8()
{
  result = qword_100190B50;
  if (!qword_100190B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B50);
  }

  return result;
}

uint64_t sub_1000D1F60()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1000D1FB0()
{
}

uint64_t sub_1000D204C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_1000D1034(v2 + a2, v4, v3 + a2, a1);
}

uint64_t sub_1000D2098(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

id *sub_1000D20E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1000D0DCC(v5, a2, a3, a4, v4);
}

uint64_t sub_1000D214C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1000D2168()
{

  return swift_task_alloc();
}

uint64_t sub_1000D21B8(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_1000D2224@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;
  *(v1 - 80) = 0xE600000000000000;
}

uint64_t sub_1000D2244()
{

  return swift_allocObject();
}

uint64_t sub_1000D2264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return GenerationSchema.Property.init<A>(name:description:type:guides:)(a1, a2, a3, a4, v5, v4, v5, v6);
}

uint64_t sub_1000D22B0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *(a3 + 72) = &type metadata for PurchasesStepProvider;
  v6 = sub_1000258DC();
  *(a3 + 80) = v6;
  *(a3 + 48) = 9;
  *(a3 + 112) = &type metadata for PurchasesStepProvider;
  *(a3 + 120) = v6;
  *(a3 + 88) = 5;
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();

  result = Environment.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v8 & 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

uint64_t sub_1000D2384@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ActionInfoType(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  *(&v23 - v14) = 0;
  swift_storeEnumTagMultiPayload();
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_100003768(&qword_10018C108, &unk_10012AB40);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100121620;
  sub_10003F5BC(v15, v17 + v16);
  sub_10000B4E0(v27, v26);
  sub_10000B4E0(v26, v25);
  v24 = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for ActionInfo(0);
  sub_10003F5BC(v17 + v16, v13);
  swift_setDeallocating();
  sub_10006EB94();
  sub_10003F5BC(v13, v10);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_1000ED69C(v10, 1, sub_10005A438, v18);
  sub_10003F620(v13);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v19 = v24;
  sub_10000B4E0(v25, a3 + 56);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v20 = Environment.init<A>(_:)();
  LOBYTE(v13) = v21;
  sub_10001035C(v25);
  sub_10001035C(v26);
  sub_10001035C(v27);
  result = sub_10003F620(v15);
  *a3 = v20;
  *(a3 + 8) = v13 & 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = v19;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  return result;
}

uint64_t sub_1000D2660()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for MessagesStepOverrideProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PurchasesStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000D27F4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000D2848(char a1)
{
  result = 0x5349445F49464957;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x6E6769536B616577;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x63657465446E7076;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000D2994(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      return;
    default:
      sub_10009E06C();
      break;
  }
}

unint64_t sub_1000D2AAC(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000D2B4C(char a1)
{
  result = 0x4954494E495F5254;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x4C4E574F445F5254;
      break;
    case 3:
      result = 0x48435255505F5254;
      break;
    case 4:
      result = 0x43534255535F5254;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
    case 10:
      result = 0xD000000000000021;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1000D2CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000AF7C();
  v4 = __chkstk_darwin(v3);
  v6 = v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v134 - v7;
  v9 = type metadata accessor for PurchaseHistoryView(0);
  sub_10000AF7C();
  __chkstk_darwin(v10);
  v12 = v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003768(&qword_100190BA0, &qword_10012E550);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v13);
  v15 = v134 - v14;
  v134[3] = sub_100003768(&qword_100190BA8, &qword_10012E558);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v16);
  v18 = v134 - v17;
  v134[2] = sub_100003768(&qword_100190BB0, &qword_10012E560);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v19);
  v21 = v134 - v20;
  v136 = sub_100003768(&qword_100190BB8, &qword_10012E568);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v22);
  sub_10003DC84();
  v134[4] = v23;
  v137 = sub_100003768(&qword_100190BC0, &qword_10012E570);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v24);
  sub_10003DC84();
  v139 = v25;
  v134[5] = sub_100003768(&qword_100190BC8, &qword_10012E578);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v26);
  sub_10003DC84();
  v135 = v27;
  v138 = sub_100003768(&qword_100190BD0, &qword_10012E580);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v28);
  sub_10003DC84();
  switch(a1)
  {
    case 1:
      sub_1000D4A38();
      sub_1000D48EC();
      sub_1000D4788(v106, v107, &unk_10012B6F0);
      *&v141 = Environment.init<A>(_:)();
      *(&v141 + 1) = v108 & 1;
      v142 = xmmword_10012E3C0;
      LOWORD(v143) = 0;
      goto LABEL_15;
    case 2:
      sub_1000D4464();
      sub_10001B21C();
      v141 = 0uLL;
      LOBYTE(v142) = 0;
      goto LABEL_7;
    case 3:
      swift_storeEnumTagMultiPayload();
      sub_1000D4734();
      sub_1000D4960();
      sub_1000D4788(v77, v78, &unk_10012A4A0);
      sub_1000D4A18();
      sub_10000DF20();
      sub_10000EC9C(v79, v80, v81, &qword_10012E558);
      sub_1000D49A4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C50, &qword_10012E5A8);
      sub_1000D4544();
      sub_1000D4678();
      sub_1000D4920();
      _ConditionalContent<>.init(storage:)();
      sub_10000ABCC(v18, &qword_100190BA8, &qword_10012E558);
      sub_1000D4998();
      sub_10000EC9C(v82, v83, v84, v85);
      sub_1000D49D4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C00, &qword_10012E590);
      sub_1000D4218();
      sub_1000D44B8();
      _ConditionalContent<>.init(storage:)();
      sub_10000DF20();
      sub_10000ABCC(v86, v87, v88);
      sub_1000D4998();
      sub_10000EC9C(v89, v90, v91, v92);
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4938();
      goto LABEL_9;
    case 4:
      v141 = xmmword_10012E3B0;
      sub_1000D40E4();
      sub_1000D4138();
      v142 = 0u;
      v143 = 0u;
      v144 = 0;
      sub_1000D498C();
      _ConditionalContent<>.init(storage:)();
      v38 = v148;
      v39 = v146;
      v40 = v147;
      v41 = v139;
      *v139 = v145;
      v41[1] = v39;
      v41[2] = v40;
      *(v41 + 48) = v38;
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4998();
      return _ConditionalContent<>.init(storage:)();
    case 5:
    case 6:
      *&v141 = sub_1000D2B4C(a1);
      *(&v141 + 1) = v30;
      LOBYTE(v142) = 1;
      sub_1000D4464();
      sub_10001B21C();
LABEL_7:
      sub_1000D498C();
      _ConditionalContent<>.init(storage:)();
      v141 = v145;
      v142 = v146;
      LOWORD(v143) = 256;
      sub_100003768(&qword_100190C10, &qword_10012E598);
      sub_100003768(&qword_100190C30, &qword_10012E5A0);
      sub_1000D42A4();
      sub_1000D43D8();
      sub_1000D498C();
      sub_10000DF20();
      _ConditionalContent<>.init(storage:)();
      v68 = sub_1000D49C4();
      v69 = v135;
      *v135 = v68;
      v69[1] = v70;
      v69[2].n128_u8[0] = v71;
      v69[2].n128_u8[1] = v72;
      sub_1000D49D4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C00, &qword_10012E590);
      sub_1000D4218();
      sub_1000D44B8();
      _ConditionalContent<>.init(storage:)();
      sub_1000D4998();
      sub_10000EC9C(v73, v74, v75, v76);
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4938();
LABEL_9:
      sub_10000DF20();
      goto LABEL_17;
    case 7:
      v134[1] = v29;
      type metadata accessor for PurchasesFlowViewModel(0);
      sub_1000D48EC();
      sub_1000D4788(v43, v44, &unk_10012B6F0);
      *v12 = Environment.init<A>(_:)();
      v12[8] = v45 & 1;
      LOBYTE(v141) = 0;
      sub_1000D498C();
      State.init(wrappedValue:)();
      v46 = *(&v145 + 1);
      v12[16] = v145;
      *(v12 + 3) = v46;
      v47 = type metadata accessor for URL();
      sub_100003CE8(v8, 1, 1, v47);
      sub_10000EC9C(v8, v6, &qword_100188EE0, &unk_100122AE0);
      State.init(wrappedValue:)();
      sub_10000ABCC(v8, &qword_100188EE0, &unk_100122AE0);
      v48 = &v12[*(v9 + 28)];
      *v48 = 0xD000000000000013;
      *(v48 + 1) = 0x80000001001334F0;
      v12[*(v9 + 32)] = 8;
      sub_100098744(v12, v15);
      swift_storeEnumTagMultiPayload();
      sub_1000D4734();
      sub_1000D4960();
      sub_1000D4788(v49, v50, &unk_10012A4A0);
      sub_1000D4A18();
      sub_10000DF20();
      sub_10000EC9C(v51, v52, v53, &qword_10012E558);
      sub_1000D49A4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C50, &qword_10012E5A8);
      sub_1000D4544();
      sub_1000D4678();
      sub_1000D4920();
      _ConditionalContent<>.init(storage:)();
      sub_10000ABCC(v18, &qword_100190BA8, &qword_10012E558);
      sub_1000D4998();
      sub_10000EC9C(v54, v55, v56, v57);
      sub_1000D49D4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C00, &qword_10012E590);
      sub_1000D4218();
      sub_1000D44B8();
      _ConditionalContent<>.init(storage:)();
      sub_10000DF20();
      sub_10000ABCC(v58, v59, v60);
      sub_1000D49B4();
      sub_1000D4998();
      sub_10000EC9C(v61, v62, v63, v64);
      sub_1000D49FC();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4978();
      _ConditionalContent<>.init(storage:)();
      sub_10000DF20();
      sub_10000ABCC(v65, v66, v67);
      return sub_100098C50(v12);
    case 8:
      sub_1000D4A38();
      sub_1000D48EC();
      sub_1000D4788(v123, v124, &unk_10012B6F0);
      v125 = Environment.init<A>(_:)();
      sub_1000D4904(v125, v126);
      *&v142 = v128 + 7;
      *(&v142 + 1) = v127;
      LOWORD(v143) = 262;
LABEL_15:
      sub_1000D45D0();
      sub_1000D4624();

      sub_1000D498C();
      _ConditionalContent<>.init(storage:)();
      *v21 = sub_1000D49C4();
      *(v21 + 1) = v129;
      v21[32] = v130;
      v21[33] = v131;
      sub_1000D49A4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C50, &qword_10012E5A8);
      sub_1000D4544();
      sub_1000D4678();
      sub_1000D4920();
      _ConditionalContent<>.init(storage:)();
      sub_10000EC9C(v9, v135, &qword_100190BB8, &qword_10012E568);
      sub_1000D49D4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C00, &qword_10012E590);
      sub_1000D4218();
      sub_1000D44B8();
      _ConditionalContent<>.init(storage:)();
      sub_10000ABCC(v9, &qword_100190BB8, &qword_10012E568);
      v132 = sub_1000D49B4();
      sub_10000EC9C(v132, v133, &qword_100190BD0, &qword_10012E580);
      sub_1000D49FC();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4978();
      _ConditionalContent<>.init(storage:)();

      v93 = a1;
      v94 = &qword_100190BD0;
      goto LABEL_16;
    case 9:
      sub_1000D4A38();
      sub_1000D48EC();
      v33 = sub_1000D4788(v31, v32, &unk_10012B6F0);
      v34 = sub_1000D49E0(v33);
      sub_1000D4904(v34, v35);
      *&v142 = v37 + 14;
      *(&v142 + 1) = v36;
      LOBYTE(v143) = 1;
      goto LABEL_13;
    case 10:
      sub_1000D4A38();
      sub_1000D48EC();
      v111 = sub_1000D4788(v109, v110, &unk_10012B6F0);
      v112 = sub_1000D49E0(v111);
      sub_1000D4904(v112, v113);
      *&v142 = v115 + 14;
      *(&v142 + 1) = v114;
      LOBYTE(v143) = 0;
LABEL_13:
      sub_1000D4330();
      sub_1000D4384();

      sub_1000D498C();
      _ConditionalContent<>.init(storage:)();
      v141 = v145;
      v142 = v146;
      LOWORD(v143) = v147;
      sub_100003768(&qword_100190C10, &qword_10012E598);
      sub_100003768(&qword_100190C30, &qword_10012E5A0);
      sub_1000D42A4();
      sub_1000D43D8();
      sub_1000D498C();
      _ConditionalContent<>.init(storage:)();
      v116 = sub_1000D49C4();
      v117 = v135;
      *v135 = v116;
      v117[1] = v118;
      v117[2].n128_u8[0] = v119;
      v117[2].n128_u8[1] = v120;
      sub_1000D49D4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C00, &qword_10012E590);
      sub_1000D4218();
      sub_1000D44B8();
      _ConditionalContent<>.init(storage:)();
      v121 = sub_1000D49B4();
      sub_10000EC9C(v121, v122, &qword_100190BD0, &qword_10012E580);
      sub_1000D49FC();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4978();
      _ConditionalContent<>.init(storage:)();

      v93 = a1;
      v94 = &qword_100190BD0;
LABEL_16:
      v95 = &qword_10012E580;
LABEL_17:
      result = sub_10000ABCC(v93, v94, v95);
      break;
    default:
      type metadata accessor for PurchasesFlowViewModel(0);
      sub_1000D48EC();
      v98 = sub_1000D4788(v96, v97, &unk_10012B6F0);
      v99 = sub_1000D49E0(v98);
      v101 = v100;
      LOBYTE(v141) = 0;
      sub_1000D498C();
      State.init(wrappedValue:)();
      *&v141 = v99;
      *(&v141 + 1) = v101 & 1;
      *&v142 = v145;
      *(&v142 + 1) = *(&v145 + 1);
      *&v143 = 0xD000000000000013;
      *(&v143 + 1) = 0x8000000100133460;
      v144 = 1;
      sub_1000D40E4();
      sub_1000D4138();

      sub_1000D498C();
      _ConditionalContent<>.init(storage:)();
      v102 = v148;
      v103 = v146;
      v104 = v147;
      v105 = v139;
      *v139 = v145;
      v105[1] = v103;
      v105[2] = v104;
      *(v105 + 48) = v102;
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4938();

      break;
  }

  return result;
}

unint64_t sub_1000D3C74(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176E00, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

void sub_1000D3CC0(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
      return;
    default:
      sub_10009E06C();
      break;
  }
}

unint64_t sub_1000D3E6C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D3C74(*a1);
  *a2 = result;
  return result;
}

void sub_1000D3E9C(void *a1@<X8>)
{
  sub_1000D3CC0(*v1);
  *a1 = v3;
  a1[1] = v4;
}

void sub_1000D3EC8(uint64_t *a1@<X8>)
{
  sub_1000E7488(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1000D3F28()
{
  result = qword_100190B80;
  if (!qword_100190B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B80);
  }

  return result;
}

uint64_t sub_1000D3FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000D3FE4()
{
  result = qword_100190B88;
  if (!qword_100190B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B88);
  }

  return result;
}

unint64_t sub_1000D4038()
{
  result = qword_100190B90;
  if (!qword_100190B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B90);
  }

  return result;
}

unint64_t sub_1000D4090()
{
  result = qword_100190B98;
  if (!qword_100190B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B98);
  }

  return result;
}

unint64_t sub_1000D40E4()
{
  result = qword_100190BD8;
  if (!qword_100190BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190BD8);
  }

  return result;
}

unint64_t sub_1000D4138()
{
  result = qword_100190BE0;
  if (!qword_100190BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190BE0);
  }

  return result;
}

unint64_t sub_1000D418C()
{
  result = qword_100190BF0;
  if (!qword_100190BF0)
  {
    sub_100004D48(&qword_100190BD0, &qword_10012E580);
    sub_1000D4218();
    sub_1000D44B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190BF0);
  }

  return result;
}

unint64_t sub_1000D4218()
{
  result = qword_100190BF8;
  if (!qword_100190BF8)
  {
    sub_100004D48(&qword_100190C00, &qword_10012E590);
    sub_1000D42A4();
    sub_1000D43D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190BF8);
  }

  return result;
}

unint64_t sub_1000D42A4()
{
  result = qword_100190C08;
  if (!qword_100190C08)
  {
    sub_100004D48(&qword_100190C10, &qword_10012E598);
    sub_1000D4330();
    sub_1000D4384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C08);
  }

  return result;
}

unint64_t sub_1000D4330()
{
  result = qword_100190C18;
  if (!qword_100190C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C18);
  }

  return result;
}

unint64_t sub_1000D4384()
{
  result = qword_100190C20;
  if (!qword_100190C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C20);
  }

  return result;
}

unint64_t sub_1000D43D8()
{
  result = qword_100190C28;
  if (!qword_100190C28)
  {
    sub_100004D48(&qword_100190C30, &qword_10012E5A0);
    sub_1000D4464();
    sub_10001B21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C28);
  }

  return result;
}

unint64_t sub_1000D4464()
{
  result = qword_100190C38;
  if (!qword_100190C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C38);
  }

  return result;
}

unint64_t sub_1000D44B8()
{
  result = qword_100190C40;
  if (!qword_100190C40)
  {
    sub_100004D48(&qword_100190BB8, &qword_10012E568);
    sub_1000D4544();
    sub_1000D4678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C40);
  }

  return result;
}

unint64_t sub_1000D4544()
{
  result = qword_100190C48;
  if (!qword_100190C48)
  {
    sub_100004D48(&qword_100190C50, &qword_10012E5A8);
    sub_1000D45D0();
    sub_1000D4624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C48);
  }

  return result;
}

unint64_t sub_1000D45D0()
{
  result = qword_100190C58;
  if (!qword_100190C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C58);
  }

  return result;
}

unint64_t sub_1000D4624()
{
  result = qword_100190C60;
  if (!qword_100190C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C60);
  }

  return result;
}

unint64_t sub_1000D4678()
{
  result = qword_100190C68;
  if (!qword_100190C68)
  {
    sub_100004D48(&qword_100190BA8, &qword_10012E558);
    sub_1000D4734();
    sub_1000D4788(&qword_100190C78, type metadata accessor for PurchaseHistoryView, &unk_10012A4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C68);
  }

  return result;
}

unint64_t sub_1000D4734()
{
  result = qword_100190C70;
  if (!qword_100190C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C70);
  }

  return result;
}

uint64_t sub_1000D4788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000D47D0()
{
  result = qword_100190C80;
  if (!qword_100190C80)
  {
    sub_100004D48(&qword_100190BE8, &qword_10012E588);
    sub_1000D40E4();
    sub_1000D4138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C80);
  }

  return result;
}

unint64_t sub_1000D4860()
{
  result = qword_100190C88;
  if (!qword_100190C88)
  {
    sub_100004D48(qword_100190C90, &qword_10012E5B0);
    sub_1000D418C();
    sub_1000D47D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C88);
  }

  return result;
}

uint64_t sub_1000D4904(uint64_t result, char a2)
{
  *(v2 - 208) = result;
  *(v2 - 200) = a2 & 1;
  return result;
}

uint64_t sub_1000D4938()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000D49E0(uint64_t a1)
{

  return Environment.init<A>(_:)();
}

uint64_t sub_1000D49FC()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000D4A18()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000D4A38()
{

  return type metadata accessor for PurchasesFlowViewModel(0);
}

uint64_t sub_1000D4A58(uint64_t a1)
{
  sub_100004D48(&qword_100189398, &unk_100122910);
  v1 = type metadata accessor for Result();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1000D4AD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) > 3)
  {
    goto LABEL_6;
  }

  v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
  if (HIWORD(v9))
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_22:
    v11 = *(a1 + v4);
    if (v11 >= 2)
    {
      v12 = (v11 ^ 0xFF) + 1;
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= 3)
    {
      return v12 - 2;
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFF)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if (v9 < 2)
  {
    goto LABEL_22;
  }

LABEL_6:
  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 253;
}

void sub_1000D4C18(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x1000D4DE0);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -2 - a2;
        }

        break;
    }
  }
}

unint64_t sub_1000D4E20(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176F28, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D4E6C(char a1)
{
  if (!a1)
  {
    return 0x6E496E676973;
  }

  if (a1 == 1)
  {
    return 0x65526E496E676973;
  }

  return 0x7361507465736572;
}

unint64_t sub_1000D4EFC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D4E20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D4F2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D4E6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000D4F58(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_100188288 != -1)
      {
        swift_once();
      }

      v2 = 0x80000001001389E0;
      v3 = 0xD000000000000036;
      v4 = &qword_100190D18;
    }

    else
    {
      if (qword_100188298 != -1)
      {
        swift_once();
      }

      v3 = 0;
      v2 = 0;
      v4 = &qword_100190D38;
    }
  }

  else
  {
    if (qword_100188290 != -1)
    {
      swift_once();
    }

    v3 = 0;
    v2 = 0;
    v4 = &qword_100190D28;
  }

  v6 = *v4;
  v5 = v4[1];

  v9 = &type metadata for AccountActionInfoType;
  v10 = sub_1000D53CC();
  v8[0] = a1;
  return sub_1000ED910(v6, v5, v3, v2, v8);
}

uint64_t sub_1000D50B4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100190D18 = result;
  unk_100190D20 = v3;
  return result;
}

uint64_t sub_1000D51BC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100190D28 = result;
  unk_100190D30 = v3;
  return result;
}

uint64_t sub_1000D52C4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100190D38 = result;
  unk_100190D40 = v3;
  return result;
}

unint64_t sub_1000D53CC()
{
  result = qword_100190D48;
  if (!qword_100190D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccountActionInfoType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000D54ECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000D5528()
{
  result = qword_100190D50;
  if (!qword_100190D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D50);
  }

  return result;
}

unint64_t sub_1000D557C(uint64_t a1)
{
  result = sub_1000D55A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D55A4()
{
  result = qword_100190D58;
  if (!qword_100190D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrustedPhoneNumberStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000D5700);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1000D5754@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_1000402B4();
      v53 = v10 | 8;
      v58 = v9;
      LOWORD(v59) = 256;
      sub_1000D5D50();
      v11 = sub_1000D5DA4();
      sub_100005960(v11, &type metadata for TrustedPhoneNumberAccessView, &type metadata for TrustedPhoneNumberStartRecoveryView, v12, v11, v13, v14, v15, v53);
      v16 = _ConditionalContent<>.init(storage:)();
      sub_1000402C8(v16, v17, v18, v19, v20, v21, v22, v23, v54, v58, 2, 0, v59, v60, v61);
    }

    else
    {
      sub_1000402B4();
      v55 = v44 + 10;
    }

    sub_100003768(&qword_100190D88, &qword_10012E8F0);
    sub_1000D5CC4();
    v45 = sub_1000D5DF8();
    sub_100005960(v45, v46, &type metadata for TrustedPhoneNumberAccountRecoveryView, v47, v45, v48, v49, v50, v55);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    LOBYTE(v52) = 0;
    sub_100005960(a1, &type metadata for Bool, a2, a3, a4, a5, a6, a7, v52);
    State.init(wrappedValue:)();
    LOWORD(v59) = 1;
    sub_1000D5D50();
    sub_1000D5DA4();

    sub_100005960(v24, &type metadata for TrustedPhoneNumberAccessView, &type metadata for TrustedPhoneNumberStartRecoveryView, v25, v26, v27, v28, v29, v61);
    v30 = _ConditionalContent<>.init(storage:)();
    sub_1000402C8(v30, v31, v32, v33, v34, v35, v36, v37, v56, *(&v61 + 1), 0xD000000000000022, 0x80000001001335A0, v59, v60, v61);
    sub_100003768(&qword_100190D88, &qword_10012E8F0);
    sub_1000D5CC4();
    v38 = sub_1000D5DF8();
    sub_100005960(v38, v39, &type metadata for TrustedPhoneNumberAccountRecoveryView, v40, v38, v41, v42, v43, v57);
    _ConditionalContent<>.init(storage:)();
  }

  result = v61;
  *a8 = v61;
  *(a8 + 16) = v62;
  *(a8 + 32) = v63;
  *(a8 + 34) = v64;
  return result;
}

unint64_t sub_1000D595C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176F90, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D59A8(char a1)
{
  result = 0xD000000000000022;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD00000000000002ALL;
    }

    else
    {
      return 0xD00000000000002CLL;
    }
  }

  return result;
}

unint64_t sub_1000D5A24@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D595C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000D5A54@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000D59A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000D5AB4()
{
  result = qword_100190D60;
  if (!qword_100190D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D60);
  }

  return result;
}

unint64_t sub_1000D5B08()
{
  result = qword_100190D68;
  if (!qword_100190D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D68);
  }

  return result;
}

uint64_t sub_1000D5B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000D5BC4()
{
  result = qword_100190D70;
  if (!qword_100190D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D70);
  }

  return result;
}

unint64_t sub_1000D5C18()
{
  result = qword_100190D78;
  if (!qword_100190D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D78);
  }

  return result;
}

unint64_t sub_1000D5C70()
{
  result = qword_100190D80;
  if (!qword_100190D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D80);
  }

  return result;
}

unint64_t sub_1000D5CC4()
{
  result = qword_100190D90;
  if (!qword_100190D90)
  {
    sub_100004D48(&qword_100190D88, &qword_10012E8F0);
    sub_1000D5D50();
    sub_1000D5DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D90);
  }

  return result;
}

unint64_t sub_1000D5D50()
{
  result = qword_100190D98;
  if (!qword_100190D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190D98);
  }

  return result;
}

unint64_t sub_1000D5DA4()
{
  result = qword_100190DA0;
  if (!qword_100190DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190DA0);
  }

  return result;
}

unint64_t sub_1000D5DF8()
{
  result = qword_100190DA8;
  if (!qword_100190DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190DA8);
  }

  return result;
}

unint64_t sub_1000D5E50()
{
  result = qword_100190DB0;
  if (!qword_100190DB0)
  {
    sub_100004D48(&qword_100190DB8, &qword_10012E8F8);
    sub_1000D5CC4();
    sub_1000D5DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190DB0);
  }

  return result;
}

uint64_t sub_1000D5EDC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v7 = v1;
  sub_1000D7178();
  sub_1000D7130(v3, v4, &unk_10012E958);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__flowIdentifier;
  swift_beginAccess();
  return sub_10002AE78(v7 + v5, a1);
}

uint64_t sub_1000D5F94(uint64_t a1)
{
  v2 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10002AE78(a1, &v6 - v3);
  return sub_1000D6028(v4);
}

uint64_t sub_1000D6028(uint64_t a1)
{
  v3 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-v4];
  v6 = OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__flowIdentifier;
  swift_beginAccess();
  sub_10002AE78(v1 + v6, v5);
  v7 = sub_1000D61AC(v5, a1);
  sub_100044F98(v5, &unk_10018A300, &unk_1001241E0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    sub_1000D64E8(v9, sub_1000D7114, &v11[-32]);
  }

  else
  {
    swift_beginAccess();
    sub_1000D707C(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_100044F98(a1, &unk_10018A300, &unk_1001241E0);
}

uint64_t sub_1000D61AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100003768(&qword_100188FA0, &qword_10012A190);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_10002AE78(a1, &v20 - v13);
  sub_10002AE78(a2, &v14[v15]);
  if (sub_10000E5F0(v14, 1, v4) != 1)
  {
    sub_10002AE78(v14, v10);
    if (sub_10000E5F0(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1000D7130(&qword_100188FA8, &type metadata accessor for SupportFlowIdentifier, &protocol conformance descriptor for SupportFlowIdentifier);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_100044F98(v14, &unk_10018A300, &unk_1001241E0);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (sub_10000E5F0(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100044F98(v14, &qword_100188FA0, &qword_10012A190);
    v16 = 1;
    return v16 & 1;
  }

  sub_100044F98(v14, &unk_10018A300, &unk_1001241E0);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1000D647C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__flowIdentifier;
  swift_beginAccess();
  sub_1000D707C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1000D64E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000D7178();
  sub_1000D7130(v3, v4, &unk_10012E958);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000D6590()
{
  swift_getKeyPath();
  sub_1000D7178();
  sub_1000D7130(v1, v2, &unk_10012E958);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__isPresented);
}

uint64_t sub_1000D6628@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000D6590();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000D6680(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__isPresented) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__isPresented) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = __chkstk_darwin(KeyPath);
    v5[2] = v1;
    v6 = v2;
    sub_1000D64E8(v4, sub_1000D7064, v5);
  }

  return result;
}

uint64_t sub_1000D6730(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__flowIdentifier;
  v11 = type metadata accessor for SupportFlowIdentifier();
  sub_100003CE8(v3 + v10, 1, 1, v11);
  *(v3 + OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__isPresented) = 0;
  ObservationRegistrar.init()();
  *(v3 + 16) = a1;
  sub_10002AE78(a2, v9);
  v12 = a1;
  sub_1000D6028(v9);
  sub_1000D6680(a3);

  sub_100044F98(a2, &unk_10018A300, &unk_1001241E0);
  return v3;
}

uint64_t sub_1000D6848()
{
  sub_100044F98(v0 + OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel__flowIdentifier, &unk_10018A300, &unk_1001241E0);
  v1 = OBJC_IVAR____TtC11SupportFlow20RemoteAlertViewModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1000D68C4()
{
  sub_1000D6848();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for RemoteAlertViewModel(uint64_t a1)
{
  result = qword_100190E00;
  if (!qword_100190E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D6970(uint64_t a1)
{
  sub_10000E8D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000D6A50(char *a1)
{
  v2 = type metadata accessor for ClientFlowPresentationState();
  sub_100008780();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v70 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v73 = &v63 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v63 - v11;
  __chkstk_darwin(v10);
  v14 = &v63 - v13;
  v72 = type metadata accessor for Logger();
  sub_100008780();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v63 - v21;
  static Logger.supportFlowUI.getter();
  v71 = v4;
  v23 = *(v4 + 16);
  v69 = a1;
  v74 = v23;
  v23(v14, a1, v2);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v67 = v20;
  v65 = v12;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v68 = v16;
    v28 = v27;
    v64 = swift_slowAlloc();
    v75 = v64;
    *v28 = 136315138;
    v74(v12, v14, v2);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    v32 = v71;
    v33 = sub_1000D7190(v71);
    v34(v33);
    v35 = sub_10009CACC(v29, v31, &v75);
    v36 = v72;

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "flow state has changed to %s", v28, 0xCu);
    v37 = v64;
    sub_1000086BC(v64);
    sub_100008744(v37);
    v38 = v28;
    v16 = v68;
    sub_100008744(v38);

    v39 = v36;
    v40 = *(v16 + 8);
    v40(v22, v39);
    v41 = v32;
  }

  else
  {

    v41 = v71;
    v42 = sub_1000D7190(v71);
    v43(v42);
    v40 = *(v16 + 8);
    v40(v22, v72);
  }

  v44 = v73;
  v45 = v69;
  v46 = v74;
  v74(v73, v69, v2);
  result = (*(v41 + 88))(v44, v2);
  v48 = v70;
  if (result == enum case for ClientFlowPresentationState.success(_:) || result == enum case for ClientFlowPresentationState.failure(_:))
  {
    return sub_1000D6680(0);
  }

  if (result != enum case for ClientFlowPresentationState.unknown(_:) && result != enum case for ClientFlowPresentationState.loading(_:) && result != enum case for ClientFlowPresentationState.loaded(_:))
  {
    if (result == enum case for ClientFlowPresentationState.cancelled(_:))
    {
      return sub_1000D6680(0);
    }

    v68 = v16;
    v51 = v67;
    static Logger.supportFlowUI.getter();
    v46(v48, v45, v2);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v40;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v75 = v56;
      *v55 = 136315138;
      v46(v65, v48, v2);
      v57 = String.init<A>(describing:)();
      v58 = v48;
      v60 = v59;
      v61 = v66;
      v66(v58, v2);
      v62 = sub_10009CACC(v57, v60, &v75);

      *(v55 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v52, v53, "Unknown flow state encountered: %s", v55, 0xCu);
      sub_1000086BC(v56);
      sub_100008744(v56);
      sub_100008744(v55);

      v54(v67, v72);
    }

    else
    {

      v61 = v66;
      v66(v48, v2);
      v40(v51, v72);
    }

    return v61(v73, v2);
  }

  return result;
}

uint64_t sub_1000D700C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000D6590();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000D707C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D7130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D7190@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 168) = *(a1 + 8);
  return result;
}

uint64_t sub_1000D71A4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A5818 = result;
  qword_1001A5820 = v3;
  return result;
}

uint64_t sub_1000D72C4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A5828 = result;
  qword_1001A5830 = v3;
  return result;
}

unint64_t sub_1000D7404(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100175B00, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D7450(char a1)
{
  result = 21825;
  switch(a1)
  {
    case 1:
      result = 1094939238;
      break;
    case 2:
      result = 16707;
      break;
    case 3:
      result = 18499;
      break;
    case 4:
      result = 20035;
      break;
    case 5:
      result = 17732;
      break;
    case 6:
      result = 21317;
      break;
    case 7:
      result = 16967;
      break;
    case 8:
      result = 17737;
      break;
    case 9:
      result = 20041;
      break;
    case 10:
      result = 21577;
      break;
    case 11:
      result = 22605;
      break;
    case 12:
      result = 23118;
      break;
    case 13:
      result = 18259;
      break;
    case 14:
      result = 21333;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000D7558@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D7404(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WalletServiceProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000D7654);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000D768C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D7450(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000D76BC()
{
  result = qword_100190EA8;
  if (!qword_100190EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190EA8);
  }

  return result;
}

__n128 sub_1000D7760(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000D7774(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D77B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000D7828@<X0>(uint64_t a5@<X8>)
{
  sub_100003768(&qword_100190EB0, &qword_10012ED08);
  type metadata accessor for WelcomeView();
  sub_100004D48(&qword_100190EB8, &qword_10012ED10);
  sub_1000D8690();
  sub_100004D48(&qword_100190EC0, &qword_10012ED18);
  sub_1000D86E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  if (qword_1001881D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1001A5758;
  KeyPath = swift_getKeyPath();
  v8 = (a5 + *(sub_100003768(&qword_100190EE0, &qword_10012ED58) + 36));
  *v8 = KeyPath;
  v8[1] = v6;
}

uint64_t sub_1000D79BC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for WelcomeView();
  v12 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v28 = a3;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    v25 = v8;
    v15 = v14;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v25);
  }

  v30 = &type metadata for SupportFlowWelcomeContent;
  v31 = sub_1000961EC();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = a2 & 1;
  *(v16 + 24) = a2 & 1;
  *(v16 + 32) = a3;
  v18 = a4 & 1;
  *(v16 + 40) = v18;

  j__swift_retain(a1);
  v19 = v26;
  v20 = WelcomeView.init(content:actionHandler:)();
  __chkstk_darwin(v20);
  *(&v25 - 4) = a1;
  *(&v25 - 24) = v17;
  *(&v25 - 2) = a3;
  *(&v25 - 8) = v18;
  sub_100003768(&qword_100190EB8, &qword_10012ED10);
  sub_1000D8690();
  v21 = sub_100004D48(&qword_100190EC0, &qword_10012ED18);
  v22 = sub_1000D86E8();
  v28 = v21;
  v29 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  View.toolbar<A>(content:)();
  return (*(v12 + 8))(v19, v23);
}

uint64_t sub_1000D7D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a5 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  sub_10009386C();
}

uint64_t sub_1000D7E74@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = sub_100003768(&qword_100190EE8, &qword_10012ED60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100003768(&qword_100190ED0, &qword_10012ED20);
  v33 = *(v10 - 8);
  __chkstk_darwin(v10);
  v32 = &v28 - v11;
  v12 = type metadata accessor for EnvironmentValues();
  v30 = *(v12 - 8);
  v31 = v12;
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003768(&qword_100190EC0, &qword_10012ED18);
  v16 = __chkstk_darwin(v15);
  v34 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v28 - v18;

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    v29 = v19;
    v21 = v20;
    os_log(_:dso:log:_:_:)();

    v19 = v29;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(a1);
    (*(v30 + 8))(v14, v31);
    a1 = v36;
  }

  if (a1)
  {
    static ToolbarItemPlacement.topBarTrailing.getter();
    sub_100003768(&qword_100190EF0, &qword_10012ED68);
    sub_1000D8A90();
    v22 = v32;
    ToolbarItem<>.init(placement:content:)();
    v23 = sub_10000AAEC(&qword_100190ED8, &qword_100190ED0, &qword_10012ED20, &protocol conformance descriptor for ToolbarItem<A, B>);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v24 = v34;
    (*(v6 + 16))(v34, v8, v5);
    sub_100003CE8(v24, 0, 1, v5);
    v36 = v10;
    v37 = v23;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();

    sub_1000D8A20(v24);
    (*(v6 + 8))(v8, v5);
    (*(v33 + 8))(v22, v10);
  }

  else
  {
    v25 = v34;
    sub_100003CE8(v34, 1, 1, v5);
    v26 = sub_10000AAEC(&qword_100190ED8, &qword_100190ED0, &qword_10012ED20, &protocol conformance descriptor for ToolbarItem<A, B>);
    v36 = v10;
    v37 = v26;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000D8A20(v25);
  }

  sub_1000D86E8();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return sub_1000D8A20(v19);
}

uint64_t sub_1000D83C0@<X0>(uint64_t a2@<X8>)
{

  sub_100003768(&qword_10018B328, &unk_100125A30);
  sub_100045D24();
  Button.init(action:label:)();
  static Color.primary.getter();
  Color._adaptive.getter();

  KeyPath = swift_getKeyPath();
  v4 = AnyShapeStyle.init<A>(_:)();
  result = sub_100003768(&qword_100190EF0, &qword_10012ED68);
  v6 = (a2 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = v4;
  return result;
}

uint64_t sub_1000D84BC()
{
  v0 = type metadata accessor for ClientFlowPresentationState();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ClientFlowPresentationState.cancelled(_:));
  return SupportFlowSceneHostingClientManager.flowState.setter();
}

uint64_t sub_1000D8580@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = a1 + *(sub_100003768(&qword_10018B328, &unk_100125A30) + 36);
  v4 = *(sub_100003768(&qword_10018ACB0, &qword_100125420) + 28);
  v5 = enum case for Image.Scale.large(_:);
  v6 = type metadata accessor for Image.Scale();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

unint64_t sub_1000D8690()
{
  result = qword_10018B2B0;
  if (!qword_10018B2B0)
  {
    type metadata accessor for WelcomeView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B2B0);
  }

  return result;
}

unint64_t sub_1000D86E8()
{
  result = qword_100190EC8;
  if (!qword_100190EC8)
  {
    sub_100004D48(&qword_100190EC0, &qword_10012ED18);
    sub_100004D48(&qword_100190ED0, &qword_10012ED20);
    sub_10000AAEC(&qword_100190ED8, &qword_100190ED0, &qword_10012ED20, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190EC8);
  }

  return result;
}

uint64_t sub_1000D8800(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t sub_1000D88F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000D8920@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000D897C()
{
  j__swift_release(*(v0 + 16));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000D8A20(uint64_t a1)
{
  v2 = sub_100003768(&qword_100190EC0, &qword_10012ED18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D8A90()
{
  result = qword_100190EF8;
  if (!qword_100190EF8)
  {
    sub_100004D48(&qword_100190EF0, &qword_10012ED68);
    sub_10000AAEC(&qword_10018B320, &qword_10018B318, &unk_10012ED70, &protocol conformance descriptor for Button<A>);
    sub_10000AAEC(&qword_10018F2C0, &qword_10018F2B0, &qword_10012C290, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190EF8);
  }

  return result;
}

uint64_t sub_1000D8B7C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000D8BD8()
{
  result = qword_100190F00;
  if (!qword_100190F00)
  {
    sub_100004D48(&qword_100190EE0, &qword_10012ED58);
    sub_10000AAEC(&qword_100190F08, &qword_100190F10, &unk_10012EDE0, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_10000AAEC(&qword_1001895D0, &qword_1001895D8, &qword_10012F6F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190F00);
  }

  return result;
}

BOOL sub_1000D8CBC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176FF8, v2);

  return v3 != 0;
}

BOOL sub_1000D8D10@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D8CBC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D8D60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E7418();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000D8D88()
{
  if (qword_1001882B0 != -1)
  {
    swift_once();
  }

  v0 = qword_100190F18;
  v1 = unk_100190F20;
  v4 = &type metadata for BatteryActionInfoType;
  v5 = sub_1000D8F3C();

  return sub_1000ED3F8(v0, v1, 0xD000000000000018, 0x8000000100136CE0, v3);
}

uint64_t sub_1000D8E34()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_100190F18 = result;
  unk_100190F20 = v3;
  return result;
}

unint64_t sub_1000D8F3C()
{
  result = qword_100190F28;
  if (!qword_100190F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190F28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BatteryActionInfoType(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1000D902CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000D9064(uint64_t a1)
{
  result = sub_1000D8F3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D9090()
{
  result = qword_100190F30;
  if (!qword_100190F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190F30);
  }

  return result;
}

unint64_t sub_1000D90E4(uint64_t a1)
{
  result = sub_1000D910C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D910C()
{
  result = qword_100190F38;
  if (!qword_100190F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190F38);
  }

  return result;
}

uint64_t sub_1000D918C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 40) = &type metadata for SoftwareUpdateStepProvider;
  *(a4 + 48) = sub_100057DB0();
  *(a4 + 16) = a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0;
}

uint64_t sub_1000D9238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v12 = &type metadata for CompromisedAccountStepProvider;
  v13 = sub_100010248();
  v11[0] = a3;
  type metadata accessor for SharedResetPasswordViewModel();
  *(swift_allocObject() + 16) = 0;

  State.init(wrappedValue:)();
  *a4 = v9;
  *(a4 + 8) = v10;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  result = sub_10000B18C(v11, a4 + 32);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  return result;
}

uint64_t sub_1000D9318()
{
  sub_10009C13C(v0 + 14);
  memcpy(v0 + 2, v0 + 14, 0x5BuLL);
  if (qword_1001881E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = sub_10000C2D4(v1, qword_1001A5760);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    sub_10004F550(&_mh_execute_header, v4, v5, "*** Wi-Fi data loaded.");
  }

  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_1000D9470;

  return static VPNDiagnosticsDataProvider.provideData()();
}

uint64_t sub_1000D9470(uint64_t a1, __int16 a2)
{
  v4 = *v3;
  *(v4 + 232) = v2;
  *(v4 + 224) = a2;
  *(v4 + 208) = v3;
  *(v4 + 216) = a1;
  *(v4 + 264) = v2;

  if (v2)
  {
    v5 = sub_1000D969C;
  }

  else
  {
    v5 = sub_1000D9590;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000D9590(uint64_t a1)
{
  v12 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    sub_10004F550(&_mh_execute_header, v4, v5, "*** Wi-Fi VPN data loaded.");
  }

  v6 = *(v1 + 216);
  v7 = *(v1 + 224);
  v8 = *(v1 + 240);

  memcpy(v11, (v1 + 16), 0x5BuLL);
  memcpy(v8, v11, 0x60uLL);
  *(v8 + 96) = v6;
  *(v8 + 104) = v7 & 1;
  *(v8 + 105) = HIBYTE(v7) & 1;
  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_1000D969C()
{
  sub_10009D2E8(v0 + 112);
  v1 = *(v0 + 8);

  return v1();
}

BOOL static WiFiDiagnosticsReport.__derived_struct_equals(_:_:)(uint64_t *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x5BuLL);
  memcpy(v11, a2, 0x5BuLL);
  result = 0;
  if (static WiFiDiagnosticsData.__derived_struct_equals(_:_:)(__dst, v11))
  {
    v4 = __src[12];
    v5 = *(__src + 104);
    v6 = *(__src + 105);
    v7 = *(a2 + 96);
    v8 = *(a2 + 104);
    v9 = *(a2 + 105);
    if ((sub_10004C210(v4, v7) & 1) != 0 && ((v5 ^ v8) & 1) == 0 && ((v6 ^ v9) & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000D97A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 106))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D97E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1000D9888@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  v10 = sub_1000D9900(a1, a2 & 1, a3, a4);
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = v10;
  result = 0.0;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  return result;
}

id *sub_1000D9900(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v6 = String.init(localized:table:bundle:locale:comment:)();
  v8 = v7;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  sub_1000D9EA0(v6, v8, v9, v10, 1);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  sub_1000D9EA0(v11, v13, v14, v15, 5);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v18 = v17;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  sub_1000D9EA0(v16, v18, v19, v20, 4);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = String.init(localized:table:bundle:locale:comment:)();
  v23 = v22;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = String.init(localized:table:bundle:locale:comment:)();
  sub_1000D9EA0(v21, v23, v24, v25, 6);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000D9EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v26 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = type metadata accessor for FlowImage(0);
  sub_100003CE8(v15, 1, 1, v16);
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v10 + 8))(v12, v9);
  type metadata accessor for OptionInfoItem(0);
  v20 = swift_allocObject();
  v21 = v20 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep;
  *(v20 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep + 24) = &type metadata for DisabledAccountStepProvider;
  *(v21 + 32) = sub_1000219CC();
  *v21 = a5;
  v22 = (v20 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
  *v22 = 0;
  v22[1] = 0;
  v23 = sub_1000EBC54(v17, v19, v15, a1, a2, v26, a4);

  return v23;
}

uint64_t sub_1000DA0A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DA0E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DA160()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001D724(&v10, &qword_100190F40, &unk_10012F2A8);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1000DA2BC()
{
  v14 = *(v0 + 32);

  memset(&v6[1], 0, 32);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = sub_1000DA490();
  v11 = 0;
  v12 = 0;
  v13 = *(v0 + 16);
  v5 = *(v0 + 16);
  v6[0] = v14;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.projectedValue.getter();
  *&v5 = *v0;
  BYTE8(v5) = *(v0 + 8);
  v1 = swift_allocObject();
  v2 = *(v0 + 16);
  v1[1] = *v0;
  v1[2] = v2;
  v1[3] = *(v0 + 32);
  sub_10004010C(&v14, &v4);
  sub_100006578(&v5, &v4, &qword_100190F40, &unk_10012F2A8);
  sub_100006578(&v13, &v4, &qword_100189B68, &qword_1001239F0);
  sub_100003768(&unk_1001893B0, &unk_100121480);
  type metadata accessor for AppleAccountSignInView(0);
  sub_100004CE4();
  sub_1000BC598();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_10001D724(v6, &unk_1001893B0, &unk_100121480);
}

uint64_t sub_1000DA490()
{
  v1 = type metadata accessor for ActionInfoType(0);
  __chkstk_darwin(v1);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ActionInfo(0);
  *v3 = 0;
  swift_storeEnumTagMultiPayload();
  v11 = *v0;
  v12 = *(v0 + 8);
  v4 = *(v0 + 1);
  v9 = *(v0 + 2);
  v10 = v4;
  v5 = swift_allocObject();
  v6 = *(v0 + 1);
  v5[1] = *v0;
  v5[2] = v6;
  v5[3] = *(v0 + 2);
  sub_100006578(&v11, v8, &qword_100190F40, &unk_10012F2A8);
  sub_100006578(&v10, v8, &qword_100189B68, &qword_1001239F0);
  sub_10004010C(&v9, v8);
  return sub_1000ED69C(v3, 1, sub_1000DA900, v5);
}

uint64_t sub_1000DA5D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v4 = *(a1 + 1);
  v10 = *(a1 + 2);
  v11 = v4;
  v5 = swift_allocObject();
  v6 = *(a1 + 1);
  *(v5 + 1) = *a1;
  *(v5 + 2) = v6;
  *(v5 + 3) = *(a1 + 2);
  *a2 = swift_getKeyPath();
  sub_100003768(&qword_10018B310, &qword_10012A550);
  swift_storeEnumTagMultiPayload();
  v7 = (a2 + *(type metadata accessor for AppleAccountSignInView(0) + 20));
  *v7 = sub_1000DA8AC;
  v7[1] = v5;
  sub_100006578(&v12, v9, &qword_100190F40, &unk_10012F2A8);
  sub_100006578(&v11, v9, &qword_100189B68, &qword_1001239F0);
  return sub_10004010C(&v10, v9);
}

id sub_1000DA6E4()
{
  sub_1000DA160();

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    sub_100089A64(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DA7A0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2[1] = *(a1 + 16);
  v4 = *(&v3 + 1);
  sub_100006578(&v4, v2, qword_10018FD68, &unk_10012F2F0);
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_10001D724(&v3, &qword_100189B68, &qword_1001239F0);
}

uint64_t sub_1000DA8B8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000DA908()
{
  sub_100004D48(&unk_1001893B0, &unk_100121480);
  type metadata accessor for AppleAccountSignInView(255);
  sub_100004CE4();
  sub_1000BC598();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000DA9C0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PlacardInfoItemType(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = __chkstk_darwin(v8);
  v13 = &v23[-v12 - 8];
  __chkstk_darwin(v11);
  v15 = &v23[-v14 - 8];
  swift_storeEnumTagMultiPayload();
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_100003768(&qword_1001890A0, &qword_1001224B0);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100121620;
  sub_10001029C(v15, v17 + v16);
  sub_10000B4E0(v24, v23);
  v22 = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for PlacardInfoItem(0);
  sub_10001029C(v17 + v16, v13);
  swift_setDeallocating();
  sub_10006EB7C();
  sub_10001029C(v13, v10);
  sub_1000EFDB8(v10, 0, 0);
  sub_100010300(v13);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v18 = v22;
  sub_10000B4E0(v23, a3 + 40);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v19 = Environment.init<A>(_:)();
  LOBYTE(v13) = v20;
  sub_10001035C(v23);
  sub_10001035C(v24);
  result = sub_100010300(v15);
  *a3 = v19;
  *(a3 + 8) = v13 & 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v18;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

uint64_t sub_1000DAC54()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A5838 = result;
  qword_1001A5840 = v3;
  return result;
}

uint64_t sub_1000DAD74()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A5848 = result;
  qword_1001A5850 = v3;
  return result;
}

unint64_t sub_1000DAEB4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001757F0, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000DAF00(char a1)
{
  result = 21825;
  switch(a1)
  {
    case 1:
      result = 1094939238;
      break;
    case 2:
      result = 16707;
      break;
    case 3:
      result = 18499;
      break;
    case 4:
      result = 20035;
      break;
    case 5:
      result = 17732;
      break;
    case 6:
      result = 21317;
      break;
    case 7:
      result = 16967;
      break;
    case 8:
      result = 17737;
      break;
    case 9:
      result = 20041;
      break;
    case 10:
      result = 21577;
      break;
    case 11:
      result = 22605;
      break;
    case 12:
      result = 23118;
      break;
    case 13:
      result = 18259;
      break;
    case 14:
      result = 21333;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000DB008@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000DAEB4(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MailServiceProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000DB104);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000DB13C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DAF00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000DB16C()
{
  result = qword_100190F48;
  if (!qword_100190F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190F48);
  }

  return result;
}

uint64_t sub_1000DB224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100003768(&qword_10018C140, &unk_100127320);
    v10 = a1 + *(a3 + 28);

    return sub_10000E5F0(v10, a2, v9);
  }
}

uint64_t sub_1000DB2D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100003768(&qword_10018C140, &unk_100127320);
    v8 = v5 + *(a4 + 28);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FlowProgressView(uint64_t a1)
{
  result = qword_100190FA8;
  if (!qword_100190FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DB3B0(uint64_t a1)
{
  sub_1000DB494(319, &qword_100188F68, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000DB494(319, &qword_100189478, &type metadata for CGFloat, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_10005D314();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000DB494(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000DB500@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  type metadata accessor for FlowProgressView(0);
  sub_100046168();
  v67 = v3;
  v66 = *(v4 + 64);
  __chkstk_darwin(v5);
  v65 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessibilityChildBehavior();
  v8 = sub_1000DCE20(v7, &v70);
  v56 = v9;
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100003768(&qword_100190FE8, &qword_10012F628);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  v15 = sub_100003768(&qword_100190FF0, &qword_10012F630);
  sub_1000DCE20(v15, &v71);
  v61 = v16;
  sub_10000ED78();
  __chkstk_darwin(v17);
  v19 = &v52 - v18;
  v20 = sub_100003768(&qword_100190FF8, &qword_10012F638) - 8;
  sub_10000ED78();
  __chkstk_darwin(v21);
  sub_10003DC84();
  v52 = v22;
  v55 = sub_100003768(&qword_100191000, &qword_10012F640) - 8;
  sub_10000ED78();
  __chkstk_darwin(v23);
  sub_10003DC84();
  v60 = v24;
  v64 = sub_100003768(&qword_100191008, &qword_10012F648) - 8;
  sub_10000ED78();
  __chkstk_darwin(v25);
  sub_10003DC84();
  v63 = v26;
  v59 = sub_100003768(&qword_100191010, &qword_10012F650) - 8;
  sub_10000ED78();
  __chkstk_darwin(v27);
  sub_10003DC84();
  v62 = v28;
  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = 0x4034000000000000;
  v14[16] = 0;
  v29 = &v14[*(sub_100003768(&qword_100191018, &qword_10012F658) + 44)];
  v53 = v2;
  sub_1000DBBA0(v2, v29);
  static AccessibilityChildBehavior.combine.getter();
  v30 = sub_10000AAEC(&qword_100191020, &qword_100190FE8, &qword_10012F628, &protocol conformance descriptor for VStack<A>);
  v31 = v54;
  View.accessibilityElement(children:)();
  (*(v56 + 8))(v11, v57);
  sub_10000ABCC(v14, &qword_100190FE8, &qword_10012F628);
  sub_100003768(&qword_10018C140, &unk_100127320);
  AccessibilityFocusState.projectedValue.getter();
  __src[0] = v31;
  __src[1] = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v52;
  v33 = v58;
  View.accessibilityFocused(_:)();

  (*(v61 + 8))(v19, v33);
  v34 = static Edge.Set.horizontal.getter();
  v35 = v32 + *(v20 + 44);
  *v35 = v34;
  *(v35 + 8) = 0u;
  *(v35 + 24) = 0u;
  *(v35 + 40) = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v36 = v32;
  v37 = v60;
  sub_10002CE6C(v36, v60, &qword_100190FF8, &qword_10012F638);
  memcpy((v37 + *(v55 + 44)), __src, 0x70uLL);
  v38 = [objc_opt_self() systemGroupedBackgroundColor];
  v39 = Color.init(_:)();
  LOBYTE(v14) = static Edge.Set.all.getter();
  v40 = v37;
  v41 = v63;
  sub_10002CE6C(v40, v63, &qword_100191000, &qword_10012F640);
  v42 = v41 + *(v64 + 44);
  *v42 = v39;
  *(v42 + 8) = v14;
  LOBYTE(v39) = static Edge.Set.top.getter();
  v43 = static SafeAreaRegions.all.getter();
  v44 = v62;
  sub_10002CE6C(v41, v62, &qword_100191008, &qword_10012F648);
  v45 = v44 + *(v59 + 44);
  *v45 = v43;
  *(v45 + 8) = v39;
  v46 = v65;
  sub_10002F15C(v53, v65);
  v47 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v48 = swift_allocObject();
  sub_1000DC56C(v46, v48 + v47);
  v49 = v68;
  sub_10002CE6C(v44, v68, &qword_100191010, &qword_10012F650);
  result = sub_100003768(&qword_100191028, &qword_10012F660);
  v51 = (v49 + *(result + 36));
  *v51 = sub_1000DC5D0;
  v51[1] = v48;
  v51[2] = 0;
  v51[3] = 0;
  return result;
}

uint64_t sub_1000DBBA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = type metadata accessor for FlowProgressView(0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100003768(&qword_100191030, &qword_10012F668);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_100003768(&qword_100191038, &qword_10012F670);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  ProgressView<>.init<>()();
  v13 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v15 = &v6[*(sub_100003768(&qword_100191040, &qword_10012F6A8) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = &v6[*(v4 + 36)];
  v17 = *(sub_100003768(&qword_10018F2A8, &qword_10012F6B0) + 28);
  v18 = enum case for ControlSize.large(_:);
  v19 = type metadata accessor for ControlSize();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  sub_1000DC728();
  View.accessibilityHidden(_:)();
  sub_10000ABCC(v6, &qword_100191030, &qword_10012F668);
  v20 = v32;
  sub_10002F15C(v32, &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v22 = swift_allocObject();
  sub_1000DC56C(&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = &v12[*(v8 + 44)];
  *v23 = sub_10003B0F8;
  *(v23 + 1) = 0;
  *(v23 + 2) = sub_1000DC9EC;
  *(v23 + 3) = v22;
  if (v20[1] || v20[3])
  {
    v24 = static HorizontalAlignment.center.getter();
    v36 = 0;
    sub_1000DC0C8(v20, v40);
    memcpy(v37, v40, 0xB0uLL);
    memcpy(v38, v40, 0xB0uLL);
    sub_10002BE60(v37, v39, &qword_100191068, &unk_10012F708);
    sub_10000ABCC(v38, &qword_100191068, &unk_10012F708);
    memcpy(&v35[7], v37, 0xB0uLL);
    v25 = v36;
    v26 = static Edge.Set.horizontal.getter();
    v39[0] = v24;
    v39[1] = 0;
    LOBYTE(v39[2]) = v25;
    memcpy(&v39[2] + 1, v35, 0xB7uLL);
    LOBYTE(v39[25]) = v26;
    memset(&v39[26], 0, 32);
    LOBYTE(v39[30]) = 1;
    nullsub_1();
    memcpy(v40, v39, 0xF1uLL);
  }

  else
  {
    sub_1000DCA5C(v40);
  }

  v27 = v33;
  sub_10002BE60(v12, v33, &qword_100191038, &qword_10012F670);
  memcpy(v37, v40, 0xF1uLL);
  v28 = v34;
  sub_10002BE60(v27, v34, &qword_100191038, &qword_10012F670);
  v29 = *(sub_100003768(&qword_100191058, &qword_10012F6F8) + 48);
  memcpy(v38, v37, 0xF1uLL);
  memcpy((v28 + v29), v37, 0xF1uLL);
  sub_10002BE60(v38, v39, &qword_100191060, &qword_10012F700);
  sub_10000ABCC(v12, &qword_100191038, &qword_10012F670);
  memcpy(v39, v37, 0xF1uLL);
  sub_10000ABCC(v39, &qword_100191060, &qword_10012F700);
  return sub_10000ABCC(v27, &qword_100191038, &qword_10012F670);
}

uint64_t sub_1000DC0C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v60 = a1;
  if (v3)
  {
    v64 = *a1;
    v65 = v3;
    sub_10000AC24();

    v4 = Text.init<A>(_:)();
    v6 = v5;
    v8 = v7;
    static Font.title2.getter();
    v9 = Text.font(_:)();
    v11 = v10;
    v13 = v12;

    sub_10000AC78(v4, v6, v8 & 1);

    static Font.Weight.bold.getter();
    v14 = Text.fontWeight(_:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_10000AC78(v9, v11, v13 & 1);

    v58 = v16;
    v59 = v14;
    v56 = v18 & 1;
    sub_100017564(v14, v16, v18 & 1);
    v57 = v20;

    a1 = v60;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
  }

  v21 = a1[3];
  if (v21)
  {
    v64 = a1[2];
    v65 = v21;
    sub_10000AC24();

    v22 = Text.init<A>(_:)();
    v24 = v23;
    v26 = v25;
    static Font.subheadline.getter();
    v27 = Text.font(_:)();
    v29 = v28;
    v31 = v30;

    sub_10000AC78(v22, v24, v26 & 1);

    LODWORD(v64) = static HierarchicalShapeStyle.secondary.getter();
    v32 = Text.foregroundStyle<A>(_:)();
    v54 = v33;
    v55 = v32;
    LOBYTE(v22) = v34;
    v53 = v35;
    sub_10000AC78(v27, v29, v31 & 1);

    LOBYTE(v45) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    a1 = v60;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    LOBYTE(v64) = v22 & 1;
    __dst[0] = 0;
    v44 = v22 & 1;
    v45 = v45;
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v53 = 0;
    v45 = 0;
    v44 = 0;
    v37 = 0;
    v39 = 0;
    v41 = 0;
    v43 = 0;
  }

  v46 = a1[5];
  v64 = a1[4];
  v65 = v46;
  sub_100003768(&qword_100189560, &qword_1001251F0);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v61 = v74;
  v47 = v75;
  v48 = v77;
  v51 = v78;
  v52 = v76;
  v50 = v79;
  __src[0] = v55;
  __src[1] = v54;
  __src[2] = v44;
  __src[3] = v53;
  __src[4] = v45;
  __src[5] = v37;
  __src[6] = v39;
  __src[7] = v41;
  __src[8] = v43;
  LOBYTE(__src[9]) = 0;
  memcpy(__dst, __src, 0x49uLL);
  sub_100033128(v59, v58, v56, v57);
  sub_10002BE60(__src, &v64, &qword_100191070, &qword_10012F718);
  sub_10003316C(v59, v58, v56, v57);
  *a2 = v59;
  *(a2 + 8) = v58;
  *(a2 + 16) = v56;
  *(a2 + 24) = v57;
  memcpy((a2 + 32), __dst, 0x49uLL);
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 128) = v61;
  *(a2 + 136) = v47;
  *(a2 + 144) = v52;
  *(a2 + 152) = v48;
  *(a2 + 160) = v51;
  *(a2 + 168) = v50;
  v64 = v55;
  v65 = v54;
  v66 = v44;
  v67 = v53;
  v68 = v45;
  v69 = v37;
  v70 = v39;
  v71 = v41;
  v72 = v43;
  v73 = 0;
  sub_10000ABCC(&v64, &qword_100191070, &qword_10012F718);
  return sub_10003316C(v59, v58, v56, v57);
}

uint64_t sub_1000DC504()
{
  type metadata accessor for FlowProgressView(0);
  sub_100003768(&qword_10018C140, &unk_100127320);
  return AccessibilityFocusState.wrappedValue.setter();
}

uint64_t sub_1000DC56C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowProgressView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC5D0()
{
  type metadata accessor for FlowProgressView(0);

  return sub_1000DC504();
}

uint64_t sub_1000DC630(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.controlSize.setter();
}

unint64_t sub_1000DC728()
{
  result = qword_100191048;
  if (!qword_100191048)
  {
    sub_100004D48(&qword_100191030, &qword_10012F668);
    sub_1000DC7E0();
    sub_10000AAEC(&qword_10018F2B8, &qword_10018F2A8, &qword_10012F6B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191048);
  }

  return result;
}

unint64_t sub_1000DC7E0()
{
  result = qword_100191050;
  if (!qword_100191050)
  {
    sub_100004D48(&qword_100191040, &qword_10012F6A8);
    sub_10000AAEC(&qword_100189BD0, &qword_100189BA8, &qword_100123A38, &protocol conformance descriptor for ProgressView<A, B>);
    sub_10000AAEC(&qword_1001895D0, &qword_1001895D8, &qword_10012F6F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191050);
  }

  return result;
}

uint64_t sub_1000DC8C4()
{
  type metadata accessor for FlowProgressView(0);
  sub_100046168();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  v7 = v1 + v4 + *(v0 + 36);
  v8 = type metadata accessor for AccessibilityTechnologies();
  if (!sub_10000E5F0(v7, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  sub_100003768(&qword_10018C140, &unk_100127320);

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_1000DC9EC(void *a1)
{
  v3 = *(type metadata accessor for FlowProgressView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000DC06C(a1, v4);
}

void sub_1000DCA5C(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  bzero((a1 + 56), 0xB9uLL);
}

unint64_t sub_1000DCA80()
{
  result = qword_100191078;
  if (!qword_100191078)
  {
    sub_100004D48(&qword_100191028, &qword_10012F660);
    sub_1000DCB0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191078);
  }

  return result;
}

unint64_t sub_1000DCB0C()
{
  result = qword_100191080;
  if (!qword_100191080)
  {
    sub_100004D48(&qword_100191010, &qword_10012F650);
    sub_1000DCB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191080);
  }

  return result;
}

unint64_t sub_1000DCB98()
{
  result = qword_100191088;
  if (!qword_100191088)
  {
    sub_100004D48(&qword_100191008, &qword_10012F648);
    sub_1000DCC50();
    sub_10000AAEC(&qword_10018C358, &qword_10018C360, &unk_10012F720, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191088);
  }

  return result;
}

unint64_t sub_1000DCC50()
{
  result = qword_100191090;
  if (!qword_100191090)
  {
    sub_100004D48(&qword_100191000, &qword_10012F640);
    sub_1000DCCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191090);
  }

  return result;
}

unint64_t sub_1000DCCDC()
{
  result = qword_100191098;
  if (!qword_100191098)
  {
    sub_100004D48(&qword_100190FF8, &qword_10012F638);
    sub_100004D48(&qword_100190FF0, &qword_10012F630);
    sub_100004D48(&qword_100190FE8, &qword_10012F628);
    sub_10000AAEC(&qword_100191020, &qword_100190FE8, &qword_10012F628, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100191098);
  }

  return result;
}

BOOL sub_1000DCE38(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_1000E2A0C();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

BOOL sub_1000DCF20(unint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  sub_100058C3C(v12, a1);
  v4 = Hasher._finalize()();
  v5 = ~(-1 << *(a2 + 32));
  do
  {
    v6 = v4 & v5;
    v7 = (1 << (v4 & v5)) & *(a2 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8));
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v9 = *(*(a2 + 48) + 8 * v6);
    sub_1000136E0(v9);
    v10 = sub_100058B18(v9, a1);
    sub_10003F67C(v9);
    v4 = v6 + 1;
  }

  while ((v10 & 1) == 0);
  return v8;
}

uint64_t sub_1000DD008()
{
  sub_100025A94();
  *(v0 + 16) = v1;
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  sub_100062F48(v3);

  return v5();
}

uint64_t sub_1000DD0EC()
{
  sub_100025A94();
  v2 = v1;
  sub_10004622C();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_10000870C();
  *v6 = v5;

  *v4 = v2;
  sub_100082A68();

  return v7();
}

BOOL sub_1000DD1E8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_1000DD228()
{
  sub_100025A94();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = sub_100056A10(v1);
  *v2 = v3;
  sub_100062F48(v2);

  return v5();
}

uint64_t sub_1000DD304()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  sub_100082A68();

  return v3();
}

id sub_1000DD3E4()
{
  v1 = v0;
  v2 = qword_1001910A0;
  v3 = *(v0 + qword_1001910A0);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = objc_allocWithZone(IDSService);
    v4 = sub_1000E04E4(0xD000000000000010, 0x8000000100139310);
    v6 = *(v1 + v2);
    *(v1 + v2) = v4;
    v7 = v4;
    sub_1000E03E4(v6);
  }

  sub_1000E28B4(v3);
  return v4;
}

uint64_t sub_1000DD47C()
{
  swift_getKeyPath();
  sub_1000E29EC();
  sub_1000E266C(v0, v1, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1000DD558(uint64_t a1)
{
  v3 = qword_1001910A8;
  swift_beginAccess();

  v5 = sub_1000E26F4(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    sub_1000E00AC(v8, sub_1000E2898, v9);
  }
}

uint64_t sub_1000DD648(uint64_t a1, uint64_t a2)
{
  v4 = qword_1001910A8;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1000DD6B8(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  sub_10000C30C();
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  sub_10000C30C();
  v4 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000C30C();
  v10 = v9 - v8;
  *(v1 + qword_1001910A0) = 1;
  *(v1 + qword_1001A5870) = 0;
  *(v1 + qword_1001A5878) = 0;
  *(v1 + qword_1001A5880) = 0;
  *(v1 + qword_1001A5888) = 0;
  *(v1 + qword_1001A5890) = 0;
  *(v1 + qword_1001A5898) = 0;
  *(v1 + qword_1001A58A0) = 0;
  *(v1 + qword_1001A58A8) = 10;
  *(v1 + qword_1001910A8) = &_swiftEmptySetSingleton;
  ObservationRegistrar.init()();
  (*(v6 + 104))(v10, enum case for SupportFlowIdentifier.messages(_:), v4);

  sub_100105734();
  v12 = v11;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_1000242E4();

  return v12;
}

uint64_t sub_1000DD924()
{
  sub_100025A94();
  v1[445] = v0;
  v2 = type metadata accessor for MainActor();
  v1[446] = sub_10006F3C8(v2);
  sub_10006F37C();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[447] = v4;
  v1[448] = v3;

  return _swift_task_switch(sub_1000DD9B0, v4, v3);
}

uint64_t sub_1000DD9B0()
{
  sub_10003DCD8();
  v1 = v0[445];
  sub_100003768(&qword_100191560, &qword_10012F7C8);
  swift_asyncLet_begin();
  sub_100003768(&qword_100191568, &qword_10012F7D8);
  swift_asyncLet_begin();
  v2 = swift_task_alloc();
  v0[449] = v2;
  *(v2 + 16) = &unk_10012F7E8;
  *(v2 + 24) = v1;

  swift_asyncLet_begin();
  v3 = swift_task_alloc();
  v0[450] = v3;
  *(v3 + 16) = &unk_10012F808;
  *(v3 + 24) = v1;

  swift_asyncLet_begin();
  v4 = swift_task_alloc();
  v0[451] = v4;
  *(v4 + 16) = &unk_10012F820;
  *(v4 + 24) = v1;

  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 419, sub_1000DDBB0, v0 + 402);
}

uint64_t sub_1000DDBB0()
{
  sub_100025A94();
  memcpy((v0 + 3256), (v0 + 3352), 0x5BuLL);
  sub_1000E07BC(v0 + 3256, v0 + 3448);

  return _swift_asyncLet_get(v0 + 656, v0 + 3544, sub_1000DDC2C, v0 + 3216);
}

uint64_t sub_1000DDC2C()
{
  sub_100025A94();
  *(v0 + 3616) = *(v0 + 3544);
  *(v0 + 3348) = *(v0 + 3552);

  return _swift_asyncLet_get(v0 + 1296, v0 + 3347, sub_1000DDCA0, v0 + 3216);
}

uint64_t sub_1000DDD00()
{
  if (*(v0 + 3336) != 1)
  {
    v1 = *(v0 + 3560);
    v2 = *(v0 + 3258);
    sub_100044F98(v0 + 3256, &qword_100191560, &qword_10012F7C8);
    v3 = qword_1001A5870;
    *(v1 + qword_1001A5870) = (v2 - 1) < 3;
    if (qword_1001882C8 != -1)
    {
      sub_1000BBF30(&qword_1001882C8);
    }

    v4 = type metadata accessor for Logger();
    sub_10000C2D4(v4, qword_1001A5858);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = sub_1000E2A18();
      *v7 = 67109120;
      v7[1] = *(v1 + v3);

      sub_1000E2A3C(&_mh_execute_header, v8, v9, "weakWiFiSignal: %{BOOL}d");
      sub_100008744(v7);
    }

    else
    {
    }
  }

  v10 = *(v0 + 3616);
  if (v10)
  {
    v11 = *(v0 + 3560);
    v12 = qword_1001A5888;
    *(v11 + qword_1001A5888) = *(v0 + 3348) & 1;
    v13 = *(v10 + 16);

    v14 = qword_1001A5890;
    *(v11 + qword_1001A5890) = v13 != 0;
    if (qword_1001882C8 != -1)
    {
      sub_1000BBF30(&qword_1001882C8);
    }

    v15 = type metadata accessor for Logger();
    sub_10000C2D4(v15, qword_1001A5858);
    sub_10006F37C();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = sub_1000E2A18();
      *v18 = 67109120;
      v18[1] = *(v11 + v12);

      sub_1000E2A5C(&_mh_execute_header, v19, v20, "isVPNConnected: %{BOOL}d");
      sub_100008744(v18);
    }

    else
    {
    }

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = sub_1000E2A18();
      *v23 = 67109120;
      v23[1] = *(v11 + v14);

      sub_1000E2A3C(&_mh_execute_header, v24, v25, "hasConfiguredVPN: %{BOOL}d");
      sub_100008744(v23);
    }

    else
    {
    }
  }

  v26 = *(v0 + 3560);
  v27 = qword_1001A5898;
  *(v26 + qword_1001A5898) = *(v0 + 3351);
  if (qword_1001882C8 != -1)
  {
    sub_1000BBF30(&qword_1001882C8);
  }

  v28 = type metadata accessor for Logger();
  sub_10000C2D4(v28, qword_1001A5858);
  sub_10006F37C();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = sub_1000E2A18();
    *v31 = 67109120;
    v31[1] = *(v26 + v27);

    sub_1000E2A5C(&_mh_execute_header, v32, v33, "hasRecentDeviceRestart: %{BOOL}d");
    sub_100008744(v31);
  }

  else
  {
  }

  v34 = *(v0 + 3560);
  v35 = qword_1001A58A0;
  *(v34 + qword_1001A58A0) = *(v0 + 3443);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = sub_1000E2A18();
    *v38 = 67109120;
    *(v38 + 4) = *(v34 + v35);

    _os_log_impl(&_mh_execute_header, v36, v37, "hasRecentNetworkSettingsReset: %{BOOL}d", v38, 8u);
    sub_100008744(v38);
  }

  else
  {
  }

  return _swift_asyncLet_finish(v0 + 2576, v39, sub_1000DE148, v0 + 3216);
}

uint64_t sub_1000DE164()
{
  sub_100025A94();

  return _swift_asyncLet_finish(v0 + 1936, v0 + 3350, sub_1000DE1D8, v0 + 2576);
}

uint64_t sub_1000DE1F4()
{
  sub_100025A94();

  return _swift_asyncLet_finish(v0 + 1296, v0 + 3347, sub_1000DE268, v0 + 1936);
}

uint64_t sub_1000DE284()
{
  sub_100025A94();

  return _swift_asyncLet_finish(v0 + 656, v0 + 3544, sub_1000DE2F8, v0 + 1296);
}

uint64_t sub_1000DE350()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

uint64_t sub_1000DE3C8()
{
  sub_100025A94();
  v1 = *(v0 + 112);
  sub_10009C13C((v0 + 16));
  memcpy(v1, (v0 + 16), 0x5BuLL);
  sub_10000875C();

  return v2();
}

uint64_t sub_1000DE434(uint64_t a1)
{
  *(v1 + 112) = a1;
  v2 = swift_task_alloc();
  *(v1 + 120) = v2;
  *v2 = v1;
  v2[1] = sub_1000DE4CC;

  return sub_1000DE3A8(v1 + 16);
}

uint64_t sub_1000DE4CC()
{
  sub_100025A94();
  sub_10004622C();
  v2 = v1;
  v3 = *(v1 + 112);
  v4 = *v0;
  sub_10000870C();
  *v5 = v4;

  memcpy(v3, (v2 + 16), 0x5BuLL);
  sub_100082A68();

  return v6();
}

uint64_t sub_1000DE5D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000DE660;

  return static VPNDiagnosticsDataProvider.provideData()();
}

uint64_t sub_1000DE660()
{
  sub_10003DCD8();
  v3 = v2;
  v5 = v4;
  sub_10004622C();
  v6 = *v1;
  sub_10000870C();
  *v7 = v6;

  if (v0)
  {

    v5 = 0;
    v8 = 0;
  }

  else
  {
    v8 = v3 & 0x101;
  }

  v9 = *(v6 + 8);

  return v9(v5, v8);
}

uint64_t sub_1000DE778(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000DE808;

  return sub_1000DE5D0();
}

uint64_t sub_1000DE808()
{
  sub_10003DCD8();
  v2 = v1;
  v4 = v3;
  sub_10004622C();
  v6 = *(v5 + 16);
  v7 = *v0;
  sub_10000870C();
  *v8 = v7;

  *v6 = v4;
  *(v6 + 8) = v2;
  sub_100082A68();

  return v9();
}

uint64_t sub_1000DE934()
{
  sub_100025A94();
  DeviceEventCoordinator.hasRecentDeviceRestart()();
  sub_1000E2A30();
  v2 = v1 & 1;

  return v0(v2);
}

uint64_t sub_1000DE9D4()
{
  sub_100025A94();
  DeviceEventCoordinator.hasRecentNetworkSettingsReset()();
  sub_1000E2A30();
  v2 = v1 & 1;

  return v0(v2);
}

uint64_t sub_1000DEA54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100045AB0;

  return sub_1000DF47C();
}

void sub_1000DEAE4()
{
  sub_1000DEC54(0xAuLL, 0);

  sub_100107CD4();
}

uint64_t sub_1000DEB14()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  v2 = type metadata accessor for MainActor();
  *(v1 + 24) = sub_10006F3C8(v2);
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  v3 = sub_100062F00();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000DEB94()
{
  sub_100025A94();

  TMIsAutomaticTimeZoneEnabled();
  sub_100085FE4();
  sub_100085FE4();
  sub_100085FE4();
  sub_100085FE4();
  sub_10000875C();

  return v0();
}

uint64_t sub_1000DEC54(unint64_t a1, char a2)
{
  v4 = v2;
  v7 = sub_100003768(&qword_10018ABF8, &qword_100125318);
  __chkstk_darwin(v7 - 8);
  v9 = &v49 - v8;
  if (a2)
  {
    if (a1 == 10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (a1 == 10)
    {
      goto LABEL_16;
    }

    sub_1000136E0(a1);
    v10 = sub_1000DD47C();
    v11 = sub_1000DCF20(a1, v10);

    if (v11)
    {
      if (*(v4 + qword_1001A58A8) == 10)
      {
        *(v4 + qword_1001A58A8) = a1;
        sub_1000136E0(a1);
      }

      if (qword_1001882C8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_53;
    }

    sub_10003F68C(a1);
  }

  sub_1000136E0(a1);
  v20 = sub_1000DF2AC(a1, &off_100174F48);
  v3 = v21;
  sub_10003F68C(a1);
  if ((v3 & 1) == 0 && __OFADD__(v20, 1))
  {
    __break(1u);
LABEL_53:
    sub_1000BBF30(&qword_1001882C8);
LABEL_9:
    v12 = type metadata accessor for Logger();
    sub_10000C2D4(v12, qword_1001A5858);
    sub_1000136E0(a1);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    sub_10003F68C(a1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v59[0] = v16;
      *v15 = 136315138;
      v17 = sub_100058208(a1);
      v19 = sub_10009CACC(v17, v18, v59);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Action performed found for step: %s", v15, 0xCu);
      sub_1000086BC(v16);
      sub_100008744(v16);
      sub_100008744(v15);
    }

    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    return v3;
  }

LABEL_16:
  v22 = sub_100017868();
  v24 = v23;
  v26 = v25;
  v28 = v27 >> 1;
  v29 = qword_1001A58A0;
  v30 = qword_1001A5880;
  v57 = qword_1001A5890;
  v58 = qword_1001A5898;
  v55 = qword_1001A5878;
  v56 = qword_1001A5870;
  v54 = "HMTSoftwareUpdateBetaUser";
  while (v26 != v28)
  {
    if (v26 >= v28)
    {
      __break(1u);
LABEL_51:
      sub_1000BBF30(&qword_1001882C8);
      goto LABEL_47;
    }

    v3 = *(v24 + 8 * v26++);
    switch(v3)
    {
      case 0:
        if (*(v4 + v55) == 1)
        {
          goto LABEL_43;
        }

        v3 = 0;
        goto LABEL_46;
      case 1:
        if ((*(v4 + v56) & 1) == 0)
        {
          goto LABEL_43;
        }

        v3 = 1;
        goto LABEL_46;
      case 2:
        if (*(v4 + v29))
        {
          continue;
        }

        if ((*(v4 + v30) & 1) == 0)
        {
          goto LABEL_43;
        }

        v3 = 2;
        goto LABEL_46;
      case 3:
        if ((*(v4 + v57) & 1) == 0)
        {
          goto LABEL_43;
        }

        v3 = 3;
        goto LABEL_46;
      case 4:
        goto LABEL_46;
      case 5:
        type metadata accessor for TimezoneViewModel(0);
        if ((sub_1000B7918() & 1) == 0)
        {
          goto LABEL_43;
        }

        v3 = 5;
        goto LABEL_46;
      case 6:
        if (*(v4 + v58))
        {
          goto LABEL_43;
        }

        v3 = 6;
        goto LABEL_46;
      case 7:
        v49 = v30;
        v50 = v29;
        v52 = v4;
        v53 = v22;
        v51 = v9;
        v31 = sub_1000DD47C();
        if (!*(v31 + 16))
        {
          goto LABEL_44;
        }

        Hasher.init(_seed:)();
        sub_100058C3C(v59, 0);
        Hasher._finalize()();
        sub_1000E2A0C();
        v34 = ~v33;
        break;
      case 8:
        if (*(v4 + v29))
        {
          continue;
        }

        if (*(v4 + v30))
        {
          goto LABEL_43;
        }

        v3 = 8;
        goto LABEL_46;
      case 9:
        sub_100087500();
        v38 = sub_100003768(&qword_10018AC00, &qword_100125320);
        v39 = sub_10000E5F0(v9, 1, v38);
        sub_100044F98(v9, &qword_10018ABF8, &qword_100125318);
        if (v39 == 1)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      default:
        continue;
    }

    do
    {
      v35 = v32 & v34;
      if (((*(v31 + 56 + (((v32 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v34)) & 1) == 0)
      {
LABEL_44:

        v3 = 7;
        goto LABEL_46;
      }

      v36 = *(*(v31 + 48) + 8 * v35);
      sub_1000136E0(v36);
      v37 = sub_100058B18(v36, 0);
      sub_10003F67C(v36);
      v32 = v35 + 1;
    }

    while ((v37 & 1) == 0);

    v9 = v51;
    v4 = v52;
    v22 = v53;
    v30 = v49;
    v29 = v50;
LABEL_43:
    sub_10003F67C(v3);
  }

LABEL_45:
  v3 = 9;
LABEL_46:
  swift_unknownObjectRelease();
  if (qword_1001882C8 != -1)
  {
    goto LABEL_51;
  }

LABEL_47:
  v40 = type metadata accessor for Logger();
  sub_10000C2D4(v40, qword_1001A5858);
  sub_1000136E0(v3);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  sub_10003F67C(v3);
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v59[0] = v44;
    *v43 = 136315138;
    v45 = sub_100058208(v3);
    v47 = sub_10009CACC(v45, v46, v59);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v41, v42, "Next step found: %s", v43, 0xCu);
    sub_1000086BC(v44);
    sub_100008744(v44);
    sub_100008744(v43);
  }

  return v3;
}

uint64_t sub_1000DF2AC(unint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  while (1)
  {
    if (v4 == v3)
    {
      return 0;
    }

    v6 = *(v5 + 8 * v3);
    sub_1000136E0(v6);
    v7 = sub_100058B18(v6, a1);
    sub_10003F67C(v6);
    if (v7)
    {
      break;
    }

    ++v3;
  }

  return v3;
}

uint64_t sub_1000DF334(unint64_t a1)
{
  swift_getKeyPath();
  sub_1000E29EC();
  sub_1000E266C(v2, v3, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000136E0(a1);
  sub_1000E09E4(&v6, a1);
  v4 = v6;
  swift_endAccess();
  sub_10003F67C(v4);
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000DF47C()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  sub_100062F48(v2);

  return sub_1000DF978();
}

uint64_t sub_1000DF504()
{
  sub_100025A94();
  sub_10004622C();
  *(v1 + 40) = v0;

  return _swift_task_switch(sub_1000DF5FC, 0, 0);
}

uint64_t sub_1000DF5FC()
{
  sub_100025A94();
  v1 = type metadata accessor for MainActor();
  *(v0 + 32) = sub_10006F3C8(v1);
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  v2 = sub_100062F00();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000DF678()
{
  sub_10003DCD8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);

  sub_1000DF74C(v2 & 1, HIBYTE(v2) & 1, v1);

  return _swift_task_switch(sub_1000DF72C, 0, 0);
}