uint64_t sub_1005B921C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WorkoutChartGroupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1005B4388(a1, v6, a2);
}

unint64_t sub_1005B929C()
{
  result = qword_1008F4778;
  if (!qword_1008F4778)
  {
    sub_100141EEC(&qword_1008F4770, &qword_1006FC528);
    sub_10014A6B0(&qword_1008F4780, &qword_1008F4788, &qword_1006FC530, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4778);
  }

  return result;
}

unint64_t sub_1005B934C()
{
  result = qword_1008F4790;
  if (!qword_1008F4790)
  {
    sub_100141EEC(&qword_1008F4760, &qword_1006FC510);
    sub_1005B93D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4790);
  }

  return result;
}

unint64_t sub_1005B93D0()
{
  result = qword_1008F4798;
  if (!qword_1008F4798)
  {
    sub_100141EEC(&qword_1008F47A0, &qword_1006FC538);
    sub_1005B929C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4798);
  }

  return result;
}

void sub_1005B9454(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t sub_1005B94DC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = static Published.subscript.setter();
  return sub_1002E4518(v2, v3);
}

uint64_t sub_1005B9564@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1005B95BC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1005B962C()
{
  result = qword_1008F47E8;
  if (!qword_1008F47E8)
  {
    sub_100141EEC(&qword_1008F47C0, &qword_1006FC568);
    sub_1005B96E4();
    sub_10014A6B0(&qword_1008F4800, &qword_1008F47E0, &qword_1006FC5F8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F47E8);
  }

  return result;
}

unint64_t sub_1005B96E4()
{
  result = qword_1008F47F0;
  if (!qword_1008F47F0)
  {
    sub_100141EEC(&qword_1008F47D8, &unk_1006FC5E8);
    sub_1005B9770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F47F0);
  }

  return result;
}

unint64_t sub_1005B9770()
{
  result = qword_1008F47F8;
  if (!qword_1008F47F8)
  {
    sub_100141EEC(&qword_1008F47D0, &qword_1006FC5E0);
    sub_100141EEC(&qword_1008F47B8, &qword_1006FC560);
    sub_100141EEC(&qword_1008F0A78, &qword_1006F5EB0);
    sub_1004F39AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500, &qword_1006E1D10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F47F8);
  }

  return result;
}

double sub_1005B98C0@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutChartGroupView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1005B7714(v4, a1);
}

unint64_t sub_1005B9930()
{
  result = qword_1008F4840;
  if (!qword_1008F4840)
  {
    sub_100141EEC(&qword_1008F4810, &qword_1006FC638);
    sub_1005B99E8();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0, &qword_1006DC0F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4840);
  }

  return result;
}

unint64_t sub_1005B99E8()
{
  result = qword_1008F4848;
  if (!qword_1008F4848)
  {
    sub_100141EEC(&qword_1008F4838, &qword_1006FC660);
    sub_10014A6B0(&qword_1008F4850, &qword_1008F4858, &qword_1006FC668, &protocol conformance descriptor for Link<A>);
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840, &qword_1006D4FF0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4848);
  }

  return result;
}

uint64_t sub_1005B9AE4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WorkoutChartGroupView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1005B9BA0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutChartGroupView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

id sub_1005B9C24(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutChartGroupView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1005B8970(a1, v4);
}

uint64_t sub_1005B9C94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005B9CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005B9D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005B9DAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005B9E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F4788, &qword_1006FC530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005B9E7C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002BACC;

  return sub_10055C0A0(a1, a2, v2);
}

unint64_t sub_1005B9F2C()
{
  result = qword_1008F48C0;
  if (!qword_1008F48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F48C0);
  }

  return result;
}

unint64_t sub_1005B9F84()
{
  result = qword_1008F48C8;
  if (!qword_1008F48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F48C8);
  }

  return result;
}

uint64_t sub_1005B9FDC()
{
  AppDependency.wrappedValue.getter();
  v0 = [objc_allocWithZone(_HKWheelchairUseCharacteristicCache) initWithHealthStore:v33];

  if (!v0)
  {
    return 0;
  }

  AppDependency.wrappedValue.getter();
  v1 = [objc_allocWithZone(AAUIAchievementsDataProvider) initWithHealthStore:v33 layoutMode:0];

  if (!v1)
  {

    return 0;
  }

  AppDependency.wrappedValue.getter();
  v2 = *&v33[OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider];

  AppDependency.wrappedValue.getter();
  v3 = objc_allocWithZone(type metadata accessor for ActivityDataProvider(0));
  v30 = v2;
  v31 = v1;
  v4 = v0;
  v5 = sub_1001F6498(v33, v4, v30, v31);
  v6 = [objc_allocWithZone(type metadata accessor for SeymourAvailabilityManager(0)) init];
  AppDependency.wrappedValue.getter();
  v7 = [objc_allocWithZone(FIUIPregnancyStateProvider) initWithHealthStore:v33];

  AppDependency.wrappedValue.getter();
  v8 = v4;
  v29 = v6;
  AppDependency.wrappedValue.getter();
  v9 = objc_allocWithZone(type metadata accessor for FitnessAppContext(0));
  v10 = v7;
  v11 = sub_10000C10C(v33, v29, v8, v33, v10);
  type metadata accessor for FitnessPlusSubscriptionProvider();
  swift_allocObject();
  v12 = v11;
  v13 = sub_1001FF08C(v12);
  v14 = v5;
  AppDependency.wrappedValue.getter();
  v15 = objc_allocWithZone(type metadata accessor for TrendsAvailabilityManager());
  v16 = sub_10001ED54(v14, v33);
  v17 = v14;

  AppDependency.wrappedValue.getter();
  v18 = v33;
  v19 = *&v12[OBJC_IVAR___CHFitnessAppContext_seymourAvailabilityManager];

  v20 = type metadata accessor for SummaryUserProfileProvider();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_notificationCenterObservers] = _swiftEmptyArrayStorage;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_forceUpdateNotifyToken] = -1;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_fetchRequests] = _swiftEmptyArrayStorage;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_activityDataProvider] = v17;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_fitnessPlusSubscriptionProvider] = v13;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_healthStore] = v18;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_seymourAvailabilityManager] = v19;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_trendsAvailabilityManager] = v16;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_wheelchairCache] = v8;
  sub_100140278(&qword_1008ED288, &qword_1006F08D0);
  v22 = swift_allocObject();
  *(v22 + 28) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = 1;
  *&v21[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_protectedState] = v22;
  v32.receiver = v21;
  v32.super_class = v20;
  v23 = v8;
  v24 = v16;
  v25 = objc_msgSendSuper2(&v32, "init");
  sub_1001B206C();
  v26 = *&v25[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_protectedState];
  os_unfair_lock_lock((v26 + 28));
  v27 = *(v26 + 16);
  LODWORD(v8) = *(v26 + 24);
  os_unfair_lock_unlock((v26 + 28));

  if (v8)
  {
    return 0;
  }

  else
  {
    return v27;
  }
}

uint64_t sub_1005BA400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005BA49C, v5, v4);
}

uint64_t sub_1005BA49C()
{

  v1 = sub_1005B9FDC();
  if (v2)
  {
    v3 = &off_100841F80;
    v4 = 20;
  }

  else
  {
    v3 = sub_100183F44(v1);
    v4 = v3[2];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  sub_100186510(0, v4, 0);
  v5 = _swiftEmptyArrayStorage[2];
  v6 = 32;
  do
  {
    v7 = *(v3 + v6);
    v8 = _swiftEmptyArrayStorage[3];
    if (v5 >= v8 >> 1)
    {
      sub_100186510((v8 > 1), v5 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v5 + 1;
    *(&_swiftEmptyArrayStorage[4] + v5) = v7;
    ++v6;
    ++v5;
    --v4;
  }

  while (v4);
LABEL_9:

  v9 = *(v0 + 8);

  return v9(_swiftEmptyArrayStorage);
}

uint64_t sub_1005BA5F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005BB0A0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1005BA620(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100202054;

  return sub_1005BB1A8(a1);
}

uint64_t sub_1005BA6C8(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  *v6 = v2;
  v6[1] = sub_100202050;

  return sub_1005BA400(v3, v4, v5);
}

unint64_t sub_1005BA778()
{
  result = qword_1008F48D0;
  if (!qword_1008F48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F48D0);
  }

  return result;
}

unint64_t sub_1005BA7D4()
{
  result = qword_1008F48D8;
  if (!qword_1008F48D8)
  {
    sub_100141EEC(&qword_1008F48E0, qword_1006FC818);
    sub_10036FDB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F48D8);
  }

  return result;
}

uint64_t sub_1005BA858(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1004BC964();
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1005BA910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return _swift_task_switch(sub_1005BA938, 0, 0);
}

uint64_t sub_1005BA938()
{
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005BA9CC, v2, v1);
}

uint64_t sub_1005BA9CC()
{

  v1 = sub_1005B9FDC();
  if (v2)
  {
    v3 = &off_100841F80;
  }

  else
  {
    v3 = sub_100183F44(v1);
  }

  *(v0 + 96) = v3;

  return _swift_task_switch(sub_1005BAA68, 0, 0);
}

uint64_t sub_1005BAA68()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v43 = 0x8000000100748740;
    v44 = objc_opt_self();
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *v3;
      v45 = v3 + 1;
      v47 = v4;
      _StringGuts.grow(_:)(19);

      v6._countAndFlagsBits = sub_1000492F0(v5);
      String.append(_:)(v6);

      v7._countAndFlagsBits = 0x454D414E5FLL;
      v7._object = 0xE500000000000000;
      String.append(_:)(v7);
      v8 = [v44 mainBundle];
      v9 = String._bridgeToObjectiveC()();

      v10 = 0;
      if (v5 == 19)
      {
        v10 = String._bridgeToObjectiveC()();
      }

      v11 = v0[6];
      v12 = v0[7];
      v13 = [v8 localizedStringForKey:v9 value:0 table:{v10, v43}];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v0[2] = v14;
      v0[3] = v16;
      v0[4] = v11;
      v0[5] = v12;
      sub_10000FCBC();
      LOBYTE(v14) = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();

      if (v14)
      {
        v4 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100185CEC(0, v47[2] + 1, 1);
          v4 = v47;
        }

        v18 = v4[2];
        v17 = v4[3];
        if (v18 >= v17 >> 1)
        {
          sub_100185CEC((v17 > 1), v18 + 1, 1);
          v4 = v47;
        }

        v4[2] = v18 + 1;
        *(v4 + v18 + 32) = v5;
      }

      else
      {
        v4 = v47;
      }

      v3 = v45;
      --v2;
    }

    while (v2);
  }

  else
  {

    v43 = 0x8000000100748740;
    v4 = _swiftEmptyArrayStorage;
  }

  v20 = 0;
  v46 = v4[2];
  v48 = v4;
  while (1)
  {
    v28 = v4[2];
    if (v46 == v20)
    {
      break;
    }

    if (v20 >= v28)
    {
      __break(1u);
      return result;
    }

    v29 = *(v4 + v20 + 32);
    _StringGuts.grow(_:)(19);

    v30._countAndFlagsBits = sub_1000492F0(v29);
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0x454D414E5FLL;
    v31._object = 0xE500000000000000;
    String.append(_:)(v31);
    v32 = [objc_opt_self() mainBundle];
    v33 = String._bridgeToObjectiveC()();

    v34 = 0;
    if (v29 == 19)
    {
      v34 = String._bridgeToObjectiveC()();
    }

    v22 = v0[6];
    v21 = v0[7];
    v23 = [v32 localizedStringForKey:v33 value:0 table:{v34, v43}];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v0[2] = v24;
    v0[3] = v26;
    v0[4] = v22;
    v0[5] = v21;
    sub_10000FCBC();
    v27 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

    ++v20;
    v4 = v48;
    if (!v27)
    {

      sub_100140278(&qword_1008DE5F0, &qword_1006D7D70);
      v41 = swift_allocObject();
      *(v41 + 1) = xmmword_1006D46C0;
      *(v41 + 32) = v29;
      goto LABEL_29;
    }
  }

  if (v28)
  {
    sub_100186510(0, v28, 0);
    v35 = _swiftEmptyArrayStorage;
    v36 = _swiftEmptyArrayStorage[2];
    v37 = 32;
    do
    {
      v38 = *(v4 + v37);
      v49 = v35;
      v39 = v35[3];
      if (v36 >= v39 >> 1)
      {
        sub_100186510((v39 > 1), v36 + 1, 1);
        v35 = v49;
      }

      v35[2] = v36 + 1;
      *(v35 + v36 + 32) = v38;
      ++v37;
      ++v36;
      --v28;
    }

    while (v28);
    v40 = v35;

    v41 = v40;
  }

  else
  {

    v41 = _swiftEmptyArrayStorage;
  }

LABEL_29:
  v42 = v0[1];

  return v42(v41);
}

uint64_t sub_1005BAFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_10016200C;

  return sub_1005BA910(a2, a3, v7, v8, v9);
}

uint64_t sub_1005BB0A0()
{
  sub_100140278(&qword_1008DD148, &unk_1006D5CD0);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD198, &qword_1006DD370);
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150, &qword_1006D8820);
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v0;
}

uint64_t sub_1005BB1C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *v3++;
      v5 = v6;
      if (v6 <= 0x13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1001A39CC(0, *(v4 + 2) + 1, 1, v4);
        }

        v8 = *(v4 + 2);
        v7 = *(v4 + 3);
        if (v8 >= v7 >> 1)
        {
          v4 = sub_1001A39CC((v7 > 1), v8 + 1, 1, v4);
        }

        *(v4 + 2) = v8 + 1;
        v4[v8 + 32] = v5;
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v9 = *(v0 + 8);

  return v9(v4);
}

uint64_t sub_1005BB2D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v79 = a1;
  v69 = type metadata accessor for PlainButtonStyle();
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for ButtonMenuStyle();
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008F48F0, &qword_1006FCA80);
  v62 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v60 - v8;
  v66 = sub_100140278(&qword_1008F48F8, &qword_1006FCA88);
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v61 = &v60 - v10;
  v64 = sub_100140278(&qword_1008F4900, &qword_1006FCA90);
  __chkstk_darwin(v64);
  v80 = &v60 - v11;
  v72 = sub_100140278(&qword_1008F4908, &qword_1006FCA98);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v81 = &v60 - v12;
  v75 = sub_100140278(&qword_1008F4910, &qword_1006FCAA0);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v60 - v13;
  v77 = sub_100140278(&qword_1008F4918, &qword_1006FCAA8);
  v78 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v60 - v14;
  v15 = swift_allocObject();
  v16 = *(v3 + 48);
  v15[3] = *(v3 + 32);
  v15[4] = v16;
  v17 = *(v3 + 80);
  v15[5] = *(v3 + 64);
  v15[6] = v17;
  v18 = *(v3 + 16);
  v15[1] = *v3;
  v15[2] = v18;
  v82 = v3;
  sub_1005BDD40(v3, &v86);
  sub_100140278(&qword_1008F4920, &qword_1006FCAB0);
  sub_100140278(&qword_1008F4928, &qword_1006FCAB8);
  sub_1005BDD78();
  sub_10014A6B0(&qword_1008F4970, &qword_1008F4928, &qword_1006FCAB8, &protocol conformance descriptor for TupleView<A>);
  Menu.init(onPresentationChanged:content:label:)();
  ButtonMenuStyle.init()();
  v19 = sub_10014A6B0(&qword_1008F4978, &qword_1008F48F0, &qword_1006FCA80, &protocol conformance descriptor for Menu<A, B>);
  v20 = sub_1005BE378(&qword_1008F4980, &type metadata accessor for ButtonMenuStyle, &protocol conformance descriptor for ButtonMenuStyle);
  v21 = v61;
  v22 = v63;
  View.menuStyle<A>(_:)();
  (*(v65 + 8))(v6, v22);
  (*(v62 + 8))(v9, v7);
  v23 = v68;
  PlainButtonStyle.init()();
  *&v86 = v7;
  *(&v86 + 1) = v22;
  v87 = v19;
  v88 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1005BE378(&qword_1008F0708, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v24 = v80;
  v25 = v66;
  v26 = v69;
  View.buttonStyle<A>(_:)();
  (*(v70 + 8))(v23, v26);
  (*(v67 + 8))(v21, v25);
  v27 = v64;
  v24[*(v64 + 36)] = 0;
  v83 = *(v3 + 56);
  v84 = *(v3 + 72);
  v70 = sub_100140278(&qword_1008F4988, &qword_1006FCAE0);
  State.projectedValue.getter();
  v83 = v86;
  v84 = v87;
  v85 = v88;
  v28 = swift_allocObject();
  v29 = *(v3 + 48);
  v28[3] = *(v3 + 32);
  v28[4] = v29;
  v30 = *(v3 + 80);
  v28[5] = *(v3 + 64);
  v28[6] = v30;
  v31 = *(v3 + 16);
  v28[1] = *v3;
  v28[2] = v31;
  sub_1005BDD40(v3, &v86);
  v69 = type metadata accessor for ActivitySharingReplyMessageComposerView(0);
  v32 = sub_1005BE118();
  v33 = sub_1005BE31C();
  v34 = sub_1005BE378(&qword_1008DF4B0, type metadata accessor for ActivitySharingReplyMessageComposerView, &unk_1006D94B8);
  v35 = v80;
  View.sheet<A, B>(item:onDismiss:content:)();

  sub_1000A06AC(v35);
  v83 = *(v3 + 40);
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.projectedValue.getter();
  v36 = swift_allocObject();
  v37 = *(v3 + 48);
  v36[3] = *(v3 + 32);
  v36[4] = v37;
  v38 = *(v3 + 80);
  v36[5] = *(v3 + 64);
  v36[6] = v38;
  v39 = *(v3 + 16);
  v36[1] = *v3;
  v36[2] = v39;
  sub_1005BDD40(v3, &v86);
  v40 = sub_100140278(&qword_1008F49B0, &qword_1006FCAF8);
  *&v86 = v27;
  *(&v86 + 1) = &type metadata for ActivitySharingIdentifiableReply;
  v87 = v69;
  v88 = v32;
  v89 = v33;
  v90 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = type metadata accessor for ActivitySharingReplyEditView(255);
  v43 = type metadata accessor for Material();
  v44 = sub_1005BE378(&qword_1008F49B8, type metadata accessor for ActivitySharingReplyEditView, &unk_1006E1A20);
  *&v86 = v42;
  *(&v86 + 1) = v43;
  v87 = v44;
  v88 = &protocol witness table for Material;
  v59 = swift_getOpaqueTypeConformance2();
  v45 = v71;
  v46 = v72;
  v47 = v81;
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();

  (*(v73 + 8))(v47, v46);
  v86 = *(v3 + 16);
  v87 = *(v3 + 32);
  State.wrappedValue.getter();
  v48 = swift_allocObject();
  v49 = *(v3 + 48);
  v48[3] = *(v3 + 32);
  v48[4] = v49;
  v50 = *(v3 + 80);
  v48[5] = *(v3 + 64);
  v48[6] = v50;
  v51 = *(v3 + 16);
  v48[1] = *v3;
  v48[2] = v51;
  sub_1005BDD40(v3, &v86);
  v52 = sub_100140278(&unk_1008DF478, &qword_1006FC980);
  *&v86 = v46;
  *(&v86 + 1) = v40;
  v87 = OpaqueTypeConformance2;
  v88 = v59;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = sub_1005BE3C8();
  v55 = v74;
  v56 = v75;
  View.onChange<A>(of:initial:_:)();

  (*(v76 + 8))(v45, v56);
  *&v86 = v56;
  *(&v86 + 1) = v52;
  v87 = v53;
  v88 = v54;
  swift_getOpaqueTypeConformance2();
  v57 = v77;
  View.onTapGesture(count:perform:)();
  return (*(v78 + 8))(v55, v57);
}

double sub_1005BBF2C(char a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  *&result = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v11 - v6;
  if ((a1 & 1) == 0)
  {
    v8 = *(a2 + 8);
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;

    sub_10026E198(0, 0, v7, &unk_1006D2C58, v10);
  }

  return result;
}

uint64_t sub_1005BC044@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v4 = type metadata accessor for PlainButtonStyle();
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  __chkstk_darwin(v4);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008F49D0, &qword_1006FCB90);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v47 = sub_100140278(&qword_1008F49D8, &qword_1006FCB98);
  v43 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v38 - v13;
  v14 = sub_100140278(&qword_1008F49E0, &qword_1006FCBA0);
  v40 = *(v14 - 8);
  v15 = v40;
  v41 = v14;
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  LocalizedStringKey.init(stringLiteral:)();
  v53 = a1;
  sub_100140278(&qword_1008F49E8, &unk_1006FCBA8);
  sub_1005BE6C4();
  v39 = v20;
  Section<>.init(_:content:)();
  v52 = a1;
  sub_100140278(&qword_1008F49F8, &qword_1006FCBB8);
  sub_10014A6B0(&qword_1008F4A00, &qword_1008F49F8, &qword_1006FCBB8, &protocol conformance descriptor for Button<A>);
  Section<>.init(content:)();
  v21 = v42;
  PlainButtonStyle.init()();
  sub_1005BE77C();
  sub_1005BE378(&qword_1008F0708, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v22 = v51;
  v23 = v45;
  v24 = v48;
  View.buttonStyle<A>(_:)();
  (*(v49 + 8))(v21, v24);
  (*(v46 + 8))(v10, v23);
  v25 = *(v15 + 16);
  v26 = v20;
  v27 = v41;
  v25(v17, v26, v41);
  v28 = v43;
  v29 = v44;
  v30 = *(v43 + 16);
  v31 = v22;
  v32 = v47;
  v30(v44, v31, v47);
  v33 = v50;
  v25(v50, v17, v27);
  v34 = sub_100140278(&qword_1008F4A10, &qword_1006FCBC0);
  v30(&v33[*(v34 + 48)], v29, v32);
  v35 = *(v28 + 8);
  v35(v51, v32);
  v36 = *(v40 + 8);
  v36(v39, v27);
  v35(v29, v32);
  return (v36)(v17, v27);
}

uint64_t sub_1005BC568(_OWORD *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7[12] = v7[0];
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = a1[3];
  v2[3] = a1[2];
  v2[4] = v3;
  v4 = a1[5];
  v2[5] = a1[4];
  v2[6] = v4;
  v5 = a1[1];
  v2[1] = *a1;
  v2[2] = v5;
  sub_1005BDD40(a1, v7);
  sub_100140278(&unk_1008E99C0, &unk_1006D2070);
  sub_100140278(&qword_1008E62D8, &unk_1006E5D10);
  sub_10014A6B0(&qword_1008F4A28, &unk_1008E99C0, &unk_1006D2070, &protocol conformance descriptor for [A]);
  sub_10014A6B0(&qword_1008E62E0, &qword_1008E62D8, &unk_1006E5D10, &protocol conformance descriptor for Button<A>);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1005BC724(uint64_t *a1, _OWORD *a2)
{
  v3 = a1[1];
  v11 = *a1;
  v4 = v11;
  v12 = v3;
  v5 = swift_allocObject();
  v6 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v6;
  v7 = a2[5];
  *(v5 + 80) = a2[4];
  *(v5 + 96) = v7;
  v8 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v8;
  *(v5 + 112) = v4;
  *(v5 + 120) = v3;
  swift_bridgeObjectRetain_n();
  sub_1005BDD40(a2, &v10);
  sub_10000FCBC();
  return Button<>.init<A>(_:action:)();
}

uint64_t sub_1005BC7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_100140278(&qword_1008F4988, &qword_1006FCAE0);
  return State.wrappedValue.setter();
}

uint64_t sub_1005BC84C(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v2[3] = a1[2];
  v2[4] = v3;
  v4 = a1[5];
  v2[5] = a1[4];
  v2[6] = v4;
  v5 = a1[1];
  v2[1] = *a1;
  v2[2] = v5;
  sub_1005BDD40(a1, &v7);
  sub_100140278(&qword_1008F4A18, &qword_1006FCBC8);
  sub_10014A6B0(&qword_1008F4A20, &qword_1008F4A18, &qword_1006FCBC8, &protocol conformance descriptor for HStack<A>);
  return Button.init(action:label:)();
}

__n128 sub_1005BC94C@<Q0>(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  v17 = 1;
  sub_1005BC9C8(&v11);
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  result = v11;
  v10 = v17;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  *(a2 + 72) = v8;
  return result;
}

uint64_t sub_1005BC9C8@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = Image.init(systemName:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_10006965C(v2, v4, v6);

  sub_10004642C(v2, v4, v6);
}

uint64_t sub_1005BCAC0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IconOnlyLabelStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008F4938, &qword_1006FCAC0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  v9 = &v8[*(sub_100140278(&qword_1008F4960, &unk_1006FCAD0) + 36)];
  v10 = *(sub_100140278(&qword_1008E9848, &qword_1006EA390) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v11 = type metadata accessor for SymbolRenderingMode();
  (*(*(v11 - 8) + 56))(v9 + v10, 0, 1, v11);
  *v9 = swift_getKeyPath();
  v12 = &v8[*(sub_100140278(&qword_1008F4950, &qword_1006FCAC8) + 36)];
  v13 = *(sub_100140278(&qword_1008E97F8, &qword_1006EA330) + 28);
  v14 = enum case for Image.Scale.large(_:);
  v15 = type metadata accessor for Image.Scale();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *&v8[*(v6 + 36)] = static Color.white.getter();
  IconOnlyLabelStyle.init()();
  sub_1005BDEBC();
  sub_1005BE378(&qword_1008F4968, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  sub_10000EA04(v8, &qword_1008F4938, &qword_1006FCAC0);
  v16 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100140278(&qword_1008F4920, &qword_1006FCAB0);
  v19 = (a1 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = v16;
  return result;
}

int *sub_1005BCE00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v6 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a2 + 8);
  sub_10013EDF4(v12, v13, v25 - v10);
  sub_1005BE4A8(v11, v8);
  result = [*(v14 + OBJC_IVAR____TtC10FitnessApp31ActivitySharingReplyCoordinator_activitySharingHighlight + *(type metadata accessor for ActivitySharingHighlight(0) + 28)) contact];
  if (result)
  {
    v16 = result;
    v17 = [result primaryDestinationForMessaging];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v28 = *(a2 + 56);
    v29 = *(a2 + 72);
    sub_100140278(&qword_1008F4988, &qword_1006FCAE0);
    State.projectedValue.getter();
    sub_10000EA04(v11, &unk_1008EB5B0, &unk_1006D2BF0);
    v25[0] = v25[1];
    v21 = v26;
    v22 = v27;
    sub_1005BE518(v8, a3);
    result = type metadata accessor for ActivitySharingReplyMessageComposerView(0);
    v23 = (a3 + result[5]);
    *v23 = v18;
    v23[1] = v20;
    v24 = a3 + result[6];
    *v24 = v25[0];
    *(v24 + 16) = v21;
    *(v24 + 24) = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BCFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for Material();
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  __chkstk_darwin(v3);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Reply();
  v6 = *(v46 - 8);
  v47 = *(v6 + 64);
  __chkstk_darwin(v46);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v11 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v11 - 8);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for ActivitySharingReplyEditView(0);
  __chkstk_darwin(v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(a1 + 40);
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.projectedValue.getter();
  v41 = *(&v52 + 1);
  v42 = v52;
  v40 = v53;
  v55 = *(a1 + 16);
  v56 = *(a1 + 32);
  sub_100140278(&qword_1008F4988, &qword_1006FCAE0);
  State.projectedValue.getter();
  v39 = v52;
  v19 = v53;
  v20 = v54;
  v21 = sub_10013EDF4(0, 0xE000000000000000, v15);
  sub_10013F6D8(v21, v22);
  *&v55 = 0;
  *(&v55 + 1) = 0xE000000000000000;
  State.init(wrappedValue:)();
  v23 = v53;
  *(v18 + 56) = v52;
  *(v18 + 9) = v23;
  v18[80] = FocusState.init<>()() & 1;
  *(v18 + 11) = v24;
  v18[96] = v25 & 1;
  static ReplyLayoutValues.phoneValues.getter();
  v26 = v41;
  *v18 = v42;
  *(v18 + 1) = v26;
  v18[16] = v40;
  *(v18 + 24) = v39;
  *(v18 + 5) = v19;
  *(v18 + 6) = v20;
  sub_1005BE4A8(v15, &v18[*(v16 + 36)]);
  v27 = v10;
  v28 = v46;
  (*(v6 + 16))(&v18[*(v16 + 40)], v10, v46);
  v29 = v43;
  sub_1005BE518(v15, v43);
  v30 = *(v6 + 32);
  v31 = v45;
  v32 = v28;
  v30(v45, v27, v28);
  v33 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v34 = (v12 + *(v6 + 80) + v33) & ~*(v6 + 80);
  v35 = swift_allocObject();
  sub_1005BE518(v29, v35 + v33);
  v30((v35 + v34), v31, v32);
  *(v18 + 13) = sub_1005BE588;
  *(v18 + 14) = v35;
  v18[120] = 0;
  v36 = v48;
  static Material.thin.getter();
  sub_1005BE378(&qword_1008F49B8, type metadata accessor for ActivitySharingReplyEditView, &unk_1006E1A20);
  v37 = v49;
  View.presentationBackground<A>(_:)();
  (*(v50 + 8))(v36, v37);
  return sub_1005BE660(v18);
}

void sub_1005BD488(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = *(a3 + 80);
  if (v8)
  {
    v9 = a2[1];
    if (v9)
    {
      v10 = *a2;
      v11 = *(a3 + 88);
      v12 = *(a3 + 8);

      sub_10013EDF4(v10, v9, v7);
      v13 = swift_allocObject();
      v14 = *(a3 + 48);
      *(v13 + 3) = *(a3 + 32);
      *(v13 + 4) = v14;
      v15 = *(a3 + 80);
      *(v13 + 5) = *(a3 + 64);
      *(v13 + 6) = v15;
      v16 = *(a3 + 16);
      *(v13 + 1) = *a3;
      *(v13 + 2) = v16;
      v17 = type metadata accessor for ActivitySharingReplyCoordinator.MessageComposerDelegate();
      v18 = objc_allocWithZone(v17);
      v19 = &v18[OBJC_IVAR____TtCC10FitnessApp31ActivitySharingReplyCoordinator23MessageComposerDelegate_completion];
      *v19 = sub_1005BE4A0;
      v19[1] = v13;
      sub_1005BDD40(a3, &v32);
      v31.receiver = v18;
      v31.super_class = v17;
      v20 = objc_msgSendSuper2(&v31, "init");
      v21 = *(v12 + OBJC_IVAR____TtC10FitnessApp31ActivitySharingReplyCoordinator_messageComposerDelegate);
      *(v12 + OBJC_IVAR____TtC10FitnessApp31ActivitySharingReplyCoordinator_messageComposerDelegate) = v20;
      v22 = v20;

      v23 = [*(v12 + OBJC_IVAR____TtC10FitnessApp31ActivitySharingReplyCoordinator_activitySharingHighlight + *(type metadata accessor for ActivitySharingHighlight(0) + 28)) contact];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 primaryDestinationForMessaging];

        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = v22;
        v30 = sub_1005BD7E0(v7, v26, v28, v29);

        v8(v30);
        sub_1000245E0(v8, v11);

        sub_10000EA04(v7, &unk_1008EB5B0, &unk_1006D2BF0);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v32 = *(a3 + 16);
    v33 = *(a3 + 32);
    sub_100140278(&qword_1008F4988, &qword_1006FCAE0);
    State.wrappedValue.getter();
    v32 = *(a3 + 56);
    v33 = *(a3 + 72);
    State.wrappedValue.setter();
  }
}

void sub_1005BD720(uint64_t a1, uint64_t a2)
{
  sub_100140278(&qword_1008F4988, &qword_1006FCAE0);
  State.wrappedValue.setter();
  if (a1)
  {
    sub_10013F860();
  }
}

id sub_1005BD7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = [objc_allocWithZone(MFMessageComposeViewController) init];
  [v14 _setCanEditRecipients:0];
  [v14 setMessageComposeDelegate:a4];
  sub_100140278(&qword_1008DCF58, &qword_1006D7B40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D46C0;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setRecipients:isa];

  v17 = [objc_allocWithZone(MSMessage) init];
  sub_1005BE4A8(a1, v13);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v22 = 0;
  if (v20(v13, 1, v18) != 1)
  {
    URL._bridgeToObjectiveC()(v21);
    v22 = v23;
    (*(v19 + 8))(v13, v18);
  }

  [v17 setURL:v22];

  v24 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  v25 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v24];

  [v17 setLayout:v25];
  sub_1005BE4A8(a1, v10);
  if (v20(v10, 1, v18) == 1)
  {
    v27 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v26);
    v27 = v28;
    (*(v19 + 8))(v10, v18);
  }

  v29 = ASMessageFromRichMessagePayload();

  [v17 setSummaryText:v29];
  [v14 setMessage:v17];

  return v14;
}

__n128 sub_1005BDB0C@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100140278(&unk_1008DF478, &qword_1006FC980);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  type metadata accessor for ActivitySharingReplyCoordinator(0);
  sub_1005BE378(&qword_1008F48E8, type metadata accessor for ActivitySharingReplyCoordinator, &unk_1006D2B9C);
  *a4 = ObservedObject.init(wrappedValue:)();
  *(a4 + 8) = v7;
  result = v9;
  *(a4 + 16) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = v9.n128_u8[0];
  *(a4 + 48) = v9.n128_u64[1];
  *(a4 + 56) = v9;
  *(a4 + 72) = v10;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  return result;
}

uint64_t sub_1005BDC4C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1005BDC64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005BDCAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005BDD78()
{
  result = qword_1008F4930;
  if (!qword_1008F4930)
  {
    sub_100141EEC(&qword_1008F4920, &qword_1006FCAB0);
    sub_100141EEC(&qword_1008F4938, &qword_1006FCAC0);
    type metadata accessor for IconOnlyLabelStyle();
    sub_1005BDEBC();
    sub_1005BE378(&qword_1008F4968, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0, &qword_1006DC0F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4930);
  }

  return result;
}

unint64_t sub_1005BDEBC()
{
  result = qword_1008F4940;
  if (!qword_1008F4940)
  {
    sub_100141EEC(&qword_1008F4938, &qword_1006FCAC0);
    sub_1005BDF74();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748, &unk_1006DC070, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4940);
  }

  return result;
}

unint64_t sub_1005BDF74()
{
  result = qword_1008F4948;
  if (!qword_1008F4948)
  {
    sub_100141EEC(&qword_1008F4950, &qword_1006FCAC8);
    sub_1005BE02C();
    sub_10014A6B0(&qword_1008E9820, &qword_1008E97F8, &qword_1006EA330, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4948);
  }

  return result;
}

unint64_t sub_1005BE02C()
{
  result = qword_1008F4958;
  if (!qword_1008F4958)
  {
    sub_100141EEC(&qword_1008F4960, &unk_1006FCAD0);
    sub_10014A6B0(&qword_1008DE038, &qword_1008DE030, &qword_1006D75F0, &protocol conformance descriptor for Label<A, B>);
    sub_10014A6B0(&qword_1008E9860, &qword_1008E9848, &qword_1006EA390, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4958);
  }

  return result;
}

unint64_t sub_1005BE118()
{
  result = qword_1008F4990;
  if (!qword_1008F4990)
  {
    sub_100141EEC(&qword_1008F4900, &qword_1006FCA90);
    sub_100141EEC(&qword_1008F48F8, &qword_1006FCA88);
    type metadata accessor for PlainButtonStyle();
    sub_100141EEC(&qword_1008F48F0, &qword_1006FCA80);
    type metadata accessor for ButtonMenuStyle();
    sub_10014A6B0(&qword_1008F4978, &qword_1008F48F0, &qword_1006FCA80, &protocol conformance descriptor for Menu<A, B>);
    sub_1005BE378(&qword_1008F4980, &type metadata accessor for ButtonMenuStyle, &protocol conformance descriptor for ButtonMenuStyle);
    swift_getOpaqueTypeConformance2();
    sub_1005BE378(&qword_1008F0708, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008F4998, &qword_1008F49A0, &unk_1006FCAE8, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4990);
  }

  return result;
}

unint64_t sub_1005BE31C()
{
  result = qword_1008F49A8;
  if (!qword_1008F49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F49A8);
  }

  return result;
}

uint64_t sub_1005BE378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005BE3C8()
{
  result = qword_1008F49C0;
  if (!qword_1008F49C0)
  {
    sub_100141EEC(&unk_1008DF478, &qword_1006FC980);
    sub_1005BE44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F49C0);
  }

  return result;
}

unint64_t sub_1005BE44C()
{
  result = qword_1008F49C8;
  if (!qword_1008F49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F49C8);
  }

  return result;
}

uint64_t sub_1005BE4A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005BE518(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005BE588()
{
  v1 = *(sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Reply() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10025F2A8(v0 + v2, v5);
}

uint64_t sub_1005BE660(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySharingReplyEditView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005BE6C4()
{
  result = qword_1008F49F0;
  if (!qword_1008F49F0)
  {
    sub_100141EEC(&qword_1008F49E8, &unk_1006FCBA8);
    sub_10014A6B0(&qword_1008E62E0, &qword_1008E62D8, &unk_1006E5D10, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F49F0);
  }

  return result;
}

unint64_t sub_1005BE77C()
{
  result = qword_1008F4A08;
  if (!qword_1008F4A08)
  {
    sub_100141EEC(&qword_1008F49D0, &qword_1006FCB90);
    sub_10014A6B0(&qword_1008F4A00, &qword_1008F49F8, &qword_1006FCBB8, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4A08);
  }

  return result;
}

uint64_t sub_1005BE8A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1005BE8F4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void *sub_1005BE948(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1005BE978()
{
  v1 = v0;
  v2 = [v0 metadata];
  if (v2)
  {
    v3 = v2;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  v4 = static WorkoutConfiguration.deserialize(from:)();

  if (v4)
  {
    v5 = [v4 analyticsKey];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    v8 = [v1 _goalType];

    return _HKWorkoutGoalType.analyticsKey.getter(v8);
  }
}

uint64_t sub_1005BEA7C()
{
  v1 = v0;
  v2 = [v0 metadata];
  if (v2)
  {
    v3 = v2;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  v4 = static WorkoutConfiguration.deserialize(from:)();

  if (v4)
  {
    v5 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    [v5 effectiveTypeIdentifier];

    v6 = HKWorkoutActivityType.shortenedAnalyticsKey.getter();
    return v6;
  }

  else
  {
    [v1 workoutActivityType];

    return HKWorkoutActivityType.shortenedAnalyticsKey.getter();
  }
}

uint64_t sub_1005BEB80()
{
  v1 = v0;
  v2 = [v0 metadata];
  if (v2)
  {
    v3 = v2;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  v4 = static WorkoutConfiguration.deserialize(from:)();

  if (v4)
  {
    v5 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v6 = [v5 isIndoor];
  }

  else
  {
    v6 = sub_1005BED9C(v1);
  }

  if (v6)
  {
    return 0x726F6F646E69;
  }

  else
  {
    return 0x726F6F6474756FLL;
  }
}

id sub_1005BEC7C()
{
  v1 = [v0 metadata];
  if (v1)
  {
    v2 = v1;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  v3 = static WorkoutConfiguration.deserialize(from:)();

  if (v3)
  {
    v4 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    [v4 swimmingLocationType];

    result = _HKWorkoutSwimmingLocationTypeName();
    if (result)
    {
      v6 = result;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
      return v7;
    }

    __break(1u);
  }

  else
  {
    sub_1003F41BC();
    result = _HKWorkoutSwimmingLocationTypeName();
    if (result)
    {
      v6 = result;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

id sub_1005BED9C(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  v3 = [v2 objectForKeyedSubscript:HKMetadataKeyIndoorWorkout];
  v4 = [v3 BOOLValue];

  return v4;
}

void *sub_1005BEE30@<X0>(void *a1@<X8>)
{
  v3 = sub_100140278(&qword_1008F4A30, &qword_1006FCD68);
  __chkstk_darwin(v3);
  v5 = v20 - v4;
  v6 = sub_100140278(&qword_1008F4A38, &qword_1006FCD70);
  __chkstk_darwin(v6);
  v9 = v20 - v8;
  if (*(v1 + 8))
  {
    v10 = *v1;
    v11 = *(v1 + 9);
    v13 = *(v1 + 16);
    v12 = *(v1 + 24);
    v20[1] = 1;
    v14 = v10;

    State.init(wrappedValue:)();
    v15 = v21[0];
    *v9 = v14;
    v9[8] = v11;
    v9[9] = 1;
    *(v9 + 2) = v13;
    *(v9 + 3) = v12;
    *(v9 + 2) = v15;
    swift_storeEnumTagMultiPayload();
    sub_1005C1B3C();
    sub_1005C1B90();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v20[0] = a1;
    __chkstk_darwin(v7);
    v20[-2] = v1;
    sub_100140278(&qword_1008F4A40, &qword_1006FCD78);
    sub_10014A6B0(&qword_1008F4A48, &qword_1008F4A40, &qword_1006FCD78, &protocol conformance descriptor for GeometryReader<A>);
    NavigationStack.init<>(root:)();
    v17 = swift_allocObject();
    v18 = *(v1 + 16);
    *(v17 + 16) = *v1;
    *(v17 + 32) = v18;
    *(v17 + 48) = *(v1 + 32);
    *(v17 + 64) = *(v1 + 48);
    v19 = &v5[*(v3 + 36)];
    *v19 = sub_1005C1B34;
    v19[1] = v17;
    v19[2] = 0;
    v19[3] = 0;
    sub_10001B104(v5, v9, &qword_1008F4A30, &qword_1006FCD68);
    swift_storeEnumTagMultiPayload();
    sub_1003C072C(v1, v21);
    sub_1005C1B3C();
    sub_1005C1B90();
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v5, &qword_1008F4A30, &qword_1006FCD68);
  }
}

double sub_1005BF120(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3 - 8];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  sub_1003C072C(a1, v11);
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = *(a1 + 16);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a1 + 32);
  *(v7 + 80) = *(a1 + 48);
  sub_10026E198(0, 0, v4, &unk_1006FCD98, v7);

  return result;
}

uint64_t sub_1005BF260()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001D0380;

  return sub_1005BF30C();
}

uint64_t sub_1005BF30C()
{
  v1[4] = v0;
  type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_1005BF3A4, v3, v2);
}

uint64_t sub_1005BF3A4()
{
  v1 = *(v0[4] + 32);
  v0[8] = v1;
  if ([v1 paused])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1005BF490;

    return static Task<>.sleep(nanoseconds:)(250000000);
  }
}

uint64_t sub_1005BF490()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1005C24C4;
  }

  else
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1005BF5B4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005BF5B4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  [v1 setDeprecatedPauseForInternalSwiftClient:1];
  *(v0 + 16) = *(v2 + 40);
  *(v0 + 80) = 1;
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.wrappedValue.setter();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1005BF66C(uint64_t a1, uint64_t a2)
{
  static Axis.Set.vertical.getter();
  sub_100140278(&qword_1008F4A70, &qword_1006FCDB0);
  sub_100141EEC(&qword_1008F4A78, &qword_1006FCDB8);
  sub_100141EEC(&qword_1008F4A80, &qword_1006FCDC0);
  sub_1005C1D08();
  sub_100141EEC(&qword_1008DDE50, &qword_1006FCDD0);
  sub_10014A6B0(&qword_1008DDE68, &qword_1008DDE50, &qword_1006FCDD0, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return ScrollView.init(_:showsIndicators:content:)();
}

uint64_t sub_1005BF7D4(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F4A98, &qword_1006FCDC8);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  v5 = sub_100140278(&qword_1008F4A78, &qword_1006FCDB8);
  __chkstk_darwin(v5);
  v7 = v17 - v6;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v8 = sub_100140278(&qword_1008F4AA0, &qword_1006FCDD8);
  sub_1005BFAF4(a1, &v4[*(v8 + 44)]);
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v9 = sub_100015E80(v4, v7, &qword_1008F4A98, &qword_1006FCDC8);
  v10 = &v7[*(v5 + 36)];
  v11 = v23;
  *(v10 + 4) = v22;
  *(v10 + 5) = v11;
  *(v10 + 6) = v24;
  v12 = v19;
  *v10 = v18;
  *(v10 + 1) = v12;
  v13 = v21;
  *(v10 + 2) = v20;
  *(v10 + 3) = v13;
  __chkstk_darwin(v9);
  sub_100140278(&qword_1008F4A80, &qword_1006FCDC0);
  sub_1005C1D08();
  v14 = sub_100141EEC(&qword_1008DDE50, &qword_1006FCDD0);
  v15 = sub_10014A6B0(&qword_1008DDE68, &qword_1008DDE50, &qword_1006FCDD0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v17[0] = v14;
  v17[1] = v15;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return sub_10000EA04(v7, &qword_1008F4A78, &qword_1006FCDB8);
}

uint64_t sub_1005BFAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v110 = a2;
  v2 = sub_100140278(&qword_1008F4AA8, &qword_1006FCDE0);
  __chkstk_darwin(v2 - 8);
  v109 = &v104[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v108 = &v104[-v5];
  v6 = type metadata accessor for AccessibilityTraits();
  v114 = *(v6 - 8);
  v115 = v6;
  __chkstk_darwin(v6);
  v113 = &v104[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100140278(&qword_1008F4AB0, &qword_1006FCDE8);
  __chkstk_darwin(v8 - 8);
  v117 = &v104[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v116 = &v104[-v11];
  LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  static Font.largeTitle.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_10004642C(v12, v14, v16 & 1);

  static Font.Weight.bold.getter();
  v22 = Text.fontWeight(_:)();
  v24 = v23;
  LOBYTE(v14) = v25;
  v27 = v26;
  sub_10004642C(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v19) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  LOBYTE(v14) = v14 & 1;
  v177 = v14;
  v176 = 0;
  v37 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v178 = 0;
  *&v166 = v22;
  *(&v166 + 1) = v24;
  LOBYTE(v167) = v14;
  *(&v167 + 1) = v27;
  *&v168 = KeyPath;
  BYTE8(v168) = 1;
  LOBYTE(v169) = v19;
  *(&v169 + 1) = v30;
  *&v170 = v32;
  *(&v170 + 1) = v34;
  *&v171 = v36;
  BYTE8(v171) = 0;
  LOBYTE(v172) = v37;
  *(&v172 + 1) = v38;
  *&v173[0] = v39;
  *(&v173[0] + 1) = v40;
  *&v173[1] = v41;
  BYTE8(v173[1]) = 0;
  v42 = v113;
  static AccessibilityTraits.isHeader.getter();
  sub_100140278(&qword_1008E31F8, &unk_1006FCE20);
  sub_1005C1F98(&qword_1008F4AB8, &qword_1008E31F8, &unk_1006FCE20, sub_100182D84);
  View.accessibilityAddTraits(_:)();
  (*(v114 + 8))(v42, v115);
  v174[6] = v172;
  v175[0] = v173[0];
  *(v175 + 9) = *(v173 + 9);
  v174[2] = v168;
  v174[3] = v169;
  v174[4] = v170;
  v174[5] = v171;
  v174[0] = v166;
  v174[1] = v167;
  sub_10000EA04(v174, &qword_1008E31F8, &unk_1006FCE20);
  LocalizedStringKey.init(stringLiteral:)();
  v43 = Text.init(_:tableName:bundle:comment:)();
  v45 = v44;
  LOBYTE(v42) = v46;
  static Font.body.getter();
  v106 = Text.font(_:)();
  v115 = v47;
  v49 = v48;
  v111 = v50;

  sub_10004642C(v43, v45, v42 & 1);

  v113 = swift_getKeyPath();
  LODWORD(v114) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v112 = v49 & 1;
  LOBYTE(v166) = v49 & 1;
  LOBYTE(v137[0]) = 0;
  v59 = v107;
  if (*(v107 + 10))
  {
    v60 = 2;
  }

  else
  {
    v60 = 1;
  }

  v61 = *(v107 + 32);
  v166 = *(v107 + 40);
  v62 = v61;
  sub_100140278(&qword_1008DDBB8, &qword_1006D6FD0);
  State.wrappedValue.getter();
  v63 = v137[0];
  v64 = objc_opt_self();
  [v64 preferredActivityRingThicknessForDiameter:208.0];
  v66 = v65;
  [v64 preferredActivityRingInterspacingForDiameter:208.0];
  v68 = v67;
  v69 = [v62 paused];
  *&v118 = v62;
  *&v70 = v66;
  *&v71 = v68;
  BYTE8(v118) = v69;
  HIDWORD(v118) = 1129316352;
  *&v119 = __PAIR64__(v71, v70);
  WORD4(v119) = 2;
  BYTE10(v119) = v63;
  *(&v119 + 11) = v60;
  v120 = 0uLL;
  v121 = v62;
  v122 = v69;
  v123 = 1129316352;
  v124 = v70;
  v125 = v71;
  v126 = 2;
  v127 = v63;
  v128 = v60;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  sub_1004B7008(&v118, &v166);
  sub_1004B7064(&v121);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v156 = v118;
  v157 = v119;
  v158 = v120;
  v105 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v162 = 0;
  v80 = static HorizontalAlignment.center.getter();
  v81 = v108;
  *v108 = v80;
  *(v81 + 8) = 0;
  *(v81 + 16) = 0;
  v82 = sub_100140278(&qword_1008F4AC0, &qword_1006FCE30);
  sub_1005C04CC(v59, v81 + *(v82 + 44));
  v84 = v116;
  v83 = v117;
  sub_10001B104(v116, v117, &qword_1008F4AB0, &qword_1006FCDE8);
  v85 = v109;
  sub_10001B104(v81, v109, &qword_1008F4AA8, &qword_1006FCDE0);
  v86 = v110;
  sub_10001B104(v83, v110, &qword_1008F4AB0, &qword_1006FCDE8);
  v87 = sub_100140278(&qword_1008F4AC8, &unk_1006FCE38);
  v88 = (v86 + v87[12]);
  v89 = v106;
  *&v132 = v106;
  *(&v132 + 1) = v115;
  LOBYTE(v133) = v112;
  *(&v133 + 1) = *v165;
  DWORD1(v133) = *&v165[3];
  *(&v133 + 1) = v111;
  *&v134 = v113;
  BYTE8(v134) = 1;
  HIDWORD(v134) = *&v164[3];
  *(&v134 + 9) = *v164;
  LOBYTE(v135) = v114;
  DWORD1(v135) = *&v163[3];
  *(&v135 + 1) = *v163;
  *(&v135 + 1) = v52;
  *&v136[0] = v54;
  *(&v136[0] + 1) = v56;
  *&v136[1] = v58;
  BYTE8(v136[1]) = 0;
  v90 = v133;
  *v88 = v132;
  v88[1] = v90;
  v91 = v134;
  v92 = v135;
  v93 = v136[0];
  *(v88 + 73) = *(v136 + 9);
  v88[3] = v92;
  v88[4] = v93;
  v88[2] = v91;
  v94 = (v86 + v87[16]);
  v138 = v160;
  v139 = v161;
  v137[0] = v156;
  v137[1] = v157;
  v137[2] = v158;
  v137[3] = v159;
  v95 = v105;
  LOBYTE(v140) = v105;
  *(&v140 + 1) = v73;
  *&v141[0] = v75;
  *(&v141[0] + 1) = v77;
  *&v141[1] = v79;
  BYTE8(v141[1]) = 0;
  v96 = v156;
  v97 = v157;
  v98 = v159;
  v94[2] = v158;
  v94[3] = v98;
  *v94 = v96;
  v94[1] = v97;
  v99 = v138;
  v100 = v139;
  *(v94 + 121) = *(v141 + 9);
  v101 = v141[0];
  v94[6] = v140;
  v94[7] = v101;
  v94[4] = v99;
  v94[5] = v100;
  v102 = v86 + v87[20];
  *v102 = 0;
  *(v102 + 8) = 1;
  sub_10001B104(v85, v86 + v87[24], &qword_1008F4AA8, &qword_1006FCDE0);
  sub_10001B104(&v132, &v166, &qword_1008DE058, &qword_1006D7640);
  sub_10001B104(v137, &v166, &qword_1008EF2E8, &qword_1006F3F10);
  sub_10000EA04(v81, &qword_1008F4AA8, &qword_1006FCDE0);
  sub_10000EA04(v84, &qword_1008F4AB0, &qword_1006FCDE8);
  sub_10000EA04(v85, &qword_1008F4AA8, &qword_1006FCDE0);
  v168 = v158;
  v169 = v159;
  v170 = v160;
  v171 = v161;
  v166 = v156;
  v167 = v157;
  LOBYTE(v172) = v95;
  *(&v172 + 1) = v73;
  *&v173[0] = v75;
  *(&v173[0] + 1) = v77;
  *&v173[1] = v79;
  BYTE8(v173[1]) = 0;
  sub_10000EA04(&v166, &qword_1008EF2E8, &qword_1006F3F10);
  v142[0] = v89;
  v142[1] = v115;
  v143 = v112;
  *v144 = *v165;
  *&v144[3] = *&v165[3];
  v145 = v111;
  v146 = v113;
  v147 = 1;
  *v148 = *v164;
  *&v148[3] = *&v164[3];
  v149 = v114;
  *v150 = *v163;
  *&v150[3] = *&v163[3];
  v151 = v52;
  v152 = v54;
  v153 = v56;
  v154 = v58;
  v155 = 0;
  sub_10000EA04(v142, &qword_1008DE058, &qword_1006D7640);
  return sub_10000EA04(v117, &qword_1008F4AB0, &qword_1006FCDE8);
}

uint64_t sub_1005C04CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008F4AD0, &qword_1006FCE48);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v52 = sub_100140278(&qword_1008F4AD8, &qword_1006FCE50);
  __chkstk_darwin(v52);
  v11 = &v52 - v10;
  v12 = sub_100140278(&qword_1008F4AE0, &qword_1006FCE58);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v53 = &v52 - v14;
  v15 = sub_100140278(&qword_1008F4AE8, &qword_1006FCE60);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v54 = &v52 - v17;
  v18 = sub_100140278(&qword_1008F4AF0, &qword_1006FCE68);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v55 = &v52 - v20;
  sub_1005C0A98(a1, v9);
  v21 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v23 = &v9[*(v7 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  BorderedProminentButtonStyle.init()();
  sub_1005C201C();
  sub_1005C22D0(&qword_1008DC548, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  sub_10000EA04(v9, &qword_1008F4AD0, &qword_1006FCE48);
  v24 = &v11[*(v52 + 36)];
  v25 = *(sub_100140278(&qword_1008DC578, &qword_1006D49C0) + 28);
  v26 = enum case for ControlSize.large(_:);
  v27 = type metadata accessor for ControlSize();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  static Font.Weight.semibold.getter();
  sub_1005C2184();
  v28 = v53;
  View.fontWeight(_:)();
  sub_10000EA04(v11, &qword_1008F4AD8, &qword_1006FCE50);
  v29 = [objc_opt_self() tertiarySystemBackgroundColor];
  v30 = Color.init(uiColor:)();
  v31 = swift_getKeyPath();
  *&v57 = v30;
  v32 = AnyShapeStyle.init<A>(_:)();
  v33 = (v28 + *(v13 + 44));
  *v33 = v31;
  v33[1] = v32;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v34 = v54;
  sub_100015E80(v28, v54, &qword_1008F4AE0, &qword_1006FCE58);
  v35 = (v34 + *(v16 + 44));
  v36 = v62;
  v35[4] = v61;
  v35[5] = v36;
  v35[6] = v63;
  v37 = v58;
  *v35 = v57;
  v35[1] = v37;
  v38 = v60;
  v35[2] = v59;
  v35[3] = v38;
  v39 = v55;
  v40 = &v55[*(v19 + 44)];
  sub_100140278(&qword_1008DC568, &qword_1006D49B0);
  static ButtonBorderShape.roundedRectangle(radius:)();
  *v40 = swift_getKeyPath();
  sub_100015E80(v34, v39, &qword_1008F4AE8, &qword_1006FCE60);
  LOBYTE(v40) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v56;
  sub_100015E80(v39, v56, &qword_1008F4AF0, &qword_1006FCE68);
  result = sub_100140278(&qword_1008F4B30, &qword_1006FCF48);
  v51 = v49 + *(result + 36);
  *v51 = v40;
  *(v51 + 8) = v42;
  *(v51 + 16) = v44;
  *(v51 + 24) = v46;
  *(v51 + 32) = v48;
  *(v51 + 40) = 0;
  return result;
}

uint64_t sub_1005C0A98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v41 = sub_100140278(&qword_1008F4B38, &qword_1006FCF50) - 8;
  __chkstk_darwin(v41);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v39 - v5;
  v40 = sub_100140278(&qword_1008F4B40, &qword_1006FCF58);
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v44 = &v39 - v10;
  sub_100140278(&qword_1008F4B48, &unk_1006FCF60);
  v11 = type metadata accessor for PauseRingsPeriod();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D64F0;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v16, enum case for PauseRingsPeriod.endOfDay(_:), v11);
  v17(v16 + v13, enum case for PauseRingsPeriod.endOfWeek(_:), v11);
  v17(v16 + 2 * v13, enum case for PauseRingsPeriod.endOfMonth(_:), v11);
  v49 = v15;
  swift_getKeyPath();
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = *(a1 + 48);
  sub_1003C072C(a1, &v45);
  sub_100140278(&qword_1008F4B50, &qword_1006FCF88);
  sub_100140278(&qword_1008F4B58, &qword_1006FCF90);
  sub_10014A6B0(&qword_1008F4B60, &qword_1008F4B50, &qword_1006FCF88, &protocol conformance descriptor for [A]);
  sub_1005C22D0(&qword_1008F4B68, &type metadata accessor for PauseRingsPeriod, &protocol conformance descriptor for PauseRingsPeriod);
  sub_1005C2318();
  v20 = v44;
  ForEach<>.init(_:id:content:)();
  v21 = *a1;
  LOBYTE(v12) = *(a1 + 9);
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v49 = 1;
  v24 = v21;

  State.init(wrappedValue:)();
  v25 = v45;
  *&v45 = v24;
  WORD4(v45) = v12;
  v46 = v23;
  v47 = v22;
  v48 = v25;
  sub_100140278(&qword_1008DC530, &qword_1006D49A0);
  sub_100065FB4();
  sub_1005C1B3C();
  NavigationLink.init(destination:label:)();
  LOBYTE(v22) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v26 = v40;
  v27 = &v6[*(v41 + 44)];
  *v27 = v22;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = *(v7 + 16);
  v33 = v39;
  v32(v39, v20, v26);
  v34 = v42;
  sub_10001B104(v6, v42, &qword_1008F4B38, &qword_1006FCF50);
  v35 = v43;
  v32(v43, v33, v26);
  v36 = sub_100140278(&qword_1008F4B78, &unk_1006FCF98);
  sub_10001B104(v34, &v35[*(v36 + 48)], &qword_1008F4B38, &qword_1006FCF50);
  sub_10000EA04(v6, &qword_1008F4B38, &qword_1006FCF50);
  v37 = *(v7 + 8);
  v37(v44, v26);
  sub_10000EA04(v34, &qword_1008F4B38, &qword_1006FCF50);
  return (v37)(v33, v26);
}

uint64_t sub_1005C0FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PauseRingsPeriod();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  (*(v7 + 16))(&v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6, v9);
  v10 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a2 + 32);
  *(v11 + 64) = *(a2 + 48);
  (*(v7 + 32))(v11 + v10, &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v24 = a1;
  sub_1003C072C(a2, v25);
  sub_100140278(&qword_1008DC530, &qword_1006D49A0);
  sub_100065FB4();
  Button.init(action:label:)();
  LOBYTE(a2) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = sub_100140278(&qword_1008F4B58, &qword_1006FCF90);
  v22 = a3 + *(result + 36);
  *v22 = a2;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_1005C11F8()
{
  v1 = v0;
  v2 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  PauseRingsPeriod.date()();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v9 = sub_10000EA04(v4, &unk_1008F73A0, &unk_1006DB450);
    return (*(v0 + 16))(v9);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = *v0;
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v11 pauseRingsUntilDate:isa completionHandler:0];

    (*(v1 + 16))();
    return (*(v6 + 8))(v8, v5);
  }
}

__n128 sub_1005C13BC@<Q0>(uint64_t a1@<X8>)
{
  *&v11 = PauseRingsPeriod.localizedTitleForCurrentDate.getter();
  *(&v11 + 1) = v2;
  sub_10000FCBC();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 96) = v15;
  *(a1 + 112) = v16;
  *(a1 + 128) = v17;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  result = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  return result;
}

__n128 sub_1005C14AC@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PauseRingsPeriod();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  (*(v3 + 104))(v5, enum case for PauseRingsPeriod.custom(_:), v2);
  v6 = PauseRingsPeriod.localizedTitleForCurrentDate.getter();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v19 = v6;
  *(&v19 + 1) = v8;
  sub_10000FCBC();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  LOBYTE(v6) = v12;
  v14 = v13;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v14;
  v15 = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v15;
  *(a1 + 128) = v25;
  v16 = v20;
  *(a1 + 32) = v19;
  *(a1 + 48) = v16;
  result = v22;
  *(a1 + 64) = v21;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1005C1668(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100140278(&qword_1008DDE50, &qword_1006FCDD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.topBarLeading.getter();
  v9 = a1;
  sub_100140278(&qword_1008DDE58, &qword_1006D7410);
  sub_10014A6B0(&qword_1008DDE60, &qword_1008DDE58, &qword_1006D7410, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  sub_10014A6B0(&qword_1008DDE68, &qword_1008DDE50, &qword_1006FCDD0, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1005C1854(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_1003C072C(a1, v5);
  sub_100140278(&qword_1008DDE78, &unk_1006D7420);
  v5[0] = &type metadata for Text;
  v5[1] = &type metadata for Solarium;
  v5[2] = &type metadata for Image;
  v5[3] = &protocol witness table for Text;
  v5[4] = &protocol witness table for Solarium;
  v5[5] = &protocol witness table for Image;
  swift_getOpaqueTypeConformance2();
  return Button.init(action:label:)();
}

uint64_t sub_1005C1978()
{
  LocalizedStringKey.init(stringLiteral:)();
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3 & 1;
  Solarium.init()();
  View.staticIf<A, B>(_:then:)();
  sub_10004642C(v0, v2, v4);
}

uint64_t sub_1005C1ABC@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  v6 = *(v3 + 16);
  v5 = *(v3 + 32);
  v7 = *v3;
  *(v4 + 64) = *(v3 + 48);
  *(v4 + 16) = v7;
  *(v4 + 32) = v6;
  *(v4 + 48) = v5;
  *a1 = sub_1005C1CF8;
  a1[1] = v4;
  return sub_1003C072C(v3, v9);
}

unint64_t sub_1005C1B3C()
{
  result = qword_1008F4A50;
  if (!qword_1008F4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4A50);
  }

  return result;
}

unint64_t sub_1005C1B90()
{
  result = qword_1008F4A58;
  if (!qword_1008F4A58)
  {
    sub_100141EEC(&qword_1008F4A30, &qword_1006FCD68);
    sub_10014A6B0(&qword_1008F4A60, &qword_1008F4A68, &unk_1006FCD80, &protocol conformance descriptor for NavigationStack<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4A58);
  }

  return result;
}

uint64_t sub_1005C1C48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BACC;

  return sub_1005BF260();
}

unint64_t sub_1005C1D08()
{
  result = qword_1008F4A88;
  if (!qword_1008F4A88)
  {
    sub_100141EEC(&qword_1008F4A78, &qword_1006FCDB8);
    sub_10014A6B0(&qword_1008F4A90, &qword_1008F4A98, &qword_1006FCDC8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4A88);
  }

  return result;
}

uint64_t sub_1005C1E20@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1005C1EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1005C1F98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005C201C()
{
  result = qword_1008F4AF8;
  if (!qword_1008F4AF8)
  {
    sub_100141EEC(&qword_1008F4AD0, &qword_1006FCE48);
    sub_1005C20D4();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500, &qword_1006E1D10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4AF8);
  }

  return result;
}

unint64_t sub_1005C20D4()
{
  result = qword_1008F4B00;
  if (!qword_1008F4B00)
  {
    sub_100141EEC(&qword_1008F4B08, &qword_1006FCEA0);
    sub_10014A6B0(&qword_1008F4B10, &qword_1008F4B18, &qword_1006FCEA8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4B00);
  }

  return result;
}

unint64_t sub_1005C2184()
{
  result = qword_1008F4B20;
  if (!qword_1008F4B20)
  {
    sub_100141EEC(&qword_1008F4AD8, &qword_1006FCE50);
    sub_100141EEC(&qword_1008F4AD0, &qword_1006FCE48);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_1005C201C();
    sub_1005C22D0(&qword_1008DC548, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008F4B28, &qword_1008DC578, &qword_1006D49C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4B20);
  }

  return result;
}

uint64_t sub_1005C22D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005C2318()
{
  result = qword_1008F4B70;
  if (!qword_1008F4B70)
  {
    sub_100141EEC(&qword_1008F4B58, &qword_1006FCF90);
    sub_10014A6B0(&qword_1008DC540, &qword_1008DC520, &qword_1006D4990, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4B70);
  }

  return result;
}

unint64_t sub_1005C2438()
{
  result = qword_1008F4B80;
  if (!qword_1008F4B80)
  {
    sub_100141EEC(&qword_1008F4B88, qword_1006FCFA8);
    sub_1005C1B3C();
    sub_1005C1B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4B80);
  }

  return result;
}

uint64_t sub_1005C24C8()
{
  v1 = type metadata accessor for WalkSuggestionClient();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_1005C2584, 0, 0);
}

uint64_t sub_1005C2584()
{
  WalkSuggestionClient.init()();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1005C2620;

  return WalkSuggestionClient.activate()();
}

uint64_t sub_1005C2620()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_1005C2764;

  return WalkSuggestionClient.requestWalkSuggestion()();
}

uint64_t sub_1005C2764(uint64_t a1, char a2)
{
  v6 = *v3;
  *(v6 + 64) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1005C2A80, 0, 0);
  }

  else
  {
    *(v6 + 96) = a2;
    *(v6 + 72) = a1;
    v7 = swift_task_alloc();
    *(v6 + 80) = v7;
    *v7 = v6;
    v7[1] = sub_1005C28F0;

    return WalkSuggestionClient.invalidate()();
  }
}

uint64_t sub_1005C28F0()
{

  return _swift_task_switch(sub_1005C29EC, 0, 0);
}

uint64_t sub_1005C29EC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 96);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  if (v2)
  {
    v1 = 0;
  }

  v3 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4(v1, v3 & 1);
}

uint64_t sub_1005C2A80(uint64_t a1)
{
  v14 = v1;
  v2 = static os_log_type_t.error.getter();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v2))
  {
    v4 = v1[8];
    v5 = v3;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v1[2] = v4;
    swift_errorRetain();
    sub_100140278(&qword_1008EB640, &qword_1006D6730);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000AFDC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v2, "Failed to get walk suggestion %s", v6, 0xCu);
    sub_100005A40(v7);
  }

  v11 = swift_task_alloc();
  v1[11] = v11;
  *v11 = v1;
  v11[1] = sub_1005C2C28;

  return WalkSuggestionClient.invalidate()();
}

uint64_t sub_1005C2C28()
{

  return _swift_task_switch(sub_1005C2D24, 0, 0);
}

uint64_t sub_1005C2D24()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0, 1);
}

uint64_t sub_1005C2DCC(uint64_t a1)
{
  v1[27] = a1;
  v2 = type metadata accessor for DateInterval();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_1005C2F38, 0, 0);
}

uint64_t sub_1005C2F38(uint64_t a1)
{
  v115 = v1;
  v3 = *(v1 + 280);
  v2 = *(v1 + 288);
  v5 = *(v1 + 264);
  v4 = *(v1 + 272);
  v7 = *(v1 + 248);
  v6 = *(v1 + 256);
  v112 = *(v1 + 216);
  v8 = static os_log_type_t.default.getter();
  v9 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "[RecentWorkoutAppQuery] fetching recent workout apps", 52, 2, _swiftEmptyArrayStorage);

  Date.init()();
  Date.addingTimeInterval(_:)();
  v10 = *(v6 + 16);
  v10(v4, v3, v7);
  v10(v5, v2, v7);
  DateInterval.init(start:end:)();
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v12 = [v112 workoutsEndingInDateInterval:isa];

  sub_100289C9C();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v114[0] = sub_100474744(v13);
  sub_1005C3D8C(v114);

  v14 = v114[0];
  v15 = static os_log_type_t.default.getter();
  v16 = HKLogActivity;
  v108 = v14;
  if (os_log_type_enabled(HKLogActivity, v15))
  {
    v17 = v16;

    v18 = swift_slowAlloc();
    *v18 = 134217984;
    v19 = v14 & 0x4000000000000000;
    if (v14 < 0 || v19)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *(v14 + 16);
    }

    *(v18 + 4) = v20;

    _os_log_impl(&_mh_execute_header, v17, v15, "[RecentWorkoutAppQuery] Found %ld recent workouts", v18, 0xCu);
  }

  else
  {
    v19 = v14 & 0x4000000000000000;
  }

  *(v1 + 200) = _swiftEmptyArrayStorage;
  v21 = [objc_opt_self() hiddenAppBundleIdentifiers];
  v113 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 < 0 || v19)
  {
    goto LABEL_53;
  }

  v23 = v14;
  for (i = *(v14 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v25 = 0;
    v103 = (v1 + 80);
    v26 = v23 & 0xC000000000000001;
    *&v22 = 136315394;
    v102 = v22;
    v107 = _swiftEmptyArrayStorage;
    v109 = v23 & 0xC000000000000001;
    v110 = i;
    while (v26)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_51;
      }

LABEL_19:
      v29 = v27;
      v30 = [v29 sourceRevision];
      v31 = [v30 source];

      LOBYTE(v30) = [v31 _hasFirstPartyBundleID];
      if (v30)
      {
      }

      else
      {
        v32 = [v29 sourceRevision];
        v33 = [v32 productType];

        if (v33 && (v34 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v36 = v35, v33, *(v1 + 168) = v34, *(v1 + 176) = v36, *(v1 + 184) = 0x6863746157, *(v1 + 192) = 0xE500000000000000, sub_10000FCBC(), v37 = StringProtocol.contains<A>(_:)(), , (v37 & 1) != 0) && (v38 = [v29 sourceRevision], v39 = objc_msgSend(v38, "source"), v38, v40 = objc_msgSend(v39, "bundleIdentifier"), v39, v41 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v43 = v42, v40, sub_1005C4EE8(v41, v43), v45 = v44, v47 = v46, , v47))
        {
        }

        else
        {
          v48 = [v29 sourceRevision];

          v49 = [v48 source];
          v50 = [v49 bundleIdentifier];

          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v51;
        }

        v52 = sub_1003A5CE8(v45, v47, v113);

        if (v52)
        {

          v53 = static os_log_type_t.debug.getter();
          v54 = HKLogActivity;
          os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v54, "[RecentWorkoutAppQuery] Suppressing a hidden app from list of recommended workout apps.", 87, 2, _swiftEmptyArrayStorage);

LABEL_37:
          v26 = v109;
          i = v110;
          goto LABEL_12;
        }

        v55 = objc_allocWithZone(LSApplicationRecord);
        v56 = String._bridgeToObjectiveC()();
        *(v1 + 208) = 0;
        v57 = [v55 initWithBundleIdentifier:v56 allowPlaceholder:0 error:v1 + 208];

        v58 = *(v1 + 208);
        if (!v57)
        {
          v70 = v58;
          _convertNSErrorToError(_:)();

          swift_willThrow();

LABEL_33:
          v71 = static os_log_type_t.error.getter();
          v72 = HKLogActivity;
          if (os_log_type_enabled(HKLogActivity, v71))
          {
            v73 = v72;
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v114[0] = v75;
            *v74 = 136315138;
            v76 = sub_10000AFDC(v45, v47, v114);

            *(v74 + 4) = v76;
            _os_log_impl(&_mh_execute_header, v73, v71, "[RecentWorkoutAppQuery] Found workout with %s but app is not installed on device, skipping.", v74, 0xCu);
            sub_100005A40(v75);
          }

          else
          {
          }

          v23 = v108;
          goto LABEL_37;
        }

        v59 = v58;
        v60 = [v57 applicationState];
        v61 = [v60 isInstalled];

        if ((v61 & 1) == 0)
        {

          goto LABEL_33;
        }

        v62 = [v57 localizedName];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v64;
        log = v63;

        v65 = [v57 teamIdentifier];
        if (v65)
        {
          v66 = v65;
          v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v69 = v68;
        }

        else
        {
          v67 = 0;
          v69 = 0xE000000000000000;
        }

        *(v1 + 16) = log;
        *(v1 + 24) = v104;
        *(v1 + 32) = v45;
        *(v1 + 40) = v47;
        *(v1 + 48) = v67;
        *(v1 + 56) = v69;
        *(v1 + 64) = 0;
        *(v1 + 72) = 1;
        v77 = *(v1 + 32);
        *v103 = *(v1 + 16);
        *(v1 + 96) = v77;
        *(v1 + 112) = *(v1 + 48);
        *(v1 + 121) = *(v1 + 57);
        v78 = swift_task_alloc();
        *(v78 + 16) = v103;

        v79 = sub_1003222A0(sub_1005C4E90, v78, v107);

        if (v79)
        {

          sub_100324274(v1 + 16);
        }

        else
        {
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_1001A3874(0, *(v107 + 2) + 1, 1, v107);
          }

          v81 = *(v107 + 2);
          v80 = *(v107 + 3);
          if (v81 >= v80 >> 1)
          {
            v107 = sub_1001A3874((v80 > 1), v81 + 1, 1, v107);
          }

          *(v107 + 2) = v81 + 1;
          v82 = &v107[64 * v81];
          v83 = *(v1 + 16);
          v84 = *(v1 + 32);
          v85 = *(v1 + 48);
          *(v82 + 73) = *(v1 + 57);
          *(v82 + 3) = v84;
          *(v82 + 4) = v85;
          *(v82 + 2) = v83;
          *(v1 + 200) = v107;
          swift_endAccess();
          v86 = static os_log_type_t.debug.getter();
          v87 = HKLogActivity;
          if (os_log_type_enabled(HKLogActivity, v86))
          {
            loga = v87;
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v114[0] = v89;
            *v88 = v102;
            v90 = sub_10000AFDC(v45, v47, v114);

            *(v88 + 4) = v90;
            *(v88 + 12) = 2048;
            *(v88 + 14) = *(v107 + 2);
            _os_log_impl(&_mh_execute_header, loga, v86, "[RecentWorkoutAppQuery] Added %s to list of recommended workout apps [%ld/4].", v88, 0x16u);
            sub_100005A40(v89);
          }

          else
          {
          }
        }

        v26 = v109;
        i = v110;
        v23 = v108;
        if (*(v107 + 2) >= 4uLL)
        {

          goto LABEL_55;
        }
      }

LABEL_12:
      ++v25;
      if (v28 == i)
      {
        goto LABEL_54;
      }
    }

    if (v25 >= *(v23 + 16))
    {
      goto LABEL_52;
    }

    v27 = *(v23 + 8 * v25 + 32);
    v28 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      goto LABEL_19;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v23 = v108;
  }

LABEL_54:

LABEL_55:
  v92 = *(v1 + 280);
  v91 = *(v1 + 288);
  v93 = *(v1 + 248);
  v94 = *(v1 + 256);
  v95 = *(v1 + 232);
  v96 = *(v1 + 240);
  v97 = *(v1 + 224);

  v111 = sub_1001A01B8(v98);

  (*(v95 + 8))(v96, v97);
  v99 = *(v94 + 8);
  v99(v92, v93);
  v99(v91, v93);

  v100 = *(v1 + 8);

  return v100(v111);
}

void sub_1005C3B30(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = [a1 counterpartIdentifiers];
  if (v8)
  {
    v9 = v8;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v27[0] = a2;
    v27[1] = a3;
    __chkstk_darwin(v11);
    v24[2] = v27;
    LOBYTE(v9) = sub_100321EE0(sub_1005C51A4, v24, v10);

    if (v9)
    {
      v12 = [a1 bundleIdentifier];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        swift_beginAccess();
        *(a4 + 16) = v14;
        *(a4 + 24) = v16;

        v17 = static os_log_type_t.debug.getter();
        v18 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, v17))
        {
          v19 = v18;
          v20 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *v20 = 136315394;
          *(v20 + 4) = sub_10000AFDC(a2, a3, &v26);
          *(v20 + 12) = 2080;
          swift_beginAccess();
          v25 = *(a4 + 16);
          sub_100140278(&qword_1008DC8F8, &qword_1006D50B0);
          v21 = Optional.description.getter();
          v23 = sub_10000AFDC(v21, v22, &v26);

          *(v20 + 14) = v23;
          _os_log_impl(&_mh_execute_header, v19, v17, "[RecentWorkoutAppQuery] Found companion bundle ID for %s => %s.", v20, 0x16u);
          swift_arrayDestroy();
        }
      }
    }
  }
}

uint64_t sub_1005C3D8C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001AB738(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1005C3E08(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1005C3E08(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100289C9C();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1005C412C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1005C3F0C(0, v2, 1, a1);
  }
}

void sub_1005C3F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for Date();
  __chkstk_darwin(v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = [v20 startDate];
      v23 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v22) = static Date.> infix(_:_:)();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1005C412C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = type metadata accessor for Date();
  __chkstk_darwin(v125);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_1001A99A4(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_1005C499C((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1001A99A4(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        *(v109 + 1) = v108;
        v126 = v107;
        sub_1001A9918(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 startDate];
      v24 = v123;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = [v22 startDate];
      v26 = v124;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v121) = static Date.> infix(_:_:)();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 startDate];
        v34 = v123;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = [v32 startDate];
        v36 = v124;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v35) = static Date.> infix(_:_:)() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_1001A1D54(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_1001A1D54((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_1005C499C((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1001A99A4(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_1001A9918(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 startDate];
    v53 = v123;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = [v51 startDate];
    v55 = v124;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v54) = static Date.> infix(_:_:)();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1005C499C(id *a1, id *a2, id *a3, void **a4)
{
  v56 = type metadata accessor for Date();
  v8 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 startDate];
        v41 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = [v39 startDate];
        v43 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v42) = static Date.> infix(_:_:)();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 startDate];
        v21 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = [v19 startDate];
        v23 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v22) = static Date.> infix(_:_:)();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

uint64_t sub_1005C4E38(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1005C4E90(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 16) == *(v2 + 16) && *(a1 + 24) == *(v2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_1005C4EE8(uint64_t a1, unint64_t a2)
{
  v4 = static os_log_type_t.debug.getter();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v4))
  {
    v6 = v5;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000AFDC(a1, a2, v15);
    _os_log_impl(&_mh_execute_header, v6, v4, "[RecentWorkoutAppQuery] Looking for companion bundle ID for %s.", v7, 0xCu);
    sub_100005A40(v8);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v10 = [objc_opt_self() enumeratorWithOptions:0];
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1005C5198;
  *(v12 + 24) = v11;
  v15[4] = sub_1002F3F08;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1002F1408;
  v15[3] = &unk_100862540;
  v13 = _Block_copy(v15);

  [v10 swift_forEach:v13];

  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
  }
}

uint64_t sub_1005C51A4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_1005C520C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_rootViewController);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v23.origin.x = v5;
    v23.origin.y = v7;
    v23.size.width = v9;
    v23.size.height = v11;
    CGRectGetWidth(v23);
    v12 = *(v0 + OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_imageScrollView);
    [v12 adjustedContentInset];
    [v12 adjustedContentInset];
    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v24.origin.x = v16;
      v24.origin.y = v18;
      v24.size.width = v20;
      v24.size.height = v22;
      CGRectGetHeight(v24);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *sub_1005C5350(void *a1, char *a2, uint64_t a3)
{
  v32 = a1;
  v33 = a3;
  v5 = type metadata accessor for SeymourArtworkSizingBehavior(0);
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_rootViewController;
  *&v3[v8] = [objc_allocWithZone(UIViewController) init];
  v9 = OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_imageScrollView;
  v10 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v10 setPagingEnabled:1];
  [v10 setShowsHorizontalScrollIndicator:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v9] = v10;
  *&v3[OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_imageCount] = 0;
  v11 = *&v3[v8];
  v12 = type metadata accessor for WorkoutDetailGuidedRunMMGalleryViewController();
  v34.receiver = v3;
  v34.super_class = v12;
  v13 = objc_msgSendSuper2(&v34, "initWithRootViewController:", v11);
  v14 = OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_rootViewController;
  v15 = *&v13[OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_rootViewController];
  v16 = v13;
  result = [v15 view];
  if (result)
  {
    v18 = result;
    v19 = [objc_opt_self() systemBackgroundColor];
    [v18 setBackgroundColor:v19];

    v20 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v16 action:"doneButtonTapped"];
    v21 = [*&v13[v14] navigationItem];
    [v21 setRightBarButtonItem:v20];

    v22 = OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_imageScrollView;
    [*&v16[OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_imageScrollView] setDelegate:v16];
    result = [*&v13[v14] view];
    if (result)
    {
      v23 = result;
      [result addSubview:*&v16[v22]];

      sub_1005C56C8();
      v24 = *(sub_100140278(&unk_1008F4BD0, &qword_1006F0770) + 48);
      sub_1005C520C();
      *v7 = v25;
      *(v7 + 1) = v26;
      v27 = enum case for ArtworkDimension.width(_:);
      v28 = type metadata accessor for ArtworkDimension();
      (*(*(v28 - 8) + 104))(&v7[v24], v27, v28);
      swift_storeEnumTagMultiPayload();
      v29 = *&a2[OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider];
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = v32;
      sub_10042A49C(v31, v7, v29, v31, v30, v33);

      sub_100441534(v7);

      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1005C56C8()
{
  sub_100140278(&unk_1008E4E20, &qword_1006D5040);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D5300;
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_imageScrollView);
  v3 = [v2 topAnchor];
  v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_rootViewController);
  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 layoutMarginsGuide];

  v8 = [v7 topAnchor];
  v9 = [v3 constraintEqualToAnchor:v8];

  *(v1 + 32) = v9;
  v10 = [v2 leadingAnchor];
  v11 = [v4 view];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = [v10 constraintEqualToAnchor:v13];
  *(v1 + 40) = v14;
  v15 = [v2 trailingAnchor];
  v16 = [v4 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 trailingAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  *(v1 + 48) = v19;
  v20 = [v2 bottomAnchor];
  v21 = [v4 view];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = objc_opt_self();
  v24 = [v22 layoutMarginsGuide];

  v25 = [v24 bottomAnchor];
  v26 = [v20 constraintEqualToAnchor:v25];

  *(v1 + 56) = v26;
  sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];
}

void sub_1005C59F4(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (a1 >> 62)
      {
        v16 = Strong;
        v7 = _CocoaArrayWrapper.endIndex.getter();
        Strong = v16;
      }

      else
      {
        v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *&Strong[OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_imageCount] = v7;
    }

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      sub_1005C5BD4(a1, a4);
    }
  }

  else
  {
    v11 = static os_log_type_t.error.getter();
    v12 = HKLogActivity;
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1006D1F70;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_10000A788();
    *(v13 + 32) = 0xD000000000000039;
    *(v13 + 40) = 0x800000010075CD80;
    *(v13 + 96) = sub_1000059F8(0, &qword_1008ED7C0, HKWorkout_ptr);
    *(v13 + 104) = sub_1001ED4D4();
    *(v13 + 72) = a2;
    v14 = v12;
    v15 = a2;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v14, "%@ failed to load guided run media moment artwork items for workout: %@", 71, 2, v13);
  }
}

id sub_1005C5BD4(unint64_t a1, uint64_t a2)
{
  v3 = a2;
  sub_1005C60C0(a2);
  v5 = *(v2 + OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_rootViewController);
  result = [v5 view];
  if (result)
  {
    v7 = result;
    [result frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v54.origin.x = v9;
    v54.origin.y = v11;
    v54.size.width = v13;
    v54.size.height = v15;
    Width = CGRectGetWidth(v54);
    if (a1 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v18 = *(v2 + OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_imageScrollView);
      [v18 bounds];
      [v18 setContentSize:{Width * i, CGRectGetHeight(v55)}];
      [v18 setContentOffset:0 animated:{Width * v3, 0.0}];
      v2 = _swiftEmptyArrayStorage;
      if (i)
      {
        result = specialized ContiguousArray.reserveCapacity(_:)();
        if (i < 0)
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          break;
        }

        v3 = objc_opt_self();
        v19 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v20 = *(a1 + 8 * v19 + 32);
          }

          v21 = v20;
          ++v19;
          v22 = [objc_allocWithZone(UIImageView) initWithImage:v20];
          v23 = UIView.withContentMode(_:)();

          v24 = [v23 layer];
          [v24 setCornerRadius:6.0];

          [v23 setClipsToBounds:1];
          v25 = [v3 redColor];
          [v23 setBackgroundColor:v25];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (i != v19);
        v2 = _swiftEmptyArrayStorage;
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
        if (!a1)
        {
LABEL_29:
        }
      }

      else
      {
        a1 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a1)
        {
          goto LABEL_29;
        }
      }

      v26 = 0;
      while (1)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v27 = _swiftEmptyArrayStorage[v26 + 4];
        }

        v3 = v27;
        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        result = [v5 view];
        if (!result)
        {
          goto LABEL_33;
        }

        v29 = result;
        [result bounds];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;

        v56.origin.x = v31;
        v56.origin.y = v33;
        v56.size.width = v35;
        v56.size.height = v37;
        v38 = CGRectGetWidth(v56);
        [v18 adjustedContentInset];
        [v18 adjustedContentInset];
        result = [v5 view];
        if (!result)
        {
          goto LABEL_34;
        }

        v39 = result;
        [result bounds];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;

        v57.origin.x = v41;
        v57.origin.y = v43;
        v57.size.width = v45;
        v57.size.height = v47;
        result = [v5 view];
        if (!result)
        {
          goto LABEL_35;
        }

        v48 = result;
        [result center];
        v50 = v49;

        v3 = v3;
        [v3 intrinsicContentSize];
        v52 = v51;
        [v18 bounds];
        [v3 setFrame:{Width * v26 + v50 - (v38 + -50.0) * 0.5, CGRectGetHeight(v58) * 0.5 - v52 * 0.5, v38 + -50.0, v52}];

        [v18 addSubview:v3];
        ++v26;
        if (v28 == a1)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }
  }

  __break(1u);
  return result;
}

void sub_1005C60C0(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [objc_allocWithZone(NSNumber) initWithInteger:v3];
    v6 = [v4 stringWithNumber:v5 decimalPrecision:1];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
    }

    else
    {
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v10;
    }

    v11 = [objc_allocWithZone(NSNumber) initWithInteger:*(v2 + OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_imageCount)];
    v12 = [v4 stringWithNumber:v11 decimalPrecision:1];

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v16;
    }

    v17 = *(v2 + OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_rootViewController);
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1006D1F70;
    *(v18 + 56) = &type metadata for String;
    v19 = sub_10000A788();
    *(v18 + 32) = v7;
    *(v18 + 40) = v9;
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v19;
    *(v18 + 64) = v19;
    *(v18 + 72) = v13;
    *(v18 + 80) = v15;
    String.init(format:_:)();
    v20 = String._bridgeToObjectiveC()();

    [v17 setTitle:v20];
  }
}

void sub_1005C6318(void *a1)
{
  [a1 contentOffset];
  v3 = v2;
  [a1 frame];
  v5 = v3 / v4;
  if (COERCE__INT64(fabs(v3 / v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_1005C60C0(v5);
}

id sub_1005C64B4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutDetailGuidedRunMMGalleryViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1005C6558()
{
  v1 = OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_rootViewController;
  *(v0 + v1) = [objc_allocWithZone(UIViewController) init];
  v2 = OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_imageScrollView;
  v3 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setPagingEnabled:1];
  [v3 setShowsHorizontalScrollIndicator:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC10FitnessApp45WorkoutDetailGuidedRunMMGalleryViewController_imageCount) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005C665C(double a1)
{
  v2 = *(v1 + 8);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 32);
    if (v4 > a1)
    {
      return;
    }

    v5 = *(v1 + 16);
    v6 = v5 * v3;
    if (v4 + v6 <= a1)
    {
      return;
    }
  }

  else
  {
    if (a1 < 0.0)
    {
      return;
    }

    v5 = *(v1 + 16);
    v4 = 0.0;
    v6 = v5 * 0.0;
    if (v5 * 0.0 <= a1)
    {
      return;
    }
  }

  if (v5 == 0.0)
  {
LABEL_19:
    __break(1u);
  }

  else
  {
    v7 = v6 + v4;
    v8 = -1;
    v9 = v4;
    do
    {
      if (v5 <= 0.0 ? v9 <= v7 : v7 <= v9)
      {
        break;
      }

      if (__OFADD__(v8 + 1, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      v11 = v9 < a1;
      v9 = v4 + (v8 + 2) * v5;
      ++v8;
    }

    while (v11);
  }
}

uint64_t sub_1005C671C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TimeZone();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricChartData(0);
  type metadata accessor for MetricDetailViewModel(0);
  static TimeZone.current.getter();
  v6 = Date.isSameDay(as:timeZone:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

void sub_1005C682C(uint64_t a1)
{
  sub_1005C6960(319, &qword_1008DC720, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MetricCard(319);
    if (v2 <= 0x3F)
    {
      sub_10005C6EC(319);
      if (v3 <= 0x3F)
      {
        sub_1005C6960(319, &unk_1008F4C68, type metadata accessor for MetricChartData, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MetricFormattingHelper(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1005C6960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1005C6A08(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v5 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *a2, v8, v10);
  v13 = enum case for Font.Design.rounded(_:);
  v14 = type metadata accessor for Font.Design();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v7, v13, v14);
  (*(v15 + 56))(v7, 0, 1, v14);
  static Font.Weight.medium.getter();
  v16 = static Font.system(_:design:weight:)();
  sub_10000EA04(v7, &qword_1008DC448, &qword_1006D48C0);
  result = (*(v9 + 8))(v12, v8);
  *a3 = v16;
  return result;
}

uint64_t sub_1005C6C04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100140278(&unk_1008EAF50, qword_1006D4790);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for MetricFormattingHelper(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetricCardView(0);
  sub_100060ED0(v1 + v9[9], v8, type metadata accessor for MetricFormattingHelper);
  sub_10001B104(v1 + v9[8], v5, &unk_1008EAF50, qword_1006D4790);
  v10 = type metadata accessor for MetricChartData(0);
  if ((*(*(v10 - 8) + 48))(v5, 1, v10) == 1)
  {
    sub_10000EA04(v5, &unk_1008EAF50, qword_1006D4790);
    v11 = 0;
  }

  else
  {
    v11 = *&v5[*(v10 + 24)];
    sub_1000611CC(v5, type metadata accessor for MetricChartData);
  }

  v12 = *(v1 + v9[6]);
  if (qword_1008DAEC0 != -1)
  {
    v14 = *(v1 + v9[6]);
    swift_once();
    v12 = v14;
  }

  sub_10005C9EC(v11, v12, qword_1008F4BF8, 1, 0, 1, 0, a1);

  return sub_1000611CC(v8, type metadata accessor for MetricFormattingHelper);
}

unint64_t sub_1005C6E3C()
{
  result = qword_1008F4CC8;
  if (!qword_1008F4CC8)
  {
    sub_100141EEC(&qword_1008F4CA8, &qword_1006FD1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4CC8);
  }

  return result;
}

uint64_t sub_1005C6EA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x77654E7374616857;
  }

  else
  {
    v3 = 0x6F72746E49;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x77654E7374616857;
  }

  else
  {
    v5 = 0x6F72746E49;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1005C6F44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005C6FC4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1005C7030(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005C70AC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100846218, *a1);

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

void sub_1005C710C(uint64_t *a1@<X8>)
{
  v2 = 0x6F72746E49;
  if (*v1)
  {
    v2 = 0x77654E7374616857;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1005C7148()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008DC990, &unk_1006FD480);
  __chkstk_darwin(v2 - 8);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v36 - v5;
  v6 = type metadata accessor for PrivacyIdentifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DiscoverySheetViewController(0);
  v40.receiver = v1;
  v40.super_class = v10;
  objc_msgSendSuper2(&v40, "viewDidLoad");
  v11 = [v1 buttonTray];
  sub_100140278(&qword_1008DCF58, &qword_1006D7B40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006D46C0;
  (*(v7 + 104))(v9, enum case for PrivacyIdentifier.fitnessPlus(_:), v6);
  v13 = PrivacyIdentifier.rawValue.getter();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 setPrivacyLinkForBundles:isa];

  v17 = *&v1[OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_dataModel + 24];
  v18 = *(v17 + 16);
  if (v18)
  {
    v39 = objc_opt_self();
    v19 = v17 + 72;
    do
    {

      v20 = String._bridgeToObjectiveC()();
      v21 = [v39 smm_systemImageNamed:v20];

      v22 = String._bridgeToObjectiveC()();
      v23 = String._bridgeToObjectiveC()();

      [v1 addBulletedListItemWithTitle:v22 description:v23 image:v21];

      v19 += 48;
      --v18;
    }

    while (v18);
  }

  v24 = [objc_opt_self() boldButton];
  [v24 addTarget:v1 action:"didTapContinueButton" forControlEvents:64];
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 mainBundle];
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 localizedStringForKey:v28 value:0 table:0];

  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  [v26 setTitle:v29 forState:0];
  v30 = v38;
  UIButton.configuration.getter();
  v31 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    sub_10015DEBC(v30, v37);
    UIButton.configuration.setter();

    sub_10000EA04(v30, &qword_1008DC990, &unk_1006FD480);
  }

  else
  {
    v32 = [objc_opt_self() blackColor];
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.configuration.setter();
  }

  v33 = [v1 buttonTray];
  [v33 addButton:v26];

  v34 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v1 action:"didTapXButton"];
  v35 = [v1 navigationItem];
  [v35 setRightBarButtonItem:v34 animated:0];
}

uint64_t sub_1005C7880(__n128 a1)
{
  v1 = type metadata accessor for MetricClickStreamOccurred();
  v2 = *(v1 - 8);
  v48 = v1;
  v49 = v2;
  __chkstk_darwin(v1);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricIdentifier();
  __chkstk_darwin(v4 - 8);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008E99E0, &unk_1006FD450);
  __chkstk_darwin(v6 - 8);
  v45 = &v43 - v7;
  v8 = sub_100140278(&qword_1008E99E8, &qword_1006EA4C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_100140278(&qword_1008E99F0, &unk_1006FD460);
  __chkstk_darwin(v11 - 8);
  v43 = &v43 - v12;
  v13 = sub_100140278(&qword_1008E99F8, &qword_1006EA4C8);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_100140278(&qword_1008E9A00, &unk_1006FD470);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = type metadata accessor for MetricClickStreamType();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for MetricClickStream();
  v23 = *(v44 - 8);
  __chkstk_darwin(v44);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v43 - v27;
  v29 = enum case for MetricNavigationDirection.none(_:);
  v30 = type metadata accessor for MetricNavigationDirection();
  (*(*(v30 - 8) + 104))(v22, v29, v30);
  (*(v20 + 104))(v22, enum case for MetricClickStreamType.page(_:), v19);
  v31 = OBJC_IVAR____TtC10FitnessApp28DiscoverySheetViewController_metricPage;
  v32 = type metadata accessor for MetricPage();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v18, v50 + v31, v32);
  (*(v33 + 56))(v18, 0, 1, v32);
  v34 = type metadata accessor for MetricBadgingCounts();
  (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
  v35 = type metadata accessor for MetricGroupActivity();
  (*(*(v35 - 8) + 56))(v43, 1, 1, v35);
  static MetricEnvironment.current()();
  v36 = type metadata accessor for MetricEnvironment();
  (*(*(v36 - 8) + 56))(v10, 0, 1, v36);
  v37 = sub_100140278(&qword_1008E9A18, &qword_1006EA4E8);
  (*(*(v37 - 8) + 56))(v45, 1, 1, v37);
  v38 = type metadata accessor for MetricRemoteIdentifier();
  (*(*(v38 - 8) + 56))(v46, 1, 1, v38);
  MetricClickStream.init(type:page:identifier:badgingCounts:groupActivity:environment:remoteParticipantDeviceType:topicRoutingBehavior:metadata:)();
  v39 = v44;
  (*(v23 + 16))(v25, v28, v44);
  v40 = v47;
  MetricClickStreamOccurred.init(_:)();
  swift_getObjectType();
  sub_1005C8580(&qword_1008ED0E0, &type metadata accessor for MetricClickStreamOccurred, &protocol conformance descriptor for MetricClickStreamOccurred);
  v41 = v48;
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  (*(v49 + 8))(v40, v41);
  return (*(v23 + 8))(v28, v39);
}

uint64_t sub_1005C7FB4(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a2;
  v19[2] = a3;
  v5 = sub_100140278(&unk_1008E4DA0, &unk_1006E3360);
  __chkstk_darwin(v5 - 8);
  v7 = v19 - v6;
  v8 = type metadata accessor for MetricClickElement();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MetricClickAction();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v3;
  (*(v13 + 104))(v16, *a1, v12, v14);
  (*(v9 + 104))(v11, enum case for MetricClickElement.button(_:), v8);
  v17 = type metadata accessor for MetricClickDestination();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  type metadata accessor for DiscoverySheetViewController(0);
  sub_1005C8580(&qword_1008F4D90, type metadata accessor for DiscoverySheetViewController, &unk_1006FD420);
  MetricClickPublishing.publishClick(actionType:targetType:targetIdentifier:targetIdentifierType:metricPage:locations:impressions:topicRoutingBehavior:)();
  sub_10000EA04(v7, &unk_1008E4DA0, &unk_1006E3360);
  (*(v9 + 8))(v11, v8);
  return (*(v13 + 8))(v16, v12);
}

id sub_1005C82F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiscoverySheetViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DiscoverySheetViewController(uint64_t a1)
{
  result = qword_1008F4D78;
  if (!qword_1008F4D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005C8428(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for MetricPage();
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

unint64_t sub_1005C84F4()
{
  result = qword_1008F4D88;
  if (!qword_1008F4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4D88);
  }

  return result;
}

uint64_t sub_1005C8580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005C85CC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v8 = &enum case for AAUIAwardsDataProviderSection.monthlyChallenge(_:);
      }

      else
      {
        v8 = &enum case for AAUIAwardsDataProviderSection.competitions(_:);
      }
    }

    else if (a1 == 4)
    {
      v8 = &enum case for AAUIAwardsDataProviderSection.fitnessPlus(_:);
    }

    else
    {
      v8 = &enum case for AAUIAwardsDataProviderSection.limitedEdtion(_:);
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v8 = &enum case for AAUIAwardsDataProviderSection.activity(_:);
    }

    else
    {
      v8 = &enum case for AAUIAwardsDataProviderSection.workouts(_:);
    }
  }

  else
  {
    if (!a1)
    {
      v3 = type metadata accessor for AAUIAwardsDataProviderSection();
      v4 = *(*(v3 - 8) + 56);
      v5 = v3;
      v6 = a2;
      v7 = 1;
      goto LABEL_17;
    }

    v8 = &enum case for AAUIAwardsDataProviderSection.goForIt(_:);
  }

  v9 = *v8;
  v10 = type metadata accessor for AAUIAwardsDataProviderSection();
  v12 = *(v10 - 8);
  (*(v12 + 104))(a2, v9, v10);
  v4 = *(v12 + 56);
  v6 = a2;
  v7 = 0;
  v5 = v10;
LABEL_17:

  return v4(v6, v7, 1, v5);
}

uint64_t sub_1005C875C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Calendar();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_100140278(&qword_1008DE590, &qword_1006D7D10);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for DateComponents();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 relevantEarnedInstance];
  if (!v21)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_7:
    v25 = &qword_1008DE590;
    v26 = &qword_1006D7D10;
    v27 = v15;
LABEL_8:
    sub_10000EA04(v27, v25, v26);
    return static Date.distantPast.getter();
  }

  v31 = v4;
  v22 = a2;
  v23 = v21;
  v24 = [v21 earnedDateComponents];

  if (v24)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v17 + 56))(v12, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(v12, 1, 1, v16);
  }

  sub_10003BE9C(v12, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  (*(v17 + 32))(v20, v15, v16);
  static Calendar.current.getter();
  Calendar.date(from:)();
  (*(v32 + 8))(v6, v31);
  (*(v17 + 8))(v20, v16);
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v9, 1, v29) == 1)
  {
    v25 = &unk_1008F73A0;
    v26 = &unk_1006DB450;
    v27 = v9;
    goto LABEL_8;
  }

  return (*(v30 + 32))(v22, v9, v29);
}

uint64_t sub_1005C8B74()
{
  v0 = sub_100140278(&qword_1008F4E70, &qword_1006FDAA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_100140278(&qword_1008F4E78, &qword_1006FDAA8);
  __chkstk_darwin(v4);
  v5 = sub_100140278(&qword_1008F4E68, &qword_1006FDA98);
  sub_100163368(v5, qword_100925F70);
  sub_10001AC90(v5, qword_100925F70);
  sub_10007151C();
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010075F0E0;
  v6._countAndFlagsBits = 0xD000000000000014;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  EntityURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

unint64_t sub_1005C8D78()
{
  result = qword_1008F4DA8;
  if (!qword_1008F4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4DA8);
  }

  return result;
}

uint64_t sub_1005C8DCC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAED0 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008F4E68, &qword_1006FDA98);
  v3 = sub_10001AC90(v2, qword_100925F70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1005C8E80(uint64_t a1)
{
  sub_1001D3A20();
  v2 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1005C8F54(uint64_t a1)
{
  v2 = sub_10007151C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1005C8FA0()
{
  v1 = sub_100140278(&qword_1008DDB78, &unk_1006E28C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_100140278(&qword_1008DD138, &qword_1006D5CC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = *(v0 + 8);
  v10 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
  v11 = [v10 titleForAchievement:v9];

  if (v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_100073DA0(v9);
  }

  LocalizedStringResource.init(stringLiteral:)();
  sub_1005CA540(v9);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1005C91EC(uint64_t a1)
{
  v2 = sub_10006E530();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1005C9238()
{
  v0 = sub_100140278(&qword_1008F4E58, &qword_1006FDA88);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_100140278(&qword_1008F4E60, &qword_1006FDA90);
  __chkstk_darwin(v4);
  v5 = sub_100140278(&qword_1008F4E50, &qword_1006FDA80);
  sub_100163368(v5, qword_100925F88);
  sub_10001AC90(v5, qword_100925F88);
  sub_10047CC8C();
  EnumURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010075F0E0;
  v6._countAndFlagsBits = 0xD000000000000014;
  EnumURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EnumURLRepresentation.StringInterpolation.Token.rawValue<A>(_:), v0);
  EnumURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  EnumURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EnumURLRepresentation.init(stringInterpolation:)();
}

uint64_t sub_1005C945C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100140278(&qword_1008DD138, &qword_1006D5CC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v10, a2);
  sub_10001AC90(v10, a2);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v9 + 56))(v7, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1005C95C8()
{
  v0 = sub_100140278(&qword_1008DDB78, &unk_1006E28C0);
  __chkstk_darwin(v0 - 8);
  v2 = v36 - v1;
  v3 = sub_100140278(&qword_1008DD138, &qword_1006D5CC0);
  __chkstk_darwin(v3 - 8);
  v5 = v36 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100140278(&qword_1008F4E48, &unk_1006FDA70);
  v8 = sub_100140278(&qword_1008EF978, &qword_1006F4908);
  v9 = *(v8 - 8);
  v44 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v38 = 8 * v44;
  v11 = swift_allocObject();
  v39 = v11;
  *(v11 + 16) = xmmword_1006D4140;
  v12 = v11 + v10;
  v37 = *(v8 + 48);
  v47 = v8;
  *(v11 + v10) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v48 = *(v7 + 56);
  v13 = v6;
  v48(v5, 1, 1, v6);
  v45 = v7 + 56;
  v41 = type metadata accessor for DisplayRepresentation.Image();
  v14 = *(v41 - 8);
  v15 = *(v14 + 56);
  v42 = v14 + 56;
  v43 = v15;
  v15(v2, 1, 1, v41);
  v46 = v12;
  v16 = v5;
  DisplayRepresentation.init(title:subtitle:image:)();
  v17 = v44;
  v37 = *(v8 + 48);
  *(v12 + v44) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v18 = v16;
  v19 = v48;
  v48(v16, 1, 1, v6);
  v20 = v41;
  v21 = v43;
  v43(v2, 1, 1, v41);
  DisplayRepresentation.init(title:subtitle:image:)();
  v36[1] = *(v47 + 48);
  v37 = 2 * v17;
  *(v46 + 2 * v17) = 2;
  LocalizedStringResource.init(stringLiteral:)();
  v40 = v6;
  v19(v18, 1, 1, v6);
  v21(v2, 1, 1, v20);
  v22 = v18;
  DisplayRepresentation.init(title:subtitle:image:)();
  v23 = v44;
  v24 = v46;
  v25 = v47;
  v26 = (v46 + v37 + v44);
  v37 = *(v47 + 48);
  *v26 = 3;
  LocalizedStringResource.init(stringLiteral:)();
  v48(v22, 1, 1, v13);
  v27 = v41;
  v43(v2, 1, 1, v41);
  DisplayRepresentation.init(title:subtitle:image:)();
  v37 = *(v25 + 48);
  *(v24 + 4 * v23) = 4;
  LocalizedStringResource.init(stringLiteral:)();
  v28 = v40;
  v29 = v48;
  v48(v22, 1, 1, v40);
  v30 = v43;
  v43(v2, 1, 1, v27);
  DisplayRepresentation.init(title:subtitle:image:)();
  v31 = v44;
  v37 = *(v47 + 48);
  *(v46 + 4 * v23 + v44) = 5;
  LocalizedStringResource.init(stringLiteral:)();
  v29(v22, 1, 1, v28);
  v30(v2, 1, 1, v27);
  DisplayRepresentation.init(title:subtitle:image:)();
  v32 = v46;
  v37 = *(v47 + 48);
  *(v46 + 6 * v31) = 6;
  LocalizedStringResource.init(stringLiteral:)();
  v33 = v40;
  v48(v22, 1, 1, v40);
  v30(v2, 1, 1, v27);
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v32 + v38 - v44) = 7;
  LocalizedStringResource.init(stringLiteral:)();
  v48(v22, 1, 1, v33);
  v30(v2, 1, 1, v41);
  DisplayRepresentation.init(title:subtitle:image:)();
  v34 = sub_1004CCE80(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100925FB8 = v34;
  return result;
}

unint64_t sub_1005C9D2C()
{
  result = qword_1008F4DE0;
  if (!qword_1008F4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4DE0);
  }

  return result;
}

uint64_t sub_1005C9D9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100074048(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1005C9DCC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  v5 = 0x800000010075C600;
  v6 = 0xD000000000000010;
  if (v2 != 6)
  {
    v6 = 0x74697465706D6F63;
    v5 = 0xEC000000736E6F69;
  }

  v7 = 0xEB0000000073756CLL;
  v8 = 0x507373656E746966;
  if (v2 != 4)
  {
    v8 = 0x45646574696D696CLL;
    v7 = 0xEE006E6F69746964;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7974697669746361;
  if (v2 != 2)
  {
    v9 = 0x7374756F6B726F77;
  }

  if (*v1)
  {
    v4 = 0x7449726F466F67;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1005C9EE8()
{
  result = qword_1008F4DE8;
  if (!qword_1008F4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4DE8);
  }

  return result;
}

unint64_t sub_1005C9F40()
{
  result = qword_1008F4DF0;
  if (!qword_1008F4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4DF0);
  }

  return result;
}

unint64_t sub_1005C9F98()
{
  result = qword_1008F4DF8;
  if (!qword_1008F4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4DF8);
  }

  return result;
}

unint64_t sub_1005C9FF4()
{
  result = qword_1008F4E00;
  if (!qword_1008F4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4E00);
  }

  return result;
}

uint64_t sub_1005CA048@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAED8 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008F4E50, &qword_1006FDA80);
  v3 = sub_10001AC90(v2, qword_100925F88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1005CA100()
{
  result = qword_1008F4E08;
  if (!qword_1008F4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4E08);
  }

  return result;
}

unint64_t sub_1005CA154()
{
  result = qword_1008F4E10;
  if (!qword_1008F4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4E10);
  }

  return result;
}

unint64_t sub_1005CA1AC()
{
  result = qword_1008F4E18;
  if (!qword_1008F4E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4E18);
  }

  return result;
}

uint64_t sub_1005CA200(uint64_t a1)
{
  sub_10047C050();
  v2 = URLRepresentableEnum.urlRepresentationParameter.getter();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1005CA2E0(uint64_t a1)
{
  v2 = sub_10047CC8C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1005CA330()
{
  result = qword_1008F4E20;
  if (!qword_1008F4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4E20);
  }

  return result;
}

unint64_t sub_1005CA388()
{
  result = qword_1008F4E28;
  if (!qword_1008F4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4E28);
  }

  return result;
}

unint64_t sub_1005CA3E0()
{
  result = qword_1008F4E30;
  if (!qword_1008F4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4E30);
  }

  return result;
}

double sub_1005CA434()
{
  if (qword_1008DAEE8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1005CA490(uint64_t a1)
{
  v2 = sub_1005CA1AC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1005CA540(void *a1)
{
  v2 = [a1 unearned];
  v3 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 unachievedShortDescriptionForAchievement:a1];
  }

  else
  {
    v5 = [v3 achievedShortDescriptionForAchievement:a1];
  }

  v6 = v5;

  if (!v6)
  {
    return 0;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = v7 == 0xD000000000000028 && 0x8000000100747FE0 == v9;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v7 == 0xD000000000000026 ? (v11 = 0x8000000100748010 == v9) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    return 0;
  }

  return v7;
}

Swift::Int sub_1005CA684()
{
  v1 = v0;
  Hasher.init()();
  v2 = type metadata accessor for MetricCard(0);
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = *(v3 + 16);
  sub_100035B30(*v3, *(v3 + 16));
  String.hash(into:)();

  if (!v5 || v5 == 2)
  {
    Hasher._combine(_:)(v4);
  }

  else if (v5 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(*(v1 + v2[6]));
  Hasher._combine(_:)(*(v1 + v2[7]));
  sub_100411FD0(v7);
  return Hasher.finalize()();
}

uint64_t sub_1005CA780(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MetricDetailViewModel(319);
    if (v3 <= 0x3F)
    {
      result = sub_10046440C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1005CA850(uint64_t a1, uint64_t *a2)
{
  v29 = a2;
  v25 = type metadata accessor for CatalogModality();
  __chkstk_darwin(v25);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v24 = (v3 + 8);
    v27 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v7;
      while (1)
      {
        if (v8 >= v6)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        type metadata accessor for CatalogWorkout();
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_26;
        }

        CatalogWorkout.modality.getter();
        v9 = CatalogModality.name.getter();
        v11 = v10;
        (*v24)(v5, v25);
        v12 = *v29;
        if (!*(*v29 + 16))
        {
          break;
        }

        Hasher.init(_seed:)();

        String.hash(into:)();
        v13 = Hasher._finalize()();
        v14 = -1 << *(v12 + 32);
        v15 = v13 & ~v14;
        if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
LABEL_16:

          break;
        }

        v16 = ~v14;
        while (1)
        {
          v17 = (*(v12 + 48) + 16 * v15);
          v18 = *v17 == v9 && v17[1] == v11;
          if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v8 = v7;
        if (v7 == v6)
        {
          return;
        }
      }

      sub_1001A45BC(&v28, v9, v11);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_100042744(0, *(v27 + 2) + 1, 1, v27);
      }

      v20 = *(v27 + 2);
      v19 = *(v27 + 3);
      if (v20 >= v19 >> 1)
      {
        v27 = sub_100042744((v19 > 1), v20 + 1, 1, v27);
      }

      v21 = v27;
      *(v27 + 2) = v20 + 1;
      v22 = &v21[16 * v20];
      *(v22 + 4) = v9;
      *(v22 + 5) = v11;
    }

    while (v7 != v6);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }
}

unint64_t *sub_1005CAB84@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_1005CAC84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1005D285C();
  }
}

void sub_1005CACD8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1005D2B44();
  }
}

uint64_t sub_1005CAEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1005CB01C, 0, 0);
}

uint64_t sub_1005CB01C(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  static Log.default.getter();
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001007514B0;
  v6._object = 0x8000000100765AD0;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v5, v6);
  (*(v3 + 8))(v2, v4);
  v7 = swift_task_alloc();
  v1[11] = v7;
  *v7 = v1;
  v7[1] = sub_1005CB128;
  v8 = v1[3];

  return sub_100223BE0(v8);
}

uint64_t sub_1005CB128()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1005CB280, 0, 0);
  }
}

uint64_t sub_1005CB280()
{
  v1 = *(v0 + 56);
  sub_1005EB210(*(v0 + 32), v1);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *(v2 + 16) = "FitnessApp/FitnessAppContext.swift";
  *(v2 + 24) = 34;
  *(v2 + 32) = 2;
  *(v2 + 40) = 198;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1005CB3AC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_1005D5DF0, v2, &type metadata for () + 1);
}

uint64_t sub_1005CB3AC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1005CB56C;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = sub_1005CB4FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005CB4FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005CB56C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1005CB718(void *a1, __n128 a2)
{
  v22 = a1;
  v2 = type metadata accessor for NavigationAnnotation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v13._countAndFlagsBits = 0xD000000000000022;
  v13._object = 0x80000001007514B0;
  v14._object = 0x8000000100765A10;
  v14._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v13, v14);
  (*(v10 + 8))(v12, v9);
  sub_100140278(&unk_1008F2040, &qword_1006F8890);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1006D46C0;
  static NavigationAnnotation.external.getter();
  v23 = v15;
  sub_10000CEB8(&qword_1008F2370, &type metadata accessor for NavigationAnnotation, &protocol conformance descriptor for NavigationAnnotation);
  sub_100140278(&qword_1008F2020, &unk_1006F8878);
  sub_10014A6B0(&qword_1008F2380, &qword_1008F2020, &unk_1006F8878, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1005ED2BC(v22, v5, v8);
  (*(v3 + 8))(v5, v2);
  v16 = v21;
  v17 = Promise.operation.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v17(sub_100173F20, v18);

  return (*(v6 + 8))(v8, v16);
}

uint64_t sub_1005CBB48(void *a1, __n128 a2)
{
  v21 = a1;
  v2 = type metadata accessor for NavigationAnnotation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v13._countAndFlagsBits = 0xD000000000000022;
  v13._object = 0x80000001007514B0;
  v14._object = 0x80000001007659F0;
  v14._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v13, v14);
  (*(v10 + 8))(v12, v9);
  v22 = _swiftEmptyArrayStorage;
  sub_10000CEB8(&qword_1008F2370, &type metadata accessor for NavigationAnnotation, &protocol conformance descriptor for NavigationAnnotation);
  sub_100140278(&qword_1008F2020, &unk_1006F8878);
  sub_10014A6B0(&qword_1008F2380, &qword_1008F2020, &unk_1006F8878, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1005EE14C(v21, v5, v8);
  (*(v3 + 8))(v5, v2);
  v15 = v20;
  v16 = Promise.operation.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v16(sub_100173F20, v17);

  return (*(v6 + 8))(v8, v15);
}

uint64_t sub_1005CBF24(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  sub_100007C5C(a1, v18);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = v19;
    v11 = v20;
    sub_1000066AC(v18, v19);
    v12 = (*(v11 + 8))(v10, v11);
    v14 = v13;
    sub_100005A40(v18);
    v15 = sub_10000AFDC(v12, v14, &v17);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Navigating to Seymour catalog item %s", v8, 0xCu);
    sub_100005A40(v9);

    return (*(v3 + 8))(v5, v2);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    return sub_100005A40(v18);
  }
}

uint64_t sub_1005CC13C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  sub_100007C5C(a2, v23);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = v4;
    v11 = v10;
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    v22 = v2;
    v14 = v24;
    v13 = v25;
    sub_1000066AC(v23, v24);
    v15 = (*(v13 + 8))(v14, v13);
    v17 = v16;
    sub_100005A40(v23);
    v18 = sub_10000AFDC(v15, v17, &v26);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to navigate to Seymour catalog item %s", v11, 0xCu);
    sub_100005A40(v12);

    return (*(v5 + 8))(v7, v21);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return sub_100005A40(v23);
  }
}

uint64_t sub_1005CC368(uint64_t a1)
{
  v19[1] = a1;
  v1 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    static Log.default.getter();
    v15._countAndFlagsBits = 0x657461676976616ELL;
    v15._object = 0xEF293A6874697728;
    v16._object = 0x80000001007514B0;
    v16._countAndFlagsBits = 0xD000000000000022;
    Logger.trace(file:function:)(v16, v15);
    (*(v6 + 8))(v8, v5);
    sub_1000066AC((*(v19[0] + OBJC_IVAR___CHFitnessAppContext_navigator) + 48), *(*(v19[0] + OBJC_IVAR___CHFitnessAppContext_navigator) + 72));
    AppCoordinator.navigateToRequest(_:)();
    v17 = Promise.operation.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    v17(sub_100173F20, v18);

    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005CC6A0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v95 = a2;
  v96 = a1;
  v5 = type metadata accessor for NavigationAnnotation();
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationPriority();
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v83 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationRoutingBehavior();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v82 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NavigationSource();
  v75 = *(v13 - 8);
  __chkstk_darwin(v13);
  v87 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for NavigationIntent();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v79 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NavigationRequest();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v78 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for NavigationResource();
  v77 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v76 = (&v61 - v21);
  v72 = type metadata accessor for Logger();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100140278(&qword_1008EB280, &unk_1006ECE50);
  __chkstk_darwin(v23 - 8);
  v89 = &v61 - v24;
  v94 = type metadata accessor for Playlist();
  v25 = *(v94 - 8);
  __chkstk_darwin(v94);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v92 = &v61 - v29;
  __chkstk_darwin(v30);
  v88 = &v61 - v31;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v84 = Strong;
    v62 = v13;
    v63 = v11;
    v64 = v10;
    v65 = v17;
    v66 = v16;
    v67 = v7;
    v68 = v5;
    v69 = v4;
    v33 = *(v4 + OBJC_IVAR___CHFitnessAppContext_playlists);
    v34 = v33 + 56;
    v35 = 1 << *(v33 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v33 + 56);
    v38 = (v35 + 63) >> 6;
    v93 = (v25 + 32);
    v90 = v25 + 16;
    v91 = (v25 + 8);
    swift_bridgeObjectRetain_n();
    v39 = 0;
    v40 = v94;
    if (v37)
    {
      while (1)
      {
        v41 = v39;
LABEL_9:
        v42 = v33;
        v43 = *(v33 + 48) + *(v25 + 72) * (__clz(__rbit64(v37)) | (v41 << 6));
        v44 = v92;
        (*(v25 + 16))(v92, v43, v40);
        v45 = *(v25 + 32);
        v45(v27, v44, v40);
        if (Playlist.identifier.getter() == v96 && v46 == v95)
        {

          goto LABEL_17;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v47)
        {
          break;
        }

        v37 &= v37 - 1;
        v40 = v94;
        (*v91)(v27, v94);
        v39 = v41;
        v33 = v42;
        if (!v37)
        {
          goto LABEL_6;
        }
      }

      v40 = v94;
LABEL_17:
      v49 = v89;
      v45(v89, v27, v40);
      v48 = 0;
LABEL_18:
      (*(v25 + 56))(v49, v48, 1, v40);

      if ((*(v25 + 48))(v49, 1, v40) == 1)
      {
        swift_unknownObjectRelease();
        sub_10000EA04(v49, &qword_1008EB280, &unk_1006ECE50);
      }

      else
      {
        v50 = v88;
        (*v93)(v88, v49, v40);
        if ([v84 navigateToSeymourTab])
        {
          v51 = v70;
          static Log.default.getter();
          v52._countAndFlagsBits = 0xD000000000000022;
          v52._object = 0x80000001007514B0;
          v53._object = 0x80000001007659D0;
          v53._countAndFlagsBits = 0xD000000000000016;
          Logger.trace(file:function:)(v52, v53);
          (*(v71 + 8))(v51, v72);
          v54 = Playlist.identifier.getter();
          v55 = v76;
          *v76 = v54;
          v55[1] = v56;
          v57 = v77;
          v58 = v86;
          (*(v77 + 104))(v55, enum case for NavigationResource.playlist(_:), v86);
          (*(v57 + 16))(v85, v55, v58);
          v59 = v79;
          *v79 = 1;
          (*(v73 + 104))(v59, enum case for NavigationIntent.push(_:), v74);
          (*(v75 + 104))(v87, enum case for NavigationSource.default(_:), v62);
          (*(v63 + 104))(v82, enum case for NavigationRoutingBehavior.default(_:), v64);
          (*(v80 + 104))(v83, enum case for NavigationPriority.default(_:), v81);
          v97 = _swiftEmptyArrayStorage;
          sub_10000CEB8(&qword_1008F2370, &type metadata accessor for NavigationAnnotation, &protocol conformance descriptor for NavigationAnnotation);
          sub_100140278(&qword_1008F2020, &unk_1006F8878);
          sub_10014A6B0(&qword_1008F2380, &qword_1008F2020, &unk_1006F8878, &protocol conformance descriptor for [A]);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v60 = v78;
          NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
          sub_1005CC368(v60);
          swift_unknownObjectRelease();
          (*(v65 + 8))(v60, v66);
          (*(v57 + 8))(v55, v86);
          (*v91)(v88, v94);
        }

        else
        {
          (*v91)(v50, v40);
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v41 >= v38)
        {

          v48 = 1;
          v49 = v89;
          goto LABEL_18;
        }

        v37 = *(v34 + 8 * v41);
        ++v39;
        if (v37)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }
}

void *sub_1005CD1BC(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for FitnessPlusStackViewModel(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3 - 8);
  v46 = sub_100140278(&unk_1008F4FB0, "8a\v");
  v43 = *(v46 - 8);
  v5 = *(v43 + 64);
  __chkstk_darwin(v46);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v44 = &v37 - v10;
  CatalogWorkoutsRequest = type metadata accessor for FetchCatalogWorkoutsRequest();
  v42 = *(CatalogWorkoutsRequest - 8);
  __chkstk_darwin(CatalogWorkoutsRequest);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([result navigateToSeymourTab])
    {
      static Log.default.getter();
      v18._object = 0x80000001007514B0;
      v19._countAndFlagsBits = 0xD00000000000002ALL;
      v19._object = 0x80000001007659A0;
      v18._countAndFlagsBits = 0xD000000000000022;
      Logger.trace(file:function:)(v18, v19);
      (*(v14 + 8))(v16, v13);
      v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = v40;
      v21 = sub_1003743E0();
      sub_1001AA6D4(v21);

      v38 = v12;
      FetchCatalogWorkoutsRequest.init(identifiers:)();
      sub_1000066AC((v2 + OBJC_IVAR___CHFitnessAppContext_catalogClient), *(v2 + OBJC_IVAR___CHFitnessAppContext_catalogClient + 24));
      dispatch thunk of CatalogClientProtocol.fetchRemoteCatalogWorkouts(_:)();
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = v37;
      sub_1001AB4EC(v20, v37);
      v24 = (*(v39 + 80) + 24) & ~*(v39 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v22;
      sub_100306E28(v23, v25 + v24);
      v26 = swift_allocObject();
      *(v26 + 16) = sub_1005D53A0;
      *(v26 + 24) = v25;
      v27 = v43;
      v28 = v41;
      v29 = v46;
      (*(v43 + 16))(v41, v8, v46);
      v30 = (*(v27 + 80) + 16) & ~*(v27 + 80);
      v31 = swift_allocObject();
      (*(v27 + 32))(v31 + v30, v28, v29);
      v32 = (v31 + ((v5 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v32 = sub_1005D5420;
      v32[1] = v26;
      v33 = v44;
      Promise.init(asyncOperation:)();
      (*(v27 + 8))(v8, v29);
      v34 = v48;
      v35 = Promise.operation.getter();
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      v35(sub_100173F20, v36);
      swift_unknownObjectRelease();

      (*(v47 + 8))(v33, v34);
      return (*(v42 + 8))(v38, CatalogWorkoutsRequest);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_1005CD7C4(uint64_t *a1, uint64_t a2, size_t *a3, __n128 a4)
{
  v44 = a3;
  v57 = type metadata accessor for NavigationAnnotation();
  __chkstk_darwin(v57);
  v56 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for NavigationPriority();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationRoutingBehavior();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v49 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for NavigationSource();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for NavigationIntent();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for NavigationRequest();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NavigationResource();
  v14 = *(v13 - 1);
  __chkstk_darwin(v13);
  v60 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v19 = type metadata accessor for Playlist();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v35 - v24;
  v26 = *a1;
  swift_beginAccess();
  v58 = a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    sub_1005CDF38(v26, v44, v22);

    (*(v20 + 32))(v25, v22, v19);
    v37 = v20;
    v29 = *(v20 + 16);
    v36 = v25;
    v38 = v19;
    v29(v18, v25, v19);
    (*(v14 + 104))(v18, enum case for NavigationResource.unsavedPlaylist(_:), v13);
    v39 = v14;
    v30 = *(v14 + 16);
    v44 = v13;
    v30(v60, v18, v13);
    v31 = v45;
    *v45 = 1;
    (*(v40 + 104))(v31, enum case for NavigationIntent.push(_:), v41);
    (*(v42 + 104))(v46, enum case for NavigationSource.default(_:), v43);
    (*(v47 + 104))(v49, enum case for NavigationRoutingBehavior.default(_:), v48);
    (*(v53 + 104))(v51, enum case for NavigationPriority.default(_:), v55);
    v59 = _swiftEmptyArrayStorage;
    sub_10000CEB8(&qword_1008F2370, &type metadata accessor for NavigationAnnotation, &protocol conformance descriptor for NavigationAnnotation);
    sub_100140278(&qword_1008F2020, &unk_1006F8878);
    sub_10014A6B0(&qword_1008F2380, &qword_1008F2020, &unk_1006F8878, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v32 = v50;
    NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      sub_1005CC368(v32);
    }

    (*(v52 + 8))(v32, v54);
    (*(v39 + 8))(v18, v44);
    return (*(v37 + 8))(v36, v38);
  }

  return result;
}

uint64_t sub_1005CDF38@<X0>(uint64_t a1@<X0>, size_t *a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a2;
  v71[1] = a3;
  v4 = type metadata accessor for Date();
  __chkstk_darwin(v4 - 8);
  v71[0] = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100140278(&qword_1008F4FA8, &unk_1006FDBE8);
  __chkstk_darwin(v83);
  v82 = (v71 - v6);
  v87 = type metadata accessor for CatalogWorkout();
  v7 = *(v87 - 8);
  __chkstk_darwin(v87);
  v72 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75 = v71 - v10;
  __chkstk_darwin(v11);
  v13 = v71 - v12;
  __chkstk_darwin(v14);
  v16 = v71 - v15;
  v17 = sub_1004CBF80(_swiftEmptyArrayStorage);
  v18 = *(a1 + 16);
  v85 = v7;
  if (v18)
  {
    v80 = *(v7 + 16);
    v81 = (v7 + 16);
    v19 = (a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
    v20 = *(v7 + 72);
    v76 = (v7 + 8);
    v77 = v20;
    v73 = (v7 + 40);
    v74 = (v7 + 32);
    v78 = v13;
    v79 = v16;
    do
    {
      v86 = v18;
      v24 = v87;
      v25 = v80;
      v80(v16, v19, v87);
      v26 = CatalogWorkout.identifier.getter();
      v28 = v27;
      v25(v13, v16, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v17;
      v31 = sub_100066F20(v26, v28);
      v32 = v17[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        __break(1u);
        goto LABEL_34;
      }

      v35 = v30;
      if (v17[3] >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v30)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_100495114();
          if (v35)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_10048CD1C(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_100066F20(v26, v28);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_37;
        }

        v31 = v36;
        if (v35)
        {
LABEL_3:

          v17 = v89;
          v21 = v77;
          v22 = v89[7] + v31 * v77;
          v13 = v78;
          v23 = v87;
          (*v73)(v22, v78, v87);
          v16 = v79;
          (*v76)(v79, v23);
          goto LABEL_4;
        }
      }

      v17 = v89;
      v89[(v31 >> 6) + 8] |= 1 << v31;
      v38 = (v17[6] + 16 * v31);
      *v38 = v26;
      v38[1] = v28;
      v21 = v77;
      v39 = v17[7] + v31 * v77;
      v13 = v78;
      v40 = v87;
      (*v74)(v39, v78, v87);
      v16 = v79;
      (*v76)(v79, v40);
      v41 = v17[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_36;
      }

      v17[2] = v43;
LABEL_4:
      v19 += v21;
      v18 = v86 - 1;
    }

    while (v86 != 1);
  }

  v44 = sub_1003743E0();
  v45 = v44;
  v46 = *(v44 + 2);
  v47 = _swiftEmptyArrayStorage;
  if (v46)
  {
    v48 = 0;
    v80 = (v85 + 16);
    v81 = v44;
    v86 = v85 + 32;
    v49 = (v44 + 40);
    while (v48 < *(v45 + 2))
    {
      if (v17[2])
      {
        v50 = *(v49 - 1);
        v51 = *v49;

        v52 = sub_100066F20(v50, v51);
        if (v53)
        {
          v54 = v46;
          v55 = v85;
          v56 = *(v85 + 72);
          v57 = v72;
          v58 = v87;
          (*(v85 + 16))(v72, v17[7] + v56 * v52, v87);

          v59 = *(v55 + 32);
          v59(v75, v57, v58);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_1001A3338(0, *(v47 + 2) + 1, 1, v47);
          }

          v61 = *(v47 + 2);
          v60 = *(v47 + 3);
          v46 = v54;
          if (v61 >= v60 >> 1)
          {
            v47 = sub_1001A3338((v60 > 1), v61 + 1, 1, v47);
          }

          v45 = v81;
          *(v47 + 2) = v61 + 1;
          v59(&v47[((*(v85 + 80) + 32) & ~*(v85 + 80)) + v61 * v56], v75, v87);
        }

        else
        {
        }
      }

      ++v48;
      v49 += 2;
      if (v46 == v48)
      {
        goto LABEL_28;
      }
    }

LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_28:

    v89 = &_swiftEmptySetSingleton;
    sub_1005CA850(v47, &v89);
    v88[0] = v62;
    sub_100140278(&unk_1008E99C0, &unk_1006D2070);
    sub_10014A6B0(&qword_1008E8760, &unk_1008E99C0, &unk_1006D2070, &protocol conformance descriptor for [A]);
    v86 = BidirectionalCollection<>.joined(separator:)();

    v88[0] = _swiftEmptyArrayStorage;
    v63 = *(v47 + 2);
    if (!v63)
    {
LABEL_32:

      sub_1001AA918(v69);

      static Date.now.getter();
      static String.random()();
      Playlist.init(identifier:name:items:dateCreated:)();
    }

    v64 = 0;
    while (v64 < *(v47 + 2))
    {
      v65 = v85;
      v66 = &v47[((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v85 + 72) * v64];
      v67 = v82;
      v68 = *(v83 + 48);
      *v82 = v64;
      (*(v65 + 16))(v67 + v68, v66, v87);
      sub_1005CE690(v64, (v67 + v68), v84, v88);
      sub_10000EA04(v67, &qword_1008F4FA8, &unk_1006FDBE8);
      if (v63 == ++v64)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005CE690(unint64_t a1, void *a2, size_t *a3, size_t *a4)
{
  v9 = type metadata accessor for PlaylistItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for FitnessPlusStackViewModel(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(a3 + *(v16 + 20));
  if (*(v17 + 16) <= a1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17 + 40 * a1;
  sub_100007C5C(v18 + 32, v30);
  sub_100140278(&unk_1008E4E60, &qword_1006D8F30);
  sub_1000059F8(0, &qword_1008ED7C0, HKWorkout_ptr);
  result = swift_dynamicCast();
  if (result)
  {
    v26 = v12;
    v27 = a4;
    v28 = v9;
    v20 = v29;
    [v29 workoutActivityType];

    goto LABEL_8;
  }

  if (*(v17 + 16) <= a1)
  {
    __break(1u);
    return result;
  }

  sub_100007C5C(v18 + 32, v30);
  type metadata accessor for MindfulnessSessionViewModel();
  result = swift_dynamicCast();
  if (result)
  {
    v26 = v12;
    v27 = a4;
    v28 = v9;

LABEL_8:
    CatalogWorkout.identifier.getter();
    CatalogWorkout.mediaType.getter();
    CatalogWorkout.duration.getter();
    PlaylistItem.init(identifier:index:healthKitActivityType:mediaType:duration:)();
    v9 = v26;
    v4 = v28;
    (*(v10 + 16))(v26, v15, v28);
    a3 = v27;
    a2 = *v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = a2;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_9:
      v23 = a2[2];
      v22 = a2[3];
      if (v23 >= v22 >> 1)
      {
        *a3 = sub_1001A3AC0((v22 > 1), v23 + 1, 1, a2);
      }

      (*(v10 + 8))(v15, v4);
      v24 = *a3;
      *(v24 + 16) = v23 + 1;
      return (*(v10 + 32))(v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23, v9, v4);
    }

LABEL_15:
    a2 = sub_1001A3AC0(0, a2[2] + 1, 1, a2);
    *a3 = a2;
    goto LABEL_9;
  }

  return result;
}

void *sub_1005CE9AC()
{
  v1 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v50 = *(v1 - 8);
  __chkstk_darwin(v1);
  v49 = &v33 - v2;
  v3 = type metadata accessor for NavigationRoutingBehavior();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for NavigationSource();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationAnnotation();
  __chkstk_darwin(v6 - 8);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationPriority();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationIntent();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NavigationResource();
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NavigationRequest();
  v40 = *(v16 - 8);
  v41 = v16;
  __chkstk_darwin(v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([result navigateToSeymourTab])
    {
      static Log.default.getter();
      v24._countAndFlagsBits = 0xD000000000000022;
      v24._object = 0x80000001007514B0;
      v25._object = 0x8000000100765980;
      v25._countAndFlagsBits = 0xD000000000000017;
      v33 = v1;
      Logger.trace(file:function:)(v24, v25);
      (*(v20 + 8))(v22, v19);
      v26 = *(v0 + OBJC_IVAR___CHFitnessAppContext_navigator);
      sub_100007C5C(v26 + 88, v51);
      sub_1000066AC(v51, v51[3]);
      dispatch thunk of MetricSceneLifecycleReporting.reportDidSelectTab()();
      sub_100005A40(v51);
      v27 = enum case for NavigationRootResourceState.automatic(_:);
      v28 = type metadata accessor for NavigationRootResourceState();
      (*(*(v28 - 8) + 104))(v15, v27, v28);
      (*(v34 + 104))(v15, enum case for NavigationResource.root(_:), v13);
      *v12 = 0;
      (*(v35 + 104))(v12, enum case for NavigationIntent.reset(_:), v36);
      (*(v37 + 104))(v39, enum case for NavigationPriority.takeover(_:), v38);
      static NavigationAnnotation.tabSwitch.getter();
      (*(v43 + 104))(v44, enum case for NavigationSource.default(_:), v45);
      (*(v47 + 104))(v46, enum case for NavigationRoutingBehavior.default(_:), v48);
      NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
      sub_1000066AC((v26 + 48), *(v26 + 72));
      v29 = v49;
      AppCoordinator.navigateToRequest(_:)();
      v30 = v33;
      v31 = Promise.operation.getter();
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      v31(sub_100173F20, v32);
      swift_unknownObjectRelease();

      (*(v50 + 8))(v29, v30);
      return (*(v40 + 8))(v18, v41);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1005CF110()
{
  v63 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v67 = *(v63 - 8);
  v61 = *(v67 + 64);
  __chkstk_darwin(v63);
  v62 = v50 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v66 = v50 - v2;
  __chkstk_darwin(v3);
  v68 = v50 - v4;
  __chkstk_darwin(v5);
  v64 = v50 - v6;
  v57 = type metadata accessor for NavigationAnnotation();
  __chkstk_darwin(v57);
  v56 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationPriority();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v53 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for NavigationRoutingBehavior();
  v10 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NavigationSource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[1] = v15;
  v16 = type metadata accessor for NavigationIntent();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for NavigationResource();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for NavigationRequest();
  v58 = *(v24 - 8);
  v59 = v24;
  v25 = __chkstk_darwin(v24);
  v65 = v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v23, enum case for NavigationResource.workoutPlanCreation(_:), v20, v25);
  *v19 = 1;
  (*(v17 + 104))(v19, enum case for NavigationIntent.presentModal(_:), v16);
  (*(v13 + 104))(v15, enum case for NavigationSource.default(_:), v12);
  (*(v10 + 104))(v51, enum case for NavigationRoutingBehavior.default(_:), v52);
  (*(v54 + 104))(v53, enum case for NavigationPriority.default(_:), v55);
  v69 = _swiftEmptyArrayStorage;
  sub_10000CEB8(&qword_1008F2370, &type metadata accessor for NavigationAnnotation, &protocol conformance descriptor for NavigationAnnotation);
  sub_100140278(&qword_1008F2020, &unk_1006F8878);
  sub_10014A6B0(&qword_1008F2380, &qword_1008F2020, &unk_1006F8878, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
  sub_1000066AC((*(v60 + OBJC_IVAR___CHFitnessAppContext_navigator) + 48), *(*(v60 + OBJC_IVAR___CHFitnessAppContext_navigator) + 72));
  v27 = v66;
  AppCoordinator.navigateToRequest(_:)();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1005CAB5C;
  *(v28 + 24) = 0;
  v29 = v67;
  v60 = *(v67 + 16);
  v31 = v62;
  v30 = v63;
  v60(v62, v27, v63);
  v32 = v29;
  v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v57 = v33;
  v34 = (v61 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = *(v32 + 32);
  v37 = v31;
  v38 = v30;
  v36(v35 + v33, v37, v30);
  v39 = (v35 + v34);
  *v39 = sub_1001CE8A4;
  v39[1] = v28;
  v40 = v68;
  Promise.init(asyncOperation:)();
  v41 = v66;
  v67 = *(v67 + 8);
  (v67)(v66, v38);
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1005CFAFC;
  *(v42 + 24) = 0;
  v60(v41, v40, v38);
  v43 = swift_allocObject();
  v36(v43 + v57, v41, v38);
  v44 = (v43 + v34);
  *v44 = sub_100173EDC;
  v44[1] = v42;
  v45 = v64;
  Promise.init(asyncOperation:)();
  v46 = v67;
  (v67)(v68, v38);
  v47 = Promise.operation.getter();
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  v47(sub_100173F20, v48);

  v46(v45, v38);
  return (*(v58 + 8))(v65, v59);
}

uint64_t sub_1005CF9C8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Navigating to create plan", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005CFAFC(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to navigate to create plan: %@", v7, 0xCu);
    sub_10000EA04(v8, &unk_1008DB8B0, &unk_1006DBD30);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_1005CFCFC(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for NavigationAnnotation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (*(a1 + 16))
  {
    v13 = sub_100066F20(0xD000000000000017, 0x8000000100765920);
    if (v14)
    {
      sub_10000B1B4(*(a1 + 56) + 32 * v13, v28);
      if (swift_dynamicCast())
      {
        v15 = v26;
        v24 = v3;
        v25 = v27;
        v16 = objc_allocWithZone(NSUserActivity);
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 initWithActivityType:v17];

        sub_100140278(&unk_1008F2360, &unk_1006DCB90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1006D46C0;
        v28[0] = 0xD000000000000017;
        v28[1] = 0x8000000100765920;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for Data;
        v20 = v25;
        *(inited + 72) = v15;
        *(inited + 80) = v20;
        sub_100215414(v15, v20);
        sub_1004CA070(inited);
        swift_setDeallocating();
        sub_10000EA04(inited + 32, &qword_1008F4FA0, &qword_1006FDBE0);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v18 setUserInfo:isa];

        static NavigationAnnotation.external.getter();
        AppCoordinator.navigateToUserActivity(_:annotation:)();
        (*(v6 + 8))(v8, v5);
        v22 = Promise.operation.getter();
        v23 = swift_allocObject();
        *(v23 + 16) = 0;
        *(v23 + 24) = 0;
        v22(sub_100173F20, v23);

        sub_10000AF88(v15, v25);
        (*(v10 + 8))(v12, v9);
      }
    }
  }
}

uint64_t sub_1005D012C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v4[19] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1005D0224, 0, 0);
}

uint64_t sub_1005D0224(uint64_t a1)
{
  v3 = v1[21];
  v2 = v1[22];
  v4 = v1[20];
  static Log.default.getter();
  v5._object = 0x80000001007514B0;
  v6._countAndFlagsBits = 0xD000000000000027;
  v6._object = 0x8000000100765AA0;
  v5._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v5, v6);
  (*(v3 + 8))(v2, v4);
  v1[23] = objc_opt_self();
  type metadata accessor for MainActor();
  v1[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005D0334, v8, v7);
}

uint64_t sub_1005D0334()
{
  v1 = *(v0 + 184);

  *(v0 + 200) = [v1 sharedApplication];

  return _swift_task_switch(sub_1005D03B8, 0, 0);
}

uint64_t sub_1005D03B8()
{
  v1 = v0[19];
  sub_1005BE4A8(v0[18], v1);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = 0;
  if (v4 != 1)
  {
    v7 = v0[19];
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v3 + 8))(v7, v2);
  }

  v0[26] = v6;
  v9 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1005D0574;
  v10 = swift_continuation_init();
  v0[17] = sub_100140278(&qword_1008E45C8, &unk_1006E2160);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10039070C;
  v0[13] = &unk_100862E58;
  v0[14] = v10;
  [v9 openURL:v6 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005D0574()
{

  return _swift_task_switch(sub_1005D5E90, 0, 0);
}

void *sub_1005D065C(void *a1)
{
  v62 = a1;
  v2 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v67 = &v44 - v3;
  v66 = type metadata accessor for NavigationSource();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NavigationPriority();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v63 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for NavigationRoutingBehavior();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v59 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for NavigationIntent();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v56 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for NavigationResource();
  v54 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = (&v44 - v11);
  v52 = type metadata accessor for NavigationAnnotation();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v47 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v70 = &v44 - v14;
  v58 = type metadata accessor for NavigationRequest();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v73 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TrainerTipsGalleryNavigationBegan();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  TrainerTipsGalleryNavigationBegan.init()();
  sub_10000CEB8(&unk_1008F4F90, &type metadata accessor for TrainerTipsGalleryNavigationBegan, &protocol conformance descriptor for TrainerTipsGalleryNavigationBegan);
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  (*(v21 + 8))(v23, v20);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([result navigateToSeymourTab])
    {
      static Log.default.getter();
      v25._object = 0x80000001007514B0;
      v26._countAndFlagsBits = 0xD000000000000029;
      v26._object = 0x80000001007658F0;
      v25._countAndFlagsBits = 0xD000000000000022;
      Logger.trace(file:function:)(v25, v26);
      (*(v17 + 8))(v19, v16);
      v46 = *(v1 + OBJC_IVAR___CHFitnessAppContext_navigator);
      sub_100007C5C(v46 + 88, v74);
      sub_1000066AC(v74, v74[3]);
      dispatch thunk of MetricSceneLifecycleReporting.reportDidSelectTab()();
      sub_100005A40(v74);
      v27 = v62[3];
      v45 = v62[2];
      v28 = v45;
      v62 = v27;
      v29 = v70;
      static NavigationAnnotation.tabSwitch.getter();
      v30 = v48;
      *v48 = v28;
      v30[1] = v27;
      v31 = v54;
      v32 = v72;
      (*(v54 + 104))(v30, enum case for NavigationResource.tipsGallery(_:), v72);
      (*(v31 + 16))(v71, v30, v32);
      v33 = v56;
      *v56 = 1;
      (*(v49 + 104))(v33, enum case for NavigationIntent.push(_:), v50);
      (*(v53 + 104))(v59, enum case for NavigationRoutingBehavior.takeover(_:), v55);
      (*(v60 + 104))(v63, enum case for NavigationPriority.takeover(_:), v61);
      v34 = v51;
      v35 = v29;
      v36 = v52;
      (*(v51 + 16))(v47, v35, v52);
      (*(v64 + 104))(v65, enum case for NavigationSource.default(_:), v66);
      v37 = v45;
      v38 = v62;
      NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
      (*(v31 + 8))(v30, v72);
      (*(v34 + 8))(v70, v36);
      sub_1000066AC((v46 + 48), *(v46 + 72));
      v39 = v67;
      v40 = v73;
      AppCoordinator.navigateToRequest(_:)();
      v41 = v69;
      v42 = Promise.operation.getter();
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      v42(sub_100173F20, v43);
      swift_unknownObjectRelease();

      (*(v68 + 8))(v39, v41);
      return (*(v57 + 8))(v40, v58);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1005D1004()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for URLComponents();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = sub_100140278(&unk_1008EAF30, &qword_1006DE210);
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - v15;
  URLComponents.init(string:)();
  v17 = *(v6 + 48);
  if (!v17(v16, 1, v5))
  {
    sub_100140278(&unk_1008EAF40, &unk_1006D6990);
    v25 = v6;
    type metadata accessor for URLQueryItem();
    v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    *(swift_allocObject() + 16) = xmmword_1006D46C0;
    v10 = v26;
    URLQueryItem.init(name:value:)();
    URLComponents.queryItems.setter();
    v6 = v25;
  }

  if (v17(v16, 1, v5))
  {
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  }

  else
  {
    v19 = v27;
    (*(v6 + 16))(v27, v16, v5);
    URLComponents.url.getter();
    (*(v6 + 8))(v19, v5);
  }

  sub_100007C5C(*(v1 + OBJC_IVAR___CHFitnessAppContext_navigator) + 88, v29);
  sub_1000066AC(v29, v29[3]);
  dispatch thunk of MetricSceneLifecycleReporting.reportDidSelectTab()();
  sub_100005A40(v29);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  sub_1005BE4A8(v13, v10);
  v21 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_1005BE518(v10, v22 + v21);
  sub_10026E198(0, 0, v4, &unk_1006FDBD0, v22);

  sub_10000EA04(v13, &unk_1008EB5B0, &unk_1006D2BF0);
  return sub_10000EA04(v16, &unk_1008EAF30, &qword_1006DE210);
}

uint64_t sub_1005D14F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v4[19] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1005D15EC, 0, 0);
}

uint64_t sub_1005D15EC(uint64_t a1)
{
  v3 = v1[21];
  v2 = v1[22];
  v4 = v1[20];
  static Log.default.getter();
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001007514B0;
  v6._object = 0x80000001007658D0;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  (*(v3 + 8))(v2, v4);
  v1[23] = objc_opt_self();
  type metadata accessor for MainActor();
  v1[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005D16F8, v8, v7);
}

uint64_t sub_1005D16F8()
{
  v1 = *(v0 + 184);

  *(v0 + 200) = [v1 sharedApplication];

  return _swift_task_switch(sub_1005D177C, 0, 0);
}

uint64_t sub_1005D177C()
{
  v1 = v0[19];
  sub_1005BE4A8(v0[18], v1);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = 0;
  if (v4 != 1)
  {
    v7 = v0[19];
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v3 + 8))(v7, v2);
  }

  v0[26] = v6;
  v9 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1005D0574;
  v10 = swift_continuation_init();
  v0[17] = sub_100140278(&qword_1008E45C8, &unk_1006E2160);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10039070C;
  v0[13] = &unk_100862B88;
  v0[14] = v10;
  [v9 openURL:v6 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005D1938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  v4 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for URLComponents();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  __chkstk_darwin(v11 - 8);
  v34 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  v16 = sub_100140278(&unk_1008EAF30, &qword_1006DE210);
  __chkstk_darwin(v16 - 8);
  v18 = &v26 - v17;
  URLComponents.init(string:)();
  v19 = *(v8 + 48);
  if (!v19(v18, 1, v7))
  {
    sub_100140278(&unk_1008EAF40, &unk_1006D6990);
    v27 = v10;
    type metadata accessor for URLQueryItem();
    v30 = v6;
    v28 = v8;
    v29 = v3;
    *(swift_allocObject() + 16) = xmmword_1006D64F0;
    URLQueryItem.init(name:value:)();
    v6 = v30;
    URLQueryItem.init(name:value:)();
    v8 = v28;
    v3 = v29;
    URLQueryItem.init(name:value:)();
    URLComponents.queryItems.setter();
    v10 = v27;
  }

  if (v19(v18, 1, v7))
  {
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  }

  else
  {
    (*(v8 + 16))(v10, v18, v7);
    URLComponents.url.getter();
    (*(v8 + 8))(v10, v7);
  }

  sub_100007C5C(*(v3 + OBJC_IVAR___CHFitnessAppContext_navigator) + 88, v35);
  sub_1000066AC(v35, v35[3]);
  dispatch thunk of MetricSceneLifecycleReporting.reportDidSelectTab()();
  sub_100005A40(v35);
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  v22 = v34;
  sub_1005BE4A8(v15, v34);
  v23 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1005BE518(v22, v24 + v23);
  sub_10026E198(0, 0, v6, &unk_1006FDBB8, v24);

  sub_10000EA04(v15, &unk_1008EB5B0, &unk_1006D2BF0);
  return sub_10000EA04(v18, &unk_1008EAF30, &qword_1006DE210);
}

uint64_t sub_1005D1E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v4[19] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1005D1F68, 0, 0);
}

uint64_t sub_1005D1F68(uint64_t a1)
{
  v3 = v1[21];
  v2 = v1[22];
  v4 = v1[20];
  static Log.default.getter();
  v5._object = 0x80000001007514B0;
  v6._countAndFlagsBits = 0xD000000000000025;
  v6._object = 0x80000001007658A0;
  v5._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v5, v6);
  (*(v3 + 8))(v2, v4);
  v1[23] = objc_opt_self();
  type metadata accessor for MainActor();
  v1[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005D2074, v8, v7);
}

uint64_t sub_1005D2074()
{
  v1 = *(v0 + 184);

  *(v0 + 200) = [v1 sharedApplication];

  return _swift_task_switch(sub_1005D20F8, 0, 0);
}

uint64_t sub_1005D20F8()
{
  v1 = v0[19];
  sub_1005BE4A8(v0[18], v1);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = 0;
  if (v4 != 1)
  {
    v7 = v0[19];
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v3 + 8))(v7, v2);
  }

  v0[26] = v6;
  v9 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1005D0574;
  v10 = swift_continuation_init();
  v0[17] = sub_100140278(&qword_1008E45C8, &unk_1006E2160);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10039070C;
  v0[13] = &unk_100862B38;
  v0[14] = v10;
  [v9 openURL:v6 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005D22B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v4[19] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1005D23AC, 0, 0);
}

uint64_t sub_1005D23AC(uint64_t a1)
{
  v3 = v1[21];
  v2 = v1[22];
  v4 = v1[20];
  static Log.default.getter();
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001007514B0;
  v6._object = 0x80000001007657E0;
  v6._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v5, v6);
  (*(v3 + 8))(v2, v4);
  v1[23] = objc_opt_self();
  type metadata accessor for MainActor();
  v1[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005D24B8, v8, v7);
}

uint64_t sub_1005D24B8()
{
  v1 = *(v0 + 184);

  *(v0 + 200) = [v1 sharedApplication];

  return _swift_task_switch(sub_1005D253C, 0, 0);
}

uint64_t sub_1005D253C()
{
  v1 = v0[19];
  sub_1005BE4A8(v0[18], v1);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = 0;
  if (v4 != 1)
  {
    v7 = v0[19];
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v3 + 8))(v7, v2);
  }

  v0[26] = v6;
  v9 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1005D26F8;
  v10 = swift_continuation_init();
  v0[17] = sub_100140278(&qword_1008E45C8, &unk_1006E2160);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10039070C;
  v0[13] = &unk_100862868;
  v0[14] = v10;
  [v9 openURL:v6 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005D26F8()
{

  return _swift_task_switch(sub_1005D27D8, 0, 0);
}

uint64_t sub_1005D27D8()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005D285C()
{
  swift_getObjectType();
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = [Strong navigateToSeymourTab], swift_unknownObjectRelease(), v8))
  {
    static Log.default.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = sub_10000AFDC(v13, v14, &v25);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s received MultiUserBeginActivityRequested; navigating to Seymour tab", v11, 0xCu);
      sub_100005A40(v12);
    }

    return (*(v1 + 8))(v6, v0);
  }

  else
  {
    static Log.default.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v21 = _typeName(_:qualified:)();
      v23 = sub_10000AFDC(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s received MultiUserBeginActivityRequested but failed navigating to Seymour tab", v19, 0xCu);
      sub_100005A40(v20);
    }

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1005D2B44()
{
  v1 = sub_100140278(&unk_1008F4F80, &unk_1006F0750);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_100140278(&qword_1008ED020, &unk_1006FDBA0);
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  sub_1000066AC((v0 + OBJC_IVAR___CHFitnessAppContext_bookmarkClient), *(v0 + OBJC_IVAR___CHFitnessAppContext_bookmarkClient + 24));
  dispatch thunk of BookmarkClientProtocol.queryAllPlaylists()();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1005D5118;
  *(v13 + 24) = v12;
  (*(v2 + 16))(v4, v7, v1);
  v14 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v15 = swift_allocObject();
  (*(v2 + 32))(v15 + v14, v4, v1);
  v16 = (v15 + ((v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_10042B51C;
  v16[1] = v13;
  sub_100140278(&unk_1008E4DC0, &qword_1006D44A0);
  Promise.init(asyncOperation:)();
  (*(v2 + 8))(v7, v1);
  v17 = v21;
  v18 = Promise.operation.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v18(sub_10006E584, v19);

  return (*(v22 + 8))(v11, v17);
}

char *sub_1005D2E80@<X0>(uint64_t *a1@<X0>, BOOL *a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = result;
  if (result)
  {
    *&result[OBJC_IVAR___CHFitnessAppContext_playlists] = v4;
  }

  *a3 = v6 == 0;
  return result;
}

uint64_t sub_1005D2F1C(uint64_t a1)
{
  v85 = a1;
  v1 = type metadata accessor for BadgingCountsUpdated();
  v66 = *(v1 - 8);
  __chkstk_darwin(v1);
  v65 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v88 = *(v3 - 8);
  v89 = v3;
  __chkstk_darwin(v3);
  v87 = &v64 - v4;
  v82 = type metadata accessor for NavigationRoutingBehavior();
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationSource();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v78 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationAnnotation();
  __chkstk_darwin(v8 - 8);
  v77 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for NavigationPriority();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v74 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for NavigationIntent();
  v11 = *(v71 - 8);
  __chkstk_darwin(v71);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NavigationRequest();
  v83 = *(v18 - 8);
  v84 = v18;
  __chkstk_darwin(v18);
  v80 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v24._countAndFlagsBits = 0xD000000000000022;
  v24._object = 0x80000001007514B0;
  v25._countAndFlagsBits = 0xD00000000000001ELL;
  v25._object = 0x8000000100765860;
  Logger.trace(file:function:)(v24, v25);
  v26 = *(v21 + 8);
  v70 = v20;
  v27 = v20;
  v28 = v86;
  v69 = v21 + 8;
  v26(v23, v27);
  v29 = OBJC_IVAR___CHFitnessAppContext_appBadgeAggregator;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR___CHFitnessAppBadgeAggregator_isBrowsingSeymour] = 1;
  }

  v67 = v1;
  v68 = v26;
  if (v85)
  {
    if (v85 == 2)
    {
      v31 = enum case for NavigationRootResourceState.automatic(_:);
      v32 = type metadata accessor for NavigationRootResourceState();
      (*(*(v32 - 8) + 104))(v17, v31, v32);
      (*(v15 + 104))(v17, enum case for NavigationResource.root(_:), v14);
      *v13 = 0;
      (*(v11 + 104))(v13, enum case for NavigationIntent.reset(_:), v71);
      (*(v72 + 104))(v74, enum case for NavigationPriority.default(_:), v73);
      static NavigationAnnotation.tabReselection.getter();
      (*(v75 + 104))(v78, enum case for NavigationSource.default(_:), v76);
      (*(v79 + 104))(v81, enum case for NavigationRoutingBehavior.default(_:), v82);
      v33 = v80;
      NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
      sub_1000066AC((*(v28 + OBJC_IVAR___CHFitnessAppContext_navigator) + 48), *(*(v28 + OBJC_IVAR___CHFitnessAppContext_navigator) + 72));
      v34 = v87;
      AppCoordinator.navigateToRequest(_:)();
      v35 = v89;
      v36 = Promise.operation.getter();
      v37 = swift_allocObject();
      v38 = v28;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      v36(sub_100173F20, v37);

      (*(v88 + 8))(v34, v35);
      (*(v83 + 8))(v33, v84);
    }

    else
    {
      v64 = v29;
      if (v85 != 1)
      {
        v90 = v85;
        result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return result;
      }

      v85 = *(v28 + OBJC_IVAR___CHFitnessAppContext_navigator);
      sub_100007C5C(v85 + 88, &v90);
      v38 = v28;
      sub_1000066AC(&v90, v91);
      dispatch thunk of MetricSceneLifecycleReporting.reportDidSelectTab()();
      sub_100005A40(&v90);
      v39 = enum case for NavigationRootResourceState.automatic(_:);
      v40 = type metadata accessor for NavigationRootResourceState();
      (*(*(v40 - 8) + 104))(v17, v39, v40);
      (*(v15 + 104))(v17, enum case for NavigationResource.root(_:), v14);
      *v13 = 0;
      (*(v11 + 104))(v13, enum case for NavigationIntent.reset(_:), v71);
      (*(v72 + 104))(v74, enum case for NavigationPriority.default(_:), v73);
      static NavigationAnnotation.tabSwitch.getter();
      (*(v75 + 104))(v78, enum case for NavigationSource.default(_:), v76);
      (*(v79 + 104))(v81, enum case for NavigationRoutingBehavior.default(_:), v82);
      v41 = v80;
      NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
      sub_1000066AC((v85 + 48), *(v85 + 72));
      v42 = v87;
      AppCoordinator.navigateToRequest(_:)();
      v43 = v89;
      v44 = Promise.operation.getter();
      v45 = swift_allocObject();
      *(v45 + 16) = 0;
      *(v45 + 24) = 0;
      v44(sub_100173F20, v45);

      (*(v88 + 8))(v42, v43);
      (*(v83 + 8))(v41, v84);
    }
  }

  else
  {
    sub_100007C5C(*(v28 + OBJC_IVAR___CHFitnessAppContext_navigator) + 88, &v90);
    v38 = v28;
    sub_1000066AC(&v90, v91);
    dispatch thunk of MetricSceneLifecycleReporting.reportDidBecomeActive()();
    sub_100005A40(&v90);
  }

  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;
    static Log.default.getter();
    v48._countAndFlagsBits = 0xD00000000000002ALL;
    v48._object = 0x800000010074B8E0;
    v49._object = 0x800000010074B910;
    v49._countAndFlagsBits = 0xD000000000000013;
    Logger.trace(file:function:)(v48, v49);
    v68(v23, v70);
    v85 = *&v47[OBJC_IVAR___CHFitnessAppBadgeAggregator_appBadgeCount];
    v50 = *&v47[OBJC_IVAR___CHFitnessAppBadgeAggregator_fetchedEngagementBadges];
    v51 = *(v50 + 16);
    if (v51)
    {
      v52 = sub_1001A3CF4(*(v50 + 16), 0);
      v53 = *(type metadata accessor for EngagementBadge() - 8);
      sub_1001A9BD0(&v90, &v52[(*(v53 + 80) + 32) & ~*(v53 + 80)], v51, v50);
      v55 = v54;
      v56 = v90;

      sub_100022DEC(v56);
      if (v55 != v51)
      {
        __break(1u);
      }
    }

    v57 = v65;
    BadgingCountsUpdated.init(appBadgeCount:seymourTabBadges:)();
    swift_getObjectType();
    v58 = v67;
    dispatch thunk of EventHubProtocol.publish<A>(_:)();
    (*(v66 + 8))(v57, v58);

    v38 = v86;
  }

  sub_1000066AC((*(v38 + OBJC_IVAR___CHFitnessAppContext_engagementAppBadgeProvider) + 16), *(*(v38 + OBJC_IVAR___CHFitnessAppContext_engagementAppBadgeProvider) + 40));
  v59 = v87;
  dispatch thunk of EngagementClientProtocol.deleteAllEngagementBadges()();
  v60 = v89;
  v61 = Promise.operation.getter();
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  v61(sub_100173F20, v62);

  return (*(v88 + 8))(v59, v60);
}

uint64_t sub_1005D3C8C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v6._countAndFlagsBits = 0xD000000000000022;
  v6._object = 0x80000001007514B0;
  v7._object = 0x8000000100765840;
  v7._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v6, v7);
  (*(v3 + 8))(v5, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR___CHFitnessAppBadgeAggregator_isBrowsingSeymour] = 0;
  }

  sub_100007C5C(*(v1 + OBJC_IVAR___CHFitnessAppContext_navigator) + 88, v11);
  sub_1000066AC(v11, v11[3]);
  dispatch thunk of MetricSceneLifecycleReporting.reportDidDeselectTab()();
  return sub_100005A40(v11);
}

uint64_t sub_1005D3E3C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v6._countAndFlagsBits = 0xD000000000000022;
  v6._object = 0x80000001007514B0;
  v7._object = 0x8000000100765820;
  v7._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v6, v7);
  (*(v3 + 8))(v5, v2);
  sub_100007C5C(*(v1 + OBJC_IVAR___CHFitnessAppContext_navigator) + 88, v10);
  sub_1000066AC(v10, v10[3]);
  dispatch thunk of MetricSceneLifecycleReporting.reportDidEnterBackground()();
  return sub_100005A40(v10);
}

uint64_t sub_1005D3FC4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v6._countAndFlagsBits = 0xD000000000000022;
  v6._object = 0x80000001007514B0;
  v7._object = 0x8000000100765800;
  v7._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v6, v7);
  (*(v3 + 8))(v5, v2);
  sub_100007C5C(*(v1 + OBJC_IVAR___CHFitnessAppContext_navigator) + 88, v10);
  sub_1000066AC(v10, v10[3]);
  dispatch thunk of MetricSceneLifecycleReporting.reportDidDisconnect()();
  return sub_100005A40(v10);
}

uint64_t sub_1005D414C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v39 = a1;
  v40 = a2;
  v5 = sub_100140278(&unk_1008F4F70, &qword_1006F0748);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  v43 = sub_100140278(&unk_1008F2010, &unk_1006D6780);
  v12 = *(v43 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v43);
  v42 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v41 = &v37 - v15;
  __chkstk_darwin(v16);
  v44 = &v37 - v17;
  CompletedWorkoutShareItemProvider.activityItems(workout:)();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1005D5078;
  *(v19 + 24) = v18;
  (*(v6 + 16))(v8, v11, v5);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  (*(v6 + 32))(v21 + v20, v8, v5);
  v22 = (v21 + ((v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_1005D50B0;
  v22[1] = v19;
  v23 = v38;

  v24 = v41;
  Promise.init(asyncOperation:)();
  (*(v6 + 8))(v11, v5);
  v25 = swift_allocObject();
  *(v25 + 16) = v40;
  *(v25 + 24) = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1005D50E0;
  *(v26 + 24) = v25;
  v28 = v42;
  v27 = v43;
  (*(v12 + 16))(v42, v24, v43);
  v29 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v30 = swift_allocObject();
  (*(v12 + 32))(v30 + v29, v28, v27);
  v31 = (v30 + ((v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_100173A14;
  v31[1] = v26;

  v32 = v44;
  Promise.init(asyncOperation:)();
  v33 = *(v12 + 8);
  v33(v24, v27);
  v34 = Promise.operation.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v34(sub_100173A1C, v35);

  return (v33)(v32, v27);
}

void sub_1005D468C(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1000059F8(0, &qword_1008F4FC0, UIActivityItemProvider_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

BOOL sub_1005D4738()
{
  v0 = AppCoordinator.rootViewController.getter();
  v1 = [v0 presentedViewController];

  if (!v1)
  {
    goto LABEL_4;
  }

  type metadata accessor for SessionViewController();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {

LABEL_4:
    v2 = 0;
  }

  v3 = v2 != 0;

  return v3;
}

id sub_1005D4820()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitnessAppContext(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005D4A64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  sub_100140278(&unk_1008E4DC0, &qword_1006D44A0);

  return Promise.init(asyncOperation:)();
}

uint64_t sub_1005D4B14(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(unsigned __int8 *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  a3(&v8, &v9);
  v6 = v8;
  v9 = v8;
  v10 = 0;
  a1(&v9);

  return sub_1000A7360(v6, 0);
}

uint64_t sub_1005D4BB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return Promise.init(asyncOperation:)();
}

uint64_t sub_1005D4C54()
{
  v0 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_100140278(&unk_1008EAF30, &qword_1006DE210);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  URLComponents.init(string:)();
  v13 = type metadata accessor for URLComponents();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    sub_10000EA04(v5, &unk_1008EAF30, &qword_1006DE210);
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  else
  {
    URLComponents.url.getter();
    (*(v14 + 8))(v5, v13);
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v2, 1, 1, v16);
  sub_1005BE4A8(v12, v9);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_1005BE518(v9, v18 + v17);
  sub_10026E198(0, 0, v2, &unk_1006FDB98, v18);

  return sub_10000EA04(v12, &unk_1008EB5B0, &unk_1006D2BF0);
}

uint64_t sub_1005D4F7C(uint64_t a1)
{
  v4 = *(sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BACC;

  return sub_1005D22B4(a1, v6, v7, v1 + v5);
}

uint64_t sub_1005D5134()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005D5180(uint64_t a1)
{
  v4 = *(sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_1005D1E70(a1, v6, v7, v1 + v5);
}

uint64_t sub_1005D527C(uint64_t a1)
{
  v4 = *(sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_1005D14F4(a1, v6, v7, v1 + v5);
}

uint64_t sub_1005D5450(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_100140278(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_1005D5520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SeymourBrowsingCoordinator();
  v20[3] = v8;
  v20[4] = &off_10084CFC0;
  v20[0] = a2;
  v19[3] = v8;
  v19[4] = sub_10000CEB8(&qword_1008F5028, type metadata accessor for SeymourBrowsingCoordinator, &unk_1006DEE9C);
  v19[0] = a3;
  type metadata accessor for URLNavigator();
  v9 = swift_allocObject();
  v10 = sub_1001DF03C(v20, v8);
  v11 = __chkstk_darwin(v10);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v18[3] = v8;
  v18[4] = &off_10084CFC0;
  v18[0] = v15;
  *(v9 + 192) = 0;
  swift_unknownObjectWeakInit();
  sub_100140278(&unk_1008F2070, qword_1006F88D0);
  Dependencies.resolve<A>(failureHandler:)();
  *(v9 + 16) = v17;
  *(v9 + 24) = a1;

  sub_100140278(&qword_1008E4F20, &unk_1006F1470);
  Dependencies.resolve<A>(failureHandler:)();
  *(v9 + 32) = v17;
  sub_100007C5C(v18, v9 + 48);
  sub_100007C5C(v19, v9 + 88);
  Dependencies.resolve<A>(failureHandler:)();
  *(v9 + 128) = v17;
  sub_100140278(&qword_1008F4FD8, &qword_1006FDC18);
  Dependencies.resolve<A>(failureHandler:)();
  sub_100005A40(v19);
  sub_100005A40(v18);
  *(v9 + 136) = a4;
  sub_100005A40(v20);
  return v9;
}

uint64_t sub_1005D5770(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for URLComponents();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = sub_100140278(&unk_1008EAF30, &qword_1006DE210);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - v15;
  URLComponents.init(string:)();
  v29 = v6;
  v17 = *(v6 + 48);
  if (!v17(v16, 1, v5))
  {
    sub_100140278(&unk_1008EAF40, &unk_1006D6990);
    type metadata accessor for URLQueryItem();
    v26 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    *(swift_allocObject() + 16) = xmmword_1006D46C0;
    v27 = v4;
    v31 = a1;
    dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v26;
    v4 = v27;
    URLQueryItem.init(name:value:)();

    URLComponents.queryItems.setter();
  }

  if (v17(v16, 1, v5))
  {
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  }

  else
  {
    v19 = v28;
    v20 = v29;
    (*(v29 + 16))(v28, v16, v5);
    URLComponents.url.getter();
    (*(v20 + 8))(v19, v5);
  }

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_1005BE4A8(v13, v10);
  v22 = v10;
  v23 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1005BE518(v22, v24 + v23);
  sub_10026E198(0, 0, v4, &unk_1006FDC00, v24);

  sub_10000EA04(v13, &unk_1008EB5B0, &unk_1006D2BF0);
  return sub_10000EA04(v16, &unk_1008EAF30, &qword_1006DE210);
}

uint64_t sub_1005D5C2C(uint64_t a1)
{
  v4 = *(sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_1005D012C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1005D5D28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BACC;

  return sub_1005CAEF0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1005D5E2C()
{
  result = qword_1008F5058;
  if (!qword_1008F5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5058);
  }

  return result;
}

void sub_1005D5EA8(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 5u)
  {
    if (a1 > 2u)
    {
LABEL_12:
      if (v1 != 3)
      {
        if (v1 != 4)
        {
          goto LABEL_29;
        }

        v7 = [objc_opt_self() powerColors];
        v8 = [v7 nonGradientTextColor];

        if (v8)
        {
          return;
        }

        __break(1u);
      }

LABEL_16:
      v9 = [objc_opt_self() paceColors];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 nonGradientTextColor];

        if (v11)
        {
          return;
        }

        __break(1u);
        goto LABEL_19;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!a1)
    {
      goto LABEL_23;
    }

    if (a1 == 1)
    {
LABEL_9:
      v4 = [objc_opt_self() paceColors];
      if (!v4)
      {
        __break(1u);
        goto LABEL_33;
      }

      v5 = v4;
      v6 = [v4 nonGradientTextColor];

      if (v6)
      {
        return;
      }

      __break(1u);
      goto LABEL_12;
    }

    v2 = [objc_opt_self() elevationColors];
    v3 = [v2 nonGradientTextColor];

    if (v3)
    {
      return;
    }

    __break(1u);
  }

  if (v1 > 7)
  {
    if ((v1 - 8) >= 2)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

LABEL_19:
  if (v1 != 6)
  {
    goto LABEL_26;
  }

  v12 = [objc_opt_self() distanceColors];
  if (!v12)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v13 = v12;
  v14 = [v12 nonGradientTextColor];

  if (v14)
  {
    return;
  }

  __break(1u);
LABEL_23:
  v15 = [objc_opt_self() heartRateColors];
  if (!v15)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v16 = v15;
  v17 = [v15 nonGradientTextColor];

  if (v17)
  {
    return;
  }

  __break(1u);
LABEL_26:
  v18 = [objc_opt_self() distanceColors];
  if (!v18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = v18;
  v20 = [v18 nonGradientTextColor];

  if (v20)
  {
    return;
  }

  __break(1u);
LABEL_29:
  v21 = [objc_opt_self() elapsedTimeColors];
  if (!v21)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v22 = v21;
  v23 = [v21 nonGradientTextColor];

  if (!v23)
  {
LABEL_38:
    __break(1u);
  }
}

uint64_t sub_1005D6184()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void *sub_1005D6348()
{
  v1 = [v0 effectiveTypeIdentifier] - 13;
  result = _swiftEmptyArrayStorage;
  switch(v1)
  {
    case 0uLL:
      v3 = [v0 isIndoor];
      v4 = &off_1008455D0;
      v5 = &off_1008455A8;
      goto LABEL_11;
    case 0xBuLL:
      return &off_100845648;
    case 0x12uLL:
      return &off_1008457B0;
    case 0x16uLL:
      v3 = [v0 isIndoor];
      v4 = &off_100845710;
      v5 = &off_1008456E8;
      goto LABEL_11;
    case 0x18uLL:
      v3 = [v0 isIndoor];
      v4 = &off_100845580;
      v5 = &off_100845558;
      goto LABEL_11;
    case 0x1AuLL:
      v3 = [v0 isIndoor];
      v4 = &off_100845760;
      v5 = &off_100845738;
      goto LABEL_11;
    case 0x21uLL:
    case 0x45uLL:
      return result;
    case 0x27uLL:
      v3 = [v0 isIndoor];
      v4 = &off_100845620;
      v5 = &off_1008455F8;
LABEL_11:
      if (v3)
      {
        result = v5;
      }

      else
      {
        result = v4;
      }

      break;
    case 0x2FuLL:
      result = &off_1008456C0;
      break;
    case 0x30uLL:
    case 0x36uLL:
      result = &off_100845788;
      break;
    case 0x39uLL:
      result = &off_100845670;
      break;
    case 0x3AuLL:
      result = &off_100845698;
      break;
    default:
      result = &off_1008457D8;
      break;
  }

  return result;
}

unint64_t sub_1005D64CC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x7461527472616568;
    v7 = 0x6F69746176656C65;
    v8 = 0x65636E65646163;
    if (a1 != 3)
    {
      v8 = 0x7265776F70;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 1701011824;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6465657073;
    v2 = 0x53676E696C637963;
    if (a1 != 9)
    {
      v2 = 0x43676E696C637963;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    v4 = 0x654C656469727473;
    if (a1 != 6)
    {
      v4 = 0xD000000000000013;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1005D663C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1005D64CC(*a1);
  v5 = v4;
  if (v3 == sub_1005D64CC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1005D66C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1005D64CC(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005D6728(uint64_t a1)
{
  sub_1005D64CC(*v1);
  String.hash(into:)();
}

Swift::Int sub_1005D677C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1005D64CC(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005D67DC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005D6914(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1005D68C0()
{
  result = qword_1008F5060;
  if (!qword_1008F5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5060);
  }

  return result;
}

unint64_t sub_1005D6914(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100846268, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1005D6960()
{
  result = qword_1008F5068;
  if (!qword_1008F5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5068);
  }

  return result;
}

uint64_t sub_1005D6A50(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for InferenceRecord();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_100140278(&qword_1008E5C70, qword_1006F0480);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for Adapter();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1005D6C80, 0, 0);
}

uint64_t sub_1005D6C80()
{
  v1 = v0[20];
  v15 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v16 = v0[11];
  v17 = v0[13];
  v18 = v0[10];
  v19 = v0[19];
  v7 = v0[4];
  v8 = [v7 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.addingTimeInterval(_:)();
  v9 = *(v4 + 8);
  v9(v2, v5);
  v10 = [v7 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.addingTimeInterval(_:)();
  v9(v3, v5);
  DateInterval.init(start:end:)();
  (*(v6 + 104))(v17, enum case for Adapter.workoutVoice(_:), v16);
  (*(v1 + 16))(v18, v15, v19);
  (*(v1 + 56))(v18, 0, 1, v19);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_1005D6E90;
  v12 = v0[13];
  v13 = v0[10];

  return InferenceClient.listInferences(adapter:interval:)(v12, v13);
}