double sub_1000BBAA8()
{
  v1 = v0;
  v2 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100181F88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s stopGuestUserSession called", v8, 0xCu);
    sub_1000052E4(v9);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;

  sub_1000B8EAC(0, 0, v4, &unk_100116E10, v14);

  return result;
}

uint64_t sub_1000BBD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  v5 = type metadata accessor for GuestUserHandoverService();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_100002BE4(&qword_10016F8B8, &qword_100116E20);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000BBDF8, 0, 0);
}

uint64_t sub_1000BBDF8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  swift_getKeyPath();
  *(v0 + 40) = v4;
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  swift_beginAccess();
  sub_10000C178(v4 + v5, v1, &qword_10016F8B8, &qword_100116E20);
  v6 = (*(v3 + 48))(v1, 1, v2);
  *(v0 + 112) = v6;
  v7 = *(v0 + 88);
  if (v6)
  {
    sub_100009908(*(v0 + 88), &qword_10016F8B8, &qword_100116E20);
    **(v0 + 48) = *(v0 + 112) != 0;

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 88), *(v0 + 64));
    sub_100009908(v7, &qword_10016F8B8, &qword_100116E20);
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = sub_1000BC034;

    return GuestUserHandoverService.endGuestUserMode()();
  }
}

uint64_t sub_1000BC034()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000BC224;
  }

  else
  {
    v5 = sub_1000BC1A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000BC1A4()
{
  **(v0 + 48) = *(v0 + 112) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BC224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BC290()
{
  sub_1000319E0(v0 + 16);
  sub_100009908(v0 + OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService, &qword_10016F8B8, &qword_100116E20);
  v1 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuestUserSessionModel(uint64_t a1)
{
  result = qword_10016F738;
  if (!qword_10016F738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BC3A8(uint64_t a1)
{
  sub_1000BC488(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000BC488(uint64_t a1)
{
  if (!qword_10016F748)
  {
    type metadata accessor for GuestUserHandoverService();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10016F748);
    }
  }
}

uint64_t sub_1000BC4E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006B0C(v12, qword_100181F88);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = v3;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136315394;
    v19 = _typeName(_:qualified:)();
    v21 = v8;
    v22 = v5;
    v23 = a2;
    v24 = sub_100006B44(v19, v20, aBlock);

    *(v16 + 4) = v24;
    a2 = v23;
    v5 = v22;
    v8 = v21;
    *(v16 + 12) = 1024;
    *(v16 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s received guest user session activation state update, to state: %{BOOL}d", v16, 0x12u);
    sub_1000052E4(v18);
    v3 = v29;

    v6 = v30;
  }

  sub_100064428();
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = v3;
  *(v26 + 24) = a2 & 1;
  aBlock[4] = sub_1000BC94C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015E3E8;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000BCAA8(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v6 + 8))(v8, v5);
  return (*(v31 + 8))(v11, v32);
}

uint64_t sub_1000BC914()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000BC978(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BC990()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BC9D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000FA04;

  return sub_1000BBD00(a1, v4, v5, v6);
}

uint64_t sub_1000BCAA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000BCAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016F8B8, &qword_100116E20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 sub_1000BCBFC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  swift_getKeyPath();
  *&v13 = a1;
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + 32) && (swift_getKeyPath(), *&v13 = a1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(a1 + 16) == 1))
  {

    v7 = sub_1000BD01C;
  }

  else
  {
    v7 = 0;
    a1 = 0;
  }

  v8 = static Edge.Set.horizontal.getter();
  v9 = static SafeAreaRegions.all.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v12[55] = v16;
  *&v12[71] = v17;
  *&v12[87] = v18;
  *&v12[103] = v19;
  *&v12[7] = v13;
  *&v12[23] = v14;
  *&v12[39] = v15;
  v10 = static Color.clear.getter();
  *(a2 + 105) = *&v12[64];
  *(a2 + 121) = *&v12[80];
  *(a2 + 137) = *&v12[96];
  *(a2 + 41) = *v12;
  *(a2 + 57) = *&v12[16];
  result = *&v12[32];
  *(a2 + 73) = *&v12[32];
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = a1;
  *(a2 + 32) = v9;
  *(a2 + 40) = v8;
  *(a2 + 89) = *&v12[48];
  *(a2 + 152) = *(&v19 + 1);
  *(a2 + 160) = v10;
  return result;
}

double sub_1000BCDDC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  sub_1000BCEDC(a3, a1);
  v5 = static Edge.Set.horizontal.getter();
  v6 = static SafeAreaRegions.all.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v11[7] = v12;
  *&v11[23] = v13;
  *&v11[39] = v14;

  GeometryProxy.size.getter();
  v8 = v7 * 0.5;
  GeometryProxy.size.getter();
  result = v9 * 0.5;
  *(a2 + 25) = *v11;
  *a2 = a1;
  *(a2 + 8) = 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 41) = *&v11[16];
  *(a2 + 57) = *&v11[32];
  *(a2 + 72) = *(&v14 + 1);
  *(a2 + 80) = v8;
  *(a2 + 88) = v9 * 0.5;
  return result;
}

double sub_1000BCEDC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(a2 + 40);
  if (v3)
  {
    [v3 videoFrameSize];
    if (v4 > 0.0 && v5 > 0.0)
    {
      sub_10002FAC4(COERCE__INT64(v5 / v4), 0);
    }
  }

  GeometryProxy.size.getter();
  v7 = v6;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = 1.0 / *(a2 + 48);
  if (*(a2 + 56))
  {
    v8 = 1.83333333;
  }

  v9 = v7 * v8;
  GeometryProxy.size.getter();
  return v9;
}

unint64_t sub_1000BD038()
{
  result = qword_10016F8C8;
  if (!qword_10016F8C8)
  {
    sub_10000459C(&qword_10016F8D0, &qword_100116FD8);
    sub_1000BD0F0();
    sub_100012C48(&qword_10016F908, &qword_10016F910, &qword_100116FF8, &protocol conformance descriptor for _EnvironmentBackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F8C8);
  }

  return result;
}

unint64_t sub_1000BD0F0()
{
  result = qword_10016F8D8;
  if (!qword_10016F8D8)
  {
    sub_10000459C(&qword_10016F8E0, &qword_100116FE0);
    sub_1000BD17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F8D8);
  }

  return result;
}

unint64_t sub_1000BD17C()
{
  result = qword_10016F8E8;
  if (!qword_10016F8E8)
  {
    sub_10000459C(&qword_10016F8F0, &qword_100116FE8);
    sub_100012C48(&qword_10016F8F8, &qword_10016F900, &qword_100116FF0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F8E8);
  }

  return result;
}

uint64_t sub_1000BD254(uint64_t a1)
{
  v2 = Device.productType.getter();
  v4 = v3;
  v5._countAndFlagsBits = v2;
  v5._object = v4;
  v6 = _findStringSwitchCase(cases:string:)(&off_100159AA0, v5);

  if (v6)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v6)
  {
    v8 = "_guestUserHandoverService";
  }

  else
  {
    v8 = "VisionProDeviceTitle";
  }

  type metadata accessor for Entity();
  v9 = swift_task_alloc();
  *(v1 + 24) = v9;
  *v9 = v1;
  v9[1] = sub_1000BD368;

  return Entity.init(named:in:)(v7, v8 | 0x8000000000000000, 0);
}

uint64_t sub_1000BD368(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000BD4A4, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1000BD4A4()
{
  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100181FE8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to load USDZ model: %@", v4, 0xCu);
    sub_1000077E0(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1000BD63C()
{
  if ([objc_opt_self() isMainThread])
  {
    v0 = Device.productType.getter();
    v2 = v1;
    v3._countAndFlagsBits = v0;
    v3._object = v2;
    _findStringSwitchCase(cases:string:)(&off_100159AA0, v3);

    type metadata accessor for Entity();
    v4 = static Entity.loadModel(named:in:)();

    return v4;
  }

  else
  {
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006B0C(v5, qword_100181FE8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "deviceModel() called from background thread - use deviceModelAsync() instead", v8, 2u);
    }

    return 0;
  }
}

uint64_t getEnumTagSinglePayload for DeviceTabViewModifier(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for DeviceTabViewModifier(_WORD *result, unsigned int a2, unsigned int a3)
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
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000BDA88@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v116 = a1;
  v121 = a3;
  v109 = sub_100002BE4(&qword_10016F918, &qword_100117098);
  __chkstk_darwin(v109);
  v110 = &v103 - v4;
  v120 = sub_100002BE4(&qword_10016F920, &qword_1001170A0);
  __chkstk_darwin(v120);
  v113 = &v103 - v5;
  v106 = sub_100002BE4(&qword_10016F928, &qword_1001170A8);
  v6 = __chkstk_darwin(v106);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v103 - v9;
  v115 = sub_100002BE4(&qword_10016F930, &qword_1001170B0);
  v11 = __chkstk_darwin(v115);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v104 = &v103 - v15;
  __chkstk_darwin(v14);
  v17 = &v103 - v16;
  v112 = sub_100002BE4(&qword_10016F938, &qword_1001170B8);
  v18 = __chkstk_darwin(v112);
  v103 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v105 = &v103 - v20;
  v117 = sub_100002BE4(&qword_10016F940, &qword_1001170C0);
  __chkstk_darwin(v117);
  v119 = &v103 - v21;
  v107 = sub_100002BE4(&qword_10016F948, &qword_1001170C8);
  __chkstk_darwin(v107);
  v108 = &v103 - v22;
  v118 = sub_100002BE4(&qword_10016F950, &qword_1001170D0);
  __chkstk_darwin(v118);
  v111 = &v103 - v23;
  v114 = sub_100002BE4(&qword_10016F958, &qword_1001170D8);
  v24 = __chkstk_darwin(v114);
  v26 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v103 - v28;
  __chkstk_darwin(v27);
  v31 = &v103 - v30;
  v32 = sub_100002BE4(&qword_10016F960, &qword_1001170E0);
  v33 = __chkstk_darwin(v32);
  v35 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33);
  v38 = &v103 - v37;
  if ((a2 & 1) == 0)
  {
    if ((a2 & 0x100) == 0)
    {
      v67 = static Edge.Set.horizontal.getter();
      EdgeInsets.init(_all:)();
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v75 = v74;
      v76 = sub_100002BE4(&qword_10016F968, &qword_1001170E8);
      (*(*(v76 - 8) + 16))(v8, v116, v76);
      v77 = &v8[*(v106 + 36)];
      *v77 = v67;
      *(v77 + 1) = v69;
      *(v77 + 2) = v71;
      *(v77 + 3) = v73;
      *(v77 + 4) = v75;
      v77[40] = 0;
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      sub_10001D504(v8, v13, &qword_10016F928, &qword_1001170A8);
      v78 = &v13[*(v115 + 36)];
      v79 = v134;
      *(v78 + 4) = v133;
      *(v78 + 5) = v79;
      *(v78 + 6) = v135;
      v80 = v130;
      *v78 = v129;
      *(v78 + 1) = v80;
      v81 = v132;
      *(v78 + 2) = v131;
      *(v78 + 3) = v81;
      v61 = &qword_10016F930;
      v62 = &qword_1001170B0;
      v63 = v104;
      sub_10001D504(v13, v104, &qword_10016F930, &qword_1001170B0);
      sub_10000C178(v63, v110, &qword_10016F930, &qword_1001170B0);
      swift_storeEnumTagMultiPayload();
      sub_1000BEAA4(&qword_10016F970, &qword_10016F958, &qword_1001170D8);
      sub_1000BE9F8();
      v64 = v113;
      _ConditionalContent<>.init(storage:)();
      v65 = &qword_10016F920;
      v66 = &qword_1001170A0;
      sub_10000C178(v64, v119, &qword_10016F920, &qword_1001170A0);
      goto LABEL_6;
    }

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v96 = sub_100002BE4(&qword_10016F968, &qword_1001170E8);
    (*(*(v96 - 8) + 16))(v26, v116, v96);
    v97 = &v26[*(v114 + 36)];
    v98 = v134;
    *(v97 + 4) = v133;
    *(v97 + 5) = v98;
    *(v97 + 6) = v135;
    v99 = v130;
    *v97 = v129;
    *(v97 + 1) = v99;
    v100 = v132;
    *(v97 + 2) = v131;
    *(v97 + 3) = v100;
    v94 = &qword_1001170D8;
    sub_10001D504(v26, v29, &qword_10016F958, &qword_1001170D8);
    sub_10000C178(v29, v110, &qword_10016F958, &qword_1001170D8);
    swift_storeEnumTagMultiPayload();
    sub_1000BEAA4(&qword_10016F970, &qword_10016F958, &qword_1001170D8);
    sub_1000BE9F8();
    v101 = v113;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v101, v119, &qword_10016F920, &qword_1001170A0);
    swift_storeEnumTagMultiPayload();
    sub_1000BEB1C();
    sub_1000BECDC();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v101, &qword_10016F920, &qword_1001170A0);
    v82 = v29;
    v83 = &qword_10016F958;
LABEL_9:
    v84 = v94;
    return sub_100009908(v82, v83, v84);
  }

  v39 = v36;
  if ((a2 & 0x100) != 0)
  {
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v85 = sub_100002BE4(&qword_10016F968, &qword_1001170E8);
    (*(*(v85 - 8) + 16))(v31, v116, v85);
    v86 = &v31[*(v114 + 36)];
    v87 = v127;
    *(v86 + 4) = v126;
    *(v86 + 5) = v87;
    *(v86 + 6) = v128;
    v88 = v123;
    *v86 = v122;
    *(v86 + 1) = v88;
    v89 = v125;
    *(v86 + 2) = v124;
    *(v86 + 3) = v89;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10001D504(v31, v35, &qword_10016F958, &qword_1001170D8);
    v90 = &v35[*(v39 + 36)];
    v91 = v134;
    *(v90 + 4) = v133;
    *(v90 + 5) = v91;
    *(v90 + 6) = v135;
    v92 = v130;
    *v90 = v129;
    *(v90 + 1) = v92;
    v93 = v132;
    *(v90 + 2) = v131;
    *(v90 + 3) = v93;
    v94 = &qword_1001170E0;
    sub_10001D504(v35, v38, &qword_10016F960, &qword_1001170E0);
    sub_10000C178(v38, v108, &qword_10016F960, &qword_1001170E0);
    swift_storeEnumTagMultiPayload();
    sub_1000BEBA8();
    sub_1000BEC50();
    v95 = v111;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v95, v119, &qword_10016F950, &qword_1001170D0);
    swift_storeEnumTagMultiPayload();
    sub_1000BEB1C();
    sub_1000BECDC();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v95, &qword_10016F950, &qword_1001170D0);
    v82 = v38;
    v83 = &qword_10016F960;
    goto LABEL_9;
  }

  v40 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = sub_100002BE4(&qword_10016F968, &qword_1001170E8);
  (*(*(v49 - 8) + 16))(v10, v116, v49);
  v50 = &v10[*(v106 + 36)];
  *v50 = v40;
  *(v50 + 1) = v42;
  *(v50 + 2) = v44;
  *(v50 + 3) = v46;
  *(v50 + 4) = v48;
  v50[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001D504(v10, v17, &qword_10016F928, &qword_1001170A8);
  v51 = &v17[*(v115 + 36)];
  v52 = v127;
  *(v51 + 4) = v126;
  *(v51 + 5) = v52;
  *(v51 + 6) = v128;
  v53 = v123;
  *v51 = v122;
  *(v51 + 1) = v53;
  v54 = v125;
  *(v51 + 2) = v124;
  *(v51 + 3) = v54;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v55 = v17;
  v56 = v103;
  sub_10001D504(v55, v103, &qword_10016F930, &qword_1001170B0);
  v57 = (v56 + *(v112 + 36));
  v58 = v134;
  v57[4] = v133;
  v57[5] = v58;
  v57[6] = v135;
  v59 = v130;
  *v57 = v129;
  v57[1] = v59;
  v60 = v132;
  v57[2] = v131;
  v57[3] = v60;
  v61 = &qword_10016F938;
  v62 = &qword_1001170B8;
  v63 = v105;
  sub_10001D504(v56, v105, &qword_10016F938, &qword_1001170B8);
  sub_10000C178(v63, v108, &qword_10016F938, &qword_1001170B8);
  swift_storeEnumTagMultiPayload();
  sub_1000BEBA8();
  sub_1000BEC50();
  v64 = v111;
  _ConditionalContent<>.init(storage:)();
  v65 = &qword_10016F950;
  v66 = &qword_1001170D0;
  sub_10000C178(v64, v119, &qword_10016F950, &qword_1001170D0);
LABEL_6:
  swift_storeEnumTagMultiPayload();
  sub_1000BEB1C();
  sub_1000BECDC();
  _ConditionalContent<>.init(storage:)();
  sub_100009908(v64, v65, v66);
  v82 = v63;
  v83 = v61;
  v84 = v62;
  return sub_100009908(v82, v83, v84);
}

uint64_t sub_1000BE978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1000BDA88(a1, v3 | *v2, a2);
}

unint64_t sub_1000BE994()
{
  result = qword_10016F978;
  if (!qword_10016F978)
  {
    sub_10000459C(&qword_10016F968, &qword_1001170E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F978);
  }

  return result;
}

unint64_t sub_1000BE9F8()
{
  result = qword_10016F980;
  if (!qword_10016F980)
  {
    sub_10000459C(&qword_10016F930, &qword_1001170B0);
    sub_1000BEAA4(&qword_10016F988, &qword_10016F928, &qword_1001170A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F980);
  }

  return result;
}

uint64_t sub_1000BEAA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    sub_1000BE994();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000BEB1C()
{
  result = qword_10016F990;
  if (!qword_10016F990)
  {
    sub_10000459C(&qword_10016F950, &qword_1001170D0);
    sub_1000BEBA8();
    sub_1000BEC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F990);
  }

  return result;
}

unint64_t sub_1000BEBA8()
{
  result = qword_10016F998;
  if (!qword_10016F998)
  {
    sub_10000459C(&qword_10016F960, &qword_1001170E0);
    sub_1000BEAA4(&qword_10016F970, &qword_10016F958, &qword_1001170D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F998);
  }

  return result;
}

unint64_t sub_1000BEC50()
{
  result = qword_10016F9A0;
  if (!qword_10016F9A0)
  {
    sub_10000459C(&qword_10016F938, &qword_1001170B8);
    sub_1000BE9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F9A0);
  }

  return result;
}

unint64_t sub_1000BECDC()
{
  result = qword_10016F9A8;
  if (!qword_10016F9A8)
  {
    sub_10000459C(&qword_10016F920, &qword_1001170A0);
    sub_1000BEAA4(&qword_10016F970, &qword_10016F958, &qword_1001170D8);
    sub_1000BE9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F9A8);
  }

  return result;
}

unint64_t sub_1000BED8C()
{
  result = qword_10016F9B0;
  if (!qword_10016F9B0)
  {
    sub_10000459C(&qword_10016F9B8, &unk_1001170F0);
    sub_1000BEB1C();
    sub_1000BECDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F9B0);
  }

  return result;
}

void *sub_1000BEE18()
{
  swift_getKeyPath();
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1000BEE90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1000BEF18(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100054D34();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016FC08, BKDevice_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void *sub_1000BF078()
{
  swift_getKeyPath();
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_1000BF0F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_1000BF178(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100054D34();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016FC30, SFAuthenticationManager_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_1000BF2D8()
{
  swift_getKeyPath();
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

void sub_1000BF348(char a1)
{
  if (*(v1 + 32) == (a1 & 1))
  {
    *(v1 + 32) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100054D34();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000BF428()
{
  swift_getKeyPath();
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1000BF4A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

double sub_1000BF524(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000BF564(v1, v2);
}

double sub_1000BF564(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 40) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100054D34();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return result;
}

uint64_t sub_1000BF704()
{
  v1 = v0;
  v2 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  ObservationRegistrar.init()();
  sub_100031904(0, &qword_10016FC08, BKDevice_ptr);
  v5 = [objc_opt_self() deviceDescriptorForType:2];
  v6 = sub_1000C16F8(v5);

  sub_1000BEF18(v6);
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = [objc_allocWithZone(SFAuthenticationManager) initWithQueue:v7];

  sub_1000BF178(v8);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_1000EE5F8(0, 0, v4, &unk_100112328, v10);

  return v1;
}

uint64_t sub_1000BFAB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_1000BFB44();
}

uint64_t sub_1000BFB44()
{
  *(v1 + 152) = v0;
  *(v1 + 160) = *v0;
  return _swift_task_switch(sub_1000BFB8C, 0, 0);
}

uint64_t sub_1000BFB8C()
{
  v23 = v0;
  if (qword_100168E98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = sub_100006B0C(v1, qword_1001820F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100006B44(v6, v7, &v22);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s checkingEligibleDevices", v4, 0xCu);
    sub_1000052E4(v5);
  }

  v9 = v0[19];
  swift_getKeyPath();
  v0[22] = OBJC_IVAR____TtC17AppleVisionProApp29PasscodeAndBiometricsProvider___observationRegistrar;
  v0[10] = v9;
  v0[23] = sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v9 + 24);
  v0[24] = v10;
  if (v10)
  {
    v11 = v10;
    if ([v11 isSupportedForType:12])
    {
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_1000BFF5C;
      v12 = swift_continuation_init();
      v0[17] = sub_100002BE4(&qword_10016FC18, &unk_100117238);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_1000C04D0;
      v0[13] = &unk_10015E508;
      v0[14] = v12;
      [v11 listCandidateDevicesForType:12 completionHandler:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    v17 = _typeName(_:qualified:)();
    v19 = sub_100006B44(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s visionUnlockiOSPairing is not supported", v15, 0xCu);
    sub_1000052E4(v16);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1000BFF5C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1000C0300;
  }

  else
  {
    v2 = sub_1000C006C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C006C()
{
  v21 = v0;
  v1 = v0[18];

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100006B44(v5, v6, v20);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    sub_100031904(0, &qword_10016FC20, SFAuthenticationDevice_ptr);
    sub_1000C1894();
    v8 = Set.description.getter();
    v10 = sub_100006B44(v8, v9, v20);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s listCandidateDevices: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *(v1 + 16);
  }

  v12 = v0[19];

  v13 = (v11 > 0) ^ *(v12 + 32);
  v14 = v0[24];
  v15 = v11 > 0;
  if (v13)
  {
    v16 = v0[19];
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    v0[10] = v16;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {

    *(v12 + 32) = v15;
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000C0300(uint64_t a1)
{
  v16 = v1;
  swift_willThrow();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 192);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s checkEligibleDevices error: %@", v6, 0x16u);
    sub_1000077E0(v7);

    sub_1000052E4(v8);
  }

  else
  {
  }

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_1000C04D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000524C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002BE4(&qword_10016BBA0, &qword_1001110E0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100031904(0, &qword_10016FC20, SFAuthenticationDevice_ptr);
    sub_1000C1894();
    **(*(v4 + 64) + 40) = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000C05CC()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.forceShowAllSettingsTips.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 BOOLForKey:v3];

  if (v4)
  {
    if (qword_100168E98 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006B0C(v5, qword_1001820F0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v40 = v9;
      *v8 = 136315138;
      v10 = _typeName(_:qualified:)();
      v12 = sub_100006B44(v10, v11, &v40);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s makeMessage: returning debug text", v8, 0xCu);
      sub_1000052E4(v9);
    }

    return 0xD000000000000022;
  }

  swift_getKeyPath();
  v40 = v1;
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v1 + 24);
  if (v14)
  {
    v15 = v14;
    if ([v15 isSupportedForType:12])
    {
      if ([objc_opt_self() autoUnlockSupported])
      {
        swift_getKeyPath();
        v40 = v1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v1 + 32) == 1)
        {
          if (sub_1000C137C() & 1) != 0 && (sub_1000C0BF4())
          {
            if (sub_1000C11A0())
            {
              v16 = 0;
              v17 = 0;
LABEL_25:
              if (qword_100168E98 != -1)
              {
                swift_once();
              }

              v27 = type metadata accessor for Logger();
              sub_100006B0C(v27, qword_1001820F0);

              v28 = Logger.logObject.getter();
              v29 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v28, v29))
              {
                v30 = swift_slowAlloc();
                v40 = swift_slowAlloc();
                *v30 = 136315394;
                v31 = _typeName(_:qualified:)();
                v33 = sub_100006B44(v31, v32, &v40);

                *(v30 + 4) = v33;
                *(v30 + 12) = 2080;
                v34 = v17;
                v35 = v17 == 0;
                v36 = v16;
                if (v35)
                {
                  v37 = 7104878;
                }

                else
                {
                  v37 = v16;
                }

                if (v35)
                {
                  v38 = 0xE300000000000000;
                }

                else
                {
                  v38 = v34;
                }

                v39 = sub_100006B44(v37, v38, &v40);

                *(v30 + 14) = v39;
                _os_log_impl(&_mh_execute_header, v28, v29, "%s makeMessage: %s", v30, 0x16u);
                swift_arrayDestroy();

                return v36;
              }

              else
              {

                return v16;
              }
            }

            if (qword_100168FA8 != -1)
            {
              swift_once();
            }

            v26 = &qword_10016F9D0;
          }

          else
          {
            if (qword_100168FA0 != -1)
            {
              swift_once();
            }

            v26 = &qword_10016F9C0;
          }

          v16 = *v26;
          v17 = v26[1];

          goto LABEL_25;
        }
      }
    }
  }

  if (qword_100168E98 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006B0C(v18, qword_1001820F0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40 = v22;
    *v21 = 136315138;
    v23 = _typeName(_:qualified:)();
    v25 = sub_100006B44(v23, v24, &v40);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s will not make message as preliminary checks have failed", v21, 0xCu);
    sub_1000052E4(v22);
  }

  return 0;
}

uint64_t sub_1000C0BF4()
{
  swift_getKeyPath();
  v36 = v0;
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0[2];
  if (!v1)
  {
    if (qword_100168E98 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006B0C(v9, qword_1001820F0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v36 = v13;
      *v12 = 136315138;
      v14 = _typeName(_:qualified:)();
      v16 = sub_100006B44(v14, v15, &v36);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s device is nil", v12, 0xCu);
      sub_1000052E4(v13);
    }

LABEL_14:

    return 0;
  }

  v36 = 0;
  v2 = v1;
  v3 = [v2 identitiesWithError:&v36];
  v4 = v36;
  if (!v3)
  {
    v17 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100168E98 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006B0C(v18, qword_1001820F0);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v10, v19))
    {

      return 0;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v22;
    *v20 = 136315394;
    v23 = _typeName(_:qualified:)();
    v25 = sub_100006B44(v23, v24, &v36);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2112;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v10, v19, "%s isEnrolledInFaceID error: %@", v20, 0x16u);
    sub_1000077E0(v21);

    sub_1000052E4(v22);

    goto LABEL_14;
  }

  v5 = v3;
  sub_100031904(0, &qword_10016FC10, BKIdentity_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v4;

  if (v6 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_5;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_5:

    return 1;
  }

  if (qword_100168E98 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006B0C(v27, qword_1001820F0);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v30 = 136315394;
    v32 = _typeName(_:qualified:)();
    v34 = sub_100006B44(v32, v33, &v36);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2048;
    if (v6 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v35 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v30 + 14) = v35;

    _os_log_impl(&_mh_execute_header, v28, v29, "%s identity count is: %ld", v30, 0x16u);
    sub_1000052E4(v31);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return 0;
}

id sub_1000C11A0()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result effectiveBoolValueForSetting:MCFeatureFingerprintUnlockAllowed];

    if (qword_100168E98 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006B0C(v3, qword_1001820F0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = sub_100006B44(v8, v9, &v11);

      *(v6 + 4) = v10;
      *(v6 + 12) = 1024;
      *(v6 + 14) = v2 == 1;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s isFingerprintUnlockAllowed: %{BOOL}d", v6, 0x12u);
      sub_1000052E4(v7);
    }

    return (v2 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000C137C()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isPasscodeSet];

    if (qword_100168E98 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006B0C(v3, qword_1001820F0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = sub_100006B44(v8, v9, &v11);

      *(v6 + 4) = v10;
      *(v6 + 12) = 1024;
      *(v6 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s isPasscodeSet: %{BOOL}d", v6, 0x12u);
      sub_1000052E4(v7);
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C1540()
{

  v1 = OBJC_IVAR____TtC17AppleVisionProApp29PasscodeAndBiometricsProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PasscodeAndBiometricsProvider(uint64_t a1)
{
  result = qword_10016FA10;
  if (!qword_10016FA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C1648(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

id sub_1000C16F8(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() deviceWithDescriptor:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1000C17BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000C1800(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000BEF18(v1);
}

void sub_1000C1834(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000BF178(v1);
}

unint64_t sub_1000C1894()
{
  result = qword_10016FC28;
  if (!qword_10016FC28)
  {
    sub_100031904(255, &qword_10016FC20, SFAuthenticationDevice_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FC28);
  }

  return result;
}

double sub_1000C1900(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000BF564(v1, v2);
}

void sub_1000C1940()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_1000C19A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000C1A74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TetsuoDiscoverPageShelf(uint64_t a1)
{
  result = qword_10016FC90;
  if (!qword_10016FC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C1B70(uint64_t a1)
{
  sub_1000C1C04(319);
  if (v1 <= 0x3F)
  {
    sub_10001EB04(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000C1C04(uint64_t a1)
{
  if (!qword_10016FCA0)
  {
    sub_1000C1C60();
    v1 = type metadata accessor for _CodeByKind_Many();
    if (!v2)
    {
      atomic_store(v1, &qword_10016FCA0);
    }
  }
}

unint64_t sub_1000C1C60()
{
  result = qword_10016FCA8;
  if (!qword_10016FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FCA8);
  }

  return result;
}

uint64_t sub_1000C1CB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000C1CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C1D4C(void *a1)
{
  v3 = v1;
  v5 = sub_100002BE4(&qword_10016FD18, &qword_100117420);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  sub_10000524C(a1, a1[3]);
  sub_1000C2E0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[0] = *v3;
  v16 = 0;
  sub_100002BE4(&qword_10016FD00, &qword_100117418);
  sub_100012C48(&qword_10016FD20, &qword_10016FD00, &qword_100117418, &protocol conformance descriptor for _CodeByKind_Many<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v15[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = type metadata accessor for TetsuoDiscoverPageShelf(0);
    LOBYTE(v15[0]) = 2;
    sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    sub_1000C304C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v3 + *(v10 + 28);
    v12 = *v11;
    v14 = *(v11 + 1);
    v13 = *(v11 + 2);
    LOBYTE(v15[0]) = v12;
    v15[1] = v14;
    v15[2] = v13;
    v16 = 3;
    sub_1000C31CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000C1FF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  __chkstk_darwin(v4);
  v6 = &v32 - v5;
  v37 = sub_100002BE4(&qword_10016FCF0, &qword_100117410);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v32 - v7;
  v9 = type metadata accessor for TetsuoDiscoverPageShelf(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for ImpressionMetrics();
  v15 = *(*(v14 - 8) + 56);
  v38 = v12;
  v39 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v40 = a1;
  sub_10000524C(a1, v16);
  sub_1000C2E0C();
  v36 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v19 = v39;
    sub_1000052E4(v40);
    return sub_1000C2E60(v38 + v19);
  }

  else
  {
    v33 = v4;
    v17 = v6;
    v18 = v35;
    sub_100002BE4(&qword_10016FD00, &qword_100117418);
    v44 = 0;
    sub_100012C48(&qword_10016FD08, &qword_10016FD00, &qword_100117418, &protocol conformance descriptor for _CodeByKind_Many<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v38;
    *v38 = v41;
    LOBYTE(v41) = 1;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v39;
    v23 = v18;
    v20[1] = v21;
    v20[2] = v24;
    LOBYTE(v41) = 2;
    sub_100012C48(&qword_10016DBE0, &qword_10016A118, &unk_10010EEF0, &protocol conformance descriptor for CodeByExpressibleByJSON<A>);
    v33 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v20;
    sub_1000C2EC8(v17, v20 + v22);
    v44 = 3;
    sub_1000C2F38();
    v27 = v36;
    v26 = v37;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v27, v26);
    v28 = v42;
    v29 = v43;
    v30 = v25 + *(v9 + 28);
    *v30 = v41;
    *(v30 + 8) = v28;
    *(v30 + 16) = v29;
    sub_1000C2F8C(v25, v34);
    sub_1000052E4(v40);
    return sub_1000C2FF0(v25);
  }
}

unint64_t sub_1000C243C()
{
  v1 = 0x736D657469;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x61746E6573657270;
  }

  if (*v0)
  {
    v1 = 25705;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000C24B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000C3290(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000C24DC(uint64_t a1)
{
  v2 = sub_1000C2E0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C2518(uint64_t a1)
{
  v2 = sub_1000C2E0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C2554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
}

uint64_t sub_1000C25A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_1000C3220(v2 + *(a1 + 24), &v9 - v6);
  return sub_1000200DC(v7, a2);
}

uint64_t sub_1000C2640@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t sub_1000C264C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E6F7A69726F68;
  }

  else
  {
    v3 = 0x6C61636974726576;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v5 = 0x746E6F7A69726F68;
  }

  else
  {
    v5 = 0x6C61636974726576;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006C61;
  }

  else
  {
    v6 = 0xE800000000000000;
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

Swift::Int sub_1000C26F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1000C2780(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1000C27F4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C2878(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A010, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1000C28D8(uint64_t *a1@<X8>)
{
  v2 = 0x6C61636974726576;
  if (*v1)
  {
    v2 = 0x746E6F7A69726F68;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000C29CC(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = sub_100002BE4(&qword_10016FD60, &qword_100117430);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000524C(a1, a1[3]);
  sub_1000C35B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2 & 1;
  v14 = 0;
  sub_1000C3660();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000C2B88()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 0x7461746E6569726FLL;
  }
}

void sub_1000C2BC8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1000C2CA4(uint64_t a1)
{
  v2 = sub_1000C35B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C2CE0(uint64_t a1)
{
  v2 = sub_1000C35B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C2D1C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000C33F4(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_1000C2E0C()
{
  result = qword_10016FCF8;
  if (!qword_10016FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FCF8);
  }

  return result;
}

uint64_t sub_1000C2E60(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C2EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C2F38()
{
  result = qword_10016FD10;
  if (!qword_10016FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD10);
  }

  return result;
}

uint64_t sub_1000C2F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetsuoDiscoverPageShelf(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C2FF0(uint64_t a1)
{
  v2 = type metadata accessor for TetsuoDiscoverPageShelf(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000C304C()
{
  result = qword_10016FD28;
  if (!qword_10016FD28)
  {
    sub_10000459C(&qword_10016A118, &unk_10010EEF0);
    sub_1000C30D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD28);
  }

  return result;
}

unint64_t sub_1000C30D0()
{
  result = qword_10016FD30;
  if (!qword_10016FD30)
  {
    sub_10000459C(&qword_10016A198, &qword_10010EF20);
    sub_1000C3184(&qword_10016FD38, &type metadata accessor for ImpressionMetrics, &protocol conformance descriptor for ImpressionMetrics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD30);
  }

  return result;
}

uint64_t sub_1000C3184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000C31CC()
{
  result = qword_10016FD40;
  if (!qword_10016FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD40);
  }

  return result;
}

uint64_t sub_1000C3220(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C3290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010011D5D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000C33F4(void *a1)
{
  v3 = sub_100002BE4(&qword_10016FD48, &qword_100117428);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_10000524C(a1, v7);
  sub_1000C35B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    sub_1000C360C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000052E4(a1);
  return v7;
}

unint64_t sub_1000C35B8()
{
  result = qword_10016FD50;
  if (!qword_10016FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD50);
  }

  return result;
}

unint64_t sub_1000C360C()
{
  result = qword_10016FD58;
  if (!qword_10016FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD58);
  }

  return result;
}

unint64_t sub_1000C3660()
{
  result = qword_10016FD68;
  if (!qword_10016FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD68);
  }

  return result;
}

unint64_t sub_1000C372C()
{
  result = qword_10016FD80;
  if (!qword_10016FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD80);
  }

  return result;
}

unint64_t sub_1000C3784()
{
  result = qword_10016FD88;
  if (!qword_10016FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD88);
  }

  return result;
}

unint64_t sub_1000C37DC()
{
  result = qword_10016FD90;
  if (!qword_10016FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD90);
  }

  return result;
}

unint64_t sub_1000C3834()
{
  result = qword_10016FD98;
  if (!qword_10016FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD98);
  }

  return result;
}

unint64_t sub_1000C388C()
{
  result = qword_10016FDA0;
  if (!qword_10016FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FDA0);
  }

  return result;
}

unint64_t sub_1000C38E4()
{
  result = qword_10016FDA8;
  if (!qword_10016FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FDA8);
  }

  return result;
}

unint64_t sub_1000C393C()
{
  result = qword_10016FDB0;
  if (!qword_10016FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FDB0);
  }

  return result;
}

unint64_t sub_1000C3990()
{
  result = qword_10016FDB8;
  if (!qword_10016FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FDB8);
  }

  return result;
}

uint64_t sub_1000C39E4(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_1000C3A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C3A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000C3A88(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1000C3AE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x646E696B24;
  if (v2 != 1)
  {
    v4 = 0x746E65746E69;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7463416775626564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  v7 = 0xE500000000000000;
  v8 = 0x646E696B24;
  if (*a2 != 1)
  {
    v8 = 0x746E65746E69;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7463416775626564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB000000006E6F69;
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

Swift::Int sub_1000C3BDC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1000C3C80(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1000C3D10(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C3DB0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C7E94(*a1);
  *a2 = result;
  return result;
}

void sub_1000C3DE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0xE500000000000000;
  v5 = 0x646E696B24;
  if (v2 != 1)
  {
    v5 = 0x746E65746E69;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7463416775626564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000C3E40()
{
  v1 = 0x646E696B24;
  if (*v0 != 1)
  {
    v1 = 0x746E65746E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463416775626564;
  }
}

unint64_t sub_1000C3E9C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C7E94(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C3EC4(uint64_t a1)
{
  v2 = sub_1000C625C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C3F00(uint64_t a1)
{
  v2 = sub_1000C625C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C3F3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v95 = a2;
  v87 = type metadata accessor for TetsuoDiscoverPageView(0);
  __chkstk_darwin(v87);
  v79 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100002BE4(&qword_10016FEA0, &qword_100117AD0);
  __chkstk_darwin(v88);
  v86 = &v76 - v3;
  v94 = sub_100002BE4(&qword_10016FEA8, &unk_100117F80);
  __chkstk_darwin(v94);
  v89 = &v76 - v4;
  v5 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  v6 = __chkstk_darwin(v5);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v76 - v9;
  v11 = sub_100002BE4(&qword_10016FEB0, &qword_100117AD8);
  v80 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v76 - v12;
  v14 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  __chkstk_darwin(v14 - 8);
  v16 = &v76 - v15;
  v17 = type metadata accessor for URL();
  v78 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100002BE4(&qword_10016FEB8, &unk_100117F70);
  __chkstk_darwin(v83);
  v21 = &v76 - v20;
  v91 = sub_100002BE4(&qword_10016FEC0, &qword_100117AE0);
  __chkstk_darwin(v91);
  v93 = &v76 - v22;
  v82 = sub_100002BE4(&qword_10016FEC8, &qword_100117AE8);
  __chkstk_darwin(v82);
  v81 = (&v76 - v23);
  v92 = sub_100002BE4(&qword_10016FED0, &unk_100117AF0);
  __chkstk_darwin(v92);
  v84 = &v76 - v24;
  sub_1000C7D44(v90, &v120);
  if (!v123)
  {
    v77 = v19;
    v38 = v78;
    v87 = v10;
    v88 = v8;
    v89 = v5;
    v90 = v21;
    v39 = v13;
    v107 = v120;
    v108 = v121;
    *&v109 = v122;
    sub_10002BFD4(&v107, &v96);
    sub_100002BE4(&qword_10016FE20, &qword_100117928);
    if (swift_dynamicCast())
    {
      v40 = v119;
      v86 = v118;
      URL.init(string:)();
      v41 = v38;
      v42 = v17;
      if ((*(v38 + 48))(v16, 1, v17) != 1)
      {
        v55 = v77;
        (*(v38 + 32))(v77, v16, v42);
        type metadata accessor for MetricsPipeline();
        v76 = v42;
        v56 = type metadata accessor for TVPageView(0);
        BaseObjectGraph.inject<A>(_:)();
        (*(v41 + 16))(v39, v55, v42);
        v57 = v39 + v56[7];
        type metadata accessor for BasicImpressionsTracker();
        v118 = BasicImpressionsTracker.__allocating_init(threshold:)();
        v119 = &protocol witness table for BasicImpressionsTracker;
        sub_100002BE4(&qword_10016A6F8, &unk_10010F740);
        State.init(wrappedValue:)();
        v58 = v97;
        *v57 = v96;
        *(v57 + 16) = v58;
        v59 = v56[8];
        v118 = 0;
        sub_100002BE4(&unk_10016E398, &qword_100117BA0);
        State.init(wrappedValue:)();
        *(v39 + v59) = v96;
        v60 = type metadata accessor for Date();
        v61 = v41;
        v62 = v87;
        (*(*(v60 - 8) + 56))(v87, 1, 1, v60);
        v85 = v40;
        sub_10000C178(v62, v88, &qword_10016B420, &qword_100110790);
        State.init(wrappedValue:)();
        sub_100009908(v62, &qword_10016B420, &qword_100110790);
        (*(v61 + 8))(v77, v76);
        v63 = v56[10];
        *(v39 + v63) = swift_getKeyPath();
        sub_100002BE4(&qword_10016A568, &unk_10010F530);
        swift_storeEnumTagMultiPayload();
        v64 = (v39 + v56[5]);
        v65 = v85;
        *v64 = v86;
        v64[1] = v65;
        v66 = (v39 + *(v11 + 36));
        *v66 = sub_1000C4EA4;
        v66[1] = 0;
        v66[2] = 0;
        v66[3] = 0;
        v44 = v90;
        sub_10001D504(v39, v90, &qword_10016FEB0, &qword_100117AD8);
        v43 = 0;
        goto LABEL_13;
      }

      sub_100009908(v16, &qword_10016BA40, &qword_100110FC0);
    }

    v43 = 1;
    v44 = v90;
LABEL_13:
    (*(v80 + 56))(v44, v43, 1, v11);
    sub_10000C178(v44, v81, &qword_10016FEB8, &unk_100117F70);
    swift_storeEnumTagMultiPayload();
    sub_100002BE4(&qword_10016FF20, &qword_100117B90);
    sub_1000C80C4();
    sub_1000C81F8();
    v67 = v84;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v67, v93, &qword_10016FED0, &unk_100117AF0);
    swift_storeEnumTagMultiPayload();
    sub_1000C8038();
    sub_1000C8380();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v67, &qword_10016FED0, &unk_100117AF0);
    sub_100009908(v44, &qword_10016FEB8, &unk_100117F70);
    v36 = &qword_10016FE78;
    v37 = &qword_100117978;
    goto LABEL_14;
  }

  if (v123 == 1)
  {
    v107 = v120;
    v108 = v121;
    *&v109 = v122;
    v25 = v79;
    sub_10002BFD4(&v107, v79);
    type metadata accessor for MetricsPipeline();
    v26 = v87;
    BaseObjectGraph.inject<A>(_:)();
    v27 = v25 + v26[6];
    type metadata accessor for BasicImpressionsTracker();
    v118 = BasicImpressionsTracker.__allocating_init(threshold:)();
    v119 = &protocol witness table for BasicImpressionsTracker;
    sub_100002BE4(&qword_10016A6F8, &unk_10010F740);
    State.init(wrappedValue:)();
    v28 = v97;
    *v27 = v96;
    *(v27 + 16) = v28;
    v29 = (v25 + v26[7]);
    v118 = 0;
    State.init(wrappedValue:)();
    v30 = *(&v96 + 1);
    *v29 = v96;
    v29[1] = v30;
    v31 = (v25 + v26[8]);
    type metadata accessor for AppDelegate(0);
    sub_1000C8338(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
    *v31 = EnvironmentObject.init()();
    v31[1] = v32;
    v33 = v26[9];
    *(v25 + v33) = swift_getKeyPath();
    sub_100002BE4(&qword_10016A488, &qword_10010F480);
    swift_storeEnumTagMultiPayload();
    v34 = v26[10];
    *(v25 + v34) = swift_getKeyPath();
    sub_100002BE4(&qword_10016A570, &unk_100113970);
    swift_storeEnumTagMultiPayload();
    sub_1000C7EF0(v25, v86);
    swift_storeEnumTagMultiPayload();
    sub_100002BE4(&qword_10016FED8, &unk_100117B70);
    sub_1000C8174(&qword_10016FEE0, &qword_10016FED8, &unk_100117B70, sub_1000C7F54);
    sub_1000C8338(&qword_10016FF08, type metadata accessor for TetsuoDiscoverPageView, &unk_10010F750);
    v35 = v89;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v35, v93, &qword_10016FEA8, &unk_100117F80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8038();
    sub_1000C8380();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v35, &qword_10016FEA8, &unk_100117F80);
    sub_1000C8468(v25);
    v36 = &qword_10016FE68;
    v37 = &qword_100117970;
LABEL_14:
    v52 = &v107;
    return sub_100009908(v52, v36, v37);
  }

  if (*(&v121 + 1) | v122 | v120 | v121 | *(&v120 + 1))
  {
    v45 = static HorizontalAlignment.center.getter();
    v46 = static Color.blue.getter();
    v47 = static Edge.Set.all.getter();
    LOBYTE(v96) = 1;
    LOBYTE(v118) = 1;
    v107 = v45;
    LOBYTE(v108) = 1;
    *(&v108 + 1) = 0;
    LOBYTE(v109) = 1;
    *(&v109 + 1) = v46;
    LOBYTE(v110) = v47;
    *(&v110 + 1) = sub_1000C501C;
    v111 = 0uLL;
    *&v112 = 0;
    v48 = v110;
    v49 = v86;
    *(v86 + 32) = v109;
    *(v49 + 48) = v48;
    *(v49 + 64) = v111;
    *(v49 + 80) = 0;
    v50 = v108;
    *v49 = v107;
    *(v49 + 16) = v50;
    swift_storeEnumTagMultiPayload();
    sub_10000C178(&v107, &v96, &qword_10016FED8, &unk_100117B70);
    sub_100002BE4(&qword_10016FED8, &unk_100117B70);
    sub_1000C8174(&qword_10016FEE0, &qword_10016FED8, &unk_100117B70, sub_1000C7F54);
    sub_1000C8338(&qword_10016FF08, type metadata accessor for TetsuoDiscoverPageView, &unk_10010F750);
    v51 = v89;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v51, v93, &qword_10016FEA8, &unk_100117F80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8038();
    sub_1000C8380();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(&v107, &qword_10016FED8, &unk_100117B70);
    v52 = v51;
    v36 = &qword_10016FEA8;
    v37 = &unk_100117F80;
  }

  else
  {
    static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
    String.utf8CString.getter();

    has_internal_ui = os_variant_has_internal_ui();

    if (has_internal_ui)
    {

      sub_1000B6808(v54, 1, &v96);
      *&v105 = sub_1000C4E84;
      *(&v105 + 1) = 0;
      v106 = 0uLL;
      FeatureEligibilityState.rawValue.getter();
      v115 = v104;
      v116 = v105;
      v117 = v106;
      v111 = v100;
      v112 = v101;
      v113 = v102;
      v114 = v103;
      v107 = v96;
      v108 = v97;
      v109 = v98;
      v110 = v99;
    }

    else
    {
      sub_1000C84E8(&v107);
    }

    v69 = v116;
    v70 = v81;
    v81[8] = v115;
    v70[9] = v69;
    v70[10] = v117;
    v71 = v112;
    v70[4] = v111;
    v70[5] = v71;
    v72 = v114;
    v70[6] = v113;
    v70[7] = v72;
    v73 = v108;
    *v70 = v107;
    v70[1] = v73;
    v74 = v110;
    v70[2] = v109;
    v70[3] = v74;
    swift_storeEnumTagMultiPayload();
    sub_10000C178(&v107, &v96, &qword_10016FF20, &qword_100117B90);
    sub_100002BE4(&qword_10016FF20, &qword_100117B90);
    sub_1000C80C4();
    sub_1000C81F8();
    v75 = v84;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v75, v93, &qword_10016FED0, &unk_100117AF0);
    swift_storeEnumTagMultiPayload();
    sub_1000C8038();
    sub_1000C8380();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(&v107, &qword_10016FF20, &qword_100117B90);
    v52 = v75;
    v36 = &qword_10016FED0;
    v37 = &unk_100117AF0;
  }

  return sub_100009908(v52, v36, v37);
}

void sub_1000C4EC4(uint64_t (*a1)(void), const char *a2, ...)
{
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100182048);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100006B44(0x74736544776F6C46, 0xEF6E6F6974616E69, &v9);
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 0xCu);
    sub_1000052E4(v7);
  }
}

uint64_t sub_1000C503C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016FDC0, &qword_1001178A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-1] - v7;
  sub_10000524C(a1, a1[3]);
  sub_1000C625C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v27[0]) = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v9;
    v12 = v10 == 0x6775626564 && v9 == 0xE500000000000000;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      (*(v6 + 8))(v8, v5);

      v13 = 0;
      v14 = 0uLL;
      v15 = 2;
      v16 = 0uLL;
    }

    else
    {
      v18 = v10 == 0x656761507674 && v11 == 0xE600000000000000;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        LOBYTE(v24) = 2;
        KeyedDecodingContainer.superDecoder(forKey:)();
        sub_10002BFD4(v27, v23);
        sub_1000C5498(v23, &v24);
        sub_1000052E4(v27);
        (*(v6 + 8))(v8, v5);
        v15 = 0;
        v14 = v24;
        v16 = v25;
      }

      else
      {
        v19 = v10 == 0x7974706D65 && v11 == 0xE500000000000000;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          (*(v6 + 8))(v8, v5);

          v13 = 0;
          v14 = xmmword_1001177B0;
          v16 = 0uLL;
          v15 = 2;
          goto LABEL_8;
        }

        if (v10 == 0xD00000000000001CLL && 0x800000010011F910 == v11)
        {
        }

        else
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v21 & 1) == 0)
          {
            sub_10000524C(a1, a1[3]);
            dispatch thunk of Decoder.unkeyedContainer()();
            type metadata accessor for DecodingError();
            swift_allocError();
            static DecodingError.dataCorruptedError(in:debugDescription:)();
            sub_1000052E4(v27);
            swift_willThrow();
            (*(v6 + 8))(v8, v5);
            return sub_1000052E4(a1);
          }
        }

        LOBYTE(v24) = 2;
        KeyedDecodingContainer.superDecoder(forKey:)();
        sub_10002BFD4(v27, v23);
        sub_1000C59D8(v23, &v24);
        sub_1000052E4(v27);
        (*(v6 + 8))(v8, v5);
        v14 = v24;
        v16 = v25;
        v15 = 1;
      }

      v13 = v26;
    }

LABEL_8:
    *a2 = v14;
    *(a2 + 16) = v16;
    *(a2 + 32) = v13;
    *(a2 + 40) = v15;
  }

  return sub_1000052E4(a1);
}

uint64_t sub_1000C5498@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v40 = a2;
  v4 = sub_100002BE4(&qword_10016FDD0, &qword_1001178B0);
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v43 = &v39 - v5;
  v6 = sub_100002BE4(&qword_10016FDD8, &qword_1001178B8);
  v7 = __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v39 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = (&v39 - v14);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = a1[3];
  v50 = a1;
  sub_10000524C(a1, v18);
  sub_1000C62B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    *v15 = v2;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10001D504(v12, v15, &qword_10016FDD8, &qword_1001178B8);
  }

  sub_10001D504(v15, v17, &qword_10016FDD8, &qword_1001178B8);
  sub_10000C178(v17, v9, &qword_10016FDD8, &qword_1001178B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100009908(v9, &qword_10016FDD8, &qword_1001178B8);
LABEL_9:
    v22 = sub_100002BE4(&qword_10016FDE8, &qword_1001178C0);
    v23 = v50;
    sub_1000C7448(v22, v50, &v46);
    goto LABEL_10;
  }

  v20 = v41;
  v19 = v42;
  v21 = v43;
  (*(v41 + 32))(v43, v9, v42);
  v39 = xmmword_1001177C0;
  v46 = xmmword_1001177C0;
  v47 = 1;
  if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
  {
    (*(v20 + 8))(v21, v19);
    goto LABEL_9;
  }

  v46 = v39;
  v47 = 1;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v27;
  v29 = sub_1000C70B8();
  if (!*(v29 + 16) || (v30 = sub_10006889C(v26, v28), (v31 & 1) == 0))
  {

    v46 = v39;
    v47 = 1;
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v44 = 0xD000000000000051;
    v45 = 0x800000010011F960;
    v35._countAndFlagsBits = v26;
    v35._object = v28;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 96;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100012C48(&qword_10016FDF0, &qword_10016FDD0, &qword_1001178B0, &protocol conformance descriptor for KeyedDecodingContainer<A>);
    v37 = v43;
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();

    swift_willThrow();
    (*(v20 + 8))(v37, v19);
    sub_100009908(v17, &qword_10016FDD8, &qword_1001178B8);
    v23 = v50;
    return sub_1000052E4(v23);
  }

  v32 = v30;

  v33 = *(*(v29 + 56) + 8 * v32);

  v34 = v33;
  v23 = v50;
  sub_1000C7448(v34, v50, &v46);
  (*(v20 + 8))(v43, v19);
LABEL_10:
  sub_100009908(v17, &qword_10016FDD8, &qword_1001178B8);
  sub_10002BF6C(&v46, v48);
  v24 = v48[1];
  v25 = v40;
  *v40 = v48[0];
  v25[1] = v24;
  *(v25 + 4) = v49;
  return sub_1000052E4(v23);
}

uint64_t sub_1000C59D8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v40 = a2;
  v4 = sub_100002BE4(&qword_10016FDD0, &qword_1001178B0);
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v43 = &v39 - v5;
  v6 = sub_100002BE4(&qword_10016FDD8, &qword_1001178B8);
  v7 = __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v39 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = (&v39 - v14);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = a1[3];
  v50 = a1;
  sub_10000524C(a1, v18);
  sub_1000C62B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    *v15 = v2;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10001D504(v12, v15, &qword_10016FDD8, &qword_1001178B8);
  }

  sub_10001D504(v15, v17, &qword_10016FDD8, &qword_1001178B8);
  sub_10000C178(v17, v9, &qword_10016FDD8, &qword_1001178B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100009908(v9, &qword_10016FDD8, &qword_1001178B8);
LABEL_9:
    v22 = sub_100002BE4(&qword_10016FE48, &qword_100117950);
    v23 = v50;
    sub_1000C71E4(v22, v50, &v46);
    goto LABEL_10;
  }

  v20 = v41;
  v19 = v42;
  v21 = v43;
  (*(v41 + 32))(v43, v9, v42);
  v39 = xmmword_1001177C0;
  v46 = xmmword_1001177C0;
  v47 = 1;
  if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
  {
    (*(v20 + 8))(v21, v19);
    goto LABEL_9;
  }

  v46 = v39;
  v47 = 1;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v27;
  v29 = sub_1000C6F8C();
  if (!*(v29 + 16) || (v30 = sub_10006889C(v26, v28), (v31 & 1) == 0))
  {

    v46 = v39;
    v47 = 1;
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v44 = 0xD00000000000005BLL;
    v45 = 0x800000010011FA00;
    v35._countAndFlagsBits = v26;
    v35._object = v28;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 96;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100012C48(&qword_10016FDF0, &qword_10016FDD0, &qword_1001178B0, &protocol conformance descriptor for KeyedDecodingContainer<A>);
    v37 = v43;
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();

    swift_willThrow();
    (*(v20 + 8))(v37, v19);
    sub_100009908(v17, &qword_10016FDD8, &qword_1001178B8);
    v23 = v50;
    return sub_1000052E4(v23);
  }

  v32 = v30;

  v33 = *(*(v29 + 56) + 8 * v32);

  v34 = v33;
  v23 = v50;
  sub_1000C71E4(v34, v50, &v46);
  (*(v20 + 8))(v43, v19);
LABEL_10:
  sub_100009908(v17, &qword_10016FDD8, &qword_1001178B8);
  sub_10002BF6C(&v46, v48);
  v24 = v48[1];
  v25 = v40;
  *v40 = v48[0];
  v25[1] = v24;
  *(v25 + 4) = v49;
  return sub_1000052E4(v23);
}

uint64_t sub_1000C5F18(void *a1)
{
  v3 = v1;
  v5 = sub_100002BE4(&qword_10016FE60, &qword_100117968);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10000524C(a1, a1[3]);
  sub_1000C625C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000C7D44(v3, &v20);
  if (!v23)
  {
    v17 = v20;
    v18 = v21;
    v19 = v22;
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      v9 = &qword_10016FE78;
      v10 = &qword_100117978;
      goto LABEL_11;
    }

    v16 = 2;
    v11 = &qword_10016FE78;
    v12 = &qword_100117978;
    sub_100002BE4(&qword_10016FE78, &qword_100117978);
    v13 = &unk_10016FE80;
LABEL_10:
    sub_100012C48(v13, v11, v12, &protocol conformance descriptor for CodeByKind<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = v11;
    v10 = v12;
    goto LABEL_11;
  }

  if (v23 == 1)
  {
    v17 = v20;
    v18 = v21;
    v19 = v22;
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      v9 = &qword_10016FE68;
      v10 = &qword_100117970;
LABEL_11:
      sub_100009908(&v17, v9, v10);
      return (*(v6 + 8))(v8, v5);
    }

    v16 = 2;
    v11 = &qword_10016FE68;
    v12 = &qword_100117970;
    sub_100002BE4(&qword_10016FE68, &qword_100117970);
    v13 = &unk_10016FE70;
    goto LABEL_10;
  }

  LOBYTE(v17) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000C625C()
{
  result = qword_10016FDC8;
  if (!qword_10016FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FDC8);
  }

  return result;
}

unint64_t sub_1000C62B0()
{
  result = qword_10016FDE0;
  if (!qword_10016FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FDE0);
  }

  return result;
}

void *sub_1000C6304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v98 = a2;
  v88 = a3;
  v4 = type metadata accessor for JSONObject();
  __chkstk_darwin(v4 - 8);
  v87 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for AnyIntentTypes();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v91 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016FE30, &qword_100117938);
  v8 = __chkstk_darwin(v7 - 8);
  v89 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v81 - v10;
  v92 = sub_100002BE4(&qword_10016FE38, &unk_100117940);
  v12 = *(v92 - 8);
  v13 = __chkstk_darwin(v92);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v90 = &v81 - v17;
  __chkstk_darwin(v16);
  v19 = &v81 - v18;
  v20 = type metadata accessor for JSONContext();
  v96 = *(v20 - 8);
  v97 = v20;
  v21 = __chkstk_darwin(v20);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v81 - v25;
  v27 = __chkstk_darwin(v24);
  v104 = &v81 - v28;
  __chkstk_darwin(v27);
  v30 = &v81 - v29;
  v31 = a1;
  v32 = sub_1000C7C18(a1, a1, &protocol descriptor for IntentModel, &protocol descriptor for Decodable);
  if (v32)
  {
    v86 = v33;
    v87 = v34;
    v89 = v32;
    sub_10000524C(v98, *(v98 + 24));
    dispatch thunk of Decoder.userInfo.getter();
    JSONContext.init(userInfo:)();
    static JSONContext.Property<A>.intentTypes.getter();
    v35 = v95;
    JSONContext.subscript.getter();
    v36 = *(v12 + 8);
    v37 = v92;
    v36(v19, v92);
    v38 = v93;
    v39 = (*(v93 + 48))(v11, 1, v35);
    sub_100009908(v11, &qword_10016FE30, &qword_100117938);
    v40 = v97;
    if (v39 == 1)
    {
      sub_1000C7CF0();
      v41 = v91;
      AnyIntentTypes.init(_:)();
      v42 = v90;
      static JSONContext.Property<A>.intentTypes.getter();
      JSONContext.addingValue<A>(_:forProperty:)();
      v43 = v42;
      v40 = v97;
      v36(v43, v37);
      (*(v38 + 8))(v41, v35);
      v44 = v96;
      (*(v96 + 8))(v30, v40);
      (*(v44 + 32))(v30, v104, v40);
    }

    sub_10000524C(v98, *(v98 + 24));
    v45 = v96;
    (*(v96 + 16))(v104, v30, v40);
    Dictionary<>.init(jsonContext:)();
    Decoder.withUserInfo(_:)();

    *&v102 = v89;
    *(&v102 + 1) = v86;
    v103 = v87;
    sub_100020014(&v100);
    v46 = v94;
    dispatch thunk of Decodable.init(from:)();
    if (v46)
    {
      (*(v45 + 8))(v30, v40);
      return sub_1000C7CA0(&v100);
    }

    v98 = v102;
    v66 = v102;
    v67 = sub_10000524C(&v100, v102);
    v68 = v88;
    *(v88 + 24) = v98;
    v69 = sub_100020014(v68);
    (*(*(v66 - 8) + 16))(v69, v67, v66);
    (*(v45 + 8))(v30, v40);
    return sub_1000052E4(&v100);
  }

  v48 = v89;
  v85 = v23;
  v86 = v26;
  v49 = v12;
  v50 = v95;
  v51 = v31;
  v52 = sub_1000C7C18(v31, v31, &protocol descriptor for ExpressibleByJSON, &protocol descriptor for IntentModel);
  if (v52)
  {
    v82 = v54;
    v83 = v53;
    v84 = v52;
    sub_10000524C(v98, *(v98 + 24));
    dispatch thunk of Decoder.userInfo.getter();
    v55 = v86;
    JSONContext.init(userInfo:)();
    static JSONContext.Property<A>.intentTypes.getter();
    v56 = v48;
    v57 = v55;
    JSONContext.subscript.getter();
    v58 = *(v49 + 8);
    v59 = v92;
    v58(v15, v92);
    v60 = v93;
    LODWORD(v55) = (*(v93 + 48))(v56, 1, v50);
    sub_100009908(v56, &qword_10016FE30, &qword_100117938);
    v61 = v96;
    if (v55 == 1)
    {
      sub_1000C7CF0();
      v62 = v91;
      AnyIntentTypes.init(_:)();
      v63 = v90;
      static JSONContext.Property<A>.intentTypes.getter();
      JSONContext.addingValue<A>(_:forProperty:)();
      v58(v63, v59);
      (*(v60 + 8))(v62, v50);
      v64 = v97;
      (*(v61 + 8))(v86, v97);
      v57 = v86;
      (*(v61 + 32))(v86, v104, v64);
    }

    sub_10002BFD4(v98, v99);
    v65 = v94;
    JSONObject.init(from:)();
    if (v65)
    {
      return (*(v61 + 8))(v57, v97);
    }

    v75 = v97;
    (*(v61 + 16))(v85, v57, v97);
    *&v102 = v84;
    *(&v102 + 1) = v83;
    v103 = v82;
    sub_100020014(&v100);
    dispatch thunk of ExpressibleByJSON.init(deserializing:using:)();
    v76 = v102;
    v77 = v103;
    v78 = sub_10000524C(&v100, v102);
    v79 = v88;
    *(v88 + 24) = v76;
    v79[4] = v77;
    v80 = sub_100020014(v79);
    (*(*(v76 - 8) + 16))(v80, v78, v76);
    (*(v61 + 8))(v57, v75);
    return sub_1000052E4(&v100);
  }

  v70 = type metadata accessor for DecodingError();
  swift_allocError();
  v72 = v71;
  sub_100002BE4(&qword_100169D10, &qword_100119030);
  *v72 = v51;
  sub_10000524C(v98, *(v98 + 24));
  dispatch thunk of Decoder.codingPath.getter();
  v100 = 0;
  v101 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v100 = 60;
  v101 = 0xE100000000000000;
  v73._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v73);

  v74._object = 0x800000010011F9E0;
  v74._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v74);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v70 - 8) + 104))(v72, enum case for DecodingError.typeMismatch(_:), v70);
  return swift_willThrow();
}

void sub_1000C6D64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002BE4(&qword_10016FE00, &qword_1001178D0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
        v14 = *v12;
        v13 = v12[1];

        sub_100002BE4(&qword_10016FE08, &qword_1001178D8);
        sub_100002BE4(&qword_10016FE10, &qword_1001178E0);
        swift_dynamicCast();
        v15 = sub_10006889C(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1000C6F8C()
{
  if (qword_100168FC0 != -1)
  {
    swift_once();
  }

  sub_1000C6D64(qword_1001821E0);
  v1 = v0;
  type metadata accessor for TetsuoDiscoverFeedPage(0);
  v2 = static StaticIntent.kind.getter();
  v4 = v3;
  v5 = sub_100002BE4(&qword_10016FE48, &qword_100117950);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000C76AC(v5, v2, v4, isUniquelyReferenced_nonNull_native);

  v7 = static SidepackedIntent.kind.getter();
  v9 = v8;
  v10 = sub_100002BE4(&qword_10016FE50, &qword_100117958);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000C76AC(v10, v7, v9, v11);

  return v1;
}

uint64_t sub_1000C70B8()
{
  if (qword_100168FC0 != -1)
  {
    swift_once();
  }

  sub_1000C6D64(qword_1001821E0);
  v1 = v0;
  v2 = static StaticIntent.kind.getter();
  v4 = v3;
  v5 = sub_100002BE4(&qword_10016FDE8, &qword_1001178C0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000C76AC(v5, v2, v4, isUniquelyReferenced_nonNull_native);

  v7 = static SidepackedIntent.kind.getter();
  v9 = v8;
  v10 = sub_100002BE4(&qword_10016FDF8, &qword_1001178C8);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000C76AC(v10, v7, v9, v11);

  return v1;
}

void *sub_1000C71E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1000C6304(a1, a2, v18);
  if (!v3)
  {
    sub_10002BFD4(v18, v17);
    sub_100002BE4(&qword_10016FE18, &qword_1001178E8);
    sub_100002BE4(&qword_10016FE58, &qword_100117960);
    if (swift_dynamicCast())
    {
      sub_10002BF6C(&v16, a3);
    }

    else
    {
      v7 = type metadata accessor for EncodingError();
      swift_allocError();
      v9 = v8;
      sub_100002BE4(&qword_10016FE28, &qword_100117930);
      v10 = v19;
      v11 = sub_10000524C(v18, v19);
      v9[3] = v10;
      v12 = sub_100020014(v9);
      (*(*(v10 - 8) + 16))(v12, v11, v10);
      sub_10000524C(a2, a2[3]);
      dispatch thunk of Decoder.codingPath.getter();
      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      sub_10000524C(v18, v19);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v13._object = 0x800000010011F9C0;
      v13._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v13);
      v14._countAndFlagsBits = 0xD000000000000016;
      v14._object = 0x800000010011FA60;
      String.append(_:)(v14);
      v15._countAndFlagsBits = 62;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, enum case for EncodingError.invalidValue(_:), v7);
      swift_willThrow();
    }

    return sub_1000052E4(v18);
  }

  return result;
}

void *sub_1000C7448@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1000C6304(a1, a2, v18);
  if (!v3)
  {
    sub_10002BFD4(v18, v17);
    sub_100002BE4(&qword_10016FE18, &qword_1001178E8);
    sub_100002BE4(&qword_10016FE20, &qword_100117928);
    if (swift_dynamicCast())
    {
      sub_10002BF6C(&v16, a3);
    }

    else
    {
      v7 = type metadata accessor for EncodingError();
      swift_allocError();
      v9 = v8;
      sub_100002BE4(&qword_10016FE28, &qword_100117930);
      v10 = v19;
      v11 = sub_10000524C(v18, v19);
      v9[3] = v10;
      v12 = sub_100020014(v9);
      (*(*(v10 - 8) + 16))(v12, v11, v10);
      sub_10000524C(a2, a2[3]);
      dispatch thunk of Decoder.codingPath.getter();
      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      sub_10000524C(v18, v19);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v13._object = 0x800000010011F9C0;
      v13._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v13);
      v14._countAndFlagsBits = 0x6E49656761505654;
      v14._object = 0xEC000000746E6574;
      String.append(_:)(v14);
      v15._countAndFlagsBits = 62;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, enum case for EncodingError.invalidValue(_:), v7);
      swift_willThrow();
    }

    return sub_1000052E4(v18);
  }

  return result;
}

unint64_t sub_1000C76AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10006889C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000C7978(v16, a4 & 1);
      result = sub_10006889C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000C7810();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_1000C7810()
{
  v1 = v0;
  sub_100002BE4(&qword_10016FE00, &qword_1001178D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1000C7978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002BE4(&qword_10016FE00, &qword_1001178D0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_1000C7C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_1000C7CA0(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

unint64_t sub_1000C7CF0()
{
  result = qword_10016FE40;
  if (!qword_10016FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FE40);
  }

  return result;
}

unint64_t sub_1000C7D90()
{
  result = qword_10016FE88;
  if (!qword_10016FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FE88);
  }

  return result;
}

unint64_t sub_1000C7DE8()
{
  result = qword_10016FE90;
  if (!qword_10016FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FE90);
  }

  return result;
}

unint64_t sub_1000C7E40()
{
  result = qword_10016FE98;
  if (!qword_10016FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FE98);
  }

  return result;
}

unint64_t sub_1000C7E94(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A060, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000C7EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetsuoDiscoverPageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C7F54()
{
  result = qword_10016FEE8;
  if (!qword_10016FEE8)
  {
    sub_10000459C(&qword_10016FEF0, &unk_100117F90);
    sub_100012C48(&qword_10016FEF8, &qword_10016FF00, &unk_100117B80, &protocol conformance descriptor for VStack<A>);
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FEE8);
  }

  return result;
}

unint64_t sub_1000C8038()
{
  result = qword_10016FF10;
  if (!qword_10016FF10)
  {
    sub_10000459C(&qword_10016FED0, &unk_100117AF0);
    sub_1000C80C4();
    sub_1000C81F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FF10);
  }

  return result;
}

unint64_t sub_1000C80C4()
{
  result = qword_10016FF18;
  if (!qword_10016FF18)
  {
    sub_10000459C(&qword_10016FF20, &qword_100117B90);
    sub_1000C8174(&qword_10016FF28, &qword_10016FF30, &qword_100117B98, sub_100091DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FF18);
  }

  return result;
}

uint64_t sub_1000C8174(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C81F8()
{
  result = qword_10016FF38;
  if (!qword_10016FF38)
  {
    sub_10000459C(&qword_10016FEB8, &unk_100117F70);
    sub_1000C827C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FF38);
  }

  return result;
}

unint64_t sub_1000C827C()
{
  result = qword_10016FF40;
  if (!qword_10016FF40)
  {
    sub_10000459C(&qword_10016FEB0, &qword_100117AD8);
    sub_1000C8338(&qword_10016FF48, type metadata accessor for TVPageView, &unk_100115058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FF40);
  }

  return result;
}

uint64_t sub_1000C8338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000C8380()
{
  result = qword_10016FF50;
  if (!qword_10016FF50)
  {
    sub_10000459C(&qword_10016FEA8, &unk_100117F80);
    sub_1000C8174(&qword_10016FEE0, &qword_10016FED8, &unk_100117B70, sub_1000C7F54);
    sub_1000C8338(&qword_10016FF08, type metadata accessor for TetsuoDiscoverPageView, &unk_10010F750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FF50);
  }

  return result;
}

uint64_t sub_1000C8468(uint64_t a1)
{
  v2 = type metadata accessor for TetsuoDiscoverPageView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000C84E8(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1000C8508()
{
  v0 = type metadata accessor for ActionMetrics();
  v21 = *(v0 - 8);
  v22 = v0;
  __chkstk_darwin(v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002BE4(&qword_10016FF58, &qword_100117BD8);
  v3 = (type metadata accessor for FlowAction(0) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10010D3B0;
  v6 = (v5 + v4);
  v7 = static ActionMetrics.notInstrumented.getter();
  v20 = sub_1000C86F8(v7);
  v9 = v8;
  v11 = v10;
  v12 = sub_1000C88E4();
  v13 = static FlowActionPresentation.tabSelect.getter();
  v15 = v14;
  *v6 = 0xD000000000000013;
  v6[1] = 0x800000010011FAA0;
  result = (*(v21 + 32))(v5 + v4 + v3[7], v2, v22);
  v17 = v5 + v4 + v3[8];
  *v17 = v20;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = &type metadata for TetsuoDiscoverFeedPageIntent;
  *(v17 + 32) = v12;
  *(v17 + 40) = 1;
  v18 = (v5 + v4 + v3[9]);
  *v18 = v13;
  v18[1] = v15;
  qword_1001821D8 = v5;
  return result;
}

uint64_t sub_1000C86F8(uint64_t a1)
{
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (!has_internal_ui)
  {
    return 0x3836313339333736;
  }

  v2 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.discoveryFeedToUse.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 stringForKey:v3];

  if (!v4)
  {
    return 0x3836313339333736;
  }

  v5 = 0x3532373039373031;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == 0x3532373039373031 && v8 == 0xEB00000000323934 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_6;
  }

  if (v6 == 0x3836313339333736 && v8 == 0xEA00000000003335 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0x3836313339333736;
  }

  v5 = 0x3639393230343736;
  if (v6 != 0x3639393230343736 || v8 != 0xEA00000000003134)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v5;
    }

    return 0x3836313339333736;
  }

LABEL_6:

  return v5;
}

unint64_t sub_1000C88E4()
{
  result = qword_10016FF60;
  if (!qword_10016FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FF60);
  }

  return result;
}

id sub_1000C8938()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v12, "init");
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100182048);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - Creating JS Logging Service", v5, 0xCu);
    sub_1000052E4(v6);
  }

  return v1;
}

void sub_1000C8BCC(void *a1, uint64_t (*a2)(void))
{
  v3 = [a1 toString];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (qword_100168E68 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006B0C(v8, qword_100182060);

    oslog = Logger.logObject.getter();
    v9 = a2();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      v12 = sub_100006B44(v5, v7, &v14);

      *(v10 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v9, "%s", v10, 0xCu);
      sub_1000052E4(v11);
    }

    else
    {
    }
  }
}

void sub_1000C8D84()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x5F455341454C4552;
  v1._object = 0xED00005345544F4ELL;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_10016FF90 = v4;
}

id sub_1000C8ECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LearnMoreLinkWebView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000C8F4C()
{
  result = qword_100170030;
  if (!qword_100170030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170030);
  }

  return result;
}

void *sub_1000C8FA8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for LearnMoreLinkWebView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV17AppleVisionProApp20LearnMoreLinkWebView11Coordinator_onClose];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_1000C901C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C910C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000C9080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C910C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000C90E4(uint64_t a1)
{
  sub_1000C910C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000C910C()
{
  result = qword_100170038;
  if (!qword_100170038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170038);
  }

  return result;
}

id sub_1000C9160()
{
  v0 = objc_allocWithZone(WKUserScript);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSource:v1 injectionTime:1 forMainFrameOnly:1];

  v3 = [objc_allocWithZone(WKUserContentController) init];
  [v3 addUserScript:v2];
  v4 = [objc_allocWithZone(WKWebViewConfiguration) init];
  [v4 setUserContentController:v3];
  v5 = [objc_allocWithZone(WKWebView) initWithFrame:v4 configuration:{0.0, 0.0, 0.0, 0.0}];
  v6 = String._bridgeToObjectiveC()();

  sub_100002BE4(&unk_100170040, &unk_100117D20);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v5 setNavigationDelegate:v14];

  v7 = [objc_allocWithZone(UIViewController) init];
  [v7 setView:v5];
  v8 = [v7 navigationItem];
  UIViewControllerRepresentableContext.coordinator.getter();
  v9 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v14 action:"onCloseButtonTapped"];

  [v8 setRightBarButtonItem:v9];
  v10 = [v7 navigationItem];
  if (qword_100168FB8 != -1)
  {
    swift_once();
  }

  v11 = String._bridgeToObjectiveC()();
  [v10 setTitle:v11];

  v12 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v7];
  return v12;
}

void sub_1000C9450(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 112);
  if (v4 <= a1)
  {
    v4 = a1;
  }

  *(v1 + 112) = v4;
  if (qword_100168E38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100181FD0);
  swift_retain_n();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315650;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2048;
    v13 = *(v2 + 112);

    *(v8 + 24) = v13;

    _os_log_impl(&_mh_execute_header, v6, v7, "%s did display item at: %ld; lowestItemDisplayed: %ld", v8, 0x20u);
    sub_1000052E4(v9);
  }

  else
  {
  }
}

void sub_1000C9624()
{
  if (*(v0 + 112) >= 1)
  {
    v1 = v0;
    if (qword_100168E38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006B0C(v2, qword_100181FD0);
    swift_retain_n();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      v7 = _typeName(_:qualified:)();
      v9 = sub_100006B44(v7, v8, &v11);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2048;
      v10 = *(v1 + 112);

      *(v5 + 14) = v10;

      _os_log_impl(&_mh_execute_header, v3, v4, "%s submitting lowestItemDisplayed: %ld", v5, 0x16u);
      sub_1000052E4(v6);
    }

    else
    {
    }

    sub_10004C818(*(v1 + 112));
    *(v1 + 112) = 0;
  }
}

uint64_t sub_1000C97F4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C9878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for JetStartUpCoordinator();
  v7 = *(started - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, started);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000C9958(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for JetStartUpCoordinator();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for DiscoveryFeedView(uint64_t a1)
{
  result = qword_100170178;
  if (!qword_100170178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C9A60(uint64_t a1)
{
  type metadata accessor for JetStartUpCoordinator();
  if (v1 <= 0x3F)
  {
    sub_1000C9AE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000C9AE4()
{
  if (!qword_100170188)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100170188);
    }
  }
}

Swift::Int sub_1000C9B40()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1000C9C0C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1000C9CC4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C9D8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CD9A0(*a1);
  *a2 = result;
  return result;
}

void sub_1000C9DBC(uint64_t *a1@<X8>)
{
  v2 = 0xED00006465747261;
  v3 = 0x7453746559746F6ELL;
  v4 = 0x73736563637573;
  if (*v1 != 2)
  {
    v4 = 0x6572756C696166;
  }

  if (*v1)
  {
    v3 = 0x676E6964616F6CLL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_1000C9E48()
{
  result = qword_1001701B8;
  if (!qword_1001701B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001701B8);
  }

  return result;
}

uint64_t sub_1000C9EB8@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_100002BE4(&qword_1001701C0, &qword_100117EB8);
  __chkstk_darwin(v2);
  v4 = (&v18 - v3);
  v19 = sub_100002BE4(&qword_1001701C8, &qword_100117EC0);
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - v6;
  *v4 = static Alignment.center.getter();
  v4[1] = v8;
  v9 = sub_100002BE4(&qword_1001701D0, &qword_100117EC8);
  sub_1000CA18C(v1, v4 + *(v9 + 44));
  v10 = type metadata accessor for DiscoveryFeedStateProvider(0);
  swift_allocObject();
  sub_10000C8CC();
  v11 = sub_100012C48(&qword_1001701D8, &qword_1001701C0, &qword_100117EB8, &protocol conformance descriptor for ZStack<A>);
  v12 = sub_1000CD958(&qword_100169930, type metadata accessor for DiscoveryFeedStateProvider, &unk_10010D308);
  View.environment<A>(_:)();

  sub_1000CCF98(v4);
  v13 = v1 + *(type metadata accessor for DiscoveryFeedView(0) + 20);
  v14 = *v13;
  v15 = *(v13 + 8);
  LOBYTE(v21) = v14;
  v22 = v15;
  sub_100002BE4(&qword_1001701E0, &qword_100117ED0);
  State.wrappedValue.getter();
  v21 = v2;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  swift_getOpaqueTypeConformance2();
  sub_1000C9E48();
  v16 = v19;
  View.onChange<A>(of:initial:_:)();
  return (*(v5 + 8))(v7, v16);
}

void sub_1000CA18C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  started = type metadata accessor for JetStartUpDecoration();
  v49 = *(started - 8);
  v50 = started;
  __chkstk_darwin(started);
  v48 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for JetStartUpCoordinator();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DiscoveryFeedView(0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100002BE4(&qword_1001701E8, &qword_100117ED8);
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_100002BE4(&qword_1001701F0, &qword_100117EE0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v47 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v44 = &v37 - v17;
  type metadata accessor for AppDelegate(0);
  sub_1000CD958(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
  v18 = EnvironmentObject.init()();
  v42 = v19;
  v43 = v18;
  if (qword_100168F20 != -1)
  {
    swift_once();
  }

  v52 = qword_100182178;
  type metadata accessor for ProductPagePresentation(0);

  State.init(wrappedValue:)();
  v39 = v54;
  v40 = v53;
  sub_1000CD064(a1, &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1;
  v21 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v22 = swift_allocObject();
  sub_1000CD1B4(&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  (*(v5 + 16))(v7, v20, v41);
  sub_100002BE4(&qword_1001701F8, &qword_100117EE8);
  type metadata accessor for _JetViewDefaultWorking();
  type metadata accessor for _JetViewDefaultFailed();
  sub_100012C48(&qword_100170200, &qword_1001701F8, &qword_100117EE8, &protocol conformance descriptor for SubscriptionView<A, B>);
  sub_1000CD958(&qword_100170208, &type metadata accessor for _JetViewDefaultWorking, &protocol conformance descriptor for _JetViewDefaultWorking);
  sub_1000CD958(&qword_100170210, &type metadata accessor for _JetViewDefaultFailed, &protocol conformance descriptor for _JetViewDefaultFailed);
  Jet.init(startUpWith:working:failed:content:)();
  v24 = v48;
  v23 = v49;
  v25 = v50;
  (*(v49 + 104))(v48, enum case for JetStartUpDecoration.none(_:), v50);
  sub_100012C48(&qword_100170218, &qword_1001701E8, &qword_100117ED8, &protocol conformance descriptor for Jet<A, B, C>);
  v26 = v44;
  v27 = v46;
  View.startUpDecoration(_:)();
  (*(v23 + 8))(v24, v25);
  (*(v45 + 8))(v12, v27);
  v28 = *(v14 + 16);
  v29 = v47;
  v28(v47, v26, v13);
  v30 = v51;
  v31 = v42;
  v32 = v43;
  *v51 = v43;
  *(v30 + 1) = v31;
  v33 = v39;
  *(v30 + 2) = v40;
  *(v30 + 3) = v33;
  v34 = sub_100002BE4(&qword_100170220, &qword_100117EF0);
  v28(&v30[*(v34 + 48)], v29, v13);
  v35 = *(v14 + 8);
  v36 = v32;

  v35(v26, v13);
  v35(v29, v13);
}

uint64_t sub_1000CA82C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DiscoveryFeedView(0);
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(v4 - 8);
  started = type metadata accessor for JetStartUpCoordinator();
  v7 = *(started - 8);
  __chkstk_darwin(started);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Dependency();
  v10 = *(v24 - 8);
  __chkstk_darwin(v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, started);
  Dependency.init<A>(satisfying:with:)();
  v13 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  sub_1000CAB6C(v13, a2);
  sub_1000CD064(a1, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v15 = swift_allocObject();
  sub_1000CD1B4(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *(v15 + ((v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  v16 = (a2 + *(sub_100002BE4(&qword_100170228, &unk_100117EF8) + 36));
  *v16 = sub_1000CD398;
  v16[1] = v15;
  v16[2] = 0;
  v16[3] = 0;
  v17 = objc_opt_self();

  v18 = [v17 defaultCenter];
  v19 = String._bridgeToObjectiveC()();
  v20 = sub_100002BE4(&qword_1001701F8, &qword_100117EE8);
  NSNotificationCenter.publisher(for:object:)();

  result = (*(v10 + 8))(v12, v24);
  v22 = (a2 + *(v20 + 56));
  *v22 = sub_1000CC768;
  v22[1] = 0;
  return result;
}

uint64_t sub_1000CAB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v37 = a2;
  v3 = sub_100002BE4(&qword_100170238, &qword_100117F30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v29 - v5;
  v7 = sub_100002BE4(&qword_100170240, &qword_100117F38);
  __chkstk_darwin(v7);
  v9 = v29 - v8;
  v33 = sub_100002BE4(&qword_100170248, &qword_100117F40);
  __chkstk_darwin(v33);
  v35 = v29 - v10;
  v11 = sub_100002BE4(&qword_100170250, &unk_100117F48);
  __chkstk_darwin(v11);
  v36 = v29 - v12;
  v13 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  v14 = __chkstk_darwin(v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v29 - v17;
  v34 = sub_100002BE4(&qword_100170258, &qword_100117F58);
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = v29 - v19;
  v20 = (v2 + *(type metadata accessor for DiscoveryFeedView(0) + 20));
  v21 = *v20;
  v22 = *(v20 + 1);
  v39 = v21;
  v40 = v22;
  sub_100002BE4(&qword_1001701E0, &qword_100117ED0);
  State.wrappedValue.getter();
  if (v38 >= 2u)
  {
    v29[1] = v11;
    v29[2] = v3;
    if (v38 == 2)
    {
      BaseObjectGraph.inject<A>(_:)();
      sub_10000C178(v18, v16, &unk_100170700, &unk_1001153F0);
      v29[0] = type metadata accessor for FlowAction(0);

      sub_100002BE4(&qword_100170280, &unk_100117F60);
      sub_1000CD958(&qword_100170288, type metadata accessor for FlowAction, &unk_100118494);
      sub_1000CD958(&qword_100170740, type metadata accessor for FlowAction, &unk_10011840C);
      sub_1000CD8CC();
      v24 = v30;
      FlowView.init(following:tabLabels:destinations:)();
      sub_100009908(v18, &unk_100170700, &unk_1001153F0);
      v25 = v31;
      v26 = v34;
      (*(v31 + 16))(v35, v24, v34);
      swift_storeEnumTagMultiPayload();
      sub_100012C48(&qword_100170268, &qword_100170258, &qword_100117F58, &protocol conformance descriptor for FlowView<A, B, C>);
      sub_1000CD84C();
      v27 = v36;
      _ConditionalContent<>.init(storage:)();
      sub_10000C178(v27, v9, &qword_100170250, &unk_100117F48);
      swift_storeEnumTagMultiPayload();
      sub_1000CD794();
      sub_100012C48(&qword_100170278, &qword_100170238, &qword_100117F30, &protocol conformance descriptor for LoadingView<A>);
      _ConditionalContent<>.init(storage:)();
      sub_100009908(v27, &qword_100170250, &unk_100117F48);
      return (*(v25 + 8))(v24, v26);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_100012C48(&qword_100170268, &qword_100170258, &qword_100117F58, &protocol conformance descriptor for FlowView<A, B, C>);
      sub_1000CD84C();
      v28 = v36;
      _ConditionalContent<>.init(storage:)();
      sub_10000C178(v28, v9, &qword_100170250, &unk_100117F48);
      swift_storeEnumTagMultiPayload();
      sub_1000CD794();
      sub_100012C48(&qword_100170278, &qword_100170238, &qword_100117F30, &protocol conformance descriptor for LoadingView<A>);
      _ConditionalContent<>.init(storage:)();
      return sub_100009908(v28, &qword_100170250, &unk_100117F48);
    }
  }

  else
  {
    LoadingView.init<>()();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_1000CD794();
    sub_100012C48(&qword_100170278, &qword_100170238, &qword_100117F30, &protocol conformance descriptor for LoadingView<A>);
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }
}

double sub_1000CB2C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryFeedView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1000CD064(a1, v7);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_1000CD1B4(v7, v15 + v13);
  *(v15 + v14) = a2;
  sub_1000EE5F8(0, 0, v10, &unk_100117F10, v15);

  return result;
}

uint64_t sub_1000CB4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_100079BE8;

  return sub_1000CB55C();
}

uint64_t sub_1000CB55C()
{
  v1[16] = v0;
  sub_100002BE4(&qword_1001707B0, &qword_100117F20);
  v1[17] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[18] = v2;
  v1[19] = type metadata accessor for MainActor();
  v1[20] = static MainActor.shared.getter();
  v1[21] = type metadata accessor for Bag();
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_1000CB680;

  return BaseObjectGraph.inject<A>(_:)(v2);
}

uint64_t sub_1000CB680()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_1000CC228;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_1000CB804;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_1000CB804()
{
  v32 = v0;
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v1 - 8);
  (*(v4 + 56))(v2, 0, 1, v1);
  sub_10000C178(v2, v3, &qword_1001707B0, &qword_100117F20);
  if ((*(v4 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 136);

    sub_100009908(v5, &qword_1001707B0, &qword_100117F20);
    if (qword_100168E48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006B0C(v6, qword_100182000);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100006B44(0xD000000000000011, 0x8000000100117D90, &v31);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s error fetching user region.", v9, 0xCu);
      sub_1000052E4(v10);
    }

    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    v13 = (v12 + *(type metadata accessor for DiscoveryFeedView(0) + 20));
    v14 = *v13;
    v15 = *(v13 + 1);
    *(v0 + 40) = v14;
    *(v0 + 48) = v15;
    *(v0 + 240) = 3;
    sub_100002BE4(&qword_1001701E0, &qword_100117ED0);
    State.wrappedValue.setter();
    sub_100009908(v11, &qword_1001707B0, &qword_100117F20);

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 168);
  v20 = *(v0 + 128);
  v19 = *(v0 + 136);
  v21 = Bag.amsBag.getter();
  (*(v4 + 8))(v19, v18);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 BOOLForKey:v22];
  *(v0 + 184) = v23;

  swift_unknownObjectRelease();
  v24 = (v20 + *(type metadata accessor for DiscoveryFeedView(0) + 20));
  v25 = *v24;
  *(v0 + 246) = *v24;
  v26 = *(v24 + 1);
  *(v0 + 56) = v25;
  *(v0 + 192) = v26;
  *(v0 + 64) = v26;
  *(v0 + 200) = sub_100002BE4(&qword_1001701E0, &qword_100117ED0);
  State.wrappedValue.getter();
  if (*(v0 + 241) <= 1u && !*(v0 + 241))
  {

LABEL_13:
    *(v0 + 104) = v25;
    *(v0 + 112) = v26;
    *(v0 + 245) = 1;
    State.wrappedValue.setter();
    goto LABEL_14;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_13;
  }

LABEL_14:
  v28 = static MainActor.shared.getter();
  *(v0 + 208) = v28;
  v29 = swift_task_alloc();
  *(v0 + 216) = v29;
  *(v29 + 16) = v23;
  v30 = swift_task_alloc();
  *(v0 + 224) = v30;
  *v30 = v0;
  v30[1] = sub_1000CBD44;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 242, v28, &protocol witness table for MainActor, 0xD00000000000002CLL, 0x800000010011FDD0, sub_1000CD64C, v29, &type metadata for DiscoveryFeedView.DiscoveryLoadingState);
}

uint64_t sub_1000CBD44()
{
  *(*v1 + 232) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1000CBFC0;
  }

  else
  {
    v4 = sub_1000CBEE0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000CBEE0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 246);
  v3 = *(v0 + 184);
  v4 = *(v0 + 144);

  v5 = *(v0 + 242);
  *(v0 + 88) = v2;
  *(v0 + 96) = v1;
  *(v0 + 244) = v5;

  State.wrappedValue.setter();

  sub_100009908(v4, &qword_1001707B0, &qword_100117F20);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000CBFC0()
{
  v13 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  sub_100009908(v2, &qword_1001707B0, &qword_100117F20);
  if (qword_100168E48 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100182000);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100006B44(0xD000000000000011, 0x8000000100117D90, &v12);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100006B44(v7, v8, &v12);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s error fetching user region. %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  *(v0 + 72) = *(v0 + 246);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 243) = 3;

  State.wrappedValue.setter();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000CC228()
{
  v32 = v0;
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v1 - 8);
  (*(v4 + 56))(v2, 1, 1, v1);
  sub_10000C178(v2, v3, &qword_1001707B0, &qword_100117F20);
  if ((*(v4 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 136);

    sub_100009908(v5, &qword_1001707B0, &qword_100117F20);
    if (qword_100168E48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006B0C(v6, qword_100182000);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100006B44(0xD000000000000011, 0x8000000100117D90, &v31);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s error fetching user region.", v9, 0xCu);
      sub_1000052E4(v10);
    }

    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    v13 = (v12 + *(type metadata accessor for DiscoveryFeedView(0) + 20));
    v14 = *v13;
    v15 = *(v13 + 1);
    *(v0 + 40) = v14;
    *(v0 + 48) = v15;
    *(v0 + 240) = 3;
    sub_100002BE4(&qword_1001701E0, &qword_100117ED0);
    State.wrappedValue.setter();
    sub_100009908(v11, &qword_1001707B0, &qword_100117F20);

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 168);
  v20 = *(v0 + 128);
  v19 = *(v0 + 136);
  v21 = Bag.amsBag.getter();
  (*(v4 + 8))(v19, v18);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 BOOLForKey:v22];
  *(v0 + 184) = v23;

  swift_unknownObjectRelease();
  v24 = (v20 + *(type metadata accessor for DiscoveryFeedView(0) + 20));
  v25 = *v24;
  *(v0 + 246) = *v24;
  v26 = *(v24 + 1);
  *(v0 + 56) = v25;
  *(v0 + 192) = v26;
  *(v0 + 64) = v26;
  *(v0 + 200) = sub_100002BE4(&qword_1001701E0, &qword_100117ED0);
  State.wrappedValue.getter();
  if (*(v0 + 241) <= 1u && !*(v0 + 241))
  {

LABEL_13:
    *(v0 + 104) = v25;
    *(v0 + 112) = v26;
    *(v0 + 245) = 1;
    State.wrappedValue.setter();
    goto LABEL_14;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_13;
  }

LABEL_14:
  v28 = static MainActor.shared.getter();
  *(v0 + 208) = v28;
  v29 = swift_task_alloc();
  *(v0 + 216) = v29;
  *(v29 + 16) = v23;
  v30 = swift_task_alloc();
  *(v0 + 224) = v30;
  *v30 = v0;
  v30[1] = sub_1000CBD44;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 242, v28, &protocol witness table for MainActor, 0xD00000000000002CLL, 0x800000010011FDD0, sub_1000CD64C, v29, &type metadata for DiscoveryFeedView.DiscoveryLoadingState);
}

void sub_1000CC768()
{
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006B0C(v0, qword_100181FA0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100006B44(0xD000000000000011, 0x8000000100117D90, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s App Store Account Did Change, Restarting Feed.", v3, 0xCu);
    sub_1000052E4(v4);
  }

  v5 = [objc_opt_self() sharedURLCache];
  [v5 removeAllCachedResponses];
}

void sub_1000CC8E4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100181FA0);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100006B44(0xD000000000000011, 0x8000000100117D90, &v13);
    v6 = 0xED00006465747261;
    *(v5 + 12) = 2080;
    v7 = 0x7453746559746F6ELL;
    v8 = 0x73736563637573;
    if (v2 != 2)
    {
      v8 = 0x6572756C696166;
    }

    if (v2)
    {
      v7 = 0x676E6964616F6CLL;
      v6 = 0xE700000000000000;
    }

    if (v2 <= 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    if (v2 <= 1)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = sub_100006B44(v9, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s did change the discover feed loading state to %s", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000CCAE8(uint64_t a1, void *a2)
{
  v4 = sub_100002BE4(&qword_100170230, &qword_100117F28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1000CD6E8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CCF00;
  aBlock[3] = &unk_10015EA30;
  v10 = _Block_copy(aBlock);

  [a2 valueWithCompletion:v10];
  _Block_release(v10);
}

void sub_1000CCC98(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v4 = a1;
      swift_errorRetain();
      if (qword_100168E48 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100006B0C(v5, qword_100182000);
      swift_errorRetain();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v8 = 136315394;
        *(v8 + 4) = sub_100006B44(0xD000000000000011, 0x8000000100117D90, &v14);
        *(v8 + 12) = 2080;
        swift_getErrorValue();
        v9 = Error.localizedDescription.getter();
        v11 = sub_100006B44(v9, v10, &v14);

        *(v8 + 14) = v11;
        _os_log_impl(&_mh_execute_header, v6, v7, "%s error fetching user region. %s", v8, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    else
    {
      v12 = a1;
    }

    if ([a1 BOOLValue])
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    LOBYTE(v14) = v13;
    sub_100002BE4(&qword_100170230, &qword_100117F28);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    LOBYTE(v14) = 3;
    sub_100002BE4(&qword_100170230, &qword_100117F28);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_1000CCF00(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1000CCF98(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001701C0, &qword_100117EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CD004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return _JetViewDefaultFailed.init(error:retry:)(a1, a2, a3);
}

uint64_t sub_1000CD064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryFeedView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CD0C8()
{
  v1 = *(type metadata accessor for DiscoveryFeedView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  started = type metadata accessor for JetStartUpCoordinator();
  (*(*(started - 8) + 8))(v0 + v3, started);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000CD1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryFeedView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CD218@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DiscoveryFeedView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000CA82C(v4, a1);
}

uint64_t sub_1000CD298()
{
  v1 = *(type metadata accessor for DiscoveryFeedView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  started = type metadata accessor for JetStartUpCoordinator();
  (*(*(started - 8) + 8))(v5, started);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

double sub_1000CD398()
{
  v1 = *(type metadata accessor for DiscoveryFeedView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000CB2C4(v0 + v2, v3);
}

uint64_t sub_1000CD424()
{
  v1 = *(type metadata accessor for DiscoveryFeedView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  started = type metadata accessor for JetStartUpCoordinator();
  (*(*(started - 8) + 8))(v0 + v3, started);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000CD52C(uint64_t a1)
{
  v4 = *(type metadata accessor for DiscoveryFeedView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000FA04;

  return sub_1000CB4A0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1000CD654()
{
  v1 = sub_100002BE4(&qword_100170230, &qword_100117F28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000CD6E8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100002BE4(&qword_100170230, &qword_100117F28);

  sub_1000CCC98(a1, a2, a3);
}

uint64_t sub_1000CD77C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000CD794()
{
  result = qword_100170260;
  if (!qword_100170260)
  {
    sub_10000459C(&qword_100170250, &unk_100117F48);
    sub_100012C48(&qword_100170268, &qword_100170258, &qword_100117F58, &protocol conformance descriptor for FlowView<A, B, C>);
    sub_1000CD84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170260);
  }

  return result;
}

unint64_t sub_1000CD84C()
{
  result = qword_100170270;
  if (!qword_100170270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170270);
  }

  return result;
}

unint64_t sub_1000CD8CC()
{
  result = qword_100170290;
  if (!qword_100170290)
  {
    sub_10000459C(&qword_100170280, &unk_100117F60);
    sub_1000C8038();
    sub_1000C8380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170290);
  }

  return result;
}

uint64_t sub_1000CD958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000CD9A0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A0F0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000CD9EC()
{
  sub_10000459C(&qword_1001701C8, &qword_100117EC0);
  sub_10000459C(&qword_1001701C0, &qword_100117EB8);
  type metadata accessor for DiscoveryFeedStateProvider(255);
  sub_100012C48(&qword_1001701D8, &qword_1001701C0, &qword_100117EB8, &protocol conformance descriptor for ZStack<A>);
  sub_1000CD958(&qword_100169930, type metadata accessor for DiscoveryFeedStateProvider, &unk_10010D308);
  swift_getOpaqueTypeConformance2();
  sub_1000C9E48();
  return swift_getOpaqueTypeConformance2();
}

void sub_1000CDB38(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496D616461 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1000CDBBC(uint64_t a1)
{
  v2 = sub_1000CDC78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CDBF8(uint64_t a1)
{
  v2 = sub_1000CDC78();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000CDC78()
{
  result = qword_1001702A0;
  if (!qword_1001702A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702A0);
  }

  return result;
}

void sub_1000CDDB4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4970756F53746F68 && a2 == 0xE900000000000044)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1000CDE44(uint64_t a1)
{
  v2 = sub_1000CE048();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CDE80(uint64_t a1)
{
  v2 = sub_1000CE048();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CDF00(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v14[1] = a3;
  v9 = sub_100002BE4(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v14 - v11;
  sub_10000524C(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1000CE048()
{
  result = qword_1001702B8;
  if (!qword_1001702B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702B8);
  }

  return result;
}

uint64_t sub_1000CE0E0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = sub_100002BE4(a2, a3);
  v15 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  v11 = sub_10000524C(a1, a1[3]);
  a4();
  v12 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v15 + 8))(v10, v8);
  }

  sub_1000052E4(a1);
  return v12;
}

uint64_t sub_1000CE290@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = sub_100002BE4(a2, a3);
  v19 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_10000524C(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v6)
  {
    return sub_1000052E4(a1);
  }

  v12 = v19;
  v13 = v20;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  (*(v12 + 8))(v11, v9);
  result = sub_1000052E4(a1);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t sub_1000CE45C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v9 = sub_100002BE4(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  v14 = *v7;
  sub_10000524C(a1, a1[3]);
  v15();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1000CE5F0()
{
  result = qword_1001702C8;
  if (!qword_1001702C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702C8);
  }

  return result;
}

unint64_t sub_1000CE648()
{
  result = qword_1001702D0;
  if (!qword_1001702D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702D0);
  }

  return result;
}

unint64_t sub_1000CE6A0()
{
  result = qword_1001702D8;
  if (!qword_1001702D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702D8);
  }

  return result;
}

unint64_t sub_1000CE6F8()
{
  result = qword_1001702E0;
  if (!qword_1001702E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702E0);
  }

  return result;
}

unint64_t sub_1000CE750()
{
  result = qword_1001702E8;
  if (!qword_1001702E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702E8);
  }

  return result;
}

unint64_t sub_1000CE7A8()
{
  result = qword_1001702F0;
  if (!qword_1001702F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702F0);
  }

  return result;
}

uint64_t sub_1000CE818(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ActionMetrics();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000CE8D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActionMetrics();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FlowAction(uint64_t a1)
{
  result = qword_100170350;
  if (!qword_100170350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CE9C8(uint64_t a1)
{
  result = type metadata accessor for ActionMetrics();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000CEA6C(void *a1)
{
  v3 = v1;
  v5 = sub_100002BE4(&qword_1001703E0, &qword_100118520);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10000524C(a1, a1[3]);
  sub_1000CF888();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v17 = *v3;
  v18 = v9;
  v16 = 0;
  sub_1000CFAEC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for FlowAction(0);
    LOBYTE(v17) = 1;
    type metadata accessor for ActionMetrics();
    sub_1000CFB40(&qword_10016B358, &type metadata accessor for ActionMetrics, &protocol conformance descriptor for ActionMetrics);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = 2;
    sub_1000CFB88();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = (v3 + *(v10 + 28));
    v13 = *v11;
    v12 = v11[1];
    v17 = v13;
    v18 = v12;
    v16 = 3;
    sub_1000CFBDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1000CECC4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for ActionMetrics();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100002BE4(&qword_1001703B8, &qword_100118518);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v19 - v6;
  v8 = type metadata accessor for FlowAction(0);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000524C(a1, a1[3]);
  sub_1000CF888();
  v22 = v7;
  v11 = v24;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    sub_1000052E4(a1);
  }

  else
  {
    v12 = v20;
    v27 = 0;
    sub_1000CF8DC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = *(&v25 + 1);
    *v10 = v25;
    *(v10 + 1) = v13;
    v24 = v13;
    LOBYTE(v25) = 1;
    sub_1000CFB40(&qword_10016B2F0, &type metadata accessor for ActionMetrics, &protocol conformance descriptor for ActionMetrics);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 32))(&v10[v8[5]], v5, v3);
    v27 = 2;
    sub_1000CF984();
    v14 = v22;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = &v10[v8[6]];
    v16 = v26[0];
    *v15 = v25;
    *(v15 + 1) = v16;
    *(v15 + 25) = *(v26 + 9);
    v27 = 3;
    sub_1000CF9D8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v14, v23);
    v17 = *(&v25 + 1);
    v18 = &v10[v8[7]];
    *v18 = v25;
    *(v18 + 1) = v17;
    sub_1000CFA2C(v10, v19);
    sub_1000052E4(a1);
    sub_1000CFA90(v10);
  }
}

void *sub_1000CF128@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000CF134@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_1000CF1F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000CF244(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000CF28C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_1000CF2C0()
{
  result = qword_100170390;
  if (!qword_100170390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170390);
  }

  return result;
}

uint64_t sub_1000CF314()
{
  v1 = 25705;
  v2 = 0x74616E6974736564;
  if (*v0 != 2)
  {
    v2 = 0x61746E6573657270;
  }

  if (*v0)
  {
    v1 = 0x654D6E6F69746361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000CF3A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000D0510(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000CF3C8(uint64_t a1)
{
  v2 = sub_1000CF888();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CF404(uint64_t a1)
{
  v2 = sub_1000CF888();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CF450(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_1000CF4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ActionMetrics();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_1000CF538()
{
  result = qword_100170398;
  if (!qword_100170398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170398);
  }

  return result;
}

uint64_t sub_1000CF5D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Width = CGRectGetWidth(v18);
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  Height = CGRectGetHeight(v19);
  v13 = 0.9;
  v14 = 0.7;
  if (v10 >= v8)
  {
    v14 = 0.9;
    v13 = 0.95;
  }

  v15 = Width * v14;
  v16 = Height * v13;
  a1[3] = &type metadata for FixedPresentationSizing;
  a1[4] = sub_1000CF824();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v15;
  *(result + 24) = 0;
  *(result + 32) = v16;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1000CF6EC@<X0>(uint64_t *a1@<X8>)
{
  sub_1000CF5D4(v3);
  a1[3] = sub_100002BE4(&qword_1001703A0, &qword_100118510);
  sub_1000CF7A0();
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_100020014(a1);
  PresentationSizing.sticky(horizontal:vertical:)();
  return sub_1000CF7F4(v3);
}

unint64_t sub_1000CF7A0()
{
  result = qword_1001703A8;
  if (!qword_1001703A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703A8);
  }

  return result;
}

unint64_t sub_1000CF824()
{
  result = qword_1001703B0;
  if (!qword_1001703B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703B0);
  }

  return result;
}

unint64_t sub_1000CF888()
{
  result = qword_1001703C0;
  if (!qword_1001703C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703C0);
  }

  return result;
}

unint64_t sub_1000CF8DC()
{
  result = qword_1001703C8;
  if (!qword_1001703C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703C8);
  }

  return result;
}

unint64_t sub_1000CF984()
{
  result = qword_1001703D0;
  if (!qword_1001703D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703D0);
  }

  return result;
}

unint64_t sub_1000CF9D8()
{
  result = qword_1001703D8;
  if (!qword_1001703D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703D8);
  }

  return result;
}

uint64_t sub_1000CFA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CFA90(uint64_t a1)
{
  v2 = type metadata accessor for FlowAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000CFAEC()
{
  result = qword_1001703E8;
  if (!qword_1001703E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703E8);
  }

  return result;
}

uint64_t sub_1000CFB40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000CFB88()
{
  result = qword_1001703F0;
  if (!qword_1001703F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703F0);
  }

  return result;
}

unint64_t sub_1000CFBDC()
{
  result = qword_1001703F8;
  if (!qword_1001703F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703F8);
  }

  return result;
}

unint64_t sub_1000CFC30()
{
  result = qword_100170400;
  if (!qword_100170400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170400);
  }

  return result;
}

__n128 sub_1000CFC94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000CFCA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000CFCC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1000CFE20(void *a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v18 = a5;
  v15 = a4;
  v9 = sub_100002BE4(&qword_100170438, &qword_100118778);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_10000524C(a1, a1[3]);
  sub_1000D067C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3 & 1;
  v19 = 0;
  sub_1000D0724();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v5)
  {
    v16 = v15;
    v17 = v18 & 1;
    v19 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000CFFF4()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

void sub_1000D0028(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1000D00FC(uint64_t a1)
{
  v2 = sub_1000D067C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0138(uint64_t a1)
{
  v2 = sub_1000D067C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D0198@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000D0318(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

unint64_t sub_1000D0214()
{
  result = qword_100170408;
  if (!qword_100170408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170408);
  }

  return result;
}

unint64_t sub_1000D026C()
{
  result = qword_100170410;
  if (!qword_100170410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170410);
  }

  return result;
}

unint64_t sub_1000D02C4()
{
  result = qword_100170418;
  if (!qword_100170418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170418);
  }

  return result;
}

uint64_t sub_1000D0318(void *a1)
{
  v3 = sub_100002BE4(&qword_100170420, &qword_100118770);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = a1[3];
  sub_10000524C(a1, v7);
  sub_1000D067C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1000052E4(a1);
  }

  else
  {
    v13[0] = 0;
    sub_1000D06D0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v7 = v11;
    v8 = v12;
    v13[0] = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v10 = v12;
    sub_1000052E4(a1);
    LOBYTE(v11) = v8;
    v13[0] = v10;
  }

  return v7;
}

uint64_t sub_1000D0510(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1000D067C()
{
  result = qword_100170428;
  if (!qword_100170428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170428);
  }

  return result;
}

unint64_t sub_1000D06D0()
{
  result = qword_100170430;
  if (!qword_100170430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170430);
  }

  return result;
}

unint64_t sub_1000D0724()
{
  result = qword_100170440;
  if (!qword_100170440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170440);
  }

  return result;
}

unint64_t sub_1000D078C()
{
  result = qword_100170448;
  if (!qword_100170448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170448);
  }

  return result;
}

unint64_t sub_1000D07E4()
{
  result = qword_100170450;
  if (!qword_100170450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170450);
  }

  return result;
}

unint64_t sub_1000D083C()
{
  result = qword_100170458;
  if (!qword_100170458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170458);
  }

  return result;
}

uint64_t sub_1000D08A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_100002BE4(&qword_10016A498, &unk_10010F490);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000D0980(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016A498, &unk_10010F490);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for BlurViewFadeModifier(uint64_t a1)
{
  result = qword_1001704B8;
  if (!qword_1001704B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D0A7C(uint64_t a1)
{
  sub_1000D0B00();
  if (v1 <= 0x3F)
  {
    sub_1000236DC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000D0B00()
{
  if (!qword_10016DC70)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10016DC70);
    }
  }
}

uint64_t sub_1000D0B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[1] = a2;
  v22[0] = type metadata accessor for ScenePhase();
  v23 = *(v22[0] - 8);
  __chkstk_darwin(v22[0]);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BlurViewFadeModifier(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_100002BE4(&qword_1001704F0, &qword_1001188F8);
  __chkstk_darwin(v10);
  v12 = v22 - v11;
  v13 = v2[1];
  v25 = *v2;
  v26 = v13;
  sub_100002BE4(&qword_10016DCF8, &qword_100118900);
  State.wrappedValue.getter();
  v14 = v24;
  v15 = sub_100002BE4(&qword_1001704F8, &qword_100118908);
  (*(*(v15 - 8) + 16))(v12, a1, v15);
  *&v12[*(sub_100002BE4(&qword_100170500, &qword_100118910) + 36)] = v14;
  sub_1000D1118(v2, v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_1000D1180(v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = &v12[*(v10 + 36)];
  *v18 = sub_1000D11E4;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  sub_100023828(v6);
  sub_1000D1118(v3, v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  sub_1000D1180(v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v16);
  sub_1000D13E0();
  sub_1000D155C();
  v20 = v22[0];
  View.onChange<A>(of:initial:_:)();

  (*(v23 + 8))(v6, v20);
  return sub_1000D15B4(v12);
}

double sub_1000D0EAC(uint64_t a1)
{
  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();

  return result;
}

void sub_1000D0F24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ScenePhase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a2, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == enum case for ScenePhase.background(_:) || v9 == enum case for ScenePhase.inactive(_:))
  {
    v11 = a3[1];
    v13[2] = *a3;
    v13[3] = v11;
    v13[1] = 0;
    sub_100002BE4(&qword_10016DCF8, &qword_100118900);
    State.wrappedValue.setter();
  }

  else if (v9 == enum case for ScenePhase.active(_:))
  {
    v12 = static Animation.easeInOut(duration:)();
    __chkstk_darwin(v12);
    v13[-2] = a3;
    withAnimation<A>(_:_:)();
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1000D1118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlurViewFadeModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D1180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlurViewFadeModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1000D11E4()
{
  v1 = *(type metadata accessor for BlurViewFadeModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000D0EAC(v2);
}

uint64_t sub_1000D1244()
{
  v1 = (type metadata accessor for BlurViewFadeModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ScenePhase();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1000D1360(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BlurViewFadeModifier(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1000D0F24(a1, a2, v6);
}

unint64_t sub_1000D13E0()
{
  result = qword_100170508;
  if (!qword_100170508)
  {
    sub_10000459C(&qword_1001704F0, &qword_1001188F8);
    sub_1000D146C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170508);
  }

  return result;
}

unint64_t sub_1000D146C()
{
  result = qword_100170510;
  if (!qword_100170510)
  {
    sub_10000459C(&qword_100170500, &qword_100118910);
    sub_1000D14F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170510);
  }

  return result;
}

unint64_t sub_1000D14F8()
{
  result = qword_100170518;
  if (!qword_100170518)
  {
    sub_10000459C(&qword_1001704F8, &qword_100118908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170518);
  }

  return result;
}

unint64_t sub_1000D155C()
{
  result = qword_10016A560;
  if (!qword_10016A560)
  {
    type metadata accessor for ScenePhase();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A560);
  }

  return result;
}

uint64_t sub_1000D15B4(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001704F0, &qword_1001188F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000D1634()
{
  sub_100002BE4(&qword_10016DCF8, &qword_100118900);
  State.wrappedValue.setter();
  return result;
}

uint64_t sub_1000D16A0()
{
  sub_10000459C(&qword_1001704F0, &qword_1001188F8);
  type metadata accessor for ScenePhase();
  sub_1000D13E0();
  sub_1000D155C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for GradientFadeModifier(unsigned __int16 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GradientFadeModifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000D18B0(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v5 = sub_100002BE4(&qword_100170520, &qword_1001189C8);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = sub_100002BE4(&qword_100170528, &qword_1001189D0);
  v9 = __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v13 = __chkstk_darwin(v12);
  v15 = &v34 - v14;
  __chkstk_darwin(v13);
  v18 = &v34 - v17;
  if ((a2 & 0x100) != 0)
  {
    v34 = a1;
    sub_100002BE4(&qword_100170560, &qword_1001189F0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100110A60;
    static Color.white.getter();
    *(v20 + 32) = Gradient.Stop.init(color:location:)();
    *(v20 + 40) = v21;
    static Color.white.getter();
    Color.opacity(_:)();

    *(v20 + 48) = Gradient.Stop.init(color:location:)();
    *(v20 + 56) = v22;
    static Color.white.getter();
    Color.opacity(_:)();

    *(v20 + 64) = Gradient.Stop.init(color:location:)();
    *(v20 + 72) = v23;
    static Color.clear.getter();
    *(v20 + 80) = Gradient.Stop.init(color:location:)();
    *(v20 + 88) = v24;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        static UnitPoint.trailing.getter();
        static UnitPoint.leading.getter();
      }

      else
      {
        static UnitPoint.leading.getter();
        static UnitPoint.trailing.getter();
      }
    }

    else if (v4)
    {
      static UnitPoint.top.getter();
      static UnitPoint.bottom.getter();
    }

    else
    {
      static UnitPoint.bottom.getter();
      static UnitPoint.top.getter();
    }

    Gradient.init(stops:)();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v29 = v35;
    v30 = sub_100002BE4(&qword_100170538, &qword_1001189E0);
    (*(*(v30 - 8) + 16))(v15, v34, v30);
    v31 = &v15[*(v8 + 36)];
    *v31 = v29;
    v32 = v36;
    *(v31 + 24) = v37;
    *(v31 + 8) = v32;
    sub_1000D1D98(v15, v18);
  }

  else
  {
    v18 = v16;
    sub_100002BE4(&qword_100170530, &qword_1001189D8);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10010FEE0;
    *(v19 + 32) = static Color.white.getter();
    *(v19 + 40) = static Color.clear.getter();
    Gradient.init(colors:)();
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        static UnitPoint.trailing.getter();
        static UnitPoint.leading.getter();
      }

      else
      {
        static UnitPoint.leading.getter();
        static UnitPoint.trailing.getter();
      }
    }

    else if (v4)
    {
      static UnitPoint.top.getter();
      static UnitPoint.bottom.getter();
    }

    else
    {
      static UnitPoint.bottom.getter();
      static UnitPoint.top.getter();
    }

    LinearGradient.init(gradient:startPoint:endPoint:)();
    v25 = v35;
    v26 = sub_100002BE4(&qword_100170538, &qword_1001189E0);
    (*(*(v26 - 8) + 16))(v11, a1, v26);
    v27 = &v11[*(v8 + 36)];
    *v27 = v25;
    v28 = v36;
    *(v27 + 24) = v37;
    *(v27 + 8) = v28;
    sub_1000D1D98(v11, v18);
  }

  sub_1000D1E08(v18, v7);
  swift_storeEnumTagMultiPayload();
  sub_1000D1E78();
  _ConditionalContent<>.init(storage:)();
  return sub_1000D1F5C(v18);
}

uint64_t sub_1000D1D7C(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1000D18B0(a1, v2 | *v1);
}

uint64_t sub_1000D1D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100170528, &qword_1001189D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D1E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100170528, &qword_1001189D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D1E78()
{
  result = qword_100170540;
  if (!qword_100170540)
  {
    sub_10000459C(&qword_100170528, &qword_1001189D0);
    sub_100012C48(&qword_100170548, &qword_100170538, &qword_1001189E0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100012C48(&qword_100170550, &qword_100170558, &qword_1001189E8, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170540);
  }

  return result;
}

uint64_t sub_1000D1F5C(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100170528, &qword_1001189D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D1FE8()
{
  result = qword_100170568;
  if (!qword_100170568)
  {
    sub_10000459C(&qword_100170570, qword_100118A08);
    sub_1000D1E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170568);
  }

  return result;
}

unint64_t sub_1000D2070()
{
  result = qword_100170578;
  if (!qword_100170578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170578);
  }

  return result;
}

unint64_t sub_1000D20C8()
{
  result = qword_100170580;
  if (!qword_100170580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170580);
  }

  return result;
}

id sub_1000D212C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = [v6 valueWithNewObjectInContext:a1];
  if (v7)
  {
    v8 = v7;

    v9 = [v6 valueWithObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() inContext:{a1, a2, a3}];
    result = swift_unknownObjectRelease();
    if (v9)
    {
      JSValue.subscript.setter();
      return v8;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006B0C(v11, qword_100182048);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error making the JSContext", v14, 2u);
    }

    v15 = objc_allocWithZone(JSValue);

    return [v15 init];
  }

  return result;
}

void sub_1000D2304(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1000D238C(uint64_t a1)
{
  v2 = sub_1000D280C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D23C8(uint64_t a1)
{
  v2 = sub_1000D280C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000D2404(uint64_t a1@<X8>)
{
  strcpy(a1, "TVPageIntent");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1000D2428@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100002BE4(&qword_100170588, &qword_100118BE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000524C(a1, a1[3]);
  sub_1000D280C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000052E4(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_1000052E4(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1000D25A4(void *a1)
{
  v2 = sub_100002BE4(&qword_100170598, &qword_100118BF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000524C(a1, a1[3]);
  sub_1000D280C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1000D26E0@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_100002BE4(&qword_1001705A0, &qword_100118BF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010FEE0;
  *(inited + 32) = 0x646E696B24;
  *(inited + 40) = 0xE500000000000000;
  strcpy((inited + 48), "TVPageIntent");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 64) = 7107189;
  *(inited + 72) = 0xE300000000000000;
  *(inited + 80) = v4;
  *(inited + 88) = v3;

  v6 = sub_10000B5DC(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_10016E7F8, &qword_1001153D0);
  swift_arrayDestroy();
  a1[3] = sub_100002BE4(&qword_100169C98, &qword_100115D60);
  result = sub_10009A918();
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_1000D280C()
{
  result = qword_100170590;
  if (!qword_100170590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170590);
  }

  return result;
}

unint64_t sub_1000D2874()
{
  result = qword_1001705A8;
  if (!qword_1001705A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001705A8);
  }

  return result;
}

unint64_t sub_1000D28CC()
{
  result = qword_1001705B0;
  if (!qword_1001705B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001705B0);
  }

  return result;
}

unint64_t sub_1000D2924()
{
  result = qword_1001705B8;
  if (!qword_1001705B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001705B8);
  }

  return result;
}

uint64_t sub_1000D2978()
{
  sub_100002BE4(&qword_1001705C0, &qword_100118D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010FEE0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000010011C8A0;
  v1 = sub_1000D2A6C();
  *(inited + 48) = &type metadata for EpicShowcaseShelfIntent;
  *(inited + 56) = v1;
  *(inited + 64) = 0xD00000000000001CLL;
  *(inited + 72) = 0x800000010011FA80;
  v2 = sub_1000C88E4();
  *(inited + 80) = &type metadata for TetsuoDiscoverFeedPageIntent;
  *(inited + 88) = v2;
  v3 = sub_10000BF68(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_1001705D0, &qword_100118D28);
  result = swift_arrayDestroy();
  qword_1001821E0 = v3;
  return result;
}

unint64_t sub_1000D2A6C()
{
  result = qword_1001705C8;
  if (!qword_1001705C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001705C8);
  }

  return result;
}

uint64_t sub_1000D2AC0()
{
  if (qword_100168FC0 != -1)
  {
    swift_once();
  }
}

void sub_1000D2B1C()
{
  if (qword_100168FC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1001821E0;

  sub_1000C6D64(v1);
}

unint64_t sub_1000D2BA4()
{
  result = qword_1001705D8;
  if (!qword_1001705D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001705D8);
  }

  return result;
}

uint64_t sub_1000D2BF8@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a1;
  v5 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v43 = &v40 - v6;
  started = type metadata accessor for JetStartUpProcedure();
  v40 = *(started - 8);
  v41 = started;
  __chkstk_darwin(started);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002BE4(&unk_100171510, &unk_100118EC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for JetStartUpCoordinator();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  BaseObjectGraph.injectIfAvailable<A>(_:)();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100009908(v12, &unk_100171510, &unk_100118EC0);
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006B0C(v17, qword_100182048);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v45 = v21;
      *v20 = 136315138;
      v22 = _typeName(_:qualified:)();
      v24 = sub_100006B44(v22, v23, &v45);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - Creating new startup coordinator", v20, 0xCu);
      sub_1000052E4(v21);
    }

    (*(v40 + 104))(v9, enum case for JetStartUpProcedure.lazy(_:), v41);
    v25 = v43;
    sub_10000C178(v44, v43, &unk_100170700, &unk_1001153F0);
    v26 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v3;
    sub_1000DBF00(v25, v27 + v26);

    static Transaction._loading.getter();
    return JetStartUpCoordinator.init(startUpProcedure:transaction:makeObjects:)();
  }

  else
  {
    v29 = *(v14 + 32);
    v29(v16, v12, v13);
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006B0C(v30, qword_100182048);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v44 = v29;
      v34 = v33;
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      v36 = _typeName(_:qualified:)();
      v38 = a2;
      v39 = sub_100006B44(v36, v37, &v45);

      *(v34 + 4) = v39;
      a2 = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s - Returning existing startup coordinator", v34, 0xCu);
      sub_1000052E4(v35);

      v29 = v44;
    }

    return (v29)(a2, v16, v13);
  }
}

uint64_t sub_1000D31B4(uint64_t a1, uint64_t a2)
{
  sub_1000D32A8();

  sub_1000D5064();
  sub_1000DBFE0();
  sub_1000DC1EC(a2);

  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  v3 = dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  return v3;
}

uint64_t sub_1000D32A8()
{
  v42 = type metadata accessor for Dependency();
  v35 = *(v42 - 8);
  v0 = v35;
  v1 = __chkstk_darwin(v42);
  v38 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v37 = &v30 - v4;
  v5 = __chkstk_darwin(v3);
  v36 = &v30 - v6;
  v7 = __chkstk_darwin(v5);
  v43 = &v30 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v30 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v30 - v16;
  v18 = __chkstk_darwin(v15);
  v39 = &v30 - v19;
  v20 = __chkstk_darwin(v18);
  v41 = &v30 - v21;
  __chkstk_darwin(v20);
  v40 = &v30 - v22;
  type metadata accessor for Bag();
  Dependency.init<A>(satisfying:with:)();
  sub_100002BE4(&qword_1001706E0, &unk_100118E78);
  Dependency.init<A>(satisfying:with:)();
  sub_100002BE4(&qword_1001706E8, &qword_100118E88);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for DeviceProvider(0);

  v34 = v17;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for PrescriptionProvider(0);

  v32 = v14;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for TipProvider(0);

  v31 = v11;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for SoftwareUpdateProvider(0);

  Dependency.init<A>(satisfying:with:)();
  sub_100031904(0, &qword_1001706D8, AMSURLSession_ptr);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for Net();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for IntentDispatchTimeout();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_100002BE4(&qword_1001706C8, &qword_100118E70);
  v33 = v0;
  v23 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10010D3B0;
  (*(v0 + 16))(v24 + v23, v40, v42);
  v30 = BaseObjectGraph.__allocating_init(name:_:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v25 = v37;
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v26 = v38;
  v35 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v27 = *(v33 + 8);
  v28 = v42;
  v27(v26, v42);
  v27(v25, v28);
  v27(v36, v28);
  v27(v43, v28);
  v27(v31, v28);
  v27(v32, v28);
  v27(v34, v28);
  v27(v39, v28);
  v27(v41, v28);
  v27(v40, v28);
  return v35;
}

uint64_t sub_1000D3920()
{
  sub_100015B44();
  sub_100015B68();
  v0 = String._bridgeToObjectiveC()();

  v1 = String._bridgeToObjectiveC()();

  v2 = [objc_opt_self() bagForProfile:v0 profileVersion:v1];

  return Bag.init(from:)(v2);
}

uint64_t sub_1000D39E4@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  result = sub_100031904(0, &qword_1001706F8, ACAccountStore_ptr);
  a1[3] = result;
  a1[4] = &protocol witness table for ACAccountStore;
  *a1 = v2;
  return result;
}

uint64_t sub_1000D3A58(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Bag();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000D3B18, 0, 0);
}

uint64_t sub_1000D3B18()
{
  type metadata accessor for BaseObjectGraph();
  v0[6] = static BaseObjectGraph.current.getter();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000D3BD0;
  v2 = v0[5];

  return BaseObjectGraph.inject<A>(_:)(v2);
}

uint64_t sub_1000D3BD0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1000D3DF0;
  }

  else
  {

    v2 = sub_1000D3CEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D3CEC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_100015B8C();
  v5 = Bag.amsBag.getter();
  v6 = objc_allocWithZone(AMSMediaTokenService);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithClientIdentifier:v7 bag:v5];
  swift_unknownObjectRelease();

  (*(v2 + 8))(v1, v3);
  *v4 = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000D3DF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D3E5C(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for AppleServicesURLProtocol();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000D3F1C, 0, 0);
}

uint64_t sub_1000D3F1C()
{
  v0[7] = [objc_opt_self() currentProcess];
  type metadata accessor for BaseObjectGraph();
  v0[8] = static BaseObjectGraph.current.getter();
  sub_100002BE4(&qword_1001706F0, &unk_100118EB0);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1000D4010;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2);
}

uint64_t sub_1000D4010()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);

    v4 = sub_1000D43E8;
  }

  else
  {

    *(v2 + 88) = sub_100031904(0, &qword_1001706D8, AMSURLSession_ptr);
    v4 = sub_1000D416C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D416C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  *v1 = sub_100015B8C();
  v1[1] = v5;
  v1[2] = 0;
  v1[3] = 0;
  (*(v2 + 104))(v1, enum case for AppleServicesURLProtocol.media(_:), v3);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1000D4250;
  v7 = v0[6];
  v8 = v0[7];

  return AMSURLSession.init(process:bag:urlProtocol:)(v8, v4, v7);
}

uint64_t sub_1000D4250(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_1000D444C;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_1000D4378;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000D4378()
{
  **(v0 + 24) = *(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D43E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D444C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D44B0(uint64_t a1)
{
  v1[4] = a1;
  v1[5] = type metadata accessor for AppleServicesFetcher();
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for AppleServicesEncoder.Configuration();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for AppleServicesEncoder();
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for Bag();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000D4644, 0, 0);
}

uint64_t sub_1000D4644()
{
  v0[17] = type metadata accessor for BaseObjectGraph();
  v0[18] = static BaseObjectGraph.current.getter();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1000D4700;
  v2 = v0[16];

  return BaseObjectGraph.inject<A>(_:)(v2);
}

uint64_t sub_1000D4700()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1000D4DA8;
  }

  else
  {

    v2 = sub_1000D481C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D481C()
{
  *(v0 + 168) = static BaseObjectGraph.current.getter();
  sub_100031904(0, &qword_1001706D8, AMSURLSession_ptr);
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1000D48E8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16);
}

uint64_t sub_1000D48E8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000D4E58;
  }

  else
  {
    v2 = sub_1000D4A18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D4A18()
{
  v0[24] = v0[2];
  v0[25] = static BaseObjectGraph.current.getter();
  sub_100002BE4(&qword_1001706E8, &qword_100118E88);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1000D4AE8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 3);
}

uint64_t sub_1000D4AE8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1000D4F18;
  }

  else
  {
    v2 = sub_1000D4C18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D4C18()
{
  v1 = v0[16];
  v2 = v0[14];
  v10 = v0[13];
  v3 = v0[9];
  v5 = v0[7];
  v4 = v0[8];
  v9 = v0[24];
  (*(v2 + 16))(v0[15], v1);
  AppleServicesEncoder.Configuration.init(bag:)();
  AppleServicesEncoder.Configuration.withMediaTokenService(_:)();
  (*(v4 + 8))(v3, v5);
  AppleServicesEncoder.init(_:)();
  v6 = v9;
  AppleServicesFetcher.init(_:)();
  Net.init<A, B>(encoder:fetcher:)();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v1, v10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D4DA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D4E58()
{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D4F18()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000D4FE8@<X0>(void *a1@<X8>)
{
  *a1 = 0x403E000000000000;
  v2 = enum case for IntentDispatchTimeout.seconds(_:);
  v3 = type metadata accessor for IntentDispatchTimeout();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000D5064()
{
  v1 = *v0;
  v2 = type metadata accessor for Dependency();
  v29 = v2;
  v34 = *(v2 - 8);
  v3 = v34;
  v4 = __chkstk_darwin(v2);
  v33 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v32 = &v27 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = __chkstk_darwin(v8);
  v31 = &v27 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v27 - v14;
  v16 = __chkstk_darwin(v13);
  v35 = &v27 - v17;
  __chkstk_darwin(v16);
  v36 = &v27 - v18;
  type metadata accessor for JetPackAssetDiskCache();
  *(swift_allocObject() + 16) = v1;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for JetPackAssetSession();
  *(swift_allocObject() + 16) = v1;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for URLJetPackAssetFetcher();
  *(swift_allocObject() + 16) = v1;
  v30 = v15;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for TetsuoJetpackInfo(0);
  *(swift_allocObject() + 16) = v1;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for JetPackAsset();
  *(swift_allocObject() + 16) = v1;
  v28 = v10;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for InMemoryJetPackResourceBundle();
  *(swift_allocObject() + 16) = v1;
  v19 = v32;
  Dependency.init<A>(satisfying:with:)();
  sub_100002BE4(&qword_1001706C0, &qword_100118E58);
  *(swift_allocObject() + 16) = v1;
  v20 = v33;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_100002BE4(&qword_1001706C8, &qword_100118E70);
  v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10010D3B0;
  (*(v3 + 16))(v22 + v21, v36, v2);
  BaseObjectGraph.__allocating_init(name:_:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v23 = v31;
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v34 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v24 = *(v3 + 8);
  v25 = v29;
  v24(v20, v29);
  v24(v19, v25);
  v24(v28, v25);
  v24(v23, v25);
  v24(v30, v25);
  v24(v35, v25);
  v24(v36, v25);
  return v34;
}

uint64_t sub_1000D5610(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000D5630, 0, 0);
}

uint64_t sub_1000D5630()
{
  v12 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100006B44(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Loading Tetsuo Jetpack Disk Cache", v4, 0xCu);
    sub_1000052E4(v5);
  }

  type metadata accessor for JetPackAssetDiskCache();
  **(v0 + 16) = JetPackAssetDiskCache.__allocating_init()();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000D57E8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  type metadata accessor for JetPackAssetSession.Configuration();
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000D5878, 0, 0);
}

uint64_t sub_1000D5878()
{
  v12 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100006B44(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Constructing Jetpack Asset Session", v4, 0xCu);
    sub_1000052E4(v5);
  }

  type metadata accessor for BaseObjectGraph();
  v0[6] = static BaseObjectGraph.current.getter();
  v0[7] = type metadata accessor for JetPackAssetDiskCache();
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1000D5A6C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2);
}

uint64_t sub_1000D5A6C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1000D5C5C;
  }

  else
  {

    v2 = sub_1000D5B88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D5B88()
{
  v1 = *(v0 + 24);

  JetPackAssetSession.Configuration.init(cache:)();
  type metadata accessor for JetPackAssetSession();
  swift_allocObject();
  v2 = JetPackAssetSession.init(configuration:)();

  *v1 = v2;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D5C5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D5CC8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Bag();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000D5D88, 0, 0);
}

uint64_t sub_1000D5D88()
{
  v13 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100006B44(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Creating Jetpack Asset Fetcher", v4, 0xCu);
    sub_1000052E4(v5);
  }

  v0[8] = type metadata accessor for BaseObjectGraph();
  v0[9] = static BaseObjectGraph.current.getter();
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1000D5F70;
  v10 = v0[7];

  return BaseObjectGraph.inject<A>(_:)(v10);
}

uint64_t sub_1000D5F70()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1000D6354;
  }

  else
  {

    v2 = sub_1000D608C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D608C()
{
  *(v0 + 96) = static BaseObjectGraph.current.getter();
  sub_100031904(0, &qword_1001706D8, AMSURLSession_ptr);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1000D6158;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16);
}

uint64_t sub_1000D6158()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1000D63C0;
  }

  else
  {
    v2 = sub_1000D6288;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D6288()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  Bag.amsBag.getter();
  v5 = [v4 configuration];
  URLJetPackAssetFetcher.init(bag:urlSessionConfiguration:)();

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000D6354()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D63C0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000D643C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Bag();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000D64FC, 0, 0);
}

uint64_t sub_1000D64FC()
{
  v13 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100006B44(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Loading Tetsuo Jetpack Info", v4, 0xCu);
    sub_1000052E4(v5);
  }

  type metadata accessor for BaseObjectGraph();
  v0[7] = static BaseObjectGraph.current.getter();
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1000D66E0;
  v10 = v0[6];

  return BaseObjectGraph.inject<A>(_:)(v10);
}

uint64_t sub_1000D66E0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1000D6984;
  }

  else
  {

    v2 = sub_1000D67FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D67FC(uint64_t a1)
{
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui && (v3 = [objc_opt_self() standardUserDefaults], static UserDefaultUtilities.SharedConstants.jetpackSource.getter(), v4 = String._bridgeToObjectiveC()(), , v5 = objc_msgSend(v3, "stringForKey:", v4), v4, v3, v5))
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    v10 = _findStringSwitchCase(cases:string:)(&off_100159BE0, v9);

    if (v10 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10 == 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v1[2];
  (*(v1[5] + 32))(v12, v1[6], v1[4]);
  *(v12 + *(type metadata accessor for TetsuoJetpackInfo(0) + 20)) = v11;

  v13 = v1[1];

  return v13();
}

uint64_t sub_1000D6984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D69F0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for URLJetPackAssetFetcher();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for JetPackAssetRequestSourcePolicy();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for URLJetPackAssetRequest();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for TetsuoJetpackInfo(0);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000D6C00, 0, 0);
}

uint64_t sub_1000D6C00()
{
  v13 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[20] = sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100006B44(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Loading Tetsuo Jetpack Asset", v4, 0xCu);
    sub_1000052E4(v5);
  }

  v0[21] = type metadata accessor for BaseObjectGraph();
  v0[22] = static BaseObjectGraph.current.getter();
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_1000D6DE8;
  v10 = v0[19];

  return BaseObjectGraph.inject<A>(_:)(v10);
}

uint64_t sub_1000D6DE8()
{
  v2 = *v1;
  v2[24] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000D79BC, 0, 0);
  }

  else
  {
    v4 = v2[18];
    v3 = v2[19];

    v5 = *(v3 + *(v4 + 20));
    v6 = swift_task_alloc();
    v2[25] = v6;
    *v6 = v2;
    v6[1] = sub_1000D6F80;
    v7 = v2[19];
    v8 = v2[17];

    return sub_10007F624(v8, v7, v5);
  }
}

uint64_t sub_1000D6F80()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1000D72F4;
  }

  else
  {
    v2 = sub_1000D7094;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D7094()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  (*(v2 + 104))(v1, enum case for JetPackAssetRequestSourcePolicy.standard(_:), v3);
  URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
  v0[27] = static BaseObjectGraph.current.getter();
  type metadata accessor for JetPackAssetSession();
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_1000D71C4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2);
}

uint64_t sub_1000D71C4()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1000D7A70;
  }

  else
  {
    v2 = sub_1000D73BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D72F4()
{
  sub_1000DC828(*(v0 + 152), type metadata accessor for TetsuoJetpackInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D73BC(uint64_t a1)
{
  v1[30] = v1[2];
  v1[31] = static BaseObjectGraph.current.getter();
  v2 = swift_task_alloc();
  v1[32] = v2;
  *v2 = v1;
  v2[1] = sub_1000D7474;
  v3 = v1[7];

  return BaseObjectGraph.inject<A>(_:)(v3);
}

uint64_t sub_1000D7474()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1000D7B74;
  }

  else
  {
    v2 = sub_1000D75A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D75A4(uint64_t a1)
{
  v17 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100006B44(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Fetching Tetsuo Jetpack Asset From Session", v4, 0xCu);
    sub_1000052E4(v5);
  }

  v9 = swift_task_alloc();
  v1[34] = v9;
  v10 = sub_1000DC7E0(&qword_1001706D0, &type metadata accessor for URLJetPackAssetFetcher, &protocol conformance descriptor for URLJetPackAssetFetcher);
  *v9 = v1;
  v9[1] = sub_1000D776C;
  v11 = v1[13];
  v12 = v1[7];
  v13 = v1[5];
  v14 = v1[3];

  return JetPackAssetSession.jetPack<A>(for:fetcher:)(v14, v11, v12, v13, v10);
}