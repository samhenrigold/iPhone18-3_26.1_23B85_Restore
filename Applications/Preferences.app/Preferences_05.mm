uint64_t sub_100081864()
{
  type metadata accessor for EngagementView();
  sub_100081904();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_1000818C8()
{
  v0 = sub_100081410();

  return EngagementView.init(model:)(v0);
}

unint64_t sub_100081904()
{
  result = qword_10015DB90;
  if (!qword_10015DB90)
  {
    type metadata accessor for EngagementView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DB90);
  }

  return result;
}

uint64_t sub_10008195C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMSEngagementSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000819C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMSEngagementSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100081A24()
{
  v1 = *(type metadata accessor for AMSEngagementSheet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000815FC(v2);
}

uint64_t sub_100081A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015D1B0, &qword_100114420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100081AF4()
{
  result = qword_10015DBA0;
  if (!qword_10015DBA0)
  {
    sub_100052374(&qword_10015DBA8, &qword_100114428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DBA0);
  }

  return result;
}

uint64_t sub_100081C30(uint64_t a1)
{
  result = type metadata accessor for DismissAction();
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

id sub_100081CCC()
{
  v0 = [objc_allocWithZone(AAUISignInController) init];
  sub_10004DED0(&qword_10015DD08, &qword_100114538);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v0 setDelegate:v2];

  return v0;
}

uint64_t sub_100081D54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for DismissAction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v17.receiver - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000C3510(v8);
  v9 = (v2 + *(a1 + 20));
  v11 = *v9;
  v10 = v9[1];
  v12 = type metadata accessor for AppleAccountSignInSheet.Coordinator(0);
  v13 = objc_allocWithZone(v12);
  (*(v6 + 16))(&v13[OBJC_IVAR____TtCV11SettingsApp23AppleAccountSignInSheet11Coordinator_dismissAction], v8, v5);
  v14 = &v13[OBJC_IVAR____TtCV11SettingsApp23AppleAccountSignInSheet11Coordinator_onSuccess];
  *v14 = v11;
  *(v14 + 1) = v10;
  v17.receiver = v13;
  v17.super_class = v12;

  v15 = objc_msgSendSuper2(&v17, "init");
  result = (*(v6 + 8))(v8, v5);
  *a2 = v15;
  return result;
}

uint64_t sub_100081EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082284(&qword_10015DD00, &unk_100114470);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100081F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082284(&qword_10015DD00, &unk_100114470);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100081FEC(uint64_t a1)
{
  sub_100082284(&qword_10015DD00, &unk_100114470);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100082110()
{
  result = qword_10015DC48;
  if (!qword_10015DC48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015DC48);
  }

  return result;
}

void sub_10008215C(uint64_t a1)
{
  v2 = v1;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v6 = sub_1000B8930(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(a1 + 56) + 8 * v6);
      if ([v9 success])
      {
        (*(v2 + OBJC_IVAR____TtCV11SettingsApp23AppleAccountSignInSheet11Coordinator_onSuccess))();
      }
    }
  }

  else
  {
  }

  DismissAction.callAsFunction()();
}

uint64_t sub_100082284(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppleAccountSignInSheet(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000822CC()
{
  result = qword_10015DD70;
  if (!qword_10015DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DD70);
  }

  return result;
}

uint64_t sub_100082328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082418();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10008238C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100082418();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000823F0(uint64_t a1)
{
  sub_100082418();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100082418()
{
  result = qword_10015DD78;
  if (!qword_10015DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DD78);
  }

  return result;
}

id sub_10008246C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v12._object = 0x8000000100122DB0;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v2._object = 0x8000000100122D90;
  v12._countAndFlagsBits = 0xD000000000000021;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v12);

  v4 = [v0 mainBundle];
  v13._object = 0x8000000100120D70;
  v5._countAndFlagsBits = 0xD000000000000016;
  v5._object = 0x8000000100122DE0;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v13);

  v7 = objc_allocWithZone(OBWelcomeController);
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v10 = [v7 initWithTitle:v8 detailText:v9 icon:0];

  return v10;
}

uint64_t sub_100082600()
{
  if (qword_10015AA80 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000659C(v0, qword_1001695F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
  }

  return 0;
}

uint64_t sub_1000826DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100082724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100082778(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-v7];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  v11 = type metadata accessor for AdaptiveNavigationDisclosureIndicatorWrapper(0, a2, a3, v10);
  (*(*(v11 - 8) + 16))(v17, a1, v11);
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v14 = a1[3];
  *(v13 + 80) = a1[2];
  *(v13 + 96) = v14;
  *(v13 + 112) = a1[4];
  v15 = a1[1];
  *(v13 + 48) = *a1;
  *(v13 + 64) = v15;
  sub_100094AF4(0, 0, v8, &unk_100114870, v13);
}

uint64_t sub_100082904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for EnvironmentValues();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000829F8, v7, v6);
}

uint64_t sub_1000829F8()
{
  v1 = *(v0 + 80);

  v2 = *(v1 + 8);
  *(v0 + 56) = *v1;
  *(v0 + 64) = v2;
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 88);
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100082C60(v0 + 56);
    (*(v5 + 8))(v4, v6);
  }

  v8 = *(v0 + 80);

  sub_100010CD0();

  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  v11 = *(v8 + 32);
  v12 = *(v8 + 40);
  v13 = *(v8 + 48);
  *(v0 + 16) = v9;
  *(v0 + 24) = v10;
  *(v0 + 32) = v11;
  *(v0 + 40) = v12;
  *(v0 + 48) = v13;
  sub_100029920(v9, v10, v11, v12, v13);
  sub_1000954AC((v0 + 16));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100082B9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A924;

  return sub_100082904(a1, v4, v5, v1 + 48);
}

uint64_t sub_100082C60(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015DE20, &qword_100114878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100082D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  _print_unlocked<A, B>(_:_:)();
  sub_10004DED0(&unk_10015EF60, &unk_1001148B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103C0;
  strcpy((inited + 32), "errorMessage");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v4 = objc_allocWithZone(NSString);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithString:v5];

  *(inited + 48) = v6;
  sub_1000BA600(inited);
  swift_setDeallocating();
  sub_100082EF8(inited + 32);
  v7 = String._bridgeToObjectiveC()();
  sub_1000548F0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

uint64_t sub_100082EF8(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015DE28, &qword_1001161C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100082F60()
{
  result = [v0 infoDictionary];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16) && (v4 = sub_1000B8930(0x656C646E75424643, 0xEF6E6F6973726556), (v5 & 1) != 0))
    {
      sub_10001EE30(*(v3 + 56) + 32 * v4, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_10008305C()
{
  result = [v0 infoDictionary];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16) && (v4 = sub_1000B8930(0xD00000000000001ALL, 0x8000000100122EA0), (v5 & 1) != 0))
    {
      sub_10001EE30(*(v3 + 56) + 32 * v4, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100083150()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v19[-v7];
  v9 = [v0 infoDictionary];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v11 + 16) || (v12 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v13 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_10001EE30(*(v11 + 56) + 32 * v12, v19);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v15 = [v1 bundleURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.deletingPathExtension()();
    v16 = *(v3 + 8);
    v16(v6, v2);
    v14 = URL.lastPathComponent.getter();
    v16(v8, v2);
    return v14;
  }

  return v18;
}

void sub_10008335C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695A8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_100083400()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695B0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000834A4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695B8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_100083548()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695C0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000835EC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695C8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_100083690()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695D0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_100083734()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695D8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000837D8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695E0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_10008387C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SFRuntimeAbsoluteFilePathForPath();

  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  v2 = [objc_allocWithZone(NSBundle) initWithPath:v1];

  if (v2)
  {
    qword_1001695E8 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100083920()
{
  sub_10004DED0(&qword_10015D3B8, &unk_1001186B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001148C0;
  if (qword_10015AA38 != -1)
  {
    swift_once();
  }

  v1 = qword_1001695B0;
  *(v0 + 32) = qword_1001695B0;
  v2 = qword_10015AA48;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1001695C0;
  *(v0 + 40) = qword_1001695C0;
  v5 = qword_10015AA40;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1001695B8;
  *(v0 + 48) = qword_1001695B8;
  v8 = qword_10015AA50;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1001695C8;
  *(v0 + 56) = qword_1001695C8;
  v11 = qword_10015AA58;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1001695D0;
  *(v0 + 64) = qword_1001695D0;
  v14 = qword_10015AA60;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1001695D8;
  *(v0 + 72) = qword_1001695D8;
  v17 = qword_10015AA68;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1001695E0;
  *(v0 + 80) = qword_1001695E0;
  v20 = qword_10015AA70;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_1001695E8;
  *(v0 + 88) = qword_1001695E8;
  v23 = v22;

  v26 = sub_10008596C(v24);
  sub_100083C4C(&v26);

  qword_1001695F0 = v26;
  return result;
}

void *sub_100083BC4(uint64_t a1, uint64_t a2)
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

  sub_10004DED0(&qword_10015D3B8, &unk_1001186B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_100083C4C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10005E260(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100083CC8(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100083CC8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10002CC5C();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100084254(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100083DCC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100083DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = type metadata accessor for URL();
  v8 = __chkstk_darwin(v61);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v59 = &v52 - v12;
  v53 = a2;
  if (a3 != a2)
  {
    v57 = *a4;
    v58 = (v11 + 8);
    v13 = v57 + 8 * a3 - 8;
    v14 = a1 - a3;
    p_base_meths = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
LABEL_6:
    v55 = v13;
    v56 = a3;
    v16 = *(v57 + 8 * a3);
    v54 = v14;
    v17 = v14;
    while (1)
    {
      v18 = *v13;
      v19 = v16;
      v20 = v18;
      v21 = [v19 p_base_meths[278]];
      v67 = v20;
      v62 = v17;
      v63 = v19;
      if (v21)
      {
        v22 = v21;
        v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v23 + 16) && (v24 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v25 & 1) != 0))
        {
          sub_10001EE30(*(v23 + 56) + 32 * v24, v66);

          if (swift_dynamicCast())
          {
            v26 = v64;
            v27 = v65;
            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v28 = [v19 bundleURL];
      v29 = v60;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = v59;
      URL.deletingPathExtension()();
      v31 = *v58;
      v32 = v61;
      (*v58)(v29, v61);
      v26 = URL.lastPathComponent.getter();
      v27 = v33;
      v31(v30, v32);
      v20 = v67;
LABEL_14:
      v34 = [v20 p_base_meths[278]];
      if (!v34)
      {
        goto LABEL_20;
      }

      v35 = v34;
      v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v36 + 16) || (v37 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v38 & 1) == 0))
      {

LABEL_20:
        v41 = [v20 bundleURL];
        v42 = v60;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = v59;
        URL.deletingPathExtension()();
        v44 = *v58;
        v45 = v61;
        (*v58)(v42, v61);
        v39 = URL.lastPathComponent.getter();
        v40 = v46;
        v44(v43, v45);
        goto LABEL_21;
      }

      sub_10001EE30(*(v36 + 56) + 32 * v37, v66);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_20;
      }

      v39 = v64;
      v40 = v65;
LABEL_21:
      v47 = v63;
      if (v26 == v39 && v27 == v40)
      {

        p_base_meths = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
LABEL_5:
        a3 = v56 + 1;
        v13 = v55 + 8;
        v14 = v54 - 1;
        if (v56 + 1 == v53)
        {
          return result;
        }

        goto LABEL_6;
      }

      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      p_base_meths = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
      v49 = v62;
      if ((v48 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v57)
      {
        __break(1u);
        return result;
      }

      v50 = *v13;
      v16 = *(v13 + 8);
      *v13 = v16;
      *(v13 + 8) = v50;
      v13 -= 8;
      v51 = __CFADD__(v49, 1);
      v17 = v49 + 1;
      if (v51)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

void sub_100084254(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v6;
  v155 = a4;
  v156 = a1;
  v169 = type metadata accessor for URL();
  v9 = __chkstk_darwin(v169);
  v168 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v167 = &v153 - v12;
  v13 = *(a3 + 8);
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_132:
    v4 = *v156;
    if (!*v156)
    {
      goto LABEL_171;
    }

    v5 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v147 = v5;
LABEL_135:
      v175 = v147;
      v5 = *(v147 + 2);
      if (v5 >= 2)
      {
        do
        {
          v148 = *a3;
          if (!*a3)
          {
            goto LABEL_169;
          }

          v149 = a3;
          a3 = *&v147[16 * v5];
          v150 = v147;
          v151 = *&v147[16 * v5 + 24];
          sub_100084FE4((v148 + 8 * a3), (v148 + 8 * *&v147[16 * v5 + 16]), (v148 + 8 * v151), v4);
          if (v7)
          {
            break;
          }

          if (v151 < a3)
          {
            goto LABEL_158;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = sub_10005E064(v150);
          }

          if (v5 - 2 >= *(v150 + 2))
          {
            goto LABEL_159;
          }

          v152 = &v150[16 * v5];
          *v152 = a3;
          *(v152 + 1) = v151;
          v175 = v150;
          sub_10005DFD8(v5 - 1);
          v147 = v175;
          v5 = *(v175 + 2);
          a3 = v149;
        }

        while (v5 > 1);
      }

LABEL_143:

      return;
    }

LABEL_165:
    v147 = sub_10005E064(v5);
    goto LABEL_135;
  }

  v14 = 0;
  v166 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v159 = a3;
  while (2)
  {
    v16 = v14++;
    v157 = v16;
    if (v14 >= v13)
    {
      v26 = v155;
      goto LABEL_45;
    }

    v154 = v15;
    v17 = *a3;
    v18 = *(*a3 + 8 * v16);
    v4 = *(*a3 + 8 * v14);
    v19 = v18;
    v20 = sub_100083150();
    v22 = v21;
    v23 = sub_100083150();
    v5 = v24;
    if (v20 == v23 && v22 == v24)
    {
      LODWORD(v164) = 0;
    }

    else
    {
      LODWORD(v164) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v16 = v157;
    v14 = v157 + 2;
    a3 = v159;
    if (v157 + 2 >= v13)
    {
      goto LABEL_36;
    }

    v27 = (v17 + 8 * v157 + 16);
    v162 = v13;
    do
    {
      v28 = *(v27 - 1);
      v29 = *v27;
      v30 = v28;
      v31 = [v29 infoDictionary];
      v163 = v7;
      if (v31)
      {
        v32 = v31;
        v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v33 + 16) && (v34 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v35 & 1) != 0))
        {
          sub_10001EE30(*(v33 + 56) + 32 * v34, v174);

          if (swift_dynamicCast())
          {
            v165 = v172;
            v170 = v173;
            goto LABEL_23;
          }
        }

        else
        {
        }
      }

      v36 = [v29 bundleURL];
      v37 = v168;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = v167;
      URL.deletingPathExtension()();
      v39 = *v166;
      v40 = v30;
      v41 = v169;
      (*v166)(v37, v169);
      v165 = URL.lastPathComponent.getter();
      v170 = v42;
      v43 = v41;
      v30 = v40;
      v39(v38, v43);
LABEL_23:
      v44 = [v30 infoDictionary];
      v171 = v30;
      if (!v44)
      {
        goto LABEL_29;
      }

      v45 = v44;
      v46 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v46 + 16) || (v47 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v48 & 1) == 0))
      {

LABEL_29:
        v50 = [v30 bundleURL];
        v51 = v168;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v52 = v167;
        URL.deletingPathExtension()();
        v53 = *v166;
        v54 = v169;
        (*v166)(v51, v169);
        v49 = URL.lastPathComponent.getter();
        v5 = v55;
        v53(v52, v54);
        goto LABEL_30;
      }

      sub_10001EE30(*(v46 + 56) + 32 * v47, v174);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_29;
      }

      v49 = v172;
      v5 = v173;
LABEL_30:
      v56 = v162;
      v7 = v163;
      a3 = v159;
      v4 = v170;
      if (v165 == v49 && v170 == v5)
      {

        if (v164)
        {
          v15 = v154;
          v26 = v155;
          v16 = v157;
          goto LABEL_37;
        }
      }

      else
      {
        v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v164 ^ v4))
        {
          goto LABEL_35;
        }
      }

      ++v14;
      ++v27;
    }

    while (v56 != v14);
    v14 = v56;
LABEL_35:
    v16 = v157;
LABEL_36:
    v15 = v154;
    v26 = v155;
    if (v164)
    {
LABEL_37:
      if (v14 < v16)
      {
        goto LABEL_162;
      }

      if (v16 < v14)
      {
        v57 = 8 * v14 - 8;
        v58 = 8 * v16;
        v59 = v14;
        do
        {
          if (v16 != --v59)
          {
            v60 = *a3;
            if (!*a3)
            {
              goto LABEL_168;
            }

            v61 = *(v60 + v58);
            *(v60 + v58) = *(v60 + v57);
            *(v60 + v57) = v61;
          }

          ++v16;
          v57 -= 8;
          v58 += 8;
        }

        while (v16 < v59);
        v16 = v157;
      }
    }

LABEL_45:
    v62 = *(a3 + 8);
    if (v14 >= v62)
    {
LABEL_80:
      if (v14 < v16)
      {
        goto LABEL_160;
      }

      v100 = v15;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v15 = v100;
      }

      else
      {
        v15 = sub_10005E15C(0, *(v100 + 2) + 1, 1, v100);
      }

      v4 = *(v15 + 2);
      v101 = *(v15 + 3);
      v5 = v4 + 1;
      v102 = v157;
      if (v4 >= v101 >> 1)
      {
        v146 = sub_10005E15C((v101 > 1), v4 + 1, 1, v15);
        v102 = v157;
        v15 = v146;
      }

      *(v15 + 2) = v5;
      v103 = &v15[16 * v4];
      *(v103 + 4) = v102;
      *(v103 + 5) = v14;
      v104 = *v156;
      if (!*v156)
      {
        goto LABEL_170;
      }

      if (!v4)
      {
LABEL_3:
        v13 = *(a3 + 8);
        if (v14 >= v13)
        {
          goto LABEL_132;
        }

        continue;
      }

      while (1)
      {
        v105 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v106 = *(v15 + 4);
          v107 = *(v15 + 5);
          v116 = __OFSUB__(v107, v106);
          v108 = v107 - v106;
          v109 = v116;
LABEL_100:
          if (v109)
          {
            goto LABEL_149;
          }

          v122 = &v15[16 * v5];
          v124 = *v122;
          v123 = *(v122 + 1);
          v125 = __OFSUB__(v123, v124);
          v126 = v123 - v124;
          v127 = v125;
          if (v125)
          {
            goto LABEL_152;
          }

          v128 = &v15[16 * v105 + 32];
          v130 = *v128;
          v129 = *(v128 + 1);
          v116 = __OFSUB__(v129, v130);
          v131 = v129 - v130;
          if (v116)
          {
            goto LABEL_155;
          }

          if (__OFADD__(v126, v131))
          {
            goto LABEL_156;
          }

          if (v126 + v131 >= v108)
          {
            if (v108 < v131)
            {
              v105 = v5 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        v132 = &v15[16 * v5];
        v134 = *v132;
        v133 = *(v132 + 1);
        v116 = __OFSUB__(v133, v134);
        v126 = v133 - v134;
        v127 = v116;
LABEL_114:
        if (v127)
        {
          goto LABEL_151;
        }

        v135 = &v15[16 * v105];
        v137 = *(v135 + 4);
        v136 = *(v135 + 5);
        v116 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v116)
        {
          goto LABEL_154;
        }

        if (v138 < v126)
        {
          goto LABEL_3;
        }

LABEL_121:
        v4 = v105 - 1;
        if (v105 - 1 >= v5)
        {
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*a3)
        {
          goto LABEL_167;
        }

        v143 = v15;
        v5 = *&v15[16 * v4 + 32];
        v144 = *&v15[16 * v105 + 40];
        sub_100084FE4((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v105 + 32]), (*a3 + 8 * v144), v104);
        if (v7)
        {
          goto LABEL_143;
        }

        if (v144 < v5)
        {
          goto LABEL_145;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_10005E064(v143);
        }

        if (v4 >= *(v143 + 2))
        {
          goto LABEL_146;
        }

        v145 = &v143[16 * v4];
        *(v145 + 4) = v5;
        *(v145 + 5) = v144;
        v175 = v143;
        sub_10005DFD8(v105);
        v15 = v175;
        v5 = *(v175 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v110 = &v15[16 * v5 + 32];
      v111 = *(v110 - 64);
      v112 = *(v110 - 56);
      v116 = __OFSUB__(v112, v111);
      v113 = v112 - v111;
      if (v116)
      {
        goto LABEL_147;
      }

      v115 = *(v110 - 48);
      v114 = *(v110 - 40);
      v116 = __OFSUB__(v114, v115);
      v108 = v114 - v115;
      v109 = v116;
      if (v116)
      {
        goto LABEL_148;
      }

      v117 = &v15[16 * v5];
      v119 = *v117;
      v118 = *(v117 + 1);
      v116 = __OFSUB__(v118, v119);
      v120 = v118 - v119;
      if (v116)
      {
        goto LABEL_150;
      }

      v116 = __OFADD__(v108, v120);
      v121 = v108 + v120;
      if (v116)
      {
        goto LABEL_153;
      }

      if (v121 >= v113)
      {
        v139 = &v15[16 * v105 + 32];
        v141 = *v139;
        v140 = *(v139 + 1);
        v116 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v116)
        {
          goto LABEL_157;
        }

        if (v108 < v142)
        {
          v105 = v5 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_100;
    }

    break;
  }

  if (__OFSUB__(v14, v16))
  {
    goto LABEL_161;
  }

  if (v14 - v16 >= v26)
  {
LABEL_79:
    v16 = v157;
    goto LABEL_80;
  }

  v16 = v157;
  v63 = v157 + v26;
  if (__OFADD__(v157, v26))
  {
    goto LABEL_163;
  }

  if (v63 >= v62)
  {
    v63 = *(a3 + 8);
  }

  if (v63 < v157)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  if (v14 == v63)
  {
    goto LABEL_80;
  }

  v154 = v15;
  v64 = *a3;
  v163 = v7;
  v164 = v64;
  v65 = v64 + 8 * v14 - 8;
  v66 = v157 - v14;
  v158 = v63;
  while (2)
  {
    v161 = v65;
    v162 = v14;
    v67 = *(v164 + 8 * v14);
    v160 = v66;
    v68 = v66;
    v69 = v65;
LABEL_57:
    v70 = *v69;
    v71 = v67;
    v72 = v70;
    v73 = [v71 infoDictionary];
    v170 = v71;
    v171 = v72;
    if (v73)
    {
      v74 = v73;
      v75 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v75 + 16) && (v76 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v77 & 1) != 0))
      {
        sub_10001EE30(*(v75 + 56) + 32 * v76, v174);

        if (swift_dynamicCast())
        {
          v4 = v172;
          v78 = v173;
          goto LABEL_64;
        }
      }

      else
      {
      }
    }

    v79 = [v71 bundleURL];
    v80 = v168;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = v167;
    URL.deletingPathExtension()();
    v82 = *v166;
    v83 = v169;
    (*v166)(v80, v169);
    v4 = URL.lastPathComponent.getter();
    v78 = v84;
    v85 = v81;
    v72 = v171;
    v82(v85, v83);
LABEL_64:
    v86 = [v72 infoDictionary];
    if (v86)
    {
      v87 = v86;
      v88 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v88 + 16) && (v89 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v90 & 1) != 0))
      {
        sub_10001EE30(*(v88 + 56) + 32 * v89, v174);

        if (swift_dynamicCast())
        {
          v5 = v173;
          if (v4 != v172)
          {
            break;
          }

          goto LABEL_72;
        }
      }

      else
      {
      }
    }

    v91 = [v72 bundleURL];
    v92 = v168;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v93 = v167;
    URL.deletingPathExtension()();
    v165 = v69;
    v94 = *v166;
    v95 = v169;
    (*v166)(v92, v169);
    v96 = URL.lastPathComponent.getter();
    v5 = v97;
    v94(v93, v95);
    v69 = v165;
    if (v4 != v96)
    {
      break;
    }

LABEL_72:
    if (v78 == v5)
    {

LABEL_55:
      v14 = v162 + 1;
      v65 = v161 + 8;
      v66 = v160 - 1;
      if (v162 + 1 == v158)
      {
        v14 = v158;
        v7 = v163;
        a3 = v159;
        v15 = v154;
        goto LABEL_79;
      }

      continue;
    }

    break;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_55;
  }

  if (v164)
  {
    v98 = *v69;
    v67 = *(v69 + 8);
    *v69 = v67;
    *(v69 + 8) = v98;
    v69 -= 8;
    if (__CFADD__(v68++, 1))
    {
      goto LABEL_55;
    }

    goto LABEL_57;
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
}

uint64_t sub_100084FE4(id *a1, id *a2, id *a3, void **a4)
{
  v105 = type metadata accessor for URL();
  v8 = *(v105 - 8);
  v9 = __chkstk_darwin(v105);
  v104 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v103 = &v94 - v11;
  v109 = a1;
  v12 = a2 - a1;
  v13 = v12 / 8;
  v101 = a2;
  v14 = a3 - a2;
  v15 = v14 / 8;
  if (v12 / 8 >= v14 / 8)
  {
    if (a4 != v101 || &v101[v15] <= a4)
    {
      memmove(a4, v101, 8 * v15);
    }

    v102 = &a4[v15];
    if (v14 < 8 || v101 <= v109)
    {
      goto LABEL_67;
    }

    v96 = (v8 + 8);
    p_base_meths = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
LABEL_39:
    v55 = v102;
    v56 = v101 - 1;
    v95 = v101 - 1;
    while (1)
    {
      v99 = a3;
      v57 = *(v55 - 8);
      v97 = (v55 - 8);
      v58 = *v56;
      v59 = v57;
      v60 = v58;
      v61 = [v59 p_base_meths[278]];
      v100 = v60;
      v98 = v59;
      if (v61)
      {
        v62 = v61;
        v63 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v63 + 16) && (v64 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v65 & 1) != 0))
        {
          sub_10001EE30(*(v63 + 56) + 32 * v64, v108);

          if (swift_dynamicCast())
          {
            v67 = v106;
            v66 = v107;
            goto LABEL_48;
          }
        }

        else
        {
        }
      }

      v68 = [v59 bundleURL];
      v69 = v104;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v70 = v103;
      URL.deletingPathExtension()();
      v71 = *v96;
      v72 = v105;
      (*v96)(v69, v105);
      v67 = URL.lastPathComponent.getter();
      v66 = v73;
      v74 = v72;
      v60 = v100;
      v71(v70, v74);
LABEL_48:
      v75 = [v60 p_base_meths[278]];
      if (v75)
      {
        v76 = v75;
        v77 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v77 + 16) && (v78 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v79 & 1) != 0))
        {
          sub_10001EE30(*(v77 + 56) + 32 * v78, v108);

          if (swift_dynamicCast())
          {
            v80 = v107;
            if (v67 != v106)
            {
              goto LABEL_58;
            }

            goto LABEL_56;
          }
        }

        else
        {
        }
      }

      v81 = [v60 bundleURL];
      v82 = v104;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v83 = v103;
      URL.deletingPathExtension()();
      v84 = a4;
      v85 = *v96;
      v86 = v105;
      (*v96)(v82, v105);
      v87 = URL.lastPathComponent.getter();
      v80 = v88;
      v85(v83, v86);
      a4 = v84;
      if (v67 != v87)
      {
        goto LABEL_58;
      }

LABEL_56:
      if (v66 != v80)
      {
LABEL_58:
        v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v89 = v99;
        a3 = v99 - 1;
        p_base_meths = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
        if (v90)
        {
          v92 = v95;
          if (v99 != v101)
          {
            *a3 = *v95;
          }

          if (v102 <= a4 || (v101 = v92, v92 <= v109))
          {
            v101 = v92;
            goto LABEL_67;
          }

          goto LABEL_39;
        }

        goto LABEL_59;
      }

      v89 = v99;
      a3 = v99 - 1;
      p_base_meths = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
LABEL_59:
      v56 = v95;
      v91 = v102 == v89;
      v55 = v97;
      if (!v91)
      {
        *a3 = *v97;
      }

      v102 = v55;
      if (v55 <= a4)
      {
        v102 = v55;
        goto LABEL_67;
      }
    }
  }

  if (a4 != v109 || &v109[v13] <= a4)
  {
    memmove(a4, v109, 8 * v13);
  }

  v102 = &a4[v13];
  if (v12 >= 8 && v101 < a3)
  {
    v16 = (v8 + 8);
    v17 = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
    do
    {
      v18 = *a4;
      v19 = *v101;
      v20 = v18;
      v21 = [v19 v17[278]];
      v99 = a4;
      v100 = v20;
      v98 = v19;
      if (v21)
      {
        v22 = v21;
        v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v23 + 16) && (v24 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v25 & 1) != 0))
        {
          sub_10001EE30(*(v23 + 56) + 32 * v24, v108);

          if (swift_dynamicCast())
          {
            v27 = v106;
            v26 = v107;
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v28 = [v19 bundleURL];
      v29 = v104;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = v103;
      URL.deletingPathExtension()();
      v31 = *v16;
      v32 = v29;
      v33 = v105;
      (*v16)(v32, v105);
      v27 = URL.lastPathComponent.getter();
      v26 = v34;
      v35 = v33;
      v20 = v100;
      v31(v30, v35);
LABEL_15:
      v36 = [v20 v17[278]];
      if (v36)
      {
        v37 = v36;
        v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v38 + 16) && (v39 = sub_1000B8930(0x656C646E75424643, 0xEC000000656D614ELL), (v40 & 1) != 0))
        {
          sub_10001EE30(*(v38 + 56) + 32 * v39, v108);

          if (swift_dynamicCast())
          {
            v41 = v107;
            if (v27 != v106)
            {
              goto LABEL_25;
            }

            goto LABEL_23;
          }
        }

        else
        {
        }
      }

      v42 = [v20 bundleURL];
      v43 = v104;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = a3;
      v45 = v103;
      URL.deletingPathExtension()();
      v46 = *v16;
      v47 = v43;
      v48 = v105;
      (*v16)(v47, v105);
      v49 = URL.lastPathComponent.getter();
      v41 = v50;
      v51 = v45;
      a3 = v44;
      v46(v51, v48);
      if (v27 != v49)
      {
        goto LABEL_25;
      }

LABEL_23:
      if (v26 == v41)
      {

        v17 = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
LABEL_28:
        v53 = v99;
        a4 = v99 + 1;
        if (v109 == v99)
        {
          goto LABEL_30;
        }

LABEL_29:
        *v109 = *v53;
        goto LABEL_30;
      }

LABEL_25:
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
      if ((v52 & 1) == 0)
      {
        goto LABEL_28;
      }

      v53 = v101++;
      a4 = v99;
      if (v109 != v53)
      {
        goto LABEL_29;
      }

LABEL_30:
      ++v109;
    }

    while (a4 < v102 && v101 < a3);
  }

  v101 = v109;
LABEL_67:
  if (v101 != a4 || v101 >= (a4 + ((v102 - a4 + (v102 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v101, a4, 8 * (v102 - a4));
  }

  return 1;
}

void *sub_10008596C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100083BC4(v3, 0);
  sub_100085A00((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100085A00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100085C08();
          for (i = 0; i != v6; ++i)
          {
            sub_10004DED0(&qword_10015D220, &qword_100113A40);
            v9 = sub_100085B80(v13, i, a3);
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
        sub_10002CC5C();
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

void (*sub_100085B80(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    return sub_100085C00;
  }

  __break(1u);
  return result;
}

unint64_t sub_100085C08()
{
  result = qword_10015DE30;
  if (!qword_10015DE30)
  {
    sub_100052374(&qword_10015D220, &qword_100113A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DE30);
  }

  return result;
}

uint64_t sub_100085C6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100085CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100085D38()
{
  v0 = type metadata accessor for Logger();
  sub_100006538(v0, qword_100169610);
  sub_10000659C(v0, qword_100169610);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100085DC4()
{
  v0 = type metadata accessor for Logger();
  sub_100006538(v0, qword_100169628);
  sub_10000659C(v0, qword_100169628);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100085ED8()
{
  v0 = type metadata accessor for Logger();
  sub_100006538(v0, qword_1001696E8);
  sub_10000659C(v0, qword_1001696E8);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100085F64()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100006538(v0, qword_100169730);
  sub_10000659C(v0, qword_100169730);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t type metadata accessor for TapToRadarDraft(uint64_t a1)
{
  result = qword_10015DED0;
  if (!qword_10015DED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100086094(uint64_t a1)
{
  sub_1000864D0(319, &qword_10015DEE0, &qword_10015E900, &qword_100114A50, sub_1000863EC);
  if (v1 <= 0x3F)
  {
    sub_100086480();
    if (v2 <= 0x3F)
    {
      sub_1000864D0(319, &qword_10015DEF8, &qword_10015DF00, &qword_100114A58, sub_100086540);
      if (v3 <= 0x3F)
      {
        sub_1000864D0(319, &qword_10015DF10, &qword_10015DF18, &qword_100114A60, sub_1000865BC);
        if (v4 <= 0x3F)
        {
          sub_1000864D0(319, &qword_10015DF28, &qword_10015DF30, &unk_100114A68, sub_100086638);
          if (v5 <= 0x3F)
          {
            sub_1000864D0(319, &qword_10015DF40, &qword_10015D2E8, &unk_100113BE0, sub_1000866B4);
            if (v6 <= 0x3F)
            {
              sub_1000864D0(319, &qword_10015DF50, &qword_10015DF58, &unk_100114A78, sub_100086730);
              if (v7 <= 0x3F)
              {
                sub_1000864D0(319, &qword_10015DF68, &unk_10015FC00, &qword_100111C00, sub_1000867AC);
                if (v8 <= 0x3F)
                {
                  sub_1000868A4(319, &qword_10015DF78, &type metadata for Bool, &off_10014FA20);
                  if (v9 <= 0x3F)
                  {
                    sub_1000864D0(319, &qword_10015DF80, &qword_10015DF88, &qword_100114A88, sub_100086828);
                    if (v10 <= 0x3F)
                    {
                      sub_1000868A4(319, &qword_10015DF98, &type metadata for TapToRadarDraft.RemoteDeviceSelections, &off_10014FDC8);
                      if (v11 <= 0x3F)
                      {
                        sub_1000868A4(319, &unk_10015DFA0, &type metadata for TapToRadarDraft.AutoDiagnostics, &off_10014FDB8);
                        if (v12 <= 0x3F)
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
        }
      }
    }
  }
}

unint64_t sub_1000863EC()
{
  result = qword_10015DEE8;
  if (!qword_10015DEE8)
  {
    sub_100052374(&qword_10015E900, &qword_100114A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DEE8);
  }

  return result;
}

void sub_100086480()
{
  if (!qword_10015DEF0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10015DEF0);
    }
  }
}

void sub_1000864D0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = sub_100052374(a3, a4);
    v9 = a5();
    v11 = type metadata accessor for URLParameter(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_100086540()
{
  result = qword_10015DF08;
  if (!qword_10015DF08)
  {
    sub_100052374(&qword_10015DF00, &qword_100114A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF08);
  }

  return result;
}

unint64_t sub_1000865BC()
{
  result = qword_10015DF20;
  if (!qword_10015DF20)
  {
    sub_100052374(&qword_10015DF18, &qword_100114A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF20);
  }

  return result;
}

unint64_t sub_100086638()
{
  result = qword_10015DF38;
  if (!qword_10015DF38)
  {
    sub_100052374(&qword_10015DF30, &unk_100114A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF38);
  }

  return result;
}

unint64_t sub_1000866B4()
{
  result = qword_10015DF48;
  if (!qword_10015DF48)
  {
    sub_100052374(&qword_10015D2E8, &unk_100113BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF48);
  }

  return result;
}

unint64_t sub_100086730()
{
  result = qword_10015DF60;
  if (!qword_10015DF60)
  {
    sub_100052374(&qword_10015DF58, &unk_100114A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF60);
  }

  return result;
}

unint64_t sub_1000867AC()
{
  result = qword_10015DF70;
  if (!qword_10015DF70)
  {
    sub_100052374(&unk_10015FC00, &qword_100111C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF70);
  }

  return result;
}

unint64_t sub_100086828()
{
  result = qword_10015DF90;
  if (!qword_10015DF90)
  {
    sub_100052374(&qword_10015DF88, &qword_100114A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015DF90);
  }

  return result;
}

void sub_1000868A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for URLParameter(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SettingsAppFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsAppFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsAppPresentableItemIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsAppPresentableItemIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100086D04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100086D4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100086DAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100086E2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100086FB0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_100087200(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_100087404(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000010011EAC0;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000010011EAE0;
    }

    v5 = 0x800000010011EA80;
    if (a1 != 3)
    {
      v5 = 0x800000010011EAA0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000010011EAC0;
    }

    else
    {
      v10 = 0x800000010011EAE0;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000010011EA80;
    }

    else
    {
      v10 = 0x800000010011EAA0;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_1000875DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_1000877D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000068;
  v3 = 0x746F6F7465756C62;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x72616C756C6C6563;
    }

    else
    {
      v5 = 0x79726574746162;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1768319351;
    }

    else
    {
      v5 = 0x746F6F7465756C62;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE900000000000068;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x72616C756C6C6563;
  if (a2 != 2)
  {
    v8 = 0x79726574746162;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 1768319351;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
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

Swift::Int sub_100087908(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100087A1C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100087B24(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100087C34(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100087D44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004DED0(&qword_10015E910, &unk_10010FC70);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for URLComponents();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  sub_100087F94();
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1000068B0(v4, &qword_10015E910, &unk_10010FC70);
    sub_10008D614();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

char *sub_100087F94()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015E0F8, &qword_100115078);
  v3 = __chkstk_darwin(v2 - 8);
  v331 = &v295 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v330 = &v295 - v6;
  v7 = __chkstk_darwin(v5);
  v329 = &v295 - v8;
  v9 = __chkstk_darwin(v7);
  v326 = &v295 - v10;
  v11 = __chkstk_darwin(v9);
  v323 = &v295 - v12;
  v13 = __chkstk_darwin(v11);
  v320 = &v295 - v14;
  v15 = __chkstk_darwin(v13);
  v319 = &v295 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v295 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v295 - v21;
  __chkstk_darwin(v20);
  v24 = &v295 - v23;
  v25 = type metadata accessor for URLQueryItem();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v298 = &v295 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v297 = &v295 - v30;
  v31 = __chkstk_darwin(v29);
  v314 = &v295 - v32;
  v33 = __chkstk_darwin(v31);
  v313 = &v295 - v34;
  v35 = __chkstk_darwin(v33);
  v350 = &v295 - v36;
  v37 = __chkstk_darwin(v35);
  v312 = &v295 - v38;
  v39 = __chkstk_darwin(v37);
  v349 = &v295 - v40;
  v41 = __chkstk_darwin(v39);
  v348 = &v295 - v42;
  v43 = __chkstk_darwin(v41);
  v311 = &v295 - v44;
  v45 = __chkstk_darwin(v43);
  v347 = &v295 - v46;
  v47 = __chkstk_darwin(v45);
  v328 = &v295 - v48;
  v49 = __chkstk_darwin(v47);
  v327 = &v295 - v50;
  v51 = __chkstk_darwin(v49);
  v346 = &v295 - v52;
  v53 = __chkstk_darwin(v51);
  v310 = &v295 - v54;
  v55 = __chkstk_darwin(v53);
  v345 = &v295 - v56;
  v57 = __chkstk_darwin(v55);
  v344 = &v295 - v58;
  v59 = __chkstk_darwin(v57);
  v309 = &v295 - v60;
  v61 = __chkstk_darwin(v59);
  v343 = &v295 - v62;
  v63 = __chkstk_darwin(v61);
  v342 = &v295 - v64;
  v65 = __chkstk_darwin(v63);
  v308 = &v295 - v66;
  v67 = __chkstk_darwin(v65);
  v341 = &v295 - v68;
  v69 = __chkstk_darwin(v67);
  v340 = &v295 - v70;
  v71 = __chkstk_darwin(v69);
  v307 = &v295 - v72;
  v73 = __chkstk_darwin(v71);
  v339 = &v295 - v74;
  v75 = __chkstk_darwin(v73);
  v325 = &v295 - v76;
  v77 = __chkstk_darwin(v75);
  v324 = &v295 - v78;
  v79 = __chkstk_darwin(v77);
  v351 = &v295 - v80;
  v81 = __chkstk_darwin(v79);
  v306 = &v295 - v82;
  v83 = __chkstk_darwin(v81);
  v338 = &v295 - v84;
  v85 = __chkstk_darwin(v83);
  v337 = &v295 - v86;
  v87 = __chkstk_darwin(v85);
  v305 = &v295 - v88;
  v89 = __chkstk_darwin(v87);
  v336 = &v295 - v90;
  v91 = __chkstk_darwin(v89);
  v335 = &v295 - v92;
  v93 = __chkstk_darwin(v91);
  v304 = &v295 - v94;
  v95 = __chkstk_darwin(v93);
  v334 = &v295 - v96;
  v97 = __chkstk_darwin(v95);
  v322 = &v295 - v98;
  v99 = __chkstk_darwin(v97);
  v321 = &v295 - v100;
  v101 = __chkstk_darwin(v99);
  v333 = &v295 - v102;
  v103 = __chkstk_darwin(v101);
  v303 = &v295 - v104;
  v105 = __chkstk_darwin(v103);
  v332 = &v295 - v106;
  v107 = __chkstk_darwin(v105);
  v302 = &v295 - v108;
  v109 = __chkstk_darwin(v107);
  v301 = &v295 - v110;
  v111 = __chkstk_darwin(v109);
  v300 = &v295 - v112;
  v113 = __chkstk_darwin(v111);
  v299 = &v295 - v114;
  v115 = __chkstk_darwin(v113);
  v318 = &v295 - v116;
  v117 = __chkstk_darwin(v115);
  v317 = &v295 - v118;
  v119 = __chkstk_darwin(v117);
  v316 = &v295 - v120;
  v121 = __chkstk_darwin(v119);
  v315 = &v295 - v122;
  v123 = __chkstk_darwin(v121);
  v125 = &v295 - v124;
  __chkstk_darwin(v123);
  v127 = &v295 - v126;
  v355 = v26;
  v356 = _swiftEmptyArrayStorage;
  v128 = *(v1 + 24);
  v352 = v1;
  if (!v128)
  {
    v353 = *(v26 + 56);
    v353(v24, 1, 1, v25);
LABEL_5:
    sub_1000068B0(v24, &qword_10015E0F8, &qword_100115078);
    v129 = *(v1 + 48);
    if (!v129)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = v355;
  URLQueryItem.init(name:value:)();
  v353 = *(v26 + 56);
  v353(v24, 0, 1, v25);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v1 = v352;
    goto LABEL_5;
  }

  v354 = *(v26 + 32);
  v354(v127, v24, v25);
  (*(v26 + 16))(v125, v127, v25);
  v152 = sub_1000C4F50(0, 1, 1, _swiftEmptyArrayStorage);
  v154 = *(v152 + 2);
  v153 = *(v152 + 3);
  v296 = v19;
  if (v154 >= v153 >> 1)
  {
    v152 = sub_1000C4F50((v153 > 1), v154 + 1, 1, v152);
  }

  v155 = v355;
  v156 = v355 + 8;
  (*(v355 + 8))(v127, v25);
  *(v152 + 2) = v154 + 1;
  v157 = &v152[((*(v156 + 72) + 32) & ~*(v156 + 72)) + *(v156 + 64) * v154];
  v26 = v155;
  v354(v157, v125, v25);
  v356 = v152;
  v1 = v352;
  v19 = v296;
  v129 = *(v352 + 48);
  if (v129)
  {
LABEL_6:
    v131 = *(v1 + 56);
    v130 = *(v1 + 64);
    v357 = *(v1 + 32);
    v358 = v129;
    v359 = v131;
    v360 = v130;
    v132 = sub_10008AF5C();
    sub_1000C4C2C(v132);
  }

LABEL_7:
  v133 = *(v1 + 88);

  sub_10008C7D4(v133, v22);

  v354 = *(v26 + 48);
  if (v354(v22, 1, v25) == 1)
  {
    sub_1000068B0(v22, &qword_10015E0F8, &qword_100115078);
  }

  else
  {
    v134 = *(v26 + 32);
    v135 = v315;
    v134(v315, v22, v25);
    (*(v26 + 16))(v316, v135, v25);
    v136 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_1000C4F50(0, *(v136 + 2) + 1, 1, v136);
    }

    v138 = *(v136 + 2);
    v137 = *(v136 + 3);
    if (v138 >= v137 >> 1)
    {
      v136 = sub_1000C4F50((v137 > 1), v138 + 1, 1, v136);
    }

    (*(v26 + 8))(v315, v25);
    *(v136 + 2) = v138 + 1;
    v134(&v136[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v138], v316, v25);
    v356 = v136;
    v1 = v352;
  }

  v139 = *(v1 + 112);

  sub_10008C9C8(v139, v19);

  if (v354(v19, 1, v25) == 1)
  {
    sub_1000068B0(v19, &qword_10015E0F8, &qword_100115078);
    if (*(v1 + 144))
    {
      goto LABEL_16;
    }

LABEL_28:
    v140 = v319;
    v353(v319, 1, 1, v25);
    goto LABEL_29;
  }

  v147 = *(v26 + 32);
  v148 = v317;
  v147(v317, v19, v25);
  (*(v26 + 16))(v318, v148, v25);
  v149 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v149 = sub_1000C4F50(0, *(v149 + 2) + 1, 1, v149);
  }

  v151 = *(v149 + 2);
  v150 = *(v149 + 3);
  if (v151 >= v150 >> 1)
  {
    v149 = sub_1000C4F50((v150 > 1), v151 + 1, 1, v149);
  }

  (*(v26 + 8))(v317, v25);
  *(v149 + 2) = v151 + 1;
  v147(&v149[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v151], v318, v25);
  v356 = v149;
  if (!*(v1 + 144))
  {
    goto LABEL_28;
  }

LABEL_16:

  v140 = v319;
  URLQueryItem.init(name:value:)();
  v353(v140, 0, 1, v25);

  if (v354(v140, 1, v25) != 1)
  {
    v141 = *(v26 + 32);
    v142 = v299;
    v141(v299, v140, v25);
    (*(v26 + 16))(v300, v142, v25);
    v143 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_1000C4F50(0, *(v143 + 2) + 1, 1, v143);
    }

    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    if (v145 >= v144 >> 1)
    {
      v143 = sub_1000C4F50((v144 > 1), v145 + 1, 1, v143);
    }

    (*(v26 + 8))(v299, v25);
    *(v143 + 2) = v145 + 1;
    v141(&v143[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v145], v300, v25);
    v356 = v143;
    if (!*(v1 + 176))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_1000068B0(v140, &qword_10015E0F8, &qword_100115078);
  if (!*(v1 + 176))
  {
LABEL_22:
    v146 = v320;
    v353(v320, 1, 1, v25);
LABEL_31:
    sub_1000068B0(v146, &qword_10015E0F8, &qword_100115078);
    goto LABEL_41;
  }

LABEL_30:

  v146 = v320;
  URLQueryItem.init(name:value:)();
  v353(v146, 0, 1, v25);

  if (v354(v146, 1, v25) == 1)
  {
    goto LABEL_31;
  }

  v158 = *(v26 + 32);
  v159 = v301;
  v158(v301, v146, v25);
  (*(v26 + 16))(v302, v159, v25);
  v160 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = sub_1000C4F50(0, *(v160 + 2) + 1, 1, v160);
  }

  v162 = *(v160 + 2);
  v161 = *(v160 + 3);
  if (v162 >= v161 >> 1)
  {
    v160 = sub_1000C4F50((v161 > 1), v162 + 1, 1, v160);
  }

  (*(v26 + 8))(v301, v25);
  *(v160 + 2) = v162 + 1;
  v158(&v160[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v162], v302, v25);
  v356 = v160;
LABEL_41:

  sub_10008D2F8(v163);
  if (v164)
  {
    v165 = v303;
    URLQueryItem.init(name:value:)();

    v166 = *(v26 + 32);
    v167 = v332;
    v166(v332, v165, v25);
    (*(v26 + 16))(v333, v167, v25);
    v168 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v168 = sub_1000C4F50(0, *(v168 + 2) + 1, 1, v168);
    }

    v170 = *(v168 + 2);
    v169 = *(v168 + 3);
    if (v170 >= v169 >> 1)
    {
      v168 = sub_1000C4F50((v169 > 1), v170 + 1, 1, v168);
    }

    (*(v26 + 8))(v332, v25);
    *(v168 + 2) = v170 + 1;
    v166(&v168[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v170], v333, v25);
    v356 = v168;
  }

  else
  {
  }

  v171 = type metadata accessor for TapToRadarDraft(0);
  v172 = v323;
  sub_10008CB20(v323);
  if (v354(v172, 1, v25) == 1)
  {
    sub_1000068B0(v172, &qword_10015E0F8, &qword_100115078);
  }

  else
  {
    v173 = *(v26 + 32);
    v174 = v321;
    v173(v321, v172, v25);
    (*(v26 + 16))(v322, v174, v25);
    v175 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v175 = sub_1000C4F50(0, *(v175 + 2) + 1, 1, v175);
    }

    v177 = *(v175 + 2);
    v176 = *(v175 + 3);
    if (v177 >= v176 >> 1)
    {
      v175 = sub_1000C4F50((v176 > 1), v177 + 1, 1, v175);
    }

    (*(v26 + 8))(v321, v25);
    *(v175 + 2) = v177 + 1;
    v173(&v175[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v177], v322, v25);
    v356 = v175;
    v1 = v352;
  }

  sub_10008D0E4(v178);
  if (v179)
  {
    v180 = v304;
    URLQueryItem.init(name:value:)();

    v181 = *(v26 + 32);
    v182 = v334;
    v181(v334, v180, v25);
    (*(v26 + 16))(v335, v182, v25);
    v183 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = sub_1000C4F50(0, *(v183 + 2) + 1, 1, v183);
    }

    v185 = *(v183 + 2);
    v184 = *(v183 + 3);
    if (v185 >= v184 >> 1)
    {
      v183 = sub_1000C4F50((v184 > 1), v185 + 1, 1, v183);
    }

    (*(v26 + 8))(v334, v25);
    *(v183 + 2) = v185 + 1;
    v181(&v183[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v185], v335, v25);
    v356 = v183;
    v1 = v352;
  }

  else
  {
  }

  sub_10008D0E4(v186);
  if (v187)
  {
    v188 = v305;
    URLQueryItem.init(name:value:)();

    v189 = *(v26 + 32);
    v190 = v336;
    v189(v336, v188, v25);
    (*(v26 + 16))(v337, v190, v25);
    v191 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v191 = sub_1000C4F50(0, *(v191 + 2) + 1, 1, v191);
    }

    v193 = *(v191 + 2);
    v192 = *(v191 + 3);
    if (v193 >= v192 >> 1)
    {
      v191 = sub_1000C4F50((v192 > 1), v193 + 1, 1, v191);
    }

    (*(v26 + 8))(v336, v25);
    *(v191 + 2) = v193 + 1;
    v189(&v191[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v193], v337, v25);
    v356 = v191;
    v1 = v352;
  }

  else
  {
  }

  sub_10008CFB4(v194);
  if (v195)
  {
    v196 = v306;
    URLQueryItem.init(name:value:)();

    v197 = *(v26 + 32);
    v198 = v338;
    v197(v338, v196, v25);
    (*(v26 + 16))(v351, v198, v25);
    v199 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v199 = sub_1000C4F50(0, *(v199 + 2) + 1, 1, v199);
    }

    v201 = *(v199 + 2);
    v200 = *(v199 + 3);
    if (v201 >= v200 >> 1)
    {
      v199 = sub_1000C4F50((v200 > 1), v201 + 1, 1, v199);
    }

    (*(v26 + 8))(v338, v25);
    *(v199 + 2) = v201 + 1;
    v197(&v199[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v201], v351, v25);
    v356 = v199;
    v1 = v352;
  }

  else
  {
  }

  v202 = v326;
  URLQueryItem.init(name:value:)();

  v351 = (v26 + 56);
  v353(v202, 0, 1, v25);

  if (v354(v202, 1, v25) == 1)
  {
    sub_1000068B0(v202, &qword_10015E0F8, &qword_100115078);
  }

  else
  {
    v203 = *(v26 + 32);
    v204 = v324;
    v203(v324, v202, v25);
    (*(v26 + 16))(v325, v204, v25);
    v205 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v205 = sub_1000C4F50(0, *(v205 + 2) + 1, 1, v205);
    }

    v207 = *(v205 + 2);
    v206 = *(v205 + 3);
    if (v207 >= v206 >> 1)
    {
      v205 = sub_1000C4F50((v206 > 1), v207 + 1, 1, v205);
    }

    v208 = v355 + 8;
    (*(v355 + 8))(v324, v25);
    *(v205 + 2) = v207 + 1;
    v203(&v205[((*(v208 + 72) + 32) & ~*(v208 + 72)) + *(v208 + 64) * v207], v325, v25);
    v356 = v205;
  }

  sub_10008CFB4(v209);
  if (v210)
  {
    v211 = v307;
    URLQueryItem.init(name:value:)();

    v212 = v355;
    v213 = *(v355 + 32);
    v214 = v339;
    v213(v339, v211, v25);
    (*(v212 + 16))(v340, v214, v25);
    v215 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v215 = sub_1000C4F50(0, *(v215 + 2) + 1, 1, v215);
    }

    v217 = *(v215 + 2);
    v216 = *(v215 + 3);
    if (v217 >= v216 >> 1)
    {
      v215 = sub_1000C4F50((v216 > 1), v217 + 1, 1, v215);
    }

    v218 = v355 + 8;
    (*(v355 + 8))(v339, v25);
    *(v215 + 2) = v217 + 1;
    v213(&v215[((*(v218 + 72) + 32) & ~*(v218 + 72)) + *(v218 + 64) * v217], v340, v25);
    v356 = v215;
  }

  else
  {
  }

  sub_10008CDDC(v219);
  if (v220)
  {
    v221 = v308;
    URLQueryItem.init(name:value:)();

    v222 = v355;
    v223 = *(v355 + 32);
    v224 = v341;
    v223(v341, v221, v25);
    (*(v222 + 16))(v342, v224, v25);
    v225 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v225 = sub_1000C4F50(0, *(v225 + 2) + 1, 1, v225);
    }

    v227 = *(v225 + 2);
    v226 = *(v225 + 3);
    if (v227 >= v226 >> 1)
    {
      v225 = sub_1000C4F50((v226 > 1), v227 + 1, 1, v225);
    }

    v228 = v355 + 8;
    (*(v355 + 8))(v341, v25);
    *(v225 + 2) = v227 + 1;
    v223(&v225[((*(v228 + 72) + 32) & ~*(v228 + 72)) + *(v228 + 64) * v227], v342, v25);
    v356 = v225;
  }

  else
  {
  }

  sub_10008CFB4(v229);
  if (v230)
  {
    v231 = v309;
    URLQueryItem.init(name:value:)();

    v232 = v355;
    v233 = *(v355 + 32);
    v234 = v343;
    v233(v343, v231, v25);
    (*(v232 + 16))(v344, v234, v25);
    v235 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v235 = sub_1000C4F50(0, *(v235 + 2) + 1, 1, v235);
    }

    v237 = *(v235 + 2);
    v236 = *(v235 + 3);
    if (v237 >= v236 >> 1)
    {
      v235 = sub_1000C4F50((v236 > 1), v237 + 1, 1, v235);
    }

    v238 = v355 + 8;
    (*(v355 + 8))(v343, v25);
    *(v235 + 2) = v237 + 1;
    v233(&v235[((*(v238 + 72) + 32) & ~*(v238 + 72)) + *(v238 + 64) * v237], v344, v25);
    v356 = v235;
  }

  else
  {
  }

  v239 = *(v1 + v171[19] + 16);

  sub_10008BBD4(v239);
  if (v240)
  {
    v241 = v310;
    URLQueryItem.init(name:value:)();

    v242 = v355;
    v243 = *(v355 + 32);
    v244 = v345;
    v243(v345, v241, v25);
    (*(v242 + 16))(v346, v244, v25);
    v245 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v245 = sub_1000C4F50(0, *(v245 + 2) + 1, 1, v245);
    }

    v247 = *(v245 + 2);
    v246 = *(v245 + 3);
    if (v247 >= v246 >> 1)
    {
      v245 = sub_1000C4F50((v246 > 1), v247 + 1, 1, v245);
    }

    v248 = v355 + 8;
    (*(v355 + 8))(v345, v25);
    *(v245 + 2) = v247 + 1;
    v243(&v245[((*(v248 + 72) + 32) & ~*(v248 + 72)) + *(v248 + 64) * v247], v346, v25);
    v356 = v245;
  }

  else
  {
  }

  v249 = v329;
  URLQueryItem.init(name:value:)();

  v353(v249, 0, 1, v25);
  v250 = v249;

  if (v354(v249, 1, v25) == 1)
  {
    sub_1000068B0(v249, &qword_10015E0F8, &qword_100115078);
  }

  else
  {
    v251 = v355;
    v252 = *(v355 + 32);
    v253 = v327;
    v252(v327, v250, v25);
    (*(v251 + 16))(v328, v253, v25);
    v254 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v254 = sub_1000C4F50(0, *(v254 + 2) + 1, 1, v254);
    }

    v256 = *(v254 + 2);
    v255 = *(v254 + 3);
    if (v256 >= v255 >> 1)
    {
      v254 = sub_1000C4F50((v255 > 1), v256 + 1, 1, v254);
    }

    v257 = v355 + 8;
    (*(v355 + 8))(v327, v25);
    *(v254 + 2) = v256 + 1;
    v252(&v254[((*(v257 + 72) + 32) & ~*(v257 + 72)) + *(v257 + 64) * v256], v328, v25);
    v356 = v254;
  }

  v258 = *(v1 + v171[21] + 16);

  sub_10008C344(v258);
  if (v259)
  {
    v260 = v311;
    URLQueryItem.init(name:value:)();

    v261 = v355;
    v262 = *(v355 + 32);
    v263 = v347;
    v262(v347, v260, v25);
    (*(v261 + 16))(v348, v263, v25);
    v264 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v264 = sub_1000C4F50(0, *(v264 + 2) + 1, 1, v264);
    }

    v266 = *(v264 + 2);
    v265 = *(v264 + 3);
    if (v266 >= v265 >> 1)
    {
      v264 = sub_1000C4F50((v265 > 1), v266 + 1, 1, v264);
    }

    v267 = v355 + 8;
    (*(v355 + 8))(v347, v25);
    *(v264 + 2) = v266 + 1;
    v262(&v264[((*(v267 + 72) + 32) & ~*(v267 + 72)) + *(v267 + 64) * v266], v348, v25);
    v356 = v264;
  }

  else
  {
  }

  sub_10008CFB4(v268);
  if (v269)
  {
    v270 = v312;
    URLQueryItem.init(name:value:)();

    v271 = v355;
    v272 = *(v355 + 32);
    v273 = v349;
    v272(v349, v270, v25);
    (*(v271 + 16))(v350, v273, v25);
    v274 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v274 = sub_1000C4F50(0, *(v274 + 2) + 1, 1, v274);
    }

    v276 = *(v274 + 2);
    v275 = *(v274 + 3);
    if (v276 >= v275 >> 1)
    {
      v274 = sub_1000C4F50((v275 > 1), v276 + 1, 1, v274);
    }

    v277 = v355 + 8;
    (*(v355 + 8))(v349, v25);
    *(v274 + 2) = v276 + 1;
    v272(&v274[((*(v277 + 72) + 32) & ~*(v277 + 72)) + *(v277 + 64) * v276], v350, v25);
    v356 = v274;
  }

  else
  {
  }

  if (!*(v1 + v171[23] + 24))
  {
    v278 = v330;
    v353(v330, 1, 1, v25);
    v280 = v355;
    goto LABEL_140;
  }

  v278 = v330;
  URLQueryItem.init(name:value:)();
  v353(v278, 0, 1, v25);

  v279 = v354(v278, 1, v25);
  v280 = v355;
  if (v279 == 1)
  {
LABEL_140:
    sub_1000068B0(v278, &qword_10015E0F8, &qword_100115078);
    goto LABEL_141;
  }

  v281 = *(v355 + 32);
  v282 = v313;
  v281(v313, v278, v25);
  (*(v280 + 16))(v314, v282, v25);
  v283 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v283 = sub_1000C4F50(0, *(v283 + 2) + 1, 1, v283);
  }

  v285 = *(v283 + 2);
  v284 = *(v283 + 3);
  if (v285 >= v284 >> 1)
  {
    v283 = sub_1000C4F50((v284 > 1), v285 + 1, 1, v283);
  }

  v280 = v355;
  v286 = v355 + 8;
  (*(v355 + 8))(v313, v25);
  *(v283 + 2) = v285 + 1;
  v281(&v283[((*(v286 + 72) + 32) & ~*(v286 + 72)) + *(v286 + 64) * v285], v314, v25);
  v356 = v283;
LABEL_141:
  if (!*(v352 + v171[24] + 24))
  {
    v287 = v331;
    v353(v331, 1, 1, v25);
    goto LABEL_149;
  }

  v287 = v331;
  URLQueryItem.init(name:value:)();
  v353(v287, 0, 1, v25);

  if (v354(v287, 1, v25) == 1)
  {
LABEL_149:
    sub_1000068B0(v287, &qword_10015E0F8, &qword_100115078);
    return v356;
  }

  v288 = *(v280 + 32);
  v289 = v297;
  v288(v297, v287, v25);
  v290 = v298;
  (*(v280 + 16))(v298, v289, v25);
  v291 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v291 = sub_1000C4F50(0, *(v291 + 2) + 1, 1, v291);
  }

  v293 = *(v291 + 2);
  v292 = *(v291 + 3);
  if (v293 >= v292 >> 1)
  {
    v291 = sub_1000C4F50((v292 > 1), v293 + 1, 1, v291);
  }

  (*(v280 + 8))(v289, v25);
  *(v291 + 2) = v293 + 1;
  v288(&v291[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v293], v290, v25);
  return v291;
}

uint64_t sub_10008A9B0()
{
  v1[18] = v0;
  v2 = type metadata accessor for URL();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10008AA70, 0, 0);
}

uint64_t sub_10008AA70()
{
  sub_100087D44(v0[21]);
  v0[22] = objc_opt_self();
  type metadata accessor for MainActor();
  v0[23] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008AB70, v2, v1);
}

uint64_t sub_10008AB70()
{
  v1 = *(v0 + 176);

  *(v0 + 192) = [v1 sharedApplication];

  return _swift_task_switch(sub_10008ABF4, 0, 0);
}

uint64_t sub_10008ABF4@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[24];
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v1[25] = v3;
  sub_1000BA710(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10008D5BC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1[26] = isa;

  v1[2] = v1;
  v1[7] = v1 + 27;
  v1[3] = sub_10008AD84;
  v6 = swift_continuation_init();
  v1[17] = sub_10004DED0(&qword_10015E0E8, &unk_100115068);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10008AF00;
  v1[13] = &unk_10014FE08;
  v1[14] = v6;
  [v2 openURL:v4 options:isa completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10008AD84()
{

  return _swift_task_switch(sub_10008AE64, 0, 0);
}

uint64_t sub_10008AE64()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008AF00(uint64_t a1, char a2)
{
  v3 = *sub_100018544((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_10008AF5C()
{
  sub_10004DED0(&qword_10015E100, &qword_100115080);
  type metadata accessor for URLQueryItem();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001103E0;
  dispatch thunk of CustomStringConvertible.description.getter();
  URLQueryItem.init(name:value:)();

  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  return v0;
}

Swift::Int sub_10008B0D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10008B158(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10008B1C8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10008B244(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10008B2FC()
{
  result = qword_10015E0A0;
  if (!qword_10015E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0A0);
  }

  return result;
}

unint64_t sub_10008B350(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10008B4B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10008B350(*a1);
  v5 = v4;
  if (v3 == sub_10008B350(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10008B53C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10008B350(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008B5A0(uint64_t a1)
{
  sub_10008B350(*v1);
  String.hash(into:)();
}

Swift::Int sub_10008B5F4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10008B350(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10008B654@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008D49C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10008B684@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10008B350(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10008B6B4()
{
  result = qword_10015E0A8;
  if (!qword_10015E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0A8);
  }

  return result;
}

uint64_t sub_10008B71C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10008B820@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008D534(*a1);
  *a2 = result;
  return result;
}

void sub_10008B850(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_10008B920()
{
  result = qword_10015E0B0;
  if (!qword_10015E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0B0);
  }

  return result;
}

uint64_t sub_10008B98C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10008BA88@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008D450(*a1);
  *a2 = result;
  return result;
}

void sub_10008BAB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_10008BB80()
{
  result = qword_10015E0B8;
  if (!qword_10015E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0B8);
  }

  return result;
}

uint64_t sub_10008BBD4(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_1000C4E44(0, 1, 1, _swiftEmptyArrayStorage);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_1000C4E44((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_1000C4E44((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_1000C4E44((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_37;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_1000C4E44((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_42;
        }

LABEL_37:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_1000C4E44((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_47;
        }

LABEL_42:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_1000C4E44((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
LABEL_25:
          if ((v1 & 0x100) == 0)
          {
LABEL_57:
            sub_10004DED0(&unk_10015FC00, &qword_100111C00);
            sub_1000268F8();
            v1 = BidirectionalCollection<>.joined(separator:)();

            return v1;
          }

LABEL_52:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
          }

          v28 = *(v2 + 2);
          v27 = *(v2 + 3);
          if (v28 >= v27 >> 1)
          {
            v2 = sub_1000C4E44((v27 > 1), v28 + 1, 1, v2);
          }

          *(v2 + 2) = v28 + 1;
          v29 = &v2[16 * v28];
          *(v29 + 4) = 0x656369766544654DLL;
          *(v29 + 5) = 0xE800000000000000;
          goto LABEL_57;
        }

LABEL_47:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
        }

        v25 = *(v2 + 2);
        v24 = *(v2 + 3);
        if (v25 >= v24 >> 1)
        {
          v2 = sub_1000C4E44((v24 > 1), v25 + 1, 1, v2);
        }

        *(v2 + 2) = v25 + 1;
        v26 = &v2[16 * v25];
        *(v26 + 4) = 0xD000000000000016;
        *(v26 + 5) = 0x80000001001231C0;
        if ((v1 & 0x100) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1000C4E44(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1000C4E44((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

Swift::Int sub_10008C11C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10008C164(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10008C1A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10008D584(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_10008C1E8()
{
  result = qword_10015E0C0;
  if (!qword_10015E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0C0);
  }

  return result;
}

unint64_t sub_10008C240()
{
  result = qword_10015E0C8;
  if (!qword_10015E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0C8);
  }

  return result;
}

unint64_t sub_10008C298()
{
  result = qword_10015E0D0;
  if (!qword_10015E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0D0);
  }

  return result;
}

unint64_t sub_10008C2F0()
{
  result = qword_10015E0D8;
  if (!qword_10015E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0D8);
  }

  return result;
}

uint64_t sub_10008C344(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10008C514(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10008C618@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008D4E8(*a1);
  *a2 = result;
  return result;
}

void sub_10008C648(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000010011EAC0;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000010011EAE0;
    }

    v5 = 0x800000010011EA80;
    if (v2 != 3)
    {
      v5 = 0x800000010011EAA0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t sub_10008C71C()
{
  result = qword_10015E0E0;
  if (!qword_10015E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0E0);
  }

  return result;
}

unint64_t sub_10008C770()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_10008C7D4@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 9u)
  {
    v5 = 1;
  }

  else
  {
    URLQueryItem.init(name:value:)();

    v5 = 0;
  }

  v6 = type metadata accessor for URLQueryItem();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_10008C9C8@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    v5 = 1;
  }

  else
  {
    URLQueryItem.init(name:value:)();

    v5 = 0;
  }

  v6 = type metadata accessor for URLQueryItem();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_10008CB20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004DED0(&qword_10015D2E8, &unk_100113BE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004DED0(&qword_10015DE70, &qword_100115220);
  sub_10008D668(v2 + *(v11 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000068B0(v6, &qword_10015D2E8, &unk_100113BE0);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(NSDateFormatter) init];
    v14 = String._bridgeToObjectiveC()();
    [v13 setDateFormat:v14];

    [v13 setDoesRelativeDateFormatting:0];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v16 = [v13 stringFromDate:isa];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v8 + 8))(v10, v7);
    URLQueryItem.init(name:value:)();

    v12 = 0;
  }

  v17 = type metadata accessor for URLQueryItem();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_10008CDDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = _swiftEmptyArrayStorage;
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1000C4E44(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_1000C4E44((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v17 = BidirectionalCollection<>.joined(separator:)();

  return v17;
}

uint64_t sub_10008CFB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = _swiftEmptyArrayStorage;
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1000C4E44(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1000C4E44((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v9 = BidirectionalCollection<>.joined(separator:)();

  return v9;
}

uint64_t sub_10008D0E4(uint64_t a1)
{
  v20 = type metadata accessor for URL();
  __chkstk_darwin(v20);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v6 = v2 + 16;
  v8 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v18 = *(v6 + 56);
  v19 = v7;
  v9 = (v6 - 8);
  v10 = _swiftEmptyArrayStorage;
  do
  {
    v11 = v20;
    v12 = v6;
    v19(v4, v8, v20);
    v13 = URL.path(percentEncoded:)(0);
    (*v9)(v4, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1000C4E44(0, *(v10 + 2) + 1, 1, v10);
    }

    v15 = *(v10 + 2);
    v14 = *(v10 + 3);
    if (v15 >= v14 >> 1)
    {
      v10 = sub_1000C4E44((v14 > 1), v15 + 1, 1, v10);
    }

    *(v10 + 2) = v15 + 1;
    *&v10[16 * v15 + 32] = v13;
    v8 += v18;
    --v5;
    v6 = v12;
  }

  while (v5);
  v21 = v10;
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v16 = BidirectionalCollection<>.joined(separator:)();

  return v16;
}

uint64_t sub_10008D2F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    v2 += 8;
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1000C4E44(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_1000C4E44((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v10 = BidirectionalCollection<>.joined(separator:)();

  return v10;
}

unint64_t sub_10008D450(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10014CC10, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008D49C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10014CCD8, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008D4E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10014CDE8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008D534(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10014CEB0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10008D584(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_10008D5BC()
{
  result = qword_10015AE78;
  if (!qword_10015AE78)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015AE78);
  }

  return result;
}

unint64_t sub_10008D614()
{
  result = qword_10015E0F0;
  if (!qword_10015E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E0F0);
  }

  return result;
}

uint64_t sub_10008D668(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015D2E8, &unk_100113BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008D830()
{
  result = qword_10015E108;
  if (!qword_10015E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E108);
  }

  return result;
}

NSString sub_10008D894()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.ShowTapToRadarAlert = result;
  return result;
}

uint64_t *NSNotificationName.ShowTapToRadarAlert.unsafeMutableAddressor()
{
  if (qword_10015AB00 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.ShowTapToRadarAlert;
}

id static NSNotificationName.ShowTapToRadarAlert.getter()
{
  if (qword_10015AB00 != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.ShowTapToRadarAlert;

  return v1;
}

uint64_t sub_10008D978()
{
  type metadata accessor for TapToRadarManager(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_draft;
  v2 = type metadata accessor for TapToRadarDraft(0);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_hasReportedQueryError) = 0;
  qword_100169780 = v0;
  return result;
}

void sub_10008DA10()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_10004DED0(&qword_10015E1D8, &unk_100115208);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for TapToRadarDraft(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_draft;
  swift_beginAccess();
  sub_10008E29C(v0 + v14, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000068B0(v6, &qword_10015E1D8, &unk_100115208);
    if (qword_10015AA80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000659C(v15, qword_1001695F8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[TapToRadarManager] sendDraft called but no draft has been set", v18, 2u);
    }
  }

  else
  {
    sub_10008E728(v6, v13);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    sub_10008E78C(v13, v11);
    v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    sub_10008E728(v11, v21 + v20);
    sub_100094AF4(0, 0, v3, &unk_100115228, v21);

    sub_10008E8E0(v13);
  }
}

uint64_t sub_10008DD64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10008DDF4;

  return sub_10008A9B0();
}

uint64_t sub_10008DDF4()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10008DF28, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10008DF28()
{
  if (qword_10015AA80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000659C(v1, qword_1001695F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[TapToRadarManager] error occurred while opening draft: %@", v4, 0xCu);
    sub_1000068B0(v5, &unk_10015F9C0, &unk_100115230);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10008E0CC()
{
  sub_10007AB40(v0[2], v0[3], v0[4], v0[5]);
  sub_1000068B0(v0 + OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_draft, &qword_10015E1D8, &unk_100115208);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TapToRadarManager(uint64_t a1)
{
  result = qword_10015E138;
  if (!qword_10015E138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008E1A0(uint64_t a1)
{
  sub_10008E244(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10008E244(uint64_t a1)
{
  if (!qword_10015E148)
  {
    type metadata accessor for TapToRadarDraft(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10015E148);
    }
  }
}

uint64_t sub_10008E29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015E1D8, &unk_100115208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008E30C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x676E697972657571;
  }

  else
  {
    v2 = 0x676E697865646E69;
  }

  if (*a2)
  {
    v3 = 0x676E697972657571;
  }

  else
  {
    v3 = 0x676E697865646E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10008E394()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008E40C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10008E468(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008E4DC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10014CF60, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10008E53C(uint64_t *a1@<X8>)
{
  v2 = 0x676E697865646E69;
  if (*v1)
  {
    v2 = 0x676E697972657571;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

void sub_10008E574(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_hasReportedQueryError))
  {
    if (qword_10015AA80 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000659C(v3, qword_1001695F8);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      if (a1)
      {
        swift_errorRetain();
        v7 = _swift_stdlib_bridgeErrorToNSError();
        v8 = v7;
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }

      *(v5 + 4) = v7;
      *v6 = v8;
      _os_log_impl(&_mh_execute_header, oslog, v4, "[TapToRadarManager] Skipping TTR alert presentation for querying error: '%@', due to too many alerts shown.", v5, 0xCu);
      sub_1000068B0(v6, &unk_10015F9C0, &unk_100115230);
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_hasReportedQueryError) = 1;

    sub_10008ED00(a1, 1);
  }
}

uint64_t sub_10008E728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008E78C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008E7F0()
{
  type metadata accessor for TapToRadarDraft(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000A924;

  return sub_10008DD64();
}

uint64_t sub_10008E8E0(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10008E93C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10004DED0(&qword_10015E1D8, &unk_100115208);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 sf_isInternalInstall];

  if (v14)
  {
    if (qword_10015AA80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000659C(v15, qword_1001695F8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[TapToRadarManager] Presenting TTR alert.", v18, 2u);
    }

    if (qword_10015AB08 != -1)
    {
      swift_once();
    }

    v19 = qword_100169780;
    v20 = *(qword_100169780 + 16);
    v21 = *(qword_100169780 + 24);
    v22 = *(qword_100169780 + 32);
    v23 = *(qword_100169780 + 40);
    *(qword_100169780 + 16) = a1;
    v19[3] = a2;
    v19[4] = a3 & 1;
    v19[5] = a4;
    sub_10007AB40(v20, v21, v22, v23);
    sub_10008E78C(a5, v12);
    v24 = type metadata accessor for TapToRadarDraft(0);
    (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
    v25 = OBJC_IVAR____TtC11SettingsApp17TapToRadarManager_draft;
    swift_beginAccess();
    sub_100009670(a1, a2, a3 & 1);

    sub_10008F3A4(v12, v19 + v25);
    swift_endAccess();
    v26 = [objc_opt_self() defaultCenter];
    if (qword_10015AB00 != -1)
    {
      swift_once();
    }

    [v26 postNotificationName:static NSNotificationName.ShowTapToRadarAlert object:0];
  }

  else
  {
    if (qword_10015AA80 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000659C(v27, qword_1001695F8);
    v31 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v31, v28, "[TapToRadarManager] Skipping TTR alert presentation, due to OS is not Internal OS.", v29, 2u);
    }

    v30 = v31;
  }
}

uint64_t sub_10008ED00(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TapToRadarDraft(0);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    v42 = a1;
    sub_10004DED0(&unk_10015C800, &unk_100112BC0);
    _print_unlocked<A, B>(_:_:)();
    v7 = v45;
    v41 = v44;
  }

  else
  {
    v7 = 0x8000000100123300;
    v41 = 0xD00000000000001BLL;
  }

  v44 = 0;
  v45 = 0xE000000000000000;
  _StringGuts.grow(_:)(95);
  v8._countAndFlagsBits = 0xD000000000000024;
  v8._object = 0x8000000100123320;
  String.append(_:)(v8);
  LOBYTE(v42) = a2 & 1;
  v9 = 0x676E697865646E69;
  if (a2)
  {
    v9 = 0x676E697972657571;
  }

  v40 = v9;
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 0xD000000000000039;
  v10._object = 0x8000000100123350;
  String.append(_:)(v10);
  v12 = v44;
  v11 = v45;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 8) = 0;
  strcpy(v6 + 72, "Classification");
  v6[87] = -18;
  v6[88] = 10;
  *(v6 + 12) = 0x6375646F72706552;
  *(v6 + 13) = 0xEF7974696C696269;
  v6[112] = 6;
  *(v6 + 15) = 0x656C746954;
  *(v6 + 16) = 0xE500000000000000;
  *(v6 + 17) = 0;
  *(v6 + 18) = 0;
  *(v6 + 19) = 0x7470697263736544;
  *(v6 + 20) = 0xEB000000006E6F69;
  *(v6 + 21) = 0;
  *(v6 + 22) = 0;
  *(v6 + 23) = 0x7364726F7779654BLL;
  *(v6 + 24) = 0xE800000000000000;
  *(v6 + 25) = _swiftEmptyArrayStorage;
  v13 = &v6[v4[11]];
  *v6 = 0x4449656C646E7542;
  *(v6 + 1) = 0xE800000000000000;
  v14 = *(sub_10004DED0(&qword_10015DE70, &qword_100115220) + 36);
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  *v13 = 0x7349664F656D6954;
  *(v13 + 1) = 0xEB00000000657573;
  v16 = &v6[v4[12]];
  *v16 = 0x656D686361747441;
  *(v16 + 1) = 0xEB0000000073746ELL;
  *(v16 + 2) = _swiftEmptyArrayStorage;
  v17 = &v6[v4[13]];
  *v17 = 0xD000000000000011;
  *(v17 + 1) = 0x8000000100123390;
  *(v17 + 2) = _swiftEmptyArrayStorage;
  v18 = &v6[v4[14]];
  *v18 = 0xD000000000000014;
  *(v18 + 1) = 0x80000001001233B0;
  *(v18 + 2) = _swiftEmptyArrayStorage;
  v19 = &v6[v4[15]];
  strcpy(v19, "DeleteOnAttach");
  v19[15] = -18;
  v19[16] = 0;
  v20 = &v6[v4[16]];
  *v20 = 0x4449656369766544;
  *(v20 + 1) = 0xE900000000000073;
  *(v20 + 2) = _swiftEmptyArrayStorage;
  v21 = &v6[v4[17]];
  strcpy(v21, "DeviceClasses");
  *(v21 + 7) = -4864;
  *(v21 + 2) = _swiftEmptyArrayStorage;
  v22 = &v6[v4[18]];
  strcpy(v22, "DeviceModels");
  v22[13] = 0;
  *(v22 + 7) = -5120;
  *(v22 + 2) = _swiftEmptyArrayStorage;
  v23 = &v6[v4[19]];
  *v23 = 0xD000000000000016;
  *(v23 + 1) = 0x80000001001233D0;
  *(v23 + 2) = 0;
  v24 = &v6[v4[20]];
  *v24 = 0xD00000000000001ALL;
  *(v24 + 1) = 0x80000001001233F0;
  v24[16] = 0;
  v25 = &v6[v4[21]];
  *v25 = 0x676169446F747541;
  *(v25 + 1) = 0xEF73636974736F6ELL;
  v25[16] = 0;
  v26 = &v6[v4[22]];
  *v26 = 0xD00000000000001BLL;
  *(v26 + 1) = 0x8000000100123410;
  *(v26 + 2) = _swiftEmptyArrayStorage;
  v27 = &v6[v4[23]];
  *v27 = 0xD000000000000018;
  *(v27 + 1) = 0x8000000100123430;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = &v6[v4[24]];
  *v28 = 0xD000000000000012;
  *(v28 + 1) = 0x8000000100123450;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v24[16] = 1;
  *(v6 + 2) = xmmword_100115190;
  *(v6 + 6) = 0x8000000100123470;
  *(v6 + 56) = xmmword_1001151A0;
  v44 = 0;
  v45 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v44 = 0x20686372616553;
  v45 = 0xE700000000000000;
  v42 = v40;
  v43 = 0xE800000000000000;
  sub_10002EAE0();
  v29._countAndFlagsBits = StringProtocol.capitalized.getter();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0x203A726F72724520;
  v30._object = 0xE800000000000000;
  String.append(_:)(v30);
  v31 = v41;
  v32._countAndFlagsBits = v41;
  v32._object = v7;
  String.append(_:)(v32);

  v33 = v45;
  *(v6 + 17) = v44;
  *(v6 + 18) = v33;
  v44 = v12;
  v45 = v11;

  v34._countAndFlagsBits = 0x6C69617465440A0ALL;
  v34._object = 0xEB000000000A3A73;
  String.append(_:)(v34);
  v35._countAndFlagsBits = v31;
  v35._object = v7;
  String.append(_:)(v35);

  v36 = v45;
  *(v6 + 21) = v44;
  *(v6 + 22) = v36;
  v6[88] = 5;
  v6[112] = 4;
  v44 = 0;
  v45 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v44 = v12;
  v45 = v11;
  v37._countAndFlagsBits = 0xD000000000000015;
  v37._object = 0x8000000100123490;
  String.append(_:)(v37);
  sub_10008E93C(v44, v45, 0, _swiftEmptyArrayStorage, v6);

  return sub_10008E8E0(v6);
}

uint64_t sub_10008F3A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015E1D8, &unk_100115208);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008F428()
{
  result = qword_10015E1E0;
  if (!qword_10015E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E1E0);
  }

  return result;
}

void sub_10008F488(uint64_t a1)
{
  sub_100018C28();
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *sub_10008F50C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR____TtC11SettingsAppP33_F16170C8CD22B033163CFC9AD59D599336SettingsAppDebugMenuGestureProxyView_perform];
    v3 = result;

    v2();
  }

  return result;
}

id sub_10008F5BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsAppDebugMenuGestureProxyView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10008F610(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v239 = a1;
  v245 = a2;
  v3 = type metadata accessor for NSBundle.PreferencesPluginLocation();
  __chkstk_darwin(v3 - 8);
  v231 = &v205 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for SettingsAnyPlatformViewControllerRecipe();
  v235 = *(v236 - 8);
  v5 = __chkstk_darwin(v236);
  v233 = &v205 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v234 = &v205 - v7;
  v8 = type metadata accessor for PreferencesControllerRecipe();
  v9 = *(v8 - 8);
  v241 = v8;
  v242 = v9;
  __chkstk_darwin(v8);
  v240 = &v205 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NSBundle.PluginType();
  __chkstk_darwin(v11 - 8);
  v232 = &v205 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NSBundle.PluginLocation();
  v14 = *(v13 - 8);
  v237 = v13;
  v238 = v14;
  v15 = __chkstk_darwin(v13);
  v220 = &v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v219 = &v205 - v18;
  v19 = __chkstk_darwin(v17);
  v218 = &v205 - v20;
  v21 = __chkstk_darwin(v19);
  v217 = &v205 - v22;
  v23 = __chkstk_darwin(v21);
  v216 = &v205 - v24;
  v25 = __chkstk_darwin(v23);
  v215 = &v205 - v26;
  v27 = __chkstk_darwin(v25);
  v214 = &v205 - v28;
  v29 = __chkstk_darwin(v27);
  v213 = &v205 - v30;
  v31 = __chkstk_darwin(v29);
  v212 = &v205 - v32;
  v33 = __chkstk_darwin(v31);
  v211 = &v205 - v34;
  v35 = __chkstk_darwin(v33);
  v210 = &v205 - v36;
  v37 = __chkstk_darwin(v35);
  v209 = &v205 - v38;
  v39 = __chkstk_darwin(v37);
  v208 = &v205 - v40;
  v41 = __chkstk_darwin(v39);
  v207 = &v205 - v42;
  v43 = __chkstk_darwin(v41);
  v221 = &v205 - v44;
  v45 = __chkstk_darwin(v43);
  v222 = &v205 - v46;
  v47 = __chkstk_darwin(v45);
  v223 = &v205 - v48;
  v49 = __chkstk_darwin(v47);
  v224 = &v205 - v50;
  v51 = __chkstk_darwin(v49);
  v225 = &v205 - v52;
  v53 = __chkstk_darwin(v51);
  v226 = &v205 - v54;
  v55 = __chkstk_darwin(v53);
  v227 = &v205 - v56;
  v57 = __chkstk_darwin(v55);
  v229 = &v205 - v58;
  v59 = __chkstk_darwin(v57);
  v228 = &v205 - v60;
  v61 = __chkstk_darwin(v59);
  v230 = &v205 - v62;
  v63 = __chkstk_darwin(v61);
  v206 = &v205 - v64;
  v65 = __chkstk_darwin(v63);
  v67 = &v205 - v66;
  v68 = __chkstk_darwin(v65);
  v70 = &v205 - v69;
  v71 = __chkstk_darwin(v68);
  v73 = &v205 - v72;
  v74 = __chkstk_darwin(v71);
  v76 = &v205 - v75;
  v77 = __chkstk_darwin(v74);
  v79 = &v205 - v78;
  v80 = __chkstk_darwin(v77);
  v82 = &v205 - v81;
  v83 = __chkstk_darwin(v80);
  v85 = &v205 - v84;
  __chkstk_darwin(v83);
  v87 = &v205 - v86;
  v247 = swift_allocObject();
  *(v247 + 16) = 0;
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  *(v88 + 24) = 0;
  v244 = v88;
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  *(v89 + 24) = 0;
  v246 = v89;
  v91 = *v2;
  v92 = *(v2 + 1);
  v243 = v2;
  v93 = v2[32];
  if (v93 > 3)
  {
    switch(v93)
    {
      case 4u:
        v109 = sub_1000919B8(v247, v243, v90);
        isa = Bool._bridgeToObjectiveC()().super.super.isa;
        [v109 setProperty:isa forKey:PSDMCHandleReauthKey];

LABEL_19:
        v111 = [objc_opt_self() defaultStore];
        if (v111)
        {
          v112 = v111;
          v113 = String._bridgeToObjectiveC()();
          v114 = [v112 accountWithIdentifier:v113];

          if (v114)
          {
            v115 = [objc_opt_self() preferredViewControllerClassForAccount:v114 preferiCloudAccount:1];
            v116 = v244;
            if (v115)
            {
              swift_getObjCClassMetadata();
              v256 = &OBJC_PROTOCOL___PSController;
              if (swift_dynamicCastTypeToObjCProtocolConditional())
              {
                sub_100008294(0, &qword_10015E2D0, UIViewController_ptr);
                if (swift_dynamicCastMetatype())
                {
                  v118 = v247;
                  v119 = sub_1000919B8(v247, v243, v117);
                  [v119 setProperty:v114 forKey:ACUIAccountKey];

                  v120 = *(v118 + 16);
                  sub_10004DED0(&qword_10015E2D8, &qword_1001154E8);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_1001103C0;
                  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  *(inited + 40) = v122;
                  *(inited + 48) = v114;
                  v123 = v120;
                  v124 = v114;
                  sub_1000BA5EC(inited);
                  swift_setDeallocating();
                  sub_1000068B0(inited + 32, &unk_10015E2E0, &qword_1001154F0);
                  sub_100008294(0, &qword_10015C450, ACAccount_ptr);
                  v125 = Dictionary._bridgeToObjectiveC()().super.isa;

                  [v123 setUserInfo:v125];

                  v126 = v240;
                  PreferencesControllerRecipe.init(viewControllerClass:specifier:)();
                  v127 = sub_100091B58(v116);
                  (v127)(v126);

                  (*(v242 + 8))(v126, v241);

                  goto LABEL_17;
                }
              }
            }
          }

          goto LABEL_130;
        }

        __break(1u);
        goto LABEL_94;
      case 5u:
        v128 = v91;
        sub_100023CA8();
        v129 = v247;
        v131 = sub_1000919B8(v247, v243, v130);
        sub_1000C7AFC(v131, v128, v92);

        v132 = [objc_opt_self() controllerForSpecifier:*(v129 + 16)];
        v133 = v240;
        PreferencesControllerRecipe.init(viewController:specifier:)();
        v134 = sub_100091B58(v244);
        (v134)(v133);

        (*(v242 + 8))(v133, v241);

LABEL_43:

        goto LABEL_17;
      case 6u:
        v106 = *(v243 + 2);
        v105 = *(v243 + 3);
        if (!(v92 | v91 | v105 | v106))
        {
          v140 = sub_100092060(v246);
          static NSBundle.PluginType.preferences.getter();
          NSBundle.PluginLocation.init(path:pluginType:)();
          v141 = 0xD000000000000014;
          v142 = 0x8000000100123A70;
LABEL_30:
          (v140)(v141, v142, v87);
          (*(v238 + 8))(v87, v237);
          goto LABEL_42;
        }

        v107 = v105 | v92 | v106;
        if (v91 == 1 && !v107)
        {
          v108 = sub_100092060(v246);
          static NSBundle.PluginLocation.preferences.getter();
          (v108)(0x6553796C696D6146, 0xEE0073676E697474, v85);
          (*(v238 + 8))(v85, v237);
LABEL_42:

          goto LABEL_43;
        }

        if (v91 == 3 && !v107)
        {
          v143 = sub_100092060(v246);
          static NSBundle.PluginLocation.preferences.getter();
          (v143)(0x7474655369466957, 0xEC00000073676E69, v82);
          (*(v238 + 8))(v82, v237);
          goto LABEL_42;
        }

        if (v91 == 4 && !v107)
        {
          sub_1000919B8(v247, v243, v90);
          static NSBundle.PreferencesPluginLocation.default.getter();
          v144 = v240;
          PreferencesControllerRecipe.init(specifier:bundleName:location:viewControllerClassName:)();
          v145 = sub_100091B58(v244);
          (v145)(v144);

          (*(v242 + 8))(v144, v241);
LABEL_38:

          goto LABEL_43;
        }

        if (v91 == 5 && !v107)
        {
          v146 = sub_100092060(v246);
          static NSBundle.PluginLocation.preferences.getter();
          (v146)(0xD000000000000011, 0x800000010011F140, v79);
          (*(v238 + 8))(v79, v237);
          goto LABEL_42;
        }

        if (v91 == 6 && !v107)
        {
          v147 = sub_100092060(v246);
          static NSBundle.PluginLocation.preferences.getter();
          (v147)(0xD000000000000010, 0x800000010011F120, v76);
          (*(v238 + 8))(v76, v237);
          goto LABEL_42;
        }

        if (v91 == 7 && !v107)
        {
          v148 = sub_100092060(v246);
          static NSBundle.PluginLocation.preferences.getter();
          (v148)(0xD000000000000015, 0x8000000100123950, v73);
          (*(v238 + 8))(v73, v237);

          goto LABEL_17;
        }

        if (v91 == 8 && !v107)
        {
          v149 = sub_100092060(v246);
          static NSBundle.PluginLocation.preferences.getter();
          (v149)(0x65666572504E5056, 0xEE007365636E6572, v70);
          (*(v238 + 8))(v70, v237);
          goto LABEL_42;
        }

        if (v91 == 9 && !v107)
        {
          v150 = sub_100092060(v246);
          static NSBundle.PluginLocation.preferences.getter();
          (v150)(0xD000000000000011, 0x8000000100123930, v67);
          v151 = *(v238 + 8);
          v152 = v67;
LABEL_62:
          v151(v152, v237);

          goto LABEL_43;
        }

        if (v91 == 11 && !v107)
        {
          v140 = sub_100092060(v246);
          v87 = v230;
          static NSBundle.PluginLocation.preferences.getter();
          v141 = 0xD000000000000015;
          v142 = 0x80000001001238F0;
          goto LABEL_30;
        }

        if (v91 == 12 && !v107)
        {
          v140 = sub_100092060(v246);
          v87 = v228;
          static NSBundle.PluginLocation.preferences.getter();
          v141 = 0xD000000000000010;
          v142 = 0x80000001001238D0;
          goto LABEL_30;
        }

        if (v91 == 13 && !v107)
        {
          v153 = sub_100092060(v246);
          v154 = v229;
          static NSBundle.PluginLocation.preferences.getter();
          (v153)(0x7465537375636F46, 0xED000073676E6974, v154);
          v151 = *(v238 + 8);
          v159 = &v260;
LABEL_74:
          v152 = *(v159 - 32);
          goto LABEL_62;
        }

        if (v91 == 14 && !v107)
        {
          goto LABEL_68;
        }

        if (v91 == 15 && !v107)
        {
          v157 = sub_100092060(v246);
          v158 = v227;
          static NSBundle.PluginLocation.preferences.getter();
          (v157)(0x536C6172656E6547, 0xEF73676E69747465, v158);
          v151 = *(v238 + 8);
          v159 = &v259;
          goto LABEL_74;
        }

        if (v91 == 16 && !v107)
        {
          v160 = sub_100092060(v246);
          v161 = v226;
          static NSBundle.PluginLocation.preferences.getter();
          (v160)(0xD000000000000015, 0x8000000100123890, v161);
          v151 = *(v238 + 8);
          v159 = &v258;
          goto LABEL_74;
        }

        if (v91 == 17 && !v107)
        {
          v162 = sub_100092060(v246);
          v163 = v225;
          static NSBundle.PluginLocation.preferences.getter();
          (v162)(0xD000000000000014, 0x800000010011F0A0, v163);
          v151 = *(v238 + 8);
          v159 = &v257;
          goto LABEL_74;
        }

        if (v91 == 18 && !v107)
        {
          v164 = sub_100092060(v246);
          v165 = v224;
          static NSBundle.PluginLocation.preferences.getter();
          (v164)(0xD000000000000014, 0x8000000100123870, v165);
          v151 = *(v238 + 8);
          v159 = &v256;
          goto LABEL_74;
        }

        if (v91 == 19 && !v107)
        {
          v166 = sub_100092060(v246);
          v167 = v223;
          static NSBundle.PluginLocation.preferences.getter();
          (v166)(0xD000000000000012, 0x8000000100123850, v167);
LABEL_94:
          v151 = *(v238 + 8);
          v159 = &v255;
          goto LABEL_74;
        }

        if (v91 == 20 && !v107)
        {
          v168 = sub_100092060(v246);
          v169 = v222;
          static NSBundle.PluginLocation.preferences.getter();
          (v168)(0xD00000000000001FLL, 0x800000010011F100, v169);
          v151 = *(v238 + 8);
          v159 = &v254;
          goto LABEL_74;
        }

        if (v91 == 21 && !v107)
        {
          goto LABEL_68;
        }

        if (v91 == 22 && !v107)
        {
          v170 = sub_100092060(v246);
          v171 = v221;
          static NSBundle.PluginLocation.preferences.getter();
          (v170)(0xD000000000000011, 0x8000000100123810, v171);
          v151 = *(v238 + 8);
          v159 = &v253;
          goto LABEL_74;
        }

        if (v91 == 23 && !v107)
        {
          v172 = sub_100092060(v246);
          v173 = v207;
          static NSBundle.PluginLocation.preferences.getter();
          (v172)(0x53746E6569626D41, 0xEF73676E69747465, v173);
          v151 = *(v238 + 8);
          v159 = &v239;
          goto LABEL_74;
        }

        if (v91 == 24 && !v107)
        {
          v174 = sub_100092060(v246);
          v175 = v208;
          static NSBundle.PluginLocation.preferences.getter();
          (v174)(0xD000000000000011, 0x80000001001237F0, v175);
          v151 = *(v238 + 8);
          v159 = &v240;
          goto LABEL_74;
        }

        if (v91 == 25 && !v107)
        {
          v176 = sub_100092060(v246);
          v177 = v209;
          static NSBundle.PluginLocation.preferences.getter();
          (v176)(0xD000000000000010, 0x80000001001237D0, v177);
          v151 = *(v238 + 8);
          v159 = &v241;
          goto LABEL_74;
        }

        if (v91 == 26 && !v107)
        {
          v178 = sub_100092060(v246);
          v179 = v210;
          static NSBundle.PluginLocation.preferences.getter();
          (v178)(0x65536C69636E6550, 0xEE0073676E697474, v179);
          v151 = *(v238 + 8);
          v159 = &v242;
          goto LABEL_74;
        }

        if (v91 == 27 && !v107)
        {
          v180 = sub_100092060(v246);
          v181 = v211;
          static NSBundle.PluginLocation.preferences.getter();
          (v180)(0xD000000000000021, 0x80000001001237A0, v181);
          v151 = *(v238 + 8);
          v159 = &v243;
          goto LABEL_74;
        }

        if (v91 == 28 && !v107)
        {
          v182 = sub_100092060(v246);
          v183 = v212;
          static NSBundle.PluginLocation.preferences.getter();
          (v182)(0x6974746553534F53, 0xEB0000000073676ELL, v183);
          v151 = *(v238 + 8);
          v159 = &v244;
          goto LABEL_74;
        }

        if (v91 == 30 && !v107)
        {
          v184 = sub_100092060(v246);
          v185 = v213;
          static NSBundle.PluginLocation.preferences.getter();
          (v184)(0x5579726574746142, 0xEE00495565676173, v185);
          v151 = *(v238 + 8);
          v159 = &v245;
          goto LABEL_74;
        }

        if (v91 == 31 && !v107)
        {
          v186 = sub_100092060(v246);
          v187 = v214;
          static NSBundle.PluginLocation.preferences.getter();
          (v186)(0xD00000000000001ALL, 0x8000000100123780, v187);
LABEL_131:
          v151 = *(v238 + 8);
          v159 = &v246;
          goto LABEL_74;
        }

        if (v91 == 32 && !v107)
        {
          v188 = sub_100092060(v246);
          v189 = v215;
          static NSBundle.PluginLocation.preferences.getter();
          (v188)(0xD000000000000010, 0x8000000100123760, v189);
          v151 = *(v238 + 8);
          v159 = &v247;
          goto LABEL_74;
        }

        if (v91 == 33 && !v107)
        {
          goto LABEL_68;
        }

        if (v91 == 34 && !v107)
        {
          v190 = sub_100092060(v246);
          v191 = v206;
          static NSBundle.PluginLocation.preferences.getter();
          (v190)(0xD000000000000010, 0x8000000100123910, v191);
          v151 = *(v238 + 8);
          v159 = &v238;
          goto LABEL_74;
        }

        if (v91 == 35 && !v107)
        {
          v192 = sub_100092060(v246);
          v193 = v216;
          static NSBundle.PluginLocation.preferences.getter();
          (v192)(0x65536172656D6143, 0xEE0073676E697474, v193);
          v151 = *(v238 + 8);
          v159 = &v248;
          goto LABEL_74;
        }

        if (v91 == 36 && !v107)
        {
          v194 = sub_100092060(v246);
          v195 = v217;
          static NSBundle.PluginLocation.preferences.getter();
          (v194)(0xD000000000000012, 0x8000000100123710, v195);
          v151 = *(v238 + 8);
          v159 = v249;
          goto LABEL_74;
        }

        if (v91 == 37 && !v107)
        {
          v196 = sub_100092060(v246);
          v197 = v218;
          static NSBundle.PluginLocation.preferences.getter();
          (v196)(0xD000000000000011, 0x80000001001236F0, v197);
          v151 = *(v238 + 8);
          v159 = &v250;
          goto LABEL_74;
        }

        if (v91 == 38 && !v107)
        {
          v198 = sub_100092060(v246);
          v199 = v219;
          static NSBundle.PluginLocation.preferences.getter();
          (v198)(0xD000000000000011, 0x80000001001236D0, v199);
          v151 = *(v238 + 8);
          v159 = &v251;
          goto LABEL_74;
        }

        if (v91 == 39 && !v107)
        {
          sub_1000919B8(v247, v243, v90);
          static NSBundle.PreferencesPluginLocation.appleInternal.getter();
          goto LABEL_69;
        }

        if (v91 == 40 && !v107)
        {
          v200 = v247;
          v201 = sub_1000919B8(v247, v243, v90);
          v202 = String._bridgeToObjectiveC()();
          [v201 setProperty:v202 forKey:PSDataSourceClassKey];

          *(v200 + 16);
          static NSBundle.PreferencesPluginLocation.appleInternal.getter();
          v155 = v240;
          goto LABEL_70;
        }

        if (v91 == 41 && !v107 || v91 == 42 && !v107 || v91 == 43 && !v107 || v91 == 44 && !v107)
        {
LABEL_68:
          sub_1000919B8(v247, v243, v90);
          static NSBundle.PreferencesPluginLocation.default.getter();
LABEL_69:
          v155 = v240;
LABEL_70:
          PreferencesControllerRecipe.init(specifier:bundleName:location:viewControllerClassName:)();
          v156 = sub_100091B58(v244);
          (v156)(v155);

          (*(v242 + 8))(v155, v241);
          goto LABEL_38;
        }

        if (v91 == 45 && !v107)
        {
          v203 = sub_100092060(v246);
          v204 = v220;
          static NSBundle.PluginLocation.settings.getter();
          (v203)(0x656C6C6174736E49, 0xED00007370704164, v204);
          v151 = *(v238 + 8);
          v159 = &v252;
          goto LABEL_74;
        }

        break;
    }

LABEL_15:
    type metadata accessor for SettingsAppDetailContent.ContentType(0);
    swift_storeEnumTagMultiPayload();

    goto LABEL_17;
  }

  if (v93 >= 2)
  {
    if (v93 != 3)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v94 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController;
  v95 = v239;
  v96 = *(v239 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_pendingFollowUpController);
  if (!v96)
  {
LABEL_130:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_131;
  }

  v248 = &OBJC_PROTOCOL___PSController;
  v97 = swift_dynamicCastObjCProtocolConditional();
  v98 = v96;
  v99 = v245;
  v100 = v244;
  if (v97)
  {
    v101 = v98;
    v102 = v240;
    PreferencesControllerRecipe.init(viewController:)();
    v103 = sub_100091B58(v100);
    (v103)(v102);

    (*(v242 + 8))(v102, v241);
    v104 = *(v95 + v94);
    if (v104)
    {
      goto LABEL_27;
    }

LABEL_17:

    return;
  }

  v135 = v234;
  v136 = v98;
  SettingsAnyPlatformViewControllerRecipe.init(_:)();
  v137 = v235;
  v138 = v236;
  (*(v235 + 16))(v233, v135, v236);
  type metadata accessor for SettingsAnyPlatformViewControllerModel();
  swift_allocObject();
  v139 = SettingsAnyPlatformViewControllerModel.init(recipe:)();

  (*(v137 + 8))(v135, v138);
  *v99 = v139;
  type metadata accessor for SettingsAppDetailContent.ContentType(0);
  swift_storeEnumTagMultiPayload();
  v104 = *(v95 + v94);
  if (!v104)
  {
    goto LABEL_38;
  }

LABEL_27:
  *(v95 + v94) = 0;
}

uint64_t sub_100091978()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000919B8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v6 = sub_100091A38(a2, a2, a3);
    swift_beginAccess();
    v7 = *v4;
    *v4 = v6;
    v5 = v6;

    v3 = 0;
  }

  v8 = v3;
  return v5;
}

id sub_100091A38(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10002A770(a1, a2, a3);
  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_allocWithZone(PSSpecifier) initWithName:v3 target:0 set:0 get:0 detail:0 cell:1 edit:0];

  if (v4)
  {
    v5 = sub_100055B70();
    if (v5 == 74)
    {
      sub_100039380();
    }

    else
    {
      sub_1000F3A98(v5);
    }

    v6 = String._bridgeToObjectiveC()();

    [v4 setIdentifier:v6];

    return v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_100091B58(uint64_t a1))@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    swift_beginAccess();
    v4 = sub_100091BE4;
    *(a1 + 16) = sub_100091BE4;
    *(a1 + 24) = 0;
  }

  sub_1000499DC(v2, v3);
  return v4;
}

uint64_t sub_100091BE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PreferencesControllerRecipe();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004DED0(&unk_10015E2F0, &qword_1001154F8);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  v11 = type metadata accessor for SettingsPaneRecipe();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  PreferencesControllerRecipe.settingsPaneRecipe.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000068B0(v10, &unk_10015E2F0, &qword_1001154F8);
    (*(v5 + 16))(v7, a1, v4);
    type metadata accessor for PreferencesControllerRepresentableModel();
    swift_allocObject();
    *a2 = PreferencesControllerRepresentableModel.init(recipe:)();
  }

  else
  {
    v20[0] = v4;
    v20[1] = a1;
    v21 = a2;
    v15 = *(v12 + 32);
    v15(v14, v10, v11);
    type metadata accessor for SettingsExperienceCoordinationManager();
    static SettingsExperienceCoordinationManager.shared.getter();
    v16 = dispatch thunk of SettingsExperienceCoordinationManager.coordinator(for:)();

    dispatch thunk of SettingsExperienceContentCoordinator.loadPluginIfNeeded()();
    v18 = *(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48);
    v19 = v21;
    v15(v21, v14, v11);
    *(v19 + v18) = v16;
  }

  type metadata accessor for SettingsAppDetailContent.ContentType(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t (*sub_100092060(uint64_t a1))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    swift_beginAccess();
    v4 = sub_1000920EC;
    *(a1 + 16) = sub_1000920EC;
    *(a1 + 24) = 0;
  }

  sub_1000499DC(v2, v3);
  return v4;
}

uint64_t sub_1000920EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v37 = a3;
  v32[0] = a4;
  v36 = type metadata accessor for NSBundle.PluginLocation();
  v8 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UUID();
  v10 = *(v33 - 8);
  __chkstk_darwin(v33);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SettingsPaneRecipe();
  v39 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v38 = v32 - v18;
  v19 = a1 == 0x536C6172656E6547 && a2 == v17;
  v20 = v19;
  v34 = v20;
  v32[1] = a2;
  if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v10 + 8))(v12, v33);
    (*(v8 + 16))(v35, v37, v36);
    v5 = v4;
  }

  else
  {
    (*(v8 + 16))(v35, v37, v36);
  }

  SettingsPaneRecipe.init(bundleName:pluginLocation:)();
  v21 = v39;
  v22 = *(v39 + 32);
  v23 = v38;
  v22(v38, v16, v13);
  if (v34 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    if (qword_10015AA50 != -1)
    {
      swift_once();
    }

    v24 = qword_1001695C8;
    type metadata accessor for SettingsExperienceContentCoordinator();
    swift_allocObject();
    v25 = v24;
    v26 = SettingsExperienceContentCoordinator.init(bundle:)();
  }

  else
  {
    type metadata accessor for SettingsExperienceCoordinationManager();
    static SettingsExperienceCoordinationManager.shared.getter();
    v30 = dispatch thunk of SettingsExperienceCoordinationManager.coordinator(for:)();
    if (v5)
    {
      goto LABEL_19;
    }

    v31 = v30;

    v26 = v31;
  }

  dispatch thunk of SettingsExperienceContentCoordinator.loadPluginIfNeeded()();
  if (!v5)
  {
    v27 = *(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48);
    v28 = v32[0];
    v22(v32[0], v23, v13);
    *(v28 + v27) = v26;
    type metadata accessor for SettingsAppDetailContent.ContentType(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_19:
  (*(v21 + 8))(v23, v13);
}

Swift::Int sub_100092560()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 32);
  if (v1 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = v0[1];
    v5 = *v0;
    v6 = v2;
    v7 = v1;
    Hasher._combine(_:)(1u);
    sub_10002FE78(v4);
  }

  sub_100092760(v4);
  return Hasher._finalize()();
}

void sub_1000925F8(uint64_t a1)
{
  if (*(v1 + 32) == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_10002FE78(a1);
  }

  sub_100092760(a1);
}

Swift::Int sub_100092680(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(v1 + 32);
  if (v2 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = v1[1];
    v6 = *v1;
    v7 = v3;
    v8 = v2;
    Hasher._combine(_:)(1u);
    sub_10002FE78(v5);
  }

  sub_100092760(v5);
  return Hasher._finalize()();
}

void sub_100092760(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SettingsPaneRecipe();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  __chkstk_darwin(v7);
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100032FE4(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = *(v9 + *(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48));
      (*(v4 + 32))(v6, v9, v3);
      sub_10000B90C(&qword_10015E4D0, &type metadata accessor for SettingsPaneRecipe, &protocol conformance descriptor for SettingsPaneRecipe);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(v14);

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    v15[1] = *v9;
    if (EnumCaseMultiPayload)
    {
      type metadata accessor for PreferencesControllerRepresentableModel();
      v11 = &unk_10015E4D8;
      v12 = &type metadata accessor for PreferencesControllerRepresentableModel;
      v13 = &protocol conformance descriptor for PreferencesControllerRepresentableModel;
    }

    else
    {
      type metadata accessor for SettingsAnyPlatformViewControllerModel();
      v11 = &unk_10015E4E0;
      v12 = &type metadata accessor for SettingsAnyPlatformViewControllerModel;
      v13 = &protocol conformance descriptor for SettingsAnyPlatformViewControllerModel;
    }

    sub_10000B90C(v11, v12, v13);
    dispatch thunk of Hashable.hash(into:)();
  }
}

Swift::Int sub_100092A00()
{
  Hasher.init(_seed:)();
  sub_100092760(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100092A44(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100092760(v2);
  return Hasher._finalize()();
}

uint64_t sub_100092A80(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015E4C8, &qword_1001155F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100092B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a1;
  v107 = a3;
  v4 = type metadata accessor for PrimarySettingsList(0);
  v5 = v4 - 8;
  v101 = *(v4 - 8);
  __chkstk_darwin(v4);
  v102 = v6;
  v103 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for ScrollViewProxy();
  v100 = *(v112 - 8);
  __chkstk_darwin(v112);
  v95 = v7;
  v99 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for PPTTestCase.Name();
  v94 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for SidebarListStyle();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for EnvironmentValues();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v79 - v13;
  v87 = sub_10004DED0(&qword_10015E610, &qword_1001156F0);
  __chkstk_darwin(v87);
  v16 = &v79 - v15;
  v92 = sub_10004DED0(&qword_10015E618, &qword_1001156F8);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v108 = &v79 - v17;
  v109 = sub_10004DED0(&qword_10015E620, &qword_100115700);
  __chkstk_darwin(v109);
  v110 = &v79 - v18;
  v98 = sub_10004DED0(&qword_10015E628, &qword_100115708);
  __chkstk_darwin(v98);
  v111 = &v79 - v19;
  v20 = a2 + *(v5 + 32);
  v21 = Bindable.wrappedValue.getter();
  v23 = sub_10001A1A0(v21, v22);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v12 + 8))(v14, v11);
  v123 = v23;
  v118 = v124;
  v119 = v125;
  v120 = v126;
  v121 = v127;
  v122 = v128;
  v115 = &v123;
  v116 = sub_100093984;
  v117 = 0;
  sub_10004DED0(&qword_10015E630, &qword_100115738);
  sub_100032144();
  sub_100032198();
  List.init(selection:content:)();

  v24 = static Animation.default.getter();
  v90 = v11;
  v84 = v20;
  v25 = Bindable.wrappedValue.getter();
  v27 = sub_10001A1A0(v25, v26);
  v29 = v28;
  v31 = v30;

  v32 = &v16[*(sub_10004DED0(&qword_10015E648, &qword_100115740) + 36)];
  *v32 = v24;
  v32[1] = v27;
  v32[2] = v29;
  v32[3] = v31;
  v33 = static Animation.default.getter();
  v34 = *(a2 + 16);
  v114 = a2;
  LODWORD(v20) = *(a2 + 24);

  v35 = v34;
  v85 = v20;
  if ((v20 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v37 = v104;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v105 + 8))(v37, v106);
    v35 = v124;
  }

  v93 = v34;
  swift_getKeyPath();
  v124 = v35;
  v83 = sub_100020BE0(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = *(v35 + 16);

  v39 = v87;
  v40 = &v16[*(v87 + 36)];
  *v40 = v33;
  v40[8] = v38;
  v41 = v86;
  SidebarListStyle.init()();
  v42 = sub_100032460();
  v43 = v89;
  v80 = v42;
  View.listStyle<A>(_:)();
  (*(v88 + 8))(v41, v43);
  sub_1000068B0(v16, &qword_10015E610, &qword_1001156F0);
  if (qword_10015AB70 != -1)
  {
    swift_once();
  }

  v44 = v97;
  v45 = sub_10000659C(v97, qword_100169820);
  v46 = v94;
  v47 = v96;
  (*(v94 + 16))(v96, v45, v44);
  v48 = v100;
  v49 = *(v100 + 16);
  v81 = v100 + 16;
  v82 = v49;
  v50 = v99;
  v51 = v112;
  v49(v99, v113, v112);
  v52 = *(v48 + 80);
  v53 = (v52 + 16) & ~v52;
  v86 = (v53 + v95);
  v88 = v53;
  v95 = v52 | 7;
  v54 = swift_allocObject();
  v100 = *(v48 + 32);
  v55 = v54 + v53;
  v56 = v50;
  (v100)(v55, v50, v51);
  v124 = v39;
  v125 = v43;
  *&v126 = v80;
  *(&v126 + 1) = &protocol witness table for SidebarListStyle;
  swift_getOpaqueTypeConformance2();
  v57 = v110;
  v58 = v92;
  v59 = v108;
  View.onTest(_:handler:)();

  (*(v46 + 8))(v47, v44);
  (*(v91 + 8))(v59, v58);
  v60 = &v57[*(v109 + 36)];
  *v60 = sub_100093B24;
  v60[1] = 0;
  v60[2] = 0;
  v60[3] = 0;
  Bindable.wrappedValue.getter();
  v61 = v124;
  swift_getKeyPath();
  v124 = v61;
  sub_100020BE0(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = *(v61 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 8);
  v63 = *(v61 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 16);
  v64 = *(v61 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 24);
  v65 = *(v61 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight + 32);
  v66 = *(v61 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cellToScrollAndHighlight);
  v108 = v66;
  sub_100031DF8(v66, v62, v63, v64, v65);

  v124 = v66;
  v125 = v62;
  *&v126 = v63;
  *(&v126 + 1) = v64;
  LOBYTE(v127) = v65;
  v67 = v56;
  v68 = v112;
  v82(v56, v113, v112);
  v69 = v103;
  sub_100019CAC(v114, v103, type metadata accessor for PrimarySettingsList);
  v70 = &v86[*(v101 + 80)] & ~*(v101 + 80);
  v71 = swift_allocObject();
  (v100)(v71 + v88, v67, v68);
  sub_100019D14(v69, v71 + v70);
  sub_10004DED0(&qword_10015E690, &qword_100115788);
  sub_1000946AC();
  sub_1000947D0();
  v72 = v111;
  v73 = v110;
  View.onChange<A>(of:initial:_:)();

  sub_100032660(v108, v62, v63, v64, v65);
  sub_1000068B0(v73, &qword_10015E620, &qword_100115700);
  *&v72[*(v98 + 36)] = sub_100032674();
  v74 = v93;

  if ((v85 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v75 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v76 = v104;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v105 + 8))(v76, v106);
    v74 = v124;
  }

  swift_getKeyPath();
  v124 = v74;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100094854();
  v77 = v111;
  View.accessibilityHidden(_:)();
  return sub_1000068B0(v77, &qword_10015E628, &qword_100115708);
}

uint64_t sub_100093984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimarySettingsListSection(0);
  sub_100019CAC(a1, a2 + *(v4 + 20), type metadata accessor for PrimarySettingsListSectionModel);
  type metadata accessor for SettingsAppModel(0);
  sub_100020BE0(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
  result = Environment.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_100093A30(uint64_t a1, uint64_t a2)
{
  if (qword_10015AAD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169700);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Running scroll main list test", v5, 2u);
  }

  return PPTTestCase.performScrollTest(_:)();
}

uint64_t sub_100093B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AnimationCompletionCriteria();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for PrimarySettingsList(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = __chkstk_darwin(v11 - 8);
  v15 = *(a2 + 32);
  if (v15 != 255)
  {
    v16 = *(a2 + 16);
    v20[0] = *a2;
    v20[1] = v16;
    v21 = v15;
    __chkstk_darwin(result);
    *&v19[-16] = a3;
    *&v19[-8] = v20;
    sub_100019CAC(a4, &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PrimarySettingsList);
    v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v18 = swift_allocObject();
    sub_100019D14(&v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17);
    static Animation.default.getter();
    static AnimationCompletionCriteria.logicallyComplete.getter();
    withAnimation<A>(_:completionCriteria:_:completion:)();

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_100093DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  static UnitPoint.center.getter();
  sub_100032144();
  return ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_100093E1C()
{
  type metadata accessor for PrimarySettingsList(0);
  sub_10004DED0(&qword_10015E4E8, &unk_100115610);
  Bindable.wrappedValue.getter();
  memset(v1, 0, sizeof(v1));
  v2 = -1;
  sub_100095C68(v1);
}

uint64_t sub_100093E94@<X0>(void *a1@<X8>)
{
  v38 = a1;
  v37 = sub_10004DED0(&qword_10015E5E0, &qword_1001156D0);
  __chkstk_darwin(v37);
  v35 = &v34 - v2;
  v36 = sub_10004DED0(&qword_10015E608, &qword_1001156E8);
  __chkstk_darwin(v36);
  v4 = &v34 - v3;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);

  v11 = v9;
  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v11 = v39;
  }

  swift_getKeyPath();
  v39 = v11;
  sub_100020BE0(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v11 + 16);

  if (v13 == 2)
  {
    type metadata accessor for SettingsOmniSearchViewModel(0);
    v14 = Environment.init<A>(_:)();
    v16 = v15;
    type metadata accessor for SettingsAppModel(0);
    sub_100020BE0(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
    v17 = Environment.init<A>(_:)();
    *v4 = v14;
    v4[8] = v16 & 1;
    *(v4 + 2) = v17;
    v4[24] = v18 & 1;
    swift_storeEnumTagMultiPayload();
    sub_10001A068();
    sub_10001A0BC();
    v19 = v38;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {

    if ((v10 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v20 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v8, v5);
      v9 = v39;
    }

    swift_getKeyPath();
    v39 = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v9 + 16);

    if (v21 != 3)
    {
      v31 = 1;
      v19 = v38;
      goto LABEL_11;
    }

    v22 = v35;
    static ContentUnavailableView<>.search.getter();
    v23 = static Alignment.center.getter();
    v25 = v24;
    v26 = [objc_opt_self() systemGroupedBackgroundColor];
    v27 = Color.init(uiColor:)();
    v28 = static SafeAreaRegions.all.getter();
    v29 = static Edge.Set.all.getter();
    v30 = v22 + *(v37 + 36);
    *v30 = v27;
    *(v30 + 8) = v28;
    *(v30 + 16) = v29;
    *(v30 + 24) = v23;
    *(v30 + 32) = v25;
    sub_1000944E8(v22, v4);
    swift_storeEnumTagMultiPayload();
    sub_10001A068();
    sub_10001A0BC();
    v19 = v38;
    _ConditionalContent<>.init(storage:)();
    sub_1000068B0(v22, &qword_10015E5E0, &qword_1001156D0);
  }

  v31 = 0;
LABEL_11:
  v32 = sub_10004DED0(&qword_10015E5C8, &qword_1001156C8);
  return (*(*(v32 - 8) + 56))(v19, v31, 1, v32);
}

uint64_t sub_1000943D8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1000943E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PrimarySettingsList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100092B10(a1, v6, a2);
}

unint64_t sub_100094464()
{
  result = qword_10015E5B8;
  if (!qword_10015E5B8)
  {
    sub_100052374(&qword_10015E5B0, &qword_100115698);
    sub_100019FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E5B8);
  }

  return result;
}

uint64_t sub_1000944E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015E5E0, &qword_1001156D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100094558(uint64_t a1)
{
  v3 = *(type metadata accessor for ScrollViewProxy() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100093A30(a1, v4);
}

uint64_t sub_1000945C8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ScrollViewProxy() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PrimarySettingsList(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_100093B50(a1, a2, v2 + v6, v9);
}

unint64_t sub_1000946AC()
{
  result = qword_10015E698;
  if (!qword_10015E698)
  {
    sub_100052374(&qword_10015E620, &qword_100115700);
    sub_100052374(&qword_10015E618, &qword_1001156F8);
    sub_100052374(&qword_10015E610, &qword_1001156F0);
    type metadata accessor for SidebarListStyle();
    sub_100032460();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E698);
  }

  return result;
}

unint64_t sub_1000947D0()
{
  result = qword_10015E6A0;
  if (!qword_10015E6A0)
  {
    sub_100052374(&qword_10015E690, &qword_100115788);
    sub_100022998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E6A0);
  }

  return result;
}

unint64_t sub_100094854()
{
  result = qword_10015E6A8;
  if (!qword_10015E6A8)
  {
    sub_100052374(&qword_10015E628, &qword_100115708);
    sub_100052374(&qword_10015E620, &qword_100115700);
    sub_100052374(&qword_10015E690, &qword_100115788);
    sub_1000946AC();
    sub_1000947D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E6A8);
  }

  return result;
}

uint64_t sub_100094964()
{
  type metadata accessor for PrimarySettingsList(0);

  return sub_100093E1C();
}

unint64_t sub_1000949C4()
{
  result = qword_10015D9D8;
  if (!qword_10015D9D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015D9D8);
  }

  return result;
}

unint64_t sub_100094A10()
{
  result = qword_10015E6C8;
  if (!qword_10015E6C8)
  {
    sub_100052374(&qword_10015E5A0, &qword_100115688);
    sub_1000525A0(&qword_10015E6D0, &qword_10015E6D8, &qword_100115798, &protocol conformance descriptor for ScrollViewReader<A>);
    sub_1000525A0(&unk_10015E6E0, &qword_10015E5A8, &qword_100115690, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E6C8);
  }

  return result;
}

uint64_t sub_100094AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100059CA0(a3, v25 - v10, &unk_10015D490, &qword_100112150);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000068B0(v11, &unk_10015D490, &qword_100112150);
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

      sub_1000068B0(a3, &unk_10015D490, &qword_100112150);

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

  sub_1000068B0(a3, &unk_10015D490, &qword_100112150);
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

uint64_t sub_100094DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100059CA0(a3, v25 - v10, &unk_10015D490, &qword_100112150);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000068B0(v11, &unk_10015D490, &qword_100112150);
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

      sub_10004DED0(&unk_10015EB30, &qword_1001161E0);
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

      sub_1000068B0(a3, &unk_10015D490, &qword_100112150);

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

  sub_1000068B0(a3, &unk_10015D490, &qword_100112150);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10004DED0(&unk_10015EB30, &qword_1001161E0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100095108(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveCurrentPresentedItemIdentifier);
}

void sub_1000951B0(uint64_t a1)
{
  v2 = v1;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_100169658);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100025CF0(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100025CF0(0xD00000000000001ELL, 0x8000000100123E90, &v15);
    *(v7 + 22) = 2082;
    if (a1 == 10)
    {
      v11 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v12 = sub_1000BBA68(a1);
      v11 = v13;
    }

    v14 = sub_100025CF0(v12, v11, &v15);

    *(v7 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%s.%s), identifier: '%{public}s'…", v7, 0x20u);
    swift_arrayDestroy();
  }

  if (a1 == 10)
  {
    swift_getKeyPath();
    v15 = v2;
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_100098AAC(v2, 10);
  }

  else
  {
    sub_100098CC4(a1);

    sub_100098AAC(v2, a1);
  }
}

uint64_t sub_1000954AC(__int128 *a1)
{
  v2 = v1;
  v4 = *a1;
  v44 = *(a1 + 2);
  v45 = *(a1 + 3);
  v46 = *(a1 + 1);
  v43 = *(a1 + 32);
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000659C(v5, qword_100169658);

  sub_100059CA0(a1, v57, &qword_10015E690, &qword_100115788);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *&v57[0] = swift_slowAlloc();
    *v8 = 136315650;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100025CF0(v9, v10, v57);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100025CF0(0xD000000000000010, 0x8000000100123DE0, v57);
    *(v8 + 22) = 2082;
    v12 = *(a1 + 32);
    if (v12 == 255)
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    else
    {
      v13 = a1[1];
      v54 = *a1;
      v55 = v13;
      v56 = v12;
      v14 = sub_100026A58();
      v16 = v15;
    }

    v17 = sub_100025CF0(v14, v16, v57);

    *(v8 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Start (%s.%s), identifier: '%{public}s'…", v8, 0x20u);
    swift_arrayDestroy();
  }

  if (*(v2 + 16))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v57[0] = v2;
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + 16) = 0;
  }

  v19 = v43;
  v20 = v46;
  v21 = *(a1 + 32);
  if (v21 != 255)
  {
    v22 = a1[1];
    v51 = *a1;
    v52 = v22;
    v53 = v21;
    sub_100029920(v4, v46, v44, v45, v43);
    v23 = sub_100027320();
    swift_getKeyPath();
    *&v57[0] = v2;
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
    v57[2] = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
    v57[3] = v24;
    v57[4] = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
    v25 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
    v57[0] = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
    v57[1] = v25;
    sub_100063D94(v57, &v47);
    v26 = sub_100063C90(v23, v57);
    sub_100063DF0(v57);

    if ((v26 & 1) == 0)
    {
      sub_100029920(v4, v46, v44, v45, v43);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v47 = v32;
        *v31 = 136446210;
        v33 = sub_100026A58();
        v35 = v34;
        sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
        v36 = sub_100025CF0(v33, v35, &v47);

        *(v31 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v29, v30, "Attempted to select '%{public}s' which is not selectable based on visibility rules.", v31, 0xCu);
        sub_10000665C(v32);
      }

      else
      {

        sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
      }

      if (*(v2 + 16) == 1)
      {
        *(v2 + 16) = 1;
      }

      else
      {
        v41 = swift_getKeyPath();
        __chkstk_darwin(v41);
        *&v47 = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      goto LABEL_32;
    }

    sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
    v20 = v46;
    v19 = v43;
  }

  v27 = v19;
  sub_10009632C();
  v28 = *(a1 + 32);
  if (v28 >= 3)
  {
    if (v28 != 6)
    {
      goto LABEL_31;
    }

    v37 = *(a1 + 3);
    v38 = *a1;
    v39 = *(a1 + 2) | *(a1 + 1);
    if (v39 | *a1 | v37)
    {
      v40 = v39 | v37;
      if (v38 == 10 && !v40)
      {
        sub_1000A42BC();
        goto LABEL_32;
      }

      if (v38 != 37 || v40)
      {
        goto LABEL_31;
      }
    }

    if (sub_1000966A0())
    {
LABEL_31:
      sub_10009698C(a1);
      goto LABEL_32;
    }

    *&v47 = v4;
    *(&v47 + 1) = v20;
    v48 = v44;
    v49 = v45;
    v50 = v27;
    sub_100029920(v4, v20, v44, v45, v27);
    sub_100096CA8(&v47);
  }

  else
  {
    *&v47 = v4;
    *(&v47 + 1) = v20;
    v48 = v44;
    v49 = v45;
    v50 = v27;
    sub_100029920(v4, v20, v44, v45, v27);
    sub_100097128(&v47);
  }

  sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
LABEL_32:
  sub_100095FF4(v2, a1);
  return sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
}

uint64_t sub_100095C90()
{
  sub_10004DED0(&qword_10015EB28, &qword_100115DA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001103F0;
  v1 = FLGroupIdentifierAccount;
  *(inited + 32) = FLGroupIdentifierAccount;
  v2 = FLGroupIdentifierAppleServices;
  v3 = FLGroupIdentifierNewDeviceOutreach;
  *(inited + 40) = FLGroupIdentifierAppleServices;
  *(inited + 48) = v3;
  v4 = FLGroupIdentifierSecureMicrophone;
  *(inited + 56) = FLGroupIdentifierSecureMicrophone;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = sub_100065368(inited);
  swift_setDeallocating();
  type metadata accessor for FLItemGroup(0);
  result = swift_arrayDestroy();
  qword_10015E6F0 = v9;
  return result;
}

uint64_t sub_100095D74(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 16);
}

uint64_t sub_100095E14@<X0>(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + 16);
  return result;
}

uint64_t sub_100095EE4(uint64_t result, uint64_t a2)
{
  if (*(v2 + 16) == (result & 1))
  {
    *(v2 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100095FF4(void *a1, uint64_t a2)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000659C(v3, qword_100169658);

  sub_100059CA0(a2, v17, &qword_10015E690, &qword_100115788);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  sub_1000068B0(a2, &qword_10015E690, &qword_100115788);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100025CF0(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100025CF0(0xD000000000000010, 0x8000000100123DE0, &v16);
    *(v6 + 22) = 2082;
    v10 = *(a2 + 32);
    if (v10 == 255)
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v11 = *(a2 + 16);
      v17[0] = *a2;
      v17[1] = v11;
      v18 = v10;
      v12 = sub_100026A58();
      v14 = v13;
    }

    v15 = sub_100025CF0(v12, v14, &v16);

    *(v6 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "...Complete (%s.%s), identifier: '%{public}s'", v6, 0x20u);
    swift_arrayDestroy();
  }
}

__n128 sub_100096244@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  *&v9 = v2;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
  v11 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
  v12 = v4;
  v13 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
  v5 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
  v9 = *(v2 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
  v10 = v5;
  sub_100063D94(&v9, &v8);
  v6 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v6;
  *(a2 + 64) = v13;
  result = v10;
  *a2 = v9;
  *(a2 + 16) = result;
  return result;
}

void sub_10009632C()
{
  v1 = v0;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000659C(v2, qword_100169658);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100025CF0(v6, v7, &v19);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_100025CF0(0xD000000000000017, 0x8000000100123FA0, &v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "Start (%s.%s)…", v5, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  v19 = v1;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveCurrentPresentedItemIdentifier);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  if (v9 == 10)
  {
    if (v12)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "No presented item to dismiss, ignoring.", v13, 2u);
    }
  }

  else
  {
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136446210;
      v16 = sub_1000BBA68(v9);
      v18 = sub_100025CF0(v16, v17, &v19);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Dismissing identifier '%{public}s'.", v14, 0xCu);
      sub_10000665C(v15);
    }

    sub_1000951B0(10);
  }

  sub_10009E578(v1);
}

uint64_t sub_1000966A0()
{
  v24 = type metadata accessor for PrimarySettingsListItemViewType(0);
  __chkstk_darwin(v24);
  v1 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for PrimarySettingsListItemModel(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - v11;
  v14 = sub_10001A1A0(v10, v13);
  v15 = sub_1000C5400(v14);

  v17 = v15[2];
  if (v17)
  {
    v18 = 0;
    while (1)
    {
      if (v18 >= v15[2])
      {
        __break(1u);
        return result;
      }

      sub_10002EA78(v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v6, type metadata accessor for PrimarySettingsListItemModel);
      if (v6[32] >= 6u && !(*(v6 + 2) | *(v6 + 3) | *v6 | *(v6 + 1)))
      {
        break;
      }

      ++v18;
      result = sub_10002E948(v6, type metadata accessor for PrimarySettingsListItemModel);
      if (v17 == v18)
      {
        goto LABEL_9;
      }
    }

    sub_1000A4C50(v6, v9, type metadata accessor for PrimarySettingsListItemModel);
    sub_1000A4C50(v9, v12, type metadata accessor for PrimarySettingsListItemModel);
    sub_10002EA78(&v12[*(v2 + 20)], v1, type metadata accessor for PrimarySettingsListItemViewType);
    sub_10002E948(v12, type metadata accessor for PrimarySettingsListItemModel);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10002E948(v1, type metadata accessor for PrimarySettingsListItemViewType);
      return 0;
    }

    v19 = *v1;
    v20 = *(v1 + 1);
    v21 = v1[16];
    v22 = v21 < 0x40;
    sub_100045DB4(v19, v20, v21);
    return v22;
  }

  else
  {
LABEL_9:

    return 0;
  }
}

void sub_10009698C(uint64_t a1)
{
  v2 = v1;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000659C(v4, qword_100169658);

  sub_100059CA0(a1, v19, &qword_10015E690, &qword_100115788);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  sub_1000068B0(a1, &qword_10015E690, &qword_100115788);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100025CF0(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100025CF0(0xD000000000000024, 0x8000000100123F70, &v18);
    *(v7 + 22) = 2082;
    v11 = *(a1 + 32);
    if (v11 == 255)
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    else
    {
      v12 = *(a1 + 16);
      v19[0] = *a1;
      v19[1] = v12;
      v20 = v11;
      v13 = sub_100026A58();
      v15 = v14;
    }

    v16 = sub_100025CF0(v13, v15, &v18);

    *(v7 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Start (%s.%s), identifier: '%{public}s'…", v7, 0x20u);
    swift_arrayDestroy();
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v18 = v2;
  sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10009E130(v2, a1);
}