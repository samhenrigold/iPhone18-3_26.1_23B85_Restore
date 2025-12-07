uint64_t sub_1000A2C98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_10038B038;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_1000A2D18()
{
  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100035D04(&qword_10033EAB8, &qword_100274E68);
    if (swift_dynamicCast())
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v13 handleWithSerializedObject:isa];

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100338EC8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100003078(v8, qword_10033E988);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "### Could not cast rmeoteObjectProxy to XPCLinkProtocol", v11, 2u);
      }
    }
  }

  else
  {
    if (qword_100338EC8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_10033E988);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "### No connection", v7, 2u);
    }
  }
}

double sub_1000A2FAC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v5 = a3;

  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  a4(v6, v8);
  sub_100010708(v6, v8);

  return result;
}

unint64_t sub_1000A3060()
{
  result = qword_10033EA48;
  if (!qword_10033EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EA48);
  }

  return result;
}

uint64_t sub_1000A3110(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574736575716572 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEB00000000646574)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000A323C(void *a1)
{
  v31 = sub_100035D04(&qword_10033EA50, &qword_100274E18);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v26 - v2;
  v32 = sub_100035D04(&qword_10033EA58, &qword_100274E20);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_100035D04(&qword_10033EA60, &qword_100274E28);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_100035D04(&qword_10033EA68, &unk_100274E30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_10000EBC0(a1, v12);
  sub_1000A37AC();
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_100218008();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1000A3854();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10000903C(v35);
          return v9;
        }

        v40 = 2;
        sub_1000A3800();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1000A38A8();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v22 = &type metadata for XPCConnectionEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_10000903C(v35);
  return v9;
}

unint64_t sub_1000A37AC()
{
  result = qword_10033EA70;
  if (!qword_10033EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EA70);
  }

  return result;
}

unint64_t sub_1000A3800()
{
  result = qword_10033EA80;
  if (!qword_10033EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EA80);
  }

  return result;
}

unint64_t sub_1000A3854()
{
  result = qword_10033EA88;
  if (!qword_10033EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EA88);
  }

  return result;
}

unint64_t sub_1000A38A8()
{
  result = qword_10033EA90;
  if (!qword_10033EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EA90);
  }

  return result;
}

uint64_t sub_1000A3934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A39C0()
{
  result = qword_10033EAC8;
  if (!qword_10033EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAC8);
  }

  return result;
}

unint64_t sub_1000A3A18()
{
  result = qword_10033EAD0;
  if (!qword_10033EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAD0);
  }

  return result;
}

unint64_t sub_1000A3A70()
{
  result = qword_10033EAD8;
  if (!qword_10033EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAD8);
  }

  return result;
}

unint64_t sub_1000A3AC8()
{
  result = qword_10033EAE0;
  if (!qword_10033EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAE0);
  }

  return result;
}

unint64_t sub_1000A3B20()
{
  result = qword_10033EAE8;
  if (!qword_10033EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAE8);
  }

  return result;
}

unint64_t sub_1000A3B78()
{
  result = qword_10033EAF0;
  if (!qword_10033EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAF0);
  }

  return result;
}

unint64_t sub_1000A3BD0()
{
  result = qword_10033EAF8;
  if (!qword_10033EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EAF8);
  }

  return result;
}

unint64_t sub_1000A3C28()
{
  result = qword_10033EB00;
  if (!qword_10033EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EB00);
  }

  return result;
}

unint64_t sub_1000A3C80()
{
  result = qword_10033EB08;
  if (!qword_10033EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033EB08);
  }

  return result;
}

uint64_t sub_1000A3D08()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033EB10);
  sub_100003078(v0, qword_10033EB10);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000A3D8C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000A3E10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_1000A3E64()
{
  v1 = v0;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033EB10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_1000A3F64()
{
  sub_1000A3E64();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A3FCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

void *sub_1000A4020()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v9[0] = *(*(v0 + 40) + 32);
    sub_100035D04(&qword_100339828, &unk_100270300);
    sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v2 = v0;
    v3 = Publisher.eraseToAnyPublisher()();
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = *(v2 + 16);
    v6 = *(v5 + 72);
    v7 = *(v5 + 80);
    v9[0] = v3;
    v9[1] = sub_1000AD1A8;
    v9[2] = v4;
    v9[3] = v6;
    v9[4] = v7;
    type metadata accessor for PeerActivityObserver();
    swift_allocObject();

    v1 = sub_1000B4144(v9);
    *(v2 + 48) = v1;
  }

  return v1;
}

uint64_t sub_1000A415C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = sub_1000A7578(a1);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void *sub_1000A41CC(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for DeviceActivity();
  swift_allocObject();
  v1[3] = sub_1001F16D0();
  type metadata accessor for ActivityProxyClientContext();
  sub_1000AD420(&qword_10033EE40, v4, type metadata accessor for ActivityProxyClientContext, &unk_10027536C);
  KeyPath = swift_getKeyPath();
  sub_100035D04(&qword_10033EE48, &qword_100275438);
  swift_allocObject();
  v6 = sub_10006B8D4(KeyPath, 0);

  v2[4] = v6;
  v7 = swift_getKeyPath();
  sub_100035D04(&qword_10033EE50, &qword_100275468);
  swift_allocObject();
  v8 = sub_10006BB04(v7, 0);

  v2[5] = v8;
  v2[6] = 0;
  v2[7] = &_swiftEmptySetSingleton;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_10033EB10);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Init", v12, 2u);
  }

  v2[2] = a1;
  return v2;
}

void *sub_1000A43DC()
{
  v1 = v0;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033EB10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_1000A44EC()
{
  sub_1000A43DC();

  return swift_deallocClassInstance();
}

double sub_1000A4544()
{
  v93 = sub_100035D04(&qword_10033EEF0, &qword_100275518);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v90 - v0;
  v1 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v116 = *(v1 - 8);
  v2 = __chkstk_darwin(v1 - 8);
  v117 = v3;
  v118 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v119 = &v90 - v4;
  v107 = sub_100035D04(&qword_10033EEF8, &unk_100275528);
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v90 - v5;
  v6 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v6 - 8);
  v101 = &v90 - v7;
  v102 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100035D04(&qword_10033EF00, &qword_100275538);
  v103 = *(v104 - 8);
  v10 = __chkstk_darwin(v104);
  v94 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = &v90 - v12;
  v13 = type metadata accessor for Logger();
  v122 = *(v13 - 8);
  v14 = *(v122 + 64);
  __chkstk_darwin(v13);
  v121 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100035D04(&qword_10033EF08, &qword_100275540);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v16 = &v90 - v15;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v120 = sub_100003078(v13, qword_10033EB10);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v99 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v126 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100017494(0x6574617669746361, 0xEA00000000002928, &v126);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s", v20, 0xCu);
    sub_10000903C(v21);
  }

  v124 = *(v123 + 16);
  v126 = *(*(v124 + 24) + 32);
  v96 = sub_100035D04(&qword_100339828, &unk_100270300);
  v95 = sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v22 = Publisher.eraseToAnyPublisher()();
  v23 = static os_log_type_t.info.getter();
  v126 = v22;
  v25 = v121;
  v24 = v122;
  v111 = *(v122 + 16);
  v112 = v122 + 16;
  v111(v121, v120, v13);
  v26 = (*(v24 + 80) + 64) & ~*(v24 + 80);
  v110 = *(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1000A5CB0;
  *(v27 + 24) = xmmword_1002751F0;
  *(v27 + 40) = 0xEC00000065636976;
  *(v27 + 48) = 0;
  *(v27 + 56) = 0xE000000000000000;
  v28 = *(v24 + 32);
  v113 = v26;
  v115 = v13;
  v108 = v28;
  v109 = v24 + 32;
  v28((v27 + v26), v25, v13);
  v114 = v26 + v14;
  *(v27 + v114) = v23;
  sub_100035D04(&qword_100339838, &qword_100271F10);
  type metadata accessor for HandoffDevice(0);
  sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033EF10, &qword_10033EF08, &qword_100275540, &protocol conformance descriptor for Publishers.Map<A, B>);
  v29 = v98;
  v30 = Publisher.eraseToAnyPublisher()();

  (*(v97 + 8))(v16, v29);
  v126 = v30;
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v126 = sub_1000A4020()[7];
  v126 = Publisher.share()();
  sub_100035D04(&qword_10033EF18, &qword_100275548);
  sub_10000E244(&qword_10033EF20, &qword_10033EF18, &qword_100275548, &protocol conformance descriptor for Publishers.Share<A>);
  v31 = Publisher.eraseToAnyPublisher()();

  v126 = v31;
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v32 = sub_100242B74(0, 1);

  if (v32)
  {
    v126 = v32;
    v33 = v99;
    OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v34 = qword_10038B5B8;
    v125 = qword_10038B5B8;
    v35 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v36 = v101;
    (*(*(v35 - 8) + 56))(v101, 1, 1, v35);
    v37 = v34;
    v98 = sub_100035D04(&qword_10033EF28, &qword_100275550);
    sub_100035CB8();
    sub_10000E244(&qword_10033EF30, &qword_10033EF28, &qword_100275550, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1000AD420(&qword_10034B420, 255, sub_100035CB8, &protocol conformance descriptor for OS_dispatch_queue);
    v38 = v90;
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_1000097E8(v36, &qword_10034C680, &qword_100270390);

    (*(v100 + 8))(v33, v102);

    LOBYTE(v34) = static os_log_type_t.info.getter();
    v39 = v121;
    v40 = v115;
    v111(v121, v120, v115);
    v41 = v114;
    v42 = swift_allocObject();
    *(v42 + 2) = 0;
    *(v42 + 3) = 0;
    *(v42 + 4) = 0xD000000000000015;
    *(v42 + 5) = 0x800000010029AB60;
    *(v42 + 6) = 0;
    *(v42 + 7) = 0xE000000000000000;
    v108(&v42[v113], v39, v40);
    v42[v41] = v34;
    sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    sub_10000E244(&qword_10033EF38, &qword_10033EF00, &qword_100275538, &protocol conformance descriptor for Publishers.Debounce<A, B>);
    v43 = v105;
    v44 = v104;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033EF40, &qword_10033EEF8, &unk_100275528, &protocol conformance descriptor for Publishers.Map<A, B>);
    v45 = v107;
    v46 = Publisher.eraseToAnyPublisher()();
    (*(v106 + 8))(v43, v45);
    (*(v103 + 8))(v38, v44);
    v47 = v119;
    (*(v122 + 56))(v119, 1, 1, v40);
    v48 = swift_allocObject();
    swift_weakInit();
    v126 = v46;
    v49 = v118;
    sub_100009848(v47, v118, &unk_10033D8B0, &qword_100275520);
    v50 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    sub_10007E4B8(v49, v51 + v50);
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1000AB8A0;
    *(v52 + 24) = v48;

    Publisher.sink(receiveCompletion:receiveValue:)();

    sub_1000097E8(v47, &unk_10033D8B0, &qword_100275520);

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v53 = sub_100242B74(3, 1);

  if (v53)
  {
    v54 = static os_log_type_t.info.getter();
    v126 = v53;
    v55 = v121;
    v56 = v115;
    v111(v121, v120, v115);
    v57 = v114;
    v58 = swift_allocObject();
    *(v58 + 2) = 0;
    *(v58 + 3) = 0;
    *(v58 + 4) = 0xD000000000000014;
    *(v58 + 5) = 0x800000010029AB40;
    *(v58 + 6) = 0;
    *(v58 + 7) = 0xE000000000000000;
    v108(&v58[v113], v55, v56);
    v58[v57] = v54;
    sub_100035D04(&qword_10033EF28, &qword_100275550);
    sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    sub_10000E244(&qword_10033EF30, &qword_10033EF28, &qword_100275550, &protocol conformance descriptor for AnyPublisher<A, B>);
    v59 = v91;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033EF48, &qword_10033EEF0, &qword_100275518, &protocol conformance descriptor for Publishers.Map<A, B>);
    v60 = v93;
    v61 = Publisher.eraseToAnyPublisher()();

    (*(v92 + 8))(v59, v60);
    v62 = v119;
    (*(v122 + 56))(v119, 1, 1, v56);
    v63 = swift_allocObject();
    swift_weakInit();
    v126 = v61;
    v64 = v118;
    sub_100009848(v62, v118, &unk_10033D8B0, &qword_100275520);
    v65 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    *(v66 + 24) = 0;
    sub_10007E4B8(v64, v66 + v65);
    v67 = swift_allocObject();
    *(v67 + 16) = sub_1000AB7D4;
    *(v67 + 24) = v63;

    Publisher.sink(receiveCompletion:receiveValue:)();

    sub_1000097E8(v62, &unk_10033D8B0, &qword_100275520);

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v68 = sub_100242B74(4, 1);

  if (v68)
  {
    v126 = v68;
    v70 = v99;
    OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v71 = qword_10038B5B8;
    v125 = qword_10038B5B8;
    v72 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v73 = v101;
    (*(*(v72 - 8) + 56))(v101, 1, 1, v72);
    v74 = v71;
    v124 = sub_100035D04(&qword_10033EF28, &qword_100275550);
    sub_100035CB8();
    sub_10000E244(&qword_10033EF30, &qword_10033EF28, &qword_100275550, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1000AD420(&qword_10034B420, 255, sub_100035CB8, &protocol conformance descriptor for OS_dispatch_queue);
    v75 = v94;
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_1000097E8(v73, &qword_10034C680, &qword_100270390);

    (*(v100 + 8))(v70, v102);

    LOBYTE(v71) = static os_log_type_t.info.getter();
    v76 = v121;
    v77 = v115;
    v111(v121, v120, v115);
    v78 = v114;
    v79 = swift_allocObject();
    *(v79 + 2) = 0;
    *(v79 + 3) = 0;
    *(v79 + 4) = 0xD000000000000015;
    *(v79 + 5) = 0x800000010029AB20;
    *(v79 + 6) = 0;
    *(v79 + 7) = 0xE000000000000000;
    v108(&v79[v113], v76, v77);
    v79[v78] = v71;
    sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    sub_10000E244(&qword_10033EF38, &qword_10033EF00, &qword_100275538, &protocol conformance descriptor for Publishers.Debounce<A, B>);
    v80 = v105;
    v81 = v104;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033EF40, &qword_10033EEF8, &unk_100275528, &protocol conformance descriptor for Publishers.Map<A, B>);
    v82 = v107;
    v83 = Publisher.eraseToAnyPublisher()();
    (*(v106 + 8))(v80, v82);
    (*(v103 + 8))(v75, v81);
    v84 = v119;
    (*(v122 + 56))(v119, 1, 1, v77);
    v85 = swift_allocObject();
    swift_weakInit();
    v126 = v83;
    v86 = v118;
    sub_100009848(v84, v118, &unk_10033D8B0, &qword_100275520);
    v87 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v88 = swift_allocObject();
    *(v88 + 16) = 0;
    *(v88 + 24) = 0;
    sub_10007E4B8(v86, v88 + v87);
    v89 = swift_allocObject();
    *(v89 + 16) = sub_1000AB7B0;
    *(v89 + 24) = v85;

    Publisher.sink(receiveCompletion:receiveValue:)();

    sub_1000097E8(v84, &unk_10033D8B0, &qword_100275520);

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

double sub_1000A5CD4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000A6374(v2);
  }

  return result;
}

double sub_1000A5D34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1002096D8(v2);
  }

  return result;
}

void sub_1000A5DBC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 24);

    if (v2)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v4 + 16);
    *(v4 + 16) = v5;
    v7 = v5;

    sub_1001F0504(v5);
  }
}

double sub_1000A5E84(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (v2)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    sub_1001C12B4(v4);
  }

  return result;
}

double sub_1000A5F54(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (v2)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    sub_1001C12C8(v4);
  }

  return result;
}

void sub_1000A6024()
{
  v1 = v0;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033EB10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, &v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v1 + 32);
  __chkstk_darwin(v8);
  type metadata accessor for ActivityProxyClientContext();
  swift_getKeyPath();
  v9 = v7 + qword_100346AF8;

  os_unfair_lock_lock(v9);
  v17 = *(v9 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v9);

  v10 = *(v16 + 16);
  if (v10)
  {
    v11 = sub_100009194(*(v16 + 16), 0);
    v12 = sub_100009A04(&v17, (v11 + 32), v10, v16);
    sub_100004F98(v17);
    if (v12 != v10)
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v11 < 0)
    {
      goto LABEL_18;
    }
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }
  }

  if ((v11 & 0x4000000000000000) == 0)
  {
    v13 = *(v11 + 16);
    if (!v13)
    {
LABEL_19:

      return;
    }

    goto LABEL_12;
  }

LABEL_18:
  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (v13 >= 1)
  {
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      ++v14;
      [*(v15 + 16) invalidate];
      swift_beginAccess();
      *(v15 + 40) = _swiftEmptyDictionarySingleton;

      swift_beginAccess();
      *(v15 + 48) = _swiftEmptyDictionarySingleton;
    }

    while (v13 != v14);
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
}

void sub_1000A6374(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_10033EE58, &qword_100275470);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v109 = &v81 - v6;
  v7 = sub_100035D04(&qword_10033EE60, &qword_100275478);
  v103 = *(v7 - 8);
  v104 = v7;
  __chkstk_darwin(v7);
  v102 = &v81 - v8;
  v9 = sub_100035D04(&qword_10033EE68, &qword_100275480);
  v107 = *(v9 - 8);
  v108 = v9;
  __chkstk_darwin(v9);
  v106 = &v81 - v10;
  v11 = type metadata accessor for Logger();
  isa = v11[-1].isa;
  v112 = v11;
  v12 = *(isa + 8);
  __chkstk_darwin(v11);
  v110 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100035D04(&qword_10033EE70, &qword_100275488);
  v100 = *(v13 - 1);
  v101 = v13;
  __chkstk_darwin(v13);
  v99 = &v81 - v14;
  v15 = sub_100035D04(&qword_10033EE78, &qword_100275490);
  v94 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v81 - v16;
  v18 = sub_100035D04(&qword_10033EE80, &qword_100275498);
  v95 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v81 - v19;
  v21 = sub_100035D04(&qword_10033EE88, &unk_1002754A0);
  v97 = *(v21 - 8);
  v98 = v21;
  v22 = __chkstk_darwin(v21);
  v96 = &v81 - v23;
  if (sub_10006FE7C(v22, v24))
  {
    v89 = v12;
    v92 = v5;
    v93 = v4;
    v113 = sub_10006E404();
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = a1;

    v105 = v2;
    v27 = sub_100035D04(&qword_1003398B0, &qword_100273280);
    v28 = sub_10000E244(&qword_1003398B8, &qword_1003398B0, &qword_100273280, &protocol conformance descriptor for AnyPublisher<A, B>);
    v91 = v27;
    v90 = v28;
    Publisher.filter(_:)();

    sub_10000E244(&qword_10033EE90, &qword_10033EE78, &qword_100275490, &protocol conformance descriptor for Publishers.Filter<A>);
    Publisher.map<A>(_:)();
    (*(v94 + 8))(v17, v15);
    *(swift_allocObject() + 16) = 1;
    sub_10000E244(&qword_10033EE98, &qword_10033EE80, &qword_100275498, &protocol conformance descriptor for Publishers.Map<A, B>);
    v29 = v96;
    Publisher.filter(_:)();

    v95[1](v20, v18);
    v113 = 0;
    v114 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v113 = 0xD000000000000027;
    v114 = 0x800000010029AAC0;
    v32._countAndFlagsBits = sub_1000092A0(v30, v31);
    String.append(_:)(v32);

    v33 = v114;
    v81 = v113;
    v34 = v29;
    v87 = a1;
    if (qword_100338ED0 != -1)
    {
      swift_once();
    }

    v35 = v112;
    v36 = sub_100003078(v112, qword_10033EB10);
    v94 = v36;
    v37 = static os_log_type_t.info.getter();
    v38 = isa;
    v39 = *(isa + 2);
    v88 = isa + 16;
    v95 = v39;
    v40 = v110;
    (v39)(v110, v36, v35);
    v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v86 = *(v38 + 80);
    v42 = v41 + v89;
    v82 = v41;
    v89 = (v41 + v89) & 0xFFFFFFFFFFFFFFF8;
    v83 = v42;
    v84 = (v42 & 0xFFFFFFFFFFFFFFF8) + 8;
    v43 = swift_allocObject();
    v44 = *(v38 + 4);
    isa = (v38 + 32);
    v85 = v44;
    v44(v43 + v41, v40, v35);
    *(v43 + v42) = v37;
    v45 = (v43 + (v42 & 0xFFFFFFFFFFFFFFF8) + 8);
    *v45 = v81;
    v45[1] = v33;
    sub_10000E244(&qword_10033EEA0, &qword_10033EE88, &unk_1002754A0, &protocol conformance descriptor for Publishers.Filter<A>);
    v47 = v98;
    v46 = v99;
    Publisher.map<A>(_:)();

    v81 = &protocol conformance descriptor for Publishers.Map<A, B>;
    sub_10000E244(&qword_10033EEA8, &qword_10033EE70, &qword_100275488, &protocol conformance descriptor for Publishers.Map<A, B>);
    v48 = v101;
    v49 = Publisher.eraseToAnyPublisher()();
    (*(v100 + 8))(v46, v48);
    (*(v97 + 8))(v34, v47);
    v113 = v49;
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = swift_allocObject();
    v52 = v87;
    *(v51 + 16) = v50;
    *(v51 + 24) = v52;

    v100 = sub_100035D04(&qword_10033EEB0, &unk_1002754B0);
    v101 = &protocol conformance descriptor for AnyPublisher<A, B>;
    v99 = sub_10000E244(&qword_10033EEB8, &qword_10033EEB0, &unk_1002754B0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v113 = *(v52 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___regionPublisher);

    v53 = v102;
    Publisher.map<A>(_:)();

    *(swift_allocObject() + 16) = 1;
    sub_10000E244(&qword_10033EEC0, &qword_10033EE60, &qword_100275478, &protocol conformance descriptor for Publishers.Map<A, B>);
    v54 = v106;
    v55 = v104;
    Publisher.filter(_:)();

    (*(v103 + 8))(v53, v55);
    v113 = 0;
    v114 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v113 = 0xD00000000000002BLL;
    v114 = 0x800000010029AAF0;
    v58._countAndFlagsBits = sub_1000092A0(v56, v57);
    String.append(_:)(v58);

    v59 = v113;
    v60 = v114;
    LOBYTE(v50) = static os_log_type_t.info.getter();
    v61 = v110;
    v62 = v112;
    (v95)(v110, v94, v112);
    v63 = swift_allocObject();
    v85(v63 + v82, v61, v62);
    *(v63 + v83) = v50;
    v64 = (v63 + v84);
    *v64 = v59;
    v64[1] = v60;
    sub_10000E244(&qword_10033EEC8, &qword_10033EE68, &qword_100275480, &protocol conformance descriptor for Publishers.Filter<A>);
    v66 = v108;
    v65 = v109;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033EED0, &qword_10033EE58, &qword_100275470, v81);
    v67 = v93;
    v68 = Publisher.eraseToAnyPublisher()();
    (*(v92 + 8))(v65, v67);
    (*(v107 + 8))(v54, v66);
    v113 = v68;
    v69 = swift_allocObject();
    swift_weakInit();
    v70 = swift_allocObject();
    *(v70 + 16) = v69;
    *(v70 + 24) = v52;

    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v113 = *(v52 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_activityStreamErrorSubject);
    sub_100035D04(&qword_10033D430, &qword_100273098);
    sub_10000E244(&qword_10033EED8, &qword_10033D430, &qword_100273098, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v113 = Publisher.eraseToAnyPublisher()();
    v71 = swift_allocObject();
    swift_weakInit();
    v72 = swift_allocObject();
    *(v72 + 16) = v71;
    *(v72 + 24) = v52;

    sub_100035D04(&qword_10033EEE0, &qword_1002754C0);
    sub_10000E244(&qword_10033EEE8, &qword_10033EEE0, &qword_1002754C0, v101);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    if (qword_100338ED0 != -1)
    {
      swift_once();
    }

    sub_100003078(v112, qword_10033EB10);

    v112 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v112, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v113 = v75;
      *v74 = 136315138;
      v77 = sub_1000092A0(v75, v76);
      v79 = sub_100017494(v77, v78, &v113);

      *(v74 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v112, v73, "Device does not require activity syncing: %s", v74, 0xCu);
      sub_10000903C(v75);
    }

    else
    {
      v80 = v112;
    }
  }
}

BOOL sub_1000A73E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v4 = sub_1000FB6A0(a3);

    return !v4;
  }

  else
  {
    return 0;
  }
}

double sub_1000A7474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_10004982C(a3);
  }

  return result;
}

double sub_1000A74F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1002096D8(a3);
  }

  return result;
}

uint64_t sub_1000A7578(uint64_t a1)
{
  v2 = v1;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v4 = *(qword_10038B0B8 + 1472);
  v5 = sub_1000031CC();

  if ((v5 & 1) == 0)
  {
    v10 = *(v2 + 16);
    v11 = *(v10 + 32);

    LOBYTE(v11) = v11(a1);

    if (v11)
    {
      v6 = 1;
      v9 = 0xD000000000000018;
      v7 = 0x800000010029AA80;
LABEL_7:
      v8 = a1;
      goto LABEL_8;
    }

    CurrentValueSubject.value.getter();
    if (v22 == 6)
    {
      CurrentValueSubject.value.getter();

      if (v21 <= 1u)
      {
LABEL_12:
        v13 = *(v10 + 48);

        LOBYTE(v13) = v13(v14);

        if ((v13 & 1) == 0)
        {
          sub_1000A7860(a1, 0, 0x6F206E6565726353, 0xEA00000000006666);
          return 0;
        }

        v6 = 1;
        v9 = 0x63656863206C6C41;
        v7 = 0xEF7373617020736BLL;
        goto LABEL_7;
      }
    }

    else
    {

      if (v22 <= 1u)
      {
        goto LABEL_12;
      }
    }

    _StringGuts.grow(_:)(28);

    CurrentValueSubject.value.getter();
    if (v20 == 6)
    {
      CurrentValueSubject.value.getter();

      if (v22 != 5)
      {
LABEL_17:
        v15 = String.init<A>(describing:)();
        v17 = v16;
LABEL_21:
        v18 = v17;
        String.append(_:)(*&v15);

        v19._countAndFlagsBits = 41;
        v19._object = 0xE100000000000000;
        String.append(_:)(v19);
        sub_1000A7860(a1, 0, 0xD000000000000019, 0x800000010029AA60);

        return 0;
      }
    }

    else
    {

      if (v20 != 5)
      {
        goto LABEL_17;
      }
    }

    v17 = 0xE300000000000000;
    v15 = 7104878;
    goto LABEL_21;
  }

  v6 = 1;
  v7 = 0x800000010029AAA0;
  v8 = a1;
  v9 = 0xD000000000000012;
LABEL_8:
  sub_1000A7860(v8, 1, v9, v7);
  return v6;
}

void sub_1000A7860(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10033EB10);

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315650;
    v12 = sub_1000092A0(v10, v11);
    v14 = sub_100017494(v12, v13, &v16);

    *(v9 + 4) = v14;
    *(v9 + 12) = 1024;
    *(v9 + 14) = a2 & 1;
    *(v9 + 18) = 2080;
    *(v9 + 20) = sub_100017494(a3, a4, &v16);
    _os_log_impl(&_mh_execute_header, oslog, v8, "%s shouldRestartObservation=%{BOOL}d: %s", v9, 0x1Cu);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000A7A24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_1000A7A78(uint64_t a1, uint64_t a2)
{
  result = sub_1000AD420(&qword_10033EE28, a2, type metadata accessor for ActivityProxy, &unk_100275300);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A7AD0(uint64_t a1, uint64_t a2)
{
  result = sub_1000AD420(&qword_10033EE30, a2, type metadata accessor for ActivityProxyClientContext, &unk_100275344);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A7B28(uint64_t a1, uint64_t a2)
{
  result = sub_1000AD420(&qword_10033EE38, a2, type metadata accessor for ActivityProxyModel, &unk_1002753C0);
  *(a1 + 8) = result;
  return result;
}

void sub_1000A7B80(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v46 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v44 - v8;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_10033EB10);
  v11 = a1;
  v12 = a2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v47 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v45 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v49 = v19;
    *v16 = 136315650;
    *(v16 + 4) = sub_100017494(0xD000000000000019, 0x800000010029ABC0, &v49);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v11;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v12;
    *v18 = v11;
    v18[1] = v12;
    v20 = v11;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: client=%@, identifier=%@", v16, 0x20u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();
    v4 = v45;

    sub_10000903C(v19);
  }

  v22 = sub_1000A9120(v12, sub_1000AB8E4, "### Could not find HandoffDevice for PCHomeKitIdentifier %@");
  if (v22)
  {
    v23 = v22;
    v24 = [v12 accessoryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = [v12 homeID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = objc_allocWithZone(PCHomeKitIdentifier);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v28 = UUID._bridgeToObjectiveC()().super.isa;
    v29 = [v26 initWithAccessoryID:isa homeID:v28];

    v30 = *(v46 + 8);
    v30(v7, v4);
    v30(v9, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v29;
    static Published.subscript.getter();

    v32 = sub_10000C868();
    v34 = v33;

    sub_100058DC8(v32, v34);

    v35 = String._bridgeToObjectiveC()();

    [v31 setDeviceName:v35];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v36 = *(v49 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset);
    LODWORD(v30) = *(v49 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset + 8);

    if (v30)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36;
    }

    [v31 setAssetType:v37];

    sub_1000A8148(v47, v23, v31);
  }

  else
  {
    v38 = v12;
    v48 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v38;
      *v41 = v38;
      v42 = v38;
      _os_log_impl(&_mh_execute_header, v48, v39, "### Client requested observation of HomeKit %@, which is unknown", v40, 0xCu);
      sub_1000097E8(v41, &qword_100339940, &unk_100272C50);
    }

    v43 = v48;
  }
}

void sub_1000A8148(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v81 = a3;
  v7 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v7 - 8);
  v78 = &v67 - v8;
  v9 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v73 = *(v9 - 8);
  v74 = v9;
  __chkstk_darwin(v9);
  v72 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100035D04(&qword_10033EF50, &qword_1002755A0);
  v70 = *(v11 - 8);
  v71 = v11;
  __chkstk_darwin(v11);
  v68 = &v67 - v12;
  v13 = sub_100035D04(&qword_10033EF58, &qword_1002755A8);
  v76 = *(v13 - 8);
  v77 = v13;
  __chkstk_darwin(v13);
  v69 = &v67 - v14;
  v75 = sub_100035D04(&qword_10033EF60, &unk_1002755B0);
  v80 = *(v75 - 8);
  __chkstk_darwin(v75);
  v79 = &v67 - v15;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003078(v16, qword_10033EB10);

  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v82 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v83[0] = v67;
    *v21 = 138412802;
    *(v21 + 4) = v17;
    *v22 = v17;
    *(v21 + 12) = 2080;
    v23 = v17;
    v25 = sub_1000092A0(v23, v24);
    v27 = sub_100017494(v25, v26, v83);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    type metadata accessor for UUID();
    sub_1000AD420(&qword_10033E718, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = sub_100017494(v28, v29, v83);

    *(v21 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "Client %@ start observing %s with id %s", v21, 0x20u);
    sub_1000097E8(v22, &qword_100339940, &unk_100272C50);

    swift_arrayDestroy();
  }

  v31 = *(v4 + 32) + qword_100346AF8;

  os_unfair_lock_lock(v31);
  v32 = *(v31 + 8);
  if (*(v32 + 16))
  {
    v33 = v82;
    v34 = sub_100026910(v82);
    if (v35)
    {
      v36 = *(*(v32 + 56) + 8 * v34);
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
    v33 = v82;
  }

  os_unfair_lock_unlock(v31);

  if (v36)
  {
    v67 = v4;

    v83[0] = sub_10005E50C();
    sub_100035D04(&unk_1003436D0, &qword_1002702F0);
    sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v37 = Publisher.eraseToAnyPublisher()();

    v83[0] = v37;
    sub_10009E464(a2, &v84);
    v83[3] = v84;
    sub_100035D04(&qword_10033EF68, &unk_1002755C0);
    sub_10000E244(&qword_10033EF70, &qword_10033EF68, &unk_1002755C0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v38 = Publisher.eraseToAnyPublisher()();

    v84 = v38;
    sub_100035D04(&unk_1003436E0, &unk_100276210);
    sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210, &protocol conformance descriptor for AnyPublisher<A, B>);
    v39 = v68;
    Publishers.CombineLatest.init(_:_:)();
    v40 = v72;
    OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
    sub_100035CB8();
    v41 = static OS_dispatch_queue.main.getter();
    v83[0] = v41;
    sub_10000E244(&qword_10033EF78, &qword_10033EF50, &qword_1002755A0, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
    sub_1000AD420(&qword_10034B420, 255, sub_100035CB8, &protocol conformance descriptor for OS_dispatch_queue);
    v42 = v69;
    v43 = v71;
    Publisher.throttle<A>(for:scheduler:latest:)();

    (*(v73 + 8))(v40, v74);
    (*(v70 + 8))(v39, v43);
    v44 = static OS_dispatch_queue.main.getter();
    v83[0] = v44;
    v45 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v46 = v78;
    (*(*(v45 - 8) + 56))(v78, 1, 1, v45);
    sub_10000E244(&qword_10033EF80, &qword_10033EF58, &qword_1002755A8, &protocol conformance descriptor for Publishers.Throttle<A, B>);
    v47 = v79;
    v48 = v77;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v46, &qword_10034C680, &qword_100270390);

    (*(v76 + 8))(v42, v48);
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = swift_allocObject();
    v51[2] = v49;
    v51[3] = v50;
    v52 = v81;
    v53 = v82;
    v51[4] = a2;
    v51[5] = v53;
    v51[6] = v52;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1000AD1B0;
    *(v54 + 24) = v51;
    sub_10000E244(&qword_10033EF88, &qword_10033EF60, &unk_1002755B0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

    v55 = v53;
    v56 = v52;
    v57 = v75;
    v58 = Publisher<>.sink(receiveValue:)();

    (*(v80 + 8))(v47, v57);
    v59 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = *(v36 + 40);
    *(v36 + 40) = 0x8000000000000000;
    sub_10004CE14(v58, a2 + v59, isUniquelyReferenced_nonNull_native);
    *(v36 + 40) = v84;
    swift_endAccess();
  }

  else
  {
    v61 = v33;
    v82 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v82, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      *(v63 + 4) = v61;
      *v64 = v61;
      v65 = v61;
      _os_log_impl(&_mh_execute_header, v82, v62, "### Inactive client: %@", v63, 0xCu);
      sub_1000097E8(v64, &qword_100339940, &unk_100272C50);
    }

    v66 = v82;
  }
}

void sub_1000A8C70(void *a1, void *a2)
{
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10033EB10);
  v5 = a1;
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_100017494(0xD000000000000019, 0x800000010029ABC0, &v32);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v5;
    *(v9 + 22) = 2112;
    *(v9 + 24) = v6;
    *v10 = v5;
    v10[1] = v6;
    v12 = v5;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: client=%@, identifier=%@", v9, 0x20u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();

    sub_10000903C(v11);
  }

  v14 = sub_1000A9120(v6, sub_1000AC308, "### Could not find HandoffDevice for PCMediaRemoteIdentifier %@");
  if (v14)
  {
    v15 = v14;
    v16 = [v6 mediaRemoteID];
    if (!v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    v17 = [objc_allocWithZone(PCMediaRemoteIdentifier) initWithIdentifier:v16];

    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v17;
    static Published.subscript.getter();

    v19 = sub_10000C868();
    v21 = v20;

    sub_100058DC8(v19, v21);

    v22 = String._bridgeToObjectiveC()();

    [v18 setDeviceName:v22];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v23 = *(v32 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset);
    v24 = *(v32 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset + 8);

    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    [v18 setAssetType:v25];

    sub_1000A8148(v5, v15, v18);
  }

  else
  {
    v26 = v6;
    oslog = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v26;
      *v29 = v26;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, oslog, v27, "### Client request observation of MediaRemote %@, which is unknown", v28, 0xCu);
      sub_1000097E8(v29, &qword_100339940, &unk_100272C50);
    }
  }
}

uint64_t sub_1000A9120(void *a1, uint64_t (*a2)(uint64_t, id), const char *a3, ...)
{
  v6 = (*(*(v3 + 16) + 24) + qword_100346AF8);
  v7 = a1;

  os_unfair_lock_lock(v6);

  v9 = a2(v8, v7);

  os_unfair_lock_unlock(v6);

  if (!v9)
  {
    if (qword_100338ED0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_10033EB10);
    v11 = v7;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, a3, v14, 0xCu);
      sub_1000097E8(v15, &qword_100339940, &unk_100272C50);
    }
  }

  return v9;
}

void sub_1000A9300(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033EB10);
  v7 = a1;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_100017494(0xD000000000000018, 0x800000010029ABA0, &v29);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    *(v10 + 22) = 2080;
    v12 = v7;
    v14 = sub_1000092A0(v12, v13);
    v16 = v3;
    v17 = sub_100017494(v14, v15, &v29);

    *(v10 + 24) = v17;
    v3 = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: client=%@, device=%s", v10, 0x20u);
    sub_1000097E8(v11, &qword_100339940, &unk_100272C50);

    swift_arrayDestroy();
  }

  v18 = *(v3 + 32) + qword_100346AF8;

  os_unfair_lock_lock(v18);
  v19 = *(v18 + 8);
  if (*(v19 + 16) && (v20 = sub_100026910(v7), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
  }

  else
  {
    v22 = 0;
  }

  os_unfair_lock_unlock(v18);

  if (v22)
  {
    sub_1000AA088(v7, a2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id);
  }

  else
  {
    v23 = v7;
    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v23;
      *v26 = v23;
      v27 = v23;
      _os_log_impl(&_mh_execute_header, oslog, v24, "### Inactive client: %@", v25, 0xCu);
      sub_1000097E8(v26, &qword_100339940, &unk_100272C50);
    }
  }
}

void sub_1000A96C0(void *a1, void *a2, uint64_t (*a3)(uint64_t, id), const char *a4, ...)
{
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10033EB10);
  v9 = a1;
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    osloga = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_100017494(0xD000000000000018, 0x800000010029ABA0, &v26);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v9;
    *(v13 + 22) = 2112;
    *(v13 + 24) = v10;
    *v14 = v9;
    v14[1] = v10;
    v16 = v9;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: client=%@, identifier=%@", v13, 0x20u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();

    sub_10000903C(v15);

    a4 = osloga;
  }

  v18 = sub_1000A9120(v10, a3, a4);
  if (v18)
  {
    sub_1000A9300(v9, v18);
  }

  else
  {
    v19 = v10;
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v19;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v20, "### Could not stop observing %@. Device not found.", v21, 0xCu);
      sub_1000097E8(v22, &qword_100339940, &unk_100272C50);
    }
  }
}

void sub_1000A99E4(void *a1)
{
  v2 = v1;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10033EB10);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0xD00000000000001ALL, 0x800000010029AB80, v23);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: client=%@", v8, 0x16u);
    sub_1000097E8(v9, &qword_100339940, &unk_100272C50);

    sub_10000903C(v10);
  }

  v12 = *(v2 + 32) + qword_100346AF8;

  os_unfair_lock_lock(v12);
  v13 = *(v12 + 8);
  if (*(v13 + 16) && (v14 = sub_100026910(v5), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_unlock(v12);

  if (v16)
  {
    swift_beginAccess();
    *(v16 + 40) = _swiftEmptyDictionarySingleton;

    swift_beginAccess();
    *(v16 + 48) = _swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = v5;
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v17;
      *v20 = v17;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, oslog, v18, "### Inactive client: %@", v19, 0xCu);
      sub_1000097E8(v20, &qword_100339940, &unk_100272C50);
    }
  }
}

void sub_1000A9D3C(void *a1)
{
  v2 = v1;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10033EB10);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0xD000000000000017, 0x800000010029AC90, &v23);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: client=%@", v8, 0x16u);
    sub_1000097E8(v9, &qword_100339940, &unk_100272C50);

    sub_10000903C(v10);
  }

  v12 = *(v2 + 32) + qword_100346AF8;

  os_unfair_lock_lock(v12);
  v13 = *(v12 + 8);
  if (*(v13 + 16) && (v14 = sub_100026910(v5), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_unlock(v12);

  if (v16)
  {
    sub_1000A99E4(v5);

    sub_100209518(v16);
  }

  else
  {
    v17 = v5;
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v17;
      *v20 = v17;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, oslog, v18, "### Inactive client: %@", v19, 0xCu);
      sub_1000097E8(v20, &qword_100339940, &unk_100272C50);
    }
  }
}

void sub_1000AA088(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v43 - v10;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100003078(v12, qword_10033EB10);
  v14 = *(v7 + 16);
  v47 = v7 + 16;
  v48 = v14;
  v14(v11, a2, v6);
  v15 = a1;
  v46 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v50 = v15;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v51 = v6;
    v20 = v19;
    v21 = swift_slowAlloc();
    v44 = v21;
    v45 = swift_slowAlloc();
    v52[0] = v45;
    *v20 = 136315650;
    *(v20 + 4) = sub_100017494(0xD000000000000018, 0x800000010029ABA0, v52);
    *(v20 + 12) = 2112;
    *(v20 + 14) = v15;
    *v21 = v15;
    *(v20 + 22) = 2080;
    sub_1000AD420(&qword_10033E718, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = v3;
    v23 = a2;
    v24 = v15;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v7 + 8))(v11, v51);
    v28 = sub_100017494(v25, v27, v52);
    a2 = v23;
    v3 = v22;

    *(v20 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: client=%@, deviceID=%s", v20, 0x20u);
    sub_1000097E8(v44, &qword_100339940, &unk_100272C50);

    swift_arrayDestroy();

    v6 = v51;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v29 = *(v3 + 32) + qword_100346AF8;

  os_unfair_lock_lock(v29);
  v30 = *(v29 + 8);
  if (*(v30 + 16))
  {
    v31 = v50;
    v32 = sub_100026910(v50);
    if (v33)
    {
      v34 = *(*(v30 + 56) + 8 * v32);
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
    v31 = v50;
  }

  os_unfair_lock_unlock(v29);

  if (v34)
  {
    v36 = v48;
    v35 = v49;
    v48(v49, a2, v6);
    swift_beginAccess();
    sub_1001CF58C(0, v35);
    swift_endAccess();
    v36(v35, a2, v6);
    swift_beginAccess();
    sub_1001CF58C(0, v35);
    swift_endAccess();
  }

  else
  {
    v37 = v31;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "### Inactive client: %@", v40, 0xCu);
      sub_1000097E8(v41, &qword_100339940, &unk_100272C50);
    }
  }
}

double sub_1000AA5C4(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v109 = a3;
  v110 = a2;
  LODWORD(v108) = a1;
  v12 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v106 = *(v12 - 8);
  v13 = *(v106 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v107 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v96 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v23 = Strong;
  swift_beginAccess();
  v24 = swift_weakLoadStrong();
  if (!v24)
  {
LABEL_34:

    return result;
  }

  v102 = v13;
  v98 = v16;
  v103 = a8;
  v104 = v24;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v97 = type metadata accessor for Logger();
  v25 = sub_100003078(v97, qword_10033EB10);

  v26 = a7;
  v28 = v109;
  v27 = v110;
  sub_10007732C(v110, v109, a4);
  v101 = v25;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  sub_100077374(v27, v28, a4);
  v31 = os_log_type_enabled(v29, v30);
  v105 = a4;
  if (v31)
  {
    v32 = v30;
    v100 = v23;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v111 = v34;
    *v33 = 136315650;
    v99 = v26;
    v36 = sub_1000092A0(v34, v35);
    v38 = sub_100017494(v36, v37, &v111);

    *(v33 + 4) = v38;
    v39 = v105;
    *(v33 + 12) = 1024;
    *(v33 + 14) = v108 & 1;
    *(v33 + 18) = 2080;
    if (v39 == 1)
    {
      v40 = 0xE300000000000000;
      v41 = 7104878;
    }

    else
    {
      v43 = v110;
      v112 = v110;
      v113 = v109 & 1;
      v114 = v39;

      v44 = v43;
      v41 = String.init<A>(describing:)();
      v40 = v45;
    }

    v46 = sub_100017494(v41, v40, &v111);

    *(v33 + 20) = v46;
    _os_log_impl(&_mh_execute_header, v29, v32, "Device updated: %s, executedThisSession=%{BOOL}d, transferrableActivity=%s", v33, 0x1Cu);
    swift_arrayDestroy();

    v42 = v99;
    v23 = v100;
  }

  else
  {

    v42 = v26;
  }

  v47 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  (*(v18 + 16))(v20, v42 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, v17);
  swift_beginAccess();
  sub_1001CF58C(0, v20);
  swift_endAccess();
  if (v108)
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "Sending empty context - executedThisSession=true";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v48, v49, v51, v50, 2u);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (v105 == 1)
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "Sending empty context - No transferrableActivity";
      goto LABEL_18;
    }

LABEL_19:

    v52 = [objc_allocWithZone(PCDisambiguationContext) initWithIdentifier:a9 direction:0 activityData:0];
    sub_1000ACB20(v103, v42, a9, v52);

    return result;
  }

  if ((v109 & 1) == 0)
  {
    v53 = v110;
    sub_10007732C(v110, v109, v105);
LABEL_27:
    v100 = v23;
    swift_getObjectType();
    v60 = v53;
    v61 = sub_1001F64AC();

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v110 = a9;
      v99 = v42;
      v62 = v60;
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();

      v65 = os_log_type_enabled(v63, v64);
      v109 = v62;
      if (v65)
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v111 = v62;
        v112 = v67;
        *v66 = 136315394;
        v68 = v62;
        sub_100035D04(&qword_10033D6D0, &unk_10027C120);
        v69 = String.init<A>(describing:)();
        v71 = sub_100017494(v69, v70, &v112);

        *(v66 + 4) = v71;
        *(v66 + 12) = 2080;
        v72 = PCInteractionDirection.description.getter(v61);
        v74 = sub_100017494(v72, v73, &v112);

        *(v66 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v63, v64, "Activity serialization starting: activity=%s, direction=%s", v66, 0x16u);
        swift_arrayDestroy();
      }

      v75 = v98;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100035D04(&qword_10033EF90, &qword_1002755D0);
      swift_allocObject();
      v76 = Future.init(_:)();
      v108 = v76;
      (*(*(v97 - 8) + 56))(v75, 1, 1);
      v77 = swift_allocObject();
      swift_weakInit();
      v78 = swift_allocObject();
      v79 = v110;
      v78[2] = v110;
      v78[3] = v61;
      v80 = v103;
      v78[4] = v77;
      v78[5] = v80;
      v81 = v99;
      v78[6] = v99;
      v112 = v76;
      v82 = v107;
      sub_100009848(v75, v107, &unk_10033D8B0, &qword_100275520);
      v83 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v84 = swift_allocObject();
      *(v84 + 16) = 0;
      *(v84 + 24) = 0;
      sub_10007E4B8(v82, v84 + v83);
      v85 = swift_allocObject();
      *(v85 + 16) = sub_1000AD220;
      *(v85 + 24) = v78;
      sub_10000E244(&qword_10033EF98, &qword_10033EF90, &qword_1002755D0, &protocol conformance descriptor for Future<A, B>);

      v86 = v79;
      v87 = v80;

      v88 = Publisher.sink(receiveCompletion:receiveValue:)();

      sub_1000097E8(v98, &unk_10033D8B0, &qword_100275520);

      v89 = v104;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = *(v89 + 48);
      *(v89 + 48) = 0x8000000000000000;
      sub_10004CE14(v88, v81 + v47, isUniquelyReferenced_nonNull_native);
      *(v89 + 48) = v111;
      swift_endAccess();

      v91 = v109;
    }

    else
    {
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v92, v93, "### Sending empty context - Could not cast activity to NSUserActivity", v94, 2u);
      }

      v95 = [objc_allocWithZone(PCDisambiguationContext) initWithIdentifier:a9 direction:0 activityData:0];
      sub_1000ACB20(v103, v42, a9, v95);
    }

    goto LABEL_34;
  }

  v53 = v110;
  v54 = v110;
  if (sub_10006FE7C(v54, v55))
  {
    goto LABEL_27;
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "Sending empty context - Activity is non-media", v58, 2u);
  }

  v59 = [objc_allocWithZone(PCDisambiguationContext) initWithIdentifier:a9 direction:0 activityData:0];
  sub_1000ACB20(v103, v42, a9, v59);

  return result;
}

void sub_1000AB190(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = *a1;
  v11 = a1[1];
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_10033EB10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Activity serialization finished", v15, 2u);
  }

  v16 = objc_allocWithZone(PCDisambiguationContext);
  sub_10006DA04(v10, v11);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100010708(v10, v11);
  v18 = [v16 initWithIdentifier:a2 direction:a3 activityData:isa];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000ACB20(a5, a6, a2, v18);
  }
}

uint64_t sub_1000AB340(uint64_t a1, uint64_t a2, os_log_type_t a3, uint64_t a4, unint64_t a5)
{
  v9 = Logger.logObject.getter();
  if (os_log_type_enabled(v9, a3))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100017494(a4, a5, &v13);
    _os_log_impl(&_mh_execute_header, v9, a3, "%s", v10, 0xCu);
    sub_10000903C(v11);
  }

  return a1;
}

void *sub_1000AB43C(uint64_t a1, uint64_t a2, void *a3)
{
  a3[5] = _swiftEmptyDictionarySingleton;
  a3[6] = _swiftEmptyDictionarySingleton;
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033EB10);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  a3[2] = a1;
  a3[3] = a2;
  a3[4] = &off_100303BB8;
  return a3;
}

uint64_t sub_1000AB580()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

uint64_t sub_1000AB620@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  result = sub_1000AB340(*a1, v2 + v6, *(v2 + v6 + *(v5 + 64)), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1000AB6CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_1001CD374(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_1000AB7DC@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Logger();
  *a3 = a2(*a1, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);

  return swift_unknownObjectRetain();
}

uint64_t sub_1000AB8A8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

void sub_1000AB8E4(uint64_t a1, void *a2)
{
  v102 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v82 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v81 - v8;
  v10 = __chkstk_darwin(v7);
  v81 = &v81 - v11;
  __chkstk_darwin(v10);
  v85 = &v81 - v12;
  v13 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v14 = __chkstk_darwin(v13 - 8);
  v84 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v89 = &v81 - v17;
  v18 = __chkstk_darwin(v16);
  v101 = &v81 - v19;
  v20 = __chkstk_darwin(v18);
  v100 = &v81 - v21;
  v22 = __chkstk_darwin(v20);
  v83 = &v81 - v23;
  v24 = __chkstk_darwin(v22);
  v99 = &v81 - v25;
  v26 = __chkstk_darwin(v24);
  v91 = &v81 - v27;
  __chkstk_darwin(v26);
  v29 = &v81 - v28;
  v30 = a1 + 64;
  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a1 + 64);
  v34 = (v31 + 63) >> 6;
  v97 = (v4 + 48);
  v98 = (v4 + 56);
  v92 = a1;
  v93 = (v4 + 32);
  v88 = (v4 + 8);

  v35 = 0;
  v86 = v34;
  v87 = a1 + 64;
  v104 = v3;
  v90 = v9;
  for (i = v29; v33; v30 = v87)
  {
    v36 = v35;
LABEL_8:
    v37 = *(*(v92 + 56) + ((v36 << 9) | (8 * __clz(__rbit64(v33)))));
    swift_getKeyPath();
    swift_getKeyPath();

    v103 = v37;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v38 = v105;
    if (v105)
    {
      v39 = [v105 uniqueIdentifier];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v41 = v91;
    v42 = *v98;
    v43 = v104;
    (*v98)(v29, v40, 1, v104);
    v44 = [v102 accessoryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v95 = v42;
    v42(v41, 0, 1, v43);
    v45 = v99;
    sub_100009848(v29, v99, &unk_100348F30, &unk_100272540);
    v46 = *v97;
    v47 = (*v97)(v45, 1, v43);
    v94 = v46;
    if (v47 == 1)
    {
      v48 = v99;
    }

    else
    {
      v49 = *v93;
      v50 = v85;
      v51 = v104;
      (*v93)(v85, v99, v104);
      v52 = v83;
      sub_100009848(v41, v83, &unk_100348F30, &unk_100272540);
      if (v46(v52, 1, v51) != 1)
      {
        v54 = v81;
        v49(v81, v52, v104);
        sub_1000AD420(&qword_10034B5A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v56 = v104;
        v57 = v55;
        v58 = *v88;
        v59 = v54;
        v41 = v91;
        (*v88)(v59, v104);
        v58(v50, v56);
        v53 = v57 ^ 1;
        goto LABEL_17;
      }

      (*v88)(v50, v104);
      v48 = v52;
    }

    sub_1000097E8(v48, &unk_100348F30, &unk_100272540);
    v53 = 1;
LABEL_17:
    sub_1000097E8(v41, &unk_100348F30, &unk_100272540);
    sub_1000097E8(i, &unk_100348F30, &unk_100272540);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v60 = v105;
    if (v105 && (v61 = [v105 home], v60, v61))
    {
      v62 = [v61 uniqueIdentifier];

      v63 = v100;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v64 = 0;
    }

    else
    {
      v64 = 1;
      v63 = v100;
    }

    v65 = v95;
    v95(v63, v64, 1, v104);
    v66 = [v102 homeID];
    v67 = v101;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v65(v67, 0, 1, v104);
    v68 = v89;
    sub_100009848(v63, v89, &unk_100348F30, &unk_100272540);
    v69 = v94;
    if (v94(v68, 1, v104) == 1)
    {
      sub_1000097E8(v68, &unk_100348F30, &unk_100272540);
      v70 = 1;
    }

    else
    {
      LODWORD(v95) = v53;
      v71 = v69;
      v72 = *v93;
      v73 = v104;
      (*v93)(v90, v68, v104);
      v74 = v84;
      sub_100009848(v67, v84, &unk_100348F30, &unk_100272540);
      if (v71(v74, 1, v73) == 1)
      {
        (*v88)(v90, v104);
        sub_1000097E8(v74, &unk_100348F30, &unk_100272540);
        v70 = 1;
      }

      else
      {
        v75 = v82;
        v72(v82, v74, v104);
        sub_1000AD420(&qword_10034B5A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v76 = v90;
        v77 = dispatch thunk of static Equatable.== infix(_:_:)();
        v78 = v104;
        v79 = v77;
        v80 = *v88;
        (*v88)(v75, v104);
        v80(v76, v78);
        v70 = v79 ^ 1;
      }

      v53 = v95;
    }

    sub_1000097E8(v101, &unk_100348F30, &unk_100272540);
    sub_1000097E8(v100, &unk_100348F30, &unk_100272540);
    if (((v53 | v70) & 1) == 0)
    {
      goto LABEL_30;
    }

    v33 &= v33 - 1;

    v35 = v36;
    v29 = i;
    v34 = v86;
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v34)
    {
LABEL_30:

      return;
    }

    v33 = *(v30 + 8 * v36);
    ++v35;
    if (v33)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1000AC308(uint64_t a1, void *a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v19 = v2;
  while (v5)
  {
    v8 = v7;
LABEL_11:
    v5 &= v5 - 1;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v11 = sub_10000DF0C(v9, v10);
    v13 = v12;

    v14 = [a2 mediaRemoteID];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v13)
    {
      if (v11 == v15 && v13 == v17)
      {

        return;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
LABEL_16:

        return;
      }
    }

    else
    {
    }

    v7 = v8;
    v2 = v19;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_16;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1000AC51C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10033EB10);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v43 = a3;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v44[0] = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_100017494(0xD00000000000002DLL, 0x800000010029AC60, v44);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: client=%@", v12, 0x16u);
    sub_1000097E8(v13, &qword_100339940, &unk_100272C50);

    sub_10000903C(v14);
    a3 = v43;
  }

  v16 = *(a3 + 32) + qword_100346AF8;

  os_unfair_lock_lock(v16);
  v17 = *(v16 + 8);
  if (*(v17 + 16) && (v18 = sub_100026910(v9), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    v20 = 0;
  }

  os_unfair_lock_unlock(v16);

  if (!v20)
  {
    v24 = *(a3 + 32);
    __chkstk_darwin(v21);
    type metadata accessor for ActivityProxyClientContext();
    swift_getKeyPath();
    v25 = v24 + qword_100346AF8;

    os_unfair_lock_lock(v25);
    v44[0] = *(v25 + 8);

    swift_getAtKeyPath();

    v26 = v44[5];
    os_unfair_lock_unlock(v25);

    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = sub_100009194(*(v26 + 16), 0);
      v29 = sub_100009A04(v44, (v28 + 32), v27, v26);
      sub_100004F98(v44[0]);
      if (v29 != v27)
      {
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {

      v28 = _swiftEmptyArrayStorage;
    }

    v41 = v9;
    v42 = a2;
    if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
      if (v30)
      {
LABEL_20:
        if (v30 >= 1)
        {
          v31 = 0;
          do
          {
            if ((v28 & 0xC000000000000001) != 0)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v32 = *(v28 + 8 * v31 + 32);
            }

            v33 = Logger.logObject.getter();
            v34 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v33, v34))
            {
              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              *v35 = 138412290;
              v37 = *(v32 + 16);
              *(v35 + 4) = v37;
              *v36 = v37;
              v38 = v37;
              _os_log_impl(&_mh_execute_header, v33, v34, "### Invalidating existing client: %@", v35, 0xCu);
              sub_1000097E8(v36, &qword_100339940, &unk_100272C50);
            }

            ++v31;

            [*(v32 + 16) invalidate];

            sub_100209518(v32);
          }

          while (v30 != v31);
          goto LABEL_29;
        }

LABEL_31:
        __break(1u);
        return;
      }
    }

    else
    {
      v30 = *(v28 + 16);
      if (v30)
      {
        goto LABEL_20;
      }
    }

LABEL_29:

    v39 = swift_allocObject();
    v40 = sub_1000AB43C(v41, v42, v39);

    sub_1000497D8(v40);

    (*(a4 + 16))(a4, 0);

    return;
  }

  sub_10001618C();
  swift_allocError();
  *v22 = 0xD000000000000032;
  *(v22 + 8) = 0x800000010029AC20;
  *(v22 + 16) = 2;
  v23 = _convertErrorToNSError(_:)();
  (*(a4 + 16))(a4, v23);
}

void sub_1000ACB20(void *a1, id a2, void *a3, void *a4)
{
  if (qword_100338ED0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10033EB10);
  v8 = a1;

  v9 = a3;
  v10 = a4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v13 = 136316162;
    *(v13 + 4) = sub_100017494(0xD000000000000032, 0x800000010029ABE0, &v52);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v8;
    *v14 = v8;
    *(v13 + 22) = 2080;
    v15 = v8;
    v17 = sub_1000092A0(v15, v16);
    v19 = sub_100017494(v17, v18, &v52);

    *(v13 + 24) = v19;
    *(v13 + 32) = 2112;
    *(v13 + 34) = v9;
    *(v13 + 42) = 2112;
    *(v13 + 44) = v10;
    v14[1] = v9;
    v14[2] = v10;
    v20 = v9;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: client=%@, device=%s, identifier=%@, disambigContext=%@", v13, 0x34u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v51 = [objc_allocWithZone(NSOrderedSet) init];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (v22)
  {
    v23 = v22;
    v24 = v9;
    if (![v23 assetType])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v25 = sub_1000BDC5C();
      v27 = v26;

      if ((v27 & 1) == 0)
      {
        [v23 setAssetType:v25];
      }
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Calling handler for PCMediaRemoteIdentifier", v30, 2u);
    }

    v31 = [v8 activityDataUpdateHandler];
    if (v31)
    {
      v32 = *(v31 + 2);
      v33 = v31;
LABEL_21:
      v32();
      _Block_release(v33);

      return;
    }

LABEL_22:

    return;
  }

  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = v34;
    v24 = v9;
    if (![v35 assetType])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v36 = sub_1000BDC5C();
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        [v35 setAssetType:v36];
      }
    }

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Calling handler for PCHomeKitIdentifier", v41, 2u);
    }

    v42 = [v8 activityDataUpdateHandler];
    if (v42)
    {
      v32 = *(v42 + 2);
      v33 = v42;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v43 = v8;
  v44 = v9;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412546;
    *(v47 + 4) = v43;
    *(v47 + 12) = 2112;
    *(v47 + 14) = v44;
    *v48 = v43;
    v48[1] = v44;
    v49 = v43;
    v50 = v44;
    _os_log_impl(&_mh_execute_header, v45, v46, "### Failed to send update to %@ because %@ is of unknown type", v47, 0x16u);
    sub_100035D04(&qword_100339940, &unk_100272C50);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000AD230()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000AD350(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *a1;
  v8 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(v7, v5, v6, v8);
}

uint64_t sub_1000AD3E4(__int128 *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_1000AD420(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t PCProximityEventType.description.getter(unint64_t a1)
{
  v1 = sub_10001A8C4(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1000AD4C8()
{
  v1 = sub_10001A8C4(*v0);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1000AD518()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033EFA0);
  sub_100003078(v0, qword_10033EFA0);
  return Logger.init(subsystem:category:)();
}

void sub_1000AD598()
{
  v1 = v0;
  if (*(v0 + 88))
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
  }

  else
  {
    v4 = sub_10001CA2C(*(v0 + 80));
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v5;
  }

  if (qword_100338ED8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033EFA0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    v11 = sub_100017494(v3, v2, &v12);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Clearing cached handoffDirection, oldValue = %s", v9, 0xCu);
    sub_10000903C(v10);
  }

  else
  {
  }

  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
}

void sub_1000AD744(void *a1, uint64_t a2, unint64_t a3, unsigned int a4, int a5)
{
  v30 = a5;
  v32 = a4;
  v31 = a3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v29[-v13];
  v15 = [objc_allocWithZone(SFNotificationInfo) init];
  if ([a1 interactionDirection])
  {
    v16 = [a1 legacyAttachmentURL];
    if (v16)
    {
      v17 = v16;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v9 + 32))(v14, v12, v8);
      URL._bridgeToObjectiveC()(v18);
      v20 = v19;
      [v15 setAttachmentURL:v19];

      (*(v9 + 8))(v14, v8);
    }

    v21 = [a1 legacyBodyText];
    if (v21)
    {
      v22 = v21;
      [v15 setBody:v21];
    }

    v23 = [a1 localizedPrimaryAltText];
    if (v23)
    {
      v24 = v23;
      [v15 setTitle:v23];
    }

    if (*(v5 + 88))
    {
      v25 = [a1 interactionDirection];
    }

    else
    {
      v25 = *(v5 + 80);
    }

    if (v25 == 2)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2 * (v25 == 1);
    }

    [v15 setInteractionDirection:v28];
    *(v5 + 96) = [a1 interactionDirection];
    *(v5 + 104) = 0;
  }

  else
  {
    v26 = [objc_allocWithZone(SFNotificationError) init];
    v27 = String._bridgeToObjectiveC()();
    [v26 setErrorDescription:v27];

    [v15 setError:v26];
  }

  sub_1000ADA44(v15, a2, v31, v32, v30 & 1);
}

void sub_1000ADA44(void *a1, uint64_t a2, unint64_t a3, char a4, char a5)
{
  v6 = *(v5 + 112);
  if (v6)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    v12 = (*(v5 + 16) + qword_100346AF8);

    v13 = v6;
    os_unfair_lock_lock(v12);

    sub_1000AEE7C(v14, a2, a3);
    v16 = v15;

    os_unfair_lock_unlock(v12);
    if (v16)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v17 = sub_10000C868();
      v19 = v18;

      sub_100058DC8(v17, v19);

      v20 = String._bridgeToObjectiveC()();

      [a1 setHeader:v20];
    }

    if (a5)
    {
      if (qword_100338ED8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100003078(v21, qword_10033EFA0);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v24 = 136315394;
        *(v24 + 4) = sub_100017494(0xD000000000000025, 0x800000010029ACB0, &aBlock);
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_100017494(a2, a3, &aBlock);
        _os_log_impl(&_mh_execute_header, v22, v23, "%s for %s", v24, 0x16u);
        swift_arrayDestroy();
      }

      v25 = [objc_allocWithZone(SFNotificationError) init];
      v26 = String._bridgeToObjectiveC()();
      [v25 setErrorDescription:v26];

      [a1 setError:v25];
    }

    if (a4)
    {
      if (a4 == 1)
      {
        if (qword_100338ED8 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_100003078(v27, qword_10033EFA0);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "PROVIDING content to SFProximityClient", v30, 2u);
        }

        v31 = String._bridgeToObjectiveC()();
        v47 = sub_1000AEE50;
        v48 = v11;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_100124498;
        v46 = &unk_100305238;
        v32 = _Block_copy(&aBlock);

        [v13 provideContent:a1 forDevice:v31 force:0 completion:v32];
      }

      else
      {
        if (qword_100338ED8 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100003078(v38, qword_10033EFA0);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "UPDATING content to SFProximityClient", v41, 2u);
        }

        v31 = String._bridgeToObjectiveC()();
        v47 = sub_1000AEE50;
        v48 = v11;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_100124498;
        v46 = &unk_100305210;
        v32 = _Block_copy(&aBlock);

        [v13 updateContent:a1 forDevice:v31 completion:v32];
      }

      _Block_release(v32);
    }

    else
    {
      v33 = v13;
      if (qword_100338ED8 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100003078(v34, qword_10033EFA0);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Not delivering content to SFProximityClient, delivery mode = .none", v37, 2u);
      }
    }
  }
}

void sub_1000AE12C(uint64_t a1, uint64_t a2, unint64_t a3, char a4, char a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      if (*(v5 + 88) == 1)
      {
        v14 = v5;
        if (qword_100338ED8 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_100003078(v15, qword_10033EFA0);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          aBlock[0] = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_100017494(7104878, 0xE300000000000000, aBlock);
          _os_log_impl(&_mh_execute_header, v16, v17, "Updating handoffDirection to %s", v18, 0xCu);
          sub_10000903C(v19);
        }

        v20 = *(v14 + 104);
        *(v14 + 80) = *(v14 + 96);
        *(v14 + 88) = v20;
      }
    }

    else if (v6 == 2)
    {
      v7 = *(v5 + 112);
      if (v7)
      {
        v10 = v7;
        sub_1000AD598();
        v11 = String._bridgeToObjectiveC()();
        v12 = swift_allocObject();
        *(v12 + 16) = a2;
        *(v12 + 24) = a3;
        aBlock[4] = sub_1000AEE24;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100124498;
        aBlock[3] = &unk_1003051C0;
        v13 = _Block_copy(aBlock);

        [v10 dismissContentForDevice:v11 completion:v13];
        _Block_release(v13);
      }
    }

    else
    {
      v25 = [objc_allocWithZone(SFNotificationError) init];
      v26 = String._bridgeToObjectiveC()();
      [v25 setErrorDescription:v26];

      v27 = [objc_allocWithZone(SFNotificationInfo) init];
      [v27 setError:v25];
      sub_1000AD598();
      sub_1000ADA44(v27, a2, a3, a4, a5 & 1);
    }
  }
}

void sub_1000AE464(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100338ED8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_10033EFA0);
    swift_errorRetain();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_100017494(a2, a3, &v21);
      *(v11 + 12) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      *v12 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, a4, v11, 0x16u);
      sub_1000030B0(v12);

      sub_10000903C(v13);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100338ED8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003078(v16, qword_10033EFA0);

    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100017494(a2, a3, &v21);
      _os_log_impl(&_mh_execute_header, oslog, v17, a5, v18, 0xCu);
      sub_10000903C(v19);
    }

    else
    {
    }
  }
}

void sub_1000AE7A8(uint64_t a1)
{
  v2 = v1;
  if (qword_100338ED8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10033EFA0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36[0] = v8;
    *v7 = 136315138;
    v10 = sub_1000092A0(v8, v9);
    v12 = sub_100017494(v10, v11, v36);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Tracking %s", v7, 0xCu);
    sub_10000903C(v8);

    v2 = v1;
  }

  *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_legacyDelegate + 8) = &off_100305178;
  swift_unknownObjectWeakAssign();
  sub_100016F18(a1);
  v13 = v2 + 3;
  v14 = v2[3];
  v15 = v2[6];
  if (v15)
  {
    v16 = v2[5];
    v17 = v2[9];
    v35 = v2[8];
    v18 = v2[7];
    v33 = v2;
    v19 = v2[4];
    swift_getKeyPath();
    swift_getKeyPath();

    v34 = v16;
    sub_1000AED9C(v14, v19, v16, v15, v18, v35, v17);
    static Published.subscript.getter();

    v22 = sub_10000DF0C(v20, v21);
    v24 = v23;

    if (v24)
    {
      if (v35 == v22 && v17 == v24)
      {
        swift_bridgeObjectRelease_n();

LABEL_12:
        swift_getKeyPath();
        swift_getKeyPath();
        v36[0] = v14;
        v36[1] = v19 & 1;
        v36[2] = v34;
        v36[3] = v15;
        v37 = v18;

        static Published.subscript.setter();
        v26 = v33[3];
        v27 = v33[4];
        v28 = v33[5];
        v29 = v33[6];
        v30 = v33[7];
        v31 = v33[8];
        v32 = v33[9];
        *v13 = 0u;
        *(v13 + 1) = 0u;
        *(v13 + 2) = 0u;
        v13[6] = 0;
        sub_1000AEDE0(v26, v27, v28, v29, v30, v31, v32);
        return;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      swift_bridgeObjectRelease_n();
      if (v25)
      {
        goto LABEL_12;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }
}

void sub_1000AEB00(uint64_t a1)
{
  v3 = a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_legacyDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = Strong, swift_unknownObjectRelease(), v5 == v1))
  {
    if (qword_100338ED8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_10033EFA0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v15 = sub_1000092A0(v13, v14);
      v17 = sub_100017494(v15, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Untracking %s", v12, 0xCu);
      sub_10000903C(v13);
    }

    *(v3 + 8) = 0;
    swift_unknownObjectWeakAssign();

    sub_1000F9264(a1);
  }

  else
  {
    if (qword_100338ED8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_10033EFA0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "### UntrackIfNeeded: device.legacyDelegate != self", v8, 2u);
    }
  }
}

void sub_1000AED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
  }
}

void sub_1000AEDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
  }
}

void sub_1000AEE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v13 = sub_10000DF0C(v11, v12);
    v15 = v14;

    if (v15)
    {
      if (v13 == a2 && v15 == a3)
      {

        return;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
LABEL_15:

        return;
      }
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_15;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1000AF038(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a1;
    if (!(a2 >> 62))
    {
      v4 = sub_1000B045C(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a1, 0);
      if (v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = v4;
      }

      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result < v6)
      {
        goto LABEL_18;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        return result;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  v9 = sub_1000B045C(v8, v2, 0);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v11)
  {
    goto LABEL_21;
  }

  v12 = result;
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 0)
  {
    goto LABEL_19;
  }

  if (result < v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  result = v12;
  if (v11 < 0)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1000AF120()
{
  v1 = [v0 interactionDirection];
  if (v1 == 1)
  {
    v2 = &selRef_selectedDeviceState;
  }

  else
  {
    if (v1 != 2)
    {
      return 7;
    }

    v2 = &selRef_proxDeviceState;
  }

  v3 = [v0 *v2];
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  v5 = [v3 playerPath];

  if (!v5)
  {
    return 7;
  }

  v6 = [v5 client];

  if (!v6)
  {
    return 7;
  }

  v7 = [v6 bundleIdentifier];

  if (!v7)
  {
    return 7;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = v8 == 0x6C7070612E6D6F63 && v10 == 0xEF636973754D2E65;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (v8 == 0xD000000000000012 && 0x8000000100299600 == v10)
  {

    return 3;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }
}

void *sub_1000AF2E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100035D04(&qword_10033EFB8, &qword_100275728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100035D04(&qword_10033EFC0, &qword_100275730);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000AF418(void *result, int64_t a2, char a3, void *a4)
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
    sub_100035D04(&qword_10033DE68, &qword_100274150);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000AF59C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100035D04(&qword_10033F000, &qword_1002783F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1000AF698(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100035D04(&qword_10033F008, &qword_100275748);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1000AF794(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100035D04(&qword_10033EFD0, &qword_1002783C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000AF8A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100035D04(&qword_10033EFC8, &qword_100275738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000AF9AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100035D04(&unk_100345F20, &qword_100275750);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1000AFAC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100035D04(&qword_10033F030, &qword_100275778);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1000AFBB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100035D04(&qword_10033F050, &qword_100275790);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000AFCBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100035D04(&qword_10033F010, &qword_100275758);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1000AFE20(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100035D04(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100035D04(&qword_10033EFE8, &unk_100275EA0);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1000AFF4C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100035D04(&qword_10033F018, &qword_100275760);
  v10 = *(sub_100035D04(&qword_10033E570, &unk_100274720) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100035D04(&qword_10033E570, &unk_100274720) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000B013C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100035D04(&qword_10033F048, &qword_100275780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1000B0280(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100035D04(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1000B045C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = -a2;
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= 1)
  {
    if (v4 < 0 || v4 >= v3)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 <= 0 && v3 < v4)
  {
    return 0;
  }

LABEL_10:
  v5 = __OFADD__(result, v3);
  result -= a2;
  if (v5)
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

unint64_t *sub_1000B04BC@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1000B0594()
{
  v1 = 0x736F6C4365766F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F72746E69;
  }
}

uint64_t sub_1000B05F0(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_100035D04(&qword_10033F0D0, &qword_100275A68);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_100035D04(&qword_10033F0D8, &qword_100275A70);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_100035D04(&qword_10033F0E0, &qword_100275A78);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_100035D04(&qword_10033F0E8, &qword_100275A80);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_10000EBC0(a1, a1[3]);
  sub_1000B1398();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1000B1440();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1000B13EC();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1000B1494();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_1000B0970@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000B0CF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000B0998(uint64_t a1)
{
  v2 = sub_1000B1398();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B09D4(uint64_t a1)
{
  v2 = sub_1000B1398();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B0A10(uint64_t a1)
{
  v2 = sub_1000B1494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B0A4C(uint64_t a1)
{
  v2 = sub_1000B1494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B0A88(uint64_t a1)
{
  v2 = sub_1000B1440();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B0AC4(uint64_t a1)
{
  v2 = sub_1000B1440();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B0B00(uint64_t a1)
{
  v2 = sub_1000B13EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B0B3C(uint64_t a1)
{
  v2 = sub_1000B13EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B0B78@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000B0E28(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000B0BE4()
{
  result = qword_10033F070;
  if (!qword_10033F070)
  {
    sub_100035D4C(&qword_10033F078, qword_100275858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F070);
  }

  return result;
}

unint64_t sub_1000B0C4C()
{
  result = qword_10033F080;
  if (!qword_10033F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F080);
  }

  return result;
}

unint64_t sub_1000B0CA4()
{
  result = qword_10033F088;
  if (!qword_10033F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F088);
  }

  return result;
}

uint64_t sub_1000B0CF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x65756E69746E6F63 && a2 == 0xEE00646570706154;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEF74756F656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010029ADA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000B0E28(void *a1)
{
  v31 = sub_100035D04(&qword_10033F090, &qword_100275A40);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v26 - v2;
  v32 = sub_100035D04(&qword_10033F098, &qword_100275A48);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_100035D04(&qword_10033F0A0, &qword_100275A50);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_100035D04(&qword_10033F0A8, &qword_100275A58);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_10000EBC0(a1, v12);
  sub_1000B1398();
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_100218008();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1000B1440();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10000903C(v35);
          return v9;
        }

        v40 = 2;
        sub_1000B13EC();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1000B1494();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v22 = &type metadata for EducationViewEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_10000903C(v35);
  return v9;
}

unint64_t sub_1000B1398()
{
  result = qword_10033F0B0;
  if (!qword_10033F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F0B0);
  }

  return result;
}

unint64_t sub_1000B13EC()
{
  result = qword_10033F0B8;
  if (!qword_10033F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F0B8);
  }

  return result;
}

unint64_t sub_1000B1440()
{
  result = qword_10033F0C0;
  if (!qword_10033F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F0C0);
  }

  return result;
}

unint64_t sub_1000B1494()
{
  result = qword_10033F0C8;
  if (!qword_10033F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F0C8);
  }

  return result;
}

unint64_t sub_1000B14E8()
{
  result = qword_10033F0F0;
  if (!qword_10033F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F0F0);
  }

  return result;
}

unint64_t sub_1000B1580()
{
  result = qword_10033F0F8;
  if (!qword_10033F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F0F8);
  }

  return result;
}

unint64_t sub_1000B15D8()
{
  result = qword_10033F100;
  if (!qword_10033F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F100);
  }

  return result;
}

unint64_t sub_1000B1630()
{
  result = qword_10033F108;
  if (!qword_10033F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F108);
  }

  return result;
}

unint64_t sub_1000B1688()
{
  result = qword_10033F110;
  if (!qword_10033F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F110);
  }

  return result;
}

unint64_t sub_1000B16E0()
{
  result = qword_10033F118;
  if (!qword_10033F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F118);
  }

  return result;
}

unint64_t sub_1000B1738()
{
  result = qword_10033F120;
  if (!qword_10033F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F120);
  }

  return result;
}

unint64_t sub_1000B1790()
{
  result = qword_10033F128;
  if (!qword_10033F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F128);
  }

  return result;
}

unint64_t sub_1000B17E8()
{
  result = qword_10033F130;
  if (!qword_10033F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F130);
  }

  return result;
}

unint64_t sub_1000B1840()
{
  result = qword_10033F138;
  if (!qword_10033F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F138);
  }

  return result;
}

uint64_t sub_1000B1898(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v4;
  v8 = *(v4 + 2);
  v151 = *(v4 + 4);
  v152 = v8;
  v149[4] = v8;
  v149[5] = v151;
  sub_100009848(&v152, &v144, &qword_10033F140, &qword_100275E20);
  sub_100009848(&v151, &v144, &qword_10033F140, &qword_100275E20);
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (v9 != 2)
  {
    v11 = v149[v9++ + 4];
    if (v11)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1000AF794(0, *(v10 + 2) + 1, 1, v10);
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = sub_1000AF794((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v13 + 1;
      *&v10[8 * v13 + 32] = v11;
    }
  }

  sub_100035D04(&qword_10033F140, &qword_100275E20);
  swift_arrayDestroy();
  v14 = *(v6 + 3);
  v149[10] = v10;
  v150 = v14;
  v15 = *(v10 + 2);
  v16 = _swiftEmptyArrayStorage[2];
  v17 = (*&v16 + v15);
  v18 = __OFADD__(*&v16, v15);

  if (v18)
  {
    goto LABEL_172;
  }

  v19 = _swiftEmptyArrayStorage;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native)
  {
    v18 = _swiftEmptyArrayStorage;
    if (v17 <= _swiftEmptyArrayStorage[3] >> 1)
    {
      if (*(v10 + 2))
      {
        goto LABEL_16;
      }

LABEL_24:

      if (v15)
      {
        goto LABEL_173;
      }

      v16 = *(v18 + 16);
      goto LABEL_26;
    }
  }

  if (*&v16 <= v17)
  {
    v22 = *&v16 + v15;
  }

  else
  {
    v22 = v16;
  }

  v18 = sub_1000AF794(isUniquelyReferenced_nonNull_native, v22, 1, _swiftEmptyArrayStorage);
  if (!*(v10 + 2))
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((*(v18 + 24) >> 1) - *(v18 + 16) < v15)
  {
    goto LABEL_174;
  }

  swift_arrayInitWithCopy();

  v16 = *(v18 + 16);
  if (v15)
  {
    v21 = __OFADD__(*&v16, v15);
    *&v16 += v15;
    if (v21)
    {
      goto LABEL_176;
    }

    *(v18 + 16) = v16;
  }

LABEL_26:
  v23 = v150;
  v10 = *(v150 + 2);
  v17 = &v10[*&v16];
  if (__OFADD__(*&v16, v10))
  {
    goto LABEL_172;
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  if (v24 && v17 <= *(v18 + 24) >> 1)
  {
    if (*(v23 + 2))
    {
      goto LABEL_30;
    }

LABEL_38:

    if (v10)
    {
      goto LABEL_173;
    }

    goto LABEL_39;
  }

  if (*&v16 <= v17)
  {
    v27 = &v10[*&v16];
  }

  else
  {
    v27 = v16;
  }

  v18 = sub_1000AF794(v24, v27, 1, v18);
  if (!*(v23 + 2))
  {
    goto LABEL_38;
  }

LABEL_30:
  if ((*(v18 + 24) >> 1) - *(v18 + 16) < v10)
  {
    goto LABEL_174;
  }

  swift_arrayInitWithCopy();

  if (v10)
  {
    v25 = *(v18 + 16);
    v21 = __OFADD__(*&v25, v10);
    v26 = &v10[*&v25];
    if (v21)
    {
      goto LABEL_176;
    }

    *(v18 + 16) = v26;
  }

LABEL_39:
  sub_100035D04(&qword_10033F148, &qword_100275E28);
  swift_arrayDestroy();
  v17 = *(v18 + 16);
  v127 = v17;
  if (v17)
  {
    *&v144 = _swiftEmptyArrayStorage;
    v10 = &v144;
    sub_1000CDFC0(0, v17, 0);
    v28 = v144;
    v5 = v18;
    v29 = (v18 + 32);
    v30 = *(v144 + 16);
    do
    {
      v31 = *(*v29 + 16);
      *&v144 = v28;
      v32 = v28[3];
      v33 = v30 + 1;
      if (v30 >= v32 >> 1)
      {
        v10 = &v144;
        sub_1000CDFC0((v32 > 1), v30 + 1, 1);
        v28 = v144;
      }

      v28[2] = v33;
      v28[v30 + 4] = v31;
      v29 += 8;
      ++v30;
      --v17;
    }

    while (v17);
    v19 = _swiftEmptyArrayStorage;
    v18 = v5;
  }

  else
  {
    v33 = _swiftEmptyArrayStorage[2];
    if (!v33)
    {

LABEL_116:

      v5 = _swiftEmptyArrayStorage;
      goto LABEL_117;
    }

    v28 = _swiftEmptyArrayStorage;
  }

  v16 = v28[4];
  v34 = v33 - 1;
  if (v33 != 1)
  {
    if (v33 >= 5)
    {
      v35 = v34 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v36 = vdupq_n_s64(*&v16);
      v37 = (v28 + 7);
      v38 = v34 & 0xFFFFFFFFFFFFFFFCLL;
      v39 = v36;
      do
      {
        v36 = vbslq_s8(vcgtq_s64(v36, v37[-1]), v36, v37[-1]);
        v39 = vbslq_s8(vcgtq_s64(v39, *v37), v39, *v37);
        v37 += 2;
        v38 -= 4;
      }

      while (v38);
      v40 = vbslq_s8(vcgtq_s64(v36, v39), v36, v39);
      v41 = vextq_s8(v40, v40, 8uLL).u64[0];
      v16 = vbsl_s8(vcgtd_s64(v40.i64[0], v41), *v40.i8, v41);
      if (v34 == (v34 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_57;
      }
    }

    else
    {
      v35 = 1;
    }

    v42 = v33 - v35;
    v43 = &v28[v35 + 4];
    do
    {
      v45 = *v43++;
      v44 = v45;
      if (*&v16 <= *&v45)
      {
        v16 = v44;
      }

      --v42;
    }

    while (v42);
  }

LABEL_57:

  if ((*&v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_175;
  }

  if (!*&v16)
  {
    goto LABEL_116;
  }

  v122 = v6;
  v123 = v14;
  v136[0] = _swiftEmptyArrayStorage;
  v10 = v136;
  sub_1000CDFC0(0, *&v16, 0);
  v46 = 0;
  v5 = v136[0];
  v47 = 0x7FFFFFFFFFFFFFFFLL;
  if ((a4 & 1) == 0)
  {
    v47 = a3;
  }

  v124 = (v18 + 32);
  v125 = v47;
  v126 = v16;
  do
  {
    v129 = v5;
    v16 = v127;
    if (v127)
    {
      *&v144 = _swiftEmptyArrayStorage;
      v10 = &v144;
      sub_1000CDF40(0, v127, 0);
      v14 = v144;
      v48 = v124;
      v49 = v127;
      do
      {
        if (v46 >= *(*v48 + 16))
        {
          v5 = 0;
          v16 = 0xE000000000000000;
        }

        else
        {
          v50 = *v48 + 16 * v46;
          v5 = *(v50 + 32);
          v16 = *(v50 + 40);
        }

        *&v144 = v14;
        v52 = *(v14 + 2);
        v51 = *(v14 + 3);
        v53 = (v52 + 1);
        if (v52 >= v51 >> 1)
        {
          v10 = &v144;
          sub_1000CDF40((v51 > 1), v52 + 1, 1);
          v14 = v144;
        }

        *(v14 + 2) = v53;
        v54 = &v14[16 * v52];
        v54[4] = v5;
        v54[5] = v16;
        v48 += 8;
        --v49;
      }

      while (v49);
LABEL_72:
      v18 = 0;
      v55 = (v14 + 40);
      v19 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v18 >= *(v14 + 2))
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
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
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          v16 = sub_100009088(0, *(*&v16 + 16) + 1, 1, *&v16);
LABEL_119:
          v86 = *(*&v16 + 16);
          v85 = *(*&v16 + 24);
          if (v86 >= v85 >> 1)
          {
            v16 = sub_100009088((v85 > 1), v86 + 1, 1, *&v16);
          }

          *(*&v16 + 16) = v86 + 1;
          v87 = *&v16 + 16 * v86;
          *(v87 + 32) = v18;
          *(v87 + 40) = v10;
          goto LABEL_123;
        }

        v56 = *v55;
        *&v144 = *(v55 - 1);
        *(&v144 + 1) = v56;
        sub_10001369C();

        v16 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

        v10 = *(*&v16 + 16);
        v5 = *(v19 + 2);
        v17 = &v10[v5];
        if (__OFADD__(v5, v10))
        {
          goto LABEL_164;
        }

        v57 = swift_isUniquelyReferenced_nonNull_native();
        if ((v57 & 1) != 0 && v17 <= *(v19 + 3) >> 1)
        {
          if (*(*&v16 + 16))
          {
            goto LABEL_85;
          }
        }

        else
        {
          if (v5 <= v17)
          {
            v58 = &v10[v5];
          }

          else
          {
            v58 = v5;
          }

          v19 = sub_1000AF8A0(v57, v58, 1, v19);
          if (*(*&v16 + 16))
          {
LABEL_85:
            if ((*(v19 + 3) >> 1) - *(v19 + 2) < v10)
            {
              goto LABEL_166;
            }

            swift_arrayInitWithCopy();

            if (v10)
            {
              v59 = *(v19 + 2);
              v21 = __OFADD__(v59, v10);
              v60 = &v10[v59];
              if (v21)
              {
                goto LABEL_167;
              }

              *(v19 + 2) = v60;
            }

            goto LABEL_74;
          }
        }

        if (v10)
        {
          goto LABEL_165;
        }

LABEL_74:
        ++v18;
        v55 += 2;
        if (v53 == v18)
        {
          goto LABEL_89;
        }
      }
    }

    v53 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage;
    if (v53)
    {
      goto LABEL_72;
    }

LABEL_89:

    swift_getKeyPath();
    v61 = *(v19 + 2);
    if (v61)
    {
      v148 = _swiftEmptyArrayStorage;
      sub_1000CDFC0(0, v61, 0);
      v10 = v148;
      v62 = (v19 + 56);
      do
      {
        v63 = *(v62 - 1);
        v64 = *v62;
        v144 = *(v62 - 3);
        v145 = v63;
        v146 = v64;

        swift_getAtKeyPath();

        v65 = v147;
        v148 = v10;
        v67 = *(v10 + 2);
        v66 = *(v10 + 3);
        if (v67 >= v66 >> 1)
        {
          sub_1000CDFC0((v66 > 1), v67 + 1, 1);
          v10 = v148;
        }

        *(v10 + 2) = v67 + 1;
        *&v10[8 * v67 + 32] = v65;
        v62 += 4;
        --v61;
      }

      while (v61);

      v19 = _swiftEmptyArrayStorage;
    }

    else
    {

      v19 = _swiftEmptyArrayStorage;
      v10 = _swiftEmptyArrayStorage;
    }

    v68 = *(v10 + 2);
    v5 = v129;
    if (v68)
    {
      v69 = *(v10 + 4);
      v70 = v68 - 1;
      if (v68 != 1)
      {
        if (v68 >= 5)
        {
          v71 = v70 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v72 = vdupq_n_s64(v69);
          v73 = (v10 + 56);
          v74 = v70 & 0xFFFFFFFFFFFFFFFCLL;
          v75 = v72;
          do
          {
            v72 = vbslq_s8(vcgtq_s64(v72, v73[-1]), v72, v73[-1]);
            v75 = vbslq_s8(vcgtq_s64(v75, *v73), v75, *v73);
            v73 += 2;
            v74 -= 4;
          }

          while (v74);
          v76 = vbslq_s8(vcgtq_s64(v72, v75), v72, v75);
          v77 = vextq_s8(v76, v76, 8uLL).u64[0];
          v69 = vbsl_s8(vcgtd_s64(v76.i64[0], v77), *v76.i8, v77);
          if (v70 == (v70 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_108;
          }
        }

        else
        {
          v71 = 1;
        }

        v78 = v68 - v71;
        v79 = &v10[8 * v71 + 32];
        do
        {
          v81 = *v79++;
          v80 = v81;
          if (v69 <= v81)
          {
            v69 = v80;
          }

          --v78;
        }

        while (v78);
      }
    }

    else
    {
      v69 = 0;
    }

LABEL_108:

    if (v125 >= v69)
    {
      v82 = v69;
    }

    else
    {
      v82 = v125;
    }

    v136[0] = v129;
    v84 = v129[2];
    v83 = v129[3];
    if (v84 >= v83 >> 1)
    {
      v10 = v136;
      sub_1000CDFC0((v83 > 1), v84 + 1, 1);
      v5 = v136[0];
    }

    ++v46;
    *(v5 + 16) = v84 + 1;
    *(v5 + 8 * v84 + 32) = v82;
  }

  while (v46 != *&v126);

  v6 = v122;
  v14 = v123;
LABEL_117:
  v17 = &v137;
  v144 = *v6;
  v138 = v144;
  sub_100009848(&v144, v136, &qword_10033A238, &qword_10027D3E0);
  v10 = *(&v138 + 1);
  if (*(&v138 + 1))
  {
    v18 = v138;

    v16 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_119;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_123:
  sub_1000097E8((v17 + 32), &qword_10033A238, &qword_10027D3E0);
  v140 = v16;
  if (!v152)
  {
    v134 = 0;
    v135 = 0;
    goto LABEL_131;
  }

  v88 = sub_1000B260C(v5, a1, a2, v152);
  v134 = v88;
  v135 = v89;
  if (!v89)
  {
LABEL_131:
    v92 = _swiftEmptyArrayStorage;
    goto LABEL_132;
  }

  v90 = v88;
  v91 = v89;

  v92 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v92 = sub_100009088(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v94 = *(v92 + 2);
  v93 = *(v92 + 3);
  if (v94 >= v93 >> 1)
  {
    v92 = sub_100009088((v93 > 1), v94 + 1, 1, v92);
  }

  *(v92 + 2) = v94 + 1;
  v95 = &v92[16 * v94];
  *(v95 + 4) = v90;
  *(v95 + 5) = v91;
LABEL_132:
  sub_1000097E8(&v134, &qword_10033A238, &qword_10027D3E0);
  v141 = v92;
  v96 = *(v14 + 2);
  v97 = _swiftEmptyArrayStorage;
  if (v96)
  {
    v136[0] = _swiftEmptyArrayStorage;
    sub_1000CDF40(0, v96, 0);
    v97 = v136[0];
    v98 = (v14 + 32);
    do
    {
      v99 = *v98;

      v100 = sub_1000B260C(v5, a1, a2, v99);
      v102 = v101;

      v136[0] = v97;
      v104 = v97[2];
      v103 = v97[3];
      if (v104 >= v103 >> 1)
      {
        sub_1000CDF40((v103 > 1), v104 + 1, 1);
        v97 = v136[0];
      }

      v97[2] = v104 + 1;
      v105 = &v97[2 * v104];
      v105[4] = v100;
      v105[5] = v102;
      ++v98;
      --v96;
    }

    while (v96);
  }

  v142 = v97;
  if (!v151)
  {

    v132 = 0;
    v133 = 0;
    goto LABEL_145;
  }

  v106 = sub_1000B260C(v5, a1, a2, v151);
  v108 = v107;

  v132 = v106;
  v133 = v108;
  if (!v108)
  {
LABEL_145:
    v109 = _swiftEmptyArrayStorage;
    goto LABEL_146;
  }

  v109 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v109 = sub_100009088(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v111 = *(v109 + 2);
  v110 = *(v109 + 3);
  if (v111 >= v110 >> 1)
  {
    v109 = sub_100009088((v110 > 1), v111 + 1, 1, v109);
  }

  *(v109 + 2) = v111 + 1;
  v112 = &v109[16 * v111];
  *(v112 + 4) = v106;
  *(v112 + 5) = v108;
LABEL_146:
  v18 = v139;
  sub_1000097E8(&v132, &qword_10033A238, &qword_10027D3E0);
  v143 = v109;
  v16 = _swiftEmptyArrayStorage;
  v113 = 32;
  v14 = v139;
  v10 = &type metadata for String;
  while (2)
  {
    v17 = *&v139[v113];
    v114 = *(v17 + 2);
    v115 = *(*&v16 + 16);
    v5 = v115 + v114;
    if (__OFADD__(v115, v114))
    {
      goto LABEL_168;
    }

    v116 = swift_isUniquelyReferenced_nonNull_native();
    if (v116 && v5 <= *(*&v16 + 24) >> 1)
    {
      if (!*(v17 + 2))
      {
LABEL_147:

        if (v114)
        {
          goto LABEL_169;
        }

        goto LABEL_148;
      }
    }

    else
    {
      if (v115 <= v5)
      {
        v117 = v115 + v114;
      }

      else
      {
        v117 = v115;
      }

      v16 = sub_100009088(v116, v117, 1, *&v16);
      if (!*(v17 + 2))
      {
        goto LABEL_147;
      }
    }

    if ((*(*&v16 + 24) >> 1) - *(*&v16 + 16) < v114)
    {
      goto LABEL_170;
    }

    swift_arrayInitWithCopy();

    if (v114)
    {
      v118 = *(*&v16 + 16);
      v21 = __OFADD__(v118, v114);
      v119 = v118 + v114;
      if (v21)
      {
        goto LABEL_171;
      }

      *(*&v16 + 16) = v119;
    }

LABEL_148:
    v113 += 8;
    if (v113 != 64)
    {
      continue;
    }

    break;
  }

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  swift_arrayDestroy();
  v136[0] = v16;
  sub_10001CAF4();
  v120 = BidirectionalCollection<>.joined(separator:)();

  return v120;
}

uint64_t sub_1000B260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000B2B2C(a4, a1);
  swift_getKeyPath();
  v5 = v4[2];
  if (!v5)
  {

    v9 = _swiftEmptyArrayStorage[2];
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_11:

LABEL_20:
    __chkstk_darwin(result);
    sub_100035D04(&qword_10033F158, &qword_100275E98);
    sub_1000B3B28();
    Sequence.flatMap<A>(_:)();

    sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    sub_10001CAF4();
    v24 = BidirectionalCollection<>.joined(separator:)();

    return v24;
  }

  sub_1000CDFC0(0, v5, 0);
  v6 = v4 + 4;
  do
  {

    swift_getAtKeyPath();

    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_1000CDFC0((v7 > 1), v8 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v8 + 1;
    _swiftEmptyArrayStorage[v8 + 4] = v25;
    ++v6;
    --v5;
  }

  while (v5);

  v9 = _swiftEmptyArrayStorage[2];
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_7:
  v10 = _swiftEmptyArrayStorage[4];
  v11 = v9 - 1;
  if (v9 == 1)
  {
    goto LABEL_19;
  }

  if (v9 >= 5)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v14 = vdupq_n_s64(v10);
    v15 = &_swiftEmptyArrayStorage[7];
    v16 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v14;
    do
    {
      v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v14, v15[-1]);
      v17 = vbslq_s8(vcgtq_s64(v17, *v15), v17, *v15);
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v18 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
    v19 = vextq_s8(v18, v18, 8uLL).u64[0];
    v10 = vbsl_s8(vcgtd_s64(v18.i64[0], v19), *v18.i8, v19);
    if (v11 == (v11 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v12 = 1;
  }

  v20 = v9 - v12;
  v21 = &_swiftEmptyArrayStorage[v12 + 4];
  do
  {
    v23 = *v21++;
    v22 = v23;
    if (v10 <= v23)
    {
      v10 = v22;
    }

    --v20;
  }

  while (v20);
LABEL_19:

  if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void *sub_1000B28F8(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a2;
  sub_10001369C();
  result = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v5 = result;
  v6 = _swiftEmptyArrayStorage;
  v30 = _swiftEmptyArrayStorage;
  v7 = result[2];
  if (v7)
  {
    v8 = 0;
    v9 = result + 7;
    while (v8 < *(v5 + 16))
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v9 - 2);
      v26 = *(v9 - 3);
      v27 = v12;
      v28 = v11;
      v29 = v10;

      result = Substring.distance(from:to:)();
      if (!a3)
      {
        goto LABEL_15;
      }

      ++v8;
      __chkstk_darwin(result);
      v25[2] = &v26;
      v25[3] = a3;
      sub_1000B2D3C(sub_1000B3D6C, v25, 0, v13, a3);
      v15 = v14;

      result = sub_1000B330C(v15);
      v9 += 4;
      if (v7 == v8)
      {
        v16 = v30;
        v6 = _swiftEmptyArrayStorage;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_8:

    v17 = v16[2];
    if (v17)
    {
      v26 = _swiftEmptyArrayStorage;
      sub_1000CDF40(0, v17, 0);
      v6 = v26;
      v18 = v16 + 7;
      do
      {

        v19 = static String._fromSubstring(_:)();
        v21 = v20;

        v26 = v6;
        v23 = v6[2];
        v22 = v6[3];
        if (v23 >= v22 >> 1)
        {
          sub_1000CDF40((v22 > 1), v23 + 1, 1);
          v6 = v26;
        }

        v6[2] = v23 + 1;
        v24 = &v6[2 * v23];
        v24[4] = v19;
        v24[5] = v21;
        v18 += 4;
        --v17;
      }

      while (v17);
    }

    return v6;
  }

  return result;
}

void *sub_1000B2B2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = sub_1000CDFE0(0, v6, 0);
  v27 = v5;
  v28 = v4;
  v25 = a1;
  v26 = v6;
  v29 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = *v8;

      v13 = sub_1000B28F8(v10, v11, v12);

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_1000CDFE0((v14 > 1), v15 + 1, 1);
      }

      --v5;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      _swiftEmptyArrayStorage[v15 + 4] = v13;
      --v4;
      ++v8;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    if (v28 <= v27)
    {
      return _swiftEmptyArrayStorage;
    }

    v30 = v29 + 32;
    v16 = v26;
    v17 = (v25 + 16 * v26 + 40);
    while (v16 < v28)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_24;
      }

      if (v27 != v16)
      {
        if (v16 >= v27)
        {
          goto LABEL_25;
        }

        v19 = *(v17 - 1);
        v20 = *v17;
        v21 = *(v30 + 8 * v16);

        v22 = sub_1000B28F8(v19, v20, v21);

        v24 = _swiftEmptyArrayStorage[2];
        v23 = _swiftEmptyArrayStorage[3];
        if (v24 >= v23 >> 1)
        {
          result = sub_1000CDFE0((v23 > 1), v24 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v24 + 1;
        _swiftEmptyArrayStorage[v24 + 4] = v22;
        ++v16;
        v17 += 2;
        if (v18 != v28)
        {
          continue;
        }
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1000B2D3C(void (*a1)(__int128 *__return_ptr, int64_t *), uint64_t a2, int64_t a3, int64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = 0;
  v9 = a3;
  while (1)
  {
    v10 = v9 <= a4;
    if (a5 > 0)
    {
      v10 = v9 >= a4;
    }

    if (v10)
    {
      break;
    }

    v11 = __OFADD__(v9, a5);
    v9 += a5;
    if (v11)
    {
      v9 = (v9 >> 63) ^ 0x8000000000000000;
    }

    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      __break(1u);
      break;
    }
  }

  v39 = _swiftEmptyArrayStorage;
  sub_1000CE020(0, v8, 0);
  v12 = _swiftEmptyArrayStorage;
  if (v8)
  {
    while (1)
    {
      v13 = v7 <= a4;
      if (a5 > 0)
      {
        v13 = v7 >= a4;
      }

      if (v13)
      {
        break;
      }

      if (__OFADD__(v7, a5))
      {
        v14 = ((v7 + a5) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v14 = v7 + a5;
      }

      v34 = v7;
      v35 = 0;
      a1(&v36, &v34);
      if (v5)
      {
        goto LABEL_37;
      }

      v15 = v36;
      v16 = v37;
      v17 = v38;
      v39 = v12;
      v19 = v12[2];
      v18 = v12[3];
      if (v19 >= v18 >> 1)
      {
        v30 = v36;
        sub_1000CE020((v18 > 1), v19 + 1, 1);
        v15 = v30;
        v12 = v39;
      }

      v12[2] = v19 + 1;
      v20 = &v12[4 * v19];
      *(v20 + 2) = v15;
      v20[6] = v16;
      v20[7] = v17;
      v7 = v14;
      if (!--v8)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_37:

    __break(1u);
    goto LABEL_38;
  }

  v14 = v7;
LABEL_23:
  v21 = v14 <= a4;
  if (a5 > 0)
  {
    v21 = v14 >= a4;
  }

  if (!v21)
  {
    while (1)
    {
      v22 = __OFADD__(v14, a5) ? ((v14 + a5) >> 63) ^ 0x8000000000000000 : v14 + a5;
      v34 = v14;
      a1(&v36, &v34);
      if (v5)
      {
        break;
      }

      v23 = v36;
      v24 = v37;
      v25 = v38;
      v39 = v12;
      v27 = v12[2];
      v26 = v12[3];
      if (v27 >= v26 >> 1)
      {
        v31 = v36;
        sub_1000CE020((v26 > 1), v27 + 1, 1);
        v23 = v31;
        v12 = v39;
      }

      v12[2] = v27 + 1;
      v28 = &v12[4 * v27];
      *(v28 + 2) = v23;
      v28[6] = v24;
      v28[7] = v25;
      v29 = v22 <= a4;
      if (a5 > 0)
      {
        v29 = v22 >= a4;
      }

      v14 = v22;
      if (v29)
      {
        return;
      }
    }

LABEL_38:

    __break(1u);
  }
}

uint64_t sub_1000B2FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a6@<X8>)
{
  v7 = a6;
  v8 = *(a2 + 16);
  if (v8)
  {
    v10 = *a1;
    v30 = v8;
    result = sub_1000CDF40(0, v8, 0);
    v12 = v30;
    v13 = 0;
    v32 = a2 + 32;
    v31 = a3 + 32;
    v14 = *(a3 + 16);
    while (v14 != v13)
    {
      v15 = 0;
      v16 = *(v32 + 8 * v13);
      v17 = *(v31 + 8 * v13);
      v18 = 0xE000000000000000;
      if ((v10 & 0x8000000000000000) == 0 && v10 < *(v16 + 16))
      {
        v19 = v16 + 16 * v10;
        v15 = *(v19 + 32);
        v18 = *(v19 + 40);
      }

      if (v13 < v30 - 1)
      {

        result = String.count.getter();
        v20 = v17 - result;
        if (__OFSUB__(v17, result))
        {
          goto LABEL_18;
        }

        if (v20 >= 1)
        {
          v21._countAndFlagsBits = 32;
          v21._object = 0xE100000000000000;
          v22 = String.init(repeating:count:)(v21, v20);

          String.append(_:)(v22);
        }

        v12 = v30;
      }

      v24 = _swiftEmptyArrayStorage[2];
      v23 = _swiftEmptyArrayStorage[3];
      if (v24 >= v23 >> 1)
      {
        result = sub_1000CDF40((v23 > 1), v24 + 1, 1);
        v12 = v30;
      }

      ++v13;
      _swiftEmptyArrayStorage[2] = v24 + 1;
      v25 = &_swiftEmptyArrayStorage[2 * v24];
      v25[4] = v15;
      v25[5] = v18;
      if (v12 == v13)
      {
        v7 = a6;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
    sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    sub_10001CAF4();
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = v27;

    *v7 = v26;
    v7[1] = v28;
  }

  return result;
}

void *sub_1000B31EC(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000AF418(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1000B330C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000AF8A0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1000B3400(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000AFAC4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000B3504(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_100035D04(&qword_10033EFE8, &unk_100275EA0);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v8 = *(v4 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v4 + 16) = v10;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000B3618(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000B3C08(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1001287EC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1000B3708(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100009088(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_100129000(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_100009088((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_100004F98(result);
  *v1 = v4;
  return result;
}

uint64_t sub_1000B39C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000B3C08(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10012899C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1000B3AB4()
{
  result = qword_10033F150;
  if (!qword_10033F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F150);
  }

  return result;
}

unint64_t sub_1000B3B28()
{
  result = qword_10033F160;
  if (!qword_10033F160)
  {
    sub_100035D4C(&qword_10033F158, &qword_100275E98);
    sub_1000B3BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F160);
  }

  return result;
}

unint64_t sub_1000B3BB4()
{
  result = qword_10033F168;
  if (!qword_10033F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F168);
  }

  return result;
}

uint64_t sub_1000B3C08(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

unint64_t sub_1000B3CA8@<X0>(uint64_t *a2@<X1>, unint64_t *a4@<X8>)
{
  v5 = a2[1];
  v6 = Substring.index(_:offsetBy:)();
  result = Substring.index(_:offsetBy:limitedBy:)();
  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = result;
  }

  if (v9 >> 14 < v6 >> 14)
  {
    __break(1u);
  }

  else
  {
    result = Substring.subscript.getter();
    *a4 = result;
    a4[1] = v10;
    a4[2] = v11;
    a4[3] = v12;
  }

  return result;
}

uint64_t sub_1000B3D8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(result + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = result;
    v23 = a2;
    v24 = a3;
    v25 = a4;
    v34 = _swiftEmptyArrayStorage;
    sub_1000CDF20(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v7 = v6 + 64;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v27 = *(v6 + 36);
    v26 = v4;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v27 != *(v6 + 36))
      {
        goto LABEL_24;
      }

      sub_100051658(*(v6 + 48) + 40 * v8, v31);
      sub_10001766C(*(v6 + 56) + 32 * v8, v33);
      v28[0] = v31[0];
      v28[1] = v31[1];
      v29 = v32;
      sub_1000516B4(v33, &v30);
      sub_100035D04(&unk_10033D890, &qword_100275EB0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1002725A0;
      *(v12 + 32) = AnyHashable.description.getter();
      *(v12 + 40) = v13;
      _print_unlocked<A, B>(_:_:)();
      *(v12 + 48) = 0;
      *(v12 + 56) = 0xE000000000000000;
      result = sub_1000097E8(v28, &qword_10033F170, &qword_100275EB8);
      v34 = v5;
      v15 = v5[2];
      v14 = v5[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_1000CDF20((v14 > 1), v15 + 1, 1);
        v5 = v34;
      }

      v5[2] = v15 + 1;
      v5[v15 + 4] = v12;
      v10 = 1 << *(v6 + 32);
      if (v8 >= v10)
      {
        goto LABEL_25;
      }

      v7 = v6 + 64;
      v16 = *(v6 + 64 + 8 * v11);
      if ((v16 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      if (v27 != *(v6 + 36))
      {
        goto LABEL_27;
      }

      v17 = v16 & (-2 << (v8 & 0x3F));
      if (v17)
      {
        v10 = __clz(__rbit64(v17)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v11 << 6;
        v19 = v11 + 1;
        v20 = (v6 + 72 + 8 * v11);
        while (v19 < (v10 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_100059628(v8, v27, 0);
            v10 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_100059628(v8, v27, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v26)
      {
        a3 = v24;
        a4 = v25;
        a2 = v23;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    *a4 = a2;
    a4[1] = a3;
    a4[2] = 0;
    a4[3] = v5;
    a4[4] = 0;
  }

  return result;
}

uint64_t sub_1000B40C4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033F178);
  sub_100003078(v0, qword_10033F178);
  return Logger.init(subsystem:category:)();
}

void *sub_1000B4144(void *a1)
{
  v2 = v1;
  sub_100035D04(&qword_100339828, &unk_100270300);
  swift_allocObject();
  v4 = PassthroughSubject.init()();
  *(v1 + 64) = 0;
  *(v1 + 72) = &_swiftEmptySetSingleton;
  *(v1 + 80) = _swiftEmptyDictionarySingleton;
  *(v1 + 88) = _swiftEmptyDictionarySingleton;
  v11 = *a1;
  v12 = v11;
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = a1[4];
  *(v1 + 16) = v5;
  *(v1 + 32) = v6;
  *(v1 + 48) = v7;
  *(v1 + 56) = v4;
  swift_allocObject();
  swift_weakInit();

  sub_1000B5A50(&v12, v10);

  sub_100035D04(&qword_100339838, &qword_100271F10);
  sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10, &protocol conformance descriptor for AnyPublisher<A, B>);
  v8 = Publisher<>.sink(receiveValue:)();

  sub_1000097E8(&v12, &qword_100339838, &qword_100271F10);

  sub_1000097E8(&v12, &qword_100339838, &qword_100271F10);
  *(v2 + 64) = v8;

  return v2;
}

double sub_1000B42E8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000B4348(v2);
  }

  return result;
}

void sub_1000B4348(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v73 = *(v4 - 8);
  __chkstk_darwin(v4);
  v71 = v5;
  v72 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v6 - 8);
  v8 = v57 - v7;
  v64 = sub_100035D04(&qword_10033F2F0, &qword_100276020);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = v57 - v9;
  v67 = sub_100035D04(&qword_10033F2F8, &qword_100276028);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = v57 - v10;
  v11 = sub_100035D04(&qword_10033F300, &qword_100276030);
  v69 = *(v11 - 8);
  v70 = v11;
  __chkstk_darwin(v11);
  v68 = v57 - v12;
  if (qword_100338EE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_10033F178);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v74 = v4;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v79[0] = v18;
    *v17 = 136315138;
    v20 = sub_1000092A0(v18, v19);
    v22 = v8;
    v23 = sub_100017494(v20, v21, v79);

    *(v17 + 4) = v23;
    v8 = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Observing device: %s", v17, 0xCu);
    sub_10000903C(v18);
  }

  (*(v1 + 40))(&v77, a1);
  if (v78)
  {
    sub_10000E754(&v77, v79);
    v24 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
    swift_beginAccess();
    v25 = *(*(v2 + 80) + 16);
    v61 = v2;
    v60 = v24;
    if (v25)
    {

      sub_100019110(a1 + v24);
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    sub_10000EBC0(v79, v79[3]);

    v59 = sub_1000D8CC0(&off_100300A68, a1, v27 & 1);
    v75 = v59;
    sub_100035CB8();
    v36 = static OS_dispatch_queue.main.getter();
    v76 = v36;
    v37 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v38 = *(v37 - 8);
    v58 = *(v38 + 56);
    v57[1] = v38 + 56;
    v58(v8, 1, 1, v37);
    sub_100035D04(&qword_10033F310, &unk_100276040);
    sub_10000E244(&qword_10033F318, &qword_10033F310, &unk_100276040, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1000B5984(&qword_10034B420, 255, sub_100035CB8, &protocol conformance descriptor for OS_dispatch_queue);
    v39 = v62;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v8, &qword_10034C680, &qword_100270390);

    sub_100035D04(&qword_10033D6D0, &unk_10027C120);
    sub_10000E244(&qword_10033F320, &qword_10033F2F0, &qword_100276020, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v40 = v65;
    v41 = v64;
    Publisher.map<A>(_:)();
    (*(v63 + 8))(v39, v41);
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v42 = qword_10038B5B8;
    v75 = qword_10038B5B8;
    v58(v8, 1, 1, v37);
    sub_10000E244(&qword_10033F328, &qword_10033F2F8, &qword_100276028, &protocol conformance descriptor for Publishers.Map<A, B>);
    v43 = v42;
    v44 = v68;
    v45 = v67;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v8, &qword_10034C680, &qword_100270390);

    (*(v66 + 8))(v40, v45);
    v46 = swift_allocObject();
    v47 = v61;
    swift_weakInit();
    v49 = v72;
    v48 = v73;
    v50 = v60;
    v51 = v74;
    (*(v73 + 16))(v72, a1 + v60, v74);
    v52 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = v46;
    *(v53 + 24) = a1;
    (*(v48 + 32))(v53 + v52, v49, v51);
    sub_10000E244(&qword_10033F330, &qword_10033F300, &qword_100276030, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    swift_retain_n();
    v54 = v70;
    v55 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v69 + 8))(v44, v54);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(v47 + 80);
    *(v47 + 80) = 0x8000000000000000;
    sub_10004CE14(v55, a1 + v50, isUniquelyReferenced_nonNull_native);
    *(v47 + 80) = v76;
    swift_endAccess();

    sub_10000903C(v79);
  }

  else
  {
    sub_1000097E8(&v77, &qword_10033F308, &qword_100276038);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v79[0] = v31;
      *v30 = 136315138;
      v33 = sub_1000092A0(v31, v32);
      v35 = sub_100017494(v33, v34, v79);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Transport link not found for %s. Ignoring observation request.", v30, 0xCu);
      sub_10000903C(v31);
    }
  }
}

uint64_t sub_1000B4D9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = qword_100339180;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_10038B4E8;
    v8 = sub_1001C5784(v5);
    v10 = v9;
    v11 = ~v9;

    if (v11)
    {
      if (qword_100338EE0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100003078(v12, qword_10033F178);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Found local call routed to device - enriching remote call activity with info from local call", v15, 2u);
      }

      v16 = objc_allocWithZone(PCTelephonyActivity);
      if (v10)
      {
        v17 = [v16 initFromKnownConversation:v8];
      }

      else
      {
        v17 = [v16 initFromKnownCall:v8];
      }

      v19 = v17;
      sub_100036718(v8, v10);
      result = swift_unknownObjectRelease();
      *a2 = v19;
      return result;
    }

    swift_unknownObjectRelease();
  }

  *a2 = v3;

  return swift_unknownObjectRetain();
}

double sub_1000B4F94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (qword_100338EE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_10033F178);
    swift_errorRetain();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    v18 = os_log_type_enabled(v16, v17);
    v36 = a3;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v34 = v8;
      v20 = v19;
      v33 = swift_slowAlloc();
      v37 = v11;
      v38[0] = v33;
      *v20 = 136315394;
      swift_errorRetain();
      sub_100035D04(&qword_10033F338, qword_100276050);
      v21 = String.init<A>(describing:)();
      v23 = sub_100017494(v21, v22, v38);
      v35 = v7;
      v24 = a4;
      v25 = v23;

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v28 = sub_1000092A0(v26, v27);
      v30 = sub_100017494(v28, v29, v38);

      *(v20 + 14) = v30;
      a4 = v24;
      v7 = v35;
      _os_log_impl(&_mh_execute_header, v16, v17, "remoteActivityPublisher finished: completion=%s, device=%s", v20, 0x16u);
      swift_arrayDestroy();

      v8 = v34;
    }

    (*(v8 + 16))(v10, a4, v7);
    swift_beginAccess();
    sub_1001CF58C(0, v10);
    swift_endAccess();
    if (!v11)
    {
      v31 = v36;
      if ((*(v14 + 24))(v36))
      {
        sub_1000B4348(v31);
LABEL_11:

        return result;
      }

      v38[0] = v31;

      PassthroughSubject.send(_:)();
    }

    sub_10007306C();
    goto LABEL_11;
  }

  return result;
}

double sub_1000B52DC(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 isValid];
  if (qword_100338EE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10033F178);
  swift_unknownObjectRetain();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v8 = 136315650;
    v9 = [v3 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100017494(v10, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v4;
    *(v8 + 18) = 2080;
    v16 = sub_1000092A0(v14, v15);
    v18 = sub_100017494(v16, v17, &v34);

    *(v8 + 20) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "remoteActivityPublisher published activity: %s, isValid=%{BOOL}d, device=%s", v8, 0x1Cu);
    swift_arrayDestroy();
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = *(a2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
    if (v4)
    {
      v21 = v19;
      swift_unknownObjectRetain();
    }

    else
    {
      v21 = 0;
    }

    v24 = *(v20 + 16);
    *(v20 + 16) = v21;
    swift_unknownObjectRetain();
    v33 = v21;

    sub_1001F0504(v21);
    swift_unknownObjectRelease();
  }

  else
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      if (v4)
      {
        v23 = v22;
        swift_unknownObjectRetain();
      }

      else
      {
        v23 = 0;
      }

      v28 = v23;
      swift_unknownObjectRetain();

      sub_1001C12DC(v23);
    }

    else
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        if (v4)
        {
          v27 = v26;
          swift_unknownObjectRetain();
        }

        else
        {
          v27 = 0;
        }

        v28 = v27;
        swift_unknownObjectRetain();

        sub_1001C12B4(v27);
      }

      else
      {
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (v29)
        {
          if (v4)
          {
            v30 = v29;
            swift_unknownObjectRetain();
          }

          else
          {
            v30 = 0;
          }

          v28 = v30;
          swift_unknownObjectRetain();

          sub_1001C0488(v30);
        }

        else
        {
          objc_opt_self();
          v31 = swift_dynamicCastObjCClass();
          if (!v31)
          {
            return result;
          }

          if (v4)
          {
            v32 = v31;
            swift_unknownObjectRetain();
          }

          else
          {
            v32 = 0;
          }

          v28 = v32;
          swift_unknownObjectRetain();

          sub_1001C12C8(v32);
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B5778()
{

  return swift_deallocClassInstance();
}

__n128 sub_1000B5824(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B5838(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000B5880(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000B58D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t sub_1000B592C(uint64_t a1, uint64_t a2)
{
  result = sub_1000B5984(&qword_10033F2E8, a2, type metadata accessor for PeerActivityObserver, &unk_100275FDC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B5984(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_1000B59CC(uint64_t *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000B4F94(a1, v4, v5, v6);
}

uint64_t sub_1000B5A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100339838, &qword_100271F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B5B20()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033F340);
  sub_100003078(v0, qword_10033F340);
  return Logger.init(subsystem:category:)();
}

id sub_1000B5BA0()
{
  ObjectType = swift_getObjectType();
  if (qword_100338EE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033F340);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = *&v3[qword_10033F360];
    v9 = *&v3[qword_10033F360 + 8];

    v10 = sub_100017494(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s-Deinit", v6, 0xCu);
    sub_10000903C(v7);
  }

  v11 = *&v3[qword_10033F358];
  v12 = v3;
  v13 = v11;

  v14 = String._bridgeToObjectiveC()();

  [v13 removeObserver:v12 forKeyPath:v14 context:0];

  v17.receiver = v12;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "dealloc");
}

double sub_1000B5DCC(uint64_t a1)
{

  return result;
}

uint64_t sub_1000B5E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    v14 = a5;
    v15 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1000B6578();
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_1000B5F7C(v8, v10, v17, v13);

  return sub_1000B6510(v17);
}

void sub_1000B5F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v41 = a2;
  v6 = *((swift_isaMask & *v4) + 0x50);
  v7 = type metadata accessor for Optional();
  v39 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = *(v6 - 8);
  __chkstk_darwin(v10);
  v37 = &v35 - v14;
  if (qword_100338EE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_10033F340);

  v16 = v4;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v42 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v35 = v13;
    v44[0] = v21;
    *v20 = 136315650;
    v22 = v16;
    *(v20 + 4) = sub_100017494(*(v16 + qword_10033F360), *(v16 + qword_10033F360 + 8), v44);
    v36 = v7;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_100017494(0xD00000000000002BLL, 0x800000010029AEC0, v44);
    *(v20 + 22) = 2080;
    v43[0] = v42;

    sub_100035D04(&qword_10033F3F0, &unk_1002760E0);
    v23 = String.init<A>(describing:)();
    v25 = sub_100017494(v23, v24, v44);
    v7 = v36;

    *(v20 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s-%s: change=%s", v20, 0x20u);
    swift_arrayDestroy();
    v13 = v35;

    a4 = v42;
  }

  else
  {
    v22 = v16;
  }

  if (a4 && v41 && (*(v22 + qword_10033F360) == v40 && *(v22 + qword_10033F360 + 8) == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (*(a4 + 16))
    {
      v26 = sub_10008CE90();
      if (v27)
      {
        v28 = v22;
        sub_10001766C(*(a4 + 56) + 32 * v26, v44);
        sub_10001766C(v44, v43);
        v29 = swift_dynamicCast();
        v30 = *(v13 + 56);
        if (v29)
        {
          v30(v12, 0, 1, v6);
          v31 = v37;
          (*(v13 + 32))(v37, v12, v6);
          v32 = v38;
          (*(v13 + 16))(v38, v31, v6);
          v30(v32, 0, 1, v6);
          (*(v28 + qword_10033F368))(v32);
          (*(v39 + 8))(v32, v7);
          (*(v13 + 8))(v31, v6);
        }

        else
        {
          v30(v12, 1, 1, v6);
          v33 = *(v39 + 8);
          v33(v12, v7);
          v34 = v38;
          v30(v38, 1, 1, v6);
          (*(v28 + qword_10033F368))(v34);
          v33(v34, v7);
        }

        sub_10000903C(v44);
      }
    }
  }
}

uint64_t sub_1000B6510(uint64_t a1)
{
  v2 = sub_100035D04(&unk_100339680, &qword_100278390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B6578()
{
  result = qword_100339C10;
  if (!qword_100339C10)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100339C10);
  }

  return result;
}

uint64_t sub_1000B65D0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033F3F8);
  sub_100003078(v0, qword_10033F3F8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B6650(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

double sub_1000B66C4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000B6F90(v2, 0x6000000000000000uLL);
  }

  return result;
}

double sub_1000B6728(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000B6F90(v2, 0x8000000000000000);
  }

  return result;
}

uint64_t sub_1000B678C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  if (v2 == 4)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = *a1;
  *(a2 + 8) = v2;
}

double sub_1000B67BC(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000B6F90(a2, a1 | 0x4000000000000000);
  }

  return result;
}

uint64_t sub_1000B6830()
{
  v1 = v0;
  if (qword_100338EF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033F3F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold21HandoffSessionManager__session;
  v7 = sub_100035D04(&qword_10033F5A0, &qword_100276200);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  return v1;
}

uint64_t sub_1000B6974()
{
  sub_1000B6830();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandoffSessionManager(uint64_t a1)
{
  result = qword_10033F448;
  if (!qword_10033F448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B6A20(uint64_t a1)
{
  sub_1000B8F18(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000B6ACC()
{
  v1 = v0;
  strcpy(&v34, "screenOn=");
  WORD1(v34._object) = 0;
  HIDWORD(v34._object) = -385875968;
  if (*(*(*(*(v0 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_screenOnMonitor) + 16) + 24))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(*(*(*(v0 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_screenOnMonitor) + 16) + 24))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 8236;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v34._countAndFlagsBits;
  object = v34._object;
  BYTE5(v34._object) = 0;
  v6._object = object;
  String.append(_:)(v6);

  _StringGuts.grow(_:)(16);

  strcpy(&v34, "orientation=");
  HIWORD(v34._object) = -5120;
  if (qword_100338F70 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v8 = BSInterfaceOrientationDescription();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);

  String.append(_:)(v34);

  strcpy(&v34, "session=");
  BYTE1(v34._object) = 0;
  WORD1(v34._object) = 0;
  HIDWORD(v34._object) = -402653184;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v33)
  {
    v14 = UUID.uuidString.getter();
    sub_10000B584(8, v14, v15);

    v16 = static String._fromSubstring(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v23._countAndFlagsBits = sub_1000092A0(v21, v22);
    String.append(_:)(v23);

    v24._countAndFlagsBits = 62;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);

    v25 = 60;
    v26 = 0xE100000000000000;
  }

  else
  {
    v26 = 0xE300000000000000;
    v25 = 7104878;
  }

  v27 = v26;
  String.append(_:)(*&v25);

  v28._countAndFlagsBits = 8236;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);

  String.append(_:)(v34);

  strcpy(&v34, "devices=");
  BYTE1(v34._object) = 0;
  WORD1(v34._object) = 0;
  HIDWORD(v34._object) = -402653184;
  v29 = (*(*(v1 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage) + qword_100346AF8);

  os_unfair_lock_lock(v29);
  os_unfair_lock_unlock(v29);

  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  String.append(_:)(v34);

  v31._countAndFlagsBits = 62;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);

  return 60;
}

void sub_1000B6F90(void (*a1)(uint64_t, void (*)(void, void), uint64_t), unint64_t a2)
{
  if (qword_100338EF0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10033F3F8);
  sub_100097D54(a1, a2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  sub_1000983A8(a1, a2);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_100017494(0x7228657461647075, 0xEF293A6E6F736165, &v61);
    *(v8 + 12) = 2080;
    v9 = sub_10023FE1C(a1, a2);
    v11 = a1;
    v12 = sub_100017494(v9, v10, &v61);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2080;
    v13 = sub_1000B6ACC();
    v15 = sub_100017494(v13, v14, &v61);

    *(v8 + 24) = v15;
    a1 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: reason=%s, state=%s", v8, 0x20u);
    swift_arrayDestroy();
  }

  v16 = UpTicks()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v61)
  {

    return;
  }

  if (*(*(*(*(v2 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_screenOnMonitor) + 16) + 24) == 1 && (sub_1000B7768() & 1) != 0)
  {
    if (a2 >> 61 == 2)
    {
      v17 = a2 & 0x1FFFFFFFFFFFFFFFLL;
      sub_100097D54(a1, a2);
      if (!sub_1000B9CF0(a2 & 0x1FFFFFFFFFFFFFFFLL))
      {
        sub_1000983A8(a1, a2);
        return;
      }
    }

    else
    {
      sub_1000B7C40();
      if (!v18)
      {
        return;
      }

      v17 = v18;
    }

    type metadata accessor for HandoffSession(0);
    swift_allocObject();

    sub_100097D54(a1, a2);

    v20 = sub_100094D34(v19, v17, a1, a2);
    v21 = a1;
    v22 = v20;
    sub_1000983A8(v21, a2);

    swift_weakAssign();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v57 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v57 = 136315394;
      v61 = 60;
      v62 = 0xE100000000000000;
      v63 = v60;
      log = v23;
      v25 = UUID.uuidString.getter();
      sub_10000B584(8, v25, v26);
      v58 = v24;

      v27 = static String._fromSubstring(_:)();
      v29 = v28;

      v30._countAndFlagsBits = v27;
      v30._object = v29;
      String.append(_:)(v30);

      v31._countAndFlagsBits = 32;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);
      v34._countAndFlagsBits = sub_1000092A0(v32, v33);
      String.append(_:)(v34);

      v35._countAndFlagsBits = 62;
      v35._object = 0xE100000000000000;
      String.append(_:)(v35);
      v36 = sub_100017494(v61, v62, &v63);

      *(v57 + 4) = v36;
      *(v57 + 12) = 2080;
      v38 = sub_1001EE1E4(v37);
      v40 = v39;

      v41 = sub_100017494(v38, v40, &v63);

      *(v57 + 14) = v41;
      _os_log_impl(&_mh_execute_header, log, v58, "Starting new session! %s, %s", v57, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v42 = swift_allocObject();
    swift_weakInit();
    v43 = (v22 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler);
    v44 = *(v22 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler);
    v45 = *(v22 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler + 8);
    *v43 = sub_1000BABFC;
    v43[1] = v42;

    sub_10002689C(v44, v45);

    swift_getKeyPath();
    swift_getKeyPath();
    v61 = v22;

    static Published.subscript.setter();
    sub_100091044();
    if (qword_1003390F0 != -1)
    {
      swift_once();
    }

    if (qword_10038B2F0)
    {
      sub_1001706E8(v22);
    }

    v46 = UpTicks()();
    v47 = v46 >= v16;
    v48 = v46 - v16;
    if (v47)
    {
      v49 = UpTicksToSecondsF(_:)(v48);
      v50 = sub_100110CA8(v49);
      v52 = v51;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v55 = 136315394;
        *(v55 + 4) = sub_100017494(0x7228657461647075, 0xEF293A6E6F736165, &v61);
        *(v55 + 12) = 2080;
        v56 = sub_100017494(v50, v52, &v61);

        *(v55 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v53, v54, "%s ran in %s", v55, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}